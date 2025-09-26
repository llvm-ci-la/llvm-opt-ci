	.file	"btConvexConvexAlgorithm.cpp"
	.text
	.globl	_ZN23btConvexConvexAlgorithm10CreateFuncC2EP22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolver # -- Begin function _ZN23btConvexConvexAlgorithm10CreateFuncC2EP22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolver
	.p2align	5
	.type	_ZN23btConvexConvexAlgorithm10CreateFuncC2EP22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolver,@function
_ZN23btConvexConvexAlgorithm10CreateFuncC2EP22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolver: # @_ZN23btConvexConvexAlgorithm10CreateFuncC2EP22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolver
# %bb.0:
	st.b	$zero, $a0, 8
	pcalau12i	$a3, %pc_hi20(_ZTVN23btConvexConvexAlgorithm10CreateFuncE+16)
	addi.d	$a3, $a3, %pc_lo12(_ZTVN23btConvexConvexAlgorithm10CreateFuncE+16)
	st.d	$a3, $a0, 0
	ori	$a3, $zero, 0
	lu32i.d	$a3, 3
	st.d	$a3, $a0, 32
	st.d	$a1, $a0, 24
	st.d	$a2, $a0, 16
	ret
.Lfunc_end0:
	.size	_ZN23btConvexConvexAlgorithm10CreateFuncC2EP22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolver, .Lfunc_end0-_ZN23btConvexConvexAlgorithm10CreateFuncC2EP22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolver
                                        # -- End function
	.globl	_ZN23btConvexConvexAlgorithm10CreateFuncD2Ev # -- Begin function _ZN23btConvexConvexAlgorithm10CreateFuncD2Ev
	.p2align	5
	.type	_ZN23btConvexConvexAlgorithm10CreateFuncD2Ev,@function
_ZN23btConvexConvexAlgorithm10CreateFuncD2Ev: # @_ZN23btConvexConvexAlgorithm10CreateFuncD2Ev
# %bb.0:
	ret
.Lfunc_end1:
	.size	_ZN23btConvexConvexAlgorithm10CreateFuncD2Ev, .Lfunc_end1-_ZN23btConvexConvexAlgorithm10CreateFuncD2Ev
                                        # -- End function
	.globl	_ZN23btConvexConvexAlgorithm10CreateFuncD0Ev # -- Begin function _ZN23btConvexConvexAlgorithm10CreateFuncD0Ev
	.p2align	5
	.type	_ZN23btConvexConvexAlgorithm10CreateFuncD0Ev,@function
_ZN23btConvexConvexAlgorithm10CreateFuncD0Ev: # @_ZN23btConvexConvexAlgorithm10CreateFuncD0Ev
	.cfi_startproc
# %bb.0:
	pcaddu18i	$t8, %call36(_ZdlPv)
	jr	$t8
.Lfunc_end2:
	.size	_ZN23btConvexConvexAlgorithm10CreateFuncD0Ev, .Lfunc_end2-_ZN23btConvexConvexAlgorithm10CreateFuncD0Ev
	.cfi_endproc
                                        # -- End function
	.globl	_ZN23btConvexConvexAlgorithmC2EP20btPersistentManifoldRK36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS6_P22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolverii # -- Begin function _ZN23btConvexConvexAlgorithmC2EP20btPersistentManifoldRK36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS6_P22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolverii
	.p2align	5
	.type	_ZN23btConvexConvexAlgorithmC2EP20btPersistentManifoldRK36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS6_P22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolverii,@function
_ZN23btConvexConvexAlgorithmC2EP20btPersistentManifoldRK36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS6_P22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolverii: # @_ZN23btConvexConvexAlgorithmC2EP20btPersistentManifoldRK36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS6_P22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolverii
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
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
	fst.d	$fs0, $sp, 8                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 56, -72
	move	$fp, $a7
	move	$s1, $a6
	move	$s2, $a5
	move	$s4, $a4
	move	$s5, $a3
	move	$s3, $a1
	move	$s0, $a0
	move	$a1, $a2
	move	$a2, $a3
	move	$a3, $a4
	pcaddu18i	$ra, %call36(_ZN30btActivatingCollisionAlgorithmC2ERK36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS4_)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(_ZTV23btConvexConvexAlgorithm+16)
	addi.d	$a1, $a0, %pc_lo12(_ZTV23btConvexConvexAlgorithm+16)
	ld.d	$a0, $s5, 200
	st.d	$a1, $s0, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 32
.Ltmp0:                                 # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp1:                                 # EH_LABEL
# %bb.1:
	fmov.s	$fs0, $fa0
	ld.d	$a0, $s4, 200
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 32
.Ltmp2:                                 # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp3:                                 # EH_LABEL
# %bb.2:
	ld.d	$a0, $sp, 80
	fst.s	$fs0, $s0, 96
	fst.s	$fa0, $s0, 100
	st.w	$zero, $s0, 104
	st.d	$s2, $s0, 112
	st.d	$s1, $s0, 120
	st.b	$zero, $s0, 128
	st.d	$s3, $s0, 136
	st.b	$zero, $s0, 144
	st.w	$fp, $s0, 148
	st.w	$a0, $s0, 152
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
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
.LBB3_3:
.Ltmp4:                                 # EH_LABEL
	move	$fp, $a0
.Ltmp5:                                 # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN30btActivatingCollisionAlgorithmD2Ev)
	jirl	$ra, $ra, 0
.Ltmp6:                                 # EH_LABEL
# %bb.4:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB3_5:
.Ltmp7:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end3:
	.size	_ZN23btConvexConvexAlgorithmC2EP20btPersistentManifoldRK36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS6_P22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolverii, .Lfunc_end3-_ZN23btConvexConvexAlgorithmC2EP20btPersistentManifoldRK36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS6_P22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolverii
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table3:
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
	.uleb128 .Lfunc_end3-.Ltmp6             #   Call between .Ltmp6 and .Lfunc_end3
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
.Lfunc_end4:
	.size	__clang_call_terminate, .Lfunc_end4-__clang_call_terminate
                                        # -- End function
	.text
	.globl	_ZN23btConvexConvexAlgorithmD2Ev # -- Begin function _ZN23btConvexConvexAlgorithmD2Ev
	.p2align	5
	.type	_ZN23btConvexConvexAlgorithmD2Ev,@function
_ZN23btConvexConvexAlgorithmD2Ev:       # @_ZN23btConvexConvexAlgorithmD2Ev
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
	pcalau12i	$a0, %pc_hi20(_ZTV23btConvexConvexAlgorithm+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV23btConvexConvexAlgorithm+16)
	ld.bu	$a1, $fp, 128
	st.d	$a0, $fp, 0
	beqz	$a1, .LBB5_3
# %bb.1:
	ld.d	$a1, $fp, 136
	beqz	$a1, .LBB5_3
# %bb.2:
	ld.d	$a0, $fp, 8
	ld.d	$a2, $a0, 0
	ld.d	$a2, $a2, 32
.Ltmp8:                                 # EH_LABEL
	jirl	$ra, $a2, 0
.Ltmp9:                                 # EH_LABEL
.LBB5_3:
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZN30btActivatingCollisionAlgorithmD2Ev)
	jr	$t8
.LBB5_4:
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
.LBB5_6:
.Ltmp13:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end5:
	.size	_ZN23btConvexConvexAlgorithmD2Ev, .Lfunc_end5-_ZN23btConvexConvexAlgorithmD2Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table5:
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
	.uleb128 .Lfunc_end5-.Ltmp12            #   Call between .Ltmp12 and .Lfunc_end5
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
	.globl	_ZN23btConvexConvexAlgorithmD0Ev # -- Begin function _ZN23btConvexConvexAlgorithmD0Ev
	.p2align	5
	.type	_ZN23btConvexConvexAlgorithmD0Ev,@function
_ZN23btConvexConvexAlgorithmD0Ev:       # @_ZN23btConvexConvexAlgorithmD0Ev
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
	pcalau12i	$a0, %pc_hi20(_ZTV23btConvexConvexAlgorithm+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV23btConvexConvexAlgorithm+16)
	ld.bu	$a1, $fp, 128
	st.d	$a0, $fp, 0
	beqz	$a1, .LBB6_3
# %bb.1:
	ld.d	$a1, $fp, 136
	beqz	$a1, .LBB6_3
# %bb.2:
	ld.d	$a0, $fp, 8
	ld.d	$a2, $a0, 0
	ld.d	$a2, $a2, 32
.Ltmp14:                                # EH_LABEL
	jirl	$ra, $a2, 0
.Ltmp15:                                # EH_LABEL
.LBB6_3:
.Ltmp20:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN30btActivatingCollisionAlgorithmD2Ev)
	jirl	$ra, $ra, 0
.Ltmp21:                                # EH_LABEL
# %bb.4:                                # %_ZN23btConvexConvexAlgorithmD2Ev.exit
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZdlPv)
	jr	$t8
.LBB6_5:
.Ltmp16:                                # EH_LABEL
	move	$s0, $a0
.Ltmp17:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN30btActivatingCollisionAlgorithmD2Ev)
	jirl	$ra, $ra, 0
.Ltmp18:                                # EH_LABEL
	b	.LBB6_8
.LBB6_6:
.Ltmp19:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB6_7:
.Ltmp22:                                # EH_LABEL
	move	$s0, $a0
.LBB6_8:                                # %.body
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end6:
	.size	_ZN23btConvexConvexAlgorithmD0Ev, .Lfunc_end6-_ZN23btConvexConvexAlgorithmD0Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table6:
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
	.uleb128 .Lfunc_end6-.Ltmp18            #   Call between .Ltmp18 and .Lfunc_end6
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
	.globl	_ZN23btConvexConvexAlgorithm19setLowLevelOfDetailEb # -- Begin function _ZN23btConvexConvexAlgorithm19setLowLevelOfDetailEb
	.p2align	5
	.type	_ZN23btConvexConvexAlgorithm19setLowLevelOfDetailEb,@function
_ZN23btConvexConvexAlgorithm19setLowLevelOfDetailEb: # @_ZN23btConvexConvexAlgorithm19setLowLevelOfDetailEb
# %bb.0:
	st.b	$a1, $a0, 144
	ret
.Lfunc_end7:
	.size	_ZN23btConvexConvexAlgorithm19setLowLevelOfDetailEb, .Lfunc_end7-_ZN23btConvexConvexAlgorithm19setLowLevelOfDetailEb
                                        # -- End function
	.globl	_ZN23btConvexConvexAlgorithm16processCollisionEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult # -- Begin function _ZN23btConvexConvexAlgorithm16processCollisionEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult
	.p2align	5
	.type	_ZN23btConvexConvexAlgorithm16processCollisionEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult,@function
_ZN23btConvexConvexAlgorithm16processCollisionEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult: # @_ZN23btConvexConvexAlgorithm16processCollisionEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -1008
	.cfi_def_cfa_offset 1008
	st.d	$ra, $sp, 1000                  # 8-byte Folded Spill
	st.d	$fp, $sp, 992                   # 8-byte Folded Spill
	st.d	$s0, $sp, 984                   # 8-byte Folded Spill
	st.d	$s1, $sp, 976                   # 8-byte Folded Spill
	st.d	$s2, $sp, 968                   # 8-byte Folded Spill
	st.d	$s3, $sp, 960                   # 8-byte Folded Spill
	st.d	$s4, $sp, 952                   # 8-byte Folded Spill
	st.d	$s5, $sp, 944                   # 8-byte Folded Spill
	st.d	$s6, $sp, 936                   # 8-byte Folded Spill
	st.d	$s7, $sp, 928                   # 8-byte Folded Spill
	st.d	$s8, $sp, 920                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 912                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 904                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 896                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 888                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 880                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 872                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 864                  # 8-byte Folded Spill
	fst.d	$fs7, $sp, 856                  # 8-byte Folded Spill
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
	.cfi_offset 57, -104
	.cfi_offset 58, -112
	.cfi_offset 59, -120
	.cfi_offset 60, -128
	.cfi_offset 61, -136
	.cfi_offset 62, -144
	.cfi_offset 63, -152
	move	$s1, $a0
	ld.d	$a0, $a0, 136
	move	$fp, $a4
	move	$s3, $a3
	move	$s0, $a2
	move	$s2, $a1
	bnez	$a0, .LBB8_2
# %bb.1:
	ld.d	$a0, $s1, 8
	ld.d	$a1, $a0, 0
	ld.d	$a3, $a1, 24
	move	$a1, $s2
	move	$a2, $s0
	jirl	$ra, $a3, 0
	st.d	$a0, $s1, 136
	ori	$a1, $zero, 1
	st.b	$a1, $s1, 128
.LBB8_2:
	st.d	$a0, $fp, 8
	ld.d	$s7, $s2, 200
	ld.w	$a1, $s7, 8
	ld.d	$s6, $s0, 200
	ori	$a0, $zero, 10
	bne	$a1, $a0, .LBB8_12
# %bb.3:
	ld.w	$a1, $s6, 8
	bne	$a1, $a0, .LBB8_12
# %bb.4:
	ld.d	$a0, $s7, 0
	ld.d	$a1, $a0, 56
	move	$a0, $s7
	jirl	$ra, $a1, 0
	ld.d	$a0, $s6, 0
	ld.d	$a1, $a0, 56
	move	$a0, $s6
	jirl	$ra, $a1, 0
	ld.d	$a0, $s1, 136
	pcaddu18i	$ra, %call36(_ZNK20btPersistentManifold27getContactBreakingThresholdEv)
	jirl	$ra, $ra, 0
	ld.w	$a4, $s7, 64
	addi.d	$a0, $s7, 40
	slli.d	$a1, $a4, 2
	fldx.s	$fa1, $a0, $a1
	addi.w	$a1, $a4, 2
	lu12i.w	$a2, 349525
	ori	$a3, $a2, 1366
	mul.d	$a2, $a1, $a3
	srli.d	$a5, $a2, 63
	srli.d	$a2, $a2, 32
	add.d	$a2, $a2, $a5
	alsl.d	$a2, $a2, $a2, 1
	ld.w	$a5, $s6, 64
	sub.w	$a1, $a1, $a2
	slli.d	$a1, $a1, 2
	addi.d	$a2, $s6, 40
	slli.d	$a6, $a5, 2
	fldx.s	$ft7, $a2, $a6
	addi.w	$a6, $a5, 2
	mul.d	$a3, $a6, $a3
	srli.d	$a7, $a3, 63
	srli.d	$a3, $a3, 32
	add.d	$a3, $a3, $a7
	alsl.d	$a3, $a3, $a3, 1
	sub.w	$a3, $a6, $a3
	slli.d	$a3, $a3, 2
	alsl.d	$a4, $a4, $s2, 2
	fld.s	$fa7, $a4, 8
	fld.s	$fa5, $a4, 24
	fld.s	$ft0, $a4, 40
	fld.s	$fa6, $s2, 56
	fld.s	$ft5, $s2, 60
	fld.s	$ft6, $s2, 64
	alsl.d	$a4, $a5, $s0, 2
	fld.s	$ft1, $a4, 8
	fld.s	$ft2, $a4, 24
	fld.s	$fa2, $s0, 56
	fld.s	$fa3, $s0, 60
	fld.s	$fa4, $s0, 64
	fld.s	$ft3, $a4, 40
	fsub.s	$ft4, $fa2, $fa6
	fsub.s	$ft5, $fa3, $ft5
	fsub.s	$ft6, $fa4, $ft6
	fmul.s	$fa6, $fa5, $ft2
	fmadd.s	$fa6, $fa7, $ft1, $fa6
	fmadd.s	$ft10, $ft0, $ft3, $fa6
	fmul.s	$ft8, $fa5, $ft5
	fmadd.s	$ft8, $fa7, $ft4, $ft8
	fmadd.s	$ft11, $ft0, $ft6, $ft8
	fmul.s	$ft8, $ft2, $ft5
	fmadd.s	$ft8, $ft1, $ft4, $ft8
	fnmadd.s	$fa6, $ft0, $ft3, $fa6
	vldi	$vr17, -1168
	fmadd.s	$fa6, $fa6, $ft10, $ft9
	movgr2fr.w	$ft9, $zero
	fcmp.ceq.s	$fcc0, $fa6, $ft9
	fnmadd.s	$ft12, $ft3, $ft6, $ft8
	bcnez	$fcc0, .LBB8_8
