	.file	"btDbvtBroadphase.cpp"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN16btDbvtBroadphaseC2EP22btOverlappingPairCache
.LCPI0_0:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	10                              # 0xa
.LCPI0_1:
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.text
	.globl	_ZN16btDbvtBroadphaseC2EP22btOverlappingPairCache
	.p2align	5
	.type	_ZN16btDbvtBroadphaseC2EP22btOverlappingPairCache,@function
_ZN16btDbvtBroadphaseC2EP22btOverlappingPairCache: # @_ZN16btDbvtBroadphaseC2EP22btOverlappingPairCache
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
	move	$s2, $a1
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV16btDbvtBroadphase+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV16btDbvtBroadphase+16)
	st.d	$a0, $s0, 0
	addi.d	$fp, $s0, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN6btDbvtC1Ev)
	jirl	$ra, $ra, 0
	addi.d	$s1, $s0, 72
.Ltmp0:                                 # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN6btDbvtC1Ev)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.1:
	ori	$a0, $zero, 256
	st.h	$a0, $s0, 221
	sltui	$a0, $s2, 1
	pcalau12i	$a1, %pc_hi20(.LCPI0_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI0_0)
	pcalau12i	$a1, %pc_hi20(.LCPI0_1)
	vld	$vr1, $a1, %pc_lo12(.LCPI0_1)
	st.b	$a0, $s0, 220
	st.w	$zero, $s0, 168
	vst	$vr0, $s0, 172
	vst	$vr1, $s0, 188
	st.w	$zero, $s0, 204
	bnez	$s2, .LBB0_4
# %bb.2:
.Ltmp6:                                 # EH_LABEL
	ori	$a0, $zero, 128
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
.Ltmp7:                                 # EH_LABEL
# %bb.3:
.Ltmp8:                                 # EH_LABEL
	move	$s2, $a0
	pcaddu18i	$ra, %call36(_ZN28btHashedOverlappingPairCacheC1Ev)
	jirl	$ra, $ra, 0
.Ltmp9:                                 # EH_LABEL
.LBB0_4:
	st.d	$s2, $s0, 160
	st.w	$zero, $s0, 216
	st.d	$zero, $s0, 208
	st.d	$zero, $s0, 136
	vrepli.b	$vr0, 0
	vst	$vr0, $s0, 144
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB0_5:
.Ltmp10:                                # EH_LABEL
	move	$s0, $a0
.Ltmp11:                                # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN6btDbvtD1Ev)
	jirl	$ra, $ra, 0
.Ltmp12:                                # EH_LABEL
# %bb.6:
.Ltmp13:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN6btDbvtD1Ev)
	jirl	$ra, $ra, 0
.Ltmp14:                                # EH_LABEL
	b	.LBB0_9
.LBB0_7:                                # %.loopexit
.Ltmp15:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_8:                                # %.preheader.preheader
.Ltmp2:                                 # EH_LABEL
	move	$s0, $a0
.Ltmp3:                                 # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN6btDbvtD1Ev)
	jirl	$ra, $ra, 0
.Ltmp4:                                 # EH_LABEL
.LBB0_9:                                # %.loopexit27
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB0_10:                               # %.loopexit.split-lp
.Ltmp5:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	_ZN16btDbvtBroadphaseC2EP22btOverlappingPairCache, .Lfunc_end0-_ZN16btDbvtBroadphaseC2EP22btOverlappingPairCache
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
	.uleb128 .Ltmp6-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp9-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp9
	.uleb128 .Ltmp10-.Lfunc_begin0          #     jumps to .Ltmp10
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp11-.Lfunc_begin0          # >> Call Site 4 <<
	.uleb128 .Ltmp14-.Ltmp11                #   Call between .Ltmp11 and .Ltmp14
	.uleb128 .Ltmp15-.Lfunc_begin0          #     jumps to .Ltmp15
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp14-.Lfunc_begin0          # >> Call Site 5 <<
	.uleb128 .Ltmp3-.Ltmp14                 #   Call between .Ltmp14 and .Ltmp3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp3-.Lfunc_begin0           # >> Call Site 6 <<
	.uleb128 .Ltmp4-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp4
	.uleb128 .Ltmp5-.Lfunc_begin0           #     jumps to .Ltmp5
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp4-.Lfunc_begin0           # >> Call Site 7 <<
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
	.globl	_ZN16btDbvtBroadphaseD2Ev       # -- Begin function _ZN16btDbvtBroadphaseD2Ev
	.p2align	5
	.type	_ZN16btDbvtBroadphaseD2Ev,@function
_ZN16btDbvtBroadphaseD2Ev:              # @_ZN16btDbvtBroadphaseD2Ev
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
	pcalau12i	$a0, %pc_hi20(_ZTV16btDbvtBroadphase+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV16btDbvtBroadphase+16)
	ld.bu	$a1, $fp, 220
	st.d	$a0, $fp, 0
	beqz	$a1, .LBB2_3
# %bb.1:
	ld.d	$a0, $fp, 160
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 0
.Ltmp16:                                # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp17:                                # EH_LABEL
# %bb.2:
	ld.d	$a0, $fp, 160
.Ltmp18:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp19:                                # EH_LABEL
.LBB2_3:
	addi.d	$a0, $fp, 72
.Ltmp26:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6btDbvtD1Ev)
	jirl	$ra, $ra, 0
.Ltmp27:                                # EH_LABEL
# %bb.4:
	addi.d	$a0, $fp, 8
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZN6btDbvtD1Ev)
	jr	$t8
.LBB2_5:                                # %.preheader.preheader
.Ltmp28:                                # EH_LABEL
	move	$s0, $a0
	addi.d	$a0, $fp, 8
.Ltmp29:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6btDbvtD1Ev)
	jirl	$ra, $ra, 0
.Ltmp30:                                # EH_LABEL
	b	.LBB2_9
.LBB2_6:                                # %.loopexit
.Ltmp31:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB2_7:
.Ltmp20:                                # EH_LABEL
	move	$s0, $a0
	addi.d	$a0, $fp, 72
.Ltmp21:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6btDbvtD1Ev)
	jirl	$ra, $ra, 0
.Ltmp22:                                # EH_LABEL
# %bb.8:
	addi.d	$a0, $fp, 8
.Ltmp23:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN6btDbvtD1Ev)
	jirl	$ra, $ra, 0
.Ltmp24:                                # EH_LABEL
.LBB2_9:                                # %.loopexit16
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB2_10:                               # %.loopexit.split-lp
.Ltmp25:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	_ZN16btDbvtBroadphaseD2Ev, .Lfunc_end2-_ZN16btDbvtBroadphaseD2Ev
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
	.uleb128 .Ltmp16-.Lfunc_begin1          # >> Call Site 1 <<
	.uleb128 .Ltmp19-.Ltmp16                #   Call between .Ltmp16 and .Ltmp19
	.uleb128 .Ltmp20-.Lfunc_begin1          #     jumps to .Ltmp20
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp26-.Lfunc_begin1          # >> Call Site 2 <<
	.uleb128 .Ltmp27-.Ltmp26                #   Call between .Ltmp26 and .Ltmp27
	.uleb128 .Ltmp28-.Lfunc_begin1          #     jumps to .Ltmp28
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp27-.Lfunc_begin1          # >> Call Site 3 <<
	.uleb128 .Ltmp29-.Ltmp27                #   Call between .Ltmp27 and .Ltmp29
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp29-.Lfunc_begin1          # >> Call Site 4 <<
	.uleb128 .Ltmp30-.Ltmp29                #   Call between .Ltmp29 and .Ltmp30
	.uleb128 .Ltmp31-.Lfunc_begin1          #     jumps to .Ltmp31
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp30-.Lfunc_begin1          # >> Call Site 5 <<
	.uleb128 .Ltmp21-.Ltmp30                #   Call between .Ltmp30 and .Ltmp21
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp21-.Lfunc_begin1          # >> Call Site 6 <<
	.uleb128 .Ltmp24-.Ltmp21                #   Call between .Ltmp21 and .Ltmp24
	.uleb128 .Ltmp25-.Lfunc_begin1          #     jumps to .Ltmp25
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp24-.Lfunc_begin1          # >> Call Site 7 <<
	.uleb128 .Lfunc_end2-.Ltmp24            #   Call between .Ltmp24 and .Lfunc_end2
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
	.globl	_ZN16btDbvtBroadphaseD0Ev       # -- Begin function _ZN16btDbvtBroadphaseD0Ev
	.p2align	5
	.type	_ZN16btDbvtBroadphaseD0Ev,@function
_ZN16btDbvtBroadphaseD0Ev:              # @_ZN16btDbvtBroadphaseD0Ev
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
.Ltmp32:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN16btDbvtBroadphaseD2Ev)
	jirl	$ra, $ra, 0
.Ltmp33:                                # EH_LABEL
# %bb.1:
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZdlPv)
	jr	$t8
.LBB3_2:
.Ltmp34:                                # EH_LABEL
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end3:
	.size	_ZN16btDbvtBroadphaseD0Ev, .Lfunc_end3-_ZN16btDbvtBroadphaseD0Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table3:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Ltmp32-.Lfunc_begin2          # >> Call Site 1 <<
	.uleb128 .Ltmp33-.Ltmp32                #   Call between .Ltmp32 and .Ltmp33
	.uleb128 .Ltmp34-.Lfunc_begin2          #     jumps to .Ltmp34
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp33-.Lfunc_begin2          # >> Call Site 2 <<
	.uleb128 .Lfunc_end3-.Ltmp33            #   Call between .Ltmp33 and .Lfunc_end3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN16btDbvtBroadphase11createProxyERK9btVector3S2_iPvssP12btDispatcherS3_ # -- Begin function _ZN16btDbvtBroadphase11createProxyERK9btVector3S2_iPvssP12btDispatcherS3_
	.p2align	5
	.type	_ZN16btDbvtBroadphase11createProxyERK9btVector3S2_iPvssP12btDispatcherS3_,@function
_ZN16btDbvtBroadphase11createProxyERK9btVector3S2_iPvssP12btDispatcherS3_: # @_ZN16btDbvtBroadphase11createProxyERK9btVector3S2_iPvssP12btDispatcherS3_
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
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	move	$s1, $a6
	move	$s2, $a5
	move	$s3, $a4
	move	$s4, $a2
	move	$s5, $a1
	move	$s0, $a0
	ori	$a0, $zero, 96
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s3, $a0, 0
	st.h	$s2, $a0, 8
	st.h	$s1, $a0, 10
	vld	$vr0, $s5, 0
	vst	$vr0, $a0, 28
	vld	$vr0, $s4, 0
	vst	$vr0, $a0, 44
	st.d	$zero, $a0, 16
	vrepli.b	$vr0, 0
	vst	$vr0, $a0, 72
	vld	$vr0, $s5, 0
	vld	$vr1, $s4, 0
	ld.w	$a0, $s0, 172
	ld.w	$a1, $s0, 216
	vst	$vr0, $sp, 32
	vst	$vr1, $sp, 48
	st.w	$a0, $fp, 88
	addi.d	$a0, $a1, 1
	st.w	$a0, $s0, 216
	st.w	$a0, $fp, 24
	addi.d	$s1, $s0, 8
	addi.d	$a1, $sp, 32
	move	$a0, $s1
	move	$a2, $fp
	pcaddu18i	$ra, %call36(_ZN6btDbvt6insertERK12btDbvtAabbMmPv)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 172
	alsl.d	$a2, $a1, $s0, 3
	st.d	$zero, $fp, 72
	ld.d	$a1, $a2, 136
	st.d	$a0, $fp, 64
	addi.d	$a0, $a2, 136
	st.d	$a1, $fp, 80
	beqz	$a1, .LBB4_2
# %bb.1:
	st.d	$fp, $a1, 72
.LBB4_2:                                # %_ZL10listappendI11btDbvtProxyEvPT_RS2_.exit
	ld.bu	$a1, $s0, 221
	st.d	$fp, $a0, 0
	bnez	$a1, .LBB4_4
# %bb.3:
	pcalau12i	$a0, %pc_hi20(_ZTV18btDbvtTreeCollider+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV18btDbvtTreeCollider+16)
	ld.d	$a1, $s0, 8
	st.d	$a0, $sp, 8
	st.d	$s0, $sp, 16
	st.d	$fp, $sp, 24
	addi.d	$a2, $sp, 32
	addi.d	$a3, $sp, 8
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN6btDbvt9collideTVEPK10btDbvtNodeRK12btDbvtAabbMmRNS_8ICollideE)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 72
	addi.d	$a0, $s0, 72
	addi.d	$a2, $sp, 32
	addi.d	$a3, $sp, 8
	pcaddu18i	$ra, %call36(_ZN6btDbvt9collideTVEPK10btDbvtNodeRK12btDbvtAabbMmRNS_8ICollideE)
	jirl	$ra, $ra, 0
.LBB4_4:
	move	$a0, $fp
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.Lfunc_end4:
	.size	_ZN16btDbvtBroadphase11createProxyERK9btVector3S2_iPvssP12btDispatcherS3_, .Lfunc_end4-_ZN16btDbvtBroadphase11createProxyERK9btVector3S2_iPvssP12btDispatcherS3_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN6btDbvt9collideTVEPK10btDbvtNodeRK12btDbvtAabbMmRNS_8ICollideE,"axG",@progbits,_ZN6btDbvt9collideTVEPK10btDbvtNodeRK12btDbvtAabbMmRNS_8ICollideE,comdat
	.weak	_ZN6btDbvt9collideTVEPK10btDbvtNodeRK12btDbvtAabbMmRNS_8ICollideE # -- Begin function _ZN6btDbvt9collideTVEPK10btDbvtNodeRK12btDbvtAabbMmRNS_8ICollideE
	.p2align	5
	.type	_ZN6btDbvt9collideTVEPK10btDbvtNodeRK12btDbvtAabbMmRNS_8ICollideE,@function
_ZN6btDbvt9collideTVEPK10btDbvtNodeRK12btDbvtAabbMmRNS_8ICollideE: # @_ZN6btDbvt9collideTVEPK10btDbvtNodeRK12btDbvtAabbMmRNS_8ICollideE
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception3
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
	fst.d	$fs0, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 40                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs5, $sp, 8                    # 8-byte Folded Spill
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
	beqz	$a1, .LBB5_2
# %bb.1:                                # %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE9push_backERKS2_.exit
	move	$fp, $a3
	move	$s0, $a1
	fld.s	$fs0, $a2, 0
	fld.s	$fs1, $a2, 4
	fld.s	$fs2, $a2, 8
	fld.s	$fs3, $a2, 16
	fld.s	$fs4, $a2, 20
	fld.s	$fs5, $a2, 24
	ori	$a0, $zero, 512
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	st.d	$s0, $a0, 0
	ori	$s8, $zero, 64
	ori	$s6, $zero, 1
	b	.LBB5_5
.LBB5_2:
	fld.d	$fs5, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs4, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 48                   # 8-byte Folded Reload
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
.LBB5_3:                                #   in Loop: Header=BB5_5 Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 24
.Ltmp43:                                # EH_LABEL
	move	$a0, $fp
	move	$a1, $s0
	jirl	$ra, $a2, 0
.Ltmp44:                                # EH_LABEL
	.p2align	4, , 16
.LBB5_4:                                # %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread
                                        #   in Loop: Header=BB5_5 Depth=1
	move	$s6, $s7
	blez	$s7, .LBB5_37
.LBB5_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_20 Depth 2
                                        #     Child Loop BB5_23 Depth 2
                                        #     Child Loop BB5_30 Depth 2
                                        #     Child Loop BB5_33 Depth 2
	addi.w	$s7, $s6, -1
	slli.d	$s3, $s7, 3
	ldx.d	$s0, $s1, $s3
	fld.s	$fa0, $s0, 0
	fcmp.cult.s	$fcc0, $fs3, $fa0
	bcnez	$fcc0, .LBB5_4
