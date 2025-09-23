	.file	"RuntimeChecks.cpp"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _Z55benchVecWithRuntimeChecks4PointersAllDisjointIncreasingRN9benchmark5StateE
.LCPI0_0:
	.dword	0                               # 0x0
	.dword	4294967295                      # 0xffffffff
	.text
	.globl	_Z55benchVecWithRuntimeChecks4PointersAllDisjointIncreasingRN9benchmark5StateE
	.p2align	5
	.type	_Z55benchVecWithRuntimeChecks4PointersAllDisjointIncreasingRN9benchmark5StateE,@function
_Z55benchVecWithRuntimeChecks4PointersAllDisjointIncreasingRN9benchmark5StateE: # @_Z55benchVecWithRuntimeChecks4PointersAllDisjointIncreasingRN9benchmark5StateE
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	move	$fp, $a0
	ld.d	$a0, $a0, 32
	ld.w	$a0, $a0, 0
	st.w	$a0, $sp, 60
	ori	$a1, $zero, 1000
	alsl.w	$s2, $a0, $a1, 2
	bstrpick.d	$s1, $s2, 31, 2
	slli.d	$a0, $s1, 4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.LCPI0_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI0_0)
	st.d	$a0, $sp, 48
	vst	$vr0, $sp, 64
	beqz	$s2, .LBB0_4
# %bb.1:                                # %.lr.ph.i.preheader
	move	$s0, $a0
	slli.d	$s2, $s1, 2
	pcalau12i	$a0, %pc_hi20(_ZL3rng)
	addi.d	$s1, $a0, %pc_lo12(_ZL3rng)
	.p2align	4, , 16
.LBB0_2:                                # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
.Ltmp0:                                 # EH_LABEL
	addi.d	$a0, $sp, 64
	addi.d	$a2, $sp, 64
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.3:                                # %.noexc23
                                        #   in Loop: Header=BB0_2 Depth=1
	st.w	$a0, $s0, 0
	addi.d	$s2, $s2, -1
	addi.d	$s0, $s0, 4
	bnez	$s2, .LBB0_2
.LBB0_4:                                # %.loopexit
	ld.w	$s1, $fp, 28
	ld.d	$s0, $fp, 16
.Ltmp3:                                 # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp4:                                 # EH_LABEL
# %bb.5:                                # %_ZN9benchmark5State3endEv.exit.preheader
	bnez	$s1, .LBB0_10
# %bb.6:                                # %_ZN9benchmark5State3endEv.exit.preheader
	beqz	$s0, .LBB0_10
# %bb.7:
	ori	$s1, $zero, 1
	addi.d	$s2, $sp, 48
	.p2align	4, , 16
.LBB0_8:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 48
	ld.wu	$a1, $sp, 60
	st.d	$a0, $sp, 64
	alsl.d	$a2, $a1, $a0, 2
	st.d	$a2, $sp, 40
	slli.d	$a2, $a1, 3
	bstrpick.d	$a2, $a2, 33, 3
	alsl.d	$a2, $a2, $a0, 3
	st.d	$a2, $sp, 32
	alsl.wu	$a1, $a1, $a1, 1
	alsl.d	$a0, $a1, $a0, 2
	st.d	$a0, $sp, 24
	st.w	$s1, $sp, 20
.Ltmp5:                                 # EH_LABEL
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 40
	addi.d	$a2, $sp, 32
	addi.d	$a3, $sp, 24
	addi.d	$a4, $sp, 60
	addi.d	$a5, $sp, 20
	pcaddu18i	$ra, %call36(_ZL18callThroughOptnoneIRFvPjS0_S0_S0_jjEJS0_S0_S0_S0_RjiEEvOT_DpOT0_)
	jirl	$ra, $ra, 0
.Ltmp6:                                 # EH_LABEL
# %bb.9:                                # %_ZN9benchmark5State3endEv.exit
                                        #   in Loop: Header=BB0_8 Depth=1
	#APP
	#NO_APP
	addi.d	$s0, $s0, -1
	#MEMBARRIER
	bnez	$s0, .LBB0_8
.LBB0_10:                               # %_ZN9benchmark5State3endEv.exit._crit_edge
.Ltmp8:                                 # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp9:                                 # EH_LABEL
# %bb.11:                               # %_ZNK9benchmark5State13StateIteratorneERKS1_.exit
	ld.d	$a0, $sp, 48
	beqz	$a0, .LBB0_13
# %bb.12:                               # %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB0_13:                               # %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.LBB0_14:
.Ltmp10:                                # EH_LABEL
	b	.LBB0_17
.LBB0_15:
.Ltmp2:                                 # EH_LABEL
	b	.LBB0_17
.LBB0_16:
.Ltmp7:                                 # EH_LABEL
.LBB0_17:
	ld.d	$a1, $sp, 48
	beqz	$a1, .LBB0_19
# %bb.18:                               # %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i26
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
.LBB0_19:                               # %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit27
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	_Z55benchVecWithRuntimeChecks4PointersAllDisjointIncreasingRN9benchmark5StateE, .Lfunc_end0-_Z55benchVecWithRuntimeChecks4PointersAllDisjointIncreasingRN9benchmark5StateE
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
	.uleb128 .Ltmp10-.Lfunc_begin0          #     jumps to .Ltmp10
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp5-.Lfunc_begin0           # >> Call Site 4 <<
	.uleb128 .Ltmp6-.Ltmp5                  #   Call between .Ltmp5 and .Ltmp6
	.uleb128 .Ltmp7-.Lfunc_begin0           #     jumps to .Ltmp7
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp8-.Lfunc_begin0           # >> Call Site 5 <<
	.uleb128 .Ltmp9-.Ltmp8                  #   Call between .Ltmp8 and .Ltmp9
	.uleb128 .Ltmp10-.Lfunc_begin0          #     jumps to .Ltmp10
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp9-.Lfunc_begin0           # >> Call Site 6 <<
	.uleb128 .Lfunc_end0-.Ltmp9             #   Call between .Ltmp9 and .Lfunc_end0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZL18callThroughOptnoneIRFvPjS0_S0_S0_jjEJS0_S0_S0_S0_RjiEEvOT_DpOT0_
	.type	_ZL18callThroughOptnoneIRFvPjS0_S0_S0_jjEJS0_S0_S0_S0_RjiEEvOT_DpOT0_,@function
_ZL18callThroughOptnoneIRFvPjS0_S0_S0_jjEJS0_S0_S0_S0_RjiEEvOT_DpOT0_: # @_ZL18callThroughOptnoneIRFvPjS0_S0_S0_jjEJS0_S0_S0_S0_RjiEEvOT_DpOT0_
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -80
	.cfi_def_cfa_offset 80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	pcalau12i	$a6, %pc_hi20(_ZL29vecWithRuntimeChecks4PointersPjS_S_S_jj)
	addi.d	$a6, $a6, %pc_lo12(_ZL29vecWithRuntimeChecks4PointersPjS_S_S_jj)
	st.d	$a6, $sp, 64
	st.d	$a0, $sp, 56
	st.d	$a1, $sp, 48
	st.d	$a2, $sp, 40
	st.d	$a3, $sp, 32
	st.d	$a4, $sp, 24
	st.d	$a5, $sp, 16
	ld.d	$a6, $sp, 64
	ld.d	$a0, $sp, 56
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 48
	ld.d	$a1, $a1, 0
	ld.d	$a2, $sp, 40
	ld.d	$a2, $a2, 0
	ld.d	$a3, $sp, 32
	ld.d	$a3, $a3, 0
	ld.d	$a4, $sp, 24
	ld.w	$a4, $a4, 0
	ld.d	$a5, $sp, 16
	ld.w	$a5, $a5, 0
	jirl	$ra, $a6, 0
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end1:
	.size	_ZL18callThroughOptnoneIRFvPjS0_S0_S0_jjEJS0_S0_S0_S0_RjiEEvOT_DpOT0_, .Lfunc_end1-_ZL18callThroughOptnoneIRFvPjS0_S0_S0_jjEJS0_S0_S0_S0_RjiEEvOT_DpOT0_
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZL29vecWithRuntimeChecks4PointersPjS_S_S_jj
	.type	_ZL29vecWithRuntimeChecks4PointersPjS_S_S_jj,@function