# %bb.5:
	fmadd.s	$ft8, $ft12, $ft10, $ft11
	fdiv.s	$fa6, $ft8, $fa6
	fneg.s	$ft9, $fa1
	fcmp.clt.s	$fcc0, $fa6, $ft9
	bcnez	$fcc0, .LBB8_8
# %bb.6:
	fcmp.cule.s	$fcc0, $fa6, $fa1
	fmov.s	$ft9, $fa6
	bcnez	$fcc0, .LBB8_8
# %bb.7:
	fmov.s	$ft9, $fa1
.LBB8_8:
	fldx.s	$ft8, $a0, $a1
	fldx.s	$fa6, $a2, $a3
	fmadd.s	$ft12, $ft9, $ft10, $ft12
	fneg.s	$ft13, $ft7
	fcmp.cule.s	$fcc0, $ft13, $ft12
	bcnez	$fcc0, .LBB8_35
# %bb.9:
	fmadd.s	$ft7, $ft13, $ft10, $ft11
	fneg.s	$ft9, $fa1
	fmov.s	$ft12, $ft13
	fcmp.clt.s	$fcc0, $ft7, $ft9
	bcnez	$fcc0, .LBB8_41
# %bb.10:
	fcmp.cule.s	$fcc0, $ft7, $fa1
	bceqz	$fcc0, .LBB8_38
# %bb.11:
	fmov.s	$ft9, $ft7
	b	.LBB8_41
.LBB8_12:
	addi.d	$a0, $s1, 16
	addi.d	$a1, $s2, 8
	addi.d	$a2, $s0, 8
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(_ZN30btConvexSeparatingDistanceUtil24updateSeparatingDistanceERK11btTransformS2_)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s3, 40
	beqz	$a0, .LBB8_14
# %bb.13:
	fld.s	$fa0, $s1, 104
	movgr2fr.w	$fa1, $zero
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB8_34
.LBB8_14:
	ld.d	$a3, $s1, 112
	ld.d	$a4, $s1, 120
	addi.d	$a0, $sp, 616
	move	$a1, $s7
	move	$a2, $s6
	pcaddu18i	$ra, %call36(_ZN17btGjkPairDetectorC1EPK13btConvexShapeS2_P22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolver)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s3, 40
	st.d	$s7, $sp, 656
	st.d	$s6, $sp, 664
	beqz	$a0, .LBB8_16
# %bb.15:
	lu12i.w	$a0, 382432
	ori	$a0, $a0, 2923
	movgr2fr.w	$fa0, $a0
	b	.LBB8_17
.LBB8_16:
	ld.d	$a0, $s7, 0
	ld.d	$a1, $a0, 88
	move	$a0, $s7
	jirl	$ra, $a1, 0
	ld.d	$a0, $s6, 0
	ld.d	$a1, $a0, 88
	fmov.s	$fs0, $fa0
	move	$a0, $s6
	jirl	$ra, $a1, 0
	ld.d	$a0, $s1, 136
	fmov.s	$fs1, $fa0
	pcaddu18i	$ra, %call36(_ZNK20btPersistentManifold27getContactBreakingThresholdEv)
	jirl	$ra, $ra, 0
	fadd.s	$fa1, $fs0, $fs1
	fadd.s	$fa0, $fa1, $fa0
	fmul.s	$fa0, $fa0, $fa0
.LBB8_17:
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	vld	$vr1, $a0, 0
	fst.s	$fa0, $sp, 840
	vld	$vr0, $s2, 24
	vld	$vr2, $s2, 40
	vst	$vr1, $sp, 712
	vld	$vr1, $s2, 56
	vst	$vr0, $sp, 728
	vst	$vr2, $sp, 744
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	vld	$vr0, $a0, 0
	vst	$vr1, $sp, 760
	vld	$vr1, $s0, 24
	ld.d	$a0, $s3, 48
	vst	$vr0, $sp, 776
	vld	$vr0, $s0, 40
	vst	$vr1, $sp, 792
	vld	$vr1, $s0, 56
	ld.d	$a3, $s3, 24
	vst	$vr0, $sp, 808
	st.d	$a0, $sp, 848
	vst	$vr1, $sp, 824
	addi.d	$a0, $sp, 616
	addi.d	$a1, $sp, 712
	move	$a2, $fp
	move	$a4, $zero
	pcaddu18i	$ra, %call36(_ZN17btGjkPairDetector16getClosestPointsERKN36btDiscreteCollisionDetectorInterface17ClosestPointInputERNS0_6ResultEP12btIDebugDrawb)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s3, 40
	lu12i.w	$a3, 212992
	beqz	$a0, .LBB8_21
# %bb.18:
	fld.s	$fa6, $sp, 692
	movgr2fr.w	$fa0, $a3
	fcmp.cule.s	$fcc0, $fa6, $fa0
	bcnez	$fcc0, .LBB8_22
# %bb.19:
	fld.s	$fa0, $sp, 628
	fld.s	$fa1, $sp, 624
	fld.s	$fa2, $sp, 632
	fld.s	$fa3, $s3, 44
	fmul.s	$fa4, $fa0, $fa0
	fmadd.s	$fa4, $fa1, $fa1, $fa4
	fmadd.s	$fa4, $fa2, $fa2, $fa4
	frsqrt.s	$fa4, $fa4
	fmul.s	$fs4, $fa2, $fa4
	fabs.s	$fa2, $fs4
	lu12i.w	$a1, 258896
	ori	$a1, $a1, 1267
	movgr2fr.w	$fa5, $a1
	fcmp.cule.s	$fcc0, $fa2, $fa5
	fmul.s	$fs0, $fa1, $fa4
	fmul.s	$fs7, $fa0, $fa4
	fadd.s	$fa6, $fa6, $fa3
	bcnez	$fcc0, .LBB8_39
# %bb.20:
	fmul.s	$fa0, $fs4, $fs4
	fmadd.s	$fa0, $fs7, $fs7, $fa0
	frsqrt.s	$fa0, $fa0
	fneg.s	$fa1, $fs4
	fmul.s	$fa1, $fa0, $fa1
	fst.s	$fa1, $sp, 140                  # 4-byte Folded Spill
	fmul.s	$fa0, $fs7, $fa0
	fst.s	$fa0, $sp, 136                  # 4-byte Folded Spill
	movgr2fr.w	$fa0, $zero
	fst.s	$fa0, $sp, 144                  # 4-byte Folded Spill
	b	.LBB8_23
.LBB8_21:
	movgr2fr.w	$fa6, $zero
.LBB8_22:
                                        # implicit-def: $f28
                                        # implicit-def: $f24
                                        # implicit-def: $f31
                                        # implicit-def: $f0
                                        # kill: killed $f0
                                        # implicit-def: $f0
                                        # kill: killed $f0
                                        # implicit-def: $f0
                                        # kill: killed $f0
.LBB8_23:                               # %_Z13btPlaneSpace1RK9btVector3RS_S2_.exit
	ld.d	$a1, $fp, 8
	ld.w	$a1, $a1, 728
	ld.w	$a2, $s1, 152
	addi.d	$a4, $s2, 56
	st.d	$a4, $sp, 64                    # 8-byte Folded Spill
	addi.d	$a4, $s0, 56
	st.d	$a4, $sp, 72                    # 8-byte Folded Spill
	bge	$a1, $a2, .LBB8_31
# %bb.24:
	fst.s	$fa6, $sp, 28                   # 4-byte Folded Spill
	ld.d	$a0, $s7, 0
	addi.d	$s4, $sp, 776
	ld.d	$a1, $a0, 32
	addi.d	$s5, $sp, 808
	addi.d	$s8, $sp, 824
	move	$a0, $s7
	jirl	$ra, $a1, 0
	ld.d	$a0, $s6, 0
	ld.d	$a1, $a0, 32
	fmov.s	$fs1, $fa0
	move	$a0, $s6
	jirl	$ra, $a1, 0
	fcmp.clt.s	$fcc0, $fs1, $fa0
	pcalau12i	$a0, %got_pc_hi20(gContactBreakingThreshold)
	ld.d	$a0, $a0, %got_pc_lo12(gContactBreakingThreshold)
	movcf2gr	$a1, $fcc0
	masknez	$a2, $s4, $a1
	addi.d	$a3, $sp, 712
	maskeqz	$a3, $a3, $a1
	or	$a2, $a3, $a2
	addi.d	$a3, $sp, 792
	masknez	$a3, $a3, $a1
	addi.d	$a4, $sp, 728
	maskeqz	$a4, $a4, $a1
	or	$a3, $a4, $a3
	masknez	$a4, $s5, $a1
	addi.d	$a5, $sp, 744
	maskeqz	$a5, $a5, $a1
	or	$a4, $a5, $a4
	vld	$vr1, $a2, 0
	masknez	$a2, $s8, $a1
	addi.d	$a5, $sp, 760
	maskeqz	$a1, $a5, $a1
	or	$a1, $a1, $a2
	vst	$vr1, $sp, 552
	vld	$vr2, $a3, 0
	vld	$vr3, $a4, 0
	vld	$vr4, $a1, 0
	ld.w	$a1, $s1, 148
	fld.s	$fa1, $a0, 0
	vst	$vr2, $sp, 568
	vst	$vr3, $sp, 584
	vst	$vr4, $sp, 600
	blez	$a1, .LBB8_30
# %bb.25:                               # %.lr.ph
	addi.d	$a0, $s2, 24
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	addi.d	$a0, $s2, 40
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	addi.d	$a0, $s0, 24
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	addi.d	$a0, $s0, 40
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	fsel	$fa2, $fa0, $fs1, $fcc0
	fdiv.s	$fa1, $fa1, $fa2
	lu12i.w	$a0, 257168
	ori	$a0, $a0, 4059
	movgr2fr.w	$fa2, $a0
	fcmp.clt.s	$fcc1, $fa2, $fa1
	fsel	$fa1, $fa1, $fa2, $fcc1
	fld.s	$fa2, $sp, 140                  # 4-byte Folded Reload
	fmul.s	$fa2, $fa2, $fa2
	fld.s	$fa3, $sp, 144                  # 4-byte Folded Reload
	fmadd.s	$fa2, $fa3, $fa3, $fa2
	fld.s	$fa3, $sp, 136                  # 4-byte Folded Reload
	fmadd.s	$fa2, $fa3, $fa3, $fa2
	fsqrt.s	$fa2, $fa2
	fst.s	$fa2, $sp, 120                  # 4-byte Folded Spill
	vldi	$vr2, -1184
	fmul.s	$fa1, $fa1, $fa2
	fst.s	$fa1, $sp, 116                  # 4-byte Folded Spill
	fmul.s	$fa1, $fs7, $fs7
	fmadd.s	$fa1, $fs0, $fs0, $fa1
	fmadd.s	$fa1, $fs4, $fs4, $fa1
	fsqrt.s	$fa1, $fa1
	fst.s	$fa1, $sp, 112                  # 4-byte Folded Spill
	movcf2gr	$s7, $fcc0
	lu12i.w	$a0, 265360
	ori	$a0, $a0, 4059
	movgr2fr.w	$fa1, $a0
	fst.s	$fa1, $sp, 108                  # 4-byte Folded Spill
	fcmp.cule.s	$fcc0, $fa0, $fs1
	movcf2gr	$a0, $fcc0
	st.d	$a0, $sp, 96
	pcalau12i	$a0, %pc_hi20(_ZTV24btPerturbedContactResult+16)
	addi.d	$s6, $a0, %pc_lo12(_ZTV24btPerturbedContactResult+16)
	move	$s4, $zero
	fst.s	$fs4, $sp, 132                  # 4-byte Folded Spill
	fst.s	$fs0, $sp, 128                  # 4-byte Folded Spill
	fst.s	$fs7, $sp, 124                  # 4-byte Folded Spill
	b	.LBB8_28
	.p2align	4, , 16
