	.file	"btGhostObject.cpp"
	.text
	.globl	_ZN13btGhostObjectC2Ev          # -- Begin function _ZN13btGhostObjectC2Ev
	.p2align	5
	.type	_ZN13btGhostObjectC2Ev,@function
_ZN13btGhostObjectC2Ev:                 # @_ZN13btGhostObjectC2Ev
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_ZN17btCollisionObjectC2Ev)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(_ZTV13btGhostObject+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13btGhostObject+16)
	st.d	$a0, $fp, 0
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 304
	st.d	$zero, $fp, 296
	st.d	$zero, $fp, 284
	ori	$a0, $zero, 3
	st.w	$a0, $fp, 256
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end0:
	.size	_ZN13btGhostObjectC2Ev, .Lfunc_end0-_ZN13btGhostObjectC2Ev
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
.Lfunc_end1:
	.size	__clang_call_terminate, .Lfunc_end1-__clang_call_terminate
                                        # -- End function
	.text
	.globl	_ZN13btGhostObjectD2Ev          # -- Begin function _ZN13btGhostObjectD2Ev
	.p2align	5
	.type	_ZN13btGhostObjectD2Ev,@function
_ZN13btGhostObjectD2Ev:                 # @_ZN13btGhostObjectD2Ev
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
	pcalau12i	$a0, %pc_hi20(_ZTV13btGhostObject+16)
	addi.d	$a1, $a0, %pc_lo12(_ZTV13btGhostObject+16)
	ld.d	$a0, $fp, 296
	st.d	$a1, $fp, 0
	beqz	$a0, .LBB2_3
# %bb.1:
	ld.b	$a1, $fp, 304
	andi	$a1, $a1, 1
	beqz	$a1, .LBB2_3
# %bb.2:
.Ltmp0:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
.LBB2_3:
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 304
	st.d	$zero, $fp, 296
	st.d	$zero, $fp, 284
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZN17btCollisionObjectD2Ev)
	jr	$t8
.LBB2_4:
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
.LBB2_6:
.Ltmp5:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	_ZN13btGhostObjectD2Ev, .Lfunc_end2-_ZN13btGhostObjectD2Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table2:
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
	.uleb128 .Lfunc_end2-.Ltmp4             #   Call between .Ltmp4 and .Lfunc_end2
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
	.globl	_ZN13btGhostObjectD0Ev          # -- Begin function _ZN13btGhostObjectD0Ev
	.p2align	5
	.type	_ZN13btGhostObjectD0Ev,@function
_ZN13btGhostObjectD0Ev:                 # @_ZN13btGhostObjectD0Ev
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
	pcalau12i	$a0, %pc_hi20(_ZTV13btGhostObject+16)
	addi.d	$a1, $a0, %pc_lo12(_ZTV13btGhostObject+16)
	ld.d	$a0, $fp, 296
	st.d	$a1, $fp, 0
	beqz	$a0, .LBB3_3
# %bb.1:
	ld.b	$a1, $fp, 304
	andi	$a1, $a1, 1
	beqz	$a1, .LBB3_3
# %bb.2:
.Ltmp6:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp7:                                 # EH_LABEL
.LBB3_3:
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 304
	st.d	$zero, $fp, 296
	st.d	$zero, $fp, 284
.Ltmp12:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17btCollisionObjectD2Ev)
	jirl	$ra, $ra, 0
.Ltmp13:                                # EH_LABEL
# %bb.4:                                # %_ZN13btGhostObjectD2Ev.exit
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_Z21btAlignedFreeInternalPv)
	jr	$t8
.LBB3_5:
.Ltmp8:                                 # EH_LABEL
	move	$s0, $a0
.Ltmp9:                                 # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17btCollisionObjectD2Ev)
	jirl	$ra, $ra, 0
.Ltmp10:                                # EH_LABEL
	b	.LBB3_8
.LBB3_6:
.Ltmp11:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB3_7:
.Ltmp14:                                # EH_LABEL
	move	$s0, $a0
.LBB3_8:                                # %.body
.Ltmp15:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp16:                                # EH_LABEL
# %bb.9:                                # %_ZN17btCollisionObjectdlEPv.exit
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB3_10:
.Ltmp17:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end3:
	.size	_ZN13btGhostObjectD0Ev, .Lfunc_end3-_ZN13btGhostObjectD0Ev
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
	.uleb128 .Ltmp15-.Ltmp10                #   Call between .Ltmp10 and .Ltmp15
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp15-.Lfunc_begin1          # >> Call Site 6 <<
	.uleb128 .Ltmp16-.Ltmp15                #   Call between .Ltmp15 and .Ltmp16
	.uleb128 .Ltmp17-.Lfunc_begin1          #     jumps to .Ltmp17
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp16-.Lfunc_begin1          # >> Call Site 7 <<
	.uleb128 .Lfunc_end3-.Ltmp16            #   Call between .Ltmp16 and .Lfunc_end3
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
	.globl	_ZN13btGhostObject28addOverlappingObjectInternalEP17btBroadphaseProxyS1_ # -- Begin function _ZN13btGhostObject28addOverlappingObjectInternalEP17btBroadphaseProxyS1_
	.p2align	5
	.type	_ZN13btGhostObject28addOverlappingObjectInternalEP17btBroadphaseProxyS1_,@function
_ZN13btGhostObject28addOverlappingObjectInternalEP17btBroadphaseProxyS1_: # @_ZN13btGhostObject28addOverlappingObjectInternalEP17btBroadphaseProxyS1_
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
	ld.w	$a2, $a0, 284
	ld.d	$s0, $a1, 0
	blez	$a2, .LBB4_5
# %bb.1:                                # %.lr.ph.i
	ld.d	$a1, $a0, 296
	move	$a4, $a2
	move	$a3, $a2
	.p2align	4, , 16
.LBB4_2:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a1, 0
	beq	$a5, $s0, .LBB4_4
# %bb.3:                                #   in Loop: Header=BB4_2 Depth=1
	addi.w	$a3, $a3, -1
	addi.d	$a4, $a4, -1
	addi.d	$a1, $a1, 8
	bnez	$a4, .LBB4_2
	b	.LBB4_5
.LBB4_4:                                # %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE16findLinearSearchERKS1_.exit
	bnez	$a3, .LBB4_23
.LBB4_5:                                # %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE16findLinearSearchERKS1_.exit.thread
	ld.w	$a1, $a0, 288
	bne	$a2, $a1, .LBB4_22
# %bb.6:
	sltui	$a1, $a2, 1
	slli.w	$a3, $a2, 1
	masknez	$a3, $a3, $a1
	ori	$a4, $zero, 1
	maskeqz	$a1, $a4, $a1
	or	$s1, $a1, $a3
	bge	$a2, $s1, .LBB4_22
# %bb.7:
	beqz	$s1, .LBB4_17
# %bb.8:
	slli.d	$a2, $s1, 3
	ori	$a1, $zero, 16
	move	$s2, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s2, 284
	move	$fp, $a0
	move	$a0, $s2
	ld.d	$a1, $a0, 296
	blez	$a2, .LBB4_18
.LBB4_9:                                # %.lr.ph.i.i.i
	ori	$a4, $zero, 8
	move	$a3, $zero
	bltu	$a2, $a4, .LBB4_14
# %bb.10:                               # %.lr.ph.i.i.i
	sub.d	$a4, $fp, $a1
	ori	$a5, $zero, 64
	bltu	$a4, $a5, .LBB4_14
# %bb.11:                               # %vector.ph
	bstrpick.d	$a3, $a2, 30, 3
	slli.d	$a3, $a3, 3
	addi.d	$a4, $a1, 32
	addi.d	$a5, $fp, 32
	move	$a6, $a3
	.p2align	4, , 16
.LBB4_12:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a4, -32
	xvld	$xr1, $a4, 0
	xvst	$xr0, $a5, -32
	xvst	$xr1, $a5, 0
	addi.d	$a6, $a6, -8
	addi.d	$a4, $a4, 64
	addi.d	$a5, $a5, 64
	bnez	$a6, .LBB4_12
# %bb.13:                               # %middle.block
	beq	$a3, $a2, .LBB4_16
.LBB4_14:                               # %scalar.ph.preheader
	sub.d	$a4, $a2, $a3
	alsl.d	$a5, $a3, $a1, 3
	alsl.d	$a3, $a3, $fp, 3
	.p2align	4, , 16
.LBB4_15:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a6, $a5, 0
	st.d	$a6, $a3, 0
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 8
	addi.d	$a3, $a3, 8
	bnez	$a4, .LBB4_15
.LBB4_16:                               # %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE4copyEiiPS1_.exit.thread.i.i
	ld.bu	$a3, $a0, 304
	bnez	$a3, .LBB4_20
	b	.LBB4_21
.LBB4_17:
	move	$fp, $zero
	ld.d	$a1, $a0, 296
	bgtz	$a2, .LBB4_9
.LBB4_18:                               # %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE4copyEiiPS1_.exit.i.i
	beqz	$a1, .LBB4_21
# %bb.19:                               # %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE4copyEiiPS1_.exit.i.i
	ld.b	$a3, $a0, 304
	andi	$a3, $a3, 1
	beqz	$a3, .LBB4_21
.LBB4_20:
	move	$s2, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	ld.w	$a2, $s2, 284