_ZL29vecWithRuntimeChecks4PointersPjS_S_S_jj: # @_ZL29vecWithRuntimeChecks4PointersPjS_S_S_jj
# %bb.0:
	beqz	$a4, .LBB2_10
# %bb.1:                                # %.lr.ph.us.preheader
	move	$a6, $zero
	bstrpick.d	$t1, $a5, 31, 0
	bstrpick.d	$a5, $a4, 31, 0
	ori	$a7, $zero, 3996
	mul.d	$t0, $t1, $a7
	add.d	$t0, $a0, $t0
	alsl.d	$t0, $a5, $t0, 2
	alsl.d	$a7, $a5, $a7, 2
	add.d	$t2, $a1, $a7
	add.d	$t3, $a2, $a7
	sltu	$t2, $a0, $t2
	sltu	$t4, $a1, $t0
	and	$t2, $t2, $t4
	sltu	$t3, $a0, $t3
	sltu	$t4, $a2, $t0
	and	$t3, $t3, $t4
	slli.d	$t4, $a5, 2
	add.d	$a7, $a3, $a7
	or	$t2, $t2, $t3
	sltu	$a7, $a0, $a7
	sltu	$t0, $a3, $t0
	and	$a7, $a7, $t0
	or	$t2, $t2, $a7
	bstrpick.d	$a7, $a4, 31, 2
	slli.d	$a7, $a7, 2
	bstrpick.d	$t0, $t4, 33, 4
	slli.d	$t0, $t0, 4
	slli.d	$t1, $t1, 2
	sltui	$a4, $a4, 4
	or	$a4, $a4, $t2
	andi	$a4, $a4, 1
	ori	$t2, $zero, 1000
	b	.LBB2_3
	.p2align	4, , 16
.LBB2_2:                                # %._crit_edge.us
                                        #   in Loop: Header=BB2_3 Depth=1
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 4
	addi.w	$a6, $a6, 1
	add.d	$a0, $a0, $t1
	beq	$a6, $t2, .LBB2_11
.LBB2_3:                                # %.lr.ph.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_6 Depth 2
                                        #     Child Loop BB2_9 Depth 2
	#MEMBARRIER
	beqz	$a4, .LBB2_5
# %bb.4:                                #   in Loop: Header=BB2_3 Depth=1
	move	$t4, $zero
	b	.LBB2_8
	.p2align	4, , 16
.LBB2_5:                                # %vector.body.preheader
                                        #   in Loop: Header=BB2_3 Depth=1
	move	$t3, $zero
	.p2align	4, , 16
.LBB2_6:                                # %vector.body
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vldx	$vr0, $a1, $t3
	vldx	$vr1, $a2, $t3
	vldx	$vr2, $a3, $t3
	vadd.w	$vr0, $vr1, $vr0
	vadd.w	$vr0, $vr0, $vr2
	vstx	$vr0, $a0, $t3
	addi.d	$t3, $t3, 16
	bne	$t0, $t3, .LBB2_6
# %bb.7:                                # %middle.block
                                        #   in Loop: Header=BB2_3 Depth=1
	move	$t4, $a7
	beq	$a7, $a5, .LBB2_2
.LBB2_8:                                # %scalar.ph.preheader
                                        #   in Loop: Header=BB2_3 Depth=1
	slli.d	$t3, $t4, 2
	sub.d	$t4, $a5, $t4
	.p2align	4, , 16
.LBB2_9:                                # %scalar.ph
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.w	$t5, $a1, $t3
	ldx.w	$t6, $a2, $t3
	ldx.w	$t7, $a3, $t3
	add.d	$t5, $t6, $t5
	add.d	$t5, $t5, $t7
	stx.w	$t5, $a0, $t3
	addi.d	$t4, $t4, -1
	addi.d	$t3, $t3, 4
	bnez	$t4, .LBB2_9
	b	.LBB2_2
.LBB2_10:                               # %.split
	#MEMBARRIER
.LBB2_11:                               # %.split29.us
	ret
.Lfunc_end2:
	.size	_ZL29vecWithRuntimeChecks4PointersPjS_S_S_jj, .Lfunc_end2-_ZL29vecWithRuntimeChecks4PointersPjS_S_S_jj
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _Z55benchVecWithRuntimeChecks4PointersAllDisjointDecreasingRN9benchmark5StateE
.LCPI3_0:
	.dword	0                               # 0x0
	.dword	4294967295                      # 0xffffffff
	.text
	.globl	_Z55benchVecWithRuntimeChecks4PointersAllDisjointDecreasingRN9benchmark5StateE
	.p2align	5
	.type	_Z55benchVecWithRuntimeChecks4PointersAllDisjointDecreasingRN9benchmark5StateE,@function
_Z55benchVecWithRuntimeChecks4PointersAllDisjointDecreasingRN9benchmark5StateE: # @_Z55benchVecWithRuntimeChecks4PointersAllDisjointDecreasingRN9benchmark5StateE
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	move	$fp, $a0
	ld.d	$a0, $a0, 32
	ld.w	$a0, $a0, 0
	st.w	$a0, $sp, 60
	ori	$a1, $zero, 1000
	alsl.w	$s2, $a0, $a1, 2
	bstrpick.d	$s1, $s2, 31, 2
	slli.d	$a0, $s1, 4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.LCPI3_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI3_0)
	st.d	$a0, $sp, 48
	vst	$vr0, $sp, 64
	beqz	$s2, .LBB3_4
# %bb.1:                                # %.lr.ph.i.preheader
	move	$s0, $a0
	slli.d	$s2, $s1, 2
	pcalau12i	$a0, %pc_hi20(_ZL3rng)
	addi.d	$s1, $a0, %pc_lo12(_ZL3rng)
	.p2align	4, , 16
.LBB3_2:                                # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
.Ltmp11:                                # EH_LABEL
	addi.d	$a0, $sp, 64
	addi.d	$a2, $sp, 64
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE)
	jirl	$ra, $ra, 0
.Ltmp12:                                # EH_LABEL
# %bb.3:                                # %.noexc23
                                        #   in Loop: Header=BB3_2 Depth=1
	st.w	$a0, $s0, 0
	addi.d	$s2, $s2, -1
	addi.d	$s0, $s0, 4
	bnez	$s2, .LBB3_2
.LBB3_4:                                # %.loopexit
	ld.w	$s1, $fp, 28
	ld.d	$s0, $fp, 16
.Ltmp14:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp15:                                # EH_LABEL
# %bb.5:                                # %_ZN9benchmark5State3endEv.exit.preheader
	bnez	$s1, .LBB3_10
# %bb.6:                                # %_ZN9benchmark5State3endEv.exit.preheader
	beqz	$s0, .LBB3_10
