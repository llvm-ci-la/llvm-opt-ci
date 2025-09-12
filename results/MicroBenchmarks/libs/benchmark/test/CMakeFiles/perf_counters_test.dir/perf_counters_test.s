	.file	"perf_counters_test.cc"
                                        # Start of file scope inline assembly
	.globl	_ZSt21ios_base_library_initv

                                        # End of file scope inline assembly
	.text
	.p2align	5                               # -- Begin function _ZL9BM_SimpleRN9benchmark5StateE
	.type	_ZL9BM_SimpleRN9benchmark5StateE,@function
_ZL9BM_SimpleRN9benchmark5StateE:       # @_ZL9BM_SimpleRN9benchmark5StateE
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
	bnez	$s1, .LBB0_7
# %bb.1:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	beqz	$s0, .LBB0_7
# %bb.2:
	movgr2fr.d	$fa0, $zero
	addi.d	$a0, $sp, 8
	.p2align	4, , 16
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	ld.bu	$a1, $fp, 24
	fmov.d	$fa1, $fa0
	beqz	$a1, .LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	ld.d	$a1, $fp, 16
	ld.d	$a2, $fp, 0
	ld.d	$a3, $fp, 8
	sub.d	$a1, $a1, $a2
	add.d	$a1, $a1, $a3
	movgr2fr.d	$fa1, $a1
	ffint.d.l	$fa1, $fa1
	fmul.d	$fa1, $fa1, $fa1
.LBB0_5:                                # %_ZNK9benchmark5State10iterationsEv.exit
                                        #   in Loop: Header=BB0_3 Depth=1
	fst.d	$fa1, $sp, 8
	#APP
	#NO_APP
	blez	$s0, .LBB0_8
# %bb.6:                                #   in Loop: Header=BB0_3 Depth=1
	addi.d	$s0, $s0, -1
	bnez	$s0, .LBB0_3
.LBB0_7:                                # %._crit_edge
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB0_8:
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a0, $a0, %pc_lo12(.L.str.20)
	pcalau12i	$a1, %pc_hi20(.L.str.21)
	addi.d	$a1, $a1, %pc_lo12(.L.str.21)
	pcalau12i	$a2, %pc_hi20(.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv)
	addi.d	$a3, $a2, %pc_lo12(.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv)
	ori	$a2, $zero, 1134
	pcaddu18i	$ra, %call36(__assert_fail)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	_ZL9BM_SimpleRN9benchmark5StateE, .Lfunc_end0-_ZL9BM_SimpleRN9benchmark5StateE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN8TestCaseD2Ev,"axG",@progbits,_ZN8TestCaseD2Ev,comdat
	.hidden	_ZN8TestCaseD2Ev                # -- Begin function _ZN8TestCaseD2Ev
	.weak	_ZN8TestCaseD2Ev
	.p2align	5
	.type	_ZN8TestCaseD2Ev,@function
_ZN8TestCaseD2Ev:                       # @_ZN8TestCaseD2Ev
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
	ld.d	$s0, $a0, 80
	beqz	$s0, .LBB1_5
# %bb.1:
	ld.d	$a0, $s0, 8
	ori	$a1, $zero, 1
	lu32i.d	$a1, 1
	dbar	20
	bne	$a0, $a1, .LBB1_3
# %bb.2:
	ld.d	$a0, $s0, 0
	st.d	$zero, $s0, 8
	ld.d	$a1, $a0, 16
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 24
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $fp, 40
	addi.d	$a1, $fp, 56
	bne	$a0, $a1, .LBB1_6
	b	.LBB1_7
.LBB1_3:
	pcalau12i	$a1, %got_pc_hi20(__libc_single_threaded)
	ld.d	$a1, $a1, %got_pc_lo12(__libc_single_threaded)
	ld.bu	$a1, $a1, 0
	beqz	$a1, .LBB1_10
# %bb.4:
	addi.d	$a1, $a0, -1
	st.w	$a1, $s0, 8
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB1_11
.LBB1_5:                                # %_ZNSt12__shared_ptrIN9benchmark5RegexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
	ld.d	$a0, $fp, 40
	addi.d	$a1, $fp, 56
	beq	$a0, $a1, .LBB1_7
.LBB1_6:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_7:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$a0, $fp, 0
	addi.d	$a1, $fp, 16
	beq	$a0, $a1, .LBB1_9
# %bb.8:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB1_9:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB1_10:
	addi.d	$a1, $s0, 8
	addi.w	$a2, $zero, -1
	amadd_db.w	$a0, $a2, $a1
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB1_5
.LBB1_11:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 40
	addi.d	$a1, $fp, 56
	bne	$a0, $a1, .LBB1_6
	b	.LBB1_7
.Lfunc_end1:
	.size	_ZN8TestCaseD2Ev, .Lfunc_end1-_ZN8TestCaseD2Ev
	.cfi_endproc
                                        # -- End function
	.text
	.hidden	_Z21BM_WithoutPauseResumeRN9benchmark5StateE # -- Begin function _Z21BM_WithoutPauseResumeRN9benchmark5StateE
	.globl	_Z21BM_WithoutPauseResumeRN9benchmark5StateE
	.p2align	5
	.type	_Z21BM_WithoutPauseResumeRN9benchmark5StateE,@function
_Z21BM_WithoutPauseResumeRN9benchmark5StateE: # @_Z21BM_WithoutPauseResumeRN9benchmark5StateE
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
	st.w	$zero, $sp, 12
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	bnez	$s1, .LBB2_7
# %bb.1:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	beqz	$s0, .LBB2_7
# %bb.2:
	lu12i.w	$a0, 244
	ori	$a0, $a0, 576
	ori	$a1, $zero, 1
	addi.d	$a2, $sp, 12
	.p2align	4, , 16
.LBB2_3:                                # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_4 Depth 2
	move	$a3, $a0
	.p2align	4, , 16
.LBB2_4:                                #   Parent Loop BB2_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a4, $sp, 12
	sub.d	$a4, $a1, $a4
	st.w	$a4, $sp, 12
	#APP
	#NO_APP
	addi.w	$a3, $a3, -1
	bnez	$a3, .LBB2_4
# %bb.5:                                # %_ZN9benchmark5State13StateIteratorppEv.exit
                                        #   in Loop: Header=BB2_3 Depth=1
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
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a0, $a0, %pc_lo12(.L.str.20)
	pcalau12i	$a1, %pc_hi20(.L.str.21)
	addi.d	$a1, $a1, %pc_lo12(.L.str.21)
	pcalau12i	$a2, %pc_hi20(.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv)
	addi.d	$a3, $a2, %pc_lo12(.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv)
	ori	$a2, $zero, 1134
	pcaddu18i	$ra, %call36(__assert_fail)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	_Z21BM_WithoutPauseResumeRN9benchmark5StateE, .Lfunc_end2-_Z21BM_WithoutPauseResumeRN9benchmark5StateE
	.cfi_endproc
                                        # -- End function
	.hidden	_Z18BM_WithPauseResumeRN9benchmark5StateE # -- Begin function _Z18BM_WithPauseResumeRN9benchmark5StateE
	.globl	_Z18BM_WithPauseResumeRN9benchmark5StateE
	.p2align	5
	.type	_Z18BM_WithPauseResumeRN9benchmark5StateE,@function
_Z18BM_WithPauseResumeRN9benchmark5StateE: # @_Z18BM_WithPauseResumeRN9benchmark5StateE
	.cfi_startproc
# %bb.0:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
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
	ld.w	$s1, $a0, 28
	ld.d	$s0, $a0, 16
	st.w	$zero, $sp, 20
	st.w	$zero, $sp, 16
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	bnez	$s1, .LBB3_9
# %bb.1:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	beqz	$s0, .LBB3_9
# %bb.2:
	lu12i.w	$a0, 244
	ori	$s1, $a0, 576
	ori	$s2, $zero, 1
	addi.d	$s3, $sp, 16
	addi.d	$s4, $sp, 20
	.p2align	4, , 16
.LBB3_3:                                # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_4 Depth 2
                                        #     Child Loop BB3_6 Depth 2
	move	$a0, $s1
	.p2align	4, , 16
.LBB3_4:                                #   Parent Loop BB3_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a1, $sp, 16
	sub.d	$a1, $s2, $a1
	st.w	$a1, $sp, 16
	#APP
	#NO_APP
	addi.w	$a0, $a0, -1
	bnez	$a0, .LBB3_4
# %bb.5:                                #   in Loop: Header=BB3_3 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State11PauseTimingEv)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	.p2align	4, , 16
.LBB3_6:                                #   Parent Loop BB3_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a1, $sp, 20
	sub.d	$a1, $s2, $a1
	st.w	$a1, $sp, 20
	#APP
	#NO_APP
	addi.w	$a0, $a0, -1
	bnez	$a0, .LBB3_6
# %bb.7:                                # %_ZN9benchmark5State13StateIteratorppEv.exit
                                        #   in Loop: Header=BB3_3 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State12ResumeTimingEv)
	jirl	$ra, $ra, 0
	blez	$s0, .LBB3_10
# %bb.8:                                #   in Loop: Header=BB3_3 Depth=1
	addi.d	$s0, $s0, -1
	bnez	$s0, .LBB3_3
.LBB3_9:                                # %._crit_edge
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
.LBB3_10:
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a0, $a0, %pc_lo12(.L.str.20)
	pcalau12i	$a1, %pc_hi20(.L.str.21)
	addi.d	$a1, $a1, %pc_lo12(.L.str.21)
	pcalau12i	$a2, %pc_hi20(.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv)
	addi.d	$a3, $a2, %pc_lo12(.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv)
	ori	$a2, $zero, 1134
	pcaddu18i	$ra, %call36(__assert_fail)
	jirl	$ra, $ra, 0
.Lfunc_end3:
	.size	_Z18BM_WithPauseResumeRN9benchmark5StateE, .Lfunc_end3-_Z18BM_WithPauseResumeRN9benchmark5StateE
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZL11CheckSimpleRK7Results
	.type	_ZL11CheckSimpleRK7Results,@function
_ZL11CheckSimpleRK7Results:             # @_ZL11CheckSimpleRK7Results
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
# %bb.0:                                # %._crit_edge.i.i
	addi.d	$sp, $sp, -160
	.cfi_def_cfa_offset 160
	st.d	$ra, $sp, 152                   # 8-byte Folded Spill
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	st.d	$s0, $sp, 136                   # 8-byte Folded Spill
	st.d	$s1, $sp, 128                   # 8-byte Folded Spill
	st.d	$s2, $sp, 120                   # 8-byte Folded Spill
	st.d	$s3, $sp, 112                   # 8-byte Folded Spill
	st.d	$s4, $sp, 104                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 96                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 88                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 56, -64
	.cfi_offset 57, -72
	move	$fp, $a0
	addi.d	$s0, $sp, 72
	st.d	$s0, $sp, 56
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a0, $a0, %pc_lo12(.L.str.22)
	ld.w	$s2, $a0, 0
	ld.h	$s3, $a0, 4
	st.w	$s2, $sp, 72
	st.h	$s3, $sp, 76
	ori	$a0, $zero, 6
	st.d	$a0, $sp, 64
	st.b	$zero, $sp, 78
.Ltmp0:                                 # EH_LABEL
	addi.d	$a1, $sp, 56
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNK7Results5GetAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.1:                                # %_ZNK7Results12GetCounterAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
	fmov.d	$fs0, $fa0
	movgr2fr.d	$fs1, $zero
	fcmp.cule.d	$fcc0, $fa0, $fs1
	bceqz	$fcc0, .LBB4_4
# %bb.2:
.Ltmp3:                                 # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a1, $a0, %pc_lo12(.L.str.23)
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a2, $a0, %pc_lo12(.L.str.17)
	pcalau12i	$a0, %pc_hi20(.L__func__._ZL11CheckSimpleRK7Results)
	addi.d	$a3, $a0, %pc_lo12(.L__func__._ZL11CheckSimpleRK7Results)
	addi.d	$a0, $sp, 48
	ori	$a4, $zero, 63
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal12CheckHandlerC2EPKcS3_S3_i)
	jirl	$ra, $ra, 0
.Ltmp4:                                 # EH_LABEL
# %bb.3:
	ld.d	$s1, $sp, 48
	b	.LBB4_5
