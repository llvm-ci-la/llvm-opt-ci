	.file	"btConvexTriangleMeshShape.cpp"
	.text
	.globl	_ZN25btConvexTriangleMeshShapeC2EP23btStridingMeshInterfaceb # -- Begin function _ZN25btConvexTriangleMeshShapeC2EP23btStridingMeshInterfaceb
	.p2align	5
	.type	_ZN25btConvexTriangleMeshShapeC2EP23btStridingMeshInterfaceb,@function
_ZN25btConvexTriangleMeshShapeC2EP23btStridingMeshInterfaceb: # @_ZN25btConvexTriangleMeshShapeC2EP23btStridingMeshInterfaceb
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
	move	$s0, $a2
	move	$s1, $a1
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_ZN34btPolyhedralConvexAabbCachingShapeC2Ev)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(_ZTV25btConvexTriangleMeshShape+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV25btConvexTriangleMeshShape+16)
	st.d	$a0, $fp, 0
	st.d	$s1, $fp, 104
	ori	$a0, $zero, 3
	st.w	$a0, $fp, 8
	beqz	$s0, .LBB0_2
# %bb.1:
.Ltmp0:                                 # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN34btPolyhedralConvexAabbCachingShape15recalcLocalAabbEv)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
.LBB0_2:
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB0_3:
.Ltmp2:                                 # EH_LABEL
	move	$s0, $a0
.Ltmp3:                                 # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN13btConvexShapeD2Ev)
	jirl	$ra, $ra, 0
.Ltmp4:                                 # EH_LABEL
# %bb.4:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB0_5:
.Ltmp5:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	_ZN25btConvexTriangleMeshShapeC2EP23btStridingMeshInterfaceb, .Lfunc_end0-_ZN25btConvexTriangleMeshShapeC2EP23btStridingMeshInterfaceb
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
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZNK25btConvexTriangleMeshShape37localGetSupportingVertexWithoutMarginERK9btVector3
.LCPI2_0:
	.word	0x5d5e0b6b                      # float 9.99999984E+17
	.word	0x5d5e0b6b                      # float 9.99999984E+17
	.word	0x5d5e0b6b                      # float 9.99999984E+17
	.word	0x00000000                      # float 0
.LCPI2_1:
	.dword	-2495544585613341845            # 0xdd5e0b6bdd5e0b6b
	.dword	3713928043                      # 0xdd5e0b6b
	.text
	.globl	_ZNK25btConvexTriangleMeshShape37localGetSupportingVertexWithoutMarginERK9btVector3
	.p2align	5
	.type	_ZNK25btConvexTriangleMeshShape37localGetSupportingVertexWithoutMarginERK9btVector3,@function
_ZNK25btConvexTriangleMeshShape37localGetSupportingVertexWithoutMarginERK9btVector3: # @_ZNK25btConvexTriangleMeshShape37localGetSupportingVertexWithoutMarginERK9btVector3
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	fld.s	$fa1, $a1, 4
	fld.s	$fa3, $a1, 0
	fld.s	$fa2, $a1, 8
	fmul.s	$fa0, $fa1, $fa1
	fmadd.s	$fa0, $fa3, $fa3, $fa0
	fmadd.s	$fa4, $fa2, $fa2, $fa0
	lu12i.w	$a2, 232731
	ori	$a2, $a2, 1815
	movgr2fr.w	$fa0, $a2
	fcmp.clt.s	$fcc0, $fa4, $fa0
	bceqz	$fcc0, .LBB2_2
# %bb.1:
	movgr2fr.w	$fa1, $zero
	vldi	$vr3, -1168
	fmov.s	$fa2, $fa1
	fmov.s	$fa0, $fa1
	b	.LBB2_3
.LBB2_2:
	fld.s	$fa0, $a1, 12
	frsqrt.s	$fa4, $fa4
	fmul.s	$fa3, $fa3, $fa4
	fmul.s	$fa1, $fa1, $fa4
	fmul.s	$fa2, $fa2, $fa4
.LBB2_3:
	pcalau12i	$a1, %pc_hi20(_ZTV26LocalSupportVertexCallback+16)
	addi.d	$a1, $a1, %pc_lo12(_ZTV26LocalSupportVertexCallback+16)
	st.d	$a1, $sp, 56
	vrepli.b	$vr4, 0
	vst	$vr4, $sp, 64
	lu12i.w	$a1, -141856
	ori	$a1, $a1, 2923
	lu32i.d	$a1, 0
	st.w	$a1, $sp, 80
	fst.s	$fa3, $sp, 84
	pcalau12i	$a1, %pc_hi20(.LCPI2_1)
	vld	$vr3, $a1, %pc_lo12(.LCPI2_1)
	ld.d	$a0, $a0, 104
	fst.s	$fa1, $sp, 88
	fst.s	$fa2, $sp, 92
	vst	$vr3, $sp, 16
	ld.d	$a1, $a0, 0
	pcalau12i	$a2, %pc_hi20(.LCPI2_0)
	vld	$vr1, $a2, %pc_lo12(.LCPI2_0)
	fst.s	$fa0, $sp, 96
	ld.d	$a4, $a1, 16
	vst	$vr1, $sp, 32
.Ltmp6:                                 # EH_LABEL
	addi.d	$a1, $sp, 56
	addi.d	$a2, $sp, 16
	addi.d	$a3, $sp, 32
	jirl	$ra, $a4, 0
