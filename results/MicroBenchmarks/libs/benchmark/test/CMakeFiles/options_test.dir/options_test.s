	.file	"options_test.cc"
	.text
	.hidden	_Z8BM_basicRN9benchmark5StateE  # -- Begin function _Z8BM_basicRN9benchmark5StateE
	.globl	_Z8BM_basicRN9benchmark5StateE
	.p2align	5
	.type	_Z8BM_basicRN9benchmark5StateE,@function
_Z8BM_basicRN9benchmark5StateE:         # @_Z8BM_basicRN9benchmark5StateE
	.cfi_startproc
# %bb.0:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
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
	bnez	$s1, .LBB0_3
# %bb.1:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	beqz	$s0, .LBB0_3
# %bb.2:                                # %_ZN9benchmark5State13StateIteratorppEv.exit.preheader
	srai.d	$a0, $s0, 63
	andn	$a0, $s0, $a0
	addi.d	$a1, $s0, -1
	bgeu	$a1, $a0, .LBB0_4
.LBB0_3:                                # %._crit_edge
	move	$a0, $fp
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jr	$t8
.LBB0_4:
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$a0, $a0, %pc_lo12(.L.str.34)
	pcalau12i	$a1, %pc_hi20(.L.str.35)
	addi.d	$a1, $a1, %pc_lo12(.L.str.35)
	pcalau12i	$a2, %pc_hi20(.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv)
	addi.d	$a3, $a2, %pc_lo12(.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv)
	ori	$a2, $zero, 1134
	pcaddu18i	$ra, %call36(__assert_fail)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	_Z8BM_basicRN9benchmark5StateE, .Lfunc_end0-_Z8BM_basicRN9benchmark5StateE
	.cfi_endproc
                                        # -- End function
	.hidden	_Z13BM_basic_slowRN9benchmark5StateE # -- Begin function _Z13BM_basic_slowRN9benchmark5StateE
	.globl	_Z13BM_basic_slowRN9benchmark5StateE
	.p2align	5
	.type	_Z13BM_basic_slowRN9benchmark5StateE,@function
_Z13BM_basic_slowRN9benchmark5StateE:   # @_Z13BM_basic_slowRN9benchmark5StateE
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
	move	$fp, $a0
	ld.d	$a1, $a0, 40
	ld.d	$a0, $a0, 32
	beq	$a1, $a0, .LBB1_13
# %bb.1:                                # %_ZNK9benchmark5State5rangeEm.exit
	ld.d	$s1, $a0, 0
	ld.w	$s2, $fp, 28
	ld.d	$s0, $fp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	bnez	$s2, .LBB1_11
# %bb.2:                                # %_ZNK9benchmark5State5rangeEm.exit
	beqz	$s0, .LBB1_11
# %bb.3:                                # %.lr.ph
	blez	$s1, .LBB1_10
# %bb.4:
	lu12i.w	$a0, 244
	ori	$a0, $a0, 576
	mul.d	$a0, $s1, $a0
	srli.d	$a1, $a0, 9
	lu12i.w	$a2, -390731
	ori	$a2, $a2, 2643
	lu32i.d	$a2, 309295
	lu52i.d	$a2, $a2, 4
	mulh.du	$a1, $a1, $a2
	srli.d	$s1, $a1, 11
	lu12i.w	$a1, -244141
	ori	$a1, $a1, 1536
	mul.d	$a1, $s1, $a1
	add.d	$s2, $a1, $a0
	addi.w	$s3, $zero, -1
	ori	$s4, $zero, 4
	.p2align	4, , 16
.LBB1_5:                                # %.lr.ph.split
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_6 Depth 2
	st.d	$s1, $sp, 8
	st.d	$s2, $sp, 16
	.p2align	4, , 16
.LBB1_6:                                #   Parent Loop BB1_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 8
	pcaddu18i	$ra, %call36(nanosleep)
	jirl	$ra, $ra, 0
	bne	$a0, $s3, .LBB1_8
# %bb.7:                                #   in Loop: Header=BB1_6 Depth=2
	pcaddu18i	$ra, %call36(__errno_location)
	jirl	$ra, $ra, 0
	ld.w	$a0, $a0, 0
	beq	$a0, $s4, .LBB1_6
.LBB1_8:                                # %.critedge.i
                                        #   in Loop: Header=BB1_5 Depth=1
	blez	$s0, .LBB1_12
# %bb.9:                                #   in Loop: Header=BB1_5 Depth=1
	addi.d	$s0, $s0, -1
	bnez	$s0, .LBB1_5
	b	.LBB1_11
.LBB1_10:                               # %_ZNSt11this_thread9sleep_forIlSt5ratioILl1ELl1000000000EEEEvRKNSt6chrono8durationIT_T0_EE.exit.us.preheader
	srai.d	$a0, $s0, 63
	andn	$a0, $s0, $a0
	addi.d	$a1, $s0, -1
	bgeu	$a1, $a0, .LBB1_12
.LBB1_11:                               # %._crit_edge
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.LBB1_12:                               # %.split.us
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$a0, $a0, %pc_lo12(.L.str.34)
	pcalau12i	$a1, %pc_hi20(.L.str.35)
	addi.d	$a1, $a1, %pc_lo12(.L.str.35)
	pcalau12i	$a2, %pc_hi20(.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv)
	addi.d	$a3, $a2, %pc_lo12(.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv)
	ori	$a2, $zero, 1134
	pcaddu18i	$ra, %call36(__assert_fail)
	jirl	$ra, $ra, 0
.LBB1_13:
	pcalau12i	$a0, %pc_hi20(.L.str.36)
	addi.d	$a0, $a0, %pc_lo12(.L.str.36)
	pcalau12i	$a1, %pc_hi20(.L.str.35)
	addi.d	$a1, $a1, %pc_lo12(.L.str.35)
	pcalau12i	$a2, %pc_hi20(.L__PRETTY_FUNCTION__._ZNK9benchmark5State5rangeEm)
	addi.d	$a3, $a2, %pc_lo12(.L__PRETTY_FUNCTION__._ZNK9benchmark5State5rangeEm)
	ori	$a2, $zero, 990
	pcaddu18i	$ra, %call36(__assert_fail)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	_Z13BM_basic_slowRN9benchmark5StateE, .Lfunc_end1-_Z13BM_basic_slowRN9benchmark5StateE
	.cfi_endproc
                                        # -- End function
	.hidden	_Z10CustomArgsPN9benchmark8internal9BenchmarkE # -- Begin function _Z10CustomArgsPN9benchmark8internal9BenchmarkE
	.globl	_Z10CustomArgsPN9benchmark8internal9BenchmarkE
	.p2align	5
	.type	_Z10CustomArgsPN9benchmark8internal9BenchmarkE,@function
_Z10CustomArgsPN9benchmark8internal9BenchmarkE: # @_Z10CustomArgsPN9benchmark8internal9BenchmarkE
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 3
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 5
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 6
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 7
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 9
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jr	$t8
.Lfunc_end2:
	.size	_Z10CustomArgsPN9benchmark8internal9BenchmarkE, .Lfunc_end2-_Z10CustomArgsPN9benchmark8internal9BenchmarkE
	.cfi_endproc
                                        # -- End function
	.hidden	_Z27BM_explicit_iteration_countRN9benchmark5StateE # -- Begin function _Z27BM_explicit_iteration_countRN9benchmark5StateE
	.globl	_Z27BM_explicit_iteration_countRN9benchmark5StateE
	.p2align	5
	.type	_Z27BM_explicit_iteration_countRN9benchmark5StateE,@function
_Z27BM_explicit_iteration_countRN9benchmark5StateE: # @_Z27BM_explicit_iteration_countRN9benchmark5StateE
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
	pcalau12i	$a1, %pc_hi20(_ZZ27BM_explicit_iteration_countRN9benchmark5StateEE14invoked_before)
	ld.bu	$a2, $a1, %pc_lo12(_ZZ27BM_explicit_iteration_countRN9benchmark5StateEE14invoked_before)
	bnez	$a2, .LBB3_10
# %bb.1:
	move	$fp, $a0
	ld.d	$a0, $a0, 16
	ori	$a2, $zero, 1
	ori	$s0, $zero, 42
	st.b	$a2, $a1, %pc_lo12(_ZZ27BM_explicit_iteration_countRN9benchmark5StateEE14invoked_before)
	bne	$a0, $s0, .LBB3_11
# %bb.2:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	ld.w	$a0, $fp, 28
	sltui	$s1, $a0, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	maskeqz	$a0, $s0, $s1
	st.d	$a0, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 8
	#APP
	#NO_APP
	ld.d	$a0, $sp, 8
	bne	$a0, $s0, .LBB3_12
# %bb.3:
	ld.bu	$a0, $fp, 24
	beqz	$a0, .LBB3_7
# %bb.4:                                # %_ZNK9benchmark5State10iterationsEv.exit18
	ld.d	$a0, $fp, 0
	ld.d	$a1, $fp, 8
	bne	$a1, $a0, .LBB3_9
# %bb.5:                                # %_ZNK9benchmark5State10iterationsEv.exit
	ld.d	$a0, $fp, 16
	ori	$a1, $zero, 42
	bne	$a0, $a1, .LBB3_8
# %bb.6:
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB3_7:                                # %_ZNK9benchmark5State10iterationsEv.exit18.thread
	ld.d	$a0, $fp, 16
	bnez	$a0, .LBB3_9
.LBB3_8:                                # %_ZNK9benchmark5State10iterationsEv.exit.thread
	pcalau12i	$a0, %pc_hi20(.L.str.31)
	addi.d	$a0, $a0, %pc_lo12(.L.str.31)
	pcalau12i	$a1, %pc_hi20(.L.str.27)
	addi.d	$a1, $a1, %pc_lo12(.L.str.27)
	pcalau12i	$a2, %pc_hi20(.L__PRETTY_FUNCTION__._Z27BM_explicit_iteration_countRN9benchmark5StateE)
	addi.d	$a3, $a2, %pc_lo12(.L__PRETTY_FUNCTION__._Z27BM_explicit_iteration_countRN9benchmark5StateE)
	ori	$a2, $zero, 75
	pcaddu18i	$ra, %call36(__assert_fail)
	jirl	$ra, $ra, 0
