	.file	"btSequentialImpulseConstraintSolver.cpp"
	.text
	.globl	_ZN35btSequentialImpulseConstraintSolverC2Ev # -- Begin function _ZN35btSequentialImpulseConstraintSolverC2Ev
	.p2align	5
	.type	_ZN35btSequentialImpulseConstraintSolverC2Ev,@function
_ZN35btSequentialImpulseConstraintSolverC2Ev: # @_ZN35btSequentialImpulseConstraintSolverC2Ev
	.cfi_startproc
# %bb.0:
	pcalau12i	$a1, %pc_hi20(_ZTV35btSequentialImpulseConstraintSolver+16)
	addi.d	$a1, $a1, %pc_lo12(_ZTV35btSequentialImpulseConstraintSolver+16)
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
	st.b	$a1, $a0, 160
	st.d	$zero, $a0, 152
	st.d	$zero, $a0, 140
	st.b	$a1, $a0, 192
	st.d	$zero, $a0, 184
	st.d	$zero, $a0, 172
	st.b	$a1, $a0, 224
	st.d	$zero, $a0, 216
	st.d	$zero, $a0, 204
	st.d	$zero, $a0, 232
	ret
.Lfunc_end0:
	.size	_ZN35btSequentialImpulseConstraintSolverC2Ev, .Lfunc_end0-_ZN35btSequentialImpulseConstraintSolverC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN20btAlignedObjectArrayIiED2Ev,"axG",@progbits,_ZN20btAlignedObjectArrayIiED2Ev,comdat
	.weak	_ZN20btAlignedObjectArrayIiED2Ev # -- Begin function _ZN20btAlignedObjectArrayIiED2Ev
	.p2align	5
	.type	_ZN20btAlignedObjectArrayIiED2Ev,@function
_ZN20btAlignedObjectArrayIiED2Ev:       # @_ZN20btAlignedObjectArrayIiED2Ev
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
.LBB1_3:                                # %_ZN20btAlignedObjectArrayIiE5clearEv.exit
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 24
	st.d	$zero, $fp, 16
	st.d	$zero, $fp, 4
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end1:
	.size	_ZN20btAlignedObjectArrayIiED2Ev, .Lfunc_end1-_ZN20btAlignedObjectArrayIiED2Ev
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
	.section	.text._ZN20btAlignedObjectArrayI18btSolverConstraintED2Ev,"axG",@progbits,_ZN20btAlignedObjectArrayI18btSolverConstraintED2Ev,comdat
	.weak	_ZN20btAlignedObjectArrayI18btSolverConstraintED2Ev # -- Begin function _ZN20btAlignedObjectArrayI18btSolverConstraintED2Ev
	.p2align	5
	.type	_ZN20btAlignedObjectArrayI18btSolverConstraintED2Ev,@function
_ZN20btAlignedObjectArrayI18btSolverConstraintED2Ev: # @_ZN20btAlignedObjectArrayI18btSolverConstraintED2Ev
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
.LBB3_3:                                # %_ZN20btAlignedObjectArrayI18btSolverConstraintE5clearEv.exit
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 24
	st.d	$zero, $fp, 16
	st.d	$zero, $fp, 4
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end3:
	.size	_ZN20btAlignedObjectArrayI18btSolverConstraintED2Ev, .Lfunc_end3-_ZN20btAlignedObjectArrayI18btSolverConstraintED2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN20btAlignedObjectArrayI12btSolverBodyED2Ev,"axG",@progbits,_ZN20btAlignedObjectArrayI12btSolverBodyED2Ev,comdat
	.weak	_ZN20btAlignedObjectArrayI12btSolverBodyED2Ev # -- Begin function _ZN20btAlignedObjectArrayI12btSolverBodyED2Ev
	.p2align	5
	.type	_ZN20btAlignedObjectArrayI12btSolverBodyED2Ev,@function
_ZN20btAlignedObjectArrayI12btSolverBodyED2Ev: # @_ZN20btAlignedObjectArrayI12btSolverBodyED2Ev
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
.LBB4_3:                                # %_ZN20btAlignedObjectArrayI12btSolverBodyE5clearEv.exit
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 24
	st.d	$zero, $fp, 16
	st.d	$zero, $fp, 4
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end4:
	.size	_ZN20btAlignedObjectArrayI12btSolverBodyED2Ev, .Lfunc_end4-_ZN20btAlignedObjectArrayI12btSolverBodyED2Ev
	.cfi_endproc
                                        # -- End function
	.text
	.globl	_ZN35btSequentialImpulseConstraintSolverD2Ev # -- Begin function _ZN35btSequentialImpulseConstraintSolverD2Ev
	.p2align	5
	.type	_ZN35btSequentialImpulseConstraintSolverD2Ev,@function
_ZN35btSequentialImpulseConstraintSolverD2Ev: # @_ZN35btSequentialImpulseConstraintSolverD2Ev
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
	pcalau12i	$a0, %pc_hi20(_ZTV35btSequentialImpulseConstraintSolver+16)
	addi.d	$a1, $a0, %pc_lo12(_ZTV35btSequentialImpulseConstraintSolver+16)
	ld.d	$a0, $fp, 216
	st.d	$a1, $fp, 0
	beqz	$a0, .LBB5_3
# %bb.1:
	ld.b	$a1, $fp, 224
	andi	$a1, $a1, 1
	beqz	$a1, .LBB5_3
# %bb.2:
.Ltmp0:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
.LBB5_3:
	ld.d	$a0, $fp, 184
	ori	$s0, $zero, 1
	st.b	$s0, $fp, 224
	st.d	$zero, $fp, 216
	st.d	$zero, $fp, 204
	beqz	$a0, .LBB5_6
# %bb.4:
	ld.b	$a1, $fp, 192
	andi	$a1, $a1, 1
	beqz	$a1, .LBB5_6
# %bb.5:
.Ltmp5:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp6:                                 # EH_LABEL
.LBB5_6:
	ld.d	$a0, $fp, 152
	st.b	$s0, $fp, 192
	st.d	$zero, $fp, 184
	st.d	$zero, $fp, 172
	beqz	$a0, .LBB5_9
# %bb.7:
	ld.b	$a1, $fp, 160
	andi	$a1, $a1, 1
	beqz	$a1, .LBB5_9
# %bb.8:
.Ltmp10:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp11:                                # EH_LABEL
.LBB5_9:
	ld.d	$a0, $fp, 120
	ori	$s0, $zero, 1
	st.b	$s0, $fp, 160
	st.d	$zero, $fp, 152
	st.d	$zero, $fp, 140
	beqz	$a0, .LBB5_12
# %bb.10:
	ld.b	$a1, $fp, 128
	andi	$a1, $a1, 1
	beqz	$a1, .LBB5_12
# %bb.11:
.Ltmp15:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp16:                                # EH_LABEL
.LBB5_12:
	ld.d	$a0, $fp, 88
	st.b	$s0, $fp, 128
	st.d	$zero, $fp, 120
	st.d	$zero, $fp, 108
	beqz	$a0, .LBB5_15
# %bb.13:
	ld.b	$a1, $fp, 96
	andi	$a1, $a1, 1
	beqz	$a1, .LBB5_15
# %bb.14:
.Ltmp20:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp21:                                # EH_LABEL
.LBB5_15:
	ld.d	$a0, $fp, 56
	ori	$s0, $zero, 1
	st.b	$s0, $fp, 96
	st.d	$zero, $fp, 88
	st.d	$zero, $fp, 76
	beqz	$a0, .LBB5_18
# %bb.16:
	ld.b	$a1, $fp, 64
	andi	$a1, $a1, 1
	beqz	$a1, .LBB5_18
# %bb.17:
.Ltmp25:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp26:                                # EH_LABEL
.LBB5_18:
	ld.d	$a0, $fp, 24
	st.b	$s0, $fp, 64
	st.d	$zero, $fp, 56
	st.d	$zero, $fp, 44
	beqz	$a0, .LBB5_21
# %bb.19:
	ld.b	$a1, $fp, 32
	andi	$a1, $a1, 1
	beqz	$a1, .LBB5_21
# %bb.20:
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.LBB5_21:
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 32
	st.d	$zero, $fp, 24
	st.d	$zero, $fp, 12
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB5_22:
.Ltmp27:                                # EH_LABEL
	move	$s0, $a0
	b	.LBB5_32
.LBB5_23:
.Ltmp22:                                # EH_LABEL
	move	$s0, $a0
	b	.LBB5_31
.LBB5_24:
.Ltmp17:                                # EH_LABEL
	move	$s0, $a0
	b	.LBB5_30
.LBB5_25:
.Ltmp12:                                # EH_LABEL
	move	$s0, $a0
	b	.LBB5_29
.LBB5_26:
.Ltmp7:                                 # EH_LABEL
	move	$s0, $a0
	b	.LBB5_28
.LBB5_27:
.Ltmp2:                                 # EH_LABEL
	move	$s0, $a0
	addi.d	$a0, $fp, 168
.Ltmp3:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN20btAlignedObjectArrayIiED2Ev)
	jirl	$ra, $ra, 0
.Ltmp4:                                 # EH_LABEL
.LBB5_28:
	addi.d	$a0, $fp, 136
.Ltmp8:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN20btAlignedObjectArrayIiED2Ev)
	jirl	$ra, $ra, 0
.Ltmp9:                                 # EH_LABEL
.LBB5_29:
	addi.d	$a0, $fp, 104
.Ltmp13:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN20btAlignedObjectArrayI18btSolverConstraintED2Ev)
	jirl	$ra, $ra, 0
.Ltmp14:                                # EH_LABEL
.LBB5_30:
	addi.d	$a0, $fp, 72
.Ltmp18:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN20btAlignedObjectArrayI18btSolverConstraintED2Ev)
	jirl	$ra, $ra, 0
.Ltmp19:                                # EH_LABEL
.LBB5_31:
	addi.d	$a0, $fp, 40
.Ltmp23:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN20btAlignedObjectArrayI18btSolverConstraintED2Ev)
	jirl	$ra, $ra, 0
.Ltmp24:                                # EH_LABEL
.LBB5_32:
	addi.d	$a0, $fp, 8
.Ltmp28:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN20btAlignedObjectArrayI12btSolverBodyED2Ev)
	jirl	$ra, $ra, 0
.Ltmp29:                                # EH_LABEL
# %bb.33:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB5_34:
.Ltmp30:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end5:
	.size	_ZN35btSequentialImpulseConstraintSolverD2Ev, .Lfunc_end5-_ZN35btSequentialImpulseConstraintSolverD2Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table5:
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
	.uleb128 .Ltmp5-.Lfunc_begin0           # >> Call Site 2 <<
	.uleb128 .Ltmp6-.Ltmp5                  #   Call between .Ltmp5 and .Ltmp6
	.uleb128 .Ltmp7-.Lfunc_begin0           #     jumps to .Ltmp7
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp10-.Lfunc_begin0          # >> Call Site 3 <<
	.uleb128 .Ltmp11-.Ltmp10                #   Call between .Ltmp10 and .Ltmp11
	.uleb128 .Ltmp12-.Lfunc_begin0          #     jumps to .Ltmp12
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp15-.Lfunc_begin0          # >> Call Site 4 <<
	.uleb128 .Ltmp16-.Ltmp15                #   Call between .Ltmp15 and .Ltmp16
	.uleb128 .Ltmp17-.Lfunc_begin0          #     jumps to .Ltmp17
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp20-.Lfunc_begin0          # >> Call Site 5 <<
	.uleb128 .Ltmp21-.Ltmp20                #   Call between .Ltmp20 and .Ltmp21
	.uleb128 .Ltmp22-.Lfunc_begin0          #     jumps to .Ltmp22
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp25-.Lfunc_begin0          # >> Call Site 6 <<
	.uleb128 .Ltmp26-.Ltmp25                #   Call between .Ltmp25 and .Ltmp26
	.uleb128 .Ltmp27-.Lfunc_begin0          #     jumps to .Ltmp27
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp26-.Lfunc_begin0          # >> Call Site 7 <<
	.uleb128 .Ltmp3-.Ltmp26                 #   Call between .Ltmp26 and .Ltmp3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp3-.Lfunc_begin0           # >> Call Site 8 <<
	.uleb128 .Ltmp29-.Ltmp3                 #   Call between .Ltmp3 and .Ltmp29
	.uleb128 .Ltmp30-.Lfunc_begin0          #     jumps to .Ltmp30
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp29-.Lfunc_begin0          # >> Call Site 9 <<
	.uleb128 .Lfunc_end5-.Ltmp29            #   Call between .Ltmp29 and .Lfunc_end5
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
	.globl	_ZN35btSequentialImpulseConstraintSolverD0Ev # -- Begin function _ZN35btSequentialImpulseConstraintSolverD0Ev
	.p2align	5
	.type	_ZN35btSequentialImpulseConstraintSolverD0Ev,@function
_ZN35btSequentialImpulseConstraintSolverD0Ev: # @_ZN35btSequentialImpulseConstraintSolverD0Ev
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
.Ltmp31:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN35btSequentialImpulseConstraintSolverD2Ev)
	jirl	$ra, $ra, 0
.Ltmp32:                                # EH_LABEL
# %bb.1:
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZdlPv)
	jr	$t8
.LBB6_2:
.Ltmp33:                                # EH_LABEL
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end6:
	.size	_ZN35btSequentialImpulseConstraintSolverD0Ev, .Lfunc_end6-_ZN35btSequentialImpulseConstraintSolverD0Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table6:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Ltmp31-.Lfunc_begin1          # >> Call Site 1 <<
	.uleb128 .Ltmp32-.Ltmp31                #   Call between .Ltmp31 and .Ltmp32
	.uleb128 .Ltmp33-.Lfunc_begin1          #     jumps to .Ltmp33
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp32-.Lfunc_begin1          # >> Call Site 2 <<
	.uleb128 .Lfunc_end6-.Ltmp32            #   Call between .Ltmp32 and .Lfunc_end6
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN35btSequentialImpulseConstraintSolver37resolveSingleConstraintRowGenericSIMDER12btSolverBodyS1_RK18btSolverConstraint # -- Begin function _ZN35btSequentialImpulseConstraintSolver37resolveSingleConstraintRowGenericSIMDER12btSolverBodyS1_RK18btSolverConstraint
	.p2align	5
	.type	_ZN35btSequentialImpulseConstraintSolver37resolveSingleConstraintRowGenericSIMDER12btSolverBodyS1_RK18btSolverConstraint,@function
_ZN35btSequentialImpulseConstraintSolver37resolveSingleConstraintRowGenericSIMDER12btSolverBodyS1_RK18btSolverConstraint: # @_ZN35btSequentialImpulseConstraintSolver37resolveSingleConstraintRowGenericSIMDER12btSolverBodyS1_RK18btSolverConstraint
# %bb.0:
	pcaddu18i	$t8, %call36(_ZN35btSequentialImpulseConstraintSolver33resolveSingleConstraintRowGenericER12btSolverBodyS1_RK18btSolverConstraint)
	jr	$t8
.Lfunc_end7:
	.size	_ZN35btSequentialImpulseConstraintSolver37resolveSingleConstraintRowGenericSIMDER12btSolverBodyS1_RK18btSolverConstraint, .Lfunc_end7-_ZN35btSequentialImpulseConstraintSolver37resolveSingleConstraintRowGenericSIMDER12btSolverBodyS1_RK18btSolverConstraint
                                        # -- End function
	.globl	_ZN35btSequentialImpulseConstraintSolver33resolveSingleConstraintRowGenericER12btSolverBodyS1_RK18btSolverConstraint # -- Begin function _ZN35btSequentialImpulseConstraintSolver33resolveSingleConstraintRowGenericER12btSolverBodyS1_RK18btSolverConstraint
	.p2align	5
	.type	_ZN35btSequentialImpulseConstraintSolver33resolveSingleConstraintRowGenericER12btSolverBodyS1_RK18btSolverConstraint,@function
_ZN35btSequentialImpulseConstraintSolver33resolveSingleConstraintRowGenericER12btSolverBodyS1_RK18btSolverConstraint: # @_ZN35btSequentialImpulseConstraintSolver33resolveSingleConstraintRowGenericER12btSolverBodyS1_RK18btSolverConstraint
# %bb.0:
	fld.s	$fa0, $a3, 120
	fld.s	$fa4, $a3, 84
	fld.s	$fa3, $a3, 124
	fld.s	$fa1, $a3, 16
	fld.s	$fa2, $a3, 20
	fld.s	$fa5, $a1, 4
	fld.s	$fa6, $a1, 0
	fneg.s	$fa7, $fa4
	fmadd.s	$fa0, $fa7, $fa3, $fa0
	fmul.s	$fa3, $fa2, $fa5
	fmadd.s	$fa5, $fa1, $fa6, $fa3
	fld.s	$fa3, $a3, 24
	fld.s	$fa6, $a1, 8
	fld.s	$fa7, $a3, 0
	fld.s	$ft0, $a1, 16
	fld.s	$ft1, $a3, 4
	fld.s	$ft2, $a1, 20
	fld.s	$ft3, $a3, 8
	fld.s	$ft4, $a1, 24
	fmadd.s	$fa5, $fa3, $fa6, $fa5
	fmul.s	$fa6, $ft1, $ft2
	fmadd.s	$fa6, $fa7, $ft0, $fa6
	fmadd.s	$fa6, $ft3, $ft4, $fa6
	fadd.s	$fa5, $fa5, $fa6
	fld.s	$fa6, $a2, 0
	fld.s	$fa7, $a2, 4
	fld.s	$ft0, $a3, 36
	fld.s	$ft1, $a2, 20
	fld.s	$ft2, $a3, 32
	fld.s	$ft3, $a2, 16
	fmul.s	$fa7, $fa2, $fa7
	fmul.s	$ft0, $ft0, $ft1
	fld.s	$ft1, $a2, 8
	fmadd.s	$ft0, $ft2, $ft3, $ft0
	fld.s	$ft2, $a3, 40
	fld.s	$ft3, $a2, 24
	fmadd.s	$fa6, $fa1, $fa6, $fa7
	fmadd.s	$fa6, $fa3, $ft1, $fa6
	fld.s	$fa7, $a3, 92
	fmadd.s	$ft0, $ft2, $ft3, $ft0
	fsub.s	$ft0, $ft0, $fa6
	fneg.s	$fa5, $fa5
	fmadd.s	$fa0, $fa5, $fa7, $fa0
	fld.s	$fa6, $a3, 128
	fneg.s	$fa5, $ft0
	fmadd.s	$fa0, $fa5, $fa7, $fa0
	fadd.s	$fa5, $fa4, $fa0
	fcmp.cule.s	$fcc0, $fa6, $fa5
	bceqz	$fcc0, .LBB8_2
# %bb.1:
	fld.s	$fa6, $a3, 132
	fcmp.cule.s	$fcc0, $fa5, $fa6
	bcnez	$fcc0, .LBB8_3
.LBB8_2:
	fsub.s	$fa0, $fa6, $fa4
	fmov.s	$fa5, $fa6
.LBB8_3:
	fst.s	$fa5, $a3, 84
	fld.s	$fa4, $a1, 48
	fld.s	$fa5, $a1, 52
	fld.s	$fa6, $a1, 56
	fmul.s	$fa1, $fa1, $fa4
	fmul.s	$fa2, $fa2, $fa5
	fmul.s	$fa3, $fa3, $fa6
	fmul.s	$fa1, $fa0, $fa1
	fld.s	$fa4, $a1, 0
	fmul.s	$fa2, $fa0, $fa2
	fmul.s	$fa3, $fa0, $fa3
	fld.s	$fa5, $a1, 4
	fadd.s	$fa1, $fa1, $fa4
	fld.s	$fa4, $a1, 8
	fst.s	$fa1, $a1, 0
	fadd.s	$fa1, $fa2, $fa5
	fst.s	$fa1, $a1, 4
	fadd.s	$fa1, $fa3, $fa4
	fld.s	$fa2, $a1, 32
	fld.s	$fa3, $a1, 36
	fst.s	$fa1, $a1, 8
	fld.s	$fa1, $a1, 40
	fmul.s	$fa2, $fa0, $fa2
	fmul.s	$fa3, $fa0, $fa3
	fld.s	$fa4, $a3, 48
	fmul.s	$fa1, $fa0, $fa1
	fld.s	$fa5, $a3, 52
	fld.s	$fa6, $a3, 56
	fmul.s	$fa2, $fa2, $fa4
	fld.s	$fa4, $a1, 16
	fmul.s	$fa3, $fa3, $fa5
	fmul.s	$fa1, $fa1, $fa6
	fld.s	$fa5, $a1, 20
	fadd.s	$fa2, $fa2, $fa4
	fld.s	$fa4, $a1, 24
	fst.s	$fa2, $a1, 16
	fadd.s	$fa2, $fa3, $fa5
	fst.s	$fa2, $a1, 20
	fadd.s	$fa1, $fa1, $fa4
	fst.s	$fa1, $a1, 24
	fld.s	$fa1, $a3, 16
	fld.s	$fa2, $a3, 20
	fld.s	$fa3, $a3, 24
	fld.s	$fa4, $a2, 48
	fld.s	$fa5, $a2, 52
	fld.s	$fa6, $a2, 56
	fmul.s	$fa1, $fa4, $fa1
	fmul.s	$fa2, $fa5, $fa2
	fmul.s	$fa3, $fa6, $fa3
	fmul.s	$fa1, $fa0, $fa1
	fld.s	$fa4, $a2, 0
	fmul.s	$fa2, $fa0, $fa2
	fmul.s	$fa3, $fa0, $fa3
	fld.s	$fa5, $a2, 4
	fsub.s	$fa1, $fa4, $fa1
	fld.s	$fa4, $a2, 8
	fst.s	$fa1, $a2, 0
	fsub.s	$fa1, $fa5, $fa2
	fst.s	$fa1, $a2, 4
	fsub.s	$fa1, $fa4, $fa3
	fld.s	$fa2, $a2, 32
	fld.s	$fa3, $a2, 36
	fst.s	$fa1, $a2, 8
	fld.s	$fa1, $a2, 40
	fmul.s	$fa2, $fa0, $fa2
	fmul.s	$fa3, $fa0, $fa3
	fld.s	$fa4, $a3, 64
	fmul.s	$fa0, $fa0, $fa1
	fld.s	$fa1, $a3, 68
	fld.s	$fa5, $a3, 72
	fmul.s	$fa2, $fa2, $fa4
	fld.s	$fa4, $a2, 16
	fmul.s	$fa1, $fa3, $fa1
	fmul.s	$fa0, $fa0, $fa5
	fld.s	$fa3, $a2, 20
	fadd.s	$fa2, $fa2, $fa4
	fld.s	$fa4, $a2, 24
	fst.s	$fa2, $a2, 16
	fadd.s	$fa1, $fa1, $fa3
	fst.s	$fa1, $a2, 20
	fadd.s	$fa0, $fa0, $fa4
	fst.s	$fa0, $a2, 24
	ret
.Lfunc_end8:
	.size	_ZN35btSequentialImpulseConstraintSolver33resolveSingleConstraintRowGenericER12btSolverBodyS1_RK18btSolverConstraint, .Lfunc_end8-_ZN35btSequentialImpulseConstraintSolver33resolveSingleConstraintRowGenericER12btSolverBodyS1_RK18btSolverConstraint
                                        # -- End function
	.globl	_ZN35btSequentialImpulseConstraintSolver40resolveSingleConstraintRowLowerLimitSIMDER12btSolverBodyS1_RK18btSolverConstraint # -- Begin function _ZN35btSequentialImpulseConstraintSolver40resolveSingleConstraintRowLowerLimitSIMDER12btSolverBodyS1_RK18btSolverConstraint
	.p2align	5
	.type	_ZN35btSequentialImpulseConstraintSolver40resolveSingleConstraintRowLowerLimitSIMDER12btSolverBodyS1_RK18btSolverConstraint,@function
_ZN35btSequentialImpulseConstraintSolver40resolveSingleConstraintRowLowerLimitSIMDER12btSolverBodyS1_RK18btSolverConstraint: # @_ZN35btSequentialImpulseConstraintSolver40resolveSingleConstraintRowLowerLimitSIMDER12btSolverBodyS1_RK18btSolverConstraint
# %bb.0:
	pcaddu18i	$t8, %call36(_ZN35btSequentialImpulseConstraintSolver36resolveSingleConstraintRowLowerLimitER12btSolverBodyS1_RK18btSolverConstraint)
	jr	$t8
.Lfunc_end9:
	.size	_ZN35btSequentialImpulseConstraintSolver40resolveSingleConstraintRowLowerLimitSIMDER12btSolverBodyS1_RK18btSolverConstraint, .Lfunc_end9-_ZN35btSequentialImpulseConstraintSolver40resolveSingleConstraintRowLowerLimitSIMDER12btSolverBodyS1_RK18btSolverConstraint
                                        # -- End function
	.globl	_ZN35btSequentialImpulseConstraintSolver36resolveSingleConstraintRowLowerLimitER12btSolverBodyS1_RK18btSolverConstraint # -- Begin function _ZN35btSequentialImpulseConstraintSolver36resolveSingleConstraintRowLowerLimitER12btSolverBodyS1_RK18btSolverConstraint
	.p2align	5
	.type	_ZN35btSequentialImpulseConstraintSolver36resolveSingleConstraintRowLowerLimitER12btSolverBodyS1_RK18btSolverConstraint,@function
_ZN35btSequentialImpulseConstraintSolver36resolveSingleConstraintRowLowerLimitER12btSolverBodyS1_RK18btSolverConstraint: # @_ZN35btSequentialImpulseConstraintSolver36resolveSingleConstraintRowLowerLimitER12btSolverBodyS1_RK18btSolverConstraint
# %bb.0:
	fld.s	$fa0, $a3, 120
	fld.s	$fa3, $a3, 84
	fld.s	$fa4, $a3, 124
	fld.s	$fa1, $a3, 16
	fld.s	$fa2, $a3, 20
	fld.s	$fa5, $a1, 4
	fld.s	$fa6, $a1, 0
	fneg.s	$fa7, $fa3
	fmadd.s	$fa0, $fa7, $fa4, $fa0
	fmul.s	$fa4, $fa2, $fa5
	fmadd.s	$fa4, $fa1, $fa6, $fa4
	fld.s	$fa5, $a3, 24
	fld.s	$fa6, $a1, 8
	fld.s	$fa7, $a3, 0
	fld.s	$ft0, $a1, 16
	fld.s	$ft1, $a3, 4
	fld.s	$ft2, $a1, 20
	fld.s	$ft3, $a3, 8
	fld.s	$ft4, $a1, 24
	fmadd.s	$fa4, $fa5, $fa6, $fa4
	fmul.s	$fa6, $ft1, $ft2
	fmadd.s	$fa6, $fa7, $ft0, $fa6
	fmadd.s	$fa6, $ft3, $ft4, $fa6
	fadd.s	$fa4, $fa4, $fa6
	fld.s	$fa6, $a2, 0
	fld.s	$fa7, $a2, 4
	fld.s	$ft0, $a3, 36
	fld.s	$ft1, $a2, 20
	fld.s	$ft2, $a3, 32
	fld.s	$ft3, $a2, 16
	fmul.s	$fa7, $fa2, $fa7
	fmul.s	$ft0, $ft0, $ft1
	fld.s	$ft1, $a2, 8
	fmadd.s	$ft0, $ft2, $ft3, $ft0
	fld.s	$ft2, $a3, 40
	fld.s	$ft3, $a2, 24
	fmadd.s	$fa6, $fa1, $fa6, $fa7
	fmadd.s	$fa6, $fa5, $ft1, $fa6
	fld.s	$fa7, $a3, 92
	fmadd.s	$ft0, $ft2, $ft3, $ft0
	fsub.s	$fa6, $ft0, $fa6
	fneg.s	$fa4, $fa4
	fmadd.s	$fa0, $fa4, $fa7, $fa0
	fld.s	$fa4, $a3, 128
	fneg.s	$fa6, $fa6
	fmadd.s	$fa0, $fa6, $fa7, $fa0
	fadd.s	$fa6, $fa3, $fa0
	fsub.s	$fa3, $fa4, $fa3
	fcmp.clt.s	$fcc0, $fa6, $fa4
	fsel	$fa4, $fa6, $fa4, $fcc0
	fst.s	$fa4, $a3, 84
	fld.s	$fa4, $a1, 48
	fld.s	$fa6, $a1, 52
	fld.s	$fa7, $a1, 56
	fsel	$fa0, $fa0, $fa3, $fcc0
	fmul.s	$fa1, $fa1, $fa4
	fmul.s	$fa2, $fa2, $fa6
	fmul.s	$fa3, $fa5, $fa7
	fmul.s	$fa1, $fa1, $fa0
	fld.s	$fa4, $a1, 0
	fmul.s	$fa2, $fa0, $fa2
	fmul.s	$fa3, $fa0, $fa3
	fld.s	$fa5, $a1, 4
	fadd.s	$fa1, $fa1, $fa4
	fld.s	$fa4, $a1, 8
	fst.s	$fa1, $a1, 0
	fadd.s	$fa1, $fa2, $fa5
	fst.s	$fa1, $a1, 4
	fadd.s	$fa1, $fa3, $fa4
	fld.s	$fa2, $a1, 32
	fld.s	$fa3, $a1, 36
	fst.s	$fa1, $a1, 8
	fld.s	$fa1, $a1, 40
	fmul.s	$fa2, $fa0, $fa2
	fmul.s	$fa3, $fa0, $fa3
	fld.s	$fa4, $a3, 48
	fmul.s	$fa1, $fa0, $fa1
	fld.s	$fa5, $a3, 52
	fld.s	$fa6, $a3, 56
	fmul.s	$fa2, $fa2, $fa4
	fld.s	$fa4, $a1, 16
	fmul.s	$fa3, $fa3, $fa5
	fmul.s	$fa1, $fa1, $fa6
	fld.s	$fa5, $a1, 20
	fadd.s	$fa2, $fa2, $fa4
	fld.s	$fa4, $a1, 24
	fst.s	$fa2, $a1, 16
	fadd.s	$fa2, $fa3, $fa5
	fst.s	$fa2, $a1, 20
	fadd.s	$fa1, $fa1, $fa4
	fst.s	$fa1, $a1, 24
	fld.s	$fa1, $a3, 16
	fld.s	$fa2, $a3, 20
	fld.s	$fa3, $a3, 24
	fld.s	$fa4, $a2, 48
	fld.s	$fa5, $a2, 52
	fld.s	$fa6, $a2, 56
	fmul.s	$fa1, $fa4, $fa1
	fmul.s	$fa2, $fa5, $fa2
	fmul.s	$fa3, $fa6, $fa3
	fmul.s	$fa1, $fa0, $fa1
	fld.s	$fa4, $a2, 0
	fmul.s	$fa2, $fa0, $fa2
	fmul.s	$fa3, $fa0, $fa3
	fld.s	$fa5, $a2, 4
	fsub.s	$fa1, $fa4, $fa1
	fld.s	$fa4, $a2, 8
	fst.s	$fa1, $a2, 0
	fsub.s	$fa1, $fa5, $fa2
	fst.s	$fa1, $a2, 4
	fsub.s	$fa1, $fa4, $fa3
	fld.s	$fa2, $a2, 32
	fld.s	$fa3, $a2, 36
	fst.s	$fa1, $a2, 8
	fld.s	$fa1, $a2, 40
	fmul.s	$fa2, $fa0, $fa2
	fmul.s	$fa3, $fa0, $fa3
	fld.s	$fa4, $a3, 64
	fmul.s	$fa0, $fa0, $fa1
	fld.s	$fa1, $a3, 68
	fld.s	$fa5, $a3, 72
	fmul.s	$fa2, $fa2, $fa4
	fld.s	$fa4, $a2, 16
	fmul.s	$fa1, $fa3, $fa1
	fmul.s	$fa0, $fa0, $fa5
	fld.s	$fa3, $a2, 20
	fadd.s	$fa2, $fa2, $fa4
	fld.s	$fa4, $a2, 24
	fst.s	$fa2, $a2, 16
	fadd.s	$fa1, $fa1, $fa3
	fst.s	$fa1, $a2, 20
	fadd.s	$fa0, $fa0, $fa4
	fst.s	$fa0, $a2, 24
	ret
.Lfunc_end10:
	.size	_ZN35btSequentialImpulseConstraintSolver36resolveSingleConstraintRowLowerLimitER12btSolverBodyS1_RK18btSolverConstraint, .Lfunc_end10-_ZN35btSequentialImpulseConstraintSolver36resolveSingleConstraintRowLowerLimitER12btSolverBodyS1_RK18btSolverConstraint
                                        # -- End function
	.globl	_ZN35btSequentialImpulseConstraintSolver43resolveSplitPenetrationImpulseCacheFriendlyER12btSolverBodyS1_RK18btSolverConstraint # -- Begin function _ZN35btSequentialImpulseConstraintSolver43resolveSplitPenetrationImpulseCacheFriendlyER12btSolverBodyS1_RK18btSolverConstraint
	.p2align	5
	.type	_ZN35btSequentialImpulseConstraintSolver43resolveSplitPenetrationImpulseCacheFriendlyER12btSolverBodyS1_RK18btSolverConstraint,@function
_ZN35btSequentialImpulseConstraintSolver43resolveSplitPenetrationImpulseCacheFriendlyER12btSolverBodyS1_RK18btSolverConstraint: # @_ZN35btSequentialImpulseConstraintSolver43resolveSplitPenetrationImpulseCacheFriendlyER12btSolverBodyS1_RK18btSolverConstraint
# %bb.0:
	fld.s	$fa2, $a3, 136
	movgr2fr.w	$fa0, $zero
	fcmp.ceq.s	$fcc0, $fa2, $fa0
	bcnez	$fcc0, .LBB11_5
# %bb.1:
	fld.s	$fa0, $a3, 80
	pcalau12i	$a0, %pc_hi20(gNumSplitImpulseRecoveries)
	ld.w	$a4, $a0, %pc_lo12(gNumSplitImpulseRecoveries)
	fld.s	$fa3, $a3, 124
	fneg.s	$fa4, $fa0
	fld.s	$fa1, $a3, 20
	fld.s	$fa5, $a1, 84
	fmadd.s	$fa4, $fa4, $fa3, $fa2
	fld.s	$fa2, $a3, 16
	fld.s	$fa6, $a1, 80
	fmul.s	$fa5, $fa1, $fa5
	fld.s	$fa3, $a3, 24
	fld.s	$fa7, $a1, 88
	fmadd.s	$fa5, $fa2, $fa6, $fa5
	fld.s	$fa6, $a3, 4
	fld.s	$ft0, $a1, 100
	fmadd.s	$fa5, $fa3, $fa7, $fa5
	fld.s	$fa7, $a3, 0
	fld.s	$ft1, $a1, 96
	fmul.s	$fa6, $fa6, $ft0
	fld.s	$ft0, $a3, 8
	fld.s	$ft2, $a1, 104
	fmadd.s	$fa6, $fa7, $ft1, $fa6
	fld.s	$fa7, $a2, 84
	fld.s	$ft1, $a2, 80
	fmadd.s	$fa6, $ft0, $ft2, $fa6
	fadd.s	$fa5, $fa5, $fa6
	fmul.s	$fa6, $fa1, $fa7
	fmadd.s	$fa6, $fa2, $ft1, $fa6
	fld.s	$fa7, $a3, 36
	fld.s	$ft0, $a2, 100
	fld.s	$ft1, $a3, 32
	fld.s	$ft2, $a2, 96
	addi.d	$a4, $a4, 1
	fmul.s	$fa7, $fa7, $ft0
	fld.s	$ft0, $a2, 88
	fmadd.s	$fa7, $ft1, $ft2, $fa7
	fld.s	$ft1, $a3, 40
	fld.s	$ft2, $a2, 104
	st.w	$a4, $a0, %pc_lo12(gNumSplitImpulseRecoveries)
	fmadd.s	$fa6, $fa3, $ft0, $fa6
	fld.s	$ft0, $a3, 92
	fmadd.s	$fa7, $ft1, $ft2, $fa7
	fsub.s	$fa6, $fa7, $fa6
	fneg.s	$fa5, $fa5
	fmadd.s	$fa4, $fa5, $ft0, $fa4
	fld.s	$fa5, $a3, 128
	fneg.s	$fa6, $fa6
	fmadd.s	$fa4, $fa6, $ft0, $fa4
	fadd.s	$fa6, $fa0, $fa4
	fsub.s	$fa0, $fa5, $fa0
	ld.d	$a0, $a1, 72
	fcmp.clt.s	$fcc0, $fa6, $fa5
	fsel	$fa5, $fa6, $fa5, $fcc0
	fsel	$fa0, $fa4, $fa0, $fcc0
	fst.s	$fa5, $a3, 80
	beqz	$a0, .LBB11_3
