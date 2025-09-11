	.file	"btRaycastVehicle.cpp"
	.section	.text._ZN11btRigidBodyD2Ev,"axG",@progbits,_ZN11btRigidBodyD2Ev,comdat
	.weak	_ZN11btRigidBodyD2Ev            # -- Begin function _ZN11btRigidBodyD2Ev
	.p2align	5
	.type	_ZN11btRigidBodyD2Ev,@function
_ZN11btRigidBodyD2Ev:                   # @_ZN11btRigidBodyD2Ev
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
	pcalau12i	$a0, %got_pc_hi20(_ZTV11btRigidBody)
	ld.d	$a1, $a0, %got_pc_lo12(_ZTV11btRigidBody)
	ld.d	$a0, $fp, 536
	addi.d	$a1, $a1, 16
	st.d	$a1, $fp, 0
	beqz	$a0, .LBB0_3
# %bb.1:
	ld.b	$a1, $fp, 544
	andi	$a1, $a1, 1
	beqz	$a1, .LBB0_3
# %bb.2:
.Ltmp0:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
.LBB0_3:
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 544
	st.d	$zero, $fp, 536
	st.d	$zero, $fp, 524
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZN17btCollisionObjectD2Ev)
	jr	$t8
.LBB0_4:
.Ltmp2:                                 # EH_LABEL
	move	$s0, $a0
.Ltmp3:                                 # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17btCollisionObjectD2Ev)
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
	.size	_ZN11btRigidBodyD2Ev, .Lfunc_end0-_ZN11btRigidBodyD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN11btRigidBodyD2Ev,"aG",@progbits,_ZN11btRigidBodyD2Ev,comdat
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
	.text
	.globl	_ZN16btRaycastVehicleC2ERKNS_15btVehicleTuningEP11btRigidBodyP18btVehicleRaycaster # -- Begin function _ZN16btRaycastVehicleC2ERKNS_15btVehicleTuningEP11btRigidBodyP18btVehicleRaycaster
	.p2align	5
	.type	_ZN16btRaycastVehicleC2ERKNS_15btVehicleTuningEP11btRigidBodyP18btVehicleRaycaster,@function
_ZN16btRaycastVehicleC2ERKNS_15btVehicleTuningEP11btRigidBodyP18btVehicleRaycaster: # @_ZN16btRaycastVehicleC2ERKNS_15btVehicleTuningEP11btRigidBodyP18btVehicleRaycaster
	.cfi_startproc
# %bb.0:
	pcalau12i	$a1, %pc_hi20(_ZTV16btRaycastVehicle+16)
	addi.d	$a1, $a1, %pc_lo12(_ZTV16btRaycastVehicle+16)
	st.d	$a1, $a0, 0
	ori	$a1, $zero, 1
	st.b	$a1, $a0, 32
	st.d	$zero, $a0, 24
	st.d	$zero, $a0, 12
	st.b	$a1, $a0, 64
	st.d	$zero, $a0, 56
	st.d	$zero, $a0, 44
	st.b	$a1, $a0, 96
	st.d	$zero, $a0, 88
	st.d	$zero, $a0, 76
	st.b	$a1, $a0, 128
	st.d	$zero, $a0, 120
	st.d	$zero, $a0, 108
	st.d	$a3, $a0, 144
	st.w	$zero, $a0, 152
	st.b	$a1, $a0, 216
	st.d	$zero, $a0, 208
	st.d	$zero, $a0, 196
	st.d	$a2, $a0, 168
	ori	$a2, $zero, 0
	lu32i.d	$a2, 2
	st.d	$a2, $a0, 176
	st.w	$a1, $a0, 184
	st.d	$zero, $a0, 156
	ret
.Lfunc_end1:
	.size	_ZN16btRaycastVehicleC2ERKNS_15btVehicleTuningEP11btRigidBodyP18btVehicleRaycaster, .Lfunc_end1-_ZN16btRaycastVehicleC2ERKNS_15btVehicleTuningEP11btRigidBodyP18btVehicleRaycaster
	.cfi_endproc
                                        # -- End function
	.globl	_ZN16btRaycastVehicle11defaultInitERKNS_15btVehicleTuningE # -- Begin function _ZN16btRaycastVehicle11defaultInitERKNS_15btVehicleTuningE
	.p2align	5
	.type	_ZN16btRaycastVehicle11defaultInitERKNS_15btVehicleTuningE,@function
_ZN16btRaycastVehicle11defaultInitERKNS_15btVehicleTuningE: # @_ZN16btRaycastVehicle11defaultInitERKNS_15btVehicleTuningE
# %bb.0:
	st.d	$zero, $a0, 156
	ret
.Lfunc_end2:
	.size	_ZN16btRaycastVehicle11defaultInitERKNS_15btVehicleTuningE, .Lfunc_end2-_ZN16btRaycastVehicle11defaultInitERKNS_15btVehicleTuningE
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
.Lfunc_end3:
	.size	__clang_call_terminate, .Lfunc_end3-__clang_call_terminate
                                        # -- End function
	.section	.text._ZN20btAlignedObjectArrayIfED2Ev,"axG",@progbits,_ZN20btAlignedObjectArrayIfED2Ev,comdat
	.weak	_ZN20btAlignedObjectArrayIfED2Ev # -- Begin function _ZN20btAlignedObjectArrayIfED2Ev
	.p2align	5
	.type	_ZN20btAlignedObjectArrayIfED2Ev,@function
_ZN20btAlignedObjectArrayIfED2Ev:       # @_ZN20btAlignedObjectArrayIfED2Ev
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
.LBB4_3:                                # %_ZN20btAlignedObjectArrayIfE5clearEv.exit
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 24
	st.d	$zero, $fp, 16
	st.d	$zero, $fp, 4
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end4:
	.size	_ZN20btAlignedObjectArrayIfED2Ev, .Lfunc_end4-_ZN20btAlignedObjectArrayIfED2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN20btAlignedObjectArrayI9btVector3ED2Ev,"axG",@progbits,_ZN20btAlignedObjectArrayI9btVector3ED2Ev,comdat
	.weak	_ZN20btAlignedObjectArrayI9btVector3ED2Ev # -- Begin function _ZN20btAlignedObjectArrayI9btVector3ED2Ev
	.p2align	5
	.type	_ZN20btAlignedObjectArrayI9btVector3ED2Ev,@function
_ZN20btAlignedObjectArrayI9btVector3ED2Ev: # @_ZN20btAlignedObjectArrayI9btVector3ED2Ev
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
	beqz	$a0, .LBB5_3
# %bb.1:
	ld.b	$a1, $fp, 24
	andi	$a1, $a1, 1
	beqz	$a1, .LBB5_3
# %bb.2:
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.LBB5_3:                                # %_ZN20btAlignedObjectArrayI9btVector3E5clearEv.exit
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 24
	st.d	$zero, $fp, 16
	st.d	$zero, $fp, 4
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end5:
	.size	_ZN20btAlignedObjectArrayI9btVector3ED2Ev, .Lfunc_end5-_ZN20btAlignedObjectArrayI9btVector3ED2Ev
	.cfi_endproc
                                        # -- End function
	.text
	.globl	_ZN16btRaycastVehicleD2Ev       # -- Begin function _ZN16btRaycastVehicleD2Ev
	.p2align	5
	.type	_ZN16btRaycastVehicleD2Ev,@function
_ZN16btRaycastVehicleD2Ev:              # @_ZN16btRaycastVehicleD2Ev
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
	pcalau12i	$a0, %pc_hi20(_ZTV16btRaycastVehicle+16)
	addi.d	$a1, $a0, %pc_lo12(_ZTV16btRaycastVehicle+16)
	ld.d	$a0, $fp, 208
	st.d	$a1, $fp, 0
	beqz	$a0, .LBB6_3
# %bb.1:
	ld.b	$a1, $fp, 216
	andi	$a1, $a1, 1
	beqz	$a1, .LBB6_3
# %bb.2:
.Ltmp6:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp7:                                 # EH_LABEL
.LBB6_3:
	ld.d	$a0, $fp, 120
	ori	$s0, $zero, 1
	st.b	$s0, $fp, 216
	st.d	$zero, $fp, 208
	st.d	$zero, $fp, 196
	beqz	$a0, .LBB6_6
# %bb.4:
	ld.b	$a1, $fp, 128
	andi	$a1, $a1, 1
	beqz	$a1, .LBB6_6
# %bb.5:
.Ltmp11:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp12:                                # EH_LABEL
.LBB6_6:
	ld.d	$a0, $fp, 88
	st.b	$s0, $fp, 128
	st.d	$zero, $fp, 120
	st.d	$zero, $fp, 108
	beqz	$a0, .LBB6_9
# %bb.7:
	ld.b	$a1, $fp, 96
	andi	$a1, $a1, 1
	beqz	$a1, .LBB6_9
# %bb.8:
.Ltmp16:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp17:                                # EH_LABEL
.LBB6_9:
	ld.d	$a0, $fp, 56
	ori	$s0, $zero, 1
	st.b	$s0, $fp, 96
	st.d	$zero, $fp, 88
	st.d	$zero, $fp, 76
	beqz	$a0, .LBB6_12
# %bb.10:
	ld.b	$a1, $fp, 64
	andi	$a1, $a1, 1
	beqz	$a1, .LBB6_12
# %bb.11:
.Ltmp21:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp22:                                # EH_LABEL
.LBB6_12:
	ld.d	$a0, $fp, 24
	st.b	$s0, $fp, 64
	st.d	$zero, $fp, 56
	st.d	$zero, $fp, 44
	beqz	$a0, .LBB6_15
# %bb.13:
	ld.b	$a1, $fp, 32
	andi	$a1, $a1, 1
	beqz	$a1, .LBB6_15
# %bb.14:
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.LBB6_15:
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 32
	st.d	$zero, $fp, 24
	st.d	$zero, $fp, 12
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB6_16:
.Ltmp23:                                # EH_LABEL
	move	$s0, $a0
	b	.LBB6_22
.LBB6_17:
.Ltmp18:                                # EH_LABEL
	move	$s0, $a0
	b	.LBB6_21
.LBB6_18:
.Ltmp13:                                # EH_LABEL
	move	$s0, $a0
	b	.LBB6_20
.LBB6_19:
.Ltmp8:                                 # EH_LABEL
	move	$s0, $a0
	addi.d	$a0, $fp, 104
.Ltmp9:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN20btAlignedObjectArrayIfED2Ev)
	jirl	$ra, $ra, 0
.Ltmp10:                                # EH_LABEL
.LBB6_20:
	addi.d	$a0, $fp, 72
.Ltmp14:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN20btAlignedObjectArrayIfED2Ev)
	jirl	$ra, $ra, 0
.Ltmp15:                                # EH_LABEL
.LBB6_21:
	addi.d	$a0, $fp, 40
.Ltmp19:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN20btAlignedObjectArrayI9btVector3ED2Ev)
	jirl	$ra, $ra, 0
.Ltmp20:                                # EH_LABEL
.LBB6_22:
	addi.d	$a0, $fp, 8
.Ltmp24:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN20btAlignedObjectArrayI9btVector3ED2Ev)
	jirl	$ra, $ra, 0
.Ltmp25:                                # EH_LABEL
# %bb.23:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB6_24:
.Ltmp26:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end6:
	.size	_ZN16btRaycastVehicleD2Ev, .Lfunc_end6-_ZN16btRaycastVehicleD2Ev
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
	.uleb128 .Ltmp11-.Lfunc_begin1          # >> Call Site 2 <<
	.uleb128 .Ltmp12-.Ltmp11                #   Call between .Ltmp11 and .Ltmp12
	.uleb128 .Ltmp13-.Lfunc_begin1          #     jumps to .Ltmp13
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp16-.Lfunc_begin1          # >> Call Site 3 <<
	.uleb128 .Ltmp17-.Ltmp16                #   Call between .Ltmp16 and .Ltmp17
	.uleb128 .Ltmp18-.Lfunc_begin1          #     jumps to .Ltmp18
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp21-.Lfunc_begin1          # >> Call Site 4 <<
	.uleb128 .Ltmp22-.Ltmp21                #   Call between .Ltmp21 and .Ltmp22
	.uleb128 .Ltmp23-.Lfunc_begin1          #     jumps to .Ltmp23
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp22-.Lfunc_begin1          # >> Call Site 5 <<
	.uleb128 .Ltmp9-.Ltmp22                 #   Call between .Ltmp22 and .Ltmp9
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp9-.Lfunc_begin1           # >> Call Site 6 <<
	.uleb128 .Ltmp25-.Ltmp9                 #   Call between .Ltmp9 and .Ltmp25
	.uleb128 .Ltmp26-.Lfunc_begin1          #     jumps to .Ltmp26
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp25-.Lfunc_begin1          # >> Call Site 7 <<
	.uleb128 .Lfunc_end6-.Ltmp25            #   Call between .Ltmp25 and .Lfunc_end6
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
	.globl	_ZN16btRaycastVehicleD0Ev       # -- Begin function _ZN16btRaycastVehicleD0Ev
	.p2align	5
	.type	_ZN16btRaycastVehicleD0Ev,@function
_ZN16btRaycastVehicleD0Ev:              # @_ZN16btRaycastVehicleD0Ev
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
.Ltmp27:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN16btRaycastVehicleD2Ev)
	jirl	$ra, $ra, 0
.Ltmp28:                                # EH_LABEL
# %bb.1:
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZdlPv)
	jr	$t8
.LBB7_2:
.Ltmp29:                                # EH_LABEL
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end7:
	.size	_ZN16btRaycastVehicleD0Ev, .Lfunc_end7-_ZN16btRaycastVehicleD0Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table7:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Ltmp27-.Lfunc_begin2          # >> Call Site 1 <<
	.uleb128 .Ltmp28-.Ltmp27                #   Call between .Ltmp27 and .Ltmp28
	.uleb128 .Ltmp29-.Lfunc_begin2          #     jumps to .Ltmp29
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp28-.Lfunc_begin2          # >> Call Site 2 <<
	.uleb128 .Lfunc_end7-.Ltmp28            #   Call between .Ltmp28 and .Lfunc_end7
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN16btRaycastVehicle8addWheelERK9btVector3S2_S2_ffRKNS_15btVehicleTuningEb
.LCPI8_0:
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x3dcccccd                      # float 0.100000001
	.text
	.globl	_ZN16btRaycastVehicle8addWheelERK9btVector3S2_S2_ffRKNS_15btVehicleTuningEb
	.p2align	5
	.type	_ZN16btRaycastVehicle8addWheelERK9btVector3S2_S2_ffRKNS_15btVehicleTuningEb,@function
_ZN16btRaycastVehicle8addWheelERK9btVector3S2_S2_ffRKNS_15btVehicleTuningEb: # @_ZN16btRaycastVehicle8addWheelERK9btVector3S2_S2_ffRKNS_15btVehicleTuningEb
	.cfi_startproc
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
	fst.d	$fs0, $sp, 264                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 256                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 248                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 240                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 232                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 224                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 216                  # 8-byte Folded Spill
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
	move	$fp, $a0
	fld.s	$fs0, $a4, 0
	vld	$vr2, $a1, 0
	fld.s	$fs1, $a4, 4
	fld.s	$fs2, $a4, 8
	fld.s	$fs3, $a4, 16
	vst	$vr2, $sp, 168
	vld	$vr2, $a2, 0
	vld	$vr3, $a3, 0
	ld.w	$a1, $a0, 196
	ld.w	$a0, $a0, 200
	fld.s	$fs4, $a4, 12
	vst	$vr2, $sp, 184
	addi.d	$s3, $sp, 168
	vst	$vr3, $sp, 200
	bne	$a1, $a0, .LBB8_11
# %bb.1:
	sltui	$a0, $a1, 1
	slli.w	$a2, $a1, 1
	masknez	$a2, $a2, $a0
	ori	$a3, $zero, 1
	maskeqz	$a0, $a3, $a0
	or	$s4, $a0, $a2
	bge	$a1, $s4, .LBB8_11
# %bb.2:
	fmov.s	$fs5, $fa0
	fmov.s	$fs6, $fa1
	move	$s5, $a5
	beqz	$s4, .LBB8_4
# %bb.3:
	alsl.d	$a0, $s4, $s4, 3
	slli.d	$a0, $a0, 5
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 196
	move	$s0, $a0
	bgtz	$a1, .LBB8_5
	b	.LBB8_7
.LBB8_4:
	move	$s0, $zero
	blez	$a1, .LBB8_7
.LBB8_5:                                # %.lr.ph.i.i.i
	move	$s6, $zero
	alsl.d	$a0, $a1, $a1, 3
	slli.d	$s7, $a0, 5
	.p2align	4, , 16
.LBB8_6:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 208
	add.d	$s1, $s0, $s6
	add.d	$s2, $a0, $s6
	ori	$a2, $zero, 96
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	vld	$vr0, $s2, 96
	vst	$vr0, $s1, 96
	vld	$vr0, $s2, 112
	vst	$vr0, $s1, 112
	vld	$vr0, $s2, 128
	vst	$vr0, $s1, 128
	vld	$vr0, $s2, 144
	vst	$vr0, $s1, 144
	addi.d	$a0, $s1, 160
	addi.d	$a1, $s2, 160
	ori	$a2, $zero, 128
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	addi.d	$s6, $s6, 288
	bne	$s7, $s6, .LBB8_6
.LBB8_7:                                # %_ZNK20btAlignedObjectArrayI11btWheelInfoE4copyEiiPS0_.exit.i.i
	ld.d	$a0, $fp, 208
	beqz	$a0, .LBB8_10
# %bb.8:                                # %_ZNK20btAlignedObjectArrayI11btWheelInfoE4copyEiiPS0_.exit.i.i
	ld.b	$a1, $fp, 216
	andi	$a1, $a1, 1
	beqz	$a1, .LBB8_10
# %bb.9:
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.LBB8_10:                               # %_ZN20btAlignedObjectArrayI11btWheelInfoE10deallocateEv.exit.i.i
	ori	$a0, $zero, 1
	ld.w	$a1, $fp, 196
	st.b	$a0, $fp, 216
	st.d	$s0, $fp, 208
	st.w	$s4, $fp, 200
	move	$a5, $s5
	fmov.s	$fa1, $fs6
	fmov.s	$fa0, $fs5