.LBB4_4:
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	ld.b	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	dbar	20
	pcalau12i	$a1, %pc_hi20(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	addi.d	$s1, $a1, %pc_lo12(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	beqz	$a0, .LBB4_54
.LBB4_5:                                # %_ZN9benchmark8internal18GetNullLogInstanceEv.exit
	ld.d	$a0, $s1, 0
	beqz	$a0, .LBB4_37
# %bb.6:
.Ltmp5:                                 # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.24)
	addi.d	$a1, $a1, %pc_lo12(.L.str.24)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp6:                                 # EH_LABEL
# %bb.7:                                # %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit
	ld.d	$a0, $s1, 0
	beqz	$a0, .LBB4_37
# %bb.8:
.Ltmp7:                                 # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.17)
	addi.d	$a1, $a1, %pc_lo12(.L.str.17)
	ori	$a2, $zero, 140
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp8:                                 # EH_LABEL
# %bb.9:                                # %_ZN9benchmark8internallsIA141_cEERNS0_7LogTypeES4_RKT_.exit
	ld.d	$a0, $s1, 0
	beqz	$a0, .LBB4_37
# %bb.10:
.Ltmp9:                                 # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.25)
	addi.d	$a1, $a1, %pc_lo12(.L.str.25)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp10:                                # EH_LABEL
# %bb.11:                               # %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit36
	ld.d	$a0, $s1, 0
	beqz	$a0, .LBB4_37
# %bb.12:
.Ltmp12:                                # EH_LABEL
	ori	$a1, $zero, 63
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp13:                                # EH_LABEL
# %bb.13:                               # %_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit
	ld.d	$a0, $s1, 0
	beqz	$a0, .LBB4_37
# %bb.14:
.Ltmp14:                                # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.26)
	addi.d	$a1, $a1, %pc_lo12(.L.str.26)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp15:                                # EH_LABEL
# %bb.15:                               # %_ZN9benchmark8internallsIA3_cEERNS0_7LogTypeES4_RKT_.exit
	ld.d	$a0, $s1, 0
	beqz	$a0, .LBB4_37
# %bb.16:
	ld.d	$a1, $fp, 0
	ld.d	$a2, $fp, 8
.Ltmp16:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp17:                                # EH_LABEL
# %bb.17:                               # %_ZN9benchmark8internallsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNS0_7LogTypeES9_RKT_.exit
	ld.d	$a0, $s1, 0
	beqz	$a0, .LBB4_37
# %bb.18:
.Ltmp18:                                # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.27)
	addi.d	$a1, $a1, %pc_lo12(.L.str.27)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp19:                                # EH_LABEL
# %bb.19:                               # %_ZN9benchmark8internallsIA3_cEERNS0_7LogTypeES4_RKT_.exit45
	ld.d	$a0, $s1, 0
	beqz	$a0, .LBB4_37
# %bb.20:
.Ltmp20:                                # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.17)
	addi.d	$a1, $a1, %pc_lo12(.L.str.17)
	ori	$a2, $zero, 140
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp21:                                # EH_LABEL
# %bb.21:                               # %_ZN9benchmark8internallsIA141_cEERNS0_7LogTypeES4_RKT_.exit48
	ld.d	$a0, $s1, 0
	beqz	$a0, .LBB4_37
# %bb.22:
.Ltmp22:                                # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.25)
	addi.d	$a1, $a1, %pc_lo12(.L.str.25)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp23:                                # EH_LABEL
# %bb.23:                               # %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit51
	ld.d	$a0, $s1, 0
	beqz	$a0, .LBB4_37
# %bb.24:
.Ltmp25:                                # EH_LABEL
	ori	$a1, $zero, 63
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp26:                                # EH_LABEL
# %bb.25:                               # %_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit54
	ld.d	$a0, $s1, 0
	beqz	$a0, .LBB4_37
# %bb.26:
.Ltmp27:                                # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.26)
	addi.d	$a1, $a1, %pc_lo12(.L.str.26)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp28:                                # EH_LABEL
# %bb.27:                               # %_ZN9benchmark8internallsIA3_cEERNS0_7LogTypeES4_RKT_.exit57
	ld.d	$a0, $s1, 0
	beqz	$a0, .LBB4_37
# %bb.28:
.Ltmp29:                                # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.28)
	addi.d	$a1, $a1, %pc_lo12(.L.str.28)
	ori	$a2, $zero, 10
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp30:                                # EH_LABEL
# %bb.29:                               # %_ZN9benchmark8internallsIA11_cEERNS0_7LogTypeES4_RKT_.exit
	ld.d	$a0, $s1, 0
	beqz	$a0, .LBB4_37
# %bb.30:
.Ltmp31:                                # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.29)
	addi.d	$a1, $a1, %pc_lo12(.L.str.29)
	ori	$a2, $zero, 6
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp32:                                # EH_LABEL
# %bb.31:                               # %_ZN9benchmark8internallsIA7_cEERNS0_7LogTypeES4_RKT_.exit
	ld.d	$a0, $s1, 0
	beqz	$a0, .LBB4_37
# %bb.32:
.Ltmp33:                                # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.30)
	addi.d	$a1, $a1, %pc_lo12(.L.str.30)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp34:                                # EH_LABEL
# %bb.33:                               # %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit64
	ld.d	$a0, $s1, 0
	beqz	$a0, .LBB4_37
# %bb.34:
.Ltmp35:                                # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.22)
	addi.d	$a1, $a1, %pc_lo12(.L.str.22)
	ori	$a2, $zero, 6
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp36:                                # EH_LABEL
# %bb.35:                               # %_ZN9benchmark8internallsIA7_cEERNS0_7LogTypeES4_RKT_.exit67
	ld.d	$a0, $s1, 0
	beqz	$a0, .LBB4_37
# %bb.36:
.Ltmp37:                                # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.31)
	addi.d	$a1, $a1, %pc_lo12(.L.str.31)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp38:                                # EH_LABEL
.LBB4_37:                               # %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit70
	addi.d	$s4, $sp, 32
	st.d	$s4, $sp, 16
	st.w	$s2, $sp, 32
	st.h	$s3, $sp, 36
	ori	$a0, $zero, 6
	st.d	$a0, $sp, 24
	st.b	$zero, $sp, 38
.Ltmp40:                                # EH_LABEL
	addi.d	$a1, $sp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNK7Results5GetAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp41:                                # EH_LABEL
# %bb.38:                               # %_ZNK7Results12GetCounterAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit76
	ld.d	$a0, $s1, 0
	beqz	$a0, .LBB4_46
# %bb.39:
.Ltmp42:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp43:                                # EH_LABEL
# %bb.40:                               # %_ZN9benchmark8internallsIdEERNS0_7LogTypeES3_RKT_.exit
	ld.d	$a0, $s1, 0
	beqz	$a0, .LBB4_46
# %bb.41:
.Ltmp44:                                # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.32)
	addi.d	$a1, $a1, %pc_lo12(.L.str.32)
	ori	$a2, $zero, 13
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp45:                                # EH_LABEL
# %bb.42:                               # %_ZN9benchmark8internallsIA14_cEERNS0_7LogTypeES4_RKT_.exit
	ld.d	$a0, $s1, 0
	beqz	$a0, .LBB4_46
# %bb.43:
.Ltmp47:                                # EH_LABEL
	move	$a1, $zero
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp48:                                # EH_LABEL
# %bb.44:                               # %_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit83
	ld.d	$a0, $s1, 0
	beqz	$a0, .LBB4_46
# %bb.45:
.Ltmp49:                                # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.24)
	addi.d	$a1, $a1, %pc_lo12(.L.str.24)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp50:                                # EH_LABEL
.LBB4_46:                               # %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit86
	ld.d	$a0, $sp, 16
	beq	$a0, $s4, .LBB4_48
# %bb.47:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_48:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	fcmp.clt.d	$fcc0, $fs1, $fs0
	bceqz	$fcc0, .LBB4_52
# %bb.49:
	ld.d	$a0, $sp, 56
	beq	$a0, $s0, .LBB4_51
# %bb.50:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90
	ld.d	$a1, $sp, 72
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_51:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92
	fld.d	$fs1, $sp, 88                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 96                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 160
	ret
.LBB4_52:
.Ltmp55:                                # EH_LABEL
	addi.d	$a0, $sp, 48
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal12CheckHandlerD2Ev)
	jirl	$ra, $ra, 0
.Ltmp56:                                # EH_LABEL
# %bb.53:
.LBB4_54:
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcaddu18i	$ra, %call36(__cxa_guard_acquire)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	beqz	$a0, .LBB4_5
# %bb.55:
	pcalau12i	$a0, %pc_hi20(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	addi.d	$s1, $a0, %pc_lo12(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	st.d	$zero, $s1, 0
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcaddu18i	$ra, %call36(__cxa_guard_release)
	jirl	$ra, $ra, 0
	b	.LBB4_5
.LBB4_56:
.Ltmp39:                                # EH_LABEL
	b	.LBB4_61
.LBB4_57:
.Ltmp24:                                # EH_LABEL
	b	.LBB4_61
.LBB4_58:
.Ltmp51:                                # EH_LABEL
	b	.LBB4_65
.LBB4_59:
.Ltmp2:                                 # EH_LABEL
	b	.LBB4_63
.LBB4_60:
.Ltmp11:                                # EH_LABEL
.LBB4_61:
	move	$fp, $a0
	b	.LBB4_67
.LBB4_62:
.Ltmp57:                                # EH_LABEL
.LBB4_63:
	move	$fp, $a0
	b	.LBB4_70
.LBB4_64:
.Ltmp46:                                # EH_LABEL
.LBB4_65:
	move	$fp, $a0
	ld.d	$a0, $sp, 16
	beq	$a0, $s4, .LBB4_67
# %bb.66:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_67:
	fcmp.clt.d	$fcc0, $fs1, $fs0
	bcnez	$fcc0, .LBB4_70
# %bb.68:
.Ltmp52:                                # EH_LABEL
	addi.d	$a0, $sp, 48
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal12CheckHandlerD2Ev)
	jirl	$ra, $ra, 0
.Ltmp53:                                # EH_LABEL
# %bb.69:
.LBB4_70:
	ld.d	$a0, $sp, 56
	beq	$a0, $s0, .LBB4_72
# %bb.71:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93
	ld.d	$a1, $sp, 72
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_72:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB4_73:
.Ltmp54:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end4:
	.size	_ZL11CheckSimpleRK7Results, .Lfunc_end4-_ZL11CheckSimpleRK7Results
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table4:
.Lexception0:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Ltmp0-.Lfunc_begin0           # >> Call Site 1 <<
	.uleb128 .Ltmp1-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp1
	.uleb128 .Ltmp2-.Lfunc_begin0           #     jumps to .Ltmp2
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp3-.Lfunc_begin0           # >> Call Site 2 <<
	.uleb128 .Ltmp4-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp4
	.uleb128 .Ltmp57-.Lfunc_begin0          #     jumps to .Ltmp57
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp5-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp10-.Ltmp5                 #   Call between .Ltmp5 and .Ltmp10
	.uleb128 .Ltmp11-.Lfunc_begin0          #     jumps to .Ltmp11
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp12-.Lfunc_begin0          # >> Call Site 4 <<
	.uleb128 .Ltmp23-.Ltmp12                #   Call between .Ltmp12 and .Ltmp23
	.uleb128 .Ltmp24-.Lfunc_begin0          #     jumps to .Ltmp24
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp25-.Lfunc_begin0          # >> Call Site 5 <<
	.uleb128 .Ltmp38-.Ltmp25                #   Call between .Ltmp25 and .Ltmp38
	.uleb128 .Ltmp39-.Lfunc_begin0          #     jumps to .Ltmp39
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp40-.Lfunc_begin0          # >> Call Site 6 <<
	.uleb128 .Ltmp45-.Ltmp40                #   Call between .Ltmp40 and .Ltmp45
	.uleb128 .Ltmp46-.Lfunc_begin0          #     jumps to .Ltmp46
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp47-.Lfunc_begin0          # >> Call Site 7 <<
	.uleb128 .Ltmp50-.Ltmp47                #   Call between .Ltmp47 and .Ltmp50
	.uleb128 .Ltmp51-.Lfunc_begin0          #     jumps to .Ltmp51
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp50-.Lfunc_begin0          # >> Call Site 8 <<
	.uleb128 .Ltmp55-.Ltmp50                #   Call between .Ltmp50 and .Ltmp55
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp55-.Lfunc_begin0          # >> Call Site 9 <<
	.uleb128 .Ltmp56-.Ltmp55                #   Call between .Ltmp55 and .Ltmp56
	.uleb128 .Ltmp57-.Lfunc_begin0          #     jumps to .Ltmp57
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp56-.Lfunc_begin0          # >> Call Site 10 <<
	.uleb128 .Ltmp52-.Ltmp56                #   Call between .Ltmp56 and .Ltmp52
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp52-.Lfunc_begin0          # >> Call Site 11 <<
	.uleb128 .Ltmp53-.Ltmp52                #   Call between .Ltmp52 and .Ltmp53
	.uleb128 .Ltmp54-.Lfunc_begin0          #     jumps to .Ltmp54
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp53-.Lfunc_begin0          # >> Call Site 12 <<
	.uleb128 .Lfunc_end4-.Ltmp53            #   Call between .Ltmp53 and .Lfunc_end4
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
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
	.p2align	5                               # -- Begin function _ZL27SaveInstrCountWithoutResumeRK7Results
	.type	_ZL27SaveInstrCountWithoutResumeRK7Results,@function
_ZL27SaveInstrCountWithoutResumeRK7Results: # @_ZL27SaveInstrCountWithoutResumeRK7Results
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception1
# %bb.0:                                # %._crit_edge.i.i
	addi.d	$sp, $sp, -64
	.cfi_def_cfa_offset 64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	addi.d	$s0, $sp, 24
	st.d	$s0, $sp, 8
	pcalau12i	$a1, %pc_hi20(.L.str.36)
	addi.d	$a1, $a1, %pc_lo12(.L.str.36)
	ld.d	$a2, $a1, 0
	ld.w	$a1, $a1, 8
	st.d	$a2, $sp, 24
	st.w	$a1, $sp, 32
	ori	$a1, $zero, 12
	st.d	$a1, $sp, 16
	st.b	$zero, $sp, 36
.Ltmp58:                                # EH_LABEL
	addi.d	$a1, $sp, 8
	pcaddu18i	$ra, %call36(_ZNK7Results5GetAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp59:                                # EH_LABEL
# %bb.1:
	ld.d	$a0, $sp, 8
	pcalau12i	$a1, %pc_hi20(withoutPauseResumeInstrCount)
	fst.d	$fa0, $a1, %pc_lo12(withoutPauseResumeInstrCount)
	beq	$a0, $s0, .LBB5_3
# %bb.2:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_3:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB5_4:
.Ltmp60:                                # EH_LABEL
	ld.d	$a2, $sp, 8
	move	$fp, $a0
	beq	$a2, $s0, .LBB5_6
# %bb.5:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
	ld.d	$a0, $sp, 24
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_6:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end5:
	.size	_ZL27SaveInstrCountWithoutResumeRK7Results, .Lfunc_end5-_ZL27SaveInstrCountWithoutResumeRK7Results
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
	.uleb128 .Ltmp58-.Lfunc_begin1          # >> Call Site 1 <<
	.uleb128 .Ltmp59-.Ltmp58                #   Call between .Ltmp58 and .Ltmp59
	.uleb128 .Ltmp60-.Lfunc_begin1          #     jumps to .Ltmp60
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp59-.Lfunc_begin1          # >> Call Site 2 <<
	.uleb128 .Lfunc_end5-.Ltmp59            #   Call between .Ltmp59 and .Lfunc_end5
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZL24SaveInstrCountWithResumeRK7Results
	.type	_ZL24SaveInstrCountWithResumeRK7Results,@function
_ZL24SaveInstrCountWithResumeRK7Results: # @_ZL24SaveInstrCountWithResumeRK7Results
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception2
# %bb.0:                                # %._crit_edge.i.i
	addi.d	$sp, $sp, -64
	.cfi_def_cfa_offset 64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	addi.d	$s0, $sp, 24
	st.d	$s0, $sp, 8
	pcalau12i	$a1, %pc_hi20(.L.str.36)
	addi.d	$a1, $a1, %pc_lo12(.L.str.36)
	ld.d	$a2, $a1, 0
	ld.w	$a1, $a1, 8
	st.d	$a2, $sp, 24
	st.w	$a1, $sp, 32
	ori	$a1, $zero, 12
	st.d	$a1, $sp, 16
	st.b	$zero, $sp, 36
.Ltmp61:                                # EH_LABEL
	addi.d	$a1, $sp, 8
	pcaddu18i	$ra, %call36(_ZNK7Results5GetAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp62:                                # EH_LABEL
# %bb.1:
	ld.d	$a0, $sp, 8
	pcalau12i	$a1, %pc_hi20(withPauseResumeInstrCount)
	fst.d	$fa0, $a1, %pc_lo12(withPauseResumeInstrCount)
	beq	$a0, $s0, .LBB6_3
# %bb.2:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_3:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB6_4:
.Ltmp63:                                # EH_LABEL
	ld.d	$a2, $sp, 8
	move	$fp, $a0
	beq	$a2, $s0, .LBB6_6
# %bb.5:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
	ld.d	$a0, $sp, 24
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_6:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end6:
	.size	_ZL24SaveInstrCountWithResumeRK7Results, .Lfunc_end6-_ZL24SaveInstrCountWithResumeRK7Results
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table6:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Ltmp61-.Lfunc_begin2          # >> Call Site 1 <<
	.uleb128 .Ltmp62-.Ltmp61                #   Call between .Ltmp61 and .Ltmp62
	.uleb128 .Ltmp63-.Lfunc_begin2          #     jumps to .Ltmp63
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp62-.Lfunc_begin2          # >> Call Site 2 <<
	.uleb128 .Lfunc_end6-.Ltmp62            #   Call between .Ltmp62 and .Lfunc_end6
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function main
.LCPI7_0:
	.dword	0x412e848000000000              # double 1.0E+6
	.text
	.hidden	main
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
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 8                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 56, -40
	pcalau12i	$a2, %got_pc_hi20(_ZN9benchmark8internal12PerfCounters10kSupportedE)
	ld.d	$a2, $a2, %got_pc_lo12(_ZN9benchmark8internal12PerfCounters10kSupportedE)
	ld.bu	$a2, $a2, 0
	beqz	$a2, .LBB7_7
# %bb.1:
	pcalau12i	$a2, %got_pc_hi20(_ZN9benchmark29FLAGS_benchmark_perf_countersB5cxx11E)
	ld.d	$a5, $a2, %got_pc_lo12(_ZN9benchmark29FLAGS_benchmark_perf_countersB5cxx11E)
	ld.d	$a2, $a5, 8
	pcalau12i	$a3, %pc_hi20(.L.str.15)
	addi.d	$a3, $a3, %pc_lo12(.L.str.15)
	ori	$a4, $zero, 19
	move	$fp, $a0
	move	$a0, $a5
	move	$s0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal12PerfCounters10InitializeEv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_Z14RunOutputTestsiPPc)
	jirl	$ra, $ra, 0
	pcalau12i	$fp, %pc_hi20(withPauseResumeInstrCount)
	fld.d	$fa0, $fp, %pc_lo12(withPauseResumeInstrCount)
	pcalau12i	$a0, %pc_hi20(.LCPI7_0)
	fld.d	$fs0, $a0, %pc_lo12(.LCPI7_0)
	fcmp.cule.d	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB7_8
# %bb.2:
	pcalau12i	$s0, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	ld.b	$a0, $s0, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	dbar	20
	beqz	$a0, .LBB7_9
.LBB7_3:
	pcalau12i	$s1, %pc_hi20(withoutPauseResumeInstrCount)
	fld.d	$fa0, $s1, %pc_lo12(withoutPauseResumeInstrCount)
	fcmp.cule.d	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB7_11
# %bb.4:
	ld.b	$a0, $s0, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	dbar	20
	beqz	$a0, .LBB7_12
.LBB7_5:
	fld.d	$fa0, $s1, %pc_lo12(withoutPauseResumeInstrCount)
	fld.d	$fa1, $fp, %pc_lo12(withPauseResumeInstrCount)
	vldi	$vr2, -904
	fmul.d	$fa0, $fa0, $fa2
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB7_14
# %bb.6:
	ld.b	$a0, $s0, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	dbar	20
	beqz	$a0, .LBB7_15
.LBB7_7:                                # %_ZN9benchmark8internal18GetNullLogInstanceEv.exit17.thread
	move	$a0, $zero
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB7_8:
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a1, $a0, %pc_lo12(.L.str.16)
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a2, $a0, %pc_lo12(.L.str.17)
	pcalau12i	$a0, %pc_hi20(.L__func__.main)
	addi.d	$a3, $a0, %pc_lo12(.L__func__.main)
	addi.d	$a0, $sp, 0
	ori	$a4, $zero, 89
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal12CheckHandlerC2EPKcS3_S3_i)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal12CheckHandlerD2Ev)
	jirl	$ra, $ra, 0
.LBB7_9:
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcaddu18i	$ra, %call36(__cxa_guard_acquire)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	beqz	$a0, .LBB7_3
# %bb.10:
	pcalau12i	$a0, %pc_hi20(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	st.d	$zero, $a0, %pc_lo12(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcaddu18i	$ra, %call36(__cxa_guard_release)
	jirl	$ra, $ra, 0
	b	.LBB7_3
.LBB7_11:
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a1, $a0, %pc_lo12(.L.str.18)
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a2, $a0, %pc_lo12(.L.str.17)
	pcalau12i	$a0, %pc_hi20(.L__func__.main)
	addi.d	$a3, $a0, %pc_lo12(.L__func__.main)
	addi.d	$a0, $sp, 0
	ori	$a4, $zero, 90
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal12CheckHandlerC2EPKcS3_S3_i)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal12CheckHandlerD2Ev)
	jirl	$ra, $ra, 0
.LBB7_12:
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcaddu18i	$ra, %call36(__cxa_guard_acquire)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	beqz	$a0, .LBB7_5
# %bb.13:
	pcalau12i	$a0, %pc_hi20(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	st.d	$zero, $a0, %pc_lo12(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcaddu18i	$ra, %call36(__cxa_guard_release)
	jirl	$ra, $ra, 0
	b	.LBB7_5
.LBB7_14:
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a1, $a0, %pc_lo12(.L.str.19)
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a2, $a0, %pc_lo12(.L.str.17)
	pcalau12i	$a0, %pc_hi20(.L__func__.main)
	addi.d	$a3, $a0, %pc_lo12(.L__func__.main)
	addi.d	$a0, $sp, 0
	ori	$a4, $zero, 91
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal12CheckHandlerC2EPKcS3_S3_i)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal12CheckHandlerD2Ev)
	jirl	$ra, $ra, 0
.LBB7_15:
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcaddu18i	$ra, %call36(__cxa_guard_acquire)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	beqz	$a0, .LBB7_7
# %bb.16:
	pcalau12i	$a0, %pc_hi20(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	st.d	$zero, $a0, %pc_lo12(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcaddu18i	$ra, %call36(__cxa_guard_release)
	jirl	$ra, $ra, 0
	b	.LBB7_7
.Lfunc_end7:
	.size	main, .Lfunc_end7-main
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9benchmark8internal12CheckHandlerC2EPKcS3_S3_i,"axG",@progbits,_ZN9benchmark8internal12CheckHandlerC2EPKcS3_S3_i,comdat
	.hidden	_ZN9benchmark8internal12CheckHandlerC2EPKcS3_S3_i # -- Begin function _ZN9benchmark8internal12CheckHandlerC2EPKcS3_S3_i
	.weak	_ZN9benchmark8internal12CheckHandlerC2EPKcS3_S3_i
	.p2align	5
	.type	_ZN9benchmark8internal12CheckHandlerC2EPKcS3_S3_i,@function
_ZN9benchmark8internal12CheckHandlerC2EPKcS3_S3_i: # @_ZN9benchmark8internal12CheckHandlerC2EPKcS3_S3_i
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
	pcalau12i	$a5, %pc_hi20(_ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log)
	ld.b	$a5, $a5, %pc_lo12(_ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log)
	move	$s1, $a4
	move	$s0, $a3
	move	$fp, $a1
	dbar	20
	pcalau12i	$a1, %pc_hi20(_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log)
	addi.d	$s4, $a1, %pc_lo12(_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log)
	beqz	$a5, .LBB8_18
.LBB8_1:                                # %_ZN9benchmark8internal19GetErrorLogInstanceEv.exit
	ld.d	$s2, $s4, 0
	st.d	$s4, $a0, 0
	beqz	$s2, .LBB8_17
# %bb.2:
	beqz	$a2, .LBB8_4
# %bb.3:
	move	$a0, $a2
	move	$s3, $a2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	move	$a0, $s2
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	bnez	$a0, .LBB8_5
	b	.LBB8_17
.LBB8_4:
	ld.d	$a0, $s2, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s2, $a0
	ld.w	$a1, $a0, 32
	ori	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	beqz	$a0, .LBB8_17
.LBB8_5:                                # %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit
	pcalau12i	$a1, %pc_hi20(.L.str.25)
	addi.d	$a1, $a1, %pc_lo12(.L.str.25)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	beqz	$a0, .LBB8_17
# %bb.6:                                # %_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	beqz	$a0, .LBB8_17
# %bb.7:                                # %_ZN9benchmark8internallsIA3_cEERNS0_7LogTypeES4_RKT_.exit
	pcalau12i	$a1, %pc_hi20(.L.str.26)
	addi.d	$a1, $a1, %pc_lo12(.L.str.26)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s4, 0
	beqz	$s1, .LBB8_17
# %bb.8:
	beqz	$s0, .LBB8_10
# %bb.9:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	bnez	$a0, .LBB8_11
	b	.LBB8_17
.LBB8_10:
	ld.d	$a0, $s1, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s1, $a0
	ld.w	$a1, $a0, 32
	ori	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	beqz	$a0, .LBB8_17
.LBB8_11:                               # %_ZN9benchmark8internallsIA10_cEERNS0_7LogTypeES4_RKT_.exit
	pcalau12i	$a1, %pc_hi20(.L.str.37)
	addi.d	$a1, $a1, %pc_lo12(.L.str.37)
	ori	$a2, $zero, 9
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$s0, $s4, 0
	beqz	$s0, .LBB8_17
# %bb.12:
	beqz	$fp, .LBB8_14
# %bb.13:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	b	.LBB8_15
.LBB8_14:
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.w	$a1, $a0, 32
	ori	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate)
	jirl	$ra, $ra, 0
.LBB8_15:                               # %_ZN9benchmark8internallsIPKcEERNS0_7LogTypeES5_RKT_.exit11
	ld.d	$a0, $s4, 0
	beqz	$a0, .LBB8_17
# %bb.16:
	pcalau12i	$a1, %pc_hi20(.L.str.38)
	addi.d	$a1, $a1, %pc_lo12(.L.str.38)
	ori	$a2, $zero, 10
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	pcaddu18i	$t8, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jr	$t8
.LBB8_17:                               # %_ZN9benchmark8internallsIA11_cEERNS0_7LogTypeES4_RKT_.exit
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB8_18:
	pcalau12i	$a1, %pc_hi20(_ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log)
	addi.d	$a1, $a1, %pc_lo12(_ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log)
	move	$s2, $a0
	move	$a0, $a1
	move	$s3, $a2
	pcaddu18i	$ra, %call36(__cxa_guard_acquire)
	jirl	$ra, $ra, 0
	move	$a2, $s3
	move	$a1, $a0
	move	$a0, $s2
	addi.w	$a1, $a1, 0
	beqz	$a1, .LBB8_1
# %bb.19:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4clog)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4clog)
	st.d	$a0, $s4, 0
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log)
	pcaddu18i	$ra, %call36(__cxa_guard_release)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a2, $s3
	b	.LBB8_1
.Lfunc_end8:
	.size	_ZN9benchmark8internal12CheckHandlerC2EPKcS3_S3_i, .Lfunc_end8-_ZN9benchmark8internal12CheckHandlerC2EPKcS3_S3_i
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9benchmark8internal12CheckHandlerD2Ev,"axG",@progbits,_ZN9benchmark8internal12CheckHandlerD2Ev,comdat
	.hidden	_ZN9benchmark8internal12CheckHandlerD2Ev # -- Begin function _ZN9benchmark8internal12CheckHandlerD2Ev
	.weak	_ZN9benchmark8internal12CheckHandlerD2Ev
	.p2align	5
	.type	_ZN9benchmark8internal12CheckHandlerD2Ev,@function
_ZN9benchmark8internal12CheckHandlerD2Ev: # @_ZN9benchmark8internal12CheckHandlerD2Ev
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
	ld.d	$a0, $a0, 0
	ld.d	$fp, $a0, 0
	beqz	$fp, .LBB9_7
# %bb.1:
	ld.d	$a0, $fp, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.d	$s0, $a0, 240
	bnez	$s0, .LBB9_3
# %bb.2:
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.LBB9_3:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	ld.bu	$a0, $s0, 56
	bnez	$a0, .LBB9_5
# %bb.4:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s0
	jirl	$ra, $a2, 0
	b	.LBB9_6
.LBB9_5:
	ld.bu	$a0, $s0, 67
.LBB9_6:                                # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
	ext.w.b	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.LBB9_7:                                # %_ZN9benchmark8internallsERNS0_7LogTypeEPFRSoS3_E.exit
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal16CallAbortHandlerEv)
	jirl	$ra, $ra, 0