# %bb.7:
	ori	$s1, $zero, 1
	addi.d	$s2, $sp, 48
	.p2align	4, , 16
.LBB3_8:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.wu	$a0, $sp, 60
	ld.d	$a1, $sp, 48
	alsl.wu	$a2, $a0, $a0, 1
	alsl.d	$a2, $a2, $a1, 2
	st.d	$a2, $sp, 64
	slli.d	$a2, $a0, 3
	bstrpick.d	$a2, $a2, 33, 3
	alsl.d	$a2, $a2, $a1, 3
	st.d	$a2, $sp, 40
	alsl.d	$a0, $a0, $a1, 2
	st.d	$a0, $sp, 32
	st.d	$a1, $sp, 24
	st.w	$s1, $sp, 20
.Ltmp16:                                # EH_LABEL
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 40
	addi.d	$a2, $sp, 32
	addi.d	$a3, $sp, 24
	addi.d	$a4, $sp, 60
	addi.d	$a5, $sp, 20
	pcaddu18i	$ra, %call36(_ZL18callThroughOptnoneIRFvPjS0_S0_S0_jjEJS0_S0_S0_S0_RjiEEvOT_DpOT0_)
	jirl	$ra, $ra, 0
.Ltmp17:                                # EH_LABEL
# %bb.9:                                # %_ZN9benchmark5State3endEv.exit
                                        #   in Loop: Header=BB3_8 Depth=1
	#APP
	#NO_APP
	addi.d	$s0, $s0, -1
	#MEMBARRIER
	bnez	$s0, .LBB3_8
.LBB3_10:                               # %_ZN9benchmark5State3endEv.exit._crit_edge
.Ltmp19:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp20:                                # EH_LABEL
# %bb.11:                               # %_ZNK9benchmark5State13StateIteratorneERKS1_.exit
	ld.d	$a0, $sp, 48
	beqz	$a0, .LBB3_13
# %bb.12:                               # %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB3_13:                               # %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.LBB3_14:
.Ltmp21:                                # EH_LABEL
	b	.LBB3_17
.LBB3_15:
.Ltmp13:                                # EH_LABEL
	b	.LBB3_17
.LBB3_16:
.Ltmp18:                                # EH_LABEL
.LBB3_17:
	ld.d	$a1, $sp, 48
	beqz	$a1, .LBB3_19
# %bb.18:                               # %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i26
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
.LBB3_19:                               # %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit27
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end3:
	.size	_Z55benchVecWithRuntimeChecks4PointersAllDisjointDecreasingRN9benchmark5StateE, .Lfunc_end3-_Z55benchVecWithRuntimeChecks4PointersAllDisjointDecreasingRN9benchmark5StateE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table3:
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
	.uleb128 .Ltmp15-.Ltmp14                #   Call between .Ltmp14 and .Ltmp15
	.uleb128 .Ltmp21-.Lfunc_begin1          #     jumps to .Ltmp21
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp16-.Lfunc_begin1          # >> Call Site 4 <<
	.uleb128 .Ltmp17-.Ltmp16                #   Call between .Ltmp16 and .Ltmp17
	.uleb128 .Ltmp18-.Lfunc_begin1          #     jumps to .Ltmp18
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp19-.Lfunc_begin1          # >> Call Site 5 <<
	.uleb128 .Ltmp20-.Ltmp19                #   Call between .Ltmp19 and .Ltmp20
	.uleb128 .Ltmp21-.Lfunc_begin1          #     jumps to .Ltmp21
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp20-.Lfunc_begin1          # >> Call Site 6 <<
	.uleb128 .Lfunc_end3-.Ltmp20            #   Call between .Ltmp20 and .Lfunc_end3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _Z42benchVecWithRuntimeChecks4PointersDEqualsARN9benchmark5StateE
.LCPI4_0:
	.dword	0                               # 0x0
	.dword	4294967295                      # 0xffffffff
	.text
	.globl	_Z42benchVecWithRuntimeChecks4PointersDEqualsARN9benchmark5StateE
	.p2align	5
	.type	_Z42benchVecWithRuntimeChecks4PointersDEqualsARN9benchmark5StateE,@function
_Z42benchVecWithRuntimeChecks4PointersDEqualsARN9benchmark5StateE: # @_Z42benchVecWithRuntimeChecks4PointersDEqualsARN9benchmark5StateE
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	move	$fp, $a0
	ld.d	$a0, $a0, 32
	ld.w	$a0, $a0, 0
	st.w	$a0, $sp, 60
	ori	$a1, $zero, 1000
	alsl.w	$s2, $a0, $a1, 2
	bstrpick.d	$s1, $s2, 31, 2
	slli.d	$a0, $s1, 4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.LCPI4_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI4_0)
	st.d	$a0, $sp, 48
	vst	$vr0, $sp, 64
	beqz	$s2, .LBB4_4
# %bb.1:                                # %.lr.ph.i.preheader
	move	$s0, $a0
	slli.d	$s2, $s1, 2
	pcalau12i	$a0, %pc_hi20(_ZL3rng)
	addi.d	$s1, $a0, %pc_lo12(_ZL3rng)
	.p2align	4, , 16
.LBB4_2:                                # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
.Ltmp22:                                # EH_LABEL
	addi.d	$a0, $sp, 64
	addi.d	$a2, $sp, 64
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE)
	jirl	$ra, $ra, 0
.Ltmp23:                                # EH_LABEL
# %bb.3:                                # %.noexc23
                                        #   in Loop: Header=BB4_2 Depth=1
	st.w	$a0, $s0, 0
	addi.d	$s2, $s2, -1
	addi.d	$s0, $s0, 4
	bnez	$s2, .LBB4_2
.LBB4_4:                                # %.loopexit
	ld.w	$s1, $fp, 28
	ld.d	$s0, $fp, 16
.Ltmp25:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp26:                                # EH_LABEL
# %bb.5:                                # %_ZN9benchmark5State3endEv.exit.preheader
	bnez	$s1, .LBB4_10
# %bb.6:                                # %_ZN9benchmark5State3endEv.exit.preheader
	beqz	$s0, .LBB4_10
# %bb.7:
	ori	$s1, $zero, 1
	addi.d	$s2, $sp, 48
	.p2align	4, , 16
.LBB4_8:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 48
	ld.wu	$a1, $sp, 60
	st.d	$a0, $sp, 64
	alsl.d	$a2, $a1, $a0, 2
	st.d	$a2, $sp, 40
	slli.d	$a1, $a1, 3
	bstrpick.d	$a1, $a1, 33, 3
	alsl.d	$a1, $a1, $a0, 3
	st.d	$a1, $sp, 32
	st.d	$a0, $sp, 24
	st.w	$s1, $sp, 20
.Ltmp27:                                # EH_LABEL
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 40
	addi.d	$a2, $sp, 32
	addi.d	$a3, $sp, 24
	addi.d	$a4, $sp, 60
	addi.d	$a5, $sp, 20
	pcaddu18i	$ra, %call36(_ZL18callThroughOptnoneIRFvPjS0_S0_S0_jjEJS0_S0_S0_S0_RjiEEvOT_DpOT0_)
	jirl	$ra, $ra, 0
.Ltmp28:                                # EH_LABEL
# %bb.9:                                # %_ZN9benchmark5State3endEv.exit
                                        #   in Loop: Header=BB4_8 Depth=1
	#APP
	#NO_APP
	addi.d	$s0, $s0, -1
	#MEMBARRIER
	bnez	$s0, .LBB4_8