.Ltmp7:                                 # EH_LABEL
# %bb.4:
	ld.d	$fp, $sp, 64
	ld.d	$s0, $sp, 72
	addi.d	$a0, $sp, 56
	pcaddu18i	$ra, %call36(_ZN31btInternalTriangleIndexCallbackD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s0
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.LBB2_5:
.Ltmp8:                                 # EH_LABEL
	move	$fp, $a0
.Ltmp9:                                 # EH_LABEL
	addi.d	$a0, $sp, 56
	pcaddu18i	$ra, %call36(_ZN31btInternalTriangleIndexCallbackD2Ev)
	jirl	$ra, $ra, 0
.Ltmp10:                                # EH_LABEL
# %bb.6:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB2_7:
.Ltmp11:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	_ZNK25btConvexTriangleMeshShape37localGetSupportingVertexWithoutMarginERK9btVector3, .Lfunc_end2-_ZNK25btConvexTriangleMeshShape37localGetSupportingVertexWithoutMarginERK9btVector3
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
	.uleb128 .Ltmp6-.Lfunc_begin1           # >> Call Site 1 <<
	.uleb128 .Ltmp7-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp7
	.uleb128 .Ltmp8-.Lfunc_begin1           #     jumps to .Ltmp8
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp7-.Lfunc_begin1           # >> Call Site 2 <<
	.uleb128 .Ltmp9-.Ltmp7                  #   Call between .Ltmp7 and .Ltmp9
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp9-.Lfunc_begin1           # >> Call Site 3 <<
	.uleb128 .Ltmp10-.Ltmp9                 #   Call between .Ltmp9 and .Ltmp10
	.uleb128 .Ltmp11-.Lfunc_begin1          #     jumps to .Ltmp11
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp10-.Lfunc_begin1          # >> Call Site 4 <<
	.uleb128 .Lfunc_end2-.Ltmp10            #   Call between .Ltmp10 and .Lfunc_end2
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
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZNK25btConvexTriangleMeshShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i
.LCPI3_0:
	.word	0x5d5e0b6b                      # float 9.99999984E+17
	.word	0x5d5e0b6b                      # float 9.99999984E+17
	.word	0x5d5e0b6b                      # float 9.99999984E+17
	.word	0x00000000                      # float 0
.LCPI3_1:
	.dword	-2495544585613341845            # 0xdd5e0b6bdd5e0b6b
	.dword	3713928043                      # 0xdd5e0b6b
	.text
	.globl	_ZNK25btConvexTriangleMeshShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i
	.p2align	5
	.type	_ZNK25btConvexTriangleMeshShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i,@function
_ZNK25btConvexTriangleMeshShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i: # @_ZNK25btConvexTriangleMeshShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception2
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	blez	$a3, .LBB3_11
# %bb.1:                                # %.lr.ph.preheader
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	ori	$a1, $zero, 1
	lu12i.w	$a0, -141856
	bne	$a3, $a1, .LBB3_3
# %bb.2:
	move	$a1, $zero
	b	.LBB3_6
.LBB3_3:                                # %vector.ph
	bstrpick.d	$a1, $a3, 30, 1
	slli.d	$a1, $a1, 1
	addi.d	$a2, $fp, 28
	ori	$a4, $a0, 2923
	lu32i.d	$a4, 0
	move	$a5, $a1
	.p2align	4, , 16
.LBB3_4:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a4, $a2, -16
	st.w	$a4, $a2, 0
	addi.d	$a5, $a5, -2
	addi.d	$a2, $a2, 32
	bnez	$a5, .LBB3_4
# %bb.5:                                # %middle.block
	beq	$a1, $a3, .LBB3_8
.LBB3_6:                                # %.lr.ph.preheader30
	alsl.d	$a2, $a1, $fp, 4
	addi.d	$a2, $a2, 12
	sub.d	$a1, $a3, $a1
	ori	$a4, $a0, 2923
	lu32i.d	$a4, 0
	.p2align	4, , 16
.LBB3_7:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a4, $a2, 0
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 16
	bnez	$a1, .LBB3_7
.LBB3_8:                                # %.lr.ph25
	addi.d	$s2, $sp, 112
	addi.d	$s3, $sp, 132
	bstrpick.d	$s4, $a3, 31, 0
	pcalau12i	$a1, %pc_hi20(_ZTV26LocalSupportVertexCallback+16)
	addi.d	$s5, $a1, %pc_lo12(_ZTV26LocalSupportVertexCallback+16)
	pcalau12i	$a1, %pc_hi20(.LCPI3_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI3_0)
	vst	$vr0, $sp, 48                   # 16-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.LCPI3_1)
	vld	$vr0, $a1, %pc_lo12(.LCPI3_1)
	vst	$vr0, $sp, 32                   # 16-byte Folded Spill
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	ori	$s6, $a0, 2923
	lu32i.d	$s6, 0
	.p2align	4, , 16
.LBB3_9:                                # =>This Inner Loop Header: Depth=1
	vld	$vr0, $s0, 0
	st.d	$s5, $sp, 104
	ld.d	$a0, $s1, 104
	vld	$vr1, $sp, 16                   # 16-byte Folded Reload
	vst	$vr1, $s2, 0
	vst	$vr0, $s3, 0
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vst	$vr0, $sp, 64
	ld.d	$a1, $a0, 0
	st.w	$s6, $sp, 128
	ld.d	$a4, $a1, 16
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	vst	$vr0, $sp, 80
.Ltmp12:                                # EH_LABEL
	addi.d	$a1, $sp, 104
	addi.d	$a2, $sp, 64
	addi.d	$a3, $sp, 80
	jirl	$ra, $a4, 0
.Ltmp13:                                # EH_LABEL
# %bb.10:                               #   in Loop: Header=BB3_9 Depth=1
	vld	$vr0, $sp, 112
	vst	$vr0, $fp, 0
	addi.d	$a0, $sp, 104
	pcaddu18i	$ra, %call36(_ZN31btInternalTriangleIndexCallbackD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 16
	addi.d	$s4, $s4, -1
	addi.d	$s0, $s0, 16
	bnez	$s4, .LBB3_9
.LBB3_11:                               # %._crit_edge
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
.LBB3_12:
.Ltmp14:                                # EH_LABEL
	move	$fp, $a0
.Ltmp15:                                # EH_LABEL
	addi.d	$a0, $sp, 104
	pcaddu18i	$ra, %call36(_ZN31btInternalTriangleIndexCallbackD2Ev)
	jirl	$ra, $ra, 0
.Ltmp16:                                # EH_LABEL
# %bb.13:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB3_14:
.Ltmp17:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end3:
	.size	_ZNK25btConvexTriangleMeshShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i, .Lfunc_end3-_ZNK25btConvexTriangleMeshShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table3:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase2-.Lttbaseref2
.Lttbaseref2:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Ltmp12-.Lfunc_begin2          # >> Call Site 1 <<
	.uleb128 .Ltmp13-.Ltmp12                #   Call between .Ltmp12 and .Ltmp13
	.uleb128 .Ltmp14-.Lfunc_begin2          #     jumps to .Ltmp14
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp13-.Lfunc_begin2          # >> Call Site 2 <<
	.uleb128 .Ltmp15-.Ltmp13                #   Call between .Ltmp13 and .Ltmp15
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp15-.Lfunc_begin2          # >> Call Site 3 <<
	.uleb128 .Ltmp16-.Ltmp15                #   Call between .Ltmp15 and .Ltmp16
	.uleb128 .Ltmp17-.Lfunc_begin2          #     jumps to .Ltmp17
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp16-.Lfunc_begin2          # >> Call Site 4 <<
	.uleb128 .Lfunc_end3-.Ltmp16            #   Call between .Ltmp16 and .Lfunc_end3
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
	.globl	_ZNK25btConvexTriangleMeshShape24localGetSupportingVertexERK9btVector3 # -- Begin function _ZNK25btConvexTriangleMeshShape24localGetSupportingVertexERK9btVector3
	.p2align	5
	.type	_ZNK25btConvexTriangleMeshShape24localGetSupportingVertexERK9btVector3,@function
_ZNK25btConvexTriangleMeshShape24localGetSupportingVertexERK9btVector3: # @_ZNK25btConvexTriangleMeshShape24localGetSupportingVertexERK9btVector3
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
	bcnez	$fcc0, .LBB4_2
# %bb.1:
	movgr2fr.w	$fs0, $fp
	movgr2fr.w	$fs1, $s3
	fld.s	$fa0, $s2, 4
	fld.s	$fa1, $s2, 0
	fld.s	$fa2, $s2, 8
	movgr2fr.w	$fs2, $s1
	fmul.s	$fa3, $fa0, $fa0
	fmadd.s	$fa3, $fa1, $fa1, $fa3
	fmadd.s	$fa3, $fa2, $fa2, $fa3
	lu12i.w	$a0, 165888
	movgr2fr.w	$fa4, $a0
	fcmp.clt.s	$fcc0, $fa3, $fa4
	vldi	$vr3, -1040
	fsel	$fa1, $fa1, $fa3, $fcc0
	fsel	$fa0, $fa0, $fa3, $fcc0
	fsel	$fa2, $fa2, $fa3, $fcc0
	fmul.s	$fa3, $fa0, $fa0
	ld.d	$a0, $s0, 0
	fmadd.s	$fa3, $fa1, $fa1, $fa3
	fmadd.s	$fa3, $fa2, $fa2, $fa3
	frsqrt.s	$fa3, $fa3
	ld.d	$a1, $a0, 88
	fmul.s	$fs3, $fa1, $fa3
	fmul.s	$fs4, $fa0, $fa3
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
	b	.LBB4_3
.LBB4_2:
	move	$a0, $fp
.LBB4_3:
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
.Lfunc_end4:
	.size	_ZNK25btConvexTriangleMeshShape24localGetSupportingVertexERK9btVector3, .Lfunc_end4-_ZNK25btConvexTriangleMeshShape24localGetSupportingVertexERK9btVector3
	.cfi_endproc
                                        # -- End function
	.globl	_ZNK25btConvexTriangleMeshShape14getNumVerticesEv # -- Begin function _ZNK25btConvexTriangleMeshShape14getNumVerticesEv
	.p2align	5
	.type	_ZNK25btConvexTriangleMeshShape14getNumVerticesEv,@function
_ZNK25btConvexTriangleMeshShape14getNumVerticesEv: # @_ZNK25btConvexTriangleMeshShape14getNumVerticesEv
# %bb.0:
	move	$a0, $zero
	ret
.Lfunc_end5:
	.size	_ZNK25btConvexTriangleMeshShape14getNumVerticesEv, .Lfunc_end5-_ZNK25btConvexTriangleMeshShape14getNumVerticesEv
                                        # -- End function
	.globl	_ZNK25btConvexTriangleMeshShape11getNumEdgesEv # -- Begin function _ZNK25btConvexTriangleMeshShape11getNumEdgesEv
	.p2align	5
	.type	_ZNK25btConvexTriangleMeshShape11getNumEdgesEv,@function
_ZNK25btConvexTriangleMeshShape11getNumEdgesEv: # @_ZNK25btConvexTriangleMeshShape11getNumEdgesEv
# %bb.0:
	move	$a0, $zero
	ret
.Lfunc_end6:
	.size	_ZNK25btConvexTriangleMeshShape11getNumEdgesEv, .Lfunc_end6-_ZNK25btConvexTriangleMeshShape11getNumEdgesEv
                                        # -- End function
	.globl	_ZNK25btConvexTriangleMeshShape7getEdgeEiR9btVector3S1_ # -- Begin function _ZNK25btConvexTriangleMeshShape7getEdgeEiR9btVector3S1_
	.p2align	5
	.type	_ZNK25btConvexTriangleMeshShape7getEdgeEiR9btVector3S1_,@function
_ZNK25btConvexTriangleMeshShape7getEdgeEiR9btVector3S1_: # @_ZNK25btConvexTriangleMeshShape7getEdgeEiR9btVector3S1_
# %bb.0:
	ret
.Lfunc_end7:
	.size	_ZNK25btConvexTriangleMeshShape7getEdgeEiR9btVector3S1_, .Lfunc_end7-_ZNK25btConvexTriangleMeshShape7getEdgeEiR9btVector3S1_
                                        # -- End function
	.globl	_ZNK25btConvexTriangleMeshShape9getVertexEiR9btVector3 # -- Begin function _ZNK25btConvexTriangleMeshShape9getVertexEiR9btVector3
	.p2align	5
	.type	_ZNK25btConvexTriangleMeshShape9getVertexEiR9btVector3,@function
_ZNK25btConvexTriangleMeshShape9getVertexEiR9btVector3: # @_ZNK25btConvexTriangleMeshShape9getVertexEiR9btVector3
# %bb.0:
	ret
.Lfunc_end8:
	.size	_ZNK25btConvexTriangleMeshShape9getVertexEiR9btVector3, .Lfunc_end8-_ZNK25btConvexTriangleMeshShape9getVertexEiR9btVector3
                                        # -- End function
	.globl	_ZNK25btConvexTriangleMeshShape12getNumPlanesEv # -- Begin function _ZNK25btConvexTriangleMeshShape12getNumPlanesEv
	.p2align	5
	.type	_ZNK25btConvexTriangleMeshShape12getNumPlanesEv,@function
_ZNK25btConvexTriangleMeshShape12getNumPlanesEv: # @_ZNK25btConvexTriangleMeshShape12getNumPlanesEv
# %bb.0:
	move	$a0, $zero
	ret
.Lfunc_end9:
	.size	_ZNK25btConvexTriangleMeshShape12getNumPlanesEv, .Lfunc_end9-_ZNK25btConvexTriangleMeshShape12getNumPlanesEv
                                        # -- End function
	.globl	_ZNK25btConvexTriangleMeshShape8getPlaneER9btVector3S1_i # -- Begin function _ZNK25btConvexTriangleMeshShape8getPlaneER9btVector3S1_i
	.p2align	5
	.type	_ZNK25btConvexTriangleMeshShape8getPlaneER9btVector3S1_i,@function
_ZNK25btConvexTriangleMeshShape8getPlaneER9btVector3S1_i: # @_ZNK25btConvexTriangleMeshShape8getPlaneER9btVector3S1_i
# %bb.0:
	ret
.Lfunc_end10:
	.size	_ZNK25btConvexTriangleMeshShape8getPlaneER9btVector3S1_i, .Lfunc_end10-_ZNK25btConvexTriangleMeshShape8getPlaneER9btVector3S1_i
                                        # -- End function
	.globl	_ZNK25btConvexTriangleMeshShape8isInsideERK9btVector3f # -- Begin function _ZNK25btConvexTriangleMeshShape8isInsideERK9btVector3f
	.p2align	5
	.type	_ZNK25btConvexTriangleMeshShape8isInsideERK9btVector3f,@function
_ZNK25btConvexTriangleMeshShape8isInsideERK9btVector3f: # @_ZNK25btConvexTriangleMeshShape8isInsideERK9btVector3f
# %bb.0:
	move	$a0, $zero
	ret
.Lfunc_end11:
	.size	_ZNK25btConvexTriangleMeshShape8isInsideERK9btVector3f, .Lfunc_end11-_ZNK25btConvexTriangleMeshShape8isInsideERK9btVector3f
                                        # -- End function
	.globl	_ZN25btConvexTriangleMeshShape15setLocalScalingERK9btVector3 # -- Begin function _ZN25btConvexTriangleMeshShape15setLocalScalingERK9btVector3
	.p2align	5
	.type	_ZN25btConvexTriangleMeshShape15setLocalScalingERK9btVector3,@function
_ZN25btConvexTriangleMeshShape15setLocalScalingERK9btVector3: # @_ZN25btConvexTriangleMeshShape15setLocalScalingERK9btVector3
	.cfi_startproc
# %bb.0:
	ld.d	$a2, $a0, 104
	vld	$vr0, $a1, 0
	vst	$vr0, $a2, 8
	pcaddu18i	$t8, %call36(_ZN34btPolyhedralConvexAabbCachingShape15recalcLocalAabbEv)
	jr	$t8
.Lfunc_end12:
	.size	_ZN25btConvexTriangleMeshShape15setLocalScalingERK9btVector3, .Lfunc_end12-_ZN25btConvexTriangleMeshShape15setLocalScalingERK9btVector3
	.cfi_endproc
                                        # -- End function
	.globl	_ZNK25btConvexTriangleMeshShape15getLocalScalingEv # -- Begin function _ZNK25btConvexTriangleMeshShape15getLocalScalingEv
	.p2align	5
	.type	_ZNK25btConvexTriangleMeshShape15getLocalScalingEv,@function
_ZNK25btConvexTriangleMeshShape15getLocalScalingEv: # @_ZNK25btConvexTriangleMeshShape15getLocalScalingEv
# %bb.0:
	ld.d	$a0, $a0, 104
	addi.d	$a0, $a0, 8
	ret
.Lfunc_end13:
	.size	_ZNK25btConvexTriangleMeshShape15getLocalScalingEv, .Lfunc_end13-_ZNK25btConvexTriangleMeshShape15getLocalScalingEv
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZNK25btConvexTriangleMeshShape31calculatePrincipalAxisTransformER11btTransformR9btVector3Rf
.LCPI14_0:
	.word	0x5d5e0b6b                      # float 9.99999984E+17
	.word	0x5d5e0b6b                      # float 9.99999984E+17
	.word	0x5d5e0b6b                      # float 9.99999984E+17
	.word	0x00000000                      # float 0
.LCPI14_1:
	.dword	-2495544585613341845            # 0xdd5e0b6bdd5e0b6b
	.dword	3713928043                      # 0xdd5e0b6b
	.text
	.globl	_ZNK25btConvexTriangleMeshShape31calculatePrincipalAxisTransformER11btTransformR9btVector3Rf
	.p2align	5
	.type	_ZNK25btConvexTriangleMeshShape31calculatePrincipalAxisTransformER11btTransformR9btVector3Rf,@function
_ZNK25btConvexTriangleMeshShape31calculatePrincipalAxisTransformER11btTransformR9btVector3Rf: # @_ZNK25btConvexTriangleMeshShape31calculatePrincipalAxisTransformER11btTransformR9btVector3Rf
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception3
# %bb.0:
	addi.d	$sp, $sp, -240
	.cfi_def_cfa_offset 240
	st.d	$ra, $sp, 232                   # 8-byte Folded Spill
	st.d	$fp, $sp, 224                   # 8-byte Folded Spill
	st.d	$s0, $sp, 216                   # 8-byte Folded Spill
	st.d	$s1, $sp, 208                   # 8-byte Folded Spill
	st.d	$s2, $sp, 200                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	move	$s0, $a3
	move	$fp, $a2
	move	$s1, $a1
	move	$s2, $a0
	pcalau12i	$a0, %pc_hi20(_ZTVZNK25btConvexTriangleMeshShape31calculatePrincipalAxisTransformER11btTransformR9btVector3RfE14CenterCallback+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTVZNK25btConvexTriangleMeshShape31calculatePrincipalAxisTransformER11btTransformR9btVector3RfE14CenterCallback+16)
	st.d	$a0, $sp, 152
	ori	$a0, $zero, 1
	pcalau12i	$a1, %pc_hi20(.LCPI14_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI14_0)
	st.b	$a0, $sp, 160
	vrepli.b	$vr1, 0
	vst	$vr1, $sp, 164
	vst	$vr0, $sp, 128
	pcalau12i	$a0, %pc_hi20(.LCPI14_1)
	vld	$vr0, $a0, %pc_lo12(.LCPI14_1)
	ld.d	$a0, $s2, 104
	vst	$vr1, $sp, 16                   # 16-byte Folded Spill
	vst	$vr1, $sp, 180
	st.w	$zero, $sp, 196
	vst	$vr0, $sp, 48
	ld.d	$a1, $a0, 0
	ld.d	$a4, $a1, 16
.Ltmp18:                                # EH_LABEL
	addi.d	$a1, $sp, 152
	addi.d	$a2, $sp, 48
	addi.d	$a3, $sp, 128
	jirl	$ra, $a4, 0
.Ltmp19:                                # EH_LABEL
# %bb.1:
	fld.s	$fa0, $sp, 196
	movgr2fr.w	$fa1, $zero
	fcmp.cule.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB14_3
# %bb.2:
	fld.s	$fa1, $sp, 180
	fld.s	$fa2, $sp, 184
	fld.s	$fa3, $sp, 188
	frecip.s	$fa4, $fa0
	fmul.s	$fa1, $fa4, $fa1
	fmul.s	$fa2, $fa4, $fa2
	fmul.s	$fa3, $fa4, $fa3
	movfr2gr.s	$a0, $fa1
	movfr2gr.s	$a1, $fa2
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa3
	bstrpick.d	$a1, $a1, 31, 0
	b	.LBB14_4
.LBB14_3:
	ld.d	$a0, $sp, 164
	ld.d	$a1, $sp, 172
.LBB14_4:
	st.d	$a0, $s1, 48
	st.d	$a1, $s1, 56
	lu12i.w	$a2, 254634
	ori	$a2, $a2, 2731
	movgr2fr.w	$fa1, $a2
	fmul.s	$fa0, $fa0, $fa1
	fst.s	$fa0, $s0, 0
	pcalau12i	$a2, %pc_hi20(_ZTVZNK25btConvexTriangleMeshShape31calculatePrincipalAxisTransformER11btTransformR9btVector3RfE15InertiaCallback+16)
	addi.d	$a2, $a2, %pc_lo12(_ZTVZNK25btConvexTriangleMeshShape31calculatePrincipalAxisTransformER11btTransformR9btVector3RfE15InertiaCallback+16)
	st.d	$a2, $sp, 48
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 56
	vst	$vr0, $sp, 72
	vst	$vr0, $sp, 88
	st.d	$a0, $sp, 104
	st.d	$a1, $sp, 112
	ld.d	$a0, $s2, 104
	ld.wu	$a1, $sp, 128
	ld.w	$a2, $sp, 132
	ld.wu	$a3, $sp, 136
	lu12i.w	$a4, -524288
	lu32i.d	$a4, 0
	xor	$a1, $a1, $a4
	xor	$a2, $a2, $a4
	slli.d	$a2, $a2, 32
	or	$a1, $a2, $a1
	xor	$a2, $a3, $a4
	st.d	$a1, $sp, 32
	st.d	$a2, $sp, 40
	ld.d	$a1, $a0, 0
	ld.d	$a4, $a1, 16
.Ltmp21:                                # EH_LABEL
	addi.d	$a1, $sp, 48
	addi.d	$a2, $sp, 32
	addi.d	$a3, $sp, 128
	jirl	$ra, $a4, 0
.Ltmp22:                                # EH_LABEL
# %bb.5:
.Ltmp24:                                # EH_LABEL
	addi.d	$a0, $sp, 56
	lu12i.w	$a1, 225916
	ori	$a1, $a1, 1452
	movgr2fr.w	$fa0, $a1
	ori	$a2, $zero, 20
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZN11btMatrix3x311diagonalizeERS_fi)
	jirl	$ra, $ra, 0
.Ltmp25:                                # EH_LABEL
# %bb.6:
	fld.s	$fa0, $sp, 56
	fld.s	$fa1, $sp, 76
	fld.s	$fa2, $sp, 96
	fst.s	$fa0, $fp, 0
	fst.s	$fa1, $fp, 4
	fst.s	$fa2, $fp, 8
	st.w	$zero, $fp, 12
	fld.s	$fa3, $s0, 0
	frecip.s	$fa3, $fa3
	fmul.s	$fa0, $fa0, $fa3
	fst.s	$fa0, $fp, 0
	fmul.s	$fa0, $fa1, $fa3
	fst.s	$fa0, $fp, 4
	fmul.s	$fa0, $fa2, $fa3
	fst.s	$fa0, $fp, 8
.Ltmp29:                                # EH_LABEL
	addi.d	$a0, $sp, 48
	pcaddu18i	$ra, %call36(_ZN31btInternalTriangleIndexCallbackD2Ev)
	jirl	$ra, $ra, 0
.Ltmp30:                                # EH_LABEL
# %bb.7:
	addi.d	$a0, $sp, 152
	pcaddu18i	$ra, %call36(_ZN31btInternalTriangleIndexCallbackD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 224                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 232                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 240
	ret
.LBB14_8:
.Ltmp31:                                # EH_LABEL
	b	.LBB14_13
.LBB14_9:
.Ltmp26:                                # EH_LABEL
	b	.LBB14_11
.LBB14_10:
.Ltmp23:                                # EH_LABEL
.LBB14_11:
	move	$fp, $a0
.Ltmp27:                                # EH_LABEL
	addi.d	$a0, $sp, 48
	pcaddu18i	$ra, %call36(_ZN31btInternalTriangleIndexCallbackD2Ev)
	jirl	$ra, $ra, 0
.Ltmp28:                                # EH_LABEL
	b	.LBB14_14
.LBB14_12:
.Ltmp20:                                # EH_LABEL
.LBB14_13:
	move	$fp, $a0
.LBB14_14:
.Ltmp32:                                # EH_LABEL
	addi.d	$a0, $sp, 152
	pcaddu18i	$ra, %call36(_ZN31btInternalTriangleIndexCallbackD2Ev)
	jirl	$ra, $ra, 0
.Ltmp33:                                # EH_LABEL
# %bb.15:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB14_16:
.Ltmp34:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end14:
	.size	_ZNK25btConvexTriangleMeshShape31calculatePrincipalAxisTransformER11btTransformR9btVector3Rf, .Lfunc_end14-_ZNK25btConvexTriangleMeshShape31calculatePrincipalAxisTransformER11btTransformR9btVector3Rf
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table14:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase3-.Lttbaseref3
.Lttbaseref3:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Ltmp18-.Lfunc_begin3          # >> Call Site 1 <<
	.uleb128 .Ltmp19-.Ltmp18                #   Call between .Ltmp18 and .Ltmp19
	.uleb128 .Ltmp20-.Lfunc_begin3          #     jumps to .Ltmp20
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp21-.Lfunc_begin3          # >> Call Site 2 <<
	.uleb128 .Ltmp22-.Ltmp21                #   Call between .Ltmp21 and .Ltmp22
	.uleb128 .Ltmp23-.Lfunc_begin3          #     jumps to .Ltmp23
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp24-.Lfunc_begin3          # >> Call Site 3 <<
	.uleb128 .Ltmp25-.Ltmp24                #   Call between .Ltmp24 and .Ltmp25
	.uleb128 .Ltmp26-.Lfunc_begin3          #     jumps to .Ltmp26
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp29-.Lfunc_begin3          # >> Call Site 4 <<
	.uleb128 .Ltmp30-.Ltmp29                #   Call between .Ltmp29 and .Ltmp30
	.uleb128 .Ltmp31-.Lfunc_begin3          #     jumps to .Ltmp31
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp30-.Lfunc_begin3          # >> Call Site 5 <<
	.uleb128 .Ltmp27-.Ltmp30                #   Call between .Ltmp30 and .Ltmp27
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp27-.Lfunc_begin3          # >> Call Site 6 <<
	.uleb128 .Ltmp33-.Ltmp27                #   Call between .Ltmp27 and .Ltmp33
	.uleb128 .Ltmp34-.Lfunc_begin3          #     jumps to .Ltmp34
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp33-.Lfunc_begin3          # >> Call Site 7 <<
	.uleb128 .Lfunc_end14-.Ltmp33           #   Call between .Ltmp33 and .Lfunc_end14
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
	.section	.text._ZN11btMatrix3x311diagonalizeERS_fi,"axG",@progbits,_ZN11btMatrix3x311diagonalizeERS_fi,comdat
	.weak	_ZN11btMatrix3x311diagonalizeERS_fi # -- Begin function _ZN11btMatrix3x311diagonalizeERS_fi
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
	blez	$a2, .LBB15_11
# %bb.1:                                # %.lr.ph
	addi.d	$a3, $a1, 16
	addi.d	$a4, $a1, 32
	ori	$a5, $zero, 2
	lu12i.w	$a6, 313856
	movgr2fr.w	$fa1, $a6
	vldi	$vr2, -1168
	movgr2fr.w	$fa3, $zero
	ori	$a6, $zero, 1
	vldi	$vr4, -1184
	vldi	$vr5, -1280
	vldi	$vr6, -1056
	lu12i.w	$a7, 212992
	b	.LBB15_4
	.p2align	4, , 16
.LBB15_2:                               #   in Loop: Header=BB15_4 Depth=1
	fdiv.s	$ft0, $fa4, $ft0
	fadd.s	$ft0, $ft0, $fa5
	fmul.s	$fa7, $fa7, $ft0
	frecip.s	$ft2, $fa7
	fmul.s	$fa7, $ft2, $fa6
	fmadd.s	$fa7, $fa7, $ft2, $fa2
.LBB15_3:                               #   in Loop: Header=BB15_4 Depth=1
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
	bge	$a6, $t3, .LBB15_11
.LBB15_4:                               # =>This Inner Loop Header: Depth=1
	fld.s	$fa7, $a0, 4
	fld.s	$ft0, $a0, 8
	fabs.s	$fa7, $fa7
	fld.s	$ft1, $a0, 24
	fabs.s	$ft0, $ft0
	fcmp.clt.s	$fcc0, $fa7, $ft0
	fsel	$fa7, $fa7, $ft0, $fcc0
	fabs.s	$ft0, $ft1
	fcmp.cule.s	$fcc1, $ft0, $fa7
	bcnez	$fcc1, .LBB15_6
# %bb.5:                                #   in Loop: Header=BB15_4 Depth=1
	move	$t0, $zero
	ori	$t5, $zero, 1
	ori	$t4, $zero, 2
	fmov.s	$fa7, $ft0
	b	.LBB15_7
	.p2align	4, , 16
.LBB15_6:                               #   in Loop: Header=BB15_4 Depth=1
	move	$t5, $zero
	movcf2gr	$t1, $fcc0
	sub.d	$t0, $a5, $t1
	addi.d	$t4, $t1, 1
.LBB15_7:                               #   in Loop: Header=BB15_4 Depth=1
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
	bcnez	$fcc0, .LBB15_9
# %bb.8:                                #   in Loop: Header=BB15_4 Depth=1
	movgr2fr.w	$ft1, $a7
	fmul.s	$ft0, $ft0, $ft1
	fcmp.cle.s	$fcc0, $fa7, $ft0
	ori	$a2, $zero, 1
	bcnez	$fcc0, .LBB15_11
.LBB15_9:                               #   in Loop: Header=BB15_4 Depth=1
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
	bcnez	$fcc0, .LBB15_2
# %bb.10:                               #   in Loop: Header=BB15_4 Depth=1
	fadd.s	$ft0, $ft0, $fa2
	fsqrt.s	$ft0, $ft0
	fneg.s	$ft2, $ft0
	fcmp.cult.s	$fcc0, $fa7, $fa3
	fsel	$ft0, $ft0, $ft2, $fcc0
	fadd.s	$fa7, $fa7, $ft0
	frecip.s	$ft2, $fa7
	fmadd.s	$fa7, $ft2, $ft2, $fa2
	frsqrt.s	$fa7, $fa7
	b	.LBB15_3
.LBB15_11:                              # %.critedge
	ret
.Lfunc_end15:
	.size	_ZN11btMatrix3x311diagonalizeERS_fi, .Lfunc_end15-_ZN11btMatrix3x311diagonalizeERS_fi
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN25btConvexTriangleMeshShapeD0Ev,"axG",@progbits,_ZN25btConvexTriangleMeshShapeD0Ev,comdat
	.weak	_ZN25btConvexTriangleMeshShapeD0Ev # -- Begin function _ZN25btConvexTriangleMeshShapeD0Ev
	.p2align	5
	.type	_ZN25btConvexTriangleMeshShapeD0Ev,@function
_ZN25btConvexTriangleMeshShapeD0Ev:     # @_ZN25btConvexTriangleMeshShapeD0Ev
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
.Ltmp35:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN13btConvexShapeD2Ev)
	jirl	$ra, $ra, 0
.Ltmp36:                                # EH_LABEL
# %bb.1:
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_Z21btAlignedFreeInternalPv)
	jr	$t8
