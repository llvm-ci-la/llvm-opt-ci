	.file	"btConvexHullShape.cpp"
	.text
	.globl	_ZN17btConvexHullShapeC2EPKfii  # -- Begin function _ZN17btConvexHullShapeC2EPKfii
	.p2align	5
	.type	_ZN17btConvexHullShapeC2EPKfii,@function
_ZN17btConvexHullShapeC2EPKfii:         # @_ZN17btConvexHullShapeC2EPKfii
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
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	move	$s1, $a3
	move	$s0, $a2
	move	$s2, $a1
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_ZN34btPolyhedralConvexAabbCachingShapeC2Ev)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(_ZTV17btConvexHullShape+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV17btConvexHullShape+16)
	st.d	$a0, $fp, 0
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 128
	st.d	$zero, $fp, 120
	st.d	$zero, $fp, 108
	ori	$a0, $zero, 4
	st.w	$a0, $fp, 8
	blez	$s0, .LBB0_10
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
.LBB0_8:                                # %.lr.ph
	move	$a0, $zero
	ori	$a1, $zero, 1
	st.b	$a1, $fp, 128
	st.d	$s3, $fp, 120
	st.w	$s0, $fp, 112
	st.w	$s0, $fp, 108
	addi.d	$a1, $s2, 4
	.p2align	4, , 16
.LBB0_9:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $fp, 120
	ld.d	$a3, $a1, -4
	fld.s	$fa0, $a1, 4
	add.d	$a4, $a2, $a0
	stx.d	$a3, $a2, $a0
	fst.s	$fa0, $a4, 8
	st.w	$zero, $a4, 12
	addi.d	$a0, $a0, 16
	addi.d	$s0, $s0, -1
	add.d	$a1, $a1, $s1
	bnez	$s0, .LBB0_9
	b	.LBB0_11
.LBB0_10:                               # %.loopexit
	st.w	$s0, $fp, 108
.LBB0_11:                               # %._crit_edge
.Ltmp5:                                 # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN34btPolyhedralConvexAabbCachingShape15recalcLocalAabbEv)
	jirl	$ra, $ra, 0
.Ltmp6:                                 # EH_LABEL
# %bb.12:
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB0_13:
.Ltmp4:                                 # EH_LABEL
	b	.LBB0_15
.LBB0_14:
.Ltmp7:                                 # EH_LABEL
.LBB0_15:
	move	$s0, $a0
.Ltmp8:                                 # EH_LABEL
	addi.d	$a0, $fp, 104
	pcaddu18i	$ra, %call36(_ZN20btAlignedObjectArrayI9btVector3ED2Ev)
	jirl	$ra, $ra, 0
.Ltmp9:                                 # EH_LABEL
# %bb.16:
.Ltmp10:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN13btConvexShapeD2Ev)
	jirl	$ra, $ra, 0
.Ltmp11:                                # EH_LABEL
# %bb.17:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB0_18:
.Ltmp12:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	_ZN17btConvexHullShapeC2EPKfii, .Lfunc_end0-_ZN17btConvexHullShapeC2EPKfii
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
	.uleb128 .Ltmp6-.Ltmp5                  #   Call between .Ltmp5 and .Ltmp6
	.uleb128 .Ltmp7-.Lfunc_begin0           #     jumps to .Ltmp7
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp8-.Lfunc_begin0           # >> Call Site 4 <<
	.uleb128 .Ltmp11-.Ltmp8                 #   Call between .Ltmp8 and .Ltmp11
	.uleb128 .Ltmp12-.Lfunc_begin0          #     jumps to .Ltmp12
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp11-.Lfunc_begin0          # >> Call Site 5 <<
	.uleb128 .Lfunc_end0-.Ltmp11            #   Call between .Ltmp11 and .Lfunc_end0
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
	beqz	$a0, .LBB1_3
# %bb.1:
	ld.b	$a1, $fp, 24
	andi	$a1, $a1, 1
	beqz	$a1, .LBB1_3
# %bb.2:
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.LBB1_3:                                # %_ZN20btAlignedObjectArrayI9btVector3E5clearEv.exit
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 24
	st.d	$zero, $fp, 16
	st.d	$zero, $fp, 4
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end1:
	.size	_ZN20btAlignedObjectArrayI9btVector3ED2Ev, .Lfunc_end1-_ZN20btAlignedObjectArrayI9btVector3ED2Ev
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
	.globl	_ZN17btConvexHullShape15setLocalScalingERK9btVector3 # -- Begin function _ZN17btConvexHullShape15setLocalScalingERK9btVector3
	.p2align	5
	.type	_ZN17btConvexHullShape15setLocalScalingERK9btVector3,@function
_ZN17btConvexHullShape15setLocalScalingERK9btVector3: # @_ZN17btConvexHullShape15setLocalScalingERK9btVector3
	.cfi_startproc
# %bb.0:
	vld	$vr0, $a1, 0
	vst	$vr0, $a0, 24
	pcaddu18i	$t8, %call36(_ZN34btPolyhedralConvexAabbCachingShape15recalcLocalAabbEv)
	jr	$t8