.LBB4_10:                               # %_ZN9benchmark5State3endEv.exit._crit_edge
.Ltmp30:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp31:                                # EH_LABEL
# %bb.11:                               # %_ZNK9benchmark5State13StateIteratorneERKS1_.exit
	ld.d	$a0, $sp, 48
	beqz	$a0, .LBB4_13
# %bb.12:                               # %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB4_13:                               # %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.LBB4_14:
.Ltmp32:                                # EH_LABEL
	b	.LBB4_17
.LBB4_15:
.Ltmp24:                                # EH_LABEL
	b	.LBB4_17
.LBB4_16:
.Ltmp29:                                # EH_LABEL
.LBB4_17:
	ld.d	$a1, $sp, 48
	beqz	$a1, .LBB4_19
# %bb.18:                               # %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i26
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
.LBB4_19:                               # %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit27
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end4:
	.size	_Z42benchVecWithRuntimeChecks4PointersDEqualsARN9benchmark5StateE, .Lfunc_end4-_Z42benchVecWithRuntimeChecks4PointersDEqualsARN9benchmark5StateE
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
	.uleb128 .Ltmp22-.Lfunc_begin2          #   Call between .Lfunc_begin2 and .Ltmp22
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp22-.Lfunc_begin2          # >> Call Site 2 <<
	.uleb128 .Ltmp23-.Ltmp22                #   Call between .Ltmp22 and .Ltmp23
	.uleb128 .Ltmp24-.Lfunc_begin2          #     jumps to .Ltmp24
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp25-.Lfunc_begin2          # >> Call Site 3 <<
	.uleb128 .Ltmp26-.Ltmp25                #   Call between .Ltmp25 and .Ltmp26
	.uleb128 .Ltmp32-.Lfunc_begin2          #     jumps to .Ltmp32
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp27-.Lfunc_begin2          # >> Call Site 4 <<
	.uleb128 .Ltmp28-.Ltmp27                #   Call between .Ltmp27 and .Ltmp28
	.uleb128 .Ltmp29-.Lfunc_begin2          #     jumps to .Ltmp29
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp30-.Lfunc_begin2          # >> Call Site 5 <<
	.uleb128 .Ltmp31-.Ltmp30                #   Call between .Ltmp30 and .Ltmp31
	.uleb128 .Ltmp32-.Lfunc_begin2          #     jumps to .Ltmp32
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp31-.Lfunc_begin2          # >> Call Site 6 <<
	.uleb128 .Lfunc_end4-.Ltmp31            #   Call between .Ltmp31 and .Lfunc_end4
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _Z42benchVecWithRuntimeChecks4PointersDBeforeARN9benchmark5StateE
.LCPI5_0:
	.dword	0                               # 0x0
	.dword	4294967295                      # 0xffffffff
	.text
	.globl	_Z42benchVecWithRuntimeChecks4PointersDBeforeARN9benchmark5StateE
	.p2align	5
	.type	_Z42benchVecWithRuntimeChecks4PointersDBeforeARN9benchmark5StateE,@function
_Z42benchVecWithRuntimeChecks4PointersDBeforeARN9benchmark5StateE: # @_Z42benchVecWithRuntimeChecks4PointersDBeforeARN9benchmark5StateE
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	move	$fp, $a0
	ld.d	$a0, $a0, 32
	ld.w	$a0, $a0, 0
	st.w	$a0, $sp, 60
	ori	$a1, $zero, 1000
	alsl.w	$s2, $a0, $a1, 2
	bstrpick.d	$s1, $s2, 31, 2
	slli.d	$a0, $s1, 4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI5_0)
	st.d	$a0, $sp, 48
	vst	$vr0, $sp, 64
	beqz	$s2, .LBB5_4
# %bb.1:                                # %.lr.ph.i.preheader
	move	$s0, $a0
	slli.d	$s2, $s1, 2
	pcalau12i	$a0, %pc_hi20(_ZL3rng)
	addi.d	$s1, $a0, %pc_lo12(_ZL3rng)
	.p2align	4, , 16
.LBB5_2:                                # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
.Ltmp33:                                # EH_LABEL
	addi.d	$a0, $sp, 64
	addi.d	$a2, $sp, 64
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE)
	jirl	$ra, $ra, 0
.Ltmp34:                                # EH_LABEL
# %bb.3:                                # %.noexc23
                                        #   in Loop: Header=BB5_2 Depth=1
	st.w	$a0, $s0, 0
	addi.d	$s2, $s2, -1
	addi.d	$s0, $s0, 4
	bnez	$s2, .LBB5_2
.LBB5_4:                                # %.loopexit
	ld.w	$s1, $fp, 28
	ld.d	$s0, $fp, 16
.Ltmp36:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp37:                                # EH_LABEL
# %bb.5:                                # %_ZN9benchmark5State3endEv.exit.preheader
	bnez	$s1, .LBB5_10
# %bb.6:                                # %_ZN9benchmark5State3endEv.exit.preheader
	beqz	$s0, .LBB5_10
# %bb.7:
	ori	$s1, $zero, 1
	addi.d	$s2, $sp, 48
	.p2align	4, , 16
.LBB5_8:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 48
	ld.w	$a1, $sp, 60
	addi.d	$a2, $a0, 8
	st.d	$a2, $sp, 64
	slli.d	$a2, $a1, 3
	bstrpick.d	$a2, $a2, 33, 3
	alsl.d	$a2, $a2, $a0, 3
	st.d	$a2, $sp, 40
	alsl.wu	$a1, $a1, $a1, 1
	alsl.d	$a1, $a1, $a0, 2
	st.d	$a1, $sp, 32
	st.d	$a0, $sp, 24
	st.w	$s1, $sp, 20
.Ltmp38:                                # EH_LABEL
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 40
	addi.d	$a2, $sp, 32
	addi.d	$a3, $sp, 24
	addi.d	$a4, $sp, 60
	addi.d	$a5, $sp, 20
	pcaddu18i	$ra, %call36(_ZL18callThroughOptnoneIRFvPjS0_S0_S0_jjEJS0_S0_S0_S0_RjiEEvOT_DpOT0_)
	jirl	$ra, $ra, 0
.Ltmp39:                                # EH_LABEL
# %bb.9:                                # %_ZN9benchmark5State3endEv.exit
                                        #   in Loop: Header=BB5_8 Depth=1
	#APP
	#NO_APP
	addi.d	$s0, $s0, -1
	#MEMBARRIER
	bnez	$s0, .LBB5_8
.LBB5_10:                               # %_ZN9benchmark5State3endEv.exit._crit_edge
.Ltmp41:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp42:                                # EH_LABEL
# %bb.11:                               # %_ZNK9benchmark5State13StateIteratorneERKS1_.exit
	ld.d	$a0, $sp, 48
	beqz	$a0, .LBB5_13
# %bb.12:                               # %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB5_13:                               # %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.LBB5_14:
.Ltmp43:                                # EH_LABEL
	b	.LBB5_17
.LBB5_15:
.Ltmp35:                                # EH_LABEL
	b	.LBB5_17
.LBB5_16:
.Ltmp40:                                # EH_LABEL
.LBB5_17:
	ld.d	$a1, $sp, 48
	beqz	$a1, .LBB5_19