# %bb.2:
	fld.s	$fa4, $a1, 48
	fld.s	$fa5, $a1, 52
	fld.s	$fa6, $a1, 56
	fmul.s	$fa2, $fa2, $fa4
	fmul.s	$fa1, $fa1, $fa5
	fmul.s	$fa3, $fa3, $fa6
	fmul.s	$fa2, $fa0, $fa2
	fld.s	$fa4, $a1, 80
	fmul.s	$fa1, $fa0, $fa1
	fmul.s	$fa3, $fa0, $fa3
	fld.s	$fa5, $a1, 84
	fadd.s	$fa2, $fa2, $fa4
	fst.s	$fa2, $a1, 80
	fld.s	$fa2, $a1, 88
	fadd.s	$fa1, $fa1, $fa5
	fst.s	$fa1, $a1, 84
	fld.s	$fa1, $a1, 32
	fadd.s	$fa2, $fa3, $fa2
	fld.s	$fa3, $a1, 36
	fst.s	$fa2, $a1, 88
	fmul.s	$fa1, $fa0, $fa1
	fld.s	$fa2, $a3, 48
	fmul.s	$fa3, $fa0, $fa3
	fld.s	$fa4, $a3, 52
	fld.s	$fa5, $a1, 40
	fmul.s	$fa1, $fa1, $fa2
	fld.s	$fa2, $a3, 56
	fmul.s	$fa3, $fa3, $fa4
	fld.s	$fa4, $a1, 96
	fmul.s	$fa5, $fa0, $fa5
	fmul.s	$fa2, $fa5, $fa2
	fld.s	$fa5, $a1, 100
	fadd.s	$fa1, $fa1, $fa4
	fld.s	$fa4, $a1, 104
	fst.s	$fa1, $a1, 96
	fadd.s	$fa1, $fa3, $fa5
	fst.s	$fa1, $a1, 100
	fadd.s	$fa1, $fa2, $fa4
	fst.s	$fa1, $a1, 104
.LBB11_3:                               # %_ZN12btSolverBody24internalApplyPushImpulseERK9btVector3S2_f.exit
	ld.d	$a0, $a2, 72
	beqz	$a0, .LBB11_5
# %bb.4:
	fld.s	$fa1, $a2, 48
	fld.s	$fa2, $a3, 16
	fld.s	$fa3, $a2, 52
	fld.s	$fa4, $a3, 20
	fld.s	$fa5, $a3, 24
	fld.s	$fa6, $a2, 56
	fmul.s	$fa1, $fa1, $fa2
	fmul.s	$fa2, $fa3, $fa4
	fmul.s	$fa3, $fa6, $fa5
	fmul.s	$fa1, $fa0, $fa1
	fld.s	$fa4, $a2, 80
	fmul.s	$fa2, $fa0, $fa2
	fmul.s	$fa3, $fa0, $fa3
	fld.s	$fa5, $a2, 84
	fsub.s	$fa1, $fa4, $fa1
	fld.s	$fa4, $a2, 88
	fst.s	$fa1, $a2, 80
	fsub.s	$fa1, $fa5, $fa2
	fst.s	$fa1, $a2, 84
	fsub.s	$fa1, $fa4, $fa3
	fld.s	$fa2, $a2, 32
	fld.s	$fa3, $a2, 36
	fst.s	$fa1, $a2, 88
	fld.s	$fa1, $a2, 40
	fmul.s	$fa2, $fa0, $fa2
	fmul.s	$fa3, $fa0, $fa3
	fld.s	$fa4, $a3, 64
	fmul.s	$fa0, $fa0, $fa1
	fld.s	$fa1, $a3, 68
	fld.s	$fa5, $a3, 72
	fmul.s	$fa2, $fa2, $fa4
	fld.s	$fa4, $a2, 96
	fmul.s	$fa1, $fa3, $fa1
	fmul.s	$fa0, $fa0, $fa5
	fld.s	$fa3, $a2, 100
	fadd.s	$fa2, $fa2, $fa4
	fld.s	$fa4, $a2, 104
	fst.s	$fa2, $a2, 96
	fadd.s	$fa1, $fa1, $fa3
	fst.s	$fa1, $a2, 100
	fadd.s	$fa0, $fa0, $fa4
	fst.s	$fa0, $a2, 104
.LBB11_5:                               # %_ZN12btSolverBody24internalApplyPushImpulseERK9btVector3S2_f.exit64
	ret
.Lfunc_end11:
	.size	_ZN35btSequentialImpulseConstraintSolver43resolveSplitPenetrationImpulseCacheFriendlyER12btSolverBodyS1_RK18btSolverConstraint, .Lfunc_end11-_ZN35btSequentialImpulseConstraintSolver43resolveSplitPenetrationImpulseCacheFriendlyER12btSolverBodyS1_RK18btSolverConstraint
                                        # -- End function
	.globl	_ZN35btSequentialImpulseConstraintSolver27resolveSplitPenetrationSIMDER12btSolverBodyS1_RK18btSolverConstraint # -- Begin function _ZN35btSequentialImpulseConstraintSolver27resolveSplitPenetrationSIMDER12btSolverBodyS1_RK18btSolverConstraint
	.p2align	5
	.type	_ZN35btSequentialImpulseConstraintSolver27resolveSplitPenetrationSIMDER12btSolverBodyS1_RK18btSolverConstraint,@function
_ZN35btSequentialImpulseConstraintSolver27resolveSplitPenetrationSIMDER12btSolverBodyS1_RK18btSolverConstraint: # @_ZN35btSequentialImpulseConstraintSolver27resolveSplitPenetrationSIMDER12btSolverBodyS1_RK18btSolverConstraint
# %bb.0:
	pcaddu18i	$t8, %call36(_ZN35btSequentialImpulseConstraintSolver43resolveSplitPenetrationImpulseCacheFriendlyER12btSolverBodyS1_RK18btSolverConstraint)
	jr	$t8
.Lfunc_end12:
	.size	_ZN35btSequentialImpulseConstraintSolver27resolveSplitPenetrationSIMDER12btSolverBodyS1_RK18btSolverConstraint, .Lfunc_end12-_ZN35btSequentialImpulseConstraintSolver27resolveSplitPenetrationSIMDER12btSolverBodyS1_RK18btSolverConstraint
                                        # -- End function
	.globl	_ZN35btSequentialImpulseConstraintSolver7btRand2Ev # -- Begin function _ZN35btSequentialImpulseConstraintSolver7btRand2Ev
	.p2align	5
	.type	_ZN35btSequentialImpulseConstraintSolver7btRand2Ev,@function
_ZN35btSequentialImpulseConstraintSolver7btRand2Ev: # @_ZN35btSequentialImpulseConstraintSolver7btRand2Ev
# %bb.0:
	ld.d	$a1, $a0, 232
	lu12i.w	$a2, 406
	ori	$a2, $a2, 1549
	mul.d	$a1, $a1, $a2
	lu12i.w	$a2, 247535
	ori	$a2, $a2, 863
	add.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a1, $a0, 232
	move	$a0, $a1
	ret
.Lfunc_end13:
	.size	_ZN35btSequentialImpulseConstraintSolver7btRand2Ev, .Lfunc_end13-_ZN35btSequentialImpulseConstraintSolver7btRand2Ev
                                        # -- End function
	.globl	_ZN35btSequentialImpulseConstraintSolver10btRandInt2Ei # -- Begin function _ZN35btSequentialImpulseConstraintSolver10btRandInt2Ei
	.p2align	5
	.type	_ZN35btSequentialImpulseConstraintSolver10btRandInt2Ei,@function
_ZN35btSequentialImpulseConstraintSolver10btRandInt2Ei: # @_ZN35btSequentialImpulseConstraintSolver10btRandInt2Ei
# %bb.0:
	ld.d	$a2, $a0, 232
	lu12i.w	$a3, 406
	ori	$a3, $a3, 1549
	mul.d	$a2, $a2, $a3
	lu12i.w	$a3, 247535
	ori	$a3, $a3, 863
	add.d	$a2, $a2, $a3
	bstrpick.d	$a2, $a2, 31, 0
	lu12i.w	$a3, 16
	st.d	$a2, $a0, 232
	bltu	$a3, $a1, .LBB14_6
# %bb.1:
	srli.d	$a0, $a2, 16
	ori	$a3, $zero, 256
	xor	$a2, $a0, $a2
	bltu	$a3, $a1, .LBB14_6
# %bb.2:
	srli.d	$a0, $a2, 8
	ori	$a3, $zero, 16
	xor	$a2, $a0, $a2
	bltu	$a3, $a1, .LBB14_6
# %bb.3:
	srli.d	$a0, $a2, 4
	ori	$a3, $zero, 4
	xor	$a2, $a0, $a2
	bltu	$a3, $a1, .LBB14_6
# %bb.4:
	srli.d	$a0, $a2, 2
	ori	$a3, $zero, 2
	xor	$a2, $a0, $a2
	bltu	$a3, $a1, .LBB14_6
# %bb.5:
	srli.d	$a0, $a2, 1
	xor	$a2, $a0, $a2
.LBB14_6:
	mod.du	$a0, $a2, $a1
	addi.w	$a0, $a0, 0
	ret
.Lfunc_end14:
	.size	_ZN35btSequentialImpulseConstraintSolver10btRandInt2Ei, .Lfunc_end14-_ZN35btSequentialImpulseConstraintSolver10btRandInt2Ei
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN35btSequentialImpulseConstraintSolver14initSolverBodyEP12btSolverBodyP17btCollisionObject
.LCPI15_0:
	.word	0x3f800000                      # float 1
	.word	0x3f800000                      # float 1
	.word	0x3f800000                      # float 1
	.word	0x00000000                      # float 0
	.text
	.globl	_ZN35btSequentialImpulseConstraintSolver14initSolverBodyEP12btSolverBodyP17btCollisionObject
	.p2align	5
	.type	_ZN35btSequentialImpulseConstraintSolver14initSolverBodyEP12btSolverBodyP17btCollisionObject,@function
_ZN35btSequentialImpulseConstraintSolver14initSolverBodyEP12btSolverBodyP17btCollisionObject: # @_ZN35btSequentialImpulseConstraintSolver14initSolverBodyEP12btSolverBodyP17btCollisionObject
# %bb.0:
	beqz	$a2, .LBB15_3
# %bb.1:
	ld.w	$a0, $a2, 256
	addi.d	$a0, $a0, -2
	sltui	$a0, $a0, 1
	maskeqz	$a0, $a2, $a0
	xvrepli.b	$xr0, 0
	xvst	$xr0, $a1, 0
	xvst	$xr0, $a1, 80
	beqz	$a0, .LBB15_4
.LBB15_2:
	fld.s	$fa0, $a0, 360
	fld.s	$fa1, $a0, 380
	fld.s	$fa2, $a0, 384
	fld.s	$fa3, $a0, 388
	fmul.s	$fa1, $fa0, $fa1
	fmul.s	$fa2, $fa0, $fa2
	fmul.s	$fa0, $fa0, $fa3
	movfr2gr.s	$a2, $fa1
	movfr2gr.s	$a3, $fa2
	bstrins.d	$a2, $a3, 63, 32
	movfr2gr.s	$a3, $fa0
	bstrpick.d	$a3, $a3, 31, 0
	st.d	$a2, $a1, 48
	st.d	$a3, $a1, 56
	st.d	$a0, $a1, 72
	vld	$vr0, $a0, 364
	vst	$vr0, $a1, 32
	ret
.LBB15_3:
	move	$a0, $zero
	xvrepli.b	$xr0, 0
	xvst	$xr0, $a1, 0
	xvst	$xr0, $a1, 80
	bnez	$a0, .LBB15_2
.LBB15_4:
	pcalau12i	$a0, %pc_hi20(.LCPI15_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI15_0)
	st.d	$zero, $a1, 72
	vrepli.b	$vr1, 0
	vst	$vr1, $a1, 48
	vst	$vr0, $a1, 32
	ret
.Lfunc_end15:
	.size	_ZN35btSequentialImpulseConstraintSolver14initSolverBodyEP12btSolverBodyP17btCollisionObject, .Lfunc_end15-_ZN35btSequentialImpulseConstraintSolver14initSolverBodyEP12btSolverBodyP17btCollisionObject
                                        # -- End function
	.globl	_ZN35btSequentialImpulseConstraintSolver16restitutionCurveEff # -- Begin function _ZN35btSequentialImpulseConstraintSolver16restitutionCurveEff
	.p2align	5
	.type	_ZN35btSequentialImpulseConstraintSolver16restitutionCurveEff,@function
_ZN35btSequentialImpulseConstraintSolver16restitutionCurveEff: # @_ZN35btSequentialImpulseConstraintSolver16restitutionCurveEff
# %bb.0:
	fneg.s	$fa0, $fa0
	fmul.s	$fa0, $fa1, $fa0
	ret
.Lfunc_end16:
	.size	_ZN35btSequentialImpulseConstraintSolver16restitutionCurveEff, .Lfunc_end16-_ZN35btSequentialImpulseConstraintSolver16restitutionCurveEff
                                        # -- End function
	.globl	_Z24applyAnisotropicFrictionP17btCollisionObjectR9btVector3 # -- Begin function _Z24applyAnisotropicFrictionP17btCollisionObjectR9btVector3
	.p2align	5
	.type	_Z24applyAnisotropicFrictionP17btCollisionObjectR9btVector3,@function
_Z24applyAnisotropicFrictionP17btCollisionObjectR9btVector3: # @_Z24applyAnisotropicFrictionP17btCollisionObjectR9btVector3
# %bb.0:
	beqz	$a0, .LBB17_3
# %bb.1:
	ld.bu	$a2, $a0, 184
	beqz	$a2, .LBB17_3
# %bb.2:
	fld.s	$fa0, $a0, 8
	fld.s	$fa1, $a0, 24
	fld.s	$fa2, $a1, 4
	fld.s	$fa3, $a1, 0
	fld.s	$fa4, $a0, 40
	fld.s	$fa5, $a1, 8
	fmul.s	$fa6, $fa1, $fa2
	fld.s	$fa7, $a0, 28
	fmadd.s	$fa6, $fa0, $fa3, $fa6
	fmadd.s	$fa6, $fa4, $fa5, $fa6
	fld.s	$ft0, $a0, 12
	fmul.s	$ft1, $fa2, $fa7
	fld.s	$ft2, $a0, 44
	fld.s	$ft3, $a0, 32
	fld.s	$ft4, $a0, 16
	fmadd.s	$ft1, $ft0, $fa3, $ft1
	fmadd.s	$ft1, $ft2, $fa5, $ft1
	fmul.s	$fa2, $fa2, $ft3
	fmadd.s	$fa2, $ft4, $fa3, $fa2
	fld.s	$fa3, $a0, 48
	fld.s	$ft5, $a0, 168
	fld.s	$ft6, $a0, 172
	fld.s	$ft7, $a0, 176
	fmadd.s	$fa2, $fa3, $fa5, $fa2
	fmul.s	$fa5, $fa6, $ft5
	fmul.s	$fa6, $ft1, $ft6
	fmul.s	$fa2, $fa2, $ft7
	fmul.s	$ft0, $ft0, $fa6
	fmadd.s	$fa0, $fa0, $fa5, $ft0
	fmadd.s	$fa0, $ft4, $fa2, $fa0
	fmul.s	$fa7, $fa7, $fa6
	fmadd.s	$fa1, $fa1, $fa5, $fa7
	fmadd.s	$fa1, $ft3, $fa2, $fa1
	fmul.s	$fa6, $ft2, $fa6
	fmadd.s	$fa4, $fa4, $fa5, $fa6
	fmadd.s	$fa2, $fa3, $fa2, $fa4
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a2, $fa1
	bstrins.d	$a0, $a2, 63, 32
	movfr2gr.s	$a2, $fa2
	bstrpick.d	$a2, $a2, 31, 0
	st.d	$a0, $a1, 0
	st.d	$a2, $a1, 8
.LBB17_3:
	ret
.Lfunc_end17:
	.size	_Z24applyAnisotropicFrictionP17btCollisionObjectR9btVector3, .Lfunc_end17-_Z24applyAnisotropicFrictionP17btCollisionObjectR9btVector3
                                        # -- End function
	.globl	_ZN35btSequentialImpulseConstraintSolver21addFrictionConstraintERK9btVector3iiiR15btManifoldPointS2_S2_P17btCollisionObjectS6_f # -- Begin function _ZN35btSequentialImpulseConstraintSolver21addFrictionConstraintERK9btVector3iiiR15btManifoldPointS2_S2_P17btCollisionObjectS6_f
	.p2align	5
	.type	_ZN35btSequentialImpulseConstraintSolver21addFrictionConstraintERK9btVector3iiiR15btManifoldPointS2_S2_P17btCollisionObjectS6_f,@function
_ZN35btSequentialImpulseConstraintSolver21addFrictionConstraintERK9btVector3iiiR15btManifoldPointS2_S2_P17btCollisionObjectS6_f: # @_ZN35btSequentialImpulseConstraintSolver21addFrictionConstraintERK9btVector3iiiR15btManifoldPointS2_S2_P17btCollisionObjectS6_f
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
	fst.d	$fs0, $sp, 64                   # 8-byte Folded Spill
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
	ld.d	$s3, $sp, 160
	move	$s1, $a0
	ld.d	$s8, $sp, 168
	ld.w	$s7, $s3, 256
	ld.w	$s4, $a0, 108
	ld.w	$a0, $a0, 112
	ld.w	$s6, $s8, 256
	fmov.s	$fs0, $fa0
	move	$s0, $a7
	move	$s2, $a6
	st.d	$a5, $sp, 56                    # 8-byte Folded Spill
	st.d	$a4, $sp, 48                    # 8-byte Folded Spill
	st.d	$a3, $sp, 40                    # 8-byte Folded Spill
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	move	$s5, $a1
	bne	$s4, $a0, .LBB18_4
# %bb.1:
	st.d	$s5, $sp, 24                    # 8-byte Folded Spill
	sltui	$a0, $s4, 1
	slli.w	$a1, $s4, 1
	masknez	$a1, $a1, $a0
	ori	$a2, $zero, 1
	maskeqz	$a0, $a2, $a0
	or	$s5, $a0, $a1
	bge	$s4, $s5, .LBB18_5
# %bb.2:
	st.d	$s7, $sp, 8                     # 8-byte Folded Spill
	st.d	$s6, $sp, 16                    # 8-byte Folded Spill
	beqz	$s5, .LBB18_6
# %bb.3:
	slli.d	$a0, $s5, 7
	alsl.d	$a0, $s5, $a0, 4
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, 108
	move	$s7, $a0
	bgtz	$a1, .LBB18_7
	b	.LBB18_9
.LBB18_4:
	move	$a0, $s4
	b	.LBB18_14
.LBB18_5:
	move	$a0, $s4
	b	.LBB18_13
.LBB18_6:
	move	$s7, $zero
	move	$a1, $s4
	blez	$a1, .LBB18_9
.LBB18_7:                               # %.lr.ph.i.i.i
	move	$s6, $zero
	slli.d	$a0, $a1, 7
	alsl.d	$fp, $a1, $a0, 4
	.p2align	4, , 16
.LBB18_8:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s1, 120
	add.d	$a0, $s7, $s6
	add.d	$a1, $a1, $s6
	ori	$a2, $zero, 144
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	addi.d	$s6, $s6, 144
	bne	$fp, $s6, .LBB18_8
.LBB18_9:                               # %_ZNK20btAlignedObjectArrayI18btSolverConstraintE4copyEiiPS0_.exit.i.i
	ld.d	$a0, $s1, 120
	beqz	$a0, .LBB18_12
# %bb.10:                               # %_ZNK20btAlignedObjectArrayI18btSolverConstraintE4copyEiiPS0_.exit.i.i
	ld.b	$a1, $s1, 128
	andi	$a1, $a1, 1
	beqz	$a1, .LBB18_12
# %bb.11:
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.LBB18_12:                              # %_ZN20btAlignedObjectArrayI18btSolverConstraintE10deallocateEv.exit.i.i
	ori	$a1, $zero, 1
	ld.w	$a0, $s1, 108
	st.b	$a1, $s1, 128
	st.d	$s7, $s1, 120
	st.w	$s5, $s1, 112
	ld.d	$s6, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 8                     # 8-byte Folded Reload
.LBB18_13:                              # %_ZN20btAlignedObjectArrayI18btSolverConstraintE6expandERKS0_.exit
	ld.d	$s5, $sp, 24                    # 8-byte Folded Reload
.LBB18_14:                              # %_ZN20btAlignedObjectArrayI18btSolverConstraintE6expandERKS0_.exit
	addi.d	$a0, $a0, 1
	ld.d	$a1, $s1, 120
	st.w	$a0, $s1, 108
	ori	$a0, $zero, 144
	mul.d	$fp, $s4, $a0
	add.d	$a0, $a1, $fp
	ori	$a2, $zero, 144
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$s4, $s1, 120
	add.d	$s1, $s4, $fp
	ori	$a1, $zero, 255
	ori	$a2, $zero, 144
	move	$a0, $s1
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	vld	$vr0, $s5, 0
	vst	$vr0, $s1, 16
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	st.w	$a0, $s1, 104
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	st.w	$a0, $s1, 108
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	st.w	$a0, $s1, 100
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	fld.s	$fa0, $a0, 84
	fst.s	$fa0, $s1, 88
	st.d	$zero, $s1, 112
	st.d	$zero, $s1, 80
	fld.s	$fa4, $s1, 20
	fld.s	$fa1, $s2, 8
	fld.s	$fa2, $s2, 4
	fld.s	$fa3, $s1, 24
	fneg.s	$ft0, $fa4
	fmul.s	$fa0, $fa1, $ft0
	fld.s	$ft1, $s2, 0
	fld.s	$fa5, $s1, 16
	fmadd.s	$fa0, $fa2, $fa3, $fa0
	fneg.s	$fa6, $fa3
	fmul.s	$fa7, $ft1, $fa6
	fmadd.s	$fa1, $fa1, $fa5, $fa7
	fneg.s	$fa7, $fa5
	fmul.s	$fa2, $fa2, $fa7
	fmadd.s	$fa2, $ft1, $fa4, $fa2
	fstx.s	$fa0, $s4, $fp
	fst.s	$fa1, $s1, 4
	fst.s	$fa2, $s1, 8
	movgr2fr.w	$ft1, $zero
	ori	$a0, $zero, 2
	st.w	$zero, $s1, 12
	fmov.s	$ft4, $ft1
	fmov.s	$ft2, $ft1
	fmov.s	$ft3, $ft1
	bne	$s7, $a0, .LBB18_16
# %bb.15:
	fld.s	$ft2, $s3, 284
	fld.s	$ft3, $s3, 280
	fld.s	$ft4, $s3, 288
	fmul.s	$ft2, $fa1, $ft2
	fld.s	$ft5, $s3, 300
	fmadd.s	$ft2, $ft3, $fa0, $ft2
	fmadd.s	$ft2, $ft4, $fa2, $ft2
	fld.s	$ft3, $s3, 296
	fmul.s	$ft4, $fa1, $ft5
	fld.s	$ft5, $s3, 304
	fld.s	$ft6, $s3, 316
	fld.s	$ft7, $s3, 312
	fmadd.s	$ft3, $ft3, $fa0, $ft4
	fmadd.s	$ft3, $ft5, $fa2, $ft3
	fmul.s	$ft4, $fa1, $ft6
	fmadd.s	$ft4, $ft7, $fa0, $ft4
	fld.s	$ft5, $s3, 320
	fld.s	$ft6, $s3, 364
	fld.s	$ft7, $s3, 368
	fld.s	$ft8, $s3, 372
	fmadd.s	$ft4, $ft5, $fa2, $ft4
	fmul.s	$ft2, $ft2, $ft6
	fmul.s	$ft3, $ft3, $ft7
	fmul.s	$ft4, $ft4, $ft8
.LBB18_16:
	fst.s	$ft2, $s1, 48
	fst.s	$ft3, $s1, 52
	fst.s	$ft4, $s1, 56
	st.w	$zero, $s1, 60
	fld.s	$ft5, $s0, 8
	fld.s	$ft6, $s0, 4
	fld.s	$ft7, $s0, 0
	fmul.s	$ft8, $fa4, $ft5
	fmadd.s	$fa6, $ft6, $fa6, $ft8
	fmul.s	$ft8, $fa3, $ft7
	fmadd.s	$fa7, $ft5, $fa7, $ft8
	fmul.s	$ft5, $fa5, $ft6
	fmadd.s	$ft0, $ft7, $ft0, $ft5
	fst.s	$fa6, $s1, 32
	fst.s	$fa7, $s1, 36
	fst.s	$ft0, $s1, 40
	st.w	$zero, $s1, 44
	fmov.s	$ft7, $ft1
	fmov.s	$ft5, $ft1
	fmov.s	$ft6, $ft1
	bne	$s6, $a0, .LBB18_18
# %bb.17:
	fld.s	$ft5, $s8, 284
	fld.s	$ft6, $s8, 280
	fld.s	$ft7, $s8, 288
	fmul.s	$ft5, $fa7, $ft5
	fld.s	$ft8, $s8, 300
	fmadd.s	$ft5, $ft6, $fa6, $ft5
	fmadd.s	$ft5, $ft7, $ft0, $ft5
	fld.s	$ft6, $s8, 296
	fmul.s	$ft7, $fa7, $ft8
	fld.s	$ft8, $s8, 304
	fld.s	$ft9, $s8, 316
	fld.s	$ft10, $s8, 312
	fmadd.s	$ft6, $ft6, $fa6, $ft7
	fmadd.s	$ft6, $ft8, $ft0, $ft6
	fmul.s	$ft7, $fa7, $ft9
	fmadd.s	$ft7, $ft10, $fa6, $ft7
	fld.s	$ft8, $s8, 320
	fld.s	$ft9, $s8, 364
	fld.s	$ft10, $s8, 368
	fld.s	$ft11, $s8, 372
	fmadd.s	$ft7, $ft8, $ft0, $ft7
	fmul.s	$ft5, $ft5, $ft9
	fmul.s	$ft6, $ft6, $ft10
	fmul.s	$ft7, $ft7, $ft11
.LBB18_18:
	fst.s	$ft5, $s1, 64
	fst.s	$ft6, $s1, 68
	fst.s	$ft7, $s1, 72
	ori	$a0, $zero, 2
	st.w	$zero, $s1, 76
	fmov.s	$ft8, $ft1
	bne	$s7, $a0, .LBB18_20
# %bb.19:
	fld.s	$ft8, $s2, 4
	fld.s	$ft9, $s2, 8
	fneg.s	$ft10, $ft8
	fmul.s	$ft10, $ft4, $ft10
	fld.s	$ft11, $s2, 0
	fmadd.s	$ft10, $ft3, $ft9, $ft10
	fneg.s	$ft9, $ft9
	fmul.s	$ft9, $ft2, $ft9
	fmadd.s	$ft4, $ft4, $ft11, $ft9
	fneg.s	$ft9, $ft11
	fmul.s	$ft3, $ft3, $ft9
	fmadd.s	$ft2, $ft2, $ft8, $ft3
	fld.s	$ft3, $s5, 4
	fld.s	$ft8, $s5, 0
	fld.s	$ft9, $s5, 8
	fld.s	$ft11, $s3, 360
	fmul.s	$ft3, $ft4, $ft3
	fmadd.s	$ft3, $ft8, $ft10, $ft3
	fmadd.s	$ft2, $ft9, $ft2, $ft3
	fadd.s	$ft8, $ft11, $ft2
.LBB18_20:
	bne	$s6, $a0, .LBB18_22
# %bb.21:
	fld.s	$ft1, $s0, 4
	fld.s	$ft2, $s0, 8
	fneg.s	$ft3, $ft6
	fmul.s	$ft4, $ft7, $ft1
	fmadd.s	$ft3, $ft3, $ft2, $ft4
	fld.s	$ft4, $s0, 0
	fneg.s	$ft9, $ft5
	fneg.s	$ft7, $ft7
	fmul.s	$ft2, $ft5, $ft2
	fmadd.s	$ft2, $ft7, $ft4, $ft2
	fmul.s	$ft4, $ft6, $ft4
	fmadd.s	$ft1, $ft9, $ft1, $ft4
	fld.s	$ft4, $s5, 4
	fld.s	$ft5, $s5, 0
	fld.s	$ft6, $s5, 8
	fld.s	$ft7, $s8, 360
	fmul.s	$ft2, $ft2, $ft4
	fmadd.s	$ft2, $ft5, $ft3, $ft2
	fmadd.s	$ft1, $ft6, $ft1, $ft2
	fadd.s	$ft1, $ft7, $ft1
.LBB18_22:
	fadd.s	$ft1, $ft8, $ft1
	fdiv.s	$ft1, $fs0, $ft1
	ori	$a0, $zero, 2
	fst.s	$ft1, $s1, 92
	bne	$s7, $a0, .LBB18_25
# %bb.23:
	fld.s	$ft3, $s3, 328
	fld.s	$ft6, $s3, 332
	fld.s	$ft7, $s3, 336
	fld.s	$ft4, $s3, 344
	fld.s	$ft5, $s3, 348
	fld.s	$ft2, $s3, 352
	fmul.s	$ft6, $fa4, $ft6
	fmadd.s	$ft3, $fa5, $ft3, $ft6
	fmadd.s	$ft3, $fa3, $ft7, $ft3
	ori	$a0, $zero, 2
	beq	$s6, $a0, .LBB18_26
.LBB18_24:
	movgr2fr.w	$ft6, $zero
	fmul.s	$fa4, $fa4, $ft6
	fmadd.s	$fa4, $fa5, $ft6, $fa4
	fmadd.s	$fa3, $fa3, $ft6, $fa4
	fmov.s	$ft8, $ft6
	fmov.s	$ft7, $ft6
	b	.LBB18_27
.LBB18_25:
	movgr2fr.w	$ft2, $zero
	fmul.s	$ft3, $fa4, $ft2
	fmadd.s	$ft3, $fa5, $ft2, $ft3
	fmadd.s	$ft3, $fa3, $ft2, $ft3
	fmov.s	$ft5, $ft2
	fmov.s	$ft4, $ft2
	ori	$a0, $zero, 2
	bne	$s6, $a0, .LBB18_24
.LBB18_26:
	fld.s	$ft9, $s8, 328
	fld.s	$ft10, $s8, 332
	fld.s	$ft11, $s8, 336
	fld.s	$ft7, $s8, 344
	fld.s	$ft8, $s8, 348
	fld.s	$ft6, $s8, 352
	fmul.s	$fa4, $fa4, $ft10
	fmadd.s	$fa4, $fa5, $ft9, $fa4
	fmadd.s	$fa3, $fa3, $ft11, $fa4
.LBB18_27:
	fmul.s	$fa1, $ft5, $fa1
	fmadd.s	$fa0, $fa0, $ft4, $fa1
	fmadd.s	$fa0, $fa2, $ft2, $fa0
	fadd.s	$fa0, $ft3, $fa0
	fmul.s	$fa1, $ft8, $fa7
	fmadd.s	$fa1, $fa6, $ft7, $fa1
	fmadd.s	$fa1, $ft0, $ft6, $fa1
	fsub.s	$fa1, $fa1, $fa3
	fadd.s	$fa0, $fa0, $fa1
	fneg.s	$fa0, $fa0
	fmul.s	$fa0, $ft1, $fa0
	fst.s	$fa0, $s1, 120
	st.d	$zero, $s1, 124
	lu12i.w	$a0, 328016
	ori	$a0, $a0, 761
	st.w	$a0, $s1, 132
	move	$a0, $s1
	fld.d	$fs0, $sp, 64                   # 8-byte Folded Reload
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
.Lfunc_end18:
	.size	_ZN35btSequentialImpulseConstraintSolver21addFrictionConstraintERK9btVector3iiiR15btManifoldPointS2_S2_P17btCollisionObjectS6_f, .Lfunc_end18-_ZN35btSequentialImpulseConstraintSolver21addFrictionConstraintERK9btVector3iiiR15btManifoldPointS2_S2_P17btCollisionObjectS6_f
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN35btSequentialImpulseConstraintSolver19getOrInitSolverBodyER17btCollisionObject
.LCPI19_0:
	.word	0x3f800000                      # float 1
	.word	0x3f800000                      # float 1
	.word	0x3f800000                      # float 1
	.word	0x00000000                      # float 0
	.text
	.globl	_ZN35btSequentialImpulseConstraintSolver19getOrInitSolverBodyER17btCollisionObject
	.p2align	5
	.type	_ZN35btSequentialImpulseConstraintSolver19getOrInitSolverBodyER17btCollisionObject,@function
_ZN35btSequentialImpulseConstraintSolver19getOrInitSolverBodyER17btCollisionObject: # @_ZN35btSequentialImpulseConstraintSolver19getOrInitSolverBodyER17btCollisionObject
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
	ld.w	$fp, $a1, 224
	bgez	$fp, .LBB19_20
# %bb.1:
	move	$s0, $a0
	ld.w	$a0, $a1, 256
	ori	$a2, $zero, 2
	bne	$a0, $a2, .LBB19_7
# %bb.2:
	fld.s	$fa0, $a1, 360
	movgr2fr.w	$fa1, $zero
	fcmp.ceq.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB19_7
# %bb.3:
	move	$s2, $a1
	ld.w	$fp, $s0, 12
	ld.w	$a1, $s0, 16
	move	$a0, $fp
	bne	$fp, $a1, .LBB19_16
# %bb.4:
	sltui	$a0, $fp, 1
	slli.w	$a1, $fp, 1
	masknez	$a1, $a1, $a0
	ori	$a2, $zero, 1
	maskeqz	$a0, $a2, $a0
	or	$s3, $a0, $a1
	move	$a0, $fp
	bge	$fp, $s3, .LBB19_16
# %bb.5:
	beqz	$s3, .LBB19_8
# %bb.6:
	ori	$a0, $zero, 112
	mul.d	$a0, $s3, $a0
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 12
	move	$s1, $a0
	b	.LBB19_9
.LBB19_7:
	move	$fp, $zero
	b	.LBB19_20
.LBB19_8:
	move	$s1, $zero
	move	$a1, $fp
.LBB19_9:                               # %_ZN20btAlignedObjectArrayI12btSolverBodyE8allocateEi.exit.i.i
	blez	$a1, .LBB19_12
# %bb.10:                               # %.lr.ph.i.i.i
	move	$s4, $zero
	ori	$a0, $zero, 112
	mul.d	$s5, $a1, $a0
	.p2align	4, , 16
.LBB19_11:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 24
	add.d	$a0, $s1, $s4
	add.d	$a1, $a1, $s4
	ori	$a2, $zero, 112
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	addi.d	$s4, $s4, 112
	bne	$s5, $s4, .LBB19_11
.LBB19_12:                              # %_ZNK20btAlignedObjectArrayI12btSolverBodyE4copyEiiPS0_.exit.i.i
	ld.d	$a0, $s0, 24
	beqz	$a0, .LBB19_15
# %bb.13:                               # %_ZNK20btAlignedObjectArrayI12btSolverBodyE4copyEiiPS0_.exit.i.i
	ld.b	$a1, $s0, 32
	andi	$a1, $a1, 1
	beqz	$a1, .LBB19_15
# %bb.14:
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.LBB19_15:                              # %_ZN20btAlignedObjectArrayI12btSolverBodyE10deallocateEv.exit.i.i
	ori	$a1, $zero, 1
	ld.w	$a0, $s0, 12
	st.b	$a1, $s0, 32
	st.d	$s1, $s0, 24
	st.w	$s3, $s0, 16
.LBB19_16:                              # %_ZN20btAlignedObjectArrayI12btSolverBodyE6expandERKS0_.exit
	addi.d	$a0, $a0, 1
	ld.d	$a1, $s0, 24
	st.w	$a0, $s0, 12
	ori	$a0, $zero, 112
	mul.d	$s1, $fp, $a0
	add.d	$a0, $a1, $s1
	ori	$a2, $zero, 112
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 24
	add.d	$a0, $a1, $s1
	ld.w	$a2, $s2, 256
	xvrepli.b	$xr0, 0
	xvstx	$xr0, $a1, $s1
	ori	$a1, $zero, 2
	xvst	$xr0, $a0, 80
	bne	$a2, $a1, .LBB19_18
# %bb.17:
	fld.s	$fa0, $s2, 360
	fld.s	$fa1, $s2, 380
	fld.s	$fa2, $s2, 384
	fld.s	$fa3, $s2, 388
	fmul.s	$fa1, $fa0, $fa1
	fmul.s	$fa2, $fa0, $fa2
	fmul.s	$fa0, $fa0, $fa3
	movfr2gr.s	$a1, $fa1
	movfr2gr.s	$a2, $fa2
	bstrins.d	$a1, $a2, 63, 32
	movfr2gr.s	$a2, $fa0
	bstrpick.d	$a2, $a2, 31, 0
	st.d	$a1, $a0, 48
	st.d	$a2, $a0, 56
	st.d	$s2, $a0, 72
	vld	$vr0, $s2, 364
	b	.LBB19_19
.LBB19_18:
	pcalau12i	$a1, %pc_hi20(.LCPI19_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI19_0)
	st.d	$zero, $a0, 72
	vrepli.b	$vr1, 0
	vst	$vr1, $a0, 48
