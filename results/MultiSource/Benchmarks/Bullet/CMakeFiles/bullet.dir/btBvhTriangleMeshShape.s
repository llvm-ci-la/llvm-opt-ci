	.file	"btBvhTriangleMeshShape.cpp"
	.text
	.globl	_ZN22btBvhTriangleMeshShapeC2EP23btStridingMeshInterfacebb # -- Begin function _ZN22btBvhTriangleMeshShapeC2EP23btStridingMeshInterfacebb
	.p2align	5
	.type	_ZN22btBvhTriangleMeshShapeC2EP23btStridingMeshInterfacebb,@function
_ZN22btBvhTriangleMeshShapeC2EP23btStridingMeshInterfacebb: # @_ZN22btBvhTriangleMeshShapeC2EP23btStridingMeshInterfacebb
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
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
	move	$s1, $a3
	move	$s2, $a2
	move	$s0, $a1
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_ZN19btTriangleMeshShapeC2EP23btStridingMeshInterface)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(_ZTV22btBvhTriangleMeshShape+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV22btBvhTriangleMeshShape+16)
	st.d	$a0, $fp, 0
	st.d	$zero, $fp, 72
	st.b	$s2, $fp, 80
	ld.d	$a0, $s0, 0
	st.b	$zero, $fp, 81
	ori	$a1, $zero, 21
	st.w	$a1, $fp, 8
	ld.d	$a1, $a0, 80
.Ltmp0:                                 # EH_LABEL
	move	$a0, $s0
	jirl	$ra, $a1, 0
.Ltmp1:                                 # EH_LABEL
# %bb.1:
	beqz	$a0, .LBB0_3
# %bb.2:
	ld.d	$a0, $s0, 0
	ld.d	$a3, $a0, 96
.Ltmp4:                                 # EH_LABEL
	addi.d	$a1, $sp, 24
	addi.d	$a2, $sp, 8
	move	$a0, $s0
	jirl	$ra, $a3, 0
.Ltmp5:                                 # EH_LABEL
	b	.LBB0_4
.LBB0_3:
.Ltmp2:                                 # EH_LABEL
	addi.d	$a1, $sp, 24
	addi.d	$a2, $sp, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN23btStridingMeshInterface23calculateAabbBruteForceER9btVector3S1_)
	jirl	$ra, $ra, 0
.Ltmp3:                                 # EH_LABEL
.LBB0_4:
	beqz	$s1, .LBB0_9
# %bb.5:
.Ltmp7:                                 # EH_LABEL
	ori	$a0, $zero, 248
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
.Ltmp8:                                 # EH_LABEL
# %bb.6:
.Ltmp9:                                 # EH_LABEL
	move	$s1, $a0
	pcaddu18i	$ra, %call36(_ZN14btOptimizedBvhC1Ev)
	jirl	$ra, $ra, 0
.Ltmp10:                                # EH_LABEL
# %bb.7:
	ld.bu	$a2, $fp, 80
	st.d	$s1, $fp, 72
.Ltmp12:                                # EH_LABEL
	addi.d	$a3, $sp, 24
	addi.d	$a4, $sp, 8
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN14btOptimizedBvh5buildEP23btStridingMeshInterfacebRK9btVector3S4_)
	jirl	$ra, $ra, 0
.Ltmp13:                                # EH_LABEL
# %bb.8:
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 81
.LBB0_9:
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.LBB0_10:
.Ltmp11:                                # EH_LABEL
	b	.LBB0_13
.LBB0_11:
.Ltmp14:                                # EH_LABEL
	b	.LBB0_13
.LBB0_12:
.Ltmp6:                                 # EH_LABEL
.LBB0_13:
	move	$s0, $a0
.Ltmp15:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN19btTriangleMeshShapeD2Ev)
	jirl	$ra, $ra, 0
.Ltmp16:                                # EH_LABEL
# %bb.14:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB0_15:
.Ltmp17:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	_ZN22btBvhTriangleMeshShapeC2EP23btStridingMeshInterfacebb, .Lfunc_end0-_ZN22btBvhTriangleMeshShapeC2EP23btStridingMeshInterfacebb
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
	.uleb128 .Ltmp6-.Lfunc_begin0           #     jumps to .Ltmp6
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp7-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp8-.Ltmp7                  #   Call between .Ltmp7 and .Ltmp8
	.uleb128 .Ltmp14-.Lfunc_begin0          #     jumps to .Ltmp14
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp9-.Lfunc_begin0           # >> Call Site 4 <<
	.uleb128 .Ltmp10-.Ltmp9                 #   Call between .Ltmp9 and .Ltmp10
	.uleb128 .Ltmp11-.Lfunc_begin0          #     jumps to .Ltmp11
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp12-.Lfunc_begin0          # >> Call Site 5 <<
	.uleb128 .Ltmp13-.Ltmp12                #   Call between .Ltmp12 and .Ltmp13
	.uleb128 .Ltmp14-.Lfunc_begin0          #     jumps to .Ltmp14
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp15-.Lfunc_begin0          # >> Call Site 6 <<
	.uleb128 .Ltmp16-.Ltmp15                #   Call between .Ltmp15 and .Ltmp16
	.uleb128 .Ltmp17-.Lfunc_begin0          #     jumps to .Ltmp17
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp16-.Lfunc_begin0          # >> Call Site 7 <<
	.uleb128 .Lfunc_end0-.Ltmp16            #   Call between .Ltmp16 and .Lfunc_end0
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
	.globl	_ZN22btBvhTriangleMeshShapeC2EP23btStridingMeshInterfacebRK9btVector3S4_b # -- Begin function _ZN22btBvhTriangleMeshShapeC2EP23btStridingMeshInterfacebRK9btVector3S4_b
	.p2align	5
	.type	_ZN22btBvhTriangleMeshShapeC2EP23btStridingMeshInterfacebRK9btVector3S4_b,@function
_ZN22btBvhTriangleMeshShapeC2EP23btStridingMeshInterfacebRK9btVector3S4_b: # @_ZN22btBvhTriangleMeshShapeC2EP23btStridingMeshInterfacebRK9btVector3S4_b
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
	move	$s3, $a5
	move	$s0, $a4
	move	$s1, $a3
	move	$s4, $a2
	move	$s2, $a1
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_ZN19btTriangleMeshShapeC2EP23btStridingMeshInterface)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(_ZTV22btBvhTriangleMeshShape+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV22btBvhTriangleMeshShape+16)
	st.d	$a0, $fp, 0
	st.d	$zero, $fp, 72
	st.b	$s4, $fp, 80
	st.b	$zero, $fp, 81
	ori	$a0, $zero, 21
	st.w	$a0, $fp, 8
	beqz	$s3, .LBB2_5
# %bb.1:
.Ltmp18:                                # EH_LABEL
	ori	$a0, $zero, 248
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
.Ltmp19:                                # EH_LABEL
# %bb.2:
.Ltmp20:                                # EH_LABEL
	move	$s3, $a0
	pcaddu18i	$ra, %call36(_ZN14btOptimizedBvhC1Ev)
	jirl	$ra, $ra, 0
.Ltmp21:                                # EH_LABEL
# %bb.3:
	ld.bu	$a2, $fp, 80
	st.d	$s3, $fp, 72
.Ltmp23:                                # EH_LABEL
	move	$a0, $s3
	move	$a1, $s2
	move	$a3, $s1
	move	$a4, $s0
	pcaddu18i	$ra, %call36(_ZN14btOptimizedBvh5buildEP23btStridingMeshInterfacebRK9btVector3S4_)
	jirl	$ra, $ra, 0
.Ltmp24:                                # EH_LABEL
# %bb.4:
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 81
.LBB2_5:
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB2_6:
.Ltmp22:                                # EH_LABEL
	b	.LBB2_8
.LBB2_7:
.Ltmp25:                                # EH_LABEL
.LBB2_8:
	move	$s0, $a0
.Ltmp26:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN19btTriangleMeshShapeD2Ev)
	jirl	$ra, $ra, 0
.Ltmp27:                                # EH_LABEL
# %bb.9:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB2_10:
.Ltmp28:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	_ZN22btBvhTriangleMeshShapeC2EP23btStridingMeshInterfacebRK9btVector3S4_b, .Lfunc_end2-_ZN22btBvhTriangleMeshShapeC2EP23btStridingMeshInterfacebRK9btVector3S4_b
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
	.uleb128 .Lfunc_begin1-.Lfunc_begin1    # >> Call Site 1 <<
	.uleb128 .Ltmp18-.Lfunc_begin1          #   Call between .Lfunc_begin1 and .Ltmp18
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp18-.Lfunc_begin1          # >> Call Site 2 <<
	.uleb128 .Ltmp19-.Ltmp18                #   Call between .Ltmp18 and .Ltmp19
	.uleb128 .Ltmp25-.Lfunc_begin1          #     jumps to .Ltmp25
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp20-.Lfunc_begin1          # >> Call Site 3 <<
	.uleb128 .Ltmp21-.Ltmp20                #   Call between .Ltmp20 and .Ltmp21
	.uleb128 .Ltmp22-.Lfunc_begin1          #     jumps to .Ltmp22
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp23-.Lfunc_begin1          # >> Call Site 4 <<
	.uleb128 .Ltmp24-.Ltmp23                #   Call between .Ltmp23 and .Ltmp24
	.uleb128 .Ltmp25-.Lfunc_begin1          #     jumps to .Ltmp25
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp26-.Lfunc_begin1          # >> Call Site 5 <<
	.uleb128 .Ltmp27-.Ltmp26                #   Call between .Ltmp26 and .Ltmp27
	.uleb128 .Ltmp28-.Lfunc_begin1          #     jumps to .Ltmp28
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp27-.Lfunc_begin1          # >> Call Site 6 <<
	.uleb128 .Lfunc_end2-.Ltmp27            #   Call between .Ltmp27 and .Lfunc_end2
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
	.globl	_ZN22btBvhTriangleMeshShape16partialRefitTreeERK9btVector3S2_ # -- Begin function _ZN22btBvhTriangleMeshShape16partialRefitTreeERK9btVector3S2_
	.p2align	5
	.type	_ZN22btBvhTriangleMeshShape16partialRefitTreeERK9btVector3S2_,@function
_ZN22btBvhTriangleMeshShape16partialRefitTreeERK9btVector3S2_: # @_ZN22btBvhTriangleMeshShape16partialRefitTreeERK9btVector3S2_
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
	ld.d	$a0, $a0, 72
	ld.d	$a3, $fp, 64
	move	$s0, $a2
	move	$s1, $a1
	move	$a1, $a3
	move	$a2, $s1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZN14btOptimizedBvh12refitPartialEP23btStridingMeshInterfaceRK9btVector3S4_)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $s1, 0
	fld.s	$fa1, $fp, 28
	fcmp.cule.s	$fcc0, $fa1, $fa0
	bceqz	$fcc0, .LBB3_10