.Lfunc_end3:
	.size	_ZN17btConvexHullShape15setLocalScalingERK9btVector3, .Lfunc_end3-_ZN17btConvexHullShape15setLocalScalingERK9btVector3
	.cfi_endproc
                                        # -- End function
	.globl	_ZN17btConvexHullShape8addPointERK9btVector3 # -- Begin function _ZN17btConvexHullShape8addPointERK9btVector3
	.p2align	5
	.type	_ZN17btConvexHullShape8addPointERK9btVector3,@function
_ZN17btConvexHullShape8addPointERK9btVector3: # @_ZN17btConvexHullShape8addPointERK9btVector3
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
	ld.w	$a2, $a0, 108
	ld.w	$a3, $a0, 112
	bne	$a2, $a3, .LBB4_11
# %bb.1:
	sltui	$a3, $a2, 1
	slli.w	$a4, $a2, 1
	masknez	$a4, $a4, $a3
	ori	$a5, $zero, 1
	maskeqz	$a3, $a5, $a3
	or	$s0, $a3, $a4
	bge	$a2, $s0, .LBB4_11
# %bb.2:
	beqz	$s0, .LBB4_4
# %bb.3:
	slli.d	$a2, $s0, 4
	move	$fp, $a1
	ori	$a1, $zero, 16
	move	$s1, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
	move	$a1, $fp
	ld.w	$a2, $s1, 108
	move	$fp, $a0
	move	$a0, $s1
	bgtz	$a2, .LBB4_5
	b	.LBB4_7
.LBB4_4:
	move	$fp, $zero
	blez	$a2, .LBB4_7
.LBB4_5:                                # %.lr.ph.i.i.i
	move	$a3, $zero
	slli.d	$a2, $a2, 4
	.p2align	4, , 16
.LBB4_6:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a0, 120
	vldx	$vr0, $a4, $a3
	vstx	$vr0, $fp, $a3
	addi.d	$a3, $a3, 16
	bne	$a2, $a3, .LBB4_6
.LBB4_7:                                # %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i
	ld.d	$a2, $a0, 120
	beqz	$a2, .LBB4_10
# %bb.8:                                # %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i
	ld.b	$a3, $a0, 128
	andi	$a3, $a3, 1
	beqz	$a3, .LBB4_10
# %bb.9:
	move	$s1, $a0
	move	$a0, $a2
	move	$s2, $a1
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
	move	$a1, $s2
	move	$a0, $s1
.LBB4_10:                               # %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i
	ori	$a3, $zero, 1
	ld.w	$a2, $a0, 108
	st.b	$a3, $a0, 128
	st.d	$fp, $a0, 120
	st.w	$s0, $a0, 112
.LBB4_11:                               # %_ZN20btAlignedObjectArrayI9btVector3E9push_backERKS0_.exit
	ld.d	$a3, $a0, 120
	vld	$vr0, $a1, 0
	slli.d	$a1, $a2, 4
	vstx	$vr0, $a3, $a1
	ld.w	$a1, $a0, 108
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, 108
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(_ZN34btPolyhedralConvexAabbCachingShape15recalcLocalAabbEv)
	jr	$t8
.Lfunc_end4:
	.size	_ZN17btConvexHullShape8addPointERK9btVector3, .Lfunc_end4-_ZN17btConvexHullShape8addPointERK9btVector3
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZNK17btConvexHullShape37localGetSupportingVertexWithoutMarginERK9btVector3
.LCPI5_0:
	.word	0x38d1b717                      # float 9.99999974E-5
.LCPI5_1:
	.word	0xdd5e0b6b                      # float -9.99999984E+17
	.text
	.globl	_ZNK17btConvexHullShape37localGetSupportingVertexWithoutMarginERK9btVector3
	.p2align	5
	.type	_ZNK17btConvexHullShape37localGetSupportingVertexWithoutMarginERK9btVector3,@function
_ZNK17btConvexHullShape37localGetSupportingVertexWithoutMarginERK9btVector3: # @_ZNK17btConvexHullShape37localGetSupportingVertexWithoutMarginERK9btVector3
# %bb.0:
	fld.s	$fa0, $a1, 0
	fld.s	$fa2, $a1, 4
	fld.s	$fa3, $a1, 8
	pcalau12i	$a1, %pc_hi20(.LCPI5_0)
	fld.s	$fa4, $a1, %pc_lo12(.LCPI5_0)
	fmul.s	$fa1, $fa2, $fa2
	fmadd.s	$fa1, $fa0, $fa0, $fa1
	fmadd.s	$fa1, $fa3, $fa3, $fa1
	fcmp.clt.s	$fcc0, $fa1, $fa4
	bceqz	$fcc0, .LBB5_3
# %bb.1:
	movgr2fr.w	$fa0, $zero
	vldi	$vr1, -1168
	fmov.s	$fa2, $fa0
	ld.w	$a1, $a0, 108
	bgtz	$a1, .LBB5_4
.LBB5_2:
	move	$a1, $zero
	move	$a0, $zero
	ret
.LBB5_3:
	frsqrt.s	$fa4, $fa1
	fmul.s	$fa1, $fa0, $fa4
	fmul.s	$fa0, $fa2, $fa4
	fmul.s	$fa2, $fa3, $fa4
	ld.w	$a1, $a0, 108
	blez	$a1, .LBB5_2
