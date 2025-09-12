	.file	"btGImpactCollisionAlgorithm.cpp"
	.text
	.globl	_ZN27btGImpactCollisionAlgorithmC2ERK36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS4_ # -- Begin function _ZN27btGImpactCollisionAlgorithmC2ERK36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS4_
	.p2align	5
	.type	_ZN27btGImpactCollisionAlgorithmC2ERK36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS4_,@function
_ZN27btGImpactCollisionAlgorithmC2ERK36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS4_: # @_ZN27btGImpactCollisionAlgorithmC2ERK36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS4_
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_ZN30btActivatingCollisionAlgorithmC2ERK36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS4_)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(_ZTV27btGImpactCollisionAlgorithm+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV27btGImpactCollisionAlgorithm+16)
	st.d	$a0, $fp, 0
	vrepli.b	$vr0, 0
	vst	$vr0, $fp, 16
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end0:
	.size	_ZN27btGImpactCollisionAlgorithmC2ERK36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS4_, .Lfunc_end0-_ZN27btGImpactCollisionAlgorithmC2ERK36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS4_
	.cfi_endproc
                                        # -- End function
	.globl	_ZN27btGImpactCollisionAlgorithmD2Ev # -- Begin function _ZN27btGImpactCollisionAlgorithmD2Ev
	.p2align	5
	.type	_ZN27btGImpactCollisionAlgorithmD2Ev,@function
_ZN27btGImpactCollisionAlgorithmD2Ev:   # @_ZN27btGImpactCollisionAlgorithmD2Ev
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
	pcalau12i	$a0, %pc_hi20(_ZTV27btGImpactCollisionAlgorithm+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV27btGImpactCollisionAlgorithm+16)
	ld.d	$a1, $fp, 24
	st.d	$a0, $fp, 0
	beqz	$a1, .LBB1_3
# %bb.1:
	ld.d	$a0, $fp, 8
	ld.d	$a2, $a0, 0
	ld.d	$a2, $a2, 32
.Ltmp0:                                 # EH_LABEL
	jirl	$ra, $a2, 0
.Ltmp1:                                 # EH_LABEL
# %bb.2:                                # %.noexc
	st.d	$zero, $fp, 24
.LBB1_3:                                # %_ZN27btGImpactCollisionAlgorithm23destroyContactManifoldsEv.exit.i
	ld.d	$a0, $fp, 16
	beqz	$a0, .LBB1_7
# %bb.4:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 0
.Ltmp2:                                 # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp3:                                 # EH_LABEL
# %bb.5:                                # %.noexc2
	ld.d	$a0, $fp, 8
	ld.d	$a2, $a0, 0
	ld.d	$a1, $fp, 16
	ld.d	$a2, $a2, 104
.Ltmp4:                                 # EH_LABEL
	jirl	$ra, $a2, 0
.Ltmp5:                                 # EH_LABEL
# %bb.6:                                # %.noexc3
	st.d	$zero, $fp, 16
.LBB1_7:
	addi.w	$a0, $zero, -1
	st.d	$a0, $fp, 56
	st.d	$a0, $fp, 48
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZN30btActivatingCollisionAlgorithmD2Ev)
	jr	$t8
.LBB1_8:
.Ltmp6:                                 # EH_LABEL
	move	$s0, $a0
.Ltmp7:                                 # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN30btActivatingCollisionAlgorithmD2Ev)
	jirl	$ra, $ra, 0
.Ltmp8:                                 # EH_LABEL
# %bb.9:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB1_10:
.Ltmp9:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	_ZN27btGImpactCollisionAlgorithmD2Ev, .Lfunc_end1-_ZN27btGImpactCollisionAlgorithmD2Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table1:
.Lexception0:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Ltmp0-.Lfunc_begin0           # >> Call Site 1 <<
	.uleb128 .Ltmp5-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp5
	.uleb128 .Ltmp6-.Lfunc_begin0           #     jumps to .Ltmp6
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp5-.Lfunc_begin0           # >> Call Site 2 <<
	.uleb128 .Ltmp7-.Ltmp5                  #   Call between .Ltmp5 and .Ltmp7
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp7-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp8-.Ltmp7                  #   Call between .Ltmp7 and .Ltmp8
	.uleb128 .Ltmp9-.Lfunc_begin0           #     jumps to .Ltmp9
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp8-.Lfunc_begin0           # >> Call Site 4 <<
	.uleb128 .Lfunc_end1-.Ltmp8             #   Call between .Ltmp8 and .Lfunc_end1
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
.Lfunc_end2:
	.size	__clang_call_terminate, .Lfunc_end2-__clang_call_terminate
                                        # -- End function
	.text
	.globl	_ZN27btGImpactCollisionAlgorithmD0Ev # -- Begin function _ZN27btGImpactCollisionAlgorithmD0Ev
	.p2align	5
	.type	_ZN27btGImpactCollisionAlgorithmD0Ev,@function
_ZN27btGImpactCollisionAlgorithmD0Ev:   # @_ZN27btGImpactCollisionAlgorithmD0Ev
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
	pcalau12i	$a0, %pc_hi20(_ZTV27btGImpactCollisionAlgorithm+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV27btGImpactCollisionAlgorithm+16)
	ld.d	$a1, $fp, 24
	st.d	$a0, $fp, 0
	beqz	$a1, .LBB3_3
# %bb.1:
	ld.d	$a0, $fp, 8
	ld.d	$a2, $a0, 0
	ld.d	$a2, $a2, 32
.Ltmp10:                                # EH_LABEL
	jirl	$ra, $a2, 0
.Ltmp11:                                # EH_LABEL
# %bb.2:                                # %.noexc.i
	st.d	$zero, $fp, 24
.LBB3_3:                                # %_ZN27btGImpactCollisionAlgorithm23destroyContactManifoldsEv.exit.i.i
	ld.d	$a0, $fp, 16
	beqz	$a0, .LBB3_7
# %bb.4:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 0
.Ltmp12:                                # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp13:                                # EH_LABEL
# %bb.5:                                # %.noexc2.i
	ld.d	$a0, $fp, 8
	ld.d	$a2, $a0, 0
	ld.d	$a1, $fp, 16
	ld.d	$a2, $a2, 104
.Ltmp14:                                # EH_LABEL
	jirl	$ra, $a2, 0
.Ltmp15:                                # EH_LABEL
# %bb.6:                                # %.noexc3.i
	st.d	$zero, $fp, 16
.LBB3_7:
	addi.w	$a0, $zero, -1
	st.d	$a0, $fp, 56
	st.d	$a0, $fp, 48
.Ltmp20:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN30btActivatingCollisionAlgorithmD2Ev)
	jirl	$ra, $ra, 0
.Ltmp21:                                # EH_LABEL
# %bb.8:                                # %_ZN27btGImpactCollisionAlgorithmD2Ev.exit
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZdlPv)
	jr	$t8
.LBB3_9:
.Ltmp22:                                # EH_LABEL
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB3_10:
.Ltmp16:                                # EH_LABEL
	move	$s0, $a0
.Ltmp17:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN30btActivatingCollisionAlgorithmD2Ev)
	jirl	$ra, $ra, 0
.Ltmp18:                                # EH_LABEL
# %bb.11:                               # %.body
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB3_12:
.Ltmp19:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end3:
	.size	_ZN27btGImpactCollisionAlgorithmD0Ev, .Lfunc_end3-_ZN27btGImpactCollisionAlgorithmD0Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table3:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Ltmp10-.Lfunc_begin1          # >> Call Site 1 <<
	.uleb128 .Ltmp15-.Ltmp10                #   Call between .Ltmp10 and .Ltmp15
	.uleb128 .Ltmp16-.Lfunc_begin1          #     jumps to .Ltmp16
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp20-.Lfunc_begin1          # >> Call Site 2 <<
	.uleb128 .Ltmp21-.Ltmp20                #   Call between .Ltmp20 and .Ltmp21
	.uleb128 .Ltmp22-.Lfunc_begin1          #     jumps to .Ltmp22
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp21-.Lfunc_begin1          # >> Call Site 3 <<
	.uleb128 .Ltmp17-.Ltmp21                #   Call between .Ltmp21 and .Ltmp17
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp17-.Lfunc_begin1          # >> Call Site 4 <<
	.uleb128 .Ltmp18-.Ltmp17                #   Call between .Ltmp17 and .Ltmp18
	.uleb128 .Ltmp19-.Lfunc_begin1          #     jumps to .Ltmp19
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp18-.Lfunc_begin1          # >> Call Site 5 <<
	.uleb128 .Lfunc_end3-.Ltmp18            #   Call between .Ltmp18 and .Lfunc_end3
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
	.globl	_ZN27btGImpactCollisionAlgorithm15addContactPointEP17btCollisionObjectS1_RK9btVector3S4_f # -- Begin function _ZN27btGImpactCollisionAlgorithm15addContactPointEP17btCollisionObjectS1_RK9btVector3S4_f
	.p2align	5
	.type	_ZN27btGImpactCollisionAlgorithm15addContactPointEP17btCollisionObjectS1_RK9btVector3S4_f,@function
_ZN27btGImpactCollisionAlgorithm15addContactPointEP17btCollisionObjectS1_RK9btVector3S4_f: # @_ZN27btGImpactCollisionAlgorithm15addContactPointEP17btCollisionObjectS1_RK9btVector3S4_f
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
	fst.d	$fs0, $sp, 8                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 56, -56
	move	$fp, $a0
	ld.d	$a0, $a0, 32
	ld.d	$a7, $a0, 0
	ld.w	$a5, $fp, 52
	ld.w	$a6, $fp, 48
	ld.d	$a7, $a7, 16
	fmov.s	$fs0, $fa0
	move	$s1, $a4
	move	$s0, $a3
	move	$s2, $a2
	move	$s3, $a1
	move	$a1, $a5
	move	$a2, $a6
	jirl	$ra, $a7, 0
	ld.d	$a0, $fp, 32
	ld.d	$a3, $a0, 0
	ld.w	$a1, $fp, 60
	ld.w	$a2, $fp, 56
	ld.d	$a3, $a3, 24
	jirl	$ra, $a3, 0
	ld.d	$a0, $fp, 24
	bnez	$a0, .LBB4_2
# %bb.1:
	ld.d	$a0, $fp, 8
	ld.d	$a1, $a0, 0
	ld.d	$a3, $a1, 24
	move	$a1, $s3
	move	$a2, $s2
	jirl	$ra, $a3, 0
	st.d	$a0, $fp, 24
.LBB4_2:                                # %_ZN27btGImpactCollisionAlgorithm13checkManifoldEP17btCollisionObjectS1_.exit
	ld.d	$a1, $fp, 32
	ld.d	$a2, $a1, 0
	st.d	$a0, $a1, 8
	ld.d	$a3, $a2, 32
	move	$a0, $a1
	move	$a1, $s1
	move	$a2, $s0
	fmov.s	$fa0, $fs0
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	jr	$a3
.Lfunc_end4:
	.size	_ZN27btGImpactCollisionAlgorithm15addContactPointEP17btCollisionObjectS1_RK9btVector3S4_f, .Lfunc_end4-_ZN27btGImpactCollisionAlgorithm15addContactPointEP17btCollisionObjectS1_RK9btVector3S4_f
	.cfi_endproc
                                        # -- End function
	.globl	_ZN27btGImpactCollisionAlgorithm24shape_vs_shape_collisionEP17btCollisionObjectS1_P16btCollisionShapeS3_ # -- Begin function _ZN27btGImpactCollisionAlgorithm24shape_vs_shape_collisionEP17btCollisionObjectS1_P16btCollisionShapeS3_
	.p2align	5
	.type	_ZN27btGImpactCollisionAlgorithm24shape_vs_shape_collisionEP17btCollisionObjectS1_P16btCollisionShapeS3_,@function
_ZN27btGImpactCollisionAlgorithm24shape_vs_shape_collisionEP17btCollisionObjectS1_P16btCollisionShapeS3_: # @_ZN27btGImpactCollisionAlgorithm24shape_vs_shape_collisionEP17btCollisionObjectS1_P16btCollisionShapeS3_
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
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	ld.d	$s3, $a1, 200
	ld.d	$a5, $a0, 24
	ld.d	$s4, $a2, 200
	st.d	$a3, $a1, 200
	st.d	$a4, $a2, 200
	bnez	$a5, .LBB5_2
# %bb.1:
	ld.d	$a0, $s1, 8
	ld.d	$a1, $a0, 0
	ld.d	$a3, $a1, 24
	move	$a1, $s0
	move	$a2, $fp
	jirl	$ra, $a3, 0
	move	$a5, $a0
	st.d	$a0, $s1, 24
.LBB5_2:                                # %_ZN27btGImpactCollisionAlgorithm12newAlgorithmEP17btCollisionObjectS1_.exit
	ld.d	$a0, $s1, 8
	ld.d	$a1, $s1, 32
	ld.d	$a2, $a0, 0
	st.d	$a5, $a1, 8
	ld.d	$a4, $a2, 16
	move	$a1, $s0
	move	$a2, $fp
	move	$a3, $a5
	jirl	$ra, $a4, 0
	ld.d	$a3, $s1, 32
	ld.d	$a4, $a3, 0
	ld.w	$a1, $s1, 52
	ld.w	$a2, $s1, 48
	ld.d	$a4, $a4, 16
	move	$s2, $a0
	move	$a0, $a3
	jirl	$ra, $a4, 0
	ld.d	$a0, $s1, 32
	ld.d	$a3, $a0, 0
	ld.w	$a1, $s1, 60
	ld.w	$a2, $s1, 56
	ld.d	$a3, $a3, 24
	jirl	$ra, $a3, 0
	ld.d	$a0, $s2, 0
	ld.d	$a3, $s1, 40
	ld.d	$a4, $s1, 32
	ld.d	$a5, $a0, 16
	move	$a0, $s2
	move	$a1, $s0
	move	$a2, $fp
	jirl	$ra, $a5, 0
	ld.d	$a0, $s2, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s2
	jirl	$ra, $a1, 0
	ld.d	$a0, $s1, 8
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a1, 104
	move	$a1, $s2
	jirl	$ra, $a2, 0
	st.d	$s3, $s0, 200
	st.d	$s4, $fp, 200
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end5:
	.size	_ZN27btGImpactCollisionAlgorithm24shape_vs_shape_collisionEP17btCollisionObjectS1_P16btCollisionShapeS3_, .Lfunc_end5-_ZN27btGImpactCollisionAlgorithm24shape_vs_shape_collisionEP17btCollisionObjectS1_P16btCollisionShapeS3_
	.cfi_endproc
                                        # -- End function
	.globl	_ZN27btGImpactCollisionAlgorithm26convex_vs_convex_collisionEP17btCollisionObjectS1_P16btCollisionShapeS3_ # -- Begin function _ZN27btGImpactCollisionAlgorithm26convex_vs_convex_collisionEP17btCollisionObjectS1_P16btCollisionShapeS3_
	.p2align	5
	.type	_ZN27btGImpactCollisionAlgorithm26convex_vs_convex_collisionEP17btCollisionObjectS1_P16btCollisionShapeS3_,@function
_ZN27btGImpactCollisionAlgorithm26convex_vs_convex_collisionEP17btCollisionObjectS1_P16btCollisionShapeS3_: # @_ZN27btGImpactCollisionAlgorithm26convex_vs_convex_collisionEP17btCollisionObjectS1_P16btCollisionShapeS3_
	.cfi_startproc
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
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	ld.d	$a0, $a0, 32
	ld.d	$s2, $a1, 200
	ld.d	$s3, $a2, 200
	st.d	$a3, $a1, 200
	ld.d	$a3, $a0, 0
	st.d	$a4, $a2, 200
	ld.w	$a1, $s1, 52
	ld.w	$a2, $s1, 48
	ld.d	$a3, $a3, 16
	jirl	$ra, $a3, 0
	ld.d	$a0, $s1, 32
	ld.d	$a3, $a0, 0
	ld.w	$a1, $s1, 60
	ld.w	$a2, $s1, 56
	ld.d	$a3, $a3, 24
	jirl	$ra, $a3, 0
	ld.d	$a0, $s1, 16
	bnez	$a0, .LBB6_4
# %bb.1:
	ld.d	$a3, $s1, 24
	bnez	$a3, .LBB6_3
# %bb.2:
	ld.d	$a0, $s1, 8
	ld.d	$a1, $a0, 0
	ld.d	$a3, $a1, 24
	move	$a1, $s0
	move	$a2, $fp
	jirl	$ra, $a3, 0
	move	$a3, $a0
	st.d	$a0, $s1, 24
.LBB6_3:                                # %_ZN27btGImpactCollisionAlgorithm12newAlgorithmEP17btCollisionObjectS1_.exit.i
	ld.d	$a0, $s1, 8
	ld.d	$a1, $s1, 32
	ld.d	$a2, $a0, 0
	st.d	$a3, $a1, 8
	ld.d	$a4, $a2, 16
	move	$a1, $s0
	move	$a2, $fp
	jirl	$ra, $a4, 0
	st.d	$a0, $s1, 16
.LBB6_4:                                # %_ZN27btGImpactCollisionAlgorithm20checkConvexAlgorithmEP17btCollisionObjectS1_.exit
	ld.d	$a1, $a0, 0
	ld.d	$a3, $s1, 40
	ld.d	$a4, $s1, 32
	ld.d	$a5, $a1, 16
	move	$a1, $s0
	move	$a2, $fp
	jirl	$ra, $a5, 0
	st.d	$s2, $s0, 200
	st.d	$s3, $fp, 200
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end6:
	.size	_ZN27btGImpactCollisionAlgorithm26convex_vs_convex_collisionEP17btCollisionObjectS1_P16btCollisionShapeS3_, .Lfunc_end6-_ZN27btGImpactCollisionAlgorithm26convex_vs_convex_collisionEP17btCollisionObjectS1_P16btCollisionShapeS3_
	.cfi_endproc
                                        # -- End function
	.globl	_ZN27btGImpactCollisionAlgorithm29gimpact_vs_gimpact_find_pairsERK11btTransformS2_P23btGImpactShapeInterfaceS4_R9btPairSet # -- Begin function _ZN27btGImpactCollisionAlgorithm29gimpact_vs_gimpact_find_pairsERK11btTransformS2_P23btGImpactShapeInterfaceS4_R9btPairSet
	.p2align	5
	.type	_ZN27btGImpactCollisionAlgorithm29gimpact_vs_gimpact_find_pairsERK11btTransformS2_P23btGImpactShapeInterfaceS4_R9btPairSet,@function
_ZN27btGImpactCollisionAlgorithm29gimpact_vs_gimpact_find_pairsERK11btTransformS2_P23btGImpactShapeInterfaceS4_R9btPairSet: # @_ZN27btGImpactCollisionAlgorithm29gimpact_vs_gimpact_find_pairsERK11btTransformS2_P23btGImpactShapeInterfaceS4_R9btPairSet
	.cfi_startproc
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
	move	$s0, $a3
	ld.w	$a0, $a3, 80
	move	$fp, $a5
	move	$s3, $a4
	move	$s1, $a2
	move	$s2, $a1
	beqz	$a0, .LBB7_3
# %bb.1:
	ld.w	$a0, $s3, 80
	beqz	$a0, .LBB7_3
# %bb.2:
	addi.d	$a0, $s0, 80
	addi.d	$a2, $s3, 80
	move	$a1, $s2
	move	$a3, $s1
	move	$a4, $fp
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
	pcaddu18i	$t8, %call36(_ZN21btGImpactQuantizedBvh14find_collisionEPS_RK11btTransformS0_S3_R9btPairSet)
	jr	$t8
.LBB7_3:
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 144
	move	$a0, $s0
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB7_28
# %bb.4:                                # %.lr.ph27
	move	$s4, $a0
	addi.d	$s8, $sp, 56
	addi.d	$s6, $sp, 24
	b	.LBB7_6
	.p2align	4, , 16
.LBB7_5:                                # %.loopexit
                                        #   in Loop: Header=BB7_6 Depth=1
	beqz	$s4, .LBB7_28
.LBB7_6:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_12 Depth 2
                                        #       Child Loop BB7_23 Depth 3
	ld.d	$a0, $s0, 0
	ld.d	$a5, $a0, 208
	addi.w	$s4, $s4, -1
	addi.d	$a3, $sp, 40
	move	$a0, $s0
	move	$a1, $s4
	move	$a2, $s2
	move	$a4, $s8
	jirl	$ra, $a5, 0
	ld.d	$a0, $s3, 0
	ld.d	$a1, $a0, 144
	move	$a0, $s3
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB7_5
# %bb.7:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB7_6 Depth=1
	move	$s7, $a0
	b	.LBB7_12
.LBB7_8:                                #   in Loop: Header=BB7_12 Depth=2
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 4
.LBB7_9:                                # %_ZN20btAlignedObjectArrayI8GIM_PAIRE10deallocateEv.exit.i.i.i
                                        #   in Loop: Header=BB7_12 Depth=2
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 24
	st.d	$s8, $fp, 16
	st.w	$s5, $fp, 8
	addi.d	$s8, $sp, 56
.LBB7_10:                               # %_ZN9btPairSet9push_pairEii.exit
                                        #   in Loop: Header=BB7_12 Depth=2
	ld.d	$a0, $fp, 16
	alsl.d	$a2, $a1, $a0, 3
	slli.d	$a3, $a1, 3
	stx.w	$s4, $a0, $a3
	st.w	$s7, $a2, 4
	addi.d	$a0, $a1, 1
	st.w	$a0, $fp, 4
	.p2align	4, , 16
.LBB7_11:                               # %_ZNK6btAABB13has_collisionERKS_.exit.thread
                                        #   in Loop: Header=BB7_12 Depth=2
	beqz	$s7, .LBB7_5
.LBB7_12:                               # %.lr.ph
                                        #   Parent Loop BB7_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_23 Depth 3
	ld.d	$a0, $s3, 0
	ld.d	$a5, $a0, 208
	addi.w	$s7, $s7, -1
	addi.d	$a3, $sp, 8
	move	$a0, $s3
	move	$a1, $s4
	move	$a2, $s1
	move	$a4, $s6
	jirl	$ra, $a5, 0
	fld.s	$fa0, $sp, 8
	fld.s	$fa1, $sp, 56
	fcmp.clt.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB7_11
# %bb.13:                               #   in Loop: Header=BB7_12 Depth=2
	fld.s	$fa0, $sp, 24
	fld.s	$fa1, $sp, 40
	fcmp.clt.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB7_11
# %bb.14:                               #   in Loop: Header=BB7_12 Depth=2
	fld.s	$fa0, $sp, 12
	fld.s	$fa1, $sp, 60
	fcmp.clt.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB7_11
# %bb.15:                               #   in Loop: Header=BB7_12 Depth=2
	fld.s	$fa0, $sp, 28
	fld.s	$fa1, $sp, 44
	fcmp.clt.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB7_11
# %bb.16:                               #   in Loop: Header=BB7_12 Depth=2
	fld.s	$fa0, $sp, 16
	fld.s	$fa1, $sp, 64
	fcmp.clt.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB7_11
# %bb.17:                               #   in Loop: Header=BB7_12 Depth=2
	fld.s	$fa0, $sp, 32
	fld.s	$fa1, $sp, 48
	fcmp.clt.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB7_11
# %bb.18:                               # %_ZNK6btAABB13has_collisionERKS_.exit
                                        #   in Loop: Header=BB7_12 Depth=2
	ld.w	$a1, $fp, 4
	ld.w	$a0, $fp, 8
	bne	$a1, $a0, .LBB7_10
# %bb.19:                               #   in Loop: Header=BB7_12 Depth=2
	sltui	$a0, $a1, 1
	slli.w	$a2, $a1, 1
	masknez	$a2, $a2, $a0
	ori	$a3, $zero, 1
	maskeqz	$a0, $a3, $a0
	or	$s5, $a0, $a2
	bge	$a1, $s5, .LBB7_10
# %bb.20:                               #   in Loop: Header=BB7_12 Depth=2
	beqz	$s5, .LBB7_25
# %bb.21:                               #   in Loop: Header=BB7_12 Depth=2
	slli.d	$a0, $s5, 3
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 4
	move	$s8, $a0
	ld.d	$a0, $fp, 16
	blez	$a1, .LBB7_26
.LBB7_22:                               # %.lr.ph.i.i.i.i
                                        #   in Loop: Header=BB7_12 Depth=2
	addi.d	$a2, $a0, 4
	addi.d	$a3, $s8, 4
	move	$a4, $a1
	.p2align	4, , 16
.LBB7_23:                               #   Parent Loop BB7_6 Depth=1
                                        #     Parent Loop BB7_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a5, $a2, -4
	st.d	$a5, $a3, -4
	addi.d	$a4, $a4, -1
	addi.d	$a2, $a2, 8
	addi.d	$a3, $a3, 8
	bnez	$a4, .LBB7_23
# %bb.24:                               # %_ZNK20btAlignedObjectArrayI8GIM_PAIRE4copyEiiPS0_.exit.thread.i.i.i
                                        #   in Loop: Header=BB7_12 Depth=2
	ld.bu	$a2, $fp, 24
	bnez	$a2, .LBB7_8
	b	.LBB7_9
.LBB7_25:                               #   in Loop: Header=BB7_12 Depth=2
	move	$s8, $zero
	ld.d	$a0, $fp, 16
	bgtz	$a1, .LBB7_22
.LBB7_26:                               # %_ZNK20btAlignedObjectArrayI8GIM_PAIRE4copyEiiPS0_.exit.i.i.i
                                        #   in Loop: Header=BB7_12 Depth=2
	beqz	$a0, .LBB7_9
# %bb.27:                               # %_ZNK20btAlignedObjectArrayI8GIM_PAIRE4copyEiiPS0_.exit.i.i.i
                                        #   in Loop: Header=BB7_12 Depth=2
	ld.b	$a2, $fp, 24
	andi	$a2, $a2, 1
	bnez	$a2, .LBB7_8
	b	.LBB7_9
.LBB7_28:                               # %._crit_edge
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
.Lfunc_end7:
	.size	_ZN27btGImpactCollisionAlgorithm29gimpact_vs_gimpact_find_pairsERK11btTransformS2_P23btGImpactShapeInterfaceS4_R9btPairSet, .Lfunc_end7-_ZN27btGImpactCollisionAlgorithm29gimpact_vs_gimpact_find_pairsERK11btTransformS2_P23btGImpactShapeInterfaceS4_R9btPairSet
	.cfi_endproc
                                        # -- End function
	.globl	_ZN27btGImpactCollisionAlgorithm27gimpact_vs_shape_find_pairsERK11btTransformS2_P23btGImpactShapeInterfaceP16btCollisionShapeR20btAlignedObjectArrayIiE # -- Begin function _ZN27btGImpactCollisionAlgorithm27gimpact_vs_shape_find_pairsERK11btTransformS2_P23btGImpactShapeInterfaceP16btCollisionShapeR20btAlignedObjectArrayIiE
	.p2align	5
	.type	_ZN27btGImpactCollisionAlgorithm27gimpact_vs_shape_find_pairsERK11btTransformS2_P23btGImpactShapeInterfaceP16btCollisionShapeR20btAlignedObjectArrayIiE,@function
_ZN27btGImpactCollisionAlgorithm27gimpact_vs_shape_find_pairsERK11btTransformS2_P23btGImpactShapeInterfaceP16btCollisionShapeR20btAlignedObjectArrayIiE: # @_ZN27btGImpactCollisionAlgorithm27gimpact_vs_shape_find_pairsERK11btTransformS2_P23btGImpactShapeInterfaceP16btCollisionShapeR20btAlignedObjectArrayIiE
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -192
	.cfi_def_cfa_offset 192
	st.d	$ra, $sp, 184                   # 8-byte Folded Spill
	st.d	$fp, $sp, 176                   # 8-byte Folded Spill
	st.d	$s0, $sp, 168                   # 8-byte Folded Spill
	st.d	$s1, $sp, 160                   # 8-byte Folded Spill
	st.d	$s2, $sp, 152                   # 8-byte Folded Spill
	st.d	$s3, $sp, 144                   # 8-byte Folded Spill
	st.d	$s4, $sp, 136                   # 8-byte Folded Spill
	st.d	$s5, $sp, 128                   # 8-byte Folded Spill
	st.d	$s6, $sp, 120                   # 8-byte Folded Spill
	st.d	$s7, $sp, 112                   # 8-byte Folded Spill
	st.d	$s8, $sp, 104                   # 8-byte Folded Spill
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
	move	$s1, $a3
	ld.w	$a3, $a3, 80
	move	$fp, $a5
	move	$a0, $a4
	move	$a4, $a2
	move	$s0, $a1
	beqz	$a3, .LBB8_3
# %bb.1:
	addi.d	$s1, $s1, 80
	fld.s	$fa6, $s0, 0
	fld.s	$ft0, $s0, 16
	fld.s	$fa7, $s0, 32
	fld.s	$fa2, $s0, 4
	fld.s	$fa5, $s0, 20
	fld.s	$fa3, $s0, 36
	fld.s	$fa0, $s0, 8
	fld.s	$fa1, $s0, 24
	fld.s	$ft1, $s0, 48
	fld.s	$ft2, $s0, 52
	fld.s	$ft3, $s0, 56
	fld.s	$fa4, $s0, 40
	fneg.s	$ft1, $ft1
	fneg.s	$ft2, $ft2
	fneg.s	$ft3, $ft3
	fmul.s	$ft4, $ft0, $ft2
	fmadd.s	$ft4, $fa6, $ft1, $ft4
	fmadd.s	$ft4, $fa7, $ft3, $ft4
	fmul.s	$ft5, $fa5, $ft2
	fmadd.s	$ft5, $fa2, $ft1, $ft5
	fmadd.s	$ft5, $fa3, $ft3, $ft5
	fmul.s	$ft2, $fa1, $ft2
	fmadd.s	$ft1, $fa0, $ft1, $ft2
	fmadd.s	$ft1, $fa4, $ft3, $ft1
	movfr2gr.s	$a1, $ft1
	bstrpick.d	$a1, $a1, 31, 0
	fld.s	$ft2, $a4, 52
	fld.s	$ft3, $a4, 48
	fld.s	$ft6, $a4, 56
	st.d	$a1, $sp, 64
	fmul.s	$ft7, $ft0, $ft2
	fmadd.s	$ft7, $fa6, $ft3, $ft7
	fmadd.s	$ft7, $fa7, $ft6, $ft7
	fmul.s	$ft8, $fa5, $ft2
	fmadd.s	$ft8, $fa2, $ft3, $ft8
	fmadd.s	$ft8, $fa3, $ft6, $ft8
	fmul.s	$ft2, $fa1, $ft2
	fmadd.s	$ft2, $fa0, $ft3, $ft2
	fmadd.s	$ft2, $fa4, $ft6, $ft2
	fadd.s	$ft3, $ft4, $ft7
	fst.s	$ft3, $sp, 56
	fadd.s	$ft3, $ft8, $ft5
	fst.s	$ft3, $sp, 60
	fld.s	$ft3, $a4, 16
	fadd.s	$ft1, $ft2, $ft1
	fst.s	$ft1, $sp, 64
	fld.s	$ft1, $a4, 0
	fmul.s	$ft2, $ft0, $ft3
	fld.s	$ft4, $a4, 32
	fld.s	$ft5, $a4, 20
	fld.s	$ft6, $a4, 4
	fmadd.s	$ft2, $ft1, $fa6, $ft2
	fmadd.s	$ft2, $ft4, $fa7, $ft2
	fmul.s	$ft7, $ft0, $ft5
	fmadd.s	$ft7, $ft6, $fa6, $ft7
	fld.s	$ft8, $a4, 36
	fld.s	$ft9, $a4, 24
	fld.s	$ft10, $a4, 8
	fld.s	$ft11, $a4, 40
	fmadd.s	$ft7, $ft8, $fa7, $ft7
	fmul.s	$ft0, $ft0, $ft9
	fmadd.s	$fa6, $ft10, $fa6, $ft0
	fmadd.s	$fa6, $ft11, $fa7, $fa6
	fmul.s	$fa7, $fa5, $ft3
	fmadd.s	$fa7, $ft1, $fa2, $fa7
	fmadd.s	$fa7, $ft4, $fa3, $fa7
	fmul.s	$ft0, $fa5, $ft5
	fmadd.s	$ft0, $ft6, $fa2, $ft0
	fmadd.s	$ft0, $ft8, $fa3, $ft0
	fmul.s	$fa5, $fa5, $ft9
	fmadd.s	$fa2, $ft10, $fa2, $fa5
	fmadd.s	$fa2, $ft11, $fa3, $fa2
	fmul.s	$fa3, $fa1, $ft3
	fmadd.s	$fa3, $ft1, $fa0, $fa3
	fmadd.s	$fa3, $ft4, $fa4, $fa3
	fmul.s	$fa5, $fa1, $ft5
	fmadd.s	$fa5, $ft6, $fa0, $fa5
	fmadd.s	$fa5, $ft8, $fa4, $fa5
	fmul.s	$fa1, $fa1, $ft9
	fmadd.s	$fa0, $ft10, $fa0, $fa1
	fmadd.s	$fa0, $ft11, $fa4, $fa0
	fst.s	$ft2, $sp, 8
	fst.s	$ft7, $sp, 12
	fst.s	$fa7, $sp, 24
	fst.s	$ft0, $sp, 28
	fst.s	$fa2, $sp, 32
	st.w	$zero, $sp, 36
	fst.s	$fa3, $sp, 40
	ld.d	$a1, $a0, 0
	fst.s	$fa5, $sp, 44
	fst.s	$fa0, $sp, 48
	st.w	$zero, $sp, 52
	ld.d	$a4, $a1, 16
	fst.s	$fa6, $sp, 16
	st.w	$zero, $sp, 20
	addi.d	$a3, $sp, 88
	addi.d	$a1, $sp, 8
	addi.d	$a2, $sp, 72
	jirl	$ra, $a4, 0
	addi.d	$a1, $sp, 72
	move	$a0, $s1
	move	$a2, $fp
	pcaddu18i	$ra, %call36(_ZNK21btGImpactQuantizedBvh8boxQueryERK6btAABBR20btAlignedObjectArrayIiE)
	jirl	$ra, $ra, 0
.LBB8_2:
	ld.d	$s8, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 184                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 192
	ret
.LBB8_3:
	ld.d	$a1, $a0, 0
	ld.d	$a5, $a1, 16
	addi.d	$a3, $sp, 88
	addi.d	$a2, $sp, 72
	move	$a1, $a4
	jirl	$ra, $a5, 0
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 144
	move	$a0, $s1
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB8_2
# %bb.4:                                # %.lr.ph
	move	$s2, $a0
	addi.d	$s3, $sp, 24
	ori	$s5, $zero, 1
	ori	$s6, $zero, 8
	ori	$s7, $zero, 32
	b	.LBB8_9
.LBB8_5:                                #   in Loop: Header=BB8_9 Depth=1
	ld.w	$a1, $fp, 4
.LBB8_6:                                # %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i
                                        #   in Loop: Header=BB8_9 Depth=1
	st.b	$s5, $fp, 24
	st.d	$s4, $fp, 16
	st.w	$s8, $fp, 8
.LBB8_7:                                # %_ZN20btAlignedObjectArrayIiE9push_backERKi.exit
                                        #   in Loop: Header=BB8_9 Depth=1
	ld.d	$a0, $fp, 16
	slli.d	$a1, $a1, 2
	stx.w	$s2, $a0, $a1
	ld.w	$a0, $fp, 4
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 4
	.p2align	4, , 16
.LBB8_8:                                # %_ZNK6btAABB13has_collisionERKS_.exit.thread
                                        #   in Loop: Header=BB8_9 Depth=1
	beqz	$s2, .LBB8_2
.LBB8_9:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_24 Depth 2
                                        #     Child Loop BB8_27 Depth 2
	ld.d	$a0, $s1, 0
	ld.d	$a5, $a0, 208
	addi.w	$s2, $s2, -1
	addi.d	$a3, $sp, 8
	move	$a0, $s1
	move	$a1, $s2
	move	$a2, $s0
	move	$a4, $s3
	jirl	$ra, $a5, 0
	fld.s	$fa0, $sp, 72
	fld.s	$fa1, $sp, 24
	fcmp.clt.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB8_8
# %bb.10:                               #   in Loop: Header=BB8_9 Depth=1
	fld.s	$fa0, $sp, 88
	fld.s	$fa1, $sp, 8
	fcmp.clt.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB8_8
# %bb.11:                               #   in Loop: Header=BB8_9 Depth=1
	fld.s	$fa0, $sp, 76
	fld.s	$fa1, $sp, 28
	fcmp.clt.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB8_8
# %bb.12:                               #   in Loop: Header=BB8_9 Depth=1
	fld.s	$fa0, $sp, 92
	fld.s	$fa1, $sp, 12
	fcmp.clt.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB8_8
