	.file	"btConvex2dConvex2dAlgorithm.cpp"
	.text
	.globl	_ZN27btConvex2dConvex2dAlgorithm10CreateFuncC2EP22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolver # -- Begin function _ZN27btConvex2dConvex2dAlgorithm10CreateFuncC2EP22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolver
	.p2align	5
	.type	_ZN27btConvex2dConvex2dAlgorithm10CreateFuncC2EP22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolver,@function
_ZN27btConvex2dConvex2dAlgorithm10CreateFuncC2EP22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolver: # @_ZN27btConvex2dConvex2dAlgorithm10CreateFuncC2EP22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolver
# %bb.0:
	st.b	$zero, $a0, 8
	pcalau12i	$a3, %pc_hi20(_ZTVN27btConvex2dConvex2dAlgorithm10CreateFuncE+16)
	addi.d	$a3, $a3, %pc_lo12(_ZTVN27btConvex2dConvex2dAlgorithm10CreateFuncE+16)
	st.d	$a3, $a0, 0
	ori	$a3, $zero, 0
	lu32i.d	$a3, 3
	st.d	$a3, $a0, 32
	st.d	$a1, $a0, 24
	st.d	$a2, $a0, 16
	ret
.Lfunc_end0:
	.size	_ZN27btConvex2dConvex2dAlgorithm10CreateFuncC2EP22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolver, .Lfunc_end0-_ZN27btConvex2dConvex2dAlgorithm10CreateFuncC2EP22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolver
                                        # -- End function
	.globl	_ZN27btConvex2dConvex2dAlgorithm10CreateFuncD2Ev # -- Begin function _ZN27btConvex2dConvex2dAlgorithm10CreateFuncD2Ev
	.p2align	5
	.type	_ZN27btConvex2dConvex2dAlgorithm10CreateFuncD2Ev,@function
_ZN27btConvex2dConvex2dAlgorithm10CreateFuncD2Ev: # @_ZN27btConvex2dConvex2dAlgorithm10CreateFuncD2Ev
# %bb.0:
	ret
.Lfunc_end1:
	.size	_ZN27btConvex2dConvex2dAlgorithm10CreateFuncD2Ev, .Lfunc_end1-_ZN27btConvex2dConvex2dAlgorithm10CreateFuncD2Ev
                                        # -- End function
	.globl	_ZN27btConvex2dConvex2dAlgorithm10CreateFuncD0Ev # -- Begin function _ZN27btConvex2dConvex2dAlgorithm10CreateFuncD0Ev
	.p2align	5
	.type	_ZN27btConvex2dConvex2dAlgorithm10CreateFuncD0Ev,@function
_ZN27btConvex2dConvex2dAlgorithm10CreateFuncD0Ev: # @_ZN27btConvex2dConvex2dAlgorithm10CreateFuncD0Ev
	.cfi_startproc
# %bb.0:
	pcaddu18i	$t8, %call36(_ZdlPv)
	jr	$t8
.Lfunc_end2:
	.size	_ZN27btConvex2dConvex2dAlgorithm10CreateFuncD0Ev, .Lfunc_end2-_ZN27btConvex2dConvex2dAlgorithm10CreateFuncD0Ev
	.cfi_endproc
                                        # -- End function
	.globl	_ZN27btConvex2dConvex2dAlgorithmC2EP20btPersistentManifoldRK36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS6_P22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolverii # -- Begin function _ZN27btConvex2dConvex2dAlgorithmC2EP20btPersistentManifoldRK36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS6_P22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolverii
	.p2align	5
	.type	_ZN27btConvex2dConvex2dAlgorithmC2EP20btPersistentManifoldRK36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS6_P22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolverii,@function
_ZN27btConvex2dConvex2dAlgorithmC2EP20btPersistentManifoldRK36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS6_P22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolverii: # @_ZN27btConvex2dConvex2dAlgorithmC2EP20btPersistentManifoldRK36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS6_P22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolverii
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
	ld.d	$s4, $sp, 64
	move	$fp, $a7
	move	$s0, $a6
	move	$s1, $a5
	move	$s2, $a1
	move	$s3, $a0
	move	$a1, $a2
	move	$a2, $a3
	move	$a3, $a4
	pcaddu18i	$ra, %call36(_ZN30btActivatingCollisionAlgorithmC2ERK36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS4_)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(_ZTV27btConvex2dConvex2dAlgorithm+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV27btConvex2dConvex2dAlgorithm+16)
	st.d	$a0, $s3, 0
	st.d	$s1, $s3, 16
	st.d	$s0, $s3, 24
	st.b	$zero, $s3, 32
	st.d	$s2, $s3, 40
	st.b	$zero, $s3, 48
	st.w	$fp, $s3, 52
	st.w	$s4, $s3, 56
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end3:
	.size	_ZN27btConvex2dConvex2dAlgorithmC2EP20btPersistentManifoldRK36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS6_P22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolverii, .Lfunc_end3-_ZN27btConvex2dConvex2dAlgorithmC2EP20btPersistentManifoldRK36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS6_P22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolverii
	.cfi_endproc
                                        # -- End function
	.globl	_ZN27btConvex2dConvex2dAlgorithmD2Ev # -- Begin function _ZN27btConvex2dConvex2dAlgorithmD2Ev
	.p2align	5
	.type	_ZN27btConvex2dConvex2dAlgorithmD2Ev,@function
_ZN27btConvex2dConvex2dAlgorithmD2Ev:   # @_ZN27btConvex2dConvex2dAlgorithmD2Ev
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
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
	pcalau12i	$a0, %pc_hi20(_ZTV27btConvex2dConvex2dAlgorithm+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV27btConvex2dConvex2dAlgorithm+16)
	ld.bu	$a1, $fp, 32
	st.d	$a0, $fp, 0
	beqz	$a1, .LBB4_3
# %bb.1:
	ld.d	$a1, $fp, 40
	beqz	$a1, .LBB4_3
# %bb.2:
	ld.d	$a0, $fp, 8
	ld.d	$a2, $a0, 0
	ld.d	$a2, $a2, 32
.Ltmp0:                                 # EH_LABEL
	jirl	$ra, $a2, 0
.Ltmp1:                                 # EH_LABEL
.LBB4_3:
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZN30btActivatingCollisionAlgorithmD2Ev)
	jr	$t8
.LBB4_4:
.Ltmp2:                                 # EH_LABEL
	move	$s0, $a0
.Ltmp3:                                 # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN30btActivatingCollisionAlgorithmD2Ev)
	jirl	$ra, $ra, 0