.LBB16_2:
.Ltmp37:                                # EH_LABEL
	move	$s0, $a0
.Ltmp38:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp39:                                # EH_LABEL
# %bb.3:                                # %_ZN13btConvexShapedlEPv.exit
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB16_4:
.Ltmp40:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end16:
	.size	_ZN25btConvexTriangleMeshShapeD0Ev, .Lfunc_end16-_ZN25btConvexTriangleMeshShapeD0Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN25btConvexTriangleMeshShapeD0Ev,"aG",@progbits,_ZN25btConvexTriangleMeshShapeD0Ev,comdat
	.p2align	2, 0x0
GCC_except_table16:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase4-.Lttbaseref4
.Lttbaseref4:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Ltmp35-.Lfunc_begin4          # >> Call Site 1 <<
	.uleb128 .Ltmp36-.Ltmp35                #   Call between .Ltmp35 and .Ltmp36
	.uleb128 .Ltmp37-.Lfunc_begin4          #     jumps to .Ltmp37
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp36-.Lfunc_begin4          # >> Call Site 2 <<
	.uleb128 .Ltmp38-.Ltmp36                #   Call between .Ltmp36 and .Ltmp38
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp38-.Lfunc_begin4          # >> Call Site 3 <<
	.uleb128 .Ltmp39-.Ltmp38                #   Call between .Ltmp38 and .Ltmp39
	.uleb128 .Ltmp40-.Lfunc_begin4          #     jumps to .Ltmp40
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp39-.Lfunc_begin4          # >> Call Site 4 <<
	.uleb128 .Lfunc_end16-.Ltmp39           #   Call between .Ltmp39 and .Lfunc_end16
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
	.section	.text._ZNK25btConvexTriangleMeshShape7getNameEv,"axG",@progbits,_ZNK25btConvexTriangleMeshShape7getNameEv,comdat
	.weak	_ZNK25btConvexTriangleMeshShape7getNameEv # -- Begin function _ZNK25btConvexTriangleMeshShape7getNameEv
	.p2align	5
	.type	_ZNK25btConvexTriangleMeshShape7getNameEv,@function