.LBB3_9:
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a0, $a0, %pc_lo12(.L.str.30)
	pcalau12i	$a1, %pc_hi20(.L.str.27)
	addi.d	$a1, $a1, %pc_lo12(.L.str.27)
	pcalau12i	$a2, %pc_hi20(.L__PRETTY_FUNCTION__._Z27BM_explicit_iteration_countRN9benchmark5StateE)
	addi.d	$a3, $a2, %pc_lo12(.L__PRETTY_FUNCTION__._Z27BM_explicit_iteration_countRN9benchmark5StateE)
	ori	$a2, $zero, 74
	pcaddu18i	$ra, %call36(__assert_fail)
	jirl	$ra, $ra, 0
.LBB3_10:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	pcalau12i	$a1, %pc_hi20(.L.str.27)
	addi.d	$a1, $a1, %pc_lo12(.L.str.27)
	pcalau12i	$a2, %pc_hi20(.L__PRETTY_FUNCTION__._Z27BM_explicit_iteration_countRN9benchmark5StateE)
	addi.d	$a3, $a2, %pc_lo12(.L__PRETTY_FUNCTION__._Z27BM_explicit_iteration_countRN9benchmark5StateE)
	ori	$a2, $zero, 65
	pcaddu18i	$ra, %call36(__assert_fail)
	jirl	$ra, $ra, 0
.LBB3_11:
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
	pcalau12i	$a1, %pc_hi20(.L.str.27)
	addi.d	$a1, $a1, %pc_lo12(.L.str.27)
	pcalau12i	$a2, %pc_hi20(.L__PRETTY_FUNCTION__._Z27BM_explicit_iteration_countRN9benchmark5StateE)
	addi.d	$a3, $a2, %pc_lo12(.L__PRETTY_FUNCTION__._Z27BM_explicit_iteration_countRN9benchmark5StateE)
	ori	$a2, $zero, 69
	pcaddu18i	$ra, %call36(__assert_fail)
	jirl	$ra, $ra, 0
.LBB3_12:
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a0, $a0, %pc_lo12(.L.str.29)
	pcalau12i	$a1, %pc_hi20(.L.str.27)
	addi.d	$a1, $a1, %pc_lo12(.L.str.27)
	pcalau12i	$a2, %pc_hi20(.L__PRETTY_FUNCTION__._Z27BM_explicit_iteration_countRN9benchmark5StateE)
	addi.d	$a3, $a2, %pc_lo12(.L__PRETTY_FUNCTION__._Z27BM_explicit_iteration_countRN9benchmark5StateE)
	ori	$a2, $zero, 73
	pcaddu18i	$ra, %call36(__assert_fail)
	jirl	$ra, $ra, 0
.Lfunc_end3:
	.size	_Z27BM_explicit_iteration_countRN9benchmark5StateE, .Lfunc_end3-_Z27BM_explicit_iteration_countRN9benchmark5StateE
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
	bnez	$a1, .LBB4_2
# %bb.1:
	ori	$a0, $zero, 1
	st.w	$a0, $sp, 28
	addi.d	$fp, $sp, 8
.LBB4_2:
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
	bnez	$a1, .LBB4_4
# %bb.3:
	pcaddu18i	$ra, %call36(_ZN9benchmark22RunSpecifiedBenchmarksEv)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZN9benchmark8ShutdownEv)
	jirl	$ra, $ra, 0
	move	$a0, $zero
.LBB4_4:
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end4:
	.size	main, .Lfunc_end4-main
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _GLOBAL__sub_I_options_test.cc
.LCPI5_0:
	.dword	8                               # 0x8
	.dword	7163383544408919362             # 0x63697361625f4d42
.LCPI5_1:
	.dword	64                              # 0x40
	.dword	512                             # 0x200
.LCPI5_2:
	.dword	-64                             # 0xffffffffffffffc0
	.dword	1                               # 0x1
.LCPI5_3:
	.dword	-8                              # 0xfffffffffffffff8
	.dword	-1                              # 0xffffffffffffffff
	.section	.text.startup,"ax",@progbits
	.p2align	5
	.type	_GLOBAL__sub_I_options_test.cc,@function
_GLOBAL__sub_I_options_test.cc:         # @_GLOBAL__sub_I_options_test.cc
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
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
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal17InitializeStreamsEv)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI5_0)
	move	$s0, $a0
	addi.d	$s1, $sp, 80
	st.d	$s1, $sp, 64
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	vst	$vr0, $sp, 72
	st.b	$zero, $sp, 88
	ori	$s4, $zero, 1
.Ltmp0:                                 # EH_LABEL
	addi.d	$a1, $sp, 64
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.1:
	pcalau12i	$a0, %got_pc_hi20(_ZTVN9benchmark8internal17FunctionBenchmarkE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTVN9benchmark8internal17FunctionBenchmarkE)
	addi.d	$s2, $a0, 16
	st.d	$s2, $s0, 0
	pcalau12i	$a0, %pc_hi20(_Z8BM_basicRN9benchmark5StateE)
	addi.d	$s3, $a0, %pc_lo12(_Z8BM_basicRN9benchmark5StateE)
	st.d	$s3, $s0, 224
.Ltmp2:                                 # EH_LABEL
	move	$s4, $zero
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp3:                                 # EH_LABEL
# %bb.2:
	move	$fp, $a0
	ld.d	$a0, $sp, 64
	beq	$a0, $s1, .LBB5_4
