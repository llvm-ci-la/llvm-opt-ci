	.file	"btOptimizedBvh.cpp"
	.text
	.globl	_ZN14btOptimizedBvhC2Ev         # -- Begin function _ZN14btOptimizedBvhC2Ev
	.p2align	5
	.type	_ZN14btOptimizedBvhC2Ev,@function
_ZN14btOptimizedBvhC2Ev:                # @_ZN14btOptimizedBvhC2Ev
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_ZN14btQuantizedBvhC2Ev)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(_ZTV14btOptimizedBvh+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV14btOptimizedBvh+16)
	st.d	$a0, $fp, 0
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end0:
	.size	_ZN14btOptimizedBvhC2Ev, .Lfunc_end0-_ZN14btOptimizedBvhC2Ev
	.cfi_endproc
                                        # -- End function
	.globl	_ZN14btOptimizedBvhD2Ev         # -- Begin function _ZN14btOptimizedBvhD2Ev
	.p2align	5
	.type	_ZN14btOptimizedBvhD2Ev,@function
_ZN14btOptimizedBvhD2Ev:                # @_ZN14btOptimizedBvhD2Ev
	.cfi_startproc
# %bb.0:
	pcaddu18i	$t8, %call36(_ZN14btQuantizedBvhD2Ev)
	jr	$t8
.Lfunc_end1:
	.size	_ZN14btOptimizedBvhD2Ev, .Lfunc_end1-_ZN14btOptimizedBvhD2Ev
	.cfi_endproc
                                        # -- End function
	.globl	_ZN14btOptimizedBvhD0Ev         # -- Begin function _ZN14btOptimizedBvhD0Ev
	.p2align	5
	.type	_ZN14btOptimizedBvhD0Ev,@function
_ZN14btOptimizedBvhD0Ev:                # @_ZN14btOptimizedBvhD0Ev
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
.Ltmp0:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN14btQuantizedBvhD2Ev)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.1:                                # %_ZN14btOptimizedBvhD2Ev.exit
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_Z21btAlignedFreeInternalPv)
	jr	$t8
.LBB2_2:
.Ltmp2:                                 # EH_LABEL
	move	$s0, $a0
.Ltmp3:                                 # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp4:                                 # EH_LABEL
# %bb.3:                                # %_ZN14btOptimizedBvhdlEPv.exit
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB2_4:
.Ltmp5:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	_ZN14btOptimizedBvhD0Ev, .Lfunc_end2-_ZN14btOptimizedBvhD0Ev
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
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN14btOptimizedBvh5buildEP23btStridingMeshInterfacebRK9btVector3S4_
.LCPI4_0:
	.word	0xdd5e0b6b                      # float -9.99999984E+17
	.word	0xdd5e0b6b                      # float -9.99999984E+17
	.word	0xdd5e0b6b                      # float -9.99999984E+17
	.word	0x00000000                      # float 0
.LCPI4_1:
	.word	0x5d5e0b6b                      # float 9.99999984E+17
	.word	0x5d5e0b6b                      # float 9.99999984E+17
	.word	0x5d5e0b6b                      # float 9.99999984E+17
	.word	0x00000000                      # float 0
	.text
	.globl	_ZN14btOptimizedBvh5buildEP23btStridingMeshInterfacebRK9btVector3S4_
	.p2align	5
	.type	_ZN14btOptimizedBvh5buildEP23btStridingMeshInterfacebRK9btVector3S4_,@function
_ZN14btOptimizedBvh5buildEP23btStridingMeshInterfacebRK9btVector3S4_: # @_ZN14btOptimizedBvh5buildEP23btStridingMeshInterfacebRK9btVector3S4_
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception1
# %bb.0:
	addi.d	$sp, $sp, -128
	.cfi_def_cfa_offset 128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	move	$s0, $a1
	move	$fp, $a0
	st.b	$a2, $a0, 64
	beqz	$a2, .LBB4_7
# %bb.1:
	vldi	$vr0, -1168
	move	$a0, $fp
	move	$a1, $a3
	move	$a2, $a4
	pcaddu18i	$ra, %call36(_ZN14btQuantizedBvh21setQuantizationValuesERK9btVector3S2_f)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 136
	pcalau12i	$a1, %pc_hi20(_ZTVZN14btOptimizedBvh5buildEP23btStridingMeshInterfacebRK9btVector3S4_E29QuantizedNodeTriangleCallback+16)
	addi.d	$a1, $a1, %pc_lo12(_ZTVZN14btOptimizedBvh5buildEP23btStridingMeshInterfacebRK9btVector3S4_E29QuantizedNodeTriangleCallback+16)
	ld.d	$a2, $s0, 0
	st.d	$a1, $sp, 56
	st.d	$fp, $sp, 72
	ld.d	$a4, $a2, 16
	st.d	$a0, $sp, 64
	addi.d	$a2, $fp, 8
	addi.d	$a3, $fp, 24
.Ltmp16:                                # EH_LABEL
	addi.d	$a1, $sp, 56
	move	$a0, $s0
	jirl	$ra, $a4, 0
.Ltmp17:                                # EH_LABEL
# %bb.2:
	ld.w	$s0, $fp, 140
	ld.w	$s3, $fp, 172
	slli.w	$s2, $s0, 1
	bge	$s3, $s2, .LBB4_22
# %bb.3:
	ld.w	$a0, $fp, 176
	bge	$a0, $s2, .LBB4_20
# %bb.4:
	beqz	$s0, .LBB4_13
# %bb.5:
	slli.d	$a0, $s2, 4
.Ltmp19:                                # EH_LABEL
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
.Ltmp20:                                # EH_LABEL
# %bb.6:                                # %.noexc
	move	$s1, $a0
	ld.w	$a0, $fp, 172
	bgtz	$a0, .LBB4_14
	b	.LBB4_16
.LBB4_7:
	addi.d	$a0, $fp, 72
	pcalau12i	$a1, %pc_hi20(_ZTVZN14btOptimizedBvh5buildEP23btStridingMeshInterfacebRK9btVector3S4_E20NodeTriangleCallback+16)
	addi.d	$a1, $a1, %pc_lo12(_ZTVZN14btOptimizedBvh5buildEP23btStridingMeshInterfacebRK9btVector3S4_E20NodeTriangleCallback+16)
	st.d	$a1, $sp, 56
	pcalau12i	$a1, %pc_hi20(.LCPI4_0)
	ld.d	$a2, $s0, 0
	vld	$vr0, $a1, %pc_lo12(.LCPI4_0)
	pcalau12i	$a1, %pc_hi20(.LCPI4_1)
	vld	$vr1, $a1, %pc_lo12(.LCPI4_1)
	ld.d	$a4, $a2, 16
	st.d	$a0, $sp, 64
	vst	$vr0, $sp, 32
	vst	$vr1, $sp, 16
.Ltmp6:                                 # EH_LABEL
	addi.d	$a1, $sp, 56
	addi.d	$a2, $sp, 32
	addi.d	$a3, $sp, 16
	move	$a0, $s0
	jirl	$ra, $a4, 0
.Ltmp7:                                 # EH_LABEL
# %bb.8:
	ld.w	$s0, $fp, 76
	ld.w	$s3, $fp, 108
	slli.w	$s2, $s0, 1
	bge	$s3, $s2, .LBB4_32
# %bb.9:
	ld.w	$a0, $fp, 112
	bge	$a0, $s2, .LBB4_30
# %bb.10:
	beqz	$s0, .LBB4_23
# %bb.11:
	slli.d	$a0, $s2, 6
.Ltmp9:                                 # EH_LABEL
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
.Ltmp10:                                # EH_LABEL
# %bb.12:                               # %.noexc37
	move	$s1, $a0
	ld.w	$a1, $fp, 108
	bgtz	$a1, .LBB4_24
	b	.LBB4_26
.LBB4_13:
	move	$s1, $zero
	move	$a0, $s3
	blez	$a0, .LBB4_16
.LBB4_14:                               # %.lr.ph.i.i.i
	move	$a1, $zero
	slli.d	$a0, $a0, 4
	.p2align	4, , 16
.LBB4_15:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $fp, 184
	vldx	$vr0, $a2, $a1
	vstx	$vr0, $s1, $a1
	addi.d	$a1, $a1, 16
	bne	$a0, $a1, .LBB4_15
.LBB4_16:                               # %_ZNK20btAlignedObjectArrayI18btQuantizedBvhNodeE4copyEiiPS0_.exit.i.i
	ld.d	$a0, $fp, 184
	beqz	$a0, .LBB4_19
# %bb.17:                               # %_ZNK20btAlignedObjectArrayI18btQuantizedBvhNodeE4copyEiiPS0_.exit.i.i
	ld.b	$a1, $fp, 192
	andi	$a1, $a1, 1
	beqz	$a1, .LBB4_19
# %bb.18:
.Ltmp21:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp22:                                # EH_LABEL
.LBB4_19:                               # %_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeE10deallocateEv.exit.i.i
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 192
	st.d	$s1, $fp, 184
	st.w	$s2, $fp, 176
.LBB4_20:                               # %.lr.ph.i
	sub.d	$a0, $s2, $s3
	slli.d	$a1, $s3, 4
	vrepli.b	$vr0, 0
	.p2align	4, , 16
.LBB4_21:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $fp, 184
	vstx	$vr0, $a2, $a1
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 16
	bnez	$a0, .LBB4_21
.LBB4_22:                               # %.loopexit
	st.w	$s2, $fp, 172
	b	.LBB4_33
.LBB4_23:
	move	$s1, $zero
	move	$a1, $s3
	blez	$a1, .LBB4_26
.LBB4_24:                               # %.lr.ph.i.i.i32
	move	$a0, $zero
	slli.d	$a1, $a1, 6
	.p2align	4, , 16
.LBB4_25:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $fp, 120
	vldx	$vr0, $a2, $a0
	add.d	$a2, $a2, $a0
	vstx	$vr0, $s1, $a0
	vld	$vr0, $a2, 48
	add.d	$a3, $s1, $a0
	vst	$vr0, $a3, 48
	vld	$vr0, $a2, 32
	vst	$vr0, $a3, 32
	vld	$vr0, $a2, 16
	addi.d	$a0, $a0, 64
	vst	$vr0, $a3, 16
	bne	$a1, $a0, .LBB4_25