_ZNK25btConvexTriangleMeshShape7getNameEv: # @_ZNK25btConvexTriangleMeshShape7getNameEv
# %bb.0:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ret
.Lfunc_end17:
	.size	_ZNK25btConvexTriangleMeshShape7getNameEv, .Lfunc_end17-_ZNK25btConvexTriangleMeshShape7getNameEv
                                        # -- End function
	.section	.text._ZN21btConvexInternalShape9setMarginEf,"axG",@progbits,_ZN21btConvexInternalShape9setMarginEf,comdat
	.weak	_ZN21btConvexInternalShape9setMarginEf # -- Begin function _ZN21btConvexInternalShape9setMarginEf
	.p2align	5
	.type	_ZN21btConvexInternalShape9setMarginEf,@function
_ZN21btConvexInternalShape9setMarginEf: # @_ZN21btConvexInternalShape9setMarginEf
# %bb.0:
	fst.s	$fa0, $a0, 56
	ret
.Lfunc_end18:
	.size	_ZN21btConvexInternalShape9setMarginEf, .Lfunc_end18-_ZN21btConvexInternalShape9setMarginEf
                                        # -- End function
	.section	.text._ZNK21btConvexInternalShape9getMarginEv,"axG",@progbits,_ZNK21btConvexInternalShape9getMarginEv,comdat
	.weak	_ZNK21btConvexInternalShape9getMarginEv # -- Begin function _ZNK21btConvexInternalShape9getMarginEv
	.p2align	5
	.type	_ZNK21btConvexInternalShape9getMarginEv,@function