.LBB5_4:                                # %.lr.ph
	ld.d	$a2, $a0, 120
	fld.s	$fa3, $a0, 24
	fld.s	$fa4, $a0, 28
	fld.s	$fa5, $a0, 32
	pcalau12i	$a0, %pc_hi20(.LCPI5_1)
	fld.s	$fa6, $a0, %pc_lo12(.LCPI5_1)
	move	$a0, $zero
	movgr2fr.w	$fa7, $zero
	addi.d	$a2, $a2, 8
	fmov.s	$ft0, $fa7
	b	.LBB5_6
	.p2align	4, , 16
.LBB5_5:                                #   in Loop: Header=BB5_6 Depth=1
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 16
	beqz	$a1, .LBB5_8
.LBB5_6:                                # =>This Inner Loop Header: Depth=1
	fld.s	$ft1, $a2, -8
	fld.s	$ft2, $a2, -4
	fld.s	$ft4, $a2, 0
	fmul.s	$ft3, $ft1, $fa3
	fmul.s	$ft1, $ft2, $fa4
	fmul.s	$ft2, $ft4, $fa5
	fmul.s	$ft4, $fa0, $ft1
	fmadd.s	$ft4, $fa1, $ft3, $ft4
	fmadd.s	$ft4, $fa2, $ft2, $ft4
	fcmp.cule.s	$fcc0, $ft4, $fa6
	bcnez	$fcc0, .LBB5_5
# %bb.7:                                #   in Loop: Header=BB5_6 Depth=1
	movfr2gr.s	$a0, $ft3
	fmov.s	$ft0, $ft1
	fmov.s	$fa7, $ft2
	fmov.s	$fa6, $ft4
	b	.LBB5_5
.LBB5_8:                                # %._crit_edge.loopexit
	movfr2gr.s	$a1, $ft0
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa7
	bstrpick.d	$a1, $a1, 31, 0
	ret
.Lfunc_end5:
	.size	_ZNK17btConvexHullShape37localGetSupportingVertexWithoutMarginERK9btVector3, .Lfunc_end5-_ZNK17btConvexHullShape37localGetSupportingVertexWithoutMarginERK9btVector3
                                        # -- End function
	.globl	_ZNK17btConvexHullShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i # -- Begin function _ZNK17btConvexHullShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i
	.p2align	5
	.type	_ZNK17btConvexHullShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i,@function
_ZNK17btConvexHullShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i: # @_ZNK17btConvexHullShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i
# %bb.0:
	blez	$a3, .LBB6_15
# %bb.1:                                # %.lr.ph.preheader
	ori	$a5, $zero, 1
	lu12i.w	$a4, -141856
	bne	$a3, $a5, .LBB6_3
# %bb.2:
	move	$a5, $zero
	b	.LBB6_6
.LBB6_3:                                # %vector.ph
	bstrpick.d	$a5, $a3, 30, 1
	slli.d	$a5, $a5, 1
	addi.d	$a6, $a2, 28
	ori	$a7, $a4, 2923
	lu32i.d	$a7, 0
	move	$t0, $a5
	.p2align	4, , 16
.LBB6_4:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a7, $a6, -16
	st.w	$a7, $a6, 0
	addi.d	$t0, $t0, -2
	addi.d	$a6, $a6, 32
	bnez	$t0, .LBB6_4
# %bb.5:                                # %middle.block
	beq	$a5, $a3, .LBB6_8
.LBB6_6:                                # %.lr.ph.preheader44
	alsl.d	$a6, $a5, $a2, 4
	addi.d	$a6, $a6, 12
	sub.d	$a5, $a3, $a5
	ori	$a4, $a4, 2923
	lu32i.d	$a4, 0
	.p2align	4, , 16
.LBB6_7:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a4, $a6, 0
	addi.d	$a5, $a5, -1
	addi.d	$a6, $a6, 16
	bnez	$a5, .LBB6_7
.LBB6_8:                                # %.preheader
	ld.w	$a4, $a0, 108
	blez	$a4, .LBB6_15
# %bb.9:                                # %.lr.ph34
	move	$a4, $zero
	bstrpick.d	$a3, $a3, 31, 0
	addi.d	$a2, $a2, 12
	addi.d	$a1, $a1, 8
	b	.LBB6_11
	.p2align	4, , 16
.LBB6_10:                               # %._crit_edge.us
                                        #   in Loop: Header=BB6_11 Depth=1
	ld.w	$a5, $a0, 108
	addi.d	$a4, $a4, 1
	bge	$a4, $a5, .LBB6_15
.LBB6_11:                               # %.lr.ph32.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_13 Depth 2
	ld.d	$a5, $a0, 120
	alsl.d	$a6, $a4, $a5, 4
	slli.d	$a7, $a4, 4
	fldx.s	$fa0, $a5, $a7
	fld.s	$fa1, $a0, 24
	fld.s	$fa2, $a6, 4
	fld.s	$fa3, $a0, 28
	fld.s	$fa4, $a6, 8
	fld.s	$fa5, $a0, 32
	fmul.s	$fa0, $fa0, $fa1
	fmul.s	$fa1, $fa2, $fa3
	fmul.s	$fa2, $fa4, $fa5
	move	$a5, $a1
	move	$a6, $a2
	move	$a7, $a3
	b	.LBB6_13
	.p2align	4, , 16