.Ltmp4:                                 # EH_LABEL
# %bb.5:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB4_6:
.Ltmp5:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end4:
	.size	_ZN27btConvex2dConvex2dAlgorithmD2Ev, .Lfunc_end4-_ZN27btConvex2dConvex2dAlgorithmD2Ev
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
	.uleb128 .Ltmp1-.Lfunc_begin0           # >> Call Site 2 <<
	.uleb128 .Ltmp3-.Ltmp1                  #   Call between .Ltmp1 and .Ltmp3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp3-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp4-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp4
	.uleb128 .Ltmp5-.Lfunc_begin0           #     jumps to .Ltmp5
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp4-.Lfunc_begin0           # >> Call Site 4 <<
	.uleb128 .Lfunc_end4-.Ltmp4             #   Call between .Ltmp4 and .Lfunc_end4
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
.Lfunc_end5:
	.size	__clang_call_terminate, .Lfunc_end5-__clang_call_terminate
                                        # -- End function
	.text
	.globl	_ZN27btConvex2dConvex2dAlgorithmD0Ev # -- Begin function _ZN27btConvex2dConvex2dAlgorithmD0Ev
	.p2align	5
	.type	_ZN27btConvex2dConvex2dAlgorithmD0Ev,@function
_ZN27btConvex2dConvex2dAlgorithmD0Ev:   # @_ZN27btConvex2dConvex2dAlgorithmD0Ev
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
	pcalau12i	$a0, %pc_hi20(_ZTV27btConvex2dConvex2dAlgorithm+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV27btConvex2dConvex2dAlgorithm+16)
	ld.bu	$a1, $fp, 32
	st.d	$a0, $fp, 0
	beqz	$a1, .LBB6_3
# %bb.1:
	ld.d	$a1, $fp, 40
	beqz	$a1, .LBB6_3
# %bb.2:
	ld.d	$a0, $fp, 8
	ld.d	$a2, $a0, 0
	ld.d	$a2, $a2, 32
.Ltmp6:                                 # EH_LABEL
	jirl	$ra, $a2, 0
.Ltmp7:                                 # EH_LABEL
.LBB6_3:
.Ltmp12:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN30btActivatingCollisionAlgorithmD2Ev)
	jirl	$ra, $ra, 0
.Ltmp13:                                # EH_LABEL
# %bb.4:                                # %_ZN27btConvex2dConvex2dAlgorithmD2Ev.exit
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZdlPv)
	jr	$t8
.LBB6_5:
.Ltmp8:                                 # EH_LABEL
	move	$s0, $a0
.Ltmp9:                                 # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN30btActivatingCollisionAlgorithmD2Ev)
	jirl	$ra, $ra, 0
.Ltmp10:                                # EH_LABEL
	b	.LBB6_8
.LBB6_6:
.Ltmp11:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB6_7:
.Ltmp14:                                # EH_LABEL
	move	$s0, $a0
.LBB6_8:                                # %.body
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end6:
	.size	_ZN27btConvex2dConvex2dAlgorithmD0Ev, .Lfunc_end6-_ZN27btConvex2dConvex2dAlgorithmD0Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table6:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Ltmp6-.Lfunc_begin1           # >> Call Site 1 <<
	.uleb128 .Ltmp7-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp7
	.uleb128 .Ltmp8-.Lfunc_begin1           #     jumps to .Ltmp8
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp12-.Lfunc_begin1          # >> Call Site 2 <<
	.uleb128 .Ltmp13-.Ltmp12                #   Call between .Ltmp12 and .Ltmp13
	.uleb128 .Ltmp14-.Lfunc_begin1          #     jumps to .Ltmp14
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp13-.Lfunc_begin1          # >> Call Site 3 <<
	.uleb128 .Ltmp9-.Ltmp13                 #   Call between .Ltmp13 and .Ltmp9
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp9-.Lfunc_begin1           # >> Call Site 4 <<
	.uleb128 .Ltmp10-.Ltmp9                 #   Call between .Ltmp9 and .Ltmp10
	.uleb128 .Ltmp11-.Lfunc_begin1          #     jumps to .Ltmp11
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp10-.Lfunc_begin1          # >> Call Site 5 <<
	.uleb128 .Lfunc_end6-.Ltmp10            #   Call between .Ltmp10 and .Lfunc_end6
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
	.globl	_ZN27btConvex2dConvex2dAlgorithm19setLowLevelOfDetailEb # -- Begin function _ZN27btConvex2dConvex2dAlgorithm19setLowLevelOfDetailEb
	.p2align	5
	.type	_ZN27btConvex2dConvex2dAlgorithm19setLowLevelOfDetailEb,@function
_ZN27btConvex2dConvex2dAlgorithm19setLowLevelOfDetailEb: # @_ZN27btConvex2dConvex2dAlgorithm19setLowLevelOfDetailEb
# %bb.0:
	st.b	$a1, $a0, 48
	ret
.Lfunc_end7:
	.size	_ZN27btConvex2dConvex2dAlgorithm19setLowLevelOfDetailEb, .Lfunc_end7-_ZN27btConvex2dConvex2dAlgorithm19setLowLevelOfDetailEb
                                        # -- End function
	.globl	_ZN27btConvex2dConvex2dAlgorithm16processCollisionEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult # -- Begin function _ZN27btConvex2dConvex2dAlgorithm16processCollisionEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult
	.p2align	5
	.type	_ZN27btConvex2dConvex2dAlgorithm16processCollisionEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult,@function
_ZN27btConvex2dConvex2dAlgorithm16processCollisionEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult: # @_ZN27btConvex2dConvex2dAlgorithm16processCollisionEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -336
	.cfi_def_cfa_offset 336
	st.d	$ra, $sp, 328                   # 8-byte Folded Spill
	st.d	$fp, $sp, 320                   # 8-byte Folded Spill
	st.d	$s0, $sp, 312                   # 8-byte Folded Spill
	st.d	$s1, $sp, 304                   # 8-byte Folded Spill
	st.d	$s2, $sp, 296                   # 8-byte Folded Spill
	st.d	$s3, $sp, 288                   # 8-byte Folded Spill
	st.d	$s4, $sp, 280                   # 8-byte Folded Spill
	st.d	$s5, $sp, 272                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 264                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 256                  # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 56, -72
	.cfi_offset 57, -80
	move	$s0, $a0
	ld.d	$a0, $a0, 40
	move	$fp, $a4
	move	$s1, $a3
	move	$s2, $a2
	move	$s3, $a1
	bnez	$a0, .LBB8_2