# %bb.6:                                #   in Loop: Header=BB5_5 Depth=1
	fld.s	$fa0, $s0, 16
	fcmp.cult.s	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB5_4
# %bb.7:                                #   in Loop: Header=BB5_5 Depth=1
	fld.s	$fa0, $s0, 4
	fcmp.cult.s	$fcc0, $fs4, $fa0
	bcnez	$fcc0, .LBB5_4
# %bb.8:                                #   in Loop: Header=BB5_5 Depth=1
	fld.s	$fa0, $s0, 20
	fcmp.cult.s	$fcc0, $fa0, $fs1
	bcnez	$fcc0, .LBB5_4
# %bb.9:                                #   in Loop: Header=BB5_5 Depth=1
	fld.s	$fa0, $s0, 8
	fcmp.cult.s	$fcc0, $fs5, $fa0
	bcnez	$fcc0, .LBB5_4
# %bb.10:                               # %_Z9IntersectRK12btDbvtAabbMmS1_.exit
                                        #   in Loop: Header=BB5_5 Depth=1
	fld.s	$fa0, $s0, 24
	fcmp.cult.s	$fcc0, $fa0, $fs2
	bcnez	$fcc0, .LBB5_4
# %bb.11:                               #   in Loop: Header=BB5_5 Depth=1
	ld.d	$a0, $s0, 48
	beqz	$a0, .LBB5_3
# %bb.12:                               #   in Loop: Header=BB5_5 Depth=1
	addi.w	$s5, $s8, 0
	bne	$s7, $s5, .LBB5_14
# %bb.13:                               #   in Loop: Header=BB5_5 Depth=1
	sltui	$a0, $s5, 1
	slli.d	$a1, $s8, 1
	masknez	$a1, $a1, $a0
	ori	$a2, $zero, 1
	maskeqz	$a0, $a2, $a0
	or	$s4, $a0, $a1
	addi.w	$a0, $s4, 0
	bgeu	$a0, $s6, .LBB5_15
.LBB5_14:                               #   in Loop: Header=BB5_5 Depth=1
	move	$s2, $s1
	move	$s4, $s8
	b	.LBB5_25
.LBB5_15:                               #   in Loop: Header=BB5_5 Depth=1
	slli.d	$a0, $a0, 3
.Ltmp35:                                # EH_LABEL
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
.Ltmp36:                                # EH_LABEL
# %bb.16:                               # %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE8allocateEi.exit.i.i28
                                        #   in Loop: Header=BB5_5 Depth=1
	move	$s2, $a0
	beqz	$s5, .LBB5_24
# %bb.17:                               # %.lr.ph.i.i.i36
                                        #   in Loop: Header=BB5_5 Depth=1
	move	$a0, $zero
	bstrpick.d	$a1, $s8, 31, 0
	ori	$a2, $zero, 4
	bltu	$s5, $a2, .LBB5_22
# %bb.18:                               # %.lr.ph.i.i.i36
                                        #   in Loop: Header=BB5_5 Depth=1
	sub.d	$a2, $s2, $s1
	ori	$a3, $zero, 32
	bltu	$a2, $a3, .LBB5_22
# %bb.19:                               # %vector.ph131
                                        #   in Loop: Header=BB5_5 Depth=1
	bstrpick.d	$a0, $a1, 30, 2
	slli.d	$a0, $a0, 2
	addi.d	$a2, $s1, 16
	addi.d	$a3, $s2, 16
	move	$a4, $a0
	.p2align	4, , 16
.LBB5_20:                               # %vector.body134
                                        #   Parent Loop BB5_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a2, -16
	vld	$vr1, $a2, 0
	vst	$vr0, $a3, -16
	vst	$vr1, $a3, 0
	addi.d	$a4, $a4, -4
	addi.d	$a2, $a2, 32
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB5_20
# %bb.21:                               # %middle.block139
                                        #   in Loop: Header=BB5_5 Depth=1
	beq	$a0, $a1, .LBB5_24
.LBB5_22:                               # %scalar.ph129.preheader
                                        #   in Loop: Header=BB5_5 Depth=1
	sub.d	$a1, $a1, $a0
	alsl.d	$a2, $a0, $s1, 3
	alsl.d	$a0, $a0, $s2, 3
	.p2align	4, , 16
.LBB5_23:                               # %scalar.ph129
                                        #   Parent Loop BB5_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a3, $a2, 0
	st.d	$a3, $a0, 0
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 8
	addi.d	$a0, $a0, 8
	bnez	$a1, .LBB5_23
.LBB5_24:                               # %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.i.i30
                                        #   in Loop: Header=BB5_5 Depth=1
.Ltmp37:                                # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp38:                                # EH_LABEL
.LBB5_25:                               # %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE10deallocateEv.exit.i.i33
                                        #   in Loop: Header=BB5_5 Depth=1
	ld.d	$a0, $s0, 40
	addi.w	$a1, $s4, 0
	stx.d	$a0, $s2, $s3
	bne	$s6, $a1, .LBB5_35
# %bb.26:                               #   in Loop: Header=BB5_5 Depth=1
	slli.d	$s4, $s6, 1
	addi.w	$a0, $s4, 0
	slli.d	$a0, $a0, 3
.Ltmp39:                                # EH_LABEL
	ori	$a1, $zero, 16
	move	$s1, $s2
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
.Ltmp40:                                # EH_LABEL
# %bb.27:                               # %.lr.ph.i.i.i59
                                        #   in Loop: Header=BB5_5 Depth=1
	move	$s3, $a0
	move	$a0, $zero
	bstrpick.d	$s7, $s6, 31, 0
	ori	$a1, $zero, 4
	bltu	$s6, $a1, .LBB5_32
# %bb.28:                               # %.lr.ph.i.i.i59
                                        #   in Loop: Header=BB5_5 Depth=1
	sub.d	$a1, $s3, $s2
	ori	$a2, $zero, 32
	bltu	$a1, $a2, .LBB5_32
# %bb.29:                               # %vector.ph
                                        #   in Loop: Header=BB5_5 Depth=1
	bstrpick.d	$a0, $s7, 30, 2
	slli.d	$a0, $a0, 2
	addi.d	$a1, $s2, 16
	addi.d	$a2, $s3, 16
	move	$a3, $a0
	.p2align	4, , 16
.LBB5_30:                               # %vector.body
                                        #   Parent Loop BB5_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a1, -16
	vld	$vr1, $a1, 0
	vst	$vr0, $a2, -16
	vst	$vr1, $a2, 0
	addi.d	$a3, $a3, -4
	addi.d	$a1, $a1, 32
	addi.d	$a2, $a2, 32
	bnez	$a3, .LBB5_30
# %bb.31:                               # %middle.block
                                        #   in Loop: Header=BB5_5 Depth=1
	beq	$a0, $s7, .LBB5_34
.LBB5_32:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB5_5 Depth=1
	sub.d	$a1, $s7, $a0
	alsl.d	$a2, $a0, $s2, 3
	alsl.d	$a0, $a0, $s3, 3
	.p2align	4, , 16
.LBB5_33:                               # %scalar.ph
                                        #   Parent Loop BB5_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a3, $a2, 0
	st.d	$a3, $a0, 0
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 8
	addi.d	$a0, $a0, 8
	bnez	$a1, .LBB5_33
.LBB5_34:                               # %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i64
                                        #   in Loop: Header=BB5_5 Depth=1
.Ltmp41:                                # EH_LABEL
	move	$s1, $s2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp42:                                # EH_LABEL
	move	$s2, $s3
	b	.LBB5_36
.LBB5_35:                               # %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE10deallocateEv.exit.i.i33._ZN20btAlignedObjectArrayIPK10btDbvtNodeE9push_backERKS2_.exit70_crit_edge
                                        #   in Loop: Header=BB5_5 Depth=1
	move	$s7, $s6
.LBB5_36:                               # %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE9push_backERKS2_.exit70
                                        #   in Loop: Header=BB5_5 Depth=1
	ld.d	$a0, $s0, 48
	slli.d	$a1, $s7, 3
	stx.d	$a0, $s2, $a1
	addi.w	$s7, $s6, 1
	move	$s1, $s2
	move	$s8, $s4
	b	.LBB5_4
.LBB5_37:                               # %_ZN20btAlignedObjectArrayIPK10btDbvtNodeED2Ev.exit
	move	$a0, $s1
	fld.d	$fs5, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs4, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 48                   # 8-byte Folded Reload
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
.LBB5_38:
.Ltmp45:                                # EH_LABEL
	move	$fp, $a0
.Ltmp46:                                # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp47:                                # EH_LABEL
# %bb.39:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB5_40:
.Ltmp48:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end5:
	.size	_ZN6btDbvt9collideTVEPK10btDbvtNodeRK12btDbvtAabbMmRNS_8ICollideE, .Lfunc_end5-_ZN6btDbvt9collideTVEPK10btDbvtNodeRK12btDbvtAabbMmRNS_8ICollideE
	.cfi_endproc
	.section	.gcc_except_table._ZN6btDbvt9collideTVEPK10btDbvtNodeRK12btDbvtAabbMmRNS_8ICollideE,"aG",@progbits,_ZN6btDbvt9collideTVEPK10btDbvtNodeRK12btDbvtAabbMmRNS_8ICollideE,comdat
	.p2align	2, 0x0
GCC_except_table5:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase2-.Lttbaseref2
.Lttbaseref2:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Lfunc_begin3-.Lfunc_begin3    # >> Call Site 1 <<
	.uleb128 .Ltmp43-.Lfunc_begin3          #   Call between .Lfunc_begin3 and .Ltmp43
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp43-.Lfunc_begin3          # >> Call Site 2 <<
	.uleb128 .Ltmp42-.Ltmp43                #   Call between .Ltmp43 and .Ltmp42
	.uleb128 .Ltmp45-.Lfunc_begin3          #     jumps to .Ltmp45
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp42-.Lfunc_begin3          # >> Call Site 3 <<
	.uleb128 .Ltmp46-.Ltmp42                #   Call between .Ltmp42 and .Ltmp46
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp46-.Lfunc_begin3          # >> Call Site 4 <<
	.uleb128 .Ltmp47-.Ltmp46                #   Call between .Ltmp46 and .Ltmp47
	.uleb128 .Ltmp48-.Lfunc_begin3          #     jumps to .Ltmp48
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp47-.Lfunc_begin3          # >> Call Site 5 <<
	.uleb128 .Lfunc_end5-.Ltmp47            #   Call between .Ltmp47 and .Lfunc_end5
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
	.globl	_ZN16btDbvtBroadphase12destroyProxyEP17btBroadphaseProxyP12btDispatcher # -- Begin function _ZN16btDbvtBroadphase12destroyProxyEP17btBroadphaseProxyP12btDispatcher
	.p2align	5
	.type	_ZN16btDbvtBroadphase12destroyProxyEP17btBroadphaseProxyP12btDispatcher,@function
_ZN16btDbvtBroadphase12destroyProxyEP17btBroadphaseProxyP12btDispatcher: # @_ZN16btDbvtBroadphase12destroyProxyEP17btBroadphaseProxyP12btDispatcher
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
	move	$s0, $a1
	ld.w	$a1, $a1, 88
	move	$s1, $a2
	move	$fp, $a0
	addi.d	$a0, $a1, -2
	sltui	$a0, $a0, 1
	ld.d	$a1, $s0, 64
	ori	$a2, $zero, 8
	masknez	$a2, $a2, $a0
	ori	$a3, $zero, 72
	maskeqz	$a0, $a3, $a0
	or	$a0, $a0, $a2
	add.d	$a0, $fp, $a0
	pcaddu18i	$ra, %call36(_ZN6btDbvt6removeEP10btDbvtNode)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 72
	ld.d	$a0, $s0, 80
	beqz	$a1, .LBB6_4
# %bb.1:
	st.d	$a0, $a1, 80
	beqz	$a0, .LBB6_3
.LBB6_2:
	ld.d	$a1, $s0, 72
	st.d	$a1, $a0, 72
.LBB6_3:                                # %_ZL10listremoveI11btDbvtProxyEvPT_RS2_.exit
	ld.d	$a0, $fp, 160
	ld.d	$a1, $a0, 0
	ld.d	$a3, $a1, 32
	move	$a1, $s0
	move	$a2, $s1
	jirl	$ra, $a3, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 222
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB6_4:
	ld.w	$a1, $s0, 88
	alsl.d	$a1, $a1, $fp, 3
	st.d	$a0, $a1, 136
	bnez	$a0, .LBB6_2
	b	.LBB6_3
.Lfunc_end6:
	.size	_ZN16btDbvtBroadphase12destroyProxyEP17btBroadphaseProxyP12btDispatcher, .Lfunc_end6-_ZN16btDbvtBroadphase12destroyProxyEP17btBroadphaseProxyP12btDispatcher
	.cfi_endproc
                                        # -- End function
	.globl	_ZNK16btDbvtBroadphase7getAabbEP17btBroadphaseProxyR9btVector3S3_ # -- Begin function _ZNK16btDbvtBroadphase7getAabbEP17btBroadphaseProxyR9btVector3S3_
	.p2align	5
	.type	_ZNK16btDbvtBroadphase7getAabbEP17btBroadphaseProxyR9btVector3S3_,@function
_ZNK16btDbvtBroadphase7getAabbEP17btBroadphaseProxyR9btVector3S3_: # @_ZNK16btDbvtBroadphase7getAabbEP17btBroadphaseProxyR9btVector3S3_
# %bb.0:
	vld	$vr0, $a1, 28
	vst	$vr0, $a2, 0
	vld	$vr0, $a1, 44
	vst	$vr0, $a3, 0
	ret
.Lfunc_end7:
	.size	_ZNK16btDbvtBroadphase7getAabbEP17btBroadphaseProxyR9btVector3S3_, .Lfunc_end7-_ZNK16btDbvtBroadphase7getAabbEP17btBroadphaseProxyR9btVector3S3_
                                        # -- End function
	.globl	_ZN16btDbvtBroadphase7rayTestERK9btVector3S2_R23btBroadphaseRayCallbackS2_S2_ # -- Begin function _ZN16btDbvtBroadphase7rayTestERK9btVector3S2_R23btBroadphaseRayCallbackS2_S2_
	.p2align	5
	.type	_ZN16btDbvtBroadphase7rayTestERK9btVector3S2_R23btBroadphaseRayCallbackS2_S2_,@function