_ZNK21btConvexInternalShape9getMarginEv: # @_ZNK21btConvexInternalShape9getMarginEv
# %bb.0:
	fld.s	$fa0, $a0, 56
	ret
.Lfunc_end19:
	.size	_ZNK21btConvexInternalShape9getMarginEv, .Lfunc_end19-_ZNK21btConvexInternalShape9getMarginEv
                                        # -- End function
	.section	.text._ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv,"axG",@progbits,_ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv,comdat
	.weak	_ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv # -- Begin function _ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv
	.p2align	5
	.type	_ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv,@function
_ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv: # @_ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv
# %bb.0:
	move	$a0, $zero
	ret
.Lfunc_end20:
	.size	_ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv, .Lfunc_end20-_ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv
                                        # -- End function
	.section	.text._ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3,"axG",@progbits,_ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3,comdat
	.weak	_ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3 # -- Begin function _ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3
	.p2align	5
	.type	_ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3,@function
_ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3: # @_ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3
# %bb.0:
	ret
.Lfunc_end21:
	.size	_ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3, .Lfunc_end21-_ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3
                                        # -- End function
	.section	.text._ZN26LocalSupportVertexCallbackD0Ev,"axG",@progbits,_ZN26LocalSupportVertexCallbackD0Ev,comdat
	.weak	_ZN26LocalSupportVertexCallbackD0Ev # -- Begin function _ZN26LocalSupportVertexCallbackD0Ev
	.p2align	5
	.type	_ZN26LocalSupportVertexCallbackD0Ev,@function
_ZN26LocalSupportVertexCallbackD0Ev:    # @_ZN26LocalSupportVertexCallbackD0Ev
.Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception5
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
.Ltmp41:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN31btInternalTriangleIndexCallbackD2Ev)
	jirl	$ra, $ra, 0
.Ltmp42:                                # EH_LABEL
# %bb.1:
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZdlPv)
	jr	$t8
.LBB22_2:
.Ltmp43:                                # EH_LABEL
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end22:
	.size	_ZN26LocalSupportVertexCallbackD0Ev, .Lfunc_end22-_ZN26LocalSupportVertexCallbackD0Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN26LocalSupportVertexCallbackD0Ev,"aG",@progbits,_ZN26LocalSupportVertexCallbackD0Ev,comdat
	.p2align	2, 0x0
GCC_except_table22:
.Lexception5:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end5-.Lcst_begin5
.Lcst_begin5:
	.uleb128 .Ltmp41-.Lfunc_begin5          # >> Call Site 1 <<
	.uleb128 .Ltmp42-.Ltmp41                #   Call between .Ltmp41 and .Ltmp42
	.uleb128 .Ltmp43-.Lfunc_begin5          #     jumps to .Ltmp43
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp42-.Lfunc_begin5          # >> Call Site 2 <<
	.uleb128 .Lfunc_end22-.Ltmp42           #   Call between .Ltmp42 and .Lfunc_end22
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end5:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN26LocalSupportVertexCallback28internalProcessTriangleIndexEP9btVector3ii,"axG",@progbits,_ZN26LocalSupportVertexCallback28internalProcessTriangleIndexEP9btVector3ii,comdat
	.weak	_ZN26LocalSupportVertexCallback28internalProcessTriangleIndexEP9btVector3ii # -- Begin function _ZN26LocalSupportVertexCallback28internalProcessTriangleIndexEP9btVector3ii
	.p2align	5
	.type	_ZN26LocalSupportVertexCallback28internalProcessTriangleIndexEP9btVector3ii,@function
_ZN26LocalSupportVertexCallback28internalProcessTriangleIndexEP9btVector3ii: # @_ZN26LocalSupportVertexCallback28internalProcessTriangleIndexEP9btVector3ii
# %bb.0:
	fld.s	$fa0, $a0, 28
	fld.s	$fa2, $a0, 32
	fld.s	$fa1, $a0, 36
	fld.s	$fa4, $a1, 4
	fld.s	$fa5, $a1, 0
	fld.s	$fa6, $a1, 8
	fld.s	$fa3, $a0, 24
	fmul.s	$fa4, $fa2, $fa4
	fmadd.s	$fa4, $fa0, $fa5, $fa4
	fmadd.s	$fa4, $fa1, $fa6, $fa4
	fcmp.cule.s	$fcc0, $fa4, $fa3
	addi.d	$a2, $a0, 8
	bcnez	$fcc0, .LBB23_2
# %bb.1:
	fst.s	$fa4, $a0, 24
	vld	$vr3, $a1, 0
	vst	$vr3, $a2, 0
	fmov.s	$fa3, $fa4
.LBB23_2:
	fld.s	$fa4, $a1, 20
	fld.s	$fa5, $a1, 16
	fld.s	$fa6, $a1, 24
	fmul.s	$fa4, $fa2, $fa4
	fmadd.s	$fa4, $fa0, $fa5, $fa4
	fmadd.s	$fa4, $fa1, $fa6, $fa4
	fcmp.cule.s	$fcc0, $fa4, $fa3
	bcnez	$fcc0, .LBB23_4
# %bb.3:
	addi.d	$a3, $a1, 16
	fst.s	$fa4, $a0, 24
	vld	$vr3, $a3, 0
	vst	$vr3, $a2, 0
	fmov.s	$fa3, $fa4
.LBB23_4:
	fld.s	$fa4, $a1, 36
	fld.s	$fa5, $a1, 32
	fld.s	$fa6, $a1, 40
	fmul.s	$fa2, $fa2, $fa4
	fmadd.s	$fa0, $fa0, $fa5, $fa2
	fmadd.s	$fa0, $fa1, $fa6, $fa0
	fcmp.cule.s	$fcc0, $fa0, $fa3
	bcnez	$fcc0, .LBB23_6
# %bb.5:
	addi.d	$a1, $a1, 32
	fst.s	$fa0, $a0, 24
	vld	$vr0, $a1, 0
	vst	$vr0, $a2, 0
.LBB23_6:
	ret
.Lfunc_end23:
	.size	_ZN26LocalSupportVertexCallback28internalProcessTriangleIndexEP9btVector3ii, .Lfunc_end23-_ZN26LocalSupportVertexCallback28internalProcessTriangleIndexEP9btVector3ii
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZZNK25btConvexTriangleMeshShape31calculatePrincipalAxisTransformER11btTransformR9btVector3RfEN14CenterCallbackD0Ev
	.type	_ZZNK25btConvexTriangleMeshShape31calculatePrincipalAxisTransformER11btTransformR9btVector3RfEN14CenterCallbackD0Ev,@function
_ZZNK25btConvexTriangleMeshShape31calculatePrincipalAxisTransformER11btTransformR9btVector3RfEN14CenterCallbackD0Ev: # @_ZZNK25btConvexTriangleMeshShape31calculatePrincipalAxisTransformER11btTransformR9btVector3RfEN14CenterCallbackD0Ev
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
.Ltmp44:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN31btInternalTriangleIndexCallbackD2Ev)
	jirl	$ra, $ra, 0
.Ltmp45:                                # EH_LABEL
# %bb.1:
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZdlPv)
	jr	$t8
.LBB24_2:
.Ltmp46:                                # EH_LABEL
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end24:
	.size	_ZZNK25btConvexTriangleMeshShape31calculatePrincipalAxisTransformER11btTransformR9btVector3RfEN14CenterCallbackD0Ev, .Lfunc_end24-_ZZNK25btConvexTriangleMeshShape31calculatePrincipalAxisTransformER11btTransformR9btVector3RfEN14CenterCallbackD0Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table24:
