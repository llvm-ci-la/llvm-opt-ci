	.file	"btSphereBoxCollisionAlgorithm.cpp"
	.text
	.globl	_ZN29btSphereBoxCollisionAlgorithmC2EP20btPersistentManifoldRK36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS6_b # -- Begin function _ZN29btSphereBoxCollisionAlgorithmC2EP20btPersistentManifoldRK36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS6_b
	.p2align	5
	.type	_ZN29btSphereBoxCollisionAlgorithmC2EP20btPersistentManifoldRK36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS6_b,@function
_ZN29btSphereBoxCollisionAlgorithmC2EP20btPersistentManifoldRK36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS6_b: # @_ZN29btSphereBoxCollisionAlgorithmC2EP20btPersistentManifoldRK36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS6_b
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
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	move	$s0, $a5
	move	$s2, $a4
	move	$s1, $a3
	move	$s3, $a1
	move	$fp, $a0
	move	$a1, $a2
	move	$a2, $a3
	move	$a3, $a4
	pcaddu18i	$ra, %call36(_ZN30btActivatingCollisionAlgorithmC2ERK36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS4_)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(_ZTV29btSphereBoxCollisionAlgorithm+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV29btSphereBoxCollisionAlgorithm+16)
	st.d	$a0, $fp, 0
	st.b	$zero, $fp, 16
	st.d	$s3, $fp, 24
	st.b	$s0, $fp, 32
	bnez	$s3, .LBB0_5
# %bb.1:
	ld.d	$a0, $fp, 8
	ld.d	$a1, $a0, 0
	masknez	$a2, $s1, $s0
	maskeqz	$a3, $s2, $s0
	or	$s3, $a3, $a2
	ld.d	$a3, $a1, 48
	masknez	$a1, $s2, $s0
	maskeqz	$a2, $s1, $s0
	or	$s0, $a2, $a1
.Ltmp0:                                 # EH_LABEL
	move	$a1, $s3
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
	move	$a1, $s3
	move	$a2, $s0
	jirl	$ra, $a3, 0
.Ltmp3:                                 # EH_LABEL
# %bb.4:
	st.d	$a0, $fp, 24
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 16
.LBB0_5:
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
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
	.size	_ZN29btSphereBoxCollisionAlgorithmC2EP20btPersistentManifoldRK36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS6_b, .Lfunc_end0-_ZN29btSphereBoxCollisionAlgorithmC2EP20btPersistentManifoldRK36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS6_b
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
	.globl	_ZN29btSphereBoxCollisionAlgorithmD2Ev # -- Begin function _ZN29btSphereBoxCollisionAlgorithmD2Ev
	.p2align	5
	.type	_ZN29btSphereBoxCollisionAlgorithmD2Ev,@function
_ZN29btSphereBoxCollisionAlgorithmD2Ev: # @_ZN29btSphereBoxCollisionAlgorithmD2Ev
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
	pcalau12i	$a0, %pc_hi20(_ZTV29btSphereBoxCollisionAlgorithm+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV29btSphereBoxCollisionAlgorithm+16)
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
	.size	_ZN29btSphereBoxCollisionAlgorithmD2Ev, .Lfunc_end2-_ZN29btSphereBoxCollisionAlgorithmD2Ev
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
	.globl	_ZN29btSphereBoxCollisionAlgorithmD0Ev # -- Begin function _ZN29btSphereBoxCollisionAlgorithmD0Ev
	.p2align	5
	.type	_ZN29btSphereBoxCollisionAlgorithmD0Ev,@function
_ZN29btSphereBoxCollisionAlgorithmD0Ev: # @_ZN29btSphereBoxCollisionAlgorithmD0Ev
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
	pcalau12i	$a0, %pc_hi20(_ZTV29btSphereBoxCollisionAlgorithm+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV29btSphereBoxCollisionAlgorithm+16)
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
# %bb.4:                                # %_ZN29btSphereBoxCollisionAlgorithmD2Ev.exit
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
	.size	_ZN29btSphereBoxCollisionAlgorithmD0Ev, .Lfunc_end3-_ZN29btSphereBoxCollisionAlgorithmD0Ev
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
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZN29btSphereBoxCollisionAlgorithm16processCollisionEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult
.LCPI4_0:
	.word	0x34000000                      # float 1.1920929E-7
	.text
	.globl	_ZN29btSphereBoxCollisionAlgorithm16processCollisionEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult
	.p2align	5
	.type	_ZN29btSphereBoxCollisionAlgorithm16processCollisionEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult,@function
_ZN29btSphereBoxCollisionAlgorithm16processCollisionEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult: # @_ZN29btSphereBoxCollisionAlgorithm16processCollisionEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -96
	.cfi_def_cfa_offset 96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	move	$s0, $a0
	ld.d	$a0, $a0, 24
	beqz	$a0, .LBB4_7
# %bb.1:
	move	$fp, $a4
	ld.bu	$a0, $s0, 32
	masknez	$a3, $a1, $a0
	maskeqz	$a4, $a2, $a0
	or	$a3, $a4, $a3
	ld.d	$a4, $a3, 200
	masknez	$a2, $a2, $a0
	vld	$vr0, $a3, 56
	fld.s	$fa1, $a4, 40
	fld.s	$fa2, $a4, 24
	maskeqz	$a0, $a1, $a0
	or	$a1, $a0, $a2
	vst	$vr0, $sp, 24
	fmul.s	$fa0, $fa1, $fa2
	addi.d	$a2, $sp, 56
	addi.d	$a3, $sp, 40
	addi.d	$a4, $sp, 24
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN29btSphereBoxCollisionAlgorithm17getSphereDistanceEP17btCollisionObjectR9btVector3S3_RKS2_f)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI4_0)
	fld.s	$fa1, $a0, %pc_lo12(.LCPI4_0)
	ld.d	$a0, $s0, 24
	fcmp.cule.s	$fcc0, $fa1, $fa0
	st.d	$a0, $fp, 8
	bcnez	$fcc0, .LBB4_3