_ZN16btDbvtBroadphase7rayTestERK9btVector3S2_R23btBroadphaseRayCallbackS2_S2_: # @_ZN16btDbvtBroadphase7rayTestERK9btVector3S2_R23btBroadphaseRayCallbackS2_S2_
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
	move	$fp, $a5
	move	$s0, $a4
	move	$s1, $a3
	move	$s2, $a2
	move	$s3, $a1
	move	$s4, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV19BroadphaseRayTester+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV19BroadphaseRayTester+16)
	st.d	$a0, $sp, 16
	st.d	$a3, $sp, 24
	ld.d	$a1, $s4, 8
	fld.s	$fa0, $a3, 36
	addi.d	$a0, $s4, 8
	addi.d	$s5, $a3, 8
	addi.d	$s6, $a3, 24
	addi.d	$s7, $sp, 16
	st.d	$s7, $sp, 0
	move	$a2, $s3
	move	$a3, $s2
	move	$a4, $s5
	move	$a5, $s6
	move	$a6, $s0
	move	$a7, $fp
	pcaddu18i	$ra, %call36(_ZNK6btDbvt15rayTestInternalEPK10btDbvtNodeRK9btVector3S5_S5_PjfS5_S5_RNS_8ICollideE)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 72
	fld.s	$fa0, $s1, 36
	addi.d	$a0, $s4, 72
	st.d	$s7, $sp, 0
	move	$a2, $s3
	move	$a3, $s2
	move	$a4, $s5
	move	$a5, $s6
	move	$a6, $s0
	move	$a7, $fp
	pcaddu18i	$ra, %call36(_ZNK6btDbvt15rayTestInternalEPK10btDbvtNodeRK9btVector3S5_S5_PjfS5_S5_RNS_8ICollideE)
	jirl	$ra, $ra, 0
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
.Lfunc_end8:
	.size	_ZN16btDbvtBroadphase7rayTestERK9btVector3S2_R23btBroadphaseRayCallbackS2_S2_, .Lfunc_end8-_ZN16btDbvtBroadphase7rayTestERK9btVector3S2_R23btBroadphaseRayCallbackS2_S2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK6btDbvt15rayTestInternalEPK10btDbvtNodeRK9btVector3S5_S5_PjfS5_S5_RNS_8ICollideE,"axG",@progbits,_ZNK6btDbvt15rayTestInternalEPK10btDbvtNodeRK9btVector3S5_S5_PjfS5_S5_RNS_8ICollideE,comdat
	.weak	_ZNK6btDbvt15rayTestInternalEPK10btDbvtNodeRK9btVector3S5_S5_PjfS5_S5_RNS_8ICollideE # -- Begin function _ZNK6btDbvt15rayTestInternalEPK10btDbvtNodeRK9btVector3S5_S5_PjfS5_S5_RNS_8ICollideE
	.p2align	5
	.type	_ZNK6btDbvt15rayTestInternalEPK10btDbvtNodeRK9btVector3S5_S5_PjfS5_S5_RNS_8ICollideE,@function
_ZNK6btDbvt15rayTestInternalEPK10btDbvtNodeRK9btVector3S5_S5_PjfS5_S5_RNS_8ICollideE: # @_ZNK6btDbvt15rayTestInternalEPK10btDbvtNodeRK9btVector3S5_S5_PjfS5_S5_RNS_8ICollideE
.Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception4
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
	.cfi_offset 30, -80
	.cfi_offset 31, -88
	.cfi_offset 56, -96
	.cfi_offset 57, -104
	beqz	$a1, .LBB9_2
# %bb.1:                                # %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE6resizeEiRKS2_.exit
	move	$fp, $a7
	move	$s0, $a6
	fmov.s	$fs0, $fa0
	move	$s1, $a5
	move	$s2, $a4
	move	$s3, $a2
	move	$s6, $a1
	ld.d	$a0, $sp, 192
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ori	$a0, $zero, 1024
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	addi.d	$a0, $a0, 8
	ori	$a2, $zero, 1016
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a5, $s4
	st.d	$s6, $s4, 0
	ori	$a4, $zero, 126
	ori	$a0, $zero, 128
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	addi.d	$s4, $sp, 56
	movgr2fr.w	$fs1, $zero
	ori	$a0, $zero, 128
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ori	$s5, $zero, 1
	b	.LBB9_8
.LBB9_2:                                # %_ZN20btAlignedObjectArrayIPK10btDbvtNodeED2Ev.exit
	fld.d	$fs1, $sp, 88                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 96                   # 8-byte Folded Reload
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
.LBB9_3:                                #   in Loop: Header=BB9_8 Depth=1
	move	$s7, $a5
.LBB9_4:                                # %.lr.ph.i51
                                        #   in Loop: Header=BB9_8 Depth=1
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	alsl.d	$a0, $a1, $s7, 3
	sub.d	$a1, $a2, $a1
	slli.d	$a2, $a1, 3
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	move	$a5, $s7
.LBB9_5:                                # %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE6resizeEiRKS2_.exit72
                                        #   in Loop: Header=BB9_8 Depth=1
	addi.w	$a4, $a2, -2
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
.LBB9_6:                                #   in Loop: Header=BB9_8 Depth=1
	ld.d	$a0, $s6, 40
	stx.d	$a0, $a5, $s8
	ld.d	$a0, $s6, 48
	addi.w	$s7, $s5, 1
	slli.d	$a1, $s5, 3
	stx.d	$a0, $a5, $a1
	.p2align	4, , 16
.LBB9_7:                                # %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit.thread
                                        #   in Loop: Header=BB9_8 Depth=1
	move	$s5, $s7
	beqz	$s7, .LBB9_32
.LBB9_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_27 Depth 2
                                        #     Child Loop BB9_30 Depth 2
	addi.w	$s7, $s5, -1
	slli.d	$s8, $s7, 3
	ldx.d	$s6, $a5, $s8
	fld.s	$fa0, $s6, 0
	fld.s	$fa1, $s0, 0
	fld.s	$fa2, $s6, 4
	fld.s	$fa3, $s0, 4
	fld.s	$fa4, $s6, 8
	fld.s	$fa5, $s0, 8
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa1, $fa2, $fa3
	fadd.s	$fa2, $fa4, $fa5
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa1
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa2
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $sp, 56
	fld.s	$fa0, $s6, 16
	fld.s	$fa1, $fp, 0
	fld.s	$fa2, $s6, 20
	fld.s	$fa3, $fp, 4
	fld.s	$fa4, $s6, 24
	fld.s	$fa5, $fp, 8
	st.d	$a1, $sp, 64
	fadd.s	$fa0, $fa0, $fa1
	fadd.s	$fa1, $fa2, $fa3
	fadd.s	$fa2, $fa4, $fa5
	ori	$a3, $zero, 1
	movfr2gr.s	$a2, $fa0
	movfr2gr.s	$a1, $fa1
	ld.wu	$a0, $s1, 0
	bstrins.d	$a2, $a1, 63, 32
	ld.wu	$a1, $s1, 4
	st.d	$a2, $sp, 72
	slli.d	$a2, $a0, 4
	fldx.s	$fa0, $a2, $s4
	sub.d	$a2, $a3, $a1
	bstrpick.d	$a2, $a2, 31, 0
	alsl.d	$a2, $a2, $s4, 4
	fld.s	$fa6, $a2, 4
	movfr2gr.s	$a2, $fa2
	bstrpick.d	$a2, $a2, 31, 0
	fld.s	$fa2, $s3, 0
	fld.s	$fa3, $s2, 0
	fld.s	$fa4, $s3, 4
	fld.s	$fa5, $s2, 4
	fsub.s	$fa0, $fa0, $fa2
	fmul.s	$fa1, $fa0, $fa3
	fsub.s	$fa0, $fa6, $fa4
	fmul.s	$fa0, $fa5, $fa0
	fcmp.clt.s	$fcc0, $fa0, $fa1
	st.d	$a2, $sp, 80
	bcnez	$fcc0, .LBB9_7
# %bb.9:                                #   in Loop: Header=BB9_8 Depth=1
	sub.d	$a0, $a3, $a0
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a0, $a0, 4
	fldx.s	$fa6, $a0, $s4
	alsl.d	$a0, $a1, $s4, 4
	fld.s	$fa7, $a0, 4
	fsub.s	$fa2, $fa6, $fa2
	fmul.s	$fa2, $fa3, $fa2
	fsub.s	$fa3, $fa7, $fa4
	fmul.s	$fa4, $fa3, $fa5
	fcmp.clt.s	$fcc0, $fa2, $fa4
	ori	$a1, $zero, 1
	bcnez	$fcc0, .LBB9_7
# %bb.10:                               #   in Loop: Header=BB9_8 Depth=1
	ld.wu	$a0, $s1, 8
	fld.s	$fa3, $s3, 8
	sub.d	$a1, $a1, $a0
	bstrpick.d	$a1, $a1, 31, 0
	alsl.d	$a1, $a1, $s4, 4
	fld.s	$fa6, $a1, 8
	fld.s	$fa5, $s2, 8
	fcmp.clt.s	$fcc0, $fa1, $fa4
	fsel	$fa4, $fa1, $fa4, $fcc0
	fsub.s	$fa1, $fa6, $fa3
	fmul.s	$fa1, $fa5, $fa1
	fcmp.clt.s	$fcc0, $fa1, $fa4
	bcnez	$fcc0, .LBB9_7
# %bb.11:                               #   in Loop: Header=BB9_8 Depth=1
	alsl.d	$a0, $a0, $s4, 4
	fld.s	$fa6, $a0, 8
	fcmp.clt.s	$fcc0, $fa0, $fa2
	fsel	$fa0, $fa2, $fa0, $fcc0
	fsub.s	$fa2, $fa6, $fa3
	fmul.s	$fa2, $fa2, $fa5
	fcmp.clt.s	$fcc0, $fa0, $fa2
	bcnez	$fcc0, .LBB9_7
# %bb.12:                               # %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit
                                        #   in Loop: Header=BB9_8 Depth=1
	fcmp.clt.s	$fcc0, $fa4, $fa2
	fsel	$fa2, $fa4, $fa2, $fcc0
	fcmp.cule.s	$fcc0, $fs0, $fa2
	bcnez	$fcc0, .LBB9_7
# %bb.13:                               # %_Z10btRayAabb2RK9btVector3S1_PKjPS0_Rfff.exit
                                        #   in Loop: Header=BB9_8 Depth=1
	fcmp.clt.s	$fcc0, $fa1, $fa0
	fsel	$fa0, $fa0, $fa1, $fcc0
	fcmp.cule.s	$fcc0, $fa0, $fs1
	bcnez	$fcc0, .LBB9_7
# %bb.14:                               #   in Loop: Header=BB9_8 Depth=1
	ld.d	$a0, $s6, 48
	beqz	$a0, .LBB9_21
# %bb.15:                               #   in Loop: Header=BB9_8 Depth=1
	bge	$a4, $s7, .LBB9_6
# %bb.16:                               #   in Loop: Header=BB9_8 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	slli.w	$a2, $a0, 1
	bge	$a0, $a2, .LBB9_5
# %bb.17:                               #   in Loop: Header=BB9_8 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	bge	$a0, $a2, .LBB9_3
# %bb.18:                               #   in Loop: Header=BB9_8 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	st.d	$a5, $sp, 40                    # 8-byte Folded Spill
	beqz	$a0, .LBB9_23
# %bb.19:                               #   in Loop: Header=BB9_8 Depth=1
	slli.d	$a0, $a2, 3
.Ltmp49:                                # EH_LABEL
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
.Ltmp50:                                # EH_LABEL
# %bb.20:                               #   in Loop: Header=BB9_8 Depth=1
	move	$s7, $a0
	ld.d	$a5, $sp, 40                    # 8-byte Folded Reload
	b	.LBB9_24
.LBB9_21:                               #   in Loop: Header=BB9_8 Depth=1
	move	$s5, $a4
	st.d	$a5, $sp, 40                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a1, 24
.Ltmp54:                                # EH_LABEL
	move	$a1, $s6
	jirl	$ra, $a2, 0
.Ltmp55:                                # EH_LABEL
# %bb.22:                               #   in Loop: Header=BB9_8 Depth=1
	ld.d	$a5, $sp, 40                    # 8-byte Folded Reload
	move	$a4, $s5
	b	.LBB9_7
.LBB9_23:                               #   in Loop: Header=BB9_8 Depth=1
	move	$s7, $zero
.LBB9_24:                               # %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE8allocateEi.exit.i.i
                                        #   in Loop: Header=BB9_8 Depth=1
	move	$a0, $zero
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	bstrpick.d	$a1, $a3, 31, 0
	ori	$a2, $zero, 4
	bltu	$a3, $a2, .LBB9_29
# %bb.25:                               # %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE8allocateEi.exit.i.i
                                        #   in Loop: Header=BB9_8 Depth=1
	sub.d	$a2, $s7, $a5
	ori	$a3, $zero, 32
	bltu	$a2, $a3, .LBB9_29
# %bb.26:                               # %vector.ph
                                        #   in Loop: Header=BB9_8 Depth=1
	bstrpick.d	$a0, $a1, 30, 2
	slli.d	$a0, $a0, 2
	addi.d	$a2, $a5, 16
	addi.d	$a3, $s7, 16
	move	$a4, $a0
	.p2align	4, , 16
.LBB9_27:                               # %vector.body
                                        #   Parent Loop BB9_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a2, -16
	vld	$vr1, $a2, 0
	vst	$vr0, $a3, -16
	vst	$vr1, $a3, 0
	addi.d	$a4, $a4, -4
	addi.d	$a2, $a2, 32
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB9_27
# %bb.28:                               # %middle.block
                                        #   in Loop: Header=BB9_8 Depth=1
	beq	$a0, $a1, .LBB9_31
.LBB9_29:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB9_8 Depth=1
	sub.d	$a1, $a1, $a0
	alsl.d	$a2, $a0, $a5, 3
	alsl.d	$a0, $a0, $s7, 3
	.p2align	4, , 16
.LBB9_30:                               # %scalar.ph
                                        #   Parent Loop BB9_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a3, $a2, 0
	st.d	$a3, $a0, 0
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 8
	addi.d	$a0, $a0, 8
	bnez	$a1, .LBB9_30
.LBB9_31:                               # %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.i.i57.loopexit
                                        #   in Loop: Header=BB9_8 Depth=1
.Ltmp51:                                # EH_LABEL
	move	$a0, $a5
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp52:                                # EH_LABEL
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	b	.LBB9_4
.LBB9_32:
	move	$a0, $a5
	fld.d	$fs1, $sp, 88                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 96                   # 8-byte Folded Reload
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
	pcaddu18i	$t8, %call36(_Z21btAlignedFreeInternalPv)
	jr	$t8
.LBB9_33:
.Ltmp53:                                # EH_LABEL
	b	.LBB9_35
.LBB9_34:
.Ltmp56:                                # EH_LABEL
.LBB9_35:
	move	$fp, $a0
.Ltmp57:                                # EH_LABEL
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp58:                                # EH_LABEL
# %bb.36:                               # %_ZN20btAlignedObjectArrayIPK10btDbvtNodeED2Ev.exit77
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB9_37:
.Ltmp59:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end9:
	.size	_ZNK6btDbvt15rayTestInternalEPK10btDbvtNodeRK9btVector3S5_S5_PjfS5_S5_RNS_8ICollideE, .Lfunc_end9-_ZNK6btDbvt15rayTestInternalEPK10btDbvtNodeRK9btVector3S5_S5_PjfS5_S5_RNS_8ICollideE
	.cfi_endproc
	.section	.gcc_except_table._ZNK6btDbvt15rayTestInternalEPK10btDbvtNodeRK9btVector3S5_S5_PjfS5_S5_RNS_8ICollideE,"aG",@progbits,_ZNK6btDbvt15rayTestInternalEPK10btDbvtNodeRK9btVector3S5_S5_PjfS5_S5_RNS_8ICollideE,comdat
	.p2align	2, 0x0