.LBB8_11:                               # %_ZN20btAlignedObjectArrayI11btWheelInfoE9push_backERKS0_.exit
	ld.d	$a0, $fp, 208
	ori	$a2, $zero, 288
	mul.d	$a1, $a1, $a2
	vld	$vr2, $s3, 32
	vld	$vr3, $s3, 16
	vld	$vr4, $s3, 0
	add.d	$a0, $a0, $a1
	vst	$vr2, $a0, 192
	vst	$vr3, $a0, 176
	vst	$vr4, $a0, 160
	fst.s	$fa0, $a0, 208
	fst.s	$fs4, $a0, 212
	fst.s	$fa1, $a0, 216
	fst.s	$fs0, $a0, 220
	pcalau12i	$a1, %pc_hi20(.LCPI8_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI8_0)
	fst.s	$fs1, $a0, 224
	fst.s	$fs2, $a0, 228
	fst.s	$fs3, $a0, 232
	vst	$vr0, $a0, 236
	st.d	$zero, $a0, 252
	st.b	$a5, $a0, 260
	ld.w	$a0, $fp, 196
	addi.d	$a1, $a0, 1
	ld.d	$a3, $fp, 208
	st.w	$a1, $fp, 196
	ld.d	$a1, $fp, 168
	mul.d	$a0, $a0, $a2
	add.d	$s0, $a3, $a0
	st.b	$zero, $s0, 84
	fld.s	$fa0, $a1, 8
	fld.s	$fa6, $a1, 12
	fld.s	$fa3, $a1, 16
	fld.s	$fa1, $a1, 24
	fld.s	$fa7, $a1, 28
	fld.s	$fa4, $a1, 32
	fld.s	$fa2, $a1, 40
	fld.s	$ft0, $a1, 44
	fld.s	$fa5, $a1, 48
	fld.s	$ft1, $a1, 56
	fld.s	$ft2, $a1, 60
	fld.s	$ft3, $s0, 164
	fld.s	$ft4, $s0, 160
	fld.s	$ft5, $s0, 168
	fld.s	$ft6, $a1, 64
	fmul.s	$ft7, $fa6, $ft3
	fmadd.s	$ft7, $fa0, $ft4, $ft7
	fmadd.s	$ft7, $fa3, $ft5, $ft7
	fadd.s	$ft1, $ft1, $ft7
	fmul.s	$ft7, $fa7, $ft3
	fmadd.s	$ft7, $fa1, $ft4, $ft7
	fmadd.s	$ft7, $fa4, $ft5, $ft7
	fadd.s	$ft2, $ft2, $ft7
	fmul.s	$ft3, $ft0, $ft3
	fmadd.s	$ft3, $fa2, $ft4, $ft3
	fmadd.s	$ft3, $fa5, $ft5, $ft3
	fadd.s	$ft3, $ft6, $ft3
	movfr2gr.s	$a0, $ft1
	movfr2gr.s	$a1, $ft2
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $ft3
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $s0, 36
	fld.s	$ft1, $s0, 180
	fld.s	$ft2, $s0, 176
	fld.s	$ft3, $s0, 184
	st.d	$a1, $s0, 44
	fmul.s	$ft4, $fa6, $ft1
	fmadd.s	$ft4, $fa0, $ft2, $ft4
	fmadd.s	$ft4, $fa3, $ft3, $ft4
	fmul.s	$ft5, $fa7, $ft1
	fmadd.s	$ft5, $fa1, $ft2, $ft5
	fmadd.s	$ft5, $fa4, $ft3, $ft5
	fmul.s	$ft1, $ft0, $ft1
	fmadd.s	$ft1, $fa2, $ft2, $ft1
	fmadd.s	$ft1, $fa5, $ft3, $ft1
	movfr2gr.s	$a0, $ft4
	movfr2gr.s	$a1, $ft5
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $ft1
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $s0, 52
	fld.s	$ft1, $s0, 196
	fld.s	$ft2, $s0, 192
	fld.s	$ft3, $s0, 200
	st.d	$a1, $s0, 60
	fmul.s	$fa6, $fa6, $ft1
	fmadd.s	$fa0, $fa0, $ft2, $fa6
	fmadd.s	$fa0, $fa3, $ft3, $fa0
	fmul.s	$fa3, $fa7, $ft1
	fmadd.s	$fa1, $fa1, $ft2, $fa3
	fmadd.s	$fa1, $fa4, $ft3, $fa1
	fmul.s	$fa3, $ft0, $ft1
	fmadd.s	$fa2, $fa2, $ft2, $fa3
	fmadd.s	$fa2, $fa5, $ft3, $fa2
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa1
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa2
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $s0, 68
	st.d	$a1, $s0, 76
	ld.w	$a0, $fp, 196
	addi.w	$a1, $a0, -1
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZN16btRaycastVehicle20updateWheelTransformEib)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	fld.d	$fs6, $sp, 216                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 224                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 232                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 240                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 248                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 256                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 264                  # 8-byte Folded Reload
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
.Lfunc_end8:
	.size	_ZN16btRaycastVehicle8addWheelERK9btVector3S2_S2_ffRKNS_15btVehicleTuningEb, .Lfunc_end8-_ZN16btRaycastVehicle8addWheelERK9btVector3S2_S2_ffRKNS_15btVehicleTuningEb
	.cfi_endproc
                                        # -- End function
	.globl	_ZN16btRaycastVehicle23updateWheelTransformsWSER11btWheelInfob # -- Begin function _ZN16btRaycastVehicle23updateWheelTransformsWSER11btWheelInfob
	.p2align	5
	.type	_ZN16btRaycastVehicle23updateWheelTransformsWSER11btWheelInfob,@function
_ZN16btRaycastVehicle23updateWheelTransformsWSER11btWheelInfob: # @_ZN16btRaycastVehicle23updateWheelTransformsWSER11btWheelInfob
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -96
	.cfi_def_cfa_offset 96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	ld.d	$a0, $a0, 168
	st.b	$zero, $a1, 84
	vld	$vr0, $a0, 8
	vld	$vr1, $a0, 24
	vld	$vr2, $a0, 40
	vld	$vr3, $a0, 56
	vst	$vr0, $sp, 16
	vst	$vr1, $sp, 32
	vst	$vr2, $sp, 48
	vst	$vr3, $sp, 64
	beqz	$a2, .LBB9_3
# %bb.1:
	ld.d	$a0, $a0, 512
	beqz	$a0, .LBB9_3
# %bb.2:
	ld.d	$a2, $a0, 0
	ld.d	$a2, $a2, 16
	move	$fp, $a1
	addi.d	$a1, $sp, 16
	jirl	$ra, $a2, 0
	move	$a1, $fp
.LBB9_3:
	fld.s	$fa0, $sp, 16
	fld.s	$fa5, $a1, 160
	fld.s	$fa1, $sp, 20
	fld.s	$fa6, $a1, 164
	fld.s	$fa2, $sp, 24
	fld.s	$fa7, $a1, 168
	fld.s	$fa3, $sp, 64
	fmul.s	$fa4, $fa1, $fa6
	fmadd.s	$fa4, $fa0, $fa5, $fa4
	fmadd.s	$fa4, $fa2, $fa7, $fa4
	fadd.s	$ft0, $fa4, $fa3
	fld.s	$fa4, $sp, 36
	fld.s	$fa3, $sp, 32
	fld.s	$ft1, $sp, 40
	fld.s	$ft2, $sp, 68
	fmul.s	$ft3, $fa6, $fa4
	fmadd.s	$ft3, $fa3, $fa5, $ft3
	fmadd.s	$ft3, $ft1, $fa7, $ft3
	fadd.s	$ft2, $ft2, $ft3
	fld.s	$ft3, $sp, 52
	fld.s	$ft4, $sp, 48
	fld.s	$ft5, $sp, 56
	fld.s	$ft6, $sp, 72
	fmul.s	$fa6, $fa6, $ft3
	fmadd.s	$fa5, $ft4, $fa5, $fa6
	fmadd.s	$fa5, $ft5, $fa7, $fa5
	fadd.s	$fa5, $ft6, $fa5
	movfr2gr.s	$a0, $ft0
	movfr2gr.s	$a2, $ft2
	bstrins.d	$a0, $a2, 63, 32
	movfr2gr.s	$a2, $fa5
	bstrpick.d	$a2, $a2, 31, 0
	st.d	$a0, $a1, 36
	fld.s	$fa5, $a1, 180
	fld.s	$fa6, $a1, 176
	fld.s	$fa7, $a1, 184
	st.d	$a2, $a1, 44
	fmul.s	$ft0, $fa1, $fa5
	fmadd.s	$ft0, $fa0, $fa6, $ft0
	fmadd.s	$ft0, $fa2, $fa7, $ft0
	fmul.s	$ft2, $fa4, $fa5
	fmadd.s	$ft2, $fa3, $fa6, $ft2
	fmadd.s	$ft2, $ft1, $fa7, $ft2
	fmul.s	$fa5, $ft3, $fa5
	fmadd.s	$fa5, $ft4, $fa6, $fa5
	fmadd.s	$fa5, $ft5, $fa7, $fa5
	movfr2gr.s	$a0, $ft0
	movfr2gr.s	$a2, $ft2
	bstrins.d	$a0, $a2, 63, 32
	movfr2gr.s	$a2, $fa5
	bstrpick.d	$a2, $a2, 31, 0
	st.d	$a0, $a1, 52
	fld.s	$fa5, $a1, 196
	fld.s	$fa6, $a1, 192
	fld.s	$fa7, $a1, 200
	st.d	$a2, $a1, 60
	fmul.s	$fa1, $fa1, $fa5
	fmadd.s	$fa0, $fa0, $fa6, $fa1
	fmadd.s	$fa0, $fa2, $fa7, $fa0
	fmul.s	$fa1, $fa4, $fa5
	fmadd.s	$fa1, $fa3, $fa6, $fa1
	fmadd.s	$fa1, $ft1, $fa7, $fa1
	fmul.s	$fa2, $ft3, $fa5
	fmadd.s	$fa2, $ft4, $fa6, $fa2
	fmadd.s	$fa2, $ft5, $fa7, $fa2
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a2, $fa1
	bstrins.d	$a0, $a2, 63, 32
	movfr2gr.s	$a2, $fa2
	bstrpick.d	$a2, $a2, 31, 0
	st.d	$a0, $a1, 68
	st.d	$a2, $a1, 76
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end9:
	.size	_ZN16btRaycastVehicle23updateWheelTransformsWSER11btWheelInfob, .Lfunc_end9-_ZN16btRaycastVehicle23updateWheelTransformsWSER11btWheelInfob
	.cfi_endproc
                                        # -- End function
	.globl	_ZN16btRaycastVehicle20updateWheelTransformEib # -- Begin function _ZN16btRaycastVehicle20updateWheelTransformEib
	.p2align	5
	.type	_ZN16btRaycastVehicle20updateWheelTransformEib,@function
_ZN16btRaycastVehicle20updateWheelTransformEib: # @_ZN16btRaycastVehicle20updateWheelTransformEib
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -160
	.cfi_def_cfa_offset 160
	st.d	$ra, $sp, 152                   # 8-byte Folded Spill
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
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
	.cfi_offset 56, -24
	.cfi_offset 57, -32
	.cfi_offset 58, -40
	.cfi_offset 59, -48
	.cfi_offset 60, -56
	.cfi_offset 61, -64
	.cfi_offset 62, -72
	.cfi_offset 63, -80
	ld.d	$a3, $a0, 208
	alsl.d	$a1, $a1, $a1, 3
	slli.d	$a1, $a1, 5
	add.d	$fp, $a3, $a1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN16btRaycastVehicle23updateWheelTransformsWSER11btWheelInfob)
	jirl	$ra, $ra, 0
	fld.s	$fa4, $fp, 52
	fld.s	$fa5, $fp, 56
	fneg.s	$fs4, $fa4
	fst.s	$fa4, $sp, 60                   # 4-byte Folded Spill
	fld.s	$fa6, $fp, 60
	fneg.s	$fs2, $fa5
	fst.s	$fa5, $sp, 64                   # 4-byte Folded Spill
	fld.s	$ft2, $fp, 72
	fst.s	$ft2, $sp, 72                   # 4-byte Folded Spill
	fld.s	$fa3, $fp, 76
	fst.s	$fa3, $sp, 8                    # 4-byte Folded Spill
	fneg.s	$fs1, $fa6
	fld.s	$fa7, $fp, 68
	fmul.s	$fa0, $fa6, $ft2
	fst.s	$fa6, $sp, 68                   # 4-byte Folded Spill
	fmadd.s	$fa0, $fs2, $fa3, $fa0
	fst.s	$fs2, $sp, 36                   # 4-byte Folded Spill
	fmul.s	$fa1, $fa4, $fa3
	fst.s	$fa7, $sp, 76                   # 4-byte Folded Spill
	fmadd.s	$fa1, $fs1, $fa7, $fa1
	fst.s	$fs1, $sp, 52                   # 4-byte Folded Spill
	fmul.s	$fa2, $fa5, $fa7
	fmadd.s	$fa2, $fs4, $ft2, $fa2
	fst.s	$fs4, $sp, 40                   # 4-byte Folded Spill
	fmul.s	$fa3, $fa1, $fa1
	fmadd.s	$fa3, $fa0, $fa0, $fa3
	fmadd.s	$fa3, $fa2, $fa2, $fa3
	frsqrt.s	$fa3, $fa3
	fmul.s	$fa0, $fa0, $fa3
	fst.s	$fa0, $sp, 48                   # 4-byte Folded Spill
	fmul.s	$fa0, $fa1, $fa3
	fst.s	$fa0, $sp, 44                   # 4-byte Folded Spill
	fmul.s	$fa0, $fa2, $fa3
	fst.s	$fa0, $sp, 56                   # 4-byte Folded Spill
	fld.s	$fa0, $fp, 236
	fmul.s	$fa1, $fa5, $fa5
	fmadd.s	$fa1, $fa4, $fa4, $fa1
	fmadd.s	$fa1, $fa6, $fa6, $fa1
	fsqrt.s	$fs3, $fa1
	vldi	$vr1, -1184
	fmul.s	$fs0, $fa0, $fa1
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(sinf)
	jirl	$ra, $ra, 0
	fdiv.s	$fa0, $fa0, $fs3
	fmul.s	$fs3, $fa0, $fs4
	fmul.s	$fs4, $fa0, $fs2
	fmul.s	$fs5, $fa0, $fs1
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(cosf)
	jirl	$ra, $ra, 0
	fmul.s	$fa1, $fs4, $fs4
	fmadd.s	$fa1, $fs3, $fs3, $fa1
	fmadd.s	$fa1, $fs5, $fs5, $fa1
	fmadd.s	$fa1, $fa0, $fa0, $fa1
	vldi	$vr2, -1280
	fdiv.s	$fa1, $fa2, $fa1
	fmul.s	$fa2, $fs3, $fa1
	fmul.s	$fa3, $fs4, $fa1
	fmul.s	$fa1, $fs5, $fa1
	fmul.s	$fa4, $fa0, $fa2
	fmul.s	$fa5, $fa0, $fa3
	fmul.s	$fa0, $fa0, $fa1
	fmul.s	$fa2, $fs3, $fa2
	fmul.s	$fa6, $fs3, $fa3
	fmul.s	$fa7, $fs3, $fa1
	fmul.s	$fa3, $fs4, $fa3
	fmul.s	$ft0, $fs4, $fa1
	fmul.s	$fa1, $fs5, $fa1
	fadd.s	$ft1, $fa3, $fa1
	vldi	$vr10, -1168
	fsub.s	$fs6, $ft2, $ft1
	fsub.s	$fs7, $fa6, $fa0
	fadd.s	$ft1, $fa7, $fa5
	fst.s	$ft1, $sp, 32                   # 4-byte Folded Spill
	fadd.s	$fa0, $fa6, $fa0
	fst.s	$fa0, $sp, 12                   # 4-byte Folded Spill
	fadd.s	$fa0, $fa2, $fa1
	fsub.s	$fs5, $ft2, $fa0
	fsub.s	$fa0, $ft0, $fa4
	fst.s	$fa0, $sp, 28                   # 4-byte Folded Spill
	fsub.s	$fa0, $fa7, $fa5
	fst.s	$fa0, $sp, 20                   # 4-byte Folded Spill
	fadd.s	$fa0, $ft0, $fa4
	fst.s	$fa0, $sp, 16                   # 4-byte Folded Spill
	fadd.s	$fa0, $fa2, $fa3
	fsub.s	$fa0, $ft2, $fa0
	fst.s	$fa0, $sp, 24                   # 4-byte Folded Spill
	fld.s	$fa0, $fp, 240
	fld.s	$fs4, $sp, 72                   # 4-byte Folded Reload
	fmul.s	$fa1, $fs4, $fs4
	fld.s	$fs1, $sp, 76                   # 4-byte Folded Reload
	fmadd.s	$fa1, $fs1, $fs1, $fa1
	fld.s	$fs2, $sp, 8                    # 4-byte Folded Reload
	fmadd.s	$fa1, $fs2, $fs2, $fa1
	fsqrt.s	$fs3, $fa1
	vldi	$vr1, -1056
	fmul.s	$fs0, $fa0, $fa1
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(sinf)
	jirl	$ra, $ra, 0
	fdiv.s	$fa0, $fa0, $fs3
	fmul.s	$fs3, $fs1, $fa0
	fmul.s	$fs1, $fs4, $fa0
	fmul.s	$fs4, $fs2, $fa0
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(cosf)
	jirl	$ra, $ra, 0
	fmul.s	$fa1, $fs1, $fs1
	fmadd.s	$fa1, $fs3, $fs3, $fa1
	fmadd.s	$fa1, $fs4, $fs4, $fa1
	fmadd.s	$fa1, $fa0, $fa0, $fa1
	vldi	$vr2, -1280
	fdiv.s	$fa1, $fa2, $fa1
	fmul.s	$fa2, $fs3, $fa1
	fmul.s	$fa3, $fs1, $fa1
	fmul.s	$fa1, $fs4, $fa1
	fmul.s	$fa4, $fa0, $fa2
	fmul.s	$fa5, $fa0, $fa3
	fmul.s	$fa0, $fa0, $fa1
	fmul.s	$fa2, $fs3, $fa2
	fmul.s	$fa6, $fs3, $fa3
	fmul.s	$fa7, $fs3, $fa1
	fmul.s	$fa3, $fs1, $fa3
	fmul.s	$ft0, $fs1, $fa1
	fmul.s	$fa1, $fs4, $fa1
	fsub.s	$ft1, $fa6, $fa0
	fadd.s	$fa0, $fa6, $fa0
	fadd.s	$fa6, $fa3, $fa1
	vldi	$vr10, -1168
	fsub.s	$fa6, $ft2, $fa6
	fadd.s	$fa1, $fa2, $fa1
	fsub.s	$fa1, $ft2, $fa1
	vldi	$vr18, -1168
	fmul.s	$ft2, $fs7, $fa0
	fmadd.s	$ft2, $fa6, $fs6, $ft2
	fmul.s	$ft3, $fs7, $fa1
	fmadd.s	$ft3, $ft1, $fs6, $ft3
	fsub.s	$ft4, $ft0, $fa4
	fmul.s	$ft5, $fs7, $ft4
	fadd.s	$ft6, $fa7, $fa5
	fmadd.s	$ft5, $ft6, $fs6, $ft5
	fmul.s	$ft7, $fs5, $fa0
	fld.s	$ft11, $sp, 12                  # 4-byte Folded Reload
	fmadd.s	$ft7, $fa6, $ft11, $ft7
	fmul.s	$ft8, $fs5, $fa1
	fmadd.s	$ft8, $ft1, $ft11, $ft8
	fmul.s	$ft9, $fs5, $ft4
	fmadd.s	$ft9, $ft6, $ft11, $ft9
	fld.s	$ft12, $sp, 16                  # 4-byte Folded Reload
	fmul.s	$fa0, $ft12, $fa0
	fld.s	$ft11, $sp, 20                  # 4-byte Folded Reload
	fmadd.s	$fa0, $fa6, $ft11, $fa0
	fmul.s	$fa1, $ft12, $fa1
	fmadd.s	$fa1, $ft1, $ft11, $fa1
	fmul.s	$fa6, $ft12, $ft4
	fmadd.s	$fa6, $ft6, $ft11, $fa6
	fsub.s	$fa5, $fa7, $fa5
	fadd.s	$fa4, $ft0, $fa4
	fadd.s	$fa2, $fa2, $fa3
	fsub.s	$fa2, $ft10, $fa2
	fld.s	$ft0, $sp, 32                   # 4-byte Folded Reload
	fmadd.s	$fa3, $fa5, $ft0, $ft2
	fmadd.s	$fa7, $fa4, $ft0, $ft3
	fmadd.s	$ft0, $fa2, $ft0, $ft5
	fld.s	$ft3, $sp, 28                   # 4-byte Folded Reload
	fmadd.s	$ft1, $fa5, $ft3, $ft7
	fmadd.s	$ft2, $fa4, $ft3, $ft8
	fmadd.s	$ft3, $fa2, $ft3, $ft9
	fld.s	$ft4, $sp, 24                   # 4-byte Folded Reload
	fmadd.s	$fa0, $fa5, $ft4, $fa0
	fmadd.s	$fa1, $fa4, $ft4, $fa1
	fmadd.s	$fa2, $fa2, $ft4, $fa6
	fld.s	$ft7, $sp, 72                   # 4-byte Folded Reload
	fmul.s	$fa4, $ft7, $fa7
	fld.s	$ft8, $sp, 76                   # 4-byte Folded Reload
	fmadd.s	$fa4, $ft8, $fa3, $fa4
	fld.s	$ft10, $sp, 44                  # 4-byte Folded Reload
	fmul.s	$fa5, $ft10, $fa7
	fld.s	$ft9, $sp, 48                   # 4-byte Folded Reload
	fmadd.s	$fa5, $ft9, $fa3, $fa5
	fld.s	$ft6, $sp, 36                   # 4-byte Folded Reload
	fmul.s	$fa6, $fa7, $ft6
	fld.s	$ft4, $sp, 40                   # 4-byte Folded Reload
	fmadd.s	$fa3, $ft4, $fa3, $fa6
	fmul.s	$fa6, $ft7, $ft2
	fmadd.s	$fa6, $ft8, $ft1, $fa6
	fmul.s	$fa7, $ft10, $ft2
	fmadd.s	$fa7, $ft9, $ft1, $fa7
	fmul.s	$ft2, $ft2, $ft6
	fmadd.s	$ft1, $ft4, $ft1, $ft2
	fmov.s	$ft5, $ft4
	fmul.s	$ft2, $ft7, $fa1
	fmadd.s	$ft2, $ft8, $fa0, $ft2
	fmul.s	$ft4, $ft10, $fa1
	fmadd.s	$ft4, $ft9, $fa0, $ft4
	fmul.s	$fa1, $fa1, $ft6
	fmadd.s	$fa0, $ft5, $fa0, $fa1
	fmadd.s	$fa1, $fs2, $ft0, $fa4
	fld.s	$ft7, $sp, 56                   # 4-byte Folded Reload
	fmadd.s	$fa4, $ft7, $ft0, $fa5
	fld.s	$ft5, $sp, 52                   # 4-byte Folded Reload
	fmadd.s	$fa3, $ft5, $ft0, $fa3
	fmadd.s	$fa5, $fs2, $ft3, $fa6
	fmadd.s	$fa6, $ft7, $ft3, $fa7
	fmadd.s	$fa7, $ft5, $ft3, $ft1
	fmadd.s	$ft0, $fs2, $fa2, $ft2
	fmadd.s	$ft1, $ft7, $fa2, $ft4
	fmadd.s	$fa0, $ft5, $fa2, $fa0
	fst.s	$fa1, $fp, 96
	fst.s	$fa4, $fp, 100
	fst.s	$fa3, $fp, 104
	fst.s	$fa5, $fp, 112
	fst.s	$fa6, $fp, 116
	fst.s	$fa7, $fp, 120
	fld.s	$fa1, $fp, 32
	fst.s	$ft0, $fp, 128
	fst.s	$ft1, $fp, 132
	fst.s	$fa0, $fp, 136
	fld.s	$fa0, $sp, 60                   # 4-byte Folded Reload
	fmul.s	$fa0, $fa0, $fa1
	fld.s	$fa2, $sp, 64                   # 4-byte Folded Reload
	fmul.s	$fa2, $fa2, $fa1
	fld.s	$fa3, $fp, 36
	fld.s	$fa4, $fp, 40
	fld.s	$fa5, $fp, 44
	fld.s	$fa6, $sp, 68                   # 4-byte Folded Reload
	fmul.s	$fa1, $fa6, $fa1
	fadd.s	$fa0, $fa3, $fa0
	fadd.s	$fa2, $fa2, $fa4
	fadd.s	$fa1, $fa1, $fa5
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa2
	movfr2gr.s	$a2, $fa1
	bstrins.d	$a0, $a1, 63, 32
	st.w	$zero, $fp, 108
	st.w	$zero, $fp, 124
	st.w	$zero, $fp, 140
	bstrpick.d	$a1, $a2, 31, 0
	st.d	$a0, $fp, 144
	st.d	$a1, $fp, 152
	fld.d	$fs7, $sp, 80                   # 8-byte Folded Reload
	fld.d	$fs6, $sp, 88                   # 8-byte Folded Reload
	fld.d	$fs5, $sp, 96                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 104                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 112                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 120                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 128                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 136                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 160
	ret