# %bb.1:
	ld.d	$a0, $s0, 8
	ld.d	$a1, $a0, 0
	ld.d	$a3, $a1, 24
	move	$a1, $s3
	move	$a2, $s2
	jirl	$ra, $a3, 0
	st.d	$a0, $s0, 40
	ori	$a1, $zero, 1
	st.b	$a1, $s0, 32
.LBB8_2:
	ld.d	$s4, $s3, 200
	ld.d	$s5, $s2, 200
	ld.d	$a3, $s0, 16
	ld.d	$a4, $s0, 24
	st.d	$a0, $fp, 8
	addi.d	$a0, $sp, 16
	move	$a1, $s4
	move	$a2, $s5
	pcaddu18i	$ra, %call36(_ZN17btGjkPairDetectorC1EPK13btConvexShapeS2_P22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolver)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	ld.d	$a1, $a0, 88
	st.d	$s4, $sp, 56
	st.d	$s5, $sp, 64
	move	$a0, $s4
	jirl	$ra, $a1, 0
	ld.d	$a0, $s5, 0
	ld.d	$a1, $a0, 88
	fmov.s	$fs0, $fa0
	move	$a0, $s5
	jirl	$ra, $a1, 0
	ld.d	$a0, $s0, 40
	fmov.s	$fs1, $fa0
	pcaddu18i	$ra, %call36(_ZNK20btPersistentManifold27getContactBreakingThresholdEv)
	jirl	$ra, $ra, 0
	fadd.s	$fa1, $fs0, $fs1
	fadd.s	$fa0, $fa1, $fa0
	fmul.s	$fa0, $fa0, $fa0
	vld	$vr1, $s3, 8
	vld	$vr2, $s3, 24
	fst.s	$fa0, $sp, 240
	ld.d	$a0, $s1, 48
	vst	$vr1, $sp, 112
	vst	$vr2, $sp, 128
	vld	$vr0, $s3, 40
	vld	$vr1, $s3, 56
	vld	$vr2, $s2, 8
	st.d	$a0, $sp, 248
	vst	$vr0, $sp, 144
	vst	$vr1, $sp, 160
	vst	$vr2, $sp, 176
	vld	$vr0, $s2, 24
	vld	$vr1, $s2, 40
	vld	$vr2, $s2, 56
	ld.d	$a3, $s1, 24
	vst	$vr0, $sp, 192
	vst	$vr1, $sp, 208
	vst	$vr2, $sp, 224
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 112
	move	$a2, $fp
	move	$a4, $zero
	pcaddu18i	$ra, %call36(_ZN17btGjkPairDetector16getClosestPointsERKN36btDiscreteCollisionDetectorInterface17ClosestPointInputERNS0_6ResultEP12btIDebugDrawb)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s0, 32
	beqz	$a0, .LBB8_5
# %bb.3:
	ld.d	$a0, $fp, 8
	ld.w	$a1, $a0, 728
	beqz	$a1, .LBB8_5
# %bb.4:                                # %.sink.split.i
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
	pcaddu18i	$ra, %call36(_ZN20btPersistentManifold20refreshContactPointsERK11btTransformS2_)
	jirl	$ra, $ra, 0
.LBB8_5:                                # %_ZN16btManifoldResult20refreshContactPointsEv.exit
	fld.d	$fs1, $sp, 256                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 264                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 320                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 328                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 336
	ret
.Lfunc_end8:
	.size	_ZN27btConvex2dConvex2dAlgorithm16processCollisionEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult, .Lfunc_end8-_ZN27btConvex2dConvex2dAlgorithm16processCollisionEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult
	.cfi_endproc
                                        # -- End function
	.globl	_ZN27btConvex2dConvex2dAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult # -- Begin function _ZN27btConvex2dConvex2dAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult
	.p2align	5
	.type	_ZN27btConvex2dConvex2dAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult,@function
_ZN27btConvex2dConvex2dAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult: # @_ZN27btConvex2dConvex2dAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception2
# %bb.0:
	addi.d	$sp, $sp, -784
	.cfi_def_cfa_offset 784
	st.d	$ra, $sp, 776                   # 8-byte Folded Spill
	st.d	$fp, $sp, 768                   # 8-byte Folded Spill
	st.d	$s0, $sp, 760                   # 8-byte Folded Spill
	st.d	$s1, $sp, 752                   # 8-byte Folded Spill
	st.d	$s2, $sp, 744                   # 8-byte Folded Spill
	st.d	$s3, $sp, 736                   # 8-byte Folded Spill
	st.d	$s4, $sp, 728                   # 8-byte Folded Spill
	st.d	$s5, $sp, 720                   # 8-byte Folded Spill
	st.d	$s6, $sp, 712                   # 8-byte Folded Spill
	st.d	$s7, $sp, 704                   # 8-byte Folded Spill
	st.d	$s8, $sp, 696                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 688                  # 8-byte Folded Spill
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
	move	$fp, $a1
	fld.s	$fa0, $a1, 120
	fld.s	$fa1, $a1, 56
	fld.s	$fa2, $a1, 124
	fld.s	$fa3, $a1, 60
	fld.s	$fa4, $a1, 128
	fld.s	$fa5, $a1, 64
	fsub.s	$fa0, $fa0, $fa1
	fsub.s	$fa1, $fa2, $fa3
	fsub.s	$fa2, $fa4, $fa5
	fld.s	$fa3, $a1, 268
	fmul.s	$fa1, $fa1, $fa1
	fmadd.s	$fa0, $fa0, $fa0, $fa1
	fmadd.s	$fa0, $fa2, $fa2, $fa0
	fmul.s	$fa1, $fa3, $fa3
	fcmp.cule.s	$fcc0, $fa1, $fa0
	move	$s0, $a2
	bcnez	$fcc0, .LBB9_3
# %bb.1:
	fld.s	$fa0, $s0, 128
	fld.s	$fa1, $s0, 64
	fld.s	$fa2, $s0, 120
	fld.s	$fa3, $s0, 56
	fld.s	$fa4, $s0, 124
	fld.s	$fa5, $s0, 60
	fsub.s	$fa0, $fa0, $fa1
	fsub.s	$fa1, $fa2, $fa3
	fsub.s	$fa2, $fa4, $fa5
	fld.s	$fa3, $s0, 268
	fmul.s	$fa2, $fa2, $fa2
	fmadd.s	$fa1, $fa1, $fa1, $fa2
	fmadd.s	$fa0, $fa0, $fa0, $fa1
	fmul.s	$fa1, $fa3, $fa3
	fcmp.clt.s	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB9_3