# %bb.1:                                # %_Z8btSetMinIfEvRT_RKS0_.exit.i
	fld.s	$fa0, $s1, 4
	fld.s	$fa1, $fp, 32
	fcmp.cule.s	$fcc0, $fa1, $fa0
	bceqz	$fcc0, .LBB3_11
.LBB3_2:                                # %_Z8btSetMinIfEvRT_RKS0_.exit5.i
	fld.s	$fa0, $s1, 8
	fld.s	$fa1, $fp, 36
	fcmp.cule.s	$fcc0, $fa1, $fa0
	bceqz	$fcc0, .LBB3_12
.LBB3_3:                                # %_Z8btSetMinIfEvRT_RKS0_.exit6.i
	fld.s	$fa0, $s1, 12
	fld.s	$fa1, $fp, 40
	fcmp.cule.s	$fcc0, $fa1, $fa0
	bceqz	$fcc0, .LBB3_13
.LBB3_4:                                # %_ZN9btVector36setMinERKS_.exit
	fld.s	$fa1, $fp, 44
	fld.s	$fa0, $s0, 0
	fcmp.cule.s	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB3_14
.LBB3_5:                                # %_Z8btSetMaxIfEvRT_RKS0_.exit.i
	fld.s	$fa1, $fp, 48
	fld.s	$fa0, $s0, 4
	fcmp.cule.s	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB3_15
.LBB3_6:                                # %_Z8btSetMaxIfEvRT_RKS0_.exit5.i
	fld.s	$fa1, $fp, 52
	fld.s	$fa0, $s0, 8
	fcmp.cule.s	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB3_16
.LBB3_7:                                # %_Z8btSetMaxIfEvRT_RKS0_.exit6.i
	fld.s	$fa1, $fp, 56
	fld.s	$fa0, $s0, 12
	fcmp.cule.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB3_9
.LBB3_8:
	fst.s	$fa0, $fp, 56
.LBB3_9:                                # %_ZN9btVector36setMaxERKS_.exit
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB3_10:
	fst.s	$fa0, $fp, 28
	fld.s	$fa0, $s1, 4
	fld.s	$fa1, $fp, 32
	fcmp.cule.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB3_2
.LBB3_11:
	fst.s	$fa0, $fp, 32
	fld.s	$fa0, $s1, 8
	fld.s	$fa1, $fp, 36
	fcmp.cule.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB3_3
.LBB3_12:
	fst.s	$fa0, $fp, 36
	fld.s	$fa0, $s1, 12
	fld.s	$fa1, $fp, 40
	fcmp.cule.s	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB3_4
.LBB3_13:
	fst.s	$fa0, $fp, 40
	fld.s	$fa1, $fp, 44
	fld.s	$fa0, $s0, 0
	fcmp.cule.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB3_5
.LBB3_14:
	fst.s	$fa0, $fp, 44
	fld.s	$fa1, $fp, 48
	fld.s	$fa0, $s0, 4
	fcmp.cule.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB3_6
.LBB3_15:
	fst.s	$fa0, $fp, 48
	fld.s	$fa1, $fp, 52
	fld.s	$fa0, $s0, 8
	fcmp.cule.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB3_7
.LBB3_16:
	fst.s	$fa0, $fp, 52
	fld.s	$fa1, $fp, 56
	fld.s	$fa0, $s0, 12
	fcmp.cule.s	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB3_8
	b	.LBB3_9
.Lfunc_end3:
	.size	_ZN22btBvhTriangleMeshShape16partialRefitTreeERK9btVector3S2_, .Lfunc_end3-_ZN22btBvhTriangleMeshShape16partialRefitTreeERK9btVector3S2_
	.cfi_endproc
                                        # -- End function
	.globl	_ZN22btBvhTriangleMeshShape9refitTreeERK9btVector3S2_ # -- Begin function _ZN22btBvhTriangleMeshShape9refitTreeERK9btVector3S2_
	.p2align	5
	.type	_ZN22btBvhTriangleMeshShape9refitTreeERK9btVector3S2_,@function
_ZN22btBvhTriangleMeshShape9refitTreeERK9btVector3S2_: # @_ZN22btBvhTriangleMeshShape9refitTreeERK9btVector3S2_
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	ld.d	$a0, $a0, 72
	ld.d	$a3, $fp, 64
	move	$a4, $a2
	move	$a2, $a1
	move	$a1, $a3
	move	$a3, $a4
	pcaddu18i	$ra, %call36(_ZN14btOptimizedBvh5refitEP23btStridingMeshInterfaceRK9btVector3S4_)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZN19btTriangleMeshShape15recalcLocalAabbEv)
	jr	$t8
.Lfunc_end4:
	.size	_ZN22btBvhTriangleMeshShape9refitTreeERK9btVector3S2_, .Lfunc_end4-_ZN22btBvhTriangleMeshShape9refitTreeERK9btVector3S2_
	.cfi_endproc
                                        # -- End function
	.globl	_ZN22btBvhTriangleMeshShapeD2Ev # -- Begin function _ZN22btBvhTriangleMeshShapeD2Ev
	.p2align	5
	.type	_ZN22btBvhTriangleMeshShapeD2Ev,@function
_ZN22btBvhTriangleMeshShapeD2Ev:        # @_ZN22btBvhTriangleMeshShapeD2Ev
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
	pcalau12i	$a0, %pc_hi20(_ZTV22btBvhTriangleMeshShape+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV22btBvhTriangleMeshShape+16)
	ld.bu	$a1, $fp, 81
	st.d	$a0, $fp, 0
	beqz	$a1, .LBB5_3
# %bb.1:
	ld.d	$a0, $fp, 72
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 0
.Ltmp29:                                # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp30:                                # EH_LABEL
# %bb.2:
	ld.d	$a0, $fp, 72
.Ltmp31:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp32:                                # EH_LABEL
.LBB5_3:
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZN19btTriangleMeshShapeD2Ev)
	jr	$t8
.LBB5_4:
.Ltmp33:                                # EH_LABEL
	move	$s0, $a0
.Ltmp34:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN19btTriangleMeshShapeD2Ev)
	jirl	$ra, $ra, 0
.Ltmp35:                                # EH_LABEL
# %bb.5:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB5_6:
.Ltmp36:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end5:
	.size	_ZN22btBvhTriangleMeshShapeD2Ev, .Lfunc_end5-_ZN22btBvhTriangleMeshShapeD2Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table5:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase2-.Lttbaseref2
.Lttbaseref2:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Ltmp29-.Lfunc_begin2          # >> Call Site 1 <<
	.uleb128 .Ltmp32-.Ltmp29                #   Call between .Ltmp29 and .Ltmp32
	.uleb128 .Ltmp33-.Lfunc_begin2          #     jumps to .Ltmp33
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp32-.Lfunc_begin2          # >> Call Site 2 <<
	.uleb128 .Ltmp34-.Ltmp32                #   Call between .Ltmp32 and .Ltmp34
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp34-.Lfunc_begin2          # >> Call Site 3 <<
	.uleb128 .Ltmp35-.Ltmp34                #   Call between .Ltmp34 and .Ltmp35
	.uleb128 .Ltmp36-.Lfunc_begin2          #     jumps to .Ltmp36
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp35-.Lfunc_begin2          # >> Call Site 4 <<
	.uleb128 .Lfunc_end5-.Ltmp35            #   Call between .Ltmp35 and .Lfunc_end5
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
	.globl	_ZN22btBvhTriangleMeshShapeD0Ev # -- Begin function _ZN22btBvhTriangleMeshShapeD0Ev
	.p2align	5
	.type	_ZN22btBvhTriangleMeshShapeD0Ev,@function
_ZN22btBvhTriangleMeshShapeD0Ev:        # @_ZN22btBvhTriangleMeshShapeD0Ev
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
	pcalau12i	$a0, %pc_hi20(_ZTV22btBvhTriangleMeshShape+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV22btBvhTriangleMeshShape+16)
	ld.bu	$a1, $fp, 81
	st.d	$a0, $fp, 0
	beqz	$a1, .LBB6_3
# %bb.1:
	ld.d	$a0, $fp, 72
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 0
.Ltmp37:                                # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp38:                                # EH_LABEL
# %bb.2:
	ld.d	$a0, $fp, 72
.Ltmp39:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp40:                                # EH_LABEL
.LBB6_3:
.Ltmp45:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN19btTriangleMeshShapeD2Ev)
	jirl	$ra, $ra, 0
.Ltmp46:                                # EH_LABEL
# %bb.4:                                # %_ZN22btBvhTriangleMeshShapeD2Ev.exit
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_Z21btAlignedFreeInternalPv)
	jr	$t8
.LBB6_5:
.Ltmp47:                                # EH_LABEL
	move	$s0, $a0
	b	.LBB6_7
.LBB6_6:
.Ltmp41:                                # EH_LABEL
	move	$s0, $a0
.Ltmp42:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN19btTriangleMeshShapeD2Ev)
	jirl	$ra, $ra, 0
.Ltmp43:                                # EH_LABEL
.LBB6_7:                                # %.body
.Ltmp48:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp49:                                # EH_LABEL
# %bb.8:                                # %_ZN22btBvhTriangleMeshShapedlEPv.exit
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB6_9:
.Ltmp44:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB6_10:
.Ltmp50:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end6:
	.size	_ZN22btBvhTriangleMeshShapeD0Ev, .Lfunc_end6-_ZN22btBvhTriangleMeshShapeD0Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table6:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase3-.Lttbaseref3
.Lttbaseref3:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Ltmp37-.Lfunc_begin3          # >> Call Site 1 <<
	.uleb128 .Ltmp40-.Ltmp37                #   Call between .Ltmp37 and .Ltmp40
	.uleb128 .Ltmp41-.Lfunc_begin3          #     jumps to .Ltmp41
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp45-.Lfunc_begin3          # >> Call Site 2 <<
	.uleb128 .Ltmp46-.Ltmp45                #   Call between .Ltmp45 and .Ltmp46
	.uleb128 .Ltmp47-.Lfunc_begin3          #     jumps to .Ltmp47
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp46-.Lfunc_begin3          # >> Call Site 3 <<
	.uleb128 .Ltmp42-.Ltmp46                #   Call between .Ltmp46 and .Ltmp42
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp42-.Lfunc_begin3          # >> Call Site 4 <<
	.uleb128 .Ltmp43-.Ltmp42                #   Call between .Ltmp42 and .Ltmp43
	.uleb128 .Ltmp44-.Lfunc_begin3          #     jumps to .Ltmp44
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp48-.Lfunc_begin3          # >> Call Site 5 <<
	.uleb128 .Ltmp49-.Ltmp48                #   Call between .Ltmp48 and .Ltmp49
	.uleb128 .Ltmp50-.Lfunc_begin3          #     jumps to .Ltmp50
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp49-.Lfunc_begin3          # >> Call Site 6 <<
	.uleb128 .Lfunc_end6-.Ltmp49            #   Call between .Ltmp49 and .Lfunc_end6
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
	.globl	_ZN22btBvhTriangleMeshShape14performRaycastEP18btTriangleCallbackRK9btVector3S4_ # -- Begin function _ZN22btBvhTriangleMeshShape14performRaycastEP18btTriangleCallbackRK9btVector3S4_
	.p2align	5
	.type	_ZN22btBvhTriangleMeshShape14performRaycastEP18btTriangleCallbackRK9btVector3S4_,@function
