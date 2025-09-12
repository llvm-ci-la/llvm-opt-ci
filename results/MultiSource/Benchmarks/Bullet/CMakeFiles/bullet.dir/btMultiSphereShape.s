	.file	"btMultiSphereShape.cpp"
	.text
	.globl	_ZN18btMultiSphereShapeC2EPK9btVector3PKfi # -- Begin function _ZN18btMultiSphereShapeC2EPK9btVector3PKfi
	.p2align	5
	.type	_ZN18btMultiSphereShapeC2EPK9btVector3PKfi,@function
_ZN18btMultiSphereShapeC2EPK9btVector3PKfi: # @_ZN18btMultiSphereShapeC2EPK9btVector3PKfi
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
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
	move	$s0, $a3
	move	$s1, $a2
	move	$s2, $a1
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_ZN32btConvexInternalAabbCachingShapeC2Ev)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(_ZTV18btMultiSphereShape+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV18btMultiSphereShape+16)
	st.d	$a0, $fp, 0
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 128
	st.d	$zero, $fp, 120
	st.d	$zero, $fp, 108
	st.b	$a0, $fp, 160
	st.d	$zero, $fp, 152
	st.d	$zero, $fp, 140
	ori	$a0, $zero, 9
	st.w	$a0, $fp, 8
	blez	$s0, .LBB0_20
# %bb.1:
	slli.d	$a0, $s0, 4
.Ltmp0:                                 # EH_LABEL
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.2:                                # %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i
	move	$s3, $a0
	ld.w	$a1, $fp, 108
	blez	$a1, .LBB0_5
# %bb.3:                                # %.lr.ph.i.i.i
	move	$a0, $zero
	slli.d	$a1, $a1, 4
	.p2align	4, , 16
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $fp, 120
	vldx	$vr0, $a2, $a0
	vstx	$vr0, $s3, $a0
	addi.d	$a0, $a0, 16
	bne	$a1, $a0, .LBB0_4
.LBB0_5:                                # %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i
	ld.d	$a0, $fp, 120
	beqz	$a0, .LBB0_8
# %bb.6:                                # %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i
	ld.b	$a1, $fp, 128
	andi	$a1, $a1, 1
	beqz	$a1, .LBB0_8
# %bb.7:
.Ltmp2:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp3:                                 # EH_LABEL
.LBB0_8:                                # %.loopexit37
	ori	$a0, $zero, 1
	ld.w	$s4, $fp, 140
	st.b	$a0, $fp, 128
	st.d	$s3, $fp, 120
	st.w	$s0, $fp, 112
	st.w	$s0, $fp, 108
	bge	$s4, $s0, .LBB0_27
# %bb.9:
	ld.w	$a0, $fp, 144
	bge	$a0, $s0, .LBB0_21
# %bb.10:
	slli.d	$a0, $s0, 2
.Ltmp5:                                 # EH_LABEL
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
.Ltmp6:                                 # EH_LABEL
# %bb.11:                               # %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i
	move	$s3, $a0
	ld.w	$a1, $fp, 140
	ld.d	$a0, $fp, 152
	blez	$a1, .LBB0_22
# %bb.12:                               # %.lr.ph.i.i.i30
	ori	$a3, $zero, 8
	move	$a2, $zero
	bltu	$a1, $a3, .LBB0_17
# %bb.13:                               # %.lr.ph.i.i.i30
	sub.d	$a3, $s3, $a0
	ori	$a4, $zero, 32
	bltu	$a3, $a4, .LBB0_17
# %bb.14:                               # %vector.ph
	bstrpick.d	$a2, $a1, 30, 3
	slli.d	$a2, $a2, 3
	addi.d	$a3, $a0, 16
	addi.d	$a4, $s3, 16
	move	$a5, $a2
	.p2align	4, , 16
.LBB0_15:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a3, -16
	vld	$vr1, $a3, 0
	vst	$vr0, $a4, -16
	vst	$vr1, $a4, 0
	addi.d	$a5, $a5, -8
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB0_15
# %bb.16:                               # %middle.block
	beq	$a2, $a1, .LBB0_19
.LBB0_17:                               # %scalar.ph.preheader
	sub.d	$a1, $a1, $a2
	alsl.d	$a3, $a2, $a0, 2
	alsl.d	$a2, $a2, $s3, 2
	.p2align	4, , 16
.LBB0_18:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a3, 0
	fst.s	$fa0, $a2, 0
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 4
	addi.d	$a2, $a2, 4
	bnez	$a1, .LBB0_18
.LBB0_19:                               # %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i
	ld.bu	$a1, $fp, 160
	bnez	$a1, .LBB0_24
	b	.LBB0_25
.LBB0_20:                               # %.loopexit
	st.w	$s0, $fp, 108
	st.w	$s0, $fp, 140
	b	.LBB0_29