# %bb.2:
	vldi	$vr0, -1168
	b	.LBB9_24
.LBB9_3:
	ld.d	$s1, $fp, 200
	fld.s	$fs0, $s0, 264
	addi.d	$a0, $sp, 624
	pcaddu18i	$ra, %call36(_ZN21btConvexInternalShapeC2Ev)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(_ZTV13btSphereShape)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTV13btSphereShape)
	addi.d	$s6, $a0, 16
	st.d	$s6, $sp, 624
	ori	$a0, $zero, 8
	st.w	$a0, $sp, 632
	fst.s	$fs0, $sp, 664
	fst.s	$fs0, $sp, 680
	pcalau12i	$a0, %pc_hi20(_ZTVN12btConvexCast10CastResultE+16)
	addi.d	$s7, $a0, %pc_lo12(_ZTVN12btConvexCast10CastResultE+16)
	st.d	$s7, $sp, 432
	lu12i.w	$a0, 382432
	ori	$s8, $a0, 2923
	st.w	$s8, $sp, 600
	st.d	$zero, $sp, 608
	st.w	$zero, $sp, 616
	st.b	$zero, $sp, 404
.Ltmp15:                                # EH_LABEL
	addi.d	$a0, $sp, 40
	addi.d	$a2, $sp, 624
	addi.d	$a3, $sp, 76
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZN15btGjkConvexCastC1EPK13btConvexShapeS2_P22btVoronoiSimplexSolver)
	jirl	$ra, $ra, 0
.Ltmp16:                                # EH_LABEL
# %bb.4:
.Ltmp17:                                # EH_LABEL
	addi.d	$s1, $fp, 72
	addi.d	$s3, $fp, 8
	addi.d	$s2, $s0, 72
	addi.d	$s4, $s0, 8
	addi.d	$a0, $sp, 40
	addi.d	$a5, $sp, 432
	move	$a1, $s3
	move	$a2, $s1
	move	$a3, $s4
	move	$a4, $s2
	pcaddu18i	$ra, %call36(_ZN15btGjkConvexCast16calcTimeOfImpactERK11btTransformS2_S2_S2_RN12btConvexCast10CastResultE)
	jirl	$ra, $ra, 0
.Ltmp18:                                # EH_LABEL
# %bb.5:
	beqz	$a0, .LBB9_12
# %bb.6:
	fld.s	$fa1, $fp, 260
	fld.s	$fa0, $sp, 600
	fcmp.cule.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB9_8
# %bb.7:
	fst.s	$fa0, $fp, 260
.LBB9_8:
	fld.s	$fa1, $s0, 260
	fcmp.cule.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB9_10
# %bb.9:
	fst.s	$fa0, $s0, 260
.LBB9_10:
	vldi	$vr2, -1168
	vldi	$vr1, -1168
	vst	$vr1, $sp, 16                   # 16-byte Folded Spill
	fcmp.cule.s	$fcc0, $fa2, $fa0
	bcnez	$fcc0, .LBB9_14
# %bb.11:
                                        # kill: def $f0 killed $f0 def $vr0
	b	.LBB9_13
.LBB9_12:
	vldi	$vr0, -1168
.LBB9_13:
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
.LBB9_14:
.Ltmp22:                                # EH_LABEL
	addi.d	$a0, $sp, 40
	pcaddu18i	$ra, %call36(_ZN12btConvexCastD2Ev)
	jirl	$ra, $ra, 0