.LBB4_21:                               # %_ZN20btAlignedObjectArrayIP17btCollisionObjectE10deallocateEv.exit.i.i
	ori	$a1, $zero, 1
	st.b	$a1, $a0, 304
	st.d	$fp, $a0, 296
	st.w	$s1, $a0, 288
.LBB4_22:                               # %_ZN20btAlignedObjectArrayIP17btCollisionObjectE9push_backERKS1_.exit
	ld.d	$a1, $a0, 296
	slli.d	$a3, $a2, 3
	stx.d	$s0, $a1, $a3
	addi.d	$a1, $a2, 1
	st.w	$a1, $a0, 284
.LBB4_23:
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end4:
	.size	_ZN13btGhostObject28addOverlappingObjectInternalEP17btBroadphaseProxyS1_, .Lfunc_end4-_ZN13btGhostObject28addOverlappingObjectInternalEP17btBroadphaseProxyS1_
	.cfi_endproc
                                        # -- End function
	.globl	_ZN13btGhostObject31removeOverlappingObjectInternalEP17btBroadphaseProxyP12btDispatcherS1_ # -- Begin function _ZN13btGhostObject31removeOverlappingObjectInternalEP17btBroadphaseProxyP12btDispatcherS1_
	.p2align	5
	.type	_ZN13btGhostObject31removeOverlappingObjectInternalEP17btBroadphaseProxyP12btDispatcherS1_,@function
_ZN13btGhostObject31removeOverlappingObjectInternalEP17btBroadphaseProxyP12btDispatcherS1_: # @_ZN13btGhostObject31removeOverlappingObjectInternalEP17btBroadphaseProxyP12btDispatcherS1_
# %bb.0:
	ld.w	$a2, $a0, 284
	blez	$a2, .LBB5_4
# %bb.1:                                # %.lr.ph.i
	ld.d	$a3, $a0, 296
	ld.d	$a4, $a1, 0
	move	$a5, $zero
	move	$a6, $a2
	move	$a1, $a3
	.p2align	4, , 16
.LBB5_2:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a7, $a1, 0
	beq	$a7, $a4, .LBB5_5
# %bb.3:                                #   in Loop: Header=BB5_2 Depth=1
	addi.d	$a1, $a1, 8
	addi.d	$a6, $a6, -1
	addi.w	$a5, $a5, 1
	bnez	$a6, .LBB5_2
.LBB5_4:                                # %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE16findLinearSearchERKS1_.exit.thread
	ret
.LBB5_5:                                # %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE16findLinearSearchERKS1_.exit
	bge	$a5, $a2, .LBB5_4
# %bb.6:
	addi.w	$a2, $a2, -1
	slli.d	$a4, $a2, 3
	ldx.d	$a3, $a3, $a4
	st.d	$a3, $a1, 0
	st.w	$a2, $a0, 284
	ret
.Lfunc_end5:
	.size	_ZN13btGhostObject31removeOverlappingObjectInternalEP17btBroadphaseProxyP12btDispatcherS1_, .Lfunc_end5-_ZN13btGhostObject31removeOverlappingObjectInternalEP17btBroadphaseProxyP12btDispatcherS1_
                                        # -- End function
	.globl	_ZN24btPairCachingGhostObjectC2Ev # -- Begin function _ZN24btPairCachingGhostObjectC2Ev
	.p2align	5
	.type	_ZN24btPairCachingGhostObjectC2Ev,@function
_ZN24btPairCachingGhostObjectC2Ev:      # @_ZN24btPairCachingGhostObjectC2Ev
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
	pcaddu18i	$ra, %call36(_ZN17btCollisionObjectC2Ev)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 304
	st.d	$zero, $fp, 296
	st.d	$zero, $fp, 284
	ori	$a0, $zero, 3
	st.w	$a0, $fp, 256
	pcalau12i	$a0, %pc_hi20(_ZTV24btPairCachingGhostObject+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV24btPairCachingGhostObject+16)
	st.d	$a0, $fp, 0
.Ltmp18:                                # EH_LABEL
	ori	$a0, $zero, 128
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
.Ltmp19:                                # EH_LABEL
# %bb.1:
.Ltmp20:                                # EH_LABEL
	move	$s0, $a0
	pcaddu18i	$ra, %call36(_ZN28btHashedOverlappingPairCacheC1Ev)
	jirl	$ra, $ra, 0
.Ltmp21:                                # EH_LABEL
# %bb.2:
	st.d	$s0, $fp, 312
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB6_3:
.Ltmp22:                                # EH_LABEL
	move	$s0, $a0
.Ltmp23:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN13btGhostObjectD2Ev)
	jirl	$ra, $ra, 0
.Ltmp24:                                # EH_LABEL
# %bb.4:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB6_5:
.Ltmp25:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end6:
	.size	_ZN24btPairCachingGhostObjectC2Ev, .Lfunc_end6-_ZN24btPairCachingGhostObjectC2Ev
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
	.uleb128 .Lfunc_begin2-.Lfunc_begin2    # >> Call Site 1 <<
	.uleb128 .Ltmp18-.Lfunc_begin2          #   Call between .Lfunc_begin2 and .Ltmp18
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp18-.Lfunc_begin2          # >> Call Site 2 <<
	.uleb128 .Ltmp21-.Ltmp18                #   Call between .Ltmp18 and .Ltmp21
	.uleb128 .Ltmp22-.Lfunc_begin2          #     jumps to .Ltmp22
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp23-.Lfunc_begin2          # >> Call Site 3 <<
	.uleb128 .Ltmp24-.Ltmp23                #   Call between .Ltmp23 and .Ltmp24
	.uleb128 .Ltmp25-.Lfunc_begin2          #     jumps to .Ltmp25
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp24-.Lfunc_begin2          # >> Call Site 4 <<
	.uleb128 .Lfunc_end6-.Ltmp24            #   Call between .Ltmp24 and .Lfunc_end6
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
	.globl	_ZN24btPairCachingGhostObjectD2Ev # -- Begin function _ZN24btPairCachingGhostObjectD2Ev
	.p2align	5
	.type	_ZN24btPairCachingGhostObjectD2Ev,@function
_ZN24btPairCachingGhostObjectD2Ev:      # @_ZN24btPairCachingGhostObjectD2Ev
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception3
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
	pcalau12i	$a0, %pc_hi20(_ZTV24btPairCachingGhostObject+16)
	addi.d	$a1, $a0, %pc_lo12(_ZTV24btPairCachingGhostObject+16)
	ld.d	$a0, $fp, 312
	st.d	$a1, $fp, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 0
.Ltmp26:                                # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp27:                                # EH_LABEL
# %bb.1:
	ld.d	$a0, $fp, 312
.Ltmp28:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp29:                                # EH_LABEL
# %bb.2:
	pcalau12i	$a0, %pc_hi20(_ZTV13btGhostObject+16)
	addi.d	$a1, $a0, %pc_lo12(_ZTV13btGhostObject+16)
	ld.d	$a0, $fp, 296
	st.d	$a1, $fp, 0
	beqz	$a0, .LBB7_5
# %bb.3:
	ld.b	$a1, $fp, 304
	andi	$a1, $a1, 1
	beqz	$a1, .LBB7_5
# %bb.4:
.Ltmp34:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp35:                                # EH_LABEL
.LBB7_5:                                # %_ZN13btGhostObjectD2Ev.exit
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 304
	st.d	$zero, $fp, 296
	st.d	$zero, $fp, 284
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZN17btCollisionObjectD2Ev)
	jr	$t8
.LBB7_6:
.Ltmp36:                                # EH_LABEL
	move	$s0, $a0
.Ltmp37:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17btCollisionObjectD2Ev)
	jirl	$ra, $ra, 0
.Ltmp38:                                # EH_LABEL
	b	.LBB7_9
.LBB7_7:
.Ltmp39:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB7_8:
.Ltmp30:                                # EH_LABEL
	move	$s0, $a0
.Ltmp31:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN13btGhostObjectD2Ev)
	jirl	$ra, $ra, 0
.Ltmp32:                                # EH_LABEL
.LBB7_9:                                # %common.resume
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB7_10:
.Ltmp33:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end7:
	.size	_ZN24btPairCachingGhostObjectD2Ev, .Lfunc_end7-_ZN24btPairCachingGhostObjectD2Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table7:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase3-.Lttbaseref3