.Lfunc_end10:
	.size	_ZN16btRaycastVehicle20updateWheelTransformEib, .Lfunc_end10-_ZN16btRaycastVehicle20updateWheelTransformEib
	.cfi_endproc
                                        # -- End function
	.globl	_ZNK16btRaycastVehicle19getWheelTransformWSEi # -- Begin function _ZNK16btRaycastVehicle19getWheelTransformWSEi
	.p2align	5
	.type	_ZNK16btRaycastVehicle19getWheelTransformWSEi,@function
_ZNK16btRaycastVehicle19getWheelTransformWSEi: # @_ZNK16btRaycastVehicle19getWheelTransformWSEi
# %bb.0:
	ld.d	$a0, $a0, 208
	alsl.d	$a1, $a1, $a1, 3
	slli.d	$a1, $a1, 5
	add.d	$a0, $a0, $a1
	addi.d	$a0, $a0, 96
	ret
.Lfunc_end11:
	.size	_ZNK16btRaycastVehicle19getWheelTransformWSEi, .Lfunc_end11-_ZNK16btRaycastVehicle19getWheelTransformWSEi
                                        # -- End function
	.globl	_ZN16btRaycastVehicle15resetSuspensionEv # -- Begin function _ZN16btRaycastVehicle15resetSuspensionEv
	.p2align	5
	.type	_ZN16btRaycastVehicle15resetSuspensionEv,@function
_ZN16btRaycastVehicle15resetSuspensionEv: # @_ZN16btRaycastVehicle15resetSuspensionEv
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	move	$fp, $a0
	ld.w	$a0, $a0, 196
	blez	$a0, .LBB12_3
# %bb.1:                                # %.lr.ph
	move	$s1, $zero
	move	$s2, $zero
	lu12i.w	$s3, -524288
	lu32i.d	$s3, 0
	lu12i.w	$s4, 260096
	.p2align	4, , 16
.LBB12_2:                               # =>This Inner Loop Header: Depth=1
	ld.d	$s5, $fp, 208
	add.d	$s0, $s5, $s1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNK11btWheelInfo23getSuspensionRestLengthEv)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $s0, 52
	ld.w	$a1, $s0, 56
	ld.wu	$a2, $s0, 60
	xor	$a0, $a0, $s3
	xor	$a1, $a1, $s3
	slli.d	$a1, $a1, 32
	or	$a0, $a1, $a0
	xor	$a1, $a2, $s3
	stx.d	$a0, $s5, $s1
	st.d	$a1, $s0, 8
	st.d	$s4, $s0, 272
	ld.w	$a0, $fp, 196
	fst.s	$fa0, $s0, 32
	addi.d	$s2, $s2, 1
	addi.d	$s1, $s1, 288
	blt	$s2, $a0, .LBB12_2
.LBB12_3:                               # %._crit_edge
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
.Lfunc_end12:
	.size	_ZN16btRaycastVehicle15resetSuspensionEv, .Lfunc_end12-_ZN16btRaycastVehicle15resetSuspensionEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZNK16btRaycastVehicle24getChassisWorldTransformEv # -- Begin function _ZNK16btRaycastVehicle24getChassisWorldTransformEv
	.p2align	5
	.type	_ZNK16btRaycastVehicle24getChassisWorldTransformEv,@function
_ZNK16btRaycastVehicle24getChassisWorldTransformEv: # @_ZNK16btRaycastVehicle24getChassisWorldTransformEv
# %bb.0:
	ld.d	$a0, $a0, 168
	addi.d	$a0, $a0, 8
	ret
.Lfunc_end13:
	.size	_ZNK16btRaycastVehicle24getChassisWorldTransformEv, .Lfunc_end13-_ZNK16btRaycastVehicle24getChassisWorldTransformEv
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZN16btRaycastVehicle7rayCastER11btWheelInfo
.LCPI14_0:
	.word	0x3c23d70a                      # float 0.00999999977
.LCPI14_1:
	.word	0xbdcccccd                      # float -0.100000001
	.text
	.globl	_ZN16btRaycastVehicle7rayCastER11btWheelInfo
	.p2align	5
	.type	_ZN16btRaycastVehicle7rayCastER11btWheelInfo,@function
_ZN16btRaycastVehicle7rayCastER11btWheelInfo: # @_ZN16btRaycastVehicle7rayCastER11btWheelInfo
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -128
	.cfi_def_cfa_offset 128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 80                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 72                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 56, -48
	.cfi_offset 57, -56
	move	$s0, $a0
	ld.d	$a0, $a0, 168
	move	$fp, $a1
	st.b	$zero, $a1, 84
	fld.s	$fa0, $a0, 8
	fld.s	$fa6, $a0, 12
	fld.s	$fa3, $a0, 16
	fld.s	$fa1, $a0, 24
	fld.s	$fa7, $a0, 28
	fld.s	$fa4, $a0, 32
	fld.s	$fa2, $a0, 40
	fld.s	$ft0, $a0, 44
	fld.s	$fa5, $a0, 48
	fld.s	$ft1, $a0, 56
	fld.s	$ft2, $a0, 60
	fld.s	$ft3, $a1, 164
	fld.s	$ft4, $a1, 160
	fld.s	$ft5, $a1, 168
	fld.s	$ft6, $a0, 64
	fmul.s	$ft7, $fa6, $ft3
	fmadd.s	$ft7, $fa0, $ft4, $ft7
	fmadd.s	$ft7, $fa3, $ft5, $ft7
	fadd.s	$ft1, $ft1, $ft7
	fmul.s	$ft7, $fa7, $ft3
	fmadd.s	$ft7, $fa1, $ft4, $ft7
	fmadd.s	$ft7, $fa4, $ft5, $ft7
	fadd.s	$ft2, $ft2, $ft7
	fmul.s	$ft3, $ft0, $ft3
	fmadd.s	$ft3, $fa2, $ft4, $ft3
	fmadd.s	$ft3, $fa5, $ft5, $ft3
	fadd.s	$ft3, $ft6, $ft3
	movfr2gr.s	$a0, $ft1
	movfr2gr.s	$a1, $ft2
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $ft3
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$s1, $fp, 36
	st.d	$a0, $fp, 36
	fld.s	$ft1, $fp, 180
	fld.s	$ft2, $fp, 176
	fld.s	$ft3, $fp, 184
	st.d	$a1, $fp, 44
	fmul.s	$ft4, $fa6, $ft1
	fmadd.s	$ft4, $fa0, $ft2, $ft4
	fmadd.s	$ft4, $fa3, $ft3, $ft4
	fmul.s	$ft5, $fa7, $ft1
	fmadd.s	$ft5, $fa1, $ft2, $ft5
	fmadd.s	$ft5, $fa4, $ft3, $ft5
	fmul.s	$ft1, $ft0, $ft1
	fmadd.s	$ft1, $fa2, $ft2, $ft1
	fmadd.s	$ft1, $fa5, $ft3, $ft1
	movfr2gr.s	$a0, $ft4
	movfr2gr.s	$a1, $ft5
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $ft1
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $fp, 52
	fld.s	$ft1, $fp, 196
	fld.s	$ft2, $fp, 192
	fld.s	$ft3, $fp, 200
	st.d	$a1, $fp, 60
	fmul.s	$fa6, $fa6, $ft1
	fmadd.s	$fa0, $fa0, $ft2, $fa6
	fmadd.s	$fa0, $fa3, $ft3, $fa0
	fmul.s	$fa3, $fa7, $ft1
	fmadd.s	$fa1, $fa1, $ft2, $fa3
	fmadd.s	$fa1, $fa4, $ft3, $fa1
	fmul.s	$fa3, $ft0, $ft1
	fmadd.s	$fa2, $fa2, $ft2, $fa3
	fmadd.s	$fa2, $fa5, $ft3, $fa2
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa1
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa2
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $fp, 68
	st.d	$a1, $fp, 76
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNK11btWheelInfo23getSuspensionRestLengthEv)
	jirl	$ra, $ra, 0
	fld.s	$fa1, $fp, 216
	fld.s	$fa2, $fp, 52
	fadd.s	$fs0, $fa0, $fa1
	fmul.s	$fa0, $fa2, $fs0
	fld.s	$fa1, $fp, 36
	fld.s	$fa2, $fp, 56
	fld.s	$fa3, $fp, 60
	fld.s	$fa4, $fp, 40
	fadd.s	$fa0, $fa0, $fa1
	fld.s	$fa1, $fp, 44
	fmul.s	$fa2, $fs0, $fa2
	fadd.s	$fa2, $fa2, $fa4
	fmul.s	$fa3, $fs0, $fa3
	fadd.s	$fa1, $fa3, $fa1
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa2
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa1
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $fp, 16
	st.d	$a1, $fp, 24
	ld.d	$a0, $s0, 144
	ld.d	$a1, $a0, 0
	lu12i.w	$a2, -264192
	lu32i.d	$a2, 0
	st.w	$a2, $sp, 64
	ld.d	$a4, $a1, 16
	addi.d	$s2, $fp, 16
	addi.d	$a3, $sp, 32
	move	$a1, $s1
	move	$a2, $s2
	jirl	$ra, $a4, 0
	st.d	$zero, $fp, 88
	beqz	$a0, .LBB14_6
# %bb.1:
	fld.s	$fa0, $sp, 64
	vld	$vr1, $sp, 48
	fmul.s	$fa2, $fs0, $fa0
	vst	$vr1, $fp, 0
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 84
	pcalau12i	$a0, %pc_hi20(_ZL13s_fixedObject)
	addi.d	$a0, $a0, %pc_lo12(_ZL13s_fixedObject)
	fld.s	$fa0, $fp, 216
	st.d	$a0, $fp, 88
	vst	$vr2, $sp, 16                   # 16-byte Folded Spill
	fsub.s	$fa0, $fa2, $fa0
	fst.s	$fa0, $fp, 32
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNK11btWheelInfo23getSuspensionRestLengthEv)
	jirl	$ra, $ra, 0
	fld.s	$fa1, $fp, 212
	pcalau12i	$a0, %pc_hi20(.LCPI14_0)
	fld.s	$fs0, $a0, %pc_lo12(.LCPI14_0)
	fneg.s	$fa1, $fa1
	fmadd.s	$fs1, $fa1, $fs0, $fa0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNK11btWheelInfo23getSuspensionRestLengthEv)
	jirl	$ra, $ra, 0
	fld.s	$fa1, $fp, 212
	fld.s	$fa2, $fp, 32
	fmadd.s	$fa0, $fa1, $fs0, $fa0
	fcmp.clt.s	$fcc0, $fa2, $fs1
	fsel	$fa1, $fa2, $fs1, $fcc0
	bcnez	$fcc0, .LBB14_3
# %bb.2:
	fcmp.cule.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB14_4
.LBB14_3:
	fcmp.clt.s	$fcc0, $fa0, $fa1
	fsel	$fa0, $fa1, $fa0, $fcc0
	fst.s	$fa0, $fp, 32
.LBB14_4:
	vld	$vr4, $sp, 32
	fld.s	$fa0, $fp, 0
	fld.s	$fa3, $fp, 52
	fld.s	$fa1, $fp, 4
	fld.s	$fa5, $fp, 56
	fld.s	$fa2, $fp, 8
	fld.s	$fa6, $fp, 60
	pcalau12i	$a0, %pc_hi20(.LCPI14_1)
	fld.s	$fa7, $a0, %pc_lo12(.LCPI14_1)
	fmul.s	$fa5, $fa1, $fa5
	fmadd.s	$fa3, $fa0, $fa3, $fa5
	fmadd.s	$fa3, $fa2, $fa6, $fa3
	fcmp.cult.s	$fcc0, $fa3, $fa7
	vst	$vr4, $s2, 0
	bceqz	$fcc0, .LBB14_7
# %bb.5:
	ld.d	$a0, $s0, 168
	fld.s	$fa4, $fp, 20
	fld.s	$fa5, $a0, 60
	fld.s	$fa6, $fp, 16
	fld.s	$fa7, $a0, 56
	fld.s	$ft0, $a0, 344
	fld.s	$ft1, $a0, 348
	fsub.s	$fa4, $fa4, $fa5
	fsub.s	$fa5, $fa6, $fa7
	fneg.s	$fa6, $fa5
	fmul.s	$fa6, $ft1, $fa6
	fld.s	$fa7, $a0, 336
	fld.s	$ft2, $fp, 24
	fld.s	$ft3, $a0, 64
	fmadd.s	$fa6, $ft0, $fa4, $fa6
	fadd.s	$fa6, $fa7, $fa6
	fld.s	$fa7, $a0, 352
	fsub.s	$ft2, $ft2, $ft3
	fld.s	$ft3, $a0, 328
	fneg.s	$fa4, $fa4
	fmul.s	$fa4, $fa7, $fa4
	fmadd.s	$fa4, $ft1, $ft2, $fa4
	fadd.s	$fa4, $ft3, $fa4
	fld.s	$ft1, $a0, 332
	fneg.s	$ft2, $ft2
	fmul.s	$ft0, $ft0, $ft2
	fmadd.s	$fa5, $fa7, $fa5, $ft0
	fadd.s	$fa5, $ft1, $fa5
	fmul.s	$fa1, $fa1, $fa5
	fmadd.s	$fa0, $fa0, $fa4, $fa1
	fmadd.s	$fa1, $fa2, $fa6, $fa0
	vldi	$vr0, -1040
	fdiv.s	$fa2, $fa0, $fa3
	fmul.s	$fa1, $fa2, $fa1
	fst.s	$fa1, $fp, 276
	b	.LBB14_8
.LBB14_6:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNK11btWheelInfo23getSuspensionRestLengthEv)
	jirl	$ra, $ra, 0
	fst.s	$fa0, $fp, 32
	st.w	$zero, $fp, 276
	ld.wu	$a0, $fp, 52
	ld.w	$a1, $fp, 56
	ld.wu	$a2, $fp, 60
	lu12i.w	$a3, -524288
	lu32i.d	$a3, 0
	xor	$a0, $a0, $a3
	xor	$a1, $a1, $a3
	slli.d	$a1, $a1, 32
	or	$a0, $a1, $a0
	xor	$a1, $a2, $a3
	st.d	$a0, $fp, 0
	st.d	$a1, $fp, 8
	vldi	$vr0, -1040
	vldi	$vr2, -1168
	b	.LBB14_9
.LBB14_7:
	st.w	$zero, $fp, 276
	vldi	$vr2, -1244