.Ltmp23:                                # EH_LABEL
# %bb.15:
	addi.d	$a0, $sp, 624
	pcaddu18i	$ra, %call36(_ZN13btConvexShapeD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$s5, $s0, 200
	fld.s	$fs0, $fp, 264
	addi.d	$a0, $sp, 624
	pcaddu18i	$ra, %call36(_ZN21btConvexInternalShapeC2Ev)
	jirl	$ra, $ra, 0
	st.d	$s6, $sp, 624
	ori	$a0, $zero, 8
	st.w	$a0, $sp, 632
	fst.s	$fs0, $sp, 664
	fst.s	$fs0, $sp, 680
	st.d	$s7, $sp, 432
	st.w	$s8, $sp, 600
	st.d	$zero, $sp, 608
	st.w	$zero, $sp, 616
	st.b	$zero, $sp, 404
.Ltmp27:                                # EH_LABEL
	addi.d	$a0, $sp, 40
	addi.d	$a1, $sp, 624
	addi.d	$a3, $sp, 76
	move	$a2, $s5
	pcaddu18i	$ra, %call36(_ZN15btGjkConvexCastC1EPK13btConvexShapeS2_P22btVoronoiSimplexSolver)
	jirl	$ra, $ra, 0
.Ltmp28:                                # EH_LABEL
# %bb.16:
.Ltmp29:                                # EH_LABEL
	addi.d	$a0, $sp, 40
	addi.d	$a5, $sp, 432
	move	$a1, $s3
	move	$a2, $s1
	move	$a3, $s4
	move	$a4, $s2
	pcaddu18i	$ra, %call36(_ZN15btGjkConvexCast16calcTimeOfImpactERK11btTransformS2_S2_S2_RN12btConvexCast10CastResultE)
	jirl	$ra, $ra, 0
.Ltmp30:                                # EH_LABEL
# %bb.17:
	beqz	$a0, .LBB9_22
# %bb.18:
	fld.s	$fa1, $fp, 260
	fld.s	$fa0, $sp, 600
	fcmp.cule.s	$fcc0, $fa1, $fa0
	bceqz	$fcc0, .LBB9_25
# %bb.19:
	fld.s	$fa1, $s0, 260
	fcmp.cule.s	$fcc0, $fa1, $fa0
	bceqz	$fcc0, .LBB9_26
.LBB9_20:
	vld	$vr1, $sp, 16                   # 16-byte Folded Reload
	fcmp.cule.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB9_22
.LBB9_21:
                                        # kill: def $f0 killed $f0 def $vr0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
.LBB9_22:
.Ltmp34:                                # EH_LABEL
	addi.d	$a0, $sp, 40
	pcaddu18i	$ra, %call36(_ZN12btConvexCastD2Ev)
	jirl	$ra, $ra, 0
.Ltmp35:                                # EH_LABEL
# %bb.23:
	addi.d	$a0, $sp, 624
	pcaddu18i	$ra, %call36(_ZN13btConvexShapeD2Ev)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
.LBB9_24:
                                        # kill: def $f0 killed $f0 killed $vr0
	fld.d	$fs0, $sp, 688                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 696                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 704                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 712                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 720                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 728                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 736                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 744                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 752                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 760                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 768                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 776                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 784
	ret
.LBB9_25:
	fst.s	$fa0, $fp, 260
	fld.s	$fa1, $s0, 260
	fcmp.cule.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB9_20
.LBB9_26:
	fst.s	$fa0, $s0, 260
	vld	$vr1, $sp, 16                   # 16-byte Folded Reload
	fcmp.cule.s	$fcc0, $fa1, $fa0
	bceqz	$fcc0, .LBB9_21
	b	.LBB9_22
.LBB9_27:
.Ltmp31:                                # EH_LABEL
	move	$fp, $a0
.Ltmp32:                                # EH_LABEL
	addi.d	$a0, $sp, 40
	pcaddu18i	$ra, %call36(_ZN12btConvexCastD2Ev)
	jirl	$ra, $ra, 0
.Ltmp33:                                # EH_LABEL
	b	.LBB9_30
.LBB9_28:
.Ltmp19:                                # EH_LABEL
	move	$fp, $a0
.Ltmp20:                                # EH_LABEL
	addi.d	$a0, $sp, 40
	pcaddu18i	$ra, %call36(_ZN12btConvexCastD2Ev)
	jirl	$ra, $ra, 0
.Ltmp21:                                # EH_LABEL
	b	.LBB9_32
.LBB9_29:
.Ltmp36:                                # EH_LABEL
	move	$fp, $a0
.LBB9_30:
.Ltmp37:                                # EH_LABEL
	addi.d	$a0, $sp, 624
	pcaddu18i	$ra, %call36(_ZN13btConvexShapeD2Ev)
	jirl	$ra, $ra, 0
.Ltmp38:                                # EH_LABEL
	b	.LBB9_33
.LBB9_31:
.Ltmp24:                                # EH_LABEL
	move	$fp, $a0
.LBB9_32:
.Ltmp25:                                # EH_LABEL
	addi.d	$a0, $sp, 624
	pcaddu18i	$ra, %call36(_ZN13btConvexShapeD2Ev)
	jirl	$ra, $ra, 0
.Ltmp26:                                # EH_LABEL
.LBB9_33:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB9_34:
.Ltmp39:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end9:
	.size	_ZN27btConvex2dConvex2dAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult, .Lfunc_end9-_ZN27btConvex2dConvex2dAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table9:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase2-.Lttbaseref2
.Lttbaseref2:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Lfunc_begin2-.Lfunc_begin2    # >> Call Site 1 <<
	.uleb128 .Ltmp15-.Lfunc_begin2          #   Call between .Lfunc_begin2 and .Ltmp15
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp15-.Lfunc_begin2          # >> Call Site 2 <<
	.uleb128 .Ltmp16-.Ltmp15                #   Call between .Ltmp15 and .Ltmp16
	.uleb128 .Ltmp24-.Lfunc_begin2          #     jumps to .Ltmp24
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp17-.Lfunc_begin2          # >> Call Site 3 <<
	.uleb128 .Ltmp18-.Ltmp17                #   Call between .Ltmp17 and .Ltmp18
	.uleb128 .Ltmp19-.Lfunc_begin2          #     jumps to .Ltmp19
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp22-.Lfunc_begin2          # >> Call Site 4 <<
	.uleb128 .Ltmp23-.Ltmp22                #   Call between .Ltmp22 and .Ltmp23
	.uleb128 .Ltmp24-.Lfunc_begin2          #     jumps to .Ltmp24
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp23-.Lfunc_begin2          # >> Call Site 5 <<
	.uleb128 .Ltmp27-.Ltmp23                #   Call between .Ltmp23 and .Ltmp27
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp27-.Lfunc_begin2          # >> Call Site 6 <<
	.uleb128 .Ltmp28-.Ltmp27                #   Call between .Ltmp27 and .Ltmp28
	.uleb128 .Ltmp36-.Lfunc_begin2          #     jumps to .Ltmp36
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp29-.Lfunc_begin2          # >> Call Site 7 <<
	.uleb128 .Ltmp30-.Ltmp29                #   Call between .Ltmp29 and .Ltmp30
	.uleb128 .Ltmp31-.Lfunc_begin2          #     jumps to .Ltmp31
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp34-.Lfunc_begin2          # >> Call Site 8 <<
	.uleb128 .Ltmp35-.Ltmp34                #   Call between .Ltmp34 and .Ltmp35
	.uleb128 .Ltmp36-.Lfunc_begin2          #     jumps to .Ltmp36
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp35-.Lfunc_begin2          # >> Call Site 9 <<
	.uleb128 .Ltmp32-.Ltmp35                #   Call between .Ltmp35 and .Ltmp32
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp32-.Lfunc_begin2          # >> Call Site 10 <<
	.uleb128 .Ltmp26-.Ltmp32                #   Call between .Ltmp32 and .Ltmp26
	.uleb128 .Ltmp39-.Lfunc_begin2          #     jumps to .Ltmp39
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp26-.Lfunc_begin2          # >> Call Site 11 <<
	.uleb128 .Lfunc_end9-.Ltmp26            #   Call between .Ltmp26 and .Lfunc_end9
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
	.section	.text._ZN12btConvexCast10CastResultD2Ev,"axG",@progbits,_ZN12btConvexCast10CastResultD2Ev,comdat
	.weak	_ZN12btConvexCast10CastResultD2Ev # -- Begin function _ZN12btConvexCast10CastResultD2Ev
	.p2align	5
	.type	_ZN12btConvexCast10CastResultD2Ev,@function
_ZN12btConvexCast10CastResultD2Ev:      # @_ZN12btConvexCast10CastResultD2Ev
# %bb.0:
	ret
.Lfunc_end10:
	.size	_ZN12btConvexCast10CastResultD2Ev, .Lfunc_end10-_ZN12btConvexCast10CastResultD2Ev
                                        # -- End function
	.section	.text._ZN27btConvex2dConvex2dAlgorithm10CreateFunc24CreateCollisionAlgorithmER36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS4_,"axG",@progbits,_ZN27btConvex2dConvex2dAlgorithm10CreateFunc24CreateCollisionAlgorithmER36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS4_,comdat
	.weak	_ZN27btConvex2dConvex2dAlgorithm10CreateFunc24CreateCollisionAlgorithmER36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS4_ # -- Begin function _ZN27btConvex2dConvex2dAlgorithm10CreateFunc24CreateCollisionAlgorithmER36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS4_
	.p2align	5
	.type	_ZN27btConvex2dConvex2dAlgorithm10CreateFunc24CreateCollisionAlgorithmER36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS4_,@function
_ZN27btConvex2dConvex2dAlgorithm10CreateFunc24CreateCollisionAlgorithmER36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS4_: # @_ZN27btConvex2dConvex2dAlgorithm10CreateFunc24CreateCollisionAlgorithmER36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS4_
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
	move	$fp, $a1
	ld.d	$a4, $a1, 0
	ld.d	$a1, $a4, 0
	ld.d	$a5, $a1, 96
	move	$s0, $a3
	move	$s1, $a2
	move	$s2, $a0
	ori	$a1, $zero, 64
	move	$a0, $a4
	jirl	$ra, $a5, 0
	ld.d	$s3, $fp, 8
	ld.d	$s4, $s2, 24
	ld.d	$s5, $s2, 16
	ld.d	$s6, $s2, 32
	move	$s2, $a0
	move	$a1, $fp
	move	$a2, $s1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZN30btActivatingCollisionAlgorithmC2ERK36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS4_)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(_ZTV27btConvex2dConvex2dAlgorithm+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV27btConvex2dConvex2dAlgorithm+16)
	st.d	$a0, $s2, 0
	st.d	$s4, $s2, 16
	st.d	$s5, $s2, 24
	st.b	$zero, $s2, 32
	st.d	$s3, $s2, 40
	st.b	$zero, $s2, 48
	st.d	$s6, $s2, 52
	move	$a0, $s2
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
.Lfunc_end11:
	.size	_ZN27btConvex2dConvex2dAlgorithm10CreateFunc24CreateCollisionAlgorithmER36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS4_, .Lfunc_end11-_ZN27btConvex2dConvex2dAlgorithm10CreateFunc24CreateCollisionAlgorithmER36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS4_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN27btConvex2dConvex2dAlgorithm22getAllContactManifoldsER20btAlignedObjectArrayIP20btPersistentManifoldE,"axG",@progbits,_ZN27btConvex2dConvex2dAlgorithm22getAllContactManifoldsER20btAlignedObjectArrayIP20btPersistentManifoldE,comdat
	.weak	_ZN27btConvex2dConvex2dAlgorithm22getAllContactManifoldsER20btAlignedObjectArrayIP20btPersistentManifoldE # -- Begin function _ZN27btConvex2dConvex2dAlgorithm22getAllContactManifoldsER20btAlignedObjectArrayIP20btPersistentManifoldE
	.p2align	5
	.type	_ZN27btConvex2dConvex2dAlgorithm22getAllContactManifoldsER20btAlignedObjectArrayIP20btPersistentManifoldE,@function