_ZN22btBvhTriangleMeshShape14performRaycastEP18btTriangleCallbackRK9btVector3S4_: # @_ZN22btBvhTriangleMeshShape14performRaycastEP18btTriangleCallbackRK9btVector3S4_
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	ld.d	$a4, $a0, 64
	pcalau12i	$a5, %pc_hi20(_ZTVZN22btBvhTriangleMeshShape14performRaycastEP18btTriangleCallbackRK9btVector3S4_E21MyNodeOverlapCallback+16)
	addi.d	$a5, $a5, %pc_lo12(_ZTVZN22btBvhTriangleMeshShape14performRaycastEP18btTriangleCallbackRK9btVector3S4_E21MyNodeOverlapCallback+16)
	ld.d	$a0, $a0, 72
	st.d	$a5, $sp, 0
	st.d	$a4, $sp, 8
	st.d	$a1, $sp, 16
	addi.d	$a1, $sp, 0
	pcaddu18i	$ra, %call36(_ZNK14btQuantizedBvh25reportRayOverlappingNodexEP21btNodeOverlapCallbackRK9btVector3S4_)
	jirl	$ra, $ra, 0
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end7:
	.size	_ZN22btBvhTriangleMeshShape14performRaycastEP18btTriangleCallbackRK9btVector3S4_, .Lfunc_end7-_ZN22btBvhTriangleMeshShape14performRaycastEP18btTriangleCallbackRK9btVector3S4_
	.cfi_endproc
                                        # -- End function
	.globl	_ZN22btBvhTriangleMeshShape17performConvexcastEP18btTriangleCallbackRK9btVector3S4_S4_S4_ # -- Begin function _ZN22btBvhTriangleMeshShape17performConvexcastEP18btTriangleCallbackRK9btVector3S4_S4_S4_
	.p2align	5
	.type	_ZN22btBvhTriangleMeshShape17performConvexcastEP18btTriangleCallbackRK9btVector3S4_S4_S4_,@function
_ZN22btBvhTriangleMeshShape17performConvexcastEP18btTriangleCallbackRK9btVector3S4_S4_S4_: # @_ZN22btBvhTriangleMeshShape17performConvexcastEP18btTriangleCallbackRK9btVector3S4_S4_S4_
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	ld.d	$a6, $a0, 64
	pcalau12i	$a7, %pc_hi20(_ZTVZN22btBvhTriangleMeshShape17performConvexcastEP18btTriangleCallbackRK9btVector3S4_S4_S4_E21MyNodeOverlapCallback+16)
	addi.d	$a7, $a7, %pc_lo12(_ZTVZN22btBvhTriangleMeshShape17performConvexcastEP18btTriangleCallbackRK9btVector3S4_S4_S4_E21MyNodeOverlapCallback+16)
	ld.d	$a0, $a0, 72
	st.d	$a7, $sp, 0
	st.d	$a6, $sp, 8
	st.d	$a1, $sp, 16
	addi.d	$a1, $sp, 0
	pcaddu18i	$ra, %call36(_ZNK14btQuantizedBvh29reportBoxCastOverlappingNodexEP21btNodeOverlapCallbackRK9btVector3S4_S4_S4_)
	jirl	$ra, $ra, 0
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end8:
	.size	_ZN22btBvhTriangleMeshShape17performConvexcastEP18btTriangleCallbackRK9btVector3S4_S4_S4_, .Lfunc_end8-_ZN22btBvhTriangleMeshShape17performConvexcastEP18btTriangleCallbackRK9btVector3S4_S4_S4_
	.cfi_endproc
                                        # -- End function
	.globl	_ZNK22btBvhTriangleMeshShape19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_ # -- Begin function _ZNK22btBvhTriangleMeshShape19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_
	.p2align	5
	.type	_ZNK22btBvhTriangleMeshShape19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_,@function
_ZNK22btBvhTriangleMeshShape19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_: # @_ZNK22btBvhTriangleMeshShape19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -96
	.cfi_def_cfa_offset 96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	ld.d	$a4, $a0, 64
	pcalau12i	$a5, %pc_hi20(_ZTVZNK22btBvhTriangleMeshShape19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_E21MyNodeOverlapCallback+16)
	addi.d	$a5, $a5, %pc_lo12(_ZTVZNK22btBvhTriangleMeshShape19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_E21MyNodeOverlapCallback+16)
	ld.d	$a0, $a0, 72
	st.d	$a5, $sp, 16
	st.d	$a4, $sp, 24
	st.d	$a1, $sp, 32
	addi.d	$a1, $sp, 16
	pcaddu18i	$ra, %call36(_ZNK14btQuantizedBvh26reportAabbOverlappingNodexEP21btNodeOverlapCallbackRK9btVector3S4_)
	jirl	$ra, $ra, 0
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end9:
	.size	_ZNK22btBvhTriangleMeshShape19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_, .Lfunc_end9-_ZNK22btBvhTriangleMeshShape19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN21btNodeOverlapCallbackD2Ev,"axG",@progbits,_ZN21btNodeOverlapCallbackD2Ev,comdat
	.weak	_ZN21btNodeOverlapCallbackD2Ev  # -- Begin function _ZN21btNodeOverlapCallbackD2Ev
	.p2align	5
	.type	_ZN21btNodeOverlapCallbackD2Ev,@function
_ZN21btNodeOverlapCallbackD2Ev:         # @_ZN21btNodeOverlapCallbackD2Ev
# %bb.0:
	ret
.Lfunc_end10:
	.size	_ZN21btNodeOverlapCallbackD2Ev, .Lfunc_end10-_ZN21btNodeOverlapCallbackD2Ev
                                        # -- End function
	.text
	.globl	_ZN22btBvhTriangleMeshShape15setLocalScalingERK9btVector3 # -- Begin function _ZN22btBvhTriangleMeshShape15setLocalScalingERK9btVector3
	.p2align	5
	.type	_ZN22btBvhTriangleMeshShape15setLocalScalingERK9btVector3,@function
_ZN22btBvhTriangleMeshShape15setLocalScalingERK9btVector3: # @_ZN22btBvhTriangleMeshShape15setLocalScalingERK9btVector3
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
	ld.d	$a0, $a0, 0
	ld.d	$a2, $a0, 56
	move	$s0, $a1
	move	$a0, $fp
	jirl	$ra, $a2, 0
	fld.s	$fa0, $a0, 0
	fld.s	$fa1, $s0, 0
	fld.s	$fa2, $a0, 4
	fld.s	$fa3, $s0, 4
	fld.s	$fa4, $a0, 8
	fld.s	$fa5, $s0, 8
	fsub.s	$fa0, $fa0, $fa1
	fsub.s	$fa1, $fa2, $fa3
	fsub.s	$fa2, $fa4, $fa5
	fmul.s	$fa1, $fa1, $fa1
	fmadd.s	$fa0, $fa0, $fa0, $fa1
	fmadd.s	$fa0, $fa2, $fa2, $fa0
	lu12i.w	$a0, 212992
	movgr2fr.w	$fa1, $a0
	fcmp.cule.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB11_4
# %bb.1:
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN19btTriangleMeshShape15setLocalScalingERK9btVector3)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $fp, 81
	beqz	$a0, .LBB11_3
# %bb.2:
	ld.d	$a0, $fp, 72
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 0
	jirl	$ra, $a1, 0
	ld.d	$a0, $fp, 72
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.LBB11_3:
	ori	$a0, $zero, 248
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_Z22btAlignedAllocInternalmi)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	pcaddu18i	$ra, %call36(_ZN14btOptimizedBvhC1Ev)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 64
	ld.bu	$a2, $fp, 80
	st.d	$s0, $fp, 72
	addi.d	$a3, $fp, 28
	addi.d	$a4, $fp, 44
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN14btOptimizedBvh5buildEP23btStridingMeshInterfacebRK9btVector3S4_)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 81
.LBB11_4:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end11:
	.size	_ZN22btBvhTriangleMeshShape15setLocalScalingERK9btVector3, .Lfunc_end11-_ZN22btBvhTriangleMeshShape15setLocalScalingERK9btVector3
	.cfi_endproc
                                        # -- End function
	.globl	_ZN22btBvhTriangleMeshShape15setOptimizedBvhEP14btOptimizedBvhRK9btVector3 # -- Begin function _ZN22btBvhTriangleMeshShape15setOptimizedBvhEP14btOptimizedBvhRK9btVector3
	.p2align	5
	.type	_ZN22btBvhTriangleMeshShape15setOptimizedBvhEP14btOptimizedBvhRK9btVector3,@function
_ZN22btBvhTriangleMeshShape15setOptimizedBvhEP14btOptimizedBvhRK9btVector3: # @_ZN22btBvhTriangleMeshShape15setOptimizedBvhEP14btOptimizedBvhRK9btVector3
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
	ld.d	$a0, $a0, 0
	st.d	$a1, $fp, 72
	st.b	$zero, $fp, 81
	ld.d	$a1, $a0, 56
	move	$s0, $a2
	move	$a0, $fp
	jirl	$ra, $a1, 0
	fld.s	$fa0, $a0, 0
	fld.s	$fa1, $s0, 0
	fld.s	$fa2, $a0, 4
	fld.s	$fa3, $s0, 4
	fld.s	$fa4, $a0, 8
	fld.s	$fa5, $s0, 8
	fsub.s	$fa0, $fa0, $fa1
	fsub.s	$fa1, $fa2, $fa3
	fsub.s	$fa2, $fa4, $fa5
	fmul.s	$fa1, $fa1, $fa1
	fmadd.s	$fa0, $fa0, $fa0, $fa1
	fmadd.s	$fa0, $fa2, $fa2, $fa0
	lu12i.w	$a0, 212992
	movgr2fr.w	$fa1, $a0
	fcmp.cule.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB12_2
# %bb.1:
	move	$a0, $fp
	move	$a1, $s0
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZN19btTriangleMeshShape15setLocalScalingERK9btVector3)
	jr	$t8
