	.file	"btBox2dBox2dCollisionAlgorithm.cpp"
	.text
	.globl	_ZN30btBox2dBox2dCollisionAlgorithmC2EP20btPersistentManifoldRK36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS6_ # -- Begin function _ZN30btBox2dBox2dCollisionAlgorithmC2EP20btPersistentManifoldRK36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS6_
	.p2align	5
	.type	_ZN30btBox2dBox2dCollisionAlgorithmC2EP20btPersistentManifoldRK36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS6_,@function
_ZN30btBox2dBox2dCollisionAlgorithmC2EP20btPersistentManifoldRK36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS6_: # @_ZN30btBox2dBox2dCollisionAlgorithmC2EP20btPersistentManifoldRK36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS6_
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
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
	move	$s0, $a4
	move	$s1, $a3
	move	$s2, $a1
	move	$fp, $a0
	move	$a1, $a2
	move	$a2, $a3
	move	$a3, $a4
	pcaddu18i	$ra, %call36(_ZN30btActivatingCollisionAlgorithmC2ERK36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS4_)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(_ZTV30btBox2dBox2dCollisionAlgorithm+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV30btBox2dBox2dCollisionAlgorithm+16)
	st.d	$a0, $fp, 0
	st.b	$zero, $fp, 16
	st.d	$s2, $fp, 24
	bnez	$s2, .LBB0_5
# %bb.1:
	ld.d	$a0, $fp, 8
	ld.d	$a1, $a0, 0
	ld.d	$a3, $a1, 48
.Ltmp0:                                 # EH_LABEL
	move	$a1, $s1
	move	$a2, $s0
	jirl	$ra, $a3, 0
.Ltmp1:                                 # EH_LABEL
# %bb.2:
	beqz	$a0, .LBB0_5
# %bb.3:
	ld.d	$a0, $fp, 8
	ld.d	$a1, $a0, 0
	ld.d	$a3, $a1, 24
.Ltmp2:                                 # EH_LABEL
	move	$a1, $s1
	move	$a2, $s0
	jirl	$ra, $a3, 0
.Ltmp3:                                 # EH_LABEL
# %bb.4:
	st.d	$a0, $fp, 24
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 16
.LBB0_5:
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB0_6:
.Ltmp4:                                 # EH_LABEL
	move	$s0, $a0
.Ltmp5:                                 # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN30btActivatingCollisionAlgorithmD2Ev)
	jirl	$ra, $ra, 0
.Ltmp6:                                 # EH_LABEL
# %bb.7:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB0_8:
.Ltmp7:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	_ZN30btBox2dBox2dCollisionAlgorithmC2EP20btPersistentManifoldRK36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS6_, .Lfunc_end0-_ZN30btBox2dBox2dCollisionAlgorithmC2EP20btPersistentManifoldRK36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS6_
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table0:
.Lexception0:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
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
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp6-.Lfunc_begin0           # >> Call Site 4 <<
	.uleb128 .Lfunc_end0-.Ltmp6             #   Call between .Ltmp6 and .Lfunc_end0
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
.Lfunc_end1:
	.size	__clang_call_terminate, .Lfunc_end1-__clang_call_terminate
                                        # -- End function
	.text
	.globl	_ZN30btBox2dBox2dCollisionAlgorithmD2Ev # -- Begin function _ZN30btBox2dBox2dCollisionAlgorithmD2Ev
	.p2align	5
	.type	_ZN30btBox2dBox2dCollisionAlgorithmD2Ev,@function
_ZN30btBox2dBox2dCollisionAlgorithmD2Ev: # @_ZN30btBox2dBox2dCollisionAlgorithmD2Ev
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception1
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
	pcalau12i	$a0, %pc_hi20(_ZTV30btBox2dBox2dCollisionAlgorithm+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV30btBox2dBox2dCollisionAlgorithm+16)
	ld.bu	$a1, $fp, 16
	st.d	$a0, $fp, 0
	beqz	$a1, .LBB2_3
# %bb.1:
	ld.d	$a1, $fp, 24
	beqz	$a1, .LBB2_3
# %bb.2:
	ld.d	$a0, $fp, 8
	ld.d	$a2, $a0, 0
	ld.d	$a2, $a2, 32
.Ltmp8:                                 # EH_LABEL
	jirl	$ra, $a2, 0
.Ltmp9:                                 # EH_LABEL
.LBB2_3:
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZN30btActivatingCollisionAlgorithmD2Ev)
	jr	$t8
.LBB2_4:
.Ltmp10:                                # EH_LABEL
	move	$s0, $a0
.Ltmp11:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN30btActivatingCollisionAlgorithmD2Ev)
	jirl	$ra, $ra, 0
.Ltmp12:                                # EH_LABEL
# %bb.5:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB2_6:
.Ltmp13:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	_ZN30btBox2dBox2dCollisionAlgorithmD2Ev, .Lfunc_end2-_ZN30btBox2dBox2dCollisionAlgorithmD2Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table2:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Ltmp8-.Lfunc_begin1           # >> Call Site 1 <<
	.uleb128 .Ltmp9-.Ltmp8                  #   Call between .Ltmp8 and .Ltmp9
	.uleb128 .Ltmp10-.Lfunc_begin1          #     jumps to .Ltmp10
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp9-.Lfunc_begin1           # >> Call Site 2 <<
	.uleb128 .Ltmp11-.Ltmp9                 #   Call between .Ltmp9 and .Ltmp11
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp11-.Lfunc_begin1          # >> Call Site 3 <<
	.uleb128 .Ltmp12-.Ltmp11                #   Call between .Ltmp11 and .Ltmp12
	.uleb128 .Ltmp13-.Lfunc_begin1          #     jumps to .Ltmp13
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp12-.Lfunc_begin1          # >> Call Site 4 <<
	.uleb128 .Lfunc_end2-.Ltmp12            #   Call between .Ltmp12 and .Lfunc_end2
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase1:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN30btBox2dBox2dCollisionAlgorithmD0Ev # -- Begin function _ZN30btBox2dBox2dCollisionAlgorithmD0Ev
	.p2align	5
	.type	_ZN30btBox2dBox2dCollisionAlgorithmD0Ev,@function
_ZN30btBox2dBox2dCollisionAlgorithmD0Ev: # @_ZN30btBox2dBox2dCollisionAlgorithmD0Ev
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception2
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
	pcalau12i	$a0, %pc_hi20(_ZTV30btBox2dBox2dCollisionAlgorithm+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV30btBox2dBox2dCollisionAlgorithm+16)
	ld.bu	$a1, $fp, 16
	st.d	$a0, $fp, 0
	beqz	$a1, .LBB3_3
# %bb.1:
	ld.d	$a1, $fp, 24
	beqz	$a1, .LBB3_3
# %bb.2:
	ld.d	$a0, $fp, 8
	ld.d	$a2, $a0, 0
	ld.d	$a2, $a2, 32
.Ltmp14:                                # EH_LABEL
	jirl	$ra, $a2, 0
.Ltmp15:                                # EH_LABEL
.LBB3_3:
.Ltmp20:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN30btActivatingCollisionAlgorithmD2Ev)
	jirl	$ra, $ra, 0
.Ltmp21:                                # EH_LABEL
# %bb.4:                                # %_ZN30btBox2dBox2dCollisionAlgorithmD2Ev.exit
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZdlPv)
	jr	$t8
.LBB3_5:
.Ltmp16:                                # EH_LABEL
	move	$s0, $a0
.Ltmp17:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN30btActivatingCollisionAlgorithmD2Ev)
	jirl	$ra, $ra, 0
.Ltmp18:                                # EH_LABEL
	b	.LBB3_8
.LBB3_6:
.Ltmp19:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB3_7:
.Ltmp22:                                # EH_LABEL
	move	$s0, $a0
.LBB3_8:                                # %.body
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end3:
	.size	_ZN30btBox2dBox2dCollisionAlgorithmD0Ev, .Lfunc_end3-_ZN30btBox2dBox2dCollisionAlgorithmD0Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table3:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase2-.Lttbaseref2