# %bb.3:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
	ld.d	$a1, $sp, 80
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_4:                                # %__cxx_global_var_init.1.exit
	pcalau12i	$a0, %pc_hi20(_ZL27benchmark_uniq_2_benchmark_)
	st.d	$fp, $a0, %pc_lo12(_ZL27benchmark_uniq_2_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$s1, $sp, 64
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 72
	st.b	$zero, $sp, 88
	ori	$s4, $zero, 1
.Ltmp5:                                 # EH_LABEL
	addi.d	$a1, $sp, 64
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp6:                                 # EH_LABEL
# %bb.5:
	st.d	$s2, $s0, 0
	st.d	$s3, $s0, 224
.Ltmp7:                                 # EH_LABEL
	move	$s4, $zero
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp8:                                 # EH_LABEL
# %bb.6:
.Ltmp9:                                 # EH_LABEL
	ori	$a1, $zero, 42
	move	$s4, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp10:                                # EH_LABEL
# %bb.7:
	move	$fp, $a0
	ld.d	$a0, $sp, 64
	beq	$a0, $s1, .LBB5_9
# %bb.8:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4
	ld.d	$a1, $sp, 80
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_9:                                # %__cxx_global_var_init.2.exit
	pcalau12i	$a0, %pc_hi20(_ZL27benchmark_uniq_3_benchmark_)
	st.d	$fp, $a0, %pc_lo12(_ZL27benchmark_uniq_3_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$s1, $sp, 64
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	ld.d	$s4, $a0, 0
	ld.d	$s5, $a0, 5
	st.d	$s4, $sp, 80
	st.d	$s5, $sp, 85
	ori	$a0, $zero, 13
	st.d	$a0, $sp, 72
	st.b	$zero, $sp, 93
	ori	$s7, $zero, 1
.Ltmp12:                                # EH_LABEL
	addi.d	$a1, $sp, 64
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp13:                                # EH_LABEL
# %bb.10:
	st.d	$s2, $s0, 0
	pcalau12i	$a0, %pc_hi20(_Z13BM_basic_slowRN9benchmark5StateE)
	addi.d	$s6, $a0, %pc_lo12(_Z13BM_basic_slowRN9benchmark5StateE)
	st.d	$s6, $s0, 224
.Ltmp14:                                # EH_LABEL
	move	$s7, $zero
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp15:                                # EH_LABEL
# %bb.11:
.Ltmp16:                                # EH_LABEL
	ori	$a1, $zero, 10
	move	$s7, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp17:                                # EH_LABEL
# %bb.12:
.Ltmp18:                                # EH_LABEL
	move	$s7, $zero
	move	$a1, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE)
	jirl	$ra, $ra, 0
.Ltmp19:                                # EH_LABEL
# %bb.13:
	move	$fp, $a0
	ld.d	$a0, $sp, 64
	beq	$a0, $s1, .LBB5_15
# %bb.14:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9
	ld.d	$a1, $sp, 80
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_15:                               # %__cxx_global_var_init.3.exit
	pcalau12i	$a0, %pc_hi20(_ZL27benchmark_uniq_4_benchmark_)
	st.d	$fp, $a0, %pc_lo12(_ZL27benchmark_uniq_4_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$s1, $sp, 64
	st.d	$s4, $sp, 80
	st.d	$s5, $sp, 85
	ori	$a0, $zero, 13
	st.d	$a0, $sp, 72
	st.b	$zero, $sp, 93
	ori	$s7, $zero, 1
.Ltmp21:                                # EH_LABEL
	addi.d	$a1, $sp, 64
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp22:                                # EH_LABEL
# %bb.16:
	st.d	$s2, $s0, 0
	st.d	$s6, $s0, 224
.Ltmp23:                                # EH_LABEL
	move	$s7, $zero
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp24:                                # EH_LABEL
# %bb.17:
.Ltmp25:                                # EH_LABEL
	ori	$a1, $zero, 100
	move	$s7, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp26:                                # EH_LABEL
# %bb.18:
.Ltmp27:                                # EH_LABEL
	ori	$a1, $zero, 1
	move	$s7, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE)
	jirl	$ra, $ra, 0
.Ltmp28:                                # EH_LABEL
# %bb.19:
	move	$fp, $a0
	ld.d	$a0, $sp, 64
	beq	$a0, $s1, .LBB5_21
# %bb.20:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i14
	ld.d	$a1, $sp, 80
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_21:                               # %__cxx_global_var_init.5.exit
	pcalau12i	$a0, %pc_hi20(_ZL27benchmark_uniq_5_benchmark_)
	st.d	$fp, $a0, %pc_lo12(_ZL27benchmark_uniq_5_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$s1, $sp, 64
	st.d	$s4, $sp, 80
	st.d	$s5, $sp, 85
	ori	$a0, $zero, 13
	st.d	$a0, $sp, 72
	st.b	$zero, $sp, 93
	ori	$s7, $zero, 1
.Ltmp30:                                # EH_LABEL
	addi.d	$a1, $sp, 64
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp31:                                # EH_LABEL
# %bb.22:
	st.d	$s2, $s0, 0
	st.d	$s6, $s0, 224
.Ltmp32:                                # EH_LABEL
	move	$s7, $zero
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp33:                                # EH_LABEL
# %bb.23:
.Ltmp34:                                # EH_LABEL
	ori	$a1, $zero, 1000
	move	$s7, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp35:                                # EH_LABEL
# %bb.24:
.Ltmp36:                                # EH_LABEL
	ori	$a1, $zero, 2
	move	$s7, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE)
	jirl	$ra, $ra, 0
.Ltmp37:                                # EH_LABEL
# %bb.25:
	move	$fp, $a0
	ld.d	$a0, $sp, 64
	beq	$a0, $s1, .LBB5_27
# %bb.26:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i19
	ld.d	$a1, $sp, 80
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_27:                               # %__cxx_global_var_init.6.exit
	pcalau12i	$a0, %pc_hi20(_ZL27benchmark_uniq_6_benchmark_)
	st.d	$fp, $a0, %pc_lo12(_ZL27benchmark_uniq_6_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$s1, $sp, 64
	st.d	$s4, $sp, 80
	st.d	$s5, $sp, 85
	ori	$a0, $zero, 13
	st.d	$a0, $sp, 72
	st.b	$zero, $sp, 93
	ori	$s4, $zero, 1
.Ltmp39:                                # EH_LABEL
	addi.d	$a1, $sp, 64
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp40:                                # EH_LABEL
# %bb.28:
	st.d	$s2, $s0, 0
	st.d	$s6, $s0, 224
.Ltmp41:                                # EH_LABEL
	move	$s4, $zero
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp42:                                # EH_LABEL
# %bb.29:
.Ltmp43:                                # EH_LABEL
	ori	$a1, $zero, 1000
	move	$s4, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp44:                                # EH_LABEL
# %bb.30:
.Ltmp45:                                # EH_LABEL
	ori	$a1, $zero, 3
	move	$s4, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE)
	jirl	$ra, $ra, 0
.Ltmp46:                                # EH_LABEL
# %bb.31:
	move	$fp, $a0
	ld.d	$a0, $sp, 64
	beq	$a0, $s1, .LBB5_33
# %bb.32:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i24
	ld.d	$a1, $sp, 80
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_33:                               # %__cxx_global_var_init.7.exit
	pcalau12i	$a0, %pc_hi20(_ZL27benchmark_uniq_7_benchmark_)
	st.d	$fp, $a0, %pc_lo12(_ZL27benchmark_uniq_7_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$s1, $sp, 64
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 72
	st.b	$zero, $sp, 88
	ori	$s4, $zero, 1
.Ltmp48:                                # EH_LABEL
	addi.d	$a1, $sp, 64
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp49:                                # EH_LABEL
# %bb.34:
	st.d	$s2, $s0, 0
	st.d	$s3, $s0, 224
.Ltmp50:                                # EH_LABEL
	move	$s4, $zero
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp51:                                # EH_LABEL
# %bb.35:
.Ltmp52:                                # EH_LABEL
	ori	$a1, $zero, 1
	ori	$a2, $zero, 8
	move	$s4, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark5RangeEll)
	jirl	$ra, $ra, 0
.Ltmp53:                                # EH_LABEL
# %bb.36:
	move	$fp, $a0
	ld.d	$a0, $sp, 64
	beq	$a0, $s1, .LBB5_38
# %bb.37:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i29
	ld.d	$a1, $sp, 80
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_38:                               # %__cxx_global_var_init.8.exit
	pcalau12i	$a0, %pc_hi20(_ZL27benchmark_uniq_8_benchmark_)
	st.d	$fp, $a0, %pc_lo12(_ZL27benchmark_uniq_8_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$s1, $sp, 64
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 72
	st.b	$zero, $sp, 88
	ori	$s4, $zero, 1
.Ltmp55:                                # EH_LABEL
	addi.d	$a1, $sp, 64
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp56:                                # EH_LABEL
# %bb.39:
	st.d	$s2, $s0, 0
	st.d	$s3, $s0, 224
.Ltmp57:                                # EH_LABEL
	move	$s4, $zero
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp58:                                # EH_LABEL
# %bb.40:
.Ltmp59:                                # EH_LABEL
	ori	$a1, $zero, 2
	move	$s4, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark15RangeMultiplierEi)
	jirl	$ra, $ra, 0
.Ltmp60:                                # EH_LABEL
# %bb.41:
.Ltmp61:                                # EH_LABEL
	ori	$a1, $zero, 1
	ori	$a2, $zero, 8
	move	$s4, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark5RangeEll)
	jirl	$ra, $ra, 0
.Ltmp62:                                # EH_LABEL
# %bb.42:
	move	$fp, $a0
	ld.d	$a0, $sp, 64
	beq	$a0, $s1, .LBB5_44
# %bb.43:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34
	ld.d	$a1, $sp, 80
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_44:                               # %__cxx_global_var_init.9.exit
	pcalau12i	$a0, %pc_hi20(_ZL27benchmark_uniq_9_benchmark_)
	st.d	$fp, $a0, %pc_lo12(_ZL27benchmark_uniq_9_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$s1, $sp, 64
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 72
	st.b	$zero, $sp, 88
	ori	$s4, $zero, 1
.Ltmp64:                                # EH_LABEL
	addi.d	$a1, $sp, 64
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp65:                                # EH_LABEL
# %bb.45:
	st.d	$s2, $s0, 0
	st.d	$s3, $s0, 224
.Ltmp66:                                # EH_LABEL
	move	$s4, $zero
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp67:                                # EH_LABEL
# %bb.46:
.Ltmp68:                                # EH_LABEL
	ori	$a1, $zero, 10
	ori	$a2, $zero, 15
	ori	$a3, $zero, 1
	move	$s4, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark10DenseRangeElli)
	jirl	$ra, $ra, 0
.Ltmp69:                                # EH_LABEL
# %bb.47:
	move	$fp, $a0
	ld.d	$a0, $sp, 64
	beq	$a0, $s1, .LBB5_49
# %bb.48:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i39
	ld.d	$a1, $sp, 80
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_49:                               # %__cxx_global_var_init.10.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_10_benchmark_)
	st.d	$fp, $a0, %pc_lo12(_ZL28benchmark_uniq_10_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$s1, $sp, 64
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 72
	st.b	$zero, $sp, 88
	ori	$s4, $zero, 1
.Ltmp71:                                # EH_LABEL
	addi.d	$a1, $sp, 64
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp72:                                # EH_LABEL
# %bb.50:
	st.d	$s2, $s0, 0
	st.d	$s3, $s0, 224
.Ltmp73:                                # EH_LABEL
	move	$s4, $zero
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp74:                                # EH_LABEL
# %bb.51:
.Ltmp76:                                # EH_LABEL
	move	$fp, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp77:                                # EH_LABEL
# %bb.52:
	st.d	$a0, $sp, 40
	addi.d	$a1, $a0, 16
	st.d	$a1, $sp, 56
	vrepli.d	$vr0, 42
	vst	$vr0, $a0, 0
	st.d	$a1, $sp, 48
.Ltmp79:                                # EH_LABEL
	addi.d	$a1, $sp, 40
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark4ArgsERKSt6vectorIlSaIlEE)
	jirl	$ra, $ra, 0
.Ltmp80:                                # EH_LABEL
# %bb.53:
	move	$fp, $a0
	ld.d	$a0, $sp, 40
	beqz	$a0, .LBB5_55
# %bb.54:
	ld.d	$a1, $sp, 56
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_55:                               # %_ZNSt6vectorIlSaIlEED2Ev.exit.i
	ld.d	$a0, $sp, 64
	beq	$a0, $s1, .LBB5_57
# %bb.56:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i41
	ld.d	$a1, $sp, 80
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_57:                               # %__cxx_global_var_init.11.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_11_benchmark_)
	st.d	$fp, $a0, %pc_lo12(_ZL28benchmark_uniq_11_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$s1, $sp, 64
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 72
	st.b	$zero, $sp, 88
	ori	$s4, $zero, 1
.Ltmp82:                                # EH_LABEL
	addi.d	$a1, $sp, 64
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp83:                                # EH_LABEL
# %bb.58:
	st.d	$s2, $s0, 0
	st.d	$s3, $s0, 224
.Ltmp84:                                # EH_LABEL
	move	$s4, $zero
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp85:                                # EH_LABEL
# %bb.59:
.Ltmp87:                                # EH_LABEL
	move	$fp, $a0
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp88:                                # EH_LABEL
# %bb.60:
	pcalau12i	$a1, %pc_hi20(.LCPI5_1)
	vld	$vr0, $a1, %pc_lo12(.LCPI5_1)
	st.d	$a0, $sp, 40
	addi.d	$a1, $a0, 32
	st.d	$a1, $sp, 56
	vst	$vr0, $a0, 0
	vst	$vr0, $a0, 16
	st.d	$a1, $sp, 48
.Ltmp90:                                # EH_LABEL
	addi.d	$a1, $sp, 40
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark6RangesERKSt6vectorISt4pairIllESaIS4_EE)
	jirl	$ra, $ra, 0
.Ltmp91:                                # EH_LABEL
# %bb.61:
	move	$fp, $a0
	ld.d	$a0, $sp, 40
	beqz	$a0, .LBB5_63
# %bb.62:
	ld.d	$a1, $sp, 56
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_63:                               # %_ZNSt6vectorISt4pairIllESaIS1_EED2Ev.exit.i
	ld.d	$a0, $sp, 64
	beq	$a0, $s1, .LBB5_65