.LBB0_21:                               # %..lr.ph.i21_crit_edge
	ld.d	$s3, $fp, 152
	b	.LBB0_26
.LBB0_22:                               # %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i
	beqz	$a0, .LBB0_25
# %bb.23:                               # %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i
	ld.b	$a1, $fp, 160
	andi	$a1, $a1, 1
	beqz	$a1, .LBB0_25
.LBB0_24:
.Ltmp7:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp8:                                 # EH_LABEL
.LBB0_25:                               # %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 160
	st.d	$s3, $fp, 152
	st.w	$s0, $fp, 144
.LBB0_26:                               # %.lr.ph.i21
	alsl.d	$a0, $s4, $s3, 2
	sub.d	$a1, $s0, $s4
	slli.d	$a2, $a1, 2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB0_27:                               # %.lr.ph.preheader
	move	$a0, $zero
	move	$a1, $zero
	st.w	$s0, $fp, 140
	.p2align	4, , 16
.LBB0_28:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $fp, 120
	vldx	$vr0, $s2, $a0
	vstx	$vr0, $a2, $a0
	fldx.s	$fa0, $s1, $a1
	ld.d	$a2, $fp, 152
	fstx.s	$fa0, $a2, $a1
	addi.d	$a1, $a1, 4
	addi.d	$s0, $s0, -1
	addi.d	$a0, $a0, 16
	bnez	$s0, .LBB0_28
.LBB0_29:                               # %._crit_edge
.Ltmp10:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN32btConvexInternalAabbCachingShape15recalcLocalAabbEv)
	jirl	$ra, $ra, 0
.Ltmp11:                                # EH_LABEL
# %bb.30:
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB0_31:
.Ltmp9:                                 # EH_LABEL
	b	.LBB0_34
.LBB0_32:
.Ltmp4:                                 # EH_LABEL
	b	.LBB0_34
.LBB0_33:
.Ltmp12:                                # EH_LABEL
.LBB0_34:
	move	$s0, $a0
.Ltmp13:                                # EH_LABEL
	addi.d	$a0, $fp, 136
	pcaddu18i	$ra, %call36(_ZN20btAlignedObjectArrayIfED2Ev)
	jirl	$ra, $ra, 0
.Ltmp14:                                # EH_LABEL
# %bb.35:
.Ltmp15:                                # EH_LABEL
	addi.d	$a0, $fp, 104
	pcaddu18i	$ra, %call36(_ZN20btAlignedObjectArrayI9btVector3ED2Ev)
	jirl	$ra, $ra, 0
.Ltmp16:                                # EH_LABEL
# %bb.36:
.Ltmp17:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN13btConvexShapeD2Ev)
	jirl	$ra, $ra, 0
.Ltmp18:                                # EH_LABEL
# %bb.37:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB0_38:
.Ltmp19:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	_ZN18btMultiSphereShapeC2EPK9btVector3PKfi, .Lfunc_end0-_ZN18btMultiSphereShapeC2EPK9btVector3PKfi
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
	.uleb128 .Ltmp8-.Lfunc_begin0           # >> Call Site 4 <<
	.uleb128 .Ltmp10-.Ltmp8                 #   Call between .Ltmp8 and .Ltmp10
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp10-.Lfunc_begin0          # >> Call Site 5 <<
	.uleb128 .Ltmp11-.Ltmp10                #   Call between .Ltmp10 and .Ltmp11
	.uleb128 .Ltmp12-.Lfunc_begin0          #     jumps to .Ltmp12
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp13-.Lfunc_begin0          # >> Call Site 6 <<
	.uleb128 .Ltmp18-.Ltmp13                #   Call between .Ltmp13 and .Ltmp18
	.uleb128 .Ltmp19-.Lfunc_begin0          #     jumps to .Ltmp19
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp18-.Lfunc_begin0          # >> Call Site 7 <<
	.uleb128 .Lfunc_end0-.Ltmp18            #   Call between .Ltmp18 and .Lfunc_end0
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
	beqz	$a0, .LBB1_3
# %bb.1:
	ld.b	$a1, $fp, 24
	andi	$a1, $a1, 1
	beqz	$a1, .LBB1_3
# %bb.2:
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.LBB1_3:                                # %_ZN20btAlignedObjectArrayIfE5clearEv.exit
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 24
	st.d	$zero, $fp, 16
	st.d	$zero, $fp, 4
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end1:
	.size	_ZN20btAlignedObjectArrayIfED2Ev, .Lfunc_end1-_ZN20btAlignedObjectArrayIfED2Ev
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
	beqz	$a0, .LBB3_3
# %bb.1:
	ld.b	$a1, $fp, 24
	andi	$a1, $a1, 1
	beqz	$a1, .LBB3_3