_ZN27btConvex2dConvex2dAlgorithm22getAllContactManifoldsER20btAlignedObjectArrayIP20btPersistentManifoldE: # @_ZN27btConvex2dConvex2dAlgorithm22getAllContactManifoldsER20btAlignedObjectArrayIP20btPersistentManifoldE
	.cfi_startproc
# %bb.0:
	ld.d	$a2, $a0, 40
	beqz	$a2, .LBB12_20
# %bb.1:
	ld.b	$a3, $a0, 32
	andi	$a3, $a3, 1
	beqz	$a3, .LBB12_20
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
	bne	$a3, $a4, .LBB12_19
# %bb.3:
	sltui	$a4, $a3, 1
	slli.w	$a5, $a3, 1
	masknez	$a5, $a5, $a4
	ori	$a6, $zero, 1
	maskeqz	$a4, $a6, $a4
	or	$s0, $a4, $a5
	bge	$a3, $s0, .LBB12_19
# %bb.4:
	beqz	$s0, .LBB12_14
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
	blez	$a3, .LBB12_15
.LBB12_6:                               # %.lr.ph.i.i.i
	ori	$a5, $zero, 4
	move	$a4, $zero
	bltu	$a3, $a5, .LBB12_11
# %bb.7:                                # %.lr.ph.i.i.i
	sub.d	$a5, $fp, $a2
	ori	$a6, $zero, 32
	bltu	$a5, $a6, .LBB12_11
# %bb.8:                                # %vector.ph
	bstrpick.d	$a4, $a3, 30, 2
	slli.d	$a4, $a4, 2
	addi.d	$a5, $a2, 16
	addi.d	$a6, $fp, 16
	move	$a7, $a4
	.p2align	4, , 16
.LBB12_9:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a5, -16
	vld	$vr1, $a5, 0
	vst	$vr0, $a6, -16
	vst	$vr1, $a6, 0
	addi.d	$a7, $a7, -4
	addi.d	$a5, $a5, 32
	addi.d	$a6, $a6, 32
	bnez	$a7, .LBB12_9
# %bb.10:                               # %middle.block
	beq	$a4, $a3, .LBB12_13
.LBB12_11:                              # %scalar.ph.preheader
	sub.d	$a5, $a3, $a4
	alsl.d	$a6, $a4, $a2, 3
	alsl.d	$a4, $a4, $fp, 3
	.p2align	4, , 16
.LBB12_12:                              # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a7, $a6, 0
	st.d	$a7, $a4, 0
	addi.d	$a5, $a5, -1
	addi.d	$a6, $a6, 8
	addi.d	$a4, $a4, 8
	bnez	$a5, .LBB12_12
.LBB12_13:                              # %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.thread.i.i
	ld.bu	$a4, $a1, 24
	bnez	$a4, .LBB12_17
	b	.LBB12_18
.LBB12_14:
	move	$fp, $zero
	ld.d	$a2, $a1, 16
	bgtz	$a3, .LBB12_6
.LBB12_15:                              # %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.i.i
	beqz	$a2, .LBB12_18
# %bb.16:                               # %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.i.i
	ld.b	$a4, $a1, 24
	andi	$a4, $a4, 1
	beqz	$a4, .LBB12_18
.LBB12_17:
	move	$s1, $a0
	move	$a0, $a2
	move	$s2, $a1
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	move	$a1, $s2
	ld.w	$a3, $s2, 4
.LBB12_18:                              # %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE10deallocateEv.exit.i.i
	ori	$a4, $zero, 1
	ld.d	$a2, $a0, 40
	st.b	$a4, $a1, 24
	st.d	$fp, $a1, 16
	st.w	$s0, $a1, 8
