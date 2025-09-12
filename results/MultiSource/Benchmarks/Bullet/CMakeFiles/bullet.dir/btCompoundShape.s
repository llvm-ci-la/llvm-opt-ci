	.file	"btCompoundShape.cpp"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN15btCompoundShapeC2Eb
.LCPI0_0:
	.word	0x5d5e0b6b                      # float 9.99999984E+17
	.word	0x5d5e0b6b                      # float 9.99999984E+17
	.word	0x5d5e0b6b                      # float 9.99999984E+17
	.word	0x00000000                      # float 0
.LCPI0_1:
	.word	0xdd5e0b6b                      # float -9.99999984E+17
	.word	0xdd5e0b6b                      # float -9.99999984E+17
	.word	0xdd5e0b6b                      # float -9.99999984E+17
	.word	0x00000000                      # float 0
.LCPI0_2:
	.word	0x00000000                      # float 0
	.word	0x3f800000                      # float 1
	.word	0x3f800000                      # float 1
	.word	0x3f800000                      # float 1
	.text
	.globl	_ZN15btCompoundShapeC2Eb
	.p2align	5
	.type	_ZN15btCompoundShapeC2Eb,@function
_ZN15btCompoundShapeC2Eb:               # @_ZN15btCompoundShapeC2Eb
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
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	move	$fp, $a0
	st.d	$zero, $a0, 16
	pcalau12i	$a0, %pc_hi20(_ZTV15btCompoundShape+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV15btCompoundShape+16)
	pcalau12i	$a2, %pc_hi20(.LCPI0_0)
	vld	$vr0, $a2, %pc_lo12(.LCPI0_0)
	st.d	$a0, $fp, 0
	vst	$vr0, $fp, 56
	pcalau12i	$a0, %pc_hi20(.LCPI0_1)
	vld	$vr0, $a0, %pc_lo12(.LCPI0_1)
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 48
	st.d	$zero, $fp, 40
	vst	$vr0, $fp, 72
	pcalau12i	$a2, %pc_hi20(.LCPI0_2)
	vld	$vr0, $a2, %pc_lo12(.LCPI0_2)
	st.d	$zero, $fp, 28
	st.d	$zero, $fp, 88
	st.w	$a0, $fp, 96
	vst	$vr0, $fp, 100
	st.w	$zero, $fp, 116
	ori	$a0, $zero, 31
	st.w	$a0, $fp, 8
	beqz	$a1, .LBB0_4
# %bb.1:
.Ltmp0:                                 # EH_LABEL
	addi.d	$s0, $fp, 24
	ori	$a0, $zero, 64
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.2:
.Ltmp2:                                 # EH_LABEL
	move	$s1, $a0
	pcaddu18i	$ra, %call36(_ZN6btDbvtC1Ev)
	jirl	$ra, $ra, 0
.Ltmp3:                                 # EH_LABEL
# %bb.3:
	st.d	$s1, $fp, 88
.LBB0_4:
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB0_5:
.Ltmp4:                                 # EH_LABEL
	move	$fp, $a0
.Ltmp5:                                 # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN20btAlignedObjectArrayI20btCompoundShapeChildED2Ev)
	jirl	$ra, $ra, 0
.Ltmp6:                                 # EH_LABEL
# %bb.6:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB0_7:
.Ltmp7:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	_ZN15btCompoundShapeC2Eb, .Lfunc_end0-_ZN15btCompoundShapeC2Eb
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
	.uleb128 .Ltmp0-.Lfunc_begin0           # >> Call Site 1 <<
	.uleb128 .Ltmp3-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp3
	.uleb128 .Ltmp4-.Lfunc_begin0           #     jumps to .Ltmp4
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp5-.Lfunc_begin0           # >> Call Site 2 <<
	.uleb128 .Ltmp6-.Ltmp5                  #   Call between .Ltmp5 and .Ltmp6
	.uleb128 .Ltmp7-.Lfunc_begin0           #     jumps to .Ltmp7
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp6-.Lfunc_begin0           # >> Call Site 3 <<
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
	.section	.text._ZN20btAlignedObjectArrayI20btCompoundShapeChildED2Ev,"axG",@progbits,_ZN20btAlignedObjectArrayI20btCompoundShapeChildED2Ev,comdat
	.weak	_ZN20btAlignedObjectArrayI20btCompoundShapeChildED2Ev # -- Begin function _ZN20btAlignedObjectArrayI20btCompoundShapeChildED2Ev
	.p2align	5
	.type	_ZN20btAlignedObjectArrayI20btCompoundShapeChildED2Ev,@function
_ZN20btAlignedObjectArrayI20btCompoundShapeChildED2Ev: # @_ZN20btAlignedObjectArrayI20btCompoundShapeChildED2Ev
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
.LBB1_3:                                # %_ZN20btAlignedObjectArrayI20btCompoundShapeChildE5clearEv.exit
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 24
	st.d	$zero, $fp, 16
	st.d	$zero, $fp, 4
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end1:
	.size	_ZN20btAlignedObjectArrayI20btCompoundShapeChildED2Ev, .Lfunc_end1-_ZN20btAlignedObjectArrayI20btCompoundShapeChildED2Ev
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
	.text
	.globl	_ZN15btCompoundShapeD2Ev        # -- Begin function _ZN15btCompoundShapeD2Ev
	.p2align	5
	.type	_ZN15btCompoundShapeD2Ev,@function
_ZN15btCompoundShapeD2Ev:               # @_ZN15btCompoundShapeD2Ev
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
	pcalau12i	$a0, %pc_hi20(_ZTV15btCompoundShape+16)
	addi.d	$a1, $a0, %pc_lo12(_ZTV15btCompoundShape+16)
	ld.d	$a0, $fp, 88
	st.d	$a1, $fp, 0
	beqz	$a0, .LBB3_3
# %bb.1:
.Ltmp8:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6btDbvtD1Ev)
	jirl	$ra, $ra, 0
.Ltmp9:                                 # EH_LABEL
# %bb.2:
	ld.d	$a0, $fp, 88
.Ltmp10:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp11:                                # EH_LABEL
.LBB3_3:
	ld.d	$a0, $fp, 40
	beqz	$a0, .LBB3_6
# %bb.4:
	ld.b	$a1, $fp, 48
	andi	$a1, $a1, 1
	beqz	$a1, .LBB3_6
# %bb.5:
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.LBB3_6:
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 48
	st.d	$zero, $fp, 40
	st.d	$zero, $fp, 28
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB3_7:
.Ltmp12:                                # EH_LABEL
	move	$s0, $a0
	addi.d	$a0, $fp, 24
.Ltmp13:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN20btAlignedObjectArrayI20btCompoundShapeChildED2Ev)
	jirl	$ra, $ra, 0
.Ltmp14:                                # EH_LABEL
# %bb.8:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB3_9:
.Ltmp15:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end3:
	.size	_ZN15btCompoundShapeD2Ev, .Lfunc_end3-_ZN15btCompoundShapeD2Ev
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
	.uleb128 .Ltmp8-.Lfunc_begin1           # >> Call Site 1 <<
	.uleb128 .Ltmp11-.Ltmp8                 #   Call between .Ltmp8 and .Ltmp11
	.uleb128 .Ltmp12-.Lfunc_begin1          #     jumps to .Ltmp12
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp11-.Lfunc_begin1          # >> Call Site 2 <<
	.uleb128 .Ltmp13-.Ltmp11                #   Call between .Ltmp11 and .Ltmp13
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp13-.Lfunc_begin1          # >> Call Site 3 <<
	.uleb128 .Ltmp14-.Ltmp13                #   Call between .Ltmp13 and .Ltmp14
	.uleb128 .Ltmp15-.Lfunc_begin1          #     jumps to .Ltmp15
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp14-.Lfunc_begin1          # >> Call Site 4 <<
	.uleb128 .Lfunc_end3-.Ltmp14            #   Call between .Ltmp14 and .Lfunc_end3
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
	.globl	_ZN15btCompoundShapeD0Ev        # -- Begin function _ZN15btCompoundShapeD0Ev
	.p2align	5
	.type	_ZN15btCompoundShapeD0Ev,@function
_ZN15btCompoundShapeD0Ev:               # @_ZN15btCompoundShapeD0Ev
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
	pcalau12i	$a0, %pc_hi20(_ZTV15btCompoundShape+16)
	addi.d	$a1, $a0, %pc_lo12(_ZTV15btCompoundShape+16)
	ld.d	$a0, $fp, 88
	st.d	$a1, $fp, 0
	beqz	$a0, .LBB4_3
# %bb.1:
.Ltmp16:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6btDbvtD1Ev)
	jirl	$ra, $ra, 0
.Ltmp17:                                # EH_LABEL
# %bb.2:
	ld.d	$a0, $fp, 88
.Ltmp18:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp19:                                # EH_LABEL
.LBB4_3:
	ld.d	$a0, $fp, 40
	beqz	$a0, .LBB4_6