# %bb.18:                               # %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i26
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
.LBB5_19:                               # %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit27
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end5:
	.size	_Z42benchVecWithRuntimeChecks4PointersDBeforeARN9benchmark5StateE, .Lfunc_end5-_Z42benchVecWithRuntimeChecks4PointersDBeforeARN9benchmark5StateE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table5:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Lfunc_begin3-.Lfunc_begin3    # >> Call Site 1 <<
	.uleb128 .Ltmp33-.Lfunc_begin3          #   Call between .Lfunc_begin3 and .Ltmp33
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp33-.Lfunc_begin3          # >> Call Site 2 <<
	.uleb128 .Ltmp34-.Ltmp33                #   Call between .Ltmp33 and .Ltmp34
	.uleb128 .Ltmp35-.Lfunc_begin3          #     jumps to .Ltmp35
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp36-.Lfunc_begin3          # >> Call Site 3 <<
	.uleb128 .Ltmp37-.Ltmp36                #   Call between .Ltmp36 and .Ltmp37
	.uleb128 .Ltmp43-.Lfunc_begin3          #     jumps to .Ltmp43
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp38-.Lfunc_begin3          # >> Call Site 4 <<
	.uleb128 .Ltmp39-.Ltmp38                #   Call between .Ltmp38 and .Ltmp39
	.uleb128 .Ltmp40-.Lfunc_begin3          #     jumps to .Ltmp40
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp41-.Lfunc_begin3          # >> Call Site 5 <<
	.uleb128 .Ltmp42-.Ltmp41                #   Call between .Ltmp41 and .Ltmp42
	.uleb128 .Ltmp43-.Lfunc_begin3          #     jumps to .Ltmp43
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp42-.Lfunc_begin3          # >> Call Site 6 <<
	.uleb128 .Lfunc_end5-.Ltmp42            #   Call between .Ltmp42 and .Lfunc_end5
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _Z41benchVecWithRuntimeChecks4PointersDAfterARN9benchmark5StateE
.LCPI6_0:
	.dword	0                               # 0x0
	.dword	4294967295                      # 0xffffffff
	.text
	.globl	_Z41benchVecWithRuntimeChecks4PointersDAfterARN9benchmark5StateE
	.p2align	5
	.type	_Z41benchVecWithRuntimeChecks4PointersDAfterARN9benchmark5StateE,@function
_Z41benchVecWithRuntimeChecks4PointersDAfterARN9benchmark5StateE: # @_Z41benchVecWithRuntimeChecks4PointersDAfterARN9benchmark5StateE
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	move	$fp, $a0
	ld.d	$a0, $a0, 32
	ld.w	$a0, $a0, 0
	st.w	$a0, $sp, 60
	ori	$a1, $zero, 1000
	alsl.w	$s2, $a0, $a1, 2
	bstrpick.d	$s1, $s2, 31, 2
	slli.d	$a0, $s1, 4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.LCPI6_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI6_0)
	st.d	$a0, $sp, 48
	vst	$vr0, $sp, 64
	beqz	$s2, .LBB6_4
# %bb.1:                                # %.lr.ph.i.preheader
	move	$s0, $a0
	slli.d	$s2, $s1, 2
	pcalau12i	$a0, %pc_hi20(_ZL3rng)
	addi.d	$s1, $a0, %pc_lo12(_ZL3rng)
	.p2align	4, , 16
.LBB6_2:                                # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
.Ltmp44:                                # EH_LABEL
	addi.d	$a0, $sp, 64
	addi.d	$a2, $sp, 64
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE)
	jirl	$ra, $ra, 0
.Ltmp45:                                # EH_LABEL
# %bb.3:                                # %.noexc23
                                        #   in Loop: Header=BB6_2 Depth=1
	st.w	$a0, $s0, 0
	addi.d	$s2, $s2, -1
	addi.d	$s0, $s0, 4
	bnez	$s2, .LBB6_2
.LBB6_4:                                # %.loopexit
	ld.w	$s1, $fp, 28
	ld.d	$s0, $fp, 16
.Ltmp47:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp48:                                # EH_LABEL
# %bb.5:                                # %_ZN9benchmark5State3endEv.exit.preheader
	bnez	$s1, .LBB6_10
# %bb.6:                                # %_ZN9benchmark5State3endEv.exit.preheader
	beqz	$s0, .LBB6_10
# %bb.7:
	ori	$s1, $zero, 1
	addi.d	$s2, $sp, 48
	.p2align	4, , 16
.LBB6_8:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 48
	ld.w	$a1, $sp, 60
	st.d	$a0, $sp, 64
	slli.d	$a2, $a1, 3
	bstrpick.d	$a2, $a2, 33, 3
	alsl.d	$a2, $a2, $a0, 3
	st.d	$a2, $sp, 40
	alsl.wu	$a1, $a1, $a1, 1
	alsl.d	$a1, $a1, $a0, 2
	st.d	$a1, $sp, 32
	addi.d	$a0, $a0, 8
	st.d	$a0, $sp, 24
	st.w	$s1, $sp, 20
.Ltmp49:                                # EH_LABEL
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 40
	addi.d	$a2, $sp, 32
	addi.d	$a3, $sp, 24
	addi.d	$a4, $sp, 60
	addi.d	$a5, $sp, 20
	pcaddu18i	$ra, %call36(_ZL18callThroughOptnoneIRFvPjS0_S0_S0_jjEJS0_S0_S0_S0_RjiEEvOT_DpOT0_)
	jirl	$ra, $ra, 0
.Ltmp50:                                # EH_LABEL
# %bb.9:                                # %_ZN9benchmark5State3endEv.exit
                                        #   in Loop: Header=BB6_8 Depth=1
	#APP
	#NO_APP
	addi.d	$s0, $s0, -1
	#MEMBARRIER
	bnez	$s0, .LBB6_8
.LBB6_10:                               # %_ZN9benchmark5State3endEv.exit._crit_edge
.Ltmp52:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
.Ltmp53:                                # EH_LABEL
# %bb.11:                               # %_ZNK9benchmark5State13StateIteratorneERKS1_.exit
	ld.d	$a0, $sp, 48
	beqz	$a0, .LBB6_13
# %bb.12:                               # %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB6_13:                               # %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.LBB6_14:
.Ltmp54:                                # EH_LABEL
	b	.LBB6_17
.LBB6_15:
.Ltmp46:                                # EH_LABEL
	b	.LBB6_17
.LBB6_16:
.Ltmp51:                                # EH_LABEL
.LBB6_17:
	ld.d	$a1, $sp, 48
	beqz	$a1, .LBB6_19
# %bb.18:                               # %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i26
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
.LBB6_19:                               # %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit27
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end6:
	.size	_Z41benchVecWithRuntimeChecks4PointersDAfterARN9benchmark5StateE, .Lfunc_end6-_Z41benchVecWithRuntimeChecks4PointersDAfterARN9benchmark5StateE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table6:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Lfunc_begin4-.Lfunc_begin4    # >> Call Site 1 <<
	.uleb128 .Ltmp44-.Lfunc_begin4          #   Call between .Lfunc_begin4 and .Ltmp44
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp44-.Lfunc_begin4          # >> Call Site 2 <<
	.uleb128 .Ltmp45-.Ltmp44                #   Call between .Ltmp44 and .Ltmp45
	.uleb128 .Ltmp46-.Lfunc_begin4          #     jumps to .Ltmp46
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp47-.Lfunc_begin4          # >> Call Site 3 <<
	.uleb128 .Ltmp48-.Ltmp47                #   Call between .Ltmp47 and .Ltmp48
	.uleb128 .Ltmp54-.Lfunc_begin4          #     jumps to .Ltmp54
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp49-.Lfunc_begin4          # >> Call Site 4 <<
	.uleb128 .Ltmp50-.Ltmp49                #   Call between .Ltmp49 and .Ltmp50
	.uleb128 .Ltmp51-.Lfunc_begin4          #     jumps to .Ltmp51
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp52-.Lfunc_begin4          # >> Call Site 5 <<
	.uleb128 .Ltmp53-.Ltmp52                #   Call between .Ltmp52 and .Ltmp53
	.uleb128 .Ltmp54-.Lfunc_begin4          #     jumps to .Ltmp54
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp53-.Lfunc_begin4          # >> Call Site 6 <<
	.uleb128 .Lfunc_end6-.Ltmp53            #   Call between .Ltmp53 and .Lfunc_end6
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end4:
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
	bltu	$a2, $s2, .LBB7_5