.Lfunc_end9:
	.size	_ZN9benchmark8internal12CheckHandlerD2Ev, .Lfunc_end9-_ZN9benchmark8internal12CheckHandlerD2Ev
	.cfi_endproc
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
.Lfunc_end10:
	.size	__clang_call_terminate, .Lfunc_end10-__clang_call_terminate
                                        # -- End function
	.section	.text._ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv,"axG",@progbits,_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv,comdat
	.hidden	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv # -- Begin function _ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv
	.weak	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv
	.p2align	5
	.type	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv,@function
_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv: # @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv
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
	ld.d	$a1, $a0, 16
	move	$a0, $fp
	jirl	$ra, $a1, 0
	pcalau12i	$a0, %got_pc_hi20(__libc_single_threaded)
	ld.d	$a0, $a0, %got_pc_lo12(__libc_single_threaded)
	ld.bu	$a0, $a0, 0
	beqz	$a0, .LBB11_3
# %bb.1:
	ld.w	$a0, $fp, 12
	addi.d	$a1, $a0, -1
	st.w	$a1, $fp, 12
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB11_4
.LBB11_2:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	jr	$a1
.LBB11_3:
	addi.d	$a1, $fp, 12
	addi.w	$a2, $zero, -1
	amadd_db.w	$a0, $a2, $a1
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB11_2
.LBB11_4:                               # %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end11:
	.size	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv, .Lfunc_end11-_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK7Results5GetAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,"axG",@progbits,_ZNK7Results5GetAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,comdat
	.hidden	_ZNK7Results5GetAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE # -- Begin function _ZNK7Results5GetAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.weak	_ZNK7Results5GetAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.p2align	5
	.type	_ZNK7Results5GetAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,@function