# %bb.4:
	ld.b	$a1, $fp, 48
	andi	$a1, $a1, 1
	beqz	$a1, .LBB4_6
# %bb.5:
.Ltmp24:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp25:                                # EH_LABEL
.LBB4_6:
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 48
	st.d	$zero, $fp, 40
	st.d	$zero, $fp, 28
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_Z21btAlignedFreeInternalPv)
	jr	$t8
.LBB4_7:
.Ltmp26:                                # EH_LABEL
	move	$s0, $a0
	b	.LBB4_9
.LBB4_8:
.Ltmp20:                                # EH_LABEL
	move	$s0, $a0
	addi.d	$a0, $fp, 24
.Ltmp21:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN20btAlignedObjectArrayI20btCompoundShapeChildED2Ev)
	jirl	$ra, $ra, 0
.Ltmp22:                                # EH_LABEL
.LBB4_9:                                # %.body
.Ltmp27:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp28:                                # EH_LABEL
# %bb.10:                               # %_ZN15btCompoundShapedlEPv.exit
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB4_11:
.Ltmp29:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB4_12:
.Ltmp23:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end4:
	.size	_ZN15btCompoundShapeD0Ev, .Lfunc_end4-_ZN15btCompoundShapeD0Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table4:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase2-.Lttbaseref2
.Lttbaseref2:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Ltmp16-.Lfunc_begin2          # >> Call Site 1 <<
	.uleb128 .Ltmp19-.Ltmp16                #   Call between .Ltmp16 and .Ltmp19
	.uleb128 .Ltmp20-.Lfunc_begin2          #     jumps to .Ltmp20
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp24-.Lfunc_begin2          # >> Call Site 2 <<
	.uleb128 .Ltmp25-.Ltmp24                #   Call between .Ltmp24 and .Ltmp25
	.uleb128 .Ltmp26-.Lfunc_begin2          #     jumps to .Ltmp26
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp25-.Lfunc_begin2          # >> Call Site 3 <<
	.uleb128 .Ltmp21-.Ltmp25                #   Call between .Ltmp25 and .Ltmp21
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp21-.Lfunc_begin2          # >> Call Site 4 <<
	.uleb128 .Ltmp22-.Ltmp21                #   Call between .Ltmp21 and .Ltmp22
	.uleb128 .Ltmp23-.Lfunc_begin2          #     jumps to .Ltmp23
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp27-.Lfunc_begin2          # >> Call Site 5 <<
	.uleb128 .Ltmp28-.Ltmp27                #   Call between .Ltmp27 and .Ltmp28
	.uleb128 .Ltmp29-.Lfunc_begin2          #     jumps to .Ltmp29
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp28-.Lfunc_begin2          # >> Call Site 6 <<
	.uleb128 .Lfunc_end4-.Ltmp28            #   Call between .Ltmp28 and .Lfunc_end4
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
	.globl	_ZN15btCompoundShape13addChildShapeERK11btTransformP16btCollisionShape # -- Begin function _ZN15btCompoundShape13addChildShapeERK11btTransformP16btCollisionShape
	.p2align	5
	.type	_ZN15btCompoundShape13addChildShapeERK11btTransformP16btCollisionShape,@function
_ZN15btCompoundShape13addChildShapeERK11btTransformP16btCollisionShape: # @_ZN15btCompoundShape13addChildShapeERK11btTransformP16btCollisionShape
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
	move	$fp, $a0
	ld.w	$a0, $a0, 96
	move	$s1, $a1
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 96
	vld	$vr0, $a1, 0
	move	$s0, $a2
	vst	$vr0, $sp, 72
	vld	$vr0, $a1, 16
	ld.d	$a0, $a2, 0
	vld	$vr1, $a1, 32
	vld	$vr2, $a1, 48
	ld.w	$s3, $a2, 8
	ld.d	$a1, $a0, 88
	vst	$vr0, $sp, 88
	vst	$vr1, $sp, 104
	vst	$vr2, $sp, 120
	move	$a0, $a2
	jirl	$ra, $a1, 0
	ld.d	$a0, $s0, 0
	ld.d	$a4, $a0, 16
	fmov.s	$fs0, $fa0
	addi.d	$a2, $sp, 56
	addi.d	$a3, $sp, 40
	move	$a0, $s0
	move	$a1, $s1
	jirl	$ra, $a4, 0
	fld.s	$fa1, $fp, 56
	fld.s	$fa0, $sp, 56
	fcmp.cule.s	$fcc0, $fa1, $fa0
	bceqz	$fcc0, .LBB5_8
# %bb.1:
	fld.s	$fa1, $fp, 72
	fld.s	$fa0, $sp, 40
	fcmp.cule.s	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB5_9
.LBB5_2:
	fld.s	$fa1, $fp, 60
	fld.s	$fa0, $sp, 60
	fcmp.cule.s	$fcc0, $fa1, $fa0
	bceqz	$fcc0, .LBB5_10
.LBB5_3:
	fld.s	$fa1, $fp, 76
	fld.s	$fa0, $sp, 44
	fcmp.cule.s	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB5_11
.LBB5_4:
	fld.s	$fa1, $fp, 64
	fld.s	$fa0, $sp, 64
	fcmp.cule.s	$fcc0, $fa1, $fa0
	bceqz	$fcc0, .LBB5_12
.LBB5_5:
	fld.s	$fa1, $fp, 80
	fld.s	$fa0, $sp, 48
	fcmp.cule.s	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB5_13
.LBB5_6:
	ld.d	$a0, $fp, 88
	beqz	$a0, .LBB5_14
.LBB5_7:
	vld	$vr0, $sp, 56
	vld	$vr1, $sp, 40
	ld.w	$a2, $fp, 28
	vst	$vr0, $sp, 8
	vst	$vr1, $sp, 24
	addi.d	$a1, $sp, 8
	pcaddu18i	$ra, %call36(_ZN6btDbvt6insertERK12btDbvtAabbMmPv)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	b	.LBB5_15
.LBB5_8:
	fst.s	$fa0, $fp, 56
	fld.s	$fa1, $fp, 72
	fld.s	$fa0, $sp, 40
	fcmp.cule.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB5_2
.LBB5_9:
	fst.s	$fa0, $fp, 72
	fld.s	$fa1, $fp, 60
	fld.s	$fa0, $sp, 60
	fcmp.cule.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB5_3
.LBB5_10:
	fst.s	$fa0, $fp, 60
	fld.s	$fa1, $fp, 76
	fld.s	$fa0, $sp, 44
	fcmp.cule.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB5_4
.LBB5_11:
	fst.s	$fa0, $fp, 76
	fld.s	$fa1, $fp, 64
	fld.s	$fa0, $sp, 64
	fcmp.cule.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB5_5
.LBB5_12:
	fst.s	$fa0, $fp, 64
	fld.s	$fa1, $fp, 80
	fld.s	$fa0, $sp, 48
	fcmp.cule.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB5_6
.LBB5_13:
	fst.s	$fa0, $fp, 80
	ld.d	$a0, $fp, 88
	bnez	$a0, .LBB5_7
.LBB5_14:
                                        # implicit-def: $r24
.LBB5_15:
	ld.w	$a1, $fp, 28
	ld.w	$a0, $fp, 32
	addi.d	$s6, $sp, 88
	addi.d	$s5, $sp, 104
	addi.d	$s4, $sp, 120
	bne	$a1, $a0, .LBB5_26
# %bb.16:
	sltui	$a0, $a1, 1
	slli.w	$a2, $a1, 1
	masknez	$a2, $a2, $a0
	ori	$a3, $zero, 1
	maskeqz	$a0, $a3, $a0
	or	$s7, $a0, $a2
	bge	$a1, $s7, .LBB5_26
# %bb.17:
	beqz	$s7, .LBB5_19
# %bb.18:
	ori	$a0, $zero, 88
	mul.d	$a0, $s7, $a0
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 28
	move	$s2, $a0
	bgtz	$a1, .LBB5_20
	b	.LBB5_22
.LBB5_19:
	move	$s2, $zero
	blez	$a1, .LBB5_22
.LBB5_20:                               # %.lr.ph.i.i.i
	move	$a0, $zero
	ori	$a2, $zero, 88
	mul.d	$a1, $a1, $a2
	.p2align	4, , 16
.LBB5_21:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $fp, 40
	vldx	$vr0, $a2, $a0
	add.d	$a2, $a2, $a0
	vstx	$vr0, $s2, $a0
	vld	$vr0, $a2, 16
	add.d	$a3, $s2, $a0
	vst	$vr0, $a3, 16
	vld	$vr0, $a2, 32
	vst	$vr0, $a3, 32
	vld	$vr0, $a2, 48
	vst	$vr0, $a3, 48
	ld.d	$a4, $a2, 64
	st.d	$a4, $a3, 64
	vld	$vr0, $a2, 72
	addi.d	$a0, $a0, 88
	vst	$vr0, $a3, 72
	bne	$a1, $a0, .LBB5_21