# %bb.2:
	fld.s	$fa1, $sp, 56
	fld.s	$fa2, $sp, 40
	fld.s	$fa3, $sp, 60
	fld.s	$fa4, $sp, 44
	fld.s	$fa5, $sp, 64
	fld.s	$fa6, $sp, 48
	fsub.s	$fa1, $fa1, $fa2
	fsub.s	$fa2, $fa3, $fa4
	fsub.s	$fa3, $fa5, $fa6
	fmul.s	$fa4, $fa2, $fa2
	fmadd.s	$fa4, $fa1, $fa1, $fa4
	fmadd.s	$fa4, $fa3, $fa3, $fa4
	frsqrt.s	$fa4, $fa4
	fmul.s	$fa1, $fa1, $fa4
	ld.d	$a0, $fp, 0
	fmul.s	$fa2, $fa2, $fa4
	fmul.s	$fa3, $fa3, $fa4
	fst.s	$fa1, $sp, 8
	ld.d	$a3, $a0, 32
	fst.s	$fa2, $sp, 12
	fst.s	$fa3, $sp, 16
	st.w	$zero, $sp, 20
	addi.d	$a1, $sp, 8
	addi.d	$a2, $sp, 56
	move	$a0, $fp
	jirl	$ra, $a3, 0
.LBB4_3:
	ld.bu	$a0, $s0, 16
	beqz	$a0, .LBB4_7
# %bb.4:
	ld.d	$a0, $s0, 24
	ld.w	$a0, $a0, 728
	beqz	$a0, .LBB4_7
# %bb.5:
	ld.d	$a0, $fp, 8
	ld.w	$a1, $a0, 728
	beqz	$a1, .LBB4_7
# %bb.6:                                # %.sink.split.i
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
.LBB4_7:
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end4:
	.size	_ZN29btSphereBoxCollisionAlgorithm16processCollisionEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult, .Lfunc_end4-_ZN29btSphereBoxCollisionAlgorithm16processCollisionEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZN29btSphereBoxCollisionAlgorithm17getSphereDistanceEP17btCollisionObjectR9btVector3S3_RKS2_f
.LCPI5_0:
	.word	0x4b189680                      # float 1.0E+7
.LCPI5_1:
	.word	0x34000000                      # float 1.1920929E-7
	.text
	.globl	_ZN29btSphereBoxCollisionAlgorithm17getSphereDistanceEP17btCollisionObjectR9btVector3S3_RKS2_f
	.p2align	5
	.type	_ZN29btSphereBoxCollisionAlgorithm17getSphereDistanceEP17btCollisionObjectR9btVector3S3_RKS2_f,@function
_ZN29btSphereBoxCollisionAlgorithm17getSphereDistanceEP17btCollisionObjectR9btVector3S3_RKS2_f: # @_ZN29btSphereBoxCollisionAlgorithm17getSphereDistanceEP17btCollisionObjectR9btVector3S3_RKS2_f
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -112
	.cfi_def_cfa_offset 112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 56                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 40                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 56, -48
	.cfi_offset 57, -56
	.cfi_offset 58, -64
	.cfi_offset 59, -72
	move	$s1, $a1
	ld.d	$a0, $a1, 200
	fld.s	$fs1, $a0, 40
	fld.s	$fs2, $a0, 44
	fld.s	$fs3, $a0, 48
	fmov.s	$fs0, $fa0
	move	$s2, $a4
	move	$s0, $a3
	move	$fp, $a2
	movfr2gr.s	$a1, $fs1
	movfr2gr.s	$a2, $fs2
	movfr2gr.s	$a3, $fs3
	lu12i.w	$a4, -524288
	lu32i.d	$a4, 0
	xor	$a1, $a1, $a4
	xor	$a2, $a2, $a4
	bstrins.d	$a1, $a2, 63, 32
	ld.d	$a2, $a0, 0
	xor	$a3, $a3, $a4
	bstrpick.d	$a3, $a3, 31, 0
	vld	$vr0, $a0, 40
	ld.d	$a2, $a2, 88
	st.d	$a1, $sp, 8
	st.d	$a3, $sp, 16
	vst	$vr0, $sp, 24
	jirl	$ra, $a2, 0
	fsub.s	$ft2, $fa0, $fs1
	fst.s	$ft2, $sp, 8
	fsub.s	$ft3, $fa0, $fs2
	fst.s	$ft3, $sp, 12
	fld.s	$fa1, $sp, 24
	fsub.s	$ft4, $fa0, $fs3
	fst.s	$ft4, $sp, 16
	fld.s	$fa2, $sp, 28
	fsub.s	$fa7, $fa1, $fa0
	fld.s	$fa1, $sp, 32
	fst.s	$fa7, $sp, 24
	fsub.s	$ft0, $fa2, $fa0
	fst.s	$ft0, $sp, 28
	fsub.s	$ft1, $fa1, $fa0
	fld.s	$fa1, $s2, 0
	fld.s	$fa2, $s1, 56
	fld.s	$fa3, $s2, 4
	fld.s	$fa4, $s1, 60
	fld.s	$fa5, $s2, 8
	fld.s	$fa6, $s1, 64
	fst.s	$ft1, $sp, 32
	fsub.s	$ft5, $fa1, $fa2
	fsub.s	$fa3, $fa3, $fa4
	fsub.s	$fa4, $fa5, $fa6
	fld.s	$fa1, $s1, 8
	fld.s	$fa2, $s1, 24
	fld.s	$fa5, $s1, 40
	fld.s	$fa6, $s1, 12
	fld.s	$ft6, $s1, 28
	fld.s	$ft7, $s1, 44
	fld.s	$ft8, $s1, 16
	fld.s	$ft9, $s1, 32
	fld.s	$ft10, $s1, 48
	fmul.s	$fa2, $fa3, $fa2
	fmadd.s	$fa1, $fa1, $ft5, $fa2
	fmadd.s	$fa1, $fa5, $fa4, $fa1
	fmul.s	$fa2, $fa3, $ft6
	fmadd.s	$fa2, $fa6, $ft5, $fa2
	fmadd.s	$fa2, $ft7, $fa4, $fa2
	fmul.s	$fa3, $fa3, $ft9
	fmadd.s	$fa3, $ft8, $ft5, $fa3
	fmadd.s	$fa3, $ft10, $fa4, $fa3
	fsub.s	$ft5, $fa1, $ft2
	fsub.s	$ft6, $fa2, $ft3
	fsub.s	$ft7, $fa3, $ft4
	movgr2fr.w	$fs1, $zero
	fmul.s	$fa4, $ft6, $fs1
	fsub.s	$fa4, $fa4, $ft5
	fmadd.s	$ft8, $ft7, $fs1, $fa4
	fcmp.cule.s	$fcc1, $ft8, $fs1
	fcmp.clt.s	$fcc0, $fs1, $ft8
	fmov.s	$fa4, $fa3
	fmov.s	$fa5, $fa1
	fmov.s	$fa6, $fa2
	bcnez	$fcc1, .LBB5_2