_ZNK7Results5GetAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: # @_ZNK7Results5GetAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception3
# %bb.0:
	addi.d	$sp, $sp, -512
	.cfi_def_cfa_offset 512
	st.d	$ra, $sp, 504                   # 8-byte Folded Spill
	st.d	$fp, $sp, 496                   # 8-byte Folded Spill
	st.d	$s0, $sp, 488                   # 8-byte Folded Spill
	st.d	$s1, $sp, 480                   # 8-byte Folded Spill
	st.d	$s2, $sp, 472                   # 8-byte Folded Spill
	st.d	$s3, $sp, 464                   # 8-byte Folded Spill
	st.d	$s4, $sp, 456                   # 8-byte Folded Spill
	st.d	$s5, $sp, 448                   # 8-byte Folded Spill
	st.d	$s6, $sp, 440                   # 8-byte Folded Spill
	st.d	$s7, $sp, 432                   # 8-byte Folded Spill
	st.d	$s8, $sp, 424                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 416                  # 8-byte Folded Spill
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
	ld.d	$s5, $a0, 48
	beqz	$s5, .LBB12_20
# %bb.1:                                # %.lr.ph.i.i.i.i
	addi.d	$s1, $a0, 40
	ld.d	$s4, $a1, 8
	ld.d	$fp, $a1, 0
	lu12i.w	$s3, -524288
	lu12i.w	$a0, 524287
	ori	$s2, $a0, 4095
	ori	$s6, $zero, 16
	ori	$s7, $zero, 24
	move	$s0, $s1
	b	.LBB12_4
	.p2align	4, , 16
.LBB12_2:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i
                                        #   in Loop: Header=BB12_4 Depth=1
	sub.d	$a0, $s8, $s4
	slt	$a1, $s3, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s3, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $s2
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s2, $a1
	or	$a0, $a0, $a1
.LBB12_3:                               # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i
                                        #   in Loop: Header=BB12_4 Depth=1
	addi.w	$a0, $a0, 0
	slti	$a0, $a0, 0
	masknez	$a1, $s5, $a0
	masknez	$a2, $s6, $a0
	maskeqz	$a3, $s7, $a0
	or	$a2, $a3, $a2
	ldx.d	$s5, $s5, $a2
	maskeqz	$a0, $s0, $a0
	or	$s0, $a0, $a1
	beqz	$s5, .LBB12_6
.LBB12_4:                               # =>This Inner Loop Header: Depth=1
	ld.d	$s8, $s5, 40
	sltu	$a0, $s4, $s8
	masknez	$a1, $s8, $a0
	maskeqz	$a0, $s4, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB12_2
# %bb.5:                                # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i
                                        #   in Loop: Header=BB12_4 Depth=1
	ld.d	$a0, $s5, 32
	move	$a1, $fp
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB12_3
	b	.LBB12_2
.LBB12_6:                               # %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i
	beq	$s0, $s1, .LBB12_20
# %bb.7:
	ld.d	$s5, $s0, 40
	sltu	$a0, $s5, $s4
	masknez	$a1, $s4, $a0
	maskeqz	$a0, $s5, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB12_9
# %bb.8:                                # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
	ld.d	$a1, $s0, 32
	move	$a0, $fp
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB12_10
.LBB12_9:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i
	sub.d	$a0, $s4, $s5
	slt	$a1, $s3, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s3, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $s2
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s2, $a1
	or	$a0, $a0, $a1
.LBB12_10:                              # %_ZNK7Results3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
	addi.w	$a0, $a0, 0
	bltz	$a0, .LBB12_20
# %bb.11:
	ld.d	$a1, $s0, 72
	beqz	$a1, .LBB12_20
# %bb.12:
	slti	$a0, $a0, 0
	pcalau12i	$fp, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	ld.b	$a1, $fp, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	masknez	$a2, $s0, $a0
	maskeqz	$a0, $s1, $a0
	or	$s1, $a0, $a2
	dbar	20
	beqz	$a1, .LBB12_21
.LBB12_13:                              # %_ZN9benchmark8internal18GetNullLogInstanceEv.exit
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 64
	ld.d	$a2, $s0, 72
	addi.d	$a0, $sp, 40
.Ltmp64:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp65:                                # EH_LABEL
# %bb.14:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
.Ltmp67:                                # EH_LABEL
	addi.d	$a0, $sp, 24
	addi.d	$a1, $sp, 16
	addi.d	$s0, $sp, 24
	pcaddu18i	$ra, %call36(_ZNSi10_M_extractIdEERSiRT_)
	jirl	$ra, $ra, 0
.Ltmp68:                                # EH_LABEL
# %bb.15:                               # %_ZNSirsERd.exit
	ld.d	$a0, $sp, 24
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.bu	$a0, $a0, 32
	andi	$a0, $a0, 5
	bnez	$a0, .LBB12_23
# %bb.16:
	ld.b	$a0, $fp, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	dbar	20
	beqz	$a0, .LBB12_26
.LBB12_17:
	fld.d	$fs0, $sp, 16
	pcalau12i	$a0, %got_pc_hi20(_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE)
	ld.d	$fp, $a0, %got_pc_lo12(_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE)
	ld.d	$a0, $fp, 0
	st.d	$a0, $sp, 24
	ld.d	$a1, $fp, 64
	ld.d	$a0, $a0, -24
	ld.d	$a2, $fp, 72
	addi.d	$s0, $sp, 24
	stx.d	$a1, $a0, $s0
	st.d	$a2, $sp, 40
	pcalau12i	$a0, %got_pc_hi20(_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE)
	ld.d	$a1, $a0, %got_pc_lo12(_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE)
	ld.d	$a0, $sp, 120
	addi.d	$a1, $a1, 16
	addi.d	$a2, $sp, 136
	st.d	$a1, $sp, 48
	beq	$a0, $a2, .LBB12_19