# %bb.2:
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.LBB3_3:                                # %_ZN20btAlignedObjectArrayI9btVector3E5clearEv.exit
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 24
	st.d	$zero, $fp, 16
	st.d	$zero, $fp, 4
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end3:
	.size	_ZN20btAlignedObjectArrayI9btVector3ED2Ev, .Lfunc_end3-_ZN20btAlignedObjectArrayI9btVector3ED2Ev
	.cfi_endproc
                                        # -- End function
	.text
	.globl	_ZNK18btMultiSphereShape37localGetSupportingVertexWithoutMarginERK9btVector3 # -- Begin function _ZNK18btMultiSphereShape37localGetSupportingVertexWithoutMarginERK9btVector3
	.p2align	5
	.type	_ZNK18btMultiSphereShape37localGetSupportingVertexWithoutMarginERK9btVector3,@function
_ZNK18btMultiSphereShape37localGetSupportingVertexWithoutMarginERK9btVector3: # @_ZNK18btMultiSphereShape37localGetSupportingVertexWithoutMarginERK9btVector3
	.cfi_startproc
# %bb.0:
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
	fld.s	$fa0, $a1, 4
	fld.s	$fa2, $a1, 0
	fld.s	$fa1, $a1, 8
	fmul.s	$fa3, $fa0, $fa0
	fmadd.s	$fa3, $fa2, $fa2, $fa3
	fmadd.s	$fa3, $fa1, $fa1, $fa3
	lu12i.w	$a1, 165888
	movgr2fr.w	$fa4, $a1
	fcmp.clt.s	$fcc0, $fa3, $fa4
	move	$fp, $a0
	bceqz	$fcc0, .LBB4_3
# %bb.1:
	movgr2fr.w	$fs0, $zero
	vldi	$vr0, -1168
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	fmov.s	$fs1, $fs0
	ld.w	$s1, $fp, 108
	bgtz	$s1, .LBB4_4
.LBB4_2:
	move	$a1, $zero
	move	$s0, $zero
	b	.LBB4_9
.LBB4_3:
	frsqrt.s	$fa3, $fa3
	fmul.s	$fa2, $fa2, $fa3
	vst	$vr2, $sp, 16                   # 16-byte Folded Spill
	fmul.s	$fs0, $fa0, $fa3
	fmul.s	$fs1, $fa1, $fa3
	ld.w	$s1, $fp, 108
	blez	$s1, .LBB4_2
.LBB4_4:                                # %.lr.ph
	move	$s0, $zero
	ld.d	$s2, $fp, 152
	ld.d	$s3, $fp, 120
	movgr2fr.w	$fs2, $zero
	lu12i.w	$a0, -141856
	ori	$a0, $a0, 2923
	lu32i.d	$a0, 0
	movgr2fr.w	$fs4, $a0
	fmov.s	$fs3, $fs2
	b	.LBB4_6
	.p2align	4, , 16
.LBB4_5:                                #   in Loop: Header=BB4_6 Depth=1
	addi.d	$s2, $s2, 4
	addi.w	$s1, $s1, -1
	addi.d	$s3, $s3, 16
	beqz	$s1, .LBB4_8
.LBB4_6:                                # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $fp, 24
	fld.s	$fa1, $fp, 28
	fld.s	$fa2, $fp, 32
	fld.s	$fa3, $s2, 0
	vld	$vr4, $sp, 16                   # 16-byte Folded Reload
	vst	$vr4, $sp, 16                   # 16-byte Folded Spill
	fmul.s	$fa0, $fa4, $fa0
	fmul.s	$fa1, $fs0, $fa1
	fmul.s	$fa2, $fs1, $fa2
	fmul.s	$fa0, $fa0, $fa3
	fmul.s	$fa1, $fa1, $fa3
	fmul.s	$fa2, $fa3, $fa2
	ld.d	$a0, $fp, 0
	fld.s	$fa3, $s3, 0
	fld.s	$fa4, $s3, 4
	fld.s	$fa5, $s3, 8
	ld.d	$a1, $a0, 88
	fadd.s	$fs5, $fa3, $fa0
	fadd.s	$fs6, $fa1, $fa4
	fadd.s	$fs7, $fa2, $fa5
	move	$a0, $fp
	jirl	$ra, $a1, 0
	vld	$vr5, $sp, 16                   # 16-byte Folded Reload
	fmul.s	$fa1, $fa5, $fa0
	fmul.s	$fa3, $fs0, $fa0
	fmul.s	$fa4, $fs1, $fa0
	fsub.s	$fa2, $fs5, $fa1
	fsub.s	$fa0, $fs6, $fa3
	fsub.s	$fa1, $fs7, $fa4
	fmul.s	$fa3, $fs0, $fa0
	fmadd.s	$fa3, $fa5, $fa2, $fa3
	fmadd.s	$fa3, $fs1, $fa1, $fa3
	fcmp.cule.s	$fcc0, $fa3, $fs4
	bcnez	$fcc0, .LBB4_5
