	.file	"btSphereSphereCollisionAlgorithm.cpp"
	.text
	.globl	_ZN32btSphereSphereCollisionAlgorithmC2EP20btPersistentManifoldRK36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS6_ # -- Begin function _ZN32btSphereSphereCollisionAlgorithmC2EP20btPersistentManifoldRK36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS6_
	.p2align	5
	.type	_ZN32btSphereSphereCollisionAlgorithmC2EP20btPersistentManifoldRK36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS6_,@function
_ZN32btSphereSphereCollisionAlgorithmC2EP20btPersistentManifoldRK36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS6_: # @_ZN32btSphereSphereCollisionAlgorithmC2EP20btPersistentManifoldRK36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS6_
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
	pcalau12i	$a0, %pc_hi20(_ZTV32btSphereSphereCollisionAlgorithm+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV32btSphereSphereCollisionAlgorithm+16)
	st.d	$a0, $fp, 0
	st.b	$zero, $fp, 16
	st.d	$s2, $fp, 24
	bnez	$s2, .LBB0_3
# %bb.1:
	ld.d	$a0, $fp, 8
	ld.d	$a1, $a0, 0
	ld.d	$a3, $a1, 24
.Ltmp0:                                 # EH_LABEL
	move	$a1, $s1
	move	$a2, $s0
	jirl	$ra, $a3, 0
.Ltmp1:                                 # EH_LABEL
# %bb.2:
	st.d	$a0, $fp, 24
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 16
.LBB0_3:
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB0_4:
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
.LBB0_6:
.Ltmp5:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	_ZN32btSphereSphereCollisionAlgorithmC2EP20btPersistentManifoldRK36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS6_, .Lfunc_end0-_ZN32btSphereSphereCollisionAlgorithmC2EP20btPersistentManifoldRK36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS6_
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
	.uleb128 .Ltmp1-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp1
	.uleb128 .Ltmp2-.Lfunc_begin0           #     jumps to .Ltmp2
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp3-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp4-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp4
	.uleb128 .Ltmp5-.Lfunc_begin0           #     jumps to .Ltmp5
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp4-.Lfunc_begin0           # >> Call Site 4 <<
	.uleb128 .Lfunc_end0-.Ltmp4             #   Call between .Ltmp4 and .Lfunc_end0
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
	.globl	_ZN32btSphereSphereCollisionAlgorithmD2Ev # -- Begin function _ZN32btSphereSphereCollisionAlgorithmD2Ev
	.p2align	5
	.type	_ZN32btSphereSphereCollisionAlgorithmD2Ev,@function
_ZN32btSphereSphereCollisionAlgorithmD2Ev: # @_ZN32btSphereSphereCollisionAlgorithmD2Ev
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
	pcalau12i	$a0, %pc_hi20(_ZTV32btSphereSphereCollisionAlgorithm+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV32btSphereSphereCollisionAlgorithm+16)
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
.Ltmp6:                                 # EH_LABEL
	jirl	$ra, $a2, 0
.Ltmp7:                                 # EH_LABEL
.LBB2_3:
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZN30btActivatingCollisionAlgorithmD2Ev)
	jr	$t8
.LBB2_4:
.Ltmp8:                                 # EH_LABEL
	move	$s0, $a0
.Ltmp9:                                 # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN30btActivatingCollisionAlgorithmD2Ev)
	jirl	$ra, $ra, 0
.Ltmp10:                                # EH_LABEL
# %bb.5:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB2_6:
.Ltmp11:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	_ZN32btSphereSphereCollisionAlgorithmD2Ev, .Lfunc_end2-_ZN32btSphereSphereCollisionAlgorithmD2Ev
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
	.uleb128 .Ltmp6-.Lfunc_begin1           # >> Call Site 1 <<
	.uleb128 .Ltmp7-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp7
	.uleb128 .Ltmp8-.Lfunc_begin1           #     jumps to .Ltmp8
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp7-.Lfunc_begin1           # >> Call Site 2 <<
	.uleb128 .Ltmp9-.Ltmp7                  #   Call between .Ltmp7 and .Ltmp9
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp9-.Lfunc_begin1           # >> Call Site 3 <<
	.uleb128 .Ltmp10-.Ltmp9                 #   Call between .Ltmp9 and .Ltmp10
	.uleb128 .Ltmp11-.Lfunc_begin1          #     jumps to .Ltmp11
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp10-.Lfunc_begin1          # >> Call Site 4 <<
	.uleb128 .Lfunc_end2-.Ltmp10            #   Call between .Ltmp10 and .Lfunc_end2
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
	.globl	_ZN32btSphereSphereCollisionAlgorithmD0Ev # -- Begin function _ZN32btSphereSphereCollisionAlgorithmD0Ev
	.p2align	5
	.type	_ZN32btSphereSphereCollisionAlgorithmD0Ev,@function