# %bb.18:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
	ld.d	$a1, $sp, 136
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB12_19:                              # %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
	pcalau12i	$a0, %got_pc_hi20(_ZTVSt15basic_streambufIcSt11char_traitsIcEE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTVSt15basic_streambufIcSt11char_traitsIcEE)
	addi.d	$a0, $a0, 16
	st.d	$a0, $sp, 48
	addi.d	$a0, $sp, 104
	pcaddu18i	$ra, %call36(_ZNSt6localeD1Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 16
	st.d	$a0, $sp, 24
	ld.d	$a1, $fp, 24
	ld.d	$a0, $a0, -24
	stx.d	$a1, $a0, $s0
	st.d	$zero, $sp, 32
	addi.d	$a0, $sp, 152
	pcaddu18i	$ra, %call36(_ZNSt8ios_baseD2Ev)
	jirl	$ra, $ra, 0
	fmov.d	$fa0, $fs0
	fld.d	$fs0, $sp, 416                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 424                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 432                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 440                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 448                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 456                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 464                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 472                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 480                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 488                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 496                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 504                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 512
	ret
.LBB12_20:                              # %.critedge
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a1, $a0, %pc_lo12(.L.str.33)
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$a2, $a0, %pc_lo12(.L.str.34)
	pcalau12i	$a0, %pc_hi20(.L__func__._ZNK7Results5GetAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	addi.d	$a3, $a0, %pc_lo12(.L__func__._ZNK7Results5GetAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	addi.d	$a0, $sp, 24
	ori	$a4, $zero, 144
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal12CheckHandlerC2EPKcS3_S3_i)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal12CheckHandlerD2Ev)
	jirl	$ra, $ra, 0
.LBB12_21:
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcaddu18i	$ra, %call36(__cxa_guard_acquire)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	beqz	$a0, .LBB12_13
# %bb.22:
	pcalau12i	$a0, %pc_hi20(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	st.d	$zero, $a0, %pc_lo12(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcaddu18i	$ra, %call36(__cxa_guard_release)
	jirl	$ra, $ra, 0
	b	.LBB12_13
.LBB12_23:
.Ltmp70:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.35)
	addi.d	$a1, $a0, %pc_lo12(.L.str.35)
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$a2, $a0, %pc_lo12(.L.str.34)
	pcalau12i	$a0, %pc_hi20(.L__func__._ZNK7Results5GetAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	addi.d	$a3, $a0, %pc_lo12(.L__func__._ZNK7Results5GetAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	addi.d	$a0, $sp, 8
	ori	$a4, $zero, 149
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal12CheckHandlerC2EPKcS3_S3_i)
	jirl	$ra, $ra, 0
.Ltmp71:                                # EH_LABEL
# %bb.24:                               # %_ZN9benchmark8internal18GetNullLogInstanceEv.exit20
.Ltmp72:                                # EH_LABEL
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal12CheckHandlerD2Ev)
	jirl	$ra, $ra, 0
.Ltmp73:                                # EH_LABEL
# %bb.25:
.LBB12_26:
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcaddu18i	$ra, %call36(__cxa_guard_acquire)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	beqz	$a0, .LBB12_17
# %bb.27:
	pcalau12i	$a0, %pc_hi20(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	st.d	$zero, $a0, %pc_lo12(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcaddu18i	$ra, %call36(__cxa_guard_release)
	jirl	$ra, $ra, 0
	b	.LBB12_17
.LBB12_28:
.Ltmp74:                                # EH_LABEL
	b	.LBB12_31
.LBB12_29:
.Ltmp69:                                # EH_LABEL
	b	.LBB12_31
.LBB12_30:
.Ltmp66:                                # EH_LABEL
.LBB12_31:
	move	$fp, $a0
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end12:
	.size	_ZNK7Results5GetAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, .Lfunc_end12-_ZNK7Results5GetAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.cfi_endproc
	.section	.gcc_except_table._ZNK7Results5GetAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,"aG",@progbits,_ZNK7Results5GetAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,comdat
	.p2align	2, 0x0
GCC_except_table12:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Lfunc_begin3-.Lfunc_begin3    # >> Call Site 1 <<
	.uleb128 .Ltmp64-.Lfunc_begin3          #   Call between .Lfunc_begin3 and .Ltmp64
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp64-.Lfunc_begin3          # >> Call Site 2 <<
	.uleb128 .Ltmp65-.Ltmp64                #   Call between .Ltmp64 and .Ltmp65
	.uleb128 .Ltmp66-.Lfunc_begin3          #     jumps to .Ltmp66
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp67-.Lfunc_begin3          # >> Call Site 3 <<
	.uleb128 .Ltmp68-.Ltmp67                #   Call between .Ltmp67 and .Ltmp68
	.uleb128 .Ltmp69-.Lfunc_begin3          #     jumps to .Ltmp69
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp68-.Lfunc_begin3          # >> Call Site 4 <<
	.uleb128 .Ltmp70-.Ltmp68                #   Call between .Ltmp68 and .Ltmp70
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp70-.Lfunc_begin3          # >> Call Site 5 <<
	.uleb128 .Ltmp73-.Ltmp70                #   Call between .Ltmp70 and .Ltmp73
	.uleb128 .Ltmp74-.Lfunc_begin3          #     jumps to .Ltmp74
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp73-.Lfunc_begin3          # >> Call Site 6 <<
	.uleb128 .Lfunc_end12-.Ltmp73           #   Call between .Ltmp73 and .Lfunc_end12
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN9benchmark8internal16CallAbortHandlerEv,"axG",@progbits,_ZN9benchmark8internal16CallAbortHandlerEv,comdat
	.hidden	_ZN9benchmark8internal16CallAbortHandlerEv # -- Begin function _ZN9benchmark8internal16CallAbortHandlerEv
	.weak	_ZN9benchmark8internal16CallAbortHandlerEv
	.p2align	5
	.type	_ZN9benchmark8internal16CallAbortHandlerEv,@function
_ZN9benchmark8internal16CallAbortHandlerEv: # @_ZN9benchmark8internal16CallAbortHandlerEv
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal15GetAbortHandlerEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	jirl	$ra, $a0, 0
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end13:
	.size	_ZN9benchmark8internal16CallAbortHandlerEv, .Lfunc_end13-_ZN9benchmark8internal16CallAbortHandlerEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt17_Function_handlerIFvRK7ResultsEPS3_E9_M_invokeERKSt9_Any_dataS2_,"axG",@progbits,_ZNSt17_Function_handlerIFvRK7ResultsEPS3_E9_M_invokeERKSt9_Any_dataS2_,comdat
	.hidden	_ZNSt17_Function_handlerIFvRK7ResultsEPS3_E9_M_invokeERKSt9_Any_dataS2_ # -- Begin function _ZNSt17_Function_handlerIFvRK7ResultsEPS3_E9_M_invokeERKSt9_Any_dataS2_
	.weak	_ZNSt17_Function_handlerIFvRK7ResultsEPS3_E9_M_invokeERKSt9_Any_dataS2_
	.p2align	5
	.type	_ZNSt17_Function_handlerIFvRK7ResultsEPS3_E9_M_invokeERKSt9_Any_dataS2_,@function
_ZNSt17_Function_handlerIFvRK7ResultsEPS3_E9_M_invokeERKSt9_Any_dataS2_: # @_ZNSt17_Function_handlerIFvRK7ResultsEPS3_E9_M_invokeERKSt9_Any_dataS2_
	.cfi_startproc
# %bb.0:
	ld.d	$a2, $a0, 0
	move	$a0, $a1
	jr	$a2
.Lfunc_end14:
	.size	_ZNSt17_Function_handlerIFvRK7ResultsEPS3_E9_M_invokeERKSt9_Any_dataS2_, .Lfunc_end14-_ZNSt17_Function_handlerIFvRK7ResultsEPS3_E9_M_invokeERKSt9_Any_dataS2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt17_Function_handlerIFvRK7ResultsEPS3_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation,"axG",@progbits,_ZNSt17_Function_handlerIFvRK7ResultsEPS3_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation,comdat
	.hidden	_ZNSt17_Function_handlerIFvRK7ResultsEPS3_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation # -- Begin function _ZNSt17_Function_handlerIFvRK7ResultsEPS3_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation
	.weak	_ZNSt17_Function_handlerIFvRK7ResultsEPS3_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation
	.p2align	5
	.type	_ZNSt17_Function_handlerIFvRK7ResultsEPS3_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFvRK7ResultsEPS3_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation: # @_ZNSt17_Function_handlerIFvRK7ResultsEPS3_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB15_6
# %bb.1:
	ori	$a3, $zero, 2
	beq	$a2, $a3, .LBB15_4
# %bb.2:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB15_5
# %bb.3:                                # %_ZNSt14_Function_base13_Base_managerIPFvRK7ResultsEE10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit
	move	$a0, $zero
	ret
.LBB15_4:                               # %.sink.split.i
	ld.d	$a1, $a1, 0
.LBB15_5:                               # %_ZNSt14_Function_base13_Base_managerIPFvRK7ResultsEE10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit.sink.split
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.LBB15_6:
	pcalau12i	$a1, %pc_hi20(_ZTIPFvRK7ResultsE)
	addi.d	$a1, $a1, %pc_lo12(_ZTIPFvRK7ResultsE)
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end15:
	.size	_ZNSt17_Function_handlerIFvRK7ResultsEPS3_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation, .Lfunc_end15-_ZNSt17_Function_handlerIFvRK7ResultsEPS3_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	5                               # -- Begin function _GLOBAL__sub_I_perf_counters_test.cc
	.type	_GLOBAL__sub_I_perf_counters_test.cc,@function
_GLOBAL__sub_I_perf_counters_test.cc:   # @_GLOBAL__sub_I_perf_counters_test.cc
.Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception4
# %bb.0:
	addi.d	$sp, $sp, -240
	.cfi_def_cfa_offset 240
	st.d	$ra, $sp, 232                   # 8-byte Folded Spill
	st.d	$fp, $sp, 224                   # 8-byte Folded Spill
	st.d	$s0, $sp, 216                   # 8-byte Folded Spill
	st.d	$s1, $sp, 208                   # 8-byte Folded Spill
	st.d	$s2, $sp, 200                   # 8-byte Folded Spill
	st.d	$s3, $sp, 192                   # 8-byte Folded Spill
	st.d	$s4, $sp, 184                   # 8-byte Folded Spill
	st.d	$s5, $sp, 176                   # 8-byte Folded Spill
	st.d	$s6, $sp, 168                   # 8-byte Folded Spill
	st.d	$s7, $sp, 160                   # 8-byte Folded Spill
	st.d	$s8, $sp, 152                   # 8-byte Folded Spill
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
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal17InitializeStreamsEv)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	addi.d	$s1, $sp, 40
	st.d	$s1, $sp, 24
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ld.d	$s3, $a0, 0
	ld.b	$s4, $a0, 8
	st.d	$s3, $sp, 40
	st.b	$s4, $sp, 48
	ori	$a0, $zero, 9
	st.d	$a0, $sp, 32
	st.b	$zero, $sp, 49
	ori	$s2, $zero, 1
.Ltmp75:                                # EH_LABEL
	addi.d	$a1, $sp, 24
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp76:                                # EH_LABEL
# %bb.1:
	pcalau12i	$a0, %got_pc_hi20(_ZTVN9benchmark8internal17FunctionBenchmarkE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTVN9benchmark8internal17FunctionBenchmarkE)
	addi.d	$s8, $a0, 16
	st.d	$s8, $s0, 0
	pcalau12i	$a0, %pc_hi20(_ZL9BM_SimpleRN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_ZL9BM_SimpleRN9benchmark5StateE)
	st.d	$a0, $s0, 224
.Ltmp77:                                # EH_LABEL
	move	$s2, $zero
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp78:                                # EH_LABEL
# %bb.2:
	move	$fp, $a0
	ld.d	$a0, $sp, 24
	beq	$a0, $s1, .LBB16_4
# %bb.3:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
	ld.d	$a1, $sp, 40
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_4:                               # %__cxx_global_var_init.1.exit
	pcalau12i	$a0, %pc_hi20(_ZL27benchmark_uniq_2_benchmark_)
	st.d	$fp, $a0, %pc_lo12(_ZL27benchmark_uniq_2_benchmark_)
	addi.d	$s7, $sp, 136
	st.d	$s7, $sp, 120
	ori	$a0, $zero, 21
	st.d	$a0, $sp, 112
	addi.d	$a0, $sp, 120
	addi.d	$a1, $sp, 112
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 112
	st.d	$a0, $sp, 120
	st.d	$a1, $sp, 136
	pcalau12i	$a2, %pc_hi20(.L.str.3)
	addi.d	$a2, $a2, %pc_lo12(.L.str.3)
	ld.d	$a3, $a2, 13
	st.d	$a3, $a0, 13
	vld	$vr0, $a2, 0
	vst	$vr0, $a0, 0
	ld.d	$a0, $sp, 120
	st.d	$a1, $sp, 128
	stx.b	$zero, $a0, $a1
.Ltmp80:                                # EH_LABEL
	addi.d	$a0, $sp, 24
	addi.d	$a1, $sp, 120
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp81:                                # EH_LABEL
# %bb.5:
.Ltmp83:                                # EH_LABEL
	ori	$a0, $zero, 2
	addi.d	$a1, $sp, 24
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_Z8AddCases10TestCaseIDSt16initializer_listI8TestCaseE)
	jirl	$ra, $ra, 0
.Ltmp84:                                # EH_LABEL
# %bb.6:
	move	$fp, $a0
	ld.d	$s0, $sp, 104
	beqz	$s0, .LBB16_11
# %bb.7:
	ld.d	$a0, $s0, 8
	ori	$a1, $zero, 1
	lu32i.d	$a1, 1
	dbar	20
	bne	$a0, $a1, .LBB16_9
# %bb.8:
	ld.d	$a0, $s0, 0
	st.d	$zero, $s0, 8
	ld.d	$a1, $a0, 16
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 24
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	bne	$a0, $a1, .LBB16_12
	b	.LBB16_13
.LBB16_9:
	pcalau12i	$a1, %got_pc_hi20(__libc_single_threaded)
	ld.d	$a1, $a1, %got_pc_lo12(__libc_single_threaded)
	ld.bu	$a1, $a1, 0
	beqz	$a1, .LBB16_69
# %bb.10:
	addi.d	$a1, $a0, -1
	st.w	$a1, $s0, 8
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB16_70
.LBB16_11:                              # %_ZNSt12__shared_ptrIN9benchmark5RegexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i
	ld.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	beq	$a0, $a1, .LBB16_13
.LBB16_12:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
	ld.d	$a1, $sp, 80
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_13:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
	ld.d	$a0, $sp, 24
	beq	$a0, $s1, .LBB16_15
# %bb.14:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i
	ld.d	$a1, $sp, 40
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_15:                              # %_ZN8TestCaseD2Ev.exit.i
	ld.d	$a0, $sp, 120
	beq	$a0, $s7, .LBB16_17
# %bb.16:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1
	ld.d	$a1, $sp, 136
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_17:                              # %__cxx_global_var_init.2.exit
	pcalau12i	$a0, %pc_hi20(dummy22)
	st.w	$fp, $a0, %pc_lo12(dummy22)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$s1, $sp, 24
	ori	$a0, $zero, 21
	st.d	$a0, $sp, 120
.Ltmp86:                                # EH_LABEL
	addi.d	$a0, $sp, 24
	addi.d	$a1, $sp, 120
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp87:                                # EH_LABEL
# %bb.18:                               # %.noexc.i
	ld.d	$a1, $sp, 120
	st.d	$a0, $sp, 24
	st.d	$a1, $sp, 40
	pcalau12i	$a2, %pc_hi20(.L.str.5)
	addi.d	$s5, $a2, %pc_lo12(.L.str.5)
	vld	$vr0, $s5, 0
	ld.d	$s6, $s5, 13
	vst	$vr0, $a0, 0
	st.d	$s6, $a0, 13
	ld.d	$a0, $sp, 24
	st.d	$a1, $sp, 32
	stx.b	$zero, $a0, $a1
	ori	$s2, $zero, 1
.Ltmp89:                                # EH_LABEL
	addi.d	$a1, $sp, 24
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp90:                                # EH_LABEL
# %bb.19:
	st.d	$s8, $s0, 0
	pcalau12i	$a0, %pc_hi20(_Z21BM_WithoutPauseResumeRN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_Z21BM_WithoutPauseResumeRN9benchmark5StateE)
	st.d	$a0, $s0, 224
.Ltmp91:                                # EH_LABEL
	move	$s2, $zero
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp92:                                # EH_LABEL
# %bb.20:
	move	$fp, $a0
	ld.d	$a0, $sp, 24
	beq	$a0, $s1, .LBB16_22
# %bb.21:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6
	ld.d	$a1, $sp, 40
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_22:                              # %__cxx_global_var_init.4.exit
	pcalau12i	$a0, %pc_hi20(_ZL27benchmark_uniq_3_benchmark_)
	st.d	$fp, $a0, %pc_lo12(_ZL27benchmark_uniq_3_benchmark_)
	st.d	$s7, $sp, 120
	ori	$a0, $zero, 33
	st.d	$a0, $sp, 112
	addi.d	$a0, $sp, 120
	addi.d	$a1, $sp, 112
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 112
	st.d	$a0, $sp, 120
	st.d	$a1, $sp, 136
	pcalau12i	$a2, %pc_hi20(.L.str.7)
	addi.d	$a2, $a2, %pc_lo12(.L.str.7)
	vld	$vr0, $a2, 0
	vst	$vr0, $a0, 0
	vld	$vr0, $a2, 16
	ld.b	$a2, $a2, 32
	vst	$vr0, $a0, 16
	st.b	$a2, $a0, 32
	st.d	$a1, $sp, 128
	stx.b	$zero, $a0, $a1
.Ltmp94:                                # EH_LABEL
	addi.d	$a0, $sp, 24
	addi.d	$a1, $sp, 120
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp95:                                # EH_LABEL
# %bb.23:
.Ltmp97:                                # EH_LABEL
	ori	$a0, $zero, 2
	addi.d	$a1, $sp, 24
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_Z8AddCases10TestCaseIDSt16initializer_listI8TestCaseE)
	jirl	$ra, $ra, 0
.Ltmp98:                                # EH_LABEL
# %bb.24:
	move	$fp, $a0
	ld.d	$s0, $sp, 104
	beqz	$s0, .LBB16_29
# %bb.25:
	ld.d	$a0, $s0, 8
	ori	$a1, $zero, 1
	lu32i.d	$a1, 1
	dbar	20
	bne	$a0, $a1, .LBB16_27
# %bb.26:
	ld.d	$a0, $s0, 0
	st.d	$zero, $s0, 8
	ld.d	$a1, $a0, 16
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 24
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	bne	$a0, $a1, .LBB16_30
	b	.LBB16_31
.LBB16_27:
	pcalau12i	$a1, %got_pc_hi20(__libc_single_threaded)
	ld.d	$a1, $a1, %got_pc_lo12(__libc_single_threaded)
	ld.bu	$a1, $a1, 0
	beqz	$a1, .LBB16_71
# %bb.28:
	addi.d	$a1, $a0, -1
	st.w	$a1, $s0, 8
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB16_72
.LBB16_29:                              # %_ZNSt12__shared_ptrIN9benchmark5RegexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i20
	ld.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	beq	$a0, $a1, .LBB16_31
.LBB16_30:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i21
	ld.d	$a1, $sp, 80
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_31:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i22
	st.d	$s6, $sp, 16                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 24
	beq	$a0, $s1, .LBB16_33
# %bb.32:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i23
	ld.d	$a1, $sp, 40
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_33:                              # %_ZN8TestCaseD2Ev.exit.i24
	move	$s6, $s4
	ld.d	$a0, $sp, 120
	beq	$a0, $s7, .LBB16_35
# %bb.34:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i25
	ld.d	$a1, $sp, 136
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_35:                              # %__cxx_global_var_init.6.exit
	move	$s4, $s3
	pcalau12i	$a0, %pc_hi20(dummy38)
	st.w	$fp, $a0, %pc_lo12(dummy38)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$s1, $sp, 24
	ori	$a0, $zero, 18
	st.d	$a0, $sp, 120
.Ltmp100:                               # EH_LABEL
	addi.d	$a0, $sp, 24
	addi.d	$a1, $sp, 120
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp101:                               # EH_LABEL
# %bb.36:                               # %.noexc.i32
	ld.d	$a1, $sp, 120
	st.d	$a0, $sp, 24
	st.d	$a1, $sp, 40
	pcalau12i	$a2, %pc_hi20(.L.str.9)
	addi.d	$s7, $a2, %pc_lo12(.L.str.9)
	vld	$vr0, $s7, 0
	ld.h	$s2, $s7, 16
	vst	$vr0, $a0, 0
	st.h	$s2, $a0, 16
	ld.d	$a0, $sp, 24
	st.d	$a1, $sp, 32
	stx.b	$zero, $a0, $a1
	ori	$s3, $zero, 1
.Ltmp103:                               # EH_LABEL
	addi.d	$a1, $sp, 24
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp104:                               # EH_LABEL
# %bb.37:
	st.d	$s8, $s0, 0
	pcalau12i	$a0, %pc_hi20(_Z18BM_WithPauseResumeRN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_Z18BM_WithPauseResumeRN9benchmark5StateE)
	st.d	$a0, $s0, 224
.Ltmp105:                               # EH_LABEL
	move	$s3, $zero
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp106:                               # EH_LABEL
# %bb.38:
	move	$fp, $a0
	ld.d	$a0, $sp, 24
	beq	$a0, $s1, .LBB16_40
# %bb.39:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i36
	ld.d	$a1, $sp, 40
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_40:                              # %__cxx_global_var_init.8.exit
	pcalau12i	$a0, %pc_hi20(_ZL27benchmark_uniq_4_benchmark_)
	st.d	$fp, $a0, %pc_lo12(_ZL27benchmark_uniq_4_benchmark_)
	addi.d	$a0, $sp, 136
	st.d	$a0, $sp, 120
	ori	$a0, $zero, 30
	st.d	$a0, $sp, 112
	addi.d	$a0, $sp, 120
	addi.d	$a1, $sp, 112
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 112
	st.d	$a0, $sp, 120
	st.d	$a1, $sp, 136
	pcalau12i	$a2, %pc_hi20(.L.str.11)
	addi.d	$a2, $a2, %pc_lo12(.L.str.11)
	ld.d	$a3, $a2, 22
	ld.d	$a4, $a2, 16
	st.d	$a3, $a0, 22
	st.d	$a4, $a0, 16
	vld	$vr0, $a2, 0
	vst	$vr0, $a0, 0
	ld.d	$a0, $sp, 120
	st.d	$a1, $sp, 128
	stx.b	$zero, $a0, $a1
.Ltmp108:                               # EH_LABEL
	addi.d	$a0, $sp, 24
	addi.d	$a1, $sp, 120
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp109:                               # EH_LABEL
# %bb.41:
.Ltmp111:                               # EH_LABEL
	ori	$a0, $zero, 2
	addi.d	$a1, $sp, 24
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_Z8AddCases10TestCaseIDSt16initializer_listI8TestCaseE)
	jirl	$ra, $ra, 0