# %bb.13:                               #   in Loop: Header=BB8_9 Depth=1
	fld.s	$fa0, $sp, 80
	fld.s	$fa1, $sp, 32
	fcmp.clt.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB8_8
# %bb.14:                               #   in Loop: Header=BB8_9 Depth=1
	fld.s	$fa0, $sp, 96
	fld.s	$fa1, $sp, 16
	fcmp.clt.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB8_8
# %bb.15:                               # %_ZNK6btAABB13has_collisionERKS_.exit
                                        #   in Loop: Header=BB8_9 Depth=1
	ld.w	$a1, $fp, 4
	ld.w	$a0, $fp, 8
	bne	$a1, $a0, .LBB8_7
# %bb.16:                               #   in Loop: Header=BB8_9 Depth=1
	sltui	$a0, $a1, 1
	slli.w	$a2, $a1, 1
	masknez	$a2, $a2, $a0
	maskeqz	$a0, $s5, $a0
	or	$s8, $a0, $a2
	bge	$a1, $s8, .LBB8_7
# %bb.17:                               #   in Loop: Header=BB8_9 Depth=1
	beqz	$s8, .LBB8_19
# %bb.18:                               #   in Loop: Header=BB8_9 Depth=1
	slli.d	$a0, $s8, 2
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 4
	move	$s4, $a0
	b	.LBB8_20
.LBB8_19:                               #   in Loop: Header=BB8_9 Depth=1
	move	$s4, $zero
.LBB8_20:                               # %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i
                                        #   in Loop: Header=BB8_9 Depth=1
	ld.d	$a0, $fp, 16
	blez	$a1, .LBB8_28
# %bb.21:                               # %.lr.ph.i.i.i
                                        #   in Loop: Header=BB8_9 Depth=1
	move	$a2, $zero
	bltu	$a1, $s6, .LBB8_26
# %bb.22:                               # %.lr.ph.i.i.i
                                        #   in Loop: Header=BB8_9 Depth=1
	sub.d	$a3, $s4, $a0
	bltu	$a3, $s7, .LBB8_26
# %bb.23:                               # %vector.ph
                                        #   in Loop: Header=BB8_9 Depth=1
	bstrpick.d	$a2, $a1, 30, 3
	slli.d	$a2, $a2, 3
	addi.d	$a3, $a0, 16
	addi.d	$a4, $s4, 16
	move	$a5, $a2
	.p2align	4, , 16
.LBB8_24:                               # %vector.body
                                        #   Parent Loop BB8_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a3, -16
	vld	$vr1, $a3, 0
	vst	$vr0, $a4, -16
	vst	$vr1, $a4, 0
	addi.d	$a5, $a5, -8
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB8_24
# %bb.25:                               # %middle.block
                                        #   in Loop: Header=BB8_9 Depth=1
	beq	$a2, $a1, .LBB8_29
.LBB8_26:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB8_9 Depth=1
	sub.d	$a1, $a1, $a2
	alsl.d	$a3, $a2, $a0, 2
	alsl.d	$a2, $a2, $s4, 2
	.p2align	4, , 16
.LBB8_27:                               # %scalar.ph
                                        #   Parent Loop BB8_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a4, $a3, 0
	st.w	$a4, $a2, 0
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 4
	addi.d	$a2, $a2, 4
	bnez	$a1, .LBB8_27
	b	.LBB8_29
.LBB8_28:                               # %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i
                                        #   in Loop: Header=BB8_9 Depth=1
	beqz	$a0, .LBB8_6
.LBB8_29:                               # %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i
                                        #   in Loop: Header=BB8_9 Depth=1
	ld.bu	$a1, $fp, 24
	beqz	$a1, .LBB8_5
# %bb.30:                               #   in Loop: Header=BB8_9 Depth=1
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
	b	.LBB8_5
.Lfunc_end8:
	.size	_ZN27btGImpactCollisionAlgorithm27gimpact_vs_shape_find_pairsERK11btTransformS2_P23btGImpactShapeInterfaceP16btCollisionShapeR20btAlignedObjectArrayIiE, .Lfunc_end8-_ZN27btGImpactCollisionAlgorithm27gimpact_vs_shape_find_pairsERK11btTransformS2_P23btGImpactShapeInterfaceP16btCollisionShapeR20btAlignedObjectArrayIiE
	.cfi_endproc
                                        # -- End function
	.globl	_ZN27btGImpactCollisionAlgorithm21collide_gjk_trianglesEP17btCollisionObjectS1_P22btGImpactMeshShapePartS3_PKii # -- Begin function _ZN27btGImpactCollisionAlgorithm21collide_gjk_trianglesEP17btCollisionObjectS1_P22btGImpactMeshShapePartS3_PKii
	.p2align	5
	.type	_ZN27btGImpactCollisionAlgorithm21collide_gjk_trianglesEP17btCollisionObjectS1_P22btGImpactMeshShapePartS3_PKii,@function
_ZN27btGImpactCollisionAlgorithm21collide_gjk_trianglesEP17btCollisionObjectS1_P22btGImpactMeshShapePartS3_PKii: # @_ZN27btGImpactCollisionAlgorithm21collide_gjk_trianglesEP17btCollisionObjectS1_P22btGImpactMeshShapePartS3_PKii
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception2
# %bb.0:
	addi.d	$sp, $sp, -352
	.cfi_def_cfa_offset 352
	st.d	$ra, $sp, 344                   # 8-byte Folded Spill
	st.d	$fp, $sp, 336                   # 8-byte Folded Spill
	st.d	$s0, $sp, 328                   # 8-byte Folded Spill
	st.d	$s1, $sp, 320                   # 8-byte Folded Spill
	st.d	$s2, $sp, 312                   # 8-byte Folded Spill
	st.d	$s3, $sp, 304                   # 8-byte Folded Spill
	st.d	$s4, $sp, 296                   # 8-byte Folded Spill
	st.d	$s5, $sp, 288                   # 8-byte Folded Spill
	st.d	$s6, $sp, 280                   # 8-byte Folded Spill
	st.d	$s7, $sp, 272                   # 8-byte Folded Spill
	st.d	$s8, $sp, 264                   # 8-byte Folded Spill
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
	move	$s1, $a6
	move	$s2, $a5
	move	$fp, $a4
	move	$s0, $a3
	move	$s3, $a2
	move	$s4, $a1
	move	$s5, $a0
	addi.d	$a0, $sp, 152
	pcaddu18i	$ra, %call36(_ZN23btPolyhedralConvexShapeC2Ev)
	jirl	$ra, $ra, 0
	ori	$s6, $zero, 1
	st.w	$s6, $sp, 160
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 216
	vst	$vr0, $sp, 232
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	vst	$vr0, $sp, 248
	pcalau12i	$a0, %pc_hi20(_ZTV17btTriangleShapeEx+16)
	addi.d	$s7, $a0, %pc_lo12(_ZTV17btTriangleShapeEx+16)
	st.d	$s7, $sp, 152
.Ltmp23:                                # EH_LABEL
	addi.d	$a0, $sp, 40
	pcaddu18i	$ra, %call36(_ZN23btPolyhedralConvexShapeC2Ev)
	jirl	$ra, $ra, 0
.Ltmp24:                                # EH_LABEL
# %bb.1:
	ld.d	$a0, $s0, 0
	st.w	$s6, $sp, 48
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 104
	ld.d	$a1, $a0, 192
	vst	$vr0, $sp, 120
	vst	$vr0, $sp, 136
	st.d	$s7, $sp, 40
.Ltmp25:                                # EH_LABEL
	move	$a0, $s0
	jirl	$ra, $a1, 0
.Ltmp26:                                # EH_LABEL
# %bb.2:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 192
.Ltmp27:                                # EH_LABEL
	move	$a0, $fp
	jirl	$ra, $a1, 0
.Ltmp28:                                # EH_LABEL
# %bb.3:                                # %.preheader
	beqz	$s1, .LBB9_20
# %bb.4:                                # %.lr.ph
	addi.d	$s7, $sp, 40
	b	.LBB9_11
.LBB9_5:                                # %.noexc23
                                        #   in Loop: Header=BB9_11 Depth=1
	move	$a3, $a0
	st.d	$a0, $s5, 24
.LBB9_6:                                # %_ZN27btGImpactCollisionAlgorithm12newAlgorithmEP17btCollisionObjectS1_.exit.i.i
                                        #   in Loop: Header=BB9_11 Depth=1
	ld.d	$a0, $s5, 8
	ld.d	$a1, $s5, 32
	ld.d	$a2, $a0, 0
	st.d	$a3, $a1, 8
	ld.d	$a4, $a2, 16
.Ltmp42:                                # EH_LABEL
	move	$a1, $s4
	move	$a2, $s3
	jirl	$ra, $a4, 0
.Ltmp43:                                # EH_LABEL
# %bb.7:                                # %.noexc24
                                        #   in Loop: Header=BB9_11 Depth=1
	st.d	$a0, $s5, 16
.LBB9_8:                                # %_ZN27btGImpactCollisionAlgorithm20checkConvexAlgorithmEP17btCollisionObjectS1_.exit.i
                                        #   in Loop: Header=BB9_11 Depth=1
	ld.d	$a1, $a0, 0
	ld.d	$a3, $s5, 40
	ld.d	$a4, $s5, 32
	ld.d	$a5, $a1, 16
.Ltmp44:                                # EH_LABEL
	move	$a1, $s4
	move	$a2, $s3
	jirl	$ra, $a5, 0
.Ltmp45:                                # EH_LABEL
# %bb.9:                                # %_ZN27btGImpactCollisionAlgorithm26convex_vs_convex_collisionEP17btCollisionObjectS1_P16btCollisionShapeS3_.exit
                                        #   in Loop: Header=BB9_11 Depth=1
	st.d	$s8, $s4, 200
	st.d	$s6, $s3, 200
.LBB9_10:                               #   in Loop: Header=BB9_11 Depth=1
	addi.w	$s1, $s1, -1
	addi.d	$s2, $s2, 8
	beqz	$s1, .LBB9_20
.LBB9_11:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $s2, 0
	st.w	$a1, $s5, 48
	ld.w	$a0, $s2, 4
	ld.d	$a2, $s0, 0
	st.w	$a0, $s5, 56
	ld.d	$a3, $a2, 176
.Ltmp30:                                # EH_LABEL
	addi.d	$a2, $sp, 152
	move	$a0, $s0
	jirl	$ra, $a3, 0
.Ltmp31:                                # EH_LABEL
# %bb.12:                               #   in Loop: Header=BB9_11 Depth=1
	ld.d	$a0, $fp, 0
	ld.w	$a1, $s5, 56
	ld.d	$a3, $a0, 176
.Ltmp32:                                # EH_LABEL
	addi.d	$a2, $sp, 40
	move	$a0, $fp
	jirl	$ra, $a3, 0
.Ltmp33:                                # EH_LABEL
# %bb.13:                               #   in Loop: Header=BB9_11 Depth=1
.Ltmp34:                                # EH_LABEL
	addi.d	$a0, $sp, 152
	addi.d	$a1, $sp, 40
	pcaddu18i	$ra, %call36(_ZN17btTriangleShapeEx25overlap_test_conservativeERKS_)
	jirl	$ra, $ra, 0
.Ltmp35:                                # EH_LABEL
# %bb.14:                               #   in Loop: Header=BB9_11 Depth=1
	beqz	$a0, .LBB9_10
# %bb.15:                               #   in Loop: Header=BB9_11 Depth=1
	ld.d	$a0, $s5, 32
	ld.d	$s8, $s4, 200
	ld.d	$s6, $s3, 200
	addi.d	$a1, $sp, 152
	st.d	$a1, $s4, 200
	ld.d	$a3, $a0, 0
	st.d	$s7, $s3, 200
	ld.w	$a1, $s5, 52
	ld.w	$a2, $s5, 48
	ld.d	$a3, $a3, 16
.Ltmp36:                                # EH_LABEL
	jirl	$ra, $a3, 0
.Ltmp37:                                # EH_LABEL
# %bb.16:                               # %.noexc
                                        #   in Loop: Header=BB9_11 Depth=1
	ld.d	$a0, $s5, 32
	ld.d	$a3, $a0, 0
	ld.w	$a1, $s5, 60
	ld.w	$a2, $s5, 56
	ld.d	$a3, $a3, 24
.Ltmp38:                                # EH_LABEL
	jirl	$ra, $a3, 0
.Ltmp39:                                # EH_LABEL
# %bb.17:                               # %.noexc22
                                        #   in Loop: Header=BB9_11 Depth=1
	ld.d	$a0, $s5, 16
	bnez	$a0, .LBB9_8
# %bb.18:                               #   in Loop: Header=BB9_11 Depth=1
	ld.d	$a3, $s5, 24
	bnez	$a3, .LBB9_6
# %bb.19:                               #   in Loop: Header=BB9_11 Depth=1
	ld.d	$a0, $s5, 8
	ld.d	$a1, $a0, 0
	ld.d	$a3, $a1, 24
.Ltmp40:                                # EH_LABEL
	move	$a1, $s4
	move	$a2, $s3
	jirl	$ra, $a3, 0
.Ltmp41:                                # EH_LABEL
	b	.LBB9_5
.LBB9_20:                               # %._crit_edge
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 200
.Ltmp47:                                # EH_LABEL
	move	$a0, $s0
	jirl	$ra, $a1, 0
.Ltmp48:                                # EH_LABEL
# %bb.21:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 200
.Ltmp49:                                # EH_LABEL
	move	$a0, $fp
	jirl	$ra, $a1, 0
.Ltmp50:                                # EH_LABEL
# %bb.22:
.Ltmp54:                                # EH_LABEL
	addi.d	$a0, $sp, 40
	pcaddu18i	$ra, %call36(_ZN13btConvexShapeD2Ev)
	jirl	$ra, $ra, 0
.Ltmp55:                                # EH_LABEL
# %bb.23:
	addi.d	$a0, $sp, 152
	pcaddu18i	$ra, %call36(_ZN13btConvexShapeD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$s8, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 328                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 336                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 344                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 352
	ret
.LBB9_24:                               # %.loopexit.split-lp
.Ltmp51:                                # EH_LABEL
	b	.LBB9_28
.LBB9_25:
.Ltmp56:                                # EH_LABEL
	move	$fp, $a0
	b	.LBB9_29
.LBB9_26:
.Ltmp29:                                # EH_LABEL
	b	.LBB9_28
.LBB9_27:                               # %.loopexit
.Ltmp46:                                # EH_LABEL
.LBB9_28:
	move	$fp, $a0
.Ltmp52:                                # EH_LABEL
	addi.d	$a0, $sp, 40
	pcaddu18i	$ra, %call36(_ZN13btConvexShapeD2Ev)
	jirl	$ra, $ra, 0
.Ltmp53:                                # EH_LABEL
.LBB9_29:
.Ltmp57:                                # EH_LABEL
	addi.d	$a0, $sp, 152
	pcaddu18i	$ra, %call36(_ZN13btConvexShapeD2Ev)
	jirl	$ra, $ra, 0
.Ltmp58:                                # EH_LABEL
# %bb.30:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB9_31:
.Ltmp59:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end9:
	.size	_ZN27btGImpactCollisionAlgorithm21collide_gjk_trianglesEP17btCollisionObjectS1_P22btGImpactMeshShapePartS3_PKii, .Lfunc_end9-_ZN27btGImpactCollisionAlgorithm21collide_gjk_trianglesEP17btCollisionObjectS1_P22btGImpactMeshShapePartS3_PKii
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
	.uleb128 .Ltmp23-.Lfunc_begin2          #   Call between .Lfunc_begin2 and .Ltmp23
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp23-.Lfunc_begin2          # >> Call Site 2 <<
	.uleb128 .Ltmp24-.Ltmp23                #   Call between .Ltmp23 and .Ltmp24
	.uleb128 .Ltmp56-.Lfunc_begin2          #     jumps to .Ltmp56
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp25-.Lfunc_begin2          # >> Call Site 3 <<
	.uleb128 .Ltmp28-.Ltmp25                #   Call between .Ltmp25 and .Ltmp28
	.uleb128 .Ltmp29-.Lfunc_begin2          #     jumps to .Ltmp29
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp42-.Lfunc_begin2          # >> Call Site 4 <<
	.uleb128 .Ltmp41-.Ltmp42                #   Call between .Ltmp42 and .Ltmp41
	.uleb128 .Ltmp46-.Lfunc_begin2          #     jumps to .Ltmp46
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp47-.Lfunc_begin2          # >> Call Site 5 <<
	.uleb128 .Ltmp50-.Ltmp47                #   Call between .Ltmp47 and .Ltmp50
	.uleb128 .Ltmp51-.Lfunc_begin2          #     jumps to .Ltmp51
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp54-.Lfunc_begin2          # >> Call Site 6 <<
	.uleb128 .Ltmp55-.Ltmp54                #   Call between .Ltmp54 and .Ltmp55
	.uleb128 .Ltmp56-.Lfunc_begin2          #     jumps to .Ltmp56
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp55-.Lfunc_begin2          # >> Call Site 7 <<
	.uleb128 .Ltmp52-.Ltmp55                #   Call between .Ltmp55 and .Ltmp52
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp52-.Lfunc_begin2          # >> Call Site 8 <<
	.uleb128 .Ltmp58-.Ltmp52                #   Call between .Ltmp52 and .Ltmp58
	.uleb128 .Ltmp59-.Lfunc_begin2          #     jumps to .Ltmp59
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp58-.Lfunc_begin2          # >> Call Site 9 <<
	.uleb128 .Lfunc_end9-.Ltmp58            #   Call between .Ltmp58 and .Lfunc_end9
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
	.globl	_ZN27btGImpactCollisionAlgorithm21collide_sat_trianglesEP17btCollisionObjectS1_P22btGImpactMeshShapePartS3_PKii # -- Begin function _ZN27btGImpactCollisionAlgorithm21collide_sat_trianglesEP17btCollisionObjectS1_P22btGImpactMeshShapePartS3_PKii
	.p2align	5
	.type	_ZN27btGImpactCollisionAlgorithm21collide_sat_trianglesEP17btCollisionObjectS1_P22btGImpactMeshShapePartS3_PKii,@function
_ZN27btGImpactCollisionAlgorithm21collide_sat_trianglesEP17btCollisionObjectS1_P22btGImpactMeshShapePartS3_PKii: # @_ZN27btGImpactCollisionAlgorithm21collide_sat_trianglesEP17btCollisionObjectS1_P22btGImpactMeshShapePartS3_PKii
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -656
	.cfi_def_cfa_offset 656
	st.d	$ra, $sp, 648                   # 8-byte Folded Spill
	st.d	$fp, $sp, 640                   # 8-byte Folded Spill
	st.d	$s0, $sp, 632                   # 8-byte Folded Spill
	st.d	$s1, $sp, 624                   # 8-byte Folded Spill
	st.d	$s2, $sp, 616                   # 8-byte Folded Spill
	st.d	$s3, $sp, 608                   # 8-byte Folded Spill
	st.d	$s4, $sp, 600                   # 8-byte Folded Spill
	st.d	$s5, $sp, 592                   # 8-byte Folded Spill
	st.d	$s6, $sp, 584                   # 8-byte Folded Spill
	st.d	$s7, $sp, 576                   # 8-byte Folded Spill
	st.d	$s8, $sp, 568                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 560                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 552                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 544                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 536                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 528                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 520                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 512                  # 8-byte Folded Spill
	fst.d	$fs7, $sp, 504                  # 8-byte Folded Spill
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
	move	$s1, $a6
	move	$s2, $a5
	move	$fp, $a4
	move	$s0, $a3
	move	$s3, $a2
	move	$s4, $a1
	move	$s5, $a0
	fld.s	$fa0, $a1, 8
	fst.s	$fa0, $sp, 76                   # 4-byte Folded Spill
	fld.s	$fa0, $a1, 12
	fst.s	$fa0, $sp, 72                   # 4-byte Folded Spill
	fld.s	$fa0, $a1, 16
	fst.s	$fa0, $sp, 68                   # 4-byte Folded Spill
	fld.s	$fa0, $a1, 24
	fst.s	$fa0, $sp, 64                   # 4-byte Folded Spill
	fld.s	$fa0, $a1, 28
	fst.s	$fa0, $sp, 60                   # 4-byte Folded Spill
	fld.s	$fa0, $a1, 32
	fst.s	$fa0, $sp, 56                   # 4-byte Folded Spill
	fld.s	$fa0, $a1, 40
	fst.s	$fa0, $sp, 52                   # 4-byte Folded Spill
	fld.s	$fa0, $a1, 44
	fst.s	$fa0, $sp, 48                   # 4-byte Folded Spill
	fld.s	$fa0, $a1, 48
	fst.s	$fa0, $sp, 44                   # 4-byte Folded Spill
	fld.s	$fa0, $a1, 56
	fst.s	$fa0, $sp, 40                   # 4-byte Folded Spill
	fld.s	$fa0, $a1, 60
	fst.s	$fa0, $sp, 36                   # 4-byte Folded Spill
	fld.s	$fa0, $a1, 64
	fst.s	$fa0, $sp, 32                   # 4-byte Folded Spill
	fld.s	$fa0, $a2, 8
	fst.s	$fa0, $sp, 28                   # 4-byte Folded Spill
	fld.s	$fa0, $a2, 12
	fst.s	$fa0, $sp, 24                   # 4-byte Folded Spill
	fld.s	$fa0, $a2, 16
	fst.s	$fa0, $sp, 20                   # 4-byte Folded Spill
	fld.s	$fa0, $a2, 24
	fst.s	$fa0, $sp, 16                   # 4-byte Folded Spill
	fld.s	$fa0, $a2, 28
	fst.s	$fa0, $sp, 12                   # 4-byte Folded Spill
	fld.s	$fs1, $a2, 32
	fld.s	$fs2, $a2, 40
	fld.s	$fs3, $a2, 44
	fld.s	$fs4, $a2, 48
	fld.s	$fs5, $a2, 56
	ld.d	$a0, $a3, 0
	fld.s	$fs6, $a2, 60
	fld.s	$fs7, $a2, 64
	lu12i.w	$a1, 246333
	ld.d	$a2, $a0, 192
	ori	$a0, $a1, 1802
	st.w	$a0, $sp, 496
	st.w	$a0, $sp, 424
	move	$a0, $a3
	jirl	$ra, $a2, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 192
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$s1, .LBB10_10
# %bb.1:                                # %.lr.ph107
	addi.d	$s6, $sp, 88
	b	.LBB10_3
	.p2align	4, , 16
.LBB10_2:                               # %.loopexit
                                        #   in Loop: Header=BB10_3 Depth=1
	addi.w	$s1, $s1, -1
	addi.d	$s2, $s2, 8
	beqz	$s1, .LBB10_10
.LBB10_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_8 Depth 2
	ld.w	$s7, $s2, 0
	st.w	$s7, $s5, 48
	ld.w	$a0, $s2, 4
	ld.d	$a1, $s0, 0
	st.w	$a0, $s5, 56
	ld.d	$a1, $a1, 136
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a1, $a0, 0
	ld.d	$a3, $a1, 40
	addi.d	$a2, $sp, 432
	move	$a1, $s7
	jirl	$ra, $a3, 0
	ld.d	$a0, $fp, 0
	ld.w	$s7, $s5, 56
	ld.d	$a1, $a0, 136
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.d	$a1, $a0, 0
	ld.d	$a3, $a1, 40
	addi.d	$a2, $sp, 360
	move	$a1, $s7
	jirl	$ra, $a3, 0
	fld.s	$fa0, $sp, 436
	fld.s	$fa1, $sp, 432
	fld.s	$fa2, $sp, 440
	fld.s	$fa6, $sp, 72                   # 4-byte Folded Reload
	fmul.s	$fa3, $fa6, $fa0
	fld.s	$fa5, $sp, 76                   # 4-byte Folded Reload
	fmadd.s	$fa3, $fa5, $fa1, $fa3
	fld.s	$fa7, $sp, 68                   # 4-byte Folded Reload
	fmadd.s	$fa3, $fa7, $fa2, $fa3
	fld.s	$ft6, $sp, 40                   # 4-byte Folded Reload
	fadd.s	$fa3, $ft6, $fa3
	fld.s	$ft1, $sp, 60                   # 4-byte Folded Reload
	fmul.s	$fa4, $ft1, $fa0
	fld.s	$ft0, $sp, 64                   # 4-byte Folded Reload
	fmadd.s	$fa4, $ft0, $fa1, $fa4
	fld.s	$ft2, $sp, 56                   # 4-byte Folded Reload
	fmadd.s	$fa4, $ft2, $fa2, $fa4
	fld.s	$ft7, $sp, 36                   # 4-byte Folded Reload
	fadd.s	$fa4, $ft7, $fa4
	fld.s	$ft4, $sp, 48                   # 4-byte Folded Reload
	fmul.s	$fa0, $ft4, $fa0
	fld.s	$ft3, $sp, 52                   # 4-byte Folded Reload
	fmadd.s	$fa0, $ft3, $fa1, $fa0
	fld.s	$ft5, $sp, 44                   # 4-byte Folded Reload
	fmadd.s	$fa0, $ft5, $fa2, $fa0
	fld.s	$ft8, $sp, 32                   # 4-byte Folded Reload
	fadd.s	$fa0, $ft8, $fa0
	movfr2gr.s	$a0, $fa3
	movfr2gr.s	$a1, $fa4
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa0
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $sp, 432
	fld.s	$fa0, $sp, 452
	fld.s	$fa1, $sp, 448
	fld.s	$fa2, $sp, 456
	st.d	$a1, $sp, 440
	fmul.s	$fa3, $fa6, $fa0
	fmadd.s	$fa3, $fa5, $fa1, $fa3
	fmadd.s	$fa3, $fa7, $fa2, $fa3
	fadd.s	$fa3, $ft6, $fa3
	fmul.s	$fa4, $ft1, $fa0
	fmadd.s	$fa4, $ft0, $fa1, $fa4
	fmadd.s	$fa4, $ft2, $fa2, $fa4
	fadd.s	$fa4, $ft7, $fa4
	fmul.s	$fa0, $ft4, $fa0
	fmadd.s	$fa0, $ft3, $fa1, $fa0
	fmadd.s	$fa0, $ft5, $fa2, $fa0
	fadd.s	$fa0, $ft8, $fa0
	movfr2gr.s	$a0, $fa3
	movfr2gr.s	$a1, $fa4
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa0
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $sp, 448
	fld.s	$fa0, $sp, 468
	fld.s	$fa3, $sp, 464
	fld.s	$fa4, $sp, 472
	st.d	$a1, $sp, 456
	fmul.s	$fa1, $fa6, $fa0
	fmadd.s	$fa1, $fa5, $fa3, $fa1
	fmadd.s	$fa1, $fa7, $fa4, $fa1
	fadd.s	$fa1, $ft6, $fa1
	fmul.s	$fa2, $ft1, $fa0
	fmadd.s	$fa2, $ft0, $fa3, $fa2
	fmadd.s	$fa2, $ft2, $fa4, $fa2
	fadd.s	$fa2, $ft7, $fa2
	fmul.s	$fa0, $ft4, $fa0
	fmadd.s	$fa0, $ft3, $fa3, $fa0
	fmadd.s	$fa0, $ft5, $fa4, $fa0
	fld.s	$fa4, $sp, 364
	fld.s	$fa5, $sp, 360
	fld.s	$fa6, $sp, 368
	fadd.s	$fa3, $ft8, $fa0
	fld.s	$ft5, $sp, 24                   # 4-byte Folded Reload
	fmul.s	$fa0, $ft5, $fa4
	fld.s	$ft4, $sp, 28                   # 4-byte Folded Reload
	fmadd.s	$fa0, $ft4, $fa5, $fa0
	fld.s	$ft6, $sp, 20                   # 4-byte Folded Reload
	fmadd.s	$fa0, $ft6, $fa6, $fa0
	fadd.s	$fa0, $fs5, $fa0
	fld.s	$ft8, $sp, 12                   # 4-byte Folded Reload
	fmul.s	$fa7, $ft8, $fa4
	fld.s	$ft7, $sp, 16                   # 4-byte Folded Reload
	fmadd.s	$fa7, $ft7, $fa5, $fa7
	fmadd.s	$fa7, $fs1, $fa6, $fa7
	fadd.s	$fa7, $fs6, $fa7
	fmul.s	$fa4, $fs3, $fa4
	fmadd.s	$fa4, $fs2, $fa5, $fa4
	fmadd.s	$fa4, $fs4, $fa6, $fa4
	fadd.s	$fa4, $fs7, $fa4
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa7
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa4
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $sp, 360
	fld.s	$fa6, $sp, 380
	fld.s	$fa7, $sp, 376
	fld.s	$ft0, $sp, 384
	st.d	$a1, $sp, 368
	fmul.s	$fa4, $ft5, $fa6
	fmadd.s	$fa4, $ft4, $fa7, $fa4
	fmadd.s	$fa4, $ft6, $ft0, $fa4
	fadd.s	$fa4, $fs5, $fa4
	fmul.s	$fa5, $ft8, $fa6
	fmadd.s	$fa5, $ft7, $fa7, $fa5
	fmadd.s	$fa5, $fs1, $ft0, $fa5
	fadd.s	$fa5, $fs6, $fa5
	fmul.s	$fa6, $fs3, $fa6
	fmadd.s	$fa6, $fs2, $fa7, $fa6
	fmadd.s	$fa6, $fs4, $ft0, $fa6
	fld.s	$ft1, $sp, 396
	fld.s	$ft2, $sp, 392
	fld.s	$ft3, $sp, 400
	fadd.s	$fa6, $fs7, $fa6
	fmul.s	$fa7, $ft5, $ft1
	fmadd.s	$fa7, $ft4, $ft2, $fa7
	fmadd.s	$fa7, $ft6, $ft3, $fa7
	fadd.s	$fa7, $fs5, $fa7
	fmul.s	$ft0, $ft8, $ft1
	fmadd.s	$ft0, $ft7, $ft2, $ft0
	fmadd.s	$ft0, $fs1, $ft3, $ft0
	fadd.s	$ft0, $fs6, $ft0
	fmul.s	$ft1, $fs3, $ft1
	fmadd.s	$ft1, $fs2, $ft2, $ft1
	fmadd.s	$ft4, $fs4, $ft3, $ft1
	fld.s	$ft5, $sp, 448
	fld.s	$ft1, $sp, 432
	fld.s	$ft6, $sp, 452
	fld.s	$ft2, $sp, 436
	fld.s	$ft7, $sp, 456
	fld.s	$ft3, $sp, 440
	fadd.s	$ft4, $fs7, $ft4
	fsub.s	$ft5, $ft5, $ft1
	fsub.s	$ft6, $ft6, $ft2
	fsub.s	$ft7, $ft7, $ft3
	fsub.s	$ft8, $fa1, $ft1
	fsub.s	$ft9, $fa2, $ft2
	fsub.s	$ft10, $fa3, $ft3
	fneg.s	$ft11, $ft9
	fmul.s	$ft11, $ft7, $ft11
	fmadd.s	$ft11, $ft6, $ft10, $ft11
	fneg.s	$ft10, $ft10
	fmul.s	$ft10, $ft5, $ft10
	fmadd.s	$ft7, $ft7, $ft8, $ft10
	fneg.s	$ft8, $ft8
	fmul.s	$ft6, $ft6, $ft8
	fld.s	$ft8, $sp, 364
	fld.s	$ft10, $sp, 368
	fmadd.s	$ft5, $ft5, $ft9, $ft6
	fsub.s	$ft6, $fa4, $fa0
	fsub.s	$ft9, $fa5, $ft8
	fsub.s	$ft12, $fa6, $ft10
	fsub.s	$ft13, $fa7, $fa0
	fsub.s	$ft14, $ft0, $ft8
	fsub.s	$ft15, $ft4, $ft10
	fneg.s	$fs0, $ft14
	fmul.s	$fs0, $ft12, $fs0
	fmadd.s	$fs0, $ft9, $ft15, $fs0
	fneg.s	$ft15, $ft15
	fmul.s	$ft15, $ft6, $ft15
	fmadd.s	$ft12, $ft12, $ft13, $ft15
	fneg.s	$ft13, $ft13
	fmul.s	$ft9, $ft9, $ft13
	fmadd.s	$ft6, $ft6, $ft14, $ft9
	movfr2gr.s	$a0, $fa1
	movfr2gr.s	$a1, $fa2
	movfr2gr.s	$a2, $fa3
	movfr2gr.s	$a3, $fa4
	movfr2gr.s	$a4, $fa5
	movfr2gr.s	$a5, $fa6
	movfr2gr.s	$a6, $fa7
	movfr2gr.s	$a7, $ft0
	movfr2gr.s	$t0, $ft4
	fmul.s	$fa1, $ft7, $ft7
	fmadd.s	$fa1, $ft11, $ft11, $fa1
	fmadd.s	$fa1, $ft5, $ft5, $fa1
	frsqrt.s	$fa1, $fa1
	fmul.s	$fa2, $ft11, $fa1
	fmul.s	$fa3, $ft7, $fa1
	fmul.s	$fa1, $ft5, $fa1
	fmul.s	$fa4, $ft2, $fa3
	fmadd.s	$fa4, $ft1, $fa2, $fa4
	fmadd.s	$fa4, $ft3, $fa1, $fa4
	fst.s	$fa2, $sp, 480
	fst.s	$fa3, $sp, 484
	fst.s	$fa1, $sp, 488
	fst.s	$fa4, $sp, 492
	fmul.s	$fa1, $ft12, $ft12
	fmadd.s	$fa1, $fs0, $fs0, $fa1
	fmadd.s	$fa1, $ft6, $ft6, $fa1
	frsqrt.s	$fa1, $fa1
	fmul.s	$fa2, $fs0, $fa1
	fmul.s	$fa3, $ft12, $fa1
	fmul.s	$fa1, $ft6, $fa1
	fmul.s	$fa4, $ft8, $fa3
	fmadd.s	$fa0, $fa0, $fa2, $fa4
	fmadd.s	$fa0, $ft10, $fa1, $fa0
	fst.s	$fa2, $sp, 408
	fst.s	$fa3, $sp, 412
	fst.s	$fa1, $sp, 416
	fst.s	$fa0, $sp, 420
	bstrins.d	$a0, $a1, 63, 32
	st.d	$a0, $sp, 464
	bstrpick.d	$a0, $a2, 31, 0
	st.d	$a0, $sp, 472
	bstrins.d	$a3, $a4, 63, 32
	st.d	$a3, $sp, 376
	bstrpick.d	$a0, $a5, 31, 0
	st.d	$a0, $sp, 384
	bstrins.d	$a6, $a7, 63, 32
	bstrpick.d	$a0, $t0, 31, 0
	st.d	$a6, $sp, 392
	st.d	$a0, $sp, 400
	addi.d	$a0, $sp, 432
	addi.d	$a1, $sp, 360
	pcaddu18i	$ra, %call36(_ZN19btPrimitiveTriangle25overlap_test_conservativeERKS_)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB10_2
# %bb.4:                                #   in Loop: Header=BB10_3 Depth=1
	addi.d	$a0, $sp, 432
	addi.d	$a1, $sp, 360
	addi.d	$a2, $sp, 80
	pcaddu18i	$ra, %call36(_ZN19btPrimitiveTriangle35find_triangle_collision_clip_methodERS_R20GIM_TRIANGLE_CONTACT)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB10_2
# %bb.5:                                #   in Loop: Header=BB10_3 Depth=1
	ld.w	$s8, $sp, 84
	beqz	$s8, .LBB10_2
# %bb.6:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB10_3 Depth=1
	alsl.d	$s7, $s8, $s6, 4
	b	.LBB10_8
	.p2align	4, , 16
.LBB10_7:                               # %_ZN27btGImpactCollisionAlgorithm15addContactPointEP17btCollisionObjectS1_RK9btVector3S4_f.exit
                                        #   in Loop: Header=BB10_8 Depth=2
	ld.d	$a1, $s5, 32
	ld.d	$a2, $a1, 0
	st.d	$a0, $a1, 8
	ld.d	$a3, $a2, 32
	addi.d	$s8, $s8, -1
	fneg.s	$fa0, $fs0
	move	$a0, $a1
	move	$a1, $s6
	move	$a2, $s7
	jirl	$ra, $a3, 0
	addi.d	$s7, $s7, -16
	beqz	$s8, .LBB10_2
.LBB10_8:                               # %.lr.ph
                                        #   Parent Loop BB10_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s5, 32
	ld.d	$a3, $a0, 0
	fld.s	$fs0, $sp, 80
	ld.w	$a1, $s5, 52
	ld.w	$a2, $s5, 48
	ld.d	$a3, $a3, 16
	jirl	$ra, $a3, 0
	ld.d	$a0, $s5, 32
	ld.d	$a3, $a0, 0
	ld.w	$a1, $s5, 60
	ld.w	$a2, $s5, 56
	ld.d	$a3, $a3, 24
	jirl	$ra, $a3, 0
	ld.d	$a0, $s5, 24
	bnez	$a0, .LBB10_7
# %bb.9:                                #   in Loop: Header=BB10_8 Depth=2
	ld.d	$a0, $s5, 8
	ld.d	$a1, $a0, 0
	ld.d	$a3, $a1, 24
	move	$a1, $s4
	move	$a2, $s3
	jirl	$ra, $a3, 0
	st.d	$a0, $s5, 24
	b	.LBB10_7
.LBB10_10:                              # %._crit_edge
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 200
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 200
	move	$a0, $fp
	jirl	$ra, $a1, 0
	fld.d	$fs7, $sp, 504                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 512                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 520                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 528                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 536                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 544                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 552                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 560                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 568                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 576                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 584                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 592                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 600                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 608                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 616                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 624                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 632                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 640                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 648                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 656
	ret
.Lfunc_end10:
	.size	_ZN27btGImpactCollisionAlgorithm21collide_sat_trianglesEP17btCollisionObjectS1_P22btGImpactMeshShapePartS3_PKii, .Lfunc_end10-_ZN27btGImpactCollisionAlgorithm21collide_sat_trianglesEP17btCollisionObjectS1_P22btGImpactMeshShapePartS3_PKii
	.cfi_endproc
                                        # -- End function
	.globl	_ZN27btGImpactCollisionAlgorithm18gimpact_vs_gimpactEP17btCollisionObjectS1_P23btGImpactShapeInterfaceS3_ # -- Begin function _ZN27btGImpactCollisionAlgorithm18gimpact_vs_gimpactEP17btCollisionObjectS1_P23btGImpactShapeInterfaceS3_
	.p2align	5
	.type	_ZN27btGImpactCollisionAlgorithm18gimpact_vs_gimpactEP17btCollisionObjectS1_P23btGImpactShapeInterfaceS3_,@function
_ZN27btGImpactCollisionAlgorithm18gimpact_vs_gimpactEP17btCollisionObjectS1_P23btGImpactShapeInterfaceS3_: # @_ZN27btGImpactCollisionAlgorithm18gimpact_vs_gimpactEP17btCollisionObjectS1_P23btGImpactShapeInterfaceS3_
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception3
# %bb.0:
	addi.d	$sp, $sp, -1104
	.cfi_def_cfa_offset 1104
	st.d	$ra, $sp, 1096                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1088                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1080                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1072                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1064                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1056                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1048                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1040                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1032                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1024                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1016                  # 8-byte Folded Spill
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
	move	$s0, $a3
	ld.d	$a3, $a3, 0
	ld.d	$a3, $a3, 128
	move	$s4, $a4
	move	$s1, $a2
	move	$s2, $a1
	move	$s3, $a0
	move	$a0, $s0
	jirl	$ra, $a3, 0
	ori	$fp, $zero, 2
	bne	$a0, $fp, .LBB11_3
# %bb.1:
	ld.w	$a1, $s0, 188
	addi.w	$a0, $a1, -1
	st.w	$a0, $s3, 52
	beqz	$a1, .LBB11_52
	.p2align	4, , 16
.LBB11_2:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 200
	slli.d	$a0, $a0, 3
	ldx.d	$a3, $a1, $a0
	move	$a0, $s3
	move	$a1, $s2
	move	$a2, $s1
	move	$a4, $s4
	pcaddu18i	$ra, %call36(_ZN27btGImpactCollisionAlgorithm18gimpact_vs_gimpactEP17btCollisionObjectS1_P23btGImpactShapeInterfaceS3_)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, 52
	addi.w	$a0, $a1, -1
	st.w	$a0, $s3, 52
	bnez	$a1, .LBB11_2
	b	.LBB11_52
.LBB11_3:
	ld.d	$a0, $s4, 0
	ld.d	$a1, $a0, 128
	move	$a0, $s4
	jirl	$ra, $a1, 0
	bne	$a0, $fp, .LBB11_6
# %bb.4:
	ld.w	$a1, $s4, 188
	addi.w	$a0, $a1, -1
	st.w	$a0, $s3, 60
	beqz	$a1, .LBB11_52
	.p2align	4, , 16
.LBB11_5:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s4, 200
	slli.d	$a0, $a0, 3
	ldx.d	$a4, $a1, $a0
	move	$a0, $s3
	move	$a1, $s2
	move	$a2, $s1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZN27btGImpactCollisionAlgorithm18gimpact_vs_gimpactEP17btCollisionObjectS1_P23btGImpactShapeInterfaceS3_)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, 60
	addi.w	$a0, $a1, -1
	st.w	$a0, $s3, 60
	bnez	$a1, .LBB11_5
	b	.LBB11_52