.LBB14_8:
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
.LBB14_9:
	fst.s	$fa2, $fp, 272
                                        # kill: def $f0 killed $f0 killed $vr0
	fld.d	$fs1, $sp, 72                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 80                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.Lfunc_end14:
	.size	_ZN16btRaycastVehicle7rayCastER11btWheelInfo, .Lfunc_end14-_ZN16btRaycastVehicle7rayCastER11btWheelInfo
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZN16btRaycastVehicle13updateVehicleEf
.LCPI15_0:
	.word	0x40666666                      # float 3.5999999
.LCPI15_1:
	.word	0x45bb8000                      # float 6000
.LCPI15_2:
	.word	0x3f7d70a4                      # float 0.990000009
	.text
	.globl	_ZN16btRaycastVehicle13updateVehicleEf
	.p2align	5
	.type	_ZN16btRaycastVehicle13updateVehicleEf,@function
_ZN16btRaycastVehicle13updateVehicleEf: # @_ZN16btRaycastVehicle13updateVehicleEf
	.cfi_startproc
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
	fst.d	$fs0, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 56                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 48                   # 8-byte Folded Spill
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
	move	$fp, $a0
	ld.w	$a0, $a0, 196
	fmov.s	$fs0, $fa0
	blez	$a0, .LBB15_4
# %bb.1:                                # %.lr.ph.preheader
	move	$s0, $zero
	.p2align	4, , 16
.LBB15_2:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZN16btRaycastVehicle20updateWheelTransformEib)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 196
	addi.w	$s0, $s0, 1
	blt	$s0, $a0, .LBB15_2
# %bb.3:                                # %._crit_edge.loopexit
	slt	$a0, $zero, $a0
	b	.LBB15_5
.LBB15_4:
	move	$a0, $zero
.LBB15_5:                               # %._crit_edge
	ld.d	$a1, $fp, 168
	fld.s	$fa0, $a1, 332
	fld.s	$fa1, $a1, 328
	fmul.s	$fa0, $fa0, $fa0
	fld.s	$fa2, $a1, 336
	fmadd.s	$fa0, $fa1, $fa1, $fa0
	pcalau12i	$a2, %pc_hi20(.LCPI15_0)
	fld.s	$fa1, $a2, %pc_lo12(.LCPI15_0)
	fmadd.s	$fa0, $fa2, $fa2, $fa0
	ld.w	$a2, $fp, 184
	fsqrt.s	$fa0, $fa0
	fmul.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $fp, 160
	alsl.d	$a2, $a2, $a1, 2
	fld.s	$fa1, $a2, 8
	fld.s	$fa2, $a2, 24
	fld.s	$fa3, $a2, 40
	fld.s	$fa4, $a1, 332
	fld.s	$fa5, $a1, 328
	fld.s	$fa6, $a1, 336
	fmul.s	$fa2, $fa2, $fa4
	fmadd.s	$fa1, $fa1, $fa5, $fa2
	fmadd.s	$fa1, $fa3, $fa6, $fa1
	movgr2fr.w	$fs1, $zero
	fcmp.clt.s	$fcc0, $fa1, $fs1
	bceqz	$fcc0, .LBB15_7
# %bb.6:
	fneg.s	$fa0, $fa0
	fst.s	$fa0, $fp, 160
.LBB15_7:
	beqz	$a0, .LBB15_18
# %bb.8:                                # %.lr.ph109
	move	$s0, $zero
	move	$s1, $zero
	.p2align	4, , 16
.LBB15_9:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 208
	add.d	$a1, $a0, $s0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN16btRaycastVehicle7rayCastER11btWheelInfo)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 196
	addi.d	$s1, $s1, 1
	addi.d	$s0, $s0, 288
	blt	$s1, $a0, .LBB15_9
# %bb.10:                               # %._crit_edge110
	blez	$a0, .LBB15_18
# %bb.11:                               # %.lr.ph.i
	ld.d	$a1, $fp, 168
	fld.s	$fa0, $a1, 360
	move	$s1, $zero
	move	$s2, $zero
	frecip.s	$fs2, $fa0
	ori	$s3, $zero, 228
	ori	$s4, $zero, 224
	b	.LBB15_13
	.p2align	4, , 16
.LBB15_12:                              #   in Loop: Header=BB15_13 Depth=1
	fst.s	$fa0, $s0, 280
	addi.d	$s2, $s2, 1
	addi.d	$s1, $s1, 288
	bge	$s2, $a0, .LBB15_15
.LBB15_13:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $fp, 208
	add.d	$s0, $a1, $s1
	ld.bu	$a1, $s0, 84
	fmov.s	$fa0, $fs1
	beqz	$a1, .LBB15_12
# %bb.14:                               #   in Loop: Header=BB15_13 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNK11btWheelInfo23getSuspensionRestLengthEv)
	jirl	$ra, $ra, 0
	fld.s	$fa1, $s0, 276
	fld.s	$fa2, $s0, 32
	fld.s	$fa3, $s0, 220
	fcmp.clt.s	$fcc0, $fa1, $fs1
	fld.s	$fa4, $s0, 272
	movcf2gr	$a0, $fcc0
	masknez	$a1, $s3, $a0
	maskeqz	$a0, $s4, $a0
	or	$a0, $a0, $a1
	fldx.s	$fa5, $s0, $a0
	fsub.s	$fa0, $fa0, $fa2
	fmul.s	$fa0, $fa3, $fa0
	fmul.s	$fa0, $fa0, $fa4
	fneg.s	$fa2, $fa5
	fmadd.s	$fa0, $fa2, $fa1, $fa0
	ld.w	$a0, $fp, 196
	fmul.s	$fa0, $fs2, $fa0
	fcmp.clt.s	$fcc0, $fa0, $fs1
	fsel	$fa0, $fa0, $fs1, $fcc0
	b	.LBB15_12
.LBB15_15:                              # %_ZN16btRaycastVehicle16updateSuspensionEf.exit
	blez	$a0, .LBB15_18
# %bb.16:                               # %.lr.ph112
	pcalau12i	$a0, %pc_hi20(.LCPI15_1)
	fld.s	$fs1, $a0, %pc_lo12(.LCPI15_1)
	move	$s0, $zero
	move	$s1, $zero
	.p2align	4, , 16
.LBB15_17:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 208
	add.d	$a1, $a0, $s0
	fld.s	$fa0, $a1, 280
	fcmp.clt.s	$fcc0, $fs1, $fa0
	fldx.s	$fa1, $a0, $s0
	fld.s	$fa2, $a1, 4
	fld.s	$fa3, $a1, 8
	fsel	$fa0, $fa0, $fs1, $fcc0
	fmul.s	$fa1, $fa1, $fa0
	fmul.s	$fa2, $fa0, $fa2
	fmul.s	$fa0, $fa0, $fa3
	fmul.s	$fa1, $fs0, $fa1
	fmul.s	$fa2, $fs0, $fa2
	fmul.s	$fa0, $fs0, $fa0
	movfr2gr.s	$a0, $fa1
	movfr2gr.s	$a2, $fa2
	bstrins.d	$a0, $a2, 63, 32
	movfr2gr.s	$a2, $fa0
	st.d	$a0, $sp, 32
	ld.d	$a0, $fp, 168
	bstrpick.d	$a2, $a2, 31, 0
	st.d	$a2, $sp, 40
	fld.s	$fa0, $a1, 16
	fld.s	$fa1, $a0, 56
	fld.s	$fa2, $a1, 20
	fld.s	$fa3, $a0, 60
	fld.s	$fa4, $a1, 24
	fld.s	$fa5, $a0, 64
	fsub.s	$fa0, $fa0, $fa1
	fsub.s	$fa1, $fa2, $fa3
	fsub.s	$fa2, $fa4, $fa5
	movfr2gr.s	$a1, $fa0
	movfr2gr.s	$a2, $fa1
	bstrins.d	$a1, $a2, 63, 32
	movfr2gr.s	$a2, $fa2
	bstrpick.d	$a2, $a2, 31, 0
	st.d	$a1, $sp, 16
	st.d	$a2, $sp, 24
	addi.d	$a1, $sp, 32
	addi.d	$a2, $sp, 16
	pcaddu18i	$ra, %call36(_ZN11btRigidBody12applyImpulseERK9btVector3S2_)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 196
	addi.d	$s1, $s1, 1
	addi.d	$s0, $s0, 288
	blt	$s1, $a0, .LBB15_17
.LBB15_18:                              # %._crit_edge113
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 40
	move	$a0, $fp
	fmov.s	$fa0, $fs0
	jirl	$ra, $a1, 0
	ld.w	$a0, $fp, 196
	blez	$a0, .LBB15_24
# %bb.19:                               # %.lr.ph116
	ld.d	$a1, $fp, 168
	ld.w	$a2, $fp, 184
	ld.d	$a5, $fp, 208
	alsl.d	$a4, $a2, $a1, 2
	addi.d	$a2, $a4, 8
	pcalau12i	$a3, %pc_hi20(.LCPI15_2)
	fld.s	$fa0, $a3, %pc_lo12(.LCPI15_2)
	addi.d	$a3, $a4, 24
	addi.d	$a4, $a4, 40
	addi.d	$a5, $a5, 244
	b	.LBB15_22
	.p2align	4, , 16
.LBB15_20:                              #   in Loop: Header=BB15_22 Depth=1
	fld.s	$fa1, $a5, -200
	fld.s	$fa2, $a1, 64
	fld.s	$fa3, $a5, -204
	fld.s	$fa4, $a1, 60
	fld.s	$fa5, $a1, 348
	fld.s	$fa6, $a1, 352
	fsub.s	$fa1, $fa1, $fa2
	fsub.s	$fa2, $fa3, $fa4
	fneg.s	$fa3, $fa2
	fmul.s	$fa3, $fa6, $fa3
	fld.s	$fa4, $a1, 328
	fmadd.s	$fa3, $fa5, $fa1, $fa3
	fld.s	$fa7, $a5, -208
	fld.s	$ft0, $a1, 56
	fadd.s	$fa3, $fa4, $fa3
	fld.s	$fa4, $a1, 344
	fld.s	$ft1, $a1, 332
	fsub.s	$fa7, $fa7, $ft0
	fneg.s	$fa1, $fa1
	fmul.s	$fa1, $fa4, $fa1
	fmadd.s	$fa1, $fa6, $fa7, $fa1
	fadd.s	$fa1, $ft1, $fa1
	fneg.s	$fa6, $fa7
	fmul.s	$fa5, $fa5, $fa6
	fmadd.s	$fa2, $fa4, $fa2, $fa5
	fld.s	$fa4, $a1, 336
	fld.s	$fa5, $a2, 0
	fld.s	$fa6, $a3, 0
	fld.s	$fa7, $a4, 0
	fld.s	$ft0, $a5, -240
	fld.s	$ft1, $a5, -244
	fld.s	$ft2, $a5, -236
	fadd.s	$fa2, $fa4, $fa2
	fmul.s	$fa4, $fa6, $ft0
	fmadd.s	$fa4, $fa5, $ft1, $fa4
	fmadd.s	$fa4, $fa7, $ft2, $fa4
	fmul.s	$ft1, $ft1, $fa4
	fmul.s	$ft0, $ft0, $fa4
	fmul.s	$fa4, $ft2, $fa4
	fsub.s	$fa5, $fa5, $ft1
	fsub.s	$fa6, $fa6, $ft0
	fsub.s	$fa4, $fa7, $fa4
	fmul.s	$fa1, $fa1, $fa6
	fmadd.s	$fa1, $fa5, $fa3, $fa1
	fld.s	$fa3, $a5, -28
	fld.s	$fa5, $a5, -4
	fmadd.s	$fa1, $fa4, $fa2, $fa1
	fmul.s	$fa1, $fs0, $fa1
	fdiv.s	$fa1, $fa1, $fa3
	fadd.s	$fa2, $fa5, $fa1
.LBB15_21:                              #   in Loop: Header=BB15_22 Depth=1
	fst.s	$fa2, $a5, -4
	fmul.s	$fa1, $fa1, $fa0
	fst.s	$fa1, $a5, 0
	addi.d	$a0, $a0, -1
	addi.d	$a5, $a5, 288
	beqz	$a0, .LBB15_24
.LBB15_22:                              # =>This Inner Loop Header: Depth=1
	ld.bu	$a6, $a5, -160
	bnez	$a6, .LBB15_20
# %bb.23:                               #   in Loop: Header=BB15_22 Depth=1
	fld.s	$fa1, $a5, 0
	fld.s	$fa2, $a5, -4
	fadd.s	$fa2, $fa1, $fa2
	b	.LBB15_21
.LBB15_24:                              # %._crit_edge117
	fld.d	$fs2, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 64                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.Lfunc_end15:
	.size	_ZN16btRaycastVehicle13updateVehicleEf, .Lfunc_end15-_ZN16btRaycastVehicle13updateVehicleEf
	.cfi_endproc
                                        # -- End function
	.globl	_ZN16btRaycastVehicle16updateSuspensionEf # -- Begin function _ZN16btRaycastVehicle16updateSuspensionEf
	.p2align	5
	.type	_ZN16btRaycastVehicle16updateSuspensionEf,@function
_ZN16btRaycastVehicle16updateSuspensionEf: # @_ZN16btRaycastVehicle16updateSuspensionEf
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
	fst.d	$fs0, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 8                    # 8-byte Folded Spill
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
	ld.w	$a0, $a0, 196
	blez	$a0, .LBB16_5
# %bb.1:                                # %.lr.ph
	ld.d	$a1, $fp, 168
	fld.s	$fa0, $a1, 360
	move	$s1, $zero
	move	$s2, $zero
	frecip.s	$fs0, $fa0
	movgr2fr.w	$fs1, $zero
	ori	$s3, $zero, 228
	ori	$s4, $zero, 224
	b	.LBB16_3
	.p2align	4, , 16
.LBB16_2:                               #   in Loop: Header=BB16_3 Depth=1
	fst.s	$fa0, $s0, 280
	addi.d	$s2, $s2, 1
	addi.d	$s1, $s1, 288
	bge	$s2, $a0, .LBB16_5
.LBB16_3:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $fp, 208
	add.d	$s0, $a1, $s1
	ld.bu	$a1, $s0, 84
	fmov.s	$fa0, $fs1
	beqz	$a1, .LBB16_2
# %bb.4:                                #   in Loop: Header=BB16_3 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNK11btWheelInfo23getSuspensionRestLengthEv)
	jirl	$ra, $ra, 0
	fld.s	$fa1, $s0, 276
	fld.s	$fa2, $s0, 32
	fld.s	$fa3, $s0, 220
	fcmp.clt.s	$fcc0, $fa1, $fs1
	fld.s	$fa4, $s0, 272
	movcf2gr	$a0, $fcc0
	masknez	$a1, $s3, $a0
	maskeqz	$a0, $s4, $a0
	or	$a0, $a0, $a1
	fldx.s	$fa5, $s0, $a0
	fsub.s	$fa0, $fa0, $fa2
	fmul.s	$fa0, $fa3, $fa0
	fmul.s	$fa0, $fa0, $fa4
	fneg.s	$fa2, $fa5
	fmadd.s	$fa0, $fa2, $fa1, $fa0
	ld.w	$a0, $fp, 196
	fmul.s	$fa0, $fs0, $fa0
	fcmp.clt.s	$fcc0, $fa0, $fs1
	fsel	$fa0, $fa0, $fs1, $fcc0
	b	.LBB16_2
.LBB16_5:                               # %._crit_edge
	fld.d	$fs1, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs0, $sp, 16                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end16:
	.size	_ZN16btRaycastVehicle16updateSuspensionEf, .Lfunc_end16-_ZN16btRaycastVehicle16updateSuspensionEf
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN11btRigidBody12applyImpulseERK9btVector3S2_,"axG",@progbits,_ZN11btRigidBody12applyImpulseERK9btVector3S2_,comdat
	.weak	_ZN11btRigidBody12applyImpulseERK9btVector3S2_ # -- Begin function _ZN11btRigidBody12applyImpulseERK9btVector3S2_
	.p2align	5
	.type	_ZN11btRigidBody12applyImpulseERK9btVector3S2_,@function
_ZN11btRigidBody12applyImpulseERK9btVector3S2_: # @_ZN11btRigidBody12applyImpulseERK9btVector3S2_
	.cfi_startproc
# %bb.0:
	fld.s	$fa0, $a0, 360
	movgr2fr.w	$fa1, $zero
	fcmp.ceq.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB17_2
# %bb.1:
	fld.s	$fa1, $a1, 0
	fld.s	$fa2, $a0, 380
	fld.s	$fa3, $a1, 4
	fld.s	$fa4, $a0, 384
	fld.s	$fa5, $a1, 8
	fld.s	$fa6, $a0, 388
	fmul.s	$fa1, $fa1, $fa2
	fmul.s	$fa3, $fa3, $fa4
	fmul.s	$fa5, $fa5, $fa6
	fmul.s	$fa1, $fa0, $fa1
	fld.s	$fa7, $a0, 328
	fmul.s	$fa3, $fa0, $fa3
	fmul.s	$fa0, $fa0, $fa5
	fld.s	$fa5, $a0, 332
	fadd.s	$fa1, $fa1, $fa7
	fld.s	$fa7, $a0, 336
	fst.s	$fa1, $a0, 328
	fadd.s	$fa1, $fa3, $fa5
	fst.s	$fa1, $a0, 332
	fadd.s	$fa0, $fa0, $fa7
	fst.s	$fa0, $a0, 336
	fld.s	$fa0, $a1, 0
	fld.s	$fa1, $a1, 4
	fld.s	$fa3, $a1, 8
	fmul.s	$fa0, $fa2, $fa0
	fmul.s	$fa1, $fa1, $fa4
	fmul.s	$fa2, $fa3, $fa6
	fld.s	$fa3, $a2, 8
	fld.s	$fa4, $a2, 4
	fneg.s	$fa5, $fa1
	fld.s	$fa6, $a2, 0
	fmul.s	$fa5, $fa3, $fa5
	fmadd.s	$fa5, $fa4, $fa2, $fa5
	fneg.s	$fa2, $fa2
	fmul.s	$fa2, $fa6, $fa2
	fmadd.s	$fa2, $fa3, $fa0, $fa2
	fneg.s	$fa0, $fa0
	fld.s	$fa3, $a0, 284
	fmul.s	$fa0, $fa4, $fa0
	fmadd.s	$fa0, $fa6, $fa1, $fa0
	fld.s	$fa1, $a0, 280
	fmul.s	$fa3, $fa3, $fa2
	fld.s	$fa4, $a0, 288
	fld.s	$fa6, $a0, 300
	fmadd.s	$fa1, $fa1, $fa5, $fa3
	fld.s	$fa3, $a0, 296
	fmadd.s	$fa1, $fa4, $fa0, $fa1
	fmul.s	$fa4, $fa2, $fa6
	fld.s	$fa6, $a0, 304
	fmadd.s	$fa3, $fa3, $fa5, $fa4
	fld.s	$fa4, $a0, 316
	fld.s	$fa7, $a0, 312
	fmadd.s	$fa3, $fa6, $fa0, $fa3
	fld.s	$fa6, $a0, 320
	fmul.s	$fa2, $fa2, $fa4
	fmadd.s	$fa2, $fa7, $fa5, $fa2
	fld.s	$fa4, $a0, 364
	fmadd.s	$fa0, $fa6, $fa0, $fa2
	fld.s	$fa2, $a0, 368
	fld.s	$fa5, $a0, 372
	fmul.s	$fa1, $fa1, $fa4
	fld.s	$fa4, $a0, 344
	fmul.s	$fa2, $fa3, $fa2
	fmul.s	$fa0, $fa0, $fa5
	fld.s	$fa3, $a0, 348
	fadd.s	$fa1, $fa1, $fa4
	fld.s	$fa4, $a0, 352
	fst.s	$fa1, $a0, 344
	fadd.s	$fa1, $fa2, $fa3
	fst.s	$fa1, $a0, 348
	fadd.s	$fa0, $fa0, $fa4
	fst.s	$fa0, $a0, 352