.Lttbaseref3:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Ltmp26-.Lfunc_begin3          # >> Call Site 1 <<
	.uleb128 .Ltmp29-.Ltmp26                #   Call between .Ltmp26 and .Ltmp29
	.uleb128 .Ltmp30-.Lfunc_begin3          #     jumps to .Ltmp30
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp34-.Lfunc_begin3          # >> Call Site 2 <<
	.uleb128 .Ltmp35-.Ltmp34                #   Call between .Ltmp34 and .Ltmp35
	.uleb128 .Ltmp36-.Lfunc_begin3          #     jumps to .Ltmp36
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp35-.Lfunc_begin3          # >> Call Site 3 <<
	.uleb128 .Ltmp37-.Ltmp35                #   Call between .Ltmp35 and .Ltmp37
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp37-.Lfunc_begin3          # >> Call Site 4 <<
	.uleb128 .Ltmp38-.Ltmp37                #   Call between .Ltmp37 and .Ltmp38
	.uleb128 .Ltmp39-.Lfunc_begin3          #     jumps to .Ltmp39
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp38-.Lfunc_begin3          # >> Call Site 5 <<
	.uleb128 .Ltmp31-.Ltmp38                #   Call between .Ltmp38 and .Ltmp31
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp31-.Lfunc_begin3          # >> Call Site 6 <<
	.uleb128 .Ltmp32-.Ltmp31                #   Call between .Ltmp31 and .Ltmp32
	.uleb128 .Ltmp33-.Lfunc_begin3          #     jumps to .Ltmp33
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp32-.Lfunc_begin3          # >> Call Site 7 <<
	.uleb128 .Lfunc_end7-.Ltmp32            #   Call between .Ltmp32 and .Lfunc_end7
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
	.globl	_ZN24btPairCachingGhostObjectD0Ev # -- Begin function _ZN24btPairCachingGhostObjectD0Ev
	.p2align	5
	.type	_ZN24btPairCachingGhostObjectD0Ev,@function
_ZN24btPairCachingGhostObjectD0Ev:      # @_ZN24btPairCachingGhostObjectD0Ev
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
.Ltmp40:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN24btPairCachingGhostObjectD2Ev)
	jirl	$ra, $ra, 0
.Ltmp41:                                # EH_LABEL
# %bb.1:
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_Z21btAlignedFreeInternalPv)
	jr	$t8
.LBB8_2:
.Ltmp42:                                # EH_LABEL
	move	$s0, $a0
.Ltmp43:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp44:                                # EH_LABEL
# %bb.3:                                # %_ZN17btCollisionObjectdlEPv.exit
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB8_4:
.Ltmp45:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end8:
	.size	_ZN24btPairCachingGhostObjectD0Ev, .Lfunc_end8-_ZN24btPairCachingGhostObjectD0Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table8:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase4-.Lttbaseref4
.Lttbaseref4:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Ltmp40-.Lfunc_begin4          # >> Call Site 1 <<
	.uleb128 .Ltmp41-.Ltmp40                #   Call between .Ltmp40 and .Ltmp41
	.uleb128 .Ltmp42-.Lfunc_begin4          #     jumps to .Ltmp42
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp41-.Lfunc_begin4          # >> Call Site 2 <<
	.uleb128 .Ltmp43-.Ltmp41                #   Call between .Ltmp41 and .Ltmp43
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp43-.Lfunc_begin4          # >> Call Site 3 <<
	.uleb128 .Ltmp44-.Ltmp43                #   Call between .Ltmp43 and .Ltmp44
	.uleb128 .Ltmp45-.Lfunc_begin4          #     jumps to .Ltmp45
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp44-.Lfunc_begin4          # >> Call Site 4 <<
	.uleb128 .Lfunc_end8-.Ltmp44            #   Call between .Ltmp44 and .Lfunc_end8
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
	.text
	.globl	_ZN24btPairCachingGhostObject28addOverlappingObjectInternalEP17btBroadphaseProxyS1_ # -- Begin function _ZN24btPairCachingGhostObject28addOverlappingObjectInternalEP17btBroadphaseProxyS1_
	.p2align	5
	.type	_ZN24btPairCachingGhostObject28addOverlappingObjectInternalEP17btBroadphaseProxyS1_,@function
_ZN24btPairCachingGhostObject28addOverlappingObjectInternalEP17btBroadphaseProxyS1_: # @_ZN24btPairCachingGhostObject28addOverlappingObjectInternalEP17btBroadphaseProxyS1_
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
	ld.d	$a1, $a0, 192
	ld.w	$a3, $a0, 284
	ld.d	$s1, $fp, 0
	blez	$a3, .LBB9_6
# %bb.1:                                # %.lr.ph.i
	ld.d	$a4, $a0, 296
	move	$a6, $a3
	move	$a5, $a3
	.p2align	4, , 16
.LBB9_2:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a7, $a4, 0
	beq	$a7, $s1, .LBB9_4
# %bb.3:                                #   in Loop: Header=BB9_2 Depth=1
	addi.w	$a5, $a5, -1
	addi.d	$a6, $a6, -1
	addi.d	$a4, $a4, 8
	bnez	$a6, .LBB9_2
	b	.LBB9_6
.LBB9_4:                                # %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE16findLinearSearchERKS1_.exit
	beqz	$a5, .LBB9_6
# %bb.5:
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB9_6:                                # %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE16findLinearSearchERKS1_.exit.thread
	ld.w	$a4, $a0, 288
	sltui	$a5, $a2, 1
	masknez	$a2, $a2, $a5
	maskeqz	$a1, $a1, $a5
	or	$a1, $a1, $a2
	bne	$a3, $a4, .LBB9_23
# %bb.7:
	sltui	$a2, $a3, 1
	slli.w	$a4, $a3, 1
	masknez	$a4, $a4, $a2
	ori	$a5, $zero, 1
	maskeqz	$a2, $a5, $a2
	or	$s2, $a2, $a4
	bge	$a3, $s2, .LBB9_23
# %bb.8:
	move	$s3, $a1
	beqz	$s2, .LBB9_18
# %bb.9:
	slli.d	$a2, $s2, 3
	ori	$a1, $zero, 16
	move	$s4, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
	ld.w	$a3, $s4, 284
	move	$s0, $a0
	move	$a0, $s4
	ld.d	$a2, $a0, 296
	blez	$a3, .LBB9_19
.LBB9_10:                               # %.lr.ph.i.i.i
	ori	$a5, $zero, 8
	move	$a4, $zero
	move	$a1, $s3
	bltu	$a3, $a5, .LBB9_15
# %bb.11:                               # %.lr.ph.i.i.i
	sub.d	$a5, $s0, $a2
	ori	$a6, $zero, 64
	bltu	$a5, $a6, .LBB9_15
# %bb.12:                               # %vector.ph
	bstrpick.d	$a4, $a3, 30, 3
	slli.d	$a4, $a4, 3
	addi.d	$a5, $a2, 32
	addi.d	$a6, $s0, 32
	move	$a7, $a4
	.p2align	4, , 16
.LBB9_13:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a5, -32
	xvld	$xr1, $a5, 0
	xvst	$xr0, $a6, -32
	xvst	$xr1, $a6, 0
	addi.d	$a7, $a7, -8
	addi.d	$a5, $a5, 64
	addi.d	$a6, $a6, 64
	bnez	$a7, .LBB9_13
# %bb.14:                               # %middle.block
	beq	$a4, $a3, .LBB9_17
.LBB9_15:                               # %scalar.ph.preheader
	sub.d	$a5, $a3, $a4
	alsl.d	$a6, $a4, $a2, 3
	alsl.d	$a4, $a4, $s0, 3
	.p2align	4, , 16
.LBB9_16:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a7, $a6, 0
	st.d	$a7, $a4, 0
	addi.d	$a5, $a5, -1
	addi.d	$a6, $a6, 8
	addi.d	$a4, $a4, 8
	bnez	$a5, .LBB9_16
.LBB9_17:                               # %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE4copyEiiPS1_.exit.thread.i.i
	ld.bu	$a4, $a0, 304
	bnez	$a4, .LBB9_21
	b	.LBB9_22
.LBB9_18:
	move	$s0, $zero
	ld.d	$a2, $a0, 296
	bgtz	$a3, .LBB9_10
.LBB9_19:                               # %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE4copyEiiPS1_.exit.i.i
	move	$a1, $s3
	beqz	$a2, .LBB9_22
# %bb.20:                               # %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE4copyEiiPS1_.exit.i.i
	ld.b	$a4, $a0, 304
	andi	$a4, $a4, 1
	beqz	$a4, .LBB9_22
.LBB9_21:
	move	$s4, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
	move	$a1, $s3
	move	$a0, $s4
	ld.w	$a3, $s4, 284
.LBB9_22:                               # %_ZN20btAlignedObjectArrayIP17btCollisionObjectE10deallocateEv.exit.i.i
	ori	$a2, $zero, 1
	st.b	$a2, $a0, 304
	st.d	$s0, $a0, 296
	st.w	$s2, $a0, 288
.LBB9_23:                               # %_ZN20btAlignedObjectArrayIP17btCollisionObjectE9push_backERKS1_.exit
	ld.d	$a2, $a0, 312
	ld.d	$a4, $a0, 296
	slli.d	$a5, $a3, 3
	ld.d	$a6, $a2, 0
	stx.d	$s1, $a4, $a5
	addi.d	$a3, $a3, 1
	st.w	$a3, $a0, 284
	ld.d	$a3, $a6, 16
	move	$a0, $a2
	move	$a2, $fp
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	jr	$a3
.Lfunc_end9:
	.size	_ZN24btPairCachingGhostObject28addOverlappingObjectInternalEP17btBroadphaseProxyS1_, .Lfunc_end9-_ZN24btPairCachingGhostObject28addOverlappingObjectInternalEP17btBroadphaseProxyS1_
	.cfi_endproc
                                        # -- End function
	.globl	_ZN24btPairCachingGhostObject31removeOverlappingObjectInternalEP17btBroadphaseProxyP12btDispatcherS1_ # -- Begin function _ZN24btPairCachingGhostObject31removeOverlappingObjectInternalEP17btBroadphaseProxyP12btDispatcherS1_
	.p2align	5
	.type	_ZN24btPairCachingGhostObject31removeOverlappingObjectInternalEP17btBroadphaseProxyP12btDispatcherS1_,@function