.LBB4_26:                               # %_ZNK20btAlignedObjectArrayI18btOptimizedBvhNodeE4copyEiiPS0_.exit.i.i
	ld.d	$a0, $fp, 120
	beqz	$a0, .LBB4_29
# %bb.27:                               # %_ZNK20btAlignedObjectArrayI18btOptimizedBvhNodeE4copyEiiPS0_.exit.i.i
	ld.b	$a1, $fp, 128
	andi	$a1, $a1, 1
	beqz	$a1, .LBB4_29
# %bb.28:
.Ltmp11:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp12:                                # EH_LABEL
.LBB4_29:                               # %_ZN20btAlignedObjectArrayI18btOptimizedBvhNodeE10deallocateEv.exit.i.i
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 128
	st.d	$s1, $fp, 120
	st.w	$s2, $fp, 112
.LBB4_30:                               # %.lr.ph.i22
	sub.d	$a0, $s2, $s3
	slli.d	$a1, $s3, 6
	vrepli.b	$vr0, 0
	.p2align	4, , 16
.LBB4_31:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $fp, 120
	add.d	$a3, $a2, $a1
	vstx	$vr0, $a2, $a1
	vst	$vr0, $a3, 48
	vst	$vr0, $a3, 32
	vst	$vr0, $a3, 16
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 64
	bnez	$a0, .LBB4_31
.LBB4_32:                               # %.loopexit57
	st.w	$s2, $fp, 108
.LBB4_33:
	addi.d	$a0, $sp, 56
	pcaddu18i	$ra, %call36(_ZN31btInternalTriangleIndexCallbackD2Ev)
	jirl	$ra, $ra, 0
	st.w	$zero, $fp, 60
	move	$a0, $fp
	move	$a1, $zero
	move	$a2, $s0
	pcaddu18i	$ra, %call36(_ZN14btQuantizedBvh9buildTreeEii)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $fp, 64
	ld.w	$a1, $fp, 212
	beqz	$a0, .LBB4_45
# %bb.34:
	bnez	$a1, .LBB4_45
# %bb.35:
	ld.w	$a0, $fp, 216
	beqz	$a0, .LBB4_37
# %bb.36:                               # %._ZN20btAlignedObjectArrayI16btBvhSubtreeInfoE6expandERKS0_.exit_crit_edge
	ld.d	$s0, $fp, 224
	ori	$a1, $zero, 1
	b	.LBB4_44
.LBB4_37:                               # %_ZN20btAlignedObjectArrayI16btBvhSubtreeInfoE8allocateEi.exit.i.i
	ori	$a0, $zero, 32
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 212
	move	$s0, $a0
	blez	$a1, .LBB4_40
# %bb.38:                               # %.lr.ph.i.i.i44
	move	$a0, $zero
	slli.d	$a1, $a1, 5
	.p2align	4, , 16
.LBB4_39:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $fp, 224
	vldx	$vr0, $a2, $a0
	add.d	$a2, $a2, $a0
	vstx	$vr0, $s0, $a0
	vld	$vr0, $a2, 16
	add.d	$a2, $s0, $a0
	addi.d	$a0, $a0, 32
	vst	$vr0, $a2, 16
	bne	$a1, $a0, .LBB4_39
.LBB4_40:                               # %_ZNK20btAlignedObjectArrayI16btBvhSubtreeInfoE4copyEiiPS0_.exit.i.i
	ld.d	$a0, $fp, 224
	beqz	$a0, .LBB4_43
# %bb.41:                               # %_ZNK20btAlignedObjectArrayI16btBvhSubtreeInfoE4copyEiiPS0_.exit.i.i
	ld.b	$a1, $fp, 232
	andi	$a1, $a1, 1
	beqz	$a1, .LBB4_43
# %bb.42:
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.LBB4_43:                               # %_ZN20btAlignedObjectArrayI16btBvhSubtreeInfoE10deallocateEv.exit.i.i
	ori	$a0, $zero, 1
	ld.w	$a1, $fp, 212
	st.b	$a0, $fp, 232
	st.d	$s0, $fp, 224
	st.w	$a0, $fp, 216
	addi.d	$a1, $a1, 1
.LBB4_44:                               # %_ZN20btAlignedObjectArrayI16btBvhSubtreeInfoE6expandERKS0_.exit
	ld.d	$a0, $fp, 184
	st.w	$a1, $fp, 212
	ld.h	$a2, $a0, 0
	st.h	$a2, $s0, 0
	ld.h	$a2, $a0, 2
	st.h	$a2, $s0, 2
	ld.h	$a2, $a0, 4
	st.h	$a2, $s0, 4
	ld.h	$a2, $a0, 6
	st.h	$a2, $s0, 6
	ld.h	$a2, $a0, 8
	st.h	$a2, $s0, 8
	ld.h	$a2, $a0, 10
	st.h	$a2, $s0, 10
	st.w	$zero, $s0, 12
	ld.w	$a0, $a0, 12
	addi.w	$a2, $zero, -1
	slt	$a2, $a2, $a0
	sub.d	$a0, $zero, $a0
	masknez	$a0, $a0, $a2
	ori	$a3, $zero, 1
	maskeqz	$a2, $a3, $a2
	or	$a0, $a2, $a0
	st.w	$a0, $s0, 16
.LBB4_45:                               # %._crit_edge
	ld.d	$a0, $fp, 152
	st.w	$a1, $fp, 240
	beqz	$a0, .LBB4_48
# %bb.46:                               # %._crit_edge
	ld.b	$a1, $fp, 160
	andi	$a1, $a1, 1
	beqz	$a1, .LBB4_48
# %bb.47:
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.LBB4_48:                               # %_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeE5clearEv.exit
	ld.d	$a0, $fp, 88
	ori	$s0, $zero, 1
	st.b	$s0, $fp, 160
	st.d	$zero, $fp, 152
	st.d	$zero, $fp, 140
	beqz	$a0, .LBB4_51
# %bb.49:                               # %_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeE5clearEv.exit
	ld.b	$a1, $fp, 96
	andi	$a1, $a1, 1
	beqz	$a1, .LBB4_51
# %bb.50:
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.LBB4_51:                               # %_ZN20btAlignedObjectArrayI18btOptimizedBvhNodeE5clearEv.exit
	st.b	$s0, $fp, 96
	st.d	$zero, $fp, 88
	st.d	$zero, $fp, 76
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.LBB4_52:
.Ltmp13:                                # EH_LABEL
	b	.LBB4_55
.LBB4_53:
.Ltmp23:                                # EH_LABEL
	b	.LBB4_57
.LBB4_54:
.Ltmp8:                                 # EH_LABEL
.LBB4_55:
	move	$fp, $a0
.Ltmp14:                                # EH_LABEL
	addi.d	$a0, $sp, 56
	pcaddu18i	$ra, %call36(_ZN31btInternalTriangleIndexCallbackD2Ev)
	jirl	$ra, $ra, 0
.Ltmp15:                                # EH_LABEL
	b	.LBB4_58
.LBB4_56:
.Ltmp18:                                # EH_LABEL
.LBB4_57:
	move	$fp, $a0
.Ltmp24:                                # EH_LABEL
	addi.d	$a0, $sp, 56
	pcaddu18i	$ra, %call36(_ZN31btInternalTriangleIndexCallbackD2Ev)
	jirl	$ra, $ra, 0
.Ltmp25:                                # EH_LABEL
.LBB4_58:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB4_59:
.Ltmp26:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end4:
	.size	_ZN14btOptimizedBvh5buildEP23btStridingMeshInterfacebRK9btVector3S4_, .Lfunc_end4-_ZN14btOptimizedBvh5buildEP23btStridingMeshInterfacebRK9btVector3S4_
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table4:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Lfunc_begin1-.Lfunc_begin1    # >> Call Site 1 <<
	.uleb128 .Ltmp16-.Lfunc_begin1          #   Call between .Lfunc_begin1 and .Ltmp16
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp16-.Lfunc_begin1          # >> Call Site 2 <<
	.uleb128 .Ltmp17-.Ltmp16                #   Call between .Ltmp16 and .Ltmp17
	.uleb128 .Ltmp18-.Lfunc_begin1          #     jumps to .Ltmp18
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp19-.Lfunc_begin1          # >> Call Site 3 <<
	.uleb128 .Ltmp20-.Ltmp19                #   Call between .Ltmp19 and .Ltmp20
	.uleb128 .Ltmp23-.Lfunc_begin1          #     jumps to .Ltmp23
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp6-.Lfunc_begin1           # >> Call Site 4 <<
	.uleb128 .Ltmp7-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp7
	.uleb128 .Ltmp8-.Lfunc_begin1           #     jumps to .Ltmp8
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp9-.Lfunc_begin1           # >> Call Site 5 <<
	.uleb128 .Ltmp10-.Ltmp9                 #   Call between .Ltmp9 and .Ltmp10
	.uleb128 .Ltmp13-.Lfunc_begin1          #     jumps to .Ltmp13
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp21-.Lfunc_begin1          # >> Call Site 6 <<
	.uleb128 .Ltmp22-.Ltmp21                #   Call between .Ltmp21 and .Ltmp22
	.uleb128 .Ltmp23-.Lfunc_begin1          #     jumps to .Ltmp23
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp11-.Lfunc_begin1          # >> Call Site 7 <<
	.uleb128 .Ltmp12-.Ltmp11                #   Call between .Ltmp11 and .Ltmp12
	.uleb128 .Ltmp13-.Lfunc_begin1          #     jumps to .Ltmp13
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp12-.Lfunc_begin1          # >> Call Site 8 <<
	.uleb128 .Ltmp14-.Ltmp12                #   Call between .Ltmp12 and .Ltmp14
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp14-.Lfunc_begin1          # >> Call Site 9 <<
	.uleb128 .Ltmp25-.Ltmp14                #   Call between .Ltmp14 and .Ltmp25
	.uleb128 .Ltmp26-.Lfunc_begin1          #     jumps to .Ltmp26
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp25-.Lfunc_begin1          # >> Call Site 10 <<
	.uleb128 .Lfunc_end4-.Ltmp25            #   Call between .Ltmp25 and .Lfunc_end4
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
	.globl	_ZN14btOptimizedBvh5refitEP23btStridingMeshInterfaceRK9btVector3S4_ # -- Begin function _ZN14btOptimizedBvh5refitEP23btStridingMeshInterfaceRK9btVector3S4_
	.p2align	5
	.type	_ZN14btOptimizedBvh5refitEP23btStridingMeshInterfaceRK9btVector3S4_,@function