.LBB12_19:                              # %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE9push_backERKS1_.exit
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
.LBB12_20:
	ret
.Lfunc_end12:
	.size	_ZN27btConvex2dConvex2dAlgorithm22getAllContactManifoldsER20btAlignedObjectArrayIP20btPersistentManifoldE, .Lfunc_end12-_ZN27btConvex2dConvex2dAlgorithm22getAllContactManifoldsER20btAlignedObjectArrayIP20btPersistentManifoldE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN12btConvexCast10CastResult9DebugDrawEf,"axG",@progbits,_ZN12btConvexCast10CastResult9DebugDrawEf,comdat
	.weak	_ZN12btConvexCast10CastResult9DebugDrawEf # -- Begin function _ZN12btConvexCast10CastResult9DebugDrawEf
	.p2align	5
	.type	_ZN12btConvexCast10CastResult9DebugDrawEf,@function
_ZN12btConvexCast10CastResult9DebugDrawEf: # @_ZN12btConvexCast10CastResult9DebugDrawEf
# %bb.0:
	ret
.Lfunc_end13:
	.size	_ZN12btConvexCast10CastResult9DebugDrawEf, .Lfunc_end13-_ZN12btConvexCast10CastResult9DebugDrawEf
                                        # -- End function
	.section	.text._ZN12btConvexCast10CastResult15drawCoordSystemERK11btTransform,"axG",@progbits,_ZN12btConvexCast10CastResult15drawCoordSystemERK11btTransform,comdat
	.weak	_ZN12btConvexCast10CastResult15drawCoordSystemERK11btTransform # -- Begin function _ZN12btConvexCast10CastResult15drawCoordSystemERK11btTransform
	.p2align	5
	.type	_ZN12btConvexCast10CastResult15drawCoordSystemERK11btTransform,@function
_ZN12btConvexCast10CastResult15drawCoordSystemERK11btTransform: # @_ZN12btConvexCast10CastResult15drawCoordSystemERK11btTransform
# %bb.0:
	ret
.Lfunc_end14:
	.size	_ZN12btConvexCast10CastResult15drawCoordSystemERK11btTransform, .Lfunc_end14-_ZN12btConvexCast10CastResult15drawCoordSystemERK11btTransform
                                        # -- End function
	.section	.text._ZN12btConvexCast10CastResultD0Ev,"axG",@progbits,_ZN12btConvexCast10CastResultD0Ev,comdat
	.weak	_ZN12btConvexCast10CastResultD0Ev # -- Begin function _ZN12btConvexCast10CastResultD0Ev
	.p2align	5
	.type	_ZN12btConvexCast10CastResultD0Ev,@function
_ZN12btConvexCast10CastResultD0Ev:      # @_ZN12btConvexCast10CastResultD0Ev
	.cfi_startproc
# %bb.0:
	pcaddu18i	$t8, %call36(_ZdlPv)
	jr	$t8
.Lfunc_end15:
	.size	_ZN12btConvexCast10CastResultD0Ev, .Lfunc_end15-_ZN12btConvexCast10CastResultD0Ev
	.cfi_endproc
                                        # -- End function
	.type	_ZTVN27btConvex2dConvex2dAlgorithm10CreateFuncE,@object # @_ZTVN27btConvex2dConvex2dAlgorithm10CreateFuncE
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTVN27btConvex2dConvex2dAlgorithm10CreateFuncE
	.p2align	3, 0x0
_ZTVN27btConvex2dConvex2dAlgorithm10CreateFuncE:
	.dword	0
	.dword	_ZTIN27btConvex2dConvex2dAlgorithm10CreateFuncE
	.dword	_ZN27btConvex2dConvex2dAlgorithm10CreateFuncD2Ev
	.dword	_ZN27btConvex2dConvex2dAlgorithm10CreateFuncD0Ev
	.dword	_ZN27btConvex2dConvex2dAlgorithm10CreateFunc24CreateCollisionAlgorithmER36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS4_
	.size	_ZTVN27btConvex2dConvex2dAlgorithm10CreateFuncE, 40

	.type	_ZTV27btConvex2dConvex2dAlgorithm,@object # @_ZTV27btConvex2dConvex2dAlgorithm
	.globl	_ZTV27btConvex2dConvex2dAlgorithm
	.p2align	3, 0x0
_ZTV27btConvex2dConvex2dAlgorithm:
	.dword	0
	.dword	_ZTI27btConvex2dConvex2dAlgorithm
	.dword	_ZN27btConvex2dConvex2dAlgorithmD2Ev
	.dword	_ZN27btConvex2dConvex2dAlgorithmD0Ev
	.dword	_ZN27btConvex2dConvex2dAlgorithm16processCollisionEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult
	.dword	_ZN27btConvex2dConvex2dAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult
	.dword	_ZN27btConvex2dConvex2dAlgorithm22getAllContactManifoldsER20btAlignedObjectArrayIP20btPersistentManifoldE
	.size	_ZTV27btConvex2dConvex2dAlgorithm, 56

	.type	_ZTIN27btConvex2dConvex2dAlgorithm10CreateFuncE,@object # @_ZTIN27btConvex2dConvex2dAlgorithm10CreateFuncE
	.globl	_ZTIN27btConvex2dConvex2dAlgorithm10CreateFuncE
	.p2align	3, 0x0
_ZTIN27btConvex2dConvex2dAlgorithm10CreateFuncE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTSN27btConvex2dConvex2dAlgorithm10CreateFuncE
	.dword	_ZTI30btCollisionAlgorithmCreateFunc
	.size	_ZTIN27btConvex2dConvex2dAlgorithm10CreateFuncE, 24

	.type	_ZTSN27btConvex2dConvex2dAlgorithm10CreateFuncE,@object # @_ZTSN27btConvex2dConvex2dAlgorithm10CreateFuncE
	.section	.rodata,"a",@progbits
	.globl	_ZTSN27btConvex2dConvex2dAlgorithm10CreateFuncE
_ZTSN27btConvex2dConvex2dAlgorithm10CreateFuncE:
	.asciz	"N27btConvex2dConvex2dAlgorithm10CreateFuncE"
	.size	_ZTSN27btConvex2dConvex2dAlgorithm10CreateFuncE, 44

	.type	_ZTI30btCollisionAlgorithmCreateFunc,@object # @_ZTI30btCollisionAlgorithmCreateFunc
	.section	.data.rel.ro._ZTI30btCollisionAlgorithmCreateFunc,"awG",@progbits,_ZTI30btCollisionAlgorithmCreateFunc,comdat
	.weak	_ZTI30btCollisionAlgorithmCreateFunc
	.p2align	3, 0x0