_ZN24btPairCachingGhostObject31removeOverlappingObjectInternalEP17btBroadphaseProxyP12btDispatcherS1_: # @_ZN24btPairCachingGhostObject31removeOverlappingObjectInternalEP17btBroadphaseProxyP12btDispatcherS1_
	.cfi_startproc
# %bb.0:
	ld.w	$a5, $a0, 284
	blez	$a5, .LBB10_6
# %bb.1:                                # %.lr.ph.i
	move	$a4, $a2
	move	$a2, $a1
	move	$t0, $zero
	ld.d	$t1, $a1, 0
	ld.d	$a1, $a0, 192
	ld.d	$a6, $a0, 296
	sltui	$a7, $a3, 1
	masknez	$a3, $a3, $a7
	maskeqz	$a1, $a1, $a7
	or	$a1, $a1, $a3
	move	$a3, $a5
	move	$a7, $a6
	.p2align	4, , 16
.LBB10_2:                               # =>This Inner Loop Header: Depth=1
	ld.d	$t2, $a7, 0
	beq	$t2, $t1, .LBB10_4
# %bb.3:                                #   in Loop: Header=BB10_2 Depth=1
	addi.d	$a7, $a7, 8
	addi.d	$a3, $a3, -1
	addi.w	$t0, $t0, 1
	bnez	$a3, .LBB10_2
	b	.LBB10_6
.LBB10_4:                               # %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE16findLinearSearchERKS1_.exit
	bge	$t0, $a5, .LBB10_6
# %bb.5:
	addi.w	$a5, $a5, -1
	ld.d	$a3, $a0, 312
	slli.d	$t0, $a5, 3
	ldx.d	$a6, $a6, $t0
	ld.d	$t0, $a3, 0
	st.d	$a6, $a7, 0
	st.w	$a5, $a0, 284
	ld.d	$a5, $t0, 24
	move	$a0, $a3
	move	$a3, $a4
	jr	$a5
.LBB10_6:                               # %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE16findLinearSearchERKS1_.exit.thread
	ret
.Lfunc_end10:
	.size	_ZN24btPairCachingGhostObject31removeOverlappingObjectInternalEP17btBroadphaseProxyP12btDispatcherS1_, .Lfunc_end10-_ZN24btPairCachingGhostObject31removeOverlappingObjectInternalEP17btBroadphaseProxyP12btDispatcherS1_
	.cfi_endproc
                                        # -- End function
	.globl	_ZNK13btGhostObject15convexSweepTestEPK13btConvexShapeRK11btTransformS5_RN16btCollisionWorld20ConvexResultCallbackEf # -- Begin function _ZNK13btGhostObject15convexSweepTestEPK13btConvexShapeRK11btTransformS5_RN16btCollisionWorld20ConvexResultCallbackEf
	.p2align	5
	.type	_ZNK13btGhostObject15convexSweepTestEPK13btConvexShapeRK11btTransformS5_RN16btCollisionWorld20ConvexResultCallbackEf,@function
_ZNK13btGhostObject15convexSweepTestEPK13btConvexShapeRK11btTransformS5_RN16btCollisionWorld20ConvexResultCallbackEf: # @_ZNK13btGhostObject15convexSweepTestEPK13btConvexShapeRK11btTransformS5_RN16btCollisionWorld20ConvexResultCallbackEf
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
	move	$s2, $a2
	xvld	$xr1, $a2, 0
	xvld	$xr2, $a2, 32
	fmov.s	$fs0, $fa0
	move	$fp, $a4
	move	$s3, $a3
	move	$s0, $a1
	move	$s1, $a0
	xvld	$xr0, $a3, 32
	xvst	$xr1, $sp, 192
	xvst	$xr2, $sp, 224
	xvld	$xr1, $a3, 0
	xvst	$xr0, $sp, 160
	fld.s	$fa0, $sp, 176
	fld.s	$fa2, $sp, 240
	fld.s	$fa3, $sp, 180
	fld.s	$fa4, $sp, 244
	fld.s	$fa5, $sp, 184
	fld.s	$fa6, $sp, 248
	xvst	$xr1, $sp, 128
	fsub.s	$fa0, $fa0, $fa2
	fsub.s	$fa1, $fa3, $fa4
	fsub.s	$fa2, $fa5, $fa6
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa1
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa2
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $sp, 96
	st.d	$a1, $sp, 104
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 128
	addi.d	$a2, $sp, 16
	addi.d	$a3, $sp, 256
	pcaddu18i	$ra, %call36(_ZN15btTransformUtil22calculateDiffAxisAngleERK11btTransformS2_R9btVector3Rf)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $sp, 16
	fld.s	$fa1, $sp, 256
	fld.s	$fa2, $sp, 20
	fld.s	$fa3, $sp, 24
	fmul.s	$fa0, $fa0, $fa1
	fmul.s	$fa2, $fa1, $fa2
	fmul.s	$fa1, $fa1, $fa3
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa2
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa1
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $sp, 80
	st.d	$a1, $sp, 88
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 64
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 256
	pcaddu18i	$ra, %call36(_ZNK11btMatrix3x311getRotationER12btQuaternion)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256
	ld.d	$a1, $sp, 264
	movgr2fr.w	$fa0, $a0
	srli.d	$a0, $a0, 32
	movgr2fr.w	$fa1, $a0
	movgr2fr.w	$fa2, $a1
	srli.d	$a0, $a1, 32
	movgr2fr.w	$fa3, $a0
	fmul.s	$fa4, $fa1, $fa1
	fmadd.s	$fa4, $fa0, $fa0, $fa4
	fmadd.s	$fa4, $fa2, $fa2, $fa4
	fmadd.s	$fa4, $fa3, $fa3, $fa4
	vldi	$vr5, -1280
	fdiv.s	$fa4, $fa5, $fa4
	fmul.s	$fa5, $fa4, $fa0
	fmul.s	$fa6, $fa4, $fa1
	fmul.s	$fa4, $fa4, $fa2
	fmul.s	$fa7, $fa5, $fa3
	fmul.s	$ft0, $fa6, $fa3
	fmul.s	$fa3, $fa4, $fa3
	fmul.s	$fa5, $fa5, $fa0
	fmul.s	$ft1, $fa6, $fa0
	fmul.s	$fa0, $fa4, $fa0
	fmul.s	$fa6, $fa6, $fa1
	fmul.s	$fa1, $fa4, $fa1
	fmul.s	$fa2, $fa4, $fa2
	fadd.s	$fa4, $fa6, $fa2
	vldi	$vr10, -1168
	fsub.s	$fa4, $ft2, $fa4
	fsub.s	$ft3, $ft1, $fa3
	fadd.s	$ft4, $fa0, $ft0
	fadd.s	$fa3, $ft1, $fa3
	fadd.s	$fa2, $fa5, $fa2
	fsub.s	$fa2, $ft2, $fa2
	fsub.s	$ft1, $fa1, $fa7
	fsub.s	$fa0, $fa0, $ft0
	fadd.s	$fa1, $fa1, $fa7
	fadd.s	$fa5, $fa5, $fa6
	fsub.s	$fa5, $ft2, $fa5
	fst.s	$fa4, $sp, 16
	fst.s	$ft3, $sp, 20
	fst.s	$ft4, $sp, 24
	st.w	$zero, $sp, 28
	fst.s	$fa3, $sp, 32
	fst.s	$fa2, $sp, 36
	fst.s	$ft1, $sp, 40
	st.w	$zero, $sp, 44
	fst.s	$fa0, $sp, 48
	fst.s	$fa1, $sp, 52
	fst.s	$fa5, $sp, 56
	st.w	$zero, $sp, 60
	addi.d	$a1, $sp, 16
	addi.d	$a2, $sp, 96
	addi.d	$a3, $sp, 80
	vldi	$vr0, -1168
	addi.d	$a4, $sp, 256
	addi.d	$a5, $sp, 112
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNK16btCollisionShape21calculateTemporalAabbERK11btTransformRK9btVector3S5_fRS3_S6_)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 284
	blez	$a0, .LBB11_6
# %bb.1:                                # %.lr.ph
	move	$s6, $zero
	move	$s7, $zero
	addi.d	$s2, $s2, 48
	addi.d	$s3, $s3, 48
	lu12i.w	$s8, 260096
	b	.LBB11_3
	.p2align	4, , 16
.LBB11_2:                               #   in Loop: Header=BB11_3 Depth=1
	ld.w	$a0, $s1, 284
	addi.d	$s7, $s7, 1
	addi.d	$s6, $s6, 8
	bge	$s7, $a0, .LBB11_6
.LBB11_3:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 296
	ldx.d	$s4, $a0, $s6
	ld.d	$a0, $fp, 0
	ld.d	$a1, $s4, 192
	ld.d	$a2, $a0, 16
	move	$a0, $fp
	jirl	$ra, $a2, 0
	beqz	$a0, .LBB11_2