# %bb.1:
	fmul.s	$fa4, $ft8, $fs1
	fadd.s	$fa5, $fa1, $ft8
	fsub.s	$fa6, $fa2, $fa4
	fsub.s	$fa4, $fa3, $fa4
	fsub.s	$ft5, $fa5, $ft2
	fsub.s	$ft6, $fa6, $ft3
	fsub.s	$ft7, $fa4, $ft4
.LBB5_2:
	fmsub.s	$ft8, $ft5, $fs1, $ft6
	fmadd.s	$ft8, $ft7, $fs1, $ft8
	fcmp.cule.s	$fcc1, $ft8, $fs1
	bcnez	$fcc1, .LBB5_4
# %bb.3:
	fmul.s	$ft5, $ft8, $fs1
	fsub.s	$fa5, $fa5, $ft5
	fadd.s	$fa6, $fa6, $ft8
	fsub.s	$fa4, $fa4, $ft5
	fsub.s	$ft5, $fa5, $ft2
	fsub.s	$ft6, $fa6, $ft3
	fsub.s	$ft7, $fa4, $ft4
	ori	$a0, $zero, 1
	b	.LBB5_5
.LBB5_4:
	movcf2gr	$a0, $fcc0
.LBB5_5:
	fmul.s	$ft2, $ft6, $fs1
	fmadd.s	$ft2, $ft5, $fs1, $ft2
	fsub.s	$ft2, $ft2, $ft7
	fcmp.cule.s	$fcc0, $ft2, $fs1
	bcnez	$fcc0, .LBB5_7
# %bb.6:
	fmul.s	$ft3, $ft2, $fs1
	fsub.s	$fa5, $fa5, $ft3
	fsub.s	$fa6, $fa6, $ft3
	fadd.s	$fa4, $fa4, $ft2
	ori	$a0, $zero, 1
.LBB5_7:
	fsub.s	$ft2, $fa5, $fa7
	fsub.s	$ft3, $fa6, $ft0
	fsub.s	$ft4, $fa4, $ft1
	fmul.s	$ft5, $ft3, $fs1
	fadd.s	$ft5, $ft2, $ft5
	fmadd.s	$ft5, $ft4, $fs1, $ft5
	fcmp.cule.s	$fcc0, $ft5, $fs1
	bcnez	$fcc0, .LBB5_9
# %bb.8:
	fmul.s	$ft2, $ft5, $fs1
	fsub.s	$fa5, $fa5, $ft5
	fsub.s	$fa6, $fa6, $ft2
	fsub.s	$fa4, $fa4, $ft2
	fsub.s	$ft2, $fa5, $fa7
	fsub.s	$ft3, $fa6, $ft0
	fsub.s	$ft4, $fa4, $ft1
	ori	$a0, $zero, 1
.LBB5_9:
	fmadd.s	$ft5, $ft2, $fs1, $ft3
	fmadd.s	$ft5, $ft4, $fs1, $ft5
	fcmp.cule.s	$fcc0, $ft5, $fs1
	bcnez	$fcc0, .LBB5_11
# %bb.10:
	fmul.s	$ft2, $ft5, $fs1
	fsub.s	$fa5, $fa5, $ft2
	fsub.s	$fa6, $fa6, $ft5
	fsub.s	$fa4, $fa4, $ft2
	fsub.s	$ft2, $fa5, $fa7
	fsub.s	$ft3, $fa6, $ft0
	fsub.s	$ft4, $fa4, $ft1
	ori	$a0, $zero, 1