.Lttbaseref2:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Ltmp14-.Lfunc_begin2          # >> Call Site 1 <<
	.uleb128 .Ltmp15-.Ltmp14                #   Call between .Ltmp14 and .Ltmp15
	.uleb128 .Ltmp16-.Lfunc_begin2          #     jumps to .Ltmp16
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp20-.Lfunc_begin2          # >> Call Site 2 <<
	.uleb128 .Ltmp21-.Ltmp20                #   Call between .Ltmp20 and .Ltmp21
	.uleb128 .Ltmp22-.Lfunc_begin2          #     jumps to .Ltmp22
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp21-.Lfunc_begin2          # >> Call Site 3 <<
	.uleb128 .Ltmp17-.Ltmp21                #   Call between .Ltmp21 and .Ltmp17
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp17-.Lfunc_begin2          # >> Call Site 4 <<
	.uleb128 .Ltmp18-.Ltmp17                #   Call between .Ltmp17 and .Ltmp18
	.uleb128 .Ltmp19-.Lfunc_begin2          #     jumps to .Ltmp19
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp18-.Lfunc_begin2          # >> Call Site 5 <<
	.uleb128 .Lfunc_end3-.Ltmp18            #   Call between .Ltmp18 and .Lfunc_end3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
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
	.globl	_ZN30btBox2dBox2dCollisionAlgorithm16processCollisionEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult # -- Begin function _ZN30btBox2dBox2dCollisionAlgorithm16processCollisionEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult
	.p2align	5
	.type	_ZN30btBox2dBox2dCollisionAlgorithm16processCollisionEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult,@function
_ZN30btBox2dBox2dCollisionAlgorithm16processCollisionEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult: # @_ZN30btBox2dBox2dCollisionAlgorithm16processCollisionEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult
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
	move	$s0, $a0
	ld.d	$a0, $a0, 24
	beqz	$a0, .LBB4_4
# %bb.1:
	move	$fp, $a4
	ld.d	$a6, $a1, 200
	ld.d	$a3, $a2, 200
	st.d	$a0, $a4, 8
	addi.d	$a5, $a1, 8
	addi.d	$a4, $a2, 8
	move	$a0, $fp
	move	$a1, $a6
	move	$a2, $a5
	pcaddu18i	$ra, %call36(_Z17b2CollidePolygonsP16btManifoldResultPK12btBox2dShapeRK11btTransformS3_S6_)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s0, 16
	beqz	$a0, .LBB4_4
# %bb.2:
	ld.d	$a0, $fp, 8
	ld.w	$a1, $a0, 728
	beqz	$a1, .LBB4_4
# %bb.3:                                # %.sink.split.i
	ld.d	$a1, $a0, 712
	ld.d	$a2, $fp, 144
	xor	$a1, $a1, $a2
	sltui	$a1, $a1, 1
	ori	$a2, $zero, 80
	masknez	$a3, $a2, $a1
	ori	$a4, $zero, 16
	maskeqz	$a5, $a4, $a1
	or	$a3, $a5, $a3
	masknez	$a4, $a4, $a1
	maskeqz	$a1, $a2, $a1
	or	$a2, $a1, $a4
	add.d	$a1, $fp, $a3
	add.d	$a2, $fp, $a2
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZN20btPersistentManifold20refreshContactPointsERK11btTransformS2_)
	jr	$t8
.LBB4_4:                                # %_ZN16btManifoldResult20refreshContactPointsEv.exit
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end4:
	.size	_ZN30btBox2dBox2dCollisionAlgorithm16processCollisionEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult, .Lfunc_end4-_ZN30btBox2dBox2dCollisionAlgorithm16processCollisionEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _Z17b2CollidePolygonsP16btManifoldResultPK12btBox2dShapeRK11btTransformS3_S6_
.LCPI5_0:
	.word	0x3a83126f                      # float 0.00100000005
.LCPI5_1:
	.word	0x3f7ae148                      # float 0.980000019
.LCPI5_2:
	.word	0x5d5e0b6b                      # float 9.99999984E+17
	.text
	.globl	_Z17b2CollidePolygonsP16btManifoldResultPK12btBox2dShapeRK11btTransformS3_S6_
	.p2align	5
	.type	_Z17b2CollidePolygonsP16btManifoldResultPK12btBox2dShapeRK11btTransformS3_S6_,@function
_Z17b2CollidePolygonsP16btManifoldResultPK12btBox2dShapeRK11btTransformS3_S6_: # @_Z17b2CollidePolygonsP16btManifoldResultPK12btBox2dShapeRK11btTransformS3_S6_
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -272
	.cfi_def_cfa_offset 272
	st.d	$ra, $sp, 264                   # 8-byte Folded Spill
	st.d	$fp, $sp, 256                   # 8-byte Folded Spill
	st.d	$s0, $sp, 248                   # 8-byte Folded Spill
	st.d	$s1, $sp, 240                   # 8-byte Folded Spill
	st.d	$s2, $sp, 232                   # 8-byte Folded Spill
	st.d	$s3, $sp, 224                   # 8-byte Folded Spill
	st.d	$s4, $sp, 216                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 208                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 200                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 192                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 184                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 176                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 168                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 160                  # 8-byte Folded Spill
	fst.d	$fs7, $sp, 152                  # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 56, -64
	.cfi_offset 57, -72
	.cfi_offset 58, -80
	.cfi_offset 59, -88
	.cfi_offset 60, -96
	.cfi_offset 61, -104
	.cfi_offset 62, -112
	.cfi_offset 63, -120
	move	$s2, $a4
	move	$s0, $a3
	move	$s3, $a2
	move	$s1, $a1
	move	$fp, $a0
	st.w	$zero, $sp, 148
	addi.d	$a0, $sp, 148
	pcaddu18i	$ra, %call36(_ZL17FindMaxSeparationPiPK12btBox2dShapeRK11btTransformS2_S5_)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fs0, $zero
	fcmp.clt.s	$fcc0, $fs0, $fa0
	bcnez	$fcc0, .LBB5_21
# %bb.1:
	fmov.s	$fs1, $fa0
	st.w	$zero, $sp, 144
	addi.d	$a0, $sp, 144
	addi.d	$s4, $sp, 144
	move	$a1, $s0
	move	$a2, $s2
	move	$a3, $s1
	move	$a4, $s3
	pcaddu18i	$ra, %call36(_ZL17FindMaxSeparationPiPK12btBox2dShapeRK11btTransformS2_S5_)
	jirl	$ra, $ra, 0
	fcmp.clt.s	$fcc0, $fs0, $fa0
	bcnez	$fcc0, .LBB5_21