.LBB11_6:
	vld	$vr0, $s2, 8
	vld	$vr1, $s2, 24
	vld	$vr2, $s2, 40
	vld	$vr3, $s2, 56
	vst	$vr0, $sp, 952
	vst	$vr1, $sp, 968
	vst	$vr2, $sp, 984
	vst	$vr3, $sp, 1000
	vld	$vr0, $s1, 8
	vld	$vr1, $s1, 24
	vld	$vr2, $s1, 40
	vld	$vr3, $s1, 56
	vst	$vr0, $sp, 888
	vst	$vr1, $sp, 904
	vst	$vr2, $sp, 920
	vst	$vr3, $sp, 936
	addi.d	$a0, $sp, 856
	pcaddu18i	$ra, %call36(_ZN9btPairSetC2Ev)
	jirl	$ra, $ra, 0
.Ltmp60:                                # EH_LABEL
	addi.d	$a1, $sp, 952
	addi.d	$a2, $sp, 888
	addi.d	$a5, $sp, 856
	move	$a3, $s0
	move	$a4, $s4
	pcaddu18i	$ra, %call36(_ZN27btGImpactCollisionAlgorithm29gimpact_vs_gimpact_find_pairsERK11btTransformS2_P23btGImpactShapeInterfaceS4_R9btPairSet)
	jirl	$ra, $ra, 0
.Ltmp61:                                # EH_LABEL
# %bb.7:
	ld.w	$a0, $sp, 860
	beqz	$a0, .LBB11_49
# %bb.8:
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 128
.Ltmp62:                                # EH_LABEL
	move	$a0, $s0
	jirl	$ra, $a1, 0
.Ltmp63:                                # EH_LABEL
# %bb.9:
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB11_13
# %bb.10:
	ld.d	$a0, $s4, 0
	ld.d	$a1, $a0, 128
.Ltmp64:                                # EH_LABEL
	move	$a0, $s4
	jirl	$ra, $a1, 0
.Ltmp65:                                # EH_LABEL
# %bb.11:
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB11_13
# %bb.12:
	ld.d	$a5, $sp, 872
	ld.w	$a6, $sp, 860
.Ltmp130:                               # EH_LABEL
	move	$a0, $s3
	move	$a1, $s2
	move	$a2, $s1
	move	$a3, $s0
	move	$a4, $s4
	pcaddu18i	$ra, %call36(_ZN27btGImpactCollisionAlgorithm21collide_sat_trianglesEP17btCollisionObjectS1_P22btGImpactMeshShapePartS3_PKii)
	jirl	$ra, $ra, 0
.Ltmp131:                               # EH_LABEL
	b	.LBB11_49
.LBB11_13:
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 192
.Ltmp66:                                # EH_LABEL
	move	$a0, $s0
	jirl	$ra, $a1, 0
.Ltmp67:                                # EH_LABEL
# %bb.14:
	ld.d	$a0, $s4, 0
	ld.d	$a1, $a0, 192
.Ltmp68:                                # EH_LABEL
	move	$a0, $s4
	jirl	$ra, $a1, 0
.Ltmp69:                                # EH_LABEL
# %bb.15:
.Ltmp71:                                # EH_LABEL
	addi.d	$a0, $sp, 512
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN18GIM_ShapeRetrieverC2EP23btGImpactShapeInterface)
	jirl	$ra, $ra, 0
.Ltmp72:                                # EH_LABEL
# %bb.16:
.Ltmp73:                                # EH_LABEL
	addi.d	$a0, $sp, 168
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZN18GIM_ShapeRetrieverC2EP23btGImpactShapeInterface)
	jirl	$ra, $ra, 0
.Ltmp74:                                # EH_LABEL
# %bb.17:
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 152
.Ltmp75:                                # EH_LABEL
	move	$a0, $s0
	jirl	$ra, $a1, 0
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
.Ltmp76:                                # EH_LABEL
# %bb.18:
	ld.d	$a0, $s4, 0
	ld.d	$a1, $a0, 152
.Ltmp78:                                # EH_LABEL
	st.d	$s4, $sp, 80                    # 8-byte Folded Spill
	move	$a0, $s4
	jirl	$ra, $a1, 0
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
.Ltmp79:                                # EH_LABEL
# %bb.19:
	ld.w	$s8, $sp, 860
	beqz	$s8, .LBB11_43
# %bb.20:                               # %.lr.ph
	addi.d	$a0, $s2, 8
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	addi.d	$a0, $s2, 24
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	addi.d	$a0, $s2, 40
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	addi.d	$a0, $s2, 56
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	addi.d	$a0, $s1, 8
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	addi.d	$a0, $s1, 24
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	addi.d	$a0, $s1, 40
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	addi.d	$a0, $s1, 56
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	slli.d	$s4, $s8, 3
	b	.LBB11_22
	.p2align	4, , 16
.LBB11_21:                              #   in Loop: Header=BB11_22 Depth=1
	addi.d	$s8, $s8, -1
	addi.d	$s4, $s4, -8
	beqz	$s8, .LBB11_43
.LBB11_22:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 872
	add.d	$a0, $a0, $s4
	ld.w	$a1, $a0, -8
	st.w	$a1, $s3, 48
	ld.w	$a2, $a0, -4
	ld.d	$a0, $sp, 848
	st.w	$a2, $s3, 56
	ld.d	$a2, $a0, 0
	ld.d	$a2, $a2, 0
.Ltmp81:                                # EH_LABEL
	jirl	$ra, $a2, 0
.Ltmp82:                                # EH_LABEL
# %bb.23:                               # %_ZN18GIM_ShapeRetriever13getChildShapeEi.exit
                                        #   in Loop: Header=BB11_22 Depth=1
	move	$s6, $a0
	ld.d	$a0, $sp, 504
	ld.d	$a2, $a0, 0
	ld.w	$a1, $s3, 56
	ld.d	$a2, $a2, 0
.Ltmp84:                                # EH_LABEL
	jirl	$ra, $a2, 0
.Ltmp85:                                # EH_LABEL
# %bb.24:                               # %_ZN18GIM_ShapeRetriever13getChildShapeEi.exit74
                                        #   in Loop: Header=BB11_22 Depth=1
	move	$s7, $a0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	beqz	$a0, .LBB11_27
# %bb.25:                               #   in Loop: Header=BB11_22 Depth=1
	ld.d	$a0, $s0, 0
	ld.w	$a2, $s3, 48
	ld.d	$a3, $a0, 232
.Ltmp86:                                # EH_LABEL
	addi.d	$a0, $sp, 104
	move	$a1, $s0
	jirl	$ra, $a3, 0
.Ltmp87:                                # EH_LABEL
# %bb.26:                               #   in Loop: Header=BB11_22 Depth=1
	fld.s	$fa5, $sp, 104
	fld.s	$fa6, $sp, 120
	fld.s	$fa3, $sp, 956
	fld.s	$fa2, $sp, 952
	fld.s	$fa7, $sp, 136
	fld.s	$fa4, $sp, 960
	fmul.s	$fa0, $fa6, $fa3
	fld.s	$ft0, $sp, 124
	fmadd.s	$fa0, $fa5, $fa2, $fa0
	fmadd.s	$fa0, $fa7, $fa4, $fa0
	fld.s	$ft1, $sp, 108
	fmul.s	$fa1, $fa3, $ft0
	fld.s	$ft2, $sp, 140
	fld.s	$ft3, $sp, 128
	fld.s	$ft4, $sp, 112
	fmadd.s	$fa1, $ft1, $fa2, $fa1
	fmadd.s	$fa1, $ft2, $fa4, $fa1
	fmul.s	$ft5, $fa3, $ft3
	fmadd.s	$ft5, $ft4, $fa2, $ft5
	fld.s	$ft6, $sp, 144
	fld.s	$ft7, $sp, 972
	fld.s	$ft8, $sp, 968
	fld.s	$ft9, $sp, 976
	fmadd.s	$ft5, $ft6, $fa4, $ft5
	fmul.s	$ft10, $fa6, $ft7
	fmadd.s	$ft10, $fa5, $ft8, $ft10
	fmadd.s	$ft10, $fa7, $ft9, $ft10
	fmul.s	$ft11, $ft0, $ft7
	fld.s	$ft12, $sp, 988
	fld.s	$ft13, $sp, 984
	fmadd.s	$ft11, $ft1, $ft8, $ft11
	fmadd.s	$ft11, $ft2, $ft9, $ft11
	fmul.s	$fa6, $fa6, $ft12
	fmadd.s	$fa5, $fa5, $ft13, $fa6
	fld.s	$fa6, $sp, 992
	fmul.s	$ft14, $ft3, $ft7
	fmadd.s	$ft14, $ft4, $ft8, $ft14
	fmadd.s	$ft14, $ft6, $ft9, $ft14
	fmadd.s	$fa5, $fa7, $fa6, $fa5
	fmul.s	$fa7, $ft0, $ft12
	fmadd.s	$fa7, $ft1, $ft13, $fa7
	fmadd.s	$fa7, $ft2, $fa6, $fa7
	fmul.s	$ft0, $ft3, $ft12
	fmadd.s	$ft0, $ft4, $ft13, $ft0
	fmadd.s	$ft0, $ft6, $fa6, $ft0
	fld.s	$ft1, $sp, 156
	fld.s	$ft2, $sp, 152
	fld.s	$ft3, $sp, 160
	fld.s	$ft4, $sp, 1000
	fmul.s	$fa3, $fa3, $ft1
	fmadd.s	$fa2, $fa2, $ft2, $fa3
	fmadd.s	$fa2, $fa4, $ft3, $fa2
	fadd.s	$fa2, $ft4, $fa2
	fld.s	$fa3, $sp, 1004
	fmul.s	$fa4, $ft7, $ft1
	fmadd.s	$fa4, $ft8, $ft2, $fa4
	fmadd.s	$fa4, $ft9, $ft3, $fa4
	fadd.s	$fa3, $fa3, $fa4
	fld.s	$fa4, $sp, 1008
	fmul.s	$ft1, $ft12, $ft1
	fmadd.s	$ft1, $ft13, $ft2, $ft1
	fmadd.s	$fa6, $fa6, $ft3, $ft1
	fadd.s	$fa4, $fa6, $fa4
	movfr2gr.s	$a0, $fa2
	movfr2gr.s	$a1, $fa3
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa4
	bstrpick.d	$a1, $a1, 31, 0
	fst.s	$fa0, $s2, 8
	fst.s	$fa1, $s2, 12
	fst.s	$ft5, $s2, 16
	st.w	$zero, $s2, 20
	fst.s	$ft10, $s2, 24
	fst.s	$ft11, $s2, 28
	fst.s	$ft14, $s2, 32
	st.w	$zero, $s2, 36
	fst.s	$fa5, $s2, 40
	fst.s	$fa7, $s2, 44
	fst.s	$ft0, $s2, 48
	st.w	$zero, $s2, 52
	st.d	$a0, $s2, 56
	st.d	$a1, $s2, 64
.LBB11_27:                              #   in Loop: Header=BB11_22 Depth=1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	beqz	$a0, .LBB11_30
# %bb.28:                               #   in Loop: Header=BB11_22 Depth=1
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $a1, 0
	ld.w	$a2, $s3, 56
	ld.d	$a3, $a0, 232
.Ltmp89:                                # EH_LABEL
	addi.d	$a0, $sp, 104
	jirl	$ra, $a3, 0
.Ltmp90:                                # EH_LABEL
# %bb.29:                               #   in Loop: Header=BB11_22 Depth=1
	fld.s	$fa5, $sp, 104
	fld.s	$fa6, $sp, 120
	fld.s	$fa3, $sp, 892
	fld.s	$fa2, $sp, 888
	fld.s	$fa7, $sp, 136
	fld.s	$fa4, $sp, 896
	fmul.s	$fa0, $fa6, $fa3
	fld.s	$ft0, $sp, 124
	fmadd.s	$fa0, $fa5, $fa2, $fa0
	fmadd.s	$fa0, $fa7, $fa4, $fa0
	fld.s	$ft1, $sp, 108
	fmul.s	$fa1, $fa3, $ft0
	fld.s	$ft2, $sp, 140
	fld.s	$ft3, $sp, 128
	fld.s	$ft4, $sp, 112
	fmadd.s	$fa1, $ft1, $fa2, $fa1
	fmadd.s	$fa1, $ft2, $fa4, $fa1
	fmul.s	$ft5, $fa3, $ft3
	fmadd.s	$ft5, $ft4, $fa2, $ft5
	fld.s	$ft6, $sp, 144
	fld.s	$ft7, $sp, 908
	fld.s	$ft8, $sp, 904
	fld.s	$ft9, $sp, 912
	fmadd.s	$ft5, $ft6, $fa4, $ft5
	fmul.s	$ft10, $fa6, $ft7
	fmadd.s	$ft10, $fa5, $ft8, $ft10
	fmadd.s	$ft10, $fa7, $ft9, $ft10
	fmul.s	$ft11, $ft0, $ft7
	fld.s	$ft12, $sp, 924
	fld.s	$ft13, $sp, 920
	fmadd.s	$ft11, $ft1, $ft8, $ft11
	fmadd.s	$ft11, $ft2, $ft9, $ft11
	fmul.s	$fa6, $fa6, $ft12
	fmadd.s	$fa5, $fa5, $ft13, $fa6
	fld.s	$fa6, $sp, 928
	fmul.s	$ft14, $ft3, $ft7
	fmadd.s	$ft14, $ft4, $ft8, $ft14
	fmadd.s	$ft14, $ft6, $ft9, $ft14
	fmadd.s	$fa5, $fa7, $fa6, $fa5
	fmul.s	$fa7, $ft0, $ft12
	fmadd.s	$fa7, $ft1, $ft13, $fa7
	fmadd.s	$fa7, $ft2, $fa6, $fa7
	fmul.s	$ft0, $ft3, $ft12
	fmadd.s	$ft0, $ft4, $ft13, $ft0
	fmadd.s	$ft0, $ft6, $fa6, $ft0
	fld.s	$ft1, $sp, 156
	fld.s	$ft2, $sp, 152
	fld.s	$ft3, $sp, 160
	fld.s	$ft4, $sp, 936
	fmul.s	$fa3, $fa3, $ft1
	fmadd.s	$fa2, $fa2, $ft2, $fa3
	fmadd.s	$fa2, $fa4, $ft3, $fa2
	fadd.s	$fa2, $ft4, $fa2
	fld.s	$fa3, $sp, 940
	fmul.s	$fa4, $ft7, $ft1
	fmadd.s	$fa4, $ft8, $ft2, $fa4
	fmadd.s	$fa4, $ft9, $ft3, $fa4
	fadd.s	$fa3, $fa3, $fa4
	fld.s	$fa4, $sp, 944
	fmul.s	$ft1, $ft12, $ft1
	fmadd.s	$ft1, $ft13, $ft2, $ft1
	fmadd.s	$fa6, $fa6, $ft3, $ft1
	fadd.s	$fa4, $fa6, $fa4
	movfr2gr.s	$a0, $fa2
	movfr2gr.s	$a1, $fa3
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa4
	bstrpick.d	$a1, $a1, 31, 0
	fst.s	$fa0, $s1, 8
	fst.s	$fa1, $s1, 12
	fst.s	$ft5, $s1, 16
	st.w	$zero, $s1, 20
	fst.s	$ft10, $s1, 24
	fst.s	$ft11, $s1, 28
	fst.s	$ft14, $s1, 32
	st.w	$zero, $s1, 36
	fst.s	$fa5, $s1, 40
	fst.s	$fa7, $s1, 44
	fst.s	$ft0, $s1, 48
	st.w	$zero, $s1, 52
	st.d	$a0, $s1, 56
	st.d	$a1, $s1, 64
.LBB11_30:                              #   in Loop: Header=BB11_22 Depth=1
	ld.d	$s5, $s2, 200
	ld.d	$fp, $s1, 200
	st.d	$s6, $s2, 200
	st.d	$s7, $s1, 200
	ld.d	$a0, $s3, 32
	ld.d	$a3, $a0, 0
	ld.w	$a1, $s3, 52
	ld.w	$a2, $s3, 48
	ld.d	$a3, $a3, 16
.Ltmp92:                                # EH_LABEL
	jirl	$ra, $a3, 0
.Ltmp93:                                # EH_LABEL
# %bb.31:                               # %.noexc
                                        #   in Loop: Header=BB11_22 Depth=1
	ld.d	$a0, $s3, 32
	ld.d	$a3, $a0, 0
	ld.w	$a1, $s3, 60
	ld.w	$a2, $s3, 56
	ld.d	$a3, $a3, 24
.Ltmp94:                                # EH_LABEL
	jirl	$ra, $a3, 0
.Ltmp95:                                # EH_LABEL
# %bb.32:                               # %.noexc90
                                        #   in Loop: Header=BB11_22 Depth=1
	ld.d	$a0, $s3, 16
	bnez	$a0, .LBB11_38
# %bb.33:                               #   in Loop: Header=BB11_22 Depth=1
	ld.d	$a3, $s3, 24
	bnez	$a3, .LBB11_36
# %bb.34:                               #   in Loop: Header=BB11_22 Depth=1
	ld.d	$a0, $s3, 8
	ld.d	$a1, $a0, 0
	ld.d	$a3, $a1, 24
.Ltmp96:                                # EH_LABEL
	move	$a1, $s2
	move	$a2, $s1
	jirl	$ra, $a3, 0
.Ltmp97:                                # EH_LABEL
# %bb.35:                               # %.noexc91
                                        #   in Loop: Header=BB11_22 Depth=1
	move	$a3, $a0
	st.d	$a0, $s3, 24
.LBB11_36:                              # %_ZN27btGImpactCollisionAlgorithm12newAlgorithmEP17btCollisionObjectS1_.exit.i.i
                                        #   in Loop: Header=BB11_22 Depth=1
	ld.d	$a0, $s3, 32
	st.d	$a3, $a0, 8
	ld.d	$a0, $s3, 8
	ld.d	$a1, $a0, 0
	ld.d	$a4, $a1, 16
.Ltmp98:                                # EH_LABEL
	move	$a1, $s2
	move	$a2, $s1
	jirl	$ra, $a4, 0
.Ltmp99:                                # EH_LABEL
# %bb.37:                               # %.noexc92
                                        #   in Loop: Header=BB11_22 Depth=1
	st.d	$a0, $s3, 16
.LBB11_38:                              # %_ZN27btGImpactCollisionAlgorithm20checkConvexAlgorithmEP17btCollisionObjectS1_.exit.i
                                        #   in Loop: Header=BB11_22 Depth=1
	ld.d	$a1, $a0, 0
	ld.d	$a3, $s3, 40
	ld.d	$a4, $s3, 32
	ld.d	$a5, $a1, 16
.Ltmp100:                               # EH_LABEL
	move	$a1, $s2
	move	$a2, $s1
	jirl	$ra, $a5, 0
.Ltmp101:                               # EH_LABEL
# %bb.39:                               #   in Loop: Header=BB11_22 Depth=1
	st.d	$s5, $s2, 200
	st.d	$fp, $s1, 200
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	bnez	$a0, .LBB11_41
# %bb.40:                               #   in Loop: Header=BB11_22 Depth=1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	beqz	$a0, .LBB11_21
	b	.LBB11_42
	.p2align	4, , 16
.LBB11_41:                              #   in Loop: Header=BB11_22 Depth=1
	vld	$vr0, $sp, 952
	addi.d	$a0, $sp, 968
	vld	$vr1, $a0, 0
	addi.d	$a0, $sp, 984
	vld	$vr2, $a0, 0
	addi.d	$a0, $sp, 1000
	vld	$vr3, $a0, 0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	vst	$vr0, $a0, 0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	vst	$vr1, $a0, 0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	vst	$vr2, $a0, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	vst	$vr3, $a0, 0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	beqz	$a0, .LBB11_21
.LBB11_42:                              #   in Loop: Header=BB11_22 Depth=1
	vld	$vr0, $sp, 888
	addi.d	$a0, $sp, 904
	vld	$vr1, $a0, 0
	addi.d	$a0, $sp, 920
	vld	$vr2, $a0, 0
	addi.d	$a0, $sp, 936
	vld	$vr3, $a0, 0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	vst	$vr0, $a0, 0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	vst	$vr1, $a0, 0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	vst	$vr2, $a0, 0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	vst	$vr3, $a0, 0
	b	.LBB11_21
.LBB11_43:                              # %._crit_edge
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 200
.Ltmp103:                               # EH_LABEL
	move	$a0, $s0
	jirl	$ra, $a1, 0
.Ltmp104:                               # EH_LABEL
# %bb.44:
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 200
.Ltmp105:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp106:                               # EH_LABEL
# %bb.45:
	addi.d	$a0, $sp, 288
.Ltmp110:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN13btConvexShapeD2Ev)
	jirl	$ra, $ra, 0
.Ltmp111:                               # EH_LABEL
# %bb.46:
	addi.d	$a0, $sp, 176
.Ltmp116:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN13btConvexShapeD2Ev)
	jirl	$ra, $ra, 0
.Ltmp117:                               # EH_LABEL
# %bb.47:                               # %_ZN18GIM_ShapeRetrieverD2Ev.exit
	addi.d	$a0, $sp, 632
.Ltmp121:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN13btConvexShapeD2Ev)
	jirl	$ra, $ra, 0
.Ltmp122:                               # EH_LABEL
# %bb.48:
	addi.d	$a0, $sp, 520
.Ltmp127:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN13btConvexShapeD2Ev)
	jirl	$ra, $ra, 0
.Ltmp128:                               # EH_LABEL
.LBB11_49:
	ld.d	$a0, $sp, 872
	beqz	$a0, .LBB11_52
# %bb.50:
	ld.b	$a1, $sp, 880
	andi	$a1, $a1, 1
	beqz	$a1, .LBB11_52
# %bb.51:
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.LBB11_52:                              # %.loopexit
	ld.d	$s8, $sp, 1016                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1024                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1032                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1040                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1048                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1056                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1064                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1072                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1080                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1088                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1096                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1104
	ret
.LBB11_53:
.Ltmp132:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB11_70
.LBB11_54:
.Ltmp123:                               # EH_LABEL
	move	$fp, $a0
	addi.d	$a0, $sp, 520
.Ltmp124:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN13btConvexShapeD2Ev)
	jirl	$ra, $ra, 0
.Ltmp125:                               # EH_LABEL
	b	.LBB11_70
.LBB11_55:
.Ltmp126:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB11_56:
.Ltmp112:                               # EH_LABEL
	move	$fp, $a0
	addi.d	$a0, $sp, 176
.Ltmp113:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN13btConvexShapeD2Ev)
	jirl	$ra, $ra, 0
.Ltmp114:                               # EH_LABEL
	b	.LBB11_69
.LBB11_57:
.Ltmp115:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB11_58:
.Ltmp80:                                # EH_LABEL
	b	.LBB11_68
.LBB11_59:
.Ltmp77:                                # EH_LABEL
	b	.LBB11_68
.LBB11_60:
.Ltmp107:                               # EH_LABEL
	b	.LBB11_68
.LBB11_61:
.Ltmp129:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB11_70
.LBB11_62:
.Ltmp118:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB11_69
.LBB11_63:
.Ltmp70:                                # EH_LABEL
	move	$fp, $a0
	b	.LBB11_70
.LBB11_64:
.Ltmp91:                                # EH_LABEL
	b	.LBB11_68
.LBB11_65:
.Ltmp88:                                # EH_LABEL
	b	.LBB11_68
.LBB11_66:
.Ltmp83:                                # EH_LABEL
	b	.LBB11_68
.LBB11_67:
.Ltmp102:                               # EH_LABEL
.LBB11_68:
	move	$fp, $a0
.Ltmp108:                               # EH_LABEL
	addi.d	$a0, $sp, 168
	pcaddu18i	$ra, %call36(_ZN18GIM_ShapeRetrieverD2Ev)
	jirl	$ra, $ra, 0
.Ltmp109:                               # EH_LABEL
.LBB11_69:                              # %.body
.Ltmp119:                               # EH_LABEL
	addi.d	$a0, $sp, 512
	pcaddu18i	$ra, %call36(_ZN18GIM_ShapeRetrieverD2Ev)
	jirl	$ra, $ra, 0
.Ltmp120:                               # EH_LABEL
.LBB11_70:
	ld.d	$a0, $sp, 872
	beqz	$a0, .LBB11_73
# %bb.71:
	ld.b	$a1, $sp, 880
	andi	$a1, $a1, 1
	beqz	$a1, .LBB11_73
# %bb.72:
.Ltmp133:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp134:                               # EH_LABEL
.LBB11_73:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB11_74:
.Ltmp135:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end11:
	.size	_ZN27btGImpactCollisionAlgorithm18gimpact_vs_gimpactEP17btCollisionObjectS1_P23btGImpactShapeInterfaceS3_, .Lfunc_end11-_ZN27btGImpactCollisionAlgorithm18gimpact_vs_gimpactEP17btCollisionObjectS1_P23btGImpactShapeInterfaceS3_
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
	.uleb128 .Ltmp60-.Lfunc_begin3          #   Call between .Lfunc_begin3 and .Ltmp60
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp60-.Lfunc_begin3          # >> Call Site 2 <<
	.uleb128 .Ltmp65-.Ltmp60                #   Call between .Ltmp60 and .Ltmp65
	.uleb128 .Ltmp70-.Lfunc_begin3          #     jumps to .Ltmp70
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp130-.Lfunc_begin3         # >> Call Site 3 <<
	.uleb128 .Ltmp131-.Ltmp130              #   Call between .Ltmp130 and .Ltmp131
	.uleb128 .Ltmp132-.Lfunc_begin3         #     jumps to .Ltmp132
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp66-.Lfunc_begin3          # >> Call Site 4 <<
	.uleb128 .Ltmp69-.Ltmp66                #   Call between .Ltmp66 and .Ltmp69
	.uleb128 .Ltmp70-.Lfunc_begin3          #     jumps to .Ltmp70
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp71-.Lfunc_begin3          # >> Call Site 5 <<
	.uleb128 .Ltmp72-.Ltmp71                #   Call between .Ltmp71 and .Ltmp72
	.uleb128 .Ltmp129-.Lfunc_begin3         #     jumps to .Ltmp129
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp73-.Lfunc_begin3          # >> Call Site 6 <<
	.uleb128 .Ltmp74-.Ltmp73                #   Call between .Ltmp73 and .Ltmp74
	.uleb128 .Ltmp118-.Lfunc_begin3         #     jumps to .Ltmp118
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp75-.Lfunc_begin3          # >> Call Site 7 <<
	.uleb128 .Ltmp76-.Ltmp75                #   Call between .Ltmp75 and .Ltmp76
	.uleb128 .Ltmp77-.Lfunc_begin3          #     jumps to .Ltmp77
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp78-.Lfunc_begin3          # >> Call Site 8 <<
	.uleb128 .Ltmp79-.Ltmp78                #   Call between .Ltmp78 and .Ltmp79
	.uleb128 .Ltmp80-.Lfunc_begin3          #     jumps to .Ltmp80
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp81-.Lfunc_begin3          # >> Call Site 9 <<
	.uleb128 .Ltmp82-.Ltmp81                #   Call between .Ltmp81 and .Ltmp82
	.uleb128 .Ltmp83-.Lfunc_begin3          #     jumps to .Ltmp83
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp84-.Lfunc_begin3          # >> Call Site 10 <<
	.uleb128 .Ltmp85-.Ltmp84                #   Call between .Ltmp84 and .Ltmp85
	.uleb128 .Ltmp102-.Lfunc_begin3         #     jumps to .Ltmp102
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp86-.Lfunc_begin3          # >> Call Site 11 <<
	.uleb128 .Ltmp87-.Ltmp86                #   Call between .Ltmp86 and .Ltmp87
	.uleb128 .Ltmp88-.Lfunc_begin3          #     jumps to .Ltmp88
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp89-.Lfunc_begin3          # >> Call Site 12 <<
	.uleb128 .Ltmp90-.Ltmp89                #   Call between .Ltmp89 and .Ltmp90
	.uleb128 .Ltmp91-.Lfunc_begin3          #     jumps to .Ltmp91
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp92-.Lfunc_begin3          # >> Call Site 13 <<
	.uleb128 .Ltmp101-.Ltmp92               #   Call between .Ltmp92 and .Ltmp101
	.uleb128 .Ltmp102-.Lfunc_begin3         #     jumps to .Ltmp102
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp103-.Lfunc_begin3         # >> Call Site 14 <<
	.uleb128 .Ltmp106-.Ltmp103              #   Call between .Ltmp103 and .Ltmp106
	.uleb128 .Ltmp107-.Lfunc_begin3         #     jumps to .Ltmp107
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp110-.Lfunc_begin3         # >> Call Site 15 <<
	.uleb128 .Ltmp111-.Ltmp110              #   Call between .Ltmp110 and .Ltmp111
	.uleb128 .Ltmp112-.Lfunc_begin3         #     jumps to .Ltmp112
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp116-.Lfunc_begin3         # >> Call Site 16 <<
	.uleb128 .Ltmp117-.Ltmp116              #   Call between .Ltmp116 and .Ltmp117
	.uleb128 .Ltmp118-.Lfunc_begin3         #     jumps to .Ltmp118
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp121-.Lfunc_begin3         # >> Call Site 17 <<
	.uleb128 .Ltmp122-.Ltmp121              #   Call between .Ltmp121 and .Ltmp122
	.uleb128 .Ltmp123-.Lfunc_begin3         #     jumps to .Ltmp123
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp127-.Lfunc_begin3         # >> Call Site 18 <<
	.uleb128 .Ltmp128-.Ltmp127              #   Call between .Ltmp127 and .Ltmp128
	.uleb128 .Ltmp129-.Lfunc_begin3         #     jumps to .Ltmp129
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp128-.Lfunc_begin3         # >> Call Site 19 <<
	.uleb128 .Ltmp124-.Ltmp128              #   Call between .Ltmp128 and .Ltmp124
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp124-.Lfunc_begin3         # >> Call Site 20 <<
	.uleb128 .Ltmp125-.Ltmp124              #   Call between .Ltmp124 and .Ltmp125
	.uleb128 .Ltmp126-.Lfunc_begin3         #     jumps to .Ltmp126
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp125-.Lfunc_begin3         # >> Call Site 21 <<
	.uleb128 .Ltmp113-.Ltmp125              #   Call between .Ltmp125 and .Ltmp113
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp113-.Lfunc_begin3         # >> Call Site 22 <<
	.uleb128 .Ltmp114-.Ltmp113              #   Call between .Ltmp113 and .Ltmp114
	.uleb128 .Ltmp115-.Lfunc_begin3         #     jumps to .Ltmp115
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp114-.Lfunc_begin3         # >> Call Site 23 <<
	.uleb128 .Ltmp108-.Ltmp114              #   Call between .Ltmp114 and .Ltmp108
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp108-.Lfunc_begin3         # >> Call Site 24 <<
	.uleb128 .Ltmp134-.Ltmp108              #   Call between .Ltmp108 and .Ltmp134
	.uleb128 .Ltmp135-.Lfunc_begin3         #     jumps to .Ltmp135
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp134-.Lfunc_begin3         # >> Call Site 25 <<
	.uleb128 .Lfunc_end11-.Ltmp134          #   Call between .Ltmp134 and .Lfunc_end11
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
	.section	.text._ZN9btPairSetC2Ev,"axG",@progbits,_ZN9btPairSetC2Ev,comdat
	.weak	_ZN9btPairSetC2Ev               # -- Begin function _ZN9btPairSetC2Ev
	.p2align	5
	.type	_ZN9btPairSetC2Ev,@function
_ZN9btPairSetC2Ev:                      # @_ZN9btPairSetC2Ev
.Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception4
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
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 24
	st.d	$zero, $fp, 16
	st.d	$zero, $fp, 4
.Ltmp136:                               # EH_LABEL
	ori	$a0, $zero, 256
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
.Ltmp137:                               # EH_LABEL
# %bb.1:                                # %.noexc
	move	$s0, $a0
	ld.w	$a1, $fp, 4
	ld.d	$a0, $fp, 16
	blez	$a1, .LBB12_4