.LBB17_2:
	ret
.Lfunc_end17:
	.size	_ZN11btRigidBody12applyImpulseERK9btVector3S2_, .Lfunc_end17-_ZN11btRigidBody12applyImpulseERK9btVector3S2_
	.cfi_endproc
                                        # -- End function
	.text
	.globl	_ZN16btRaycastVehicle16setSteeringValueEfi # -- Begin function _ZN16btRaycastVehicle16setSteeringValueEfi
	.p2align	5
	.type	_ZN16btRaycastVehicle16setSteeringValueEfi,@function
_ZN16btRaycastVehicle16setSteeringValueEfi: # @_ZN16btRaycastVehicle16setSteeringValueEfi
# %bb.0:
	ld.d	$a0, $a0, 208
	alsl.d	$a1, $a1, $a1, 3
	slli.d	$a1, $a1, 5
	add.d	$a0, $a0, $a1
	fst.s	$fa0, $a0, 236
	ret
.Lfunc_end18:
	.size	_ZN16btRaycastVehicle16setSteeringValueEfi, .Lfunc_end18-_ZN16btRaycastVehicle16setSteeringValueEfi
                                        # -- End function
	.globl	_ZN16btRaycastVehicle12getWheelInfoEi # -- Begin function _ZN16btRaycastVehicle12getWheelInfoEi
	.p2align	5
	.type	_ZN16btRaycastVehicle12getWheelInfoEi,@function
_ZN16btRaycastVehicle12getWheelInfoEi:  # @_ZN16btRaycastVehicle12getWheelInfoEi
# %bb.0:
	ld.d	$a0, $a0, 208
	alsl.d	$a1, $a1, $a1, 3
	slli.d	$a1, $a1, 5
	add.d	$a0, $a0, $a1
	ret
.Lfunc_end19:
	.size	_ZN16btRaycastVehicle12getWheelInfoEi, .Lfunc_end19-_ZN16btRaycastVehicle12getWheelInfoEi
                                        # -- End function
	.globl	_ZNK16btRaycastVehicle16getSteeringValueEi # -- Begin function _ZNK16btRaycastVehicle16getSteeringValueEi
	.p2align	5
	.type	_ZNK16btRaycastVehicle16getSteeringValueEi,@function
_ZNK16btRaycastVehicle16getSteeringValueEi: # @_ZNK16btRaycastVehicle16getSteeringValueEi
# %bb.0:
	ld.d	$a0, $a0, 208
	alsl.d	$a1, $a1, $a1, 3
	slli.d	$a1, $a1, 5
	add.d	$a0, $a0, $a1
	fld.s	$fa0, $a0, 236
	ret
.Lfunc_end20:
	.size	_ZNK16btRaycastVehicle16getSteeringValueEi, .Lfunc_end20-_ZNK16btRaycastVehicle16getSteeringValueEi
                                        # -- End function
	.globl	_ZNK16btRaycastVehicle12getWheelInfoEi # -- Begin function _ZNK16btRaycastVehicle12getWheelInfoEi
	.p2align	5
	.type	_ZNK16btRaycastVehicle12getWheelInfoEi,@function
_ZNK16btRaycastVehicle12getWheelInfoEi: # @_ZNK16btRaycastVehicle12getWheelInfoEi
# %bb.0:
	ld.d	$a0, $a0, 208
	alsl.d	$a1, $a1, $a1, 3
	slli.d	$a1, $a1, 5
	add.d	$a0, $a0, $a1
	ret
.Lfunc_end21:
	.size	_ZNK16btRaycastVehicle12getWheelInfoEi, .Lfunc_end21-_ZNK16btRaycastVehicle12getWheelInfoEi
                                        # -- End function
	.globl	_ZN16btRaycastVehicle16applyEngineForceEfi # -- Begin function _ZN16btRaycastVehicle16applyEngineForceEfi
	.p2align	5
	.type	_ZN16btRaycastVehicle16applyEngineForceEfi,@function
_ZN16btRaycastVehicle16applyEngineForceEfi: # @_ZN16btRaycastVehicle16applyEngineForceEfi
# %bb.0:
	ld.d	$a0, $a0, 208
	alsl.d	$a1, $a1, $a1, 3
	slli.d	$a1, $a1, 5
	add.d	$a0, $a0, $a1
	fst.s	$fa0, $a0, 252
	ret
.Lfunc_end22:
	.size	_ZN16btRaycastVehicle16applyEngineForceEfi, .Lfunc_end22-_ZN16btRaycastVehicle16applyEngineForceEfi
                                        # -- End function
	.globl	_ZN16btRaycastVehicle8setBrakeEfi # -- Begin function _ZN16btRaycastVehicle8setBrakeEfi
	.p2align	5
	.type	_ZN16btRaycastVehicle8setBrakeEfi,@function
_ZN16btRaycastVehicle8setBrakeEfi:      # @_ZN16btRaycastVehicle8setBrakeEfi
# %bb.0:
	ld.d	$a0, $a0, 208
	alsl.d	$a1, $a1, $a1, 3
	slli.d	$a1, $a1, 5
	add.d	$a0, $a0, $a1
	fst.s	$fa0, $a0, 256
	ret
.Lfunc_end23:
	.size	_ZN16btRaycastVehicle8setBrakeEfi, .Lfunc_end23-_ZN16btRaycastVehicle8setBrakeEfi
                                        # -- End function
	.globl	_Z19calcRollingFrictionR19btWheelContactPoint # -- Begin function _Z19calcRollingFrictionR19btWheelContactPoint
	.p2align	5
	.type	_Z19calcRollingFrictionR19btWheelContactPoint,@function
_Z19calcRollingFrictionR19btWheelContactPoint: # @_Z19calcRollingFrictionR19btWheelContactPoint
# %bb.0:                                # %_Z8btSetMinIfEvRT_RKS0_.exit
	ld.d	$a1, $a0, 0
	fld.s	$fa0, $a0, 16
	fld.s	$fa1, $a1, 56
	fld.s	$fa2, $a0, 20
	fld.s	$fa3, $a1, 60
	fsub.s	$fa1, $fa0, $fa1
	ld.d	$a2, $a0, 8
	fsub.s	$fa3, $fa2, $fa3
	fld.s	$fa4, $a0, 24
	fld.s	$fa5, $a1, 64
	fld.s	$fa6, $a2, 56
	fld.s	$fa7, $a2, 60
	fld.s	$ft0, $a2, 64
	fsub.s	$fa5, $fa4, $fa5
	fsub.s	$fa0, $fa0, $fa6
	fsub.s	$fa2, $fa2, $fa7
	fsub.s	$fa4, $fa4, $ft0
	fld.s	$fa6, $a1, 352
	fld.s	$fa7, $a1, 348
	fneg.s	$ft0, $fa3
	fld.s	$ft1, $a1, 344
	fmul.s	$ft0, $fa6, $ft0
	fmadd.s	$ft0, $fa7, $fa5, $ft0
	fneg.s	$fa5, $fa5
	fmul.s	$fa5, $ft1, $fa5
	fmadd.s	$fa5, $fa6, $fa1, $fa5
	fneg.s	$fa1, $fa1
	fmul.s	$fa1, $fa7, $fa1
	fld.s	$fa6, $a1, 328
	fld.s	$fa7, $a1, 332
	fld.s	$ft2, $a0, 52
	fmadd.s	$fa1, $ft1, $fa3, $fa1
	fadd.s	$fa3, $ft0, $fa6
	fadd.s	$fa5, $fa7, $fa5
	fld.s	$fa6, $a2, 352
	fld.s	$fa7, $a2, 348
	fneg.s	$ft0, $fa2
	fld.s	$ft1, $a2, 344
	fmul.s	$ft0, $fa6, $ft0
	fmadd.s	$ft0, $fa7, $fa4, $ft0
	fneg.s	$fa4, $fa4
	fmul.s	$fa4, $ft1, $fa4
	fmadd.s	$fa4, $fa6, $fa0, $fa4
	fld.s	$fa6, $a1, 336
	fneg.s	$fa0, $fa0
	fmul.s	$fa0, $fa7, $fa0
	fmadd.s	$fa0, $ft1, $fa2, $fa0
	fld.s	$fa2, $a2, 328
	fld.s	$fa7, $a2, 332
	fld.s	$ft1, $a2, 336
	fadd.s	$fa1, $fa1, $fa6
	fadd.s	$fa2, $ft0, $fa2
	fadd.s	$fa4, $fa7, $fa4
	fadd.s	$fa0, $fa0, $ft1
	fsub.s	$fa2, $fa3, $fa2
	fsub.s	$fa3, $fa5, $fa4
	fsub.s	$fa0, $fa1, $fa0
	fld.s	$fa1, $a0, 36
	fld.s	$fa4, $a0, 32
	fld.s	$fa5, $a0, 40
	fld.s	$fa6, $a0, 48
	fmul.s	$fa1, $fa3, $fa1
	fmadd.s	$fa1, $fa4, $fa2, $fa1
	fnmadd.s	$fa0, $fa5, $fa0, $fa1
	fmul.s	$fa0, $fa6, $fa0
	fcmp.clt.s	$fcc0, $ft2, $fa0
	fsel	$fa0, $fa0, $ft2, $fcc0
	fneg.s	$fa1, $ft2
	fcmp.clt.s	$fcc0, $fa0, $fa1
	fsel	$fa0, $fa0, $fa1, $fcc0
	ret
.Lfunc_end24:
	.size	_Z19calcRollingFrictionR19btWheelContactPoint, .Lfunc_end24-_Z19calcRollingFrictionR19btWheelContactPoint
                                        # -- End function
	.globl	_ZN16btRaycastVehicle14updateFrictionEf # -- Begin function _ZN16btRaycastVehicle14updateFrictionEf
	.p2align	5
	.type	_ZN16btRaycastVehicle14updateFrictionEf,@function
_ZN16btRaycastVehicle14updateFrictionEf: # @_ZN16btRaycastVehicle14updateFrictionEf
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -208
	.cfi_def_cfa_offset 208
	st.d	$ra, $sp, 200                   # 8-byte Folded Spill
	st.d	$fp, $sp, 192                   # 8-byte Folded Spill
	st.d	$s0, $sp, 184                   # 8-byte Folded Spill
	st.d	$s1, $sp, 176                   # 8-byte Folded Spill
	st.d	$s2, $sp, 168                   # 8-byte Folded Spill
	st.d	$s3, $sp, 160                   # 8-byte Folded Spill
	st.d	$s4, $sp, 152                   # 8-byte Folded Spill
	st.d	$s5, $sp, 144                   # 8-byte Folded Spill
	st.d	$s6, $sp, 136                   # 8-byte Folded Spill
	st.d	$s7, $sp, 128                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 120                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 112                  # 8-byte Folded Spill
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
	ld.w	$s2, $a0, 196
	beqz	$s2, .LBB25_88
# %bb.1:
	move	$fp, $a0
	fmov.s	$fs0, $fa0
	ld.w	$a0, $a0, 12
	bge	$a0, $s2, .LBB25_10
# %bb.2:
	ld.w	$a0, $fp, 16
	bge	$a0, $s2, .LBB25_10
# %bb.3:                                # %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i
	slli.d	$a0, $s2, 4
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 12
	move	$s0, $a0
	blez	$a1, .LBB25_6
# %bb.4:                                # %.lr.ph.i.i.i
	move	$a0, $zero
	slli.d	$a1, $a1, 4
	.p2align	4, , 16
.LBB25_5:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $fp, 24
	vldx	$vr0, $a2, $a0
	vstx	$vr0, $s0, $a0
	addi.d	$a0, $a0, 16
	bne	$a1, $a0, .LBB25_5
.LBB25_6:                               # %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i
	ld.d	$a0, $fp, 24
	beqz	$a0, .LBB25_9
# %bb.7:                                # %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i
	ld.b	$a1, $fp, 32
	andi	$a1, $a1, 1
	beqz	$a1, .LBB25_9
# %bb.8:
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.LBB25_9:                               # %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 32
	st.d	$s0, $fp, 24
	st.w	$s2, $fp, 16
.LBB25_10:                              # %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit
	ld.w	$a0, $fp, 44
	st.w	$s2, $fp, 12
	bge	$a0, $s2, .LBB25_19
# %bb.11:
	ld.w	$a0, $fp, 48
	bge	$a0, $s2, .LBB25_19
# %bb.12:                               # %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i155
	slli.d	$a0, $s2, 4
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 44
	move	$s0, $a0
	blez	$a1, .LBB25_15
# %bb.13:                               # %.lr.ph.i.i.i161
	move	$a0, $zero
	slli.d	$a1, $a1, 4
	.p2align	4, , 16
.LBB25_14:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $fp, 56
	vldx	$vr0, $a2, $a0
	vstx	$vr0, $s0, $a0
	addi.d	$a0, $a0, 16
	bne	$a1, $a0, .LBB25_14
.LBB25_15:                              # %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i157
	ld.d	$a0, $fp, 56
	beqz	$a0, .LBB25_18
# %bb.16:                               # %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i157
	ld.b	$a1, $fp, 64
	andi	$a1, $a1, 1
	beqz	$a1, .LBB25_18
# %bb.17:
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.LBB25_18:                              # %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i160
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 64
	st.d	$s0, $fp, 56
	st.w	$s2, $fp, 48
.LBB25_19:                              # %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit166
	ld.w	$s3, $fp, 76
	st.w	$s2, $fp, 44
	blt	$s3, $s2, .LBB25_22
# %bb.20:                               # %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit
	ld.w	$s3, $fp, 108
	st.w	$s2, $fp, 76
	blt	$s3, $s2, .LBB25_38
.LBB25_21:                              # %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit204
	ld.w	$a0, $fp, 196
	st.w	$s2, $fp, 108
	bgtz	$a0, .LBB25_54
	b	.LBB25_88
.LBB25_22:
	ld.w	$a0, $fp, 80
	bge	$a0, $s2, .LBB25_32
# %bb.23:                               # %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i
	slli.d	$s0, $s2, 2
	ori	$a1, $zero, 16
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
	ld.w	$a2, $fp, 76
	ld.d	$a1, $fp, 88
	move	$s1, $a0
	blez	$a2, .LBB25_33
# %bb.24:                               # %.lr.ph.i.i.i176
	ori	$a3, $zero, 8
	move	$a0, $zero
	bltu	$a2, $a3, .LBB25_29
# %bb.25:                               # %.lr.ph.i.i.i176
	sub.d	$a3, $s1, $a1
	ori	$a4, $zero, 32
	bltu	$a3, $a4, .LBB25_29
# %bb.26:                               # %vector.ph
	bstrpick.d	$a0, $a2, 30, 3
	slli.d	$a0, $a0, 3
	addi.d	$a3, $a1, 16
	addi.d	$a4, $s1, 16
	move	$a5, $a0
	.p2align	4, , 16
.LBB25_27:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a3, -16
	vld	$vr1, $a3, 0
	vst	$vr0, $a4, -16
	vst	$vr1, $a4, 0
	addi.d	$a5, $a5, -8
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB25_27
# %bb.28:                               # %middle.block
	beq	$a0, $a2, .LBB25_31
.LBB25_29:                              # %scalar.ph.preheader
	sub.d	$a2, $a2, $a0
	alsl.d	$a3, $a0, $a1, 2
	alsl.d	$a0, $a0, $s1, 2
	.p2align	4, , 16
.LBB25_30:                              # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a3, 0
	fst.s	$fa0, $a0, 0
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 4
	addi.d	$a0, $a0, 4
	bnez	$a2, .LBB25_30
.LBB25_31:                              # %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i
	ld.bu	$a0, $fp, 96
	bnez	$a0, .LBB25_35
	b	.LBB25_36
.LBB25_32:                              # %..lr.ph.i167_crit_edge
	ld.d	$s1, $fp, 88
	slli.d	$s0, $s2, 2
	b	.LBB25_37
.LBB25_33:                              # %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i
	beqz	$a1, .LBB25_36
# %bb.34:                               # %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i
	ld.b	$a0, $fp, 96
	andi	$a0, $a0, 1
	beqz	$a0, .LBB25_36
.LBB25_35:
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.LBB25_36:                              # %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 96
	st.d	$s1, $fp, 88
	st.w	$s2, $fp, 80
.LBB25_37:                              # %.lr.ph.i167
	slli.d	$a1, $s3, 2
	alsl.d	$a0, $s3, $s1, 2
	sub.d	$a2, $s0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.w	$s3, $fp, 108
	st.w	$s2, $fp, 76
	bge	$s3, $s2, .LBB25_21
.LBB25_38:
	ld.w	$a0, $fp, 112
	bge	$a0, $s2, .LBB25_48
# %bb.39:                               # %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i189
	slli.d	$s0, $s2, 2
	ori	$a1, $zero, 16
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
	ld.w	$a2, $fp, 108
	ld.d	$a1, $fp, 120
	move	$s1, $a0
	blez	$a2, .LBB25_49
# %bb.40:                               # %.lr.ph.i.i.i195
	ori	$a3, $zero, 8
	move	$a0, $zero
	bltu	$a2, $a3, .LBB25_45
# %bb.41:                               # %.lr.ph.i.i.i195
	sub.d	$a3, $s1, $a1
	ori	$a4, $zero, 32
	bltu	$a3, $a4, .LBB25_45
# %bb.42:                               # %vector.ph309
	bstrpick.d	$a0, $a2, 30, 3
	slli.d	$a0, $a0, 3
	addi.d	$a3, $a1, 16
	addi.d	$a4, $s1, 16
	move	$a5, $a0
	.p2align	4, , 16
.LBB25_43:                              # %vector.body312
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a3, -16
	vld	$vr1, $a3, 0
	vst	$vr0, $a4, -16
	vst	$vr1, $a4, 0
	addi.d	$a5, $a5, -8
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB25_43
# %bb.44:                               # %middle.block317
	beq	$a0, $a2, .LBB25_47
.LBB25_45:                              # %scalar.ph307.preheader
	sub.d	$a2, $a2, $a0
	alsl.d	$a3, $a0, $a1, 2
	alsl.d	$a0, $a0, $s1, 2
	.p2align	4, , 16
.LBB25_46:                              # %scalar.ph307
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a3, 0
	fst.s	$fa0, $a0, 0
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 4
	addi.d	$a0, $a0, 4
	bnez	$a2, .LBB25_46
.LBB25_47:                              # %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i200
	ld.bu	$a0, $fp, 128
	bnez	$a0, .LBB25_51
	b	.LBB25_52
.LBB25_48:                              # %..lr.ph.i181_crit_edge
	ld.d	$s1, $fp, 120
	slli.d	$s0, $s2, 2
	b	.LBB25_53
.LBB25_49:                              # %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i191
	beqz	$a1, .LBB25_52
# %bb.50:                               # %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i191
	ld.b	$a0, $fp, 128
	andi	$a0, $a0, 1
	beqz	$a0, .LBB25_52
.LBB25_51:
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.LBB25_52:                              # %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i194
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 128
	st.d	$s1, $fp, 120
	st.w	$s2, $fp, 112