.LBB6_12:                               #   in Loop: Header=BB6_13 Depth=2
	addi.d	$a7, $a7, -1
	addi.d	$a6, $a6, 16
	addi.d	$a5, $a5, 16
	beqz	$a7, .LBB6_10
.LBB6_13:                               #   Parent Loop BB6_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa3, $a5, -4
	fld.s	$fa4, $a5, -8
	fld.s	$fa5, $a5, 0
	fld.s	$fa6, $a6, 0
	fmul.s	$fa3, $fa1, $fa3
	fmadd.s	$fa3, $fa4, $fa0, $fa3
	fmadd.s	$fa3, $fa5, $fa2, $fa3
	fcmp.cule.s	$fcc0, $fa3, $fa6
	bcnez	$fcc0, .LBB6_12
# %bb.14:                               #   in Loop: Header=BB6_13 Depth=2
	fst.s	$fa0, $a6, -12
	fst.s	$fa1, $a6, -8
	fst.s	$fa2, $a6, -4
	fst.s	$fa3, $a6, 0
	b	.LBB6_12
.LBB6_15:                               # %._crit_edge35
	ret
.Lfunc_end6:
	.size	_ZNK17btConvexHullShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i, .Lfunc_end6-_ZNK17btConvexHullShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZNK17btConvexHullShape24localGetSupportingVertexERK9btVector3
.LCPI7_0:
	.word	0x28800000                      # float 1.42108547E-14
	.text
	.globl	_ZNK17btConvexHullShape24localGetSupportingVertexERK9btVector3
	.p2align	5
	.type	_ZNK17btConvexHullShape24localGetSupportingVertexERK9btVector3,@function
_ZNK17btConvexHullShape24localGetSupportingVertexERK9btVector3: # @_ZNK17btConvexHullShape24localGetSupportingVertexERK9btVector3
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
	fst.d	$fs0, $sp, 56                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 40                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs5, $sp, 16                   # 8-byte Folded Spill
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
	move	$s0, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a2, $a0, 104
	move	$s2, $a1
	move	$a0, $s0
	jirl	$ra, $a2, 0
	ld.d	$a2, $s0, 0
	ld.d	$a2, $a2, 88
	move	$s1, $a0
	move	$fp, $a1
	srli.d	$s3, $a0, 32
	move	$a0, $s0
	jirl	$ra, $a2, 0
	movgr2fr.w	$fa1, $zero
	fcmp.ceq.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB7_2
# %bb.1:
	movgr2fr.w	$fs0, $fp
	movgr2fr.w	$fs1, $s3
	movgr2fr.w	$fs2, $s1
	fld.s	$fa0, $s2, 0
	fld.s	$fa1, $s2, 4
	fld.s	$fa2, $s2, 8
	pcalau12i	$a0, %pc_hi20(.LCPI7_0)
	fld.s	$fa3, $a0, %pc_lo12(.LCPI7_0)
	fmul.s	$fa4, $fa1, $fa1
	fmadd.s	$fa4, $fa0, $fa0, $fa4
	fmadd.s	$fa4, $fa2, $fa2, $fa4
	fcmp.clt.s	$fcc0, $fa4, $fa3
	vldi	$vr3, -1040
	fsel	$fa0, $fa0, $fa3, $fcc0
	fsel	$fa1, $fa1, $fa3, $fcc0
	fsel	$fa2, $fa2, $fa3, $fcc0
	fmul.s	$fa3, $fa1, $fa1
	ld.d	$a0, $s0, 0
	fmadd.s	$fa3, $fa0, $fa0, $fa3
	fmadd.s	$fa3, $fa2, $fa2, $fa3
	frsqrt.s	$fa3, $fa3
	ld.d	$a1, $a0, 88
	fmul.s	$fs3, $fa0, $fa3
	fmul.s	$fs4, $fa1, $fa3
	fmul.s	$fs5, $fa2, $fa3
	move	$a0, $s0
	jirl	$ra, $a1, 0
	fmul.s	$fa1, $fa0, $fs3
	fmul.s	$fa2, $fa0, $fs4
	fmul.s	$fa0, $fa0, $fs5
	fadd.s	$fa1, $fa1, $fs2
	fadd.s	$fa2, $fa2, $fs1
	fadd.s	$fa0, $fa0, $fs0
	movfr2gr.s	$s1, $fa1
	movfr2gr.s	$s3, $fa2
	movfr2gr.s	$a0, $fa0
	b	.LBB7_3
.LBB7_2:
	move	$a0, $fp
.LBB7_3:
	bstrins.d	$s1, $s3, 63, 32
	bstrpick.d	$a0, $a0, 31, 0
	bstrins.d	$fp, $a0, 31, 0
	move	$a0, $s1
	move	$a1, $fp
	fld.d	$fs5, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 56                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.Lfunc_end7:
	.size	_ZNK17btConvexHullShape24localGetSupportingVertexERK9btVector3, .Lfunc_end7-_ZNK17btConvexHullShape24localGetSupportingVertexERK9btVector3
	.cfi_endproc
                                        # -- End function
	.globl	_ZNK17btConvexHullShape14getNumVerticesEv # -- Begin function _ZNK17btConvexHullShape14getNumVerticesEv
	.p2align	5
	.type	_ZNK17btConvexHullShape14getNumVerticesEv,@function