_ZN32btSphereSphereCollisionAlgorithmD0Ev: # @_ZN32btSphereSphereCollisionAlgorithmD0Ev
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
	pcalau12i	$a0, %pc_hi20(_ZTV32btSphereSphereCollisionAlgorithm+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV32btSphereSphereCollisionAlgorithm+16)
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
.Ltmp12:                                # EH_LABEL
	jirl	$ra, $a2, 0
.Ltmp13:                                # EH_LABEL
.LBB3_3:
.Ltmp18:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN30btActivatingCollisionAlgorithmD2Ev)
	jirl	$ra, $ra, 0
.Ltmp19:                                # EH_LABEL
# %bb.4:                                # %_ZN32btSphereSphereCollisionAlgorithmD2Ev.exit
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZdlPv)
	jr	$t8
.LBB3_5:
.Ltmp14:                                # EH_LABEL
	move	$s0, $a0
.Ltmp15:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN30btActivatingCollisionAlgorithmD2Ev)
	jirl	$ra, $ra, 0
.Ltmp16:                                # EH_LABEL
	b	.LBB3_8
.LBB3_6:
.Ltmp17:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB3_7:
.Ltmp20:                                # EH_LABEL
	move	$s0, $a0
.LBB3_8:                                # %.body
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end3:
	.size	_ZN32btSphereSphereCollisionAlgorithmD0Ev, .Lfunc_end3-_ZN32btSphereSphereCollisionAlgorithmD0Ev
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
	.uleb128 .Ltmp12-.Lfunc_begin2          # >> Call Site 1 <<
	.uleb128 .Ltmp13-.Ltmp12                #   Call between .Ltmp12 and .Ltmp13
	.uleb128 .Ltmp14-.Lfunc_begin2          #     jumps to .Ltmp14
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp18-.Lfunc_begin2          # >> Call Site 2 <<
	.uleb128 .Ltmp19-.Ltmp18                #   Call between .Ltmp18 and .Ltmp19
	.uleb128 .Ltmp20-.Lfunc_begin2          #     jumps to .Ltmp20
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp19-.Lfunc_begin2          # >> Call Site 3 <<
	.uleb128 .Ltmp15-.Ltmp19                #   Call between .Ltmp19 and .Ltmp15
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp15-.Lfunc_begin2          # >> Call Site 4 <<
	.uleb128 .Ltmp16-.Ltmp15                #   Call between .Ltmp15 and .Ltmp16
	.uleb128 .Ltmp17-.Lfunc_begin2          #     jumps to .Ltmp17
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp16-.Lfunc_begin2          # >> Call Site 5 <<
	.uleb128 .Lfunc_end3-.Ltmp16            #   Call between .Ltmp16 and .Lfunc_end3
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
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN32btSphereSphereCollisionAlgorithm16processCollisionEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult
.LCPI4_0:
	.word	0x3f800000                      # float 1
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI4_1:
	.word	0x34000000                      # float 1.1920929E-7
	.text
	.globl	_ZN32btSphereSphereCollisionAlgorithm16processCollisionEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult
	.p2align	5
	.type	_ZN32btSphereSphereCollisionAlgorithm16processCollisionEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult,@function
_ZN32btSphereSphereCollisionAlgorithm16processCollisionEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult: # @_ZN32btSphereSphereCollisionAlgorithm16processCollisionEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult
	.cfi_startproc
# %bb.0:
	ld.d	$a0, $a0, 24
	beqz	$a0, .LBB4_10
# %bb.1:
	fld.s	$fa0, $a1, 56
	fld.s	$fa2, $a2, 56
	ld.d	$a3, $a1, 200
	ld.d	$a5, $a2, 200
	fsub.s	$fa5, $fa0, $fa2
	fld.s	$fa0, $a1, 60
	fld.s	$fa3, $a2, 60
	fld.s	$fa4, $a1, 64
	fld.s	$fa1, $a2, 64
	fld.s	$ft0, $a3, 40
	fld.s	$ft1, $a3, 24
	fsub.s	$fa6, $fa0, $fa3
	fsub.s	$fa7, $fa4, $fa1
	fmul.s	$fa0, $fa6, $fa6
	fmul.s	$ft1, $ft0, $ft1
	fld.s	$fa4, $a5, 40
	fld.s	$ft2, $a5, 24
	fmadd.s	$fa0, $fa5, $fa5, $fa0
	fmadd.s	$fa0, $fa7, $fa7, $fa0
	fsqrt.s	$ft0, $fa0
	fmul.s	$fa4, $fa4, $ft2
	fadd.s	$fa0, $ft1, $fa4
	fcmp.cule.s	$fcc0, $ft0, $fa0
	st.d	$a0, $a4, 8
	bcnez	$fcc0, .LBB4_4