.LBB8_26:                               #   in Loop: Header=BB8_28 Depth=1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	vld	$vr5, $a0, 0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	vld	$vr6, $a0, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	vld	$vr7, $a0, 0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	vld	$vr8, $a0, 0
	vst	$vr5, $sp, 712
	addi.d	$a0, $sp, 728
	vst	$vr6, $a0, 0
	addi.d	$a1, $sp, 744
	vst	$vr7, $a1, 0
	addi.d	$a2, $sp, 760
	vst	$vr8, $a2, 0
	fmul.s	$fa5, $fs1, $fa1
	fmadd.s	$fa5, $fa0, $fs3, $fa5
	fmadd.s	$fa5, $fa4, $fs5, $fa5
	fmadd.s	$fa6, $fs4, $fs6, $fa5
	fmul.s	$fa4, $fs1, $fa4
	fmadd.s	$fa4, $fa0, $fs6, $fa4
	fmadd.s	$fa4, $fa3, $fs3, $fa4
	fmadd.s	$fa7, $fs0, $fs5, $fa4
	fmul.s	$fa3, $fs1, $fa3
	fmadd.s	$fa3, $fa0, $fs5, $fa3
	fmadd.s	$fa3, $fa1, $fs6, $fa3
	fmadd.s	$ft0, $fs7, $fs3, $fa3
	fmadd.s	$fa2, $fa0, $fs1, $fa2
	fmadd.s	$fa2, $fs7, $fs6, $fa2
	fmadd.s	$fa2, $fs4, $fs5, $fa2
	fmul.s	$ft1, $fa0, $fa6
	fmadd.s	$ft1, $fa2, $fs0, $ft1
	fmadd.s	$ft1, $fa7, $fs4, $ft1
	fnmadd.s	$fa3, $fs7, $fs3, $fa3
	fmadd.s	$ft1, $fa3, $fs7, $ft1
	fmul.s	$fa7, $fa0, $fa7
	fmadd.s	$fa7, $fa2, $fs7, $fa7
	fmadd.s	$fa7, $ft0, $fs0, $fa7
	fnmadd.s	$fa5, $fs4, $fs6, $fa5
	fmadd.s	$fa5, $fa5, $fs4, $fa7
	fmul.s	$fa7, $fa0, $ft0
	fmadd.s	$fa7, $fa2, $fs4, $fa7
	fmadd.s	$fa7, $fa6, $fs7, $fa7
	fnmadd.s	$fa4, $fs0, $fs5, $fa4
	fmadd.s	$fa7, $fa4, $fs0, $fa7
	fmul.s	$fa1, $fa6, $fa1
	fmadd.s	$fa0, $fa2, $fa0, $fa1
	fmadd.s	$fa0, $fa4, $fs7, $fa0
	fmadd.s	$fa0, $fa3, $fs4, $fa0
	fmul.s	$fa1, $fa5, $fa5
	fmadd.s	$fa1, $ft1, $ft1, $fa1
	fmadd.s	$fa1, $fa7, $fa7, $fa1
	fmadd.s	$fa1, $fa0, $fa0, $fa1
	vldi	$vr2, -1280
	fdiv.s	$fa1, $fa2, $fa1
	fmul.s	$fa2, $ft1, $fa1
	fmul.s	$fa3, $fa5, $fa1
	fmul.s	$fa1, $fa7, $fa1
	fmul.s	$fa4, $fa0, $fa2
	fmul.s	$fa6, $fa0, $fa3
	fmul.s	$fa0, $fa0, $fa1
	fmul.s	$fa2, $ft1, $fa2
	fmul.s	$ft0, $ft1, $fa3
	fmul.s	$ft1, $ft1, $fa1
	fmul.s	$fa3, $fa5, $fa3
	fmul.s	$fa5, $fa5, $fa1
	fmul.s	$fa1, $fa7, $fa1
	fadd.s	$fa7, $fa3, $fa1
	vldi	$vr12, -1168
	fsub.s	$fa7, $ft4, $fa7
	fsub.s	$ft2, $ft0, $fa0
	fadd.s	$ft3, $ft1, $fa6
	fadd.s	$fa0, $ft0, $fa0
	fadd.s	$fa1, $fa2, $fa1
	fsub.s	$fa1, $ft4, $fa1
	fsub.s	$ft0, $fa5, $fa4
	fsub.s	$fa6, $ft1, $fa6
	fadd.s	$fa4, $fa5, $fa4
	fld.s	$fa5, $s0, 24
	fadd.s	$fa2, $fa2, $fa3
	fsub.s	$fa2, $ft4, $fa2
	fld.s	$fa3, $s0, 8
	fmul.s	$ft1, $ft2, $fa5
	fld.s	$ft4, $s0, 40
	fld.s	$ft5, $s0, 28
	fld.s	$ft6, $s0, 12
	fmadd.s	$ft1, $fa3, $fa7, $ft1
	fmadd.s	$ft1, $ft4, $ft3, $ft1
	fmul.s	$ft7, $ft2, $ft5
	fmadd.s	$ft7, $ft6, $fa7, $ft7
	fld.s	$ft8, $s0, 44
	fld.s	$ft9, $s0, 32
	fld.s	$ft10, $s0, 16
	fld.s	$ft11, $s0, 48
	fmadd.s	$ft7, $ft8, $ft3, $ft7
	fmul.s	$ft2, $ft2, $ft9
	fmadd.s	$fa7, $ft10, $fa7, $ft2
	fmadd.s	$fa7, $ft11, $ft3, $fa7
	fmul.s	$ft2, $fa1, $fa5
	fmadd.s	$ft2, $fa3, $fa0, $ft2
	fmadd.s	$ft2, $ft4, $ft0, $ft2
	fmul.s	$ft3, $fa1, $ft5
	fmadd.s	$ft3, $ft6, $fa0, $ft3
	fmadd.s	$ft3, $ft8, $ft0, $ft3
	fmul.s	$fa1, $fa1, $ft9
	fmadd.s	$fa0, $ft10, $fa0, $fa1
	fmadd.s	$fa0, $ft11, $ft0, $fa0
	fmul.s	$fa1, $fa4, $fa5
	fmadd.s	$fa1, $fa3, $fa6, $fa1
	fmadd.s	$fa1, $ft4, $fa2, $fa1
	fmul.s	$fa3, $fa4, $ft5
	fmadd.s	$fa3, $ft6, $fa6, $fa3
	fmadd.s	$fa3, $ft8, $fa2, $fa3
	fmul.s	$fa4, $fa4, $ft9
	fmadd.s	$fa4, $ft10, $fa6, $fa4
	fmadd.s	$fa2, $ft11, $fa2, $fa4
	fst.s	$ft1, $sp, 776
	fst.s	$ft7, $sp, 780
	fst.s	$fa7, $sp, 784
	st.w	$zero, $sp, 788
	fst.s	$ft2, $sp, 792
	fst.s	$ft3, $sp, 796
	fst.s	$fa0, $sp, 800
	st.w	$zero, $sp, 804
	fst.s	$fa1, $sp, 808
	fst.s	$fa3, $sp, 812
	fst.s	$fa2, $sp, 816
	st.w	$zero, $sp, 820
	addi.d	$a3, $sp, 776
	addi.d	$a4, $sp, 792
.LBB8_27:                               #   in Loop: Header=BB8_28 Depth=1
	vld	$vr0, $sp, 712
	vld	$vr1, $a0, 0
	vld	$vr2, $a1, 0
	addi.d	$a0, $sp, 344
	vst	$vr0, $a0, 0
	addi.d	$a0, $sp, 360
	vst	$vr1, $a0, 0
	addi.d	$a0, $sp, 376
	vst	$vr2, $a0, 0
	vld	$vr0, $a2, 0
	vld	$vr1, $a3, 0
	vld	$vr2, $a4, 0
	vld	$vr3, $s5, 0
	addi.d	$a0, $sp, 392
	vst	$vr0, $a0, 0
	addi.d	$a0, $sp, 408
	vst	$vr1, $a0, 0
	addi.d	$a0, $sp, 424
	vst	$vr2, $a0, 0
	addi.d	$a0, $sp, 440
	vst	$vr3, $a0, 0
	vld	$vr0, $s8, 0
	vld	$vr1, $sp, 552
	addi.d	$a0, $sp, 568
	vld	$vr2, $a0, 0
	addi.d	$a0, $sp, 584
	vld	$vr3, $a0, 0
	addi.d	$a0, $sp, 456
	vst	$vr0, $a0, 0
	addi.d	$a0, $sp, 472
	vst	$vr1, $a0, 0
	addi.d	$a0, $sp, 488
	vst	$vr2, $a0, 0
	addi.d	$a0, $sp, 504
	vst	$vr3, $a0, 0
	addi.d	$a0, $sp, 600
	vld	$vr0, $a0, 0
	ld.d	$a3, $s3, 24
	st.d	$s6, $sp, 160
	st.d	$fp, $sp, 336
	addi.d	$a0, $sp, 520
	vst	$vr0, $a0, 0
	st.b	$s7, $sp, 536
	st.d	$a3, $sp, 544
	addi.d	$a0, $sp, 616
	addi.d	$a1, $sp, 712
	addi.d	$a2, $sp, 160
	move	$a4, $zero
	pcaddu18i	$ra, %call36(_ZN17btGjkPairDetector16getClosestPointsERKN36btDiscreteCollisionDetectorInterface17ClosestPointInputERNS0_6ResultEP12btIDebugDrawb)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 148
	addi.w	$s4, $s4, 1
	fld.s	$fs4, $sp, 132                  # 4-byte Folded Reload
	fld.s	$fs0, $sp, 128                  # 4-byte Folded Reload
	fld.s	$fs7, $sp, 124                  # 4-byte Folded Reload
	bge	$s4, $a0, .LBB8_30
.LBB8_28:                               # =>This Inner Loop Header: Depth=1
	fld.s	$fs1, $sp, 116                  # 4-byte Folded Reload
	fmov.s	$fa0, $fs1
	pcaddu18i	$ra, %call36(sinf)
	jirl	$ra, $ra, 0
	fld.s	$fa1, $sp, 120                  # 4-byte Folded Reload
	fdiv.s	$fa0, $fa0, $fa1
	fld.s	$fa1, $sp, 144                  # 4-byte Folded Reload
	fmul.s	$fs3, $fa1, $fa0
	fld.s	$fa1, $sp, 140                  # 4-byte Folded Reload
	fmul.s	$fs6, $fa1, $fa0
	fld.s	$fa1, $sp, 136                  # 4-byte Folded Reload
	fmul.s	$fs5, $fa1, $fa0
	fmov.s	$fa0, $fs1
	pcaddu18i	$ra, %call36(cosf)
	jirl	$ra, $ra, 0
	fmov.s	$fs1, $fa0
	ld.w	$a0, $s1, 148
	bstrpick.d	$a1, $s4, 31, 0
	movgr2fr.d	$fa0, $a1
	ffint.s.l	$fa0, $fa0
	movgr2fr.w	$fa1, $a0
	ffint.s.w	$fa1, $fa1
	fld.s	$fa2, $sp, 108                  # 4-byte Folded Reload
	fdiv.s	$fa1, $fa2, $fa1
	fmul.s	$fa0, $fa1, $fa0
	vldi	$vr1, -1184
	fmul.s	$fs2, $fa0, $fa1
	fmov.s	$fa0, $fs2
	pcaddu18i	$ra, %call36(sinf)
	jirl	$ra, $ra, 0
	fld.s	$fa1, $sp, 112                  # 4-byte Folded Reload
	fdiv.s	$fa0, $fa0, $fa1
	fmul.s	$fs0, $fs0, $fa0
	fmul.s	$fs7, $fs7, $fa0
	fmul.s	$fs4, $fs4, $fa0
	fmov.s	$fa0, $fs2
	pcaddu18i	$ra, %call36(cosf)
	jirl	$ra, $ra, 0
	fneg.s	$fa1, $fs0
	fneg.s	$fa4, $fs7
	fneg.s	$fa3, $fs4
	fmul.s	$fa2, $fs3, $fs0
	ld.d	$a0, $sp, 96
	movgr2cf	$fcc0, $a0
	bcnez	$fcc0, .LBB8_26
# %bb.29:                               #   in Loop: Header=BB8_28 Depth=1
	fmul.s	$fa5, $fs1, $fa1
	fmadd.s	$fa5, $fa0, $fs3, $fa5
	fmadd.s	$fa5, $fa4, $fs5, $fa5
	fmadd.s	$fa6, $fs4, $fs6, $fa5
	fmul.s	$fa4, $fs1, $fa4
	fmadd.s	$fa4, $fa0, $fs6, $fa4
	fmadd.s	$fa4, $fa3, $fs3, $fa4
	fmadd.s	$fa7, $fs0, $fs5, $fa4
	fmul.s	$fa3, $fs1, $fa3
	fmadd.s	$fa3, $fa0, $fs5, $fa3
	fmadd.s	$fa3, $fa1, $fs6, $fa3
	fmadd.s	$ft0, $fs7, $fs3, $fa3
	fmadd.s	$fa2, $fa0, $fs1, $fa2
	fmadd.s	$fa2, $fs7, $fs6, $fa2
	fmadd.s	$fa2, $fs4, $fs5, $fa2
	fmul.s	$ft1, $fa0, $fa6
	fmadd.s	$ft1, $fa2, $fs0, $ft1
	fmadd.s	$ft1, $fa7, $fs4, $ft1
	fnmadd.s	$fa3, $fs7, $fs3, $fa3
	fmadd.s	$ft1, $fa3, $fs7, $ft1
	fmul.s	$fa7, $fa0, $fa7
	fmadd.s	$fa7, $fa2, $fs7, $fa7
	fmadd.s	$fa7, $ft0, $fs0, $fa7
	fnmadd.s	$fa5, $fs4, $fs6, $fa5
	fmadd.s	$fa5, $fa5, $fs4, $fa7
	fmul.s	$fa7, $fa0, $ft0
	fmadd.s	$fa7, $fa2, $fs4, $fa7
	fmadd.s	$fa7, $fa6, $fs7, $fa7
	fnmadd.s	$fa4, $fs0, $fs5, $fa4
	fmadd.s	$fa7, $fa4, $fs0, $fa7
	fmul.s	$fa1, $fa6, $fa1
	fmadd.s	$fa0, $fa2, $fa0, $fa1
	fmadd.s	$fa0, $fa4, $fs7, $fa0
	fmadd.s	$fa0, $fa3, $fs4, $fa0
	fmul.s	$fa1, $fa5, $fa5
	fmadd.s	$fa1, $ft1, $ft1, $fa1
	fmadd.s	$fa1, $fa7, $fa7, $fa1
	fmadd.s	$fa1, $fa0, $fa0, $fa1
	vldi	$vr2, -1280
	fdiv.s	$fa1, $fa2, $fa1
	fmul.s	$fa2, $ft1, $fa1
	fmul.s	$fa3, $fa5, $fa1
	fmul.s	$fa1, $fa7, $fa1
	fmul.s	$fa4, $fa0, $fa2
	fmul.s	$fa6, $fa0, $fa3
	fmul.s	$fa0, $fa0, $fa1
	fmul.s	$fa2, $ft1, $fa2
	fmul.s	$ft0, $ft1, $fa3
	fmul.s	$ft1, $ft1, $fa1
	fmul.s	$fa3, $fa5, $fa3
	fmul.s	$fa5, $fa5, $fa1
	fmul.s	$fa1, $fa7, $fa1
	fadd.s	$fa7, $fa3, $fa1
	vldi	$vr12, -1168
	fsub.s	$fa7, $ft4, $fa7
	fsub.s	$ft2, $ft0, $fa0
	fadd.s	$ft3, $ft1, $fa6
	fadd.s	$fa0, $ft0, $fa0
	fadd.s	$fa1, $fa2, $fa1
	fsub.s	$fa1, $ft4, $fa1
	fsub.s	$ft0, $fa5, $fa4
	fsub.s	$fa6, $ft1, $fa6
	fadd.s	$fa4, $fa5, $fa4
	fld.s	$fa5, $s2, 24
	fadd.s	$fa2, $fa2, $fa3
	fsub.s	$fa2, $ft4, $fa2
	fld.s	$fa3, $s2, 8
	fmul.s	$ft1, $ft2, $fa5
	fld.s	$ft4, $s2, 40
	fld.s	$ft5, $s2, 28
	fld.s	$ft6, $s2, 12
	fmadd.s	$ft1, $fa3, $fa7, $ft1
	fmadd.s	$ft1, $ft4, $ft3, $ft1
	fmul.s	$ft7, $ft2, $ft5
	fmadd.s	$ft7, $ft6, $fa7, $ft7
	fld.s	$ft8, $s2, 44
	fld.s	$ft9, $s2, 32
	fld.s	$ft10, $s2, 16
	fld.s	$ft11, $s2, 48
	fmadd.s	$ft7, $ft8, $ft3, $ft7
	fmul.s	$ft2, $ft2, $ft9
	fmadd.s	$fa7, $ft10, $fa7, $ft2
	fmadd.s	$fa7, $ft11, $ft3, $fa7
	fmul.s	$ft2, $fa1, $fa5
	fmadd.s	$ft2, $fa3, $fa0, $ft2
	fmadd.s	$ft2, $ft4, $ft0, $ft2
	fmul.s	$ft3, $fa1, $ft5
	fmadd.s	$ft3, $ft6, $fa0, $ft3
	fmadd.s	$ft3, $ft8, $ft0, $ft3
	fmul.s	$fa1, $fa1, $ft9
	fmadd.s	$fa0, $ft10, $fa0, $fa1
	fmadd.s	$fa0, $ft11, $ft0, $fa0
	fmul.s	$fa1, $fa4, $fa5
	fmadd.s	$fa1, $fa3, $fa6, $fa1
	fmadd.s	$fa1, $ft4, $fa2, $fa1
	fmul.s	$fa3, $fa4, $ft5
	fmadd.s	$fa3, $ft6, $fa6, $fa3
	fmadd.s	$fa3, $ft8, $fa2, $fa3
	fmul.s	$fa4, $fa4, $ft9
	fmadd.s	$fa4, $ft10, $fa6, $fa4
	fmadd.s	$fa2, $ft11, $fa2, $fa4
	fst.s	$ft1, $sp, 712
	fst.s	$ft7, $sp, 716
	fst.s	$fa7, $sp, 720
	st.w	$zero, $sp, 724
	fst.s	$ft2, $sp, 728
	fst.s	$ft3, $sp, 732
	fst.s	$fa0, $sp, 736
	st.w	$zero, $sp, 740
	fst.s	$fa1, $sp, 744
	fst.s	$fa3, $sp, 748
	fst.s	$fa2, $sp, 752
	st.w	$zero, $sp, 756
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	vld	$vr0, $a0, 0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	vld	$vr1, $a0, 0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	vld	$vr2, $a0, 0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	vld	$vr3, $a0, 0
	addi.d	$a3, $sp, 776
	vst	$vr0, $a3, 0
	addi.d	$a4, $sp, 792
	vst	$vr1, $a4, 0
	vst	$vr2, $s5, 0
	vst	$vr3, $s8, 0
	addi.d	$a0, $sp, 728
	addi.d	$a1, $sp, 744
	addi.d	$a2, $sp, 760
	b	.LBB8_27