_ZNK17btConvexHullShape14getNumVerticesEv: # @_ZNK17btConvexHullShape14getNumVerticesEv
# %bb.0:
	ld.w	$a0, $a0, 108
	ret
.Lfunc_end8:
	.size	_ZNK17btConvexHullShape14getNumVerticesEv, .Lfunc_end8-_ZNK17btConvexHullShape14getNumVerticesEv
                                        # -- End function
	.globl	_ZNK17btConvexHullShape11getNumEdgesEv # -- Begin function _ZNK17btConvexHullShape11getNumEdgesEv
	.p2align	5
	.type	_ZNK17btConvexHullShape11getNumEdgesEv,@function
_ZNK17btConvexHullShape11getNumEdgesEv: # @_ZNK17btConvexHullShape11getNumEdgesEv
# %bb.0:
	ld.w	$a0, $a0, 108
	ret
.Lfunc_end9:
	.size	_ZNK17btConvexHullShape11getNumEdgesEv, .Lfunc_end9-_ZNK17btConvexHullShape11getNumEdgesEv
                                        # -- End function
	.globl	_ZNK17btConvexHullShape7getEdgeEiR9btVector3S1_ # -- Begin function _ZNK17btConvexHullShape7getEdgeEiR9btVector3S1_
	.p2align	5
	.type	_ZNK17btConvexHullShape7getEdgeEiR9btVector3S1_,@function
_ZNK17btConvexHullShape7getEdgeEiR9btVector3S1_: # @_ZNK17btConvexHullShape7getEdgeEiR9btVector3S1_
# %bb.0:
	ld.w	$a4, $a0, 108
	ld.d	$a5, $a0, 120
	mod.w	$a6, $a1, $a4
	slli.d	$a7, $a6, 4
	fldx.s	$fa0, $a5, $a7
	alsl.d	$a5, $a6, $a5, 4
	fld.s	$fa1, $a0, 24
	fld.s	$fa2, $a5, 4
	fld.s	$fa3, $a0, 28
	fld.s	$fa4, $a5, 8
	fld.s	$fa5, $a0, 32
	fmul.s	$fa0, $fa0, $fa1
	fmul.s	$fa1, $fa2, $fa3
	fmul.s	$fa2, $fa4, $fa5
	movfr2gr.s	$a5, $fa0
	movfr2gr.s	$a6, $fa1
	bstrins.d	$a5, $a6, 63, 32
	movfr2gr.s	$a6, $fa2
	bstrpick.d	$a6, $a6, 31, 0
	st.d	$a5, $a2, 0
	st.d	$a6, $a2, 8
	ld.d	$a2, $a0, 120
	addi.w	$a1, $a1, 1
	mod.w	$a1, $a1, $a4
	alsl.d	$a4, $a1, $a2, 4
	slli.d	$a1, $a1, 4
	fldx.s	$fa0, $a2, $a1
	fld.s	$fa1, $a0, 24
	fld.s	$fa2, $a4, 4
	fld.s	$fa3, $a0, 28
	fld.s	$fa4, $a4, 8
	fld.s	$fa5, $a0, 32
	fmul.s	$fa0, $fa0, $fa1
	fmul.s	$fa1, $fa2, $fa3
	fmul.s	$fa2, $fa4, $fa5
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa1
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa2
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $a3, 0
	st.d	$a1, $a3, 8
	ret
.Lfunc_end10:
	.size	_ZNK17btConvexHullShape7getEdgeEiR9btVector3S1_, .Lfunc_end10-_ZNK17btConvexHullShape7getEdgeEiR9btVector3S1_
                                        # -- End function
	.globl	_ZNK17btConvexHullShape9getVertexEiR9btVector3 # -- Begin function _ZNK17btConvexHullShape9getVertexEiR9btVector3
	.p2align	5
	.type	_ZNK17btConvexHullShape9getVertexEiR9btVector3,@function
_ZNK17btConvexHullShape9getVertexEiR9btVector3: # @_ZNK17btConvexHullShape9getVertexEiR9btVector3
# %bb.0:
	ld.d	$a3, $a0, 120
	alsl.d	$a4, $a1, $a3, 4
	slli.d	$a1, $a1, 4
	fldx.s	$fa0, $a3, $a1
	fld.s	$fa1, $a0, 24
	fld.s	$fa2, $a4, 4
	fld.s	$fa3, $a0, 28
	fld.s	$fa4, $a4, 8
	fld.s	$fa5, $a0, 32
	fmul.s	$fa0, $fa0, $fa1
	fmul.s	$fa1, $fa2, $fa3
	fmul.s	$fa2, $fa4, $fa5
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa1
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa2
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $a2, 0
	st.d	$a1, $a2, 8
	ret
.Lfunc_end11:
	.size	_ZNK17btConvexHullShape9getVertexEiR9btVector3, .Lfunc_end11-_ZNK17btConvexHullShape9getVertexEiR9btVector3
                                        # -- End function
	.globl	_ZNK17btConvexHullShape12getNumPlanesEv # -- Begin function _ZNK17btConvexHullShape12getNumPlanesEv
	.p2align	5
	.type	_ZNK17btConvexHullShape12getNumPlanesEv,@function