# %bb.2:                                # %.lr.ph.i.i
	addi.d	$a2, $a0, 4
	addi.d	$a3, $s0, 4
	.p2align	4, , 16
.LBB12_3:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a2, -4
	st.d	$a4, $a3, -4
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 8
	addi.d	$a3, $a3, 8
	bnez	$a1, .LBB12_3
	b	.LBB12_5
.LBB12_4:                               # %_ZNK20btAlignedObjectArrayI8GIM_PAIRE4copyEiiPS0_.exit.i
	beqz	$a0, .LBB12_8
.LBB12_5:                               # %_ZNK20btAlignedObjectArrayI8GIM_PAIRE4copyEiiPS0_.exit.thread.i
	ld.bu	$a1, $fp, 24
	beqz	$a1, .LBB12_7
# %bb.6:
.Ltmp138:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp139:                               # EH_LABEL
.LBB12_7:                               # %.noexc2
	st.d	$zero, $fp, 16
.LBB12_8:
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 24
	st.d	$s0, $fp, 16
	ori	$a0, $zero, 32
	st.w	$a0, $fp, 8
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB12_9:
.Ltmp140:                               # EH_LABEL
	move	$s0, $a0
.Ltmp141:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN20btAlignedObjectArrayI8GIM_PAIRED2Ev)
	jirl	$ra, $ra, 0
.Ltmp142:                               # EH_LABEL
# %bb.10:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB12_11:
.Ltmp143:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end12:
	.size	_ZN9btPairSetC2Ev, .Lfunc_end12-_ZN9btPairSetC2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN9btPairSetC2Ev,"aG",@progbits,_ZN9btPairSetC2Ev,comdat
	.p2align	2, 0x0
GCC_except_table12:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase4-.Lttbaseref4
.Lttbaseref4:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Ltmp136-.Lfunc_begin4         # >> Call Site 1 <<
	.uleb128 .Ltmp139-.Ltmp136              #   Call between .Ltmp136 and .Ltmp139
	.uleb128 .Ltmp140-.Lfunc_begin4         #     jumps to .Ltmp140
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp141-.Lfunc_begin4         # >> Call Site 2 <<
	.uleb128 .Ltmp142-.Ltmp141              #   Call between .Ltmp141 and .Ltmp142
	.uleb128 .Ltmp143-.Lfunc_begin4         #     jumps to .Ltmp143
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp142-.Lfunc_begin4         # >> Call Site 3 <<
	.uleb128 .Lfunc_end12-.Ltmp142          #   Call between .Ltmp142 and .Lfunc_end12
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
	.section	.text._ZN18GIM_ShapeRetrieverC2EP23btGImpactShapeInterface,"axG",@progbits,_ZN18GIM_ShapeRetrieverC2EP23btGImpactShapeInterface,comdat
	.weak	_ZN18GIM_ShapeRetrieverC2EP23btGImpactShapeInterface # -- Begin function _ZN18GIM_ShapeRetrieverC2EP23btGImpactShapeInterface
	.p2align	5
	.type	_ZN18GIM_ShapeRetrieverC2EP23btGImpactShapeInterface,@function
_ZN18GIM_ShapeRetrieverC2EP23btGImpactShapeInterface: # @_ZN18GIM_ShapeRetrieverC2EP23btGImpactShapeInterface
.Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception5
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
	move	$s2, $a1
	move	$s0, $a0
	addi.d	$fp, $a0, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN23btPolyhedralConvexShapeC2Ev)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	st.w	$a0, $s0, 16
	vrepli.b	$vr0, 0
	vst	$vr0, $s0, 72
	vst	$vr0, $s0, 88
	vst	$vr0, $s0, 104
	pcalau12i	$a0, %pc_hi20(_ZTV17btTriangleShapeEx+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV17btTriangleShapeEx+16)
	st.d	$a0, $s0, 8
	addi.d	$s1, $s0, 120
.Ltmp144:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN16btBU_Simplex1to4C2Ev)
	jirl	$ra, $ra, 0
.Ltmp145:                               # EH_LABEL
# %bb.1:
	pcalau12i	$a0, %pc_hi20(_ZTV20btTetrahedronShapeEx+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV20btTetrahedronShapeEx+16)
	st.d	$a0, $s0, 120
	ori	$a0, $zero, 4
	st.w	$a0, $s0, 220
	pcalau12i	$a0, %pc_hi20(_ZTVN18GIM_ShapeRetriever19ChildShapeRetrieverE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTVN18GIM_ShapeRetriever19ChildShapeRetrieverE+16)
	st.d	$a0, $s0, 288
	pcalau12i	$a0, %pc_hi20(_ZTVN18GIM_ShapeRetriever22TriangleShapeRetrieverE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTVN18GIM_ShapeRetriever22TriangleShapeRetrieverE+16)
	st.d	$a0, $s0, 304
	pcalau12i	$a0, %pc_hi20(_ZTVN18GIM_ShapeRetriever19TetraShapeRetrieverE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTVN18GIM_ShapeRetriever19TetraShapeRetrieverE+16)
	st.d	$a0, $s0, 320
	ld.d	$a0, $s2, 0
	st.d	$s2, $s0, 0
	ld.d	$a1, $a0, 160
.Ltmp147:                               # EH_LABEL
	move	$a0, $s2
	jirl	$ra, $a1, 0
.Ltmp148:                               # EH_LABEL
# %bb.2:
	beqz	$a0, .LBB13_4
# %bb.3:
	addi.d	$a0, $s0, 304
	b	.LBB13_8
.LBB13_4:
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 168
.Ltmp149:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp150:                               # EH_LABEL
# %bb.5:
	beqz	$a0, .LBB13_7
# %bb.6:
	addi.d	$a0, $s0, 320
	b	.LBB13_8
.LBB13_7:
	addi.d	$a0, $s0, 288
.LBB13_8:
	st.d	$a0, $s0, 336
	st.d	$s0, $a0, 8
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB13_9:
.Ltmp146:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB13_11
.LBB13_10:
.Ltmp151:                               # EH_LABEL
	move	$s0, $a0
.Ltmp152:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN13btConvexShapeD2Ev)
	jirl	$ra, $ra, 0
.Ltmp153:                               # EH_LABEL
.LBB13_11:
.Ltmp154:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN13btConvexShapeD2Ev)
	jirl	$ra, $ra, 0
.Ltmp155:                               # EH_LABEL
# %bb.12:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB13_13:
.Ltmp156:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end13:
	.size	_ZN18GIM_ShapeRetrieverC2EP23btGImpactShapeInterface, .Lfunc_end13-_ZN18GIM_ShapeRetrieverC2EP23btGImpactShapeInterface
	.cfi_endproc
	.section	.gcc_except_table._ZN18GIM_ShapeRetrieverC2EP23btGImpactShapeInterface,"aG",@progbits,_ZN18GIM_ShapeRetrieverC2EP23btGImpactShapeInterface,comdat
	.p2align	2, 0x0
GCC_except_table13:
.Lexception5:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase5-.Lttbaseref5
.Lttbaseref5:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end5-.Lcst_begin5
.Lcst_begin5:
	.uleb128 .Lfunc_begin5-.Lfunc_begin5    # >> Call Site 1 <<
	.uleb128 .Ltmp144-.Lfunc_begin5         #   Call between .Lfunc_begin5 and .Ltmp144
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp144-.Lfunc_begin5         # >> Call Site 2 <<
	.uleb128 .Ltmp145-.Ltmp144              #   Call between .Ltmp144 and .Ltmp145
	.uleb128 .Ltmp146-.Lfunc_begin5         #     jumps to .Ltmp146
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp147-.Lfunc_begin5         # >> Call Site 3 <<
	.uleb128 .Ltmp150-.Ltmp147              #   Call between .Ltmp147 and .Ltmp150
	.uleb128 .Ltmp151-.Lfunc_begin5         #     jumps to .Ltmp151
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp152-.Lfunc_begin5         # >> Call Site 4 <<
	.uleb128 .Ltmp155-.Ltmp152              #   Call between .Ltmp152 and .Ltmp155
	.uleb128 .Ltmp156-.Lfunc_begin5         #     jumps to .Ltmp156
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp155-.Lfunc_begin5         # >> Call Site 5 <<
	.uleb128 .Lfunc_end13-.Ltmp155          #   Call between .Ltmp155 and .Lfunc_end13
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end5:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase5:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN18GIM_ShapeRetrieverD2Ev,"axG",@progbits,_ZN18GIM_ShapeRetrieverD2Ev,comdat
	.weak	_ZN18GIM_ShapeRetrieverD2Ev     # -- Begin function _ZN18GIM_ShapeRetrieverD2Ev
	.p2align	5
	.type	_ZN18GIM_ShapeRetrieverD2Ev,@function
_ZN18GIM_ShapeRetrieverD2Ev:            # @_ZN18GIM_ShapeRetrieverD2Ev
.Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception6
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
	addi.d	$a0, $a0, 120
.Ltmp157:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN13btConvexShapeD2Ev)
	jirl	$ra, $ra, 0
.Ltmp158:                               # EH_LABEL
# %bb.1:
	addi.d	$a0, $fp, 8
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZN13btConvexShapeD2Ev)
	jr	$t8
.LBB14_2:
.Ltmp159:                               # EH_LABEL
	move	$s0, $a0
	addi.d	$a0, $fp, 8
.Ltmp160:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN13btConvexShapeD2Ev)
	jirl	$ra, $ra, 0
.Ltmp161:                               # EH_LABEL
# %bb.3:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB14_4:
.Ltmp162:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end14:
	.size	_ZN18GIM_ShapeRetrieverD2Ev, .Lfunc_end14-_ZN18GIM_ShapeRetrieverD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN18GIM_ShapeRetrieverD2Ev,"aG",@progbits,_ZN18GIM_ShapeRetrieverD2Ev,comdat
	.p2align	2, 0x0
GCC_except_table14:
.Lexception6:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase6-.Lttbaseref6
.Lttbaseref6:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end6-.Lcst_begin6
.Lcst_begin6:
	.uleb128 .Ltmp157-.Lfunc_begin6         # >> Call Site 1 <<
	.uleb128 .Ltmp158-.Ltmp157              #   Call between .Ltmp157 and .Ltmp158
	.uleb128 .Ltmp159-.Lfunc_begin6         #     jumps to .Ltmp159
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp158-.Lfunc_begin6         # >> Call Site 2 <<
	.uleb128 .Ltmp160-.Ltmp158              #   Call between .Ltmp158 and .Ltmp160
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp160-.Lfunc_begin6         # >> Call Site 3 <<
	.uleb128 .Ltmp161-.Ltmp160              #   Call between .Ltmp160 and .Ltmp161
	.uleb128 .Ltmp162-.Lfunc_begin6         #     jumps to .Ltmp162
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp161-.Lfunc_begin6         # >> Call Site 4 <<
	.uleb128 .Lfunc_end14-.Ltmp161          #   Call between .Ltmp161 and .Lfunc_end14
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end6:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase6:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN20btAlignedObjectArrayI8GIM_PAIRED2Ev,"axG",@progbits,_ZN20btAlignedObjectArrayI8GIM_PAIRED2Ev,comdat
	.weak	_ZN20btAlignedObjectArrayI8GIM_PAIRED2Ev # -- Begin function _ZN20btAlignedObjectArrayI8GIM_PAIRED2Ev
	.p2align	5
	.type	_ZN20btAlignedObjectArrayI8GIM_PAIRED2Ev,@function
_ZN20btAlignedObjectArrayI8GIM_PAIRED2Ev: # @_ZN20btAlignedObjectArrayI8GIM_PAIRED2Ev
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	ld.d	$a0, $a0, 16
	beqz	$a0, .LBB15_3
# %bb.1:
	ld.b	$a1, $fp, 24
	andi	$a1, $a1, 1
	beqz	$a1, .LBB15_3
# %bb.2:
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.LBB15_3:                               # %_ZN20btAlignedObjectArrayI8GIM_PAIRE5clearEv.exit
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 24
	st.d	$zero, $fp, 16
	st.d	$zero, $fp, 4
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end15:
	.size	_ZN20btAlignedObjectArrayI8GIM_PAIRED2Ev, .Lfunc_end15-_ZN20btAlignedObjectArrayI8GIM_PAIRED2Ev
	.cfi_endproc
                                        # -- End function
	.text
	.globl	_ZN27btGImpactCollisionAlgorithm16gimpact_vs_shapeEP17btCollisionObjectS1_P23btGImpactShapeInterfaceP16btCollisionShapeb # -- Begin function _ZN27btGImpactCollisionAlgorithm16gimpact_vs_shapeEP17btCollisionObjectS1_P23btGImpactShapeInterfaceP16btCollisionShapeb
	.p2align	5
	.type	_ZN27btGImpactCollisionAlgorithm16gimpact_vs_shapeEP17btCollisionObjectS1_P23btGImpactShapeInterfaceP16btCollisionShapeb,@function
_ZN27btGImpactCollisionAlgorithm16gimpact_vs_shapeEP17btCollisionObjectS1_P23btGImpactShapeInterfaceP16btCollisionShapeb: # @_ZN27btGImpactCollisionAlgorithm16gimpact_vs_shapeEP17btCollisionObjectS1_P23btGImpactShapeInterfaceP16btCollisionShapeb
.Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception7
# %bb.0:
	addi.d	$sp, $sp, -720
	.cfi_def_cfa_offset 720
	st.d	$ra, $sp, 712                   # 8-byte Folded Spill
	st.d	$fp, $sp, 704                   # 8-byte Folded Spill
	st.d	$s0, $sp, 696                   # 8-byte Folded Spill
	st.d	$s1, $sp, 688                   # 8-byte Folded Spill
	st.d	$s2, $sp, 680                   # 8-byte Folded Spill
	st.d	$s3, $sp, 672                   # 8-byte Folded Spill
	st.d	$s4, $sp, 664                   # 8-byte Folded Spill
	st.d	$s5, $sp, 656                   # 8-byte Folded Spill
	st.d	$s6, $sp, 648                   # 8-byte Folded Spill
	st.d	$s7, $sp, 640                   # 8-byte Folded Spill
	st.d	$s8, $sp, 632                   # 8-byte Folded Spill
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
	move	$fp, $a3
	ld.d	$a3, $a3, 0
	ld.d	$a3, $a3, 128
	move	$s0, $a5
	move	$s6, $a4
	move	$s5, $a2
	move	$s1, $a1
	move	$s2, $a0
	move	$a0, $fp
	jirl	$ra, $a3, 0
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB16_4
# %bb.1:
	ori	$a0, $zero, 52
	masknez	$a0, $a0, $s0
	ld.w	$a1, $fp, 188
	ori	$a2, $zero, 60
	maskeqz	$a2, $a2, $s0
	or	$s3, $a2, $a0
	addi.w	$a0, $a1, -1
	stx.w	$a0, $s2, $s3
	beqz	$a1, .LBB16_3
	.p2align	4, , 16
.LBB16_2:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $fp, 200
	slli.d	$a0, $a0, 3
	ldx.d	$a3, $a1, $a0
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s5
	move	$a4, $s6
	move	$a5, $s0
	pcaddu18i	$ra, %call36(_ZN27btGImpactCollisionAlgorithm16gimpact_vs_shapeEP17btCollisionObjectS1_P23btGImpactShapeInterfaceP16btCollisionShapeb)
	jirl	$ra, $ra, 0
	ldx.w	$a1, $s2, $s3
	addi.w	$a0, $a1, -1
	stx.w	$a0, $s2, $s3
	bnez	$a1, .LBB16_2
.LBB16_3:                               # %.loopexit
	ld.d	$s8, $sp, 632                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 640                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 648                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 656                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 664                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 672                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 680                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 688                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 696                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 704                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 712                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 720
	ret
.LBB16_4:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 128
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.w	$a1, $s6, 8
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB16_7
# %bb.5:
	ori	$a0, $zero, 28
	bne	$a1, $a0, .LBB16_7
# %bb.6:
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s5
	move	$a3, $fp
	move	$a4, $s6
	move	$a5, $s0
	ld.d	$s8, $sp, 632                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 640                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 648                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 656                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 664                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 672                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 680                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 688                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 696                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 704                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 712                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 720
	pcaddu18i	$t8, %call36(_ZN27btGImpactCollisionAlgorithm37gimpacttrimeshpart_vs_plane_collisionEP17btCollisionObjectS1_P22btGImpactMeshShapePartP18btStaticPlaneShapeb)
	jr	$t8
.LBB16_7:                               # %._crit_edge85
	ori	$a0, $zero, 31
	bne	$a1, $a0, .LBB16_9
# %bb.8:
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s5
	move	$a3, $fp
	move	$a4, $s6
	move	$a5, $s0
	ld.d	$s8, $sp, 632                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 640                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 648                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 656                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 664                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 672                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 680                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 688                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 696                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 704                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 712                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 720
	pcaddu18i	$t8, %call36(_ZN27btGImpactCollisionAlgorithm24gimpact_vs_compoundshapeEP17btCollisionObjectS1_P23btGImpactShapeInterfaceP15btCompoundShapeb)
	jr	$t8
.LBB16_9:
	addi.w	$a0, $a1, -21
	ori	$a1, $zero, 8
	bltu	$a1, $a0, .LBB16_11
# %bb.10:
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s5
	move	$a3, $fp
	move	$a4, $s6
	move	$a5, $s0
	ld.d	$s8, $sp, 632                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 640                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 648                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 656                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 664                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 672                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 680                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 688                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 696                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 704                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 712                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 720
	pcaddu18i	$t8, %call36(_ZN27btGImpactCollisionAlgorithm18gimpact_vs_concaveEP17btCollisionObjectS1_P23btGImpactShapeInterfaceP14btConcaveShapeb)
	jr	$t8
.LBB16_11:
	vld	$vr0, $s1, 8
	vld	$vr1, $s1, 24
	vld	$vr2, $s1, 40
	vld	$vr3, $s1, 56
	vst	$vr0, $sp, 568
	vst	$vr1, $sp, 584
	vst	$vr2, $sp, 600
	vst	$vr3, $sp, 616
	vld	$vr0, $s5, 8
	vld	$vr1, $s5, 24
	vld	$vr2, $s5, 40
	vld	$vr3, $s5, 56
	vst	$vr0, $sp, 504
	vst	$vr1, $sp, 520
	vst	$vr2, $sp, 536
	vst	$vr3, $sp, 552
	ori	$a0, $zero, 1
	st.b	$a0, $sp, 496
	st.d	$zero, $sp, 488
	st.d	$zero, $sp, 476
.Ltmp163:                               # EH_LABEL
	addi.d	$a1, $sp, 568
	addi.d	$a2, $sp, 504
	addi.d	$a5, $sp, 472
	move	$a3, $fp
	move	$a4, $s6
	pcaddu18i	$ra, %call36(_ZN27btGImpactCollisionAlgorithm27gimpact_vs_shape_find_pairsERK11btTransformS2_P23btGImpactShapeInterfaceP16btCollisionShapeR20btAlignedObjectArrayIiE)
	jirl	$ra, $ra, 0
.Ltmp164:                               # EH_LABEL
# %bb.12:
	ld.w	$a0, $sp, 476
	beqz	$a0, .LBB16_32
# %bb.13:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 192
.Ltmp165:                               # EH_LABEL
	move	$a0, $fp
	jirl	$ra, $a1, 0
.Ltmp166:                               # EH_LABEL
# %bb.14:
.Ltmp168:                               # EH_LABEL
	addi.d	$a0, $sp, 128
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN18GIM_ShapeRetrieverC2EP23btGImpactShapeInterface)
	jirl	$ra, $ra, 0
.Ltmp169:                               # EH_LABEL
# %bb.15:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 152
.Ltmp170:                               # EH_LABEL
	move	$a0, $fp
	jirl	$ra, $a1, 0
.Ltmp171:                               # EH_LABEL
# %bb.16:
	ld.w	$s8, $sp, 476
	beqz	$s8, .LBB16_29
# %bb.17:                               # %.lr.ph
	move	$s3, $a0
	addi.d	$a0, $s1, 8
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	addi.d	$a0, $s1, 24
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	addi.d	$a0, $s1, 40
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	addi.d	$a0, $s1, 56
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	masknez	$a0, $s1, $s0
	maskeqz	$a1, $s5, $s0
	or	$a0, $a1, $a0
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	masknez	$a0, $s5, $s0
	maskeqz	$a1, $s1, $s0
	or	$a0, $a1, $a0
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	slli.d	$a0, $s8, 2
	addi.d	$s4, $a0, -4
	maskeqz	$a0, $s6, $s0
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	masknez	$s5, $s6, $s0
	b	.LBB16_19
	.p2align	4, , 16
.LBB16_18:                              #   in Loop: Header=BB16_19 Depth=1
	addi.d	$s8, $s8, -1
	addi.d	$s4, $s4, -4
	beqz	$s8, .LBB16_29
.LBB16_19:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 488
	ldx.w	$s7, $a0, $s4
	beqz	$s0, .LBB16_21
# %bb.20:                               #   in Loop: Header=BB16_19 Depth=1
	st.w	$s7, $s2, 56
	b	.LBB16_22
	.p2align	4, , 16
.LBB16_21:                              #   in Loop: Header=BB16_19 Depth=1
	st.w	$s7, $s2, 48
.LBB16_22:                              #   in Loop: Header=BB16_19 Depth=1
	ld.d	$a0, $sp, 464
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a1, 0
.Ltmp173:                               # EH_LABEL
	move	$a1, $s7
	jirl	$ra, $a2, 0
.Ltmp174:                               # EH_LABEL
# %bb.23:                               # %_ZN18GIM_ShapeRetriever13getChildShapeEi.exit
                                        #   in Loop: Header=BB16_19 Depth=1
	move	$s6, $a0
	beqz	$s3, .LBB16_26
# %bb.24:                               #   in Loop: Header=BB16_19 Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a3, $a0, 232
.Ltmp175:                               # EH_LABEL
	addi.d	$a0, $sp, 64
	move	$a1, $fp
	move	$a2, $s7
	jirl	$ra, $a3, 0
.Ltmp176:                               # EH_LABEL
# %bb.25:                               #   in Loop: Header=BB16_19 Depth=1
	fld.s	$fa5, $sp, 64
	fld.s	$fa6, $sp, 80
	fld.s	$fa3, $sp, 572
	fld.s	$fa2, $sp, 568
	fld.s	$fa7, $sp, 96
	fld.s	$fa4, $sp, 576
	fmul.s	$fa0, $fa6, $fa3
	fld.s	$ft0, $sp, 84
	fmadd.s	$fa0, $fa5, $fa2, $fa0
	fmadd.s	$fa0, $fa7, $fa4, $fa0
	fld.s	$ft1, $sp, 68
	fmul.s	$fa1, $fa3, $ft0
	fld.s	$ft2, $sp, 100
	fld.s	$ft3, $sp, 88
	fld.s	$ft4, $sp, 72
	fmadd.s	$fa1, $ft1, $fa2, $fa1
	fmadd.s	$fa1, $ft2, $fa4, $fa1
	fmul.s	$ft5, $fa3, $ft3
	fmadd.s	$ft5, $ft4, $fa2, $ft5
	fld.s	$ft6, $sp, 104
	fld.s	$ft7, $sp, 588
	fld.s	$ft8, $sp, 584
	fld.s	$ft9, $sp, 592
	fmadd.s	$ft5, $ft6, $fa4, $ft5
	fmul.s	$ft10, $fa6, $ft7
	fmadd.s	$ft10, $fa5, $ft8, $ft10
	fmadd.s	$ft10, $fa7, $ft9, $ft10
	fmul.s	$ft11, $ft0, $ft7
	fld.s	$ft12, $sp, 604
	fld.s	$ft13, $sp, 600
	fmadd.s	$ft11, $ft1, $ft8, $ft11
	fmadd.s	$ft11, $ft2, $ft9, $ft11
	fmul.s	$fa6, $fa6, $ft12
	fmadd.s	$fa5, $fa5, $ft13, $fa6
	fld.s	$fa6, $sp, 608
	fmul.s	$ft14, $ft3, $ft7
	fmadd.s	$ft14, $ft4, $ft8, $ft14
	fmadd.s	$ft14, $ft6, $ft9, $ft14
	fmadd.s	$fa5, $fa7, $fa6, $fa5
	fmul.s	$fa7, $ft0, $ft12
	fmadd.s	$fa7, $ft1, $ft13, $fa7
	fmadd.s	$fa7, $ft2, $fa6, $fa7
	fmul.s	$ft0, $ft3, $ft12
	fmadd.s	$ft0, $ft4, $ft13, $ft0
	fmadd.s	$ft0, $ft6, $fa6, $ft0
	fld.s	$ft1, $sp, 116
	fld.s	$ft2, $sp, 112
	fld.s	$ft3, $sp, 120
	fld.s	$ft4, $sp, 616
	fmul.s	$fa3, $fa3, $ft1
	fmadd.s	$fa2, $fa2, $ft2, $fa3
	fmadd.s	$fa2, $fa4, $ft3, $fa2
	fadd.s	$fa2, $ft4, $fa2
	fld.s	$fa3, $sp, 620
	fmul.s	$fa4, $ft7, $ft1
	fmadd.s	$fa4, $ft8, $ft2, $fa4
	fmadd.s	$fa4, $ft9, $ft3, $fa4
	fadd.s	$fa3, $fa3, $fa4
	fld.s	$fa4, $sp, 624
	fmul.s	$ft1, $ft12, $ft1
	fmadd.s	$ft1, $ft13, $ft2, $ft1
	fmadd.s	$fa6, $fa6, $ft3, $ft1
	fadd.s	$fa4, $fa6, $fa4
	movfr2gr.s	$a0, $fa2
	movfr2gr.s	$a1, $fa3
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa4
	bstrpick.d	$a1, $a1, 31, 0
	fst.s	$fa0, $s1, 8
	fst.s	$fa1, $s1, 12
	fst.s	$ft5, $s1, 16
	st.w	$zero, $s1, 20
	fst.s	$ft10, $s1, 24
	fst.s	$ft11, $s1, 28
	fst.s	$ft14, $s1, 32
	st.w	$zero, $s1, 36
	fst.s	$fa5, $s1, 40
	fst.s	$fa7, $s1, 44
	fst.s	$ft0, $s1, 48
	st.w	$zero, $s1, 52
	st.d	$a0, $s1, 56
	st.d	$a1, $s1, 64
.LBB16_26:                              # %.invoke
                                        #   in Loop: Header=BB16_19 Depth=1
	masknez	$a0, $s6, $s0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	or	$a3, $a1, $a0
	maskeqz	$a0, $s6, $s0
	or	$a4, $a0, $s5
.Ltmp178:                               # EH_LABEL
	move	$a0, $s2
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN27btGImpactCollisionAlgorithm24shape_vs_shape_collisionEP17btCollisionObjectS1_P16btCollisionShapeS3_)
	jirl	$ra, $ra, 0
.Ltmp179:                               # EH_LABEL
# %bb.27:                               #   in Loop: Header=BB16_19 Depth=1
	beqz	$s3, .LBB16_18
# %bb.28:                               #   in Loop: Header=BB16_19 Depth=1
	vld	$vr0, $sp, 568
	addi.d	$a0, $sp, 584
	vld	$vr1, $a0, 0
	addi.d	$a0, $sp, 600
	vld	$vr2, $a0, 0
	addi.d	$a0, $sp, 616
	vld	$vr3, $a0, 0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	vst	$vr0, $a0, 0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	vst	$vr1, $a0, 0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	vst	$vr2, $a0, 0
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	vst	$vr3, $a0, 0
	b	.LBB16_18
.LBB16_29:                              # %._crit_edge
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 200
.Ltmp181:                               # EH_LABEL
	move	$a0, $fp
	jirl	$ra, $a1, 0
.Ltmp182:                               # EH_LABEL
# %bb.30:
	addi.d	$a0, $sp, 248
.Ltmp186:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN13btConvexShapeD2Ev)
	jirl	$ra, $ra, 0
.Ltmp187:                               # EH_LABEL
# %bb.31:
	addi.d	$a0, $sp, 136
.Ltmp192:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN13btConvexShapeD2Ev)
	jirl	$ra, $ra, 0
.Ltmp193:                               # EH_LABEL
.LBB16_32:
	ld.d	$a0, $sp, 488
	beqz	$a0, .LBB16_3
# %bb.33:
	ld.b	$a1, $sp, 496
	andi	$a1, $a1, 1
	beqz	$a1, .LBB16_3
# %bb.34:
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
	b	.LBB16_3
.LBB16_35:
.Ltmp188:                               # EH_LABEL
	move	$fp, $a0
	addi.d	$a0, $sp, 136
.Ltmp189:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN13btConvexShapeD2Ev)
	jirl	$ra, $ra, 0
.Ltmp190:                               # EH_LABEL
	b	.LBB16_44
.LBB16_36:
.Ltmp191:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB16_37:
.Ltmp183:                               # EH_LABEL
	b	.LBB16_43
.LBB16_38:
.Ltmp172:                               # EH_LABEL
	b	.LBB16_43
.LBB16_39:
.Ltmp194:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB16_44
.LBB16_40:
.Ltmp167:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB16_44
.LBB16_41:
.Ltmp177:                               # EH_LABEL
	b	.LBB16_43
.LBB16_42:
.Ltmp180:                               # EH_LABEL
.LBB16_43:
	move	$fp, $a0
.Ltmp184:                               # EH_LABEL
	addi.d	$a0, $sp, 128
	pcaddu18i	$ra, %call36(_ZN18GIM_ShapeRetrieverD2Ev)
	jirl	$ra, $ra, 0
.Ltmp185:                               # EH_LABEL
.LBB16_44:
	ld.d	$a0, $sp, 488
	beqz	$a0, .LBB16_47
# %bb.45:
	ld.b	$a1, $sp, 496
	andi	$a1, $a1, 1
	beqz	$a1, .LBB16_47
# %bb.46:
.Ltmp195:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp196:                               # EH_LABEL
.LBB16_47:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB16_48:
.Ltmp197:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end16:
	.size	_ZN27btGImpactCollisionAlgorithm16gimpact_vs_shapeEP17btCollisionObjectS1_P23btGImpactShapeInterfaceP16btCollisionShapeb, .Lfunc_end16-_ZN27btGImpactCollisionAlgorithm16gimpact_vs_shapeEP17btCollisionObjectS1_P23btGImpactShapeInterfaceP16btCollisionShapeb
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table16:
.Lexception7:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase7-.Lttbaseref7
.Lttbaseref7:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end7-.Lcst_begin7
.Lcst_begin7:
	.uleb128 .Lfunc_begin7-.Lfunc_begin7    # >> Call Site 1 <<
	.uleb128 .Ltmp163-.Lfunc_begin7         #   Call between .Lfunc_begin7 and .Ltmp163
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp163-.Lfunc_begin7         # >> Call Site 2 <<
	.uleb128 .Ltmp166-.Ltmp163              #   Call between .Ltmp163 and .Ltmp166
	.uleb128 .Ltmp167-.Lfunc_begin7         #     jumps to .Ltmp167
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp168-.Lfunc_begin7         # >> Call Site 3 <<
	.uleb128 .Ltmp169-.Ltmp168              #   Call between .Ltmp168 and .Ltmp169
	.uleb128 .Ltmp194-.Lfunc_begin7         #     jumps to .Ltmp194
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp170-.Lfunc_begin7         # >> Call Site 4 <<
	.uleb128 .Ltmp171-.Ltmp170              #   Call between .Ltmp170 and .Ltmp171
	.uleb128 .Ltmp172-.Lfunc_begin7         #     jumps to .Ltmp172
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp173-.Lfunc_begin7         # >> Call Site 5 <<
	.uleb128 .Ltmp174-.Ltmp173              #   Call between .Ltmp173 and .Ltmp174
	.uleb128 .Ltmp180-.Lfunc_begin7         #     jumps to .Ltmp180
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp175-.Lfunc_begin7         # >> Call Site 6 <<
	.uleb128 .Ltmp176-.Ltmp175              #   Call between .Ltmp175 and .Ltmp176
	.uleb128 .Ltmp177-.Lfunc_begin7         #     jumps to .Ltmp177
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp178-.Lfunc_begin7         # >> Call Site 7 <<
	.uleb128 .Ltmp179-.Ltmp178              #   Call between .Ltmp178 and .Ltmp179
	.uleb128 .Ltmp180-.Lfunc_begin7         #     jumps to .Ltmp180
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp181-.Lfunc_begin7         # >> Call Site 8 <<
	.uleb128 .Ltmp182-.Ltmp181              #   Call between .Ltmp181 and .Ltmp182
	.uleb128 .Ltmp183-.Lfunc_begin7         #     jumps to .Ltmp183
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp186-.Lfunc_begin7         # >> Call Site 9 <<
	.uleb128 .Ltmp187-.Ltmp186              #   Call between .Ltmp186 and .Ltmp187
	.uleb128 .Ltmp188-.Lfunc_begin7         #     jumps to .Ltmp188
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp192-.Lfunc_begin7         # >> Call Site 10 <<
	.uleb128 .Ltmp193-.Ltmp192              #   Call between .Ltmp192 and .Ltmp193
	.uleb128 .Ltmp194-.Lfunc_begin7         #     jumps to .Ltmp194
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp193-.Lfunc_begin7         # >> Call Site 11 <<
	.uleb128 .Ltmp189-.Ltmp193              #   Call between .Ltmp193 and .Ltmp189
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp189-.Lfunc_begin7         # >> Call Site 12 <<
	.uleb128 .Ltmp190-.Ltmp189              #   Call between .Ltmp189 and .Ltmp190
	.uleb128 .Ltmp191-.Lfunc_begin7         #     jumps to .Ltmp191
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp190-.Lfunc_begin7         # >> Call Site 13 <<
	.uleb128 .Ltmp184-.Ltmp190              #   Call between .Ltmp190 and .Ltmp184
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp184-.Lfunc_begin7         # >> Call Site 14 <<
	.uleb128 .Ltmp196-.Ltmp184              #   Call between .Ltmp184 and .Ltmp196
	.uleb128 .Ltmp197-.Lfunc_begin7         #     jumps to .Ltmp197
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp196-.Lfunc_begin7         # >> Call Site 15 <<
	.uleb128 .Lfunc_end16-.Ltmp196          #   Call between .Ltmp196 and .Lfunc_end16
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end7:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase7:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZN27btGImpactCollisionAlgorithm37gimpacttrimeshpart_vs_plane_collisionEP17btCollisionObjectS1_P22btGImpactMeshShapePartP18btStaticPlaneShapeb
.LCPI17_0:
	.word	0x358637bd                      # float 9.99999997E-7
	.text
	.globl	_ZN27btGImpactCollisionAlgorithm37gimpacttrimeshpart_vs_plane_collisionEP17btCollisionObjectS1_P22btGImpactMeshShapePartP18btStaticPlaneShapeb
	.p2align	5
	.type	_ZN27btGImpactCollisionAlgorithm37gimpacttrimeshpart_vs_plane_collisionEP17btCollisionObjectS1_P22btGImpactMeshShapePartP18btStaticPlaneShapeb,@function