# %bb.7:                                #   in Loop: Header=BB4_6 Depth=1
	movfr2gr.s	$s0, $fa2
	fmov.s	$fs3, $fa0
	fmov.s	$fs2, $fa1
	fmov.s	$fs4, $fa3
	b	.LBB4_5
.LBB4_8:                                # %._crit_edge.loopexit
	movfr2gr.s	$a0, $fs3
	bstrins.d	$s0, $a0, 63, 32
	movfr2gr.s	$a0, $fs2
	bstrpick.d	$a1, $a0, 31, 0
.LBB4_9:                                # %._crit_edge
	move	$a0, $s0
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
.Lfunc_end4:
	.size	_ZNK18btMultiSphereShape37localGetSupportingVertexWithoutMarginERK9btVector3, .Lfunc_end4-_ZNK18btMultiSphereShape37localGetSupportingVertexWithoutMarginERK9btVector3
	.cfi_endproc
                                        # -- End function
	.globl	_ZNK18btMultiSphereShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i # -- Begin function _ZNK18btMultiSphereShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i
	.p2align	5
	.type	_ZNK18btMultiSphereShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i,@function
_ZNK18btMultiSphereShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i: # @_ZNK18btMultiSphereShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i
	.cfi_startproc
# %bb.0:
	blez	$a3, .LBB5_10
# %bb.1:                                # %.lr.ph92
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
	move	$s2, $a0
	ld.w	$s3, $a0, 108
	blez	$s3, .LBB5_9
# %bb.2:                                # %.lr.ph92.split.preheader
	move	$fp, $a3
	move	$s0, $a2
	move	$s1, $a1
	move	$s4, $zero
	lu12i.w	$a0, -141856
	ori	$a0, $a0, 2923
	lu32i.d	$a0, 0
	movgr2fr.w	$fs0, $a0
	blez	$s3, .LBB5_7
	.p2align	4, , 16
.LBB5_3:                                # %.lr.ph
	ld.d	$s5, $s2, 152
	ld.d	$s6, $s2, 120
	alsl.d	$s7, $s4, $s1, 4
	alsl.d	$s8, $s4, $s0, 4
	fmov.s	$fs1, $fs0
	b	.LBB5_5
	.p2align	4, , 16
.LBB5_4:                                #   in Loop: Header=BB5_5 Depth=1
	addi.d	$s5, $s5, 4
	addi.w	$s3, $s3, -1
	addi.d	$s6, $s6, 16
	beqz	$s3, .LBB5_7
.LBB5_5:                                # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $s7, 0
	fld.s	$fa1, $s2, 24
	fld.s	$fa2, $s7, 4
	fld.s	$fa3, $s2, 28
	fld.s	$fa4, $s7, 8
	fld.s	$fa5, $s2, 32
	fld.s	$fa6, $s5, 0
	fmul.s	$fa0, $fa0, $fa1
	fmul.s	$fa1, $fa2, $fa3
	fmul.s	$fa2, $fa4, $fa5
	fmul.s	$fa0, $fa0, $fa6
	fmul.s	$fa1, $fa1, $fa6
	fmul.s	$fa2, $fa6, $fa2
	ld.d	$a0, $s2, 0
	fld.s	$fa3, $s6, 0
	fld.s	$fa4, $s6, 4
	fld.s	$fa5, $s6, 8
	ld.d	$a1, $a0, 88
	fadd.s	$fs2, $fa3, $fa0
	fadd.s	$fs3, $fa1, $fa4
	fadd.s	$fs4, $fa2, $fa5
	move	$a0, $s2
	jirl	$ra, $a1, 0
	fld.s	$fa3, $s7, 0
	fld.s	$fa4, $s7, 4
	fld.s	$fa5, $s7, 8
	fmul.s	$fa1, $fa0, $fa3
	fmul.s	$fa2, $fa0, $fa4
	fmul.s	$fa6, $fa0, $fa5
	fsub.s	$fa0, $fs2, $fa1
	fsub.s	$fa1, $fs3, $fa2
	fsub.s	$fa2, $fs4, $fa6
	fmul.s	$fa4, $fa4, $fa1
	fmadd.s	$fa3, $fa3, $fa0, $fa4
	fmadd.s	$fa3, $fa5, $fa2, $fa3
	fcmp.cule.s	$fcc0, $fa3, $fs1
	bcnez	$fcc0, .LBB5_4
# %bb.6:                                #   in Loop: Header=BB5_5 Depth=1
	fst.s	$fa0, $s8, 0
	fst.s	$fa1, $s8, 4
	fst.s	$fa2, $s8, 8
	st.w	$zero, $s8, 12
	fmov.s	$fs1, $fa3
	b	.LBB5_4
	.p2align	4, , 16
.LBB5_7:                                # %._crit_edge
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$s4, $s4, 1
	beq	$s4, $fp, .LBB5_9