.LBB12_2:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end12:
	.size	_ZN22btBvhTriangleMeshShape15setOptimizedBvhEP14btOptimizedBvhRK9btVector3, .Lfunc_end12-_ZN22btBvhTriangleMeshShape15setOptimizedBvhEP14btOptimizedBvhRK9btVector3
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK22btBvhTriangleMeshShape7getNameEv,"axG",@progbits,_ZNK22btBvhTriangleMeshShape7getNameEv,comdat
	.weak	_ZNK22btBvhTriangleMeshShape7getNameEv # -- Begin function _ZNK22btBvhTriangleMeshShape7getNameEv
	.p2align	5
	.type	_ZNK22btBvhTriangleMeshShape7getNameEv,@function
_ZNK22btBvhTriangleMeshShape7getNameEv: # @_ZNK22btBvhTriangleMeshShape7getNameEv
# %bb.0:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ret
.Lfunc_end13:
	.size	_ZNK22btBvhTriangleMeshShape7getNameEv, .Lfunc_end13-_ZNK22btBvhTriangleMeshShape7getNameEv
                                        # -- End function
	.section	.text._ZN14btConcaveShape9setMarginEf,"axG",@progbits,_ZN14btConcaveShape9setMarginEf,comdat
	.weak	_ZN14btConcaveShape9setMarginEf # -- Begin function _ZN14btConcaveShape9setMarginEf
	.p2align	5
	.type	_ZN14btConcaveShape9setMarginEf,@function
_ZN14btConcaveShape9setMarginEf:        # @_ZN14btConcaveShape9setMarginEf
# %bb.0:
	fst.s	$fa0, $a0, 24
	ret
.Lfunc_end14:
	.size	_ZN14btConcaveShape9setMarginEf, .Lfunc_end14-_ZN14btConcaveShape9setMarginEf
                                        # -- End function
	.section	.text._ZNK14btConcaveShape9getMarginEv,"axG",@progbits,_ZNK14btConcaveShape9getMarginEv,comdat
	.weak	_ZNK14btConcaveShape9getMarginEv # -- Begin function _ZNK14btConcaveShape9getMarginEv
	.p2align	5
	.type	_ZNK14btConcaveShape9getMarginEv,@function
_ZNK14btConcaveShape9getMarginEv:       # @_ZNK14btConcaveShape9getMarginEv
# %bb.0:
	fld.s	$fa0, $a0, 24
	ret
.Lfunc_end15:
	.size	_ZNK14btConcaveShape9getMarginEv, .Lfunc_end15-_ZNK14btConcaveShape9getMarginEv
                                        # -- End function
	.section	.text._ZNK19btTriangleMeshShape37localGetSupportingVertexWithoutMarginERK9btVector3,"axG",@progbits,_ZNK19btTriangleMeshShape37localGetSupportingVertexWithoutMarginERK9btVector3,comdat
	.weak	_ZNK19btTriangleMeshShape37localGetSupportingVertexWithoutMarginERK9btVector3 # -- Begin function _ZNK19btTriangleMeshShape37localGetSupportingVertexWithoutMarginERK9btVector3
	.p2align	5
	.type	_ZNK19btTriangleMeshShape37localGetSupportingVertexWithoutMarginERK9btVector3,@function
_ZNK19btTriangleMeshShape37localGetSupportingVertexWithoutMarginERK9btVector3: # @_ZNK19btTriangleMeshShape37localGetSupportingVertexWithoutMarginERK9btVector3
	.cfi_startproc
# %bb.0:
	ld.d	$a2, $a0, 0
	ld.d	$a2, $a2, 104
	jr	$a2
.Lfunc_end16:
	.size	_ZNK19btTriangleMeshShape37localGetSupportingVertexWithoutMarginERK9btVector3, .Lfunc_end16-_ZNK19btTriangleMeshShape37localGetSupportingVertexWithoutMarginERK9btVector3
	.cfi_endproc
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZZN22btBvhTriangleMeshShape14performRaycastEP18btTriangleCallbackRK9btVector3S4_EN21MyNodeOverlapCallbackD0Ev
	.type	_ZZN22btBvhTriangleMeshShape14performRaycastEP18btTriangleCallbackRK9btVector3S4_EN21MyNodeOverlapCallbackD0Ev,@function
_ZZN22btBvhTriangleMeshShape14performRaycastEP18btTriangleCallbackRK9btVector3S4_EN21MyNodeOverlapCallbackD0Ev: # @_ZZN22btBvhTriangleMeshShape14performRaycastEP18btTriangleCallbackRK9btVector3S4_EN21MyNodeOverlapCallbackD0Ev
	.cfi_startproc
# %bb.0:
	pcaddu18i	$t8, %call36(_ZdlPv)
	jr	$t8
.Lfunc_end17:
	.size	_ZZN22btBvhTriangleMeshShape14performRaycastEP18btTriangleCallbackRK9btVector3S4_EN21MyNodeOverlapCallbackD0Ev, .Lfunc_end17-_ZZN22btBvhTriangleMeshShape14performRaycastEP18btTriangleCallbackRK9btVector3S4_EN21MyNodeOverlapCallbackD0Ev
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZZN22btBvhTriangleMeshShape14performRaycastEP18btTriangleCallbackRK9btVector3S4_EN21MyNodeOverlapCallback11processNodeEii
	.type	_ZZN22btBvhTriangleMeshShape14performRaycastEP18btTriangleCallbackRK9btVector3S4_EN21MyNodeOverlapCallback11processNodeEii,@function
_ZZN22btBvhTriangleMeshShape14performRaycastEP18btTriangleCallbackRK9btVector3S4_EN21MyNodeOverlapCallback11processNodeEii: # @_ZZN22btBvhTriangleMeshShape14performRaycastEP18btTriangleCallbackRK9btVector3S4_EN21MyNodeOverlapCallback11processNodeEii
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -160
	.cfi_def_cfa_offset 160
	st.d	$ra, $sp, 152                   # 8-byte Folded Spill
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	st.d	$s0, $sp, 136                   # 8-byte Folded Spill
	st.d	$s1, $sp, 128                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	move	$fp, $a0
	ld.d	$a0, $a0, 8
	ld.d	$a3, $a0, 0
	ld.d	$t0, $a3, 32
	move	$s1, $a2
	move	$s0, $a1
	st.d	$a1, $sp, 8
	addi.d	$t1, $sp, 36
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 68
	addi.d	$a3, $sp, 64
	addi.d	$a4, $sp, 60
	addi.d	$a5, $sp, 48
	addi.d	$a6, $sp, 44
	addi.d	$a7, $sp, 40
	st.d	$t1, $sp, 0
	jirl	$ra, $t0, 0
	ld.d	$a2, $sp, 48
	ld.w	$a5, $sp, 44
	ld.d	$a3, $fp, 8
	ld.w	$a4, $sp, 36
	ld.w	$a6, $sp, 64
	ld.d	$a0, $sp, 72
	ld.w	$a1, $sp, 60
	mul.w	$a5, $a5, $s1
	add.d	$a2, $a2, $a5
	ori	$a5, $zero, 3
	beqz	$a6, .LBB18_3
# %bb.1:                                # %.split
	bne	$a4, $a5, .LBB18_5
# %bb.2:                                # %.split.split.us.preheader
	ld.hu	$a4, $a2, 4
	mul.w	$a4, $a1, $a4
	fldx.d	$fa0, $a0, $a4
	fld.s	$fa1, $a3, 8
	add.d	$a4, $a0, $a4
	fcvt.s.d	$fa0, $fa0
	fmul.s	$fa0, $fa1, $fa0
	fld.d	$fa2, $a4, 8
	fld.s	$fa3, $a3, 12
	fld.d	$fa4, $a4, 16
	fld.s	$fa5, $a3, 16
	fcvt.s.d	$fa2, $fa2
	fmul.s	$fa2, $fa3, $fa2
	fcvt.s.d	$fa4, $fa4
	fmul.s	$fa4, $fa5, $fa4
	fst.s	$fa0, $sp, 112
	fst.s	$fa2, $sp, 116
	fst.s	$fa4, $sp, 120
	st.w	$zero, $sp, 124
	ld.hu	$a3, $a2, 2
	mul.w	$a3, $a1, $a3
	fldx.d	$fa0, $a0, $a3
	add.d	$a3, $a0, $a3
	fld.d	$fa2, $a3, 8
	fcvt.s.d	$fa0, $fa0
	fld.d	$fa4, $a3, 16
	fmul.s	$fa0, $fa1, $fa0
	fcvt.s.d	$fa2, $fa2
	fmul.s	$fa2, $fa3, $fa2
	fcvt.s.d	$fa4, $fa4
	fmul.s	$fa4, $fa5, $fa4
	fst.s	$fa0, $sp, 96
	fst.s	$fa2, $sp, 100
	fst.s	$fa4, $sp, 104
	st.w	$zero, $sp, 108
	ld.hu	$a2, $a2, 0
	b	.LBB18_6
.LBB18_3:                               # %.split.us
	bne	$a4, $a5, .LBB18_7
# %bb.4:                                # %.split.us.split.us.preheader
	ld.hu	$a4, $a2, 4
	mul.w	$a4, $a1, $a4
	add.d	$a5, $a0, $a4
	fldx.s	$fa0, $a0, $a4
	fld.s	$fa1, $a3, 8
	fld.s	$fa2, $a5, 4
	fld.s	$fa3, $a3, 12
	fld.s	$fa4, $a5, 8
	fld.s	$fa5, $a3, 16
	fmul.s	$fa0, $fa0, $fa1
	fmul.s	$fa2, $fa2, $fa3
	fmul.s	$fa4, $fa4, $fa5
	fst.s	$fa0, $sp, 112
	fst.s	$fa2, $sp, 116
	fst.s	$fa4, $sp, 120
	st.w	$zero, $sp, 124
	ld.hu	$a3, $a2, 2
	mul.w	$a3, $a1, $a3
	add.d	$a4, $a0, $a3
	fldx.s	$fa0, $a0, $a3
	fld.s	$fa2, $a4, 4
	fld.s	$fa4, $a4, 8
	fmul.s	$fa0, $fa0, $fa1
	fmul.s	$fa2, $fa2, $fa3
	fmul.s	$fa4, $fa4, $fa5
	fst.s	$fa0, $sp, 96
	fst.s	$fa2, $sp, 100
	fst.s	$fa4, $sp, 104
	st.w	$zero, $sp, 108
	ld.hu	$a2, $a2, 0
	b	.LBB18_8
