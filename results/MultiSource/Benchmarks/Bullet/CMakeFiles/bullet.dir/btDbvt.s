	.file	"btDbvt.cpp"
	.text
	.globl	_ZN6btDbvtC2Ev                  # -- Begin function _ZN6btDbvtC2Ev
	.p2align	5
	.type	_ZN6btDbvtC2Ev,@function
_ZN6btDbvtC2Ev:                         # @_ZN6btDbvtC2Ev
# %bb.0:
	ori	$a1, $zero, 1
	st.b	$a1, $a0, 56
	st.d	$zero, $a0, 48
	st.d	$zero, $a0, 36
	vrepli.b	$vr0, 0
	vst	$vr0, $a0, 0
	addi.w	$a1, $zero, -1
	lu32i.d	$a1, 0
	st.d	$a1, $a0, 16
	st.w	$zero, $a0, 24
	ret
.Lfunc_end0:
	.size	_ZN6btDbvtC2Ev, .Lfunc_end0-_ZN6btDbvtC2Ev
                                        # -- End function
	.globl	_ZN6btDbvtD2Ev                  # -- Begin function _ZN6btDbvtD2Ev
	.p2align	5
	.type	_ZN6btDbvtD2Ev,@function
_ZN6btDbvtD2Ev:                         # @_ZN6btDbvtD2Ev
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
	ld.d	$a1, $a0, 0
	beqz	$a1, .LBB1_2
# %bb.1:
.Ltmp0:                                 # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZL17recursedeletenodeP6btDbvtP10btDbvtNode)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
.LBB1_2:                                # %.noexc
	ld.d	$a0, $fp, 8
.Ltmp2:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp3:                                 # EH_LABEL
# %bb.3:                                # %.noexc2
	ld.d	$a0, $fp, 48
	st.d	$zero, $fp, 8
	addi.w	$a1, $zero, -1
	lu32i.d	$a1, 0
	st.w	$a1, $fp, 16
	beqz	$a0, .LBB1_6
# %bb.4:                                # %.noexc2
	ld.b	$a1, $fp, 56
	andi	$a1, $a1, 1
	beqz	$a1, .LBB1_6
# %bb.5:
.Ltmp4:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp5:                                 # EH_LABEL
.LBB1_6:                                # %_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEED2Ev.exit
	st.w	$zero, $fp, 24
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 56
	st.d	$zero, $fp, 48
	st.d	$zero, $fp, 36
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB1_7:
.Ltmp6:                                 # EH_LABEL
	move	$s0, $a0
	addi.d	$a0, $fp, 32
.Ltmp7:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEED2Ev)
	jirl	$ra, $ra, 0
.Ltmp8:                                 # EH_LABEL
# %bb.8:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB1_9:
.Ltmp9:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	_ZN6btDbvtD2Ev, .Lfunc_end1-_ZN6btDbvtD2Ev
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
	.uleb128 .Ltmp7-.Lfunc_begin0           # >> Call Site 2 <<
	.uleb128 .Ltmp8-.Ltmp7                  #   Call between .Ltmp7 and .Ltmp8
	.uleb128 .Ltmp9-.Lfunc_begin0           #     jumps to .Ltmp9
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp8-.Lfunc_begin0           # >> Call Site 3 <<
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
	.text
	.globl	_ZN6btDbvt5clearEv              # -- Begin function _ZN6btDbvt5clearEv
	.p2align	5
	.type	_ZN6btDbvt5clearEv,@function
_ZN6btDbvt5clearEv:                     # @_ZN6btDbvt5clearEv
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	ld.d	$a1, $a0, 0
	beqz	$a1, .LBB2_2
# %bb.1:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZL17recursedeletenodeP6btDbvtP10btDbvtNode)
	jirl	$ra, $ra, 0
.LBB2_2:
	ld.d	$a0, $fp, 8
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 48
	st.d	$zero, $fp, 8
	addi.w	$a1, $zero, -1
	lu32i.d	$a1, 0
	st.w	$a1, $fp, 16
	beqz	$a0, .LBB2_5
# %bb.3:
	ld.b	$a1, $fp, 56
	andi	$a1, $a1, 1
	beqz	$a1, .LBB2_5
# %bb.4:
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.LBB2_5:                                # %_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEE5clearEv.exit
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 56
	st.d	$zero, $fp, 48
	st.d	$zero, $fp, 36
	st.w	$zero, $fp, 24
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end2:
	.size	_ZN6btDbvt5clearEv, .Lfunc_end2-_ZN6btDbvt5clearEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEED2Ev,"axG",@progbits,_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEED2Ev,comdat
	.weak	_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEED2Ev # -- Begin function _ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEED2Ev
	.p2align	5
	.type	_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEED2Ev,@function
_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEED2Ev: # @_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEED2Ev
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
.LBB3_3:                                # %_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEE5clearEv.exit
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 24
	st.d	$zero, $fp, 16
	st.d	$zero, $fp, 4
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end3:
	.size	_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEED2Ev, .Lfunc_end3-_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEED2Ev
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
.Lfunc_end4:
	.size	__clang_call_terminate, .Lfunc_end4-__clang_call_terminate
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZL17recursedeletenodeP6btDbvtP10btDbvtNode
	.type	_ZL17recursedeletenodeP6btDbvtP10btDbvtNode,@function
_ZL17recursedeletenodeP6btDbvtP10btDbvtNode: # @_ZL17recursedeletenodeP6btDbvtP10btDbvtNode
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
	move	$fp, $a1
	ld.d	$a1, $a1, 48
	move	$s0, $a0
	beqz	$a1, .LBB5_2
# %bb.1:
	ld.d	$a1, $fp, 40
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZL17recursedeletenodeP6btDbvtP10btDbvtNode)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 48
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZL17recursedeletenodeP6btDbvtP10btDbvtNode)
	jirl	$ra, $ra, 0
.LBB5_2:
	ld.d	$a0, $s0, 0
	bne	$fp, $a0, .LBB5_4
# %bb.3:
	st.d	$zero, $s0, 0
.LBB5_4:
	ld.d	$a0, $s0, 8
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
	st.d	$fp, $s0, 8
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end5:
	.size	_ZL17recursedeletenodeP6btDbvtP10btDbvtNode, .Lfunc_end5-_ZL17recursedeletenodeP6btDbvtP10btDbvtNode
	.cfi_endproc
                                        # -- End function
	.globl	_ZN6btDbvt16optimizeBottomUpEv  # -- Begin function _ZN6btDbvt16optimizeBottomUpEv
	.p2align	5
	.type	_ZN6btDbvt16optimizeBottomUpEv,@function
_ZN6btDbvt16optimizeBottomUpEv:         # @_ZN6btDbvt16optimizeBottomUpEv
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception1
# %bb.0:
	addi.d	$sp, $sp, -64
	.cfi_def_cfa_offset 64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	ld.d	$a1, $a0, 0
	beqz	$a1, .LBB6_8
# %bb.1:
	move	$fp, $a0
	ld.w	$s0, $a0, 20
	ori	$a0, $zero, 1
	st.b	$a0, $sp, 32
	st.d	$zero, $sp, 24
	st.d	$zero, $sp, 12
	blez	$s0, .LBB6_4
# %bb.2:
	slli.d	$a0, $s0, 3
.Ltmp10:                                # EH_LABEL
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
.Ltmp11:                                # EH_LABEL
# %bb.3:                                # %_ZN20btAlignedObjectArrayIP10btDbvtNodeE10deallocateEv.exit.i
	ori	$a2, $zero, 1
	ld.d	$a1, $fp, 0
	st.b	$a2, $sp, 32
	st.d	$a0, $sp, 24
	st.w	$s0, $sp, 16
.LBB6_4:                                # %_ZN20btAlignedObjectArrayIP10btDbvtNodeE7reserveEi.exit
.Ltmp12:                                # EH_LABEL
	addi.w	$a3, $zero, -1
	addi.d	$a2, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZL11fetchleavesP6btDbvtP10btDbvtNodeR20btAlignedObjectArrayIS2_Ei)
	jirl	$ra, $ra, 0
.Ltmp13:                                # EH_LABEL
# %bb.5:
.Ltmp14:                                # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZL8bottomupP6btDbvtR20btAlignedObjectArrayIP10btDbvtNodeE)
	jirl	$ra, $ra, 0
.Ltmp15:                                # EH_LABEL
# %bb.6:
	ld.d	$a0, $sp, 24
	ld.d	$a1, $a0, 0
	ld.bu	$a2, $sp, 32
	st.d	$a1, $fp, 0
	beqz	$a2, .LBB6_8
# %bb.7:
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.LBB6_8:
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB6_9:
.Ltmp16:                                # EH_LABEL
	ld.d	$a1, $sp, 24
	move	$fp, $a0
	beqz	$a1, .LBB6_12
# %bb.10:
	ld.b	$a0, $sp, 32
	andi	$a0, $a0, 1
	beqz	$a0, .LBB6_12
# %bb.11:
.Ltmp17:                                # EH_LABEL
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp18:                                # EH_LABEL
.LBB6_12:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB6_13:
.Ltmp19:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end6:
	.size	_ZN6btDbvt16optimizeBottomUpEv, .Lfunc_end6-_ZN6btDbvt16optimizeBottomUpEv
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
	.uleb128 .Ltmp10-.Lfunc_begin1          # >> Call Site 1 <<
	.uleb128 .Ltmp15-.Ltmp10                #   Call between .Ltmp10 and .Ltmp15
	.uleb128 .Ltmp16-.Lfunc_begin1          #     jumps to .Ltmp16
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp15-.Lfunc_begin1          # >> Call Site 2 <<
	.uleb128 .Ltmp17-.Ltmp15                #   Call between .Ltmp15 and .Ltmp17
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp17-.Lfunc_begin1          # >> Call Site 3 <<
	.uleb128 .Ltmp18-.Ltmp17                #   Call between .Ltmp17 and .Ltmp18
	.uleb128 .Ltmp19-.Lfunc_begin1          #     jumps to .Ltmp19
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp18-.Lfunc_begin1          # >> Call Site 4 <<
	.uleb128 .Lfunc_end6-.Ltmp18            #   Call between .Ltmp18 and .Lfunc_end6
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
	.p2align	5                               # -- Begin function _ZL11fetchleavesP6btDbvtP10btDbvtNodeR20btAlignedObjectArrayIS2_Ei
	.type	_ZL11fetchleavesP6btDbvtP10btDbvtNodeR20btAlignedObjectArrayIS2_Ei,@function
_ZL11fetchleavesP6btDbvtP10btDbvtNodeR20btAlignedObjectArrayIS2_Ei: # @_ZL11fetchleavesP6btDbvtP10btDbvtNodeR20btAlignedObjectArrayIS2_Ei
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
	beqz	$a3, .LBB7_3
# %bb.1:
	ld.d	$a1, $fp, 48
	beqz	$a1, .LBB7_3
# %bb.2:
	ld.d	$a1, $fp, 40
	addi.w	$s0, $a3, -1
	move	$s1, $a0
	move	$s2, $a2
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZL11fetchleavesP6btDbvtP10btDbvtNodeR20btAlignedObjectArrayIS2_Ei)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 48
	move	$a0, $s1
	move	$a2, $s2
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZL11fetchleavesP6btDbvtP10btDbvtNodeR20btAlignedObjectArrayIS2_Ei)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 8
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
	st.d	$fp, $s1, 8
	b	.LBB7_21
.LBB7_3:
	ld.w	$a1, $a2, 4
	ld.w	$a0, $a2, 8
	bne	$a1, $a0, .LBB7_20
# %bb.4:
	sltui	$a0, $a1, 1
	slli.w	$a3, $a1, 1
	masknez	$a3, $a3, $a0
	ori	$a4, $zero, 1
	maskeqz	$a0, $a4, $a0
	or	$s1, $a0, $a3
	bge	$a1, $s1, .LBB7_20
# %bb.5:
	beqz	$s1, .LBB7_15
# %bb.6:
	slli.d	$a0, $s1, 3
	ori	$a1, $zero, 16
	move	$s0, $a2
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
	move	$a2, $s0
	ld.w	$a1, $s0, 4
	move	$s0, $a0
	ld.d	$a0, $a2, 16
	blez	$a1, .LBB7_16
.LBB7_7:                                # %.lr.ph.i.i.i
	ori	$a4, $zero, 4
	move	$a3, $zero
	bltu	$a1, $a4, .LBB7_12
# %bb.8:                                # %.lr.ph.i.i.i
	sub.d	$a4, $s0, $a0
	ori	$a5, $zero, 32
	bltu	$a4, $a5, .LBB7_12
# %bb.9:                                # %vector.ph
	bstrpick.d	$a3, $a1, 30, 2
	slli.d	$a3, $a3, 2
	addi.d	$a4, $a0, 16
	addi.d	$a5, $s0, 16
	move	$a6, $a3
	.p2align	4, , 16
.LBB7_10:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a4, -16
	vld	$vr1, $a4, 0
	vst	$vr0, $a5, -16
	vst	$vr1, $a5, 0
	addi.d	$a6, $a6, -4
	addi.d	$a4, $a4, 32
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB7_10
# %bb.11:                               # %middle.block
	beq	$a3, $a1, .LBB7_14
.LBB7_12:                               # %scalar.ph.preheader
	sub.d	$a4, $a1, $a3
	alsl.d	$a5, $a3, $a0, 3
	alsl.d	$a3, $a3, $s0, 3
	.p2align	4, , 16
.LBB7_13:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a6, $a5, 0
	st.d	$a6, $a3, 0
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 8
	addi.d	$a3, $a3, 8
	bnez	$a4, .LBB7_13
.LBB7_14:                               # %_ZNK20btAlignedObjectArrayIP10btDbvtNodeE4copyEiiPS1_.exit.thread.i.i
	ld.bu	$a3, $a2, 24
	bnez	$a3, .LBB7_18
	b	.LBB7_19
.LBB7_15:
	move	$s0, $zero
	ld.d	$a0, $a2, 16
	bgtz	$a1, .LBB7_7
.LBB7_16:                               # %_ZNK20btAlignedObjectArrayIP10btDbvtNodeE4copyEiiPS1_.exit.i.i
	beqz	$a0, .LBB7_19
# %bb.17:                               # %_ZNK20btAlignedObjectArrayIP10btDbvtNodeE4copyEiiPS1_.exit.i.i
	ld.b	$a3, $a2, 24
	andi	$a3, $a3, 1
	beqz	$a3, .LBB7_19
.LBB7_18:
	move	$s2, $a2
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
	move	$a2, $s2
	ld.w	$a1, $s2, 4
.LBB7_19:                               # %_ZN20btAlignedObjectArrayIP10btDbvtNodeE10deallocateEv.exit.i.i
	ori	$a0, $zero, 1
	st.b	$a0, $a2, 24
	st.d	$s0, $a2, 16
	st.w	$s1, $a2, 8
.LBB7_20:                               # %_ZN20btAlignedObjectArrayIP10btDbvtNodeE9push_backERKS1_.exit
	ld.d	$a0, $a2, 16
	slli.d	$a3, $a1, 3
	stx.d	$fp, $a0, $a3
	addi.d	$a0, $a1, 1
	st.w	$a0, $a2, 4
.LBB7_21:                               # %common.ret19
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end7:
	.size	_ZL11fetchleavesP6btDbvtP10btDbvtNodeR20btAlignedObjectArrayIS2_Ei, .Lfunc_end7-_ZL11fetchleavesP6btDbvtP10btDbvtNodeR20btAlignedObjectArrayIS2_Ei
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZL8bottomupP6btDbvtR20btAlignedObjectArrayIP10btDbvtNodeE
.LCPI8_0:
	.word	0x7f7fffff                      # float 3.40282347E+38
	.text
	.p2align	5
	.type	_ZL8bottomupP6btDbvtR20btAlignedObjectArrayIP10btDbvtNodeE,@function
_ZL8bottomupP6btDbvtR20btAlignedObjectArrayIP10btDbvtNodeE: # @_ZL8bottomupP6btDbvtR20btAlignedObjectArrayIP10btDbvtNodeE
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -112
	.cfi_def_cfa_offset 112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	st.d	$s5, $sp, 48                    # 8-byte Folded Spill
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
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
	move	$fp, $a1
	ld.w	$a1, $a1, 4
	ori	$s1, $zero, 2
	blt	$a1, $s1, .LBB8_11
# %bb.1:                                # %.preheader.lr.ph
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.LCPI8_0)
	fld.s	$fs0, $a0, %pc_lo12(.LCPI8_0)
	addi.w	$s2, $zero, -1
	vrepli.b	$vr13, 0
	vst	$vr13, $sp, 16                  # 16-byte Folded Spill
	b	.LBB8_4
	.p2align	4, , 16
.LBB8_2:                                #   in Loop: Header=BB8_4 Depth=1
	ori	$a0, $zero, 56
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
	vld	$vr13, $sp, 16                  # 16-byte Folded Reload
	st.d	$zero, $a0, 0
	vst	$vr13, $a0, 8
	vst	$vr13, $a0, 24
	vst	$vr13, $a0, 40
.LBB8_3:                                # %_ZL10createnodeP6btDbvtP10btDbvtNodeRK12btDbvtAabbMmS5_Pv.exit
                                        #   in Loop: Header=BB8_4 Depth=1
	st.d	$zero, $a0, 48
	vst	$vr13, $a0, 32
	fld.s	$fa0, $s5, 0
	fld.s	$fa1, $s6, 0
	fcmp.clt.s	$fcc0, $fa0, $fa1
	fsel	$fa0, $fa1, $fa0, $fcc0
	fst.s	$fa0, $a0, 0
	fld.s	$fa0, $s5, 16
	fld.s	$fa1, $s6, 16
	fcmp.clt.s	$fcc0, $fa1, $fa0
	fsel	$fa0, $fa1, $fa0, $fcc0
	fst.s	$fa0, $a0, 16
	fld.s	$fa0, $s5, 4
	fld.s	$fa1, $s6, 4
	fcmp.clt.s	$fcc0, $fa0, $fa1
	fsel	$fa0, $fa1, $fa0, $fcc0
	fst.s	$fa0, $a0, 4
	fld.s	$fa0, $s5, 20
	fld.s	$fa1, $s6, 20
	fcmp.clt.s	$fcc0, $fa1, $fa0
	fsel	$fa0, $fa1, $fa0, $fcc0
	fst.s	$fa0, $a0, 20
	fld.s	$fa0, $s5, 8
	fld.s	$fa1, $s6, 8
	fcmp.clt.s	$fcc0, $fa0, $fa1
	fsel	$fa0, $fa1, $fa0, $fcc0
	fst.s	$fa0, $a0, 8
	fld.s	$fa0, $s5, 24
	fld.s	$fa1, $s6, 24
	fcmp.clt.s	$fcc0, $fa1, $fa0
	st.d	$s5, $a0, 40
	st.d	$s6, $a0, 48
	ld.d	$a2, $fp, 16
	ld.w	$a3, $fp, 4
	st.d	$a0, $s5, 32
	st.d	$a0, $s6, 32
	stx.d	$a0, $a2, $s4
	addi.w	$a1, $a3, -1
	slli.d	$a4, $a1, 3
	ldx.d	$a5, $a2, $a4
	ldx.d	$a6, $a2, $s3
	fsel	$fa0, $fa1, $fa0, $fcc0
	fst.s	$fa0, $a0, 24
	stx.d	$a5, $a2, $s3
	stx.d	$a6, $a2, $a4
	st.w	$a1, $fp, 4
	bge	$s1, $a3, .LBB8_11
.LBB8_4:                                # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_6 Depth 2
                                        #       Child Loop BB8_8 Depth 3
	ld.d	$a2, $fp, 16
	move	$a5, $zero
	bstrpick.d	$a0, $a1, 31, 0
	addi.d	$a3, $a2, 8
	ori	$a4, $zero, 1
	ori	$a7, $zero, 1
	fmov.s	$fa0, $fs0
	move	$a6, $s2
	move	$t0, $s2
	b	.LBB8_6
	.p2align	4, , 16
.LBB8_5:                                # %.loopexit
                                        #   in Loop: Header=BB8_6 Depth=2
	addi.d	$a7, $a7, 1
	addi.w	$a4, $a4, 1
	addi.d	$a3, $a3, 8
	beq	$a5, $a0, .LBB8_9
.LBB8_6:                                #   Parent Loop BB8_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_8 Depth 3
	move	$t1, $a5
	addi.d	$a5, $a5, 1
	bgeu	$a5, $a1, .LBB8_5
# %bb.7:                                # %.lr.ph
                                        #   in Loop: Header=BB8_6 Depth=2
	slli.d	$t2, $t1, 3
	ldx.d	$t2, $a2, $t2
	fld.s	$fa1, $t2, 0
	fld.s	$fa2, $t2, 16
	fld.s	$fa3, $t2, 4
	fld.s	$fa4, $t2, 20
	fld.s	$fa5, $t2, 8
	fld.s	$fa6, $t2, 24
	move	$t2, $a0
	move	$t3, $a3
	move	$t4, $a4
	.p2align	4, , 16