.LBB5_22:                               # %_ZNK20btAlignedObjectArrayI20btCompoundShapeChildE4copyEiiPS0_.exit.i.i
	ld.d	$a0, $fp, 40
	beqz	$a0, .LBB5_25
# %bb.23:                               # %_ZNK20btAlignedObjectArrayI20btCompoundShapeChildE4copyEiiPS0_.exit.i.i
	ld.b	$a1, $fp, 48
	andi	$a1, $a1, 1
	beqz	$a1, .LBB5_25
# %bb.24:
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.LBB5_25:                               # %_ZN20btAlignedObjectArrayI20btCompoundShapeChildE10deallocateEv.exit.i.i
	ori	$a0, $zero, 1
	ld.w	$a1, $fp, 28
	st.b	$a0, $fp, 48
	st.d	$s2, $fp, 40
	st.w	$s7, $fp, 32
.LBB5_26:                               # %_ZN20btAlignedObjectArrayI20btCompoundShapeChildE9push_backERKS0_.exit
	ld.d	$a0, $fp, 40
	vld	$vr0, $sp, 72
	ori	$a2, $zero, 88
	mul.d	$a1, $a1, $a2
	vstx	$vr0, $a0, $a1
	vld	$vr0, $s6, 0
	vld	$vr1, $s5, 0
	vld	$vr2, $s4, 0
	add.d	$a0, $a0, $a1
	vst	$vr0, $a0, 16
	vst	$vr1, $a0, 32
	vst	$vr2, $a0, 48
	st.d	$s0, $a0, 64
	st.w	$s3, $a0, 72
	fst.s	$fs0, $a0, 76
	st.d	$s1, $a0, 80
	ld.w	$a0, $fp, 28
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 28
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
.Lfunc_end5:
	.size	_ZN15btCompoundShape13addChildShapeERK11btTransformP16btCollisionShape, .Lfunc_end5-_ZN15btCompoundShape13addChildShapeERK11btTransformP16btCollisionShape
	.cfi_endproc
                                        # -- End function
	.globl	_ZN15btCompoundShape20updateChildTransformEiRK11btTransform # -- Begin function _ZN15btCompoundShape20updateChildTransformEiRK11btTransform
	.p2align	5
	.type	_ZN15btCompoundShape20updateChildTransformEiRK11btTransform,@function
_ZN15btCompoundShape20updateChildTransformEiRK11btTransform: # @_ZN15btCompoundShape20updateChildTransformEiRK11btTransform
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
	move	$a4, $a2
	move	$fp, $a0
	ld.d	$a0, $a0, 40
	vld	$vr0, $a2, 0
	ori	$a2, $zero, 88
	mul.d	$s0, $a1, $a2
	vstx	$vr0, $a0, $s0
	vld	$vr0, $a4, 16
	add.d	$a0, $a0, $s0
	vst	$vr0, $a0, 16
	vld	$vr0, $a4, 32
	vst	$vr0, $a0, 32
	vld	$vr0, $a4, 48
	vst	$vr0, $a0, 48
	ld.d	$a0, $fp, 88
	beqz	$a0, .LBB6_2
# %bb.1:
	ld.d	$a0, $fp, 40
	add.d	$a0, $a0, $s0
	ld.d	$a0, $a0, 64
	ld.d	$a1, $a0, 0
	ld.d	$a5, $a1, 16
	addi.d	$a2, $sp, 56
	addi.d	$a3, $sp, 40
	move	$a1, $a4
	jirl	$ra, $a5, 0
	vld	$vr0, $sp, 56
	vld	$vr1, $sp, 40
	ld.d	$a1, $fp, 40
	vst	$vr0, $sp, 8
	vst	$vr1, $sp, 24
	ld.d	$a0, $fp, 88
	add.d	$a1, $a1, $s0
	ld.d	$a1, $a1, 80
	addi.d	$a2, $sp, 8
	pcaddu18i	$ra, %call36(_ZN6btDbvt6updateEP10btDbvtNodeR12btDbvtAabbMm)
	jirl	$ra, $ra, 0
.LBB6_2:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 104
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end6:
	.size	_ZN15btCompoundShape20updateChildTransformEiRK11btTransform, .Lfunc_end6-_ZN15btCompoundShape20updateChildTransformEiRK11btTransform
	.cfi_endproc
                                        # -- End function
	.globl	_ZN15btCompoundShape23removeChildShapeByIndexEi # -- Begin function _ZN15btCompoundShape23removeChildShapeByIndexEi
	.p2align	5
	.type	_ZN15btCompoundShape23removeChildShapeByIndexEi,@function
_ZN15btCompoundShape23removeChildShapeByIndexEi: # @_ZN15btCompoundShape23removeChildShapeByIndexEi
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -128
	.cfi_def_cfa_offset 128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	move	$fp, $a0
	ld.w	$a2, $a0, 96
	ld.d	$a0, $a0, 88
	move	$s0, $a1
	addi.d	$a1, $a2, 1
	st.w	$a1, $fp, 96
	beqz	$a0, .LBB7_2
# %bb.1:
	ld.d	$a1, $fp, 40
	ori	$a2, $zero, 88
	mul.d	$a2, $s0, $a2
	add.d	$a1, $a1, $a2
	ld.d	$a1, $a1, 80
	pcaddu18i	$ra, %call36(_ZN6btDbvt6removeEP10btDbvtNode)
	jirl	$ra, $ra, 0
.LBB7_2:
	ld.w	$a0, $fp, 28
	ld.d	$a1, $fp, 40
	addi.w	$a0, $a0, -1
	ori	$a2, $zero, 88
	mul.d	$a0, $a0, $a2
	vldx	$vr0, $a1, $a0
	mul.d	$a2, $s0, $a2
	vldx	$vr1, $a1, $a2
	add.d	$a3, $a1, $a0
	vstx	$vr0, $a1, $a2
	vld	$vr0, $a3, 16
	add.d	$a1, $a1, $a2
	vld	$vr2, $a1, 16
	vst	$vr0, $a1, 16
	vld	$vr0, $a3, 32
	vld	$vr3, $a1, 32
	vst	$vr0, $a1, 32
	vld	$vr0, $a3, 48
	vst	$vr1, $sp, 16
	vld	$vr1, $a1, 48
	vst	$vr0, $a1, 48
	vld	$vr0, $a3, 64
	vst	$vr2, $sp, 32
	vst	$vr3, $sp, 48
	vld	$vr2, $a1, 64
	vst	$vr0, $a1, 64
	ld.d	$a2, $a3, 80
	vst	$vr1, $sp, 64
	vst	$vr2, $sp, 80
	ld.d	$a3, $a1, 80
	st.d	$a2, $a1, 80
	ld.d	$a1, $fp, 40
	vld	$vr0, $sp, 16
	vld	$vr1, $sp, 32
	st.d	$a3, $sp, 96
	add.d	$a2, $a1, $a0
	vstx	$vr0, $a1, $a0
	vst	$vr1, $a2, 16
	vld	$vr0, $sp, 48
	vld	$vr1, $sp, 64
	vld	$vr2, $sp, 80
	ld.d	$a0, $sp, 96
	vst	$vr0, $a2, 32
	vst	$vr1, $a2, 48
	vst	$vr2, $a2, 64
	st.d	$a0, $a2, 80
	ld.w	$a0, $fp, 28
	addi.d	$a0, $a0, -1
	st.w	$a0, $fp, 28
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.Lfunc_end7:
	.size	_ZN15btCompoundShape23removeChildShapeByIndexEi, .Lfunc_end7-_ZN15btCompoundShape23removeChildShapeByIndexEi
	.cfi_endproc
                                        # -- End function
	.globl	_ZN15btCompoundShape16removeChildShapeEP16btCollisionShape # -- Begin function _ZN15btCompoundShape16removeChildShapeEP16btCollisionShape
	.p2align	5
	.type	_ZN15btCompoundShape16removeChildShapeEP16btCollisionShape,@function
_ZN15btCompoundShape16removeChildShapeEP16btCollisionShape: # @_ZN15btCompoundShape16removeChildShapeEP16btCollisionShape
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
	move	$fp, $a0
	ld.w	$a0, $a0, 96
	ld.w	$a2, $fp, 28
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 96
	blez	$a2, .LBB8_7
# %bb.1:                                # %.lr.ph
	move	$s0, $a1
	addi.d	$s1, $sp, 32
	addi.d	$s2, $sp, 48
	addi.d	$s3, $sp, 64
	addi.d	$s4, $sp, 80
	addi.d	$s5, $a2, 1
	ori	$s6, $zero, 88
	mul.d	$s7, $a2, $s6
	ori	$s8, $zero, 1
	b	.LBB8_4
	.p2align	4, , 16