GCC_except_table9:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase3-.Lttbaseref3
.Lttbaseref3:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Lfunc_begin4-.Lfunc_begin4    # >> Call Site 1 <<
	.uleb128 .Ltmp49-.Lfunc_begin4          #   Call between .Lfunc_begin4 and .Ltmp49
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp49-.Lfunc_begin4          # >> Call Site 2 <<
	.uleb128 .Ltmp50-.Ltmp49                #   Call between .Ltmp49 and .Ltmp50
	.uleb128 .Ltmp53-.Lfunc_begin4          #     jumps to .Ltmp53
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp54-.Lfunc_begin4          # >> Call Site 3 <<
	.uleb128 .Ltmp55-.Ltmp54                #   Call between .Ltmp54 and .Ltmp55
	.uleb128 .Ltmp56-.Lfunc_begin4          #     jumps to .Ltmp56
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp51-.Lfunc_begin4          # >> Call Site 4 <<
	.uleb128 .Ltmp52-.Ltmp51                #   Call between .Ltmp51 and .Ltmp52
	.uleb128 .Ltmp53-.Lfunc_begin4          #     jumps to .Ltmp53
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp52-.Lfunc_begin4          # >> Call Site 5 <<
	.uleb128 .Ltmp57-.Ltmp52                #   Call between .Ltmp52 and .Ltmp57
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp57-.Lfunc_begin4          # >> Call Site 6 <<
	.uleb128 .Ltmp58-.Ltmp57                #   Call between .Ltmp57 and .Ltmp58
	.uleb128 .Ltmp59-.Lfunc_begin4          #     jumps to .Ltmp59
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp58-.Lfunc_begin4          # >> Call Site 7 <<
	.uleb128 .Lfunc_end9-.Ltmp58            #   Call between .Ltmp58 and .Lfunc_end9
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
	.section	.text._ZN6btDbvt8ICollideD2Ev,"axG",@progbits,_ZN6btDbvt8ICollideD2Ev,comdat
	.weak	_ZN6btDbvt8ICollideD2Ev         # -- Begin function _ZN6btDbvt8ICollideD2Ev
	.p2align	5
	.type	_ZN6btDbvt8ICollideD2Ev,@function
_ZN6btDbvt8ICollideD2Ev:                # @_ZN6btDbvt8ICollideD2Ev
# %bb.0:
	ret
.Lfunc_end10:
	.size	_ZN6btDbvt8ICollideD2Ev, .Lfunc_end10-_ZN6btDbvt8ICollideD2Ev
                                        # -- End function
	.text
	.globl	_ZN16btDbvtBroadphase7setAabbEP17btBroadphaseProxyRK9btVector3S4_P12btDispatcher # -- Begin function _ZN16btDbvtBroadphase7setAabbEP17btBroadphaseProxyRK9btVector3S4_P12btDispatcher
	.p2align	5
	.type	_ZN16btDbvtBroadphase7setAabbEP17btBroadphaseProxyRK9btVector3S4_P12btDispatcher,@function
_ZN16btDbvtBroadphase7setAabbEP17btBroadphaseProxyRK9btVector3S4_P12btDispatcher: # @_ZN16btDbvtBroadphase7setAabbEP17btBroadphaseProxyRK9btVector3S4_P12btDispatcher
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	move	$s1, $a3
	move	$s2, $a2
	move	$fp, $a1
	vld	$vr0, $a2, 0
	vld	$vr1, $a3, 0
	ld.w	$a1, $a1, 88
	move	$s0, $a0
	vst	$vr0, $sp, 32
	ori	$a0, $zero, 2
	vst	$vr1, $sp, 48
	bne	$a1, $a0, .LBB11_2
# %bb.1:
	ld.d	$a1, $fp, 64
	addi.d	$s3, $s0, 8
	addi.d	$a0, $s0, 72
	pcaddu18i	$ra, %call36(_ZN6btDbvt6removeEP10btDbvtNode)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 32
	move	$a0, $s3
	move	$a2, $fp
	pcaddu18i	$ra, %call36(_ZN6btDbvt6insertERK12btDbvtAabbMmPv)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 64
	b	.LBB11_9
.LBB11_2:
	ld.w	$a0, $s0, 196
	addi.d	$a0, $a0, 1
	st.w	$a0, $s0, 196
	ld.d	$a1, $fp, 64
	fld.s	$fa0, $a1, 0
	fld.s	$fa1, $sp, 48
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB11_8
# %bb.3:
	fld.s	$fa0, $a1, 16
	fld.s	$fa1, $sp, 32
	fcmp.cult.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB11_8
# %bb.4:
	fld.s	$fa0, $a1, 4
	fld.s	$fa1, $sp, 52
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB11_8
# %bb.5:
	fld.s	$fa0, $a1, 20
	fld.s	$fa1, $sp, 36
	fcmp.cult.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB11_8
# %bb.6:
	fld.s	$fa0, $a1, 8
	fld.s	$fa1, $sp, 56
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB11_8
# %bb.7:                                # %_Z9IntersectRK12btDbvtAabbMmS1_.exit
	fld.s	$fa0, $a1, 24
	fld.s	$fa1, $sp, 40
	fcmp.cult.s	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB11_20
.LBB11_8:                               # %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread
	addi.d	$a0, $s0, 8
	addi.d	$a2, $sp, 32
	pcaddu18i	$ra, %call36(_ZN6btDbvt6updateEP10btDbvtNodeR12btDbvtAabbMm)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 200
	addi.d	$a0, $a0, 1
	st.w	$a0, $s0, 200
.LBB11_9:
	ori	$a0, $zero, 1
.LBB11_10:
	ld.d	$a3, $fp, 72
	ld.d	$a2, $fp, 80
	addi.d	$a1, $s0, 136
	beqz	$a3, .LBB11_19
# %bb.11:
	st.d	$a2, $a3, 80
	beqz	$a2, .LBB11_13
.LBB11_12:
	ld.d	$a3, $fp, 72
	st.d	$a3, $a2, 72
.LBB11_13:                              # %_ZL10listremoveI11btDbvtProxyEvPT_RS2_.exit
	vld	$vr0, $s2, 0
	vst	$vr0, $fp, 28
	vld	$vr0, $s1, 0
	vst	$vr0, $fp, 44
	ld.w	$a3, $s0, 172
	st.w	$a3, $fp, 88
	slli.d	$a2, $a3, 3
	st.d	$zero, $fp, 72
	ldx.d	$a2, $a1, $a2
	alsl.d	$a1, $a3, $a1, 3
	st.d	$a2, $fp, 80
	beqz	$a2, .LBB11_15
# %bb.14:
	st.d	$fp, $a2, 72
.LBB11_15:                              # %_ZL10listappendI11btDbvtProxyEvPT_RS2_.exit
	st.d	$fp, $a1, 0
	beqz	$a0, .LBB11_18
# %bb.16:
	ld.bu	$a0, $s0, 221
	ori	$a1, $zero, 1
	st.b	$a1, $s0, 222
	bnez	$a0, .LBB11_18
# %bb.17:
	pcalau12i	$a0, %pc_hi20(_ZTV18btDbvtTreeCollider+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV18btDbvtTreeCollider+16)
	ld.d	$a1, $s0, 72
	ld.d	$a2, $fp, 64
	st.d	$a0, $sp, 8
	st.d	$s0, $sp, 16
	addi.d	$a0, $s0, 72
	addi.d	$a3, $sp, 8
	pcaddu18i	$ra, %call36(_ZN6btDbvt24collideTTpersistentStackEPK10btDbvtNodeS2_RNS_8ICollideE)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 8
	ld.d	$a2, $fp, 64
	addi.d	$a0, $s0, 8
	addi.d	$a3, $sp, 8
	pcaddu18i	$ra, %call36(_ZN6btDbvt24collideTTpersistentStackEPK10btDbvtNodeS2_RNS_8ICollideE)
	jirl	$ra, $ra, 0
.LBB11_18:
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.LBB11_19:
	ld.w	$a3, $fp, 88
	slli.d	$a3, $a3, 3
	stx.d	$a2, $a1, $a3
	bnez	$a2, .LBB11_12
	b	.LBB11_13
.LBB11_20:
	fld.s	$fa7, $s2, 0
	fld.s	$ft0, $fp, 28
	fld.s	$fa1, $fp, 32
	fld.s	$fa0, $fp, 36
	fld.s	$fa3, $fp, 44
	fld.s	$fa4, $fp, 48
	fld.s	$fa5, $fp, 52
	fld.s	$fa2, $s2, 4
	fsub.s	$fa3, $fa3, $ft0
	fsub.s	$fa4, $fa4, $fa1
	fsub.s	$fa5, $fa5, $fa0
	vldi	$vr6, -1184
	fmul.s	$fa3, $fa3, $fa6
	fld.s	$ft1, $s0, 168
	fmul.s	$ft2, $fa4, $fa6
	fmul.s	$ft3, $fa5, $fa6
	fld.s	$fa4, $s2, 8
	fmul.s	$fa6, $fa3, $ft1
	fmul.s	$fa5, $ft1, $ft2
	fmul.s	$fa3, $ft1, $ft3
	movfr2gr.s	$a0, $fa6
	movfr2gr.s	$a2, $fa5
	bstrins.d	$a0, $a2, 63, 32
	movfr2gr.s	$a2, $fa3
	bstrpick.d	$a2, $a2, 31, 0
	st.d	$a0, $sp, 8
	fcmp.cule.s	$fcc0, $ft0, $fa7
	st.d	$a2, $sp, 16
	bceqz	$fcc0, .LBB11_26
# %bb.21:
	fcmp.cule.s	$fcc0, $fa1, $fa2
	bceqz	$fcc0, .LBB11_27
.LBB11_22:
	fcmp.cule.s	$fcc0, $fa0, $fa4
	bcnez	$fcc0, .LBB11_24
.LBB11_23:
	fneg.s	$fa0, $fa3
	fst.s	$fa0, $sp, 16
.LBB11_24:
	addi.d	$a0, $s0, 8
	lu12i.w	$a2, 251084
	ori	$a2, $a2, 3277
	movgr2fr.w	$fa0, $a2
	addi.d	$a2, $sp, 32
	addi.d	$a3, $sp, 8
	pcaddu18i	$ra, %call36(_ZN6btDbvt6updateEP10btDbvtNodeR12btDbvtAabbMmRK9btVector3f)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB11_10
# %bb.25:
	ld.w	$a1, $s0, 200
	addi.d	$a1, $a1, 1
	st.w	$a1, $s0, 200
	b	.LBB11_10
.LBB11_26:
	fneg.s	$fa6, $fa6
	fst.s	$fa6, $sp, 8
	fcmp.cule.s	$fcc0, $fa1, $fa2
	bcnez	$fcc0, .LBB11_22
.LBB11_27:
	fneg.s	$fa1, $fa5
	fst.s	$fa1, $sp, 12
	fcmp.cule.s	$fcc0, $fa0, $fa4
	bceqz	$fcc0, .LBB11_23
	b	.LBB11_24
.Lfunc_end11:
	.size	_ZN16btDbvtBroadphase7setAabbEP17btBroadphaseProxyRK9btVector3S4_P12btDispatcher, .Lfunc_end11-_ZN16btDbvtBroadphase7setAabbEP17btBroadphaseProxyRK9btVector3S4_P12btDispatcher
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN6btDbvt24collideTTpersistentStackEPK10btDbvtNodeS2_RNS_8ICollideE,"axG",@progbits,_ZN6btDbvt24collideTTpersistentStackEPK10btDbvtNodeS2_RNS_8ICollideE,comdat
	.weak	_ZN6btDbvt24collideTTpersistentStackEPK10btDbvtNodeS2_RNS_8ICollideE # -- Begin function _ZN6btDbvt24collideTTpersistentStackEPK10btDbvtNodeS2_RNS_8ICollideE
	.p2align	5
	.type	_ZN6btDbvt24collideTTpersistentStackEPK10btDbvtNodeS2_RNS_8ICollideE,@function
_ZN6btDbvt24collideTTpersistentStackEPK10btDbvtNodeS2_RNS_8ICollideE: # @_ZN6btDbvt24collideTTpersistentStackEPK10btDbvtNodeS2_RNS_8ICollideE
	.cfi_startproc
# %bb.0:
	beqz	$a1, .LBB12_43
# %bb.1:
	beqz	$a2, .LBB12_43
# %bb.2:
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
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	st.d	$s7, $sp, 16                    # 8-byte Folded Spill
	st.d	$s8, $sp, 8                     # 8-byte Folded Spill
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
	move	$s0, $a0
	ld.w	$a3, $a0, 36
	ori	$a0, $zero, 127
	blt	$a0, $a3, .LBB12_11
# %bb.3:
	ld.w	$a3, $s0, 40
	blt	$a0, $a3, .LBB12_11
# %bb.4:
	move	$s2, $a1
	move	$s3, $a2
	ori	$a0, $zero, 2048
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 36
	move	$s1, $a0
	blez	$a1, .LBB12_7
# %bb.5:                                # %.lr.ph.i.i.i
	move	$a0, $zero
	slli.d	$a1, $a1, 4
	.p2align	4, , 16
.LBB12_6:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $s0, 48
	vldx	$vr0, $a2, $a0
	vstx	$vr0, $s1, $a0
	addi.d	$a0, $a0, 16
	bne	$a1, $a0, .LBB12_6
.LBB12_7:                               # %_ZNK20btAlignedObjectArrayIN6btDbvt6sStkNNEE4copyEiiPS1_.exit.i.i
	ld.d	$a0, $s0, 48
	beqz	$a0, .LBB12_10
# %bb.8:                                # %_ZNK20btAlignedObjectArrayIN6btDbvt6sStkNNEE4copyEiiPS1_.exit.i.i
	ld.b	$a1, $s0, 56
	andi	$a1, $a1, 1
	beqz	$a1, .LBB12_10
# %bb.9:
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.LBB12_10:                              # %_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEE10deallocateEv.exit.i.i
	ori	$a0, $zero, 1
	st.b	$a0, $s0, 56
	st.d	$s1, $s0, 48
	ori	$a0, $zero, 128
	st.w	$a0, $s0, 40
	move	$a2, $s3
	move	$a1, $s2
.LBB12_11:                              # %_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEE6resizeEiRKS1_.exit
	ld.d	$a0, $s0, 48
	ori	$a3, $zero, 128
	st.w	$a3, $s0, 36
	st.d	$a1, $a0, 0
	st.d	$a2, $a0, 8
	ori	$s4, $zero, 1
	ori	$s7, $zero, 124
	ori	$s6, $zero, 1
	b	.LBB12_14
.LBB12_12:                              #   in Loop: Header=BB12_14 Depth=1
	ld.d	$a1, $s2, 40
	stx.d	$a2, $s3, $s8
	st.d	$a1, $a0, 8
	ld.d	$a0, $s1, 48
	ld.d	$a1, $s2, 40
	alsl.d	$a2, $s6, $s3, 4
	slli.d	$a3, $s6, 4
	stx.d	$a0, $s3, $a3
	st.d	$a1, $a2, 8
	ld.d	$a0, $s1, 40
	ld.d	$a1, $s2, 48
	st.d	$a0, $a2, 16
	st.d	$a1, $a2, 24
	ld.d	$a0, $s1, 48
	ld.d	$a1, $s2, 48
	addi.w	$s5, $s6, 3
	st.d	$a0, $a2, 32
	st.d	$a1, $a2, 40
	.p2align	4, , 16
.LBB12_13:                              # %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread
                                        #   in Loop: Header=BB12_14 Depth=1
	move	$s6, $s5
	beqz	$s5, .LBB12_42
.LBB12_14:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_20 Depth 2
	ld.d	$s3, $s0, 48
	addi.w	$s5, $s6, -1
	alsl.d	$a0, $s5, $s3, 4
	slli.d	$s8, $s5, 4
	ldx.d	$s1, $s3, $s8
	ld.d	$s2, $a0, 8
	bge	$s7, $s5, .LBB12_27
# %bb.15:                               #   in Loop: Header=BB12_14 Depth=1
	ld.w	$a0, $s0, 36
	slli.w	$s7, $a0, 1
	bge	$a0, $s7, .LBB12_26
# %bb.16:                               #   in Loop: Header=BB12_14 Depth=1
	ld.w	$a1, $s0, 40
	bge	$a1, $s7, .LBB12_26
# %bb.17:                               #   in Loop: Header=BB12_14 Depth=1
	beqz	$a0, .LBB12_22