.LBB5_11:
	fmul.s	$fa7, $ft3, $fs1
	fmadd.s	$fa7, $ft2, $fs1, $fa7
	fadd.s	$fa7, $ft4, $fa7
	fcmp.cule.s	$fcc0, $fa7, $fs1
	bcnez	$fcc0, .LBB5_13
# %bb.12:                               # %.thread
	fmul.s	$ft0, $fa7, $fs1
	fsub.s	$fa5, $fa5, $ft0
	fsub.s	$fa6, $fa6, $ft0
	fsub.s	$fa4, $fa4, $fa7
	b	.LBB5_14
.LBB5_13:
	beqz	$a0, .LBB5_17
.LBB5_14:
	fsub.s	$fa7, $fa1, $fa5
	fsub.s	$ft0, $fa2, $fa6
	fsub.s	$ft1, $fa3, $fa4
	fmul.s	$ft2, $ft0, $ft0
	fmadd.s	$ft2, $fa7, $fa7, $ft2
	fmadd.s	$ft2, $ft1, $ft1, $ft2
	frsqrt.s	$ft2, $ft2
	fmul.s	$fa7, $fa7, $ft2
	fmul.s	$ft0, $ft0, $ft2
	fmul.s	$ft1, $ft1, $ft2
	fmul.s	$ft2, $fa0, $fa7
	fmul.s	$ft3, $fa0, $ft0
	fmul.s	$fa0, $fa0, $ft1
	fadd.s	$fa5, $fa5, $ft2
	fadd.s	$fa6, $fa6, $ft3
	fadd.s	$fa0, $fa4, $fa0
	movfr2gr.s	$a0, $fa5
	movfr2gr.s	$a1, $fa6
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa0
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $fp, 0
	st.d	$a1, $fp, 8
	fmul.s	$fa0, $fs0, $fa7
	fmul.s	$fa4, $fs0, $ft0
	fmul.s	$fa5, $fs0, $ft1
	fsub.s	$fa6, $fa1, $fa0
	fsub.s	$fa4, $fa2, $fa4
	fsub.s	$fa3, $fa3, $fa5
	movfr2gr.s	$a0, $fa6
	movfr2gr.s	$a1, $fa4
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa3
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $s0, 0
	st.d	$a1, $s0, 8
	fld.s	$fa0, $fp, 0
	fld.s	$fa1, $fp, 4
	fld.s	$fa2, $fp, 8
	fsub.s	$fa5, $fa6, $fa0
	fsub.s	$fa4, $fa4, $fa1
	fsub.s	$fa3, $fa3, $fa2
	fmul.s	$fa4, $ft0, $fa4
	fmadd.s	$fa4, $fa5, $fa7, $fa4
	fmadd.s	$fa3, $fa3, $ft1, $fa4
	fcmp.clt.s	$fcc0, $fs1, $fa3
	bcnez	$fcc0, .LBB5_18
# %bb.15:
	fld.s	$fa3, $s1, 12
	fld.s	$fa4, $s1, 8
	fld.s	$fa5, $s1, 16
	fld.s	$fa6, $s1, 56
	fmul.s	$fa3, $fa1, $fa3
	fmadd.s	$fa3, $fa4, $fa0, $fa3
	fmadd.s	$fa3, $fa5, $fa2, $fa3
	fadd.s	$fa3, $fa6, $fa3
	fld.s	$fa4, $s1, 28
	fld.s	$fa5, $s1, 24
	fld.s	$fa6, $s1, 32
	fld.s	$fa7, $s1, 60
	fmul.s	$fa4, $fa1, $fa4
	fmadd.s	$fa4, $fa5, $fa0, $fa4
	fmadd.s	$fa4, $fa6, $fa2, $fa4
	fadd.s	$fa4, $fa7, $fa4
	fld.s	$fa5, $s1, 44
	fld.s	$fa6, $s1, 40
	fld.s	$fa7, $s1, 48
	fld.s	$ft0, $s1, 64
	fmul.s	$fa1, $fa1, $fa5
	fmadd.s	$fa0, $fa6, $fa0, $fa1
	fmadd.s	$fa0, $fa7, $fa2, $fa0
	fadd.s	$fa0, $ft0, $fa0
	movfr2gr.s	$a0, $fa3
	movfr2gr.s	$a1, $fa4
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa0
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $fp, 0
	st.d	$a1, $fp, 8
	fld.s	$fa0, $s1, 12
	fld.s	$fa1, $s0, 4
	fld.s	$fa2, $s1, 8
	fld.s	$fa3, $s0, 0
	fmul.s	$fa0, $fa0, $fa1
	fld.s	$fa4, $s1, 16
	fld.s	$fa5, $s0, 8
	fmadd.s	$fa0, $fa2, $fa3, $fa0
	fld.s	$fa2, $s1, 56
	fld.s	$fa6, $s1, 28
	fmadd.s	$fa0, $fa4, $fa5, $fa0
	fld.s	$fa4, $s1, 24
	fadd.s	$fa0, $fa0, $fa2
	fmul.s	$fa2, $fa1, $fa6
	fld.s	$fa6, $s1, 44
	fmadd.s	$fa2, $fa4, $fa3, $fa2
	fld.s	$fa4, $s1, 40
	fld.s	$fa7, $s1, 32
	fmul.s	$fa1, $fa1, $fa6
	fld.s	$fa6, $s1, 60
	fmadd.s	$fa1, $fa4, $fa3, $fa1
	fld.s	$fa3, $s1, 48
	fld.s	$fa4, $s1, 64
	fmadd.s	$fa2, $fa7, $fa5, $fa2
	fadd.s	$fa2, $fa6, $fa2
	fmadd.s	$fa1, $fa3, $fa5, $fa1
	fadd.s	$fa1, $fa4, $fa1
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa2
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa1
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $s0, 0
	st.d	$a1, $s0, 8
	fld.s	$fa3, $fp, 0
	fld.s	$fa4, $fp, 4
	fld.s	$fa5, $fp, 8
	fsub.s	$fa0, $fa3, $fa0
	fsub.s	$fa2, $fa4, $fa2
	fsub.s	$fa1, $fa5, $fa1
	pcalau12i	$a0, %pc_hi20(.LCPI5_1)
	fld.s	$fa3, $a0, %pc_lo12(.LCPI5_1)
	fmul.s	$fa2, $fa2, $fa2
	fmadd.s	$fa0, $fa0, $fa0, $fa2
	fmadd.s	$fa0, $fa1, $fa1, $fa0
	fcmp.cule.s	$fcc0, $fa0, $fa3
	bcnez	$fcc0, .LBB5_19