.LBB19_19:                              # %_ZN35btSequentialImpulseConstraintSolver14initSolverBodyEP12btSolverBodyP17btCollisionObject.exit
	vst	$vr0, $a0, 32
	st.w	$fp, $s2, 224
.LBB19_20:                              # %.critedge
	move	$a0, $fp
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
.Lfunc_end19:
	.size	_ZN35btSequentialImpulseConstraintSolver19getOrInitSolverBodyER17btCollisionObject, .Lfunc_end19-_ZN35btSequentialImpulseConstraintSolver19getOrInitSolverBodyER17btCollisionObject
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZN35btSequentialImpulseConstraintSolver14convertContactEP20btPersistentManifoldRK19btContactSolverInfo
.LCPI20_0:
	.word	0x34000000                      # float 1.1920929E-7
.LCPI20_1:
	.word	0x3f3504f3                      # float 0.707106769
	.text
	.globl	_ZN35btSequentialImpulseConstraintSolver14convertContactEP20btPersistentManifoldRK19btContactSolverInfo
	.p2align	5
	.type	_ZN35btSequentialImpulseConstraintSolver14convertContactEP20btPersistentManifoldRK19btContactSolverInfo,@function
_ZN35btSequentialImpulseConstraintSolver14convertContactEP20btPersistentManifoldRK19btContactSolverInfo: # @_ZN35btSequentialImpulseConstraintSolver14convertContactEP20btPersistentManifoldRK19btContactSolverInfo
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -304
	.cfi_def_cfa_offset 304
	st.d	$ra, $sp, 296                   # 8-byte Folded Spill
	st.d	$fp, $sp, 288                   # 8-byte Folded Spill
	st.d	$s0, $sp, 280                   # 8-byte Folded Spill
	st.d	$s1, $sp, 272                   # 8-byte Folded Spill
	st.d	$s2, $sp, 264                   # 8-byte Folded Spill
	st.d	$s3, $sp, 256                   # 8-byte Folded Spill
	st.d	$s4, $sp, 248                   # 8-byte Folded Spill
	st.d	$s5, $sp, 240                   # 8-byte Folded Spill
	st.d	$s6, $sp, 232                   # 8-byte Folded Spill
	st.d	$s7, $sp, 224                   # 8-byte Folded Spill
	st.d	$s8, $sp, 216                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 208                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 200                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 192                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 184                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 176                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 168                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 160                  # 8-byte Folded Spill
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
	move	$s7, $a1
	ld.d	$s0, $a1, 712
	ld.w	$a1, $a1, 728
	ld.d	$s1, $s7, 720
	move	$s2, $a2
	move	$s3, $a0
	beqz	$a1, .LBB20_2
# %bb.1:
	move	$a0, $s3
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN35btSequentialImpulseConstraintSolver19getOrInitSolverBodyER17btCollisionObject)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a0, $s3
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZN35btSequentialImpulseConstraintSolver19getOrInitSolverBodyER17btCollisionObject)
	jirl	$ra, $ra, 0
	move	$a4, $fp
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	or	$a0, $a4, $a0
	bnez	$a0, .LBB20_3
	b	.LBB20_82
.LBB20_2:
	addi.w	$a0, $zero, -1
	move	$a4, $a0
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	or	$a0, $a4, $a0
	beqz	$a0, .LBB20_82
.LBB20_3:
	ld.w	$a0, $s7, 728
	blez	$a0, .LBB20_82
# %bb.4:                                # %.lr.ph
	move	$s4, $zero
	addi.d	$a6, $s7, 8
	ori	$a7, $zero, 176
	sltui	$a0, $s0, 1
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	movgr2fr.w	$fs0, $zero
	sltui	$a0, $s1, 1
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	lu12i.w	$a0, 328016
	ori	$a0, $a0, 761
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI20_0)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ori	$a0, $zero, 112
	mul.d	$a0, $a4, $a0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	st.d	$s7, $sp, 40                    # 8-byte Folded Spill
	st.d	$a4, $sp, 104                   # 8-byte Folded Spill
	st.d	$a6, $sp, 88                    # 8-byte Folded Spill
	b	.LBB20_7
.LBB20_5:                               #   in Loop: Header=BB20_7 Depth=1
	ld.w	$a1, $s8, 100
	slli.d	$a2, $a1, 7
	alsl.d	$a1, $a1, $a2, 4
	add.d	$a0, $a0, $a1
	st.w	$zero, $a0, 228
	.p2align	4, , 16
.LBB20_6:                               #   in Loop: Header=BB20_7 Depth=1
	ld.w	$a0, $s7, 728
	addi.d	$s4, $s4, 1
	bge	$s4, $a0, .LBB20_82
.LBB20_7:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_14 Depth 2
	mul.d	$a0, $s4, $a7
	add.d	$s6, $a6, $a0
	fld.s	$fa0, $s6, 80
	fld.s	$fa1, $s7, 736
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB20_6
# %bb.8:                                #   in Loop: Header=BB20_7 Depth=1
	fld.s	$fa0, $s6, 48
	fld.s	$fa1, $s0, 56
	fld.s	$fa2, $s6, 52
	fld.s	$fa3, $s0, 60
	fld.s	$fa4, $s6, 56
	fld.s	$fa5, $s0, 64
	fsub.s	$fs5, $fa0, $fa1
	fsub.s	$fs4, $fa2, $fa3
	fsub.s	$fs6, $fa4, $fa5
	movfr2gr.s	$a0, $fs5
	movfr2gr.s	$a1, $fs4
	fld.s	$fa0, $s6, 32
	fld.s	$fa1, $s1, 56
	fld.s	$fa2, $s6, 36
	fld.s	$fa3, $s1, 60
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fs6
	fsub.s	$fs2, $fa0, $fa1
	fsub.s	$fs1, $fa2, $fa3
	fld.s	$fa0, $s6, 40
	fld.s	$fa1, $s1, 64
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $sp, 144
	st.d	$a1, $sp, 152
	fsub.s	$fs3, $fa0, $fa1
	movfr2gr.s	$a0, $fs2
	movfr2gr.s	$a1, $fs1
	bstrins.d	$a0, $a1, 63, 32
	ld.w	$a3, $s3, 44
	ld.w	$a1, $s3, 48
	st.d	$a0, $sp, 128
	movfr2gr.s	$a0, $fs3
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $sp, 136
	move	$a0, $a3
	st.d	$a3, $sp, 120                   # 8-byte Folded Spill
	bne	$a3, $a1, .LBB20_19
# %bb.9:                                #   in Loop: Header=BB20_7 Depth=1
	sltui	$a0, $a3, 1
	slli.w	$a1, $a3, 1
	masknez	$a1, $a1, $a0
	ori	$a2, $zero, 1
	maskeqz	$a0, $a2, $a0
	or	$fp, $a0, $a1
	move	$a0, $a3
	bge	$a3, $fp, .LBB20_19
# %bb.10:                               #   in Loop: Header=BB20_7 Depth=1
	beqz	$fp, .LBB20_12
# %bb.11:                               #   in Loop: Header=BB20_7 Depth=1
	slli.d	$a0, $fp, 7
	alsl.d	$a0, $fp, $a0, 4
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, 44
	move	$s8, $a0
	bgtz	$a1, .LBB20_13
	b	.LBB20_15
.LBB20_12:                              #   in Loop: Header=BB20_7 Depth=1
	move	$s8, $zero
	move	$a1, $a3
	blez	$a1, .LBB20_15
.LBB20_13:                              # %.lr.ph.i.i.i
                                        #   in Loop: Header=BB20_7 Depth=1
	move	$s5, $zero
	slli.d	$a0, $a1, 7
	alsl.d	$s7, $a1, $a0, 4
	.p2align	4, , 16
.LBB20_14:                              #   Parent Loop BB20_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $s3, 56
	add.d	$a0, $s8, $s5
	add.d	$a1, $a1, $s5
	ori	$a2, $zero, 144
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	addi.d	$s5, $s5, 144
	bne	$s7, $s5, .LBB20_14
.LBB20_15:                              # %_ZNK20btAlignedObjectArrayI18btSolverConstraintE4copyEiiPS0_.exit.i.i
                                        #   in Loop: Header=BB20_7 Depth=1
	ld.d	$a0, $s3, 56
	beqz	$a0, .LBB20_18
# %bb.16:                               # %_ZNK20btAlignedObjectArrayI18btSolverConstraintE4copyEiiPS0_.exit.i.i
                                        #   in Loop: Header=BB20_7 Depth=1
	ld.b	$a1, $s3, 64
	andi	$a1, $a1, 1
	beqz	$a1, .LBB20_18
# %bb.17:                               #   in Loop: Header=BB20_7 Depth=1
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.LBB20_18:                              # %_ZN20btAlignedObjectArrayI18btSolverConstraintE10deallocateEv.exit.i.i
                                        #   in Loop: Header=BB20_7 Depth=1
	ld.w	$a0, $s3, 44
	ori	$a1, $zero, 1
	st.b	$a1, $s3, 64
	st.d	$s8, $s3, 56
	st.w	$fp, $s3, 48
	ld.d	$s7, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
.LBB20_19:                              # %_ZN20btAlignedObjectArrayI18btSolverConstraintE6expandERKS0_.exit
                                        #   in Loop: Header=BB20_7 Depth=1
	ld.d	$a1, $s3, 56
	addi.d	$a0, $a0, 1
	st.w	$a0, $s3, 44
	ori	$a0, $zero, 144
	mul.d	$fp, $a3, $a0
	add.d	$a0, $a1, $fp
	ori	$a2, $zero, 144
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 56
	ld.w	$a1, $s0, 256
	add.d	$s8, $a0, $fp
	addi.d	$a0, $a1, -2
	sltu	$a1, $zero, $a0
	ld.w	$a0, $s1, 256
	ld.d	$a4, $sp, 104                   # 8-byte Folded Reload
	st.w	$a4, $s8, 104
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	st.w	$a3, $s8, 108
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	or	$s5, $a1, $a2
	st.d	$s6, $s8, 112
	fmov.s	$fa4, $fs0
	fmov.s	$fa3, $fs0
	fmov.s	$fa5, $fs0
	bnez	$s5, .LBB20_21
# %bb.20:                               #   in Loop: Header=BB20_7 Depth=1
	fld.s	$fa0, $s6, 68
	fld.s	$fa1, $s6, 72
	fneg.s	$fa2, $fa0
	fmul.s	$fa2, $fs6, $fa2
	fld.s	$fa3, $s6, 64
	fmadd.s	$fa2, $fs4, $fa1, $fa2
	fneg.s	$fa1, $fa1
	fmul.s	$fa1, $fs5, $fa1
	fmadd.s	$fa1, $fs6, $fa3, $fa1
	fneg.s	$fa3, $fa3
	fmul.s	$fa3, $fs4, $fa3
	fld.s	$fa4, $s0, 284
	fmadd.s	$fa0, $fs5, $fa0, $fa3
	fld.s	$fa3, $s0, 280
	fld.s	$fa5, $s0, 288
	fmul.s	$fa4, $fa1, $fa4
	fld.s	$fa6, $s0, 300
	fmadd.s	$fa3, $fa3, $fa2, $fa4
	fmadd.s	$fa3, $fa5, $fa0, $fa3
	fld.s	$fa4, $s0, 296
	fmul.s	$fa5, $fa1, $fa6
	fld.s	$fa6, $s0, 304
	fld.s	$fa7, $s0, 316
	fld.s	$ft0, $s0, 312
	fmadd.s	$fa4, $fa4, $fa2, $fa5
	fmadd.s	$fa4, $fa6, $fa0, $fa4
	fmul.s	$fa1, $fa1, $fa7
	fmadd.s	$fa1, $ft0, $fa2, $fa1
	fld.s	$fa2, $s0, 320
	fld.s	$fa5, $s0, 364
	fld.s	$fa6, $s0, 368
	fld.s	$fa7, $s0, 372
	fmadd.s	$fa0, $fa2, $fa0, $fa1
	fmul.s	$fa3, $fa3, $fa5
	fmul.s	$fa5, $fa4, $fa6
	fmul.s	$fa4, $fa0, $fa7
.LBB20_21:                              #   in Loop: Header=BB20_7 Depth=1
	addi.d	$a0, $a0, -2
	sltu	$a0, $zero, $a0
	fst.s	$fa3, $s8, 48
	fst.s	$fa5, $s8, 52
	fst.s	$fa4, $s8, 56
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	or	$fp, $a0, $a1
	st.w	$zero, $s8, 60
	fmov.s	$ft0, $fs0
	fmov.s	$fa6, $fs0
	fmov.s	$fa7, $fs0
	bnez	$fp, .LBB20_23
# %bb.22:                               #   in Loop: Header=BB20_7 Depth=1
	fld.s	$fa0, $s6, 68
	fld.s	$fa1, $s6, 72
	fneg.s	$fa2, $fa0
	fld.s	$fa6, $s6, 64
	fmul.s	$fa2, $fs3, $fa2
	fneg.s	$fa7, $fa1
	fmul.s	$fa7, $fs2, $fa7
	fneg.s	$ft0, $fa6
	fmul.s	$ft0, $fs1, $ft0
	fnmadd.s	$fa1, $fs1, $fa1, $fa2
	fnmadd.s	$fa2, $fs3, $fa6, $fa7
	fld.s	$fa6, $s1, 284
	fnmadd.s	$fa0, $fs2, $fa0, $ft0
	fld.s	$fa7, $s1, 280
	fld.s	$ft0, $s1, 288
	fmul.s	$fa6, $fa6, $fa2
	fld.s	$ft1, $s1, 300
	fmadd.s	$fa6, $fa7, $fa1, $fa6
	fmadd.s	$fa6, $ft0, $fa0, $fa6
	fld.s	$fa7, $s1, 296
	fmul.s	$ft0, $ft1, $fa2
	fld.s	$ft1, $s1, 304
	fld.s	$ft2, $s1, 316
	fld.s	$ft3, $s1, 312
	fmadd.s	$fa7, $fa7, $fa1, $ft0
	fmadd.s	$fa7, $ft1, $fa0, $fa7
	fmul.s	$fa2, $ft2, $fa2
	fmadd.s	$fa1, $ft3, $fa1, $fa2
	fld.s	$fa2, $s1, 320
	fld.s	$ft0, $s1, 364
	fld.s	$ft1, $s1, 368
	fld.s	$ft2, $s1, 372
	fmadd.s	$fa0, $fa2, $fa0, $fa1
	fmul.s	$fa6, $fa6, $ft0
	fmul.s	$fa7, $fa7, $ft1
	fmul.s	$ft0, $fa0, $ft2
.LBB20_23:                              #   in Loop: Header=BB20_7 Depth=1
	fst.s	$fa6, $s8, 64
	fst.s	$fa7, $s8, 68
	fst.s	$ft0, $s8, 72
	st.w	$zero, $s8, 76
	fneg.s	$fa2, $fs4
	fneg.s	$fa1, $fs6
	fneg.s	$fa0, $fs5
	fmov.s	$ft1, $fs0
	bnez	$s5, .LBB20_25
# %bb.24:                               #   in Loop: Header=BB20_7 Depth=1
	fmul.s	$ft1, $fa4, $fa2
	fmadd.s	$ft1, $fa5, $fs6, $ft1
	fmul.s	$ft2, $fa3, $fa1
	fmadd.s	$fa4, $fa4, $fs5, $ft2
	fmul.s	$fa5, $fa5, $fa0
	fmadd.s	$fa3, $fa3, $fs4, $fa5
	fld.s	$fa5, $s6, 68
	fld.s	$ft2, $s6, 64
	fld.s	$ft3, $s6, 72
	fld.s	$ft4, $s0, 360
	fmul.s	$fa4, $fa4, $fa5
	fmadd.s	$fa4, $ft2, $ft1, $fa4
	fmadd.s	$fa3, $ft3, $fa3, $fa4
	fadd.s	$ft1, $ft4, $fa3
.LBB20_25:                              #   in Loop: Header=BB20_7 Depth=1
	fmov.s	$fa3, $fs0
	bnez	$fp, .LBB20_27
# %bb.26:                               #   in Loop: Header=BB20_7 Depth=1
	fneg.s	$fa3, $fa6
	fneg.s	$fa4, $fa7
	fneg.s	$fa5, $ft0
	fmul.s	$ft0, $fs1, $ft0
	fmadd.s	$fa4, $fa4, $fs3, $ft0
	fmul.s	$fa6, $fs3, $fa6
	fmadd.s	$fa5, $fa5, $fs2, $fa6
	fmul.s	$fa6, $fs2, $fa7
	fmadd.s	$fa3, $fa3, $fs1, $fa6
	fld.s	$fa6, $s6, 68
	fld.s	$fa7, $s6, 64
	fld.s	$ft0, $s6, 72
	fld.s	$ft2, $s1, 360
	fmul.s	$fa5, $fa5, $fa6
	fmadd.s	$fa4, $fa7, $fa4, $fa5
	fmadd.s	$fa3, $ft0, $fa3, $fa4
	fadd.s	$fa3, $ft2, $fa3
.LBB20_27:                              #   in Loop: Header=BB20_7 Depth=1
	addi.d	$a0, $s6, 64
	fadd.s	$fa3, $ft1, $fa3
	frecip.s	$fa3, $fa3
	fst.s	$fa3, $s8, 92
	vld	$vr3, $a0, 0
	vst	$vr3, $s8, 16
	fld.s	$fa3, $s6, 68
	fld.s	$fa4, $s6, 72
	fneg.s	$fa5, $fa3
	fmul.s	$fa5, $fs6, $fa5
	fld.s	$fa6, $s6, 64
	fmadd.s	$fa5, $fs4, $fa4, $fa5
	fneg.s	$fa4, $fa4
	fmul.s	$fa4, $fs5, $fa4
	fmadd.s	$fa4, $fs6, $fa6, $fa4
	fneg.s	$fa6, $fa6
	fmul.s	$fa6, $fs4, $fa6
	fmadd.s	$fa3, $fs5, $fa3, $fa6
	movfr2gr.s	$a0, $fa5
	movfr2gr.s	$a1, $fa4
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa3
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $s8, 0
	st.d	$a1, $s8, 8
	fld.s	$fa3, $s6, 64
	fld.s	$fa4, $s6, 68
	fld.s	$fa5, $s6, 72
	fneg.s	$fa6, $fa3
	fneg.s	$fa7, $fa4
	fneg.s	$ft0, $fa5
	fmul.s	$fa4, $fs3, $fa4
	fmadd.s	$fa4, $fs1, $ft0, $fa4
	fmul.s	$fa5, $fs2, $fa5
	fmadd.s	$fa5, $fs3, $fa6, $fa5
	fmul.s	$fa3, $fs1, $fa3
	fmadd.s	$fa3, $fs2, $fa7, $fa3
	movfr2gr.s	$a0, $fa4
	movfr2gr.s	$a1, $fa5
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa3
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $s8, 32
	st.d	$a1, $s8, 40
	fmov.s	$fa3, $fs0
	fmov.s	$fa5, $fs0
	fmov.s	$fa4, $fs0
	bnez	$s5, .LBB20_29
# %bb.28:                               #   in Loop: Header=BB20_7 Depth=1
	fld.s	$fa3, $s0, 352
	fld.s	$fa4, $s0, 348
	fld.s	$fa5, $s0, 344
	fmul.s	$fa2, $fa3, $fa2
	fmadd.s	$fa2, $fa4, $fs6, $fa2
	fmul.s	$fa1, $fa5, $fa1
	fmadd.s	$fa1, $fa3, $fs5, $fa1
	fmul.s	$fa0, $fa4, $fa0
	fld.s	$fa3, $s0, 328
	fld.s	$fa4, $s0, 332
	fld.s	$fa6, $s0, 336
	fmadd.s	$fa0, $fa5, $fs4, $fa0
	fadd.s	$fa5, $fa2, $fa3
	fadd.s	$fa4, $fa4, $fa1
	fadd.s	$fa3, $fa0, $fa6
.LBB20_29:                              #   in Loop: Header=BB20_7 Depth=1
	fmov.s	$fa2, $fs0
	fmov.s	$fa0, $fs0
	fmov.s	$fa1, $fs0
	bnez	$fp, .LBB20_31
# %bb.30:                               #   in Loop: Header=BB20_7 Depth=1
	fld.s	$fa0, $s1, 352
	fld.s	$fa1, $s1, 348
	fneg.s	$fa2, $fs1
	fld.s	$fa6, $s1, 344
	fmul.s	$fa2, $fa0, $fa2
	fmadd.s	$fa2, $fa1, $fs3, $fa2
	fneg.s	$fa7, $fs3
	fmul.s	$fa7, $fa6, $fa7
	fmadd.s	$fa7, $fa0, $fs2, $fa7
	fneg.s	$fa0, $fs2
	fmul.s	$fa0, $fa1, $fa0
	fld.s	$fa1, $s1, 328
	fld.s	$ft0, $s1, 332
	fld.s	$ft1, $s1, 336
	fmadd.s	$fa6, $fa6, $fs1, $fa0
	fadd.s	$fa0, $fa2, $fa1
	fadd.s	$fa1, $ft0, $fa7
	fadd.s	$fa2, $fa6, $ft1
.LBB20_31:                              #   in Loop: Header=BB20_7 Depth=1
	fsub.s	$fa0, $fa5, $fa0
	fld.s	$fa5, $s6, 68
	fsub.s	$fa1, $fa4, $fa1
	fsub.s	$fa2, $fa3, $fa2
	fld.s	$fa3, $s6, 64
	fmul.s	$fa4, $fa1, $fa5
	fld.s	$fa7, $s6, 72
	fld.s	$fa5, $s6, 80
	fld.s	$ft0, $s6, 84
	ld.w	$a0, $s6, 136
	ld.w	$a1, $s2, 64
	fld.s	$fa6, $s2, 52
	fmadd.s	$fa3, $fa3, $fa0, $fa4
	fmadd.s	$fa3, $fa7, $fa2, $fa3
	fst.s	$ft0, $s8, 88
	fmov.s	$fa4, $fs0
	blt	$a1, $a0, .LBB20_34
# %bb.32:                               #   in Loop: Header=BB20_7 Depth=1
	fld.s	$fa4, $s6, 88
	fneg.s	$fa7, $fa3
	fmul.s	$fa4, $fa4, $fa7
	movgr2fr.w	$fa7, $zero
	fcmp.cult.s	$fcc0, $fa7, $fa4
	bcnez	$fcc0, .LBB20_34
# %bb.33:                               #   in Loop: Header=BB20_7 Depth=1
	fmov.s	$fa4, $fa7
.LBB20_34:                              #   in Loop: Header=BB20_7 Depth=1
	ld.bu	$a0, $s2, 60
	andi	$a0, $a0, 4
	bnez	$a0, .LBB20_36
# %bb.35:                               #   in Loop: Header=BB20_7 Depth=1
	st.w	$zero, $s8, 84
	b	.LBB20_40
	.p2align	4, , 16
.LBB20_36:                              #   in Loop: Header=BB20_7 Depth=1
	fld.s	$fa7, $s6, 120
	fld.s	$ft0, $s2, 56
	fmul.s	$fa7, $fa7, $ft0
	fst.s	$fa7, $s8, 84
	bnez	$s5, .LBB20_38
# %bb.37:                               #   in Loop: Header=BB20_7 Depth=1
	fld.s	$ft0, $s0, 360
	fld.s	$ft1, $s8, 16
	fld.s	$ft2, $s8, 20
	ld.d	$a0, $s3, 24
	fld.s	$ft3, $s8, 24
	fmul.s	$ft1, $ft0, $ft1
	fmul.s	$ft2, $ft0, $ft2
	fld.s	$ft4, $s0, 380
	fmul.s	$ft0, $ft0, $ft3
	fld.s	$ft3, $s0, 384
	fld.s	$ft5, $s0, 388
	fmul.s	$ft1, $ft1, $ft4
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	add.d	$a1, $a0, $a2
	fmul.s	$ft2, $ft2, $ft3
	fmul.s	$ft0, $ft0, $ft5
	fmul.s	$ft1, $fa7, $ft1
	fldx.s	$ft3, $a0, $a2
	fmul.s	$ft2, $fa7, $ft2
	fmul.s	$ft0, $fa7, $ft0
	fld.s	$ft4, $a1, 4
	fadd.s	$ft1, $ft1, $ft3
	fld.s	$ft3, $a1, 8
	fstx.s	$ft1, $a0, $a2
	fadd.s	$ft1, $ft2, $ft4
	fst.s	$ft1, $a1, 4
	fadd.s	$ft0, $ft0, $ft3
	fld.s	$ft1, $a1, 32
	fld.s	$ft2, $a1, 36
	fst.s	$ft0, $a1, 8
	fld.s	$ft0, $a1, 40
	fmul.s	$ft1, $fa7, $ft1
	fmul.s	$ft2, $fa7, $ft2
	fld.s	$ft3, $s8, 48
	fmul.s	$fa7, $fa7, $ft0
	fld.s	$ft0, $s8, 52
	fld.s	$ft4, $s8, 56
	fmul.s	$ft1, $ft1, $ft3
	fld.s	$ft3, $a1, 16
	fmul.s	$ft0, $ft2, $ft0
	fmul.s	$fa7, $fa7, $ft4
	fld.s	$ft2, $a1, 20
	fadd.s	$ft1, $ft1, $ft3
	fld.s	$ft3, $a1, 24
	fst.s	$ft1, $a1, 16
	fadd.s	$ft0, $ft0, $ft2
	fst.s	$ft0, $a1, 20
	fadd.s	$fa7, $fa7, $ft3
	fst.s	$fa7, $a1, 24
.LBB20_38:                              #   in Loop: Header=BB20_7 Depth=1
	bnez	$fp, .LBB20_40
# %bb.39:                               #   in Loop: Header=BB20_7 Depth=1
	ld.w	$a0, $s8, 108
	ld.d	$a1, $s3, 24
	fld.s	$fa7, $s1, 360
	fld.s	$ft0, $s8, 16
	fld.s	$ft1, $s8, 20
	ori	$a2, $zero, 112
	mul.d	$a2, $a0, $a2
	add.d	$a0, $a1, $a2
	fmul.s	$ft0, $fa7, $ft0
	fmul.s	$ft1, $fa7, $ft1
	fld.s	$ft2, $s8, 24
	fld.s	$ft3, $s1, 380
	fld.s	$ft4, $s1, 384
	fld.s	$ft5, $s1, 388
	fmul.s	$fa7, $fa7, $ft2
	fmul.s	$ft0, $ft0, $ft3
	fmul.s	$ft1, $ft1, $ft4
	fmul.s	$fa7, $fa7, $ft5
	fld.s	$ft2, $s8, 64
	fld.s	$ft3, $s8, 84
	fldx.s	$ft4, $a1, $a2
	fld.s	$ft5, $s8, 68
	fld.s	$ft6, $s8, 72
	fmul.s	$ft0, $ft0, $ft3
	fsub.s	$ft0, $ft4, $ft0
	fld.s	$ft4, $a0, 4
	fstx.s	$ft0, $a1, $a2
	fmul.s	$ft0, $ft1, $ft3
	fld.s	$ft1, $a0, 8
	fsub.s	$ft0, $ft4, $ft0
	fst.s	$ft0, $a0, 4
	fmul.s	$fa7, $fa7, $ft3
	fsub.s	$fa7, $ft1, $fa7
	fld.s	$ft0, $a0, 32
	fst.s	$fa7, $a0, 8
	fld.s	$fa7, $a0, 36
	fld.s	$ft1, $a0, 40
	fmul.s	$ft0, $ft0, $ft3
	fld.s	$ft4, $a0, 16
	fmul.s	$fa7, $fa7, $ft3
	fmul.s	$ft1, $ft1, $ft3
	fmul.s	$ft0, $ft2, $ft0
	fadd.s	$ft0, $ft4, $ft0
	fld.s	$ft2, $a0, 20
	fst.s	$ft0, $a0, 16
	fmul.s	$fa7, $ft5, $fa7
	fld.s	$ft0, $a0, 24
	fadd.s	$fa7, $ft2, $fa7
	fst.s	$fa7, $a0, 20
	fmul.s	$fa7, $ft6, $ft1
	fadd.s	$fa7, $ft0, $fa7
	fst.s	$fa7, $a0, 24
.LBB20_40:                              #   in Loop: Header=BB20_7 Depth=1
	st.w	$zero, $s8, 80
	fmov.s	$fa7, $fs0
	fmov.s	$ft0, $fs0
	fmov.s	$ft1, $fs0
	bnez	$s5, .LBB20_42
# %bb.41:                               #   in Loop: Header=BB20_7 Depth=1
	fld.s	$fa7, $s0, 328
	fld.s	$ft0, $s0, 332
	fld.s	$ft1, $s0, 336
.LBB20_42:                              #   in Loop: Header=BB20_7 Depth=1
	fld.s	$ft2, $s8, 16
	fld.s	$ft5, $s8, 20
	fld.s	$ft3, $s8, 24
	fmov.s	$ft4, $fs0
	fmov.s	$ft6, $fs0
	fmov.s	$ft7, $fs0
	bnez	$s5, .LBB20_44
# %bb.43:                               #   in Loop: Header=BB20_7 Depth=1
	fld.s	$ft4, $s0, 344
	fld.s	$ft6, $s0, 348
	fld.s	$ft7, $s0, 352
.LBB20_44:                              #   in Loop: Header=BB20_7 Depth=1
	fld.s	$ft8, $s8, 0
	fld.s	$ft10, $s8, 4
	fld.s	$ft9, $s8, 8
	beqz	$fp, .LBB20_46
# %bb.45:                               #   in Loop: Header=BB20_7 Depth=1
	fmul.s	$ft11, $ft5, $fs0
	fmadd.s	$ft11, $ft2, $fs0, $ft11
	fmadd.s	$ft12, $ft3, $fs0, $ft11
	fmov.s	$ft11, $fs0
	fmov.s	$ft13, $fs0
	fmov.s	$ft14, $fs0
	b	.LBB20_47
	.p2align	4, , 16
.LBB20_46:                              #   in Loop: Header=BB20_7 Depth=1
	fld.s	$ft12, $s1, 328
	fld.s	$ft15, $s1, 332
	fld.s	$fs1, $s1, 336
	fld.s	$ft11, $s1, 344
	fld.s	$ft13, $s1, 348
	fld.s	$ft14, $s1, 352
	fmul.s	$ft15, $ft5, $ft15
	fmadd.s	$ft12, $ft2, $ft12, $ft15
	fmadd.s	$ft12, $ft3, $fs1, $ft12
.LBB20_47:                              #   in Loop: Header=BB20_7 Depth=1
	fadd.s	$fa5, $fa5, $fa6
	fmul.s	$fa6, $ft0, $ft5
	fmadd.s	$fa6, $ft2, $fa7, $fa6
	fmadd.s	$fa6, $ft3, $ft1, $fa6
	fmul.s	$fa7, $ft6, $ft10
	fmadd.s	$fa7, $ft8, $ft4, $fa7
	fmadd.s	$fa7, $ft9, $ft7, $fa7
	fld.s	$ft0, $s8, 36
	fld.s	$ft1, $s8, 32
	fld.s	$ft2, $s8, 40
	fadd.s	$fa6, $fa6, $fa7
	fmul.s	$fa7, $ft13, $ft0
	fmadd.s	$fa7, $ft1, $ft11, $fa7
	fmadd.s	$fa7, $ft2, $ft14, $fa7
	fsub.s	$fa7, $fa7, $ft12
	fld.s	$ft0, $s2, 32
	fld.s	$ft1, $s2, 12
	fadd.s	$fa6, $fa6, $fa7
	fneg.s	$fa7, $fa5
	fmul.s	$fa7, $ft0, $fa7
	fdiv.s	$fa7, $fa7, $ft1
	fld.s	$ft0, $s8, 92
	fsub.s	$fa4, $fa4, $fa6
	fld.s	$fa6, $s2, 48
	ld.w	$a0, $s2, 44
	fmul.s	$fa7, $fa7, $ft0
	fmul.s	$fa4, $ft0, $fa4
	fcmp.clt.s	$fcc0, $fa6, $fa5
	sltui	$a0, $a0, 1
	movcf2gr	$a1, $fcc0
	or	$a0, $a0, $a1
	fadd.s	$fa5, $fa7, $fa4
	movgr2cf	$fcc0, $a0
	fsel	$fa4, $fa4, $fa5, $fcc0
	fsel	$fa5, $fa7, $fs0, $fcc0
	st.d	$zero, $s8, 124
	ld.w	$a0, $s3, 108
	fst.s	$fa4, $s8, 120
	fst.s	$fa5, $s8, 136
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	st.w	$a1, $s8, 132
	st.w	$a0, $s8, 100
	ld.bu	$a0, $s2, 60
	andi	$a0, $a0, 32
	addi.d	$a1, $s6, 140
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	beqz	$a0, .LBB20_51
# %bb.48:                               #   in Loop: Header=BB20_7 Depth=1
	ld.bu	$a0, $s6, 124
	beqz	$a0, .LBB20_51
# %bb.49:                               #   in Loop: Header=BB20_7 Depth=1
	move	$fp, $s7
	st.d	$s1, $sp, 8
	addi.d	$a6, $sp, 144
	addi.d	$a7, $sp, 128
	vldi	$vr0, -1168
	st.d	$s0, $sp, 0
	move	$a0, $s3
	move	$a2, $a4
	ld.d	$s7, $sp, 120                   # 8-byte Folded Reload
	move	$a4, $s7
	move	$a5, $s6
	pcaddu18i	$ra, %call36(_ZN35btSequentialImpulseConstraintSolver21addFrictionConstraintERK9btVector3iiiR15btManifoldPointS2_S2_P17btCollisionObjectS6_f)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s2, 60
	andi	$a0, $a0, 16
	beqz	$a0, .LBB20_69
# %bb.50:                               #   in Loop: Header=BB20_7 Depth=1
	addi.d	$a1, $s6, 156
	st.d	$s1, $sp, 8
	addi.d	$a6, $sp, 144
	addi.d	$a7, $sp, 128
	vldi	$vr0, -1168
	st.d	$s0, $sp, 0
	move	$a0, $s3
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	move	$a4, $s7
	move	$a5, $s6
	pcaddu18i	$ra, %call36(_ZN35btSequentialImpulseConstraintSolver21addFrictionConstraintERK9btVector3iiiR15btManifoldPointS2_S2_P17btCollisionObjectS6_f)
	jirl	$ra, $ra, 0
	b	.LBB20_69
	.p2align	4, , 16
.LBB20_51:                              #   in Loop: Header=BB20_7 Depth=1
	fld.s	$fa4, $s6, 64
	fld.s	$fa5, $s6, 68
	fld.s	$fa6, $s6, 72
	fmul.s	$fa7, $fa3, $fa4
	fmul.s	$ft0, $fa3, $fa5
	fmul.s	$ft1, $fa3, $fa6
	fsub.s	$fa3, $fa0, $fa7
	fsub.s	$fa1, $fa1, $ft0
	fsub.s	$fa0, $fa2, $ft1
	movfr2gr.s	$a0, $fa3
	movfr2gr.s	$a2, $fa1
	bstrins.d	$a0, $a2, 63, 32
	movfr2gr.s	$a2, $fa0
	bstrpick.d	$a2, $a2, 31, 0
	st.d	$a0, $s6, 140
	st.d	$a2, $s6, 148
	ld.wu	$a0, $s2, 60
	andi	$a2, $a0, 64
	andi	$a0, $a0, 16
	bnez	$a2, .LBB20_55
# %bb.52:                               #   in Loop: Header=BB20_7 Depth=1
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	fld.s	$fa7, $a2, %pc_lo12(.LCPI20_0)
	fmul.s	$fa2, $fa1, $fa1
	fmadd.s	$fa2, $fa3, $fa3, $fa2
	fmadd.s	$fa2, $fa0, $fa0, $fa2
	fcmp.cule.s	$fcc0, $fa2, $fa7
	bcnez	$fcc0, .LBB20_55
# %bb.53:                               #   in Loop: Header=BB20_7 Depth=1
	frsqrt.s	$fa7, $fa2
	fmul.s	$fa2, $fa3, $fa7
	fst.s	$fa2, $s6, 140
	fmul.s	$fa1, $fa1, $fa7
	fst.s	$fa1, $s6, 144
	fmul.s	$fa0, $fa0, $fa7
	fst.s	$fa0, $s6, 148
	beqz	$a0, .LBB20_64
# %bb.54:                               #   in Loop: Header=BB20_7 Depth=1
	fneg.s	$fa3, $fa5
	fmul.s	$fa3, $fa0, $fa3
	fmadd.s	$fa3, $fa1, $fa6, $fa3
	fneg.s	$fa6, $fa6
	fmul.s	$fa6, $fa2, $fa6
	fmadd.s	$fa0, $fa0, $fa4, $fa6
	fneg.s	$fa4, $fa4
	fmul.s	$fa1, $fa1, $fa4
	fmadd.s	$fa4, $fa2, $fa5, $fa1
	movfr2gr.s	$a0, $fa4
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $s6, 164
	fmul.s	$fa1, $fa0, $fa0
	fmadd.s	$fa1, $fa3, $fa3, $fa1
	fmadd.s	$fa1, $fa4, $fa4, $fa1
	frsqrt.s	$fa5, $fa1
	fmul.s	$fa1, $fa3, $fa5
	fst.s	$fa1, $s6, 156
	ld.bu	$a0, $s0, 184
	fmul.s	$fa2, $fa0, $fa5
	fst.s	$fa2, $s6, 160
	fmul.s	$fa0, $fa4, $fa5
	fst.s	$fa0, $s6, 164
	bnez	$a0, .LBB20_60
	b	.LBB20_61