# %bb.2:
	pcalau12i	$a0, %pc_hi20(.LCPI5_0)
	fld.s	$fa1, $a0, %pc_lo12(.LCPI5_0)
	pcalau12i	$a0, %pc_hi20(.LCPI5_1)
	fld.s	$fa2, $a0, %pc_lo12(.LCPI5_1)
	fmadd.s	$fa1, $fs1, $fa2, $fa1
	fcmp.cule.s	$fcc0, $fa0, $fa1
	movcf2gr	$a0, $fcc0
	masknez	$a1, $s3, $a0
	maskeqz	$a2, $s2, $a0
	or	$a1, $a2, $a1
	masknez	$a2, $s2, $a0
	maskeqz	$a3, $s3, $a0
	or	$a2, $a3, $a2
	fld.s	$fa0, $a2, 56
	fst.s	$fa0, $sp, 36                   # 4-byte Folded Spill
	fld.s	$fa0, $a2, 52
	fst.s	$fa0, $sp, 40                   # 4-byte Folded Spill
	fld.s	$fa0, $a2, 48
	fst.s	$fa0, $sp, 44                   # 4-byte Folded Spill
	fld.s	$ft1, $a2, 40
	fld.s	$fa6, $a2, 36
	fld.s	$fa5, $a2, 32
	fld.s	$fa7, $a2, 24
	fld.s	$ft2, $a2, 20
	fld.s	$fa0, $a2, 16
	fst.s	$fa0, $sp, 32                   # 4-byte Folded Spill
	fld.s	$ft0, $a2, 8
	fld.s	$fa4, $a2, 4
	fld.s	$ft3, $a2, 0
	fld.s	$ft4, $a1, 56
	fld.s	$ft6, $a1, 52
	fld.s	$ft10, $a1, 48
	fld.s	$ft5, $a1, 40
	fld.s	$ft7, $a1, 36
	fld.s	$ft8, $a1, 32
	fld.s	$ft9, $a1, 24
	fld.s	$ft11, $a1, 20
	fld.s	$ft12, $a1, 16
	fld.s	$ft13, $a1, 8
	fld.s	$ft14, $a1, 4
	fld.s	$ft15, $a1, 0
	masknez	$a1, $s1, $a0
	maskeqz	$a2, $s0, $a0
	or	$a4, $a2, $a1
	masknez	$a1, $s4, $a0
	addi.d	$a2, $sp, 148
	maskeqz	$a2, $a2, $a0
	or	$a1, $a2, $a1
	ld.w	$a2, $a1, 0
	masknez	$a1, $s0, $a0
	maskeqz	$a0, $s1, $a0
	or	$a3, $a0, $a1
	slti	$a0, $a2, 3
	alsl.d	$a1, $a2, $a3, 4
	fld.s	$fs1, $a1, 148
	fld.s	$fs2, $a1, 144
	fld.s	$fs3, $a1, 152
	slli.d	$a1, $a2, 4
	fmul.s	$fs4, $fa4, $fs1
	fmadd.s	$fs4, $ft3, $fs2, $fs4
	fmadd.s	$fs4, $ft0, $fs3, $fs4
	fmul.s	$fs5, $ft2, $fs1
	fmadd.s	$fs5, $fa0, $fs2, $fs5
	fmadd.s	$fs5, $fa7, $fs3, $fs5
	fmul.s	$fs1, $fa6, $fs1
	fmadd.s	$fs1, $fa5, $fs2, $fs1
	fmadd.s	$fs1, $ft1, $fs3, $fs1
	fmul.s	$fs2, $ft12, $fs5
	fmadd.s	$fs2, $ft15, $fs4, $fs2
	fmadd.s	$fs2, $ft8, $fs1, $fs2
	fmul.s	$fs3, $ft11, $fs5
	fmadd.s	$fs3, $ft14, $fs4, $fs3
	fmadd.s	$fs3, $ft7, $fs1, $fs3
	fmul.s	$fs5, $ft9, $fs5
	fmadd.s	$fs4, $ft13, $fs4, $fs5
	fld.s	$fs5, $a4, 148
	fld.s	$fs6, $a4, 144
	fld.s	$fs7, $a4, 152
	fmadd.s	$fs1, $ft5, $fs1, $fs4
	fmul.s	$fs4, $fs5, $fs3
	fmadd.s	$fs4, $fs2, $fs6, $fs4
	fmadd.s	$fs4, $fs1, $fs7, $fs4
	pcalau12i	$a5, %pc_hi20(.LCPI5_2)
	fld.s	$fs5, $a5, %pc_lo12(.LCPI5_2)
	fld.s	$fs6, $a4, 164
	fld.s	$fs7, $a4, 160
	fld.s	$fa0, $a4, 168
	fmin.s	$fs4, $fs4, $fs5
	fmul.s	$fs5, $fs3, $fs6
	fmadd.s	$fs5, $fs2, $fs7, $fs5
	fmadd.s	$fa0, $fs1, $fa0, $fs5
	fcmp.clt.s	$fcc1, $fa0, $fs4
	fld.s	$fs5, $a4, 180
	fld.s	$fs6, $a4, 176
	fld.s	$fs7, $a4, 184
	fsel	$fa0, $fs4, $fa0, $fcc1
	fmul.s	$fs4, $fs3, $fs5
	fmadd.s	$fs4, $fs2, $fs6, $fs4
	fmadd.s	$fs4, $fs1, $fs7, $fs4
	fcmp.clt.s	$fcc2, $fs4, $fa0
	fsel	$fa0, $fa0, $fs4, $fcc2
	movcf2gr	$a5, $fcc1
	movcf2gr	$a6, $fcc2
	masknez	$a5, $a5, $a6
	ori	$a7, $zero, 2
	maskeqz	$a6, $a7, $a6
	fld.s	$fs4, $a4, 196
	fld.s	$fs5, $a4, 192
	fld.s	$fs6, $a4, 200
	or	$a5, $a6, $a5
	fmul.s	$fs3, $fs3, $fs4
	fmadd.s	$fs2, $fs2, $fs5, $fs3
	fmadd.s	$fs1, $fs1, $fs6, $fs2
	fcmp.clt.s	$fcc1, $fs1, $fa0
	addi.d	$a4, $a4, 80
	addi.d	$a6, $a5, 1
	movcf2gr	$a7, $fcc1
	masknez	$a5, $a5, $a7
	ori	$t0, $zero, 3
	maskeqz	$t0, $t0, $a7
	or	$a5, $t0, $a5
	alsl.d	$t0, $a5, $a4, 4
	slli.d	$a5, $a5, 4
	fldx.s	$fa0, $a4, $a5
	fld.s	$fs1, $t0, 4
	fld.s	$fs2, $t0, 8
	masknez	$a5, $a6, $a7
	alsl.d	$a6, $a5, $a4, 4
	slli.d	$a5, $a5, 4
	fldx.s	$fs5, $a4, $a5
	fld.s	$fs6, $a6, 4
	fld.s	$fs7, $a6, 8
	addi.d	$a3, $a3, 80
	alsl.d	$a2, $a2, $a3, 4
	fmul.s	$fs3, $ft14, $fs1
	fmadd.s	$fs3, $ft15, $fa0, $fs3
	fmul.s	$fs4, $ft11, $fs1
	fmadd.s	$fs4, $ft12, $fa0, $fs4
	fmul.s	$fs1, $ft7, $fs1
	fmadd.s	$fa0, $ft8, $fa0, $fs1
	fldx.s	$fa1, $a3, $a1
	fmadd.s	$fs1, $ft13, $fs2, $fs3
	fmadd.s	$fs4, $ft9, $fs2, $fs4
	fmadd.s	$fa0, $ft5, $fs2, $fa0
	fld.s	$fa3, $a2, 4
	fmul.s	$ft14, $ft14, $fs6
	fmadd.s	$ft14, $ft15, $fs5, $ft14
	fld.s	$fa2, $a2, 8
	addi.d	$a1, $a2, 16
	masknez	$a2, $a3, $a0
	maskeqz	$a0, $a1, $a0
	or	$a0, $a0, $a2
	fmadd.s	$ft14, $ft13, $fs7, $ft14
	fld.s	$ft13, $a0, 0
	fadd.s	$ft15, $ft10, $fs1
	fadd.s	$fs3, $ft10, $ft14
	fld.s	$ft14, $a0, 4
	fmul.s	$ft10, $ft11, $fs6
	fmadd.s	$fs1, $ft12, $fs5, $ft10
	fld.s	$ft10, $a0, 8
	fadd.s	$ft11, $ft6, $fs4
	fadd.s	$ft12, $ft4, $fa0
	fmadd.s	$fa0, $ft9, $fs7, $fs1
	fadd.s	$fs4, $ft6, $fa0
	fmul.s	$fa0, $ft7, $fs6
	fmadd.s	$fa0, $ft8, $fs5, $fa0
	fmadd.s	$fa0, $ft5, $fs7, $fa0
	fadd.s	$fs5, $ft4, $fa0
	fsub.s	$fa0, $ft13, $fa1
	fsub.s	$ft4, $ft14, $fa3
	fsub.s	$ft5, $ft10, $fa2
	fmul.s	$ft6, $fa4, $ft4
	fmadd.s	$ft6, $ft3, $fa0, $ft6
	fmadd.s	$ft6, $ft0, $ft5, $ft6
	fmul.s	$ft7, $ft2, $ft4
	fld.s	$ft8, $sp, 32                   # 4-byte Folded Reload
	fmadd.s	$ft7, $ft8, $fa0, $ft7
	fmadd.s	$ft7, $fa7, $ft5, $ft7
	fmul.s	$ft4, $fa6, $ft4
	fmadd.s	$fa0, $fa5, $fa0, $ft4
	fmadd.s	$fa0, $ft1, $ft5, $fa0
	fmul.s	$ft4, $ft7, $ft7
	fmadd.s	$ft4, $ft6, $ft6, $ft4
	fmadd.s	$ft4, $fa0, $fa0, $ft4
	frsqrt.s	$ft5, $ft4
	fmul.s	$ft4, $ft6, $ft5
	fmul.s	$fs1, $ft7, $ft5
	fmul.s	$ft9, $fa0, $ft5
	fneg.s	$fs2, $ft4
	fst.s	$fa4, $sp, 20                   # 4-byte Folded Spill
	fmul.s	$fa0, $fa4, $fa3
	fst.s	$ft3, $sp, 24                   # 4-byte Folded Spill
	fmadd.s	$fa0, $ft3, $fa1, $fa0
	fst.s	$ft0, $sp, 28                   # 4-byte Folded Spill
	fmadd.s	$fa0, $ft0, $fa2, $fa0
	fmov.s	$ft0, $ft8
	fld.s	$fa4, $sp, 44                   # 4-byte Folded Reload
	fadd.s	$ft3, $fa4, $fa0
	fmul.s	$fa0, $ft2, $fa3
	fmadd.s	$fa0, $ft8, $fa1, $fa0
	fmov.s	$ft7, $fa7
	fmadd.s	$fa0, $fa7, $fa2, $fa0
	fld.s	$fa4, $sp, 40                   # 4-byte Folded Reload
	fadd.s	$fa7, $fa4, $fa0
	fmov.s	$ft6, $fa6
	fmul.s	$fa0, $fa6, $fa3
	fmov.s	$ft5, $fa5
	fmadd.s	$fa0, $fa5, $fa1, $fa0
	fmov.s	$fa5, $ft1
	fmadd.s	$fa0, $ft1, $fa2, $fa0
	fld.s	$fa1, $sp, 36                   # 4-byte Folded Reload
	fmov.s	$fa4, $fa1
	fadd.s	$fa6, $fa1, $fa0
	fneg.s	$ft8, $fs1
	fneg.s	$fa0, $ft9
	fmul.s	$fa1, $ft11, $ft8
	fmadd.s	$fa1, $fs2, $ft15, $fa1
	fmadd.s	$fa1, $fa0, $ft12, $fa1
	fmul.s	$fa2, $fs4, $ft8
	fmadd.s	$fa2, $fs2, $fs3, $fa2
	fmadd.s	$fa0, $fa0, $fs5, $fa2
	fmul.s	$fa2, $fa7, $fs1
	fmadd.s	$fa2, $ft4, $ft3, $fa2
	fmadd.s	$fa2, $ft9, $fa6, $fa2
	fadd.s	$fs6, $fa1, $fa2
	fadd.s	$fs7, $fa0, $fa2
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 104
	vst	$vr0, $sp, 124
	vst	$vr0, $sp, 64
	fcmp.cult.s	$fcc1, $fs0, $fs6
	vst	$vr0, $sp, 84
	bceqz	$fcc1, .LBB5_4