.LBB8_8:                                #   Parent Loop BB8_4 Depth=1
                                        #     Parent Loop BB8_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$t5, $t3, 0
	fld.s	$fa7, $t5, 0
	fld.s	$ft0, $t5, 16
	fcmp.clt.s	$fcc0, $fa1, $fa7
	fsel	$fa7, $fa7, $fa1, $fcc0
	fld.s	$ft1, $t5, 4
	fcmp.clt.s	$fcc0, $ft0, $fa2
	fsel	$ft0, $ft0, $fa2, $fcc0
	fld.s	$ft2, $t5, 20
	fcmp.clt.s	$fcc0, $fa3, $ft1
	fsel	$ft1, $ft1, $fa3, $fcc0
	fld.s	$ft3, $t5, 8
	fcmp.clt.s	$fcc0, $ft2, $fa4
	fld.s	$ft4, $t5, 24
	fsel	$ft2, $ft2, $fa4, $fcc0
	fcmp.clt.s	$fcc0, $fa5, $ft3
	fsel	$ft3, $ft3, $fa5, $fcc0
	fcmp.clt.s	$fcc0, $ft4, $fa6
	fsel	$ft4, $ft4, $fa6, $fcc0
	fsub.s	$fa7, $ft0, $fa7
	fsub.s	$ft0, $ft2, $ft1
	fsub.s	$ft1, $ft4, $ft3
	fmul.s	$ft2, $fa7, $ft0
	fmadd.s	$fa7, $ft2, $ft1, $fa7
	fadd.s	$fa7, $ft0, $fa7
	fadd.s	$fa7, $ft1, $fa7
	fcmp.clt.s	$fcc0, $fa7, $fa0
	fsel	$fa0, $fa0, $fa7, $fcc0
	movcf2gr	$t5, $fcc0
	masknez	$t0, $t0, $t5
	maskeqz	$t6, $t1, $t5
	or	$t0, $t6, $t0
	masknez	$a6, $a6, $t5
	maskeqz	$t5, $t4, $t5
	or	$a6, $t5, $a6
	addi.w	$t4, $t4, 1
	addi.d	$t2, $t2, -1
	addi.d	$t3, $t3, 8
	bne	$a7, $t2, .LBB8_8
	b	.LBB8_5
	.p2align	4, , 16
.LBB8_9:                                #   in Loop: Header=BB8_4 Depth=1
	addi.w	$a0, $t0, 0
	slli.d	$s4, $a0, 3
	ldx.d	$s5, $a2, $s4
	slli.d	$s3, $a6, 3
	ld.d	$a0, $s0, 8
	ldx.d	$s6, $a2, $s3
	beqz	$a0, .LBB8_2
# %bb.10:                               #   in Loop: Header=BB8_4 Depth=1
	st.d	$zero, $s0, 8
	b	.LBB8_3
.LBB8_11:                               # %._crit_edge
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.Lfunc_end8:
	.size	_ZL8bottomupP6btDbvtR20btAlignedObjectArrayIP10btDbvtNodeE, .Lfunc_end8-_ZL8bottomupP6btDbvtR20btAlignedObjectArrayIP10btDbvtNodeE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN20btAlignedObjectArrayIP10btDbvtNodeED2Ev,"axG",@progbits,_ZN20btAlignedObjectArrayIP10btDbvtNodeED2Ev,comdat
	.weak	_ZN20btAlignedObjectArrayIP10btDbvtNodeED2Ev # -- Begin function _ZN20btAlignedObjectArrayIP10btDbvtNodeED2Ev
	.p2align	5
	.type	_ZN20btAlignedObjectArrayIP10btDbvtNodeED2Ev,@function
_ZN20btAlignedObjectArrayIP10btDbvtNodeED2Ev: # @_ZN20btAlignedObjectArrayIP10btDbvtNodeED2Ev
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
	beqz	$a0, .LBB9_3
# %bb.1:
	ld.b	$a1, $fp, 24
	andi	$a1, $a1, 1
	beqz	$a1, .LBB9_3
# %bb.2:
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.LBB9_3:                                # %_ZN20btAlignedObjectArrayIP10btDbvtNodeE5clearEv.exit
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 24
	st.d	$zero, $fp, 16
	st.d	$zero, $fp, 4
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end9:
	.size	_ZN20btAlignedObjectArrayIP10btDbvtNodeED2Ev, .Lfunc_end9-_ZN20btAlignedObjectArrayIP10btDbvtNodeED2Ev
	.cfi_endproc
                                        # -- End function
	.text
	.globl	_ZN6btDbvt15optimizeTopDownEi   # -- Begin function _ZN6btDbvt15optimizeTopDownEi
	.p2align	5
	.type	_ZN6btDbvt15optimizeTopDownEi,@function
_ZN6btDbvt15optimizeTopDownEi:          # @_ZN6btDbvt15optimizeTopDownEi
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception2
# %bb.0:
	addi.d	$sp, $sp, -80
	.cfi_def_cfa_offset 80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	ld.d	$a4, $a0, 0
	beqz	$a4, .LBB10_9
# %bb.1:
	move	$fp, $a0
	move	$s0, $a1
	ld.w	$s1, $a0, 20
	ori	$a0, $zero, 1
	st.b	$a0, $sp, 40
	st.d	$zero, $sp, 32
	st.d	$zero, $sp, 20
	blez	$s1, .LBB10_4
# %bb.2:
	slli.d	$a0, $s1, 3
.Ltmp20:                                # EH_LABEL
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
.Ltmp21:                                # EH_LABEL
# %bb.3:                                # %_ZN20btAlignedObjectArrayIP10btDbvtNodeE10deallocateEv.exit.i
	ori	$a1, $zero, 1
	ld.d	$a4, $fp, 0
	st.b	$a1, $sp, 40
	st.d	$a0, $sp, 32
	st.w	$s1, $sp, 24
.LBB10_4:                               # %_ZN20btAlignedObjectArrayIP10btDbvtNodeE7reserveEi.exit
.Ltmp22:                                # EH_LABEL
	addi.w	$a3, $zero, -1
	addi.d	$a2, $sp, 16
	move	$a0, $fp
	move	$a1, $a4
	pcaddu18i	$ra, %call36(_ZL11fetchleavesP6btDbvtP10btDbvtNodeR20btAlignedObjectArrayIS2_Ei)
	jirl	$ra, $ra, 0
.Ltmp23:                                # EH_LABEL
# %bb.5:
.Ltmp24:                                # EH_LABEL
	addi.d	$a1, $sp, 16
	move	$a0, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(_ZL7topdownP6btDbvtR20btAlignedObjectArrayIP10btDbvtNodeEi)
	jirl	$ra, $ra, 0
	move	$a1, $a0
.Ltmp25:                                # EH_LABEL
# %bb.6:
	ld.d	$a0, $sp, 32
	st.d	$a1, $fp, 0
	beqz	$a0, .LBB10_9
# %bb.7:
	ld.b	$a1, $sp, 40
	andi	$a1, $a1, 1
	beqz	$a1, .LBB10_9
# %bb.8:
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.LBB10_9:
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.LBB10_10:
.Ltmp26:                                # EH_LABEL
	ld.d	$a1, $sp, 32
	move	$fp, $a0
	beqz	$a1, .LBB10_13
# %bb.11:
	ld.b	$a0, $sp, 40
	andi	$a0, $a0, 1
	beqz	$a0, .LBB10_13
# %bb.12:
.Ltmp27:                                # EH_LABEL
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp28:                                # EH_LABEL
.LBB10_13:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB10_14:
.Ltmp29:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end10:
	.size	_ZN6btDbvt15optimizeTopDownEi, .Lfunc_end10-_ZN6btDbvt15optimizeTopDownEi
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table10:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase2-.Lttbaseref2
.Lttbaseref2:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Ltmp20-.Lfunc_begin2          # >> Call Site 1 <<
	.uleb128 .Ltmp25-.Ltmp20                #   Call between .Ltmp20 and .Ltmp25
	.uleb128 .Ltmp26-.Lfunc_begin2          #     jumps to .Ltmp26
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp25-.Lfunc_begin2          # >> Call Site 2 <<
	.uleb128 .Ltmp27-.Ltmp25                #   Call between .Ltmp25 and .Ltmp27
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp27-.Lfunc_begin2          # >> Call Site 3 <<
	.uleb128 .Ltmp28-.Ltmp27                #   Call between .Ltmp27 and .Ltmp28
	.uleb128 .Ltmp29-.Lfunc_begin2          #     jumps to .Ltmp29
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp28-.Lfunc_begin2          # >> Call Site 4 <<
	.uleb128 .Lfunc_end10-.Ltmp28           #   Call between .Ltmp28 and .Lfunc_end10
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
	.p2align	5                               # -- Begin function _ZL7topdownP6btDbvtR20btAlignedObjectArrayIP10btDbvtNodeEi
	.type	_ZL7topdownP6btDbvtR20btAlignedObjectArrayIP10btDbvtNodeEi,@function
_ZL7topdownP6btDbvtR20btAlignedObjectArrayIP10btDbvtNodeEi: # @_ZL7topdownP6btDbvtR20btAlignedObjectArrayIP10btDbvtNodeEi
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception3
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
	fst.d	$fs7, $sp, 152                  # 8-byte Folded Spill
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
	pcalau12i	$a3, %pc_hi20(_ZGVZL7topdownP6btDbvtR20btAlignedObjectArrayIP10btDbvtNodeEiE4axis)
	ld.b	$a3, $a3, %pc_lo12(_ZGVZL7topdownP6btDbvtR20btAlignedObjectArrayIP10btDbvtNodeEiE4axis)
	move	$s1, $a1
	move	$s0, $a0
	dbar	20
	beqz	$a3, .LBB11_175
.LBB11_1:
	ld.w	$a0, $s1, 4
	ori	$a1, $zero, 2
	blt	$a0, $a1, .LBB11_12
# %bb.2:
	bge	$a2, $a0, .LBB11_11
# %bb.3:                                # %.lr.ph.preheader.i
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	ld.d	$a1, $s1, 16
	ld.d	$a2, $a1, 0
	fld.s	$fs0, $a2, 0
	fld.s	$fs1, $a2, 4
	fld.s	$fs2, $a2, 8
	ld.w	$a3, $a2, 12
	st.d	$a3, $sp, 40                    # 8-byte Folded Spill
	fld.s	$fs4, $a2, 16
	fld.s	$fs5, $a2, 20
	fld.s	$fs3, $a2, 24
	ld.w	$a2, $a2, 28
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	addi.d	$a2, $a0, -1
	addi.d	$a3, $a1, 8
	.p2align	4, , 16
.LBB11_4:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a3, 0
	fld.s	$fa0, $a4, 0
	fld.s	$fa1, $a4, 16
	fcmp.clt.s	$fcc0, $fs0, $fa0
	fsel	$fs0, $fa0, $fs0, $fcc0
	fld.s	$fa0, $a4, 4
	fcmp.clt.s	$fcc0, $fa1, $fs4
	fsel	$fs4, $fa1, $fs4, $fcc0
	fld.s	$fa1, $a4, 20
	fcmp.clt.s	$fcc0, $fs1, $fa0
	fsel	$fs1, $fa0, $fs1, $fcc0
	fld.s	$fa0, $a4, 8
	fcmp.clt.s	$fcc0, $fa1, $fs5
	fld.s	$fa2, $a4, 24
	fsel	$fs5, $fa1, $fs5, $fcc0
	fcmp.clt.s	$fcc0, $fs2, $fa0
	fsel	$fs2, $fa0, $fs2, $fcc0
	fcmp.clt.s	$fcc0, $fa2, $fs3
	fsel	$fs3, $fa2, $fs3, $fcc0
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 8
	bnez	$a2, .LBB11_4
# %bb.5:                                # %.lr.ph.preheader
	ori	$a2, $zero, 1
	st.b	$a2, $sp, 112
	st.d	$zero, $sp, 104
	st.d	$zero, $sp, 92
	st.b	$a2, $sp, 144
	st.d	$zero, $sp, 136
	st.d	$zero, $sp, 124
	fadd.s	$fa1, $fs0, $fs4
	fadd.s	$fa2, $fs1, $fs5
	fadd.s	$fa3, $fs2, $fs3
	vldi	$vr0, -1184
	fmul.s	$ft8, $fa1, $fa0
	fmul.s	$ft9, $fa2, $fa0
	fmul.s	$fs6, $fa3, $fa0
	st.d	$zero, $sp, 80
	vrepli.b	$vr1, 0
	vst	$vr1, $sp, 16                   # 16-byte Folded Spill
	vst	$vr1, $sp, 64
	pcalau12i	$a2, %pc_hi20(_ZZL7topdownP6btDbvtR20btAlignedObjectArrayIP10btDbvtNodeEiE4axis)
	addi.d	$s6, $a2, %pc_lo12(_ZZL7topdownP6btDbvtR20btAlignedObjectArrayIP10btDbvtNodeEiE4axis)
	fld.s	$fa1, $s6, 0
	fld.s	$fa2, $s6, 4
	fld.s	$fa3, $s6, 8
	fld.s	$fa4, $s6, 16
	fld.s	$fa5, $s6, 20
	fld.s	$fa6, $s6, 24
	fld.s	$fa7, $s6, 32
	fld.s	$ft0, $s6, 36
	fld.s	$ft1, $s6, 40
	addi.d	$a2, $sp, 64
	ori	$a3, $zero, 8
	ori	$a4, $zero, 12
	ori	$a5, $zero, 16
	ori	$a6, $zero, 20
	move	$a7, $a0
	movgr2fr.w	$fs7, $zero
	.p2align	4, , 16
.LBB11_6:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$t0, $a1, 0
	fld.s	$ft2, $t0, 0
	fld.s	$ft3, $t0, 16
	fld.s	$ft4, $t0, 4
	fld.s	$ft5, $t0, 20
	fld.s	$ft6, $t0, 8
	fld.s	$ft7, $t0, 24
	fadd.s	$ft2, $ft2, $ft3
	fadd.s	$ft3, $ft4, $ft5
	fadd.s	$ft4, $ft6, $ft7
	fmul.s	$ft2, $ft2, $fa0
	fmul.s	$ft3, $ft3, $fa0
	fmul.s	$ft4, $ft4, $fa0
	fsub.s	$ft2, $ft2, $ft8
	fsub.s	$ft3, $ft3, $ft9
	fsub.s	$ft4, $ft4, $fs6
	fmul.s	$ft5, $ft3, $fa2
	fmadd.s	$ft5, $ft2, $fa1, $ft5
	fmadd.s	$ft5, $ft4, $fa3, $ft5
	fcmp.clt.s	$fcc0, $fs7, $ft5
	movcf2gr	$t0, $fcc0
	slli.d	$t0, $t0, 2
	or	$t0, $a2, $t0
	ld.w	$t1, $t0, 0
	fmul.s	$ft5, $ft3, $fa5
	fmadd.s	$ft5, $ft2, $fa4, $ft5
	fmadd.s	$ft5, $ft4, $fa6, $ft5
	fcmp.clt.s	$fcc0, $fs7, $ft5
	addi.d	$t1, $t1, 1
	movcf2gr	$t2, $fcc0
	masknez	$t3, $a3, $t2
	maskeqz	$t2, $a4, $t2
	or	$t2, $t2, $t3
	fmul.s	$ft3, $ft3, $ft0
	fmadd.s	$ft2, $ft2, $fa7, $ft3
	fmadd.s	$ft2, $ft4, $ft1, $ft2
	fcmp.clt.s	$fcc0, $fs7, $ft2
	ldx.w	$t3, $t2, $a2
	movcf2gr	$t4, $fcc0
	masknez	$t5, $a5, $t4
	maskeqz	$t4, $a6, $t4
	or	$t4, $t4, $t5
	ldx.w	$t5, $t4, $a2
	st.w	$t1, $t0, 0
	addi.d	$t0, $t3, 1
	stx.w	$t0, $t2, $a2
	addi.d	$t0, $t5, 1
	stx.w	$t0, $t4, $a2
	addi.d	$a7, $a7, -1
	addi.d	$a1, $a1, 8
	bnez	$a7, .LBB11_6
# %bb.7:                                # %.preheader198
	fst.s	$ft9, $sp, 56                   # 4-byte Folded Spill
	fst.s	$ft8, $sp, 60                   # 4-byte Folded Spill
	ld.w	$a3, $sp, 64
	addi.w	$a1, $zero, -1
	blez	$a3, .LBB11_14
# %bb.8:
	ld.w	$a4, $sp, 68
	move	$a2, $a0
	blez	$a4, .LBB11_10
# %bb.9:
	sub.d	$a1, $a3, $a4
	movgr2fr.w	$fa0, $a1
	ffint.s.w	$fa0, $fa0
	fabs.s	$fa0, $fa0
	ftintrz.w.s	$fa0, $fa0
	movfr2gr.s	$a2, $fa0
	slt	$a1, $a2, $a0
	xori	$a1, $a1, 1
	sub.d	$a1, $zero, $a1
	slt	$a3, $a0, $a2
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $a0, $a3
	or	$a2, $a3, $a2
.LBB11_10:
	ld.w	$a3, $sp, 72
	bgtz	$a3, .LBB11_15
	b	.LBB11_17
.LBB11_11:
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZL8bottomupP6btDbvtR20btAlignedObjectArrayIP10btDbvtNodeE)
	jirl	$ra, $ra, 0
.LBB11_12:
	ld.d	$a0, $s1, 16
	ld.d	$s1, $a0, 0
.LBB11_13:
	move	$a0, $s1
	fld.d	$fs7, $sp, 152                  # 8-byte Folded Reload
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
.LBB11_14:
	move	$a2, $a0
	ld.w	$a3, $sp, 72
	blez	$a3, .LBB11_17
.LBB11_15:
	ld.w	$a4, $sp, 76
	blez	$a4, .LBB11_17
# %bb.16:
	sub.d	$a3, $a3, $a4
	movgr2fr.w	$fa0, $a3
	ffint.s.w	$fa0, $fa0
	fabs.s	$fa0, $fa0
	ftintrz.w.s	$fa0, $fa0
	movfr2gr.s	$a3, $fa0
	slt	$a4, $a3, $a2
	masknez	$a1, $a1, $a4
	ori	$a5, $zero, 1
	maskeqz	$a4, $a5, $a4
	or	$a1, $a4, $a1
	slt	$a4, $a2, $a3
	masknez	$a3, $a3, $a4
	maskeqz	$a2, $a2, $a4
	or	$a2, $a2, $a3
.LBB11_17:
	ld.w	$a3, $sp, 80
	blez	$a3, .LBB11_20
# %bb.18:
	ld.w	$a4, $sp, 84
	blez	$a4, .LBB11_20
# %bb.19:
	sub.d	$a3, $a3, $a4
	movgr2fr.w	$fa0, $a3
	ffint.s.w	$fa0, $fa0
	fabs.s	$fa0, $fa0
	ftintrz.w.s	$fa0, $fa0
	movfr2gr.s	$a3, $fa0
	ori	$s7, $zero, 2
	blt	$a3, $a2, .LBB11_21
.LBB11_20:
	move	$s7, $a1
	bltz	$a1, .LBB11_32
.LBB11_21:                              # %.thread
	addi.d	$s2, $sp, 64
	slli.d	$a0, $s7, 3
	ldx.w	$fp, $a0, $s2
	blez	$fp, .LBB11_42
# %bb.22:
	slli.d	$a0, $fp, 3
.Ltmp43:                                # EH_LABEL
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
.Ltmp44:                                # EH_LABEL
# %bb.23:                               # %_ZN20btAlignedObjectArrayIP10btDbvtNodeE8allocateEi.exit.i
	move	$s3, $a0
	ld.w	$a1, $sp, 92
	ld.d	$a0, $sp, 104
	blez	$a1, .LBB11_43
# %bb.24:                               # %.lr.ph.i.i
	ori	$a3, $zero, 4
	move	$a2, $zero
	bltu	$a1, $a3, .LBB11_29
# %bb.25:                               # %.lr.ph.i.i
	sub.d	$a3, $s3, $a0
	ori	$a4, $zero, 32
	bltu	$a3, $a4, .LBB11_29
# %bb.26:                               # %vector.ph335
	bstrpick.d	$a2, $a1, 30, 2
	slli.d	$a2, $a2, 2
	addi.d	$a3, $a0, 16
	addi.d	$a4, $s3, 16
	move	$a5, $a2
	.p2align	4, , 16
.LBB11_27:                              # %vector.body338
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a3, -16
	vld	$vr1, $a3, 0
	vst	$vr0, $a4, -16
	vst	$vr1, $a4, 0
	addi.d	$a5, $a5, -4
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB11_27
# %bb.28:                               # %middle.block343
	beq	$a2, $a1, .LBB11_31
.LBB11_29:                              # %scalar.ph333.preheader
	sub.d	$a1, $a1, $a2
	alsl.d	$a3, $a2, $a0, 3
	alsl.d	$a2, $a2, $s3, 3
	.p2align	4, , 16
.LBB11_30:                              # %scalar.ph333
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a3, 0
	st.d	$a4, $a2, 0
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 8
	addi.d	$a2, $a2, 8
	bnez	$a1, .LBB11_30
.LBB11_31:                              # %_ZNK20btAlignedObjectArrayIP10btDbvtNodeE4copyEiiPS1_.exit.thread.i
	ld.bu	$a1, $sp, 112
	bnez	$a1, .LBB11_45
	b	.LBB11_46
.LBB11_32:
	bstrpick.d	$a0, $a0, 31, 1
	addi.w	$fp, $a0, 1
	slli.d	$a0, $fp, 3
.Ltmp30:                                # EH_LABEL
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
.Ltmp31:                                # EH_LABEL
# %bb.33:                               # %_ZN20btAlignedObjectArrayIP10btDbvtNodeE8allocateEi.exit.i132
	move	$s3, $a0
	ld.w	$a1, $sp, 92
	ld.d	$a0, $sp, 104
	blez	$a1, .LBB11_120
# %bb.34:                               # %.lr.ph.i.i137
	ori	$a3, $zero, 4
	move	$a2, $zero
	bltu	$a1, $a3, .LBB11_39
# %bb.35:                               # %.lr.ph.i.i137
	sub.d	$a3, $s3, $a0
	ori	$a4, $zero, 32
	bltu	$a3, $a4, .LBB11_39
# %bb.36:                               # %vector.ph
	bstrpick.d	$a2, $a1, 30, 2
	slli.d	$a2, $a2, 2
	addi.d	$a3, $a0, 16
	addi.d	$a4, $s3, 16
	move	$a5, $a2
	.p2align	4, , 16
.LBB11_37:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a3, -16
	vld	$vr1, $a3, 0
	vst	$vr0, $a4, -16
	vst	$vr1, $a4, 0
	addi.d	$a5, $a5, -4
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB11_37
# %bb.38:                               # %middle.block
	beq	$a2, $a1, .LBB11_41
.LBB11_39:                              # %scalar.ph.preheader
	sub.d	$a1, $a1, $a2
	alsl.d	$a3, $a2, $a0, 3
	alsl.d	$a2, $a2, $s3, 3
	.p2align	4, , 16