_ZN27btGImpactCollisionAlgorithm37gimpacttrimeshpart_vs_plane_collisionEP17btCollisionObjectS1_P22btGImpactMeshShapePartP18btStaticPlaneShapeb: # @_ZN27btGImpactCollisionAlgorithm37gimpacttrimeshpart_vs_plane_collisionEP17btCollisionObjectS1_P22btGImpactMeshShapePartP18btStaticPlaneShapeb
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
	st.d	$s5, $sp, 208                   # 8-byte Folded Spill
	st.d	$s6, $sp, 200                   # 8-byte Folded Spill
	st.d	$s7, $sp, 192                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 184                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 176                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 168                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 160                  # 8-byte Folded Spill
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
	move	$s0, $a5
	move	$s4, $a4
	move	$fp, $a3
	move	$s1, $a2
	move	$s2, $a1
	move	$s3, $a0
	vld	$vr0, $a1, 8
	vld	$vr1, $a1, 24
	vld	$vr2, $a1, 40
	vld	$vr3, $a1, 56
	vst	$vr0, $sp, 96
	vst	$vr1, $sp, 112
	vst	$vr2, $sp, 128
	vst	$vr3, $sp, 144
	fld.s	$fa0, $a2, 8
	fld.s	$fa1, $a2, 12
	fld.s	$fa2, $a2, 16
	fld.s	$fa3, $a2, 24
	fld.s	$fa4, $a2, 28
	fld.s	$fa5, $a2, 32
	fld.s	$fa6, $a2, 40
	fld.s	$fa7, $a2, 44
	fld.s	$ft0, $a2, 48
	fld.s	$ft1, $a2, 56
	fld.s	$ft2, $a4, 64
	fld.s	$ft3, $a4, 60
	fld.s	$ft4, $a2, 60
	fld.s	$ft5, $a4, 68
	fmul.s	$fa1, $fa1, $ft2
	fmadd.s	$fa0, $fa0, $ft3, $fa1
	fld.s	$fa1, $a2, 64
	fmadd.s	$fs0, $fa2, $ft5, $fa0
	fst.s	$fs0, $sp, 80
	fmul.s	$fa0, $fa4, $ft2
	fmadd.s	$fa0, $fa3, $ft3, $fa0
	fmadd.s	$fs2, $fa5, $ft5, $fa0
	fst.s	$fs2, $sp, 84
	fmul.s	$fa0, $fa7, $ft2
	fmadd.s	$fa0, $fa6, $ft3, $fa0
	fmadd.s	$fs3, $ft0, $ft5, $fa0
	fst.s	$fs3, $sp, 88
	fmul.s	$fa0, $ft4, $ft2
	ld.d	$a0, $a3, 0
	fld.s	$fa2, $a4, 76
	fmadd.s	$fa0, $ft1, $ft3, $fa0
	fmadd.s	$fa0, $fa1, $ft5, $fa0
	ld.d	$a4, $a0, 16
	fadd.s	$fs1, $fa0, $fa2
	fst.s	$fs1, $sp, 92
	addi.d	$a3, $sp, 64
	addi.d	$a1, $sp, 96
	addi.d	$a2, $sp, 48
	move	$a0, $fp
	jirl	$ra, $a4, 0
	ld.d	$a0, $s4, 0
	ld.d	$a1, $a0, 88
	move	$a0, $s4
	jirl	$ra, $a1, 0
	fld.s	$fa1, $sp, 48
	fld.s	$fa2, $sp, 52
	fsub.s	$fa1, $fa1, $fa0
	fst.s	$fa1, $sp, 48
	fld.s	$fa3, $sp, 56
	fsub.s	$fa2, $fa2, $fa0
	fst.s	$fa2, $sp, 52
	fld.s	$fa4, $sp, 64
	fsub.s	$fa3, $fa3, $fa0
	fst.s	$fa3, $sp, 56
	fld.s	$fa5, $sp, 68
	fadd.s	$fa4, $fa0, $fa4
	fld.s	$fa6, $sp, 72
	fst.s	$fa4, $sp, 64
	fadd.s	$fa5, $fa0, $fa5
	fst.s	$fa5, $sp, 68
	fadd.s	$fa6, $fa0, $fa6
	fadd.s	$fa0, $fa1, $fa4
	fadd.s	$fa1, $fa2, $fa5
	fadd.s	$fa2, $fa3, $fa6
	vldi	$vr3, -1184
	fmul.s	$fa0, $fa0, $fa3
	fmul.s	$fa1, $fa1, $fa3
	fmul.s	$fa2, $fa2, $fa3
	fsub.s	$fa3, $fa4, $fa0
	fsub.s	$fa4, $fa5, $fa1
	fsub.s	$fa5, $fa6, $fa2
	fmul.s	$fa1, $fa1, $fs2
	fmadd.s	$fa0, $fs0, $fa0, $fa1
	fmadd.s	$fa0, $fs3, $fa2, $fa0
	fabs.s	$fa2, $fs0
	fabs.s	$fa1, $fs2
	fabs.s	$fa7, $fs3
	fmul.s	$fa4, $fa4, $fa1
	pcalau12i	$a0, %pc_hi20(.LCPI17_0)
	fld.s	$fa1, $a0, %pc_lo12(.LCPI17_0)
	fmadd.s	$fa2, $fa3, $fa2, $fa4
	fmadd.s	$fa2, $fa5, $fa7, $fa2
	fsub.s	$fa3, $fa0, $fa2
	fadd.s	$fa4, $fs1, $fa1
	fcmp.cult.s	$fcc0, $fa4, $fa3
	fst.s	$fa6, $sp, 72
	bcnez	$fcc0, .LBB17_18
# %bb.1:
	fadd.s	$fa0, $fa0, $fa2
	fadd.s	$fa0, $fa0, $fa1
	fcmp.clt.s	$fcc0, $fa0, $fs1
	bcnez	$fcc0, .LBB17_18
# %bb.2:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 192
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 88
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.d	$a0, $s4, 0
	ld.d	$a1, $a0, 88
	fmov.s	$fs0, $fa0
	move	$a0, $s4
	jirl	$ra, $a1, 0
	ld.w	$a0, $fp, 232
	beqz	$a0, .LBB17_17
# %bb.3:                                # %.lr.ph
	fadd.s	$fs1, $fs0, $fa0
	addi.d	$s4, $a0, -1
	ori	$s5, $zero, 1
	movgr2fr.w	$fs2, $zero
	lu12i.w	$s6, -524288
	lu32i.d	$s6, 0
	addi.w	$s7, $zero, -1
	b	.LBB17_8
	.p2align	4, , 16
.LBB17_4:                               #   in Loop: Header=BB17_8 Depth=1
	ld.d	$a0, $s3, 32
	ld.d	$a3, $a0, 0
	ld.w	$a1, $s3, 52
	ld.w	$a2, $s3, 48
	ld.d	$a3, $a3, 16
	jirl	$ra, $a3, 0
	ld.d	$a0, $s3, 32
	ld.d	$a3, $a0, 0
	ld.w	$a1, $s3, 60
	ld.w	$a2, $s3, 56
	ld.d	$a3, $a3, 24
	jirl	$ra, $a3, 0
	ld.d	$a0, $s3, 24
	beqz	$a0, .LBB17_16
.LBB17_5:                               # %_ZN27btGImpactCollisionAlgorithm15addContactPointEP17btCollisionObjectS1_RK9btVector3S4_f.exit35
                                        #   in Loop: Header=BB17_8 Depth=1
	ld.d	$a3, $s3, 32
	ld.d	$a1, $a3, 0
	st.d	$a0, $a3, 8
	ld.d	$a4, $a1, 32
	addi.d	$a1, $sp, 80
.LBB17_6:                               #   in Loop: Header=BB17_8 Depth=1
	addi.d	$a2, $sp, 32
	move	$a0, $a3
	fmov.s	$fa0, $fs0
	jirl	$ra, $a4, 0
.LBB17_7:                               #   in Loop: Header=BB17_8 Depth=1
	addi.w	$s4, $s4, -1
	beq	$s4, $s7, .LBB17_17
.LBB17_8:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $fp, 236
	ld.w	$a0, $fp, 240
	ld.d	$a2, $fp, 224
	fld.s	$fa0, $fp, 200
	mul.w	$a0, $a0, $s4
	add.d	$a0, $a2, $a0
	bne	$a1, $s5, .LBB17_10
# %bb.9:                                #   in Loop: Header=BB17_8 Depth=1
	fld.d	$fa1, $a0, 0
	fcvt.d.s	$fa0, $fa0
	fld.s	$fa2, $fp, 204
	fmul.d	$fa0, $fa1, $fa0
	fcvt.s.d	$fa0, $fa0
	fld.d	$fa1, $a0, 8
	fcvt.d.s	$fa2, $fa2
	fld.s	$fa3, $fp, 208
	fld.d	$fa4, $a0, 16
	fmul.d	$fa1, $fa1, $fa2
	fcvt.s.d	$fa2, $fa1
	fcvt.d.s	$fa1, $fa3
	fmul.d	$fa1, $fa4, $fa1
	fcvt.s.d	$fa1, $fa1
	b	.LBB17_11
	.p2align	4, , 16
.LBB17_10:                              #   in Loop: Header=BB17_8 Depth=1
	fld.s	$fa1, $a0, 0
	fmul.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $sp, 32
	fld.s	$fa1, $a0, 4
	fld.s	$fa2, $fp, 204
	fmul.s	$fa2, $fa1, $fa2
	fst.s	$fa2, $sp, 36
	fld.s	$fa1, $a0, 8
	fld.s	$fa3, $fp, 208
	fmul.s	$fa1, $fa1, $fa3
.LBB17_11:                              # %_ZNK22btGImpactMeshShapePart9getVertexEiR9btVector3.exit
                                        #   in Loop: Header=BB17_8 Depth=1
	fld.s	$fa3, $sp, 100
	fld.s	$fa4, $sp, 96
	fmul.s	$fa3, $fa3, $fa2
	fld.s	$fa5, $sp, 104
	fmadd.s	$fa3, $fa4, $fa0, $fa3
	fld.s	$fa4, $sp, 144
	fld.s	$fa6, $sp, 116
	fmadd.s	$fa3, $fa5, $fa1, $fa3
	fld.s	$fa5, $sp, 112
	fadd.s	$fa3, $fa4, $fa3
	fmul.s	$fa4, $fa2, $fa6
	fld.s	$fa6, $sp, 132
	fmadd.s	$fa4, $fa5, $fa0, $fa4
	fld.s	$fa5, $sp, 128
	fld.s	$fa7, $sp, 120
	fmul.s	$fa2, $fa2, $fa6
	fld.s	$fa6, $sp, 148
	fmadd.s	$fa0, $fa5, $fa0, $fa2
	fld.s	$fa2, $sp, 136
	fld.s	$fa5, $sp, 152
	fmadd.s	$fa4, $fa7, $fa1, $fa4
	fadd.s	$fa4, $fa6, $fa4
	fmadd.s	$fa0, $fa2, $fa1, $fa0
	fadd.s	$fa5, $fa5, $fa0
	movfr2gr.s	$a0, $fa3
	movfr2gr.s	$a1, $fa4
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa5
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $sp, 32
	fld.s	$fa0, $sp, 84
	fld.s	$fa1, $sp, 80
	fld.s	$fa2, $sp, 88
	fld.s	$fa6, $sp, 92
	fmul.s	$fa4, $fa4, $fa0
	fmadd.s	$fa3, $fa3, $fa1, $fa4
	fmadd.s	$fa3, $fa5, $fa2, $fa3
	fsub.s	$fa3, $fa3, $fa6
	fsub.s	$fs0, $fa3, $fs1
	fcmp.cule.s	$fcc0, $fs2, $fs0
	st.d	$a1, $sp, 40
	bcnez	$fcc0, .LBB17_7
# %bb.12:                               #   in Loop: Header=BB17_8 Depth=1
	beqz	$s0, .LBB17_4
# %bb.13:                               #   in Loop: Header=BB17_8 Depth=1
	movfr2gr.s	$a0, $fa1
	movfr2gr.s	$a1, $fa0
	movfr2gr.s	$a2, $fa2
	xor	$a3, $a0, $s6
	xor	$a0, $a1, $s6
	bstrins.d	$a3, $a0, 63, 32
	xor	$a1, $a2, $s6
	ld.d	$a0, $s3, 32
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a3, $sp, 16
	st.d	$a1, $sp, 24
	ld.d	$a3, $a0, 0
	ld.w	$a1, $s3, 52
	ld.w	$a2, $s3, 48
	ld.d	$a3, $a3, 16
	jirl	$ra, $a3, 0
	ld.d	$a0, $s3, 32
	ld.d	$a3, $a0, 0
	ld.w	$a1, $s3, 60
	ld.w	$a2, $s3, 56
	ld.d	$a3, $a3, 24
	jirl	$ra, $a3, 0
	ld.d	$a0, $s3, 24
	bnez	$a0, .LBB17_15
# %bb.14:                               #   in Loop: Header=BB17_8 Depth=1
	ld.d	$a0, $s3, 8
	ld.d	$a1, $a0, 0
	ld.d	$a3, $a1, 24
	move	$a1, $s1
	move	$a2, $s2
	jirl	$ra, $a3, 0
	st.d	$a0, $s3, 24
.LBB17_15:                              # %_ZN27btGImpactCollisionAlgorithm15addContactPointEP17btCollisionObjectS1_RK9btVector3S4_f.exit
                                        #   in Loop: Header=BB17_8 Depth=1
	ld.d	$a3, $s3, 32
	ld.d	$a1, $a3, 0
	st.d	$a0, $a3, 8
	ld.d	$a4, $a1, 32
	addi.d	$a1, $sp, 16
	b	.LBB17_6
.LBB17_16:                              #   in Loop: Header=BB17_8 Depth=1
	ld.d	$a0, $s3, 8
	ld.d	$a1, $a0, 0
	ld.d	$a3, $a1, 24
	move	$a1, $s2
	move	$a2, $s1
	jirl	$ra, $a3, 0
	st.d	$a0, $s3, 24
	b	.LBB17_5
.LBB17_17:                              # %._crit_edge
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 200
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB17_18:
	fld.d	$fs3, $sp, 160                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 168                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 176                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 184                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 256                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 264                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 272
	ret
.Lfunc_end17:
	.size	_ZN27btGImpactCollisionAlgorithm37gimpacttrimeshpart_vs_plane_collisionEP17btCollisionObjectS1_P22btGImpactMeshShapePartP18btStaticPlaneShapeb, .Lfunc_end17-_ZN27btGImpactCollisionAlgorithm37gimpacttrimeshpart_vs_plane_collisionEP17btCollisionObjectS1_P22btGImpactMeshShapePartP18btStaticPlaneShapeb
	.cfi_endproc
                                        # -- End function
	.globl	_ZN27btGImpactCollisionAlgorithm24gimpact_vs_compoundshapeEP17btCollisionObjectS1_P23btGImpactShapeInterfaceP15btCompoundShapeb # -- Begin function _ZN27btGImpactCollisionAlgorithm24gimpact_vs_compoundshapeEP17btCollisionObjectS1_P23btGImpactShapeInterfaceP15btCompoundShapeb
	.p2align	5
	.type	_ZN27btGImpactCollisionAlgorithm24gimpact_vs_compoundshapeEP17btCollisionObjectS1_P23btGImpactShapeInterfaceP15btCompoundShapeb,@function
_ZN27btGImpactCollisionAlgorithm24gimpact_vs_compoundshapeEP17btCollisionObjectS1_P23btGImpactShapeInterfaceP15btCompoundShapeb: # @_ZN27btGImpactCollisionAlgorithm24gimpact_vs_compoundshapeEP17btCollisionObjectS1_P23btGImpactShapeInterfaceP15btCompoundShapeb
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -320
	.cfi_def_cfa_offset 320
	st.d	$ra, $sp, 312                   # 8-byte Folded Spill
	st.d	$fp, $sp, 304                   # 8-byte Folded Spill
	st.d	$s0, $sp, 296                   # 8-byte Folded Spill
	st.d	$s1, $sp, 288                   # 8-byte Folded Spill
	st.d	$s2, $sp, 280                   # 8-byte Folded Spill
	st.d	$s3, $sp, 272                   # 8-byte Folded Spill
	st.d	$s4, $sp, 264                   # 8-byte Folded Spill
	st.d	$s5, $sp, 256                   # 8-byte Folded Spill
	st.d	$s6, $sp, 248                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 240                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 232                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 224                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 216                  # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	.cfi_offset 56, -80
	.cfi_offset 57, -88
	.cfi_offset 58, -96
	.cfi_offset 59, -104
	ld.w	$s5, $a4, 28
	beqz	$s5, .LBB18_3
# %bb.1:                                # %.lr.ph
	move	$fp, $a4
	move	$s0, $a5
	move	$s1, $a3
	move	$s2, $a2
	move	$s3, $a1
	move	$s4, $a0
	vld	$vr0, $a2, 8
	fld.s	$fs0, $a2, 8
	vld	$vr1, $a2, 24
	fld.s	$fs1, $a2, 24
	vld	$vr2, $a2, 40
	fld.s	$fs2, $a2, 40
	vld	$vr3, $a2, 56
	fld.s	$fs3, $a2, 56
	vreplvei.w	$vr4, $vr0, 1
	vst	$vr4, $sp, 128                  # 16-byte Folded Spill
	vst	$vr0, $sp, 192                  # 16-byte Folded Spill
	vreplvei.w	$vr0, $vr0, 2
	vst	$vr0, $sp, 112                  # 16-byte Folded Spill
	vreplvei.w	$vr0, $vr1, 1
	vst	$vr0, $sp, 96                   # 16-byte Folded Spill
	vst	$vr1, $sp, 176                  # 16-byte Folded Spill
	vreplvei.w	$vr0, $vr1, 2
	vst	$vr0, $sp, 80                   # 16-byte Folded Spill
	vreplvei.w	$vr0, $vr2, 1
	vst	$vr0, $sp, 64                   # 16-byte Folded Spill
	vst	$vr2, $sp, 160                  # 16-byte Folded Spill
	vreplvei.w	$vr0, $vr2, 2
	vst	$vr0, $sp, 48                   # 16-byte Folded Spill
	vreplvei.w	$vr0, $vr3, 1
	vst	$vr0, $sp, 32                   # 16-byte Folded Spill
	vst	$vr3, $sp, 144                  # 16-byte Folded Spill
	vreplvei.w	$vr0, $vr3, 2
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	ori	$a0, $zero, 88
	mul.d	$s6, $s5, $a0
	.p2align	4, , 16
.LBB18_2:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 40
	add.d	$a0, $a0, $s6
	fld.s	$fa0, $a0, -72
	addi.d	$s5, $s5, -1
	ld.d	$a4, $a0, -24
	fld.s	$fa1, $a0, -88
	vld	$vr15, $sp, 128                 # 16-byte Folded Reload
	fmul.s	$fa2, $ft7, $fa0
	fld.s	$fa3, $a0, -56
	fld.s	$fa4, $a0, -68
	fld.s	$fa5, $a0, -84
	fmadd.s	$fa2, $fa1, $fs0, $fa2
	vld	$vr16, $sp, 112                 # 16-byte Folded Reload
	fmadd.s	$fa2, $fa3, $ft8, $fa2
	fmul.s	$fa6, $ft7, $fa4
	fmadd.s	$fa6, $fa5, $fs0, $fa6
	fld.s	$fa7, $a0, -52
	fld.s	$ft0, $a0, -64
	fld.s	$ft1, $a0, -80
	fld.s	$ft2, $a0, -48
	fmadd.s	$fa6, $fa7, $ft8, $fa6
	fmul.s	$ft3, $ft7, $ft0
	fmadd.s	$ft3, $ft1, $fs0, $ft3
	fmadd.s	$ft3, $ft2, $ft8, $ft3
	vld	$vr17, $sp, 96                  # 16-byte Folded Reload
	fmul.s	$ft4, $ft9, $fa0
	fmadd.s	$ft4, $fa1, $fs1, $ft4
	vld	$vr18, $sp, 80                  # 16-byte Folded Reload
	fmadd.s	$ft4, $fa3, $ft10, $ft4
	fmul.s	$ft5, $ft9, $fa4
	fmadd.s	$ft5, $fa5, $fs1, $ft5
	fmadd.s	$ft5, $fa7, $ft10, $ft5
	fmul.s	$ft6, $ft9, $ft0
	fmadd.s	$ft6, $ft1, $fs1, $ft6
	fmadd.s	$ft6, $ft2, $ft10, $ft6
	vld	$vr19, $sp, 64                  # 16-byte Folded Reload
	fmul.s	$fa0, $ft11, $fa0
	fmadd.s	$fa0, $fa1, $fs2, $fa0
	vld	$vr20, $sp, 48                  # 16-byte Folded Reload
	fmadd.s	$fa0, $fa3, $ft12, $fa0
	fmul.s	$fa1, $ft11, $fa4
	fmadd.s	$fa1, $fa5, $fs2, $fa1
	fmadd.s	$fa1, $fa7, $ft12, $fa1
	fmul.s	$fa3, $ft11, $ft0
	fmadd.s	$fa3, $ft1, $fs2, $fa3
	fld.s	$fa4, $a0, -36
	fld.s	$fa5, $a0, -40
	fld.s	$fa7, $a0, -32
	fmadd.s	$fa3, $ft2, $ft12, $fa3
	fmul.s	$ft0, $ft7, $fa4
	fmadd.s	$ft0, $fs0, $fa5, $ft0
	fmadd.s	$ft0, $ft8, $fa7, $ft0
	fadd.s	$ft0, $fs3, $ft0
	fmul.s	$ft1, $ft9, $fa4
	fmadd.s	$ft1, $fs1, $fa5, $ft1
	fmadd.s	$ft1, $ft10, $fa7, $ft1
	vld	$vr10, $sp, 32                  # 16-byte Folded Reload
	fadd.s	$ft1, $ft2, $ft1
	fmul.s	$fa4, $ft11, $fa4
	fmadd.s	$fa4, $fs2, $fa5, $fa4
	fmadd.s	$fa4, $ft12, $fa7, $fa4
	vld	$vr5, $sp, 16                   # 16-byte Folded Reload
	fadd.s	$fa4, $fa5, $fa4
	movfr2gr.s	$a0, $ft0
	movfr2gr.s	$a1, $ft1
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa4
	bstrpick.d	$a1, $a1, 31, 0
	fst.s	$fa2, $s2, 8
	fst.s	$fa6, $s2, 12
	fst.s	$ft3, $s2, 16
	st.w	$zero, $s2, 20
	fst.s	$ft4, $s2, 24
	fst.s	$ft5, $s2, 28
	fst.s	$ft6, $s2, 32
	st.w	$zero, $s2, 36
	fst.s	$fa0, $s2, 40
	fst.s	$fa1, $s2, 44
	fst.s	$fa3, $s2, 48
	st.w	$zero, $s2, 52
	st.d	$a0, $s2, 56
	st.d	$a1, $s2, 64
	move	$a0, $s4
	move	$a1, $s3
	move	$a2, $s2
	move	$a3, $s1
	move	$a5, $s0
	pcaddu18i	$ra, %call36(_ZN27btGImpactCollisionAlgorithm16gimpact_vs_shapeEP17btCollisionObjectS1_P23btGImpactShapeInterfaceP16btCollisionShapeb)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 192                  # 16-byte Folded Reload
	vst	$vr0, $s2, 8
	vld	$vr0, $sp, 176                  # 16-byte Folded Reload
	vst	$vr0, $s2, 24
	vld	$vr0, $sp, 160                  # 16-byte Folded Reload
	vst	$vr0, $s2, 40
	vld	$vr0, $sp, 144                  # 16-byte Folded Reload
	vst	$vr0, $s2, 56
	addi.d	$s6, $s6, -88
	bnez	$s5, .LBB18_2
.LBB18_3:                               # %._crit_edge
	fld.d	$fs3, $sp, 216                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 224                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 232                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 240                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 304                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 312                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 320
	ret
.Lfunc_end18:
	.size	_ZN27btGImpactCollisionAlgorithm24gimpact_vs_compoundshapeEP17btCollisionObjectS1_P23btGImpactShapeInterfaceP15btCompoundShapeb, .Lfunc_end18-_ZN27btGImpactCollisionAlgorithm24gimpact_vs_compoundshapeEP17btCollisionObjectS1_P23btGImpactShapeInterfaceP15btCompoundShapeb
	.cfi_endproc
                                        # -- End function
	.globl	_ZN27btGImpactCollisionAlgorithm18gimpact_vs_concaveEP17btCollisionObjectS1_P23btGImpactShapeInterfaceP14btConcaveShapeb # -- Begin function _ZN27btGImpactCollisionAlgorithm18gimpact_vs_concaveEP17btCollisionObjectS1_P23btGImpactShapeInterfaceP14btConcaveShapeb
	.p2align	5
	.type	_ZN27btGImpactCollisionAlgorithm18gimpact_vs_concaveEP17btCollisionObjectS1_P23btGImpactShapeInterfaceP14btConcaveShapeb,@function
_ZN27btGImpactCollisionAlgorithm18gimpact_vs_concaveEP17btCollisionObjectS1_P23btGImpactShapeInterfaceP14btConcaveShapeb: # @_ZN27btGImpactCollisionAlgorithm18gimpact_vs_concaveEP17btCollisionObjectS1_P23btGImpactShapeInterfaceP14btConcaveShapeb
.Lfunc_begin8:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception8
# %bb.0:
	addi.d	$sp, $sp, -224
	.cfi_def_cfa_offset 224
	st.d	$ra, $sp, 216                   # 8-byte Folded Spill
	st.d	$fp, $sp, 208                   # 8-byte Folded Spill
	st.d	$s0, $sp, 200                   # 8-byte Folded Spill
	st.d	$s1, $sp, 192                   # 8-byte Folded Spill
	st.d	$s2, $sp, 184                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 176                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 168                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 160                  # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 56, -48
	.cfi_offset 57, -56
	.cfi_offset 58, -64
	move	$fp, $a4
	move	$s0, $a3
	move	$s2, $a2
	move	$s1, $a1
	pcalau12i	$a1, %pc_hi20(_ZTV25btGImpactTriangleCallback+16)
	addi.d	$a1, $a1, %pc_lo12(_ZTV25btGImpactTriangleCallback+16)
	ld.d	$a2, $a4, 0
	st.d	$a1, $sp, 112
	st.d	$a0, $sp, 120
	st.d	$s1, $sp, 128
	ld.d	$a1, $a2, 88
	st.d	$s2, $sp, 136
	st.d	$a3, $sp, 144
	st.b	$a5, $sp, 152
.Ltmp198:                               # EH_LABEL
	move	$a0, $a4
	jirl	$ra, $a1, 0
.Ltmp199:                               # EH_LABEL
# %bb.1:
	fst.s	$fa0, $sp, 156
	fld.s	$fa2, $s2, 8
	fld.s	$fa7, $s2, 24
	fld.s	$fa5, $s2, 40
	fld.s	$fa1, $s2, 12
	fld.s	$fa6, $s2, 28
	fld.s	$fa3, $s2, 44
	fld.s	$fa0, $s2, 16
	fld.s	$fa4, $s2, 32
	fld.s	$ft1, $s2, 56
	fld.s	$ft2, $s2, 60
	fld.s	$ft3, $s2, 64
	fld.s	$ft0, $s2, 48
	fneg.s	$ft1, $ft1
	fneg.s	$ft2, $ft2
	fneg.s	$ft3, $ft3
	fmul.s	$ft4, $fa7, $ft2
	fmadd.s	$ft4, $fa2, $ft1, $ft4
	fmadd.s	$ft4, $fa5, $ft3, $ft4
	fmul.s	$ft5, $fa6, $ft2
	fmadd.s	$ft5, $fa1, $ft1, $ft5
	fmadd.s	$ft5, $fa3, $ft3, $ft5
	fmul.s	$ft2, $fa4, $ft2
	fld.s	$ft6, $s1, 24
	fmadd.s	$ft1, $fa0, $ft1, $ft2
	fmadd.s	$ft3, $ft0, $ft3, $ft1
	fld.s	$ft7, $s1, 8
	fmul.s	$ft1, $fa7, $ft6
	fld.s	$ft8, $s1, 40
	fld.s	$ft9, $s1, 28
	fld.s	$ft10, $s1, 12
	fmadd.s	$ft1, $ft7, $fa2, $ft1
	fmadd.s	$ft11, $ft8, $fa5, $ft1
	fmul.s	$ft1, $fa7, $ft9
	fmadd.s	$ft1, $ft10, $fa2, $ft1
	fld.s	$ft12, $s1, 44
	fld.s	$ft13, $s1, 32
	fld.s	$ft14, $s1, 16
	fld.s	$ft15, $s1, 48
	fmadd.s	$ft1, $ft12, $fa5, $ft1
	fmul.s	$ft2, $fa7, $ft13
	fmadd.s	$ft2, $ft14, $fa2, $ft2
	fmadd.s	$ft2, $ft15, $fa5, $ft2
	fmul.s	$fs0, $fa6, $ft6
	fmadd.s	$fs0, $ft7, $fa1, $fs0
	fmadd.s	$fs0, $ft8, $fa3, $fs0
	fmul.s	$fs1, $fa6, $ft9
	fmadd.s	$fs1, $ft10, $fa1, $fs1
	fmadd.s	$fs1, $ft12, $fa3, $fs1
	fmul.s	$fs2, $fa6, $ft13
	fmadd.s	$fs2, $ft14, $fa1, $fs2
	fmadd.s	$fs2, $ft15, $fa3, $fs2
	fmul.s	$ft6, $fa4, $ft6
	fmadd.s	$ft6, $ft7, $fa0, $ft6
	fmadd.s	$ft6, $ft8, $ft0, $ft6
	fmul.s	$ft7, $fa4, $ft9
	fmadd.s	$ft7, $ft10, $fa0, $ft7
	fmadd.s	$ft7, $ft12, $ft0, $ft7
	fmul.s	$ft8, $fa4, $ft13
	fmadd.s	$ft8, $ft14, $fa0, $ft8
	fld.s	$ft9, $s1, 60
	fld.s	$ft10, $s1, 56
	fld.s	$ft12, $s1, 64
	fmadd.s	$ft8, $ft15, $ft0, $ft8
	fmul.s	$fa7, $fa7, $ft9
	fmadd.s	$fa2, $fa2, $ft10, $fa7
	fmadd.s	$fa2, $fa5, $ft12, $fa2
	fadd.s	$fa2, $ft4, $fa2
	fmul.s	$fa5, $fa6, $ft9
	fmadd.s	$fa1, $fa1, $ft10, $fa5
	fmadd.s	$fa1, $fa3, $ft12, $fa1
	fadd.s	$fa1, $ft5, $fa1
	fmul.s	$fa3, $fa4, $ft9
	fmadd.s	$fa0, $fa0, $ft10, $fa3
	fmadd.s	$fa0, $ft0, $ft12, $fa0
	fadd.s	$fa0, $ft3, $fa0
	movfr2gr.s	$a0, $fa2
	movfr2gr.s	$a1, $fa1
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa0
	bstrpick.d	$a1, $a1, 31, 0
	fst.s	$ft11, $sp, 48
	fst.s	$fs0, $sp, 64
	fst.s	$fs1, $sp, 68
	fst.s	$fs2, $sp, 72
	st.w	$zero, $sp, 76
	fst.s	$ft6, $sp, 80
	fst.s	$ft7, $sp, 84
	st.d	$a0, $sp, 96
	ld.d	$a0, $s0, 0
	fst.s	$ft8, $sp, 88
	st.w	$zero, $sp, 92
	st.d	$a1, $sp, 104
	ld.d	$a4, $a0, 16
	fst.s	$ft1, $sp, 52
	fst.s	$ft2, $sp, 56
	st.w	$zero, $sp, 60
.Ltmp201:                               # EH_LABEL
	addi.d	$a1, $sp, 48
	addi.d	$a2, $sp, 32
	addi.d	$a3, $sp, 16
	move	$a0, $s0
	jirl	$ra, $a4, 0
.Ltmp202:                               # EH_LABEL
# %bb.2:
	ld.d	$a0, $fp, 0
	ld.d	$a4, $a0, 96
.Ltmp203:                               # EH_LABEL
	addi.d	$a1, $sp, 112
	addi.d	$a2, $sp, 32
	addi.d	$a3, $sp, 16
	move	$a0, $fp
	jirl	$ra, $a4, 0
.Ltmp204:                               # EH_LABEL
# %bb.3:
	addi.d	$a0, $sp, 112
	pcaddu18i	$ra, %call36(_ZN18btTriangleCallbackD2Ev)
	jirl	$ra, $ra, 0
	fld.d	$fs2, $sp, 160                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 168                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 176                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 208                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 216                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 224
	ret
.LBB19_4:
.Ltmp200:                               # EH_LABEL
	b	.LBB19_6
.LBB19_5:
.Ltmp205:                               # EH_LABEL
.LBB19_6:
	move	$fp, $a0
.Ltmp206:                               # EH_LABEL
	addi.d	$a0, $sp, 112
	pcaddu18i	$ra, %call36(_ZN18btTriangleCallbackD2Ev)
	jirl	$ra, $ra, 0
.Ltmp207:                               # EH_LABEL
# %bb.7:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB19_8:
.Ltmp208:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end19:
	.size	_ZN27btGImpactCollisionAlgorithm18gimpact_vs_concaveEP17btCollisionObjectS1_P23btGImpactShapeInterfaceP14btConcaveShapeb, .Lfunc_end19-_ZN27btGImpactCollisionAlgorithm18gimpact_vs_concaveEP17btCollisionObjectS1_P23btGImpactShapeInterfaceP14btConcaveShapeb
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table19:
.Lexception8:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase8-.Lttbaseref8
.Lttbaseref8:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end8-.Lcst_begin8
.Lcst_begin8:
	.uleb128 .Ltmp198-.Lfunc_begin8         # >> Call Site 1 <<
	.uleb128 .Ltmp199-.Ltmp198              #   Call between .Ltmp198 and .Ltmp199
	.uleb128 .Ltmp200-.Lfunc_begin8         #     jumps to .Ltmp200
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp201-.Lfunc_begin8         # >> Call Site 2 <<
	.uleb128 .Ltmp204-.Ltmp201              #   Call between .Ltmp201 and .Ltmp204
	.uleb128 .Ltmp205-.Lfunc_begin8         #     jumps to .Ltmp205
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp204-.Lfunc_begin8         # >> Call Site 3 <<
	.uleb128 .Ltmp206-.Ltmp204              #   Call between .Ltmp204 and .Ltmp206
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp206-.Lfunc_begin8         # >> Call Site 4 <<
	.uleb128 .Ltmp207-.Ltmp206              #   Call between .Ltmp206 and .Ltmp207
	.uleb128 .Ltmp208-.Lfunc_begin8         #     jumps to .Ltmp208
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp207-.Lfunc_begin8         # >> Call Site 5 <<
	.uleb128 .Lfunc_end19-.Ltmp207          #   Call between .Ltmp207 and .Lfunc_end19
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end8:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase8:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN27btGImpactCollisionAlgorithm16processCollisionEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult # -- Begin function _ZN27btGImpactCollisionAlgorithm16processCollisionEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult
	.p2align	5
	.type	_ZN27btGImpactCollisionAlgorithm16processCollisionEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult,@function
_ZN27btGImpactCollisionAlgorithm16processCollisionEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult: # @_ZN27btGImpactCollisionAlgorithm16processCollisionEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult
	.cfi_startproc
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
	move	$s0, $a0
	ld.d	$a5, $a0, 24
	move	$s3, $a4
	move	$s2, $a3
	move	$fp, $a2
	move	$s1, $a1
	beqz	$a5, .LBB20_2
# %bb.1:
	ld.d	$a0, $s0, 8
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a1, 32
	move	$a1, $a5
	jirl	$ra, $a2, 0
	st.d	$zero, $s0, 24
.LBB20_2:                               # %_ZN27btGImpactCollisionAlgorithm23destroyContactManifoldsEv.exit.i
	ld.d	$a0, $s0, 16
	beqz	$a0, .LBB20_4
# %bb.3:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 0
	jirl	$ra, $a1, 0
	ld.d	$a0, $s0, 8
	ld.d	$a2, $a0, 0
	ld.d	$a1, $s0, 16
	ld.d	$a2, $a2, 104
	jirl	$ra, $a2, 0
	st.d	$zero, $s0, 16
.LBB20_4:                               # %_ZN27btGImpactCollisionAlgorithm10clearCacheEv.exit
	addi.w	$a0, $zero, -1
	st.d	$a0, $s0, 56
	st.d	$a0, $s0, 48
	ld.d	$a6, $s1, 200
	ld.d	$a4, $fp, 200
	ld.w	$a2, $a6, 8
	ld.w	$a0, $a4, 8
	st.d	$s3, $s0, 32
	ori	$a1, $zero, 25
	st.d	$s2, $s0, 40
	bne	$a2, $a1, .LBB20_7
# %bb.5:
	bne	$a0, $a1, .LBB20_9
# %bb.6:
	move	$a0, $s0
	move	$a1, $s1
	move	$a2, $fp
	move	$a3, $a6
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(_ZN27btGImpactCollisionAlgorithm18gimpact_vs_gimpactEP17btCollisionObjectS1_P23btGImpactShapeInterfaceS3_)
	jr	$t8
.LBB20_7:
	bne	$a0, $a1, .LBB20_11
# %bb.8:
	ori	$a5, $zero, 1
	move	$a0, $s0
	move	$a1, $fp
	move	$a2, $s1
	move	$a3, $a4
	move	$a4, $a6
	b	.LBB20_10
.LBB20_9:
	move	$a0, $s0
	move	$a1, $s1
	move	$a2, $fp
	move	$a3, $a6
	move	$a5, $zero
.LBB20_10:
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(_ZN27btGImpactCollisionAlgorithm16gimpact_vs_shapeEP17btCollisionObjectS1_P23btGImpactShapeInterfaceP16btCollisionShapeb)
	jr	$t8
.LBB20_11:
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end20:
	.size	_ZN27btGImpactCollisionAlgorithm16processCollisionEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult, .Lfunc_end20-_ZN27btGImpactCollisionAlgorithm16processCollisionEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult
	.cfi_endproc
                                        # -- End function
	.globl	_ZN27btGImpactCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult # -- Begin function _ZN27btGImpactCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult
	.p2align	5
	.type	_ZN27btGImpactCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult,@function
_ZN27btGImpactCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult: # @_ZN27btGImpactCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult
# %bb.0:
	vldi	$vr0, -1168
	ret