# %bb.3:
	move	$a0, $zero
	fcmp.cult.s	$fcc1, $fs0, $fs7
	bceqz	$fcc1, .LBB5_5
	b	.LBB5_6
.LBB5_4:
	fst.s	$ft15, $sp, 104
	fst.s	$ft11, $sp, 108
	fst.s	$ft12, $sp, 112
	st.w	$zero, $sp, 116
	ori	$a0, $zero, 1
	fcmp.cult.s	$fcc1, $fs0, $fs7
	bcnez	$fcc1, .LBB5_6
.LBB5_5:
	slli.d	$a1, $a0, 2
	slli.d	$a2, $a0, 4
	addi.d	$a0, $a0, 1
	or	$a1, $a2, $a1
	addi.d	$a2, $sp, 104
	add.d	$a3, $a2, $a1
	fstx.s	$fs3, $a1, $a2
	fst.s	$fs4, $a3, 4
	fst.s	$fs5, $a3, 8
	st.w	$zero, $a3, 12
.LBB5_6:
	fmul.s	$fa0, $fs6, $fs7
	fcmp.cule.s	$fcc1, $fs0, $fa0
	bceqz	$fcc1, .LBB5_8
# %bb.7:                                # %_ZL17ClipSegmentToLineP10ClipVertexS0_RK9btVector3f.exit
	ori	$a1, $zero, 2
	bgeu	$a0, $a1, .LBB5_9
	b	.LBB5_21
.LBB5_8:
	fsub.s	$fa0, $fs6, $fs7
	fdiv.s	$fa0, $fs6, $fa0
	fsub.s	$fa1, $fs3, $ft15
	fsub.s	$fa2, $fs4, $ft11
	fsub.s	$fa3, $fs5, $ft12
	fmul.s	$fa1, $fa1, $fa0
	fmul.s	$fa2, $fa2, $fa0
	fmul.s	$fa0, $fa3, $fa0
	fadd.s	$fa1, $ft15, $fa1
	fadd.s	$fa2, $ft11, $fa2
	fadd.s	$fa0, $ft12, $fa0
	movfr2gr.s	$a1, $fa1
	movfr2gr.s	$a2, $fa2
	bstrins.d	$a1, $a2, 63, 32
	movfr2gr.s	$a2, $fa0
	bstrpick.d	$a2, $a2, 31, 0
	slli.d	$a3, $a0, 2
	slli.d	$a4, $a0, 4
	or	$a3, $a4, $a3
	addi.d	$a4, $sp, 104
	add.d	$a5, $a4, $a3
	stx.d	$a1, $a3, $a4
	st.d	$a2, $a5, 8
	addi.d	$a0, $a0, 1
	ori	$a1, $zero, 2
	bltu	$a0, $a1, .LBB5_21
.LBB5_9:
	fmov.s	$ft11, $fa6
	fmov.s	$ft1, $fa7
	fmul.s	$fa0, $ft2, $ft14
	fld.s	$fa1, $sp, 20                   # 4-byte Folded Reload
	fmul.s	$fa1, $fa1, $ft14
	fmadd.s	$fa0, $ft0, $ft13, $fa0
	fld.s	$fa2, $sp, 24                   # 4-byte Folded Reload
	fmadd.s	$fa1, $fa2, $ft13, $fa1
	fmadd.s	$fa0, $ft7, $ft10, $fa0
	fmul.s	$fa2, $ft6, $ft14
	fld.s	$fa3, $sp, 28                   # 4-byte Folded Reload
	fmadd.s	$fa1, $fa3, $ft10, $fa1
	fld.s	$fa3, $sp, 40                   # 4-byte Folded Reload
	fadd.s	$fa0, $fa3, $fa0
	fmadd.s	$fa2, $ft5, $ft13, $fa2
	fld.s	$fa3, $sp, 44                   # 4-byte Folded Reload
	fadd.s	$fa1, $fa3, $fa1
	fmadd.s	$fa2, $fa5, $ft10, $fa2
	fmul.s	$fa0, $fa0, $fs1
	fadd.s	$fa4, $fa4, $fa2
	fmadd.s	$fa1, $ft4, $fa1, $fa0
	fld.s	$fa0, $sp, 108
	fld.s	$fa2, $sp, 104
	fld.s	$fa3, $sp, 112
	fmadd.s	$fa7, $ft9, $fa4, $fa1
	fmul.s	$fa1, $fs1, $fa0
	fmadd.s	$fa1, $ft4, $fa2, $fa1
	fmadd.s	$fa1, $ft9, $fa3, $fa1
	fld.s	$fa4, $sp, 128
	fld.s	$fa5, $sp, 124
	fld.s	$fa6, $sp, 132
	fsub.s	$fa1, $fa1, $fa7
	fmul.s	$ft0, $fs1, $fa4
	fmadd.s	$ft0, $ft4, $fa5, $ft0
	fmadd.s	$ft0, $ft9, $fa6, $ft0
	fcmp.cult.s	$fcc1, $fs0, $fa1
	fsub.s	$fa7, $ft0, $fa7
	bceqz	$fcc1, .LBB5_11
# %bb.10:
	move	$a0, $zero
	fcmp.cult.s	$fcc1, $fs0, $fa7
	bceqz	$fcc1, .LBB5_12
	b	.LBB5_13
.LBB5_11:
	ld.w	$a0, $sp, 120
	vld	$vr8, $sp, 104
	st.w	$a0, $sp, 80
	vst	$vr8, $sp, 64
	ori	$a0, $zero, 1
	fcmp.cult.s	$fcc1, $fs0, $fa7
	bcnez	$fcc1, .LBB5_13
.LBB5_12:
	addi.d	$a1, $sp, 124
	slli.d	$a2, $a0, 2
	slli.d	$a3, $a0, 4
	addi.d	$a0, $a0, 1
	or	$a2, $a3, $a2
	vld	$vr8, $a1, 0
	ld.w	$a1, $a1, 16
	addi.d	$a3, $sp, 64
	add.d	$a4, $a3, $a2
	vstx	$vr8, $a2, $a3
	st.w	$a1, $a4, 16
.LBB5_13:
	fmul.s	$ft0, $fa1, $fa7
	fcmp.cule.s	$fcc1, $fs0, $ft0
	bceqz	$fcc1, .LBB5_15
# %bb.14:                               # %_ZL17ClipSegmentToLineP10ClipVertexS0_RK9btVector3f.exit134
	ori	$a1, $zero, 2
	bgeu	$a0, $a1, .LBB5_16
	b	.LBB5_21