# %bb.64:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i52
	ld.d	$a1, $sp, 80
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_65:                               # %__cxx_global_var_init.12.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_12_benchmark_)
	st.d	$fp, $a0, %pc_lo12(_ZL28benchmark_uniq_12_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$s1, $sp, 64
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 72
	st.b	$zero, $sp, 88
	ori	$s4, $zero, 1
.Ltmp93:                                # EH_LABEL
	addi.d	$a1, $sp, 64
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp94:                                # EH_LABEL
# %bb.66:
	st.d	$s2, $s0, 0
	st.d	$s3, $s0, 224
.Ltmp95:                                # EH_LABEL
	move	$s4, $zero
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp96:                                # EH_LABEL
# %bb.67:
.Ltmp97:                                # EH_LABEL
	lu12i.w	$a1, 419430
	ori	$a1, $a1, 1638
	lu32i.d	$a1, 419430
	lu52i.d	$a1, $a1, 1022
	movgr2fr.d	$fa0, $a1
	move	$s4, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark7MinTimeEd)
	jirl	$ra, $ra, 0
.Ltmp98:                                # EH_LABEL
# %bb.68:
	move	$fp, $a0
	ld.d	$a0, $sp, 64
	beq	$a0, $s1, .LBB5_70
# %bb.69:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i57
	ld.d	$a1, $sp, 80
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_70:                               # %__cxx_global_var_init.13.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_13_benchmark_)
	st.d	$fp, $a0, %pc_lo12(_ZL28benchmark_uniq_13_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$s1, $sp, 64
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 72
	st.b	$zero, $sp, 88
	ori	$s5, $zero, 1
.Ltmp100:                               # EH_LABEL
	addi.d	$a1, $sp, 64
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp101:                               # EH_LABEL
# %bb.71:
	st.d	$s2, $s0, 0
	st.d	$s3, $s0, 224
.Ltmp102:                               # EH_LABEL
	move	$s5, $zero
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp103:                               # EH_LABEL
# %bb.72:
.Ltmp104:                               # EH_LABEL
	lu12i.w	$a1, -419431
	ori	$s4, $a1, 2458
	lu32i.d	$s4, -419431
	lu52i.d	$a1, $s4, 1022
	movgr2fr.d	$fa0, $a1
	move	$s5, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark13MinWarmUpTimeEd)
	jirl	$ra, $ra, 0
.Ltmp105:                               # EH_LABEL
# %bb.73:
	move	$fp, $a0
	ld.d	$a0, $sp, 64
	beq	$a0, $s1, .LBB5_75
# %bb.74:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i62
	ld.d	$a1, $sp, 80
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_75:                               # %__cxx_global_var_init.14.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_14_benchmark_)
	st.d	$fp, $a0, %pc_lo12(_ZL28benchmark_uniq_14_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$s1, $sp, 64
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 72
	st.b	$zero, $sp, 88
	ori	$s5, $zero, 1
.Ltmp107:                               # EH_LABEL
	addi.d	$a1, $sp, 64
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp108:                               # EH_LABEL
# %bb.76:
	st.d	$s2, $s0, 0
	st.d	$s3, $s0, 224
.Ltmp109:                               # EH_LABEL
	move	$s5, $zero
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp110:                               # EH_LABEL
# %bb.77:
.Ltmp111:                               # EH_LABEL
	lu52i.d	$a1, $s4, 1019
	movgr2fr.d	$fa0, $a1
	move	$s5, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark7MinTimeEd)
	jirl	$ra, $ra, 0
.Ltmp112:                               # EH_LABEL
# %bb.78:
.Ltmp113:                               # EH_LABEL
	lu52i.d	$a1, $s4, 1020
	movgr2fr.d	$fa0, $a1
	move	$s5, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark13MinWarmUpTimeEd)
	jirl	$ra, $ra, 0
.Ltmp114:                               # EH_LABEL
# %bb.79:
	move	$fp, $a0
	ld.d	$a0, $sp, 64
	beq	$a0, $s1, .LBB5_81
# %bb.80:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i67
	ld.d	$a1, $sp, 80
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_81:                               # %__cxx_global_var_init.15.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_15_benchmark_)
	st.d	$fp, $a0, %pc_lo12(_ZL28benchmark_uniq_15_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$s1, $sp, 64
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 72
	st.b	$zero, $sp, 88
	ori	$s4, $zero, 1
.Ltmp116:                               # EH_LABEL
	addi.d	$a1, $sp, 64
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp117:                               # EH_LABEL
# %bb.82:
	st.d	$s2, $s0, 0
	st.d	$s3, $s0, 224
.Ltmp118:                               # EH_LABEL
	move	$s4, $zero
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp119:                               # EH_LABEL
# %bb.83:
.Ltmp120:                               # EH_LABEL
	move	$s4, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark11UseRealTimeEv)
	jirl	$ra, $ra, 0
.Ltmp121:                               # EH_LABEL
# %bb.84:
	move	$fp, $a0
	ld.d	$a0, $sp, 64
	beq	$a0, $s1, .LBB5_86
# %bb.85:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i72
	ld.d	$a1, $sp, 80
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_86:                               # %__cxx_global_var_init.16.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_16_benchmark_)
	st.d	$fp, $a0, %pc_lo12(_ZL28benchmark_uniq_16_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$s1, $sp, 64
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 72
	st.b	$zero, $sp, 88
	ori	$s4, $zero, 1
.Ltmp123:                               # EH_LABEL
	addi.d	$a1, $sp, 64
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp124:                               # EH_LABEL
# %bb.87:
	st.d	$s2, $s0, 0
	st.d	$s3, $s0, 224
.Ltmp125:                               # EH_LABEL
	move	$s4, $zero
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp126:                               # EH_LABEL
# %bb.88:
.Ltmp127:                               # EH_LABEL
	ori	$a1, $zero, 2
	ori	$a2, $zero, 4
	move	$s4, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark11ThreadRangeEii)
	jirl	$ra, $ra, 0
.Ltmp128:                               # EH_LABEL
# %bb.89:
	move	$fp, $a0
	ld.d	$a0, $sp, 64
	beq	$a0, $s1, .LBB5_91
# %bb.90:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i77
	ld.d	$a1, $sp, 80
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_91:                               # %__cxx_global_var_init.17.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_17_benchmark_)
	st.d	$fp, $a0, %pc_lo12(_ZL28benchmark_uniq_17_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$s1, $sp, 64
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 72
	st.b	$zero, $sp, 88
	ori	$s4, $zero, 1
.Ltmp130:                               # EH_LABEL
	addi.d	$a1, $sp, 64
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp131:                               # EH_LABEL
# %bb.92:
	st.d	$s2, $s0, 0
	st.d	$s3, $s0, 224
.Ltmp132:                               # EH_LABEL
	move	$s4, $zero
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp133:                               # EH_LABEL
# %bb.93:
.Ltmp134:                               # EH_LABEL
	move	$s4, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark12ThreadPerCpuEv)
	jirl	$ra, $ra, 0
.Ltmp135:                               # EH_LABEL
# %bb.94:
	move	$fp, $a0
	ld.d	$a0, $sp, 64
	beq	$a0, $s1, .LBB5_96
# %bb.95:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i82
	ld.d	$a1, $sp, 80
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_96:                               # %__cxx_global_var_init.18.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_18_benchmark_)
	st.d	$fp, $a0, %pc_lo12(_ZL28benchmark_uniq_18_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$s1, $sp, 64
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 72
	st.b	$zero, $sp, 88
	ori	$s4, $zero, 1
.Ltmp137:                               # EH_LABEL
	addi.d	$a1, $sp, 64
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp138:                               # EH_LABEL
# %bb.97:
	st.d	$s2, $s0, 0
	st.d	$s3, $s0, 224
.Ltmp139:                               # EH_LABEL
	move	$s4, $zero
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp140:                               # EH_LABEL
# %bb.98:
.Ltmp141:                               # EH_LABEL
	ori	$a1, $zero, 3
	move	$s4, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark11RepetitionsEi)
	jirl	$ra, $ra, 0
.Ltmp142:                               # EH_LABEL
# %bb.99:
	move	$fp, $a0
	ld.d	$a0, $sp, 64
	beq	$a0, $s1, .LBB5_101
# %bb.100:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i87
	ld.d	$a1, $sp, 80
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_101:                              # %__cxx_global_var_init.19.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_19_benchmark_)
	st.d	$fp, $a0, %pc_lo12(_ZL28benchmark_uniq_19_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$s1, $sp, 64
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 72
	st.b	$zero, $sp, 88
	ori	$s4, $zero, 1
.Ltmp144:                               # EH_LABEL
	addi.d	$a1, $sp, 64
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp145:                               # EH_LABEL
# %bb.102:
	st.d	$s2, $s0, 0
	st.d	$s3, $s0, 224
.Ltmp146:                               # EH_LABEL
	move	$s4, $zero
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp147:                               # EH_LABEL
# %bb.103:
.Ltmp148:                               # EH_LABEL
	lu12i.w	$a1, 524287
	ori	$a1, $a1, 4095
	move	$s4, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark15RangeMultiplierEi)
	jirl	$ra, $ra, 0
.Ltmp149:                               # EH_LABEL
# %bb.104:
.Ltmp150:                               # EH_LABEL
	addi.w	$a1, $zero, -1
	lu52i.d	$a2, $a1, 2047
	lu52i.d	$a1, $zero, -2048
	move	$s4, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark5RangeEll)
	jirl	$ra, $ra, 0
.Ltmp151:                               # EH_LABEL
# %bb.105:
	move	$fp, $a0
	ld.d	$a0, $sp, 64
	beq	$a0, $s1, .LBB5_107
