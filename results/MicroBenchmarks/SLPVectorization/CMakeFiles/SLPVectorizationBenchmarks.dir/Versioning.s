	.file	"Versioning.cpp"
                                        # Start of file scope inline assembly
	.globl	_ZSt21ios_base_library_initv

                                        # End of file scope inline assembly
	.section	.text._Z33benchmark_xor_runtime_checks_passILj4EiEvRN9benchmark5StateE,"axG",@progbits,_Z33benchmark_xor_runtime_checks_passILj4EiEvRN9benchmark5StateE,comdat
	.weak	_Z33benchmark_xor_runtime_checks_passILj4EiEvRN9benchmark5StateE # -- Begin function _Z33benchmark_xor_runtime_checks_passILj4EiEvRN9benchmark5StateE
	.p2align	5
	.type	_Z33benchmark_xor_runtime_checks_passILj4EiEvRN9benchmark5StateE,@function
_Z33benchmark_xor_runtime_checks_passILj4EiEvRN9benchmark5StateE: # @_Z33benchmark_xor_runtime_checks_passILj4EiEvRN9benchmark5StateE
	.cfi_startproc
# %bb.0:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
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
	addi.d	$a0, $sp, 24
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(_ZL9init_dataIiEvPT_j)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 8
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(_ZL9init_dataIiEvPT_j)
	jirl	$ra, $ra, 0
	ld.w	$s1, $fp, 28
	ld.d	$s0, $fp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	bnez	$s1, .LBB0_4
# %bb.1:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	beqz	$s0, .LBB0_4
# %bb.2:
	addi.d	$s1, $sp, 24
	addi.d	$s2, $sp, 8
	.p2align	4, , 16
.LBB0_3:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a0, $sp, 24
	addi.d	$a1, $sp, 8
	pcaddu18i	$ra, %call36(_Z6do_xorILj4EiEvPT0_S1_)
	jirl	$ra, $ra, 0
	#APP
	#NO_APP
	#APP
	#NO_APP
	addi.d	$s0, $s0, -1
	#MEMBARRIER
	bnez	$s0, .LBB0_3
.LBB0_4:                                # %._crit_edge
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end0:
	.size	_Z33benchmark_xor_runtime_checks_passILj4EiEvRN9benchmark5StateE, .Lfunc_end0-_Z33benchmark_xor_runtime_checks_passILj4EiEvRN9benchmark5StateE
	.cfi_endproc
                                        # -- End function
	.section	.text._Z33benchmark_xor_runtime_checks_failILj4EiEvRN9benchmark5StateE,"axG",@progbits,_Z33benchmark_xor_runtime_checks_failILj4EiEvRN9benchmark5StateE,comdat
	.weak	_Z33benchmark_xor_runtime_checks_failILj4EiEvRN9benchmark5StateE # -- Begin function _Z33benchmark_xor_runtime_checks_failILj4EiEvRN9benchmark5StateE
	.p2align	5
	.type	_Z33benchmark_xor_runtime_checks_failILj4EiEvRN9benchmark5StateE,@function
_Z33benchmark_xor_runtime_checks_failILj4EiEvRN9benchmark5StateE: # @_Z33benchmark_xor_runtime_checks_failILj4EiEvRN9benchmark5StateE
	.cfi_startproc
# %bb.0:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
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
	addi.d	$a0, $sp, 8
	ori	$a1, $zero, 8
	pcaddu18i	$ra, %call36(_ZL9init_dataIiEvPT_j)
	jirl	$ra, $ra, 0
	ld.w	$s0, $fp, 28
	ld.d	$s1, $fp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	bnez	$s0, .LBB1_4
# %bb.1:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	beqz	$s1, .LBB1_4
# %bb.2:                                # %.lr.ph
	addi.d	$s0, $sp, 20
	addi.d	$s2, $sp, 8
	.p2align	4, , 16
.LBB1_3:                                # =>This Inner Loop Header: Depth=1
	addi.d	$a0, $sp, 8
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_Z6do_xorILj4EiEvPT0_S1_)
	jirl	$ra, $ra, 0
	#APP
	#NO_APP
	addi.d	$s1, $s1, -1
	#MEMBARRIER
	bnez	$s1, .LBB1_3
.LBB1_4:                                # %._crit_edge
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end1:
	.size	_Z33benchmark_xor_runtime_checks_failILj4EiEvRN9benchmark5StateE, .Lfunc_end1-_Z33benchmark_xor_runtime_checks_failILj4EiEvRN9benchmark5StateE
	.cfi_endproc
                                        # -- End function
	.section	.text._Z38benchmark_xor_no_runtime_checks_neededILj4EiEvRN9benchmark5StateE,"axG",@progbits,_Z38benchmark_xor_no_runtime_checks_neededILj4EiEvRN9benchmark5StateE,comdat
	.weak	_Z38benchmark_xor_no_runtime_checks_neededILj4EiEvRN9benchmark5StateE # -- Begin function _Z38benchmark_xor_no_runtime_checks_neededILj4EiEvRN9benchmark5StateE
	.p2align	5
	.type	_Z38benchmark_xor_no_runtime_checks_neededILj4EiEvRN9benchmark5StateE,@function
_Z38benchmark_xor_no_runtime_checks_neededILj4EiEvRN9benchmark5StateE: # @_Z38benchmark_xor_no_runtime_checks_neededILj4EiEvRN9benchmark5StateE
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
	move	$fp, $a0
	addi.d	$a0, $sp, 32
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(_ZL9init_dataIiEvPT_j)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 16
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(_ZL9init_dataIiEvPT_j)
	jirl	$ra, $ra, 0
	ld.w	$s1, $fp, 28
	ld.d	$s0, $fp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	bnez	$s1, .LBB2_4
# %bb.1:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	beqz	$s0, .LBB2_4
# %bb.2:                                # %.preheader.preheader
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 16
	.p2align	4, , 16
.LBB2_3:                                # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $sp, 16
	vld	$vr1, $sp, 32
	vxor.v	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 32
	#APP
	#NO_APP
	#APP
	#NO_APP
	addi.d	$s0, $s0, -1
	#MEMBARRIER
	bnez	$s0, .LBB2_3
.LBB2_4:                                # %._crit_edge
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end2:
	.size	_Z38benchmark_xor_no_runtime_checks_neededILj4EiEvRN9benchmark5StateE, .Lfunc_end2-_Z38benchmark_xor_no_runtime_checks_neededILj4EiEvRN9benchmark5StateE
	.cfi_endproc
                                        # -- End function
	.section	.text._Z33benchmark_xor_runtime_checks_passILj16EiEvRN9benchmark5StateE,"axG",@progbits,_Z33benchmark_xor_runtime_checks_passILj16EiEvRN9benchmark5StateE,comdat
	.weak	_Z33benchmark_xor_runtime_checks_passILj16EiEvRN9benchmark5StateE # -- Begin function _Z33benchmark_xor_runtime_checks_passILj16EiEvRN9benchmark5StateE
	.p2align	5
	.type	_Z33benchmark_xor_runtime_checks_passILj16EiEvRN9benchmark5StateE,@function
_Z33benchmark_xor_runtime_checks_passILj16EiEvRN9benchmark5StateE: # @_Z33benchmark_xor_runtime_checks_passILj16EiEvRN9benchmark5StateE
	.cfi_startproc
# %bb.0:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	addi.d	$sp, $sp, -176
	.cfi_def_cfa_offset 176
	st.d	$ra, $sp, 168                   # 8-byte Folded Spill
	st.d	$fp, $sp, 160                   # 8-byte Folded Spill
	st.d	$s0, $sp, 152                   # 8-byte Folded Spill
	st.d	$s1, $sp, 144                   # 8-byte Folded Spill
	st.d	$s2, $sp, 136                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	move	$fp, $a0
	addi.d	$a0, $sp, 72
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_ZL9init_dataIiEvPT_j)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 8
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_ZL9init_dataIiEvPT_j)
	jirl	$ra, $ra, 0
	ld.w	$s1, $fp, 28
	ld.d	$s0, $fp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	bnez	$s1, .LBB3_4
# %bb.1:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	beqz	$s0, .LBB3_4
# %bb.2:
	addi.d	$s1, $sp, 72
	addi.d	$s2, $sp, 8
	.p2align	4, , 16
.LBB3_3:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a0, $sp, 72
	addi.d	$a1, $sp, 8
	pcaddu18i	$ra, %call36(_Z6do_xorILj16EiEvPT0_S1_)
	jirl	$ra, $ra, 0
	#APP
	#NO_APP
	#APP
	#NO_APP
	addi.d	$s0, $s0, -1
	#MEMBARRIER
	bnez	$s0, .LBB3_3
.LBB3_4:                                # %._crit_edge
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 168                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 176
	ret
.Lfunc_end3:
	.size	_Z33benchmark_xor_runtime_checks_passILj16EiEvRN9benchmark5StateE, .Lfunc_end3-_Z33benchmark_xor_runtime_checks_passILj16EiEvRN9benchmark5StateE
	.cfi_endproc
                                        # -- End function
	.section	.text._Z33benchmark_xor_runtime_checks_failILj16EiEvRN9benchmark5StateE,"axG",@progbits,_Z33benchmark_xor_runtime_checks_failILj16EiEvRN9benchmark5StateE,comdat
	.weak	_Z33benchmark_xor_runtime_checks_failILj16EiEvRN9benchmark5StateE # -- Begin function _Z33benchmark_xor_runtime_checks_failILj16EiEvRN9benchmark5StateE
	.p2align	5
	.type	_Z33benchmark_xor_runtime_checks_failILj16EiEvRN9benchmark5StateE,@function
_Z33benchmark_xor_runtime_checks_failILj16EiEvRN9benchmark5StateE: # @_Z33benchmark_xor_runtime_checks_failILj16EiEvRN9benchmark5StateE
	.cfi_startproc
# %bb.0:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	addi.d	$sp, $sp, -176
	.cfi_def_cfa_offset 176
	st.d	$ra, $sp, 168                   # 8-byte Folded Spill
	st.d	$fp, $sp, 160                   # 8-byte Folded Spill
	st.d	$s0, $sp, 152                   # 8-byte Folded Spill
	st.d	$s1, $sp, 144                   # 8-byte Folded Spill
	st.d	$s2, $sp, 136                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	move	$fp, $a0
	addi.d	$a0, $sp, 8
	ori	$a1, $zero, 32
	pcaddu18i	$ra, %call36(_ZL9init_dataIiEvPT_j)
	jirl	$ra, $ra, 0
	ld.w	$s0, $fp, 28
	ld.d	$s1, $fp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	bnez	$s0, .LBB4_4
# %bb.1:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	beqz	$s1, .LBB4_4
# %bb.2:                                # %.lr.ph
	addi.d	$s0, $sp, 20
	addi.d	$s2, $sp, 8
	.p2align	4, , 16
.LBB4_3:                                # =>This Inner Loop Header: Depth=1
	addi.d	$a0, $sp, 8
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_Z6do_xorILj16EiEvPT0_S1_)
	jirl	$ra, $ra, 0
	#APP
	#NO_APP
	addi.d	$s1, $s1, -1
	#MEMBARRIER
	bnez	$s1, .LBB4_3
.LBB4_4:                                # %._crit_edge
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 168                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 176
	ret
.Lfunc_end4:
	.size	_Z33benchmark_xor_runtime_checks_failILj16EiEvRN9benchmark5StateE, .Lfunc_end4-_Z33benchmark_xor_runtime_checks_failILj16EiEvRN9benchmark5StateE
	.cfi_endproc
                                        # -- End function
	.section	.text._Z38benchmark_xor_no_runtime_checks_neededILj16EiEvRN9benchmark5StateE,"axG",@progbits,_Z38benchmark_xor_no_runtime_checks_neededILj16EiEvRN9benchmark5StateE,comdat
	.weak	_Z38benchmark_xor_no_runtime_checks_neededILj16EiEvRN9benchmark5StateE # -- Begin function _Z38benchmark_xor_no_runtime_checks_neededILj16EiEvRN9benchmark5StateE
	.p2align	5
	.type	_Z38benchmark_xor_no_runtime_checks_neededILj16EiEvRN9benchmark5StateE,@function
_Z38benchmark_xor_no_runtime_checks_neededILj16EiEvRN9benchmark5StateE: # @_Z38benchmark_xor_no_runtime_checks_neededILj16EiEvRN9benchmark5StateE
	.cfi_startproc
# %bb.0:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	addi.d	$sp, $sp, -176
	.cfi_def_cfa_offset 176
	st.d	$ra, $sp, 168                   # 8-byte Folded Spill
	st.d	$fp, $sp, 160                   # 8-byte Folded Spill
	st.d	$s0, $sp, 152                   # 8-byte Folded Spill
	st.d	$s1, $sp, 144                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	move	$fp, $a0
	addi.d	$a0, $sp, 80
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_ZL9init_dataIiEvPT_j)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 16
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_ZL9init_dataIiEvPT_j)
	jirl	$ra, $ra, 0
	ld.w	$s1, $fp, 28
	ld.d	$s0, $fp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	bnez	$s1, .LBB5_4
# %bb.1:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	beqz	$s0, .LBB5_4
# %bb.2:                                # %.preheader.preheader
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 16
	.p2align	4, , 16
.LBB5_3:                                # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $sp, 16
	vld	$vr1, $sp, 80
	vld	$vr2, $sp, 32
	vld	$vr3, $sp, 96
	vxor.v	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 80
	vxor.v	$vr0, $vr3, $vr2
	vld	$vr1, $sp, 48
	vld	$vr2, $sp, 112
	vld	$vr3, $sp, 64
	vld	$vr4, $sp, 128
	vst	$vr0, $sp, 96
	vxor.v	$vr0, $vr2, $vr1
	vst	$vr0, $sp, 112
	vxor.v	$vr0, $vr4, $vr3
	vst	$vr0, $sp, 128
	#APP
	#NO_APP
	#APP
	#NO_APP
	addi.d	$s0, $s0, -1
	#MEMBARRIER
	bnez	$s0, .LBB5_3
.LBB5_4:                                # %._crit_edge
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 168                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 176
	ret
.Lfunc_end5:
	.size	_Z38benchmark_xor_no_runtime_checks_neededILj16EiEvRN9benchmark5StateE, .Lfunc_end5-_Z38benchmark_xor_no_runtime_checks_neededILj16EiEvRN9benchmark5StateE
	.cfi_endproc
                                        # -- End function
	.section	.text._Z37benchmark_add_xor_runtime_checks_passILj4EiEvRN9benchmark5StateE,"axG",@progbits,_Z37benchmark_add_xor_runtime_checks_passILj4EiEvRN9benchmark5StateE,comdat
	.weak	_Z37benchmark_add_xor_runtime_checks_passILj4EiEvRN9benchmark5StateE # -- Begin function _Z37benchmark_add_xor_runtime_checks_passILj4EiEvRN9benchmark5StateE
	.p2align	5
	.type	_Z37benchmark_add_xor_runtime_checks_passILj4EiEvRN9benchmark5StateE,@function
_Z37benchmark_add_xor_runtime_checks_passILj4EiEvRN9benchmark5StateE: # @_Z37benchmark_add_xor_runtime_checks_passILj4EiEvRN9benchmark5StateE
	.cfi_startproc
# %bb.0:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
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
	addi.d	$a0, $sp, 48
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(_ZL9init_dataIiEvPT_j)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 32
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(_ZL9init_dataIiEvPT_j)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 16
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(_ZL9init_dataIiEvPT_j)
	jirl	$ra, $ra, 0
	ld.w	$s1, $fp, 28
	ld.d	$s0, $fp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	bnez	$s1, .LBB6_4
# %bb.1:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	beqz	$s0, .LBB6_4
# %bb.2:
	addi.d	$s1, $sp, 48
	addi.d	$s2, $sp, 32
	addi.d	$s3, $sp, 16
	.p2align	4, , 16
.LBB6_3:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 32
	addi.d	$a2, $sp, 16
	pcaddu18i	$ra, %call36(_Z10do_add_xorILj4EiEvPT0_S1_S1_)
	jirl	$ra, $ra, 0
	#APP
	#NO_APP
	#APP
	#NO_APP
	#APP
	#NO_APP
	addi.d	$s0, $s0, -1
	#MEMBARRIER
	bnez	$s0, .LBB6_3
.LBB6_4:                                # %._crit_edge
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.Lfunc_end6:
	.size	_Z37benchmark_add_xor_runtime_checks_passILj4EiEvRN9benchmark5StateE, .Lfunc_end6-_Z37benchmark_add_xor_runtime_checks_passILj4EiEvRN9benchmark5StateE
	.cfi_endproc
                                        # -- End function
	.section	.text._Z37benchmark_add_xor_runtime_checks_failILj4EiEvRN9benchmark5StateE,"axG",@progbits,_Z37benchmark_add_xor_runtime_checks_failILj4EiEvRN9benchmark5StateE,comdat
	.weak	_Z37benchmark_add_xor_runtime_checks_failILj4EiEvRN9benchmark5StateE # -- Begin function _Z37benchmark_add_xor_runtime_checks_failILj4EiEvRN9benchmark5StateE
	.p2align	5
	.type	_Z37benchmark_add_xor_runtime_checks_failILj4EiEvRN9benchmark5StateE,@function
_Z37benchmark_add_xor_runtime_checks_failILj4EiEvRN9benchmark5StateE: # @_Z37benchmark_add_xor_runtime_checks_failILj4EiEvRN9benchmark5StateE
	.cfi_startproc
# %bb.0:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
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
	addi.d	$a0, $sp, 32
	ori	$a1, $zero, 8
	pcaddu18i	$ra, %call36(_ZL9init_dataIiEvPT_j)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 16
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(_ZL9init_dataIiEvPT_j)
	jirl	$ra, $ra, 0
	ld.w	$s0, $fp, 28
	ld.d	$s1, $fp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	bnez	$s0, .LBB7_4
# %bb.1:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	beqz	$s1, .LBB7_4
# %bb.2:                                # %.lr.ph
	addi.d	$s0, $sp, 44
	addi.d	$s2, $sp, 32
	addi.d	$s3, $sp, 16
	.p2align	4, , 16
.LBB7_3:                                # =>This Inner Loop Header: Depth=1
	addi.d	$a0, $sp, 32
	addi.d	$a2, $sp, 16
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_Z10do_add_xorILj4EiEvPT0_S1_S1_)
	jirl	$ra, $ra, 0
	#APP
	#NO_APP
	#APP
	#NO_APP
	addi.d	$s1, $s1, -1
	#MEMBARRIER
	bnez	$s1, .LBB7_3
.LBB7_4:                                # %._crit_edge
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.Lfunc_end7:
	.size	_Z37benchmark_add_xor_runtime_checks_failILj4EiEvRN9benchmark5StateE, .Lfunc_end7-_Z37benchmark_add_xor_runtime_checks_failILj4EiEvRN9benchmark5StateE
	.cfi_endproc
                                        # -- End function
	.section	.text._Z42benchmark_add_xor_no_runtime_checks_neededILj4EiEvRN9benchmark5StateE,"axG",@progbits,_Z42benchmark_add_xor_no_runtime_checks_neededILj4EiEvRN9benchmark5StateE,comdat
	.weak	_Z42benchmark_add_xor_no_runtime_checks_neededILj4EiEvRN9benchmark5StateE # -- Begin function _Z42benchmark_add_xor_no_runtime_checks_neededILj4EiEvRN9benchmark5StateE
	.p2align	5
	.type	_Z42benchmark_add_xor_no_runtime_checks_neededILj4EiEvRN9benchmark5StateE,@function
_Z42benchmark_add_xor_no_runtime_checks_neededILj4EiEvRN9benchmark5StateE: # @_Z42benchmark_add_xor_no_runtime_checks_neededILj4EiEvRN9benchmark5StateE
	.cfi_startproc
# %bb.0:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	addi.d	$sp, $sp, -96
	.cfi_def_cfa_offset 96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	move	$fp, $a0
	addi.d	$a0, $sp, 48
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(_ZL9init_dataIiEvPT_j)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 32
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(_ZL9init_dataIiEvPT_j)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 16
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(_ZL9init_dataIiEvPT_j)
	jirl	$ra, $ra, 0
	ld.w	$s1, $fp, 28
	ld.d	$s0, $fp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	bnez	$s1, .LBB8_4