.Lfunc_end21:
	.size	_ZN27btGImpactCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult, .Lfunc_end21-_ZN27btGImpactCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult
                                        # -- End function
	.section	.text._ZN30btCollisionAlgorithmCreateFuncD2Ev,"axG",@progbits,_ZN30btCollisionAlgorithmCreateFuncD2Ev,comdat
	.weak	_ZN30btCollisionAlgorithmCreateFuncD2Ev # -- Begin function _ZN30btCollisionAlgorithmCreateFuncD2Ev
	.p2align	5
	.type	_ZN30btCollisionAlgorithmCreateFuncD2Ev,@function
_ZN30btCollisionAlgorithmCreateFuncD2Ev: # @_ZN30btCollisionAlgorithmCreateFuncD2Ev
# %bb.0:
	ret
.Lfunc_end22:
	.size	_ZN30btCollisionAlgorithmCreateFuncD2Ev, .Lfunc_end22-_ZN30btCollisionAlgorithmCreateFuncD2Ev
                                        # -- End function
	.text
	.globl	_ZN27btGImpactCollisionAlgorithm17registerAlgorithmEP21btCollisionDispatcher # -- Begin function _ZN27btGImpactCollisionAlgorithm17registerAlgorithmEP21btCollisionDispatcher
	.p2align	5
	.type	_ZN27btGImpactCollisionAlgorithm17registerAlgorithmEP21btCollisionDispatcher,@function
_ZN27btGImpactCollisionAlgorithm17registerAlgorithmEP21btCollisionDispatcher: # @_ZN27btGImpactCollisionAlgorithm17registerAlgorithmEP21btCollisionDispatcher
	.cfi_startproc
# %bb.0:                                # %.preheader.preheader
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(g_gimpact_cf)
	addi.d	$s0, $a0, %pc_lo12(g_gimpact_cf)
	ori	$a1, $zero, 25
	move	$a0, $fp
	move	$a2, $zero
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZN21btCollisionDispatcher27registerCollisionCreateFuncEiiP30btCollisionAlgorithmCreateFunc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 25
	ori	$a2, $zero, 1
	move	$a0, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZN21btCollisionDispatcher27registerCollisionCreateFuncEiiP30btCollisionAlgorithmCreateFunc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 25
	ori	$a2, $zero, 2
	move	$a0, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZN21btCollisionDispatcher27registerCollisionCreateFuncEiiP30btCollisionAlgorithmCreateFunc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 25
	ori	$a2, $zero, 3
	move	$a0, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZN21btCollisionDispatcher27registerCollisionCreateFuncEiiP30btCollisionAlgorithmCreateFunc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 25
	ori	$a2, $zero, 4
	move	$a0, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZN21btCollisionDispatcher27registerCollisionCreateFuncEiiP30btCollisionAlgorithmCreateFunc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 25
	ori	$a2, $zero, 5
	move	$a0, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZN21btCollisionDispatcher27registerCollisionCreateFuncEiiP30btCollisionAlgorithmCreateFunc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 25
	ori	$a2, $zero, 6
	move	$a0, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZN21btCollisionDispatcher27registerCollisionCreateFuncEiiP30btCollisionAlgorithmCreateFunc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 25
	ori	$a2, $zero, 7
	move	$a0, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZN21btCollisionDispatcher27registerCollisionCreateFuncEiiP30btCollisionAlgorithmCreateFunc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 25
	ori	$a2, $zero, 8
	move	$a0, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZN21btCollisionDispatcher27registerCollisionCreateFuncEiiP30btCollisionAlgorithmCreateFunc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 25
	ori	$a2, $zero, 9
	move	$a0, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZN21btCollisionDispatcher27registerCollisionCreateFuncEiiP30btCollisionAlgorithmCreateFunc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 25
	ori	$a2, $zero, 10
	move	$a0, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZN21btCollisionDispatcher27registerCollisionCreateFuncEiiP30btCollisionAlgorithmCreateFunc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 25
	ori	$a2, $zero, 11
	move	$a0, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZN21btCollisionDispatcher27registerCollisionCreateFuncEiiP30btCollisionAlgorithmCreateFunc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 25
	ori	$a2, $zero, 12
	move	$a0, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZN21btCollisionDispatcher27registerCollisionCreateFuncEiiP30btCollisionAlgorithmCreateFunc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 25
	ori	$a2, $zero, 13
	move	$a0, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZN21btCollisionDispatcher27registerCollisionCreateFuncEiiP30btCollisionAlgorithmCreateFunc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 25
	ori	$a2, $zero, 14
	move	$a0, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZN21btCollisionDispatcher27registerCollisionCreateFuncEiiP30btCollisionAlgorithmCreateFunc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 25
	ori	$a2, $zero, 15
	move	$a0, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZN21btCollisionDispatcher27registerCollisionCreateFuncEiiP30btCollisionAlgorithmCreateFunc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 25
	ori	$a2, $zero, 16
	move	$a0, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZN21btCollisionDispatcher27registerCollisionCreateFuncEiiP30btCollisionAlgorithmCreateFunc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 25
	ori	$a2, $zero, 17
	move	$a0, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZN21btCollisionDispatcher27registerCollisionCreateFuncEiiP30btCollisionAlgorithmCreateFunc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 25
	ori	$a2, $zero, 18
	move	$a0, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZN21btCollisionDispatcher27registerCollisionCreateFuncEiiP30btCollisionAlgorithmCreateFunc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 25
	ori	$a2, $zero, 19
	move	$a0, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZN21btCollisionDispatcher27registerCollisionCreateFuncEiiP30btCollisionAlgorithmCreateFunc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 25
	ori	$a2, $zero, 20
	move	$a0, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZN21btCollisionDispatcher27registerCollisionCreateFuncEiiP30btCollisionAlgorithmCreateFunc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 25
	ori	$a2, $zero, 21
	move	$a0, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZN21btCollisionDispatcher27registerCollisionCreateFuncEiiP30btCollisionAlgorithmCreateFunc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 25
	ori	$a2, $zero, 22
	move	$a0, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZN21btCollisionDispatcher27registerCollisionCreateFuncEiiP30btCollisionAlgorithmCreateFunc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 25
	ori	$a2, $zero, 23
	move	$a0, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZN21btCollisionDispatcher27registerCollisionCreateFuncEiiP30btCollisionAlgorithmCreateFunc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 25
	ori	$a2, $zero, 24
	move	$a0, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZN21btCollisionDispatcher27registerCollisionCreateFuncEiiP30btCollisionAlgorithmCreateFunc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 25
	ori	$a2, $zero, 25
	move	$a0, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZN21btCollisionDispatcher27registerCollisionCreateFuncEiiP30btCollisionAlgorithmCreateFunc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 25
	ori	$a2, $zero, 26
	move	$a0, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZN21btCollisionDispatcher27registerCollisionCreateFuncEiiP30btCollisionAlgorithmCreateFunc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 25
	ori	$a2, $zero, 27
	move	$a0, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZN21btCollisionDispatcher27registerCollisionCreateFuncEiiP30btCollisionAlgorithmCreateFunc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 25
	ori	$a2, $zero, 28
	move	$a0, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZN21btCollisionDispatcher27registerCollisionCreateFuncEiiP30btCollisionAlgorithmCreateFunc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 25
	ori	$a2, $zero, 29
	move	$a0, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZN21btCollisionDispatcher27registerCollisionCreateFuncEiiP30btCollisionAlgorithmCreateFunc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 25
	ori	$a2, $zero, 30
	move	$a0, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZN21btCollisionDispatcher27registerCollisionCreateFuncEiiP30btCollisionAlgorithmCreateFunc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 25
	ori	$a2, $zero, 31
	move	$a0, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZN21btCollisionDispatcher27registerCollisionCreateFuncEiiP30btCollisionAlgorithmCreateFunc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 25
	ori	$a2, $zero, 32
	move	$a0, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZN21btCollisionDispatcher27registerCollisionCreateFuncEiiP30btCollisionAlgorithmCreateFunc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 25
	ori	$a2, $zero, 33
	move	$a0, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZN21btCollisionDispatcher27registerCollisionCreateFuncEiiP30btCollisionAlgorithmCreateFunc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 25
	ori	$a2, $zero, 34
	move	$a0, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZN21btCollisionDispatcher27registerCollisionCreateFuncEiiP30btCollisionAlgorithmCreateFunc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 25
	ori	$a2, $zero, 35
	move	$a0, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZN21btCollisionDispatcher27registerCollisionCreateFuncEiiP30btCollisionAlgorithmCreateFunc)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 25
	move	$a0, $fp
	move	$a1, $zero
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZN21btCollisionDispatcher27registerCollisionCreateFuncEiiP30btCollisionAlgorithmCreateFunc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	ori	$a2, $zero, 25
	move	$a0, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZN21btCollisionDispatcher27registerCollisionCreateFuncEiiP30btCollisionAlgorithmCreateFunc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	ori	$a2, $zero, 25
	move	$a0, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZN21btCollisionDispatcher27registerCollisionCreateFuncEiiP30btCollisionAlgorithmCreateFunc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 3
	ori	$a2, $zero, 25
	move	$a0, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZN21btCollisionDispatcher27registerCollisionCreateFuncEiiP30btCollisionAlgorithmCreateFunc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 4
	ori	$a2, $zero, 25
	move	$a0, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZN21btCollisionDispatcher27registerCollisionCreateFuncEiiP30btCollisionAlgorithmCreateFunc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 5
	ori	$a2, $zero, 25
	move	$a0, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZN21btCollisionDispatcher27registerCollisionCreateFuncEiiP30btCollisionAlgorithmCreateFunc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 6
	ori	$a2, $zero, 25
	move	$a0, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZN21btCollisionDispatcher27registerCollisionCreateFuncEiiP30btCollisionAlgorithmCreateFunc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 7
	ori	$a2, $zero, 25
	move	$a0, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZN21btCollisionDispatcher27registerCollisionCreateFuncEiiP30btCollisionAlgorithmCreateFunc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 8
	ori	$a2, $zero, 25
	move	$a0, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZN21btCollisionDispatcher27registerCollisionCreateFuncEiiP30btCollisionAlgorithmCreateFunc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 9
	ori	$a2, $zero, 25
	move	$a0, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZN21btCollisionDispatcher27registerCollisionCreateFuncEiiP30btCollisionAlgorithmCreateFunc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 10
	ori	$a2, $zero, 25
	move	$a0, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZN21btCollisionDispatcher27registerCollisionCreateFuncEiiP30btCollisionAlgorithmCreateFunc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 11
	ori	$a2, $zero, 25
	move	$a0, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZN21btCollisionDispatcher27registerCollisionCreateFuncEiiP30btCollisionAlgorithmCreateFunc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 12
	ori	$a2, $zero, 25
	move	$a0, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZN21btCollisionDispatcher27registerCollisionCreateFuncEiiP30btCollisionAlgorithmCreateFunc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 13
	ori	$a2, $zero, 25
	move	$a0, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZN21btCollisionDispatcher27registerCollisionCreateFuncEiiP30btCollisionAlgorithmCreateFunc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 14
	ori	$a2, $zero, 25
	move	$a0, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZN21btCollisionDispatcher27registerCollisionCreateFuncEiiP30btCollisionAlgorithmCreateFunc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 15
	ori	$a2, $zero, 25
	move	$a0, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZN21btCollisionDispatcher27registerCollisionCreateFuncEiiP30btCollisionAlgorithmCreateFunc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 16
	ori	$a2, $zero, 25
	move	$a0, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZN21btCollisionDispatcher27registerCollisionCreateFuncEiiP30btCollisionAlgorithmCreateFunc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 17
	ori	$a2, $zero, 25
	move	$a0, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZN21btCollisionDispatcher27registerCollisionCreateFuncEiiP30btCollisionAlgorithmCreateFunc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 18
	ori	$a2, $zero, 25
	move	$a0, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZN21btCollisionDispatcher27registerCollisionCreateFuncEiiP30btCollisionAlgorithmCreateFunc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 19
	ori	$a2, $zero, 25
	move	$a0, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZN21btCollisionDispatcher27registerCollisionCreateFuncEiiP30btCollisionAlgorithmCreateFunc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 20
	ori	$a2, $zero, 25
	move	$a0, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZN21btCollisionDispatcher27registerCollisionCreateFuncEiiP30btCollisionAlgorithmCreateFunc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 21
	ori	$a2, $zero, 25
	move	$a0, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZN21btCollisionDispatcher27registerCollisionCreateFuncEiiP30btCollisionAlgorithmCreateFunc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 22
	ori	$a2, $zero, 25
	move	$a0, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZN21btCollisionDispatcher27registerCollisionCreateFuncEiiP30btCollisionAlgorithmCreateFunc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 23
	ori	$a2, $zero, 25
	move	$a0, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZN21btCollisionDispatcher27registerCollisionCreateFuncEiiP30btCollisionAlgorithmCreateFunc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 24
	ori	$a2, $zero, 25
	move	$a0, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZN21btCollisionDispatcher27registerCollisionCreateFuncEiiP30btCollisionAlgorithmCreateFunc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 25
	ori	$a2, $zero, 25
	move	$a0, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZN21btCollisionDispatcher27registerCollisionCreateFuncEiiP30btCollisionAlgorithmCreateFunc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 26
	ori	$a2, $zero, 25
	move	$a0, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZN21btCollisionDispatcher27registerCollisionCreateFuncEiiP30btCollisionAlgorithmCreateFunc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 27
	ori	$a2, $zero, 25
	move	$a0, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZN21btCollisionDispatcher27registerCollisionCreateFuncEiiP30btCollisionAlgorithmCreateFunc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 28
	ori	$a2, $zero, 25
	move	$a0, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZN21btCollisionDispatcher27registerCollisionCreateFuncEiiP30btCollisionAlgorithmCreateFunc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 29
	ori	$a2, $zero, 25
	move	$a0, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZN21btCollisionDispatcher27registerCollisionCreateFuncEiiP30btCollisionAlgorithmCreateFunc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 30
	ori	$a2, $zero, 25
	move	$a0, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZN21btCollisionDispatcher27registerCollisionCreateFuncEiiP30btCollisionAlgorithmCreateFunc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 31
	ori	$a2, $zero, 25
	move	$a0, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZN21btCollisionDispatcher27registerCollisionCreateFuncEiiP30btCollisionAlgorithmCreateFunc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 32
	ori	$a2, $zero, 25
	move	$a0, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZN21btCollisionDispatcher27registerCollisionCreateFuncEiiP30btCollisionAlgorithmCreateFunc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 33
	ori	$a2, $zero, 25
	move	$a0, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZN21btCollisionDispatcher27registerCollisionCreateFuncEiiP30btCollisionAlgorithmCreateFunc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 34
	ori	$a2, $zero, 25
	move	$a0, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZN21btCollisionDispatcher27registerCollisionCreateFuncEiiP30btCollisionAlgorithmCreateFunc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 35
	ori	$a2, $zero, 25
	move	$a0, $fp
	move	$a3, $s0
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZN21btCollisionDispatcher27registerCollisionCreateFuncEiiP30btCollisionAlgorithmCreateFunc)
	jr	$t8
.Lfunc_end23:
	.size	_ZN27btGImpactCollisionAlgorithm17registerAlgorithmEP21btCollisionDispatcher, .Lfunc_end23-_ZN27btGImpactCollisionAlgorithm17registerAlgorithmEP21btCollisionDispatcher
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN27btGImpactCollisionAlgorithm22getAllContactManifoldsER20btAlignedObjectArrayIP20btPersistentManifoldE,"axG",@progbits,_ZN27btGImpactCollisionAlgorithm22getAllContactManifoldsER20btAlignedObjectArrayIP20btPersistentManifoldE,comdat
	.weak	_ZN27btGImpactCollisionAlgorithm22getAllContactManifoldsER20btAlignedObjectArrayIP20btPersistentManifoldE # -- Begin function _ZN27btGImpactCollisionAlgorithm22getAllContactManifoldsER20btAlignedObjectArrayIP20btPersistentManifoldE
	.p2align	5
	.type	_ZN27btGImpactCollisionAlgorithm22getAllContactManifoldsER20btAlignedObjectArrayIP20btPersistentManifoldE,@function
_ZN27btGImpactCollisionAlgorithm22getAllContactManifoldsER20btAlignedObjectArrayIP20btPersistentManifoldE: # @_ZN27btGImpactCollisionAlgorithm22getAllContactManifoldsER20btAlignedObjectArrayIP20btPersistentManifoldE
	.cfi_startproc
# %bb.0:
	ld.d	$a2, $a0, 24
	beqz	$a2, .LBB24_19
# %bb.1:
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
	bne	$a3, $a4, .LBB24_18
# %bb.2:
	sltui	$a4, $a3, 1
	slli.w	$a5, $a3, 1
	masknez	$a5, $a5, $a4
	ori	$a6, $zero, 1
	maskeqz	$a4, $a6, $a4
	or	$s0, $a4, $a5
	bge	$a3, $s0, .LBB24_18
# %bb.3:
	beqz	$s0, .LBB24_13
# %bb.4:
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
	blez	$a3, .LBB24_14
.LBB24_5:                               # %.lr.ph.i.i.i
	ori	$a5, $zero, 4
	move	$a4, $zero
	bltu	$a3, $a5, .LBB24_10
# %bb.6:                                # %.lr.ph.i.i.i
	sub.d	$a5, $fp, $a2
	ori	$a6, $zero, 32
	bltu	$a5, $a6, .LBB24_10
# %bb.7:                                # %vector.ph
	bstrpick.d	$a4, $a3, 30, 2
	slli.d	$a4, $a4, 2
	addi.d	$a5, $a2, 16
	addi.d	$a6, $fp, 16
	move	$a7, $a4
	.p2align	4, , 16
.LBB24_8:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a5, -16
	vld	$vr1, $a5, 0
	vst	$vr0, $a6, -16
	vst	$vr1, $a6, 0
	addi.d	$a7, $a7, -4
	addi.d	$a5, $a5, 32
	addi.d	$a6, $a6, 32
	bnez	$a7, .LBB24_8
# %bb.9:                                # %middle.block
	beq	$a4, $a3, .LBB24_12
.LBB24_10:                              # %scalar.ph.preheader
	sub.d	$a5, $a3, $a4
	alsl.d	$a6, $a4, $a2, 3
	alsl.d	$a4, $a4, $fp, 3
	.p2align	4, , 16
.LBB24_11:                              # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a7, $a6, 0
	st.d	$a7, $a4, 0
	addi.d	$a5, $a5, -1
	addi.d	$a6, $a6, 8
	addi.d	$a4, $a4, 8
	bnez	$a5, .LBB24_11
.LBB24_12:                              # %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.thread.i.i
	ld.bu	$a4, $a1, 24
	bnez	$a4, .LBB24_16
	b	.LBB24_17
.LBB24_13:
	move	$fp, $zero
	ld.d	$a2, $a1, 16
	bgtz	$a3, .LBB24_5
.LBB24_14:                              # %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.i.i
	beqz	$a2, .LBB24_17
# %bb.15:                               # %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.i.i
	ld.b	$a4, $a1, 24
	andi	$a4, $a4, 1
	beqz	$a4, .LBB24_17
.LBB24_16:
	move	$s1, $a0
	move	$a0, $a2
	move	$s2, $a1
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	move	$a1, $s2
	ld.w	$a3, $s2, 4
.LBB24_17:                              # %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE10deallocateEv.exit.i.i
	ori	$a4, $zero, 1
	ld.d	$a2, $a0, 24
	st.b	$a4, $a1, 24
	st.d	$fp, $a1, 16
	st.w	$s0, $a1, 8
.LBB24_18:                              # %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE9push_backERKS1_.exit
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
.LBB24_19:
	ret
.Lfunc_end24:
	.size	_ZN27btGImpactCollisionAlgorithm22getAllContactManifoldsER20btAlignedObjectArrayIP20btPersistentManifoldE, .Lfunc_end24-_ZN27btGImpactCollisionAlgorithm22getAllContactManifoldsER20btAlignedObjectArrayIP20btPersistentManifoldE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN17btTriangleShapeExD0Ev,"axG",@progbits,_ZN17btTriangleShapeExD0Ev,comdat
	.weak	_ZN17btTriangleShapeExD0Ev      # -- Begin function _ZN17btTriangleShapeExD0Ev
	.p2align	5
	.type	_ZN17btTriangleShapeExD0Ev,@function
_ZN17btTriangleShapeExD0Ev:             # @_ZN17btTriangleShapeExD0Ev
.Lfunc_begin9:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception9
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
.Ltmp209:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN13btConvexShapeD2Ev)
	jirl	$ra, $ra, 0
.Ltmp210:                               # EH_LABEL
# %bb.1:
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_Z21btAlignedFreeInternalPv)
	jr	$t8
.LBB25_2:
.Ltmp211:                               # EH_LABEL
	move	$s0, $a0
.Ltmp212:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp213:                               # EH_LABEL
# %bb.3:                                # %_ZN13btConvexShapedlEPv.exit
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB25_4:
.Ltmp214:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end25:
	.size	_ZN17btTriangleShapeExD0Ev, .Lfunc_end25-_ZN17btTriangleShapeExD0Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN17btTriangleShapeExD0Ev,"aG",@progbits,_ZN17btTriangleShapeExD0Ev,comdat
	.p2align	2, 0x0
GCC_except_table25:
.Lexception9:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase9-.Lttbaseref9
.Lttbaseref9:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end9-.Lcst_begin9
.Lcst_begin9:
	.uleb128 .Ltmp209-.Lfunc_begin9         # >> Call Site 1 <<
	.uleb128 .Ltmp210-.Ltmp209              #   Call between .Ltmp209 and .Ltmp210
	.uleb128 .Ltmp211-.Lfunc_begin9         #     jumps to .Ltmp211
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp210-.Lfunc_begin9         # >> Call Site 2 <<
	.uleb128 .Ltmp212-.Ltmp210              #   Call between .Ltmp210 and .Ltmp212
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp212-.Lfunc_begin9         # >> Call Site 3 <<
	.uleb128 .Ltmp213-.Ltmp212              #   Call between .Ltmp212 and .Ltmp213
	.uleb128 .Ltmp214-.Lfunc_begin9         #     jumps to .Ltmp214
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp213-.Lfunc_begin9         # >> Call Site 4 <<
	.uleb128 .Lfunc_end25-.Ltmp213          #   Call between .Ltmp213 and .Lfunc_end25
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end9:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase9:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNK17btTriangleShapeEx7getAabbERK11btTransformR9btVector3S4_,"axG",@progbits,_ZNK17btTriangleShapeEx7getAabbERK11btTransformR9btVector3S4_,comdat
	.weak	_ZNK17btTriangleShapeEx7getAabbERK11btTransformR9btVector3S4_ # -- Begin function _ZNK17btTriangleShapeEx7getAabbERK11btTransformR9btVector3S4_
	.p2align	5
	.type	_ZNK17btTriangleShapeEx7getAabbERK11btTransformR9btVector3S4_,@function
_ZNK17btTriangleShapeEx7getAabbERK11btTransformR9btVector3S4_: # @_ZNK17btTriangleShapeEx7getAabbERK11btTransformR9btVector3S4_
	.cfi_startproc
# %bb.0:
	fld.s	$fa1, $a1, 4
	fld.s	$fa2, $a0, 68
	fld.s	$fa3, $a1, 0
	fld.s	$fa4, $a0, 64
	fmul.s	$fa0, $fa1, $fa2
	fld.s	$ft5, $a1, 8
	fld.s	$fa5, $a0, 72
	fmadd.s	$fa0, $fa3, $fa4, $fa0
	fld.s	$ft6, $a1, 48
	fld.s	$ft7, $a1, 20
	fmadd.s	$fa0, $ft5, $fa5, $fa0
	fld.s	$ft8, $a1, 16
	fadd.s	$fa0, $fa0, $ft6
	fmul.s	$fa6, $fa2, $ft7
	fld.s	$ft9, $a1, 24
	fmadd.s	$fa6, $ft8, $fa4, $fa6
	fld.s	$ft10, $a1, 36
	fld.s	$ft11, $a1, 32
	fmadd.s	$fa6, $ft9, $fa5, $fa6
	fld.s	$fa7, $a1, 52
	fmul.s	$fa2, $fa2, $ft10
	fmadd.s	$ft1, $ft11, $fa4, $fa2
	fld.s	$fa2, $a0, 84
	fld.s	$fa4, $a0, 80
	fld.s	$ft0, $a0, 88
	fld.s	$ft3, $a1, 40
	fmul.s	$ft2, $fa1, $fa2
	fmadd.s	$ft2, $fa3, $fa4, $ft2
	fmadd.s	$ft12, $ft5, $ft0, $ft2
	fmul.s	$ft2, $ft7, $fa2
	fmadd.s	$ft2, $ft8, $fa4, $ft2
	fmul.s	$fa2, $ft10, $fa2
	fmadd.s	$fa2, $ft11, $fa4, $fa2
	fld.s	$ft13, $a0, 100
	fld.s	$ft14, $a0, 96
	fmadd.s	$fa4, $ft9, $ft0, $ft2
	fmadd.s	$ft4, $ft3, $ft0, $fa2
	fmul.s	$fa1, $fa1, $ft13
	fmadd.s	$fa1, $fa3, $ft14, $fa1
	fld.s	$fa3, $a0, 104
	fld.s	$ft2, $a1, 56
	fadd.s	$ft0, $ft6, $ft12
	fadd.s	$fa4, $fa7, $fa4
	fmadd.s	$fa1, $ft5, $fa3, $fa1
	fadd.s	$fa1, $ft6, $fa1
	fmul.s	$fa2, $ft7, $ft13
	fmadd.s	$fa2, $ft8, $ft14, $fa2
	fmadd.s	$fa2, $ft9, $fa3, $fa2
	fadd.s	$fa2, $fa7, $fa2
	fmul.s	$ft5, $ft10, $ft13
	fmadd.s	$ft5, $ft11, $ft14, $ft5
	fcmp.cule.s	$fcc0, $ft0, $fa1
	fmadd.s	$ft5, $ft3, $fa3, $ft5
	bcnez	$fcc0, .LBB26_2
# %bb.1:
	fcmp.clt.s	$fcc0, $fa1, $fa0
	fmov.s	$fa3, $fa1
	bceqz	$fcc0, .LBB26_3
	b	.LBB26_4
.LBB26_2:                               # %.thread.i
	fcmp.clt.s	$fcc0, $ft0, $fa0
	fmov.s	$fa3, $ft0
	bcnez	$fcc0, .LBB26_4
.LBB26_3:
	fmov.s	$fa3, $fa0
.LBB26_4:
	fmadd.s	$ft3, $ft3, $fa5, $ft1
	fadd.s	$ft1, $fa7, $fa6
	fadd.s	$fa7, $ft2, $ft4
	fcmp.cule.s	$fcc0, $fa4, $fa2
	fadd.s	$fa5, $ft2, $ft5
	bcnez	$fcc0, .LBB26_6
# %bb.5:
	fcmp.clt.s	$fcc0, $fa2, $ft1
	fmov.s	$fa6, $fa2
	bceqz	$fcc0, .LBB26_7
	b	.LBB26_8
.LBB26_6:                               # %.thread83.i
	fcmp.clt.s	$fcc0, $fa4, $ft1
	fmov.s	$fa6, $fa4
	bcnez	$fcc0, .LBB26_8
.LBB26_7:
	fmov.s	$fa6, $ft1
.LBB26_8:
	fcmp.cule.s	$fcc0, $fa7, $fa5
	fadd.s	$ft2, $ft2, $ft3
	bcnez	$fcc0, .LBB26_10
# %bb.9:
	fcmp.clt.s	$fcc0, $fa5, $ft2
	fmov.s	$ft3, $fa5
	bceqz	$fcc0, .LBB26_11
	b	.LBB26_12
.LBB26_10:                              # %.thread87.i
	fcmp.clt.s	$fcc0, $fa7, $ft2
	fmov.s	$ft3, $fa7
	bcnez	$fcc0, .LBB26_12
.LBB26_11:
	fmov.s	$ft3, $ft2
.LBB26_12:
	fcmp.cule.s	$fcc0, $fa1, $ft0
	bcnez	$fcc0, .LBB26_14
# %bb.13:
	fcmp.clt.s	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB26_15
	b	.LBB26_16
.LBB26_14:                              # %.thread91.i
	fcmp.clt.s	$fcc0, $fa0, $ft0
	fmov.s	$fa1, $ft0
	bcnez	$fcc0, .LBB26_16
.LBB26_15:
	fmov.s	$fa1, $fa0
.LBB26_16:
	fcmp.cule.s	$fcc0, $fa2, $fa4
	bcnez	$fcc0, .LBB26_18
# %bb.17:
	fcmp.clt.s	$fcc0, $ft1, $fa2
	bceqz	$fcc0, .LBB26_19
	b	.LBB26_20
.LBB26_18:                              # %.thread94.i
	fcmp.clt.s	$fcc0, $ft1, $fa4
	fmov.s	$fa2, $fa4
	bcnez	$fcc0, .LBB26_20
.LBB26_19:
	fmov.s	$fa2, $ft1
.LBB26_20:
	fld.s	$fa0, $a0, 56
	fcmp.cule.s	$fcc0, $fa5, $fa7
	bcnez	$fcc0, .LBB26_22
# %bb.21:
	fcmp.clt.s	$fcc0, $ft2, $fa5
	bceqz	$fcc0, .LBB26_23
	b	.LBB26_24
.LBB26_22:                              # %.thread98.i
	fcmp.clt.s	$fcc0, $ft2, $fa7
	fmov.s	$fa5, $fa7
	bcnez	$fcc0, .LBB26_24
.LBB26_23:
	fmov.s	$fa5, $ft2
.LBB26_24:                              # %_ZN6btAABBC2ERK9btVector3S2_S2_f.exit
	fsub.s	$fa3, $fa3, $fa0
	fsub.s	$fa4, $fa6, $fa0
	fsub.s	$fa6, $ft3, $fa0
	fadd.s	$fa1, $fa0, $fa1
	fadd.s	$fa2, $fa0, $fa2
	fadd.s	$fa0, $fa0, $fa5
	fst.s	$fa3, $a2, 0
	fst.s	$fa4, $a2, 4
	fst.s	$fa6, $a2, 8
	fst.s	$fa1, $a3, 0
	fst.s	$fa2, $a3, 4
	fst.s	$fa0, $a3, 8
	ret
.Lfunc_end26:
	.size	_ZNK17btTriangleShapeEx7getAabbERK11btTransformR9btVector3S4_, .Lfunc_end26-_ZNK17btTriangleShapeEx7getAabbERK11btTransformR9btVector3S4_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK21btConvexInternalShape15getLocalScalingEv,"axG",@progbits,_ZNK21btConvexInternalShape15getLocalScalingEv,comdat
	.weak	_ZNK21btConvexInternalShape15getLocalScalingEv # -- Begin function _ZNK21btConvexInternalShape15getLocalScalingEv
	.p2align	5
	.type	_ZNK21btConvexInternalShape15getLocalScalingEv,@function
_ZNK21btConvexInternalShape15getLocalScalingEv: # @_ZNK21btConvexInternalShape15getLocalScalingEv
# %bb.0:
	addi.d	$a0, $a0, 24
	ret
.Lfunc_end27:
	.size	_ZNK21btConvexInternalShape15getLocalScalingEv, .Lfunc_end27-_ZNK21btConvexInternalShape15getLocalScalingEv
                                        # -- End function
	.section	.text._ZNK15btTriangleShape21calculateLocalInertiaEfR9btVector3,"axG",@progbits,_ZNK15btTriangleShape21calculateLocalInertiaEfR9btVector3,comdat
	.weak	_ZNK15btTriangleShape21calculateLocalInertiaEfR9btVector3 # -- Begin function _ZNK15btTriangleShape21calculateLocalInertiaEfR9btVector3
	.p2align	5
	.type	_ZNK15btTriangleShape21calculateLocalInertiaEfR9btVector3,@function
_ZNK15btTriangleShape21calculateLocalInertiaEfR9btVector3: # @_ZNK15btTriangleShape21calculateLocalInertiaEfR9btVector3
# %bb.0:
	vrepli.b	$vr0, 0
	vst	$vr0, $a1, 0
	ret
.Lfunc_end28:
	.size	_ZNK15btTriangleShape21calculateLocalInertiaEfR9btVector3, .Lfunc_end28-_ZNK15btTriangleShape21calculateLocalInertiaEfR9btVector3
                                        # -- End function
	.section	.text._ZNK15btTriangleShape7getNameEv,"axG",@progbits,_ZNK15btTriangleShape7getNameEv,comdat
	.weak	_ZNK15btTriangleShape7getNameEv # -- Begin function _ZNK15btTriangleShape7getNameEv
	.p2align	5
	.type	_ZNK15btTriangleShape7getNameEv,@function
_ZNK15btTriangleShape7getNameEv:        # @_ZNK15btTriangleShape7getNameEv
# %bb.0:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ret
.Lfunc_end29:
	.size	_ZNK15btTriangleShape7getNameEv, .Lfunc_end29-_ZNK15btTriangleShape7getNameEv
                                        # -- End function
	.section	.text._ZN21btConvexInternalShape9setMarginEf,"axG",@progbits,_ZN21btConvexInternalShape9setMarginEf,comdat
	.weak	_ZN21btConvexInternalShape9setMarginEf # -- Begin function _ZN21btConvexInternalShape9setMarginEf
	.p2align	5
	.type	_ZN21btConvexInternalShape9setMarginEf,@function
_ZN21btConvexInternalShape9setMarginEf: # @_ZN21btConvexInternalShape9setMarginEf
# %bb.0:
	fst.s	$fa0, $a0, 56
	ret
.Lfunc_end30:
	.size	_ZN21btConvexInternalShape9setMarginEf, .Lfunc_end30-_ZN21btConvexInternalShape9setMarginEf
                                        # -- End function
	.section	.text._ZNK21btConvexInternalShape9getMarginEv,"axG",@progbits,_ZNK21btConvexInternalShape9getMarginEv,comdat
	.weak	_ZNK21btConvexInternalShape9getMarginEv # -- Begin function _ZNK21btConvexInternalShape9getMarginEv
	.p2align	5
	.type	_ZNK21btConvexInternalShape9getMarginEv,@function
_ZNK21btConvexInternalShape9getMarginEv: # @_ZNK21btConvexInternalShape9getMarginEv
# %bb.0:
	fld.s	$fa0, $a0, 56
	ret
.Lfunc_end31:
	.size	_ZNK21btConvexInternalShape9getMarginEv, .Lfunc_end31-_ZNK21btConvexInternalShape9getMarginEv
                                        # -- End function
	.section	.text._ZNK15btTriangleShape37localGetSupportingVertexWithoutMarginERK9btVector3,"axG",@progbits,_ZNK15btTriangleShape37localGetSupportingVertexWithoutMarginERK9btVector3,comdat
	.weak	_ZNK15btTriangleShape37localGetSupportingVertexWithoutMarginERK9btVector3 # -- Begin function _ZNK15btTriangleShape37localGetSupportingVertexWithoutMarginERK9btVector3
	.p2align	5
	.type	_ZNK15btTriangleShape37localGetSupportingVertexWithoutMarginERK9btVector3,@function
_ZNK15btTriangleShape37localGetSupportingVertexWithoutMarginERK9btVector3: # @_ZNK15btTriangleShape37localGetSupportingVertexWithoutMarginERK9btVector3
	.cfi_startproc
# %bb.0:
	fld.s	$fa0, $a1, 4
	fld.s	$fa1, $a0, 68
	fld.s	$fa2, $a1, 0
	fld.s	$fa3, $a0, 64
	fmul.s	$fa1, $fa0, $fa1
	fld.s	$fa4, $a1, 8
	fld.s	$fa5, $a0, 72
	fld.s	$fa6, $a0, 84
	fld.s	$fa7, $a0, 80
	fmadd.s	$fa1, $fa2, $fa3, $fa1
	fmadd.s	$fa1, $fa4, $fa5, $fa1
	fmul.s	$fa3, $fa0, $fa6
	fmadd.s	$fa3, $fa2, $fa7, $fa3
	fld.s	$fa5, $a0, 88
	fld.s	$fa6, $a0, 100
	fld.s	$fa7, $a0, 96
	fld.s	$ft0, $a0, 104
	fmadd.s	$fa3, $fa4, $fa5, $fa3
	fmul.s	$fa0, $fa0, $fa6
	fmadd.s	$fa0, $fa2, $fa7, $fa0
	fmadd.s	$fa0, $fa4, $ft0, $fa0
	fcmp.clt.s	$fcc0, $fa1, $fa3
	fsel	$fa1, $fa1, $fa3, $fcc0
	fcmp.clt.s	$fcc1, $fa1, $fa0
	addi.d	$a0, $a0, 64
	movcf2gr	$a1, $fcc0
	movcf2gr	$a2, $fcc1
	masknez	$a1, $a1, $a2
	ori	$a3, $zero, 2
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	alsl.d	$a2, $a1, $a0, 4
	slli.d	$a1, $a1, 4
	ldx.d	$a0, $a0, $a1
	ld.d	$a1, $a2, 8
	ret