_ZN14btOptimizedBvh5refitEP23btStridingMeshInterfaceRK9btVector3S4_: # @_ZN14btOptimizedBvh5refitEP23btStridingMeshInterfaceRK9btVector3S4_
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
	ld.bu	$a0, $a0, 64
	beqz	$a0, .LBB5_4
# %bb.1:
	vldi	$vr0, -1168
	move	$a0, $fp
	move	$s0, $a1
	move	$a1, $a2
	move	$a2, $a3
	pcaddu18i	$ra, %call36(_ZN14btQuantizedBvh21setQuantizationValuesERK9btVector3S2_f)
	jirl	$ra, $ra, 0
	ld.w	$a3, $fp, 60
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZN14btOptimizedBvh14updateBvhNodesEP23btStridingMeshInterfaceiii)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 212
	blez	$a0, .LBB5_4
# %bb.2:                                # %.lr.ph
	ld.d	$a2, $fp, 224
	ld.d	$a1, $fp, 184
	addi.d	$a2, $a2, 6
	.p2align	4, , 16
.LBB5_3:                                # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a2, 6
	slli.d	$a4, $a3, 4
	ldx.h	$a4, $a1, $a4
	alsl.d	$a3, $a3, $a1, 4
	st.h	$a4, $a2, -6
	ld.h	$a4, $a3, 2
	st.h	$a4, $a2, -4
	ld.h	$a4, $a3, 4
	st.h	$a4, $a2, -2
	ld.h	$a4, $a3, 6
	st.h	$a4, $a2, 0
	ld.h	$a4, $a3, 8
	st.h	$a4, $a2, 2
	ld.h	$a3, $a3, 10
	st.h	$a3, $a2, 4
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, 32
	bnez	$a0, .LBB5_3
.LBB5_4:                                # %.loopexit
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end5:
	.size	_ZN14btOptimizedBvh5refitEP23btStridingMeshInterfaceRK9btVector3S4_, .Lfunc_end5-_ZN14btOptimizedBvh5refitEP23btStridingMeshInterfaceRK9btVector3S4_
	.cfi_endproc
                                        # -- End function
	.globl	_ZN14btOptimizedBvh14updateBvhNodesEP23btStridingMeshInterfaceiii # -- Begin function _ZN14btOptimizedBvh14updateBvhNodesEP23btStridingMeshInterfaceiii
	.p2align	5
	.type	_ZN14btOptimizedBvh14updateBvhNodesEP23btStridingMeshInterfaceiii,@function
_ZN14btOptimizedBvh14updateBvhNodesEP23btStridingMeshInterfaceiii: # @_ZN14btOptimizedBvh14updateBvhNodesEP23btStridingMeshInterfaceiii
	.cfi_startproc
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
	st.d	$s8, $sp, 88                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 80                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 72                   # 8-byte Folded Spill
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
	move	$s2, $a0
	st.d	$zero, $sp, 64
	st.w	$zero, $sp, 60
	ori	$a0, $zero, 2
	st.w	$a0, $sp, 56
	st.w	$zero, $sp, 52
	st.d	$zero, $sp, 40
	st.w	$zero, $sp, 36
	st.w	$zero, $sp, 32
	st.w	$a0, $sp, 28
	bge	$a2, $a3, .LBB6_28
# %bb.1:                                # %.lr.ph
	move	$s0, $a3
	move	$s1, $a2
	move	$fp, $a1
	slli.d	$a0, $a3, 4
	addi.d	$s3, $a0, 16
	addi.d	$a0, $zero, -1
	ori	$s4, $zero, 3
	lu12i.w	$a1, 382432
	ori	$a1, $a1, 2923
	movgr2fr.w	$fs0, $a1
	lu12i.w	$a1, -141856
	ori	$a1, $a1, 2923
	lu32i.d	$a1, 0
	movgr2fr.w	$fs1, $a1
	lu12i.w	$a1, 15
	ori	$s5, $a1, 4094
	vldi	$vr12, -1168
	b	.LBB6_3
	.p2align	4, , 16
.LBB6_2:                                # %.loopexit.loopexit
                                        #   in Loop: Header=BB6_3 Depth=1
	ld.w	$a2, $s7, -4
	slti	$a3, $a2, 0
	slli.d	$a2, $a2, 4
	sub.d	$a1, $a1, $a2
	add.d	$a1, $a1, $s3
	addi.d	$a1, $a1, -16
	ld.hu	$a2, $s7, -16
	masknez	$a4, $s7, $a3
	maskeqz	$a1, $a1, $a3
	or	$a1, $a1, $a4
	st.h	$a2, $s7, -32
	ld.hu	$a3, $a1, 0
	sltu	$a4, $a2, $a3
	masknez	$a3, $a3, $a4
	ld.hu	$a5, $s7, -10
	maskeqz	$a2, $a2, $a4
	or	$a2, $a2, $a3
	st.h	$a2, $s7, -32
	st.h	$a5, $s7, -26
	ld.hu	$a2, $a1, 6
	sltu	$a3, $a2, $a5
	masknez	$a2, $a2, $a3
	ld.hu	$a4, $s7, -14
	maskeqz	$a3, $a5, $a3
	or	$a2, $a3, $a2
	st.h	$a2, $s7, -26
	st.h	$a4, $s7, -30
	ld.hu	$a2, $a1, 2
	sltu	$a3, $a4, $a2
	masknez	$a2, $a2, $a3
	ld.hu	$a5, $s7, -8
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	st.h	$a2, $s7, -30
	st.h	$a5, $s7, -24
	ld.hu	$a2, $a1, 8
	sltu	$a3, $a2, $a5
	masknez	$a2, $a2, $a3
	ld.hu	$a4, $s7, -12
	maskeqz	$a3, $a5, $a3
	or	$a2, $a3, $a2
	st.h	$a2, $s7, -24
	st.h	$a4, $s7, -28
	ld.hu	$a2, $a1, 4
	sltu	$a3, $a4, $a2
	masknez	$a2, $a2, $a3
	ld.hu	$a5, $s7, -6
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	st.h	$a2, $s7, -28
	st.h	$a5, $s7, -22
	ld.hu	$a1, $a1, 10
	sltu	$a2, $a1, $a5
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a5, $a2
	or	$a1, $a2, $a1
	st.h	$a1, $s7, -22
	addi.d	$s0, $s0, -1
	addi.d	$s3, $s3, -16
	bge	$s1, $s0, .LBB6_26
.LBB6_3:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s2, 184
	add.d	$s7, $a1, $s3
	ld.w	$s8, $s7, -20
	bltz	$s8, .LBB6_2
# %bb.4:                                #   in Loop: Header=BB6_3 Depth=1
	bstrpick.d	$s6, $s8, 31, 21
	addi.w	$a1, $a0, 0
	beq	$s6, $a1, .LBB6_8
# %bb.5:                                #   in Loop: Header=BB6_3 Depth=1
	bltz	$a1, .LBB6_7
# %bb.6:                                #   in Loop: Header=BB6_3 Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 48
	move	$a0, $fp
	jirl	$ra, $a2, 0
.LBB6_7:                                #   in Loop: Header=BB6_3 Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$t0, $a0, 32
	addi.w	$a0, $s6, 0
	st.d	$a0, $sp, 8
	addi.d	$a1, $sp, 64
	addi.d	$a2, $sp, 60
	addi.d	$a3, $sp, 56
	addi.d	$a4, $sp, 52
	addi.d	$a5, $sp, 40
	addi.d	$a6, $sp, 36
	addi.d	$a7, $sp, 32
	addi.d	$a0, $sp, 28
	st.d	$a0, $sp, 0
	move	$a0, $fp
	jirl	$ra, $t0, 0
	move	$a0, $s6
	vldi	$vr12, -1168
.LBB6_8:                                #   in Loop: Header=BB6_3 Depth=1
	ld.d	$a3, $sp, 40
	ld.w	$a5, $sp, 36
	ld.w	$a4, $sp, 28
	ld.w	$a6, $sp, 56
	ld.d	$a1, $sp, 64
	ld.w	$a2, $sp, 52
	fld.s	$fa2, $fp, 8
	bstrpick.d	$a7, $s8, 20, 0
	mul.w	$a5, $a5, $a7
	add.d	$a3, $a3, $a5
	beqz	$a6, .LBB6_13
# %bb.9:                                # %.split
                                        #   in Loop: Header=BB6_3 Depth=1
	bne	$a4, $s4, .LBB6_17
# %bb.10:                               #   in Loop: Header=BB6_3 Depth=1
	ld.hu	$a6, $a3, 4
	beq	$a4, $s4, .LBB6_18
.LBB6_11:                               #   in Loop: Header=BB6_3 Depth=1
	ld.w	$a5, $a3, 4
	beq	$a4, $s4, .LBB6_19
.LBB6_12:                               #   in Loop: Header=BB6_3 Depth=1
	ld.w	$a3, $a3, 0
	b	.LBB6_20
	.p2align	4, , 16
.LBB6_13:                               # %.split.us
                                        #   in Loop: Header=BB6_3 Depth=1
	bne	$a4, $s4, .LBB6_21
# %bb.14:                               #   in Loop: Header=BB6_3 Depth=1
	ld.hu	$a5, $a3, 4
	beq	$a4, $s4, .LBB6_22
.LBB6_15:                               #   in Loop: Header=BB6_3 Depth=1
	ld.w	$a6, $a3, 4
	beq	$a4, $s4, .LBB6_23
.LBB6_16:                               #   in Loop: Header=BB6_3 Depth=1
	ld.w	$a3, $a3, 0
	b	.LBB6_24
.LBB6_17:                               #   in Loop: Header=BB6_3 Depth=1
	ld.w	$a6, $a3, 8
	bne	$a4, $s4, .LBB6_11
.LBB6_18:                               #   in Loop: Header=BB6_3 Depth=1
	ld.hu	$a5, $a3, 2
	bne	$a4, $s4, .LBB6_12
.LBB6_19:                               #   in Loop: Header=BB6_3 Depth=1
	ld.hu	$a3, $a3, 0