.LBB20_55:                              #   in Loop: Header=BB20_7 Depth=1
	pcalau12i	$a2, %pc_hi20(.LCPI20_1)
	fld.s	$fa0, $a2, %pc_lo12(.LCPI20_1)
	fabs.s	$fa1, $fa6
	fcmp.cule.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB20_57
# %bb.56:                               #   in Loop: Header=BB20_7 Depth=1
	fmul.s	$fa0, $fa6, $fa6
	fmadd.s	$fa0, $fa5, $fa5, $fa0
	frsqrt.s	$fa1, $fa0
	fneg.s	$fa2, $fa6
	fmul.s	$fa3, $fa1, $fa2
	fmul.s	$fa5, $fa5, $fa1
	fmul.s	$fa1, $fa0, $fa1
	fneg.s	$fa0, $fa4
	fmul.s	$fa2, $fa5, $fa0
	fmul.s	$fa0, $fa4, $fa3
	movgr2fr.w	$fa7, $zero
	b	.LBB20_58
.LBB20_57:                              #   in Loop: Header=BB20_7 Depth=1
	fmul.s	$fa0, $fa5, $fa5
	fmadd.s	$fa0, $fa4, $fa4, $fa0
	frsqrt.s	$ft0, $fa0
	fneg.s	$fa1, $fa5
	fmul.s	$fa7, $ft0, $fa1
	fmul.s	$fa3, $fa4, $ft0
	fneg.s	$fa1, $fa6
	fmul.s	$fa1, $fa3, $fa1
	fmul.s	$fa2, $fa6, $fa7
	fmul.s	$fa0, $fa0, $ft0
	movgr2fr.w	$fa5, $zero
.LBB20_58:                              # %_Z13btPlaneSpace1RK9btVector3RS_S2_.exit
                                        #   in Loop: Header=BB20_7 Depth=1
	fst.s	$fa7, $s6, 140
	fst.s	$fa3, $s6, 144
	fst.s	$fa5, $s6, 148
	st.w	$zero, $s6, 152
	fst.s	$fa1, $s6, 156
	fst.s	$fa2, $s6, 160
	fst.s	$fa0, $s6, 164
	st.w	$zero, $s6, 168
	beqz	$a0, .LBB20_64
# %bb.59:                               #   in Loop: Header=BB20_7 Depth=1
	ld.bu	$a0, $s0, 184
	beqz	$a0, .LBB20_61
.LBB20_60:                              #   in Loop: Header=BB20_7 Depth=1
	fld.s	$fa3, $s0, 24
	fld.s	$fa4, $s0, 8
	fld.s	$fa5, $s0, 40
	fmul.s	$fa6, $fa2, $fa3
	fld.s	$fa7, $s0, 28
	fmadd.s	$fa6, $fa4, $fa1, $fa6
	fmadd.s	$fa6, $fa5, $fa0, $fa6
	fld.s	$ft0, $s0, 12
	fmul.s	$ft1, $fa2, $fa7
	fld.s	$ft2, $s0, 44
	fld.s	$ft3, $s0, 32
	fld.s	$ft4, $s0, 16
	fmadd.s	$ft1, $ft0, $fa1, $ft1
	fmadd.s	$ft1, $ft2, $fa0, $ft1
	fmul.s	$fa2, $fa2, $ft3
	fmadd.s	$fa1, $ft4, $fa1, $fa2
	fld.s	$ft5, $s0, 48
	fld.s	$fa2, $s0, 168
	fld.s	$ft6, $s0, 172
	fld.s	$ft7, $s0, 176
	fmadd.s	$fa0, $ft5, $fa0, $fa1
	fmul.s	$fa6, $fa6, $fa2
	fmul.s	$ft1, $ft1, $ft6
	fmul.s	$fa0, $fa0, $ft7
	fmul.s	$fa1, $ft0, $ft1
	fmadd.s	$fa1, $fa4, $fa6, $fa1
	fmadd.s	$fa1, $ft4, $fa0, $fa1
	fmul.s	$fa2, $fa7, $ft1
	fmadd.s	$fa2, $fa3, $fa6, $fa2
	fmadd.s	$fa2, $ft3, $fa0, $fa2
	fmul.s	$fa3, $ft2, $ft1
	fmadd.s	$fa3, $fa5, $fa6, $fa3
	fmadd.s	$fa0, $ft5, $fa0, $fa3
	movfr2gr.s	$a0, $fa1
	movfr2gr.s	$a2, $fa2
	bstrins.d	$a0, $a2, 63, 32
	movfr2gr.s	$a2, $fa0
	bstrpick.d	$a2, $a2, 31, 0
	st.d	$a0, $s6, 156
	st.d	$a2, $s6, 164
.LBB20_61:                              # %_Z24applyAnisotropicFrictionP17btCollisionObjectR9btVector3.exit
                                        #   in Loop: Header=BB20_7 Depth=1
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	ld.bu	$a0, $s1, 184
	beqz	$a0, .LBB20_63
# %bb.62:                               #   in Loop: Header=BB20_7 Depth=1
	fld.s	$fa3, $s1, 24
	fld.s	$fa4, $s1, 8
	fld.s	$fa5, $s1, 40
	fmul.s	$fa6, $fa3, $fa2
	fld.s	$fa7, $s1, 28
	fmadd.s	$fa6, $fa4, $fa1, $fa6
	fmadd.s	$fa6, $fa5, $fa0, $fa6
	fld.s	$ft0, $s1, 12
	fmul.s	$ft1, $fa2, $fa7
	fld.s	$ft2, $s1, 44
	fld.s	$ft3, $s1, 32
	fld.s	$ft4, $s1, 16
	fmadd.s	$ft1, $ft0, $fa1, $ft1
	fmadd.s	$ft1, $ft2, $fa0, $ft1
	fmul.s	$fa2, $fa2, $ft3
	fmadd.s	$fa1, $ft4, $fa1, $fa2
	fld.s	$fa2, $s1, 48
	fld.s	$ft5, $s1, 168
	fld.s	$ft6, $s1, 172
	fld.s	$ft7, $s1, 176
	fmadd.s	$fa0, $fa2, $fa0, $fa1
	fmul.s	$fa1, $fa6, $ft5
	fmul.s	$fa6, $ft1, $ft6
	fmul.s	$fa0, $fa0, $ft7
	fmul.s	$ft0, $ft0, $fa6
	fmadd.s	$fa4, $fa4, $fa1, $ft0
	fmadd.s	$fa4, $ft4, $fa0, $fa4
	fmul.s	$fa7, $fa7, $fa6
	fmadd.s	$fa3, $fa3, $fa1, $fa7
	fmadd.s	$fa3, $ft3, $fa0, $fa3
	fmul.s	$fa6, $ft2, $fa6
	fmadd.s	$fa1, $fa5, $fa1, $fa6
	fmadd.s	$fa0, $fa2, $fa0, $fa1
	movfr2gr.s	$a0, $fa4
	movfr2gr.s	$a1, $fa3
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa0
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $s6, 156
	st.d	$a1, $s6, 164
.LBB20_63:                              # %.thread854
                                        #   in Loop: Header=BB20_7 Depth=1
	addi.d	$a1, $s6, 156
	st.d	$s1, $sp, 8
	addi.d	$a6, $sp, 144
	addi.d	$a7, $sp, 128
	vldi	$vr0, -1168
	st.d	$s0, $sp, 0
	move	$a0, $s3
	move	$a2, $a4
	ld.d	$a4, $sp, 120                   # 8-byte Folded Reload
	move	$a5, $s6
	pcaddu18i	$ra, %call36(_ZN35btSequentialImpulseConstraintSolver21addFrictionConstraintERK9btVector3iiiR15btManifoldPointS2_S2_P17btCollisionObjectS6_f)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
.LBB20_64:                              #   in Loop: Header=BB20_7 Depth=1
	move	$fp, $s7
	ld.bu	$a0, $s0, 184
	beqz	$a0, .LBB20_66
# %bb.65:                               #   in Loop: Header=BB20_7 Depth=1
	fld.s	$fa0, $s0, 8
	fld.s	$fa1, $s0, 24
	fld.s	$fa2, $s6, 144
	fld.s	$fa3, $s6, 140
	fld.s	$fa4, $s0, 40
	fld.s	$fa5, $s6, 148
	fmul.s	$fa6, $fa1, $fa2
	fld.s	$fa7, $s0, 28
	fmadd.s	$fa6, $fa0, $fa3, $fa6
	fmadd.s	$fa6, $fa4, $fa5, $fa6
	fld.s	$ft0, $s0, 12
	fmul.s	$ft1, $fa2, $fa7
	fld.s	$ft2, $s0, 44
	fld.s	$ft3, $s0, 32
	fld.s	$ft4, $s0, 16
	fmadd.s	$ft1, $ft0, $fa3, $ft1
	fmadd.s	$ft1, $ft2, $fa5, $ft1
	fmul.s	$fa2, $fa2, $ft3
	fmadd.s	$fa2, $ft4, $fa3, $fa2
	fld.s	$fa3, $s0, 48
	fld.s	$ft5, $s0, 168
	fld.s	$ft6, $s0, 172
	fld.s	$ft7, $s0, 176
	fmadd.s	$fa2, $fa3, $fa5, $fa2
	fmul.s	$fa5, $fa6, $ft5
	fmul.s	$fa6, $ft1, $ft6
	fmul.s	$fa2, $fa2, $ft7
	fmul.s	$ft0, $ft0, $fa6
	fmadd.s	$fa0, $fa0, $fa5, $ft0
	fmadd.s	$fa0, $ft4, $fa2, $fa0
	fmul.s	$fa7, $fa7, $fa6
	fmadd.s	$fa1, $fa1, $fa5, $fa7
	fmadd.s	$fa1, $ft3, $fa2, $fa1
	fmul.s	$fa6, $ft2, $fa6
	fmadd.s	$fa4, $fa4, $fa5, $fa6
	fmadd.s	$fa2, $fa3, $fa2, $fa4
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a2, $fa1
	bstrins.d	$a0, $a2, 63, 32
	movfr2gr.s	$a2, $fa2
	bstrpick.d	$a2, $a2, 31, 0
	st.d	$a0, $s6, 140
	st.d	$a2, $s6, 148
.LBB20_66:                              # %_Z24applyAnisotropicFrictionP17btCollisionObjectR9btVector3.exit622
                                        #   in Loop: Header=BB20_7 Depth=1
	ld.bu	$a0, $s1, 184
	beqz	$a0, .LBB20_68
# %bb.67:                               #   in Loop: Header=BB20_7 Depth=1
	fld.s	$fa0, $s1, 8
	fld.s	$fa1, $s1, 24
	fld.s	$fa2, $s6, 144
	fld.s	$fa3, $s6, 140
	fld.s	$fa4, $s1, 40
	fld.s	$fa5, $s6, 148
	fmul.s	$fa6, $fa1, $fa2
	fld.s	$fa7, $s1, 28
	fmadd.s	$fa6, $fa0, $fa3, $fa6
	fmadd.s	$fa6, $fa4, $fa5, $fa6
	fld.s	$ft0, $s1, 12
	fmul.s	$ft1, $fa2, $fa7
	fld.s	$ft2, $s1, 44
	fld.s	$ft3, $s1, 32
	fld.s	$ft4, $s1, 16
	fmadd.s	$ft1, $ft0, $fa3, $ft1
	fmadd.s	$ft1, $ft2, $fa5, $ft1
	fmul.s	$fa2, $fa2, $ft3
	fmadd.s	$fa2, $ft4, $fa3, $fa2
	fld.s	$fa3, $s1, 48
	fld.s	$ft5, $s1, 168
	fld.s	$ft6, $s1, 172
	fld.s	$ft7, $s1, 176
	fmadd.s	$fa2, $fa3, $fa5, $fa2
	fmul.s	$fa5, $fa6, $ft5
	fmul.s	$fa6, $ft1, $ft6
	fmul.s	$fa2, $fa2, $ft7
	fmul.s	$ft0, $ft0, $fa6
	fmadd.s	$fa0, $fa0, $fa5, $ft0
	fmadd.s	$fa0, $ft4, $fa2, $fa0
	fmul.s	$fa7, $fa7, $fa6
	fmadd.s	$fa1, $fa1, $fa5, $fa7
	fmadd.s	$fa1, $ft3, $fa2, $fa1
	fmul.s	$fa6, $ft2, $fa6
	fmadd.s	$fa4, $fa4, $fa5, $fa6
	fmadd.s	$fa2, $fa3, $fa2, $fa4
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a2, $fa1
	bstrins.d	$a0, $a2, 63, 32
	movfr2gr.s	$a2, $fa2
	bstrpick.d	$a2, $a2, 31, 0
	st.d	$a0, $s6, 140
	st.d	$a2, $s6, 148
.LBB20_68:                              # %_Z24applyAnisotropicFrictionP17btCollisionObjectR9btVector3.exit629
                                        #   in Loop: Header=BB20_7 Depth=1
	st.d	$s1, $sp, 8
	addi.d	$a6, $sp, 144
	addi.d	$a7, $sp, 128
	vldi	$vr0, -1168
	st.d	$s0, $sp, 0
	move	$a0, $s3
	move	$a2, $a4
	ld.d	$a4, $sp, 120                   # 8-byte Folded Reload
	move	$a5, $s6
	pcaddu18i	$ra, %call36(_ZN35btSequentialImpulseConstraintSolver21addFrictionConstraintERK9btVector3iiiR15btManifoldPointS2_S2_P17btCollisionObjectS6_f)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	st.b	$a0, $s6, 124
.LBB20_69:                              #   in Loop: Header=BB20_7 Depth=1
	ld.wu	$a3, $s2, 60
	ld.w	$a1, $s8, 100
	ld.d	$a0, $s3, 120
	andi	$a4, $a3, 8
	slli.d	$a2, $a1, 7
	alsl.d	$a1, $a1, $a2, 4
	add.d	$a2, $a0, $a1
	andi	$a1, $a3, 16
	bnez	$a4, .LBB20_71
# %bb.70:                               #   in Loop: Header=BB20_7 Depth=1
	st.w	$zero, $a2, 84
	ld.d	$a6, $sp, 88                    # 8-byte Folded Reload
	ori	$a7, $zero, 176
	move	$s7, $fp
	bnez	$a1, .LBB20_5
	b	.LBB20_6
	.p2align	4, , 16
.LBB20_71:                              #   in Loop: Header=BB20_7 Depth=1
	andi	$a3, $a3, 4
	ld.d	$a6, $sp, 88                    # 8-byte Folded Reload
	ori	$a7, $zero, 176
	move	$s7, $fp
	bnez	$a3, .LBB20_73
# %bb.72:                               # %.thread858
                                        #   in Loop: Header=BB20_7 Depth=1
	st.w	$zero, $a2, 84
	bnez	$a1, .LBB20_5
	b	.LBB20_6
.LBB20_73:                              #   in Loop: Header=BB20_7 Depth=1
	fld.s	$fa0, $s6, 128
	fld.s	$fa1, $s2, 56
	fmul.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a2, 84
	beqz	$s5, .LBB20_76
# %bb.74:                               #   in Loop: Header=BB20_7 Depth=1
	ld.d	$t0, $sp, 96                    # 8-byte Folded Reload
	beqz	$t0, .LBB20_77
.LBB20_75:                              #   in Loop: Header=BB20_7 Depth=1
	beqz	$a1, .LBB20_6
	b	.LBB20_78
.LBB20_76:                              #   in Loop: Header=BB20_7 Depth=1
	ld.w	$a3, $s8, 104
	ld.d	$a4, $s3, 24
	fld.s	$fa1, $s0, 360
	fld.s	$fa2, $a2, 16
	fld.s	$fa3, $a2, 20
	fld.s	$fa4, $a2, 24
	fld.s	$fa5, $s0, 380
	fmul.s	$fa2, $fa1, $fa2
	fmul.s	$fa3, $fa1, $fa3
	fmul.s	$fa1, $fa1, $fa4
	fmul.s	$fa2, $fa2, $fa5
	fld.s	$fa4, $s0, 384
	fld.s	$fa5, $s0, 388
	ori	$a5, $zero, 112
	mul.d	$a3, $a3, $a5
	add.d	$a5, $a4, $a3
	fmul.s	$fa3, $fa3, $fa4
	fmul.s	$fa1, $fa1, $fa5
	fmul.s	$fa2, $fa0, $fa2
	fldx.s	$fa4, $a4, $a3
	fmul.s	$fa3, $fa0, $fa3
	fmul.s	$fa1, $fa0, $fa1
	fld.s	$fa5, $a5, 4
	fadd.s	$fa2, $fa2, $fa4
	fld.s	$fa4, $a5, 8
	fstx.s	$fa2, $a4, $a3
	fadd.s	$fa2, $fa3, $fa5
	fst.s	$fa2, $a5, 4
	fadd.s	$fa1, $fa1, $fa4
	fld.s	$fa2, $a5, 32
	fld.s	$fa3, $a5, 36
	fst.s	$fa1, $a5, 8
	fld.s	$fa1, $a5, 40
	fmul.s	$fa2, $fa0, $fa2
	fmul.s	$fa3, $fa0, $fa3
	fld.s	$fa4, $a2, 48
	fmul.s	$fa0, $fa0, $fa1
	fld.s	$fa1, $a2, 52
	fld.s	$fa5, $a2, 56
	fmul.s	$fa2, $fa2, $fa4
	fld.s	$fa4, $a5, 16
	fmul.s	$fa1, $fa3, $fa1
	fmul.s	$fa0, $fa0, $fa5
	fld.s	$fa3, $a5, 20
	fadd.s	$fa2, $fa2, $fa4
	fld.s	$fa4, $a5, 24
	fst.s	$fa2, $a5, 16
	fadd.s	$fa1, $fa1, $fa3
	fst.s	$fa1, $a5, 20
	fadd.s	$fa0, $fa0, $fa4
	fst.s	$fa0, $a5, 24
	ld.d	$t0, $sp, 96                    # 8-byte Folded Reload
	bnez	$t0, .LBB20_75
.LBB20_77:                              #   in Loop: Header=BB20_7 Depth=1
	ld.w	$a3, $s8, 108
	ld.d	$a4, $s3, 24
	fld.s	$fa0, $s1, 360
	fld.s	$fa1, $a2, 16
	fld.s	$fa2, $a2, 20
	ori	$a5, $zero, 112
	mul.d	$a5, $a3, $a5
	add.d	$a3, $a4, $a5
	fmul.s	$fa1, $fa0, $fa1
	fmul.s	$fa2, $fa0, $fa2
	fld.s	$fa3, $a2, 24
	fld.s	$fa4, $s1, 380
	fld.s	$fa5, $s1, 384
	fld.s	$fa6, $s1, 388
	fmul.s	$fa0, $fa0, $fa3
	fmul.s	$fa1, $fa1, $fa4
	fmul.s	$fa2, $fa2, $fa5
	fmul.s	$fa0, $fa0, $fa6
	fld.s	$fa3, $a2, 64
	fld.s	$fa4, $a2, 84
	fldx.s	$fa5, $a4, $a5
	fld.s	$fa6, $a2, 68
	fld.s	$fa7, $a2, 72
	fmul.s	$fa1, $fa1, $fa4
	fsub.s	$fa1, $fa5, $fa1
	fld.s	$fa5, $a3, 4
	fstx.s	$fa1, $a4, $a5
	fmul.s	$fa1, $fa2, $fa4
	fld.s	$fa2, $a3, 8
	fsub.s	$fa1, $fa5, $fa1
	fst.s	$fa1, $a3, 4
	fmul.s	$fa0, $fa0, $fa4
	fsub.s	$fa0, $fa2, $fa0
	fld.s	$fa1, $a3, 32
	fst.s	$fa0, $a3, 8
	fld.s	$fa0, $a3, 36
	fld.s	$fa2, $a3, 40
	fmul.s	$fa1, $fa1, $fa4
	fld.s	$fa5, $a3, 16
	fmul.s	$fa0, $fa0, $fa4
	fmul.s	$fa2, $fa2, $fa4
	fmul.s	$fa1, $fa3, $fa1
	fadd.s	$fa1, $fa5, $fa1
	fld.s	$fa3, $a3, 20
	fst.s	$fa1, $a3, 16
	fmul.s	$fa0, $fa6, $fa0
	fld.s	$fa1, $a3, 24
	fadd.s	$fa0, $fa3, $fa0
	fst.s	$fa0, $a3, 20
	fmul.s	$fa0, $fa7, $fa2
	fadd.s	$fa0, $fa1, $fa0
	fst.s	$fa0, $a3, 24
	beqz	$a1, .LBB20_6
.LBB20_78:                              #   in Loop: Header=BB20_7 Depth=1
	ld.w	$a1, $s8, 100
	fld.s	$fa0, $s6, 132
	fld.s	$fa1, $s2, 56
	slli.d	$a2, $a1, 7
	alsl.d	$a1, $a1, $a2, 4
	add.d	$a0, $a0, $a1
	fmul.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $a0, 228
	bnez	$s5, .LBB20_80
# %bb.79:                               #   in Loop: Header=BB20_7 Depth=1
	ld.w	$a1, $s8, 104
	ld.d	$a2, $s3, 24
	ori	$a3, $zero, 112
	mul.d	$a1, $a1, $a3
	fld.s	$fa1, $s0, 360
	fld.s	$fa2, $a0, 160
	fld.s	$fa3, $a0, 164
	fld.s	$fa4, $a0, 168
	add.d	$a3, $a2, $a1
	fmul.s	$fa2, $fa1, $fa2
	fmul.s	$fa3, $fa1, $fa3
	fmul.s	$fa1, $fa1, $fa4
	fmul.s	$fa2, $fa0, $fa2
	fldx.s	$fa4, $a2, $a1
	fmul.s	$fa3, $fa0, $fa3
	fmul.s	$fa1, $fa0, $fa1
	fld.s	$fa5, $a3, 4
	fadd.s	$fa2, $fa2, $fa4
	fld.s	$fa4, $a3, 8
	fstx.s	$fa2, $a2, $a1
	fadd.s	$fa2, $fa3, $fa5
	fst.s	$fa2, $a3, 4
	fadd.s	$fa1, $fa1, $fa4
	fld.s	$fa2, $a3, 32
	fld.s	$fa3, $a3, 36
	fst.s	$fa1, $a3, 8
	fld.s	$fa1, $a3, 40
	fmul.s	$fa2, $fa0, $fa2
	fmul.s	$fa3, $fa0, $fa3
	fld.s	$fa4, $a0, 192
	fmul.s	$fa0, $fa0, $fa1
	fld.s	$fa1, $a0, 196
	fld.s	$fa5, $a0, 200
	fmul.s	$fa2, $fa2, $fa4
	fld.s	$fa4, $a3, 16
	fmul.s	$fa1, $fa3, $fa1
	fmul.s	$fa0, $fa0, $fa5
	fld.s	$fa3, $a3, 20
	fadd.s	$fa2, $fa2, $fa4
	fld.s	$fa4, $a3, 24
	fst.s	$fa2, $a3, 16
	fadd.s	$fa1, $fa1, $fa3
	fst.s	$fa1, $a3, 20
	fadd.s	$fa0, $fa0, $fa4
	fst.s	$fa0, $a3, 24
.LBB20_80:                              #   in Loop: Header=BB20_7 Depth=1
	bnez	$t0, .LBB20_6
# %bb.81:                               #   in Loop: Header=BB20_7 Depth=1
	ld.w	$a1, $s8, 108
	ld.d	$a2, $s3, 24
	ori	$a3, $zero, 112
	mul.d	$a1, $a1, $a3
	fld.s	$fa0, $s1, 360
	fld.s	$fa1, $a0, 160
	fld.s	$fa2, $a0, 164
	fld.s	$fa3, $a0, 168
	add.d	$a3, $a2, $a1
	fmul.s	$fa1, $fa0, $fa1
	fmul.s	$fa2, $fa0, $fa2
	fmul.s	$fa0, $fa0, $fa3
	fld.s	$fa3, $a0, 208
	fld.s	$fa4, $a0, 228
	fldx.s	$fa5, $a2, $a1
	fld.s	$fa6, $a0, 212
	fld.s	$fa7, $a0, 216
	fmul.s	$fa1, $fa1, $fa4
	fsub.s	$fa1, $fa5, $fa1
	fld.s	$fa5, $a3, 4
	fstx.s	$fa1, $a2, $a1
	fmul.s	$fa1, $fa2, $fa4
	fld.s	$fa2, $a3, 8
	fsub.s	$fa1, $fa5, $fa1
	fst.s	$fa1, $a3, 4
	fmul.s	$fa0, $fa0, $fa4
	fsub.s	$fa0, $fa2, $fa0
	fld.s	$fa1, $a3, 32
	fst.s	$fa0, $a3, 8
	fld.s	$fa0, $a3, 36
	fld.s	$fa2, $a3, 40
	fmul.s	$fa1, $fa1, $fa4
	fld.s	$fa5, $a3, 16
	fmul.s	$fa0, $fa0, $fa4
	fmul.s	$fa2, $fa2, $fa4
	fmul.s	$fa1, $fa3, $fa1
	fadd.s	$fa1, $fa5, $fa1
	fld.s	$fa3, $a3, 20
	fst.s	$fa1, $a3, 16
	fmul.s	$fa0, $fa6, $fa0
	fld.s	$fa1, $a3, 24
	fadd.s	$fa0, $fa3, $fa0
	fst.s	$fa0, $a3, 20
	fmul.s	$fa0, $fa7, $fa2
	fadd.s	$fa0, $fa1, $fa0
	fst.s	$fa0, $a3, 24
	b	.LBB20_6
.LBB20_82:
	fld.d	$fs6, $sp, 160                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 168                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 176                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 184                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 192                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 200                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 208                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 288                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 296                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 304
	ret
.Lfunc_end20:
	.size	_ZN35btSequentialImpulseConstraintSolver14convertContactEP20btPersistentManifoldRK19btContactSolverInfo, .Lfunc_end20-_ZN35btSequentialImpulseConstraintSolver14convertContactEP20btPersistentManifoldRK19btContactSolverInfo
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN35btSequentialImpulseConstraintSolver28solveGroupCacheFriendlySetupEPP17btCollisionObjectiPP20btPersistentManifoldiPP17btTypedConstraintiRK19btContactSolverInfoP12btIDebugDrawP12btStackAlloc
.LCPI21_0:
	.word	0x3f800000                      # float 1
	.word	0x3f800000                      # float 1
	.word	0x3f800000                      # float 1
	.word	0x00000000                      # float 0
.LCPI21_2:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0
.LCPI21_1:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.text
	.globl	_ZN35btSequentialImpulseConstraintSolver28solveGroupCacheFriendlySetupEPP17btCollisionObjectiPP20btPersistentManifoldiPP17btTypedConstraintiRK19btContactSolverInfoP12btIDebugDrawP12btStackAlloc
	.p2align	5
	.type	_ZN35btSequentialImpulseConstraintSolver28solveGroupCacheFriendlySetupEPP17btCollisionObjectiPP20btPersistentManifoldiPP17btTypedConstraintiRK19btContactSolverInfoP12btIDebugDrawP12btStackAlloc,@function
_ZN35btSequentialImpulseConstraintSolver28solveGroupCacheFriendlySetupEPP17btCollisionObjectiPP20btPersistentManifoldiPP17btTypedConstraintiRK19btContactSolverInfoP12btIDebugDrawP12btStackAlloc: # @_ZN35btSequentialImpulseConstraintSolver28solveGroupCacheFriendlySetupEPP17btCollisionObjectiPP20btPersistentManifoldiPP17btTypedConstraintiRK19btContactSolverInfoP12btIDebugDrawP12btStackAlloc
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception2
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
	st.d	$s7, $sp, 240                   # 8-byte Folded Spill
	st.d	$s8, $sp, 232                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 224                  # 8-byte Folded Spill
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
	move	$s3, $a7
	move	$s6, $a6
	move	$s7, $a5
	move	$fp, $a4
	move	$s0, $a3
	move	$s4, $a0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(_ZN15CProfileManager13Start_ProfileEPKc)
	jirl	$ra, $ra, 0
	sub.w	$a0, $zero, $fp
	beq	$s6, $a0, .LBB21_148
# %bb.1:                                # %.preheader379
	st.d	$s0, $sp, 16                    # 8-byte Folded Spill
	st.d	$fp, $sp, 24                    # 8-byte Folded Spill
	blez	$s6, .LBB21_5
# %bb.2:                                # %.lr.ph.preheader
	move	$fp, $s6
	move	$s0, $s7
	.p2align	4, , 16
.LBB21_3:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp34:                                # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp35:                                # EH_LABEL
# %bb.4:                                #   in Loop: Header=BB21_3 Depth=1
	addi.d	$fp, $fp, -1
	addi.d	$s0, $s0, 8
	bnez	$fp, .LBB21_3
.LBB21_5:                               # %._crit_edge
	ld.w	$fp, $s4, 12
	ld.w	$a0, $s4, 16
	bne	$fp, $a0, .LBB21_10
# %bb.6:
	sltui	$a0, $fp, 1
	slli.w	$a1, $fp, 1
	masknez	$a1, $a1, $a0
	ori	$a2, $zero, 1
	maskeqz	$a0, $a2, $a0
	or	$s0, $a0, $a1
	bge	$fp, $s0, .LBB21_10
# %bb.7:
	beqz	$s0, .LBB21_11
# %bb.8:
	ori	$a0, $zero, 112
	mul.d	$a0, $s0, $a0
.Ltmp37:                                # EH_LABEL
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
.Ltmp38:                                # EH_LABEL
# %bb.9:                                # %.noexc
	move	$s5, $a0
	ld.w	$a0, $s4, 12
	bgtz	$a0, .LBB21_12
	b	.LBB21_14
.LBB21_10:
	move	$a0, $fp
	b	.LBB21_18
.LBB21_11:
	move	$s5, $zero
	move	$a0, $fp
	blez	$a0, .LBB21_14
.LBB21_12:                              # %.lr.ph.i.i.i
	move	$s1, $zero
	ori	$a1, $zero, 112
	mul.d	$s2, $a0, $a1
	.p2align	4, , 16
.LBB21_13:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s4, 24
	add.d	$a0, $s5, $s1
	add.d	$a1, $a1, $s1
	ori	$a2, $zero, 112
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	addi.d	$s1, $s1, 112
	bne	$s2, $s1, .LBB21_13
.LBB21_14:                              # %_ZNK20btAlignedObjectArrayI12btSolverBodyE4copyEiiPS0_.exit.i.i
	ld.d	$a0, $s4, 24
	beqz	$a0, .LBB21_17
# %bb.15:                               # %_ZNK20btAlignedObjectArrayI12btSolverBodyE4copyEiiPS0_.exit.i.i
	ld.b	$a1, $s4, 32
	andi	$a1, $a1, 1
	beqz	$a1, .LBB21_17
# %bb.16:
.Ltmp39:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp40:                                # EH_LABEL
.LBB21_17:                              # %_ZN20btAlignedObjectArrayI12btSolverBodyE10deallocateEv.exit.i.i
	ori	$a1, $zero, 1
	ld.w	$a0, $s4, 12
	st.b	$a1, $s4, 32
	st.d	$s5, $s4, 24
	st.w	$s0, $s4, 16
.LBB21_18:
	addi.d	$a0, $a0, 1
	ld.d	$a1, $s4, 24
	st.w	$a0, $s4, 12
	ori	$a0, $zero, 112
	mul.d	$fp, $fp, $a0
	add.d	$a0, $a1, $fp
	ori	$a2, $zero, 112
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 24
	add.d	$a1, $a0, $fp
	xvrepli.b	$xr1, 0
	xvstx	$xr1, $a0, $fp
	vrepli.b	$vr0, 0
	vst	$vr0, $a1, 48
	xvst	$xr1, $sp, 64                   # 32-byte Folded Spill
	xvst	$xr1, $a1, 80
	st.d	$zero, $a1, 72
	pcalau12i	$a0, %pc_hi20(.LCPI21_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI21_0)
	ld.w	$fp, $s4, 204
	vst	$vr0, $a1, 32
	bge	$fp, $s6, .LBB21_32
# %bb.19:
	ld.w	$a0, $s4, 208
	bge	$a0, $s6, .LBB21_30
# %bb.20:
	beqz	$s6, .LBB21_23
# %bb.21:
	slli.d	$a0, $s6, 3
.Ltmp42:                                # EH_LABEL
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
.Ltmp43:                                # EH_LABEL
# %bb.22:                               # %.noexc227
	move	$s5, $a0
	ld.w	$a0, $s4, 204
	bgtz	$a0, .LBB21_24
	b	.LBB21_26
.LBB21_23:
	move	$s5, $zero
	move	$a0, $fp
	blez	$a0, .LBB21_26
.LBB21_24:                              # %.lr.ph.i.i.i222
	move	$a1, $zero
	slli.d	$a0, $a0, 3
	.p2align	4, , 16
.LBB21_25:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $s4, 216
	ldx.d	$a2, $a2, $a1
	stx.d	$a2, $s5, $a1
	addi.d	$a1, $a1, 8
	bne	$a0, $a1, .LBB21_25
.LBB21_26:                              # %_ZNK20btAlignedObjectArrayIN17btTypedConstraint17btConstraintInfo1EE4copyEiiPS1_.exit.i.i
	ld.d	$a0, $s4, 216
	beqz	$a0, .LBB21_29
# %bb.27:                               # %_ZNK20btAlignedObjectArrayIN17btTypedConstraint17btConstraintInfo1EE4copyEiiPS1_.exit.i.i
	ld.b	$a1, $s4, 224
	andi	$a1, $a1, 1
	beqz	$a1, .LBB21_29
# %bb.28:
.Ltmp44:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp45:                                # EH_LABEL
.LBB21_29:                              # %_ZN20btAlignedObjectArrayIN17btTypedConstraint17btConstraintInfo1EE10deallocateEv.exit.i.i
	ori	$a0, $zero, 1
	st.b	$a0, $s4, 224
	st.d	$s5, $s4, 216
	st.w	$s6, $s4, 208
.LBB21_30:                              # %.lr.ph.i
	sub.d	$a0, $s6, $fp
	slli.d	$a1, $fp, 3
	.p2align	4, , 16
.LBB21_31:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $s4, 216
	stx.d	$zero, $a2, $a1
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 8
	bnez	$a0, .LBB21_31
.LBB21_32:                              # %.loopexit378
	st.w	$s6, $s4, 204
	blez	$s6, .LBB21_37
# %bb.33:                               # %.lr.ph385
	move	$s0, $zero
	move	$fp, $zero
	slli.d	$s1, $s6, 3
	.p2align	4, , 16
.LBB21_34:                              # =>This Inner Loop Header: Depth=1
	ldx.d	$a0, $s7, $s0
	ld.d	$a1, $a0, 0
	ld.d	$a2, $s4, 216
	ld.d	$a3, $a1, 32
	add.d	$s5, $a2, $s0
.Ltmp47:                                # EH_LABEL
	move	$a1, $s5
	jirl	$ra, $a3, 0
.Ltmp48:                                # EH_LABEL
# %bb.35:                               #   in Loop: Header=BB21_34 Depth=1
	ld.w	$a0, $s5, 0
	addi.d	$s0, $s0, 8
	add.w	$fp, $a0, $fp
	bne	$s1, $s0, .LBB21_34
# %bb.36:                               # %._crit_edge386
	ld.w	$s0, $s4, 76
	blt	$s0, $fp, .LBB21_38
	b	.LBB21_51
.LBB21_37:
	move	$fp, $zero
	ld.w	$s0, $s4, 76
	bge	$s0, $fp, .LBB21_51
.LBB21_38:
	ld.w	$a0, $s4, 80
	bge	$a0, $fp, .LBB21_49
# %bb.39:
	beqz	$fp, .LBB21_42
# %bb.40:
	slli.d	$a0, $fp, 7
	alsl.d	$a0, $fp, $a0, 4
.Ltmp50:                                # EH_LABEL
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
.Ltmp51:                                # EH_LABEL
# %bb.41:                               # %.noexc244
	move	$s5, $a0
	ld.w	$a0, $s4, 76
	bgtz	$a0, .LBB21_43
	b	.LBB21_45
.LBB21_42:
	move	$s5, $zero
	move	$a0, $s0
	blez	$a0, .LBB21_45
.LBB21_43:                              # %.lr.ph.i.i.i239
	move	$s1, $zero
	slli.d	$a1, $a0, 7
	alsl.d	$s2, $a0, $a1, 4
	.p2align	4, , 16