# %bb.8:                                # %.lr.ph92.splitthread-pre-split
                                        #   in Loop: Header=BB5_7 Depth=1
	ld.w	$s3, $s2, 108
	bgtz	$s3, .LBB5_3
	b	.LBB5_7
.LBB5_9:
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
.LBB5_10:                               # %._crit_edge93
	ret
.Lfunc_end5:
	.size	_ZNK18btMultiSphereShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i, .Lfunc_end5-_ZNK18btMultiSphereShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i
	.cfi_endproc
                                        # -- End function
	.globl	_ZNK18btMultiSphereShape21calculateLocalInertiaEfR9btVector3 # -- Begin function _ZNK18btMultiSphereShape21calculateLocalInertiaEfR9btVector3
	.p2align	5
	.type	_ZNK18btMultiSphereShape21calculateLocalInertiaEfR9btVector3,@function
_ZNK18btMultiSphereShape21calculateLocalInertiaEfR9btVector3: # @_ZNK18btMultiSphereShape21calculateLocalInertiaEfR9btVector3
# %bb.0:
	fld.s	$fa1, $a0, 64
	fld.s	$fa2, $a0, 68
	fld.s	$fa3, $a0, 72
	fld.s	$fa4, $a0, 80
	fld.s	$fa5, $a0, 84
	fld.s	$fa6, $a0, 88
	fsub.s	$fa1, $fa4, $fa1
	fsub.s	$fa2, $fa5, $fa2
	fsub.s	$fa3, $fa6, $fa3
	vldi	$vr4, -1184
	fmul.s	$fa1, $fa1, $fa4
	fmul.s	$fa2, $fa2, $fa4
	fmul.s	$fa3, $fa3, $fa4
	fadd.s	$fa1, $fa1, $fa1
	fadd.s	$fa2, $fa2, $fa2
	fadd.s	$fa3, $fa3, $fa3
	vldi	$vr4, -1240
	fdiv.s	$fa0, $fa0, $fa4
	fmul.s	$fa3, $fa3, $fa3
	fmadd.s	$fa4, $fa2, $fa2, $fa3
	fmul.s	$fa4, $fa0, $fa4
	fmadd.s	$fa3, $fa1, $fa1, $fa3
	fmul.s	$fa3, $fa0, $fa3
	fmul.s	$fa2, $fa2, $fa2
	fmadd.s	$fa1, $fa1, $fa1, $fa2
	fmul.s	$fa0, $fa0, $fa1
	fst.s	$fa4, $a1, 0
	fst.s	$fa3, $a1, 4
	fst.s	$fa0, $a1, 8
	st.w	$zero, $a1, 12
	ret
.Lfunc_end6:
	.size	_ZNK18btMultiSphereShape21calculateLocalInertiaEfR9btVector3, .Lfunc_end6-_ZNK18btMultiSphereShape21calculateLocalInertiaEfR9btVector3
                                        # -- End function
	.section	.text._ZN18btMultiSphereShapeD2Ev,"axG",@progbits,_ZN18btMultiSphereShapeD2Ev,comdat
	.weak	_ZN18btMultiSphereShapeD2Ev     # -- Begin function _ZN18btMultiSphereShapeD2Ev
	.p2align	5
	.type	_ZN18btMultiSphereShapeD2Ev,@function
_ZN18btMultiSphereShapeD2Ev:            # @_ZN18btMultiSphereShapeD2Ev
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
	pcalau12i	$a0, %pc_hi20(_ZTV18btMultiSphereShape+16)
	addi.d	$a1, $a0, %pc_lo12(_ZTV18btMultiSphereShape+16)
	ld.d	$a0, $fp, 152
	st.d	$a1, $fp, 0
	beqz	$a0, .LBB7_3
# %bb.1:
	ld.b	$a1, $fp, 160
	andi	$a1, $a1, 1
	beqz	$a1, .LBB7_3
# %bb.2:
.Ltmp20:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp21:                                # EH_LABEL
.LBB7_3:
	ld.d	$a0, $fp, 120
	ori	$s0, $zero, 1
	st.b	$s0, $fp, 160
	st.d	$zero, $fp, 152
	st.d	$zero, $fp, 140
	beqz	$a0, .LBB7_6
# %bb.4:
	ld.b	$a1, $fp, 128
	andi	$a1, $a1, 1
	beqz	$a1, .LBB7_6
# %bb.5:
.Ltmp25:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp26:                                # EH_LABEL
.LBB7_6:
	st.b	$s0, $fp, 128
	st.d	$zero, $fp, 120
	st.d	$zero, $fp, 108
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZN13btConvexShapeD2Ev)
	jr	$t8
.LBB7_7:
.Ltmp27:                                # EH_LABEL
	move	$s0, $a0
	b	.LBB7_9