.Lexception6:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end6-.Lcst_begin6
.Lcst_begin6:
	.uleb128 .Ltmp44-.Lfunc_begin6          # >> Call Site 1 <<
	.uleb128 .Ltmp45-.Ltmp44                #   Call between .Ltmp44 and .Ltmp45
	.uleb128 .Ltmp46-.Lfunc_begin6          #     jumps to .Ltmp46
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp45-.Lfunc_begin6          # >> Call Site 2 <<
	.uleb128 .Lfunc_end24-.Ltmp45           #   Call between .Ltmp45 and .Lfunc_end24
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end6:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZZNK25btConvexTriangleMeshShape31calculatePrincipalAxisTransformER11btTransformR9btVector3RfEN14CenterCallback28internalProcessTriangleIndexEPS2_ii
	.type	_ZZNK25btConvexTriangleMeshShape31calculatePrincipalAxisTransformER11btTransformR9btVector3RfEN14CenterCallback28internalProcessTriangleIndexEPS2_ii,@function
_ZZNK25btConvexTriangleMeshShape31calculatePrincipalAxisTransformER11btTransformR9btVector3RfEN14CenterCallback28internalProcessTriangleIndexEPS2_ii: # @_ZZNK25btConvexTriangleMeshShape31calculatePrincipalAxisTransformER11btTransformR9btVector3RfEN14CenterCallback28internalProcessTriangleIndexEPS2_ii
# %bb.0:
	ld.bu	$a2, $a0, 8
	beqz	$a2, .LBB25_2
# %bb.1:
	vld	$vr0, $a1, 0
	addi.d	$a1, $a0, 12
	vst	$vr0, $a1, 0
	st.b	$zero, $a0, 8
	ret
.LBB25_2:
	fld.s	$fa0, $a1, 0
	fld.s	$fa1, $a0, 12
	fsub.s	$fa2, $fa0, $fa1
	fld.s	$fa3, $a1, 4
	fld.s	$fa4, $a0, 16
	fld.s	$fa5, $a1, 8
	fld.s	$fa6, $a0, 20
	fld.s	$fa7, $a1, 16
	fld.s	$ft0, $a1, 20
	fsub.s	$ft1, $fa3, $fa4
	fsub.s	$ft2, $fa5, $fa6
	fsub.s	$ft3, $fa7, $fa1
	fsub.s	$ft4, $ft0, $fa4
	fld.s	$ft5, $a1, 24
	fld.s	$ft6, $a1, 32
	fld.s	$ft7, $a1, 36
	fld.s	$ft8, $a1, 40
	fsub.s	$ft9, $ft5, $fa6
	fsub.s	$ft10, $ft6, $fa1
	fsub.s	$ft11, $ft7, $fa4
	fsub.s	$ft12, $ft8, $fa6
	fneg.s	$ft13, $ft11
	fmul.s	$ft13, $ft9, $ft13
	fmadd.s	$ft13, $ft4, $ft12, $ft13
	fneg.s	$ft12, $ft12
	fmul.s	$ft12, $ft3, $ft12
	fmadd.s	$ft9, $ft9, $ft10, $ft12
	fmul.s	$ft1, $ft1, $ft9
	fmadd.s	$fa2, $fa2, $ft13, $ft1
	fneg.s	$ft1, $ft10
	fmul.s	$ft1, $ft4, $ft1
	fmadd.s	$ft1, $ft3, $ft11, $ft1
	fmadd.s	$fa2, $ft2, $ft1, $fa2
	fabs.s	$fa2, $fa2
	vldi	$vr9, -1200
	fmul.s	$ft1, $fa2, $ft1
	fadd.s	$fa0, $fa0, $fa7
	fadd.s	$fa3, $fa3, $ft0
	fadd.s	$fa5, $fa5, $ft5
	fadd.s	$fa0, $fa0, $ft6
	fadd.s	$fa3, $fa3, $ft7
	fadd.s	$fa5, $fa5, $ft8
	fadd.s	$fa0, $fa1, $fa0
	fadd.s	$fa1, $fa4, $fa3
	fadd.s	$fa3, $fa6, $fa5
	fmul.s	$fa0, $fa0, $ft1
	fld.s	$fa4, $a0, 28
	fmul.s	$fa1, $fa1, $ft1
	fmul.s	$fa3, $fa3, $ft1
	fld.s	$fa5, $a0, 32
	fadd.s	$fa0, $fa4, $fa0
	fst.s	$fa0, $a0, 28
	fld.s	$fa0, $a0, 36
	fadd.s	$fa1, $fa5, $fa1
	fld.s	$fa4, $a0, 44
	fst.s	$fa1, $a0, 32
	fadd.s	$fa0, $fa0, $fa3
	fst.s	$fa0, $a0, 36
	fadd.s	$fa0, $fa4, $fa2
	fst.s	$fa0, $a0, 44
	ret
.Lfunc_end25:
	.size	_ZZNK25btConvexTriangleMeshShape31calculatePrincipalAxisTransformER11btTransformR9btVector3RfEN14CenterCallback28internalProcessTriangleIndexEPS2_ii, .Lfunc_end25-_ZZNK25btConvexTriangleMeshShape31calculatePrincipalAxisTransformER11btTransformR9btVector3RfEN14CenterCallback28internalProcessTriangleIndexEPS2_ii
                                        # -- End function
	.p2align	5                               # -- Begin function _ZZNK25btConvexTriangleMeshShape31calculatePrincipalAxisTransformER11btTransformR9btVector3RfEN15InertiaCallbackD0Ev
	.type	_ZZNK25btConvexTriangleMeshShape31calculatePrincipalAxisTransformER11btTransformR9btVector3RfEN15InertiaCallbackD0Ev,@function
_ZZNK25btConvexTriangleMeshShape31calculatePrincipalAxisTransformER11btTransformR9btVector3RfEN15InertiaCallbackD0Ev: # @_ZZNK25btConvexTriangleMeshShape31calculatePrincipalAxisTransformER11btTransformR9btVector3RfEN15InertiaCallbackD0Ev
.Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception7
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
.Ltmp47:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN31btInternalTriangleIndexCallbackD2Ev)
	jirl	$ra, $ra, 0
.Ltmp48:                                # EH_LABEL
# %bb.1:
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZdlPv)
	jr	$t8
.LBB26_2:
.Ltmp49:                                # EH_LABEL
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end26:
	.size	_ZZNK25btConvexTriangleMeshShape31calculatePrincipalAxisTransformER11btTransformR9btVector3RfEN15InertiaCallbackD0Ev, .Lfunc_end26-_ZZNK25btConvexTriangleMeshShape31calculatePrincipalAxisTransformER11btTransformR9btVector3RfEN15InertiaCallbackD0Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table26:
.Lexception7:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end7-.Lcst_begin7
.Lcst_begin7:
	.uleb128 .Ltmp47-.Lfunc_begin7          # >> Call Site 1 <<
	.uleb128 .Ltmp48-.Ltmp47                #   Call between .Ltmp47 and .Ltmp48
	.uleb128 .Ltmp49-.Lfunc_begin7          #     jumps to .Ltmp49
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp48-.Lfunc_begin7          # >> Call Site 2 <<
	.uleb128 .Lfunc_end26-.Ltmp48           #   Call between .Ltmp48 and .Lfunc_end26
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end7:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZZNK25btConvexTriangleMeshShape31calculatePrincipalAxisTransformER11btTransformR9btVector3RfEN15InertiaCallback28internalProcessTriangleIndexEPS2_ii
	.type	_ZZNK25btConvexTriangleMeshShape31calculatePrincipalAxisTransformER11btTransformR9btVector3RfEN15InertiaCallback28internalProcessTriangleIndexEPS2_ii,@function