# %bb.106:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i92
	ld.d	$a1, $sp, 80
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_107:                              # %__cxx_global_var_init.20.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_20_benchmark_)
	st.d	$fp, $a0, %pc_lo12(_ZL28benchmark_uniq_20_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$s1, $sp, 64
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 72
	st.b	$zero, $sp, 88
	ori	$s4, $zero, 1
.Ltmp153:                               # EH_LABEL
	addi.d	$a1, $sp, 64
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp154:                               # EH_LABEL
# %bb.108:
	st.d	$s2, $s0, 0
	st.d	$s3, $s0, 224
.Ltmp155:                               # EH_LABEL
	move	$s4, $zero
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp156:                               # EH_LABEL
# %bb.109:
.Ltmp157:                               # EH_LABEL
	addi.w	$a1, $zero, -64
	addi.w	$a2, $zero, -1
	move	$s4, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark5RangeEll)
	jirl	$ra, $ra, 0
.Ltmp158:                               # EH_LABEL
# %bb.110:
	move	$fp, $a0
	ld.d	$a0, $sp, 64
	beq	$a0, $s1, .LBB5_112
# %bb.111:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i97
	ld.d	$a1, $sp, 80
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_112:                              # %__cxx_global_var_init.21.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_21_benchmark_)
	st.d	$fp, $a0, %pc_lo12(_ZL28benchmark_uniq_21_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$s1, $sp, 64
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 72
	st.b	$zero, $sp, 88
	ori	$s4, $zero, 1
.Ltmp160:                               # EH_LABEL
	addi.d	$a1, $sp, 64
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp161:                               # EH_LABEL
# %bb.113:
	st.d	$s2, $s0, 0
	st.d	$s3, $s0, 224
.Ltmp162:                               # EH_LABEL
	move	$s4, $zero
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp163:                               # EH_LABEL
# %bb.114:
.Ltmp164:                               # EH_LABEL
	ori	$a1, $zero, 4
	move	$s4, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark15RangeMultiplierEi)
	jirl	$ra, $ra, 0
.Ltmp165:                               # EH_LABEL
# %bb.115:
.Ltmp166:                               # EH_LABEL
	addi.w	$a1, $zero, -8
	ori	$a2, $zero, 8
	move	$s4, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark5RangeEll)
	jirl	$ra, $ra, 0
.Ltmp167:                               # EH_LABEL
# %bb.116:
	move	$fp, $a0
	ld.d	$a0, $sp, 64
	beq	$a0, $s1, .LBB5_118
# %bb.117:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i102
	ld.d	$a1, $sp, 80
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_118:                              # %__cxx_global_var_init.22.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_22_benchmark_)
	st.d	$fp, $a0, %pc_lo12(_ZL28benchmark_uniq_22_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$s1, $sp, 64
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 72
	st.b	$zero, $sp, 88
	ori	$s4, $zero, 1
.Ltmp169:                               # EH_LABEL
	addi.d	$a1, $sp, 64
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp170:                               # EH_LABEL
# %bb.119:
	st.d	$s2, $s0, 0
	st.d	$s3, $s0, 224
.Ltmp171:                               # EH_LABEL
	move	$s4, $zero
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp172:                               # EH_LABEL
# %bb.120:
.Ltmp173:                               # EH_LABEL
	addi.w	$a1, $zero, -2
	ori	$a2, $zero, 2
	ori	$a3, $zero, 1
	move	$s4, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark10DenseRangeElli)
	jirl	$ra, $ra, 0
.Ltmp174:                               # EH_LABEL
# %bb.121:
	move	$fp, $a0
	ld.d	$a0, $sp, 64
	beq	$a0, $s1, .LBB5_123
# %bb.122:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i107
	ld.d	$a1, $sp, 80
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_123:                              # %__cxx_global_var_init.23.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_23_benchmark_)
	st.d	$fp, $a0, %pc_lo12(_ZL28benchmark_uniq_23_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$s1, $sp, 64
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 72
	st.b	$zero, $sp, 88
	ori	$s4, $zero, 1
.Ltmp176:                               # EH_LABEL
	addi.d	$a1, $sp, 64
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp177:                               # EH_LABEL
# %bb.124:
	st.d	$s2, $s0, 0
	st.d	$s3, $s0, 224
.Ltmp178:                               # EH_LABEL
	move	$s4, $zero
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp179:                               # EH_LABEL
# %bb.125:
.Ltmp181:                               # EH_LABEL
	move	$fp, $a0
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp182:                               # EH_LABEL
# %bb.126:
	st.d	$a0, $sp, 40
	pcalau12i	$a1, %pc_hi20(.LCPI5_2)
	vld	$vr0, $a1, %pc_lo12(.LCPI5_2)
	pcalau12i	$a1, %pc_hi20(.LCPI5_3)
	vld	$vr1, $a1, %pc_lo12(.LCPI5_3)
	addi.d	$a1, $a0, 32
	st.d	$a1, $sp, 56
	vst	$vr0, $a0, 0
	vst	$vr1, $a0, 16
	st.d	$a1, $sp, 48
.Ltmp184:                               # EH_LABEL
	addi.d	$a1, $sp, 40
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark6RangesERKSt6vectorISt4pairIllESaIS4_EE)
	jirl	$ra, $ra, 0
.Ltmp185:                               # EH_LABEL
# %bb.127:
	move	$fp, $a0
	ld.d	$a0, $sp, 40
	beqz	$a0, .LBB5_129
# %bb.128:
	ld.d	$a1, $sp, 56
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_129:                              # %_ZNSt6vectorISt4pairIllESaIS1_EED2Ev.exit.i122
	ld.d	$a0, $sp, 64
	beq	$a0, $s1, .LBB5_131
# %bb.130:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i123
	ld.d	$a1, $sp, 80
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_131:                              # %__cxx_global_var_init.24.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_24_benchmark_)
	st.d	$fp, $a0, %pc_lo12(_ZL28benchmark_uniq_24_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$s1, $sp, 64
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 72
	st.b	$zero, $sp, 88
	ori	$s4, $zero, 1
.Ltmp187:                               # EH_LABEL
	addi.d	$a1, $sp, 64
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp188:                               # EH_LABEL
# %bb.132:
	st.d	$s2, $s0, 0
	st.d	$s3, $s0, 224
.Ltmp189:                               # EH_LABEL
	move	$s4, $zero
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp190:                               # EH_LABEL
# %bb.133:
.Ltmp191:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(_Z10CustomArgsPN9benchmark8internal9BenchmarkE)
	addi.d	$a1, $a1, %pc_lo12(_Z10CustomArgsPN9benchmark8internal9BenchmarkE)
	move	$s4, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark5ApplyEPFvPS1_E)
	jirl	$ra, $ra, 0
.Ltmp192:                               # EH_LABEL
# %bb.134:
	move	$fp, $a0
	ld.d	$a0, $sp, 64
	beq	$a0, $s1, .LBB5_136
# %bb.135:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i128
	ld.d	$a1, $sp, 80
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_136:                              # %__cxx_global_var_init.25.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_25_benchmark_)
	st.d	$fp, $a0, %pc_lo12(_ZL28benchmark_uniq_25_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$s1, $sp, 64
	ori	$a0, $zero, 27
	st.d	$a0, $sp, 40
.Ltmp194:                               # EH_LABEL
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp195:                               # EH_LABEL
# %bb.137:                              # %.noexc.i
	ld.d	$a1, $sp, 40
	st.d	$a0, $sp, 64
	st.d	$a1, $sp, 80
	pcalau12i	$a2, %pc_hi20(.L.str.33)
	addi.d	$a2, $a2, %pc_lo12(.L.str.33)
	vld	$vr0, $a2, 0
	ld.w	$a3, $a2, 23
	ld.d	$a2, $a2, 16
	vst	$vr0, $a0, 0
	st.w	$a3, $a0, 23
	st.d	$a2, $a0, 16
	ld.d	$a0, $sp, 64
	st.d	$a1, $sp, 72
	stx.b	$zero, $a0, $a1
	ori	$s3, $zero, 1
.Ltmp197:                               # EH_LABEL
	addi.d	$a1, $sp, 64
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp198:                               # EH_LABEL
# %bb.138:
	st.d	$s2, $s0, 0
	pcalau12i	$a0, %pc_hi20(_Z27BM_explicit_iteration_countRN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_Z27BM_explicit_iteration_countRN9benchmark5StateE)
	st.d	$a0, $s0, 224
.Ltmp199:                               # EH_LABEL
	move	$s3, $zero
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp200:                               # EH_LABEL
# %bb.139:
.Ltmp201:                               # EH_LABEL
	ori	$a1, $zero, 42
	move	$s3, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark10IterationsEl)
	jirl	$ra, $ra, 0
.Ltmp202:                               # EH_LABEL
# %bb.140:
	move	$fp, $a0
	ld.d	$a0, $sp, 64
	beq	$a0, $s1, .LBB5_142
# %bb.141:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i133
	ld.d	$a1, $sp, 80
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_142:                              # %__cxx_global_var_init.32.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_26_benchmark_)
	st.d	$fp, $a0, %pc_lo12(_ZL28benchmark_uniq_26_benchmark_)
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
.LBB5_143:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i
.Ltmp196:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB5_183
.LBB5_144:
.Ltmp186:                               # EH_LABEL
	b	.LBB5_149
.LBB5_145:
.Ltmp183:                               # EH_LABEL
	b	.LBB5_152
.LBB5_146:
.Ltmp92:                                # EH_LABEL
	b	.LBB5_149
.LBB5_147:
.Ltmp89:                                # EH_LABEL
	b	.LBB5_152
.LBB5_148:
.Ltmp81:                                # EH_LABEL
.LBB5_149:
	ld.d	$a2, $sp, 40
	move	$fp, $a0
	beqz	$a2, .LBB5_153
# %bb.150:
	ld.d	$a0, $sp, 56
	sub.d	$a1, $a0, $a2
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB5_153
.LBB5_151:
.Ltmp78:                                # EH_LABEL
.LBB5_152:                              # %.thread.i
	move	$fp, $a0
.LBB5_153:                              # %.thread.i
	ld.d	$a0, $sp, 64
	beq	$a0, $s1, .LBB5_185
# %bb.154:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.thread33.i
	ld.d	$a1, $sp, 80
	addi.d	$a1, $a1, 1
	b	.LBB5_184