.LBB7_8:
.Ltmp22:                                # EH_LABEL
	move	$s0, $a0
	addi.d	$a0, $fp, 104
.Ltmp23:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN20btAlignedObjectArrayI9btVector3ED2Ev)
	jirl	$ra, $ra, 0
.Ltmp24:                                # EH_LABEL
.LBB7_9:
.Ltmp28:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN13btConvexShapeD2Ev)
	jirl	$ra, $ra, 0
.Ltmp29:                                # EH_LABEL
# %bb.10:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB7_11:
.Ltmp30:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end7:
	.size	_ZN18btMultiSphereShapeD2Ev, .Lfunc_end7-_ZN18btMultiSphereShapeD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN18btMultiSphereShapeD2Ev,"aG",@progbits,_ZN18btMultiSphereShapeD2Ev,comdat
	.p2align	2, 0x0
GCC_except_table7:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Ltmp20-.Lfunc_begin1          # >> Call Site 1 <<
	.uleb128 .Ltmp21-.Ltmp20                #   Call between .Ltmp20 and .Ltmp21
	.uleb128 .Ltmp22-.Lfunc_begin1          #     jumps to .Ltmp22
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp25-.Lfunc_begin1          # >> Call Site 2 <<
	.uleb128 .Ltmp26-.Ltmp25                #   Call between .Ltmp25 and .Ltmp26
	.uleb128 .Ltmp27-.Lfunc_begin1          #     jumps to .Ltmp27
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp26-.Lfunc_begin1          # >> Call Site 3 <<
	.uleb128 .Ltmp23-.Ltmp26                #   Call between .Ltmp26 and .Ltmp23
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp23-.Lfunc_begin1          # >> Call Site 4 <<
	.uleb128 .Ltmp29-.Ltmp23                #   Call between .Ltmp23 and .Ltmp29
	.uleb128 .Ltmp30-.Lfunc_begin1          #     jumps to .Ltmp30
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp29-.Lfunc_begin1          # >> Call Site 5 <<
	.uleb128 .Lfunc_end7-.Ltmp29            #   Call between .Ltmp29 and .Lfunc_end7
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
	.section	.text._ZN18btMultiSphereShapeD0Ev,"axG",@progbits,_ZN18btMultiSphereShapeD0Ev,comdat
	.weak	_ZN18btMultiSphereShapeD0Ev     # -- Begin function _ZN18btMultiSphereShapeD0Ev
	.p2align	5
	.type	_ZN18btMultiSphereShapeD0Ev,@function
_ZN18btMultiSphereShapeD0Ev:            # @_ZN18btMultiSphereShapeD0Ev
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
	pcalau12i	$a0, %pc_hi20(_ZTV18btMultiSphereShape+16)
	addi.d	$a1, $a0, %pc_lo12(_ZTV18btMultiSphereShape+16)
	ld.d	$a0, $fp, 152
	st.d	$a1, $fp, 0
	beqz	$a0, .LBB8_3
# %bb.1:
	ld.b	$a1, $fp, 160
	andi	$a1, $a1, 1
	beqz	$a1, .LBB8_3
# %bb.2:
.Ltmp31:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp32:                                # EH_LABEL
.LBB8_3:
	ld.d	$a0, $fp, 120
	ori	$s0, $zero, 1
	st.b	$s0, $fp, 160
	st.d	$zero, $fp, 152
	st.d	$zero, $fp, 140
	beqz	$a0, .LBB8_6
# %bb.4:
	ld.b	$a1, $fp, 128
	andi	$a1, $a1, 1
	beqz	$a1, .LBB8_6
# %bb.5:
.Ltmp36:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp37:                                # EH_LABEL
.LBB8_6:
	st.b	$s0, $fp, 128
	st.d	$zero, $fp, 120
	st.d	$zero, $fp, 108
.Ltmp42:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN13btConvexShapeD2Ev)
	jirl	$ra, $ra, 0
.Ltmp43:                                # EH_LABEL
# %bb.7:                                # %_ZN18btMultiSphereShapeD2Ev.exit
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_Z21btAlignedFreeInternalPv)
	jr	$t8
.LBB8_8:
.Ltmp38:                                # EH_LABEL
	move	$s0, $a0
	b	.LBB8_10
.LBB8_9:
.Ltmp33:                                # EH_LABEL
	move	$s0, $a0
	addi.d	$a0, $fp, 104
.Ltmp34:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN20btAlignedObjectArrayI9btVector3ED2Ev)
	jirl	$ra, $ra, 0
.Ltmp35:                                # EH_LABEL
.LBB8_10:
.Ltmp39:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN13btConvexShapeD2Ev)
	jirl	$ra, $ra, 0
.Ltmp40:                                # EH_LABEL
	b	.LBB8_13
.LBB8_11:
.Ltmp41:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB8_12:
.Ltmp44:                                # EH_LABEL
	move	$s0, $a0