.LBB18_5:                               # %.split.split.preheader
	ld.w	$a4, $a2, 8
	mul.w	$a4, $a1, $a4
	fldx.d	$fa0, $a0, $a4
	fld.s	$fa1, $a3, 8
	add.d	$a4, $a0, $a4
	fcvt.s.d	$fa0, $fa0
	fmul.s	$fa0, $fa1, $fa0
	fld.d	$fa2, $a4, 8
	fld.s	$fa3, $a3, 12
	fld.d	$fa4, $a4, 16
	fld.s	$fa5, $a3, 16
	fcvt.s.d	$fa2, $fa2
	fmul.s	$fa2, $fa3, $fa2
	fcvt.s.d	$fa4, $fa4
	fmul.s	$fa4, $fa5, $fa4
	fst.s	$fa0, $sp, 112
	fst.s	$fa2, $sp, 116
	fst.s	$fa4, $sp, 120
	st.w	$zero, $sp, 124
	ld.w	$a3, $a2, 4
	mul.w	$a3, $a1, $a3
	fldx.d	$fa0, $a0, $a3
	add.d	$a3, $a0, $a3
	fld.d	$fa2, $a3, 8
	fcvt.s.d	$fa0, $fa0
	fld.d	$fa4, $a3, 16
	fmul.s	$fa0, $fa1, $fa0
	fcvt.s.d	$fa2, $fa2
	fmul.s	$fa2, $fa3, $fa2
	fcvt.s.d	$fa4, $fa4
	fmul.s	$fa4, $fa5, $fa4
	fst.s	$fa0, $sp, 96
	fst.s	$fa2, $sp, 100
	fst.s	$fa4, $sp, 104
	st.w	$zero, $sp, 108
	ld.w	$a2, $a2, 0
.LBB18_6:                               # %.split39.us
	mul.w	$a1, $a1, $a2
	fldx.d	$fa0, $a0, $a1
	add.d	$a0, $a0, $a1
	fld.d	$fa2, $a0, 8
	fcvt.s.d	$fa0, $fa0
	fld.d	$fa4, $a0, 16
	fmul.s	$fa0, $fa1, $fa0
	fcvt.s.d	$fa1, $fa2
	fmul.s	$fa1, $fa3, $fa1
	fcvt.s.d	$fa2, $fa4
	fmul.s	$fa2, $fa5, $fa2
	b	.LBB18_9
.LBB18_7:                               # %.split.us.split.preheader
	ld.w	$a4, $a2, 8
	mul.w	$a4, $a1, $a4
	add.d	$a5, $a0, $a4
	fldx.s	$fa0, $a0, $a4
	fld.s	$fa1, $a3, 8
	fld.s	$fa2, $a5, 4
	fld.s	$fa3, $a3, 12
	fld.s	$fa4, $a5, 8
	fld.s	$fa5, $a3, 16
	fmul.s	$fa0, $fa0, $fa1
	fmul.s	$fa2, $fa2, $fa3
	fmul.s	$fa4, $fa4, $fa5
	fst.s	$fa0, $sp, 112
	fst.s	$fa2, $sp, 116
	fst.s	$fa4, $sp, 120
	st.w	$zero, $sp, 124
	ld.w	$a3, $a2, 4
	mul.w	$a3, $a1, $a3
	add.d	$a4, $a0, $a3
	fldx.s	$fa0, $a0, $a3
	fld.s	$fa2, $a4, 4
	fld.s	$fa4, $a4, 8
	fmul.s	$fa0, $fa0, $fa1
	fmul.s	$fa2, $fa2, $fa3
	fmul.s	$fa4, $fa4, $fa5
	fst.s	$fa0, $sp, 96
	fst.s	$fa2, $sp, 100
	fst.s	$fa4, $sp, 104
	st.w	$zero, $sp, 108
	ld.w	$a2, $a2, 0
.LBB18_8:                               # %.split39.us
	mul.w	$a1, $a1, $a2
	add.d	$a2, $a0, $a1
	fldx.s	$fa0, $a0, $a1
	fld.s	$fa2, $a2, 4
	fld.s	$fa4, $a2, 8
	fmul.s	$fa0, $fa0, $fa1
	fmul.s	$fa1, $fa2, $fa3
	fmul.s	$fa2, $fa4, $fa5
.LBB18_9:                               # %.split39.us
	ld.d	$a0, $fp, 16
	fst.s	$fa0, $sp, 80
	fst.s	$fa1, $sp, 84
	fst.s	$fa2, $sp, 88
	ld.d	$a1, $a0, 0
	ld.d	$a4, $a1, 16
	st.w	$zero, $sp, 92
	addi.d	$a1, $sp, 80
	move	$a2, $s0
	move	$a3, $s1
	jirl	$ra, $a4, 0
	ld.d	$a0, $fp, 8
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a1, 48
	move	$a1, $s0
	jirl	$ra, $a2, 0
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 160
	ret
.Lfunc_end18:
	.size	_ZZN22btBvhTriangleMeshShape14performRaycastEP18btTriangleCallbackRK9btVector3S4_EN21MyNodeOverlapCallback11processNodeEii, .Lfunc_end18-_ZZN22btBvhTriangleMeshShape14performRaycastEP18btTriangleCallbackRK9btVector3S4_EN21MyNodeOverlapCallback11processNodeEii
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZZN22btBvhTriangleMeshShape17performConvexcastEP18btTriangleCallbackRK9btVector3S4_S4_S4_EN21MyNodeOverlapCallbackD0Ev
	.type	_ZZN22btBvhTriangleMeshShape17performConvexcastEP18btTriangleCallbackRK9btVector3S4_S4_S4_EN21MyNodeOverlapCallbackD0Ev,@function
_ZZN22btBvhTriangleMeshShape17performConvexcastEP18btTriangleCallbackRK9btVector3S4_S4_S4_EN21MyNodeOverlapCallbackD0Ev: # @_ZZN22btBvhTriangleMeshShape17performConvexcastEP18btTriangleCallbackRK9btVector3S4_S4_S4_EN21MyNodeOverlapCallbackD0Ev
	.cfi_startproc
# %bb.0:
	pcaddu18i	$t8, %call36(_ZdlPv)
	jr	$t8
.Lfunc_end19:
	.size	_ZZN22btBvhTriangleMeshShape17performConvexcastEP18btTriangleCallbackRK9btVector3S4_S4_S4_EN21MyNodeOverlapCallbackD0Ev, .Lfunc_end19-_ZZN22btBvhTriangleMeshShape17performConvexcastEP18btTriangleCallbackRK9btVector3S4_S4_S4_EN21MyNodeOverlapCallbackD0Ev
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZZN22btBvhTriangleMeshShape17performConvexcastEP18btTriangleCallbackRK9btVector3S4_S4_S4_EN21MyNodeOverlapCallback11processNodeEii
	.type	_ZZN22btBvhTriangleMeshShape17performConvexcastEP18btTriangleCallbackRK9btVector3S4_S4_S4_EN21MyNodeOverlapCallback11processNodeEii,@function
_ZZN22btBvhTriangleMeshShape17performConvexcastEP18btTriangleCallbackRK9btVector3S4_S4_S4_EN21MyNodeOverlapCallback11processNodeEii: # @_ZZN22btBvhTriangleMeshShape17performConvexcastEP18btTriangleCallbackRK9btVector3S4_S4_S4_EN21MyNodeOverlapCallback11processNodeEii
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -160
	.cfi_def_cfa_offset 160
	st.d	$ra, $sp, 152                   # 8-byte Folded Spill
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	st.d	$s0, $sp, 136                   # 8-byte Folded Spill
	st.d	$s1, $sp, 128                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	move	$fp, $a0
	ld.d	$a0, $a0, 8
	ld.d	$a3, $a0, 0
	ld.d	$t0, $a3, 32
	move	$s1, $a2
	move	$s0, $a1
	st.d	$a1, $sp, 8
	addi.d	$t1, $sp, 36
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 68
	addi.d	$a3, $sp, 64
	addi.d	$a4, $sp, 60
	addi.d	$a5, $sp, 48
	addi.d	$a6, $sp, 44
	addi.d	$a7, $sp, 40
	st.d	$t1, $sp, 0
	jirl	$ra, $t0, 0
	ld.d	$a2, $sp, 48
	ld.w	$a5, $sp, 44
	ld.d	$a3, $fp, 8
	ld.w	$a4, $sp, 36
	ld.w	$a6, $sp, 64
	ld.d	$a0, $sp, 72
	ld.w	$a1, $sp, 60
	mul.w	$a5, $a5, $s1
	add.d	$a2, $a2, $a5
	ori	$a5, $zero, 3
	beqz	$a6, .LBB20_3
# %bb.1:                                # %.split
	bne	$a4, $a5, .LBB20_5
# %bb.2:                                # %.split.split.us.preheader
	ld.hu	$a4, $a2, 4
	mul.w	$a4, $a1, $a4
	fldx.d	$fa0, $a0, $a4
	fld.s	$fa1, $a3, 8
	add.d	$a4, $a0, $a4
	fcvt.s.d	$fa0, $fa0
	fmul.s	$fa0, $fa1, $fa0
	fld.d	$fa2, $a4, 8
	fld.s	$fa3, $a3, 12
	fld.d	$fa4, $a4, 16
	fld.s	$fa5, $a3, 16
	fcvt.s.d	$fa2, $fa2
	fmul.s	$fa2, $fa3, $fa2
	fcvt.s.d	$fa4, $fa4
	fmul.s	$fa4, $fa5, $fa4
	fst.s	$fa0, $sp, 112
	fst.s	$fa2, $sp, 116
	fst.s	$fa4, $sp, 120
	st.w	$zero, $sp, 124
	ld.hu	$a3, $a2, 2
	mul.w	$a3, $a1, $a3
	fldx.d	$fa0, $a0, $a3
	add.d	$a3, $a0, $a3
	fld.d	$fa2, $a3, 8
	fcvt.s.d	$fa0, $fa0
	fld.d	$fa4, $a3, 16
	fmul.s	$fa0, $fa1, $fa0
	fcvt.s.d	$fa2, $fa2
	fmul.s	$fa2, $fa3, $fa2
	fcvt.s.d	$fa4, $fa4
	fmul.s	$fa4, $fa5, $fa4
	fst.s	$fa0, $sp, 96
	fst.s	$fa2, $sp, 100
	fst.s	$fa4, $sp, 104
	st.w	$zero, $sp, 108
	ld.hu	$a2, $a2, 0
	b	.LBB20_6
.LBB20_3:                               # %.split.us
	bne	$a4, $a5, .LBB20_7
# %bb.4:                                # %.split.us.split.us.preheader
	ld.hu	$a4, $a2, 4
	mul.w	$a4, $a1, $a4
	add.d	$a5, $a0, $a4
	fldx.s	$fa0, $a0, $a4
	fld.s	$fa1, $a3, 8
	fld.s	$fa2, $a5, 4
	fld.s	$fa3, $a3, 12
	fld.s	$fa4, $a5, 8
	fld.s	$fa5, $a3, 16
	fmul.s	$fa0, $fa0, $fa1
	fmul.s	$fa2, $fa2, $fa3
	fmul.s	$fa4, $fa4, $fa5
	fst.s	$fa0, $sp, 112
	fst.s	$fa2, $sp, 116
	fst.s	$fa4, $sp, 120
	st.w	$zero, $sp, 124
	ld.hu	$a3, $a2, 2
	mul.w	$a3, $a1, $a3
	add.d	$a4, $a0, $a3
	fldx.s	$fa0, $a0, $a3
	fld.s	$fa2, $a4, 4
	fld.s	$fa4, $a4, 8
	fmul.s	$fa0, $fa0, $fa1
	fmul.s	$fa2, $fa2, $fa3
	fmul.s	$fa4, $fa4, $fa5
	fst.s	$fa0, $sp, 96
	fst.s	$fa2, $sp, 100
	fst.s	$fa4, $sp, 104
	st.w	$zero, $sp, 108
	ld.hu	$a2, $a2, 0
	b	.LBB20_8