_ZTI30btCollisionAlgorithmCreateFunc:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTS30btCollisionAlgorithmCreateFunc
	.size	_ZTI30btCollisionAlgorithmCreateFunc, 16

	.type	_ZTS30btCollisionAlgorithmCreateFunc,@object # @_ZTS30btCollisionAlgorithmCreateFunc
	.section	.rodata._ZTS30btCollisionAlgorithmCreateFunc,"aG",@progbits,_ZTS30btCollisionAlgorithmCreateFunc,comdat
	.weak	_ZTS30btCollisionAlgorithmCreateFunc
_ZTS30btCollisionAlgorithmCreateFunc:
	.asciz	"30btCollisionAlgorithmCreateFunc"
	.size	_ZTS30btCollisionAlgorithmCreateFunc, 33

	.type	_ZTI27btConvex2dConvex2dAlgorithm,@object # @_ZTI27btConvex2dConvex2dAlgorithm
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTI27btConvex2dConvex2dAlgorithm
	.p2align	3, 0x0
_ZTI27btConvex2dConvex2dAlgorithm:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS27btConvex2dConvex2dAlgorithm
	.dword	_ZTI30btActivatingCollisionAlgorithm
	.size	_ZTI27btConvex2dConvex2dAlgorithm, 24

	.type	_ZTS27btConvex2dConvex2dAlgorithm,@object # @_ZTS27btConvex2dConvex2dAlgorithm
	.section	.rodata,"a",@progbits
	.globl	_ZTS27btConvex2dConvex2dAlgorithm
_ZTS27btConvex2dConvex2dAlgorithm:
	.asciz	"27btConvex2dConvex2dAlgorithm"
	.size	_ZTS27btConvex2dConvex2dAlgorithm, 30

	.type	_ZTVN12btConvexCast10CastResultE,@object # @_ZTVN12btConvexCast10CastResultE
	.section	.data.rel.ro._ZTVN12btConvexCast10CastResultE,"awG",@progbits,_ZTVN12btConvexCast10CastResultE,comdat
	.weak	_ZTVN12btConvexCast10CastResultE
	.p2align	3, 0x0
_ZTVN12btConvexCast10CastResultE:
	.dword	0
	.dword	_ZTIN12btConvexCast10CastResultE
	.dword	_ZN12btConvexCast10CastResult9DebugDrawEf
	.dword	_ZN12btConvexCast10CastResult15drawCoordSystemERK11btTransform
	.dword	_ZN12btConvexCast10CastResultD2Ev
	.dword	_ZN12btConvexCast10CastResultD0Ev
	.size	_ZTVN12btConvexCast10CastResultE, 48

	.type	_ZTIN12btConvexCast10CastResultE,@object # @_ZTIN12btConvexCast10CastResultE
	.section	.data.rel.ro._ZTIN12btConvexCast10CastResultE,"awG",@progbits,_ZTIN12btConvexCast10CastResultE,comdat
	.weak	_ZTIN12btConvexCast10CastResultE
	.p2align	3, 0x0
_ZTIN12btConvexCast10CastResultE:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTSN12btConvexCast10CastResultE
	.size	_ZTIN12btConvexCast10CastResultE, 16

	.type	_ZTSN12btConvexCast10CastResultE,@object # @_ZTSN12btConvexCast10CastResultE
	.section	.rodata._ZTSN12btConvexCast10CastResultE,"aG",@progbits,_ZTSN12btConvexCast10CastResultE,comdat
	.weak	_ZTSN12btConvexCast10CastResultE
_ZTSN12btConvexCast10CastResultE:
	.asciz	"N12btConvexCast10CastResultE"
	.size	_ZTSN12btConvexCast10CastResultE, 29

	.globl	_ZN27btConvex2dConvex2dAlgorithm10CreateFuncC1EP22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolver
	.type	_ZN27btConvex2dConvex2dAlgorithm10CreateFuncC1EP22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolver,@function
_ZN27btConvex2dConvex2dAlgorithm10CreateFuncC1EP22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolver = _ZN27btConvex2dConvex2dAlgorithm10CreateFuncC2EP22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolver
	.globl	_ZN27btConvex2dConvex2dAlgorithm10CreateFuncD1Ev
	.type	_ZN27btConvex2dConvex2dAlgorithm10CreateFuncD1Ev,@function
_ZN27btConvex2dConvex2dAlgorithm10CreateFuncD1Ev = _ZN27btConvex2dConvex2dAlgorithm10CreateFuncD2Ev
	.globl	_ZN27btConvex2dConvex2dAlgorithmC1EP20btPersistentManifoldRK36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS6_P22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolverii
	.type	_ZN27btConvex2dConvex2dAlgorithmC1EP20btPersistentManifoldRK36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS6_P22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolverii,@function
_ZN27btConvex2dConvex2dAlgorithmC1EP20btPersistentManifoldRK36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS6_P22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolverii = _ZN27btConvex2dConvex2dAlgorithmC2EP20btPersistentManifoldRK36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS6_P22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolverii
	.globl	_ZN27btConvex2dConvex2dAlgorithmD1Ev
	.type	_ZN27btConvex2dConvex2dAlgorithmD1Ev,@function
_ZN27btConvex2dConvex2dAlgorithmD1Ev = _ZN27btConvex2dConvex2dAlgorithmD2Ev
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
	.addrsig_sym _ZTIN27btConvex2dConvex2dAlgorithm10CreateFuncE
	.addrsig_sym _ZTVN10__cxxabiv120__si_class_type_infoE
	.addrsig_sym _ZTSN27btConvex2dConvex2dAlgorithm10CreateFuncE
	.addrsig_sym _ZTI30btCollisionAlgorithmCreateFunc
	.addrsig_sym _ZTVN10__cxxabiv117__class_type_infoE
	.addrsig_sym _ZTS30btCollisionAlgorithmCreateFunc
	.addrsig_sym _ZTI27btConvex2dConvex2dAlgorithm
	.addrsig_sym _ZTS27btConvex2dConvex2dAlgorithm
	.addrsig_sym _ZTI30btActivatingCollisionAlgorithm
	.addrsig_sym _ZTIN12btConvexCast10CastResultE
	.addrsig_sym _ZTSN12btConvexCast10CastResultE