.LBB8_30:                               # %._crit_edge
	ld.b	$a0, $s3, 40
	fld.s	$fa6, $sp, 28                   # 4-byte Folded Reload
	lu12i.w	$a3, 212992
.LBB8_31:
	andi	$a0, $a0, 1
	beqz	$a0, .LBB8_34
# %bb.32:
	movgr2fr.w	$fa0, $a3
	fcmp.cule.s	$fcc0, $fa6, $fa0
	bcnez	$fcc0, .LBB8_34
# %bb.33:                               # %.noexc
	vld	$vr0, $sp, 624
	fst.s	$fa6, $s1, 104
	vst	$vr0, $s1, 80
	addi.d	$a1, $sp, 160
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZNK11btMatrix3x311getRotationER12btQuaternion)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 160
	vst	$vr0, $sp, 144                  # 16-byte Folded Spill
	addi.d	$a1, $sp, 160
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZNK11btMatrix3x311getRotationER12btQuaternion)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	vld	$vr0, $a0, 0
	vst	$vr0, $s1, 48
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	vld	$vr0, $a0, 0
	vld	$vr1, $sp, 160
	vst	$vr0, $s1, 64
	vld	$vr0, $sp, 144                  # 16-byte Folded Reload
	vst	$vr0, $s1, 16
	vst	$vr1, $s1, 32
.LBB8_34:
	ld.bu	$a0, $s1, 128
	bnez	$a0, .LBB8_50
	b	.LBB8_52
.LBB8_35:
	fcmp.cule.s	$fcc0, $ft12, $ft7
	bcnez	$fcc0, .LBB8_41
# %bb.36:
	fmadd.s	$ft10, $ft7, $ft10, $ft11
	fneg.s	$ft9, $fa1
	fmov.s	$ft12, $ft7
	fcmp.clt.s	$fcc0, $ft10, $ft9
	bcnez	$fcc0, .LBB8_41
# %bb.37:
	fcmp.cule.s	$fcc0, $ft10, $fa1
	bcnez	$fcc0, .LBB8_40
.LBB8_38:                               # %_ZL21segmentsClosestPointsR9btVector3S0_S0_RfS1_RKS_S3_fS3_f.exit.i
	fmov.s	$ft9, $fa1
	b	.LBB8_41
.LBB8_39:
	fmul.s	$fa0, $fs7, $fs7
	fmadd.s	$fa0, $fs0, $fs0, $fa0
	frsqrt.s	$fa0, $fa0
	fneg.s	$fa1, $fs7
	fmul.s	$fa1, $fa0, $fa1
	fst.s	$fa1, $sp, 144                  # 4-byte Folded Spill
	fmul.s	$fa0, $fs0, $fa0
	fst.s	$fa0, $sp, 140                  # 4-byte Folded Spill
	movgr2fr.w	$fa0, $zero
	fst.s	$fa0, $sp, 136                  # 4-byte Folded Spill
	b	.LBB8_23
.LBB8_40:
	fmov.s	$ft9, $ft10
.LBB8_41:                               # %_ZL21segmentsClosestPointsR9btVector3S0_S0_RfS1_RKS_S3_fS3_f.exit.i
	fmul.s	$fa1, $fa7, $ft9
	fmul.s	$ft7, $fa5, $ft9
	fmul.s	$ft9, $ft0, $ft9
	fmul.s	$ft1, $ft1, $ft12
	fmul.s	$ft2, $ft2, $ft12
	fmul.s	$ft3, $ft3, $ft12
	fsub.s	$fa1, $ft4, $fa1
	fsub.s	$ft5, $ft5, $ft7
	fsub.s	$ft6, $ft6, $ft9
	fadd.s	$ft4, $ft1, $fa1
	fadd.s	$ft5, $ft2, $ft5
	fadd.s	$ft6, $ft3, $ft6
	fmul.s	$fa1, $ft5, $ft5
	fmadd.s	$fa1, $ft4, $ft4, $fa1
	fmadd.s	$ft9, $ft6, $ft6, $fa1
	fsqrt.s	$ft7, $ft9
	fsub.s	$fa1, $ft7, $ft8
	fsub.s	$fa1, $fa1, $fa6
	fcmp.clt.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB8_48
# %bb.42:
	lu12i.w	$a0, 165888
	movgr2fr.w	$ft8, $a0
	fcmp.cult.s	$fcc0, $ft8, $ft9
	bceqz	$fcc0, .LBB8_44
# %bb.43:
	vldi	$vr5, -1040
	fdiv.s	$fa5, $fa5, $ft7
	fmul.s	$ft0, $ft4, $fa5
	fmul.s	$fa7, $ft5, $fa5
	fmul.s	$fa5, $ft6, $fa5
	movfr2gr.s	$a0, $ft0
	movfr2gr.s	$a1, $fa7
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa5
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $sp, 160
	st.d	$a1, $sp, 168
	b	.LBB8_47
.LBB8_44:
	fabs.s	$ft4, $ft0
	lu12i.w	$a0, 258896
	ori	$a0, $a0, 1267
	movgr2fr.w	$ft5, $a0
	fcmp.cule.s	$fcc0, $ft4, $ft5
	bcnez	$fcc0, .LBB8_46
# %bb.45:
	fmul.s	$fa7, $ft0, $ft0
	fmadd.s	$fa7, $fa5, $fa5, $fa7
	frsqrt.s	$ft4, $fa7
	fneg.s	$fa7, $ft0
	fmul.s	$fa7, $ft4, $fa7
	fmul.s	$fa5, $fa5, $ft4
	st.w	$zero, $sp, 160
	fst.s	$fa7, $sp, 164
	fst.s	$fa5, $sp, 168
	st.w	$zero, $sp, 172
	movgr2fr.w	$ft0, $zero
	b	.LBB8_47
.LBB8_46:
	fmul.s	$ft0, $fa5, $fa5
	fmadd.s	$ft0, $fa7, $fa7, $ft0
	frsqrt.s	$ft4, $ft0
	fneg.s	$fa5, $fa5
	fmul.s	$ft0, $ft4, $fa5
	fmul.s	$fa7, $fa7, $ft4
	fst.s	$ft0, $sp, 160
	fst.s	$fa7, $sp, 164
	st.d	$zero, $sp, 168
	movgr2fr.w	$fa5, $zero
.LBB8_47:                               # %_Z13btPlaneSpace1RK9btVector3RS_S2_.exit.i
	fadd.s	$fa2, $fa2, $ft1
	fadd.s	$fa3, $fa3, $ft2
	fadd.s	$fa4, $fa4, $ft3
	fmul.s	$ft0, $fa6, $ft0
	fmul.s	$fa7, $fa6, $fa7
	fmul.s	$fa5, $fa6, $fa5
	fadd.s	$fa2, $fa2, $ft0
	fadd.s	$fa3, $fa3, $fa7
	fadd.s	$fa4, $fa4, $fa5
	movfr2gr.s	$a0, $fa2
	movfr2gr.s	$a1, $fa3
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa4
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $sp, 712
	st.d	$a1, $sp, 720
.LBB8_48:                               # %_ZL22capsuleCapsuleDistanceR9btVector3S0_ffffiiRK11btTransformS3_f.exit
	fcmp.cule.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB8_50
# %bb.49:
	ld.d	$a0, $fp, 0
	ld.d	$a3, $a0, 32
	addi.d	$a1, $sp, 160
	addi.d	$a2, $sp, 712
	move	$a0, $fp
	fmov.s	$fa0, $fa1
	jirl	$ra, $a3, 0
.LBB8_50:
	ld.d	$a0, $fp, 8
	ld.w	$a1, $a0, 728
	beqz	$a1, .LBB8_52
# %bb.51:                               # %_ZN16btManifoldResult20refreshContactPointsEv.exit.sink.split
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
.LBB8_52:                               # %_ZN16btManifoldResult20refreshContactPointsEv.exit
	fld.d	$fs7, $sp, 856                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 864                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 872                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 880                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 888                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 896                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 904                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 912                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 920                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 928                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 936                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 944                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 952                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 960                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 968                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 976                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 984                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 992                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 1000                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1008
	ret
.Lfunc_end8:
	.size	_ZN23btConvexConvexAlgorithm16processCollisionEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult, .Lfunc_end8-_ZN23btConvexConvexAlgorithm16processCollisionEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN30btConvexSeparatingDistanceUtil24updateSeparatingDistanceERK11btTransformS2_,"axG",@progbits,_ZN30btConvexSeparatingDistanceUtil24updateSeparatingDistanceERK11btTransformS2_,comdat
	.weak	_ZN30btConvexSeparatingDistanceUtil24updateSeparatingDistanceERK11btTransformS2_ # -- Begin function _ZN30btConvexSeparatingDistanceUtil24updateSeparatingDistanceERK11btTransformS2_
	.p2align	5
	.type	_ZN30btConvexSeparatingDistanceUtil24updateSeparatingDistanceERK11btTransformS2_,@function
_ZN30btConvexSeparatingDistanceUtil24updateSeparatingDistanceERK11btTransformS2_: # @_ZN30btConvexSeparatingDistanceUtil24updateSeparatingDistanceERK11btTransformS2_
	.cfi_startproc
# %bb.0:
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
	fst.d	$fs0, $sp, 136                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 128                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 120                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 112                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 104                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 96                   # 8-byte Folded Spill
	fst.d	$fs6, $sp, 88                   # 8-byte Folded Spill
	fst.d	$fs7, $sp, 80                   # 8-byte Folded Spill
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
	.cfi_offset 56, -88
	.cfi_offset 57, -96
	.cfi_offset 58, -104
	.cfi_offset 59, -112
	.cfi_offset 60, -120
	.cfi_offset 61, -128
	.cfi_offset 62, -136
	.cfi_offset 63, -144
	move	$s0, $a2
	move	$s1, $a1
	move	$fp, $a0
	addi.d	$s3, $a1, 48
	addi.d	$s2, $a2, 48
	addi.d	$a1, $sp, 64
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNK11btMatrix3x311getRotationER12btQuaternion)
	jirl	$ra, $ra, 0
	ld.d	$s6, $sp, 64
	ld.d	$s7, $sp, 72
	st.d	$s6, $sp, 40
	st.d	$s7, $sp, 48
	addi.d	$a1, $sp, 64
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNK11btMatrix3x311getRotationER12btQuaternion)
	jirl	$ra, $ra, 0
	ld.d	$s4, $sp, 64
	fld.s	$fa0, $fp, 88
	ld.d	$s5, $sp, 72
	st.d	$s4, $sp, 24
	movgr2fr.w	$fs0, $zero
	fcmp.cule.s	$fcc0, $fa0, $fs0
	st.d	$s5, $sp, 32
	bcnez	$fcc0, .LBB9_12
# %bb.1:
	srli.d	$a0, $s5, 32
	srli.d	$a1, $s7, 32
	fld.s	$fs1, $s1, 48
	fld.s	$fs2, $fp, 32
	fld.s	$fs3, $s1, 52
	fld.s	$fs4, $fp, 36
	fld.s	$fa0, $fp, 12
	fld.s	$fs5, $s1, 56
	fld.s	$fs6, $fp, 40
	movgr2fr.w	$fa1, $a1
	fcmp.cune.s	$fcc0, $fa0, $fa1
	movgr2fr.w	$fs7, $a0
	bcnez	$fcc0, .LBB9_5
# %bb.2:
	fld.s	$fa0, $fp, 8
	movgr2fr.w	$fa1, $s7
	fcmp.cune.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB9_5
# %bb.3:
	fld.s	$fa0, $fp, 4
	srli.d	$a0, $s6, 32
	movgr2fr.w	$fa1, $a0
	fcmp.cune.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB9_5
# %bb.4:
	fld.s	$fa0, $fp, 0
	movgr2fr.w	$fa1, $s6
	fcmp.ceq.s	$fcc0, $fa0, $fa1
	fmov.s	$ft0, $fs0
	fmov.s	$ft4, $fs0
	fmov.s	$ft1, $fs0
	bcnez	$fcc0, .LBB9_6
.LBB9_5:                                # %_ZNK10btQuadWordneERKS_.exit.thread.i
	addi.d	$a1, $sp, 40
	addi.d	$a2, $sp, 64
	addi.d	$a3, $sp, 60
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN15btTransformUtil32calculateDiffAxisAngleQuaternionERK12btQuaternionS2_R9btVector3Rf)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $sp, 64
	fld.s	$fa1, $sp, 60
	fld.s	$fa2, $sp, 68
	fld.s	$fa3, $sp, 72
	fmul.s	$ft1, $fa0, $fa1
	fmul.s	$ft4, $fa1, $fa2
	fmul.s	$ft0, $fa1, $fa3
.LBB9_6:                                # %_ZN15btTransformUtil27calculateVelocityQuaternionERK9btVector3S2_RK12btQuaternionS5_fRS0_S6_.exit
	fsub.s	$fa7, $fs1, $fs2
	fsub.s	$ft3, $fs3, $fs4
	fsub.s	$fs3, $fs5, $fs6
	fld.s	$fa0, $s0, 48
	fld.s	$fa1, $fp, 48
	fld.s	$fa2, $s0, 52
	fld.s	$fa3, $fp, 52
	fld.s	$fa4, $s0, 56
	fld.s	$fa5, $fp, 28
	fld.s	$fa6, $fp, 56
	fsub.s	$fs2, $fa0, $fa1
	fsub.s	$ft6, $fa2, $fa3
	fcmp.cune.s	$fcc0, $fa5, $fs7
	fsub.s	$fa6, $fa4, $fa6
	bcnez	$fcc0, .LBB9_10
# %bb.7:                                # %_ZN15btTransformUtil27calculateVelocityQuaternionERK9btVector3S2_RK12btQuaternionS5_fRS0_S6_.exit
	fld.s	$fa0, $fp, 24
	movgr2fr.w	$fa1, $s5
	fcmp.cune.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB9_10
# %bb.8:                                # %_ZN15btTransformUtil27calculateVelocityQuaternionERK9btVector3S2_RK12btQuaternionS5_fRS0_S6_.exit
	fld.s	$fa0, $fp, 20
	srli.d	$a0, $s4, 32
	movgr2fr.w	$fa1, $a0
	fcmp.cune.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB9_10
# %bb.9:                                # %_ZN15btTransformUtil27calculateVelocityQuaternionERK9btVector3S2_RK12btQuaternionS5_fRS0_S6_.exit
	fld.s	$fa0, $fp, 16
	movgr2fr.w	$fa1, $s4
	fcmp.ceq.s	$fcc0, $fa0, $fa1
	fmov.s	$fa0, $fs0
	fmov.s	$fa2, $fs0
	fmov.s	$fa1, $fs0
	bcnez	$fcc0, .LBB9_11
.LBB9_10:                               # %_ZNK10btQuadWordneERKS_.exit.thread.i37
	addi.d	$a0, $fp, 16
	addi.d	$a1, $sp, 24
	addi.d	$a2, $sp, 64
	addi.d	$a3, $sp, 60
	fmov.s	$fs5, $fa7
	fmov.s	$fs6, $ft0
	fmov.s	$fs4, $ft1
	fmov.s	$fs7, $ft3
	fmov.s	$fs1, $ft4
	fst.s	$fa6, $sp, 20                   # 4-byte Folded Spill
	fst.s	$ft6, $sp, 16                   # 4-byte Folded Spill
	pcaddu18i	$ra, %call36(_ZN15btTransformUtil32calculateDiffAxisAngleQuaternionERK12btQuaternionS2_R9btVector3Rf)
	jirl	$ra, $ra, 0
	fld.s	$ft6, $sp, 16                   # 4-byte Folded Reload
	fld.s	$fa6, $sp, 20                   # 4-byte Folded Reload
	fmov.s	$ft4, $fs1
	fmov.s	$ft3, $fs7
	fmov.s	$ft1, $fs4
	fmov.s	$ft0, $fs6
	fmov.s	$fa7, $fs5
	fld.s	$fa0, $sp, 64
	fld.s	$fa1, $sp, 60
	fld.s	$fa2, $sp, 68
	fld.s	$fa3, $sp, 72
	fmul.s	$fa0, $fa0, $fa1
	fmul.s	$fa2, $fa1, $fa2
	fmul.s	$fa1, $fa1, $fa3