_ZNK17btConvexHullShape12getNumPlanesEv: # @_ZNK17btConvexHullShape12getNumPlanesEv
# %bb.0:
	move	$a0, $zero
	ret
.Lfunc_end12:
	.size	_ZNK17btConvexHullShape12getNumPlanesEv, .Lfunc_end12-_ZNK17btConvexHullShape12getNumPlanesEv
                                        # -- End function
	.globl	_ZNK17btConvexHullShape8getPlaneER9btVector3S1_i # -- Begin function _ZNK17btConvexHullShape8getPlaneER9btVector3S1_i
	.p2align	5
	.type	_ZNK17btConvexHullShape8getPlaneER9btVector3S1_i,@function
_ZNK17btConvexHullShape8getPlaneER9btVector3S1_i: # @_ZNK17btConvexHullShape8getPlaneER9btVector3S1_i
# %bb.0:
	ret
.Lfunc_end13:
	.size	_ZNK17btConvexHullShape8getPlaneER9btVector3S1_i, .Lfunc_end13-_ZNK17btConvexHullShape8getPlaneER9btVector3S1_i
                                        # -- End function
	.globl	_ZNK17btConvexHullShape8isInsideERK9btVector3f # -- Begin function _ZNK17btConvexHullShape8isInsideERK9btVector3f
	.p2align	5
	.type	_ZNK17btConvexHullShape8isInsideERK9btVector3f,@function
_ZNK17btConvexHullShape8isInsideERK9btVector3f: # @_ZNK17btConvexHullShape8isInsideERK9btVector3f
# %bb.0:
	move	$a0, $zero
	ret
.Lfunc_end14:
	.size	_ZNK17btConvexHullShape8isInsideERK9btVector3f, .Lfunc_end14-_ZNK17btConvexHullShape8isInsideERK9btVector3f
                                        # -- End function
	.section	.text._ZN17btConvexHullShapeD2Ev,"axG",@progbits,_ZN17btConvexHullShapeD2Ev,comdat
	.weak	_ZN17btConvexHullShapeD2Ev      # -- Begin function _ZN17btConvexHullShapeD2Ev
	.p2align	5
	.type	_ZN17btConvexHullShapeD2Ev,@function
_ZN17btConvexHullShapeD2Ev:             # @_ZN17btConvexHullShapeD2Ev
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
	pcalau12i	$a0, %pc_hi20(_ZTV17btConvexHullShape+16)
	addi.d	$a1, $a0, %pc_lo12(_ZTV17btConvexHullShape+16)
	ld.d	$a0, $fp, 120
	st.d	$a1, $fp, 0
	beqz	$a0, .LBB15_3
# %bb.1:
	ld.b	$a1, $fp, 128
	andi	$a1, $a1, 1
	beqz	$a1, .LBB15_3
# %bb.2:
.Ltmp13:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp14:                                # EH_LABEL
.LBB15_3:
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 128
	st.d	$zero, $fp, 120
	st.d	$zero, $fp, 108
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZN13btConvexShapeD2Ev)
	jr	$t8
.LBB15_4:
.Ltmp15:                                # EH_LABEL
	move	$s0, $a0
.Ltmp16:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN13btConvexShapeD2Ev)
	jirl	$ra, $ra, 0
.Ltmp17:                                # EH_LABEL
# %bb.5:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB15_6:
.Ltmp18:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end15:
	.size	_ZN17btConvexHullShapeD2Ev, .Lfunc_end15-_ZN17btConvexHullShapeD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN17btConvexHullShapeD2Ev,"aG",@progbits,_ZN17btConvexHullShapeD2Ev,comdat
	.p2align	2, 0x0
GCC_except_table15:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Ltmp13-.Lfunc_begin1          # >> Call Site 1 <<
	.uleb128 .Ltmp14-.Ltmp13                #   Call between .Ltmp13 and .Ltmp14
	.uleb128 .Ltmp15-.Lfunc_begin1          #     jumps to .Ltmp15
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp14-.Lfunc_begin1          # >> Call Site 2 <<
	.uleb128 .Ltmp16-.Ltmp14                #   Call between .Ltmp14 and .Ltmp16
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp16-.Lfunc_begin1          # >> Call Site 3 <<
	.uleb128 .Ltmp17-.Ltmp16                #   Call between .Ltmp16 and .Ltmp17
	.uleb128 .Ltmp18-.Lfunc_begin1          #     jumps to .Ltmp18
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp17-.Lfunc_begin1          # >> Call Site 4 <<
	.uleb128 .Lfunc_end15-.Ltmp17           #   Call between .Ltmp17 and .Lfunc_end15
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
	.section	.text._ZN17btConvexHullShapeD0Ev,"axG",@progbits,_ZN17btConvexHullShapeD0Ev,comdat
	.weak	_ZN17btConvexHullShapeD0Ev      # -- Begin function _ZN17btConvexHullShapeD0Ev
	.p2align	5
	.type	_ZN17btConvexHullShapeD0Ev,@function