# %bb.1:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	beqz	$s0, .LBB8_4
# %bb.2:                                # %.preheader.preheader
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 32
	addi.d	$a2, $sp, 16
	.p2align	4, , 16
.LBB8_3:                                # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $sp, 32
	vld	$vr1, $sp, 16
	vld	$vr2, $sp, 48
	vadd.w	$vr0, $vr1, $vr0
	vxor.v	$vr0, $vr2, $vr0
	vst	$vr0, $sp, 48
	#APP
	#NO_APP
	#APP
	#NO_APP
	#APP
	#NO_APP
	addi.d	$s0, $s0, -1
	#MEMBARRIER
	bnez	$s0, .LBB8_3
.LBB8_4:                                # %._crit_edge
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end8:
	.size	_Z42benchmark_add_xor_no_runtime_checks_neededILj4EiEvRN9benchmark5StateE, .Lfunc_end8-_Z42benchmark_add_xor_no_runtime_checks_neededILj4EiEvRN9benchmark5StateE
	.cfi_endproc
                                        # -- End function
	.section	.text._Z37benchmark_add_xor_runtime_checks_passILj16EiEvRN9benchmark5StateE,"axG",@progbits,_Z37benchmark_add_xor_runtime_checks_passILj16EiEvRN9benchmark5StateE,comdat
	.weak	_Z37benchmark_add_xor_runtime_checks_passILj16EiEvRN9benchmark5StateE # -- Begin function _Z37benchmark_add_xor_runtime_checks_passILj16EiEvRN9benchmark5StateE
	.p2align	5
	.type	_Z37benchmark_add_xor_runtime_checks_passILj16EiEvRN9benchmark5StateE,@function
_Z37benchmark_add_xor_runtime_checks_passILj16EiEvRN9benchmark5StateE: # @_Z37benchmark_add_xor_runtime_checks_passILj16EiEvRN9benchmark5StateE
	.cfi_startproc
# %bb.0:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	addi.d	$sp, $sp, -256
	.cfi_def_cfa_offset 256
	st.d	$ra, $sp, 248                   # 8-byte Folded Spill
	st.d	$fp, $sp, 240                   # 8-byte Folded Spill
	st.d	$s0, $sp, 232                   # 8-byte Folded Spill
	st.d	$s1, $sp, 224                   # 8-byte Folded Spill
	st.d	$s2, $sp, 216                   # 8-byte Folded Spill
	st.d	$s3, $sp, 208                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	move	$fp, $a0
	addi.d	$a0, $sp, 144
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_ZL9init_dataIiEvPT_j)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 80
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_ZL9init_dataIiEvPT_j)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 16
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_ZL9init_dataIiEvPT_j)
	jirl	$ra, $ra, 0
	ld.w	$s1, $fp, 28
	ld.d	$s0, $fp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	bnez	$s1, .LBB9_4
# %bb.1:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	beqz	$s0, .LBB9_4
# %bb.2:
	addi.d	$s1, $sp, 144
	addi.d	$s2, $sp, 80
	addi.d	$s3, $sp, 16
	.p2align	4, , 16
.LBB9_3:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a0, $sp, 144
	addi.d	$a1, $sp, 80
	addi.d	$a2, $sp, 16
	pcaddu18i	$ra, %call36(_Z10do_add_xorILj16EiEvPT0_S1_S1_)
	jirl	$ra, $ra, 0
	#APP
	#NO_APP
	#APP
	#NO_APP
	#APP
	#NO_APP
	addi.d	$s0, $s0, -1
	#MEMBARRIER
	bnez	$s0, .LBB9_3
.LBB9_4:                                # %._crit_edge
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
	ld.d	$s3, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 240                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 248                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 256
	ret
.Lfunc_end9:
	.size	_Z37benchmark_add_xor_runtime_checks_passILj16EiEvRN9benchmark5StateE, .Lfunc_end9-_Z37benchmark_add_xor_runtime_checks_passILj16EiEvRN9benchmark5StateE
	.cfi_endproc
                                        # -- End function
	.section	.text._Z37benchmark_add_xor_runtime_checks_failILj16EiEvRN9benchmark5StateE,"axG",@progbits,_Z37benchmark_add_xor_runtime_checks_failILj16EiEvRN9benchmark5StateE,comdat
	.weak	_Z37benchmark_add_xor_runtime_checks_failILj16EiEvRN9benchmark5StateE # -- Begin function _Z37benchmark_add_xor_runtime_checks_failILj16EiEvRN9benchmark5StateE
	.p2align	5
	.type	_Z37benchmark_add_xor_runtime_checks_failILj16EiEvRN9benchmark5StateE,@function
_Z37benchmark_add_xor_runtime_checks_failILj16EiEvRN9benchmark5StateE: # @_Z37benchmark_add_xor_runtime_checks_failILj16EiEvRN9benchmark5StateE
	.cfi_startproc
# %bb.0:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	addi.d	$sp, $sp, -256
	.cfi_def_cfa_offset 256
	st.d	$ra, $sp, 248                   # 8-byte Folded Spill
	st.d	$fp, $sp, 240                   # 8-byte Folded Spill
	st.d	$s0, $sp, 232                   # 8-byte Folded Spill
	st.d	$s1, $sp, 224                   # 8-byte Folded Spill
	st.d	$s2, $sp, 216                   # 8-byte Folded Spill
	st.d	$s3, $sp, 208                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	move	$fp, $a0
	addi.d	$a0, $sp, 80
	ori	$a1, $zero, 32
	pcaddu18i	$ra, %call36(_ZL9init_dataIiEvPT_j)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 16
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_ZL9init_dataIiEvPT_j)
	jirl	$ra, $ra, 0
	ld.w	$s0, $fp, 28
	ld.d	$s1, $fp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	bnez	$s0, .LBB10_4
# %bb.1:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	beqz	$s1, .LBB10_4
# %bb.2:                                # %.lr.ph
	addi.d	$s0, $sp, 92
	addi.d	$s2, $sp, 80
	addi.d	$s3, $sp, 16
	.p2align	4, , 16
.LBB10_3:                               # =>This Inner Loop Header: Depth=1
	addi.d	$a0, $sp, 80
	addi.d	$a2, $sp, 16
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_Z10do_add_xorILj16EiEvPT0_S1_S1_)
	jirl	$ra, $ra, 0
	#APP
	#NO_APP
	#APP
	#NO_APP
	addi.d	$s1, $s1, -1
	#MEMBARRIER
	bnez	$s1, .LBB10_3
.LBB10_4:                               # %._crit_edge
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
	ld.d	$s3, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 240                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 248                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 256
	ret
.Lfunc_end10:
	.size	_Z37benchmark_add_xor_runtime_checks_failILj16EiEvRN9benchmark5StateE, .Lfunc_end10-_Z37benchmark_add_xor_runtime_checks_failILj16EiEvRN9benchmark5StateE
	.cfi_endproc
                                        # -- End function
	.section	.text._Z42benchmark_add_xor_no_runtime_checks_neededILj16EiEvRN9benchmark5StateE,"axG",@progbits,_Z42benchmark_add_xor_no_runtime_checks_neededILj16EiEvRN9benchmark5StateE,comdat
	.weak	_Z42benchmark_add_xor_no_runtime_checks_neededILj16EiEvRN9benchmark5StateE # -- Begin function _Z42benchmark_add_xor_no_runtime_checks_neededILj16EiEvRN9benchmark5StateE
	.p2align	5
	.type	_Z42benchmark_add_xor_no_runtime_checks_neededILj16EiEvRN9benchmark5StateE,@function
_Z42benchmark_add_xor_no_runtime_checks_neededILj16EiEvRN9benchmark5StateE: # @_Z42benchmark_add_xor_no_runtime_checks_neededILj16EiEvRN9benchmark5StateE
	.cfi_startproc
# %bb.0:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	addi.d	$sp, $sp, -240
	.cfi_def_cfa_offset 240
	st.d	$ra, $sp, 232                   # 8-byte Folded Spill
	st.d	$fp, $sp, 224                   # 8-byte Folded Spill
	st.d	$s0, $sp, 216                   # 8-byte Folded Spill
	st.d	$s1, $sp, 208                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	move	$fp, $a0
	addi.d	$a0, $sp, 144
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_ZL9init_dataIiEvPT_j)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 80
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_ZL9init_dataIiEvPT_j)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 16
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_ZL9init_dataIiEvPT_j)
	jirl	$ra, $ra, 0
	ld.w	$s1, $fp, 28
	ld.d	$s0, $fp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	bnez	$s1, .LBB11_4
# %bb.1:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	beqz	$s0, .LBB11_4
# %bb.2:                                # %.preheader.preheader
	addi.d	$a0, $sp, 144
	addi.d	$a1, $sp, 80
	addi.d	$a2, $sp, 16
	.p2align	4, , 16
.LBB11_3:                               # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $sp, 80
	vld	$vr1, $sp, 16
	vld	$vr2, $sp, 144
	vadd.w	$vr0, $vr1, $vr0
	vxor.v	$vr0, $vr2, $vr0
	vst	$vr0, $sp, 144
	vld	$vr0, $sp, 96
	vld	$vr1, $sp, 32
	vld	$vr2, $sp, 160
	vld	$vr3, $sp, 112
	vld	$vr4, $sp, 48
	vadd.w	$vr0, $vr1, $vr0
	vxor.v	$vr0, $vr2, $vr0
	vst	$vr0, $sp, 160
	vadd.w	$vr0, $vr4, $vr3
	vld	$vr1, $sp, 176
	vld	$vr2, $sp, 128
	vld	$vr3, $sp, 64
	vld	$vr4, $sp, 192
	vxor.v	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 176
	vadd.w	$vr0, $vr3, $vr2
	vxor.v	$vr0, $vr4, $vr0
	vst	$vr0, $sp, 192
	#APP
	#NO_APP
	#APP
	#NO_APP
	#APP
	#NO_APP
	addi.d	$s0, $s0, -1
	#MEMBARRIER
	bnez	$s0, .LBB11_3
.LBB11_4:                               # %._crit_edge
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 224                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 232                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 240
	ret
.Lfunc_end11:
	.size	_Z42benchmark_add_xor_no_runtime_checks_neededILj16EiEvRN9benchmark5StateE, .Lfunc_end11-_Z42benchmark_add_xor_no_runtime_checks_neededILj16EiEvRN9benchmark5StateE
	.cfi_endproc
                                        # -- End function
	.section	.text._Z49benchmark_multiply_accumulate_runtime_checks_passILj2EdEvRN9benchmark5StateE,"axG",@progbits,_Z49benchmark_multiply_accumulate_runtime_checks_passILj2EdEvRN9benchmark5StateE,comdat
	.weak	_Z49benchmark_multiply_accumulate_runtime_checks_passILj2EdEvRN9benchmark5StateE # -- Begin function _Z49benchmark_multiply_accumulate_runtime_checks_passILj2EdEvRN9benchmark5StateE
	.p2align	5
	.type	_Z49benchmark_multiply_accumulate_runtime_checks_passILj2EdEvRN9benchmark5StateE,@function
_Z49benchmark_multiply_accumulate_runtime_checks_passILj2EdEvRN9benchmark5StateE: # @_Z49benchmark_multiply_accumulate_runtime_checks_passILj2EdEvRN9benchmark5StateE
	.cfi_startproc
# %bb.0:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
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
	addi.d	$a0, $sp, 24
	ori	$a1, $zero, 2
	pcaddu18i	$ra, %call36(_ZL9init_dataIdEvPT_j)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 8
	ori	$a1, $zero, 2
	pcaddu18i	$ra, %call36(_ZL9init_dataIdEvPT_j)
	jirl	$ra, $ra, 0
	ld.w	$s1, $fp, 28
	ld.d	$s0, $fp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	bnez	$s1, .LBB12_4
# %bb.1:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	beqz	$s0, .LBB12_4
# %bb.2:
	addi.d	$s1, $sp, 24
	addi.d	$s2, $sp, 8
	.p2align	4, , 16
.LBB12_3:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $sp, 8
	addi.d	$a0, $sp, 24
	addi.d	$a1, $sp, 8
	pcaddu18i	$ra, %call36(_Z22do_multiply_accumulateILj2EdEvPT0_S1_S0_)
	jirl	$ra, $ra, 0
	#APP
	#NO_APP
	#APP
	#NO_APP
	addi.d	$s0, $s0, -1
	#MEMBARRIER
	bnez	$s0, .LBB12_3
.LBB12_4:                               # %._crit_edge
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end12:
	.size	_Z49benchmark_multiply_accumulate_runtime_checks_passILj2EdEvRN9benchmark5StateE, .Lfunc_end12-_Z49benchmark_multiply_accumulate_runtime_checks_passILj2EdEvRN9benchmark5StateE
	.cfi_endproc
                                        # -- End function
	.section	.text._Z49benchmark_multiply_accumulate_runtime_checks_failILj2EdEvRN9benchmark5StateE,"axG",@progbits,_Z49benchmark_multiply_accumulate_runtime_checks_failILj2EdEvRN9benchmark5StateE,comdat
	.weak	_Z49benchmark_multiply_accumulate_runtime_checks_failILj2EdEvRN9benchmark5StateE # -- Begin function _Z49benchmark_multiply_accumulate_runtime_checks_failILj2EdEvRN9benchmark5StateE
	.p2align	5
	.type	_Z49benchmark_multiply_accumulate_runtime_checks_failILj2EdEvRN9benchmark5StateE,@function
_Z49benchmark_multiply_accumulate_runtime_checks_failILj2EdEvRN9benchmark5StateE: # @_Z49benchmark_multiply_accumulate_runtime_checks_failILj2EdEvRN9benchmark5StateE
	.cfi_startproc
# %bb.0:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
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
	move	$fp, $a0
	addi.d	$a0, $sp, 8
	ori	$a1, $zero, 2
	pcaddu18i	$ra, %call36(_ZL9init_dataIdEvPT_j)
	jirl	$ra, $ra, 0
	ld.w	$s0, $fp, 28
	ld.d	$s1, $fp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	bnez	$s0, .LBB13_4
# %bb.1:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	beqz	$s1, .LBB13_4
# %bb.2:                                # %.lr.ph
	addi.d	$s0, $sp, 16
	addi.d	$s2, $sp, 8
	.p2align	4, , 16
.LBB13_3:                               # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $sp, 8
	addi.d	$a0, $sp, 8
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_Z22do_multiply_accumulateILj2EdEvPT0_S1_S0_)
	jirl	$ra, $ra, 0
	#APP
	#NO_APP
	addi.d	$s1, $s1, -1
	#MEMBARRIER
	bnez	$s1, .LBB13_3
.LBB13_4:                               # %._crit_edge
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end13:
	.size	_Z49benchmark_multiply_accumulate_runtime_checks_failILj2EdEvRN9benchmark5StateE, .Lfunc_end13-_Z49benchmark_multiply_accumulate_runtime_checks_failILj2EdEvRN9benchmark5StateE
	.cfi_endproc
                                        # -- End function
	.section	.text._Z54benchmark_multiply_accumulate_no_runtime_checks_neededILj2EdEvRN9benchmark5StateE,"axG",@progbits,_Z54benchmark_multiply_accumulate_no_runtime_checks_neededILj2EdEvRN9benchmark5StateE,comdat
	.weak	_Z54benchmark_multiply_accumulate_no_runtime_checks_neededILj2EdEvRN9benchmark5StateE # -- Begin function _Z54benchmark_multiply_accumulate_no_runtime_checks_neededILj2EdEvRN9benchmark5StateE
	.p2align	5
	.type	_Z54benchmark_multiply_accumulate_no_runtime_checks_neededILj2EdEvRN9benchmark5StateE,@function
_Z54benchmark_multiply_accumulate_no_runtime_checks_neededILj2EdEvRN9benchmark5StateE: # @_Z54benchmark_multiply_accumulate_no_runtime_checks_neededILj2EdEvRN9benchmark5StateE
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
	move	$fp, $a0
	addi.d	$a0, $sp, 32
	ori	$a1, $zero, 2
	pcaddu18i	$ra, %call36(_ZL9init_dataIdEvPT_j)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 16
	ori	$a1, $zero, 2
	pcaddu18i	$ra, %call36(_ZL9init_dataIdEvPT_j)
	jirl	$ra, $ra, 0
	ld.w	$s1, $fp, 28
	ld.d	$s0, $fp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	bnez	$s1, .LBB14_4
# %bb.1:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	beqz	$s0, .LBB14_4
# %bb.2:
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 16
	.p2align	4, , 16
.LBB14_3:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $sp, 32
	fld.d	$fa1, $sp, 16
	fld.d	$fa2, $sp, 24
	fld.d	$fa3, $sp, 40
	fmadd.d	$fa1, $fa0, $fa1, $fa0
	fst.d	$fa1, $sp, 32
	fmadd.d	$fa0, $fa0, $fa2, $fa3
	fst.d	$fa0, $sp, 40
	#APP
	#NO_APP
	#APP
	#NO_APP
	addi.d	$s0, $s0, -1
	#MEMBARRIER
	bnez	$s0, .LBB14_3
.LBB14_4:                               # %._crit_edge
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end14:
	.size	_Z54benchmark_multiply_accumulate_no_runtime_checks_neededILj2EdEvRN9benchmark5StateE, .Lfunc_end14-_Z54benchmark_multiply_accumulate_no_runtime_checks_neededILj2EdEvRN9benchmark5StateE
	.cfi_endproc
                                        # -- End function
	.section	.text._Z49benchmark_multiply_accumulate_runtime_checks_passILj3EdEvRN9benchmark5StateE,"axG",@progbits,_Z49benchmark_multiply_accumulate_runtime_checks_passILj3EdEvRN9benchmark5StateE,comdat
	.weak	_Z49benchmark_multiply_accumulate_runtime_checks_passILj3EdEvRN9benchmark5StateE # -- Begin function _Z49benchmark_multiply_accumulate_runtime_checks_passILj3EdEvRN9benchmark5StateE
	.p2align	5
	.type	_Z49benchmark_multiply_accumulate_runtime_checks_passILj3EdEvRN9benchmark5StateE,@function
_Z49benchmark_multiply_accumulate_runtime_checks_passILj3EdEvRN9benchmark5StateE: # @_Z49benchmark_multiply_accumulate_runtime_checks_passILj3EdEvRN9benchmark5StateE
	.cfi_startproc
# %bb.0:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
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
	addi.d	$a0, $sp, 32
	ori	$a1, $zero, 3
	pcaddu18i	$ra, %call36(_ZL9init_dataIdEvPT_j)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 8
	ori	$a1, $zero, 3
	pcaddu18i	$ra, %call36(_ZL9init_dataIdEvPT_j)
	jirl	$ra, $ra, 0
	ld.w	$s1, $fp, 28
	ld.d	$s0, $fp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	bnez	$s1, .LBB15_4
# %bb.1:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	beqz	$s0, .LBB15_4
# %bb.2:
	addi.d	$s1, $sp, 32
	addi.d	$s2, $sp, 8
	.p2align	4, , 16
.LBB15_3:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $sp, 8
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 8
	pcaddu18i	$ra, %call36(_Z22do_multiply_accumulateILj3EdEvPT0_S1_S0_)
	jirl	$ra, $ra, 0
	#APP
	#NO_APP
	#APP
	#NO_APP
	addi.d	$s0, $s0, -1
	#MEMBARRIER
	bnez	$s0, .LBB15_3
.LBB15_4:                               # %._crit_edge
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end15:
	.size	_Z49benchmark_multiply_accumulate_runtime_checks_passILj3EdEvRN9benchmark5StateE, .Lfunc_end15-_Z49benchmark_multiply_accumulate_runtime_checks_passILj3EdEvRN9benchmark5StateE
	.cfi_endproc
                                        # -- End function
	.section	.text._Z49benchmark_multiply_accumulate_runtime_checks_failILj3EdEvRN9benchmark5StateE,"axG",@progbits,_Z49benchmark_multiply_accumulate_runtime_checks_failILj3EdEvRN9benchmark5StateE,comdat
	.weak	_Z49benchmark_multiply_accumulate_runtime_checks_failILj3EdEvRN9benchmark5StateE # -- Begin function _Z49benchmark_multiply_accumulate_runtime_checks_failILj3EdEvRN9benchmark5StateE
	.p2align	5
	.type	_Z49benchmark_multiply_accumulate_runtime_checks_failILj3EdEvRN9benchmark5StateE,@function