# %bb.2:
	ld.w	$a1, $a0, 728
	beqz	$a1, .LBB4_10
# %bb.3:                                # %.sink.split.i
	ld.d	$a1, $a0, 712
	ld.d	$a2, $a4, 144
	xor	$a1, $a1, $a2
	sltui	$a1, $a1, 1
	ori	$a2, $zero, 80
	masknez	$a3, $a2, $a1
	ori	$a5, $zero, 16
	maskeqz	$a6, $a5, $a1
	or	$a3, $a6, $a3
	masknez	$a5, $a5, $a1
	maskeqz	$a1, $a2, $a1
	or	$a2, $a1, $a5
	add.d	$a1, $a4, $a3
	add.d	$a2, $a4, $a2
	pcaddu18i	$t8, %call36(_ZN20btPersistentManifold20refreshContactPointsERK11btTransformS2_)
	jr	$t8
.LBB4_4:
	addi.d	$sp, $sp, -48
	.cfi_def_cfa_offset 48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	pcalau12i	$a0, %pc_hi20(.LCPI4_0)
	pcalau12i	$a1, %pc_hi20(.LCPI4_1)
	fld.s	$ft1, $a1, %pc_lo12(.LCPI4_1)
	vld	$vr10, $a0, %pc_lo12(.LCPI4_0)
	fsub.s	$fa0, $ft0, $fa0
	fcmp.cule.s	$fcc0, $ft0, $ft1
	vst	$vr10, $sp, 16
	bcnez	$fcc0, .LBB4_6
# %bb.5:
	frecip.s	$ft1, $ft0
	fmul.s	$ft0, $fa5, $ft1
	fmul.s	$fa6, $fa6, $ft1
	fmul.s	$fa5, $fa7, $ft1
	movfr2gr.s	$a0, $ft0
	movfr2gr.s	$a1, $fa6
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa5
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $sp, 16
	st.d	$a1, $sp, 24
	b	.LBB4_7
.LBB4_6:
	movgr2fr.w	$fa5, $zero
	vldi	$vr8, -1168
	fmov.s	$fa6, $fa5
.LBB4_7:
	fmul.s	$fa7, $fa4, $ft0
	fmul.s	$fa6, $fa4, $fa6
	fadd.s	$fa2, $fa2, $fa7
	fadd.s	$fa3, $fa3, $fa6
	movfr2gr.s	$a0, $fa2
	movfr2gr.s	$a1, $fa3
	bstrins.d	$a0, $a1, 63, 32
	ld.d	$a1, $a4, 0
	fmul.s	$fa2, $fa4, $fa5
	fadd.s	$fa1, $fa1, $fa2
	st.d	$a0, $sp, 0
	ld.d	$a3, $a1, 32
	movfr2gr.s	$a0, $fa1
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $sp, 8
	addi.d	$a1, $sp, 16
	addi.d	$a2, $sp, 0
	move	$a0, $a4
	move	$fp, $a4
	jirl	$ra, $a3, 0
	ld.d	$a0, $fp, 8
	ld.w	$a1, $a0, 728
	beqz	$a1, .LBB4_9
# %bb.8:                                # %.sink.split.i45
	ld.d	$a1, $a0, 712
	ld.d	$a3, $fp, 144
	xor	$a1, $a1, $a3
	sltui	$a1, $a1, 1
	ori	$a3, $zero, 80
	masknez	$a4, $a3, $a1
	ori	$a5, $zero, 16
	maskeqz	$a6, $a5, $a1
	or	$a4, $a6, $a4
	masknez	$a5, $a5, $a1
	maskeqz	$a1, $a3, $a1
	or	$a3, $a1, $a5
	add.d	$a1, $fp, $a4
	add.d	$a2, $fp, $a3
	pcaddu18i	$ra, %call36(_ZN20btPersistentManifold20refreshContactPointsERK11btTransformS2_)
	jirl	$ra, $ra, 0