.LBB8_2:                                # %_ZN15btCompoundShape23removeChildShapeByIndexEi.exit
                                        #   in Loop: Header=BB8_4 Depth=1
	addi.w	$a0, $a2, -1
	mul.d	$a0, $a0, $s6
	vldx	$vr0, $a1, $a0
	add.d	$a2, $a1, $s7
	vld	$vr1, $a2, -88
	add.d	$a1, $a1, $a0
	vst	$vr0, $a2, -88
	vld	$vr0, $a1, 16
	vld	$vr2, $a2, -72
	vst	$vr0, $a2, -72
	vld	$vr0, $a1, 32
	vld	$vr3, $a2, -56
	vst	$vr0, $a2, -56
	vld	$vr0, $a1, 48
	vst	$vr1, $sp, 16
	vld	$vr1, $a2, -40
	vst	$vr0, $a2, -40
	vld	$vr0, $a1, 64
	vst	$vr2, $s1, 0
	vst	$vr3, $s2, 0
	vld	$vr2, $a2, -24
	vst	$vr0, $a2, -24
	ld.d	$a1, $a1, 80
	vst	$vr1, $s3, 0
	vst	$vr2, $s4, 0
	ld.d	$a3, $a2, -8
	st.d	$a1, $a2, -8
	ld.d	$a1, $fp, 40
	vld	$vr0, $sp, 16
	vld	$vr1, $s1, 0
	st.d	$a3, $s4, 16
	add.d	$a2, $a1, $a0
	vstx	$vr0, $a1, $a0
	vst	$vr1, $a2, 16
	vld	$vr0, $s2, 0
	vld	$vr1, $s3, 0
	ld.d	$a0, $s4, 16
	vld	$vr2, $s4, 0
	vst	$vr0, $a2, 32
	vst	$vr1, $a2, 48
	st.d	$a0, $a2, 80
	vst	$vr2, $a2, 64
	ld.w	$a0, $fp, 28
	addi.d	$a2, $a0, -1
	st.w	$a2, $fp, 28
.LBB8_3:                                #   in Loop: Header=BB8_4 Depth=1
	addi.d	$s5, $s5, -1
	addi.d	$s7, $s7, -88
	bgeu	$s8, $s5, .LBB8_7
.LBB8_4:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $fp, 40
	add.d	$a3, $a1, $s7
	ld.d	$a0, $a3, -24
	bne	$a0, $s0, .LBB8_3
# %bb.5:                                #   in Loop: Header=BB8_4 Depth=1
	ld.w	$a4, $fp, 96
	ld.d	$a0, $fp, 88
	addi.d	$a4, $a4, 1
	st.w	$a4, $fp, 96
	beqz	$a0, .LBB8_2
# %bb.6:                                #   in Loop: Header=BB8_4 Depth=1
	ld.d	$a1, $a3, -8
	pcaddu18i	$ra, %call36(_ZN6btDbvt6removeEP10btDbvtNode)
	jirl	$ra, $ra, 0
	ld.w	$a2, $fp, 28
	ld.d	$a1, $fp, 40
	b	.LBB8_2
.LBB8_7:                                # %._crit_edge
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 104
	move	$a0, $fp
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
	jr	$a1
.Lfunc_end8:
	.size	_ZN15btCompoundShape16removeChildShapeEP16btCollisionShape, .Lfunc_end8-_ZN15btCompoundShape16removeChildShapeEP16btCollisionShape
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN15btCompoundShape20recalculateLocalAabbEv
.LCPI9_0:
	.word	0x5d5e0b6b                      # float 9.99999984E+17
	.word	0x5d5e0b6b                      # float 9.99999984E+17
	.word	0x5d5e0b6b                      # float 9.99999984E+17
	.word	0x00000000                      # float 0
.LCPI9_1:
	.word	0xdd5e0b6b                      # float -9.99999984E+17
	.word	0xdd5e0b6b                      # float -9.99999984E+17
	.word	0xdd5e0b6b                      # float -9.99999984E+17
	.word	0x00000000                      # float 0
	.text
	.globl	_ZN15btCompoundShape20recalculateLocalAabbEv
	.p2align	5
	.type	_ZN15btCompoundShape20recalculateLocalAabbEv,@function
_ZN15btCompoundShape20recalculateLocalAabbEv: # @_ZN15btCompoundShape20recalculateLocalAabbEv
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
	pcalau12i	$a0, %pc_hi20(.LCPI9_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI9_0)
	pcalau12i	$a0, %pc_hi20(.LCPI9_1)
	vld	$vr1, $a0, %pc_lo12(.LCPI9_1)
	ld.w	$a0, $fp, 28
	vst	$vr0, $fp, 56
	vst	$vr1, $fp, 72
	blez	$a0, .LBB9_15
# %bb.1:                                # %.lr.ph
	move	$s0, $zero
	move	$s1, $zero
	b	.LBB9_3
	.p2align	4, , 16
.LBB9_2:                                #   in Loop: Header=BB9_3 Depth=1
	ld.w	$a0, $fp, 28
	addi.d	$s1, $s1, 1
	addi.d	$s0, $s0, 88
	bge	$s1, $a0, .LBB9_15
.LBB9_3:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 40
	add.d	$a1, $a0, $s0
	ld.d	$a0, $a1, 64
	ld.d	$a2, $a0, 0
	ld.d	$a4, $a2, 16
	addi.d	$a2, $sp, 32
	addi.d	$a3, $sp, 16
	jirl	$ra, $a4, 0
	fld.s	$fa1, $fp, 56
	fld.s	$fa0, $sp, 32
	fcmp.cule.s	$fcc0, $fa1, $fa0
	bceqz	$fcc0, .LBB9_9
# %bb.4:                                #   in Loop: Header=BB9_3 Depth=1
	fld.s	$fa1, $fp, 72
	fld.s	$fa0, $sp, 16
	fcmp.cule.s	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB9_10
.LBB9_5:                                #   in Loop: Header=BB9_3 Depth=1
	fld.s	$fa1, $fp, 60
	fld.s	$fa0, $sp, 36
	fcmp.cule.s	$fcc0, $fa1, $fa0
	bceqz	$fcc0, .LBB9_11
.LBB9_6:                                #   in Loop: Header=BB9_3 Depth=1
	fld.s	$fa1, $fp, 76
	fld.s	$fa0, $sp, 20
	fcmp.cule.s	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB9_12
.LBB9_7:                                #   in Loop: Header=BB9_3 Depth=1
	fld.s	$fa1, $fp, 64
	fld.s	$fa0, $sp, 40
	fcmp.cule.s	$fcc0, $fa1, $fa0
	bceqz	$fcc0, .LBB9_13
.LBB9_8:                                #   in Loop: Header=BB9_3 Depth=1
	fld.s	$fa1, $fp, 80
	fld.s	$fa0, $sp, 24
	fcmp.cule.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB9_2
	b	.LBB9_14
	.p2align	4, , 16
.LBB9_9:                                #   in Loop: Header=BB9_3 Depth=1
	fst.s	$fa0, $fp, 56
	fld.s	$fa1, $fp, 72
	fld.s	$fa0, $sp, 16
	fcmp.cule.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB9_5
.LBB9_10:                               #   in Loop: Header=BB9_3 Depth=1
	fst.s	$fa0, $fp, 72
	fld.s	$fa1, $fp, 60
	fld.s	$fa0, $sp, 36
	fcmp.cule.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB9_6
.LBB9_11:                               #   in Loop: Header=BB9_3 Depth=1
	fst.s	$fa0, $fp, 60
	fld.s	$fa1, $fp, 76
	fld.s	$fa0, $sp, 20
	fcmp.cule.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB9_7
.LBB9_12:                               #   in Loop: Header=BB9_3 Depth=1
	fst.s	$fa0, $fp, 76
	fld.s	$fa1, $fp, 64
	fld.s	$fa0, $sp, 40
	fcmp.cule.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB9_8
.LBB9_13:                               #   in Loop: Header=BB9_3 Depth=1
	fst.s	$fa0, $fp, 64
	fld.s	$fa1, $fp, 80
	fld.s	$fa0, $sp, 24
	fcmp.cule.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB9_2
.LBB9_14:                               #   in Loop: Header=BB9_3 Depth=1
	fst.s	$fa0, $fp, 80
	b	.LBB9_2
.LBB9_15:                               # %._crit_edge
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end9:
	.size	_ZN15btCompoundShape20recalculateLocalAabbEv, .Lfunc_end9-_ZN15btCompoundShape20recalculateLocalAabbEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZNK15btCompoundShape7getAabbERK11btTransformR9btVector3S4_ # -- Begin function _ZNK15btCompoundShape7getAabbERK11btTransformR9btVector3S4_
	.p2align	5
	.type	_ZNK15btCompoundShape7getAabbERK11btTransformR9btVector3S4_,@function
_ZNK15btCompoundShape7getAabbERK11btTransformR9btVector3S4_: # @_ZNK15btCompoundShape7getAabbERK11btTransformR9btVector3S4_
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
	fst.d	$fs4, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs5, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs6, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs7, $sp, 8                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 56, -48
	.cfi_offset 57, -56
	.cfi_offset 58, -64
	.cfi_offset 59, -72
	.cfi_offset 60, -80
	.cfi_offset 61, -88
	.cfi_offset 62, -96
	.cfi_offset 63, -104
	move	$s2, $a0
	ld.w	$a4, $a0, 28
	move	$fp, $a3
	move	$s0, $a2
	move	$s1, $a1
	beqz	$a4, .LBB10_2