_Z49benchmark_multiply_accumulate_runtime_checks_failILj3EdEvRN9benchmark5StateE: # @_Z49benchmark_multiply_accumulate_runtime_checks_failILj3EdEvRN9benchmark5StateE
	.cfi_startproc
# %bb.0:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
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
	addi.d	$a0, $sp, 16
	ori	$a1, $zero, 3
	pcaddu18i	$ra, %call36(_ZL9init_dataIdEvPT_j)
	jirl	$ra, $ra, 0
	ld.w	$s0, $fp, 28
	ld.d	$s1, $fp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	bnez	$s0, .LBB16_4
# %bb.1:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	beqz	$s1, .LBB16_4
# %bb.2:                                # %.lr.ph
	addi.d	$s0, $sp, 24
	addi.d	$s2, $sp, 16
	.p2align	4, , 16
.LBB16_3:                               # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $sp, 16
	addi.d	$a0, $sp, 16
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_Z22do_multiply_accumulateILj3EdEvPT0_S1_S0_)
	jirl	$ra, $ra, 0
	#APP
	#NO_APP
	addi.d	$s1, $s1, -1
	#MEMBARRIER
	bnez	$s1, .LBB16_3
.LBB16_4:                               # %._crit_edge
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end16:
	.size	_Z49benchmark_multiply_accumulate_runtime_checks_failILj3EdEvRN9benchmark5StateE, .Lfunc_end16-_Z49benchmark_multiply_accumulate_runtime_checks_failILj3EdEvRN9benchmark5StateE
	.cfi_endproc
                                        # -- End function
	.section	.text._Z54benchmark_multiply_accumulate_no_runtime_checks_neededILj3EdEvRN9benchmark5StateE,"axG",@progbits,_Z54benchmark_multiply_accumulate_no_runtime_checks_neededILj3EdEvRN9benchmark5StateE,comdat
	.weak	_Z54benchmark_multiply_accumulate_no_runtime_checks_neededILj3EdEvRN9benchmark5StateE # -- Begin function _Z54benchmark_multiply_accumulate_no_runtime_checks_neededILj3EdEvRN9benchmark5StateE
	.p2align	5
	.type	_Z54benchmark_multiply_accumulate_no_runtime_checks_neededILj3EdEvRN9benchmark5StateE,@function
_Z54benchmark_multiply_accumulate_no_runtime_checks_neededILj3EdEvRN9benchmark5StateE: # @_Z54benchmark_multiply_accumulate_no_runtime_checks_neededILj3EdEvRN9benchmark5StateE
	.cfi_startproc
# %bb.0:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	addi.d	$sp, $sp, -96
	.cfi_def_cfa_offset 96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	move	$fp, $a0
	addi.d	$a0, $sp, 40
	ori	$a1, $zero, 3
	pcaddu18i	$ra, %call36(_ZL9init_dataIdEvPT_j)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 16
	ori	$a1, $zero, 3
	pcaddu18i	$ra, %call36(_ZL9init_dataIdEvPT_j)
	jirl	$ra, $ra, 0
	ld.w	$s1, $fp, 28
	ld.d	$s0, $fp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	bnez	$s1, .LBB17_4
# %bb.1:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	beqz	$s0, .LBB17_4
# %bb.2:
	addi.d	$a0, $sp, 40
	addi.d	$a1, $sp, 16
	.p2align	4, , 16
.LBB17_3:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $sp, 40
	fld.d	$fa1, $sp, 16
	fmadd.d	$fa1, $fa0, $fa1, $fa0
	fld.d	$fa2, $sp, 24
	fld.d	$fa3, $sp, 48
	fld.d	$fa4, $sp, 32
	fld.d	$fa5, $sp, 56
	fst.d	$fa1, $sp, 40
	fmadd.d	$fa1, $fa0, $fa2, $fa3
	fst.d	$fa1, $sp, 48
	fmadd.d	$fa0, $fa0, $fa4, $fa5
	fst.d	$fa0, $sp, 56
	#APP
	#NO_APP
	#APP
	#NO_APP
	addi.d	$s0, $s0, -1
	#MEMBARRIER
	bnez	$s0, .LBB17_3
.LBB17_4:                               # %._crit_edge
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end17:
	.size	_Z54benchmark_multiply_accumulate_no_runtime_checks_neededILj3EdEvRN9benchmark5StateE, .Lfunc_end17-_Z54benchmark_multiply_accumulate_no_runtime_checks_neededILj3EdEvRN9benchmark5StateE
	.cfi_endproc
                                        # -- End function
	.section	.text._Z49benchmark_multiply_accumulate_runtime_checks_passILj4EdEvRN9benchmark5StateE,"axG",@progbits,_Z49benchmark_multiply_accumulate_runtime_checks_passILj4EdEvRN9benchmark5StateE,comdat
	.weak	_Z49benchmark_multiply_accumulate_runtime_checks_passILj4EdEvRN9benchmark5StateE # -- Begin function _Z49benchmark_multiply_accumulate_runtime_checks_passILj4EdEvRN9benchmark5StateE
	.p2align	5
	.type	_Z49benchmark_multiply_accumulate_runtime_checks_passILj4EdEvRN9benchmark5StateE,@function
_Z49benchmark_multiply_accumulate_runtime_checks_passILj4EdEvRN9benchmark5StateE: # @_Z49benchmark_multiply_accumulate_runtime_checks_passILj4EdEvRN9benchmark5StateE
	.cfi_startproc
# %bb.0:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	addi.d	$sp, $sp, -112
	.cfi_def_cfa_offset 112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	move	$fp, $a0
	addi.d	$a0, $sp, 40
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(_ZL9init_dataIdEvPT_j)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 8
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(_ZL9init_dataIdEvPT_j)
	jirl	$ra, $ra, 0
	ld.w	$s1, $fp, 28
	ld.d	$s0, $fp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	bnez	$s1, .LBB18_4
# %bb.1:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	beqz	$s0, .LBB18_4
# %bb.2:
	addi.d	$s1, $sp, 40
	addi.d	$s2, $sp, 8
	.p2align	4, , 16
.LBB18_3:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $sp, 8
	addi.d	$a0, $sp, 40
	addi.d	$a1, $sp, 8
	pcaddu18i	$ra, %call36(_Z22do_multiply_accumulateILj4EdEvPT0_S1_S0_)
	jirl	$ra, $ra, 0
	#APP
	#NO_APP
	#APP
	#NO_APP
	addi.d	$s0, $s0, -1
	#MEMBARRIER
	bnez	$s0, .LBB18_3
.LBB18_4:                               # %._crit_edge
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.Lfunc_end18:
	.size	_Z49benchmark_multiply_accumulate_runtime_checks_passILj4EdEvRN9benchmark5StateE, .Lfunc_end18-_Z49benchmark_multiply_accumulate_runtime_checks_passILj4EdEvRN9benchmark5StateE
	.cfi_endproc
                                        # -- End function
	.section	.text._Z49benchmark_multiply_accumulate_runtime_checks_failILj4EdEvRN9benchmark5StateE,"axG",@progbits,_Z49benchmark_multiply_accumulate_runtime_checks_failILj4EdEvRN9benchmark5StateE,comdat
	.weak	_Z49benchmark_multiply_accumulate_runtime_checks_failILj4EdEvRN9benchmark5StateE # -- Begin function _Z49benchmark_multiply_accumulate_runtime_checks_failILj4EdEvRN9benchmark5StateE
	.p2align	5
	.type	_Z49benchmark_multiply_accumulate_runtime_checks_failILj4EdEvRN9benchmark5StateE,@function
_Z49benchmark_multiply_accumulate_runtime_checks_failILj4EdEvRN9benchmark5StateE: # @_Z49benchmark_multiply_accumulate_runtime_checks_failILj4EdEvRN9benchmark5StateE
	.cfi_startproc
# %bb.0:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
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
	addi.d	$a0, $sp, 8
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(_ZL9init_dataIdEvPT_j)
	jirl	$ra, $ra, 0
	ld.w	$s0, $fp, 28
	ld.d	$s1, $fp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	bnez	$s0, .LBB19_4
# %bb.1:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	beqz	$s1, .LBB19_4
# %bb.2:                                # %.lr.ph
	addi.d	$s0, $sp, 16
	addi.d	$s2, $sp, 8
	.p2align	4, , 16
.LBB19_3:                               # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $sp, 8
	addi.d	$a0, $sp, 8
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_Z22do_multiply_accumulateILj4EdEvPT0_S1_S0_)
	jirl	$ra, $ra, 0
	#APP
	#NO_APP
	addi.d	$s1, $s1, -1
	#MEMBARRIER
	bnez	$s1, .LBB19_3
.LBB19_4:                               # %._crit_edge
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end19:
	.size	_Z49benchmark_multiply_accumulate_runtime_checks_failILj4EdEvRN9benchmark5StateE, .Lfunc_end19-_Z49benchmark_multiply_accumulate_runtime_checks_failILj4EdEvRN9benchmark5StateE
	.cfi_endproc
                                        # -- End function
	.section	.text._Z54benchmark_multiply_accumulate_no_runtime_checks_neededILj4EdEvRN9benchmark5StateE,"axG",@progbits,_Z54benchmark_multiply_accumulate_no_runtime_checks_neededILj4EdEvRN9benchmark5StateE,comdat
	.weak	_Z54benchmark_multiply_accumulate_no_runtime_checks_neededILj4EdEvRN9benchmark5StateE # -- Begin function _Z54benchmark_multiply_accumulate_no_runtime_checks_neededILj4EdEvRN9benchmark5StateE
	.p2align	5
	.type	_Z54benchmark_multiply_accumulate_no_runtime_checks_neededILj4EdEvRN9benchmark5StateE,@function
_Z54benchmark_multiply_accumulate_no_runtime_checks_neededILj4EdEvRN9benchmark5StateE: # @_Z54benchmark_multiply_accumulate_no_runtime_checks_neededILj4EdEvRN9benchmark5StateE
	.cfi_startproc
# %bb.0:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
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
	move	$fp, $a0
	addi.d	$a0, $sp, 48
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(_ZL9init_dataIdEvPT_j)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 16
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(_ZL9init_dataIdEvPT_j)
	jirl	$ra, $ra, 0
	ld.w	$s1, $fp, 28
	ld.d	$s0, $fp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	bnez	$s1, .LBB20_4
# %bb.1:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	beqz	$s0, .LBB20_4
# %bb.2:
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 16
	.p2align	4, , 16
.LBB20_3:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $sp, 48
	fld.d	$fa1, $sp, 16
	fld.d	$fa2, $sp, 24
	fld.d	$fa3, $sp, 56
	fmadd.d	$fa1, $fa0, $fa1, $fa0
	fst.d	$fa1, $sp, 48
	fmadd.d	$fa1, $fa0, $fa2, $fa3
	fld.d	$fa2, $sp, 32
	fld.d	$fa3, $sp, 64
	fld.d	$fa4, $sp, 40
	fld.d	$fa5, $sp, 72
	fst.d	$fa1, $sp, 56
	fmadd.d	$fa1, $fa0, $fa2, $fa3
	fst.d	$fa1, $sp, 64
	fmadd.d	$fa0, $fa0, $fa4, $fa5
	fst.d	$fa0, $sp, 72
	#APP
	#NO_APP
	#APP
	#NO_APP
	addi.d	$s0, $s0, -1
	#MEMBARRIER
	bnez	$s0, .LBB20_3
.LBB20_4:                               # %._crit_edge
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.Lfunc_end20:
	.size	_Z54benchmark_multiply_accumulate_no_runtime_checks_neededILj4EdEvRN9benchmark5StateE, .Lfunc_end20-_Z54benchmark_multiply_accumulate_no_runtime_checks_neededILj4EdEvRN9benchmark5StateE
	.cfi_endproc
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZL9init_dataIiEvPT_j
	.type	_ZL9init_dataIiEvPT_j,@function
_ZL9init_dataIiEvPT_j:                  # @_ZL9init_dataIiEvPT_j
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
	addi.d	$sp, $sp, -2048
	addi.d	$sp, $sp, -1168
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a2, $a0, 57
	st.d	$a2, $sp, 136
	ori	$a0, $zero, 1
	ori	$a1, $zero, 8
	lu12i.w	$a3, 442488
	ori	$a3, $a3, 2405
	addi.d	$a4, $sp, 136
	ori	$a5, $zero, 624
	.p2align	4, , 16
.LBB21_1:                               # =>This Inner Loop Header: Depth=1
	srli.d	$a6, $a2, 30
	xor	$a2, $a6, $a2
	mul.d	$a2, $a2, $a3
	add.d	$a2, $a0, $a2
	bstrpick.d	$a2, $a2, 31, 0
	stx.d	$a2, $a1, $a4
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 8
	bne	$a0, $a5, .LBB21_1
# %bb.2:                                # %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit
	ori	$a0, $zero, 624
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1032
	add.d	$a1, $sp, $a1
	stptr.d	$a0, $a1, 0
	ori	$a0, $zero, 0
	lu32i.d	$a0, -65536
	lu52i.d	$a1, $a0, 1025
	move	$a0, $zero
	pcaddu18i	$ra, %call36(logl)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$s2, $a1
	lu52i.d	$a1, $zero, 1024
	move	$a0, $zero
	pcaddu18i	$ra, %call36(logl)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	move	$a3, $a1
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(__divtf3)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(__fixunstfdi)
	jirl	$ra, $ra, 0
	ori	$a7, $zero, 624
	move	$t0, $zero
	addi.d	$a1, $a0, 52
	div.du	$a0, $a1, $a0
	ori	$a1, $zero, 1
	sltu	$a2, $a1, $a0
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$t1, $a0, $a1
	movgr2fr.d	$fs0, $zero
	addi.d	$s4, $sp, 136
	lu12i.w	$a0, -524288
	vreplgr2vr.d	$vr6, $a0
	lu12i.w	$a0, 524287
	ori	$a0, $a0, 4094
	vreplgr2vr.d	$vr7, $a0
	ori	$s5, $zero, 3176
	vrepli.d	$vr8, 1
	vrepli.b	$vr9, -1
	lu12i.w	$a0, -421749
	ori	$s6, $a0, 223
	lu32i.d	$s6, 0
	vreplgr2vr.d	$vr10, $s6
	ori	$s7, $zero, 1808
	lu12i.w	$a0, -1
	ori	$t2, $a0, 928
	lu12i.w	$a0, 1
	ori	$fp, $a0, 896
	ori	$s0, $zero, 3168
	ori	$s2, $a0, 888
	lu12i.w	$a0, -404795
	ori	$s1, $a0, 1664
	lu32i.d	$s1, 0
	lu12i.w	$s3, -66464
	lu32i.d	$s3, 0
	lu52i.d	$t3, $zero, 1107
	lu12i.w	$a0, 256
	lu52i.d	$a0, $a0, 1107
	movgr2fr.d	$fs1, $a0
	lu12i.w	$t4, 275200
	lu52i.d	$a0, $zero, 1055
	movgr2fr.d	$fs2, $a0
	vldi	$vr11, -912
	ori	$s8, $zero, 624
	ld.d	$a5, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 120                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB21_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_5 Depth 2
                                        #       Child Loop BB21_7 Depth 3
                                        #       Child Loop BB21_9 Depth 3
	vldi	$vr0, -912
	move	$a0, $t1
	fmov.d	$fa1, $fs0
	b	.LBB21_5
	.p2align	4, , 16
.LBB21_4:                               # %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit
                                        #   in Loop: Header=BB21_5 Depth=2
	slli.d	$a1, $s8, 3
	addi.d	$s8, $s8, 1
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1032
	add.d	$a2, $sp, $a2
	stptr.d	$s8, $a2, 0
	ldx.d	$a1, $a1, $s4
	bstrpick.d	$a2, $a1, 42, 11
	xor	$a1, $a2, $a1
	slli.d	$a2, $a1, 7
	and	$a2, $a2, $s1
	xor	$a1, $a2, $a1
	slli.d	$a2, $a1, 15
	and	$a2, $a2, $s3
	xor	$a1, $a2, $a1
	srli.d	$a2, $a1, 18
	xor	$a1, $a2, $a1
	srli.d	$a2, $a1, 32
	or	$a2, $a2, $t3
	movgr2fr.d	$fa2, $a2
	fsub.d	$fa2, $fa2, $fs1
	bstrins.d	$a1, $t4, 63, 32
	movgr2fr.d	$fa3, $a1
	fadd.d	$fa2, $fa3, $fa2
	fmadd.d	$fa1, $fa2, $fa0, $fa1
	addi.d	$a0, $a0, -1
	fmul.d	$fa0, $fa0, $fs2
	beqz	$a0, .LBB21_11
.LBB21_5:                               # %select.unfold.i.i.i.i
                                        #   Parent Loop BB21_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB21_7 Depth 3
                                        #       Child Loop BB21_9 Depth 3
	bltu	$s8, $a7, .LBB21_4
# %bb.6:                                # %vector.ph16
                                        #   in Loop: Header=BB21_5 Depth=2
	ld.d	$a2, $sp, 136
	move	$a1, $zero
	vinsgr2vr.d	$vr2, $a2, 1
	.p2align	4, , 16
.LBB21_7:                               # %vector.body17
                                        #   Parent Loop BB21_3 Depth=1
                                        #     Parent Loop BB21_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vori.b	$vr3, $vr2, 0
	add.d	$a2, $s4, $a1
	vld	$vr2, $a2, 8
	vshuf4i.d	$vr3, $vr2, 9
	vand.v	$vr3, $vr3, $vr6
	vldx	$vr4, $a2, $s5
	vand.v	$vr5, $vr2, $vr7
	vor.v	$vr3, $vr5, $vr3
	vsrli.d	$vr3, $vr3, 1
	vxor.v	$vr3, $vr3, $vr4
	vand.v	$vr4, $vr2, $vr8
	vseqi.d	$vr4, $vr4, 0
	vxor.v	$vr4, $vr4, $vr9
	vand.v	$vr4, $vr4, $vr10
	vxor.v	$vr3, $vr3, $vr4
	vstx	$vr3, $a1, $s4
	addi.d	$a1, $a1, 16
	bne	$a1, $s7, .LBB21_7
# %bb.8:                                # %vector.ph
                                        #   in Loop: Header=BB21_5 Depth=2
	ld.d	$a1, $sp, 1952
	vpickve2gr.d	$a2, $vr2, 1
	bstrpick.d	$a3, $a1, 30, 1
	lu12i.w	$a4, 1
	ori	$a4, $a4, 1024
	add.d	$a4, $sp, $a4
	ldptr.d	$a4, $a4, 0
	slli.d	$a3, $a3, 1
	bstrins.d	$a2, $a3, 30, 0
	srli.d	$a2, $a2, 1
	xor	$a2, $a2, $a4
	andi	$a3, $a1, 1
	sub.d	$a3, $zero, $a3
	and	$a3, $a3, $s6
	xor	$a2, $a2, $a3
	st.d	$a2, $sp, 1944
	vinsgr2vr.d	$vr2, $a1, 1
	move	$a1, $t2
	.p2align	4, , 16
.LBB21_9:                               # %vector.body
                                        #   Parent Loop BB21_3 Depth=1
                                        #     Parent Loop BB21_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a2, $s4, $a1
	vldx	$vr3, $a2, $fp
	vshuf4i.d	$vr2, $vr3, 9
	vand.v	$vr2, $vr2, $vr6
	vldx	$vr4, $a2, $s0
	vand.v	$vr5, $vr3, $vr7
	vor.v	$vr2, $vr5, $vr2
	vsrli.d	$vr2, $vr2, 1
	vxor.v	$vr2, $vr2, $vr4
	vand.v	$vr4, $vr3, $vr8
	vseqi.d	$vr4, $vr4, 0
	vxor.v	$vr4, $vr4, $vr9
	vand.v	$vr4, $vr4, $vr10
	vxor.v	$vr2, $vr2, $vr4
	addi.d	$a1, $a1, 16
	vstx	$vr2, $a2, $s2
	vori.b	$vr2, $vr3, 0
	bnez	$a1, .LBB21_9
