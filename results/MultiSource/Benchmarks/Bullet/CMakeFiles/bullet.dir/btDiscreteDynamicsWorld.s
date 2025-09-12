	.file	"btDiscreteDynamicsWorld.cpp"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN23btDiscreteDynamicsWorldC2EP12btDispatcherP21btBroadphaseInterfaceP18btConstraintSolverP24btCollisionConfiguration
.LCPI0_0:
	.word	0x41a00000                      # float 20
	.word	0x3f800000                      # float 1
	.word	0x3e4ccccd                      # float 0.200000003
	.word	0x3dcccccd                      # float 0.100000001
.LCPI0_1:
	.word	0x00000000                      # float 0
	.word	0xc1200000                      # float -10
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.text
	.globl	_ZN23btDiscreteDynamicsWorldC2EP12btDispatcherP21btBroadphaseInterfaceP18btConstraintSolverP24btCollisionConfiguration
	.p2align	5
	.type	_ZN23btDiscreteDynamicsWorldC2EP12btDispatcherP21btBroadphaseInterfaceP18btConstraintSolverP24btCollisionConfiguration,@function
_ZN23btDiscreteDynamicsWorldC2EP12btDispatcherP21btBroadphaseInterfaceP18btConstraintSolverP24btCollisionConfiguration: # @_ZN23btDiscreteDynamicsWorldC2EP12btDispatcherP21btBroadphaseInterfaceP18btConstraintSolverP24btCollisionConfiguration
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
	move	$s0, $a3
	move	$fp, $a0
	move	$a3, $a4
	pcaddu18i	$ra, %call36(_ZN16btCollisionWorldC2EP12btDispatcherP21btBroadphaseInterfaceP24btCollisionConfiguration)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 152
	vrepli.b	$vr0, 0
	vst	$vr0, $fp, 136
	lu12i.w	$a0, 258457
	ori	$a0, $a0, 2458
	lu52i.d	$a0, $a0, 1016
	st.d	$a0, $fp, 160
	lu12i.w	$a0, 256409
	ori	$a0, $a0, 2458
	st.w	$a0, $fp, 168
	ori	$a0, $zero, 0
	pcalau12i	$a1, %pc_hi20(.LCPI0_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI0_0)
	ori	$a1, $zero, 0
	lu32i.d	$a1, 10
	st.d	$a1, $fp, 176
	st.w	$zero, $fp, 200
	vst	$vr0, $fp, 184
	ori	$a1, $zero, 0
	lu32i.d	$a1, 251658
	lu52i.d	$a1, $a1, -1078
	st.d	$a1, $fp, 204
	lu32i.d	$a0, -419430
	lu52i.d	$a0, $a0, 1013
	st.d	$a0, $fp, 212
	ori	$a0, $zero, 260
	lu32i.d	$a0, 2
	st.d	$a0, $fp, 220
	pcalau12i	$a0, %pc_hi20(_ZTV23btDiscreteDynamicsWorld+16)
	addi.d	$a1, $a0, %pc_lo12(_ZTV23btDiscreteDynamicsWorld+16)
	move	$a0, $zero
	st.d	$a1, $fp, 0
	st.d	$s0, $fp, 232
	pcalau12i	$a1, %pc_hi20(.LCPI0_1)
	vld	$vr0, $a1, %pc_lo12(.LCPI0_1)
	lu12i.w	$a1, 247944
	ori	$a1, $a1, 2185
	st.w	$a1, $fp, 328
	ori	$a1, $zero, 1
	st.b	$a1, $fp, 272
	st.d	$zero, $fp, 264
	st.d	$zero, $fp, 252
	st.b	$a1, $fp, 304
	st.d	$zero, $fp, 296
	st.d	$zero, $fp, 284
	vst	$vr0, $fp, 312
	st.b	$zero, $fp, 334
	st.b	$a1, $fp, 360
	st.d	$zero, $fp, 352
	st.d	$zero, $fp, 340
	st.w	$zero, $fp, 368
	bnez	$s0, .LBB0_4
# %bb.1:
.Ltmp0:                                 # EH_LABEL
	ori	$a0, $zero, 240
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.2:
.Ltmp2:                                 # EH_LABEL
	move	$s0, $a0
	pcaddu18i	$ra, %call36(_ZN35btSequentialImpulseConstraintSolverC1Ev)
	jirl	$ra, $ra, 0
.Ltmp3:                                 # EH_LABEL
# %bb.3:
	st.d	$s0, $fp, 232
	ori	$a0, $zero, 1
.LBB0_4:
	st.b	$a0, $fp, 333
.Ltmp5:                                 # EH_LABEL
	ori	$a0, $zero, 112
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
.Ltmp6:                                 # EH_LABEL
# %bb.5:
.Ltmp7:                                 # EH_LABEL
	move	$s0, $a0
	pcaddu18i	$ra, %call36(_ZN25btSimulationIslandManagerC1Ev)
	jirl	$ra, $ra, 0
.Ltmp8:                                 # EH_LABEL
# %bb.6:
	st.d	$s0, $fp, 240
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 332
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB0_7:
.Ltmp4:                                 # EH_LABEL
	b	.LBB0_9
.LBB0_8:
.Ltmp9:                                 # EH_LABEL
.LBB0_9:
	move	$s0, $a0
.Ltmp10:                                # EH_LABEL
	addi.d	$a0, $fp, 336
	pcaddu18i	$ra, %call36(_ZN20btAlignedObjectArrayIP17btActionInterfaceED2Ev)
	jirl	$ra, $ra, 0
.Ltmp11:                                # EH_LABEL
# %bb.10:
.Ltmp12:                                # EH_LABEL
	addi.d	$a0, $fp, 280
	pcaddu18i	$ra, %call36(_ZN20btAlignedObjectArrayIP11btRigidBodyED2Ev)
	jirl	$ra, $ra, 0
.Ltmp13:                                # EH_LABEL
# %bb.11:
.Ltmp14:                                # EH_LABEL
	addi.d	$a0, $fp, 248
	pcaddu18i	$ra, %call36(_ZN20btAlignedObjectArrayIP17btTypedConstraintED2Ev)
	jirl	$ra, $ra, 0
.Ltmp15:                                # EH_LABEL
# %bb.12:
.Ltmp16:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN16btCollisionWorldD2Ev)
	jirl	$ra, $ra, 0
.Ltmp17:                                # EH_LABEL
# %bb.13:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB0_14:
.Ltmp18:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	_ZN23btDiscreteDynamicsWorldC2EP12btDispatcherP21btBroadphaseInterfaceP18btConstraintSolverP24btCollisionConfiguration, .Lfunc_end0-_ZN23btDiscreteDynamicsWorldC2EP12btDispatcherP21btBroadphaseInterfaceP18btConstraintSolverP24btCollisionConfiguration
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
	.uleb128 .Ltmp8-.Ltmp5                  #   Call between .Ltmp5 and .Ltmp8
	.uleb128 .Ltmp9-.Lfunc_begin0           #     jumps to .Ltmp9
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp10-.Lfunc_begin0          # >> Call Site 4 <<
	.uleb128 .Ltmp17-.Ltmp10                #   Call between .Ltmp10 and .Ltmp17
	.uleb128 .Ltmp18-.Lfunc_begin0          #     jumps to .Ltmp18
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp17-.Lfunc_begin0          # >> Call Site 5 <<
	.uleb128 .Lfunc_end0-.Ltmp17            #   Call between .Ltmp17 and .Lfunc_end0
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
	.section	.text._ZN20btAlignedObjectArrayIP17btActionInterfaceED2Ev,"axG",@progbits,_ZN20btAlignedObjectArrayIP17btActionInterfaceED2Ev,comdat
	.weak	_ZN20btAlignedObjectArrayIP17btActionInterfaceED2Ev # -- Begin function _ZN20btAlignedObjectArrayIP17btActionInterfaceED2Ev
	.p2align	5
	.type	_ZN20btAlignedObjectArrayIP17btActionInterfaceED2Ev,@function
_ZN20btAlignedObjectArrayIP17btActionInterfaceED2Ev: # @_ZN20btAlignedObjectArrayIP17btActionInterfaceED2Ev
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
	beqz	$a0, .LBB1_3
# %bb.1:
	ld.b	$a1, $fp, 24
	andi	$a1, $a1, 1
	beqz	$a1, .LBB1_3
# %bb.2:
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.LBB1_3:                                # %_ZN20btAlignedObjectArrayIP17btActionInterfaceE5clearEv.exit
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 24
	st.d	$zero, $fp, 16
	st.d	$zero, $fp, 4
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end1:
	.size	_ZN20btAlignedObjectArrayIP17btActionInterfaceED2Ev, .Lfunc_end1-_ZN20btAlignedObjectArrayIP17btActionInterfaceED2Ev
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
.Lfunc_end2:
	.size	__clang_call_terminate, .Lfunc_end2-__clang_call_terminate
                                        # -- End function
	.section	.text._ZN20btAlignedObjectArrayIP11btRigidBodyED2Ev,"axG",@progbits,_ZN20btAlignedObjectArrayIP11btRigidBodyED2Ev,comdat
	.weak	_ZN20btAlignedObjectArrayIP11btRigidBodyED2Ev # -- Begin function _ZN20btAlignedObjectArrayIP11btRigidBodyED2Ev
	.p2align	5
	.type	_ZN20btAlignedObjectArrayIP11btRigidBodyED2Ev,@function
_ZN20btAlignedObjectArrayIP11btRigidBodyED2Ev: # @_ZN20btAlignedObjectArrayIP11btRigidBodyED2Ev
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
	beqz	$a0, .LBB3_3
# %bb.1:
	ld.b	$a1, $fp, 24
	andi	$a1, $a1, 1
	beqz	$a1, .LBB3_3
# %bb.2:
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.LBB3_3:                                # %_ZN20btAlignedObjectArrayIP11btRigidBodyE5clearEv.exit
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 24
	st.d	$zero, $fp, 16
	st.d	$zero, $fp, 4
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end3:
	.size	_ZN20btAlignedObjectArrayIP11btRigidBodyED2Ev, .Lfunc_end3-_ZN20btAlignedObjectArrayIP11btRigidBodyED2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN20btAlignedObjectArrayIP17btTypedConstraintED2Ev,"axG",@progbits,_ZN20btAlignedObjectArrayIP17btTypedConstraintED2Ev,comdat
	.weak	_ZN20btAlignedObjectArrayIP17btTypedConstraintED2Ev # -- Begin function _ZN20btAlignedObjectArrayIP17btTypedConstraintED2Ev
	.p2align	5
	.type	_ZN20btAlignedObjectArrayIP17btTypedConstraintED2Ev,@function
_ZN20btAlignedObjectArrayIP17btTypedConstraintED2Ev: # @_ZN20btAlignedObjectArrayIP17btTypedConstraintED2Ev
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
	beqz	$a0, .LBB4_3
# %bb.1:
	ld.b	$a1, $fp, 24
	andi	$a1, $a1, 1
	beqz	$a1, .LBB4_3
# %bb.2:
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.LBB4_3:                                # %_ZN20btAlignedObjectArrayIP17btTypedConstraintE5clearEv.exit
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 24
	st.d	$zero, $fp, 16
	st.d	$zero, $fp, 4
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end4:
	.size	_ZN20btAlignedObjectArrayIP17btTypedConstraintED2Ev, .Lfunc_end4-_ZN20btAlignedObjectArrayIP17btTypedConstraintED2Ev
	.cfi_endproc
                                        # -- End function
	.text
	.globl	_ZN23btDiscreteDynamicsWorldD2Ev # -- Begin function _ZN23btDiscreteDynamicsWorldD2Ev
	.p2align	5
	.type	_ZN23btDiscreteDynamicsWorldD2Ev,@function
_ZN23btDiscreteDynamicsWorldD2Ev:       # @_ZN23btDiscreteDynamicsWorldD2Ev
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
	pcalau12i	$a0, %pc_hi20(_ZTV23btDiscreteDynamicsWorld+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV23btDiscreteDynamicsWorld+16)
	ld.bu	$a1, $fp, 332
	st.d	$a0, $fp, 0
	beqz	$a1, .LBB5_3
# %bb.1:
	ld.d	$a0, $fp, 240
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 0
.Ltmp19:                                # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp20:                                # EH_LABEL
# %bb.2:
	ld.d	$a0, $fp, 240
.Ltmp21:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp22:                                # EH_LABEL
.LBB5_3:
	ld.bu	$a0, $fp, 333
	beqz	$a0, .LBB5_6
# %bb.4:
	ld.d	$a0, $fp, 232
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 0
.Ltmp23:                                # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp24:                                # EH_LABEL
# %bb.5:
	ld.d	$a0, $fp, 232
.Ltmp25:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp26:                                # EH_LABEL
.LBB5_6:
	ld.d	$a0, $fp, 352
	beqz	$a0, .LBB5_9
# %bb.7:
	ld.b	$a1, $fp, 360
	andi	$a1, $a1, 1
	beqz	$a1, .LBB5_9
# %bb.8:
.Ltmp30:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp31:                                # EH_LABEL
.LBB5_9:
	ld.d	$a0, $fp, 296
	ori	$s0, $zero, 1
	st.b	$s0, $fp, 360
	st.d	$zero, $fp, 352
	st.d	$zero, $fp, 340
	beqz	$a0, .LBB5_12
# %bb.10:
	ld.b	$a1, $fp, 304
	andi	$a1, $a1, 1
	beqz	$a1, .LBB5_12
# %bb.11:
.Ltmp35:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp36:                                # EH_LABEL
.LBB5_12:
	ld.d	$a0, $fp, 264
	st.b	$s0, $fp, 304
	st.d	$zero, $fp, 296
	st.d	$zero, $fp, 284
	beqz	$a0, .LBB5_15
# %bb.13:
	ld.b	$a1, $fp, 272
	andi	$a1, $a1, 1
	beqz	$a1, .LBB5_15
# %bb.14:
.Ltmp40:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp41:                                # EH_LABEL
.LBB5_15:
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 272
	st.d	$zero, $fp, 264
	st.d	$zero, $fp, 252
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZN16btCollisionWorldD2Ev)
	jr	$t8
.LBB5_16:
.Ltmp42:                                # EH_LABEL
	move	$s0, $a0
	b	.LBB5_22
.LBB5_17:
.Ltmp37:                                # EH_LABEL
	move	$s0, $a0
	b	.LBB5_21
.LBB5_18:
.Ltmp32:                                # EH_LABEL
	move	$s0, $a0
	b	.LBB5_20
.LBB5_19:
.Ltmp27:                                # EH_LABEL
	move	$s0, $a0
	addi.d	$a0, $fp, 336
.Ltmp28:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN20btAlignedObjectArrayIP17btActionInterfaceED2Ev)
	jirl	$ra, $ra, 0
.Ltmp29:                                # EH_LABEL
.LBB5_20:
	addi.d	$a0, $fp, 280
.Ltmp33:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN20btAlignedObjectArrayIP11btRigidBodyED2Ev)
	jirl	$ra, $ra, 0
.Ltmp34:                                # EH_LABEL
.LBB5_21:
	addi.d	$a0, $fp, 248
.Ltmp38:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN20btAlignedObjectArrayIP17btTypedConstraintED2Ev)
	jirl	$ra, $ra, 0
.Ltmp39:                                # EH_LABEL
.LBB5_22:
.Ltmp43:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN16btCollisionWorldD2Ev)
	jirl	$ra, $ra, 0
.Ltmp44:                                # EH_LABEL
# %bb.23:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB5_24:
.Ltmp45:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end5:
	.size	_ZN23btDiscreteDynamicsWorldD2Ev, .Lfunc_end5-_ZN23btDiscreteDynamicsWorldD2Ev
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
	.uleb128 .Ltmp19-.Lfunc_begin1          # >> Call Site 1 <<
	.uleb128 .Ltmp26-.Ltmp19                #   Call between .Ltmp19 and .Ltmp26
	.uleb128 .Ltmp27-.Lfunc_begin1          #     jumps to .Ltmp27
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp30-.Lfunc_begin1          # >> Call Site 2 <<
	.uleb128 .Ltmp31-.Ltmp30                #   Call between .Ltmp30 and .Ltmp31
	.uleb128 .Ltmp32-.Lfunc_begin1          #     jumps to .Ltmp32
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp35-.Lfunc_begin1          # >> Call Site 3 <<
	.uleb128 .Ltmp36-.Ltmp35                #   Call between .Ltmp35 and .Ltmp36
	.uleb128 .Ltmp37-.Lfunc_begin1          #     jumps to .Ltmp37
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp40-.Lfunc_begin1          # >> Call Site 4 <<
	.uleb128 .Ltmp41-.Ltmp40                #   Call between .Ltmp40 and .Ltmp41
	.uleb128 .Ltmp42-.Lfunc_begin1          #     jumps to .Ltmp42
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp41-.Lfunc_begin1          # >> Call Site 5 <<
	.uleb128 .Ltmp28-.Ltmp41                #   Call between .Ltmp41 and .Ltmp28
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp28-.Lfunc_begin1          # >> Call Site 6 <<
	.uleb128 .Ltmp44-.Ltmp28                #   Call between .Ltmp28 and .Ltmp44
	.uleb128 .Ltmp45-.Lfunc_begin1          #     jumps to .Ltmp45
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp44-.Lfunc_begin1          # >> Call Site 7 <<
	.uleb128 .Lfunc_end5-.Ltmp44            #   Call between .Ltmp44 and .Lfunc_end5
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
	.globl	_ZN23btDiscreteDynamicsWorldD0Ev # -- Begin function _ZN23btDiscreteDynamicsWorldD0Ev
	.p2align	5
	.type	_ZN23btDiscreteDynamicsWorldD0Ev,@function
_ZN23btDiscreteDynamicsWorldD0Ev:       # @_ZN23btDiscreteDynamicsWorldD0Ev
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
.Ltmp46:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN23btDiscreteDynamicsWorldD2Ev)
	jirl	$ra, $ra, 0
.Ltmp47:                                # EH_LABEL
# %bb.1:
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZdlPv)
	jr	$t8
.LBB6_2:
.Ltmp48:                                # EH_LABEL
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end6:
	.size	_ZN23btDiscreteDynamicsWorldD0Ev, .Lfunc_end6-_ZN23btDiscreteDynamicsWorldD0Ev
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
	.uleb128 .Ltmp46-.Lfunc_begin2          # >> Call Site 1 <<
	.uleb128 .Ltmp47-.Ltmp46                #   Call between .Ltmp46 and .Ltmp47
	.uleb128 .Ltmp48-.Lfunc_begin2          #     jumps to .Ltmp48
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp47-.Lfunc_begin2          # >> Call Site 2 <<
	.uleb128 .Lfunc_end6-.Ltmp47            #   Call between .Ltmp47 and .Lfunc_end6
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN23btDiscreteDynamicsWorld18saveKinematicStateEf # -- Begin function _ZN23btDiscreteDynamicsWorld18saveKinematicStateEf
	.p2align	5
	.type	_ZN23btDiscreteDynamicsWorld18saveKinematicStateEf,@function
_ZN23btDiscreteDynamicsWorld18saveKinematicStateEf: # @_ZN23btDiscreteDynamicsWorld18saveKinematicStateEf
	.cfi_startproc
# %bb.0:
	ld.w	$a1, $a0, 12
	blez	$a1, .LBB7_9
# %bb.1:                                # %.lr.ph
	addi.d	$sp, $sp, -48
	.cfi_def_cfa_offset 48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	fst.d	$fs0, $sp, 0                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 56, -48
	move	$fp, $a0
	fmov.s	$fs0, $fa0
	move	$s0, $zero
	move	$s1, $zero
	ori	$s2, $zero, 2
	b	.LBB7_3
	.p2align	4, , 16
.LBB7_2:                                #   in Loop: Header=BB7_3 Depth=1
	addi.d	$s1, $s1, 1
	addi.d	$s0, $s0, 8
	bge	$s1, $a1, .LBB7_8
.LBB7_3:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 24
	ldx.d	$a0, $a0, $s0
	beqz	$a0, .LBB7_2
# %bb.4:                                #   in Loop: Header=BB7_3 Depth=1
	ld.w	$a2, $a0, 256
	bne	$a2, $s2, .LBB7_2
# %bb.5:                                #   in Loop: Header=BB7_3 Depth=1
	ld.w	$a2, $a0, 228
	beq	$a2, $s2, .LBB7_2
# %bb.6:                                #   in Loop: Header=BB7_3 Depth=1
	ld.bu	$a2, $a0, 216
	andi	$a2, $a2, 2
	beqz	$a2, .LBB7_2
# %bb.7:                                #   in Loop: Header=BB7_3 Depth=1
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(_ZN11btRigidBody18saveKinematicStateEf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 12
	b	.LBB7_2
.LBB7_8:
	fld.d	$fs0, $sp, 0                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
.LBB7_9:                                # %._crit_edge
	ret
.Lfunc_end7:
	.size	_ZN23btDiscreteDynamicsWorld18saveKinematicStateEf, .Lfunc_end7-_ZN23btDiscreteDynamicsWorld18saveKinematicStateEf
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZN23btDiscreteDynamicsWorld14debugDrawWorldEv
.LCPI8_0:
	.word	0x437f0000                      # float 255
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI8_1:
	.word	0x3f800000                      # float 1
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.text
	.globl	_ZN23btDiscreteDynamicsWorld14debugDrawWorldEv
	.p2align	5
	.type	_ZN23btDiscreteDynamicsWorld14debugDrawWorldEv,@function
_ZN23btDiscreteDynamicsWorld14debugDrawWorldEv: # @_ZN23btDiscreteDynamicsWorld14debugDrawWorldEv
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception3
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
	fst.d	$fs0, $sp, 96                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 88                   # 8-byte Folded Spill
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
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(_ZN15CProfileManager13Start_ProfileEPKc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 32
.Ltmp49:                                # EH_LABEL
	move	$a0, $fp
	jirl	$ra, $a1, 0
.Ltmp50:                                # EH_LABEL
# %bb.1:
	beqz	$a0, .LBB8_15
# %bb.2:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 32
.Ltmp51:                                # EH_LABEL
	move	$a0, $fp
	jirl	$ra, $a1, 0
.Ltmp52:                                # EH_LABEL
# %bb.3:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 96
.Ltmp53:                                # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp54:                                # EH_LABEL
# %bb.4:
	andi	$a0, $a0, 8
	beqz	$a0, .LBB8_15
# %bb.5:
	ld.d	$a0, $fp, 40
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 72
.Ltmp56:                                # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp57:                                # EH_LABEL
# %bb.6:
	move	$s0, $a0
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 72
	blez	$a0, .LBB8_15
# %bb.7:                                # %.lr.ph121.preheader
	move	$s1, $zero
	b	.LBB8_9
	.p2align	4, , 16
.LBB8_8:                                # %._crit_edge
                                        #   in Loop: Header=BB8_9 Depth=1
	addi.w	$s1, $s1, 1
	beq	$s1, $s0, .LBB8_15
.LBB8_9:                                # %.lr.ph121
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_12 Depth 2
	ld.d	$a0, $fp, 40
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a1, 80
.Ltmp59:                                # EH_LABEL
	move	$a1, $s1
	jirl	$ra, $a2, 0
.Ltmp60:                                # EH_LABEL
# %bb.10:                               #   in Loop: Header=BB8_9 Depth=1
	ld.w	$s3, $a0, 728
	blez	$s3, .LBB8_8
# %bb.11:                               # %.lr.ph
                                        #   in Loop: Header=BB8_9 Depth=1
	addi.d	$s2, $a0, 72
	.p2align	4, , 16
.LBB8_12:                               #   Parent Loop BB8_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 32
.Ltmp62:                                # EH_LABEL
	move	$a0, $fp
	jirl	$ra, $a1, 0
.Ltmp63:                                # EH_LABEL
# %bb.13:                               #   in Loop: Header=BB8_12 Depth=2
	ld.d	$a1, $a0, 0
	fld.s	$fa0, $s2, 16
	ld.w	$a3, $s2, 72
	ld.d	$a5, $a1, 64
	addi.d	$a1, $s2, -32
.Ltmp64:                                # EH_LABEL
	addi.d	$a4, $sp, 72
	move	$a2, $s2
	jirl	$ra, $a5, 0
.Ltmp65:                                # EH_LABEL
# %bb.14:                               #   in Loop: Header=BB8_12 Depth=2
	addi.d	$s3, $s3, -1
	addi.d	$s2, $s2, 176
	bnez	$s3, .LBB8_12
	b	.LBB8_8
.LBB8_15:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 32
.Ltmp67:                                # EH_LABEL
	move	$a0, $fp
	jirl	$ra, $a1, 0
.Ltmp68:                                # EH_LABEL
# %bb.16:
	beqz	$a0, .LBB8_25
# %bb.17:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 32
.Ltmp69:                                # EH_LABEL
	move	$a0, $fp
	jirl	$ra, $a1, 0
.Ltmp70:                                # EH_LABEL
# %bb.18:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 96
.Ltmp71:                                # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp72:                                # EH_LABEL
# %bb.19:
	bstrpick.d	$a0, $a0, 12, 11
	slli.d	$a0, $a0, 11
	beqz	$a0, .LBB8_25
# %bb.20:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 168
.Ltmp74:                                # EH_LABEL
	move	$a0, $fp
	jirl	$ra, $a1, 0
.Ltmp75:                                # EH_LABEL
# %bb.21:                               # %.preheader117.preheader
	move	$s0, $a0
	.p2align	4, , 16
.LBB8_22:                               # %.preheader117
                                        # =>This Inner Loop Header: Depth=1
	addi.w	$a0, $s0, 0
	blez	$a0, .LBB8_25
# %bb.23:                               #   in Loop: Header=BB8_22 Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 176
	addi.w	$s0, $s0, -1
.Ltmp77:                                # EH_LABEL
	move	$a0, $fp
	move	$a1, $s0
	jirl	$ra, $a2, 0
	move	$a1, $a0
.Ltmp78:                                # EH_LABEL
# %bb.24:                               #   in Loop: Header=BB8_22 Depth=1
.Ltmp79:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN23btDiscreteDynamicsWorld19debugDrawConstraintEP17btTypedConstraint)
	jirl	$ra, $ra, 0
.Ltmp80:                                # EH_LABEL
	b	.LBB8_22
.LBB8_25:                               # %.critedge
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 32
.Ltmp82:                                # EH_LABEL
	move	$a0, $fp
	jirl	$ra, $a1, 0
.Ltmp83:                                # EH_LABEL
# %bb.26:
	beqz	$a0, .LBB8_55
# %bb.27:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 32
.Ltmp84:                                # EH_LABEL
	move	$a0, $fp
	jirl	$ra, $a1, 0
.Ltmp85:                                # EH_LABEL
# %bb.28:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 96
.Ltmp86:                                # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp87:                                # EH_LABEL
# %bb.29:
	andi	$a0, $a0, 3
	beqz	$a0, .LBB8_55
# %bb.30:                               # %.preheader116
	ld.w	$a0, $fp, 12
	blez	$a0, .LBB8_46
# %bb.31:                               # %.lr.ph124
	pcalau12i	$a0, %pc_hi20(.LCPI8_1)
	vld	$vr0, $a0, %pc_lo12(.LCPI8_1)
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI8_0)
	fld.s	$fs0, $a0, %pc_lo12(.LCPI8_0)
	movgr2fr.w	$fs1, $zero
	ori	$s0, $zero, 5
	pcalau12i	$a0, %pc_hi20(.Lswitch.table._ZN23btDiscreteDynamicsWorld14debugDrawWorldEv)
	addi.d	$s1, $a0, %pc_lo12(.Lswitch.table._ZN23btDiscreteDynamicsWorld14debugDrawWorldEv)
	pcalau12i	$a0, %pc_hi20(.Lswitch.table._ZN23btDiscreteDynamicsWorld14debugDrawWorldEv.1)
	addi.d	$s2, $a0, %pc_lo12(.Lswitch.table._ZN23btDiscreteDynamicsWorld14debugDrawWorldEv.1)
	pcalau12i	$a0, %pc_hi20(.Lswitch.table._ZN23btDiscreteDynamicsWorld14debugDrawWorldEv.2)
	addi.d	$s3, $a0, %pc_lo12(.Lswitch.table._ZN23btDiscreteDynamicsWorld14debugDrawWorldEv.2)
	move	$s4, $zero
	move	$s5, $zero
	b	.LBB8_33
	.p2align	4, , 16
.LBB8_32:                               #   in Loop: Header=BB8_33 Depth=1
	ld.w	$a0, $fp, 12
	addi.d	$s5, $s5, 1
	addi.d	$s4, $s4, 8
	bge	$s5, $a0, .LBB8_46
.LBB8_33:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 24
	ld.d	$a1, $fp, 0
	ldx.d	$s6, $a0, $s4
	ld.d	$a1, $a1, 32
.Ltmp89:                                # EH_LABEL
	move	$a0, $fp
	jirl	$ra, $a1, 0
.Ltmp90:                                # EH_LABEL
# %bb.34:                               #   in Loop: Header=BB8_33 Depth=1
	beqz	$a0, .LBB8_41
# %bb.35:                               #   in Loop: Header=BB8_33 Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 32
.Ltmp91:                                # EH_LABEL
	move	$a0, $fp
	jirl	$ra, $a1, 0
.Ltmp92:                                # EH_LABEL
# %bb.36:                               #   in Loop: Header=BB8_33 Depth=1
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 96
.Ltmp93:                                # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp94:                                # EH_LABEL
# %bb.37:                               #   in Loop: Header=BB8_33 Depth=1
	andi	$a0, $a0, 1
	beqz	$a0, .LBB8_41
# %bb.38:                               #   in Loop: Header=BB8_33 Depth=1
	ld.w	$a0, $s6, 228
	addi.w	$a0, $a0, -1
	fmov.s	$fa1, $fs0
	fmov.s	$fa2, $fs1
	fmov.s	$fa0, $fs1
	bgeu	$a0, $s0, .LBB8_40
# %bb.39:                               # %switch.lookup
                                        #   in Loop: Header=BB8_33 Depth=1
	slli.d	$a0, $a0, 2
	fldx.s	$fa1, $s1, $a0
	fldx.s	$fa2, $s2, $a0
	fldx.s	$fa0, $s3, $a0
.LBB8_40:                               #   in Loop: Header=BB8_33 Depth=1
	fst.s	$fa1, $sp, 72
	fst.s	$fa2, $sp, 76
	ld.d	$a2, $s6, 200
	fst.s	$fa0, $sp, 80
	st.w	$zero, $sp, 84
	addi.d	$a1, $s6, 8
.Ltmp95:                                # EH_LABEL
	addi.d	$a3, $sp, 72
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN23btDiscreteDynamicsWorld15debugDrawObjectERK11btTransformPK16btCollisionShapeRK9btVector3)
	jirl	$ra, $ra, 0
.Ltmp96:                                # EH_LABEL
.LBB8_41:                               #   in Loop: Header=BB8_33 Depth=1
	ld.d	$a0, $fp, 120
	beqz	$a0, .LBB8_32
# %bb.42:                               #   in Loop: Header=BB8_33 Depth=1
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 96
.Ltmp98:                                # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp99:                                # EH_LABEL
# %bb.43:                               #   in Loop: Header=BB8_33 Depth=1
	andi	$a0, $a0, 2
	beqz	$a0, .LBB8_32
# %bb.44:                               #   in Loop: Header=BB8_33 Depth=1
	ld.d	$a0, $s6, 200
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 32
	ld.d	$a1, $a0, 0
	ld.d	$a4, $a1, 16
	addi.d	$a1, $s6, 8
.Ltmp101:                               # EH_LABEL
	addi.d	$a2, $sp, 72
	addi.d	$a3, $sp, 56
	jirl	$ra, $a4, 0
.Ltmp102:                               # EH_LABEL
# %bb.45:                               #   in Loop: Header=BB8_33 Depth=1
	ld.d	$a0, $fp, 120
.Ltmp103:                               # EH_LABEL
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 56
	addi.d	$a3, $sp, 32
	pcaddu18i	$ra, %call36(_ZN12btIDebugDraw8drawAabbERK9btVector3S2_S2_)
	jirl	$ra, $ra, 0
.Ltmp104:                               # EH_LABEL
	b	.LBB8_32
.LBB8_46:                               # %._crit_edge125
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 32
.Ltmp106:                               # EH_LABEL
	move	$a0, $fp
	jirl	$ra, $a1, 0
.Ltmp107:                               # EH_LABEL
# %bb.47:
	beqz	$a0, .LBB8_55
# %bb.48:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 32
.Ltmp108:                               # EH_LABEL
	move	$a0, $fp
	jirl	$ra, $a1, 0
.Ltmp109:                               # EH_LABEL
# %bb.49:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 96
.Ltmp110:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp111:                               # EH_LABEL
# %bb.50:
	beqz	$a0, .LBB8_55
# %bb.51:                               # %.preheader
	ld.w	$a0, $fp, 340
	blez	$a0, .LBB8_55
# %bb.52:                               # %.lr.ph127
	move	$s0, $zero
	move	$s1, $zero
	.p2align	4, , 16
.LBB8_53:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 352
	ldx.d	$a0, $a0, $s0
	ld.d	$a2, $a0, 0
	ld.d	$a1, $fp, 120
	ld.d	$a2, $a2, 24
.Ltmp113:                               # EH_LABEL
	jirl	$ra, $a2, 0
.Ltmp114:                               # EH_LABEL
# %bb.54:                               #   in Loop: Header=BB8_53 Depth=1
	ld.w	$a0, $fp, 340
	addi.d	$s1, $s1, 1
	addi.d	$s0, $s0, 8
	blt	$s1, $a0, .LBB8_53
.LBB8_55:                               # %.loopexit
	pcaddu18i	$ra, %call36(_ZN15CProfileManager12Stop_ProfileEv)
	jirl	$ra, $ra, 0
	fld.d	$fs1, $sp, 88                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 96                   # 8-byte Folded Reload
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
.LBB8_56:
.Ltmp58:                                # EH_LABEL
	b	.LBB8_69
.LBB8_57:
.Ltmp76:                                # EH_LABEL
	b	.LBB8_69
.LBB8_58:                               # %.loopexit.split-lp
.Ltmp112:                               # EH_LABEL
	b	.LBB8_69
.LBB8_59:
.Ltmp73:                                # EH_LABEL
	b	.LBB8_69
.LBB8_60:
.Ltmp55:                                # EH_LABEL
	b	.LBB8_69
.LBB8_61:
.Ltmp97:                                # EH_LABEL
	b	.LBB8_69
.LBB8_62:                               # %.loopexit115
.Ltmp115:                               # EH_LABEL
	b	.LBB8_69
.LBB8_63:
.Ltmp88:                                # EH_LABEL
	b	.LBB8_69
.LBB8_64:
.Ltmp105:                               # EH_LABEL
	b	.LBB8_69
.LBB8_65:
.Ltmp61:                                # EH_LABEL
	b	.LBB8_69
.LBB8_66:
.Ltmp100:                               # EH_LABEL
	b	.LBB8_69
.LBB8_67:
.Ltmp81:                                # EH_LABEL
	b	.LBB8_69
.LBB8_68:
.Ltmp66:                                # EH_LABEL
.LBB8_69:
	move	$fp, $a0
.Ltmp116:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN15CProfileManager12Stop_ProfileEv)
	jirl	$ra, $ra, 0
.Ltmp117:                               # EH_LABEL
# %bb.70:                               # %_ZN14CProfileSampleD2Ev.exit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB8_71:
.Ltmp118:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end8:
	.size	_ZN23btDiscreteDynamicsWorld14debugDrawWorldEv, .Lfunc_end8-_ZN23btDiscreteDynamicsWorld14debugDrawWorldEv
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table8:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase2-.Lttbaseref2
.Lttbaseref2:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Lfunc_begin3-.Lfunc_begin3    # >> Call Site 1 <<
	.uleb128 .Ltmp49-.Lfunc_begin3          #   Call between .Lfunc_begin3 and .Ltmp49
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp49-.Lfunc_begin3          # >> Call Site 2 <<
	.uleb128 .Ltmp54-.Ltmp49                #   Call between .Ltmp49 and .Ltmp54
	.uleb128 .Ltmp55-.Lfunc_begin3          #     jumps to .Ltmp55
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp56-.Lfunc_begin3          # >> Call Site 3 <<
	.uleb128 .Ltmp57-.Ltmp56                #   Call between .Ltmp56 and .Ltmp57
	.uleb128 .Ltmp58-.Lfunc_begin3          #     jumps to .Ltmp58
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp59-.Lfunc_begin3          # >> Call Site 4 <<
	.uleb128 .Ltmp60-.Ltmp59                #   Call between .Ltmp59 and .Ltmp60
	.uleb128 .Ltmp61-.Lfunc_begin3          #     jumps to .Ltmp61
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp62-.Lfunc_begin3          # >> Call Site 5 <<
	.uleb128 .Ltmp65-.Ltmp62                #   Call between .Ltmp62 and .Ltmp65
	.uleb128 .Ltmp66-.Lfunc_begin3          #     jumps to .Ltmp66
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp67-.Lfunc_begin3          # >> Call Site 6 <<
	.uleb128 .Ltmp68-.Ltmp67                #   Call between .Ltmp67 and .Ltmp68
	.uleb128 .Ltmp88-.Lfunc_begin3          #     jumps to .Ltmp88
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp69-.Lfunc_begin3          # >> Call Site 7 <<
	.uleb128 .Ltmp72-.Ltmp69                #   Call between .Ltmp69 and .Ltmp72
	.uleb128 .Ltmp73-.Lfunc_begin3          #     jumps to .Ltmp73
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp74-.Lfunc_begin3          # >> Call Site 8 <<
	.uleb128 .Ltmp75-.Ltmp74                #   Call between .Ltmp74 and .Ltmp75
	.uleb128 .Ltmp76-.Lfunc_begin3          #     jumps to .Ltmp76
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp77-.Lfunc_begin3          # >> Call Site 9 <<
	.uleb128 .Ltmp80-.Ltmp77                #   Call between .Ltmp77 and .Ltmp80
	.uleb128 .Ltmp81-.Lfunc_begin3          #     jumps to .Ltmp81
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp82-.Lfunc_begin3          # >> Call Site 10 <<
	.uleb128 .Ltmp87-.Ltmp82                #   Call between .Ltmp82 and .Ltmp87
	.uleb128 .Ltmp88-.Lfunc_begin3          #     jumps to .Ltmp88
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp89-.Lfunc_begin3          # >> Call Site 11 <<
	.uleb128 .Ltmp94-.Ltmp89                #   Call between .Ltmp89 and .Ltmp94
	.uleb128 .Ltmp100-.Lfunc_begin3         #     jumps to .Ltmp100
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp95-.Lfunc_begin3          # >> Call Site 12 <<
	.uleb128 .Ltmp96-.Ltmp95                #   Call between .Ltmp95 and .Ltmp96
	.uleb128 .Ltmp97-.Lfunc_begin3          #     jumps to .Ltmp97
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp98-.Lfunc_begin3          # >> Call Site 13 <<
	.uleb128 .Ltmp99-.Ltmp98                #   Call between .Ltmp98 and .Ltmp99
	.uleb128 .Ltmp100-.Lfunc_begin3         #     jumps to .Ltmp100
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp101-.Lfunc_begin3         # >> Call Site 14 <<
	.uleb128 .Ltmp104-.Ltmp101              #   Call between .Ltmp101 and .Ltmp104
	.uleb128 .Ltmp105-.Lfunc_begin3         #     jumps to .Ltmp105
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp106-.Lfunc_begin3         # >> Call Site 15 <<
	.uleb128 .Ltmp111-.Ltmp106              #   Call between .Ltmp106 and .Ltmp111
	.uleb128 .Ltmp112-.Lfunc_begin3         #     jumps to .Ltmp112
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp113-.Lfunc_begin3         # >> Call Site 16 <<
	.uleb128 .Ltmp114-.Ltmp113              #   Call between .Ltmp113 and .Ltmp114
	.uleb128 .Ltmp115-.Lfunc_begin3         #     jumps to .Ltmp115
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp114-.Lfunc_begin3         # >> Call Site 17 <<
	.uleb128 .Ltmp116-.Ltmp114              #   Call between .Ltmp114 and .Ltmp116
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp116-.Lfunc_begin3         # >> Call Site 18 <<
	.uleb128 .Ltmp117-.Ltmp116              #   Call between .Ltmp116 and .Ltmp117
	.uleb128 .Ltmp118-.Lfunc_begin3         #     jumps to .Ltmp118
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp117-.Lfunc_begin3         # >> Call Site 19 <<
	.uleb128 .Lfunc_end8-.Ltmp117           #   Call between .Ltmp117 and .Lfunc_end8
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
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
	.p2align	2, 0x0                          # -- Begin function _ZN23btDiscreteDynamicsWorld19debugDrawConstraintEP17btTypedConstraint
.LCPI9_0:
	.word	0x3f666666                      # float 0.899999976
.LCPI9_1:
	.word	0xc0490fdb                      # float -3.14159274
.LCPI9_2:
	.word	0x40490fdb                      # float 3.14159274
.LCPI9_3:
	.word	0x40c2c75b                      # float 6.08683538
.LCPI9_4:
	.word	0x40c90fda                      # float 6.283185
.LCPI9_5:
	.word	0x3d000000                      # float 0.03125
.LCPI9_6:
	.word	0x40c90fdb                      # float 6.28318548
	.text
	.globl	_ZN23btDiscreteDynamicsWorld19debugDrawConstraintEP17btTypedConstraint
	.p2align	5
	.type	_ZN23btDiscreteDynamicsWorld19debugDrawConstraintEP17btTypedConstraint,@function
_ZN23btDiscreteDynamicsWorld19debugDrawConstraintEP17btTypedConstraint: # @_ZN23btDiscreteDynamicsWorld19debugDrawConstraintEP17btTypedConstraint
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -368
	.cfi_def_cfa_offset 368
	st.d	$ra, $sp, 360                   # 8-byte Folded Spill
	st.d	$fp, $sp, 352                   # 8-byte Folded Spill
	st.d	$s0, $sp, 344                   # 8-byte Folded Spill
	st.d	$s1, $sp, 336                   # 8-byte Folded Spill
	st.d	$s2, $sp, 328                   # 8-byte Folded Spill
	st.d	$s3, $sp, 320                   # 8-byte Folded Spill
	st.d	$s4, $sp, 312                   # 8-byte Folded Spill
	st.d	$s5, $sp, 304                   # 8-byte Folded Spill
	st.d	$s6, $sp, 296                   # 8-byte Folded Spill
	st.d	$s7, $sp, 288                   # 8-byte Folded Spill
	st.d	$s8, $sp, 280                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 272                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 264                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 256                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 248                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 240                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 232                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 224                  # 8-byte Folded Spill
	fst.d	$fs7, $sp, 216                  # 8-byte Folded Spill
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
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a2, $a0, 32
	move	$s0, $a1
	move	$a0, $fp
	jirl	$ra, $a2, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 96
	jirl	$ra, $a1, 0
	ld.d	$a1, $fp, 0
	ld.d	$a1, $a1, 32
	move	$s1, $a0
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 96
	jirl	$ra, $a1, 0
	fld.s	$fs0, $s0, 44
	movgr2fr.w	$fs1, $zero
	fcmp.cle.s	$fcc0, $fs0, $fs1
	bcnez	$fcc0, .LBB9_36
# %bb.1:
	ld.w	$a1, $s0, 8
	addi.d	$a1, $a1, -3
	ori	$a2, $zero, 4
	bltu	$a2, $a1, .LBB9_36
# %bb.2:
	andi	$s2, $s1, 2048
	lu12i.w	$a2, 1
	and	$s1, $a0, $a2
	slli.d	$a0, $a1, 2
	pcalau12i	$a1, %pc_hi20(.LJTI9_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI9_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB9_3:
	lu12i.w	$a0, 260096
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 156
	st.w	$a0, $sp, 172
	ld.d	$a1, $s0, 24
	vst	$vr0, $sp, 176
	st.d	$a0, $sp, 192
	fld.s	$fa0, $s0, 352
	fld.s	$fa1, $a1, 12
	fld.s	$fa2, $s0, 348
	fld.s	$fa3, $a1, 8
	fld.s	$fa4, $s0, 356
	fmul.s	$fa1, $fa0, $fa1
	fld.s	$fa5, $a1, 16
	fmadd.s	$fa1, $fa3, $fa2, $fa1
	fld.s	$fa3, $a1, 56
	fld.s	$fa6, $a1, 28
	fmadd.s	$fa1, $fa5, $fa4, $fa1
	fld.s	$fa5, $a1, 24
	fadd.s	$fa1, $fa3, $fa1
	fmul.s	$fa3, $fa0, $fa6
	fld.s	$fa6, $a1, 44
	fmadd.s	$fa3, $fa5, $fa2, $fa3
	fld.s	$fa5, $a1, 40
	fld.s	$fa7, $a1, 32
	fmul.s	$fa0, $fa0, $fa6
	fld.s	$fa6, $a1, 60
	fmadd.s	$fa0, $fa5, $fa2, $fa0
	fld.s	$fa2, $a1, 48
	fld.s	$fa5, $a1, 64
	fmadd.s	$fa3, $fa7, $fa4, $fa3
	fadd.s	$fa3, $fa6, $fa3
	fmadd.s	$fa0, $fa2, $fa4, $fa0
	fadd.s	$fa0, $fa5, $fa0
	fst.s	$fa1, $sp, 200
	ld.d	$a1, $fp, 0
	fst.s	$fa3, $sp, 204
	fst.s	$fa0, $sp, 208
	st.w	$zero, $sp, 212
	ld.d	$a1, $a1, 32
	st.w	$a0, $sp, 152
	move	$a0, $fp
	jirl	$ra, $a1, 0
	addi.d	$a1, $sp, 152
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(_ZN12btIDebugDraw13drawTransformERK11btTransformf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 32
	fld.s	$fa0, $s0, 368
	fld.s	$fa1, $a0, 12
	fld.s	$fa2, $s0, 364
	fld.s	$fa3, $a0, 8
	fld.s	$fa4, $s0, 372
	fmul.s	$fa1, $fa0, $fa1
	fld.s	$fa5, $a0, 16
	fmadd.s	$fa1, $fa3, $fa2, $fa1
	fld.s	$fa3, $a0, 56
	fld.s	$fa6, $a0, 28
	fmadd.s	$fa1, $fa5, $fa4, $fa1
	fld.s	$fa5, $a0, 24
	fadd.s	$fa1, $fa3, $fa1
	fmul.s	$fa3, $fa0, $fa6
	fld.s	$fa6, $a0, 44
	fmadd.s	$fa3, $fa5, $fa2, $fa3
	fld.s	$fa5, $a0, 40
	fld.s	$fa7, $a0, 32
	fmul.s	$fa0, $fa0, $fa6
	fld.s	$fa6, $a0, 60
	fmadd.s	$fa0, $fa5, $fa2, $fa0
	fld.s	$fa2, $a0, 48
	fld.s	$fa5, $a0, 64
	fmadd.s	$fa3, $fa7, $fa4, $fa3
	fadd.s	$fa3, $fa6, $fa3
	fmadd.s	$fa0, $fa2, $fa4, $fa0
	fadd.s	$fa0, $fa5, $fa0
	fst.s	$fa1, $sp, 200
	fst.s	$fa3, $sp, 204
	fst.s	$fa0, $sp, 208
	st.w	$zero, $sp, 212
	beqz	$s2, .LBB9_36
# %bb.4:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 32
	move	$a0, $fp
	jirl	$ra, $a1, 0
	addi.d	$a1, $sp, 152
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(_ZN12btIDebugDraw13drawTransformERK11btTransformf)
	jirl	$ra, $ra, 0
	b	.LBB9_36
.LBB9_5:
	vld	$vr0, $s0, 844
	vld	$vr1, $s0, 860
	vst	$vr0, $sp, 152
	addi.d	$s3, $sp, 168
	vld	$vr0, $s0, 876
	vst	$vr1, $sp, 168
	vld	$vr1, $s0, 892
	addi.d	$s4, $sp, 184
	vst	$vr0, $sp, 184
	addi.d	$s5, $sp, 200
	vst	$vr1, $sp, 200
	bnez	$s2, .LBB9_16
# %bb.6:                                # %.critedge238
	vld	$vr0, $s0, 908
	vld	$vr1, $s0, 924
	vld	$vr2, $s0, 940
	vld	$vr3, $s0, 956
	vst	$vr0, $sp, 152
	vst	$vr1, $s3, 0
	vst	$vr2, $s4, 0
	vst	$vr3, $s5, 0
	bnez	$s1, .LBB9_17
	b	.LBB9_36
.LBB9_7:
	ld.d	$a0, $s0, 24
	fld.s	$fa5, $s0, 348
	fld.s	$fa6, $s0, 364
	fld.s	$fa3, $a0, 12
	fld.s	$fa2, $a0, 8
	fld.s	$fa7, $s0, 380
	fld.s	$fa4, $a0, 16
	fmul.s	$fa0, $fa6, $fa3
	fld.s	$ft0, $s0, 368
	fmadd.s	$fa0, $fa5, $fa2, $fa0
	fmadd.s	$fa0, $fa7, $fa4, $fa0
	fld.s	$ft1, $s0, 352
	fmul.s	$fa1, $fa3, $ft0
	fld.s	$ft2, $s0, 384
	fld.s	$ft3, $s0, 372
	fld.s	$ft4, $s0, 356
	fmadd.s	$fa1, $ft1, $fa2, $fa1
	fmadd.s	$fa1, $ft2, $fa4, $fa1
	fmul.s	$ft5, $fa3, $ft3
	fmadd.s	$ft5, $ft4, $fa2, $ft5
	fld.s	$ft6, $s0, 388
	fld.s	$ft7, $a0, 28
	fld.s	$ft8, $a0, 24
	fld.s	$ft9, $a0, 32
	fmadd.s	$ft5, $ft6, $fa4, $ft5
	fmul.s	$ft10, $fa6, $ft7
	fmadd.s	$ft10, $fa5, $ft8, $ft10
	fmadd.s	$ft10, $fa7, $ft9, $ft10
	fmul.s	$ft11, $ft0, $ft7
	fld.s	$ft12, $a0, 44
	fld.s	$ft13, $a0, 40
	fmadd.s	$ft11, $ft1, $ft8, $ft11
	fmadd.s	$ft11, $ft2, $ft9, $ft11
	fmul.s	$fa6, $fa6, $ft12
	fmadd.s	$fa5, $fa5, $ft13, $fa6
	fld.s	$fa6, $a0, 48
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
	fld.s	$ft1, $s0, 400
	fld.s	$ft2, $s0, 396
	fld.s	$ft3, $s0, 404
	fld.s	$ft4, $a0, 56
	fmul.s	$fa3, $fa3, $ft1
	fmadd.s	$fa2, $fa2, $ft2, $fa3
	fmadd.s	$fa2, $fa4, $ft3, $fa2
	fadd.s	$fa2, $ft4, $fa2
	fld.s	$fa3, $a0, 60
	fmul.s	$fa4, $ft7, $ft1
	fmadd.s	$fa4, $ft8, $ft2, $fa4
	fmadd.s	$fa4, $ft9, $ft3, $fa4
	fadd.s	$fa3, $fa3, $fa4
	fld.s	$fa4, $a0, 64
	fmul.s	$ft1, $ft12, $ft1
	fmadd.s	$ft1, $ft13, $ft2, $ft1
	fmadd.s	$fa6, $fa6, $ft3, $ft1
	fadd.s	$fa4, $fa6, $fa4
	movfr2gr.s	$a0, $fa2
	movfr2gr.s	$a1, $fa3
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa4
	bstrpick.d	$a1, $a1, 31, 0
	fst.s	$fa0, $sp, 152
	fst.s	$fa1, $sp, 156
	fst.s	$ft5, $sp, 160
	st.w	$zero, $sp, 164
	fst.s	$ft10, $sp, 168
	fst.s	$ft11, $sp, 172
	fst.s	$ft14, $sp, 176
	st.w	$zero, $sp, 180
	fst.s	$fa5, $sp, 184
	fst.s	$fa7, $sp, 188
	fst.s	$ft0, $sp, 192
	st.w	$zero, $sp, 196
	st.d	$a0, $sp, 200
	st.d	$a1, $sp, 208
	bnez	$s2, .LBB9_18
# %bb.8:                                # %.critedge234
	ld.d	$a0, $s0, 32
	fld.s	$fa5, $s0, 412
	fld.s	$fa6, $s0, 428
	fld.s	$fa3, $a0, 12
	fld.s	$fa2, $a0, 8
	fld.s	$fa7, $s0, 444
	fld.s	$fa4, $a0, 16
	fmul.s	$fa0, $fa6, $fa3
	fld.s	$ft0, $s0, 432
	fmadd.s	$fa0, $fa5, $fa2, $fa0
	fmadd.s	$fa0, $fa7, $fa4, $fa0
	fld.s	$ft1, $s0, 416
	fmul.s	$fa1, $fa3, $ft0
	fld.s	$ft2, $s0, 448
	fld.s	$ft3, $s0, 436
	fld.s	$ft4, $s0, 420
	fmadd.s	$fa1, $ft1, $fa2, $fa1
	fmadd.s	$fa1, $ft2, $fa4, $fa1
	fmul.s	$ft5, $fa3, $ft3
	fmadd.s	$ft5, $ft4, $fa2, $ft5
	fld.s	$ft6, $s0, 452
	fld.s	$ft7, $a0, 28
	fld.s	$ft8, $a0, 24
	fld.s	$ft9, $a0, 32
	fmadd.s	$ft5, $ft6, $fa4, $ft5
	fmul.s	$ft10, $fa6, $ft7
	fmadd.s	$ft10, $fa5, $ft8, $ft10
	fmadd.s	$ft10, $fa7, $ft9, $ft10
	fmul.s	$ft11, $ft0, $ft7
	fld.s	$ft12, $a0, 44
	fld.s	$ft13, $a0, 40
	fmadd.s	$ft11, $ft1, $ft8, $ft11
	fmadd.s	$ft11, $ft2, $ft9, $ft11
	fmul.s	$fa6, $fa6, $ft12
	fmadd.s	$fa5, $fa5, $ft13, $fa6
	fld.s	$fa6, $a0, 48
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
	fld.s	$ft1, $s0, 464
	fld.s	$ft2, $s0, 460
	fld.s	$ft3, $s0, 468
	fld.s	$ft4, $a0, 56
	fmul.s	$fa3, $fa3, $ft1
	fmadd.s	$fa2, $fa2, $ft2, $fa3
	fmadd.s	$fa2, $fa4, $ft3, $fa2
	fadd.s	$fa2, $ft4, $fa2
	fld.s	$fa3, $a0, 60
	fmul.s	$fa4, $ft7, $ft1
	fmadd.s	$fa4, $ft8, $ft2, $fa4
	fmadd.s	$fa4, $ft9, $ft3, $fa4
	fadd.s	$fa3, $fa3, $fa4
	fld.s	$fa4, $a0, 64
	fmul.s	$ft1, $ft12, $ft1
	fmadd.s	$ft1, $ft13, $ft2, $ft1
	fmadd.s	$fa6, $fa6, $ft3, $ft1
	fadd.s	$fa4, $fa6, $fa4
	movfr2gr.s	$a0, $fa2
	movfr2gr.s	$a1, $fa3
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa4
	bstrpick.d	$a1, $a1, 31, 0
	fst.s	$fa0, $sp, 152
	fst.s	$fa1, $sp, 156
	fst.s	$ft5, $sp, 160
	st.w	$zero, $sp, 164
	fst.s	$ft10, $sp, 168
	fst.s	$ft11, $sp, 172
	fst.s	$ft14, $sp, 176
	st.w	$zero, $sp, 180
	fst.s	$fa5, $sp, 184
	fst.s	$fa7, $sp, 188
	fst.s	$ft0, $sp, 192
	st.w	$zero, $sp, 196
	st.d	$a0, $sp, 200
	st.d	$a1, $sp, 208
	bnez	$s1, .LBB9_19
	b	.LBB9_36
.LBB9_9:
	vld	$vr0, $s0, 1040
	vld	$vr1, $s0, 1056
	vst	$vr0, $sp, 152
	addi.d	$s3, $sp, 168
	vld	$vr0, $s0, 1072
	vst	$vr1, $sp, 168
	vld	$vr1, $s0, 1088
	addi.d	$s5, $sp, 184
	vst	$vr0, $sp, 184
	addi.d	$s4, $sp, 200
	vst	$vr1, $sp, 200
	beqz	$s2, .LBB9_11
# %bb.10:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 32
	move	$a0, $fp
	jirl	$ra, $a1, 0
	addi.d	$a1, $sp, 152
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(_ZN12btIDebugDraw13drawTransformERK11btTransformf)
	jirl	$ra, $ra, 0
	vld	$vr0, $s0, 1104
	vld	$vr1, $s0, 1136
	vld	$vr2, $s0, 1152
	ld.d	$a0, $fp, 0
	vld	$vr3, $s0, 1120
	vst	$vr1, $s5, 0
	vst	$vr2, $s4, 0
	ld.d	$a1, $a0, 32
	vst	$vr0, $sp, 152
	vst	$vr3, $s3, 0
	move	$a0, $fp
	jirl	$ra, $a1, 0
	addi.d	$a1, $sp, 152
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(_ZN12btIDebugDraw13drawTransformERK11btTransformf)
	jirl	$ra, $ra, 0
.LBB9_11:                               # %.critedge236
	beqz	$s1, .LBB9_36
# %bb.12:
	addi.d	$s7, $s0, 1040
	addi.d	$s2, $s0, 1056
	addi.d	$s6, $s0, 1072
	vld	$vr0, $s7, 0
	vld	$vr1, $s2, 0
	addi.d	$s8, $s0, 1088
	vld	$vr2, $s6, 0
	vst	$vr0, $sp, 152
	vst	$vr1, $s3, 0
	vld	$vr0, $s8, 0
	vst	$vr2, $s5, 0
	ld.w	$a0, $sp, 176
	ld.wu	$a1, $sp, 160
	vst	$vr0, $s4, 0
	ld.wu	$a2, $sp, 192
	slli.d	$a0, $a0, 32
	or	$a0, $a0, $a1
	st.d	$a0, $sp, 136
	ld.w	$a0, $sp, 168
	ld.wu	$a1, $sp, 152
	st.d	$a2, $sp, 144
	ld.wu	$a2, $sp, 184
	slli.d	$a0, $a0, 32
	or	$a0, $a0, $a1
	fld.s	$fs1, $s0, 924
	ld.d	$a1, $fp, 0
	fld.s	$fs2, $s0, 928
	fld.s	$fs3, $s0, 980
	fld.s	$fs4, $s0, 984
	ld.d	$a1, $a1, 32
	addi.d	$s1, $s0, 1152
	st.d	$a0, $sp, 120
	st.d	$a2, $sp, 128
	move	$a0, $fp
	jirl	$ra, $a1, 0
	pcalau12i	$a1, %pc_hi20(.LCPI9_0)
	fld.s	$fa0, $a1, %pc_lo12(.LCPI9_0)
	fmul.s	$fa0, $fs0, $fa0
	vrepli.b	$vr1, 0
	vst	$vr1, $sp, 16                   # 16-byte Folded Spill
	vst	$vr1, $sp, 104
	addi.d	$a2, $sp, 136
	addi.d	$a3, $sp, 120
	addi.d	$a4, $sp, 104
	vldi	$vr5, -1244
	move	$a1, $s1
	fmov.s	$fa1, $fs1
	fmov.s	$fa2, $fs2
	fmov.s	$fa3, $fs3
	fmov.s	$fa4, $fs4
	pcaddu18i	$ra, %call36(_ZN12btIDebugDraw15drawSpherePatchERK9btVector3S2_S2_fffffS2_f)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 172
	ld.wu	$a1, $sp, 156
	ld.wu	$a2, $sp, 188
	slli.d	$a0, $a0, 32
	or	$a0, $a0, $a1
	st.d	$a0, $sp, 120
	st.d	$a2, $sp, 128
	ori	$a1, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNK23btGeneric6DofConstraint8getAngleEi)
	jirl	$ra, $ra, 0
	fmov.s	$fs1, $fa0
	ori	$a1, $zero, 2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNK23btGeneric6DofConstraint8getAngleEi)
	jirl	$ra, $ra, 0
	fmov.s	$fs2, $fa0
	fmov.s	$fa0, $fs1
	pcaddu18i	$ra, %call36(cosf)
	jirl	$ra, $ra, 0
	fmov.s	$fs3, $fa0
	fmov.s	$fa0, $fs1
	pcaddu18i	$ra, %call36(sinf)
	jirl	$ra, $ra, 0
	fmov.s	$fs1, $fa0
	fmov.s	$fa0, $fs2
	pcaddu18i	$ra, %call36(cosf)
	jirl	$ra, $ra, 0
	fmov.s	$fs4, $fa0
	fmov.s	$fa0, $fs2
	pcaddu18i	$ra, %call36(sinf)
	jirl	$ra, $ra, 0
	fmul.s	$fa1, $fs3, $fs4
	fld.s	$fa2, $sp, 124
	fld.s	$fa3, $sp, 120
	fmul.s	$fa4, $fs3, $fa0
	fld.s	$fa5, $sp, 128
	fmul.s	$fa4, $fa4, $fa2
	fmadd.s	$fa1, $fa1, $fa3, $fa4
	fneg.s	$fa4, $fs1
	fmadd.s	$fa1, $fa4, $fa5, $fa1
	fst.s	$fa1, $sp, 104
	fneg.s	$fa1, $fa0
	fmul.s	$fa4, $fs4, $fa2
	fmadd.s	$fa1, $fa1, $fa3, $fa4
	fst.s	$fa1, $sp, 108
	fmul.s	$fa1, $fs1, $fs4
	fmul.s	$fa0, $fs1, $fa0
	fmul.s	$fa0, $fa0, $fa2
	fmadd.s	$fa0, $fa1, $fa3, $fa0
	fmadd.s	$fa0, $fs3, $fa5, $fa0
	fst.s	$fa0, $sp, 112
	vld	$vr0, $s0, 1104
	vld	$vr1, $s0, 1120
	vld	$vr2, $s0, 1136
	vld	$vr3, $s0, 1152
	vst	$vr0, $sp, 152
	vst	$vr1, $s3, 0
	vst	$vr2, $s5, 0
	vst	$vr3, $s4, 0
	ld.wu	$a0, $sp, 152
	ld.w	$a1, $sp, 168
	ld.wu	$a2, $sp, 184
	lu12i.w	$a3, -524288
	lu32i.d	$a3, 0
	xor	$a0, $a0, $a3
	xor	$a1, $a1, $a3
	slli.d	$a1, $a1, 32
	fld.s	$fs1, $s0, 868
	fld.s	$fs2, $s0, 872
	or	$a0, $a1, $a0
	xor	$a1, $a2, $a3
	st.d	$a0, $sp, 88
	fcmp.cule.s	$fcc0, $fs1, $fs2
	st.d	$a1, $sp, 96
	bcnez	$fcc0, .LBB9_32
# %bb.13:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 32
	move	$a0, $fp
	jirl	$ra, $a1, 0
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 72
	pcalau12i	$a1, %pc_hi20(.LCPI9_1)
	fld.s	$fa2, $a1, %pc_lo12(.LCPI9_1)
	pcalau12i	$a1, %pc_hi20(.LCPI9_2)
	fld.s	$fa3, $a1, %pc_lo12(.LCPI9_2)
	addi.d	$a2, $sp, 88
	addi.d	$a3, $sp, 104
	addi.d	$a4, $sp, 72
	vldi	$vr4, -1244
	move	$a1, $s1
	fmov.s	$fa0, $fs0
	fmov.s	$fa1, $fs0
	move	$a5, $zero
	b	.LBB9_34
.LBB9_14:
	ld.d	$a0, $s0, 24
	fld.s	$fa5, $s0, 600
	fld.s	$fa6, $s0, 616
	fld.s	$fa3, $a0, 12
	fld.s	$fa2, $a0, 8
	fld.s	$fa7, $s0, 632
	fld.s	$fa4, $a0, 16
	fmul.s	$fa0, $fa6, $fa3
	fld.s	$ft0, $s0, 620
	fmadd.s	$fa0, $fa5, $fa2, $fa0
	fmadd.s	$fa0, $fa7, $fa4, $fa0
	fld.s	$ft1, $s0, 604
	fmul.s	$fa1, $fa3, $ft0
	fld.s	$ft2, $s0, 636
	fld.s	$ft3, $s0, 624
	fld.s	$ft4, $s0, 608
	fmadd.s	$fa1, $ft1, $fa2, $fa1
	fmadd.s	$fa1, $ft2, $fa4, $fa1
	fmul.s	$ft5, $fa3, $ft3
	fmadd.s	$ft5, $ft4, $fa2, $ft5
	fld.s	$ft6, $s0, 640
	fld.s	$ft7, $a0, 28
	fld.s	$ft8, $a0, 24
	fld.s	$ft9, $a0, 32
	fmadd.s	$ft5, $ft6, $fa4, $ft5
	fmul.s	$ft10, $fa6, $ft7
	fmadd.s	$ft10, $fa5, $ft8, $ft10
	fmadd.s	$ft10, $fa7, $ft9, $ft10
	fmul.s	$ft11, $ft0, $ft7
	fld.s	$ft12, $a0, 44
	fld.s	$ft13, $a0, 40
	fmadd.s	$ft11, $ft1, $ft8, $ft11
	fmadd.s	$ft11, $ft2, $ft9, $ft11
	fmul.s	$fa6, $fa6, $ft12
	fmadd.s	$fa5, $fa5, $ft13, $fa6
	fld.s	$fa6, $a0, 48
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
	fld.s	$ft1, $s0, 652
	fld.s	$ft2, $s0, 648
	fld.s	$ft3, $s0, 656
	fld.s	$ft4, $a0, 56
	fmul.s	$fa3, $fa3, $ft1
	fmadd.s	$fa2, $fa2, $ft2, $fa3
	fmadd.s	$fa2, $fa4, $ft3, $fa2
	fadd.s	$fa2, $ft4, $fa2
	fld.s	$fa3, $a0, 60
	fmul.s	$fa4, $ft7, $ft1
	fmadd.s	$fa4, $ft8, $ft2, $fa4
	fmadd.s	$fa4, $ft9, $ft3, $fa4
	fadd.s	$fa3, $fa3, $fa4
	fld.s	$fa4, $a0, 64
	fmul.s	$ft1, $ft12, $ft1
	fmadd.s	$ft1, $ft13, $ft2, $ft1
	fmadd.s	$fa6, $fa6, $ft3, $ft1
	fadd.s	$fa4, $fa6, $fa4
	movfr2gr.s	$a0, $fa2
	movfr2gr.s	$a1, $fa3
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa4
	bstrpick.d	$a1, $a1, 31, 0
	fst.s	$fa0, $sp, 152
	fst.s	$fa1, $sp, 156
	fst.s	$ft5, $sp, 160
	st.w	$zero, $sp, 164
	fst.s	$ft10, $sp, 168
	fst.s	$ft11, $sp, 172
	fst.s	$ft14, $sp, 176
	st.w	$zero, $sp, 180
	fst.s	$fa5, $sp, 184
	fst.s	$fa7, $sp, 188
	fst.s	$ft0, $sp, 192
	st.w	$zero, $sp, 196
	st.d	$a0, $sp, 200
	st.d	$a1, $sp, 208
	bnez	$s2, .LBB9_25
# %bb.15:                               # %.critedge
	ld.d	$a0, $s0, 32
	fld.s	$fa5, $s0, 664
	fld.s	$fa6, $s0, 680
	fld.s	$fa3, $a0, 12
	fld.s	$fa2, $a0, 8
	fld.s	$fa7, $s0, 696
	fld.s	$fa4, $a0, 16
	fmul.s	$fa0, $fa6, $fa3
	fld.s	$ft0, $s0, 684
	fmadd.s	$fa0, $fa5, $fa2, $fa0
	fmadd.s	$fa0, $fa7, $fa4, $fa0
	fld.s	$ft1, $s0, 668
	fmul.s	$fa1, $fa3, $ft0
	fld.s	$ft2, $s0, 700
	fld.s	$ft3, $s0, 688
	fld.s	$ft4, $s0, 672
	fmadd.s	$fa1, $ft1, $fa2, $fa1
	fmadd.s	$fa1, $ft2, $fa4, $fa1
	fmul.s	$ft5, $fa3, $ft3
	fmadd.s	$ft5, $ft4, $fa2, $ft5
	fld.s	$ft6, $s0, 704
	fld.s	$ft7, $a0, 28
	fld.s	$ft8, $a0, 24
	fld.s	$ft9, $a0, 32
	fmadd.s	$ft5, $ft6, $fa4, $ft5
	fmul.s	$ft10, $fa6, $ft7
	fmadd.s	$ft10, $fa5, $ft8, $ft10
	fmadd.s	$ft10, $fa7, $ft9, $ft10
	fmul.s	$ft11, $ft0, $ft7
	fld.s	$ft12, $a0, 44
	fld.s	$ft13, $a0, 40
	fmadd.s	$ft11, $ft1, $ft8, $ft11
	fmadd.s	$ft11, $ft2, $ft9, $ft11
	fmul.s	$fa6, $fa6, $ft12
	fmadd.s	$fa5, $fa5, $ft13, $fa6
	fld.s	$fa6, $a0, 48
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
	fld.s	$ft1, $s0, 716
	fld.s	$ft2, $s0, 712
	fld.s	$ft3, $s0, 720
	fld.s	$ft4, $a0, 56
	fmul.s	$fa3, $fa3, $ft1
	fmadd.s	$fa2, $fa2, $ft2, $fa3
	fmadd.s	$fa2, $fa4, $ft3, $fa2
	fadd.s	$fa2, $ft4, $fa2
	fld.s	$fa3, $a0, 60
	fmul.s	$fa4, $ft7, $ft1
	fmadd.s	$fa4, $ft8, $ft2, $fa4
	fmadd.s	$fa4, $ft9, $ft3, $fa4
	fadd.s	$fa3, $fa3, $fa4
	fld.s	$fa4, $a0, 64
	fmul.s	$ft1, $ft12, $ft1
	fmadd.s	$ft1, $ft13, $ft2, $ft1
	fmadd.s	$fa6, $fa6, $ft3, $ft1
	fadd.s	$fa4, $fa6, $fa4
	movfr2gr.s	$a0, $fa2
	movfr2gr.s	$a1, $fa3
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa4
	bstrpick.d	$a1, $a1, 31, 0
	fst.s	$fa0, $sp, 152
	fst.s	$fa1, $sp, 156
	fst.s	$ft5, $sp, 160
	st.w	$zero, $sp, 164
	fst.s	$ft10, $sp, 168
	fst.s	$ft11, $sp, 172
	fst.s	$ft14, $sp, 176
	st.w	$zero, $sp, 180
	fst.s	$fa5, $sp, 184
	fst.s	$fa7, $sp, 188
	fst.s	$ft0, $sp, 192
	st.w	$zero, $sp, 196
	st.d	$a0, $sp, 200
	st.d	$a1, $sp, 208
	b	.LBB9_26
.LBB9_16:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 32
	move	$a0, $fp
	jirl	$ra, $a1, 0
	addi.d	$a1, $sp, 152
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(_ZN12btIDebugDraw13drawTransformERK11btTransformf)
	jirl	$ra, $ra, 0
	vld	$vr0, $s0, 908
	vld	$vr1, $s0, 940
	vld	$vr2, $s0, 956
	ld.d	$a0, $fp, 0
	vld	$vr3, $s0, 924
	vst	$vr1, $s4, 0
	vst	$vr2, $s5, 0
	ld.d	$a1, $a0, 32
	vst	$vr0, $sp, 152
	vst	$vr3, $s3, 0
	move	$a0, $fp
	jirl	$ra, $a1, 0
	addi.d	$a1, $sp, 152
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(_ZN12btIDebugDraw13drawTransformERK11btTransformf)
	jirl	$ra, $ra, 0
	beqz	$s1, .LBB9_36
.LBB9_17:
	fld.s	$fs5, $s0, 844
	fld.s	$fs2, $s0, 848
	fld.s	$fa0, $s0, 852
	fld.s	$fs6, $s0, 860
	fld.s	$fs3, $s0, 864
	fld.s	$fa1, $s0, 868
	fld.s	$fs7, $s0, 876
	fld.s	$fs4, $s0, 880
	fld.s	$fa2, $s0, 884
	fld.s	$fa3, $s0, 892
	fld.s	$fa4, $s0, 232
	fld.s	$fa5, $s0, 896
	fld.s	$fa6, $s0, 900
	fmul.s	$fa7, $fs2, $fs1
	fmadd.s	$ft0, $fs5, $fa4, $fa7
	fmadd.s	$ft0, $fa0, $fs1, $ft0
	fadd.s	$ft0, $fa3, $ft0
	fmul.s	$ft1, $fs3, $fs1
	fmadd.s	$ft2, $fs6, $fa4, $ft1
	fmadd.s	$ft2, $fa1, $fs1, $ft2
	fadd.s	$ft2, $fa5, $ft2
	fmul.s	$ft3, $fs4, $fs1
	fmadd.s	$fa4, $fs7, $fa4, $ft3
	fmadd.s	$fa4, $fa2, $fs1, $fa4
	fadd.s	$fa4, $fa6, $fa4
	movfr2gr.s	$a0, $ft0
	movfr2gr.s	$a1, $ft2
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa4
	fld.s	$fa4, $s0, 236
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $sp, 136
	st.d	$a1, $sp, 144
	fmadd.s	$fa7, $fs5, $fa4, $fa7
	fmadd.s	$fa0, $fa0, $fs1, $fa7
	fadd.s	$fa0, $fa3, $fa0
	fmadd.s	$fa3, $fs6, $fa4, $ft1
	fmadd.s	$fa1, $fa1, $fs1, $fa3
	fadd.s	$fa1, $fa5, $fa1
	fmadd.s	$fa3, $fs7, $fa4, $ft3
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa1
	bstrins.d	$a0, $a1, 63, 32
	ld.d	$a1, $fp, 0
	fmadd.s	$fa0, $fa2, $fs1, $fa3
	fadd.s	$fa0, $fa6, $fa0
	st.d	$a0, $sp, 120
	ld.d	$a1, $a1, 32
	movfr2gr.s	$a0, $fa0
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $sp, 128
	move	$a0, $fp
	jirl	$ra, $a1, 0
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	vst	$vr0, $sp, 104
	ld.d	$a1, $a0, 0
	ld.d	$a4, $a1, 40
	addi.d	$a1, $sp, 136
	addi.d	$a2, $sp, 120
	addi.d	$a3, $sp, 104
	jirl	$ra, $a4, 0
	movfr2gr.s	$a0, $fs5
	movfr2gr.s	$a1, $fs6
	movfr2gr.s	$a2, $fs7
	bstrins.d	$a0, $a1, 63, 32
	bstrpick.d	$a1, $a2, 31, 0
	st.d	$a0, $sp, 104
	st.d	$a1, $sp, 112
	movfr2gr.s	$a0, $fs2
	movfr2gr.s	$a1, $fs3
	movfr2gr.s	$a2, $fs4
	bstrins.d	$a0, $a1, 63, 32
	ld.d	$a1, $fp, 0
	bstrpick.d	$a2, $a2, 31, 0
	fld.s	$fs1, $s0, 240
	fld.s	$fs2, $s0, 244
	ld.d	$a1, $a1, 32
	st.d	$a0, $sp, 88
	st.d	$a2, $sp, 96
	addi.d	$s0, $s0, 956
	move	$a0, $fp
	jirl	$ra, $a1, 0
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 72
	addi.d	$a2, $sp, 104
	addi.d	$a3, $sp, 88
	addi.d	$a4, $sp, 72
	ori	$a5, $zero, 1
	vldi	$vr4, -1244
	move	$a1, $s0
	fmov.s	$fa0, $fs0
	fmov.s	$fa1, $fs0
	fmov.s	$fa2, $fs1
	fmov.s	$fa3, $fs2
	b	.LBB9_31
.LBB9_18:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 32
	move	$a0, $fp
	jirl	$ra, $a1, 0
	addi.d	$a1, $sp, 152
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(_ZN12btIDebugDraw13drawTransformERK11btTransformf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 32
	fld.s	$fa6, $s0, 412
	fld.s	$fa7, $s0, 428
	fld.s	$fa3, $a0, 12
	fld.s	$fa2, $a0, 8
	fld.s	$ft0, $s0, 444
	fld.s	$fa5, $a0, 16
	fmul.s	$fa0, $fa7, $fa3
	fld.s	$ft1, $s0, 432
	fmadd.s	$fa0, $fa6, $fa2, $fa0
	fmadd.s	$fa0, $ft0, $fa5, $fa0
	fld.s	$ft2, $s0, 416
	fmul.s	$fa1, $fa3, $ft1
	fld.s	$ft3, $s0, 448
	fld.s	$ft4, $s0, 436
	fld.s	$ft5, $s0, 420
	fmadd.s	$fa1, $ft2, $fa2, $fa1
	fmadd.s	$fa1, $ft3, $fa5, $fa1
	fmul.s	$fa4, $fa3, $ft4
	fmadd.s	$fa4, $ft5, $fa2, $fa4
	fld.s	$ft6, $s0, 452
	fld.s	$ft7, $a0, 28
	fld.s	$ft8, $a0, 24
	fld.s	$ft9, $a0, 32
	fmadd.s	$ft10, $ft6, $fa5, $fa4
	fmul.s	$fa4, $fa7, $ft7
	fmadd.s	$fa4, $fa6, $ft8, $fa4
	fmadd.s	$ft11, $ft0, $ft9, $fa4
	fmul.s	$fa4, $ft1, $ft7
	fld.s	$ft12, $a0, 44
	fld.s	$ft13, $a0, 40
	fmadd.s	$fa4, $ft2, $ft8, $fa4
	fmadd.s	$fa4, $ft3, $ft9, $fa4
	fmul.s	$fa7, $fa7, $ft12
	fmadd.s	$fa6, $fa6, $ft13, $fa7
	fld.s	$fa7, $a0, 48
	fmul.s	$ft14, $ft4, $ft7
	fmadd.s	$ft14, $ft5, $ft8, $ft14
	fmadd.s	$ft14, $ft6, $ft9, $ft14
	fmadd.s	$fa6, $ft0, $fa7, $fa6
	fmul.s	$ft0, $ft1, $ft12
	fmadd.s	$ft0, $ft2, $ft13, $ft0
	fmadd.s	$ft0, $ft3, $fa7, $ft0
	fmul.s	$ft1, $ft4, $ft12
	fmadd.s	$ft1, $ft5, $ft13, $ft1
	fmadd.s	$ft1, $ft6, $fa7, $ft1
	fld.s	$ft2, $s0, 464
	fld.s	$ft3, $s0, 460
	fld.s	$ft4, $s0, 468
	fld.s	$ft5, $a0, 56
	fmul.s	$fa3, $fa3, $ft2
	fmadd.s	$fa2, $fa2, $ft3, $fa3
	fmadd.s	$fa2, $fa5, $ft4, $fa2
	fadd.s	$fa2, $ft5, $fa2
	fld.s	$fa3, $a0, 60
	fmul.s	$fa5, $ft7, $ft2
	fmadd.s	$fa5, $ft8, $ft3, $fa5
	fmadd.s	$fa5, $ft9, $ft4, $fa5
	fadd.s	$fa3, $fa3, $fa5
	fld.s	$fa5, $a0, 64
	fmul.s	$ft2, $ft12, $ft2
	fmadd.s	$ft2, $ft13, $ft3, $ft2
	fmadd.s	$fa7, $fa7, $ft4, $ft2
	fadd.s	$fa5, $fa7, $fa5
	movfr2gr.s	$a0, $fa2
	movfr2gr.s	$a1, $fa3
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa5
	bstrpick.d	$a1, $a1, 31, 0
	fst.s	$fa0, $sp, 152
	fst.s	$fa1, $sp, 156
	fst.s	$ft10, $sp, 160
	st.w	$zero, $sp, 164
	fst.s	$ft11, $sp, 168
	fst.s	$fa6, $sp, 184
	fst.s	$ft0, $sp, 188
	st.d	$a0, $sp, 200
	ld.d	$a0, $fp, 0
	fst.s	$ft1, $sp, 192
	st.w	$zero, $sp, 196
	st.d	$a1, $sp, 208
	ld.d	$a1, $a0, 32
	fst.s	$fa4, $sp, 172
	fst.s	$ft14, $sp, 176
	st.w	$zero, $sp, 180
	move	$a0, $fp
	jirl	$ra, $a1, 0
	addi.d	$a1, $sp, 152
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(_ZN12btIDebugDraw13drawTransformERK11btTransformf)
	jirl	$ra, $ra, 0
	beqz	$s1, .LBB9_36
.LBB9_19:
	addi.d	$s1, $sp, 200
	pcalau12i	$a0, %pc_hi20(.LCPI9_3)
	fld.s	$fa0, $a0, %pc_lo12(.LCPI9_3)
	move	$a0, $s0
	fmov.s	$fa1, $fs0
	pcaddu18i	$ra, %call36(_ZNK21btConeTwistConstraint16GetPointForAngleEff)
	jirl	$ra, $ra, 0
	move	$s2, $zero
	fld.s	$fa0, $sp, 152
	fld.s	$fa1, $sp, 156
	movgr2fr.w	$fa2, $a0
	srli.d	$a0, $a0, 32
	movgr2fr.w	$fa3, $a0
	fmul.s	$fa1, $fa1, $fa3
	fld.s	$fa4, $sp, 160
	fld.s	$fa5, $sp, 200
	fmadd.s	$fa0, $fa0, $fa2, $fa1
	movgr2fr.w	$fa1, $a1
	fmadd.s	$fa0, $fa4, $fa1, $fa0
	fadd.s	$fa0, $fa0, $fa5
	fld.s	$fa4, $sp, 172
	fld.s	$fa5, $sp, 168
	fld.s	$fa6, $sp, 176
	fld.s	$fa7, $sp, 204
	fmul.s	$fa4, $fa4, $fa3
	fmadd.s	$fa4, $fa5, $fa2, $fa4
	fmadd.s	$fa4, $fa6, $fa1, $fa4
	fadd.s	$fa4, $fa7, $fa4
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa4
	bstrins.d	$a0, $a1, 63, 32
	fld.s	$fa0, $sp, 188
	fld.s	$fa4, $sp, 184
	fld.s	$fa5, $sp, 192
	fld.s	$fa6, $sp, 208
	fmul.s	$fa0, $fa0, $fa3
	fmadd.s	$fa0, $fa4, $fa2, $fa0
	fmadd.s	$fa0, $fa5, $fa1, $fa0
	fadd.s	$fa0, $fa6, $fa0
	st.d	$a0, $sp, 136
	pcalau12i	$a0, %pc_hi20(.LCPI9_4)
	fld.s	$fs2, $a0, %pc_lo12(.LCPI9_4)
	pcalau12i	$a0, %pc_hi20(.LCPI9_5)
	fld.s	$fs3, $a0, %pc_lo12(.LCPI9_5)
	movfr2gr.s	$a0, $fa0
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $sp, 144
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	ori	$s3, $zero, 32
	b	.LBB9_21
	.p2align	4, , 16
.LBB9_20:                               #   in Loop: Header=BB9_21 Depth=1
	vld	$vr0, $sp, 120
	addi.w	$s2, $s2, 1
	vst	$vr0, $sp, 136
	beq	$s2, $s3, .LBB9_23
.LBB9_21:                               # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a0, $s2, 31, 0
	movgr2fr.d	$fa0, $a0
	ffint.s.l	$fa0, $fa0
	fmul.s	$fa0, $fa0, $fs2
	fmul.s	$fa0, $fa0, $fs3
	move	$a0, $s0
	fmov.s	$fa1, $fs0
	pcaddu18i	$ra, %call36(_ZNK21btConeTwistConstraint16GetPointForAngleEff)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $sp, 152
	fld.s	$fa1, $sp, 156
	movgr2fr.w	$fa2, $a0
	srli.d	$a0, $a0, 32
	movgr2fr.w	$fa3, $a0
	fmul.s	$fa1, $fa1, $fa3
	fmadd.s	$fa0, $fa0, $fa2, $fa1
	fld.s	$fa1, $sp, 160
	movgr2fr.w	$fa4, $a1
	fld.s	$fa5, $sp, 200
	fld.s	$fa6, $sp, 172
	fld.s	$fa7, $sp, 168
	fmadd.s	$fa0, $fa1, $fa4, $fa0
	fadd.s	$fa0, $fa0, $fa5
	fmul.s	$fa1, $fa6, $fa3
	fmadd.s	$fa1, $fa7, $fa2, $fa1
	fld.s	$fa5, $sp, 176
	fld.s	$fa6, $sp, 204
	fld.s	$fa7, $sp, 188
	fld.s	$ft0, $sp, 184
	fmadd.s	$fa1, $fa5, $fa4, $fa1
	fadd.s	$fa1, $fa6, $fa1
	fmul.s	$fa3, $fa7, $fa3
	fmadd.s	$fa2, $ft0, $fa2, $fa3
	fld.s	$fa3, $sp, 192
	fld.s	$fa5, $sp, 208
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa1
	bstrins.d	$a0, $a1, 63, 32
	ld.d	$a1, $fp, 0
	fmadd.s	$fa0, $fa3, $fa4, $fa2
	fadd.s	$fa0, $fa5, $fa0
	st.d	$a0, $sp, 120
	ld.d	$a1, $a1, 32
	movfr2gr.s	$a0, $fa0
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $sp, 128
	move	$a0, $fp
	jirl	$ra, $a1, 0
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 104
	ld.d	$a1, $a0, 0
	ld.d	$a4, $a1, 40
	addi.d	$a1, $sp, 136
	addi.d	$a2, $sp, 120
	addi.d	$a3, $sp, 104
	jirl	$ra, $a4, 0
	andi	$a0, $s2, 3
	bnez	$a0, .LBB9_20
# %bb.22:                               #   in Loop: Header=BB9_21 Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 32
	move	$a0, $fp
	jirl	$ra, $a1, 0
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 104
	ld.d	$a1, $a0, 0
	ld.d	$a4, $a1, 40
	addi.d	$a2, $sp, 120
	addi.d	$a3, $sp, 104
	move	$a1, $s1
	jirl	$ra, $a4, 0
	b	.LBB9_20
.LBB9_23:
	ld.d	$a0, $s0, 32
	fld.s	$fa0, $a0, 360
	fld.s	$fs2, $s0, 500
	fld.s	$fs3, $s0, 560
	fcmp.clt.s	$fcc0, $fs1, $fa0
	bceqz	$fcc0, .LBB9_29
# %bb.24:
	fld.s	$fa5, $s0, 412
	fld.s	$fa6, $s0, 428
	fld.s	$ft2, $a0, 12
	fld.s	$ft1, $a0, 8
	fld.s	$ft0, $s0, 444
	fld.s	$ft3, $a0, 16
	fmul.s	$fa0, $fa6, $ft2
	fld.s	$ft4, $s0, 432
	fmadd.s	$fa0, $fa5, $ft1, $fa0
	fmadd.s	$fa0, $ft0, $ft3, $fa0
	fld.s	$ft5, $s0, 416
	fmul.s	$fa1, $ft2, $ft4
	fld.s	$ft6, $s0, 448
	fld.s	$ft7, $s0, 436
	fld.s	$ft8, $s0, 420
	fmadd.s	$fa1, $ft5, $ft1, $fa1
	fmadd.s	$fa1, $ft6, $ft3, $fa1
	fmul.s	$fa2, $ft2, $ft7
	fmadd.s	$fa2, $ft8, $ft1, $fa2
	fld.s	$ft9, $s0, 452
	fld.s	$ft10, $a0, 28
	fld.s	$ft11, $a0, 24
	fld.s	$ft12, $a0, 32
	fmadd.s	$fa3, $ft9, $ft3, $fa2
	fmul.s	$fa2, $fa6, $ft10
	fmadd.s	$fa2, $fa5, $ft11, $fa2
	fmadd.s	$fa2, $ft0, $ft12, $fa2
	fmul.s	$fa4, $ft4, $ft10
	fld.s	$ft13, $a0, 44
	fld.s	$ft14, $a0, 40
	fmadd.s	$fa4, $ft5, $ft11, $fa4
	fmadd.s	$fa4, $ft6, $ft12, $fa4
	fmul.s	$fa6, $fa6, $ft13
	fmadd.s	$fa5, $fa5, $ft14, $fa6
	fld.s	$ft15, $a0, 48
	fmul.s	$fa6, $ft7, $ft10
	fmadd.s	$fa6, $ft8, $ft11, $fa6
	fmadd.s	$fa7, $ft9, $ft12, $fa6
	fmadd.s	$fa6, $ft0, $ft15, $fa5
	fmul.s	$fa5, $ft4, $ft13
	fmadd.s	$fa5, $ft5, $ft14, $fa5
	fmadd.s	$fa5, $ft6, $ft15, $fa5
	fmul.s	$ft0, $ft7, $ft13
	fmadd.s	$ft0, $ft8, $ft14, $ft0
	fmadd.s	$ft0, $ft9, $ft15, $ft0
	fld.s	$ft4, $s0, 464
	fld.s	$ft5, $s0, 460
	fld.s	$ft6, $s0, 468
	b	.LBB9_30
.LBB9_25:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 32
	move	$a0, $fp
	jirl	$ra, $a1, 0
	addi.d	$a1, $sp, 152
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(_ZN12btIDebugDraw13drawTransformERK11btTransformf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 32
	fld.s	$fa6, $s0, 664
	fld.s	$fa7, $s0, 680
	fld.s	$fa3, $a0, 12
	fld.s	$fa2, $a0, 8
	fld.s	$ft0, $s0, 696
	fld.s	$fa5, $a0, 16
	fmul.s	$fa0, $fa7, $fa3
	fld.s	$ft1, $s0, 684
	fmadd.s	$fa0, $fa6, $fa2, $fa0
	fmadd.s	$fa0, $ft0, $fa5, $fa0
	fld.s	$ft2, $s0, 668
	fmul.s	$fa1, $fa3, $ft1
	fld.s	$ft3, $s0, 700
	fld.s	$ft4, $s0, 688
	fld.s	$ft5, $s0, 672
	fmadd.s	$fa1, $ft2, $fa2, $fa1
	fmadd.s	$fa1, $ft3, $fa5, $fa1
	fmul.s	$fa4, $fa3, $ft4
	fmadd.s	$fa4, $ft5, $fa2, $fa4
	fld.s	$ft6, $s0, 704
	fld.s	$ft7, $a0, 28
	fld.s	$ft8, $a0, 24
	fld.s	$ft9, $a0, 32
	fmadd.s	$ft10, $ft6, $fa5, $fa4
	fmul.s	$fa4, $fa7, $ft7
	fmadd.s	$fa4, $fa6, $ft8, $fa4
	fmadd.s	$ft11, $ft0, $ft9, $fa4
	fmul.s	$fa4, $ft1, $ft7
	fld.s	$ft12, $a0, 44
	fld.s	$ft13, $a0, 40
	fmadd.s	$fa4, $ft2, $ft8, $fa4
	fmadd.s	$fa4, $ft3, $ft9, $fa4
	fmul.s	$fa7, $fa7, $ft12
	fmadd.s	$fa6, $fa6, $ft13, $fa7
	fld.s	$fa7, $a0, 48
	fmul.s	$ft14, $ft4, $ft7
	fmadd.s	$ft14, $ft5, $ft8, $ft14
	fmadd.s	$ft14, $ft6, $ft9, $ft14
	fmadd.s	$fa6, $ft0, $fa7, $fa6
	fmul.s	$ft0, $ft1, $ft12
	fmadd.s	$ft0, $ft2, $ft13, $ft0
	fmadd.s	$ft0, $ft3, $fa7, $ft0
	fmul.s	$ft1, $ft4, $ft12
	fmadd.s	$ft1, $ft5, $ft13, $ft1
	fmadd.s	$ft1, $ft6, $fa7, $ft1
	fld.s	$ft2, $s0, 716
	fld.s	$ft3, $s0, 712
	fld.s	$ft4, $s0, 720
	fld.s	$ft5, $a0, 56
	fmul.s	$fa3, $fa3, $ft2
	fmadd.s	$fa2, $fa2, $ft3, $fa3
	fmadd.s	$fa2, $fa5, $ft4, $fa2
	fadd.s	$fa2, $ft5, $fa2
	fld.s	$fa3, $a0, 60
	fmul.s	$fa5, $ft7, $ft2
	fmadd.s	$fa5, $ft8, $ft3, $fa5
	fmadd.s	$fa5, $ft9, $ft4, $fa5
	fadd.s	$fa3, $fa3, $fa5
	fld.s	$fa5, $a0, 64
	fmul.s	$ft2, $ft12, $ft2
	fmadd.s	$ft2, $ft13, $ft3, $ft2
	fmadd.s	$fa7, $fa7, $ft4, $ft2
	fadd.s	$fa5, $fa7, $fa5
	movfr2gr.s	$a0, $fa2
	movfr2gr.s	$a1, $fa3
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa5
	bstrpick.d	$a1, $a1, 31, 0
	fst.s	$fa0, $sp, 152
	fst.s	$fa1, $sp, 156
	fst.s	$ft10, $sp, 160
	st.w	$zero, $sp, 164
	fst.s	$ft11, $sp, 168
	fst.s	$fa6, $sp, 184
	fst.s	$ft0, $sp, 188
	st.d	$a0, $sp, 200
	ld.d	$a0, $fp, 0
	fst.s	$ft1, $sp, 192
	st.w	$zero, $sp, 196
	st.d	$a1, $sp, 208
	ld.d	$a1, $a0, 32
	fst.s	$fa4, $sp, 172
	fst.s	$ft14, $sp, 176
	st.w	$zero, $sp, 180
	move	$a0, $fp
	jirl	$ra, $a1, 0
	addi.d	$a1, $sp, 152
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(_ZN12btIDebugDraw13drawTransformERK11btTransformf)
	jirl	$ra, $ra, 0
.LBB9_26:
	beqz	$s1, .LBB9_36
# %bb.27:
	fld.s	$fa1, $s0, 748
	fld.s	$fa0, $s0, 752
	fcmp.ceq.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB9_36
# %bb.28:
	addi.d	$s0, $sp, 200
	fcmp.cule.s	$fcc0, $fa1, $fa0
	fsel	$fs1, $fs1, $fa1, $fcc0
	movcf2gr	$a0, $fcc0
	st.d	$a0, $sp, 16
	pcalau12i	$a0, %pc_hi20(.LCPI9_6)
	ld.w	$a1, $sp, 176
	ld.wu	$a2, $sp, 160
	fld.s	$fa1, $a0, %pc_lo12(.LCPI9_6)
	ld.wu	$a0, $sp, 192
	slli.d	$a1, $a1, 32
	or	$a1, $a1, $a2
	st.d	$a1, $sp, 136
	ld.w	$a1, $sp, 168
	ld.wu	$a2, $sp, 152
	st.d	$a0, $sp, 144
	ld.d	$a0, $fp, 0
	slli.d	$a1, $a1, 32
	or	$a1, $a1, $a2
	ld.wu	$a2, $sp, 184
	ld.d	$a3, $a0, 32
	fsel	$fs2, $fa1, $fa0, $fcc0
	st.d	$a1, $sp, 120
	st.d	$a2, $sp, 128
	move	$a0, $fp
	jirl	$ra, $a3, 0
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 104
	addi.d	$a2, $sp, 136
	addi.d	$a3, $sp, 120
	addi.d	$a4, $sp, 104
	vldi	$vr4, -1244
	move	$a1, $s0
	fmov.s	$fa0, $fs0
	fmov.s	$fa1, $fs0
	fmov.s	$fa2, $fs1
	fmov.s	$fa3, $fs2
	ld.d	$a5, $sp, 16
	movgr2cf	$fcc0, $a5
	movcf2gr	$a5, $fcc0
	b	.LBB9_31
.LBB9_29:
	ld.d	$a0, $s0, 24
	fld.s	$fa5, $s0, 348
	fld.s	$fa6, $s0, 364
	fld.s	$ft2, $a0, 12
	fld.s	$ft1, $a0, 8
	fld.s	$ft0, $s0, 380
	fld.s	$ft3, $a0, 16
	fmul.s	$fa0, $fa6, $ft2
	fld.s	$ft4, $s0, 368
	fmadd.s	$fa0, $fa5, $ft1, $fa0
	fmadd.s	$fa0, $ft0, $ft3, $fa0
	fld.s	$ft5, $s0, 352
	fmul.s	$fa1, $ft2, $ft4
	fld.s	$ft6, $s0, 384
	fld.s	$ft7, $s0, 372
	fld.s	$ft8, $s0, 356
	fmadd.s	$fa1, $ft5, $ft1, $fa1
	fmadd.s	$fa1, $ft6, $ft3, $fa1
	fmul.s	$fa2, $ft2, $ft7
	fmadd.s	$fa2, $ft8, $ft1, $fa2
	fld.s	$ft9, $s0, 388
	fld.s	$ft10, $a0, 28
	fld.s	$ft11, $a0, 24
	fld.s	$ft12, $a0, 32
	fmadd.s	$fa3, $ft9, $ft3, $fa2
	fmul.s	$fa2, $fa6, $ft10
	fmadd.s	$fa2, $fa5, $ft11, $fa2
	fmadd.s	$fa2, $ft0, $ft12, $fa2
	fmul.s	$fa4, $ft4, $ft10
	fld.s	$ft13, $a0, 44
	fld.s	$ft14, $a0, 40
	fmadd.s	$fa4, $ft5, $ft11, $fa4
	fmadd.s	$fa4, $ft6, $ft12, $fa4
	fmul.s	$fa6, $fa6, $ft13
	fmadd.s	$fa5, $fa5, $ft14, $fa6
	fld.s	$ft15, $a0, 48
	fmul.s	$fa6, $ft7, $ft10
	fmadd.s	$fa6, $ft8, $ft11, $fa6
	fmadd.s	$fa7, $ft9, $ft12, $fa6
	fmadd.s	$fa6, $ft0, $ft15, $fa5
	fmul.s	$fa5, $ft4, $ft13
	fmadd.s	$fa5, $ft5, $ft14, $fa5
	fmadd.s	$fa5, $ft6, $ft15, $fa5
	fmul.s	$ft0, $ft7, $ft13
	fmadd.s	$ft0, $ft8, $ft14, $ft0
	fmadd.s	$ft0, $ft9, $ft15, $ft0
	fld.s	$ft4, $s0, 400
	fld.s	$ft5, $s0, 396
	fld.s	$ft6, $s0, 404
.LBB9_30:
	fld.s	$ft7, $a0, 56
	fmul.s	$ft2, $ft2, $ft4
	fmadd.s	$ft1, $ft1, $ft5, $ft2
	fmadd.s	$ft1, $ft3, $ft6, $ft1
	fadd.s	$ft1, $ft7, $ft1
	fld.s	$ft2, $a0, 60
	fmul.s	$ft3, $ft10, $ft4
	fmadd.s	$ft3, $ft11, $ft5, $ft3
	fmadd.s	$ft3, $ft12, $ft6, $ft3
	fadd.s	$ft2, $ft2, $ft3
	fmul.s	$ft3, $ft13, $ft4
	fmadd.s	$ft3, $ft14, $ft5, $ft3
	fmadd.s	$ft3, $ft15, $ft6, $ft3
	fld.s	$ft4, $a0, 64
	fadd.s	$ft3, $ft3, $ft4
	movfr2gr.s	$a0, $ft1
	movfr2gr.s	$a1, $ft2
	bstrins.d	$a0, $a1, 63, 32
	fst.s	$fa0, $sp, 152
	fst.s	$fa1, $sp, 156
	fst.s	$fa3, $sp, 160
	st.w	$zero, $sp, 164
	fst.s	$fa2, $sp, 168
	fst.s	$fa4, $sp, 172
	fst.s	$fa7, $sp, 176
	st.w	$zero, $sp, 180
	fst.s	$fa6, $sp, 184
	fst.s	$fa5, $sp, 188
	fst.s	$ft0, $sp, 192
	st.w	$zero, $sp, 196
	movfr2gr.s	$a1, $ft3
	bstrpick.d	$a1, $a1, 31, 0
	movfr2gr.s	$a2, $fa0
	movfr2gr.s	$a3, $fa2
	movfr2gr.s	$a4, $fa6
	st.d	$a0, $sp, 200
	st.d	$a1, $sp, 208
	vld	$vr0, $s1, 0
	movfr2gr.s	$a0, $fa1
	movfr2gr.s	$a1, $fa4
	movfr2gr.s	$a5, $fa5
	vst	$vr0, $sp, 120
	bstrins.d	$a2, $a3, 63, 32
	bstrpick.d	$a3, $a4, 31, 0
	ld.d	$a4, $fp, 0
	st.d	$a2, $sp, 104
	st.d	$a3, $sp, 112
	bstrins.d	$a0, $a1, 63, 32
	ld.d	$a1, $a4, 32
	bstrpick.d	$a2, $a5, 31, 0
	st.d	$a0, $sp, 88
	st.d	$a2, $sp, 96
	move	$a0, $fp
	jirl	$ra, $a1, 0
	fneg.s	$fa0, $fs3
	fsub.s	$fa2, $fa0, $fs2
	fsub.s	$fa3, $fs2, $fs3
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 72
	addi.d	$a1, $sp, 120
	addi.d	$a2, $sp, 104
	addi.d	$a3, $sp, 88
	addi.d	$a4, $sp, 72
	ori	$a5, $zero, 1
	vldi	$vr4, -1244
	fmov.s	$fa0, $fs0
	fmov.s	$fa1, $fs0
.LBB9_31:
	pcaddu18i	$ra, %call36(_ZN12btIDebugDraw7drawArcERK9btVector3S2_S2_ffffS2_bf)
	jirl	$ra, $ra, 0
	b	.LBB9_36
.LBB9_32:
	fcmp.cule.s	$fcc0, $fs2, $fs1
	bcnez	$fcc0, .LBB9_35
# %bb.33:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 32
	move	$a0, $fp
	jirl	$ra, $a1, 0
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 72
	addi.d	$a2, $sp, 88
	addi.d	$a3, $sp, 104
	addi.d	$a4, $sp, 72
	ori	$a5, $zero, 1
	vldi	$vr4, -1244
	move	$a1, $s1
	fmov.s	$fa0, $fs0
	fmov.s	$fa1, $fs0
	fmov.s	$fa2, $fs1
	fmov.s	$fa3, $fs2
.LBB9_34:
	pcaddu18i	$ra, %call36(_ZN12btIDebugDraw7drawArcERK9btVector3S2_S2_ffffS2_bf)
	jirl	$ra, $ra, 0
.LBB9_35:
	vld	$vr0, $s7, 0
	vld	$vr1, $s6, 0
	vst	$vr0, $sp, 152
	vld	$vr0, $s8, 0
	vld	$vr2, $s2, 0
	vst	$vr1, $s5, 0
	ld.d	$a0, $fp, 0
	vst	$vr0, $s4, 0
	vld	$vr0, $s0, 728
	vld	$vr1, $s0, 744
	ld.d	$a1, $a0, 32
	vst	$vr2, $s3, 0
	vst	$vr0, $sp, 72
	vst	$vr1, $sp, 56
	move	$a0, $fp
	jirl	$ra, $a1, 0
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 40
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 56
	addi.d	$a3, $sp, 152
	addi.d	$a4, $sp, 40
	pcaddu18i	$ra, %call36(_ZN12btIDebugDraw7drawBoxERK9btVector3S2_RK11btTransformS2_)
	jirl	$ra, $ra, 0
.LBB9_36:
	fld.d	$fs7, $sp, 216                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 224                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 232                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 240                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 248                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 256                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 264                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 272                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 352                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 360                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 368
	ret
.Lfunc_end9:
	.size	_ZN23btDiscreteDynamicsWorld19debugDrawConstraintEP17btTypedConstraint, .Lfunc_end9-_ZN23btDiscreteDynamicsWorld19debugDrawConstraintEP17btTypedConstraint
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI9_0:
	.word	.LBB9_3-.LJTI9_0
	.word	.LBB9_14-.LJTI9_0
	.word	.LBB9_7-.LJTI9_0
	.word	.LBB9_9-.LJTI9_0
	.word	.LBB9_5-.LJTI9_0
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN23btDiscreteDynamicsWorld15debugDrawObjectERK11btTransformPK16btCollisionShapeRK9btVector3
.LCPI10_0:
	.word	0x3f800000                      # float 1
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
.LCPI10_1:
	.word	0x00000000                      # float 0
	.word	0x3f800000                      # float 1
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
.LCPI10_2:
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x3f800000                      # float 1
	.word	0x00000000                      # float 0
.LCPI10_5:
	.word	0x5d5e0b6b                      # float 9.99999984E+17
	.word	0x5d5e0b6b                      # float 9.99999984E+17
	.word	0x5d5e0b6b                      # float 9.99999984E+17
	.word	0x00000000                      # float 0
.LCPI10_6:
	.word	0xdd5e0b6b                      # float -9.99999984E+17
	.word	0xdd5e0b6b                      # float -9.99999984E+17
	.word	0xdd5e0b6b                      # float -9.99999984E+17
	.word	0x00000000                      # float 0
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI10_3:
	.word	0x3f3504f3                      # float 0.707106769
.LCPI10_4:
	.word	0x42c80000                      # float 100
	.text
	.globl	_ZN23btDiscreteDynamicsWorld15debugDrawObjectERK11btTransformPK16btCollisionShapeRK9btVector3
	.p2align	5
	.type	_ZN23btDiscreteDynamicsWorld15debugDrawObjectERK11btTransformPK16btCollisionShapeRK9btVector3,@function
_ZN23btDiscreteDynamicsWorld15debugDrawObjectERK11btTransformPK16btCollisionShapeRK9btVector3: # @_ZN23btDiscreteDynamicsWorld15debugDrawObjectERK11btTransformPK16btCollisionShapeRK9btVector3
.Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception4
# %bb.0:
	addi.d	$sp, $sp, -416
	.cfi_def_cfa_offset 416
	st.d	$ra, $sp, 408                   # 8-byte Folded Spill
	st.d	$fp, $sp, 400                   # 8-byte Folded Spill
	st.d	$s0, $sp, 392                   # 8-byte Folded Spill
	st.d	$s1, $sp, 384                   # 8-byte Folded Spill
	st.d	$s2, $sp, 376                   # 8-byte Folded Spill
	st.d	$s3, $sp, 368                   # 8-byte Folded Spill
	st.d	$s4, $sp, 360                   # 8-byte Folded Spill
	st.d	$s5, $sp, 352                   # 8-byte Folded Spill
	st.d	$s6, $sp, 344                   # 8-byte Folded Spill
	st.d	$s7, $sp, 336                   # 8-byte Folded Spill
	st.d	$s8, $sp, 328                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 320                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 312                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 304                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 296                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 288                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 280                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 272                  # 8-byte Folded Spill
	fst.d	$fs7, $sp, 264                  # 8-byte Folded Spill
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
	ld.d	$a0, $a0, 0
	move	$s0, $a1
	vld	$vr0, $a1, 48
	ld.d	$a1, $a0, 32
	move	$fp, $a3
	move	$s2, $a2
	vst	$vr0, $sp, 80
	move	$a0, $s1
	jirl	$ra, $a1, 0
	fld.s	$fa0, $s0, 4
	fld.s	$fa1, $s0, 0
	movgr2fr.w	$fs0, $zero
	fld.s	$fa2, $s0, 8
	fmul.s	$fa0, $fa0, $fs0
	fld.s	$fa3, $s0, 20
	fadd.s	$fa0, $fa1, $fa0
	fmadd.s	$fa0, $fa2, $fs0, $fa0
	fld.s	$fa1, $s0, 16
	fmul.s	$fa2, $fa3, $fs0
	fld.s	$fa3, $s0, 24
	fld.s	$fa4, $s0, 36
	fld.s	$fa5, $s0, 32
	fadd.s	$fa1, $fa1, $fa2
	fmadd.s	$fa1, $fa3, $fs0, $fa1
	fmul.s	$fa2, $fa4, $fs0
	fadd.s	$fa2, $fa5, $fa2
	fld.s	$fa3, $s0, 40
	fld.s	$fa4, $sp, 80
	fld.s	$fa5, $sp, 84
	fld.s	$fa6, $sp, 88
	fmadd.s	$fa2, $fa3, $fs0, $fa2
	fadd.s	$fa0, $fa0, $fa4
	fadd.s	$fa1, $fa1, $fa5
	fadd.s	$fa2, $fa2, $fa6
	movfr2gr.s	$a1, $fa0
	movfr2gr.s	$a2, $fa1
	bstrins.d	$a1, $a2, 63, 32
	movfr2gr.s	$a2, $fa2
	pcalau12i	$a3, %pc_hi20(.LCPI10_0)
	vld	$vr0, $a3, %pc_lo12(.LCPI10_0)
	bstrpick.d	$a2, $a2, 31, 0
	st.d	$a1, $sp, 240
	st.d	$a2, $sp, 248
	vst	$vr0, $sp, 224
	ld.d	$a1, $a0, 0
	ld.d	$a4, $a1, 40
	addi.d	$s6, $s0, 16
	addi.d	$s5, $s0, 32
	addi.d	$a1, $sp, 80
	addi.d	$a2, $sp, 240
	addi.d	$a3, $sp, 224
	jirl	$ra, $a4, 0
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 32
	move	$a0, $s1
	jirl	$ra, $a1, 0
	fld.s	$fa0, $s0, 0
	fld.s	$fa1, $s0, 4
	fmadd.s	$fa0, $fa0, $fs0, $fa1
	fld.s	$fa1, $s0, 8
	fld.s	$fa2, $s0, 16
	fld.s	$fa3, $s0, 20
	fld.s	$fa4, $s0, 24
	fld.s	$fa5, $s0, 32
	fld.s	$fa6, $s0, 36
	fmadd.s	$fa0, $fa1, $fs0, $fa0
	fmadd.s	$fa1, $fa2, $fs0, $fa3
	fmadd.s	$fa1, $fa4, $fs0, $fa1
	fmadd.s	$fa2, $fa5, $fs0, $fa6
	fld.s	$fa3, $s0, 40
	fld.s	$fa4, $sp, 80
	fld.s	$fa5, $sp, 84
	fld.s	$fa6, $sp, 88
	fmadd.s	$fa2, $fa3, $fs0, $fa2
	fadd.s	$fa0, $fa0, $fa4
	fadd.s	$fa1, $fa1, $fa5
	fadd.s	$fa2, $fa2, $fa6
	movfr2gr.s	$a1, $fa0
	movfr2gr.s	$a2, $fa1
	bstrins.d	$a1, $a2, 63, 32
	pcalau12i	$a2, %pc_hi20(.LCPI10_1)
	vld	$vr0, $a2, %pc_lo12(.LCPI10_1)
	movfr2gr.s	$a2, $fa2
	bstrpick.d	$a2, $a2, 31, 0
	st.d	$a1, $sp, 240
	st.d	$a2, $sp, 248
	vst	$vr0, $sp, 224
	ld.d	$a1, $a0, 0
	ld.d	$a4, $a1, 40
	addi.d	$a1, $sp, 80
	addi.d	$a2, $sp, 240
	addi.d	$a3, $sp, 224
	jirl	$ra, $a4, 0
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 32
	move	$a0, $s1
	jirl	$ra, $a1, 0
	fld.s	$fa0, $s0, 4
	fld.s	$fa1, $s0, 0
	fld.s	$fa2, $s0, 8
	fmul.s	$fa0, $fa0, $fs0
	fld.s	$fa3, $s0, 20
	fmadd.s	$fa0, $fa1, $fs0, $fa0
	fadd.s	$fa0, $fa2, $fa0
	fld.s	$fa1, $s0, 16
	fmul.s	$fa2, $fa3, $fs0
	fld.s	$fa3, $s0, 24
	fld.s	$fa4, $s0, 36
	fld.s	$fa5, $s0, 32
	fmadd.s	$fa1, $fa1, $fs0, $fa2
	fadd.s	$fa1, $fa3, $fa1
	fmul.s	$fa2, $fa4, $fs0
	fmadd.s	$fa2, $fa5, $fs0, $fa2
	fld.s	$fa3, $s0, 40
	fld.s	$fa4, $sp, 80
	fld.s	$fa5, $sp, 84
	fld.s	$fa6, $sp, 88
	fadd.s	$fa2, $fa3, $fa2
	fadd.s	$fa0, $fa0, $fa4
	fadd.s	$fa1, $fa1, $fa5
	fadd.s	$fa2, $fa2, $fa6
	movfr2gr.s	$a1, $fa0
	movfr2gr.s	$a2, $fa1
	bstrins.d	$a1, $a2, 63, 32
	pcalau12i	$a2, %pc_hi20(.LCPI10_2)
	vld	$vr0, $a2, %pc_lo12(.LCPI10_2)
	movfr2gr.s	$a2, $fa2
	bstrpick.d	$a2, $a2, 31, 0
	st.d	$a1, $sp, 240
	st.d	$a2, $sp, 248
	vst	$vr0, $sp, 224
	ld.d	$a1, $a0, 0
	ld.d	$a4, $a1, 40
	addi.d	$a1, $sp, 80
	addi.d	$a2, $sp, 240
	addi.d	$a3, $sp, 224
	jirl	$ra, $a4, 0
	ld.w	$a0, $s2, 8
	addi.d	$a1, $a0, -8
	ori	$a2, $zero, 23
	bltu	$a2, $a1, .LBB10_3
# %bb.1:
	slli.d	$a1, $a1, 2
	pcalau12i	$a2, %pc_hi20(.LJTI10_0)
	addi.d	$a2, $a2, %pc_lo12(.LJTI10_0)
	ldx.w	$a1, $a2, $a1
	add.d	$a1, $a2, $a1
	jr	$a1
.LBB10_2:
	ld.d	$a0, $s2, 0
	ld.d	$a1, $a0, 88
	move	$a0, $s2
	jirl	$ra, $a1, 0
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(_ZN23btDiscreteDynamicsWorld15debugDrawSphereEfRK11btTransformRK9btVector3)
	jirl	$ra, $ra, 0
	b	.LBB10_30
.LBB10_3:
	addi.w	$a1, $a0, -21
	ori	$a2, $zero, 8
	addi.d	$s4, $s0, 48
	bltu	$a2, $a1, .LBB10_7
# %bb.4:
	pcalau12i	$a0, %pc_hi20(.LCPI10_5)
	ld.d	$a1, $s1, 0
	vld	$vr0, $a0, %pc_lo12(.LCPI10_5)
	pcalau12i	$a0, %pc_hi20(.LCPI10_6)
	vld	$vr1, $a0, %pc_lo12(.LCPI10_6)
	ld.d	$a1, $a1, 32
	vst	$vr0, $sp, 240
	vst	$vr1, $sp, 224
	move	$a0, $s1
	jirl	$ra, $a1, 0
	pcalau12i	$a1, %pc_hi20(_ZTV17DebugDrawcallback)
	addi.d	$a1, $a1, %pc_lo12(_ZTV17DebugDrawcallback)
	vld	$vr0, $fp, 0
	vld	$vr1, $s0, 0
	vld	$vr2, $s6, 0
	vst	$vr0, $sp, 104
	vst	$vr1, $sp, 120
	addi.d	$a2, $a1, 16
	vst	$vr2, $sp, 136
	vld	$vr0, $s4, 0
	st.d	$a2, $sp, 80
	ld.d	$a2, $s2, 0
	addi.d	$a1, $a1, 64
	vst	$vr0, $sp, 168
	vld	$vr0, $s5, 0
	ld.d	$a4, $a2, 96
	st.d	$a1, $sp, 88
	st.d	$a0, $sp, 96
	vst	$vr0, $sp, 152
.Ltmp119:                               # EH_LABEL
	addi.d	$a1, $sp, 80
	addi.d	$a2, $sp, 224
	addi.d	$a3, $sp, 240
	move	$a0, $s2
	jirl	$ra, $a4, 0
.Ltmp120:                               # EH_LABEL
# %bb.5:
.Ltmp124:                               # EH_LABEL
	addi.d	$a0, $sp, 88
	pcaddu18i	$ra, %call36(_ZN31btInternalTriangleIndexCallbackD2Ev)
	jirl	$ra, $ra, 0
.Ltmp125:                               # EH_LABEL
# %bb.6:                                # %_ZN17DebugDrawcallbackD2Ev.exit
	addi.d	$a0, $sp, 80
	pcaddu18i	$ra, %call36(_ZN18btTriangleCallbackD2Ev)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 8
.LBB10_7:
	ori	$a1, $zero, 3
	bne	$a0, $a1, .LBB10_11
# %bb.8:
	pcalau12i	$a0, %pc_hi20(.LCPI10_5)
	ld.d	$a1, $s1, 0
	vld	$vr0, $a0, %pc_lo12(.LCPI10_5)
	pcalau12i	$a0, %pc_hi20(.LCPI10_6)
	vld	$vr1, $a0, %pc_lo12(.LCPI10_6)
	ld.d	$a1, $a1, 32
	vst	$vr0, $sp, 240
	vst	$vr1, $sp, 224
	move	$a0, $s1
	jirl	$ra, $a1, 0
	addi.d	$s3, $sp, 88
	pcalau12i	$a1, %pc_hi20(_ZTV17DebugDrawcallback)
	addi.d	$a1, $a1, %pc_lo12(_ZTV17DebugDrawcallback)
	vld	$vr0, $fp, 0
	vld	$vr1, $s0, 0
	vld	$vr2, $s6, 0
	vst	$vr0, $sp, 104
	vst	$vr1, $sp, 120
	vst	$vr2, $sp, 136
	vld	$vr0, $s5, 0
	addi.d	$a2, $a1, 16
	st.d	$a2, $sp, 80
	addi.d	$a2, $a1, 64
	vst	$vr0, $sp, 152
	vld	$vr0, $s4, 0
	ld.d	$a1, $s2, 104
	st.d	$a2, $sp, 88
	st.d	$a0, $sp, 96
	vst	$vr0, $sp, 168
	ld.d	$a0, $a1, 0
	ld.d	$a4, $a0, 16
.Ltmp130:                               # EH_LABEL
	addi.d	$a2, $sp, 224
	addi.d	$a3, $sp, 240
	move	$a0, $a1
	move	$a1, $s3
	jirl	$ra, $a4, 0
.Ltmp131:                               # EH_LABEL
# %bb.9:
.Ltmp136:                               # EH_LABEL
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN31btInternalTriangleIndexCallbackD2Ev)
	jirl	$ra, $ra, 0
.Ltmp137:                               # EH_LABEL
# %bb.10:                               # %_ZN17DebugDrawcallbackD2Ev.exit999
	addi.d	$a0, $sp, 80
	pcaddu18i	$ra, %call36(_ZN18btTriangleCallbackD2Ev)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 8
.LBB10_11:
	ori	$a1, $zero, 6
	blt	$a1, $a0, .LBB10_30
# %bb.12:                               # %.preheader
	ld.d	$a0, $s2, 0
	ld.d	$a1, $a0, 152
	move	$a0, $s2
	jirl	$ra, $a1, 0
	blez	$a0, .LBB10_30
# %bb.13:                               # %.lr.ph1292
	move	$s3, $zero
	.p2align	4, , 16
.LBB10_14:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 0
	ld.d	$a4, $a0, 160
	addi.d	$a2, $sp, 80
	addi.d	$a3, $sp, 240
	move	$a0, $s2
	move	$a1, $s3
	jirl	$ra, $a4, 0
	fld.s	$fa0, $s0, 0
	fld.s	$fa1, $sp, 80
	fld.s	$fa2, $s0, 4
	fld.s	$fa3, $sp, 84
	fld.s	$fa4, $s0, 8
	fld.s	$fa5, $sp, 88
	fmul.s	$fa6, $fa2, $fa3
	fmadd.s	$fa6, $fa0, $fa1, $fa6
	fmadd.s	$fa6, $fa4, $fa5, $fa6
	fld.s	$fa7, $s0, 20
	fld.s	$ft0, $s0, 16
	fld.s	$ft1, $s0, 24
	fld.s	$ft2, $s0, 48
	fmul.s	$ft3, $fa3, $fa7
	fmadd.s	$ft3, $ft0, $fa1, $ft3
	fmadd.s	$ft3, $ft1, $fa5, $ft3
	fld.s	$ft4, $s0, 36
	fld.s	$ft5, $s0, 32
	fld.s	$ft6, $s0, 52
	fld.s	$ft7, $s0, 40
	fmul.s	$fa3, $fa3, $ft4
	fmadd.s	$fa1, $ft5, $fa1, $fa3
	fld.s	$fa3, $s0, 56
	fmadd.s	$fa1, $ft7, $fa5, $fa1
	fadd.s	$fa5, $fa6, $ft2
	fadd.s	$fa6, $ft6, $ft3
	fadd.s	$fa1, $fa3, $fa1
	movfr2gr.s	$a0, $fa5
	movfr2gr.s	$a1, $fa6
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa1
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $sp, 224
	fld.s	$fa1, $sp, 244
	fld.s	$fa5, $sp, 240
	fld.s	$fa6, $sp, 248
	st.d	$a1, $sp, 232
	fmul.s	$fa2, $fa2, $fa1
	fmadd.s	$fa0, $fa0, $fa5, $fa2
	fmadd.s	$fa0, $fa4, $fa6, $fa0
	fadd.s	$fa0, $ft2, $fa0
	fmul.s	$fa2, $fa7, $fa1
	fmadd.s	$fa2, $ft0, $fa5, $fa2
	fmadd.s	$fa2, $ft1, $fa6, $fa2
	fadd.s	$fa2, $ft6, $fa2
	fmul.s	$fa1, $ft4, $fa1
	fmadd.s	$fa1, $ft5, $fa5, $fa1
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa2
	bstrins.d	$a0, $a1, 63, 32
	ld.d	$a1, $s1, 0
	fmadd.s	$fa0, $ft7, $fa6, $fa1
	fadd.s	$fa0, $fa3, $fa0
	st.d	$a0, $sp, 208
	ld.d	$a1, $a1, 32
	movfr2gr.s	$a0, $fa0
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $sp, 216
	move	$a0, $s1
	jirl	$ra, $a1, 0
	ld.d	$a1, $a0, 0
	ld.d	$a4, $a1, 40
	addi.d	$a1, $sp, 224
	addi.d	$a2, $sp, 208
	move	$a3, $fp
	jirl	$ra, $a4, 0
	ld.d	$a0, $s2, 0
	ld.d	$a1, $a0, 152
	addi.w	$s3, $s3, 1
	move	$a0, $s2
	jirl	$ra, $a1, 0
	blt	$s3, $a0, .LBB10_14
	b	.LBB10_30
.LBB10_15:
	fld.s	$fa2, $s2, 76
	fld.s	$fa5, $s2, 60
	fmul.s	$fa0, $fa2, $fa5
	fld.s	$fa4, $s2, 64
	fld.s	$fa6, $s2, 68
	pcalau12i	$a0, %pc_hi20(.LCPI10_3)
	fld.s	$fa3, $a0, %pc_lo12(.LCPI10_3)
	fmul.s	$fa1, $fa2, $fa4
	fmul.s	$fa2, $fa2, $fa6
	fabs.s	$fa7, $fa6
	fcmp.cule.s	$fcc0, $fa7, $fa3
	pcalau12i	$a0, %pc_hi20(.LCPI10_4)
	bcnez	$fcc0, .LBB10_27
# %bb.16:
	fmul.s	$fa3, $fa6, $fa6
	fmadd.s	$fa7, $fa4, $fa4, $fa3
	frsqrt.s	$ft0, $fa7
	fneg.s	$fa3, $fa6
	fmul.s	$fa3, $ft0, $fa3
	fmul.s	$ft1, $fa4, $ft0
	fmul.s	$fa4, $fa7, $ft0
	fld.s	$fa7, $a0, %pc_lo12(.LCPI10_4)
	fneg.s	$fa6, $fa5
	fmul.s	$fa6, $ft1, $fa6
	fmul.s	$fa5, $fa5, $fa3
	fmul.s	$fs0, $ft1, $fa7
	movgr2fr.w	$fa7, $zero
	b	.LBB10_28
.LBB10_17:
	ld.w	$a0, $s2, 108
	blez	$a0, .LBB10_30
# %bb.18:                               # %.lr.ph
	addi.d	$s3, $a0, 1
	slli.d	$a1, $a0, 2
	addi.d	$s4, $a1, -4
	slli.d	$s5, $a0, 4
	movgr2fr.w	$fs0, $zero
	ori	$s6, $zero, 1
	.p2align	4, , 16
.LBB10_19:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 120
	add.d	$a0, $a0, $s5
	fld.s	$fa1, $a0, -16
	fld.s	$fa3, $a0, -12
	fld.s	$fa2, $a0, -8
	ld.d	$a0, $s2, 152
	fld.s	$fa4, $s0, 4
	fld.s	$fa5, $s0, 0
	fld.s	$fa6, $s0, 8
	fldx.s	$fa0, $a0, $s4
	fmul.s	$fa7, $fa4, $fs0
	fadd.s	$ft0, $fa5, $fa7
	fmadd.s	$ft0, $fa6, $fs0, $ft0
	fmadd.s	$ft1, $fa5, $fs0, $fa4
	fmadd.s	$ft1, $fa6, $fs0, $ft1
	fmadd.s	$fa7, $fa5, $fs0, $fa7
	fld.s	$ft2, $s0, 20
	fld.s	$ft3, $s0, 16
	fld.s	$ft4, $s0, 24
	fadd.s	$fa7, $fa6, $fa7
	fmul.s	$ft5, $ft2, $fs0
	fadd.s	$ft6, $ft3, $ft5
	fmadd.s	$ft6, $ft4, $fs0, $ft6
	fmadd.s	$ft7, $ft3, $fs0, $ft2
	fmadd.s	$ft7, $ft4, $fs0, $ft7
	fmadd.s	$ft5, $ft3, $fs0, $ft5
	fld.s	$ft8, $s0, 36
	fld.s	$ft9, $s0, 32
	fld.s	$ft10, $s0, 40
	fadd.s	$ft5, $ft4, $ft5
	fmul.s	$ft11, $ft8, $fs0
	fadd.s	$ft12, $ft9, $ft11
	fmadd.s	$ft12, $ft10, $fs0, $ft12
	fmadd.s	$ft13, $ft9, $fs0, $ft8
	fmadd.s	$ft13, $ft10, $fs0, $ft13
	fmul.s	$fa4, $fa3, $fa4
	fmadd.s	$fa4, $fa5, $fa1, $fa4
	fld.s	$fa5, $s0, 48
	fmadd.s	$ft11, $ft9, $fs0, $ft11
	fadd.s	$ft11, $ft10, $ft11
	fmadd.s	$fa4, $fa6, $fa2, $fa4
	fadd.s	$fa4, $fa4, $fa5
	fld.s	$fa5, $s0, 52
	fmul.s	$fa6, $fa3, $ft2
	fmadd.s	$fa6, $ft3, $fa1, $fa6
	fmadd.s	$fa6, $ft4, $fa2, $fa6
	fadd.s	$fa5, $fa6, $fa5
	fld.s	$fa6, $s0, 56
	fmul.s	$fa3, $fa3, $ft8
	fmadd.s	$fa1, $ft9, $fa1, $fa3
	fmadd.s	$fa1, $ft10, $fa2, $fa1
	fadd.s	$fa1, $fa1, $fa6
	movfr2gr.s	$a0, $fa4
	movfr2gr.s	$a1, $fa5
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa1
	bstrpick.d	$a1, $a1, 31, 0
	fst.s	$ft0, $sp, 80
	fst.s	$ft1, $sp, 84
	fst.s	$fa7, $sp, 88
	st.w	$zero, $sp, 92
	fst.s	$ft6, $sp, 96
	fst.s	$ft7, $sp, 100
	fst.s	$ft5, $sp, 104
	st.w	$zero, $sp, 108
	fst.s	$ft12, $sp, 112
	fst.s	$ft13, $sp, 116
	fst.s	$ft11, $sp, 120
	st.w	$zero, $sp, 124
	st.d	$a0, $sp, 128
	st.d	$a1, $sp, 136
	addi.d	$a1, $sp, 80
	move	$a0, $s1
	move	$a2, $fp
	pcaddu18i	$ra, %call36(_ZN23btDiscreteDynamicsWorld15debugDrawSphereEfRK11btTransformRK9btVector3)
	jirl	$ra, $ra, 0
	addi.d	$s3, $s3, -1
	addi.d	$s4, $s4, -4
	addi.d	$s5, $s5, -16
	bltu	$s6, $s3, .LBB10_19
	b	.LBB10_30
.LBB10_20:
	ld.w	$a0, $s2, 28
	blez	$a0, .LBB10_30
# %bb.21:                               # %.lr.ph1290
	addi.d	$s3, $a0, 1
	ori	$a1, $zero, 88
	mul.d	$a0, $a0, $a1
	addi.d	$s4, $a0, -40
	ori	$s5, $zero, 1
	.p2align	4, , 16
.LBB10_22:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 40
	add.d	$a1, $a0, $s4
	fld.s	$fa5, $a1, -48
	fld.s	$fa6, $a1, -44
	fld.s	$fa7, $a1, -40
	fld.s	$ft0, $a1, -32
	fld.s	$ft1, $a1, -28
	fld.s	$ft2, $a1, -24
	fld.s	$ft3, $a1, -16
	fld.s	$ft4, $a1, -12
	fld.s	$ft5, $a1, -8
	fldx.s	$fa0, $a0, $s4
	fld.s	$fa2, $a1, 4
	fld.s	$fa1, $a1, 8
	fld.s	$ft6, $s0, 4
	fld.s	$ft7, $s0, 0
	fld.s	$ft8, $s0, 8
	ld.d	$a2, $a1, 16
	fmul.s	$fa3, $ft0, $ft6
	fmadd.s	$fa3, $fa5, $ft7, $fa3
	fmadd.s	$fa3, $ft3, $ft8, $fa3
	fmul.s	$fa4, $ft1, $ft6
	fmadd.s	$fa4, $fa6, $ft7, $fa4
	fmadd.s	$fa4, $ft4, $ft8, $fa4
	fmul.s	$ft9, $ft2, $ft6
	fmadd.s	$ft9, $fa7, $ft7, $ft9
	fld.s	$ft10, $s0, 20
	fld.s	$ft11, $s0, 16
	fld.s	$ft12, $s0, 24
	fmadd.s	$ft9, $ft5, $ft8, $ft9
	fmul.s	$ft13, $ft0, $ft10
	fmadd.s	$ft13, $fa5, $ft11, $ft13
	fmadd.s	$ft13, $ft3, $ft12, $ft13
	fmul.s	$ft14, $ft1, $ft10
	fld.s	$ft15, $s0, 36
	fld.s	$fs0, $s0, 32
	fmadd.s	$ft14, $fa6, $ft11, $ft14
	fmadd.s	$ft14, $ft4, $ft12, $ft14
	fmul.s	$ft0, $ft0, $ft15
	fmadd.s	$fa5, $fa5, $fs0, $ft0
	fld.s	$ft0, $s0, 40
	fmul.s	$fs1, $ft2, $ft10
	fmadd.s	$fs1, $fa7, $ft11, $fs1
	fmadd.s	$fs1, $ft5, $ft12, $fs1
	fmadd.s	$fa5, $ft3, $ft0, $fa5
	fmul.s	$ft1, $ft1, $ft15
	fmadd.s	$fa6, $fa6, $fs0, $ft1
	fmadd.s	$fa6, $ft4, $ft0, $fa6
	fmul.s	$ft1, $ft2, $ft15
	fmadd.s	$fa7, $fa7, $fs0, $ft1
	fmadd.s	$fa7, $ft5, $ft0, $fa7
	fld.s	$ft1, $s0, 48
	fmul.s	$ft2, $fa2, $ft6
	fmadd.s	$ft2, $ft7, $fa0, $ft2
	fmadd.s	$ft2, $ft8, $fa1, $ft2
	fadd.s	$ft1, $ft2, $ft1
	fld.s	$ft2, $s0, 52
	fmul.s	$ft3, $fa2, $ft10
	fmadd.s	$ft3, $ft11, $fa0, $ft3
	fmadd.s	$ft3, $ft12, $fa1, $ft3
	fadd.s	$ft2, $ft3, $ft2
	fld.s	$ft3, $s0, 56
	fmul.s	$fa2, $fa2, $ft15
	fmadd.s	$fa0, $fs0, $fa0, $fa2
	fmadd.s	$fa0, $ft0, $fa1, $fa0
	fadd.s	$fa0, $fa0, $ft3
	movfr2gr.s	$a0, $ft1
	movfr2gr.s	$a1, $ft2
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa0
	bstrpick.d	$a1, $a1, 31, 0
	fst.s	$fa3, $sp, 80
	fst.s	$fa4, $sp, 84
	fst.s	$ft9, $sp, 88
	st.w	$zero, $sp, 92
	fst.s	$ft13, $sp, 96
	fst.s	$ft14, $sp, 100
	fst.s	$fs1, $sp, 104
	st.w	$zero, $sp, 108
	fst.s	$fa5, $sp, 112
	fst.s	$fa6, $sp, 116
	fst.s	$fa7, $sp, 120
	st.w	$zero, $sp, 124
	st.d	$a0, $sp, 128
	st.d	$a1, $sp, 136
	addi.d	$a1, $sp, 80
	move	$a0, $s1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(_ZN23btDiscreteDynamicsWorld15debugDrawObjectERK11btTransformPK16btCollisionShapeRK9btVector3)
	jirl	$ra, $ra, 0
	addi.d	$s3, $s3, -1
	addi.d	$s4, $s4, -88
	bltu	$s5, $s3, .LBB10_22
	b	.LBB10_30
.LBB10_23:
	ld.w	$s7, $s2, 64
	addi.w	$a1, $s7, 2
	lu12i.w	$a0, 349525
	ori	$s8, $a0, 1366
	mul.d	$a0, $a1, $s8
	srli.d	$a2, $a0, 63
	srli.d	$a0, $a0, 32
	add.d	$a2, $a0, $a2
	addi.d	$a0, $s2, 40
	slli.d	$a3, $s7, 2
	fldx.s	$fa0, $a0, $a3
	alsl.d	$a2, $a2, $a2, 1
	sub.w	$a1, $a1, $a2
	slli.d	$s2, $a1, 2
	fneg.s	$fa1, $fa0
	vrepli.b	$vr2, 0
	vst	$vr2, $sp, 240
	addi.d	$s3, $sp, 240
	fstx.s	$fa1, $a3, $s3
	vst	$vr2, $sp, 224
	vld	$vr1, $s0, 0
	addi.d	$s4, $sp, 224
	vld	$vr2, $s6, 0
	fstx.s	$fa0, $a3, $s4
	vst	$vr1, $sp, 80
	vld	$vr0, $s5, 0
	vst	$vr2, $sp, 96
	fld.s	$fa1, $s0, 4
	fld.s	$fa2, $sp, 244
	vst	$vr0, $sp, 112
	fld.s	$fa0, $s0, 0
	fld.s	$fa3, $sp, 240
	fmul.s	$fa1, $fa1, $fa2
	fld.s	$fa4, $s0, 8
	fld.s	$fa5, $sp, 248
	fmadd.s	$fa0, $fa0, $fa3, $fa1
	fld.s	$fa1, $s0, 48
	fld.s	$fa6, $s0, 20
	fmadd.s	$fa0, $fa4, $fa5, $fa0
	fld.s	$fa4, $s0, 16
	fadd.s	$fa0, $fa0, $fa1
	fmul.s	$fa1, $fa2, $fa6
	fld.s	$fa6, $s0, 24
	fmadd.s	$fa1, $fa4, $fa3, $fa1
	fld.s	$fa4, $s0, 36
	fld.s	$fa7, $s0, 32
	fmadd.s	$fa1, $fa6, $fa5, $fa1
	fld.s	$fa6, $s0, 52
	fmul.s	$fa2, $fa2, $fa4
	fmadd.s	$fa2, $fa7, $fa3, $fa2
	fld.s	$fa3, $s0, 40
	fld.s	$fa4, $s0, 56
	fldx.s	$fs0, $a0, $s2
	fadd.s	$fa1, $fa6, $fa1
	fmadd.s	$fa2, $fa3, $fa5, $fa2
	fadd.s	$fa2, $fa4, $fa2
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa1
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa2
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $sp, 128
	st.d	$a1, $sp, 136
	addi.d	$a1, $sp, 80
	move	$a0, $s1
	fmov.s	$fa0, $fs0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(_ZN23btDiscreteDynamicsWorld15debugDrawSphereEfRK11btTransformRK9btVector3)
	jirl	$ra, $ra, 0
	vld	$vr0, $s0, 0
	vld	$vr1, $s6, 0
	vst	$vr0, $sp, 80
	vld	$vr0, $s5, 0
	vst	$vr1, $sp, 96
	fld.s	$fa1, $s0, 4
	fld.s	$fa2, $sp, 228
	vst	$vr0, $sp, 112
	fld.s	$fa0, $s0, 0
	fld.s	$fa3, $sp, 224
	fmul.s	$fa1, $fa1, $fa2
	fld.s	$fa4, $s0, 8
	fld.s	$fa5, $sp, 232
	fmadd.s	$fa0, $fa0, $fa3, $fa1
	fld.s	$fa1, $s0, 48
	fld.s	$fa6, $s0, 20
	fmadd.s	$fa0, $fa4, $fa5, $fa0
	fld.s	$fa4, $s0, 16
	fadd.s	$fa0, $fa0, $fa1
	fmul.s	$fa1, $fa2, $fa6
	fld.s	$fa6, $s0, 36
	fmadd.s	$fa1, $fa4, $fa3, $fa1
	fld.s	$fa4, $s0, 32
	fld.s	$fa7, $s0, 24
	fmul.s	$fa2, $fa2, $fa6
	fld.s	$fa6, $s0, 52
	fmadd.s	$fa2, $fa4, $fa3, $fa2
	fld.s	$fa3, $s0, 40
	fld.s	$fa4, $s0, 56
	fmadd.s	$fa1, $fa7, $fa5, $fa1
	fadd.s	$fa1, $fa6, $fa1
	fmadd.s	$fa2, $fa3, $fa5, $fa2
	fadd.s	$fa2, $fa4, $fa2
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa1
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa2
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $sp, 128
	st.d	$a1, $sp, 136
	addi.d	$a1, $sp, 80
	move	$a0, $s1
	fmov.s	$fa0, $fs0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(_ZN23btDiscreteDynamicsWorld15debugDrawSphereEfRK11btTransformRK9btVector3)
	jirl	$ra, $ra, 0
	fld.s	$fs1, $s0, 48
	fld.s	$fs2, $s0, 52
	fld.s	$fs3, $s0, 56
	addi.w	$a0, $s7, 1
	mul.d	$a1, $a0, $s8
	srli.d	$a2, $a1, 63
	srli.d	$a1, $a1, 32
	add.d	$a1, $a1, $a2
	alsl.d	$a1, $a1, $a1, 1
	sub.w	$a0, $a0, $a1
	ld.d	$a1, $s1, 0
	slli.d	$s5, $a0, 2
	fstx.s	$fs0, $s5, $s3
	fstx.s	$fs0, $s5, $s4
	ld.d	$a1, $a1, 32
	move	$a0, $s1
	jirl	$ra, $a1, 0
	fld.s	$fa0, $s0, 0
	fld.s	$fa1, $s0, 4
	fld.s	$fa2, $sp, 244
	fld.s	$fa3, $sp, 240
	fmul.s	$fa4, $fa1, $fa2
	fmadd.s	$fa4, $fa0, $fa3, $fa4
	fld.s	$fa5, $s0, 20
	fld.s	$fa6, $s0, 8
	fld.s	$fa7, $s0, 16
	fld.s	$ft0, $sp, 248
	fmul.s	$ft1, $fa2, $fa5
	fld.s	$ft2, $s0, 36
	fmadd.s	$ft1, $fa7, $fa3, $ft1
	fld.s	$ft3, $s0, 32
	fld.s	$ft4, $s0, 24
	fmul.s	$fa2, $fa2, $ft2
	fld.s	$ft5, $s0, 40
	fmadd.s	$fa2, $ft3, $fa3, $fa2
	fmadd.s	$fa3, $fa6, $ft0, $fa4
	fmadd.s	$fa4, $ft4, $ft0, $ft1
	fmadd.s	$fa2, $ft5, $ft0, $fa2
	fadd.s	$fa3, $fs1, $fa3
	fadd.s	$fa4, $fs2, $fa4
	fadd.s	$fa2, $fs3, $fa2
	movfr2gr.s	$a1, $fa3
	movfr2gr.s	$a2, $fa4
	bstrins.d	$a1, $a2, 63, 32
	movfr2gr.s	$a2, $fa2
	bstrpick.d	$a2, $a2, 31, 0
	st.d	$a1, $sp, 80
	fld.s	$fa2, $sp, 228
	fld.s	$fa3, $sp, 224
	fld.s	$fa4, $sp, 232
	st.d	$a2, $sp, 88
	fmul.s	$fa1, $fa1, $fa2
	fmadd.s	$fa0, $fa0, $fa3, $fa1
	fmadd.s	$fa0, $fa6, $fa4, $fa0
	fmul.s	$fa1, $fa5, $fa2
	fmadd.s	$fa1, $fa7, $fa3, $fa1
	fmadd.s	$fa1, $ft4, $fa4, $fa1
	fmul.s	$fa2, $ft2, $fa2
	fmadd.s	$fa2, $ft3, $fa3, $fa2
	fmadd.s	$fa2, $ft5, $fa4, $fa2
	fadd.s	$fa0, $fs1, $fa0
	fadd.s	$fa1, $fs2, $fa1
	fadd.s	$fa2, $fs3, $fa2
	movfr2gr.s	$a1, $fa0
	movfr2gr.s	$a2, $fa1
	bstrins.d	$a1, $a2, 63, 32
	movfr2gr.s	$a2, $fa2
	bstrpick.d	$a2, $a2, 31, 0
	st.d	$a1, $sp, 208
	st.d	$a2, $sp, 216
	ld.d	$a1, $a0, 0
	ld.d	$a4, $a1, 40
	addi.d	$a1, $sp, 80
	addi.d	$a2, $sp, 208
	move	$a3, $fp
	jirl	$ra, $a4, 0
	ld.d	$a0, $s1, 0
	fneg.s	$fs4, $fs0
	fstx.s	$fs4, $s5, $s3
	fstx.s	$fs4, $s5, $s4
	ld.d	$a1, $a0, 32
	move	$a0, $s1
	jirl	$ra, $a1, 0
	fld.s	$fa0, $s0, 0
	fld.s	$fa1, $s0, 4
	fld.s	$fa2, $sp, 244
	fld.s	$fa3, $sp, 240
	fmul.s	$fa4, $fa1, $fa2
	fmadd.s	$fa4, $fa0, $fa3, $fa4
	fld.s	$fa5, $s0, 20
	fld.s	$fa6, $s0, 8
	fld.s	$fa7, $s0, 16
	fld.s	$ft0, $sp, 248
	fmul.s	$ft1, $fa2, $fa5
	fld.s	$ft2, $s0, 36
	fmadd.s	$ft1, $fa7, $fa3, $ft1
	fld.s	$ft3, $s0, 32
	fld.s	$ft4, $s0, 24
	fmul.s	$fa2, $fa2, $ft2
	fld.s	$ft5, $s0, 40
	fmadd.s	$fa2, $ft3, $fa3, $fa2
	fmadd.s	$fa3, $fa6, $ft0, $fa4
	fmadd.s	$fa4, $ft4, $ft0, $ft1
	fmadd.s	$fa2, $ft5, $ft0, $fa2
	fadd.s	$fa3, $fs1, $fa3
	fadd.s	$fa4, $fs2, $fa4
	fadd.s	$fa2, $fs3, $fa2
	movfr2gr.s	$a1, $fa3
	movfr2gr.s	$a2, $fa4
	bstrins.d	$a1, $a2, 63, 32
	movfr2gr.s	$a2, $fa2
	bstrpick.d	$a2, $a2, 31, 0
	st.d	$a1, $sp, 80
	fld.s	$fa2, $sp, 228
	fld.s	$fa3, $sp, 224
	fld.s	$fa4, $sp, 232
	st.d	$a2, $sp, 88
	fmul.s	$fa1, $fa1, $fa2
	fmadd.s	$fa0, $fa0, $fa3, $fa1
	fmadd.s	$fa0, $fa6, $fa4, $fa0
	fmul.s	$fa1, $fa5, $fa2
	fmadd.s	$fa1, $fa7, $fa3, $fa1
	fmadd.s	$fa1, $ft4, $fa4, $fa1
	fmul.s	$fa2, $ft2, $fa2
	fmadd.s	$fa2, $ft3, $fa3, $fa2
	fmadd.s	$fa2, $ft5, $fa4, $fa2
	fadd.s	$fa0, $fs1, $fa0
	fadd.s	$fa1, $fs2, $fa1
	fadd.s	$fa2, $fs3, $fa2
	movfr2gr.s	$a1, $fa0
	movfr2gr.s	$a2, $fa1
	bstrins.d	$a1, $a2, 63, 32
	movfr2gr.s	$a2, $fa2
	bstrpick.d	$a2, $a2, 31, 0
	st.d	$a1, $sp, 208
	st.d	$a2, $sp, 216
	ld.d	$a1, $a0, 0
	ld.d	$a4, $a1, 40
	addi.d	$a1, $sp, 80
	addi.d	$a2, $sp, 208
	move	$a3, $fp
	jirl	$ra, $a4, 0
	stx.w	$zero, $s5, $s3
	ld.d	$a0, $s1, 0
	stx.w	$zero, $s5, $s4
	fstx.s	$fs0, $s2, $s3
	fstx.s	$fs0, $s2, $s4
	ld.d	$a1, $a0, 32
	move	$a0, $s1
	jirl	$ra, $a1, 0
	fld.s	$fa0, $s0, 0
	fld.s	$fa1, $s0, 4
	fld.s	$fa2, $sp, 244
	fld.s	$fa3, $sp, 240
	fmul.s	$fa4, $fa1, $fa2
	fmadd.s	$fa4, $fa0, $fa3, $fa4
	fld.s	$fa5, $s0, 20
	fld.s	$fa6, $s0, 8
	fld.s	$fa7, $s0, 16
	fld.s	$ft0, $sp, 248
	fmul.s	$ft1, $fa2, $fa5
	fld.s	$ft2, $s0, 36
	fmadd.s	$ft1, $fa7, $fa3, $ft1
	fld.s	$ft3, $s0, 32
	fld.s	$ft4, $s0, 24
	fmul.s	$fa2, $fa2, $ft2
	fld.s	$ft5, $s0, 40
	fmadd.s	$fa2, $ft3, $fa3, $fa2
	fmadd.s	$fa3, $fa6, $ft0, $fa4
	fmadd.s	$fa4, $ft4, $ft0, $ft1
	fmadd.s	$fa2, $ft5, $ft0, $fa2
	fadd.s	$fa3, $fs1, $fa3
	fadd.s	$fa4, $fs2, $fa4
	fadd.s	$fa2, $fs3, $fa2
	movfr2gr.s	$a1, $fa3
	movfr2gr.s	$a2, $fa4
	bstrins.d	$a1, $a2, 63, 32
	movfr2gr.s	$a2, $fa2
	bstrpick.d	$a2, $a2, 31, 0
	st.d	$a1, $sp, 80
	fld.s	$fa2, $sp, 228
	fld.s	$fa3, $sp, 224
	fld.s	$fa4, $sp, 232
	st.d	$a2, $sp, 88
	fmul.s	$fa1, $fa1, $fa2
	fmadd.s	$fa0, $fa0, $fa3, $fa1
	fmadd.s	$fa0, $fa6, $fa4, $fa0
	fmul.s	$fa1, $fa5, $fa2
	fmadd.s	$fa1, $fa7, $fa3, $fa1
	fmadd.s	$fa1, $ft4, $fa4, $fa1
	fmul.s	$fa2, $ft2, $fa2
	fmadd.s	$fa2, $ft3, $fa3, $fa2
	fmadd.s	$fa2, $ft5, $fa4, $fa2
	fadd.s	$fa0, $fs1, $fa0
	fadd.s	$fa1, $fs2, $fa1
	fadd.s	$fa2, $fs3, $fa2
	movfr2gr.s	$a1, $fa0
	movfr2gr.s	$a2, $fa1
	bstrins.d	$a1, $a2, 63, 32
	movfr2gr.s	$a2, $fa2
	bstrpick.d	$a2, $a2, 31, 0
	st.d	$a1, $sp, 208
	st.d	$a2, $sp, 216
	ld.d	$a1, $a0, 0
	ld.d	$a4, $a1, 40
	addi.d	$a1, $sp, 80
	addi.d	$a2, $sp, 208
	move	$a3, $fp
	jirl	$ra, $a4, 0
	ld.d	$a0, $s1, 0
	fstx.s	$fs4, $s2, $s3
	fstx.s	$fs4, $s2, $s4
	ld.d	$a1, $a0, 32
	move	$a0, $s1
	jirl	$ra, $a1, 0
	fld.s	$fa0, $s0, 0
	fld.s	$fa1, $s0, 4
	fld.s	$fa2, $sp, 244
	fld.s	$fa3, $sp, 240
	fmul.s	$fa4, $fa1, $fa2
	fmadd.s	$fa4, $fa0, $fa3, $fa4
	fld.s	$fa5, $s0, 20
	fld.s	$fa6, $s0, 8
	fld.s	$fa7, $s0, 16
	fld.s	$ft0, $sp, 248
	fmul.s	$ft1, $fa2, $fa5
	fld.s	$ft2, $s0, 36
	fmadd.s	$ft1, $fa7, $fa3, $ft1
	fld.s	$ft3, $s0, 32
	fld.s	$ft4, $s0, 24
	fmul.s	$fa2, $fa2, $ft2
	fld.s	$ft5, $s0, 40
	fmadd.s	$fa2, $ft3, $fa3, $fa2
	fmadd.s	$fa3, $fa6, $ft0, $fa4
	fmadd.s	$fa4, $ft4, $ft0, $ft1
	fmadd.s	$fa2, $ft5, $ft0, $fa2
	fadd.s	$fa3, $fs1, $fa3
	fadd.s	$fa4, $fs2, $fa4
	fadd.s	$fa2, $fs3, $fa2
	movfr2gr.s	$a1, $fa3
	movfr2gr.s	$a2, $fa4
	bstrins.d	$a1, $a2, 63, 32
	movfr2gr.s	$a2, $fa2
	bstrpick.d	$a2, $a2, 31, 0
	st.d	$a1, $sp, 80
	fld.s	$fa2, $sp, 228
	fld.s	$fa3, $sp, 224
	fld.s	$fa4, $sp, 232
	st.d	$a2, $sp, 88
	fmul.s	$fa1, $fa1, $fa2
	fmadd.s	$fa0, $fa0, $fa3, $fa1
	fmadd.s	$fa0, $fa6, $fa4, $fa0
	fmul.s	$fa1, $fa5, $fa2
	fmadd.s	$fa1, $fa7, $fa3, $fa1
	fmadd.s	$fa1, $ft4, $fa4, $fa1
	fmul.s	$fa2, $ft2, $fa2
	fmadd.s	$fa2, $ft3, $fa3, $fa2
	fmadd.s	$fa2, $ft5, $fa4, $fa2
	fadd.s	$fa0, $fs1, $fa0
	fadd.s	$fa1, $fs2, $fa1
	fadd.s	$fa2, $fs3, $fa2
	movfr2gr.s	$a1, $fa0
	movfr2gr.s	$a2, $fa1
	bstrins.d	$a1, $a2, 63, 32
	movfr2gr.s	$a2, $fa2
	bstrpick.d	$a2, $a2, 31, 0
	st.d	$a1, $sp, 208
	st.d	$a2, $sp, 216
	ld.d	$a1, $a0, 0
	ld.d	$a4, $a1, 40
	addi.d	$a1, $sp, 80
	b	.LBB10_26
.LBB10_24:
	fld.s	$fa0, $s2, 68
	fld.s	$fa1, $s2, 72
	fld.s	$fs1, $s0, 48
	fld.s	$fs2, $s0, 52
	ld.w	$a0, $s2, 80
	fld.s	$fs0, $s0, 56
	vldi	$vr2, -1184
	fmul.s	$fa1, $fa1, $fa2
	slli.d	$a1, $a0, 2
	vrepli.b	$vr2, 0
	vst	$vr2, $sp, 80
	addi.d	$a2, $sp, 80
	fstx.s	$fa1, $a1, $a2
	addi.w	$a1, $a0, 1
	lu12i.w	$a2, 349525
	ori	$a2, $a2, 1366
	mul.d	$a3, $a1, $a2
	srli.d	$a4, $a3, 63
	srli.d	$a3, $a3, 32
	add.d	$a3, $a3, $a4
	alsl.d	$a3, $a3, $a3, 1
	sub.w	$a1, $a1, $a3
	slli.d	$a1, $a1, 2
	vst	$vr2, $sp, 240
	addi.d	$a3, $sp, 240
	fstx.s	$fa0, $a1, $a3
	addi.w	$a0, $a0, 2
	mul.d	$a1, $a0, $a2
	srli.d	$a2, $a1, 63
	srli.d	$a1, $a1, 32
	add.d	$a1, $a1, $a2
	alsl.d	$a1, $a1, $a1, 1
	sub.w	$a0, $a0, $a1
	slli.d	$a0, $a0, 2
	ld.d	$a1, $s1, 0
	vst	$vr2, $sp, 224
	addi.d	$a2, $sp, 224
	fstx.s	$fa0, $a0, $a2
	ld.d	$a1, $a1, 32
	move	$a0, $s1
	jirl	$ra, $a1, 0
	fld.s	$fa0, $s0, 4
	fld.s	$fs4, $sp, 84
	fld.s	$fa1, $s0, 0
	fld.s	$fs3, $sp, 80
	fmul.s	$fa2, $fa0, $fs4
	fld.s	$fa3, $s0, 8
	fld.s	$fs5, $sp, 88
	fld.s	$fa4, $s0, 20
	fld.s	$fa5, $s0, 16
	fmadd.s	$fa2, $fa1, $fs3, $fa2
	fmadd.s	$fa2, $fa3, $fs5, $fa2
	fmul.s	$fa6, $fs4, $fa4
	fmadd.s	$fa6, $fa5, $fs3, $fa6
	fld.s	$fa7, $s0, 24
	fld.s	$ft0, $s0, 36
	fld.s	$ft1, $s0, 32
	fld.s	$ft2, $s0, 40
	fmadd.s	$fa6, $fa7, $fs5, $fa6
	fmul.s	$ft3, $fs4, $ft0
	fmadd.s	$ft3, $ft1, $fs3, $ft3
	fmadd.s	$ft3, $ft2, $fs5, $ft3
	fadd.s	$fa2, $fs1, $fa2
	fadd.s	$fa6, $fs2, $fa6
	fst.s	$fs0, $sp, 16                   # 4-byte Folded Spill
	fadd.s	$ft3, $fs0, $ft3
	movfr2gr.s	$a1, $fa2
	movfr2gr.s	$a2, $fa6
	bstrins.d	$a1, $a2, 63, 32
	movfr2gr.s	$a2, $ft3
	bstrpick.d	$a2, $a2, 31, 0
	st.d	$a1, $sp, 208
	fld.s	$fa2, $sp, 240
	fst.s	$fa2, $sp, 28                   # 4-byte Folded Spill
	fld.s	$fa6, $sp, 244
	fst.s	$fa6, $sp, 24                   # 4-byte Folded Spill
	fld.s	$ft3, $sp, 248
	fst.s	$ft3, $sp, 20                   # 4-byte Folded Spill
	st.d	$a2, $sp, 216
	fsub.s	$fa2, $fa2, $fs3
	fsub.s	$fa6, $fa6, $fs4
	fsub.s	$ft3, $ft3, $fs5
	fmul.s	$fa0, $fa0, $fa6
	fmadd.s	$fa0, $fa1, $fa2, $fa0
	fmadd.s	$fa0, $fa3, $ft3, $fa0
	fmul.s	$fa1, $fa4, $fa6
	fmadd.s	$fa1, $fa5, $fa2, $fa1
	fmadd.s	$fa1, $fa7, $ft3, $fa1
	fmul.s	$fa3, $ft0, $fa6
	fmadd.s	$fa2, $ft1, $fa2, $fa3
	fmadd.s	$fa2, $ft2, $ft3, $fa2
	fadd.s	$fa0, $fs1, $fa0
	fadd.s	$fa1, $fs2, $fa1
	fadd.s	$fa2, $fs0, $fa2
	movfr2gr.s	$a1, $fa0
	movfr2gr.s	$a2, $fa1
	bstrins.d	$a1, $a2, 63, 32
	movfr2gr.s	$a2, $fa2
	bstrpick.d	$a2, $a2, 31, 0
	st.d	$a1, $sp, 192
	st.d	$a2, $sp, 200
	ld.d	$a1, $a0, 0
	ld.d	$a4, $a1, 40
	fneg.s	$fs6, $fs3
	fst.s	$fs6, $sp, 64                   # 4-byte Folded Spill
	fneg.s	$fs7, $fs4
	fst.s	$fs7, $sp, 48                   # 4-byte Folded Spill
	fneg.s	$fs0, $fs5
	fst.s	$fs0, $sp, 32                   # 4-byte Folded Spill
	addi.d	$a1, $sp, 208
	addi.d	$a2, $sp, 192
	move	$a3, $fp
	jirl	$ra, $a4, 0
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 32
	move	$a0, $s1
	jirl	$ra, $a1, 0
	fld.s	$fa0, $s0, 4
	fld.s	$fa1, $s0, 0
	fmul.s	$fa2, $fs4, $fa0
	fld.s	$fa3, $s0, 8
	fld.s	$fa4, $s0, 20
	fld.s	$fa5, $s0, 16
	fmadd.s	$fa2, $fa1, $fs3, $fa2
	fmadd.s	$fa2, $fa3, $fs5, $fa2
	fmul.s	$fa6, $fs4, $fa4
	fmadd.s	$fa6, $fa5, $fs3, $fa6
	fld.s	$fa7, $s0, 24
	fld.s	$ft0, $s0, 36
	fld.s	$ft1, $s0, 32
	fld.s	$ft2, $s0, 40
	fmadd.s	$fa6, $fa7, $fs5, $fa6
	fmul.s	$ft3, $fs4, $ft0
	fmadd.s	$ft3, $ft1, $fs3, $ft3
	fmadd.s	$ft3, $ft2, $fs5, $ft3
	fadd.s	$fa2, $fs1, $fa2
	fadd.s	$fa6, $fs2, $fa6
	fld.s	$ft4, $sp, 16                   # 4-byte Folded Reload
	fadd.s	$ft3, $ft4, $ft3
	movfr2gr.s	$a1, $fa2
	movfr2gr.s	$a2, $fa6
	bstrins.d	$a1, $a2, 63, 32
	movfr2gr.s	$a2, $ft3
	bstrpick.d	$a2, $a2, 31, 0
	st.d	$a1, $sp, 208
	st.d	$a2, $sp, 216
	fld.s	$fa2, $sp, 28                   # 4-byte Folded Reload
	fsub.s	$fa2, $fs6, $fa2
	fld.s	$fa6, $sp, 24                   # 4-byte Folded Reload
	fsub.s	$fa6, $fs7, $fa6
	fld.s	$ft3, $sp, 20                   # 4-byte Folded Reload
	fsub.s	$ft3, $fs0, $ft3
	fmul.s	$fa0, $fa6, $fa0
	fmadd.s	$fa0, $fa1, $fa2, $fa0
	fmadd.s	$fa0, $fa3, $ft3, $fa0
	fmul.s	$fa1, $fa6, $fa4
	fmadd.s	$fa1, $fa5, $fa2, $fa1
	fmadd.s	$fa1, $fa7, $ft3, $fa1
	fmul.s	$fa3, $fa6, $ft0
	fmadd.s	$fa2, $ft1, $fa2, $fa3
	fmadd.s	$fa2, $ft2, $ft3, $fa2
	fadd.s	$fa0, $fs1, $fa0
	fadd.s	$fa1, $fs2, $fa1
	fadd.s	$fa2, $ft4, $fa2
	fmov.s	$fs6, $ft4
	movfr2gr.s	$a1, $fa0
	movfr2gr.s	$a2, $fa1
	bstrins.d	$a1, $a2, 63, 32
	movfr2gr.s	$a2, $fa2
	bstrpick.d	$a2, $a2, 31, 0
	st.d	$a1, $sp, 192
	st.d	$a2, $sp, 200
	ld.d	$a1, $a0, 0
	ld.d	$a4, $a1, 40
	addi.d	$a1, $sp, 208
	addi.d	$a2, $sp, 192
	move	$a3, $fp
	jirl	$ra, $a4, 0
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 32
	move	$a0, $s1
	jirl	$ra, $a1, 0
	fld.s	$fa0, $s0, 4
	fld.s	$fa1, $s0, 0
	fmul.s	$fa2, $fs4, $fa0
	fld.s	$fa3, $s0, 8
	fld.s	$fa4, $s0, 20
	fld.s	$fa5, $s0, 16
	fmadd.s	$fa2, $fa1, $fs3, $fa2
	fmadd.s	$fa2, $fa3, $fs5, $fa2
	fmul.s	$fa6, $fs4, $fa4
	fmadd.s	$fa6, $fa5, $fs3, $fa6
	fld.s	$fa7, $s0, 24
	fld.s	$ft0, $s0, 36
	fld.s	$ft1, $s0, 32
	fld.s	$ft2, $s0, 40
	fmadd.s	$fa6, $fa7, $fs5, $fa6
	fmul.s	$ft3, $fs4, $ft0
	fmadd.s	$ft3, $ft1, $fs3, $ft3
	fmadd.s	$ft3, $ft2, $fs5, $ft3
	fadd.s	$fa2, $fs1, $fa2
	fadd.s	$fa6, $fs2, $fa6
	fadd.s	$ft3, $fs6, $ft3
	movfr2gr.s	$a1, $fa2
	movfr2gr.s	$a2, $fa6
	bstrins.d	$a1, $a2, 63, 32
	movfr2gr.s	$a2, $ft3
	bstrpick.d	$a2, $a2, 31, 0
	st.d	$a1, $sp, 208
	fld.s	$fa2, $sp, 224
	fst.s	$fa2, $sp, 28                   # 4-byte Folded Spill
	fld.s	$fs0, $sp, 228
	fld.s	$fs7, $sp, 232
	st.d	$a2, $sp, 216
	fsub.s	$fa2, $fa2, $fs3
	fsub.s	$fa6, $fs0, $fs4
	fsub.s	$ft3, $fs7, $fs5
	fmul.s	$fa0, $fa0, $fa6
	fmadd.s	$fa0, $fa1, $fa2, $fa0
	fmadd.s	$fa0, $fa3, $ft3, $fa0
	fmul.s	$fa1, $fa4, $fa6
	fmadd.s	$fa1, $fa5, $fa2, $fa1
	fmadd.s	$fa1, $fa7, $ft3, $fa1
	fmul.s	$fa3, $ft0, $fa6
	fmadd.s	$fa2, $ft1, $fa2, $fa3
	fmadd.s	$fa2, $ft2, $ft3, $fa2
	fadd.s	$fa0, $fs1, $fa0
	fadd.s	$fa1, $fs2, $fa1
	fadd.s	$fa2, $fs6, $fa2
	movfr2gr.s	$a1, $fa0
	movfr2gr.s	$a2, $fa1
	bstrins.d	$a1, $a2, 63, 32
	movfr2gr.s	$a2, $fa2
	bstrpick.d	$a2, $a2, 31, 0
	st.d	$a1, $sp, 192
	st.d	$a2, $sp, 200
	ld.d	$a1, $a0, 0
	ld.d	$a4, $a1, 40
	addi.d	$a1, $sp, 208
	addi.d	$a2, $sp, 192
	move	$a3, $fp
	jirl	$ra, $a4, 0
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 32
	move	$a0, $s1
	jirl	$ra, $a1, 0
	fld.s	$fa0, $s0, 4
	fld.s	$fa1, $s0, 0
	fmul.s	$fa2, $fs4, $fa0
	fld.s	$fa3, $s0, 20
	fmadd.s	$fa2, $fa1, $fs3, $fa2
	fld.s	$fa4, $s0, 16
	fld.s	$fa5, $s0, 8
	fmul.s	$fa6, $fs4, $fa3
	fld.s	$fa7, $s0, 36
	fmadd.s	$fa6, $fa4, $fs3, $fa6
	fld.s	$ft0, $s0, 32
	fld.s	$ft1, $s0, 24
	fmul.s	$ft2, $fs4, $fa7
	fld.s	$ft3, $s0, 40
	fmadd.s	$ft2, $ft0, $fs3, $ft2
	fmadd.s	$fa2, $fa5, $fs5, $fa2
	fmadd.s	$fa6, $ft1, $fs5, $fa6
	fmadd.s	$ft2, $ft3, $fs5, $ft2
	fadd.s	$fa2, $fs1, $fa2
	fadd.s	$fa6, $fs2, $fa6
	fadd.s	$ft2, $fs6, $ft2
	movfr2gr.s	$a1, $fa2
	movfr2gr.s	$a2, $fa6
	bstrins.d	$a1, $a2, 63, 32
	movfr2gr.s	$a2, $ft2
	bstrpick.d	$a2, $a2, 31, 0
	st.d	$a1, $sp, 208
	st.d	$a2, $sp, 216
	fld.s	$fa2, $sp, 64                   # 4-byte Folded Reload
	fld.s	$fa6, $sp, 28                   # 4-byte Folded Reload
	fsub.s	$fa2, $fa2, $fa6
	fld.s	$fa6, $sp, 48                   # 4-byte Folded Reload
	fsub.s	$fa6, $fa6, $fs0
	fld.s	$ft2, $sp, 32                   # 4-byte Folded Reload
	fsub.s	$ft2, $ft2, $fs7
	fmul.s	$fa0, $fa6, $fa0
	fmadd.s	$fa0, $fa1, $fa2, $fa0
	fmadd.s	$fa0, $fa5, $ft2, $fa0
	fmul.s	$fa1, $fa6, $fa3
	fmadd.s	$fa1, $fa4, $fa2, $fa1
	fmadd.s	$fa1, $ft1, $ft2, $fa1
	fmul.s	$fa3, $fa6, $fa7
	fmadd.s	$fa2, $ft0, $fa2, $fa3
	fmadd.s	$fa2, $ft3, $ft2, $fa2
	fadd.s	$fa0, $fs1, $fa0
	fadd.s	$fa1, $fs2, $fa1
	fadd.s	$fa2, $fs6, $fa2
	movfr2gr.s	$a1, $fa0
	movfr2gr.s	$a2, $fa1
	bstrins.d	$a1, $a2, 63, 32
	movfr2gr.s	$a2, $fa2
	bstrpick.d	$a2, $a2, 31, 0
	st.d	$a1, $sp, 192
	st.d	$a2, $sp, 200
	ld.d	$a1, $a0, 0
	ld.d	$a4, $a1, 40
	addi.d	$a1, $sp, 208
	addi.d	$a2, $sp, 192
	b	.LBB10_29
.LBB10_25:
	ld.d	$a0, $s2, 0
	ld.d	$a1, $a0, 144
	ld.w	$s3, $s2, 64
	move	$a0, $s2
	jirl	$ra, $a1, 0
	fld.s	$fa1, $s2, 40
	vst	$vr1, $sp, 64                   # 16-byte Folded Spill
	ld.d	$a0, $s2, 0
	fld.s	$fs2, $s2, 44
	fld.s	$fa1, $s2, 48
	vst	$vr1, $sp, 48                   # 16-byte Folded Spill
	ld.w	$s4, $s2, 52
	ld.d	$a1, $a0, 88
	fmov.s	$fs0, $fa0
	move	$a0, $s2
	jirl	$ra, $a1, 0
	ld.d	$a0, $s2, 0
	ld.d	$a1, $a0, 88
                                        # kill: def $f0 killed $f0 def $vr0
	vst	$vr0, $sp, 32                   # 16-byte Folded Spill
	move	$a0, $s2
	jirl	$ra, $a1, 0
	ld.d	$a0, $s2, 0
	ld.d	$a1, $a0, 88
	fmov.s	$fs1, $fa0
	move	$a0, $s2
	jirl	$ra, $a1, 0
                                        # kill: def $f0 killed $f0 def $vr0
	fadd.s	$fa1, $fs2, $fs1
	vld	$vr2, $sp, 64                   # 16-byte Folded Reload
	vld	$vr3, $sp, 48                   # 16-byte Folded Reload
	vextrins.w	$vr2, $vr3, 16
	vld	$vr3, $sp, 32                   # 16-byte Folded Reload
	vextrins.w	$vr3, $vr0, 16
	vfadd.s	$vr0, $vr2, $vr3
	vinsgr2vr.w	$vr1, $s4, 1
	vshuf4i.w	$vr1, $vr1, 16
	vslli.d	$vr1, $vr1, 32
	vrepli.b	$vr2, 0
	vilvl.w	$vr0, $vr2, $vr0
	vor.v	$vr0, $vr1, $vr0
	vst	$vr0, $sp, 80
	slli.d	$a0, $s3, 2
	addi.d	$a1, $sp, 80
	fldx.s	$fa0, $a0, $a1
	fld.s	$fs2, $s0, 48
	fld.s	$fs3, $s0, 52
	fld.s	$fa1, $s0, 56
	fst.s	$fa1, $sp, 64                   # 4-byte Folded Spill
	vst	$vr2, $sp, 80
	fstx.s	$fa0, $a0, $a1
	addi.w	$a0, $s3, 1
	lu12i.w	$a1, 349525
	ori	$a1, $a1, 1366
	mul.d	$a1, $a0, $a1
	srli.d	$a2, $a1, 63
	srli.d	$a1, $a1, 32
	add.d	$a1, $a1, $a2
	alsl.d	$a1, $a1, $a1, 1
	sub.w	$a0, $a0, $a1
	slli.d	$a0, $a0, 2
	ld.d	$a1, $s1, 0
	vst	$vr2, $sp, 240
	addi.d	$a2, $sp, 240
	fstx.s	$fs0, $a0, $a2
	ld.d	$a1, $a1, 32
	move	$a0, $s1
	jirl	$ra, $a1, 0
	fld.s	$fs7, $sp, 80
	fld.s	$fs0, $sp, 240
	fld.s	$fs1, $sp, 84
	fld.s	$fs4, $sp, 244
	fld.s	$fs6, $sp, 88
	fld.s	$fs5, $sp, 248
	fadd.s	$fa0, $fs7, $fs0
	fld.s	$fa1, $s0, 4
	fadd.s	$fa2, $fs1, $fs4
	fadd.s	$fa3, $fs6, $fs5
	fld.s	$fa4, $s0, 0
	fmul.s	$fa5, $fa2, $fa1
	fld.s	$fa6, $s0, 8
	fld.s	$fa7, $s0, 20
	fld.s	$ft0, $s0, 16
	fmadd.s	$fa5, $fa4, $fa0, $fa5
	fmadd.s	$fa5, $fa6, $fa3, $fa5
	fmul.s	$ft1, $fa2, $fa7
	fmadd.s	$ft1, $ft0, $fa0, $ft1
	fld.s	$ft2, $s0, 24
	fld.s	$ft3, $s0, 36
	fld.s	$ft4, $s0, 32
	fld.s	$ft5, $s0, 40
	fmadd.s	$ft1, $ft2, $fa3, $ft1
	fmul.s	$fa2, $fa2, $ft3
	fmadd.s	$fa0, $ft4, $fa0, $fa2
	fmadd.s	$fa0, $ft5, $fa3, $fa0
	fadd.s	$fa2, $fs2, $fa5
	fadd.s	$fa3, $fs3, $ft1
	fld.s	$fa5, $sp, 64                   # 4-byte Folded Reload
	fadd.s	$fa0, $fa5, $fa0
	movfr2gr.s	$a1, $fa2
	movfr2gr.s	$a2, $fa3
	bstrins.d	$a1, $a2, 63, 32
	movfr2gr.s	$a2, $fa0
	bstrpick.d	$a2, $a2, 31, 0
	st.d	$a1, $sp, 224
	st.d	$a2, $sp, 232
	fsub.s	$fa0, $fs0, $fs7
	fsub.s	$fa2, $fs4, $fs1
	fsub.s	$fa3, $fs5, $fs6
	fmul.s	$fa1, $fa2, $fa1
	fmadd.s	$fa1, $fa4, $fa0, $fa1
	fmadd.s	$fa1, $fa6, $fa3, $fa1
	fmul.s	$fa4, $fa2, $fa7
	fmadd.s	$fa4, $ft0, $fa0, $fa4
	fmadd.s	$fa4, $ft2, $fa3, $fa4
	fmul.s	$fa2, $fa2, $ft3
	fmadd.s	$fa0, $ft4, $fa0, $fa2
	fmadd.s	$fa0, $ft5, $fa3, $fa0
	fadd.s	$fa1, $fs2, $fa1
	fadd.s	$fa2, $fs3, $fa4
	fadd.s	$fa0, $fa5, $fa0
	movfr2gr.s	$a1, $fa1
	movfr2gr.s	$a2, $fa2
	bstrins.d	$a1, $a2, 63, 32
	movfr2gr.s	$a2, $fa0
	bstrpick.d	$a2, $a2, 31, 0
	st.d	$a1, $sp, 208
	st.d	$a2, $sp, 216
	ld.d	$a1, $a0, 0
	ld.d	$a4, $a1, 40
	fneg.s	$fa0, $fs7
	fst.s	$fa0, $sp, 48                   # 4-byte Folded Spill
	fneg.s	$fa0, $fs1
	fst.s	$fa0, $sp, 32                   # 4-byte Folded Spill
	fneg.s	$fa0, $fs6
	fst.s	$fa0, $sp, 28                   # 4-byte Folded Spill
	addi.d	$a1, $sp, 224
	addi.d	$a2, $sp, 208
	move	$a3, $fp
	jirl	$ra, $a4, 0
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 32
	move	$a0, $s1
	jirl	$ra, $a1, 0
	fld.s	$fa0, $s0, 4
	fsub.s	$fa1, $fs7, $fs0
	fld.s	$fa2, $s0, 0
	fsub.s	$fa3, $fs1, $fs4
	fmul.s	$fa4, $fa3, $fa0
	fld.s	$fa5, $s0, 20
	fmadd.s	$fa4, $fa2, $fa1, $fa4
	fld.s	$fa6, $s0, 8
	fld.s	$fa7, $s0, 16
	fmul.s	$ft0, $fa3, $fa5
	fld.s	$ft1, $s0, 36
	fld.s	$ft2, $s0, 32
	fmadd.s	$ft0, $fa7, $fa1, $ft0
	fld.s	$ft3, $s0, 24
	fmul.s	$fa3, $fa3, $ft1
	fmadd.s	$fa1, $ft2, $fa1, $fa3
	fld.s	$fa3, $s0, 40
	fsub.s	$ft4, $fs6, $fs5
	fmadd.s	$fa4, $fa6, $ft4, $fa4
	fmadd.s	$ft0, $ft3, $ft4, $ft0
	fmadd.s	$fa1, $fa3, $ft4, $fa1
	fadd.s	$fa4, $fs2, $fa4
	fadd.s	$ft0, $fs3, $ft0
	fld.s	$ft4, $sp, 64                   # 4-byte Folded Reload
	fadd.s	$fa1, $ft4, $fa1
	movfr2gr.s	$a1, $fa4
	movfr2gr.s	$a2, $ft0
	bstrins.d	$a1, $a2, 63, 32
	movfr2gr.s	$a2, $fa1
	bstrpick.d	$a2, $a2, 31, 0
	st.d	$a1, $sp, 224
	st.d	$a2, $sp, 232
	fld.s	$fa1, $sp, 48                   # 4-byte Folded Reload
	fsub.s	$fa1, $fa1, $fs0
	fld.s	$fa4, $sp, 32                   # 4-byte Folded Reload
	fsub.s	$fa4, $fa4, $fs4
	fld.s	$ft0, $sp, 28                   # 4-byte Folded Reload
	fsub.s	$ft0, $ft0, $fs5
	fmul.s	$fa0, $fa4, $fa0
	fmadd.s	$fa0, $fa2, $fa1, $fa0
	fmadd.s	$fa0, $fa6, $ft0, $fa0
	fmul.s	$fa2, $fa4, $fa5
	fmadd.s	$fa2, $fa7, $fa1, $fa2
	fmadd.s	$fa2, $ft3, $ft0, $fa2
	fmul.s	$fa4, $fa4, $ft1
	fmadd.s	$fa1, $ft2, $fa1, $fa4
	fmadd.s	$fa1, $fa3, $ft0, $fa1
	fadd.s	$fa0, $fs2, $fa0
	fadd.s	$fa2, $fs3, $fa2
	fadd.s	$fa1, $ft4, $fa1
	movfr2gr.s	$a1, $fa0
	movfr2gr.s	$a2, $fa2
	bstrins.d	$a1, $a2, 63, 32
	movfr2gr.s	$a2, $fa1
	bstrpick.d	$a2, $a2, 31, 0
	st.d	$a1, $sp, 208
	st.d	$a2, $sp, 216
	ld.d	$a1, $a0, 0
	ld.d	$a4, $a1, 40
	addi.d	$a1, $sp, 224
.LBB10_26:                              # %.loopexit
	addi.d	$a2, $sp, 208
	b	.LBB10_29
.LBB10_27:
	fmul.s	$fa3, $fa4, $fa4
	fmadd.s	$fa7, $fa5, $fa5, $fa3
	frsqrt.s	$ft0, $fa7
	fneg.s	$fa3, $fa4
	fmul.s	$ft1, $ft0, $fa3
	fmul.s	$fa3, $fa5, $ft0
	fneg.s	$fa4, $fa6
	fld.s	$ft2, $a0, %pc_lo12(.LCPI10_4)
	fmul.s	$fa4, $fa3, $fa4
	fmul.s	$fa6, $fa6, $ft1
	fmul.s	$fa5, $fa7, $ft0
	fmul.s	$fa7, $ft1, $ft2
.LBB10_28:                              # %_Z13btPlaneSpace1RK9btVector3RS_S2_.exit
	fld.s	$ft0, $a0, %pc_lo12(.LCPI10_4)
	fmul.s	$fa3, $fa3, $ft0
	fadd.s	$fs2, $fa0, $fa7
	fadd.s	$fs3, $fa1, $fa3
	fadd.s	$fs4, $fa2, $fs0
	fsub.s	$fs6, $fa0, $fa7
	fsub.s	$fs1, $fa1, $fa3
	fsub.s	$fs7, $fa2, $fs0
	fmul.s	$fa3, $fa4, $ft0
	fmul.s	$fa4, $fa6, $ft0
	fmul.s	$fa5, $fa5, $ft0
	ld.d	$a0, $s1, 0
	fadd.s	$fs0, $fa0, $fa3
	fadd.s	$fs5, $fa1, $fa4
	fadd.s	$fa6, $fa2, $fa5
	fst.s	$fa6, $sp, 28                   # 4-byte Folded Spill
	ld.d	$a1, $a0, 32
	fsub.s	$fa0, $fa0, $fa3
	fst.s	$fa0, $sp, 64                   # 4-byte Folded Spill
	fsub.s	$fa0, $fa1, $fa4
	fst.s	$fa0, $sp, 32                   # 4-byte Folded Spill
	fsub.s	$fa0, $fa2, $fa5
	fst.s	$fa0, $sp, 48                   # 4-byte Folded Spill
	move	$a0, $s1
	jirl	$ra, $a1, 0
	fld.s	$fa0, $s0, 4
	fld.s	$fa1, $s0, 0
	fld.s	$fa2, $s0, 8
	fmul.s	$fa3, $fs3, $fa0
	fmadd.s	$fa3, $fa1, $fs2, $fa3
	fmadd.s	$fa3, $fa2, $fs4, $fa3
	fld.s	$fa4, $s0, 20
	fld.s	$fa5, $s0, 16
	fld.s	$fa6, $s0, 24
	fld.s	$fa7, $s0, 48
	fmul.s	$ft0, $fs3, $fa4
	fmadd.s	$ft0, $fa5, $fs2, $ft0
	fmadd.s	$ft0, $fa6, $fs4, $ft0
	fld.s	$ft1, $s0, 36
	fld.s	$ft2, $s0, 32
	fld.s	$ft3, $s0, 52
	fld.s	$ft4, $s0, 40
	fmul.s	$ft5, $fs3, $ft1
	fmadd.s	$ft5, $ft2, $fs2, $ft5
	fld.s	$ft6, $s0, 56
	fmadd.s	$ft5, $ft4, $fs4, $ft5
	fadd.s	$fa3, $fa7, $fa3
	fadd.s	$ft0, $ft3, $ft0
	fadd.s	$ft5, $ft6, $ft5
	movfr2gr.s	$a1, $fa3
	movfr2gr.s	$a2, $ft0
	bstrins.d	$a1, $a2, 63, 32
	movfr2gr.s	$a2, $ft5
	bstrpick.d	$a2, $a2, 31, 0
	st.d	$a1, $sp, 80
	st.d	$a2, $sp, 88
	fmul.s	$fa0, $fs1, $fa0
	fmadd.s	$fa0, $fa1, $fs6, $fa0
	fmadd.s	$fa0, $fa2, $fs7, $fa0
	fadd.s	$fa0, $fa7, $fa0
	fmul.s	$fa1, $fs1, $fa4
	fmadd.s	$fa1, $fa5, $fs6, $fa1
	fmadd.s	$fa1, $fa6, $fs7, $fa1
	fadd.s	$fa1, $ft3, $fa1
	fmul.s	$fa2, $fs1, $ft1
	fmadd.s	$fa2, $ft2, $fs6, $fa2
	fmadd.s	$fa2, $ft4, $fs7, $fa2
	fadd.s	$fa2, $ft6, $fa2
	movfr2gr.s	$a1, $fa0
	movfr2gr.s	$a2, $fa1
	bstrins.d	$a1, $a2, 63, 32
	movfr2gr.s	$a2, $fa2
	bstrpick.d	$a2, $a2, 31, 0
	st.d	$a1, $sp, 240
	st.d	$a2, $sp, 248
	ld.d	$a1, $a0, 0
	ld.d	$a4, $a1, 40
	addi.d	$a1, $sp, 80
	addi.d	$a2, $sp, 240
	move	$a3, $fp
	jirl	$ra, $a4, 0
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 32
	move	$a0, $s1
	jirl	$ra, $a1, 0
	fld.s	$fa0, $s0, 4
	fld.s	$fa1, $s0, 0
	fld.s	$fa2, $s0, 8
	fmul.s	$fa3, $fs5, $fa0
	fmadd.s	$fa3, $fa1, $fs0, $fa3
	fld.s	$ft7, $sp, 28                   # 4-byte Folded Reload
	fmadd.s	$fa3, $fa2, $ft7, $fa3
	fld.s	$fa4, $s0, 20
	fld.s	$fa5, $s0, 16
	fld.s	$fa6, $s0, 24
	fld.s	$fa7, $s0, 48
	fmul.s	$ft0, $fs5, $fa4
	fmadd.s	$ft0, $fa5, $fs0, $ft0
	fmadd.s	$ft0, $fa6, $ft7, $ft0
	fld.s	$ft1, $s0, 36
	fld.s	$ft2, $s0, 32
	fld.s	$ft3, $s0, 52
	fld.s	$ft4, $s0, 40
	fmul.s	$ft5, $fs5, $ft1
	fmadd.s	$ft5, $ft2, $fs0, $ft5
	fld.s	$ft6, $s0, 56
	fmadd.s	$ft5, $ft4, $ft7, $ft5
	fadd.s	$fa3, $fa7, $fa3
	fadd.s	$ft0, $ft3, $ft0
	fadd.s	$ft5, $ft6, $ft5
	movfr2gr.s	$a1, $fa3
	movfr2gr.s	$a2, $ft0
	bstrins.d	$a1, $a2, 63, 32
	movfr2gr.s	$a2, $ft5
	bstrpick.d	$a2, $a2, 31, 0
	st.d	$a1, $sp, 80
	st.d	$a2, $sp, 88
	fld.s	$ft5, $sp, 32                   # 4-byte Folded Reload
	fmul.s	$fa0, $ft5, $fa0
	fld.s	$fa3, $sp, 64                   # 4-byte Folded Reload
	fmadd.s	$fa0, $fa1, $fa3, $fa0
	fld.s	$ft0, $sp, 48                   # 4-byte Folded Reload
	fmadd.s	$fa0, $fa2, $ft0, $fa0
	fadd.s	$fa0, $fa7, $fa0
	fmul.s	$fa1, $ft5, $fa4
	fmadd.s	$fa1, $fa5, $fa3, $fa1
	fmadd.s	$fa1, $fa6, $ft0, $fa1
	fadd.s	$fa1, $ft3, $fa1
	fmul.s	$fa2, $ft5, $ft1
	fmadd.s	$fa2, $ft2, $fa3, $fa2
	fmadd.s	$fa2, $ft4, $ft0, $fa2
	fadd.s	$fa2, $ft6, $fa2
	movfr2gr.s	$a1, $fa0
	movfr2gr.s	$a2, $fa1
	bstrins.d	$a1, $a2, 63, 32
	movfr2gr.s	$a2, $fa2
	bstrpick.d	$a2, $a2, 31, 0
	st.d	$a1, $sp, 240
	st.d	$a2, $sp, 248
	ld.d	$a1, $a0, 0
	ld.d	$a4, $a1, 40
	addi.d	$a1, $sp, 80
	addi.d	$a2, $sp, 240
.LBB10_29:                              # %.loopexit
	move	$a3, $fp
	jirl	$ra, $a4, 0
.LBB10_30:                              # %.loopexit
	fld.d	$fs7, $sp, 264                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 272                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 280                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 288                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 296                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 304                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 312                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 320                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 344                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 352                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 368                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 376                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 384                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 392                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 400                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 408                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 416
	ret
.LBB10_31:
.Ltmp138:                               # EH_LABEL
	move	$fp, $a0
.Ltmp139:                               # EH_LABEL
	addi.d	$a0, $sp, 80
	pcaddu18i	$ra, %call36(_ZN18btTriangleCallbackD2Ev)
	jirl	$ra, $ra, 0
.Ltmp140:                               # EH_LABEL
	b	.LBB10_37
.LBB10_32:
.Ltmp141:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB10_33:
.Ltmp132:                               # EH_LABEL
	move	$fp, $a0
.Ltmp133:                               # EH_LABEL
	addi.d	$a0, $sp, 80
	pcaddu18i	$ra, %call36(_ZN17DebugDrawcallbackD2Ev)
	jirl	$ra, $ra, 0
.Ltmp134:                               # EH_LABEL
	b	.LBB10_37
.LBB10_34:
.Ltmp126:                               # EH_LABEL
	move	$fp, $a0
.Ltmp127:                               # EH_LABEL
	addi.d	$a0, $sp, 80
	pcaddu18i	$ra, %call36(_ZN18btTriangleCallbackD2Ev)
	jirl	$ra, $ra, 0
.Ltmp128:                               # EH_LABEL
	b	.LBB10_37
.LBB10_35:
.Ltmp129:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB10_36:
.Ltmp121:                               # EH_LABEL
	move	$fp, $a0
.Ltmp122:                               # EH_LABEL
	addi.d	$a0, $sp, 80
	pcaddu18i	$ra, %call36(_ZN17DebugDrawcallbackD2Ev)
	jirl	$ra, $ra, 0
.Ltmp123:                               # EH_LABEL
.LBB10_37:                              # %common.resume
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB10_38:
.Ltmp135:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end10:
	.size	_ZN23btDiscreteDynamicsWorld15debugDrawObjectERK11btTransformPK16btCollisionShapeRK9btVector3, .Lfunc_end10-_ZN23btDiscreteDynamicsWorld15debugDrawObjectERK11btTransformPK16btCollisionShapeRK9btVector3
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI10_0:
	.word	.LBB10_2-.LJTI10_0
	.word	.LBB10_17-.LJTI10_0
	.word	.LBB10_23-.LJTI10_0
	.word	.LBB10_24-.LJTI10_0
	.word	.LBB10_3-.LJTI10_0
	.word	.LBB10_25-.LJTI10_0
	.word	.LBB10_3-.LJTI10_0
	.word	.LBB10_3-.LJTI10_0
	.word	.LBB10_3-.LJTI10_0
	.word	.LBB10_3-.LJTI10_0
	.word	.LBB10_3-.LJTI10_0
	.word	.LBB10_3-.LJTI10_0
	.word	.LBB10_3-.LJTI10_0
	.word	.LBB10_3-.LJTI10_0
	.word	.LBB10_3-.LJTI10_0
	.word	.LBB10_3-.LJTI10_0
	.word	.LBB10_3-.LJTI10_0
	.word	.LBB10_3-.LJTI10_0
	.word	.LBB10_3-.LJTI10_0
	.word	.LBB10_3-.LJTI10_0
	.word	.LBB10_15-.LJTI10_0
	.word	.LBB10_3-.LJTI10_0
	.word	.LBB10_3-.LJTI10_0
	.word	.LBB10_20-.LJTI10_0
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table10:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase3-.Lttbaseref3
.Lttbaseref3:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Lfunc_begin4-.Lfunc_begin4    # >> Call Site 1 <<
	.uleb128 .Ltmp119-.Lfunc_begin4         #   Call between .Lfunc_begin4 and .Ltmp119
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp119-.Lfunc_begin4         # >> Call Site 2 <<
	.uleb128 .Ltmp120-.Ltmp119              #   Call between .Ltmp119 and .Ltmp120
	.uleb128 .Ltmp121-.Lfunc_begin4         #     jumps to .Ltmp121
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp124-.Lfunc_begin4         # >> Call Site 3 <<
	.uleb128 .Ltmp125-.Ltmp124              #   Call between .Ltmp124 and .Ltmp125
	.uleb128 .Ltmp126-.Lfunc_begin4         #     jumps to .Ltmp126
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp125-.Lfunc_begin4         # >> Call Site 4 <<
	.uleb128 .Ltmp130-.Ltmp125              #   Call between .Ltmp125 and .Ltmp130
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp130-.Lfunc_begin4         # >> Call Site 5 <<
	.uleb128 .Ltmp131-.Ltmp130              #   Call between .Ltmp130 and .Ltmp131
	.uleb128 .Ltmp132-.Lfunc_begin4         #     jumps to .Ltmp132
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp136-.Lfunc_begin4         # >> Call Site 6 <<
	.uleb128 .Ltmp137-.Ltmp136              #   Call between .Ltmp136 and .Ltmp137
	.uleb128 .Ltmp138-.Lfunc_begin4         #     jumps to .Ltmp138
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp137-.Lfunc_begin4         # >> Call Site 7 <<
	.uleb128 .Ltmp139-.Ltmp137              #   Call between .Ltmp137 and .Ltmp139
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp139-.Lfunc_begin4         # >> Call Site 8 <<
	.uleb128 .Ltmp140-.Ltmp139              #   Call between .Ltmp139 and .Ltmp140
	.uleb128 .Ltmp141-.Lfunc_begin4         #     jumps to .Ltmp141
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp140-.Lfunc_begin4         # >> Call Site 9 <<
	.uleb128 .Ltmp133-.Ltmp140              #   Call between .Ltmp140 and .Ltmp133
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp133-.Lfunc_begin4         # >> Call Site 10 <<
	.uleb128 .Ltmp134-.Ltmp133              #   Call between .Ltmp133 and .Ltmp134
	.uleb128 .Ltmp135-.Lfunc_begin4         #     jumps to .Ltmp135
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp127-.Lfunc_begin4         # >> Call Site 11 <<
	.uleb128 .Ltmp128-.Ltmp127              #   Call between .Ltmp127 and .Ltmp128
	.uleb128 .Ltmp129-.Lfunc_begin4         #     jumps to .Ltmp129
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp128-.Lfunc_begin4         # >> Call Site 12 <<
	.uleb128 .Ltmp122-.Ltmp128              #   Call between .Ltmp128 and .Ltmp122
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp122-.Lfunc_begin4         # >> Call Site 13 <<
	.uleb128 .Ltmp123-.Ltmp122              #   Call between .Ltmp122 and .Ltmp123
	.uleb128 .Ltmp135-.Lfunc_begin4         #     jumps to .Ltmp135
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp123-.Lfunc_begin4         # >> Call Site 14 <<
	.uleb128 .Lfunc_end10-.Ltmp123          #   Call between .Ltmp123 and .Lfunc_end10
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end4:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase3:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN12btIDebugDraw8drawAabbERK9btVector3S2_S2_,"axG",@progbits,_ZN12btIDebugDraw8drawAabbERK9btVector3S2_S2_,comdat
	.weak	_ZN12btIDebugDraw8drawAabbERK9btVector3S2_S2_ # -- Begin function _ZN12btIDebugDraw8drawAabbERK9btVector3S2_S2_
	.p2align	5
	.type	_ZN12btIDebugDraw8drawAabbERK9btVector3S2_S2_,@function
_ZN12btIDebugDraw8drawAabbERK9btVector3S2_S2_: # @_ZN12btIDebugDraw8drawAabbERK9btVector3S2_S2_
	.cfi_startproc
# %bb.0:                                # %.peel.next
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
	fst.d	$fs7, $sp, 40                   # 8-byte Folded Spill
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
	.cfi_offset 63, -88
	move	$fp, $a3
	move	$s0, $a0
	fld.s	$fa0, $a2, 0
	fld.s	$fa1, $a2, 8
	fld.s	$fa2, $a1, 8
	fld.s	$fa3, $a1, 0
	fld.s	$fa4, $a2, 4
	fld.s	$fa5, $a1, 4
	fadd.s	$fa6, $fa1, $fa2
	vldi	$vr7, -1184
	fmul.s	$fs3, $fa6, $fa7
	fadd.s	$fa6, $fa4, $fa5
	fmul.s	$fs4, $fa6, $fa7
	fadd.s	$fa6, $fa0, $fa3
	fmul.s	$fa6, $fa6, $fa7
	fsub.s	$fa1, $fa1, $fa2
	fmul.s	$fs6, $fa1, $fa7
	fsub.s	$fa1, $fa4, $fa5
	fmul.s	$fs7, $fa1, $fa7
	fsub.s	$fa0, $fa0, $fa3
	fmul.s	$fa0, $fa0, $fa7
	st.w	$zero, $sp, 36
	fadd.s	$fs0, $fa6, $fa0
	fst.s	$fs0, $sp, 24
	fadd.s	$fs1, $fs4, $fs7
	fst.s	$fs1, $sp, 28
	fadd.s	$fs2, $fs3, $fs6
	ld.d	$a0, $a0, 0
	fst.s	$fs2, $sp, 32
	st.w	$zero, $sp, 20
	fsub.s	$fs5, $fa6, $fa0
	ld.d	$a4, $a0, 40
	fst.s	$fs5, $sp, 8
	fst.s	$fs1, $sp, 12
	fst.s	$fs2, $sp, 16
	addi.d	$a1, $sp, 24
	addi.d	$a2, $sp, 8
	move	$a0, $s0
	jirl	$ra, $a4, 0
	st.w	$zero, $sp, 36
	fst.s	$fs5, $sp, 24
	fst.s	$fs1, $sp, 28
	ld.d	$a0, $s0, 0
	fst.s	$fs2, $sp, 32
	st.w	$zero, $sp, 20
	fst.s	$fs5, $sp, 8
	ld.d	$a4, $a0, 40
	fsub.s	$fs4, $fs4, $fs7
	fst.s	$fs4, $sp, 12
	fst.s	$fs2, $sp, 16
	addi.d	$a1, $sp, 24
	addi.d	$a2, $sp, 8
	move	$a0, $s0
	move	$a3, $fp
	jirl	$ra, $a4, 0
	st.w	$zero, $sp, 36
	fst.s	$fs5, $sp, 24
	fst.s	$fs4, $sp, 28
	ld.d	$a0, $s0, 0
	fst.s	$fs2, $sp, 32
	st.w	$zero, $sp, 20
	fst.s	$fs5, $sp, 8
	ld.d	$a4, $a0, 40
	fst.s	$fs4, $sp, 12
	fsub.s	$fs3, $fs3, $fs6
	fst.s	$fs3, $sp, 16
	addi.d	$a1, $sp, 24
	addi.d	$a2, $sp, 8
	move	$a0, $s0
	move	$a3, $fp
	jirl	$ra, $a4, 0
	st.w	$zero, $sp, 36
	fst.s	$fs0, $sp, 24
	ld.d	$a0, $s0, 0
	fst.s	$fs4, $sp, 28
	fst.s	$fs3, $sp, 32
	st.w	$zero, $sp, 20
	ld.d	$a4, $a0, 40
	fst.s	$fs5, $sp, 8
	fst.s	$fs4, $sp, 12
	fst.s	$fs3, $sp, 16
	addi.d	$a1, $sp, 24
	addi.d	$a2, $sp, 8
	move	$a0, $s0
	move	$a3, $fp
	jirl	$ra, $a4, 0
	st.w	$zero, $sp, 36
	fst.s	$fs5, $sp, 24
	ld.d	$a0, $s0, 0
	fst.s	$fs4, $sp, 28
	fst.s	$fs3, $sp, 32
	st.w	$zero, $sp, 20
	ld.d	$a4, $a0, 40
	fst.s	$fs5, $sp, 8
	fst.s	$fs1, $sp, 12
	fst.s	$fs3, $sp, 16
	addi.d	$a1, $sp, 24
	addi.d	$a2, $sp, 8
	move	$a0, $s0
	move	$a3, $fp
	jirl	$ra, $a4, 0
	st.w	$zero, $sp, 36
	fst.s	$fs5, $sp, 24
	ld.d	$a0, $s0, 0
	fst.s	$fs1, $sp, 28
	fst.s	$fs3, $sp, 32
	st.w	$zero, $sp, 20
	ld.d	$a4, $a0, 40
	fst.s	$fs5, $sp, 8
	fst.s	$fs1, $sp, 12
	fst.s	$fs2, $sp, 16
	addi.d	$a1, $sp, 24
	addi.d	$a2, $sp, 8
	move	$a0, $s0
	move	$a3, $fp
	jirl	$ra, $a4, 0
	st.w	$zero, $sp, 36
	fst.s	$fs5, $sp, 24
	ld.d	$a0, $s0, 0
	fst.s	$fs1, $sp, 28
	fst.s	$fs3, $sp, 32
	st.w	$zero, $sp, 20
	ld.d	$a4, $a0, 40
	fst.s	$fs0, $sp, 8
	fst.s	$fs1, $sp, 12
	fst.s	$fs3, $sp, 16
	addi.d	$a1, $sp, 24
	addi.d	$a2, $sp, 8
	move	$a0, $s0
	move	$a3, $fp
	jirl	$ra, $a4, 0
	st.w	$zero, $sp, 36
	fst.s	$fs0, $sp, 24
	ld.d	$a0, $s0, 0
	fst.s	$fs1, $sp, 28
	fst.s	$fs3, $sp, 32
	st.w	$zero, $sp, 20
	ld.d	$a4, $a0, 40
	fst.s	$fs0, $sp, 8
	fst.s	$fs4, $sp, 12
	fst.s	$fs3, $sp, 16
	addi.d	$a1, $sp, 24
	addi.d	$a2, $sp, 8
	move	$a0, $s0
	move	$a3, $fp
	jirl	$ra, $a4, 0
	st.w	$zero, $sp, 36
	fst.s	$fs0, $sp, 24
	ld.d	$a0, $s0, 0
	fst.s	$fs4, $sp, 28
	fst.s	$fs3, $sp, 32
	st.w	$zero, $sp, 20
	ld.d	$a4, $a0, 40
	fst.s	$fs0, $sp, 8
	fst.s	$fs4, $sp, 12
	fst.s	$fs2, $sp, 16
	addi.d	$a1, $sp, 24
	addi.d	$a2, $sp, 8
	move	$a0, $s0
	move	$a3, $fp
	jirl	$ra, $a4, 0
	st.w	$zero, $sp, 36
	fst.s	$fs5, $sp, 24
	ld.d	$a0, $s0, 0
	fst.s	$fs4, $sp, 28
	fst.s	$fs2, $sp, 32
	st.w	$zero, $sp, 20
	ld.d	$a4, $a0, 40
	fst.s	$fs0, $sp, 8
	fst.s	$fs4, $sp, 12
	fst.s	$fs2, $sp, 16
	addi.d	$a1, $sp, 24
	addi.d	$a2, $sp, 8
	move	$a0, $s0
	move	$a3, $fp
	jirl	$ra, $a4, 0
	st.w	$zero, $sp, 36
	fst.s	$fs0, $sp, 24
	ld.d	$a0, $s0, 0
	fst.s	$fs4, $sp, 28
	fst.s	$fs2, $sp, 32
	st.w	$zero, $sp, 20
	ld.d	$a4, $a0, 40
	fst.s	$fs0, $sp, 8
	fst.s	$fs1, $sp, 12
	fst.s	$fs2, $sp, 16
	addi.d	$a1, $sp, 24
	addi.d	$a2, $sp, 8
	move	$a0, $s0
	move	$a3, $fp
	jirl	$ra, $a4, 0
	st.w	$zero, $sp, 36
	fst.s	$fs0, $sp, 24
	ld.d	$a0, $s0, 0
	fst.s	$fs1, $sp, 28
	fst.s	$fs2, $sp, 32
	st.w	$zero, $sp, 20
	ld.d	$a4, $a0, 40
	fst.s	$fs0, $sp, 8
	fst.s	$fs1, $sp, 12
	fst.s	$fs3, $sp, 16
	addi.d	$a1, $sp, 24
	addi.d	$a2, $sp, 8
	move	$a0, $s0
	move	$a3, $fp
	jirl	$ra, $a4, 0
	fld.d	$fs7, $sp, 40                   # 8-byte Folded Reload
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
.Lfunc_end11:
	.size	_ZN12btIDebugDraw8drawAabbERK9btVector3S2_S2_, .Lfunc_end11-_ZN12btIDebugDraw8drawAabbERK9btVector3S2_S2_
	.cfi_endproc
                                        # -- End function
	.text
	.globl	_ZN23btDiscreteDynamicsWorld11clearForcesEv # -- Begin function _ZN23btDiscreteDynamicsWorld11clearForcesEv
	.p2align	5
	.type	_ZN23btDiscreteDynamicsWorld11clearForcesEv,@function
_ZN23btDiscreteDynamicsWorld11clearForcesEv: # @_ZN23btDiscreteDynamicsWorld11clearForcesEv
# %bb.0:
	ld.w	$a1, $a0, 284
	blez	$a1, .LBB12_3
# %bb.1:                                # %.lr.ph
	move	$a1, $zero
	move	$a2, $zero
	vrepli.b	$vr0, 0
	.p2align	4, , 16
.LBB12_2:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a0, 296
	ldx.d	$a3, $a3, $a1
	vst	$vr0, $a3, 460
	vst	$vr0, $a3, 444
	ld.w	$a3, $a0, 284
	addi.d	$a2, $a2, 1
	addi.d	$a1, $a1, 8
	blt	$a2, $a3, .LBB12_2
.LBB12_3:                               # %._crit_edge
	ret
.Lfunc_end12:
	.size	_ZN23btDiscreteDynamicsWorld11clearForcesEv, .Lfunc_end12-_ZN23btDiscreteDynamicsWorld11clearForcesEv
                                        # -- End function
	.globl	_ZN23btDiscreteDynamicsWorld12applyGravityEv # -- Begin function _ZN23btDiscreteDynamicsWorld12applyGravityEv
	.p2align	5
	.type	_ZN23btDiscreteDynamicsWorld12applyGravityEv,@function
_ZN23btDiscreteDynamicsWorld12applyGravityEv: # @_ZN23btDiscreteDynamicsWorld12applyGravityEv
	.cfi_startproc
# %bb.0:
	ld.w	$a1, $a0, 284
	blez	$a1, .LBB13_7
# %bb.1:                                # %.lr.ph
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
	move	$fp, $a0
	move	$s0, $zero
	move	$s1, $zero
	ori	$s2, $zero, 2
	ori	$s3, $zero, 5
	b	.LBB13_3
	.p2align	4, , 16
.LBB13_2:                               #   in Loop: Header=BB13_3 Depth=1
	addi.d	$s1, $s1, 1
	addi.d	$s0, $s0, 8
	bge	$s1, $a1, .LBB13_6
.LBB13_3:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 296
	ldx.d	$a0, $a0, $s0
	ld.w	$a2, $a0, 228
	beq	$a2, $s2, .LBB13_2
# %bb.4:                                #   in Loop: Header=BB13_3 Depth=1
	beq	$a2, $s3, .LBB13_2
# %bb.5:                                #   in Loop: Header=BB13_3 Depth=1
	pcaddu18i	$ra, %call36(_ZN11btRigidBody12applyGravityEv)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 284
	b	.LBB13_2
.LBB13_6:
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
.LBB13_7:                               # %._crit_edge
	ret
.Lfunc_end13:
	.size	_ZN23btDiscreteDynamicsWorld12applyGravityEv, .Lfunc_end13-_ZN23btDiscreteDynamicsWorld12applyGravityEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZN23btDiscreteDynamicsWorld28synchronizeSingleMotionStateEP11btRigidBody # -- Begin function _ZN23btDiscreteDynamicsWorld28synchronizeSingleMotionStateEP11btRigidBody
	.p2align	5
	.type	_ZN23btDiscreteDynamicsWorld28synchronizeSingleMotionStateEP11btRigidBody,@function
_ZN23btDiscreteDynamicsWorld28synchronizeSingleMotionStateEP11btRigidBody: # @_ZN23btDiscreteDynamicsWorld28synchronizeSingleMotionStateEP11btRigidBody
	.cfi_startproc
# %bb.0:
	ld.d	$a2, $a1, 512
	beqz	$a2, .LBB14_2
# %bb.1:
	ld.bu	$a2, $a1, 216
	andi	$a2, $a2, 3
	beqz	$a2, .LBB14_3
.LBB14_2:
	ret
.LBB14_3:
	addi.d	$sp, $sp, -96
	.cfi_def_cfa_offset 96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	fld.s	$fa0, $a0, 328
	fld.s	$fa1, $a1, 260
	addi.d	$a0, $a1, 72
	addi.d	$a4, $a1, 136
	addi.d	$a2, $a1, 152
	fmul.s	$fa0, $fa0, $fa1
	addi.d	$a3, $sp, 16
	move	$fp, $a1
	move	$a1, $a4
	pcaddu18i	$ra, %call36(_ZN15btTransformUtil18integrateTransformERK11btTransformRK9btVector3S5_fRS0_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 512
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a1, 24
	addi.d	$a1, $sp, 16
	jirl	$ra, $a2, 0
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end14:
	.size	_ZN23btDiscreteDynamicsWorld28synchronizeSingleMotionStateEP11btRigidBody, .Lfunc_end14-_ZN23btDiscreteDynamicsWorld28synchronizeSingleMotionStateEP11btRigidBody
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZN15btTransformUtil18integrateTransformERK11btTransformRK9btVector3S5_fRS0_
.LCPI15_0:
	.word	0x3f490fdb                      # float 0.785398185
.LCPI15_1:
	.word	0x3a83126f                      # float 0.00100000005
.LCPI15_2:
	.word	0xbcaaaaab                      # float -0.020833334
	.section	.text._ZN15btTransformUtil18integrateTransformERK11btTransformRK9btVector3S5_fRS0_,"axG",@progbits,_ZN15btTransformUtil18integrateTransformERK11btTransformRK9btVector3S5_fRS0_,comdat
	.weak	_ZN15btTransformUtil18integrateTransformERK11btTransformRK9btVector3S5_fRS0_
	.p2align	5
	.type	_ZN15btTransformUtil18integrateTransformERK11btTransformRK9btVector3S5_fRS0_,@function
_ZN15btTransformUtil18integrateTransformERK11btTransformRK9btVector3S5_fRS0_: # @_ZN15btTransformUtil18integrateTransformERK11btTransformRK9btVector3S5_fRS0_
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -96
	.cfi_def_cfa_offset 96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 56                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 40                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 32                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 56, -32
	.cfi_offset 57, -40
	.cfi_offset 58, -48
	.cfi_offset 59, -56
	.cfi_offset 60, -64
	fld.s	$fa1, $a1, 0
	fld.s	$fa2, $a1, 4
	move	$fp, $a3
	fmov.s	$fs0, $fa0
	move	$s0, $a0
	fmul.s	$fa0, $fa0, $fa1
	fmul.s	$fa1, $fs0, $fa2
	fld.s	$fa2, $a1, 8
	fld.s	$fa3, $a0, 48
	fld.s	$fa4, $a0, 52
	fld.s	$fa5, $a0, 56
	fmul.s	$fa2, $fs0, $fa2
	fadd.s	$fa0, $fa0, $fa3
	fadd.s	$fa1, $fa1, $fa4
	fadd.s	$fa2, $fa2, $fa5
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa1
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa2
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $a3, 48
	st.d	$a1, $a3, 56
	fld.s	$fs2, $a2, 4
	fld.s	$fs1, $a2, 0
	fld.s	$fs3, $a2, 8
	fmul.s	$fa0, $fs2, $fs2
	fmadd.s	$fa0, $fs1, $fs1, $fa0
	fmadd.s	$fa0, $fs3, $fs3, $fa0
	fsqrt.s	$fa0, $fa0
	pcalau12i	$a0, %pc_hi20(.LCPI15_0)
	fld.s	$fa1, $a0, %pc_lo12(.LCPI15_0)
	fmul.s	$fa2, $fs0, $fa0
	pcalau12i	$a0, %pc_hi20(.LCPI15_1)
	fld.s	$fa3, $a0, %pc_lo12(.LCPI15_1)
	fcmp.clt.s	$fcc0, $fa1, $fa2
	fdiv.s	$fa1, $fa1, $fs0
	fsel	$fs4, $fa0, $fa1, $fcc0
	fcmp.cule.s	$fcc0, $fa3, $fs4
	bcnez	$fcc0, .LBB15_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.LCPI15_2)
	fld.s	$fa0, $a0, %pc_lo12(.LCPI15_2)
	fmul.s	$fa1, $fs0, $fs0
	fmul.s	$fa1, $fs0, $fa1
	fmul.s	$fa0, $fa1, $fa0
	fmul.s	$fa0, $fa0, $fs4
	fmul.s	$fa0, $fa0, $fs4
	vldi	$vr1, -1184
	fmadd.s	$fa0, $fs0, $fa1, $fa0
	b	.LBB15_3
.LBB15_2:
	vldi	$vr0, -1184
	fmul.s	$fa0, $fs4, $fa0
	fmul.s	$fa0, $fs0, $fa0
	pcaddu18i	$ra, %call36(sinf)
	jirl	$ra, $ra, 0
	fdiv.s	$fa0, $fa0, $fs4
.LBB15_3:
	fmul.s	$fs2, $fs2, $fa0
	fmul.s	$fs1, $fs1, $fa0
	fmul.s	$fs3, $fs3, $fa0
	fmul.s	$fa0, $fs0, $fs4
	vldi	$vr1, -1184
	fmul.s	$fa0, $fa0, $fa1
	pcaddu18i	$ra, %call36(cosf)
	jirl	$ra, $ra, 0
	fmov.s	$fs0, $fa0
	addi.d	$a1, $sp, 16
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNK11btMatrix3x311getRotationER12btQuaternion)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 16
	ld.d	$a1, $sp, 24
	movgr2fr.w	$fa0, $a0
	srli.d	$a0, $a0, 32
	movgr2fr.w	$fa1, $a0
	movgr2fr.w	$fa2, $a1
	srli.d	$a0, $a1, 32
	movgr2fr.w	$fa3, $a0
	fmul.s	$fa4, $fs1, $fa3
	fmadd.s	$fa4, $fs0, $fa0, $fa4
	fmadd.s	$fa4, $fs2, $fa2, $fa4
	fneg.s	$fa5, $fs3
	fmadd.s	$fa4, $fa5, $fa1, $fa4
	fmul.s	$fa6, $fs2, $fa3
	fmadd.s	$fa6, $fs0, $fa1, $fa6
	fmadd.s	$fa6, $fs3, $fa0, $fa6
	fneg.s	$fa7, $fs1
	fmadd.s	$fa6, $fa7, $fa2, $fa6
	fmul.s	$fa7, $fs3, $fa3
	fmadd.s	$fa7, $fs0, $fa2, $fa7
	fmadd.s	$fa7, $fs1, $fa1, $fa7
	fneg.s	$ft0, $fs2
	fmadd.s	$fa7, $ft0, $fa0, $fa7
	fneg.s	$fa0, $fa0
	fmul.s	$fa0, $fs1, $fa0
	fmadd.s	$fa0, $fs0, $fa3, $fa0
	fmadd.s	$fa0, $ft0, $fa1, $fa0
	fmadd.s	$fa0, $fa5, $fa2, $fa0
	fmul.s	$fa1, $fa6, $fa6
	fmadd.s	$fa1, $fa4, $fa4, $fa1
	fmadd.s	$fa1, $fa7, $fa7, $fa1
	fmadd.s	$fa1, $fa0, $fa0, $fa1
	frsqrt.s	$fa1, $fa1
	fmul.s	$fa2, $fa4, $fa1
	fmul.s	$fa3, $fa6, $fa1
	fmul.s	$fa4, $fa7, $fa1
	fmul.s	$fa0, $fa0, $fa1
	fmul.s	$fa1, $fa3, $fa3
	fmadd.s	$fa1, $fa2, $fa2, $fa1
	fmadd.s	$fa1, $fa4, $fa4, $fa1
	fmadd.s	$fa1, $fa0, $fa0, $fa1
	vldi	$vr5, -1280
	fdiv.s	$fa1, $fa5, $fa1
	fmul.s	$fa5, $fa2, $fa1
	fmul.s	$fa6, $fa3, $fa1
	fmul.s	$fa1, $fa4, $fa1
	fmul.s	$fa7, $fa0, $fa5
	fmul.s	$ft0, $fa0, $fa6
	fmul.s	$fa0, $fa0, $fa1
	fmul.s	$fa5, $fa2, $fa5
	fmul.s	$ft1, $fa2, $fa6
	fmul.s	$fa2, $fa2, $fa1
	fmul.s	$fa6, $fa3, $fa6
	fmul.s	$fa3, $fa3, $fa1
	fmul.s	$fa1, $fa4, $fa1
	fadd.s	$fa4, $fa6, $fa1
	vldi	$vr10, -1168
	fsub.s	$fa4, $ft2, $fa4
	fsub.s	$ft3, $ft1, $fa0
	fadd.s	$ft4, $fa2, $ft0
	fadd.s	$fa0, $ft1, $fa0
	fadd.s	$fa1, $fa5, $fa1
	fsub.s	$fa1, $ft2, $fa1
	fsub.s	$ft1, $fa3, $fa7
	fsub.s	$fa2, $fa2, $ft0
	fadd.s	$fa3, $fa3, $fa7
	fadd.s	$fa5, $fa5, $fa6
	fsub.s	$fa5, $ft2, $fa5
	fst.s	$fa4, $fp, 0
	fst.s	$ft3, $fp, 4
	fst.s	$ft4, $fp, 8
	st.w	$zero, $fp, 12
	fst.s	$fa0, $fp, 16
	fst.s	$fa1, $fp, 20
	fst.s	$ft1, $fp, 24
	st.w	$zero, $fp, 28
	fst.s	$fa2, $fp, 32
	fst.s	$fa3, $fp, 36
	fst.s	$fa5, $fp, 40
	st.w	$zero, $fp, 44
	fld.d	$fs4, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 64                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end15:
	.size	_ZN15btTransformUtil18integrateTransformERK11btTransformRK9btVector3S5_fRS0_, .Lfunc_end15-_ZN15btTransformUtil18integrateTransformERK11btTransformRK9btVector3S5_fRS0_
	.cfi_endproc
                                        # -- End function
	.text
	.globl	_ZN23btDiscreteDynamicsWorld23synchronizeMotionStatesEv # -- Begin function _ZN23btDiscreteDynamicsWorld23synchronizeMotionStatesEv
	.p2align	5
	.type	_ZN23btDiscreteDynamicsWorld23synchronizeMotionStatesEv,@function
_ZN23btDiscreteDynamicsWorld23synchronizeMotionStatesEv: # @_ZN23btDiscreteDynamicsWorld23synchronizeMotionStatesEv
.Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception5
# %bb.0:
	addi.d	$sp, $sp, -128
	.cfi_def_cfa_offset 128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(_ZN15CProfileManager13Start_ProfileEPKc)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $fp, 334
	beqz	$a0, .LBB16_11
# %bb.1:                                # %.preheader
	ld.w	$a0, $fp, 12
	blez	$a0, .LBB16_21
# %bb.2:                                # %.lr.ph31
	move	$s0, $zero
	move	$s1, $zero
	ori	$s2, $zero, 2
	b	.LBB16_4
	.p2align	4, , 16
.LBB16_3:                               # %_ZN23btDiscreteDynamicsWorld28synchronizeSingleMotionStateEP11btRigidBody.exit
                                        #   in Loop: Header=BB16_4 Depth=1
	addi.d	$s1, $s1, 1
	addi.d	$s0, $s0, 8
	bge	$s1, $a0, .LBB16_21
.LBB16_4:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $fp, 24
	ldx.d	$s3, $a1, $s0
	beqz	$s3, .LBB16_3
# %bb.5:                                #   in Loop: Header=BB16_4 Depth=1
	ld.w	$a1, $s3, 256
	bne	$a1, $s2, .LBB16_3
# %bb.6:                                #   in Loop: Header=BB16_4 Depth=1
	ld.d	$a1, $s3, 512
	beqz	$a1, .LBB16_3
# %bb.7:                                #   in Loop: Header=BB16_4 Depth=1
	ld.bu	$a1, $s3, 216
	andi	$a1, $a1, 3
	bnez	$a1, .LBB16_3
# %bb.8:                                #   in Loop: Header=BB16_4 Depth=1
	fld.s	$fa0, $fp, 328
	fld.s	$fa1, $s3, 260
	addi.d	$a0, $s3, 72
	addi.d	$a1, $s3, 136
	addi.d	$a2, $s3, 152
	fmul.s	$fa0, $fa0, $fa1
.Ltmp147:                               # EH_LABEL
	addi.d	$a3, $sp, 8
	pcaddu18i	$ra, %call36(_ZN15btTransformUtil18integrateTransformERK11btTransformRK9btVector3S5_fRS0_)
	jirl	$ra, $ra, 0
.Ltmp148:                               # EH_LABEL
# %bb.9:                                # %.noexc
                                        #   in Loop: Header=BB16_4 Depth=1
	ld.d	$a0, $s3, 512
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a1, 24
.Ltmp149:                               # EH_LABEL
	addi.d	$a1, $sp, 8
	jirl	$ra, $a2, 0
.Ltmp150:                               # EH_LABEL
# %bb.10:                               # %.noexc18
                                        #   in Loop: Header=BB16_4 Depth=1
	ld.w	$a0, $fp, 12
	b	.LBB16_3
.LBB16_11:                              # %.preheader27
	ld.w	$a0, $fp, 284
	blez	$a0, .LBB16_21
# %bb.12:                               # %.lr.ph
	move	$s0, $zero
	move	$s1, $zero
	ori	$s2, $zero, 2
	ori	$s3, $zero, 5
	b	.LBB16_15
.LBB16_13:                              # %.noexc23
                                        #   in Loop: Header=BB16_15 Depth=1
	ld.w	$a0, $fp, 284
	.p2align	4, , 16
.LBB16_14:                              # %_ZN23btDiscreteDynamicsWorld28synchronizeSingleMotionStateEP11btRigidBody.exit24
                                        #   in Loop: Header=BB16_15 Depth=1
	addi.d	$s1, $s1, 1
	addi.d	$s0, $s0, 8
	bge	$s1, $a0, .LBB16_21
.LBB16_15:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $fp, 296
	ldx.d	$s4, $a1, $s0
	ld.w	$a1, $s4, 228
	beq	$a1, $s2, .LBB16_14
# %bb.16:                               #   in Loop: Header=BB16_15 Depth=1
	beq	$a1, $s3, .LBB16_14
# %bb.17:                               #   in Loop: Header=BB16_15 Depth=1
	ld.d	$a1, $s4, 512
	beqz	$a1, .LBB16_14
# %bb.18:                               #   in Loop: Header=BB16_15 Depth=1
	ld.bu	$a1, $s4, 216
	andi	$a1, $a1, 3
	bnez	$a1, .LBB16_14
# %bb.19:                               #   in Loop: Header=BB16_15 Depth=1
	fld.s	$fa0, $fp, 328
	fld.s	$fa1, $s4, 260
	addi.d	$a0, $s4, 72
	addi.d	$a1, $s4, 136
	addi.d	$a2, $s4, 152
	fmul.s	$fa0, $fa0, $fa1
.Ltmp142:                               # EH_LABEL
	addi.d	$a3, $sp, 8
	pcaddu18i	$ra, %call36(_ZN15btTransformUtil18integrateTransformERK11btTransformRK9btVector3S5_fRS0_)
	jirl	$ra, $ra, 0
.Ltmp143:                               # EH_LABEL
# %bb.20:                               # %.noexc22
                                        #   in Loop: Header=BB16_15 Depth=1
	ld.d	$a0, $s4, 512
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a1, 24
.Ltmp144:                               # EH_LABEL
	addi.d	$a1, $sp, 8
	jirl	$ra, $a2, 0
.Ltmp145:                               # EH_LABEL
	b	.LBB16_13
.LBB16_21:                              # %.loopexit
	pcaddu18i	$ra, %call36(_ZN15CProfileManager12Stop_ProfileEv)
	jirl	$ra, $ra, 0
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.LBB16_22:
.Ltmp146:                               # EH_LABEL
	b	.LBB16_24
.LBB16_23:
.Ltmp151:                               # EH_LABEL
.LBB16_24:
	move	$fp, $a0
.Ltmp152:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN15CProfileManager12Stop_ProfileEv)
	jirl	$ra, $ra, 0
.Ltmp153:                               # EH_LABEL
# %bb.25:                               # %_ZN14CProfileSampleD2Ev.exit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB16_26:
.Ltmp154:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end16:
	.size	_ZN23btDiscreteDynamicsWorld23synchronizeMotionStatesEv, .Lfunc_end16-_ZN23btDiscreteDynamicsWorld23synchronizeMotionStatesEv
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table16:
.Lexception5:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase4-.Lttbaseref4
.Lttbaseref4:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end5-.Lcst_begin5
.Lcst_begin5:
	.uleb128 .Lfunc_begin5-.Lfunc_begin5    # >> Call Site 1 <<
	.uleb128 .Ltmp147-.Lfunc_begin5         #   Call between .Lfunc_begin5 and .Ltmp147
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp147-.Lfunc_begin5         # >> Call Site 2 <<
	.uleb128 .Ltmp150-.Ltmp147              #   Call between .Ltmp147 and .Ltmp150
	.uleb128 .Ltmp151-.Lfunc_begin5         #     jumps to .Ltmp151
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp142-.Lfunc_begin5         # >> Call Site 3 <<
	.uleb128 .Ltmp145-.Ltmp142              #   Call between .Ltmp142 and .Ltmp145
	.uleb128 .Ltmp146-.Lfunc_begin5         #     jumps to .Ltmp146
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp145-.Lfunc_begin5         # >> Call Site 4 <<
	.uleb128 .Ltmp152-.Ltmp145              #   Call between .Ltmp145 and .Ltmp152
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp152-.Lfunc_begin5         # >> Call Site 5 <<
	.uleb128 .Ltmp153-.Ltmp152              #   Call between .Ltmp152 and .Ltmp153
	.uleb128 .Ltmp154-.Lfunc_begin5         #     jumps to .Ltmp154
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp153-.Lfunc_begin5         # >> Call Site 6 <<
	.uleb128 .Lfunc_end16-.Ltmp153          #   Call between .Ltmp153 and .Lfunc_end16
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end5:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase4:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZN23btDiscreteDynamicsWorld14stepSimulationEfif
.LCPI17_0:
	.word	0x34000000                      # float 1.1920929E-7
	.text
	.globl	_ZN23btDiscreteDynamicsWorld14stepSimulationEfif
	.p2align	5
	.type	_ZN23btDiscreteDynamicsWorld14stepSimulationEfif,@function
_ZN23btDiscreteDynamicsWorld14stepSimulationEfif: # @_ZN23btDiscreteDynamicsWorld14stepSimulationEfif
.Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception6
# %bb.0:
	addi.d	$sp, $sp, -48
	.cfi_def_cfa_offset 48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 8                    # 8-byte Folded Spill
	fst.d	$fs1, $sp, 0                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 56, -40
	.cfi_offset 57, -48
	fmov.s	$fs0, $fa1
	move	$s0, $a1
	fmov.s	$fs1, $fa0
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_ZN15CProfileManager5ResetEv)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(_ZN15CProfileManager13Start_ProfileEPKc)
	jirl	$ra, $ra, 0
	beqz	$s0, .LBB17_3
# %bb.1:
	fld.s	$fa0, $fp, 328
	fadd.s	$fa0, $fs1, $fa0
	fcmp.cult.s	$fcc0, $fa0, $fs0
	fst.s	$fa0, $fp, 328
	bceqz	$fcc0, .LBB17_4
# %bb.2:
	move	$s1, $zero
	b	.LBB17_5
.LBB17_3:
	pcalau12i	$a0, %pc_hi20(.LCPI17_0)
	fld.s	$fa0, $a0, %pc_lo12(.LCPI17_0)
	fabs.s	$fa1, $fs1
	fcmp.cule.s	$fcc0, $fa0, $fa1
	fst.s	$fs1, $fp, 328
	movcf2gr	$s1, $fcc0
	fmov.s	$fs0, $fs1
	move	$s0, $s1
	b	.LBB17_5
.LBB17_4:
	fdiv.s	$fa1, $fa0, $fs0
	ftintrz.w.s	$fa1, $fa1
	movfr2gr.s	$s1, $fa1
	movgr2fr.w	$fa1, $s1
	ffint.s.w	$fa1, $fa1
	fneg.s	$fa1, $fa1
	fmadd.s	$fa0, $fa1, $fs0, $fa0
	fst.s	$fa0, $fp, 328
.LBB17_5:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 32
.Ltmp155:                               # EH_LABEL
	move	$a0, $fp
	jirl	$ra, $a1, 0
.Ltmp156:                               # EH_LABEL
# %bb.6:
	beqz	$a0, .LBB17_10
# %bb.7:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 32
.Ltmp157:                               # EH_LABEL
	move	$a0, $fp
	jirl	$ra, $a1, 0
.Ltmp158:                               # EH_LABEL
# %bb.8:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 96
.Ltmp159:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp160:                               # EH_LABEL
# %bb.9:
	bstrpick.d	$a0, $a0, 4, 4
	pcalau12i	$a1, %got_pc_hi20(gDisableDeactivation)
	ld.d	$a1, $a1, %got_pc_lo12(gDisableDeactivation)
	st.b	$a0, $a1, 0
.LBB17_10:
	ld.d	$a0, $fp, 0
	addi.w	$s1, $s1, 0
	beqz	$s1, .LBB17_17
# %bb.11:
	ld.d	$a1, $a0, 280
.Ltmp162:                               # EH_LABEL
	move	$a0, $fp
	fmov.s	$fa0, $fs0
	jirl	$ra, $a1, 0
.Ltmp163:                               # EH_LABEL
# %bb.12:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 296
.Ltmp164:                               # EH_LABEL
	move	$a0, $fp
	jirl	$ra, $a1, 0
.Ltmp165:                               # EH_LABEL
# %bb.13:
	slt	$a0, $s1, $s0
	masknez	$a1, $s0, $a0
	maskeqz	$a0, $s1, $a0
	or	$s0, $a0, $a1
	blez	$s0, .LBB17_18
	.p2align	4, , 16
.LBB17_14:                              # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 272
.Ltmp166:                               # EH_LABEL
	move	$a0, $fp
	fmov.s	$fa0, $fs0
	jirl	$ra, $a1, 0
.Ltmp167:                               # EH_LABEL
# %bb.15:                               #   in Loop: Header=BB17_14 Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 128
.Ltmp168:                               # EH_LABEL
	move	$a0, $fp
	jirl	$ra, $a1, 0
.Ltmp169:                               # EH_LABEL
# %bb.16:                               #   in Loop: Header=BB17_14 Depth=1
	addi.w	$s0, $s0, -1
	bnez	$s0, .LBB17_14
	b	.LBB17_18
.LBB17_17:
	ld.d	$a1, $a0, 128
.Ltmp171:                               # EH_LABEL
	move	$a0, $fp
	jirl	$ra, $a1, 0
.Ltmp172:                               # EH_LABEL
.LBB17_18:                              # %.loopexit
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 200
.Ltmp173:                               # EH_LABEL
	move	$a0, $fp
	jirl	$ra, $a1, 0
.Ltmp174:                               # EH_LABEL
# %bb.19:
.Ltmp175:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN15CProfileManager23Increment_Frame_CounterEv)
	jirl	$ra, $ra, 0
.Ltmp176:                               # EH_LABEL
# %bb.20:
	pcaddu18i	$ra, %call36(_ZN15CProfileManager12Stop_ProfileEv)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	fld.d	$fs1, $sp, 0                    # 8-byte Folded Reload
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB17_21:
.Ltmp161:                               # EH_LABEL
	b	.LBB17_24
.LBB17_22:
.Ltmp177:                               # EH_LABEL
	b	.LBB17_24
.LBB17_23:
.Ltmp170:                               # EH_LABEL
.LBB17_24:
	move	$fp, $a0
.Ltmp178:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN15CProfileManager12Stop_ProfileEv)
	jirl	$ra, $ra, 0
.Ltmp179:                               # EH_LABEL
# %bb.25:                               # %_ZN14CProfileSampleD2Ev.exit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB17_26:
.Ltmp180:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end17:
	.size	_ZN23btDiscreteDynamicsWorld14stepSimulationEfif, .Lfunc_end17-_ZN23btDiscreteDynamicsWorld14stepSimulationEfif
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table17:
.Lexception6:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase5-.Lttbaseref5
.Lttbaseref5:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end6-.Lcst_begin6
.Lcst_begin6:
	.uleb128 .Lfunc_begin6-.Lfunc_begin6    # >> Call Site 1 <<
	.uleb128 .Ltmp155-.Lfunc_begin6         #   Call between .Lfunc_begin6 and .Ltmp155
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp155-.Lfunc_begin6         # >> Call Site 2 <<
	.uleb128 .Ltmp156-.Ltmp155              #   Call between .Ltmp155 and .Ltmp156
	.uleb128 .Ltmp177-.Lfunc_begin6         #     jumps to .Ltmp177
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp157-.Lfunc_begin6         # >> Call Site 3 <<
	.uleb128 .Ltmp160-.Ltmp157              #   Call between .Ltmp157 and .Ltmp160
	.uleb128 .Ltmp161-.Lfunc_begin6         #     jumps to .Ltmp161
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp162-.Lfunc_begin6         # >> Call Site 4 <<
	.uleb128 .Ltmp165-.Ltmp162              #   Call between .Ltmp162 and .Ltmp165
	.uleb128 .Ltmp177-.Lfunc_begin6         #     jumps to .Ltmp177
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp166-.Lfunc_begin6         # >> Call Site 5 <<
	.uleb128 .Ltmp169-.Ltmp166              #   Call between .Ltmp166 and .Ltmp169
	.uleb128 .Ltmp170-.Lfunc_begin6         #     jumps to .Ltmp170
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp171-.Lfunc_begin6         # >> Call Site 6 <<
	.uleb128 .Ltmp176-.Ltmp171              #   Call between .Ltmp171 and .Ltmp176
	.uleb128 .Ltmp177-.Lfunc_begin6         #     jumps to .Ltmp177
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp176-.Lfunc_begin6         # >> Call Site 7 <<
	.uleb128 .Ltmp178-.Ltmp176              #   Call between .Ltmp176 and .Ltmp178
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp178-.Lfunc_begin6         # >> Call Site 8 <<
	.uleb128 .Ltmp179-.Ltmp178              #   Call between .Ltmp178 and .Ltmp179
	.uleb128 .Ltmp180-.Lfunc_begin6         #     jumps to .Ltmp180
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp179-.Lfunc_begin6         # >> Call Site 9 <<
	.uleb128 .Lfunc_end17-.Ltmp179          #   Call between .Ltmp179 and .Lfunc_end17
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end6:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase5:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN23btDiscreteDynamicsWorld14startProfilingEf # -- Begin function _ZN23btDiscreteDynamicsWorld14startProfilingEf
	.p2align	5
	.type	_ZN23btDiscreteDynamicsWorld14startProfilingEf,@function
_ZN23btDiscreteDynamicsWorld14startProfilingEf: # @_ZN23btDiscreteDynamicsWorld14startProfilingEf
	.cfi_startproc
# %bb.0:
	pcaddu18i	$t8, %call36(_ZN15CProfileManager5ResetEv)
	jr	$t8
.Lfunc_end18:
	.size	_ZN23btDiscreteDynamicsWorld14startProfilingEf, .Lfunc_end18-_ZN23btDiscreteDynamicsWorld14startProfilingEf
	.cfi_endproc
                                        # -- End function
	.globl	_ZN23btDiscreteDynamicsWorld28internalSingleStepSimulationEf # -- Begin function _ZN23btDiscreteDynamicsWorld28internalSingleStepSimulationEf
	.p2align	5
	.type	_ZN23btDiscreteDynamicsWorld28internalSingleStepSimulationEf,@function
_ZN23btDiscreteDynamicsWorld28internalSingleStepSimulationEf: # @_ZN23btDiscreteDynamicsWorld28internalSingleStepSimulationEf
.Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception7
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
	fmov.s	$fs0, $fa0
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(_ZN15CProfileManager13Start_ProfileEPKc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 144
	beqz	$a1, .LBB19_2
# %bb.1:
.Ltmp181:                               # EH_LABEL
	move	$a0, $fp
	fmov.s	$fa0, $fs0
	jirl	$ra, $a1, 0
.Ltmp182:                               # EH_LABEL
.LBB19_2:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 240
.Ltmp183:                               # EH_LABEL
	move	$a0, $fp
	fmov.s	$fa0, $fs0
	jirl	$ra, $a1, 0
.Ltmp184:                               # EH_LABEL
# %bb.3:
	ld.d	$a0, $fp, 0
	fst.s	$fs0, $fp, 48
	st.w	$zero, $fp, 52
	ld.d	$a1, $a0, 32
.Ltmp186:                               # EH_LABEL
	move	$a0, $fp
	jirl	$ra, $a1, 0
.Ltmp187:                               # EH_LABEL
# %bb.4:
	ld.d	$a1, $fp, 0
	st.d	$a0, $fp, 72
	ld.d	$a1, $a1, 56
.Ltmp188:                               # EH_LABEL
	move	$a0, $fp
	jirl	$ra, $a1, 0
.Ltmp189:                               # EH_LABEL
# %bb.5:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 256
.Ltmp190:                               # EH_LABEL
	move	$a0, $fp
	jirl	$ra, $a1, 0
.Ltmp191:                               # EH_LABEL
# %bb.6:
	ld.d	$a0, $fp, 0
	fst.s	$fs0, $fp, 172
	ld.d	$a2, $a0, 264
	addi.d	$a1, $fp, 160
.Ltmp192:                               # EH_LABEL
	move	$a0, $fp
	jirl	$ra, $a2, 0
.Ltmp193:                               # EH_LABEL
# %bb.7:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 248
.Ltmp194:                               # EH_LABEL
	move	$a0, $fp
	fmov.s	$fa0, $fs0
	jirl	$ra, $a1, 0
.Ltmp195:                               # EH_LABEL
# %bb.8:
.Ltmp196:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(_ZN15CProfileManager13Start_ProfileEPKc)
	jirl	$ra, $ra, 0
.Ltmp197:                               # EH_LABEL
# %bb.9:                                # %.noexc
	ld.w	$a0, $fp, 340
	blez	$a0, .LBB19_13
# %bb.10:                               # %.lr.ph.i
	move	$s0, $zero
	move	$s1, $zero
	.p2align	4, , 16
.LBB19_11:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 352
	ldx.d	$a0, $a0, $s0
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a1, 16
.Ltmp198:                               # EH_LABEL
	move	$a1, $fp
	fmov.s	$fa0, $fs0
	jirl	$ra, $a2, 0
.Ltmp199:                               # EH_LABEL
# %bb.12:                               #   in Loop: Header=BB19_11 Depth=1
	ld.w	$a0, $fp, 340
	addi.d	$s1, $s1, 1
	addi.d	$s0, $s0, 8
	blt	$s1, $a0, .LBB19_11
.LBB19_13:                              # %._crit_edge.i
.Ltmp204:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN15CProfileManager12Stop_ProfileEv)
	jirl	$ra, $ra, 0
.Ltmp205:                               # EH_LABEL
# %bb.14:                               # %_ZN23btDiscreteDynamicsWorld13updateActionsEf.exit
.Ltmp206:                               # EH_LABEL
	move	$a0, $fp
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(_ZN23btDiscreteDynamicsWorld21updateActivationStateEf)
	jirl	$ra, $ra, 0
.Ltmp207:                               # EH_LABEL
# %bb.15:
	ld.d	$a1, $fp, 136
	beqz	$a1, .LBB19_17
# %bb.16:
.Ltmp208:                               # EH_LABEL
	move	$a0, $fp
	fmov.s	$fa0, $fs0
	jirl	$ra, $a1, 0
.Ltmp209:                               # EH_LABEL
.LBB19_17:
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(_ZN15CProfileManager12Stop_ProfileEv)
	jr	$t8
.LBB19_18:
.Ltmp185:                               # EH_LABEL
	b	.LBB19_20
.LBB19_19:
.Ltmp210:                               # EH_LABEL
.LBB19_20:                              # %.body
	move	$fp, $a0
	b	.LBB19_22
.LBB19_21:
.Ltmp200:                               # EH_LABEL
	move	$fp, $a0
.Ltmp201:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN15CProfileManager12Stop_ProfileEv)
	jirl	$ra, $ra, 0
.Ltmp202:                               # EH_LABEL
.LBB19_22:                              # %.body
.Ltmp211:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN15CProfileManager12Stop_ProfileEv)
	jirl	$ra, $ra, 0
.Ltmp212:                               # EH_LABEL
# %bb.23:                               # %_ZN14CProfileSampleD2Ev.exit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB19_24:
.Ltmp203:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB19_25:
.Ltmp213:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end19:
	.size	_ZN23btDiscreteDynamicsWorld28internalSingleStepSimulationEf, .Lfunc_end19-_ZN23btDiscreteDynamicsWorld28internalSingleStepSimulationEf
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table19:
.Lexception7:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase6-.Lttbaseref6
.Lttbaseref6:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end7-.Lcst_begin7
.Lcst_begin7:
	.uleb128 .Lfunc_begin7-.Lfunc_begin7    # >> Call Site 1 <<
	.uleb128 .Ltmp181-.Lfunc_begin7         #   Call between .Lfunc_begin7 and .Ltmp181
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp181-.Lfunc_begin7         # >> Call Site 2 <<
	.uleb128 .Ltmp184-.Ltmp181              #   Call between .Ltmp181 and .Ltmp184
	.uleb128 .Ltmp185-.Lfunc_begin7         #     jumps to .Ltmp185
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp186-.Lfunc_begin7         # >> Call Site 3 <<
	.uleb128 .Ltmp197-.Ltmp186              #   Call between .Ltmp186 and .Ltmp197
	.uleb128 .Ltmp210-.Lfunc_begin7         #     jumps to .Ltmp210
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp198-.Lfunc_begin7         # >> Call Site 4 <<
	.uleb128 .Ltmp199-.Ltmp198              #   Call between .Ltmp198 and .Ltmp199
	.uleb128 .Ltmp200-.Lfunc_begin7         #     jumps to .Ltmp200
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp204-.Lfunc_begin7         # >> Call Site 5 <<
	.uleb128 .Ltmp209-.Ltmp204              #   Call between .Ltmp204 and .Ltmp209
	.uleb128 .Ltmp210-.Lfunc_begin7         #     jumps to .Ltmp210
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp209-.Lfunc_begin7         # >> Call Site 6 <<
	.uleb128 .Ltmp201-.Ltmp209              #   Call between .Ltmp209 and .Ltmp201
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp201-.Lfunc_begin7         # >> Call Site 7 <<
	.uleb128 .Ltmp202-.Ltmp201              #   Call between .Ltmp201 and .Ltmp202
	.uleb128 .Ltmp203-.Lfunc_begin7         #     jumps to .Ltmp203
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp211-.Lfunc_begin7         # >> Call Site 8 <<
	.uleb128 .Ltmp212-.Ltmp211              #   Call between .Ltmp211 and .Ltmp212
	.uleb128 .Ltmp213-.Lfunc_begin7         #     jumps to .Ltmp213
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp212-.Lfunc_begin7         # >> Call Site 9 <<
	.uleb128 .Lfunc_end19-.Ltmp212          #   Call between .Ltmp212 and .Lfunc_end19
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end7:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase6:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN23btDiscreteDynamicsWorld13updateActionsEf # -- Begin function _ZN23btDiscreteDynamicsWorld13updateActionsEf
	.p2align	5
	.type	_ZN23btDiscreteDynamicsWorld13updateActionsEf,@function
_ZN23btDiscreteDynamicsWorld13updateActionsEf: # @_ZN23btDiscreteDynamicsWorld13updateActionsEf
.Lfunc_begin8:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception8
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
	fmov.s	$fs0, $fa0
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(_ZN15CProfileManager13Start_ProfileEPKc)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 340
	blez	$a0, .LBB20_4
# %bb.1:                                # %.lr.ph
	move	$s0, $zero
	move	$s1, $zero
	.p2align	4, , 16
.LBB20_2:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 352
	ldx.d	$a0, $a0, $s0
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a1, 16
.Ltmp214:                               # EH_LABEL
	move	$a1, $fp
	fmov.s	$fa0, $fs0
	jirl	$ra, $a2, 0
.Ltmp215:                               # EH_LABEL
# %bb.3:                                #   in Loop: Header=BB20_2 Depth=1
	ld.w	$a0, $fp, 340
	addi.d	$s1, $s1, 1
	addi.d	$s0, $s0, 8
	blt	$s1, $a0, .LBB20_2
.LBB20_4:                               # %._crit_edge
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(_ZN15CProfileManager12Stop_ProfileEv)
	jr	$t8
.LBB20_5:
.Ltmp216:                               # EH_LABEL
	move	$fp, $a0
.Ltmp217:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN15CProfileManager12Stop_ProfileEv)
	jirl	$ra, $ra, 0
.Ltmp218:                               # EH_LABEL
# %bb.6:                                # %_ZN14CProfileSampleD2Ev.exit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB20_7:
.Ltmp219:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end20:
	.size	_ZN23btDiscreteDynamicsWorld13updateActionsEf, .Lfunc_end20-_ZN23btDiscreteDynamicsWorld13updateActionsEf
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table20:
.Lexception8:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase7-.Lttbaseref7
.Lttbaseref7:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end8-.Lcst_begin8
.Lcst_begin8:
	.uleb128 .Lfunc_begin8-.Lfunc_begin8    # >> Call Site 1 <<
	.uleb128 .Ltmp214-.Lfunc_begin8         #   Call between .Lfunc_begin8 and .Ltmp214
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp214-.Lfunc_begin8         # >> Call Site 2 <<
	.uleb128 .Ltmp215-.Ltmp214              #   Call between .Ltmp214 and .Ltmp215
	.uleb128 .Ltmp216-.Lfunc_begin8         #     jumps to .Ltmp216
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp215-.Lfunc_begin8         # >> Call Site 3 <<
	.uleb128 .Ltmp217-.Ltmp215              #   Call between .Ltmp215 and .Ltmp217
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp217-.Lfunc_begin8         # >> Call Site 4 <<
	.uleb128 .Ltmp218-.Ltmp217              #   Call between .Ltmp217 and .Ltmp218
	.uleb128 .Ltmp219-.Lfunc_begin8         #     jumps to .Ltmp219
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp218-.Lfunc_begin8         # >> Call Site 5 <<
	.uleb128 .Lfunc_end20-.Ltmp218          #   Call between .Ltmp218 and .Lfunc_end20
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end8:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase7:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN23btDiscreteDynamicsWorld21updateActivationStateEf # -- Begin function _ZN23btDiscreteDynamicsWorld21updateActivationStateEf
	.p2align	5
	.type	_ZN23btDiscreteDynamicsWorld21updateActivationStateEf,@function
_ZN23btDiscreteDynamicsWorld21updateActivationStateEf: # @_ZN23btDiscreteDynamicsWorld21updateActivationStateEf
.Lfunc_begin9:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception9
# %bb.0:
	addi.d	$sp, $sp, -128
	.cfi_def_cfa_offset 128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	st.d	$s6, $sp, 56                    # 8-byte Folded Spill
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 40                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 32                   # 8-byte Folded Spill
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
	fmov.s	$fs0, $fa0
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	pcaddu18i	$ra, %call36(_ZN15CProfileManager13Start_ProfileEPKc)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 284
	blez	$a0, .LBB21_23
# %bb.1:                                # %.lr.ph
	ori	$s1, $zero, 2
	ori	$s2, $zero, 4
	pcalau12i	$a0, %got_pc_hi20(gDisableDeactivation)
	ld.d	$s3, $a0, %got_pc_lo12(gDisableDeactivation)
	pcalau12i	$a0, %got_pc_hi20(gDeactivationTime)
	ld.d	$s4, $a0, %got_pc_lo12(gDeactivationTime)
	move	$s5, $zero
	move	$s6, $zero
	movgr2fr.w	$fs1, $zero
	ori	$s7, $zero, 1
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	b	.LBB21_5
.LBB21_2:                               # %_ZN11btRigidBody13wantsSleepingEv.exit.thread32
                                        #   in Loop: Header=BB21_5 Depth=1
	ld.bu	$a1, $s0, 216
	andi	$a2, $a1, 3
	ori	$a1, $zero, 2
	beqz	$a2, .LBB21_18
.LBB21_3:                               # %.thread.invoke
                                        #   in Loop: Header=BB21_5 Depth=1
.Ltmp224:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17btCollisionObject18setActivationStateEi)
	jirl	$ra, $ra, 0
.Ltmp225:                               # EH_LABEL
.LBB21_4:                               # %.thread34
                                        #   in Loop: Header=BB21_5 Depth=1
	ld.w	$a0, $fp, 284
	addi.d	$s6, $s6, 1
	addi.d	$s5, $s5, 8
	bge	$s6, $a0, .LBB21_23
.LBB21_5:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 296
	ldx.d	$s0, $a0, $s5
	beqz	$s0, .LBB21_4
# %bb.6:                                #   in Loop: Header=BB21_5 Depth=1
	ld.w	$a0, $s0, 228
	beq	$a0, $s1, .LBB21_13
# %bb.7:                                #   in Loop: Header=BB21_5 Depth=1
	beq	$a0, $s2, .LBB21_13
# %bb.8:                                #   in Loop: Header=BB21_5 Depth=1
	fld.s	$fa0, $s0, 332
	fld.s	$fa1, $s0, 328
	fld.s	$fa2, $s0, 336
	fld.s	$fa3, $s0, 504
	fmul.s	$fa0, $fa0, $fa0
	fmadd.s	$fa0, $fa1, $fa1, $fa0
	fmadd.s	$fa0, $fa2, $fa2, $fa0
	fmul.s	$fa1, $fa3, $fa3
	fcmp.cule.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB21_11
# %bb.9:                                #   in Loop: Header=BB21_5 Depth=1
	fld.s	$fa0, $s0, 348
	fld.s	$fa1, $s0, 344
	fld.s	$fa2, $s0, 352
	fld.s	$fa3, $s0, 508
	fmul.s	$fa0, $fa0, $fa0
	fmadd.s	$fa0, $fa1, $fa1, $fa0
	fmadd.s	$fa0, $fa2, $fa2, $fa0
	fmul.s	$fa1, $fa3, $fa3
	fcmp.cule.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB21_11
# %bb.10:                               # %_ZN11btRigidBody18updateDeactivationEf.exit.thread
                                        #   in Loop: Header=BB21_5 Depth=1
	fld.s	$fa0, $s0, 232
	fadd.s	$fa0, $fs0, $fa0
	fst.s	$fa0, $s0, 232
	b	.LBB21_14
.LBB21_11:                              #   in Loop: Header=BB21_5 Depth=1
	st.w	$zero, $s0, 232
.Ltmp220:                               # EH_LABEL
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(_ZN17btCollisionObject18setActivationStateEi)
	jirl	$ra, $ra, 0
.Ltmp221:                               # EH_LABEL
# %bb.12:                               # %._ZN11btRigidBody18updateDeactivationEf.exitthread-pre-split_crit_edge
                                        #   in Loop: Header=BB21_5 Depth=1
	ld.w	$a0, $s0, 228
.LBB21_13:                              # %_ZN11btRigidBody18updateDeactivationEf.exit
                                        #   in Loop: Header=BB21_5 Depth=1
	beq	$a0, $s2, .LBB21_4
.LBB21_14:                              #   in Loop: Header=BB21_5 Depth=1
	ld.bu	$a2, $s3, 0
	ori	$a1, $zero, 1
	bnez	$a2, .LBB21_3
# %bb.15:                               #   in Loop: Header=BB21_5 Depth=1
	fld.s	$fa0, $s4, 0
	fcmp.ceq.s	$fcc0, $fa0, $fs1
	bcnez	$fcc0, .LBB21_3
# %bb.16:                               #   in Loop: Header=BB21_5 Depth=1
	bstrpick.d	$a2, $a0, 31, 1
	slli.w	$a2, $a2, 1
	beq	$a2, $s1, .LBB21_2
# %bb.17:                               # %_ZN11btRigidBody13wantsSleepingEv.exit
                                        #   in Loop: Header=BB21_5 Depth=1
	fld.s	$fa1, $s0, 232
	fcmp.cule.s	$fcc0, $fa1, $fa0
	bceqz	$fcc0, .LBB21_2
	b	.LBB21_3
.LBB21_18:                              #   in Loop: Header=BB21_5 Depth=1
	bne	$a0, $s7, .LBB21_21
# %bb.19:                               #   in Loop: Header=BB21_5 Depth=1
.Ltmp222:                               # EH_LABEL
	ori	$a1, $zero, 3
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17btCollisionObject18setActivationStateEi)
	jirl	$ra, $ra, 0
.Ltmp223:                               # EH_LABEL
# %bb.20:                               # %._crit_edge38
                                        #   in Loop: Header=BB21_5 Depth=1
	ld.w	$a0, $s0, 228
.LBB21_21:                              #   in Loop: Header=BB21_5 Depth=1
	bne	$a0, $s1, .LBB21_4
# %bb.22:                               #   in Loop: Header=BB21_5 Depth=1
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $s0, 344
	vst	$vr0, $s0, 328
	b	.LBB21_4
.LBB21_23:                              # %._crit_edge
	fld.d	$fs1, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 40                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
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
	pcaddu18i	$t8, %call36(_ZN15CProfileManager12Stop_ProfileEv)
	jr	$t8
.LBB21_24:
.Ltmp226:                               # EH_LABEL
	move	$fp, $a0
.Ltmp227:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN15CProfileManager12Stop_ProfileEv)
	jirl	$ra, $ra, 0
.Ltmp228:                               # EH_LABEL
# %bb.25:                               # %_ZN14CProfileSampleD2Ev.exit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB21_26:
.Ltmp229:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end21:
	.size	_ZN23btDiscreteDynamicsWorld21updateActivationStateEf, .Lfunc_end21-_ZN23btDiscreteDynamicsWorld21updateActivationStateEf
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table21:
.Lexception9:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase8-.Lttbaseref8
.Lttbaseref8:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end9-.Lcst_begin9
.Lcst_begin9:
	.uleb128 .Lfunc_begin9-.Lfunc_begin9    # >> Call Site 1 <<
	.uleb128 .Ltmp224-.Lfunc_begin9         #   Call between .Lfunc_begin9 and .Ltmp224
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp224-.Lfunc_begin9         # >> Call Site 2 <<
	.uleb128 .Ltmp223-.Ltmp224              #   Call between .Ltmp224 and .Ltmp223
	.uleb128 .Ltmp226-.Lfunc_begin9         #     jumps to .Ltmp226
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp223-.Lfunc_begin9         # >> Call Site 3 <<
	.uleb128 .Ltmp227-.Ltmp223              #   Call between .Ltmp223 and .Ltmp227
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp227-.Lfunc_begin9         # >> Call Site 4 <<
	.uleb128 .Ltmp228-.Ltmp227              #   Call between .Ltmp227 and .Ltmp228
	.uleb128 .Ltmp229-.Lfunc_begin9         #     jumps to .Ltmp229
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp228-.Lfunc_begin9         # >> Call Site 5 <<
	.uleb128 .Lfunc_end21-.Ltmp228          #   Call between .Ltmp228 and .Lfunc_end21
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end9:
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
	.globl	_ZN23btDiscreteDynamicsWorld10setGravityERK9btVector3 # -- Begin function _ZN23btDiscreteDynamicsWorld10setGravityERK9btVector3
	.p2align	5
	.type	_ZN23btDiscreteDynamicsWorld10setGravityERK9btVector3,@function
_ZN23btDiscreteDynamicsWorld10setGravityERK9btVector3: # @_ZN23btDiscreteDynamicsWorld10setGravityERK9btVector3
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
	move	$fp, $a1
	vld	$vr0, $a1, 0
	ld.w	$a1, $a0, 284
	vst	$vr0, $a0, 312
	blez	$a1, .LBB22_6
# %bb.1:                                # %.lr.ph
	move	$s0, $a0
	move	$s1, $zero
	move	$s2, $zero
	ori	$s3, $zero, 2
	ori	$s4, $zero, 5
	b	.LBB22_3
	.p2align	4, , 16
.LBB22_2:                               #   in Loop: Header=BB22_3 Depth=1
	addi.d	$s2, $s2, 1
	addi.d	$s1, $s1, 8
	bge	$s2, $a1, .LBB22_6
.LBB22_3:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 296
	ldx.d	$a0, $a0, $s1
	ld.w	$a2, $a0, 228
	beq	$a2, $s3, .LBB22_2
# %bb.4:                                #   in Loop: Header=BB22_3 Depth=1
	beq	$a2, $s4, .LBB22_2
# %bb.5:                                #   in Loop: Header=BB22_3 Depth=1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN11btRigidBody10setGravityERK9btVector3)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 284
	b	.LBB22_2
.LBB22_6:                               # %._crit_edge
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end22:
	.size	_ZN23btDiscreteDynamicsWorld10setGravityERK9btVector3, .Lfunc_end22-_ZN23btDiscreteDynamicsWorld10setGravityERK9btVector3
	.cfi_endproc
                                        # -- End function
	.globl	_ZNK23btDiscreteDynamicsWorld10getGravityEv # -- Begin function _ZNK23btDiscreteDynamicsWorld10getGravityEv
	.p2align	5
	.type	_ZNK23btDiscreteDynamicsWorld10getGravityEv,@function
_ZNK23btDiscreteDynamicsWorld10getGravityEv: # @_ZNK23btDiscreteDynamicsWorld10getGravityEv
# %bb.0:
	ld.d	$a2, $a0, 312
	ld.d	$a1, $a0, 320
	move	$a0, $a2
	ret
.Lfunc_end23:
	.size	_ZNK23btDiscreteDynamicsWorld10getGravityEv, .Lfunc_end23-_ZNK23btDiscreteDynamicsWorld10getGravityEv
                                        # -- End function
	.globl	_ZN23btDiscreteDynamicsWorld18addCollisionObjectEP17btCollisionObjectss # -- Begin function _ZN23btDiscreteDynamicsWorld18addCollisionObjectEP17btCollisionObjectss
	.p2align	5
	.type	_ZN23btDiscreteDynamicsWorld18addCollisionObjectEP17btCollisionObjectss,@function
_ZN23btDiscreteDynamicsWorld18addCollisionObjectEP17btCollisionObjectss: # @_ZN23btDiscreteDynamicsWorld18addCollisionObjectEP17btCollisionObjectss
	.cfi_startproc
# %bb.0:
	pcaddu18i	$t8, %call36(_ZN16btCollisionWorld18addCollisionObjectEP17btCollisionObjectss)
	jr	$t8
.Lfunc_end24:
	.size	_ZN23btDiscreteDynamicsWorld18addCollisionObjectEP17btCollisionObjectss, .Lfunc_end24-_ZN23btDiscreteDynamicsWorld18addCollisionObjectEP17btCollisionObjectss
	.cfi_endproc
                                        # -- End function
	.globl	_ZN23btDiscreteDynamicsWorld21removeCollisionObjectEP17btCollisionObject # -- Begin function _ZN23btDiscreteDynamicsWorld21removeCollisionObjectEP17btCollisionObject
	.p2align	5
	.type	_ZN23btDiscreteDynamicsWorld21removeCollisionObjectEP17btCollisionObject,@function
_ZN23btDiscreteDynamicsWorld21removeCollisionObjectEP17btCollisionObject: # @_ZN23btDiscreteDynamicsWorld21removeCollisionObjectEP17btCollisionObject
	.cfi_startproc
# %bb.0:
	beqz	$a1, .LBB25_3
# %bb.1:
	ld.w	$a2, $a1, 256
	ori	$a3, $zero, 2
	bne	$a2, $a3, .LBB25_3
# %bb.2:
	ld.d	$a2, $a0, 0
	ld.d	$a2, $a2, 144
	jr	$a2
.LBB25_3:
	pcaddu18i	$t8, %call36(_ZN16btCollisionWorld21removeCollisionObjectEP17btCollisionObject)
	jr	$t8
.Lfunc_end25:
	.size	_ZN23btDiscreteDynamicsWorld21removeCollisionObjectEP17btCollisionObject, .Lfunc_end25-_ZN23btDiscreteDynamicsWorld21removeCollisionObjectEP17btCollisionObject
	.cfi_endproc
                                        # -- End function
	.globl	_ZN23btDiscreteDynamicsWorld15removeRigidBodyEP11btRigidBody # -- Begin function _ZN23btDiscreteDynamicsWorld15removeRigidBodyEP11btRigidBody
	.p2align	5
	.type	_ZN23btDiscreteDynamicsWorld15removeRigidBodyEP11btRigidBody,@function
_ZN23btDiscreteDynamicsWorld15removeRigidBodyEP11btRigidBody: # @_ZN23btDiscreteDynamicsWorld15removeRigidBodyEP11btRigidBody
	.cfi_startproc
# %bb.0:
	ld.w	$a2, $a0, 284
	blez	$a2, .LBB26_4
# %bb.1:                                # %.lr.ph.i.i
	ld.d	$a3, $a0, 296
	move	$a5, $zero
	move	$a6, $a2
	move	$a4, $a3
	.p2align	4, , 16
.LBB26_2:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a7, $a4, 0
	beq	$a7, $a1, .LBB26_5
# %bb.3:                                #   in Loop: Header=BB26_2 Depth=1
	addi.d	$a4, $a4, 8
	addi.d	$a6, $a6, -1
	addi.w	$a5, $a5, 1
	bnez	$a6, .LBB26_2
.LBB26_4:                               # %_ZN20btAlignedObjectArrayIP11btRigidBodyE6removeERKS1_.exit
	pcaddu18i	$t8, %call36(_ZN16btCollisionWorld21removeCollisionObjectEP17btCollisionObject)
	jr	$t8
.LBB26_5:                               # %_ZNK20btAlignedObjectArrayIP11btRigidBodyE16findLinearSearchERKS1_.exit.i
	bge	$a5, $a2, .LBB26_4
# %bb.6:
	addi.w	$a2, $a2, -1
	slli.d	$a5, $a2, 3
	ldx.d	$a6, $a3, $a5
	ld.d	$a7, $a4, 0
	st.d	$a6, $a4, 0
	stx.d	$a7, $a3, $a5
	st.w	$a2, $a0, 284
	pcaddu18i	$t8, %call36(_ZN16btCollisionWorld21removeCollisionObjectEP17btCollisionObject)
	jr	$t8
.Lfunc_end26:
	.size	_ZN23btDiscreteDynamicsWorld15removeRigidBodyEP11btRigidBody, .Lfunc_end26-_ZN23btDiscreteDynamicsWorld15removeRigidBodyEP11btRigidBody
	.cfi_endproc
                                        # -- End function
	.globl	_ZN23btDiscreteDynamicsWorld12addRigidBodyEP11btRigidBody # -- Begin function _ZN23btDiscreteDynamicsWorld12addRigidBodyEP11btRigidBody
	.p2align	5
	.type	_ZN23btDiscreteDynamicsWorld12addRigidBodyEP11btRigidBody,@function
_ZN23btDiscreteDynamicsWorld12addRigidBodyEP11btRigidBody: # @_ZN23btDiscreteDynamicsWorld12addRigidBodyEP11btRigidBody
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
	ld.bu	$a1, $a1, 216
	andi	$a1, $a1, 3
	move	$s0, $a0
	beqz	$a1, .LBB27_15
# %bb.1:
	ld.d	$a0, $fp, 200
	beqz	$a0, .LBB27_16
.LBB27_2:
	ld.bu	$a0, $fp, 216
	andi	$a0, $a0, 1
	bnez	$a0, .LBB27_17
# %bb.3:
	ld.w	$a1, $s0, 284
	ld.w	$a0, $s0, 288
	bne	$a1, $a0, .LBB27_23
# %bb.4:
	sltui	$a0, $a1, 1
	slli.w	$a2, $a1, 1
	masknez	$a2, $a2, $a0
	ori	$a3, $zero, 1
	maskeqz	$a0, $a3, $a0
	or	$s2, $a0, $a2
	bge	$a1, $s2, .LBB27_23
# %bb.5:
	beqz	$s2, .LBB27_18
# %bb.6:
	slli.d	$a0, $s2, 3
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 284
	move	$s1, $a0
	ld.d	$a0, $s0, 296
	blez	$a1, .LBB27_19
.LBB27_7:                               # %.lr.ph.i.i.i
	ori	$a3, $zero, 4
	move	$a2, $zero
	bltu	$a1, $a3, .LBB27_12
# %bb.8:                                # %.lr.ph.i.i.i
	sub.d	$a3, $s1, $a0
	ori	$a4, $zero, 32
	bltu	$a3, $a4, .LBB27_12
# %bb.9:                                # %vector.ph
	bstrpick.d	$a2, $a1, 30, 2
	slli.d	$a2, $a2, 2
	addi.d	$a3, $a0, 16
	addi.d	$a4, $s1, 16
	move	$a5, $a2
	.p2align	4, , 16
.LBB27_10:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a3, -16
	vld	$vr1, $a3, 0
	vst	$vr0, $a4, -16
	vst	$vr1, $a4, 0
	addi.d	$a5, $a5, -4
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB27_10
# %bb.11:                               # %middle.block
	beq	$a2, $a1, .LBB27_14
.LBB27_12:                              # %scalar.ph.preheader
	sub.d	$a3, $a1, $a2
	alsl.d	$a4, $a2, $a0, 3
	alsl.d	$a2, $a2, $s1, 3
	.p2align	4, , 16
.LBB27_13:                              # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a4, 0
	st.d	$a5, $a2, 0
	addi.d	$a3, $a3, -1
	addi.d	$a4, $a4, 8
	addi.d	$a2, $a2, 8
	bnez	$a3, .LBB27_13
.LBB27_14:                              # %_ZNK20btAlignedObjectArrayIP11btRigidBodyE4copyEiiPS1_.exit.thread.i.i
	ld.bu	$a2, $s0, 304
	bnez	$a2, .LBB27_21
	b	.LBB27_22
.LBB27_15:
	addi.d	$a1, $s0, 312
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN11btRigidBody10setGravityERK9btVector3)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 200
	bnez	$a0, .LBB27_2
.LBB27_16:
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB27_17:
	ori	$a1, $zero, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17btCollisionObject18setActivationStateEi)
	jirl	$ra, $ra, 0
	b	.LBB27_24
.LBB27_18:
	move	$s1, $zero
	ld.d	$a0, $s0, 296
	bgtz	$a1, .LBB27_7
.LBB27_19:                              # %_ZNK20btAlignedObjectArrayIP11btRigidBodyE4copyEiiPS1_.exit.i.i
	beqz	$a0, .LBB27_22
# %bb.20:                               # %_ZNK20btAlignedObjectArrayIP11btRigidBodyE4copyEiiPS1_.exit.i.i
	ld.b	$a2, $s0, 304
	andi	$a2, $a2, 1
	beqz	$a2, .LBB27_22
.LBB27_21:
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 284
.LBB27_22:                              # %_ZN20btAlignedObjectArrayIP11btRigidBodyE10deallocateEv.exit.i.i
	ori	$a0, $zero, 1
	st.b	$a0, $s0, 304
	st.d	$s1, $s0, 296
	st.w	$s2, $s0, 288
.LBB27_23:                              # %_ZN20btAlignedObjectArrayIP11btRigidBodyE9push_backERKS1_.exit
	ld.d	$a0, $s0, 296
	slli.d	$a2, $a1, 3
	stx.d	$fp, $a0, $a2
	addi.d	$a0, $a1, 1
	st.w	$a0, $s0, 284
.LBB27_24:                              # %.thread13
	ld.w	$a0, $fp, 216
	ld.d	$a1, $s0, 0
	andi	$a0, $a0, 3
	sltui	$a0, $a0, 1
	ld.d	$a4, $a1, 40
	ori	$a1, $zero, 2
	sub.d	$a2, $a1, $a0
	sub.d	$a0, $zero, $a0
	addi.w	$a1, $zero, -3
	or	$a3, $a0, $a1
	move	$a0, $s0
	move	$a1, $fp
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	jr	$a4
.Lfunc_end27:
	.size	_ZN23btDiscreteDynamicsWorld12addRigidBodyEP11btRigidBody, .Lfunc_end27-_ZN23btDiscreteDynamicsWorld12addRigidBodyEP11btRigidBody
	.cfi_endproc
                                        # -- End function
	.globl	_ZN23btDiscreteDynamicsWorld12addRigidBodyEP11btRigidBodyss # -- Begin function _ZN23btDiscreteDynamicsWorld12addRigidBodyEP11btRigidBodyss
	.p2align	5
	.type	_ZN23btDiscreteDynamicsWorld12addRigidBodyEP11btRigidBodyss,@function
_ZN23btDiscreteDynamicsWorld12addRigidBodyEP11btRigidBodyss: # @_ZN23btDiscreteDynamicsWorld12addRigidBodyEP11btRigidBodyss
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
	move	$fp, $a1
	ld.bu	$a1, $a1, 216
	andi	$a1, $a1, 3
	move	$s0, $a3
	move	$s1, $a2
	move	$s2, $a0
	beqz	$a1, .LBB28_15
# %bb.1:
	ld.d	$a0, $fp, 200
	beqz	$a0, .LBB28_16
.LBB28_2:
	ld.bu	$a0, $fp, 216
	andi	$a0, $a0, 1
	bnez	$a0, .LBB28_17
# %bb.3:
	ld.w	$a1, $s2, 284
	ld.w	$a0, $s2, 288
	bne	$a1, $a0, .LBB28_23
# %bb.4:
	sltui	$a0, $a1, 1
	slli.w	$a2, $a1, 1
	masknez	$a2, $a2, $a0
	ori	$a3, $zero, 1
	maskeqz	$a0, $a3, $a0
	or	$s4, $a0, $a2
	bge	$a1, $s4, .LBB28_23
# %bb.5:
	beqz	$s4, .LBB28_18
# %bb.6:
	slli.d	$a0, $s4, 3
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 284
	move	$s3, $a0
	ld.d	$a0, $s2, 296
	blez	$a1, .LBB28_19
.LBB28_7:                               # %.lr.ph.i.i.i
	ori	$a3, $zero, 4
	move	$a2, $zero
	bltu	$a1, $a3, .LBB28_12
# %bb.8:                                # %.lr.ph.i.i.i
	sub.d	$a3, $s3, $a0
	ori	$a4, $zero, 32
	bltu	$a3, $a4, .LBB28_12
# %bb.9:                                # %vector.ph
	bstrpick.d	$a2, $a1, 30, 2
	slli.d	$a2, $a2, 2
	addi.d	$a3, $a0, 16
	addi.d	$a4, $s3, 16
	move	$a5, $a2
	.p2align	4, , 16
.LBB28_10:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a3, -16
	vld	$vr1, $a3, 0
	vst	$vr0, $a4, -16
	vst	$vr1, $a4, 0
	addi.d	$a5, $a5, -4
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB28_10
# %bb.11:                               # %middle.block
	beq	$a2, $a1, .LBB28_14
.LBB28_12:                              # %scalar.ph.preheader
	sub.d	$a3, $a1, $a2
	alsl.d	$a4, $a2, $a0, 3
	alsl.d	$a2, $a2, $s3, 3
	.p2align	4, , 16
.LBB28_13:                              # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a4, 0
	st.d	$a5, $a2, 0
	addi.d	$a3, $a3, -1
	addi.d	$a4, $a4, 8
	addi.d	$a2, $a2, 8
	bnez	$a3, .LBB28_13
.LBB28_14:                              # %_ZNK20btAlignedObjectArrayIP11btRigidBodyE4copyEiiPS1_.exit.thread.i.i
	ld.bu	$a2, $s2, 304
	bnez	$a2, .LBB28_21
	b	.LBB28_22
.LBB28_15:
	addi.d	$a1, $s2, 312
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN11btRigidBody10setGravityERK9btVector3)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 200
	bnez	$a0, .LBB28_2
.LBB28_16:
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB28_17:
	ori	$a1, $zero, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17btCollisionObject18setActivationStateEi)
	jirl	$ra, $ra, 0
	b	.LBB28_24
.LBB28_18:
	move	$s3, $zero
	ld.d	$a0, $s2, 296
	bgtz	$a1, .LBB28_7
.LBB28_19:                              # %_ZNK20btAlignedObjectArrayIP11btRigidBodyE4copyEiiPS1_.exit.i.i
	beqz	$a0, .LBB28_22
# %bb.20:                               # %_ZNK20btAlignedObjectArrayIP11btRigidBodyE4copyEiiPS1_.exit.i.i
	ld.b	$a2, $s2, 304
	andi	$a2, $a2, 1
	beqz	$a2, .LBB28_22
.LBB28_21:
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 284
.LBB28_22:                              # %_ZN20btAlignedObjectArrayIP11btRigidBodyE10deallocateEv.exit.i.i
	ori	$a0, $zero, 1
	st.b	$a0, $s2, 304
	st.d	$s3, $s2, 296
	st.w	$s4, $s2, 288
.LBB28_23:                              # %_ZN20btAlignedObjectArrayIP11btRigidBodyE9push_backERKS1_.exit
	ld.d	$a0, $s2, 296
	slli.d	$a2, $a1, 3
	stx.d	$fp, $a0, $a2
	addi.d	$a0, $a1, 1
	st.w	$a0, $s2, 284
.LBB28_24:
	ld.d	$a0, $s2, 0
	ld.d	$a4, $a0, 40
	move	$a0, $s2
	move	$a1, $fp
	move	$a2, $s1
	move	$a3, $s0
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	jr	$a4
.Lfunc_end28:
	.size	_ZN23btDiscreteDynamicsWorld12addRigidBodyEP11btRigidBodyss, .Lfunc_end28-_ZN23btDiscreteDynamicsWorld12addRigidBodyEP11btRigidBodyss
	.cfi_endproc
                                        # -- End function
	.globl	_ZN23btDiscreteDynamicsWorld13addConstraintEP17btTypedConstraintb # -- Begin function _ZN23btDiscreteDynamicsWorld13addConstraintEP17btTypedConstraintb
	.p2align	5
	.type	_ZN23btDiscreteDynamicsWorld13addConstraintEP17btTypedConstraintb,@function
_ZN23btDiscreteDynamicsWorld13addConstraintEP17btTypedConstraintb: # @_ZN23btDiscreteDynamicsWorld13addConstraintEP17btTypedConstraintb
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
	ld.w	$a3, $a0, 252
	ld.w	$a0, $a0, 256
	move	$fp, $a1
	bne	$a3, $a0, .LBB29_17
# %bb.1:
	sltui	$a0, $a3, 1
	slli.w	$a1, $a3, 1
	masknez	$a1, $a1, $a0
	ori	$a4, $zero, 1
	maskeqz	$a0, $a4, $a0
	or	$s2, $a0, $a1
	bge	$a3, $s2, .LBB29_17
# %bb.2:
	move	$s3, $a2
	beqz	$s2, .LBB29_12
# %bb.3:
	slli.d	$a0, $s2, 3
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
	ld.w	$a3, $s0, 252
	move	$s1, $a0
	ld.d	$a0, $s0, 264
	blez	$a3, .LBB29_13
.LBB29_4:                               # %.lr.ph.i.i.i
	ori	$a4, $zero, 4
	move	$a1, $zero
	move	$a2, $s3
	bltu	$a3, $a4, .LBB29_9
# %bb.5:                                # %.lr.ph.i.i.i
	sub.d	$a4, $s1, $a0
	ori	$a5, $zero, 32
	bltu	$a4, $a5, .LBB29_9
# %bb.6:                                # %vector.ph
	bstrpick.d	$a1, $a3, 30, 2
	slli.d	$a1, $a1, 2
	addi.d	$a4, $a0, 16
	addi.d	$a5, $s1, 16
	move	$a6, $a1
	.p2align	4, , 16
.LBB29_7:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a4, -16
	vld	$vr1, $a4, 0
	vst	$vr0, $a5, -16
	vst	$vr1, $a5, 0
	addi.d	$a6, $a6, -4
	addi.d	$a4, $a4, 32
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB29_7
# %bb.8:                                # %middle.block
	beq	$a1, $a3, .LBB29_11
.LBB29_9:                               # %scalar.ph.preheader
	sub.d	$a4, $a3, $a1
	alsl.d	$a5, $a1, $a0, 3
	alsl.d	$a1, $a1, $s1, 3
	.p2align	4, , 16
.LBB29_10:                              # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a6, $a5, 0
	st.d	$a6, $a1, 0
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 8
	addi.d	$a1, $a1, 8
	bnez	$a4, .LBB29_10
.LBB29_11:                              # %_ZNK20btAlignedObjectArrayIP17btTypedConstraintE4copyEiiPS1_.exit.thread.i.i
	ld.bu	$a1, $s0, 272
	bnez	$a1, .LBB29_15
	b	.LBB29_16
.LBB29_12:
	move	$s1, $zero
	ld.d	$a0, $s0, 264
	bgtz	$a3, .LBB29_4
.LBB29_13:                              # %_ZNK20btAlignedObjectArrayIP17btTypedConstraintE4copyEiiPS1_.exit.i.i
	move	$a2, $s3
	beqz	$a0, .LBB29_16
# %bb.14:                               # %_ZNK20btAlignedObjectArrayIP17btTypedConstraintE4copyEiiPS1_.exit.i.i
	ld.b	$a1, $s0, 272
	andi	$a1, $a1, 1
	beqz	$a1, .LBB29_16
.LBB29_15:
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
	move	$a2, $s3
	ld.w	$a3, $s0, 252
.LBB29_16:                              # %_ZN20btAlignedObjectArrayIP17btTypedConstraintE10deallocateEv.exit.i.i
	ori	$a0, $zero, 1
	st.b	$a0, $s0, 272
	st.d	$s1, $s0, 264
	st.w	$s2, $s0, 256
.LBB29_17:                              # %_ZN20btAlignedObjectArrayIP17btTypedConstraintE9push_backERKS1_.exit
	ld.d	$a0, $s0, 264
	slli.d	$a1, $a3, 3
	stx.d	$fp, $a0, $a1
	addi.d	$a0, $a3, 1
	st.w	$a0, $s0, 252
	beqz	$a2, .LBB29_19
# %bb.18:
	ld.d	$a0, $fp, 24
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN11btRigidBody16addConstraintRefEP17btTypedConstraint)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 32
	move	$a1, $fp
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(_ZN11btRigidBody16addConstraintRefEP17btTypedConstraint)
	jr	$t8
.LBB29_19:
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end29:
	.size	_ZN23btDiscreteDynamicsWorld13addConstraintEP17btTypedConstraintb, .Lfunc_end29-_ZN23btDiscreteDynamicsWorld13addConstraintEP17btTypedConstraintb
	.cfi_endproc
                                        # -- End function
	.globl	_ZN23btDiscreteDynamicsWorld16removeConstraintEP17btTypedConstraint # -- Begin function _ZN23btDiscreteDynamicsWorld16removeConstraintEP17btTypedConstraint
	.p2align	5
	.type	_ZN23btDiscreteDynamicsWorld16removeConstraintEP17btTypedConstraint,@function
_ZN23btDiscreteDynamicsWorld16removeConstraintEP17btTypedConstraint: # @_ZN23btDiscreteDynamicsWorld16removeConstraintEP17btTypedConstraint
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	ld.w	$a2, $a0, 252
	move	$fp, $a1
	blez	$a2, .LBB30_6
# %bb.1:                                # %.lr.ph.i.i
	ld.d	$a3, $a0, 264
	move	$a5, $zero
	move	$a6, $a2
	move	$a4, $a3
	.p2align	4, , 16
.LBB30_2:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a7, $a4, 0
	beq	$a7, $fp, .LBB30_4
# %bb.3:                                #   in Loop: Header=BB30_2 Depth=1
	addi.d	$a4, $a4, 8
	addi.d	$a6, $a6, -1
	addi.w	$a5, $a5, 1
	bnez	$a6, .LBB30_2
	b	.LBB30_6
.LBB30_4:                               # %_ZNK20btAlignedObjectArrayIP17btTypedConstraintE16findLinearSearchERKS1_.exit.i
	bge	$a5, $a2, .LBB30_6
# %bb.5:
	addi.w	$a2, $a2, -1
	slli.d	$a5, $a2, 3
	ldx.d	$a6, $a3, $a5
	ld.d	$a7, $a4, 0
	st.d	$a6, $a4, 0
	stx.d	$a7, $a3, $a5
	st.w	$a2, $a0, 252
.LBB30_6:                               # %_ZN20btAlignedObjectArrayIP17btTypedConstraintE6removeERKS1_.exit
	ld.d	$a0, $fp, 24
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN11btRigidBody19removeConstraintRefEP17btTypedConstraint)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 32
	move	$a1, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZN11btRigidBody19removeConstraintRefEP17btTypedConstraint)
	jr	$t8
.Lfunc_end30:
	.size	_ZN23btDiscreteDynamicsWorld16removeConstraintEP17btTypedConstraint, .Lfunc_end30-_ZN23btDiscreteDynamicsWorld16removeConstraintEP17btTypedConstraint
	.cfi_endproc
                                        # -- End function
	.globl	_ZN23btDiscreteDynamicsWorld9addActionEP17btActionInterface # -- Begin function _ZN23btDiscreteDynamicsWorld9addActionEP17btActionInterface
	.p2align	5
	.type	_ZN23btDiscreteDynamicsWorld9addActionEP17btActionInterface,@function
_ZN23btDiscreteDynamicsWorld9addActionEP17btActionInterface: # @_ZN23btDiscreteDynamicsWorld9addActionEP17btActionInterface
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
	move	$fp, $a0
	ld.w	$a2, $a0, 340
	ld.w	$a0, $a0, 344
	bne	$a2, $a0, .LBB31_17
# %bb.1:
	sltui	$a0, $a2, 1
	slli.w	$a3, $a2, 1
	masknez	$a3, $a3, $a0
	ori	$a4, $zero, 1
	maskeqz	$a0, $a4, $a0
	or	$s1, $a0, $a3
	bge	$a2, $s1, .LBB31_17
# %bb.2:
	move	$s2, $a1
	beqz	$s1, .LBB31_12
# %bb.3:
	slli.d	$a0, $s1, 3
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
	ld.w	$a2, $fp, 340
	move	$s0, $a0
	ld.d	$a0, $fp, 352
	blez	$a2, .LBB31_13
.LBB31_4:                               # %.lr.ph.i.i.i
	ori	$a4, $zero, 4
	move	$a3, $zero
	move	$a1, $s2
	bltu	$a2, $a4, .LBB31_9
# %bb.5:                                # %.lr.ph.i.i.i
	sub.d	$a4, $s0, $a0
	ori	$a5, $zero, 32
	bltu	$a4, $a5, .LBB31_9
# %bb.6:                                # %vector.ph
	bstrpick.d	$a3, $a2, 30, 2
	slli.d	$a3, $a3, 2
	addi.d	$a4, $a0, 16
	addi.d	$a5, $s0, 16
	move	$a6, $a3
	.p2align	4, , 16
.LBB31_7:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a4, -16
	vld	$vr1, $a4, 0
	vst	$vr0, $a5, -16
	vst	$vr1, $a5, 0
	addi.d	$a6, $a6, -4
	addi.d	$a4, $a4, 32
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB31_7
# %bb.8:                                # %middle.block
	beq	$a3, $a2, .LBB31_11
.LBB31_9:                               # %scalar.ph.preheader
	sub.d	$a4, $a2, $a3
	alsl.d	$a5, $a3, $a0, 3
	alsl.d	$a3, $a3, $s0, 3
	.p2align	4, , 16
.LBB31_10:                              # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a6, $a5, 0
	st.d	$a6, $a3, 0
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 8
	addi.d	$a3, $a3, 8
	bnez	$a4, .LBB31_10
.LBB31_11:                              # %_ZNK20btAlignedObjectArrayIP17btActionInterfaceE4copyEiiPS1_.exit.thread.i.i
	ld.bu	$a3, $fp, 360
	bnez	$a3, .LBB31_15
	b	.LBB31_16
.LBB31_12:
	move	$s0, $zero
	ld.d	$a0, $fp, 352
	bgtz	$a2, .LBB31_4
.LBB31_13:                              # %_ZNK20btAlignedObjectArrayIP17btActionInterfaceE4copyEiiPS1_.exit.i.i
	move	$a1, $s2
	beqz	$a0, .LBB31_16
# %bb.14:                               # %_ZNK20btAlignedObjectArrayIP17btActionInterfaceE4copyEiiPS1_.exit.i.i
	ld.b	$a3, $fp, 360
	andi	$a3, $a3, 1
	beqz	$a3, .LBB31_16
.LBB31_15:
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
	move	$a1, $s2
	ld.w	$a2, $fp, 340
.LBB31_16:                              # %_ZN20btAlignedObjectArrayIP17btActionInterfaceE10deallocateEv.exit.i.i
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 360
	st.d	$s0, $fp, 352
	st.w	$s1, $fp, 344
.LBB31_17:                              # %_ZN20btAlignedObjectArrayIP17btActionInterfaceE9push_backERKS1_.exit
	ld.d	$a0, $fp, 352
	slli.d	$a3, $a2, 3
	stx.d	$a1, $a0, $a3
	addi.d	$a0, $a2, 1
	st.w	$a0, $fp, 340
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end31:
	.size	_ZN23btDiscreteDynamicsWorld9addActionEP17btActionInterface, .Lfunc_end31-_ZN23btDiscreteDynamicsWorld9addActionEP17btActionInterface
	.cfi_endproc
                                        # -- End function
	.globl	_ZN23btDiscreteDynamicsWorld12removeActionEP17btActionInterface # -- Begin function _ZN23btDiscreteDynamicsWorld12removeActionEP17btActionInterface
	.p2align	5
	.type	_ZN23btDiscreteDynamicsWorld12removeActionEP17btActionInterface,@function
_ZN23btDiscreteDynamicsWorld12removeActionEP17btActionInterface: # @_ZN23btDiscreteDynamicsWorld12removeActionEP17btActionInterface
# %bb.0:
	ld.w	$a2, $a0, 340
	blez	$a2, .LBB32_4
# %bb.1:                                # %.lr.ph.i.i
	ld.d	$a3, $a0, 352
	move	$a5, $zero
	move	$a6, $a2
	move	$a4, $a3
	.p2align	4, , 16
.LBB32_2:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a7, $a4, 0
	beq	$a7, $a1, .LBB32_5
# %bb.3:                                #   in Loop: Header=BB32_2 Depth=1
	addi.d	$a4, $a4, 8
	addi.d	$a6, $a6, -1
	addi.w	$a5, $a5, 1
	bnez	$a6, .LBB32_2
.LBB32_4:                               # %_ZN20btAlignedObjectArrayIP17btActionInterfaceE6removeERKS1_.exit
	ret
.LBB32_5:                               # %_ZNK20btAlignedObjectArrayIP17btActionInterfaceE16findLinearSearchERKS1_.exit.i
	bge	$a5, $a2, .LBB32_4
# %bb.6:
	addi.w	$a1, $a2, -1
	slli.d	$a2, $a1, 3
	ldx.d	$a5, $a3, $a2
	ld.d	$a6, $a4, 0
	st.d	$a5, $a4, 0
	stx.d	$a6, $a3, $a2
	st.w	$a1, $a0, 340
	ret
.Lfunc_end32:
	.size	_ZN23btDiscreteDynamicsWorld12removeActionEP17btActionInterface, .Lfunc_end32-_ZN23btDiscreteDynamicsWorld12removeActionEP17btActionInterface
                                        # -- End function
	.globl	_ZN23btDiscreteDynamicsWorld10addVehicleEP17btActionInterface # -- Begin function _ZN23btDiscreteDynamicsWorld10addVehicleEP17btActionInterface
	.p2align	5
	.type	_ZN23btDiscreteDynamicsWorld10addVehicleEP17btActionInterface,@function
_ZN23btDiscreteDynamicsWorld10addVehicleEP17btActionInterface: # @_ZN23btDiscreteDynamicsWorld10addVehicleEP17btActionInterface
	.cfi_startproc
# %bb.0:
	ld.d	$a2, $a0, 0
	ld.d	$a2, $a2, 96
	jr	$a2
.Lfunc_end33:
	.size	_ZN23btDiscreteDynamicsWorld10addVehicleEP17btActionInterface, .Lfunc_end33-_ZN23btDiscreteDynamicsWorld10addVehicleEP17btActionInterface
	.cfi_endproc
                                        # -- End function
	.globl	_ZN23btDiscreteDynamicsWorld13removeVehicleEP17btActionInterface # -- Begin function _ZN23btDiscreteDynamicsWorld13removeVehicleEP17btActionInterface
	.p2align	5
	.type	_ZN23btDiscreteDynamicsWorld13removeVehicleEP17btActionInterface,@function
_ZN23btDiscreteDynamicsWorld13removeVehicleEP17btActionInterface: # @_ZN23btDiscreteDynamicsWorld13removeVehicleEP17btActionInterface
	.cfi_startproc
# %bb.0:
	ld.d	$a2, $a0, 0
	ld.d	$a2, $a2, 104
	jr	$a2
.Lfunc_end34:
	.size	_ZN23btDiscreteDynamicsWorld13removeVehicleEP17btActionInterface, .Lfunc_end34-_ZN23btDiscreteDynamicsWorld13removeVehicleEP17btActionInterface
	.cfi_endproc
                                        # -- End function
	.globl	_ZN23btDiscreteDynamicsWorld12addCharacterEP17btActionInterface # -- Begin function _ZN23btDiscreteDynamicsWorld12addCharacterEP17btActionInterface
	.p2align	5
	.type	_ZN23btDiscreteDynamicsWorld12addCharacterEP17btActionInterface,@function
_ZN23btDiscreteDynamicsWorld12addCharacterEP17btActionInterface: # @_ZN23btDiscreteDynamicsWorld12addCharacterEP17btActionInterface
	.cfi_startproc
# %bb.0:
	ld.d	$a2, $a0, 0
	ld.d	$a2, $a2, 96
	jr	$a2
.Lfunc_end35:
	.size	_ZN23btDiscreteDynamicsWorld12addCharacterEP17btActionInterface, .Lfunc_end35-_ZN23btDiscreteDynamicsWorld12addCharacterEP17btActionInterface
	.cfi_endproc
                                        # -- End function
	.globl	_ZN23btDiscreteDynamicsWorld15removeCharacterEP17btActionInterface # -- Begin function _ZN23btDiscreteDynamicsWorld15removeCharacterEP17btActionInterface
	.p2align	5
	.type	_ZN23btDiscreteDynamicsWorld15removeCharacterEP17btActionInterface,@function
_ZN23btDiscreteDynamicsWorld15removeCharacterEP17btActionInterface: # @_ZN23btDiscreteDynamicsWorld15removeCharacterEP17btActionInterface
	.cfi_startproc
# %bb.0:
	ld.d	$a2, $a0, 0
	ld.d	$a2, $a2, 104
	jr	$a2
.Lfunc_end36:
	.size	_ZN23btDiscreteDynamicsWorld15removeCharacterEP17btActionInterface, .Lfunc_end36-_ZN23btDiscreteDynamicsWorld15removeCharacterEP17btActionInterface
	.cfi_endproc
                                        # -- End function
	.globl	_ZN23btDiscreteDynamicsWorld16solveConstraintsER19btContactSolverInfo # -- Begin function _ZN23btDiscreteDynamicsWorld16solveConstraintsER19btContactSolverInfo
	.p2align	5
	.type	_ZN23btDiscreteDynamicsWorld16solveConstraintsER19btContactSolverInfo,@function
_ZN23btDiscreteDynamicsWorld16solveConstraintsER19btContactSolverInfo: # @_ZN23btDiscreteDynamicsWorld16solveConstraintsER19btContactSolverInfo
.Lfunc_begin10:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception10
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	move	$fp, $a1
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	pcaddu18i	$ra, %call36(_ZN15CProfileManager13Start_ProfileEPKc)
	jirl	$ra, $ra, 0
	ld.w	$s3, $s0, 252
	ori	$a0, $zero, 1
	st.b	$a0, $sp, 96
	st.d	$zero, $sp, 88
	st.d	$zero, $sp, 76
	blez	$s3, .LBB37_3
# %bb.1:
	slli.d	$s2, $s3, 3
.Ltmp230:                               # EH_LABEL
	ori	$a1, $zero, 16
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
.Ltmp231:                               # EH_LABEL
# %bb.2:                                # %.lr.ph.i
	move	$s1, $a0
	ori	$a0, $zero, 1
	st.b	$a0, $sp, 96
	st.d	$s1, $sp, 88
	st.w	$s3, $sp, 80
	move	$a0, $s1
	move	$a1, $zero
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	b	.LBB37_4
.LBB37_3:
	move	$s1, $zero
.LBB37_4:                               # %.loopexit28
	move	$s2, $zero
	move	$s4, $zero
	st.w	$s3, $sp, 76
	.p2align	4, , 16
.LBB37_5:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 168
.Ltmp233:                               # EH_LABEL
	move	$a0, $s0
	jirl	$ra, $a1, 0
.Ltmp234:                               # EH_LABEL
# %bb.6:                                #   in Loop: Header=BB37_5 Depth=1
	bge	$s4, $a0, .LBB37_8
# %bb.7:                                #   in Loop: Header=BB37_5 Depth=1
	ld.d	$a0, $s0, 264
	ldx.d	$a0, $a0, $s2
	stx.d	$a0, $s1, $s2
	addi.d	$s4, $s4, 1
	addi.d	$s2, $s2, 8
	b	.LBB37_5
.LBB37_8:
	ori	$a0, $zero, 2
	blt	$s3, $a0, .LBB37_10
# %bb.9:
	addi.w	$a3, $s3, -1
.Ltmp236:                               # EH_LABEL
	addi.d	$a0, $sp, 72
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZN20btAlignedObjectArrayIP17btTypedConstraintE17quickSortInternalI33btSortConstraintOnIslandPredicateEEvT_ii)
	jirl	$ra, $ra, 0
.Ltmp237:                               # EH_LABEL
.LBB37_10:                              # %_ZN20btAlignedObjectArrayIP17btTypedConstraintE9quickSortI33btSortConstraintOnIslandPredicateEEvT_.exit
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 168
.Ltmp239:                               # EH_LABEL
	move	$a0, $s0
	jirl	$ra, $a1, 0
.Ltmp240:                               # EH_LABEL
# %bb.11:
	ld.d	$a2, $sp, 88
	ld.d	$s1, $s0, 232
	ld.w	$a3, $sp, 76
	ld.d	$a4, $s0, 120
	ld.d	$a5, $s0, 104
	ld.d	$a1, $s0, 40
	sltui	$a0, $a0, 1
	masknez	$a0, $a2, $a0
	pcalau12i	$a2, %pc_hi20(_ZTVZN23btDiscreteDynamicsWorld16solveConstraintsER19btContactSolverInfoE27InplaceSolverIslandCallback+16)
	addi.d	$a2, $a2, %pc_lo12(_ZTVZN23btDiscreteDynamicsWorld16solveConstraintsER19btContactSolverInfoE27InplaceSolverIslandCallback+16)
	st.d	$a2, $sp, 8
	st.d	$fp, $sp, 16
	st.d	$s1, $sp, 24
	ld.d	$a2, $a1, 0
	st.d	$a0, $sp, 32
	st.w	$a3, $sp, 40
	ld.w	$s2, $s0, 12
	ld.d	$a2, $a2, 72
	st.d	$a4, $sp, 48
	st.d	$a5, $sp, 56
	st.d	$a1, $sp, 64
.Ltmp242:                               # EH_LABEL
	move	$a0, $a1
	jirl	$ra, $a2, 0
.Ltmp243:                               # EH_LABEL
# %bb.12:
	move	$a2, $a0
	ld.d	$a0, $s1, 0
	ld.d	$a3, $a0, 16
.Ltmp244:                               # EH_LABEL
	move	$a0, $s1
	move	$a1, $s2
	jirl	$ra, $a3, 0
.Ltmp245:                               # EH_LABEL
# %bb.13:
	ld.d	$a0, $s0, 240
	ld.d	$a1, $s0, 40
.Ltmp246:                               # EH_LABEL
	addi.d	$a3, $sp, 8
	move	$a2, $s0
	pcaddu18i	$ra, %call36(_ZN25btSimulationIslandManager22buildAndProcessIslandsEP12btDispatcherP16btCollisionWorldPNS_14IslandCallbackE)
	jirl	$ra, $ra, 0
.Ltmp247:                               # EH_LABEL
# %bb.14:
	ld.d	$a0, $s0, 232
	ld.d	$a1, $a0, 0
	ld.d	$a2, $s0, 120
	ld.d	$a3, $s0, 104
	ld.d	$a4, $a1, 32
.Ltmp248:                               # EH_LABEL
	move	$a1, $fp
	jirl	$ra, $a4, 0
.Ltmp249:                               # EH_LABEL
# %bb.15:
	ld.d	$a0, $sp, 88
	beqz	$a0, .LBB37_18
# %bb.16:
	ld.b	$a1, $sp, 96
	andi	$a1, $a1, 1
	beqz	$a1, .LBB37_18
# %bb.17:
.Ltmp253:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp254:                               # EH_LABEL
.LBB37_18:
	pcaddu18i	$ra, %call36(_ZN15CProfileManager12Stop_ProfileEv)
	jirl	$ra, $ra, 0
	ld.d	$s4, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 160
	ret
.LBB37_19:
.Ltmp255:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB37_28
.LBB37_20:                              # %.loopexit.split-lp
.Ltmp238:                               # EH_LABEL
	b	.LBB37_25
.LBB37_21:
.Ltmp232:                               # EH_LABEL
	b	.LBB37_25
.LBB37_22:
.Ltmp241:                               # EH_LABEL
	b	.LBB37_25
.LBB37_23:
.Ltmp250:                               # EH_LABEL
	b	.LBB37_25
.LBB37_24:                              # %.loopexit
.Ltmp235:                               # EH_LABEL
.LBB37_25:
	move	$fp, $a0
	ld.d	$a0, $sp, 88
	beqz	$a0, .LBB37_28
# %bb.26:
	ld.b	$a1, $sp, 96
	andi	$a1, $a1, 1
	beqz	$a1, .LBB37_28
# %bb.27:
.Ltmp251:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp252:                               # EH_LABEL
.LBB37_28:                              # %_ZN20btAlignedObjectArrayIP17btTypedConstraintED2Ev.exit26
.Ltmp256:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN15CProfileManager12Stop_ProfileEv)
	jirl	$ra, $ra, 0
.Ltmp257:                               # EH_LABEL
# %bb.29:                               # %_ZN14CProfileSampleD2Ev.exit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB37_30:
.Ltmp258:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end37:
	.size	_ZN23btDiscreteDynamicsWorld16solveConstraintsER19btContactSolverInfo, .Lfunc_end37-_ZN23btDiscreteDynamicsWorld16solveConstraintsER19btContactSolverInfo
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table37:
.Lexception10:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase9-.Lttbaseref9
.Lttbaseref9:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end10-.Lcst_begin10
.Lcst_begin10:
	.uleb128 .Lfunc_begin10-.Lfunc_begin10  # >> Call Site 1 <<
	.uleb128 .Ltmp230-.Lfunc_begin10        #   Call between .Lfunc_begin10 and .Ltmp230
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp230-.Lfunc_begin10        # >> Call Site 2 <<
	.uleb128 .Ltmp231-.Ltmp230              #   Call between .Ltmp230 and .Ltmp231
	.uleb128 .Ltmp232-.Lfunc_begin10        #     jumps to .Ltmp232
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp231-.Lfunc_begin10        # >> Call Site 3 <<
	.uleb128 .Ltmp233-.Ltmp231              #   Call between .Ltmp231 and .Ltmp233
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp233-.Lfunc_begin10        # >> Call Site 4 <<
	.uleb128 .Ltmp234-.Ltmp233              #   Call between .Ltmp233 and .Ltmp234
	.uleb128 .Ltmp235-.Lfunc_begin10        #     jumps to .Ltmp235
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp236-.Lfunc_begin10        # >> Call Site 5 <<
	.uleb128 .Ltmp237-.Ltmp236              #   Call between .Ltmp236 and .Ltmp237
	.uleb128 .Ltmp238-.Lfunc_begin10        #     jumps to .Ltmp238
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp239-.Lfunc_begin10        # >> Call Site 6 <<
	.uleb128 .Ltmp240-.Ltmp239              #   Call between .Ltmp239 and .Ltmp240
	.uleb128 .Ltmp241-.Lfunc_begin10        #     jumps to .Ltmp241
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp242-.Lfunc_begin10        # >> Call Site 7 <<
	.uleb128 .Ltmp249-.Ltmp242              #   Call between .Ltmp242 and .Ltmp249
	.uleb128 .Ltmp250-.Lfunc_begin10        #     jumps to .Ltmp250
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp253-.Lfunc_begin10        # >> Call Site 8 <<
	.uleb128 .Ltmp254-.Ltmp253              #   Call between .Ltmp253 and .Ltmp254
	.uleb128 .Ltmp255-.Lfunc_begin10        #     jumps to .Ltmp255
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp254-.Lfunc_begin10        # >> Call Site 9 <<
	.uleb128 .Ltmp251-.Ltmp254              #   Call between .Ltmp254 and .Ltmp251
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp251-.Lfunc_begin10        # >> Call Site 10 <<
	.uleb128 .Ltmp257-.Ltmp251              #   Call between .Ltmp251 and .Ltmp257
	.uleb128 .Ltmp258-.Lfunc_begin10        #     jumps to .Ltmp258
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp257-.Lfunc_begin10        # >> Call Site 11 <<
	.uleb128 .Lfunc_end37-.Ltmp257          #   Call between .Ltmp257 and .Lfunc_end37
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end10:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase9:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN25btSimulationIslandManager14IslandCallbackD2Ev,"axG",@progbits,_ZN25btSimulationIslandManager14IslandCallbackD2Ev,comdat
	.weak	_ZN25btSimulationIslandManager14IslandCallbackD2Ev # -- Begin function _ZN25btSimulationIslandManager14IslandCallbackD2Ev
	.p2align	5
	.type	_ZN25btSimulationIslandManager14IslandCallbackD2Ev,@function
_ZN25btSimulationIslandManager14IslandCallbackD2Ev: # @_ZN25btSimulationIslandManager14IslandCallbackD2Ev
# %bb.0:
	ret
.Lfunc_end38:
	.size	_ZN25btSimulationIslandManager14IslandCallbackD2Ev, .Lfunc_end38-_ZN25btSimulationIslandManager14IslandCallbackD2Ev
                                        # -- End function
	.text
	.globl	_ZN23btDiscreteDynamicsWorld26calculateSimulationIslandsEv # -- Begin function _ZN23btDiscreteDynamicsWorld26calculateSimulationIslandsEv
	.p2align	5
	.type	_ZN23btDiscreteDynamicsWorld26calculateSimulationIslandsEv,@function
_ZN23btDiscreteDynamicsWorld26calculateSimulationIslandsEv: # @_ZN23btDiscreteDynamicsWorld26calculateSimulationIslandsEv
.Lfunc_begin11:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception11
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	pcaddu18i	$ra, %call36(_ZN15CProfileManager13Start_ProfileEPKc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 240
	ld.d	$a1, $a0, 0
	ld.d	$a2, $fp, 40
	ld.d	$a3, $a1, 16
.Ltmp259:                               # EH_LABEL
	move	$a1, $fp
	jirl	$ra, $a3, 0
.Ltmp260:                               # EH_LABEL
# %bb.1:
	ld.w	$a1, $fp, 252
	ld.d	$a0, $fp, 240
	blez	$a1, .LBB39_18
# %bb.2:                                # %.lr.ph
	ld.d	$a2, $fp, 264
	move	$a3, $zero
	ori	$a4, $zero, 5
	ori	$a5, $zero, 2
	b	.LBB39_4
	.p2align	4, , 16
.LBB39_3:                               # %_ZN11btUnionFind5uniteEii.exit
                                        #   in Loop: Header=BB39_4 Depth=1
	addi.d	$a3, $a3, 1
	beq	$a3, $a1, .LBB39_18
.LBB39_4:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB39_12 Depth 2
                                        #     Child Loop BB39_15 Depth 2
	slli.d	$a6, $a3, 3
	ldx.d	$a7, $a2, $a6
	ld.d	$a6, $a7, 24
	ld.bu	$t0, $a6, 216
	andi	$t0, $t0, 3
	bnez	$t0, .LBB39_3
# %bb.5:                                #   in Loop: Header=BB39_4 Depth=1
	ld.d	$t0, $a7, 32
	ld.bu	$a7, $t0, 216
	andi	$a7, $a7, 3
	bnez	$a7, .LBB39_3
# %bb.6:                                #   in Loop: Header=BB39_4 Depth=1
	ld.w	$a7, $a6, 228
	beq	$a7, $a4, .LBB39_8
# %bb.7:                                #   in Loop: Header=BB39_4 Depth=1
	bne	$a7, $a5, .LBB39_10
.LBB39_8:                               #   in Loop: Header=BB39_4 Depth=1
	ld.w	$a7, $t0, 228
	beq	$a7, $a5, .LBB39_3
# %bb.9:                                #   in Loop: Header=BB39_4 Depth=1
	beq	$a7, $a4, .LBB39_3
.LBB39_10:                              #   in Loop: Header=BB39_4 Depth=1
	ld.w	$a7, $a6, 220
	ld.d	$a6, $a0, 24
	slli.d	$t1, $a7, 3
	ldx.w	$t1, $a6, $t1
	ld.w	$t0, $t0, 220
	beq	$a7, $t1, .LBB39_13
# %bb.11:                               # %.lr.ph.i.i.preheader
                                        #   in Loop: Header=BB39_4 Depth=1
	alsl.d	$t2, $a7, $a6, 3
	.p2align	4, , 16
.LBB39_12:                              # %.lr.ph.i.i
                                        #   Parent Loop BB39_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$a7, $t1, 3
	ldx.w	$a7, $a6, $a7
	st.w	$a7, $t2, 0
	slli.d	$t1, $a7, 3
	ldx.w	$t1, $a6, $t1
	alsl.d	$t2, $a7, $a6, 3
	bne	$a7, $t1, .LBB39_12
.LBB39_13:                              # %_ZN11btUnionFind4findEi.exit.i
                                        #   in Loop: Header=BB39_4 Depth=1
	slli.d	$t1, $t0, 3
	ldx.w	$t1, $a6, $t1
	beq	$t0, $t1, .LBB39_16
# %bb.14:                               # %.lr.ph.i10.i.preheader
                                        #   in Loop: Header=BB39_4 Depth=1
	alsl.d	$t2, $t0, $a6, 3
	.p2align	4, , 16
.LBB39_15:                              # %.lr.ph.i10.i
                                        #   Parent Loop BB39_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$t0, $t1, 3
	ldx.w	$t0, $a6, $t0
	st.w	$t0, $t2, 0
	slli.d	$t1, $t0, 3
	ldx.w	$t1, $a6, $t1
	alsl.d	$t2, $t0, $a6, 3
	bne	$t0, $t1, .LBB39_15
.LBB39_16:                              # %_ZN11btUnionFind4findEi.exit13.i
                                        #   in Loop: Header=BB39_4 Depth=1
	beq	$a7, $t0, .LBB39_3
# %bb.17:                               #   in Loop: Header=BB39_4 Depth=1
	alsl.d	$t1, $a7, $a6, 3
	ld.w	$t1, $t1, 4
	alsl.d	$t2, $t0, $a6, 3
	ld.w	$t3, $t2, 4
	slli.d	$a7, $a7, 3
	stx.w	$t0, $a6, $a7
	add.d	$a6, $t3, $t1
	st.w	$a6, $t2, 4
	b	.LBB39_3
.LBB39_18:                              # %._crit_edge
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a1, 24
.Ltmp261:                               # EH_LABEL
	move	$a1, $fp
	jirl	$ra, $a2, 0
.Ltmp262:                               # EH_LABEL
# %bb.19:
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZN15CProfileManager12Stop_ProfileEv)
	jr	$t8
.LBB39_20:
.Ltmp263:                               # EH_LABEL
	move	$fp, $a0
.Ltmp264:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN15CProfileManager12Stop_ProfileEv)
	jirl	$ra, $ra, 0
.Ltmp265:                               # EH_LABEL
# %bb.21:                               # %_ZN14CProfileSampleD2Ev.exit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB39_22:
.Ltmp266:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end39:
	.size	_ZN23btDiscreteDynamicsWorld26calculateSimulationIslandsEv, .Lfunc_end39-_ZN23btDiscreteDynamicsWorld26calculateSimulationIslandsEv
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table39:
.Lexception11:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase10-.Lttbaseref10
.Lttbaseref10:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end11-.Lcst_begin11
.Lcst_begin11:
	.uleb128 .Lfunc_begin11-.Lfunc_begin11  # >> Call Site 1 <<
	.uleb128 .Ltmp259-.Lfunc_begin11        #   Call between .Lfunc_begin11 and .Ltmp259
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp259-.Lfunc_begin11        # >> Call Site 2 <<
	.uleb128 .Ltmp262-.Ltmp259              #   Call between .Ltmp259 and .Ltmp262
	.uleb128 .Ltmp263-.Lfunc_begin11        #     jumps to .Ltmp263
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp262-.Lfunc_begin11        # >> Call Site 3 <<
	.uleb128 .Ltmp264-.Ltmp262              #   Call between .Ltmp262 and .Ltmp264
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp264-.Lfunc_begin11        # >> Call Site 4 <<
	.uleb128 .Ltmp265-.Ltmp264              #   Call between .Ltmp264 and .Ltmp265
	.uleb128 .Ltmp266-.Lfunc_begin11        #     jumps to .Ltmp266
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp265-.Lfunc_begin11        # >> Call Site 5 <<
	.uleb128 .Lfunc_end39-.Ltmp265          #   Call between .Ltmp265 and .Lfunc_end39
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end11:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase10:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN23btDiscreteDynamicsWorld19integrateTransformsEf # -- Begin function _ZN23btDiscreteDynamicsWorld19integrateTransformsEf
	.p2align	5
	.type	_ZN23btDiscreteDynamicsWorld19integrateTransformsEf,@function
_ZN23btDiscreteDynamicsWorld19integrateTransformsEf: # @_ZN23btDiscreteDynamicsWorld19integrateTransformsEf
.Lfunc_begin12:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception12
# %bb.0:
	addi.d	$sp, $sp, -384
	.cfi_def_cfa_offset 384
	st.d	$ra, $sp, 376                   # 8-byte Folded Spill
	st.d	$fp, $sp, 368                   # 8-byte Folded Spill
	st.d	$s0, $sp, 360                   # 8-byte Folded Spill
	st.d	$s1, $sp, 352                   # 8-byte Folded Spill
	st.d	$s2, $sp, 344                   # 8-byte Folded Spill
	st.d	$s3, $sp, 336                   # 8-byte Folded Spill
	st.d	$s4, $sp, 328                   # 8-byte Folded Spill
	st.d	$s5, $sp, 320                   # 8-byte Folded Spill
	st.d	$s6, $sp, 312                   # 8-byte Folded Spill
	st.d	$s7, $sp, 304                   # 8-byte Folded Spill
	st.d	$s8, $sp, 296                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 288                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 280                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 272                  # 8-byte Folded Spill
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
	fmov.s	$fs0, $fa0
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	pcaddu18i	$ra, %call36(_ZN15CProfileManager13Start_ProfileEPKc)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 284
	blez	$a0, .LBB40_21
# %bb.1:                                # %.lr.ph
	lu12i.w	$s5, 260096
	ori	$s6, $zero, 2
	ori	$s7, $zero, 5
	movgr2fr.w	$fs1, $zero
	pcalau12i	$a1, %pc_hi20(.L.str.9)
	addi.d	$s0, $a1, %pc_lo12(.L.str.9)
	pcalau12i	$s2, %pc_hi20(gNumClampedCcdMotions)
	move	$s3, $s5
	lu32i.d	$s3, -65535
	pcalau12i	$a1, %pc_hi20(_ZTV34btClosestNotMeConvexResultCallback+16)
	addi.d	$a1, $a1, %pc_lo12(_ZTV34btClosestNotMeConvexResultCallback+16)
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(_ZTV13btSphereShape)
	ld.d	$a1, $a1, %got_pc_lo12(_ZTV13btSphereShape)
	move	$s8, $zero
	move	$s4, $zero
	addi.d	$a1, $a1, 16
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	b	.LBB40_8
.LBB40_2:                               #   in Loop: Header=BB40_8 Depth=1
	st.w	$zero, $s1, 260
.LBB40_3:                               #   in Loop: Header=BB40_8 Depth=1
.Ltmp284:                               # EH_LABEL
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(_ZN13btConvexShapeD2Ev)
	jirl	$ra, $ra, 0
.Ltmp285:                               # EH_LABEL
.LBB40_4:                               #   in Loop: Header=BB40_8 Depth=1
.Ltmp289:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN15CProfileManager12Stop_ProfileEv)
	jirl	$ra, $ra, 0
.Ltmp290:                               # EH_LABEL
.LBB40_5:                               # %_ZN14CProfileSampleD2Ev.exit
                                        #   in Loop: Header=BB40_8 Depth=1
.Ltmp292:                               # EH_LABEL
	addi.d	$a1, $sp, 208
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN11btRigidBody18proceedToTransformERK11btTransform)
	jirl	$ra, $ra, 0
.Ltmp293:                               # EH_LABEL
# %bb.6:                                # %_ZN14CProfileSampleD2Ev.exit._crit_edge
                                        #   in Loop: Header=BB40_8 Depth=1
	ld.w	$a0, $fp, 284
	.p2align	4, , 16
.LBB40_7:                               #   in Loop: Header=BB40_8 Depth=1
	addi.d	$s4, $s4, 1
	addi.d	$s8, $s8, 8
	bge	$s4, $a0, .LBB40_21
.LBB40_8:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $fp, 296
	ldx.d	$s1, $a1, $s8
	ld.w	$a1, $s1, 228
	st.w	$s5, $s1, 260
	beq	$a1, $s6, .LBB40_7
# %bb.9:                                #   in Loop: Header=BB40_8 Depth=1
	beq	$a1, $s7, .LBB40_7
# %bb.10:                               #   in Loop: Header=BB40_8 Depth=1
	ld.bu	$a1, $s1, 216
	andi	$a1, $a1, 3
	bnez	$a1, .LBB40_7
# %bb.11:                               #   in Loop: Header=BB40_8 Depth=1
.Ltmp267:                               # EH_LABEL
	addi.d	$a1, $sp, 208
	move	$a0, $s1
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(_ZN11btRigidBody26predictIntegratedTransformEfR11btTransform)
	jirl	$ra, $ra, 0
.Ltmp268:                               # EH_LABEL
# %bb.12:                               #   in Loop: Header=BB40_8 Depth=1
	fld.s	$fa0, $s1, 268
	fmul.s	$fa0, $fa0, $fa0
	fcmp.ceq.s	$fcc0, $fa0, $fs1
	bcnez	$fcc0, .LBB40_5
# %bb.13:                               #   in Loop: Header=BB40_8 Depth=1
	fld.s	$fa1, $sp, 256
	fld.s	$fa2, $s1, 56
	fld.s	$fa3, $sp, 260
	fld.s	$fa4, $s1, 60
	fld.s	$fa5, $sp, 264
	fld.s	$fa6, $s1, 64
	fsub.s	$fa1, $fa1, $fa2
	fsub.s	$fa2, $fa3, $fa4
	fsub.s	$fa3, $fa5, $fa6
	fmul.s	$fa2, $fa2, $fa2
	fmadd.s	$fa1, $fa1, $fa1, $fa2
	fmadd.s	$fa1, $fa3, $fa3, $fa1
	fcmp.cule.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB40_5
# %bb.14:                               #   in Loop: Header=BB40_8 Depth=1
.Ltmp270:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN15CProfileManager13Start_ProfileEPKc)
	jirl	$ra, $ra, 0
.Ltmp271:                               # EH_LABEL
# %bb.15:                               #   in Loop: Header=BB40_8 Depth=1
	ld.d	$a0, $s1, 200
	ld.w	$a0, $a0, 8
	ori	$a1, $zero, 19
	blt	$a1, $a0, .LBB40_4
# %bb.16:                               #   in Loop: Header=BB40_8 Depth=1
	ld.d	$a0, $fp, 112
	ld.d	$a1, $a0, 0
	ld.w	$a2, $s2, %pc_lo12(gNumClampedCcdMotions)
	ld.d	$a1, $a1, 64
	addi.d	$a2, $a2, 1
	st.w	$a2, $s2, %pc_lo12(gNumClampedCcdMotions)
.Ltmp272:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp273:                               # EH_LABEL
# %bb.17:                               #   in Loop: Header=BB40_8 Depth=1
	addi.d	$a1, $s1, 56
	vld	$vr0, $a1, 0
	addi.d	$a1, $sp, 256
	vld	$vr1, $a1, 0
	ld.d	$a1, $fp, 40
	st.d	$s3, $sp, 96
	addi.d	$a2, $sp, 104
	vst	$vr0, $a2, 0
	addi.d	$a2, $sp, 120
	vst	$vr1, $a2, 0
	st.d	$zero, $sp, 168
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	st.d	$a2, $sp, 88
	st.d	$s1, $sp, 176
	fld.s	$fs2, $s1, 264
	st.w	$zero, $sp, 184
	st.d	$a0, $sp, 192
	st.d	$a1, $sp, 200
.Ltmp275:                               # EH_LABEL
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(_ZN21btConvexInternalShapeC2Ev)
	jirl	$ra, $ra, 0
.Ltmp276:                               # EH_LABEL
# %bb.18:                               #   in Loop: Header=BB40_8 Depth=1
	ld.d	$a0, $s1, 192
	ori	$a1, $zero, 8
	st.w	$a1, $sp, 32
	fst.s	$fs2, $sp, 64
	fst.s	$fs2, $sp, 80
	ld.w	$a0, $a0, 8
	addi.d	$a2, $s1, 8
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	st.d	$a1, $sp, 24
	st.w	$a0, $sp, 100
.Ltmp277:                               # EH_LABEL
	addi.d	$a1, $sp, 24
	addi.d	$a3, $sp, 208
	addi.d	$a4, $sp, 88
	move	$a0, $fp
	fmov.s	$fa0, $fs1
	pcaddu18i	$ra, %call36(_ZNK16btCollisionWorld15convexSweepTestEPK13btConvexShapeRK11btTransformS5_RNS_20ConvexResultCallbackEf)
	jirl	$ra, $ra, 0
.Ltmp278:                               # EH_LABEL
# %bb.19:                               #   in Loop: Header=BB40_8 Depth=1
	fld.s	$fa0, $sp, 96
	vldi	$vr1, -1168
	fcmp.cule.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB40_3
# %bb.20:                               #   in Loop: Header=BB40_8 Depth=1
	fst.s	$fa0, $s1, 260
	fmul.s	$fa0, $fs0, $fa0
.Ltmp279:                               # EH_LABEL
	addi.d	$a1, $sp, 208
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN11btRigidBody26predictIntegratedTransformEfR11btTransform)
	jirl	$ra, $ra, 0
.Ltmp280:                               # EH_LABEL
	b	.LBB40_2
.LBB40_21:                              # %._crit_edge
	pcaddu18i	$ra, %call36(_ZN15CProfileManager12Stop_ProfileEv)
	jirl	$ra, $ra, 0
	fld.d	$fs2, $sp, 272                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 280                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 288                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 344                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 352                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 360                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 368                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 376                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 384
	ret
.LBB40_22:
.Ltmp274:                               # EH_LABEL
	b	.LBB40_25
.LBB40_23:
.Ltmp281:                               # EH_LABEL
	move	$fp, $a0
.Ltmp282:                               # EH_LABEL
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(_ZN13btConvexShapeD2Ev)
	jirl	$ra, $ra, 0
.Ltmp283:                               # EH_LABEL
	b	.LBB40_26
.LBB40_24:
.Ltmp286:                               # EH_LABEL
.LBB40_25:
	move	$fp, $a0
.LBB40_26:
.Ltmp287:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN15CProfileManager12Stop_ProfileEv)
	jirl	$ra, $ra, 0
.Ltmp288:                               # EH_LABEL
	b	.LBB40_31
.LBB40_27:
.Ltmp294:                               # EH_LABEL
	b	.LBB40_30
.LBB40_28:
.Ltmp291:                               # EH_LABEL
	b	.LBB40_30
.LBB40_29:
.Ltmp269:                               # EH_LABEL
.LBB40_30:                              # %_ZN14CProfileSampleD2Ev.exit47
	move	$fp, $a0
.LBB40_31:                              # %_ZN14CProfileSampleD2Ev.exit47
.Ltmp295:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN15CProfileManager12Stop_ProfileEv)
	jirl	$ra, $ra, 0
.Ltmp296:                               # EH_LABEL
# %bb.32:                               # %_ZN14CProfileSampleD2Ev.exit48
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB40_33:
.Ltmp297:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end40:
	.size	_ZN23btDiscreteDynamicsWorld19integrateTransformsEf, .Lfunc_end40-_ZN23btDiscreteDynamicsWorld19integrateTransformsEf
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table40:
.Lexception12:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase11-.Lttbaseref11
.Lttbaseref11:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end12-.Lcst_begin12
.Lcst_begin12:
	.uleb128 .Lfunc_begin12-.Lfunc_begin12  # >> Call Site 1 <<
	.uleb128 .Ltmp284-.Lfunc_begin12        #   Call between .Lfunc_begin12 and .Ltmp284
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp284-.Lfunc_begin12        # >> Call Site 2 <<
	.uleb128 .Ltmp285-.Ltmp284              #   Call between .Ltmp284 and .Ltmp285
	.uleb128 .Ltmp286-.Lfunc_begin12        #     jumps to .Ltmp286
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp289-.Lfunc_begin12        # >> Call Site 3 <<
	.uleb128 .Ltmp290-.Ltmp289              #   Call between .Ltmp289 and .Ltmp290
	.uleb128 .Ltmp291-.Lfunc_begin12        #     jumps to .Ltmp291
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp292-.Lfunc_begin12        # >> Call Site 4 <<
	.uleb128 .Ltmp293-.Ltmp292              #   Call between .Ltmp292 and .Ltmp293
	.uleb128 .Ltmp294-.Lfunc_begin12        #     jumps to .Ltmp294
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp267-.Lfunc_begin12        # >> Call Site 5 <<
	.uleb128 .Ltmp268-.Ltmp267              #   Call between .Ltmp267 and .Ltmp268
	.uleb128 .Ltmp269-.Lfunc_begin12        #     jumps to .Ltmp269
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp270-.Lfunc_begin12        # >> Call Site 6 <<
	.uleb128 .Ltmp271-.Ltmp270              #   Call between .Ltmp270 and .Ltmp271
	.uleb128 .Ltmp291-.Lfunc_begin12        #     jumps to .Ltmp291
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp272-.Lfunc_begin12        # >> Call Site 7 <<
	.uleb128 .Ltmp273-.Ltmp272              #   Call between .Ltmp272 and .Ltmp273
	.uleb128 .Ltmp274-.Lfunc_begin12        #     jumps to .Ltmp274
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp275-.Lfunc_begin12        # >> Call Site 8 <<
	.uleb128 .Ltmp276-.Ltmp275              #   Call between .Ltmp275 and .Ltmp276
	.uleb128 .Ltmp286-.Lfunc_begin12        #     jumps to .Ltmp286
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp277-.Lfunc_begin12        # >> Call Site 9 <<
	.uleb128 .Ltmp280-.Ltmp277              #   Call between .Ltmp277 and .Ltmp280
	.uleb128 .Ltmp281-.Lfunc_begin12        #     jumps to .Ltmp281
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp280-.Lfunc_begin12        # >> Call Site 10 <<
	.uleb128 .Ltmp282-.Ltmp280              #   Call between .Ltmp280 and .Ltmp282
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp282-.Lfunc_begin12        # >> Call Site 11 <<
	.uleb128 .Ltmp296-.Ltmp282              #   Call between .Ltmp282 and .Ltmp296
	.uleb128 .Ltmp297-.Lfunc_begin12        #     jumps to .Ltmp297
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp296-.Lfunc_begin12        # >> Call Site 12 <<
	.uleb128 .Lfunc_end40-.Ltmp296          #   Call between .Ltmp296 and .Lfunc_end40
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
	.section	.text._ZN16btCollisionWorld20ConvexResultCallbackD2Ev,"axG",@progbits,_ZN16btCollisionWorld20ConvexResultCallbackD2Ev,comdat
	.weak	_ZN16btCollisionWorld20ConvexResultCallbackD2Ev # -- Begin function _ZN16btCollisionWorld20ConvexResultCallbackD2Ev
	.p2align	5
	.type	_ZN16btCollisionWorld20ConvexResultCallbackD2Ev,@function
_ZN16btCollisionWorld20ConvexResultCallbackD2Ev: # @_ZN16btCollisionWorld20ConvexResultCallbackD2Ev
# %bb.0:
	ret
.Lfunc_end41:
	.size	_ZN16btCollisionWorld20ConvexResultCallbackD2Ev, .Lfunc_end41-_ZN16btCollisionWorld20ConvexResultCallbackD2Ev
                                        # -- End function
	.text
	.globl	_ZN23btDiscreteDynamicsWorld25predictUnconstraintMotionEf # -- Begin function _ZN23btDiscreteDynamicsWorld25predictUnconstraintMotionEf
	.p2align	5
	.type	_ZN23btDiscreteDynamicsWorld25predictUnconstraintMotionEf,@function
_ZN23btDiscreteDynamicsWorld25predictUnconstraintMotionEf: # @_ZN23btDiscreteDynamicsWorld25predictUnconstraintMotionEf
.Lfunc_begin13:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception13
# %bb.0:
	addi.d	$sp, $sp, -48
	.cfi_def_cfa_offset 48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	fst.d	$fs0, $sp, 0                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 56, -48
	fmov.s	$fs0, $fa0
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	pcaddu18i	$ra, %call36(_ZN15CProfileManager13Start_ProfileEPKc)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 284
	blez	$a0, .LBB42_8
# %bb.1:                                # %.lr.ph
	move	$s1, $zero
	move	$s2, $zero
	b	.LBB42_3
	.p2align	4, , 16
.LBB42_2:                               #   in Loop: Header=BB42_3 Depth=1
	addi.d	$s2, $s2, 1
	addi.d	$s1, $s1, 8
	bge	$s2, $a0, .LBB42_8
.LBB42_3:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $fp, 296
	ldx.d	$s0, $a1, $s1
	ld.bu	$a1, $s0, 216
	andi	$a1, $a1, 3
	bnez	$a1, .LBB42_2
# %bb.4:                                #   in Loop: Header=BB42_3 Depth=1
.Ltmp298:                               # EH_LABEL
	move	$a0, $s0
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(_ZN11btRigidBody19integrateVelocitiesEf)
	jirl	$ra, $ra, 0
.Ltmp299:                               # EH_LABEL
# %bb.5:                                #   in Loop: Header=BB42_3 Depth=1
.Ltmp300:                               # EH_LABEL
	move	$a0, $s0
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(_ZN11btRigidBody12applyDampingEf)
	jirl	$ra, $ra, 0
.Ltmp301:                               # EH_LABEL
# %bb.6:                                #   in Loop: Header=BB42_3 Depth=1
	addi.d	$a1, $s0, 72
.Ltmp302:                               # EH_LABEL
	move	$a0, $s0
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(_ZN11btRigidBody26predictIntegratedTransformEfR11btTransform)
	jirl	$ra, $ra, 0
.Ltmp303:                               # EH_LABEL
# %bb.7:                                # %._crit_edge14
                                        #   in Loop: Header=BB42_3 Depth=1
	ld.w	$a0, $fp, 284
	b	.LBB42_2
.LBB42_8:                               # %._crit_edge
	fld.d	$fs0, $sp, 0                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(_ZN15CProfileManager12Stop_ProfileEv)
	jr	$t8
.LBB42_9:
.Ltmp304:                               # EH_LABEL
	move	$fp, $a0
.Ltmp305:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN15CProfileManager12Stop_ProfileEv)
	jirl	$ra, $ra, 0
.Ltmp306:                               # EH_LABEL
# %bb.10:                               # %_ZN14CProfileSampleD2Ev.exit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB42_11:
.Ltmp307:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end42:
	.size	_ZN23btDiscreteDynamicsWorld25predictUnconstraintMotionEf, .Lfunc_end42-_ZN23btDiscreteDynamicsWorld25predictUnconstraintMotionEf
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table42:
.Lexception13:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase12-.Lttbaseref12
.Lttbaseref12:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end13-.Lcst_begin13
.Lcst_begin13:
	.uleb128 .Lfunc_begin13-.Lfunc_begin13  # >> Call Site 1 <<
	.uleb128 .Ltmp298-.Lfunc_begin13        #   Call between .Lfunc_begin13 and .Ltmp298
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp298-.Lfunc_begin13        # >> Call Site 2 <<
	.uleb128 .Ltmp303-.Ltmp298              #   Call between .Ltmp298 and .Ltmp303
	.uleb128 .Ltmp304-.Lfunc_begin13        #     jumps to .Ltmp304
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp303-.Lfunc_begin13        # >> Call Site 3 <<
	.uleb128 .Ltmp305-.Ltmp303              #   Call between .Ltmp303 and .Ltmp305
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp305-.Lfunc_begin13        # >> Call Site 4 <<
	.uleb128 .Ltmp306-.Ltmp305              #   Call between .Ltmp305 and .Ltmp306
	.uleb128 .Ltmp307-.Lfunc_begin13        #     jumps to .Ltmp307
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp306-.Lfunc_begin13        # >> Call Site 5 <<
	.uleb128 .Lfunc_end42-.Ltmp306          #   Call between .Ltmp306 and .Lfunc_end42
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end13:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase12:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN23btDiscreteDynamicsWorld15debugDrawSphereEfRK11btTransformRK9btVector3 # -- Begin function _ZN23btDiscreteDynamicsWorld15debugDrawSphereEfRK11btTransformRK9btVector3
	.p2align	5
	.type	_ZN23btDiscreteDynamicsWorld15debugDrawSphereEfRK11btTransformRK9btVector3,@function
_ZN23btDiscreteDynamicsWorld15debugDrawSphereEfRK11btTransformRK9btVector3: # @_ZN23btDiscreteDynamicsWorld15debugDrawSphereEfRK11btTransformRK9btVector3
	.cfi_startproc
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
	fst.d	$fs0, $sp, 144                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 136                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 128                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 120                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 112                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 104                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 96                   # 8-byte Folded Spill
	fst.d	$fs7, $sp, 88                   # 8-byte Folded Spill
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
	move	$fp, $a2
	move	$s0, $a0
	fld.s	$fa1, $a1, 48
	fst.s	$fa1, $sp, 20                   # 4-byte Folded Spill
	fld.s	$fs1, $a1, 52
	fld.s	$fa1, $a1, 4
	fld.s	$fs2, $a1, 56
	fld.s	$fa2, $a1, 0
	movgr2fr.w	$fa3, $zero
	fmul.s	$fa4, $fa1, $fa3
	fld.s	$fa5, $a1, 8
	fld.s	$fa6, $a1, 20
	fld.s	$fa7, $a1, 16
	fmadd.s	$ft0, $fa2, $fa0, $fa4
	fmadd.s	$fs4, $fa5, $fa3, $ft0
	fmul.s	$ft0, $fa6, $fa3
	fmadd.s	$ft1, $fa7, $fa0, $ft0
	fld.s	$ft2, $a1, 24
	fld.s	$ft3, $a1, 36
	fld.s	$ft4, $a1, 32
	fld.s	$ft5, $a1, 40
	fmadd.s	$fs5, $ft2, $fa3, $ft1
	fmul.s	$ft1, $ft3, $fa3
	fmadd.s	$ft6, $ft4, $fa0, $ft1
	fmadd.s	$fs6, $ft5, $fa3, $ft6
	fmul.s	$fa1, $fa0, $fa1
	fmadd.s	$fa1, $fa2, $fa3, $fa1
	fmadd.s	$fs7, $fa5, $fa3, $fa1
	fst.s	$fs7, $sp, 24                   # 4-byte Folded Spill
	fmul.s	$fa1, $fa0, $fa6
	fmadd.s	$fa1, $fa7, $fa3, $fa1
	fmadd.s	$fs3, $ft2, $fa3, $fa1
	fmul.s	$fa1, $fa0, $ft3
	fmadd.s	$fa1, $ft4, $fa3, $fa1
	fmadd.s	$fs0, $ft5, $fa3, $fa1
	ld.d	$a0, $a0, 0
	fmadd.s	$fa1, $fa2, $fa3, $fa4
	fmadd.s	$fa1, $fa5, $fa0, $fa1
	fst.s	$fa1, $sp, 44                   # 4-byte Folded Spill
	fmadd.s	$fa1, $fa7, $fa3, $ft0
	ld.d	$a1, $a0, 32
	fmadd.s	$fa1, $ft2, $fa0, $fa1
	fst.s	$fa1, $sp, 40                   # 4-byte Folded Spill
	fmadd.s	$fa1, $ft4, $fa3, $ft1
	fmadd.s	$fa0, $ft5, $fa0, $fa1
	fst.s	$fa0, $sp, 36                   # 4-byte Folded Spill
	move	$a0, $s0
	jirl	$ra, $a1, 0
	fld.s	$fa3, $sp, 20                   # 4-byte Folded Reload
	fsub.s	$fa0, $fa3, $fs4
	fmov.s	$fa4, $fs1
	fsub.s	$fa1, $fs1, $fs5
	fsub.s	$fa2, $fs2, $fs6
	movfr2gr.s	$s5, $fa0
	movfr2gr.s	$a1, $fa1
	bstrins.d	$s5, $a1, 63, 32
	movfr2gr.s	$a1, $fa2
	bstrpick.d	$s6, $a1, 31, 0
	st.d	$s5, $sp, 72
	st.d	$s6, $sp, 80
	fadd.s	$fa0, $fa3, $fs7
	fmov.s	$fs1, $fa3
	fadd.s	$fa1, $fa4, $fs3
	fmov.s	$fs7, $fa4
	fadd.s	$fa2, $fs2, $fs0
	movfr2gr.s	$s1, $fa0
	movfr2gr.s	$a1, $fa1
	bstrins.d	$s1, $a1, 63, 32
	movfr2gr.s	$a1, $fa2
	bstrpick.d	$s2, $a1, 31, 0
	st.d	$s1, $sp, 56
	st.d	$s2, $sp, 64
	st.d	$s2, $sp, 48                    # 8-byte Folded Spill
	ld.d	$a1, $a0, 0
	ld.d	$a4, $a1, 40
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 56
	move	$a3, $fp
	jirl	$ra, $a4, 0
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 32
	move	$a0, $s0
	jirl	$ra, $a1, 0
	st.d	$s1, $sp, 72
	st.d	$s2, $sp, 80
	fadd.s	$fa0, $fs1, $fs4
	fadd.s	$fa1, $fs7, $fs5
	fadd.s	$fa2, $fs2, $fs6
	movfr2gr.s	$s7, $fa0
	movfr2gr.s	$a1, $fa1
	bstrins.d	$s7, $a1, 63, 32
	movfr2gr.s	$a1, $fa2
	bstrpick.d	$s8, $a1, 31, 0
	st.d	$s7, $sp, 56
	st.d	$s8, $sp, 64
	ld.d	$a1, $a0, 0
	ld.d	$a4, $a1, 40
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 56
	move	$a3, $fp
	jirl	$ra, $a4, 0
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 32
	move	$a0, $s0
	jirl	$ra, $a1, 0
	st.d	$s7, $sp, 72
	st.d	$s8, $sp, 80
	fld.s	$fa0, $sp, 24                   # 4-byte Folded Reload
	fsub.s	$fa0, $fs1, $fa0
	fsub.s	$fa1, $fs7, $fs3
	fsub.s	$fa2, $fs2, $fs0
	movfr2gr.s	$s3, $fa0
	movfr2gr.s	$a1, $fa1
	bstrins.d	$s3, $a1, 63, 32
	movfr2gr.s	$a1, $fa2
	bstrpick.d	$s2, $a1, 31, 0
	st.d	$s3, $sp, 56
	st.d	$s2, $sp, 64
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	ld.d	$a1, $a0, 0
	ld.d	$a4, $a1, 40
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 56
	move	$a3, $fp
	jirl	$ra, $a4, 0
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 32
	move	$a0, $s0
	jirl	$ra, $a1, 0
	st.d	$s3, $sp, 72
	st.d	$s2, $sp, 80
	st.d	$s5, $sp, 56
	st.d	$s6, $sp, 64
	ld.d	$a1, $a0, 0
	ld.d	$a4, $a1, 40
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 56
	move	$a3, $fp
	jirl	$ra, $a4, 0
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 32
	move	$a0, $s0
	jirl	$ra, $a1, 0
	st.d	$s5, $sp, 72
	st.d	$s6, $sp, 80
	fld.s	$fs3, $sp, 44                   # 4-byte Folded Reload
	fadd.s	$fa0, $fs1, $fs3
	fld.s	$fs4, $sp, 40                   # 4-byte Folded Reload
	fadd.s	$fa1, $fs7, $fs4
	fld.s	$fs5, $sp, 36                   # 4-byte Folded Reload
	fadd.s	$fa2, $fs2, $fs5
	movfr2gr.s	$s2, $fa0
	movfr2gr.s	$a1, $fa1
	bstrins.d	$s2, $a1, 63, 32
	movfr2gr.s	$a1, $fa2
	bstrpick.d	$s4, $a1, 31, 0
	st.d	$s2, $sp, 56
	st.d	$s4, $sp, 64
	ld.d	$a1, $a0, 0
	ld.d	$a4, $a1, 40
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 56
	move	$a3, $fp
	jirl	$ra, $a4, 0
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 32
	move	$a0, $s0
	jirl	$ra, $a1, 0
	st.d	$s2, $sp, 72
	st.d	$s4, $sp, 80
	st.d	$s7, $sp, 56
	st.d	$s8, $sp, 64
	ld.d	$a1, $a0, 0
	ld.d	$a4, $a1, 40
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 56
	move	$a3, $fp
	jirl	$ra, $a4, 0
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 32
	move	$a0, $s0
	jirl	$ra, $a1, 0
	st.d	$s7, $sp, 72
	st.d	$s8, $sp, 80
	fsub.s	$fa0, $fs1, $fs3
	fsub.s	$fa1, $fs7, $fs4
	fsub.s	$fa2, $fs2, $fs5
	movfr2gr.s	$s7, $fa0
	movfr2gr.s	$a1, $fa1
	bstrins.d	$s7, $a1, 63, 32
	movfr2gr.s	$a1, $fa2
	bstrpick.d	$s8, $a1, 31, 0
	st.d	$s7, $sp, 56
	st.d	$s8, $sp, 64
	ld.d	$a1, $a0, 0
	ld.d	$a4, $a1, 40
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 56
	move	$a3, $fp
	jirl	$ra, $a4, 0
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 32
	move	$a0, $s0
	jirl	$ra, $a1, 0
	st.d	$s7, $sp, 72
	st.d	$s8, $sp, 80
	st.d	$s5, $sp, 56
	st.d	$s6, $sp, 64
	ld.d	$a1, $a0, 0
	ld.d	$a4, $a1, 40
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 56
	move	$a3, $fp
	jirl	$ra, $a4, 0
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 32
	move	$a0, $s0
	jirl	$ra, $a1, 0
	st.d	$s3, $sp, 72
	ld.d	$s5, $sp, 24                    # 8-byte Folded Reload
	st.d	$s5, $sp, 80
	st.d	$s2, $sp, 56
	st.d	$s4, $sp, 64
	ld.d	$a1, $a0, 0
	ld.d	$a4, $a1, 40
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 56
	move	$a3, $fp
	jirl	$ra, $a4, 0
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 32
	move	$a0, $s0
	jirl	$ra, $a1, 0
	st.d	$s2, $sp, 72
	st.d	$s4, $sp, 80
	st.d	$s1, $sp, 56
	ld.d	$s2, $sp, 48                    # 8-byte Folded Reload
	st.d	$s2, $sp, 64
	ld.d	$a1, $a0, 0
	ld.d	$a4, $a1, 40
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 56
	move	$a3, $fp
	jirl	$ra, $a4, 0
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 32
	move	$a0, $s0
	jirl	$ra, $a1, 0
	st.d	$s1, $sp, 72
	st.d	$s2, $sp, 80
	st.d	$s7, $sp, 56
	st.d	$s8, $sp, 64
	ld.d	$a1, $a0, 0
	ld.d	$a4, $a1, 40
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 56
	move	$a3, $fp
	jirl	$ra, $a4, 0
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 32
	move	$a0, $s0
	jirl	$ra, $a1, 0
	st.d	$s7, $sp, 72
	st.d	$s8, $sp, 80
	st.d	$s3, $sp, 56
	st.d	$s5, $sp, 64
	ld.d	$a1, $a0, 0
	ld.d	$a4, $a1, 40
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 56
	move	$a3, $fp
	jirl	$ra, $a4, 0
	fld.d	$fs7, $sp, 88                   # 8-byte Folded Reload
	fld.d	$fs6, $sp, 96                   # 8-byte Folded Reload
	fld.d	$fs5, $sp, 104                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 112                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 120                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 128                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 136                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 144                  # 8-byte Folded Reload
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
.Lfunc_end43:
	.size	_ZN23btDiscreteDynamicsWorld15debugDrawSphereEfRK11btTransformRK9btVector3, .Lfunc_end43-_ZN23btDiscreteDynamicsWorld15debugDrawSphereEfRK11btTransformRK9btVector3
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN17DebugDrawcallbackD2Ev,"axG",@progbits,_ZN17DebugDrawcallbackD2Ev,comdat
	.weak	_ZN17DebugDrawcallbackD2Ev      # -- Begin function _ZN17DebugDrawcallbackD2Ev
	.p2align	5
	.type	_ZN17DebugDrawcallbackD2Ev,@function
_ZN17DebugDrawcallbackD2Ev:             # @_ZN17DebugDrawcallbackD2Ev
.Lfunc_begin14:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception14
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
	addi.d	$a0, $a0, 8
.Ltmp308:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN31btInternalTriangleIndexCallbackD2Ev)
	jirl	$ra, $ra, 0
.Ltmp309:                               # EH_LABEL
# %bb.1:
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZN18btTriangleCallbackD2Ev)
	jr	$t8
.LBB44_2:
.Ltmp310:                               # EH_LABEL
	move	$s0, $a0
.Ltmp311:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN18btTriangleCallbackD2Ev)
	jirl	$ra, $ra, 0
.Ltmp312:                               # EH_LABEL
# %bb.3:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB44_4:
.Ltmp313:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end44:
	.size	_ZN17DebugDrawcallbackD2Ev, .Lfunc_end44-_ZN17DebugDrawcallbackD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN17DebugDrawcallbackD2Ev,"aG",@progbits,_ZN17DebugDrawcallbackD2Ev,comdat
	.p2align	2, 0x0
GCC_except_table44:
.Lexception14:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase13-.Lttbaseref13
.Lttbaseref13:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end14-.Lcst_begin14
.Lcst_begin14:
	.uleb128 .Ltmp308-.Lfunc_begin14        # >> Call Site 1 <<
	.uleb128 .Ltmp309-.Ltmp308              #   Call between .Ltmp308 and .Ltmp309
	.uleb128 .Ltmp310-.Lfunc_begin14        #     jumps to .Ltmp310
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp309-.Lfunc_begin14        # >> Call Site 2 <<
	.uleb128 .Ltmp311-.Ltmp309              #   Call between .Ltmp309 and .Ltmp311
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp311-.Lfunc_begin14        # >> Call Site 3 <<
	.uleb128 .Ltmp312-.Ltmp311              #   Call between .Ltmp311 and .Ltmp312
	.uleb128 .Ltmp313-.Lfunc_begin14        #     jumps to .Ltmp313
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp312-.Lfunc_begin14        # >> Call Site 4 <<
	.uleb128 .Lfunc_end44-.Ltmp312          #   Call between .Ltmp312 and .Lfunc_end44
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end14:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase13:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN12btIDebugDraw13drawTransformERK11btTransformf
.LCPI45_0:
	.word	0x3f333333                      # float 0.699999988
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
.LCPI45_1:
	.word	0x00000000                      # float 0
	.word	0x3f333333                      # float 0.699999988
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
.LCPI45_2:
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x3f333333                      # float 0.699999988
	.word	0x00000000                      # float 0
	.section	.text._ZN12btIDebugDraw13drawTransformERK11btTransformf,"axG",@progbits,_ZN12btIDebugDraw13drawTransformERK11btTransformf,comdat
	.weak	_ZN12btIDebugDraw13drawTransformERK11btTransformf
	.p2align	5
	.type	_ZN12btIDebugDraw13drawTransformERK11btTransformf,@function
_ZN12btIDebugDraw13drawTransformERK11btTransformf: # @_ZN12btIDebugDraw13drawTransformERK11btTransformf
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -112
	.cfi_def_cfa_offset 112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 80                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 72                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 56, -32
	.cfi_offset 57, -40
	move	$s0, $a1
	vld	$vr1, $a1, 48
	fmov.s	$fs0, $fa0
	move	$fp, $a0
	vst	$vr1, $sp, 56
	fld.s	$fa0, $a1, 4
	fld.s	$fa1, $a1, 0
	movgr2fr.w	$fs1, $zero
	fld.s	$fa2, $a1, 8
	fmul.s	$fa0, $fa0, $fs1
	fld.s	$fa3, $a1, 20
	fmadd.s	$fa0, $fa1, $fs0, $fa0
	fmadd.s	$fa0, $fa2, $fs1, $fa0
	fld.s	$fa1, $a1, 16
	fmul.s	$fa2, $fa3, $fs1
	fld.s	$fa3, $a1, 24
	fld.s	$fa4, $a1, 36
	fld.s	$fa5, $a1, 32
	fmadd.s	$fa1, $fa1, $fs0, $fa2
	fmadd.s	$fa1, $fa3, $fs1, $fa1
	fmul.s	$fa2, $fa4, $fs1
	fmadd.s	$fa2, $fa5, $fs0, $fa2
	fld.s	$fa3, $a1, 40
	fld.s	$fa4, $sp, 56
	fld.s	$fa5, $sp, 60
	fld.s	$fa6, $sp, 64
	fmadd.s	$fa2, $fa3, $fs1, $fa2
	fadd.s	$fa0, $fa0, $fa4
	fadd.s	$fa1, $fa1, $fa5
	fadd.s	$fa2, $fa2, $fa6
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa1
	bstrins.d	$a0, $a1, 63, 32
	st.d	$a0, $sp, 40
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.LCPI45_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI45_0)
	movfr2gr.s	$a1, $fa2
	ld.d	$a4, $a0, 40
	bstrpick.d	$a0, $a1, 31, 0
	st.d	$a0, $sp, 48
	vst	$vr0, $sp, 16
	addi.d	$a1, $sp, 56
	addi.d	$a2, $sp, 40
	addi.d	$a3, $sp, 16
	move	$a0, $fp
	jirl	$ra, $a4, 0
	fld.s	$fa0, $s0, 4
	fld.s	$fa1, $s0, 0
	fld.s	$fa2, $s0, 8
	fmul.s	$fa0, $fs0, $fa0
	fld.s	$fa3, $s0, 20
	fmadd.s	$fa0, $fa1, $fs1, $fa0
	fmadd.s	$fa0, $fa2, $fs1, $fa0
	fld.s	$fa1, $s0, 16
	fmul.s	$fa2, $fs0, $fa3
	fld.s	$fa3, $s0, 24
	fld.s	$fa4, $s0, 36
	fld.s	$fa5, $s0, 32
	fmadd.s	$fa1, $fa1, $fs1, $fa2
	fmadd.s	$fa1, $fa3, $fs1, $fa1
	fmul.s	$fa2, $fs0, $fa4
	fmadd.s	$fa2, $fa5, $fs1, $fa2
	fld.s	$fa3, $s0, 40
	fld.s	$fa4, $sp, 56
	fld.s	$fa5, $sp, 60
	fld.s	$fa6, $sp, 64
	fmadd.s	$fa2, $fa3, $fs1, $fa2
	fadd.s	$fa0, $fa0, $fa4
	fadd.s	$fa1, $fa1, $fa5
	fadd.s	$fa2, $fa2, $fa6
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa1
	bstrins.d	$a0, $a1, 63, 32
	st.d	$a0, $sp, 40
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.LCPI45_1)
	vld	$vr0, $a1, %pc_lo12(.LCPI45_1)
	movfr2gr.s	$a1, $fa2
	ld.d	$a4, $a0, 40
	bstrpick.d	$a0, $a1, 31, 0
	st.d	$a0, $sp, 48
	vst	$vr0, $sp, 16
	addi.d	$a1, $sp, 56
	addi.d	$a2, $sp, 40
	addi.d	$a3, $sp, 16
	move	$a0, $fp
	jirl	$ra, $a4, 0
	fld.s	$fa0, $s0, 4
	fld.s	$fa1, $s0, 0
	fld.s	$fa2, $s0, 8
	fmul.s	$fa0, $fa0, $fs1
	fld.s	$fa3, $s0, 20
	fmadd.s	$fa0, $fa1, $fs1, $fa0
	fmadd.s	$fa0, $fa2, $fs0, $fa0
	fld.s	$fa1, $s0, 16
	fmul.s	$fa2, $fa3, $fs1
	fld.s	$fa3, $s0, 24
	fld.s	$fa4, $s0, 36
	fld.s	$fa5, $s0, 32
	fmadd.s	$fa1, $fa1, $fs1, $fa2
	fmadd.s	$fa1, $fa3, $fs0, $fa1
	fmul.s	$fa2, $fa4, $fs1
	fmadd.s	$fa2, $fa5, $fs1, $fa2
	fld.s	$fa3, $s0, 40
	fld.s	$fa4, $sp, 56
	fld.s	$fa5, $sp, 60
	fld.s	$fa6, $sp, 64
	fmadd.s	$fa2, $fa3, $fs0, $fa2
	fadd.s	$fa0, $fa0, $fa4
	fadd.s	$fa1, $fa1, $fa5
	fadd.s	$fa2, $fa2, $fa6
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa1
	bstrins.d	$a0, $a1, 63, 32
	st.d	$a0, $sp, 40
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.LCPI45_2)
	vld	$vr0, $a1, %pc_lo12(.LCPI45_2)
	movfr2gr.s	$a1, $fa2
	ld.d	$a4, $a0, 40
	bstrpick.d	$a0, $a1, 31, 0
	st.d	$a0, $sp, 48
	vst	$vr0, $sp, 16
	addi.d	$a1, $sp, 56
	addi.d	$a2, $sp, 40
	addi.d	$a3, $sp, 16
	move	$a0, $fp
	jirl	$ra, $a4, 0
	fld.d	$fs1, $sp, 72                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 80                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.Lfunc_end45:
	.size	_ZN12btIDebugDraw13drawTransformERK11btTransformf, .Lfunc_end45-_ZN12btIDebugDraw13drawTransformERK11btTransformf
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZN12btIDebugDraw7drawArcERK9btVector3S2_S2_ffffS2_bf
.LCPI46_0:
	.word	0x3c8efa35                      # float 0.0174532924
	.section	.text._ZN12btIDebugDraw7drawArcERK9btVector3S2_S2_ffffS2_bf,"axG",@progbits,_ZN12btIDebugDraw7drawArcERK9btVector3S2_S2_ffffS2_bf,comdat
	.weak	_ZN12btIDebugDraw7drawArcERK9btVector3S2_S2_ffffS2_bf
	.p2align	5
	.type	_ZN12btIDebugDraw7drawArcERK9btVector3S2_S2_ffffS2_bf,@function
_ZN12btIDebugDraw7drawArcERK9btVector3S2_S2_ffffS2_bf: # @_ZN12btIDebugDraw7drawArcERK9btVector3S2_S2_ffffS2_bf
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
	fst.d	$fs0, $sp, 120                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 112                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 104                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 96                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 88                   # 8-byte Folded Spill
	fst.d	$fs5, $sp, 80                   # 8-byte Folded Spill
	fst.d	$fs6, $sp, 72                   # 8-byte Folded Spill
	fst.d	$fs7, $sp, 64                   # 8-byte Folded Spill
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
	.cfi_offset 58, -88
	.cfi_offset 59, -96
	.cfi_offset 60, -104
	.cfi_offset 61, -112
	.cfi_offset 62, -120
	.cfi_offset 63, -128
	move	$s2, $a5
	move	$fp, $a4
	fmov.s	$fs0, $fa2
	fmov.s	$fs6, $fa1
	move	$s3, $a3
	move	$s0, $a1
	move	$s1, $a0
	fld.s	$ft1, $a3, 4
	fld.s	$fa1, $a2, 8
	fld.s	$fa2, $a2, 4
	fld.s	$fa5, $a3, 8
	fneg.s	$fa6, $ft1
	fmul.s	$fa6, $fa1, $fa6
	fld.s	$fa7, $a2, 0
	fld.s	$ft0, $a3, 0
	fmadd.s	$fa6, $fa2, $fa5, $fa6
	fst.s	$fa6, $sp, 20                   # 4-byte Folded Spill
	fneg.s	$fa6, $fa5
	fmul.s	$fa6, $fa7, $fa6
	fmadd.s	$fa1, $fa1, $ft0, $fa6
	fst.s	$fa1, $sp, 16                   # 4-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI46_0)
	fld.s	$fa1, $a0, %pc_lo12(.LCPI46_0)
	fneg.s	$fa6, $ft0
	fmul.s	$fa2, $fa2, $fa6
	fmadd.s	$fa2, $fa7, $ft1, $fa2
	fst.s	$fa2, $sp, 12                   # 4-byte Folded Spill
	fmul.s	$fa1, $fa4, $fa1
	fsub.s	$fs3, $fa3, $fs0
	fdiv.s	$fa1, $fs3, $fa1
	ftintrz.w.s	$fa1, $fa1
	movfr2gr.s	$a0, $fa1
	ori	$a1, $zero, 1
	sltu	$a2, $a1, $a0
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$s4, $a0, $a1
	fmul.s	$fs7, $fa0, $ft0
	fmul.s	$fs4, $fa0, $ft1
	fmov.s	$fs1, $fa0
	fmul.s	$fs5, $fa0, $fa5
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(cosf)
	jirl	$ra, $ra, 0
	fmul.s	$fa1, $fs7, $fa0
	fmul.s	$fa2, $fs4, $fa0
	fld.s	$fa3, $s0, 0
	fld.s	$fa4, $s0, 4
	fld.s	$fa5, $s0, 8
	fmul.s	$fa0, $fs5, $fa0
	fadd.s	$fs7, $fa3, $fa1
	fadd.s	$fs2, $fa2, $fa4
	fadd.s	$fa0, $fa0, $fa5
	fst.s	$fa0, $sp, 8                    # 4-byte Folded Spill
	fld.s	$fa0, $sp, 20                   # 4-byte Folded Reload
	fmul.s	$fs5, $fs6, $fa0
	fld.s	$fa0, $sp, 16                   # 4-byte Folded Reload
	fmul.s	$fs4, $fs6, $fa0
	fld.s	$fa0, $sp, 12                   # 4-byte Folded Reload
	fmul.s	$fs6, $fs6, $fa0
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(sinf)
	jirl	$ra, $ra, 0
	fst.s	$fs5, $sp, 16                   # 4-byte Folded Spill
	fmul.s	$fa1, $fs5, $fa0
	fmov.s	$fs5, $fs4
	fmul.s	$fa2, $fs4, $fa0
	fmov.s	$fs4, $fs6
	fmul.s	$fa0, $fs6, $fa0
	fadd.s	$fa1, $fs7, $fa1
	fadd.s	$fa2, $fs2, $fa2
	fld.s	$fa3, $sp, 8                    # 4-byte Folded Reload
	fadd.s	$fa0, $fa3, $fa0
	movfr2gr.s	$a0, $fa1
	movfr2gr.s	$a1, $fa2
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa0
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $sp, 48
	st.d	$a1, $sp, 56
	beqz	$s2, .LBB46_2
# %bb.1:
	ld.d	$a0, $s1, 0
	ld.d	$a4, $a0, 40
	addi.d	$a2, $sp, 48
	move	$a0, $s1
	move	$a1, $s0
	move	$a3, $fp
	jirl	$ra, $a4, 0
.LBB46_2:
	fld.s	$fs2, $sp, 16                   # 4-byte Folded Reload
	blez	$s4, .LBB46_5
# %bb.3:                                # %.lr.ph
	fmov.s	$fs7, $fs5
	fmov.s	$fs6, $fs4
	fmov.s	$fa4, $fs1
	move	$s5, $zero
	bstrpick.d	$a0, $s4, 31, 0
	movgr2fr.d	$fa0, $a0
	ffint.s.l	$fa0, $fa0
	fst.s	$fa0, $sp, 20                   # 4-byte Folded Spill
	fst.s	$fs3, $sp, 28                   # 4-byte Folded Spill
	fst.s	$fs1, $sp, 24                   # 4-byte Folded Spill
	.p2align	4, , 16
.LBB46_4:                               # =>This Inner Loop Header: Depth=1
	addi.w	$s5, $s5, 1
	bstrpick.d	$a0, $s5, 31, 0
	movgr2fr.d	$fa0, $a0
	ffint.s.l	$fa0, $fa0
	fmul.s	$fa0, $fs3, $fa0
	fld.s	$fa1, $sp, 20                   # 4-byte Folded Reload
	fdiv.s	$fa0, $fa0, $fa1
	fld.s	$fa1, $s3, 0
	fld.s	$fa2, $s3, 4
	fld.s	$fa3, $s3, 8
	fmov.s	$fs1, $fs7
	fmov.s	$fs7, $fs2
	fadd.s	$fs2, $fs0, $fa0
	fmov.s	$fs5, $fs0
	fmul.s	$fs0, $fa4, $fa1
	fmul.s	$fs3, $fa4, $fa2
	fmul.s	$fs4, $fa4, $fa3
	fmov.s	$fa0, $fs2
	pcaddu18i	$ra, %call36(cosf)
	jirl	$ra, $ra, 0
	fmul.s	$fa1, $fs0, $fa0
	fmul.s	$fa2, $fs3, $fa0
	fld.s	$fa3, $s0, 0
	fld.s	$fa4, $s0, 4
	fld.s	$fa5, $s0, 8
	fmul.s	$fa0, $fa0, $fs4
	fadd.s	$fs0, $fa3, $fa1
	fadd.s	$fs3, $fa2, $fa4
	fadd.s	$fs4, $fa0, $fa5
	fmov.s	$fa0, $fs2
	fmov.s	$fs2, $fs7
	fmov.s	$fs7, $fs1
	pcaddu18i	$ra, %call36(sinf)
	jirl	$ra, $ra, 0
	fmul.s	$fa1, $fs2, $fa0
	fmul.s	$fa2, $fs1, $fa0
	fadd.s	$fa1, $fs0, $fa1
	fmov.s	$fs0, $fs5
	fadd.s	$fa2, $fs3, $fa2
	fld.s	$fs3, $sp, 28                   # 4-byte Folded Reload
	movfr2gr.s	$a0, $fa1
	movfr2gr.s	$a1, $fa2
	bstrins.d	$a0, $a1, 63, 32
	ld.d	$a1, $s1, 0
	fmul.s	$fa0, $fs6, $fa0
	fadd.s	$fa0, $fs4, $fa0
	st.d	$a0, $sp, 32
	ld.d	$a4, $a1, 40
	movfr2gr.s	$a0, $fa0
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $sp, 40
	addi.d	$a1, $sp, 48
	addi.d	$a2, $sp, 32
	move	$a0, $s1
	move	$a3, $fp
	jirl	$ra, $a4, 0
	fld.s	$fa4, $sp, 24                   # 4-byte Folded Reload
	vld	$vr0, $sp, 32
	vst	$vr0, $sp, 48
	bne	$s4, $s5, .LBB46_4
.LBB46_5:                               # %._crit_edge
	beqz	$s2, .LBB46_7
# %bb.6:
	ld.d	$a0, $s1, 0
	ld.d	$a4, $a0, 40
	addi.d	$a2, $sp, 48
	move	$a0, $s1
	move	$a1, $s0
	move	$a3, $fp
	jirl	$ra, $a4, 0
.LBB46_7:
	fld.d	$fs7, $sp, 64                   # 8-byte Folded Reload
	fld.d	$fs6, $sp, 72                   # 8-byte Folded Reload
	fld.d	$fs5, $sp, 80                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 88                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 96                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 104                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 112                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 120                  # 8-byte Folded Reload
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
.Lfunc_end46:
	.size	_ZN12btIDebugDraw7drawArcERK9btVector3S2_S2_ffffS2_bf, .Lfunc_end46-_ZN12btIDebugDraw7drawArcERK9btVector3S2_S2_ffffS2_bf
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZN12btIDebugDraw15drawSpherePatchERK9btVector3S2_S2_fffffS2_f
.LCPI47_0:
	.word	0x3c8efa35                      # float 0.0174532924
.LCPI47_1:
	.word	0xbfc90fdb                      # float -1.57079637
.LCPI47_2:
	.word	0x3fc90fdb                      # float 1.57079637
.LCPI47_3:
	.word	0xc0490fdb                      # float -3.14159274
.LCPI47_4:
	.word	0x40c90fdb                      # float 6.28318548
.LCPI47_5:
	.word	0x40490fdb                      # float 3.14159274
	.section	.text._ZN12btIDebugDraw15drawSpherePatchERK9btVector3S2_S2_fffffS2_f,"axG",@progbits,_ZN12btIDebugDraw15drawSpherePatchERK9btVector3S2_S2_fffffS2_f,comdat
	.weak	_ZN12btIDebugDraw15drawSpherePatchERK9btVector3S2_S2_fffffS2_f
	.p2align	5
	.type	_ZN12btIDebugDraw15drawSpherePatchERK9btVector3S2_S2_fffffS2_f,@function
_ZN12btIDebugDraw15drawSpherePatchERK9btVector3S2_S2_fffffS2_f: # @_ZN12btIDebugDraw15drawSpherePatchERK9btVector3S2_S2_fffffS2_f
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -2032
	.cfi_def_cfa_offset 2032
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
	fst.d	$fs3, $sp, 1912                 # 8-byte Folded Spill
	fst.d	$fs4, $sp, 1904                 # 8-byte Folded Spill
	fst.d	$fs5, $sp, 1896                 # 8-byte Folded Spill
	fst.d	$fs6, $sp, 1888                 # 8-byte Folded Spill
	fst.d	$fs7, $sp, 1880                 # 8-byte Folded Spill
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
	addi.d	$sp, $sp, -656
	.cfi_def_cfa_offset 2688
	move	$fp, $a2
	fld.s	$fa6, $a2, 0
	fld.s	$fa7, $a2, 4
	move	$s0, $a4
	move	$s1, $a3
	move	$s2, $a1
	move	$s3, $a0
	fmul.s	$ft0, $fa0, $fa6
	fmul.s	$ft1, $fa0, $fa7
	fld.s	$ft9, $a2, 8
	fld.s	$ft2, $a1, 0
	fld.s	$ft3, $a1, 4
	fld.s	$ft4, $a1, 8
	fst.s	$fa0, $sp, 52                   # 4-byte Folded Spill
	fmul.s	$ft5, $fa0, $ft9
	fadd.s	$ft6, $ft0, $ft2
	fadd.s	$ft7, $ft1, $ft3
	fadd.s	$ft8, $ft5, $ft4
	movfr2gr.s	$a0, $ft6
	movfr2gr.s	$a1, $ft7
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $ft8
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $sp, 152
	st.d	$a1, $sp, 160
	fsub.s	$ft0, $ft2, $ft0
	fsub.s	$ft1, $ft3, $ft1
	fsub.s	$ft2, $ft4, $ft5
	movfr2gr.s	$a0, $ft0
	movfr2gr.s	$a1, $ft1
	bstrins.d	$a0, $a1, 63, 32
	pcalau12i	$a1, %pc_hi20(.LCPI47_0)
	fld.s	$ft1, $a1, %pc_lo12(.LCPI47_0)
	movfr2gr.s	$a1, $ft2
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $sp, 136
	fld.s	$ft0, $a3, 4
	st.d	$a1, $sp, 144
	fmul.s	$fa5, $fa5, $ft1
	fld.s	$ft1, $a3, 8
	fneg.s	$ft2, $ft0
	fmul.s	$ft2, $ft9, $ft2
	fld.s	$ft3, $a3, 0
	fneg.s	$ft4, $ft1
	fmul.s	$ft4, $fa6, $ft4
	pcalau12i	$a0, %pc_hi20(.LCPI47_1)
	fld.s	$ft5, $a0, %pc_lo12(.LCPI47_1)
	fneg.s	$ft7, $ft3
	pcalau12i	$a0, %pc_hi20(.LCPI47_2)
	fld.s	$ft6, $a0, %pc_lo12(.LCPI47_2)
	fcmp.cle.s	$fcc0, $fa1, $ft5
	fadd.s	$ft5, $fa5, $ft5
	fsel	$ft8, $fa1, $ft5, $fcc0
	fcmp.cle.s	$fcc1, $ft6, $fa2
	fsub.s	$ft6, $ft6, $fa5
	fsel	$fa2, $fa2, $ft6, $fcc1
	fcmp.cule.s	$fcc2, $ft8, $fa2
	fmul.s	$fa1, $fa7, $ft7
	bcnez	$fcc2, .LBB47_2
# %bb.1:
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	fmov.s	$fa2, $ft6
	fmov.s	$ft8, $ft5
	b	.LBB47_3
.LBB47_2:
	movcf2gr	$a0, $fcc0
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	movcf2gr	$a0, $fcc1
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
.LBB47_3:
	move	$a0, $zero
	fmadd.s	$fa0, $fa7, $ft1, $ft2
	fst.s	$fa0, $sp, 108                  # 4-byte Folded Spill
	fmadd.s	$fs6, $ft9, $ft3, $ft4
	fmadd.s	$fs7, $fa6, $ft0, $fa1
	fsub.s	$fa0, $fa2, $ft8
	fdiv.s	$fa1, $fa0, $fa5
	ftintrz.w.s	$fa1, $fa1
	movfr2gr.s	$a1, $fa1
	ori	$a2, $zero, 1
	slt	$a3, $a2, $a1
	maskeqz	$a1, $a1, $a3
	masknez	$a3, $a2, $a3
	or	$s6, $a1, $a3
	movgr2fr.w	$fa1, $s6
	ffint.s.w	$fa1, $fa1
	fdiv.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $sp, 28                   # 4-byte Folded Spill
	fcmp.clt.s	$fcc0, $fa4, $fa3
	pcalau12i	$a1, %pc_hi20(.LCPI47_3)
	fld.s	$fa0, $a1, %pc_lo12(.LCPI47_3)
	pcalau12i	$a1, %pc_hi20(.LCPI47_4)
	fld.s	$fa1, $a1, %pc_lo12(.LCPI47_4)
	pcalau12i	$a1, %pc_hi20(.LCPI47_5)
	fld.s	$fa2, $a1, %pc_lo12(.LCPI47_5)
	fadd.s	$fa0, $fa5, $fa0
	fsub.s	$fa6, $fa4, $fa3
	fcmp.cle.s	$fcc1, $fa1, $fa6
	fsel	$fa1, $fa4, $fa2, $fcc0
	fsel	$fs4, $fa3, $fa0, $fcc0
	movcf2gr	$a1, $fcc0
	movcf2gr	$a3, $fcc1
	or	$s7, $a1, $a3
	fsub.s	$fa0, $fa1, $fs4
	fdiv.s	$fa1, $fa0, $fa5
	ftintrz.w.s	$fa1, $fa1
	movfr2gr.s	$a3, $fa1
	slt	$a1, $a2, $a3
	st.d	$a3, $sp, 16                    # 8-byte Folded Spill
	maskeqz	$a3, $a3, $a1
	masknez	$a1, $a2, $a1
	or	$a1, $a3, $a1
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	movgr2fr.w	$fa1, $a1
	ffint.s.w	$fa1, $fa1
	fdiv.s	$fs0, $fa0, $fa1
	movgr2fr.w	$fa0, $zero
	fmadd.s	$fa0, $fs0, $fa0, $fs4
	fst.s	$fa0, $sp, 12                   # 4-byte Folded Spill
	addi.d	$s8, $sp, 168
	addi.d	$a1, $sp, 1352
	fst.s	$ft8, $sp, 48                   # 4-byte Folded Spill
	st.d	$s6, $sp, 32                    # 8-byte Folded Spill
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	b	.LBB47_6
	.p2align	4, , 16
.LBB47_4:                               # %.sink.split286.peel
                                        #   in Loop: Header=BB47_6 Depth=1
	ld.d	$a0, $s3, 0
	ld.d	$a4, $a0, 40
	move	$a0, $s3
	move	$a2, $s5
	move	$a3, $s0
	jirl	$ra, $a4, 0
.LBB47_5:                               # %.loopexit
                                        #   in Loop: Header=BB47_6 Depth=1
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	addi.w	$a0, $a2, 1
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	fld.s	$ft8, $sp, 48                   # 4-byte Folded Reload
	beq	$a2, $s6, .LBB47_29
.LBB47_6:                               # %.peel.begin
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB47_17 Depth 2
	move	$s4, $a0
	move	$s7, $a1
	bstrpick.d	$a0, $a0, 31, 0
	movgr2fr.d	$fa0, $a0
	ffint.s.l	$fa0, $fa0
	fld.s	$fa1, $sp, 28                   # 4-byte Folded Reload
	fmadd.s	$fs2, $fa0, $fa1, $ft8
	fmov.s	$fa0, $fs2
	pcaddu18i	$ra, %call36(sinf)
	jirl	$ra, $ra, 0
	fld.s	$fs3, $sp, 52                   # 4-byte Folded Reload
	fmul.s	$fs1, $fs3, $fa0
	fmov.s	$fa0, $fs2
	pcaddu18i	$ra, %call36(cosf)
	jirl	$ra, $ra, 0
	fmul.s	$fs5, $fs3, $fa0
	sltu	$s5, $zero, $s4
	st.d	$s4, $sp, 112                   # 8-byte Folded Spill
	sltui	$s4, $s4, 1
	fld.s	$fs3, $sp, 12                   # 4-byte Folded Reload
	fmov.s	$fa0, $fs3
	pcaddu18i	$ra, %call36(sinf)
	jirl	$ra, $ra, 0
	fmov.s	$fs2, $fa0
	fmov.s	$fa0, $fs3
	pcaddu18i	$ra, %call36(cosf)
	jirl	$ra, $ra, 0
	fld.s	$fa1, $s1, 0
	fld.s	$fa2, $s1, 4
	fmul.s	$fa0, $fs5, $fa0
	fmul.s	$fa1, $fa1, $fa0
	fmul.s	$fa2, $fa0, $fa2
	fld.s	$fa3, $s1, 8
	fld.s	$fa4, $s2, 0
	fld.s	$fa5, $s2, 4
	fld.s	$fa6, $s2, 8
	fmul.s	$fa0, $fa0, $fa3
	fadd.s	$fa1, $fa1, $fa4
	fadd.s	$fa2, $fa2, $fa5
	fadd.s	$fa0, $fa0, $fa6
	fmul.s	$fa3, $fs5, $fs2
	fld.s	$fa4, $sp, 108                  # 4-byte Folded Reload
	fmul.s	$fa4, $fa4, $fa3
	fmul.s	$fa5, $fs6, $fa3
	fmul.s	$fa3, $fs7, $fa3
	fadd.s	$fa1, $fa4, $fa1
	fadd.s	$fa2, $fa5, $fa2
	fld.s	$fa4, $fp, 0
	fld.s	$fa5, $fp, 4
	fld.s	$fa6, $fp, 8
	fadd.s	$fa0, $fa3, $fa0
	fmul.s	$fa3, $fs1, $fa4
	fmul.s	$fa4, $fs1, $fa5
	fmul.s	$fa5, $fs1, $fa6
	fadd.s	$fa1, $fa1, $fa3
	fadd.s	$fa2, $fa2, $fa4
	fadd.s	$fa0, $fa0, $fa5
	movfr2gr.s	$a0, $fa1
	movfr2gr.s	$a1, $fa2
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa0
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $s8, 0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	or	$a0, $a0, $s5
	st.d	$a1, $s8, 8
	beqz	$a0, .LBB47_8
# %bb.7:                                # %.sink.split
                                        #   in Loop: Header=BB47_6 Depth=1
	ld.d	$a0, $s3, 0
	ld.d	$a4, $a0, 40
	masknez	$a0, $s7, $s4
	addi.d	$a1, $sp, 136
	maskeqz	$a1, $a1, $s4
	or	$a1, $a1, $a0
	move	$a0, $s3
	move	$a2, $s8
	move	$a3, $s0
	jirl	$ra, $a4, 0
.LBB47_8:                               #   in Loop: Header=BB47_6 Depth=1
	st.d	$s8, $sp, 80                    # 8-byte Folded Spill
	vld	$vr0, $s8, 0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	xor	$a0, $a0, $s6
	sltui	$s5, $a0, 1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	and	$s6, $a0, $s5
	vst	$vr0, $sp, 120
	beqz	$s6, .LBB47_10
# %bb.9:                                #   in Loop: Header=BB47_6 Depth=1
	ld.d	$a0, $s3, 0
	ld.d	$a4, $a0, 40
	addi.d	$a1, $sp, 152
	move	$a0, $s3
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	move	$a3, $s0
	jirl	$ra, $a4, 0
.LBB47_10:                              #   in Loop: Header=BB47_6 Depth=1
	st.d	$s7, $sp, 72                    # 8-byte Folded Spill
	or	$a0, $s4, $s5
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	orn	$a0, $a1, $a0
	andi	$a0, $a0, 1
	bnez	$a0, .LBB47_12
# %bb.11:                               #   in Loop: Header=BB47_6 Depth=1
	ld.d	$a0, $s3, 0
	ld.d	$a4, $a0, 40
	move	$a0, $s3
	move	$a1, $s2
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	move	$a3, $s0
	jirl	$ra, $a4, 0
.LBB47_12:                              # %.peel.next.preheader
                                        #   in Loop: Header=BB47_6 Depth=1
	ori	$s4, $zero, 1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ori	$a1, $zero, 2
	bge	$a0, $a1, .LBB47_15
.LBB47_13:                              # %.peel.next.peel
                                        #   in Loop: Header=BB47_6 Depth=1
	srli.d	$a0, $s4, 1
	andi	$a1, $s4, 1
	or	$a0, $a1, $a0
	movgr2fr.d	$fa0, $a0
	ffint.s.l	$fa0, $fa0
	fadd.s	$fa0, $fa0, $fa0
	slti	$a0, $s4, 0
	movgr2fr.d	$fa1, $s4
	ffint.s.l	$fa1, $fa1
	movgr2cf	$fcc0, $a0
	fsel	$fa0, $fa1, $fa0, $fcc0
	fmadd.s	$fs2, $fa0, $fs0, $fs4
	fmov.s	$fa0, $fs2
	pcaddu18i	$ra, %call36(sinf)
	jirl	$ra, $ra, 0
	fmov.s	$fs3, $fa0
	fmov.s	$fa0, $fs2
	pcaddu18i	$ra, %call36(cosf)
	jirl	$ra, $ra, 0
	fld.s	$fa1, $s1, 0
	fld.s	$fa2, $s1, 4
	fmul.s	$fa0, $fs5, $fa0
	fmul.s	$fa1, $fa1, $fa0
	fmul.s	$fa2, $fa0, $fa2
	fld.s	$fa3, $s1, 8
	fld.s	$fa4, $s2, 0
	fld.s	$fa5, $s2, 4
	fld.s	$fa6, $s2, 8
	fmul.s	$fa0, $fa0, $fa3
	fadd.s	$fa1, $fa1, $fa4
	fadd.s	$fa2, $fa2, $fa5
	fadd.s	$fa0, $fa0, $fa6
	fmul.s	$fa3, $fs5, $fs3
	fld.s	$fa4, $sp, 108                  # 4-byte Folded Reload
	fmul.s	$fa4, $fa4, $fa3
	fmul.s	$fa5, $fs6, $fa3
	fmul.s	$fa3, $fs7, $fa3
	fadd.s	$fa1, $fa4, $fa1
	fadd.s	$fa2, $fa5, $fa2
	fld.s	$fa4, $fp, 0
	fld.s	$fa5, $fp, 4
	fld.s	$fa6, $fp, 8
	fadd.s	$fa0, $fa3, $fa0
	fmul.s	$fa3, $fs1, $fa4
	fmul.s	$fa4, $fs1, $fa5
	fmul.s	$fa5, $fs1, $fa6
	fadd.s	$fa1, $fa1, $fa3
	fadd.s	$fa2, $fa2, $fa4
	fadd.s	$fa0, $fa0, $fa5
	movfr2gr.s	$a0, $fa1
	movfr2gr.s	$a1, $fa2
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa0
	bstrpick.d	$a1, $a1, 31, 0
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	alsl.d	$s5, $s4, $a3, 4
	slli.d	$a2, $s4, 4
	stx.d	$a0, $a3, $a2
	st.d	$a1, $s5, 8
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	beqz	$a0, .LBB47_22
# %bb.14:                               #   in Loop: Header=BB47_6 Depth=1
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	alsl.d	$a1, $s4, $s8, 4
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	b	.LBB47_23
	.p2align	4, , 16
.LBB47_15:                              # %.peel.next.preheader298
                                        #   in Loop: Header=BB47_6 Depth=1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	addi.d	$s8, $a0, 16
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	addi.d	$s5, $a0, 16
	ori	$s7, $zero, 1
	ori	$s4, $zero, 1
	b	.LBB47_17
	.p2align	4, , 16
.LBB47_16:                              #   in Loop: Header=BB47_17 Depth=2
	addi.d	$s4, $s4, 1
	addi.w	$s7, $s7, 1
	addi.d	$s8, $s8, 16
	addi.d	$s5, $s5, 16
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	beq	$a0, $s4, .LBB47_13
.LBB47_17:                              # %.peel.next
                                        #   Parent Loop BB47_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$a0, $s7, 31, 0
	movgr2fr.d	$fa0, $a0
	ffint.s.l	$fa0, $fa0
	fmadd.s	$fs2, $fa0, $fs0, $fs4
	fmov.s	$fa0, $fs2
	pcaddu18i	$ra, %call36(sinf)
	jirl	$ra, $ra, 0
	fmov.s	$fs3, $fa0
	fmov.s	$fa0, $fs2
	pcaddu18i	$ra, %call36(cosf)
	jirl	$ra, $ra, 0
	fld.s	$fa1, $s1, 0
	fld.s	$fa2, $s1, 4
	fmul.s	$fa0, $fs5, $fa0
	fmul.s	$fa1, $fa1, $fa0
	fmul.s	$fa2, $fa0, $fa2
	fld.s	$fa3, $s1, 8
	fld.s	$fa4, $s2, 0
	fld.s	$fa5, $s2, 4
	fld.s	$fa6, $s2, 8
	fmul.s	$fa0, $fa0, $fa3
	fadd.s	$fa1, $fa1, $fa4
	fadd.s	$fa2, $fa2, $fa5
	fadd.s	$fa0, $fa0, $fa6
	fmul.s	$fa3, $fs5, $fs3
	fld.s	$fa4, $sp, 108                  # 4-byte Folded Reload
	fmul.s	$fa4, $fa4, $fa3
	fmul.s	$fa5, $fs6, $fa3
	fmul.s	$fa3, $fs7, $fa3
	fadd.s	$fa1, $fa4, $fa1
	fadd.s	$fa2, $fa5, $fa2
	fld.s	$fa4, $fp, 0
	fld.s	$fa5, $fp, 4
	fld.s	$fa6, $fp, 8
	fadd.s	$fa0, $fa3, $fa0
	fmul.s	$fa3, $fs1, $fa4
	fmul.s	$fa4, $fs1, $fa5
	fmul.s	$fa5, $fs1, $fa6
	fadd.s	$fa1, $fa1, $fa3
	fadd.s	$fa2, $fa2, $fa4
	fadd.s	$fa0, $fa0, $fa5
	movfr2gr.s	$a0, $fa1
	movfr2gr.s	$a1, $fa2
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa0
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $s5, 0
	st.d	$a1, $s5, 8
	move	$a1, $s8
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	bnez	$a0, .LBB47_19
# %bb.18:                               #   in Loop: Header=BB47_17 Depth=2
	addi.d	$a1, $sp, 136
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	beqz	$a0, .LBB47_20
.LBB47_19:                              # %.sink.split281
                                        #   in Loop: Header=BB47_17 Depth=2
	ld.d	$a0, $s3, 0
	ld.d	$a4, $a0, 40
	move	$a0, $s3
	move	$a2, $s5
	move	$a3, $s0
	jirl	$ra, $a4, 0
.LBB47_20:                              #   in Loop: Header=BB47_17 Depth=2
	ld.d	$a0, $s3, 0
	ld.d	$a4, $a0, 40
	addi.d	$a1, $s5, -16
	move	$a0, $s3
	move	$a2, $s5
	move	$a3, $s0
	jirl	$ra, $a4, 0
	beqz	$s6, .LBB47_16
# %bb.21:                               #   in Loop: Header=BB47_17 Depth=2
	ld.d	$a0, $s3, 0
	ld.d	$a4, $a0, 40
	addi.d	$a1, $sp, 152
	move	$a0, $s3
	move	$a2, $s5
	move	$a3, $s0
	jirl	$ra, $a4, 0
	b	.LBB47_16
	.p2align	4, , 16
.LBB47_22:                              #   in Loop: Header=BB47_6 Depth=1
	addi.d	$a1, $sp, 136
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	beqz	$a0, .LBB47_24
.LBB47_23:                              # %.sink.split281.peel
                                        #   in Loop: Header=BB47_6 Depth=1
	ld.d	$a0, $s3, 0
	ld.d	$a4, $a0, 40
	move	$a0, $s3
	move	$a2, $s5
	move	$a3, $s0
	jirl	$ra, $a4, 0
.LBB47_24:                              #   in Loop: Header=BB47_6 Depth=1
	ld.d	$a0, $s3, 0
	ld.d	$a4, $a0, 40
	addi.d	$a1, $s5, -16
	move	$a0, $s3
	move	$a2, $s5
	move	$a3, $s0
	jirl	$ra, $a4, 0
	beqz	$s6, .LBB47_26
# %bb.25:                               #   in Loop: Header=BB47_6 Depth=1
	ld.d	$a0, $s3, 0
	ld.d	$a4, $a0, 40
	addi.d	$a1, $sp, 152
	move	$a0, $s3
	move	$a2, $s5
	move	$a3, $s0
	jirl	$ra, $a4, 0
.LBB47_26:                              #   in Loop: Header=BB47_6 Depth=1
	beqz	$s7, .LBB47_28
# %bb.27:                               #   in Loop: Header=BB47_6 Depth=1
	addi.d	$a1, $sp, 120
	ld.d	$s6, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	beq	$s4, $a0, .LBB47_4
	b	.LBB47_5
	.p2align	4, , 16
.LBB47_28:                              #   in Loop: Header=BB47_6 Depth=1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	xor	$a0, $s4, $a0
	sltui	$a0, $a0, 1
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	and	$a0, $a1, $a0
	move	$a1, $s2
	ld.d	$s6, $sp, 32                    # 8-byte Folded Reload
	bnez	$a0, .LBB47_4
	b	.LBB47_5
.LBB47_29:
	addi.d	$sp, $sp, 656
	fld.d	$fs7, $sp, 1880                 # 8-byte Folded Reload
	fld.d	$fs6, $sp, 1888                 # 8-byte Folded Reload
	fld.d	$fs5, $sp, 1896                 # 8-byte Folded Reload
	fld.d	$fs4, $sp, 1904                 # 8-byte Folded Reload
	fld.d	$fs3, $sp, 1912                 # 8-byte Folded Reload
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
.Lfunc_end47:
	.size	_ZN12btIDebugDraw15drawSpherePatchERK9btVector3S2_S2_fffffS2_f, .Lfunc_end47-_ZN12btIDebugDraw15drawSpherePatchERK9btVector3S2_S2_fffffS2_f
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN12btIDebugDraw7drawBoxERK9btVector3S2_RK11btTransformS2_,"axG",@progbits,_ZN12btIDebugDraw7drawBoxERK9btVector3S2_RK11btTransformS2_,comdat
	.weak	_ZN12btIDebugDraw7drawBoxERK9btVector3S2_RK11btTransformS2_ # -- Begin function _ZN12btIDebugDraw7drawBoxERK9btVector3S2_RK11btTransformS2_
	.p2align	5
	.type	_ZN12btIDebugDraw7drawBoxERK9btVector3S2_RK11btTransformS2_,@function
_ZN12btIDebugDraw7drawBoxERK9btVector3S2_RK11btTransformS2_: # @_ZN12btIDebugDraw7drawBoxERK9btVector3S2_RK11btTransformS2_
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	move	$fp, $a4
	move	$s2, $a3
	move	$s3, $a2
	move	$s1, $a1
	move	$s0, $a0
	fld.s	$fa1, $a1, 0
	fld.s	$fa2, $a1, 4
	fld.s	$fa3, $a3, 4
	fld.s	$fa4, $a3, 0
	fld.s	$fa0, $a1, 8
	fld.s	$fa5, $a3, 8
	fmul.s	$fa3, $fa2, $fa3
	fmadd.s	$fa6, $fa4, $fa1, $fa3
	fld.s	$fa7, $a3, 48
	fmadd.s	$fa6, $fa5, $fa0, $fa6
	fld.s	$ft0, $a3, 20
	fld.s	$ft1, $a3, 16
	fadd.s	$fa6, $fa7, $fa6
	fld.s	$ft2, $a3, 24
	fmul.s	$ft0, $fa2, $ft0
	fmadd.s	$ft3, $ft1, $fa1, $ft0
	fld.s	$ft4, $a3, 36
	fmadd.s	$ft3, $ft2, $fa0, $ft3
	fld.s	$ft5, $a3, 52
	fld.s	$ft6, $a3, 32
	fmul.s	$fa2, $fa2, $ft4
	fld.s	$ft4, $a3, 40
	fld.s	$ft7, $a3, 56
	fadd.s	$ft3, $ft5, $ft3
	fmadd.s	$fa1, $ft6, $fa1, $fa2
	fmadd.s	$fa1, $ft4, $fa0, $fa1
	fadd.s	$fa1, $ft7, $fa1
	movfr2gr.s	$a0, $fa6
	movfr2gr.s	$a1, $ft3
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa1
	fld.s	$fa1, $a2, 0
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $sp, 32
	st.d	$a1, $sp, 40
	fmadd.s	$fa3, $fa4, $fa1, $fa3
	fmadd.s	$fa3, $fa5, $fa0, $fa3
	fadd.s	$fa3, $fa7, $fa3
	fmadd.s	$fa4, $ft1, $fa1, $ft0
	fmadd.s	$fa4, $ft2, $fa0, $fa4
	fadd.s	$fa4, $ft5, $fa4
	fmadd.s	$fa1, $ft6, $fa1, $fa2
	movfr2gr.s	$a0, $fa3
	movfr2gr.s	$a1, $fa4
	bstrins.d	$a0, $a1, 63, 32
	ld.d	$a1, $s0, 0
	fmadd.s	$fa0, $ft4, $fa0, $fa1
	fadd.s	$fa0, $ft7, $fa0
	st.d	$a0, $sp, 16
	ld.d	$a4, $a1, 40
	movfr2gr.s	$a0, $fa0
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $sp, 24
	addi.d	$a1, $sp, 32
	addi.d	$a2, $sp, 16
	move	$a0, $s0
	move	$a3, $fp
	jirl	$ra, $a4, 0
	fld.s	$fa1, $s3, 0
	fld.s	$fa2, $s1, 4
	fld.s	$fa0, $s1, 8
	fld.s	$fa3, $s2, 4
	fld.s	$fa4, $s2, 0
	fld.s	$fa5, $s2, 8
	fld.s	$fa6, $s2, 48
	fmul.s	$fa7, $fa2, $fa3
	fmadd.s	$fa7, $fa4, $fa1, $fa7
	fmadd.s	$fa7, $fa5, $fa0, $fa7
	fadd.s	$fa7, $fa6, $fa7
	fld.s	$ft0, $s2, 20
	fld.s	$ft1, $s2, 16
	fld.s	$ft2, $s2, 24
	fld.s	$ft3, $s2, 52
	fmul.s	$ft4, $fa2, $ft0
	fmadd.s	$ft4, $ft1, $fa1, $ft4
	fmadd.s	$ft4, $ft2, $fa0, $ft4
	fadd.s	$ft4, $ft3, $ft4
	fld.s	$ft5, $s2, 36
	fld.s	$ft6, $s2, 32
	fld.s	$ft7, $s2, 40
	fld.s	$ft8, $s2, 56
	fmul.s	$fa2, $fa2, $ft5
	fmadd.s	$fa2, $ft6, $fa1, $fa2
	fmadd.s	$fa2, $ft7, $fa0, $fa2
	fadd.s	$fa2, $ft8, $fa2
	movfr2gr.s	$a0, $fa7
	movfr2gr.s	$a1, $ft4
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa2
	fld.s	$fa2, $s3, 4
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $sp, 32
	st.d	$a1, $sp, 40
	fmul.s	$fa3, $fa3, $fa2
	fmadd.s	$fa3, $fa4, $fa1, $fa3
	fmadd.s	$fa3, $fa5, $fa0, $fa3
	fadd.s	$fa3, $fa6, $fa3
	fmul.s	$fa4, $ft0, $fa2
	fmadd.s	$fa4, $ft1, $fa1, $fa4
	fmadd.s	$fa4, $ft2, $fa0, $fa4
	fadd.s	$fa4, $ft3, $fa4
	fmul.s	$fa2, $ft5, $fa2
	fmadd.s	$fa1, $ft6, $fa1, $fa2
	movfr2gr.s	$a0, $fa3
	movfr2gr.s	$a1, $fa4
	bstrins.d	$a0, $a1, 63, 32
	ld.d	$a1, $s0, 0
	fmadd.s	$fa0, $ft7, $fa0, $fa1
	fadd.s	$fa0, $ft8, $fa0
	st.d	$a0, $sp, 16
	ld.d	$a4, $a1, 40
	movfr2gr.s	$a0, $fa0
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $sp, 24
	addi.d	$a1, $sp, 32
	addi.d	$a2, $sp, 16
	move	$a0, $s0
	move	$a3, $fp
	jirl	$ra, $a4, 0
	fld.s	$fa1, $s3, 0
	fld.s	$fa2, $s3, 4
	fld.s	$fa3, $s2, 4
	fld.s	$fa4, $s2, 0
	fld.s	$fa0, $s1, 8
	fld.s	$fa5, $s2, 8
	fmul.s	$fa3, $fa2, $fa3
	fmadd.s	$fa6, $fa4, $fa1, $fa3
	fld.s	$fa7, $s2, 48
	fmadd.s	$fa6, $fa5, $fa0, $fa6
	fld.s	$ft0, $s2, 20
	fld.s	$ft1, $s2, 16
	fadd.s	$fa6, $fa7, $fa6
	fld.s	$ft2, $s2, 24
	fmul.s	$ft0, $fa2, $ft0
	fmadd.s	$ft3, $ft1, $fa1, $ft0
	fld.s	$ft4, $s2, 36
	fmadd.s	$ft3, $ft2, $fa0, $ft3
	fld.s	$ft5, $s2, 52
	fld.s	$ft6, $s2, 32
	fmul.s	$fa2, $fa2, $ft4
	fld.s	$ft4, $s2, 40
	fld.s	$ft7, $s2, 56
	fadd.s	$ft3, $ft5, $ft3
	fmadd.s	$fa1, $ft6, $fa1, $fa2
	fmadd.s	$fa1, $ft4, $fa0, $fa1
	fadd.s	$fa1, $ft7, $fa1
	movfr2gr.s	$a0, $fa6
	movfr2gr.s	$a1, $ft3
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa1
	fld.s	$fa1, $s1, 0
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $sp, 32
	st.d	$a1, $sp, 40
	fmadd.s	$fa3, $fa4, $fa1, $fa3
	fmadd.s	$fa3, $fa5, $fa0, $fa3
	fadd.s	$fa3, $fa7, $fa3
	fmadd.s	$fa4, $ft1, $fa1, $ft0
	fmadd.s	$fa4, $ft2, $fa0, $fa4
	fadd.s	$fa4, $ft5, $fa4
	fmadd.s	$fa1, $ft6, $fa1, $fa2
	movfr2gr.s	$a0, $fa3
	movfr2gr.s	$a1, $fa4
	bstrins.d	$a0, $a1, 63, 32
	ld.d	$a1, $s0, 0
	fmadd.s	$fa0, $ft4, $fa0, $fa1
	fadd.s	$fa0, $ft7, $fa0
	st.d	$a0, $sp, 16
	ld.d	$a4, $a1, 40
	movfr2gr.s	$a0, $fa0
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $sp, 24
	addi.d	$a1, $sp, 32
	addi.d	$a2, $sp, 16
	move	$a0, $s0
	move	$a3, $fp
	jirl	$ra, $a4, 0
	fld.s	$fa1, $s1, 0
	fld.s	$fa2, $s3, 4
	fld.s	$fa0, $s1, 8
	fld.s	$fa3, $s2, 4
	fld.s	$fa4, $s2, 0
	fld.s	$fa5, $s2, 8
	fld.s	$fa6, $s2, 48
	fmul.s	$fa7, $fa2, $fa3
	fmadd.s	$fa7, $fa4, $fa1, $fa7
	fmadd.s	$fa7, $fa5, $fa0, $fa7
	fadd.s	$fa7, $fa6, $fa7
	fld.s	$ft0, $s2, 20
	fld.s	$ft1, $s2, 16
	fld.s	$ft2, $s2, 24
	fld.s	$ft3, $s2, 52
	fmul.s	$ft4, $fa2, $ft0
	fmadd.s	$ft4, $ft1, $fa1, $ft4
	fmadd.s	$ft4, $ft2, $fa0, $ft4
	fadd.s	$ft4, $ft3, $ft4
	fld.s	$ft5, $s2, 36
	fld.s	$ft6, $s2, 32
	fld.s	$ft7, $s2, 40
	fld.s	$ft8, $s2, 56
	fmul.s	$fa2, $fa2, $ft5
	fmadd.s	$fa2, $ft6, $fa1, $fa2
	fmadd.s	$fa2, $ft7, $fa0, $fa2
	fadd.s	$fa2, $ft8, $fa2
	movfr2gr.s	$a0, $fa7
	movfr2gr.s	$a1, $ft4
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa2
	fld.s	$fa2, $s1, 4
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $sp, 32
	st.d	$a1, $sp, 40
	fmul.s	$fa3, $fa3, $fa2
	fmadd.s	$fa3, $fa4, $fa1, $fa3
	fmadd.s	$fa3, $fa5, $fa0, $fa3
	fadd.s	$fa3, $fa6, $fa3
	fmul.s	$fa4, $ft0, $fa2
	fmadd.s	$fa4, $ft1, $fa1, $fa4
	fmadd.s	$fa4, $ft2, $fa0, $fa4
	fadd.s	$fa4, $ft3, $fa4
	fmul.s	$fa2, $ft5, $fa2
	fmadd.s	$fa1, $ft6, $fa1, $fa2
	movfr2gr.s	$a0, $fa3
	movfr2gr.s	$a1, $fa4
	bstrins.d	$a0, $a1, 63, 32
	ld.d	$a1, $s0, 0
	fmadd.s	$fa0, $ft7, $fa0, $fa1
	fadd.s	$fa0, $ft8, $fa0
	st.d	$a0, $sp, 16
	ld.d	$a4, $a1, 40
	movfr2gr.s	$a0, $fa0
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $sp, 24
	addi.d	$a1, $sp, 32
	addi.d	$a2, $sp, 16
	move	$a0, $s0
	move	$a3, $fp
	jirl	$ra, $a4, 0
	fld.s	$fa0, $s1, 0
	fld.s	$fa1, $s1, 4
	fld.s	$fa2, $s2, 4
	fld.s	$fa3, $s2, 0
	fld.s	$fa4, $s1, 8
	fmul.s	$fa2, $fa1, $fa2
	fmadd.s	$fa2, $fa3, $fa0, $fa2
	fld.s	$fa3, $s2, 8
	fld.s	$fa5, $s2, 48
	fld.s	$fa6, $s2, 20
	fld.s	$fa7, $s2, 16
	fmadd.s	$ft0, $fa3, $fa4, $fa2
	fadd.s	$ft0, $fa5, $ft0
	fmul.s	$fa6, $fa1, $fa6
	fmadd.s	$fa6, $fa7, $fa0, $fa6
	fld.s	$fa7, $s2, 36
	fld.s	$ft1, $s2, 32
	fld.s	$ft2, $s2, 24
	fld.s	$ft3, $s2, 52
	fmul.s	$fa1, $fa1, $fa7
	fmadd.s	$fa0, $ft1, $fa0, $fa1
	fld.s	$fa1, $s2, 40
	fld.s	$fa7, $s2, 56
	fmadd.s	$ft1, $ft2, $fa4, $fa6
	fadd.s	$ft1, $ft3, $ft1
	fmadd.s	$fa4, $fa1, $fa4, $fa0
	fadd.s	$fa4, $fa7, $fa4
	movfr2gr.s	$a0, $ft0
	movfr2gr.s	$a1, $ft1
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa4
	fld.s	$fa4, $s3, 8
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $sp, 32
	st.d	$a1, $sp, 40
	fmadd.s	$fa2, $fa3, $fa4, $fa2
	fadd.s	$fa2, $fa5, $fa2
	fmadd.s	$fa3, $ft2, $fa4, $fa6
	fadd.s	$fa3, $ft3, $fa3
	movfr2gr.s	$a0, $fa2
	movfr2gr.s	$a1, $fa3
	bstrins.d	$a0, $a1, 63, 32
	ld.d	$a1, $s0, 0
	fmadd.s	$fa0, $fa1, $fa4, $fa0
	fadd.s	$fa0, $fa7, $fa0
	st.d	$a0, $sp, 16
	ld.d	$a4, $a1, 40
	movfr2gr.s	$a0, $fa0
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $sp, 24
	addi.d	$a1, $sp, 32
	addi.d	$a2, $sp, 16
	move	$a0, $s0
	move	$a3, $fp
	jirl	$ra, $a4, 0
	fld.s	$fa0, $s3, 0
	fld.s	$fa1, $s1, 4
	fld.s	$fa2, $s2, 4
	fld.s	$fa3, $s2, 0
	fld.s	$fa4, $s1, 8
	fmul.s	$fa2, $fa1, $fa2
	fmadd.s	$fa2, $fa3, $fa0, $fa2
	fld.s	$fa3, $s2, 8
	fld.s	$fa5, $s2, 48
	fld.s	$fa6, $s2, 20
	fld.s	$fa7, $s2, 16
	fmadd.s	$ft0, $fa3, $fa4, $fa2
	fadd.s	$ft0, $fa5, $ft0
	fmul.s	$fa6, $fa1, $fa6
	fmadd.s	$fa6, $fa7, $fa0, $fa6
	fld.s	$fa7, $s2, 36
	fld.s	$ft1, $s2, 32
	fld.s	$ft2, $s2, 24
	fld.s	$ft3, $s2, 52
	fmul.s	$fa1, $fa1, $fa7
	fmadd.s	$fa0, $ft1, $fa0, $fa1
	fld.s	$fa1, $s2, 40
	fld.s	$fa7, $s2, 56
	fmadd.s	$ft1, $ft2, $fa4, $fa6
	fadd.s	$ft1, $ft3, $ft1
	fmadd.s	$fa4, $fa1, $fa4, $fa0
	fadd.s	$fa4, $fa7, $fa4
	movfr2gr.s	$a0, $ft0
	movfr2gr.s	$a1, $ft1
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa4
	fld.s	$fa4, $s3, 8
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $sp, 32
	st.d	$a1, $sp, 40
	fmadd.s	$fa2, $fa3, $fa4, $fa2
	fadd.s	$fa2, $fa5, $fa2
	fmadd.s	$fa3, $ft2, $fa4, $fa6
	fadd.s	$fa3, $ft3, $fa3
	movfr2gr.s	$a0, $fa2
	movfr2gr.s	$a1, $fa3
	bstrins.d	$a0, $a1, 63, 32
	ld.d	$a1, $s0, 0
	fmadd.s	$fa0, $fa1, $fa4, $fa0
	fadd.s	$fa0, $fa7, $fa0
	st.d	$a0, $sp, 16
	ld.d	$a4, $a1, 40
	movfr2gr.s	$a0, $fa0
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $sp, 24
	addi.d	$a1, $sp, 32
	addi.d	$a2, $sp, 16
	move	$a0, $s0
	move	$a3, $fp
	jirl	$ra, $a4, 0
	fld.s	$fa0, $s3, 0
	fld.s	$fa1, $s3, 4
	fld.s	$fa2, $s2, 4
	fld.s	$fa3, $s2, 0
	fld.s	$fa4, $s1, 8
	fmul.s	$fa2, $fa1, $fa2
	fmadd.s	$fa2, $fa3, $fa0, $fa2
	fld.s	$fa3, $s2, 8
	fld.s	$fa5, $s2, 48
	fld.s	$fa6, $s2, 20
	fld.s	$fa7, $s2, 16
	fmadd.s	$ft0, $fa3, $fa4, $fa2
	fadd.s	$ft0, $fa5, $ft0
	fmul.s	$fa6, $fa1, $fa6
	fmadd.s	$fa6, $fa7, $fa0, $fa6
	fld.s	$fa7, $s2, 36
	fld.s	$ft1, $s2, 32
	fld.s	$ft2, $s2, 24
	fld.s	$ft3, $s2, 52
	fmul.s	$fa1, $fa1, $fa7
	fmadd.s	$fa0, $ft1, $fa0, $fa1
	fld.s	$fa1, $s2, 40
	fld.s	$fa7, $s2, 56
	fmadd.s	$ft1, $ft2, $fa4, $fa6
	fadd.s	$ft1, $ft3, $ft1
	fmadd.s	$fa4, $fa1, $fa4, $fa0
	fadd.s	$fa4, $fa7, $fa4
	movfr2gr.s	$a0, $ft0
	movfr2gr.s	$a1, $ft1
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa4
	fld.s	$fa4, $s3, 8
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $sp, 32
	st.d	$a1, $sp, 40
	fmadd.s	$fa2, $fa3, $fa4, $fa2
	fadd.s	$fa2, $fa5, $fa2
	fmadd.s	$fa3, $ft2, $fa4, $fa6
	fadd.s	$fa3, $ft3, $fa3
	movfr2gr.s	$a0, $fa2
	movfr2gr.s	$a1, $fa3
	bstrins.d	$a0, $a1, 63, 32
	ld.d	$a1, $s0, 0
	fmadd.s	$fa0, $fa1, $fa4, $fa0
	fadd.s	$fa0, $fa7, $fa0
	st.d	$a0, $sp, 16
	ld.d	$a4, $a1, 40
	movfr2gr.s	$a0, $fa0
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $sp, 24
	addi.d	$a1, $sp, 32
	addi.d	$a2, $sp, 16
	move	$a0, $s0
	move	$a3, $fp
	jirl	$ra, $a4, 0
	fld.s	$fa0, $s1, 0
	fld.s	$fa1, $s3, 4
	fld.s	$fa2, $s2, 4
	fld.s	$fa3, $s2, 0
	fld.s	$fa4, $s1, 8
	fmul.s	$fa2, $fa1, $fa2
	fmadd.s	$fa2, $fa3, $fa0, $fa2
	fld.s	$fa3, $s2, 8
	fld.s	$fa5, $s2, 48
	fld.s	$fa6, $s2, 20
	fld.s	$fa7, $s2, 16
	fmadd.s	$ft0, $fa3, $fa4, $fa2
	fadd.s	$ft0, $fa5, $ft0
	fmul.s	$fa6, $fa1, $fa6
	fmadd.s	$fa6, $fa7, $fa0, $fa6
	fld.s	$fa7, $s2, 36
	fld.s	$ft1, $s2, 32
	fld.s	$ft2, $s2, 24
	fld.s	$ft3, $s2, 52
	fmul.s	$fa1, $fa1, $fa7
	fmadd.s	$fa0, $ft1, $fa0, $fa1
	fld.s	$fa1, $s2, 40
	fld.s	$fa7, $s2, 56
	fmadd.s	$ft1, $ft2, $fa4, $fa6
	fadd.s	$ft1, $ft3, $ft1
	fmadd.s	$fa4, $fa1, $fa4, $fa0
	fadd.s	$fa4, $fa7, $fa4
	movfr2gr.s	$a0, $ft0
	movfr2gr.s	$a1, $ft1
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa4
	fld.s	$fa4, $s3, 8
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $sp, 32
	st.d	$a1, $sp, 40
	fmadd.s	$fa2, $fa3, $fa4, $fa2
	fadd.s	$fa2, $fa5, $fa2
	fmadd.s	$fa3, $ft2, $fa4, $fa6
	fadd.s	$fa3, $ft3, $fa3
	movfr2gr.s	$a0, $fa2
	movfr2gr.s	$a1, $fa3
	bstrins.d	$a0, $a1, 63, 32
	ld.d	$a1, $s0, 0
	fmadd.s	$fa0, $fa1, $fa4, $fa0
	fadd.s	$fa0, $fa7, $fa0
	st.d	$a0, $sp, 16
	ld.d	$a4, $a1, 40
	movfr2gr.s	$a0, $fa0
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $sp, 24
	addi.d	$a1, $sp, 32
	addi.d	$a2, $sp, 16
	move	$a0, $s0
	move	$a3, $fp
	jirl	$ra, $a4, 0
	fld.s	$fa1, $s1, 0
	fld.s	$fa2, $s1, 4
	fld.s	$fa3, $s2, 4
	fld.s	$fa4, $s2, 0
	fld.s	$fa0, $s3, 8
	fld.s	$fa5, $s2, 8
	fmul.s	$fa3, $fa2, $fa3
	fmadd.s	$fa6, $fa4, $fa1, $fa3
	fld.s	$fa7, $s2, 48
	fmadd.s	$fa6, $fa5, $fa0, $fa6
	fld.s	$ft0, $s2, 20
	fld.s	$ft1, $s2, 16
	fadd.s	$fa6, $fa7, $fa6
	fld.s	$ft2, $s2, 24
	fmul.s	$ft0, $fa2, $ft0
	fmadd.s	$ft3, $ft1, $fa1, $ft0
	fld.s	$ft4, $s2, 36
	fmadd.s	$ft3, $ft2, $fa0, $ft3
	fld.s	$ft5, $s2, 52
	fld.s	$ft6, $s2, 32
	fmul.s	$fa2, $fa2, $ft4
	fld.s	$ft4, $s2, 40
	fld.s	$ft7, $s2, 56
	fadd.s	$ft3, $ft5, $ft3
	fmadd.s	$fa1, $ft6, $fa1, $fa2
	fmadd.s	$fa1, $ft4, $fa0, $fa1
	fadd.s	$fa1, $ft7, $fa1
	movfr2gr.s	$a0, $fa6
	movfr2gr.s	$a1, $ft3
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa1
	fld.s	$fa1, $s3, 0
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $sp, 32
	st.d	$a1, $sp, 40
	fmadd.s	$fa3, $fa4, $fa1, $fa3
	fmadd.s	$fa3, $fa5, $fa0, $fa3
	fadd.s	$fa3, $fa7, $fa3
	fmadd.s	$fa4, $ft1, $fa1, $ft0
	fmadd.s	$fa4, $ft2, $fa0, $fa4
	fadd.s	$fa4, $ft5, $fa4
	fmadd.s	$fa1, $ft6, $fa1, $fa2
	movfr2gr.s	$a0, $fa3
	movfr2gr.s	$a1, $fa4
	bstrins.d	$a0, $a1, 63, 32
	ld.d	$a1, $s0, 0
	fmadd.s	$fa0, $ft4, $fa0, $fa1
	fadd.s	$fa0, $ft7, $fa0
	st.d	$a0, $sp, 16
	ld.d	$a4, $a1, 40
	movfr2gr.s	$a0, $fa0
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $sp, 24
	addi.d	$a1, $sp, 32
	addi.d	$a2, $sp, 16
	move	$a0, $s0
	move	$a3, $fp
	jirl	$ra, $a4, 0
	fld.s	$fa1, $s3, 0
	fld.s	$fa2, $s1, 4
	fld.s	$fa0, $s3, 8
	fld.s	$fa3, $s2, 4
	fld.s	$fa4, $s2, 0
	fld.s	$fa5, $s2, 8
	fld.s	$fa6, $s2, 48
	fmul.s	$fa7, $fa2, $fa3
	fmadd.s	$fa7, $fa4, $fa1, $fa7
	fmadd.s	$fa7, $fa5, $fa0, $fa7
	fadd.s	$fa7, $fa6, $fa7
	fld.s	$ft0, $s2, 20
	fld.s	$ft1, $s2, 16
	fld.s	$ft2, $s2, 24
	fld.s	$ft3, $s2, 52
	fmul.s	$ft4, $fa2, $ft0
	fmadd.s	$ft4, $ft1, $fa1, $ft4
	fmadd.s	$ft4, $ft2, $fa0, $ft4
	fadd.s	$ft4, $ft3, $ft4
	fld.s	$ft5, $s2, 36
	fld.s	$ft6, $s2, 32
	fld.s	$ft7, $s2, 40
	fld.s	$ft8, $s2, 56
	fmul.s	$fa2, $fa2, $ft5
	fmadd.s	$fa2, $ft6, $fa1, $fa2
	fmadd.s	$fa2, $ft7, $fa0, $fa2
	fadd.s	$fa2, $ft8, $fa2
	movfr2gr.s	$a0, $fa7
	movfr2gr.s	$a1, $ft4
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa2
	fld.s	$fa2, $s3, 4
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $sp, 32
	st.d	$a1, $sp, 40
	fmul.s	$fa3, $fa3, $fa2
	fmadd.s	$fa3, $fa4, $fa1, $fa3
	fmadd.s	$fa3, $fa5, $fa0, $fa3
	fadd.s	$fa3, $fa6, $fa3
	fmul.s	$fa4, $ft0, $fa2
	fmadd.s	$fa4, $ft1, $fa1, $fa4
	fmadd.s	$fa4, $ft2, $fa0, $fa4
	fadd.s	$fa4, $ft3, $fa4
	fmul.s	$fa2, $ft5, $fa2
	fmadd.s	$fa1, $ft6, $fa1, $fa2
	movfr2gr.s	$a0, $fa3
	movfr2gr.s	$a1, $fa4
	bstrins.d	$a0, $a1, 63, 32
	ld.d	$a1, $s0, 0
	fmadd.s	$fa0, $ft7, $fa0, $fa1
	fadd.s	$fa0, $ft8, $fa0
	st.d	$a0, $sp, 16
	ld.d	$a4, $a1, 40
	movfr2gr.s	$a0, $fa0
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $sp, 24
	addi.d	$a1, $sp, 32
	addi.d	$a2, $sp, 16
	move	$a0, $s0
	move	$a3, $fp
	jirl	$ra, $a4, 0
	fld.s	$fa1, $s3, 0
	fld.s	$fa2, $s3, 4
	fld.s	$fa3, $s2, 4
	fld.s	$fa4, $s2, 0
	fld.s	$fa0, $s3, 8
	fld.s	$fa5, $s2, 8
	fmul.s	$fa3, $fa2, $fa3
	fmadd.s	$fa6, $fa4, $fa1, $fa3
	fld.s	$fa7, $s2, 48
	fmadd.s	$fa6, $fa5, $fa0, $fa6
	fld.s	$ft0, $s2, 20
	fld.s	$ft1, $s2, 16
	fadd.s	$fa6, $fa7, $fa6
	fld.s	$ft2, $s2, 24
	fmul.s	$ft0, $fa2, $ft0
	fmadd.s	$ft3, $ft1, $fa1, $ft0
	fld.s	$ft4, $s2, 36
	fmadd.s	$ft3, $ft2, $fa0, $ft3
	fld.s	$ft5, $s2, 52
	fld.s	$ft6, $s2, 32
	fmul.s	$fa2, $fa2, $ft4
	fld.s	$ft4, $s2, 40
	fld.s	$ft7, $s2, 56
	fadd.s	$ft3, $ft5, $ft3
	fmadd.s	$fa1, $ft6, $fa1, $fa2
	fmadd.s	$fa1, $ft4, $fa0, $fa1
	fadd.s	$fa1, $ft7, $fa1
	movfr2gr.s	$a0, $fa6
	movfr2gr.s	$a1, $ft3
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa1
	fld.s	$fa1, $s1, 0
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $sp, 32
	st.d	$a1, $sp, 40
	fmadd.s	$fa3, $fa4, $fa1, $fa3
	fmadd.s	$fa3, $fa5, $fa0, $fa3
	fadd.s	$fa3, $fa7, $fa3
	fmadd.s	$fa4, $ft1, $fa1, $ft0
	fmadd.s	$fa4, $ft2, $fa0, $fa4
	fadd.s	$fa4, $ft5, $fa4
	fmadd.s	$fa1, $ft6, $fa1, $fa2
	movfr2gr.s	$a0, $fa3
	movfr2gr.s	$a1, $fa4
	bstrins.d	$a0, $a1, 63, 32
	ld.d	$a1, $s0, 0
	fmadd.s	$fa0, $ft4, $fa0, $fa1
	fadd.s	$fa0, $ft7, $fa0
	st.d	$a0, $sp, 16
	ld.d	$a4, $a1, 40
	movfr2gr.s	$a0, $fa0
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $sp, 24
	addi.d	$a1, $sp, 32
	addi.d	$a2, $sp, 16
	move	$a0, $s0
	move	$a3, $fp
	jirl	$ra, $a4, 0
	fld.s	$fa0, $s1, 0
	fld.s	$fa1, $s3, 4
	fld.s	$fa2, $s3, 8
	fld.s	$fa3, $s2, 4
	fld.s	$fa4, $s2, 0
	fld.s	$fa5, $s2, 8
	fld.s	$fa6, $s2, 48
	fmul.s	$fa7, $fa1, $fa3
	fmadd.s	$fa7, $fa4, $fa0, $fa7
	fmadd.s	$fa7, $fa5, $fa2, $fa7
	fadd.s	$fa7, $fa6, $fa7
	fld.s	$ft0, $s2, 20
	fld.s	$ft1, $s2, 16
	fld.s	$ft2, $s2, 24
	fld.s	$ft3, $s2, 52
	fmul.s	$ft4, $fa1, $ft0
	fmadd.s	$ft4, $ft1, $fa0, $ft4
	fmadd.s	$ft4, $ft2, $fa2, $ft4
	fadd.s	$ft4, $ft3, $ft4
	fld.s	$ft5, $s2, 36
	fld.s	$ft6, $s2, 32
	fld.s	$ft7, $s2, 40
	fld.s	$ft8, $s2, 56
	fmul.s	$fa1, $fa1, $ft5
	fmadd.s	$fa1, $ft6, $fa0, $fa1
	fmadd.s	$fa1, $ft7, $fa2, $fa1
	fadd.s	$fa1, $ft8, $fa1
	movfr2gr.s	$a0, $fa7
	movfr2gr.s	$a1, $ft4
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa1
	fld.s	$fa1, $s1, 4
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $sp, 32
	st.d	$a1, $sp, 40
	fmul.s	$fa3, $fa3, $fa1
	fmadd.s	$fa3, $fa4, $fa0, $fa3
	fmadd.s	$fa3, $fa5, $fa2, $fa3
	fadd.s	$fa3, $fa6, $fa3
	fmul.s	$fa4, $ft0, $fa1
	fmadd.s	$fa4, $ft1, $fa0, $fa4
	fmadd.s	$fa4, $ft2, $fa2, $fa4
	fadd.s	$fa4, $ft3, $fa4
	fmul.s	$fa1, $ft5, $fa1
	fmadd.s	$fa0, $ft6, $fa0, $fa1
	fmadd.s	$fa0, $ft7, $fa2, $fa0
	fadd.s	$fa0, $ft8, $fa0
	movfr2gr.s	$a0, $fa3
	ld.d	$a1, $s0, 0
	movfr2gr.s	$a2, $fa4
	bstrins.d	$a0, $a2, 63, 32
	movfr2gr.s	$a2, $fa0
	ld.d	$a4, $a1, 40
	bstrpick.d	$a1, $a2, 31, 0
	st.d	$a0, $sp, 16
	st.d	$a1, $sp, 24
	addi.d	$a1, $sp, 32
	addi.d	$a2, $sp, 16
	move	$a0, $s0
	move	$a3, $fp
	jirl	$ra, $a4, 0
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end48:
	.size	_ZN12btIDebugDraw7drawBoxERK9btVector3S2_RK11btTransformS2_, .Lfunc_end48-_ZN12btIDebugDraw7drawBoxERK9btVector3S2_RK11btTransformS2_
	.cfi_endproc
                                        # -- End function
	.text
	.globl	_ZN23btDiscreteDynamicsWorld19setConstraintSolverEP18btConstraintSolver # -- Begin function _ZN23btDiscreteDynamicsWorld19setConstraintSolverEP18btConstraintSolver
	.p2align	5
	.type	_ZN23btDiscreteDynamicsWorld19setConstraintSolverEP18btConstraintSolver,@function
_ZN23btDiscreteDynamicsWorld19setConstraintSolverEP18btConstraintSolver: # @_ZN23btDiscreteDynamicsWorld19setConstraintSolverEP18btConstraintSolver
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
	ld.bu	$a0, $a0, 333
	move	$s0, $a1
	beqz	$a0, .LBB49_2
# %bb.1:
	ld.d	$a0, $fp, 232
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.LBB49_2:
	st.b	$zero, $fp, 333
	st.d	$s0, $fp, 232
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end49:
	.size	_ZN23btDiscreteDynamicsWorld19setConstraintSolverEP18btConstraintSolver, .Lfunc_end49-_ZN23btDiscreteDynamicsWorld19setConstraintSolverEP18btConstraintSolver
	.cfi_endproc
                                        # -- End function
	.globl	_ZN23btDiscreteDynamicsWorld19getConstraintSolverEv # -- Begin function _ZN23btDiscreteDynamicsWorld19getConstraintSolverEv
	.p2align	5
	.type	_ZN23btDiscreteDynamicsWorld19getConstraintSolverEv,@function
_ZN23btDiscreteDynamicsWorld19getConstraintSolverEv: # @_ZN23btDiscreteDynamicsWorld19getConstraintSolverEv
# %bb.0:
	ld.d	$a0, $a0, 232
	ret
.Lfunc_end50:
	.size	_ZN23btDiscreteDynamicsWorld19getConstraintSolverEv, .Lfunc_end50-_ZN23btDiscreteDynamicsWorld19getConstraintSolverEv
                                        # -- End function
	.globl	_ZNK23btDiscreteDynamicsWorld17getNumConstraintsEv # -- Begin function _ZNK23btDiscreteDynamicsWorld17getNumConstraintsEv
	.p2align	5
	.type	_ZNK23btDiscreteDynamicsWorld17getNumConstraintsEv,@function
_ZNK23btDiscreteDynamicsWorld17getNumConstraintsEv: # @_ZNK23btDiscreteDynamicsWorld17getNumConstraintsEv
# %bb.0:
	ld.w	$a0, $a0, 252
	ret
.Lfunc_end51:
	.size	_ZNK23btDiscreteDynamicsWorld17getNumConstraintsEv, .Lfunc_end51-_ZNK23btDiscreteDynamicsWorld17getNumConstraintsEv
                                        # -- End function
	.globl	_ZN23btDiscreteDynamicsWorld13getConstraintEi # -- Begin function _ZN23btDiscreteDynamicsWorld13getConstraintEi
	.p2align	5
	.type	_ZN23btDiscreteDynamicsWorld13getConstraintEi,@function
_ZN23btDiscreteDynamicsWorld13getConstraintEi: # @_ZN23btDiscreteDynamicsWorld13getConstraintEi
# %bb.0:
	ld.d	$a0, $a0, 264
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	ret
.Lfunc_end52:
	.size	_ZN23btDiscreteDynamicsWorld13getConstraintEi, .Lfunc_end52-_ZN23btDiscreteDynamicsWorld13getConstraintEi
                                        # -- End function
	.globl	_ZNK23btDiscreteDynamicsWorld13getConstraintEi # -- Begin function _ZNK23btDiscreteDynamicsWorld13getConstraintEi
	.p2align	5
	.type	_ZNK23btDiscreteDynamicsWorld13getConstraintEi,@function
_ZNK23btDiscreteDynamicsWorld13getConstraintEi: # @_ZNK23btDiscreteDynamicsWorld13getConstraintEi
# %bb.0:
	ld.d	$a0, $a0, 264
	slli.d	$a1, $a1, 3
	ldx.d	$a0, $a0, $a1
	ret
.Lfunc_end53:
	.size	_ZNK23btDiscreteDynamicsWorld13getConstraintEi, .Lfunc_end53-_ZNK23btDiscreteDynamicsWorld13getConstraintEi
                                        # -- End function
	.section	.text._ZN16btCollisionWorld14setDebugDrawerEP12btIDebugDraw,"axG",@progbits,_ZN16btCollisionWorld14setDebugDrawerEP12btIDebugDraw,comdat
	.weak	_ZN16btCollisionWorld14setDebugDrawerEP12btIDebugDraw # -- Begin function _ZN16btCollisionWorld14setDebugDrawerEP12btIDebugDraw
	.p2align	5
	.type	_ZN16btCollisionWorld14setDebugDrawerEP12btIDebugDraw,@function
_ZN16btCollisionWorld14setDebugDrawerEP12btIDebugDraw: # @_ZN16btCollisionWorld14setDebugDrawerEP12btIDebugDraw
# %bb.0:
	st.d	$a1, $a0, 120
	ret
.Lfunc_end54:
	.size	_ZN16btCollisionWorld14setDebugDrawerEP12btIDebugDraw, .Lfunc_end54-_ZN16btCollisionWorld14setDebugDrawerEP12btIDebugDraw
                                        # -- End function
	.section	.text._ZN16btCollisionWorld14getDebugDrawerEv,"axG",@progbits,_ZN16btCollisionWorld14getDebugDrawerEv,comdat
	.weak	_ZN16btCollisionWorld14getDebugDrawerEv # -- Begin function _ZN16btCollisionWorld14getDebugDrawerEv
	.p2align	5
	.type	_ZN16btCollisionWorld14getDebugDrawerEv,@function
_ZN16btCollisionWorld14getDebugDrawerEv: # @_ZN16btCollisionWorld14getDebugDrawerEv
# %bb.0:
	ld.d	$a0, $a0, 120
	ret
.Lfunc_end55:
	.size	_ZN16btCollisionWorld14getDebugDrawerEv, .Lfunc_end55-_ZN16btCollisionWorld14getDebugDrawerEv
                                        # -- End function
	.section	.text._ZNK23btDiscreteDynamicsWorld12getWorldTypeEv,"axG",@progbits,_ZNK23btDiscreteDynamicsWorld12getWorldTypeEv,comdat
	.weak	_ZNK23btDiscreteDynamicsWorld12getWorldTypeEv # -- Begin function _ZNK23btDiscreteDynamicsWorld12getWorldTypeEv
	.p2align	5
	.type	_ZNK23btDiscreteDynamicsWorld12getWorldTypeEv,@function
_ZNK23btDiscreteDynamicsWorld12getWorldTypeEv: # @_ZNK23btDiscreteDynamicsWorld12getWorldTypeEv
# %bb.0:
	ori	$a0, $zero, 2
	ret
.Lfunc_end56:
	.size	_ZNK23btDiscreteDynamicsWorld12getWorldTypeEv, .Lfunc_end56-_ZNK23btDiscreteDynamicsWorld12getWorldTypeEv
                                        # -- End function
	.section	.text._ZN23btDiscreteDynamicsWorld11setNumTasksEi,"axG",@progbits,_ZN23btDiscreteDynamicsWorld11setNumTasksEi,comdat
	.weak	_ZN23btDiscreteDynamicsWorld11setNumTasksEi # -- Begin function _ZN23btDiscreteDynamicsWorld11setNumTasksEi
	.p2align	5
	.type	_ZN23btDiscreteDynamicsWorld11setNumTasksEi,@function
_ZN23btDiscreteDynamicsWorld11setNumTasksEi: # @_ZN23btDiscreteDynamicsWorld11setNumTasksEi
# %bb.0:
	ret
.Lfunc_end57:
	.size	_ZN23btDiscreteDynamicsWorld11setNumTasksEi, .Lfunc_end57-_ZN23btDiscreteDynamicsWorld11setNumTasksEi
                                        # -- End function
	.section	.text._ZN23btDiscreteDynamicsWorld14updateVehiclesEf,"axG",@progbits,_ZN23btDiscreteDynamicsWorld14updateVehiclesEf,comdat
	.weak	_ZN23btDiscreteDynamicsWorld14updateVehiclesEf # -- Begin function _ZN23btDiscreteDynamicsWorld14updateVehiclesEf
	.p2align	5
	.type	_ZN23btDiscreteDynamicsWorld14updateVehiclesEf,@function
_ZN23btDiscreteDynamicsWorld14updateVehiclesEf: # @_ZN23btDiscreteDynamicsWorld14updateVehiclesEf
.Lfunc_begin15:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception15
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
	fmov.s	$fs0, $fa0
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(_ZN15CProfileManager13Start_ProfileEPKc)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 340
	blez	$a0, .LBB58_4
# %bb.1:                                # %.lr.ph.i
	move	$s0, $zero
	move	$s1, $zero
	.p2align	4, , 16
.LBB58_2:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 352
	ldx.d	$a0, $a0, $s0
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a1, 16
.Ltmp314:                               # EH_LABEL
	move	$a1, $fp
	fmov.s	$fa0, $fs0
	jirl	$ra, $a2, 0
.Ltmp315:                               # EH_LABEL
# %bb.3:                                #   in Loop: Header=BB58_2 Depth=1
	ld.w	$a0, $fp, 340
	addi.d	$s1, $s1, 1
	addi.d	$s0, $s0, 8
	blt	$s1, $a0, .LBB58_2
.LBB58_4:                               # %_ZN23btDiscreteDynamicsWorld13updateActionsEf.exit
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(_ZN15CProfileManager12Stop_ProfileEv)
	jr	$t8
.LBB58_5:
.Ltmp316:                               # EH_LABEL
	move	$fp, $a0
.Ltmp317:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN15CProfileManager12Stop_ProfileEv)
	jirl	$ra, $ra, 0
.Ltmp318:                               # EH_LABEL
# %bb.6:                                # %_ZN14CProfileSampleD2Ev.exit.i
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB58_7:
.Ltmp319:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end58:
	.size	_ZN23btDiscreteDynamicsWorld14updateVehiclesEf, .Lfunc_end58-_ZN23btDiscreteDynamicsWorld14updateVehiclesEf
	.cfi_endproc
	.section	.gcc_except_table._ZN23btDiscreteDynamicsWorld14updateVehiclesEf,"aG",@progbits,_ZN23btDiscreteDynamicsWorld14updateVehiclesEf,comdat
	.p2align	2, 0x0
GCC_except_table58:
.Lexception15:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase14-.Lttbaseref14
.Lttbaseref14:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end15-.Lcst_begin15
.Lcst_begin15:
	.uleb128 .Lfunc_begin15-.Lfunc_begin15  # >> Call Site 1 <<
	.uleb128 .Ltmp314-.Lfunc_begin15        #   Call between .Lfunc_begin15 and .Ltmp314
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp314-.Lfunc_begin15        # >> Call Site 2 <<
	.uleb128 .Ltmp315-.Ltmp314              #   Call between .Ltmp314 and .Ltmp315
	.uleb128 .Ltmp316-.Lfunc_begin15        #     jumps to .Ltmp316
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp315-.Lfunc_begin15        # >> Call Site 3 <<
	.uleb128 .Ltmp317-.Ltmp315              #   Call between .Ltmp315 and .Ltmp317
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp317-.Lfunc_begin15        # >> Call Site 4 <<
	.uleb128 .Ltmp318-.Ltmp317              #   Call between .Ltmp317 and .Ltmp318
	.uleb128 .Ltmp319-.Lfunc_begin15        #     jumps to .Ltmp319
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp318-.Lfunc_begin15        # >> Call Site 5 <<
	.uleb128 .Lfunc_end58-.Ltmp318          #   Call between .Ltmp318 and .Lfunc_end58
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end15:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase14:
	.p2align	2, 0x0
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
	bcnez	$fcc0, .LBB59_3
# %bb.1:
	vldi	$vr0, -1168
	fadd.s	$fa1, $fa3, $fa0
	fsqrt.s	$fa0, $fa1
	fcmp.cor.s	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB59_6
.LBB59_2:                               # %.split
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
	b	.LBB59_5
.LBB59_3:
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
	bceqz	$fcc0, .LBB59_7
.LBB59_4:                               # %.split47
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
.LBB59_5:
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
.LBB59_6:                               # %call.sqrt
	fmov.s	$fa0, $fa1
	move	$fp, $a1
	move	$s0, $a0
	pcaddu18i	$ra, %call36(sqrtf)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	move	$a1, $fp
                                        # kill: def $f0 killed $f0 def $vr0
	b	.LBB59_2
.LBB59_7:                               # %call.sqrt48
	fmov.s	$fa0, $fa1
	move	$s5, $a1
	pcaddu18i	$ra, %call36(sqrtf)
	jirl	$ra, $ra, 0
	move	$a1, $s5
	b	.LBB59_4
.Lfunc_end59:
	.size	_ZNK11btMatrix3x311getRotationER12btQuaternion, .Lfunc_end59-_ZNK11btMatrix3x311getRotationER12btQuaternion
	.cfi_endproc
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZZN23btDiscreteDynamicsWorld16solveConstraintsER19btContactSolverInfoEN27InplaceSolverIslandCallbackD0Ev
	.type	_ZZN23btDiscreteDynamicsWorld16solveConstraintsER19btContactSolverInfoEN27InplaceSolverIslandCallbackD0Ev,@function
_ZZN23btDiscreteDynamicsWorld16solveConstraintsER19btContactSolverInfoEN27InplaceSolverIslandCallbackD0Ev: # @_ZZN23btDiscreteDynamicsWorld16solveConstraintsER19btContactSolverInfoEN27InplaceSolverIslandCallbackD0Ev
	.cfi_startproc
# %bb.0:
	pcaddu18i	$t8, %call36(_ZdlPv)
	jr	$t8
.Lfunc_end60:
	.size	_ZZN23btDiscreteDynamicsWorld16solveConstraintsER19btContactSolverInfoEN27InplaceSolverIslandCallbackD0Ev, .Lfunc_end60-_ZZN23btDiscreteDynamicsWorld16solveConstraintsER19btContactSolverInfoEN27InplaceSolverIslandCallbackD0Ev
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZZN23btDiscreteDynamicsWorld16solveConstraintsER19btContactSolverInfoEN27InplaceSolverIslandCallback13ProcessIslandEPP17btCollisionObjectiPP20btPersistentManifoldii
	.type	_ZZN23btDiscreteDynamicsWorld16solveConstraintsER19btContactSolverInfoEN27InplaceSolverIslandCallback13ProcessIslandEPP17btCollisionObjectiPP20btPersistentManifoldii,@function
_ZZN23btDiscreteDynamicsWorld16solveConstraintsER19btContactSolverInfoEN27InplaceSolverIslandCallback13ProcessIslandEPP17btCollisionObjectiPP20btPersistentManifoldii: # @_ZZN23btDiscreteDynamicsWorld16solveConstraintsER19btContactSolverInfoEN27InplaceSolverIslandCallback13ProcessIslandEPP17btCollisionObjectiPP20btPersistentManifoldii
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	ld.w	$a6, $a0, 32
	bltz	$a5, .LBB61_8
# %bb.1:                                # %.preheader
	move	$a7, $a5
	blez	$a6, .LBB61_10
# %bb.2:                                # %.lr.ph
	ld.d	$a5, $a0, 24
	move	$t1, $zero
	move	$t0, $a6
	.p2align	4, , 16
.LBB61_3:                               # =>This Inner Loop Header: Depth=1
	ld.d	$t3, $a5, 0
	ld.d	$t2, $t3, 24
	ld.w	$t2, $t2, 220
	bgez	$t2, .LBB61_5
# %bb.4:                                #   in Loop: Header=BB61_3 Depth=1
	ld.d	$t2, $t3, 32
	ld.w	$t2, $t2, 220
.LBB61_5:                               # %_Z23btGetConstraintIslandIdPK17btTypedConstraint.exit
                                        #   in Loop: Header=BB61_3 Depth=1
	beq	$t2, $a7, .LBB61_11
# %bb.6:                                #   in Loop: Header=BB61_3 Depth=1
	addi.w	$t1, $t1, 1
	addi.d	$t0, $t0, -1
	addi.d	$a5, $a5, 8
	bnez	$t0, .LBB61_3
# %bb.7:
	move	$a5, $zero
	b	.LBB61_16
.LBB61_8:
	sub.w	$a5, $zero, $a6
	beq	$a4, $a5, .LBB61_20
# %bb.9:
	ld.d	$t0, $a0, 16
	ld.d	$a5, $a0, 24
	ld.d	$t1, $t0, 0
	ld.d	$a7, $a0, 8
	vld	$vr0, $a0, 40
	ld.d	$a0, $a0, 56
	ld.d	$t1, $t1, 24
	st.d	$a0, $sp, 16
	vst	$vr0, $sp, 0
	move	$a0, $t0
	b	.LBB61_19
.LBB61_10:
	move	$t1, $zero
	move	$a5, $zero
.LBB61_11:                              # %_Z23btGetConstraintIslandIdPK17btTypedConstraint.exit._crit_edge
	bge	$t1, $a6, .LBB61_16
# %bb.12:                               # %.lr.ph39
	ld.d	$t2, $a0, 24
	move	$t0, $zero
	bstrpick.d	$t3, $t1, 31, 0
	alsl.d	$t2, $t3, $t2, 3
	b	.LBB61_14
	.p2align	4, , 16
.LBB61_13:                              # %_Z23btGetConstraintIslandIdPK17btTypedConstraint.exit29
                                        #   in Loop: Header=BB61_14 Depth=1
	xor	$t3, $t3, $a7
	sltui	$t3, $t3, 1
	add.w	$t0, $t0, $t3
	addi.w	$t1, $t1, 1
	addi.d	$t2, $t2, 8
	bge	$t1, $a6, .LBB61_17
.LBB61_14:                              # =>This Inner Loop Header: Depth=1
	ld.d	$t4, $t2, 0
	ld.d	$t3, $t4, 24
	ld.w	$t3, $t3, 220
	bgez	$t3, .LBB61_13
# %bb.15:                               #   in Loop: Header=BB61_14 Depth=1
	ld.d	$t3, $t4, 32
	ld.w	$t3, $t3, 220
	b	.LBB61_13
.LBB61_16:
	move	$t0, $zero
.LBB61_17:                              # %._crit_edge40
	sub.w	$a6, $zero, $t0
	beq	$a4, $a6, .LBB61_20
# %bb.18:
	ld.d	$a6, $a0, 16
	ld.d	$t1, $a6, 0
	ld.d	$a7, $a0, 8
	vld	$vr0, $a0, 40
	ld.d	$a0, $a0, 56
	ld.d	$t1, $t1, 24
	st.d	$a0, $sp, 16
	vst	$vr0, $sp, 0
	move	$a0, $a6
	move	$a6, $t0
.LBB61_19:
	jirl	$ra, $t1, 0
.LBB61_20:
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end61:
	.size	_ZZN23btDiscreteDynamicsWorld16solveConstraintsER19btContactSolverInfoEN27InplaceSolverIslandCallback13ProcessIslandEPP17btCollisionObjectiPP20btPersistentManifoldii, .Lfunc_end61-_ZZN23btDiscreteDynamicsWorld16solveConstraintsER19btContactSolverInfoEN27InplaceSolverIslandCallback13ProcessIslandEPP17btCollisionObjectiPP20btPersistentManifoldii
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN34btClosestNotMeConvexResultCallbackD0Ev,"axG",@progbits,_ZN34btClosestNotMeConvexResultCallbackD0Ev,comdat
	.weak	_ZN34btClosestNotMeConvexResultCallbackD0Ev # -- Begin function _ZN34btClosestNotMeConvexResultCallbackD0Ev
	.p2align	5
	.type	_ZN34btClosestNotMeConvexResultCallbackD0Ev,@function
_ZN34btClosestNotMeConvexResultCallbackD0Ev: # @_ZN34btClosestNotMeConvexResultCallbackD0Ev
	.cfi_startproc
# %bb.0:
	pcaddu18i	$t8, %call36(_ZdlPv)
	jr	$t8
.Lfunc_end62:
	.size	_ZN34btClosestNotMeConvexResultCallbackD0Ev, .Lfunc_end62-_ZN34btClosestNotMeConvexResultCallbackD0Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK34btClosestNotMeConvexResultCallback14needsCollisionEP17btBroadphaseProxy,"axG",@progbits,_ZNK34btClosestNotMeConvexResultCallback14needsCollisionEP17btBroadphaseProxy,comdat
	.weak	_ZNK34btClosestNotMeConvexResultCallback14needsCollisionEP17btBroadphaseProxy # -- Begin function _ZNK34btClosestNotMeConvexResultCallback14needsCollisionEP17btBroadphaseProxy
	.p2align	5
	.type	_ZNK34btClosestNotMeConvexResultCallback14needsCollisionEP17btBroadphaseProxy,@function
_ZNK34btClosestNotMeConvexResultCallback14needsCollisionEP17btBroadphaseProxy: # @_ZNK34btClosestNotMeConvexResultCallback14needsCollisionEP17btBroadphaseProxy
.Lfunc_begin16:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception16
# %bb.0:
	addi.d	$sp, $sp, -64
	.cfi_def_cfa_offset 64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	move	$fp, $a1
	ld.d	$a2, $a1, 0
	ld.d	$a1, $a0, 88
	beq	$a2, $a1, .LBB63_14
# %bb.1:
	ld.hu	$a3, $fp, 8
	ld.hu	$a4, $a0, 14
	and	$a3, $a4, $a3
	beqz	$a3, .LBB63_14
# %bb.2:                                # %_ZNK16btCollisionWorld20ConvexResultCallback14needsCollisionEP17btBroadphaseProxy.exit
	ld.hu	$a3, $a0, 12
	ld.hu	$a4, $fp, 10
	and	$a3, $a4, $a3
	beqz	$a3, .LBB63_14
# %bb.3:
	move	$s0, $a0
	ld.d	$a0, $a0, 112
	ld.d	$a3, $a0, 0
	ld.d	$a3, $a3, 56
	jirl	$ra, $a3, 0
	move	$a1, $a0
	ori	$a0, $zero, 1
	beqz	$a1, .LBB63_15
# %bb.4:
	ld.d	$a0, $s0, 104
	st.d	$zero, $sp, 12
	ld.d	$a1, $s0, 88
	ld.d	$a2, $a0, 0
	ld.d	$a1, $a1, 192
	ld.d	$a3, $a2, 104
	ori	$a2, $zero, 1
	st.b	$a2, $sp, 32
	st.d	$zero, $sp, 24
.Ltmp320:                               # EH_LABEL
	move	$a2, $fp
	jirl	$ra, $a3, 0
.Ltmp321:                               # EH_LABEL
# %bb.5:
	beqz	$a0, .LBB63_16
# %bb.6:
	ld.d	$a0, $a0, 16
	ori	$a1, $zero, 1
	beqz	$a0, .LBB63_19
# %bb.7:                                # %.loopexit
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a1, 32
	st.w	$zero, $sp, 12
.Ltmp322:                               # EH_LABEL
	addi.d	$a1, $sp, 8
	jirl	$ra, $a2, 0
.Ltmp323:                               # EH_LABEL
# %bb.8:                                # %.preheader
	ld.w	$a1, $sp, 12
	ld.d	$a0, $sp, 24
	blez	$a1, .LBB63_12
# %bb.9:
	move	$a2, $a0
	.p2align	4, , 16
.LBB63_10:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a2, 0
	ld.w	$a3, $a3, 728
	bgtz	$a3, .LBB63_17
# %bb.11:                               #   in Loop: Header=BB63_10 Depth=1
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 8
	bnez	$a1, .LBB63_10
.LBB63_12:                              # %.critedge31
	ori	$a1, $zero, 1
	beqz	$a0, .LBB63_19
# %bb.13:                               # %.critedge31
	ld.b	$a2, $sp, 32
	andi	$a2, $a2, 1
	bnez	$a2, .LBB63_18
	b	.LBB63_19
.LBB63_14:
	move	$a0, $zero
.LBB63_15:                              # %_ZNK16btCollisionWorld20ConvexResultCallback14needsCollisionEP17btBroadphaseProxy.exit.thread
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB63_16:
	ori	$a1, $zero, 1
	b	.LBB63_19
.LBB63_17:
	ld.bu	$a2, $sp, 32
	move	$a1, $zero
	beqz	$a2, .LBB63_19
.LBB63_18:                              # %_ZNK16btCollisionWorld20ConvexResultCallback14needsCollisionEP17btBroadphaseProxy.exit.thread.sink.split.sink.split
	move	$fp, $a1
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
	move	$a1, $fp
.LBB63_19:                              # %_ZNK16btCollisionWorld20ConvexResultCallback14needsCollisionEP17btBroadphaseProxy.exit.thread.sink.split
	move	$a0, $a1
	b	.LBB63_15
.LBB63_20:
.Ltmp324:                               # EH_LABEL
	ld.d	$a1, $sp, 24
	move	$fp, $a0
	beqz	$a1, .LBB63_23
# %bb.21:
	ld.b	$a0, $sp, 32
	andi	$a0, $a0, 1
	beqz	$a0, .LBB63_23
# %bb.22:
.Ltmp325:                               # EH_LABEL
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp326:                               # EH_LABEL
.LBB63_23:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB63_24:
.Ltmp327:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end63:
	.size	_ZNK34btClosestNotMeConvexResultCallback14needsCollisionEP17btBroadphaseProxy, .Lfunc_end63-_ZNK34btClosestNotMeConvexResultCallback14needsCollisionEP17btBroadphaseProxy
	.cfi_endproc
	.section	.gcc_except_table._ZNK34btClosestNotMeConvexResultCallback14needsCollisionEP17btBroadphaseProxy,"aG",@progbits,_ZNK34btClosestNotMeConvexResultCallback14needsCollisionEP17btBroadphaseProxy,comdat
	.p2align	2, 0x0
GCC_except_table63:
.Lexception16:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase15-.Lttbaseref15
.Lttbaseref15:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end16-.Lcst_begin16
.Lcst_begin16:
	.uleb128 .Lfunc_begin16-.Lfunc_begin16  # >> Call Site 1 <<
	.uleb128 .Ltmp320-.Lfunc_begin16        #   Call between .Lfunc_begin16 and .Ltmp320
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp320-.Lfunc_begin16        # >> Call Site 2 <<
	.uleb128 .Ltmp323-.Ltmp320              #   Call between .Ltmp320 and .Ltmp323
	.uleb128 .Ltmp324-.Lfunc_begin16        #     jumps to .Ltmp324
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp323-.Lfunc_begin16        # >> Call Site 3 <<
	.uleb128 .Ltmp325-.Ltmp323              #   Call between .Ltmp323 and .Ltmp325
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp325-.Lfunc_begin16        # >> Call Site 4 <<
	.uleb128 .Ltmp326-.Ltmp325              #   Call between .Ltmp325 and .Ltmp326
	.uleb128 .Ltmp327-.Lfunc_begin16        #     jumps to .Ltmp327
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp326-.Lfunc_begin16        # >> Call Site 5 <<
	.uleb128 .Lfunc_end63-.Ltmp326          #   Call between .Ltmp326 and .Lfunc_end63
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end16:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase15:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN34btClosestNotMeConvexResultCallback15addSingleResultERN16btCollisionWorld17LocalConvexResultEb,"axG",@progbits,_ZN34btClosestNotMeConvexResultCallback15addSingleResultERN16btCollisionWorld17LocalConvexResultEb,comdat
	.weak	_ZN34btClosestNotMeConvexResultCallback15addSingleResultERN16btCollisionWorld17LocalConvexResultEb # -- Begin function _ZN34btClosestNotMeConvexResultCallback15addSingleResultERN16btCollisionWorld17LocalConvexResultEb
	.p2align	5
	.type	_ZN34btClosestNotMeConvexResultCallback15addSingleResultERN16btCollisionWorld17LocalConvexResultEb,@function
_ZN34btClosestNotMeConvexResultCallback15addSingleResultERN16btCollisionWorld17LocalConvexResultEb: # @_ZN34btClosestNotMeConvexResultCallback15addSingleResultERN16btCollisionWorld17LocalConvexResultEb
	.cfi_startproc
# %bb.0:
	ld.d	$a3, $a1, 0
	ld.d	$a4, $a0, 88
	beq	$a3, $a4, .LBB64_5
# %bb.1:
	ld.bu	$a4, $a3, 216
	andi	$a4, $a4, 4
	bnez	$a4, .LBB64_5
# %bb.2:
	fld.s	$fa0, $a0, 32
	fld.s	$fa1, $a0, 16
	fld.s	$fa2, $a0, 36
	fld.s	$fa3, $a0, 20
	fsub.s	$fa0, $fa0, $fa1
	fsub.s	$fa1, $fa2, $fa3
	fld.s	$fa2, $a1, 20
	fld.s	$fa3, $a0, 40
	fld.s	$fa4, $a0, 24
	fld.s	$fa5, $a1, 16
	fmul.s	$fa1, $fa1, $fa2
	fld.s	$fa2, $a1, 24
	fld.s	$fa6, $a0, 96
	fmadd.s	$fa0, $fa5, $fa0, $fa1
	fsub.s	$fa1, $fa3, $fa4
	fmadd.s	$fa0, $fa2, $fa1, $fa0
	fneg.s	$fa1, $fa6
	fcmp.cle.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB64_5
# %bb.3:
	fld.s	$fa0, $a1, 48
	fst.s	$fa0, $a0, 8
	st.d	$a3, $a0, 80
	beqz	$a2, .LBB64_6
# %bb.4:
	addi.d	$a2, $a1, 16
	vld	$vr0, $a2, 0
	vst	$vr0, $a0, 48
	vld	$vr0, $a1, 32
	vst	$vr0, $a0, 64
	fld.s	$fa0, $a1, 48
                                        # kill: def $f0 killed $f0 killed $vr0
	ret
.LBB64_5:
	vldi	$vr0, -1168
                                        # kill: def $f0 killed $f0 killed $vr0
	ret
.LBB64_6:
	fld.s	$fa0, $a3, 12
	fld.s	$fa1, $a1, 20
	fld.s	$fa2, $a3, 8
	fld.s	$fa3, $a1, 16
	fmul.s	$fa0, $fa0, $fa1
	fld.s	$fa4, $a3, 16
	fld.s	$fa5, $a1, 24
	fld.s	$fa6, $a3, 28
	fld.s	$fa7, $a3, 24
	fmadd.s	$fa0, $fa2, $fa3, $fa0
	fmadd.s	$fa0, $fa4, $fa5, $fa0
	fmul.s	$fa2, $fa1, $fa6
	fmadd.s	$fa2, $fa7, $fa3, $fa2
	fld.s	$fa4, $a3, 32
	fld.s	$fa6, $a3, 44
	fld.s	$fa7, $a3, 40
	fld.s	$ft0, $a3, 48
	fmadd.s	$fa2, $fa4, $fa5, $fa2
	fmul.s	$fa1, $fa1, $fa6
	fmadd.s	$fa1, $fa7, $fa3, $fa1
	fmadd.s	$fa1, $ft0, $fa5, $fa1
	movfr2gr.s	$a2, $fa0
	movfr2gr.s	$a3, $fa2
	bstrins.d	$a2, $a3, 63, 32
	movfr2gr.s	$a3, $fa1
	bstrpick.d	$a3, $a3, 31, 0
	st.d	$a2, $a0, 48
	st.d	$a3, $a0, 56
	vld	$vr0, $a1, 32
	vst	$vr0, $a0, 64
	fld.s	$fa0, $a1, 48
                                        # kill: def $f0 killed $f0 killed $vr0
	ret
.Lfunc_end64:
	.size	_ZN34btClosestNotMeConvexResultCallback15addSingleResultERN16btCollisionWorld17LocalConvexResultEb, .Lfunc_end64-_ZN34btClosestNotMeConvexResultCallback15addSingleResultERN16btCollisionWorld17LocalConvexResultEb
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN17DebugDrawcallbackD0Ev,"axG",@progbits,_ZN17DebugDrawcallbackD0Ev,comdat
	.weak	_ZN17DebugDrawcallbackD0Ev      # -- Begin function _ZN17DebugDrawcallbackD0Ev
	.p2align	5
	.type	_ZN17DebugDrawcallbackD0Ev,@function
_ZN17DebugDrawcallbackD0Ev:             # @_ZN17DebugDrawcallbackD0Ev
.Lfunc_begin17:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception17
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
	addi.d	$a0, $a0, 8
.Ltmp328:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN31btInternalTriangleIndexCallbackD2Ev)
	jirl	$ra, $ra, 0
.Ltmp329:                               # EH_LABEL
# %bb.1:
.Ltmp334:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN18btTriangleCallbackD2Ev)
	jirl	$ra, $ra, 0
.Ltmp335:                               # EH_LABEL
# %bb.2:                                # %_ZN17DebugDrawcallbackD2Ev.exit
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZdlPv)
	jr	$t8
.LBB65_3:
.Ltmp336:                               # EH_LABEL
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB65_4:
.Ltmp330:                               # EH_LABEL
	move	$s0, $a0
.Ltmp331:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN18btTriangleCallbackD2Ev)
	jirl	$ra, $ra, 0
.Ltmp332:                               # EH_LABEL
# %bb.5:                                # %.body
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB65_6:
.Ltmp333:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end65:
	.size	_ZN17DebugDrawcallbackD0Ev, .Lfunc_end65-_ZN17DebugDrawcallbackD0Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN17DebugDrawcallbackD0Ev,"aG",@progbits,_ZN17DebugDrawcallbackD0Ev,comdat
	.p2align	2, 0x0
GCC_except_table65:
.Lexception17:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase16-.Lttbaseref16
.Lttbaseref16:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end17-.Lcst_begin17
.Lcst_begin17:
	.uleb128 .Ltmp328-.Lfunc_begin17        # >> Call Site 1 <<
	.uleb128 .Ltmp329-.Ltmp328              #   Call between .Ltmp328 and .Ltmp329
	.uleb128 .Ltmp330-.Lfunc_begin17        #     jumps to .Ltmp330
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp334-.Lfunc_begin17        # >> Call Site 2 <<
	.uleb128 .Ltmp335-.Ltmp334              #   Call between .Ltmp334 and .Ltmp335
	.uleb128 .Ltmp336-.Lfunc_begin17        #     jumps to .Ltmp336
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp335-.Lfunc_begin17        # >> Call Site 3 <<
	.uleb128 .Ltmp331-.Ltmp335              #   Call between .Ltmp335 and .Ltmp331
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp331-.Lfunc_begin17        # >> Call Site 4 <<
	.uleb128 .Ltmp332-.Ltmp331              #   Call between .Ltmp331 and .Ltmp332
	.uleb128 .Ltmp333-.Lfunc_begin17        #     jumps to .Ltmp333
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp332-.Lfunc_begin17        # >> Call Site 5 <<
	.uleb128 .Lfunc_end65-.Ltmp332          #   Call between .Ltmp332 and .Lfunc_end65
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end17:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase16:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN17DebugDrawcallback15processTriangleEP9btVector3ii,"axG",@progbits,_ZN17DebugDrawcallback15processTriangleEP9btVector3ii,comdat
	.weak	_ZN17DebugDrawcallback15processTriangleEP9btVector3ii # -- Begin function _ZN17DebugDrawcallback15processTriangleEP9btVector3ii
	.p2align	5
	.type	_ZN17DebugDrawcallback15processTriangleEP9btVector3ii,@function
_ZN17DebugDrawcallback15processTriangleEP9btVector3ii: # @_ZN17DebugDrawcallback15processTriangleEP9btVector3ii
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -80
	.cfi_def_cfa_offset 80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	move	$fp, $a0
	fld.s	$fa0, $a0, 40
	fld.s	$ft2, $a1, 0
	fld.s	$fa1, $a0, 44
	fld.s	$ft3, $a1, 4
	fld.s	$fa2, $a0, 48
	fld.s	$ft4, $a1, 8
	fld.s	$fa4, $a0, 88
	fmul.s	$fa3, $fa1, $ft3
	fmadd.s	$fa3, $fa0, $ft2, $fa3
	fmadd.s	$fa3, $fa2, $ft4, $fa3
	fadd.s	$ft5, $fa3, $fa4
	fld.s	$fa7, $a0, 60
	fld.s	$fa6, $a0, 56
	fld.s	$ft0, $a0, 64
	fld.s	$ft1, $a0, 92
	fmul.s	$fa3, $ft3, $fa7
	fmadd.s	$fa3, $fa6, $ft2, $fa3
	fmadd.s	$fa3, $ft0, $ft4, $fa3
	fadd.s	$ft6, $ft1, $fa3
	fld.s	$ft7, $a0, 76
	fld.s	$ft8, $a0, 72
	fld.s	$fa3, $a0, 80
	fld.s	$fa5, $a0, 96
	fmul.s	$ft3, $ft3, $ft7
	fmadd.s	$ft2, $ft8, $ft2, $ft3
	fmadd.s	$ft2, $fa3, $ft4, $ft2
	fadd.s	$ft2, $fa5, $ft2
	movfr2gr.s	$a0, $ft5
	movfr2gr.s	$a2, $ft6
	bstrins.d	$a0, $a2, 63, 32
	movfr2gr.s	$a2, $ft2
	bstrpick.d	$a2, $a2, 31, 0
	st.d	$a0, $sp, 40
	fld.s	$ft2, $a1, 20
	fld.s	$ft3, $a1, 16
	fld.s	$ft4, $a1, 24
	st.d	$a2, $sp, 48
	fmul.s	$ft5, $fa1, $ft2
	fmadd.s	$ft5, $fa0, $ft3, $ft5
	fmadd.s	$ft5, $fa2, $ft4, $ft5
	fadd.s	$ft5, $fa4, $ft5
	fmul.s	$ft6, $fa7, $ft2
	fmadd.s	$ft6, $fa6, $ft3, $ft6
	fmadd.s	$ft6, $ft0, $ft4, $ft6
	fadd.s	$ft6, $ft1, $ft6
	fmul.s	$ft2, $ft7, $ft2
	fmadd.s	$ft2, $ft8, $ft3, $ft2
	fmadd.s	$ft2, $fa3, $ft4, $ft2
	fadd.s	$ft2, $fa5, $ft2
	movfr2gr.s	$a0, $ft5
	movfr2gr.s	$a2, $ft6
	bstrins.d	$a0, $a2, 63, 32
	movfr2gr.s	$a2, $ft2
	bstrpick.d	$a2, $a2, 31, 0
	st.d	$a0, $sp, 24
	fld.s	$ft2, $a1, 36
	fld.s	$ft3, $a1, 32
	fld.s	$ft4, $a1, 40
	st.d	$a2, $sp, 32
	fmul.s	$fa1, $fa1, $ft2
	fmadd.s	$fa0, $fa0, $ft3, $fa1
	fmadd.s	$fa0, $fa2, $ft4, $fa0
	fadd.s	$fa0, $fa4, $fa0
	fmul.s	$fa1, $fa7, $ft2
	fmadd.s	$fa1, $fa6, $ft3, $fa1
	fmadd.s	$fa1, $ft0, $ft4, $fa1
	fadd.s	$fa1, $ft1, $fa1
	fmul.s	$fa2, $ft7, $ft2
	fmadd.s	$fa2, $ft8, $ft3, $fa2
	movfr2gr.s	$a1, $fa0
	ld.d	$a0, $fp, 16
	movfr2gr.s	$a2, $fa1
	bstrins.d	$a1, $a2, 63, 32
	st.d	$a1, $sp, 8
	ld.d	$a1, $a0, 0
	fmadd.s	$fa0, $fa3, $ft4, $fa2
	fadd.s	$fa0, $fa5, $fa0
	movfr2gr.s	$a2, $fa0
	ld.d	$a4, $a1, 40
	bstrpick.d	$a1, $a2, 31, 0
	st.d	$a1, $sp, 16
	addi.d	$s0, $fp, 24
	addi.d	$a1, $sp, 40
	addi.d	$a2, $sp, 24
	move	$a3, $s0
	jirl	$ra, $a4, 0
	ld.d	$a0, $fp, 16
	ld.d	$a1, $a0, 0
	ld.d	$a4, $a1, 40
	addi.d	$a1, $sp, 24
	addi.d	$a2, $sp, 8
	move	$a3, $s0
	jirl	$ra, $a4, 0
	ld.d	$a0, $fp, 16
	ld.d	$a1, $a0, 0
	ld.d	$a4, $a1, 40
	addi.d	$a1, $sp, 8
	addi.d	$a2, $sp, 40
	move	$a3, $s0
	jirl	$ra, $a4, 0
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end66:
	.size	_ZN17DebugDrawcallback15processTriangleEP9btVector3ii, .Lfunc_end66-_ZN17DebugDrawcallback15processTriangleEP9btVector3ii
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN17DebugDrawcallback28internalProcessTriangleIndexEP9btVector3ii,"axG",@progbits,_ZN17DebugDrawcallback28internalProcessTriangleIndexEP9btVector3ii,comdat
	.weak	_ZN17DebugDrawcallback28internalProcessTriangleIndexEP9btVector3ii # -- Begin function _ZN17DebugDrawcallback28internalProcessTriangleIndexEP9btVector3ii
	.p2align	5
	.type	_ZN17DebugDrawcallback28internalProcessTriangleIndexEP9btVector3ii,@function
_ZN17DebugDrawcallback28internalProcessTriangleIndexEP9btVector3ii: # @_ZN17DebugDrawcallback28internalProcessTriangleIndexEP9btVector3ii
	.cfi_startproc
# %bb.0:
	ld.d	$a4, $a0, 0
	ld.d	$a4, $a4, 16
	jr	$a4
.Lfunc_end67:
	.size	_ZN17DebugDrawcallback28internalProcessTriangleIndexEP9btVector3ii, .Lfunc_end67-_ZN17DebugDrawcallback28internalProcessTriangleIndexEP9btVector3ii
	.cfi_endproc
                                        # -- End function
	.section	.text._ZThn8_N17DebugDrawcallbackD1Ev,"axG",@progbits,_ZThn8_N17DebugDrawcallbackD1Ev,comdat
	.weak	_ZThn8_N17DebugDrawcallbackD1Ev # -- Begin function _ZThn8_N17DebugDrawcallbackD1Ev
	.p2align	5
	.type	_ZThn8_N17DebugDrawcallbackD1Ev,@function
_ZThn8_N17DebugDrawcallbackD1Ev:        # @_ZThn8_N17DebugDrawcallbackD1Ev
.Lfunc_begin18:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception18
# %bb.0:
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	addi.d	$fp, $a0, -8
.Ltmp337:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN31btInternalTriangleIndexCallbackD2Ev)
	jirl	$ra, $ra, 0
.Ltmp338:                               # EH_LABEL
# %bb.1:                                # %_ZN17DebugDrawcallbackD2Ev.exit
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZN18btTriangleCallbackD2Ev)
	jr	$t8
.LBB68_2:
.Ltmp339:                               # EH_LABEL
	move	$s0, $a0
.Ltmp340:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN18btTriangleCallbackD2Ev)
	jirl	$ra, $ra, 0
.Ltmp341:                               # EH_LABEL
# %bb.3:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB68_4:
.Ltmp342:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end68:
	.size	_ZThn8_N17DebugDrawcallbackD1Ev, .Lfunc_end68-_ZThn8_N17DebugDrawcallbackD1Ev
	.cfi_endproc
	.section	.gcc_except_table._ZThn8_N17DebugDrawcallbackD1Ev,"aG",@progbits,_ZThn8_N17DebugDrawcallbackD1Ev,comdat
	.p2align	2, 0x0
GCC_except_table68:
.Lexception18:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase17-.Lttbaseref17
.Lttbaseref17:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end18-.Lcst_begin18
.Lcst_begin18:
	.uleb128 .Ltmp337-.Lfunc_begin18        # >> Call Site 1 <<
	.uleb128 .Ltmp338-.Ltmp337              #   Call between .Ltmp337 and .Ltmp338
	.uleb128 .Ltmp339-.Lfunc_begin18        #     jumps to .Ltmp339
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp338-.Lfunc_begin18        # >> Call Site 2 <<
	.uleb128 .Ltmp340-.Ltmp338              #   Call between .Ltmp338 and .Ltmp340
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp340-.Lfunc_begin18        # >> Call Site 3 <<
	.uleb128 .Ltmp341-.Ltmp340              #   Call between .Ltmp340 and .Ltmp341
	.uleb128 .Ltmp342-.Lfunc_begin18        #     jumps to .Ltmp342
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp341-.Lfunc_begin18        # >> Call Site 4 <<
	.uleb128 .Lfunc_end68-.Ltmp341          #   Call between .Ltmp341 and .Lfunc_end68
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end18:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase17:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZThn8_N17DebugDrawcallbackD0Ev,"axG",@progbits,_ZThn8_N17DebugDrawcallbackD0Ev,comdat
	.weak	_ZThn8_N17DebugDrawcallbackD0Ev # -- Begin function _ZThn8_N17DebugDrawcallbackD0Ev
	.p2align	5
	.type	_ZThn8_N17DebugDrawcallbackD0Ev,@function
_ZThn8_N17DebugDrawcallbackD0Ev:        # @_ZThn8_N17DebugDrawcallbackD0Ev
.Lfunc_begin19:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception19
# %bb.0:
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	addi.d	$fp, $a0, -8
.Ltmp343:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN31btInternalTriangleIndexCallbackD2Ev)
	jirl	$ra, $ra, 0
.Ltmp344:                               # EH_LABEL
# %bb.1:
.Ltmp349:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN18btTriangleCallbackD2Ev)
	jirl	$ra, $ra, 0
.Ltmp350:                               # EH_LABEL
# %bb.2:                                # %_ZN17DebugDrawcallbackD0Ev.exit
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZdlPv)
	jr	$t8
.LBB69_3:
.Ltmp351:                               # EH_LABEL
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB69_4:
.Ltmp345:                               # EH_LABEL
	move	$s0, $a0
.Ltmp346:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN18btTriangleCallbackD2Ev)
	jirl	$ra, $ra, 0
.Ltmp347:                               # EH_LABEL
# %bb.5:                                # %.body.i
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB69_6:
.Ltmp348:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end69:
	.size	_ZThn8_N17DebugDrawcallbackD0Ev, .Lfunc_end69-_ZThn8_N17DebugDrawcallbackD0Ev
	.cfi_endproc
	.section	.gcc_except_table._ZThn8_N17DebugDrawcallbackD0Ev,"aG",@progbits,_ZThn8_N17DebugDrawcallbackD0Ev,comdat
	.p2align	2, 0x0
GCC_except_table69:
.Lexception19:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase18-.Lttbaseref18
.Lttbaseref18:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end19-.Lcst_begin19
.Lcst_begin19:
	.uleb128 .Ltmp343-.Lfunc_begin19        # >> Call Site 1 <<
	.uleb128 .Ltmp344-.Ltmp343              #   Call between .Ltmp343 and .Ltmp344
	.uleb128 .Ltmp345-.Lfunc_begin19        #     jumps to .Ltmp345
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp349-.Lfunc_begin19        # >> Call Site 2 <<
	.uleb128 .Ltmp350-.Ltmp349              #   Call between .Ltmp349 and .Ltmp350
	.uleb128 .Ltmp351-.Lfunc_begin19        #     jumps to .Ltmp351
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp350-.Lfunc_begin19        # >> Call Site 3 <<
	.uleb128 .Ltmp346-.Ltmp350              #   Call between .Ltmp350 and .Ltmp346
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp346-.Lfunc_begin19        # >> Call Site 4 <<
	.uleb128 .Ltmp347-.Ltmp346              #   Call between .Ltmp346 and .Ltmp347
	.uleb128 .Ltmp348-.Lfunc_begin19        #     jumps to .Ltmp348
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp347-.Lfunc_begin19        # >> Call Site 5 <<
	.uleb128 .Lfunc_end69-.Ltmp347          #   Call between .Ltmp347 and .Lfunc_end69
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end19:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase18:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZThn8_N17DebugDrawcallback28internalProcessTriangleIndexEP9btVector3ii,"axG",@progbits,_ZThn8_N17DebugDrawcallback28internalProcessTriangleIndexEP9btVector3ii,comdat
	.weak	_ZThn8_N17DebugDrawcallback28internalProcessTriangleIndexEP9btVector3ii # -- Begin function _ZThn8_N17DebugDrawcallback28internalProcessTriangleIndexEP9btVector3ii
	.p2align	5
	.type	_ZThn8_N17DebugDrawcallback28internalProcessTriangleIndexEP9btVector3ii,@function
_ZThn8_N17DebugDrawcallback28internalProcessTriangleIndexEP9btVector3ii: # @_ZThn8_N17DebugDrawcallback28internalProcessTriangleIndexEP9btVector3ii
	.cfi_startproc
# %bb.0:
	ld.d	$a4, $a0, -8
	ld.d	$a4, $a4, 16
	addi.d	$a0, $a0, -8
	jr	$a4
.Lfunc_end70:
	.size	_ZThn8_N17DebugDrawcallback28internalProcessTriangleIndexEP9btVector3ii, .Lfunc_end70-_ZThn8_N17DebugDrawcallback28internalProcessTriangleIndexEP9btVector3ii
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN20btAlignedObjectArrayIP17btTypedConstraintE17quickSortInternalI33btSortConstraintOnIslandPredicateEEvT_ii,"axG",@progbits,_ZN20btAlignedObjectArrayIP17btTypedConstraintE17quickSortInternalI33btSortConstraintOnIslandPredicateEEvT_ii,comdat
	.weak	_ZN20btAlignedObjectArrayIP17btTypedConstraintE17quickSortInternalI33btSortConstraintOnIslandPredicateEEvT_ii # -- Begin function _ZN20btAlignedObjectArrayIP17btTypedConstraintE17quickSortInternalI33btSortConstraintOnIslandPredicateEEvT_ii
	.p2align	5
	.type	_ZN20btAlignedObjectArrayIP17btTypedConstraintE17quickSortInternalI33btSortConstraintOnIslandPredicateEEvT_ii,@function
_ZN20btAlignedObjectArrayIP17btTypedConstraintE17quickSortInternalI33btSortConstraintOnIslandPredicateEEvT_ii: # @_ZN20btAlignedObjectArrayIP17btTypedConstraintE17quickSortInternalI33btSortConstraintOnIslandPredicateEEvT_ii
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
	move	$fp, $a3
	move	$s0, $a0
	b	.LBB71_2
	.p2align	4, , 16
.LBB71_1:                               #   in Loop: Header=BB71_2 Depth=1
	move	$a2, $s1
	bge	$s1, $fp, .LBB71_29
.LBB71_2:                               # %tailrecurse
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB71_17 Depth 2
                                        #       Child Loop BB71_19 Depth 3
                                        #       Child Loop BB71_23 Depth 3
                                        #     Child Loop BB71_5 Depth 2
                                        #       Child Loop BB71_7 Depth 3
                                        #       Child Loop BB71_11 Depth 3
	ld.d	$a0, $s0, 16
	add.d	$a1, $a2, $fp
	bstrpick.d	$a3, $a1, 31, 31
	add.w	$a1, $a1, $a3
	slli.d	$a1, $a1, 2
	bstrins.d	$a1, $zero, 2, 0
	ldx.d	$a3, $a0, $a1
	ld.d	$a1, $a3, 24
	ld.w	$a4, $a1, 220
	addi.d	$a1, $a0, 8
	bltz	$a4, .LBB71_15
# %bb.3:                                # %.split.us.us.preheader
                                        #   in Loop: Header=BB71_2 Depth=1
	move	$a3, $fp
	move	$s1, $a2
	b	.LBB71_5
	.p2align	4, , 16
.LBB71_4:                               #   in Loop: Header=BB71_5 Depth=2
	addi.w	$s1, $s1, -1
	addi.w	$a3, $a3, 1
	blt	$a3, $s1, .LBB71_27
.LBB71_5:                               # %.split.us.us
                                        #   Parent Loop BB71_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB71_7 Depth 3
                                        #       Child Loop BB71_11 Depth 3
	addi.d	$a6, $s1, -1
	alsl.d	$a5, $s1, $a0, 3
	b	.LBB71_7
	.p2align	4, , 16
.LBB71_6:                               # %_ZN33btSortConstraintOnIslandPredicateclEPK17btTypedConstraintS2_.exit.us.us
                                        #   in Loop: Header=BB71_7 Depth=3
	addi.d	$a6, $a6, 1
	addi.w	$s1, $s1, 1
	addi.d	$a5, $a5, 8
	bge	$t0, $a4, .LBB71_9
.LBB71_7:                               # %_Z23btGetConstraintIslandIdPK17btTypedConstraint.exit.i.us.us
                                        #   Parent Loop BB71_2 Depth=1
                                        #     Parent Loop BB71_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a7, $a5, 0
	ld.d	$t0, $a7, 24
	ld.w	$t0, $t0, 220
	bgez	$t0, .LBB71_6
# %bb.8:                                #   in Loop: Header=BB71_7 Depth=3
	ld.d	$t0, $a7, 32
	ld.w	$t0, $t0, 220
	b	.LBB71_6
	.p2align	4, , 16
.LBB71_9:                               # %.preheader.split.us.us
                                        #   in Loop: Header=BB71_5 Depth=2
	addi.d	$t1, $a3, 1
	alsl.d	$t0, $a3, $a1, 3
	b	.LBB71_11
	.p2align	4, , 16
.LBB71_10:                              # %_Z23btGetConstraintIslandIdPK17btTypedConstraint.exit.i33.us.us
                                        #   in Loop: Header=BB71_11 Depth=3
	addi.d	$t1, $t1, -1
	addi.w	$a3, $a3, -1
	addi.d	$t0, $t0, -8
	bge	$a4, $t3, .LBB71_13
.LBB71_11:                              #   Parent Loop BB71_2 Depth=1
                                        #     Parent Loop BB71_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$t2, $t0, -8
	ld.d	$t3, $t2, 24
	ld.w	$t3, $t3, 220
	bgez	$t3, .LBB71_10
# %bb.12:                               #   in Loop: Header=BB71_11 Depth=3
	ld.d	$t3, $t2, 32
	ld.w	$t3, $t3, 220
	b	.LBB71_10
	.p2align	4, , 16
.LBB71_13:                              # %.split49.us.us
                                        #   in Loop: Header=BB71_5 Depth=2
	blt	$t1, $a6, .LBB71_4
# %bb.14:                               #   in Loop: Header=BB71_5 Depth=2
	st.d	$t2, $a5, -8
	st.d	$a7, $t0, 0
	bge	$a3, $s1, .LBB71_5
	b	.LBB71_27
	.p2align	4, , 16
.LBB71_15:                              # %tailrecurse.split
                                        #   in Loop: Header=BB71_2 Depth=1
	ld.d	$a3, $a3, 32
	ld.w	$a4, $a3, 220
	move	$a3, $fp
	move	$s1, $a2
	b	.LBB71_17
	.p2align	4, , 16
.LBB71_16:                              #   in Loop: Header=BB71_17 Depth=2
	st.d	$t2, $a5, -8
	st.d	$a7, $t0, 0
	blt	$a3, $s1, .LBB71_27
.LBB71_17:                              # %.split
                                        #   Parent Loop BB71_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB71_19 Depth 3
                                        #       Child Loop BB71_23 Depth 3
	addi.d	$a6, $s1, -1
	alsl.d	$a5, $s1, $a0, 3
	b	.LBB71_19
	.p2align	4, , 16
.LBB71_18:                              # %_ZN33btSortConstraintOnIslandPredicateclEPK17btTypedConstraintS2_.exit
                                        #   in Loop: Header=BB71_19 Depth=3
	addi.d	$a6, $a6, 1
	addi.w	$s1, $s1, 1
	addi.d	$a5, $a5, 8
	bge	$t0, $a4, .LBB71_21
.LBB71_19:                              # %_Z23btGetConstraintIslandIdPK17btTypedConstraint.exit.i
                                        #   Parent Loop BB71_2 Depth=1
                                        #     Parent Loop BB71_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a7, $a5, 0
	ld.d	$t0, $a7, 24
	ld.w	$t0, $t0, 220
	bgez	$t0, .LBB71_18
# %bb.20:                               #   in Loop: Header=BB71_19 Depth=3
	ld.d	$t0, $a7, 32
	ld.w	$t0, $t0, 220
	b	.LBB71_18
	.p2align	4, , 16
.LBB71_21:                              # %.preheader.split
                                        #   in Loop: Header=BB71_17 Depth=2
	addi.d	$t1, $a3, 1
	alsl.d	$t0, $a3, $a1, 3
	b	.LBB71_23
	.p2align	4, , 16
.LBB71_22:                              # %_Z23btGetConstraintIslandIdPK17btTypedConstraint.exit.i33
                                        #   in Loop: Header=BB71_23 Depth=3
	addi.d	$t1, $t1, -1
	addi.w	$a3, $a3, -1
	addi.d	$t0, $t0, -8
	bge	$a4, $t3, .LBB71_25
.LBB71_23:                              #   Parent Loop BB71_2 Depth=1
                                        #     Parent Loop BB71_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$t2, $t0, -8
	ld.d	$t3, $t2, 24
	ld.w	$t3, $t3, 220
	bgez	$t3, .LBB71_22
# %bb.24:                               #   in Loop: Header=BB71_23 Depth=3
	ld.d	$t3, $t2, 32
	ld.w	$t3, $t3, 220
	b	.LBB71_22
	.p2align	4, , 16
.LBB71_25:                              # %.split49
                                        #   in Loop: Header=BB71_17 Depth=2
	bge	$t1, $a6, .LBB71_16
# %bb.26:                               #   in Loop: Header=BB71_17 Depth=2
	addi.w	$s1, $s1, -1
	addi.w	$a3, $a3, 1
	bge	$a3, $s1, .LBB71_17
	.p2align	4, , 16
.LBB71_27:                              # %.split61.us
                                        #   in Loop: Header=BB71_2 Depth=1
	bge	$a2, $a3, .LBB71_1
# %bb.28:                               #   in Loop: Header=BB71_2 Depth=1
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(_ZN20btAlignedObjectArrayIP17btTypedConstraintE17quickSortInternalI33btSortConstraintOnIslandPredicateEEvT_ii)
	jirl	$ra, $ra, 0
	b	.LBB71_1
.LBB71_29:
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end71:
	.size	_ZN20btAlignedObjectArrayIP17btTypedConstraintE17quickSortInternalI33btSortConstraintOnIslandPredicateEEvT_ii, .Lfunc_end71-_ZN20btAlignedObjectArrayIP17btTypedConstraintE17quickSortInternalI33btSortConstraintOnIslandPredicateEEvT_ii
	.cfi_endproc
                                        # -- End function
	.type	_ZTV23btDiscreteDynamicsWorld,@object # @_ZTV23btDiscreteDynamicsWorld
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTV23btDiscreteDynamicsWorld
	.p2align	3, 0x0
_ZTV23btDiscreteDynamicsWorld:
	.dword	0
	.dword	_ZTI23btDiscreteDynamicsWorld
	.dword	_ZN23btDiscreteDynamicsWorldD2Ev
	.dword	_ZN23btDiscreteDynamicsWorldD0Ev
	.dword	_ZN16btCollisionWorld11updateAabbsEv
	.dword	_ZN16btCollisionWorld14setDebugDrawerEP12btIDebugDraw
	.dword	_ZN16btCollisionWorld14getDebugDrawerEv
	.dword	_ZN23btDiscreteDynamicsWorld18addCollisionObjectEP17btCollisionObjectss
	.dword	_ZN23btDiscreteDynamicsWorld21removeCollisionObjectEP17btCollisionObject
	.dword	_ZN16btCollisionWorld33performDiscreteCollisionDetectionEv
	.dword	_ZN23btDiscreteDynamicsWorld14stepSimulationEfif
	.dword	_ZN23btDiscreteDynamicsWorld14debugDrawWorldEv
	.dword	_ZN23btDiscreteDynamicsWorld13addConstraintEP17btTypedConstraintb
	.dword	_ZN23btDiscreteDynamicsWorld16removeConstraintEP17btTypedConstraint
	.dword	_ZN23btDiscreteDynamicsWorld9addActionEP17btActionInterface
	.dword	_ZN23btDiscreteDynamicsWorld12removeActionEP17btActionInterface
	.dword	_ZN23btDiscreteDynamicsWorld10setGravityERK9btVector3
	.dword	_ZNK23btDiscreteDynamicsWorld10getGravityEv
	.dword	_ZN23btDiscreteDynamicsWorld23synchronizeMotionStatesEv
	.dword	_ZN23btDiscreteDynamicsWorld12addRigidBodyEP11btRigidBody
	.dword	_ZN23btDiscreteDynamicsWorld15removeRigidBodyEP11btRigidBody
	.dword	_ZN23btDiscreteDynamicsWorld19setConstraintSolverEP18btConstraintSolver
	.dword	_ZN23btDiscreteDynamicsWorld19getConstraintSolverEv
	.dword	_ZNK23btDiscreteDynamicsWorld17getNumConstraintsEv
	.dword	_ZN23btDiscreteDynamicsWorld13getConstraintEi
	.dword	_ZNK23btDiscreteDynamicsWorld13getConstraintEi
	.dword	_ZNK23btDiscreteDynamicsWorld12getWorldTypeEv
	.dword	_ZN23btDiscreteDynamicsWorld11clearForcesEv
	.dword	_ZN23btDiscreteDynamicsWorld10addVehicleEP17btActionInterface
	.dword	_ZN23btDiscreteDynamicsWorld13removeVehicleEP17btActionInterface
	.dword	_ZN23btDiscreteDynamicsWorld12addCharacterEP17btActionInterface
	.dword	_ZN23btDiscreteDynamicsWorld15removeCharacterEP17btActionInterface
	.dword	_ZN23btDiscreteDynamicsWorld25predictUnconstraintMotionEf
	.dword	_ZN23btDiscreteDynamicsWorld19integrateTransformsEf
	.dword	_ZN23btDiscreteDynamicsWorld26calculateSimulationIslandsEv
	.dword	_ZN23btDiscreteDynamicsWorld16solveConstraintsER19btContactSolverInfo
	.dword	_ZN23btDiscreteDynamicsWorld28internalSingleStepSimulationEf
	.dword	_ZN23btDiscreteDynamicsWorld18saveKinematicStateEf
	.dword	_ZN23btDiscreteDynamicsWorld12addRigidBodyEP11btRigidBodyss
	.dword	_ZN23btDiscreteDynamicsWorld12applyGravityEv
	.dword	_ZN23btDiscreteDynamicsWorld11setNumTasksEi
	.dword	_ZN23btDiscreteDynamicsWorld14updateVehiclesEf
	.size	_ZTV23btDiscreteDynamicsWorld, 336

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"debugDrawWorld"
	.size	.L.str, 15

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"synchronizeMotionStates"
	.size	.L.str.1, 24

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"stepSimulation"
	.size	.L.str.2, 15

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"internalSingleStepSimulation"
	.size	.L.str.3, 29

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"updateActions"
	.size	.L.str.4, 14

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"updateActivationState"
	.size	.L.str.5, 22

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"solveConstraints"
	.size	.L.str.6, 17

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"calculateSimulationIslands"
	.size	.L.str.7, 27

	.type	gNumClampedCcdMotions,@object   # @gNumClampedCcdMotions
	.bss
	.globl	gNumClampedCcdMotions
	.p2align	2, 0x0
gNumClampedCcdMotions:
	.word	0                               # 0x0
	.size	gNumClampedCcdMotions, 4

	.type	.L.str.8,@object                # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"integrateTransforms"
	.size	.L.str.8, 20

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"CCD motion clamping"
	.size	.L.str.9, 20

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"predictUnconstraintMotion"
	.size	.L.str.10, 26

	.type	_ZTI23btDiscreteDynamicsWorld,@object # @_ZTI23btDiscreteDynamicsWorld
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTI23btDiscreteDynamicsWorld
	.p2align	3, 0x0
_ZTI23btDiscreteDynamicsWorld:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS23btDiscreteDynamicsWorld
	.dword	_ZTI15btDynamicsWorld
	.size	_ZTI23btDiscreteDynamicsWorld, 24

	.type	_ZTS23btDiscreteDynamicsWorld,@object # @_ZTS23btDiscreteDynamicsWorld
	.section	.rodata,"a",@progbits
	.globl	_ZTS23btDiscreteDynamicsWorld
_ZTS23btDiscreteDynamicsWorld:
	.asciz	"23btDiscreteDynamicsWorld"
	.size	_ZTS23btDiscreteDynamicsWorld, 26

	.type	_ZTI15btDynamicsWorld,@object   # @_ZTI15btDynamicsWorld
	.section	.data.rel.ro._ZTI15btDynamicsWorld,"awG",@progbits,_ZTI15btDynamicsWorld,comdat
	.weak	_ZTI15btDynamicsWorld
	.p2align	3, 0x0
_ZTI15btDynamicsWorld:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS15btDynamicsWorld
	.dword	_ZTI16btCollisionWorld
	.size	_ZTI15btDynamicsWorld, 24

	.type	_ZTS15btDynamicsWorld,@object   # @_ZTS15btDynamicsWorld
	.section	.rodata._ZTS15btDynamicsWorld,"aG",@progbits,_ZTS15btDynamicsWorld,comdat
	.weak	_ZTS15btDynamicsWorld
_ZTS15btDynamicsWorld:
	.asciz	"15btDynamicsWorld"
	.size	_ZTS15btDynamicsWorld, 18

	.type	_ZTVZN23btDiscreteDynamicsWorld16solveConstraintsER19btContactSolverInfoE27InplaceSolverIslandCallback,@object # @_ZTVZN23btDiscreteDynamicsWorld16solveConstraintsER19btContactSolverInfoE27InplaceSolverIslandCallback
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
_ZTVZN23btDiscreteDynamicsWorld16solveConstraintsER19btContactSolverInfoE27InplaceSolverIslandCallback:
	.dword	0
	.dword	_ZTIZN23btDiscreteDynamicsWorld16solveConstraintsER19btContactSolverInfoE27InplaceSolverIslandCallback
	.dword	_ZN25btSimulationIslandManager14IslandCallbackD2Ev
	.dword	_ZZN23btDiscreteDynamicsWorld16solveConstraintsER19btContactSolverInfoEN27InplaceSolverIslandCallbackD0Ev
	.dword	_ZZN23btDiscreteDynamicsWorld16solveConstraintsER19btContactSolverInfoEN27InplaceSolverIslandCallback13ProcessIslandEPP17btCollisionObjectiPP20btPersistentManifoldii
	.size	_ZTVZN23btDiscreteDynamicsWorld16solveConstraintsER19btContactSolverInfoE27InplaceSolverIslandCallback, 40

	.type	_ZTIZN23btDiscreteDynamicsWorld16solveConstraintsER19btContactSolverInfoE27InplaceSolverIslandCallback,@object # @_ZTIZN23btDiscreteDynamicsWorld16solveConstraintsER19btContactSolverInfoE27InplaceSolverIslandCallback
	.p2align	3, 0x0
_ZTIZN23btDiscreteDynamicsWorld16solveConstraintsER19btContactSolverInfoE27InplaceSolverIslandCallback:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTSZN23btDiscreteDynamicsWorld16solveConstraintsER19btContactSolverInfoE27InplaceSolverIslandCallback
	.dword	_ZTIN25btSimulationIslandManager14IslandCallbackE
	.size	_ZTIZN23btDiscreteDynamicsWorld16solveConstraintsER19btContactSolverInfoE27InplaceSolverIslandCallback, 24

	.type	_ZTSZN23btDiscreteDynamicsWorld16solveConstraintsER19btContactSolverInfoE27InplaceSolverIslandCallback,@object # @_ZTSZN23btDiscreteDynamicsWorld16solveConstraintsER19btContactSolverInfoE27InplaceSolverIslandCallback
	.section	.rodata,"a",@progbits
_ZTSZN23btDiscreteDynamicsWorld16solveConstraintsER19btContactSolverInfoE27InplaceSolverIslandCallback:
	.asciz	"ZN23btDiscreteDynamicsWorld16solveConstraintsER19btContactSolverInfoE27InplaceSolverIslandCallback"
	.size	_ZTSZN23btDiscreteDynamicsWorld16solveConstraintsER19btContactSolverInfoE27InplaceSolverIslandCallback, 99

	.type	_ZTIN25btSimulationIslandManager14IslandCallbackE,@object # @_ZTIN25btSimulationIslandManager14IslandCallbackE
	.section	.data.rel.ro._ZTIN25btSimulationIslandManager14IslandCallbackE,"awG",@progbits,_ZTIN25btSimulationIslandManager14IslandCallbackE,comdat
	.weak	_ZTIN25btSimulationIslandManager14IslandCallbackE
	.p2align	3, 0x0
_ZTIN25btSimulationIslandManager14IslandCallbackE:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTSN25btSimulationIslandManager14IslandCallbackE
	.size	_ZTIN25btSimulationIslandManager14IslandCallbackE, 16

	.type	_ZTSN25btSimulationIslandManager14IslandCallbackE,@object # @_ZTSN25btSimulationIslandManager14IslandCallbackE
	.section	.rodata._ZTSN25btSimulationIslandManager14IslandCallbackE,"aG",@progbits,_ZTSN25btSimulationIslandManager14IslandCallbackE,comdat
	.weak	_ZTSN25btSimulationIslandManager14IslandCallbackE
_ZTSN25btSimulationIslandManager14IslandCallbackE:
	.asciz	"N25btSimulationIslandManager14IslandCallbackE"
	.size	_ZTSN25btSimulationIslandManager14IslandCallbackE, 46

	.type	_ZTV34btClosestNotMeConvexResultCallback,@object # @_ZTV34btClosestNotMeConvexResultCallback
	.section	.data.rel.ro._ZTV34btClosestNotMeConvexResultCallback,"awG",@progbits,_ZTV34btClosestNotMeConvexResultCallback,comdat
	.weak	_ZTV34btClosestNotMeConvexResultCallback
	.p2align	3, 0x0
_ZTV34btClosestNotMeConvexResultCallback:
	.dword	0
	.dword	_ZTI34btClosestNotMeConvexResultCallback
	.dword	_ZN16btCollisionWorld20ConvexResultCallbackD2Ev
	.dword	_ZN34btClosestNotMeConvexResultCallbackD0Ev
	.dword	_ZNK34btClosestNotMeConvexResultCallback14needsCollisionEP17btBroadphaseProxy
	.dword	_ZN34btClosestNotMeConvexResultCallback15addSingleResultERN16btCollisionWorld17LocalConvexResultEb
	.size	_ZTV34btClosestNotMeConvexResultCallback, 48

	.type	_ZTI34btClosestNotMeConvexResultCallback,@object # @_ZTI34btClosestNotMeConvexResultCallback
	.section	.data.rel.ro._ZTI34btClosestNotMeConvexResultCallback,"awG",@progbits,_ZTI34btClosestNotMeConvexResultCallback,comdat
	.weak	_ZTI34btClosestNotMeConvexResultCallback
	.p2align	3, 0x0
_ZTI34btClosestNotMeConvexResultCallback:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS34btClosestNotMeConvexResultCallback
	.dword	_ZTIN16btCollisionWorld27ClosestConvexResultCallbackE
	.size	_ZTI34btClosestNotMeConvexResultCallback, 24

	.type	_ZTS34btClosestNotMeConvexResultCallback,@object # @_ZTS34btClosestNotMeConvexResultCallback
	.section	.rodata._ZTS34btClosestNotMeConvexResultCallback,"aG",@progbits,_ZTS34btClosestNotMeConvexResultCallback,comdat
	.weak	_ZTS34btClosestNotMeConvexResultCallback
_ZTS34btClosestNotMeConvexResultCallback:
	.asciz	"34btClosestNotMeConvexResultCallback"
	.size	_ZTS34btClosestNotMeConvexResultCallback, 37

	.type	_ZTIN16btCollisionWorld27ClosestConvexResultCallbackE,@object # @_ZTIN16btCollisionWorld27ClosestConvexResultCallbackE
	.section	.data.rel.ro._ZTIN16btCollisionWorld27ClosestConvexResultCallbackE,"awG",@progbits,_ZTIN16btCollisionWorld27ClosestConvexResultCallbackE,comdat
	.weak	_ZTIN16btCollisionWorld27ClosestConvexResultCallbackE
	.p2align	3, 0x0
_ZTIN16btCollisionWorld27ClosestConvexResultCallbackE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTSN16btCollisionWorld27ClosestConvexResultCallbackE
	.dword	_ZTIN16btCollisionWorld20ConvexResultCallbackE
	.size	_ZTIN16btCollisionWorld27ClosestConvexResultCallbackE, 24

	.type	_ZTSN16btCollisionWorld27ClosestConvexResultCallbackE,@object # @_ZTSN16btCollisionWorld27ClosestConvexResultCallbackE
	.section	.rodata._ZTSN16btCollisionWorld27ClosestConvexResultCallbackE,"aG",@progbits,_ZTSN16btCollisionWorld27ClosestConvexResultCallbackE,comdat
	.weak	_ZTSN16btCollisionWorld27ClosestConvexResultCallbackE
_ZTSN16btCollisionWorld27ClosestConvexResultCallbackE:
	.asciz	"N16btCollisionWorld27ClosestConvexResultCallbackE"
	.size	_ZTSN16btCollisionWorld27ClosestConvexResultCallbackE, 50

	.type	_ZTIN16btCollisionWorld20ConvexResultCallbackE,@object # @_ZTIN16btCollisionWorld20ConvexResultCallbackE
	.section	.data.rel.ro._ZTIN16btCollisionWorld20ConvexResultCallbackE,"awG",@progbits,_ZTIN16btCollisionWorld20ConvexResultCallbackE,comdat
	.weak	_ZTIN16btCollisionWorld20ConvexResultCallbackE
	.p2align	3, 0x0
_ZTIN16btCollisionWorld20ConvexResultCallbackE:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTSN16btCollisionWorld20ConvexResultCallbackE
	.size	_ZTIN16btCollisionWorld20ConvexResultCallbackE, 16

	.type	_ZTSN16btCollisionWorld20ConvexResultCallbackE,@object # @_ZTSN16btCollisionWorld20ConvexResultCallbackE
	.section	.rodata._ZTSN16btCollisionWorld20ConvexResultCallbackE,"aG",@progbits,_ZTSN16btCollisionWorld20ConvexResultCallbackE,comdat
	.weak	_ZTSN16btCollisionWorld20ConvexResultCallbackE
_ZTSN16btCollisionWorld20ConvexResultCallbackE:
	.asciz	"N16btCollisionWorld20ConvexResultCallbackE"
	.size	_ZTSN16btCollisionWorld20ConvexResultCallbackE, 43

	.type	_ZTV17DebugDrawcallback,@object # @_ZTV17DebugDrawcallback
	.section	.data.rel.ro._ZTV17DebugDrawcallback,"awG",@progbits,_ZTV17DebugDrawcallback,comdat
	.weak	_ZTV17DebugDrawcallback
	.p2align	3, 0x0
_ZTV17DebugDrawcallback:
	.dword	0
	.dword	_ZTI17DebugDrawcallback
	.dword	_ZN17DebugDrawcallbackD2Ev
	.dword	_ZN17DebugDrawcallbackD0Ev
	.dword	_ZN17DebugDrawcallback15processTriangleEP9btVector3ii
	.dword	_ZN17DebugDrawcallback28internalProcessTriangleIndexEP9btVector3ii
	.dword	-8
	.dword	_ZTI17DebugDrawcallback
	.dword	_ZThn8_N17DebugDrawcallbackD1Ev
	.dword	_ZThn8_N17DebugDrawcallbackD0Ev
	.dword	_ZThn8_N17DebugDrawcallback28internalProcessTriangleIndexEP9btVector3ii
	.size	_ZTV17DebugDrawcallback, 88

	.type	_ZTI17DebugDrawcallback,@object # @_ZTI17DebugDrawcallback
	.section	.data.rel.ro._ZTI17DebugDrawcallback,"awG",@progbits,_ZTI17DebugDrawcallback,comdat
	.weak	_ZTI17DebugDrawcallback
	.p2align	3, 0x0
_ZTI17DebugDrawcallback:
	.dword	_ZTVN10__cxxabiv121__vmi_class_type_infoE+16
	.dword	_ZTS17DebugDrawcallback
	.word	0                               # 0x0
	.word	2                               # 0x2
	.dword	_ZTI18btTriangleCallback
	.dword	2                               # 0x2
	.dword	_ZTI31btInternalTriangleIndexCallback
	.dword	2050                            # 0x802
	.size	_ZTI17DebugDrawcallback, 56

	.type	_ZTS17DebugDrawcallback,@object # @_ZTS17DebugDrawcallback
	.section	.rodata._ZTS17DebugDrawcallback,"aG",@progbits,_ZTS17DebugDrawcallback,comdat
	.weak	_ZTS17DebugDrawcallback
_ZTS17DebugDrawcallback:
	.asciz	"17DebugDrawcallback"
	.size	_ZTS17DebugDrawcallback, 20

	.type	.Lswitch.table._ZN23btDiscreteDynamicsWorld14debugDrawWorldEv,@object # @switch.table._ZN23btDiscreteDynamicsWorld14debugDrawWorldEv
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.Lswitch.table._ZN23btDiscreteDynamicsWorld14debugDrawWorldEv:
	.word	0x437f0000                      # float 255
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x437f0000                      # float 255
	.word	0x437f0000                      # float 255
	.size	.Lswitch.table._ZN23btDiscreteDynamicsWorld14debugDrawWorldEv, 20

	.type	.Lswitch.table._ZN23btDiscreteDynamicsWorld14debugDrawWorldEv.1,@object # @switch.table._ZN23btDiscreteDynamicsWorld14debugDrawWorldEv.1
	.p2align	2, 0x0
.Lswitch.table._ZN23btDiscreteDynamicsWorld14debugDrawWorldEv.1:
	.word	0x437f0000                      # float 255
	.word	0x437f0000                      # float 255
	.word	0x437f0000                      # float 255
	.word	0x00000000                      # float 0
	.word	0x437f0000                      # float 255
	.size	.Lswitch.table._ZN23btDiscreteDynamicsWorld14debugDrawWorldEv.1, 20

	.type	.Lswitch.table._ZN23btDiscreteDynamicsWorld14debugDrawWorldEv.2,@object # @switch.table._ZN23btDiscreteDynamicsWorld14debugDrawWorldEv.2
	.p2align	2, 0x0
.Lswitch.table._ZN23btDiscreteDynamicsWorld14debugDrawWorldEv.2:
	.word	0x437f0000                      # float 255
	.word	0x00000000                      # float 0
	.word	0x437f0000                      # float 255
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.size	.Lswitch.table._ZN23btDiscreteDynamicsWorld14debugDrawWorldEv.2, 20

	.globl	_ZN23btDiscreteDynamicsWorldC1EP12btDispatcherP21btBroadphaseInterfaceP18btConstraintSolverP24btCollisionConfiguration
	.type	_ZN23btDiscreteDynamicsWorldC1EP12btDispatcherP21btBroadphaseInterfaceP18btConstraintSolverP24btCollisionConfiguration,@function
_ZN23btDiscreteDynamicsWorldC1EP12btDispatcherP21btBroadphaseInterfaceP18btConstraintSolverP24btCollisionConfiguration = _ZN23btDiscreteDynamicsWorldC2EP12btDispatcherP21btBroadphaseInterfaceP18btConstraintSolverP24btCollisionConfiguration
	.globl	_ZN23btDiscreteDynamicsWorldD1Ev
	.type	_ZN23btDiscreteDynamicsWorldD1Ev,@function
_ZN23btDiscreteDynamicsWorldD1Ev = _ZN23btDiscreteDynamicsWorldD2Ev
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
	.addrsig_sym _ZTI23btDiscreteDynamicsWorld
	.addrsig_sym _ZTVN10__cxxabiv120__si_class_type_infoE
	.addrsig_sym _ZTS23btDiscreteDynamicsWorld
	.addrsig_sym _ZTI15btDynamicsWorld
	.addrsig_sym _ZTS15btDynamicsWorld
	.addrsig_sym _ZTI16btCollisionWorld
	.addrsig_sym _ZTIZN23btDiscreteDynamicsWorld16solveConstraintsER19btContactSolverInfoE27InplaceSolverIslandCallback
	.addrsig_sym _ZTSZN23btDiscreteDynamicsWorld16solveConstraintsER19btContactSolverInfoE27InplaceSolverIslandCallback
	.addrsig_sym _ZTIN25btSimulationIslandManager14IslandCallbackE
	.addrsig_sym _ZTVN10__cxxabiv117__class_type_infoE
	.addrsig_sym _ZTSN25btSimulationIslandManager14IslandCallbackE
	.addrsig_sym _ZTI34btClosestNotMeConvexResultCallback
	.addrsig_sym _ZTS34btClosestNotMeConvexResultCallback
	.addrsig_sym _ZTIN16btCollisionWorld27ClosestConvexResultCallbackE
	.addrsig_sym _ZTSN16btCollisionWorld27ClosestConvexResultCallbackE
	.addrsig_sym _ZTIN16btCollisionWorld20ConvexResultCallbackE
	.addrsig_sym _ZTSN16btCollisionWorld20ConvexResultCallbackE
	.addrsig_sym _ZTI17DebugDrawcallback
	.addrsig_sym _ZTVN10__cxxabiv121__vmi_class_type_infoE
	.addrsig_sym _ZTS17DebugDrawcallback
	.addrsig_sym _ZTI18btTriangleCallback
	.addrsig_sym _ZTI31btInternalTriangleIndexCallback