# %bb.18:                               # %_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEE8allocateEi.exit.i.i
                                        #   in Loop: Header=BB12_14 Depth=1
	slli.d	$a0, $s7, 4
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 36
	move	$s3, $a0
	blez	$a1, .LBB12_21
# %bb.19:                               # %.lr.ph.i.i.i64
                                        #   in Loop: Header=BB12_14 Depth=1
	move	$a0, $zero
	slli.d	$a1, $a1, 4
	.p2align	4, , 16
.LBB12_20:                              #   Parent Loop BB12_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $s0, 48
	vldx	$vr0, $a2, $a0
	vstx	$vr0, $s3, $a0
	addi.d	$a0, $a0, 16
	bne	$a1, $a0, .LBB12_20
.LBB12_21:                              # %_ZNK20btAlignedObjectArrayIN6btDbvt6sStkNNEE4copyEiiPS1_.exit.i.i60
                                        #   in Loop: Header=BB12_14 Depth=1
	ld.d	$a0, $s0, 48
	bnez	$a0, .LBB12_23
	b	.LBB12_25
.LBB12_22:                              #   in Loop: Header=BB12_14 Depth=1
	move	$s3, $zero
	ld.d	$a0, $s0, 48
	beqz	$a0, .LBB12_25
.LBB12_23:                              # %_ZNK20btAlignedObjectArrayIN6btDbvt6sStkNNEE4copyEiiPS1_.exit.i.i60
                                        #   in Loop: Header=BB12_14 Depth=1
	ld.b	$a1, $s0, 56
	andi	$a1, $a1, 1
	beqz	$a1, .LBB12_25
# %bb.24:                               #   in Loop: Header=BB12_14 Depth=1
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.LBB12_25:                              # %_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEE10deallocateEv.exit.i.i63
                                        #   in Loop: Header=BB12_14 Depth=1
	st.b	$s4, $s0, 56
	st.d	$s3, $s0, 48
	st.w	$s7, $s0, 40
.LBB12_26:                              # %_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEE6resizeEiRKS1_.exit69
                                        #   in Loop: Header=BB12_14 Depth=1
	st.w	$s7, $s0, 36
	addi.w	$s7, $s7, -4
.LBB12_27:                              #   in Loop: Header=BB12_14 Depth=1
	beq	$s1, $s2, .LBB12_37
# %bb.28:                               #   in Loop: Header=BB12_14 Depth=1
	fld.s	$fa0, $s1, 0
	fld.s	$fa1, $s2, 16
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB12_13
# %bb.29:                               #   in Loop: Header=BB12_14 Depth=1
	fld.s	$fa0, $s1, 16
	fld.s	$fa1, $s2, 0
	fcmp.cult.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB12_13
# %bb.30:                               #   in Loop: Header=BB12_14 Depth=1
	fld.s	$fa0, $s1, 4
	fld.s	$fa1, $s2, 20
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB12_13
# %bb.31:                               #   in Loop: Header=BB12_14 Depth=1
	fld.s	$fa0, $s1, 20
	fld.s	$fa1, $s2, 4
	fcmp.cult.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB12_13
# %bb.32:                               #   in Loop: Header=BB12_14 Depth=1
	fld.s	$fa0, $s1, 8
	fld.s	$fa1, $s2, 24
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB12_13
# %bb.33:                               # %_Z9IntersectRK12btDbvtAabbMmS1_.exit
                                        #   in Loop: Header=BB12_14 Depth=1
	fld.s	$fa0, $s1, 24
	fld.s	$fa1, $s2, 8
	fcmp.cult.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB12_13
# %bb.34:                               #   in Loop: Header=BB12_14 Depth=1
	ld.d	$a0, $s1, 48
	ld.d	$a1, $s2, 48
	beqz	$a0, .LBB12_39
# %bb.35:                               #   in Loop: Header=BB12_14 Depth=1
	ld.d	$a2, $s1, 40
	alsl.d	$a0, $s5, $s3, 4
	bnez	$a1, .LBB12_12
# %bb.36:                               #   in Loop: Header=BB12_14 Depth=1
	stx.d	$a2, $s3, $s8
	st.d	$s2, $a0, 8
	ld.d	$a0, $s1, 48
	addi.w	$s5, $s6, 1
	alsl.d	$a1, $s6, $s3, 4
	slli.d	$a2, $s6, 4
	stx.d	$a0, $s3, $a2
	st.d	$s2, $a1, 8
	b	.LBB12_13
	.p2align	4, , 16
.LBB12_37:                              #   in Loop: Header=BB12_14 Depth=1
	ld.d	$a0, $s1, 48
	beqz	$a0, .LBB12_13
# %bb.38:                               #   in Loop: Header=BB12_14 Depth=1
	ld.d	$a0, $s1, 40
	alsl.d	$a1, $s5, $s3, 4
	stx.d	$a0, $s3, $s8
	st.d	$a0, $a1, 8
	ld.d	$a0, $s1, 48
	alsl.d	$a1, $s6, $s3, 4
	slli.d	$a2, $s6, 4
	stx.d	$a0, $s3, $a2
	st.d	$a0, $a1, 8
	vld	$vr0, $s1, 40
	addi.w	$s5, $s6, 2
	vst	$vr0, $a1, 16
	b	.LBB12_13
.LBB12_39:                              #   in Loop: Header=BB12_14 Depth=1
	beqz	$a1, .LBB12_41
# %bb.40:                               #   in Loop: Header=BB12_14 Depth=1
	ld.d	$a0, $s2, 40
	alsl.d	$a1, $s5, $s3, 4
	stx.d	$s1, $s3, $s8
	st.d	$a0, $a1, 8
	ld.d	$a0, $s2, 48
	addi.w	$s5, $s6, 1
	alsl.d	$a1, $s6, $s3, 4
	slli.d	$a2, $s6, 4
	stx.d	$s1, $s3, $a2
	st.d	$a0, $a1, 8
	b	.LBB12_13
.LBB12_41:                              #   in Loop: Header=BB12_14 Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a3, $a0, 16
	move	$a0, $fp
	move	$a1, $s1
	move	$a2, $s2
	jirl	$ra, $a3, 0
	b	.LBB12_13
.LBB12_42:
	ld.d	$s8, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s7, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
.LBB12_43:                              # %.loopexit
	ret
.Lfunc_end12:
	.size	_ZN6btDbvt24collideTTpersistentStackEPK10btDbvtNodeS2_RNS_8ICollideE, .Lfunc_end12-_ZN6btDbvt24collideTTpersistentStackEPK10btDbvtNodeS2_RNS_8ICollideE
	.cfi_endproc
                                        # -- End function
	.text
	.globl	_ZN16btDbvtBroadphase25calculateOverlappingPairsEP12btDispatcher # -- Begin function _ZN16btDbvtBroadphase25calculateOverlappingPairsEP12btDispatcher
	.p2align	5
	.type	_ZN16btDbvtBroadphase25calculateOverlappingPairsEP12btDispatcher,@function
_ZN16btDbvtBroadphase25calculateOverlappingPairsEP12btDispatcher: # @_ZN16btDbvtBroadphase25calculateOverlappingPairsEP12btDispatcher
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
	pcaddu18i	$ra, %call36(_ZN16btDbvtBroadphase7collideEP12btDispatcher)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	move	$a1, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZN16btDbvtBroadphase22performDeferredRemovalEP12btDispatcher)
	jr	$t8
.Lfunc_end13:
	.size	_ZN16btDbvtBroadphase25calculateOverlappingPairsEP12btDispatcher, .Lfunc_end13-_ZN16btDbvtBroadphase25calculateOverlappingPairsEP12btDispatcher
	.cfi_endproc
                                        # -- End function
	.globl	_ZN16btDbvtBroadphase7collideEP12btDispatcher # -- Begin function _ZN16btDbvtBroadphase7collideEP12btDispatcher
	.p2align	5
	.type	_ZN16btDbvtBroadphase7collideEP12btDispatcher,@function
_ZN16btDbvtBroadphase7collideEP12btDispatcher: # @_ZN16btDbvtBroadphase7collideEP12btDispatcher
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
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	st.d	$s6, $sp, 56                    # 8-byte Folded Spill
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
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
	ld.w	$a0, $a0, 28
	ld.w	$a2, $fp, 180
	move	$s0, $a1
	addi.d	$s1, $fp, 8
	mul.w	$a0, $a2, $a0
	lu12i.w	$a1, 335544
	ori	$s4, $a1, 1311
	mul.d	$a0, $a0, $s4
	srli.d	$a1, $a0, 63
	srai.d	$a0, $a0, 37
	add.d	$a0, $a0, $a1
	addi.d	$a1, $a0, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN6btDbvt19optimizeIncrementalEi)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 192
	addi.d	$s2, $fp, 72
	beqz	$a0, .LBB14_2
# %bb.1:
	ld.w	$a0, $fp, 92
	ld.w	$a1, $fp, 176
	mul.w	$a0, $a1, $a0
	mul.d	$a0, $a0, $s4
	srli.d	$a1, $a0, 63
	srai.d	$a0, $a0, 37
	add.d	$a0, $a0, $a1
	addi.d	$s3, $a0, 1
	move	$a0, $s2
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZN6btDbvt19optimizeIncrementalEi)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 192
	sub.d	$a0, $a0, $s3
	slli.d	$a1, $a0, 32
	srai.d	$a1, $a1, 63
	andn	$a0, $a0, $a1
	st.w	$a0, $fp, 192
.LBB14_2:
	ld.w	$a0, $fp, 172
	addi.d	$a0, $a0, 1
	bstrpick.d	$a1, $a0, 31, 31
	add.d	$a1, $a0, $a1
	bstrpick.d	$a1, $a1, 31, 1
	slli.d	$a1, $a1, 1
	sub.w	$a0, $a0, $a1
	addi.d	$s5, $fp, 136
	slli.d	$a1, $a0, 3
	ldx.d	$s3, $s5, $a1
	st.w	$a0, $fp, 172
	beqz	$s3, .LBB14_12
# %bb.3:                                # %.preheader
	addi.d	$s6, $sp, 24
	ori	$s7, $zero, 2
	b	.LBB14_5
	.p2align	4, , 16
.LBB14_4:                               # %_ZL10listappendI11btDbvtProxyEvPT_RS2_.exit
                                        #   in Loop: Header=BB14_5 Depth=1
	st.d	$s3, $fp, 152
	ld.d	$a1, $s3, 64
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN6btDbvt6removeEP10btDbvtNode)
	jirl	$ra, $ra, 0
	vld	$vr0, $s3, 28
	vld	$vr1, $s3, 44
	vst	$vr0, $sp, 8
	vst	$vr1, $s6, 0
	addi.d	$a1, $sp, 8
	move	$a0, $s2
	move	$a2, $s3
	pcaddu18i	$ra, %call36(_ZN6btDbvt6insertERK12btDbvtAabbMmPv)
	jirl	$ra, $ra, 0
	st.d	$a0, $s3, 64
	st.w	$s7, $s3, 88
	move	$s3, $s8
	beqz	$s8, .LBB14_11
.LBB14_5:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s3, 72
	ld.d	$s8, $s3, 80
	beqz	$a0, .LBB14_10
# %bb.6:                                #   in Loop: Header=BB14_5 Depth=1
	st.d	$s8, $a0, 80
	beqz	$s8, .LBB14_8
.LBB14_7:                               #   in Loop: Header=BB14_5 Depth=1
	ld.d	$a0, $s3, 72
	st.d	$a0, $s8, 72
.LBB14_8:                               # %_ZL10listremoveI11btDbvtProxyEvPT_RS2_.exit
                                        #   in Loop: Header=BB14_5 Depth=1
	st.d	$zero, $s3, 72
	ld.d	$a0, $fp, 152
	st.d	$a0, $s3, 80
	beqz	$a0, .LBB14_4
# %bb.9:                                #   in Loop: Header=BB14_5 Depth=1
	st.d	$s3, $a0, 72
	b	.LBB14_4
	.p2align	4, , 16
.LBB14_10:                              #   in Loop: Header=BB14_5 Depth=1
	ld.w	$a0, $s3, 88
	slli.d	$a0, $a0, 3
	stx.d	$s8, $s5, $a0
	bnez	$s8, .LBB14_7
	b	.LBB14_8
.LBB14_11:
	ld.w	$a0, $fp, 92
	st.w	$a0, $fp, 192
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 222
.LBB14_12:
	pcalau12i	$a0, %pc_hi20(_ZTV18btDbvtTreeCollider+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV18btDbvtTreeCollider+16)
	ld.bu	$a1, $fp, 221
	st.d	$a0, $sp, 8
	st.d	$fp, $sp, 16
	beqz	$a1, .LBB14_15
# %bb.13:
	ld.d	$a1, $fp, 8
	ld.d	$a2, $fp, 72
	addi.d	$a3, $sp, 8
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN6btDbvt24collideTTpersistentStackEPK10btDbvtNodeS2_RNS_8ICollideE)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $fp, 221
	beqz	$a0, .LBB14_15
# %bb.14:
	ld.d	$a1, $s1, 0
	addi.d	$a3, $sp, 8
	move	$a0, $s1
	move	$a2, $a1
	pcaddu18i	$ra, %call36(_ZN6btDbvt24collideTTpersistentStackEPK10btDbvtNodeS2_RNS_8ICollideE)
	jirl	$ra, $ra, 0
.LBB14_15:                              # %.thread
	ld.bu	$a0, $fp, 222
	beqz	$a0, .LBB14_30
# %bb.16:
	ld.d	$a0, $fp, 160
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 56
	jirl	$ra, $a1, 0
	move	$s1, $a0
	ld.w	$a0, $a0, 4
	blez	$a0, .LBB14_30
# %bb.17:
	ld.w	$a1, $fp, 184
	mul.w	$a1, $a1, $a0
	mul.d	$a1, $a1, $s4
	ld.w	$a2, $fp, 188
	srli.d	$a3, $a1, 63
	srai.d	$a1, $a1, 37
	add.d	$a1, $a1, $a3
	slt	$a3, $a1, $a2
	masknez	$a1, $a1, $a3
	maskeqz	$a2, $a2, $a3
	or	$a1, $a2, $a1
	slt	$a2, $a0, $a1
	masknez	$a3, $a1, $a2
	maskeqz	$a2, $a0, $a2
	or	$s2, $a2, $a3
	blez	$a1, .LBB14_28
# %bb.18:                               # %.lr.ph
	move	$s3, $zero
	.p2align	4, , 16
.LBB14_19:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, 212
	ld.w	$a1, $s1, 4
	ld.d	$a2, $s1, 16
	add.w	$a0, $a0, $s3
	mod.w	$a0, $a0, $a1
	slli.d	$a0, $a0, 5
	add.d	$a3, $a2, $a0
	ldx.d	$a1, $a2, $a0
	ld.d	$a2, $a3, 8
	ld.d	$a0, $a1, 64
	ld.d	$a3, $a2, 64
	fld.s	$fa0, $a0, 0
	fld.s	$fa1, $a3, 16
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB14_25
# %bb.20:                               #   in Loop: Header=BB14_19 Depth=1
	fld.s	$fa0, $a0, 16
	fld.s	$fa1, $a3, 0
	fcmp.cult.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB14_25
# %bb.21:                               #   in Loop: Header=BB14_19 Depth=1
	fld.s	$fa0, $a0, 4
	fld.s	$fa1, $a3, 20
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB14_25
# %bb.22:                               #   in Loop: Header=BB14_19 Depth=1
	fld.s	$fa0, $a0, 20
	fld.s	$fa1, $a3, 4
	fcmp.cult.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB14_25