# %bb.1:
	addi.w	$s4, $s2, 0
	addi.w	$s3, $s2, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv)
	jirl	$ra, $ra, 0
	bstrpick.d	$s1, $s3, 31, 0
	mul.d	$a0, $a0, $s1
	addi.w	$a1, $a0, 0
	bltu	$s4, $a1, .LBB7_4
# %bb.2:
	nor	$a2, $s2, $zero
	addi.w	$a2, $a2, 0
	mod.wu	$s2, $a2, $s3
	bgeu	$a1, $s2, .LBB7_4
	.p2align	4, , 16
.LBB7_3:                                # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv)
	jirl	$ra, $ra, 0
	mul.d	$a0, $a0, $s1
	addi.w	$a1, $a0, 0
	bltu	$a1, $s2, .LBB7_3
.LBB7_4:                                # %_ZNSt24uniform_int_distributionImE5_S_ndImSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEjEET1_RT0_S4_.exit
	srli.d	$a0, $a0, 32
	b	.LBB7_10
.LBB7_5:
	move	$s1, $a0
	addi.w	$a0, $zero, -1
	lu32i.d	$a0, 0
	bne	$s2, $a0, .LBB7_7
# %bb.6:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv)
	jirl	$ra, $ra, 0
	b	.LBB7_10
.LBB7_7:                                # %.preheader
	srli.d	$s3, $s2, 32
	.p2align	4, , 16
.LBB7_8:                                # =>This Inner Loop Header: Depth=1
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
	bltu	$s2, $a0, .LBB7_8
# %bb.9:                                #   in Loop: Header=BB7_8 Depth=1
	sltu	$a1, $a0, $a1
	bnez	$a1, .LBB7_8
.LBB7_10:                               # %.loopexit
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
.Lfunc_end7:
	.size	_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE, .Lfunc_end7-_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE
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
	bltu	$a2, $a1, .LBB8_6
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
.LBB8_2:                                # %vector.body
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
	bne	$a2, $a4, .LBB8_2
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
.LBB8_4:                                # %vector.body12
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
	bnez	$a2, .LBB8_4
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
.LBB8_6:
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
.Lfunc_end8:
	.size	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv, .Lfunc_end8-_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv
	.cfi_endproc
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	5                               # -- Begin function _GLOBAL__sub_I_RuntimeChecks.cpp
	.type	_GLOBAL__sub_I_RuntimeChecks.cpp,@function
_GLOBAL__sub_I_RuntimeChecks.cpp:       # @_GLOBAL__sub_I_RuntimeChecks.cpp
.Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception5
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
.LBB9_1:                                # =>This Inner Loop Header: Depth=1
	srli.d	$a6, $a2, 30
	xor	$a2, $a6, $a2
	mul.d	$a2, $a2, $a4
	add.d	$a2, $a3, $a2
	bstrpick.d	$a2, $a2, 31, 0
	st.d	$a2, $a1, 0
	addi.d	$a3, $a3, 1
	addi.d	$a1, $a1, 8
	bne	$a3, $a5, .LBB9_1
# %bb.2:                                # %__cxx_global_var_init.1.exit
	ori	$a1, $zero, 624
	stptr.d	$a1, $a0, 4992
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	addi.d	$s1, $sp, 24
	st.d	$s1, $sp, 8
	ori	$a0, $zero, 55
	st.d	$a0, $sp, 40
.Ltmp55:                                # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp56:                                # EH_LABEL
# %bb.3:                                # %.noexc.i
	ld.d	$a1, $sp, 40
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	pcalau12i	$a2, %pc_hi20(.L.str)
	addi.d	$a2, $a2, %pc_lo12(.L.str)
	vld	$vr0, $a2, 16
	vst	$vr0, $a0, 16
	vld	$vr0, $a2, 0
	vst	$vr0, $a0, 0
	vld	$vr0, $a2, 32
	ld.d	$a2, $a2, 47
	vst	$vr0, $a0, 32
	st.d	$a2, $a0, 47
	st.d	$a1, $sp, 16
	stx.b	$zero, $a0, $a1
	ori	$s3, $zero, 1