.LBB5_15:
	fsub.s	$fa7, $fa1, $fa7
	fdiv.s	$fa7, $fa1, $fa7
	fsub.s	$fa5, $fa5, $fa2
	fsub.s	$fa4, $fa4, $fa0
	fsub.s	$fa6, $fa6, $fa3
	fmul.s	$fa5, $fa5, $fa7
	fmul.s	$fa4, $fa4, $fa7
	fmul.s	$fa6, $fa6, $fa7
	fadd.s	$fa2, $fa2, $fa5
	fadd.s	$fa0, $fa0, $fa4
	fadd.s	$fa3, $fa3, $fa6
	movfr2gr.s	$a1, $fa2
	movfr2gr.s	$a2, $fa0
	bstrins.d	$a1, $a2, 63, 32
	slli.d	$a2, $a0, 2
	slli.d	$a3, $a0, 4
	or	$a2, $a3, $a2
	fcmp.clt.s	$fcc1, $fs0, $fa1
	ori	$a3, $zero, 36
	movcf2gr	$a4, $fcc1
	masknez	$a3, $a3, $a4
	ori	$a5, $zero, 16
	maskeqz	$a4, $a5, $a4
	movfr2gr.s	$a5, $fa3
	bstrpick.d	$a5, $a5, 31, 0
	or	$a3, $a4, $a3
	addi.d	$a4, $sp, 104
	ldx.w	$a3, $a3, $a4
	addi.d	$a4, $sp, 64
	stx.d	$a1, $a2, $a4
	add.d	$a1, $a4, $a2
	st.d	$a5, $a1, 8
	st.w	$a3, $a1, 16
	addi.d	$a0, $a0, 1
	ori	$a1, $zero, 2
	bltu	$a0, $a1, .LBB5_21
.LBB5_16:
	pcalau12i	$s1, %pc_hi20(b2_maxManifoldPoints)
	ld.w	$a0, $s1, %pc_lo12(b2_maxManifoldPoints)
	blez	$a0, .LBB5_21
# %bb.17:                               # %.lr.ph
	move	$s2, $zero
	fmul.s	$fa0, $ft1, $fs2
	fmadd.s	$fa0, $fs1, $ft3, $fa0
	fmadd.s	$fs3, $ft11, $fs0, $fa0
	fsel	$fa0, $fs1, $ft8, $fcc0
	fsel	$fa1, $fs2, $ft4, $fcc0
	fneg.s	$fa2, $fs0
	fsel	$fa2, $fs0, $fa2, $fcc0
	movfr2gr.s	$s3, $fa0
	movfr2gr.s	$a1, $fa1
	bstrins.d	$s3, $a1, 63, 32
	movfr2gr.s	$a1, $fa2
	bstrpick.d	$s4, $a1, 31, 0
	addi.d	$s0, $sp, 64
	b	.LBB5_19
	.p2align	4, , 16
.LBB5_18:                               #   in Loop: Header=BB5_19 Depth=1
	addi.d	$s2, $s2, 1
	addi.d	$s0, $s0, 20
	bge	$s2, $a0, .LBB5_21
.LBB5_19:                               # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $s0, 4
	fld.s	$fa1, $s0, 0
	fld.s	$fa2, $s0, 8
	fmul.s	$fa0, $fa0, $fs2
	fmadd.s	$fa0, $fs1, $fa1, $fa0
	fmadd.s	$fa0, $fa2, $fs0, $fa0
	fsub.s	$fa0, $fa0, $fs3
	fcmp.cult.s	$fcc0, $fs0, $fa0
	bcnez	$fcc0, .LBB5_18
# %bb.20:                               #   in Loop: Header=BB5_19 Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a3, $a0, 32
	st.d	$s3, $sp, 48
	st.d	$s4, $sp, 56
	addi.d	$a1, $sp, 48
	move	$a0, $fp
	move	$a2, $s0
	jirl	$ra, $a3, 0
	ld.w	$a0, $s1, %pc_lo12(b2_maxManifoldPoints)
	b	.LBB5_18
.LBB5_21:
	fld.d	$fs7, $sp, 152                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 160                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 168                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 176                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 184                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 192                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 200                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 208                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 256                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 264                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 272
	ret
.Lfunc_end5:
	.size	_Z17b2CollidePolygonsP16btManifoldResultPK12btBox2dShapeRK11btTransformS3_S6_, .Lfunc_end5-_Z17b2CollidePolygonsP16btManifoldResultPK12btBox2dShapeRK11btTransformS3_S6_
	.cfi_endproc
                                        # -- End function
	.globl	_ZN30btBox2dBox2dCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult # -- Begin function _ZN30btBox2dBox2dCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult
	.p2align	5
	.type	_ZN30btBox2dBox2dCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult,@function
_ZN30btBox2dBox2dCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult: # @_ZN30btBox2dBox2dCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult
# %bb.0:
	vldi	$vr0, -1168
	ret
.Lfunc_end6:
	.size	_ZN30btBox2dBox2dCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult, .Lfunc_end6-_ZN30btBox2dBox2dCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZL17FindMaxSeparationPiPK12btBox2dShapeRK11btTransformS2_S5_
.LCPI7_0:
	.word	0xdd5e0b6b                      # float -9.99999984E+17
	.text
	.p2align	5
	.type	_ZL17FindMaxSeparationPiPK12btBox2dShapeRK11btTransformS2_S5_,@function