_ZZNK25btConvexTriangleMeshShape31calculatePrincipalAxisTransformER11btTransformR9btVector3RfEN15InertiaCallback28internalProcessTriangleIndexEPS2_ii: # @_ZZNK25btConvexTriangleMeshShape31calculatePrincipalAxisTransformER11btTransformR9btVector3RfEN15InertiaCallback28internalProcessTriangleIndexEPS2_ii
# %bb.0:                                # %.preheader
	fld.s	$fa0, $a1, 0
	fld.s	$fa3, $a0, 56
	fsub.s	$fa5, $fa0, $fa3
	fld.s	$fa0, $a1, 4
	fld.s	$fa7, $a0, 60
	fld.s	$fa1, $a1, 8
	fld.s	$ft0, $a0, 64
	fld.s	$fa4, $a1, 16
	fld.s	$ft1, $a1, 20
	fsub.s	$fa2, $fa0, $fa7
	fsub.s	$fa0, $fa1, $ft0
	fsub.s	$fa6, $fa4, $fa3
	fsub.s	$fa4, $ft1, $fa7
	fld.s	$fa1, $a1, 24
	fld.s	$ft1, $a1, 32
	fld.s	$ft3, $a1, 36
	fld.s	$ft4, $a1, 40
	fsub.s	$fa1, $fa1, $ft0
	fsub.s	$ft2, $ft1, $fa3
	fsub.s	$fa7, $ft3, $fa7
	fsub.s	$fa3, $ft4, $ft0
	fneg.s	$ft0, $fa7
	fmul.s	$ft0, $fa1, $ft0
	fmadd.s	$ft0, $fa4, $fa3, $ft0
	fneg.s	$ft1, $fa3
	fmul.s	$ft1, $fa6, $ft1
	fmadd.s	$ft1, $fa1, $ft2, $ft1
	fmul.s	$ft1, $fa2, $ft1
	fmadd.s	$ft0, $fa5, $ft0, $ft1
	fneg.s	$ft1, $ft2
	fmul.s	$ft1, $fa4, $ft1
	fmadd.s	$ft1, $fa6, $fa7, $ft1
	fmadd.s	$ft0, $fa0, $ft1, $ft0
	fabs.s	$ft0, $ft0
	lu12i.w	$a1, -269654
	ori	$a1, $a1, 2731
	lu32i.d	$a1, 0
	movgr2fr.w	$ft1, $a1
	fmul.s	$ft0, $ft0, $ft1
	fmul.s	$ft1, $fa6, $fa6
	fmadd.s	$ft1, $fa5, $fa5, $ft1
	fmadd.s	$ft1, $ft2, $ft2, $ft1
	fmul.s	$ft3, $fa5, $fa6
	fmadd.s	$ft3, $fa5, $fa6, $ft3
	fmadd.s	$ft3, $fa5, $ft2, $ft3
	fmadd.s	$ft3, $fa5, $ft2, $ft3
	fmadd.s	$ft3, $fa6, $ft2, $ft3
	fmadd.s	$ft3, $fa6, $ft2, $ft3
	lu12i.w	$a1, 251084
	ori	$a1, $a1, 3277
	movgr2fr.w	$ft4, $a1
	fmul.s	$ft3, $ft3, $ft4
	lu12i.w	$a1, 253132
	ori	$a1, $a1, 3277
	movgr2fr.w	$ft5, $a1
	fmadd.s	$ft1, $ft1, $ft5, $ft3
	fmul.s	$ft3, $ft0, $ft1
	fmul.s	$ft1, $fa4, $fa6
	fmadd.s	$ft1, $fa2, $fa5, $ft1
	fmadd.s	$ft1, $fa7, $ft2, $ft1
	fmul.s	$ft6, $fa5, $fa4
	fmadd.s	$ft6, $fa2, $fa6, $ft6
	fmadd.s	$ft6, $fa2, $ft2, $ft6
	fmadd.s	$ft6, $fa5, $fa7, $ft6
	fmadd.s	$ft6, $fa4, $ft2, $ft6
	fmadd.s	$ft6, $fa6, $fa7, $ft6
	fmul.s	$ft6, $ft6, $ft4
	fmadd.s	$ft1, $ft1, $ft5, $ft6
	fmul.s	$ft1, $ft0, $ft1
	fmul.s	$ft6, $fa4, $fa4
	fmadd.s	$ft6, $fa2, $fa2, $ft6
	fmadd.s	$ft6, $fa7, $fa7, $ft6
	fmul.s	$ft7, $fa2, $fa4
	fmadd.s	$ft7, $fa2, $fa4, $ft7
	fmadd.s	$ft7, $fa2, $fa7, $ft7
	fmadd.s	$ft7, $fa2, $fa7, $ft7
	fmadd.s	$ft7, $fa4, $fa7, $ft7
	fmadd.s	$ft7, $fa4, $fa7, $ft7
	fmul.s	$ft7, $ft7, $ft4
	fmadd.s	$ft6, $ft6, $ft5, $ft7
	fmul.s	$ft6, $ft0, $ft6
	fmul.s	$ft7, $fa1, $fa6
	fmadd.s	$ft7, $fa0, $fa5, $ft7
	fmadd.s	$ft7, $fa3, $ft2, $ft7
	fmul.s	$ft8, $fa5, $fa1
	fmadd.s	$ft8, $fa0, $fa6, $ft8
	fmadd.s	$ft8, $fa0, $ft2, $ft8
	fmadd.s	$fa5, $fa5, $fa3, $ft8
	fmadd.s	$fa5, $fa1, $ft2, $fa5
	fmadd.s	$fa5, $fa6, $fa3, $fa5
	fmul.s	$fa5, $fa5, $ft4
	fmadd.s	$fa5, $ft7, $ft5, $fa5
	fmul.s	$fa5, $ft0, $fa5
	fmul.s	$fa6, $fa1, $fa4
	fmadd.s	$fa6, $fa0, $fa2, $fa6
	fmadd.s	$fa6, $fa3, $fa7, $fa6
	fmul.s	$ft2, $fa2, $fa1
	fmadd.s	$ft2, $fa0, $fa4, $ft2
	fmadd.s	$ft2, $fa0, $fa7, $ft2
	fmadd.s	$fa2, $fa2, $fa3, $ft2
	fmadd.s	$fa2, $fa1, $fa7, $fa2
	fmadd.s	$fa2, $fa4, $fa3, $fa2
	fmul.s	$fa2, $fa2, $ft4
	fmadd.s	$fa2, $fa6, $ft5, $fa2
	fmul.s	$fa2, $ft0, $fa2
	fmul.s	$fa4, $fa1, $fa1
	fmadd.s	$fa4, $fa0, $fa0, $fa4
	fmadd.s	$fa4, $fa3, $fa3, $fa4
	fmul.s	$fa6, $fa0, $fa1
	fmadd.s	$fa6, $fa0, $fa1, $fa6
	fmadd.s	$fa6, $fa0, $fa3, $fa6
	fmadd.s	$fa0, $fa0, $fa3, $fa6
	fmadd.s	$fa0, $fa1, $fa3, $fa0
	fmadd.s	$fa0, $fa1, $fa3, $fa0
	fmul.s	$fa0, $fa0, $ft4
	fmadd.s	$fa0, $fa4, $ft5, $fa0
	fmul.s	$fa0, $ft0, $fa0
	fneg.s	$fa1, $ft3
	fneg.s	$fa3, $ft6
	fneg.s	$fa4, $fa0
	fsub.s	$fa4, $fa4, $ft6
	fld.s	$fa6, $a0, 8
	fsub.s	$fa0, $fa1, $fa0
	fsub.s	$fa1, $fa3, $ft3
	fld.s	$fa3, $a0, 12
	fadd.s	$fa4, $fa4, $fa6
	fst.s	$fa4, $a0, 8
	fld.s	$fa4, $a0, 16
	fadd.s	$fa3, $ft1, $fa3
	fst.s	$fa3, $a0, 12
	fld.s	$fa3, $a0, 24
	fadd.s	$fa4, $fa5, $fa4
	fst.s	$fa4, $a0, 16
	fld.s	$fa4, $a0, 28
	fadd.s	$fa3, $ft1, $fa3
	fst.s	$fa3, $a0, 24
	fld.s	$fa3, $a0, 32
	fadd.s	$fa0, $fa0, $fa4
	fst.s	$fa0, $a0, 28
	fld.s	$fa0, $a0, 40
	fadd.s	$fa3, $fa2, $fa3
	fst.s	$fa3, $a0, 32
	fld.s	$fa3, $a0, 44
	fadd.s	$fa0, $fa5, $fa0
	fld.s	$fa4, $a0, 48
	fst.s	$fa0, $a0, 40
	fadd.s	$fa0, $fa2, $fa3
	fst.s	$fa0, $a0, 44
	fadd.s	$fa0, $fa1, $fa4
	fst.s	$fa0, $a0, 48
	ret
.Lfunc_end27:
	.size	_ZZNK25btConvexTriangleMeshShape31calculatePrincipalAxisTransformER11btTransformR9btVector3RfEN15InertiaCallback28internalProcessTriangleIndexEPS2_ii, .Lfunc_end27-_ZZNK25btConvexTriangleMeshShape31calculatePrincipalAxisTransformER11btTransformR9btVector3RfEN15InertiaCallback28internalProcessTriangleIndexEPS2_ii
                                        # -- End function
	.type	_ZTV25btConvexTriangleMeshShape,@object # @_ZTV25btConvexTriangleMeshShape
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTV25btConvexTriangleMeshShape
	.p2align	3, 0x0
_ZTV25btConvexTriangleMeshShape:
	.dword	0
	.dword	_ZTI25btConvexTriangleMeshShape
	.dword	_ZN13btConvexShapeD2Ev
	.dword	_ZN25btConvexTriangleMeshShapeD0Ev
	.dword	_ZNK34btPolyhedralConvexAabbCachingShape7getAabbERK11btTransformR9btVector3S4_
	.dword	_ZNK16btCollisionShape17getBoundingSphereER9btVector3Rf
	.dword	_ZNK16btCollisionShape20getAngularMotionDiscEv
	.dword	_ZNK16btCollisionShape27getContactBreakingThresholdEv
	.dword	_ZN25btConvexTriangleMeshShape15setLocalScalingERK9btVector3
	.dword	_ZNK25btConvexTriangleMeshShape15getLocalScalingEv
	.dword	_ZNK23btPolyhedralConvexShape21calculateLocalInertiaEfR9btVector3
	.dword	_ZNK25btConvexTriangleMeshShape7getNameEv
	.dword	_ZN21btConvexInternalShape9setMarginEf
	.dword	_ZNK21btConvexInternalShape9getMarginEv
	.dword	_ZNK25btConvexTriangleMeshShape24localGetSupportingVertexERK9btVector3
	.dword	_ZNK25btConvexTriangleMeshShape37localGetSupportingVertexWithoutMarginERK9btVector3
	.dword	_ZNK25btConvexTriangleMeshShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i
	.dword	_ZNK21btConvexInternalShape11getAabbSlowERK11btTransformR9btVector3S4_
	.dword	_ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv
	.dword	_ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3
	.dword	_ZNK25btConvexTriangleMeshShape14getNumVerticesEv
	.dword	_ZNK25btConvexTriangleMeshShape11getNumEdgesEv
	.dword	_ZNK25btConvexTriangleMeshShape7getEdgeEiR9btVector3S1_
	.dword	_ZNK25btConvexTriangleMeshShape9getVertexEiR9btVector3
	.dword	_ZNK25btConvexTriangleMeshShape12getNumPlanesEv
	.dword	_ZNK25btConvexTriangleMeshShape8getPlaneER9btVector3S1_i
	.dword	_ZNK25btConvexTriangleMeshShape8isInsideERK9btVector3f
	.size	_ZTV25btConvexTriangleMeshShape, 216

	.type	_ZTI25btConvexTriangleMeshShape,@object # @_ZTI25btConvexTriangleMeshShape
	.globl	_ZTI25btConvexTriangleMeshShape
	.p2align	3, 0x0
_ZTI25btConvexTriangleMeshShape:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS25btConvexTriangleMeshShape
	.dword	_ZTI34btPolyhedralConvexAabbCachingShape
	.size	_ZTI25btConvexTriangleMeshShape, 24

	.type	_ZTS25btConvexTriangleMeshShape,@object # @_ZTS25btConvexTriangleMeshShape
	.section	.rodata,"a",@progbits
	.globl	_ZTS25btConvexTriangleMeshShape