.LBB9_11:                               # %_ZN15btTransformUtil27calculateVelocityQuaternionERK9btVector3S2_RK12btQuaternionS5_fRS0_S6_.exit45
	fmul.s	$fa3, $ft4, $ft4
	fmadd.s	$fa3, $ft1, $ft1, $fa3
	fmadd.s	$fa3, $ft0, $ft0, $fa3
	fsqrt.s	$fa3, $fa3
	fld.s	$fa4, $fp, 80
	fmul.s	$fa2, $fa2, $fa2
	fld.s	$fa5, $fp, 84
	fmadd.s	$fa0, $fa0, $fa0, $fa2
	fmadd.s	$fa0, $fa1, $fa1, $fa0
	fsqrt.s	$fa0, $fa0
	fmul.s	$fa0, $fa0, $fa5
	fmadd.s	$fa0, $fa3, $fa4, $fa0
	fsub.s	$fa1, $fs2, $fa7
	fsub.s	$fa2, $ft6, $ft3
	fld.s	$fa3, $fp, 68
	fld.s	$fa4, $fp, 64
	fld.s	$fa5, $fp, 72
	fsub.s	$fa6, $fa6, $fs3
	fmul.s	$fa2, $fa2, $fa3
	fmadd.s	$fa1, $fa1, $fa4, $fa2
	fmadd.s	$fa1, $fa6, $fa5, $fa1
	fld.s	$fa2, $fp, 88
	fcmp.clt.s	$fcc0, $fa1, $fs0
	fsel	$fa1, $fa1, $fs0, $fcc0
	fadd.s	$fa0, $fa0, $fa1
	fsub.s	$fa0, $fa2, $fa0
	fst.s	$fa0, $fp, 88
.LBB9_12:
	vld	$vr0, $s3, 0
	vst	$vr0, $fp, 32
	vld	$vr0, $s2, 0
	vld	$vr1, $sp, 40
	vld	$vr2, $sp, 24
	vst	$vr0, $fp, 48
	vst	$vr1, $fp, 0
	vst	$vr2, $fp, 16
	fld.d	$fs7, $sp, 80                   # 8-byte Folded Reload
	fld.d	$fs6, $sp, 88                   # 8-byte Folded Reload
	fld.d	$fs5, $sp, 96                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 104                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 112                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 120                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 128                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 136                  # 8-byte Folded Reload
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
.Lfunc_end9:
	.size	_ZN30btConvexSeparatingDistanceUtil24updateSeparatingDistanceERK11btTransformS2_, .Lfunc_end9-_ZN30btConvexSeparatingDistanceUtil24updateSeparatingDistanceERK11btTransformS2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN36btDiscreteCollisionDetectorInterface6ResultD2Ev,"axG",@progbits,_ZN36btDiscreteCollisionDetectorInterface6ResultD2Ev,comdat
	.weak	_ZN36btDiscreteCollisionDetectorInterface6ResultD2Ev # -- Begin function _ZN36btDiscreteCollisionDetectorInterface6ResultD2Ev
	.p2align	5
	.type	_ZN36btDiscreteCollisionDetectorInterface6ResultD2Ev,@function
_ZN36btDiscreteCollisionDetectorInterface6ResultD2Ev: # @_ZN36btDiscreteCollisionDetectorInterface6ResultD2Ev
# %bb.0:
	ret
.Lfunc_end10:
	.size	_ZN36btDiscreteCollisionDetectorInterface6ResultD2Ev, .Lfunc_end10-_ZN36btDiscreteCollisionDetectorInterface6ResultD2Ev
                                        # -- End function
	.text
	.globl	_ZN23btConvexConvexAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult # -- Begin function _ZN23btConvexConvexAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult
	.p2align	5
	.type	_ZN23btConvexConvexAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult,@function
_ZN23btConvexConvexAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult: # @_ZN23btConvexConvexAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception3
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
	move	$s0, $a2
	fsub.s	$fa0, $fa0, $fa1
	fsub.s	$fa1, $fa2, $fa3
	fsub.s	$fa2, $fa4, $fa5
	fld.s	$fa3, $a1, 268
	fmul.s	$fa1, $fa1, $fa1
	fmadd.s	$fa0, $fa0, $fa0, $fa1
	fmadd.s	$fa0, $fa2, $fa2, $fa0
	fmul.s	$fa1, $fa3, $fa3
	fcmp.cule.s	$fcc0, $fa1, $fa0
	pcalau12i	$a0, %pc_hi20(disableCcd)
	bcnez	$fcc0, .LBB11_3
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
	vldi	$vr0, -1168
	bcnez	$fcc0, .LBB11_26
# %bb.2:
	ld.b	$a0, $a0, %pc_lo12(disableCcd)
	andi	$a0, $a0, 1
	beqz	$a0, .LBB11_5
	b	.LBB11_26
.LBB11_3:
	ld.bu	$a0, $a0, %pc_lo12(disableCcd)
	beqz	$a0, .LBB11_5
# %bb.4:
	vldi	$vr0, -1168
	b	.LBB11_26
.LBB11_5:
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
.Ltmp23:                                # EH_LABEL
	addi.d	$a0, $sp, 40
	addi.d	$a2, $sp, 624
	addi.d	$a3, $sp, 76
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZN15btGjkConvexCastC1EPK13btConvexShapeS2_P22btVoronoiSimplexSolver)
	jirl	$ra, $ra, 0
.Ltmp24:                                # EH_LABEL
# %bb.6:
.Ltmp25:                                # EH_LABEL
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
.Ltmp26:                                # EH_LABEL
# %bb.7:
	beqz	$a0, .LBB11_14
# %bb.8:
	fld.s	$fa1, $fp, 260
	fld.s	$fa0, $sp, 600
	fcmp.cule.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB11_10
# %bb.9:
	fst.s	$fa0, $fp, 260
.LBB11_10:
	fld.s	$fa1, $s0, 260
	fcmp.cule.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB11_12
# %bb.11:
	fst.s	$fa0, $s0, 260
.LBB11_12:
	vldi	$vr2, -1168
	vldi	$vr1, -1168
	vst	$vr1, $sp, 16                   # 16-byte Folded Spill
	fcmp.cule.s	$fcc0, $fa2, $fa0
	bcnez	$fcc0, .LBB11_16
# %bb.13:
                                        # kill: def $f0 killed $f0 def $vr0
	b	.LBB11_15
.LBB11_14:
	vldi	$vr0, -1168
.LBB11_15:
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
.LBB11_16:
.Ltmp30:                                # EH_LABEL
	addi.d	$a0, $sp, 40
	pcaddu18i	$ra, %call36(_ZN12btConvexCastD2Ev)
	jirl	$ra, $ra, 0
.Ltmp31:                                # EH_LABEL
# %bb.17:
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
.Ltmp35:                                # EH_LABEL
	addi.d	$a0, $sp, 40
	addi.d	$a1, $sp, 624
	addi.d	$a3, $sp, 76
	move	$a2, $s5
	pcaddu18i	$ra, %call36(_ZN15btGjkConvexCastC1EPK13btConvexShapeS2_P22btVoronoiSimplexSolver)
	jirl	$ra, $ra, 0
.Ltmp36:                                # EH_LABEL
# %bb.18:
.Ltmp37:                                # EH_LABEL
	addi.d	$a0, $sp, 40
	addi.d	$a5, $sp, 432
	move	$a1, $s3
	move	$a2, $s1
	move	$a3, $s4
	move	$a4, $s2
	pcaddu18i	$ra, %call36(_ZN15btGjkConvexCast16calcTimeOfImpactERK11btTransformS2_S2_S2_RN12btConvexCast10CastResultE)
	jirl	$ra, $ra, 0
.Ltmp38:                                # EH_LABEL
# %bb.19:
	beqz	$a0, .LBB11_24
# %bb.20:
	fld.s	$fa1, $fp, 260
	fld.s	$fa0, $sp, 600
	fcmp.cule.s	$fcc0, $fa1, $fa0
	bceqz	$fcc0, .LBB11_27
# %bb.21:
	fld.s	$fa1, $s0, 260
	fcmp.cule.s	$fcc0, $fa1, $fa0
	bceqz	$fcc0, .LBB11_28
.LBB11_22:
	vld	$vr1, $sp, 16                   # 16-byte Folded Reload
	fcmp.cule.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB11_24
.LBB11_23:
                                        # kill: def $f0 killed $f0 def $vr0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
.LBB11_24:
.Ltmp42:                                # EH_LABEL
	addi.d	$a0, $sp, 40
	pcaddu18i	$ra, %call36(_ZN12btConvexCastD2Ev)
	jirl	$ra, $ra, 0
.Ltmp43:                                # EH_LABEL
# %bb.25:
	addi.d	$a0, $sp, 624
	pcaddu18i	$ra, %call36(_ZN13btConvexShapeD2Ev)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
.LBB11_26:
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
.LBB11_27:
	fst.s	$fa0, $fp, 260
	fld.s	$fa1, $s0, 260
	fcmp.cule.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB11_22
.LBB11_28:
	fst.s	$fa0, $s0, 260
	vld	$vr1, $sp, 16                   # 16-byte Folded Reload
	fcmp.cule.s	$fcc0, $fa1, $fa0
	bceqz	$fcc0, .LBB11_23
	b	.LBB11_24
.LBB11_29:
.Ltmp39:                                # EH_LABEL
	move	$fp, $a0
.Ltmp40:                                # EH_LABEL
	addi.d	$a0, $sp, 40
	pcaddu18i	$ra, %call36(_ZN12btConvexCastD2Ev)
	jirl	$ra, $ra, 0
.Ltmp41:                                # EH_LABEL
	b	.LBB11_32
.LBB11_30:
.Ltmp27:                                # EH_LABEL
	move	$fp, $a0
.Ltmp28:                                # EH_LABEL
	addi.d	$a0, $sp, 40
	pcaddu18i	$ra, %call36(_ZN12btConvexCastD2Ev)
	jirl	$ra, $ra, 0
.Ltmp29:                                # EH_LABEL
	b	.LBB11_34
.LBB11_31:
.Ltmp44:                                # EH_LABEL
	move	$fp, $a0
.LBB11_32:
.Ltmp45:                                # EH_LABEL
	addi.d	$a0, $sp, 624
	pcaddu18i	$ra, %call36(_ZN13btConvexShapeD2Ev)
	jirl	$ra, $ra, 0
.Ltmp46:                                # EH_LABEL
	b	.LBB11_35
.LBB11_33:
.Ltmp32:                                # EH_LABEL
	move	$fp, $a0
.LBB11_34:
.Ltmp33:                                # EH_LABEL
	addi.d	$a0, $sp, 624
	pcaddu18i	$ra, %call36(_ZN13btConvexShapeD2Ev)
	jirl	$ra, $ra, 0
.Ltmp34:                                # EH_LABEL
.LBB11_35:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB11_36:
.Ltmp47:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end11:
	.size	_ZN23btConvexConvexAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult, .Lfunc_end11-_ZN23btConvexConvexAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table11:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase3-.Lttbaseref3
.Lttbaseref3:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Lfunc_begin3-.Lfunc_begin3    # >> Call Site 1 <<
	.uleb128 .Ltmp23-.Lfunc_begin3          #   Call between .Lfunc_begin3 and .Ltmp23
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp23-.Lfunc_begin3          # >> Call Site 2 <<
	.uleb128 .Ltmp24-.Ltmp23                #   Call between .Ltmp23 and .Ltmp24
	.uleb128 .Ltmp32-.Lfunc_begin3          #     jumps to .Ltmp32
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp25-.Lfunc_begin3          # >> Call Site 3 <<
	.uleb128 .Ltmp26-.Ltmp25                #   Call between .Ltmp25 and .Ltmp26
	.uleb128 .Ltmp27-.Lfunc_begin3          #     jumps to .Ltmp27
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp30-.Lfunc_begin3          # >> Call Site 4 <<
	.uleb128 .Ltmp31-.Ltmp30                #   Call between .Ltmp30 and .Ltmp31
	.uleb128 .Ltmp32-.Lfunc_begin3          #     jumps to .Ltmp32
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp31-.Lfunc_begin3          # >> Call Site 5 <<
	.uleb128 .Ltmp35-.Ltmp31                #   Call between .Ltmp31 and .Ltmp35
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp35-.Lfunc_begin3          # >> Call Site 6 <<
	.uleb128 .Ltmp36-.Ltmp35                #   Call between .Ltmp35 and .Ltmp36
	.uleb128 .Ltmp44-.Lfunc_begin3          #     jumps to .Ltmp44
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp37-.Lfunc_begin3          # >> Call Site 7 <<
	.uleb128 .Ltmp38-.Ltmp37                #   Call between .Ltmp37 and .Ltmp38
	.uleb128 .Ltmp39-.Lfunc_begin3          #     jumps to .Ltmp39
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp42-.Lfunc_begin3          # >> Call Site 8 <<
	.uleb128 .Ltmp43-.Ltmp42                #   Call between .Ltmp42 and .Ltmp43
	.uleb128 .Ltmp44-.Lfunc_begin3          #     jumps to .Ltmp44
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp43-.Lfunc_begin3          # >> Call Site 9 <<
	.uleb128 .Ltmp40-.Ltmp43                #   Call between .Ltmp43 and .Ltmp40
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp40-.Lfunc_begin3          # >> Call Site 10 <<
	.uleb128 .Ltmp34-.Ltmp40                #   Call between .Ltmp40 and .Ltmp34
	.uleb128 .Ltmp47-.Lfunc_begin3          #     jumps to .Ltmp47
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp34-.Lfunc_begin3          # >> Call Site 11 <<
	.uleb128 .Lfunc_end11-.Ltmp34           #   Call between .Ltmp34 and .Lfunc_end11
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase3:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN12btConvexCast10CastResultD2Ev,"axG",@progbits,_ZN12btConvexCast10CastResultD2Ev,comdat
	.weak	_ZN12btConvexCast10CastResultD2Ev # -- Begin function _ZN12btConvexCast10CastResultD2Ev
	.p2align	5
	.type	_ZN12btConvexCast10CastResultD2Ev,@function
_ZN12btConvexCast10CastResultD2Ev:      # @_ZN12btConvexCast10CastResultD2Ev
# %bb.0:
	ret
.Lfunc_end12:
	.size	_ZN12btConvexCast10CastResultD2Ev, .Lfunc_end12-_ZN12btConvexCast10CastResultD2Ev
                                        # -- End function
	.section	.text._ZN23btConvexConvexAlgorithm10CreateFunc24CreateCollisionAlgorithmER36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS4_,"axG",@progbits,_ZN23btConvexConvexAlgorithm10CreateFunc24CreateCollisionAlgorithmER36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS4_,comdat
	.weak	_ZN23btConvexConvexAlgorithm10CreateFunc24CreateCollisionAlgorithmER36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS4_ # -- Begin function _ZN23btConvexConvexAlgorithm10CreateFunc24CreateCollisionAlgorithmER36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS4_
	.p2align	5
	.type	_ZN23btConvexConvexAlgorithm10CreateFunc24CreateCollisionAlgorithmER36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS4_,@function