.Lfunc_end32:
	.size	_ZNK15btTriangleShape37localGetSupportingVertexWithoutMarginERK9btVector3, .Lfunc_end32-_ZNK15btTriangleShape37localGetSupportingVertexWithoutMarginERK9btVector3
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK15btTriangleShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i,"axG",@progbits,_ZNK15btTriangleShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i,comdat
	.weak	_ZNK15btTriangleShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i # -- Begin function _ZNK15btTriangleShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i
	.p2align	5
	.type	_ZNK15btTriangleShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i,@function
_ZNK15btTriangleShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i: # @_ZNK15btTriangleShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i
	.cfi_startproc
# %bb.0:
	blez	$a3, .LBB33_3
# %bb.1:                                # %.lr.ph
	addi.d	$a4, $a0, 64
	addi.d	$a1, $a1, 8
	ori	$a5, $zero, 2
	.p2align	4, , 16
.LBB33_2:                               # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a1, -4
	fld.s	$fa1, $a0, 68
	fld.s	$fa2, $a1, -8
	fld.s	$fa3, $a0, 64
	fmul.s	$fa1, $fa0, $fa1
	fld.s	$fa4, $a1, 0
	fld.s	$fa5, $a0, 72
	fld.s	$fa6, $a0, 84
	fld.s	$fa7, $a0, 80
	fmadd.s	$fa1, $fa2, $fa3, $fa1
	fmadd.s	$fa1, $fa4, $fa5, $fa1
	fmul.s	$fa3, $fa0, $fa6
	fmadd.s	$fa3, $fa2, $fa7, $fa3
	fld.s	$fa5, $a0, 88
	fld.s	$fa6, $a0, 100
	fld.s	$fa7, $a0, 96
	fld.s	$ft0, $a0, 104
	fmadd.s	$fa3, $fa4, $fa5, $fa3
	fmul.s	$fa0, $fa0, $fa6
	fmadd.s	$fa0, $fa2, $fa7, $fa0
	fmadd.s	$fa0, $fa4, $ft0, $fa0
	fcmp.clt.s	$fcc0, $fa1, $fa3
	fsel	$fa1, $fa1, $fa3, $fcc0
	fcmp.clt.s	$fcc1, $fa1, $fa0
	movcf2gr	$a6, $fcc0
	movcf2gr	$a7, $fcc1
	masknez	$a6, $a6, $a7
	maskeqz	$a7, $a5, $a7
	or	$a6, $a7, $a6
	slli.d	$a6, $a6, 4
	vldx	$vr0, $a4, $a6
	vst	$vr0, $a2, 0
	addi.d	$a2, $a2, 16
	addi.d	$a3, $a3, -1
	addi.d	$a1, $a1, 16
	bnez	$a3, .LBB33_2
.LBB33_3:                               # %._crit_edge
	ret
.Lfunc_end33:
	.size	_ZNK15btTriangleShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i, .Lfunc_end33-_ZNK15btTriangleShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK15btTriangleShape36getNumPreferredPenetrationDirectionsEv,"axG",@progbits,_ZNK15btTriangleShape36getNumPreferredPenetrationDirectionsEv,comdat
	.weak	_ZNK15btTriangleShape36getNumPreferredPenetrationDirectionsEv # -- Begin function _ZNK15btTriangleShape36getNumPreferredPenetrationDirectionsEv
	.p2align	5
	.type	_ZNK15btTriangleShape36getNumPreferredPenetrationDirectionsEv,@function
_ZNK15btTriangleShape36getNumPreferredPenetrationDirectionsEv: # @_ZNK15btTriangleShape36getNumPreferredPenetrationDirectionsEv
# %bb.0:
	ori	$a0, $zero, 2
	ret
.Lfunc_end34:
	.size	_ZNK15btTriangleShape36getNumPreferredPenetrationDirectionsEv, .Lfunc_end34-_ZNK15btTriangleShape36getNumPreferredPenetrationDirectionsEv
                                        # -- End function
	.section	.text._ZNK15btTriangleShape32getPreferredPenetrationDirectionEiR9btVector3,"axG",@progbits,_ZNK15btTriangleShape32getPreferredPenetrationDirectionEiR9btVector3,comdat
	.weak	_ZNK15btTriangleShape32getPreferredPenetrationDirectionEiR9btVector3 # -- Begin function _ZNK15btTriangleShape32getPreferredPenetrationDirectionEiR9btVector3
	.p2align	5
	.type	_ZNK15btTriangleShape32getPreferredPenetrationDirectionEiR9btVector3,@function
_ZNK15btTriangleShape32getPreferredPenetrationDirectionEiR9btVector3: # @_ZNK15btTriangleShape32getPreferredPenetrationDirectionEiR9btVector3
	.cfi_startproc
# %bb.0:
	fld.s	$fa0, $a0, 80
	fld.s	$fa1, $a0, 64
	fsub.s	$fa0, $fa0, $fa1
	fld.s	$fa2, $a0, 84
	fld.s	$fa3, $a0, 68
	fld.s	$fa4, $a0, 96
	fld.s	$fa5, $a0, 88
	fld.s	$fa6, $a0, 72
	fld.s	$fa7, $a0, 100
	fsub.s	$fa1, $fa4, $fa1
	fld.s	$fa4, $a0, 104
	fsub.s	$fa2, $fa2, $fa3
	fsub.s	$fa3, $fa7, $fa3
	fsub.s	$fa5, $fa5, $fa6
	fsub.s	$fa4, $fa4, $fa6
	fneg.s	$fa6, $fa3
	fmul.s	$fa6, $fa5, $fa6
	fmadd.s	$fa6, $fa2, $fa4, $fa6
	fneg.s	$fa4, $fa4
	fmul.s	$fa4, $fa0, $fa4
	fmadd.s	$fa4, $fa5, $fa1, $fa4
	fneg.s	$fa1, $fa1
	fmul.s	$fa1, $fa2, $fa1
	fmadd.s	$fa2, $fa0, $fa3, $fa1
	movfr2gr.s	$a0, $fa2
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $a2, 8
	fmul.s	$fa0, $fa4, $fa4
	fmadd.s	$fa0, $fa6, $fa6, $fa0
	fmadd.s	$fa0, $fa2, $fa2, $fa0
	frsqrt.s	$fa3, $fa0
	fmul.s	$fa0, $fa6, $fa3
	fst.s	$fa0, $a2, 0
	fmul.s	$fa1, $fa4, $fa3
	fst.s	$fa1, $a2, 4
	fmul.s	$fa2, $fa2, $fa3
	fst.s	$fa2, $a2, 8
	beqz	$a1, .LBB35_2
# %bb.1:
	fneg.s	$fa0, $fa0
	fst.s	$fa0, $a2, 0
	fneg.s	$fa0, $fa1
	fst.s	$fa0, $a2, 4
	fneg.s	$fa0, $fa2
	fst.s	$fa0, $a2, 8
.LBB35_2:
	ret
.Lfunc_end35:
	.size	_ZNK15btTriangleShape32getPreferredPenetrationDirectionEiR9btVector3, .Lfunc_end35-_ZNK15btTriangleShape32getPreferredPenetrationDirectionEiR9btVector3
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK15btTriangleShape14getNumVerticesEv,"axG",@progbits,_ZNK15btTriangleShape14getNumVerticesEv,comdat
	.weak	_ZNK15btTriangleShape14getNumVerticesEv # -- Begin function _ZNK15btTriangleShape14getNumVerticesEv
	.p2align	5
	.type	_ZNK15btTriangleShape14getNumVerticesEv,@function
_ZNK15btTriangleShape14getNumVerticesEv: # @_ZNK15btTriangleShape14getNumVerticesEv
# %bb.0:
	ori	$a0, $zero, 3
	ret
.Lfunc_end36:
	.size	_ZNK15btTriangleShape14getNumVerticesEv, .Lfunc_end36-_ZNK15btTriangleShape14getNumVerticesEv
                                        # -- End function
	.section	.text._ZNK15btTriangleShape11getNumEdgesEv,"axG",@progbits,_ZNK15btTriangleShape11getNumEdgesEv,comdat
	.weak	_ZNK15btTriangleShape11getNumEdgesEv # -- Begin function _ZNK15btTriangleShape11getNumEdgesEv
	.p2align	5
	.type	_ZNK15btTriangleShape11getNumEdgesEv,@function
_ZNK15btTriangleShape11getNumEdgesEv:   # @_ZNK15btTriangleShape11getNumEdgesEv
# %bb.0:
	ori	$a0, $zero, 3
	ret
.Lfunc_end37:
	.size	_ZNK15btTriangleShape11getNumEdgesEv, .Lfunc_end37-_ZNK15btTriangleShape11getNumEdgesEv
                                        # -- End function
	.section	.text._ZNK15btTriangleShape7getEdgeEiR9btVector3S1_,"axG",@progbits,_ZNK15btTriangleShape7getEdgeEiR9btVector3S1_,comdat
	.weak	_ZNK15btTriangleShape7getEdgeEiR9btVector3S1_ # -- Begin function _ZNK15btTriangleShape7getEdgeEiR9btVector3S1_
	.p2align	5
	.type	_ZNK15btTriangleShape7getEdgeEiR9btVector3S1_,@function
_ZNK15btTriangleShape7getEdgeEiR9btVector3S1_: # @_ZNK15btTriangleShape7getEdgeEiR9btVector3S1_
	.cfi_startproc
# %bb.0:
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
	ld.d	$a0, $a0, 0
	ld.d	$a4, $a0, 168
	move	$s0, $a3
	move	$s1, $a1
	move	$a0, $fp
	jirl	$ra, $a4, 0
	addi.w	$a0, $s1, 1
	lu12i.w	$a1, 349525
	ori	$a1, $a1, 1366
	ld.d	$a2, $fp, 0
	mul.d	$a1, $a0, $a1
	srli.d	$a3, $a1, 63
	srli.d	$a1, $a1, 32
	ld.d	$a4, $a2, 168
	add.d	$a1, $a1, $a3
	alsl.d	$a1, $a1, $a1, 1
	sub.w	$a1, $a0, $a1
	move	$a0, $fp
	move	$a2, $s0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	jr	$a4
.Lfunc_end38:
	.size	_ZNK15btTriangleShape7getEdgeEiR9btVector3S1_, .Lfunc_end38-_ZNK15btTriangleShape7getEdgeEiR9btVector3S1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK15btTriangleShape9getVertexEiR9btVector3,"axG",@progbits,_ZNK15btTriangleShape9getVertexEiR9btVector3,comdat
	.weak	_ZNK15btTriangleShape9getVertexEiR9btVector3 # -- Begin function _ZNK15btTriangleShape9getVertexEiR9btVector3
	.p2align	5
	.type	_ZNK15btTriangleShape9getVertexEiR9btVector3,@function
_ZNK15btTriangleShape9getVertexEiR9btVector3: # @_ZNK15btTriangleShape9getVertexEiR9btVector3
# %bb.0:
	alsl.d	$a0, $a1, $a0, 4
	vld	$vr0, $a0, 64
	vst	$vr0, $a2, 0
	ret
.Lfunc_end39:
	.size	_ZNK15btTriangleShape9getVertexEiR9btVector3, .Lfunc_end39-_ZNK15btTriangleShape9getVertexEiR9btVector3
                                        # -- End function
	.section	.text._ZNK15btTriangleShape12getNumPlanesEv,"axG",@progbits,_ZNK15btTriangleShape12getNumPlanesEv,comdat
	.weak	_ZNK15btTriangleShape12getNumPlanesEv # -- Begin function _ZNK15btTriangleShape12getNumPlanesEv
	.p2align	5
	.type	_ZNK15btTriangleShape12getNumPlanesEv,@function
_ZNK15btTriangleShape12getNumPlanesEv:  # @_ZNK15btTriangleShape12getNumPlanesEv
# %bb.0:
	ori	$a0, $zero, 1
	ret
.Lfunc_end40:
	.size	_ZNK15btTriangleShape12getNumPlanesEv, .Lfunc_end40-_ZNK15btTriangleShape12getNumPlanesEv
                                        # -- End function
	.section	.text._ZNK15btTriangleShape8getPlaneER9btVector3S1_i,"axG",@progbits,_ZNK15btTriangleShape8getPlaneER9btVector3S1_i,comdat
	.weak	_ZNK15btTriangleShape8getPlaneER9btVector3S1_i # -- Begin function _ZNK15btTriangleShape8getPlaneER9btVector3S1_i
	.p2align	5
	.type	_ZNK15btTriangleShape8getPlaneER9btVector3S1_i,@function
_ZNK15btTriangleShape8getPlaneER9btVector3S1_i: # @_ZNK15btTriangleShape8getPlaneER9btVector3S1_i
	.cfi_startproc
# %bb.0:
	ld.d	$a4, $a0, 0
	ld.d	$a5, $a4, 200
	move	$a4, $a2
	move	$a2, $a1
	move	$a1, $a3
	move	$a3, $a4
	jr	$a5
.Lfunc_end41:
	.size	_ZNK15btTriangleShape8getPlaneER9btVector3S1_i, .Lfunc_end41-_ZNK15btTriangleShape8getPlaneER9btVector3S1_i
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK15btTriangleShape8isInsideERK9btVector3f,"axG",@progbits,_ZNK15btTriangleShape8isInsideERK9btVector3f,comdat
	.weak	_ZNK15btTriangleShape8isInsideERK9btVector3f # -- Begin function _ZNK15btTriangleShape8isInsideERK9btVector3f
	.p2align	5
	.type	_ZNK15btTriangleShape8isInsideERK9btVector3f,@function
_ZNK15btTriangleShape8isInsideERK9btVector3f: # @_ZNK15btTriangleShape8isInsideERK9btVector3f
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -128
	.cfi_def_cfa_offset 128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 96                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 88                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 80                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 72                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fs5, $sp, 56                   # 8-byte Folded Spill
	fst.d	$fs6, $sp, 48                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 56, -32
	.cfi_offset 57, -40
	.cfi_offset 58, -48
	.cfi_offset 59, -56
	.cfi_offset 60, -64
	.cfi_offset 61, -72
	.cfi_offset 62, -80
	move	$s0, $a0
	fld.s	$fa1, $a0, 80
	fld.s	$fa2, $a0, 64
	fld.s	$fa3, $a0, 84
	fld.s	$fa4, $a0, 68
	fsub.s	$fa1, $fa1, $fa2
	fsub.s	$fa3, $fa3, $fa4
	fld.s	$fa5, $a0, 88
	fld.s	$fa6, $a0, 72
	fld.s	$fa7, $a0, 96
	fld.s	$ft0, $a0, 100
	fld.s	$ft1, $a0, 104
	fsub.s	$fa5, $fa5, $fa6
	fsub.s	$fa7, $fa7, $fa2
	fsub.s	$ft0, $ft0, $fa4
	fsub.s	$ft1, $ft1, $fa6
	fneg.s	$ft2, $ft0
	fmul.s	$ft2, $fa5, $ft2
	fmadd.s	$ft2, $fa3, $ft1, $ft2
	fneg.s	$ft1, $ft1
	fmul.s	$ft1, $fa1, $ft1
	fmadd.s	$fa5, $fa5, $fa7, $ft1
	fneg.s	$fa7, $fa7
	fmul.s	$fa3, $fa3, $fa7
	fmadd.s	$fa1, $fa1, $ft0, $fa3
	fmul.s	$fa3, $fa5, $fa5
	fmadd.s	$fa3, $ft2, $ft2, $fa3
	fmadd.s	$fa3, $fa1, $fa1, $fa3
	frsqrt.s	$fa3, $fa3
	fmul.s	$fs2, $ft2, $fa3
	fmul.s	$fs1, $fa5, $fa3
	fld.s	$fa5, $a1, 4
	fld.s	$fa7, $a1, 0
	fld.s	$ft0, $a1, 8
	fmul.s	$fs3, $fa1, $fa3
	fmul.s	$fa1, $fa5, $fs1
	fmadd.s	$fa1, $fa7, $fs2, $fa1
	fmadd.s	$fa1, $ft0, $fs3, $fa1
	fmul.s	$fa3, $fa4, $fs1
	fmadd.s	$fa2, $fa2, $fs2, $fa3
	fmadd.s	$fa2, $fa6, $fs3, $fa2
	fsub.s	$fa1, $fa1, $fa2
	fneg.s	$fs0, $fa0
	fcmp.cult.s	$fcc0, $fa1, $fs0
	move	$a0, $zero
	bcnez	$fcc0, .LBB42_7
# %bb.1:
	fcmp.cult.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB42_7
# %bb.2:                                # %.preheader
	move	$fp, $a1
	ld.d	$a0, $s0, 0
	ld.d	$a4, $a0, 160
	fneg.s	$fs6, $fs1
	fneg.s	$fs5, $fs3
	fneg.s	$fs4, $fs2
	addi.d	$a2, $sp, 32
	addi.d	$a3, $sp, 16
	move	$a0, $s0
	move	$a1, $zero
	jirl	$ra, $a4, 0
	fld.s	$fa0, $sp, 16
	fld.s	$fa1, $sp, 32
	fld.s	$fa2, $sp, 20
	fld.s	$fa3, $sp, 36
	fld.s	$fa4, $sp, 24
	fld.s	$fa5, $sp, 40
	fsub.s	$fa0, $fa0, $fa1
	fsub.s	$fa2, $fa2, $fa3
	fsub.s	$fa4, $fa4, $fa5
	fmul.s	$fa6, $fa4, $fs6
	fmadd.s	$fa6, $fa2, $fs3, $fa6
	fmul.s	$fa7, $fa0, $fs5
	fmadd.s	$fa4, $fa4, $fs2, $fa7
	fmul.s	$fa2, $fa2, $fs4
	fmadd.s	$fa0, $fa0, $fs1, $fa2
	fmul.s	$fa2, $fa4, $fa4
	fmadd.s	$fa2, $fa6, $fa6, $fa2
	fmadd.s	$fa2, $fa0, $fa0, $fa2
	frsqrt.s	$fa2, $fa2
	fmul.s	$fa6, $fa6, $fa2
	fmul.s	$fa4, $fa4, $fa2
	fld.s	$fa7, $fp, 4
	fld.s	$ft0, $fp, 0
	fld.s	$ft1, $fp, 8
	fmul.s	$fa0, $fa0, $fa2
	fmul.s	$fa2, $fa7, $fa4
	fmadd.s	$fa2, $ft0, $fa6, $fa2
	fmadd.s	$fa2, $ft1, $fa0, $fa2
	fmul.s	$fa3, $fa3, $fa4
	fmadd.s	$fa1, $fa1, $fa6, $fa3
	fmadd.s	$fa0, $fa5, $fa0, $fa1
	fsub.s	$fa0, $fa2, $fa0
	fcmp.clt.s	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB42_6
# %bb.3:
	ld.d	$a0, $s0, 0
	ld.d	$a4, $a0, 160
	ori	$a1, $zero, 1
	addi.d	$a2, $sp, 32
	addi.d	$a3, $sp, 16
	move	$a0, $s0
	jirl	$ra, $a4, 0
	fld.s	$fa0, $sp, 16
	fld.s	$fa1, $sp, 32
	fld.s	$fa2, $sp, 20
	fld.s	$fa3, $sp, 36
	fld.s	$fa4, $sp, 24
	fld.s	$fa5, $sp, 40
	fsub.s	$fa0, $fa0, $fa1
	fsub.s	$fa2, $fa2, $fa3
	fsub.s	$fa4, $fa4, $fa5
	fmul.s	$fa6, $fa4, $fs6
	fmadd.s	$fa6, $fa2, $fs3, $fa6
	fmul.s	$fa7, $fa0, $fs5
	fmadd.s	$fa4, $fa4, $fs2, $fa7
	fmul.s	$fa2, $fa2, $fs4
	fmadd.s	$fa0, $fa0, $fs1, $fa2
	fmul.s	$fa2, $fa4, $fa4
	fmadd.s	$fa2, $fa6, $fa6, $fa2
	fmadd.s	$fa2, $fa0, $fa0, $fa2
	frsqrt.s	$fa2, $fa2
	fmul.s	$fa6, $fa6, $fa2
	fmul.s	$fa4, $fa4, $fa2
	fld.s	$fa7, $fp, 4
	fld.s	$ft0, $fp, 0
	fld.s	$ft1, $fp, 8
	fmul.s	$fa0, $fa0, $fa2
	fmul.s	$fa2, $fa7, $fa4
	fmadd.s	$fa2, $ft0, $fa6, $fa2
	fmadd.s	$fa2, $ft1, $fa0, $fa2
	fmul.s	$fa3, $fa3, $fa4
	fmadd.s	$fa1, $fa1, $fa6, $fa3
	fmadd.s	$fa0, $fa5, $fa0, $fa1
	fsub.s	$fa0, $fa2, $fa0
	fcmp.clt.s	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB42_6
# %bb.4:
	ld.d	$a0, $s0, 0
	ld.d	$a4, $a0, 160
	ori	$a1, $zero, 2
	addi.d	$a2, $sp, 32
	addi.d	$a3, $sp, 16
	move	$a0, $s0
	jirl	$ra, $a4, 0
	fld.s	$fa0, $sp, 16
	fld.s	$fa1, $sp, 32
	fld.s	$fa2, $sp, 20
	fld.s	$fa3, $sp, 36
	fld.s	$fa4, $sp, 24
	fld.s	$fa5, $sp, 40
	fsub.s	$fa0, $fa0, $fa1
	fsub.s	$fa2, $fa2, $fa3
	fsub.s	$fa4, $fa4, $fa5
	fmul.s	$fa6, $fa4, $fs6
	fmadd.s	$fa6, $fa2, $fs3, $fa6
	fmul.s	$fa7, $fa0, $fs5
	fmadd.s	$fa4, $fa4, $fs2, $fa7
	fmul.s	$fa2, $fa2, $fs4
	fmadd.s	$fa0, $fa0, $fs1, $fa2
	fmul.s	$fa2, $fa4, $fa4
	fmadd.s	$fa2, $fa6, $fa6, $fa2
	fmadd.s	$fa2, $fa0, $fa0, $fa2
	frsqrt.s	$fa2, $fa2
	fmul.s	$fa6, $fa6, $fa2
	fmul.s	$fa4, $fa4, $fa2
	fld.s	$fa7, $fp, 4
	fld.s	$ft0, $fp, 0
	fld.s	$ft1, $fp, 8
	fmul.s	$fa0, $fa0, $fa2
	fmul.s	$fa2, $fa7, $fa4
	fmadd.s	$fa2, $ft0, $fa6, $fa2
	fmadd.s	$fa2, $ft1, $fa0, $fa2
	fmul.s	$fa3, $fa3, $fa4
	fmadd.s	$fa1, $fa1, $fa6, $fa3
	fmadd.s	$fa0, $fa5, $fa0, $fa1
	fsub.s	$fa0, $fa2, $fa0
	fcmp.clt.s	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB42_6
# %bb.5:
	ori	$a0, $zero, 1
	b	.LBB42_7
.LBB42_6:
	move	$a0, $zero
.LBB42_7:                               # %.loopexit
	fld.d	$fs6, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fs5, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 64                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 72                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 80                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 88                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 96                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.Lfunc_end42:
	.size	_ZNK15btTriangleShape8isInsideERK9btVector3f, .Lfunc_end42-_ZNK15btTriangleShape8isInsideERK9btVector3f
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK15btTriangleShape16getPlaneEquationEiR9btVector3S1_,"axG",@progbits,_ZNK15btTriangleShape16getPlaneEquationEiR9btVector3S1_,comdat
	.weak	_ZNK15btTriangleShape16getPlaneEquationEiR9btVector3S1_ # -- Begin function _ZNK15btTriangleShape16getPlaneEquationEiR9btVector3S1_
	.p2align	5
	.type	_ZNK15btTriangleShape16getPlaneEquationEiR9btVector3S1_,@function
_ZNK15btTriangleShape16getPlaneEquationEiR9btVector3S1_: # @_ZNK15btTriangleShape16getPlaneEquationEiR9btVector3S1_
	.cfi_startproc
# %bb.0:
	fld.s	$fa0, $a0, 80
	fld.s	$fa1, $a0, 64
	fsub.s	$fa0, $fa0, $fa1
	fld.s	$fa2, $a0, 84
	fld.s	$fa3, $a0, 68
	fld.s	$fa4, $a0, 96
	fld.s	$fa5, $a0, 88
	fld.s	$fa6, $a0, 72
	fld.s	$fa7, $a0, 100
	fsub.s	$fa1, $fa4, $fa1
	fld.s	$fa4, $a0, 104
	fsub.s	$fa2, $fa2, $fa3
	fsub.s	$fa3, $fa7, $fa3
	fsub.s	$fa5, $fa5, $fa6
	fsub.s	$fa4, $fa4, $fa6
	fneg.s	$fa6, $fa3
	fmul.s	$fa6, $fa5, $fa6
	fmadd.s	$fa6, $fa2, $fa4, $fa6
	fneg.s	$fa4, $fa4
	fmul.s	$fa4, $fa0, $fa4
	fmadd.s	$fa4, $fa5, $fa1, $fa4
	fneg.s	$fa1, $fa1
	fmul.s	$fa1, $fa2, $fa1
	fmadd.s	$fa0, $fa0, $fa3, $fa1
	movfr2gr.s	$a1, $fa0
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a1, $a2, 8
	fmul.s	$fa1, $fa4, $fa4
	fmadd.s	$fa1, $fa6, $fa6, $fa1
	fmadd.s	$fa1, $fa0, $fa0, $fa1
	frsqrt.s	$fa1, $fa1
	fmul.s	$fa2, $fa6, $fa1
	fst.s	$fa2, $a2, 0
	fmul.s	$fa2, $fa4, $fa1
	fst.s	$fa2, $a2, 4
	fmul.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a2, 8
	vld	$vr0, $a0, 64
	vst	$vr0, $a3, 0
	ret
.Lfunc_end43:
	.size	_ZNK15btTriangleShape16getPlaneEquationEiR9btVector3S1_, .Lfunc_end43-_ZNK15btTriangleShape16getPlaneEquationEiR9btVector3S1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN18GIM_ShapeRetriever19ChildShapeRetrieverD2Ev,"axG",@progbits,_ZN18GIM_ShapeRetriever19ChildShapeRetrieverD2Ev,comdat
	.weak	_ZN18GIM_ShapeRetriever19ChildShapeRetrieverD2Ev # -- Begin function _ZN18GIM_ShapeRetriever19ChildShapeRetrieverD2Ev
	.p2align	5
	.type	_ZN18GIM_ShapeRetriever19ChildShapeRetrieverD2Ev,@function
_ZN18GIM_ShapeRetriever19ChildShapeRetrieverD2Ev: # @_ZN18GIM_ShapeRetriever19ChildShapeRetrieverD2Ev
# %bb.0:
	ret
.Lfunc_end44:
	.size	_ZN18GIM_ShapeRetriever19ChildShapeRetrieverD2Ev, .Lfunc_end44-_ZN18GIM_ShapeRetriever19ChildShapeRetrieverD2Ev
                                        # -- End function
	.section	.text._ZN20btTetrahedronShapeExD0Ev,"axG",@progbits,_ZN20btTetrahedronShapeExD0Ev,comdat
	.weak	_ZN20btTetrahedronShapeExD0Ev   # -- Begin function _ZN20btTetrahedronShapeExD0Ev
	.p2align	5
	.type	_ZN20btTetrahedronShapeExD0Ev,@function
_ZN20btTetrahedronShapeExD0Ev:          # @_ZN20btTetrahedronShapeExD0Ev
.Lfunc_begin10:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception10
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
.Ltmp215:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN13btConvexShapeD2Ev)
	jirl	$ra, $ra, 0
.Ltmp216:                               # EH_LABEL
# %bb.1:
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_Z21btAlignedFreeInternalPv)
	jr	$t8
.LBB45_2:
.Ltmp217:                               # EH_LABEL
	move	$s0, $a0
.Ltmp218:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp219:                               # EH_LABEL
# %bb.3:                                # %_ZN13btConvexShapedlEPv.exit
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB45_4:
.Ltmp220:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end45:
	.size	_ZN20btTetrahedronShapeExD0Ev, .Lfunc_end45-_ZN20btTetrahedronShapeExD0Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN20btTetrahedronShapeExD0Ev,"aG",@progbits,_ZN20btTetrahedronShapeExD0Ev,comdat
	.p2align	2, 0x0
GCC_except_table45:
.Lexception10:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase10-.Lttbaseref10
.Lttbaseref10:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end10-.Lcst_begin10
.Lcst_begin10:
	.uleb128 .Ltmp215-.Lfunc_begin10        # >> Call Site 1 <<
	.uleb128 .Ltmp216-.Ltmp215              #   Call between .Ltmp215 and .Ltmp216
	.uleb128 .Ltmp217-.Lfunc_begin10        #     jumps to .Ltmp217
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp216-.Lfunc_begin10        # >> Call Site 2 <<
	.uleb128 .Ltmp218-.Ltmp216              #   Call between .Ltmp216 and .Ltmp218
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp218-.Lfunc_begin10        # >> Call Site 3 <<
	.uleb128 .Ltmp219-.Ltmp218              #   Call between .Ltmp218 and .Ltmp219
	.uleb128 .Ltmp220-.Lfunc_begin10        #     jumps to .Ltmp220
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp219-.Lfunc_begin10        # >> Call Site 4 <<
	.uleb128 .Lfunc_end45-.Ltmp219          #   Call between .Ltmp219 and .Lfunc_end45
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end10:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase10:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNK16btBU_Simplex1to47getNameEv,"axG",@progbits,_ZNK16btBU_Simplex1to47getNameEv,comdat
	.weak	_ZNK16btBU_Simplex1to47getNameEv # -- Begin function _ZNK16btBU_Simplex1to47getNameEv
	.p2align	5
	.type	_ZNK16btBU_Simplex1to47getNameEv,@function
_ZNK16btBU_Simplex1to47getNameEv:       # @_ZNK16btBU_Simplex1to47getNameEv
# %bb.0:
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ret
.Lfunc_end46:
	.size	_ZNK16btBU_Simplex1to47getNameEv, .Lfunc_end46-_ZNK16btBU_Simplex1to47getNameEv
                                        # -- End function
	.section	.text._ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv,"axG",@progbits,_ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv,comdat
	.weak	_ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv # -- Begin function _ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv
	.p2align	5
	.type	_ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv,@function
_ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv: # @_ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv
# %bb.0:
	move	$a0, $zero
	ret
.Lfunc_end47:
	.size	_ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv, .Lfunc_end47-_ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv
                                        # -- End function
	.section	.text._ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3,"axG",@progbits,_ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3,comdat
	.weak	_ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3 # -- Begin function _ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3
	.p2align	5
	.type	_ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3,@function
_ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3: # @_ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3
# %bb.0:
	ret
.Lfunc_end48:
	.size	_ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3, .Lfunc_end48-_ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3
                                        # -- End function
	.section	.text._ZN18GIM_ShapeRetriever19ChildShapeRetriever13getChildShapeEi,"axG",@progbits,_ZN18GIM_ShapeRetriever19ChildShapeRetriever13getChildShapeEi,comdat
	.weak	_ZN18GIM_ShapeRetriever19ChildShapeRetriever13getChildShapeEi # -- Begin function _ZN18GIM_ShapeRetriever19ChildShapeRetriever13getChildShapeEi
	.p2align	5
	.type	_ZN18GIM_ShapeRetriever19ChildShapeRetriever13getChildShapeEi,@function
_ZN18GIM_ShapeRetriever19ChildShapeRetriever13getChildShapeEi: # @_ZN18GIM_ShapeRetriever19ChildShapeRetriever13getChildShapeEi
	.cfi_startproc
# %bb.0:
	ld.d	$a0, $a0, 8
	ld.d	$a0, $a0, 0
	ld.d	$a2, $a0, 0
	ld.d	$a2, $a2, 216
	jr	$a2
.Lfunc_end49:
	.size	_ZN18GIM_ShapeRetriever19ChildShapeRetriever13getChildShapeEi, .Lfunc_end49-_ZN18GIM_ShapeRetriever19ChildShapeRetriever13getChildShapeEi
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN18GIM_ShapeRetriever19ChildShapeRetrieverD0Ev,"axG",@progbits,_ZN18GIM_ShapeRetriever19ChildShapeRetrieverD0Ev,comdat
	.weak	_ZN18GIM_ShapeRetriever19ChildShapeRetrieverD0Ev # -- Begin function _ZN18GIM_ShapeRetriever19ChildShapeRetrieverD0Ev
	.p2align	5
	.type	_ZN18GIM_ShapeRetriever19ChildShapeRetrieverD0Ev,@function
_ZN18GIM_ShapeRetriever19ChildShapeRetrieverD0Ev: # @_ZN18GIM_ShapeRetriever19ChildShapeRetrieverD0Ev
	.cfi_startproc
# %bb.0:
	pcaddu18i	$t8, %call36(_ZdlPv)
	jr	$t8
.Lfunc_end50:
	.size	_ZN18GIM_ShapeRetriever19ChildShapeRetrieverD0Ev, .Lfunc_end50-_ZN18GIM_ShapeRetriever19ChildShapeRetrieverD0Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN18GIM_ShapeRetriever22TriangleShapeRetriever13getChildShapeEi,"axG",@progbits,_ZN18GIM_ShapeRetriever22TriangleShapeRetriever13getChildShapeEi,comdat
	.weak	_ZN18GIM_ShapeRetriever22TriangleShapeRetriever13getChildShapeEi # -- Begin function _ZN18GIM_ShapeRetriever22TriangleShapeRetriever13getChildShapeEi
	.p2align	5
	.type	_ZN18GIM_ShapeRetriever22TriangleShapeRetriever13getChildShapeEi,@function
_ZN18GIM_ShapeRetriever22TriangleShapeRetriever13getChildShapeEi: # @_ZN18GIM_ShapeRetriever22TriangleShapeRetriever13getChildShapeEi
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	ld.d	$a2, $a0, 8
	ld.d	$a0, $a2, 0
	ld.d	$a3, $a0, 0
	ld.d	$a3, $a3, 176
	addi.d	$a2, $a2, 8
	jirl	$ra, $a3, 0
	ld.d	$a0, $fp, 8
	addi.d	$a0, $a0, 8
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end51:
	.size	_ZN18GIM_ShapeRetriever22TriangleShapeRetriever13getChildShapeEi, .Lfunc_end51-_ZN18GIM_ShapeRetriever22TriangleShapeRetriever13getChildShapeEi
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN18GIM_ShapeRetriever22TriangleShapeRetrieverD0Ev,"axG",@progbits,_ZN18GIM_ShapeRetriever22TriangleShapeRetrieverD0Ev,comdat
	.weak	_ZN18GIM_ShapeRetriever22TriangleShapeRetrieverD0Ev # -- Begin function _ZN18GIM_ShapeRetriever22TriangleShapeRetrieverD0Ev
	.p2align	5
	.type	_ZN18GIM_ShapeRetriever22TriangleShapeRetrieverD0Ev,@function
_ZN18GIM_ShapeRetriever22TriangleShapeRetrieverD0Ev: # @_ZN18GIM_ShapeRetriever22TriangleShapeRetrieverD0Ev
	.cfi_startproc
# %bb.0:
	pcaddu18i	$t8, %call36(_ZdlPv)
	jr	$t8
.Lfunc_end52:
	.size	_ZN18GIM_ShapeRetriever22TriangleShapeRetrieverD0Ev, .Lfunc_end52-_ZN18GIM_ShapeRetriever22TriangleShapeRetrieverD0Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN18GIM_ShapeRetriever19TetraShapeRetriever13getChildShapeEi,"axG",@progbits,_ZN18GIM_ShapeRetriever19TetraShapeRetriever13getChildShapeEi,comdat
	.weak	_ZN18GIM_ShapeRetriever19TetraShapeRetriever13getChildShapeEi # -- Begin function _ZN18GIM_ShapeRetriever19TetraShapeRetriever13getChildShapeEi
	.p2align	5
	.type	_ZN18GIM_ShapeRetriever19TetraShapeRetriever13getChildShapeEi,@function