# %bb.16:
	fsqrt.s	$fa0, $fa0
	fneg.s	$fa0, $fa0
	b	.LBB5_21
.LBB5_17:
	fmov.s	$fs2, $fa0
	addi.d	$a6, $sp, 24
	addi.d	$a5, $sp, 8
	move	$a1, $s1
	move	$a2, $fp
	move	$a3, $s0
	move	$a4, $s2
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(_ZN29btSphereBoxCollisionAlgorithm20getSpherePenetrationEP17btCollisionObjectR9btVector3S3_RKS2_fS5_S5_)
	jirl	$ra, $ra, 0
	fcmp.cult.s	$fcc0, $fs1, $fa0
	bceqz	$fcc0, .LBB5_20
.LBB5_18:
	vldi	$vr0, -1168
	b	.LBB5_21
.LBB5_19:
	pcalau12i	$a0, %pc_hi20(.LCPI5_0)
	fld.s	$fa0, $a0, %pc_lo12(.LCPI5_0)
	b	.LBB5_21
.LBB5_20:
	fsub.s	$fa0, $fa0, $fs2
.LBB5_21:
                                        # kill: def $f0 killed $f0 killed $vr0
	fld.d	$fs3, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 64                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.Lfunc_end5:
	.size	_ZN29btSphereBoxCollisionAlgorithm17getSphereDistanceEP17btCollisionObjectR9btVector3S3_RKS2_f, .Lfunc_end5-_ZN29btSphereBoxCollisionAlgorithm17getSphereDistanceEP17btCollisionObjectR9btVector3S3_RKS2_f
	.cfi_endproc
                                        # -- End function
	.globl	_ZN29btSphereBoxCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult # -- Begin function _ZN29btSphereBoxCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult
	.p2align	5
	.type	_ZN29btSphereBoxCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult,@function
_ZN29btSphereBoxCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult: # @_ZN29btSphereBoxCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult
# %bb.0:
	vldi	$vr0, -1168
	ret
.Lfunc_end6:
	.size	_ZN29btSphereBoxCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult, .Lfunc_end6-_ZN29btSphereBoxCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZN29btSphereBoxCollisionAlgorithm20getSpherePenetrationEP17btCollisionObjectR9btVector3S3_RKS2_fS5_S5_
.LCPI7_0:
	.word	0xcb189680                      # float -1.0E+7
	.text
	.globl	_ZN29btSphereBoxCollisionAlgorithm20getSpherePenetrationEP17btCollisionObjectR9btVector3S3_RKS2_fS5_S5_
	.p2align	5
	.type	_ZN29btSphereBoxCollisionAlgorithm20getSpherePenetrationEP17btCollisionObjectR9btVector3S3_RKS2_fS5_S5_,@function