.Ltmp58:                                # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp59:                                # EH_LABEL
# %bb.4:
	pcalau12i	$a0, %got_pc_hi20(_ZTVN9benchmark8internal17FunctionBenchmarkE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTVN9benchmark8internal17FunctionBenchmarkE)
	addi.d	$s2, $a0, 16
	st.d	$s2, $fp, 0
	pcalau12i	$a0, %pc_hi20(_Z55benchVecWithRuntimeChecks4PointersAllDisjointIncreasingRN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_Z55benchVecWithRuntimeChecks4PointersAllDisjointIncreasingRN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp60:                                # EH_LABEL
	move	$s3, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp61:                                # EH_LABEL
# %bb.5:
.Ltmp62:                                # EH_LABEL
	ori	$a1, $zero, 32
	move	$s3, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp63:                                # EH_LABEL
# %bb.6:
.Ltmp64:                                # EH_LABEL
	ori	$a1, $zero, 1000
	move	$s3, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp65:                                # EH_LABEL
# %bb.7:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB9_9
# %bb.8:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB9_9:                                # %__cxx_global_var_init.2.exit
	pcalau12i	$a0, %pc_hi20(_ZL27benchmark_uniq_2_benchmark_)
	st.d	$s0, $a0, %pc_lo12(_ZL27benchmark_uniq_2_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s1, $sp, 8
	ori	$a0, $zero, 55
	st.d	$a0, $sp, 40
.Ltmp67:                                # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp68:                                # EH_LABEL
# %bb.10:                               # %.noexc.i4
	ld.d	$a1, $sp, 40
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	pcalau12i	$a2, %pc_hi20(.L.str.4)
	addi.d	$a2, $a2, %pc_lo12(.L.str.4)
	vld	$vr0, $a2, 16
	vst	$vr0, $a0, 16
	vld	$vr0, $a2, 0
	vst	$vr0, $a0, 0
	vld	$vr0, $a2, 32
	ld.d	$a2, $a2, 47
	vst	$vr0, $a0, 32
	st.d	$a2, $a0, 47
	st.d	$a1, $sp, 16
	stx.b	$zero, $a0, $a1
	ori	$s3, $zero, 1
.Ltmp70:                                # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp71:                                # EH_LABEL
# %bb.11:
	st.d	$s2, $fp, 0
	pcalau12i	$a0, %pc_hi20(_Z55benchVecWithRuntimeChecks4PointersAllDisjointDecreasingRN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_Z55benchVecWithRuntimeChecks4PointersAllDisjointDecreasingRN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp72:                                # EH_LABEL
	move	$s3, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp73:                                # EH_LABEL
# %bb.12:
.Ltmp74:                                # EH_LABEL
	ori	$a1, $zero, 32
	move	$s3, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp75:                                # EH_LABEL
# %bb.13:
.Ltmp76:                                # EH_LABEL
	ori	$a1, $zero, 1000
	move	$s3, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp77:                                # EH_LABEL
# %bb.14:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB9_16
# %bb.15:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB9_16:                               # %__cxx_global_var_init.3.exit
	pcalau12i	$a0, %pc_hi20(_ZL27benchmark_uniq_3_benchmark_)
	st.d	$s0, $a0, %pc_lo12(_ZL27benchmark_uniq_3_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s1, $sp, 8
	ori	$a0, $zero, 42
	st.d	$a0, $sp, 40
.Ltmp79:                                # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp80:                                # EH_LABEL
# %bb.17:                               # %.noexc.i13
	ld.d	$a1, $sp, 40
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	pcalau12i	$a2, %pc_hi20(.L.str.6)
	addi.d	$a2, $a2, %pc_lo12(.L.str.6)
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
.Ltmp82:                                # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp83:                                # EH_LABEL
# %bb.18:
	st.d	$s2, $fp, 0
	pcalau12i	$a0, %pc_hi20(_Z42benchVecWithRuntimeChecks4PointersDEqualsARN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_Z42benchVecWithRuntimeChecks4PointersDEqualsARN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp84:                                # EH_LABEL
	move	$s3, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp85:                                # EH_LABEL
# %bb.19:
.Ltmp86:                                # EH_LABEL
	ori	$a1, $zero, 32
	move	$s3, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp87:                                # EH_LABEL
# %bb.20:
.Ltmp88:                                # EH_LABEL
	ori	$a1, $zero, 1000
	move	$s3, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp89:                                # EH_LABEL
# %bb.21:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB9_23
# %bb.22:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i17
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB9_23:                               # %__cxx_global_var_init.5.exit
	pcalau12i	$a0, %pc_hi20(_ZL27benchmark_uniq_4_benchmark_)
	st.d	$s0, $a0, %pc_lo12(_ZL27benchmark_uniq_4_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s1, $sp, 8
	ori	$a0, $zero, 42
	st.d	$a0, $sp, 40
.Ltmp91:                                # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp92:                                # EH_LABEL
# %bb.24:                               # %.noexc.i22
	ld.d	$a1, $sp, 40
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	pcalau12i	$a2, %pc_hi20(.L.str.8)
	addi.d	$a2, $a2, %pc_lo12(.L.str.8)
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
.Ltmp94:                                # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp95:                                # EH_LABEL
# %bb.25:
	st.d	$s2, $fp, 0
	pcalau12i	$a0, %pc_hi20(_Z42benchVecWithRuntimeChecks4PointersDBeforeARN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_Z42benchVecWithRuntimeChecks4PointersDBeforeARN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp96:                                # EH_LABEL
	move	$s3, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp97:                                # EH_LABEL
# %bb.26:
.Ltmp98:                                # EH_LABEL
	ori	$a1, $zero, 32
	move	$s3, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp99:                                # EH_LABEL
# %bb.27:
.Ltmp100:                               # EH_LABEL
	ori	$a1, $zero, 1000
	move	$s3, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp101:                               # EH_LABEL
# %bb.28:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB9_30
# %bb.29:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i26
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB9_30:                               # %__cxx_global_var_init.7.exit
	pcalau12i	$a0, %pc_hi20(_ZL27benchmark_uniq_5_benchmark_)
	st.d	$s0, $a0, %pc_lo12(_ZL27benchmark_uniq_5_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s1, $sp, 8
	ori	$a0, $zero, 41
	st.d	$a0, $sp, 40
.Ltmp103:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp104:                               # EH_LABEL
# %bb.31:                               # %.noexc.i31
	ld.d	$a1, $sp, 40
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	pcalau12i	$a2, %pc_hi20(.L.str.10)
	addi.d	$a2, $a2, %pc_lo12(.L.str.10)
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
.Ltmp106:                               # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp107:                               # EH_LABEL
# %bb.32:
	st.d	$s2, $fp, 0
	pcalau12i	$a0, %pc_hi20(_Z41benchVecWithRuntimeChecks4PointersDAfterARN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_Z41benchVecWithRuntimeChecks4PointersDAfterARN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp108:                               # EH_LABEL
	move	$s3, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp109:                               # EH_LABEL
# %bb.33:
.Ltmp110:                               # EH_LABEL
	ori	$a1, $zero, 32
	move	$s3, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp111:                               # EH_LABEL
# %bb.34:
.Ltmp112:                               # EH_LABEL
	ori	$a1, $zero, 1000
	move	$s3, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp113:                               # EH_LABEL
# %bb.35:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB9_37
# %bb.36:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i35
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB9_37:                               # %__cxx_global_var_init.9.exit
	pcalau12i	$a0, %pc_hi20(_ZL27benchmark_uniq_6_benchmark_)
	st.d	$s0, $a0, %pc_lo12(_ZL27benchmark_uniq_6_benchmark_)
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.LBB9_38:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i28
.Ltmp105:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB9_48
.LBB9_39:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i19
.Ltmp93:                                # EH_LABEL
	move	$s0, $a0
	b	.LBB9_48
.LBB9_40:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i10
.Ltmp81:                                # EH_LABEL
	move	$s0, $a0
	b	.LBB9_48
.LBB9_41:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i1
.Ltmp69:                                # EH_LABEL
	move	$s0, $a0
	b	.LBB9_48
.LBB9_42:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i
.Ltmp57:                                # EH_LABEL
	move	$s0, $a0
	b	.LBB9_48
.LBB9_43:
.Ltmp114:                               # EH_LABEL
	ld.d	$a2, $sp, 8
	move	$s0, $a0
	bne	$a2, $s1, .LBB9_47
	b	.LBB9_51
.LBB9_44:
.Ltmp102:                               # EH_LABEL
	ld.d	$a2, $sp, 8
	move	$s0, $a0
	bne	$a2, $s1, .LBB9_47
	b	.LBB9_51
.LBB9_45:
.Ltmp90:                                # EH_LABEL
	ld.d	$a2, $sp, 8
	move	$s0, $a0
	bne	$a2, $s1, .LBB9_47
	b	.LBB9_51
.LBB9_46:
.Ltmp78:                                # EH_LABEL
	ld.d	$a2, $sp, 8
	move	$s0, $a0
	beq	$a2, $s1, .LBB9_51
.LBB9_47:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i
	ld.d	$a0, $sp, 24
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	beqz	$s3, .LBB9_49
.LBB9_48:                               # %common.resume.sink.split
	ori	$a1, $zero, 232
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB9_49:                               # %common.resume
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB9_50:
.Ltmp66:                                # EH_LABEL
	ld.d	$a2, $sp, 8
	move	$s0, $a0
	bne	$a2, $s1, .LBB9_47
.LBB9_51:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i7.i
	beqz	$s3, .LBB9_49
	b	.LBB9_48
.Lfunc_end9:
	.size	_GLOBAL__sub_I_RuntimeChecks.cpp, .Lfunc_end9-_GLOBAL__sub_I_RuntimeChecks.cpp
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table9:
.Lexception5:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end5-.Lcst_begin5
.Lcst_begin5:
	.uleb128 .Lfunc_begin5-.Lfunc_begin5    # >> Call Site 1 <<
	.uleb128 .Ltmp55-.Lfunc_begin5          #   Call between .Lfunc_begin5 and .Ltmp55
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp55-.Lfunc_begin5          # >> Call Site 2 <<
	.uleb128 .Ltmp56-.Ltmp55                #   Call between .Ltmp55 and .Ltmp56
	.uleb128 .Ltmp57-.Lfunc_begin5          #     jumps to .Ltmp57
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp58-.Lfunc_begin5          # >> Call Site 3 <<
	.uleb128 .Ltmp65-.Ltmp58                #   Call between .Ltmp58 and .Ltmp65
	.uleb128 .Ltmp66-.Lfunc_begin5          #     jumps to .Ltmp66
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp65-.Lfunc_begin5          # >> Call Site 4 <<
	.uleb128 .Ltmp67-.Ltmp65                #   Call between .Ltmp65 and .Ltmp67
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp67-.Lfunc_begin5          # >> Call Site 5 <<
	.uleb128 .Ltmp68-.Ltmp67                #   Call between .Ltmp67 and .Ltmp68
	.uleb128 .Ltmp69-.Lfunc_begin5          #     jumps to .Ltmp69
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp70-.Lfunc_begin5          # >> Call Site 6 <<
	.uleb128 .Ltmp77-.Ltmp70                #   Call between .Ltmp70 and .Ltmp77
	.uleb128 .Ltmp78-.Lfunc_begin5          #     jumps to .Ltmp78
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp77-.Lfunc_begin5          # >> Call Site 7 <<
	.uleb128 .Ltmp79-.Ltmp77                #   Call between .Ltmp77 and .Ltmp79
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp79-.Lfunc_begin5          # >> Call Site 8 <<
	.uleb128 .Ltmp80-.Ltmp79                #   Call between .Ltmp79 and .Ltmp80
	.uleb128 .Ltmp81-.Lfunc_begin5          #     jumps to .Ltmp81
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp82-.Lfunc_begin5          # >> Call Site 9 <<
	.uleb128 .Ltmp89-.Ltmp82                #   Call between .Ltmp82 and .Ltmp89
	.uleb128 .Ltmp90-.Lfunc_begin5          #     jumps to .Ltmp90
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp89-.Lfunc_begin5          # >> Call Site 10 <<
	.uleb128 .Ltmp91-.Ltmp89                #   Call between .Ltmp89 and .Ltmp91
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp91-.Lfunc_begin5          # >> Call Site 11 <<
	.uleb128 .Ltmp92-.Ltmp91                #   Call between .Ltmp91 and .Ltmp92
	.uleb128 .Ltmp93-.Lfunc_begin5          #     jumps to .Ltmp93
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp94-.Lfunc_begin5          # >> Call Site 12 <<
	.uleb128 .Ltmp101-.Ltmp94               #   Call between .Ltmp94 and .Ltmp101
	.uleb128 .Ltmp102-.Lfunc_begin5         #     jumps to .Ltmp102
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp101-.Lfunc_begin5         # >> Call Site 13 <<
	.uleb128 .Ltmp103-.Ltmp101              #   Call between .Ltmp101 and .Ltmp103
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp103-.Lfunc_begin5         # >> Call Site 14 <<
	.uleb128 .Ltmp104-.Ltmp103              #   Call between .Ltmp103 and .Ltmp104
	.uleb128 .Ltmp105-.Lfunc_begin5         #     jumps to .Ltmp105
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp106-.Lfunc_begin5         # >> Call Site 15 <<
	.uleb128 .Ltmp113-.Ltmp106              #   Call between .Ltmp106 and .Ltmp113
	.uleb128 .Ltmp114-.Lfunc_begin5         #     jumps to .Ltmp114
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp113-.Lfunc_begin5         # >> Call Site 16 <<
	.uleb128 .Lfunc_end9-.Ltmp113           #   Call between .Ltmp113 and .Lfunc_end9
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end5:
	.p2align	2, 0x0
                                        # -- End function
	.type	_ZL3rng,@object                 # @_ZL3rng
	.local	_ZL3rng
	.comm	_ZL3rng,5000,8
	.type	_ZL27benchmark_uniq_2_benchmark_,@object # @_ZL27benchmark_uniq_2_benchmark_
	.local	_ZL27benchmark_uniq_2_benchmark_
	.comm	_ZL27benchmark_uniq_2_benchmark_,8,8
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str:
	.asciz	"benchVecWithRuntimeChecks4PointersAllDisjointIncreasing"
	.size	.L.str, 56

	.type	_ZL27benchmark_uniq_3_benchmark_,@object # @_ZL27benchmark_uniq_3_benchmark_
	.local	_ZL27benchmark_uniq_3_benchmark_
	.comm	_ZL27benchmark_uniq_3_benchmark_,8,8
	.type	.L.str.4,@object                # @.str.4
	.p2align	3, 0x0
.L.str.4:
	.asciz	"benchVecWithRuntimeChecks4PointersAllDisjointDecreasing"
	.size	.L.str.4, 56

	.type	_ZL27benchmark_uniq_4_benchmark_,@object # @_ZL27benchmark_uniq_4_benchmark_
	.local	_ZL27benchmark_uniq_4_benchmark_
	.comm	_ZL27benchmark_uniq_4_benchmark_,8,8
	.type	.L.str.6,@object                # @.str.6
	.p2align	3, 0x0
.L.str.6:
	.asciz	"benchVecWithRuntimeChecks4PointersDEqualsA"
	.size	.L.str.6, 43

	.type	_ZL27benchmark_uniq_5_benchmark_,@object # @_ZL27benchmark_uniq_5_benchmark_
	.local	_ZL27benchmark_uniq_5_benchmark_
	.comm	_ZL27benchmark_uniq_5_benchmark_,8,8
	.type	.L.str.8,@object                # @.str.8
	.p2align	3, 0x0
.L.str.8:
	.asciz	"benchVecWithRuntimeChecks4PointersDBeforeA"
	.size	.L.str.8, 43

	.type	_ZL27benchmark_uniq_6_benchmark_,@object # @_ZL27benchmark_uniq_6_benchmark_
	.local	_ZL27benchmark_uniq_6_benchmark_
	.comm	_ZL27benchmark_uniq_6_benchmark_,8,8
	.type	.L.str.10,@object               # @.str.10
	.p2align	3, 0x0
.L.str.10:
	.asciz	"benchVecWithRuntimeChecks4PointersDAfterA"
	.size	.L.str.10, 42

	.section	.init_array,"aw",@init_array
	.p2align	3, 0x0
	.dword	_GLOBAL__sub_I_RuntimeChecks.cpp
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
	.addrsig_sym _Z55benchVecWithRuntimeChecks4PointersAllDisjointIncreasingRN9benchmark5StateE
	.addrsig_sym __gxx_personality_v0
	.addrsig_sym _ZL29vecWithRuntimeChecks4PointersPjS_S_S_jj
	.addrsig_sym _Z55benchVecWithRuntimeChecks4PointersAllDisjointDecreasingRN9benchmark5StateE
	.addrsig_sym _Z42benchVecWithRuntimeChecks4PointersDEqualsARN9benchmark5StateE
	.addrsig_sym _Z42benchVecWithRuntimeChecks4PointersDBeforeARN9benchmark5StateE
	.addrsig_sym _Z41benchVecWithRuntimeChecks4PointersDAfterARN9benchmark5StateE
	.addrsig_sym _GLOBAL__sub_I_RuntimeChecks.cpp
	.addrsig_sym _Unwind_Resume
	.addrsig_sym _ZL3rng