# %bb.10:                               # %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i
                                        #   in Loop: Header=BB21_5 Depth=2
	ld.d	$a1, $sp, 136
	move	$s8, $zero
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1024
	add.d	$a2, $sp, $a2
	ldptr.d	$a2, $a2, 0
	bstrpick.d	$a3, $a1, 30, 1
	ori	$a4, $zero, 3304
	add.d	$a4, $sp, $a4
	ldptr.d	$a4, $a4, 0
	slli.d	$a3, $a3, 1
	bstrins.d	$a2, $a3, 30, 0
	srli.d	$a2, $a2, 1
	xor	$a2, $a2, $a4
	andi	$a1, $a1, 1
	sub.d	$a1, $zero, $a1
	and	$a1, $a1, $s6
	xor	$a1, $a2, $a1
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1024
	add.d	$a2, $sp, $a2
	stptr.d	$a1, $a2, 0
	b	.LBB21_4
	.p2align	4, , 16
.LBB21_11:                              #   in Loop: Header=BB21_3 Depth=1
	fdiv.d	$fa0, $fa1, $fa0
	fcmp.cult.d	$fcc0, $fa0, $ft3
	bceqz	$fcc0, .LBB21_13
.LBB21_12:                              # %_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEdRT_.exit
                                        #   in Loop: Header=BB21_3 Depth=1
	ori	$a0, $zero, 0
	lu32i.d	$a0, -458752
	lu52i.d	$a1, $a0, -1019
	movgr2fr.d	$fa1, $a1
	lu52i.d	$a0, $a0, 1030
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa0, $fa2, $fa1
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	slli.d	$a1, $t0, 2
	addi.d	$t0, $t0, 1
	stx.w	$a0, $a6, $a1
	bne	$t0, $a5, .LBB21_3
	b	.LBB21_14
.LBB21_13:                              #   in Loop: Header=BB21_3 Depth=1
	vldi	$vr0, -912
	fmov.d	$fa1, $fs0
	st.d	$t0, $sp, 112                   # 8-byte Folded Spill
	st.d	$t1, $sp, 104                   # 8-byte Folded Spill
	vst	$vr6, $sp, 80                   # 16-byte Folded Spill
	vst	$vr7, $sp, 64                   # 16-byte Folded Spill
	vst	$vr8, $sp, 48                   # 16-byte Folded Spill
	vst	$vr9, $sp, 32                   # 16-byte Folded Spill
	vst	$vr10, $sp, 16                  # 16-byte Folded Spill
	st.d	$t2, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(nextafter)
	jirl	$ra, $ra, 0
	vldi	$vr11, -912
	lu12i.w	$t4, 275200
	lu52i.d	$t3, $zero, 1107
	ld.d	$t2, $sp, 8                     # 8-byte Folded Reload
	vld	$vr10, $sp, 16                  # 16-byte Folded Reload
	vld	$vr9, $sp, 32                   # 16-byte Folded Reload
	vld	$vr8, $sp, 48                   # 16-byte Folded Reload
	vld	$vr7, $sp, 64                   # 16-byte Folded Reload
	vld	$vr6, $sp, 80                   # 16-byte Folded Reload
	ld.d	$t1, $sp, 104                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 112                   # 8-byte Folded Reload
	ori	$a7, $zero, 624
	ld.d	$a6, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 128                   # 8-byte Folded Reload
	b	.LBB21_12
.LBB21_14:
	addi.d	$sp, $sp, 2032
	addi.d	$sp, $sp, 1184
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
.Lfunc_end21:
	.size	_ZL9init_dataIiEvPT_j, .Lfunc_end21-_ZL9init_dataIiEvPT_j
                                        # -- End function
	.section	.text._Z6do_xorILj4EiEvPT0_S1_,"axG",@progbits,_Z6do_xorILj4EiEvPT0_S1_,comdat
	.weak	_Z6do_xorILj4EiEvPT0_S1_        # -- Begin function _Z6do_xorILj4EiEvPT0_S1_
	.p2align	5
	.type	_Z6do_xorILj4EiEvPT0_S1_,@function
_Z6do_xorILj4EiEvPT0_S1_:               # @_Z6do_xorILj4EiEvPT0_S1_
# %bb.0:
	ld.w	$a2, $a1, 0
	ld.w	$a3, $a0, 0
	xor	$a2, $a3, $a2
	st.w	$a2, $a0, 0
	ld.w	$a2, $a1, 4
	ld.w	$a3, $a0, 4
	xor	$a2, $a3, $a2
	st.w	$a2, $a0, 4
	ld.w	$a2, $a1, 8
	ld.w	$a3, $a0, 8
	xor	$a2, $a3, $a2
	st.w	$a2, $a0, 8
	ld.w	$a1, $a1, 12
	ld.w	$a2, $a0, 12
	xor	$a1, $a2, $a1
	st.w	$a1, $a0, 12
	ret
.Lfunc_end22:
	.size	_Z6do_xorILj4EiEvPT0_S1_, .Lfunc_end22-_Z6do_xorILj4EiEvPT0_S1_
                                        # -- End function
	.section	.text._Z6do_xorILj16EiEvPT0_S1_,"axG",@progbits,_Z6do_xorILj16EiEvPT0_S1_,comdat
	.weak	_Z6do_xorILj16EiEvPT0_S1_       # -- Begin function _Z6do_xorILj16EiEvPT0_S1_
	.p2align	5
	.type	_Z6do_xorILj16EiEvPT0_S1_,@function
_Z6do_xorILj16EiEvPT0_S1_:              # @_Z6do_xorILj16EiEvPT0_S1_
# %bb.0:
	ld.w	$a2, $a1, 0
	ld.w	$a3, $a0, 0
	xor	$a2, $a3, $a2
	st.w	$a2, $a0, 0
	ld.w	$a2, $a1, 4
	ld.w	$a3, $a0, 4
	xor	$a2, $a3, $a2
	st.w	$a2, $a0, 4
	ld.w	$a2, $a1, 8
	ld.w	$a3, $a0, 8
	xor	$a2, $a3, $a2
	st.w	$a2, $a0, 8
	ld.w	$a2, $a1, 12
	ld.w	$a3, $a0, 12
	xor	$a2, $a3, $a2
	st.w	$a2, $a0, 12
	ld.w	$a2, $a1, 16
	ld.w	$a3, $a0, 16
	xor	$a2, $a3, $a2
	st.w	$a2, $a0, 16
	ld.w	$a2, $a1, 20
	ld.w	$a3, $a0, 20
	xor	$a2, $a3, $a2
	st.w	$a2, $a0, 20
	ld.w	$a2, $a1, 24
	ld.w	$a3, $a0, 24
	xor	$a2, $a3, $a2
	st.w	$a2, $a0, 24
	ld.w	$a2, $a1, 28
	ld.w	$a3, $a0, 28
	xor	$a2, $a3, $a2
	st.w	$a2, $a0, 28
	ld.w	$a2, $a1, 32
	ld.w	$a3, $a0, 32
	xor	$a2, $a3, $a2
	st.w	$a2, $a0, 32
	ld.w	$a2, $a1, 36
	ld.w	$a3, $a0, 36
	xor	$a2, $a3, $a2
	st.w	$a2, $a0, 36
	ld.w	$a2, $a1, 40
	ld.w	$a3, $a0, 40
	xor	$a2, $a3, $a2
	st.w	$a2, $a0, 40
	ld.w	$a2, $a1, 44
	ld.w	$a3, $a0, 44
	xor	$a2, $a3, $a2
	st.w	$a2, $a0, 44
	ld.w	$a2, $a1, 48
	ld.w	$a3, $a0, 48
	xor	$a2, $a3, $a2
	st.w	$a2, $a0, 48
	ld.w	$a2, $a1, 52
	ld.w	$a3, $a0, 52
	xor	$a2, $a3, $a2
	st.w	$a2, $a0, 52
	ld.w	$a2, $a1, 56
	ld.w	$a3, $a0, 56
	xor	$a2, $a3, $a2
	st.w	$a2, $a0, 56
	ld.w	$a1, $a1, 60
	ld.w	$a2, $a0, 60
	xor	$a1, $a2, $a1
	st.w	$a1, $a0, 60
	ret
.Lfunc_end23:
	.size	_Z6do_xorILj16EiEvPT0_S1_, .Lfunc_end23-_Z6do_xorILj16EiEvPT0_S1_
                                        # -- End function
	.section	.text._Z10do_add_xorILj4EiEvPT0_S1_S1_,"axG",@progbits,_Z10do_add_xorILj4EiEvPT0_S1_S1_,comdat
	.weak	_Z10do_add_xorILj4EiEvPT0_S1_S1_ # -- Begin function _Z10do_add_xorILj4EiEvPT0_S1_S1_
	.p2align	5
	.type	_Z10do_add_xorILj4EiEvPT0_S1_S1_,@function
_Z10do_add_xorILj4EiEvPT0_S1_S1_:       # @_Z10do_add_xorILj4EiEvPT0_S1_S1_
# %bb.0:
	ld.w	$a3, $a1, 0
	ld.w	$a4, $a2, 0
	ld.w	$a5, $a0, 0
	add.d	$a3, $a4, $a3
	xor	$a3, $a5, $a3
	st.w	$a3, $a0, 0
	ld.w	$a3, $a1, 4
	ld.w	$a4, $a2, 4
	ld.w	$a5, $a0, 4
	add.d	$a3, $a4, $a3
	xor	$a3, $a5, $a3
	st.w	$a3, $a0, 4
	ld.w	$a3, $a1, 8
	ld.w	$a4, $a2, 8
	ld.w	$a5, $a0, 8
	add.d	$a3, $a4, $a3
	xor	$a3, $a5, $a3
	st.w	$a3, $a0, 8
	ld.w	$a1, $a1, 12
	ld.w	$a2, $a2, 12
	ld.w	$a3, $a0, 12
	add.d	$a1, $a2, $a1
	xor	$a1, $a3, $a1
	st.w	$a1, $a0, 12
	ret
.Lfunc_end24:
	.size	_Z10do_add_xorILj4EiEvPT0_S1_S1_, .Lfunc_end24-_Z10do_add_xorILj4EiEvPT0_S1_S1_
                                        # -- End function
	.section	.text._Z10do_add_xorILj16EiEvPT0_S1_S1_,"axG",@progbits,_Z10do_add_xorILj16EiEvPT0_S1_S1_,comdat
	.weak	_Z10do_add_xorILj16EiEvPT0_S1_S1_ # -- Begin function _Z10do_add_xorILj16EiEvPT0_S1_S1_
	.p2align	5
	.type	_Z10do_add_xorILj16EiEvPT0_S1_S1_,@function
_Z10do_add_xorILj16EiEvPT0_S1_S1_:      # @_Z10do_add_xorILj16EiEvPT0_S1_S1_
# %bb.0:
	ld.w	$a3, $a1, 0
	ld.w	$a4, $a2, 0
	ld.w	$a5, $a0, 0
	add.d	$a3, $a4, $a3
	xor	$a3, $a5, $a3
	st.w	$a3, $a0, 0
	ld.w	$a3, $a1, 4
	ld.w	$a4, $a2, 4
	ld.w	$a5, $a0, 4
	add.d	$a3, $a4, $a3
	xor	$a3, $a5, $a3
	st.w	$a3, $a0, 4
	ld.w	$a3, $a1, 8
	ld.w	$a4, $a2, 8
	ld.w	$a5, $a0, 8
	add.d	$a3, $a4, $a3
	xor	$a3, $a5, $a3
	st.w	$a3, $a0, 8
	ld.w	$a3, $a1, 12
	ld.w	$a4, $a2, 12
	ld.w	$a5, $a0, 12
	add.d	$a3, $a4, $a3
	xor	$a3, $a5, $a3
	st.w	$a3, $a0, 12
	ld.w	$a3, $a1, 16
	ld.w	$a4, $a2, 16
	ld.w	$a5, $a0, 16
	add.d	$a3, $a4, $a3
	xor	$a3, $a5, $a3
	st.w	$a3, $a0, 16
	ld.w	$a3, $a1, 20
	ld.w	$a4, $a2, 20
	ld.w	$a5, $a0, 20
	add.d	$a3, $a4, $a3
	xor	$a3, $a5, $a3
	st.w	$a3, $a0, 20
	ld.w	$a3, $a1, 24
	ld.w	$a4, $a2, 24
	ld.w	$a5, $a0, 24
	add.d	$a3, $a4, $a3
	xor	$a3, $a5, $a3
	st.w	$a3, $a0, 24
	ld.w	$a3, $a1, 28
	ld.w	$a4, $a2, 28
	ld.w	$a5, $a0, 28
	add.d	$a3, $a4, $a3
	xor	$a3, $a5, $a3
	st.w	$a3, $a0, 28
	ld.w	$a3, $a1, 32
	ld.w	$a4, $a2, 32
	ld.w	$a5, $a0, 32
	add.d	$a3, $a4, $a3
	xor	$a3, $a5, $a3
	st.w	$a3, $a0, 32
	ld.w	$a3, $a1, 36
	ld.w	$a4, $a2, 36
	ld.w	$a5, $a0, 36
	add.d	$a3, $a4, $a3
	xor	$a3, $a5, $a3
	st.w	$a3, $a0, 36
	ld.w	$a3, $a1, 40
	ld.w	$a4, $a2, 40
	ld.w	$a5, $a0, 40
	add.d	$a3, $a4, $a3
	xor	$a3, $a5, $a3
	st.w	$a3, $a0, 40
	ld.w	$a3, $a1, 44
	ld.w	$a4, $a2, 44
	ld.w	$a5, $a0, 44
	add.d	$a3, $a4, $a3
	xor	$a3, $a5, $a3
	st.w	$a3, $a0, 44
	ld.w	$a3, $a1, 48
	ld.w	$a4, $a2, 48
	ld.w	$a5, $a0, 48
	add.d	$a3, $a4, $a3
	xor	$a3, $a5, $a3
	st.w	$a3, $a0, 48
	ld.w	$a3, $a1, 52
	ld.w	$a4, $a2, 52
	ld.w	$a5, $a0, 52
	add.d	$a3, $a4, $a3
	xor	$a3, $a5, $a3
	st.w	$a3, $a0, 52
	ld.w	$a3, $a1, 56
	ld.w	$a4, $a2, 56
	ld.w	$a5, $a0, 56
	add.d	$a3, $a4, $a3
	xor	$a3, $a5, $a3
	st.w	$a3, $a0, 56
	ld.w	$a1, $a1, 60
	ld.w	$a2, $a2, 60
	ld.w	$a3, $a0, 60
	add.d	$a1, $a2, $a1
	xor	$a1, $a3, $a1
	st.w	$a1, $a0, 60
	ret
.Lfunc_end25:
	.size	_Z10do_add_xorILj16EiEvPT0_S1_S1_, .Lfunc_end25-_Z10do_add_xorILj16EiEvPT0_S1_S1_
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZL9init_dataIdEvPT_j
	.type	_ZL9init_dataIdEvPT_j,@function
_ZL9init_dataIdEvPT_j:                  # @_ZL9init_dataIdEvPT_j
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
	addi.d	$sp, $sp, -2048
	addi.d	$sp, $sp, -1168
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a2, $a0, 57
	st.d	$a2, $sp, 136
	ori	$a0, $zero, 1
	ori	$a1, $zero, 8
	lu12i.w	$a3, 442488
	ori	$a3, $a3, 2405
	addi.d	$a4, $sp, 136
	ori	$a5, $zero, 624
	.p2align	4, , 16
.LBB26_1:                               # =>This Inner Loop Header: Depth=1
	srli.d	$a6, $a2, 30
	xor	$a2, $a6, $a2
	mul.d	$a2, $a2, $a3
	add.d	$a2, $a0, $a2
	bstrpick.d	$a2, $a2, 31, 0
	stx.d	$a2, $a1, $a4
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 8
	bne	$a0, $a5, .LBB26_1
# %bb.2:                                # %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit
	ori	$a0, $zero, 624
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1032
	add.d	$a1, $sp, $a1
	stptr.d	$a0, $a1, 0
	ori	$a0, $zero, 0
	lu32i.d	$a0, -65536
	lu52i.d	$a1, $a0, 1025
	move	$a0, $zero
	pcaddu18i	$ra, %call36(logl)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$s2, $a1
	lu52i.d	$a1, $zero, 1024
	move	$a0, $zero
	pcaddu18i	$ra, %call36(logl)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	move	$a3, $a1
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(__divtf3)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(__fixunstfdi)
	jirl	$ra, $ra, 0
	ori	$a7, $zero, 624
	move	$t0, $zero
	addi.d	$a1, $a0, 52
	div.du	$a0, $a1, $a0
	ori	$a1, $zero, 1
	sltu	$a2, $a1, $a0
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$t1, $a0, $a1
	movgr2fr.d	$fs0, $zero
	addi.d	$s4, $sp, 136
	lu12i.w	$a0, -524288
	vreplgr2vr.d	$vr6, $a0
	lu12i.w	$a0, 524287
	ori	$a0, $a0, 4094
	vreplgr2vr.d	$vr7, $a0
	ori	$s5, $zero, 3176
	vrepli.d	$vr8, 1
	vrepli.b	$vr9, -1
	lu12i.w	$a0, -421749
	ori	$s6, $a0, 223
	lu32i.d	$s6, 0
	vreplgr2vr.d	$vr10, $s6
	ori	$s7, $zero, 1808
	lu12i.w	$a0, -1
	ori	$t2, $a0, 928
	lu12i.w	$a0, 1
	ori	$fp, $a0, 896
	ori	$s0, $zero, 3168
	ori	$s2, $a0, 888
	lu12i.w	$a0, -404795
	ori	$s1, $a0, 1664
	lu32i.d	$s1, 0
	lu12i.w	$s3, -66464
	lu32i.d	$s3, 0
	lu52i.d	$t3, $zero, 1107
	lu12i.w	$a0, 256
	lu52i.d	$a0, $a0, 1107
	movgr2fr.d	$fs1, $a0
	lu12i.w	$t4, 275200
	lu52i.d	$a0, $zero, 1055
	movgr2fr.d	$fs2, $a0
	vldi	$vr11, -912
	ori	$s8, $zero, 624
	ld.d	$a5, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 120                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB26_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB26_5 Depth 2
                                        #       Child Loop BB26_7 Depth 3
                                        #       Child Loop BB26_9 Depth 3
	vldi	$vr0, -912
	move	$a0, $t1
	fmov.d	$fa1, $fs0
	b	.LBB26_5
	.p2align	4, , 16
.LBB26_4:                               # %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit
                                        #   in Loop: Header=BB26_5 Depth=2
	slli.d	$a1, $s8, 3
	addi.d	$s8, $s8, 1
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1032
	add.d	$a2, $sp, $a2
	stptr.d	$s8, $a2, 0
	ldx.d	$a1, $a1, $s4
	bstrpick.d	$a2, $a1, 42, 11
	xor	$a1, $a2, $a1
	slli.d	$a2, $a1, 7
	and	$a2, $a2, $s1
	xor	$a1, $a2, $a1
	slli.d	$a2, $a1, 15
	and	$a2, $a2, $s3
	xor	$a1, $a2, $a1
	srli.d	$a2, $a1, 18
	xor	$a1, $a2, $a1
	srli.d	$a2, $a1, 32
	or	$a2, $a2, $t3
	movgr2fr.d	$fa2, $a2
	fsub.d	$fa2, $fa2, $fs1
	bstrins.d	$a1, $t4, 63, 32
	movgr2fr.d	$fa3, $a1
	fadd.d	$fa2, $fa3, $fa2
	fmadd.d	$fa1, $fa2, $fa0, $fa1
	addi.d	$a0, $a0, -1
	fmul.d	$fa0, $fa0, $fs2
	beqz	$a0, .LBB26_11
.LBB26_5:                               # %select.unfold.i.i.i.i
                                        #   Parent Loop BB26_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB26_7 Depth 3
                                        #       Child Loop BB26_9 Depth 3
	bltu	$s8, $a7, .LBB26_4
# %bb.6:                                # %vector.ph16
                                        #   in Loop: Header=BB26_5 Depth=2
	ld.d	$a2, $sp, 136
	move	$a1, $zero
	vinsgr2vr.d	$vr2, $a2, 1
	.p2align	4, , 16