.LBB21_44:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s4, 88
	add.d	$a0, $s5, $s1
	add.d	$a1, $a1, $s1
	ori	$a2, $zero, 144
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	addi.d	$s1, $s1, 144
	bne	$s2, $s1, .LBB21_44
.LBB21_45:                              # %_ZNK20btAlignedObjectArrayI18btSolverConstraintE4copyEiiPS0_.exit.i.i
	ld.d	$a0, $s4, 88
	beqz	$a0, .LBB21_48
# %bb.46:                               # %_ZNK20btAlignedObjectArrayI18btSolverConstraintE4copyEiiPS0_.exit.i.i
	ld.b	$a1, $s4, 96
	andi	$a1, $a1, 1
	beqz	$a1, .LBB21_48
# %bb.47:
.Ltmp52:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp53:                                # EH_LABEL
.LBB21_48:                              # %_ZN20btAlignedObjectArrayI18btSolverConstraintE10deallocateEv.exit.i.i
	ori	$a0, $zero, 1
	st.b	$a0, $s4, 96
	st.d	$s5, $s4, 88
	st.w	$fp, $s4, 80
.LBB21_49:                              # %.lr.ph.i229
	sub.d	$s1, $fp, $s0
	slli.d	$a0, $s0, 7
	alsl.d	$s0, $s0, $a0, 4
	.p2align	4, , 16
.LBB21_50:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s4, 88
	add.d	$a0, $a0, $s0
	ori	$a2, $zero, 144
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	addi.d	$s1, $s1, -1
	addi.d	$s0, $s0, 144
	bnez	$s1, .LBB21_50
.LBB21_51:                              # %.loopexit377
	st.w	$fp, $s4, 76
	blez	$s6, .LBB21_65
# %bb.52:                               # %.lr.ph397
	move	$s1, $zero
	move	$a1, $zero
	ld.d	$fp, $s4, 216
	lu12i.w	$a0, -2049
	ori	$a0, $a0, 4095
	lu52i.d	$s0, $a0, 2039
	movgr2fr.w	$fs0, $zero
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 56                    # 8-byte Folded Spill
	st.d	$s6, $sp, 32                    # 8-byte Folded Spill
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	b	.LBB21_54
	.p2align	4, , 16
.LBB21_53:                              #   in Loop: Header=BB21_54 Depth=1
	move	$a0, $zero
	addi.d	$s1, $s1, 1
	add.w	$a1, $a0, $a1
	beq	$s1, $s6, .LBB21_65
.LBB21_54:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_59 Depth 2
                                        #     Child Loop BB21_63 Depth 2
	slli.d	$a2, $s1, 3
	ldx.w	$a0, $fp, $a2
	beqz	$a0, .LBB21_53
# %bb.55:                               #   in Loop: Header=BB21_54 Depth=1
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	st.d	$a2, $sp, 104                   # 8-byte Folded Spill
	ldx.d	$s2, $s7, $a2
	ld.d	$s3, $s4, 88
	ld.d	$s5, $s2, 24
	ld.d	$s6, $s2, 32
.Ltmp55:                                # EH_LABEL
	move	$a0, $s4
	move	$a1, $s5
	pcaddu18i	$ra, %call36(_ZN35btSequentialImpulseConstraintSolver19getOrInitSolverBodyER17btCollisionObject)
	jirl	$ra, $ra, 0
.Ltmp56:                                # EH_LABEL
# %bb.56:                               #   in Loop: Header=BB21_54 Depth=1
.Ltmp58:                                # EH_LABEL
	move	$s7, $a0
	move	$a0, $s4
	move	$a1, $s6
	pcaddu18i	$ra, %call36(_ZN35btSequentialImpulseConstraintSolver19getOrInitSolverBodyER17btCollisionObject)
	jirl	$ra, $ra, 0
.Ltmp59:                                # EH_LABEL
# %bb.57:                               #   in Loop: Header=BB21_54 Depth=1
	move	$s8, $a0
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	alsl.d	$s1, $s1, $fp, 3
	ld.w	$a0, $s1, 0
	ld.d	$a1, $s4, 24
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	slli.d	$a1, $a2, 7
	alsl.d	$a1, $a2, $a1, 4
	add.d	$fp, $s3, $a1
	blez	$a0, .LBB21_60
# %bb.58:                               # %.lr.ph389.preheader
                                        #   in Loop: Header=BB21_54 Depth=1
	move	$s3, $zero
	addi.d	$s4, $fp, 132
	.p2align	4, , 16
.LBB21_59:                              # %.lr.ph389
                                        #   Parent Loop BB21_54 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a0, $s4, -132
	ori	$a2, $zero, 144
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	st.d	$s0, $s4, -4
	st.w	$s7, $s4, -28
	st.w	$s8, $s4, -24
	ld.w	$a0, $s1, 0
	st.w	$zero, $s4, -52
	addi.d	$s3, $s3, 1
	addi.d	$s4, $s4, 144
	blt	$s3, $a0, .LBB21_59
.LBB21_60:                              # %._crit_edge390
                                        #   in Loop: Header=BB21_54 Depth=1
	ori	$a1, $zero, 112
	mul.d	$a0, $s7, $a1
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	add.d	$a0, $a2, $a0
	mul.d	$a1, $s8, $a1
	add.d	$a1, $a2, $a1
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvst	$xr0, $a0, 0
	xvst	$xr0, $a1, 0
	ld.d	$s3, $sp, 56                    # 8-byte Folded Reload
	fld.s	$fa0, $s3, 12
	fld.s	$fa1, $s3, 32
	frecip.s	$fa0, $fa0
	fst.s	$fa0, $sp, 128
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	alsl.d	$a0, $a0, $s7, 3
	fst.s	$fa1, $sp, 132
	addi.d	$a1, $fp, 16
	st.d	$a1, $sp, 136
	st.d	$fp, $sp, 144
	ori	$a1, $zero, 36
	st.w	$a1, $sp, 168
	addi.d	$a1, $fp, 120
	st.d	$a1, $sp, 176
	addi.d	$a1, $fp, 124
	st.d	$a1, $sp, 184
	ld.d	$a0, $a0, 0
	addi.d	$a1, $fp, 128
	st.d	$a1, $sp, 192
	ld.w	$a1, $s3, 20
	ld.d	$a2, $a0, 0
	addi.d	$a3, $fp, 132
	st.d	$a3, $sp, 200
	st.w	$a1, $sp, 216
	ld.d	$a2, $a2, 40
	st.d	$zero, $sp, 152
	addi.d	$a1, $fp, 32
	st.d	$a1, $sp, 160
.Ltmp61:                                # EH_LABEL
	addi.d	$a1, $sp, 128
	jirl	$ra, $a2, 0
.Ltmp62:                                # EH_LABEL
# %bb.61:                               # %.preheader376
                                        #   in Loop: Header=BB21_54 Depth=1
	ld.w	$a0, $s1, 0
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	blez	$a0, .LBB21_64
# %bb.62:                               # %.lr.ph392
                                        #   in Loop: Header=BB21_54 Depth=1
	move	$a0, $zero
	addi.d	$a1, $fp, 64
	.p2align	4, , 16
.LBB21_63:                              #   Parent Loop BB21_54 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $s2, 24
	fld.s	$fa3, $a2, 280
	fld.s	$fa4, $a2, 284
	fld.s	$fa2, $a1, -60
	fld.s	$fa1, $a1, -64
	fld.s	$fa5, $a2, 288
	fld.s	$fa0, $a1, -56
	fmul.s	$fa4, $fa4, $fa2
	fld.s	$fa6, $a2, 300
	fmadd.s	$fa3, $fa3, $fa1, $fa4
	fmadd.s	$fa3, $fa5, $fa0, $fa3
	fld.s	$fa4, $a2, 296
	fmul.s	$fa5, $fa2, $fa6
	fld.s	$fa6, $a2, 304
	fld.s	$fa7, $a2, 316
	fld.s	$ft0, $a2, 312
	fmadd.s	$fa4, $fa4, $fa1, $fa5
	fmadd.s	$fa4, $fa6, $fa0, $fa4
	fmul.s	$fa5, $fa2, $fa7
	fmadd.s	$fa5, $ft0, $fa1, $fa5
	fld.s	$fa6, $a2, 320
	fld.s	$fa7, $a2, 364
	fld.s	$ft0, $a2, 368
	fld.s	$ft1, $a2, 372
	fmadd.s	$fa5, $fa6, $fa0, $fa5
	fmul.s	$fa3, $fa3, $fa7
	fmul.s	$fa4, $fa4, $ft0
	fmul.s	$fa5, $fa5, $ft1
	movfr2gr.s	$a2, $fa3
	movfr2gr.s	$a3, $fa4
	bstrins.d	$a2, $a3, 63, 32
	movfr2gr.s	$a3, $fa5
	bstrpick.d	$a3, $a3, 31, 0
	st.d	$a2, $a1, -16
	st.d	$a3, $a1, -8
	ld.d	$a2, $s2, 32
	fld.s	$fa6, $a2, 280
	fld.s	$fa7, $a2, 284
	fld.s	$fa4, $a1, -28
	fld.s	$fa3, $a1, -32
	fld.s	$ft0, $a2, 288
	fld.s	$fa5, $a1, -24
	fmul.s	$fa7, $fa7, $fa4
	fld.s	$ft1, $a2, 300
	fmadd.s	$fa6, $fa6, $fa3, $fa7
	fmadd.s	$fa6, $ft0, $fa5, $fa6
	fld.s	$fa7, $a2, 296
	fmul.s	$ft0, $fa4, $ft1
	fld.s	$ft1, $a2, 304
	fld.s	$ft2, $a2, 316
	fld.s	$ft3, $a2, 312
	fmadd.s	$fa7, $fa7, $fa3, $ft0
	fmadd.s	$fa7, $ft1, $fa5, $fa7
	fmul.s	$ft0, $fa4, $ft2
	fmadd.s	$ft0, $ft3, $fa3, $ft0
	fld.s	$ft1, $a2, 320
	fld.s	$ft2, $a2, 364
	fld.s	$ft3, $a2, 368
	fld.s	$ft4, $a2, 372
	fmadd.s	$ft0, $ft1, $fa5, $ft0
	fmul.s	$fa6, $fa6, $ft2
	fmul.s	$fa7, $fa7, $ft3
	fmul.s	$ft0, $ft0, $ft4
	movfr2gr.s	$a2, $fa6
	movfr2gr.s	$a3, $fa7
	bstrins.d	$a2, $a3, 63, 32
	movfr2gr.s	$a3, $ft0
	bstrpick.d	$a3, $a3, 31, 0
	st.d	$a2, $a1, 0
	st.d	$a3, $a1, 8
	fld.s	$ft2, $s5, 360
	fld.s	$fa7, $a1, -48
	fld.s	$ft0, $a1, -44
	fmul.s	$ft1, $ft2, $fa7
	fld.s	$fa6, $a1, -40
	fld.s	$ft3, $s5, 284
	fmul.s	$ft4, $ft2, $ft0
	fld.s	$ft5, $s5, 280
	fmul.s	$ft2, $ft2, $fa6
	fmul.s	$ft3, $fa2, $ft3
	fld.s	$ft6, $s5, 288
	fmadd.s	$ft3, $ft5, $fa1, $ft3
	fld.s	$ft5, $s5, 300
	fld.s	$ft7, $s5, 296
	fmadd.s	$ft3, $ft6, $fa0, $ft3
	fld.s	$ft6, $s5, 304
	fmul.s	$ft5, $fa2, $ft5
	fmadd.s	$ft5, $ft7, $fa1, $ft5
	fld.s	$ft7, $s5, 316
	fmadd.s	$ft5, $ft6, $fa0, $ft5
	fld.s	$ft6, $s5, 312
	fld.s	$ft8, $s5, 320
	fmul.s	$ft7, $fa2, $ft7
	fld.s	$ft9, $s6, 360
	fmadd.s	$ft6, $ft6, $fa1, $ft7
	fmadd.s	$ft6, $ft8, $fa0, $ft6
	fld.s	$ft7, $s6, 284
	fmul.s	$ft8, $fa7, $ft9
	fld.s	$ft10, $s6, 280
	fld.s	$ft11, $s6, 288
	fmul.s	$ft7, $fa4, $ft7
	fld.s	$ft12, $s6, 300
	fmadd.s	$ft7, $ft10, $fa3, $ft7
	fmadd.s	$ft7, $ft11, $fa5, $ft7
	fld.s	$ft10, $s6, 296
	fmul.s	$ft11, $fa4, $ft12
	fld.s	$ft12, $s6, 304
	fld.s	$ft13, $s6, 316
	fmadd.s	$ft10, $ft10, $fa3, $ft11
	fld.s	$ft11, $s6, 312
	fmadd.s	$ft10, $ft12, $fa5, $ft10
	fmul.s	$ft12, $fa4, $ft13
	fld.s	$ft13, $s6, 320
	fmadd.s	$ft11, $ft11, $fa3, $ft12
	fmul.s	$ft12, $ft0, $ft9
	fmul.s	$ft9, $fa6, $ft9
	fmadd.s	$ft11, $ft13, $fa5, $ft11
	fmul.s	$ft4, $ft0, $ft4
	fmadd.s	$ft1, $ft1, $fa7, $ft4
	fmadd.s	$ft1, $ft2, $fa6, $ft1
	fmul.s	$ft2, $fa2, $ft5
	fmadd.s	$ft2, $ft3, $fa1, $ft2
	fmadd.s	$ft2, $ft6, $fa0, $ft2
	fadd.s	$ft1, $ft1, $ft2
	fmul.s	$ft2, $ft0, $ft12
	fmadd.s	$ft2, $ft8, $fa7, $ft2
	fmadd.s	$ft2, $ft9, $fa6, $ft2
	fadd.s	$ft1, $ft1, $ft2
	fmul.s	$ft2, $fa4, $ft10
	fmadd.s	$ft2, $ft7, $fa3, $ft2
	fmadd.s	$ft2, $ft11, $fa5, $ft2
	fadd.s	$ft1, $ft1, $ft2
	frecip.s	$ft1, $ft1
	fst.s	$ft1, $a1, 28
	fld.s	$ft2, $s5, 332
	fld.s	$ft3, $s5, 328
	fmul.s	$ft2, $ft0, $ft2
	fld.s	$ft4, $s5, 336
	fld.s	$ft5, $s5, 348
	fmadd.s	$ft2, $fa7, $ft3, $ft2
	fld.s	$ft3, $s5, 344
	fmadd.s	$ft2, $fa6, $ft4, $ft2
	fmul.s	$fa2, $fa2, $ft5
	fld.s	$ft4, $s5, 352
	fmadd.s	$fa1, $fa1, $ft3, $fa2
	fld.s	$fa2, $s6, 332
	fld.s	$ft3, $s6, 328
	fmadd.s	$fa0, $fa0, $ft4, $fa1
	fadd.s	$fa0, $ft2, $fa0
	fmul.s	$fa1, $ft0, $fa2
	fmadd.s	$fa1, $fa7, $ft3, $fa1
	fld.s	$fa2, $s6, 336
	fld.s	$fa7, $s6, 348
	fld.s	$ft0, $s6, 344
	fld.s	$ft2, $s6, 352
	fmadd.s	$fa1, $fa6, $fa2, $fa1
	fmul.s	$fa2, $fa4, $fa7
	fmadd.s	$fa2, $fa3, $ft0, $fa2
	fmadd.s	$fa2, $fa5, $ft2, $fa2
	fld.s	$fa3, $a1, 56
	fsub.s	$fa1, $fa2, $fa1
	fadd.s	$fa0, $fa0, $fa1
	fsub.s	$fa0, $fs0, $fa0
	fmul.s	$fa1, $ft1, $fa3
	fmul.s	$fa0, $ft1, $fa0
	fadd.s	$fa0, $fa1, $fa0
	ld.w	$a2, $s1, 0
	fst.s	$fa0, $a1, 56
	st.w	$zero, $a1, 20
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 144
	blt	$a0, $a2, .LBB21_63
.LBB21_64:                              # %._crit_edge393
                                        #   in Loop: Header=BB21_54 Depth=1
	ld.d	$fp, $s4, 216
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ldx.w	$a0, $fp, $a0
	ld.d	$s6, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	addi.d	$s1, $s1, 1
	add.w	$a1, $a0, $a1
	bne	$s1, $s6, .LBB21_54
.LBB21_65:                              # %.preheader375
	ld.d	$fp, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 16                    # 8-byte Folded Reload
	blez	$fp, .LBB21_68
	.p2align	4, , 16
.LBB21_66:                              # %.lr.ph399
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 0
.Ltmp64:                                # EH_LABEL
	move	$a0, $s4
	move	$a2, $s3
	pcaddu18i	$ra, %call36(_ZN35btSequentialImpulseConstraintSolver14convertContactEP20btPersistentManifoldRK19btContactSolverInfo)
	jirl	$ra, $ra, 0
.Ltmp65:                                # EH_LABEL
# %bb.67:                               #   in Loop: Header=BB21_66 Depth=1
	addi.d	$fp, $fp, -1
	addi.d	$s0, $s0, 8
	bnez	$fp, .LBB21_66
.LBB21_68:                              # %._crit_edge400
	ld.w	$s2, $s4, 44
	ld.w	$fp, $s4, 140
	ld.w	$s1, $s4, 108
	bge	$fp, $s2, .LBB21_94
# %bb.69:
	ld.w	$a0, $s4, 144
	bge	$a0, $s2, .LBB21_77
# %bb.70:
	beqz	$s2, .LBB21_78
# %bb.71:
	slli.d	$a0, $s2, 2
.Ltmp67:                                # EH_LABEL
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
.Ltmp68:                                # EH_LABEL
# %bb.72:                               # %.noexc309
	move	$s0, $a0
	ld.w	$a1, $s4, 140
	ld.d	$a0, $s4, 152
	blez	$a1, .LBB21_79
.LBB21_73:                              # %iter.check
	ori	$a3, $zero, 4
	move	$a2, $zero
	bltu	$a1, $a3, .LBB21_88
# %bb.74:                               # %iter.check
	sub.d	$a3, $s0, $a0
	ori	$a4, $zero, 64
	bltu	$a3, $a4, .LBB21_88
# %bb.75:                               # %vector.main.loop.iter.check
	ori	$a2, $zero, 16
	bgeu	$a1, $a2, .LBB21_81
# %bb.76:
	move	$a2, $zero
	b	.LBB21_85
.LBB21_77:                              # %..lr.ph.i295_crit_edge
	ld.d	$s0, $s4, 152
	b	.LBB21_93
.LBB21_78:
	move	$s0, $zero
	move	$a1, $fp
	ld.d	$a0, $s4, 152
	bgtz	$a1, .LBB21_73
.LBB21_79:                              # %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i
	beqz	$a0, .LBB21_92
# %bb.80:                               # %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i
	ld.b	$a1, $s4, 160
	andi	$a1, $a1, 1
	bnez	$a1, .LBB21_91
	b	.LBB21_92
.LBB21_81:                              # %vector.ph
	bstrpick.d	$a2, $a1, 30, 4
	slli.d	$a2, $a2, 4
	addi.d	$a3, $a0, 32
	addi.d	$a4, $s0, 32
	move	$a5, $a2
	.p2align	4, , 16
.LBB21_82:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a3, -32
	xvld	$xr1, $a3, 0
	xvst	$xr0, $a4, -32
	xvst	$xr1, $a4, 0
	addi.d	$a5, $a5, -16
	addi.d	$a3, $a3, 64
	addi.d	$a4, $a4, 64
	bnez	$a5, .LBB21_82
# %bb.83:                               # %middle.block
	beq	$a2, $a1, .LBB21_90
# %bb.84:                               # %vec.epilog.iter.check
	andi	$a3, $a1, 12
	beqz	$a3, .LBB21_88
.LBB21_85:                              # %vec.epilog.ph
	move	$a5, $a2
	bstrpick.d	$a2, $a1, 30, 2
	slli.d	$a2, $a2, 2
	sub.d	$a3, $a5, $a2
	alsl.d	$a4, $a5, $a0, 2
	alsl.d	$a5, $a5, $s0, 2
	.p2align	4, , 16
.LBB21_86:                              # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a4, 0
	vst	$vr0, $a5, 0
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a5, 16
	bnez	$a3, .LBB21_86
# %bb.87:                               # %vec.epilog.middle.block
	beq	$a2, $a1, .LBB21_90
.LBB21_88:                              # %vec.epilog.scalar.ph.preheader
	sub.d	$a1, $a1, $a2
	alsl.d	$a3, $a2, $a0, 2
	alsl.d	$a2, $a2, $s0, 2
	.p2align	4, , 16
.LBB21_89:                              # %vec.epilog.scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a3, 0
	st.w	$a4, $a2, 0
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 4
	addi.d	$a2, $a2, 4
	bnez	$a1, .LBB21_89
.LBB21_90:                              # %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i
	ld.bu	$a1, $s4, 160
	beqz	$a1, .LBB21_92
.LBB21_91:
.Ltmp69:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp70:                                # EH_LABEL
.LBB21_92:                              # %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i
	ori	$a0, $zero, 1
	st.b	$a0, $s4, 160
	st.d	$s0, $s4, 152
	st.w	$s2, $s4, 144
.LBB21_93:                              # %.lr.ph.i295
	alsl.d	$a0, $fp, $s0, 2
	sub.d	$a1, $s2, $fp
	slli.d	$a2, $a1, 2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB21_94:                              # %.loopexit374
	ld.w	$fp, $s4, 172
	st.w	$s2, $s4, 140
	bge	$fp, $s1, .LBB21_120
# %bb.95:
	ld.w	$a0, $s4, 176
	bge	$a0, $s1, .LBB21_103
# %bb.96:
	beqz	$s1, .LBB21_104
# %bb.97:
	slli.d	$a0, $s1, 2
.Ltmp72:                                # EH_LABEL
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
.Ltmp73:                                # EH_LABEL
# %bb.98:                               # %.noexc334
	move	$s0, $a0
	ld.w	$a1, $s4, 172
	ld.d	$a0, $s4, 184
	blez	$a1, .LBB21_105
.LBB21_99:                              # %iter.check469
	ori	$a3, $zero, 4
	move	$a2, $zero
	bltu	$a1, $a3, .LBB21_114
# %bb.100:                              # %iter.check469
	sub.d	$a3, $s0, $a0
	ori	$a4, $zero, 64
	bltu	$a3, $a4, .LBB21_114
# %bb.101:                              # %vector.main.loop.iter.check471
	ori	$a2, $zero, 16
	bgeu	$a1, $a2, .LBB21_107
# %bb.102:
	move	$a2, $zero
	b	.LBB21_111
.LBB21_103:                             # %..lr.ph.i311_crit_edge
	ld.d	$s0, $s4, 184
	b	.LBB21_119
.LBB21_104:
	move	$s0, $zero
	move	$a1, $fp
	ld.d	$a0, $s4, 184
	bgtz	$a1, .LBB21_99
.LBB21_105:                             # %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i321
	beqz	$a0, .LBB21_118
# %bb.106:                              # %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i321
	ld.b	$a1, $s4, 192
	andi	$a1, $a1, 1
	bnez	$a1, .LBB21_117
	b	.LBB21_118
.LBB21_107:                             # %vector.ph472
	bstrpick.d	$a2, $a1, 30, 4
	slli.d	$a2, $a2, 4
	addi.d	$a3, $a0, 32
	addi.d	$a4, $s0, 32
	move	$a5, $a2
	.p2align	4, , 16
.LBB21_108:                             # %vector.body475
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a3, -32
	xvld	$xr1, $a3, 0
	xvst	$xr0, $a4, -32
	xvst	$xr1, $a4, 0
	addi.d	$a5, $a5, -16
	addi.d	$a3, $a3, 64
	addi.d	$a4, $a4, 64
	bnez	$a5, .LBB21_108
# %bb.109:                              # %middle.block480
	beq	$a2, $a1, .LBB21_116
# %bb.110:                              # %vec.epilog.iter.check485
	andi	$a3, $a1, 12
	beqz	$a3, .LBB21_114
.LBB21_111:                             # %vec.epilog.ph484
	move	$a5, $a2
	bstrpick.d	$a2, $a1, 30, 2
	slli.d	$a2, $a2, 2
	sub.d	$a3, $a5, $a2
	alsl.d	$a4, $a5, $a0, 2
	alsl.d	$a5, $a5, $s0, 2
	.p2align	4, , 16
.LBB21_112:                             # %vec.epilog.vector.body490
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a4, 0
	vst	$vr0, $a5, 0
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a5, 16
	bnez	$a3, .LBB21_112
# %bb.113:                              # %vec.epilog.middle.block494
	beq	$a2, $a1, .LBB21_116
.LBB21_114:                             # %vec.epilog.scalar.ph483.preheader
	sub.d	$a1, $a1, $a2
	alsl.d	$a3, $a2, $a0, 2
	alsl.d	$a2, $a2, $s0, 2
	.p2align	4, , 16
.LBB21_115:                             # %vec.epilog.scalar.ph483
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a3, 0
	st.w	$a4, $a2, 0
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 4
	addi.d	$a2, $a2, 4
	bnez	$a1, .LBB21_115
.LBB21_116:                             # %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i330
	ld.bu	$a1, $s4, 192
	beqz	$a1, .LBB21_118
.LBB21_117:
.Ltmp74:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp75:                                # EH_LABEL
.LBB21_118:                             # %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i324
	ori	$a0, $zero, 1
	st.b	$a0, $s4, 192
	st.d	$s0, $s4, 184
	st.w	$s1, $s4, 176
.LBB21_119:                             # %.lr.ph.i311
	alsl.d	$a0, $fp, $s0, 2
	sub.d	$a1, $s1, $fp
	slli.d	$a2, $a1, 2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB21_120:                             # %.loopexit373
	st.w	$s1, $s4, 172
	blez	$s2, .LBB21_134
# %bb.121:                              # %iter.check499
	ld.d	$a0, $s4, 152
	ori	$a1, $zero, 3
	bltu	$a1, $s2, .LBB21_123
# %bb.122:
	move	$a1, $zero
	b	.LBB21_132
.LBB21_123:                             # %vector.main.loop.iter.check501
	ori	$a1, $zero, 16
	bgeu	$s2, $a1, .LBB21_125
# %bb.124:
	move	$a1, $zero
	b	.LBB21_129
.LBB21_125:                             # %vector.ph502
	pcalau12i	$a1, %pc_hi20(.LCPI21_1)
	xvld	$xr0, $a1, %pc_lo12(.LCPI21_1)
	bstrpick.d	$a1, $s2, 30, 4
	slli.d	$a1, $a1, 4
	addi.d	$a2, $a0, 32
	move	$a3, $a1
	.p2align	4, , 16
.LBB21_126:                             # %vector.body505
                                        # =>This Inner Loop Header: Depth=1
	xvaddi.wu	$xr1, $xr0, 8
	xvst	$xr0, $a2, -32
	xvst	$xr1, $a2, 0
	xvaddi.wu	$xr0, $xr0, 16
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB21_126
# %bb.127:                              # %middle.block508
	beq	$a1, $s2, .LBB21_134
# %bb.128:                              # %vec.epilog.iter.check513
	andi	$a2, $s2, 12
	beqz	$a2, .LBB21_132
.LBB21_129:                             # %vec.epilog.ph512
	move	$a3, $a1
	pcalau12i	$a1, %pc_hi20(.LCPI21_2)
	vld	$vr0, $a1, %pc_lo12(.LCPI21_2)
	bstrpick.d	$a1, $s2, 30, 2
	slli.d	$a1, $a1, 2
	vreplgr2vr.w	$vr1, $a3
	vor.v	$vr0, $vr1, $vr0
	sub.d	$a2, $a3, $a1
	alsl.d	$a3, $a3, $a0, 2
	.p2align	4, , 16
.LBB21_130:                             # %vec.epilog.vector.body518
                                        # =>This Inner Loop Header: Depth=1
	vst	$vr0, $a3, 0
	vaddi.wu	$vr0, $vr0, 4
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 16
	bnez	$a2, .LBB21_130
# %bb.131:                              # %vec.epilog.middle.block523
	beq	$a1, $s2, .LBB21_134
.LBB21_132:                             # %vec.epilog.scalar.ph511.preheader
	alsl.d	$a0, $a1, $a0, 2
	sub.d	$a2, $s2, $a1
	.p2align	4, , 16
.LBB21_133:                             # %vec.epilog.scalar.ph511
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a1, $a0, 0
	addi.d	$a1, $a1, 1
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 4
	bnez	$a2, .LBB21_133
.LBB21_134:                             # %.preheader
	blez	$s1, .LBB21_148
# %bb.135:                              # %iter.check528
	ld.d	$a0, $s4, 184
	ori	$a1, $zero, 3
	bltu	$a1, $s1, .LBB21_137
# %bb.136:
	move	$a1, $zero
	b	.LBB21_146
.LBB21_137:                             # %vector.main.loop.iter.check530
	ori	$a1, $zero, 16
	bgeu	$s1, $a1, .LBB21_139
# %bb.138:
	move	$a1, $zero
	b	.LBB21_143
.LBB21_139:                             # %vector.ph531
	pcalau12i	$a1, %pc_hi20(.LCPI21_1)
	xvld	$xr0, $a1, %pc_lo12(.LCPI21_1)
	bstrpick.d	$a1, $s1, 30, 4
	slli.d	$a1, $a1, 4
	addi.d	$a2, $a0, 32
	move	$a3, $a1
	.p2align	4, , 16
.LBB21_140:                             # %vector.body534
                                        # =>This Inner Loop Header: Depth=1
	xvaddi.wu	$xr1, $xr0, 8
	xvst	$xr0, $a2, -32
	xvst	$xr1, $a2, 0
	xvaddi.wu	$xr0, $xr0, 16
	addi.d	$a3, $a3, -16
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB21_140
# %bb.141:                              # %middle.block540
	beq	$a1, $s1, .LBB21_148
# %bb.142:                              # %vec.epilog.iter.check545
	andi	$a2, $s1, 12
	beqz	$a2, .LBB21_146
.LBB21_143:                             # %vec.epilog.ph544
	move	$a3, $a1
	pcalau12i	$a1, %pc_hi20(.LCPI21_2)
	vld	$vr0, $a1, %pc_lo12(.LCPI21_2)
	bstrpick.d	$a1, $s1, 30, 2
	slli.d	$a1, $a1, 2
	vreplgr2vr.w	$vr1, $a3
	vor.v	$vr0, $vr1, $vr0
	sub.d	$a2, $a3, $a1
	alsl.d	$a3, $a3, $a0, 2
	.p2align	4, , 16
.LBB21_144:                             # %vec.epilog.vector.body553
                                        # =>This Inner Loop Header: Depth=1
	vst	$vr0, $a3, 0
	vaddi.wu	$vr0, $vr0, 4
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 16
	bnez	$a2, .LBB21_144
# %bb.145:                              # %vec.epilog.middle.block558
	beq	$a1, $s1, .LBB21_148
.LBB21_146:                             # %vec.epilog.scalar.ph543.preheader
	alsl.d	$a0, $a1, $a0, 2
	sub.d	$a2, $s1, $a1
	.p2align	4, , 16
.LBB21_147:                             # %vec.epilog.scalar.ph543
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a1, $a0, 0
	addi.d	$a1, $a1, 1
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 4
	bnez	$a2, .LBB21_147
.LBB21_148:                             # %.loopexit
	pcaddu18i	$ra, %call36(_ZN15CProfileManager12Stop_ProfileEv)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $zero
	fld.d	$fs0, $sp, 224                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 240                   # 8-byte Folded Reload
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
.LBB21_149:
.Ltmp76:                                # EH_LABEL
	b	.LBB21_160
.LBB21_150:
.Ltmp71:                                # EH_LABEL
	b	.LBB21_160
.LBB21_151:
.Ltmp54:                                # EH_LABEL
	b	.LBB21_160
.LBB21_152:
.Ltmp46:                                # EH_LABEL
	b	.LBB21_160
.LBB21_153:
.Ltmp41:                                # EH_LABEL
	b	.LBB21_160
.LBB21_154:
.Ltmp63:                                # EH_LABEL
	b	.LBB21_160
.LBB21_155:
.Ltmp57:                                # EH_LABEL
	b	.LBB21_160
.LBB21_156:
.Ltmp60:                                # EH_LABEL
	b	.LBB21_160
.LBB21_157:
.Ltmp66:                                # EH_LABEL
	b	.LBB21_160
.LBB21_158:
.Ltmp49:                                # EH_LABEL
	b	.LBB21_160
.LBB21_159:
.Ltmp36:                                # EH_LABEL
.LBB21_160:
	move	$fp, $a0
.Ltmp77:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN15CProfileManager12Stop_ProfileEv)
	jirl	$ra, $ra, 0
.Ltmp78:                                # EH_LABEL
# %bb.161:                              # %_ZN14CProfileSampleD2Ev.exit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB21_162:
.Ltmp79:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end21:
	.size	_ZN35btSequentialImpulseConstraintSolver28solveGroupCacheFriendlySetupEPP17btCollisionObjectiPP20btPersistentManifoldiPP17btTypedConstraintiRK19btContactSolverInfoP12btIDebugDrawP12btStackAlloc, .Lfunc_end21-_ZN35btSequentialImpulseConstraintSolver28solveGroupCacheFriendlySetupEPP17btCollisionObjectiPP20btPersistentManifoldiPP17btTypedConstraintiRK19btContactSolverInfoP12btIDebugDrawP12btStackAlloc
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table21:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Lfunc_begin2-.Lfunc_begin2    # >> Call Site 1 <<
	.uleb128 .Ltmp34-.Lfunc_begin2          #   Call between .Lfunc_begin2 and .Ltmp34
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp34-.Lfunc_begin2          # >> Call Site 2 <<
	.uleb128 .Ltmp35-.Ltmp34                #   Call between .Ltmp34 and .Ltmp35
	.uleb128 .Ltmp36-.Lfunc_begin2          #     jumps to .Ltmp36
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp37-.Lfunc_begin2          # >> Call Site 3 <<
	.uleb128 .Ltmp38-.Ltmp37                #   Call between .Ltmp37 and .Ltmp38
	.uleb128 .Ltmp41-.Lfunc_begin2          #     jumps to .Ltmp41
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp38-.Lfunc_begin2          # >> Call Site 4 <<
	.uleb128 .Ltmp39-.Ltmp38                #   Call between .Ltmp38 and .Ltmp39
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp39-.Lfunc_begin2          # >> Call Site 5 <<
	.uleb128 .Ltmp40-.Ltmp39                #   Call between .Ltmp39 and .Ltmp40
	.uleb128 .Ltmp41-.Lfunc_begin2          #     jumps to .Ltmp41
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp40-.Lfunc_begin2          # >> Call Site 6 <<
	.uleb128 .Ltmp42-.Ltmp40                #   Call between .Ltmp40 and .Ltmp42
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp42-.Lfunc_begin2          # >> Call Site 7 <<
	.uleb128 .Ltmp45-.Ltmp42                #   Call between .Ltmp42 and .Ltmp45
	.uleb128 .Ltmp46-.Lfunc_begin2          #     jumps to .Ltmp46
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp47-.Lfunc_begin2          # >> Call Site 8 <<
	.uleb128 .Ltmp48-.Ltmp47                #   Call between .Ltmp47 and .Ltmp48
	.uleb128 .Ltmp49-.Lfunc_begin2          #     jumps to .Ltmp49
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp50-.Lfunc_begin2          # >> Call Site 9 <<
	.uleb128 .Ltmp51-.Ltmp50                #   Call between .Ltmp50 and .Ltmp51
	.uleb128 .Ltmp54-.Lfunc_begin2          #     jumps to .Ltmp54
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp51-.Lfunc_begin2          # >> Call Site 10 <<
	.uleb128 .Ltmp52-.Ltmp51                #   Call between .Ltmp51 and .Ltmp52
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp52-.Lfunc_begin2          # >> Call Site 11 <<
	.uleb128 .Ltmp53-.Ltmp52                #   Call between .Ltmp52 and .Ltmp53
	.uleb128 .Ltmp54-.Lfunc_begin2          #     jumps to .Ltmp54
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp53-.Lfunc_begin2          # >> Call Site 12 <<
	.uleb128 .Ltmp55-.Ltmp53                #   Call between .Ltmp53 and .Ltmp55
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp55-.Lfunc_begin2          # >> Call Site 13 <<
	.uleb128 .Ltmp56-.Ltmp55                #   Call between .Ltmp55 and .Ltmp56
	.uleb128 .Ltmp57-.Lfunc_begin2          #     jumps to .Ltmp57
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp58-.Lfunc_begin2          # >> Call Site 14 <<
	.uleb128 .Ltmp59-.Ltmp58                #   Call between .Ltmp58 and .Ltmp59
	.uleb128 .Ltmp60-.Lfunc_begin2          #     jumps to .Ltmp60
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp59-.Lfunc_begin2          # >> Call Site 15 <<
	.uleb128 .Ltmp61-.Ltmp59                #   Call between .Ltmp59 and .Ltmp61
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp61-.Lfunc_begin2          # >> Call Site 16 <<
	.uleb128 .Ltmp62-.Ltmp61                #   Call between .Ltmp61 and .Ltmp62
	.uleb128 .Ltmp63-.Lfunc_begin2          #     jumps to .Ltmp63
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp64-.Lfunc_begin2          # >> Call Site 17 <<
	.uleb128 .Ltmp65-.Ltmp64                #   Call between .Ltmp64 and .Ltmp65
	.uleb128 .Ltmp66-.Lfunc_begin2          #     jumps to .Ltmp66
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp67-.Lfunc_begin2          # >> Call Site 18 <<
	.uleb128 .Ltmp70-.Ltmp67                #   Call between .Ltmp67 and .Ltmp70
	.uleb128 .Ltmp71-.Lfunc_begin2          #     jumps to .Ltmp71
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp70-.Lfunc_begin2          # >> Call Site 19 <<
	.uleb128 .Ltmp72-.Ltmp70                #   Call between .Ltmp70 and .Ltmp72
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp72-.Lfunc_begin2          # >> Call Site 20 <<
	.uleb128 .Ltmp75-.Ltmp72                #   Call between .Ltmp72 and .Ltmp75
	.uleb128 .Ltmp76-.Lfunc_begin2          #     jumps to .Ltmp76
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp75-.Lfunc_begin2          # >> Call Site 21 <<
	.uleb128 .Ltmp77-.Ltmp75                #   Call between .Ltmp75 and .Ltmp77
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp77-.Lfunc_begin2          # >> Call Site 22 <<
	.uleb128 .Ltmp78-.Ltmp77                #   Call between .Ltmp77 and .Ltmp78
	.uleb128 .Ltmp79-.Lfunc_begin2          #     jumps to .Ltmp79
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp78-.Lfunc_begin2          # >> Call Site 23 <<
	.uleb128 .Lfunc_end21-.Ltmp78           #   Call between .Ltmp78 and .Lfunc_end21
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase1:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN35btSequentialImpulseConstraintSolver33solveGroupCacheFriendlyIterationsEPP17btCollisionObjectiPP20btPersistentManifoldiPP17btTypedConstraintiRK19btContactSolverInfoP12btIDebugDrawP12btStackAlloc
.LCPI22_0:
	.word	0x3f800000                      # float 1
	.word	0x3f800000                      # float 1
	.word	0x3f800000                      # float 1
	.word	0x00000000                      # float 0
	.text
	.globl	_ZN35btSequentialImpulseConstraintSolver33solveGroupCacheFriendlyIterationsEPP17btCollisionObjectiPP20btPersistentManifoldiPP17btTypedConstraintiRK19btContactSolverInfoP12btIDebugDrawP12btStackAlloc
	.p2align	5
	.type	_ZN35btSequentialImpulseConstraintSolver33solveGroupCacheFriendlyIterationsEPP17btCollisionObjectiPP20btPersistentManifoldiPP17btTypedConstraintiRK19btContactSolverInfoP12btIDebugDrawP12btStackAlloc,@function