.LBB6_20:                               # %_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit147
                                        #   in Loop: Header=BB6_3 Depth=1
	fld.s	$fa0, $fp, 12
	fcvt.d.s	$fa4, $fa2
	fcvt.d.s	$fa5, $fa0
	fld.s	$fa0, $fp, 16
	mul.w	$a4, $a2, $a6
	fldx.d	$fa1, $a1, $a4
	add.d	$a4, $a1, $a4
	fld.d	$fa2, $a4, 8
	fcvt.d.s	$ft0, $fa0
	fmul.d	$fa0, $fa1, $fa4
	fcvt.s.d	$fa0, $fa0
	fmul.d	$fa1, $fa2, $fa5
	fld.d	$fa2, $a4, 16
	fcvt.s.d	$fa1, $fa1
	mul.w	$a4, $a2, $a5
	fldx.d	$fa3, $a1, $a4
	fmul.d	$fa2, $fa2, $ft0
	fcvt.s.d	$fa2, $fa2
	add.d	$a4, $a1, $a4
	fmul.d	$fa3, $fa3, $fa4
	fcvt.s.d	$fa3, $fa3
	mul.w	$a2, $a2, $a3
	fldx.d	$fa6, $a1, $a2
	fld.d	$fa7, $a4, 8
	fld.d	$ft1, $a4, 16
	add.d	$a1, $a1, $a2
	fmul.d	$fa6, $fa6, $fa4
	fld.d	$ft2, $a1, 8
	fmul.d	$fa4, $fa7, $fa5
	fcvt.s.d	$fa4, $fa4
	fmul.d	$fa7, $ft1, $ft0
	fmul.d	$ft1, $ft2, $fa5
	fld.d	$ft2, $a1, 16
	fcvt.s.d	$fa5, $fa7
	fcvt.s.d	$fa6, $fa6
	fcvt.s.d	$fa7, $ft1
	fmul.d	$ft0, $ft2, $ft0
	fcvt.s.d	$ft0, $ft0
	b	.LBB6_25
.LBB6_21:                               #   in Loop: Header=BB6_3 Depth=1
	ld.w	$a5, $a3, 8
	bne	$a4, $s4, .LBB6_15
.LBB6_22:                               #   in Loop: Header=BB6_3 Depth=1
	ld.hu	$a6, $a3, 2
	bne	$a4, $s4, .LBB6_16
.LBB6_23:                               #   in Loop: Header=BB6_3 Depth=1
	ld.hu	$a3, $a3, 0
.LBB6_24:                               # %_Z8btSetMinIfEvRT_RKS0_.exit.i.loopexit
                                        #   in Loop: Header=BB6_3 Depth=1
	mul.w	$a4, $a2, $a5
	fldx.s	$fa0, $a1, $a4
	fld.s	$fa5, $fp, 12
	fld.s	$ft0, $fp, 16
	add.d	$a4, $a1, $a4
	fmul.s	$fa0, $fa0, $fa2
	fld.s	$fa1, $a4, 4
	mul.w	$a5, $a2, $a6
	add.d	$a6, $a1, $a5
	fldx.s	$fa3, $a1, $a5
	fld.s	$fa4, $a6, 4
	fmul.s	$fa1, $fa1, $fa5
	fld.s	$ft1, $a4, 8
	fmul.s	$fa3, $fa3, $fa2
	fmul.s	$fa4, $fa4, $fa5
	mul.w	$a2, $a2, $a3
	fldx.s	$fa6, $a1, $a2
	add.d	$a1, $a1, $a2
	fld.s	$fa7, $a1, 4
	fld.s	$ft2, $a6, 8
	fmul.s	$fa6, $fa6, $fa2
	fld.s	$ft3, $a1, 8
	fmul.s	$fa7, $fa7, $fa5
	fmul.s	$fa2, $ft1, $ft0
	fmul.s	$fa5, $ft2, $ft0
	fmul.s	$ft0, $ft3, $ft0
.LBB6_25:                               # %_Z8btSetMinIfEvRT_RKS0_.exit.i
                                        #   in Loop: Header=BB6_3 Depth=1
	fmin.s	$ft1, $fa6, $fs0
	fmin.s	$ft2, $fa7, $fs0
	fmin.s	$ft3, $ft0, $fs0
	fmax.s	$fa6, $fa6, $fs1
	fmax.s	$fa7, $fa7, $fs1
	fmax.s	$ft0, $ft0, $fs1
	fcmp.clt.s	$fcc0, $fa3, $ft1
	fsel	$ft1, $ft1, $fa3, $fcc0
	fcmp.clt.s	$fcc0, $fa4, $ft2
	fsel	$ft2, $ft2, $fa4, $fcc0
	fcmp.clt.s	$fcc0, $fa5, $ft3
	fsel	$ft3, $ft3, $fa5, $fcc0
	fcmp.clt.s	$fcc0, $fa6, $fa3
	fsel	$fa3, $fa6, $fa3, $fcc0
	fcmp.clt.s	$fcc0, $fa7, $fa4
	fsel	$fa4, $fa7, $fa4, $fcc0
	fcmp.clt.s	$fcc0, $ft0, $fa5
	fsel	$fa5, $ft0, $fa5, $fcc0
	fcmp.clt.s	$fcc0, $fa0, $ft1
	fsel	$fa6, $ft1, $fa0, $fcc0
	fcmp.clt.s	$fcc0, $fa1, $ft2
	fsel	$fa7, $ft2, $fa1, $fcc0
	fcmp.clt.s	$fcc0, $fa2, $ft3
	fsel	$ft0, $ft3, $fa2, $fcc0
	fcmp.clt.s	$fcc0, $fa3, $fa0
	fsel	$fa0, $fa3, $fa0, $fcc0
	fcmp.clt.s	$fcc0, $fa4, $fa1
	fsel	$fa1, $fa4, $fa1, $fcc0
	fld.s	$fa3, $s2, 8
	fld.s	$fa4, $s2, 12
	fcmp.clt.s	$fcc0, $fa5, $fa2
	fsel	$fa2, $fa5, $fa2, $fcc0
	fsub.s	$fa5, $fa6, $fa3
	fsub.s	$fa6, $fa7, $fa4
	fld.s	$fa7, $s2, 16
	fld.s	$ft1, $s2, 40
	fld.s	$ft2, $s2, 44
	fld.s	$ft3, $s2, 48
	fsub.s	$ft0, $ft0, $fa7
	fmul.s	$fa5, $fa5, $ft1
	fmul.s	$fa6, $fa6, $ft2
	fmul.s	$ft0, $ft0, $ft3
	ftintrz.l.s	$fa5, $fa5
	movfr2gr.d	$a1, $fa5
	and	$a1, $a1, $s5
	ftintrz.l.s	$fa5, $fa6
	movfr2gr.d	$a2, $fa5
	and	$a2, $a2, $s5
	ftintrz.l.s	$fa5, $ft0
	movfr2gr.d	$a3, $fa5
	and	$a3, $a3, $s5
	st.h	$a1, $s7, -32
	st.h	$a2, $s7, -30
	st.h	$a3, $s7, -28
	fsub.s	$fa0, $fa0, $fa3
	fsub.s	$fa1, $fa1, $fa4
	fsub.s	$fa2, $fa2, $fa7
	fmul.s	$fa0, $fa0, $ft1
	fmul.s	$fa1, $fa1, $ft2
	fmul.s	$fa2, $fa2, $ft3
	fadd.s	$fa0, $fa0, $ft4
	ftintrz.l.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	ori	$a1, $a1, 1
	fadd.s	$fa0, $fa1, $ft4
	ftintrz.l.s	$fa0, $fa0
	movfr2gr.d	$a2, $fa0
	ori	$a2, $a2, 1
	fadd.s	$fa0, $fa2, $ft4
	ftintrz.l.s	$fa0, $fa0
	movfr2gr.d	$a3, $fa0
	ori	$a3, $a3, 1
	st.h	$a1, $s7, -26
	st.h	$a2, $s7, -24
	st.h	$a3, $s7, -22
	addi.d	$s0, $s0, -1
	addi.d	$s3, $s3, -16
	blt	$s1, $s0, .LBB6_3
.LBB6_26:                               # %._crit_edge
	addi.w	$a1, $a0, 0
	bltz	$a1, .LBB6_28
# %bb.27:
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 48
	move	$a0, $fp
	jirl	$ra, $a2, 0
.LBB6_28:                               # %._crit_edge.thread
	fld.d	$fs1, $sp, 72                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 80                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 88                    # 8-byte Folded Reload
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
.Lfunc_end6:
	.size	_ZN14btOptimizedBvh14updateBvhNodesEP23btStridingMeshInterfaceiii, .Lfunc_end6-_ZN14btOptimizedBvh14updateBvhNodesEP23btStridingMeshInterfaceiii
	.cfi_endproc
                                        # -- End function
	.globl	_ZN14btOptimizedBvh12refitPartialEP23btStridingMeshInterfaceRK9btVector3S4_ # -- Begin function _ZN14btOptimizedBvh12refitPartialEP23btStridingMeshInterfaceRK9btVector3S4_
	.p2align	5
	.type	_ZN14btOptimizedBvh12refitPartialEP23btStridingMeshInterfaceRK9btVector3S4_,@function