.LBB11_40:                              # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a3, 0
	st.d	$a4, $a2, 0
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 8
	addi.d	$a2, $a2, 8
	bnez	$a1, .LBB11_40
.LBB11_41:                              # %_ZNK20btAlignedObjectArrayIP10btDbvtNodeE4copyEiiPS1_.exit.thread.i142
	ld.bu	$a1, $sp, 112
	bnez	$a1, .LBB11_122
	b	.LBB11_123
.LBB11_42:
	move	$a0, $zero
	alsl.d	$a1, $s7, $s2, 3
	ld.w	$fp, $a1, 4
	blt	$a0, $fp, .LBB11_47
	b	.LBB11_63
.LBB11_43:                              # %_ZNK20btAlignedObjectArrayIP10btDbvtNodeE4copyEiiPS1_.exit.i
	beqz	$a0, .LBB11_46
# %bb.44:                               # %_ZNK20btAlignedObjectArrayIP10btDbvtNodeE4copyEiiPS1_.exit.i
	ld.b	$a1, $sp, 112
	andi	$a1, $a1, 1
	beqz	$a1, .LBB11_46
.LBB11_45:
.Ltmp45:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp46:                                # EH_LABEL
.LBB11_46:                              # %_ZN20btAlignedObjectArrayIP10btDbvtNodeE10deallocateEv.exit.i
	ori	$a1, $zero, 1
	ld.w	$a0, $sp, 128
	st.b	$a1, $sp, 112
	st.d	$s3, $sp, 104
	st.w	$fp, $sp, 96
	alsl.d	$a1, $s7, $s2, 3
	ld.w	$fp, $a1, 4
	bge	$a0, $fp, .LBB11_63
.LBB11_47:
	beqz	$fp, .LBB11_58
# %bb.48:
	slli.d	$a0, $fp, 3
.Ltmp47:                                # EH_LABEL
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
.Ltmp48:                                # EH_LABEL
# %bb.49:
	move	$s3, $a0
	ld.w	$a1, $sp, 124
	ld.d	$a0, $sp, 136
	blez	$a1, .LBB11_59
.LBB11_50:                              # %.lr.ph.i.i110
	ori	$a3, $zero, 4
	move	$a2, $zero
	bltu	$a1, $a3, .LBB11_55
# %bb.51:                               # %.lr.ph.i.i110
	sub.d	$a3, $s3, $a0
	ori	$a4, $zero, 32
	bltu	$a3, $a4, .LBB11_55
# %bb.52:                               # %vector.ph351
	bstrpick.d	$a2, $a1, 30, 2
	slli.d	$a2, $a2, 2
	addi.d	$a3, $a0, 16
	addi.d	$a4, $s3, 16
	move	$a5, $a2
	.p2align	4, , 16
.LBB11_53:                              # %vector.body354
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a3, -16
	vld	$vr1, $a3, 0
	vst	$vr0, $a4, -16
	vst	$vr1, $a4, 0
	addi.d	$a5, $a5, -4
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB11_53
# %bb.54:                               # %middle.block359
	beq	$a2, $a1, .LBB11_57
.LBB11_55:                              # %scalar.ph349.preheader
	sub.d	$a1, $a1, $a2
	alsl.d	$a3, $a2, $a0, 3
	alsl.d	$a2, $a2, $s3, 3
	.p2align	4, , 16
.LBB11_56:                              # %scalar.ph349
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a3, 0
	st.d	$a4, $a2, 0
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 8
	addi.d	$a2, $a2, 8
	bnez	$a1, .LBB11_56
.LBB11_57:                              # %_ZNK20btAlignedObjectArrayIP10btDbvtNodeE4copyEiiPS1_.exit.thread.i115
	ld.bu	$a1, $sp, 144
	bnez	$a1, .LBB11_61
	b	.LBB11_62
.LBB11_58:
	move	$s3, $zero
	ld.w	$a1, $sp, 124
	ld.d	$a0, $sp, 136
	bgtz	$a1, .LBB11_50
.LBB11_59:                              # %_ZNK20btAlignedObjectArrayIP10btDbvtNodeE4copyEiiPS1_.exit.i107
	beqz	$a0, .LBB11_62
# %bb.60:                               # %_ZNK20btAlignedObjectArrayIP10btDbvtNodeE4copyEiiPS1_.exit.i107
	ld.b	$a1, $sp, 144
	andi	$a1, $a1, 1
	beqz	$a1, .LBB11_62
.LBB11_61:
.Ltmp49:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp50:                                # EH_LABEL
.LBB11_62:                              # %_ZN20btAlignedObjectArrayIP10btDbvtNodeE10deallocateEv.exit.i109
	ori	$a0, $zero, 1
	st.b	$a0, $sp, 144
	st.d	$s3, $sp, 136
	st.w	$fp, $sp, 128
.LBB11_63:                              # %_ZN20btAlignedObjectArrayIP10btDbvtNodeE7reserveEi.exit118
	ld.w	$fp, $sp, 92
	bltz	$fp, .LBB11_66
# %bb.64:                               # %_ZN20btAlignedObjectArrayIP10btDbvtNodeE6resizeEiRKS1_.exit.i
	ld.w	$fp, $sp, 124
	st.w	$zero, $sp, 92
	bltz	$fp, .LBB11_72
.LBB11_65:                              # %_ZN20btAlignedObjectArrayIP10btDbvtNodeE6resizeEiRKS1_.exit37.i
	ld.w	$s8, $s1, 4
	st.w	$zero, $sp, 124
	bgtz	$s8, .LBB11_78
	b	.LBB11_163
.LBB11_66:
	ld.w	$a1, $sp, 96
	ld.d	$a0, $sp, 104
	bgez	$a1, .LBB11_71
# %bb.67:                               # %_ZNK20btAlignedObjectArrayIP10btDbvtNodeE4copyEiiPS1_.exit.i.i.i
	beqz	$a0, .LBB11_70
# %bb.68:                               # %_ZNK20btAlignedObjectArrayIP10btDbvtNodeE4copyEiiPS1_.exit.i.i.i
	ld.b	$a1, $sp, 112
	andi	$a1, $a1, 1
	beqz	$a1, .LBB11_70
# %bb.69:
.Ltmp51:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp52:                                # EH_LABEL
.LBB11_70:                              # %_ZN20btAlignedObjectArrayIP10btDbvtNodeE10deallocateEv.exit.i.i.i
	move	$a0, $zero
	ori	$a1, $zero, 1
	st.b	$a1, $sp, 112
	st.d	$zero, $sp, 104
	st.w	$zero, $sp, 96
.LBB11_71:                              # %.lr.ph.i.i124
	slli.d	$a1, $fp, 3
	alsl.d	$a0, $fp, $a0, 3
	sub.d	$a2, $zero, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.w	$fp, $sp, 124
	st.w	$zero, $sp, 92
	bgez	$fp, .LBB11_65
.LBB11_72:
	ld.w	$a1, $sp, 128
	ld.d	$a0, $sp, 136
	bgez	$a1, .LBB11_77
# %bb.73:                               # %_ZNK20btAlignedObjectArrayIP10btDbvtNodeE4copyEiiPS1_.exit.i.i24.i
	beqz	$a0, .LBB11_76
# %bb.74:                               # %_ZNK20btAlignedObjectArrayIP10btDbvtNodeE4copyEiiPS1_.exit.i.i24.i
	ld.b	$a1, $sp, 144
	andi	$a1, $a1, 1
	beqz	$a1, .LBB11_76
# %bb.75:
.Ltmp53:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp54:                                # EH_LABEL
.LBB11_76:                              # %_ZN20btAlignedObjectArrayIP10btDbvtNodeE10deallocateEv.exit.i.i27.i
	move	$a0, $zero
	ori	$a1, $zero, 1
	st.b	$a1, $sp, 144
	st.d	$zero, $sp, 136
	st.w	$zero, $sp, 128
.LBB11_77:                              # %.lr.ph.i19.i
	slli.d	$a1, $fp, 3
	alsl.d	$a0, $fp, $a0, 3
	sub.d	$a2, $zero, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.w	$s8, $s1, 4
	st.w	$zero, $sp, 124
	blez	$s8, .LBB11_163
.LBB11_78:                              # %.lr.ph.i119
	move	$s2, $zero
	alsl.d	$s6, $s7, $s6, 4
	ori	$s7, $zero, 1
	ori	$fp, $zero, 4
	b	.LBB11_83
.LBB11_79:                              #   in Loop: Header=BB11_83 Depth=1
.Ltmp58:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp59:                                # EH_LABEL
# %bb.80:                               # %.noexc130
                                        #   in Loop: Header=BB11_83 Depth=1
	ld.w	$a1, $sp, 124
.LBB11_81:                              # %_ZN20btAlignedObjectArrayIP10btDbvtNodeE10deallocateEv.exit.i.i56.i
                                        #   in Loop: Header=BB11_83 Depth=1
	ld.d	$a0, $s5, 0
	st.b	$s7, $sp, 144
	st.d	$s3, $sp, 136
	st.w	$s4, $sp, 128
.LBB11_82:                              # %_ZN20btAlignedObjectArrayIP10btDbvtNodeE9push_backERKS1_.exit68.i
                                        #   in Loop: Header=BB11_83 Depth=1
	ld.d	$a2, $sp, 136
	slli.d	$a3, $a1, 3
	stx.d	$a0, $a2, $a3
	addi.d	$a0, $a1, 1
	st.w	$a0, $sp, 124
	addi.d	$s2, $s2, 1
	beq	$s2, $s8, .LBB11_163
.LBB11_83:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_105 Depth 2
                                        #     Child Loop BB11_108 Depth 2
                                        #     Child Loop BB11_92 Depth 2
                                        #     Child Loop BB11_95 Depth 2
	ld.d	$a1, $s1, 16
	slli.d	$a0, $s2, 3
	ldx.d	$a0, $a1, $a0
	fld.s	$fa0, $a0, 0
	fld.s	$fa1, $a0, 16
	fld.s	$fa2, $a0, 4
	fld.s	$fa3, $a0, 20
	fld.s	$fa4, $a0, 8
	fld.s	$fa5, $a0, 24
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa1, $fa2, $fa3
	fadd.s	$fa2, $fa4, $fa5
	vldi	$vr4, -1184
	fmul.s	$fa0, $fa0, $fa4
	fmul.s	$fa1, $fa1, $fa4
	fld.s	$fa3, $s6, 4
	fmul.s	$fa2, $fa2, $fa4
	fld.s	$fa4, $sp, 56                   # 4-byte Folded Reload
	fsub.s	$fa1, $fa1, $fa4
	fld.s	$fa4, $s6, 0
	fmul.s	$fa1, $fa1, $fa3
	fld.s	$fa3, $s6, 8
	fld.s	$fa5, $sp, 60                   # 4-byte Folded Reload
	fsub.s	$fa0, $fa0, $fa5
	fsub.s	$fa2, $fa2, $fs6
	fmadd.s	$fa0, $fa4, $fa0, $fa1
	fmadd.s	$fa0, $fa3, $fa2, $fa0
	fcmp.cule.s	$fcc0, $fs7, $fa0
	alsl.d	$s5, $s2, $a1, 3
	bcnez	$fcc0, .LBB11_97
# %bb.84:                               #   in Loop: Header=BB11_83 Depth=1
	ld.w	$a1, $sp, 92
	ld.w	$a2, $sp, 96
	bne	$a1, $a2, .LBB11_116
# %bb.85:                               #   in Loop: Header=BB11_83 Depth=1
	sltui	$a2, $a1, 1
	slli.w	$a3, $a1, 1
	masknez	$a3, $a3, $a2
	maskeqz	$a2, $s7, $a2
	or	$s4, $a2, $a3
	bge	$a1, $s4, .LBB11_116
# %bb.86:                               #   in Loop: Header=BB11_83 Depth=1
	beqz	$s4, .LBB11_110
# %bb.87:                               #   in Loop: Header=BB11_83 Depth=1
	slli.d	$a0, $s4, 3
.Ltmp60:                                # EH_LABEL
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
.Ltmp61:                                # EH_LABEL
# %bb.88:                               # %.noexc127
                                        #   in Loop: Header=BB11_83 Depth=1
	move	$s3, $a0
	ld.w	$a1, $sp, 92
	ld.d	$a0, $sp, 104
	blez	$a1, .LBB11_111
.LBB11_89:                              # %.lr.ph.i.i.i41.i
                                        #   in Loop: Header=BB11_83 Depth=1
	move	$a2, $zero
	bltu	$a1, $fp, .LBB11_94
# %bb.90:                               # %.lr.ph.i.i.i41.i
                                        #   in Loop: Header=BB11_83 Depth=1
	sub.d	$a3, $s3, $a0
	ori	$a4, $zero, 32
	bltu	$a3, $a4, .LBB11_94
# %bb.91:                               # %vector.ph367
                                        #   in Loop: Header=BB11_83 Depth=1
	bstrpick.d	$a2, $a1, 30, 2
	slli.d	$a2, $a2, 2
	addi.d	$a3, $a0, 16
	addi.d	$a4, $s3, 16
	move	$a5, $a2
	.p2align	4, , 16
.LBB11_92:                              # %vector.body370
                                        #   Parent Loop BB11_83 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a3, -16
	vld	$vr1, $a3, 0
	vst	$vr0, $a4, -16
	vst	$vr1, $a4, 0
	addi.d	$a5, $a5, -4
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB11_92
# %bb.93:                               # %middle.block375
                                        #   in Loop: Header=BB11_83 Depth=1
	beq	$a2, $a1, .LBB11_96
.LBB11_94:                              # %scalar.ph365.preheader
                                        #   in Loop: Header=BB11_83 Depth=1
	sub.d	$a3, $a1, $a2
	alsl.d	$a4, $a2, $a0, 3
	alsl.d	$a2, $a2, $s3, 3
	.p2align	4, , 16
.LBB11_95:                              # %scalar.ph365
                                        #   Parent Loop BB11_83 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a5, $a4, 0
	st.d	$a5, $a2, 0
	addi.d	$a3, $a3, -1
	addi.d	$a4, $a4, 8
	addi.d	$a2, $a2, 8
	bnez	$a3, .LBB11_95
.LBB11_96:                              # %_ZNK20btAlignedObjectArrayIP10btDbvtNodeE4copyEiiPS1_.exit.thread.i.i46.i
                                        #   in Loop: Header=BB11_83 Depth=1
	ld.bu	$a2, $sp, 112
	bnez	$a2, .LBB11_113
	b	.LBB11_115
	.p2align	4, , 16
.LBB11_97:                              #   in Loop: Header=BB11_83 Depth=1
	ld.w	$a1, $sp, 124
	ld.w	$a2, $sp, 128
	bne	$a1, $a2, .LBB11_82
# %bb.98:                               #   in Loop: Header=BB11_83 Depth=1
	sltui	$a2, $a1, 1
	slli.w	$a3, $a1, 1
	masknez	$a3, $a3, $a2
	maskeqz	$a2, $s7, $a2
	or	$s4, $a2, $a3
	bge	$a1, $s4, .LBB11_82
# %bb.99:                               #   in Loop: Header=BB11_83 Depth=1
	beqz	$s4, .LBB11_117
# %bb.100:                              #   in Loop: Header=BB11_83 Depth=1
	slli.d	$a0, $s4, 3
.Ltmp56:                                # EH_LABEL
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
.Ltmp57:                                # EH_LABEL
# %bb.101:                              # %.noexc129
                                        #   in Loop: Header=BB11_83 Depth=1
	move	$s3, $a0
	ld.w	$a1, $sp, 124
	ld.d	$a0, $sp, 136
	blez	$a1, .LBB11_118
.LBB11_102:                             # %.lr.ph.i.i.i59.i
                                        #   in Loop: Header=BB11_83 Depth=1
	move	$a2, $zero
	bltu	$a1, $fp, .LBB11_107
# %bb.103:                              # %.lr.ph.i.i.i59.i
                                        #   in Loop: Header=BB11_83 Depth=1
	sub.d	$a3, $s3, $a0
	ori	$a4, $zero, 32
	bltu	$a3, $a4, .LBB11_107
# %bb.104:                              # %vector.ph383
                                        #   in Loop: Header=BB11_83 Depth=1
	bstrpick.d	$a2, $a1, 30, 2
	slli.d	$a2, $a2, 2
	addi.d	$a3, $a0, 16
	addi.d	$a4, $s3, 16
	move	$a5, $a2
	.p2align	4, , 16
.LBB11_105:                             # %vector.body386
                                        #   Parent Loop BB11_83 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a3, -16
	vld	$vr1, $a3, 0
	vst	$vr0, $a4, -16
	vst	$vr1, $a4, 0
	addi.d	$a5, $a5, -4
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB11_105
# %bb.106:                              # %middle.block391
                                        #   in Loop: Header=BB11_83 Depth=1
	beq	$a2, $a1, .LBB11_109
.LBB11_107:                             # %scalar.ph381.preheader
                                        #   in Loop: Header=BB11_83 Depth=1
	sub.d	$a3, $a1, $a2
	alsl.d	$a4, $a2, $a0, 3
	alsl.d	$a2, $a2, $s3, 3
	.p2align	4, , 16
.LBB11_108:                             # %scalar.ph381
                                        #   Parent Loop BB11_83 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a5, $a4, 0
	st.d	$a5, $a2, 0
	addi.d	$a3, $a3, -1
	addi.d	$a4, $a4, 8
	addi.d	$a2, $a2, 8
	bnez	$a3, .LBB11_108
.LBB11_109:                             # %_ZNK20btAlignedObjectArrayIP10btDbvtNodeE4copyEiiPS1_.exit.thread.i.i64.i
                                        #   in Loop: Header=BB11_83 Depth=1
	ld.bu	$a2, $sp, 144
	bnez	$a2, .LBB11_79
	b	.LBB11_81
.LBB11_110:                             #   in Loop: Header=BB11_83 Depth=1
	move	$s3, $zero
	ld.d	$a0, $sp, 104
	bgtz	$a1, .LBB11_89
.LBB11_111:                             # %_ZNK20btAlignedObjectArrayIP10btDbvtNodeE4copyEiiPS1_.exit.i.i38.i
                                        #   in Loop: Header=BB11_83 Depth=1
	beqz	$a0, .LBB11_115
# %bb.112:                              # %_ZNK20btAlignedObjectArrayIP10btDbvtNodeE4copyEiiPS1_.exit.i.i38.i
                                        #   in Loop: Header=BB11_83 Depth=1
	ld.b	$a2, $sp, 112
	andi	$a2, $a2, 1
	beqz	$a2, .LBB11_115
.LBB11_113:                             #   in Loop: Header=BB11_83 Depth=1
.Ltmp62:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp63:                                # EH_LABEL
# %bb.114:                              # %.noexc128
                                        #   in Loop: Header=BB11_83 Depth=1
	ld.w	$a1, $sp, 92
.LBB11_115:                             # %_ZN20btAlignedObjectArrayIP10btDbvtNodeE10deallocateEv.exit.i.i40.i
                                        #   in Loop: Header=BB11_83 Depth=1
	ld.d	$a0, $s5, 0
	st.b	$s7, $sp, 112
	st.d	$s3, $sp, 104
	st.w	$s4, $sp, 96
.LBB11_116:                             # %_ZN20btAlignedObjectArrayIP10btDbvtNodeE9push_backERKS1_.exit.i
                                        #   in Loop: Header=BB11_83 Depth=1
	ld.d	$a2, $sp, 104
	slli.d	$a3, $a1, 3
	stx.d	$a0, $a2, $a3
	addi.d	$a0, $a1, 1
	st.w	$a0, $sp, 92
	addi.d	$s2, $s2, 1
	bne	$s2, $s8, .LBB11_83
	b	.LBB11_163
.LBB11_117:                             #   in Loop: Header=BB11_83 Depth=1
	move	$s3, $zero
	ld.d	$a0, $sp, 136
	bgtz	$a1, .LBB11_102
.LBB11_118:                             # %_ZNK20btAlignedObjectArrayIP10btDbvtNodeE4copyEiiPS1_.exit.i.i53.i
                                        #   in Loop: Header=BB11_83 Depth=1
	beqz	$a0, .LBB11_81
# %bb.119:                              # %_ZNK20btAlignedObjectArrayIP10btDbvtNodeE4copyEiiPS1_.exit.i.i53.i
                                        #   in Loop: Header=BB11_83 Depth=1
	ld.b	$a2, $sp, 144
	andi	$a2, $a2, 1
	bnez	$a2, .LBB11_79
	b	.LBB11_81
.LBB11_120:                             # %_ZNK20btAlignedObjectArrayIP10btDbvtNodeE4copyEiiPS1_.exit.i134
	beqz	$a0, .LBB11_123
# %bb.121:                              # %_ZNK20btAlignedObjectArrayIP10btDbvtNodeE4copyEiiPS1_.exit.i134
	ld.b	$a1, $sp, 112
	andi	$a1, $a1, 1
	beqz	$a1, .LBB11_123
.LBB11_122:
.Ltmp32:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp33:                                # EH_LABEL
.LBB11_123:                             # %_ZN20btAlignedObjectArrayIP10btDbvtNodeE7reserveEi.exit145
	ori	$a1, $zero, 1
	ld.wu	$a0, $s1, 4
	st.b	$a1, $sp, 112
	st.d	$s3, $sp, 104
	ld.w	$a1, $sp, 128
	srli.d	$a2, $a0, 31
	add.w	$a2, $a0, $a2
	srai.d	$s2, $a2, 1
	st.w	$fp, $sp, 96
	bge	$a1, $s2, .LBB11_141
# %bb.124:
	addi.w	$a0, $a0, 1
	ori	$a1, $zero, 3
	bgeu	$a0, $a1, .LBB11_126
# %bb.125:
	move	$s3, $zero
	b	.LBB11_128
.LBB11_126:
	slli.d	$a0, $s2, 3
.Ltmp34:                                # EH_LABEL
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
.Ltmp35:                                # EH_LABEL
# %bb.127:
	move	$s3, $a0