# %bb.23:                               #   in Loop: Header=BB14_19 Depth=1
	fld.s	$fa0, $a0, 8
	fld.s	$fa1, $a3, 24
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB14_25
# %bb.24:                               # %_Z9IntersectRK12btDbvtAabbMmS1_.exit
                                        #   in Loop: Header=BB14_19 Depth=1
	fld.s	$fa0, $a0, 24
	fld.s	$fa1, $a3, 8
	fcmp.cle.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB14_26
	.p2align	4, , 16
.LBB14_25:                              # %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread
                                        #   in Loop: Header=BB14_19 Depth=1
	ld.d	$a0, $fp, 160
	ld.d	$a3, $a0, 0
	ld.d	$a4, $a3, 24
	move	$a3, $s0
	jirl	$ra, $a4, 0
	addi.d	$s2, $s2, -1
	addi.d	$s3, $s3, -1
.LBB14_26:                              #   in Loop: Header=BB14_19 Depth=1
	addi.w	$s3, $s3, 1
	addi.w	$a0, $s2, 0
	blt	$s3, $a0, .LBB14_19
# %bb.27:                               # %._crit_edge
	ld.w	$a0, $s1, 4
	blez	$a0, .LBB14_29
.LBB14_28:                              # %._crit_edge.thread
	ld.w	$a1, $fp, 212
	add.w	$a1, $a1, $s2
	mod.w	$a0, $a1, $a0
	st.w	$a0, $fp, 212
	b	.LBB14_30
.LBB14_29:
	st.w	$zero, $fp, 212
.LBB14_30:
	ld.w	$a0, $fp, 208
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 208
	ld.w	$a0, $fp, 196
	ld.w	$a1, $fp, 200
	ori	$a2, $zero, 1
	st.w	$a2, $fp, 188
	st.b	$zero, $fp, 222
	beqz	$a0, .LBB14_32
# %bb.31:
	bstrpick.d	$a2, $a1, 31, 0
	movgr2fr.d	$fa0, $a2
	ffint.s.l	$fa0, $fa0
	bstrpick.d	$a2, $a0, 31, 0
	movgr2fr.d	$fa1, $a2
	ffint.s.l	$fa1, $fa1
	fdiv.s	$fa0, $fa0, $fa1
	b	.LBB14_33
.LBB14_32:
	movgr2fr.w	$fa0, $zero
.LBB14_33:
	fst.s	$fa0, $fp, 204
	bstrpick.d	$a1, $a1, 31, 1
	st.w	$a1, $fp, 200
	bstrpick.d	$a0, $a0, 31, 1
	st.w	$a0, $fp, 196
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
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
	ret
.Lfunc_end14:
	.size	_ZN16btDbvtBroadphase7collideEP12btDispatcher, .Lfunc_end14-_ZN16btDbvtBroadphase7collideEP12btDispatcher
	.cfi_endproc
                                        # -- End function
	.globl	_ZN16btDbvtBroadphase22performDeferredRemovalEP12btDispatcher # -- Begin function _ZN16btDbvtBroadphase22performDeferredRemovalEP12btDispatcher
	.p2align	5
	.type	_ZN16btDbvtBroadphase22performDeferredRemovalEP12btDispatcher,@function
_ZN16btDbvtBroadphase22performDeferredRemovalEP12btDispatcher: # @_ZN16btDbvtBroadphase22performDeferredRemovalEP12btDispatcher
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
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	st.d	$s6, $sp, 56                    # 8-byte Folded Spill
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
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
	move	$s0, $a0
	ld.d	$a0, $a0, 160
	ld.d	$a2, $a0, 0
	ld.d	$a2, $a2, 112
	move	$s1, $a1
	jirl	$ra, $a2, 0
	beqz	$a0, .LBB15_33
# %bb.1:
	ld.d	$a0, $s0, 160
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 56
	jirl	$ra, $a1, 0
	move	$fp, $a0
	ld.w	$s4, $a0, 4
	ori	$a0, $zero, 2
	blt	$s4, $a0, .LBB15_3
# %bb.2:
	addi.w	$a3, $s4, -1
	move	$a0, $fp
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZN20btAlignedObjectArrayI16btBroadphasePairE17quickSortInternalI29btBroadphasePairSortPredicateEEvT_ii)
	jirl	$ra, $ra, 0
	ld.w	$s4, $fp, 4
.LBB15_3:                               # %_ZN20btAlignedObjectArrayI16btBroadphasePairE9quickSortI29btBroadphasePairSortPredicateEEvT_.exit
	blez	$s4, .LBB15_32
# %bb.4:                                # %.lr.ph
	move	$s5, $zero
	move	$s6, $zero
	move	$s3, $zero
	move	$s7, $zero
	move	$a0, $zero
	vrepli.b	$vr2, 0
	vst	$vr2, $sp, 16                   # 16-byte Folded Spill
	.p2align	4, , 16
.LBB15_5:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $fp, 16
	move	$a2, $s7
	add.d	$s2, $a1, $s5
	ldx.d	$s7, $a1, $s5
	ld.d	$s8, $s2, 8
	bne	$s7, $a2, .LBB15_7
# %bb.6:                                #   in Loop: Header=BB15_5 Depth=1
	beq	$s8, $a0, .LBB15_13
.LBB15_7:                               #   in Loop: Header=BB15_5 Depth=1
	ld.d	$a0, $s7, 64
	ld.d	$a1, $s8, 64
	fld.s	$fa0, $a0, 0
	fld.s	$fa1, $a1, 16
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB15_13
# %bb.8:                                #   in Loop: Header=BB15_5 Depth=1
	fld.s	$fa0, $a0, 16
	fld.s	$fa1, $a1, 0
	fcmp.cult.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB15_13
# %bb.9:                                #   in Loop: Header=BB15_5 Depth=1
	fld.s	$fa0, $a0, 4
	fld.s	$fa1, $a1, 20
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB15_13
# %bb.10:                               #   in Loop: Header=BB15_5 Depth=1
	fld.s	$fa0, $a0, 20
	fld.s	$fa1, $a1, 4
	fcmp.cult.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB15_13
# %bb.11:                               #   in Loop: Header=BB15_5 Depth=1
	fld.s	$fa0, $a0, 8
	fld.s	$fa1, $a1, 24
	fcmp.cult.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB15_13
# %bb.12:                               # %_Z9IntersectRK12btDbvtAabbMmS1_.exit
                                        #   in Loop: Header=BB15_5 Depth=1
	fld.s	$fa0, $a0, 24
	fld.s	$fa1, $a1, 8
	fcmp.cle.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB15_14
	.p2align	4, , 16
.LBB15_13:                              # %.critedge
                                        #   in Loop: Header=BB15_5 Depth=1
	ld.d	$a0, $s0, 160
	ld.d	$a1, $a0, 0
	ld.d	$a3, $a1, 64
	move	$a1, $s2
	move	$a2, $s1
	jirl	$ra, $a3, 0
	vld	$vr2, $sp, 16                   # 16-byte Folded Reload
	vst	$vr2, $s2, 0
	ld.w	$s4, $fp, 4
	addi.w	$s3, $s3, 1
.LBB15_14:                              #   in Loop: Header=BB15_5 Depth=1
	addi.d	$s6, $s6, 1
	addi.d	$s5, $s5, 32
	move	$a0, $s8
	blt	$s6, $s4, .LBB15_5
# %bb.15:                               # %._crit_edge
	ori	$a0, $zero, 2
	blt	$s4, $a0, .LBB15_17
# %bb.16:
	addi.w	$a3, $s4, -1
	move	$a0, $fp
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZN20btAlignedObjectArrayI16btBroadphasePairE17quickSortInternalI29btBroadphasePairSortPredicateEEvT_ii)
	jirl	$ra, $ra, 0
	vld	$vr2, $sp, 16                   # 16-byte Folded Reload
	ld.w	$s4, $fp, 4
.LBB15_17:                              # %_ZN20btAlignedObjectArrayI16btBroadphasePairE9quickSortI29btBroadphasePairSortPredicateEEvT_.exit28
	sub.w	$s1, $s4, $s3
	bgez	$s3, .LBB15_31
# %bb.18:
	ld.w	$a0, $fp, 8
	bge	$a0, $s1, .LBB15_29
# %bb.19:
	bne	$s4, $s3, .LBB15_21
# %bb.20:
	move	$s0, $zero
	b	.LBB15_25
.LBB15_21:                              # %_ZN20btAlignedObjectArrayI16btBroadphasePairE8allocateEi.exit.i.i
	slli.d	$a0, $s1, 5
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 4
	move	$s0, $a0
	blez	$a1, .LBB15_24
# %bb.22:                               # %.lr.ph.i.i.i
	move	$a0, $zero
	slli.d	$a1, $a1, 5
	.p2align	4, , 16
.LBB15_23:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $fp, 16
	add.d	$a3, $a2, $a0
	vldx	$vr0, $a2, $a0
	ld.d	$a2, $a3, 16
	add.d	$a4, $s0, $a0
	vstx	$vr0, $s0, $a0
	st.d	$a2, $a4, 16
	ld.d	$a2, $a3, 24
	addi.d	$a0, $a0, 32
	st.d	$a2, $a4, 24
	bne	$a1, $a0, .LBB15_23
.LBB15_24:
	vld	$vr2, $sp, 16                   # 16-byte Folded Reload
.LBB15_25:                              # %_ZNK20btAlignedObjectArrayI16btBroadphasePairE4copyEiiPS0_.exit.i.i
	ld.d	$a0, $fp, 16
	beqz	$a0, .LBB15_28
# %bb.26:                               # %_ZNK20btAlignedObjectArrayI16btBroadphasePairE4copyEiiPS0_.exit.i.i
	ld.b	$a1, $fp, 24
	andi	$a1, $a1, 1
	beqz	$a1, .LBB15_28
# %bb.27:
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
	vld	$vr2, $sp, 16                   # 16-byte Folded Reload
.LBB15_28:                              # %_ZN20btAlignedObjectArrayI16btBroadphasePairE10deallocateEv.exit.i.i
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 24
	st.d	$s0, $fp, 16
	st.w	$s1, $fp, 8
.LBB15_29:                              # %.lr.ph.i
	slli.d	$a0, $s4, 5
	.p2align	4, , 16
.LBB15_30:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $fp, 16
	add.d	$a2, $a1, $a0
	vstx	$vr2, $a1, $a0
	vst	$vr2, $a2, 16
	addi.d	$s3, $s3, 1
	addi.d	$a0, $a0, 32
	bnez	$s3, .LBB15_30
.LBB15_31:
	move	$s4, $s1
.LBB15_32:                              # %_ZN20btAlignedObjectArrayI16btBroadphasePairE6resizeEiRKS0_.exit
	st.w	$s4, $fp, 4
.LBB15_33:
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
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
	ret
.Lfunc_end15:
	.size	_ZN16btDbvtBroadphase22performDeferredRemovalEP12btDispatcher, .Lfunc_end15-_ZN16btDbvtBroadphase22performDeferredRemovalEP12btDispatcher
	.cfi_endproc
                                        # -- End function
	.globl	_ZN16btDbvtBroadphase8optimizeEv # -- Begin function _ZN16btDbvtBroadphase8optimizeEv
	.p2align	5
	.type	_ZN16btDbvtBroadphase8optimizeEv,@function
_ZN16btDbvtBroadphase8optimizeEv:       # @_ZN16btDbvtBroadphase8optimizeEv
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	addi.d	$a0, $a0, 8
	ori	$a1, $zero, 128
	pcaddu18i	$ra, %call36(_ZN6btDbvt15optimizeTopDownEi)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 72
	ori	$a1, $zero, 128
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZN6btDbvt15optimizeTopDownEi)
	jr	$t8
.Lfunc_end16:
	.size	_ZN16btDbvtBroadphase8optimizeEv, .Lfunc_end16-_ZN16btDbvtBroadphase8optimizeEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZN16btDbvtBroadphase23getOverlappingPairCacheEv # -- Begin function _ZN16btDbvtBroadphase23getOverlappingPairCacheEv
	.p2align	5
	.type	_ZN16btDbvtBroadphase23getOverlappingPairCacheEv,@function
_ZN16btDbvtBroadphase23getOverlappingPairCacheEv: # @_ZN16btDbvtBroadphase23getOverlappingPairCacheEv
# %bb.0:
	ld.d	$a0, $a0, 160
	ret
.Lfunc_end17:
	.size	_ZN16btDbvtBroadphase23getOverlappingPairCacheEv, .Lfunc_end17-_ZN16btDbvtBroadphase23getOverlappingPairCacheEv
                                        # -- End function
	.globl	_ZNK16btDbvtBroadphase23getOverlappingPairCacheEv # -- Begin function _ZNK16btDbvtBroadphase23getOverlappingPairCacheEv
	.p2align	5
	.type	_ZNK16btDbvtBroadphase23getOverlappingPairCacheEv,@function
_ZNK16btDbvtBroadphase23getOverlappingPairCacheEv: # @_ZNK16btDbvtBroadphase23getOverlappingPairCacheEv
# %bb.0:
	ld.d	$a0, $a0, 160
	ret
.Lfunc_end18:
	.size	_ZNK16btDbvtBroadphase23getOverlappingPairCacheEv, .Lfunc_end18-_ZNK16btDbvtBroadphase23getOverlappingPairCacheEv
                                        # -- End function
	.globl	_ZNK16btDbvtBroadphase17getBroadphaseAabbER9btVector3S1_ # -- Begin function _ZNK16btDbvtBroadphase17getBroadphaseAabbER9btVector3S1_
	.p2align	5
	.type	_ZNK16btDbvtBroadphase17getBroadphaseAabbER9btVector3S1_,@function
_ZNK16btDbvtBroadphase17getBroadphaseAabbER9btVector3S1_: # @_ZNK16btDbvtBroadphase17getBroadphaseAabbER9btVector3S1_
# %bb.0:
	ld.d	$a4, $a0, 8
	ld.d	$a3, $a0, 72
	beqz	$a4, .LBB19_3
# %bb.1:
	beqz	$a3, .LBB19_5
# %bb.2:
	fld.s	$fa0, $a4, 0
	fld.s	$fa1, $a3, 0
	fld.s	$fa2, $a4, 16
	fld.s	$fa3, $a3, 16
	fcmp.clt.s	$fcc0, $fa0, $fa1
	fsel	$fa0, $fa1, $fa0, $fcc0
	fcmp.clt.s	$fcc0, $fa3, $fa2
	fld.s	$fa1, $a4, 4
	fld.s	$fa4, $a3, 4
	fld.s	$fa5, $a4, 20
	fld.s	$fa6, $a3, 20
	fsel	$fa2, $fa3, $fa2, $fcc0
	fcmp.clt.s	$fcc0, $fa1, $fa4
	fsel	$fa1, $fa4, $fa1, $fcc0
	fcmp.clt.s	$fcc0, $fa6, $fa5
	fld.s	$fa3, $a4, 8
	fld.s	$fa7, $a3, 8
	fld.s	$ft0, $a4, 24
	fld.s	$ft1, $a3, 24
	fsel	$fa4, $fa6, $fa5, $fcc0
	fcmp.clt.s	$fcc0, $fa3, $fa7
	fsel	$fa3, $fa7, $fa3, $fcc0
	fcmp.clt.s	$fcc0, $ft1, $ft0
	fsel	$fa5, $ft1, $ft0, $fcc0
                                        # implicit-def: $r4
                                        # implicit-def: $r7
	b	.LBB19_7
.LBB19_3:
	beqz	$a3, .LBB19_6
# %bb.4:
	fld.s	$fa0, $a3, 0
	fld.s	$fa1, $a3, 4
	fld.s	$fa3, $a3, 8
	ld.w	$a0, $a3, 12
	fld.s	$fa2, $a3, 16
	fld.s	$fa4, $a3, 20
	fld.s	$fa5, $a3, 24
	ld.w	$a3, $a3, 28
	b	.LBB19_7