_ZN35btSequentialImpulseConstraintSolver33solveGroupCacheFriendlyIterationsEPP17btCollisionObjectiPP20btPersistentManifoldiPP17btTypedConstraintiRK19btContactSolverInfoP12btIDebugDrawP12btStackAlloc: # @_ZN35btSequentialImpulseConstraintSolver33solveGroupCacheFriendlyIterationsEPP17btCollisionObjectiPP20btPersistentManifoldiPP17btTypedConstraintiRK19btContactSolverInfoP12btIDebugDrawP12btStackAlloc
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception3
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
	st.d	$s8, $sp, 184                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 176                  # 8-byte Folded Spill
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
	move	$s2, $a7
	move	$s3, $a6
	move	$fp, $a5
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(_ZN15CProfileManager13Start_ProfileEPKc)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 20
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	blez	$a0, .LBB22_144
# %bb.1:                                # %.lr.ph313
	ld.wu	$a0, $s0, 108
	ld.wu	$a1, $s0, 44
	move	$s4, $zero
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	addi.w	$s5, $a0, 0
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	addi.w	$s6, $a1, 0
	lu12i.w	$a0, 406
	ori	$a7, $a0, 1549
	lu12i.w	$a0, 247535
	ori	$t0, $a0, 863
	lu12i.w	$a0, -349526
	ori	$a0, $a0, 2731
	lu32i.d	$a0, 0
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	ori	$s7, $zero, 112
	movgr2fr.w	$fs0, $zero
	xvrepli.b	$xr0, 0
	xvst	$xr0, $sp, 128                  # 32-byte Folded Spill
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 96                   # 16-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	st.d	$s6, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 168                   # 8-byte Folded Spill
	st.d	$a7, $sp, 48                    # 8-byte Folded Spill
	st.d	$t0, $sp, 40                    # 8-byte Folded Spill
	b	.LBB22_3
	.p2align	4, , 16
.LBB22_2:                               # %.loopexit267
                                        #   in Loop: Header=BB22_3 Depth=1
	ld.w	$a0, $s2, 20
	addi.w	$s4, $s4, 1
	ld.d	$a7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$t0, $sp, 40                    # 8-byte Folded Reload
	bge	$s4, $a0, .LBB22_144
.LBB22_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB22_134 Depth 2
                                        #     Child Loop BB22_140 Depth 2
                                        #     Child Loop BB22_78 Depth 2
                                        #     Child Loop BB22_81 Depth 2
                                        #       Child Loop BB22_102 Depth 3
                                        #       Child Loop BB22_113 Depth 3
                                        #     Child Loop BB22_126 Depth 2
                                        #     Child Loop BB22_130 Depth 2
                                        #     Child Loop BB22_22 Depth 2
                                        #     Child Loop BB22_25 Depth 2
                                        #       Child Loop BB22_46 Depth 3
                                        #       Child Loop BB22_57 Depth 3
                                        #     Child Loop BB22_70 Depth 2
                                        #     Child Loop BB22_74 Depth 2
	andi	$a0, $s4, 7
	bnez	$a0, .LBB22_19
# %bb.4:                                #   in Loop: Header=BB22_3 Depth=1
	ld.wu	$a0, $s2, 60
	andi	$a0, $a0, 1
	beqz	$a0, .LBB22_19
# %bb.5:                                # %.preheader275
                                        #   in Loop: Header=BB22_3 Depth=1
	blez	$s6, .LBB22_12
# %bb.6:                                # %_ZN35btSequentialImpulseConstraintSolver10btRandInt2Ei.exit.peel
                                        #   in Loop: Header=BB22_3 Depth=1
	ld.d	$a0, $s0, 232
	mul.d	$a0, $a0, $a7
	add.d	$a1, $a0, $t0
	ori	$a0, $zero, 1
	bne	$s6, $a0, .LBB22_8
# %bb.7:                                #   in Loop: Header=BB22_3 Depth=1
	bstrpick.d	$a1, $a1, 31, 0
	b	.LBB22_11
.LBB22_8:                               # %_ZN35btSequentialImpulseConstraintSolver10btRandInt2Ei.exit.peel334
                                        #   in Loop: Header=BB22_3 Depth=1
	ld.d	$a0, $s0, 152
	mul.d	$a1, $a1, $a7
	add.d	$a2, $a1, $t0
	bstrpick.d	$a1, $a2, 31, 0
	bstrpick.d	$a3, $a2, 31, 16
	xor	$a3, $a3, $a1
	srli.d	$a4, $a3, 8
	xor	$a3, $a4, $a3
	srli.d	$a4, $a3, 4
	xor	$a3, $a4, $a3
	srli.d	$a4, $a3, 2
	xor	$a3, $a4, $a3
	srli.d	$a4, $a3, 1
	xor	$a3, $a4, $a3
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 2
	ldx.w	$a4, $a0, $a3
	ld.w	$a5, $a0, 4
	st.w	$a4, $a0, 4
	stx.w	$a5, $a0, $a3
	ori	$a3, $zero, 2
	beq	$s6, $a3, .LBB22_11
# %bb.9:                                # %_ZN35btSequentialImpulseConstraintSolver10btRandInt2Ei.exit.peel339
                                        #   in Loop: Header=BB22_3 Depth=1
	mul.d	$a1, $a2, $a7
	add.d	$a2, $a1, $t0
	bstrpick.d	$a1, $a2, 31, 0
	bstrpick.d	$a3, $a2, 31, 16
	xor	$a3, $a3, $a1
	srli.d	$a4, $a3, 8
	xor	$a3, $a4, $a3
	srli.d	$a4, $a3, 4
	xor	$a3, $a4, $a3
	srli.d	$a4, $a3, 2
	xor	$a3, $a4, $a3
	bstrpick.d	$a4, $a3, 31, 0
	ld.d	$a5, $sp, 8                     # 8-byte Folded Reload
	mul.d	$a4, $a4, $a5
	srli.d	$a4, $a4, 33
	alsl.d	$a4, $a4, $a4, 1
	sub.w	$a3, $a3, $a4
	slli.d	$a3, $a3, 2
	ldx.w	$a4, $a0, $a3
	ld.w	$a5, $a0, 8
	st.w	$a4, $a0, 8
	stx.w	$a5, $a0, $a3
	ori	$a3, $zero, 3
	beq	$s6, $a3, .LBB22_11
# %bb.10:                               # %_ZN35btSequentialImpulseConstraintSolver10btRandInt2Ei.exit.peel344
                                        #   in Loop: Header=BB22_3 Depth=1
	mul.d	$a1, $a2, $a7
	add.d	$a2, $a1, $t0
	bstrpick.d	$a1, $a2, 31, 0
	bstrpick.d	$a2, $a2, 31, 16
	xor	$a2, $a2, $a1
	srli.d	$a3, $a2, 8
	xor	$a2, $a3, $a2
	srli.d	$a3, $a2, 4
	xor	$a2, $a3, $a2
	srli.d	$a3, $a2, 2
	xor	$a2, $a3, $a2
	andi	$a2, $a2, 3
	slli.d	$a2, $a2, 2
	ldx.w	$a3, $a0, $a2
	ld.w	$a4, $a0, 12
	st.w	$a3, $a0, 12
	stx.w	$a4, $a0, $a2
	ori	$a2, $zero, 4
	bne	$s6, $a2, .LBB22_132
	.p2align	4, , 16
.LBB22_11:                              # %..preheader273_crit_edge
                                        #   in Loop: Header=BB22_3 Depth=1
	st.d	$a1, $s0, 232
.LBB22_12:                              # %.preheader273
                                        #   in Loop: Header=BB22_3 Depth=1
	blez	$s5, .LBB22_19
# %bb.13:                               # %_ZN35btSequentialImpulseConstraintSolver10btRandInt2Ei.exit172.peel
                                        #   in Loop: Header=BB22_3 Depth=1
	ld.d	$a0, $s0, 232
	mul.d	$a0, $a0, $a7
	add.d	$a1, $a0, $t0
	ori	$a0, $zero, 1
	bne	$s5, $a0, .LBB22_15
# %bb.14:                               #   in Loop: Header=BB22_3 Depth=1
	bstrpick.d	$a1, $a1, 31, 0
	b	.LBB22_18
.LBB22_15:                              # %_ZN35btSequentialImpulseConstraintSolver10btRandInt2Ei.exit172.peel356
                                        #   in Loop: Header=BB22_3 Depth=1
	ld.d	$a0, $s0, 184
	mul.d	$a1, $a1, $a7
	add.d	$a2, $a1, $t0
	bstrpick.d	$a1, $a2, 31, 0
	bstrpick.d	$a3, $a2, 31, 16
	xor	$a3, $a3, $a1
	srli.d	$a4, $a3, 8
	xor	$a3, $a4, $a3
	srli.d	$a4, $a3, 4
	xor	$a3, $a4, $a3
	srli.d	$a4, $a3, 2
	xor	$a3, $a4, $a3
	srli.d	$a4, $a3, 1
	xor	$a3, $a4, $a3
	andi	$a3, $a3, 1
	slli.d	$a3, $a3, 2
	ldx.w	$a4, $a0, $a3
	ld.w	$a5, $a0, 4
	st.w	$a4, $a0, 4
	stx.w	$a5, $a0, $a3
	ori	$a3, $zero, 2
	beq	$s5, $a3, .LBB22_18
# %bb.16:                               # %_ZN35btSequentialImpulseConstraintSolver10btRandInt2Ei.exit172.peel361
                                        #   in Loop: Header=BB22_3 Depth=1
	mul.d	$a1, $a2, $a7
	add.d	$a2, $a1, $t0
	bstrpick.d	$a1, $a2, 31, 0
	bstrpick.d	$a3, $a2, 31, 16
	xor	$a3, $a3, $a1
	srli.d	$a4, $a3, 8
	xor	$a3, $a4, $a3
	srli.d	$a4, $a3, 4
	xor	$a3, $a4, $a3
	srli.d	$a4, $a3, 2
	xor	$a3, $a4, $a3
	bstrpick.d	$a4, $a3, 31, 0
	ld.d	$a5, $sp, 8                     # 8-byte Folded Reload
	mul.d	$a4, $a4, $a5
	srli.d	$a4, $a4, 33
	alsl.d	$a4, $a4, $a4, 1
	sub.w	$a3, $a3, $a4
	slli.d	$a3, $a3, 2
	ldx.w	$a4, $a0, $a3
	ld.w	$a5, $a0, 8
	st.w	$a4, $a0, 8
	stx.w	$a5, $a0, $a3
	ori	$a3, $zero, 3
	beq	$s5, $a3, .LBB22_18
# %bb.17:                               # %_ZN35btSequentialImpulseConstraintSolver10btRandInt2Ei.exit172.peel366
                                        #   in Loop: Header=BB22_3 Depth=1
	mul.d	$a1, $a2, $a7
	add.d	$a2, $a1, $t0
	bstrpick.d	$a1, $a2, 31, 0
	bstrpick.d	$a2, $a2, 31, 16
	xor	$a2, $a2, $a1
	srli.d	$a3, $a2, 8
	xor	$a2, $a3, $a2
	srli.d	$a3, $a2, 4
	xor	$a2, $a3, $a2
	srli.d	$a3, $a2, 2
	xor	$a2, $a3, $a2
	andi	$a2, $a2, 3
	slli.d	$a2, $a2, 2
	ldx.w	$a3, $a0, $a2
	ld.w	$a4, $a0, 12
	st.w	$a3, $a0, 12
	stx.w	$a4, $a0, $a2
	ori	$a2, $zero, 4
	bne	$s5, $a2, .LBB22_138
	.p2align	4, , 16
.LBB22_18:                              # %..loopexit274_crit_edge
                                        #   in Loop: Header=BB22_3 Depth=1
	st.d	$a1, $s0, 232
.LBB22_19:                              # %.loopexit274
                                        #   in Loop: Header=BB22_3 Depth=1
	ld.bu	$a1, $s2, 61
	ld.w	$a0, $s0, 76
	andi	$a1, $a1, 1
	pcalau12i	$a2, %pc_hi20(.LCPI22_0)
	st.d	$a2, $sp, 120                   # 8-byte Folded Spill
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	bnez	$a1, .LBB22_76
# %bb.20:                               # %.preheader269
                                        #   in Loop: Header=BB22_3 Depth=1
	blez	$a0, .LBB22_23
# %bb.21:                               # %.lr.ph300.preheader
                                        #   in Loop: Header=BB22_3 Depth=1
	move	$fp, $zero
	move	$s1, $zero
	.p2align	4, , 16
.LBB22_22:                              # %.lr.ph300
                                        #   Parent Loop BB22_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s0, 88
	add.d	$a3, $a0, $fp
	ld.w	$a0, $a3, 104
	ld.d	$a2, $s0, 24
	ld.w	$a4, $a3, 108
	mul.d	$a0, $a0, $s7
	add.d	$a1, $a2, $a0
	mul.d	$a0, $a4, $s7
	add.d	$a2, $a2, $a0
	pcaddu18i	$ra, %call36(_ZN35btSequentialImpulseConstraintSolver33resolveSingleConstraintRowGenericER12btSolverBodyS1_RK18btSolverConstraint)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 76
	addi.d	$s1, $s1, 1
	addi.d	$fp, $fp, 144
	blt	$s1, $a0, .LBB22_22
.LBB22_23:                              # %.preheader268
                                        #   in Loop: Header=BB22_3 Depth=1
	ld.d	$fp, $sp, 168                   # 8-byte Folded Reload
	blez	$s3, .LBB22_68
# %bb.24:                               # %.lr.ph302.preheader
                                        #   in Loop: Header=BB22_3 Depth=1
	move	$s5, $zero
	.p2align	4, , 16
.LBB22_25:                              # %.lr.ph302
                                        #   Parent Loop BB22_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB22_46 Depth 3
                                        #       Child Loop BB22_57 Depth 3
	slli.d	$a0, $s5, 3
	ldx.d	$a0, $fp, $a0
	ld.d	$s4, $a0, 24
	ld.w	$s6, $s4, 224
	alsl.d	$s8, $s5, $fp, 3
	bltz	$s6, .LBB22_34
# %bb.26:                               # %_ZN35btSequentialImpulseConstraintSolver19getOrInitSolverBodyER17btCollisionObject.exit231
                                        #   in Loop: Header=BB22_25 Depth=2
	ld.d	$s1, $a0, 32
	ld.w	$s4, $s1, 224
	bgez	$s4, .LBB22_66
.LBB22_27:                              #   in Loop: Header=BB22_25 Depth=2
	ld.w	$a1, $s1, 256
	ori	$a2, $zero, 2
	bne	$a1, $a2, .LBB22_41
# %bb.28:                               #   in Loop: Header=BB22_25 Depth=2
	fld.s	$fa0, $s1, 360
	fcmp.ceq.s	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB22_41
# %bb.29:                               #   in Loop: Header=BB22_25 Depth=2
	ld.w	$s4, $s0, 12
	ld.w	$a1, $s0, 16
	move	$a0, $s4
	bne	$s4, $a1, .LBB22_62
# %bb.30:                               #   in Loop: Header=BB22_25 Depth=2
	sltui	$a0, $s4, 1
	slli.w	$a1, $s4, 1
	masknez	$a1, $a1, $a0
	ori	$a2, $zero, 1
	maskeqz	$a0, $a2, $a0
	or	$fp, $a0, $a1
	move	$a0, $s4
	bge	$s4, $fp, .LBB22_62
# %bb.31:                               #   in Loop: Header=BB22_25 Depth=2
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	beqz	$fp, .LBB22_55
# %bb.32:                               #   in Loop: Header=BB22_25 Depth=2
	mul.d	$a0, $fp, $s7
.Ltmp98:                                # EH_LABEL
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
.Ltmp99:                                # EH_LABEL
# %bb.33:                               # %.noexc258
                                        #   in Loop: Header=BB22_25 Depth=2
	move	$s3, $a0
	ld.w	$a0, $s0, 12
	bgtz	$a0, .LBB22_56
	b	.LBB22_58
	.p2align	4, , 16
.LBB22_34:                              #   in Loop: Header=BB22_25 Depth=2
	ld.w	$a1, $s4, 256
	ori	$a2, $zero, 2
	bne	$a1, $a2, .LBB22_42
# %bb.35:                               #   in Loop: Header=BB22_25 Depth=2
	fld.s	$fa0, $s4, 360
	fcmp.ceq.s	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB22_43
# %bb.36:                               #   in Loop: Header=BB22_25 Depth=2
	ld.w	$s6, $s0, 12
	ld.w	$a1, $s0, 16
	move	$a0, $s6
	bne	$s6, $a1, .LBB22_51
# %bb.37:                               #   in Loop: Header=BB22_25 Depth=2
	sltui	$a0, $s6, 1
	slli.w	$a1, $s6, 1
	masknez	$a1, $a1, $a0
	ori	$a2, $zero, 1
	maskeqz	$a0, $a2, $a0
	or	$fp, $a0, $a1
	move	$a0, $s6
	bge	$s6, $fp, .LBB22_51
# %bb.38:                               #   in Loop: Header=BB22_25 Depth=2
	beqz	$fp, .LBB22_44
# %bb.39:                               #   in Loop: Header=BB22_25 Depth=2
	mul.d	$a0, $fp, $s7
.Ltmp93:                                # EH_LABEL
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
.Ltmp94:                                # EH_LABEL
# %bb.40:                               # %.noexc229
                                        #   in Loop: Header=BB22_25 Depth=2
	move	$s3, $a0
	ld.w	$a0, $s0, 12
	bgtz	$a0, .LBB22_45
	b	.LBB22_47
	.p2align	4, , 16
.LBB22_41:                              #   in Loop: Header=BB22_25 Depth=2
	move	$s4, $zero
	b	.LBB22_66
.LBB22_42:                              #   in Loop: Header=BB22_25 Depth=2
	move	$s6, $zero
	ld.d	$s1, $a0, 32
	ld.w	$s4, $s1, 224
	bgez	$s4, .LBB22_66
	b	.LBB22_27
.LBB22_43:                              #   in Loop: Header=BB22_25 Depth=2
	move	$s6, $zero
	ld.d	$s1, $a0, 32
	ld.w	$s4, $s1, 224
	bgez	$s4, .LBB22_66
	b	.LBB22_27
.LBB22_44:                              #   in Loop: Header=BB22_25 Depth=2
	move	$s3, $zero
	move	$a0, $s6
	blez	$a0, .LBB22_47
.LBB22_45:                              # %.lr.ph.i.i.i.i224
                                        #   in Loop: Header=BB22_25 Depth=2
	move	$s1, $zero
	mul.d	$s2, $a0, $s7
	.p2align	4, , 16
.LBB22_46:                              #   Parent Loop BB22_3 Depth=1
                                        #     Parent Loop BB22_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a1, $s0, 24
	add.d	$a0, $s3, $s1
	add.d	$a1, $a1, $s1
	ori	$a2, $zero, 112
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	addi.d	$s1, $s1, 112
	bne	$s2, $s1, .LBB22_46
.LBB22_47:                              # %_ZNK20btAlignedObjectArrayI12btSolverBodyE4copyEiiPS0_.exit.i.i.i219
                                        #   in Loop: Header=BB22_25 Depth=2
	ld.d	$a0, $s0, 24
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	beqz	$a0, .LBB22_50
# %bb.48:                               # %_ZNK20btAlignedObjectArrayI12btSolverBodyE4copyEiiPS0_.exit.i.i.i219
                                        #   in Loop: Header=BB22_25 Depth=2
	ld.b	$a1, $s0, 32
	andi	$a1, $a1, 1
	beqz	$a1, .LBB22_50
# %bb.49:                               #   in Loop: Header=BB22_25 Depth=2
.Ltmp95:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp96:                                # EH_LABEL
.LBB22_50:                              # %_ZN20btAlignedObjectArrayI12btSolverBodyE10deallocateEv.exit.i.i.i222
                                        #   in Loop: Header=BB22_25 Depth=2
	ld.w	$a0, $s0, 12
	ori	$a1, $zero, 1
	st.b	$a1, $s0, 32
	st.d	$s3, $s0, 24
	st.w	$fp, $s0, 16
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
.LBB22_51:                              # %_ZN20btAlignedObjectArrayI12btSolverBodyE6expandERKS0_.exit.i205
                                        #   in Loop: Header=BB22_25 Depth=2
	ld.d	$a1, $s0, 24
	addi.d	$a0, $a0, 1
	st.w	$a0, $s0, 12
	mul.d	$fp, $s6, $s7
	add.d	$a0, $a1, $fp
	ori	$a2, $zero, 112
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 24
	ld.w	$a2, $s4, 256
	add.d	$a0, $a1, $fp
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvstx	$xr0, $a1, $fp
	xvst	$xr0, $a0, 80
	ori	$a1, $zero, 2
	bne	$a2, $a1, .LBB22_53
# %bb.52:                               #   in Loop: Header=BB22_25 Depth=2
	fld.s	$fa0, $s4, 360
	fld.s	$fa1, $s4, 380
	fld.s	$fa2, $s4, 384
	fld.s	$fa3, $s4, 388
	fmul.s	$fa1, $fa0, $fa1
	fmul.s	$fa2, $fa0, $fa2
	fmul.s	$fa0, $fa0, $fa3
	movfr2gr.s	$a1, $fa1
	movfr2gr.s	$a2, $fa2
	bstrins.d	$a1, $a2, 63, 32
	movfr2gr.s	$a2, $fa0
	bstrpick.d	$a2, $a2, 31, 0
	st.d	$a1, $a0, 48
	st.d	$a2, $a0, 56
	st.d	$s4, $a0, 72
	vld	$vr0, $s4, 364
	b	.LBB22_54
.LBB22_53:                              #   in Loop: Header=BB22_25 Depth=2
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	vld	$vr0, $a1, %pc_lo12(.LCPI22_0)
	st.d	$zero, $a0, 72
	vld	$vr1, $sp, 96                   # 16-byte Folded Reload
	vst	$vr1, $a0, 48
.LBB22_54:                              # %_ZN35btSequentialImpulseConstraintSolver14initSolverBodyEP12btSolverBodyP17btCollisionObject.exit.i207
                                        #   in Loop: Header=BB22_25 Depth=2
	vst	$vr0, $a0, 32
	ld.d	$fp, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a0, $s8, 0
	st.w	$s6, $s4, 224
	ld.d	$s1, $a0, 32
	ld.w	$s4, $s1, 224
	bgez	$s4, .LBB22_66
	b	.LBB22_27
.LBB22_55:                              #   in Loop: Header=BB22_25 Depth=2
	move	$s3, $zero
	move	$a0, $s4
	blez	$a0, .LBB22_58
.LBB22_56:                              # %.lr.ph.i.i.i.i253
                                        #   in Loop: Header=BB22_25 Depth=2
	move	$fp, $zero
	mul.d	$s2, $a0, $s7
	.p2align	4, , 16
.LBB22_57:                              #   Parent Loop BB22_3 Depth=1
                                        #     Parent Loop BB22_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a1, $s0, 24
	add.d	$a0, $s3, $fp
	add.d	$a1, $a1, $fp
	ori	$a2, $zero, 112
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 112
	bne	$s2, $fp, .LBB22_57
.LBB22_58:                              # %_ZNK20btAlignedObjectArrayI12btSolverBodyE4copyEiiPS0_.exit.i.i.i248
                                        #   in Loop: Header=BB22_25 Depth=2
	ld.d	$a0, $s0, 24
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	beqz	$a0, .LBB22_61
# %bb.59:                               # %_ZNK20btAlignedObjectArrayI12btSolverBodyE4copyEiiPS0_.exit.i.i.i248
                                        #   in Loop: Header=BB22_25 Depth=2
	ld.b	$a1, $s0, 32
	andi	$a1, $a1, 1
	beqz	$a1, .LBB22_61
# %bb.60:                               #   in Loop: Header=BB22_25 Depth=2
.Ltmp100:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp101:                               # EH_LABEL
.LBB22_61:                              # %_ZN20btAlignedObjectArrayI12btSolverBodyE10deallocateEv.exit.i.i.i251
                                        #   in Loop: Header=BB22_25 Depth=2
	ld.w	$a0, $s0, 12
	ori	$a1, $zero, 1
	st.b	$a1, $s0, 32
	st.d	$s3, $s0, 24
	st.w	$fp, $s0, 16
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
.LBB22_62:                              # %_ZN20btAlignedObjectArrayI12btSolverBodyE6expandERKS0_.exit.i234
                                        #   in Loop: Header=BB22_25 Depth=2
	ld.d	$a1, $s0, 24
	addi.d	$a0, $a0, 1
	st.w	$a0, $s0, 12
	mul.d	$fp, $s4, $s7
	add.d	$a0, $a1, $fp
	ori	$a2, $zero, 112
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 24
	ld.w	$a2, $s1, 256
	add.d	$a0, $a1, $fp
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvstx	$xr0, $a1, $fp
	xvst	$xr0, $a0, 80
	ori	$a1, $zero, 2
	bne	$a2, $a1, .LBB22_64
# %bb.63:                               #   in Loop: Header=BB22_25 Depth=2
	fld.s	$fa0, $s1, 360
	fld.s	$fa1, $s1, 380
	fld.s	$fa2, $s1, 384
	fld.s	$fa3, $s1, 388
	fmul.s	$fa1, $fa0, $fa1
	fmul.s	$fa2, $fa0, $fa2
	fmul.s	$fa0, $fa0, $fa3
	movfr2gr.s	$a1, $fa1
	movfr2gr.s	$a2, $fa2
	bstrins.d	$a1, $a2, 63, 32
	movfr2gr.s	$a2, $fa0
	bstrpick.d	$a2, $a2, 31, 0
	st.d	$a1, $a0, 48
	st.d	$a2, $a0, 56
	st.d	$s1, $a0, 72
	vld	$vr0, $s1, 364
	b	.LBB22_65
.LBB22_64:                              #   in Loop: Header=BB22_25 Depth=2
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	vld	$vr0, $a1, %pc_lo12(.LCPI22_0)
	st.d	$zero, $a0, 72
	vld	$vr1, $sp, 96                   # 16-byte Folded Reload
	vst	$vr1, $a0, 48
.LBB22_65:                              # %_ZN35btSequentialImpulseConstraintSolver14initSolverBodyEP12btSolverBodyP17btCollisionObject.exit.i236
                                        #   in Loop: Header=BB22_25 Depth=2
	vst	$vr0, $a0, 32
	ld.d	$fp, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a0, $s8, 0
	st.w	$s4, $s1, 224
	.p2align	4, , 16
.LBB22_66:                              # %_ZN35btSequentialImpulseConstraintSolver19getOrInitSolverBodyER17btCollisionObject.exit260
                                        #   in Loop: Header=BB22_25 Depth=2
	ld.d	$a1, $a0, 0
	ld.d	$a2, $s0, 24
	mul.d	$a3, $s6, $s7
	fld.s	$fa0, $s2, 12
	ld.d	$a4, $a1, 48
	add.d	$a1, $a2, $a3
	mul.d	$a3, $s4, $s7
	add.d	$a2, $a2, $a3
.Ltmp103:                               # EH_LABEL
	jirl	$ra, $a4, 0
.Ltmp104:                               # EH_LABEL
# %bb.67:                               #   in Loop: Header=BB22_25 Depth=2
	addi.d	$s5, $s5, 1
	bne	$s5, $s3, .LBB22_25
.LBB22_68:                              # %._crit_edge303
                                        #   in Loop: Header=BB22_3 Depth=1
	ld.w	$a0, $s0, 44
	blez	$a0, .LBB22_71
# %bb.69:                               # %.lr.ph306
                                        #   in Loop: Header=BB22_3 Depth=1
	ld.d	$a1, $s0, 152
	ld.d	$a2, $s0, 56
	ld.d	$a3, $s0, 24
	.p2align	4, , 16
.LBB22_70:                              #   Parent Loop BB22_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a4, $a1, 0
	slli.d	$a5, $a4, 7
	alsl.d	$a5, $a4, $a5, 4
	add.d	$a4, $a2, $a5
	ld.w	$a6, $a4, 104
	ld.w	$t1, $a4, 108
	mul.d	$t0, $a6, $s7
	add.d	$a7, $a3, $t0
	fld.s	$fa0, $a4, 84
	mul.d	$a6, $t1, $s7
	fld.s	$fa4, $a4, 120
	fld.s	$fa5, $a4, 124
	fneg.s	$fa6, $fa0
	fld.s	$fa1, $a4, 16
	fldx.s	$fa7, $a3, $t0
	fld.s	$fa2, $a4, 20
	fld.s	$ft0, $a7, 4
	fld.s	$fa3, $a4, 24
	fld.s	$ft1, $a7, 8
	fmadd.s	$fa4, $fa6, $fa5, $fa4
	fmul.s	$fa5, $fa2, $ft0
	fmadd.s	$fa5, $fa1, $fa7, $fa5
	fmadd.s	$fa5, $fa3, $ft1, $fa5
	fldx.s	$fa6, $a2, $a5
	fld.s	$fa7, $a7, 16
	fld.s	$ft0, $a4, 4
	fld.s	$ft1, $a7, 20
	fld.s	$ft2, $a4, 8
	fld.s	$ft3, $a7, 24
	add.d	$a5, $a3, $a6
	fmul.s	$ft0, $ft0, $ft1
	fmadd.s	$fa6, $fa6, $fa7, $ft0
	fmadd.s	$fa6, $ft2, $ft3, $fa6
	fadd.s	$fa5, $fa5, $fa6
	fldx.s	$fa6, $a3, $a6
	fld.s	$fa7, $a5, 4
	fld.s	$ft0, $a4, 36
	fld.s	$ft1, $a5, 20
	fld.s	$ft2, $a4, 32
	fld.s	$ft3, $a5, 16
	fmul.s	$fa7, $fa2, $fa7
	fmul.s	$ft0, $ft0, $ft1
	fld.s	$ft1, $a5, 8
	fmadd.s	$ft0, $ft2, $ft3, $ft0
	fld.s	$ft2, $a4, 40
	fld.s	$ft3, $a5, 24
	fmadd.s	$fa6, $fa1, $fa6, $fa7
	fmadd.s	$fa6, $fa3, $ft1, $fa6
	fld.s	$fa7, $a4, 92
	fmadd.s	$ft0, $ft2, $ft3, $ft0
	fsub.s	$fa6, $ft0, $fa6
	fneg.s	$fa5, $fa5
	fmadd.s	$fa4, $fa5, $fa7, $fa4
	fld.s	$fa5, $a4, 128
	fneg.s	$fa6, $fa6
	fmadd.s	$fa4, $fa6, $fa7, $fa4
	fadd.s	$fa6, $fa0, $fa4
	fsub.s	$fa0, $fa5, $fa0
	fcmp.clt.s	$fcc0, $fa6, $fa5
	fsel	$fa5, $fa6, $fa5, $fcc0
	fst.s	$fa5, $a4, 84
	fld.s	$fa5, $a7, 48
	fld.s	$fa6, $a7, 52
	fld.s	$fa7, $a7, 56
	fsel	$fa0, $fa4, $fa0, $fcc0
	fmul.s	$fa1, $fa1, $fa5
	fmul.s	$fa2, $fa2, $fa6
	fmul.s	$fa3, $fa3, $fa7
	fmul.s	$fa1, $fa1, $fa0
	fldx.s	$fa4, $a3, $t0
	fmul.s	$fa2, $fa0, $fa2
	fmul.s	$fa3, $fa0, $fa3
	fld.s	$fa5, $a7, 4
	fadd.s	$fa1, $fa1, $fa4
	fld.s	$fa4, $a7, 8
	fstx.s	$fa1, $a3, $t0
	fadd.s	$fa1, $fa2, $fa5
	fst.s	$fa1, $a7, 4
	fadd.s	$fa1, $fa3, $fa4
	fld.s	$fa2, $a7, 32
	fld.s	$fa3, $a7, 36
	fst.s	$fa1, $a7, 8
	fld.s	$fa1, $a7, 40
	fmul.s	$fa2, $fa0, $fa2
	fmul.s	$fa3, $fa0, $fa3
	fld.s	$fa4, $a4, 48
	fmul.s	$fa1, $fa0, $fa1
	fld.s	$fa5, $a4, 52
	fld.s	$fa6, $a4, 56
	fmul.s	$fa2, $fa2, $fa4
	fld.s	$fa4, $a7, 16
	fmul.s	$fa3, $fa3, $fa5
	fmul.s	$fa1, $fa1, $fa6
	fld.s	$fa5, $a7, 20
	fadd.s	$fa2, $fa2, $fa4
	fld.s	$fa4, $a7, 24
	fst.s	$fa2, $a7, 16
	fadd.s	$fa2, $fa3, $fa5
	fst.s	$fa2, $a7, 20
	fadd.s	$fa1, $fa1, $fa4
	fst.s	$fa1, $a7, 24
	fld.s	$fa1, $a4, 16
	fld.s	$fa2, $a4, 20
	fld.s	$fa3, $a4, 24
	fld.s	$fa4, $a5, 48
	fld.s	$fa5, $a5, 52
	fld.s	$fa6, $a5, 56
	fmul.s	$fa1, $fa4, $fa1
	fmul.s	$fa2, $fa5, $fa2
	fmul.s	$fa3, $fa6, $fa3
	fmul.s	$fa1, $fa0, $fa1
	fldx.s	$fa4, $a3, $a6
	fmul.s	$fa2, $fa0, $fa2
	fmul.s	$fa3, $fa0, $fa3
	fld.s	$fa5, $a5, 4
	fsub.s	$fa1, $fa4, $fa1
	fld.s	$fa4, $a5, 8
	fstx.s	$fa1, $a3, $a6
	fsub.s	$fa1, $fa5, $fa2
	fst.s	$fa1, $a5, 4
	fsub.s	$fa1, $fa4, $fa3
	fld.s	$fa2, $a5, 32
	fld.s	$fa3, $a5, 36
	fst.s	$fa1, $a5, 8
	fld.s	$fa1, $a5, 40
	fmul.s	$fa2, $fa0, $fa2
	fmul.s	$fa3, $fa0, $fa3
	fld.s	$fa4, $a4, 64
	fmul.s	$fa0, $fa0, $fa1
	fld.s	$fa1, $a4, 68
	fld.s	$fa5, $a4, 72
	fmul.s	$fa2, $fa2, $fa4
	fld.s	$fa4, $a5, 16
	fmul.s	$fa1, $fa3, $fa1
	fmul.s	$fa0, $fa0, $fa5
	fld.s	$fa3, $a5, 20
	fadd.s	$fa2, $fa2, $fa4
	fld.s	$fa4, $a5, 24
	fst.s	$fa2, $a5, 16
	fadd.s	$fa1, $fa1, $fa3
	fst.s	$fa1, $a5, 20
	fadd.s	$fa0, $fa0, $fa4
	fst.s	$fa0, $a5, 24
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 4
	bnez	$a0, .LBB22_70