.LBB11_128:                             # %_ZN20btAlignedObjectArrayIP10btDbvtNodeE8allocateEi.exit.i147
	ld.w	$a1, $sp, 124
	ld.d	$a0, $sp, 136
	blez	$a1, .LBB11_137
# %bb.129:                              # %.lr.ph.i.i152
	ori	$a3, $zero, 4
	move	$a2, $zero
	bltu	$a1, $a3, .LBB11_134
# %bb.130:                              # %.lr.ph.i.i152
	sub.d	$a3, $s3, $a0
	ori	$a4, $zero, 32
	bltu	$a3, $a4, .LBB11_134
# %bb.131:                              # %vector.ph303
	bstrpick.d	$a2, $a1, 30, 2
	slli.d	$a2, $a2, 2
	addi.d	$a3, $a0, 16
	addi.d	$a4, $s3, 16
	move	$a5, $a2
	.p2align	4, , 16
.LBB11_132:                             # %vector.body306
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a3, -16
	vld	$vr1, $a3, 0
	vst	$vr0, $a4, -16
	vst	$vr1, $a4, 0
	addi.d	$a5, $a5, -4
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB11_132
# %bb.133:                              # %middle.block311
	beq	$a2, $a1, .LBB11_136
.LBB11_134:                             # %scalar.ph301.preheader
	sub.d	$a1, $a1, $a2
	alsl.d	$a3, $a2, $a0, 3
	alsl.d	$a2, $a2, $s3, 3
	.p2align	4, , 16
.LBB11_135:                             # %scalar.ph301
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a3, 0
	st.d	$a4, $a2, 0
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 8
	addi.d	$a2, $a2, 8
	bnez	$a1, .LBB11_135
.LBB11_136:                             # %_ZNK20btAlignedObjectArrayIP10btDbvtNodeE4copyEiiPS1_.exit.thread.i157
	ld.bu	$a1, $sp, 144
	bnez	$a1, .LBB11_139
	b	.LBB11_140
.LBB11_137:                             # %_ZNK20btAlignedObjectArrayIP10btDbvtNodeE4copyEiiPS1_.exit.i149
	beqz	$a0, .LBB11_140
# %bb.138:                              # %_ZNK20btAlignedObjectArrayIP10btDbvtNodeE4copyEiiPS1_.exit.i149
	ld.b	$a1, $sp, 144
	andi	$a1, $a1, 1
	beqz	$a1, .LBB11_140
.LBB11_139:
.Ltmp36:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp37:                                # EH_LABEL
.LBB11_140:                             # %_ZN20btAlignedObjectArrayIP10btDbvtNodeE10deallocateEv.exit.i151
	ori	$a1, $zero, 1
	ld.w	$a0, $s1, 4
	st.b	$a1, $sp, 144
	st.d	$s3, $sp, 136
	st.w	$s2, $sp, 128
.LBB11_141:                             # %_ZN20btAlignedObjectArrayIP10btDbvtNodeE7reserveEi.exit160
	addi.w	$s2, $a0, 0
	blez	$s2, .LBB11_163
# %bb.142:                              # %.lr.ph206.preheader
	move	$s4, $zero
	addi.d	$s5, $sp, 88
	ori	$s6, $zero, 1
	b	.LBB11_147
.LBB11_143:                             #   in Loop: Header=BB11_147 Depth=1
.Ltmp40:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp41:                                # EH_LABEL
# %bb.144:                              # %.noexc164
                                        #   in Loop: Header=BB11_147 Depth=1
	ld.w	$a1, $s8, 4
.LBB11_145:                             # %_ZN20btAlignedObjectArrayIP10btDbvtNodeE10deallocateEv.exit.i.i
                                        #   in Loop: Header=BB11_147 Depth=1
	st.b	$s6, $s8, 24
	st.d	$s3, $s8, 16
	st.w	$fp, $s8, 8
.LBB11_146:                             #   in Loop: Header=BB11_147 Depth=1
	alsl.d	$a0, $s4, $s7, 3
	ld.d	$a2, $s8, 16
	ld.d	$a0, $a0, 0
	slli.d	$a3, $a1, 3
	stx.d	$a0, $a2, $a3
	addi.d	$a0, $a1, 1
	addi.d	$s4, $s4, 1
	st.w	$a0, $s8, 4
	beq	$s4, $s2, .LBB11_163
.LBB11_147:                             # %.lr.ph206
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_155 Depth 2
                                        #     Child Loop BB11_158 Depth 2
	andi	$a0, $s4, 1
	slli.d	$a0, $a0, 5
	add.d	$s8, $s5, $a0
	ld.w	$a1, $s8, 4
	ld.w	$a0, $s8, 8
	ld.d	$s7, $s1, 16
	bne	$a1, $a0, .LBB11_146
# %bb.148:                              #   in Loop: Header=BB11_147 Depth=1
	sltui	$a0, $a1, 1
	slli.w	$a2, $a1, 1
	masknez	$a2, $a2, $a0
	maskeqz	$a0, $s6, $a0
	or	$fp, $a0, $a2
	bge	$a1, $fp, .LBB11_146
# %bb.149:                              #   in Loop: Header=BB11_147 Depth=1
	beqz	$fp, .LBB11_160
# %bb.150:                              #   in Loop: Header=BB11_147 Depth=1
	slli.d	$a0, $fp, 3
.Ltmp38:                                # EH_LABEL
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
.Ltmp39:                                # EH_LABEL
# %bb.151:                              # %.noexc163
                                        #   in Loop: Header=BB11_147 Depth=1
	move	$s3, $a0
	ld.w	$a1, $s8, 4
	ld.d	$a0, $s8, 16
	blez	$a1, .LBB11_161
.LBB11_152:                             # %.lr.ph.i.i.i
                                        #   in Loop: Header=BB11_147 Depth=1
	move	$a2, $zero
	ori	$a3, $zero, 4
	bltu	$a1, $a3, .LBB11_157
# %bb.153:                              # %.lr.ph.i.i.i
                                        #   in Loop: Header=BB11_147 Depth=1
	sub.d	$a3, $s3, $a0
	ori	$a4, $zero, 32
	bltu	$a3, $a4, .LBB11_157
# %bb.154:                              # %vector.ph319
                                        #   in Loop: Header=BB11_147 Depth=1
	bstrpick.d	$a2, $a1, 30, 2
	slli.d	$a2, $a2, 2
	addi.d	$a3, $a0, 16
	addi.d	$a4, $s3, 16
	move	$a5, $a2
	.p2align	4, , 16
.LBB11_155:                             # %vector.body322
                                        #   Parent Loop BB11_147 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a3, -16
	vld	$vr1, $a3, 0
	vst	$vr0, $a4, -16
	vst	$vr1, $a4, 0
	addi.d	$a5, $a5, -4
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB11_155
# %bb.156:                              # %middle.block327
                                        #   in Loop: Header=BB11_147 Depth=1
	beq	$a2, $a1, .LBB11_159
.LBB11_157:                             # %scalar.ph317.preheader
                                        #   in Loop: Header=BB11_147 Depth=1
	sub.d	$a3, $a1, $a2
	alsl.d	$a4, $a2, $a0, 3
	alsl.d	$a2, $a2, $s3, 3
	.p2align	4, , 16
.LBB11_158:                             # %scalar.ph317
                                        #   Parent Loop BB11_147 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a5, $a4, 0
	st.d	$a5, $a2, 0
	addi.d	$a3, $a3, -1
	addi.d	$a4, $a4, 8
	addi.d	$a2, $a2, 8
	bnez	$a3, .LBB11_158
.LBB11_159:                             # %_ZNK20btAlignedObjectArrayIP10btDbvtNodeE4copyEiiPS1_.exit.thread.i.i
                                        #   in Loop: Header=BB11_147 Depth=1
	ld.bu	$a2, $s8, 24
	bnez	$a2, .LBB11_143
	b	.LBB11_145
.LBB11_160:                             #   in Loop: Header=BB11_147 Depth=1
	move	$s3, $zero
	ld.d	$a0, $s8, 16
	bgtz	$a1, .LBB11_152
.LBB11_161:                             # %_ZNK20btAlignedObjectArrayIP10btDbvtNodeE4copyEiiPS1_.exit.i.i
                                        #   in Loop: Header=BB11_147 Depth=1
	beqz	$a0, .LBB11_145
# %bb.162:                              # %_ZNK20btAlignedObjectArrayIP10btDbvtNodeE4copyEiiPS1_.exit.i.i
                                        #   in Loop: Header=BB11_147 Depth=1
	ld.b	$a2, $s8, 24
	andi	$a2, $a2, 1
	bnez	$a2, .LBB11_143
	b	.LBB11_145
.LBB11_163:                             # %_ZL5splitRK20btAlignedObjectArrayIP10btDbvtNodeERS2_S5_RK9btVector3S8_.exit
	ld.d	$s1, $s0, 8
	beqz	$s1, .LBB11_165
# %bb.164:
	st.d	$zero, $s0, 8
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	b	.LBB11_167
.LBB11_165:
.Ltmp65:                                # EH_LABEL
	ori	$a0, $zero, 56
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
.Ltmp66:                                # EH_LABEL
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
# %bb.166:                              # %.noexc167
	move	$s1, $a0
	st.d	$zero, $a0, 48
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $a0, 32
	vst	$vr0, $a0, 16
	vst	$vr0, $a0, 0
.LBB11_167:
	st.d	$zero, $s1, 48
	vst	$vr0, $s1, 32
	fst.s	$fs0, $s1, 0
	fst.s	$fs1, $s1, 4
	fst.s	$fs2, $s1, 8
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	st.w	$a0, $s1, 12
	fst.s	$fs4, $s1, 16
	fst.s	$fs5, $s1, 20
	fst.s	$fs3, $s1, 24
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	st.w	$a0, $s1, 28
.Ltmp67:                                # EH_LABEL
	addi.d	$a1, $sp, 88
	move	$a0, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(_ZL7topdownP6btDbvtR20btAlignedObjectArrayIP10btDbvtNodeEi)
	jirl	$ra, $ra, 0
.Ltmp68:                                # EH_LABEL
# %bb.168:
	st.d	$a0, $s1, 40
.Ltmp69:                                # EH_LABEL
	move	$a0, $s0
	addi.d	$a1, $sp, 120
	move	$a2, $fp
	pcaddu18i	$ra, %call36(_ZL7topdownP6btDbvtR20btAlignedObjectArrayIP10btDbvtNodeEi)
	jirl	$ra, $ra, 0
.Ltmp70:                                # EH_LABEL
# %bb.169:
	ld.d	$a1, $s1, 40
	st.d	$a0, $s1, 48
	st.d	$s1, $a1, 32
	ld.d	$a1, $s1, 48
	ld.d	$a0, $sp, 136
	st.d	$s1, $a1, 32
	beqz	$a0, .LBB11_172
# %bb.170:
	ld.b	$a1, $sp, 144
	andi	$a1, $a1, 1
	beqz	$a1, .LBB11_172
# %bb.171:
.Ltmp77:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp78:                                # EH_LABEL
.LBB11_172:
	ld.d	$a0, $sp, 104
	ori	$a1, $zero, 1
	st.b	$a1, $sp, 144
	st.d	$zero, $sp, 136
	st.d	$zero, $sp, 124
	beqz	$a0, .LBB11_13
# %bb.173:
	ld.b	$a1, $sp, 112
	andi	$a1, $a1, 1
	beqz	$a1, .LBB11_13
# %bb.174:
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
	b	.LBB11_13
.LBB11_175:
	pcalau12i	$a0, %pc_hi20(_ZGVZL7topdownP6btDbvtR20btAlignedObjectArrayIP10btDbvtNodeEiE4axis)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZL7topdownP6btDbvtR20btAlignedObjectArrayIP10btDbvtNodeEiE4axis)
	move	$fp, $a2
	pcaddu18i	$ra, %call36(__cxa_guard_acquire)
	jirl	$ra, $ra, 0
	move	$a2, $fp
	addi.w	$a0, $a0, 0
	beqz	$a0, .LBB11_1
# %bb.176:
	pcalau12i	$a0, %pc_hi20(_ZZL7topdownP6btDbvtR20btAlignedObjectArrayIP10btDbvtNodeEiE4axis)
	addi.d	$a0, $a0, %pc_lo12(_ZZL7topdownP6btDbvtR20btAlignedObjectArrayIP10btDbvtNodeEiE4axis)
	lu12i.w	$a1, 260096
	st.w	$a1, $a0, 0
	vrepli.b	$vr0, 0
	vst	$vr0, $a0, 4
	st.w	$a1, $a0, 20
	vst	$vr0, $a0, 24
	st.d	$a1, $a0, 40
	pcalau12i	$a0, %pc_hi20(_ZGVZL7topdownP6btDbvtR20btAlignedObjectArrayIP10btDbvtNodeEiE4axis)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZL7topdownP6btDbvtR20btAlignedObjectArrayIP10btDbvtNodeEiE4axis)
	pcaddu18i	$ra, %call36(__cxa_guard_release)
	jirl	$ra, $ra, 0
	move	$a2, $fp
	b	.LBB11_1
.LBB11_177:                             # %.preheader.preheader
.Ltmp79:                                # EH_LABEL
	move	$fp, $a0
.Ltmp80:                                # EH_LABEL
	addi.d	$a0, $sp, 88
	pcaddu18i	$ra, %call36(_ZN20btAlignedObjectArrayIP10btDbvtNodeED2Ev)
	jirl	$ra, $ra, 0
.Ltmp81:                                # EH_LABEL
	b	.LBB11_185
.LBB11_178:                             # %.loopexit
.Ltmp82:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB11_179:
.Ltmp42:                                # EH_LABEL
	b	.LBB11_183
.LBB11_180:                             # %.loopexit.split-lp193
.Ltmp55:                                # EH_LABEL
	b	.LBB11_183
.LBB11_181:
.Ltmp71:                                # EH_LABEL
	b	.LBB11_183
.LBB11_182:                             # %.loopexit192
.Ltmp64:                                # EH_LABEL
.LBB11_183:
	move	$fp, $a0
	addi.d	$a0, $sp, 120
.Ltmp72:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN20btAlignedObjectArrayIP10btDbvtNodeED2Ev)
	jirl	$ra, $ra, 0
.Ltmp73:                                # EH_LABEL
# %bb.184:
.Ltmp74:                                # EH_LABEL
	addi.d	$a0, $sp, 88
	pcaddu18i	$ra, %call36(_ZN20btAlignedObjectArrayIP10btDbvtNodeED2Ev)
	jirl	$ra, $ra, 0
.Ltmp75:                                # EH_LABEL
.LBB11_185:                             # %.loopexit190
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB11_186:                             # %.loopexit.split-lp
.Ltmp76:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end11:
	.size	_ZL7topdownP6btDbvtR20btAlignedObjectArrayIP10btDbvtNodeEi, .Lfunc_end11-_ZL7topdownP6btDbvtR20btAlignedObjectArrayIP10btDbvtNodeEi
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
	.uleb128 .Ltmp43-.Lfunc_begin3          #   Call between .Lfunc_begin3 and .Ltmp43
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp43-.Lfunc_begin3          # >> Call Site 2 <<
	.uleb128 .Ltmp52-.Ltmp43                #   Call between .Ltmp43 and .Ltmp52
	.uleb128 .Ltmp55-.Lfunc_begin3          #     jumps to .Ltmp55
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp52-.Lfunc_begin3          # >> Call Site 3 <<
	.uleb128 .Ltmp53-.Ltmp52                #   Call between .Ltmp52 and .Ltmp53
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp53-.Lfunc_begin3          # >> Call Site 4 <<
	.uleb128 .Ltmp54-.Ltmp53                #   Call between .Ltmp53 and .Ltmp54
	.uleb128 .Ltmp55-.Lfunc_begin3          #     jumps to .Ltmp55
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp54-.Lfunc_begin3          # >> Call Site 5 <<
	.uleb128 .Ltmp58-.Ltmp54                #   Call between .Ltmp54 and .Ltmp58
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp58-.Lfunc_begin3          # >> Call Site 6 <<
	.uleb128 .Ltmp63-.Ltmp58                #   Call between .Ltmp58 and .Ltmp63
	.uleb128 .Ltmp64-.Lfunc_begin3          #     jumps to .Ltmp64
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp32-.Lfunc_begin3          # >> Call Site 7 <<
	.uleb128 .Ltmp37-.Ltmp32                #   Call between .Ltmp32 and .Ltmp37
	.uleb128 .Ltmp55-.Lfunc_begin3          #     jumps to .Ltmp55
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp40-.Lfunc_begin3          # >> Call Site 8 <<
	.uleb128 .Ltmp39-.Ltmp40                #   Call between .Ltmp40 and .Ltmp39
	.uleb128 .Ltmp42-.Lfunc_begin3          #     jumps to .Ltmp42
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp65-.Lfunc_begin3          # >> Call Site 9 <<
	.uleb128 .Ltmp70-.Ltmp65                #   Call between .Ltmp65 and .Ltmp70
	.uleb128 .Ltmp71-.Lfunc_begin3          #     jumps to .Ltmp71
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp77-.Lfunc_begin3          # >> Call Site 10 <<
	.uleb128 .Ltmp78-.Ltmp77                #   Call between .Ltmp77 and .Ltmp78
	.uleb128 .Ltmp79-.Lfunc_begin3          #     jumps to .Ltmp79
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp78-.Lfunc_begin3          # >> Call Site 11 <<
	.uleb128 .Ltmp80-.Ltmp78                #   Call between .Ltmp78 and .Ltmp80
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp80-.Lfunc_begin3          # >> Call Site 12 <<
	.uleb128 .Ltmp81-.Ltmp80                #   Call between .Ltmp80 and .Ltmp81
	.uleb128 .Ltmp82-.Lfunc_begin3          #     jumps to .Ltmp82
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp81-.Lfunc_begin3          # >> Call Site 13 <<
	.uleb128 .Ltmp72-.Ltmp81                #   Call between .Ltmp81 and .Ltmp72
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp72-.Lfunc_begin3          # >> Call Site 14 <<
	.uleb128 .Ltmp75-.Ltmp72                #   Call between .Ltmp72 and .Ltmp75
	.uleb128 .Ltmp76-.Lfunc_begin3          #     jumps to .Ltmp76
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp75-.Lfunc_begin3          # >> Call Site 15 <<
	.uleb128 .Lfunc_end11-.Ltmp75           #   Call between .Ltmp75 and .Lfunc_end11
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
	.text
	.globl	_ZN6btDbvt19optimizeIncrementalEi # -- Begin function _ZN6btDbvt19optimizeIncrementalEi
	.p2align	5
	.type	_ZN6btDbvt19optimizeIncrementalEi,@function
_ZN6btDbvt19optimizeIncrementalEi:      # @_ZN6btDbvt19optimizeIncrementalEi
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -80
	.cfi_def_cfa_offset 80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB12_2
# %bb.1:
	ld.w	$a0, $fp, 20
	slti	$a2, $a1, 0
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$s1, $a0, $a1
	bgtz	$s1, .LBB12_4
.LBB12_2:                               # %.loopexit
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
	.p2align	4, , 16
.LBB12_3:                               # %_ZN6btDbvt6updateEP10btDbvtNodei.exit
                                        #   in Loop: Header=BB12_4 Depth=1
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZL10removeleafP6btDbvtP10btDbvtNode)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	sltui	$a0, $a0, 1
	masknez	$a1, $a1, $a0
	move	$a0, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(_ZL10insertleafP6btDbvtP10btDbvtNodeS2_)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 24
	addi.d	$a0, $a0, 1
	addi.w	$s1, $s1, -1
	st.w	$a0, $fp, 24
	beqz	$s1, .LBB12_2
.LBB12_4:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_8 Depth 2
	ld.d	$s0, $fp, 0
	ld.d	$a0, $s0, 48
	beqz	$a0, .LBB12_3
# %bb.5:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB12_4 Depth=1
	move	$a0, $zero
	addi.d	$a2, $s0, 48
	b	.LBB12_8
	.p2align	4, , 16
.LBB12_6:                               #   in Loop: Header=BB12_8 Depth=2
	move	$a1, $s0
.LBB12_7:                               # %_ZL4sortP10btDbvtNodeRS0_.exit
                                        #   in Loop: Header=BB12_8 Depth=2
	ld.w	$a2, $fp, 24
	srl.w	$a2, $a2, $a0
	andi	$a2, $a2, 1
	alsl.d	$a1, $a2, $a1, 3
	ld.d	$s0, $a1, 40
	ld.d	$a1, $s0, 48
	addi.d	$a0, $a0, 1
	andi	$a0, $a0, 31
	addi.d	$a2, $s0, 48
	beqz	$a1, .LBB12_3
.LBB12_8:                               # %.lr.ph
                                        #   Parent Loop BB12_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $s0, 32
	bgeu	$s0, $a1, .LBB12_6
# %bb.9:                                #   in Loop: Header=BB12_8 Depth=2
	ld.d	$a3, $a1, 48
	xor	$a5, $a3, $s0
	sltu	$a3, $zero, $a5
	alsl.d	$a4, $a3, $a1, 3
	ld.d	$a6, $a1, 32
	ld.d	$a4, $a4, 40
	beqz	$a6, .LBB12_11
# %bb.10:                               #   in Loop: Header=BB12_8 Depth=2
	ld.d	$a7, $a6, 48
	xor	$a7, $a7, $a1
	sltui	$a7, $a7, 1
	alsl.d	$a7, $a7, $a6, 3
	st.d	$s0, $a7, 40
	b	.LBB12_12
.LBB12_11:                              #   in Loop: Header=BB12_8 Depth=2
	st.d	$s0, $fp, 0