# %bb.4:                                #   in Loop: Header=BB11_3 Depth=1
	ld.d	$a0, $s4, 200
	ld.d	$a1, $a0, 0
	ld.d	$a4, $a1, 16
	addi.d	$s5, $s4, 8
	addi.d	$a2, $sp, 16
	addi.d	$a3, $sp, 96
	move	$a1, $s5
	jirl	$ra, $a4, 0
	fld.s	$fa0, $sp, 16
	fld.s	$fa1, $sp, 256
	fld.s	$fa2, $sp, 20
	fld.s	$fa3, $sp, 260
	fld.s	$fa4, $sp, 24
	fld.s	$fa5, $sp, 264
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa1, $fa2, $fa3
	fadd.s	$fa2, $fa4, $fa5
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa1
	fld.s	$fa0, $sp, 96
	fld.s	$fa1, $sp, 112
	fld.s	$fa3, $sp, 100
	fld.s	$fa4, $sp, 116
	movfr2gr.s	$a2, $fa2
	bstrins.d	$a0, $a1, 63, 32
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa1, $fa3, $fa4
	fld.s	$fa2, $sp, 104
	fld.s	$fa3, $sp, 120
	bstrpick.d	$a1, $a2, 31, 0
	st.d	$a0, $sp, 16
	st.d	$a1, $sp, 24
	fadd.s	$fa2, $fa2, $fa3
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa1
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa2
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $sp, 96
	st.d	$a1, $sp, 104
	st.w	$s8, $sp, 12
	addi.d	$a2, $sp, 16
	addi.d	$a3, $sp, 96
	addi.d	$a4, $sp, 12
	addi.d	$a5, $sp, 80
	move	$a0, $s2
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_Z9btRayAabbRK9btVector3S1_S1_S1_RfRS_)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB11_2
# %bb.5:                                #   in Loop: Header=BB11_3 Depth=1
	ld.d	$a4, $s4, 200
	addi.d	$a1, $sp, 192
	addi.d	$a2, $sp, 128
	move	$a0, $s0
	move	$a3, $s4
	move	$a5, $s5
	move	$a6, $fp
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(_ZN16btCollisionWorld17objectQuerySingleEPK13btConvexShapeRK11btTransformS5_P17btCollisionObjectPK16btCollisionShapeS5_RNS_20ConvexResultCallbackEf)
	jirl	$ra, $ra, 0
	b	.LBB11_2
.LBB11_6:                               # %._crit_edge
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
.Lfunc_end11:
	.size	_ZNK13btGhostObject15convexSweepTestEPK13btConvexShapeRK11btTransformS5_RN16btCollisionWorld20ConvexResultCallbackEf, .Lfunc_end11-_ZNK13btGhostObject15convexSweepTestEPK13btConvexShapeRK11btTransformS5_RN16btCollisionWorld20ConvexResultCallbackEf
	.cfi_endproc
                                        # -- End function
	.section	.text._Z9btRayAabbRK9btVector3S1_S1_S1_RfRS_,"axG",@progbits,_Z9btRayAabbRK9btVector3S1_S1_S1_RfRS_,comdat
	.weak	_Z9btRayAabbRK9btVector3S1_S1_S1_RfRS_ # -- Begin function _Z9btRayAabbRK9btVector3S1_S1_S1_RfRS_
	.p2align	5
	.type	_Z9btRayAabbRK9btVector3S1_S1_S1_RfRS_,@function
_Z9btRayAabbRK9btVector3S1_S1_S1_RfRS_: # @_Z9btRayAabbRK9btVector3S1_S1_S1_RfRS_
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -48
	.cfi_def_cfa_offset 48
	fld.s	$fa1, $a3, 0
	fld.s	$fa2, $a2, 0
	fld.s	$fa4, $a3, 4
	fld.s	$fa5, $a2, 4
	fld.s	$fa6, $a3, 8
	fld.s	$fa7, $a2, 8
	fsub.s	$fa0, $fa1, $fa2
	fsub.s	$fa3, $fa4, $fa5
	fsub.s	$ft1, $fa6, $fa7
	vldi	$vr10, -1184
	fmul.s	$ft0, $fa0, $ft2
	fmul.s	$fa3, $fa3, $ft2
	fmul.s	$fa0, $ft1, $ft2
	fadd.s	$fa1, $fa1, $fa2
	fadd.s	$fa2, $fa4, $fa5
	fadd.s	$fa4, $fa6, $fa7
	fmul.s	$fa5, $fa1, $ft2
	fld.s	$fa1, $a0, 0
	fmul.s	$fa2, $fa2, $ft2
	fld.s	$fa6, $a0, 4
	fmul.s	$ft5, $fa4, $ft2
	fsub.s	$ft1, $fa1, $fa5
	fcmp.clt.s	$fcc0, $ft0, $ft1
	movcf2gr	$a2, $fcc0
	st.d	$a2, $sp, 32
	fsub.s	$fa4, $fa6, $fa2
	fcmp.clt.s	$fcc0, $fa3, $fa4
	movcf2gr	$a2, $fcc0
	st.d	$a2, $sp, 40
	fld.s	$fa1, $a0, 8
	fneg.s	$ft2, $fa3
	fcmp.clt.s	$fcc0, $fa4, $ft2
	movcf2gr	$a0, $fcc0
	st.d	$a0, $sp, 24
	fld.s	$fa6, $a1, 0
	fsub.s	$fa1, $fa1, $ft5
	fcmp.clt.s	$fcc0, $fa0, $fa1
	movcf2gr	$a0, $fcc0
	st.d	$a0, $sp, 16
	fld.s	$fa7, $a1, 4
	fsub.s	$ft3, $fa6, $fa5
	fneg.s	$ft4, $fa0
	fcmp.clt.s	$fcc6, $fa1, $ft4
	fsub.s	$fa7, $fa7, $fa2
	fld.s	$fa2, $a1, 8
	fcmp.clt.s	$fcc2, $ft0, $ft3
	fcmp.clt.s	$fcc0, $fa3, $fa7
	movcf2gr	$a0, $fcc0
	st.d	$a0, $sp, 8
	fcmp.clt.s	$fcc7, $fa7, $ft2
	fsub.s	$fa2, $fa2, $ft5
	fneg.s	$fa6, $ft0
	fcmp.clt.s	$fcc5, $fa0, $fa2
	fcmp.clt.s	$fcc3, $fa2, $ft4
	fcmp.clt.s	$fcc1, $ft1, $fa6
	fcmp.clt.s	$fcc0, $ft3, $fa6
	ld.d	$a0, $sp, 32
	movgr2cf	$fcc4, $a0
	movcf2gr	$a0, $fcc4
	movcf2gr	$a1, $fcc1
	ld.d	$a2, $sp, 24
	movgr2cf	$fcc1, $a2
	movcf2gr	$a2, $fcc1
	ld.d	$a3, $sp, 40
	movgr2cf	$fcc1, $a3
	movcf2gr	$a3, $fcc1
	movcf2gr	$a6, $fcc6
	ld.d	$a7, $sp, 16
	movgr2cf	$fcc1, $a7
	movcf2gr	$a7, $fcc1
	movcf2gr	$t0, $fcc2
	movcf2gr	$t1, $fcc0
	movcf2gr	$t2, $fcc7
	ld.d	$t3, $sp, 8
	movgr2cf	$fcc0, $t3
	movcf2gr	$t3, $fcc0
	movcf2gr	$t4, $fcc3
	movcf2gr	$t5, $fcc5
	slli.d	$a0, $a0, 3
	or	$a0, $a0, $a1
	slli.d	$a1, $a2, 1
	or	$a0, $a1, $a0
	slli.d	$a1, $a3, 4
	or	$a0, $a0, $a1
	slli.d	$a1, $a6, 2
	or	$a0, $a1, $a0
	slli.d	$a1, $a7, 5
	or	$a0, $a0, $a1
	slli.d	$a1, $t0, 3
	or	$a1, $a1, $t1
	slli.d	$a2, $t2, 1
	or	$a1, $a2, $a1
	slli.d	$a2, $t3, 4
	or	$a1, $a1, $a2
	slli.d	$a2, $t4, 2
	slli.d	$a3, $t5, 5
	or	$a1, $a2, $a1
	or	$a1, $a1, $a3
	and	$a0, $a0, $a1
	addi.w	$a0, $a0, 0
	beqz	$a0, .LBB12_2
# %bb.1:
	move	$a0, $zero
	addi.d	$sp, $sp, 48
	ret
.LBB12_2:                               # %.preheader
	fld.s	$fa5, $a4, 0
	fcmp.cule.s	$fcc0, $fa6, $ft1
	fsub.s	$ft7, $ft3, $ft1
	bcnez	$fcc0, .LBB12_7
# %bb.3:
	fneg.s	$fa6, $ft1
	fsub.s	$fa6, $fa6, $ft0
	fdiv.s	$ft8, $fa6, $ft7
	movgr2fr.w	$fa6, $zero
	fcmp.cult.s	$fcc0, $ft8, $fa6
	bcnez	$fcc0, .LBB12_10
# %bb.4:
	vldi	$vr6, -1168
	fcmp.cule.s	$fcc0, $ft2, $fa4
	fsub.s	$ft5, $fa7, $fa4
	bcnez	$fcc0, .LBB12_11
.LBB12_5:
	fneg.s	$ft2, $fa4
	fsub.s	$ft2, $ft2, $fa3
	fdiv.s	$ft6, $ft2, $ft5
	fcmp.cult.s	$fcc0, $ft6, $ft8
	bceqz	$fcc0, .LBB12_18