# %bb.1:
	fld.s	$fa0, $s2, 72
	fld.s	$fa1, $s2, 56
	fld.s	$fa2, $s2, 76
	fld.s	$fa3, $s2, 60
	fld.s	$fa4, $s2, 80
	fld.s	$fa5, $s2, 64
	fsub.s	$fa6, $fa0, $fa1
	fsub.s	$fa7, $fa2, $fa3
	fsub.s	$ft0, $fa4, $fa5
	vldi	$vr9, -1184
	fmul.s	$fs6, $fa6, $ft1
	fmul.s	$fs7, $fa7, $ft1
	fmul.s	$fs5, $ft0, $ft1
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa1, $fa2, $fa3
	fadd.s	$fa2, $fa4, $fa5
	fmul.s	$fs3, $fa0, $ft1
	fmul.s	$fs4, $fa1, $ft1
	fmul.s	$fs2, $fa2, $ft1
	b	.LBB10_3
.LBB10_2:
	movgr2fr.w	$fs2, $zero
	fmov.s	$fs3, $fs2
	fmov.s	$fs4, $fs2
	fmov.s	$fs5, $fs2
	fmov.s	$fs6, $fs2
	fmov.s	$fs7, $fs2
.LBB10_3:
	ld.d	$a1, $s2, 0
	ld.d	$a1, $a1, 88
	move	$a0, $s2
	jirl	$ra, $a1, 0
	ld.d	$a0, $s2, 0
	ld.d	$a1, $a0, 88
	fmov.s	$fs0, $fa0
	move	$a0, $s2
	jirl	$ra, $a1, 0
	ld.d	$a0, $s2, 0
	ld.d	$a1, $a0, 88
	fmov.s	$fs1, $fa0
	move	$a0, $s2
	jirl	$ra, $a1, 0
	fadd.s	$fa1, $fs6, $fs0
	fadd.s	$fa2, $fs7, $fs1
	fadd.s	$fa0, $fs5, $fa0
	fld.s	$fa3, $s1, 0
	fld.s	$fa4, $s1, 4
	fld.s	$fa5, $s1, 8
	fld.s	$fa6, $s1, 16
	fabs.s	$fa7, $fa3
	fabs.s	$ft0, $fa4
	fabs.s	$ft1, $fa5
	fabs.s	$ft2, $fa6
	fld.s	$ft3, $s1, 20
	fld.s	$ft4, $s1, 24
	fld.s	$ft5, $s1, 32
	fld.s	$ft6, $s1, 36
	fabs.s	$ft7, $ft3
	fabs.s	$ft8, $ft4
	fabs.s	$ft9, $ft5
	fabs.s	$ft10, $ft6
	fld.s	$ft11, $s1, 40
	fmul.s	$fa4, $fs4, $fa4
	fld.s	$ft12, $s1, 48
	fmadd.s	$fa3, $fa3, $fs3, $fa4
	fabs.s	$fa4, $ft11
	fmadd.s	$fa3, $fa5, $fs2, $fa3
	fadd.s	$fa3, $fa3, $ft12
	fld.s	$fa5, $s1, 52
	fmul.s	$ft3, $fs4, $ft3
	fmadd.s	$fa6, $fa6, $fs3, $ft3
	fmadd.s	$fa6, $ft4, $fs2, $fa6
	fadd.s	$fa5, $fa6, $fa5
	fld.s	$fa6, $s1, 56
	fmul.s	$ft3, $fs4, $ft6
	fmadd.s	$ft3, $ft5, $fs3, $ft3
	fmadd.s	$ft3, $ft11, $fs2, $ft3
	fadd.s	$fa6, $ft3, $fa6
	fmul.s	$ft0, $fa2, $ft0
	fmadd.s	$fa7, $fa7, $fa1, $ft0
	fmadd.s	$fa7, $ft1, $fa0, $fa7
	fmul.s	$ft0, $fa2, $ft7
	fmadd.s	$ft0, $ft2, $fa1, $ft0
	fmadd.s	$ft0, $ft8, $fa0, $ft0
	fmul.s	$fa2, $fa2, $ft10
	fmadd.s	$fa1, $ft9, $fa1, $fa2
	fmadd.s	$fa0, $fa4, $fa0, $fa1
	fsub.s	$fa1, $fa3, $fa7
	fsub.s	$fa2, $fa5, $ft0
	fsub.s	$fa4, $fa6, $fa0
	movfr2gr.s	$a0, $fa1
	movfr2gr.s	$a1, $fa2
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa4
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $s0, 0
	st.d	$a1, $s0, 8
	fadd.s	$fa1, $fa7, $fa3
	fadd.s	$fa2, $ft0, $fa5
	fadd.s	$fa0, $fa0, $fa6
	movfr2gr.s	$a0, $fa1
	movfr2gr.s	$a1, $fa2
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa0
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $fp, 0
	st.d	$a1, $fp, 8
	fld.d	$fs7, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs6, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs5, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 32                   # 8-byte Folded Reload
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
.Lfunc_end10:
	.size	_ZNK15btCompoundShape7getAabbERK11btTransformR9btVector3S4_, .Lfunc_end10-_ZNK15btCompoundShape7getAabbERK11btTransformR9btVector3S4_
	.cfi_endproc
                                        # -- End function
	.globl	_ZNK15btCompoundShape21calculateLocalInertiaEfR9btVector3 # -- Begin function _ZNK15btCompoundShape21calculateLocalInertiaEfR9btVector3
	.p2align	5
	.type	_ZNK15btCompoundShape21calculateLocalInertiaEfR9btVector3,@function
_ZNK15btCompoundShape21calculateLocalInertiaEfR9btVector3: # @_ZNK15btCompoundShape21calculateLocalInertiaEfR9btVector3
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -128
	.cfi_def_cfa_offset 128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 104                  # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 56, -24
	lu12i.w	$a2, 260096
	vrepli.b	$vr1, 0
	vst	$vr1, $sp, 44
	st.w	$a2, $sp, 60
	vst	$vr1, $sp, 64
	ld.d	$a3, $a0, 0
	st.w	$a2, $sp, 80
	vst	$vr1, $sp, 84
	st.w	$zero, $sp, 100
	ld.d	$a4, $a3, 16
	move	$fp, $a1
	fmov.s	$fs0, $fa0
	st.w	$a2, $sp, 40
	addi.d	$a1, $sp, 40
	addi.d	$a2, $sp, 24
	addi.d	$a3, $sp, 8
	jirl	$ra, $a4, 0
	fld.s	$fa0, $sp, 8
	fld.s	$fa1, $sp, 24
	fld.s	$fa2, $sp, 12
	fld.s	$fa3, $sp, 28
	fld.s	$fa4, $sp, 16
	fld.s	$fa5, $sp, 32
	fsub.s	$fa0, $fa0, $fa1
	fsub.s	$fa1, $fa2, $fa3
	fsub.s	$fa2, $fa4, $fa5
	vldi	$vr3, -1184
	fmul.s	$fa0, $fa0, $fa3
	fmul.s	$fa1, $fa1, $fa3
	fmul.s	$fa2, $fa2, $fa3
	fadd.s	$fa0, $fa0, $fa0
	fadd.s	$fa1, $fa1, $fa1
	fadd.s	$fa2, $fa2, $fa2
	vldi	$vr3, -1240
	fdiv.s	$fa3, $fs0, $fa3
	fmul.s	$fa2, $fa2, $fa2
	fmadd.s	$fa4, $fa1, $fa1, $fa2
	fmul.s	$fa4, $fa3, $fa4
	fst.s	$fa4, $fp, 0
	fmadd.s	$fa2, $fa0, $fa0, $fa2
	fmul.s	$fa2, $fa3, $fa2
	fst.s	$fa2, $fp, 4
	fmul.s	$fa1, $fa1, $fa1
	fmadd.s	$fa0, $fa0, $fa0, $fa1
	fmul.s	$fa0, $fa3, $fa0
	fst.s	$fa0, $fp, 8
	fld.d	$fs0, $sp, 104                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.Lfunc_end11:
	.size	_ZNK15btCompoundShape21calculateLocalInertiaEfR9btVector3, .Lfunc_end11-_ZNK15btCompoundShape21calculateLocalInertiaEfR9btVector3
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZNK15btCompoundShape31calculatePrincipalAxisTransformEPfR11btTransformR9btVector3
.LCPI12_0:
	.word	0x3727c5ac                      # float 9.99999974E-6
	.text
	.globl	_ZNK15btCompoundShape31calculatePrincipalAxisTransformEPfR11btTransformR9btVector3
	.p2align	5
	.type	_ZNK15btCompoundShape31calculatePrincipalAxisTransformEPfR11btTransformR9btVector3,@function