.LBB25_53:                              # %.lr.ph.i181
	slli.d	$a1, $s3, 2
	alsl.d	$a0, $s3, $s1, 2
	sub.d	$a2, $s0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 196
	st.w	$s2, $fp, 108
	blez	$a0, .LBB25_88
.LBB25_54:                              # %.lr.ph
	ld.d	$a1, $fp, 120
	ld.d	$a2, $fp, 88
	ori	$a4, $zero, 8
	move	$a3, $zero
	bltu	$a0, $a4, .LBB25_59
# %bb.55:                               # %.lr.ph
	sub.d	$a4, $a2, $a1
	ori	$a5, $zero, 32
	bltu	$a4, $a5, .LBB25_59
# %bb.56:                               # %vector.ph324
	bstrpick.d	$a3, $a0, 30, 3
	slli.d	$a3, $a3, 3
	addi.d	$a4, $a2, 16
	addi.d	$a5, $a1, 16
	vrepli.b	$vr0, 0
	move	$a6, $a3
	.p2align	4, , 16
.LBB25_57:                              # %vector.body327
                                        # =>This Inner Loop Header: Depth=1
	vst	$vr0, $a5, -16
	vst	$vr0, $a5, 0
	vst	$vr0, $a4, -16
	vst	$vr0, $a4, 0
	addi.d	$a6, $a6, -8
	addi.d	$a4, $a4, 32
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB25_57
# %bb.58:                               # %middle.block330
	beq	$a3, $a0, .LBB25_61
.LBB25_59:                              # %scalar.ph322.preheader
	alsl.d	$a2, $a3, $a2, 2
	alsl.d	$a1, $a3, $a1, 2
	sub.d	$a3, $a0, $a3
	.p2align	4, , 16
.LBB25_60:                              # %scalar.ph322
                                        # =>This Inner Loop Header: Depth=1
	st.w	$zero, $a1, 0
	st.w	$zero, $a2, 0
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, -1
	addi.d	$a1, $a1, 4
	bnez	$a3, .LBB25_60
.LBB25_61:                              # %.lr.ph256
	move	$s0, $zero
	move	$s1, $zero
	move	$s2, $zero
	move	$s3, $zero
	addi.d	$s4, $sp, 72
	addi.d	$s5, $sp, 88
	addi.d	$s6, $sp, 56
	movgr2fr.w	$fs1, $zero
	pcalau12i	$s7, %pc_hi20(sideFrictionStiffness2)
	b	.LBB25_63
	.p2align	4, , 16
.LBB25_62:                              #   in Loop: Header=BB25_63 Depth=1
	addi.d	$s3, $s3, 1
	addi.d	$s2, $s2, 4
	addi.d	$s1, $s1, 16
	addi.d	$s0, $s0, 288
	bge	$s3, $a0, .LBB25_65
.LBB25_63:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $fp, 208
	add.d	$a1, $a3, $s0
	ld.d	$a2, $a1, 88
	beqz	$a2, .LBB25_62
# %bb.64:                               #   in Loop: Header=BB25_63 Depth=1
	vld	$vr0, $a1, 96
	vst	$vr0, $sp, 56
	vld	$vr0, $a1, 112
	vst	$vr0, $s4, 0
	vld	$vr0, $a1, 128
	ld.w	$a0, $fp, 176
	vst	$vr0, $s5, 0
	slli.d	$a0, $a0, 2
	ld.d	$a4, $fp, 56
	fldx.s	$fa0, $a0, $s6
	fldx.s	$fa1, $s4, $a0
	fldx.s	$fa2, $s5, $a0
	add.d	$a0, $a4, $s1
	fstx.s	$fa0, $a4, $s1
	fst.s	$fa1, $a0, 4
	fst.s	$fa2, $a0, 8
	st.w	$zero, $a0, 12
	ld.d	$a0, $fp, 56
	add.d	$a4, $a0, $s1
	fldx.s	$fa0, $a0, $s1
	fldx.s	$fa1, $a3, $s0
	fld.s	$fa2, $a4, 4
	fld.s	$fa3, $a1, 4
	fld.s	$fa4, $a4, 8
	fld.s	$fa5, $a1, 8
	fmul.s	$fa6, $fa2, $fa3
	fmadd.s	$fa6, $fa0, $fa1, $fa6
	fmadd.s	$fa6, $fa4, $fa5, $fa6
	fmul.s	$fa1, $fa1, $fa6
	fmul.s	$fa3, $fa3, $fa6
	fmul.s	$fa5, $fa5, $fa6
	fsub.s	$fa0, $fa0, $fa1
	fsub.s	$fa1, $fa2, $fa3
	fsub.s	$fa2, $fa4, $fa5
	fmul.s	$fa3, $fa1, $fa1
	fmadd.s	$fa3, $fa0, $fa0, $fa3
	fmadd.s	$fa3, $fa2, $fa2, $fa3
	frsqrt.s	$fa3, $fa3
	fmul.s	$fa0, $fa0, $fa3
	fstx.s	$fa0, $a0, $s1
	fmul.s	$fa1, $fa1, $fa3
	fst.s	$fa1, $a4, 4
	fmul.s	$fa2, $fa2, $fa3
	fst.s	$fa2, $a4, 8
	fld.s	$fa3, $a1, 8
	fld.s	$fa4, $a1, 4
	fneg.s	$fa5, $fa1
	fldx.s	$fa6, $a3, $s0
	fmul.s	$fa5, $fa3, $fa5
	fmadd.s	$fa5, $fa4, $fa2, $fa5
	fneg.s	$fa2, $fa2
	fmul.s	$fa2, $fa6, $fa2
	fmadd.s	$fa2, $fa3, $fa0, $fa2
	fneg.s	$fa0, $fa0
	fmul.s	$fa0, $fa4, $fa0
	fmadd.s	$fa0, $fa6, $fa1, $fa0
	movfr2gr.s	$a0, $fa5
	movfr2gr.s	$a3, $fa2
	ld.d	$a4, $fp, 24
	bstrins.d	$a0, $a3, 63, 32
	movfr2gr.s	$a3, $fa0
	bstrpick.d	$a3, $a3, 31, 0
	add.d	$a5, $a4, $s1
	stx.d	$a0, $a4, $s1
	st.d	$a3, $a5, 8
	ld.d	$a0, $fp, 24
	add.d	$a3, $a0, $s1
	fld.s	$fa0, $a3, 4
	fldx.s	$fa1, $a0, $s1
	fld.s	$fa2, $a3, 8
	fmul.s	$fa3, $fa0, $fa0
	fmadd.s	$fa3, $fa1, $fa1, $fa3
	fmadd.s	$fa3, $fa2, $fa2, $fa3
	frsqrt.s	$fa3, $fa3
	fmul.s	$fa1, $fa1, $fa3
	fstx.s	$fa1, $a0, $s1
	fmul.s	$fa0, $fa0, $fa3
	fst.s	$fa0, $a3, 4
	fmul.s	$fa0, $fa2, $fa3
	fst.s	$fa0, $a3, 8
	ld.d	$a3, $fp, 56
	ld.d	$a5, $fp, 120
	ld.d	$a0, $fp, 168
	addi.d	$a1, $a1, 16
	add.d	$a4, $a3, $s1
	add.d	$a5, $a5, $s2
	move	$a3, $a1
	fmov.s	$fa0, $fs1
	fmov.s	$fa1, $fs0
	pcaddu18i	$ra, %call36(_Z22resolveSingleBilateralR11btRigidBodyRK9btVector3S0_S3_fS3_Rff)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 120
	fld.s	$fa0, $s7, %pc_lo12(sideFrictionStiffness2)
	fldx.s	$fa1, $a0, $s2
	fmul.s	$fa0, $fa0, $fa1
	fstx.s	$fa0, $a0, $s2
	ld.w	$a0, $fp, 196
	b	.LBB25_62
.LBB25_65:                              # %.preheader252
	blez	$a0, .LBB25_88
# %bb.66:                               # %.lr.ph259
	ld.d	$a0, $fp, 208
	move	$s0, $zero
	move	$s1, $zero
	move	$s2, $zero
	move	$s3, $zero
	move	$s5, $zero
	lu12i.w	$s4, 260096
	vldi	$vr4, -1184
	b	.LBB25_69
	.p2align	4, , 16
.LBB25_67:                              # %.critedge
                                        #   in Loop: Header=BB25_69 Depth=1
	ld.d	$a1, $fp, 88
	stx.w	$zero, $a1, $s1
	st.w	$s4, $s6, 284
.LBB25_68:                              #   in Loop: Header=BB25_69 Depth=1
	ld.w	$a1, $fp, 196
	addi.d	$s3, $s3, 1
	addi.d	$s2, $s2, 16
	addi.d	$s1, $s1, 4
	addi.d	$s0, $s0, 288
	bge	$s3, $a1, .LBB25_75
.LBB25_69:                              # =>This Inner Loop Header: Depth=1
	add.d	$s6, $a0, $s0
	ld.d	$a2, $s6, 88
	beqz	$a2, .LBB25_67
# %bb.70:                               #   in Loop: Header=BB25_69 Depth=1
	fld.s	$fa0, $s6, 252
	fcmp.ceq.s	$fcc0, $fa0, $fs1
	bcnez	$fcc0, .LBB25_72
# %bb.71:                               #   in Loop: Header=BB25_69 Depth=1
	fmul.s	$fa0, $fs0, $fa0
	b	.LBB25_73
	.p2align	4, , 16
.LBB25_72:                              #   in Loop: Header=BB25_69 Depth=1
	fld.s	$fa0, $s6, 256
	fcmp.ceq.s	$fcc0, $fa0, $fs1
	ld.d	$a0, $fp, 24
	ld.d	$a1, $fp, 168
	fsel	$fa0, $fa0, $fs1, $fcc0
	addi.d	$a3, $s6, 16
	add.d	$a4, $a0, $s2
	addi.d	$a0, $sp, 56
	pcaddu18i	$ra, %call36(_ZN19btWheelContactPointC2EP11btRigidBodyS1_RK9btVector3S4_f)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 56
	fld.s	$fa0, $sp, 72
	fld.s	$fa1, $a0, 56
	fld.s	$fa2, $sp, 76
	fld.s	$fa3, $a0, 60
	fsub.s	$fa1, $fa0, $fa1
	ld.d	$a1, $sp, 64
	fsub.s	$fa3, $fa2, $fa3
	fld.s	$fa4, $sp, 80
	fld.s	$fa5, $a0, 64
	fld.s	$fa6, $a1, 56
	fld.s	$fa7, $a1, 60
	fld.s	$ft0, $a1, 64
	fsub.s	$fa5, $fa4, $fa5
	fsub.s	$fa0, $fa0, $fa6
	fsub.s	$fa2, $fa2, $fa7
	fsub.s	$fa4, $fa4, $ft0
	fld.s	$fa6, $a0, 352
	fld.s	$fa7, $a0, 348
	fneg.s	$ft0, $fa3
	fld.s	$ft1, $a0, 344
	fmul.s	$ft0, $fa6, $ft0
	fmadd.s	$ft0, $fa7, $fa5, $ft0
	fneg.s	$fa5, $fa5
	fmul.s	$fa5, $ft1, $fa5
	fmadd.s	$fa5, $fa6, $fa1, $fa5
	fneg.s	$fa1, $fa1
	fmul.s	$fa1, $fa7, $fa1
	fld.s	$fa6, $a0, 328
	fld.s	$fa7, $a0, 332
	fld.s	$ft2, $sp, 108
	fmadd.s	$fa1, $ft1, $fa3, $fa1
	fadd.s	$fa3, $ft0, $fa6
	fadd.s	$fa5, $fa7, $fa5
	fld.s	$fa6, $a1, 352
	fld.s	$fa7, $a1, 348
	fneg.s	$ft0, $fa2
	fld.s	$ft1, $a1, 344
	fmul.s	$ft0, $fa6, $ft0
	fmadd.s	$ft0, $fa7, $fa4, $ft0
	fneg.s	$fa4, $fa4
	fmul.s	$fa4, $ft1, $fa4
	fmadd.s	$fa4, $fa6, $fa0, $fa4
	fld.s	$fa6, $a0, 336
	fneg.s	$fa0, $fa0
	fmul.s	$fa0, $fa7, $fa0
	fmadd.s	$fa0, $ft1, $fa2, $fa0
	fld.s	$fa2, $a1, 328
	fld.s	$fa7, $a1, 332
	fld.s	$ft1, $a1, 336
	fadd.s	$fa1, $fa1, $fa6
	fadd.s	$fa2, $ft0, $fa2
	fadd.s	$fa4, $fa7, $fa4
	fadd.s	$fa0, $fa0, $ft1
	fsub.s	$fa2, $fa3, $fa2
	fsub.s	$fa3, $fa5, $fa4
	fsub.s	$fa0, $fa1, $fa0
	fld.s	$fa1, $sp, 92
	fld.s	$fa4, $sp, 88
	fld.s	$fa5, $sp, 96
	fld.s	$fa6, $sp, 104
	fmul.s	$fa1, $fa3, $fa1
	fmadd.s	$fa1, $fa4, $fa2, $fa1
	vldi	$vr4, -1184
	fnmadd.s	$fa0, $fa5, $fa0, $fa1
	fmul.s	$fa0, $fa6, $fa0
	fcmp.clt.s	$fcc0, $ft2, $fa0
	fsel	$fa0, $fa0, $ft2, $fcc0
	ld.d	$a0, $fp, 208
	fneg.s	$fa1, $ft2
	fcmp.clt.s	$fcc0, $fa0, $fa1
	fsel	$fa0, $fa0, $fa1, $fcc0
.LBB25_73:                              #   in Loop: Header=BB25_69 Depth=1
	ld.d	$a2, $fp, 88
	stx.w	$zero, $a2, $s1
	add.d	$a1, $a0, $s0
	st.w	$s4, $a1, 284
	fld.s	$fa1, $s6, 280
	fld.s	$fa2, $s6, 232
	fstx.s	$fa0, $a2, $s1
	ld.d	$a2, $fp, 120
	fmul.s	$fa1, $fs0, $fa1
	fldx.s	$fa3, $a2, $s1
	fmul.s	$fa1, $fa1, $fa2
	fmul.s	$fa2, $fa1, $fa1
	fmul.s	$fa0, $fa0, $fa4
	fmul.s	$fa3, $fa3, $fa3
	fmadd.s	$fa0, $fa0, $fa0, $fa3
	fcmp.cule.s	$fcc0, $fa0, $fa2
	bcnez	$fcc0, .LBB25_68
# %bb.74:                               #   in Loop: Header=BB25_69 Depth=1
	fld.s	$fa2, $a1, 284
	fsqrt.s	$fa0, $fa0
	fdiv.s	$fa0, $fa1, $fa0
	fmul.s	$fa0, $fa0, $fa2
	fst.s	$fa0, $a1, 284
	ori	$s5, $zero, 1
	b	.LBB25_68
.LBB25_75:                              # %._crit_edge
	slti	$a0, $a1, 1
	orn	$a0, $a0, $s5
	andi	$a0, $a0, 1
	bnez	$a0, .LBB25_81
# %bb.76:                               # %.lr.ph262
	ld.d	$a3, $fp, 208
	ld.d	$a0, $fp, 120
	ld.d	$a2, $fp, 88
	addi.d	$a3, $a3, 284
	vldi	$vr0, -1168
	move	$a4, $a1
	b	.LBB25_78
	.p2align	4, , 16
.LBB25_77:                              #   in Loop: Header=BB25_78 Depth=1
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 288
	addi.d	$a4, $a4, -1
	addi.d	$a0, $a0, 4
	beqz	$a4, .LBB25_81
.LBB25_78:                              # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $a0, 0
	fcmp.ceq.s	$fcc0, $fa1, $fs1
	bcnez	$fcc0, .LBB25_77
# %bb.79:                               #   in Loop: Header=BB25_78 Depth=1
	fld.s	$fa1, $a3, 0
	fcmp.cule.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB25_77
# %bb.80:                               #   in Loop: Header=BB25_78 Depth=1
	fld.s	$fa2, $a2, 0
	fmul.s	$fa1, $fa1, $fa2
	fst.s	$fa1, $a2, 0
	fld.s	$fa1, $a3, 0
	fld.s	$fa2, $a0, 0
	fmul.s	$fa1, $fa1, $fa2
	fst.s	$fa1, $a0, 0
	b	.LBB25_77
.LBB25_81:                              # %.loopexit251
	blez	$a1, .LBB25_88
# %bb.82:                               # %.lr.ph265
	move	$s1, $zero
	move	$s2, $zero
	move	$s3, $zero
	move	$s4, $zero
	addi.d	$s5, $sp, 56
	lu12i.w	$s6, -524288
	lu32i.d	$s6, 0
	b	.LBB25_84
	.p2align	4, , 16
.LBB25_83:                              #   in Loop: Header=BB25_84 Depth=1
	ld.w	$a0, $fp, 196
	addi.d	$s4, $s4, 1
	addi.d	$s3, $s3, 16
	addi.d	$s2, $s2, 288
	addi.d	$s1, $s1, 4
	bge	$s4, $a0, .LBB25_88
.LBB25_84:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $fp, 208
	ld.d	$a0, $fp, 168
	add.d	$s7, $a1, $s2
	fld.s	$fa0, $s7, 16
	fld.s	$fa1, $a0, 56
	fld.s	$fa2, $s7, 20
	fld.s	$fa3, $a0, 60
	fld.s	$fa4, $s7, 24
	fld.s	$fa5, $a0, 64
	fsub.s	$fa0, $fa0, $fa1
	fsub.s	$fa1, $fa2, $fa3
	fsub.s	$fa2, $fa4, $fa5
	movfr2gr.s	$a1, $fa0
	movfr2gr.s	$a2, $fa1
	bstrins.d	$a1, $a2, 63, 32
	st.d	$a1, $sp, 56
	ld.d	$a1, $fp, 88
	movfr2gr.s	$a2, $fa2
	bstrpick.d	$a2, $a2, 31, 0
	st.d	$a2, $sp, 64
	fldx.s	$fa0, $a1, $s1
	fcmp.ceq.s	$fcc0, $fa0, $fs1
	bcnez	$fcc0, .LBB25_86
# %bb.85:                               #   in Loop: Header=BB25_84 Depth=1
	ld.d	$a1, $fp, 24
	add.d	$a2, $a1, $s3
	fldx.s	$fa1, $a1, $s3
	fld.s	$fa2, $a2, 4
	fld.s	$fa3, $a2, 8
	fmul.s	$fa1, $fa1, $fa0
	fmul.s	$fa2, $fa0, $fa2
	fmul.s	$fa0, $fa0, $fa3
	movfr2gr.s	$a1, $fa1
	movfr2gr.s	$a2, $fa2
	bstrins.d	$a1, $a2, 63, 32
	movfr2gr.s	$a2, $fa0
	bstrpick.d	$a2, $a2, 31, 0
	st.d	$a1, $sp, 40
	st.d	$a2, $sp, 48
	addi.d	$a1, $sp, 40
	addi.d	$a2, $sp, 56
	pcaddu18i	$ra, %call36(_ZN11btRigidBody12applyImpulseERK9btVector3S2_)
	jirl	$ra, $ra, 0
.LBB25_86:                              #   in Loop: Header=BB25_84 Depth=1
	ld.d	$a0, $fp, 120
	fldx.s	$fa0, $a0, $s1
	fcmp.ceq.s	$fcc0, $fa0, $fs1
	bcnez	$fcc0, .LBB25_83