_ZN14btOptimizedBvh12refitPartialEP23btStridingMeshInterfaceRK9btVector3S4_: # @_ZN14btOptimizedBvh12refitPartialEP23btStridingMeshInterfaceRK9btVector3S4_
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
	st.d	$s7, $sp, 32                    # 8-byte Folded Spill
	st.d	$s8, $sp, 24                    # 8-byte Folded Spill
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
	move	$fp, $a0
	ld.w	$a0, $a0, 212
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	blez	$a0, .LBB7_10
# %bb.1:                                # %.lr.ph
	fld.s	$fa2, $a2, 0
	fld.s	$fa0, $fp, 8
	fld.s	$fa3, $a2, 4
	fld.s	$fa1, $fp, 12
	move	$s1, $zero
	move	$s2, $zero
	fsub.s	$fa2, $fa2, $fa0
	fsub.s	$fa3, $fa3, $fa1
	fld.s	$fa4, $a2, 8
	fld.s	$fa5, $fp, 16
	fld.s	$fa6, $fp, 40
	fld.s	$fa7, $fp, 44
	fld.s	$ft0, $fp, 48
	fsub.s	$fa4, $fa4, $fa5
	fmul.s	$fa2, $fa2, $fa6
	fmul.s	$fa3, $fa3, $fa7
	fmul.s	$fa4, $fa4, $ft0
	ftintrz.l.s	$fa2, $fa2
	movfr2gr.d	$a1, $fa2
	lu12i.w	$a2, 15
	ori	$a2, $a2, 4094
	and	$s3, $a1, $a2
	ftintrz.l.s	$fa2, $fa3
	movfr2gr.d	$a1, $fa2
	and	$a1, $a1, $a2
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	ftintrz.l.s	$fa2, $fa4
	movfr2gr.d	$a1, $fa2
	fld.s	$fa2, $a3, 0
	fld.s	$fa3, $a3, 4
	fld.s	$fa4, $a3, 8
	and	$s5, $a1, $a2
	fsub.s	$fa0, $fa2, $fa0
	fsub.s	$fa1, $fa3, $fa1
	fsub.s	$fa2, $fa4, $fa5
	fmul.s	$fa0, $fa6, $fa0
	fmul.s	$fa1, $fa7, $fa1
	fmul.s	$fa2, $ft0, $fa2
	vldi	$vr3, -1168
	fadd.s	$fa0, $fa0, $fa3
	ftintrz.l.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	ori	$s6, $a1, 1
	fadd.s	$fa0, $fa1, $fa3
	ftintrz.l.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	ori	$s7, $a1, 1
	fadd.s	$fa0, $fa2, $fa3
	ftintrz.l.s	$fa0, $fa0
	movfr2gr.d	$a1, $fa0
	ori	$s8, $a1, 1
	b	.LBB7_3
	.p2align	4, , 16
.LBB7_2:                                #   in Loop: Header=BB7_3 Depth=1
	addi.d	$s2, $s2, 1
	addi.d	$s1, $s1, 32
	bge	$s2, $a0, .LBB7_10
.LBB7_3:                                # =>This Inner Loop Header: Depth=1
	ld.d	$s4, $fp, 224
	add.d	$s0, $s4, $s1
	ld.hu	$a1, $s0, 6
	bltu	$a1, $s3, .LBB7_2
# %bb.4:                                #   in Loop: Header=BB7_3 Depth=1
	ldx.hu	$a1, $s4, $s1
	bltu	$s6, $a1, .LBB7_2
# %bb.5:                                #   in Loop: Header=BB7_3 Depth=1
	ld.hu	$a1, $s0, 10
	bltu	$a1, $s5, .LBB7_2
# %bb.6:                                #   in Loop: Header=BB7_3 Depth=1
	ld.hu	$a1, $s0, 4
	bltu	$s8, $a1, .LBB7_2
# %bb.7:                                #   in Loop: Header=BB7_3 Depth=1
	ld.hu	$a1, $s0, 8
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	bltu	$a1, $a2, .LBB7_2
# %bb.8:                                #   in Loop: Header=BB7_3 Depth=1
	ld.hu	$a1, $s0, 2
	bltu	$s7, $a1, .LBB7_2
# %bb.9:                                #   in Loop: Header=BB7_3 Depth=1
	ld.w	$a0, $s0, 16
	ld.w	$a2, $s0, 12
	add.w	$a3, $a0, $a2
	move	$a0, $fp
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN14btOptimizedBvh14updateBvhNodesEP23btStridingMeshInterfaceiii)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 12
	ld.d	$a1, $fp, 184
	slli.d	$a2, $a0, 4
	ldx.h	$a2, $a1, $a2
	alsl.d	$a0, $a0, $a1, 4
	stx.h	$a2, $s4, $s1
	ld.h	$a1, $a0, 2
	st.h	$a1, $s0, 2
	ld.h	$a1, $a0, 4
	st.h	$a1, $s0, 4
	ld.h	$a1, $a0, 6
	st.h	$a1, $s0, 6
	ld.h	$a1, $a0, 8
	st.h	$a1, $s0, 8
	ld.h	$a1, $a0, 10
	ld.w	$a0, $fp, 212
	st.h	$a1, $s0, 10
	b	.LBB7_2
.LBB7_10:                               # %._crit_edge
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
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
.Lfunc_end7:
	.size	_ZN14btOptimizedBvh12refitPartialEP23btStridingMeshInterfaceRK9btVector3S4_, .Lfunc_end7-_ZN14btOptimizedBvh12refitPartialEP23btStridingMeshInterfaceRK9btVector3S4_
	.cfi_endproc
                                        # -- End function
	.globl	_ZN14btOptimizedBvh18deSerializeInPlaceEPvjb # -- Begin function _ZN14btOptimizedBvh18deSerializeInPlaceEPvjb
	.p2align	5
	.type	_ZN14btOptimizedBvh18deSerializeInPlaceEPvjb,@function
_ZN14btOptimizedBvh18deSerializeInPlaceEPvjb: # @_ZN14btOptimizedBvh18deSerializeInPlaceEPvjb
	.cfi_startproc
# %bb.0:
	pcaddu18i	$t8, %call36(_ZN14btQuantizedBvh18deSerializeInPlaceEPvjb)
	jr	$t8
.Lfunc_end8:
	.size	_ZN14btOptimizedBvh18deSerializeInPlaceEPvjb, .Lfunc_end8-_ZN14btOptimizedBvh18deSerializeInPlaceEPvjb
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN14btOptimizedBvh9serializeEPvjb,"axG",@progbits,_ZN14btOptimizedBvh9serializeEPvjb,comdat
	.weak	_ZN14btOptimizedBvh9serializeEPvjb # -- Begin function _ZN14btOptimizedBvh9serializeEPvjb
	.p2align	5
	.type	_ZN14btOptimizedBvh9serializeEPvjb,@function
_ZN14btOptimizedBvh9serializeEPvjb:     # @_ZN14btOptimizedBvh9serializeEPvjb
	.cfi_startproc
# %bb.0:
	pcaddu18i	$t8, %call36(_ZN14btQuantizedBvh9serializeEPvjb)
	jr	$t8
.Lfunc_end9:
	.size	_ZN14btOptimizedBvh9serializeEPvjb, .Lfunc_end9-_ZN14btOptimizedBvh9serializeEPvjb
	.cfi_endproc
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZZN14btOptimizedBvh5buildEP23btStridingMeshInterfacebRK9btVector3S4_EN29QuantizedNodeTriangleCallbackD0Ev
	.type	_ZZN14btOptimizedBvh5buildEP23btStridingMeshInterfacebRK9btVector3S4_EN29QuantizedNodeTriangleCallbackD0Ev,@function
_ZZN14btOptimizedBvh5buildEP23btStridingMeshInterfacebRK9btVector3S4_EN29QuantizedNodeTriangleCallbackD0Ev: # @_ZZN14btOptimizedBvh5buildEP23btStridingMeshInterfacebRK9btVector3S4_EN29QuantizedNodeTriangleCallbackD0Ev
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
	pcaddu18i	$ra, %call36(_ZN31btInternalTriangleIndexCallbackD2Ev)
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
.LBB10_2:
.Ltmp29:                                # EH_LABEL
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end10:
	.size	_ZZN14btOptimizedBvh5buildEP23btStridingMeshInterfacebRK9btVector3S4_EN29QuantizedNodeTriangleCallbackD0Ev, .Lfunc_end10-_ZZN14btOptimizedBvh5buildEP23btStridingMeshInterfacebRK9btVector3S4_EN29QuantizedNodeTriangleCallbackD0Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table10:
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
	.uleb128 .Lfunc_end10-.Ltmp28           #   Call between .Ltmp28 and .Lfunc_end10
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZZN14btOptimizedBvh5buildEP23btStridingMeshInterfacebRK9btVector3S4_EN29QuantizedNodeTriangleCallback28internalProcessTriangleIndexEPS2_ii
	.type	_ZZN14btOptimizedBvh5buildEP23btStridingMeshInterfacebRK9btVector3S4_EN29QuantizedNodeTriangleCallback28internalProcessTriangleIndexEPS2_ii,@function
_ZZN14btOptimizedBvh5buildEP23btStridingMeshInterfacebRK9btVector3S4_EN29QuantizedNodeTriangleCallback28internalProcessTriangleIndexEPS2_ii: # @_ZZN14btOptimizedBvh5buildEP23btStridingMeshInterfacebRK9btVector3S4_EN29QuantizedNodeTriangleCallback28internalProcessTriangleIndexEPS2_ii
	.cfi_startproc
# %bb.0:                                # %_Z8btSetMinIfEvRT_RKS0_.exit.i
	addi.d	$sp, $sp, -160
	.cfi_def_cfa_offset 160
	st.d	$ra, $sp, 152                   # 8-byte Folded Spill
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	st.d	$s0, $sp, 136                   # 8-byte Folded Spill
	st.d	$s1, $sp, 128                   # 8-byte Folded Spill
	st.d	$s2, $sp, 120                   # 8-byte Folded Spill
	st.d	$s3, $sp, 112                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 104                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 96                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 88                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 80                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 72                   # 8-byte Folded Spill
	fst.d	$fs5, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fs6, $sp, 56                   # 8-byte Folded Spill
	fst.d	$fs7, $sp, 48                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 56, -56
	.cfi_offset 57, -64
	.cfi_offset 58, -72
	.cfi_offset 59, -80
	.cfi_offset 60, -88
	.cfi_offset 61, -96
	.cfi_offset 62, -104
	.cfi_offset 63, -112
	fld.s	$ft7, $a1, 0
	fld.s	$fs1, $a1, 4
	fld.s	$fs4, $a1, 8
	fld.s	$fs6, $a1, 16
	fld.s	$fs2, $a1, 20
	fld.s	$fs5, $a1, 24
	ld.d	$a4, $a0, 16
	fld.s	$fs0, $a1, 32
	fld.s	$fs3, $a1, 36
	fld.s	$fs7, $a1, 40
	fld.s	$ft2, $a4, 8
	fld.s	$ft4, $a4, 12
	ld.d	$s0, $a0, 8
	fld.s	$ft6, $a4, 16
	fld.s	$ft3, $a4, 40
	fld.s	$ft5, $a4, 44
	ld.w	$a1, $s0, 4
	ld.w	$a0, $s0, 8
	fld.s	$ft8, $a4, 48
	bne	$a1, $a0, .LBB11_11