_ZN29btSphereBoxCollisionAlgorithm20getSpherePenetrationEP17btCollisionObjectR9btVector3S3_RKS2_fS5_S5_: # @_ZN29btSphereBoxCollisionAlgorithm20getSpherePenetrationEP17btCollisionObjectR9btVector3S3_RKS2_fS5_S5_
# %bb.0:
	fld.s	$ft2, $a5, 0
	fld.s	$ft3, $a5, 4
	fld.s	$fa1, $a4, 0
	fld.s	$fa2, $a1, 56
	fld.s	$fa3, $a4, 4
	fld.s	$fa4, $a1, 60
	fld.s	$fa5, $a4, 8
	fld.s	$fa6, $a1, 64
	fld.s	$ft5, $a5, 8
	fsub.s	$fa7, $fa1, $fa2
	fsub.s	$fa3, $fa3, $fa4
	fsub.s	$fa4, $fa5, $fa6
	fld.s	$fa1, $a1, 8
	fld.s	$fa2, $a1, 24
	fld.s	$fa5, $a1, 40
	fld.s	$fa6, $a1, 12
	fld.s	$ft0, $a1, 28
	fld.s	$ft1, $a1, 44
	fld.s	$ft4, $a1, 16
	fld.s	$ft6, $a1, 32
	fld.s	$ft7, $a1, 48
	fmul.s	$fa2, $fa3, $fa2
	fmadd.s	$fa1, $fa1, $fa7, $fa2
	fmadd.s	$fa1, $fa5, $fa4, $fa1
	fmul.s	$fa2, $fa3, $ft0
	fmadd.s	$fa2, $fa6, $fa7, $fa2
	fmadd.s	$fa2, $ft1, $fa4, $fa2
	fmul.s	$fa3, $fa3, $ft6
	fmadd.s	$fa3, $ft4, $fa7, $fa3
	fmadd.s	$fa3, $ft7, $fa4, $fa3
	fsub.s	$ft0, $fa1, $ft2
	fsub.s	$ft8, $fa2, $ft3
	fsub.s	$ft6, $fa3, $ft5
	movgr2fr.w	$fa5, $zero
	fmul.s	$ft7, $ft8, $fa5
	fsub.s	$fa4, $ft7, $ft0
	fmadd.s	$fa4, $ft6, $fa5, $fa4
	fsub.s	$ft9, $fa4, $fa0
	fcmp.clt.s	$fcc0, $fa5, $ft9
	bcnez	$fcc0, .LBB7_18
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.LCPI7_0)
	fld.s	$fa6, $a0, %pc_lo12(.LCPI7_0)
	fcmp.cule.s	$fcc0, $ft9, $fa6
	fmov.s	$fa4, $fa5
	fmov.s	$fa7, $fa5
	fmov.s	$ft1, $fa5
	fmov.s	$ft4, $fa5
	bcnez	$fcc0, .LBB7_3
# %bb.2:
	vldi	$vr4, -1040
	fmov.s	$fa6, $ft9
	fmov.s	$fa7, $ft2
	fmov.s	$ft1, $ft3
	fmov.s	$ft4, $ft5
.LBB7_3:
	fmsub.s	$ft8, $ft0, $fa5, $ft8
	fmadd.s	$ft8, $ft6, $fa5, $ft8
	fsub.s	$ft9, $ft8, $fa0
	fcmp.clt.s	$fcc0, $fa5, $ft9
	bcnez	$fcc0, .LBB7_18
# %bb.4:
	movgr2fr.w	$ft8, $zero
	fcmp.cule.s	$fcc0, $ft9, $fa6
	fmov.s	$fa5, $ft8
	bcnez	$fcc0, .LBB7_6
# %bb.5:
	movgr2fr.w	$fa4, $zero
	vldi	$vr5, -1040
	fmov.s	$fa6, $ft9
	fmov.s	$fa7, $ft2
	fmov.s	$ft1, $ft3
	fmov.s	$ft4, $ft5
.LBB7_6:
	fmadd.s	$ft0, $ft0, $ft8, $ft7
	fsub.s	$ft0, $ft0, $ft6
	fsub.s	$ft9, $ft0, $fa0
	fcmp.clt.s	$fcc0, $ft8, $ft9
	bcnez	$fcc0, .LBB7_18
# %bb.7:
	fld.s	$ft6, $a6, 0
	fld.s	$ft7, $a6, 4
	fld.s	$ft8, $a6, 8
	movgr2fr.w	$ft11, $zero
	fcmp.cule.s	$fcc0, $ft9, $fa6
	fmov.s	$ft0, $ft11
	bcnez	$fcc0, .LBB7_9
# %bb.8:
	movgr2fr.w	$fa4, $zero
	vldi	$vr8, -1040
	fmov.s	$fa6, $ft9
	fmov.s	$fa5, $fa4
	fmov.s	$fa7, $ft2
	fmov.s	$ft1, $ft3
	fmov.s	$ft4, $ft5
.LBB7_9:
	fsub.s	$ft3, $fa1, $ft6
	fsub.s	$ft10, $fa2, $ft7
	fsub.s	$ft5, $fa3, $ft8
	fmul.s	$ft9, $ft10, $ft11
	fadd.s	$ft2, $ft3, $ft9
	fmadd.s	$ft2, $ft5, $ft11, $ft2
	fsub.s	$ft2, $ft2, $fa0
	fcmp.clt.s	$fcc0, $ft11, $ft2
	bcnez	$fcc0, .LBB7_18
# %bb.10:
	fcmp.cule.s	$fcc0, $ft2, $fa6
	bcnez	$fcc0, .LBB7_12
# %bb.11:
	movgr2fr.w	$fa5, $zero
	vldi	$vr4, -1168
	fmov.s	$fa6, $ft2
	fmov.s	$ft0, $fa5
	fmov.s	$fa7, $ft6
	fmov.s	$ft1, $ft7
	fmov.s	$ft4, $ft8
.LBB7_12:
	movgr2fr.w	$ft2, $zero
	fmadd.s	$ft10, $ft3, $ft2, $ft10
	fmadd.s	$ft10, $ft5, $ft2, $ft10
	fsub.s	$ft10, $ft10, $fa0
	fcmp.clt.s	$fcc0, $ft2, $ft10
	bcnez	$fcc0, .LBB7_18
# %bb.13:
	fcmp.cule.s	$fcc0, $ft10, $fa6
	bcnez	$fcc0, .LBB7_15
# %bb.14:
	movgr2fr.w	$fa4, $zero
	vldi	$vr5, -1168
	fmov.s	$fa6, $ft10
	fmov.s	$ft0, $fa4
	fmov.s	$fa7, $ft6
	fmov.s	$ft1, $ft7
	fmov.s	$ft4, $ft8