.LBB8_13:                               # %.body
.Ltmp45:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp46:                                # EH_LABEL
# %bb.14:                               # %_ZN13btConvexShapedlEPv.exit
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB8_15:
.Ltmp47:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end8:
	.size	_ZN18btMultiSphereShapeD0Ev, .Lfunc_end8-_ZN18btMultiSphereShapeD0Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN18btMultiSphereShapeD0Ev,"aG",@progbits,_ZN18btMultiSphereShapeD0Ev,comdat
	.p2align	2, 0x0
GCC_except_table8:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase2-.Lttbaseref2
.Lttbaseref2:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Ltmp31-.Lfunc_begin2          # >> Call Site 1 <<
	.uleb128 .Ltmp32-.Ltmp31                #   Call between .Ltmp31 and .Ltmp32
	.uleb128 .Ltmp33-.Lfunc_begin2          #     jumps to .Ltmp33
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp36-.Lfunc_begin2          # >> Call Site 2 <<
	.uleb128 .Ltmp37-.Ltmp36                #   Call between .Ltmp36 and .Ltmp37
	.uleb128 .Ltmp38-.Lfunc_begin2          #     jumps to .Ltmp38
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp42-.Lfunc_begin2          # >> Call Site 3 <<
	.uleb128 .Ltmp43-.Ltmp42                #   Call between .Ltmp42 and .Ltmp43
	.uleb128 .Ltmp44-.Lfunc_begin2          #     jumps to .Ltmp44
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp43-.Lfunc_begin2          # >> Call Site 4 <<
	.uleb128 .Ltmp34-.Ltmp43                #   Call between .Ltmp43 and .Ltmp34
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp34-.Lfunc_begin2          # >> Call Site 5 <<
	.uleb128 .Ltmp40-.Ltmp34                #   Call between .Ltmp34 and .Ltmp40
	.uleb128 .Ltmp41-.Lfunc_begin2          #     jumps to .Ltmp41
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp40-.Lfunc_begin2          # >> Call Site 6 <<
	.uleb128 .Ltmp45-.Ltmp40                #   Call between .Ltmp40 and .Ltmp45
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp45-.Lfunc_begin2          # >> Call Site 7 <<
	.uleb128 .Ltmp46-.Ltmp45                #   Call between .Ltmp45 and .Ltmp46
	.uleb128 .Ltmp47-.Lfunc_begin2          #     jumps to .Ltmp47
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp46-.Lfunc_begin2          # >> Call Site 8 <<
	.uleb128 .Lfunc_end8-.Ltmp46            #   Call between .Ltmp46 and .Lfunc_end8
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
	.section	.text._ZNK21btConvexInternalShape15getLocalScalingEv,"axG",@progbits,_ZNK21btConvexInternalShape15getLocalScalingEv,comdat
	.weak	_ZNK21btConvexInternalShape15getLocalScalingEv # -- Begin function _ZNK21btConvexInternalShape15getLocalScalingEv
	.p2align	5
	.type	_ZNK21btConvexInternalShape15getLocalScalingEv,@function
_ZNK21btConvexInternalShape15getLocalScalingEv: # @_ZNK21btConvexInternalShape15getLocalScalingEv
# %bb.0:
	addi.d	$a0, $a0, 24
	ret
.Lfunc_end9:
	.size	_ZNK21btConvexInternalShape15getLocalScalingEv, .Lfunc_end9-_ZNK21btConvexInternalShape15getLocalScalingEv
                                        # -- End function
	.section	.text._ZNK18btMultiSphereShape7getNameEv,"axG",@progbits,_ZNK18btMultiSphereShape7getNameEv,comdat
	.weak	_ZNK18btMultiSphereShape7getNameEv # -- Begin function _ZNK18btMultiSphereShape7getNameEv
	.p2align	5
	.type	_ZNK18btMultiSphereShape7getNameEv,@function
_ZNK18btMultiSphereShape7getNameEv:     # @_ZNK18btMultiSphereShape7getNameEv
# %bb.0:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ret
.Lfunc_end10:
	.size	_ZNK18btMultiSphereShape7getNameEv, .Lfunc_end10-_ZNK18btMultiSphereShape7getNameEv
                                        # -- End function
	.section	.text._ZN21btConvexInternalShape9setMarginEf,"axG",@progbits,_ZN21btConvexInternalShape9setMarginEf,comdat
	.weak	_ZN21btConvexInternalShape9setMarginEf # -- Begin function _ZN21btConvexInternalShape9setMarginEf
	.p2align	5
	.type	_ZN21btConvexInternalShape9setMarginEf,@function
_ZN21btConvexInternalShape9setMarginEf: # @_ZN21btConvexInternalShape9setMarginEf
# %bb.0:
	fst.s	$fa0, $a0, 56
	ret