# %bb.1:
	sltui	$a0, $a1, 1
	slli.w	$a4, $a1, 1
	masknez	$a4, $a4, $a0
	ori	$a5, $zero, 1
	maskeqz	$a0, $a5, $a0
	or	$s1, $a0, $a4
	bge	$a1, $s1, .LBB11_11
# %bb.2:
	fst.s	$ft2, $sp, 44                   # 4-byte Folded Spill
	fst.s	$ft3, $sp, 40                   # 4-byte Folded Spill
	fst.s	$ft4, $sp, 36                   # 4-byte Folded Spill
	fst.s	$ft5, $sp, 32                   # 4-byte Folded Spill
	fst.s	$ft6, $sp, 28                   # 4-byte Folded Spill
	fst.s	$ft7, $sp, 24                   # 4-byte Folded Spill
	fst.s	$ft8, $sp, 20                   # 4-byte Folded Spill
	beqz	$s1, .LBB11_4
# %bb.3:
	slli.d	$a0, $s1, 4
	ori	$a1, $zero, 16
	move	$fp, $a3
	move	$s2, $a2
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
	fld.s	$ft8, $sp, 20                   # 4-byte Folded Reload
	fld.s	$ft7, $sp, 24                   # 4-byte Folded Reload
	fld.s	$ft6, $sp, 28                   # 4-byte Folded Reload
	fld.s	$ft5, $sp, 32                   # 4-byte Folded Reload
	fld.s	$ft4, $sp, 36                   # 4-byte Folded Reload
	fld.s	$ft3, $sp, 40                   # 4-byte Folded Reload
	fld.s	$ft2, $sp, 44                   # 4-byte Folded Reload
	move	$a2, $s2
	move	$a3, $fp
	ld.w	$a1, $s0, 4
	move	$fp, $a0
	bgtz	$a1, .LBB11_5
	b	.LBB11_7
.LBB11_4:
	move	$fp, $zero
	blez	$a1, .LBB11_7
.LBB11_5:                               # %.lr.ph.i.i.i
	move	$a0, $zero
	slli.d	$a1, $a1, 4
	.p2align	4, , 16
.LBB11_6:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $s0, 16
	vldx	$vr0, $a4, $a0
	vstx	$vr0, $fp, $a0
	addi.d	$a0, $a0, 16
	bne	$a1, $a0, .LBB11_6
.LBB11_7:                               # %_ZNK20btAlignedObjectArrayI18btQuantizedBvhNodeE4copyEiiPS0_.exit.i.i
	ld.d	$a0, $s0, 16
	beqz	$a0, .LBB11_10
# %bb.8:                                # %_ZNK20btAlignedObjectArrayI18btQuantizedBvhNodeE4copyEiiPS0_.exit.i.i
	ld.b	$a1, $s0, 24
	andi	$a1, $a1, 1
	beqz	$a1, .LBB11_10
# %bb.9:
	move	$s2, $a3
	move	$s3, $a2
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
	fld.s	$ft8, $sp, 20                   # 4-byte Folded Reload
	fld.s	$ft7, $sp, 24                   # 4-byte Folded Reload
	fld.s	$ft6, $sp, 28                   # 4-byte Folded Reload
	fld.s	$ft5, $sp, 32                   # 4-byte Folded Reload
	fld.s	$ft4, $sp, 36                   # 4-byte Folded Reload
	fld.s	$ft3, $sp, 40                   # 4-byte Folded Reload
	fld.s	$ft2, $sp, 44                   # 4-byte Folded Reload
	move	$a2, $s3
	move	$a3, $s2
.LBB11_10:                              # %_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeE10deallocateEv.exit.i.i
	ori	$a0, $zero, 1
	ld.w	$a1, $s0, 4
	st.b	$a0, $s0, 24
	st.d	$fp, $s0, 16
	st.w	$s1, $s0, 8
.LBB11_11:                              # %_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeE9push_backERKS0_.exit
	slli.d	$a0, $a2, 21
	or	$a0, $a0, $a3
	lu12i.w	$a2, -141856
	ori	$a2, $a2, 2923
	lu32i.d	$a2, 0
	movgr2fr.w	$fa1, $a2
	fmax.s	$fa0, $fs4, $fa1
	fcmp.clt.s	$fcc0, $fa0, $fs5
	fsel	$fa0, $fa0, $fs5, $fcc0
	fcmp.clt.s	$fcc0, $fa0, $fs7
	fsel	$fa2, $fa0, $fs7, $fcc0
	lu12i.w	$a2, 382432
	ori	$a2, $a2, 2923
	movgr2fr.w	$fa3, $a2
	fmin.s	$fa0, $fs4, $fa3
	fcmp.clt.s	$fcc0, $fs5, $fa0
	fsel	$fa0, $fa0, $fs5, $fcc0
	fcmp.clt.s	$fcc0, $fs7, $fa0
	fsel	$fa0, $fa0, $fs7, $fcc0
	fsub.s	$fa4, $fa2, $fa0
	lu12i.w	$a2, 239665
	ori	$a2, $a2, 623
	movgr2fr.w	$fa5, $a2
	fadd.s	$fa6, $fa2, $fa5
	lu12i.w	$a2, 241713
	ori	$a2, $a2, 623
	movgr2fr.w	$fa7, $a2
	fcmp.clt.s	$fcc0, $fa4, $fa7
	fsel	$fa2, $fa2, $fa6, $fcc0
	fsub.s	$fa2, $fa2, $ft6
	fmul.s	$fa2, $fa2, $ft8
	vldi	$vr4, -1168
	fadd.s	$fa2, $fa2, $fa4
	ftintrz.l.s	$fa2, $fa2
	movfr2gr.d	$a2, $fa2
	ori	$a2, $a2, 1
	fmax.s	$fa2, $fs1, $fa1
	fcmp.clt.s	$fcc1, $fa2, $fs2
	fsel	$fa2, $fa2, $fs2, $fcc1
	fcmp.clt.s	$fcc1, $fa2, $fs3
	fsel	$fa2, $fa2, $fs3, $fcc1
	fmin.s	$fa6, $fs1, $fa3
	fcmp.clt.s	$fcc1, $fs2, $fa6
	fsel	$fa6, $fa6, $fs2, $fcc1
	fcmp.clt.s	$fcc1, $fs3, $fa6
	fsel	$fa6, $fa6, $fs3, $fcc1
	fsub.s	$ft0, $fa2, $fa6
	fadd.s	$ft1, $fa2, $fa5
	fcmp.clt.s	$fcc1, $ft0, $fa7
	fsel	$fa2, $fa2, $ft1, $fcc1
	fsub.s	$fa2, $fa2, $ft4
	fmul.s	$fa2, $fa2, $ft5
	fadd.s	$fa2, $fa2, $fa4
	ftintrz.l.s	$fa2, $fa2
	movfr2gr.d	$a3, $fa2
	ori	$a3, $a3, 1
	fmax.s	$fa1, $ft7, $fa1
	fcmp.clt.s	$fcc2, $fa1, $fs6
	fsel	$fa1, $fa1, $fs6, $fcc2
	fcmp.clt.s	$fcc2, $fa1, $fs0
	fsel	$fa1, $fa1, $fs0, $fcc2
	fmin.s	$fa2, $ft7, $fa3
	fcmp.clt.s	$fcc2, $fs6, $fa2
	fsel	$fa2, $fa2, $fs6, $fcc2
	fcmp.clt.s	$fcc2, $fs0, $fa2
	fsel	$fa2, $fa2, $fs0, $fcc2
	fsub.s	$fa3, $fa1, $fa2
	fadd.s	$fa5, $fa1, $fa5
	fcmp.clt.s	$fcc2, $fa3, $fa7
	fsel	$fa1, $fa1, $fa5, $fcc2
	fsub.s	$fa1, $fa1, $ft2
	fmul.s	$fa1, $fa1, $ft3
	fadd.s	$fa1, $fa1, $fa4
	ftintrz.l.s	$fa1, $fa1
	movfr2gr.d	$a4, $fa1
	ori	$a4, $a4, 1
	lu12i.w	$a5, -284623
	ori	$a5, $a5, 623
	lu32i.d	$a5, 0
	movgr2fr.w	$fa1, $a5
	fadd.s	$fa3, $fa0, $fa1
	fsel	$fa0, $fa0, $fa3, $fcc0
	fsub.s	$fa0, $fa0, $ft6
	fmul.s	$fa0, $fa0, $ft8
	ftintrz.l.s	$fa0, $fa0
	movfr2gr.d	$a5, $fa0
	lu12i.w	$a6, 15
	ori	$a6, $a6, 4094
	and	$a5, $a5, $a6
	fadd.s	$fa0, $fa6, $fa1
	fsel	$fa0, $fa6, $fa0, $fcc1
	fsub.s	$fa0, $fa0, $ft4
	fmul.s	$fa0, $fa0, $ft5
	ftintrz.l.s	$fa0, $fa0
	movfr2gr.d	$a7, $fa0
	and	$a7, $a7, $a6
	fadd.s	$fa0, $fa2, $fa1
	fsel	$fa0, $fa2, $fa0, $fcc2
	fsub.s	$fa0, $fa0, $ft2
	fmul.s	$fa0, $fa0, $ft3
	ld.d	$t0, $s0, 16
	ftintrz.l.s	$fa0, $fa0
	movfr2gr.d	$t1, $fa0
	and	$a6, $t1, $a6
	alsl.d	$t1, $a1, $t0, 4
	slli.d	$a1, $a1, 4
	stx.h	$a6, $t0, $a1
	st.h	$a7, $t1, 2
	st.h	$a5, $t1, 4
	st.h	$a4, $t1, 6
	st.h	$a3, $t1, 8
	st.h	$a2, $t1, 10
	st.w	$a0, $t1, 12
	ld.w	$a0, $s0, 4
	addi.d	$a0, $a0, 1
	st.w	$a0, $s0, 4
	fld.d	$fs7, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fs6, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fs5, $sp, 64                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 72                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 80                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 88                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 96                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 104                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 160
	ret