.LBB22_71:                              # %._crit_edge307
                                        #   in Loop: Header=BB22_3 Depth=1
	ld.w	$a0, $s0, 108
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	blez	$a0, .LBB22_2
# %bb.72:                               # %.lr.ph310.preheader
                                        #   in Loop: Header=BB22_3 Depth=1
	move	$fp, $zero
	slli.d	$s1, $a0, 2
	b	.LBB22_74
	.p2align	4, , 16
.LBB22_73:                              #   in Loop: Header=BB22_74 Depth=2
	addi.d	$fp, $fp, 4
	beq	$s1, $fp, .LBB22_2
.LBB22_74:                              # %.lr.ph310
                                        #   Parent Loop BB22_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s0, 184
	ldx.w	$a0, $a0, $fp
	ld.d	$a1, $s0, 120
	ori	$a2, $zero, 144
	mul.d	$a0, $a0, $a2
	add.d	$a3, $a1, $a0
	ld.w	$a0, $a3, 100
	ld.d	$a1, $s0, 56
	mul.d	$a0, $a0, $a2
	add.d	$a0, $a1, $a0
	fld.s	$fa0, $a0, 84
	fcmp.cule.s	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB22_73
# %bb.75:                               #   in Loop: Header=BB22_74 Depth=2
	fld.s	$fa1, $a3, 88
	fneg.s	$fa2, $fa0
	fmul.s	$fa2, $fa1, $fa2
	fst.s	$fa2, $a3, 128
	fmul.s	$fa0, $fa0, $fa1
	ld.w	$a0, $a3, 104
	ld.d	$a2, $s0, 24
	ld.w	$a4, $a3, 108
	fst.s	$fa0, $a3, 132
	mul.d	$a0, $a0, $s7
	add.d	$a1, $a2, $a0
	mul.d	$a0, $a4, $s7
	add.d	$a2, $a2, $a0
	pcaddu18i	$ra, %call36(_ZN35btSequentialImpulseConstraintSolver33resolveSingleConstraintRowGenericER12btSolverBodyS1_RK18btSolverConstraint)
	jirl	$ra, $ra, 0
	b	.LBB22_73
	.p2align	4, , 16
.LBB22_76:                              # %.preheader272
                                        #   in Loop: Header=BB22_3 Depth=1
	blez	$a0, .LBB22_79
# %bb.77:                               # %.lr.ph289.preheader
                                        #   in Loop: Header=BB22_3 Depth=1
	move	$fp, $zero
	move	$s1, $zero
	.p2align	4, , 16
.LBB22_78:                              # %.lr.ph289
                                        #   Parent Loop BB22_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s0, 88
	add.d	$a3, $a0, $fp
	ld.w	$a0, $a3, 104
	ld.d	$a2, $s0, 24
	ld.w	$a4, $a3, 108
	mul.d	$a0, $a0, $s7
	add.d	$a1, $a2, $a0
	mul.d	$a0, $a4, $s7
	add.d	$a2, $a2, $a0
	pcaddu18i	$ra, %call36(_ZN35btSequentialImpulseConstraintSolver33resolveSingleConstraintRowGenericER12btSolverBodyS1_RK18btSolverConstraint)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 76
	addi.d	$s1, $s1, 1
	addi.d	$fp, $fp, 144
	blt	$s1, $a0, .LBB22_78
.LBB22_79:                              # %.preheader271
                                        #   in Loop: Header=BB22_3 Depth=1
	ld.d	$fp, $sp, 168                   # 8-byte Folded Reload
	blez	$s3, .LBB22_124
# %bb.80:                               # %.lr.ph291.preheader
                                        #   in Loop: Header=BB22_3 Depth=1
	move	$s5, $zero
	.p2align	4, , 16
.LBB22_81:                              # %.lr.ph291
                                        #   Parent Loop BB22_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB22_102 Depth 3
                                        #       Child Loop BB22_113 Depth 3
	slli.d	$a0, $s5, 3
	ldx.d	$a0, $fp, $a0
	ld.d	$s4, $a0, 24
	ld.w	$s6, $s4, 224
	alsl.d	$s8, $s5, $fp, 3
	bltz	$s6, .LBB22_90
# %bb.82:                               # %_ZN35btSequentialImpulseConstraintSolver19getOrInitSolverBodyER17btCollisionObject.exit
                                        #   in Loop: Header=BB22_81 Depth=2
	ld.d	$s1, $a0, 32
	ld.w	$s4, $s1, 224
	bgez	$s4, .LBB22_122
.LBB22_83:                              #   in Loop: Header=BB22_81 Depth=2
	ld.w	$a1, $s1, 256
	ori	$a2, $zero, 2
	bne	$a1, $a2, .LBB22_97
# %bb.84:                               #   in Loop: Header=BB22_81 Depth=2
	fld.s	$fa0, $s1, 360
	fcmp.ceq.s	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB22_97
# %bb.85:                               #   in Loop: Header=BB22_81 Depth=2
	ld.w	$s4, $s0, 12
	ld.w	$a1, $s0, 16
	move	$a0, $s4
	bne	$s4, $a1, .LBB22_118
# %bb.86:                               #   in Loop: Header=BB22_81 Depth=2
	sltui	$a0, $s4, 1
	slli.w	$a1, $s4, 1
	masknez	$a1, $a1, $a0
	ori	$a2, $zero, 1
	maskeqz	$a0, $a2, $a0
	or	$fp, $a0, $a1
	move	$a0, $s4
	bge	$s4, $fp, .LBB22_118
# %bb.87:                               #   in Loop: Header=BB22_81 Depth=2
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	beqz	$fp, .LBB22_111
# %bb.88:                               #   in Loop: Header=BB22_81 Depth=2
	mul.d	$a0, $fp, $s7
.Ltmp85:                                # EH_LABEL
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
.Ltmp86:                                # EH_LABEL
# %bb.89:                               # %.noexc200
                                        #   in Loop: Header=BB22_81 Depth=2
	move	$s3, $a0
	ld.w	$a0, $s0, 12
	bgtz	$a0, .LBB22_112
	b	.LBB22_114
	.p2align	4, , 16
.LBB22_90:                              #   in Loop: Header=BB22_81 Depth=2
	ld.w	$a1, $s4, 256
	ori	$a2, $zero, 2
	bne	$a1, $a2, .LBB22_98
# %bb.91:                               #   in Loop: Header=BB22_81 Depth=2
	fld.s	$fa0, $s4, 360
	fcmp.ceq.s	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB22_99
# %bb.92:                               #   in Loop: Header=BB22_81 Depth=2
	ld.w	$s6, $s0, 12
	ld.w	$a1, $s0, 16
	move	$a0, $s6
	bne	$s6, $a1, .LBB22_107
# %bb.93:                               #   in Loop: Header=BB22_81 Depth=2
	sltui	$a0, $s6, 1
	slli.w	$a1, $s6, 1
	masknez	$a1, $a1, $a0
	ori	$a2, $zero, 1
	maskeqz	$a0, $a2, $a0
	or	$fp, $a0, $a1
	move	$a0, $s6
	bge	$s6, $fp, .LBB22_107
# %bb.94:                               #   in Loop: Header=BB22_81 Depth=2
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	beqz	$fp, .LBB22_100
# %bb.95:                               #   in Loop: Header=BB22_81 Depth=2
	mul.d	$a0, $fp, $s7
.Ltmp80:                                # EH_LABEL
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
.Ltmp81:                                # EH_LABEL
# %bb.96:                               # %.noexc
                                        #   in Loop: Header=BB22_81 Depth=2
	move	$s3, $a0
	ld.w	$a0, $s0, 12
	bgtz	$a0, .LBB22_101
	b	.LBB22_103
	.p2align	4, , 16
.LBB22_97:                              #   in Loop: Header=BB22_81 Depth=2
	move	$s4, $zero
	b	.LBB22_122
.LBB22_98:                              #   in Loop: Header=BB22_81 Depth=2
	move	$s6, $zero
	ld.d	$s1, $a0, 32
	ld.w	$s4, $s1, 224
	bgez	$s4, .LBB22_122
	b	.LBB22_83
.LBB22_99:                              #   in Loop: Header=BB22_81 Depth=2
	move	$s6, $zero
	ld.d	$s1, $a0, 32
	ld.w	$s4, $s1, 224
	bgez	$s4, .LBB22_122
	b	.LBB22_83
.LBB22_100:                             #   in Loop: Header=BB22_81 Depth=2
	move	$s3, $zero
	move	$a0, $s6
	blez	$a0, .LBB22_103
.LBB22_101:                             # %.lr.ph.i.i.i.i
                                        #   in Loop: Header=BB22_81 Depth=2
	move	$fp, $zero
	mul.d	$s1, $a0, $s7
	.p2align	4, , 16
.LBB22_102:                             #   Parent Loop BB22_3 Depth=1
                                        #     Parent Loop BB22_81 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a1, $s0, 24
	add.d	$a0, $s3, $fp
	add.d	$a1, $a1, $fp
	ori	$a2, $zero, 112
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 112
	bne	$s1, $fp, .LBB22_102
.LBB22_103:                             # %_ZNK20btAlignedObjectArrayI12btSolverBodyE4copyEiiPS0_.exit.i.i.i
                                        #   in Loop: Header=BB22_81 Depth=2
	ld.d	$a0, $s0, 24
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	beqz	$a0, .LBB22_106
# %bb.104:                              # %_ZNK20btAlignedObjectArrayI12btSolverBodyE4copyEiiPS0_.exit.i.i.i
                                        #   in Loop: Header=BB22_81 Depth=2
	ld.b	$a1, $s0, 32
	andi	$a1, $a1, 1
	beqz	$a1, .LBB22_106
# %bb.105:                              #   in Loop: Header=BB22_81 Depth=2
.Ltmp82:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp83:                                # EH_LABEL
.LBB22_106:                             # %_ZN20btAlignedObjectArrayI12btSolverBodyE10deallocateEv.exit.i.i.i
                                        #   in Loop: Header=BB22_81 Depth=2
	ld.w	$a0, $s0, 12
	ori	$a1, $zero, 1
	st.b	$a1, $s0, 32
	st.d	$s3, $s0, 24
	st.w	$fp, $s0, 16
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
.LBB22_107:                             # %_ZN20btAlignedObjectArrayI12btSolverBodyE6expandERKS0_.exit.i
                                        #   in Loop: Header=BB22_81 Depth=2
	ld.d	$a1, $s0, 24
	addi.d	$a0, $a0, 1
	st.w	$a0, $s0, 12
	mul.d	$fp, $s6, $s7
	add.d	$a0, $a1, $fp
	ori	$a2, $zero, 112
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 24
	ld.w	$a2, $s4, 256
	add.d	$a0, $a1, $fp
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvstx	$xr0, $a1, $fp
	xvst	$xr0, $a0, 80
	ori	$a1, $zero, 2
	bne	$a2, $a1, .LBB22_109
# %bb.108:                              #   in Loop: Header=BB22_81 Depth=2
	fld.s	$fa0, $s4, 360
	fld.s	$fa1, $s4, 380
	fld.s	$fa2, $s4, 384
	fld.s	$fa3, $s4, 388
	fmul.s	$fa1, $fa0, $fa1
	fmul.s	$fa2, $fa0, $fa2
	fmul.s	$fa0, $fa0, $fa3
	movfr2gr.s	$a1, $fa1
	movfr2gr.s	$a2, $fa2
	bstrins.d	$a1, $a2, 63, 32
	movfr2gr.s	$a2, $fa0
	bstrpick.d	$a2, $a2, 31, 0
	st.d	$a1, $a0, 48
	st.d	$a2, $a0, 56
	st.d	$s4, $a0, 72
	vld	$vr0, $s4, 364
	b	.LBB22_110
.LBB22_109:                             #   in Loop: Header=BB22_81 Depth=2
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	vld	$vr0, $a1, %pc_lo12(.LCPI22_0)
	st.d	$zero, $a0, 72
	vld	$vr1, $sp, 96                   # 16-byte Folded Reload
	vst	$vr1, $a0, 48
.LBB22_110:                             # %_ZN35btSequentialImpulseConstraintSolver14initSolverBodyEP12btSolverBodyP17btCollisionObject.exit.i
                                        #   in Loop: Header=BB22_81 Depth=2
	vst	$vr0, $a0, 32
	ld.d	$fp, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a0, $s8, 0
	st.w	$s6, $s4, 224
	ld.d	$s1, $a0, 32
	ld.w	$s4, $s1, 224
	bgez	$s4, .LBB22_122
	b	.LBB22_83
.LBB22_111:                             #   in Loop: Header=BB22_81 Depth=2
	move	$s3, $zero
	move	$a0, $s4
	blez	$a0, .LBB22_114
.LBB22_112:                             # %.lr.ph.i.i.i.i195
                                        #   in Loop: Header=BB22_81 Depth=2
	move	$fp, $zero
	mul.d	$s2, $a0, $s7
	.p2align	4, , 16
.LBB22_113:                             #   Parent Loop BB22_3 Depth=1
                                        #     Parent Loop BB22_81 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a1, $s0, 24
	add.d	$a0, $s3, $fp
	add.d	$a1, $a1, $fp
	ori	$a2, $zero, 112
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 112
	bne	$s2, $fp, .LBB22_113
.LBB22_114:                             # %_ZNK20btAlignedObjectArrayI12btSolverBodyE4copyEiiPS0_.exit.i.i.i190
                                        #   in Loop: Header=BB22_81 Depth=2
	ld.d	$a0, $s0, 24
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	beqz	$a0, .LBB22_117
# %bb.115:                              # %_ZNK20btAlignedObjectArrayI12btSolverBodyE4copyEiiPS0_.exit.i.i.i190
                                        #   in Loop: Header=BB22_81 Depth=2
	ld.b	$a1, $s0, 32
	andi	$a1, $a1, 1
	beqz	$a1, .LBB22_117
# %bb.116:                              #   in Loop: Header=BB22_81 Depth=2
.Ltmp87:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp88:                                # EH_LABEL
.LBB22_117:                             # %_ZN20btAlignedObjectArrayI12btSolverBodyE10deallocateEv.exit.i.i.i193
                                        #   in Loop: Header=BB22_81 Depth=2
	ld.w	$a0, $s0, 12
	ori	$a1, $zero, 1
	st.b	$a1, $s0, 32
	st.d	$s3, $s0, 24
	st.w	$fp, $s0, 16
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
.LBB22_118:                             # %_ZN20btAlignedObjectArrayI12btSolverBodyE6expandERKS0_.exit.i176
                                        #   in Loop: Header=BB22_81 Depth=2
	ld.d	$a1, $s0, 24
	addi.d	$a0, $a0, 1
	st.w	$a0, $s0, 12
	mul.d	$fp, $s4, $s7
	add.d	$a0, $a1, $fp
	ori	$a2, $zero, 112
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 24
	ld.w	$a2, $s1, 256
	add.d	$a0, $a1, $fp
	xvld	$xr0, $sp, 128                  # 32-byte Folded Reload
	xvstx	$xr0, $a1, $fp
	xvst	$xr0, $a0, 80
	ori	$a1, $zero, 2
	bne	$a2, $a1, .LBB22_120
# %bb.119:                              #   in Loop: Header=BB22_81 Depth=2
	fld.s	$fa0, $s1, 360
	fld.s	$fa1, $s1, 380
	fld.s	$fa2, $s1, 384
	fld.s	$fa3, $s1, 388
	fmul.s	$fa1, $fa0, $fa1
	fmul.s	$fa2, $fa0, $fa2
	fmul.s	$fa0, $fa0, $fa3
	movfr2gr.s	$a1, $fa1
	movfr2gr.s	$a2, $fa2
	bstrins.d	$a1, $a2, 63, 32
	movfr2gr.s	$a2, $fa0
	bstrpick.d	$a2, $a2, 31, 0
	st.d	$a1, $a0, 48
	st.d	$a2, $a0, 56
	st.d	$s1, $a0, 72
	vld	$vr0, $s1, 364
	b	.LBB22_121
.LBB22_120:                             #   in Loop: Header=BB22_81 Depth=2
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	vld	$vr0, $a1, %pc_lo12(.LCPI22_0)
	st.d	$zero, $a0, 72
	vld	$vr1, $sp, 96                   # 16-byte Folded Reload
	vst	$vr1, $a0, 48
.LBB22_121:                             # %_ZN35btSequentialImpulseConstraintSolver14initSolverBodyEP12btSolverBodyP17btCollisionObject.exit.i178
                                        #   in Loop: Header=BB22_81 Depth=2
	vst	$vr0, $a0, 32
	ld.d	$fp, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a0, $s8, 0
	st.w	$s4, $s1, 224
	.p2align	4, , 16
.LBB22_122:                             # %_ZN35btSequentialImpulseConstraintSolver19getOrInitSolverBodyER17btCollisionObject.exit202
                                        #   in Loop: Header=BB22_81 Depth=2
	ld.d	$a1, $a0, 0
	ld.d	$a2, $s0, 24
	mul.d	$a3, $s6, $s7
	fld.s	$fa0, $s2, 12
	ld.d	$a4, $a1, 48
	add.d	$a1, $a2, $a3
	mul.d	$a3, $s4, $s7
	add.d	$a2, $a2, $a3
.Ltmp90:                                # EH_LABEL
	jirl	$ra, $a4, 0
.Ltmp91:                                # EH_LABEL
# %bb.123:                              #   in Loop: Header=BB22_81 Depth=2
	addi.d	$s5, $s5, 1
	bne	$s5, $s3, .LBB22_81
.LBB22_124:                             # %._crit_edge
                                        #   in Loop: Header=BB22_3 Depth=1
	ld.w	$a0, $s0, 44
	blez	$a0, .LBB22_127
# %bb.125:                              # %.lr.ph294
                                        #   in Loop: Header=BB22_3 Depth=1
	ld.d	$a1, $s0, 152
	ld.d	$a2, $s0, 56
	ld.d	$a3, $s0, 24
	.p2align	4, , 16
.LBB22_126:                             #   Parent Loop BB22_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a4, $a1, 0
	slli.d	$a5, $a4, 7
	alsl.d	$a5, $a4, $a5, 4
	add.d	$a4, $a2, $a5
	ld.w	$a6, $a4, 104
	ld.w	$t1, $a4, 108
	mul.d	$t0, $a6, $s7
	add.d	$a7, $a3, $t0
	fld.s	$fa0, $a4, 84
	mul.d	$a6, $t1, $s7
	fld.s	$fa4, $a4, 120
	fld.s	$fa5, $a4, 124
	fneg.s	$fa6, $fa0
	fld.s	$fa1, $a4, 16
	fldx.s	$fa7, $a3, $t0
	fld.s	$fa2, $a4, 20
	fld.s	$ft0, $a7, 4
	fld.s	$fa3, $a4, 24
	fld.s	$ft1, $a7, 8
	fmadd.s	$fa4, $fa6, $fa5, $fa4
	fmul.s	$fa5, $fa2, $ft0
	fmadd.s	$fa5, $fa1, $fa7, $fa5
	fmadd.s	$fa5, $fa3, $ft1, $fa5
	fldx.s	$fa6, $a2, $a5
	fld.s	$fa7, $a7, 16
	fld.s	$ft0, $a4, 4
	fld.s	$ft1, $a7, 20
	fld.s	$ft2, $a4, 8
	fld.s	$ft3, $a7, 24
	add.d	$a5, $a3, $a6
	fmul.s	$ft0, $ft0, $ft1
	fmadd.s	$fa6, $fa6, $fa7, $ft0
	fmadd.s	$fa6, $ft2, $ft3, $fa6
	fadd.s	$fa5, $fa5, $fa6
	fldx.s	$fa6, $a3, $a6
	fld.s	$fa7, $a5, 4
	fld.s	$ft0, $a4, 36
	fld.s	$ft1, $a5, 20
	fld.s	$ft2, $a4, 32
	fld.s	$ft3, $a5, 16
	fmul.s	$fa7, $fa2, $fa7
	fmul.s	$ft0, $ft0, $ft1
	fld.s	$ft1, $a5, 8
	fmadd.s	$ft0, $ft2, $ft3, $ft0
	fld.s	$ft2, $a4, 40
	fld.s	$ft3, $a5, 24
	fmadd.s	$fa6, $fa1, $fa6, $fa7
	fmadd.s	$fa6, $fa3, $ft1, $fa6
	fld.s	$fa7, $a4, 92
	fmadd.s	$ft0, $ft2, $ft3, $ft0
	fsub.s	$fa6, $ft0, $fa6
	fneg.s	$fa5, $fa5
	fmadd.s	$fa4, $fa5, $fa7, $fa4
	fld.s	$fa5, $a4, 128
	fneg.s	$fa6, $fa6
	fmadd.s	$fa4, $fa6, $fa7, $fa4
	fadd.s	$fa6, $fa0, $fa4
	fsub.s	$fa0, $fa5, $fa0
	fcmp.clt.s	$fcc0, $fa6, $fa5
	fsel	$fa5, $fa6, $fa5, $fcc0
	fst.s	$fa5, $a4, 84
	fld.s	$fa5, $a7, 48
	fld.s	$fa6, $a7, 52
	fld.s	$fa7, $a7, 56
	fsel	$fa0, $fa4, $fa0, $fcc0
	fmul.s	$fa1, $fa1, $fa5
	fmul.s	$fa2, $fa2, $fa6
	fmul.s	$fa3, $fa3, $fa7
	fmul.s	$fa1, $fa1, $fa0
	fldx.s	$fa4, $a3, $t0
	fmul.s	$fa2, $fa0, $fa2
	fmul.s	$fa3, $fa0, $fa3
	fld.s	$fa5, $a7, 4
	fadd.s	$fa1, $fa1, $fa4
	fld.s	$fa4, $a7, 8
	fstx.s	$fa1, $a3, $t0
	fadd.s	$fa1, $fa2, $fa5
	fst.s	$fa1, $a7, 4
	fadd.s	$fa1, $fa3, $fa4
	fld.s	$fa2, $a7, 32
	fld.s	$fa3, $a7, 36
	fst.s	$fa1, $a7, 8
	fld.s	$fa1, $a7, 40
	fmul.s	$fa2, $fa0, $fa2
	fmul.s	$fa3, $fa0, $fa3
	fld.s	$fa4, $a4, 48
	fmul.s	$fa1, $fa0, $fa1
	fld.s	$fa5, $a4, 52
	fld.s	$fa6, $a4, 56
	fmul.s	$fa2, $fa2, $fa4
	fld.s	$fa4, $a7, 16
	fmul.s	$fa3, $fa3, $fa5
	fmul.s	$fa1, $fa1, $fa6
	fld.s	$fa5, $a7, 20
	fadd.s	$fa2, $fa2, $fa4
	fld.s	$fa4, $a7, 24
	fst.s	$fa2, $a7, 16
	fadd.s	$fa2, $fa3, $fa5
	fst.s	$fa2, $a7, 20
	fadd.s	$fa1, $fa1, $fa4
	fst.s	$fa1, $a7, 24
	fld.s	$fa1, $a4, 16
	fld.s	$fa2, $a4, 20
	fld.s	$fa3, $a4, 24
	fld.s	$fa4, $a5, 48
	fld.s	$fa5, $a5, 52
	fld.s	$fa6, $a5, 56
	fmul.s	$fa1, $fa4, $fa1
	fmul.s	$fa2, $fa5, $fa2
	fmul.s	$fa3, $fa6, $fa3
	fmul.s	$fa1, $fa0, $fa1
	fldx.s	$fa4, $a3, $a6
	fmul.s	$fa2, $fa0, $fa2
	fmul.s	$fa3, $fa0, $fa3
	fld.s	$fa5, $a5, 4
	fsub.s	$fa1, $fa4, $fa1
	fld.s	$fa4, $a5, 8
	fstx.s	$fa1, $a3, $a6
	fsub.s	$fa1, $fa5, $fa2
	fst.s	$fa1, $a5, 4
	fsub.s	$fa1, $fa4, $fa3
	fld.s	$fa2, $a5, 32
	fld.s	$fa3, $a5, 36
	fst.s	$fa1, $a5, 8
	fld.s	$fa1, $a5, 40
	fmul.s	$fa2, $fa0, $fa2
	fmul.s	$fa3, $fa0, $fa3
	fld.s	$fa4, $a4, 64
	fmul.s	$fa0, $fa0, $fa1
	fld.s	$fa1, $a4, 68
	fld.s	$fa5, $a4, 72
	fmul.s	$fa2, $fa2, $fa4
	fld.s	$fa4, $a5, 16
	fmul.s	$fa1, $fa3, $fa1
	fmul.s	$fa0, $fa0, $fa5
	fld.s	$fa3, $a5, 20
	fadd.s	$fa2, $fa2, $fa4
	fld.s	$fa4, $a5, 24
	fst.s	$fa2, $a5, 16
	fadd.s	$fa1, $fa1, $fa3
	fst.s	$fa1, $a5, 20
	fadd.s	$fa0, $fa0, $fa4
	fst.s	$fa0, $a5, 24
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 4
	bnez	$a0, .LBB22_126
.LBB22_127:                             # %._crit_edge295
                                        #   in Loop: Header=BB22_3 Depth=1
	ld.w	$a0, $s0, 108
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	blez	$a0, .LBB22_2
# %bb.128:                              # %.lr.ph298.preheader
                                        #   in Loop: Header=BB22_3 Depth=1
	move	$fp, $zero
	slli.d	$s1, $a0, 2
	b	.LBB22_130
	.p2align	4, , 16
.LBB22_129:                             #   in Loop: Header=BB22_130 Depth=2
	addi.d	$fp, $fp, 4
	beq	$s1, $fp, .LBB22_2
.LBB22_130:                             # %.lr.ph298
                                        #   Parent Loop BB22_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s0, 184
	ldx.w	$a0, $a0, $fp
	ld.d	$a1, $s0, 120
	ori	$a2, $zero, 144
	mul.d	$a0, $a0, $a2
	add.d	$a3, $a1, $a0
	ld.w	$a0, $a3, 100
	ld.d	$a1, $s0, 56
	mul.d	$a0, $a0, $a2
	add.d	$a0, $a1, $a0
	fld.s	$fa0, $a0, 84
	fcmp.cule.s	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB22_129
# %bb.131:                              #   in Loop: Header=BB22_130 Depth=2
	fld.s	$fa1, $a3, 88
	fneg.s	$fa2, $fa0
	fmul.s	$fa2, $fa1, $fa2
	fst.s	$fa2, $a3, 128
	fmul.s	$fa0, $fa0, $fa1
	ld.w	$a0, $a3, 104
	ld.d	$a2, $s0, 24
	ld.w	$a4, $a3, 108
	fst.s	$fa0, $a3, 132
	mul.d	$a0, $a0, $s7
	add.d	$a1, $a2, $a0
	mul.d	$a0, $a4, $s7
	add.d	$a2, $a2, $a0
	pcaddu18i	$ra, %call36(_ZN35btSequentialImpulseConstraintSolver33resolveSingleConstraintRowGenericER12btSolverBodyS1_RK18btSolverConstraint)
	jirl	$ra, $ra, 0
	b	.LBB22_129
.LBB22_132:                             # %.peel.next342.preheader
                                        #   in Loop: Header=BB22_3 Depth=1
	addi.d	$a2, $a0, 16
	ori	$a3, $zero, 4
	b	.LBB22_134
	.p2align	4, , 16
.LBB22_133:                             # %_ZN35btSequentialImpulseConstraintSolver10btRandInt2Ei.exit
                                        #   in Loop: Header=BB22_134 Depth=2
	addi.d	$a3, $a3, 1
	mod.du	$a4, $a4, $a3
	slli.d	$a4, $a4, 2
	ldx.w	$a5, $a0, $a4
	ld.w	$a6, $a2, 0
	st.w	$a5, $a2, 0
	stx.w	$a6, $a0, $a4
	addi.d	$a2, $a2, 4
	ld.d	$a4, $sp, 24                    # 8-byte Folded Reload
	beq	$a4, $a3, .LBB22_11
.LBB22_134:                             # %.peel.next342
                                        #   Parent Loop BB22_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mul.d	$a1, $a1, $a7
	add.d	$a1, $a1, $t0
	bstrpick.d	$a1, $a1, 31, 0
	srli.d	$a5, $a3, 16
	move	$a4, $a1
	bnez	$a5, .LBB22_133
# %bb.135:                              #   in Loop: Header=BB22_134 Depth=2
	srli.d	$a4, $a1, 16
	xor	$a4, $a4, $a1
	ori	$a5, $zero, 255
	bltu	$a5, $a3, .LBB22_133
# %bb.136:                              #   in Loop: Header=BB22_134 Depth=2
	srli.d	$a5, $a4, 8
	xor	$a4, $a5, $a4
	ori	$a5, $zero, 15
	bltu	$a5, $a3, .LBB22_133
# %bb.137:                              #   in Loop: Header=BB22_134 Depth=2
	srli.d	$a5, $a4, 4
	xor	$a4, $a5, $a4
	b	.LBB22_133
.LBB22_138:                             # %.peel.next364.preheader
                                        #   in Loop: Header=BB22_3 Depth=1
	addi.d	$a2, $a0, 16
	ori	$a3, $zero, 4
	b	.LBB22_140
	.p2align	4, , 16
.LBB22_139:                             # %_ZN35btSequentialImpulseConstraintSolver10btRandInt2Ei.exit172
                                        #   in Loop: Header=BB22_140 Depth=2
	addi.d	$a3, $a3, 1
	mod.du	$a4, $a4, $a3
	slli.d	$a4, $a4, 2
	ldx.w	$a5, $a0, $a4
	ld.w	$a6, $a2, 0
	st.w	$a5, $a2, 0
	stx.w	$a6, $a0, $a4
	addi.d	$a2, $a2, 4
	ld.d	$a4, $sp, 32                    # 8-byte Folded Reload
	beq	$a4, $a3, .LBB22_18
.LBB22_140:                             # %.peel.next364
                                        #   Parent Loop BB22_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mul.d	$a1, $a1, $a7
	add.d	$a1, $a1, $t0
	bstrpick.d	$a1, $a1, 31, 0
	srli.d	$a5, $a3, 16
	move	$a4, $a1
	bnez	$a5, .LBB22_139
# %bb.141:                              #   in Loop: Header=BB22_140 Depth=2
	srli.d	$a4, $a1, 16
	xor	$a4, $a4, $a1
	ori	$a5, $zero, 255
	bltu	$a5, $a3, .LBB22_139
# %bb.142:                              #   in Loop: Header=BB22_140 Depth=2
	srli.d	$a5, $a4, 8
	xor	$a4, $a5, $a4
	ori	$a5, $zero, 15
	bltu	$a5, $a3, .LBB22_139
# %bb.143:                              #   in Loop: Header=BB22_140 Depth=2
	srli.d	$a5, $a4, 4
	xor	$a4, $a5, $a4
	b	.LBB22_139
.LBB22_144:                             # %._crit_edge314
	ld.w	$a1, $s2, 44
	beqz	$a1, .LBB22_162
# %bb.145:
	ld.bu	$a1, $s2, 61
	andi	$a1, $a1, 1
	bnez	$a1, .LBB22_154
# %bb.146:                              # %.preheader
	blez	$a0, .LBB22_162
# %bb.147:                              # %.lr.ph326
	ld.w	$a1, $s0, 44
	blez	$a1, .LBB22_162
# %bb.148:                              # %.lr.ph326.split.preheader
	move	$fp, $zero
	bstrpick.d	$a1, $a1, 31, 0
	ori	$s1, $zero, 112
	addi.w	$a2, $a1, 0
	bgtz	$a2, .LBB22_150
	b	.LBB22_153
	.p2align	4, , 16
.LBB22_149:                             # %.lr.ph326.splitthread-pre-split
                                        #   in Loop: Header=BB22_153 Depth=1
	ld.wu	$a1, $s0, 44
	addi.w	$a2, $a1, 0
	blez	$a2, .LBB22_153
.LBB22_150:                             # %.lr.ph323.preheader
	move	$s2, $zero
	slli.d	$s3, $a1, 2
	.p2align	4, , 16
.LBB22_151:                             # %.lr.ph323
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 152
	ldx.w	$a0, $a0, $s2
	ld.d	$a1, $s0, 56
	slli.d	$a2, $a0, 7
	alsl.d	$a0, $a0, $a2, 4
	add.d	$a3, $a1, $a0
	ld.w	$a0, $a3, 104
	ld.d	$a2, $s0, 24
	ld.w	$a4, $a3, 108
	mul.d	$a0, $a0, $s1
	add.d	$a1, $a2, $a0
	mul.d	$a0, $a4, $s1
	add.d	$a2, $a2, $a0
	pcaddu18i	$ra, %call36(_ZN35btSequentialImpulseConstraintSolver43resolveSplitPenetrationImpulseCacheFriendlyER12btSolverBodyS1_RK18btSolverConstraint)
	jirl	$ra, $ra, 0
	addi.d	$s2, $s2, 4
	bne	$s3, $s2, .LBB22_151
# %bb.152:                              # %._crit_edge324.loopexit
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 20
.LBB22_153:                             # %._crit_edge324
                                        # =>This Inner Loop Header: Depth=1
	addi.w	$fp, $fp, 1
	blt	$fp, $a0, .LBB22_149
	b	.LBB22_162
.LBB22_154:                             # %.preheader265
	blez	$a0, .LBB22_162
# %bb.155:                              # %.lr.ph320
	ld.w	$a1, $s0, 44
	blez	$a1, .LBB22_162
# %bb.156:                              # %.lr.ph320.split.preheader
	move	$fp, $zero
	bstrpick.d	$a1, $a1, 31, 0
	ori	$s1, $zero, 112
	addi.w	$a2, $a1, 0
	bgtz	$a2, .LBB22_158
	b	.LBB22_161
	.p2align	4, , 16
.LBB22_157:                             # %.lr.ph320.splitthread-pre-split
                                        #   in Loop: Header=BB22_161 Depth=1
	ld.wu	$a1, $s0, 44
	addi.w	$a2, $a1, 0
	blez	$a2, .LBB22_161
.LBB22_158:                             # %.lr.ph317.preheader
	move	$s2, $zero
	slli.d	$s3, $a1, 2
	.p2align	4, , 16
.LBB22_159:                             # %.lr.ph317
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 152
	ldx.w	$a0, $a0, $s2
	ld.d	$a1, $s0, 56
	slli.d	$a2, $a0, 7
	alsl.d	$a0, $a0, $a2, 4
	add.d	$a3, $a1, $a0
	ld.w	$a0, $a3, 104
	ld.d	$a2, $s0, 24
	ld.w	$a4, $a3, 108
	mul.d	$a0, $a0, $s1
	add.d	$a1, $a2, $a0
	mul.d	$a0, $a4, $s1
	add.d	$a2, $a2, $a0
	pcaddu18i	$ra, %call36(_ZN35btSequentialImpulseConstraintSolver43resolveSplitPenetrationImpulseCacheFriendlyER12btSolverBodyS1_RK18btSolverConstraint)
	jirl	$ra, $ra, 0
	addi.d	$s2, $s2, 4
	bne	$s3, $s2, .LBB22_159
# %bb.160:                              # %._crit_edge318.loopexit
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 20
.LBB22_161:                             # %._crit_edge318
                                        # =>This Inner Loop Header: Depth=1
	addi.w	$fp, $fp, 1
	blt	$fp, $a0, .LBB22_157
.LBB22_162:                             # %.loopexit
	pcaddu18i	$ra, %call36(_ZN15CProfileManager12Stop_ProfileEv)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $zero
	fld.d	$fs0, $sp, 176                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 184                   # 8-byte Folded Reload
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
.LBB22_163:
.Ltmp97:                                # EH_LABEL
	b	.LBB22_169
.LBB22_164:
.Ltmp84:                                # EH_LABEL
	b	.LBB22_169
.LBB22_165:
.Ltmp102:                               # EH_LABEL
	b	.LBB22_169
.LBB22_166:
.Ltmp89:                                # EH_LABEL
	b	.LBB22_169
.LBB22_167:
.Ltmp92:                                # EH_LABEL
	b	.LBB22_169
.LBB22_168:
.Ltmp105:                               # EH_LABEL
.LBB22_169:
	move	$fp, $a0