_ZNK15btCompoundShape31calculatePrincipalAxisTransformEPfR11btTransformR9btVector3: # @_ZNK15btCompoundShape31calculatePrincipalAxisTransformEPfR11btTransformR9btVector3
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
	.cfi_offset 56, -64
	.cfi_offset 57, -72
	.cfi_offset 58, -80
	.cfi_offset 59, -88
	.cfi_offset 60, -96
	.cfi_offset 61, -104
	.cfi_offset 62, -112
	.cfi_offset 63, -120
	move	$s1, $a0
	ld.w	$a0, $a0, 28
	move	$fp, $a3
	move	$s0, $a2
	move	$s2, $a1
	blez	$a0, .LBB12_3
# %bb.1:                                # %.lr.ph
	ld.d	$a1, $s1, 40
	movgr2fr.w	$fa0, $zero
	addi.d	$a1, $a1, 56
	move	$a2, $a0
	move	$a3, $s2
	fmov.s	$fa1, $fa0
	fmov.s	$fa3, $fa0
	fmov.s	$fa2, $fa0
	.p2align	4, , 16
.LBB12_2:                               # =>This Inner Loop Header: Depth=1
	fld.s	$fa4, $a1, -8
	fld.s	$fa5, $a3, 0
	fld.s	$fa6, $a1, -4
	fld.s	$fa7, $a1, 0
	fmul.s	$fa4, $fa4, $fa5
	fmul.s	$fa6, $fa5, $fa6
	fmul.s	$fa7, $fa5, $fa7
	fadd.s	$fa2, $fa2, $fa4
	fadd.s	$fa3, $fa3, $fa6
	fadd.s	$fa1, $fa1, $fa7
	fadd.s	$fa0, $fa0, $fa5
	addi.d	$a3, $a3, 4
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 88
	bnez	$a2, .LBB12_2
	b	.LBB12_4
.LBB12_3:
	movgr2fr.w	$fa2, $zero
	fmov.s	$fa3, $fa2
	fmov.s	$fa1, $fa2
	fmov.s	$fa0, $fa2
.LBB12_4:                               # %._crit_edge
	frecip.s	$fa0, $fa0
	fmul.s	$fs4, $fa2, $fa0
	fmul.s	$fs5, $fa3, $fa0
	fmul.s	$fs6, $fa1, $fa0
	fst.s	$fs4, $s0, 48
	fst.s	$fs5, $s0, 52
	fst.s	$fs6, $s0, 56
	st.w	$zero, $s0, 60
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 72
	vst	$vr0, $sp, 56
	vst	$vr0, $sp, 40
	blez	$a0, .LBB12_7
# %bb.5:                                # %.lr.ph220
	move	$s3, $zero
	ori	$a1, $zero, 88
	movgr2fr.w	$fa0, $zero
	mul.d	$s4, $a0, $a1
	fmov.s	$fs0, $fa0
	fmov.s	$fs3, $fa0
	fmov.s	$fs1, $fa0
	fmov.s	$ft2, $fa0
	fmov.s	$ft0, $fa0
	fmov.s	$fs2, $fa0
	fmov.s	$fs7, $fa0
	fst.s	$fa0, $sp, 8                    # 4-byte Folded Spill
	fmov.s	$ft6, $fa0
	.p2align	4, , 16
.LBB12_6:                               # =>This Inner Loop Header: Depth=1
	fst.s	$ft6, $sp, 12                   # 4-byte Folded Spill
	fst.s	$ft0, $sp, 16                   # 4-byte Folded Spill
	fst.s	$ft2, $sp, 20                   # 4-byte Folded Spill
	ld.d	$a0, $s1, 40
	add.d	$a0, $a0, $s3
	ld.d	$a0, $a0, 64
	ld.d	$a1, $a0, 0
	fld.s	$fa0, $s2, 0
	ld.d	$a2, $a1, 64
	addi.d	$a1, $sp, 24
	jirl	$ra, $a2, 0
	ld.d	$a1, $s1, 40
	add.d	$a0, $a1, $s3
	fldx.s	$fa0, $a1, $s3
	fld.s	$fa1, $a0, 16
	fld.s	$fa2, $a0, 32
	fld.s	$fa3, $a0, 4
	fld.s	$fa4, $sp, 24
	fld.s	$fa5, $a0, 20
	fld.s	$fa6, $a0, 36
	fld.s	$fa7, $sp, 28
	fmul.s	$ft0, $fa0, $fa4
	fmul.s	$ft1, $fa1, $fa4
	fmul.s	$fa4, $fa2, $fa4
	fmul.s	$ft2, $fa3, $fa7
	fmul.s	$ft3, $fa5, $fa7
	fmul.s	$fa7, $fa6, $fa7
	fmul.s	$ft4, $fa3, $ft2
	fmadd.s	$ft4, $ft0, $fa0, $ft4
	fmul.s	$ft5, $fa3, $ft3
	fmadd.s	$ft5, $ft1, $fa0, $ft5
	fmul.s	$fa3, $fa3, $fa7
	fmadd.s	$fa0, $fa4, $fa0, $fa3
	fmul.s	$fa3, $fa5, $ft2
	fmadd.s	$fa3, $ft0, $fa1, $fa3
	fmul.s	$ft6, $fa5, $ft3
	fmadd.s	$ft6, $ft1, $fa1, $ft6
	fmul.s	$fa5, $fa5, $fa7
	fmadd.s	$fa1, $fa4, $fa1, $fa5
	fld.s	$fa5, $a0, 8
	fmul.s	$ft2, $fa6, $ft2
	fmadd.s	$ft0, $ft0, $fa2, $ft2
	fld.s	$ft2, $a0, 24
	fmul.s	$ft3, $fa6, $ft3
	fmadd.s	$ft1, $ft1, $fa2, $ft3
	fld.s	$ft3, $sp, 32
	fmul.s	$fa6, $fa6, $fa7
	fld.s	$fa7, $a0, 40
	fmadd.s	$fa2, $fa4, $fa2, $fa6
	fmul.s	$fa4, $fa5, $ft3
	fmul.s	$fa6, $ft2, $ft3
	fmul.s	$ft3, $fa7, $ft3
	fmadd.s	$ft4, $fa4, $fa5, $ft4
	fmadd.s	$ft5, $fa6, $fa5, $ft5
	fmadd.s	$fa0, $ft3, $fa5, $fa0
	fmadd.s	$fa3, $fa4, $ft2, $fa3
	fmadd.s	$fa5, $fa6, $ft2, $ft6
	fmadd.s	$fa1, $ft3, $ft2, $fa1
	fmadd.s	$fa4, $fa4, $fa7, $ft0
	fmadd.s	$fa6, $fa6, $fa7, $ft1
	fmadd.s	$fa2, $ft3, $fa7, $fa2
	fld.s	$fa7, $a0, 48
	fld.s	$ft0, $sp, 12                   # 4-byte Folded Reload
	fadd.s	$ft0, $ft0, $ft4
	fld.s	$ft1, $a0, 52
	fadd.s	$ft2, $ft5, $fs7
	fld.s	$ft3, $a0, 56
	fadd.s	$fa0, $fa0, $fs2
	fsub.s	$fa7, $fa7, $fs4
	fsub.s	$ft1, $ft1, $fs5
	fsub.s	$ft3, $ft3, $fs6
	fld.s	$ft4, $sp, 16                   # 4-byte Folded Reload
	fadd.s	$fa3, $fa3, $ft4
	fld.s	$ft4, $sp, 20                   # 4-byte Folded Reload
	fadd.s	$fa5, $fa5, $ft4
	fld.s	$ft4, $sp, 80
	fadd.s	$fa1, $fa1, $fs1
	fadd.s	$fa4, $fa4, $fs3
	fadd.s	$fa6, $fa6, $fs0
	fadd.s	$fa2, $fa2, $ft4
	fmul.s	$ft4, $ft1, $ft1
	fmadd.s	$ft5, $fa7, $fa7, $ft4
	fmadd.s	$ft5, $ft3, $ft3, $ft5
	fmul.s	$ft6, $fa7, $fa7
	fsub.s	$ft6, $ft5, $ft6
	fmul.s	$ft7, $fa7, $ft1
	fmul.s	$fa7, $fa7, $ft3
	fsub.s	$ft4, $ft5, $ft4
	fld.s	$ft8, $s2, 0
	fmul.s	$ft1, $ft1, $ft3
	fmul.s	$ft3, $ft3, $ft3
	fsub.s	$ft3, $ft5, $ft3
	fmul.s	$ft5, $ft6, $ft8
	fadd.s	$ft6, $ft0, $ft5
	fld.s	$ft5, $sp, 8                    # 4-byte Folded Reload
	fsub.s	$ft0, $ft5, $ft7
	fmul.s	$ft0, $ft0, $ft8
	fadd.s	$fs7, $ft2, $ft0
	fadd.s	$ft0, $fa3, $ft0
	fmul.s	$fa3, $ft4, $ft8
	fadd.s	$ft2, $fa5, $fa3
	fsub.s	$fa3, $ft5, $fa7
	fsub.s	$fa5, $ft5, $ft1
	fmul.s	$fa3, $fa3, $ft8
	fmul.s	$fa5, $fa5, $ft8
	fmul.s	$fa7, $ft3, $ft8
	fadd.s	$fs2, $fa0, $fa3
	fadd.s	$fs3, $fa4, $fa3
	fadd.s	$fs1, $fa1, $fa5
	fadd.s	$fs0, $fa6, $fa5
	fadd.s	$fa0, $fa2, $fa7
	fst.s	$fa0, $sp, 80
	fst.s	$ft6, $sp, 40
	fst.s	$fs7, $sp, 44
	fst.s	$fs2, $sp, 48
	fst.s	$ft0, $sp, 56
	fst.s	$ft2, $sp, 60
	fst.s	$fs1, $sp, 64
	fst.s	$fs3, $sp, 72
	fst.s	$fs0, $sp, 76
	addi.d	$s3, $s3, 88
	addi.d	$s2, $s2, 4
	bne	$s4, $s3, .LBB12_6