.LBB4_9:                                # %_ZN16btManifoldResult20refreshContactPointsEv.exit49
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
.LBB4_10:                               # %_ZN16btManifoldResult20refreshContactPointsEv.exit
	ret
.Lfunc_end4:
	.size	_ZN32btSphereSphereCollisionAlgorithm16processCollisionEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult, .Lfunc_end4-_ZN32btSphereSphereCollisionAlgorithm16processCollisionEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult
	.cfi_endproc
                                        # -- End function
	.globl	_ZN32btSphereSphereCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult # -- Begin function _ZN32btSphereSphereCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult
	.p2align	5
	.type	_ZN32btSphereSphereCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult,@function
_ZN32btSphereSphereCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult: # @_ZN32btSphereSphereCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult
# %bb.0:
	vldi	$vr0, -1168
	ret
.Lfunc_end5:
	.size	_ZN32btSphereSphereCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult, .Lfunc_end5-_ZN32btSphereSphereCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult
                                        # -- End function
	.section	.text._ZN32btSphereSphereCollisionAlgorithm22getAllContactManifoldsER20btAlignedObjectArrayIP20btPersistentManifoldE,"axG",@progbits,_ZN32btSphereSphereCollisionAlgorithm22getAllContactManifoldsER20btAlignedObjectArrayIP20btPersistentManifoldE,comdat
	.weak	_ZN32btSphereSphereCollisionAlgorithm22getAllContactManifoldsER20btAlignedObjectArrayIP20btPersistentManifoldE # -- Begin function _ZN32btSphereSphereCollisionAlgorithm22getAllContactManifoldsER20btAlignedObjectArrayIP20btPersistentManifoldE
	.p2align	5
	.type	_ZN32btSphereSphereCollisionAlgorithm22getAllContactManifoldsER20btAlignedObjectArrayIP20btPersistentManifoldE,@function
_ZN32btSphereSphereCollisionAlgorithm22getAllContactManifoldsER20btAlignedObjectArrayIP20btPersistentManifoldE: # @_ZN32btSphereSphereCollisionAlgorithm22getAllContactManifoldsER20btAlignedObjectArrayIP20btPersistentManifoldE
	.cfi_startproc
# %bb.0:
	ld.d	$a2, $a0, 24
	beqz	$a2, .LBB6_20
# %bb.1:
	ld.b	$a3, $a0, 16
	andi	$a3, $a3, 1
	beqz	$a3, .LBB6_20
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
	bne	$a3, $a4, .LBB6_19
# %bb.3:
	sltui	$a4, $a3, 1
	slli.w	$a5, $a3, 1
	masknez	$a5, $a5, $a4
	ori	$a6, $zero, 1
	maskeqz	$a4, $a6, $a4
	or	$s0, $a4, $a5
	bge	$a3, $s0, .LBB6_19
# %bb.4:
	beqz	$s0, .LBB6_14
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
	blez	$a3, .LBB6_15
.LBB6_6:                                # %.lr.ph.i.i.i
	ori	$a5, $zero, 4
	move	$a4, $zero
	bltu	$a3, $a5, .LBB6_11
# %bb.7:                                # %.lr.ph.i.i.i
	sub.d	$a5, $fp, $a2
	ori	$a6, $zero, 32
	bltu	$a5, $a6, .LBB6_11
# %bb.8:                                # %vector.ph
	bstrpick.d	$a4, $a3, 30, 2
	slli.d	$a4, $a4, 2
	addi.d	$a5, $a2, 16
	addi.d	$a6, $fp, 16
	move	$a7, $a4
	.p2align	4, , 16
.LBB6_9:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a5, -16
	vld	$vr1, $a5, 0
	vst	$vr0, $a6, -16
	vst	$vr1, $a6, 0
	addi.d	$a7, $a7, -4
	addi.d	$a5, $a5, 32
	addi.d	$a6, $a6, 32
	bnez	$a7, .LBB6_9
# %bb.10:                               # %middle.block
	beq	$a4, $a3, .LBB6_13
.LBB6_11:                               # %scalar.ph.preheader
	sub.d	$a5, $a3, $a4
	alsl.d	$a6, $a4, $a2, 3
	alsl.d	$a4, $a4, $fp, 3
	.p2align	4, , 16
.LBB6_12:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a7, $a6, 0
	st.d	$a7, $a4, 0
	addi.d	$a5, $a5, -1
	addi.d	$a6, $a6, 8
	addi.d	$a4, $a4, 8
	bnez	$a5, .LBB6_12