_ZN23btConvexConvexAlgorithm10CreateFunc24CreateCollisionAlgorithmER36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS4_: # @_ZN23btConvexConvexAlgorithm10CreateFunc24CreateCollisionAlgorithmER36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS4_
.Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception4
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
	fst.d	$fs0, $sp, 8                    # 8-byte Folded Spill
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
	.cfi_offset 56, -88
	move	$s1, $a1
	ld.d	$a4, $a1, 0
	ld.d	$a1, $a4, 0
	ld.d	$a5, $a1, 96
	move	$s0, $a3
	move	$s2, $a2
	move	$fp, $a0
	ori	$a1, $zero, 160
	move	$a0, $a4
	jirl	$ra, $a5, 0
	ld.d	$s3, $s1, 8
	ld.d	$s6, $fp, 24
	ld.d	$s7, $fp, 16
	ld.w	$s4, $fp, 32
	ld.w	$s5, $fp, 36
	move	$fp, $a0
	move	$a1, $s1
	move	$a2, $s2
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZN30btActivatingCollisionAlgorithmC2ERK36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS4_)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(_ZTV23btConvexConvexAlgorithm+16)
	addi.d	$a1, $a0, %pc_lo12(_ZTV23btConvexConvexAlgorithm+16)
	ld.d	$a0, $s2, 200
	st.d	$a1, $fp, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 32
.Ltmp48:                                # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp49:                                # EH_LABEL
# %bb.1:
	fmov.s	$fs0, $fa0
	ld.d	$a0, $s0, 200
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 32
.Ltmp50:                                # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp51:                                # EH_LABEL
# %bb.2:                                # %_ZN23btConvexConvexAlgorithmC2EP20btPersistentManifoldRK36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS6_P22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolverii.exit
	fst.s	$fs0, $fp, 96
	fst.s	$fa0, $fp, 100
	st.w	$zero, $fp, 104
	st.d	$s6, $fp, 112
	st.d	$s7, $fp, 120
	st.b	$zero, $fp, 128
	st.d	$s3, $fp, 136
	st.b	$zero, $fp, 144
	st.w	$s4, $fp, 148
	st.w	$s5, $fp, 152
	move	$a0, $fp
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
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
.LBB13_3:
.Ltmp52:                                # EH_LABEL
	move	$s0, $a0
.Ltmp53:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN30btActivatingCollisionAlgorithmD2Ev)
	jirl	$ra, $ra, 0
.Ltmp54:                                # EH_LABEL
# %bb.4:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB13_5:
.Ltmp55:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end13:
	.size	_ZN23btConvexConvexAlgorithm10CreateFunc24CreateCollisionAlgorithmER36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS4_, .Lfunc_end13-_ZN23btConvexConvexAlgorithm10CreateFunc24CreateCollisionAlgorithmER36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS4_
	.cfi_endproc
	.section	.gcc_except_table._ZN23btConvexConvexAlgorithm10CreateFunc24CreateCollisionAlgorithmER36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS4_,"aG",@progbits,_ZN23btConvexConvexAlgorithm10CreateFunc24CreateCollisionAlgorithmER36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS4_,comdat
	.p2align	2, 0x0
GCC_except_table13:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase4-.Lttbaseref4
.Lttbaseref4:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Lfunc_begin4-.Lfunc_begin4    # >> Call Site 1 <<
	.uleb128 .Ltmp48-.Lfunc_begin4          #   Call between .Lfunc_begin4 and .Ltmp48
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp48-.Lfunc_begin4          # >> Call Site 2 <<
	.uleb128 .Ltmp51-.Ltmp48                #   Call between .Ltmp48 and .Ltmp51
	.uleb128 .Ltmp52-.Lfunc_begin4          #     jumps to .Ltmp52
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp53-.Lfunc_begin4          # >> Call Site 3 <<
	.uleb128 .Ltmp54-.Ltmp53                #   Call between .Ltmp53 and .Ltmp54
	.uleb128 .Ltmp55-.Lfunc_begin4          #     jumps to .Ltmp55
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp54-.Lfunc_begin4          # >> Call Site 4 <<
	.uleb128 .Lfunc_end13-.Ltmp54           #   Call between .Ltmp54 and .Lfunc_end13
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end4:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase4:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN23btConvexConvexAlgorithm22getAllContactManifoldsER20btAlignedObjectArrayIP20btPersistentManifoldE,"axG",@progbits,_ZN23btConvexConvexAlgorithm22getAllContactManifoldsER20btAlignedObjectArrayIP20btPersistentManifoldE,comdat
	.weak	_ZN23btConvexConvexAlgorithm22getAllContactManifoldsER20btAlignedObjectArrayIP20btPersistentManifoldE # -- Begin function _ZN23btConvexConvexAlgorithm22getAllContactManifoldsER20btAlignedObjectArrayIP20btPersistentManifoldE
	.p2align	5
	.type	_ZN23btConvexConvexAlgorithm22getAllContactManifoldsER20btAlignedObjectArrayIP20btPersistentManifoldE,@function
_ZN23btConvexConvexAlgorithm22getAllContactManifoldsER20btAlignedObjectArrayIP20btPersistentManifoldE: # @_ZN23btConvexConvexAlgorithm22getAllContactManifoldsER20btAlignedObjectArrayIP20btPersistentManifoldE
	.cfi_startproc
# %bb.0:
	ld.d	$a2, $a0, 136
	beqz	$a2, .LBB14_20
# %bb.1:
	ld.b	$a3, $a0, 128
	andi	$a3, $a3, 1
	beqz	$a3, .LBB14_20
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
	bne	$a3, $a4, .LBB14_19
# %bb.3:
	sltui	$a4, $a3, 1
	slli.w	$a5, $a3, 1
	masknez	$a5, $a5, $a4
	ori	$a6, $zero, 1
	maskeqz	$a4, $a6, $a4
	or	$s0, $a4, $a5
	bge	$a3, $s0, .LBB14_19
# %bb.4:
	beqz	$s0, .LBB14_14
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
	blez	$a3, .LBB14_15
.LBB14_6:                               # %.lr.ph.i.i.i
	ori	$a5, $zero, 4
	move	$a4, $zero
	bltu	$a3, $a5, .LBB14_11
# %bb.7:                                # %.lr.ph.i.i.i
	sub.d	$a5, $fp, $a2
	ori	$a6, $zero, 32
	bltu	$a5, $a6, .LBB14_11
# %bb.8:                                # %vector.ph
	bstrpick.d	$a4, $a3, 30, 2
	slli.d	$a4, $a4, 2
	addi.d	$a5, $a2, 16
	addi.d	$a6, $fp, 16
	move	$a7, $a4
	.p2align	4, , 16
.LBB14_9:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a5, -16
	vld	$vr1, $a5, 0
	vst	$vr0, $a6, -16
	vst	$vr1, $a6, 0
	addi.d	$a7, $a7, -4
	addi.d	$a5, $a5, 32
	addi.d	$a6, $a6, 32
	bnez	$a7, .LBB14_9
# %bb.10:                               # %middle.block
	beq	$a4, $a3, .LBB14_13
.LBB14_11:                              # %scalar.ph.preheader
	sub.d	$a5, $a3, $a4
	alsl.d	$a6, $a4, $a2, 3
	alsl.d	$a4, $a4, $fp, 3
	.p2align	4, , 16
.LBB14_12:                              # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a7, $a6, 0
	st.d	$a7, $a4, 0
	addi.d	$a5, $a5, -1
	addi.d	$a6, $a6, 8
	addi.d	$a4, $a4, 8
	bnez	$a5, .LBB14_12
.LBB14_13:                              # %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.thread.i.i
	ld.bu	$a4, $a1, 24
	bnez	$a4, .LBB14_17
	b	.LBB14_18
.LBB14_14:
	move	$fp, $zero
	ld.d	$a2, $a1, 16
	bgtz	$a3, .LBB14_6
.LBB14_15:                              # %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.i.i
	beqz	$a2, .LBB14_18
# %bb.16:                               # %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.i.i
	ld.b	$a4, $a1, 24
	andi	$a4, $a4, 1
	beqz	$a4, .LBB14_18
.LBB14_17:
	move	$s1, $a0
	move	$a0, $a2
	move	$s2, $a1
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	move	$a1, $s2
	ld.w	$a3, $s2, 4
.LBB14_18:                              # %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE10deallocateEv.exit.i.i
	ori	$a4, $zero, 1
	ld.d	$a2, $a0, 136
	st.b	$a4, $a1, 24
	st.d	$fp, $a1, 16
	st.w	$s0, $a1, 8
.LBB14_19:                              # %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE9push_backERKS1_.exit
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
.LBB14_20:
	ret
.Lfunc_end14:
	.size	_ZN23btConvexConvexAlgorithm22getAllContactManifoldsER20btAlignedObjectArrayIP20btPersistentManifoldE, .Lfunc_end14-_ZN23btConvexConvexAlgorithm22getAllContactManifoldsER20btAlignedObjectArrayIP20btPersistentManifoldE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK11btMatrix3x311getRotationER12btQuaternion,"axG",@progbits,_ZNK11btMatrix3x311getRotationER12btQuaternion,comdat
	.weak	_ZNK11btMatrix3x311getRotationER12btQuaternion # -- Begin function _ZNK11btMatrix3x311getRotationER12btQuaternion
	.p2align	5
	.type	_ZNK11btMatrix3x311getRotationER12btQuaternion,@function
_ZNK11btMatrix3x311getRotationER12btQuaternion: # @_ZNK11btMatrix3x311getRotationER12btQuaternion
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
	fld.s	$fa0, $a0, 0
	fld.s	$fa2, $a0, 20
	fld.s	$fa1, $a0, 40
	fadd.s	$fa3, $fa0, $fa2
	fadd.s	$fa3, $fa3, $fa1
	movgr2fr.w	$fa4, $zero
	fcmp.cule.s	$fcc0, $fa3, $fa4
	bcnez	$fcc0, .LBB15_3
# %bb.1:
	vldi	$vr0, -1168
	fadd.s	$fa1, $fa3, $fa0
	fsqrt.s	$fa0, $fa1
	fcmp.cor.s	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB15_6
.LBB15_2:                               # %.split
	fld.s	$fa1, $a0, 36
	fld.s	$fa2, $a0, 24
	fld.s	$fa3, $a0, 8
	fld.s	$fa4, $a0, 32
	fsub.s	$fa1, $fa1, $fa2
	fld.s	$fa2, $a0, 16
	fld.s	$fa5, $a0, 4
	fsub.s	$fa3, $fa3, $fa4
	vldi	$vr4, -1184
	fdiv.s	$fa4, $fa4, $fa0
	fsub.s	$fa2, $fa2, $fa5
	vextrins.w	$vr4, $vr0, 16
	vshuf4i.w	$vr0, $vr4, 64
	lu12i.w	$a0, 258048
	vreplgr2vr.w	$vr4, $a0
	vextrins.w	$vr4, $vr1, 0
	vextrins.w	$vr4, $vr3, 16
	vextrins.w	$vr4, $vr2, 32
	vfmul.s	$vr0, $vr0, $vr4
	b	.LBB15_5
.LBB15_3:
	fcmp.clt.s	$fcc0, $fa2, $fa1
	fcmp.clt.s	$fcc1, $fa0, $fa2
	movcf2gr	$a2, $fcc0
	fcmp.clt.s	$fcc0, $fa0, $fa1
	addi.d	$a2, $a2, 1
	movcf2gr	$a3, $fcc0
	slli.d	$a3, $a3, 1
	movcf2gr	$a4, $fcc1
	masknez	$a3, $a3, $a4
	maskeqz	$a2, $a2, $a4
	or	$a2, $a2, $a3
	addi.d	$a3, $a2, 1
	addi.d	$a4, $a3, -3
	sltui	$a4, $a4, 1
	masknez	$a3, $a3, $a4
	addi.d	$a4, $a2, -1
	sltui	$a5, $a2, 1
	masknez	$a4, $a4, $a5
	ori	$a6, $zero, 2
	maskeqz	$a5, $a6, $a5
	or	$a4, $a5, $a4
	alsl.d	$fp, $a2, $a0, 4
	slli.d	$s1, $a2, 2
	fldx.s	$fa0, $fp, $s1
	alsl.d	$s4, $a3, $a0, 4
	slli.d	$s0, $a3, 2
	fldx.s	$fa1, $s4, $s0
	alsl.d	$s3, $a4, $a0, 4
	slli.d	$s2, $a4, 2
	fldx.s	$fa2, $s3, $s2
	fsub.s	$fa0, $fa0, $fa1
	fsub.s	$fa0, $fa0, $fa2
	vldi	$vr1, -1168
	fadd.s	$fa1, $fa0, $fa1
	fsqrt.s	$fa0, $fa1
	fcmp.cor.s	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB15_7
.LBB15_4:                               # %.split47
	vldi	$vr1, -1184
	fmul.s	$fa2, $fa0, $fa1
	addi.d	$a0, $sp, 16
	fldx.s	$fa3, $s3, $s0
	fldx.s	$fa4, $s4, $s2
	or	$a2, $a0, $s1
	fst.s	$fa2, $a2, 0
	fdiv.s	$fa0, $fa1, $fa0
	fsub.s	$fa1, $fa3, $fa4
	fmul.s	$fa1, $fa0, $fa1
	fldx.s	$fa2, $s4, $s1
	fldx.s	$fa3, $fp, $s0
	fst.s	$fa1, $sp, 28
	fldx.s	$fa1, $s3, $s1
	fldx.s	$fa4, $fp, $s2
	fadd.s	$fa2, $fa2, $fa3
	fmul.s	$fa2, $fa0, $fa2
	fstx.s	$fa2, $s0, $a0
	fadd.s	$fa1, $fa1, $fa4
	fmul.s	$fa0, $fa0, $fa1
	fstx.s	$fa0, $s2, $a0
	vld	$vr0, $sp, 16
.LBB15_5:
	vst	$vr0, $a1, 0
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
.LBB15_6:                               # %call.sqrt
	fmov.s	$fa0, $fa1
	move	$fp, $a1
	move	$s0, $a0
	pcaddu18i	$ra, %call36(sqrtf)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	move	$a1, $fp
                                        # kill: def $f0 killed $f0 def $vr0
	b	.LBB15_2
.LBB15_7:                               # %call.sqrt48
	fmov.s	$fa0, $fa1
	move	$s5, $a1
	pcaddu18i	$ra, %call36(sqrtf)
	jirl	$ra, $ra, 0
	move	$a1, $s5
	b	.LBB15_4
.Lfunc_end15:
	.size	_ZNK11btMatrix3x311getRotationER12btQuaternion, .Lfunc_end15-_ZNK11btMatrix3x311getRotationER12btQuaternion
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN15btTransformUtil32calculateDiffAxisAngleQuaternionERK12btQuaternionS2_R9btVector3Rf,"axG",@progbits,_ZN15btTransformUtil32calculateDiffAxisAngleQuaternionERK12btQuaternionS2_R9btVector3Rf,comdat
	.weak	_ZN15btTransformUtil32calculateDiffAxisAngleQuaternionERK12btQuaternionS2_R9btVector3Rf # -- Begin function _ZN15btTransformUtil32calculateDiffAxisAngleQuaternionERK12btQuaternionS2_R9btVector3Rf
	.p2align	5
	.type	_ZN15btTransformUtil32calculateDiffAxisAngleQuaternionERK12btQuaternionS2_R9btVector3Rf,@function