.Ltmp106:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN15CProfileManager12Stop_ProfileEv)
	jirl	$ra, $ra, 0
.Ltmp107:                               # EH_LABEL
# %bb.170:                              # %_ZN14CProfileSampleD2Ev.exit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB22_171:
.Ltmp108:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end22:
	.size	_ZN35btSequentialImpulseConstraintSolver33solveGroupCacheFriendlyIterationsEPP17btCollisionObjectiPP20btPersistentManifoldiPP17btTypedConstraintiRK19btContactSolverInfoP12btIDebugDrawP12btStackAlloc, .Lfunc_end22-_ZN35btSequentialImpulseConstraintSolver33solveGroupCacheFriendlyIterationsEPP17btCollisionObjectiPP20btPersistentManifoldiPP17btTypedConstraintiRK19btContactSolverInfoP12btIDebugDrawP12btStackAlloc
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table22:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase2-.Lttbaseref2
.Lttbaseref2:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Lfunc_begin3-.Lfunc_begin3    # >> Call Site 1 <<
	.uleb128 .Ltmp98-.Lfunc_begin3          #   Call between .Lfunc_begin3 and .Ltmp98
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp98-.Lfunc_begin3          # >> Call Site 2 <<
	.uleb128 .Ltmp99-.Ltmp98                #   Call between .Ltmp98 and .Ltmp99
	.uleb128 .Ltmp102-.Lfunc_begin3         #     jumps to .Ltmp102
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp93-.Lfunc_begin3          # >> Call Site 3 <<
	.uleb128 .Ltmp94-.Ltmp93                #   Call between .Ltmp93 and .Ltmp94
	.uleb128 .Ltmp97-.Lfunc_begin3          #     jumps to .Ltmp97
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp94-.Lfunc_begin3          # >> Call Site 4 <<
	.uleb128 .Ltmp95-.Ltmp94                #   Call between .Ltmp94 and .Ltmp95
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp95-.Lfunc_begin3          # >> Call Site 5 <<
	.uleb128 .Ltmp96-.Ltmp95                #   Call between .Ltmp95 and .Ltmp96
	.uleb128 .Ltmp97-.Lfunc_begin3          #     jumps to .Ltmp97
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp96-.Lfunc_begin3          # >> Call Site 6 <<
	.uleb128 .Ltmp100-.Ltmp96               #   Call between .Ltmp96 and .Ltmp100
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp100-.Lfunc_begin3         # >> Call Site 7 <<
	.uleb128 .Ltmp101-.Ltmp100              #   Call between .Ltmp100 and .Ltmp101
	.uleb128 .Ltmp102-.Lfunc_begin3         #     jumps to .Ltmp102
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp101-.Lfunc_begin3         # >> Call Site 8 <<
	.uleb128 .Ltmp103-.Ltmp101              #   Call between .Ltmp101 and .Ltmp103
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp103-.Lfunc_begin3         # >> Call Site 9 <<
	.uleb128 .Ltmp104-.Ltmp103              #   Call between .Ltmp103 and .Ltmp104
	.uleb128 .Ltmp105-.Lfunc_begin3         #     jumps to .Ltmp105
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp104-.Lfunc_begin3         # >> Call Site 10 <<
	.uleb128 .Ltmp85-.Ltmp104               #   Call between .Ltmp104 and .Ltmp85
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp85-.Lfunc_begin3          # >> Call Site 11 <<
	.uleb128 .Ltmp86-.Ltmp85                #   Call between .Ltmp85 and .Ltmp86
	.uleb128 .Ltmp89-.Lfunc_begin3          #     jumps to .Ltmp89
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp80-.Lfunc_begin3          # >> Call Site 12 <<
	.uleb128 .Ltmp81-.Ltmp80                #   Call between .Ltmp80 and .Ltmp81
	.uleb128 .Ltmp84-.Lfunc_begin3          #     jumps to .Ltmp84
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp81-.Lfunc_begin3          # >> Call Site 13 <<
	.uleb128 .Ltmp82-.Ltmp81                #   Call between .Ltmp81 and .Ltmp82
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp82-.Lfunc_begin3          # >> Call Site 14 <<
	.uleb128 .Ltmp83-.Ltmp82                #   Call between .Ltmp82 and .Ltmp83
	.uleb128 .Ltmp84-.Lfunc_begin3          #     jumps to .Ltmp84
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp83-.Lfunc_begin3          # >> Call Site 15 <<
	.uleb128 .Ltmp87-.Ltmp83                #   Call between .Ltmp83 and .Ltmp87
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp87-.Lfunc_begin3          # >> Call Site 16 <<
	.uleb128 .Ltmp88-.Ltmp87                #   Call between .Ltmp87 and .Ltmp88
	.uleb128 .Ltmp89-.Lfunc_begin3          #     jumps to .Ltmp89
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp88-.Lfunc_begin3          # >> Call Site 17 <<
	.uleb128 .Ltmp90-.Ltmp88                #   Call between .Ltmp88 and .Ltmp90
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp90-.Lfunc_begin3          # >> Call Site 18 <<
	.uleb128 .Ltmp91-.Ltmp90                #   Call between .Ltmp90 and .Ltmp91
	.uleb128 .Ltmp92-.Lfunc_begin3          #     jumps to .Ltmp92
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp91-.Lfunc_begin3          # >> Call Site 19 <<
	.uleb128 .Ltmp106-.Ltmp91               #   Call between .Ltmp91 and .Ltmp106
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp106-.Lfunc_begin3         # >> Call Site 20 <<
	.uleb128 .Ltmp107-.Ltmp106              #   Call between .Ltmp106 and .Ltmp107
	.uleb128 .Ltmp108-.Lfunc_begin3         #     jumps to .Ltmp108
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp107-.Lfunc_begin3         # >> Call Site 21 <<
	.uleb128 .Lfunc_end22-.Ltmp107          #   Call between .Ltmp107 and .Lfunc_end22
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
	.text
	.globl	_ZN35btSequentialImpulseConstraintSolver10solveGroupEPP17btCollisionObjectiPP20btPersistentManifoldiPP17btTypedConstraintiRK19btContactSolverInfoP12btIDebugDrawP12btStackAllocP12btDispatcher # -- Begin function _ZN35btSequentialImpulseConstraintSolver10solveGroupEPP17btCollisionObjectiPP20btPersistentManifoldiPP17btTypedConstraintiRK19btContactSolverInfoP12btIDebugDrawP12btStackAllocP12btDispatcher
	.p2align	5
	.type	_ZN35btSequentialImpulseConstraintSolver10solveGroupEPP17btCollisionObjectiPP20btPersistentManifoldiPP17btTypedConstraintiRK19btContactSolverInfoP12btIDebugDrawP12btStackAllocP12btDispatcher,@function
_ZN35btSequentialImpulseConstraintSolver10solveGroupEPP17btCollisionObjectiPP20btPersistentManifoldiPP17btTypedConstraintiRK19btContactSolverInfoP12btIDebugDrawP12btStackAllocP12btDispatcher: # @_ZN35btSequentialImpulseConstraintSolver10solveGroupEPP17btCollisionObjectiPP20btPersistentManifoldiPP17btTypedConstraintiRK19btContactSolverInfoP12btIDebugDrawP12btStackAllocP12btDispatcher
.Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception4
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
	st.d	$s7, $sp, 96                    # 8-byte Folded Spill
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
	move	$s0, $a7
	move	$s1, $a6
	move	$s2, $a5
	move	$s3, $a4
	move	$s4, $a3
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(_ZN15CProfileManager13Start_ProfileEPKc)
	jirl	$ra, $ra, 0
.Ltmp109:                               # EH_LABEL
	move	$a0, $fp
	move	$a3, $s4
	move	$a4, $s3
	move	$a5, $s2
	move	$a6, $s1
	move	$a7, $s0
	pcaddu18i	$ra, %call36(_ZN35btSequentialImpulseConstraintSolver28solveGroupCacheFriendlySetupEPP17btCollisionObjectiPP20btPersistentManifoldiPP17btTypedConstraintiRK19btContactSolverInfoP12btIDebugDrawP12btStackAlloc)
	jirl	$ra, $ra, 0
.Ltmp110:                               # EH_LABEL
# %bb.1:
.Ltmp111:                               # EH_LABEL
	move	$a0, $fp
	move	$a5, $s2
	move	$a6, $s1
	move	$a7, $s0
	pcaddu18i	$ra, %call36(_ZN35btSequentialImpulseConstraintSolver33solveGroupCacheFriendlyIterationsEPP17btCollisionObjectiPP20btPersistentManifoldiPP17btTypedConstraintiRK19btContactSolverInfoP12btIDebugDrawP12btStackAlloc)
	jirl	$ra, $ra, 0
.Ltmp112:                               # EH_LABEL
# %bb.2:
	ld.w	$a0, $fp, 44
	blez	$a0, .LBB23_8
# %bb.3:                                # %.lr.ph
	ld.bu	$a1, $s0, 60
	ld.d	$a2, $fp, 56
	andi	$a1, $a1, 8
	bnez	$a1, .LBB23_6
# %bb.4:                                # %.lr.ph.split.us.preheader
	addi.d	$a1, $a2, 84
	.p2align	4, , 16
.LBB23_5:                               # %.lr.ph.split.us
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a1, 28
	fld.s	$fa0, $a1, 0
	fst.s	$fa0, $a2, 120
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 144
	bnez	$a0, .LBB23_5
	b	.LBB23_8
.LBB23_6:                               # %.lr.ph.split.preheader
	ld.d	$a1, $fp, 120
	addi.d	$a2, $a2, 112
	ori	$a3, $zero, 144
	.p2align	4, , 16
.LBB23_7:                               # %.lr.ph.split
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a2, 0
	fld.s	$fa0, $a2, -28
	fst.s	$fa0, $a4, 120
	ld.w	$a5, $a2, -12
	mul.d	$a5, $a5, $a3
	add.d	$a5, $a1, $a5
	fld.s	$fa0, $a5, 84
	fst.s	$fa0, $a4, 128
	ld.w	$a5, $a2, -12
	mul.d	$a5, $a5, $a3
	add.d	$a5, $a1, $a5
	fld.s	$fa0, $a5, 228
	fst.s	$fa0, $a4, 132
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, 144
	bnez	$a0, .LBB23_7
.LBB23_8:                               # %._crit_edge
	ld.w	$a0, $s0, 44
	ld.w	$s2, $fp, 12
	beqz	$a0, .LBB23_15
# %bb.9:                                # %.preheader102
	blez	$s2, .LBB23_20
# %bb.10:                               # %.lr.ph106
	move	$s3, $zero
	addi.d	$s4, $sp, 48
	addi.d	$s5, $sp, 64
	ori	$s6, $zero, 96
	addi.d	$s7, $sp, 80
	b	.LBB23_12
	.p2align	4, , 16
.LBB23_11:                              # %_ZN12btSolverBody17writebackVelocityEf.exit
                                        #   in Loop: Header=BB23_12 Depth=1
	addi.d	$s3, $s3, 1
	addi.d	$s6, $s6, 112
	bge	$s3, $s2, .LBB23_20
.LBB23_12:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 24
	add.d	$s1, $a0, $s6
	ld.d	$a0, $s1, -24
	beqz	$a0, .LBB23_11
# %bb.13:                               #   in Loop: Header=BB23_12 Depth=1
	fld.s	$fa1, $a0, 328
	fld.s	$fa2, $s1, -96
	fld.s	$fa3, $a0, 332
	fld.s	$fa4, $s1, -92
	fld.s	$fa5, $a0, 336
	fld.s	$fa6, $s1, -88
	fld.s	$fa0, $s0, 12
	fadd.s	$fa1, $fa1, $fa2
	fadd.s	$fa2, $fa3, $fa4
	fadd.s	$fa3, $fa5, $fa6
	movfr2gr.s	$a1, $fa1
	movfr2gr.s	$a2, $fa2
	bstrins.d	$a1, $a2, 63, 32
	movfr2gr.s	$a2, $fa3
	bstrpick.d	$a2, $a2, 31, 0
	st.d	$a1, $a0, 328
	st.d	$a2, $a0, 336
	ld.d	$a0, $s1, -24
	fld.s	$fa1, $a0, 344
	fld.s	$fa2, $s1, -80
	fld.s	$fa3, $a0, 348
	fld.s	$fa4, $s1, -76
	fld.s	$fa5, $a0, 352
	fld.s	$fa6, $s1, -72
	fadd.s	$fa1, $fa1, $fa2
	fadd.s	$fa2, $fa3, $fa4
	fadd.s	$fa3, $fa5, $fa6
	movfr2gr.s	$a1, $fa1
	movfr2gr.s	$a2, $fa2
	bstrins.d	$a1, $a2, 63, 32
	movfr2gr.s	$a2, $fa3
	bstrpick.d	$a2, $a2, 31, 0
	st.d	$a1, $a0, 344
	st.d	$a2, $a0, 352
	ld.d	$a0, $s1, -24
	addi.d	$a0, $a0, 8
	addi.d	$a1, $s1, -16
.Ltmp114:                               # EH_LABEL
	addi.d	$a3, $sp, 32
	move	$a2, $s1
	pcaddu18i	$ra, %call36(_ZN15btTransformUtil18integrateTransformERK11btTransformRK9btVector3S5_fRS0_)
	jirl	$ra, $ra, 0
.Ltmp115:                               # EH_LABEL
# %bb.14:                               # %.noexc
                                        #   in Loop: Header=BB23_12 Depth=1
	ld.d	$a0, $s1, -24
	vld	$vr0, $sp, 32
	vst	$vr0, $a0, 8
	vld	$vr0, $s4, 0
	vst	$vr0, $a0, 24
	vld	$vr0, $s5, 0
	vst	$vr0, $a0, 40
	vld	$vr0, $s7, 0
	vst	$vr0, $a0, 56
	ld.w	$s2, $fp, 12
	b	.LBB23_11
.LBB23_15:                              # %.preheader
	blez	$s2, .LBB23_20
# %bb.16:                               # %.lr.ph108
	move	$a0, $zero
	move	$a1, $zero
	b	.LBB23_18
	.p2align	4, , 16
.LBB23_17:                              # %_ZN12btSolverBody17writebackVelocityEv.exit
                                        #   in Loop: Header=BB23_18 Depth=1
	addi.d	$a1, $a1, 1
	addi.d	$a0, $a0, 112
	bge	$a1, $s2, .LBB23_20
.LBB23_18:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $fp, 24
	add.d	$a2, $a4, $a0
	ld.d	$a3, $a2, 72
	beqz	$a3, .LBB23_17
# %bb.19:                               #   in Loop: Header=BB23_18 Depth=1
	fld.s	$fa0, $a3, 328
	fldx.s	$fa1, $a4, $a0
	fld.s	$fa2, $a3, 332
	fld.s	$fa3, $a2, 4
	fld.s	$fa4, $a3, 336
	fld.s	$fa5, $a2, 8
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa1, $fa2, $fa3
	fadd.s	$fa2, $fa4, $fa5
	movfr2gr.s	$a4, $fa0
	movfr2gr.s	$a5, $fa1
	bstrins.d	$a4, $a5, 63, 32
	movfr2gr.s	$a5, $fa2
	bstrpick.d	$a5, $a5, 31, 0
	st.d	$a4, $a3, 328
	st.d	$a5, $a3, 336
	ld.d	$a3, $a2, 72
	fld.s	$fa0, $a3, 344
	fld.s	$fa1, $a2, 16
	fld.s	$fa2, $a3, 348
	fld.s	$fa3, $a2, 20
	fld.s	$fa4, $a3, 352
	fld.s	$fa5, $a2, 24
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa1, $fa2, $fa3
	fadd.s	$fa2, $fa4, $fa5
	movfr2gr.s	$a2, $fa0
	movfr2gr.s	$a4, $fa1
	bstrins.d	$a2, $a4, 63, 32
	movfr2gr.s	$a4, $fa2
	bstrpick.d	$a4, $a4, 31, 0
	st.d	$a2, $a3, 344
	st.d	$a4, $a3, 352
	ld.w	$s2, $fp, 12
	b	.LBB23_17
.LBB23_20:                              # %.loopexit101
	bgez	$s2, .LBB23_28
# %bb.21:
	ld.w	$a0, $fp, 16
	bgez	$a0, .LBB23_26
# %bb.22:                               # %_ZNK20btAlignedObjectArrayI12btSolverBodyE4copyEiiPS0_.exit.i.i
	ld.d	$a0, $fp, 24
	beqz	$a0, .LBB23_25
# %bb.23:                               # %_ZNK20btAlignedObjectArrayI12btSolverBodyE4copyEiiPS0_.exit.i.i
	ld.b	$a1, $fp, 32
	andi	$a1, $a1, 1
	beqz	$a1, .LBB23_25
# %bb.24:
.Ltmp117:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp118:                               # EH_LABEL
.LBB23_25:                              # %_ZN20btAlignedObjectArrayI12btSolverBodyE10deallocateEv.exit.i.i
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 32
	st.d	$zero, $fp, 24
	st.w	$zero, $fp, 16
.LBB23_26:                              # %.lr.ph.i
	ori	$a0, $zero, 112
	mul.d	$s0, $s2, $a0
	.p2align	4, , 16
.LBB23_27:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 24
	add.d	$a0, $a0, $s0
	ori	$a2, $zero, 112
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	addi.d	$s2, $s2, 1
	addi.d	$s0, $s0, 112
	bnez	$s2, .LBB23_27
.LBB23_28:                              # %.loopexit100
	ld.w	$s0, $fp, 44
	st.w	$zero, $fp, 12
	bgez	$s0, .LBB23_36
# %bb.29:
	ld.w	$a0, $fp, 48
	bgez	$a0, .LBB23_34
# %bb.30:                               # %_ZNK20btAlignedObjectArrayI18btSolverConstraintE4copyEiiPS0_.exit.i.i
	ld.d	$a0, $fp, 56
	beqz	$a0, .LBB23_33
# %bb.31:                               # %_ZNK20btAlignedObjectArrayI18btSolverConstraintE4copyEiiPS0_.exit.i.i
	ld.b	$a1, $fp, 64
	andi	$a1, $a1, 1
	beqz	$a1, .LBB23_33
# %bb.32:
.Ltmp120:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp121:                               # EH_LABEL
.LBB23_33:                              # %_ZN20btAlignedObjectArrayI18btSolverConstraintE10deallocateEv.exit.i.i
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 64
	st.d	$zero, $fp, 56
	st.w	$zero, $fp, 48
.LBB23_34:                              # %.lr.ph.i55
	slli.d	$a0, $s0, 7
	alsl.d	$s1, $s0, $a0, 4
	.p2align	4, , 16
.LBB23_35:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 56
	add.d	$a0, $a0, $s1
	ori	$a2, $zero, 144
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, 1
	addi.d	$s1, $s1, 144
	bnez	$s0, .LBB23_35
.LBB23_36:                              # %.loopexit99
	ld.w	$s0, $fp, 76
	st.w	$zero, $fp, 44
	bgez	$s0, .LBB23_44
# %bb.37:
	ld.w	$a0, $fp, 80
	bgez	$a0, .LBB23_42
# %bb.38:                               # %_ZNK20btAlignedObjectArrayI18btSolverConstraintE4copyEiiPS0_.exit.i.i71
	ld.d	$a0, $fp, 88
	beqz	$a0, .LBB23_41
# %bb.39:                               # %_ZNK20btAlignedObjectArrayI18btSolverConstraintE4copyEiiPS0_.exit.i.i71
	ld.b	$a1, $fp, 96
	andi	$a1, $a1, 1
	beqz	$a1, .LBB23_41
# %bb.40:
.Ltmp123:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp124:                               # EH_LABEL
.LBB23_41:                              # %_ZN20btAlignedObjectArrayI18btSolverConstraintE10deallocateEv.exit.i.i74
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 96
	st.d	$zero, $fp, 88
	st.w	$zero, $fp, 80
.LBB23_42:                              # %.lr.ph.i67
	slli.d	$a0, $s0, 7
	alsl.d	$s1, $s0, $a0, 4
	.p2align	4, , 16
.LBB23_43:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 88
	add.d	$a0, $a0, $s1
	ori	$a2, $zero, 144
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, 1
	addi.d	$s1, $s1, 144
	bnez	$s0, .LBB23_43
.LBB23_44:                              # %.loopexit98
	ld.w	$s0, $fp, 108
	st.w	$zero, $fp, 76
	bgez	$s0, .LBB23_52
# %bb.45:
	ld.w	$a0, $fp, 112
	bgez	$a0, .LBB23_50
# %bb.46:                               # %_ZNK20btAlignedObjectArrayI18btSolverConstraintE4copyEiiPS0_.exit.i.i86
	ld.d	$a0, $fp, 120
	beqz	$a0, .LBB23_49
# %bb.47:                               # %_ZNK20btAlignedObjectArrayI18btSolverConstraintE4copyEiiPS0_.exit.i.i86
	ld.b	$a1, $fp, 128
	andi	$a1, $a1, 1
	beqz	$a1, .LBB23_49
# %bb.48:
.Ltmp126:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp127:                               # EH_LABEL
.LBB23_49:                              # %_ZN20btAlignedObjectArrayI18btSolverConstraintE10deallocateEv.exit.i.i89
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 128
	st.d	$zero, $fp, 120
	st.w	$zero, $fp, 112
.LBB23_50:                              # %.lr.ph.i82
	slli.d	$a0, $s0, 7
	alsl.d	$s1, $s0, $a0, 4
	.p2align	4, , 16
.LBB23_51:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 120
	add.d	$a0, $a0, $s1
	ori	$a2, $zero, 144
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, 1
	addi.d	$s1, $s1, 144
	bnez	$s0, .LBB23_51
.LBB23_52:                              # %.loopexit
	st.w	$zero, $fp, 108
	pcaddu18i	$ra, %call36(_ZN15CProfileManager12Stop_ProfileEv)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $zero
	ld.d	$s7, $sp, 96                    # 8-byte Folded Reload
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
.LBB23_53:
.Ltmp128:                               # EH_LABEL
	b	.LBB23_59
.LBB23_54:
.Ltmp125:                               # EH_LABEL
	b	.LBB23_59
.LBB23_55:
.Ltmp122:                               # EH_LABEL
	b	.LBB23_59
.LBB23_56:
.Ltmp119:                               # EH_LABEL
	b	.LBB23_59
.LBB23_57:
.Ltmp113:                               # EH_LABEL
	b	.LBB23_59
.LBB23_58:
.Ltmp116:                               # EH_LABEL
.LBB23_59:
	move	$fp, $a0
.Ltmp129:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN15CProfileManager12Stop_ProfileEv)
	jirl	$ra, $ra, 0
.Ltmp130:                               # EH_LABEL
# %bb.60:                               # %_ZN14CProfileSampleD2Ev.exit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB23_61:
.Ltmp131:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end23:
	.size	_ZN35btSequentialImpulseConstraintSolver10solveGroupEPP17btCollisionObjectiPP20btPersistentManifoldiPP17btTypedConstraintiRK19btContactSolverInfoP12btIDebugDrawP12btStackAllocP12btDispatcher, .Lfunc_end23-_ZN35btSequentialImpulseConstraintSolver10solveGroupEPP17btCollisionObjectiPP20btPersistentManifoldiPP17btTypedConstraintiRK19btContactSolverInfoP12btIDebugDrawP12btStackAllocP12btDispatcher
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table23:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase3-.Lttbaseref3
.Lttbaseref3:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Lfunc_begin4-.Lfunc_begin4    # >> Call Site 1 <<
	.uleb128 .Ltmp109-.Lfunc_begin4         #   Call between .Lfunc_begin4 and .Ltmp109
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp109-.Lfunc_begin4         # >> Call Site 2 <<
	.uleb128 .Ltmp112-.Ltmp109              #   Call between .Ltmp109 and .Ltmp112
	.uleb128 .Ltmp113-.Lfunc_begin4         #     jumps to .Ltmp113
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp114-.Lfunc_begin4         # >> Call Site 3 <<
	.uleb128 .Ltmp115-.Ltmp114              #   Call between .Ltmp114 and .Ltmp115
	.uleb128 .Ltmp116-.Lfunc_begin4         #     jumps to .Ltmp116
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp117-.Lfunc_begin4         # >> Call Site 4 <<
	.uleb128 .Ltmp118-.Ltmp117              #   Call between .Ltmp117 and .Ltmp118
	.uleb128 .Ltmp119-.Lfunc_begin4         #     jumps to .Ltmp119
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp118-.Lfunc_begin4         # >> Call Site 5 <<
	.uleb128 .Ltmp120-.Ltmp118              #   Call between .Ltmp118 and .Ltmp120
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp120-.Lfunc_begin4         # >> Call Site 6 <<
	.uleb128 .Ltmp121-.Ltmp120              #   Call between .Ltmp120 and .Ltmp121
	.uleb128 .Ltmp122-.Lfunc_begin4         #     jumps to .Ltmp122
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp121-.Lfunc_begin4         # >> Call Site 7 <<
	.uleb128 .Ltmp123-.Ltmp121              #   Call between .Ltmp121 and .Ltmp123
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp123-.Lfunc_begin4         # >> Call Site 8 <<
	.uleb128 .Ltmp124-.Ltmp123              #   Call between .Ltmp123 and .Ltmp124
	.uleb128 .Ltmp125-.Lfunc_begin4         #     jumps to .Ltmp125
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp124-.Lfunc_begin4         # >> Call Site 9 <<
	.uleb128 .Ltmp126-.Ltmp124              #   Call between .Ltmp124 and .Ltmp126
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp126-.Lfunc_begin4         # >> Call Site 10 <<
	.uleb128 .Ltmp127-.Ltmp126              #   Call between .Ltmp126 and .Ltmp127
	.uleb128 .Ltmp128-.Lfunc_begin4         #     jumps to .Ltmp128
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp127-.Lfunc_begin4         # >> Call Site 11 <<
	.uleb128 .Ltmp129-.Ltmp127              #   Call between .Ltmp127 and .Ltmp129
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp129-.Lfunc_begin4         # >> Call Site 12 <<
	.uleb128 .Ltmp130-.Ltmp129              #   Call between .Ltmp129 and .Ltmp130
	.uleb128 .Ltmp131-.Lfunc_begin4         #     jumps to .Ltmp131
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp130-.Lfunc_begin4         # >> Call Site 13 <<
	.uleb128 .Lfunc_end23-.Ltmp130          #   Call between .Ltmp130 and .Lfunc_end23
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
	.text
	.globl	_ZN35btSequentialImpulseConstraintSolver5resetEv # -- Begin function _ZN35btSequentialImpulseConstraintSolver5resetEv
	.p2align	5
	.type	_ZN35btSequentialImpulseConstraintSolver5resetEv,@function
_ZN35btSequentialImpulseConstraintSolver5resetEv: # @_ZN35btSequentialImpulseConstraintSolver5resetEv
# %bb.0:
	st.d	$zero, $a0, 232
	ret
.Lfunc_end24:
	.size	_ZN35btSequentialImpulseConstraintSolver5resetEv, .Lfunc_end24-_ZN35btSequentialImpulseConstraintSolver5resetEv
                                        # -- End function
	.section	.text._ZN18btConstraintSolver12prepareSolveEii,"axG",@progbits,_ZN18btConstraintSolver12prepareSolveEii,comdat
	.weak	_ZN18btConstraintSolver12prepareSolveEii # -- Begin function _ZN18btConstraintSolver12prepareSolveEii
	.p2align	5
	.type	_ZN18btConstraintSolver12prepareSolveEii,@function
_ZN18btConstraintSolver12prepareSolveEii: # @_ZN18btConstraintSolver12prepareSolveEii
# %bb.0:
	ret
.Lfunc_end25:
	.size	_ZN18btConstraintSolver12prepareSolveEii, .Lfunc_end25-_ZN18btConstraintSolver12prepareSolveEii
                                        # -- End function
	.section	.text._ZN18btConstraintSolver9allSolvedERK19btContactSolverInfoP12btIDebugDrawP12btStackAlloc,"axG",@progbits,_ZN18btConstraintSolver9allSolvedERK19btContactSolverInfoP12btIDebugDrawP12btStackAlloc,comdat
	.weak	_ZN18btConstraintSolver9allSolvedERK19btContactSolverInfoP12btIDebugDrawP12btStackAlloc # -- Begin function _ZN18btConstraintSolver9allSolvedERK19btContactSolverInfoP12btIDebugDrawP12btStackAlloc
	.p2align	5
	.type	_ZN18btConstraintSolver9allSolvedERK19btContactSolverInfoP12btIDebugDrawP12btStackAlloc,@function
_ZN18btConstraintSolver9allSolvedERK19btContactSolverInfoP12btIDebugDrawP12btStackAlloc: # @_ZN18btConstraintSolver9allSolvedERK19btContactSolverInfoP12btIDebugDrawP12btStackAlloc
# %bb.0:
	ret
.Lfunc_end26:
	.size	_ZN18btConstraintSolver9allSolvedERK19btContactSolverInfoP12btIDebugDrawP12btStackAlloc, .Lfunc_end26-_ZN18btConstraintSolver9allSolvedERK19btContactSolverInfoP12btIDebugDrawP12btStackAlloc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZN15btTransformUtil18integrateTransformERK11btTransformRK9btVector3S5_fRS0_
.LCPI27_0:
	.word	0x3f490fdb                      # float 0.785398185
.LCPI27_1:
	.word	0x3a83126f                      # float 0.00100000005
.LCPI27_2:
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
	pcalau12i	$a0, %pc_hi20(.LCPI27_0)
	fld.s	$fa1, $a0, %pc_lo12(.LCPI27_0)
	fmul.s	$fa2, $fs0, $fa0
	pcalau12i	$a0, %pc_hi20(.LCPI27_1)
	fld.s	$fa3, $a0, %pc_lo12(.LCPI27_1)
	fcmp.clt.s	$fcc0, $fa1, $fa2
	fdiv.s	$fa1, $fa1, $fs0
	fsel	$fs4, $fa0, $fa1, $fcc0
	fcmp.cule.s	$fcc0, $fa3, $fs4
	bcnez	$fcc0, .LBB27_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.LCPI27_2)
	fld.s	$fa0, $a0, %pc_lo12(.LCPI27_2)
	fmul.s	$fa1, $fs0, $fs0
	fmul.s	$fa1, $fs0, $fa1
	fmul.s	$fa0, $fa1, $fa0
	fmul.s	$fa0, $fa0, $fs4
	fmul.s	$fa0, $fa0, $fs4
	vldi	$vr1, -1184
	fmadd.s	$fa0, $fs0, $fa1, $fa0
	b	.LBB27_3
.LBB27_2:
	vldi	$vr0, -1184
	fmul.s	$fa0, $fs4, $fa0
	fmul.s	$fa0, $fs0, $fa0
	pcaddu18i	$ra, %call36(sinf)
	jirl	$ra, $ra, 0
	fdiv.s	$fa0, $fa0, $fs4
.LBB27_3:
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
.Lfunc_end27:
	.size	_ZN15btTransformUtil18integrateTransformERK11btTransformRK9btVector3S5_fRS0_, .Lfunc_end27-_ZN15btTransformUtil18integrateTransformERK11btTransformRK9btVector3S5_fRS0_
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
	bcnez	$fcc0, .LBB28_3
# %bb.1:
	vldi	$vr0, -1168
	fadd.s	$fa1, $fa3, $fa0
	fsqrt.s	$fa0, $fa1
	fcmp.cor.s	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB28_6
.LBB28_2:                               # %.split
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
	vldi	$vr4, -3265
	vextrins.w	$vr4, $vr1, 0
	vextrins.w	$vr4, $vr3, 16
	vextrins.w	$vr4, $vr2, 32
	vfmul.s	$vr0, $vr0, $vr4
	b	.LBB28_5
.LBB28_3:
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
	bceqz	$fcc0, .LBB28_7
.LBB28_4:                               # %.split47
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
.LBB28_5:
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
.LBB28_6:                               # %call.sqrt
	fmov.s	$fa0, $fa1
	move	$fp, $a1
	move	$s0, $a0
	pcaddu18i	$ra, %call36(sqrtf)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	move	$a1, $fp
                                        # kill: def $f0 killed $f0 def $vr0
	b	.LBB28_2
.LBB28_7:                               # %call.sqrt48
	fmov.s	$fa0, $fa1
	move	$s5, $a1
	pcaddu18i	$ra, %call36(sqrtf)
	jirl	$ra, $ra, 0
	move	$a1, $s5
	b	.LBB28_4
.Lfunc_end28:
	.size	_ZNK11btMatrix3x311getRotationER12btQuaternion, .Lfunc_end28-_ZNK11btMatrix3x311getRotationER12btQuaternion
	.cfi_endproc
                                        # -- End function
	.type	gNumSplitImpulseRecoveries,@object # @gNumSplitImpulseRecoveries
	.bss
	.globl	gNumSplitImpulseRecoveries
	.p2align	2, 0x0
gNumSplitImpulseRecoveries:
	.word	0                               # 0x0
	.size	gNumSplitImpulseRecoveries, 4

	.type	_ZTV35btSequentialImpulseConstraintSolver,@object # @_ZTV35btSequentialImpulseConstraintSolver
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTV35btSequentialImpulseConstraintSolver
	.p2align	3, 0x0
_ZTV35btSequentialImpulseConstraintSolver:
	.dword	0
	.dword	_ZTI35btSequentialImpulseConstraintSolver
	.dword	_ZN35btSequentialImpulseConstraintSolverD2Ev
	.dword	_ZN35btSequentialImpulseConstraintSolverD0Ev
	.dword	_ZN18btConstraintSolver12prepareSolveEii
	.dword	_ZN35btSequentialImpulseConstraintSolver10solveGroupEPP17btCollisionObjectiPP20btPersistentManifoldiPP17btTypedConstraintiRK19btContactSolverInfoP12btIDebugDrawP12btStackAllocP12btDispatcher
	.dword	_ZN18btConstraintSolver9allSolvedERK19btContactSolverInfoP12btIDebugDrawP12btStackAlloc
	.dword	_ZN35btSequentialImpulseConstraintSolver5resetEv
	.size	_ZTV35btSequentialImpulseConstraintSolver, 64

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"solveGroupCacheFriendlySetup"
	.size	.L.str, 29

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"solveGroupCacheFriendlyIterations"
	.size	.L.str.1, 34

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"solveGroup"
	.size	.L.str.2, 11

	.type	_ZTI35btSequentialImpulseConstraintSolver,@object # @_ZTI35btSequentialImpulseConstraintSolver
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTI35btSequentialImpulseConstraintSolver
	.p2align	3, 0x0
_ZTI35btSequentialImpulseConstraintSolver:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS35btSequentialImpulseConstraintSolver
	.dword	_ZTI18btConstraintSolver
	.size	_ZTI35btSequentialImpulseConstraintSolver, 24

	.type	_ZTS35btSequentialImpulseConstraintSolver,@object # @_ZTS35btSequentialImpulseConstraintSolver
	.section	.rodata,"a",@progbits
	.globl	_ZTS35btSequentialImpulseConstraintSolver
_ZTS35btSequentialImpulseConstraintSolver:
	.asciz	"35btSequentialImpulseConstraintSolver"
	.size	_ZTS35btSequentialImpulseConstraintSolver, 38

	.type	_ZTI18btConstraintSolver,@object # @_ZTI18btConstraintSolver
	.section	.data.rel.ro._ZTI18btConstraintSolver,"awG",@progbits,_ZTI18btConstraintSolver,comdat
	.weak	_ZTI18btConstraintSolver
	.p2align	3, 0x0
_ZTI18btConstraintSolver:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTS18btConstraintSolver
	.size	_ZTI18btConstraintSolver, 16

	.type	_ZTS18btConstraintSolver,@object # @_ZTS18btConstraintSolver
	.section	.rodata._ZTS18btConstraintSolver,"aG",@progbits,_ZTS18btConstraintSolver,comdat
	.weak	_ZTS18btConstraintSolver
_ZTS18btConstraintSolver:
	.asciz	"18btConstraintSolver"
	.size	_ZTS18btConstraintSolver, 21

	.globl	_ZN35btSequentialImpulseConstraintSolverC1Ev
	.type	_ZN35btSequentialImpulseConstraintSolverC1Ev,@function
_ZN35btSequentialImpulseConstraintSolverC1Ev = _ZN35btSequentialImpulseConstraintSolverC2Ev
	.globl	_ZN35btSequentialImpulseConstraintSolverD1Ev
	.type	_ZN35btSequentialImpulseConstraintSolverD1Ev,@function
_ZN35btSequentialImpulseConstraintSolverD1Ev = _ZN35btSequentialImpulseConstraintSolverD2Ev
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
	.addrsig_sym _ZTI35btSequentialImpulseConstraintSolver
	.addrsig_sym _ZTVN10__cxxabiv120__si_class_type_infoE
	.addrsig_sym _ZTS35btSequentialImpulseConstraintSolver
	.addrsig_sym _ZTI18btConstraintSolver
	.addrsig_sym _ZTVN10__cxxabiv117__class_type_infoE
	.addrsig_sym _ZTS18btConstraintSolver