_ZN18GIM_ShapeRetriever19TetraShapeRetriever13getChildShapeEi: # @_ZN18GIM_ShapeRetriever19TetraShapeRetriever13getChildShapeEi
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	ld.d	$a2, $a0, 8
	ld.d	$a0, $a2, 0
	ld.d	$a3, $a0, 0
	ld.d	$a3, $a3, 184
	addi.d	$a2, $a2, 120
	jirl	$ra, $a3, 0
	ld.d	$a0, $fp, 8
	addi.d	$a0, $a0, 120
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end53:
	.size	_ZN18GIM_ShapeRetriever19TetraShapeRetriever13getChildShapeEi, .Lfunc_end53-_ZN18GIM_ShapeRetriever19TetraShapeRetriever13getChildShapeEi
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN18GIM_ShapeRetriever19TetraShapeRetrieverD0Ev,"axG",@progbits,_ZN18GIM_ShapeRetriever19TetraShapeRetrieverD0Ev,comdat
	.weak	_ZN18GIM_ShapeRetriever19TetraShapeRetrieverD0Ev # -- Begin function _ZN18GIM_ShapeRetriever19TetraShapeRetrieverD0Ev
	.p2align	5
	.type	_ZN18GIM_ShapeRetriever19TetraShapeRetrieverD0Ev,@function
_ZN18GIM_ShapeRetriever19TetraShapeRetrieverD0Ev: # @_ZN18GIM_ShapeRetriever19TetraShapeRetrieverD0Ev
	.cfi_startproc
# %bb.0:
	pcaddu18i	$t8, %call36(_ZdlPv)
	jr	$t8
.Lfunc_end54:
	.size	_ZN18GIM_ShapeRetriever19TetraShapeRetrieverD0Ev, .Lfunc_end54-_ZN18GIM_ShapeRetriever19TetraShapeRetrieverD0Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN25btGImpactTriangleCallbackD0Ev,"axG",@progbits,_ZN25btGImpactTriangleCallbackD0Ev,comdat
	.weak	_ZN25btGImpactTriangleCallbackD0Ev # -- Begin function _ZN25btGImpactTriangleCallbackD0Ev
	.p2align	5
	.type	_ZN25btGImpactTriangleCallbackD0Ev,@function
_ZN25btGImpactTriangleCallbackD0Ev:     # @_ZN25btGImpactTriangleCallbackD0Ev
.Lfunc_begin11:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception11
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
.Ltmp221:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN18btTriangleCallbackD2Ev)
	jirl	$ra, $ra, 0
.Ltmp222:                               # EH_LABEL
# %bb.1:
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZdlPv)
	jr	$t8
.LBB55_2:
.Ltmp223:                               # EH_LABEL
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end55:
	.size	_ZN25btGImpactTriangleCallbackD0Ev, .Lfunc_end55-_ZN25btGImpactTriangleCallbackD0Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN25btGImpactTriangleCallbackD0Ev,"aG",@progbits,_ZN25btGImpactTriangleCallbackD0Ev,comdat
	.p2align	2, 0x0
GCC_except_table55:
.Lexception11:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end11-.Lcst_begin11
.Lcst_begin11:
	.uleb128 .Ltmp221-.Lfunc_begin11        # >> Call Site 1 <<
	.uleb128 .Ltmp222-.Ltmp221              #   Call between .Ltmp221 and .Ltmp222
	.uleb128 .Ltmp223-.Lfunc_begin11        #     jumps to .Ltmp223
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp222-.Lfunc_begin11        # >> Call Site 2 <<
	.uleb128 .Lfunc_end55-.Ltmp222          #   Call between .Ltmp222 and .Lfunc_end55
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end11:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN25btGImpactTriangleCallback15processTriangleEP9btVector3ii,"axG",@progbits,_ZN25btGImpactTriangleCallback15processTriangleEP9btVector3ii,comdat
	.weak	_ZN25btGImpactTriangleCallback15processTriangleEP9btVector3ii # -- Begin function _ZN25btGImpactTriangleCallback15processTriangleEP9btVector3ii
	.p2align	5
	.type	_ZN25btGImpactTriangleCallback15processTriangleEP9btVector3ii,@function
_ZN25btGImpactTriangleCallback15processTriangleEP9btVector3ii: # @_ZN25btGImpactTriangleCallback15processTriangleEP9btVector3ii
.Lfunc_begin12:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception12
# %bb.0:
	addi.d	$sp, $sp, -160
	.cfi_def_cfa_offset 160
	st.d	$ra, $sp, 152                   # 8-byte Folded Spill
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	st.d	$s0, $sp, 136                   # 8-byte Folded Spill
	st.d	$s1, $sp, 128                   # 8-byte Folded Spill
	st.d	$s2, $sp, 120                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	move	$fp, $a3
	move	$s0, $a2
	move	$s1, $a1
	move	$s2, $a0
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZN23btPolyhedralConvexShapeC2Ev)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	vld	$vr0, $s1, 0
	vld	$vr1, $s1, 16
	vld	$vr2, $s1, 32
	st.w	$a0, $sp, 16
	vst	$vr0, $sp, 72
	vst	$vr1, $sp, 88
	vst	$vr2, $sp, 104
	pcalau12i	$a0, %pc_hi20(_ZTV17btTriangleShapeEx+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV17btTriangleShapeEx+16)
	fld.s	$fa0, $s2, 44
	st.d	$a0, $sp, 8
	ld.bu	$a5, $s2, 40
	fst.s	$fa0, $sp, 64
	ld.d	$a0, $s2, 8
	ori	$a1, $zero, 60
	masknez	$a1, $a1, $a5
	ori	$a2, $zero, 52
	maskeqz	$a2, $a2, $a5
	or	$a1, $a2, $a1
	ori	$a2, $zero, 56
	masknez	$a4, $a2, $a5
	ori	$a6, $zero, 48
	stx.w	$s0, $a0, $a1
	ld.d	$a1, $s2, 16
	ld.d	$a2, $s2, 24
	ld.d	$a3, $s2, 32
	maskeqz	$a6, $a6, $a5
	or	$a4, $a6, $a4
	stx.w	$fp, $a0, $a4
.Ltmp224:                               # EH_LABEL
	addi.d	$a4, $sp, 8
	pcaddu18i	$ra, %call36(_ZN27btGImpactCollisionAlgorithm16gimpact_vs_shapeEP17btCollisionObjectS1_P23btGImpactShapeInterfaceP16btCollisionShapeb)
	jirl	$ra, $ra, 0
.Ltmp225:                               # EH_LABEL
# %bb.1:
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZN13btConvexShapeD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 160
	ret
.LBB56_2:
.Ltmp226:                               # EH_LABEL
	move	$fp, $a0
.Ltmp227:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZN13btConvexShapeD2Ev)
	jirl	$ra, $ra, 0
.Ltmp228:                               # EH_LABEL
# %bb.3:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB56_4:
.Ltmp229:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end56:
	.size	_ZN25btGImpactTriangleCallback15processTriangleEP9btVector3ii, .Lfunc_end56-_ZN25btGImpactTriangleCallback15processTriangleEP9btVector3ii
	.cfi_endproc
	.section	.gcc_except_table._ZN25btGImpactTriangleCallback15processTriangleEP9btVector3ii,"aG",@progbits,_ZN25btGImpactTriangleCallback15processTriangleEP9btVector3ii,comdat
	.p2align	2, 0x0
GCC_except_table56:
.Lexception12:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase11-.Lttbaseref11
.Lttbaseref11:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end12-.Lcst_begin12
.Lcst_begin12:
	.uleb128 .Lfunc_begin12-.Lfunc_begin12  # >> Call Site 1 <<
	.uleb128 .Ltmp224-.Lfunc_begin12        #   Call between .Lfunc_begin12 and .Ltmp224
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp224-.Lfunc_begin12        # >> Call Site 2 <<
	.uleb128 .Ltmp225-.Ltmp224              #   Call between .Ltmp224 and .Ltmp225
	.uleb128 .Ltmp226-.Lfunc_begin12        #     jumps to .Ltmp226
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp225-.Lfunc_begin12        # >> Call Site 3 <<
	.uleb128 .Ltmp227-.Ltmp225              #   Call between .Ltmp225 and .Ltmp227
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp227-.Lfunc_begin12        # >> Call Site 4 <<
	.uleb128 .Ltmp228-.Ltmp227              #   Call between .Ltmp227 and .Ltmp228
	.uleb128 .Ltmp229-.Lfunc_begin12        #     jumps to .Ltmp229
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp228-.Lfunc_begin12        # >> Call Site 5 <<
	.uleb128 .Lfunc_end56-.Ltmp228          #   Call between .Ltmp228 and .Lfunc_end56
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end12:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase11:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN27btGImpactCollisionAlgorithm10CreateFuncD0Ev,"axG",@progbits,_ZN27btGImpactCollisionAlgorithm10CreateFuncD0Ev,comdat
	.weak	_ZN27btGImpactCollisionAlgorithm10CreateFuncD0Ev # -- Begin function _ZN27btGImpactCollisionAlgorithm10CreateFuncD0Ev
	.p2align	5
	.type	_ZN27btGImpactCollisionAlgorithm10CreateFuncD0Ev,@function
_ZN27btGImpactCollisionAlgorithm10CreateFuncD0Ev: # @_ZN27btGImpactCollisionAlgorithm10CreateFuncD0Ev
	.cfi_startproc
# %bb.0:
	pcaddu18i	$t8, %call36(_ZdlPv)
	jr	$t8
.Lfunc_end57:
	.size	_ZN27btGImpactCollisionAlgorithm10CreateFuncD0Ev, .Lfunc_end57-_ZN27btGImpactCollisionAlgorithm10CreateFuncD0Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN27btGImpactCollisionAlgorithm10CreateFunc24CreateCollisionAlgorithmER36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS4_,"axG",@progbits,_ZN27btGImpactCollisionAlgorithm10CreateFunc24CreateCollisionAlgorithmER36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS4_,comdat
	.weak	_ZN27btGImpactCollisionAlgorithm10CreateFunc24CreateCollisionAlgorithmER36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS4_ # -- Begin function _ZN27btGImpactCollisionAlgorithm10CreateFunc24CreateCollisionAlgorithmER36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS4_
	.p2align	5
	.type	_ZN27btGImpactCollisionAlgorithm10CreateFunc24CreateCollisionAlgorithmER36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS4_,@function
_ZN27btGImpactCollisionAlgorithm10CreateFunc24CreateCollisionAlgorithmER36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS4_: # @_ZN27btGImpactCollisionAlgorithm10CreateFunc24CreateCollisionAlgorithmER36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS4_
	.cfi_startproc
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
	move	$fp, $a1
	ld.d	$a0, $a1, 0
	ld.d	$a1, $a0, 0
	ld.d	$a4, $a1, 96
	move	$s0, $a3
	move	$s1, $a2
	ori	$a1, $zero, 64
	jirl	$ra, $a4, 0
	move	$s2, $a0
	move	$a1, $fp
	move	$a2, $s1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZN30btActivatingCollisionAlgorithmC2ERK36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS4_)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(_ZTV27btGImpactCollisionAlgorithm+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV27btGImpactCollisionAlgorithm+16)
	st.d	$a0, $s2, 0
	vrepli.b	$vr0, 0
	vst	$vr0, $s2, 16
	move	$a0, $s2
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end58:
	.size	_ZN27btGImpactCollisionAlgorithm10CreateFunc24CreateCollisionAlgorithmER36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS4_, .Lfunc_end58-_ZN27btGImpactCollisionAlgorithm10CreateFunc24CreateCollisionAlgorithmER36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS4_
	.cfi_endproc
                                        # -- End function
	.type	_ZTV27btGImpactCollisionAlgorithm,@object # @_ZTV27btGImpactCollisionAlgorithm
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTV27btGImpactCollisionAlgorithm
	.p2align	3, 0x0
_ZTV27btGImpactCollisionAlgorithm:
	.dword	0
	.dword	_ZTI27btGImpactCollisionAlgorithm
	.dword	_ZN27btGImpactCollisionAlgorithmD2Ev
	.dword	_ZN27btGImpactCollisionAlgorithmD0Ev
	.dword	_ZN27btGImpactCollisionAlgorithm16processCollisionEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult
	.dword	_ZN27btGImpactCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult
	.dword	_ZN27btGImpactCollisionAlgorithm22getAllContactManifoldsER20btAlignedObjectArrayIP20btPersistentManifoldE
	.size	_ZTV27btGImpactCollisionAlgorithm, 56

	.type	g_gimpact_cf,@object            # @g_gimpact_cf
	.data
	.globl	g_gimpact_cf
	.p2align	3, 0x0
g_gimpact_cf:
	.dword	_ZTVN27btGImpactCollisionAlgorithm10CreateFuncE+16
	.byte	0                               # 0x0
	.space	7
	.size	g_gimpact_cf, 16

	.type	_ZTI27btGImpactCollisionAlgorithm,@object # @_ZTI27btGImpactCollisionAlgorithm
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTI27btGImpactCollisionAlgorithm
	.p2align	3, 0x0
_ZTI27btGImpactCollisionAlgorithm:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS27btGImpactCollisionAlgorithm
	.dword	_ZTI30btActivatingCollisionAlgorithm
	.size	_ZTI27btGImpactCollisionAlgorithm, 24

	.type	_ZTS27btGImpactCollisionAlgorithm,@object # @_ZTS27btGImpactCollisionAlgorithm
	.section	.rodata,"a",@progbits
	.globl	_ZTS27btGImpactCollisionAlgorithm
_ZTS27btGImpactCollisionAlgorithm:
	.asciz	"27btGImpactCollisionAlgorithm"
	.size	_ZTS27btGImpactCollisionAlgorithm, 30

	.type	_ZTV17btTriangleShapeEx,@object # @_ZTV17btTriangleShapeEx
	.section	.data.rel.ro._ZTV17btTriangleShapeEx,"awG",@progbits,_ZTV17btTriangleShapeEx,comdat
	.weak	_ZTV17btTriangleShapeEx
	.p2align	3, 0x0
_ZTV17btTriangleShapeEx:
	.dword	0
	.dword	_ZTI17btTriangleShapeEx
	.dword	_ZN13btConvexShapeD2Ev
	.dword	_ZN17btTriangleShapeExD0Ev
	.dword	_ZNK17btTriangleShapeEx7getAabbERK11btTransformR9btVector3S4_
	.dword	_ZNK16btCollisionShape17getBoundingSphereER9btVector3Rf
	.dword	_ZNK16btCollisionShape20getAngularMotionDiscEv
	.dword	_ZNK16btCollisionShape27getContactBreakingThresholdEv
	.dword	_ZN21btConvexInternalShape15setLocalScalingERK9btVector3
	.dword	_ZNK21btConvexInternalShape15getLocalScalingEv
	.dword	_ZNK15btTriangleShape21calculateLocalInertiaEfR9btVector3
	.dword	_ZNK15btTriangleShape7getNameEv
	.dword	_ZN21btConvexInternalShape9setMarginEf
	.dword	_ZNK21btConvexInternalShape9getMarginEv
	.dword	_ZNK21btConvexInternalShape24localGetSupportingVertexERK9btVector3
	.dword	_ZNK15btTriangleShape37localGetSupportingVertexWithoutMarginERK9btVector3
	.dword	_ZNK15btTriangleShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i
	.dword	_ZNK21btConvexInternalShape11getAabbSlowERK11btTransformR9btVector3S4_
	.dword	_ZNK15btTriangleShape36getNumPreferredPenetrationDirectionsEv
	.dword	_ZNK15btTriangleShape32getPreferredPenetrationDirectionEiR9btVector3
	.dword	_ZNK15btTriangleShape14getNumVerticesEv
	.dword	_ZNK15btTriangleShape11getNumEdgesEv
	.dword	_ZNK15btTriangleShape7getEdgeEiR9btVector3S1_
	.dword	_ZNK15btTriangleShape9getVertexEiR9btVector3
	.dword	_ZNK15btTriangleShape12getNumPlanesEv
	.dword	_ZNK15btTriangleShape8getPlaneER9btVector3S1_i
	.dword	_ZNK15btTriangleShape8isInsideERK9btVector3f
	.dword	_ZNK15btTriangleShape16getPlaneEquationEiR9btVector3S1_
	.size	_ZTV17btTriangleShapeEx, 224

	.type	_ZTI17btTriangleShapeEx,@object # @_ZTI17btTriangleShapeEx
	.section	.data.rel.ro._ZTI17btTriangleShapeEx,"awG",@progbits,_ZTI17btTriangleShapeEx,comdat
	.weak	_ZTI17btTriangleShapeEx
	.p2align	3, 0x0
_ZTI17btTriangleShapeEx:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS17btTriangleShapeEx
	.dword	_ZTI15btTriangleShape
	.size	_ZTI17btTriangleShapeEx, 24

	.type	_ZTS17btTriangleShapeEx,@object # @_ZTS17btTriangleShapeEx
	.section	.rodata._ZTS17btTriangleShapeEx,"aG",@progbits,_ZTS17btTriangleShapeEx,comdat
	.weak	_ZTS17btTriangleShapeEx
_ZTS17btTriangleShapeEx:
	.asciz	"17btTriangleShapeEx"
	.size	_ZTS17btTriangleShapeEx, 20

	.type	_ZTI15btTriangleShape,@object   # @_ZTI15btTriangleShape
	.section	.data.rel.ro._ZTI15btTriangleShape,"awG",@progbits,_ZTI15btTriangleShape,comdat
	.weak	_ZTI15btTriangleShape
	.p2align	3, 0x0
_ZTI15btTriangleShape:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS15btTriangleShape
	.dword	_ZTI23btPolyhedralConvexShape
	.size	_ZTI15btTriangleShape, 24

	.type	_ZTS15btTriangleShape,@object   # @_ZTS15btTriangleShape
	.section	.rodata._ZTS15btTriangleShape,"aG",@progbits,_ZTS15btTriangleShape,comdat
	.weak	_ZTS15btTriangleShape
_ZTS15btTriangleShape:
	.asciz	"15btTriangleShape"
	.size	_ZTS15btTriangleShape, 18

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Triangle"
	.size	.L.str, 9

	.type	_ZTV20btTetrahedronShapeEx,@object # @_ZTV20btTetrahedronShapeEx
	.section	.data.rel.ro._ZTV20btTetrahedronShapeEx,"awG",@progbits,_ZTV20btTetrahedronShapeEx,comdat
	.weak	_ZTV20btTetrahedronShapeEx
	.p2align	3, 0x0
_ZTV20btTetrahedronShapeEx:
	.dword	0
	.dword	_ZTI20btTetrahedronShapeEx
	.dword	_ZN13btConvexShapeD2Ev
	.dword	_ZN20btTetrahedronShapeExD0Ev
	.dword	_ZNK16btBU_Simplex1to47getAabbERK11btTransformR9btVector3S4_
	.dword	_ZNK16btCollisionShape17getBoundingSphereER9btVector3Rf
	.dword	_ZNK16btCollisionShape20getAngularMotionDiscEv
	.dword	_ZNK16btCollisionShape27getContactBreakingThresholdEv
	.dword	_ZN34btPolyhedralConvexAabbCachingShape15setLocalScalingERK9btVector3
	.dword	_ZNK21btConvexInternalShape15getLocalScalingEv
	.dword	_ZNK23btPolyhedralConvexShape21calculateLocalInertiaEfR9btVector3
	.dword	_ZNK16btBU_Simplex1to47getNameEv
	.dword	_ZN21btConvexInternalShape9setMarginEf
	.dword	_ZNK21btConvexInternalShape9getMarginEv
	.dword	_ZNK21btConvexInternalShape24localGetSupportingVertexERK9btVector3
	.dword	_ZNK23btPolyhedralConvexShape37localGetSupportingVertexWithoutMarginERK9btVector3
	.dword	_ZNK23btPolyhedralConvexShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i
	.dword	_ZNK21btConvexInternalShape11getAabbSlowERK11btTransformR9btVector3S4_
	.dword	_ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv
	.dword	_ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3
	.dword	_ZNK16btBU_Simplex1to414getNumVerticesEv
	.dword	_ZNK16btBU_Simplex1to411getNumEdgesEv
	.dword	_ZNK16btBU_Simplex1to47getEdgeEiR9btVector3S1_
	.dword	_ZNK16btBU_Simplex1to49getVertexEiR9btVector3
	.dword	_ZNK16btBU_Simplex1to412getNumPlanesEv
	.dword	_ZNK16btBU_Simplex1to48getPlaneER9btVector3S1_i
	.dword	_ZNK16btBU_Simplex1to48isInsideERK9btVector3f
	.dword	_ZNK16btBU_Simplex1to48getIndexEi
	.size	_ZTV20btTetrahedronShapeEx, 224

	.type	_ZTI20btTetrahedronShapeEx,@object # @_ZTI20btTetrahedronShapeEx
	.section	.data.rel.ro._ZTI20btTetrahedronShapeEx,"awG",@progbits,_ZTI20btTetrahedronShapeEx,comdat
	.weak	_ZTI20btTetrahedronShapeEx
	.p2align	3, 0x0
_ZTI20btTetrahedronShapeEx:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS20btTetrahedronShapeEx
	.dword	_ZTI16btBU_Simplex1to4
	.size	_ZTI20btTetrahedronShapeEx, 24

	.type	_ZTS20btTetrahedronShapeEx,@object # @_ZTS20btTetrahedronShapeEx
	.section	.rodata._ZTS20btTetrahedronShapeEx,"aG",@progbits,_ZTS20btTetrahedronShapeEx,comdat
	.weak	_ZTS20btTetrahedronShapeEx
_ZTS20btTetrahedronShapeEx:
	.asciz	"20btTetrahedronShapeEx"
	.size	_ZTS20btTetrahedronShapeEx, 23

	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"btBU_Simplex1to4"
	.size	.L.str.1, 17

	.type	_ZTVN18GIM_ShapeRetriever19ChildShapeRetrieverE,@object # @_ZTVN18GIM_ShapeRetriever19ChildShapeRetrieverE
	.section	.data.rel.ro._ZTVN18GIM_ShapeRetriever19ChildShapeRetrieverE,"awG",@progbits,_ZTVN18GIM_ShapeRetriever19ChildShapeRetrieverE,comdat
	.weak	_ZTVN18GIM_ShapeRetriever19ChildShapeRetrieverE
	.p2align	3, 0x0
_ZTVN18GIM_ShapeRetriever19ChildShapeRetrieverE:
	.dword	0
	.dword	_ZTIN18GIM_ShapeRetriever19ChildShapeRetrieverE
	.dword	_ZN18GIM_ShapeRetriever19ChildShapeRetriever13getChildShapeEi
	.dword	_ZN18GIM_ShapeRetriever19ChildShapeRetrieverD2Ev
	.dword	_ZN18GIM_ShapeRetriever19ChildShapeRetrieverD0Ev
	.size	_ZTVN18GIM_ShapeRetriever19ChildShapeRetrieverE, 40

	.type	_ZTIN18GIM_ShapeRetriever19ChildShapeRetrieverE,@object # @_ZTIN18GIM_ShapeRetriever19ChildShapeRetrieverE
	.section	.data.rel.ro._ZTIN18GIM_ShapeRetriever19ChildShapeRetrieverE,"awG",@progbits,_ZTIN18GIM_ShapeRetriever19ChildShapeRetrieverE,comdat
	.weak	_ZTIN18GIM_ShapeRetriever19ChildShapeRetrieverE
	.p2align	3, 0x0
_ZTIN18GIM_ShapeRetriever19ChildShapeRetrieverE:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTSN18GIM_ShapeRetriever19ChildShapeRetrieverE
	.size	_ZTIN18GIM_ShapeRetriever19ChildShapeRetrieverE, 16

	.type	_ZTSN18GIM_ShapeRetriever19ChildShapeRetrieverE,@object # @_ZTSN18GIM_ShapeRetriever19ChildShapeRetrieverE
	.section	.rodata._ZTSN18GIM_ShapeRetriever19ChildShapeRetrieverE,"aG",@progbits,_ZTSN18GIM_ShapeRetriever19ChildShapeRetrieverE,comdat
	.weak	_ZTSN18GIM_ShapeRetriever19ChildShapeRetrieverE
_ZTSN18GIM_ShapeRetriever19ChildShapeRetrieverE:
	.asciz	"N18GIM_ShapeRetriever19ChildShapeRetrieverE"
	.size	_ZTSN18GIM_ShapeRetriever19ChildShapeRetrieverE, 44

	.type	_ZTVN18GIM_ShapeRetriever22TriangleShapeRetrieverE,@object # @_ZTVN18GIM_ShapeRetriever22TriangleShapeRetrieverE
	.section	.data.rel.ro._ZTVN18GIM_ShapeRetriever22TriangleShapeRetrieverE,"awG",@progbits,_ZTVN18GIM_ShapeRetriever22TriangleShapeRetrieverE,comdat
	.weak	_ZTVN18GIM_ShapeRetriever22TriangleShapeRetrieverE
	.p2align	3, 0x0
_ZTVN18GIM_ShapeRetriever22TriangleShapeRetrieverE:
	.dword	0
	.dword	_ZTIN18GIM_ShapeRetriever22TriangleShapeRetrieverE
	.dword	_ZN18GIM_ShapeRetriever22TriangleShapeRetriever13getChildShapeEi
	.dword	_ZN18GIM_ShapeRetriever19ChildShapeRetrieverD2Ev
	.dword	_ZN18GIM_ShapeRetriever22TriangleShapeRetrieverD0Ev
	.size	_ZTVN18GIM_ShapeRetriever22TriangleShapeRetrieverE, 40

	.type	_ZTIN18GIM_ShapeRetriever22TriangleShapeRetrieverE,@object # @_ZTIN18GIM_ShapeRetriever22TriangleShapeRetrieverE
	.section	.data.rel.ro._ZTIN18GIM_ShapeRetriever22TriangleShapeRetrieverE,"awG",@progbits,_ZTIN18GIM_ShapeRetriever22TriangleShapeRetrieverE,comdat
	.weak	_ZTIN18GIM_ShapeRetriever22TriangleShapeRetrieverE
	.p2align	3, 0x0
_ZTIN18GIM_ShapeRetriever22TriangleShapeRetrieverE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTSN18GIM_ShapeRetriever22TriangleShapeRetrieverE
	.dword	_ZTIN18GIM_ShapeRetriever19ChildShapeRetrieverE
	.size	_ZTIN18GIM_ShapeRetriever22TriangleShapeRetrieverE, 24

	.type	_ZTSN18GIM_ShapeRetriever22TriangleShapeRetrieverE,@object # @_ZTSN18GIM_ShapeRetriever22TriangleShapeRetrieverE
	.section	.rodata._ZTSN18GIM_ShapeRetriever22TriangleShapeRetrieverE,"aG",@progbits,_ZTSN18GIM_ShapeRetriever22TriangleShapeRetrieverE,comdat
	.weak	_ZTSN18GIM_ShapeRetriever22TriangleShapeRetrieverE
_ZTSN18GIM_ShapeRetriever22TriangleShapeRetrieverE:
	.asciz	"N18GIM_ShapeRetriever22TriangleShapeRetrieverE"
	.size	_ZTSN18GIM_ShapeRetriever22TriangleShapeRetrieverE, 47

	.type	_ZTVN18GIM_ShapeRetriever19TetraShapeRetrieverE,@object # @_ZTVN18GIM_ShapeRetriever19TetraShapeRetrieverE
	.section	.data.rel.ro._ZTVN18GIM_ShapeRetriever19TetraShapeRetrieverE,"awG",@progbits,_ZTVN18GIM_ShapeRetriever19TetraShapeRetrieverE,comdat
	.weak	_ZTVN18GIM_ShapeRetriever19TetraShapeRetrieverE
	.p2align	3, 0x0
_ZTVN18GIM_ShapeRetriever19TetraShapeRetrieverE:
	.dword	0
	.dword	_ZTIN18GIM_ShapeRetriever19TetraShapeRetrieverE
	.dword	_ZN18GIM_ShapeRetriever19TetraShapeRetriever13getChildShapeEi
	.dword	_ZN18GIM_ShapeRetriever19ChildShapeRetrieverD2Ev
	.dword	_ZN18GIM_ShapeRetriever19TetraShapeRetrieverD0Ev
	.size	_ZTVN18GIM_ShapeRetriever19TetraShapeRetrieverE, 40

	.type	_ZTIN18GIM_ShapeRetriever19TetraShapeRetrieverE,@object # @_ZTIN18GIM_ShapeRetriever19TetraShapeRetrieverE
	.section	.data.rel.ro._ZTIN18GIM_ShapeRetriever19TetraShapeRetrieverE,"awG",@progbits,_ZTIN18GIM_ShapeRetriever19TetraShapeRetrieverE,comdat
	.weak	_ZTIN18GIM_ShapeRetriever19TetraShapeRetrieverE
	.p2align	3, 0x0
_ZTIN18GIM_ShapeRetriever19TetraShapeRetrieverE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTSN18GIM_ShapeRetriever19TetraShapeRetrieverE
	.dword	_ZTIN18GIM_ShapeRetriever19ChildShapeRetrieverE
	.size	_ZTIN18GIM_ShapeRetriever19TetraShapeRetrieverE, 24

	.type	_ZTSN18GIM_ShapeRetriever19TetraShapeRetrieverE,@object # @_ZTSN18GIM_ShapeRetriever19TetraShapeRetrieverE
	.section	.rodata._ZTSN18GIM_ShapeRetriever19TetraShapeRetrieverE,"aG",@progbits,_ZTSN18GIM_ShapeRetriever19TetraShapeRetrieverE,comdat
	.weak	_ZTSN18GIM_ShapeRetriever19TetraShapeRetrieverE
_ZTSN18GIM_ShapeRetriever19TetraShapeRetrieverE:
	.asciz	"N18GIM_ShapeRetriever19TetraShapeRetrieverE"
	.size	_ZTSN18GIM_ShapeRetriever19TetraShapeRetrieverE, 44

	.type	_ZTV25btGImpactTriangleCallback,@object # @_ZTV25btGImpactTriangleCallback
	.section	.data.rel.ro._ZTV25btGImpactTriangleCallback,"awG",@progbits,_ZTV25btGImpactTriangleCallback,comdat
	.weak	_ZTV25btGImpactTriangleCallback
	.p2align	3, 0x0
_ZTV25btGImpactTriangleCallback:
	.dword	0
	.dword	_ZTI25btGImpactTriangleCallback
	.dword	_ZN18btTriangleCallbackD2Ev
	.dword	_ZN25btGImpactTriangleCallbackD0Ev
	.dword	_ZN25btGImpactTriangleCallback15processTriangleEP9btVector3ii
	.size	_ZTV25btGImpactTriangleCallback, 40

	.type	_ZTI25btGImpactTriangleCallback,@object # @_ZTI25btGImpactTriangleCallback
	.section	.data.rel.ro._ZTI25btGImpactTriangleCallback,"awG",@progbits,_ZTI25btGImpactTriangleCallback,comdat
	.weak	_ZTI25btGImpactTriangleCallback
	.p2align	3, 0x0
_ZTI25btGImpactTriangleCallback:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS25btGImpactTriangleCallback
	.dword	_ZTI18btTriangleCallback
	.size	_ZTI25btGImpactTriangleCallback, 24

	.type	_ZTS25btGImpactTriangleCallback,@object # @_ZTS25btGImpactTriangleCallback
	.section	.rodata._ZTS25btGImpactTriangleCallback,"aG",@progbits,_ZTS25btGImpactTriangleCallback,comdat
	.weak	_ZTS25btGImpactTriangleCallback
_ZTS25btGImpactTriangleCallback:
	.asciz	"25btGImpactTriangleCallback"
	.size	_ZTS25btGImpactTriangleCallback, 28

	.type	_ZTVN27btGImpactCollisionAlgorithm10CreateFuncE,@object # @_ZTVN27btGImpactCollisionAlgorithm10CreateFuncE
	.section	.data.rel.ro._ZTVN27btGImpactCollisionAlgorithm10CreateFuncE,"awG",@progbits,_ZTVN27btGImpactCollisionAlgorithm10CreateFuncE,comdat
	.weak	_ZTVN27btGImpactCollisionAlgorithm10CreateFuncE
	.p2align	3, 0x0
_ZTVN27btGImpactCollisionAlgorithm10CreateFuncE:
	.dword	0
	.dword	_ZTIN27btGImpactCollisionAlgorithm10CreateFuncE
	.dword	_ZN30btCollisionAlgorithmCreateFuncD2Ev
	.dword	_ZN27btGImpactCollisionAlgorithm10CreateFuncD0Ev
	.dword	_ZN27btGImpactCollisionAlgorithm10CreateFunc24CreateCollisionAlgorithmER36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS4_
	.size	_ZTVN27btGImpactCollisionAlgorithm10CreateFuncE, 40

	.type	_ZTIN27btGImpactCollisionAlgorithm10CreateFuncE,@object # @_ZTIN27btGImpactCollisionAlgorithm10CreateFuncE
	.section	.data.rel.ro._ZTIN27btGImpactCollisionAlgorithm10CreateFuncE,"awG",@progbits,_ZTIN27btGImpactCollisionAlgorithm10CreateFuncE,comdat
	.weak	_ZTIN27btGImpactCollisionAlgorithm10CreateFuncE
	.p2align	3, 0x0
_ZTIN27btGImpactCollisionAlgorithm10CreateFuncE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTSN27btGImpactCollisionAlgorithm10CreateFuncE
	.dword	_ZTI30btCollisionAlgorithmCreateFunc
	.size	_ZTIN27btGImpactCollisionAlgorithm10CreateFuncE, 24

	.type	_ZTSN27btGImpactCollisionAlgorithm10CreateFuncE,@object # @_ZTSN27btGImpactCollisionAlgorithm10CreateFuncE
	.section	.rodata._ZTSN27btGImpactCollisionAlgorithm10CreateFuncE,"aG",@progbits,_ZTSN27btGImpactCollisionAlgorithm10CreateFuncE,comdat
	.weak	_ZTSN27btGImpactCollisionAlgorithm10CreateFuncE
_ZTSN27btGImpactCollisionAlgorithm10CreateFuncE:
	.asciz	"N27btGImpactCollisionAlgorithm10CreateFuncE"
	.size	_ZTSN27btGImpactCollisionAlgorithm10CreateFuncE, 44

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

	.globl	_ZN27btGImpactCollisionAlgorithmC1ERK36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS4_
	.type	_ZN27btGImpactCollisionAlgorithmC1ERK36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS4_,@function
_ZN27btGImpactCollisionAlgorithmC1ERK36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS4_ = _ZN27btGImpactCollisionAlgorithmC2ERK36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS4_
	.globl	_ZN27btGImpactCollisionAlgorithmD1Ev
	.type	_ZN27btGImpactCollisionAlgorithmD1Ev,@function
_ZN27btGImpactCollisionAlgorithmD1Ev = _ZN27btGImpactCollisionAlgorithmD2Ev
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
	.addrsig_sym g_gimpact_cf
	.addrsig_sym _ZTI27btGImpactCollisionAlgorithm
	.addrsig_sym _ZTVN10__cxxabiv120__si_class_type_infoE
	.addrsig_sym _ZTS27btGImpactCollisionAlgorithm
	.addrsig_sym _ZTI30btActivatingCollisionAlgorithm
	.addrsig_sym _ZTI17btTriangleShapeEx
	.addrsig_sym _ZTS17btTriangleShapeEx
	.addrsig_sym _ZTI15btTriangleShape
	.addrsig_sym _ZTS15btTriangleShape
	.addrsig_sym _ZTI23btPolyhedralConvexShape
	.addrsig_sym _ZTI20btTetrahedronShapeEx
	.addrsig_sym _ZTS20btTetrahedronShapeEx
	.addrsig_sym _ZTI16btBU_Simplex1to4
	.addrsig_sym _ZTIN18GIM_ShapeRetriever19ChildShapeRetrieverE
	.addrsig_sym _ZTVN10__cxxabiv117__class_type_infoE
	.addrsig_sym _ZTSN18GIM_ShapeRetriever19ChildShapeRetrieverE
	.addrsig_sym _ZTIN18GIM_ShapeRetriever22TriangleShapeRetrieverE
	.addrsig_sym _ZTSN18GIM_ShapeRetriever22TriangleShapeRetrieverE
	.addrsig_sym _ZTIN18GIM_ShapeRetriever19TetraShapeRetrieverE
	.addrsig_sym _ZTSN18GIM_ShapeRetriever19TetraShapeRetrieverE
	.addrsig_sym _ZTI25btGImpactTriangleCallback
	.addrsig_sym _ZTS25btGImpactTriangleCallback
	.addrsig_sym _ZTI18btTriangleCallback
	.addrsig_sym _ZTIN27btGImpactCollisionAlgorithm10CreateFuncE
	.addrsig_sym _ZTSN27btGImpactCollisionAlgorithm10CreateFuncE
	.addrsig_sym _ZTI30btCollisionAlgorithmCreateFunc
	.addrsig_sym _ZTS30btCollisionAlgorithmCreateFunc