# %bb.87:                               #   in Loop: Header=BB25_84 Depth=1
	ld.d	$a1, $fp, 208
	add.d	$a1, $a1, $s2
	ld.d	$s0, $a1, 88
	fld.s	$fa0, $s7, 16
	fld.s	$fa1, $s0, 56
	fld.s	$fa2, $s7, 20
	fld.s	$fa3, $s0, 60
	fld.s	$fa4, $s7, 24
	fld.s	$fa5, $s0, 64
	fsub.s	$fa0, $fa0, $fa1
	fsub.s	$fa1, $fa2, $fa3
	fsub.s	$fa2, $fa4, $fa5
	movfr2gr.s	$a1, $fa0
	movfr2gr.s	$a2, $fa1
	bstrins.d	$a1, $a2, 63, 32
	st.d	$a1, $sp, 40
	ld.d	$a1, $fp, 56
	movfr2gr.s	$a2, $fa2
	bstrpick.d	$a2, $a2, 31, 0
	st.d	$a2, $sp, 48
	add.d	$a2, $a1, $s3
	fldx.s	$fa0, $a1, $s3
	fldx.s	$fa1, $a0, $s1
	fld.s	$fa2, $a2, 4
	fld.s	$fa3, $a2, 8
	fmul.s	$fa0, $fa0, $fa1
	fmul.s	$fa2, $fa1, $fa2
	fmul.s	$fa1, $fa1, $fa3
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa2
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa1
	bstrpick.d	$a1, $a1, 31, 0
	ld.w	$a2, $fp, 180
	st.d	$a0, $sp, 24
	st.d	$a1, $sp, 32
	fld.s	$fa0, $s7, 248
	slli.d	$a1, $a2, 2
	fldx.s	$fa1, $a1, $s5
	ld.d	$a0, $fp, 168
	fmul.s	$fa0, $fa0, $fa1
	fstx.s	$fa0, $a1, $s5
	addi.d	$a1, $sp, 24
	addi.d	$a2, $sp, 56
	pcaddu18i	$ra, %call36(_ZN11btRigidBody12applyImpulseERK9btVector3S2_)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $sp, 24
	ld.w	$a1, $sp, 28
	ld.wu	$a2, $sp, 32
	xor	$a0, $a0, $s6
	xor	$a1, $a1, $s6
	slli.d	$a1, $a1, 32
	or	$a0, $a1, $a0
	xor	$a1, $a2, $s6
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 16
	addi.d	$a1, $sp, 8
	addi.d	$a2, $sp, 40
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN11btRigidBody12applyImpulseERK9btVector3S2_)
	jirl	$ra, $ra, 0
	b	.LBB25_83
.LBB25_88:                              # %.loopexit
	fld.d	$fs1, $sp, 112                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 120                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 192                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 200                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 208
	ret
.Lfunc_end25:
	.size	_ZN16btRaycastVehicle14updateFrictionEf, .Lfunc_end25-_ZN16btRaycastVehicle14updateFrictionEf
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN19btWheelContactPointC2EP11btRigidBodyS1_RK9btVector3S4_f,"axG",@progbits,_ZN19btWheelContactPointC2EP11btRigidBodyS1_RK9btVector3S4_f,comdat
	.weak	_ZN19btWheelContactPointC2EP11btRigidBodyS1_RK9btVector3S4_f # -- Begin function _ZN19btWheelContactPointC2EP11btRigidBodyS1_RK9btVector3S4_f
	.p2align	5
	.type	_ZN19btWheelContactPointC2EP11btRigidBodyS1_RK9btVector3S4_f,@function
_ZN19btWheelContactPointC2EP11btRigidBodyS1_RK9btVector3S4_f: # @_ZN19btWheelContactPointC2EP11btRigidBodyS1_RK9btVector3S4_f
	.cfi_startproc
# %bb.0:
	st.d	$a1, $a0, 0
	st.d	$a2, $a0, 8
	vld	$vr1, $a3, 0
	vst	$vr1, $a0, 16
	vld	$vr1, $a4, 0
	vst	$vr1, $a0, 32
	fst.s	$fa0, $a0, 52
	fld.s	$fa3, $a3, 0
	fld.s	$fa0, $a1, 56
	fld.s	$fa4, $a3, 4
	fld.s	$fa1, $a1, 60
	fld.s	$fa5, $a3, 8
	fld.s	$fa2, $a1, 64
	fsub.s	$fa6, $fa3, $fa0
	fld.s	$fa0, $a4, 4
	fsub.s	$fa7, $fa4, $fa1
	fsub.s	$ft0, $fa5, $fa2
	fld.s	$fa1, $a4, 8
	fneg.s	$ft1, $fa0
	fmul.s	$ft2, $ft0, $ft1
	fld.s	$fa2, $a4, 0
	fmadd.s	$ft2, $fa7, $fa1, $ft2
	fneg.s	$ft3, $fa1
	fmul.s	$ft4, $fa6, $ft3
	fmadd.s	$ft4, $ft0, $fa2, $ft4
	fneg.s	$ft5, $fa2
	fld.s	$ft6, $a1, 296
	fmul.s	$ft7, $fa7, $ft5
	fmadd.s	$ft7, $fa6, $fa0, $ft7
	fld.s	$ft8, $a1, 280
	fmul.s	$ft6, $ft4, $ft6
	fld.s	$ft9, $a1, 312
	fld.s	$ft10, $a1, 300
	fld.s	$ft11, $a1, 284
	fmadd.s	$ft6, $ft8, $ft2, $ft6
	fmadd.s	$ft6, $ft9, $ft7, $ft6
	fmul.s	$ft8, $ft4, $ft10
	fmadd.s	$ft8, $ft11, $ft2, $ft8
	fld.s	$ft9, $a1, 316
	fld.s	$ft10, $a1, 304
	fld.s	$ft11, $a1, 288
	fld.s	$ft12, $a1, 320
	fmadd.s	$ft8, $ft9, $ft7, $ft8
	fmul.s	$ft4, $ft4, $ft10
	fmadd.s	$ft2, $ft11, $ft2, $ft4
	fmadd.s	$ft2, $ft12, $ft7, $ft2
	fneg.s	$ft4, $fa7
	fmul.s	$ft4, $ft2, $ft4
	fmadd.s	$ft4, $ft8, $ft0, $ft4
	fneg.s	$ft0, $ft0
	fmul.s	$ft0, $ft6, $ft0
	fmadd.s	$ft0, $ft2, $fa6, $ft0
	fneg.s	$fa6, $fa6
	fmul.s	$fa6, $ft8, $fa6
	fmadd.s	$fa6, $ft6, $fa7, $fa6
	fld.s	$fa7, $a1, 360
	fmul.s	$ft0, $fa0, $ft0
	fmadd.s	$ft0, $fa2, $ft4, $ft0
	fmadd.s	$fa6, $fa1, $fa6, $ft0
	fld.s	$ft0, $a2, 56
	fld.s	$ft2, $a2, 60
	fld.s	$ft4, $a2, 64
	fadd.s	$fa6, $fa7, $fa6
	fsub.s	$fa3, $fa3, $ft0
	fsub.s	$fa4, $fa4, $ft2
	fsub.s	$fa5, $fa5, $ft4
	fmul.s	$fa7, $fa5, $ft1
	fmadd.s	$fa7, $fa4, $fa1, $fa7
	fmul.s	$ft0, $fa3, $ft3
	fmadd.s	$ft0, $fa5, $fa2, $ft0
	fld.s	$ft1, $a2, 296
	fmul.s	$ft2, $fa4, $ft5
	fmadd.s	$ft2, $fa3, $fa0, $ft2
	fld.s	$ft3, $a2, 280
	fmul.s	$ft1, $ft0, $ft1
	fld.s	$ft4, $a2, 312
	fld.s	$ft5, $a2, 300
	fld.s	$ft6, $a2, 284
	fmadd.s	$ft1, $ft3, $fa7, $ft1
	fmadd.s	$ft1, $ft4, $ft2, $ft1
	fmul.s	$ft3, $ft0, $ft5
	fmadd.s	$ft3, $ft6, $fa7, $ft3
	fld.s	$ft4, $a2, 316
	fld.s	$ft5, $a2, 304
	fld.s	$ft6, $a2, 288
	fld.s	$ft7, $a2, 320
	fmadd.s	$ft3, $ft4, $ft2, $ft3
	fmul.s	$ft0, $ft0, $ft5
	fmadd.s	$fa7, $ft6, $fa7, $ft0
	fmadd.s	$fa7, $ft7, $ft2, $fa7
	fneg.s	$ft0, $fa4
	fmul.s	$ft0, $fa7, $ft0
	fmadd.s	$ft0, $ft3, $fa5, $ft0
	fneg.s	$fa5, $fa5
	fmul.s	$fa5, $ft1, $fa5
	fmadd.s	$fa5, $fa7, $fa3, $fa5
	fneg.s	$fa3, $fa3
	fmul.s	$fa3, $ft3, $fa3
	fmadd.s	$fa3, $ft1, $fa4, $fa3
	fld.s	$fa4, $a2, 360
	fmul.s	$fa0, $fa0, $fa5
	fmadd.s	$fa0, $fa2, $ft0, $fa0
	fmadd.s	$fa0, $fa1, $fa3, $fa0
	fadd.s	$fa0, $fa4, $fa0
	fadd.s	$fa0, $fa6, $fa0
	frecip.s	$fa0, $fa0
	fst.s	$fa0, $a0, 48
	ret
.Lfunc_end26:
	.size	_ZN19btWheelContactPointC2EP11btRigidBodyS1_RK9btVector3S4_f, .Lfunc_end26-_ZN19btWheelContactPointC2EP11btRigidBodyS1_RK9btVector3S4_f
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZN16btRaycastVehicle9debugDrawEP12btIDebugDraw
.LCPI27_0:
	.word	0x437f0000                      # float 255
	.text
	.globl	_ZN16btRaycastVehicle9debugDrawEP12btIDebugDraw
	.p2align	5
	.type	_ZN16btRaycastVehicle9debugDrawEP12btIDebugDraw,@function
_ZN16btRaycastVehicle9debugDrawEP12btIDebugDraw: # @_ZN16btRaycastVehicle9debugDrawEP12btIDebugDraw
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -128
	.cfi_def_cfa_offset 128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 72                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 64                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 56, -56
	.cfi_offset 57, -64
	move	$fp, $a0
	ld.w	$a0, $a0, 196
	blez	$a0, .LBB27_3
# %bb.1:                                # %.lr.ph
	move	$s0, $a1
	move	$s1, $zero
	move	$s2, $zero
	pcalau12i	$a0, %pc_hi20(.LCPI27_0)
	fld.s	$fs0, $a0, %pc_lo12(.LCPI27_0)
	movgr2fr.w	$fs1, $zero
	ori	$a0, $zero, 0
	lu32i.d	$a0, -65536
	lu52i.d	$s3, $a0, 1079
	.p2align	4, , 16
.LBB27_2:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 208
	add.d	$a0, $a0, $s1
	ld.bu	$a1, $a0, 84
	movgr2cf	$fcc0, $a1
	fsel	$fa0, $fs0, $fs1, $fcc0
	fst.s	$fa0, $sp, 48
	st.d	$s3, $sp, 52
	st.w	$zero, $sp, 60
	vld	$vr0, $a0, 144
	ld.w	$a1, $fp, 176
	vst	$vr0, $sp, 32
	alsl.d	$a0, $a1, $a0, 2
	fld.s	$fa0, $a0, 96
	fld.s	$fa1, $sp, 32
	fld.s	$fa2, $a0, 112
	fld.s	$fa3, $sp, 36
	fadd.s	$fa0, $fa0, $fa1
	fld.s	$fa1, $a0, 128
	fadd.s	$fa2, $fa2, $fa3
	fld.s	$fa3, $sp, 40
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa2
	ld.d	$a2, $s0, 0
	bstrins.d	$a0, $a1, 63, 32
	fadd.s	$fa0, $fa1, $fa3
	st.d	$a0, $sp, 16
	ld.d	$a4, $a2, 40
	movfr2gr.s	$a0, $fa0
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $sp, 24
	addi.d	$a1, $sp, 32
	addi.d	$a2, $sp, 16
	addi.d	$a3, $sp, 48
	move	$a0, $s0
	jirl	$ra, $a4, 0
	ld.d	$a0, $s0, 0
	ld.d	$a1, $fp, 208
	ld.d	$a4, $a0, 40
	add.d	$a0, $a1, $s1
	addi.d	$a2, $a0, 16
	addi.d	$a1, $sp, 32
	addi.d	$a3, $sp, 48
	move	$a0, $s0
	jirl	$ra, $a4, 0
	ld.w	$a0, $fp, 196
	addi.d	$s2, $s2, 1
	addi.d	$s1, $s1, 288
	blt	$s2, $a0, .LBB27_2
.LBB27_3:                               # %._crit_edge
	fld.d	$fs1, $sp, 64                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 72                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.Lfunc_end27:
	.size	_ZN16btRaycastVehicle9debugDrawEP12btIDebugDraw, .Lfunc_end27-_ZN16btRaycastVehicle9debugDrawEP12btIDebugDraw
	.cfi_endproc
                                        # -- End function
	.globl	_ZN25btDefaultVehicleRaycaster7castRayERK9btVector3S2_RN18btVehicleRaycaster24btVehicleRaycasterResultE # -- Begin function _ZN25btDefaultVehicleRaycaster7castRayERK9btVector3S2_RN18btVehicleRaycaster24btVehicleRaycasterResultE
	.p2align	5
	.type	_ZN25btDefaultVehicleRaycaster7castRayERK9btVector3S2_RN18btVehicleRaycaster24btVehicleRaycasterResultE,@function
_ZN25btDefaultVehicleRaycaster7castRayERK9btVector3S2_RN18btVehicleRaycaster24btVehicleRaycasterResultE: # @_ZN25btDefaultVehicleRaycaster7castRayERK9btVector3S2_RN18btVehicleRaycaster24btVehicleRaycasterResultE
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -128
	.cfi_def_cfa_offset 128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a3
	lu12i.w	$a3, 260096
	st.w	$a3, $sp, 24
	st.d	$zero, $sp, 32
	lu12i.w	$a3, -16
	ori	$a3, $a3, 1
	lu32i.d	$a3, 0
	st.d	$a3, $sp, 40
	pcalau12i	$a3, %pc_hi20(_ZTVN16btCollisionWorld24ClosestRayResultCallbackE+16)
	addi.d	$a3, $a3, %pc_lo12(_ZTVN16btCollisionWorld24ClosestRayResultCallbackE+16)
	vld	$vr0, $a1, 0
	vld	$vr1, $a2, 0
	ld.d	$a0, $a0, 8
	st.d	$a3, $sp, 16
	vst	$vr0, $sp, 48
	vst	$vr1, $sp, 64
	addi.d	$a3, $sp, 16
	pcaddu18i	$ra, %call36(_ZNK16btCollisionWorld7rayTestERK9btVector3S2_RNS_17RayResultCallbackE)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 32
	beqz	$a0, .LBB28_4
# %bb.1:
	ld.w	$a1, $a0, 256
	ori	$a2, $zero, 2
	bne	$a1, $a2, .LBB28_4
# %bb.2:
	ld.bu	$a1, $a0, 216
	andi	$a1, $a1, 4
	bnez	$a1, .LBB28_4
# %bb.3:                                # %.critedge
	vld	$vr0, $sp, 80
	vld	$vr1, $sp, 96
	vst	$vr0, $fp, 16
	fld.s	$fa0, $fp, 20
	fld.s	$fa2, $fp, 16
	fld.s	$fa3, $fp, 24
	vst	$vr1, $fp, 0
	fmul.s	$fa1, $fa0, $fa0
	fmadd.s	$fa1, $fa2, $fa2, $fa1
	fmadd.s	$fa1, $fa3, $fa3, $fa1
	frsqrt.s	$fa1, $fa1
	fmul.s	$fa2, $fa2, $fa1
	fst.s	$fa2, $fp, 16
	fmul.s	$fa0, $fa0, $fa1
	fld.s	$fa2, $sp, 24
	fst.s	$fa0, $fp, 20
	fmul.s	$fa0, $fa3, $fa1
	fst.s	$fa0, $fp, 24
	fst.s	$fa2, $fp, 32
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.LBB28_4:
	move	$a0, $zero
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.Lfunc_end28:
	.size	_ZN25btDefaultVehicleRaycaster7castRayERK9btVector3S2_RN18btVehicleRaycaster24btVehicleRaycasterResultE, .Lfunc_end28-_ZN25btDefaultVehicleRaycaster7castRayERK9btVector3S2_RN18btVehicleRaycaster24btVehicleRaycasterResultE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN16btCollisionWorld17RayResultCallbackD2Ev,"axG",@progbits,_ZN16btCollisionWorld17RayResultCallbackD2Ev,comdat
	.weak	_ZN16btCollisionWorld17RayResultCallbackD2Ev # -- Begin function _ZN16btCollisionWorld17RayResultCallbackD2Ev
	.p2align	5
	.type	_ZN16btCollisionWorld17RayResultCallbackD2Ev,@function
_ZN16btCollisionWorld17RayResultCallbackD2Ev: # @_ZN16btCollisionWorld17RayResultCallbackD2Ev
# %bb.0:
	ret
.Lfunc_end29:
	.size	_ZN16btCollisionWorld17RayResultCallbackD2Ev, .Lfunc_end29-_ZN16btCollisionWorld17RayResultCallbackD2Ev
                                        # -- End function
	.section	.text._ZN18btVehicleRaycasterD2Ev,"axG",@progbits,_ZN18btVehicleRaycasterD2Ev,comdat
	.weak	_ZN18btVehicleRaycasterD2Ev     # -- Begin function _ZN18btVehicleRaycasterD2Ev
	.p2align	5
	.type	_ZN18btVehicleRaycasterD2Ev,@function
_ZN18btVehicleRaycasterD2Ev:            # @_ZN18btVehicleRaycasterD2Ev
# %bb.0:
	ret
.Lfunc_end30:
	.size	_ZN18btVehicleRaycasterD2Ev, .Lfunc_end30-_ZN18btVehicleRaycasterD2Ev
                                        # -- End function
	.section	.text._ZN25btDefaultVehicleRaycasterD0Ev,"axG",@progbits,_ZN25btDefaultVehicleRaycasterD0Ev,comdat
	.weak	_ZN25btDefaultVehicleRaycasterD0Ev # -- Begin function _ZN25btDefaultVehicleRaycasterD0Ev
	.p2align	5
	.type	_ZN25btDefaultVehicleRaycasterD0Ev,@function
_ZN25btDefaultVehicleRaycasterD0Ev:     # @_ZN25btDefaultVehicleRaycasterD0Ev
	.cfi_startproc
# %bb.0:
	pcaddu18i	$t8, %call36(_ZdlPv)
	jr	$t8
.Lfunc_end31:
	.size	_ZN25btDefaultVehicleRaycasterD0Ev, .Lfunc_end31-_ZN25btDefaultVehicleRaycasterD0Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN16btRaycastVehicle12updateActionEP16btCollisionWorldf,"axG",@progbits,_ZN16btRaycastVehicle12updateActionEP16btCollisionWorldf,comdat
	.weak	_ZN16btRaycastVehicle12updateActionEP16btCollisionWorldf # -- Begin function _ZN16btRaycastVehicle12updateActionEP16btCollisionWorldf
	.p2align	5
	.type	_ZN16btRaycastVehicle12updateActionEP16btCollisionWorldf,@function