.Lfunc_end11:
	.size	_ZN21btConvexInternalShape9setMarginEf, .Lfunc_end11-_ZN21btConvexInternalShape9setMarginEf
                                        # -- End function
	.section	.text._ZNK21btConvexInternalShape9getMarginEv,"axG",@progbits,_ZNK21btConvexInternalShape9getMarginEv,comdat
	.weak	_ZNK21btConvexInternalShape9getMarginEv # -- Begin function _ZNK21btConvexInternalShape9getMarginEv
	.p2align	5
	.type	_ZNK21btConvexInternalShape9getMarginEv,@function
_ZNK21btConvexInternalShape9getMarginEv: # @_ZNK21btConvexInternalShape9getMarginEv
# %bb.0:
	fld.s	$fa0, $a0, 56
	ret
.Lfunc_end12:
	.size	_ZNK21btConvexInternalShape9getMarginEv, .Lfunc_end12-_ZNK21btConvexInternalShape9getMarginEv
                                        # -- End function
	.section	.text._ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv,"axG",@progbits,_ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv,comdat
	.weak	_ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv # -- Begin function _ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv
	.p2align	5
	.type	_ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv,@function
_ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv: # @_ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv
# %bb.0:
	move	$a0, $zero
	ret
.Lfunc_end13:
	.size	_ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv, .Lfunc_end13-_ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv
                                        # -- End function
	.section	.text._ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3,"axG",@progbits,_ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3,comdat
	.weak	_ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3 # -- Begin function _ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3
	.p2align	5
	.type	_ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3,@function
_ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3: # @_ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3
# %bb.0:
	ret
.Lfunc_end14:
	.size	_ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3, .Lfunc_end14-_ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3
                                        # -- End function
	.type	_ZTV18btMultiSphereShape,@object # @_ZTV18btMultiSphereShape
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTV18btMultiSphereShape
	.p2align	3, 0x0
_ZTV18btMultiSphereShape:
	.dword	0
	.dword	_ZTI18btMultiSphereShape
	.dword	_ZN18btMultiSphereShapeD2Ev
	.dword	_ZN18btMultiSphereShapeD0Ev
	.dword	_ZNK32btConvexInternalAabbCachingShape7getAabbERK11btTransformR9btVector3S4_
	.dword	_ZNK16btCollisionShape17getBoundingSphereER9btVector3Rf
	.dword	_ZNK16btCollisionShape20getAngularMotionDiscEv
	.dword	_ZNK16btCollisionShape27getContactBreakingThresholdEv
	.dword	_ZN32btConvexInternalAabbCachingShape15setLocalScalingERK9btVector3
	.dword	_ZNK21btConvexInternalShape15getLocalScalingEv
	.dword	_ZNK18btMultiSphereShape21calculateLocalInertiaEfR9btVector3
	.dword	_ZNK18btMultiSphereShape7getNameEv
	.dword	_ZN21btConvexInternalShape9setMarginEf
	.dword	_ZNK21btConvexInternalShape9getMarginEv
	.dword	_ZNK21btConvexInternalShape24localGetSupportingVertexERK9btVector3
	.dword	_ZNK18btMultiSphereShape37localGetSupportingVertexWithoutMarginERK9btVector3
	.dword	_ZNK18btMultiSphereShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i
	.dword	_ZNK21btConvexInternalShape11getAabbSlowERK11btTransformR9btVector3S4_
	.dword	_ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv
	.dword	_ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3
	.size	_ZTV18btMultiSphereShape, 160

	.type	_ZTI18btMultiSphereShape,@object # @_ZTI18btMultiSphereShape
	.globl	_ZTI18btMultiSphereShape
	.p2align	3, 0x0
_ZTI18btMultiSphereShape:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS18btMultiSphereShape
	.dword	_ZTI32btConvexInternalAabbCachingShape
	.size	_ZTI18btMultiSphereShape, 24

	.type	_ZTS18btMultiSphereShape,@object # @_ZTS18btMultiSphereShape
	.section	.rodata,"a",@progbits
	.globl	_ZTS18btMultiSphereShape
_ZTS18btMultiSphereShape:
	.asciz	"18btMultiSphereShape"
	.size	_ZTS18btMultiSphereShape, 21

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"MultiSphere"
	.size	.L.str, 12

	.globl	_ZN18btMultiSphereShapeC1EPK9btVector3PKfi
	.type	_ZN18btMultiSphereShapeC1EPK9btVector3PKfi,@function
_ZN18btMultiSphereShapeC1EPK9btVector3PKfi = _ZN18btMultiSphereShapeC2EPK9btVector3PKfi
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
	.addrsig_sym _ZTI18btMultiSphereShape
	.addrsig_sym _ZTVN10__cxxabiv120__si_class_type_infoE
	.addrsig_sym _ZTS18btMultiSphereShape
	.addrsig_sym _ZTI32btConvexInternalAabbCachingShape