.LBB12_12:                              #   in Loop: Header=BB12_8 Depth=2
	st.d	$s0, $a4, 32
	st.d	$s0, $a1, 32
	ld.d	$a7, $s0, 40
	st.d	$a6, $s0, 32
	st.d	$a7, $a1, 40
	ld.d	$a6, $a2, 0
	st.d	$a6, $a1, 48
	ld.d	$a6, $s0, 40
	st.d	$a1, $a6, 32
	ld.d	$a2, $a2, 0
	sltui	$a5, $a5, 1
	addi.d	$a6, $s0, 40
	st.d	$a1, $a2, 32
	slli.d	$a2, $a5, 3
	stx.d	$a1, $a6, $a2
	vld	$vr0, $s0, 16
	slli.d	$a2, $a3, 3
	stx.d	$a4, $a6, $a2
	vld	$vr1, $a1, 16
	vst	$vr0, $a1, 16
	vld	$vr0, $s0, 0
	vld	$vr2, $a1, 0
	vst	$vr0, $a1, 0
	vst	$vr1, $s0, 16
	vst	$vr2, $s0, 0
	b	.LBB12_7
.Lfunc_end12:
	.size	_ZN6btDbvt19optimizeIncrementalEi, .Lfunc_end12-_ZN6btDbvt19optimizeIncrementalEi
	.cfi_endproc
                                        # -- End function
	.globl	_ZN6btDbvt6updateEP10btDbvtNodei # -- Begin function _ZN6btDbvt6updateEP10btDbvtNodei
	.p2align	5
	.type	_ZN6btDbvt6updateEP10btDbvtNodei,@function
_ZN6btDbvt6updateEP10btDbvtNodei:       # @_ZN6btDbvt6updateEP10btDbvtNodei
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
	move	$s1, $a2
	move	$fp, $a1
	move	$s0, $a0
	pcaddu18i	$ra, %call36(_ZL10removeleafP6btDbvtP10btDbvtNode)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB13_5
# %bb.1:
	bltz	$s1, .LBB13_6
# %bb.2:                                # %.preheader
	beqz	$s1, .LBB13_7
	.p2align	4, , 16
.LBB13_3:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	move	$a1, $a0
	ld.d	$a0, $a0, 32
	beqz	$a0, .LBB13_8
# %bb.4:                                #   in Loop: Header=BB13_3 Depth=1
	addi.w	$s1, $s1, -1
	move	$a1, $a0
	bnez	$s1, .LBB13_3
	b	.LBB13_8
.LBB13_5:
	move	$a1, $zero
	b	.LBB13_8
.LBB13_6:
	ld.d	$a1, $s0, 0
	b	.LBB13_8
.LBB13_7:
	move	$a1, $a0
.LBB13_8:                               # %.critedge
	move	$a0, $s0
	move	$a2, $fp
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZL10insertleafP6btDbvtP10btDbvtNodeS2_)
	jr	$t8
.Lfunc_end13:
	.size	_ZN6btDbvt6updateEP10btDbvtNodei, .Lfunc_end13-_ZN6btDbvt6updateEP10btDbvtNodei
	.cfi_endproc
                                        # -- End function
	.globl	_ZN6btDbvt6insertERK12btDbvtAabbMmPv # -- Begin function _ZN6btDbvt6insertERK12btDbvtAabbMmPv
	.p2align	5
	.type	_ZN6btDbvt6insertERK12btDbvtAabbMmPv,@function
_ZN6btDbvt6insertERK12btDbvtAabbMmPv:   # @_ZN6btDbvt6insertERK12btDbvtAabbMmPv
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
	ld.d	$a0, $a0, 8
	move	$s1, $a2
	move	$s0, $a1
	beqz	$a0, .LBB14_2
# %bb.1:
	st.d	$zero, $fp, 8
	b	.LBB14_3
.LBB14_2:
	ori	$a0, $zero, 56
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
	st.d	$zero, $a0, 0
	vrepli.b	$vr0, 0
	vst	$vr0, $a0, 8
	vst	$vr0, $a0, 24
	vst	$vr0, $a0, 40
.LBB14_3:                               # %_ZL10createnodeP6btDbvtP10btDbvtNodeRK12btDbvtAabbMmPv.exit
	st.d	$zero, $a0, 32
	st.d	$s1, $a0, 40
	st.d	$zero, $a0, 48
	vld	$vr0, $s0, 0
	vst	$vr0, $a0, 0
	vld	$vr0, $s0, 16
	vst	$vr0, $a0, 16
	ld.d	$a1, $fp, 0
	move	$s0, $a0
	move	$a0, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(_ZL10insertleafP6btDbvtP10btDbvtNodeS2_)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 20
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 20
	move	$a0, $s0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end14:
	.size	_ZN6btDbvt6insertERK12btDbvtAabbMmPv, .Lfunc_end14-_ZN6btDbvt6insertERK12btDbvtAabbMmPv
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZL10insertleafP6btDbvtP10btDbvtNodeS2_
	.type	_ZL10insertleafP6btDbvtP10btDbvtNodeS2_,@function
_ZL10insertleafP6btDbvtP10btDbvtNodeS2_: # @_ZL10insertleafP6btDbvtP10btDbvtNodeS2_
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -80
	.cfi_def_cfa_offset 80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB15_6
# %bb.1:
	ld.d	$a0, $a1, 48
	beqz	$a0, .LBB15_4
# %bb.2:                                # %.preheader
	fld.s	$fa0, $a2, 0
	fld.s	$fa1, $a2, 16
	fld.s	$fa2, $a2, 4
	fld.s	$fa3, $a2, 20
	fld.s	$fa4, $a2, 8
	fld.s	$fa5, $a2, 24
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa1, $fa2, $fa3
	fadd.s	$fa2, $fa4, $fa5
	.p2align	4, , 16
.LBB15_3:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a1, 40
	fld.s	$fa3, $a3, 0
	fld.s	$fa4, $a3, 16
	fld.s	$fa5, $a3, 4
	fld.s	$fa6, $a3, 20
	fld.s	$fa7, $a3, 8
	fld.s	$ft0, $a3, 24
	fadd.s	$fa3, $fa3, $fa4
	fadd.s	$fa4, $fa5, $fa6
	fadd.s	$fa5, $fa7, $ft0
	fsub.s	$fa3, $fa0, $fa3
	fsub.s	$fa4, $fa1, $fa4
	fsub.s	$fa5, $fa2, $fa5
	fabs.s	$fa3, $fa3
	fabs.s	$fa4, $fa4
	fadd.s	$fa3, $fa3, $fa4
	fabs.s	$fa4, $fa5
	fld.s	$fa5, $a0, 0
	fld.s	$fa6, $a0, 16
	fld.s	$fa7, $a0, 4
	fld.s	$ft0, $a0, 20
	fld.s	$ft1, $a0, 8
	fld.s	$ft2, $a0, 24
	fadd.s	$fa3, $fa3, $fa4
	fadd.s	$fa4, $fa5, $fa6
	fadd.s	$fa5, $fa7, $ft0
	fadd.s	$fa6, $ft1, $ft2
	fsub.s	$fa4, $fa0, $fa4
	fsub.s	$fa5, $fa1, $fa5
	fsub.s	$fa6, $fa2, $fa6
	fabs.s	$fa4, $fa4
	fabs.s	$fa5, $fa5
	fadd.s	$fa4, $fa4, $fa5
	fabs.s	$fa5, $fa6
	fadd.s	$fa4, $fa4, $fa5
	fcmp.cule.s	$fcc0, $fa4, $fa3
	addi.d	$a0, $a1, 40
	movcf2gr	$a1, $fcc0
	slli.d	$a1, $a1, 3
	ldx.d	$a1, $a0, $a1
	ld.d	$a0, $a1, 48
	bnez	$a0, .LBB15_3
.LBB15_4:                               # %.loopexit50
	ld.d	$a0, $fp, 8
	ld.d	$s0, $a1, 32
	vrepli.b	$vr0, 0
	beqz	$a0, .LBB15_7
# %bb.5:
	st.d	$zero, $fp, 8
	b	.LBB15_8
.LBB15_6:
	st.d	$a2, $fp, 0
	st.d	$zero, $a2, 32
	b	.LBB15_18
.LBB15_7:
	ori	$a0, $zero, 56
	move	$s1, $a1
	ori	$a1, $zero, 16
	move	$s2, $a2
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	move	$a1, $s1
	move	$a2, $s2
	st.d	$zero, $a0, 0
	vst	$vr0, $a0, 8
	vst	$vr0, $a0, 24
	vst	$vr0, $a0, 40
.LBB15_8:                               # %_ZL10createnodeP6btDbvtP10btDbvtNodeRK12btDbvtAabbMmS5_Pv.exit
	vst	$vr0, $a0, 40
	fld.s	$fa0, $a2, 0
	fld.s	$fa1, $a1, 0
	fcmp.clt.s	$fcc0, $fa0, $fa1
	fsel	$fa0, $fa1, $fa0, $fcc0
	fst.s	$fa0, $a0, 0
	fld.s	$fa0, $a2, 16
	fld.s	$fa1, $a1, 16
	fcmp.clt.s	$fcc0, $fa1, $fa0
	fsel	$fa0, $fa1, $fa0, $fcc0
	fst.s	$fa0, $a0, 16
	fld.s	$fa0, $a2, 4
	fld.s	$fa1, $a1, 4
	fcmp.clt.s	$fcc0, $fa0, $fa1
	fsel	$fa0, $fa1, $fa0, $fcc0
	fst.s	$fa0, $a0, 4
	fld.s	$fa0, $a2, 20
	fld.s	$fa1, $a1, 20
	fcmp.clt.s	$fcc0, $fa1, $fa0
	fsel	$fa0, $fa1, $fa0, $fcc0
	fst.s	$fa0, $a0, 20
	fld.s	$fa0, $a2, 8
	fld.s	$fa1, $a1, 8
	fcmp.clt.s	$fcc0, $fa0, $fa1
	fsel	$fa0, $fa1, $fa0, $fcc0
	fst.s	$fa0, $a0, 8
	fld.s	$fa0, $a2, 24
	fld.s	$fa1, $a1, 24
	st.d	$s0, $a0, 32
	fcmp.clt.s	$fcc0, $fa1, $fa0
	fsel	$fa0, $fa1, $fa0, $fcc0
	fst.s	$fa0, $a0, 24
	beqz	$s0, .LBB15_17
# %bb.9:
	ld.d	$a3, $a1, 32
	ld.d	$a3, $a3, 48
	xor	$a3, $a3, $a1
	sltui	$a3, $a3, 1
	alsl.d	$a3, $a3, $s0, 3
	st.d	$a0, $a3, 40
	st.d	$a1, $a0, 40
	fld.s	$fa0, $a0, 0
	st.d	$a0, $a1, 32
	st.d	$a2, $a0, 48
	st.d	$a0, $a2, 32
	b	.LBB15_11
	.p2align	4, , 16
.LBB15_10:                              # %_ZNK12btDbvtAabbMm7ContainERKS_.exit.thread
                                        #   in Loop: Header=BB15_11 Depth=1
	ld.d	$a1, $a0, 40
	ld.d	$a2, $a0, 48
	fld.s	$fa0, $a1, 0
	fld.s	$fa1, $a2, 0
	fcmp.clt.s	$fcc0, $fa0, $fa1
	fsel	$fa0, $fa1, $fa0, $fcc0
	fst.s	$fa0, $a0, 0
	fld.s	$fa1, $a1, 16
	fld.s	$fa2, $a2, 16
	fcmp.clt.s	$fcc0, $fa2, $fa1
	fsel	$fa1, $fa2, $fa1, $fcc0
	fst.s	$fa1, $a0, 16
	fld.s	$fa1, $a1, 4
	fld.s	$fa2, $a2, 4
	fcmp.clt.s	$fcc0, $fa1, $fa2
	fsel	$fa1, $fa2, $fa1, $fcc0
	fst.s	$fa1, $a0, 4
	fld.s	$fa1, $a1, 20
	fld.s	$fa2, $a2, 20
	fcmp.clt.s	$fcc0, $fa2, $fa1
	fsel	$fa1, $fa2, $fa1, $fcc0
	fst.s	$fa1, $a0, 20
	fld.s	$fa1, $a1, 8
	fld.s	$fa2, $a2, 8
	fcmp.clt.s	$fcc0, $fa1, $fa2
	fsel	$fa1, $fa2, $fa1, $fcc0
	fst.s	$fa1, $a0, 8
	fld.s	$fa1, $a1, 24
	fld.s	$fa2, $a2, 24
	ld.d	$s0, $a0, 32
	fcmp.clt.s	$fcc0, $fa2, $fa1
	fsel	$fa1, $fa2, $fa1, $fcc0
	fst.s	$fa1, $a0, 24
	beqz	$s0, .LBB15_18
.LBB15_11:                              # =>This Inner Loop Header: Depth=1
	move	$a1, $a0
	move	$a0, $s0
	fld.s	$fa1, $s0, 0
	fcmp.cult.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB15_10
# %bb.12:                               #   in Loop: Header=BB15_11 Depth=1
	fld.s	$fa0, $a0, 4
	fld.s	$fa1, $a1, 4
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB15_10
# %bb.13:                               #   in Loop: Header=BB15_11 Depth=1
	fld.s	$fa0, $a0, 8
	fld.s	$fa1, $a1, 8
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB15_10
# %bb.14:                               #   in Loop: Header=BB15_11 Depth=1
	fld.s	$fa0, $a0, 16
	fld.s	$fa1, $a1, 16
	fcmp.cult.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB15_10
# %bb.15:                               #   in Loop: Header=BB15_11 Depth=1
	fld.s	$fa0, $a0, 20
	fld.s	$fa1, $a1, 20
	fcmp.cult.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB15_10
# %bb.16:                               # %_ZNK12btDbvtAabbMm7ContainERKS_.exit
                                        #   in Loop: Header=BB15_11 Depth=1
	fld.s	$fa0, $a0, 24
	fld.s	$fa1, $a1, 24
	fcmp.cle.s	$fcc0, $fa1, $fa0
	bceqz	$fcc0, .LBB15_10
	b	.LBB15_18
.LBB15_17:
	st.d	$a1, $a0, 40
	st.d	$a0, $a1, 32
	st.d	$a2, $a0, 48
	st.d	$a0, $a2, 32
	st.d	$a0, $fp, 0
.LBB15_18:                              # %.loopexit
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end15:
	.size	_ZL10insertleafP6btDbvtP10btDbvtNodeS2_, .Lfunc_end15-_ZL10insertleafP6btDbvtP10btDbvtNodeS2_
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZL10removeleafP6btDbvtP10btDbvtNode
	.type	_ZL10removeleafP6btDbvtP10btDbvtNode,@function
_ZL10removeleafP6btDbvtP10btDbvtNode:   # @_ZL10removeleafP6btDbvtP10btDbvtNode
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
	beq	$a1, $a0, .LBB16_10
# %bb.1:
	ld.d	$s1, $a1, 32
	ld.d	$a0, $s1, 48
	ld.d	$s0, $s1, 32
	xor	$a0, $a0, $a1
	sltu	$a0, $zero, $a0
	alsl.d	$a0, $a0, $s1, 3
	ld.d	$a1, $a0, 40
	beqz	$s0, .LBB16_11
# %bb.2:
	ld.d	$a0, $s0, 48
	xor	$a0, $a0, $s1
	sltui	$a0, $a0, 1
	alsl.d	$a0, $a0, $s0, 3
	st.d	$a1, $a0, 40
	ld.d	$a0, $fp, 8
	st.d	$s0, $a1, 32
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
	st.d	$s1, $fp, 8
	b	.LBB16_4
	.p2align	4, , 16
.LBB16_3:                               # %_Z8NotEqualRK12btDbvtAabbMmS1_.exit.thread
                                        #   in Loop: Header=BB16_4 Depth=1
	ld.d	$s0, $s0, 32
	beqz	$s0, .LBB16_12
.LBB16_4:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 40
	ld.d	$a1, $s0, 48
	fld.s	$fa0, $a0, 0
	fld.s	$fa1, $a1, 0
	fld.s	$ft2, $s0, 0
	fcmp.clt.s	$fcc0, $fa0, $fa1
	fsel	$ft3, $fa1, $fa0, $fcc0
	fst.s	$ft3, $s0, 0
	fld.s	$fa1, $a0, 16
	fld.s	$fa2, $a1, 16
	fld.s	$fa0, $s0, 16
	fcmp.clt.s	$fcc0, $fa2, $fa1
	fsel	$fa1, $fa2, $fa1, $fcc0
	fst.s	$fa1, $s0, 16
	fld.s	$fa2, $a0, 4
	fld.s	$fa3, $a1, 4
	fld.s	$fa4, $s0, 4
	fcmp.clt.s	$fcc0, $fa2, $fa3
	fsel	$fa5, $fa3, $fa2, $fcc0
	fst.s	$fa5, $s0, 4
	fld.s	$fa3, $a0, 20
	fld.s	$fa6, $a1, 20
	fld.s	$fa2, $s0, 20
	fcmp.clt.s	$fcc0, $fa6, $fa3
	fsel	$fa3, $fa6, $fa3, $fcc0
	fst.s	$fa3, $s0, 20
	fld.s	$fa6, $a0, 8
	fld.s	$fa7, $a1, 8
	fld.s	$ft0, $s0, 8
	fcmp.clt.s	$fcc0, $fa6, $fa7
	fsel	$ft1, $fa7, $fa6, $fcc0
	fst.s	$ft1, $s0, 8
	fld.s	$fa7, $a0, 24
	fld.s	$ft4, $a1, 24
	fld.s	$fa6, $s0, 24
	fcmp.clt.s	$fcc0, $ft4, $fa7
	fsel	$fa7, $ft4, $fa7, $fcc0
	fcmp.cune.s	$fcc0, $ft2, $ft3
	fst.s	$fa7, $s0, 24
	bcnez	$fcc0, .LBB16_3
# %bb.5:                                #   in Loop: Header=BB16_4 Depth=1
	fcmp.cune.s	$fcc0, $fa4, $fa5
	bcnez	$fcc0, .LBB16_3
# %bb.6:                                #   in Loop: Header=BB16_4 Depth=1
	fcmp.cune.s	$fcc0, $ft0, $ft1
	bcnez	$fcc0, .LBB16_3
# %bb.7:                                #   in Loop: Header=BB16_4 Depth=1
	fcmp.cune.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB16_3
# %bb.8:                                #   in Loop: Header=BB16_4 Depth=1
	fcmp.cune.s	$fcc0, $fa2, $fa3
	bcnez	$fcc0, .LBB16_3
# %bb.9:                                #   in Loop: Header=BB16_4 Depth=1
	fcmp.ceq.s	$fcc0, $fa6, $fa7
	bceqz	$fcc0, .LBB16_3
	b	.LBB16_13
.LBB16_10:
	move	$s0, $zero
	st.d	$zero, $fp, 0
	b	.LBB16_13
.LBB16_11:
	ld.d	$a0, $fp, 8
	st.d	$a1, $fp, 0
	st.d	$zero, $a1, 32
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
	ld.d	$s0, $fp, 0
	st.d	$s1, $fp, 8
	b	.LBB16_13
.LBB16_12:
	ld.d	$s0, $fp, 0
.LBB16_13:                              # %.loopexit
	move	$a0, $s0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end16:
	.size	_ZL10removeleafP6btDbvtP10btDbvtNode, .Lfunc_end16-_ZL10removeleafP6btDbvtP10btDbvtNode
	.cfi_endproc
                                        # -- End function
	.globl	_ZN6btDbvt6updateEP10btDbvtNodeR12btDbvtAabbMm # -- Begin function _ZN6btDbvt6updateEP10btDbvtNodeR12btDbvtAabbMm
	.p2align	5
	.type	_ZN6btDbvt6updateEP10btDbvtNodeR12btDbvtAabbMm,@function
_ZN6btDbvt6updateEP10btDbvtNodeR12btDbvtAabbMm: # @_ZN6btDbvt6updateEP10btDbvtNodeR12btDbvtAabbMm
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
	move	$s1, $a2
	move	$fp, $a1
	move	$s0, $a0
	pcaddu18i	$ra, %call36(_ZL10removeleafP6btDbvtP10btDbvtNode)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB17_5
# %bb.1:
	ld.w	$a2, $s0, 16
	bltz	$a2, .LBB17_6
# %bb.2:                                # %.preheader
	beqz	$a2, .LBB17_7
	.p2align	4, , 16
.LBB17_3:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	move	$a1, $a0
	ld.d	$a0, $a0, 32
	beqz	$a0, .LBB17_8
# %bb.4:                                #   in Loop: Header=BB17_3 Depth=1
	addi.w	$a2, $a2, -1
	move	$a1, $a0
	bnez	$a2, .LBB17_3
	b	.LBB17_8
.LBB17_5:
	move	$a1, $zero
	b	.LBB17_8
.LBB17_6:
	ld.d	$a1, $s0, 0
	b	.LBB17_8
.LBB17_7:
	move	$a1, $a0
.LBB17_8:                               # %.critedge
	vld	$vr0, $s1, 16
	vst	$vr0, $fp, 16
	vld	$vr0, $s1, 0
	vst	$vr0, $fp, 0
	move	$a0, $s0
	move	$a2, $fp
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZL10insertleafP6btDbvtP10btDbvtNodeS2_)
	jr	$t8
.Lfunc_end17:
	.size	_ZN6btDbvt6updateEP10btDbvtNodeR12btDbvtAabbMm, .Lfunc_end17-_ZN6btDbvt6updateEP10btDbvtNodeR12btDbvtAabbMm
	.cfi_endproc
                                        # -- End function
	.globl	_ZN6btDbvt6updateEP10btDbvtNodeR12btDbvtAabbMmRK9btVector3f # -- Begin function _ZN6btDbvt6updateEP10btDbvtNodeR12btDbvtAabbMmRK9btVector3f
	.p2align	5
	.type	_ZN6btDbvt6updateEP10btDbvtNodeR12btDbvtAabbMmRK9btVector3f,@function
_ZN6btDbvt6updateEP10btDbvtNodeR12btDbvtAabbMmRK9btVector3f: # @_ZN6btDbvt6updateEP10btDbvtNodeR12btDbvtAabbMmRK9btVector3f
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
	move	$s0, $a2
	move	$fp, $a1
	fld.s	$fa2, $a1, 0
	fld.s	$fa1, $a2, 0
	fcmp.cle.s	$fcc0, $fa2, $fa1
	move	$s1, $a0
	bcnez	$fcc0, .LBB18_2