.LBB26_7:                               # %vector.body17
                                        #   Parent Loop BB26_3 Depth=1
                                        #     Parent Loop BB26_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vori.b	$vr3, $vr2, 0
	add.d	$a2, $s4, $a1
	vld	$vr2, $a2, 8
	vshuf4i.d	$vr3, $vr2, 9
	vand.v	$vr3, $vr3, $vr6
	vldx	$vr4, $a2, $s5
	vand.v	$vr5, $vr2, $vr7
	vor.v	$vr3, $vr5, $vr3
	vsrli.d	$vr3, $vr3, 1
	vxor.v	$vr3, $vr3, $vr4
	vand.v	$vr4, $vr2, $vr8
	vseqi.d	$vr4, $vr4, 0
	vxor.v	$vr4, $vr4, $vr9
	vand.v	$vr4, $vr4, $vr10
	vxor.v	$vr3, $vr3, $vr4
	vstx	$vr3, $a1, $s4
	addi.d	$a1, $a1, 16
	bne	$a1, $s7, .LBB26_7
# %bb.8:                                # %vector.ph
                                        #   in Loop: Header=BB26_5 Depth=2
	ld.d	$a1, $sp, 1952
	vpickve2gr.d	$a2, $vr2, 1
	bstrpick.d	$a3, $a1, 30, 1
	lu12i.w	$a4, 1
	ori	$a4, $a4, 1024
	add.d	$a4, $sp, $a4
	ldptr.d	$a4, $a4, 0
	slli.d	$a3, $a3, 1
	bstrins.d	$a2, $a3, 30, 0
	srli.d	$a2, $a2, 1
	xor	$a2, $a2, $a4
	andi	$a3, $a1, 1
	sub.d	$a3, $zero, $a3
	and	$a3, $a3, $s6
	xor	$a2, $a2, $a3
	st.d	$a2, $sp, 1944
	vinsgr2vr.d	$vr2, $a1, 1
	move	$a1, $t2
	.p2align	4, , 16
.LBB26_9:                               # %vector.body
                                        #   Parent Loop BB26_3 Depth=1
                                        #     Parent Loop BB26_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a2, $s4, $a1
	vldx	$vr3, $a2, $fp
	vshuf4i.d	$vr2, $vr3, 9
	vand.v	$vr2, $vr2, $vr6
	vldx	$vr4, $a2, $s0
	vand.v	$vr5, $vr3, $vr7
	vor.v	$vr2, $vr5, $vr2
	vsrli.d	$vr2, $vr2, 1
	vxor.v	$vr2, $vr2, $vr4
	vand.v	$vr4, $vr3, $vr8
	vseqi.d	$vr4, $vr4, 0
	vxor.v	$vr4, $vr4, $vr9
	vand.v	$vr4, $vr4, $vr10
	vxor.v	$vr2, $vr2, $vr4
	addi.d	$a1, $a1, 16
	vstx	$vr2, $a2, $s2
	vori.b	$vr2, $vr3, 0
	bnez	$a1, .LBB26_9
# %bb.10:                               # %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i
                                        #   in Loop: Header=BB26_5 Depth=2
	ld.d	$a1, $sp, 136
	move	$s8, $zero
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1024
	add.d	$a2, $sp, $a2
	ldptr.d	$a2, $a2, 0
	bstrpick.d	$a3, $a1, 30, 1
	ori	$a4, $zero, 3304
	add.d	$a4, $sp, $a4
	ldptr.d	$a4, $a4, 0
	slli.d	$a3, $a3, 1
	bstrins.d	$a2, $a3, 30, 0
	srli.d	$a2, $a2, 1
	xor	$a2, $a2, $a4
	andi	$a1, $a1, 1
	sub.d	$a1, $zero, $a1
	and	$a1, $a1, $s6
	xor	$a1, $a2, $a1
	lu12i.w	$a2, 1
	ori	$a2, $a2, 1024
	add.d	$a2, $sp, $a2
	stptr.d	$a1, $a2, 0
	b	.LBB26_4
	.p2align	4, , 16
.LBB26_11:                              #   in Loop: Header=BB26_3 Depth=1
	fdiv.d	$fa0, $fa1, $fa0
	fcmp.cult.d	$fcc0, $fa0, $ft3
	bceqz	$fcc0, .LBB26_13
.LBB26_12:                              # %_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEdRT_.exit
                                        #   in Loop: Header=BB26_3 Depth=1
	ori	$a0, $zero, 0
	lu32i.d	$a0, -458752
	lu52i.d	$a1, $a0, -1019
	movgr2fr.d	$fa1, $a1
	lu52i.d	$a0, $a0, 1030
	movgr2fr.d	$fa2, $a0
	fmadd.d	$fa0, $fa0, $fa2, $fa1
	slli.d	$a0, $t0, 3
	addi.d	$t0, $t0, 1
	fstx.d	$fa0, $a6, $a0
	bne	$t0, $a5, .LBB26_3
	b	.LBB26_14
.LBB26_13:                              #   in Loop: Header=BB26_3 Depth=1
	vldi	$vr0, -912
	fmov.d	$fa1, $fs0
	st.d	$t0, $sp, 112                   # 8-byte Folded Spill
	st.d	$t1, $sp, 104                   # 8-byte Folded Spill
	vst	$vr6, $sp, 80                   # 16-byte Folded Spill
	vst	$vr7, $sp, 64                   # 16-byte Folded Spill
	vst	$vr8, $sp, 48                   # 16-byte Folded Spill
	vst	$vr9, $sp, 32                   # 16-byte Folded Spill
	vst	$vr10, $sp, 16                  # 16-byte Folded Spill
	st.d	$t2, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(nextafter)
	jirl	$ra, $ra, 0
	vldi	$vr11, -912
	lu12i.w	$t4, 275200
	lu52i.d	$t3, $zero, 1107
	ld.d	$t2, $sp, 8                     # 8-byte Folded Reload
	vld	$vr10, $sp, 16                  # 16-byte Folded Reload
	vld	$vr9, $sp, 32                   # 16-byte Folded Reload
	vld	$vr8, $sp, 48                   # 16-byte Folded Reload
	vld	$vr7, $sp, 64                   # 16-byte Folded Reload
	vld	$vr6, $sp, 80                   # 16-byte Folded Reload
	ld.d	$t1, $sp, 104                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 112                   # 8-byte Folded Reload
	ori	$a7, $zero, 624
	ld.d	$a6, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 128                   # 8-byte Folded Reload
	b	.LBB26_12
.LBB26_14:
	addi.d	$sp, $sp, 2032
	addi.d	$sp, $sp, 1184
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
.Lfunc_end26:
	.size	_ZL9init_dataIdEvPT_j, .Lfunc_end26-_ZL9init_dataIdEvPT_j
                                        # -- End function
	.section	.text._Z22do_multiply_accumulateILj2EdEvPT0_S1_S0_,"axG",@progbits,_Z22do_multiply_accumulateILj2EdEvPT0_S1_S0_,comdat
	.weak	_Z22do_multiply_accumulateILj2EdEvPT0_S1_S0_ # -- Begin function _Z22do_multiply_accumulateILj2EdEvPT0_S1_S0_
	.p2align	5
	.type	_Z22do_multiply_accumulateILj2EdEvPT0_S1_S0_,@function
_Z22do_multiply_accumulateILj2EdEvPT0_S1_S0_: # @_Z22do_multiply_accumulateILj2EdEvPT0_S1_S0_
# %bb.0:
	fld.d	$fa1, $a1, 0
	fld.d	$fa2, $a0, 0
	fmadd.d	$fa1, $fa0, $fa1, $fa2
	fst.d	$fa1, $a0, 0
	fld.d	$fa1, $a1, 8
	fld.d	$fa2, $a0, 8
	fmadd.d	$fa0, $fa0, $fa1, $fa2
	fst.d	$fa0, $a0, 8
	ret
.Lfunc_end27:
	.size	_Z22do_multiply_accumulateILj2EdEvPT0_S1_S0_, .Lfunc_end27-_Z22do_multiply_accumulateILj2EdEvPT0_S1_S0_
                                        # -- End function
	.section	.text._Z22do_multiply_accumulateILj3EdEvPT0_S1_S0_,"axG",@progbits,_Z22do_multiply_accumulateILj3EdEvPT0_S1_S0_,comdat
	.weak	_Z22do_multiply_accumulateILj3EdEvPT0_S1_S0_ # -- Begin function _Z22do_multiply_accumulateILj3EdEvPT0_S1_S0_
	.p2align	5
	.type	_Z22do_multiply_accumulateILj3EdEvPT0_S1_S0_,@function
_Z22do_multiply_accumulateILj3EdEvPT0_S1_S0_: # @_Z22do_multiply_accumulateILj3EdEvPT0_S1_S0_
# %bb.0:
	fld.d	$fa1, $a1, 0
	fld.d	$fa2, $a0, 0
	fmadd.d	$fa1, $fa0, $fa1, $fa2
	fst.d	$fa1, $a0, 0
	fld.d	$fa1, $a1, 8
	fld.d	$fa2, $a0, 8
	fmadd.d	$fa1, $fa0, $fa1, $fa2
	fst.d	$fa1, $a0, 8
	fld.d	$fa1, $a1, 16
	fld.d	$fa2, $a0, 16
	fmadd.d	$fa0, $fa0, $fa1, $fa2
	fst.d	$fa0, $a0, 16
	ret
.Lfunc_end28:
	.size	_Z22do_multiply_accumulateILj3EdEvPT0_S1_S0_, .Lfunc_end28-_Z22do_multiply_accumulateILj3EdEvPT0_S1_S0_
                                        # -- End function
	.section	.text._Z22do_multiply_accumulateILj4EdEvPT0_S1_S0_,"axG",@progbits,_Z22do_multiply_accumulateILj4EdEvPT0_S1_S0_,comdat
	.weak	_Z22do_multiply_accumulateILj4EdEvPT0_S1_S0_ # -- Begin function _Z22do_multiply_accumulateILj4EdEvPT0_S1_S0_
	.p2align	5
	.type	_Z22do_multiply_accumulateILj4EdEvPT0_S1_S0_,@function
_Z22do_multiply_accumulateILj4EdEvPT0_S1_S0_: # @_Z22do_multiply_accumulateILj4EdEvPT0_S1_S0_
# %bb.0:
	fld.d	$fa1, $a1, 0
	fld.d	$fa2, $a0, 0
	fmadd.d	$fa1, $fa0, $fa1, $fa2
	fst.d	$fa1, $a0, 0
	fld.d	$fa1, $a1, 8
	fld.d	$fa2, $a0, 8
	fmadd.d	$fa1, $fa0, $fa1, $fa2
	fst.d	$fa1, $a0, 8
	fld.d	$fa1, $a1, 16
	fld.d	$fa2, $a0, 16
	fmadd.d	$fa1, $fa0, $fa1, $fa2
	fst.d	$fa1, $a0, 16
	fld.d	$fa1, $a1, 24
	fld.d	$fa2, $a0, 24
	fmadd.d	$fa0, $fa0, $fa1, $fa2
	fst.d	$fa0, $a0, 24
	ret
.Lfunc_end29:
	.size	_Z22do_multiply_accumulateILj4EdEvPT0_S1_S0_, .Lfunc_end29-_Z22do_multiply_accumulateILj4EdEvPT0_S1_S0_
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	5                               # -- Begin function _GLOBAL__sub_I_Versioning.cpp
	.type	_GLOBAL__sub_I_Versioning.cpp,@function
_GLOBAL__sub_I_Versioning.cpp:          # @_GLOBAL__sub_I_Versioning.cpp
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
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
	ori	$a0, $zero, 41
	st.d	$a0, $sp, 40
.Ltmp0:                                 # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.1:                                # %.noexc.i
	ld.d	$a1, $sp, 40
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	pcalau12i	$a2, %pc_hi20(.L.str)
	addi.d	$a2, $a2, %pc_lo12(.L.str)
	vld	$vr0, $a2, 16
	vst	$vr0, $a0, 16
	vld	$vr0, $a2, 0
	ld.d	$a3, $a2, 32
	ld.b	$a2, $a2, 40
	vst	$vr0, $a0, 0
	st.d	$a3, $a0, 32
	st.b	$a2, $a0, 40
	st.d	$a1, $sp, 16
	stx.b	$zero, $a0, $a1
	ori	$s3, $zero, 1