.LBB20_5:                               # %.split.split.preheader
	ld.w	$a4, $a2, 8
	mul.w	$a4, $a1, $a4
	fldx.d	$fa0, $a0, $a4
	fld.s	$fa1, $a3, 8
	add.d	$a4, $a0, $a4
	fcvt.s.d	$fa0, $fa0
	fmul.s	$fa0, $fa1, $fa0
	fld.d	$fa2, $a4, 8
	fld.s	$fa3, $a3, 12
	fld.d	$fa4, $a4, 16
	fld.s	$fa5, $a3, 16
	fcvt.s.d	$fa2, $fa2
	fmul.s	$fa2, $fa3, $fa2
	fcvt.s.d	$fa4, $fa4
	fmul.s	$fa4, $fa5, $fa4
	fst.s	$fa0, $sp, 112
	fst.s	$fa2, $sp, 116
	fst.s	$fa4, $sp, 120
	st.w	$zero, $sp, 124
	ld.w	$a3, $a2, 4
	mul.w	$a3, $a1, $a3
	fldx.d	$fa0, $a0, $a3
	add.d	$a3, $a0, $a3
	fld.d	$fa2, $a3, 8
	fcvt.s.d	$fa0, $fa0
	fld.d	$fa4, $a3, 16
	fmul.s	$fa0, $fa1, $fa0
	fcvt.s.d	$fa2, $fa2
	fmul.s	$fa2, $fa3, $fa2
	fcvt.s.d	$fa4, $fa4
	fmul.s	$fa4, $fa5, $fa4
	fst.s	$fa0, $sp, 96
	fst.s	$fa2, $sp, 100
	fst.s	$fa4, $sp, 104
	st.w	$zero, $sp, 108
	ld.w	$a2, $a2, 0
.LBB20_6:                               # %.split39.us
	mul.w	$a1, $a1, $a2
	fldx.d	$fa0, $a0, $a1
	add.d	$a0, $a0, $a1
	fld.d	$fa2, $a0, 8
	fcvt.s.d	$fa0, $fa0
	fld.d	$fa4, $a0, 16
	fmul.s	$fa0, $fa1, $fa0
	fcvt.s.d	$fa1, $fa2
	fmul.s	$fa1, $fa3, $fa1
	fcvt.s.d	$fa2, $fa4
	fmul.s	$fa2, $fa5, $fa2
	b	.LBB20_9
.LBB20_7:                               # %.split.us.split.preheader
	ld.w	$a4, $a2, 8
	mul.w	$a4, $a1, $a4
	add.d	$a5, $a0, $a4
	fldx.s	$fa0, $a0, $a4
	fld.s	$fa1, $a3, 8
	fld.s	$fa2, $a5, 4
	fld.s	$fa3, $a3, 12
	fld.s	$fa4, $a5, 8
	fld.s	$fa5, $a3, 16
	fmul.s	$fa0, $fa0, $fa1
	fmul.s	$fa2, $fa2, $fa3
	fmul.s	$fa4, $fa4, $fa5
	fst.s	$fa0, $sp, 112
	fst.s	$fa2, $sp, 116
	fst.s	$fa4, $sp, 120
	st.w	$zero, $sp, 124
	ld.w	$a3, $a2, 4
	mul.w	$a3, $a1, $a3
	add.d	$a4, $a0, $a3
	fldx.s	$fa0, $a0, $a3
	fld.s	$fa2, $a4, 4
	fld.s	$fa4, $a4, 8
	fmul.s	$fa0, $fa0, $fa1
	fmul.s	$fa2, $fa2, $fa3
	fmul.s	$fa4, $fa4, $fa5
	fst.s	$fa0, $sp, 96
	fst.s	$fa2, $sp, 100
	fst.s	$fa4, $sp, 104
	st.w	$zero, $sp, 108
	ld.w	$a2, $a2, 0
.LBB20_8:                               # %.split39.us
	mul.w	$a1, $a1, $a2
	add.d	$a2, $a0, $a1
	fldx.s	$fa0, $a0, $a1
	fld.s	$fa2, $a2, 4
	fld.s	$fa4, $a2, 8
	fmul.s	$fa0, $fa0, $fa1
	fmul.s	$fa1, $fa2, $fa3
	fmul.s	$fa2, $fa4, $fa5
.LBB20_9:                               # %.split39.us
	ld.d	$a0, $fp, 16
	fst.s	$fa0, $sp, 80
	fst.s	$fa1, $sp, 84
	fst.s	$fa2, $sp, 88
	ld.d	$a1, $a0, 0
	ld.d	$a4, $a1, 16
	st.w	$zero, $sp, 92
	addi.d	$a1, $sp, 80
	move	$a2, $s0
	move	$a3, $s1
	jirl	$ra, $a4, 0
	ld.d	$a0, $fp, 8
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a1, 48
	move	$a1, $s0
	jirl	$ra, $a2, 0
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 160
	ret
.Lfunc_end20:
	.size	_ZZN22btBvhTriangleMeshShape17performConvexcastEP18btTriangleCallbackRK9btVector3S4_S4_S4_EN21MyNodeOverlapCallback11processNodeEii, .Lfunc_end20-_ZZN22btBvhTriangleMeshShape17performConvexcastEP18btTriangleCallbackRK9btVector3S4_S4_S4_EN21MyNodeOverlapCallback11processNodeEii
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZZNK22btBvhTriangleMeshShape19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_EN21MyNodeOverlapCallbackD0Ev
	.type	_ZZNK22btBvhTriangleMeshShape19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_EN21MyNodeOverlapCallbackD0Ev,@function
_ZZNK22btBvhTriangleMeshShape19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_EN21MyNodeOverlapCallbackD0Ev: # @_ZZNK22btBvhTriangleMeshShape19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_EN21MyNodeOverlapCallbackD0Ev
	.cfi_startproc
# %bb.0:
	pcaddu18i	$t8, %call36(_ZdlPv)
	jr	$t8
.Lfunc_end21:
	.size	_ZZNK22btBvhTriangleMeshShape19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_EN21MyNodeOverlapCallbackD0Ev, .Lfunc_end21-_ZZNK22btBvhTriangleMeshShape19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_EN21MyNodeOverlapCallbackD0Ev
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZZNK22btBvhTriangleMeshShape19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_EN21MyNodeOverlapCallback11processNodeEii
	.type	_ZZNK22btBvhTriangleMeshShape19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_EN21MyNodeOverlapCallback11processNodeEii,@function
_ZZNK22btBvhTriangleMeshShape19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_EN21MyNodeOverlapCallback11processNodeEii: # @_ZZNK22btBvhTriangleMeshShape19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_EN21MyNodeOverlapCallback11processNodeEii
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -112
	.cfi_def_cfa_offset 112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	move	$fp, $a0
	ld.d	$a0, $a0, 8
	ld.d	$a3, $a0, 0
	ld.d	$t0, $a3, 32
	move	$s1, $a2
	move	$s0, $a1
	st.d	$a1, $sp, 8
	addi.d	$t1, $sp, 36
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 68
	addi.d	$a3, $sp, 64
	addi.d	$a4, $sp, 60
	addi.d	$a5, $sp, 48
	addi.d	$a6, $sp, 44
	addi.d	$a7, $sp, 40
	st.d	$t1, $sp, 0
	jirl	$ra, $t0, 0
	ld.d	$a3, $sp, 48
	ld.w	$a5, $sp, 44
	ld.d	$a0, $fp, 8
	ld.w	$a4, $sp, 36
	ld.w	$a6, $sp, 64
	ld.d	$a1, $sp, 72
	ld.w	$a2, $sp, 60
	mul.w	$a5, $a5, $s1
	add.d	$a3, $a3, $a5
	ori	$a5, $zero, 3
	beqz	$a6, .LBB22_3
# %bb.1:                                # %.split
	bne	$a4, $a5, .LBB22_5
# %bb.2:                                # %.split.split.us.preheader
	ld.hu	$a4, $a3, 4
	mul.w	$a4, $a2, $a4
	fldx.d	$fa0, $a1, $a4
	fld.s	$fa1, $a0, 8
	add.d	$a4, $a1, $a4
	fcvt.s.d	$fa0, $fa0
	fmul.s	$fa0, $fa1, $fa0
	fld.d	$fa1, $a4, 8
	fld.s	$fa2, $a0, 12
	fld.d	$fa3, $a4, 16
	fld.s	$fa4, $a0, 16
	fcvt.s.d	$fa1, $fa1
	fmul.s	$fa1, $fa2, $fa1
	fcvt.s.d	$fa2, $fa3
	fmul.s	$fa2, $fa4, $fa2
	fst.s	$fa0, $fp, 56
	fst.s	$fa1, $fp, 60
	fst.s	$fa2, $fp, 64
	st.w	$zero, $fp, 68
	ld.hu	$a4, $a3, 2
	mul.w	$a4, $a2, $a4
	fldx.d	$fa0, $a1, $a4
	fld.s	$fa1, $a0, 8
	add.d	$a4, $a1, $a4
	fcvt.s.d	$fa0, $fa0
	fmul.s	$fa0, $fa1, $fa0
	fld.d	$fa1, $a4, 8
	fld.s	$fa2, $a0, 12
	fld.d	$fa3, $a4, 16
	fld.s	$fa4, $a0, 16
	fcvt.s.d	$fa1, $fa1
	fmul.s	$fa1, $fa2, $fa1
	fcvt.s.d	$fa2, $fa3
	fmul.s	$fa2, $fa4, $fa2
	fst.s	$fa0, $fp, 40
	fst.s	$fa1, $fp, 44
	fst.s	$fa2, $fp, 48
	st.w	$zero, $fp, 52
	ld.hu	$a3, $a3, 0
	b	.LBB22_6
.LBB22_3:                               # %.split.us
	bne	$a4, $a5, .LBB22_7