# %bb.1:                                # %._ZNK12btDbvtAabbMm7ContainERKS_.exit.thread_crit_edge
	fld.s	$fa2, $s0, 4
	b	.LBB18_7
.LBB18_2:
	fld.s	$fa3, $fp, 4
	fld.s	$fa2, $s0, 4
	fcmp.cult.s	$fcc0, $fa2, $fa3
	bcnez	$fcc0, .LBB18_7
# %bb.3:
	fld.s	$fa3, $fp, 8
	fld.s	$fa4, $s0, 8
	fcmp.cult.s	$fcc0, $fa4, $fa3
	bcnez	$fcc0, .LBB18_7
# %bb.4:
	fld.s	$fa3, $fp, 16
	fld.s	$fa4, $s0, 16
	fcmp.cult.s	$fcc0, $fa3, $fa4
	bcnez	$fcc0, .LBB18_7
# %bb.5:
	fld.s	$fa3, $fp, 20
	fld.s	$fa4, $s0, 20
	fcmp.cult.s	$fcc0, $fa3, $fa4
	bcnez	$fcc0, .LBB18_7
# %bb.6:                                # %_ZNK12btDbvtAabbMm7ContainERKS_.exit
	fld.s	$fa3, $fp, 24
	fld.s	$fa4, $s0, 24
	fcmp.cle.s	$fcc0, $fa4, $fa3
	bcnez	$fcc0, .LBB18_20
.LBB18_7:                               # %_ZNK12btDbvtAabbMm7ContainERKS_.exit.thread
	fsub.s	$fa1, $fa1, $fa0
	fld.s	$fa3, $s0, 8
	fsub.s	$fa2, $fa2, $fa0
	fst.s	$fa2, $s0, 4
	fld.s	$fa2, $s0, 20
	fsub.s	$fa3, $fa3, $fa0
	fst.s	$fa3, $s0, 8
	fld.s	$fa3, $s0, 16
	fadd.s	$fa2, $fa0, $fa2
	fst.s	$fa2, $s0, 20
	fld.s	$fa4, $s0, 24
	fst.s	$fa1, $s0, 0
	fadd.s	$fa2, $fa0, $fa3
	fst.s	$fa2, $s0, 16
	fadd.s	$fa0, $fa0, $fa4
	fst.s	$fa0, $s0, 24
	fld.s	$fa3, $a3, 0
	movgr2fr.w	$fa0, $zero
	fcmp.cule.s	$fcc0, $fa3, $fa0
	bcnez	$fcc0, .LBB18_9
# %bb.8:
	fadd.s	$fa1, $fa2, $fa3
	fst.s	$fa1, $s0, 16
	b	.LBB18_10
.LBB18_9:
	fadd.s	$fa1, $fa1, $fa3
	fst.s	$fa1, $s0, 0
.LBB18_10:                              # %_ZN12btDbvtAabbMm12SignedExpandERK9btVector3.exit
	fld.s	$fa1, $a3, 4
	fcmp.clt.s	$fcc0, $fa0, $fa1
	ori	$a0, $zero, 4
	movcf2gr	$a1, $fcc0
	masknez	$a0, $a0, $a1
	ori	$a2, $zero, 20
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	fldx.s	$fa2, $s0, $a0
	fadd.s	$fa1, $fa1, $fa2
	fstx.s	$fa1, $s0, $a0
	fld.s	$fa1, $a3, 8
	fcmp.clt.s	$fcc0, $fa0, $fa1
	ori	$a0, $zero, 8
	movcf2gr	$a1, $fcc0
	masknez	$a0, $a0, $a1
	ori	$a2, $zero, 24
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	fldx.s	$fa0, $s0, $a0
	fadd.s	$fa0, $fa1, $fa0
	fstx.s	$fa0, $s0, $a0
	move	$a0, $s1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZL10removeleafP6btDbvtP10btDbvtNode)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB18_15
# %bb.11:
	ld.w	$a2, $s1, 16
	bltz	$a2, .LBB18_16
# %bb.12:                               # %.preheader.i
	beqz	$a2, .LBB18_17
	.p2align	4, , 16
.LBB18_13:                              # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a1, $a0
	ld.d	$a0, $a0, 32
	beqz	$a0, .LBB18_18
# %bb.14:                               #   in Loop: Header=BB18_13 Depth=1
	addi.w	$a2, $a2, -1
	move	$a1, $a0
	bnez	$a2, .LBB18_13
	b	.LBB18_18
.LBB18_15:
	move	$a1, $zero
	b	.LBB18_18
.LBB18_16:
	ld.d	$a1, $s1, 0
	b	.LBB18_18
.LBB18_17:
	move	$a1, $a0
.LBB18_18:                              # %_ZN6btDbvt6updateEP10btDbvtNodeR12btDbvtAabbMm.exit
	vld	$vr0, $s0, 16
	vst	$vr0, $fp, 16
	vld	$vr0, $s0, 0
	vst	$vr0, $fp, 0
	move	$a0, $s1
	move	$a2, $fp
	pcaddu18i	$ra, %call36(_ZL10insertleafP6btDbvtP10btDbvtNodeS2_)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
.LBB18_19:
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB18_20:
	move	$a0, $zero
	b	.LBB18_19
.Lfunc_end18:
	.size	_ZN6btDbvt6updateEP10btDbvtNodeR12btDbvtAabbMmRK9btVector3f, .Lfunc_end18-_ZN6btDbvt6updateEP10btDbvtNodeR12btDbvtAabbMmRK9btVector3f
	.cfi_endproc
                                        # -- End function
	.globl	_ZN6btDbvt6updateEP10btDbvtNodeR12btDbvtAabbMmRK9btVector3 # -- Begin function _ZN6btDbvt6updateEP10btDbvtNodeR12btDbvtAabbMmRK9btVector3
	.p2align	5
	.type	_ZN6btDbvt6updateEP10btDbvtNodeR12btDbvtAabbMmRK9btVector3,@function
_ZN6btDbvt6updateEP10btDbvtNodeR12btDbvtAabbMmRK9btVector3: # @_ZN6btDbvt6updateEP10btDbvtNodeR12btDbvtAabbMmRK9btVector3
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
	move	$s0, $a2
	move	$fp, $a1
	fld.s	$fa1, $a1, 0
	fld.s	$fa0, $a2, 0
	fcmp.cult.s	$fcc0, $fa0, $fa1
	move	$s1, $a0
	bcnez	$fcc0, .LBB19_6
# %bb.1:
	fld.s	$fa1, $fp, 4
	fld.s	$fa2, $s0, 4
	fcmp.cult.s	$fcc0, $fa2, $fa1
	bcnez	$fcc0, .LBB19_6
# %bb.2:
	fld.s	$fa1, $fp, 8
	fld.s	$fa2, $s0, 8
	fcmp.cult.s	$fcc0, $fa2, $fa1
	bcnez	$fcc0, .LBB19_6
# %bb.3:
	fld.s	$fa1, $fp, 16
	fld.s	$fa2, $s0, 16
	fcmp.cult.s	$fcc0, $fa1, $fa2
	bcnez	$fcc0, .LBB19_6
# %bb.4:
	fld.s	$fa1, $fp, 20
	fld.s	$fa2, $s0, 20
	fcmp.cult.s	$fcc0, $fa1, $fa2
	bcnez	$fcc0, .LBB19_6
# %bb.5:                                # %_ZNK12btDbvtAabbMm7ContainERKS_.exit
	fld.s	$fa1, $fp, 24
	fld.s	$fa2, $s0, 24
	fcmp.cle.s	$fcc0, $fa2, $fa1
	bcnez	$fcc0, .LBB19_19
.LBB19_6:                               # %_ZNK12btDbvtAabbMm7ContainERKS_.exit.thread
	fld.s	$fa2, $a3, 0
	movgr2fr.w	$fa1, $zero
	fcmp.cule.s	$fcc0, $fa2, $fa1
	bcnez	$fcc0, .LBB19_8
# %bb.7:
	fld.s	$fa0, $s0, 16
	fadd.s	$fa0, $fa2, $fa0
	fst.s	$fa0, $s0, 16
	b	.LBB19_9
.LBB19_8:
	fadd.s	$fa0, $fa0, $fa2
	fst.s	$fa0, $s0, 0
.LBB19_9:                               # %_ZN12btDbvtAabbMm12SignedExpandERK9btVector3.exit
	fld.s	$fa0, $a3, 4
	fcmp.clt.s	$fcc0, $fa1, $fa0
	ori	$a0, $zero, 4
	movcf2gr	$a1, $fcc0
	masknez	$a0, $a0, $a1
	ori	$a2, $zero, 20
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	fldx.s	$fa2, $s0, $a0
	fadd.s	$fa0, $fa0, $fa2
	fstx.s	$fa0, $s0, $a0
	fld.s	$fa0, $a3, 8
	fcmp.clt.s	$fcc0, $fa1, $fa0
	ori	$a0, $zero, 8
	movcf2gr	$a1, $fcc0
	masknez	$a0, $a0, $a1
	ori	$a2, $zero, 24
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	fldx.s	$fa1, $s0, $a0
	fadd.s	$fa0, $fa0, $fa1
	fstx.s	$fa0, $s0, $a0
	move	$a0, $s1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZL10removeleafP6btDbvtP10btDbvtNode)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB19_14
# %bb.10:
	ld.w	$a2, $s1, 16
	bltz	$a2, .LBB19_15
# %bb.11:                               # %.preheader.i
	beqz	$a2, .LBB19_16
	.p2align	4, , 16
.LBB19_12:                              # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a1, $a0
	ld.d	$a0, $a0, 32
	beqz	$a0, .LBB19_17
# %bb.13:                               #   in Loop: Header=BB19_12 Depth=1
	addi.w	$a2, $a2, -1
	move	$a1, $a0
	bnez	$a2, .LBB19_12
	b	.LBB19_17
.LBB19_14:
	move	$a1, $zero
	b	.LBB19_17
.LBB19_15:
	ld.d	$a1, $s1, 0
	b	.LBB19_17
.LBB19_16:
	move	$a1, $a0
.LBB19_17:                              # %_ZN6btDbvt6updateEP10btDbvtNodeR12btDbvtAabbMm.exit
	vld	$vr0, $s0, 16
	vst	$vr0, $fp, 16
	vld	$vr0, $s0, 0
	vst	$vr0, $fp, 0
	move	$a0, $s1
	move	$a2, $fp
	pcaddu18i	$ra, %call36(_ZL10insertleafP6btDbvtP10btDbvtNodeS2_)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
.LBB19_18:
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB19_19:
	move	$a0, $zero
	b	.LBB19_18
.Lfunc_end19:
	.size	_ZN6btDbvt6updateEP10btDbvtNodeR12btDbvtAabbMmRK9btVector3, .Lfunc_end19-_ZN6btDbvt6updateEP10btDbvtNodeR12btDbvtAabbMmRK9btVector3
	.cfi_endproc
                                        # -- End function
	.globl	_ZN6btDbvt6updateEP10btDbvtNodeR12btDbvtAabbMmf # -- Begin function _ZN6btDbvt6updateEP10btDbvtNodeR12btDbvtAabbMmf
	.p2align	5
	.type	_ZN6btDbvt6updateEP10btDbvtNodeR12btDbvtAabbMmf,@function
_ZN6btDbvt6updateEP10btDbvtNodeR12btDbvtAabbMmf: # @_ZN6btDbvt6updateEP10btDbvtNodeR12btDbvtAabbMmf
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
	move	$s0, $a2
	move	$fp, $a1
	fld.s	$fa2, $a1, 0
	fld.s	$fa1, $a2, 0
	fcmp.cle.s	$fcc0, $fa2, $fa1
	move	$s1, $a0
	bcnez	$fcc0, .LBB20_2
# %bb.1:                                # %._ZNK12btDbvtAabbMm7ContainERKS_.exit.thread_crit_edge
	fld.s	$fa2, $s0, 4
	b	.LBB20_7
.LBB20_2:
	fld.s	$fa3, $fp, 4
	fld.s	$fa2, $s0, 4
	fcmp.cult.s	$fcc0, $fa2, $fa3
	bcnez	$fcc0, .LBB20_7
# %bb.3:
	fld.s	$fa3, $fp, 8
	fld.s	$fa4, $s0, 8
	fcmp.cult.s	$fcc0, $fa4, $fa3
	bcnez	$fcc0, .LBB20_7
# %bb.4:
	fld.s	$fa3, $fp, 16
	fld.s	$fa4, $s0, 16
	fcmp.cult.s	$fcc0, $fa3, $fa4
	bcnez	$fcc0, .LBB20_7
# %bb.5:
	fld.s	$fa3, $fp, 20
	fld.s	$fa4, $s0, 20
	fcmp.cult.s	$fcc0, $fa3, $fa4
	bcnez	$fcc0, .LBB20_7
# %bb.6:                                # %_ZNK12btDbvtAabbMm7ContainERKS_.exit
	fld.s	$fa3, $fp, 24
	fld.s	$fa4, $s0, 24
	fcmp.cle.s	$fcc0, $fa4, $fa3
	bcnez	$fcc0, .LBB20_17
.LBB20_7:                               # %_ZNK12btDbvtAabbMm7ContainERKS_.exit.thread
	fsub.s	$fa1, $fa1, $fa0
	fst.s	$fa1, $s0, 0
	fld.s	$fa1, $s0, 8
	fsub.s	$fa2, $fa2, $fa0
	fst.s	$fa2, $s0, 4
	fld.s	$fa2, $s0, 16
	fsub.s	$fa1, $fa1, $fa0
	fst.s	$fa1, $s0, 8
	fld.s	$fa1, $s0, 20
	fadd.s	$fa2, $fa0, $fa2
	fld.s	$fa3, $s0, 24
	fst.s	$fa2, $s0, 16
	fadd.s	$fa1, $fa0, $fa1
	fst.s	$fa1, $s0, 20
	fadd.s	$fa0, $fa0, $fa3
	fst.s	$fa0, $s0, 24
	move	$a0, $s1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZL10removeleafP6btDbvtP10btDbvtNode)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB20_12
# %bb.8:
	ld.w	$a2, $s1, 16
	bltz	$a2, .LBB20_13
# %bb.9:                                # %.preheader.i
	beqz	$a2, .LBB20_14
	.p2align	4, , 16
.LBB20_10:                              # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a1, $a0
	ld.d	$a0, $a0, 32
	beqz	$a0, .LBB20_15
# %bb.11:                               #   in Loop: Header=BB20_10 Depth=1
	addi.w	$a2, $a2, -1
	move	$a1, $a0
	bnez	$a2, .LBB20_10
	b	.LBB20_15
.LBB20_12:
	move	$a1, $zero
	b	.LBB20_15
.LBB20_13:
	ld.d	$a1, $s1, 0
	b	.LBB20_15
.LBB20_14:
	move	$a1, $a0
.LBB20_15:                              # %_ZN6btDbvt6updateEP10btDbvtNodeR12btDbvtAabbMm.exit
	vld	$vr0, $s0, 16
	vst	$vr0, $fp, 16
	vld	$vr0, $s0, 0
	vst	$vr0, $fp, 0
	move	$a0, $s1
	move	$a2, $fp
	pcaddu18i	$ra, %call36(_ZL10insertleafP6btDbvtP10btDbvtNodeS2_)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
.LBB20_16:
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB20_17:
	move	$a0, $zero
	b	.LBB20_16
.Lfunc_end20:
	.size	_ZN6btDbvt6updateEP10btDbvtNodeR12btDbvtAabbMmf, .Lfunc_end20-_ZN6btDbvt6updateEP10btDbvtNodeR12btDbvtAabbMmf
	.cfi_endproc
                                        # -- End function
	.globl	_ZN6btDbvt6removeEP10btDbvtNode # -- Begin function _ZN6btDbvt6removeEP10btDbvtNode
	.p2align	5
	.type	_ZN6btDbvt6removeEP10btDbvtNode,@function
_ZN6btDbvt6removeEP10btDbvtNode:        # @_ZN6btDbvt6removeEP10btDbvtNode
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
	move	$fp, $a1
	move	$s0, $a0
	pcaddu18i	$ra, %call36(_ZL10removeleafP6btDbvtP10btDbvtNode)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 8
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 20
	st.d	$fp, $s0, 8
	addi.d	$a0, $a0, -1
	st.w	$a0, $s0, 20
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end21:
	.size	_ZN6btDbvt6removeEP10btDbvtNode, .Lfunc_end21-_ZN6btDbvt6removeEP10btDbvtNode
	.cfi_endproc
                                        # -- End function
	.globl	_ZNK6btDbvt5writeEPNS_7IWriterE # -- Begin function _ZNK6btDbvt5writeEPNS_7IWriterE
	.p2align	5
	.type	_ZNK6btDbvt5writeEPNS_7IWriterE,@function
_ZNK6btDbvt5writeEPNS_7IWriterE:        # @_ZNK6btDbvt5writeEPNS_7IWriterE
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	move	$fp, $a1
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV20btDbvtNodeEnumerator+16)
	addi.d	$s2, $a0, %pc_lo12(_ZTV20btDbvtNodeEnumerator+16)
	st.d	$s2, $sp, 8
	ld.w	$a0, $s0, 20
	ori	$a1, $zero, 1
	st.b	$a1, $sp, 40
	st.d	$zero, $sp, 32
	st.d	$zero, $sp, 20
	blez	$a0, .LBB22_15
# %bb.1:
	slli.w	$s3, $a0, 1
	slli.d	$a0, $s3, 3
.Ltmp83:                                # EH_LABEL
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
.Ltmp84:                                # EH_LABEL
# %bb.2:                                # %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE8allocateEi.exit.i
	move	$s1, $a0
	ld.w	$a1, $sp, 20
	ld.d	$a0, $sp, 32
	blez	$a1, .LBB22_11
# %bb.3:                                # %.lr.ph.i.i
	ori	$a3, $zero, 4
	move	$a2, $zero
	bltu	$a1, $a3, .LBB22_8
# %bb.4:                                # %.lr.ph.i.i
	sub.d	$a3, $s1, $a0
	ori	$a4, $zero, 32
	bltu	$a3, $a4, .LBB22_8
# %bb.5:                                # %vector.ph
	bstrpick.d	$a2, $a1, 30, 2
	slli.d	$a2, $a2, 2
	addi.d	$a3, $a0, 16
	addi.d	$a4, $s1, 16
	move	$a5, $a2
	.p2align	4, , 16
.LBB22_6:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a3, -16
	vld	$vr1, $a3, 0
	vst	$vr0, $a4, -16
	vst	$vr1, $a4, 0
	addi.d	$a5, $a5, -4
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB22_6
# %bb.7:                                # %middle.block
	beq	$a2, $a1, .LBB22_10
.LBB22_8:                               # %scalar.ph.preheader
	sub.d	$a1, $a1, $a2
	alsl.d	$a3, $a2, $a0, 3
	alsl.d	$a2, $a2, $s1, 3
	.p2align	4, , 16
.LBB22_9:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a3, 0
	st.d	$a4, $a2, 0
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 8
	addi.d	$a2, $a2, 8
	bnez	$a1, .LBB22_9
.LBB22_10:                              # %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i
	ld.bu	$a1, $sp, 40
	bnez	$a1, .LBB22_13
	b	.LBB22_14
.LBB22_11:                              # %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.i
	beqz	$a0, .LBB22_14
# %bb.12:                               # %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.i
	ld.b	$a1, $sp, 40
	andi	$a1, $a1, 1
	beqz	$a1, .LBB22_14
.LBB22_13:
.Ltmp85:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp86:                                # EH_LABEL
.LBB22_14:                              # %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE10deallocateEv.exit.i
	ori	$a0, $zero, 1
	st.b	$a0, $sp, 40
	st.d	$s1, $sp, 32
	st.w	$s3, $sp, 24
.LBB22_15:                              # %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE7reserveEi.exit
	ld.d	$a0, $s0, 0
.Ltmp87:                                # EH_LABEL
	addi.d	$a1, $sp, 8
	pcaddu18i	$ra, %call36(_ZN6btDbvt9enumNodesEPK10btDbvtNodeRNS_8ICollideE)
	jirl	$ra, $ra, 0
.Ltmp88:                                # EH_LABEL
# %bb.16:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $s0, 0
	ld.w	$a2, $sp, 20
	ld.d	$a3, $a0, 16
.Ltmp89:                                # EH_LABEL
	move	$a0, $fp
	jirl	$ra, $a3, 0
.Ltmp90:                                # EH_LABEL
# %bb.17:                               # %.preheader
	ld.w	$a5, $sp, 20
	blez	$a5, .LBB22_39
# %bb.18:                               # %.lr.ph.preheader
	move	$s0, $zero
	addi.w	$s1, $zero, -1
	b	.LBB22_22
	.p2align	4, , 16
.LBB22_19:                              #   in Loop: Header=BB22_22 Depth=1
	move	$a4, $a5
.LBB22_20:                              # %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE16findLinearSearchERKS2_.exit43
                                        #   in Loop: Header=BB22_22 Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a6, $a0, 24
.Ltmp92:                                # EH_LABEL
	move	$a0, $fp
	move	$a2, $s0
	jirl	$ra, $a6, 0
.Ltmp93:                                # EH_LABEL
.LBB22_21:                              #   in Loop: Header=BB22_22 Depth=1
	ld.w	$a5, $sp, 20
	addi.d	$s0, $s0, 1
	bge	$s0, $a5, .LBB22_39
.LBB22_22:                              # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB22_25 Depth 2
                                        #     Child Loop BB22_31 Depth 2
                                        #     Child Loop BB22_35 Depth 2
	ld.d	$a0, $sp, 32
	slli.d	$a1, $s0, 3
	ldx.d	$a1, $a0, $a1
	ld.d	$a2, $a1, 32
	move	$a3, $s1
	beqz	$a2, .LBB22_28
# %bb.23:                               #   in Loop: Header=BB22_22 Depth=1
	move	$a3, $a5
	blez	$a5, .LBB22_28
# %bb.24:                               # %.lr.ph.i
                                        #   in Loop: Header=BB22_22 Depth=1
	move	$a3, $zero
	move	$a4, $a0
	move	$a6, $a5
	.p2align	4, , 16