_ZN17btConvexHullShapeD0Ev:             # @_ZN17btConvexHullShapeD0Ev
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
	pcalau12i	$a0, %pc_hi20(_ZTV17btConvexHullShape+16)
	addi.d	$a1, $a0, %pc_lo12(_ZTV17btConvexHullShape+16)
	ld.d	$a0, $fp, 120
	st.d	$a1, $fp, 0
	beqz	$a0, .LBB16_3
# %bb.1:
	ld.b	$a1, $fp, 128
	andi	$a1, $a1, 1
	beqz	$a1, .LBB16_3
# %bb.2:
.Ltmp19:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp20:                                # EH_LABEL
.LBB16_3:
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 128
	st.d	$zero, $fp, 120
	st.d	$zero, $fp, 108
.Ltmp25:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN13btConvexShapeD2Ev)
	jirl	$ra, $ra, 0
.Ltmp26:                                # EH_LABEL
# %bb.4:                                # %_ZN17btConvexHullShapeD2Ev.exit
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_Z21btAlignedFreeInternalPv)
	jr	$t8
.LBB16_5:
.Ltmp21:                                # EH_LABEL
	move	$s0, $a0
.Ltmp22:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN13btConvexShapeD2Ev)
	jirl	$ra, $ra, 0
.Ltmp23:                                # EH_LABEL
	b	.LBB16_8
.LBB16_6:
.Ltmp24:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB16_7:
.Ltmp27:                                # EH_LABEL
	move	$s0, $a0
.LBB16_8:                               # %.body
.Ltmp28:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp29:                                # EH_LABEL
# %bb.9:                                # %_ZN17btConvexHullShapedlEPv.exit
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB16_10:
.Ltmp30:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end16:
	.size	_ZN17btConvexHullShapeD0Ev, .Lfunc_end16-_ZN17btConvexHullShapeD0Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN17btConvexHullShapeD0Ev,"aG",@progbits,_ZN17btConvexHullShapeD0Ev,comdat
	.p2align	2, 0x0
GCC_except_table16:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase2-.Lttbaseref2
.Lttbaseref2:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Ltmp19-.Lfunc_begin2          # >> Call Site 1 <<
	.uleb128 .Ltmp20-.Ltmp19                #   Call between .Ltmp19 and .Ltmp20
	.uleb128 .Ltmp21-.Lfunc_begin2          #     jumps to .Ltmp21
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp25-.Lfunc_begin2          # >> Call Site 2 <<
	.uleb128 .Ltmp26-.Ltmp25                #   Call between .Ltmp25 and .Ltmp26
	.uleb128 .Ltmp27-.Lfunc_begin2          #     jumps to .Ltmp27
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp26-.Lfunc_begin2          # >> Call Site 3 <<
	.uleb128 .Ltmp22-.Ltmp26                #   Call between .Ltmp26 and .Ltmp22
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp22-.Lfunc_begin2          # >> Call Site 4 <<
	.uleb128 .Ltmp23-.Ltmp22                #   Call between .Ltmp22 and .Ltmp23
	.uleb128 .Ltmp24-.Lfunc_begin2          #     jumps to .Ltmp24
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp23-.Lfunc_begin2          # >> Call Site 5 <<
	.uleb128 .Ltmp28-.Ltmp23                #   Call between .Ltmp23 and .Ltmp28
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp28-.Lfunc_begin2          # >> Call Site 6 <<
	.uleb128 .Ltmp29-.Ltmp28                #   Call between .Ltmp28 and .Ltmp29
	.uleb128 .Ltmp30-.Lfunc_begin2          #     jumps to .Ltmp30
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp29-.Lfunc_begin2          # >> Call Site 7 <<
	.uleb128 .Lfunc_end16-.Ltmp29           #   Call between .Ltmp29 and .Lfunc_end16
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
.Lfunc_end17:
	.size	_ZNK21btConvexInternalShape15getLocalScalingEv, .Lfunc_end17-_ZNK21btConvexInternalShape15getLocalScalingEv
                                        # -- End function
	.section	.text._ZNK17btConvexHullShape7getNameEv,"axG",@progbits,_ZNK17btConvexHullShape7getNameEv,comdat
	.weak	_ZNK17btConvexHullShape7getNameEv # -- Begin function _ZNK17btConvexHullShape7getNameEv
	.p2align	5
	.type	_ZNK17btConvexHullShape7getNameEv,@function
_ZNK17btConvexHullShape7getNameEv:      # @_ZNK17btConvexHullShape7getNameEv
# %bb.0:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ret
.Lfunc_end18:
	.size	_ZNK17btConvexHullShape7getNameEv, .Lfunc_end18-_ZNK17btConvexHullShape7getNameEv
                                        # -- End function
	.section	.text._ZN21btConvexInternalShape9setMarginEf,"axG",@progbits,_ZN21btConvexInternalShape9setMarginEf,comdat
	.weak	_ZN21btConvexInternalShape9setMarginEf # -- Begin function _ZN21btConvexInternalShape9setMarginEf
	.p2align	5
	.type	_ZN21btConvexInternalShape9setMarginEf,@function
_ZN21btConvexInternalShape9setMarginEf: # @_ZN21btConvexInternalShape9setMarginEf
# %bb.0:
	fst.s	$fa0, $a0, 56
	ret