.LBB7_15:
	fmadd.s	$ft3, $ft3, $ft2, $ft9
	fadd.s	$ft3, $ft5, $ft3
	fsub.s	$fa0, $ft3, $fa0
	fcmp.clt.s	$fcc0, $ft2, $fa0
	bcnez	$fcc0, .LBB7_18
# %bb.16:
	fcmp.clt.s	$fcc0, $fa6, $fa0
	bceqz	$fcc0, .LBB7_19
# %bb.17:
	vldi	$vr8, -1168
	fmov.s	$fa5, $ft2
	b	.LBB7_20
.LBB7_18:
	vldi	$vr0, -1168
                                        # kill: def $f0 killed $f0 killed $vr0
	ret
.LBB7_19:                               # %..critedge83_crit_edge
	fsub.s	$fa0, $fa1, $fa7
	fsub.s	$fa7, $fa2, $ft1
	fsub.s	$ft1, $fa3, $ft4
	fmul.s	$fa7, $fa5, $fa7
	fmadd.s	$fa0, $fa4, $fa0, $fa7
	fmadd.s	$ft3, $ft0, $ft1, $fa0
	fmov.s	$fa0, $fa6
	fmov.s	$ft2, $fa4
.LBB7_20:                               # %.critedge83
	fmul.s	$fa4, $ft2, $ft3
	fmul.s	$fa6, $fa5, $ft3
	fmul.s	$fa7, $ft0, $ft3
	fsub.s	$fa1, $fa1, $fa4
	fsub.s	$fa2, $fa2, $fa6
	fsub.s	$fa3, $fa3, $fa7
	movfr2gr.s	$a0, $fa1
	movfr2gr.s	$a4, $fa2
	bstrins.d	$a0, $a4, 63, 32
	movfr2gr.s	$a4, $fa3
	bstrpick.d	$a4, $a4, 31, 0
	st.d	$a0, $a2, 0
	st.d	$a4, $a2, 8
	fmul.s	$fa4, $fa0, $ft2
	fmul.s	$fa5, $fa0, $fa5
	fmul.s	$fa6, $fa0, $ft0
	fadd.s	$fa1, $fa4, $fa1
	fadd.s	$fa2, $fa5, $fa2
	fadd.s	$fa3, $fa6, $fa3
	movfr2gr.s	$a0, $fa1
	movfr2gr.s	$a4, $fa2
	bstrins.d	$a0, $a4, 63, 32
	movfr2gr.s	$a4, $fa3
	bstrpick.d	$a4, $a4, 31, 0
	st.d	$a0, $a3, 0
	st.d	$a4, $a3, 8
	fld.s	$fa1, $a1, 8
	fld.s	$fa2, $a2, 0
	fld.s	$fa3, $a1, 12
	fld.s	$fa4, $a2, 4
	fld.s	$fa5, $a1, 16
	fld.s	$fa6, $a2, 8
	fld.s	$fa7, $a1, 56
	fmul.s	$fa3, $fa3, $fa4
	fmadd.s	$fa1, $fa1, $fa2, $fa3
	fmadd.s	$fa1, $fa5, $fa6, $fa1
	fadd.s	$fa1, $fa1, $fa7
	fld.s	$fa3, $a1, 28
	fld.s	$fa5, $a1, 24
	fld.s	$fa7, $a1, 32
	fld.s	$ft0, $a1, 60
	fmul.s	$fa3, $fa4, $fa3
	fmadd.s	$fa3, $fa5, $fa2, $fa3
	fmadd.s	$fa3, $fa7, $fa6, $fa3
	fadd.s	$fa3, $ft0, $fa3
	fld.s	$fa5, $a1, 44
	fld.s	$fa7, $a1, 40
	fld.s	$ft0, $a1, 48
	fld.s	$ft1, $a1, 64
	fmul.s	$fa4, $fa4, $fa5
	fmadd.s	$fa2, $fa7, $fa2, $fa4
	fmadd.s	$fa2, $ft0, $fa6, $fa2
	fadd.s	$fa2, $ft1, $fa2
	movfr2gr.s	$a0, $fa1
	movfr2gr.s	$a4, $fa3
	bstrins.d	$a0, $a4, 63, 32
	movfr2gr.s	$a4, $fa2
	bstrpick.d	$a4, $a4, 31, 0
	st.d	$a0, $a2, 0
	st.d	$a4, $a2, 8
	fld.s	$fa1, $a1, 8
	fld.s	$fa2, $a3, 0
	fld.s	$fa3, $a1, 12
	fld.s	$fa4, $a3, 4
	fld.s	$fa5, $a1, 16
	fld.s	$fa6, $a3, 8
	fld.s	$fa7, $a1, 56
	fmul.s	$fa3, $fa3, $fa4
	fmadd.s	$fa1, $fa1, $fa2, $fa3
	fmadd.s	$fa1, $fa5, $fa6, $fa1
	fadd.s	$fa1, $fa1, $fa7
	fld.s	$fa3, $a1, 28
	fld.s	$fa5, $a1, 24
	fld.s	$fa7, $a1, 32
	fld.s	$ft0, $a1, 60
	fmul.s	$fa3, $fa4, $fa3
	fmadd.s	$fa3, $fa5, $fa2, $fa3
	fmadd.s	$fa3, $fa7, $fa6, $fa3
	fadd.s	$fa3, $ft0, $fa3
	fld.s	$fa5, $a1, 44
	fld.s	$fa7, $a1, 40
	fld.s	$ft0, $a1, 48
	fld.s	$ft1, $a1, 64
	fmul.s	$fa4, $fa4, $fa5
	fmadd.s	$fa2, $fa7, $fa2, $fa4
	fmadd.s	$fa2, $ft0, $fa6, $fa2
	fadd.s	$fa2, $ft1, $fa2
	movfr2gr.s	$a0, $fa1
	movfr2gr.s	$a1, $fa3
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa2
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $a3, 0
	st.d	$a1, $a3, 8
                                        # kill: def $f0 killed $f0 killed $vr0
	ret