_ZL17FindMaxSeparationPiPK12btBox2dShapeRK11btTransformS2_S5_: # @_ZL17FindMaxSeparationPiPK12btBox2dShapeRK11btTransformS2_S5_
# %bb.0:
	addi.d	$sp, $sp, -128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	st.d	$s6, $sp, 56                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 40                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 32                   # 8-byte Folded Spill
	move	$fp, $a4
	move	$s1, $a3
	move	$s2, $a2
	move	$s3, $a1
	move	$s0, $a0
	fld.s	$fa0, $a4, 0
	fld.s	$fa1, $a3, 64
	fld.s	$fa2, $a4, 4
	fld.s	$fa3, $a3, 68
	fld.s	$fa4, $a4, 8
	fld.s	$fa5, $a3, 72
	fld.s	$fa6, $a4, 48
	fmul.s	$fa2, $fa2, $fa3
	fmadd.s	$fa0, $fa0, $fa1, $fa2
	fmadd.s	$fa0, $fa4, $fa5, $fa0
	fadd.s	$fa0, $fa0, $fa6
	fld.s	$fa2, $a4, 20
	fld.s	$fa4, $a4, 16
	fld.s	$fa6, $a4, 24
	fld.s	$fa7, $a4, 52
	fmul.s	$fa2, $fa3, $fa2
	fmadd.s	$fa2, $fa4, $fa1, $fa2
	fmadd.s	$fa2, $fa6, $fa5, $fa2
	fadd.s	$fa2, $fa7, $fa2
	fld.s	$fa4, $a4, 36
	fld.s	$fa6, $a4, 32
	fld.s	$fa7, $a4, 40
	fld.s	$ft0, $a4, 56
	fmul.s	$fa3, $fa3, $fa4
	fmadd.s	$fa1, $fa6, $fa1, $fa3
	fmadd.s	$fa1, $fa7, $fa5, $fa1
	fadd.s	$fa1, $ft0, $fa1
	fld.s	$fa3, $a2, 0
	fld.s	$fa4, $a1, 64
	fld.s	$fa5, $a2, 4
	fld.s	$fa6, $a1, 68
	fld.s	$fa7, $a2, 8
	fld.s	$ft0, $a1, 72
	fld.s	$ft1, $a2, 48
	fmul.s	$ft2, $fa5, $fa6
	fmadd.s	$ft2, $fa3, $fa4, $ft2
	fmadd.s	$ft2, $fa7, $ft0, $ft2
	fadd.s	$ft1, $ft2, $ft1
	fld.s	$ft2, $a2, 20
	fld.s	$ft3, $a2, 16
	fld.s	$ft4, $a2, 24
	fld.s	$ft5, $a2, 52
	fmul.s	$ft6, $fa6, $ft2
	fmadd.s	$ft6, $ft3, $fa4, $ft6
	fmadd.s	$ft6, $ft4, $ft0, $ft6
	fadd.s	$ft5, $ft5, $ft6
	fld.s	$ft6, $a2, 36
	fld.s	$ft7, $a2, 32
	fld.s	$ft8, $a2, 40
	fld.s	$ft9, $a2, 56
	fmul.s	$fa6, $fa6, $ft6
	fmadd.s	$fa4, $ft7, $fa4, $fa6
	fmadd.s	$fa4, $ft8, $ft0, $fa4
	fadd.s	$fa4, $ft9, $fa4
	fsub.s	$fa0, $fa0, $ft1
	fsub.s	$fa2, $fa2, $ft5
	fsub.s	$fa1, $fa1, $fa4
	fmul.s	$fa4, $ft3, $fa2
	fmadd.s	$fa3, $fa3, $fa0, $fa4
	fmadd.s	$fa3, $ft7, $fa1, $fa3
	fmul.s	$fa4, $ft2, $fa2
	fmadd.s	$fa4, $fa5, $fa0, $fa4
	fmadd.s	$fa4, $ft6, $fa1, $fa4
	fmul.s	$fa2, $ft4, $fa2
	fmadd.s	$fa0, $fa7, $fa0, $fa2
	fld.s	$fa2, $a1, 148
	fld.s	$fa5, $a1, 144
	fld.s	$fa6, $a1, 152
	fmadd.s	$fa0, $ft8, $fa1, $fa0
	fmul.s	$fa1, $fa4, $fa2
	fmadd.s	$fa1, $fa5, $fa3, $fa1
	fmadd.s	$fa1, $fa6, $fa0, $fa1
	pcalau12i	$a0, %pc_hi20(.LCPI7_0)
	fld.s	$fa2, $a0, %pc_lo12(.LCPI7_0)
	fld.s	$fa5, $a1, 164
	fld.s	$fa6, $a1, 160
	fld.s	$fa7, $a1, 168
	fmax.s	$fa1, $fa1, $fa2
	fmul.s	$fa2, $fa4, $fa5
	fmadd.s	$fa2, $fa6, $fa3, $fa2
	fmadd.s	$fa2, $fa7, $fa0, $fa2
	fcmp.clt.s	$fcc0, $fa1, $fa2
	fld.s	$fa5, $a1, 180
	fld.s	$fa6, $a1, 176
	fld.s	$fa7, $a1, 184
	fsel	$fa1, $fa1, $fa2, $fcc0
	fmul.s	$fa2, $fa4, $fa5
	fmadd.s	$fa2, $fa6, $fa3, $fa2
	fmadd.s	$fa2, $fa7, $fa0, $fa2
	fcmp.clt.s	$fcc1, $fa1, $fa2
	fsel	$fa1, $fa1, $fa2, $fcc1
	movcf2gr	$a0, $fcc0
	movcf2gr	$a1, $fcc1
	masknez	$a0, $a0, $a1
	ori	$a2, $zero, 2
	fld.s	$fa2, $s3, 196
	fld.s	$fa5, $s3, 192
	fld.s	$fa6, $s3, 200
	maskeqz	$a1, $a2, $a1
	fmul.s	$fa2, $fa4, $fa2
	fmadd.s	$fa2, $fa5, $fa3, $fa2
	fmadd.s	$fa0, $fa6, $fa0, $fa2
	fcmp.clt.s	$fcc0, $fa1, $fa0
	or	$s6, $a1, $a0
	movcf2gr	$a0, $fcc0
	st.d	$a0, $sp, 24
	movcf2gr	$a0, $fcc0
	masknez	$a1, $s6, $a0
	ori	$s5, $zero, 3
	maskeqz	$a0, $s5, $a0
	or	$s4, $a0, $a1
	move	$a0, $s3
	move	$a1, $s2
	move	$a2, $s4
	pcaddu18i	$ra, %call36(_ZL14EdgeSeparationPK12btBox2dShapeRK11btTransformiS1_S4_)
	jirl	$ra, $ra, 0
	fmov.s	$fs0, $fa0
	movgr2fr.w	$fs1, $zero
	fcmp.clt.s	$fcc0, $fs1, $fa0
	bcnez	$fcc0, .LBB7_4
# %bb.1:
	addi.d	$a0, $s4, -1
	sltui	$a1, $s4, 1
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s5, $a1
	or	$s5, $a1, $a0
	move	$a0, $s3
	move	$a1, $s2
	move	$a2, $s5
	move	$a3, $s1
	move	$a4, $fp
	pcaddu18i	$ra, %call36(_ZL14EdgeSeparationPK12btBox2dShapeRK11btTransformiS1_S4_)
	jirl	$ra, $ra, 0
	fcmp.clt.s	$fcc0, $fs1, $fa0
	bcnez	$fcc0, .LBB7_3
# %bb.2:
	fmov.s	$fs2, $fa0
	addi.d	$a0, $s6, 1
	ld.d	$a1, $sp, 24
	movgr2cf	$fcc0, $a1
	movcf2gr	$a1, $fcc0
	masknez	$s6, $a0, $a1
	move	$a0, $s3
	move	$a1, $s2
	move	$a2, $s6
	move	$a3, $s1
	move	$a4, $fp
	pcaddu18i	$ra, %call36(_ZL14EdgeSeparationPK12btBox2dShapeRK11btTransformiS1_S4_)
	jirl	$ra, $ra, 0
	fcmp.clt.s	$fcc0, $fs1, $fa0
	bceqz	$fcc0, .LBB7_5
.LBB7_3:
	fmov.s	$fs0, $fa0
.LBB7_4:                                # %.loopexit
	fmov.s	$fa0, $fs0
	fld.d	$fs2, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 48                   # 8-byte Folded Reload
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
.LBB7_5:
	fcmp.cule.s	$fcc0, $fs2, $fs0
	bcnez	$fcc0, .LBB7_10
# %bb.6:
	fmov.s	$fa1, $fs2
	fcmp.cule.s	$fcc0, $fs2, $fa0
	bcnez	$fcc0, .LBB7_10
# %bb.7:
	ori	$s6, $zero, 3
	fmov.s	$fa0, $fa1
	.p2align	4, , 16
.LBB7_8:                                # %.split.us
                                        # =>This Inner Loop Header: Depth=1
	fmov.s	$fs0, $fa0
	move	$s4, $s5
	addi.w	$a0, $s5, -1
	addi.w	$a1, $s5, 0
	slt	$a1, $zero, $a1
	masknez	$a2, $s6, $a1
	maskeqz	$a0, $a0, $a1
	or	$s5, $a0, $a2
	move	$a0, $s3
	move	$a1, $s2
	move	$a2, $s5
	move	$a3, $s1
	move	$a4, $fp
	pcaddu18i	$ra, %call36(_ZL14EdgeSeparationPK12btBox2dShapeRK11btTransformiS1_S4_)
	jirl	$ra, $ra, 0
	fcmp.clt.s	$fcc0, $fs1, $fa0
	bcnez	$fcc0, .LBB7_3
# %bb.9:                                #   in Loop: Header=BB7_8 Depth=1
	fcmp.clt.s	$fcc0, $fs0, $fa0
	bcnez	$fcc0, .LBB7_8
	b	.LBB7_13
.LBB7_10:
	fcmp.cule.s	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB7_13
	.p2align	4, , 16
.LBB7_11:                               # %.split
                                        # =>This Inner Loop Header: Depth=1
	fmov.s	$fs0, $fa0
	move	$s4, $s6
	addi.w	$a0, $s6, 1
	addi.w	$a1, $s6, 0
	slti	$a1, $a1, 3
	maskeqz	$s6, $a0, $a1
	move	$a0, $s3
	move	$a1, $s2
	move	$a2, $s6
	move	$a3, $s1
	move	$a4, $fp
	pcaddu18i	$ra, %call36(_ZL14EdgeSeparationPK12btBox2dShapeRK11btTransformiS1_S4_)
	jirl	$ra, $ra, 0
	fcmp.clt.s	$fcc0, $fs1, $fa0
	bcnez	$fcc0, .LBB7_3
# %bb.12:                               #   in Loop: Header=BB7_11 Depth=1
	fcmp.clt.s	$fcc0, $fs0, $fa0
	bcnez	$fcc0, .LBB7_11
.LBB7_13:                               # %.loopexit.sink.split
	st.w	$s4, $s0, 0
	b	.LBB7_4