.Ltmp112:                               # EH_LABEL
# %bb.42:
	move	$fp, $a0
	ld.d	$s0, $sp, 104
	beqz	$s0, .LBB16_47
# %bb.43:
	ld.d	$a0, $s0, 8
	ori	$a1, $zero, 1
	lu32i.d	$a1, 1
	dbar	20
	bne	$a0, $a1, .LBB16_45
# %bb.44:
	ld.d	$a0, $s0, 0
	st.d	$zero, $s0, 8
	ld.d	$a1, $a0, 16
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 24
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	bne	$a0, $a1, .LBB16_48
	b	.LBB16_49
.LBB16_45:
	pcalau12i	$a1, %got_pc_hi20(__libc_single_threaded)
	ld.d	$a1, $a1, %got_pc_lo12(__libc_single_threaded)
	ld.bu	$a1, $a1, 0
	beqz	$a1, .LBB16_73
# %bb.46:
	addi.d	$a1, $a0, -1
	st.w	$a1, $s0, 8
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB16_74
.LBB16_47:                              # %_ZNSt12__shared_ptrIN9benchmark5RegexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i50
	ld.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	beq	$a0, $a1, .LBB16_49
.LBB16_48:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i51
	ld.d	$a1, $sp, 80
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_49:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i52
	ld.d	$a0, $sp, 24
	beq	$a0, $s1, .LBB16_51
# %bb.50:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i53
	ld.d	$a1, $sp, 40
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_51:                              # %_ZN8TestCaseD2Ev.exit.i54
	ld.d	$a0, $sp, 120
	addi.d	$a1, $sp, 136
	beq	$a0, $a1, .LBB16_53
# %bb.52:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i55
	ld.d	$a1, $sp, 136
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_53:                              # %__cxx_global_var_init.10.exit
	pcalau12i	$a0, %pc_hi20(dummy60)
	st.w	$fp, $a0, %pc_lo12(dummy60)
	st.d	$s1, $sp, 24
	st.d	$s4, $sp, 40
	st.b	$s6, $sp, 48
	ori	$a0, $zero, 9
	st.d	$a0, $sp, 32
	st.b	$zero, $sp, 49
	st.d	$zero, $sp, 128
	pcalau12i	$a0, %pc_hi20(_ZL11CheckSimpleRK7Results)
	addi.d	$a0, $a0, %pc_lo12(_ZL11CheckSimpleRK7Results)
	st.d	$a0, $sp, 120
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvRK7ResultsEPS3_E9_M_invokeERKSt9_Any_dataS2_)
	addi.d	$s0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvRK7ResultsEPS3_E9_M_invokeERKSt9_Any_dataS2_)
	st.d	$s0, $sp, 144
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvRK7ResultsEPS3_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation)
	addi.d	$s3, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvRK7ResultsEPS3_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation)
	st.d	$s3, $sp, 136
.Ltmp114:                               # EH_LABEL
	addi.d	$a0, $sp, 24
	addi.d	$a1, $sp, 120
	pcaddu18i	$ra, %call36(_Z10AddCheckerRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt8functionIFvRK7ResultsEE)
	jirl	$ra, $ra, 0
.Ltmp115:                               # EH_LABEL
# %bb.54:
	move	$fp, $a0
	ld.d	$a3, $sp, 136
	ld.d	$s4, $sp, 16                    # 8-byte Folded Reload
	beqz	$a3, .LBB16_56
# %bb.55:
.Ltmp120:                               # EH_LABEL
	addi.d	$a0, $sp, 120
	addi.d	$a1, $sp, 120
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp121:                               # EH_LABEL
.LBB16_56:                              # %_ZNSt14_Function_baseD2Ev.exit.i
	ld.d	$a0, $sp, 24
	beq	$a0, $s1, .LBB16_58
# %bb.57:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i61
	ld.d	$a1, $sp, 40
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_58:                              # %__cxx_global_var_init.12.exit
	pcalau12i	$a0, %pc_hi20(dummy77)
	st.d	$fp, $a0, %pc_lo12(dummy77)
	st.d	$s1, $sp, 24
	ori	$a0, $zero, 21
	st.d	$a0, $sp, 120
	addi.d	$a0, $sp, 24
	addi.d	$a1, $sp, 120
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 120
	st.d	$a0, $sp, 24
	st.d	$a1, $sp, 40
	st.d	$s4, $a0, 13
	vld	$vr0, $s5, 0
	vst	$vr0, $a0, 0
	ld.d	$a0, $sp, 24
	st.d	$a1, $sp, 32
	stx.b	$zero, $a0, $a1
	st.d	$zero, $sp, 128
	pcalau12i	$a0, %pc_hi20(_ZL27SaveInstrCountWithoutResumeRK7Results)
	addi.d	$a0, $a0, %pc_lo12(_ZL27SaveInstrCountWithoutResumeRK7Results)
	st.d	$a0, $sp, 120
	st.d	$s0, $sp, 144
	st.d	$s3, $sp, 136
.Ltmp123:                               # EH_LABEL
	addi.d	$a0, $sp, 24
	addi.d	$a1, $sp, 120
	pcaddu18i	$ra, %call36(_Z10AddCheckerRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt8functionIFvRK7ResultsEE)
	jirl	$ra, $ra, 0
.Ltmp124:                               # EH_LABEL
# %bb.59:
	move	$fp, $a0
	ld.d	$a3, $sp, 136
	beqz	$a3, .LBB16_61
# %bb.60:
.Ltmp129:                               # EH_LABEL
	addi.d	$a0, $sp, 120
	addi.d	$a1, $sp, 120
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp130:                               # EH_LABEL
.LBB16_61:                              # %_ZNSt14_Function_baseD2Ev.exit.i69
	ld.d	$a0, $sp, 24
	beq	$a0, $s1, .LBB16_63