_ZTS25btConvexTriangleMeshShape:
	.asciz	"25btConvexTriangleMeshShape"
	.size	_ZTS25btConvexTriangleMeshShape, 28

	.type	_ZTV26LocalSupportVertexCallback,@object # @_ZTV26LocalSupportVertexCallback
	.section	.data.rel.ro._ZTV26LocalSupportVertexCallback,"awG",@progbits,_ZTV26LocalSupportVertexCallback,comdat
	.weak	_ZTV26LocalSupportVertexCallback
	.p2align	3, 0x0
_ZTV26LocalSupportVertexCallback:
	.dword	0
	.dword	_ZTI26LocalSupportVertexCallback
	.dword	_ZN31btInternalTriangleIndexCallbackD2Ev
	.dword	_ZN26LocalSupportVertexCallbackD0Ev
	.dword	_ZN26LocalSupportVertexCallback28internalProcessTriangleIndexEP9btVector3ii
	.size	_ZTV26LocalSupportVertexCallback, 40

	.type	_ZTI26LocalSupportVertexCallback,@object # @_ZTI26LocalSupportVertexCallback
	.section	.data.rel.ro._ZTI26LocalSupportVertexCallback,"awG",@progbits,_ZTI26LocalSupportVertexCallback,comdat
	.weak	_ZTI26LocalSupportVertexCallback
	.p2align	3, 0x0
_ZTI26LocalSupportVertexCallback:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS26LocalSupportVertexCallback
	.dword	_ZTI31btInternalTriangleIndexCallback
	.size	_ZTI26LocalSupportVertexCallback, 24

	.type	_ZTS26LocalSupportVertexCallback,@object # @_ZTS26LocalSupportVertexCallback
	.section	.rodata._ZTS26LocalSupportVertexCallback,"aG",@progbits,_ZTS26LocalSupportVertexCallback,comdat
	.weak	_ZTS26LocalSupportVertexCallback
_ZTS26LocalSupportVertexCallback:
	.asciz	"26LocalSupportVertexCallback"
	.size	_ZTS26LocalSupportVertexCallback, 29

	.type	_ZTVZNK25btConvexTriangleMeshShape31calculatePrincipalAxisTransformER11btTransformR9btVector3RfE14CenterCallback,@object # @_ZTVZNK25btConvexTriangleMeshShape31calculatePrincipalAxisTransformER11btTransformR9btVector3RfE14CenterCallback
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
_ZTVZNK25btConvexTriangleMeshShape31calculatePrincipalAxisTransformER11btTransformR9btVector3RfE14CenterCallback:
	.dword	0
	.dword	_ZTIZNK25btConvexTriangleMeshShape31calculatePrincipalAxisTransformER11btTransformR9btVector3RfE14CenterCallback
	.dword	_ZN31btInternalTriangleIndexCallbackD2Ev
	.dword	_ZZNK25btConvexTriangleMeshShape31calculatePrincipalAxisTransformER11btTransformR9btVector3RfEN14CenterCallbackD0Ev
	.dword	_ZZNK25btConvexTriangleMeshShape31calculatePrincipalAxisTransformER11btTransformR9btVector3RfEN14CenterCallback28internalProcessTriangleIndexEPS2_ii
	.size	_ZTVZNK25btConvexTriangleMeshShape31calculatePrincipalAxisTransformER11btTransformR9btVector3RfE14CenterCallback, 40

	.type	_ZTIZNK25btConvexTriangleMeshShape31calculatePrincipalAxisTransformER11btTransformR9btVector3RfE14CenterCallback,@object # @_ZTIZNK25btConvexTriangleMeshShape31calculatePrincipalAxisTransformER11btTransformR9btVector3RfE14CenterCallback
	.p2align	3, 0x0
_ZTIZNK25btConvexTriangleMeshShape31calculatePrincipalAxisTransformER11btTransformR9btVector3RfE14CenterCallback:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTSZNK25btConvexTriangleMeshShape31calculatePrincipalAxisTransformER11btTransformR9btVector3RfE14CenterCallback
	.dword	_ZTI31btInternalTriangleIndexCallback
	.size	_ZTIZNK25btConvexTriangleMeshShape31calculatePrincipalAxisTransformER11btTransformR9btVector3RfE14CenterCallback, 24

	.type	_ZTSZNK25btConvexTriangleMeshShape31calculatePrincipalAxisTransformER11btTransformR9btVector3RfE14CenterCallback,@object # @_ZTSZNK25btConvexTriangleMeshShape31calculatePrincipalAxisTransformER11btTransformR9btVector3RfE14CenterCallback
	.section	.rodata,"a",@progbits
_ZTSZNK25btConvexTriangleMeshShape31calculatePrincipalAxisTransformER11btTransformR9btVector3RfE14CenterCallback:
	.asciz	"ZNK25btConvexTriangleMeshShape31calculatePrincipalAxisTransformER11btTransformR9btVector3RfE14CenterCallback"
	.size	_ZTSZNK25btConvexTriangleMeshShape31calculatePrincipalAxisTransformER11btTransformR9btVector3RfE14CenterCallback, 109

	.type	_ZTVZNK25btConvexTriangleMeshShape31calculatePrincipalAxisTransformER11btTransformR9btVector3RfE15InertiaCallback,@object # @_ZTVZNK25btConvexTriangleMeshShape31calculatePrincipalAxisTransformER11btTransformR9btVector3RfE15InertiaCallback
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
_ZTVZNK25btConvexTriangleMeshShape31calculatePrincipalAxisTransformER11btTransformR9btVector3RfE15InertiaCallback:
	.dword	0
	.dword	_ZTIZNK25btConvexTriangleMeshShape31calculatePrincipalAxisTransformER11btTransformR9btVector3RfE15InertiaCallback
	.dword	_ZN31btInternalTriangleIndexCallbackD2Ev
	.dword	_ZZNK25btConvexTriangleMeshShape31calculatePrincipalAxisTransformER11btTransformR9btVector3RfEN15InertiaCallbackD0Ev
	.dword	_ZZNK25btConvexTriangleMeshShape31calculatePrincipalAxisTransformER11btTransformR9btVector3RfEN15InertiaCallback28internalProcessTriangleIndexEPS2_ii
	.size	_ZTVZNK25btConvexTriangleMeshShape31calculatePrincipalAxisTransformER11btTransformR9btVector3RfE15InertiaCallback, 40

	.type	_ZTIZNK25btConvexTriangleMeshShape31calculatePrincipalAxisTransformER11btTransformR9btVector3RfE15InertiaCallback,@object # @_ZTIZNK25btConvexTriangleMeshShape31calculatePrincipalAxisTransformER11btTransformR9btVector3RfE15InertiaCallback
	.p2align	3, 0x0
_ZTIZNK25btConvexTriangleMeshShape31calculatePrincipalAxisTransformER11btTransformR9btVector3RfE15InertiaCallback:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTSZNK25btConvexTriangleMeshShape31calculatePrincipalAxisTransformER11btTransformR9btVector3RfE15InertiaCallback
	.dword	_ZTI31btInternalTriangleIndexCallback
	.size	_ZTIZNK25btConvexTriangleMeshShape31calculatePrincipalAxisTransformER11btTransformR9btVector3RfE15InertiaCallback, 24

	.type	_ZTSZNK25btConvexTriangleMeshShape31calculatePrincipalAxisTransformER11btTransformR9btVector3RfE15InertiaCallback,@object # @_ZTSZNK25btConvexTriangleMeshShape31calculatePrincipalAxisTransformER11btTransformR9btVector3RfE15InertiaCallback
	.section	.rodata,"a",@progbits
_ZTSZNK25btConvexTriangleMeshShape31calculatePrincipalAxisTransformER11btTransformR9btVector3RfE15InertiaCallback:
	.asciz	"ZNK25btConvexTriangleMeshShape31calculatePrincipalAxisTransformER11btTransformR9btVector3RfE15InertiaCallback"
	.size	_ZTSZNK25btConvexTriangleMeshShape31calculatePrincipalAxisTransformER11btTransformR9btVector3RfE15InertiaCallback, 110

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"ConvexTrimesh"
	.size	.L.str, 14

	.globl	_ZN25btConvexTriangleMeshShapeC1EP23btStridingMeshInterfaceb
	.type	_ZN25btConvexTriangleMeshShapeC1EP23btStridingMeshInterfaceb,@function
_ZN25btConvexTriangleMeshShapeC1EP23btStridingMeshInterfaceb = _ZN25btConvexTriangleMeshShapeC2EP23btStridingMeshInterfaceb
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
	.addrsig_sym _ZTI25btConvexTriangleMeshShape
	.addrsig_sym _ZTVN10__cxxabiv120__si_class_type_infoE
	.addrsig_sym _ZTS25btConvexTriangleMeshShape
	.addrsig_sym _ZTI34btPolyhedralConvexAabbCachingShape
	.addrsig_sym _ZTI26LocalSupportVertexCallback
	.addrsig_sym _ZTS26LocalSupportVertexCallback
	.addrsig_sym _ZTI31btInternalTriangleIndexCallback
	.addrsig_sym _ZTIZNK25btConvexTriangleMeshShape31calculatePrincipalAxisTransformER11btTransformR9btVector3RfE14CenterCallback
	.addrsig_sym _ZTSZNK25btConvexTriangleMeshShape31calculatePrincipalAxisTransformER11btTransformR9btVector3RfE14CenterCallback
	.addrsig_sym _ZTIZNK25btConvexTriangleMeshShape31calculatePrincipalAxisTransformER11btTransformR9btVector3RfE15InertiaCallback
	.addrsig_sym _ZTSZNK25btConvexTriangleMeshShape31calculatePrincipalAxisTransformER11btTransformR9btVector3RfE15InertiaCallback