_ZN16btRaycastVehicle12updateActionEP16btCollisionWorldf: # @_ZN16btRaycastVehicle12updateActionEP16btCollisionWorldf
	.cfi_startproc
# %bb.0:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 32
	jr	$a1
.Lfunc_end32:
	.size	_ZN16btRaycastVehicle12updateActionEP16btCollisionWorldf, .Lfunc_end32-_ZN16btRaycastVehicle12updateActionEP16btCollisionWorldf
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN16btRaycastVehicle19setCoordinateSystemEiii,"axG",@progbits,_ZN16btRaycastVehicle19setCoordinateSystemEiii,comdat
	.weak	_ZN16btRaycastVehicle19setCoordinateSystemEiii # -- Begin function _ZN16btRaycastVehicle19setCoordinateSystemEiii
	.p2align	5
	.type	_ZN16btRaycastVehicle19setCoordinateSystemEiii,@function
_ZN16btRaycastVehicle19setCoordinateSystemEiii: # @_ZN16btRaycastVehicle19setCoordinateSystemEiii
# %bb.0:
	st.w	$a1, $a0, 176
	st.w	$a2, $a0, 180
	st.w	$a3, $a0, 184
	ret
.Lfunc_end33:
	.size	_ZN16btRaycastVehicle19setCoordinateSystemEiii, .Lfunc_end33-_ZN16btRaycastVehicle19setCoordinateSystemEiii
                                        # -- End function
	.section	.text._ZN16btCollisionWorld24ClosestRayResultCallbackD0Ev,"axG",@progbits,_ZN16btCollisionWorld24ClosestRayResultCallbackD0Ev,comdat
	.weak	_ZN16btCollisionWorld24ClosestRayResultCallbackD0Ev # -- Begin function _ZN16btCollisionWorld24ClosestRayResultCallbackD0Ev
	.p2align	5
	.type	_ZN16btCollisionWorld24ClosestRayResultCallbackD0Ev,@function
_ZN16btCollisionWorld24ClosestRayResultCallbackD0Ev: # @_ZN16btCollisionWorld24ClosestRayResultCallbackD0Ev
	.cfi_startproc
# %bb.0:
	pcaddu18i	$t8, %call36(_ZdlPv)
	jr	$t8
.Lfunc_end34:
	.size	_ZN16btCollisionWorld24ClosestRayResultCallbackD0Ev, .Lfunc_end34-_ZN16btCollisionWorld24ClosestRayResultCallbackD0Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK16btCollisionWorld17RayResultCallback14needsCollisionEP17btBroadphaseProxy,"axG",@progbits,_ZNK16btCollisionWorld17RayResultCallback14needsCollisionEP17btBroadphaseProxy,comdat
	.weak	_ZNK16btCollisionWorld17RayResultCallback14needsCollisionEP17btBroadphaseProxy # -- Begin function _ZNK16btCollisionWorld17RayResultCallback14needsCollisionEP17btBroadphaseProxy
	.p2align	5
	.type	_ZNK16btCollisionWorld17RayResultCallback14needsCollisionEP17btBroadphaseProxy,@function
_ZNK16btCollisionWorld17RayResultCallback14needsCollisionEP17btBroadphaseProxy: # @_ZNK16btCollisionWorld17RayResultCallback14needsCollisionEP17btBroadphaseProxy
# %bb.0:
	ld.hu	$a2, $a1, 8
	ld.hu	$a3, $a0, 26
	and	$a2, $a3, $a2
	beqz	$a2, .LBB35_2
# %bb.1:
	ld.hu	$a0, $a0, 24
	ld.hu	$a1, $a1, 10
	and	$a0, $a1, $a0
	sltu	$a0, $zero, $a0
	ret
.LBB35_2:
	move	$a0, $zero
	ret
.Lfunc_end35:
	.size	_ZNK16btCollisionWorld17RayResultCallback14needsCollisionEP17btBroadphaseProxy, .Lfunc_end35-_ZNK16btCollisionWorld17RayResultCallback14needsCollisionEP17btBroadphaseProxy
                                        # -- End function
	.section	.text._ZN16btCollisionWorld24ClosestRayResultCallback15addSingleResultERNS_14LocalRayResultEb,"axG",@progbits,_ZN16btCollisionWorld24ClosestRayResultCallback15addSingleResultERNS_14LocalRayResultEb,comdat
	.weak	_ZN16btCollisionWorld24ClosestRayResultCallback15addSingleResultERNS_14LocalRayResultEb # -- Begin function _ZN16btCollisionWorld24ClosestRayResultCallback15addSingleResultERNS_14LocalRayResultEb
	.p2align	5
	.type	_ZN16btCollisionWorld24ClosestRayResultCallback15addSingleResultERNS_14LocalRayResultEb,@function
_ZN16btCollisionWorld24ClosestRayResultCallback15addSingleResultERNS_14LocalRayResultEb: # @_ZN16btCollisionWorld24ClosestRayResultCallback15addSingleResultERNS_14LocalRayResultEb
	.cfi_startproc
# %bb.0:
	fld.s	$fa0, $a1, 32
	ld.d	$a3, $a1, 0
	fst.s	$fa0, $a0, 8
	st.d	$a3, $a0, 16
	beqz	$a2, .LBB36_2
# %bb.1:
	vld	$vr0, $a1, 16
	vst	$vr0, $a0, 64
	b	.LBB36_3
.LBB36_2:
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
	st.d	$a2, $a0, 64
	st.d	$a3, $a0, 72
.LBB36_3:
	fld.s	$fa0, $a1, 32
	fld.s	$fa1, $a0, 48
	vldi	$vr2, -1168
	fld.s	$fa3, $a0, 32
	fsub.s	$fa2, $fa2, $fa0
	fmul.s	$fa1, $fa0, $fa1
	fld.s	$fa4, $a0, 52
	fmadd.s	$fa1, $fa2, $fa3, $fa1
	fst.s	$fa1, $a0, 80
	fld.s	$fa1, $a0, 36
	fmul.s	$fa3, $fa0, $fa4
	fld.s	$fa4, $a0, 56
	fld.s	$fa5, $a0, 40
	fmadd.s	$fa1, $fa2, $fa1, $fa3
	fst.s	$fa1, $a0, 84
	fmul.s	$fa0, $fa0, $fa4
	fmadd.s	$fa0, $fa2, $fa5, $fa0
	fst.s	$fa0, $a0, 88
	fld.s	$fa0, $a1, 32
	ret
.Lfunc_end36:
	.size	_ZN16btCollisionWorld24ClosestRayResultCallback15addSingleResultERNS_14LocalRayResultEb, .Lfunc_end36-_ZN16btCollisionWorld24ClosestRayResultCallback15addSingleResultERNS_14LocalRayResultEb
	.cfi_endproc
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	5                               # -- Begin function _GLOBAL__sub_I_btRaycastVehicle.cpp
	.type	_GLOBAL__sub_I_btRaycastVehicle.cpp,@function
_GLOBAL__sub_I_btRaycastVehicle.cpp:    # @_GLOBAL__sub_I_btRaycastVehicle.cpp
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 0
	pcalau12i	$a0, %pc_hi20(_ZL13s_fixedObject)
	addi.d	$fp, $a0, %pc_lo12(_ZL13s_fixedObject)
	movgr2fr.w	$fa0, $zero
	addi.d	$a3, $sp, 0
	move	$a0, $fp
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZN11btRigidBodyC1EfP13btMotionStateP16btCollisionShapeRK9btVector3)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(_ZN11btRigidBodyD2Ev)
	addi.d	$a0, $a0, %pc_lo12(_ZN11btRigidBodyD2Ev)
	pcalau12i	$a1, %pc_hi20(__dso_handle)
	addi.d	$a2, $a1, %pc_lo12(__dso_handle)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(__cxa_atexit)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end37:
	.size	_GLOBAL__sub_I_btRaycastVehicle.cpp, .Lfunc_end37-_GLOBAL__sub_I_btRaycastVehicle.cpp
	.cfi_endproc
                                        # -- End function
	.type	_ZL13s_fixedObject,@object      # @_ZL13s_fixedObject
	.local	_ZL13s_fixedObject
	.comm	_ZL13s_fixedObject,568,8
	.hidden	__dso_handle
	.type	_ZTV16btRaycastVehicle,@object  # @_ZTV16btRaycastVehicle
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTV16btRaycastVehicle
	.p2align	3, 0x0
_ZTV16btRaycastVehicle:
	.dword	0
	.dword	_ZTI16btRaycastVehicle
	.dword	_ZN16btRaycastVehicleD2Ev
	.dword	_ZN16btRaycastVehicleD0Ev
	.dword	_ZN16btRaycastVehicle12updateActionEP16btCollisionWorldf
	.dword	_ZN16btRaycastVehicle9debugDrawEP12btIDebugDraw
	.dword	_ZN16btRaycastVehicle13updateVehicleEf
	.dword	_ZN16btRaycastVehicle14updateFrictionEf
	.dword	_ZN16btRaycastVehicle19setCoordinateSystemEiii
	.size	_ZTV16btRaycastVehicle, 72

	.type	sideFrictionStiffness2,@object  # @sideFrictionStiffness2
	.data
	.globl	sideFrictionStiffness2
	.p2align	2, 0x0
sideFrictionStiffness2:
	.word	0x3f800000                      # float 1
	.size	sideFrictionStiffness2, 4

	.type	_ZTV25btDefaultVehicleRaycaster,@object # @_ZTV25btDefaultVehicleRaycaster
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTV25btDefaultVehicleRaycaster
	.p2align	3, 0x0
_ZTV25btDefaultVehicleRaycaster:
	.dword	0
	.dword	_ZTI25btDefaultVehicleRaycaster
	.dword	_ZN18btVehicleRaycasterD2Ev
	.dword	_ZN25btDefaultVehicleRaycasterD0Ev
	.dword	_ZN25btDefaultVehicleRaycaster7castRayERK9btVector3S2_RN18btVehicleRaycaster24btVehicleRaycasterResultE
	.size	_ZTV25btDefaultVehicleRaycaster, 40

	.type	_ZTI25btDefaultVehicleRaycaster,@object # @_ZTI25btDefaultVehicleRaycaster
	.globl	_ZTI25btDefaultVehicleRaycaster
	.p2align	3, 0x0
_ZTI25btDefaultVehicleRaycaster:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS25btDefaultVehicleRaycaster
	.dword	_ZTI18btVehicleRaycaster
	.size	_ZTI25btDefaultVehicleRaycaster, 24

	.type	_ZTS25btDefaultVehicleRaycaster,@object # @_ZTS25btDefaultVehicleRaycaster
	.section	.rodata,"a",@progbits
	.globl	_ZTS25btDefaultVehicleRaycaster
_ZTS25btDefaultVehicleRaycaster:
	.asciz	"25btDefaultVehicleRaycaster"
	.size	_ZTS25btDefaultVehicleRaycaster, 28

	.type	_ZTI18btVehicleRaycaster,@object # @_ZTI18btVehicleRaycaster
	.section	.data.rel.ro._ZTI18btVehicleRaycaster,"awG",@progbits,_ZTI18btVehicleRaycaster,comdat
	.weak	_ZTI18btVehicleRaycaster
	.p2align	3, 0x0
_ZTI18btVehicleRaycaster:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTS18btVehicleRaycaster
	.size	_ZTI18btVehicleRaycaster, 16

	.type	_ZTS18btVehicleRaycaster,@object # @_ZTS18btVehicleRaycaster
	.section	.rodata._ZTS18btVehicleRaycaster,"aG",@progbits,_ZTS18btVehicleRaycaster,comdat
	.weak	_ZTS18btVehicleRaycaster
_ZTS18btVehicleRaycaster:
	.asciz	"18btVehicleRaycaster"
	.size	_ZTS18btVehicleRaycaster, 21

	.type	_ZTI16btRaycastVehicle,@object  # @_ZTI16btRaycastVehicle
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTI16btRaycastVehicle
	.p2align	3, 0x0
_ZTI16btRaycastVehicle:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS16btRaycastVehicle
	.dword	_ZTI17btActionInterface
	.size	_ZTI16btRaycastVehicle, 24

	.type	_ZTS16btRaycastVehicle,@object  # @_ZTS16btRaycastVehicle
	.section	.rodata,"a",@progbits
	.globl	_ZTS16btRaycastVehicle
_ZTS16btRaycastVehicle:
	.asciz	"16btRaycastVehicle"
	.size	_ZTS16btRaycastVehicle, 19

	.type	_ZTI17btActionInterface,@object # @_ZTI17btActionInterface
	.section	.data.rel.ro._ZTI17btActionInterface,"awG",@progbits,_ZTI17btActionInterface,comdat
	.weak	_ZTI17btActionInterface
	.p2align	3, 0x0
_ZTI17btActionInterface:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTS17btActionInterface
	.size	_ZTI17btActionInterface, 16

	.type	_ZTS17btActionInterface,@object # @_ZTS17btActionInterface
	.section	.rodata._ZTS17btActionInterface,"aG",@progbits,_ZTS17btActionInterface,comdat
	.weak	_ZTS17btActionInterface
_ZTS17btActionInterface:
	.asciz	"17btActionInterface"
	.size	_ZTS17btActionInterface, 20

	.type	_ZTVN16btCollisionWorld24ClosestRayResultCallbackE,@object # @_ZTVN16btCollisionWorld24ClosestRayResultCallbackE
	.section	.data.rel.ro._ZTVN16btCollisionWorld24ClosestRayResultCallbackE,"awG",@progbits,_ZTVN16btCollisionWorld24ClosestRayResultCallbackE,comdat
	.weak	_ZTVN16btCollisionWorld24ClosestRayResultCallbackE
	.p2align	3, 0x0
_ZTVN16btCollisionWorld24ClosestRayResultCallbackE:
	.dword	0
	.dword	_ZTIN16btCollisionWorld24ClosestRayResultCallbackE
	.dword	_ZN16btCollisionWorld17RayResultCallbackD2Ev
	.dword	_ZN16btCollisionWorld24ClosestRayResultCallbackD0Ev
	.dword	_ZNK16btCollisionWorld17RayResultCallback14needsCollisionEP17btBroadphaseProxy
	.dword	_ZN16btCollisionWorld24ClosestRayResultCallback15addSingleResultERNS_14LocalRayResultEb
	.size	_ZTVN16btCollisionWorld24ClosestRayResultCallbackE, 48

	.type	_ZTIN16btCollisionWorld24ClosestRayResultCallbackE,@object # @_ZTIN16btCollisionWorld24ClosestRayResultCallbackE
	.section	.data.rel.ro._ZTIN16btCollisionWorld24ClosestRayResultCallbackE,"awG",@progbits,_ZTIN16btCollisionWorld24ClosestRayResultCallbackE,comdat
	.weak	_ZTIN16btCollisionWorld24ClosestRayResultCallbackE
	.p2align	3, 0x0
_ZTIN16btCollisionWorld24ClosestRayResultCallbackE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTSN16btCollisionWorld24ClosestRayResultCallbackE
	.dword	_ZTIN16btCollisionWorld17RayResultCallbackE
	.size	_ZTIN16btCollisionWorld24ClosestRayResultCallbackE, 24

	.type	_ZTSN16btCollisionWorld24ClosestRayResultCallbackE,@object # @_ZTSN16btCollisionWorld24ClosestRayResultCallbackE
	.section	.rodata._ZTSN16btCollisionWorld24ClosestRayResultCallbackE,"aG",@progbits,_ZTSN16btCollisionWorld24ClosestRayResultCallbackE,comdat
	.weak	_ZTSN16btCollisionWorld24ClosestRayResultCallbackE
_ZTSN16btCollisionWorld24ClosestRayResultCallbackE:
	.asciz	"N16btCollisionWorld24ClosestRayResultCallbackE"
	.size	_ZTSN16btCollisionWorld24ClosestRayResultCallbackE, 47

	.type	_ZTIN16btCollisionWorld17RayResultCallbackE,@object # @_ZTIN16btCollisionWorld17RayResultCallbackE
	.section	.data.rel.ro._ZTIN16btCollisionWorld17RayResultCallbackE,"awG",@progbits,_ZTIN16btCollisionWorld17RayResultCallbackE,comdat
	.weak	_ZTIN16btCollisionWorld17RayResultCallbackE
	.p2align	3, 0x0
_ZTIN16btCollisionWorld17RayResultCallbackE:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTSN16btCollisionWorld17RayResultCallbackE
	.size	_ZTIN16btCollisionWorld17RayResultCallbackE, 16

	.type	_ZTSN16btCollisionWorld17RayResultCallbackE,@object # @_ZTSN16btCollisionWorld17RayResultCallbackE
	.section	.rodata._ZTSN16btCollisionWorld17RayResultCallbackE,"aG",@progbits,_ZTSN16btCollisionWorld17RayResultCallbackE,comdat
	.weak	_ZTSN16btCollisionWorld17RayResultCallbackE
_ZTSN16btCollisionWorld17RayResultCallbackE:
	.asciz	"N16btCollisionWorld17RayResultCallbackE"
	.size	_ZTSN16btCollisionWorld17RayResultCallbackE, 40

	.section	.init_array,"aw",@init_array
	.p2align	3, 0x0
	.dword	_GLOBAL__sub_I_btRaycastVehicle.cpp
	.globl	_ZN16btRaycastVehicleC1ERKNS_15btVehicleTuningEP11btRigidBodyP18btVehicleRaycaster
	.type	_ZN16btRaycastVehicleC1ERKNS_15btVehicleTuningEP11btRigidBodyP18btVehicleRaycaster,@function
_ZN16btRaycastVehicleC1ERKNS_15btVehicleTuningEP11btRigidBodyP18btVehicleRaycaster = _ZN16btRaycastVehicleC2ERKNS_15btVehicleTuningEP11btRigidBodyP18btVehicleRaycaster
	.globl	_ZN16btRaycastVehicleD1Ev
	.type	_ZN16btRaycastVehicleD1Ev,@function
_ZN16btRaycastVehicleD1Ev = _ZN16btRaycastVehicleD2Ev
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
	.addrsig_sym _GLOBAL__sub_I_btRaycastVehicle.cpp
	.addrsig_sym _Unwind_Resume
	.addrsig_sym _ZL13s_fixedObject
	.addrsig_sym __dso_handle
	.addrsig_sym _ZTI25btDefaultVehicleRaycaster
	.addrsig_sym _ZTVN10__cxxabiv120__si_class_type_infoE
	.addrsig_sym _ZTS25btDefaultVehicleRaycaster
	.addrsig_sym _ZTI18btVehicleRaycaster
	.addrsig_sym _ZTVN10__cxxabiv117__class_type_infoE
	.addrsig_sym _ZTS18btVehicleRaycaster
	.addrsig_sym _ZTI16btRaycastVehicle
	.addrsig_sym _ZTS16btRaycastVehicle
	.addrsig_sym _ZTI17btActionInterface
	.addrsig_sym _ZTS17btActionInterface
	.addrsig_sym _ZTIN16btCollisionWorld24ClosestRayResultCallbackE
	.addrsig_sym _ZTSN16btCollisionWorld24ClosestRayResultCallbackE
	.addrsig_sym _ZTIN16btCollisionWorld17RayResultCallbackE
	.addrsig_sym _ZTSN16btCollisionWorld17RayResultCallbackE