_ZN15btTransformUtil32calculateDiffAxisAngleQuaternionERK12btQuaternionS2_R9btVector3Rf: # @_ZN15btTransformUtil32calculateDiffAxisAngleQuaternionERK12btQuaternionS2_R9btVector3Rf
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -48
	.cfi_def_cfa_offset 48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 8                    # 8-byte Folded Spill
	fst.d	$fs2, $sp, 0                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 56, -32
	.cfi_offset 57, -40
	.cfi_offset 58, -48
	fld.s	$fa2, $a0, 0
	fld.s	$fa0, $a0, 4
	fld.s	$fa1, $a0, 8
	fld.s	$fa3, $a0, 12
	fld.s	$fa4, $a1, 0
	fld.s	$fa5, $a1, 4
	fld.s	$fa6, $a1, 8
	fld.s	$fa7, $a1, 12
	fsub.s	$ft0, $fa2, $fa4
	fsub.s	$ft1, $fa0, $fa5
	fsub.s	$ft2, $fa1, $fa6
	fsub.s	$ft3, $fa3, $fa7
	fadd.s	$fa4, $fa2, $fa4
	fadd.s	$fa5, $fa0, $fa5
	fadd.s	$fa6, $fa1, $fa6
	fadd.s	$fa7, $fa3, $fa7
	fmul.s	$ft1, $ft1, $ft1
	fmadd.s	$ft0, $ft0, $ft0, $ft1
	fmadd.s	$ft0, $ft2, $ft2, $ft0
	fmadd.s	$ft0, $ft3, $ft3, $ft0
	fmul.s	$fa5, $fa5, $fa5
	fmadd.s	$fa4, $fa4, $fa4, $fa5
	fmadd.s	$fa4, $fa6, $fa6, $fa4
	fmadd.s	$fa4, $fa7, $fa7, $fa4
	fcmp.cule.s	$fcc0, $fa4, $ft0
	move	$s0, $a3
	move	$fp, $a2
	bcnez	$fcc0, .LBB16_2
# %bb.1:
	vld	$vr4, $a1, 0
	b	.LBB16_3
.LBB16_2:
	vld	$vr4, $a1, 0
	vbitrevi.w	$vr4, $vr4, 31
	vshuf4i.w	$vr5, $vr4, 8
	vshuf4i.w	$vr4, $vr4, 13
	vshuf4i.w	$vr4, $vr4, 16
	vslli.d	$vr4, $vr4, 32
	vsllwil.du.wu	$vr5, $vr5, 0
	vor.v	$vr4, $vr4, $vr5
.LBB16_3:                               # %_ZNK12btQuaternion7nearestERKS_.exit
	vreplvei.w	$vr5, $vr4, 0
	vreplvei.w	$vr6, $vr4, 1
	vreplvei.w	$vr7, $vr4, 2
	vreplvei.w	$vr4, $vr4, 3
	fneg.s	$ft0, $fa2
	fneg.s	$ft1, $fa0
	fneg.s	$ft2, $fa1
	fmul.s	$ft3, $fa3, $fa5
	fmadd.s	$ft3, $fa4, $ft0, $ft3
	fmadd.s	$ft3, $fa6, $ft2, $ft3
	fmadd.s	$ft3, $fa7, $fa0, $ft3
	fmul.s	$ft4, $fa3, $fa6
	fmadd.s	$ft4, $fa4, $ft1, $ft4
	fmadd.s	$ft0, $fa7, $ft0, $ft4
	fmadd.s	$ft0, $fa5, $fa1, $ft0
	fmul.s	$ft4, $fa3, $fa7
	fmadd.s	$ft2, $fa4, $ft2, $ft4
	fmadd.s	$ft1, $fa5, $ft1, $ft2
	fmadd.s	$ft1, $fa6, $fa2, $ft1
	fmul.s	$fa2, $fa2, $fa5
	fmadd.s	$fa2, $fa4, $fa3, $fa2
	fmadd.s	$fa0, $fa6, $fa0, $fa2
	fmadd.s	$fa0, $fa7, $fa1, $fa0
	fmul.s	$fa1, $ft0, $ft0
	fmadd.s	$fa1, $ft3, $ft3, $fa1
	fmadd.s	$fa1, $ft1, $ft1, $fa1
	fmadd.s	$fa1, $fa0, $fa0, $fa1
	frsqrt.s	$fa1, $fa1
	fmul.s	$fs0, $ft3, $fa1
	fmul.s	$fs1, $ft0, $fa1
	fmul.s	$fs2, $ft1, $fa1
	fmul.s	$fa0, $fa0, $fa1
	pcaddu18i	$ra, %call36(acosf)
	jirl	$ra, $ra, 0
	fadd.s	$fa0, $fa0, $fa0
	fst.s	$fa0, $s0, 0
	fmul.s	$fa0, $fs1, $fs1
	fmadd.s	$fa0, $fs0, $fs0, $fa0
	fmadd.s	$fa0, $fs2, $fs2, $fa0
	lu12i.w	$a0, 165888
	movgr2fr.w	$fa1, $a0
	fcmp.clt.s	$fcc0, $fa0, $fa1
	st.w	$zero, $fp, 12
	bceqz	$fcc0, .LBB16_5
# %bb.4:
	movgr2fr.w	$fa0, $zero
	vldi	$vr1, -1168
	fmov.s	$fa2, $fa0
	b	.LBB16_6
.LBB16_5:
	frsqrt.s	$fa2, $fa0
	fmul.s	$fa1, $fs0, $fa2
	fmul.s	$fa0, $fs1, $fa2
	fmul.s	$fa2, $fs2, $fa2
.LBB16_6:
	fst.s	$fa1, $fp, 0
	fst.s	$fa0, $fp, 4
	fst.s	$fa2, $fp, 8
	fld.d	$fs2, $sp, 0                    # 8-byte Folded Reload
	fld.d	$fs1, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs0, $sp, 16                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end16:
	.size	_ZN15btTransformUtil32calculateDiffAxisAngleQuaternionERK12btQuaternionS2_R9btVector3Rf, .Lfunc_end16-_ZN15btTransformUtil32calculateDiffAxisAngleQuaternionERK12btQuaternionS2_R9btVector3Rf
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN24btPerturbedContactResultD0Ev,"axG",@progbits,_ZN24btPerturbedContactResultD0Ev,comdat
	.weak	_ZN24btPerturbedContactResultD0Ev # -- Begin function _ZN24btPerturbedContactResultD0Ev
	.p2align	5
	.type	_ZN24btPerturbedContactResultD0Ev,@function
_ZN24btPerturbedContactResultD0Ev:      # @_ZN24btPerturbedContactResultD0Ev
	.cfi_startproc
# %bb.0:
	pcaddu18i	$t8, %call36(_ZdlPv)
	jr	$t8
.Lfunc_end17:
	.size	_ZN24btPerturbedContactResultD0Ev, .Lfunc_end17-_ZN24btPerturbedContactResultD0Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN16btManifoldResult20setShapeIdentifiersAEii,"axG",@progbits,_ZN16btManifoldResult20setShapeIdentifiersAEii,comdat
	.weak	_ZN16btManifoldResult20setShapeIdentifiersAEii # -- Begin function _ZN16btManifoldResult20setShapeIdentifiersAEii
	.p2align	5
	.type	_ZN16btManifoldResult20setShapeIdentifiersAEii,@function
_ZN16btManifoldResult20setShapeIdentifiersAEii: # @_ZN16btManifoldResult20setShapeIdentifiersAEii
# %bb.0:
	st.w	$a1, $a0, 160
	st.w	$a2, $a0, 168
	ret
.Lfunc_end18:
	.size	_ZN16btManifoldResult20setShapeIdentifiersAEii, .Lfunc_end18-_ZN16btManifoldResult20setShapeIdentifiersAEii
                                        # -- End function
	.section	.text._ZN16btManifoldResult20setShapeIdentifiersBEii,"axG",@progbits,_ZN16btManifoldResult20setShapeIdentifiersBEii,comdat
	.weak	_ZN16btManifoldResult20setShapeIdentifiersBEii # -- Begin function _ZN16btManifoldResult20setShapeIdentifiersBEii
	.p2align	5
	.type	_ZN16btManifoldResult20setShapeIdentifiersBEii,@function
_ZN16btManifoldResult20setShapeIdentifiersBEii: # @_ZN16btManifoldResult20setShapeIdentifiersBEii
# %bb.0:
	st.w	$a1, $a0, 164
	st.w	$a2, $a0, 172
	ret
.Lfunc_end19:
	.size	_ZN16btManifoldResult20setShapeIdentifiersBEii, .Lfunc_end19-_ZN16btManifoldResult20setShapeIdentifiersBEii
                                        # -- End function
	.section	.text._ZN24btPerturbedContactResult15addContactPointERK9btVector3S2_f,"axG",@progbits,_ZN24btPerturbedContactResult15addContactPointERK9btVector3S2_f,comdat
	.weak	_ZN24btPerturbedContactResult15addContactPointERK9btVector3S2_f # -- Begin function _ZN24btPerturbedContactResult15addContactPointERK9btVector3S2_f
	.p2align	5
	.type	_ZN24btPerturbedContactResult15addContactPointERK9btVector3S2_f,@function
_ZN24btPerturbedContactResult15addContactPointERK9btVector3S2_f: # @_ZN24btPerturbedContactResult15addContactPointERK9btVector3S2_f
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -96
	.cfi_def_cfa_offset 96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 80                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 72                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 56                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fs5, $sp, 40                   # 8-byte Folded Spill
	fst.d	$fs6, $sp, 32                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 56, -16
	.cfi_offset 57, -24
	.cfi_offset 58, -32
	.cfi_offset 59, -40
	.cfi_offset 60, -48
	.cfi_offset 61, -56
	.cfi_offset 62, -64
	fld.s	$fa2, $a1, 0
	fld.s	$fa3, $a1, 4
	ld.bu	$a3, $a0, 376
	fmul.s	$fa5, $fa0, $fa2
	fmul.s	$fa7, $fa0, $fa3
	fld.s	$fa1, $a1, 8
	fld.s	$fa6, $a2, 0
	fld.s	$ft0, $a2, 4
	fld.s	$fa4, $a2, 8
	fmul.s	$fa0, $fa0, $fa1
	fadd.s	$fa5, $fa5, $fa6
	fadd.s	$fa7, $fa7, $ft0
	fadd.s	$fa0, $fa0, $fa4
	beqz	$a3, .LBB20_2
# %bb.1:
	fld.s	$ft8, $a0, 184
	fld.s	$ft6, $a0, 200
	fld.s	$ft4, $a0, 216
	fld.s	$ft9, $a0, 188
	fld.s	$ft10, $a0, 204
	fld.s	$ft7, $a0, 220
	fld.s	$ft1, $a0, 192
	fld.s	$ft3, $a0, 232
	fld.s	$ft5, $a0, 236
	fld.s	$ft11, $a0, 240
	fld.s	$ft2, $a0, 208
	fneg.s	$ft12, $ft3
	fneg.s	$ft13, $ft5
	fneg.s	$ft3, $ft11
	fmul.s	$ft5, $ft6, $ft13
	fmadd.s	$ft5, $ft8, $ft12, $ft5
	fmadd.s	$ft5, $ft4, $ft3, $ft5
	fmul.s	$ft11, $ft10, $ft13
	fmadd.s	$ft11, $ft9, $ft12, $ft11
	fmadd.s	$ft11, $ft7, $ft3, $ft11
	fld.s	$ft14, $a0, 316
	fld.s	$ft15, $a0, 312
	fmul.s	$ft13, $ft2, $ft13
	fmadd.s	$ft12, $ft1, $ft12, $ft13
	fmul.s	$ft13, $ft9, $ft14
	fmadd.s	$ft13, $ft8, $ft15, $ft13
	fmul.s	$fs0, $ft10, $ft14
	fmadd.s	$fs0, $ft6, $ft15, $fs0
	fmul.s	$fs1, $ft7, $ft14
	fmadd.s	$fs1, $ft4, $ft15, $fs1
	fld.s	$fs2, $a0, 332
	fld.s	$fs3, $a0, 328
	fld.s	$fs4, $a0, 348
	fld.s	$fs5, $a0, 344
	fmul.s	$fs6, $ft9, $fs2
	fmadd.s	$fs6, $ft8, $fs3, $fs6
	fmul.s	$ft9, $ft9, $fs4
	fmadd.s	$ft8, $ft8, $fs5, $ft9
	fmul.s	$ft9, $ft10, $fs2
	fmadd.s	$ft9, $ft6, $fs3, $ft9
	fmul.s	$ft10, $ft10, $fs4
	fmadd.s	$ft6, $ft6, $fs5, $ft10
	fmul.s	$ft10, $ft7, $fs2
	fmadd.s	$ft10, $ft4, $fs3, $ft10
	fmul.s	$ft7, $ft7, $fs4
	fmadd.s	$ft4, $ft4, $fs5, $ft7
	fmul.s	$ft7, $ft14, $ft11
	fmadd.s	$ft7, $ft15, $ft5, $ft7
	fmul.s	$ft14, $ft11, $fs2
	fmadd.s	$ft14, $fs3, $ft5, $ft14
	fld.s	$ft15, $a0, 224
	fmul.s	$ft11, $ft11, $fs4
	fld.s	$fs2, $a0, 320
	fmadd.s	$ft5, $fs5, $ft5, $ft11
	fld.s	$ft11, $a0, 336
	fld.s	$fs3, $a0, 352
	fmadd.s	$ft3, $ft15, $ft3, $ft12
	fmadd.s	$ft12, $ft1, $fs2, $ft13
	fmadd.s	$ft13, $ft1, $ft11, $fs6
	fmadd.s	$ft1, $ft1, $fs3, $ft8
	fmadd.s	$ft8, $ft2, $fs2, $fs0
	fmadd.s	$ft9, $ft2, $ft11, $ft9
	fmadd.s	$ft2, $ft2, $fs3, $ft6
	fmadd.s	$ft6, $ft15, $fs2, $fs1
	fmadd.s	$ft10, $ft15, $ft11, $ft10
	fmadd.s	$ft4, $ft15, $fs3, $ft4
	fmadd.s	$ft7, $fs2, $ft3, $ft7
	fmadd.s	$ft11, $ft11, $ft3, $ft14
	fmadd.s	$ft3, $fs3, $ft3, $ft5
	fmul.s	$ft5, $fa7, $ft8
	fmadd.s	$ft5, $ft12, $fa5, $ft5
	fmul.s	$ft8, $fa7, $ft9
	fmadd.s	$ft8, $ft13, $fa5, $ft8
	fmul.s	$fa7, $fa7, $ft2
	fmadd.s	$fa5, $ft1, $fa5, $fa7
	fld.s	$fa7, $a0, 360
	fmadd.s	$ft1, $ft6, $fa0, $ft5
	fld.s	$ft2, $a0, 364
	fmadd.s	$ft5, $ft10, $fa0, $ft8
	fld.s	$ft6, $a0, 368
	fmadd.s	$fa0, $ft4, $fa0, $fa5
	fadd.s	$fa5, $ft7, $fa7
	fadd.s	$fa7, $ft11, $ft2
	fadd.s	$ft2, $ft3, $ft6
	fadd.s	$fa5, $ft1, $fa5
	fadd.s	$fa7, $ft5, $fa7
	fadd.s	$ft1, $ft2, $fa0
	fsub.s	$fa0, $fa5, $fa6
	fsub.s	$fa6, $fa7, $ft0
	fmul.s	$fa6, $fa3, $fa6
	fmadd.s	$fa0, $fa0, $fa2, $fa6
	fsub.s	$fa4, $ft1, $fa4
	fmadd.s	$fa0, $fa4, $fa1, $fa0
	fmul.s	$fa2, $fa2, $fa0
	fadd.s	$fa2, $fa5, $fa2
	fmul.s	$fa3, $fa3, $fa0
	fadd.s	$fa3, $fa7, $fa3
	fmul.s	$fa1, $fa1, $fa0
	fadd.s	$fa1, $ft1, $fa1
	movfr2gr.s	$a2, $fa2
	movfr2gr.s	$a3, $fa3
	movfr2gr.s	$a4, $fa1
	b	.LBB20_3