.Lfunc_end7:
	.size	_ZL17FindMaxSeparationPiPK12btBox2dShapeRK11btTransformS2_S5_, .Lfunc_end7-_ZL17FindMaxSeparationPiPK12btBox2dShapeRK11btTransformS2_S5_
                                        # -- End function
	.section	.text._ZN30btBox2dBox2dCollisionAlgorithm22getAllContactManifoldsER20btAlignedObjectArrayIP20btPersistentManifoldE,"axG",@progbits,_ZN30btBox2dBox2dCollisionAlgorithm22getAllContactManifoldsER20btAlignedObjectArrayIP20btPersistentManifoldE,comdat
	.weak	_ZN30btBox2dBox2dCollisionAlgorithm22getAllContactManifoldsER20btAlignedObjectArrayIP20btPersistentManifoldE # -- Begin function _ZN30btBox2dBox2dCollisionAlgorithm22getAllContactManifoldsER20btAlignedObjectArrayIP20btPersistentManifoldE
	.p2align	5
	.type	_ZN30btBox2dBox2dCollisionAlgorithm22getAllContactManifoldsER20btAlignedObjectArrayIP20btPersistentManifoldE,@function
_ZN30btBox2dBox2dCollisionAlgorithm22getAllContactManifoldsER20btAlignedObjectArrayIP20btPersistentManifoldE: # @_ZN30btBox2dBox2dCollisionAlgorithm22getAllContactManifoldsER20btAlignedObjectArrayIP20btPersistentManifoldE
	.cfi_startproc
# %bb.0:
	ld.d	$a2, $a0, 24
	beqz	$a2, .LBB8_20
# %bb.1:
	ld.b	$a3, $a0, 16
	andi	$a3, $a3, 1
	beqz	$a3, .LBB8_20
# %bb.2:
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
	ld.w	$a3, $a1, 4
	ld.w	$a4, $a1, 8
	bne	$a3, $a4, .LBB8_19
# %bb.3:
	sltui	$a4, $a3, 1
	slli.w	$a5, $a3, 1
	masknez	$a5, $a5, $a4
	ori	$a6, $zero, 1
	maskeqz	$a4, $a6, $a4
	or	$s0, $a4, $a5
	bge	$a3, $s0, .LBB8_19
# %bb.4:
	beqz	$s0, .LBB8_14
# %bb.5:
	slli.d	$a2, $s0, 3
	move	$fp, $a1
	ori	$a1, $zero, 16
	move	$s1, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
	move	$a1, $fp
	ld.w	$a3, $fp, 4
	move	$fp, $a0
	move	$a0, $s1
	ld.d	$a2, $a1, 16
	blez	$a3, .LBB8_15
.LBB8_6:                                # %.lr.ph.i.i.i
	ori	$a5, $zero, 4
	move	$a4, $zero
	bltu	$a3, $a5, .LBB8_11
# %bb.7:                                # %.lr.ph.i.i.i
	sub.d	$a5, $fp, $a2
	ori	$a6, $zero, 32
	bltu	$a5, $a6, .LBB8_11
# %bb.8:                                # %vector.ph
	bstrpick.d	$a4, $a3, 30, 2
	slli.d	$a4, $a4, 2
	addi.d	$a5, $a2, 16
	addi.d	$a6, $fp, 16
	move	$a7, $a4
	.p2align	4, , 16
.LBB8_9:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a5, -16
	vld	$vr1, $a5, 0
	vst	$vr0, $a6, -16
	vst	$vr1, $a6, 0
	addi.d	$a7, $a7, -4
	addi.d	$a5, $a5, 32
	addi.d	$a6, $a6, 32
	bnez	$a7, .LBB8_9
# %bb.10:                               # %middle.block
	beq	$a4, $a3, .LBB8_13
.LBB8_11:                               # %scalar.ph.preheader
	sub.d	$a5, $a3, $a4
	alsl.d	$a6, $a4, $a2, 3
	alsl.d	$a4, $a4, $fp, 3
	.p2align	4, , 16
.LBB8_12:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a7, $a6, 0
	st.d	$a7, $a4, 0
	addi.d	$a5, $a5, -1
	addi.d	$a6, $a6, 8
	addi.d	$a4, $a4, 8
	bnez	$a5, .LBB8_12
.LBB8_13:                               # %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.thread.i.i
	ld.bu	$a4, $a1, 24
	bnez	$a4, .LBB8_17
	b	.LBB8_18
.LBB8_14:
	move	$fp, $zero
	ld.d	$a2, $a1, 16
	bgtz	$a3, .LBB8_6
.LBB8_15:                               # %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.i.i
	beqz	$a2, .LBB8_18
# %bb.16:                               # %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.i.i
	ld.b	$a4, $a1, 24
	andi	$a4, $a4, 1
	beqz	$a4, .LBB8_18
.LBB8_17:
	move	$s1, $a0
	move	$a0, $a2
	move	$s2, $a1
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	move	$a1, $s2
	ld.w	$a3, $s2, 4
.LBB8_18:                               # %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE10deallocateEv.exit.i.i
	ori	$a4, $zero, 1
	ld.d	$a2, $a0, 24
	st.b	$a4, $a1, 24
	st.d	$fp, $a1, 16
	st.w	$s0, $a1, 8
.LBB8_19:                               # %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE9push_backERKS1_.exit
	ld.d	$a0, $a1, 16
	slli.d	$a4, $a3, 3
	stx.d	$a2, $a0, $a4
	addi.d	$a0, $a3, 1
	st.w	$a0, $a1, 4
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
.LBB8_20:
	ret
.Lfunc_end8:
	.size	_ZN30btBox2dBox2dCollisionAlgorithm22getAllContactManifoldsER20btAlignedObjectArrayIP20btPersistentManifoldE, .Lfunc_end8-_ZN30btBox2dBox2dCollisionAlgorithm22getAllContactManifoldsER20btAlignedObjectArrayIP20btPersistentManifoldE
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZL14EdgeSeparationPK12btBox2dShapeRK11btTransformiS1_S4_
.LCPI9_0:
	.word	0x5d5e0b6b                      # float 9.99999984E+17
	.text
	.p2align	5
	.type	_ZL14EdgeSeparationPK12btBox2dShapeRK11btTransformiS1_S4_,@function