# %bb.62:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i70
	ld.d	$a1, $sp, 40
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_63:                              # %__cxx_global_var_init.13.exit
	pcalau12i	$a0, %pc_hi20(dummy78)
	st.d	$fp, $a0, %pc_lo12(dummy78)
	st.d	$s1, $sp, 24
	ori	$a0, $zero, 18
	st.d	$a0, $sp, 120
	addi.d	$a0, $sp, 24
	addi.d	$a1, $sp, 120
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 120
	st.d	$a0, $sp, 24
	st.d	$a1, $sp, 40
	st.h	$s2, $a0, 16
	vld	$vr0, $s7, 0
	vst	$vr0, $a0, 0
	ld.d	$a0, $sp, 24
	st.d	$a1, $sp, 32
	stx.b	$zero, $a0, $a1
	st.d	$zero, $sp, 128
	pcalau12i	$a0, %pc_hi20(_ZL24SaveInstrCountWithResumeRK7Results)
	addi.d	$a0, $a0, %pc_lo12(_ZL24SaveInstrCountWithResumeRK7Results)
	st.d	$a0, $sp, 120
	st.d	$s0, $sp, 144
	st.d	$s3, $sp, 136
.Ltmp132:                               # EH_LABEL
	addi.d	$a0, $sp, 24
	addi.d	$a1, $sp, 120
	pcaddu18i	$ra, %call36(_Z10AddCheckerRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt8functionIFvRK7ResultsEE)
	jirl	$ra, $ra, 0
.Ltmp133:                               # EH_LABEL
# %bb.64:
	move	$fp, $a0
	ld.d	$a3, $sp, 136
	beqz	$a3, .LBB16_66
# %bb.65:
.Ltmp138:                               # EH_LABEL
	addi.d	$a0, $sp, 120
	addi.d	$a1, $sp, 120
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp139:                               # EH_LABEL
.LBB16_66:                              # %_ZNSt14_Function_baseD2Ev.exit.i78
	ld.d	$a0, $sp, 24
	beq	$a0, $s1, .LBB16_68
# %bb.67:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i79
	ld.d	$a1, $sp, 40
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_68:                              # %__cxx_global_var_init.14.exit
	pcalau12i	$a0, %pc_hi20(dummy79)
	st.d	$fp, $a0, %pc_lo12(dummy79)
	ld.d	$s8, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 224                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 232                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 240
	ret
.LBB16_69:
	addi.d	$a1, $s0, 8
	addi.w	$a2, $zero, -1
	amadd_db.w	$a0, $a2, $a1
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB16_11
.LBB16_70:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	bne	$a0, $a1, .LBB16_12
	b	.LBB16_13
.LBB16_71:
	addi.d	$a1, $s0, 8
	addi.w	$a2, $zero, -1
	amadd_db.w	$a0, $a2, $a1
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB16_29
.LBB16_72:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	bne	$a0, $a1, .LBB16_30
	b	.LBB16_31
.LBB16_73:
	addi.d	$a1, $s0, 8
	addi.w	$a2, $zero, -1
	amadd_db.w	$a0, $a2, $a1
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB16_47
.LBB16_74:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	bne	$a0, $a1, .LBB16_48
	b	.LBB16_49
.LBB16_75:
.Ltmp140:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB16_76:
.Ltmp131:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB16_77:
.Ltmp122:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB16_78:
.Ltmp134:                               # EH_LABEL
	ld.d	$a3, $sp, 136
	move	$fp, $a0
	beqz	$a3, .LBB16_86
# %bb.79:
.Ltmp135:                               # EH_LABEL
	addi.d	$a0, $sp, 120
	addi.d	$a1, $sp, 120
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp136:                               # EH_LABEL
	b	.LBB16_86
.LBB16_80:
.Ltmp137:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB16_81:
.Ltmp125:                               # EH_LABEL
	ld.d	$a3, $sp, 136
	move	$fp, $a0
	beqz	$a3, .LBB16_86
# %bb.82:
.Ltmp126:                               # EH_LABEL
	addi.d	$a0, $sp, 120
	addi.d	$a1, $sp, 120
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp127:                               # EH_LABEL
	b	.LBB16_86
.LBB16_83:
.Ltmp128:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB16_84:
.Ltmp116:                               # EH_LABEL
	ld.d	$a3, $sp, 136
	move	$fp, $a0
	beqz	$a3, .LBB16_86
# %bb.85:
.Ltmp117:                               # EH_LABEL
	addi.d	$a0, $sp, 120
	addi.d	$a1, $sp, 120
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp118:                               # EH_LABEL
.LBB16_86:                              # %_ZNSt14_Function_baseD2Ev.exit5.i
	ld.d	$a0, $sp, 24
	beq	$a0, $s1, .LBB16_111
# %bb.87:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i
	ld.d	$a1, $sp, 40
	addi.d	$a1, $a1, 1
	b	.LBB16_110
.LBB16_88:
.Ltmp119:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB16_89:                              # %.loopexit.loopexit.i45
.Ltmp113:                               # EH_LABEL
	move	$fp, $a0
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	b	.LBB16_91
.LBB16_90:
.Ltmp110:                               # EH_LABEL
	move	$fp, $a0
.LBB16_91:                              # %.loopexit.i38
	ld.d	$a0, $sp, 120
	addi.d	$a1, $sp, 136
	bne	$a0, $a1, .LBB16_101
	b	.LBB16_111
.LBB16_92:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i29
.Ltmp102:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB16_109
.LBB16_93:                              # %.loopexit.loopexit.i15
.Ltmp99:                                # EH_LABEL
	b	.LBB16_97
.LBB16_94:
.Ltmp96:                                # EH_LABEL
	b	.LBB16_99
.LBB16_95:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i
.Ltmp88:                                # EH_LABEL
	move	$fp, $a0
	b	.LBB16_109
.LBB16_96:                              # %.loopexit.loopexit.i
.Ltmp85:                                # EH_LABEL
.LBB16_97:                              # %.loopexit.i
	move	$fp, $a0
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	b	.LBB16_100
.LBB16_98:
.Ltmp82:                                # EH_LABEL
.LBB16_99:                              # %.loopexit.i
	move	$fp, $a0
.LBB16_100:                             # %.loopexit.i
	ld.d	$a0, $sp, 120
	beq	$a0, $s7, .LBB16_111
.LBB16_101:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i
	ld.d	$a1, $sp, 136
	addi.d	$a1, $a1, 1
	b	.LBB16_110
.LBB16_102:
.Ltmp107:                               # EH_LABEL
	ld.d	$a2, $sp, 24
	move	$fp, $a0
	bne	$a2, $s1, .LBB16_104
# %bb.103:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i7.i35
	bnez	$s3, .LBB16_109
	b	.LBB16_111
.LBB16_104:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i34
	ld.d	$a0, $sp, 40
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	bnez	$s3, .LBB16_109
	b	.LBB16_111
.LBB16_105:
.Ltmp93:                                # EH_LABEL
	ld.d	$a2, $sp, 24
	move	$fp, $a0
	beq	$a2, $s1, .LBB16_108
.LBB16_106:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i
	ld.d	$a0, $sp, 40
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	bnez	$s2, .LBB16_109
	b	.LBB16_111
.LBB16_107:
.Ltmp79:                                # EH_LABEL
	ld.d	$a2, $sp, 24
	move	$fp, $a0
	bne	$a2, $s1, .LBB16_106
.LBB16_108:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i7.i
	beqz	$s2, .LBB16_111
.LBB16_109:
	ori	$a1, $zero, 232
	move	$a0, $s0
.LBB16_110:                             # %common.resume
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_111:                             # %common.resume
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end16:
	.size	_GLOBAL__sub_I_perf_counters_test.cc, .Lfunc_end16-_GLOBAL__sub_I_perf_counters_test.cc
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table16:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Lfunc_begin4-.Lfunc_begin4    # >> Call Site 1 <<
	.uleb128 .Ltmp75-.Lfunc_begin4          #   Call between .Lfunc_begin4 and .Ltmp75
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp75-.Lfunc_begin4          # >> Call Site 2 <<
	.uleb128 .Ltmp78-.Ltmp75                #   Call between .Ltmp75 and .Ltmp78
	.uleb128 .Ltmp79-.Lfunc_begin4          #     jumps to .Ltmp79
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp78-.Lfunc_begin4          # >> Call Site 3 <<
	.uleb128 .Ltmp80-.Ltmp78                #   Call between .Ltmp78 and .Ltmp80
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp80-.Lfunc_begin4          # >> Call Site 4 <<
	.uleb128 .Ltmp81-.Ltmp80                #   Call between .Ltmp80 and .Ltmp81
	.uleb128 .Ltmp82-.Lfunc_begin4          #     jumps to .Ltmp82
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp83-.Lfunc_begin4          # >> Call Site 5 <<
	.uleb128 .Ltmp84-.Ltmp83                #   Call between .Ltmp83 and .Ltmp84
	.uleb128 .Ltmp85-.Lfunc_begin4          #     jumps to .Ltmp85
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp84-.Lfunc_begin4          # >> Call Site 6 <<
	.uleb128 .Ltmp86-.Ltmp84                #   Call between .Ltmp84 and .Ltmp86
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp86-.Lfunc_begin4          # >> Call Site 7 <<
	.uleb128 .Ltmp87-.Ltmp86                #   Call between .Ltmp86 and .Ltmp87
	.uleb128 .Ltmp88-.Lfunc_begin4          #     jumps to .Ltmp88
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp89-.Lfunc_begin4          # >> Call Site 8 <<
	.uleb128 .Ltmp92-.Ltmp89                #   Call between .Ltmp89 and .Ltmp92
	.uleb128 .Ltmp93-.Lfunc_begin4          #     jumps to .Ltmp93
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp92-.Lfunc_begin4          # >> Call Site 9 <<
	.uleb128 .Ltmp94-.Ltmp92                #   Call between .Ltmp92 and .Ltmp94
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp94-.Lfunc_begin4          # >> Call Site 10 <<
	.uleb128 .Ltmp95-.Ltmp94                #   Call between .Ltmp94 and .Ltmp95
	.uleb128 .Ltmp96-.Lfunc_begin4          #     jumps to .Ltmp96
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp97-.Lfunc_begin4          # >> Call Site 11 <<
	.uleb128 .Ltmp98-.Ltmp97                #   Call between .Ltmp97 and .Ltmp98
	.uleb128 .Ltmp99-.Lfunc_begin4          #     jumps to .Ltmp99
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp98-.Lfunc_begin4          # >> Call Site 12 <<
	.uleb128 .Ltmp100-.Ltmp98               #   Call between .Ltmp98 and .Ltmp100
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp100-.Lfunc_begin4         # >> Call Site 13 <<
	.uleb128 .Ltmp101-.Ltmp100              #   Call between .Ltmp100 and .Ltmp101
	.uleb128 .Ltmp102-.Lfunc_begin4         #     jumps to .Ltmp102
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp103-.Lfunc_begin4         # >> Call Site 14 <<
	.uleb128 .Ltmp106-.Ltmp103              #   Call between .Ltmp103 and .Ltmp106
	.uleb128 .Ltmp107-.Lfunc_begin4         #     jumps to .Ltmp107
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp106-.Lfunc_begin4         # >> Call Site 15 <<
	.uleb128 .Ltmp108-.Ltmp106              #   Call between .Ltmp106 and .Ltmp108
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp108-.Lfunc_begin4         # >> Call Site 16 <<
	.uleb128 .Ltmp109-.Ltmp108              #   Call between .Ltmp108 and .Ltmp109
	.uleb128 .Ltmp110-.Lfunc_begin4         #     jumps to .Ltmp110
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp111-.Lfunc_begin4         # >> Call Site 17 <<
	.uleb128 .Ltmp112-.Ltmp111              #   Call between .Ltmp111 and .Ltmp112
	.uleb128 .Ltmp113-.Lfunc_begin4         #     jumps to .Ltmp113
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp112-.Lfunc_begin4         # >> Call Site 18 <<
	.uleb128 .Ltmp114-.Ltmp112              #   Call between .Ltmp112 and .Ltmp114
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp114-.Lfunc_begin4         # >> Call Site 19 <<
	.uleb128 .Ltmp115-.Ltmp114              #   Call between .Ltmp114 and .Ltmp115
	.uleb128 .Ltmp116-.Lfunc_begin4         #     jumps to .Ltmp116
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp120-.Lfunc_begin4         # >> Call Site 20 <<
	.uleb128 .Ltmp121-.Ltmp120              #   Call between .Ltmp120 and .Ltmp121
	.uleb128 .Ltmp122-.Lfunc_begin4         #     jumps to .Ltmp122
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp121-.Lfunc_begin4         # >> Call Site 21 <<
	.uleb128 .Ltmp123-.Ltmp121              #   Call between .Ltmp121 and .Ltmp123
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp123-.Lfunc_begin4         # >> Call Site 22 <<
	.uleb128 .Ltmp124-.Ltmp123              #   Call between .Ltmp123 and .Ltmp124
	.uleb128 .Ltmp125-.Lfunc_begin4         #     jumps to .Ltmp125
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp129-.Lfunc_begin4         # >> Call Site 23 <<
	.uleb128 .Ltmp130-.Ltmp129              #   Call between .Ltmp129 and .Ltmp130
	.uleb128 .Ltmp131-.Lfunc_begin4         #     jumps to .Ltmp131
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp130-.Lfunc_begin4         # >> Call Site 24 <<
	.uleb128 .Ltmp132-.Ltmp130              #   Call between .Ltmp130 and .Ltmp132
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp132-.Lfunc_begin4         # >> Call Site 25 <<
	.uleb128 .Ltmp133-.Ltmp132              #   Call between .Ltmp132 and .Ltmp133
	.uleb128 .Ltmp134-.Lfunc_begin4         #     jumps to .Ltmp134
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp138-.Lfunc_begin4         # >> Call Site 26 <<
	.uleb128 .Ltmp139-.Ltmp138              #   Call between .Ltmp138 and .Ltmp139
	.uleb128 .Ltmp140-.Lfunc_begin4         #     jumps to .Ltmp140
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp139-.Lfunc_begin4         # >> Call Site 27 <<
	.uleb128 .Ltmp135-.Ltmp139              #   Call between .Ltmp139 and .Ltmp135
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp135-.Lfunc_begin4         # >> Call Site 28 <<
	.uleb128 .Ltmp136-.Ltmp135              #   Call between .Ltmp135 and .Ltmp136
	.uleb128 .Ltmp137-.Lfunc_begin4         #     jumps to .Ltmp137
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp136-.Lfunc_begin4         # >> Call Site 29 <<
	.uleb128 .Ltmp126-.Ltmp136              #   Call between .Ltmp136 and .Ltmp126
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp126-.Lfunc_begin4         # >> Call Site 30 <<
	.uleb128 .Ltmp127-.Ltmp126              #   Call between .Ltmp126 and .Ltmp127
	.uleb128 .Ltmp128-.Lfunc_begin4         #     jumps to .Ltmp128
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp127-.Lfunc_begin4         # >> Call Site 31 <<
	.uleb128 .Ltmp117-.Ltmp127              #   Call between .Ltmp127 and .Ltmp117
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp117-.Lfunc_begin4         # >> Call Site 32 <<
	.uleb128 .Ltmp118-.Ltmp117              #   Call between .Ltmp117 and .Ltmp118
	.uleb128 .Ltmp119-.Lfunc_begin4         #     jumps to .Ltmp119
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp118-.Lfunc_begin4         # >> Call Site 33 <<
	.uleb128 .Lfunc_end16-.Ltmp118          #   Call between .Ltmp118 and .Lfunc_end16
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
	.type	_ZL27benchmark_uniq_2_benchmark_,@object # @_ZL27benchmark_uniq_2_benchmark_
	.local	_ZL27benchmark_uniq_2_benchmark_
	.comm	_ZL27benchmark_uniq_2_benchmark_,8,8
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str:
	.asciz	"BM_Simple"
	.size	.L.str, 10

	.hidden	dummy22                         # @dummy22
	.type	dummy22,@object
	.bss
	.globl	dummy22
	.p2align	2, 0x0