.LBB22_25:                              #   Parent Loop BB22_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a7, $a4, 0
	beq	$a7, $a2, .LBB22_28
# %bb.26:                               #   in Loop: Header=BB22_25 Depth=2
	addi.w	$a3, $a3, 1
	addi.d	$a6, $a6, -1
	addi.d	$a4, $a4, 8
	bnez	$a6, .LBB22_25
# %bb.27:                               #   in Loop: Header=BB22_22 Depth=1
	move	$a3, $a5
	.p2align	4, , 16
.LBB22_28:                              # %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE16findLinearSearchERKS2_.exit
                                        #   in Loop: Header=BB22_22 Depth=1
	ld.d	$a2, $a1, 48
	beqz	$a2, .LBB22_37
# %bb.29:                               #   in Loop: Header=BB22_22 Depth=1
	blez	$a5, .LBB22_19
# %bb.30:                               # %.lr.ph.i29
                                        #   in Loop: Header=BB22_22 Depth=1
	ld.d	$a6, $a1, 40
	move	$a4, $zero
	move	$a7, $a0
	move	$t0, $a5
	.p2align	4, , 16
.LBB22_31:                              #   Parent Loop BB22_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t1, $a7, 0
	beq	$t1, $a6, .LBB22_34
# %bb.32:                               #   in Loop: Header=BB22_31 Depth=2
	addi.w	$a4, $a4, 1
	addi.d	$t0, $t0, -1
	addi.d	$a7, $a7, 8
	bnez	$t0, .LBB22_31
# %bb.33:                               #   in Loop: Header=BB22_22 Depth=1
	move	$a4, $a5
.LBB22_34:                              # %.lr.ph.i37
                                        #   in Loop: Header=BB22_22 Depth=1
	move	$a6, $zero
	move	$a7, $a5
	.p2align	4, , 16
.LBB22_35:                              #   Parent Loop BB22_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t0, $a0, 0
	beq	$t0, $a2, .LBB22_38
# %bb.36:                               #   in Loop: Header=BB22_35 Depth=2
	addi.w	$a6, $a6, 1
	addi.d	$a7, $a7, -1
	addi.d	$a0, $a0, 8
	bnez	$a7, .LBB22_35
	b	.LBB22_20
	.p2align	4, , 16
.LBB22_37:                              #   in Loop: Header=BB22_22 Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a4, $a0, 32
.Ltmp95:                                # EH_LABEL
	move	$a0, $fp
	move	$a2, $s0
	jirl	$ra, $a4, 0
.Ltmp96:                                # EH_LABEL
	b	.LBB22_21
.LBB22_38:                              #   in Loop: Header=BB22_22 Depth=1
	move	$a5, $a6
	b	.LBB22_20
.LBB22_39:                              # %._crit_edge
	ld.d	$a0, $sp, 32
	st.d	$s2, $sp, 8
	beqz	$a0, .LBB22_42
# %bb.40:                               # %._crit_edge
	ld.b	$a1, $sp, 40
	andi	$a1, $a1, 1
	beqz	$a1, .LBB22_42
# %bb.41:
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.LBB22_42:                              # %_ZN20btDbvtNodeEnumeratorD2Ev.exit
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.LBB22_43:
.Ltmp91:                                # EH_LABEL
	b	.LBB22_46
.LBB22_44:
.Ltmp97:                                # EH_LABEL
	b	.LBB22_46
.LBB22_45:
.Ltmp94:                                # EH_LABEL
.LBB22_46:
	move	$fp, $a0
	ld.d	$a0, $sp, 32
	st.d	$s2, $sp, 8
	beqz	$a0, .LBB22_49
# %bb.47:
	ld.b	$a1, $sp, 40
	andi	$a1, $a1, 1
	beqz	$a1, .LBB22_49
# %bb.48:
.Ltmp98:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp99:                                # EH_LABEL
.LBB22_49:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB22_50:
.Ltmp100:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end22:
	.size	_ZNK6btDbvt5writeEPNS_7IWriterE, .Lfunc_end22-_ZNK6btDbvt5writeEPNS_7IWriterE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table22:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase4-.Lttbaseref4
.Lttbaseref4:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Ltmp83-.Lfunc_begin4          # >> Call Site 1 <<
	.uleb128 .Ltmp90-.Ltmp83                #   Call between .Ltmp83 and .Ltmp90
	.uleb128 .Ltmp91-.Lfunc_begin4          #     jumps to .Ltmp91
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp92-.Lfunc_begin4          # >> Call Site 2 <<
	.uleb128 .Ltmp93-.Ltmp92                #   Call between .Ltmp92 and .Ltmp93
	.uleb128 .Ltmp94-.Lfunc_begin4          #     jumps to .Ltmp94
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp95-.Lfunc_begin4          # >> Call Site 3 <<
	.uleb128 .Ltmp96-.Ltmp95                #   Call between .Ltmp95 and .Ltmp96
	.uleb128 .Ltmp97-.Lfunc_begin4          #     jumps to .Ltmp97
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp96-.Lfunc_begin4          # >> Call Site 4 <<
	.uleb128 .Ltmp98-.Ltmp96                #   Call between .Ltmp96 and .Ltmp98
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp98-.Lfunc_begin4          # >> Call Site 5 <<
	.uleb128 .Ltmp99-.Ltmp98                #   Call between .Ltmp98 and .Ltmp99
	.uleb128 .Ltmp100-.Lfunc_begin4         #     jumps to .Ltmp100
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp99-.Lfunc_begin4          # >> Call Site 6 <<
	.uleb128 .Lfunc_end22-.Ltmp99           #   Call between .Ltmp99 and .Lfunc_end22
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
	.section	.text._ZN6btDbvt9enumNodesEPK10btDbvtNodeRNS_8ICollideE,"axG",@progbits,_ZN6btDbvt9enumNodesEPK10btDbvtNodeRNS_8ICollideE,comdat
	.weak	_ZN6btDbvt9enumNodesEPK10btDbvtNodeRNS_8ICollideE # -- Begin function _ZN6btDbvt9enumNodesEPK10btDbvtNodeRNS_8ICollideE
	.p2align	5
	.type	_ZN6btDbvt9enumNodesEPK10btDbvtNodeRNS_8ICollideE,@function
_ZN6btDbvt9enumNodesEPK10btDbvtNodeRNS_8ICollideE: # @_ZN6btDbvt9enumNodesEPK10btDbvtNodeRNS_8ICollideE
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
	move	$fp, $a1
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a1, 24
	move	$s0, $a0
	.p2align	4, , 16
.LBB23_1:                               # %tailrecurse
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $fp
	move	$a1, $s0
	jirl	$ra, $a2, 0
	ld.d	$a0, $s0, 48
	beqz	$a0, .LBB23_3
# %bb.2:                                # %tailrecurse
                                        #   in Loop: Header=BB23_1 Depth=1
	ld.d	$a0, $s0, 40
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN6btDbvt9enumNodesEPK10btDbvtNodeRNS_8ICollideE)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$s0, $s0, 48
	ld.d	$a2, $a0, 24
	b	.LBB23_1
.LBB23_3:                               # %tailrecurse._crit_edge
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end23:
	.size	_ZN6btDbvt9enumNodesEPK10btDbvtNodeRNS_8ICollideE, .Lfunc_end23-_ZN6btDbvt9enumNodesEPK10btDbvtNodeRNS_8ICollideE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN20btDbvtNodeEnumeratorD2Ev,"axG",@progbits,_ZN20btDbvtNodeEnumeratorD2Ev,comdat
	.weak	_ZN20btDbvtNodeEnumeratorD2Ev   # -- Begin function _ZN20btDbvtNodeEnumeratorD2Ev
	.p2align	5
	.type	_ZN20btDbvtNodeEnumeratorD2Ev,@function
_ZN20btDbvtNodeEnumeratorD2Ev:          # @_ZN20btDbvtNodeEnumeratorD2Ev
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV20btDbvtNodeEnumerator+16)
	addi.d	$a1, $a0, %pc_lo12(_ZTV20btDbvtNodeEnumerator+16)
	ld.d	$a0, $fp, 24
	st.d	$a1, $fp, 0
	beqz	$a0, .LBB24_3
# %bb.1:
	ld.b	$a1, $fp, 32
	andi	$a1, $a1, 1
	beqz	$a1, .LBB24_3
# %bb.2:
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.LBB24_3:
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 32
	st.d	$zero, $fp, 24
	st.d	$zero, $fp, 12
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end24:
	.size	_ZN20btDbvtNodeEnumeratorD2Ev, .Lfunc_end24-_ZN20btDbvtNodeEnumeratorD2Ev
	.cfi_endproc
                                        # -- End function
	.text
	.globl	_ZNK6btDbvt5cloneERS_PNS_6ICloneE # -- Begin function _ZNK6btDbvt5cloneERS_PNS_6ICloneE
	.p2align	5
	.type	_ZNK6btDbvt5cloneERS_PNS_6ICloneE,@function
_ZNK6btDbvt5cloneERS_PNS_6ICloneE:      # @_ZNK6btDbvt5cloneERS_PNS_6ICloneE
.Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception5
# %bb.0:
	addi.d	$sp, $sp, -144
	.cfi_def_cfa_offset 144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
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
	move	$s4, $a1
	ld.d	$a1, $a1, 0
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	move	$s1, $a0
	beqz	$a1, .LBB25_2
# %bb.1:
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZL17recursedeletenodeP6btDbvtP10btDbvtNode)
	jirl	$ra, $ra, 0
.LBB25_2:
	ld.d	$a0, $s4, 8
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 48
	st.d	$zero, $s4, 8
	addi.w	$a1, $zero, -1
	lu32i.d	$a1, 0
	st.w	$a1, $s4, 16
	beqz	$a0, .LBB25_5
# %bb.3:
	ld.b	$a1, $s4, 56
	andi	$a1, $a1, 1
	beqz	$a1, .LBB25_5
# %bb.4:
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.LBB25_5:                               # %_ZN6btDbvt5clearEv.exit
	st.d	$zero, $s4, 36
	ld.d	$fp, $s1, 0
	ori	$a0, $zero, 1
	st.b	$a0, $s4, 56
	st.d	$zero, $s4, 48
	st.w	$zero, $s4, 24
	beqz	$fp, .LBB25_8
# %bb.6:
	ld.w	$s6, $s1, 20
	blez	$s6, .LBB25_9
# %bb.7:                                # %_ZN20btAlignedObjectArrayIN6btDbvt7sStkCLNEE7reserveEi.exit
	slli.d	$a0, $s6, 4
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
	ld.d	$fp, $s1, 0
	move	$s1, $a0
	b	.LBB25_10
.LBB25_8:                               # %_ZN20btAlignedObjectArrayIN6btDbvt7sStkCLNEED2Ev.exit
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.LBB25_9:                               # %_ZN20btAlignedObjectArrayIN6btDbvt7sStkCLNEE7reserveEi.exit.thread
	ori	$a0, $zero, 16
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ori	$s6, $zero, 1
.LBB25_10:                              # %_ZNK20btAlignedObjectArrayIN6btDbvt7sStkCLNEE4copyEiiPS1_.exit.i.i
	st.d	$fp, $s1, 0
	st.d	$zero, $s1, 8
	ori	$s5, $zero, 1
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	st.d	$s4, $sp, 48                    # 8-byte Folded Spill
	b	.LBB25_13
	.p2align	4, , 16
.LBB25_11:                              #   in Loop: Header=BB25_13 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a1, 16
.Ltmp113:                               # EH_LABEL
	move	$a1, $s2
	jirl	$ra, $a2, 0
.Ltmp114:                               # EH_LABEL
# %bb.12:                               #   in Loop: Header=BB25_13 Depth=1
	move	$s5, $s7
	blez	$s7, .LBB25_35
.LBB25_13:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB25_26 Depth 2
                                        #     Child Loop BB25_31 Depth 2
	addi.w	$s7, $s5, -1
	slli.d	$s0, $s7, 4
	ldx.d	$s8, $s1, $s0
	alsl.d	$a0, $s7, $s1, 4
	ld.d	$fp, $a0, 8
	ld.d	$s2, $s4, 8
	ld.d	$s3, $s8, 40
	beqz	$s2, .LBB25_15
# %bb.14:                               #   in Loop: Header=BB25_13 Depth=1
	st.d	$zero, $s4, 8
	b	.LBB25_17
	.p2align	4, , 16
.LBB25_15:                              #   in Loop: Header=BB25_13 Depth=1
.Ltmp101:                               # EH_LABEL
	ori	$a0, $zero, 56
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
.Ltmp102:                               # EH_LABEL
# %bb.16:                               # %.noexc32
                                        #   in Loop: Header=BB25_13 Depth=1
	move	$s2, $a0
	st.d	$zero, $a0, 48
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $a0, 32
	vst	$vr0, $a0, 16
	vst	$vr0, $a0, 0
.LBB25_17:                              #   in Loop: Header=BB25_13 Depth=1
	st.d	$fp, $s2, 32
	st.d	$s3, $s2, 40
	st.d	$zero, $s2, 48
	vld	$vr0, $s8, 0
	vst	$vr0, $s2, 0
	vld	$vr0, $s8, 16
	vst	$vr0, $s2, 16
	beqz	$fp, .LBB25_19
# %bb.18:                               #   in Loop: Header=BB25_13 Depth=1
	andi	$a0, $s7, 1
	alsl.d	$a0, $a0, $fp, 3
	st.d	$s2, $a0, 40
	ld.d	$a0, $s8, 48
	bnez	$a0, .LBB25_20
	b	.LBB25_11
	.p2align	4, , 16
.LBB25_19:                              #   in Loop: Header=BB25_13 Depth=1
	st.d	$s2, $s4, 0
	ld.d	$a0, $s8, 48
	beqz	$a0, .LBB25_11
.LBB25_20:                              #   in Loop: Header=BB25_13 Depth=1
	ld.d	$fp, $s8, 40
	bne	$s7, $s6, .LBB25_22
# %bb.21:                               #   in Loop: Header=BB25_13 Depth=1
	slli.w	$s4, $s6, 1
	bgeu	$s4, $s5, .LBB25_23
.LBB25_22:                              #   in Loop: Header=BB25_13 Depth=1
	move	$s4, $s6
	move	$s3, $s1
	b	.LBB25_28
.LBB25_23:                              #   in Loop: Header=BB25_13 Depth=1
	slli.d	$a0, $s4, 4
.Ltmp103:                               # EH_LABEL
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
.Ltmp104:                               # EH_LABEL
# %bb.24:                               # %_ZN20btAlignedObjectArrayIN6btDbvt7sStkCLNEE8allocateEi.exit.i.i36
                                        #   in Loop: Header=BB25_13 Depth=1
	move	$s3, $a0
	ori	$a0, $zero, 2
	bltu	$s5, $a0, .LBB25_27
# %bb.25:                               # %.lr.ph.i.i.i43
                                        #   in Loop: Header=BB25_13 Depth=1
	move	$a0, $s3
	move	$a1, $s1
	.p2align	4, , 16
.LBB25_26:                              #   Parent Loop BB25_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a1, 0
	vst	$vr0, $a0, 0
	addi.d	$s6, $s6, -1
	addi.d	$a1, $a1, 16
	addi.d	$a0, $a0, 16
	bnez	$s6, .LBB25_26
.LBB25_27:                              # %_ZNK20btAlignedObjectArrayIN6btDbvt7sStkCLNEE4copyEiiPS1_.exit.i.i38
                                        #   in Loop: Header=BB25_13 Depth=1
.Ltmp105:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp106:                               # EH_LABEL
.LBB25_28:                              #   in Loop: Header=BB25_13 Depth=1
	alsl.d	$a0, $s7, $s3, 4
	stx.d	$fp, $s3, $s0
	st.d	$s2, $a0, 8
	ld.d	$fp, $s8, 48
	bne	$s5, $s4, .LBB25_33
# %bb.29:                               #   in Loop: Header=BB25_13 Depth=1
	slli.w	$s4, $s5, 1
	slli.d	$a0, $s4, 4
.Ltmp108:                               # EH_LABEL
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
.Ltmp109:                               # EH_LABEL
# %bb.30:                               # %.lr.ph.i.i.i61
                                        #   in Loop: Header=BB25_13 Depth=1
	move	$s1, $a0
	move	$a0, $zero
	move	$a1, $s5
	.p2align	4, , 16
.LBB25_31:                              #   Parent Loop BB25_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vldx	$vr0, $s3, $a0
	vstx	$vr0, $s1, $a0
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 16
	bnez	$a1, .LBB25_31
# %bb.32:                               # %_ZNK20btAlignedObjectArrayIN6btDbvt7sStkCLNEE4copyEiiPS1_.exit.i.i56
                                        #   in Loop: Header=BB25_13 Depth=1
.Ltmp110:                               # EH_LABEL
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp111:                               # EH_LABEL
	b	.LBB25_34
	.p2align	4, , 16
.LBB25_33:                              # %._crit_edge
                                        #   in Loop: Header=BB25_13 Depth=1
	move	$s1, $s3
.LBB25_34:                              #   in Loop: Header=BB25_13 Depth=1
	alsl.d	$a0, $s5, $s1, 4
	slli.d	$a1, $s5, 4
	stx.d	$fp, $s1, $a1
	st.d	$s2, $a0, 8
	addi.w	$s7, $s5, 1
	move	$s6, $s4
	ld.d	$s4, $sp, 48                    # 8-byte Folded Reload
	move	$s5, $s7
	bgtz	$s7, .LBB25_13
.LBB25_35:
	move	$a0, $s1
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	pcaddu18i	$t8, %call36(_Z21btAlignedFreeInternalPv)
	jr	$t8
.LBB25_36:
.Ltmp107:                               # EH_LABEL
	b	.LBB25_39
.LBB25_37:
.Ltmp112:                               # EH_LABEL
	move	$fp, $a0
	move	$s1, $s3
	b	.LBB25_40
.LBB25_38:
.Ltmp115:                               # EH_LABEL
.LBB25_39:
	move	$fp, $a0
.LBB25_40:
.Ltmp116:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp117:                               # EH_LABEL
# %bb.41:                               # %_ZN20btAlignedObjectArrayIN6btDbvt7sStkCLNEED2Ev.exit74
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB25_42:
.Ltmp118:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end25:
	.size	_ZNK6btDbvt5cloneERS_PNS_6ICloneE, .Lfunc_end25-_ZNK6btDbvt5cloneERS_PNS_6ICloneE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table25:
.Lexception5:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase5-.Lttbaseref5
.Lttbaseref5:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end5-.Lcst_begin5
.Lcst_begin5:
	.uleb128 .Lfunc_begin5-.Lfunc_begin5    # >> Call Site 1 <<
	.uleb128 .Ltmp113-.Lfunc_begin5         #   Call between .Lfunc_begin5 and .Ltmp113
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp113-.Lfunc_begin5         # >> Call Site 2 <<
	.uleb128 .Ltmp102-.Ltmp113              #   Call between .Ltmp113 and .Ltmp102
	.uleb128 .Ltmp115-.Lfunc_begin5         #     jumps to .Ltmp115
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp103-.Lfunc_begin5         # >> Call Site 3 <<
	.uleb128 .Ltmp106-.Ltmp103              #   Call between .Ltmp103 and .Ltmp106
	.uleb128 .Ltmp107-.Lfunc_begin5         #     jumps to .Ltmp107
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp108-.Lfunc_begin5         # >> Call Site 4 <<
	.uleb128 .Ltmp111-.Ltmp108              #   Call between .Ltmp108 and .Ltmp111
	.uleb128 .Ltmp112-.Lfunc_begin5         #     jumps to .Ltmp112
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp111-.Lfunc_begin5         # >> Call Site 5 <<
	.uleb128 .Ltmp116-.Ltmp111              #   Call between .Ltmp111 and .Ltmp116
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp116-.Lfunc_begin5         # >> Call Site 6 <<
	.uleb128 .Ltmp117-.Ltmp116              #   Call between .Ltmp116 and .Ltmp117
	.uleb128 .Ltmp118-.Lfunc_begin5         #     jumps to .Ltmp118
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp117-.Lfunc_begin5         # >> Call Site 7 <<
	.uleb128 .Lfunc_end25-.Ltmp117          #   Call between .Ltmp117 and .Lfunc_end25
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
	.text
	.globl	_ZN6btDbvt8maxdepthEPK10btDbvtNode # -- Begin function _ZN6btDbvt8maxdepthEPK10btDbvtNode
	.p2align	5
	.type	_ZN6btDbvt8maxdepthEPK10btDbvtNode,@function
_ZN6btDbvt8maxdepthEPK10btDbvtNode:     # @_ZN6btDbvt8maxdepthEPK10btDbvtNode
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.w	$zero, $sp, 4
	beqz	$a0, .LBB26_2
# %bb.1:
	ori	$a1, $zero, 1
	addi.d	$a2, $sp, 4
	pcaddu18i	$ra, %call36(_ZL11getmaxdepthPK10btDbvtNodeiRi)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 4
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB26_2:
	move	$a0, $zero
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end26:
	.size	_ZN6btDbvt8maxdepthEPK10btDbvtNode, .Lfunc_end26-_ZN6btDbvt8maxdepthEPK10btDbvtNode
                                        # -- End function
	.p2align	5                               # -- Begin function _ZL11getmaxdepthPK10btDbvtNodeiRi
	.type	_ZL11getmaxdepthPK10btDbvtNodeiRi,@function
_ZL11getmaxdepthPK10btDbvtNodeiRi:      # @_ZL11getmaxdepthPK10btDbvtNodeiRi
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$s1, $a0
	ld.d	$a0, $a0, 48
	move	$fp, $a2
	move	$s0, $a1
	beqz	$a0, .LBB27_2
	.p2align	4, , 16
.LBB27_1:                               # %tailrecurse
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 40
	addi.w	$s0, $s0, 1
	move	$a1, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(_ZL11getmaxdepthPK10btDbvtNodeiRi)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s1, 40
	ld.d	$a0, $s1, 48
	bnez	$a0, .LBB27_1