.LBB5_155:
.Ltmp180:                               # EH_LABEL
	ld.d	$a2, $sp, 64
	move	$fp, $a0
	beq	$a2, $s1, .LBB5_182
	b	.LBB5_180
.LBB5_156:
.Ltmp86:                                # EH_LABEL
	ld.d	$a2, $sp, 64
	move	$fp, $a0
	beq	$a2, $s1, .LBB5_182
	b	.LBB5_180
.LBB5_157:
.Ltmp75:                                # EH_LABEL
	ld.d	$a2, $sp, 64
	move	$fp, $a0
	beq	$a2, $s1, .LBB5_182
	b	.LBB5_180
.LBB5_158:
.Ltmp4:                                 # EH_LABEL
	ld.d	$a2, $sp, 64
	move	$fp, $a0
	bne	$a2, $s1, .LBB5_180
	b	.LBB5_182
.LBB5_159:
.Ltmp203:                               # EH_LABEL
	ld.d	$a2, $sp, 64
	move	$fp, $a0
	bne	$a2, $s1, .LBB5_161
# %bb.160:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i7.i132
	bnez	$s3, .LBB5_183
	b	.LBB5_185
.LBB5_161:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i131
	ld.d	$a0, $sp, 80
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	bnez	$s3, .LBB5_183
	b	.LBB5_185
.LBB5_162:
.Ltmp193:                               # EH_LABEL
	ld.d	$a2, $sp, 64
	move	$fp, $a0
	beq	$a2, $s1, .LBB5_182
	b	.LBB5_180
.LBB5_163:
.Ltmp175:                               # EH_LABEL
	ld.d	$a2, $sp, 64
	move	$fp, $a0
	beq	$a2, $s1, .LBB5_182
	b	.LBB5_180
.LBB5_164:
.Ltmp159:                               # EH_LABEL
	ld.d	$a2, $sp, 64
	move	$fp, $a0
	beq	$a2, $s1, .LBB5_182
	b	.LBB5_180
.LBB5_165:
.Ltmp143:                               # EH_LABEL
	ld.d	$a2, $sp, 64
	move	$fp, $a0
	beq	$a2, $s1, .LBB5_182
	b	.LBB5_180
.LBB5_166:
.Ltmp136:                               # EH_LABEL
	ld.d	$a2, $sp, 64
	move	$fp, $a0
	beq	$a2, $s1, .LBB5_182
	b	.LBB5_180
.LBB5_167:
.Ltmp129:                               # EH_LABEL
	ld.d	$a2, $sp, 64
	move	$fp, $a0
	beq	$a2, $s1, .LBB5_182
	b	.LBB5_180
.LBB5_168:
.Ltmp122:                               # EH_LABEL
	ld.d	$a2, $sp, 64
	move	$fp, $a0
	beq	$a2, $s1, .LBB5_182
	b	.LBB5_180
.LBB5_169:
.Ltmp106:                               # EH_LABEL
	ld.d	$a2, $sp, 64
	move	$fp, $a0
	beq	$a2, $s1, .LBB5_178
.LBB5_170:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i60
	ld.d	$a0, $sp, 80
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	bnez	$s5, .LBB5_183
	b	.LBB5_185
.LBB5_171:
.Ltmp99:                                # EH_LABEL
	ld.d	$a2, $sp, 64
	move	$fp, $a0
	beq	$a2, $s1, .LBB5_182
	b	.LBB5_180
.LBB5_172:
.Ltmp70:                                # EH_LABEL
	ld.d	$a2, $sp, 64
	move	$fp, $a0
	beq	$a2, $s1, .LBB5_182
	b	.LBB5_180
.LBB5_173:
.Ltmp54:                                # EH_LABEL
	ld.d	$a2, $sp, 64
	move	$fp, $a0
	beq	$a2, $s1, .LBB5_182
	b	.LBB5_180
.LBB5_174:
.Ltmp11:                                # EH_LABEL
	ld.d	$a2, $sp, 64
	move	$fp, $a0
	beq	$a2, $s1, .LBB5_182
	b	.LBB5_180
.LBB5_175:
.Ltmp168:                               # EH_LABEL
	ld.d	$a2, $sp, 64
	move	$fp, $a0
	beq	$a2, $s1, .LBB5_182
	b	.LBB5_180
.LBB5_176:
.Ltmp152:                               # EH_LABEL
	ld.d	$a2, $sp, 64
	move	$fp, $a0
	beq	$a2, $s1, .LBB5_182
	b	.LBB5_180
.LBB5_177:
.Ltmp115:                               # EH_LABEL
	ld.d	$a2, $sp, 64
	move	$fp, $a0
	bne	$a2, $s1, .LBB5_170
.LBB5_178:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i7.i61
	bnez	$s5, .LBB5_183
	b	.LBB5_185
.LBB5_179:
.Ltmp63:                                # EH_LABEL
	ld.d	$a2, $sp, 64
	move	$fp, $a0
	beq	$a2, $s1, .LBB5_182
.LBB5_180:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i
	ld.d	$a0, $sp, 80
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	beqz	$s4, .LBB5_185
	b	.LBB5_183
.LBB5_181:
.Ltmp47:                                # EH_LABEL
	ld.d	$a2, $sp, 64
	move	$fp, $a0
	bne	$a2, $s1, .LBB5_180
.LBB5_182:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i7.i
	beqz	$s4, .LBB5_185
.LBB5_183:
	ori	$a1, $zero, 232
	move	$a0, $s0
.LBB5_184:                              # %common.resume
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_185:                              # %common.resume
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB5_186:
.Ltmp38:                                # EH_LABEL
	ld.d	$a2, $sp, 64
	move	$fp, $a0
	bne	$a2, $s1, .LBB5_188
	b	.LBB5_190
.LBB5_187:
.Ltmp29:                                # EH_LABEL
	ld.d	$a2, $sp, 64
	move	$fp, $a0
	beq	$a2, $s1, .LBB5_190
.LBB5_188:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i7
	ld.d	$a0, $sp, 80
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	bnez	$s7, .LBB5_183
	b	.LBB5_185
.LBB5_189:
.Ltmp20:                                # EH_LABEL
	ld.d	$a2, $sp, 64
	move	$fp, $a0
	bne	$a2, $s1, .LBB5_188
.LBB5_190:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i7.i8
	bnez	$s7, .LBB5_183
	b	.LBB5_185