.LBB12_7:                               # %._crit_edge221
	pcalau12i	$a0, %pc_hi20(.LCPI12_0)
	fld.s	$fa0, $a0, %pc_lo12(.LCPI12_0)
	addi.d	$a0, $sp, 40
	ori	$a2, $zero, 20
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN11btMatrix3x311diagonalizeERS_fi)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $sp, 40
	fld.s	$fa1, $sp, 60
	fld.s	$fa2, $sp, 80
	fst.s	$fa0, $fp, 0
	fst.s	$fa1, $fp, 4
	fst.s	$fa2, $fp, 8
	st.w	$zero, $fp, 12
	fld.d	$fs7, $sp, 88                   # 8-byte Folded Reload
	fld.d	$fs6, $sp, 96                   # 8-byte Folded Reload
	fld.d	$fs5, $sp, 104                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 112                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 120                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 128                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 136                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 144                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 192                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 200                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 208
	ret
.Lfunc_end12:
	.size	_ZNK15btCompoundShape31calculatePrincipalAxisTransformEPfR11btTransformR9btVector3, .Lfunc_end12-_ZNK15btCompoundShape31calculatePrincipalAxisTransformEPfR11btTransformR9btVector3
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZN11btMatrix3x311diagonalizeERS_fi
.LCPI13_0:
	.word	0x34000000                      # float 1.1920929E-7
.LCPI13_1:
	.word	0x4ca00000                      # float 83886080
	.section	.text._ZN11btMatrix3x311diagonalizeERS_fi,"axG",@progbits,_ZN11btMatrix3x311diagonalizeERS_fi,comdat
	.weak	_ZN11btMatrix3x311diagonalizeERS_fi
	.p2align	5
	.type	_ZN11btMatrix3x311diagonalizeERS_fi,@function
_ZN11btMatrix3x311diagonalizeERS_fi:    # @_ZN11btMatrix3x311diagonalizeERS_fi
	.cfi_startproc
# %bb.0:
	lu12i.w	$a3, 260096
	st.w	$a3, $a1, 0
	vrepli.b	$vr1, 0
	vst	$vr1, $a1, 4
	st.w	$a3, $a1, 20
	vst	$vr1, $a1, 24
	st.d	$a3, $a1, 40
	blez	$a2, .LBB13_11
# %bb.1:                                # %.lr.ph
	addi.d	$a3, $a1, 16
	addi.d	$a4, $a1, 32
	ori	$a5, $zero, 2
	pcalau12i	$a6, %pc_hi20(.LCPI13_1)
	fld.s	$fa1, $a6, %pc_lo12(.LCPI13_1)
	vldi	$vr2, -1168
	movgr2fr.w	$fa3, $zero
	ori	$a6, $zero, 1
	vldi	$vr4, -1184
	vldi	$vr5, -1280
	vldi	$vr6, -1056
	pcalau12i	$a7, %pc_hi20(.LCPI13_0)
	b	.LBB13_4
	.p2align	4, , 16
.LBB13_2:                               #   in Loop: Header=BB13_4 Depth=1
	fdiv.s	$ft0, $fa4, $ft0
	fadd.s	$ft0, $ft0, $fa5
	fmul.s	$fa7, $fa7, $ft0
	frecip.s	$ft2, $fa7
	fmul.s	$fa7, $ft2, $fa6
	fmadd.s	$fa7, $fa7, $ft2, $fa2
.LBB13_3:                               #   in Loop: Header=BB13_4 Depth=1
	fmul.s	$ft0, $ft2, $fa7
	alsl.d	$a2, $t4, $t7, 2
	alsl.d	$t5, $t5, $t7, 2
	stx.w	$zero, $t6, $t2
	st.w	$zero, $a2, 0
	fld.s	$ft3, $t5, 0
	alsl.d	$a2, $t4, $t6, 2
	fneg.s	$ft4, $ft2
	fmadd.s	$ft3, $ft4, $ft1, $ft3
	fst.s	$ft3, $t5, 0
	fld.s	$ft3, $a2, 0
	fmadd.s	$ft1, $ft2, $ft1, $ft3
	fst.s	$ft1, $a2, 0
	alsl.d	$a2, $t0, $a0, 4
	fldx.s	$ft1, $a2, $t1
	fldx.s	$ft2, $a2, $t2
	fneg.s	$ft3, $ft1
	fmul.s	$ft3, $ft0, $ft3
	fmadd.s	$ft3, $fa7, $ft2, $ft3
	slli.d	$t0, $t0, 2
	fstx.s	$ft3, $t7, $t0
	fstx.s	$ft3, $a2, $t2
	fmul.s	$ft2, $ft0, $ft2
	fmadd.s	$ft1, $fa7, $ft1, $ft2
	fstx.s	$ft1, $t6, $t0
	fstx.s	$ft1, $a2, $t1
	fldx.s	$ft1, $a1, $t1
	fldx.s	$ft2, $a1, $t2
	fneg.s	$ft3, $ft1
	fmul.s	$ft3, $ft0, $ft3
	fmadd.s	$ft3, $fa7, $ft2, $ft3
	fstx.s	$ft3, $a1, $t2
	fmul.s	$ft2, $ft0, $ft2
	fldx.s	$ft3, $a3, $t1
	fmadd.s	$ft1, $fa7, $ft1, $ft2
	fldx.s	$ft2, $a3, $t2
	fstx.s	$ft1, $a1, $t1
	fneg.s	$ft1, $ft3
	fmul.s	$ft1, $ft0, $ft1
	fmadd.s	$ft1, $fa7, $ft2, $ft1
	fstx.s	$ft1, $a3, $t2
	fmul.s	$ft1, $ft0, $ft2
	fldx.s	$ft2, $a4, $t1
	fmadd.s	$ft1, $fa7, $ft3, $ft1
	fldx.s	$ft3, $a4, $t2
	fstx.s	$ft1, $a3, $t1
	fneg.s	$ft1, $ft2
	fmul.s	$ft1, $ft0, $ft1
	fmadd.s	$ft1, $fa7, $ft3, $ft1
	fstx.s	$ft1, $a4, $t2
	fmul.s	$ft0, $ft0, $ft3
	fmadd.s	$fa7, $fa7, $ft2, $ft0
	fstx.s	$fa7, $a4, $t1
	addi.w	$a2, $t3, -1
	bge	$a6, $t3, .LBB13_11
.LBB13_4:                               # =>This Inner Loop Header: Depth=1
	fld.s	$fa7, $a0, 4
	fld.s	$ft0, $a0, 8
	fabs.s	$fa7, $fa7
	fld.s	$ft1, $a0, 24
	fabs.s	$ft0, $ft0
	fcmp.clt.s	$fcc0, $fa7, $ft0
	fsel	$fa7, $fa7, $ft0, $fcc0
	fabs.s	$ft0, $ft1
	fcmp.cule.s	$fcc1, $ft0, $fa7
	bcnez	$fcc1, .LBB13_6
# %bb.5:                                #   in Loop: Header=BB13_4 Depth=1
	move	$t0, $zero
	ori	$t5, $zero, 1
	ori	$t4, $zero, 2
	fmov.s	$fa7, $ft0
	b	.LBB13_7
	.p2align	4, , 16
.LBB13_6:                               #   in Loop: Header=BB13_4 Depth=1
	move	$t5, $zero
	movcf2gr	$t1, $fcc0
	sub.d	$t0, $a5, $t1
	addi.d	$t4, $t1, 1
.LBB13_7:                               #   in Loop: Header=BB13_4 Depth=1
	fld.s	$ft0, $a0, 0
	fld.s	$ft1, $a0, 20
	fld.s	$ft2, $a0, 40
	fabs.s	$ft0, $ft0
	fabs.s	$ft1, $ft1
	fadd.s	$ft0, $ft0, $ft1
	fabs.s	$ft1, $ft2
	fadd.s	$ft0, $ft0, $ft1
	fmul.s	$ft0, $fa0, $ft0
	fcmp.cult.s	$fcc0, $ft0, $fa7
	bcnez	$fcc0, .LBB13_9