.LBB27_2:                               # %tailrecurse._crit_edge
	ld.w	$a0, $fp, 0
	slt	$a1, $s0, $a0
	masknez	$a2, $s0, $a1
	maskeqz	$a0, $a0, $a1
	or	$a0, $a0, $a2
	st.w	$a0, $fp, 0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end27:
	.size	_ZL11getmaxdepthPK10btDbvtNodeiRi, .Lfunc_end27-_ZL11getmaxdepthPK10btDbvtNodeiRi
                                        # -- End function
	.globl	_ZN6btDbvt11countLeavesEPK10btDbvtNode # -- Begin function _ZN6btDbvt11countLeavesEPK10btDbvtNode
	.p2align	5
	.type	_ZN6btDbvt11countLeavesEPK10btDbvtNode,@function
_ZN6btDbvt11countLeavesEPK10btDbvtNode: # @_ZN6btDbvt11countLeavesEPK10btDbvtNode
# %bb.0:
	ld.d	$a1, $a0, 48
	beqz	$a1, .LBB28_4
# %bb.1:                                # %tailrecurse.preheader
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $zero
	.p2align	4, , 16
.LBB28_2:                               # %tailrecurse
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 40
	move	$s0, $a1
	pcaddu18i	$ra, %call36(_ZN6btDbvt11countLeavesEPK10btDbvtNode)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 48
	add.d	$fp, $a0, $fp
	move	$a0, $s0
	bnez	$a1, .LBB28_2
# %bb.3:                                # %tailrecurse._crit_edge.loopexit
	addi.w	$a0, $fp, 1
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB28_4:
	ori	$a0, $zero, 1
	ret
.Lfunc_end28:
	.size	_ZN6btDbvt11countLeavesEPK10btDbvtNode, .Lfunc_end28-_ZN6btDbvt11countLeavesEPK10btDbvtNode
                                        # -- End function
	.globl	_ZN6btDbvt13extractLeavesEPK10btDbvtNodeR20btAlignedObjectArrayIS2_E # -- Begin function _ZN6btDbvt13extractLeavesEPK10btDbvtNodeR20btAlignedObjectArrayIS2_E
	.p2align	5
	.type	_ZN6btDbvt13extractLeavesEPK10btDbvtNodeR20btAlignedObjectArrayIS2_E,@function
_ZN6btDbvt13extractLeavesEPK10btDbvtNodeR20btAlignedObjectArrayIS2_E: # @_ZN6btDbvt13extractLeavesEPK10btDbvtNodeR20btAlignedObjectArrayIS2_E
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
	move	$s0, $a0
	ld.d	$a0, $a0, 48
	move	$fp, $a1
	beqz	$a0, .LBB29_2
	.p2align	4, , 16
.LBB29_1:                               # %tailrecurse
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 40
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN6btDbvt13extractLeavesEPK10btDbvtNodeR20btAlignedObjectArrayIS2_E)
	jirl	$ra, $ra, 0
	ld.d	$s0, $s0, 48
	ld.d	$a0, $s0, 48
	bnez	$a0, .LBB29_1
.LBB29_2:                               # %tailrecurse._crit_edge
	ld.w	$a1, $fp, 4
	ld.w	$a0, $fp, 8
	bne	$a1, $a0, .LBB29_19
# %bb.3:
	sltui	$a0, $a1, 1
	slli.w	$a2, $a1, 1
	masknez	$a2, $a2, $a0
	ori	$a3, $zero, 1
	maskeqz	$a0, $a3, $a0
	or	$s2, $a0, $a2
	bge	$a1, $s2, .LBB29_19
# %bb.4:
	beqz	$s2, .LBB29_14
# %bb.5:
	slli.d	$a0, $s2, 3
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 4
	move	$s1, $a0
	ld.d	$a0, $fp, 16
	blez	$a1, .LBB29_15
.LBB29_6:                               # %.lr.ph.i.i.i
	ori	$a3, $zero, 4
	move	$a2, $zero
	bltu	$a1, $a3, .LBB29_11
# %bb.7:                                # %.lr.ph.i.i.i
	sub.d	$a3, $s1, $a0
	ori	$a4, $zero, 32
	bltu	$a3, $a4, .LBB29_11
# %bb.8:                                # %vector.ph
	bstrpick.d	$a2, $a1, 30, 2
	slli.d	$a2, $a2, 2
	addi.d	$a3, $a0, 16
	addi.d	$a4, $s1, 16
	move	$a5, $a2
	.p2align	4, , 16
.LBB29_9:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a3, -16
	vld	$vr1, $a3, 0
	vst	$vr0, $a4, -16
	vst	$vr1, $a4, 0
	addi.d	$a5, $a5, -4
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB29_9
# %bb.10:                               # %middle.block
	beq	$a2, $a1, .LBB29_13
.LBB29_11:                              # %scalar.ph.preheader
	sub.d	$a3, $a1, $a2
	alsl.d	$a4, $a2, $a0, 3
	alsl.d	$a2, $a2, $s1, 3
	.p2align	4, , 16
.LBB29_12:                              # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a4, 0
	st.d	$a5, $a2, 0
	addi.d	$a3, $a3, -1
	addi.d	$a4, $a4, 8
	addi.d	$a2, $a2, 8
	bnez	$a3, .LBB29_12
.LBB29_13:                              # %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i
	ld.bu	$a2, $fp, 24
	bnez	$a2, .LBB29_17
	b	.LBB29_18
.LBB29_14:
	move	$s1, $zero
	ld.d	$a0, $fp, 16
	bgtz	$a1, .LBB29_6
.LBB29_15:                              # %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.i.i
	beqz	$a0, .LBB29_18
# %bb.16:                               # %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.i.i
	ld.b	$a2, $fp, 24
	andi	$a2, $a2, 1
	beqz	$a2, .LBB29_18
.LBB29_17:
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 4
.LBB29_18:                              # %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE10deallocateEv.exit.i.i
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 24
	st.d	$s1, $fp, 16
	st.w	$s2, $fp, 8
.LBB29_19:                              # %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE9push_backERKS2_.exit
	ld.d	$a0, $fp, 16
	slli.d	$a2, $a1, 3
	stx.d	$s0, $a0, $a2
	addi.d	$a0, $a1, 1
	st.w	$a0, $fp, 4
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end29:
	.size	_ZN6btDbvt13extractLeavesEPK10btDbvtNodeR20btAlignedObjectArrayIS2_E, .Lfunc_end29-_ZN6btDbvt13extractLeavesEPK10btDbvtNodeR20btAlignedObjectArrayIS2_E
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN20btDbvtNodeEnumeratorD0Ev,"axG",@progbits,_ZN20btDbvtNodeEnumeratorD0Ev,comdat
	.weak	_ZN20btDbvtNodeEnumeratorD0Ev   # -- Begin function _ZN20btDbvtNodeEnumeratorD0Ev
	.p2align	5
	.type	_ZN20btDbvtNodeEnumeratorD0Ev,@function
_ZN20btDbvtNodeEnumeratorD0Ev:          # @_ZN20btDbvtNodeEnumeratorD0Ev
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
	pcalau12i	$a0, %pc_hi20(_ZTV20btDbvtNodeEnumerator+16)
	addi.d	$a1, $a0, %pc_lo12(_ZTV20btDbvtNodeEnumerator+16)
	ld.d	$a0, $fp, 24
	st.d	$a1, $fp, 0
	beqz	$a0, .LBB30_3
# %bb.1:
	ld.b	$a1, $fp, 32
	andi	$a1, $a1, 1
	beqz	$a1, .LBB30_3
# %bb.2:
.Ltmp119:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp120:                               # EH_LABEL
.LBB30_3:
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZdlPv)
	jr	$t8
.LBB30_4:
.Ltmp121:                               # EH_LABEL
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end30:
	.size	_ZN20btDbvtNodeEnumeratorD0Ev, .Lfunc_end30-_ZN20btDbvtNodeEnumeratorD0Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN20btDbvtNodeEnumeratorD0Ev,"aG",@progbits,_ZN20btDbvtNodeEnumeratorD0Ev,comdat
	.p2align	2, 0x0
GCC_except_table30:
.Lexception6:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end6-.Lcst_begin6
.Lcst_begin6:
	.uleb128 .Ltmp119-.Lfunc_begin6         # >> Call Site 1 <<
	.uleb128 .Ltmp120-.Ltmp119              #   Call between .Ltmp119 and .Ltmp120
	.uleb128 .Ltmp121-.Lfunc_begin6         #     jumps to .Ltmp121
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp120-.Lfunc_begin6         # >> Call Site 2 <<
	.uleb128 .Lfunc_end30-.Ltmp120          #   Call between .Ltmp120 and .Lfunc_end30
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end6:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN6btDbvt8ICollide7ProcessEPK10btDbvtNodeS3_,"axG",@progbits,_ZN6btDbvt8ICollide7ProcessEPK10btDbvtNodeS3_,comdat
	.weak	_ZN6btDbvt8ICollide7ProcessEPK10btDbvtNodeS3_ # -- Begin function _ZN6btDbvt8ICollide7ProcessEPK10btDbvtNodeS3_
	.p2align	5
	.type	_ZN6btDbvt8ICollide7ProcessEPK10btDbvtNodeS3_,@function
_ZN6btDbvt8ICollide7ProcessEPK10btDbvtNodeS3_: # @_ZN6btDbvt8ICollide7ProcessEPK10btDbvtNodeS3_
# %bb.0:
	ret
.Lfunc_end31:
	.size	_ZN6btDbvt8ICollide7ProcessEPK10btDbvtNodeS3_, .Lfunc_end31-_ZN6btDbvt8ICollide7ProcessEPK10btDbvtNodeS3_
                                        # -- End function
	.section	.text._ZN20btDbvtNodeEnumerator7ProcessEPK10btDbvtNode,"axG",@progbits,_ZN20btDbvtNodeEnumerator7ProcessEPK10btDbvtNode,comdat
	.weak	_ZN20btDbvtNodeEnumerator7ProcessEPK10btDbvtNode # -- Begin function _ZN20btDbvtNodeEnumerator7ProcessEPK10btDbvtNode
	.p2align	5
	.type	_ZN20btDbvtNodeEnumerator7ProcessEPK10btDbvtNode,@function
_ZN20btDbvtNodeEnumerator7ProcessEPK10btDbvtNode: # @_ZN20btDbvtNodeEnumerator7ProcessEPK10btDbvtNode
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
	ld.w	$a2, $a0, 12
	ld.w	$a0, $a0, 16
	bne	$a2, $a0, .LBB32_17
# %bb.1:
	sltui	$a0, $a2, 1
	slli.w	$a3, $a2, 1
	masknez	$a3, $a3, $a0
	ori	$a4, $zero, 1
	maskeqz	$a0, $a4, $a0
	or	$s1, $a0, $a3
	bge	$a2, $s1, .LBB32_17
# %bb.2:
	move	$s2, $a1
	beqz	$s1, .LBB32_12
# %bb.3:
	slli.d	$a0, $s1, 3
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
	ld.w	$a2, $fp, 12
	move	$s0, $a0
	ld.d	$a0, $fp, 24
	blez	$a2, .LBB32_13
.LBB32_4:                               # %.lr.ph.i.i.i
	ori	$a4, $zero, 4
	move	$a3, $zero
	move	$a1, $s2
	bltu	$a2, $a4, .LBB32_9
# %bb.5:                                # %.lr.ph.i.i.i
	sub.d	$a4, $s0, $a0
	ori	$a5, $zero, 32
	bltu	$a4, $a5, .LBB32_9
# %bb.6:                                # %vector.ph
	bstrpick.d	$a3, $a2, 30, 2
	slli.d	$a3, $a3, 2
	addi.d	$a4, $a0, 16
	addi.d	$a5, $s0, 16
	move	$a6, $a3
	.p2align	4, , 16
.LBB32_7:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a4, -16
	vld	$vr1, $a4, 0
	vst	$vr0, $a5, -16
	vst	$vr1, $a5, 0
	addi.d	$a6, $a6, -4
	addi.d	$a4, $a4, 32
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB32_7
# %bb.8:                                # %middle.block
	beq	$a3, $a2, .LBB32_11
.LBB32_9:                               # %scalar.ph.preheader
	sub.d	$a4, $a2, $a3
	alsl.d	$a5, $a3, $a0, 3
	alsl.d	$a3, $a3, $s0, 3
	.p2align	4, , 16
.LBB32_10:                              # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a6, $a5, 0
	st.d	$a6, $a3, 0
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 8
	addi.d	$a3, $a3, 8
	bnez	$a4, .LBB32_10
.LBB32_11:                              # %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i
	ld.bu	$a3, $fp, 32
	bnez	$a3, .LBB32_15
	b	.LBB32_16
.LBB32_12:
	move	$s0, $zero
	ld.d	$a0, $fp, 24
	bgtz	$a2, .LBB32_4
.LBB32_13:                              # %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.i.i
	move	$a1, $s2
	beqz	$a0, .LBB32_16
# %bb.14:                               # %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.i.i
	ld.b	$a3, $fp, 32
	andi	$a3, $a3, 1
	beqz	$a3, .LBB32_16
.LBB32_15:
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
	move	$a1, $s2
	ld.w	$a2, $fp, 12
.LBB32_16:                              # %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE10deallocateEv.exit.i.i
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 32
	st.d	$s0, $fp, 24
	st.w	$s1, $fp, 16
.LBB32_17:                              # %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE9push_backERKS2_.exit
	ld.d	$a0, $fp, 24
	slli.d	$a3, $a2, 3
	stx.d	$a1, $a0, $a3
	addi.d	$a0, $a2, 1
	st.w	$a0, $fp, 12
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end32:
	.size	_ZN20btDbvtNodeEnumerator7ProcessEPK10btDbvtNode, .Lfunc_end32-_ZN20btDbvtNodeEnumerator7ProcessEPK10btDbvtNode
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN6btDbvt8ICollide7ProcessEPK10btDbvtNodef,"axG",@progbits,_ZN6btDbvt8ICollide7ProcessEPK10btDbvtNodef,comdat
	.weak	_ZN6btDbvt8ICollide7ProcessEPK10btDbvtNodef # -- Begin function _ZN6btDbvt8ICollide7ProcessEPK10btDbvtNodef
	.p2align	5
	.type	_ZN6btDbvt8ICollide7ProcessEPK10btDbvtNodef,@function
_ZN6btDbvt8ICollide7ProcessEPK10btDbvtNodef: # @_ZN6btDbvt8ICollide7ProcessEPK10btDbvtNodef
	.cfi_startproc
# %bb.0:
	ld.d	$a2, $a0, 0
	ld.d	$a2, $a2, 24
	jr	$a2
.Lfunc_end33:
	.size	_ZN6btDbvt8ICollide7ProcessEPK10btDbvtNodef, .Lfunc_end33-_ZN6btDbvt8ICollide7ProcessEPK10btDbvtNodef
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN6btDbvt8ICollide7DescentEPK10btDbvtNode,"axG",@progbits,_ZN6btDbvt8ICollide7DescentEPK10btDbvtNode,comdat
	.weak	_ZN6btDbvt8ICollide7DescentEPK10btDbvtNode # -- Begin function _ZN6btDbvt8ICollide7DescentEPK10btDbvtNode
	.p2align	5
	.type	_ZN6btDbvt8ICollide7DescentEPK10btDbvtNode,@function
_ZN6btDbvt8ICollide7DescentEPK10btDbvtNode: # @_ZN6btDbvt8ICollide7DescentEPK10btDbvtNode
# %bb.0:
	ori	$a0, $zero, 1
	ret
.Lfunc_end34:
	.size	_ZN6btDbvt8ICollide7DescentEPK10btDbvtNode, .Lfunc_end34-_ZN6btDbvt8ICollide7DescentEPK10btDbvtNode
                                        # -- End function
	.section	.text._ZN6btDbvt8ICollide9AllLeavesEPK10btDbvtNode,"axG",@progbits,_ZN6btDbvt8ICollide9AllLeavesEPK10btDbvtNode,comdat
	.weak	_ZN6btDbvt8ICollide9AllLeavesEPK10btDbvtNode # -- Begin function _ZN6btDbvt8ICollide9AllLeavesEPK10btDbvtNode
	.p2align	5
	.type	_ZN6btDbvt8ICollide9AllLeavesEPK10btDbvtNode,@function
_ZN6btDbvt8ICollide9AllLeavesEPK10btDbvtNode: # @_ZN6btDbvt8ICollide9AllLeavesEPK10btDbvtNode
# %bb.0:
	ori	$a0, $zero, 1
	ret
.Lfunc_end35:
	.size	_ZN6btDbvt8ICollide9AllLeavesEPK10btDbvtNode, .Lfunc_end35-_ZN6btDbvt8ICollide9AllLeavesEPK10btDbvtNode
                                        # -- End function
	.type	_ZZL7topdownP6btDbvtR20btAlignedObjectArrayIP10btDbvtNodeEiE4axis,@object # @_ZZL7topdownP6btDbvtR20btAlignedObjectArrayIP10btDbvtNodeEiE4axis
	.local	_ZZL7topdownP6btDbvtR20btAlignedObjectArrayIP10btDbvtNodeEiE4axis
	.comm	_ZZL7topdownP6btDbvtR20btAlignedObjectArrayIP10btDbvtNodeEiE4axis,48,8
	.type	_ZGVZL7topdownP6btDbvtR20btAlignedObjectArrayIP10btDbvtNodeEiE4axis,@object # @_ZGVZL7topdownP6btDbvtR20btAlignedObjectArrayIP10btDbvtNodeEiE4axis
	.local	_ZGVZL7topdownP6btDbvtR20btAlignedObjectArrayIP10btDbvtNodeEiE4axis
	.comm	_ZGVZL7topdownP6btDbvtR20btAlignedObjectArrayIP10btDbvtNodeEiE4axis,8,8
	.type	_ZTV20btDbvtNodeEnumerator,@object # @_ZTV20btDbvtNodeEnumerator
	.section	.data.rel.ro._ZTV20btDbvtNodeEnumerator,"awG",@progbits,_ZTV20btDbvtNodeEnumerator,comdat
	.weak	_ZTV20btDbvtNodeEnumerator
	.p2align	3, 0x0
_ZTV20btDbvtNodeEnumerator:
	.dword	0
	.dword	_ZTI20btDbvtNodeEnumerator
	.dword	_ZN20btDbvtNodeEnumeratorD2Ev
	.dword	_ZN20btDbvtNodeEnumeratorD0Ev
	.dword	_ZN6btDbvt8ICollide7ProcessEPK10btDbvtNodeS3_
	.dword	_ZN20btDbvtNodeEnumerator7ProcessEPK10btDbvtNode
	.dword	_ZN6btDbvt8ICollide7ProcessEPK10btDbvtNodef
	.dword	_ZN6btDbvt8ICollide7DescentEPK10btDbvtNode
	.dword	_ZN6btDbvt8ICollide9AllLeavesEPK10btDbvtNode
	.size	_ZTV20btDbvtNodeEnumerator, 72

	.type	_ZTI20btDbvtNodeEnumerator,@object # @_ZTI20btDbvtNodeEnumerator
	.section	.data.rel.ro._ZTI20btDbvtNodeEnumerator,"awG",@progbits,_ZTI20btDbvtNodeEnumerator,comdat
	.weak	_ZTI20btDbvtNodeEnumerator
	.p2align	3, 0x0
_ZTI20btDbvtNodeEnumerator:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS20btDbvtNodeEnumerator
	.dword	_ZTIN6btDbvt8ICollideE
	.size	_ZTI20btDbvtNodeEnumerator, 24

	.type	_ZTS20btDbvtNodeEnumerator,@object # @_ZTS20btDbvtNodeEnumerator
	.section	.rodata._ZTS20btDbvtNodeEnumerator,"aG",@progbits,_ZTS20btDbvtNodeEnumerator,comdat
	.weak	_ZTS20btDbvtNodeEnumerator
_ZTS20btDbvtNodeEnumerator:
	.asciz	"20btDbvtNodeEnumerator"
	.size	_ZTS20btDbvtNodeEnumerator, 23

	.type	_ZTIN6btDbvt8ICollideE,@object  # @_ZTIN6btDbvt8ICollideE
	.section	.data.rel.ro._ZTIN6btDbvt8ICollideE,"awG",@progbits,_ZTIN6btDbvt8ICollideE,comdat
	.weak	_ZTIN6btDbvt8ICollideE
	.p2align	3, 0x0
_ZTIN6btDbvt8ICollideE:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTSN6btDbvt8ICollideE
	.size	_ZTIN6btDbvt8ICollideE, 16

	.type	_ZTSN6btDbvt8ICollideE,@object  # @_ZTSN6btDbvt8ICollideE
	.section	.rodata._ZTSN6btDbvt8ICollideE,"aG",@progbits,_ZTSN6btDbvt8ICollideE,comdat
	.weak	_ZTSN6btDbvt8ICollideE
_ZTSN6btDbvt8ICollideE:
	.asciz	"N6btDbvt8ICollideE"
	.size	_ZTSN6btDbvt8ICollideE, 19

	.globl	_ZN6btDbvtC1Ev
	.type	_ZN6btDbvtC1Ev,@function
_ZN6btDbvtC1Ev = _ZN6btDbvtC2Ev
	.globl	_ZN6btDbvtD1Ev
	.type	_ZN6btDbvtD1Ev,@function
_ZN6btDbvtD1Ev = _ZN6btDbvtD2Ev
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
	.addrsig_sym _ZZL7topdownP6btDbvtR20btAlignedObjectArrayIP10btDbvtNodeEiE4axis
	.addrsig_sym _ZGVZL7topdownP6btDbvtR20btAlignedObjectArrayIP10btDbvtNodeEiE4axis
	.addrsig_sym _ZTI20btDbvtNodeEnumerator
	.addrsig_sym _ZTVN10__cxxabiv120__si_class_type_infoE
	.addrsig_sym _ZTS20btDbvtNodeEnumerator
	.addrsig_sym _ZTIN6btDbvt8ICollideE
	.addrsig_sym _ZTVN10__cxxabiv117__class_type_infoE
	.addrsig_sym _ZTSN6btDbvt8ICollideE