.Lfunc_end7:
	.size	_ZN29btSphereBoxCollisionAlgorithm20getSpherePenetrationEP17btCollisionObjectR9btVector3S3_RKS2_fS5_S5_, .Lfunc_end7-_ZN29btSphereBoxCollisionAlgorithm20getSpherePenetrationEP17btCollisionObjectR9btVector3S3_RKS2_fS5_S5_
                                        # -- End function
	.section	.text._ZN29btSphereBoxCollisionAlgorithm22getAllContactManifoldsER20btAlignedObjectArrayIP20btPersistentManifoldE,"axG",@progbits,_ZN29btSphereBoxCollisionAlgorithm22getAllContactManifoldsER20btAlignedObjectArrayIP20btPersistentManifoldE,comdat
	.weak	_ZN29btSphereBoxCollisionAlgorithm22getAllContactManifoldsER20btAlignedObjectArrayIP20btPersistentManifoldE # -- Begin function _ZN29btSphereBoxCollisionAlgorithm22getAllContactManifoldsER20btAlignedObjectArrayIP20btPersistentManifoldE
	.p2align	5
	.type	_ZN29btSphereBoxCollisionAlgorithm22getAllContactManifoldsER20btAlignedObjectArrayIP20btPersistentManifoldE,@function
_ZN29btSphereBoxCollisionAlgorithm22getAllContactManifoldsER20btAlignedObjectArrayIP20btPersistentManifoldE: # @_ZN29btSphereBoxCollisionAlgorithm22getAllContactManifoldsER20btAlignedObjectArrayIP20btPersistentManifoldE
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
	.size	_ZN29btSphereBoxCollisionAlgorithm22getAllContactManifoldsER20btAlignedObjectArrayIP20btPersistentManifoldE, .Lfunc_end8-_ZN29btSphereBoxCollisionAlgorithm22getAllContactManifoldsER20btAlignedObjectArrayIP20btPersistentManifoldE
	.cfi_endproc
                                        # -- End function
	.type	_ZTV29btSphereBoxCollisionAlgorithm,@object # @_ZTV29btSphereBoxCollisionAlgorithm
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTV29btSphereBoxCollisionAlgorithm
	.p2align	3, 0x0
_ZTV29btSphereBoxCollisionAlgorithm:
	.dword	0
	.dword	_ZTI29btSphereBoxCollisionAlgorithm
	.dword	_ZN29btSphereBoxCollisionAlgorithmD2Ev
	.dword	_ZN29btSphereBoxCollisionAlgorithmD0Ev
	.dword	_ZN29btSphereBoxCollisionAlgorithm16processCollisionEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult
	.dword	_ZN29btSphereBoxCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult
	.dword	_ZN29btSphereBoxCollisionAlgorithm22getAllContactManifoldsER20btAlignedObjectArrayIP20btPersistentManifoldE
	.size	_ZTV29btSphereBoxCollisionAlgorithm, 56

	.type	_ZTI29btSphereBoxCollisionAlgorithm,@object # @_ZTI29btSphereBoxCollisionAlgorithm
	.globl	_ZTI29btSphereBoxCollisionAlgorithm
	.p2align	3, 0x0
_ZTI29btSphereBoxCollisionAlgorithm:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS29btSphereBoxCollisionAlgorithm
	.dword	_ZTI30btActivatingCollisionAlgorithm
	.size	_ZTI29btSphereBoxCollisionAlgorithm, 24

	.type	_ZTS29btSphereBoxCollisionAlgorithm,@object # @_ZTS29btSphereBoxCollisionAlgorithm
	.section	.rodata,"a",@progbits
	.globl	_ZTS29btSphereBoxCollisionAlgorithm
_ZTS29btSphereBoxCollisionAlgorithm:
	.asciz	"29btSphereBoxCollisionAlgorithm"
	.size	_ZTS29btSphereBoxCollisionAlgorithm, 32

	.globl	_ZN29btSphereBoxCollisionAlgorithmC1EP20btPersistentManifoldRK36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS6_b
	.type	_ZN29btSphereBoxCollisionAlgorithmC1EP20btPersistentManifoldRK36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS6_b,@function
_ZN29btSphereBoxCollisionAlgorithmC1EP20btPersistentManifoldRK36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS6_b = _ZN29btSphereBoxCollisionAlgorithmC2EP20btPersistentManifoldRK36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS6_b
	.globl	_ZN29btSphereBoxCollisionAlgorithmD1Ev
	.type	_ZN29btSphereBoxCollisionAlgorithmD1Ev,@function
_ZN29btSphereBoxCollisionAlgorithmD1Ev = _ZN29btSphereBoxCollisionAlgorithmD2Ev
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
	.addrsig_sym _ZTI29btSphereBoxCollisionAlgorithm
	.addrsig_sym _ZTVN10__cxxabiv120__si_class_type_infoE
	.addrsig_sym _ZTS29btSphereBoxCollisionAlgorithm
	.addrsig_sym _ZTI30btActivatingCollisionAlgorithm