.LBB20_2:
	fld.s	$ft8, $a0, 248
	fld.s	$ft6, $a0, 264
	fld.s	$ft4, $a0, 280
	fld.s	$ft9, $a0, 252
	fld.s	$ft10, $a0, 268
	fld.s	$ft7, $a0, 284
	fld.s	$ft1, $a0, 256
	fld.s	$ft3, $a0, 296
	fld.s	$ft5, $a0, 300
	fld.s	$ft11, $a0, 304
	fld.s	$ft2, $a0, 272
	fneg.s	$ft12, $ft3
	fneg.s	$ft13, $ft5
	fneg.s	$ft3, $ft11
	fmul.s	$ft5, $ft6, $ft13
	fmadd.s	$ft5, $ft8, $ft12, $ft5
	fmadd.s	$ft5, $ft4, $ft3, $ft5
	fmul.s	$ft11, $ft10, $ft13
	fmadd.s	$ft11, $ft9, $ft12, $ft11
	fmadd.s	$ft11, $ft7, $ft3, $ft11
	fld.s	$ft14, $a0, 316
	fld.s	$ft15, $a0, 312
	fmul.s	$ft13, $ft2, $ft13
	fmadd.s	$ft12, $ft1, $ft12, $ft13
	fmul.s	$ft13, $ft9, $ft14
	fmadd.s	$ft13, $ft8, $ft15, $ft13
	fmul.s	$fs0, $ft10, $ft14
	fmadd.s	$fs0, $ft6, $ft15, $fs0
	fmul.s	$fs1, $ft7, $ft14
	fmadd.s	$fs1, $ft4, $ft15, $fs1
	fld.s	$fs2, $a0, 332
	fld.s	$fs3, $a0, 328
	fld.s	$fs4, $a0, 348
	fld.s	$fs5, $a0, 344
	fmul.s	$fs6, $ft9, $fs2
	fmadd.s	$fs6, $ft8, $fs3, $fs6
	fmul.s	$ft9, $ft9, $fs4
	fmadd.s	$ft8, $ft8, $fs5, $ft9
	fmul.s	$ft9, $ft10, $fs2
	fmadd.s	$ft9, $ft6, $fs3, $ft9
	fmul.s	$ft10, $ft10, $fs4
	fmadd.s	$ft6, $ft6, $fs5, $ft10
	fmul.s	$ft10, $ft7, $fs2
	fmadd.s	$ft10, $ft4, $fs3, $ft10
	fmul.s	$ft7, $ft7, $fs4
	fmadd.s	$ft4, $ft4, $fs5, $ft7
	fmul.s	$ft7, $ft14, $ft11
	fmadd.s	$ft7, $ft15, $ft5, $ft7
	fmul.s	$ft14, $ft11, $fs2
	fmadd.s	$ft14, $fs3, $ft5, $ft14
	fld.s	$ft15, $a0, 288
	fmul.s	$ft11, $ft11, $fs4
	fld.s	$fs2, $a0, 320
	fmadd.s	$ft5, $fs5, $ft5, $ft11
	fld.s	$ft11, $a0, 336
	fld.s	$fs3, $a0, 352
	fmadd.s	$ft3, $ft15, $ft3, $ft12
	fmadd.s	$ft12, $ft1, $fs2, $ft13
	fmadd.s	$ft13, $ft1, $ft11, $fs6
	fmadd.s	$ft1, $ft1, $fs3, $ft8
	fmadd.s	$ft8, $ft2, $fs2, $fs0
	fmadd.s	$ft9, $ft2, $ft11, $ft9
	fmadd.s	$ft2, $ft2, $fs3, $ft6
	fmadd.s	$ft6, $ft15, $fs2, $fs1
	fmadd.s	$ft10, $ft15, $ft11, $ft10
	fmadd.s	$ft4, $ft15, $fs3, $ft4
	fmadd.s	$ft7, $fs2, $ft3, $ft7
	fmadd.s	$ft11, $ft11, $ft3, $ft14
	fmadd.s	$ft3, $fs3, $ft3, $ft5
	fmul.s	$ft5, $ft0, $ft8
	fmadd.s	$ft5, $ft12, $fa6, $ft5
	fmul.s	$ft8, $ft0, $ft9
	fmadd.s	$ft8, $ft13, $fa6, $ft8
	fmul.s	$ft0, $ft0, $ft2
	fmadd.s	$fa6, $ft1, $fa6, $ft0
	fld.s	$ft0, $a0, 360
	fmadd.s	$ft1, $ft6, $fa4, $ft5
	fld.s	$ft2, $a0, 364
	fmadd.s	$ft5, $ft10, $fa4, $ft8
	fmadd.s	$fa4, $ft4, $fa4, $fa6
	fadd.s	$fa6, $ft7, $ft0
	fadd.s	$ft0, $ft11, $ft2
	fadd.s	$fa6, $ft1, $fa6
	fadd.s	$ft0, $ft5, $ft0
	fld.s	$ft1, $a0, 368
	fsub.s	$fa7, $fa7, $ft0
	fmul.s	$fa3, $fa3, $fa7
	fsub.s	$fa5, $fa5, $fa6
	fmadd.s	$fa2, $fa5, $fa2, $fa3
	fadd.s	$fa3, $ft3, $ft1
	fadd.s	$fa3, $fa3, $fa4
	fsub.s	$fa0, $fa0, $fa3
	fmadd.s	$fa0, $fa0, $fa1, $fa2
	movfr2gr.s	$a2, $fa6
	movfr2gr.s	$a3, $ft0
	movfr2gr.s	$a4, $fa3
.LBB20_3:
	bstrins.d	$a2, $a3, 63, 32
	bstrpick.d	$a3, $a4, 31, 0
	st.d	$a2, $sp, 16
	st.d	$a3, $sp, 24
	ld.d	$a0, $a0, 176
	ld.d	$a2, $a0, 0
	ld.d	$a3, $a2, 32
	addi.d	$a2, $sp, 16
	jirl	$ra, $a3, 0
	fld.d	$fs6, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs5, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 64                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 72                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 80                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end20:
	.size	_ZN24btPerturbedContactResult15addContactPointERK9btVector3S2_f, .Lfunc_end20-_ZN24btPerturbedContactResult15addContactPointERK9btVector3S2_f
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN12btConvexCast10CastResult9DebugDrawEf,"axG",@progbits,_ZN12btConvexCast10CastResult9DebugDrawEf,comdat
	.weak	_ZN12btConvexCast10CastResult9DebugDrawEf # -- Begin function _ZN12btConvexCast10CastResult9DebugDrawEf
	.p2align	5
	.type	_ZN12btConvexCast10CastResult9DebugDrawEf,@function
_ZN12btConvexCast10CastResult9DebugDrawEf: # @_ZN12btConvexCast10CastResult9DebugDrawEf
# %bb.0:
	ret
.Lfunc_end21:
	.size	_ZN12btConvexCast10CastResult9DebugDrawEf, .Lfunc_end21-_ZN12btConvexCast10CastResult9DebugDrawEf
                                        # -- End function
	.section	.text._ZN12btConvexCast10CastResult15drawCoordSystemERK11btTransform,"axG",@progbits,_ZN12btConvexCast10CastResult15drawCoordSystemERK11btTransform,comdat
	.weak	_ZN12btConvexCast10CastResult15drawCoordSystemERK11btTransform # -- Begin function _ZN12btConvexCast10CastResult15drawCoordSystemERK11btTransform
	.p2align	5
	.type	_ZN12btConvexCast10CastResult15drawCoordSystemERK11btTransform,@function
_ZN12btConvexCast10CastResult15drawCoordSystemERK11btTransform: # @_ZN12btConvexCast10CastResult15drawCoordSystemERK11btTransform
# %bb.0:
	ret
.Lfunc_end22:
	.size	_ZN12btConvexCast10CastResult15drawCoordSystemERK11btTransform, .Lfunc_end22-_ZN12btConvexCast10CastResult15drawCoordSystemERK11btTransform
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
.Lfunc_end23:
	.size	_ZN12btConvexCast10CastResultD0Ev, .Lfunc_end23-_ZN12btConvexCast10CastResultD0Ev
	.cfi_endproc
                                        # -- End function
	.type	_ZTVN23btConvexConvexAlgorithm10CreateFuncE,@object # @_ZTVN23btConvexConvexAlgorithm10CreateFuncE
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTVN23btConvexConvexAlgorithm10CreateFuncE
	.p2align	3, 0x0
_ZTVN23btConvexConvexAlgorithm10CreateFuncE:
	.dword	0
	.dword	_ZTIN23btConvexConvexAlgorithm10CreateFuncE
	.dword	_ZN23btConvexConvexAlgorithm10CreateFuncD2Ev
	.dword	_ZN23btConvexConvexAlgorithm10CreateFuncD0Ev
	.dword	_ZN23btConvexConvexAlgorithm10CreateFunc24CreateCollisionAlgorithmER36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS4_
	.size	_ZTVN23btConvexConvexAlgorithm10CreateFuncE, 40

	.type	_ZTV23btConvexConvexAlgorithm,@object # @_ZTV23btConvexConvexAlgorithm
	.globl	_ZTV23btConvexConvexAlgorithm
	.p2align	3, 0x0
_ZTV23btConvexConvexAlgorithm:
	.dword	0
	.dword	_ZTI23btConvexConvexAlgorithm
	.dword	_ZN23btConvexConvexAlgorithmD2Ev
	.dword	_ZN23btConvexConvexAlgorithmD0Ev
	.dword	_ZN23btConvexConvexAlgorithm16processCollisionEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult
	.dword	_ZN23btConvexConvexAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult
	.dword	_ZN23btConvexConvexAlgorithm22getAllContactManifoldsER20btAlignedObjectArrayIP20btPersistentManifoldE
	.size	_ZTV23btConvexConvexAlgorithm, 56

	.type	disableCcd,@object              # @disableCcd
	.bss
	.globl	disableCcd
disableCcd:
	.byte	0                               # 0x0
	.size	disableCcd, 1

	.type	_ZTIN23btConvexConvexAlgorithm10CreateFuncE,@object # @_ZTIN23btConvexConvexAlgorithm10CreateFuncE
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTIN23btConvexConvexAlgorithm10CreateFuncE
	.p2align	3, 0x0
_ZTIN23btConvexConvexAlgorithm10CreateFuncE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTSN23btConvexConvexAlgorithm10CreateFuncE
	.dword	_ZTI30btCollisionAlgorithmCreateFunc
	.size	_ZTIN23btConvexConvexAlgorithm10CreateFuncE, 24

	.type	_ZTSN23btConvexConvexAlgorithm10CreateFuncE,@object # @_ZTSN23btConvexConvexAlgorithm10CreateFuncE
	.section	.rodata,"a",@progbits
	.globl	_ZTSN23btConvexConvexAlgorithm10CreateFuncE
_ZTSN23btConvexConvexAlgorithm10CreateFuncE:
	.asciz	"N23btConvexConvexAlgorithm10CreateFuncE"
	.size	_ZTSN23btConvexConvexAlgorithm10CreateFuncE, 40

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

	.type	_ZTI23btConvexConvexAlgorithm,@object # @_ZTI23btConvexConvexAlgorithm
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTI23btConvexConvexAlgorithm
	.p2align	3, 0x0
_ZTI23btConvexConvexAlgorithm:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS23btConvexConvexAlgorithm
	.dword	_ZTI30btActivatingCollisionAlgorithm
	.size	_ZTI23btConvexConvexAlgorithm, 24

	.type	_ZTS23btConvexConvexAlgorithm,@object # @_ZTS23btConvexConvexAlgorithm
	.section	.rodata,"a",@progbits
	.globl	_ZTS23btConvexConvexAlgorithm
_ZTS23btConvexConvexAlgorithm:
	.asciz	"23btConvexConvexAlgorithm"
	.size	_ZTS23btConvexConvexAlgorithm, 26

	.type	_ZTV24btPerturbedContactResult,@object # @_ZTV24btPerturbedContactResult
	.section	.data.rel.ro._ZTV24btPerturbedContactResult,"awG",@progbits,_ZTV24btPerturbedContactResult,comdat
	.weak	_ZTV24btPerturbedContactResult
	.p2align	3, 0x0
_ZTV24btPerturbedContactResult:
	.dword	0
	.dword	_ZTI24btPerturbedContactResult
	.dword	_ZN36btDiscreteCollisionDetectorInterface6ResultD2Ev
	.dword	_ZN24btPerturbedContactResultD0Ev
	.dword	_ZN16btManifoldResult20setShapeIdentifiersAEii
	.dword	_ZN16btManifoldResult20setShapeIdentifiersBEii
	.dword	_ZN24btPerturbedContactResult15addContactPointERK9btVector3S2_f
	.size	_ZTV24btPerturbedContactResult, 56

	.type	_ZTI24btPerturbedContactResult,@object # @_ZTI24btPerturbedContactResult
	.section	.data.rel.ro._ZTI24btPerturbedContactResult,"awG",@progbits,_ZTI24btPerturbedContactResult,comdat
	.weak	_ZTI24btPerturbedContactResult
	.p2align	3, 0x0
_ZTI24btPerturbedContactResult:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS24btPerturbedContactResult
	.dword	_ZTI16btManifoldResult
	.size	_ZTI24btPerturbedContactResult, 24

	.type	_ZTS24btPerturbedContactResult,@object # @_ZTS24btPerturbedContactResult
	.section	.rodata._ZTS24btPerturbedContactResult,"aG",@progbits,_ZTS24btPerturbedContactResult,comdat
	.weak	_ZTS24btPerturbedContactResult
_ZTS24btPerturbedContactResult:
	.asciz	"24btPerturbedContactResult"
	.size	_ZTS24btPerturbedContactResult, 27

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

	.globl	_ZN23btConvexConvexAlgorithm10CreateFuncC1EP22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolver
	.type	_ZN23btConvexConvexAlgorithm10CreateFuncC1EP22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolver,@function
_ZN23btConvexConvexAlgorithm10CreateFuncC1EP22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolver = _ZN23btConvexConvexAlgorithm10CreateFuncC2EP22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolver
	.globl	_ZN23btConvexConvexAlgorithm10CreateFuncD1Ev
	.type	_ZN23btConvexConvexAlgorithm10CreateFuncD1Ev,@function
_ZN23btConvexConvexAlgorithm10CreateFuncD1Ev = _ZN23btConvexConvexAlgorithm10CreateFuncD2Ev
	.globl	_ZN23btConvexConvexAlgorithmC1EP20btPersistentManifoldRK36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS6_P22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolverii
	.type	_ZN23btConvexConvexAlgorithmC1EP20btPersistentManifoldRK36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS6_P22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolverii,@function
_ZN23btConvexConvexAlgorithmC1EP20btPersistentManifoldRK36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS6_P22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolverii = _ZN23btConvexConvexAlgorithmC2EP20btPersistentManifoldRK36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS6_P22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolverii
	.globl	_ZN23btConvexConvexAlgorithmD1Ev
	.type	_ZN23btConvexConvexAlgorithmD1Ev,@function
_ZN23btConvexConvexAlgorithmD1Ev = _ZN23btConvexConvexAlgorithmD2Ev
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
	.addrsig_sym _ZTIN23btConvexConvexAlgorithm10CreateFuncE
	.addrsig_sym _ZTVN10__cxxabiv120__si_class_type_infoE
	.addrsig_sym _ZTSN23btConvexConvexAlgorithm10CreateFuncE
	.addrsig_sym _ZTI30btCollisionAlgorithmCreateFunc
	.addrsig_sym _ZTVN10__cxxabiv117__class_type_infoE
	.addrsig_sym _ZTS30btCollisionAlgorithmCreateFunc
	.addrsig_sym _ZTI23btConvexConvexAlgorithm
	.addrsig_sym _ZTS23btConvexConvexAlgorithm
	.addrsig_sym _ZTI30btActivatingCollisionAlgorithm
	.addrsig_sym _ZTI24btPerturbedContactResult
	.addrsig_sym _ZTS24btPerturbedContactResult
	.addrsig_sym _ZTI16btManifoldResult
	.addrsig_sym _ZTIN12btConvexCast10CastResultE
	.addrsig_sym _ZTSN12btConvexCast10CastResultE