dummy22:
	.word	0                               # 0x0
	.size	dummy22, 4

	.type	.L.str.3,@object                # @.str.3
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.3:
	.asciz	"\"name\": \"BM_Simple\",$"
	.size	.L.str.3, 22

	.type	_ZL27benchmark_uniq_3_benchmark_,@object # @_ZL27benchmark_uniq_3_benchmark_
	.local	_ZL27benchmark_uniq_3_benchmark_
	.comm	_ZL27benchmark_uniq_3_benchmark_,8,8
	.type	.L.str.5,@object                # @.str.5
	.p2align	3, 0x0
.L.str.5:
	.asciz	"BM_WithoutPauseResume"
	.size	.L.str.5, 22

	.hidden	dummy38                         # @dummy38
	.type	dummy38,@object
	.bss
	.globl	dummy38
	.p2align	2, 0x0
dummy38:
	.word	0                               # 0x0
	.size	dummy38, 4

	.type	.L.str.7,@object                # @.str.7
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.7:
	.asciz	"\"name\": \"BM_WithoutPauseResume\",$"
	.size	.L.str.7, 34

	.type	_ZL27benchmark_uniq_4_benchmark_,@object # @_ZL27benchmark_uniq_4_benchmark_
	.local	_ZL27benchmark_uniq_4_benchmark_
	.comm	_ZL27benchmark_uniq_4_benchmark_,8,8
	.type	.L.str.9,@object                # @.str.9
	.p2align	3, 0x0
.L.str.9:
	.asciz	"BM_WithPauseResume"
	.size	.L.str.9, 19

	.hidden	dummy60                         # @dummy60
	.type	dummy60,@object
	.bss
	.globl	dummy60
	.p2align	2, 0x0
dummy60:
	.word	0                               # 0x0
	.size	dummy60, 4

	.type	.L.str.11,@object               # @.str.11
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.11:
	.asciz	"\"name\": \"BM_WithPauseResume\",$"
	.size	.L.str.11, 31

	.hidden	withoutPauseResumeInstrCount    # @withoutPauseResumeInstrCount
	.type	withoutPauseResumeInstrCount,@object
	.bss
	.globl	withoutPauseResumeInstrCount
	.p2align	3, 0x0
withoutPauseResumeInstrCount:
	.dword	0x0000000000000000              # double 0
	.size	withoutPauseResumeInstrCount, 8

	.hidden	withPauseResumeInstrCount       # @withPauseResumeInstrCount
	.type	withPauseResumeInstrCount,@object
	.globl	withPauseResumeInstrCount
	.p2align	3, 0x0
withPauseResumeInstrCount:
	.dword	0x0000000000000000              # double 0
	.size	withPauseResumeInstrCount, 8

	.hidden	dummy77                         # @dummy77
	.type	dummy77,@object
	.globl	dummy77
	.p2align	3, 0x0
dummy77:
	.dword	0                               # 0x0
	.size	dummy77, 8

	.hidden	dummy78                         # @dummy78
	.type	dummy78,@object
	.globl	dummy78
	.p2align	3, 0x0
dummy78:
	.dword	0                               # 0x0
	.size	dummy78, 8

	.hidden	dummy79                         # @dummy79
	.type	dummy79,@object
	.globl	dummy79
	.p2align	3, 0x0
dummy79:
	.dword	0                               # 0x0
	.size	dummy79, 8

	.type	.L.str.15,@object               # @.str.15
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.15:
	.asciz	"CYCLES,INSTRUCTIONS"
	.size	.L.str.15, 20

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"(withPauseResumeInstrCount) > (kIters)"
	.size	.L.str.16, 39

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"/home/date/work/actions-runner/_work/llvm-opt-ci/llvm-opt-ci/repos/llvm-test-suite/MicroBenchmarks/libs/benchmark/test/perf_counters_test.cc"
	.size	.L.str.17, 141

	.type	.L__func__.main,@object         # @__func__.main
.L__func__.main:
	.asciz	"main"
	.size	.L__func__.main, 5

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"(withoutPauseResumeInstrCount) > (kIters)"
	.size	.L.str.18, 42

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"(withPauseResumeInstrCount) < (1.5 * withoutPauseResumeInstrCount)"
	.size	.L.str.19, 67

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"cached_ > 0"
	.size	.L.str.20, 12

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"/home/date/work/actions-runner/_work/llvm-opt-ci/llvm-opt-ci/repos/llvm-test-suite/MicroBenchmarks/libs/benchmark/include/benchmark/benchmark.h"
	.size	.L.str.21, 144

	.type	.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv,@object # @__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv
.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv:
	.asciz	"StateIterator &benchmark::State::StateIterator::operator++()"
	.size	.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv, 61

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"CYCLES"
	.size	.L.str.22, 7

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"(e.GetCounterAs< double >(\"CYCLES\")) > ((0))"
	.size	.L.str.23, 45

	.type	.L__func__._ZL11CheckSimpleRK7Results,@object # @__func__._ZL11CheckSimpleRK7Results
.L__func__._ZL11CheckSimpleRK7Results:
	.asciz	"CheckSimple"
	.size	.L__func__._ZL11CheckSimpleRK7Results, 12

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"\n"
	.size	.L.str.24, 2

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	":"
	.size	.L.str.25, 2

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	": "
	.size	.L.str.26, 3

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	":\n"
	.size	.L.str.27, 3

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"expected ("
	.size	.L.str.28, 11

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"double"
	.size	.L.str.29, 7

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	")"
	.size	.L.str.30, 2

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"="
	.size	.L.str.31, 2

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	" to be GT to "
	.size	.L.str.32, 14

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"sv != nullptr && !sv->empty()"
	.size	.L.str.33, 30

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"/home/date/work/actions-runner/_work/llvm-opt-ci/llvm-opt-ci/repos/llvm-test-suite/MicroBenchmarks/libs/benchmark/test/output_test.h"
	.size	.L.str.34, 133

	.type	.L__func__._ZNK7Results5GetAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,@object # @__func__._ZNK7Results5GetAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.L__func__._ZNK7Results5GetAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:
	.asciz	"GetAs"
	.size	.L__func__._ZNK7Results5GetAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, 6

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"!ss.fail()"
	.size	.L.str.35, 11

	.type	.L.str.36,@object               # @.str.36
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.36:
	.asciz	"INSTRUCTIONS"
	.size	.L.str.36, 13

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

	.type	.L.str.37,@object               # @.str.37
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.37:
	.asciz	": Check `"
	.size	.L.str.37, 10

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"' failed. "
	.size	.L.str.38, 11

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

	.hidden	_ZTIPFvRK7ResultsE              # @_ZTIPFvRK7ResultsE
	.type	_ZTIPFvRK7ResultsE,@object
	.section	.data.rel.ro._ZTIPFvRK7ResultsE,"awG",@progbits,_ZTIPFvRK7ResultsE,comdat
	.weak	_ZTIPFvRK7ResultsE
	.p2align	3, 0x0
_ZTIPFvRK7ResultsE:
	.dword	_ZTVN10__cxxabiv119__pointer_type_infoE+16
	.dword	_ZTSPFvRK7ResultsE
	.word	0                               # 0x0
	.space	4
	.dword	_ZTIFvRK7ResultsE
	.size	_ZTIPFvRK7ResultsE, 32

	.hidden	_ZTSPFvRK7ResultsE              # @_ZTSPFvRK7ResultsE
	.type	_ZTSPFvRK7ResultsE,@object
	.section	.rodata._ZTSPFvRK7ResultsE,"aG",@progbits,_ZTSPFvRK7ResultsE,comdat
	.weak	_ZTSPFvRK7ResultsE
_ZTSPFvRK7ResultsE:
	.asciz	"PFvRK7ResultsE"
	.size	_ZTSPFvRK7ResultsE, 15

	.hidden	_ZTIFvRK7ResultsE               # @_ZTIFvRK7ResultsE
	.type	_ZTIFvRK7ResultsE,@object
	.section	.data.rel.ro._ZTIFvRK7ResultsE,"awG",@progbits,_ZTIFvRK7ResultsE,comdat
	.weak	_ZTIFvRK7ResultsE
	.p2align	3, 0x0
_ZTIFvRK7ResultsE:
	.dword	_ZTVN10__cxxabiv120__function_type_infoE+16
	.dword	_ZTSFvRK7ResultsE
	.size	_ZTIFvRK7ResultsE, 16

	.hidden	_ZTSFvRK7ResultsE               # @_ZTSFvRK7ResultsE
	.type	_ZTSFvRK7ResultsE,@object
	.section	.rodata._ZTSFvRK7ResultsE,"aG",@progbits,_ZTSFvRK7ResultsE,comdat
	.weak	_ZTSFvRK7ResultsE
_ZTSFvRK7ResultsE:
	.asciz	"FvRK7ResultsE"
	.size	_ZTSFvRK7ResultsE, 14

	.section	.init_array,"aw",@init_array
	.p2align	3, 0x0
	.dword	_GLOBAL__sub_I_perf_counters_test.cc
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
	.addrsig_sym _ZL9BM_SimpleRN9benchmark5StateE
	.addrsig_sym _Z21BM_WithoutPauseResumeRN9benchmark5StateE
	.addrsig_sym _Z18BM_WithPauseResumeRN9benchmark5StateE
	.addrsig_sym _ZL11CheckSimpleRK7Results
	.addrsig_sym _ZL27SaveInstrCountWithoutResumeRK7Results
	.addrsig_sym _ZL24SaveInstrCountWithResumeRK7Results
	.addrsig_sym _ZNSt17_Function_handlerIFvRK7ResultsEPS3_E9_M_invokeERKSt9_Any_dataS2_
	.addrsig_sym _ZNSt17_Function_handlerIFvRK7ResultsEPS3_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation
	.addrsig_sym _GLOBAL__sub_I_perf_counters_test.cc
	.addrsig_sym _Unwind_Resume
	.addrsig_sym _ZN9benchmark29FLAGS_benchmark_perf_countersB5cxx11E
	.addrsig_sym _ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log
	.addrsig_sym _ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log
	.addrsig_sym _ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log
	.addrsig_sym _ZSt4clog
	.addrsig_sym _ZTIPFvRK7ResultsE
	.addrsig_sym _ZTVN10__cxxabiv119__pointer_type_infoE
	.addrsig_sym _ZTSPFvRK7ResultsE
	.addrsig_sym _ZTIFvRK7ResultsE
	.addrsig_sym _ZTVN10__cxxabiv120__function_type_infoE
	.addrsig_sym _ZTSFvRK7ResultsE