.Lfunc_end5:
	.size	_GLOBAL__sub_I_options_test.cc, .Lfunc_end5-_GLOBAL__sub_I_options_test.cc
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table5:
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
	.uleb128 .Ltmp10-.Ltmp5                 #   Call between .Ltmp5 and .Ltmp10
	.uleb128 .Ltmp11-.Lfunc_begin0          #     jumps to .Ltmp11
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp10-.Lfunc_begin0          # >> Call Site 5 <<
	.uleb128 .Ltmp12-.Ltmp10                #   Call between .Ltmp10 and .Ltmp12
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp12-.Lfunc_begin0          # >> Call Site 6 <<
	.uleb128 .Ltmp19-.Ltmp12                #   Call between .Ltmp12 and .Ltmp19
	.uleb128 .Ltmp20-.Lfunc_begin0          #     jumps to .Ltmp20
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp19-.Lfunc_begin0          # >> Call Site 7 <<
	.uleb128 .Ltmp21-.Ltmp19                #   Call between .Ltmp19 and .Ltmp21
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp21-.Lfunc_begin0          # >> Call Site 8 <<
	.uleb128 .Ltmp28-.Ltmp21                #   Call between .Ltmp21 and .Ltmp28
	.uleb128 .Ltmp29-.Lfunc_begin0          #     jumps to .Ltmp29
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp28-.Lfunc_begin0          # >> Call Site 9 <<
	.uleb128 .Ltmp30-.Ltmp28                #   Call between .Ltmp28 and .Ltmp30
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp30-.Lfunc_begin0          # >> Call Site 10 <<
	.uleb128 .Ltmp37-.Ltmp30                #   Call between .Ltmp30 and .Ltmp37
	.uleb128 .Ltmp38-.Lfunc_begin0          #     jumps to .Ltmp38
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp37-.Lfunc_begin0          # >> Call Site 11 <<
	.uleb128 .Ltmp39-.Ltmp37                #   Call between .Ltmp37 and .Ltmp39
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp39-.Lfunc_begin0          # >> Call Site 12 <<
	.uleb128 .Ltmp46-.Ltmp39                #   Call between .Ltmp39 and .Ltmp46
	.uleb128 .Ltmp47-.Lfunc_begin0          #     jumps to .Ltmp47
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp46-.Lfunc_begin0          # >> Call Site 13 <<
	.uleb128 .Ltmp48-.Ltmp46                #   Call between .Ltmp46 and .Ltmp48
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp48-.Lfunc_begin0          # >> Call Site 14 <<
	.uleb128 .Ltmp53-.Ltmp48                #   Call between .Ltmp48 and .Ltmp53
	.uleb128 .Ltmp54-.Lfunc_begin0          #     jumps to .Ltmp54
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp53-.Lfunc_begin0          # >> Call Site 15 <<
	.uleb128 .Ltmp55-.Ltmp53                #   Call between .Ltmp53 and .Ltmp55
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp55-.Lfunc_begin0          # >> Call Site 16 <<
	.uleb128 .Ltmp62-.Ltmp55                #   Call between .Ltmp55 and .Ltmp62
	.uleb128 .Ltmp63-.Lfunc_begin0          #     jumps to .Ltmp63
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp62-.Lfunc_begin0          # >> Call Site 17 <<
	.uleb128 .Ltmp64-.Ltmp62                #   Call between .Ltmp62 and .Ltmp64
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp64-.Lfunc_begin0          # >> Call Site 18 <<
	.uleb128 .Ltmp69-.Ltmp64                #   Call between .Ltmp64 and .Ltmp69
	.uleb128 .Ltmp70-.Lfunc_begin0          #     jumps to .Ltmp70
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp69-.Lfunc_begin0          # >> Call Site 19 <<
	.uleb128 .Ltmp71-.Ltmp69                #   Call between .Ltmp69 and .Ltmp71
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp71-.Lfunc_begin0          # >> Call Site 20 <<
	.uleb128 .Ltmp74-.Ltmp71                #   Call between .Ltmp71 and .Ltmp74
	.uleb128 .Ltmp75-.Lfunc_begin0          #     jumps to .Ltmp75
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp76-.Lfunc_begin0          # >> Call Site 21 <<
	.uleb128 .Ltmp77-.Ltmp76                #   Call between .Ltmp76 and .Ltmp77
	.uleb128 .Ltmp78-.Lfunc_begin0          #     jumps to .Ltmp78
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp79-.Lfunc_begin0          # >> Call Site 22 <<
	.uleb128 .Ltmp80-.Ltmp79                #   Call between .Ltmp79 and .Ltmp80
	.uleb128 .Ltmp81-.Lfunc_begin0          #     jumps to .Ltmp81
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp80-.Lfunc_begin0          # >> Call Site 23 <<
	.uleb128 .Ltmp82-.Ltmp80                #   Call between .Ltmp80 and .Ltmp82
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp82-.Lfunc_begin0          # >> Call Site 24 <<
	.uleb128 .Ltmp85-.Ltmp82                #   Call between .Ltmp82 and .Ltmp85
	.uleb128 .Ltmp86-.Lfunc_begin0          #     jumps to .Ltmp86
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp87-.Lfunc_begin0          # >> Call Site 25 <<
	.uleb128 .Ltmp88-.Ltmp87                #   Call between .Ltmp87 and .Ltmp88
	.uleb128 .Ltmp89-.Lfunc_begin0          #     jumps to .Ltmp89
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp90-.Lfunc_begin0          # >> Call Site 26 <<
	.uleb128 .Ltmp91-.Ltmp90                #   Call between .Ltmp90 and .Ltmp91
	.uleb128 .Ltmp92-.Lfunc_begin0          #     jumps to .Ltmp92
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp91-.Lfunc_begin0          # >> Call Site 27 <<
	.uleb128 .Ltmp93-.Ltmp91                #   Call between .Ltmp91 and .Ltmp93
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp93-.Lfunc_begin0          # >> Call Site 28 <<
	.uleb128 .Ltmp98-.Ltmp93                #   Call between .Ltmp93 and .Ltmp98
	.uleb128 .Ltmp99-.Lfunc_begin0          #     jumps to .Ltmp99
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp98-.Lfunc_begin0          # >> Call Site 29 <<
	.uleb128 .Ltmp100-.Ltmp98               #   Call between .Ltmp98 and .Ltmp100
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp100-.Lfunc_begin0         # >> Call Site 30 <<
	.uleb128 .Ltmp105-.Ltmp100              #   Call between .Ltmp100 and .Ltmp105
	.uleb128 .Ltmp106-.Lfunc_begin0         #     jumps to .Ltmp106
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp105-.Lfunc_begin0         # >> Call Site 31 <<
	.uleb128 .Ltmp107-.Ltmp105              #   Call between .Ltmp105 and .Ltmp107
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp107-.Lfunc_begin0         # >> Call Site 32 <<
	.uleb128 .Ltmp114-.Ltmp107              #   Call between .Ltmp107 and .Ltmp114
	.uleb128 .Ltmp115-.Lfunc_begin0         #     jumps to .Ltmp115
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp114-.Lfunc_begin0         # >> Call Site 33 <<
	.uleb128 .Ltmp116-.Ltmp114              #   Call between .Ltmp114 and .Ltmp116
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp116-.Lfunc_begin0         # >> Call Site 34 <<
	.uleb128 .Ltmp121-.Ltmp116              #   Call between .Ltmp116 and .Ltmp121
	.uleb128 .Ltmp122-.Lfunc_begin0         #     jumps to .Ltmp122
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp121-.Lfunc_begin0         # >> Call Site 35 <<
	.uleb128 .Ltmp123-.Ltmp121              #   Call between .Ltmp121 and .Ltmp123
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp123-.Lfunc_begin0         # >> Call Site 36 <<
	.uleb128 .Ltmp128-.Ltmp123              #   Call between .Ltmp123 and .Ltmp128
	.uleb128 .Ltmp129-.Lfunc_begin0         #     jumps to .Ltmp129
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp128-.Lfunc_begin0         # >> Call Site 37 <<
	.uleb128 .Ltmp130-.Ltmp128              #   Call between .Ltmp128 and .Ltmp130
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp130-.Lfunc_begin0         # >> Call Site 38 <<
	.uleb128 .Ltmp135-.Ltmp130              #   Call between .Ltmp130 and .Ltmp135
	.uleb128 .Ltmp136-.Lfunc_begin0         #     jumps to .Ltmp136
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp135-.Lfunc_begin0         # >> Call Site 39 <<
	.uleb128 .Ltmp137-.Ltmp135              #   Call between .Ltmp135 and .Ltmp137
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp137-.Lfunc_begin0         # >> Call Site 40 <<
	.uleb128 .Ltmp142-.Ltmp137              #   Call between .Ltmp137 and .Ltmp142
	.uleb128 .Ltmp143-.Lfunc_begin0         #     jumps to .Ltmp143
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp142-.Lfunc_begin0         # >> Call Site 41 <<
	.uleb128 .Ltmp144-.Ltmp142              #   Call between .Ltmp142 and .Ltmp144
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp144-.Lfunc_begin0         # >> Call Site 42 <<
	.uleb128 .Ltmp151-.Ltmp144              #   Call between .Ltmp144 and .Ltmp151
	.uleb128 .Ltmp152-.Lfunc_begin0         #     jumps to .Ltmp152
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp151-.Lfunc_begin0         # >> Call Site 43 <<
	.uleb128 .Ltmp153-.Ltmp151              #   Call between .Ltmp151 and .Ltmp153
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp153-.Lfunc_begin0         # >> Call Site 44 <<
	.uleb128 .Ltmp158-.Ltmp153              #   Call between .Ltmp153 and .Ltmp158
	.uleb128 .Ltmp159-.Lfunc_begin0         #     jumps to .Ltmp159
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp158-.Lfunc_begin0         # >> Call Site 45 <<
	.uleb128 .Ltmp160-.Ltmp158              #   Call between .Ltmp158 and .Ltmp160
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp160-.Lfunc_begin0         # >> Call Site 46 <<
	.uleb128 .Ltmp167-.Ltmp160              #   Call between .Ltmp160 and .Ltmp167
	.uleb128 .Ltmp168-.Lfunc_begin0         #     jumps to .Ltmp168
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp167-.Lfunc_begin0         # >> Call Site 47 <<
	.uleb128 .Ltmp169-.Ltmp167              #   Call between .Ltmp167 and .Ltmp169
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp169-.Lfunc_begin0         # >> Call Site 48 <<
	.uleb128 .Ltmp174-.Ltmp169              #   Call between .Ltmp169 and .Ltmp174
	.uleb128 .Ltmp175-.Lfunc_begin0         #     jumps to .Ltmp175
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp174-.Lfunc_begin0         # >> Call Site 49 <<
	.uleb128 .Ltmp176-.Ltmp174              #   Call between .Ltmp174 and .Ltmp176
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp176-.Lfunc_begin0         # >> Call Site 50 <<
	.uleb128 .Ltmp179-.Ltmp176              #   Call between .Ltmp176 and .Ltmp179
	.uleb128 .Ltmp180-.Lfunc_begin0         #     jumps to .Ltmp180
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp181-.Lfunc_begin0         # >> Call Site 51 <<
	.uleb128 .Ltmp182-.Ltmp181              #   Call between .Ltmp181 and .Ltmp182
	.uleb128 .Ltmp183-.Lfunc_begin0         #     jumps to .Ltmp183
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp184-.Lfunc_begin0         # >> Call Site 52 <<
	.uleb128 .Ltmp185-.Ltmp184              #   Call between .Ltmp184 and .Ltmp185
	.uleb128 .Ltmp186-.Lfunc_begin0         #     jumps to .Ltmp186
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp185-.Lfunc_begin0         # >> Call Site 53 <<
	.uleb128 .Ltmp187-.Ltmp185              #   Call between .Ltmp185 and .Ltmp187
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp187-.Lfunc_begin0         # >> Call Site 54 <<
	.uleb128 .Ltmp192-.Ltmp187              #   Call between .Ltmp187 and .Ltmp192
	.uleb128 .Ltmp193-.Lfunc_begin0         #     jumps to .Ltmp193
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp192-.Lfunc_begin0         # >> Call Site 55 <<
	.uleb128 .Ltmp194-.Ltmp192              #   Call between .Ltmp192 and .Ltmp194
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp194-.Lfunc_begin0         # >> Call Site 56 <<
	.uleb128 .Ltmp195-.Ltmp194              #   Call between .Ltmp194 and .Ltmp195
	.uleb128 .Ltmp196-.Lfunc_begin0         #     jumps to .Ltmp196
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp197-.Lfunc_begin0         # >> Call Site 57 <<
	.uleb128 .Ltmp202-.Ltmp197              #   Call between .Ltmp197 and .Ltmp202
	.uleb128 .Ltmp203-.Lfunc_begin0         #     jumps to .Ltmp203
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp202-.Lfunc_begin0         # >> Call Site 58 <<
	.uleb128 .Lfunc_end5-.Ltmp202           #   Call between .Ltmp202 and .Lfunc_end5
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.type	_ZL27benchmark_uniq_2_benchmark_,@object # @_ZL27benchmark_uniq_2_benchmark_
	.local	_ZL27benchmark_uniq_2_benchmark_
	.comm	_ZL27benchmark_uniq_2_benchmark_,8,8
	.type	_ZL27benchmark_uniq_3_benchmark_,@object # @_ZL27benchmark_uniq_3_benchmark_
	.local	_ZL27benchmark_uniq_3_benchmark_
	.comm	_ZL27benchmark_uniq_3_benchmark_,8,8
	.type	_ZL27benchmark_uniq_4_benchmark_,@object # @_ZL27benchmark_uniq_4_benchmark_
	.local	_ZL27benchmark_uniq_4_benchmark_
	.comm	_ZL27benchmark_uniq_4_benchmark_,8,8
	.type	.L.str.4,@object                # @.str.4
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.4:
	.asciz	"BM_basic_slow"
	.size	.L.str.4, 14

	.type	_ZL27benchmark_uniq_5_benchmark_,@object # @_ZL27benchmark_uniq_5_benchmark_
	.local	_ZL27benchmark_uniq_5_benchmark_
	.comm	_ZL27benchmark_uniq_5_benchmark_,8,8
	.type	_ZL27benchmark_uniq_6_benchmark_,@object # @_ZL27benchmark_uniq_6_benchmark_
	.local	_ZL27benchmark_uniq_6_benchmark_
	.comm	_ZL27benchmark_uniq_6_benchmark_,8,8
	.type	_ZL27benchmark_uniq_7_benchmark_,@object # @_ZL27benchmark_uniq_7_benchmark_
	.local	_ZL27benchmark_uniq_7_benchmark_
	.comm	_ZL27benchmark_uniq_7_benchmark_,8,8
	.type	_ZL27benchmark_uniq_8_benchmark_,@object # @_ZL27benchmark_uniq_8_benchmark_
	.local	_ZL27benchmark_uniq_8_benchmark_
	.comm	_ZL27benchmark_uniq_8_benchmark_,8,8
	.type	_ZL27benchmark_uniq_9_benchmark_,@object # @_ZL27benchmark_uniq_9_benchmark_
	.local	_ZL27benchmark_uniq_9_benchmark_
	.comm	_ZL27benchmark_uniq_9_benchmark_,8,8
	.type	_ZL28benchmark_uniq_10_benchmark_,@object # @_ZL28benchmark_uniq_10_benchmark_
	.local	_ZL28benchmark_uniq_10_benchmark_
	.comm	_ZL28benchmark_uniq_10_benchmark_,8,8
	.type	_ZL28benchmark_uniq_11_benchmark_,@object # @_ZL28benchmark_uniq_11_benchmark_
	.local	_ZL28benchmark_uniq_11_benchmark_
	.comm	_ZL28benchmark_uniq_11_benchmark_,8,8
	.type	_ZL28benchmark_uniq_12_benchmark_,@object # @_ZL28benchmark_uniq_12_benchmark_
	.local	_ZL28benchmark_uniq_12_benchmark_
	.comm	_ZL28benchmark_uniq_12_benchmark_,8,8
	.type	_ZL28benchmark_uniq_13_benchmark_,@object # @_ZL28benchmark_uniq_13_benchmark_
	.local	_ZL28benchmark_uniq_13_benchmark_
	.comm	_ZL28benchmark_uniq_13_benchmark_,8,8
	.type	_ZL28benchmark_uniq_14_benchmark_,@object # @_ZL28benchmark_uniq_14_benchmark_
	.local	_ZL28benchmark_uniq_14_benchmark_
	.comm	_ZL28benchmark_uniq_14_benchmark_,8,8
	.type	_ZL28benchmark_uniq_15_benchmark_,@object # @_ZL28benchmark_uniq_15_benchmark_
	.local	_ZL28benchmark_uniq_15_benchmark_
	.comm	_ZL28benchmark_uniq_15_benchmark_,8,8
	.type	_ZL28benchmark_uniq_16_benchmark_,@object # @_ZL28benchmark_uniq_16_benchmark_
	.local	_ZL28benchmark_uniq_16_benchmark_
	.comm	_ZL28benchmark_uniq_16_benchmark_,8,8
	.type	_ZL28benchmark_uniq_17_benchmark_,@object # @_ZL28benchmark_uniq_17_benchmark_
	.local	_ZL28benchmark_uniq_17_benchmark_
	.comm	_ZL28benchmark_uniq_17_benchmark_,8,8
	.type	_ZL28benchmark_uniq_18_benchmark_,@object # @_ZL28benchmark_uniq_18_benchmark_
	.local	_ZL28benchmark_uniq_18_benchmark_
	.comm	_ZL28benchmark_uniq_18_benchmark_,8,8
	.type	_ZL28benchmark_uniq_19_benchmark_,@object # @_ZL28benchmark_uniq_19_benchmark_
	.local	_ZL28benchmark_uniq_19_benchmark_
	.comm	_ZL28benchmark_uniq_19_benchmark_,8,8
	.type	_ZL28benchmark_uniq_20_benchmark_,@object # @_ZL28benchmark_uniq_20_benchmark_
	.local	_ZL28benchmark_uniq_20_benchmark_
	.comm	_ZL28benchmark_uniq_20_benchmark_,8,8
	.type	_ZL28benchmark_uniq_21_benchmark_,@object # @_ZL28benchmark_uniq_21_benchmark_
	.local	_ZL28benchmark_uniq_21_benchmark_
	.comm	_ZL28benchmark_uniq_21_benchmark_,8,8
	.type	_ZL28benchmark_uniq_22_benchmark_,@object # @_ZL28benchmark_uniq_22_benchmark_
	.local	_ZL28benchmark_uniq_22_benchmark_
	.comm	_ZL28benchmark_uniq_22_benchmark_,8,8
	.type	_ZL28benchmark_uniq_23_benchmark_,@object # @_ZL28benchmark_uniq_23_benchmark_
	.local	_ZL28benchmark_uniq_23_benchmark_
	.comm	_ZL28benchmark_uniq_23_benchmark_,8,8
	.type	_ZL28benchmark_uniq_24_benchmark_,@object # @_ZL28benchmark_uniq_24_benchmark_
	.local	_ZL28benchmark_uniq_24_benchmark_
	.comm	_ZL28benchmark_uniq_24_benchmark_,8,8
	.type	_ZL28benchmark_uniq_25_benchmark_,@object # @_ZL28benchmark_uniq_25_benchmark_
	.local	_ZL28benchmark_uniq_25_benchmark_
	.comm	_ZL28benchmark_uniq_25_benchmark_,8,8
	.type	_ZZ27BM_explicit_iteration_countRN9benchmark5StateEE14invoked_before,@object # @_ZZ27BM_explicit_iteration_countRN9benchmark5StateEE14invoked_before
	.local	_ZZ27BM_explicit_iteration_countRN9benchmark5StateEE14invoked_before
	.comm	_ZZ27BM_explicit_iteration_countRN9benchmark5StateEE14invoked_before,1,1
	.type	.L.str.26,@object               # @.str.26
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.26:
	.asciz	"!invoked_before"
	.size	.L.str.26, 16

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"/home/date/work/actions-runner/_work/llvm-opt-ci/llvm-opt-ci/repos/llvm-test-suite/MicroBenchmarks/libs/benchmark/test/options_test.cc"
	.size	.L.str.27, 135

	.type	.L__PRETTY_FUNCTION__._Z27BM_explicit_iteration_countRN9benchmark5StateE,@object # @__PRETTY_FUNCTION__._Z27BM_explicit_iteration_countRN9benchmark5StateE