_ZL14EdgeSeparationPK12btBox2dShapeRK11btTransformiS1_S4_: # @_ZL14EdgeSeparationPK12btBox2dShapeRK11btTransformiS1_S4_
# %bb.0:
	addi.d	$sp, $sp, -48
	fst.d	$fs0, $sp, 40                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 8                    # 8-byte Folded Spill
	alsl.d	$a0, $a2, $a0, 4
	fld.s	$ft4, $a1, 4
	fld.s	$fa2, $a0, 148
	fld.s	$ft5, $a1, 0
	fld.s	$fa3, $a0, 144
	fmul.s	$fa0, $ft4, $fa2
	fld.s	$ft10, $a1, 8
	fld.s	$fa4, $a0, 152
	fld.s	$ft7, $a1, 20
	fld.s	$ft6, $a1, 16
	fmadd.s	$fa0, $ft5, $fa3, $fa0
	fmadd.s	$fa0, $ft10, $fa4, $fa0
	fmul.s	$fa1, $fa2, $ft7
	fmadd.s	$fa1, $ft6, $fa3, $fa1
	fld.s	$ft12, $a1, 24
	fld.s	$ft9, $a1, 36
	fld.s	$ft8, $a1, 32
	fld.s	$ft11, $a1, 40
	fmadd.s	$fa1, $ft12, $fa4, $fa1
	fmul.s	$fa2, $fa2, $ft9
	fmadd.s	$fa2, $ft8, $fa3, $fa2
	fmadd.s	$fa2, $ft11, $fa4, $fa2
	fld.s	$ft1, $a4, 0
	fld.s	$fa6, $a4, 16
	fld.s	$fa3, $a4, 32
	fld.s	$ft2, $a4, 4
	fld.s	$fa7, $a4, 20
	fld.s	$fa4, $a4, 36
	fld.s	$ft3, $a4, 8
	fld.s	$ft0, $a4, 24
	fld.s	$fa5, $a4, 40
	fmul.s	$ft13, $fa1, $fa6
	fmadd.s	$ft13, $ft1, $fa0, $ft13
	fmadd.s	$ft13, $fa3, $fa2, $ft13
	fmul.s	$ft14, $fa1, $fa7
	fmadd.s	$ft14, $ft2, $fa0, $ft14
	fmadd.s	$ft14, $fa4, $fa2, $ft14
	fmul.s	$ft15, $fa1, $ft0
	fmadd.s	$ft15, $ft3, $fa0, $ft15
	fld.s	$fs0, $a3, 84
	fld.s	$fs1, $a3, 80
	fld.s	$fs2, $a3, 88
	fmadd.s	$ft15, $fa5, $fa2, $ft15
	fmul.s	$fs0, $ft14, $fs0
	fmadd.s	$fs0, $fs1, $ft13, $fs0
	fmadd.s	$fs0, $fs2, $ft15, $fs0
	pcalau12i	$a2, %pc_hi20(.LCPI9_0)
	fld.s	$fs1, $a2, %pc_lo12(.LCPI9_0)
	fld.s	$fs2, $a3, 100
	fld.s	$fs3, $a3, 96
	fld.s	$fs4, $a3, 104
	fmin.s	$fs0, $fs0, $fs1
	fmul.s	$fs1, $ft14, $fs2
	fmadd.s	$fs1, $fs3, $ft13, $fs1
	fmadd.s	$fs1, $fs4, $ft15, $fs1
	fcmp.clt.s	$fcc0, $fs1, $fs0
	fld.s	$fs2, $a3, 116
	fld.s	$fs3, $a3, 112
	fld.s	$fs4, $a3, 120
	fsel	$fs0, $fs0, $fs1, $fcc0
	fmul.s	$fs1, $ft14, $fs2
	fmadd.s	$fs1, $fs3, $ft13, $fs1
	fmadd.s	$fs1, $fs4, $ft15, $fs1
	fcmp.clt.s	$fcc1, $fs1, $fs0
	fld.s	$fs2, $a3, 132
	fsel	$fs0, $fs0, $fs1, $fcc1
	fld.s	$fs1, $a3, 128
	fld.s	$fs3, $a3, 136
	fmul.s	$ft14, $ft14, $fs2
	addi.d	$a2, $a3, 80
	fmadd.s	$ft13, $fs1, $ft13, $ft14
	fmadd.s	$ft13, $fs3, $ft15, $ft13
	fcmp.clt.s	$fcc2, $ft13, $fs0
	fld.s	$ft13, $a0, 84
	fld.s	$ft14, $a0, 80
	fld.s	$ft15, $a0, 88
	fld.s	$fs0, $a1, 48
	fmul.s	$ft4, $ft4, $ft13
	fmadd.s	$ft4, $ft5, $ft14, $ft4
	fmadd.s	$ft4, $ft10, $ft15, $ft4
	fadd.s	$ft4, $fs0, $ft4
	fld.s	$ft5, $a1, 52
	fmul.s	$ft7, $ft7, $ft13
	fmadd.s	$ft6, $ft6, $ft14, $ft7
	fmadd.s	$ft6, $ft12, $ft15, $ft6
	fadd.s	$ft5, $ft5, $ft6
	fld.s	$ft6, $a1, 56
	fmul.s	$ft7, $ft9, $ft13
	fmadd.s	$ft7, $ft8, $ft14, $ft7
	fmadd.s	$ft7, $ft11, $ft15, $ft7
	fadd.s	$ft6, $ft7, $ft6
	movcf2gr	$a0, $fcc0
	movcf2gr	$a1, $fcc1
	masknez	$a0, $a0, $a1
	ori	$a3, $zero, 2
	maskeqz	$a1, $a3, $a1
	or	$a0, $a1, $a0
	movcf2gr	$a1, $fcc2
	masknez	$a0, $a0, $a1
	ori	$a3, $zero, 3
	maskeqz	$a1, $a3, $a1
	or	$a0, $a1, $a0
	alsl.d	$a1, $a0, $a2, 4
	slli.d	$a0, $a0, 4
	fld.s	$ft7, $a1, 4
	fldx.s	$ft8, $a2, $a0
	fld.s	$ft9, $a1, 8
	fld.s	$ft10, $a4, 48
	fmul.s	$ft2, $ft2, $ft7
	fmadd.s	$ft1, $ft1, $ft8, $ft2
	fmadd.s	$ft1, $ft3, $ft9, $ft1
	fadd.s	$ft1, $ft10, $ft1
	fld.s	$ft2, $a4, 52
	fmul.s	$fa7, $fa7, $ft7
	fmadd.s	$fa6, $fa6, $ft8, $fa7
	fmadd.s	$fa6, $ft0, $ft9, $fa6
	fadd.s	$fa6, $ft2, $fa6
	fld.s	$fa7, $a4, 56
	fmul.s	$fa4, $fa4, $ft7
	fmadd.s	$fa3, $fa3, $ft8, $fa4
	fmadd.s	$fa3, $fa5, $ft9, $fa3
	fadd.s	$fa3, $fa3, $fa7
	fsub.s	$fa4, $ft1, $ft4
	fsub.s	$fa5, $fa6, $ft5
	fsub.s	$fa3, $fa3, $ft6
	fmul.s	$fa1, $fa1, $fa5
	fmadd.s	$fa0, $fa4, $fa0, $fa1
	fmadd.s	$fa0, $fa3, $fa2, $fa0
	fld.d	$fs4, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs3, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 40                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end9:
	.size	_ZL14EdgeSeparationPK12btBox2dShapeRK11btTransformiS1_S4_, .Lfunc_end9-_ZL14EdgeSeparationPK12btBox2dShapeRK11btTransformiS1_S4_
                                        # -- End function
	.type	_ZTV30btBox2dBox2dCollisionAlgorithm,@object # @_ZTV30btBox2dBox2dCollisionAlgorithm
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTV30btBox2dBox2dCollisionAlgorithm
	.p2align	3, 0x0
_ZTV30btBox2dBox2dCollisionAlgorithm:
	.dword	0
	.dword	_ZTI30btBox2dBox2dCollisionAlgorithm
	.dword	_ZN30btBox2dBox2dCollisionAlgorithmD2Ev
	.dword	_ZN30btBox2dBox2dCollisionAlgorithmD0Ev
	.dword	_ZN30btBox2dBox2dCollisionAlgorithm16processCollisionEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult
	.dword	_ZN30btBox2dBox2dCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult
	.dword	_ZN30btBox2dBox2dCollisionAlgorithm22getAllContactManifoldsER20btAlignedObjectArrayIP20btPersistentManifoldE
	.size	_ZTV30btBox2dBox2dCollisionAlgorithm, 56

	.type	b2_maxManifoldPoints,@object    # @b2_maxManifoldPoints
	.data
	.globl	b2_maxManifoldPoints
	.p2align	2, 0x0
b2_maxManifoldPoints:
	.word	2                               # 0x2
	.size	b2_maxManifoldPoints, 4

	.type	_ZTI30btBox2dBox2dCollisionAlgorithm,@object # @_ZTI30btBox2dBox2dCollisionAlgorithm
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTI30btBox2dBox2dCollisionAlgorithm
	.p2align	3, 0x0
_ZTI30btBox2dBox2dCollisionAlgorithm:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS30btBox2dBox2dCollisionAlgorithm
	.dword	_ZTI30btActivatingCollisionAlgorithm
	.size	_ZTI30btBox2dBox2dCollisionAlgorithm, 24

	.type	_ZTS30btBox2dBox2dCollisionAlgorithm,@object # @_ZTS30btBox2dBox2dCollisionAlgorithm
	.section	.rodata,"a",@progbits
	.globl	_ZTS30btBox2dBox2dCollisionAlgorithm
_ZTS30btBox2dBox2dCollisionAlgorithm:
	.asciz	"30btBox2dBox2dCollisionAlgorithm"
	.size	_ZTS30btBox2dBox2dCollisionAlgorithm, 33

	.globl	_ZN30btBox2dBox2dCollisionAlgorithmC1EP20btPersistentManifoldRK36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS6_
	.type	_ZN30btBox2dBox2dCollisionAlgorithmC1EP20btPersistentManifoldRK36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS6_,@function
_ZN30btBox2dBox2dCollisionAlgorithmC1EP20btPersistentManifoldRK36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS6_ = _ZN30btBox2dBox2dCollisionAlgorithmC2EP20btPersistentManifoldRK36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS6_
	.globl	_ZN30btBox2dBox2dCollisionAlgorithmD1Ev
	.type	_ZN30btBox2dBox2dCollisionAlgorithmD1Ev,@function
_ZN30btBox2dBox2dCollisionAlgorithmD1Ev = _ZN30btBox2dBox2dCollisionAlgorithmD2Ev
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
	.addrsig_sym _Unwind_Resume
	.addrsig_sym _ZTI30btBox2dBox2dCollisionAlgorithm
	.addrsig_sym _ZTVN10__cxxabiv120__si_class_type_infoE
	.addrsig_sym _ZTS30btBox2dBox2dCollisionAlgorithm
	.addrsig_sym _ZTI30btActivatingCollisionAlgorithm