# %bb.6:
	movgr2fr.w	$ft2, $zero
	fcmp.cule.s	$fcc0, $ft4, $fa1
	fsub.s	$ft6, $fa2, $fa1
	bcnez	$fcc0, .LBB12_15
	b	.LBB12_19
.LBB12_7:
	fcmp.cule.s	$fcc0, $fa6, $ft3
	movgr2fr.w	$fa6, $zero
	bcnez	$fcc0, .LBB12_10
# %bb.8:
	fneg.s	$ft5, $ft1
	fsub.s	$ft5, $ft5, $ft0
	fdiv.s	$ft5, $ft5, $ft7
	fcmp.cule.s	$fcc0, $fa5, $ft5
	bcnez	$fcc0, .LBB12_10
# %bb.9:
	fmov.s	$fa5, $ft5
.LBB12_10:                              # %_Z8btSetMinIfEvRT_RKS0_.exit
	fmov.s	$ft8, $fa6
	fcmp.cule.s	$fcc0, $ft2, $fa4
	fsub.s	$ft5, $fa7, $fa4
	bceqz	$fcc0, .LBB12_5
.LBB12_11:
	fcmp.cule.s	$fcc0, $ft2, $fa7
	movgr2fr.w	$ft2, $zero
	bcnez	$fcc0, .LBB12_14
# %bb.12:
	fneg.s	$ft6, $fa4
	fsub.s	$ft6, $ft6, $fa3
	fdiv.s	$ft6, $ft6, $ft5
	fcmp.cule.s	$fcc0, $fa5, $ft6
	bcnez	$fcc0, .LBB12_14
# %bb.13:
	fmov.s	$fa5, $ft6
.LBB12_14:                              # %_Z8btSetMinIfEvRT_RKS0_.exit.1
	fcmp.cule.s	$fcc0, $ft4, $fa1
	fsub.s	$ft6, $fa2, $fa1
	bceqz	$fcc0, .LBB12_19
.LBB12_15:
	fcmp.cule.s	$fcc0, $ft4, $fa2
	movgr2fr.w	$ft4, $zero
	bcnez	$fcc0, .LBB12_21
# %bb.16:
	fneg.s	$ft9, $fa1
	fsub.s	$ft9, $ft9, $fa0
	fdiv.s	$ft9, $ft9, $ft6
	fcmp.cule.s	$fcc0, $fa5, $ft9
	bcnez	$fcc0, .LBB12_21
# %bb.17:
	fmov.s	$fa5, $ft9
	fcmp.cule.s	$fcc0, $ft1, $ft0
	bcnez	$fcc0, .LBB12_22
	b	.LBB12_26
.LBB12_18:
	movgr2fr.w	$fa6, $zero
	vldi	$vr10, -1168
	fmov.s	$ft8, $ft6
	fcmp.cule.s	$fcc0, $ft4, $fa1
	fsub.s	$ft6, $fa2, $fa1
	bcnez	$fcc0, .LBB12_15
.LBB12_19:
	fneg.s	$ft4, $fa1
	fsub.s	$ft4, $ft4, $fa0
	fdiv.s	$ft9, $ft4, $ft6
	fcmp.cult.s	$fcc0, $ft9, $ft8
	bceqz	$fcc0, .LBB12_25
# %bb.20:
	movgr2fr.w	$ft4, $zero
.LBB12_21:                              # %_Z8btSetMinIfEvRT_RKS0_.exit.2
	fcmp.cule.s	$fcc0, $ft1, $ft0
	bceqz	$fcc0, .LBB12_26
.LBB12_22:
	fcmp.cule.s	$fcc0, $ft3, $ft0
	bcnez	$fcc0, .LBB12_27
# %bb.23:
	fsub.s	$ft0, $ft0, $ft1
	fdiv.s	$ft0, $ft0, $ft7
	fcmp.cule.s	$fcc0, $fa5, $ft0
	bcnez	$fcc0, .LBB12_27
# %bb.24:
	fmov.s	$fa5, $ft0
	fmov.s	$ft0, $ft8
	fcmp.cule.s	$fcc0, $fa4, $fa3
	bcnez	$fcc0, .LBB12_28
	b	.LBB12_32
.LBB12_25:
	movgr2fr.w	$ft2, $zero
	vldi	$vr12, -1168
	fmov.s	$fa6, $ft2
	fmov.s	$ft8, $ft9
	fcmp.cule.s	$fcc0, $ft1, $ft0
	bcnez	$fcc0, .LBB12_22
.LBB12_26:
	fsub.s	$ft0, $ft0, $ft1
	fdiv.s	$ft0, $ft0, $ft7
	fcmp.cult.s	$fcc0, $ft0, $ft8
	bceqz	$fcc0, .LBB12_31
.LBB12_27:                              # %_Z8btSetMinIfEvRT_RKS0_.exit.1155
	fmov.s	$ft0, $ft8
	fcmp.cule.s	$fcc0, $fa4, $fa3
	bceqz	$fcc0, .LBB12_32
.LBB12_28:
	fcmp.cule.s	$fcc0, $fa7, $fa3
	bcnez	$fcc0, .LBB12_33
# %bb.29:
	fsub.s	$fa3, $fa3, $fa4
	fdiv.s	$fa3, $fa3, $ft5
	fcmp.cule.s	$fcc0, $fa5, $fa3
	bcnez	$fcc0, .LBB12_33
# %bb.30:
	fmov.s	$fa5, $fa3
	fmov.s	$fa3, $ft0
	fcmp.cule.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB12_34
	b	.LBB12_38
.LBB12_31:
	movgr2fr.w	$ft4, $zero
	vldi	$vr6, -1040
	fmov.s	$ft2, $ft4
	fcmp.cule.s	$fcc0, $fa4, $fa3
	bcnez	$fcc0, .LBB12_28
.LBB12_32:
	fsub.s	$fa3, $fa3, $fa4
	fdiv.s	$fa3, $fa3, $ft5
	fcmp.cult.s	$fcc0, $fa3, $ft0
	bceqz	$fcc0, .LBB12_37
.LBB12_33:                              # %_Z8btSetMinIfEvRT_RKS0_.exit.1.1
	fmov.s	$fa3, $ft0
	fcmp.cule.s	$fcc0, $fa1, $fa0
	bceqz	$fcc0, .LBB12_38
.LBB12_34:
	fcmp.cule.s	$fcc0, $fa2, $fa0
	bcnez	$fcc0, .LBB12_39
# %bb.35:
	fsub.s	$fa0, $fa0, $fa1
	fdiv.s	$fa0, $fa0, $ft6
	fcmp.cule.s	$fcc0, $fa5, $fa0
	bcnez	$fcc0, .LBB12_39
# %bb.36:
	fmov.s	$fa5, $fa0
	fmov.s	$fa0, $fa3
	fcmp.cult.s	$fcc0, $fa5, $fa0
	bcnez	$fcc0, .LBB12_40
	b	.LBB12_42
.LBB12_37:
	movgr2fr.w	$ft4, $zero
	vldi	$vr10, -1040
	fmov.s	$fa6, $ft4
	fcmp.cule.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB12_34
.LBB12_38:
	fsub.s	$fa0, $fa0, $fa1
	fdiv.s	$fa0, $fa0, $ft6
	fcmp.cult.s	$fcc0, $fa0, $fa3
	bceqz	$fcc0, .LBB12_41
.LBB12_39:                              # %_Z8btSetMinIfEvRT_RKS0_.exit.2.1
	fmov.s	$fa0, $fa3
	fcmp.cult.s	$fcc0, $fa5, $fa0
	bceqz	$fcc0, .LBB12_42
.LBB12_40:
	move	$a0, $zero
	addi.d	$sp, $sp, 48
	ret
.LBB12_41:
	movgr2fr.w	$ft2, $zero
	vldi	$vr12, -1040
	fmov.s	$fa6, $ft2
	fcmp.cult.s	$fcc0, $fa5, $fa0
	bcnez	$fcc0, .LBB12_40
.LBB12_42:
	fst.s	$fa0, $a4, 0
	fst.s	$fa6, $a5, 0
	fst.s	$ft2, $a5, 4
	fst.s	$ft4, $a5, 8
	st.w	$zero, $a5, 12
	ori	$a0, $zero, 1
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end12:
	.size	_Z9btRayAabbRK9btVector3S1_S1_S1_RfRS_, .Lfunc_end12-_Z9btRayAabbRK9btVector3S1_S1_S1_RfRS_
	.cfi_endproc
                                        # -- End function
	.text
	.globl	_ZNK13btGhostObject7rayTestERK9btVector3S2_RN16btCollisionWorld17RayResultCallbackE # -- Begin function _ZNK13btGhostObject7rayTestERK9btVector3S2_RN16btCollisionWorld17RayResultCallbackE
	.p2align	5
	.type	_ZNK13btGhostObject7rayTestERK9btVector3S2_RN16btCollisionWorld17RayResultCallbackE,@function