.LBB6_13:                               # %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.thread.i.i
	ld.bu	$a4, $a1, 24
	bnez	$a4, .LBB6_17
	b	.LBB6_18
.LBB6_14:
	move	$fp, $zero
	ld.d	$a2, $a1, 16
	bgtz	$a3, .LBB6_6
.LBB6_15:                               # %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.i.i
	beqz	$a2, .LBB6_18
# %bb.16:                               # %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.i.i
	ld.b	$a4, $a1, 24
	andi	$a4, $a4, 1
	beqz	$a4, .LBB6_18
.LBB6_17:
	move	$s1, $a0
	move	$a0, $a2
	move	$s2, $a1
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	move	$a1, $s2
	ld.w	$a3, $s2, 4
.LBB6_18:                               # %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE10deallocateEv.exit.i.i
	ori	$a4, $zero, 1
	ld.d	$a2, $a0, 24
	st.b	$a4, $a1, 24
	st.d	$fp, $a1, 16
	st.w	$s0, $a1, 8
.LBB6_19:                               # %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE9push_backERKS1_.exit
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
.LBB6_20:
	ret
.Lfunc_end6:
	.size	_ZN32btSphereSphereCollisionAlgorithm22getAllContactManifoldsER20btAlignedObjectArrayIP20btPersistentManifoldE, .Lfunc_end6-_ZN32btSphereSphereCollisionAlgorithm22getAllContactManifoldsER20btAlignedObjectArrayIP20btPersistentManifoldE
	.cfi_endproc
                                        # -- End function
	.type	_ZTV32btSphereSphereCollisionAlgorithm,@object # @_ZTV32btSphereSphereCollisionAlgorithm
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTV32btSphereSphereCollisionAlgorithm
	.p2align	3, 0x0
_ZTV32btSphereSphereCollisionAlgorithm:
	.dword	0
	.dword	_ZTI32btSphereSphereCollisionAlgorithm
	.dword	_ZN32btSphereSphereCollisionAlgorithmD2Ev
	.dword	_ZN32btSphereSphereCollisionAlgorithmD0Ev
	.dword	_ZN32btSphereSphereCollisionAlgorithm16processCollisionEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult
	.dword	_ZN32btSphereSphereCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult
	.dword	_ZN32btSphereSphereCollisionAlgorithm22getAllContactManifoldsER20btAlignedObjectArrayIP20btPersistentManifoldE
	.size	_ZTV32btSphereSphereCollisionAlgorithm, 56

	.type	_ZTI32btSphereSphereCollisionAlgorithm,@object # @_ZTI32btSphereSphereCollisionAlgorithm
	.globl	_ZTI32btSphereSphereCollisionAlgorithm
	.p2align	3, 0x0
_ZTI32btSphereSphereCollisionAlgorithm:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS32btSphereSphereCollisionAlgorithm
	.dword	_ZTI30btActivatingCollisionAlgorithm
	.size	_ZTI32btSphereSphereCollisionAlgorithm, 24

	.type	_ZTS32btSphereSphereCollisionAlgorithm,@object # @_ZTS32btSphereSphereCollisionAlgorithm
	.section	.rodata,"a",@progbits
	.globl	_ZTS32btSphereSphereCollisionAlgorithm
_ZTS32btSphereSphereCollisionAlgorithm:
	.asciz	"32btSphereSphereCollisionAlgorithm"
	.size	_ZTS32btSphereSphereCollisionAlgorithm, 35

	.globl	_ZN32btSphereSphereCollisionAlgorithmC1EP20btPersistentManifoldRK36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS6_
	.type	_ZN32btSphereSphereCollisionAlgorithmC1EP20btPersistentManifoldRK36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS6_,@function
_ZN32btSphereSphereCollisionAlgorithmC1EP20btPersistentManifoldRK36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS6_ = _ZN32btSphereSphereCollisionAlgorithmC2EP20btPersistentManifoldRK36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS6_
	.globl	_ZN32btSphereSphereCollisionAlgorithmD1Ev
	.type	_ZN32btSphereSphereCollisionAlgorithmD1Ev,@function
_ZN32btSphereSphereCollisionAlgorithmD1Ev = _ZN32btSphereSphereCollisionAlgorithmD2Ev
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
	.addrsig_sym _ZTI32btSphereSphereCollisionAlgorithm
	.addrsig_sym _ZTVN10__cxxabiv120__si_class_type_infoE
	.addrsig_sym _ZTS32btSphereSphereCollisionAlgorithm
	.addrsig_sym _ZTI30btActivatingCollisionAlgorithm