.LBB19_5:
	fld.s	$fa0, $a4, 0
	fld.s	$fa1, $a4, 4
	fld.s	$fa3, $a4, 8
	ld.w	$a0, $a4, 12
	fld.s	$fa2, $a4, 16
	fld.s	$fa4, $a4, 20
	fld.s	$fa5, $a4, 24
	ld.w	$a3, $a4, 28
	b	.LBB19_7
.LBB19_6:
	movgr2fr.w	$fa0, $zero
	move	$a0, $zero
	move	$a3, $zero
	fmov.s	$fa1, $fa0
	fmov.s	$fa3, $fa0
	fmov.s	$fa2, $fa0
	fmov.s	$fa4, $fa0
	fmov.s	$fa5, $fa0
.LBB19_7:
	fst.s	$fa0, $a1, 0
	fst.s	$fa1, $a1, 4
	fst.s	$fa3, $a1, 8
	st.w	$a0, $a1, 12
	fst.s	$fa2, $a2, 0
	fst.s	$fa4, $a2, 4
	fst.s	$fa5, $a2, 8
	st.w	$a3, $a2, 12
	ret
.Lfunc_end19:
	.size	_ZNK16btDbvtBroadphase17getBroadphaseAabbER9btVector3S1_, .Lfunc_end19-_ZNK16btDbvtBroadphase17getBroadphaseAabbER9btVector3S1_
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN16btDbvtBroadphase9resetPoolEP12btDispatcher
.LCPI20_0:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	10                              # 0xa
	.text
	.globl	_ZN16btDbvtBroadphase9resetPoolEP12btDispatcher
	.p2align	5
	.type	_ZN16btDbvtBroadphase9resetPoolEP12btDispatcher,@function
_ZN16btDbvtBroadphase9resetPoolEP12btDispatcher: # @_ZN16btDbvtBroadphase9resetPoolEP12btDispatcher
	.cfi_startproc
# %bb.0:
	ld.w	$a1, $a0, 92
	ld.w	$a2, $a0, 28
	sub.w	$a1, $zero, $a1
	bne	$a2, $a1, .LBB20_2
# %bb.1:                                # %.loopexit.loopexit
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	addi.d	$fp, $a0, 72
	addi.d	$a1, $a0, 8
	move	$s0, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZN6btDbvt5clearEv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN6btDbvt5clearEv)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI20_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI20_0)
	ori	$a0, $zero, 256
	st.h	$a0, $s0, 221
	vst	$vr0, $s0, 172
	ori	$a0, $zero, 1
	st.d	$a0, $s0, 188
	st.d	$zero, $s0, 136
	vrepli.b	$vr0, 0
	vst	$vr0, $s0, 144
	st.d	$zero, $s0, 196
	vst	$vr0, $s0, 204
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
.LBB20_2:                               # %.loopexit
	ret
.Lfunc_end20:
	.size	_ZN16btDbvtBroadphase9resetPoolEP12btDispatcher, .Lfunc_end20-_ZN16btDbvtBroadphase9resetPoolEP12btDispatcher
	.cfi_endproc
                                        # -- End function
	.globl	_ZN16btDbvtBroadphase10printStatsEv # -- Begin function _ZN16btDbvtBroadphase10printStatsEv
	.p2align	5
	.type	_ZN16btDbvtBroadphase10printStatsEv,@function
_ZN16btDbvtBroadphase10printStatsEv:    # @_ZN16btDbvtBroadphase10printStatsEv
# %bb.0:
	ret
.Lfunc_end21:
	.size	_ZN16btDbvtBroadphase10printStatsEv, .Lfunc_end21-_ZN16btDbvtBroadphase10printStatsEv
                                        # -- End function
	.globl	_ZN16btDbvtBroadphase9benchmarkEP21btBroadphaseInterface # -- Begin function _ZN16btDbvtBroadphase9benchmarkEP21btBroadphaseInterface
	.p2align	5
	.type	_ZN16btDbvtBroadphase9benchmarkEP21btBroadphaseInterface,@function
_ZN16btDbvtBroadphase9benchmarkEP21btBroadphaseInterface: # @_ZN16btDbvtBroadphase9benchmarkEP21btBroadphaseInterface
# %bb.0:
	ret
.Lfunc_end22:
	.size	_ZN16btDbvtBroadphase9benchmarkEP21btBroadphaseInterface, .Lfunc_end22-_ZN16btDbvtBroadphase9benchmarkEP21btBroadphaseInterface
                                        # -- End function
	.section	.text._ZN18btDbvtTreeColliderD0Ev,"axG",@progbits,_ZN18btDbvtTreeColliderD0Ev,comdat
	.weak	_ZN18btDbvtTreeColliderD0Ev     # -- Begin function _ZN18btDbvtTreeColliderD0Ev
	.p2align	5
	.type	_ZN18btDbvtTreeColliderD0Ev,@function
_ZN18btDbvtTreeColliderD0Ev:            # @_ZN18btDbvtTreeColliderD0Ev
	.cfi_startproc
# %bb.0:
	pcaddu18i	$t8, %call36(_ZdlPv)
	jr	$t8
.Lfunc_end23:
	.size	_ZN18btDbvtTreeColliderD0Ev, .Lfunc_end23-_ZN18btDbvtTreeColliderD0Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN18btDbvtTreeCollider7ProcessEPK10btDbvtNodeS2_,"axG",@progbits,_ZN18btDbvtTreeCollider7ProcessEPK10btDbvtNodeS2_,comdat
	.weak	_ZN18btDbvtTreeCollider7ProcessEPK10btDbvtNodeS2_ # -- Begin function _ZN18btDbvtTreeCollider7ProcessEPK10btDbvtNodeS2_
	.p2align	5
	.type	_ZN18btDbvtTreeCollider7ProcessEPK10btDbvtNodeS2_,@function
_ZN18btDbvtTreeCollider7ProcessEPK10btDbvtNodeS2_: # @_ZN18btDbvtTreeCollider7ProcessEPK10btDbvtNodeS2_
	.cfi_startproc
# %bb.0:
	beq	$a1, $a2, .LBB24_2
# %bb.1:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	ld.d	$a3, $a0, 8
	ld.d	$a3, $a3, 160
	ld.d	$a4, $a3, 0
	ld.d	$a1, $a1, 40
	ld.d	$a2, $a2, 40
	ld.d	$a4, $a4, 16
	move	$fp, $a0
	move	$a0, $a3
	jirl	$ra, $a4, 0
	ld.d	$a0, $fp, 8
	ld.w	$a1, $a0, 188
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, 188
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
.LBB24_2:
	ret
.Lfunc_end24:
	.size	_ZN18btDbvtTreeCollider7ProcessEPK10btDbvtNodeS2_, .Lfunc_end24-_ZN18btDbvtTreeCollider7ProcessEPK10btDbvtNodeS2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN18btDbvtTreeCollider7ProcessEPK10btDbvtNode,"axG",@progbits,_ZN18btDbvtTreeCollider7ProcessEPK10btDbvtNode,comdat
	.weak	_ZN18btDbvtTreeCollider7ProcessEPK10btDbvtNode # -- Begin function _ZN18btDbvtTreeCollider7ProcessEPK10btDbvtNode
	.p2align	5
	.type	_ZN18btDbvtTreeCollider7ProcessEPK10btDbvtNode,@function
_ZN18btDbvtTreeCollider7ProcessEPK10btDbvtNode: # @_ZN18btDbvtTreeCollider7ProcessEPK10btDbvtNode
	.cfi_startproc
# %bb.0:
	ld.d	$a2, $a0, 16
	ld.d	$a3, $a0, 0
	ld.d	$a2, $a2, 64
	ld.d	$a3, $a3, 16
	jr	$a3
.Lfunc_end25:
	.size	_ZN18btDbvtTreeCollider7ProcessEPK10btDbvtNode, .Lfunc_end25-_ZN18btDbvtTreeCollider7ProcessEPK10btDbvtNode
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
.Lfunc_end26:
	.size	_ZN6btDbvt8ICollide7ProcessEPK10btDbvtNodef, .Lfunc_end26-_ZN6btDbvt8ICollide7ProcessEPK10btDbvtNodef
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
.Lfunc_end27:
	.size	_ZN6btDbvt8ICollide7DescentEPK10btDbvtNode, .Lfunc_end27-_ZN6btDbvt8ICollide7DescentEPK10btDbvtNode
                                        # -- End function
	.section	.text._ZN6btDbvt8ICollide9AllLeavesEPK10btDbvtNode,"axG",@progbits,_ZN6btDbvt8ICollide9AllLeavesEPK10btDbvtNode,comdat
	.weak	_ZN6btDbvt8ICollide9AllLeavesEPK10btDbvtNode # -- Begin function _ZN6btDbvt8ICollide9AllLeavesEPK10btDbvtNode
	.p2align	5
	.type	_ZN6btDbvt8ICollide9AllLeavesEPK10btDbvtNode,@function
_ZN6btDbvt8ICollide9AllLeavesEPK10btDbvtNode: # @_ZN6btDbvt8ICollide9AllLeavesEPK10btDbvtNode
# %bb.0:
	ori	$a0, $zero, 1
	ret
.Lfunc_end28:
	.size	_ZN6btDbvt8ICollide9AllLeavesEPK10btDbvtNode, .Lfunc_end28-_ZN6btDbvt8ICollide9AllLeavesEPK10btDbvtNode
                                        # -- End function
	.section	.text._ZN6btDbvt8ICollide7ProcessEPK10btDbvtNodeS3_,"axG",@progbits,_ZN6btDbvt8ICollide7ProcessEPK10btDbvtNodeS3_,comdat
	.weak	_ZN6btDbvt8ICollide7ProcessEPK10btDbvtNodeS3_ # -- Begin function _ZN6btDbvt8ICollide7ProcessEPK10btDbvtNodeS3_
	.p2align	5
	.type	_ZN6btDbvt8ICollide7ProcessEPK10btDbvtNodeS3_,@function
_ZN6btDbvt8ICollide7ProcessEPK10btDbvtNodeS3_: # @_ZN6btDbvt8ICollide7ProcessEPK10btDbvtNodeS3_
# %bb.0:
	ret
.Lfunc_end29:
	.size	_ZN6btDbvt8ICollide7ProcessEPK10btDbvtNodeS3_, .Lfunc_end29-_ZN6btDbvt8ICollide7ProcessEPK10btDbvtNodeS3_
                                        # -- End function
	.section	.text._ZN19BroadphaseRayTesterD0Ev,"axG",@progbits,_ZN19BroadphaseRayTesterD0Ev,comdat
	.weak	_ZN19BroadphaseRayTesterD0Ev    # -- Begin function _ZN19BroadphaseRayTesterD0Ev
	.p2align	5
	.type	_ZN19BroadphaseRayTesterD0Ev,@function
_ZN19BroadphaseRayTesterD0Ev:           # @_ZN19BroadphaseRayTesterD0Ev
	.cfi_startproc
# %bb.0:
	pcaddu18i	$t8, %call36(_ZdlPv)
	jr	$t8
.Lfunc_end30:
	.size	_ZN19BroadphaseRayTesterD0Ev, .Lfunc_end30-_ZN19BroadphaseRayTesterD0Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN19BroadphaseRayTester7ProcessEPK10btDbvtNode,"axG",@progbits,_ZN19BroadphaseRayTester7ProcessEPK10btDbvtNode,comdat
	.weak	_ZN19BroadphaseRayTester7ProcessEPK10btDbvtNode # -- Begin function _ZN19BroadphaseRayTester7ProcessEPK10btDbvtNode
	.p2align	5
	.type	_ZN19BroadphaseRayTester7ProcessEPK10btDbvtNode,@function
_ZN19BroadphaseRayTester7ProcessEPK10btDbvtNode: # @_ZN19BroadphaseRayTester7ProcessEPK10btDbvtNode
	.cfi_startproc
# %bb.0:
	ld.d	$a0, $a0, 8
	ld.d	$a2, $a0, 0
	ld.d	$a1, $a1, 40
	ld.d	$a2, $a2, 16
	jr	$a2
.Lfunc_end31:
	.size	_ZN19BroadphaseRayTester7ProcessEPK10btDbvtNode, .Lfunc_end31-_ZN19BroadphaseRayTester7ProcessEPK10btDbvtNode
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN20btAlignedObjectArrayI16btBroadphasePairE17quickSortInternalI29btBroadphasePairSortPredicateEEvT_ii,"axG",@progbits,_ZN20btAlignedObjectArrayI16btBroadphasePairE17quickSortInternalI29btBroadphasePairSortPredicateEEvT_ii,comdat
	.weak	_ZN20btAlignedObjectArrayI16btBroadphasePairE17quickSortInternalI29btBroadphasePairSortPredicateEEvT_ii # -- Begin function _ZN20btAlignedObjectArrayI16btBroadphasePairE17quickSortInternalI29btBroadphasePairSortPredicateEEvT_ii
	.p2align	5
	.type	_ZN20btAlignedObjectArrayI16btBroadphasePairE17quickSortInternalI29btBroadphasePairSortPredicateEEvT_ii,@function
_ZN20btAlignedObjectArrayI16btBroadphasePairE17quickSortInternalI29btBroadphasePairSortPredicateEEvT_ii: # @_ZN20btAlignedObjectArrayI16btBroadphasePairE17quickSortInternalI29btBroadphasePairSortPredicateEEvT_ii
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
	move	$fp, $a3
	move	$s0, $a2
	move	$s1, $a0
	addi.w	$s2, $zero, -1
	b	.LBB32_2
	.p2align	4, , 16
.LBB32_1:                               #   in Loop: Header=BB32_2 Depth=1
	bge	$s0, $fp, .LBB32_42
.LBB32_2:                               # %tailrecurse
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB32_4 Depth 2
                                        #       Child Loop BB32_6 Depth 3
                                        #       Child Loop BB32_23 Depth 3
	move	$a2, $s0
	ld.d	$a0, $s1, 16
	add.d	$a1, $s0, $fp
	bstrpick.d	$a3, $a1, 31, 31
	add.w	$a1, $a1, $a3
	slli.d	$a1, $a1, 4
	bstrins.d	$a1, $zero, 4, 0
	add.d	$a3, $a0, $a1
	ldx.d	$a0, $a0, $a1
	ld.d	$a1, $a3, 8
	ld.d	$a4, $a3, 16
	move	$a3, $fp
	b	.LBB32_4
	.p2align	4, , 16
.LBB32_3:                               #   in Loop: Header=BB32_4 Depth=2
	blt	$a3, $s0, .LBB32_40
.LBB32_4:                               #   Parent Loop BB32_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB32_6 Depth 3
                                        #       Child Loop BB32_23 Depth 3
	ld.d	$a6, $s1, 16
	slli.d	$a5, $s0, 5
	add.d	$a5, $a6, $a5
	addi.d	$a5, $a5, 16
	move	$a7, $s0
	b	.LBB32_6
	.p2align	4, , 16
.LBB32_5:                               # %_ZN29btBroadphasePairSortPredicateclERK16btBroadphasePairS2_.exit.thread
                                        #   in Loop: Header=BB32_6 Depth=3
	addi.d	$a7, $a7, 1
	addi.w	$s0, $s0, 1
	addi.d	$a5, $a5, 32
.LBB32_6:                               #   Parent Loop BB32_2 Depth=1
                                        #     Parent Loop BB32_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$t0, $a5, -16
	move	$t2, $s2
	beqz	$t0, .LBB32_8
# %bb.7:                                #   in Loop: Header=BB32_6 Depth=3
	ld.w	$t2, $t0, 24
.LBB32_8:                               #   in Loop: Header=BB32_6 Depth=3
	move	$t4, $s2
	beqz	$a0, .LBB32_10