.Lfunc_end19:
	.size	_ZN21btConvexInternalShape9setMarginEf, .Lfunc_end19-_ZN21btConvexInternalShape9setMarginEf
                                        # -- End function
	.section	.text._ZNK21btConvexInternalShape9getMarginEv,"axG",@progbits,_ZNK21btConvexInternalShape9getMarginEv,comdat
	.weak	_ZNK21btConvexInternalShape9getMarginEv # -- Begin function _ZNK21btConvexInternalShape9getMarginEv
	.p2align	5
	.type	_ZNK21btConvexInternalShape9getMarginEv,@function
_ZNK21btConvexInternalShape9getMarginEv: # @_ZNK21btConvexInternalShape9getMarginEv
# %bb.0:
	fld.s	$fa0, $a0, 56
	ret
.Lfunc_end20:
	.size	_ZNK21btConvexInternalShape9getMarginEv, .Lfunc_end20-_ZNK21btConvexInternalShape9getMarginEv
                                        # -- End function
	.section	.text._ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv,"axG",@progbits,_ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv,comdat
	.weak	_ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv # -- Begin function _ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv
	.p2align	5
	.type	_ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv,@function
_ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv: # @_ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv
# %bb.0:
	move	$a0, $zero
	ret
.Lfunc_end21:
	.size	_ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv, .Lfunc_end21-_ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv
                                        # -- End function
	.section	.text._ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3,"axG",@progbits,_ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3,comdat
	.weak	_ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3 # -- Begin function _ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3
	.p2align	5
	.type	_ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3,@function
_ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3: # @_ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3
# %bb.0:
	ret
.Lfunc_end22:
	.size	_ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3, .Lfunc_end22-_ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3
                                        # -- End function
	.type	_ZTV17btConvexHullShape,@object # @_ZTV17btConvexHullShape
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTV17btConvexHullShape
	.p2align	3, 0x0
_ZTV17btConvexHullShape:
	.dword	0
	.dword	_ZTI17btConvexHullShape
	.dword	_ZN17btConvexHullShapeD2Ev
	.dword	_ZN17btConvexHullShapeD0Ev
	.dword	_ZNK34btPolyhedralConvexAabbCachingShape7getAabbERK11btTransformR9btVector3S4_
	.dword	_ZNK16btCollisionShape17getBoundingSphereER9btVector3Rf
	.dword	_ZNK16btCollisionShape20getAngularMotionDiscEv
	.dword	_ZNK16btCollisionShape27getContactBreakingThresholdEv
	.dword	_ZN17btConvexHullShape15setLocalScalingERK9btVector3
	.dword	_ZNK21btConvexInternalShape15getLocalScalingEv
	.dword	_ZNK23btPolyhedralConvexShape21calculateLocalInertiaEfR9btVector3
	.dword	_ZNK17btConvexHullShape7getNameEv
	.dword	_ZN21btConvexInternalShape9setMarginEf
	.dword	_ZNK21btConvexInternalShape9getMarginEv
	.dword	_ZNK17btConvexHullShape24localGetSupportingVertexERK9btVector3
	.dword	_ZNK17btConvexHullShape37localGetSupportingVertexWithoutMarginERK9btVector3
	.dword	_ZNK17btConvexHullShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i
	.dword	_ZNK21btConvexInternalShape11getAabbSlowERK11btTransformR9btVector3S4_
	.dword	_ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv
	.dword	_ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3
	.dword	_ZNK17btConvexHullShape14getNumVerticesEv
	.dword	_ZNK17btConvexHullShape11getNumEdgesEv
	.dword	_ZNK17btConvexHullShape7getEdgeEiR9btVector3S1_
	.dword	_ZNK17btConvexHullShape9getVertexEiR9btVector3
	.dword	_ZNK17btConvexHullShape12getNumPlanesEv
	.dword	_ZNK17btConvexHullShape8getPlaneER9btVector3S1_i
	.dword	_ZNK17btConvexHullShape8isInsideERK9btVector3f
	.size	_ZTV17btConvexHullShape, 216

	.type	_ZTI17btConvexHullShape,@object # @_ZTI17btConvexHullShape
	.globl	_ZTI17btConvexHullShape
	.p2align	3, 0x0
_ZTI17btConvexHullShape:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS17btConvexHullShape
	.dword	_ZTI34btPolyhedralConvexAabbCachingShape
	.size	_ZTI17btConvexHullShape, 24

	.type	_ZTS17btConvexHullShape,@object # @_ZTS17btConvexHullShape
	.section	.rodata,"a",@progbits
	.globl	_ZTS17btConvexHullShape
_ZTS17btConvexHullShape:
	.asciz	"17btConvexHullShape"
	.size	_ZTS17btConvexHullShape, 20

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Convex"
	.size	.L.str, 7

	.globl	_ZN17btConvexHullShapeC1EPKfii
	.type	_ZN17btConvexHullShapeC1EPKfii,@function
_ZN17btConvexHullShapeC1EPKfii = _ZN17btConvexHullShapeC2EPKfii
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
	.addrsig_sym _ZTI17btConvexHullShape
	.addrsig_sym _ZTVN10__cxxabiv120__si_class_type_infoE
	.addrsig_sym _ZTS17btConvexHullShape
	.addrsig_sym _ZTI34btPolyhedralConvexAabbCachingShape