.L__PRETTY_FUNCTION__._Z27BM_explicit_iteration_countRN9benchmark5StateE:
	.asciz	"void BM_explicit_iteration_count(benchmark::State &)"
	.size	.L__PRETTY_FUNCTION__._Z27BM_explicit_iteration_countRN9benchmark5StateE, 53

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"state.max_iterations == 42"
	.size	.L.str.28, 27

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"actual_iterations == 42"
	.size	.L.str.29, 24

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"state.iterations() == state.max_iterations"
	.size	.L.str.30, 43

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"state.iterations() == 42"
	.size	.L.str.31, 25

	.type	_ZL28benchmark_uniq_26_benchmark_,@object # @_ZL28benchmark_uniq_26_benchmark_
	.local	_ZL28benchmark_uniq_26_benchmark_
	.comm	_ZL28benchmark_uniq_26_benchmark_,8,8
	.type	.L.str.33,@object               # @.str.33
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.33:
	.asciz	"BM_explicit_iteration_count"
	.size	.L.str.33, 28

	.type	.L__const.main.arg0_default,@object # @__const.main.arg0_default
	.p2align	3, 0x0
.L__const.main.arg0_default:
	.asciz	"benchmark"
	.size	.L__const.main.arg0_default, 10

	.type	.L.str.34,@object               # @.str.34
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.34:
	.asciz	"cached_ > 0"
	.size	.L.str.34, 12

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"/home/date/work/actions-runner/_work/llvm-opt-ci/llvm-opt-ci/repos/llvm-test-suite/MicroBenchmarks/libs/benchmark/include/benchmark/benchmark.h"
	.size	.L.str.35, 144

	.type	.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv,@object # @__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv
.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv:
	.asciz	"StateIterator &benchmark::State::StateIterator::operator++()"
	.size	.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv, 61

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"range_.size() > pos"
	.size	.L.str.36, 20

	.type	.L__PRETTY_FUNCTION__._ZNK9benchmark5State5rangeEm,@object # @__PRETTY_FUNCTION__._ZNK9benchmark5State5rangeEm
.L__PRETTY_FUNCTION__._ZNK9benchmark5State5rangeEm:
	.asciz	"int64_t benchmark::State::range(std::size_t) const"
	.size	.L__PRETTY_FUNCTION__._ZNK9benchmark5State5rangeEm, 51

	.section	.init_array,"aw",@init_array
	.p2align	3, 0x0
	.dword	_GLOBAL__sub_I_options_test.cc
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
	.addrsig_sym _Z8BM_basicRN9benchmark5StateE
	.addrsig_sym _Z13BM_basic_slowRN9benchmark5StateE
	.addrsig_sym __gxx_personality_v0
	.addrsig_sym _Z10CustomArgsPN9benchmark8internal9BenchmarkE
	.addrsig_sym _Z27BM_explicit_iteration_countRN9benchmark5StateE
	.addrsig_sym _ZN9benchmark16PrintDefaultHelpEv
	.addrsig_sym _GLOBAL__sub_I_options_test.cc
	.addrsig_sym _Unwind_Resume