_ZNK13btGhostObject7rayTestERK9btVector3S2_RN16btCollisionWorld17RayResultCallbackE: # @_ZNK13btGhostObject7rayTestERK9btVector3S2_RN16btCollisionWorld17RayResultCallbackE
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	move	$s0, $a0
	lu12i.w	$a0, 260096
	st.w	$a0, $sp, 80
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 84
	vld	$vr1, $a1, 0
	st.w	$a0, $sp, 100
	vst	$vr0, $sp, 104
	st.d	$a0, $sp, 120
	vst	$vr1, $sp, 128
	st.w	$a0, $sp, 16
	vst	$vr0, $sp, 20
	vld	$vr1, $a2, 0
	ld.w	$a1, $s0, 284
	st.w	$a0, $sp, 36
	vst	$vr0, $sp, 40
	st.d	$a0, $sp, 56
	vst	$vr1, $sp, 64
	blez	$a1, .LBB13_5
# %bb.1:                                # %.lr.ph
	move	$fp, $a3
	move	$s2, $zero
	move	$s3, $zero
	b	.LBB13_3
	.p2align	4, , 16
.LBB13_2:                               #   in Loop: Header=BB13_3 Depth=1
	ld.w	$a0, $s0, 284
	addi.d	$s3, $s3, 1
	addi.d	$s2, $s2, 8
	bge	$s3, $a0, .LBB13_5
.LBB13_3:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 296
	ldx.d	$s1, $a0, $s2
	ld.d	$a0, $fp, 0
	ld.d	$a1, $s1, 192
	ld.d	$a2, $a0, 16
	move	$a0, $fp
	jirl	$ra, $a2, 0
	beqz	$a0, .LBB13_2
# %bb.4:                                #   in Loop: Header=BB13_3 Depth=1
	ld.d	$a3, $s1, 200
	addi.d	$a4, $s1, 8
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 16
	move	$a2, $s1
	move	$a5, $fp
	pcaddu18i	$ra, %call36(_ZN16btCollisionWorld13rayTestSingleERK11btTransformS2_P17btCollisionObjectPK16btCollisionShapeS2_RNS_17RayResultCallbackE)
	jirl	$ra, $ra, 0
	b	.LBB13_2
.LBB13_5:                               # %._crit_edge
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 184                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 192
	ret
.Lfunc_end13:
	.size	_ZNK13btGhostObject7rayTestERK9btVector3S2_RN16btCollisionWorld17RayResultCallbackE, .Lfunc_end13-_ZNK13btGhostObject7rayTestERK9btVector3S2_RN16btCollisionWorld17RayResultCallbackE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN17btCollisionObject24checkCollideWithOverrideEPS_,"axG",@progbits,_ZN17btCollisionObject24checkCollideWithOverrideEPS_,comdat
	.weak	_ZN17btCollisionObject24checkCollideWithOverrideEPS_ # -- Begin function _ZN17btCollisionObject24checkCollideWithOverrideEPS_
	.p2align	5
	.type	_ZN17btCollisionObject24checkCollideWithOverrideEPS_,@function
_ZN17btCollisionObject24checkCollideWithOverrideEPS_: # @_ZN17btCollisionObject24checkCollideWithOverrideEPS_
# %bb.0:
	ori	$a0, $zero, 1
	ret
.Lfunc_end14:
	.size	_ZN17btCollisionObject24checkCollideWithOverrideEPS_, .Lfunc_end14-_ZN17btCollisionObject24checkCollideWithOverrideEPS_
                                        # -- End function
	.section	.text._ZN17btCollisionObject17setCollisionShapeEP16btCollisionShape,"axG",@progbits,_ZN17btCollisionObject17setCollisionShapeEP16btCollisionShape,comdat
	.weak	_ZN17btCollisionObject17setCollisionShapeEP16btCollisionShape # -- Begin function _ZN17btCollisionObject17setCollisionShapeEP16btCollisionShape
	.p2align	5
	.type	_ZN17btCollisionObject17setCollisionShapeEP16btCollisionShape,@function
_ZN17btCollisionObject17setCollisionShapeEP16btCollisionShape: # @_ZN17btCollisionObject17setCollisionShapeEP16btCollisionShape
# %bb.0:
	st.d	$a1, $a0, 200
	st.d	$a1, $a0, 208
	ret
.Lfunc_end15:
	.size	_ZN17btCollisionObject17setCollisionShapeEP16btCollisionShape, .Lfunc_end15-_ZN17btCollisionObject17setCollisionShapeEP16btCollisionShape
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZN15btTransformUtil22calculateDiffAxisAngleERK11btTransformS2_R9btVector3Rf
.LCPI16_0:
	.word	0x28800000                      # float 1.42108547E-14
	.section	.text._ZN15btTransformUtil22calculateDiffAxisAngleERK11btTransformS2_R9btVector3Rf,"axG",@progbits,_ZN15btTransformUtil22calculateDiffAxisAngleERK11btTransformS2_R9btVector3Rf,comdat
	.weak	_ZN15btTransformUtil22calculateDiffAxisAngleERK11btTransformS2_R9btVector3Rf
	.p2align	5
	.type	_ZN15btTransformUtil22calculateDiffAxisAngleERK11btTransformS2_R9btVector3Rf,@function
_ZN15btTransformUtil22calculateDiffAxisAngleERK11btTransformS2_R9btVector3Rf: # @_ZN15btTransformUtil22calculateDiffAxisAngleERK11btTransformS2_R9btVector3Rf
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 56, -32
	.cfi_offset 57, -40
	.cfi_offset 58, -48
	move	$s0, $a3
	move	$fp, $a2
	fld.s	$fa0, $a0, 36
	fld.s	$fa1, $a0, 24
	fld.s	$fa2, $a0, 20
	fld.s	$fa3, $a0, 40
	fneg.s	$fa4, $fa0
	fmul.s	$fa5, $fa1, $fa4
	fld.s	$fa6, $a0, 16
	fld.s	$fa7, $a0, 32
	fmadd.s	$fa5, $fa2, $fa3, $fa5
	fneg.s	$ft0, $fa3
	fmul.s	$ft1, $fa6, $ft0
	fmadd.s	$ft1, $fa1, $fa7, $ft1
	fneg.s	$ft2, $fa7
	fmul.s	$ft3, $fa2, $ft2
	fld.s	$ft4, $a0, 4
	fld.s	$ft5, $a0, 0
	fld.s	$ft6, $a0, 8
	fmadd.s	$ft3, $fa6, $fa0, $ft3
	fmul.s	$ft7, $ft4, $ft1
	fmadd.s	$ft7, $ft5, $fa5, $ft7
	fmadd.s	$ft7, $ft6, $ft3, $ft7
	frecip.s	$ft7, $ft7
	fmul.s	$fa5, $fa5, $ft7
	fmul.s	$ft0, $ft4, $ft0
	fmadd.s	$fa0, $ft6, $fa0, $ft0
	fmul.s	$fa0, $fa0, $ft7
	fneg.s	$ft0, $fa2
	fmul.s	$ft0, $ft6, $ft0
	fmadd.s	$ft0, $ft4, $fa1, $ft0
	fmul.s	$ft0, $ft0, $ft7
	fmul.s	$ft1, $ft1, $ft7
	fmul.s	$ft2, $ft6, $ft2
	fmadd.s	$fa3, $ft5, $fa3, $ft2
	fmul.s	$fa3, $fa3, $ft7
	fneg.s	$fa1, $fa1
	fmul.s	$fa1, $ft5, $fa1
	fmadd.s	$fa1, $ft6, $fa6, $fa1
	fmul.s	$fa1, $fa1, $ft7
	fmul.s	$ft2, $ft3, $ft7
	fmul.s	$fa4, $ft5, $fa4
	fmadd.s	$fa4, $ft4, $fa7, $fa4
	fmul.s	$fa4, $fa4, $ft7
	fneg.s	$fa6, $fa6
	fmul.s	$fa6, $ft4, $fa6
	fmadd.s	$fa2, $ft5, $fa2, $fa6
	fld.s	$fa6, $a1, 4
	fld.s	$fa7, $a1, 0
	fld.s	$ft3, $a1, 8
	fmul.s	$fa2, $fa2, $ft7
	fmul.s	$ft4, $fa6, $ft1
	fmadd.s	$ft4, $fa5, $fa7, $ft4
	fmadd.s	$ft4, $ft2, $ft3, $ft4
	fmul.s	$ft5, $fa6, $fa3
	fmadd.s	$ft5, $fa0, $fa7, $ft5
	fmadd.s	$ft5, $fa4, $ft3, $ft5
	fmul.s	$fa6, $fa6, $fa1
	fmadd.s	$fa6, $ft0, $fa7, $fa6
	fld.s	$fa7, $a1, 20
	fld.s	$ft6, $a1, 16
	fld.s	$ft7, $a1, 24
	fmadd.s	$fa6, $fa2, $ft3, $fa6
	fmul.s	$ft3, $ft1, $fa7
	fmadd.s	$ft3, $fa5, $ft6, $ft3
	fmadd.s	$ft3, $ft2, $ft7, $ft3
	fmul.s	$ft8, $fa3, $fa7
	fmadd.s	$ft8, $fa0, $ft6, $ft8
	fmadd.s	$ft8, $fa4, $ft7, $ft8
	fmul.s	$fa7, $fa1, $fa7
	fmadd.s	$fa7, $ft0, $ft6, $fa7
	fld.s	$ft6, $a1, 36
	fld.s	$ft9, $a1, 32
	fld.s	$ft10, $a1, 40
	fmadd.s	$fa7, $fa2, $ft7, $fa7
	fmul.s	$ft1, $ft1, $ft6
	fmadd.s	$fa5, $fa5, $ft9, $ft1
	fmadd.s	$fa5, $ft2, $ft10, $fa5
	fmul.s	$fa3, $fa3, $ft6
	fmadd.s	$fa0, $fa0, $ft9, $fa3
	fmadd.s	$fa0, $fa4, $ft10, $fa0
	fmul.s	$fa1, $fa1, $ft6
	fmadd.s	$fa1, $ft0, $ft9, $fa1
	fmadd.s	$fa1, $fa2, $ft10, $fa1
	fst.s	$ft4, $sp, 32
	fst.s	$ft5, $sp, 36
	fst.s	$fa6, $sp, 40
	st.w	$zero, $sp, 44
	fst.s	$ft3, $sp, 48
	fst.s	$ft8, $sp, 52
	fst.s	$fa7, $sp, 56
	st.w	$zero, $sp, 60
	fst.s	$fa5, $sp, 64
	fst.s	$fa0, $sp, 68
	fst.s	$fa1, $sp, 72
	st.w	$zero, $sp, 76
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 16
	pcaddu18i	$ra, %call36(_ZNK11btMatrix3x311getRotationER12btQuaternion)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $sp, 20
	fld.s	$fa1, $sp, 16
	fld.s	$fa2, $sp, 24
	fld.s	$fa3, $sp, 28
	fmul.s	$fa4, $fa0, $fa0
	fmadd.s	$fa4, $fa1, $fa1, $fa4
	fmadd.s	$fa4, $fa2, $fa2, $fa4
	fmadd.s	$fa4, $fa3, $fa3, $fa4
	frsqrt.s	$fa4, $fa4
	fmul.s	$fs0, $fa1, $fa4
	fmul.s	$fs1, $fa0, $fa4
	fmul.s	$fs2, $fa2, $fa4
	fmul.s	$fa0, $fa3, $fa4
	pcaddu18i	$ra, %call36(acosf)
	jirl	$ra, $ra, 0
	fadd.s	$fa0, $fa0, $fa0
	fst.s	$fa0, $s0, 0
	pcalau12i	$a0, %pc_hi20(.LCPI16_0)
	fld.s	$fa1, $a0, %pc_lo12(.LCPI16_0)
	fmul.s	$fa0, $fs1, $fs1
	fmadd.s	$fa0, $fs0, $fs0, $fa0
	fmadd.s	$fa0, $fs2, $fs2, $fa0
	fcmp.clt.s	$fcc0, $fa0, $fa1
	st.w	$zero, $fp, 12
	bceqz	$fcc0, .LBB16_2