# %bb.9:                                #   in Loop: Header=BB32_6 Depth=3
	ld.w	$t4, $a0, 24
.LBB32_10:                              #   in Loop: Header=BB32_6 Depth=3
	ld.d	$t1, $a5, -8
	move	$t3, $s2
	beqz	$t1, .LBB32_12
# %bb.11:                               #   in Loop: Header=BB32_6 Depth=3
	ld.w	$t3, $t1, 24
.LBB32_12:                              #   in Loop: Header=BB32_6 Depth=3
	move	$t5, $s2
	beqz	$a1, .LBB32_14
# %bb.13:                               #   in Loop: Header=BB32_6 Depth=3
	ld.w	$t5, $a1, 24
.LBB32_14:                              #   in Loop: Header=BB32_6 Depth=3
	blt	$t4, $t2, .LBB32_5
# %bb.15:                               #   in Loop: Header=BB32_6 Depth=3
	bne	$t0, $a0, .LBB32_19
# %bb.16:                               #   in Loop: Header=BB32_6 Depth=3
	blt	$t5, $t3, .LBB32_19
# %bb.17:                               #   in Loop: Header=BB32_6 Depth=3
	bne	$t1, $a1, .LBB32_21
# %bb.18:                               #   in Loop: Header=BB32_6 Depth=3
	ld.d	$t2, $a5, 0
	bltu	$a4, $t2, .LBB32_5
	b	.LBB32_21
	.p2align	4, , 16
.LBB32_19:                              # %_ZN29btBroadphasePairSortPredicateclERK16btBroadphasePairS2_.exit
                                        #   in Loop: Header=BB32_6 Depth=3
	bne	$t0, $a0, .LBB32_21
# %bb.20:                               # %_ZN29btBroadphasePairSortPredicateclERK16btBroadphasePairS2_.exit
                                        #   in Loop: Header=BB32_6 Depth=3
	blt	$t5, $t3, .LBB32_5
	.p2align	4, , 16
.LBB32_21:                              # %.critedge.preheader
                                        #   in Loop: Header=BB32_4 Depth=2
	addi.d	$t3, $a5, -16
	slli.d	$t2, $a3, 5
	move	$t4, $a3
	b	.LBB32_23
	.p2align	4, , 16
.LBB32_22:                              # %_ZN29btBroadphasePairSortPredicateclERK16btBroadphasePairS2_.exit38.thread
                                        #   in Loop: Header=BB32_23 Depth=3
	addi.d	$t4, $t4, -1
	addi.w	$a3, $a3, -1
	addi.d	$t2, $t2, -32
.LBB32_23:                              # %.critedge
                                        #   Parent Loop BB32_2 Depth=1
                                        #     Parent Loop BB32_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$t7, $s2
	beqz	$a0, .LBB32_25
# %bb.24:                               #   in Loop: Header=BB32_23 Depth=3
	ld.w	$t7, $a0, 24
.LBB32_25:                              #   in Loop: Header=BB32_23 Depth=3
	ldx.d	$t6, $a6, $t2
	move	$s3, $s2
	beqz	$t6, .LBB32_27
# %bb.26:                               #   in Loop: Header=BB32_23 Depth=3
	ld.w	$s3, $t6, 24
.LBB32_27:                              #   in Loop: Header=BB32_23 Depth=3
	move	$t8, $s2
	beqz	$a1, .LBB32_29
# %bb.28:                               #   in Loop: Header=BB32_23 Depth=3
	ld.w	$t8, $a1, 24
.LBB32_29:                              #   in Loop: Header=BB32_23 Depth=3
	add.d	$t5, $a6, $t2
	ld.d	$s5, $t5, 8
	move	$s4, $s2
	beqz	$s5, .LBB32_31
# %bb.30:                               #   in Loop: Header=BB32_23 Depth=3
	ld.w	$s4, $s5, 24
.LBB32_31:                              #   in Loop: Header=BB32_23 Depth=3
	blt	$s3, $t7, .LBB32_22
# %bb.32:                               #   in Loop: Header=BB32_23 Depth=3
	bne	$a0, $t6, .LBB32_36
# %bb.33:                               #   in Loop: Header=BB32_23 Depth=3
	blt	$s4, $t8, .LBB32_36
# %bb.34:                               #   in Loop: Header=BB32_23 Depth=3
	bne	$a1, $s5, .LBB32_38
# %bb.35:                               #   in Loop: Header=BB32_23 Depth=3
	ld.d	$t6, $t5, 16
	bltu	$t6, $a4, .LBB32_22
	b	.LBB32_38
	.p2align	4, , 16
.LBB32_36:                              # %_ZN29btBroadphasePairSortPredicateclERK16btBroadphasePairS2_.exit38
                                        #   in Loop: Header=BB32_23 Depth=3
	bne	$a0, $t6, .LBB32_38
# %bb.37:                               # %_ZN29btBroadphasePairSortPredicateclERK16btBroadphasePairS2_.exit38
                                        #   in Loop: Header=BB32_23 Depth=3
	blt	$s4, $t8, .LBB32_22
	.p2align	4, , 16
.LBB32_38:                              # %_ZN29btBroadphasePairSortPredicateclERK16btBroadphasePairS2_.exit38.thread43
                                        #   in Loop: Header=BB32_4 Depth=2
	blt	$t4, $a7, .LBB32_3
# %bb.39:                               #   in Loop: Header=BB32_4 Depth=2
	vld	$vr0, $t5, 16
	vld	$vr1, $a5, 0
	vst	$vr0, $t3, 16
	vld	$vr0, $t5, 0
	vst	$vr0, $t3, 0
	ld.d	$a5, $s1, 16
	add.d	$a6, $a5, $t2
	stx.d	$t0, $a5, $t2
	st.d	$t1, $a6, 8
	vst	$vr1, $a6, 16
	addi.w	$s0, $s0, 1
	addi.w	$a3, $a3, -1
	b	.LBB32_3
	.p2align	4, , 16
.LBB32_40:                              #   in Loop: Header=BB32_2 Depth=1
	bge	$a2, $a3, .LBB32_1
# %bb.41:                               #   in Loop: Header=BB32_2 Depth=1
	move	$a0, $s1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(_ZN20btAlignedObjectArrayI16btBroadphasePairE17quickSortInternalI29btBroadphasePairSortPredicateEEvT_ii)
	jirl	$ra, $ra, 0
	b	.LBB32_1
.LBB32_42:
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
.Lfunc_end32:
	.size	_ZN20btAlignedObjectArrayI16btBroadphasePairE17quickSortInternalI29btBroadphasePairSortPredicateEEvT_ii, .Lfunc_end32-_ZN20btAlignedObjectArrayI16btBroadphasePairE17quickSortInternalI29btBroadphasePairSortPredicateEEvT_ii
	.cfi_endproc
                                        # -- End function
	.type	_ZTV16btDbvtBroadphase,@object  # @_ZTV16btDbvtBroadphase
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTV16btDbvtBroadphase
	.p2align	3, 0x0
_ZTV16btDbvtBroadphase:
	.dword	0
	.dword	_ZTI16btDbvtBroadphase
	.dword	_ZN16btDbvtBroadphaseD2Ev
	.dword	_ZN16btDbvtBroadphaseD0Ev
	.dword	_ZN16btDbvtBroadphase11createProxyERK9btVector3S2_iPvssP12btDispatcherS3_
	.dword	_ZN16btDbvtBroadphase12destroyProxyEP17btBroadphaseProxyP12btDispatcher
	.dword	_ZN16btDbvtBroadphase7setAabbEP17btBroadphaseProxyRK9btVector3S4_P12btDispatcher
	.dword	_ZNK16btDbvtBroadphase7getAabbEP17btBroadphaseProxyR9btVector3S3_
	.dword	_ZN16btDbvtBroadphase7rayTestERK9btVector3S2_R23btBroadphaseRayCallbackS2_S2_
	.dword	_ZN16btDbvtBroadphase25calculateOverlappingPairsEP12btDispatcher
	.dword	_ZN16btDbvtBroadphase23getOverlappingPairCacheEv
	.dword	_ZNK16btDbvtBroadphase23getOverlappingPairCacheEv
	.dword	_ZNK16btDbvtBroadphase17getBroadphaseAabbER9btVector3S1_
	.dword	_ZN16btDbvtBroadphase9resetPoolEP12btDispatcher
	.dword	_ZN16btDbvtBroadphase10printStatsEv
	.size	_ZTV16btDbvtBroadphase, 120

	.type	_ZTI16btDbvtBroadphase,@object  # @_ZTI16btDbvtBroadphase
	.globl	_ZTI16btDbvtBroadphase
	.p2align	3, 0x0
_ZTI16btDbvtBroadphase:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS16btDbvtBroadphase
	.dword	_ZTI21btBroadphaseInterface
	.size	_ZTI16btDbvtBroadphase, 24

	.type	_ZTS16btDbvtBroadphase,@object  # @_ZTS16btDbvtBroadphase
	.section	.rodata,"a",@progbits
	.globl	_ZTS16btDbvtBroadphase
_ZTS16btDbvtBroadphase:
	.asciz	"16btDbvtBroadphase"
	.size	_ZTS16btDbvtBroadphase, 19

	.type	_ZTI21btBroadphaseInterface,@object # @_ZTI21btBroadphaseInterface
	.section	.data.rel.ro._ZTI21btBroadphaseInterface,"awG",@progbits,_ZTI21btBroadphaseInterface,comdat
	.weak	_ZTI21btBroadphaseInterface
	.p2align	3, 0x0
_ZTI21btBroadphaseInterface:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTS21btBroadphaseInterface
	.size	_ZTI21btBroadphaseInterface, 16

	.type	_ZTS21btBroadphaseInterface,@object # @_ZTS21btBroadphaseInterface
	.section	.rodata._ZTS21btBroadphaseInterface,"aG",@progbits,_ZTS21btBroadphaseInterface,comdat
	.weak	_ZTS21btBroadphaseInterface
_ZTS21btBroadphaseInterface:
	.asciz	"21btBroadphaseInterface"
	.size	_ZTS21btBroadphaseInterface, 24

	.type	_ZTV18btDbvtTreeCollider,@object # @_ZTV18btDbvtTreeCollider
	.section	.data.rel.ro._ZTV18btDbvtTreeCollider,"awG",@progbits,_ZTV18btDbvtTreeCollider,comdat
	.weak	_ZTV18btDbvtTreeCollider
	.p2align	3, 0x0
_ZTV18btDbvtTreeCollider:
	.dword	0
	.dword	_ZTI18btDbvtTreeCollider
	.dword	_ZN6btDbvt8ICollideD2Ev
	.dword	_ZN18btDbvtTreeColliderD0Ev
	.dword	_ZN18btDbvtTreeCollider7ProcessEPK10btDbvtNodeS2_
	.dword	_ZN18btDbvtTreeCollider7ProcessEPK10btDbvtNode
	.dword	_ZN6btDbvt8ICollide7ProcessEPK10btDbvtNodef
	.dword	_ZN6btDbvt8ICollide7DescentEPK10btDbvtNode
	.dword	_ZN6btDbvt8ICollide9AllLeavesEPK10btDbvtNode
	.size	_ZTV18btDbvtTreeCollider, 72

	.type	_ZTI18btDbvtTreeCollider,@object # @_ZTI18btDbvtTreeCollider
	.section	.data.rel.ro._ZTI18btDbvtTreeCollider,"awG",@progbits,_ZTI18btDbvtTreeCollider,comdat
	.weak	_ZTI18btDbvtTreeCollider
	.p2align	3, 0x0
_ZTI18btDbvtTreeCollider:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS18btDbvtTreeCollider
	.dword	_ZTIN6btDbvt8ICollideE
	.size	_ZTI18btDbvtTreeCollider, 24

	.type	_ZTS18btDbvtTreeCollider,@object # @_ZTS18btDbvtTreeCollider
	.section	.rodata._ZTS18btDbvtTreeCollider,"aG",@progbits,_ZTS18btDbvtTreeCollider,comdat
	.weak	_ZTS18btDbvtTreeCollider
_ZTS18btDbvtTreeCollider:
	.asciz	"18btDbvtTreeCollider"
	.size	_ZTS18btDbvtTreeCollider, 21

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

	.type	_ZTV19BroadphaseRayTester,@object # @_ZTV19BroadphaseRayTester
	.section	.data.rel.ro._ZTV19BroadphaseRayTester,"awG",@progbits,_ZTV19BroadphaseRayTester,comdat
	.weak	_ZTV19BroadphaseRayTester
	.p2align	3, 0x0
_ZTV19BroadphaseRayTester:
	.dword	0
	.dword	_ZTI19BroadphaseRayTester
	.dword	_ZN6btDbvt8ICollideD2Ev
	.dword	_ZN19BroadphaseRayTesterD0Ev
	.dword	_ZN6btDbvt8ICollide7ProcessEPK10btDbvtNodeS3_
	.dword	_ZN19BroadphaseRayTester7ProcessEPK10btDbvtNode
	.dword	_ZN6btDbvt8ICollide7ProcessEPK10btDbvtNodef
	.dword	_ZN6btDbvt8ICollide7DescentEPK10btDbvtNode
	.dword	_ZN6btDbvt8ICollide9AllLeavesEPK10btDbvtNode
	.size	_ZTV19BroadphaseRayTester, 72

	.type	_ZTI19BroadphaseRayTester,@object # @_ZTI19BroadphaseRayTester
	.section	.data.rel.ro._ZTI19BroadphaseRayTester,"awG",@progbits,_ZTI19BroadphaseRayTester,comdat
	.weak	_ZTI19BroadphaseRayTester
	.p2align	3, 0x0
_ZTI19BroadphaseRayTester:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS19BroadphaseRayTester
	.dword	_ZTIN6btDbvt8ICollideE
	.size	_ZTI19BroadphaseRayTester, 24

	.type	_ZTS19BroadphaseRayTester,@object # @_ZTS19BroadphaseRayTester
	.section	.rodata._ZTS19BroadphaseRayTester,"aG",@progbits,_ZTS19BroadphaseRayTester,comdat
	.weak	_ZTS19BroadphaseRayTester
_ZTS19BroadphaseRayTester:
	.asciz	"19BroadphaseRayTester"
	.size	_ZTS19BroadphaseRayTester, 22

	.globl	_ZN16btDbvtBroadphaseC1EP22btOverlappingPairCache
	.type	_ZN16btDbvtBroadphaseC1EP22btOverlappingPairCache,@function
_ZN16btDbvtBroadphaseC1EP22btOverlappingPairCache = _ZN16btDbvtBroadphaseC2EP22btOverlappingPairCache
	.globl	_ZN16btDbvtBroadphaseD1Ev
	.type	_ZN16btDbvtBroadphaseD1Ev,@function
_ZN16btDbvtBroadphaseD1Ev = _ZN16btDbvtBroadphaseD2Ev
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
	.addrsig_sym _ZTI16btDbvtBroadphase
	.addrsig_sym _ZTVN10__cxxabiv120__si_class_type_infoE
	.addrsig_sym _ZTS16btDbvtBroadphase
	.addrsig_sym _ZTI21btBroadphaseInterface
	.addrsig_sym _ZTVN10__cxxabiv117__class_type_infoE
	.addrsig_sym _ZTS21btBroadphaseInterface
	.addrsig_sym _ZTI18btDbvtTreeCollider
	.addrsig_sym _ZTS18btDbvtTreeCollider
	.addrsig_sym _ZTIN6btDbvt8ICollideE
	.addrsig_sym _ZTSN6btDbvt8ICollideE
	.addrsig_sym _ZTI19BroadphaseRayTester
	.addrsig_sym _ZTS19BroadphaseRayTester