# %bb.4:                                # %.split.us.split.us.preheader
	ld.hu	$a4, $a3, 4
	mul.w	$a4, $a2, $a4
	add.d	$a5, $a1, $a4
	fldx.s	$fa0, $a1, $a4
	fld.s	$fa1, $a0, 8
	fld.s	$fa2, $a5, 4
	fld.s	$fa3, $a0, 12
	fld.s	$fa4, $a5, 8
	fld.s	$fa5, $a0, 16
	fmul.s	$fa0, $fa0, $fa1
	fmul.s	$fa1, $fa2, $fa3
	fmul.s	$fa2, $fa4, $fa5
	fst.s	$fa0, $fp, 56
	fst.s	$fa1, $fp, 60
	fst.s	$fa2, $fp, 64
	st.w	$zero, $fp, 68
	ld.hu	$a4, $a3, 2
	mul.w	$a4, $a2, $a4
	add.d	$a5, $a1, $a4
	fldx.s	$fa0, $a1, $a4
	fld.s	$fa1, $a0, 8
	fld.s	$fa2, $a5, 4
	fld.s	$fa3, $a0, 12
	fld.s	$fa4, $a5, 8
	fld.s	$fa5, $a0, 16
	fmul.s	$fa0, $fa0, $fa1
	fmul.s	$fa1, $fa2, $fa3
	fmul.s	$fa2, $fa4, $fa5
	fst.s	$fa0, $fp, 40
	fst.s	$fa1, $fp, 44
	fst.s	$fa2, $fp, 48
	st.w	$zero, $fp, 52
	ld.hu	$a3, $a3, 0
	b	.LBB22_8
.LBB22_5:                               # %.split.split.preheader
	ld.w	$a4, $a3, 8
	mul.w	$a4, $a2, $a4
	fldx.d	$fa0, $a1, $a4
	fld.s	$fa1, $a0, 8
	add.d	$a4, $a1, $a4
	fcvt.s.d	$fa0, $fa0
	fmul.s	$fa0, $fa1, $fa0
	fld.d	$fa1, $a4, 8
	fld.s	$fa2, $a0, 12
	fld.d	$fa3, $a4, 16
	fld.s	$fa4, $a0, 16
	fcvt.s.d	$fa1, $fa1
	fmul.s	$fa1, $fa2, $fa1
	fcvt.s.d	$fa2, $fa3
	fmul.s	$fa2, $fa4, $fa2
	fst.s	$fa0, $fp, 56
	fst.s	$fa1, $fp, 60
	fst.s	$fa2, $fp, 64
	st.w	$zero, $fp, 68
	ld.w	$a4, $a3, 4
	mul.w	$a4, $a2, $a4
	fldx.d	$fa0, $a1, $a4
	fld.s	$fa1, $a0, 8
	add.d	$a4, $a1, $a4
	fcvt.s.d	$fa0, $fa0
	fmul.s	$fa0, $fa1, $fa0
	fld.d	$fa1, $a4, 8
	fld.s	$fa2, $a0, 12
	fld.d	$fa3, $a4, 16
	fld.s	$fa4, $a0, 16
	fcvt.s.d	$fa1, $fa1
	fmul.s	$fa1, $fa2, $fa1
	fcvt.s.d	$fa2, $fa3
	fmul.s	$fa2, $fa4, $fa2
	fst.s	$fa0, $fp, 40
	fst.s	$fa1, $fp, 44
	fst.s	$fa2, $fp, 48
	st.w	$zero, $fp, 52
	ld.w	$a3, $a3, 0
.LBB22_6:                               # %.split38.us
	mul.w	$a2, $a2, $a3
	fldx.d	$fa0, $a1, $a2
	fld.s	$fa1, $a0, 8
	add.d	$a1, $a1, $a2
	fcvt.s.d	$fa0, $fa0
	fmul.s	$fa0, $fa1, $fa0
	fld.d	$fa1, $a1, 8
	fld.s	$fa2, $a0, 12
	fld.d	$fa3, $a1, 16
	fld.s	$fa4, $a0, 16
	fcvt.s.d	$fa1, $fa1
	fmul.s	$fa1, $fa2, $fa1
	fcvt.s.d	$fa2, $fa3
	fmul.s	$fa2, $fa4, $fa2
	b	.LBB22_9
.LBB22_7:                               # %.split.us.split.preheader
	ld.w	$a4, $a3, 8
	mul.w	$a4, $a2, $a4
	add.d	$a5, $a1, $a4
	fldx.s	$fa0, $a1, $a4
	fld.s	$fa1, $a0, 8
	fld.s	$fa2, $a5, 4
	fld.s	$fa3, $a0, 12
	fld.s	$fa4, $a5, 8
	fld.s	$fa5, $a0, 16
	fmul.s	$fa0, $fa0, $fa1
	fmul.s	$fa1, $fa2, $fa3
	fmul.s	$fa2, $fa4, $fa5
	fst.s	$fa0, $fp, 56
	fst.s	$fa1, $fp, 60
	fst.s	$fa2, $fp, 64
	st.w	$zero, $fp, 68
	ld.w	$a4, $a3, 4
	mul.w	$a4, $a2, $a4
	add.d	$a5, $a1, $a4
	fldx.s	$fa0, $a1, $a4
	fld.s	$fa1, $a0, 8
	fld.s	$fa2, $a5, 4
	fld.s	$fa3, $a0, 12
	fld.s	$fa4, $a5, 8
	fld.s	$fa5, $a0, 16
	fmul.s	$fa0, $fa0, $fa1
	fmul.s	$fa1, $fa2, $fa3
	fmul.s	$fa2, $fa4, $fa5
	fst.s	$fa0, $fp, 40
	fst.s	$fa1, $fp, 44
	fst.s	$fa2, $fp, 48
	st.w	$zero, $fp, 52
	ld.w	$a3, $a3, 0
.LBB22_8:                               # %.split38.us
	mul.w	$a2, $a2, $a3
	add.d	$a3, $a1, $a2
	fldx.s	$fa0, $a1, $a2
	fld.s	$fa1, $a0, 8
	fld.s	$fa2, $a3, 4
	fld.s	$fa3, $a0, 12
	fld.s	$fa4, $a3, 8
	fld.s	$fa5, $a0, 16
	fmul.s	$fa0, $fa0, $fa1
	fmul.s	$fa1, $fa2, $fa3
	fmul.s	$fa2, $fa4, $fa5
.LBB22_9:                               # %.split38.us
	ld.d	$a0, $fp, 16
	fst.s	$fa0, $fp, 24
	fst.s	$fa1, $fp, 28
	fst.s	$fa2, $fp, 32
	ld.d	$a1, $a0, 0
	st.w	$zero, $fp, 36
	ld.d	$a4, $a1, 16
	addi.d	$a1, $fp, 24
	move	$a2, $s0
	move	$a3, $s1
	jirl	$ra, $a4, 0
	ld.d	$a0, $fp, 8
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a1, 48
	move	$a1, $s0
	jirl	$ra, $a2, 0
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.Lfunc_end22:
	.size	_ZZNK22btBvhTriangleMeshShape19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_EN21MyNodeOverlapCallback11processNodeEii, .Lfunc_end22-_ZZNK22btBvhTriangleMeshShape19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_EN21MyNodeOverlapCallback11processNodeEii
	.cfi_endproc
                                        # -- End function
	.type	_ZTV22btBvhTriangleMeshShape,@object # @_ZTV22btBvhTriangleMeshShape
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTV22btBvhTriangleMeshShape
	.p2align	3, 0x0
_ZTV22btBvhTriangleMeshShape:
	.dword	0
	.dword	_ZTI22btBvhTriangleMeshShape
	.dword	_ZN22btBvhTriangleMeshShapeD2Ev
	.dword	_ZN22btBvhTriangleMeshShapeD0Ev
	.dword	_ZNK19btTriangleMeshShape7getAabbERK11btTransformR9btVector3S4_
	.dword	_ZNK16btCollisionShape17getBoundingSphereER9btVector3Rf
	.dword	_ZNK16btCollisionShape20getAngularMotionDiscEv
	.dword	_ZNK16btCollisionShape27getContactBreakingThresholdEv
	.dword	_ZN22btBvhTriangleMeshShape15setLocalScalingERK9btVector3
	.dword	_ZNK19btTriangleMeshShape15getLocalScalingEv
	.dword	_ZNK19btTriangleMeshShape21calculateLocalInertiaEfR9btVector3
	.dword	_ZNK22btBvhTriangleMeshShape7getNameEv
	.dword	_ZN14btConcaveShape9setMarginEf
	.dword	_ZNK14btConcaveShape9getMarginEv
	.dword	_ZNK22btBvhTriangleMeshShape19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_
	.dword	_ZNK19btTriangleMeshShape24localGetSupportingVertexERK9btVector3
	.dword	_ZNK19btTriangleMeshShape37localGetSupportingVertexWithoutMarginERK9btVector3
	.size	_ZTV22btBvhTriangleMeshShape, 136

	.type	_ZTI22btBvhTriangleMeshShape,@object # @_ZTI22btBvhTriangleMeshShape
	.globl	_ZTI22btBvhTriangleMeshShape
	.p2align	3, 0x0
_ZTI22btBvhTriangleMeshShape:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS22btBvhTriangleMeshShape
	.dword	_ZTI19btTriangleMeshShape
	.size	_ZTI22btBvhTriangleMeshShape, 24

	.type	_ZTS22btBvhTriangleMeshShape,@object # @_ZTS22btBvhTriangleMeshShape
	.section	.rodata,"a",@progbits
	.globl	_ZTS22btBvhTriangleMeshShape
_ZTS22btBvhTriangleMeshShape:
	.asciz	"22btBvhTriangleMeshShape"
	.size	_ZTS22btBvhTriangleMeshShape, 25

	.type	_ZTVZN22btBvhTriangleMeshShape14performRaycastEP18btTriangleCallbackRK9btVector3S4_E21MyNodeOverlapCallback,@object # @_ZTVZN22btBvhTriangleMeshShape14performRaycastEP18btTriangleCallbackRK9btVector3S4_E21MyNodeOverlapCallback
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
_ZTVZN22btBvhTriangleMeshShape14performRaycastEP18btTriangleCallbackRK9btVector3S4_E21MyNodeOverlapCallback:
	.dword	0
	.dword	_ZTIZN22btBvhTriangleMeshShape14performRaycastEP18btTriangleCallbackRK9btVector3S4_E21MyNodeOverlapCallback
	.dword	_ZN21btNodeOverlapCallbackD2Ev
	.dword	_ZZN22btBvhTriangleMeshShape14performRaycastEP18btTriangleCallbackRK9btVector3S4_EN21MyNodeOverlapCallbackD0Ev
	.dword	_ZZN22btBvhTriangleMeshShape14performRaycastEP18btTriangleCallbackRK9btVector3S4_EN21MyNodeOverlapCallback11processNodeEii
	.size	_ZTVZN22btBvhTriangleMeshShape14performRaycastEP18btTriangleCallbackRK9btVector3S4_E21MyNodeOverlapCallback, 40

	.type	_ZTIZN22btBvhTriangleMeshShape14performRaycastEP18btTriangleCallbackRK9btVector3S4_E21MyNodeOverlapCallback,@object # @_ZTIZN22btBvhTriangleMeshShape14performRaycastEP18btTriangleCallbackRK9btVector3S4_E21MyNodeOverlapCallback
	.p2align	3, 0x0