# %bb.1:
	movgr2fr.w	$fa0, $zero
	vldi	$vr1, -1168
	fmov.s	$fa2, $fa0
	b	.LBB16_3
.LBB16_2:
	frsqrt.s	$fa2, $fa0
	fmul.s	$fa1, $fs0, $fa2
	fmul.s	$fa0, $fs1, $fa2
	fmul.s	$fa2, $fs2, $fa2
.LBB16_3:
	fst.s	$fa1, $fp, 0
	fst.s	$fa0, $fp, 4
	fst.s	$fa2, $fp, 8
	fld.d	$fs2, $sp, 80                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 88                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 96                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.Lfunc_end16:
	.size	_ZN15btTransformUtil22calculateDiffAxisAngleERK11btTransformS2_R9btVector3Rf, .Lfunc_end16-_ZN15btTransformUtil22calculateDiffAxisAngleERK11btTransformS2_R9btVector3Rf
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
	bcnez	$fcc0, .LBB17_3
# %bb.1:
	vldi	$vr0, -1168
	fadd.s	$fa1, $fa3, $fa0
	fsqrt.s	$fa0, $fa1
	fcmp.cor.s	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB17_6
.LBB17_2:                               # %.split
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
	b	.LBB17_5
.LBB17_3:
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
	bceqz	$fcc0, .LBB17_7
.LBB17_4:                               # %.split47
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
.LBB17_5:
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
.LBB17_6:                               # %call.sqrt
	fmov.s	$fa0, $fa1
	move	$fp, $a1
	move	$s0, $a0
	pcaddu18i	$ra, %call36(sqrtf)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	move	$a1, $fp
                                        # kill: def $f0 killed $f0 def $vr0
	b	.LBB17_2
.LBB17_7:                               # %call.sqrt48
	fmov.s	$fa0, $fa1
	move	$s5, $a1
	pcaddu18i	$ra, %call36(sqrtf)
	jirl	$ra, $ra, 0
	move	$a1, $s5
	b	.LBB17_4
.Lfunc_end17:
	.size	_ZNK11btMatrix3x311getRotationER12btQuaternion, .Lfunc_end17-_ZNK11btMatrix3x311getRotationER12btQuaternion
	.cfi_endproc
                                        # -- End function
	.type	_ZTV13btGhostObject,@object     # @_ZTV13btGhostObject
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTV13btGhostObject
	.p2align	3, 0x0
_ZTV13btGhostObject:
	.dword	0
	.dword	_ZTI13btGhostObject
	.dword	_ZN17btCollisionObject24checkCollideWithOverrideEPS_
	.dword	_ZN13btGhostObjectD2Ev
	.dword	_ZN13btGhostObjectD0Ev
	.dword	_ZN17btCollisionObject17setCollisionShapeEP16btCollisionShape
	.dword	_ZN13btGhostObject28addOverlappingObjectInternalEP17btBroadphaseProxyS1_
	.dword	_ZN13btGhostObject31removeOverlappingObjectInternalEP17btBroadphaseProxyP12btDispatcherS1_
	.size	_ZTV13btGhostObject, 64

	.type	_ZTV24btPairCachingGhostObject,@object # @_ZTV24btPairCachingGhostObject
	.globl	_ZTV24btPairCachingGhostObject
	.p2align	3, 0x0
_ZTV24btPairCachingGhostObject:
	.dword	0
	.dword	_ZTI24btPairCachingGhostObject
	.dword	_ZN17btCollisionObject24checkCollideWithOverrideEPS_
	.dword	_ZN24btPairCachingGhostObjectD2Ev
	.dword	_ZN24btPairCachingGhostObjectD0Ev
	.dword	_ZN17btCollisionObject17setCollisionShapeEP16btCollisionShape
	.dword	_ZN24btPairCachingGhostObject28addOverlappingObjectInternalEP17btBroadphaseProxyS1_
	.dword	_ZN24btPairCachingGhostObject31removeOverlappingObjectInternalEP17btBroadphaseProxyP12btDispatcherS1_
	.size	_ZTV24btPairCachingGhostObject, 64

	.type	_ZTI13btGhostObject,@object     # @_ZTI13btGhostObject
	.globl	_ZTI13btGhostObject
	.p2align	3, 0x0
_ZTI13btGhostObject:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS13btGhostObject
	.dword	_ZTI17btCollisionObject
	.size	_ZTI13btGhostObject, 24

	.type	_ZTS13btGhostObject,@object     # @_ZTS13btGhostObject
	.section	.rodata,"a",@progbits
	.globl	_ZTS13btGhostObject
_ZTS13btGhostObject:
	.asciz	"13btGhostObject"
	.size	_ZTS13btGhostObject, 16

	.type	_ZTI24btPairCachingGhostObject,@object # @_ZTI24btPairCachingGhostObject
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTI24btPairCachingGhostObject
	.p2align	3, 0x0
_ZTI24btPairCachingGhostObject:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS24btPairCachingGhostObject
	.dword	_ZTI13btGhostObject
	.size	_ZTI24btPairCachingGhostObject, 24

	.type	_ZTS24btPairCachingGhostObject,@object # @_ZTS24btPairCachingGhostObject
	.section	.rodata,"a",@progbits
	.globl	_ZTS24btPairCachingGhostObject
_ZTS24btPairCachingGhostObject:
	.asciz	"24btPairCachingGhostObject"
	.size	_ZTS24btPairCachingGhostObject, 27

	.globl	_ZN13btGhostObjectC1Ev
	.type	_ZN13btGhostObjectC1Ev,@function
_ZN13btGhostObjectC1Ev = _ZN13btGhostObjectC2Ev
	.globl	_ZN13btGhostObjectD1Ev
	.type	_ZN13btGhostObjectD1Ev,@function
_ZN13btGhostObjectD1Ev = _ZN13btGhostObjectD2Ev
	.globl	_ZN24btPairCachingGhostObjectC1Ev
	.type	_ZN24btPairCachingGhostObjectC1Ev,@function
_ZN24btPairCachingGhostObjectC1Ev = _ZN24btPairCachingGhostObjectC2Ev
	.globl	_ZN24btPairCachingGhostObjectD1Ev
	.type	_ZN24btPairCachingGhostObjectD1Ev,@function
_ZN24btPairCachingGhostObjectD1Ev = _ZN24btPairCachingGhostObjectD2Ev
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
	.addrsig_sym _ZTI13btGhostObject
	.addrsig_sym _ZTVN10__cxxabiv120__si_class_type_infoE
	.addrsig_sym _ZTS13btGhostObject
	.addrsig_sym _ZTI17btCollisionObject
	.addrsig_sym _ZTI24btPairCachingGhostObject
	.addrsig_sym _ZTS24btPairCachingGhostObject