.Lfunc_end11:
	.size	_ZZN14btOptimizedBvh5buildEP23btStridingMeshInterfacebRK9btVector3S4_EN29QuantizedNodeTriangleCallback28internalProcessTriangleIndexEPS2_ii, .Lfunc_end11-_ZZN14btOptimizedBvh5buildEP23btStridingMeshInterfacebRK9btVector3S4_EN29QuantizedNodeTriangleCallback28internalProcessTriangleIndexEPS2_ii
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZZN14btOptimizedBvh5buildEP23btStridingMeshInterfacebRK9btVector3S4_EN20NodeTriangleCallbackD0Ev
	.type	_ZZN14btOptimizedBvh5buildEP23btStridingMeshInterfacebRK9btVector3S4_EN20NodeTriangleCallbackD0Ev,@function
_ZZN14btOptimizedBvh5buildEP23btStridingMeshInterfacebRK9btVector3S4_EN20NodeTriangleCallbackD0Ev: # @_ZZN14btOptimizedBvh5buildEP23btStridingMeshInterfacebRK9btVector3S4_EN20NodeTriangleCallbackD0Ev
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
.Ltmp30:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN31btInternalTriangleIndexCallbackD2Ev)
	jirl	$ra, $ra, 0
.Ltmp31:                                # EH_LABEL
# %bb.1:
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZdlPv)
	jr	$t8
.LBB12_2:
.Ltmp32:                                # EH_LABEL
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end12:
	.size	_ZZN14btOptimizedBvh5buildEP23btStridingMeshInterfacebRK9btVector3S4_EN20NodeTriangleCallbackD0Ev, .Lfunc_end12-_ZZN14btOptimizedBvh5buildEP23btStridingMeshInterfacebRK9btVector3S4_EN20NodeTriangleCallbackD0Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table12:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Ltmp30-.Lfunc_begin3          # >> Call Site 1 <<
	.uleb128 .Ltmp31-.Ltmp30                #   Call between .Ltmp30 and .Ltmp31
	.uleb128 .Ltmp32-.Lfunc_begin3          #     jumps to .Ltmp32
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp31-.Lfunc_begin3          # >> Call Site 2 <<
	.uleb128 .Lfunc_end12-.Ltmp31           #   Call between .Ltmp31 and .Lfunc_end12
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZZN14btOptimizedBvh5buildEP23btStridingMeshInterfacebRK9btVector3S4_EN20NodeTriangleCallback28internalProcessTriangleIndexEPS2_ii
	.type	_ZZN14btOptimizedBvh5buildEP23btStridingMeshInterfacebRK9btVector3S4_EN20NodeTriangleCallback28internalProcessTriangleIndexEPS2_ii,@function
_ZZN14btOptimizedBvh5buildEP23btStridingMeshInterfacebRK9btVector3S4_EN20NodeTriangleCallback28internalProcessTriangleIndexEPS2_ii: # @_ZZN14btOptimizedBvh5buildEP23btStridingMeshInterfacebRK9btVector3S4_EN20NodeTriangleCallback28internalProcessTriangleIndexEPS2_ii
	.cfi_startproc
# %bb.0:                                # %_Z8btSetMinIfEvRT_RKS0_.exit.i
	addi.d	$sp, $sp, -144
	.cfi_def_cfa_offset 144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 88                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 80                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 72                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 56                   # 8-byte Folded Spill
	fst.d	$fs5, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fs6, $sp, 40                   # 8-byte Folded Spill
	fst.d	$fs7, $sp, 32                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 56, -56
	.cfi_offset 57, -64
	.cfi_offset 58, -72
	.cfi_offset 59, -80
	.cfi_offset 60, -88
	.cfi_offset 61, -96
	.cfi_offset 62, -104
	.cfi_offset 63, -112
	fld.s	$ft0, $a1, 0
	fld.s	$fa7, $a1, 4
	fld.s	$fa6, $a1, 8
	fld.s	$fa5, $a1, 12
	fld.s	$fs1, $a1, 16
	fld.s	$fs4, $a1, 20
	fld.s	$fs6, $a1, 24
	fld.s	$fs5, $a1, 28
	ld.d	$s0, $a0, 8
	fld.s	$fs3, $a1, 32
	fld.s	$fs7, $a1, 36
	fld.s	$fs2, $a1, 40
	ld.w	$a4, $s0, 4
	ld.w	$a0, $s0, 8
	fld.s	$fs0, $a1, 44
	bne	$a4, $a0, .LBB13_11
# %bb.1:
	sltui	$a0, $a4, 1
	slli.w	$a1, $a4, 1
	masknez	$a1, $a1, $a0
	ori	$a5, $zero, 1
	maskeqz	$a0, $a5, $a0
	or	$s1, $a0, $a1
	bge	$a4, $s1, .LBB13_11
# %bb.2:
	fst.s	$ft0, $sp, 28                   # 4-byte Folded Spill
	fst.s	$fa7, $sp, 24                   # 4-byte Folded Spill
	fst.s	$fa6, $sp, 20                   # 4-byte Folded Spill
	fst.s	$fa5, $sp, 16                   # 4-byte Folded Spill
	beqz	$s1, .LBB13_4
# %bb.3:
	slli.d	$a0, $s1, 6
	ori	$a1, $zero, 16
	move	$fp, $a3
	move	$s2, $a2
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
	fld.s	$fa5, $sp, 16                   # 4-byte Folded Reload
	fld.s	$fa6, $sp, 20                   # 4-byte Folded Reload
	fld.s	$fa7, $sp, 24                   # 4-byte Folded Reload
	fld.s	$ft0, $sp, 28                   # 4-byte Folded Reload
	move	$a2, $s2
	move	$a3, $fp
	ld.w	$a4, $s0, 4
	move	$fp, $a0
	bgtz	$a4, .LBB13_5
	b	.LBB13_7
.LBB13_4:
	move	$fp, $zero
	blez	$a4, .LBB13_7
.LBB13_5:                               # %.lr.ph.i.i.i
	move	$a0, $zero
	slli.d	$a1, $a4, 6
	.p2align	4, , 16
.LBB13_6:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $s0, 16
	vldx	$vr0, $a4, $a0
	add.d	$a4, $a4, $a0
	vstx	$vr0, $fp, $a0
	vld	$vr0, $a4, 48
	add.d	$a5, $fp, $a0
	vst	$vr0, $a5, 48
	vld	$vr0, $a4, 32
	vst	$vr0, $a5, 32
	vld	$vr0, $a4, 16
	addi.d	$a0, $a0, 64
	vst	$vr0, $a5, 16
	bne	$a1, $a0, .LBB13_6
.LBB13_7:                               # %_ZNK20btAlignedObjectArrayI18btOptimizedBvhNodeE4copyEiiPS0_.exit.i.i
	ld.d	$a0, $s0, 16
	beqz	$a0, .LBB13_10
# %bb.8:                                # %_ZNK20btAlignedObjectArrayI18btOptimizedBvhNodeE4copyEiiPS0_.exit.i.i
	ld.b	$a1, $s0, 24
	andi	$a1, $a1, 1
	beqz	$a1, .LBB13_10
# %bb.9:
	move	$s2, $a3
	move	$s3, $a2
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
	fld.s	$fa5, $sp, 16                   # 4-byte Folded Reload
	fld.s	$fa6, $sp, 20                   # 4-byte Folded Reload
	fld.s	$fa7, $sp, 24                   # 4-byte Folded Reload
	fld.s	$ft0, $sp, 28                   # 4-byte Folded Reload
	move	$a2, $s3
	move	$a3, $s2
.LBB13_10:                              # %_ZN20btAlignedObjectArrayI18btOptimizedBvhNodeE10deallocateEv.exit.i.i
	ori	$a0, $zero, 1
	ld.w	$a4, $s0, 4
	st.b	$a0, $s0, 24
	st.d	$fp, $s0, 16
	st.w	$s1, $s0, 8
.LBB13_11:                              # %_ZN20btAlignedObjectArrayI18btOptimizedBvhNodeE9push_backERKS0_.exit
	movgr2fr.w	$fa0, $zero
	fmax.s	$fa1, $fa5, $fa0
	fcmp.clt.s	$fcc0, $fa1, $fs5
	fsel	$fa1, $fa1, $fs5, $fcc0
	fcmp.clt.s	$fcc0, $fa1, $fs0
	fsel	$fa1, $fa1, $fs0, $fcc0
	lu12i.w	$a0, -141856
	ori	$a0, $a0, 2923
	lu32i.d	$a0, 0
	movgr2fr.w	$fa2, $a0
	fmax.s	$fa3, $fa6, $fa2
	fcmp.clt.s	$fcc0, $fa3, $fs6
	fsel	$fa3, $fa3, $fs6, $fcc0
	fcmp.clt.s	$fcc0, $fa3, $fs2
	fsel	$fa3, $fa3, $fs2, $fcc0
	fmax.s	$fa4, $fa7, $fa2
	fcmp.clt.s	$fcc0, $fa4, $fs4
	fsel	$fa4, $fa4, $fs4, $fcc0
	fcmp.clt.s	$fcc0, $fa4, $fs7
	fsel	$fa4, $fa4, $fs7, $fcc0
	fmax.s	$fa2, $ft0, $fa2
	fcmp.clt.s	$fcc0, $fa2, $fs1
	fsel	$fa2, $fa2, $fs1, $fcc0
	fcmp.clt.s	$fcc0, $fa2, $fs3
	fsel	$fa2, $fa2, $fs3, $fcc0
	fmin.s	$fa0, $fa5, $fa0
	fcmp.clt.s	$fcc0, $fs5, $fa0
	fsel	$fa0, $fa0, $fs5, $fcc0
	fcmp.clt.s	$fcc0, $fs0, $fa0
	fsel	$fa0, $fa0, $fs0, $fcc0
	lu12i.w	$a0, 382432
	ori	$a0, $a0, 2923
	movgr2fr.w	$fa5, $a0
	fmin.s	$fa6, $fa6, $fa5
	fcmp.clt.s	$fcc0, $fs6, $fa6
	fsel	$fa6, $fa6, $fs6, $fcc0
	fcmp.clt.s	$fcc0, $fs2, $fa6
	fsel	$fa6, $fa6, $fs2, $fcc0
	fmin.s	$fa7, $fa7, $fa5
	fcmp.clt.s	$fcc0, $fs4, $fa7
	fsel	$fa7, $fa7, $fs4, $fcc0
	fcmp.clt.s	$fcc0, $fs7, $fa7
	fsel	$fa7, $fa7, $fs7, $fcc0
	fmin.s	$fa5, $ft0, $fa5
	fcmp.clt.s	$fcc0, $fs1, $fa5
	fsel	$fa5, $fa5, $fs1, $fcc0
	ld.d	$a0, $s0, 16
	fcmp.clt.s	$fcc0, $fs3, $fa5
	fsel	$fa5, $fa5, $fs3, $fcc0
	slli.d	$a1, $a4, 6
	add.d	$a4, $a0, $a1
	fstx.s	$fa5, $a0, $a1
	fst.s	$fa7, $a4, 4
	fst.s	$fa6, $a4, 8
	fst.s	$fa0, $a4, 12
	fst.s	$fa2, $a4, 16
	fst.s	$fa4, $a4, 20
	fst.s	$fa3, $a4, 24
	fst.s	$fa1, $a4, 28
	addi.w	$a0, $zero, -1
	lu32i.d	$a0, 0
	st.w	$a0, $a4, 32
	st.w	$a2, $a4, 36
	st.w	$a3, $a4, 40
	ld.w	$a0, $s0, 4
	addi.d	$a0, $a0, 1
	st.w	$a0, $s0, 4
	fld.d	$fs7, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs6, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs5, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 64                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 72                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 80                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 88                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.Lfunc_end13:
	.size	_ZZN14btOptimizedBvh5buildEP23btStridingMeshInterfacebRK9btVector3S4_EN20NodeTriangleCallback28internalProcessTriangleIndexEPS2_ii, .Lfunc_end13-_ZZN14btOptimizedBvh5buildEP23btStridingMeshInterfacebRK9btVector3S4_EN20NodeTriangleCallback28internalProcessTriangleIndexEPS2_ii
	.cfi_endproc
                                        # -- End function
	.type	_ZTV14btOptimizedBvh,@object    # @_ZTV14btOptimizedBvh
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTV14btOptimizedBvh
	.p2align	3, 0x0