# %bb.8:                                #   in Loop: Header=BB13_4 Depth=1
	fld.s	$ft1, $a7, %pc_lo12(.LCPI13_0)
	fmul.s	$ft0, $ft0, $ft1
	fcmp.cle.s	$fcc0, $fa7, $ft0
	ori	$a2, $zero, 1
	bcnez	$fcc0, .LBB13_11
.LBB13_9:                               #   in Loop: Header=BB13_4 Depth=1
	alsl.d	$t7, $t5, $a0, 4
	slli.d	$t1, $t4, 2
	alsl.d	$t6, $t4, $a0, 4
	fldx.s	$fa7, $t6, $t1
	slli.d	$t2, $t5, 2
	fldx.s	$ft0, $t7, $t2
	fldx.s	$ft1, $t7, $t1
	fsub.s	$fa7, $fa7, $ft0
	fadd.s	$ft0, $ft1, $ft1
	fdiv.s	$fa7, $fa7, $ft0
	fmul.s	$ft0, $fa7, $fa7
	fmul.s	$ft2, $ft0, $ft0
	fcmp.cule.s	$fcc0, $fa1, $ft2
	move	$t3, $a2
	bcnez	$fcc0, .LBB13_2
# %bb.10:                               #   in Loop: Header=BB13_4 Depth=1
	fadd.s	$ft0, $ft0, $fa2
	fsqrt.s	$ft0, $ft0
	fneg.s	$ft2, $ft0
	fcmp.cult.s	$fcc0, $fa7, $fa3
	fsel	$ft0, $ft0, $ft2, $fcc0
	fadd.s	$fa7, $fa7, $ft0
	frecip.s	$ft2, $fa7
	fmadd.s	$fa7, $ft2, $ft2, $fa2
	frsqrt.s	$fa7, $fa7
	b	.LBB13_3
.LBB13_11:                              # %.critedge
	ret
.Lfunc_end13:
	.size	_ZN11btMatrix3x311diagonalizeERS_fi, .Lfunc_end13-_ZN11btMatrix3x311diagonalizeERS_fi
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN15btCompoundShape15setLocalScalingERK9btVector3,"axG",@progbits,_ZN15btCompoundShape15setLocalScalingERK9btVector3,comdat
	.weak	_ZN15btCompoundShape15setLocalScalingERK9btVector3 # -- Begin function _ZN15btCompoundShape15setLocalScalingERK9btVector3
	.p2align	5
	.type	_ZN15btCompoundShape15setLocalScalingERK9btVector3,@function
_ZN15btCompoundShape15setLocalScalingERK9btVector3: # @_ZN15btCompoundShape15setLocalScalingERK9btVector3
# %bb.0:
	vld	$vr0, $a1, 0
	vst	$vr0, $a0, 104
	ret
.Lfunc_end14:
	.size	_ZN15btCompoundShape15setLocalScalingERK9btVector3, .Lfunc_end14-_ZN15btCompoundShape15setLocalScalingERK9btVector3
                                        # -- End function
	.section	.text._ZNK15btCompoundShape15getLocalScalingEv,"axG",@progbits,_ZNK15btCompoundShape15getLocalScalingEv,comdat
	.weak	_ZNK15btCompoundShape15getLocalScalingEv # -- Begin function _ZNK15btCompoundShape15getLocalScalingEv
	.p2align	5
	.type	_ZNK15btCompoundShape15getLocalScalingEv,@function
_ZNK15btCompoundShape15getLocalScalingEv: # @_ZNK15btCompoundShape15getLocalScalingEv
# %bb.0:
	addi.d	$a0, $a0, 104
	ret
.Lfunc_end15:
	.size	_ZNK15btCompoundShape15getLocalScalingEv, .Lfunc_end15-_ZNK15btCompoundShape15getLocalScalingEv
                                        # -- End function
	.section	.text._ZNK15btCompoundShape7getNameEv,"axG",@progbits,_ZNK15btCompoundShape7getNameEv,comdat
	.weak	_ZNK15btCompoundShape7getNameEv # -- Begin function _ZNK15btCompoundShape7getNameEv
	.p2align	5
	.type	_ZNK15btCompoundShape7getNameEv,@function
_ZNK15btCompoundShape7getNameEv:        # @_ZNK15btCompoundShape7getNameEv
# %bb.0:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ret
.Lfunc_end16:
	.size	_ZNK15btCompoundShape7getNameEv, .Lfunc_end16-_ZNK15btCompoundShape7getNameEv
                                        # -- End function
	.section	.text._ZN15btCompoundShape9setMarginEf,"axG",@progbits,_ZN15btCompoundShape9setMarginEf,comdat
	.weak	_ZN15btCompoundShape9setMarginEf # -- Begin function _ZN15btCompoundShape9setMarginEf
	.p2align	5
	.type	_ZN15btCompoundShape9setMarginEf,@function
_ZN15btCompoundShape9setMarginEf:       # @_ZN15btCompoundShape9setMarginEf
# %bb.0:
	fst.s	$fa0, $a0, 100
	ret
.Lfunc_end17:
	.size	_ZN15btCompoundShape9setMarginEf, .Lfunc_end17-_ZN15btCompoundShape9setMarginEf
                                        # -- End function
	.section	.text._ZNK15btCompoundShape9getMarginEv,"axG",@progbits,_ZNK15btCompoundShape9getMarginEv,comdat
	.weak	_ZNK15btCompoundShape9getMarginEv # -- Begin function _ZNK15btCompoundShape9getMarginEv
	.p2align	5
	.type	_ZNK15btCompoundShape9getMarginEv,@function
_ZNK15btCompoundShape9getMarginEv:      # @_ZNK15btCompoundShape9getMarginEv
# %bb.0:
	fld.s	$fa0, $a0, 100
	ret
.Lfunc_end18:
	.size	_ZNK15btCompoundShape9getMarginEv, .Lfunc_end18-_ZNK15btCompoundShape9getMarginEv
                                        # -- End function
	.type	_ZTV15btCompoundShape,@object   # @_ZTV15btCompoundShape
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTV15btCompoundShape
	.p2align	3, 0x0
_ZTV15btCompoundShape:
	.dword	0
	.dword	_ZTI15btCompoundShape
	.dword	_ZN15btCompoundShapeD2Ev
	.dword	_ZN15btCompoundShapeD0Ev
	.dword	_ZNK15btCompoundShape7getAabbERK11btTransformR9btVector3S4_
	.dword	_ZNK16btCollisionShape17getBoundingSphereER9btVector3Rf
	.dword	_ZNK16btCollisionShape20getAngularMotionDiscEv
	.dword	_ZNK16btCollisionShape27getContactBreakingThresholdEv
	.dword	_ZN15btCompoundShape15setLocalScalingERK9btVector3
	.dword	_ZNK15btCompoundShape15getLocalScalingEv
	.dword	_ZNK15btCompoundShape21calculateLocalInertiaEfR9btVector3
	.dword	_ZNK15btCompoundShape7getNameEv
	.dword	_ZN15btCompoundShape9setMarginEf
	.dword	_ZNK15btCompoundShape9getMarginEv
	.dword	_ZN15btCompoundShape16removeChildShapeEP16btCollisionShape
	.dword	_ZN15btCompoundShape20recalculateLocalAabbEv
	.size	_ZTV15btCompoundShape, 128

	.type	_ZTI15btCompoundShape,@object   # @_ZTI15btCompoundShape
	.globl	_ZTI15btCompoundShape
	.p2align	3, 0x0
_ZTI15btCompoundShape:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS15btCompoundShape
	.dword	_ZTI16btCollisionShape
	.size	_ZTI15btCompoundShape, 24

	.type	_ZTS15btCompoundShape,@object   # @_ZTS15btCompoundShape
	.section	.rodata,"a",@progbits
	.globl	_ZTS15btCompoundShape
_ZTS15btCompoundShape:
	.asciz	"15btCompoundShape"
	.size	_ZTS15btCompoundShape, 18

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Compound"
	.size	.L.str, 9

	.globl	_ZN15btCompoundShapeC1Eb
	.type	_ZN15btCompoundShapeC1Eb,@function
_ZN15btCompoundShapeC1Eb = _ZN15btCompoundShapeC2Eb
	.globl	_ZN15btCompoundShapeD1Ev
	.type	_ZN15btCompoundShapeD1Ev,@function
_ZN15btCompoundShapeD1Ev = _ZN15btCompoundShapeD2Ev
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
	.addrsig_sym _ZTI15btCompoundShape
	.addrsig_sym _ZTVN10__cxxabiv120__si_class_type_infoE
	.addrsig_sym _ZTS15btCompoundShape
	.addrsig_sym _ZTI16btCollisionShape