_ZTIZN22btBvhTriangleMeshShape14performRaycastEP18btTriangleCallbackRK9btVector3S4_E21MyNodeOverlapCallback:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTSZN22btBvhTriangleMeshShape14performRaycastEP18btTriangleCallbackRK9btVector3S4_E21MyNodeOverlapCallback
	.dword	_ZTI21btNodeOverlapCallback
	.size	_ZTIZN22btBvhTriangleMeshShape14performRaycastEP18btTriangleCallbackRK9btVector3S4_E21MyNodeOverlapCallback, 24

	.type	_ZTSZN22btBvhTriangleMeshShape14performRaycastEP18btTriangleCallbackRK9btVector3S4_E21MyNodeOverlapCallback,@object # @_ZTSZN22btBvhTriangleMeshShape14performRaycastEP18btTriangleCallbackRK9btVector3S4_E21MyNodeOverlapCallback
	.section	.rodata,"a",@progbits
_ZTSZN22btBvhTriangleMeshShape14performRaycastEP18btTriangleCallbackRK9btVector3S4_E21MyNodeOverlapCallback:
	.asciz	"ZN22btBvhTriangleMeshShape14performRaycastEP18btTriangleCallbackRK9btVector3S4_E21MyNodeOverlapCallback"
	.size	_ZTSZN22btBvhTriangleMeshShape14performRaycastEP18btTriangleCallbackRK9btVector3S4_E21MyNodeOverlapCallback, 104

	.type	_ZTI21btNodeOverlapCallback,@object # @_ZTI21btNodeOverlapCallback
	.section	.data.rel.ro._ZTI21btNodeOverlapCallback,"awG",@progbits,_ZTI21btNodeOverlapCallback,comdat
	.weak	_ZTI21btNodeOverlapCallback
	.p2align	3, 0x0
_ZTI21btNodeOverlapCallback:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTS21btNodeOverlapCallback
	.size	_ZTI21btNodeOverlapCallback, 16

	.type	_ZTS21btNodeOverlapCallback,@object # @_ZTS21btNodeOverlapCallback
	.section	.rodata._ZTS21btNodeOverlapCallback,"aG",@progbits,_ZTS21btNodeOverlapCallback,comdat
	.weak	_ZTS21btNodeOverlapCallback
_ZTS21btNodeOverlapCallback:
	.asciz	"21btNodeOverlapCallback"
	.size	_ZTS21btNodeOverlapCallback, 24

	.type	_ZTVZN22btBvhTriangleMeshShape17performConvexcastEP18btTriangleCallbackRK9btVector3S4_S4_S4_E21MyNodeOverlapCallback,@object # @_ZTVZN22btBvhTriangleMeshShape17performConvexcastEP18btTriangleCallbackRK9btVector3S4_S4_S4_E21MyNodeOverlapCallback
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
_ZTVZN22btBvhTriangleMeshShape17performConvexcastEP18btTriangleCallbackRK9btVector3S4_S4_S4_E21MyNodeOverlapCallback:
	.dword	0
	.dword	_ZTIZN22btBvhTriangleMeshShape17performConvexcastEP18btTriangleCallbackRK9btVector3S4_S4_S4_E21MyNodeOverlapCallback
	.dword	_ZN21btNodeOverlapCallbackD2Ev
	.dword	_ZZN22btBvhTriangleMeshShape17performConvexcastEP18btTriangleCallbackRK9btVector3S4_S4_S4_EN21MyNodeOverlapCallbackD0Ev
	.dword	_ZZN22btBvhTriangleMeshShape17performConvexcastEP18btTriangleCallbackRK9btVector3S4_S4_S4_EN21MyNodeOverlapCallback11processNodeEii
	.size	_ZTVZN22btBvhTriangleMeshShape17performConvexcastEP18btTriangleCallbackRK9btVector3S4_S4_S4_E21MyNodeOverlapCallback, 40

	.type	_ZTIZN22btBvhTriangleMeshShape17performConvexcastEP18btTriangleCallbackRK9btVector3S4_S4_S4_E21MyNodeOverlapCallback,@object # @_ZTIZN22btBvhTriangleMeshShape17performConvexcastEP18btTriangleCallbackRK9btVector3S4_S4_S4_E21MyNodeOverlapCallback
	.p2align	3, 0x0
_ZTIZN22btBvhTriangleMeshShape17performConvexcastEP18btTriangleCallbackRK9btVector3S4_S4_S4_E21MyNodeOverlapCallback:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTSZN22btBvhTriangleMeshShape17performConvexcastEP18btTriangleCallbackRK9btVector3S4_S4_S4_E21MyNodeOverlapCallback
	.dword	_ZTI21btNodeOverlapCallback
	.size	_ZTIZN22btBvhTriangleMeshShape17performConvexcastEP18btTriangleCallbackRK9btVector3S4_S4_S4_E21MyNodeOverlapCallback, 24

	.type	_ZTSZN22btBvhTriangleMeshShape17performConvexcastEP18btTriangleCallbackRK9btVector3S4_S4_S4_E21MyNodeOverlapCallback,@object # @_ZTSZN22btBvhTriangleMeshShape17performConvexcastEP18btTriangleCallbackRK9btVector3S4_S4_S4_E21MyNodeOverlapCallback
	.section	.rodata,"a",@progbits
_ZTSZN22btBvhTriangleMeshShape17performConvexcastEP18btTriangleCallbackRK9btVector3S4_S4_S4_E21MyNodeOverlapCallback:
	.asciz	"ZN22btBvhTriangleMeshShape17performConvexcastEP18btTriangleCallbackRK9btVector3S4_S4_S4_E21MyNodeOverlapCallback"
	.size	_ZTSZN22btBvhTriangleMeshShape17performConvexcastEP18btTriangleCallbackRK9btVector3S4_S4_S4_E21MyNodeOverlapCallback, 113

	.type	_ZTVZNK22btBvhTriangleMeshShape19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_E21MyNodeOverlapCallback,@object # @_ZTVZNK22btBvhTriangleMeshShape19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_E21MyNodeOverlapCallback
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
_ZTVZNK22btBvhTriangleMeshShape19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_E21MyNodeOverlapCallback:
	.dword	0
	.dword	_ZTIZNK22btBvhTriangleMeshShape19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_E21MyNodeOverlapCallback
	.dword	_ZN21btNodeOverlapCallbackD2Ev
	.dword	_ZZNK22btBvhTriangleMeshShape19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_EN21MyNodeOverlapCallbackD0Ev
	.dword	_ZZNK22btBvhTriangleMeshShape19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_EN21MyNodeOverlapCallback11processNodeEii
	.size	_ZTVZNK22btBvhTriangleMeshShape19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_E21MyNodeOverlapCallback, 40

	.type	_ZTIZNK22btBvhTriangleMeshShape19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_E21MyNodeOverlapCallback,@object # @_ZTIZNK22btBvhTriangleMeshShape19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_E21MyNodeOverlapCallback
	.p2align	3, 0x0
_ZTIZNK22btBvhTriangleMeshShape19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_E21MyNodeOverlapCallback:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTSZNK22btBvhTriangleMeshShape19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_E21MyNodeOverlapCallback
	.dword	_ZTI21btNodeOverlapCallback
	.size	_ZTIZNK22btBvhTriangleMeshShape19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_E21MyNodeOverlapCallback, 24

	.type	_ZTSZNK22btBvhTriangleMeshShape19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_E21MyNodeOverlapCallback,@object # @_ZTSZNK22btBvhTriangleMeshShape19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_E21MyNodeOverlapCallback
	.section	.rodata,"a",@progbits
_ZTSZNK22btBvhTriangleMeshShape19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_E21MyNodeOverlapCallback:
	.asciz	"ZNK22btBvhTriangleMeshShape19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_E21MyNodeOverlapCallback"
	.size	_ZTSZNK22btBvhTriangleMeshShape19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_E21MyNodeOverlapCallback, 110

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"BVHTRIANGLEMESH"
	.size	.L.str, 16

	.globl	_ZN22btBvhTriangleMeshShapeC1EP23btStridingMeshInterfacebb
	.type	_ZN22btBvhTriangleMeshShapeC1EP23btStridingMeshInterfacebb,@function
_ZN22btBvhTriangleMeshShapeC1EP23btStridingMeshInterfacebb = _ZN22btBvhTriangleMeshShapeC2EP23btStridingMeshInterfacebb
	.globl	_ZN22btBvhTriangleMeshShapeC1EP23btStridingMeshInterfacebRK9btVector3S4_b
	.type	_ZN22btBvhTriangleMeshShapeC1EP23btStridingMeshInterfacebRK9btVector3S4_b,@function
_ZN22btBvhTriangleMeshShapeC1EP23btStridingMeshInterfacebRK9btVector3S4_b = _ZN22btBvhTriangleMeshShapeC2EP23btStridingMeshInterfacebRK9btVector3S4_b
	.globl	_ZN22btBvhTriangleMeshShapeD1Ev
	.type	_ZN22btBvhTriangleMeshShapeD1Ev,@function
_ZN22btBvhTriangleMeshShapeD1Ev = _ZN22btBvhTriangleMeshShapeD2Ev
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
	.addrsig_sym _ZTI22btBvhTriangleMeshShape
	.addrsig_sym _ZTVN10__cxxabiv120__si_class_type_infoE
	.addrsig_sym _ZTS22btBvhTriangleMeshShape
	.addrsig_sym _ZTI19btTriangleMeshShape
	.addrsig_sym _ZTIZN22btBvhTriangleMeshShape14performRaycastEP18btTriangleCallbackRK9btVector3S4_E21MyNodeOverlapCallback
	.addrsig_sym _ZTSZN22btBvhTriangleMeshShape14performRaycastEP18btTriangleCallbackRK9btVector3S4_E21MyNodeOverlapCallback
	.addrsig_sym _ZTI21btNodeOverlapCallback
	.addrsig_sym _ZTVN10__cxxabiv117__class_type_infoE
	.addrsig_sym _ZTS21btNodeOverlapCallback
	.addrsig_sym _ZTIZN22btBvhTriangleMeshShape17performConvexcastEP18btTriangleCallbackRK9btVector3S4_S4_S4_E21MyNodeOverlapCallback
	.addrsig_sym _ZTSZN22btBvhTriangleMeshShape17performConvexcastEP18btTriangleCallbackRK9btVector3S4_S4_S4_E21MyNodeOverlapCallback
	.addrsig_sym _ZTIZNK22btBvhTriangleMeshShape19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_E21MyNodeOverlapCallback
	.addrsig_sym _ZTSZNK22btBvhTriangleMeshShape19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_E21MyNodeOverlapCallback