_ZTV14btOptimizedBvh:
	.dword	0
	.dword	_ZTI14btOptimizedBvh
	.dword	_ZN14btOptimizedBvhD2Ev
	.dword	_ZN14btOptimizedBvhD0Ev
	.dword	_ZN14btOptimizedBvh9serializeEPvjb
	.size	_ZTV14btOptimizedBvh, 40

	.type	_ZTI14btOptimizedBvh,@object    # @_ZTI14btOptimizedBvh
	.globl	_ZTI14btOptimizedBvh
	.p2align	3, 0x0
_ZTI14btOptimizedBvh:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS14btOptimizedBvh
	.dword	_ZTI14btQuantizedBvh
	.size	_ZTI14btOptimizedBvh, 24

	.type	_ZTS14btOptimizedBvh,@object    # @_ZTS14btOptimizedBvh
	.section	.rodata,"a",@progbits
	.globl	_ZTS14btOptimizedBvh
_ZTS14btOptimizedBvh:
	.asciz	"14btOptimizedBvh"
	.size	_ZTS14btOptimizedBvh, 17

	.type	_ZTVZN14btOptimizedBvh5buildEP23btStridingMeshInterfacebRK9btVector3S4_E29QuantizedNodeTriangleCallback,@object # @_ZTVZN14btOptimizedBvh5buildEP23btStridingMeshInterfacebRK9btVector3S4_E29QuantizedNodeTriangleCallback
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
_ZTVZN14btOptimizedBvh5buildEP23btStridingMeshInterfacebRK9btVector3S4_E29QuantizedNodeTriangleCallback:
	.dword	0
	.dword	_ZTIZN14btOptimizedBvh5buildEP23btStridingMeshInterfacebRK9btVector3S4_E29QuantizedNodeTriangleCallback
	.dword	_ZN31btInternalTriangleIndexCallbackD2Ev
	.dword	_ZZN14btOptimizedBvh5buildEP23btStridingMeshInterfacebRK9btVector3S4_EN29QuantizedNodeTriangleCallbackD0Ev
	.dword	_ZZN14btOptimizedBvh5buildEP23btStridingMeshInterfacebRK9btVector3S4_EN29QuantizedNodeTriangleCallback28internalProcessTriangleIndexEPS2_ii
	.size	_ZTVZN14btOptimizedBvh5buildEP23btStridingMeshInterfacebRK9btVector3S4_E29QuantizedNodeTriangleCallback, 40

	.type	_ZTIZN14btOptimizedBvh5buildEP23btStridingMeshInterfacebRK9btVector3S4_E29QuantizedNodeTriangleCallback,@object # @_ZTIZN14btOptimizedBvh5buildEP23btStridingMeshInterfacebRK9btVector3S4_E29QuantizedNodeTriangleCallback
	.p2align	3, 0x0
_ZTIZN14btOptimizedBvh5buildEP23btStridingMeshInterfacebRK9btVector3S4_E29QuantizedNodeTriangleCallback:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTSZN14btOptimizedBvh5buildEP23btStridingMeshInterfacebRK9btVector3S4_E29QuantizedNodeTriangleCallback
	.dword	_ZTI31btInternalTriangleIndexCallback
	.size	_ZTIZN14btOptimizedBvh5buildEP23btStridingMeshInterfacebRK9btVector3S4_E29QuantizedNodeTriangleCallback, 24

	.type	_ZTSZN14btOptimizedBvh5buildEP23btStridingMeshInterfacebRK9btVector3S4_E29QuantizedNodeTriangleCallback,@object # @_ZTSZN14btOptimizedBvh5buildEP23btStridingMeshInterfacebRK9btVector3S4_E29QuantizedNodeTriangleCallback
	.section	.rodata,"a",@progbits
_ZTSZN14btOptimizedBvh5buildEP23btStridingMeshInterfacebRK9btVector3S4_E29QuantizedNodeTriangleCallback:
	.asciz	"ZN14btOptimizedBvh5buildEP23btStridingMeshInterfacebRK9btVector3S4_E29QuantizedNodeTriangleCallback"
	.size	_ZTSZN14btOptimizedBvh5buildEP23btStridingMeshInterfacebRK9btVector3S4_E29QuantizedNodeTriangleCallback, 100

	.type	_ZTVZN14btOptimizedBvh5buildEP23btStridingMeshInterfacebRK9btVector3S4_E20NodeTriangleCallback,@object # @_ZTVZN14btOptimizedBvh5buildEP23btStridingMeshInterfacebRK9btVector3S4_E20NodeTriangleCallback
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
_ZTVZN14btOptimizedBvh5buildEP23btStridingMeshInterfacebRK9btVector3S4_E20NodeTriangleCallback:
	.dword	0
	.dword	_ZTIZN14btOptimizedBvh5buildEP23btStridingMeshInterfacebRK9btVector3S4_E20NodeTriangleCallback
	.dword	_ZN31btInternalTriangleIndexCallbackD2Ev
	.dword	_ZZN14btOptimizedBvh5buildEP23btStridingMeshInterfacebRK9btVector3S4_EN20NodeTriangleCallbackD0Ev
	.dword	_ZZN14btOptimizedBvh5buildEP23btStridingMeshInterfacebRK9btVector3S4_EN20NodeTriangleCallback28internalProcessTriangleIndexEPS2_ii
	.size	_ZTVZN14btOptimizedBvh5buildEP23btStridingMeshInterfacebRK9btVector3S4_E20NodeTriangleCallback, 40

	.type	_ZTIZN14btOptimizedBvh5buildEP23btStridingMeshInterfacebRK9btVector3S4_E20NodeTriangleCallback,@object # @_ZTIZN14btOptimizedBvh5buildEP23btStridingMeshInterfacebRK9btVector3S4_E20NodeTriangleCallback
	.p2align	3, 0x0
_ZTIZN14btOptimizedBvh5buildEP23btStridingMeshInterfacebRK9btVector3S4_E20NodeTriangleCallback:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTSZN14btOptimizedBvh5buildEP23btStridingMeshInterfacebRK9btVector3S4_E20NodeTriangleCallback
	.dword	_ZTI31btInternalTriangleIndexCallback
	.size	_ZTIZN14btOptimizedBvh5buildEP23btStridingMeshInterfacebRK9btVector3S4_E20NodeTriangleCallback, 24

	.type	_ZTSZN14btOptimizedBvh5buildEP23btStridingMeshInterfacebRK9btVector3S4_E20NodeTriangleCallback,@object # @_ZTSZN14btOptimizedBvh5buildEP23btStridingMeshInterfacebRK9btVector3S4_E20NodeTriangleCallback
	.section	.rodata,"a",@progbits
_ZTSZN14btOptimizedBvh5buildEP23btStridingMeshInterfacebRK9btVector3S4_E20NodeTriangleCallback:
	.asciz	"ZN14btOptimizedBvh5buildEP23btStridingMeshInterfacebRK9btVector3S4_E20NodeTriangleCallback"
	.size	_ZTSZN14btOptimizedBvh5buildEP23btStridingMeshInterfacebRK9btVector3S4_E20NodeTriangleCallback, 91

	.globl	_ZN14btOptimizedBvhC1Ev
	.type	_ZN14btOptimizedBvhC1Ev,@function
_ZN14btOptimizedBvhC1Ev = _ZN14btOptimizedBvhC2Ev
	.globl	_ZN14btOptimizedBvhD1Ev
	.type	_ZN14btOptimizedBvhD1Ev,@function
_ZN14btOptimizedBvhD1Ev = _ZN14btOptimizedBvhD2Ev
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
	.addrsig_sym _ZTI14btOptimizedBvh
	.addrsig_sym _ZTVN10__cxxabiv120__si_class_type_infoE
	.addrsig_sym _ZTS14btOptimizedBvh
	.addrsig_sym _ZTI14btQuantizedBvh
	.addrsig_sym _ZTIZN14btOptimizedBvh5buildEP23btStridingMeshInterfacebRK9btVector3S4_E29QuantizedNodeTriangleCallback
	.addrsig_sym _ZTSZN14btOptimizedBvh5buildEP23btStridingMeshInterfacebRK9btVector3S4_E29QuantizedNodeTriangleCallback
	.addrsig_sym _ZTI31btInternalTriangleIndexCallback
	.addrsig_sym _ZTIZN14btOptimizedBvh5buildEP23btStridingMeshInterfacebRK9btVector3S4_E20NodeTriangleCallback
	.addrsig_sym _ZTSZN14btOptimizedBvh5buildEP23btStridingMeshInterfacebRK9btVector3S4_E20NodeTriangleCallback