.Ltmp3:                                 # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp4:                                 # EH_LABEL
# %bb.2:
	pcalau12i	$a0, %got_pc_hi20(_ZTVN9benchmark8internal17FunctionBenchmarkE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTVN9benchmark8internal17FunctionBenchmarkE)
	addi.d	$s2, $a0, 16
	st.d	$s2, $fp, 0
	pcalau12i	$a0, %pc_hi20(_Z33benchmark_xor_runtime_checks_passILj4EiEvRN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_Z33benchmark_xor_runtime_checks_passILj4EiEvRN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp5:                                 # EH_LABEL
	move	$s3, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp6:                                 # EH_LABEL
# %bb.3:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB30_5
# %bb.4:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB30_5:                               # %__cxx_global_var_init.1.exit
	pcalau12i	$a0, %pc_hi20(_ZL49benchmark_uniq_2benchmark_xor_runtime_checks_pass)
	st.d	$s0, $a0, %pc_lo12(_ZL49benchmark_uniq_2benchmark_xor_runtime_checks_pass)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s1, $sp, 8
	ori	$a0, $zero, 41
	st.d	$a0, $sp, 40
.Ltmp8:                                 # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp9:                                 # EH_LABEL
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
	ld.b	$a2, $a2, 40
	vst	$vr0, $a0, 0
	st.d	$a3, $a0, 32
	st.b	$a2, $a0, 40
	st.d	$a1, $sp, 16
	stx.b	$zero, $a0, $a1
	ori	$s3, $zero, 1
.Ltmp11:                                # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp12:                                # EH_LABEL
# %bb.7:
	st.d	$s2, $fp, 0
	pcalau12i	$a0, %pc_hi20(_Z33benchmark_xor_runtime_checks_failILj4EiEvRN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_Z33benchmark_xor_runtime_checks_failILj4EiEvRN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp13:                                # EH_LABEL
	move	$s3, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp14:                                # EH_LABEL
# %bb.8:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB30_10
# %bb.9:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB30_10:                              # %__cxx_global_var_init.2.exit
	pcalau12i	$a0, %pc_hi20(_ZL49benchmark_uniq_3benchmark_xor_runtime_checks_fail)
	st.d	$s0, $a0, %pc_lo12(_ZL49benchmark_uniq_3benchmark_xor_runtime_checks_fail)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s1, $sp, 8
	ori	$a0, $zero, 46
	st.d	$a0, $sp, 40
.Ltmp16:                                # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp17:                                # EH_LABEL
# %bb.11:                               # %.noexc.i13
	ld.d	$a1, $sp, 40
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	pcalau12i	$a2, %pc_hi20(.L.str.5)
	addi.d	$a2, $a2, %pc_lo12(.L.str.5)
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
.Ltmp19:                                # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp20:                                # EH_LABEL
# %bb.12:
	st.d	$s2, $fp, 0
	pcalau12i	$a0, %pc_hi20(_Z38benchmark_xor_no_runtime_checks_neededILj4EiEvRN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_Z38benchmark_xor_no_runtime_checks_neededILj4EiEvRN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp21:                                # EH_LABEL
	move	$s3, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp22:                                # EH_LABEL
# %bb.13:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB30_15
# %bb.14:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i17
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB30_15:                              # %__cxx_global_var_init.4.exit
	pcalau12i	$a0, %pc_hi20(_ZL54benchmark_uniq_4benchmark_xor_no_runtime_checks_needed)
	st.d	$s0, $a0, %pc_lo12(_ZL54benchmark_uniq_4benchmark_xor_no_runtime_checks_needed)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s1, $sp, 8
	ori	$a0, $zero, 42
	st.d	$a0, $sp, 40
.Ltmp24:                                # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp25:                                # EH_LABEL
# %bb.16:                               # %.noexc.i22
	ld.d	$a1, $sp, 40
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	pcalau12i	$a2, %pc_hi20(.L.str.7)
	addi.d	$a2, $a2, %pc_lo12(.L.str.7)
	vld	$vr0, $a2, 16
	vst	$vr0, $a0, 16
	vld	$vr0, $a2, 0
	ld.d	$a3, $a2, 32
	ld.h	$a2, $a2, 40
	vst	$vr0, $a0, 0
	st.d	$a3, $a0, 32
	st.h	$a2, $a0, 40
	st.d	$a1, $sp, 16
	stx.b	$zero, $a0, $a1
	ori	$s3, $zero, 1
.Ltmp27:                                # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp28:                                # EH_LABEL
# %bb.17:
	st.d	$s2, $fp, 0
	pcalau12i	$a0, %pc_hi20(_Z33benchmark_xor_runtime_checks_passILj16EiEvRN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_Z33benchmark_xor_runtime_checks_passILj16EiEvRN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp29:                                # EH_LABEL
	move	$s3, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp30:                                # EH_LABEL
# %bb.18:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB30_20
# %bb.19:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i26
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB30_20:                              # %__cxx_global_var_init.6.exit
	pcalau12i	$a0, %pc_hi20(_ZL49benchmark_uniq_5benchmark_xor_runtime_checks_pass)
	st.d	$s0, $a0, %pc_lo12(_ZL49benchmark_uniq_5benchmark_xor_runtime_checks_pass)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s1, $sp, 8
	ori	$a0, $zero, 42
	st.d	$a0, $sp, 40
.Ltmp32:                                # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp33:                                # EH_LABEL
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
	ld.h	$a2, $a2, 40
	vst	$vr0, $a0, 0
	st.d	$a3, $a0, 32
	st.h	$a2, $a0, 40
	st.d	$a1, $sp, 16
	stx.b	$zero, $a0, $a1
	ori	$s3, $zero, 1
.Ltmp35:                                # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp36:                                # EH_LABEL
# %bb.22:
	st.d	$s2, $fp, 0
	pcalau12i	$a0, %pc_hi20(_Z33benchmark_xor_runtime_checks_failILj16EiEvRN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_Z33benchmark_xor_runtime_checks_failILj16EiEvRN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp37:                                # EH_LABEL
	move	$s3, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp38:                                # EH_LABEL
# %bb.23:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB30_25
# %bb.24:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i35
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB30_25:                              # %__cxx_global_var_init.8.exit
	pcalau12i	$a0, %pc_hi20(_ZL49benchmark_uniq_6benchmark_xor_runtime_checks_fail)
	st.d	$s0, $a0, %pc_lo12(_ZL49benchmark_uniq_6benchmark_xor_runtime_checks_fail)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s1, $sp, 8
	ori	$a0, $zero, 47
	st.d	$a0, $sp, 40
.Ltmp40:                                # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp41:                                # EH_LABEL
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
	ld.d	$a2, $a2, 39
	vst	$vr0, $a0, 0
	st.d	$a3, $a0, 32
	st.d	$a2, $a0, 39
	st.d	$a1, $sp, 16
	stx.b	$zero, $a0, $a1
	ori	$s3, $zero, 1
.Ltmp43:                                # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp44:                                # EH_LABEL
# %bb.27:
	st.d	$s2, $fp, 0
	pcalau12i	$a0, %pc_hi20(_Z38benchmark_xor_no_runtime_checks_neededILj16EiEvRN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_Z38benchmark_xor_no_runtime_checks_neededILj16EiEvRN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp45:                                # EH_LABEL
	move	$s3, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp46:                                # EH_LABEL
# %bb.28:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB30_30
# %bb.29:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i44
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB30_30:                              # %__cxx_global_var_init.10.exit
	pcalau12i	$a0, %pc_hi20(_ZL54benchmark_uniq_7benchmark_xor_no_runtime_checks_needed)
	st.d	$s0, $a0, %pc_lo12(_ZL54benchmark_uniq_7benchmark_xor_no_runtime_checks_needed)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s1, $sp, 8
	ori	$a0, $zero, 45
	st.d	$a0, $sp, 40
.Ltmp48:                                # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp49:                                # EH_LABEL
# %bb.31:                               # %.noexc.i49
	ld.d	$a1, $sp, 40
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	pcalau12i	$a2, %pc_hi20(.L.str.13)
	addi.d	$a2, $a2, %pc_lo12(.L.str.13)
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
.Ltmp51:                                # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp52:                                # EH_LABEL
# %bb.32:
	st.d	$s2, $fp, 0
	pcalau12i	$a0, %pc_hi20(_Z37benchmark_add_xor_runtime_checks_passILj4EiEvRN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_Z37benchmark_add_xor_runtime_checks_passILj4EiEvRN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp53:                                # EH_LABEL
	move	$s3, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp54:                                # EH_LABEL
# %bb.33:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB30_35
# %bb.34:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i53
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB30_35:                              # %__cxx_global_var_init.12.exit
	pcalau12i	$a0, %pc_hi20(_ZL53benchmark_uniq_8benchmark_add_xor_runtime_checks_pass)
	st.d	$s0, $a0, %pc_lo12(_ZL53benchmark_uniq_8benchmark_add_xor_runtime_checks_pass)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s1, $sp, 8
	ori	$a0, $zero, 45
	st.d	$a0, $sp, 40
.Ltmp56:                                # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp57:                                # EH_LABEL
# %bb.36:                               # %.noexc.i58
	ld.d	$a1, $sp, 40
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	pcalau12i	$a2, %pc_hi20(.L.str.15)
	addi.d	$a2, $a2, %pc_lo12(.L.str.15)
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
.Ltmp59:                                # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp60:                                # EH_LABEL
# %bb.37:
	st.d	$s2, $fp, 0
	pcalau12i	$a0, %pc_hi20(_Z37benchmark_add_xor_runtime_checks_failILj4EiEvRN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_Z37benchmark_add_xor_runtime_checks_failILj4EiEvRN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp61:                                # EH_LABEL
	move	$s3, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp62:                                # EH_LABEL
# %bb.38:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB30_40
# %bb.39:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i62
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB30_40:                              # %__cxx_global_var_init.14.exit
	pcalau12i	$a0, %pc_hi20(_ZL53benchmark_uniq_9benchmark_add_xor_runtime_checks_fail)
	st.d	$s0, $a0, %pc_lo12(_ZL53benchmark_uniq_9benchmark_add_xor_runtime_checks_fail)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s1, $sp, 8
	ori	$a0, $zero, 50
	st.d	$a0, $sp, 40
.Ltmp64:                                # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp65:                                # EH_LABEL
# %bb.41:                               # %.noexc.i67
	ld.d	$a1, $sp, 40
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	pcalau12i	$a2, %pc_hi20(.L.str.17)
	addi.d	$a2, $a2, %pc_lo12(.L.str.17)
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
.Ltmp67:                                # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp68:                                # EH_LABEL
# %bb.42:
	st.d	$s2, $fp, 0
	pcalau12i	$a0, %pc_hi20(_Z42benchmark_add_xor_no_runtime_checks_neededILj4EiEvRN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_Z42benchmark_add_xor_no_runtime_checks_neededILj4EiEvRN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp69:                                # EH_LABEL
	move	$s3, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp70:                                # EH_LABEL
# %bb.43:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB30_45
# %bb.44:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i71
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB30_45:                              # %__cxx_global_var_init.16.exit
	pcalau12i	$a0, %pc_hi20(_ZL59benchmark_uniq_10benchmark_add_xor_no_runtime_checks_needed)
	st.d	$s0, $a0, %pc_lo12(_ZL59benchmark_uniq_10benchmark_add_xor_no_runtime_checks_needed)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s1, $sp, 8
	ori	$a0, $zero, 46
	st.d	$a0, $sp, 40
.Ltmp72:                                # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp73:                                # EH_LABEL
# %bb.46:                               # %.noexc.i76
	ld.d	$a1, $sp, 40
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	pcalau12i	$a2, %pc_hi20(.L.str.19)
	addi.d	$a2, $a2, %pc_lo12(.L.str.19)
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
.Ltmp75:                                # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp76:                                # EH_LABEL
# %bb.47:
	st.d	$s2, $fp, 0
	pcalau12i	$a0, %pc_hi20(_Z37benchmark_add_xor_runtime_checks_passILj16EiEvRN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_Z37benchmark_add_xor_runtime_checks_passILj16EiEvRN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp77:                                # EH_LABEL
	move	$s3, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp78:                                # EH_LABEL
# %bb.48:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB30_50
# %bb.49:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i80
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB30_50:                              # %__cxx_global_var_init.18.exit
	pcalau12i	$a0, %pc_hi20(_ZL54benchmark_uniq_11benchmark_add_xor_runtime_checks_pass)
	st.d	$s0, $a0, %pc_lo12(_ZL54benchmark_uniq_11benchmark_add_xor_runtime_checks_pass)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s1, $sp, 8
	ori	$a0, $zero, 46
	st.d	$a0, $sp, 40
.Ltmp80:                                # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp81:                                # EH_LABEL
# %bb.51:                               # %.noexc.i85
	ld.d	$a1, $sp, 40
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	pcalau12i	$a2, %pc_hi20(.L.str.21)
	addi.d	$a2, $a2, %pc_lo12(.L.str.21)
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
.Ltmp83:                                # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp84:                                # EH_LABEL
# %bb.52:
	st.d	$s2, $fp, 0
	pcalau12i	$a0, %pc_hi20(_Z37benchmark_add_xor_runtime_checks_failILj16EiEvRN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_Z37benchmark_add_xor_runtime_checks_failILj16EiEvRN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp85:                                # EH_LABEL
	move	$s3, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp86:                                # EH_LABEL
# %bb.53:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB30_55
# %bb.54:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i89
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB30_55:                              # %__cxx_global_var_init.20.exit
	pcalau12i	$a0, %pc_hi20(_ZL54benchmark_uniq_12benchmark_add_xor_runtime_checks_fail)
	st.d	$s0, $a0, %pc_lo12(_ZL54benchmark_uniq_12benchmark_add_xor_runtime_checks_fail)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s1, $sp, 8
	ori	$a0, $zero, 51
	st.d	$a0, $sp, 40
.Ltmp88:                                # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp89:                                # EH_LABEL
# %bb.56:                               # %.noexc.i94
	ld.d	$a1, $sp, 40
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	pcalau12i	$a2, %pc_hi20(.L.str.23)
	addi.d	$a2, $a2, %pc_lo12(.L.str.23)
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
.Ltmp91:                                # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp92:                                # EH_LABEL
# %bb.57:
	st.d	$s2, $fp, 0
	pcalau12i	$a0, %pc_hi20(_Z42benchmark_add_xor_no_runtime_checks_neededILj16EiEvRN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_Z42benchmark_add_xor_no_runtime_checks_neededILj16EiEvRN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp93:                                # EH_LABEL
	move	$s3, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp94:                                # EH_LABEL
# %bb.58:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB30_60
# %bb.59:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i98
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB30_60:                              # %__cxx_global_var_init.22.exit
	pcalau12i	$a0, %pc_hi20(_ZL59benchmark_uniq_13benchmark_add_xor_no_runtime_checks_needed)
	st.d	$s0, $a0, %pc_lo12(_ZL59benchmark_uniq_13benchmark_add_xor_no_runtime_checks_needed)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s1, $sp, 8
	ori	$a0, $zero, 60
	st.d	$a0, $sp, 40
.Ltmp96:                                # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp97:                                # EH_LABEL
# %bb.61:                               # %.noexc.i103
	ld.d	$a1, $sp, 40
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	pcalau12i	$a2, %pc_hi20(.L.str.25)
	addi.d	$a2, $a2, %pc_lo12(.L.str.25)
	vld	$vr0, $a2, 16
	vst	$vr0, $a0, 16
	vld	$vr0, $a2, 0
	ld.d	$a3, $a2, 32
	vst	$vr0, $a0, 0
	st.d	$a3, $a0, 32
	vld	$vr0, $a2, 40
	ld.w	$a2, $a2, 56
	vst	$vr0, $a0, 40
	st.w	$a2, $a0, 56
	st.d	$a1, $sp, 16
	stx.b	$zero, $a0, $a1
	ori	$s3, $zero, 1
.Ltmp99:                                # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp100:                               # EH_LABEL
# %bb.62:
	st.d	$s2, $fp, 0
	pcalau12i	$a0, %pc_hi20(_Z49benchmark_multiply_accumulate_runtime_checks_passILj2EdEvRN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_Z49benchmark_multiply_accumulate_runtime_checks_passILj2EdEvRN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp101:                               # EH_LABEL
	move	$s3, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp102:                               # EH_LABEL
# %bb.63:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB30_65
# %bb.64:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i107
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB30_65:                              # %__cxx_global_var_init.24.exit
	pcalau12i	$a0, %pc_hi20(_ZL66benchmark_uniq_14benchmark_multiply_accumulate_runtime_checks_pass)
	st.d	$s0, $a0, %pc_lo12(_ZL66benchmark_uniq_14benchmark_multiply_accumulate_runtime_checks_pass)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s1, $sp, 8
	ori	$a0, $zero, 60
	st.d	$a0, $sp, 40
.Ltmp104:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp105:                               # EH_LABEL
# %bb.66:                               # %.noexc.i112
	ld.d	$a1, $sp, 40
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	pcalau12i	$a2, %pc_hi20(.L.str.27)
	addi.d	$a2, $a2, %pc_lo12(.L.str.27)
	vld	$vr0, $a2, 16
	vst	$vr0, $a0, 16
	vld	$vr0, $a2, 0
	ld.d	$a3, $a2, 32
	vst	$vr0, $a0, 0
	st.d	$a3, $a0, 32
	vld	$vr0, $a2, 40
	ld.w	$a2, $a2, 56
	vst	$vr0, $a0, 40
	st.w	$a2, $a0, 56
	st.d	$a1, $sp, 16
	stx.b	$zero, $a0, $a1
	ori	$s3, $zero, 1
.Ltmp107:                               # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp108:                               # EH_LABEL
# %bb.67:
	st.d	$s2, $fp, 0
	pcalau12i	$a0, %pc_hi20(_Z49benchmark_multiply_accumulate_runtime_checks_failILj2EdEvRN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_Z49benchmark_multiply_accumulate_runtime_checks_failILj2EdEvRN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp109:                               # EH_LABEL
	move	$s3, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp110:                               # EH_LABEL
# %bb.68:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB30_70
# %bb.69:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i116
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB30_70:                              # %__cxx_global_var_init.26.exit
	pcalau12i	$a0, %pc_hi20(_ZL66benchmark_uniq_15benchmark_multiply_accumulate_runtime_checks_fail)
	st.d	$s0, $a0, %pc_lo12(_ZL66benchmark_uniq_15benchmark_multiply_accumulate_runtime_checks_fail)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s1, $sp, 8
	ori	$a0, $zero, 65
	st.d	$a0, $sp, 40
.Ltmp112:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp113:                               # EH_LABEL
# %bb.71:                               # %.noexc.i121
	move	$s0, $a0
	ld.d	$s3, $sp, 40
	st.d	$a0, $sp, 8
	st.d	$s3, $sp, 24
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a1, $a0, %pc_lo12(.L.str.29)
	ori	$a2, $zero, 65
	move	$a0, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	st.d	$s3, $sp, 16
	stx.b	$zero, $s0, $s3
	ori	$s3, $zero, 1
.Ltmp115:                               # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp116:                               # EH_LABEL
# %bb.72:
	st.d	$s2, $fp, 0
	pcalau12i	$a0, %pc_hi20(_Z54benchmark_multiply_accumulate_no_runtime_checks_neededILj2EdEvRN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_Z54benchmark_multiply_accumulate_no_runtime_checks_neededILj2EdEvRN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp117:                               # EH_LABEL
	move	$s3, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp118:                               # EH_LABEL
# %bb.73:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB30_75
# %bb.74:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i125
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB30_75:                              # %__cxx_global_var_init.28.exit
	pcalau12i	$a0, %pc_hi20(_ZL71benchmark_uniq_16benchmark_multiply_accumulate_no_runtime_checks_needed)
	st.d	$s0, $a0, %pc_lo12(_ZL71benchmark_uniq_16benchmark_multiply_accumulate_no_runtime_checks_needed)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s1, $sp, 8
	ori	$a0, $zero, 60
	st.d	$a0, $sp, 40
.Ltmp120:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp121:                               # EH_LABEL
# %bb.76:                               # %.noexc.i130
	ld.d	$a1, $sp, 40
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	pcalau12i	$a2, %pc_hi20(.L.str.31)
	addi.d	$a2, $a2, %pc_lo12(.L.str.31)
	vld	$vr0, $a2, 16
	vst	$vr0, $a0, 16
	vld	$vr0, $a2, 0
	ld.d	$a3, $a2, 32
	vst	$vr0, $a0, 0
	st.d	$a3, $a0, 32
	vld	$vr0, $a2, 40
	ld.w	$a2, $a2, 56
	vst	$vr0, $a0, 40
	st.w	$a2, $a0, 56
	st.d	$a1, $sp, 16
	stx.b	$zero, $a0, $a1
	ori	$s3, $zero, 1
.Ltmp123:                               # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp124:                               # EH_LABEL
# %bb.77:
	st.d	$s2, $fp, 0
	pcalau12i	$a0, %pc_hi20(_Z49benchmark_multiply_accumulate_runtime_checks_passILj3EdEvRN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_Z49benchmark_multiply_accumulate_runtime_checks_passILj3EdEvRN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp125:                               # EH_LABEL
	move	$s3, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp126:                               # EH_LABEL
# %bb.78:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB30_80
# %bb.79:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i134
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB30_80:                              # %__cxx_global_var_init.30.exit
	pcalau12i	$a0, %pc_hi20(_ZL66benchmark_uniq_17benchmark_multiply_accumulate_runtime_checks_pass)
	st.d	$s0, $a0, %pc_lo12(_ZL66benchmark_uniq_17benchmark_multiply_accumulate_runtime_checks_pass)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s1, $sp, 8
	ori	$a0, $zero, 60
	st.d	$a0, $sp, 40
.Ltmp128:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp129:                               # EH_LABEL
# %bb.81:                               # %.noexc.i139
	ld.d	$a1, $sp, 40
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	pcalau12i	$a2, %pc_hi20(.L.str.33)
	addi.d	$a2, $a2, %pc_lo12(.L.str.33)
	vld	$vr0, $a2, 16
	vst	$vr0, $a0, 16
	vld	$vr0, $a2, 0
	ld.d	$a3, $a2, 32
	vst	$vr0, $a0, 0
	st.d	$a3, $a0, 32
	vld	$vr0, $a2, 40
	ld.w	$a2, $a2, 56
	vst	$vr0, $a0, 40
	st.w	$a2, $a0, 56
	st.d	$a1, $sp, 16
	stx.b	$zero, $a0, $a1
	ori	$s3, $zero, 1
.Ltmp131:                               # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp132:                               # EH_LABEL
# %bb.82:
	st.d	$s2, $fp, 0
	pcalau12i	$a0, %pc_hi20(_Z49benchmark_multiply_accumulate_runtime_checks_failILj3EdEvRN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_Z49benchmark_multiply_accumulate_runtime_checks_failILj3EdEvRN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp133:                               # EH_LABEL
	move	$s3, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp134:                               # EH_LABEL
# %bb.83:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB30_85
# %bb.84:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i143
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB30_85:                              # %__cxx_global_var_init.32.exit
	pcalau12i	$a0, %pc_hi20(_ZL66benchmark_uniq_18benchmark_multiply_accumulate_runtime_checks_fail)
	st.d	$s0, $a0, %pc_lo12(_ZL66benchmark_uniq_18benchmark_multiply_accumulate_runtime_checks_fail)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s1, $sp, 8
	ori	$a0, $zero, 65
	st.d	$a0, $sp, 40
.Ltmp136:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp137:                               # EH_LABEL
# %bb.86:                               # %.noexc.i148
	move	$s0, $a0
	ld.d	$s3, $sp, 40
	st.d	$a0, $sp, 8
	st.d	$s3, $sp, 24
	pcalau12i	$a0, %pc_hi20(.L.str.35)
	addi.d	$a1, $a0, %pc_lo12(.L.str.35)
	ori	$a2, $zero, 65
	move	$a0, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	st.d	$s3, $sp, 16
	stx.b	$zero, $s0, $s3
	ori	$s3, $zero, 1
.Ltmp139:                               # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp140:                               # EH_LABEL
# %bb.87:
	st.d	$s2, $fp, 0
	pcalau12i	$a0, %pc_hi20(_Z54benchmark_multiply_accumulate_no_runtime_checks_neededILj3EdEvRN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_Z54benchmark_multiply_accumulate_no_runtime_checks_neededILj3EdEvRN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp141:                               # EH_LABEL
	move	$s3, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp142:                               # EH_LABEL
# %bb.88:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB30_90
# %bb.89:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i152
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB30_90:                              # %__cxx_global_var_init.34.exit
	pcalau12i	$a0, %pc_hi20(_ZL71benchmark_uniq_19benchmark_multiply_accumulate_no_runtime_checks_needed)
	st.d	$s0, $a0, %pc_lo12(_ZL71benchmark_uniq_19benchmark_multiply_accumulate_no_runtime_checks_needed)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s1, $sp, 8
	ori	$a0, $zero, 60
	st.d	$a0, $sp, 40
.Ltmp144:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp145:                               # EH_LABEL
# %bb.91:                               # %.noexc.i157
	ld.d	$a1, $sp, 40
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	pcalau12i	$a2, %pc_hi20(.L.str.37)
	addi.d	$a2, $a2, %pc_lo12(.L.str.37)
	vld	$vr0, $a2, 16
	vst	$vr0, $a0, 16
	vld	$vr0, $a2, 0
	ld.d	$a3, $a2, 32
	vst	$vr0, $a0, 0
	st.d	$a3, $a0, 32
	vld	$vr0, $a2, 40
	ld.w	$a2, $a2, 56
	vst	$vr0, $a0, 40
	st.w	$a2, $a0, 56
	st.d	$a1, $sp, 16
	stx.b	$zero, $a0, $a1
	ori	$s3, $zero, 1
.Ltmp147:                               # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp148:                               # EH_LABEL
# %bb.92:
	st.d	$s2, $fp, 0
	pcalau12i	$a0, %pc_hi20(_Z49benchmark_multiply_accumulate_runtime_checks_passILj4EdEvRN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_Z49benchmark_multiply_accumulate_runtime_checks_passILj4EdEvRN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp149:                               # EH_LABEL
	move	$s3, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp150:                               # EH_LABEL
# %bb.93:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB30_95
# %bb.94:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i161
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB30_95:                              # %__cxx_global_var_init.36.exit
	pcalau12i	$a0, %pc_hi20(_ZL66benchmark_uniq_20benchmark_multiply_accumulate_runtime_checks_pass)
	st.d	$s0, $a0, %pc_lo12(_ZL66benchmark_uniq_20benchmark_multiply_accumulate_runtime_checks_pass)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s1, $sp, 8
	ori	$a0, $zero, 60
	st.d	$a0, $sp, 40
.Ltmp152:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp153:                               # EH_LABEL
# %bb.96:                               # %.noexc.i166
	ld.d	$a1, $sp, 40
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	pcalau12i	$a2, %pc_hi20(.L.str.39)
	addi.d	$a2, $a2, %pc_lo12(.L.str.39)
	vld	$vr0, $a2, 16
	vst	$vr0, $a0, 16
	vld	$vr0, $a2, 0
	ld.d	$a3, $a2, 32
	vst	$vr0, $a0, 0
	st.d	$a3, $a0, 32
	vld	$vr0, $a2, 40
	ld.w	$a2, $a2, 56
	vst	$vr0, $a0, 40
	st.w	$a2, $a0, 56
	st.d	$a1, $sp, 16
	stx.b	$zero, $a0, $a1
	ori	$s3, $zero, 1
.Ltmp155:                               # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp156:                               # EH_LABEL
# %bb.97:
	st.d	$s2, $fp, 0
	pcalau12i	$a0, %pc_hi20(_Z49benchmark_multiply_accumulate_runtime_checks_failILj4EdEvRN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_Z49benchmark_multiply_accumulate_runtime_checks_failILj4EdEvRN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp157:                               # EH_LABEL
	move	$s3, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp158:                               # EH_LABEL
# %bb.98:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB30_100
# %bb.99:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i170
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB30_100:                             # %__cxx_global_var_init.38.exit
	pcalau12i	$a0, %pc_hi20(_ZL66benchmark_uniq_21benchmark_multiply_accumulate_runtime_checks_fail)
	st.d	$s0, $a0, %pc_lo12(_ZL66benchmark_uniq_21benchmark_multiply_accumulate_runtime_checks_fail)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s1, $sp, 8
	ori	$a0, $zero, 65
	st.d	$a0, $sp, 40
.Ltmp160:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp161:                               # EH_LABEL
# %bb.101:                              # %.noexc.i175
	move	$s0, $a0
	ld.d	$s3, $sp, 40
	st.d	$a0, $sp, 8
	st.d	$s3, $sp, 24
	pcalau12i	$a0, %pc_hi20(.L.str.41)
	addi.d	$a1, $a0, %pc_lo12(.L.str.41)
	ori	$a2, $zero, 65
	move	$a0, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	st.d	$s3, $sp, 16
	stx.b	$zero, $s0, $s3
	ori	$s3, $zero, 1
.Ltmp163:                               # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp164:                               # EH_LABEL
# %bb.102:
	st.d	$s2, $fp, 0
	pcalau12i	$a0, %pc_hi20(_Z54benchmark_multiply_accumulate_no_runtime_checks_neededILj4EdEvRN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_Z54benchmark_multiply_accumulate_no_runtime_checks_neededILj4EdEvRN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp165:                               # EH_LABEL
	move	$s3, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp166:                               # EH_LABEL
# %bb.103:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB30_105
# %bb.104:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i179
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB30_105:                             # %__cxx_global_var_init.40.exit
	pcalau12i	$a0, %pc_hi20(_ZL71benchmark_uniq_22benchmark_multiply_accumulate_no_runtime_checks_needed)
	st.d	$s0, $a0, %pc_lo12(_ZL71benchmark_uniq_22benchmark_multiply_accumulate_no_runtime_checks_needed)
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.LBB30_106:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i172
.Ltmp162:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB30_148
.LBB30_107:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i163
.Ltmp154:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB30_148
.LBB30_108:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i154
.Ltmp146:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB30_148
.LBB30_109:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i145
.Ltmp138:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB30_148
.LBB30_110:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i136
.Ltmp130:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB30_148
.LBB30_111:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i127
.Ltmp122:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB30_148
.LBB30_112:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i118
.Ltmp114:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB30_148
.LBB30_113:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i109
.Ltmp106:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB30_148
.LBB30_114:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i100
.Ltmp98:                                # EH_LABEL
	move	$s0, $a0
	b	.LBB30_148
.LBB30_115:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i91
.Ltmp90:                                # EH_LABEL
	move	$s0, $a0
	b	.LBB30_148
.LBB30_116:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i82
.Ltmp82:                                # EH_LABEL
	move	$s0, $a0
	b	.LBB30_148
.LBB30_117:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i73
.Ltmp74:                                # EH_LABEL
	move	$s0, $a0
	b	.LBB30_148
.LBB30_118:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i64
.Ltmp66:                                # EH_LABEL
	move	$s0, $a0
	b	.LBB30_148
.LBB30_119:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i55
.Ltmp58:                                # EH_LABEL
	move	$s0, $a0
	b	.LBB30_148
.LBB30_120:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i46
.Ltmp50:                                # EH_LABEL
	move	$s0, $a0
	b	.LBB30_148
.LBB30_121:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i37
.Ltmp42:                                # EH_LABEL
	move	$s0, $a0
	b	.LBB30_148
.LBB30_122:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i28
.Ltmp34:                                # EH_LABEL
	move	$s0, $a0
	b	.LBB30_148
.LBB30_123:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i19
.Ltmp26:                                # EH_LABEL
	move	$s0, $a0
	b	.LBB30_148
.LBB30_124:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i10
.Ltmp18:                                # EH_LABEL
	move	$s0, $a0
	b	.LBB30_148
.LBB30_125:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i1
.Ltmp10:                                # EH_LABEL
	move	$s0, $a0
	b	.LBB30_148
.LBB30_126:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i
.Ltmp2:                                 # EH_LABEL
	move	$s0, $a0
	b	.LBB30_148
.LBB30_127:
.Ltmp167:                               # EH_LABEL
	ld.d	$a1, $sp, 8
	move	$s0, $a0
	bne	$a1, $s1, .LBB30_147
	b	.LBB30_151
.LBB30_128:
.Ltmp159:                               # EH_LABEL
	ld.d	$a1, $sp, 8
	move	$s0, $a0
	bne	$a1, $s1, .LBB30_147
	b	.LBB30_151
.LBB30_129:
.Ltmp151:                               # EH_LABEL
	ld.d	$a1, $sp, 8
	move	$s0, $a0
	bne	$a1, $s1, .LBB30_147
	b	.LBB30_151
.LBB30_130:
.Ltmp143:                               # EH_LABEL
	ld.d	$a1, $sp, 8
	move	$s0, $a0
	bne	$a1, $s1, .LBB30_147
	b	.LBB30_151
.LBB30_131:
.Ltmp135:                               # EH_LABEL
	ld.d	$a1, $sp, 8
	move	$s0, $a0
	bne	$a1, $s1, .LBB30_147
	b	.LBB30_151
.LBB30_132:
.Ltmp127:                               # EH_LABEL
	ld.d	$a1, $sp, 8
	move	$s0, $a0
	bne	$a1, $s1, .LBB30_147
	b	.LBB30_151
.LBB30_133:
.Ltmp119:                               # EH_LABEL
	ld.d	$a1, $sp, 8
	move	$s0, $a0
	bne	$a1, $s1, .LBB30_147
	b	.LBB30_151
.LBB30_134:
.Ltmp111:                               # EH_LABEL
	ld.d	$a1, $sp, 8
	move	$s0, $a0
	bne	$a1, $s1, .LBB30_147
	b	.LBB30_151
.LBB30_135:
.Ltmp103:                               # EH_LABEL
	ld.d	$a1, $sp, 8
	move	$s0, $a0
	bne	$a1, $s1, .LBB30_147
	b	.LBB30_151
.LBB30_136:
.Ltmp95:                                # EH_LABEL
	ld.d	$a1, $sp, 8
	move	$s0, $a0
	bne	$a1, $s1, .LBB30_147
	b	.LBB30_151
.LBB30_137:
.Ltmp87:                                # EH_LABEL
	ld.d	$a1, $sp, 8
	move	$s0, $a0
	bne	$a1, $s1, .LBB30_147
	b	.LBB30_151
.LBB30_138:
.Ltmp79:                                # EH_LABEL
	ld.d	$a1, $sp, 8
	move	$s0, $a0
	bne	$a1, $s1, .LBB30_147
	b	.LBB30_151
.LBB30_139:
.Ltmp71:                                # EH_LABEL
	ld.d	$a1, $sp, 8
	move	$s0, $a0
	bne	$a1, $s1, .LBB30_147
	b	.LBB30_151
.LBB30_140:
.Ltmp63:                                # EH_LABEL
	ld.d	$a1, $sp, 8
	move	$s0, $a0
	bne	$a1, $s1, .LBB30_147
	b	.LBB30_151
.LBB30_141:
.Ltmp55:                                # EH_LABEL
	ld.d	$a1, $sp, 8
	move	$s0, $a0
	bne	$a1, $s1, .LBB30_147
	b	.LBB30_151
.LBB30_142:
.Ltmp47:                                # EH_LABEL
	ld.d	$a1, $sp, 8
	move	$s0, $a0
	bne	$a1, $s1, .LBB30_147
	b	.LBB30_151
.LBB30_143:
.Ltmp39:                                # EH_LABEL
	ld.d	$a1, $sp, 8
	move	$s0, $a0
	bne	$a1, $s1, .LBB30_147
	b	.LBB30_151
.LBB30_144:
.Ltmp31:                                # EH_LABEL
	ld.d	$a1, $sp, 8
	move	$s0, $a0
	bne	$a1, $s1, .LBB30_147
	b	.LBB30_151
.LBB30_145:
.Ltmp23:                                # EH_LABEL
	ld.d	$a1, $sp, 8
	move	$s0, $a0
	bne	$a1, $s1, .LBB30_147
	b	.LBB30_151
.LBB30_146:
.Ltmp15:                                # EH_LABEL
	ld.d	$a1, $sp, 8
	move	$s0, $a0
	beq	$a1, $s1, .LBB30_151
.LBB30_147:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	beqz	$s3, .LBB30_149
.LBB30_148:                             # %common.resume.sink.split
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB30_149:                             # %common.resume
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB30_150:
.Ltmp7:                                 # EH_LABEL
	ld.d	$a1, $sp, 8
	move	$s0, $a0
	bne	$a1, $s1, .LBB30_147
.LBB30_151:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i7.i
	beqz	$s3, .LBB30_149
	b	.LBB30_148
.Lfunc_end30:
	.size	_GLOBAL__sub_I_Versioning.cpp, .Lfunc_end30-_GLOBAL__sub_I_Versioning.cpp
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table30:
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
	.uleb128 .Ltmp6-.Lfunc_begin0           # >> Call Site 4 <<
	.uleb128 .Ltmp8-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp8
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp8-.Lfunc_begin0           # >> Call Site 5 <<
	.uleb128 .Ltmp9-.Ltmp8                  #   Call between .Ltmp8 and .Ltmp9
	.uleb128 .Ltmp10-.Lfunc_begin0          #     jumps to .Ltmp10
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp11-.Lfunc_begin0          # >> Call Site 6 <<
	.uleb128 .Ltmp14-.Ltmp11                #   Call between .Ltmp11 and .Ltmp14
	.uleb128 .Ltmp15-.Lfunc_begin0          #     jumps to .Ltmp15
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp14-.Lfunc_begin0          # >> Call Site 7 <<
	.uleb128 .Ltmp16-.Ltmp14                #   Call between .Ltmp14 and .Ltmp16
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp16-.Lfunc_begin0          # >> Call Site 8 <<
	.uleb128 .Ltmp17-.Ltmp16                #   Call between .Ltmp16 and .Ltmp17
	.uleb128 .Ltmp18-.Lfunc_begin0          #     jumps to .Ltmp18
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp19-.Lfunc_begin0          # >> Call Site 9 <<
	.uleb128 .Ltmp22-.Ltmp19                #   Call between .Ltmp19 and .Ltmp22
	.uleb128 .Ltmp23-.Lfunc_begin0          #     jumps to .Ltmp23
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp22-.Lfunc_begin0          # >> Call Site 10 <<
	.uleb128 .Ltmp24-.Ltmp22                #   Call between .Ltmp22 and .Ltmp24
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp24-.Lfunc_begin0          # >> Call Site 11 <<
	.uleb128 .Ltmp25-.Ltmp24                #   Call between .Ltmp24 and .Ltmp25
	.uleb128 .Ltmp26-.Lfunc_begin0          #     jumps to .Ltmp26
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp27-.Lfunc_begin0          # >> Call Site 12 <<
	.uleb128 .Ltmp30-.Ltmp27                #   Call between .Ltmp27 and .Ltmp30
	.uleb128 .Ltmp31-.Lfunc_begin0          #     jumps to .Ltmp31
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp30-.Lfunc_begin0          # >> Call Site 13 <<
	.uleb128 .Ltmp32-.Ltmp30                #   Call between .Ltmp30 and .Ltmp32
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp32-.Lfunc_begin0          # >> Call Site 14 <<
	.uleb128 .Ltmp33-.Ltmp32                #   Call between .Ltmp32 and .Ltmp33
	.uleb128 .Ltmp34-.Lfunc_begin0          #     jumps to .Ltmp34
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp35-.Lfunc_begin0          # >> Call Site 15 <<
	.uleb128 .Ltmp38-.Ltmp35                #   Call between .Ltmp35 and .Ltmp38
	.uleb128 .Ltmp39-.Lfunc_begin0          #     jumps to .Ltmp39
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp38-.Lfunc_begin0          # >> Call Site 16 <<
	.uleb128 .Ltmp40-.Ltmp38                #   Call between .Ltmp38 and .Ltmp40
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp40-.Lfunc_begin0          # >> Call Site 17 <<
	.uleb128 .Ltmp41-.Ltmp40                #   Call between .Ltmp40 and .Ltmp41
	.uleb128 .Ltmp42-.Lfunc_begin0          #     jumps to .Ltmp42
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp43-.Lfunc_begin0          # >> Call Site 18 <<
	.uleb128 .Ltmp46-.Ltmp43                #   Call between .Ltmp43 and .Ltmp46
	.uleb128 .Ltmp47-.Lfunc_begin0          #     jumps to .Ltmp47
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp46-.Lfunc_begin0          # >> Call Site 19 <<
	.uleb128 .Ltmp48-.Ltmp46                #   Call between .Ltmp46 and .Ltmp48
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp48-.Lfunc_begin0          # >> Call Site 20 <<
	.uleb128 .Ltmp49-.Ltmp48                #   Call between .Ltmp48 and .Ltmp49
	.uleb128 .Ltmp50-.Lfunc_begin0          #     jumps to .Ltmp50
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp51-.Lfunc_begin0          # >> Call Site 21 <<
	.uleb128 .Ltmp54-.Ltmp51                #   Call between .Ltmp51 and .Ltmp54
	.uleb128 .Ltmp55-.Lfunc_begin0          #     jumps to .Ltmp55
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp54-.Lfunc_begin0          # >> Call Site 22 <<
	.uleb128 .Ltmp56-.Ltmp54                #   Call between .Ltmp54 and .Ltmp56
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp56-.Lfunc_begin0          # >> Call Site 23 <<
	.uleb128 .Ltmp57-.Ltmp56                #   Call between .Ltmp56 and .Ltmp57
	.uleb128 .Ltmp58-.Lfunc_begin0          #     jumps to .Ltmp58
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp59-.Lfunc_begin0          # >> Call Site 24 <<
	.uleb128 .Ltmp62-.Ltmp59                #   Call between .Ltmp59 and .Ltmp62
	.uleb128 .Ltmp63-.Lfunc_begin0          #     jumps to .Ltmp63
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp62-.Lfunc_begin0          # >> Call Site 25 <<
	.uleb128 .Ltmp64-.Ltmp62                #   Call between .Ltmp62 and .Ltmp64
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp64-.Lfunc_begin0          # >> Call Site 26 <<
	.uleb128 .Ltmp65-.Ltmp64                #   Call between .Ltmp64 and .Ltmp65
	.uleb128 .Ltmp66-.Lfunc_begin0          #     jumps to .Ltmp66
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp67-.Lfunc_begin0          # >> Call Site 27 <<
	.uleb128 .Ltmp70-.Ltmp67                #   Call between .Ltmp67 and .Ltmp70
	.uleb128 .Ltmp71-.Lfunc_begin0          #     jumps to .Ltmp71
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp70-.Lfunc_begin0          # >> Call Site 28 <<
	.uleb128 .Ltmp72-.Ltmp70                #   Call between .Ltmp70 and .Ltmp72
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp72-.Lfunc_begin0          # >> Call Site 29 <<
	.uleb128 .Ltmp73-.Ltmp72                #   Call between .Ltmp72 and .Ltmp73
	.uleb128 .Ltmp74-.Lfunc_begin0          #     jumps to .Ltmp74
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp75-.Lfunc_begin0          # >> Call Site 30 <<
	.uleb128 .Ltmp78-.Ltmp75                #   Call between .Ltmp75 and .Ltmp78
	.uleb128 .Ltmp79-.Lfunc_begin0          #     jumps to .Ltmp79
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp78-.Lfunc_begin0          # >> Call Site 31 <<
	.uleb128 .Ltmp80-.Ltmp78                #   Call between .Ltmp78 and .Ltmp80
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp80-.Lfunc_begin0          # >> Call Site 32 <<
	.uleb128 .Ltmp81-.Ltmp80                #   Call between .Ltmp80 and .Ltmp81
	.uleb128 .Ltmp82-.Lfunc_begin0          #     jumps to .Ltmp82
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp83-.Lfunc_begin0          # >> Call Site 33 <<
	.uleb128 .Ltmp86-.Ltmp83                #   Call between .Ltmp83 and .Ltmp86
	.uleb128 .Ltmp87-.Lfunc_begin0          #     jumps to .Ltmp87
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp86-.Lfunc_begin0          # >> Call Site 34 <<
	.uleb128 .Ltmp88-.Ltmp86                #   Call between .Ltmp86 and .Ltmp88
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp88-.Lfunc_begin0          # >> Call Site 35 <<
	.uleb128 .Ltmp89-.Ltmp88                #   Call between .Ltmp88 and .Ltmp89
	.uleb128 .Ltmp90-.Lfunc_begin0          #     jumps to .Ltmp90
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp91-.Lfunc_begin0          # >> Call Site 36 <<
	.uleb128 .Ltmp94-.Ltmp91                #   Call between .Ltmp91 and .Ltmp94
	.uleb128 .Ltmp95-.Lfunc_begin0          #     jumps to .Ltmp95
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp94-.Lfunc_begin0          # >> Call Site 37 <<
	.uleb128 .Ltmp96-.Ltmp94                #   Call between .Ltmp94 and .Ltmp96
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp96-.Lfunc_begin0          # >> Call Site 38 <<
	.uleb128 .Ltmp97-.Ltmp96                #   Call between .Ltmp96 and .Ltmp97
	.uleb128 .Ltmp98-.Lfunc_begin0          #     jumps to .Ltmp98
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp99-.Lfunc_begin0          # >> Call Site 39 <<
	.uleb128 .Ltmp102-.Ltmp99               #   Call between .Ltmp99 and .Ltmp102
	.uleb128 .Ltmp103-.Lfunc_begin0         #     jumps to .Ltmp103
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp102-.Lfunc_begin0         # >> Call Site 40 <<
	.uleb128 .Ltmp104-.Ltmp102              #   Call between .Ltmp102 and .Ltmp104
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp104-.Lfunc_begin0         # >> Call Site 41 <<
	.uleb128 .Ltmp105-.Ltmp104              #   Call between .Ltmp104 and .Ltmp105
	.uleb128 .Ltmp106-.Lfunc_begin0         #     jumps to .Ltmp106
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp107-.Lfunc_begin0         # >> Call Site 42 <<
	.uleb128 .Ltmp110-.Ltmp107              #   Call between .Ltmp107 and .Ltmp110
	.uleb128 .Ltmp111-.Lfunc_begin0         #     jumps to .Ltmp111
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp110-.Lfunc_begin0         # >> Call Site 43 <<
	.uleb128 .Ltmp112-.Ltmp110              #   Call between .Ltmp110 and .Ltmp112
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp112-.Lfunc_begin0         # >> Call Site 44 <<
	.uleb128 .Ltmp113-.Ltmp112              #   Call between .Ltmp112 and .Ltmp113
	.uleb128 .Ltmp114-.Lfunc_begin0         #     jumps to .Ltmp114
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp113-.Lfunc_begin0         # >> Call Site 45 <<
	.uleb128 .Ltmp115-.Ltmp113              #   Call between .Ltmp113 and .Ltmp115
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp115-.Lfunc_begin0         # >> Call Site 46 <<
	.uleb128 .Ltmp118-.Ltmp115              #   Call between .Ltmp115 and .Ltmp118
	.uleb128 .Ltmp119-.Lfunc_begin0         #     jumps to .Ltmp119
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp118-.Lfunc_begin0         # >> Call Site 47 <<
	.uleb128 .Ltmp120-.Ltmp118              #   Call between .Ltmp118 and .Ltmp120
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp120-.Lfunc_begin0         # >> Call Site 48 <<
	.uleb128 .Ltmp121-.Ltmp120              #   Call between .Ltmp120 and .Ltmp121
	.uleb128 .Ltmp122-.Lfunc_begin0         #     jumps to .Ltmp122
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp123-.Lfunc_begin0         # >> Call Site 49 <<
	.uleb128 .Ltmp126-.Ltmp123              #   Call between .Ltmp123 and .Ltmp126
	.uleb128 .Ltmp127-.Lfunc_begin0         #     jumps to .Ltmp127
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp126-.Lfunc_begin0         # >> Call Site 50 <<
	.uleb128 .Ltmp128-.Ltmp126              #   Call between .Ltmp126 and .Ltmp128
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp128-.Lfunc_begin0         # >> Call Site 51 <<
	.uleb128 .Ltmp129-.Ltmp128              #   Call between .Ltmp128 and .Ltmp129
	.uleb128 .Ltmp130-.Lfunc_begin0         #     jumps to .Ltmp130
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp131-.Lfunc_begin0         # >> Call Site 52 <<
	.uleb128 .Ltmp134-.Ltmp131              #   Call between .Ltmp131 and .Ltmp134
	.uleb128 .Ltmp135-.Lfunc_begin0         #     jumps to .Ltmp135
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp134-.Lfunc_begin0         # >> Call Site 53 <<
	.uleb128 .Ltmp136-.Ltmp134              #   Call between .Ltmp134 and .Ltmp136
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp136-.Lfunc_begin0         # >> Call Site 54 <<
	.uleb128 .Ltmp137-.Ltmp136              #   Call between .Ltmp136 and .Ltmp137
	.uleb128 .Ltmp138-.Lfunc_begin0         #     jumps to .Ltmp138
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp137-.Lfunc_begin0         # >> Call Site 55 <<
	.uleb128 .Ltmp139-.Ltmp137              #   Call between .Ltmp137 and .Ltmp139
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp139-.Lfunc_begin0         # >> Call Site 56 <<
	.uleb128 .Ltmp142-.Ltmp139              #   Call between .Ltmp139 and .Ltmp142
	.uleb128 .Ltmp143-.Lfunc_begin0         #     jumps to .Ltmp143
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp142-.Lfunc_begin0         # >> Call Site 57 <<
	.uleb128 .Ltmp144-.Ltmp142              #   Call between .Ltmp142 and .Ltmp144
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp144-.Lfunc_begin0         # >> Call Site 58 <<
	.uleb128 .Ltmp145-.Ltmp144              #   Call between .Ltmp144 and .Ltmp145
	.uleb128 .Ltmp146-.Lfunc_begin0         #     jumps to .Ltmp146
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp147-.Lfunc_begin0         # >> Call Site 59 <<
	.uleb128 .Ltmp150-.Ltmp147              #   Call between .Ltmp147 and .Ltmp150
	.uleb128 .Ltmp151-.Lfunc_begin0         #     jumps to .Ltmp151
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp150-.Lfunc_begin0         # >> Call Site 60 <<
	.uleb128 .Ltmp152-.Ltmp150              #   Call between .Ltmp150 and .Ltmp152
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp152-.Lfunc_begin0         # >> Call Site 61 <<
	.uleb128 .Ltmp153-.Ltmp152              #   Call between .Ltmp152 and .Ltmp153
	.uleb128 .Ltmp154-.Lfunc_begin0         #     jumps to .Ltmp154
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp155-.Lfunc_begin0         # >> Call Site 62 <<
	.uleb128 .Ltmp158-.Ltmp155              #   Call between .Ltmp155 and .Ltmp158
	.uleb128 .Ltmp159-.Lfunc_begin0         #     jumps to .Ltmp159
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp158-.Lfunc_begin0         # >> Call Site 63 <<
	.uleb128 .Ltmp160-.Ltmp158              #   Call between .Ltmp158 and .Ltmp160
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp160-.Lfunc_begin0         # >> Call Site 64 <<
	.uleb128 .Ltmp161-.Ltmp160              #   Call between .Ltmp160 and .Ltmp161
	.uleb128 .Ltmp162-.Lfunc_begin0         #     jumps to .Ltmp162
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp161-.Lfunc_begin0         # >> Call Site 65 <<
	.uleb128 .Ltmp163-.Ltmp161              #   Call between .Ltmp161 and .Ltmp163
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp163-.Lfunc_begin0         # >> Call Site 66 <<
	.uleb128 .Ltmp166-.Ltmp163              #   Call between .Ltmp163 and .Ltmp166
	.uleb128 .Ltmp167-.Lfunc_begin0         #     jumps to .Ltmp167
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp166-.Lfunc_begin0         # >> Call Site 67 <<
	.uleb128 .Lfunc_end30-.Ltmp166          #   Call between .Ltmp166 and .Lfunc_end30
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.type	_ZL49benchmark_uniq_2benchmark_xor_runtime_checks_pass,@object # @_ZL49benchmark_uniq_2benchmark_xor_runtime_checks_pass
	.local	_ZL49benchmark_uniq_2benchmark_xor_runtime_checks_pass
	.comm	_ZL49benchmark_uniq_2benchmark_xor_runtime_checks_pass,8,8
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str:
	.asciz	"benchmark_xor_runtime_checks_pass<4, int>"
	.size	.L.str, 42

	.type	_ZL49benchmark_uniq_3benchmark_xor_runtime_checks_fail,@object # @_ZL49benchmark_uniq_3benchmark_xor_runtime_checks_fail
	.local	_ZL49benchmark_uniq_3benchmark_xor_runtime_checks_fail
	.comm	_ZL49benchmark_uniq_3benchmark_xor_runtime_checks_fail,8,8
	.type	.L.str.3,@object                # @.str.3
	.p2align	3, 0x0
.L.str.3:
	.asciz	"benchmark_xor_runtime_checks_fail<4, int>"
	.size	.L.str.3, 42

	.type	_ZL54benchmark_uniq_4benchmark_xor_no_runtime_checks_needed,@object # @_ZL54benchmark_uniq_4benchmark_xor_no_runtime_checks_needed
	.local	_ZL54benchmark_uniq_4benchmark_xor_no_runtime_checks_needed
	.comm	_ZL54benchmark_uniq_4benchmark_xor_no_runtime_checks_needed,8,8
	.type	.L.str.5,@object                # @.str.5
	.p2align	3, 0x0
.L.str.5:
	.asciz	"benchmark_xor_no_runtime_checks_needed<4, int>"
	.size	.L.str.5, 47

	.type	_ZL49benchmark_uniq_5benchmark_xor_runtime_checks_pass,@object # @_ZL49benchmark_uniq_5benchmark_xor_runtime_checks_pass
	.local	_ZL49benchmark_uniq_5benchmark_xor_runtime_checks_pass
	.comm	_ZL49benchmark_uniq_5benchmark_xor_runtime_checks_pass,8,8
	.type	.L.str.7,@object                # @.str.7
	.p2align	3, 0x0
.L.str.7:
	.asciz	"benchmark_xor_runtime_checks_pass<16, int>"
	.size	.L.str.7, 43

	.type	_ZL49benchmark_uniq_6benchmark_xor_runtime_checks_fail,@object # @_ZL49benchmark_uniq_6benchmark_xor_runtime_checks_fail
	.local	_ZL49benchmark_uniq_6benchmark_xor_runtime_checks_fail
	.comm	_ZL49benchmark_uniq_6benchmark_xor_runtime_checks_fail,8,8
	.type	.L.str.9,@object                # @.str.9
	.p2align	3, 0x0
.L.str.9:
	.asciz	"benchmark_xor_runtime_checks_fail<16, int>"
	.size	.L.str.9, 43

	.type	_ZL54benchmark_uniq_7benchmark_xor_no_runtime_checks_needed,@object # @_ZL54benchmark_uniq_7benchmark_xor_no_runtime_checks_needed
	.local	_ZL54benchmark_uniq_7benchmark_xor_no_runtime_checks_needed
	.comm	_ZL54benchmark_uniq_7benchmark_xor_no_runtime_checks_needed,8,8
	.type	.L.str.11,@object               # @.str.11
	.p2align	3, 0x0
.L.str.11:
	.asciz	"benchmark_xor_no_runtime_checks_needed<16, int>"
	.size	.L.str.11, 48

	.type	_ZL53benchmark_uniq_8benchmark_add_xor_runtime_checks_pass,@object # @_ZL53benchmark_uniq_8benchmark_add_xor_runtime_checks_pass
	.local	_ZL53benchmark_uniq_8benchmark_add_xor_runtime_checks_pass
	.comm	_ZL53benchmark_uniq_8benchmark_add_xor_runtime_checks_pass,8,8
	.type	.L.str.13,@object               # @.str.13
	.p2align	3, 0x0
.L.str.13:
	.asciz	"benchmark_add_xor_runtime_checks_pass<4, int>"
	.size	.L.str.13, 46

	.type	_ZL53benchmark_uniq_9benchmark_add_xor_runtime_checks_fail,@object # @_ZL53benchmark_uniq_9benchmark_add_xor_runtime_checks_fail
	.local	_ZL53benchmark_uniq_9benchmark_add_xor_runtime_checks_fail
	.comm	_ZL53benchmark_uniq_9benchmark_add_xor_runtime_checks_fail,8,8
	.type	.L.str.15,@object               # @.str.15
	.p2align	3, 0x0
.L.str.15:
	.asciz	"benchmark_add_xor_runtime_checks_fail<4, int>"
	.size	.L.str.15, 46

	.type	_ZL59benchmark_uniq_10benchmark_add_xor_no_runtime_checks_needed,@object # @_ZL59benchmark_uniq_10benchmark_add_xor_no_runtime_checks_needed
	.local	_ZL59benchmark_uniq_10benchmark_add_xor_no_runtime_checks_needed
	.comm	_ZL59benchmark_uniq_10benchmark_add_xor_no_runtime_checks_needed,8,8
	.type	.L.str.17,@object               # @.str.17
	.p2align	3, 0x0
.L.str.17:
	.asciz	"benchmark_add_xor_no_runtime_checks_needed<4, int>"
	.size	.L.str.17, 51

	.type	_ZL54benchmark_uniq_11benchmark_add_xor_runtime_checks_pass,@object # @_ZL54benchmark_uniq_11benchmark_add_xor_runtime_checks_pass
	.local	_ZL54benchmark_uniq_11benchmark_add_xor_runtime_checks_pass
	.comm	_ZL54benchmark_uniq_11benchmark_add_xor_runtime_checks_pass,8,8
	.type	.L.str.19,@object               # @.str.19
	.p2align	3, 0x0
.L.str.19:
	.asciz	"benchmark_add_xor_runtime_checks_pass<16, int>"
	.size	.L.str.19, 47

	.type	_ZL54benchmark_uniq_12benchmark_add_xor_runtime_checks_fail,@object # @_ZL54benchmark_uniq_12benchmark_add_xor_runtime_checks_fail
	.local	_ZL54benchmark_uniq_12benchmark_add_xor_runtime_checks_fail
	.comm	_ZL54benchmark_uniq_12benchmark_add_xor_runtime_checks_fail,8,8
	.type	.L.str.21,@object               # @.str.21
	.p2align	3, 0x0
.L.str.21:
	.asciz	"benchmark_add_xor_runtime_checks_fail<16, int>"
	.size	.L.str.21, 47

	.type	_ZL59benchmark_uniq_13benchmark_add_xor_no_runtime_checks_needed,@object # @_ZL59benchmark_uniq_13benchmark_add_xor_no_runtime_checks_needed
	.local	_ZL59benchmark_uniq_13benchmark_add_xor_no_runtime_checks_needed
	.comm	_ZL59benchmark_uniq_13benchmark_add_xor_no_runtime_checks_needed,8,8
	.type	.L.str.23,@object               # @.str.23
	.p2align	3, 0x0
.L.str.23:
	.asciz	"benchmark_add_xor_no_runtime_checks_needed<16, int>"
	.size	.L.str.23, 52

	.type	_ZL66benchmark_uniq_14benchmark_multiply_accumulate_runtime_checks_pass,@object # @_ZL66benchmark_uniq_14benchmark_multiply_accumulate_runtime_checks_pass
	.local	_ZL66benchmark_uniq_14benchmark_multiply_accumulate_runtime_checks_pass
	.comm	_ZL66benchmark_uniq_14benchmark_multiply_accumulate_runtime_checks_pass,8,8
	.type	.L.str.25,@object               # @.str.25
	.p2align	3, 0x0
.L.str.25:
	.asciz	"benchmark_multiply_accumulate_runtime_checks_pass<2, double>"
	.size	.L.str.25, 61

	.type	_ZL66benchmark_uniq_15benchmark_multiply_accumulate_runtime_checks_fail,@object # @_ZL66benchmark_uniq_15benchmark_multiply_accumulate_runtime_checks_fail
	.local	_ZL66benchmark_uniq_15benchmark_multiply_accumulate_runtime_checks_fail
	.comm	_ZL66benchmark_uniq_15benchmark_multiply_accumulate_runtime_checks_fail,8,8
	.type	.L.str.27,@object               # @.str.27
	.p2align	3, 0x0
.L.str.27:
	.asciz	"benchmark_multiply_accumulate_runtime_checks_fail<2, double>"
	.size	.L.str.27, 61

	.type	_ZL71benchmark_uniq_16benchmark_multiply_accumulate_no_runtime_checks_needed,@object # @_ZL71benchmark_uniq_16benchmark_multiply_accumulate_no_runtime_checks_needed
	.local	_ZL71benchmark_uniq_16benchmark_multiply_accumulate_no_runtime_checks_needed
	.comm	_ZL71benchmark_uniq_16benchmark_multiply_accumulate_no_runtime_checks_needed,8,8
	.type	.L.str.29,@object               # @.str.29
	.p2align	3, 0x0
.L.str.29:
	.asciz	"benchmark_multiply_accumulate_no_runtime_checks_needed<2, double>"
	.size	.L.str.29, 66

	.type	_ZL66benchmark_uniq_17benchmark_multiply_accumulate_runtime_checks_pass,@object # @_ZL66benchmark_uniq_17benchmark_multiply_accumulate_runtime_checks_pass
	.local	_ZL66benchmark_uniq_17benchmark_multiply_accumulate_runtime_checks_pass
	.comm	_ZL66benchmark_uniq_17benchmark_multiply_accumulate_runtime_checks_pass,8,8
	.type	.L.str.31,@object               # @.str.31
	.p2align	3, 0x0
.L.str.31:
	.asciz	"benchmark_multiply_accumulate_runtime_checks_pass<3, double>"
	.size	.L.str.31, 61

	.type	_ZL66benchmark_uniq_18benchmark_multiply_accumulate_runtime_checks_fail,@object # @_ZL66benchmark_uniq_18benchmark_multiply_accumulate_runtime_checks_fail
	.local	_ZL66benchmark_uniq_18benchmark_multiply_accumulate_runtime_checks_fail
	.comm	_ZL66benchmark_uniq_18benchmark_multiply_accumulate_runtime_checks_fail,8,8
	.type	.L.str.33,@object               # @.str.33
	.p2align	3, 0x0
.L.str.33:
	.asciz	"benchmark_multiply_accumulate_runtime_checks_fail<3, double>"
	.size	.L.str.33, 61

	.type	_ZL71benchmark_uniq_19benchmark_multiply_accumulate_no_runtime_checks_needed,@object # @_ZL71benchmark_uniq_19benchmark_multiply_accumulate_no_runtime_checks_needed
	.local	_ZL71benchmark_uniq_19benchmark_multiply_accumulate_no_runtime_checks_needed
	.comm	_ZL71benchmark_uniq_19benchmark_multiply_accumulate_no_runtime_checks_needed,8,8
	.type	.L.str.35,@object               # @.str.35
	.p2align	3, 0x0
.L.str.35:
	.asciz	"benchmark_multiply_accumulate_no_runtime_checks_needed<3, double>"
	.size	.L.str.35, 66

	.type	_ZL66benchmark_uniq_20benchmark_multiply_accumulate_runtime_checks_pass,@object # @_ZL66benchmark_uniq_20benchmark_multiply_accumulate_runtime_checks_pass
	.local	_ZL66benchmark_uniq_20benchmark_multiply_accumulate_runtime_checks_pass
	.comm	_ZL66benchmark_uniq_20benchmark_multiply_accumulate_runtime_checks_pass,8,8
	.type	.L.str.37,@object               # @.str.37
	.p2align	3, 0x0
.L.str.37:
	.asciz	"benchmark_multiply_accumulate_runtime_checks_pass<4, double>"
	.size	.L.str.37, 61

	.type	_ZL66benchmark_uniq_21benchmark_multiply_accumulate_runtime_checks_fail,@object # @_ZL66benchmark_uniq_21benchmark_multiply_accumulate_runtime_checks_fail
	.local	_ZL66benchmark_uniq_21benchmark_multiply_accumulate_runtime_checks_fail
	.comm	_ZL66benchmark_uniq_21benchmark_multiply_accumulate_runtime_checks_fail,8,8
	.type	.L.str.39,@object               # @.str.39
	.p2align	3, 0x0
.L.str.39:
	.asciz	"benchmark_multiply_accumulate_runtime_checks_fail<4, double>"
	.size	.L.str.39, 61

	.type	_ZL71benchmark_uniq_22benchmark_multiply_accumulate_no_runtime_checks_needed,@object # @_ZL71benchmark_uniq_22benchmark_multiply_accumulate_no_runtime_checks_needed
	.local	_ZL71benchmark_uniq_22benchmark_multiply_accumulate_no_runtime_checks_needed
	.comm	_ZL71benchmark_uniq_22benchmark_multiply_accumulate_no_runtime_checks_needed,8,8
	.type	.L.str.41,@object               # @.str.41
	.p2align	3, 0x0
.L.str.41:
	.asciz	"benchmark_multiply_accumulate_no_runtime_checks_needed<4, double>"
	.size	.L.str.41, 66

	.section	.init_array,"aw",@init_array
	.p2align	3, 0x0
	.dword	_GLOBAL__sub_I_Versioning.cpp
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
	.addrsig_sym _Z33benchmark_xor_runtime_checks_passILj4EiEvRN9benchmark5StateE
	.addrsig_sym _Z33benchmark_xor_runtime_checks_failILj4EiEvRN9benchmark5StateE
	.addrsig_sym _Z38benchmark_xor_no_runtime_checks_neededILj4EiEvRN9benchmark5StateE
	.addrsig_sym _Z33benchmark_xor_runtime_checks_passILj16EiEvRN9benchmark5StateE
	.addrsig_sym _Z33benchmark_xor_runtime_checks_failILj16EiEvRN9benchmark5StateE
	.addrsig_sym _Z38benchmark_xor_no_runtime_checks_neededILj16EiEvRN9benchmark5StateE
	.addrsig_sym _Z37benchmark_add_xor_runtime_checks_passILj4EiEvRN9benchmark5StateE
	.addrsig_sym _Z37benchmark_add_xor_runtime_checks_failILj4EiEvRN9benchmark5StateE
	.addrsig_sym _Z42benchmark_add_xor_no_runtime_checks_neededILj4EiEvRN9benchmark5StateE
	.addrsig_sym _Z37benchmark_add_xor_runtime_checks_passILj16EiEvRN9benchmark5StateE
	.addrsig_sym _Z37benchmark_add_xor_runtime_checks_failILj16EiEvRN9benchmark5StateE
	.addrsig_sym _Z42benchmark_add_xor_no_runtime_checks_neededILj16EiEvRN9benchmark5StateE
	.addrsig_sym _Z49benchmark_multiply_accumulate_runtime_checks_passILj2EdEvRN9benchmark5StateE
	.addrsig_sym _Z49benchmark_multiply_accumulate_runtime_checks_failILj2EdEvRN9benchmark5StateE
	.addrsig_sym _Z54benchmark_multiply_accumulate_no_runtime_checks_neededILj2EdEvRN9benchmark5StateE
	.addrsig_sym _Z49benchmark_multiply_accumulate_runtime_checks_passILj3EdEvRN9benchmark5StateE
	.addrsig_sym _Z49benchmark_multiply_accumulate_runtime_checks_failILj3EdEvRN9benchmark5StateE
	.addrsig_sym _Z54benchmark_multiply_accumulate_no_runtime_checks_neededILj3EdEvRN9benchmark5StateE
	.addrsig_sym _Z49benchmark_multiply_accumulate_runtime_checks_passILj4EdEvRN9benchmark5StateE
	.addrsig_sym _Z49benchmark_multiply_accumulate_runtime_checks_failILj4EdEvRN9benchmark5StateE
	.addrsig_sym _Z54benchmark_multiply_accumulate_no_runtime_checks_neededILj4EdEvRN9benchmark5StateE
	.addrsig_sym _GLOBAL__sub_I_Versioning.cpp
	.addrsig_sym _Unwind_Resume
