	.file	"stepanov_container.cpp"
                                        # Start of file scope inline assembly
	.globl	_ZSt21ios_base_library_initv

                                        # End of file scope inline assembly
	.section	.text._ZNSt6vectorIdSaIdEED2Ev,"axG",@progbits,_ZNSt6vectorIdSaIdEED2Ev,comdat
	.weak	_ZNSt6vectorIdSaIdEED2Ev        # -- Begin function _ZNSt6vectorIdSaIdEED2Ev
	.p2align	5
	.type	_ZNSt6vectorIdSaIdEED2Ev,@function
_ZNSt6vectorIdSaIdEED2Ev:               # @_ZNSt6vectorIdSaIdEED2Ev
	.cfi_startproc
# %bb.0:
	move	$a1, $a0
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB0_2
# %bb.1:
	ld.d	$a1, $a1, 16
	sub.d	$a1, $a1, $a0
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB0_2:                                # %_ZNSt12_Vector_baseIdSaIdEED2Ev.exit
	ret
.Lfunc_end0:
	.size	_ZNSt6vectorIdSaIdEED2Ev, .Lfunc_end0-_ZNSt6vectorIdSaIdEED2Ev
	.cfi_endproc
                                        # -- End function
	.text
	.globl	_Z3runPFvPdS_iES_S_i            # -- Begin function _Z3runPFvPdS_iES_S_i
	.p2align	5
	.type	_Z3runPFvPdS_iES_S_i,@function
_Z3runPFvPdS_iES_S_i:                   # @_Z3runPFvPdS_iES_S_i
	.cfi_startproc
# %bb.0:
	blez	$a3, .LBB1_4
# %bb.1:                                # %.lr.ph.preheader
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
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	addi.d	$s2, $a3, 1
	ori	$s3, $zero, 1
	.p2align	4, , 16
.LBB1_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	addi.w	$a2, $s2, -2
	move	$a0, $s0
	move	$a1, $fp
	jirl	$ra, $s1, 0
	addi.w	$s2, $s2, -1
	bltu	$s3, $s2, .LBB1_2
# %bb.3:
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
.LBB1_4:                                # %._crit_edge
	ret
.Lfunc_end1:
	.size	_Z3runPFvPdS_iES_S_i, .Lfunc_end1-_Z3runPFvPdS_iES_S_i
	.cfi_endproc
                                        # -- End function
	.globl	_Z10array_testPdS_i             # -- Begin function _Z10array_testPdS_i
	.p2align	5
	.type	_Z10array_testPdS_i,@function
_Z10array_testPdS_i:                    # @_Z10array_testPdS_i
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
	move	$s1, $a1
	move	$s2, $a0
	sub.d	$s0, $a1, $a0
	addi.w	$a0, $zero, -1
	slt	$a1, $a0, $s0
	maskeqz	$a2, $s0, $a1
	masknez	$a0, $a0, $a1
	or	$a0, $a2, $a0
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 9
	move	$fp, $a0
	blt	$s0, $a1, .LBB2_12
# %bb.1:
	move	$a0, $fp
	move	$a1, $s2
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB2_2:                                # %_ZSt4copyIPdS0_ET0_T_S2_S1_.exit
	beq	$s1, $s2, .LBB2_11
# %bb.3:                                # %_ZSt4sortIPdEvT_S1_.exit
	add.d	$s1, $fp, $s0
	srai.d	$a0, $s0, 3
	clz.d	$a0, $a0
	slli.d	$a0, $a0, 1
	xori	$a2, $a0, 126
	move	$a0, $fp
	move	$a1, $s1
	move	$a3, $zero
	pcaddu18i	$ra, %call36(_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_)
	jirl	$ra, $ra, 0
	addi.d	$a3, $s0, -16
	move	$a0, $fp
	.p2align	4, , 16
.LBB2_4:                                # %.preheader.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a1, $a0
	addi.d	$a0, $a0, 8
	beq	$a0, $s1, .LBB2_11
# %bb.5:                                #   in Loop: Header=BB2_4 Depth=1
	move	$a2, $a3
	fld.d	$fa0, $a1, 0
	fld.d	$fa1, $a1, 8
	fcmp.cune.d	$fcc0, $fa0, $fa1
	addi.d	$a3, $a3, -8
	bcnez	$fcc0, .LBB2_4
# %bb.6:                                # %_ZSt15__adjacent_findIPdN9__gnu_cxx5__ops19_Iter_equal_to_iterEET_S4_S4_T0_.exit.i.i
	addi.d	$a3, $a1, 16
	beq	$a3, $s1, .LBB2_11
# %bb.7:                                # %.lr.ph.i.i.preheader
	ori	$a3, $zero, 8
	b	.LBB2_9
	.p2align	4, , 16
.LBB2_8:                                #   in Loop: Header=BB2_9 Depth=1
	addi.d	$a2, $a2, -8
	addi.d	$a3, $a3, 8
	beqz	$a2, .LBB2_11
.LBB2_9:                                # %.lr.ph.i.i
                                        # =>This Inner Loop Header: Depth=1
	fldx.d	$fa1, $a0, $a3
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB2_8
# %bb.10:                               #   in Loop: Header=BB2_9 Depth=1
	addi.d	$a4, $a1, 8
	fst.d	$fa1, $a1, 8
	move	$a1, $a4
	fmov.d	$fa0, $fa1
	b	.LBB2_8
.LBB2_11:                               # %_ZSt6uniqueIPdET_S1_S1_.exit
	move	$a0, $fp
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(_ZdaPv)
	jr	$t8
.LBB2_12:
	ori	$a0, $zero, 8
	bne	$s0, $a0, .LBB2_2
# %bb.13:
	fld.d	$fa0, $s2, 0
	fst.d	$fa0, $fp, 0
	b	.LBB2_2
.Lfunc_end2:
	.size	_Z10array_testPdS_i, .Lfunc_end2-_Z10array_testPdS_i
	.cfi_endproc
                                        # -- End function
	.globl	_Z19vector_pointer_testPdS_i    # -- Begin function _Z19vector_pointer_testPdS_i
	.p2align	5
	.type	_Z19vector_pointer_testPdS_i,@function
_Z19vector_pointer_testPdS_i:           # @_Z19vector_pointer_testPdS_i
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
	move	$s2, $a0
	sub.d	$s1, $a1, $a0
	addi.w	$a0, $zero, -7
	lu52i.d	$a0, $a0, 2047
	bgeu	$s1, $a0, .LBB3_19
# %bb.1:                                # %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i
	beq	$a1, $s2, .LBB3_4
# %bb.2:                                # %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i.i
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ori	$a0, $zero, 9
	add.d	$s0, $fp, $s1
	bltu	$s1, $a0, .LBB3_20
# %bb.3:
	move	$a0, $fp
	move	$a1, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	b	.LBB3_5
.LBB3_4:                                # %.thread.i.i
	move	$fp, $zero
	move	$s0, $s1
.LBB3_5:                                # %_ZNSt6vectorIdSaIdEEC2IPdvEET_S4_RKS0_.exit
	sub.d	$s1, $s0, $fp
	beq	$fp, $s0, .LBB3_16
# %bb.6:
	srai.d	$a0, $s1, 3
	clz.d	$a0, $a0
	slli.d	$a0, $a0, 1
	xori	$a2, $a0, 126
.Ltmp0:                                 # EH_LABEL
	move	$a0, $fp
	move	$a1, $s0
	move	$a3, $zero
	pcaddu18i	$ra, %call36(_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.7:                                # %.noexc
.Ltmp2:                                 # EH_LABEL
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_)
	jirl	$ra, $ra, 0
.Ltmp3:                                 # EH_LABEL
# %bb.8:                                # %.preheader.i.i.i.preheader
	addi.d	$a0, $fp, 8
	.p2align	4, , 16
.LBB3_9:                                # %.preheader.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	beq	$a0, $s0, .LBB3_16
# %bb.10:                               #   in Loop: Header=BB3_9 Depth=1
	fld.d	$fa0, $a0, -8
	fld.d	$fa1, $a0, 0
	fcmp.cune.d	$fcc0, $fa0, $fa1
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB3_9
# %bb.11:                               # %_ZSt15__adjacent_findIPdN9__gnu_cxx5__ops19_Iter_equal_to_iterEET_S4_S4_T0_.exit.i.i
	beq	$a0, $s0, .LBB3_16
# %bb.12:                               # %.lr.ph.i.i.preheader
	addi.d	$a1, $a0, -16
	b	.LBB3_14
	.p2align	4, , 16
.LBB3_13:                               #   in Loop: Header=BB3_14 Depth=1
	addi.d	$a0, $a0, 8
	beq	$a0, $s0, .LBB3_16
.LBB3_14:                               # %.lr.ph.i.i
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa1, $a0, 0
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB3_13
# %bb.15:                               #   in Loop: Header=BB3_14 Depth=1
	addi.d	$a2, $a1, 8
	fst.d	$fa1, $a1, 8
	move	$a1, $a2
	fmov.d	$fa0, $fa1
	b	.LBB3_13
.LBB3_16:                               # %_ZSt6uniqueIPdET_S1_S1_.exit
	beqz	$fp, .LBB3_18
# %bb.17:
	move	$a0, $fp
	move	$a1, $s1
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB3_18:                               # %_ZNSt6vectorIdSaIdEED2Ev.exit
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB3_19:                               # %.noexc.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.LBB3_20:
	ori	$a0, $zero, 8
	bne	$s1, $a0, .LBB3_5
# %bb.21:
	fld.d	$fa0, $s2, 0
	fst.d	$fa0, $fp, 0
	b	.LBB3_5
.LBB3_22:                               # %.thread
.Ltmp4:                                 # EH_LABEL
	move	$s0, $a0
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end3:
	.size	_Z19vector_pointer_testPdS_i, .Lfunc_end3-_Z19vector_pointer_testPdS_i
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table3:
.Lexception0:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
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
	.uleb128 .Ltmp3-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Lfunc_end3-.Ltmp3             #   Call between .Ltmp3 and .Lfunc_end3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_Z20vector_iterator_testPdS_i   # -- Begin function _Z20vector_iterator_testPdS_i
	.p2align	5
	.type	_Z20vector_iterator_testPdS_i,@function
_Z20vector_iterator_testPdS_i:          # @_Z20vector_iterator_testPdS_i
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception1
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
	move	$s2, $a0
	sub.d	$s1, $a1, $a0
	addi.w	$a0, $zero, -7
	lu52i.d	$a0, $a0, 2047
	bgeu	$s1, $a0, .LBB4_19
# %bb.1:                                # %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i
	beq	$a1, $s2, .LBB4_4
# %bb.2:                                # %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i.i
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ori	$a0, $zero, 9
	add.d	$s0, $fp, $s1
	bltu	$s1, $a0, .LBB4_20
# %bb.3:
	move	$a0, $fp
	move	$a1, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	b	.LBB4_5
.LBB4_4:                                # %.thread.i.i
	move	$fp, $zero
	move	$s0, $s1
.LBB4_5:                                # %_ZNSt6vectorIdSaIdEEC2IPdvEET_S4_RKS0_.exit
	sub.d	$s1, $s0, $fp
	beq	$fp, $s0, .LBB4_16
# %bb.6:
	srai.d	$a0, $s1, 3
	clz.d	$a0, $a0
	slli.d	$a0, $a0, 1
	xori	$a2, $a0, 126
.Ltmp5:                                 # EH_LABEL
	move	$a0, $fp
	move	$a1, $s0
	move	$a3, $zero
	pcaddu18i	$ra, %call36(_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_)
	jirl	$ra, $ra, 0
.Ltmp6:                                 # EH_LABEL
# %bb.7:                                # %.noexc
.Ltmp7:                                 # EH_LABEL
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_)
	jirl	$ra, $ra, 0
.Ltmp8:                                 # EH_LABEL
# %bb.8:                                # %.preheader.i.i.i.preheader
	addi.d	$a0, $fp, 8
	.p2align	4, , 16
.LBB4_9:                                # %.preheader.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	beq	$a0, $s0, .LBB4_16
# %bb.10:                               #   in Loop: Header=BB4_9 Depth=1
	fld.d	$fa0, $a0, -8
	fld.d	$fa1, $a0, 0
	fcmp.cune.d	$fcc0, $fa0, $fa1
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB4_9
# %bb.11:                               # %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i
	beq	$a0, $s0, .LBB4_16
# %bb.12:                               # %.lr.ph.i.i.preheader
	addi.d	$a1, $a0, -16
	b	.LBB4_14
	.p2align	4, , 16
.LBB4_13:                               #   in Loop: Header=BB4_14 Depth=1
	addi.d	$a0, $a0, 8
	beq	$a0, $s0, .LBB4_16
.LBB4_14:                               # %.lr.ph.i.i
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa1, $a0, 0
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB4_13
# %bb.15:                               #   in Loop: Header=BB4_14 Depth=1
	addi.d	$a2, $a1, 8
	fst.d	$fa1, $a1, 8
	move	$a1, $a2
	fmov.d	$fa0, $fa1
	b	.LBB4_13
.LBB4_16:                               # %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEET_S7_S7_.exit
	beqz	$fp, .LBB4_18
# %bb.17:
	move	$a0, $fp
	move	$a1, $s1
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB4_18:                               # %_ZNSt6vectorIdSaIdEED2Ev.exit
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB4_19:                               # %.noexc.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.LBB4_20:
	ori	$a0, $zero, 8
	bne	$s1, $a0, .LBB4_5
# %bb.21:
	fld.d	$fa0, $s2, 0
	fst.d	$fa0, $fp, 0
	b	.LBB4_5
.LBB4_22:
.Ltmp9:                                 # EH_LABEL
	move	$s0, $a0
	beqz	$fp, .LBB4_24
# %bb.23:
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_24:                               # %.body
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end4:
	.size	_Z20vector_iterator_testPdS_i, .Lfunc_end4-_Z20vector_iterator_testPdS_i
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table4:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Lfunc_begin1-.Lfunc_begin1    # >> Call Site 1 <<
	.uleb128 .Ltmp5-.Lfunc_begin1           #   Call between .Lfunc_begin1 and .Ltmp5
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp5-.Lfunc_begin1           # >> Call Site 2 <<
	.uleb128 .Ltmp8-.Ltmp5                  #   Call between .Ltmp5 and .Ltmp8
	.uleb128 .Ltmp9-.Lfunc_begin1           #     jumps to .Ltmp9
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp8-.Lfunc_begin1           # >> Call Site 3 <<
	.uleb128 .Lfunc_end4-.Ltmp8             #   Call between .Ltmp8 and .Lfunc_end4
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_Z10deque_testPdS_i             # -- Begin function _Z10deque_testPdS_i
	.p2align	5
	.type	_Z10deque_testPdS_i,@function
_Z10deque_testPdS_i:                    # @_Z10deque_testPdS_i
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception2
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
	sub.d	$a0, $a1, $a0
	srai.d	$s1, $a0, 3
	srli.d	$a0, $s1, 60
	st.d	$zero, $sp, 184
	bnez	$a0, .LBB5_41
# %bb.1:                                # %_ZNSt5dequeIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
	move	$s2, $a1
	addi.d	$a0, $sp, 8
	ori	$a2, $zero, 80
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.Ltmp10:                                # EH_LABEL
	addi.d	$a0, $sp, 8
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZNSt11_Deque_baseIdSaIdEE17_M_initialize_mapEm)
	jirl	$ra, $ra, 0
.Ltmp11:                                # EH_LABEL
# %bb.2:                                # %.noexc9
.Ltmp12:                                # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 184
	pcaddu18i	$ra, %call36(_ZNSt5dequeIdSaIdEE18_M_fill_initializeERKd)
	jirl	$ra, $ra, 0
.Ltmp13:                                # EH_LABEL
# %bb.3:                                # %_ZNSt5dequeIdSaIdEEC2EmRKdRKS0_.exit
	ld.d	$fp, $sp, 24
	ld.d	$s4, $sp, 32
	ld.d	$s5, $sp, 40
	ld.d	$s3, $sp, 48
	beq	$s2, $s0, .LBB5_16
# %bb.4:                                # %.lr.ph.i.i.i.preheader
	ori	$s2, $zero, 2
	ori	$s6, $zero, 63
	ori	$s7, $zero, 1
	b	.LBB5_7
	.p2align	4, , 16
.LBB5_5:                                #   in Loop: Header=BB5_7 Depth=1
	srai.d	$a1, $a0, 6
.LBB5_6:                                #   in Loop: Header=BB5_7 Depth=1
	slli.d	$a2, $a1, 3
	ldx.d	$s4, $s3, $a2
	alsl.d	$s3, $a1, $s3, 3
	addi.d	$s5, $s4, 512
	slli.d	$a1, $a1, 6
	sub.d	$a0, $a0, $a1
	alsl.d	$fp, $a0, $s4, 3
	sub.d	$s1, $s1, $s8
	alsl.d	$s0, $s8, $s0, 3
	blez	$s1, .LBB5_15
.LBB5_7:                                # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	sub.d	$a0, $s5, $fp
	srai.d	$a0, $a0, 3
	slt	$a1, $a0, $s1
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s1, $a1
	or	$s8, $a0, $a1
	blt	$s8, $s2, .LBB5_13
# %bb.8:                                #   in Loop: Header=BB5_7 Depth=1
	slli.d	$a2, $s8, 3
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
.LBB5_9:                                # %_ZSt14__copy_move_a1ILb0EPdS0_ET1_T0_S2_S1_.exit.i.i.i
                                        #   in Loop: Header=BB5_7 Depth=1
	sub.d	$a0, $fp, $s4
	srai.d	$a0, $a0, 3
	add.d	$a0, $s8, $a0
	bltz	$a0, .LBB5_5
# %bb.10:                               #   in Loop: Header=BB5_7 Depth=1
	bltu	$s6, $a0, .LBB5_12
# %bb.11:                               #   in Loop: Header=BB5_7 Depth=1
	alsl.d	$fp, $s8, $fp, 3
	sub.d	$s1, $s1, $s8
	alsl.d	$s0, $s8, $s0, 3
	bgtz	$s1, .LBB5_7
	b	.LBB5_15
	.p2align	4, , 16
.LBB5_12:                               #   in Loop: Header=BB5_7 Depth=1
	srli.d	$a1, $a0, 6
	b	.LBB5_6
.LBB5_13:                               #   in Loop: Header=BB5_7 Depth=1
	bne	$s8, $s7, .LBB5_9
# %bb.14:                               #   in Loop: Header=BB5_7 Depth=1
	fld.d	$fa0, $s0, 0
	fst.d	$fa0, $fp, 0
	b	.LBB5_9
.LBB5_15:                               # %_ZSt4copyIPdSt15_Deque_iteratorIdRdS0_EET0_T_S5_S4_.exit.loopexit
	ld.d	$fp, $sp, 24
	ld.d	$s4, $sp, 32
	ld.d	$s5, $sp, 40
	ld.d	$s3, $sp, 48
.LBB5_16:                               # %_ZSt4copyIPdSt15_Deque_iteratorIdRdS0_EET0_T_S5_S4_.exit
	ld.d	$s1, $sp, 56
	ld.d	$s0, $sp, 80
	beq	$fp, $s1, .LBB5_34
# %bb.17:
	ld.d	$s2, $sp, 64
	ld.d	$s6, $sp, 72
	st.d	$fp, $sp, 184
	st.d	$s4, $sp, 192
	st.d	$s5, $sp, 200
	st.d	$s3, $sp, 208
	st.d	$s1, $sp, 152
	st.d	$s2, $sp, 160
	st.d	$s6, $sp, 168
	st.d	$s0, $sp, 176
	sub.d	$a0, $s0, $s3
	srli.d	$a0, $a0, 3
	sltu	$a1, $zero, $s0
	sub.d	$a0, $a0, $a1
	slli.d	$a0, $a0, 6
	sub.d	$a1, $s1, $s2
	srai.d	$a1, $a1, 3
	sub.d	$a2, $s5, $fp
	srai.d	$a2, $a2, 3
	add.d	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	clz.d	$a0, $a0
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 126
	sub.d	$a2, $a1, $a0
.Ltmp15:                                # EH_LABEL
	addi.d	$a0, $sp, 184
	addi.d	$a1, $sp, 152
	move	$a3, $zero
	pcaddu18i	$ra, %call36(_ZSt16__introsort_loopISt15_Deque_iteratorIdRdPdElN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_T0_T1_)
	jirl	$ra, $ra, 0
.Ltmp16:                                # EH_LABEL
# %bb.18:                               # %.noexc10
	st.d	$fp, $sp, 120
	st.d	$s4, $sp, 128
	st.d	$s5, $sp, 136
	st.d	$s3, $sp, 144
	st.d	$s1, $sp, 88
	st.d	$s2, $sp, 96
	st.d	$s6, $sp, 104
	st.d	$s0, $sp, 112
.Ltmp17:                                # EH_LABEL
	addi.d	$a0, $sp, 120
	addi.d	$a1, $sp, 88
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZSt22__final_insertion_sortISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_T0_)
	jirl	$ra, $ra, 0
.Ltmp18:                                # EH_LABEL
# %bb.19:
	ld.d	$a5, $sp, 24
	ld.d	$s3, $sp, 48
	ld.d	$a0, $sp, 56
	ld.d	$s0, $sp, 80
	beq	$a5, $a0, .LBB5_34
# %bb.20:                               # %.preheader.i.i.preheader
	ld.d	$a6, $sp, 40
	move	$a7, $s3
	.p2align	4, , 16
.LBB5_21:                               # %.preheader.i.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a1, $a5
	addi.d	$a3, $a5, 8
	move	$a2, $a7
	move	$a4, $a6
	move	$a5, $a3
	bne	$a3, $a6, .LBB5_23
# %bb.22:                               #   in Loop: Header=BB5_21 Depth=1
	ld.d	$a5, $a2, 8
	addi.d	$a7, $a2, 8
	addi.d	$a6, $a5, 512
.LBB5_23:                               # %_ZNSt15_Deque_iteratorIdRdPdEppEv.exit.i.i.i
                                        #   in Loop: Header=BB5_21 Depth=1
	beq	$a5, $a0, .LBB5_34
# %bb.24:                               #   in Loop: Header=BB5_21 Depth=1
	fld.d	$fa0, $a1, 0
	fld.d	$fa1, $a5, 0
	fcmp.cune.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB5_21
# %bb.25:                               # %_ZSt15__adjacent_findISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops19_Iter_equal_to_iterEET_S7_S7_T0_.exit.i.i
	move	$a5, $a2
	move	$a6, $a4
	bne	$a3, $a4, .LBB5_29
# %bb.26:
	ld.d	$a3, $a2, 8
	addi.d	$a5, $a2, 8
	addi.d	$a6, $a3, 512
	b	.LBB5_29
.LBB5_27:                               #   in Loop: Header=BB5_29 Depth=1
	addi.d	$a1, $a1, 8
	beq	$a1, $a4, .LBB5_33
.LBB5_28:                               # %_ZNSt15_Deque_iteratorIdRdPdEppEv.exit2.i.i
                                        #   in Loop: Header=BB5_29 Depth=1
	fst.d	$fa1, $a1, 0
	fmov.d	$fa0, $fa1
	.p2align	4, , 16
.LBB5_29:                               # %_ZNSt15_Deque_iteratorIdRdPdEppEv.exit.i.i
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a3, $a3, 8
	bne	$a3, $a6, .LBB5_31
# %bb.30:                               #   in Loop: Header=BB5_29 Depth=1
	ld.d	$a3, $a5, 8
	addi.d	$a5, $a5, 8
	addi.d	$a6, $a3, 512
.LBB5_31:                               # %_ZNSt15_Deque_iteratorIdRdPdEppEv.exit1.i.i
                                        #   in Loop: Header=BB5_29 Depth=1
	beq	$a3, $a0, .LBB5_34
# %bb.32:                               #   in Loop: Header=BB5_29 Depth=1
	fld.d	$fa1, $a3, 0
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB5_29
	b	.LBB5_27
.LBB5_33:                               #   in Loop: Header=BB5_29 Depth=1
	ld.d	$a1, $a2, 8
	addi.d	$a2, $a2, 8
	addi.d	$a4, $a1, 512
	b	.LBB5_28
.LBB5_34:                               # %_ZSt6uniqueISt15_Deque_iteratorIdRdPdEET_S4_S4_.exit
	ld.d	$a0, $sp, 8
	beqz	$a0, .LBB5_40
# %bb.35:
	addi.d	$a1, $s0, 8
	bgeu	$s3, $a1, .LBB5_39
# %bb.36:                               # %.lr.ph.i.i.i17.preheader
	addi.d	$a1, $s3, -8
	.p2align	4, , 16
.LBB5_37:                               # %.lr.ph.i.i.i17
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a1, 8
	addi.d	$fp, $a1, 8
	ori	$a1, $zero, 512
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a1, $fp
	bltu	$fp, $s0, .LBB5_37
# %bb.38:                               # %_ZNSt11_Deque_baseIdSaIdEE16_M_destroy_nodesEPPdS3_.exit.loopexit.i.i
	ld.d	$a0, $sp, 8
.LBB5_39:                               # %_ZNSt11_Deque_baseIdSaIdEE16_M_destroy_nodesEPPdS3_.exit.i.i
	ld.d	$a1, $sp, 16
	slli.d	$a1, $a1, 3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_40:                               # %_ZNSt5dequeIdSaIdEED2Ev.exit
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
.LBB5_41:
.Ltmp20:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp21:                                # EH_LABEL
# %bb.42:                               # %.noexc
.LBB5_43:
.Ltmp14:                                # EH_LABEL
	move	$fp, $a0
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZNSt11_Deque_baseIdSaIdEED2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB5_44:
.Ltmp19:                                # EH_LABEL
	move	$fp, $a0
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZNSt5dequeIdSaIdEED2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB5_45:
.Ltmp22:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end5:
	.size	_Z10deque_testPdS_i, .Lfunc_end5-_Z10deque_testPdS_i
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table5:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Lfunc_begin2-.Lfunc_begin2    # >> Call Site 1 <<
	.uleb128 .Ltmp10-.Lfunc_begin2          #   Call between .Lfunc_begin2 and .Ltmp10
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp10-.Lfunc_begin2          # >> Call Site 2 <<
	.uleb128 .Ltmp11-.Ltmp10                #   Call between .Ltmp10 and .Ltmp11
	.uleb128 .Ltmp22-.Lfunc_begin2          #     jumps to .Ltmp22
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp12-.Lfunc_begin2          # >> Call Site 3 <<
	.uleb128 .Ltmp13-.Ltmp12                #   Call between .Ltmp12 and .Ltmp13
	.uleb128 .Ltmp14-.Lfunc_begin2          #     jumps to .Ltmp14
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp13-.Lfunc_begin2          # >> Call Site 4 <<
	.uleb128 .Ltmp15-.Ltmp13                #   Call between .Ltmp13 and .Ltmp15
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp15-.Lfunc_begin2          # >> Call Site 5 <<
	.uleb128 .Ltmp18-.Ltmp15                #   Call between .Ltmp15 and .Ltmp18
	.uleb128 .Ltmp19-.Lfunc_begin2          #     jumps to .Ltmp19
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp18-.Lfunc_begin2          # >> Call Site 6 <<
	.uleb128 .Ltmp20-.Ltmp18                #   Call between .Ltmp18 and .Ltmp20
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp20-.Lfunc_begin2          # >> Call Site 7 <<
	.uleb128 .Ltmp21-.Ltmp20                #   Call between .Ltmp20 and .Ltmp21
	.uleb128 .Ltmp22-.Lfunc_begin2          #     jumps to .Ltmp22
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp21-.Lfunc_begin2          # >> Call Site 8 <<
	.uleb128 .Lfunc_end5-.Ltmp21            #   Call between .Ltmp21 and .Lfunc_end5
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt5dequeIdSaIdEED2Ev,"axG",@progbits,_ZNSt5dequeIdSaIdEED2Ev,comdat
	.weak	_ZNSt5dequeIdSaIdEED2Ev         # -- Begin function _ZNSt5dequeIdSaIdEED2Ev
	.p2align	5
	.type	_ZNSt5dequeIdSaIdEED2Ev,@function
_ZNSt5dequeIdSaIdEED2Ev:                # @_ZNSt5dequeIdSaIdEED2Ev
	.cfi_startproc
# %bb.0:
	ld.d	$a2, $a0, 0
	beqz	$a2, .LBB6_6
# %bb.1:
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
	ld.d	$fp, $a0, 72
	ld.d	$a1, $a0, 40
	addi.d	$a3, $fp, 8
	bgeu	$a1, $a3, .LBB6_5
# %bb.2:                                # %.lr.ph.i.i.preheader
	move	$s0, $a0
	addi.d	$a1, $a1, -8
	.p2align	4, , 16
.LBB6_3:                                # %.lr.ph.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a1, 8
	addi.d	$s1, $a1, 8
	ori	$a1, $zero, 512
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a1, $s1
	bltu	$s1, $fp, .LBB6_3
# %bb.4:                                # %_ZNSt11_Deque_baseIdSaIdEE16_M_destroy_nodesEPPdS3_.exit.loopexit.i
	move	$a0, $s0
	ld.d	$a2, $s0, 0
.LBB6_5:                                # %_ZNSt11_Deque_baseIdSaIdEE16_M_destroy_nodesEPPdS3_.exit.i
	ld.d	$a0, $a0, 8
	slli.d	$a1, $a0, 3
	move	$a0, $a2
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB6_6:                                # %_ZNSt11_Deque_baseIdSaIdEED2Ev.exit
	ret
.Lfunc_end6:
	.size	_ZNSt5dequeIdSaIdEED2Ev, .Lfunc_end6-_ZNSt5dequeIdSaIdEED2Ev
	.cfi_endproc
                                        # -- End function
	.text
	.globl	_Z9list_testPdS_i               # -- Begin function _Z9list_testPdS_i
	.p2align	5
	.type	_Z9list_testPdS_i,@function
_Z9list_testPdS_i:                      # @_Z9list_testPdS_i
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception3
# %bb.0:
	addi.d	$sp, $sp, -96
	.cfi_def_cfa_offset 96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	move	$s0, $a0
	addi.d	$a0, $sp, 16
	st.d	$a0, $sp, 24
	st.d	$a0, $sp, 16
	st.d	$zero, $sp, 32
	beq	$s0, $a1, .LBB7_4
# %bb.1:                                # %.lr.ph.i.i.preheader
	move	$fp, $a1
	.p2align	4, , 16
.LBB7_2:                                # %.lr.ph.i.i
                                        # =>This Inner Loop Header: Depth=1
.Ltmp23:                                # EH_LABEL
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp24:                                # EH_LABEL
# %bb.3:                                # %.noexc.i
                                        #   in Loop: Header=BB7_2 Depth=1
	fld.d	$fa0, $s0, 0
	fst.d	$fa0, $a0, 16
	addi.d	$a1, $sp, 16
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base7_M_hookEPS0_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 32
	addi.d	$a0, $a0, 1
	addi.d	$s0, $s0, 8
	st.d	$a0, $sp, 32
	bne	$s0, $fp, .LBB7_2
.LBB7_4:                                # %_ZNSt7__cxx114listIdSaIdEEC2IPdvEET_S5_RKS1_.exit
.Ltmp26:                                # EH_LABEL
	addi.d	$a0, $sp, 16
	addi.d	$s0, $sp, 16
	pcaddu18i	$ra, %call36(_ZNSt7__cxx114listIdSaIdEE4sortEv)
	jirl	$ra, $ra, 0
.Ltmp27:                                # EH_LABEL
# %bb.5:
	ld.d	$a0, $sp, 16
	beq	$a0, $s0, .LBB7_16
# %bb.6:
	addi.d	$a2, $sp, 40
	st.d	$a2, $sp, 40
	ld.d	$a1, $a0, 0
	st.d	$a2, $sp, 48
	addi.d	$fp, $sp, 16
	st.d	$zero, $sp, 56
	bne	$a1, $fp, .LBB7_9
	b	.LBB7_15
	.p2align	4, , 16
.LBB7_7:                                #   in Loop: Header=BB7_9 Depth=1
	move	$a0, $a1
.LBB7_8:                                # %_ZNSt7__cxx114listIdSaIdEE6spliceESt20_List_const_iteratorIdERS2_S4_.exit.i
                                        #   in Loop: Header=BB7_9 Depth=1
	ld.d	$a1, $a0, 0
	beq	$a1, $fp, .LBB7_13
.LBB7_9:                                # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a0, 16
	fld.d	$fa1, $a1, 16
	fcmp.cune.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB7_7
# %bb.10:                               #   in Loop: Header=BB7_9 Depth=1
	ld.d	$a3, $sp, 40
	beq	$a3, $a1, .LBB7_8
# %bb.11:                               #   in Loop: Header=BB7_9 Depth=1
	ld.d	$a2, $a1, 0
	beq	$a2, $a3, .LBB7_8
# %bb.12:                               #   in Loop: Header=BB7_9 Depth=1
	move	$s0, $a0
	move	$a0, $a3
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	ld.d	$a1, $sp, 56
	ld.d	$a2, $sp, 32
	addi.d	$a1, $a1, 1
	st.d	$a1, $sp, 56
	addi.d	$a1, $a2, -1
	st.d	$a1, $sp, 32
	b	.LBB7_8
.LBB7_13:                               # %._crit_edge.i
	ld.d	$a0, $sp, 40
	addi.d	$fp, $sp, 40
	beq	$a0, $fp, .LBB7_15
	.p2align	4, , 16
.LBB7_14:                               # %.lr.ph.i.i.i6
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s0, $a0, 0
	ori	$a1, $zero, 24
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	bne	$s0, $fp, .LBB7_14
.LBB7_15:                               # %_ZNSt7__cxx1110_List_baseIdSaIdEED2Ev.exit.i9
	ld.d	$a0, $sp, 16
.LBB7_16:                               # %_ZNSt7__cxx114listIdSaIdEE6uniqueEv.exit
	addi.d	$fp, $sp, 16
	beq	$a0, $fp, .LBB7_18
	.p2align	4, , 16
.LBB7_17:                               # %.lr.ph.i.i10
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s0, $a0, 0
	ori	$a1, $zero, 24
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	bne	$s0, $fp, .LBB7_17
.LBB7_18:                               # %_ZNSt7__cxx1110_List_baseIdSaIdEED2Ev.exit
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.LBB7_19:
.Ltmp28:                                # EH_LABEL
	ld.d	$a1, $sp, 16
	move	$fp, $a0
	beq	$a1, $s0, .LBB7_25
# %bb.20:                               # %.lr.ph.i.i13.preheader
	move	$a0, $a1
	addi.d	$s0, $sp, 16
	.p2align	4, , 16
.LBB7_21:                               # %.lr.ph.i.i13
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s1, $a0, 0
	ori	$a1, $zero, 24
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	bne	$s1, $s0, .LBB7_21
	b	.LBB7_25
.LBB7_22:
.Ltmp25:                                # EH_LABEL
	ld.d	$a1, $sp, 16
	addi.d	$s0, $sp, 16
	move	$fp, $a0
	beq	$a1, $s0, .LBB7_25
# %bb.23:                               # %.lr.ph.i.i.i.preheader
	move	$a0, $a1
	.p2align	4, , 16
.LBB7_24:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s1, $a0, 0
	ori	$a1, $zero, 24
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	bne	$s1, $s0, .LBB7_24
.LBB7_25:                               # %.body
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end7:
	.size	_Z9list_testPdS_i, .Lfunc_end7-_Z9list_testPdS_i
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table7:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Ltmp23-.Lfunc_begin3          # >> Call Site 1 <<
	.uleb128 .Ltmp24-.Ltmp23                #   Call between .Ltmp23 and .Ltmp24
	.uleb128 .Ltmp25-.Lfunc_begin3          #     jumps to .Ltmp25
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp24-.Lfunc_begin3          # >> Call Site 2 <<
	.uleb128 .Ltmp26-.Ltmp24                #   Call between .Ltmp24 and .Ltmp26
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp26-.Lfunc_begin3          # >> Call Site 3 <<
	.uleb128 .Ltmp27-.Ltmp26                #   Call between .Ltmp26 and .Ltmp27
	.uleb128 .Ltmp28-.Lfunc_begin3          #     jumps to .Ltmp28
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp27-.Lfunc_begin3          # >> Call Site 4 <<
	.uleb128 .Lfunc_end7-.Ltmp27            #   Call between .Ltmp27 and .Lfunc_end7
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt7__cxx114listIdSaIdEE4sortEv,"axG",@progbits,_ZNSt7__cxx114listIdSaIdEE4sortEv,comdat
	.weak	_ZNSt7__cxx114listIdSaIdEE4sortEv # -- Begin function _ZNSt7__cxx114listIdSaIdEE4sortEv
	.p2align	5
	.type	_ZNSt7__cxx114listIdSaIdEE4sortEv,@function
_ZNSt7__cxx114listIdSaIdEE4sortEv:      # @_ZNSt7__cxx114listIdSaIdEE4sortEv
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -1136
	.cfi_def_cfa_offset 1136
	st.d	$ra, $sp, 1128                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1120                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1112                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1104                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1096                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1088                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1080                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1072                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1064                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1056                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1048                  # 8-byte Folded Spill
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
	ld.d	$a0, $a0, 0
	beq	$a0, $fp, .LBB8_20
# %bb.1:
	ld.d	$a0, $a0, 0
	beq	$a0, $fp, .LBB8_20
# %bb.2:                                # %.preheader50.preheader
	move	$s3, $zero
	addi.d	$s4, $sp, 1032
	st.d	$s4, $sp, 1040
	st.d	$s4, $sp, 1032
	addi.d	$a0, $sp, 8
	st.d	$a0, $sp, 16
	st.d	$a0, $sp, 8
	addi.d	$a0, $sp, 40
	st.d	$a0, $sp, 48
	st.d	$a0, $sp, 40
	addi.d	$a0, $sp, 56
	st.d	$a0, $sp, 64
	st.d	$a0, $sp, 56
	addi.d	$a0, $sp, 72
	st.d	$a0, $sp, 80
	st.d	$a0, $sp, 72
	addi.d	$a0, $sp, 88
	st.d	$a0, $sp, 96
	st.d	$a0, $sp, 88
	addi.d	$a0, $sp, 104
	st.d	$a0, $sp, 112
	st.d	$a0, $sp, 104
	addi.d	$a0, $sp, 120
	st.d	$a0, $sp, 128
	st.d	$a0, $sp, 120
	addi.d	$a0, $sp, 136
	st.d	$a0, $sp, 144
	st.d	$a0, $sp, 136
	addi.d	$a0, $sp, 152
	st.d	$a0, $sp, 160
	st.d	$a0, $sp, 152
	addi.d	$a0, $sp, 168
	st.d	$a0, $sp, 176
	st.d	$a0, $sp, 168
	addi.d	$a0, $sp, 184
	st.d	$a0, $sp, 192
	st.d	$a0, $sp, 184
	addi.d	$a0, $sp, 200
	st.d	$a0, $sp, 208
	st.d	$a0, $sp, 200
	addi.d	$a0, $sp, 216
	st.d	$a0, $sp, 224
	st.d	$a0, $sp, 216
	addi.d	$a0, $sp, 232
	st.d	$a0, $sp, 240
	st.d	$a0, $sp, 232
	addi.d	$a0, $sp, 248
	st.d	$a0, $sp, 256
	st.d	$a0, $sp, 248
	addi.d	$a0, $sp, 264
	st.d	$a0, $sp, 272
	st.d	$a0, $sp, 264
	addi.d	$a0, $sp, 280
	st.d	$a0, $sp, 288
	st.d	$a0, $sp, 280
	addi.d	$a0, $sp, 296
	st.d	$a0, $sp, 304
	st.d	$a0, $sp, 296
	addi.d	$a0, $sp, 312
	st.d	$a0, $sp, 320
	st.d	$a0, $sp, 312
	addi.d	$a0, $sp, 328
	st.d	$a0, $sp, 336
	st.d	$a0, $sp, 328
	addi.d	$a0, $sp, 344
	st.d	$a0, $sp, 352
	st.d	$a0, $sp, 344
	addi.d	$a0, $sp, 360
	st.d	$a0, $sp, 368
	st.d	$a0, $sp, 360
	addi.d	$a0, $sp, 376
	st.d	$a0, $sp, 384
	st.d	$a0, $sp, 376
	addi.d	$a0, $sp, 392
	st.d	$a0, $sp, 400
	st.d	$a0, $sp, 392
	addi.d	$a0, $sp, 408
	st.d	$a0, $sp, 416
	st.d	$a0, $sp, 408
	addi.d	$a0, $sp, 424
	st.d	$a0, $sp, 432
	st.d	$a0, $sp, 424
	addi.d	$a0, $sp, 440
	st.d	$a0, $sp, 448
	st.d	$a0, $sp, 440
	addi.d	$a0, $sp, 456
	st.d	$a0, $sp, 464
	st.d	$a0, $sp, 456
	addi.d	$a0, $sp, 472
	st.d	$a0, $sp, 480
	st.d	$a0, $sp, 472
	addi.d	$a0, $sp, 488
	st.d	$a0, $sp, 496
	st.d	$a0, $sp, 488
	addi.d	$a0, $sp, 504
	st.d	$a0, $sp, 512
	st.d	$a0, $sp, 504
	addi.d	$a0, $sp, 520
	st.d	$a0, $sp, 528
	st.d	$a0, $sp, 520
	addi.d	$a0, $sp, 536
	st.d	$a0, $sp, 544
	st.d	$a0, $sp, 536
	addi.d	$a0, $sp, 552
	st.d	$a0, $sp, 560
	st.d	$a0, $sp, 552
	addi.d	$a0, $sp, 568
	st.d	$a0, $sp, 576
	st.d	$a0, $sp, 568
	addi.d	$a0, $sp, 584
	st.d	$a0, $sp, 592
	st.d	$a0, $sp, 584
	addi.d	$a0, $sp, 600
	st.d	$a0, $sp, 608
	st.d	$a0, $sp, 600
	addi.d	$a0, $sp, 616
	st.d	$a0, $sp, 624
	st.d	$a0, $sp, 616
	addi.d	$a0, $sp, 632
	st.d	$a0, $sp, 640
	st.d	$a0, $sp, 632
	addi.d	$a0, $sp, 648
	st.d	$a0, $sp, 656
	st.d	$a0, $sp, 648
	addi.d	$a0, $sp, 664
	st.d	$a0, $sp, 672
	st.d	$a0, $sp, 664
	addi.d	$a0, $sp, 680
	st.d	$a0, $sp, 688
	st.d	$a0, $sp, 680
	addi.d	$a0, $sp, 696
	st.d	$a0, $sp, 704
	st.d	$a0, $sp, 696
	addi.d	$a0, $sp, 712
	st.d	$a0, $sp, 720
	st.d	$a0, $sp, 712
	addi.d	$a0, $sp, 728
	st.d	$a0, $sp, 736
	st.d	$a0, $sp, 728
	addi.d	$a0, $sp, 744
	st.d	$a0, $sp, 752
	st.d	$a0, $sp, 744
	addi.d	$a0, $sp, 760
	st.d	$a0, $sp, 768
	st.d	$a0, $sp, 760
	addi.d	$a0, $sp, 776
	st.d	$a0, $sp, 784
	st.d	$a0, $sp, 776
	addi.d	$a0, $sp, 792
	st.d	$a0, $sp, 800
	st.d	$a0, $sp, 792
	addi.d	$a0, $sp, 808
	st.d	$a0, $sp, 816
	st.d	$a0, $sp, 808
	addi.d	$a0, $sp, 824
	st.d	$a0, $sp, 832
	st.d	$a0, $sp, 824
	addi.d	$a0, $sp, 840
	st.d	$a0, $sp, 848
	st.d	$a0, $sp, 840
	addi.d	$a0, $sp, 856
	st.d	$a0, $sp, 864
	st.d	$a0, $sp, 856
	addi.d	$a0, $sp, 872
	st.d	$a0, $sp, 880
	st.d	$a0, $sp, 872
	addi.d	$a0, $sp, 888
	st.d	$a0, $sp, 896
	st.d	$a0, $sp, 888
	addi.d	$a0, $sp, 904
	st.d	$a0, $sp, 912
	st.d	$a0, $sp, 904
	addi.d	$a0, $sp, 920
	st.d	$a0, $sp, 928
	st.d	$a0, $sp, 920
	addi.d	$a0, $sp, 936
	st.d	$a0, $sp, 944
	st.d	$a0, $sp, 936
	addi.d	$a0, $sp, 952
	st.d	$a0, $sp, 960
	st.d	$a0, $sp, 952
	addi.d	$a0, $sp, 968
	st.d	$a0, $sp, 976
	st.d	$a0, $sp, 968
	addi.d	$a0, $sp, 984
	st.d	$a0, $sp, 992
	st.d	$a0, $sp, 984
	addi.d	$a0, $sp, 1000
	st.d	$a0, $sp, 1008
	st.d	$a0, $sp, 1000
	addi.d	$a0, $sp, 1016
	st.d	$a0, $sp, 1024
	st.d	$a0, $sp, 1016
	ld.d	$a1, $fp, 0
	addi.d	$s7, $sp, 24
	st.d	$s7, $sp, 32
	st.d	$s7, $sp, 24
	b	.LBB8_5
	.p2align	4, , 16
.LBB8_3:                                #   in Loop: Header=BB8_5 Depth=1
	move	$s8, $zero
	addi.d	$s0, $sp, 8
.LBB8_4:                                # %.critedge
                                        #   in Loop: Header=BB8_5 Depth=1
	addi.d	$a0, $sp, 1032
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base4swapERS0_S1_)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	add.d	$s3, $s3, $s5
	beq	$a1, $fp, .LBB8_18
.LBB8_5:                                # %.preheader50
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_8 Depth 2
                                        #       Child Loop BB8_10 Depth 3
	ld.d	$a2, $a1, 0
	addi.d	$a0, $sp, 8
	add.d	$s6, $a0, $s3
	addi.d	$a0, $sp, 1032
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_)
	jirl	$ra, $ra, 0
	ori	$s5, $zero, 16
	beqz	$s3, .LBB8_3
# %bb.6:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB8_5 Depth=1
	addi.d	$s0, $sp, 8
	b	.LBB8_8
	.p2align	4, , 16
.LBB8_7:                                # %_ZNSt8__detail13_Scratch_list5mergeINS0_8_Ptr_cmpISt14_List_iteratorIdEvEEEEvRNS_15_List_node_baseET_.exit
                                        #   in Loop: Header=BB8_8 Depth=2
	addi.d	$a0, $sp, 1032
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base4swapERS0_S1_)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, 16
	beq	$s0, $s6, .LBB8_17
.LBB8_8:                                # %.lr.ph
                                        #   Parent Loop BB8_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_10 Depth 3
	ld.d	$s1, $s0, 0
	beq	$s1, $s0, .LBB8_16
# %bb.9:                                #   in Loop: Header=BB8_8 Depth=2
	ld.d	$a1, $sp, 1032
	beq	$a1, $s4, .LBB8_7
	.p2align	4, , 16
.LBB8_10:                               # %.lr.ph.i
                                        #   Parent Loop BB8_5 Depth=1
                                        #     Parent Loop BB8_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa0, $a1, 16
	fld.d	$fa1, $s1, 16
	fcmp.cule.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB8_12
# %bb.11:                               #   in Loop: Header=BB8_10 Depth=3
	ld.d	$s2, $a1, 0
	move	$a0, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_)
	jirl	$ra, $ra, 0
	move	$a1, $s2
	bne	$a1, $s4, .LBB8_13
	b	.LBB8_14
	.p2align	4, , 16
.LBB8_12:                               #   in Loop: Header=BB8_10 Depth=3
	ld.d	$s1, $s1, 0
	beq	$a1, $s4, .LBB8_14
.LBB8_13:                               #   in Loop: Header=BB8_10 Depth=3
	bne	$s1, $s0, .LBB8_10
.LBB8_14:                               # %._crit_edge.i
                                        #   in Loop: Header=BB8_8 Depth=2
	beq	$a1, $s4, .LBB8_7
# %bb.15:                               #   in Loop: Header=BB8_8 Depth=2
	addi.d	$a2, $sp, 1032
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_)
	jirl	$ra, $ra, 0
	b	.LBB8_7
	.p2align	4, , 16
.LBB8_16:                               #   in Loop: Header=BB8_5 Depth=1
	move	$s5, $zero
	addi.w	$s8, $zero, -16
	b	.LBB8_4
	.p2align	4, , 16
.LBB8_17:                               #   in Loop: Header=BB8_5 Depth=1
	move	$s8, $zero
	move	$s0, $s6
	b	.LBB8_4
.LBB8_18:                               # %.preheader
	ori	$a0, $zero, 16
	bne	$s3, $a0, .LBB8_21
.LBB8_19:                               # %._crit_edge
	add.d	$a0, $s6, $s8
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base4swapERS0_S1_)
	jirl	$ra, $ra, 0
.LBB8_20:
	ld.d	$s8, $sp, 1048                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1056                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1064                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1072                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1080                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1088                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1096                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1104                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1112                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1120                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1128                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1136
	ret
.LBB8_21:                               # %.lr.ph65.preheader
	addi.d	$s0, $sp, 8
	add.d	$s4, $s0, $s3
	b	.LBB8_23
	.p2align	4, , 16
.LBB8_22:                               # %_ZNSt8__detail13_Scratch_list5mergeINS0_8_Ptr_cmpISt14_List_iteratorIdEvEEEEvRNS_15_List_node_baseET_.exit45
                                        #   in Loop: Header=BB8_23 Depth=1
	addi.d	$s7, $s1, 16
	move	$s0, $s1
	beq	$s7, $s4, .LBB8_19
.LBB8_23:                               # %.lr.ph65
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_25 Depth 2
	ld.d	$a1, $s0, 0
	ld.d	$s2, $s0, 16
	move	$s1, $s7
	xor	$a0, $a1, $s0
	sltu	$a0, $zero, $a0
	beq	$s2, $s7, .LBB8_29
# %bb.24:                               # %.lr.ph65
                                        #   in Loop: Header=BB8_23 Depth=1
	beq	$a1, $s0, .LBB8_29
	.p2align	4, , 16
.LBB8_25:                               # %.lr.ph.i40
                                        #   Parent Loop BB8_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a1, 16
	fld.d	$fa1, $s2, 16
	fcmp.cule.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB8_27
# %bb.26:                               #   in Loop: Header=BB8_25 Depth=2
	ld.d	$s3, $a1, 0
	move	$a0, $s2
	move	$a2, $s3
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_)
	jirl	$ra, $ra, 0
	move	$a1, $s3
	xor	$a0, $a1, $s0
	sltu	$a0, $zero, $a0
	bne	$a1, $s0, .LBB8_28
	b	.LBB8_29
	.p2align	4, , 16
.LBB8_27:                               #   in Loop: Header=BB8_25 Depth=2
	ld.d	$s2, $s2, 0
	xor	$a0, $a1, $s0
	sltu	$a0, $zero, $a0
	beq	$a1, $s0, .LBB8_29
.LBB8_28:                               #   in Loop: Header=BB8_25 Depth=2
	bne	$s2, $s1, .LBB8_25
.LBB8_29:                               # %._crit_edge.i37
                                        #   in Loop: Header=BB8_23 Depth=1
	beqz	$a0, .LBB8_22
# %bb.30:                               #   in Loop: Header=BB8_23 Depth=1
	move	$a0, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_)
	jirl	$ra, $ra, 0
	b	.LBB8_22
.Lfunc_end8:
	.size	_ZNSt7__cxx114listIdSaIdEE4sortEv, .Lfunc_end8-_ZNSt7__cxx114listIdSaIdEE4sortEv
	.cfi_endproc
                                        # -- End function
	.text
	.globl	_Z8set_testPdS_i                # -- Begin function _Z8set_testPdS_i
	.p2align	5
	.type	_Z8set_testPdS_i,@function
_Z8set_testPdS_i:                       # @_Z8set_testPdS_i
.Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception4
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 56, -56
	addi.d	$s1, $sp, 16
	st.d	$zero, $sp, 24
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 8
	st.d	$s1, $sp, 32
	st.d	$s1, $sp, 40
	st.d	$zero, $sp, 48
	beq	$a0, $a1, .LBB9_11
# %bb.1:                                # %.lr.ph.i.i
	move	$fp, $a1
	move	$s0, $a0
	b	.LBB9_3
	.p2align	4, , 16
.LBB9_2:                                # %_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE17_M_insert_unique_IRdNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIdESt23_Rb_tree_const_iteratorIdEOT_RT0_.exit.i.i
                                        #   in Loop: Header=BB9_3 Depth=1
	addi.d	$s0, $s0, 8
	beq	$s0, $fp, .LBB9_10
.LBB9_3:                                # =>This Inner Loop Header: Depth=1
.Ltmp29:                                # EH_LABEL
	addi.d	$a0, $sp, 8
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIdERKd)
	jirl	$ra, $ra, 0
.Ltmp30:                                # EH_LABEL
# %bb.4:                                # %.noexc.i
                                        #   in Loop: Header=BB9_3 Depth=1
	move	$s2, $a1
	beqz	$a1, .LBB9_2
# %bb.5:                                #   in Loop: Header=BB9_3 Depth=1
	fld.d	$fs0, $s0, 0
	ori	$s3, $zero, 1
	bnez	$a0, .LBB9_8
# %bb.6:                                #   in Loop: Header=BB9_3 Depth=1
	beq	$s1, $s2, .LBB9_8
# %bb.7:                                #   in Loop: Header=BB9_3 Depth=1
	fld.d	$fa0, $s2, 32
	fcmp.clt.d	$fcc0, $fs0, $fa0
	movcf2gr	$s3, $fcc0
.LBB9_8:                                # %_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE10_M_insert_IRdNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIdEPSt18_Rb_tree_node_baseSC_OT_RT0_.exit.i.i.i
                                        #   in Loop: Header=BB9_3 Depth=1
.Ltmp31:                                # EH_LABEL
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$a1, $a0
.Ltmp32:                                # EH_LABEL
# %bb.9:                                # %.noexc4.i
                                        #   in Loop: Header=BB9_3 Depth=1
	fst.d	$fs0, $a1, 32
	move	$a0, $s3
	move	$a2, $s2
	move	$a3, $s1
	pcaddu18i	$ra, %call36(_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 48
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 48
	b	.LBB9_2
.LBB9_10:                               # %_ZNSt3setIdSt4lessIdESaIdEEC2IPdEET_S6_.exit.loopexit
	ld.d	$a1, $sp, 24
	b	.LBB9_12
.LBB9_11:
	move	$a1, $zero
.LBB9_12:                               # %_ZNSt3setIdSt4lessIdESaIdEEC2IPdEET_S6_.exit
.Ltmp34:                                # EH_LABEL
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE8_M_eraseEPSt13_Rb_tree_nodeIdE)
	jirl	$ra, $ra, 0
.Ltmp35:                                # EH_LABEL
# %bb.13:                               # %_ZNSt3setIdSt4lessIdESaIdEED2Ev.exit
	fld.d	$fs0, $sp, 56                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.LBB9_14:
.Ltmp36:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB9_15:
.Ltmp33:                                # EH_LABEL
	move	$fp, $a0
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEED2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end9:
	.size	_Z8set_testPdS_i, .Lfunc_end9-_Z8set_testPdS_i
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table9:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Ltmp29-.Lfunc_begin4          # >> Call Site 1 <<
	.uleb128 .Ltmp32-.Ltmp29                #   Call between .Ltmp29 and .Ltmp32
	.uleb128 .Ltmp33-.Lfunc_begin4          #     jumps to .Ltmp33
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp32-.Lfunc_begin4          # >> Call Site 2 <<
	.uleb128 .Ltmp34-.Ltmp32                #   Call between .Ltmp32 and .Ltmp34
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp34-.Lfunc_begin4          # >> Call Site 3 <<
	.uleb128 .Ltmp35-.Ltmp34                #   Call between .Ltmp34 and .Ltmp35
	.uleb128 .Ltmp36-.Lfunc_begin4          #     jumps to .Ltmp36
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp35-.Lfunc_begin4          # >> Call Site 4 <<
	.uleb128 .Lfunc_end9-.Ltmp35            #   Call between .Ltmp35 and .Lfunc_end9
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end4:
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
	.globl	_Z13multiset_testPdS_i          # -- Begin function _Z13multiset_testPdS_i
	.p2align	5
	.type	_Z13multiset_testPdS_i,@function
_Z13multiset_testPdS_i:                 # @_Z13multiset_testPdS_i
.Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception5
# %bb.0:
	addi.d	$sp, $sp, -96
	.cfi_def_cfa_offset 96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	move	$s1, $a0
	addi.d	$fp, $sp, 16
	st.d	$zero, $sp, 24
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 8
	st.d	$fp, $sp, 32
	st.d	$fp, $sp, 40
	st.d	$zero, $sp, 48
	addi.d	$a0, $sp, 8
	st.d	$a0, $sp, 56
	beq	$s1, $a1, .LBB10_9
# %bb.1:                                # %.lr.ph.i.i
	move	$s0, $a1
	.p2align	4, , 16
.LBB10_2:                               # =>This Inner Loop Header: Depth=1
.Ltmp37:                                # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a3, $sp, 56
	move	$a1, $fp
	move	$a2, $s1
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE16_M_insert_equal_IRdNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIdESt23_Rb_tree_const_iteratorIdEOT_RT0_)
	jirl	$ra, $ra, 0
.Ltmp38:                                # EH_LABEL
# %bb.3:                                # %.noexc.i
                                        #   in Loop: Header=BB10_2 Depth=1
	addi.d	$s1, $s1, 8
	bne	$s1, $s0, .LBB10_2
# %bb.4:                                # %_ZNSt8multisetIdSt4lessIdESaIdEEC2IPdEET_S6_.exit
	ld.d	$s0, $sp, 32
	bne	$s0, $fp, .LBB10_6
	b	.LBB10_9
	.p2align	4, , 16
.LBB10_5:                               #   in Loop: Header=BB10_6 Depth=1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 40
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 48
	addi.d	$a0, $a0, -1
	st.d	$a0, $sp, 48
	beq	$s0, $fp, .LBB10_9
.LBB10_6:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	beq	$a0, $fp, .LBB10_9
# %bb.7:                                #   in Loop: Header=BB10_6 Depth=1
	fld.d	$fa0, $s0, 32
	fld.d	$fa1, $a0, 32
	fcmp.cune.d	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB10_5
# %bb.8:                                #   in Loop: Header=BB10_6 Depth=1
	move	$s0, $a0
	bne	$s0, $fp, .LBB10_6
.LBB10_9:                               # %.thread
	ld.d	$a1, $sp, 24
.Ltmp40:                                # EH_LABEL
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE8_M_eraseEPSt13_Rb_tree_nodeIdE)
	jirl	$ra, $ra, 0
.Ltmp41:                                # EH_LABEL
# %bb.10:                               # %_ZNSt8multisetIdSt4lessIdESaIdEED2Ev.exit
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.LBB10_11:
.Ltmp42:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB10_12:
.Ltmp39:                                # EH_LABEL
	move	$fp, $a0
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEED2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end10:
	.size	_Z13multiset_testPdS_i, .Lfunc_end10-_Z13multiset_testPdS_i
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table10:
.Lexception5:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end5-.Lcst_begin5
.Lcst_begin5:
	.uleb128 .Ltmp37-.Lfunc_begin5          # >> Call Site 1 <<
	.uleb128 .Ltmp38-.Ltmp37                #   Call between .Ltmp37 and .Ltmp38
	.uleb128 .Ltmp39-.Lfunc_begin5          #     jumps to .Ltmp39
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp38-.Lfunc_begin5          # >> Call Site 2 <<
	.uleb128 .Ltmp40-.Ltmp38                #   Call between .Ltmp38 and .Ltmp40
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp40-.Lfunc_begin5          # >> Call Site 3 <<
	.uleb128 .Ltmp41-.Ltmp40                #   Call between .Ltmp40 and .Ltmp41
	.uleb128 .Ltmp42-.Lfunc_begin5          #     jumps to .Ltmp42
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp41-.Lfunc_begin5          # >> Call Site 4 <<
	.uleb128 .Lfunc_end10-.Ltmp41           #   Call between .Ltmp41 and .Lfunc_end10
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end5:
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
	.globl	_Z10initializePdS_              # -- Begin function _Z10initializePdS_
	.p2align	5
	.type	_Z10initializePdS_,@function
_Z10initializePdS_:                     # @_Z10initializePdS_
# %bb.0:
	beq	$a0, $a1, .LBB11_3
# %bb.1:                                # %.lr.ph.preheader
	movgr2fr.d	$fa0, $zero
	vldi	$vr1, -912
	.p2align	4, , 16
.LBB11_2:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a2, $a0, 8
	fst.d	$fa0, $a0, 0
	fadd.d	$fa0, $fa0, $fa1
	move	$a0, $a2
	bne	$a2, $a1, .LBB11_2
.LBB11_3:                               # %._crit_edge
	ret
.Lfunc_end11:
	.size	_Z10initializePdS_, .Lfunc_end11-_Z10initializePdS_
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _Z6logtwod
.LCPI12_0:
	.dword	0x3fe62e42fefa39ef              # double 0.69314718055994529
	.text
	.globl	_Z6logtwod
	.p2align	5
	.type	_Z6logtwod,@function
_Z6logtwod:                             # @_Z6logtwod
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(log)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI12_0)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI12_0)
	fdiv.d	$fa0, $fa0, $fa1
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end12:
	.size	_Z6logtwod, .Lfunc_end12-_Z6logtwod
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _Z15number_of_testsi
.LCPI13_0:
	.dword	0x3fe62e42fefa39ef              # double 0.69314718055994529
.LCPI13_1:
	.dword	0x4173021b091bf3aa              # double 19931568.569324173
	.text
	.globl	_Z15number_of_testsi
	.p2align	5
	.type	_Z15number_of_testsi,@function
_Z15number_of_testsi:                   # @_Z15number_of_testsi
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	fst.d	$fs0, $sp, 0                    # 8-byte Folded Spill
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fs0, $fa0
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(log)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI13_0)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI13_0)
	pcalau12i	$a0, %pc_hi20(.LCPI13_1)
	fld.d	$fa2, $a0, %pc_lo12(.LCPI13_1)
	fdiv.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fs0
	fdiv.d	$fa0, $fa2, $fa0
	vreplvei.d	$vr0, $vr0, 0
	vfrintrm.d	$vr0, $vr0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	fld.d	$fs0, $sp, 0                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end13:
	.size	_Z15number_of_testsi, .Lfunc_end13-_Z15number_of_testsi
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _Z9run_testsi
.LCPI14_0:
	.dword	0x3fe62e42fefa39ef              # double 0.69314718055994529
.LCPI14_1:
	.dword	0x4173021b091bf3aa              # double 19931568.569324173
	.text
	.globl	_Z9run_testsi
	.p2align	5
	.type	_Z9run_testsi,@function
_Z9run_testsi:                          # @_Z9run_testsi
.Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception6
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
	fst.d	$fs0, $sp, 16                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 56, -64
	move	$s2, $a0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fs0, $fa0
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(log)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(result_times)
	addi.d	$a0, $a0, %pc_lo12(result_times)
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a0, 8
	beq	$a2, $a1, .LBB14_2
# %bb.1:                                # %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i
	st.d	$a1, $a0, 8
.LBB14_2:                               # %_ZNSt6vectorIdSaIdEE5clearEv.exit
	bltz	$s2, .LBB14_39
# %bb.3:                                # %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
	pcalau12i	$a0, %pc_hi20(.LCPI14_0)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI14_0)
	pcalau12i	$a0, %pc_hi20(.LCPI14_1)
	fld.d	$fa2, $a0, %pc_lo12(.LCPI14_1)
	fdiv.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fs0
	fdiv.d	$fa0, $fa2, $fa0
	vreplvei.d	$vr0, $vr0, 0
	vfrintrm.d	$vr0, $vr0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$s3, $fa0
	beqz	$s2, .LBB14_14
# %bb.4:                                # %.lr.ph.i.preheader
	slli.w	$s0, $s2, 1
	slli.d	$s1, $s0, 3
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	alsl.d	$s0, $s0, $a0, 3
	st.d	$zero, $a0, 0
	addi.d	$a0, $a0, 8
	addi.d	$a2, $s1, -8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a2, $zero
	slli.d	$a1, $s2, 3
	alsl.d	$a0, $s2, $fp, 3
	movgr2fr.d	$fa0, $zero
	vldi	$vr1, -912
	.p2align	4, , 16
.LBB14_5:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	fstx.d	$fa0, $fp, $a2
	addi.d	$a2, $a2, 8
	fadd.d	$fa0, $fa0, $fa1
	bne	$a1, $a2, .LBB14_5
# %bb.6:                                # %_Z10initializePdS_.exit
	beq	$s1, $a1, .LBB14_9
# %bb.7:                                # %.lr.ph.i39.preheader
	sub.d	$a1, $s1, $a1
	movgr2fr.d	$fa0, $zero
	vldi	$vr1, -912
	.p2align	4, , 16
.LBB14_8:                               # %.lr.ph.i39
                                        # =>This Inner Loop Header: Depth=1
	fst.d	$fa0, $a0, 0
	addi.d	$a0, $a0, 8
	addi.d	$a1, $a1, -8
	fadd.d	$fa0, $fa0, $fa1
	bnez	$a1, .LBB14_8
.LBB14_9:                               # %.lr.ph.i45
	ori	$s2, $zero, 8
	b	.LBB14_11
	.p2align	4, , 16
.LBB14_10:                              #   in Loop: Header=BB14_11 Depth=1
	addi.d	$s2, $s2, 8
	beq	$s1, $s2, .LBB14_13
.LBB14_11:                              # =>This Inner Loop Header: Depth=1
	pcaddu18i	$ra, %call36(rand)
	jirl	$ra, $ra, 0
	srai.d	$a1, $s2, 3
	addi.d	$a1, $a1, 1
	mod.d	$a0, $a0, $a1
	slli.d	$a1, $a0, 3
	beq	$s2, $a1, .LBB14_10
# %bb.12:                               #   in Loop: Header=BB14_11 Depth=1
	add.d	$a1, $fp, $s2
	alsl.d	$a0, $a0, $fp, 3
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a1, 0
	fst.d	$fa0, $a1, 0
	fst.d	$fa1, $a0, 0
	b	.LBB14_10
.LBB14_13:                              # %_ZSt14random_shuffleIPdEvT_S1_.exit
	move	$s1, $s0
	bgtz	$s3, .LBB14_16
	b	.LBB14_37
.LBB14_14:                              # %_ZSt14random_shuffleIPdEvT_S1_.exit.thread
	blez	$s3, .LBB14_38
# %bb.15:
	move	$s1, $zero
	move	$fp, $zero
	move	$s0, $zero
.LBB14_16:                              # %.lr.ph.i46.preheader
	addi.d	$s2, $s3, 1
	ori	$s3, $zero, 1
	move	$s4, $s2
	.p2align	4, , 16
.LBB14_17:                              # %.lr.ph.i46
                                        # =>This Inner Loop Header: Depth=1
.Ltmp43:                                # EH_LABEL
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_Z10array_testPdS_i)
	jirl	$ra, $ra, 0
.Ltmp44:                                # EH_LABEL
# %bb.18:                               # %.noexc47
                                        #   in Loop: Header=BB14_17 Depth=1
	addi.w	$s4, $s4, -1
	bltu	$s3, $s4, .LBB14_17
# %bb.19:                               # %.lr.ph.i48.preheader
	ori	$s3, $zero, 1
	move	$s4, $s2
	.p2align	4, , 16
.LBB14_20:                              # %.lr.ph.i48
                                        # =>This Inner Loop Header: Depth=1
.Ltmp46:                                # EH_LABEL
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_Z19vector_pointer_testPdS_i)
	jirl	$ra, $ra, 0
.Ltmp47:                                # EH_LABEL
# %bb.21:                               # %.noexc50
                                        #   in Loop: Header=BB14_20 Depth=1
	addi.w	$s4, $s4, -1
	bltu	$s3, $s4, .LBB14_20
# %bb.22:                               # %.lr.ph.i52.preheader
	ori	$s3, $zero, 1
	move	$s4, $s2
	.p2align	4, , 16
.LBB14_23:                              # %.lr.ph.i52
                                        # =>This Inner Loop Header: Depth=1
.Ltmp49:                                # EH_LABEL
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_Z20vector_iterator_testPdS_i)
	jirl	$ra, $ra, 0
.Ltmp50:                                # EH_LABEL
# %bb.24:                               # %.noexc54
                                        #   in Loop: Header=BB14_23 Depth=1
	addi.w	$s4, $s4, -1
	bltu	$s3, $s4, .LBB14_23
# %bb.25:                               # %.lr.ph.i56.preheader
	ori	$s3, $zero, 1
	move	$s4, $s2
	.p2align	4, , 16
.LBB14_26:                              # %.lr.ph.i56
                                        # =>This Inner Loop Header: Depth=1
.Ltmp52:                                # EH_LABEL
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_Z10deque_testPdS_i)
	jirl	$ra, $ra, 0
.Ltmp53:                                # EH_LABEL
# %bb.27:                               # %.noexc58
                                        #   in Loop: Header=BB14_26 Depth=1
	addi.w	$s4, $s4, -1
	bltu	$s3, $s4, .LBB14_26
# %bb.28:                               # %.lr.ph.i60.preheader
	ori	$s3, $zero, 1
	move	$s4, $s2
	.p2align	4, , 16
.LBB14_29:                              # %.lr.ph.i60
                                        # =>This Inner Loop Header: Depth=1
.Ltmp55:                                # EH_LABEL
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_Z9list_testPdS_i)
	jirl	$ra, $ra, 0
.Ltmp56:                                # EH_LABEL
# %bb.30:                               # %.noexc62
                                        #   in Loop: Header=BB14_29 Depth=1
	addi.w	$s4, $s4, -1
	bltu	$s3, $s4, .LBB14_29
# %bb.31:                               # %.lr.ph.i64.preheader
	ori	$s3, $zero, 1
	move	$s4, $s2
	.p2align	4, , 16
.LBB14_32:                              # %.lr.ph.i64
                                        # =>This Inner Loop Header: Depth=1
.Ltmp58:                                # EH_LABEL
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_Z8set_testPdS_i)
	jirl	$ra, $ra, 0
.Ltmp59:                                # EH_LABEL
# %bb.33:                               # %.noexc66
                                        #   in Loop: Header=BB14_32 Depth=1
	addi.w	$s4, $s4, -1
	bltu	$s3, $s4, .LBB14_32
# %bb.34:                               # %.lr.ph.i68.preheader
	ori	$s3, $zero, 1
	.p2align	4, , 16
.LBB14_35:                              # %.lr.ph.i68
                                        # =>This Inner Loop Header: Depth=1
.Ltmp61:                                # EH_LABEL
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_Z13multiset_testPdS_i)
	jirl	$ra, $ra, 0
.Ltmp62:                                # EH_LABEL
# %bb.36:                               # %.noexc70
                                        #   in Loop: Header=BB14_35 Depth=1
	addi.w	$s2, $s2, -1
	bltu	$s3, $s2, .LBB14_35
.LBB14_37:                              # %_Z3runPFvPdS_iES_S_i.exit71.thread90
	sub.d	$a1, $s1, $fp
	move	$a0, $fp
	fld.d	$fs0, $sp, 16                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB14_38:                              # %_ZNSt6vectorIdSaIdEED2Ev.exit
	fld.d	$fs0, $sp, 16                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.LBB14_39:                              # %.noexc
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.LBB14_40:                              # %_ZNSt6vectorIdSaIdEED2Ev.exit73.loopexit
.Ltmp63:                                # EH_LABEL
	b	.LBB14_47
.LBB14_41:                              # %_ZNSt6vectorIdSaIdEED2Ev.exit73.loopexit.split-lp.loopexit
.Ltmp60:                                # EH_LABEL
	b	.LBB14_47
.LBB14_42:                              # %_ZNSt6vectorIdSaIdEED2Ev.exit73.loopexit.split-lp.loopexit.split-lp.loopexit
.Ltmp57:                                # EH_LABEL
	b	.LBB14_47
.LBB14_43:                              # %_ZNSt6vectorIdSaIdEED2Ev.exit73.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit
.Ltmp54:                                # EH_LABEL
	b	.LBB14_47
.LBB14_44:                              # %_ZNSt6vectorIdSaIdEED2Ev.exit73.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit
.Ltmp51:                                # EH_LABEL
	b	.LBB14_47
.LBB14_45:                              # %_ZNSt6vectorIdSaIdEED2Ev.exit73.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit
.Ltmp48:                                # EH_LABEL
	b	.LBB14_47
.LBB14_46:                              # %_ZNSt6vectorIdSaIdEED2Ev.exit73.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
.Ltmp45:                                # EH_LABEL
.LBB14_47:                              # %_ZNSt6vectorIdSaIdEED2Ev.exit73
	move	$s0, $a0
	sub.d	$a1, $s1, $fp
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end14:
	.size	_Z9run_testsi, .Lfunc_end14-_Z9run_testsi
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table14:
.Lexception6:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end6-.Lcst_begin6
.Lcst_begin6:
	.uleb128 .Lfunc_begin6-.Lfunc_begin6    # >> Call Site 1 <<
	.uleb128 .Ltmp43-.Lfunc_begin6          #   Call between .Lfunc_begin6 and .Ltmp43
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp43-.Lfunc_begin6          # >> Call Site 2 <<
	.uleb128 .Ltmp44-.Ltmp43                #   Call between .Ltmp43 and .Ltmp44
	.uleb128 .Ltmp45-.Lfunc_begin6          #     jumps to .Ltmp45
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp46-.Lfunc_begin6          # >> Call Site 3 <<
	.uleb128 .Ltmp47-.Ltmp46                #   Call between .Ltmp46 and .Ltmp47
	.uleb128 .Ltmp48-.Lfunc_begin6          #     jumps to .Ltmp48
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp49-.Lfunc_begin6          # >> Call Site 4 <<
	.uleb128 .Ltmp50-.Ltmp49                #   Call between .Ltmp49 and .Ltmp50
	.uleb128 .Ltmp51-.Lfunc_begin6          #     jumps to .Ltmp51
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp52-.Lfunc_begin6          # >> Call Site 5 <<
	.uleb128 .Ltmp53-.Ltmp52                #   Call between .Ltmp52 and .Ltmp53
	.uleb128 .Ltmp54-.Lfunc_begin6          #     jumps to .Ltmp54
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp55-.Lfunc_begin6          # >> Call Site 6 <<
	.uleb128 .Ltmp56-.Ltmp55                #   Call between .Ltmp55 and .Ltmp56
	.uleb128 .Ltmp57-.Lfunc_begin6          #     jumps to .Ltmp57
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp58-.Lfunc_begin6          # >> Call Site 7 <<
	.uleb128 .Ltmp59-.Ltmp58                #   Call between .Ltmp58 and .Ltmp59
	.uleb128 .Ltmp60-.Lfunc_begin6          #     jumps to .Ltmp60
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp61-.Lfunc_begin6          # >> Call Site 8 <<
	.uleb128 .Ltmp62-.Ltmp61                #   Call between .Ltmp61 and .Ltmp62
	.uleb128 .Ltmp63-.Lfunc_begin6          #     jumps to .Ltmp63
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp62-.Lfunc_begin6          # >> Call Site 9 <<
	.uleb128 .Lfunc_end14-.Ltmp62           #   Call between .Ltmp62 and .Lfunc_end14
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end6:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	lu12i.w	$a0, 24
	ori	$a0, $a0, 1696
	pcaddu18i	$ra, %call36(_Z9run_testsi)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end15:
	.size	main, .Lfunc_end15-main
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
.Lfunc_end16:
	.size	__clang_call_terminate, .Lfunc_end16-__clang_call_terminate
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEED2Ev,"axG",@progbits,_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEED2Ev,comdat
	.weak	_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEED2Ev # -- Begin function _ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEED2Ev
	.p2align	5
	.type	_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEED2Ev,@function
_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEED2Ev: # @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEED2Ev
.Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception7
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	ld.d	$a1, $a0, 16
.Ltmp64:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE8_M_eraseEPSt13_Rb_tree_nodeIdE)
	jirl	$ra, $ra, 0
.Ltmp65:                                # EH_LABEL
# %bb.1:
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB17_2:
.Ltmp66:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end17:
	.size	_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEED2Ev, .Lfunc_end17-_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEED2Ev,"aG",@progbits,_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEED2Ev,comdat
	.p2align	2, 0x0
GCC_except_table17:
.Lexception7:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase2-.Lttbaseref2
.Lttbaseref2:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end7-.Lcst_begin7
.Lcst_begin7:
	.uleb128 .Ltmp64-.Lfunc_begin7          # >> Call Site 1 <<
	.uleb128 .Ltmp65-.Ltmp64                #   Call between .Ltmp64 and .Ltmp65
	.uleb128 .Ltmp66-.Lfunc_begin7          #     jumps to .Ltmp66
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp65-.Lfunc_begin7          # >> Call Site 2 <<
	.uleb128 .Lfunc_end17-.Ltmp65           #   Call between .Ltmp65 and .Lfunc_end17
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end7:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase2:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE8_M_eraseEPSt13_Rb_tree_nodeIdE,"axG",@progbits,_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE8_M_eraseEPSt13_Rb_tree_nodeIdE,comdat
	.weak	_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE8_M_eraseEPSt13_Rb_tree_nodeIdE # -- Begin function _ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE8_M_eraseEPSt13_Rb_tree_nodeIdE
	.p2align	5
	.type	_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE8_M_eraseEPSt13_Rb_tree_nodeIdE,@function
_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE8_M_eraseEPSt13_Rb_tree_nodeIdE: # @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE8_M_eraseEPSt13_Rb_tree_nodeIdE
	.cfi_startproc
# %bb.0:
	beqz	$a1, .LBB18_4
# %bb.1:                                # %.lr.ph.preheader
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
	move	$fp, $a0
	.p2align	4, , 16
.LBB18_2:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE8_M_eraseEPSt13_Rb_tree_nodeIdE)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s0, 16
	ori	$a1, $zero, 40
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$s0, $s1
	bnez	$s1, .LBB18_2
# %bb.3:
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
.LBB18_4:                               # %._crit_edge
	ret
.Lfunc_end18:
	.size	_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE8_M_eraseEPSt13_Rb_tree_nodeIdE, .Lfunc_end18-_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE8_M_eraseEPSt13_Rb_tree_nodeIdE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_,"axG",@progbits,_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_,comdat
	.weak	_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_ # -- Begin function _ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_
	.p2align	5
	.type	_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_,@function
_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_: # @_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_
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
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	move	$fp, $a0
	sub.d	$s6, $a1, $a0
	ori	$a0, $zero, 129
	blt	$s6, $a0, .LBB19_35
# %bb.1:                                # %.lr.ph
	move	$s0, $a2
	addi.d	$s2, $fp, 8
	addi.w	$a0, $zero, -8
	sub.d	$s3, $a0, $fp
	lu52i.d	$s4, $a0, 2047
	ori	$s5, $zero, 128
	b	.LBB19_3
	.p2align	4, , 16
.LBB19_2:                               # %_ZSt27__unguarded_partition_pivotIPdN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit
                                        #   in Loop: Header=BB19_3 Depth=1
	move	$a0, $s1
	move	$a2, $s0
	move	$a3, $zero
	pcaddu18i	$ra, %call36(_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_)
	jirl	$ra, $ra, 0
	move	$a1, $s1
	bge	$s5, $s6, .LBB19_35
.LBB19_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB19_16 Depth 2
                                        #       Child Loop BB19_17 Depth 3
                                        #       Child Loop BB19_19 Depth 3
	beqz	$s0, .LBB19_22
# %bb.4:                                #   in Loop: Header=BB19_3 Depth=1
	srli.d	$a0, $s6, 1
	and	$a0, $a0, $s4
	fld.d	$fa1, $fp, 8
	fldx.d	$fa2, $fp, $a0
	fld.d	$fa0, $a1, -8
	fcmp.cule.d	$fcc0, $fa2, $fa1
	add.d	$a0, $fp, $a0
	bcnez	$fcc0, .LBB19_7
# %bb.5:                                #   in Loop: Header=BB19_3 Depth=1
	fcmp.cule.d	$fcc0, $fa0, $fa2
	bcnez	$fcc0, .LBB19_9
# %bb.6:                                #   in Loop: Header=BB19_3 Depth=1
	fld.d	$fa0, $fp, 0
	fst.d	$fa2, $fp, 0
	fst.d	$fa0, $a0, 0
	b	.LBB19_15
	.p2align	4, , 16
.LBB19_7:                               #   in Loop: Header=BB19_3 Depth=1
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB19_11
# %bb.8:                                #   in Loop: Header=BB19_3 Depth=1
	fld.d	$fa0, $fp, 0
	fst.d	$fa1, $fp, 0
	fst.d	$fa0, $fp, 8
	b	.LBB19_15
	.p2align	4, , 16
.LBB19_9:                               #   in Loop: Header=BB19_3 Depth=1
	fld.d	$fa2, $fp, 0
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB19_13
# %bb.10:                               #   in Loop: Header=BB19_3 Depth=1
	fst.d	$fa0, $fp, 0
	fst.d	$fa2, $a1, -8
	b	.LBB19_15
	.p2align	4, , 16
.LBB19_11:                              #   in Loop: Header=BB19_3 Depth=1
	fld.d	$fa1, $fp, 0
	fcmp.cule.d	$fcc0, $fa0, $fa2
	bcnez	$fcc0, .LBB19_14
# %bb.12:                               #   in Loop: Header=BB19_3 Depth=1
	fst.d	$fa0, $fp, 0
	fst.d	$fa1, $a1, -8
	b	.LBB19_15
.LBB19_13:                              #   in Loop: Header=BB19_3 Depth=1
	fst.d	$fa1, $fp, 0
	fst.d	$fa2, $fp, 8
	b	.LBB19_15
.LBB19_14:                              #   in Loop: Header=BB19_3 Depth=1
	fst.d	$fa2, $fp, 0
	fst.d	$fa1, $a0, 0
	.p2align	4, , 16
.LBB19_15:                              # %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader
                                        #   in Loop: Header=BB19_3 Depth=1
	addi.d	$s0, $s0, -1
	move	$a2, $a1
	move	$a0, $s2
	.p2align	4, , 16
.LBB19_16:                              # %_ZSt22__move_median_to_firstIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i
                                        #   Parent Loop BB19_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB19_17 Depth 3
                                        #       Child Loop BB19_19 Depth 3
	fld.d	$fa0, $fp, 0
	add.d	$s6, $s3, $a0
	.p2align	4, , 16
.LBB19_17:                              #   Parent Loop BB19_3 Depth=1
                                        #     Parent Loop BB19_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa1, $a0, 0
	addi.d	$a0, $a0, 8
	fcmp.clt.d	$fcc0, $fa1, $fa0
	addi.d	$s6, $s6, 8
	bcnez	$fcc0, .LBB19_17
# %bb.18:                               # %.preheader.i.i.preheader
                                        #   in Loop: Header=BB19_16 Depth=2
	addi.d	$s1, $a0, -8
	.p2align	4, , 16
.LBB19_19:                              # %.preheader.i.i
                                        #   Parent Loop BB19_3 Depth=1
                                        #     Parent Loop BB19_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa2, $a2, -8
	fcmp.clt.d	$fcc0, $fa0, $fa2
	addi.d	$a2, $a2, -8
	bcnez	$fcc0, .LBB19_19
# %bb.20:                               #   in Loop: Header=BB19_16 Depth=2
	bgeu	$s1, $a2, .LBB19_2
# %bb.21:                               #   in Loop: Header=BB19_16 Depth=2
	fst.d	$fa2, $s1, 0
	fst.d	$fa1, $a2, 0
	b	.LBB19_16
.LBB19_22:
	st.b	$zero, $sp, 23
	addi.d	$a2, $sp, 23
	move	$a0, $fp
	move	$s0, $a1
	pcaddu18i	$ra, %call36(_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 3
	ori	$a1, $zero, 1
	ori	$a2, $zero, 8
	b	.LBB19_25
	.p2align	4, , 16
.LBB19_23:                              #   in Loop: Header=BB19_25 Depth=1
	move	$a4, $zero
.LBB19_24:                              # %_ZSt10__pop_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i
                                        #   in Loop: Header=BB19_25 Depth=1
	slli.d	$a4, $a4, 3
	fstx.d	$fa0, $fp, $a4
	bge	$a2, $a3, .LBB19_35
.LBB19_25:                              # %.lr.ph.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB19_27 Depth 2
                                        #     Child Loop BB19_33 Depth 2
	move	$a4, $s0
	fld.d	$fa0, $s0, -8
	fld.d	$fa1, $fp, 0
	addi.d	$s0, $s0, -8
	sub.d	$a3, $s0, $fp
	srai.d	$a5, $a3, 3
	fst.d	$fa1, $a4, -8
	blt	$a5, $a0, .LBB19_29
# %bb.26:                               # %.lr.ph.i.i.i.i.preheader
                                        #   in Loop: Header=BB19_25 Depth=1
	move	$a6, $zero
	addi.d	$a4, $a5, -1
	srli.d	$a7, $a4, 63
	add.d	$a4, $a4, $a7
	srai.d	$a7, $a4, 1
	.p2align	4, , 16
.LBB19_27:                              # %.lr.ph.i.i.i.i
                                        #   Parent Loop BB19_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$a4, $a6, 1
	addi.d	$t0, $a4, 2
	slli.d	$t1, $t0, 3
	alsl.d	$t2, $a6, $fp, 4
	fldx.d	$fa1, $fp, $t1
	fld.d	$fa2, $t2, 8
	fcmp.clt.d	$fcc0, $fa1, $fa2
	addi.d	$a4, $a4, 1
	movcf2gr	$t1, $fcc0
	masknez	$t0, $t0, $t1
	maskeqz	$a4, $a4, $t1
	or	$a4, $a4, $t0
	slli.d	$t0, $a4, 3
	fldx.d	$fa1, $fp, $t0
	slli.d	$a6, $a6, 3
	fstx.d	$fa1, $fp, $a6
	move	$a6, $a4
	blt	$a4, $a7, .LBB19_27
# %bb.28:                               # %._crit_edge.i.i.i.i
                                        #   in Loop: Header=BB19_25 Depth=1
	andi	$a6, $a3, 8
	beqz	$a6, .LBB19_30
	b	.LBB19_32
	.p2align	4, , 16
.LBB19_29:                              #   in Loop: Header=BB19_25 Depth=1
	move	$a4, $zero
	andi	$a6, $a3, 8
	bnez	$a6, .LBB19_32
.LBB19_30:                              #   in Loop: Header=BB19_25 Depth=1
	addi.d	$a5, $a5, -2
	srai.d	$a5, $a5, 1
	bne	$a4, $a5, .LBB19_32
# %bb.31:                               # %.thread.i.i.i
                                        #   in Loop: Header=BB19_25 Depth=1
	slli.d	$a5, $a4, 1
	addi.d	$a5, $a5, 1
	slli.d	$a6, $a5, 3
	fldx.d	$fa1, $fp, $a6
	slli.d	$a4, $a4, 3
	fstx.d	$fa1, $fp, $a4
	move	$a4, $a5
	b	.LBB19_33
	.p2align	4, , 16
.LBB19_32:                              #   in Loop: Header=BB19_25 Depth=1
	beqz	$a4, .LBB19_23
	.p2align	4, , 16
.LBB19_33:                              # %.lr.ph.i.i.i.i.i
                                        #   Parent Loop BB19_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a5, $a4, -1
	srli.d	$a6, $a5, 1
	slli.d	$a7, $a6, 3
	fldx.d	$fa1, $fp, $a7
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB19_24
# %bb.34:                               #   in Loop: Header=BB19_33 Depth=2
	slli.d	$a4, $a4, 3
	fstx.d	$fa1, $fp, $a4
	move	$a4, $a6
	bltu	$a1, $a5, .LBB19_33
	b	.LBB19_23
.LBB19_35:                              # %_ZSt14__partial_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_.exit
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
	ret
.Lfunc_end19:
	.size	_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_, .Lfunc_end19-_ZSt16__introsort_loopIPdlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_,"axG",@progbits,_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_,comdat
	.weak	_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_ # -- Begin function _ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_
	.p2align	5
	.type	_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_,@function
_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_: # @_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_
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
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 16                   # 8-byte Folded Spill
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
	move	$s0, $a0
	sub.d	$a0, $a1, $a0
	ori	$a1, $zero, 129
	blt	$a0, $a1, .LBB20_2
# %bb.1:
	addi.d	$s1, $s0, 8
	ori	$s2, $zero, 8
	ori	$s3, $zero, 9
	ori	$s4, $zero, 128
	move	$s5, $s1
	move	$s6, $s0
	b	.LBB20_18
.LBB20_2:
	beq	$s0, $fp, .LBB20_25
# %bb.3:
	addi.d	$a2, $s0, 8
	beq	$a2, $fp, .LBB20_25
# %bb.4:                                # %.lr.ph.i17.preheader
	ori	$s1, $zero, 2
	ori	$s2, $zero, 8
	move	$s3, $s0
	b	.LBB20_9
	.p2align	4, , 16
.LBB20_5:                               #   in Loop: Header=BB20_9 Depth=1
	sub.d	$a2, $s3, $s0
	srai.d	$a0, $a2, 3
	blt	$a0, $s1, .LBB20_13
# %bb.6:                                #   in Loop: Header=BB20_9 Depth=1
	slli.d	$a0, $a0, 3
	sub.d	$a0, $a1, $a0
	addi.d	$a0, $a0, 16
	move	$a1, $s0
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
.LBB20_7:                               # %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i20
                                        #   in Loop: Header=BB20_9 Depth=1
	move	$a0, $s0
.LBB20_8:                               # %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i20
                                        #   in Loop: Header=BB20_9 Depth=1
	addi.d	$a2, $s3, 8
	fst.d	$fs0, $a0, 0
	beq	$a2, $fp, .LBB20_25
.LBB20_9:                               # %.lr.ph.i17
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_12 Depth 2
	move	$a1, $s3
	fld.d	$fs0, $s3, 8
	fld.d	$fa0, $s0, 0
	fcmp.cule.d	$fcc0, $fa0, $fs0
	move	$s3, $a2
	bceqz	$fcc0, .LBB20_5
# %bb.10:                               #   in Loop: Header=BB20_9 Depth=1
	fld.d	$fa0, $a1, 0
	fcmp.cule.d	$fcc0, $fa0, $fs0
	move	$a0, $s3
	bcnez	$fcc0, .LBB20_8
# %bb.11:                               # %.lr.ph.i.i24.preheader
                                        #   in Loop: Header=BB20_9 Depth=1
	move	$a0, $s3
	.p2align	4, , 16
.LBB20_12:                              # %.lr.ph.i.i24
                                        #   Parent Loop BB20_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fst.d	$fa0, $a0, 0
	fld.d	$fa0, $a0, -16
	fcmp.clt.d	$fcc0, $fs0, $fa0
	addi.d	$a0, $a0, -8
	bcnez	$fcc0, .LBB20_12
	b	.LBB20_8
.LBB20_13:                              #   in Loop: Header=BB20_9 Depth=1
	move	$a0, $s0
	bne	$a2, $s2, .LBB20_8
# %bb.14:                               #   in Loop: Header=BB20_9 Depth=1
	fst.d	$fa0, $a1, 8
	b	.LBB20_7
.LBB20_15:                              #   in Loop: Header=BB20_18 Depth=1
	fst.d	$fa0, $a0, 8
	.p2align	4, , 16
.LBB20_16:                              # %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i
                                        #   in Loop: Header=BB20_18 Depth=1
	move	$a0, $s0
.LBB20_17:                              # %_ZSt13move_backwardIPdS0_ET0_T_S2_S1_.exit.i
                                        #   in Loop: Header=BB20_18 Depth=1
	fst.d	$fs0, $a0, 0
	addi.d	$s2, $s2, 8
	addi.d	$s5, $s5, 8
	beq	$s2, $s4, .LBB20_24
.LBB20_18:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_23 Depth 2
	fldx.d	$fs0, $s0, $s2
	fld.d	$fa0, $s0, 0
	move	$a0, $s6
	fcmp.cule.d	$fcc0, $fa0, $fs0
	add.d	$s6, $s0, $s2
	bcnez	$fcc0, .LBB20_21
# %bb.19:                               #   in Loop: Header=BB20_18 Depth=1
	bltu	$s2, $s3, .LBB20_15
# %bb.20:                               #   in Loop: Header=BB20_18 Depth=1
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
	b	.LBB20_16
	.p2align	4, , 16
.LBB20_21:                              #   in Loop: Header=BB20_18 Depth=1
	fld.d	$fa0, $a0, 0
	fcmp.cule.d	$fcc0, $fa0, $fs0
	move	$a0, $s6
	bcnez	$fcc0, .LBB20_17
# %bb.22:                               # %.lr.ph.i.i.preheader
                                        #   in Loop: Header=BB20_18 Depth=1
	move	$a0, $s5
	.p2align	4, , 16
.LBB20_23:                              # %.lr.ph.i.i
                                        #   Parent Loop BB20_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fst.d	$fa0, $a0, 0
	fld.d	$fa0, $a0, -16
	fcmp.clt.d	$fcc0, $fs0, $fa0
	addi.d	$a0, $a0, -8
	bcnez	$fcc0, .LBB20_23
	b	.LBB20_17
.LBB20_24:                              # %_ZSt16__insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit
	addi.d	$a0, $s0, 128
	bne	$a0, $fp, .LBB20_27
.LBB20_25:                              # %_ZSt26__unguarded_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit
	fld.d	$fs0, $sp, 16                   # 8-byte Folded Reload
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
	ret
	.p2align	4, , 16
.LBB20_26:                              # %_ZSt25__unguarded_linear_insertIPdN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i
                                        #   in Loop: Header=BB20_27 Depth=1
	addi.d	$a0, $a0, 8
	fst.d	$fa0, $a1, 0
	beq	$a0, $fp, .LBB20_25
.LBB20_27:                              # %.lr.ph.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_29 Depth 2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	move	$a1, $a0
	bcnez	$fcc0, .LBB20_26
# %bb.28:                               # %.lr.ph.i.i12.preheader
                                        #   in Loop: Header=BB20_27 Depth=1
	move	$a1, $a0
	.p2align	4, , 16
.LBB20_29:                              # %.lr.ph.i.i12
                                        #   Parent Loop BB20_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fst.d	$fa1, $a1, 0
	fld.d	$fa1, $a1, -16
	fcmp.clt.d	$fcc0, $fa0, $fa1
	addi.d	$a1, $a1, -8
	bcnez	$fcc0, .LBB20_29
	b	.LBB20_26
.Lfunc_end20:
	.size	_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_, .Lfunc_end20-_ZSt22__final_insertion_sortIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_,"axG",@progbits,_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_,comdat
	.weak	_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_ # -- Begin function _ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_
	.p2align	5
	.type	_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_,@function
_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_: # @_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_
	.cfi_startproc
# %bb.0:
	sub.d	$a1, $a1, $a0
	srai.d	$a4, $a1, 3
	ori	$a2, $zero, 2
	bge	$a4, $a2, .LBB21_2
.LBB21_1:                               # %.loopexit
	ret
.LBB21_2:
	addi.d	$a3, $a4, -2
	srli.d	$a2, $a3, 1
	addi.d	$a4, $a4, -1
	andi	$a5, $a1, 8
	srli.d	$a1, $a4, 1
	bnez	$a5, .LBB21_16
# %bb.3:                                # %.split.preheader
	addi.d	$a3, $a3, 1
	alsl.d	$a4, $a3, $a0, 3
	alsl.d	$a5, $a2, $a0, 3
	move	$a7, $a2
	b	.LBB21_6
	.p2align	4, , 16
.LBB21_4:                               #   in Loop: Header=BB21_6 Depth=1
	move	$t0, $a7
.LBB21_5:                               # %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit
                                        #   in Loop: Header=BB21_6 Depth=1
	slli.d	$a7, $t0, 3
	fstx.d	$fa0, $a0, $a7
	addi.d	$a7, $a6, -1
	beqz	$a6, .LBB21_1
.LBB21_6:                               # %.split
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_8 Depth 2
                                        #     Child Loop BB21_12 Depth 2
	move	$a6, $a7
	slli.d	$a7, $a7, 3
	fldx.d	$fa0, $a0, $a7
	move	$a7, $a6
	bge	$a6, $a1, .LBB21_9
# %bb.7:                                # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB21_6 Depth=1
	move	$t0, $a6
	.p2align	4, , 16
.LBB21_8:                               # %.lr.ph.i
                                        #   Parent Loop BB21_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$a7, $t0, 1
	addi.d	$t1, $a7, 2
	slli.d	$t2, $t1, 3
	alsl.d	$t3, $t0, $a0, 4
	fldx.d	$fa1, $a0, $t2
	fld.d	$fa2, $t3, 8
	fcmp.clt.d	$fcc0, $fa1, $fa2
	addi.d	$a7, $a7, 1
	movcf2gr	$t2, $fcc0
	masknez	$t1, $t1, $t2
	maskeqz	$a7, $a7, $t2
	or	$a7, $a7, $t1
	slli.d	$t1, $a7, 3
	fldx.d	$fa1, $a0, $t1
	slli.d	$t0, $t0, 3
	fstx.d	$fa1, $a0, $t0
	move	$t0, $a7
	blt	$a7, $a1, .LBB21_8
.LBB21_9:                               # %._crit_edge.i
                                        #   in Loop: Header=BB21_6 Depth=1
	bne	$a7, $a2, .LBB21_11
# %bb.10:                               #   in Loop: Header=BB21_6 Depth=1
	fld.d	$fa1, $a4, 0
	fst.d	$fa1, $a5, 0
	move	$a7, $a3
.LBB21_11:                              #   in Loop: Header=BB21_6 Depth=1
	bge	$a6, $a7, .LBB21_4
	.p2align	4, , 16
.LBB21_12:                              # %.lr.ph.i.i
                                        #   Parent Loop BB21_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$t0, $a7, -1
	srli.d	$t1, $t0, 63
	add.d	$t0, $t0, $t1
	srai.d	$t0, $t0, 1
	slli.d	$t1, $t0, 3
	fldx.d	$fa1, $a0, $t1
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB21_4
# %bb.13:                               #   in Loop: Header=BB21_12 Depth=2
	slli.d	$a7, $a7, 3
	fstx.d	$fa1, $a0, $a7
	move	$a7, $t0
	blt	$a6, $t0, .LBB21_12
	b	.LBB21_5
	.p2align	4, , 16
.LBB21_14:                              #   in Loop: Header=BB21_16 Depth=1
	move	$a4, $a2
.LBB21_15:                              # %_ZSt13__adjust_heapIPdldN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us
                                        #   in Loop: Header=BB21_16 Depth=1
	slli.d	$a2, $a4, 3
	fstx.d	$fa0, $a0, $a2
	addi.d	$a2, $a3, -1
	beqz	$a3, .LBB21_1
.LBB21_16:                              # %.split.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_18 Depth 2
                                        #     Child Loop BB21_20 Depth 2
	move	$a3, $a2
	slli.d	$a2, $a2, 3
	fldx.d	$fa0, $a0, $a2
	move	$a4, $a3
	bge	$a3, $a1, .LBB21_15
# %bb.17:                               # %.lr.ph.i.us.preheader
                                        #   in Loop: Header=BB21_16 Depth=1
	move	$a2, $a3
	.p2align	4, , 16
.LBB21_18:                              # %.lr.ph.i.us
                                        #   Parent Loop BB21_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a4, $a2
	slli.d	$a2, $a2, 1
	addi.d	$a5, $a2, 2
	slli.d	$a6, $a5, 3
	alsl.d	$a7, $a4, $a0, 4
	fldx.d	$fa1, $a0, $a6
	fld.d	$fa2, $a7, 8
	fcmp.clt.d	$fcc0, $fa1, $fa2
	addi.d	$a2, $a2, 1
	movcf2gr	$a6, $fcc0
	masknez	$a5, $a5, $a6
	maskeqz	$a2, $a2, $a6
	or	$a2, $a2, $a5
	slli.d	$a5, $a2, 3
	fldx.d	$fa1, $a0, $a5
	slli.d	$a4, $a4, 3
	fstx.d	$fa1, $a0, $a4
	blt	$a2, $a1, .LBB21_18
# %bb.19:                               # %._crit_edge.i.us
                                        #   in Loop: Header=BB21_16 Depth=1
	bge	$a3, $a2, .LBB21_14
	.p2align	4, , 16
.LBB21_20:                              # %.lr.ph.i.i.us
                                        #   Parent Loop BB21_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a4, $a2, -1
	srli.d	$a5, $a4, 63
	add.d	$a4, $a4, $a5
	srai.d	$a4, $a4, 1
	slli.d	$a5, $a4, 3
	fldx.d	$fa1, $a0, $a5
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB21_14
# %bb.21:                               #   in Loop: Header=BB21_20 Depth=2
	slli.d	$a2, $a2, 3
	fstx.d	$fa1, $a0, $a2
	move	$a2, $a4
	blt	$a3, $a4, .LBB21_20
	b	.LBB21_15
.Lfunc_end21:
	.size	_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_, .Lfunc_end21-_ZSt11__make_heapIPdN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_,"axG",@progbits,_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_,comdat
	.weak	_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_ # -- Begin function _ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_
	.p2align	5
	.type	_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_,@function
_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_: # @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_
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
	move	$fp, $a0
	sub.d	$a0, $a1, $a0
	srai.d	$a0, $a0, 3
	ori	$a3, $zero, 17
	blt	$a0, $a3, .LBB22_35
# %bb.1:                                # %.lr.ph
	move	$s0, $a2
	addi.d	$s2, $fp, 8
	sub.d	$s3, $zero, $fp
	addi.w	$s4, $zero, -8
	ori	$s5, $zero, 16
	b	.LBB22_3
	.p2align	4, , 16
.LBB22_2:                               # %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_.exit
                                        #   in Loop: Header=BB22_3 Depth=1
	move	$a0, $s1
	move	$a2, $s0
	move	$a3, $zero
	pcaddu18i	$ra, %call36(_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_)
	jirl	$ra, $ra, 0
	add.d	$a0, $s3, $s1
	srai.d	$a0, $a0, 3
	move	$a1, $s1
	bge	$s5, $a0, .LBB22_35
.LBB22_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB22_16 Depth 2
                                        #       Child Loop BB22_17 Depth 3
                                        #       Child Loop BB22_19 Depth 3
	beqz	$s0, .LBB22_22
# %bb.4:                                #   in Loop: Header=BB22_3 Depth=1
	slli.d	$a0, $a0, 2
	and	$a0, $a0, $s4
	fld.d	$fa1, $fp, 8
	fldx.d	$fa2, $fp, $a0
	fld.d	$fa0, $a1, -8
	fcmp.cule.d	$fcc0, $fa2, $fa1
	add.d	$a0, $fp, $a0
	bcnez	$fcc0, .LBB22_7
# %bb.5:                                #   in Loop: Header=BB22_3 Depth=1
	fcmp.cule.d	$fcc0, $fa0, $fa2
	bcnez	$fcc0, .LBB22_9
# %bb.6:                                #   in Loop: Header=BB22_3 Depth=1
	fld.d	$fa0, $fp, 0
	fst.d	$fa2, $fp, 0
	fst.d	$fa0, $a0, 0
	b	.LBB22_15
	.p2align	4, , 16
.LBB22_7:                               #   in Loop: Header=BB22_3 Depth=1
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB22_11
# %bb.8:                                #   in Loop: Header=BB22_3 Depth=1
	fld.d	$fa0, $fp, 0
	fst.d	$fa1, $fp, 0
	fst.d	$fa0, $fp, 8
	b	.LBB22_15
	.p2align	4, , 16
.LBB22_9:                               #   in Loop: Header=BB22_3 Depth=1
	fld.d	$fa2, $fp, 0
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB22_13
# %bb.10:                               #   in Loop: Header=BB22_3 Depth=1
	fst.d	$fa0, $fp, 0
	fst.d	$fa2, $a1, -8
	b	.LBB22_15
	.p2align	4, , 16
.LBB22_11:                              #   in Loop: Header=BB22_3 Depth=1
	fld.d	$fa1, $fp, 0
	fcmp.cule.d	$fcc0, $fa0, $fa2
	bcnez	$fcc0, .LBB22_14
# %bb.12:                               #   in Loop: Header=BB22_3 Depth=1
	fst.d	$fa0, $fp, 0
	fst.d	$fa1, $a1, -8
	b	.LBB22_15
.LBB22_13:                              #   in Loop: Header=BB22_3 Depth=1
	fst.d	$fa1, $fp, 0
	fst.d	$fa2, $fp, 8
	b	.LBB22_15
.LBB22_14:                              #   in Loop: Header=BB22_3 Depth=1
	fst.d	$fa2, $fp, 0
	fst.d	$fa1, $a0, 0
	.p2align	4, , 16
.LBB22_15:                              # %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader
                                        #   in Loop: Header=BB22_3 Depth=1
	addi.d	$s0, $s0, -1
	move	$a2, $a1
	move	$a0, $s2
	.p2align	4, , 16
.LBB22_16:                              # %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i
                                        #   Parent Loop BB22_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB22_17 Depth 3
                                        #       Child Loop BB22_19 Depth 3
	fld.d	$fa0, $fp, 0
	addi.d	$s1, $a0, -8
	.p2align	4, , 16
.LBB22_17:                              #   Parent Loop BB22_3 Depth=1
                                        #     Parent Loop BB22_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa1, $a0, 0
	addi.d	$a0, $a0, 8
	fcmp.clt.d	$fcc0, $fa1, $fa0
	addi.d	$s1, $s1, 8
	bcnez	$fcc0, .LBB22_17
# %bb.18:                               # %.preheader.i.i.preheader
                                        #   in Loop: Header=BB22_16 Depth=2
	addi.d	$a3, $a0, -8
	.p2align	4, , 16
.LBB22_19:                              # %.preheader.i.i
                                        #   Parent Loop BB22_3 Depth=1
                                        #     Parent Loop BB22_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa2, $a2, -8
	fcmp.clt.d	$fcc0, $fa0, $fa2
	addi.d	$a2, $a2, -8
	bcnez	$fcc0, .LBB22_19
# %bb.20:                               #   in Loop: Header=BB22_16 Depth=2
	bgeu	$a3, $a2, .LBB22_2
# %bb.21:                               #   in Loop: Header=BB22_16 Depth=2
	fst.d	$fa2, $a3, 0
	fst.d	$fa1, $a2, 0
	b	.LBB22_16
.LBB22_22:                              # %.lr.ph.preheader.i.i
	move	$a0, $fp
	move	$s0, $a1
	move	$a2, $a1
	move	$a3, $zero
	pcaddu18i	$ra, %call36(_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 3
	ori	$a1, $zero, 1
	ori	$a2, $zero, 8
	b	.LBB22_25
	.p2align	4, , 16
.LBB22_23:                              #   in Loop: Header=BB22_25 Depth=1
	move	$a4, $zero
.LBB22_24:                              # %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i
                                        #   in Loop: Header=BB22_25 Depth=1
	slli.d	$a4, $a4, 3
	fstx.d	$fa0, $fp, $a4
	bge	$a2, $a3, .LBB22_35
.LBB22_25:                              # %.lr.ph.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB22_27 Depth 2
                                        #     Child Loop BB22_33 Depth 2
	move	$a4, $s0
	fld.d	$fa0, $s0, -8
	fld.d	$fa1, $fp, 0
	addi.d	$s0, $s0, -8
	sub.d	$a3, $s0, $fp
	srai.d	$a5, $a3, 3
	fst.d	$fa1, $a4, -8
	blt	$a5, $a0, .LBB22_29
# %bb.26:                               # %.lr.ph.i.i.i.i.preheader
                                        #   in Loop: Header=BB22_25 Depth=1
	move	$a6, $zero
	addi.d	$a4, $a5, -1
	srli.d	$a7, $a4, 63
	add.d	$a4, $a4, $a7
	srai.d	$a7, $a4, 1
	.p2align	4, , 16
.LBB22_27:                              # %.lr.ph.i.i.i.i
                                        #   Parent Loop BB22_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$a4, $a6, 1
	addi.d	$t0, $a4, 2
	slli.d	$t1, $t0, 3
	addi.d	$a4, $a4, 1
	slli.d	$t2, $a4, 3
	fldx.d	$fa1, $fp, $t1
	fldx.d	$fa2, $fp, $t2
	fcmp.clt.d	$fcc0, $fa1, $fa2
	movcf2gr	$t1, $fcc0
	masknez	$t0, $t0, $t1
	maskeqz	$a4, $a4, $t1
	or	$a4, $a4, $t0
	slli.d	$t0, $a4, 3
	fldx.d	$fa1, $fp, $t0
	slli.d	$a6, $a6, 3
	fstx.d	$fa1, $fp, $a6
	move	$a6, $a4
	blt	$a4, $a7, .LBB22_27
# %bb.28:                               # %._crit_edge.i.i.i.i
                                        #   in Loop: Header=BB22_25 Depth=1
	andi	$a6, $a3, 8
	beqz	$a6, .LBB22_30
	b	.LBB22_32
	.p2align	4, , 16
.LBB22_29:                              #   in Loop: Header=BB22_25 Depth=1
	move	$a4, $zero
	andi	$a6, $a3, 8
	bnez	$a6, .LBB22_32
.LBB22_30:                              #   in Loop: Header=BB22_25 Depth=1
	addi.d	$a5, $a5, -2
	srai.d	$a5, $a5, 1
	bne	$a4, $a5, .LBB22_32
# %bb.31:                               # %.thread.i.i.i
                                        #   in Loop: Header=BB22_25 Depth=1
	slli.d	$a5, $a4, 1
	addi.d	$a5, $a5, 1
	slli.d	$a6, $a5, 3
	fldx.d	$fa1, $fp, $a6
	slli.d	$a4, $a4, 3
	fstx.d	$fa1, $fp, $a4
	move	$a4, $a5
	b	.LBB22_33
	.p2align	4, , 16
.LBB22_32:                              #   in Loop: Header=BB22_25 Depth=1
	beqz	$a4, .LBB22_23
	.p2align	4, , 16
.LBB22_33:                              # %.lr.ph.i.i.i.i.i
                                        #   Parent Loop BB22_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a5, $a4, -1
	srli.d	$a6, $a5, 1
	slli.d	$a7, $a6, 3
	fldx.d	$fa1, $fp, $a7
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB22_24
# %bb.34:                               #   in Loop: Header=BB22_33 Depth=2
	slli.d	$a4, $a4, 3
	fstx.d	$fa1, $fp, $a4
	move	$a4, $a6
	bltu	$a1, $a5, .LBB22_33
	b	.LBB22_23
.LBB22_35:                              # %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_.exit
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
.Lfunc_end22:
	.size	_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_, .Lfunc_end22-_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_,"axG",@progbits,_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_,comdat
	.weak	_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_ # -- Begin function _ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_
	.p2align	5
	.type	_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_,@function
_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_: # @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_
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
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	st.d	$s7, $sp, 16                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 8                    # 8-byte Folded Spill
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
	move	$fp, $a1
	move	$s0, $a0
	sub.d	$a0, $a1, $a0
	ori	$a1, $zero, 129
	blt	$a0, $a1, .LBB23_7
# %bb.1:
	addi.d	$s1, $s0, 128
	beqz	$zero, .LBB23_21
.LBB23_2:                               # %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit
	bne	$fp, $s1, .LBB23_4
	b	.LBB23_20
	.p2align	4, , 16
.LBB23_3:                               # %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i
                                        #   in Loop: Header=BB23_4 Depth=1
	addi.d	$s1, $s1, 8
	fst.d	$fa0, $a0, 0
	beq	$s1, $fp, .LBB23_20
.LBB23_4:                               # %.lr.ph.i10
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB23_6 Depth 2
	fld.d	$fa0, $s1, 0
	fld.d	$fa1, $s1, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	move	$a0, $s1
	bcnez	$fcc0, .LBB23_3
# %bb.5:                                # %.lr.ph.i.i12.preheader
                                        #   in Loop: Header=BB23_4 Depth=1
	move	$a0, $s1
	.p2align	4, , 16
.LBB23_6:                               # %.lr.ph.i.i12
                                        #   Parent Loop BB23_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fst.d	$fa1, $a0, 0
	fld.d	$fa1, $a0, -16
	fcmp.clt.d	$fcc0, $fa0, $fa1
	addi.d	$a0, $a0, -8
	bcnez	$fcc0, .LBB23_6
	b	.LBB23_3
.LBB23_7:
	beq	$fp, $s0, .LBB23_20
# %bb.8:
	addi.d	$a2, $s0, 8
	beq	$a2, $fp, .LBB23_20
# %bb.9:                                # %.lr.ph.i19.preheader
	ori	$s1, $zero, 2
	ori	$s2, $zero, 8
	move	$s3, $s0
	b	.LBB23_14
	.p2align	4, , 16
.LBB23_10:                              #   in Loop: Header=BB23_14 Depth=1
	sub.d	$a2, $s3, $s0
	srai.d	$a0, $a2, 3
	blt	$a0, $s1, .LBB23_18
# %bb.11:                               #   in Loop: Header=BB23_14 Depth=1
	slli.d	$a0, $a0, 3
	sub.d	$a0, $a1, $a0
	addi.d	$a0, $a0, 16
	move	$a1, $s0
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
.LBB23_12:                              # %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_.exit.i22
                                        #   in Loop: Header=BB23_14 Depth=1
	move	$a0, $s0
.LBB23_13:                              # %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_.exit.i22
                                        #   in Loop: Header=BB23_14 Depth=1
	addi.d	$a2, $s3, 8
	fst.d	$fs0, $a0, 0
	beq	$a2, $fp, .LBB23_20
.LBB23_14:                              # %.lr.ph.i19
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB23_17 Depth 2
	move	$a1, $s3
	move	$s3, $a2
	fld.d	$fs0, $a2, 0
	fld.d	$fa0, $s0, 0
	fcmp.cule.d	$fcc0, $fa0, $fs0
	bceqz	$fcc0, .LBB23_10
# %bb.15:                               #   in Loop: Header=BB23_14 Depth=1
	fld.d	$fa0, $a1, 0
	fcmp.cule.d	$fcc0, $fa0, $fs0
	move	$a0, $s3
	bcnez	$fcc0, .LBB23_13
# %bb.16:                               # %.lr.ph.i.i26.preheader
                                        #   in Loop: Header=BB23_14 Depth=1
	move	$a0, $s3
	.p2align	4, , 16
.LBB23_17:                              # %.lr.ph.i.i26
                                        #   Parent Loop BB23_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fst.d	$fa0, $a0, 0
	fld.d	$fa0, $a0, -16
	fcmp.clt.d	$fcc0, $fs0, $fa0
	addi.d	$a0, $a0, -8
	bcnez	$fcc0, .LBB23_17
	b	.LBB23_13
.LBB23_18:                              #   in Loop: Header=BB23_14 Depth=1
	move	$a0, $s0
	bne	$a2, $s2, .LBB23_13
# %bb.19:                               #   in Loop: Header=BB23_14 Depth=1
	fst.d	$fa0, $a1, 8
	b	.LBB23_12
.LBB23_20:                              # %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
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
	ret
.LBB23_21:                              # %.lr.ph.i.preheader
	addi.d	$s2, $s0, 8
	ori	$s3, $zero, 8
	ori	$s4, $zero, 2
	ori	$s5, $zero, 128
	ori	$s6, $zero, 8
	move	$s7, $s0
	b	.LBB23_26
	.p2align	4, , 16
.LBB23_22:                              #   in Loop: Header=BB23_26 Depth=1
	sub.d	$a2, $s7, $s0
	srai.d	$a0, $a2, 3
	blt	$a0, $s4, .LBB23_30
# %bb.23:                               #   in Loop: Header=BB23_26 Depth=1
	slli.d	$a0, $a0, 3
	sub.d	$a0, $a1, $a0
	addi.d	$a0, $a0, 16
	move	$a1, $s0
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
.LBB23_24:                              # %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_.exit.i
                                        #   in Loop: Header=BB23_26 Depth=1
	move	$a0, $s0
.LBB23_25:                              # %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_.exit.i
                                        #   in Loop: Header=BB23_26 Depth=1
	fst.d	$fs0, $a0, 0
	addi.d	$s6, $s6, 8
	addi.d	$s2, $s2, 8
	beq	$s6, $s5, .LBB23_2
.LBB23_26:                              # %.lr.ph.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB23_29 Depth 2
	fldx.d	$fs0, $s0, $s6
	fld.d	$fa0, $s0, 0
	move	$a1, $s7
	fcmp.cule.d	$fcc0, $fa0, $fs0
	add.d	$s7, $s0, $s6
	bceqz	$fcc0, .LBB23_22
# %bb.27:                               #   in Loop: Header=BB23_26 Depth=1
	fld.d	$fa0, $a1, 0
	fcmp.cule.d	$fcc0, $fa0, $fs0
	move	$a0, $s7
	bcnez	$fcc0, .LBB23_25
# %bb.28:                               # %.lr.ph.i.i.preheader
                                        #   in Loop: Header=BB23_26 Depth=1
	move	$a0, $s2
	.p2align	4, , 16
.LBB23_29:                              # %.lr.ph.i.i
                                        #   Parent Loop BB23_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fst.d	$fa0, $a0, 0
	fld.d	$fa0, $a0, -16
	fcmp.clt.d	$fcc0, $fs0, $fa0
	addi.d	$a0, $a0, -8
	bcnez	$fcc0, .LBB23_29
	b	.LBB23_25
.LBB23_30:                              #   in Loop: Header=BB23_26 Depth=1
	move	$a0, $s0
	bne	$a2, $s3, .LBB23_25
# %bb.31:                               #   in Loop: Header=BB23_26 Depth=1
	fst.d	$fa0, $a1, 8
	b	.LBB23_24
.Lfunc_end23:
	.size	_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_, .Lfunc_end23-_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_,"axG",@progbits,_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_,comdat
	.weak	_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_ # -- Begin function _ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_
	.p2align	5
	.type	_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_,@function
_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_: # @_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -48
	.cfi_def_cfa_offset 48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	st.b	$a3, $sp, 15
	addi.d	$a2, $sp, 15
	pcaddu18i	$ra, %call36(_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_)
	jirl	$ra, $ra, 0
	bgeu	$s0, $fp, .LBB24_28
# %bb.1:                                # %.lr.ph
	sub.d	$a0, $s0, $s1
	srai.d	$a1, $a0, 3
	andi	$a0, $a0, 8
	ori	$a2, $zero, 3
	addi.d	$a3, $a1, -2
	blt	$a1, $a2, .LBB24_15
# %bb.2:                                # %.lr.ph.split.us.preheader
	addi.d	$a1, $a1, -1
	srli.d	$a2, $a1, 63
	add.d	$a1, $a1, $a2
	srai.d	$a1, $a1, 1
	srai.d	$a2, $a3, 1
	addi.d	$a3, $a3, 1
	alsl.d	$a4, $a3, $s1, 3
	alsl.d	$a5, $a2, $s1, 3
	ori	$a6, $zero, 1
	b	.LBB24_6
	.p2align	4, , 16
.LBB24_3:                               #   in Loop: Header=BB24_6 Depth=1
	move	$a7, $zero
.LBB24_4:                               # %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.us
                                        #   in Loop: Header=BB24_6 Depth=1
	slli.d	$a7, $a7, 3
	fstx.d	$fa0, $s1, $a7
.LBB24_5:                               #   in Loop: Header=BB24_6 Depth=1
	addi.d	$s0, $s0, 8
	bgeu	$s0, $fp, .LBB24_28
.LBB24_6:                               # %.lr.ph.split.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB24_8 Depth 2
                                        #     Child Loop BB24_13 Depth 2
	fld.d	$fa0, $s0, 0
	fld.d	$fa1, $s1, 0
	fcmp.cule.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB24_5
# %bb.7:                                # %.lr.ph.i.i.preheader.us
                                        #   in Loop: Header=BB24_6 Depth=1
	move	$a7, $zero
	fst.d	$fa1, $s0, 0
	.p2align	4, , 16
.LBB24_8:                               # %.lr.ph.i.i.us
                                        #   Parent Loop BB24_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$t0, $a7
	slli.d	$a7, $a7, 1
	addi.d	$t1, $a7, 2
	slli.d	$t2, $t1, 3
	addi.d	$a7, $a7, 1
	slli.d	$t3, $a7, 3
	fldx.d	$fa1, $s1, $t2
	fldx.d	$fa2, $s1, $t3
	fcmp.clt.d	$fcc0, $fa1, $fa2
	movcf2gr	$t2, $fcc0
	masknez	$t1, $t1, $t2
	maskeqz	$a7, $a7, $t2
	or	$a7, $a7, $t1
	slli.d	$t1, $a7, 3
	fldx.d	$fa1, $s1, $t1
	slli.d	$t0, $t0, 3
	fstx.d	$fa1, $s1, $t0
	blt	$a7, $a1, .LBB24_8
# %bb.9:                                # %._crit_edge.i.i.loopexit.us
                                        #   in Loop: Header=BB24_6 Depth=1
	bnez	$a0, .LBB24_12
# %bb.10:                               # %._crit_edge.i.i.loopexit.us
                                        #   in Loop: Header=BB24_6 Depth=1
	bne	$a7, $a2, .LBB24_12
# %bb.11:                               # %.thread.i.us
                                        #   in Loop: Header=BB24_6 Depth=1
	fld.d	$fa1, $a4, 0
	fst.d	$fa1, $a5, 0
	move	$a7, $a3
	b	.LBB24_13
	.p2align	4, , 16
.LBB24_12:                              #   in Loop: Header=BB24_6 Depth=1
	beqz	$a7, .LBB24_3
	.p2align	4, , 16
.LBB24_13:                              # %.lr.ph.i.i.i.us
                                        #   Parent Loop BB24_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$t0, $a7, -1
	srli.d	$t1, $t0, 1
	slli.d	$t2, $t1, 3
	fldx.d	$fa1, $s1, $t2
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB24_4
# %bb.14:                               #   in Loop: Header=BB24_13 Depth=2
	slli.d	$a7, $a7, 3
	fstx.d	$fa1, $s1, $a7
	move	$a7, $t1
	bltu	$a6, $t0, .LBB24_13
	b	.LBB24_3
.LBB24_15:                              # %.lr.ph.split
	bnez	$a0, .LBB24_24
# %bb.16:                               # %.lr.ph.split.split.us
	beqz	$a3, .LBB24_22
# %bb.17:                               # %.lr.ph.split.split.us.split.preheader
	fld.d	$fa0, $s1, 0
	b	.LBB24_19
	.p2align	4, , 16
.LBB24_18:                              #   in Loop: Header=BB24_19 Depth=1
	addi.d	$s0, $s0, 8
	bgeu	$s0, $fp, .LBB24_28
.LBB24_19:                              # %.lr.ph.split.split.us.split
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa1, $s0, 0
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB24_18
# %bb.20:                               # %._crit_edge.i.i.us13
                                        #   in Loop: Header=BB24_19 Depth=1
	fst.d	$fa0, $s0, 0
	fst.d	$fa1, $s1, 0
	fmov.d	$fa0, $fa1
	b	.LBB24_18
	.p2align	4, , 16
.LBB24_21:                              #   in Loop: Header=BB24_22 Depth=1
	addi.d	$s0, $s0, 8
	bgeu	$s0, $fp, .LBB24_28
.LBB24_22:                              # %.lr.ph.split.split.us.split.us
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $s0, 0
	fld.d	$fa1, $s1, 0
	fcmp.cule.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB24_21
# %bb.23:                               # %._crit_edge.i.i.us13.us
                                        #   in Loop: Header=BB24_22 Depth=1
	fst.d	$fa1, $s0, 0
	fld.d	$fa1, $s1, 8
	fcmp.cule.d	$fcc0, $fa0, $fa1
	fst.d	$fa1, $s1, 0
	movcf2gr	$a0, $fcc0
	slli.d	$a0, $a0, 3
	fstx.d	$fa0, $s1, $a0
	b	.LBB24_21
.LBB24_24:                              # %.lr.ph.split.split.preheader
	fld.d	$fa0, $s1, 0
	b	.LBB24_26
	.p2align	4, , 16
.LBB24_25:                              #   in Loop: Header=BB24_26 Depth=1
	addi.d	$s0, $s0, 8
	bgeu	$s0, $fp, .LBB24_28
.LBB24_26:                              # %.lr.ph.split.split
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa1, $s0, 0
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB24_25
# %bb.27:                               # %._crit_edge.i.i
                                        #   in Loop: Header=BB24_26 Depth=1
	fst.d	$fa0, $s0, 0
	fst.d	$fa1, $s1, 0
	fmov.d	$fa0, $fa1
	b	.LBB24_25
.LBB24_28:                              # %._crit_edge
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end24:
	.size	_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_, .Lfunc_end24-_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_,"axG",@progbits,_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_,comdat
	.weak	_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_ # -- Begin function _ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_
	.p2align	5
	.type	_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_,@function
_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_: # @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_
	.cfi_startproc
# %bb.0:
	sub.d	$a1, $a1, $a0
	srai.d	$a3, $a1, 3
	ori	$a2, $zero, 2
	bge	$a3, $a2, .LBB25_2
.LBB25_1:                               # %.loopexit
	ret
.LBB25_2:
	addi.d	$a4, $a3, -2
	srli.d	$a2, $a4, 1
	addi.d	$a3, $a3, -1
	andi	$a5, $a1, 8
	srli.d	$a1, $a3, 1
	bnez	$a5, .LBB25_16
# %bb.3:                                # %.split.preheader
	addi.d	$a3, $a4, 1
	alsl.d	$a4, $a3, $a0, 3
	alsl.d	$a5, $a2, $a0, 3
	move	$a7, $a2
	b	.LBB25_6
	.p2align	4, , 16
.LBB25_4:                               #   in Loop: Header=BB25_6 Depth=1
	move	$t0, $a7
.LBB25_5:                               # %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit
                                        #   in Loop: Header=BB25_6 Depth=1
	slli.d	$a7, $t0, 3
	fstx.d	$fa0, $a0, $a7
	addi.d	$a7, $a6, -1
	beqz	$a6, .LBB25_1
.LBB25_6:                               # %.split
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB25_8 Depth 2
                                        #     Child Loop BB25_12 Depth 2
	move	$a6, $a7
	slli.d	$a7, $a7, 3
	fldx.d	$fa0, $a0, $a7
	move	$a7, $a6
	bge	$a6, $a1, .LBB25_9
# %bb.7:                                # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB25_6 Depth=1
	move	$t0, $a6
	.p2align	4, , 16
.LBB25_8:                               # %.lr.ph.i
                                        #   Parent Loop BB25_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$a7, $t0, 1
	addi.d	$t1, $a7, 2
	slli.d	$t2, $t1, 3
	addi.d	$a7, $a7, 1
	slli.d	$t3, $a7, 3
	fldx.d	$fa1, $a0, $t2
	fldx.d	$fa2, $a0, $t3
	fcmp.clt.d	$fcc0, $fa1, $fa2
	movcf2gr	$t2, $fcc0
	masknez	$t1, $t1, $t2
	maskeqz	$a7, $a7, $t2
	or	$a7, $a7, $t1
	slli.d	$t1, $a7, 3
	fldx.d	$fa1, $a0, $t1
	slli.d	$t0, $t0, 3
	fstx.d	$fa1, $a0, $t0
	move	$t0, $a7
	blt	$a7, $a1, .LBB25_8
.LBB25_9:                               # %._crit_edge.i
                                        #   in Loop: Header=BB25_6 Depth=1
	bne	$a7, $a2, .LBB25_11
# %bb.10:                               #   in Loop: Header=BB25_6 Depth=1
	fld.d	$fa1, $a4, 0
	fst.d	$fa1, $a5, 0
	move	$a7, $a3
.LBB25_11:                              #   in Loop: Header=BB25_6 Depth=1
	bge	$a6, $a7, .LBB25_4
	.p2align	4, , 16
.LBB25_12:                              # %.lr.ph.i.i
                                        #   Parent Loop BB25_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$t0, $a7, -1
	srli.d	$t1, $t0, 63
	add.d	$t0, $t0, $t1
	srai.d	$t0, $t0, 1
	slli.d	$t1, $t0, 3
	fldx.d	$fa1, $a0, $t1
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB25_4
# %bb.13:                               #   in Loop: Header=BB25_12 Depth=2
	slli.d	$a7, $a7, 3
	fstx.d	$fa1, $a0, $a7
	move	$a7, $t0
	blt	$a6, $t0, .LBB25_12
	b	.LBB25_5
	.p2align	4, , 16
.LBB25_14:                              #   in Loop: Header=BB25_16 Depth=1
	move	$a4, $a2
.LBB25_15:                              # %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us
                                        #   in Loop: Header=BB25_16 Depth=1
	slli.d	$a2, $a4, 3
	fstx.d	$fa0, $a0, $a2
	addi.d	$a2, $a3, -1
	beqz	$a3, .LBB25_1
.LBB25_16:                              # %.split.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB25_18 Depth 2
                                        #     Child Loop BB25_20 Depth 2
	move	$a3, $a2
	slli.d	$a2, $a2, 3
	fldx.d	$fa0, $a0, $a2
	move	$a4, $a3
	bge	$a3, $a1, .LBB25_15
# %bb.17:                               # %.lr.ph.i.us.preheader
                                        #   in Loop: Header=BB25_16 Depth=1
	move	$a2, $a3
	.p2align	4, , 16
.LBB25_18:                              # %.lr.ph.i.us
                                        #   Parent Loop BB25_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a4, $a2
	slli.d	$a2, $a2, 1
	addi.d	$a5, $a2, 2
	slli.d	$a6, $a5, 3
	addi.d	$a2, $a2, 1
	slli.d	$a7, $a2, 3
	fldx.d	$fa1, $a0, $a6
	fldx.d	$fa2, $a0, $a7
	fcmp.clt.d	$fcc0, $fa1, $fa2
	movcf2gr	$a6, $fcc0
	masknez	$a5, $a5, $a6
	maskeqz	$a2, $a2, $a6
	or	$a2, $a2, $a5
	slli.d	$a5, $a2, 3
	fldx.d	$fa1, $a0, $a5
	slli.d	$a4, $a4, 3
	fstx.d	$fa1, $a0, $a4
	blt	$a2, $a1, .LBB25_18
# %bb.19:                               # %._crit_edge.i.us
                                        #   in Loop: Header=BB25_16 Depth=1
	bge	$a3, $a2, .LBB25_14
	.p2align	4, , 16
.LBB25_20:                              # %.lr.ph.i.i.us
                                        #   Parent Loop BB25_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a4, $a2, -1
	srli.d	$a5, $a4, 63
	add.d	$a4, $a4, $a5
	srai.d	$a4, $a4, 1
	slli.d	$a5, $a4, 3
	fldx.d	$fa1, $a0, $a5
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB25_14
# %bb.21:                               #   in Loop: Header=BB25_20 Depth=2
	slli.d	$a2, $a2, 3
	fstx.d	$fa1, $a0, $a2
	move	$a2, $a4
	blt	$a3, $a4, .LBB25_20
	b	.LBB25_15
.Lfunc_end25:
	.size	_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_, .Lfunc_end25-_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt5dequeIdSaIdEE18_M_fill_initializeERKd,"axG",@progbits,_ZNSt5dequeIdSaIdEE18_M_fill_initializeERKd,comdat
	.weak	_ZNSt5dequeIdSaIdEE18_M_fill_initializeERKd # -- Begin function _ZNSt5dequeIdSaIdEE18_M_fill_initializeERKd
	.p2align	5
	.type	_ZNSt5dequeIdSaIdEE18_M_fill_initializeERKd,@function
_ZNSt5dequeIdSaIdEE18_M_fill_initializeERKd: # @_ZNSt5dequeIdSaIdEE18_M_fill_initializeERKd
	.cfi_startproc
# %bb.0:
	ld.d	$a2, $a0, 40
	ld.d	$a3, $a0, 72
	bgeu	$a2, $a3, .LBB26_2
	.p2align	4, , 16
.LBB26_1:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a2, 0
	fld.d	$fa0, $a1, 0
	fst.d	$fa0, $a4, 0
	fst.d	$fa0, $a4, 8
	fst.d	$fa0, $a4, 16
	fst.d	$fa0, $a4, 24
	fst.d	$fa0, $a4, 32
	fst.d	$fa0, $a4, 40
	fst.d	$fa0, $a4, 48
	fst.d	$fa0, $a4, 56
	fst.d	$fa0, $a4, 64
	fst.d	$fa0, $a4, 72
	fst.d	$fa0, $a4, 80
	fst.d	$fa0, $a4, 88
	fst.d	$fa0, $a4, 96
	fst.d	$fa0, $a4, 104
	fst.d	$fa0, $a4, 112
	fst.d	$fa0, $a4, 120
	fst.d	$fa0, $a4, 128
	fst.d	$fa0, $a4, 136
	fst.d	$fa0, $a4, 144
	fst.d	$fa0, $a4, 152
	fst.d	$fa0, $a4, 160
	fst.d	$fa0, $a4, 168
	fst.d	$fa0, $a4, 176
	fst.d	$fa0, $a4, 184
	fst.d	$fa0, $a4, 192
	fst.d	$fa0, $a4, 200
	fst.d	$fa0, $a4, 208
	fst.d	$fa0, $a4, 216
	fst.d	$fa0, $a4, 224
	fst.d	$fa0, $a4, 232
	fst.d	$fa0, $a4, 240
	fst.d	$fa0, $a4, 248
	fst.d	$fa0, $a4, 256
	fst.d	$fa0, $a4, 264
	fst.d	$fa0, $a4, 272
	fst.d	$fa0, $a4, 280
	fst.d	$fa0, $a4, 288
	fst.d	$fa0, $a4, 296
	fst.d	$fa0, $a4, 304
	fst.d	$fa0, $a4, 312
	fst.d	$fa0, $a4, 320
	fst.d	$fa0, $a4, 328
	fst.d	$fa0, $a4, 336
	fst.d	$fa0, $a4, 344
	fst.d	$fa0, $a4, 352
	fst.d	$fa0, $a4, 360
	fst.d	$fa0, $a4, 368
	fst.d	$fa0, $a4, 376
	fst.d	$fa0, $a4, 384
	fst.d	$fa0, $a4, 392
	fst.d	$fa0, $a4, 400
	fst.d	$fa0, $a4, 408
	fst.d	$fa0, $a4, 416
	fst.d	$fa0, $a4, 424
	fst.d	$fa0, $a4, 432
	fst.d	$fa0, $a4, 440
	fst.d	$fa0, $a4, 448
	fst.d	$fa0, $a4, 456
	fst.d	$fa0, $a4, 464
	fst.d	$fa0, $a4, 472
	fst.d	$fa0, $a4, 480
	fst.d	$fa0, $a4, 488
	fst.d	$fa0, $a4, 496
	addi.d	$a2, $a2, 8
	fst.d	$fa0, $a4, 504
	bltu	$a2, $a3, .LBB26_1
.LBB26_2:                               # %._crit_edge
	ld.d	$a4, $a0, 56
	ld.d	$a0, $a0, 48
	beq	$a4, $a0, .LBB26_9
# %bb.3:                                # %.lr.ph.i.i.i.i.i.i11.preheader
	fld.d	$fa0, $a1, 0
	sub.d	$a1, $a0, $a4
	addi.d	$a1, $a1, -8
	ori	$a2, $zero, 24
	bgeu	$a1, $a2, .LBB26_5
# %bb.4:
	move	$a1, $a4
	b	.LBB26_8
.LBB26_5:                               # %vector.ph
	srli.d	$a1, $a1, 3
	addi.d	$a2, $a1, 1
	bstrpick.d	$a1, $a2, 61, 2
	slli.d	$a3, $a1, 2
	slli.d	$a1, $a1, 5
	add.d	$a1, $a4, $a1
	vreplvei.d	$vr1, $vr0, 0
	addi.d	$a4, $a4, 16
	move	$a5, $a3
	.p2align	4, , 16
.LBB26_6:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vst	$vr1, $a4, -16
	vst	$vr1, $a4, 0
	addi.d	$a5, $a5, -4
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB26_6
# %bb.7:                                # %middle.block
	beq	$a2, $a3, .LBB26_9
	.p2align	4, , 16
.LBB26_8:                               # %.lr.ph.i.i.i.i.i.i11
                                        # =>This Inner Loop Header: Depth=1
	fst.d	$fa0, $a1, 0
	addi.d	$a1, $a1, 8
	bne	$a1, $a0, .LBB26_8
.LBB26_9:                               # %_ZSt22__uninitialized_fill_aIPdddEvT_S1_RKT0_RSaIT1_E.exit14
	ret
.Lfunc_end26:
	.size	_ZNSt5dequeIdSaIdEE18_M_fill_initializeERKd, .Lfunc_end26-_ZNSt5dequeIdSaIdEE18_M_fill_initializeERKd
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt11_Deque_baseIdSaIdEED2Ev,"axG",@progbits,_ZNSt11_Deque_baseIdSaIdEED2Ev,comdat
	.weak	_ZNSt11_Deque_baseIdSaIdEED2Ev  # -- Begin function _ZNSt11_Deque_baseIdSaIdEED2Ev
	.p2align	5
	.type	_ZNSt11_Deque_baseIdSaIdEED2Ev,@function
_ZNSt11_Deque_baseIdSaIdEED2Ev:         # @_ZNSt11_Deque_baseIdSaIdEED2Ev
	.cfi_startproc
# %bb.0:
	ld.d	$a2, $a0, 0
	beqz	$a2, .LBB27_6
# %bb.1:
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
	ld.d	$fp, $a0, 72
	ld.d	$a1, $a0, 40
	addi.d	$a3, $fp, 8
	bgeu	$a1, $a3, .LBB27_5
# %bb.2:                                # %.lr.ph.i.preheader
	move	$s0, $a0
	addi.d	$a1, $a1, -8
	.p2align	4, , 16
.LBB27_3:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a1, 8
	addi.d	$s1, $a1, 8
	ori	$a1, $zero, 512
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a1, $s1
	bltu	$s1, $fp, .LBB27_3
# %bb.4:                                # %_ZNSt11_Deque_baseIdSaIdEE16_M_destroy_nodesEPPdS3_.exit.loopexit
	move	$a0, $s0
	ld.d	$a2, $s0, 0
.LBB27_5:                               # %_ZNSt11_Deque_baseIdSaIdEE16_M_destroy_nodesEPPdS3_.exit
	ld.d	$a0, $a0, 8
	slli.d	$a1, $a0, 3
	move	$a0, $a2
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB27_6:
	ret
.Lfunc_end27:
	.size	_ZNSt11_Deque_baseIdSaIdEED2Ev, .Lfunc_end27-_ZNSt11_Deque_baseIdSaIdEED2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt11_Deque_baseIdSaIdEE17_M_initialize_mapEm,"axG",@progbits,_ZNSt11_Deque_baseIdSaIdEE17_M_initialize_mapEm,comdat
	.weak	_ZNSt11_Deque_baseIdSaIdEE17_M_initialize_mapEm # -- Begin function _ZNSt11_Deque_baseIdSaIdEE17_M_initialize_mapEm
	.p2align	5
	.type	_ZNSt11_Deque_baseIdSaIdEE17_M_initialize_mapEm,@function
_ZNSt11_Deque_baseIdSaIdEE17_M_initialize_mapEm: # @_ZNSt11_Deque_baseIdSaIdEE17_M_initialize_mapEm
.Lfunc_begin8:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception8
# %bb.0:                                # %_ZNSt11_Deque_baseIdSaIdEE15_M_allocate_mapEm.exit
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
	move	$s0, $a1
	move	$fp, $a0
	srli.d	$a0, $a1, 6
	addi.d	$s2, $a0, 1
	ori	$a1, $zero, 5
	sltu	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	addi.d	$s1, $a0, 3
	st.d	$s1, $fp, 8
	slli.d	$a0, $s1, 3
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 0
	sub.d	$a1, $s1, $s2
	slli.d	$a1, $a1, 2
	bstrins.d	$a1, $zero, 2, 0
	add.d	$s1, $a0, $a1
	alsl.d	$s3, $s2, $s1, 3
	move	$s2, $s1
	.p2align	4, , 16
.LBB28_1:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
.Ltmp67:                                # EH_LABEL
	ori	$a0, $zero, 512
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp68:                                # EH_LABEL
# %bb.2:                                # %_ZNSt11_Deque_baseIdSaIdEE16_M_allocate_nodeEv.exit.i
                                        #   in Loop: Header=BB28_1 Depth=1
	st.d	$a0, $s2, 0
	addi.d	$s2, $s2, 8
	bltu	$s2, $s3, .LBB28_1
# %bb.3:                                # %_ZNSt11_Deque_baseIdSaIdEE15_M_create_nodesEPPdS3_.exit
	ld.d	$a0, $s1, 0
	st.d	$s1, $fp, 40
	addi.d	$a1, $a0, 512
	st.d	$a1, $fp, 32
	ld.d	$a1, $s3, -8
	st.d	$a0, $fp, 24
	addi.d	$a2, $s3, -8
	st.d	$a2, $fp, 72
	st.d	$a1, $fp, 56
	addi.d	$a2, $a1, 512
	st.d	$a2, $fp, 64
	st.d	$a0, $fp, 16
	andi	$a0, $s0, 63
	alsl.d	$a0, $a0, $a1, 3
	st.d	$a0, $fp, 48
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB28_4:
.Ltmp69:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_begin_catch)
	jirl	$ra, $ra, 0
	bgeu	$s1, $s2, .LBB28_6
	.p2align	4, , 16
.LBB28_5:                               # %.lr.ph.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 0
	ori	$a1, $zero, 512
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	addi.d	$s1, $s1, 8
	bltu	$s1, $s2, .LBB28_5
.LBB28_6:                               # %_ZNSt11_Deque_baseIdSaIdEE16_M_destroy_nodesEPPdS3_.exit.i
.Ltmp70:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_rethrow)
	jirl	$ra, $ra, 0
.Ltmp71:                                # EH_LABEL
# %bb.7:
.LBB28_8:
.Ltmp72:                                # EH_LABEL
	move	$s0, $a0
.Ltmp73:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_end_catch)
	jirl	$ra, $ra, 0
.Ltmp74:                                # EH_LABEL
# %bb.9:                                # %.body
	move	$a0, $s0
	pcaddu18i	$ra, %call36(__cxa_begin_catch)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 8
	ld.d	$a0, $fp, 0
	slli.d	$a1, $a1, 3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	vrepli.b	$vr0, 0
	vst	$vr0, $fp, 0
.Ltmp76:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_rethrow)
	jirl	$ra, $ra, 0
.Ltmp77:                                # EH_LABEL
# %bb.10:
.LBB28_11:
.Ltmp78:                                # EH_LABEL
	move	$fp, $a0
.Ltmp79:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_end_catch)
	jirl	$ra, $ra, 0
.Ltmp80:                                # EH_LABEL
# %bb.12:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB28_13:
.Ltmp81:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB28_14:
.Ltmp75:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end28:
	.size	_ZNSt11_Deque_baseIdSaIdEE17_M_initialize_mapEm, .Lfunc_end28-_ZNSt11_Deque_baseIdSaIdEE17_M_initialize_mapEm
	.cfi_endproc
	.section	.gcc_except_table._ZNSt11_Deque_baseIdSaIdEE17_M_initialize_mapEm,"aG",@progbits,_ZNSt11_Deque_baseIdSaIdEE17_M_initialize_mapEm,comdat
	.p2align	2, 0x0
GCC_except_table28:
.Lexception8:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase3-.Lttbaseref3
.Lttbaseref3:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end8-.Lcst_begin8
.Lcst_begin8:
	.uleb128 .Lfunc_begin8-.Lfunc_begin8    # >> Call Site 1 <<
	.uleb128 .Ltmp67-.Lfunc_begin8          #   Call between .Lfunc_begin8 and .Ltmp67
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp67-.Lfunc_begin8          # >> Call Site 2 <<
	.uleb128 .Ltmp68-.Ltmp67                #   Call between .Ltmp67 and .Ltmp68
	.uleb128 .Ltmp69-.Lfunc_begin8          #     jumps to .Ltmp69
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp68-.Lfunc_begin8          # >> Call Site 3 <<
	.uleb128 .Ltmp70-.Ltmp68                #   Call between .Ltmp68 and .Ltmp70
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp70-.Lfunc_begin8          # >> Call Site 4 <<
	.uleb128 .Ltmp71-.Ltmp70                #   Call between .Ltmp70 and .Ltmp71
	.uleb128 .Ltmp72-.Lfunc_begin8          #     jumps to .Ltmp72
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp73-.Lfunc_begin8          # >> Call Site 5 <<
	.uleb128 .Ltmp74-.Ltmp73                #   Call between .Ltmp73 and .Ltmp74
	.uleb128 .Ltmp75-.Lfunc_begin8          #     jumps to .Ltmp75
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp74-.Lfunc_begin8          # >> Call Site 6 <<
	.uleb128 .Ltmp76-.Ltmp74                #   Call between .Ltmp74 and .Ltmp76
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp76-.Lfunc_begin8          # >> Call Site 7 <<
	.uleb128 .Ltmp77-.Ltmp76                #   Call between .Ltmp76 and .Ltmp77
	.uleb128 .Ltmp78-.Lfunc_begin8          #     jumps to .Ltmp78
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp79-.Lfunc_begin8          # >> Call Site 8 <<
	.uleb128 .Ltmp80-.Ltmp79                #   Call between .Ltmp79 and .Ltmp80
	.uleb128 .Ltmp81-.Lfunc_begin8          #     jumps to .Ltmp81
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp80-.Lfunc_begin8          # >> Call Site 9 <<
	.uleb128 .Lfunc_end28-.Ltmp80           #   Call between .Ltmp80 and .Lfunc_end28
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end8:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase3:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZSt16__introsort_loopISt15_Deque_iteratorIdRdPdElN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_T0_T1_,"axG",@progbits,_ZSt16__introsort_loopISt15_Deque_iteratorIdRdPdElN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_T0_T1_,comdat
	.weak	_ZSt16__introsort_loopISt15_Deque_iteratorIdRdPdElN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_T0_T1_ # -- Begin function _ZSt16__introsort_loopISt15_Deque_iteratorIdRdPdElN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_T0_T1_
	.p2align	5
	.type	_ZSt16__introsort_loopISt15_Deque_iteratorIdRdPdElN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_T0_T1_,@function
_ZSt16__introsort_loopISt15_Deque_iteratorIdRdPdElN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_T0_T1_: # @_ZSt16__introsort_loopISt15_Deque_iteratorIdRdPdElN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_T0_T1_
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -320
	.cfi_def_cfa_offset 320
	st.d	$ra, $sp, 312                   # 8-byte Folded Spill
	st.d	$fp, $sp, 304                   # 8-byte Folded Spill
	st.d	$s0, $sp, 296                   # 8-byte Folded Spill
	st.d	$s1, $sp, 288                   # 8-byte Folded Spill
	st.d	$s2, $sp, 280                   # 8-byte Folded Spill
	st.d	$s3, $sp, 272                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	move	$fp, $a1
	move	$s0, $a0
	addi.d	$s1, $a2, -1
	ori	$s2, $zero, 17
	addi.w	$s3, $zero, -1
	.p2align	4, , 16
.LBB29_1:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 24
	ld.d	$a2, $s0, 24
	sub.d	$a1, $a0, $a2
	srli.d	$a1, $a1, 3
	sltu	$a3, $zero, $a0
	sub.d	$a4, $a1, $a3
	ld.d	$a3, $fp, 0
	ld.d	$a1, $fp, 8
	slli.d	$a6, $a4, 6
	ld.d	$a4, $s0, 16
	ld.d	$a5, $s0, 0
	sub.d	$a7, $a3, $a1
	srai.d	$a7, $a7, 3
	add.d	$a6, $a6, $a7
	sub.d	$a7, $a4, $a5
	srai.d	$a7, $a7, 3
	add.d	$a6, $a6, $a7
	blt	$a6, $s2, .LBB29_5
# %bb.2:                                #   in Loop: Header=BB29_1 Depth=1
	beq	$s1, $s3, .LBB29_4
# %bb.3:                                #   in Loop: Header=BB29_1 Depth=1
	ld.d	$a6, $s0, 8
	st.d	$a5, $sp, 112
	st.d	$a6, $sp, 120
	st.d	$a4, $sp, 128
	ld.d	$a4, $fp, 16
	st.d	$a2, $sp, 136
	st.d	$a3, $sp, 80
	st.d	$a1, $sp, 88
	st.d	$a4, $sp, 96
	st.d	$a0, $sp, 104
	addi.d	$a0, $sp, 144
	addi.d	$a1, $sp, 112
	addi.d	$a2, $sp, 80
	move	$a3, $zero
	pcaddu18i	$ra, %call36(_ZSt27__unguarded_partition_pivotISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEET_S7_S7_T0_)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 144
	vld	$vr1, $sp, 160
	vld	$vr2, $fp, 0
	vld	$vr3, $fp, 16
	vst	$vr0, $sp, 48
	vst	$vr1, $sp, 64
	vst	$vr2, $sp, 16
	vst	$vr3, $sp, 32
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 16
	move	$a2, $s1
	move	$a3, $zero
	pcaddu18i	$ra, %call36(_ZSt16__introsort_loopISt15_Deque_iteratorIdRdPdElN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_T0_T1_)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 160
	vld	$vr1, $sp, 144
	vst	$vr0, $fp, 16
	vst	$vr1, $fp, 0
	addi.d	$s1, $s1, -1
	b	.LBB29_1
.LBB29_4:
	ld.d	$a6, $s0, 8
	st.d	$a5, $sp, 240
	st.d	$a6, $sp, 248
	st.d	$a4, $sp, 256
	ld.d	$a4, $fp, 16
	st.d	$a2, $sp, 264
	st.d	$a3, $sp, 208
	st.d	$a1, $sp, 216
	st.d	$a4, $sp, 224
	st.d	$a0, $sp, 232
	st.d	$a3, $sp, 176
	st.d	$a1, $sp, 184
	st.d	$a4, $sp, 192
	st.d	$a0, $sp, 200
	addi.d	$a0, $sp, 240
	addi.d	$a1, $sp, 208
	addi.d	$a2, $sp, 176
	move	$a3, $zero
	pcaddu18i	$ra, %call36(_ZSt14__partial_sortISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_S7_T0_)
	jirl	$ra, $ra, 0
.LBB29_5:                               # %.loopexit
	ld.d	$s3, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 304                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 312                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 320
	ret
.Lfunc_end29:
	.size	_ZSt16__introsort_loopISt15_Deque_iteratorIdRdPdElN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_T0_T1_, .Lfunc_end29-_ZSt16__introsort_loopISt15_Deque_iteratorIdRdPdElN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_T0_T1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt22__final_insertion_sortISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_T0_,"axG",@progbits,_ZSt22__final_insertion_sortISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_T0_,comdat
	.weak	_ZSt22__final_insertion_sortISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_T0_ # -- Begin function _ZSt22__final_insertion_sortISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_T0_
	.p2align	5
	.type	_ZSt22__final_insertion_sortISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_T0_,@function
_ZSt22__final_insertion_sortISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_T0_: # @_ZSt22__final_insertion_sortISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_T0_
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -176
	.cfi_def_cfa_offset 176
	st.d	$ra, $sp, 168                   # 8-byte Folded Spill
	st.d	$fp, $sp, 160                   # 8-byte Folded Spill
	st.d	$s0, $sp, 152                   # 8-byte Folded Spill
	st.d	$s1, $sp, 144                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	move	$fp, $a1
	move	$s0, $a0
	ld.d	$a1, $a1, 24
	ld.d	$a0, $a0, 24
	sub.d	$a2, $a1, $a0
	srli.d	$a2, $a2, 3
	sltu	$a3, $zero, $a1
	sub.d	$a2, $a2, $a3
	ld.d	$a3, $fp, 0
	ld.d	$a4, $fp, 8
	slli.d	$a6, $a2, 6
	ld.d	$a5, $s0, 16
	ld.d	$a2, $s0, 0
	sub.d	$a7, $a3, $a4
	srai.d	$a7, $a7, 3
	add.d	$a6, $a6, $a7
	sub.d	$a7, $a5, $a2
	srai.d	$a7, $a7, 3
	add.d	$a6, $a6, $a7
	ori	$a7, $zero, 17
	blt	$a6, $a7, .LBB30_4
# %bb.1:
	ld.d	$a1, $s0, 8
	st.d	$a2, $sp, 112
	st.d	$a1, $sp, 120
	st.d	$a5, $sp, 128
	st.d	$a0, $sp, 136
	st.d	$a1, $sp, 88
	st.d	$a5, $sp, 96
	st.d	$a0, $sp, 104
	sub.d	$a1, $a2, $a1
	srai.d	$a3, $a1, 3
	addi.w	$s1, $zero, -16
	addi.d	$a1, $a3, 16
	blt	$a3, $s1, .LBB30_5
# %bb.2:
	ori	$a3, $zero, 63
	bltu	$a3, $a1, .LBB30_6
# %bb.3:
	addi.d	$a0, $a2, 128
	b	.LBB30_8
.LBB30_4:
	ld.d	$a6, $s0, 8
	st.d	$a2, $sp, 48
	st.d	$a6, $sp, 56
	st.d	$a5, $sp, 64
	ld.d	$a2, $fp, 16
	st.d	$a0, $sp, 72
	st.d	$a3, $sp, 16
	st.d	$a4, $sp, 24
	st.d	$a2, $sp, 32
	st.d	$a1, $sp, 40
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 16
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZSt16__insertion_sortISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_T0_)
	jirl	$ra, $ra, 0
	b	.LBB30_25
.LBB30_5:
	srai.d	$a2, $a1, 6
	b	.LBB30_7
.LBB30_6:
	srli.d	$a2, $a1, 6
.LBB30_7:
	slli.d	$a3, $a2, 3
	ldx.d	$a3, $a0, $a3
	alsl.d	$a0, $a2, $a0, 3
	st.d	$a0, $sp, 104
	st.d	$a3, $sp, 88
	addi.d	$a0, $a3, 512
	st.d	$a0, $sp, 96
	slli.d	$a0, $a2, 6
	sub.d	$a0, $a1, $a0
	alsl.d	$a0, $a0, $a3, 3
.LBB30_8:                               # %_ZStplRKSt15_Deque_iteratorIdRdPdEl.exit
	st.d	$a0, $sp, 80
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 80
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZSt16__insertion_sortISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_T0_)
	jirl	$ra, $ra, 0
	ld.d	$a4, $s0, 0
	ld.d	$a1, $s0, 8
	ld.d	$a0, $s0, 24
	sub.d	$a2, $a4, $a1
	srai.d	$a2, $a2, 3
	addi.d	$a3, $a2, 16
	blt	$a2, $s1, .LBB30_11
# %bb.9:
	ori	$a2, $zero, 63
	bltu	$a2, $a3, .LBB30_12
# %bb.10:
	ld.d	$a2, $s0, 16
	addi.d	$a3, $a4, 128
	ld.d	$a4, $fp, 0
	bne	$a3, $a4, .LBB30_16
	b	.LBB30_25
.LBB30_11:
	srai.d	$a4, $a3, 6
	b	.LBB30_13
.LBB30_12:
	srli.d	$a4, $a3, 6
.LBB30_13:
	slli.d	$a1, $a4, 3
	ldx.d	$a1, $a0, $a1
	alsl.d	$a0, $a4, $a0, 3
	addi.d	$a2, $a1, 512
	slli.d	$a4, $a4, 6
	sub.d	$a3, $a3, $a4
	alsl.d	$a3, $a3, $a1, 3
	ld.d	$a4, $fp, 0
	bne	$a3, $a4, .LBB30_16
	b	.LBB30_25
	.p2align	4, , 16
.LBB30_14:                              # %_ZSt25__unguarded_linear_insertISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i
                                        #   in Loop: Header=BB30_16 Depth=1
	addi.d	$a3, $a3, 8
	fst.d	$fa0, $a7, 0
	beq	$a3, $a2, .LBB30_24
# %bb.15:                               # %_ZNSt15_Deque_iteratorIdRdPdEppEv.exit.i
                                        #   in Loop: Header=BB30_16 Depth=1
	beq	$a3, $a4, .LBB30_25
.LBB30_16:                              # %.lr.ph.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB30_22 Depth 2
	move	$a5, $a1
	move	$a6, $a0
	move	$t0, $a3
	bne	$a3, $a1, .LBB30_18
# %bb.17:                               #   in Loop: Header=BB30_16 Depth=1
	ld.d	$a5, $a0, -8
	addi.d	$a6, $a0, -8
	addi.d	$t0, $a5, 512
.LBB30_18:                              # %_ZNSt15_Deque_iteratorIdRdPdEmmEv.exit.i.i
                                        #   in Loop: Header=BB30_16 Depth=1
	fld.d	$fa0, $a3, 0
	fld.d	$fa1, $t0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	move	$a7, $a3
	bcnez	$fcc0, .LBB30_14
# %bb.19:                               # %.lr.ph.i.i.preheader
                                        #   in Loop: Header=BB30_16 Depth=1
	addi.d	$t1, $t0, -8
	move	$t0, $a3
	b	.LBB30_22
	.p2align	4, , 16
.LBB30_20:                              #   in Loop: Header=BB30_22 Depth=2
	ld.d	$a5, $a6, -8
	addi.d	$a6, $a6, -8
	addi.d	$t0, $a5, 512
.LBB30_21:                              # %_ZNSt15_Deque_iteratorIdRdPdEmmEv.exit1.i.i
                                        #   in Loop: Header=BB30_22 Depth=2
	fld.d	$fa1, $t0, -8
	fcmp.clt.d	$fcc0, $fa0, $fa1
	addi.d	$t1, $t0, -8
	move	$t0, $a7
	bceqz	$fcc0, .LBB30_14
.LBB30_22:                              # %.lr.ph.i.i
                                        #   Parent Loop BB30_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a7, $t1
	fst.d	$fa1, $t0, 0
	beq	$t1, $a5, .LBB30_20
# %bb.23:                               #   in Loop: Header=BB30_22 Depth=2
	move	$t0, $a7
	b	.LBB30_21
	.p2align	4, , 16
.LBB30_24:                              #   in Loop: Header=BB30_16 Depth=1
	ld.d	$a1, $a0, 8
	addi.d	$a0, $a0, 8
	addi.d	$a2, $a1, 512
	move	$a3, $a1
	bne	$a3, $a4, .LBB30_16
.LBB30_25:                              # %_ZSt26__unguarded_insertion_sortISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_T0_.exit
	ld.d	$s1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 168                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 176
	ret
.Lfunc_end30:
	.size	_ZSt22__final_insertion_sortISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_T0_, .Lfunc_end30-_ZSt22__final_insertion_sortISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_T0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt14__partial_sortISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_S7_T0_,"axG",@progbits,_ZSt14__partial_sortISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_S7_T0_,comdat
	.weak	_ZSt14__partial_sortISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_S7_T0_ # -- Begin function _ZSt14__partial_sortISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_S7_T0_
	.p2align	5
	.type	_ZSt14__partial_sortISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_S7_T0_,@function
_ZSt14__partial_sortISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_S7_T0_: # @_ZSt14__partial_sortISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_S7_T0_
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -256
	.cfi_def_cfa_offset 256
	st.d	$ra, $sp, 248                   # 8-byte Folded Spill
	st.d	$fp, $sp, 240                   # 8-byte Folded Spill
	st.d	$s0, $sp, 232                   # 8-byte Folded Spill
	st.d	$s1, $sp, 224                   # 8-byte Folded Spill
	st.d	$s2, $sp, 216                   # 8-byte Folded Spill
	st.d	$s3, $sp, 208                   # 8-byte Folded Spill
	st.d	$s4, $sp, 200                   # 8-byte Folded Spill
	st.d	$s5, $sp, 192                   # 8-byte Folded Spill
	st.d	$s6, $sp, 184                   # 8-byte Folded Spill
	st.d	$s7, $sp, 176                   # 8-byte Folded Spill
	st.d	$s8, $sp, 168                   # 8-byte Folded Spill
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
	vld	$vr0, $a0, 0
	vld	$vr1, $a0, 16
	move	$s0, $a1
	vst	$vr0, $sp, 96
	vst	$vr1, $sp, 112
	vld	$vr0, $a1, 0
	vld	$vr1, $a1, 16
	vld	$vr2, $a2, 0
	vld	$vr3, $a2, 16
	vst	$vr0, $sp, 64
	vst	$vr1, $sp, 80
	vst	$vr2, $sp, 32
	vst	$vr3, $sp, 48
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 64
	addi.d	$a2, $sp, 32
	move	$a3, $zero
	pcaddu18i	$ra, %call36(_ZSt13__heap_selectISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_S7_T0_)
	jirl	$ra, $ra, 0
	ld.d	$s1, $fp, 0
	ld.d	$s2, $fp, 16
	ld.d	$s3, $fp, 24
	ld.d	$a0, $s0, 0
	ld.d	$s5, $s0, 24
	ld.d	$s4, $s0, 8
	sub.d	$a1, $s2, $s1
	srai.d	$s0, $a1, 3
	sub.d	$a1, $s5, $s3
	srai.d	$a1, $a1, 3
	sltu	$a2, $zero, $s5
	sub.d	$a2, $a1, $a2
	slli.d	$a2, $a2, 6
	sub.d	$a3, $a0, $s4
	srai.d	$a3, $a3, 3
	add.d	$a3, $a3, $s0
	add.d	$a2, $a3, $a2
	ori	$a3, $zero, 2
	blt	$a2, $a3, .LBB31_6
# %bb.1:                                # %.lr.ph.preheader
	vld	$vr0, $fp, 0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	ori	$fp, $zero, 1
	b	.LBB31_4
	.p2align	4, , 16
.LBB31_2:                               #   in Loop: Header=BB31_4 Depth=1
	ld.d	$s4, $s5, -8
	addi.d	$s5, $s5, -8
	sub.d	$a0, $s5, $s3
	srai.d	$s6, $a0, 3
	addi.d	$a0, $s4, 512
	move	$a1, $s6
.LBB31_3:                               # %_ZNSt15_Deque_iteratorIdRdPdEmmEv.exit.i
                                        #   in Loop: Header=BB31_4 Depth=1
	fld.d	$fa1, $s1, 0
	addi.d	$s7, $a0, -8
	fld.d	$fa0, $a0, -8
	fst.d	$fa1, $a0, -8
	vld	$vr1, $sp, 16                   # 16-byte Folded Reload
	vst	$vr1, $sp, 128
	st.d	$s2, $sp, 144
	st.d	$s3, $sp, 152
	sltu	$s8, $zero, $s5
	sub.d	$a0, $a1, $s8
	slli.d	$a0, $a0, 6
	sub.d	$a1, $s7, $s4
	srai.d	$a1, $a1, 3
	add.d	$a0, $a0, $s0
	add.d	$a2, $a0, $a1
	addi.d	$a0, $sp, 128
	move	$a1, $zero
	move	$a3, $zero
	pcaddu18i	$ra, %call36(_ZSt13__adjust_heapISt15_Deque_iteratorIdRdPdEldN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S8_T1_T2_)
	jirl	$ra, $ra, 0
	sub.d	$a0, $s6, $s8
	slli.d	$a0, $a0, 6
	sub.d	$a1, $s7, $s4
	srai.d	$a1, $a1, 3
	add.d	$a1, $a1, $s0
	add.d	$a2, $a1, $a0
	move	$a1, $s6
	move	$a0, $s7
	bge	$fp, $a2, .LBB31_6
.LBB31_4:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	beq	$a0, $s4, .LBB31_2
# %bb.5:                                # %.lr.ph._ZNSt15_Deque_iteratorIdRdPdEmmEv.exit.i_crit_edge
                                        #   in Loop: Header=BB31_4 Depth=1
	sub.d	$a2, $s5, $s3
	srai.d	$s6, $a2, 3
	b	.LBB31_3
.LBB31_6:                               # %_ZSt11__sort_heapISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_RT0_.exit
	ld.d	$s8, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 240                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 248                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 256
	ret
.Lfunc_end31:
	.size	_ZSt14__partial_sortISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_S7_T0_, .Lfunc_end31-_ZSt14__partial_sortISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_S7_T0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt27__unguarded_partition_pivotISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEET_S7_S7_T0_,"axG",@progbits,_ZSt27__unguarded_partition_pivotISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEET_S7_S7_T0_,comdat
	.weak	_ZSt27__unguarded_partition_pivotISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEET_S7_S7_T0_ # -- Begin function _ZSt27__unguarded_partition_pivotISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEET_S7_S7_T0_
	.p2align	5
	.type	_ZSt27__unguarded_partition_pivotISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEET_S7_S7_T0_,@function
_ZSt27__unguarded_partition_pivotISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEET_S7_S7_T0_: # @_ZSt27__unguarded_partition_pivotISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEET_S7_S7_T0_
	.cfi_startproc
# %bb.0:
	ld.d	$a3, $a2, 24
	ld.d	$a4, $a1, 24
	sub.d	$a5, $a3, $a4
	srli.d	$a5, $a5, 3
	sltu	$a6, $zero, $a3
	sub.d	$a5, $a5, $a6
	ld.d	$a7, $a2, 0
	ld.d	$a2, $a2, 8
	slli.d	$t0, $a5, 6
	ld.d	$a6, $a1, 16
	ld.d	$a5, $a1, 0
	sub.d	$t1, $a7, $a2
	srai.d	$t4, $t1, 3
	add.d	$t0, $t0, $t4
	sub.d	$t1, $a6, $a5
	srai.d	$t1, $t1, 3
	add.d	$t0, $t0, $t1
	ld.d	$a1, $a1, 8
	srli.d	$t1, $t0, 63
	add.d	$t0, $t0, $t1
	srai.d	$t2, $t0, 1
	sub.d	$t0, $a5, $a1
	srai.d	$t0, $t0, 3
	add.d	$t1, $t2, $t0
	bltz	$t1, .LBB32_4
# %bb.1:
	ori	$t3, $zero, 63
	bltu	$t3, $t1, .LBB32_5
# %bb.2:
	alsl.d	$t3, $t2, $a5, 3
	addi.w	$t2, $zero, -1
	addi.d	$t1, $t0, 1
	bge	$t0, $t2, .LBB32_7
.LBB32_3:
	srai.d	$t5, $t1, 6
	b	.LBB32_11
.LBB32_4:
	srai.d	$t2, $t1, 6
	b	.LBB32_6
.LBB32_5:
	srli.d	$t2, $t1, 6
.LBB32_6:
	slli.d	$t3, $t2, 3
	ldx.d	$t3, $a4, $t3
	slli.d	$t2, $t2, 6
	sub.d	$t1, $t1, $t2
	alsl.d	$t3, $t1, $t3, 3
	addi.w	$t2, $zero, -1
	addi.d	$t1, $t0, 1
	blt	$t0, $t2, .LBB32_3
.LBB32_7:
	ori	$t5, $zero, 63
	bltu	$t5, $t1, .LBB32_10
# %bb.8:
	addi.d	$t5, $a5, 8
	addi.d	$t6, $t4, -1
	bgtz	$t4, .LBB32_12
.LBB32_9:
	srai.d	$t4, $t6, 6
	b	.LBB32_15
.LBB32_10:
	srli.d	$t5, $t1, 6
.LBB32_11:
	slli.d	$t6, $t5, 3
	ldx.d	$t6, $a4, $t6
	slli.d	$t5, $t5, 6
	sub.d	$t5, $t1, $t5
	alsl.d	$t5, $t5, $t6, 3
	addi.d	$t6, $t4, -1
	blez	$t4, .LBB32_9
.LBB32_12:
	ori	$t7, $zero, 64
	bltu	$t7, $t4, .LBB32_14
# %bb.13:
	addi.d	$t4, $a7, -8
	b	.LBB32_16
.LBB32_14:
	srli.d	$t4, $t6, 6
.LBB32_15:
	slli.d	$t7, $t4, 3
	ldx.d	$t7, $a3, $t7
	slli.d	$t4, $t4, 6
	sub.d	$t4, $t6, $t4
	alsl.d	$t4, $t4, $t7, 3
.LBB32_16:                              # %_ZStmiRKSt15_Deque_iteratorIdRdPdEl.exit
	fld.d	$fa1, $t5, 0
	fld.d	$fa2, $t3, 0
	fld.d	$fa0, $t4, 0
	fcmp.cule.d	$fcc0, $fa2, $fa1
	bcnez	$fcc0, .LBB32_19
# %bb.17:
	fcmp.cule.d	$fcc0, $fa0, $fa2
	bcnez	$fcc0, .LBB32_21
# %bb.18:
	fld.d	$fa0, $a5, 0
	fst.d	$fa2, $a5, 0
	fst.d	$fa0, $t3, 0
	blt	$t0, $t2, .LBB32_26
	b	.LBB32_28
.LBB32_19:
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB32_23
# %bb.20:
	fld.d	$fa0, $a5, 0
	fst.d	$fa1, $a5, 0
	fst.d	$fa0, $t5, 0
	blt	$t0, $t2, .LBB32_26
	b	.LBB32_28
.LBB32_21:
	fld.d	$fa2, $a5, 0
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB32_25
# %bb.22:
	fst.d	$fa0, $a5, 0
	fst.d	$fa2, $t4, 0
	blt	$t0, $t2, .LBB32_26
	b	.LBB32_28
.LBB32_23:
	fld.d	$fa1, $a5, 0
	fcmp.cule.d	$fcc0, $fa0, $fa2
	bcnez	$fcc0, .LBB32_27
# %bb.24:
	fst.d	$fa0, $a5, 0
	fst.d	$fa1, $t4, 0
	blt	$t0, $t2, .LBB32_26
	b	.LBB32_28
.LBB32_25:
	fst.d	$fa1, $a5, 0
	fst.d	$fa2, $t5, 0
	bge	$t0, $t2, .LBB32_28
.LBB32_26:
	srai.d	$t0, $t1, 6
	b	.LBB32_31
.LBB32_27:
	fst.d	$fa2, $a5, 0
	fst.d	$fa1, $t3, 0
	blt	$t0, $t2, .LBB32_26
.LBB32_28:
	ori	$t0, $zero, 63
	bltu	$t0, $t1, .LBB32_30
# %bb.29:
	addi.d	$t0, $a5, 8
	b	.LBB32_32
.LBB32_30:
	srli.d	$t0, $t1, 6
.LBB32_31:
	slli.d	$a1, $t0, 3
	ldx.d	$a1, $a4, $a1
	alsl.d	$a4, $t0, $a4, 3
	addi.d	$a6, $a1, 512
	slli.d	$t0, $t0, 6
	sub.d	$t0, $t1, $t0
	alsl.d	$t0, $t0, $a1, 3
	.p2align	4, , 16
.LBB32_32:                              # %_ZNSt15_Deque_iteratorIdRdPdEppEv.exit2.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB32_36 Depth 2
                                        #     Child Loop BB32_44 Depth 2
	fld.d	$fa1, $t0, 0
	fld.d	$fa0, $a5, 0
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB32_36
.LBB32_33:                              # %._crit_edge.i
                                        #   in Loop: Header=BB32_32 Depth=1
	beq	$a7, $a2, .LBB32_38
# %bb.34:                               # %_ZNSt15_Deque_iteratorIdRdPdEmmEv.exit.i
                                        #   in Loop: Header=BB32_32 Depth=1
	fld.d	$fa2, $a7, -8
	fcmp.cule.d	$fcc0, $fa2, $fa0
	addi.d	$t1, $a7, -8
	bceqz	$fcc0, .LBB32_44
	b	.LBB32_39
	.p2align	4, , 16
.LBB32_35:                              # %_ZNSt15_Deque_iteratorIdRdPdEppEv.exit.i
                                        #   in Loop: Header=BB32_36 Depth=2
	fld.d	$fa1, $t0, 0
	fcmp.clt.d	$fcc0, $fa1, $fa0
	bceqz	$fcc0, .LBB32_33
.LBB32_36:                              # %.lr.ph.i
                                        #   Parent Loop BB32_32 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$t0, $t0, 8
	bne	$t0, $a6, .LBB32_35
# %bb.37:                               #   in Loop: Header=BB32_36 Depth=2
	ld.d	$a1, $a4, 8
	addi.d	$a4, $a4, 8
	addi.d	$a6, $a1, 512
	move	$t0, $a1
	b	.LBB32_35
	.p2align	4, , 16
.LBB32_38:                              #   in Loop: Header=BB32_32 Depth=1
	ld.d	$a2, $a3, -8
	addi.d	$a3, $a3, -8
	addi.d	$a7, $a2, 512
	fld.d	$fa2, $a7, -8
	fcmp.cule.d	$fcc0, $fa2, $fa0
	addi.d	$t1, $a7, -8
	bceqz	$fcc0, .LBB32_44
.LBB32_39:                              #   in Loop: Header=BB32_32 Depth=1
	move	$a7, $t1
.LBB32_40:                              # %._crit_edge35.i
                                        #   in Loop: Header=BB32_32 Depth=1
	xor	$t1, $a4, $a3
	sltui	$t1, $t1, 1
	sltu	$t2, $t0, $a7
	sltu	$t3, $a4, $a3
	masknez	$t3, $t3, $t1
	maskeqz	$t1, $t2, $t1
	or	$t1, $t1, $t3
	beqz	$t1, .LBB32_46
# %bb.41:                               #   in Loop: Header=BB32_32 Depth=1
	fst.d	$fa2, $t0, 0
	addi.d	$t0, $t0, 8
	fst.d	$fa1, $a7, 0
	bne	$t0, $a6, .LBB32_32
# %bb.42:                               #   in Loop: Header=BB32_32 Depth=1
	ld.d	$a1, $a4, 8
	addi.d	$a4, $a4, 8
	addi.d	$a6, $a1, 512
	move	$t0, $a1
	b	.LBB32_32
	.p2align	4, , 16
.LBB32_43:                              # %_ZNSt15_Deque_iteratorIdRdPdEmmEv.exit1.i
                                        #   in Loop: Header=BB32_44 Depth=2
	fld.d	$fa2, $t1, -8
	addi.d	$a7, $t1, -8
	fcmp.clt.d	$fcc0, $fa0, $fa2
	move	$t1, $a7
	bceqz	$fcc0, .LBB32_40
.LBB32_44:                              # %.lr.ph34.i
                                        #   Parent Loop BB32_32 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bne	$t1, $a2, .LBB32_43
# %bb.45:                               #   in Loop: Header=BB32_44 Depth=2
	ld.d	$a2, $a3, -8
	addi.d	$a3, $a3, -8
	addi.d	$t1, $a2, 512
	b	.LBB32_43
.LBB32_46:                              # %_ZSt21__unguarded_partitionISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEET_S7_S7_S7_T0_.exit
	st.d	$t0, $a0, 0
	st.d	$a1, $a0, 8
	st.d	$a6, $a0, 16
	st.d	$a4, $a0, 24
	ret
.Lfunc_end32:
	.size	_ZSt27__unguarded_partition_pivotISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEET_S7_S7_T0_, .Lfunc_end32-_ZSt27__unguarded_partition_pivotISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEET_S7_S7_T0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt13__heap_selectISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_S7_T0_,"axG",@progbits,_ZSt13__heap_selectISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_S7_T0_,comdat
	.weak	_ZSt13__heap_selectISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_S7_T0_ # -- Begin function _ZSt13__heap_selectISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_S7_T0_
	.p2align	5
	.type	_ZSt13__heap_selectISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_S7_T0_,@function
_ZSt13__heap_selectISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_S7_T0_: # @_ZSt13__heap_selectISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_S7_T0_
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
	move	$fp, $a1
	move	$s0, $a0
	ld.d	$s7, $a0, 0
	ld.d	$s6, $a0, 24
	ld.d	$s4, $a1, 24
	ld.d	$a5, $a0, 16
	ld.d	$s3, $a1, 0
	ld.d	$a0, $a1, 8
	sub.d	$a1, $s4, $s6
	srli.d	$a1, $a1, 3
	sltu	$a3, $zero, $s4
	sub.d	$a1, $a1, $a3
	slli.d	$a1, $a1, 6
	sub.d	$a0, $s3, $a0
	srai.d	$a0, $a0, 3
	sub.d	$a3, $a5, $s7
	srai.d	$a3, $a3, 3
	add.d	$a0, $a0, $a3
	add.d	$s2, $a0, $a1
	ori	$a0, $zero, 2
	move	$s5, $a2
	blt	$s2, $a0, .LBB33_9
# %bb.1:
	move	$s1, $a5
	st.d	$s5, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	ld.d	$s4, $s0, 8
	addi.d	$a0, $s2, -2
	srli.d	$s3, $a0, 1
	sub.d	$a0, $s7, $s4
	srai.d	$s8, $a0, 3
	alsl.d	$fp, $s3, $s7, 3
	addi.w	$s5, $zero, -1
	b	.LBB33_5
	.p2align	4, , 16
.LBB33_2:                               #   in Loop: Header=BB33_5 Depth=1
	srai.d	$a1, $a0, 6
.LBB33_3:                               #   in Loop: Header=BB33_5 Depth=1
	slli.d	$a2, $a1, 3
	ldx.d	$a2, $s6, $a2
	slli.d	$a1, $a1, 6
	sub.d	$a0, $a0, $a1
	alsl.d	$a1, $a0, $a2, 3
.LBB33_4:                               # %_ZStplRKSt15_Deque_iteratorIdRdPdEl.exit.i
                                        #   in Loop: Header=BB33_5 Depth=1
	fld.d	$fa0, $a1, 0
	st.d	$s7, $sp, 24
	st.d	$s4, $sp, 32
	st.d	$s1, $sp, 40
	st.d	$s6, $sp, 48
	addi.d	$a0, $sp, 24
	move	$a1, $s3
	move	$a2, $s2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(_ZSt13__adjust_heapISt15_Deque_iteratorIdRdPdEldN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S8_T1_T2_)
	jirl	$ra, $ra, 0
	addi.d	$s3, $s3, -1
	addi.d	$fp, $fp, -8
	beq	$s3, $s5, .LBB33_8
.LBB33_5:                               # =>This Inner Loop Header: Depth=1
	add.d	$a0, $s3, $s8
	bltz	$a0, .LBB33_2
# %bb.6:                                #   in Loop: Header=BB33_5 Depth=1
	move	$a1, $fp
	ori	$a2, $zero, 64
	bltu	$a0, $a2, .LBB33_4
# %bb.7:                                #   in Loop: Header=BB33_5 Depth=1
	srli.d	$a1, $a0, 6
	b	.LBB33_3
.LBB33_8:                               # %_ZSt11__make_heapISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_RT0_.exit.loopexit
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s3, $fp, 0
	ld.d	$s4, $fp, 24
	ld.d	$s5, $sp, 8                     # 8-byte Folded Reload
.LBB33_9:                               # %_ZSt11__make_heapISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_RT0_.exit
	ld.d	$a0, $s5, 24
	ld.d	$a1, $s5, 0
	xor	$a2, $s4, $a0
	sltui	$a2, $a2, 1
	sltu	$a1, $s3, $a1
	sltu	$a0, $s4, $a0
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	or	$a0, $a1, $a0
	beqz	$a0, .LBB33_16
# %bb.10:                               # %.lr.ph
	ld.d	$s2, $fp, 16
	b	.LBB33_13
	.p2align	4, , 16
.LBB33_11:                              #   in Loop: Header=BB33_13 Depth=1
	addi.d	$s3, $s3, 8
	beq	$s3, $s2, .LBB33_15
.LBB33_12:                              # %_ZNSt15_Deque_iteratorIdRdPdEppEv.exit
                                        #   in Loop: Header=BB33_13 Depth=1
	ld.d	$a0, $s5, 24
	ld.d	$a1, $s5, 0
	xor	$a2, $s4, $a0
	sltui	$a2, $a2, 1
	sltu	$a1, $s3, $a1
	sltu	$a0, $s4, $a0
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	or	$a0, $a1, $a0
	beqz	$a0, .LBB33_16
.LBB33_13:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	fld.d	$fa0, $s3, 0
	fld.d	$fa1, $a0, 0
	fcmp.cule.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB33_11
# %bb.14:                               #   in Loop: Header=BB33_13 Depth=1
	ld.d	$a1, $s0, 24
	ld.d	$a2, $fp, 0
	ld.d	$a3, $fp, 8
	ld.d	$a4, $fp, 24
	fst.d	$fa1, $s3, 0
	vld	$vr1, $s0, 8
	st.d	$a0, $sp, 24
	ld.d	$a5, $s0, 16
	vst	$vr1, $sp, 32
	st.d	$a1, $sp, 48
	sub.d	$a1, $a4, $a1
	srli.d	$a1, $a1, 3
	sltu	$a4, $zero, $a4
	sub.d	$a1, $a1, $a4
	slli.d	$a1, $a1, 6
	sub.d	$a2, $a2, $a3
	srai.d	$a2, $a2, 3
	sub.d	$a0, $a5, $a0
	srai.d	$a0, $a0, 3
	add.d	$a0, $a2, $a0
	add.d	$a2, $a0, $a1
	addi.d	$a0, $sp, 24
	move	$a1, $zero
	move	$a3, $zero
	pcaddu18i	$ra, %call36(_ZSt13__adjust_heapISt15_Deque_iteratorIdRdPdEldN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S8_T1_T2_)
	jirl	$ra, $ra, 0
	b	.LBB33_11
	.p2align	4, , 16
.LBB33_15:                              #   in Loop: Header=BB33_13 Depth=1
	ld.d	$s3, $s4, 8
	addi.d	$s4, $s4, 8
	addi.d	$s2, $s3, 512
	b	.LBB33_12
.LBB33_16:                              # %._crit_edge
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
.Lfunc_end33:
	.size	_ZSt13__heap_selectISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_S7_T0_, .Lfunc_end33-_ZSt13__heap_selectISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_S7_T0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt13__adjust_heapISt15_Deque_iteratorIdRdPdEldN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S8_T1_T2_,"axG",@progbits,_ZSt13__adjust_heapISt15_Deque_iteratorIdRdPdEldN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S8_T1_T2_,comdat
	.weak	_ZSt13__adjust_heapISt15_Deque_iteratorIdRdPdEldN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S8_T1_T2_ # -- Begin function _ZSt13__adjust_heapISt15_Deque_iteratorIdRdPdEldN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S8_T1_T2_
	.p2align	5
	.type	_ZSt13__adjust_heapISt15_Deque_iteratorIdRdPdEldN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S8_T1_T2_,@function
_ZSt13__adjust_heapISt15_Deque_iteratorIdRdPdEldN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S8_T1_T2_: # @_ZSt13__adjust_heapISt15_Deque_iteratorIdRdPdEldN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S8_T1_T2_
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -64
	.cfi_def_cfa_offset 64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	addi.d	$a3, $a2, -1
	srli.d	$a4, $a3, 63
	add.d	$a3, $a3, $a4
	srai.d	$a3, $a3, 1
	move	$a4, $a1
	move	$t0, $a1
	bge	$a1, $a3, .LBB34_24
# %bb.1:                                # %.lr.ph
	ld.d	$a1, $a0, 0
	ld.d	$a6, $a0, 8
	ld.d	$a5, $a0, 24
	sub.d	$a6, $a1, $a6
	srai.d	$a6, $a6, 3
	ori	$a7, $zero, 63
	move	$t1, $a4
	b	.LBB34_3
	.p2align	4, , 16
.LBB34_2:                               #   in Loop: Header=BB34_3 Depth=1
	alsl.d	$t1, $t1, $a1, 3
	fst.d	$fa1, $t1, 0
	move	$t1, $t0
	bge	$t0, $a3, .LBB34_24
.LBB34_3:                               # =>This Inner Loop Header: Depth=1
	slli.d	$t3, $t1, 1
	addi.d	$t0, $t3, 2
	add.d	$t2, $a6, $t0
	bltz	$t2, .LBB34_7
# %bb.4:                                #   in Loop: Header=BB34_3 Depth=1
	bltu	$a7, $t2, .LBB34_8
# %bb.5:                                #   in Loop: Header=BB34_3 Depth=1
	alsl.d	$t2, $t0, $a1, 3
	addi.d	$t3, $t3, 1
	add.d	$t4, $a6, $t3
	bgez	$t4, .LBB34_10
.LBB34_6:                               #   in Loop: Header=BB34_3 Depth=1
	srai.d	$t5, $t4, 6
	b	.LBB34_13
	.p2align	4, , 16
.LBB34_7:                               #   in Loop: Header=BB34_3 Depth=1
	srai.d	$t4, $t2, 6
	b	.LBB34_9
	.p2align	4, , 16
.LBB34_8:                               #   in Loop: Header=BB34_3 Depth=1
	srli.d	$t4, $t2, 6
.LBB34_9:                               #   in Loop: Header=BB34_3 Depth=1
	slli.d	$t5, $t4, 3
	ldx.d	$t5, $a5, $t5
	slli.d	$t4, $t4, 6
	sub.d	$t2, $t2, $t4
	alsl.d	$t2, $t2, $t5, 3
	addi.d	$t3, $t3, 1
	add.d	$t4, $a6, $t3
	bltz	$t4, .LBB34_6
.LBB34_10:                              #   in Loop: Header=BB34_3 Depth=1
	bltu	$a7, $t4, .LBB34_12
# %bb.11:                               #   in Loop: Header=BB34_3 Depth=1
	alsl.d	$t4, $t3, $a1, 3
	b	.LBB34_14
	.p2align	4, , 16
.LBB34_12:                              #   in Loop: Header=BB34_3 Depth=1
	srli.d	$t5, $t4, 6
.LBB34_13:                              #   in Loop: Header=BB34_3 Depth=1
	slli.d	$t6, $t5, 3
	ldx.d	$t6, $a5, $t6
	slli.d	$t5, $t5, 6
	sub.d	$t4, $t4, $t5
	alsl.d	$t4, $t4, $t6, 3
.LBB34_14:                              # %_ZStplRKSt15_Deque_iteratorIdRdPdEl.exit23
                                        #   in Loop: Header=BB34_3 Depth=1
	fld.d	$fa1, $t2, 0
	fld.d	$fa2, $t4, 0
	fcmp.clt.d	$fcc0, $fa1, $fa2
	movcf2gr	$t2, $fcc0
	masknez	$t0, $t0, $t2
	maskeqz	$t2, $t3, $t2
	or	$t0, $t2, $t0
	add.d	$t2, $t0, $a6
	bltz	$t2, .LBB34_18
# %bb.15:                               #   in Loop: Header=BB34_3 Depth=1
	bltu	$a7, $t2, .LBB34_19
# %bb.16:                               #   in Loop: Header=BB34_3 Depth=1
	alsl.d	$t2, $t0, $a1, 3
	fld.d	$fa1, $t2, 0
	add.d	$t2, $a6, $t1
	bgez	$t2, .LBB34_21
.LBB34_17:                              #   in Loop: Header=BB34_3 Depth=1
	srai.d	$t1, $t2, 6
	b	.LBB34_23
	.p2align	4, , 16
.LBB34_18:                              #   in Loop: Header=BB34_3 Depth=1
	srai.d	$t3, $t2, 6
	b	.LBB34_20
	.p2align	4, , 16
.LBB34_19:                              #   in Loop: Header=BB34_3 Depth=1
	srli.d	$t3, $t2, 6
.LBB34_20:                              #   in Loop: Header=BB34_3 Depth=1
	slli.d	$t4, $t3, 3
	ldx.d	$t4, $a5, $t4
	slli.d	$t3, $t3, 6
	sub.d	$t2, $t2, $t3
	alsl.d	$t2, $t2, $t4, 3
	fld.d	$fa1, $t2, 0
	add.d	$t2, $a6, $t1
	bltz	$t2, .LBB34_17
.LBB34_21:                              #   in Loop: Header=BB34_3 Depth=1
	bgeu	$a7, $t2, .LBB34_2
# %bb.22:                               #   in Loop: Header=BB34_3 Depth=1
	srli.d	$t1, $t2, 6
.LBB34_23:                              #   in Loop: Header=BB34_3 Depth=1
	slli.d	$t3, $t1, 3
	ldx.d	$t3, $a5, $t3
	slli.d	$t1, $t1, 6
	sub.d	$t1, $t2, $t1
	alsl.d	$t1, $t1, $t3, 3
	fst.d	$fa1, $t1, 0
	move	$t1, $t0
	blt	$t0, $a3, .LBB34_3
.LBB34_24:                              # %._crit_edge
	andi	$a1, $a2, 1
	bnez	$a1, .LBB34_30
# %bb.25:
	addi.d	$a1, $a2, -2
	srai.d	$a1, $a1, 1
	bne	$t0, $a1, .LBB34_30
# %bb.26:
	ld.d	$a3, $a0, 0
	ld.d	$a5, $a0, 8
	slli.d	$a1, $t0, 1
	addi.d	$a1, $a1, 1
	ld.d	$a2, $a0, 24
	sub.d	$a5, $a3, $a5
	srai.d	$a5, $a5, 3
	add.d	$a6, $a5, $a1
	bltz	$a6, .LBB34_31
# %bb.27:
	ori	$a7, $zero, 63
	bltu	$a7, $a6, .LBB34_32
# %bb.28:
	alsl.d	$a6, $a1, $a3, 3
	fld.d	$fa1, $a6, 0
	add.d	$a5, $a5, $t0
	bgez	$a5, .LBB34_34
.LBB34_29:
	srai.d	$a3, $a5, 6
	b	.LBB34_37
.LBB34_30:
	move	$a1, $t0
	b	.LBB34_39
.LBB34_31:
	srai.d	$a7, $a6, 6
	b	.LBB34_33
.LBB34_32:
	srli.d	$a7, $a6, 6
.LBB34_33:
	slli.d	$t1, $a7, 3
	ldx.d	$t1, $a2, $t1
	slli.d	$a7, $a7, 6
	sub.d	$a6, $a6, $a7
	alsl.d	$a6, $a6, $t1, 3
	fld.d	$fa1, $a6, 0
	add.d	$a5, $a5, $t0
	bltz	$a5, .LBB34_29
.LBB34_34:
	ori	$a6, $zero, 63
	bltu	$a6, $a5, .LBB34_36
# %bb.35:
	alsl.d	$a2, $t0, $a3, 3
	b	.LBB34_38
.LBB34_36:
	srli.d	$a3, $a5, 6
.LBB34_37:
	slli.d	$a6, $a3, 3
	ldx.d	$a2, $a2, $a6
	slli.d	$a3, $a3, 6
	sub.d	$a3, $a5, $a3
	alsl.d	$a2, $a3, $a2, 3
.LBB34_38:                              # %_ZStplRKSt15_Deque_iteratorIdRdPdEl.exit31
	fst.d	$fa1, $a2, 0
.LBB34_39:
	vld	$vr1, $a0, 0
	vld	$vr2, $a0, 16
	vst	$vr1, $sp, 16
	vst	$vr2, $sp, 32
	addi.d	$a0, $sp, 16
	addi.d	$a3, $sp, 55
	move	$a2, $a4
	pcaddu18i	$ra, %call36(_ZSt11__push_heapISt15_Deque_iteratorIdRdPdEldN9__gnu_cxx5__ops14_Iter_less_valEEvT_T0_S8_T1_RT2_)
	jirl	$ra, $ra, 0
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end34:
	.size	_ZSt13__adjust_heapISt15_Deque_iteratorIdRdPdEldN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S8_T1_T2_, .Lfunc_end34-_ZSt13__adjust_heapISt15_Deque_iteratorIdRdPdEldN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S8_T1_T2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt11__push_heapISt15_Deque_iteratorIdRdPdEldN9__gnu_cxx5__ops14_Iter_less_valEEvT_T0_S8_T1_RT2_,"axG",@progbits,_ZSt11__push_heapISt15_Deque_iteratorIdRdPdEldN9__gnu_cxx5__ops14_Iter_less_valEEvT_T0_S8_T1_RT2_,comdat
	.weak	_ZSt11__push_heapISt15_Deque_iteratorIdRdPdEldN9__gnu_cxx5__ops14_Iter_less_valEEvT_T0_S8_T1_RT2_ # -- Begin function _ZSt11__push_heapISt15_Deque_iteratorIdRdPdEldN9__gnu_cxx5__ops14_Iter_less_valEEvT_T0_S8_T1_RT2_
	.p2align	5
	.type	_ZSt11__push_heapISt15_Deque_iteratorIdRdPdEldN9__gnu_cxx5__ops14_Iter_less_valEEvT_T0_S8_T1_RT2_,@function
_ZSt11__push_heapISt15_Deque_iteratorIdRdPdEldN9__gnu_cxx5__ops14_Iter_less_valEEvT_T0_S8_T1_RT2_: # @_ZSt11__push_heapISt15_Deque_iteratorIdRdPdEldN9__gnu_cxx5__ops14_Iter_less_valEEvT_T0_S8_T1_RT2_
	.cfi_startproc
# %bb.0:
	ld.d	$a3, $a0, 0
	ld.d	$a4, $a0, 8
	ld.d	$a0, $a0, 24
	sub.d	$a4, $a3, $a4
	srai.d	$a4, $a4, 3
	bge	$a2, $a1, .LBB35_18
# %bb.1:                                # %.lr.ph.preheader
	ori	$a6, $zero, 64
	ori	$a7, $zero, 63
	b	.LBB35_3
	.p2align	4, , 16
.LBB35_2:                               #   in Loop: Header=BB35_3 Depth=1
	alsl.d	$a1, $a1, $a3, 3
	fld.d	$fa1, $t0, 0
	fst.d	$fa1, $a1, 0
	move	$a1, $a5
	bge	$a2, $a5, .LBB35_15
.LBB35_3:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a5, $a1, -1
	srli.d	$t0, $a5, 63
	add.d	$a5, $a5, $t0
	srai.d	$a5, $a5, 1
	add.d	$t0, $a4, $a5
	bltz	$t0, .LBB35_8
# %bb.4:                                #   in Loop: Header=BB35_3 Depth=1
	bgeu	$t0, $a6, .LBB35_9
# %bb.5:                                # %_ZStplRKSt15_Deque_iteratorIdRdPdEl.exit.thread
                                        #   in Loop: Header=BB35_3 Depth=1
	slli.d	$t0, $a5, 3
	fldx.d	$fa1, $a3, $t0
	fcmp.clt.d	$fcc0, $fa1, $fa0
	bceqz	$fcc0, .LBB35_18
# %bb.6:                                # %.thread29
                                        #   in Loop: Header=BB35_3 Depth=1
	alsl.d	$t0, $a5, $a3, 3
	add.d	$t1, $a4, $a1
	bgez	$t1, .LBB35_12
.LBB35_7:                               #   in Loop: Header=BB35_3 Depth=1
	srai.d	$a1, $t1, 6
	b	.LBB35_14
	.p2align	4, , 16
.LBB35_8:                               #   in Loop: Header=BB35_3 Depth=1
	srai.d	$t1, $t0, 6
	b	.LBB35_10
	.p2align	4, , 16
.LBB35_9:                               #   in Loop: Header=BB35_3 Depth=1
	srli.d	$t1, $t0, 6
.LBB35_10:                              # %_ZStplRKSt15_Deque_iteratorIdRdPdEl.exit
                                        #   in Loop: Header=BB35_3 Depth=1
	slli.d	$t2, $t1, 3
	ldx.d	$t2, $a0, $t2
	slli.d	$t1, $t1, 6
	sub.d	$t1, $t0, $t1
	slli.d	$t1, $t1, 3
	fldx.d	$fa1, $t2, $t1
	fcmp.clt.d	$fcc0, $fa1, $fa0
	bceqz	$fcc0, .LBB35_22
# %bb.11:                               #   in Loop: Header=BB35_3 Depth=1
	srai.d	$t1, $t0, 6
	slli.d	$t1, $t1, 3
	ldx.d	$t1, $a0, $t1
	andi	$t0, $t0, 63
	alsl.d	$t0, $t0, $t1, 3
	add.d	$t1, $a4, $a1
	bltz	$t1, .LBB35_7
.LBB35_12:                              #   in Loop: Header=BB35_3 Depth=1
	bgeu	$a7, $t1, .LBB35_2
# %bb.13:                               #   in Loop: Header=BB35_3 Depth=1
	srli.d	$a1, $t1, 6
.LBB35_14:                              #   in Loop: Header=BB35_3 Depth=1
	slli.d	$t2, $a1, 3
	ldx.d	$t2, $a0, $t2
	slli.d	$a1, $a1, 6
	sub.d	$a1, $t1, $a1
	alsl.d	$a1, $a1, $t2, 3
	fld.d	$fa1, $t0, 0
	fst.d	$fa1, $a1, 0
	move	$a1, $a5
	blt	$a2, $a5, .LBB35_3
.LBB35_15:                              # %.critedge
	add.d	$a1, $a4, $a5
	bltz	$a1, .LBB35_19
.LBB35_16:
	ori	$a2, $zero, 63
	bltu	$a2, $a1, .LBB35_20
# %bb.17:
	alsl.d	$a0, $a5, $a3, 3
	fst.d	$fa0, $a0, 0
	ret
.LBB35_18:
	move	$a5, $a1
	add.d	$a1, $a4, $a5
	bgez	$a1, .LBB35_16
.LBB35_19:
	srai.d	$a2, $a1, 6
	b	.LBB35_21
.LBB35_20:
	srli.d	$a2, $a1, 6
.LBB35_21:
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 6
	sub.d	$a1, $a1, $a2
	alsl.d	$a0, $a1, $a0, 3
	fst.d	$fa0, $a0, 0
	ret
.LBB35_22:
	move	$a5, $a1
	add.d	$a1, $a4, $a5
	bgez	$a1, .LBB35_16
	b	.LBB35_19
.Lfunc_end35:
	.size	_ZSt11__push_heapISt15_Deque_iteratorIdRdPdEldN9__gnu_cxx5__ops14_Iter_less_valEEvT_T0_S8_T1_RT2_, .Lfunc_end35-_ZSt11__push_heapISt15_Deque_iteratorIdRdPdEldN9__gnu_cxx5__ops14_Iter_less_valEEvT_T0_S8_T1_RT2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt16__insertion_sortISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_T0_,"axG",@progbits,_ZSt16__insertion_sortISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_T0_,comdat
	.weak	_ZSt16__insertion_sortISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_T0_ # -- Begin function _ZSt16__insertion_sortISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_T0_
	.p2align	5
	.type	_ZSt16__insertion_sortISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_T0_,@function
_ZSt16__insertion_sortISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_T0_: # @_ZSt16__insertion_sortISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_T0_
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
	fst.d	$fs0, $sp, 144                  # 8-byte Folded Spill
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
	move	$s0, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	beq	$a0, $a1, .LBB36_28
# %bb.1:
	ld.d	$s3, $s0, 8
	ld.d	$s2, $s0, 24
	sub.d	$a2, $a0, $s3
	srai.d	$a3, $a2, 3
	addi.w	$s1, $zero, -1
	addi.d	$a2, $a3, 1
	blt	$a3, $s1, .LBB36_4
# %bb.2:
	ori	$a3, $zero, 63
	bltu	$a3, $a2, .LBB36_5
# %bb.3:
	ld.d	$s4, $s0, 16
	addi.d	$s5, $a0, 8
	bne	$s5, $a1, .LBB36_7
	b	.LBB36_28
.LBB36_4:
	srai.d	$a3, $a2, 6
	b	.LBB36_6
.LBB36_5:
	srli.d	$a3, $a2, 6
.LBB36_6:
	slli.d	$a4, $a3, 3
	ldx.d	$s3, $s2, $a4
	alsl.d	$s2, $a3, $s2, 3
	addi.d	$s4, $s3, 512
	slli.d	$a3, $a3, 6
	sub.d	$a2, $a2, $a3
	alsl.d	$s5, $a2, $s3, 3
	beq	$s5, $a1, .LBB36_28
.LBB36_7:                               # %.lr.ph
	ori	$s6, $zero, 63
	b	.LBB36_9
	.p2align	4, , 16
.LBB36_8:                               # %_ZNSt15_Deque_iteratorIdRdPdEppEv.exit
                                        #   in Loop: Header=BB36_9 Depth=1
	ld.d	$a1, $fp, 0
	beq	$s5, $a1, .LBB36_28
.LBB36_9:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB36_18 Depth 2
	fld.d	$fs0, $s5, 0
	fld.d	$fa0, $a0, 0
	fcmp.cule.d	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB36_13
# %bb.10:                               #   in Loop: Header=BB36_9 Depth=1
	sub.d	$a1, $s5, $s3
	srai.d	$a1, $a1, 3
	addi.d	$a4, $a1, 1
	blt	$a1, $s1, .LBB36_20
# %bb.11:                               #   in Loop: Header=BB36_9 Depth=1
	bltu	$s6, $a4, .LBB36_24
# %bb.12:                               #   in Loop: Header=BB36_9 Depth=1
	addi.d	$a4, $s5, 8
	move	$a1, $s3
	move	$a3, $s4
	move	$a2, $s2
	b	.LBB36_26
	.p2align	4, , 16
.LBB36_13:                              #   in Loop: Header=BB36_9 Depth=1
	move	$a1, $s3
	move	$a2, $s2
	move	$a3, $s5
	beq	$s5, $s3, .LBB36_21
# %bb.14:                               # %_ZNSt15_Deque_iteratorIdRdPdEmmEv.exit.i
                                        #   in Loop: Header=BB36_9 Depth=1
	fld.d	$fa0, $a3, -8
	fcmp.cule.d	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB36_22
.LBB36_15:                              # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB36_9 Depth=1
	addi.d	$a5, $a3, -8
	move	$a4, $s5
	b	.LBB36_18
	.p2align	4, , 16
.LBB36_16:                              #   in Loop: Header=BB36_18 Depth=2
	ld.d	$a1, $a2, -8
	addi.d	$a2, $a2, -8
	addi.d	$a4, $a1, 512
.LBB36_17:                              # %_ZNSt15_Deque_iteratorIdRdPdEmmEv.exit1.i
                                        #   in Loop: Header=BB36_18 Depth=2
	fld.d	$fa0, $a4, -8
	fcmp.clt.d	$fcc0, $fs0, $fa0
	addi.d	$a5, $a4, -8
	move	$a4, $a3
	bceqz	$fcc0, .LBB36_23
.LBB36_18:                              # %.lr.ph.i
                                        #   Parent Loop BB36_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a3, $a5
	fst.d	$fa0, $a4, 0
	beq	$a5, $a1, .LBB36_16
# %bb.19:                               #   in Loop: Header=BB36_18 Depth=2
	move	$a4, $a3
	b	.LBB36_17
	.p2align	4, , 16
.LBB36_20:                              #   in Loop: Header=BB36_9 Depth=1
	srai.d	$a5, $a4, 6
	b	.LBB36_25
.LBB36_21:                              #   in Loop: Header=BB36_9 Depth=1
	ld.d	$a1, $s2, -8
	addi.d	$a2, $s2, -8
	addi.d	$a3, $a1, 512
	fld.d	$fa0, $a3, -8
	fcmp.cule.d	$fcc0, $fa0, $fs0
	bceqz	$fcc0, .LBB36_15
.LBB36_22:                              #   in Loop: Header=BB36_9 Depth=1
	move	$a3, $s5
.LBB36_23:                              # %_ZSt25__unguarded_linear_insertISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit
                                        #   in Loop: Header=BB36_9 Depth=1
	addi.d	$s5, $s5, 8
	fst.d	$fs0, $a3, 0
	bne	$s5, $s4, .LBB36_8
	b	.LBB36_27
.LBB36_24:                              #   in Loop: Header=BB36_9 Depth=1
	srli.d	$a5, $a4, 6
.LBB36_25:                              #   in Loop: Header=BB36_9 Depth=1
	slli.d	$a1, $a5, 3
	ldx.d	$a1, $s2, $a1
	alsl.d	$a2, $a5, $s2, 3
	addi.d	$a3, $a1, 512
	slli.d	$a5, $a5, 6
	sub.d	$a4, $a4, $a5
	alsl.d	$a4, $a4, $a1, 3
.LBB36_26:                              # %_ZStplRKSt15_Deque_iteratorIdRdPdEl.exit3
                                        #   in Loop: Header=BB36_9 Depth=1
	vld	$vr0, $s0, 8
	ld.d	$a5, $s0, 24
	st.d	$a0, $sp, 112
	vst	$vr0, $sp, 120
	st.d	$a5, $sp, 136
	st.d	$s5, $sp, 80
	st.d	$s3, $sp, 88
	st.d	$s4, $sp, 96
	st.d	$s2, $sp, 104
	st.d	$a4, $sp, 48
	st.d	$a1, $sp, 56
	st.d	$a3, $sp, 64
	st.d	$a2, $sp, 72
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 112
	addi.d	$a2, $sp, 80
	addi.d	$a3, $sp, 48
	pcaddu18i	$ra, %call36(_ZSt24__copy_move_backward_ditILb1EdRdPdSt15_Deque_iteratorIdS0_S1_EET3_S2_IT0_T1_T2_ES8_S4_)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s0, 0
	move	$a0, $a3
	addi.d	$s5, $s5, 8
	fst.d	$fs0, $a3, 0
	bne	$s5, $s4, .LBB36_8
.LBB36_27:                              #   in Loop: Header=BB36_9 Depth=1
	ld.d	$s5, $s2, 8
	addi.d	$s2, $s2, 8
	addi.d	$s4, $s5, 512
	move	$s3, $s5
	b	.LBB36_8
.LBB36_28:                              # %.loopexit
	fld.d	$fs0, $sp, 144                  # 8-byte Folded Reload
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
.Lfunc_end36:
	.size	_ZSt16__insertion_sortISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_T0_, .Lfunc_end36-_ZSt16__insertion_sortISt15_Deque_iteratorIdRdPdEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S7_T0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt24__copy_move_backward_ditILb1EdRdPdSt15_Deque_iteratorIdS0_S1_EET3_S2_IT0_T1_T2_ES8_S4_,"axG",@progbits,_ZSt24__copy_move_backward_ditILb1EdRdPdSt15_Deque_iteratorIdS0_S1_EET3_S2_IT0_T1_T2_ES8_S4_,comdat
	.weak	_ZSt24__copy_move_backward_ditILb1EdRdPdSt15_Deque_iteratorIdS0_S1_EET3_S2_IT0_T1_T2_ES8_S4_ # -- Begin function _ZSt24__copy_move_backward_ditILb1EdRdPdSt15_Deque_iteratorIdS0_S1_EET3_S2_IT0_T1_T2_ES8_S4_
	.p2align	5
	.type	_ZSt24__copy_move_backward_ditILb1EdRdPdSt15_Deque_iteratorIdS0_S1_EET3_S2_IT0_T1_T2_ES8_S4_,@function
_ZSt24__copy_move_backward_ditILb1EdRdPdSt15_Deque_iteratorIdS0_S1_EET3_S2_IT0_T1_T2_ES8_S4_: # @_ZSt24__copy_move_backward_ditILb1EdRdPdSt15_Deque_iteratorIdS0_S1_EET3_S2_IT0_T1_T2_ES8_S4_
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
	move	$s6, $a2
	ld.d	$a4, $a1, 24
	ld.d	$a2, $a2, 24
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	beq	$a4, $a2, .LBB37_45
# %bb.1:
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	ld.d	$a0, $s6, 8
	ld.d	$s3, $s6, 0
	ld.d	$s7, $a3, 0
	ld.d	$s5, $a3, 8
	ld.d	$a1, $a3, 16
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	st.d	$a3, $sp, 16                    # 8-byte Folded Spill
	ld.d	$s4, $a3, 24
	sub.d	$a0, $s3, $a0
	srai.d	$fp, $a0, 3
	blez	$fp, .LBB37_15
# %bb.2:                                # %.lr.ph.i.preheader
	ori	$s8, $zero, 2
	ori	$s2, $zero, 63
	b	.LBB37_5
	.p2align	4, , 16
.LBB37_3:                               #   in Loop: Header=BB37_5 Depth=1
	srai.d	$a1, $a0, 6
.LBB37_4:                               #   in Loop: Header=BB37_5 Depth=1
	slli.d	$a2, $a1, 3
	ldx.d	$s5, $s4, $a2
	alsl.d	$s4, $a1, $s4, 3
	addi.d	$a2, $s5, 512
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	slli.d	$a1, $a1, 6
	sub.d	$a0, $a0, $a1
	alsl.d	$s7, $a0, $s5, 3
	sub.d	$fp, $fp, $s0
	blez	$fp, .LBB37_15
.LBB37_5:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	sub.d	$a0, $s7, $s5
	srai.d	$a0, $a0, 3
	move	$a2, $a0
	move	$a1, $s7
	bne	$s7, $s5, .LBB37_7
# %bb.6:                                #   in Loop: Header=BB37_5 Depth=1
	ld.d	$a1, $s4, -8
	addi.d	$a1, $a1, 512
	ori	$a2, $zero, 64
.LBB37_7:                               #   in Loop: Header=BB37_5 Depth=1
	slt	$a3, $a2, $fp
	masknez	$a4, $fp, $a3
	maskeqz	$a2, $a2, $a3
	or	$s0, $a2, $a4
	sub.d	$s1, $zero, $s0
	slli.d	$a2, $s0, 3
	sub.d	$s3, $s3, $a2
	blt	$s0, $s8, .LBB37_13
# %bb.8:                                #   in Loop: Header=BB37_5 Depth=1
	alsl.d	$a0, $s1, $a1, 3
	move	$a1, $s3
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
	sub.d	$a0, $s7, $s5
	srai.d	$a0, $a0, 3
.LBB37_9:                               # %_ZSt23__copy_move_backward_a1ILb1EPdS0_ET1_T0_S2_S1_.exit.i
                                        #   in Loop: Header=BB37_5 Depth=1
	sub.d	$a0, $a0, $s0
	bltz	$a0, .LBB37_3
# %bb.10:                               #   in Loop: Header=BB37_5 Depth=1
	bltu	$s2, $a0, .LBB37_12
# %bb.11:                               #   in Loop: Header=BB37_5 Depth=1
	alsl.d	$s7, $s1, $s7, 3
	sub.d	$fp, $fp, $s0
	bgtz	$fp, .LBB37_5
	b	.LBB37_15
	.p2align	4, , 16
.LBB37_12:                              #   in Loop: Header=BB37_5 Depth=1
	srli.d	$a1, $a0, 6
	b	.LBB37_4
.LBB37_13:                              #   in Loop: Header=BB37_5 Depth=1
	ori	$a2, $zero, 1
	bne	$s0, $a2, .LBB37_9
# %bb.14:                               #   in Loop: Header=BB37_5 Depth=1
	fld.d	$fa0, $s3, 0
	fst.d	$fa0, $a1, -8
	b	.LBB37_9
.LBB37_15:                              # %_ZSt23__copy_move_backward_a1ILb1EPddEN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS5_PS5_EE6__typeES3_S3_S8_.exit
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	st.d	$s4, $a3, 24
	ld.d	$a0, $s6, 24
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a1, $a2, 24
	st.d	$s7, $a3, 0
	st.d	$s5, $a3, 8
	addi.d	$s3, $a0, -8
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	st.d	$a0, $a3, 16
	beq	$s3, $a1, .LBB37_31
# %bb.16:
	ori	$s8, $zero, 2
	ori	$fp, $zero, 63
	b	.LBB37_18
	.p2align	4, , 16
.LBB37_17:                              # %_ZSt23__copy_move_backward_a1ILb1EPddEN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS5_PS5_EE6__typeES3_S3_S8_.exit50
                                        #   in Loop: Header=BB37_18 Depth=1
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	st.d	$s4, $a3, 24
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $a2, 24
	st.d	$s7, $a3, 0
	st.d	$s5, $a3, 8
	addi.d	$s3, $s3, -8
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	st.d	$a1, $a3, 16
	beq	$s3, $a0, .LBB37_31
.LBB37_18:                              # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB37_21 Depth 2
	ld.d	$a0, $s3, 0
	addi.d	$s2, $a0, 512
	ori	$s0, $zero, 64
	b	.LBB37_21
	.p2align	4, , 16
.LBB37_19:                              #   in Loop: Header=BB37_21 Depth=2
	srai.d	$a1, $a0, 6
.LBB37_20:                              #   in Loop: Header=BB37_21 Depth=2
	slli.d	$a2, $a1, 3
	ldx.d	$s5, $s4, $a2
	alsl.d	$s4, $a1, $s4, 3
	addi.d	$a2, $s5, 512
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	slli.d	$a1, $a1, 6
	sub.d	$a0, $a0, $a1
	alsl.d	$s7, $a0, $s5, 3
	sub.d	$s0, $s0, $s1
	blez	$s0, .LBB37_17
.LBB37_21:                              #   Parent Loop BB37_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	sub.d	$a0, $s7, $s5
	srai.d	$a0, $a0, 3
	move	$a2, $a0
	move	$a1, $s7
	bne	$s7, $s5, .LBB37_23
# %bb.22:                               #   in Loop: Header=BB37_21 Depth=2
	ld.d	$a1, $s4, -8
	addi.d	$a1, $a1, 512
	ori	$a2, $zero, 64
.LBB37_23:                              #   in Loop: Header=BB37_21 Depth=2
	slt	$a3, $a2, $s0
	masknez	$a4, $s0, $a3
	maskeqz	$a2, $a2, $a3
	or	$s1, $a2, $a4
	sub.d	$s6, $zero, $s1
	slli.d	$a2, $s1, 3
	sub.d	$s2, $s2, $a2
	blt	$s1, $s8, .LBB37_29
# %bb.24:                               #   in Loop: Header=BB37_21 Depth=2
	alsl.d	$a0, $s6, $a1, 3
	move	$a1, $s2
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
	sub.d	$a0, $s7, $s5
	srai.d	$a0, $a0, 3
.LBB37_25:                              # %_ZSt23__copy_move_backward_a1ILb1EPdS0_ET1_T0_S2_S1_.exit.i39
                                        #   in Loop: Header=BB37_21 Depth=2
	sub.d	$a0, $a0, $s1
	bltz	$a0, .LBB37_19
# %bb.26:                               #   in Loop: Header=BB37_21 Depth=2
	bltu	$fp, $a0, .LBB37_28
# %bb.27:                               #   in Loop: Header=BB37_21 Depth=2
	alsl.d	$s7, $s6, $s7, 3
	sub.d	$s0, $s0, $s1
	bgtz	$s0, .LBB37_21
	b	.LBB37_17
	.p2align	4, , 16
.LBB37_28:                              #   in Loop: Header=BB37_21 Depth=2
	srli.d	$a1, $a0, 6
	b	.LBB37_20
.LBB37_29:                              #   in Loop: Header=BB37_21 Depth=2
	ori	$a2, $zero, 1
	bne	$s1, $a2, .LBB37_25
# %bb.30:                               #   in Loop: Header=BB37_21 Depth=2
	fld.d	$fa0, $s2, 0
	fst.d	$fa0, $a1, -8
	b	.LBB37_25
.LBB37_31:                              # %._crit_edge
	ld.d	$a0, $a2, 0
	ld.d	$s0, $a2, 16
	sub.d	$a0, $s0, $a0
	srai.d	$fp, $a0, 3
	blez	$fp, .LBB37_59
# %bb.32:                               # %.lr.ph.i8.preheader
	ori	$s1, $zero, 2
	ori	$s2, $zero, 63
	ori	$s6, $zero, 1
	b	.LBB37_35
	.p2align	4, , 16
.LBB37_33:                              #   in Loop: Header=BB37_35 Depth=1
	srai.d	$a1, $a0, 6
.LBB37_34:                              #   in Loop: Header=BB37_35 Depth=1
	slli.d	$a2, $a1, 3
	ldx.d	$s5, $s4, $a2
	alsl.d	$s4, $a1, $s4, 3
	addi.d	$a2, $s5, 512
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	slli.d	$a1, $a1, 6
	sub.d	$a0, $a0, $a1
	alsl.d	$s7, $a0, $s5, 3
	sub.d	$fp, $fp, $s8
	blez	$fp, .LBB37_59
.LBB37_35:                              # %.lr.ph.i8
                                        # =>This Inner Loop Header: Depth=1
	sub.d	$a0, $s7, $s5
	srai.d	$a0, $a0, 3
	move	$a2, $a0
	move	$a1, $s7
	bne	$s7, $s5, .LBB37_37
# %bb.36:                               #   in Loop: Header=BB37_35 Depth=1
	ld.d	$a1, $s4, -8
	addi.d	$a1, $a1, 512
	ori	$a2, $zero, 64
.LBB37_37:                              #   in Loop: Header=BB37_35 Depth=1
	slt	$a3, $a2, $fp
	masknez	$a4, $fp, $a3
	maskeqz	$a2, $a2, $a3
	or	$s8, $a2, $a4
	sub.d	$s3, $zero, $s8
	slli.d	$a2, $s8, 3
	sub.d	$s0, $s0, $a2
	blt	$s8, $s1, .LBB37_43
# %bb.38:                               #   in Loop: Header=BB37_35 Depth=1
	alsl.d	$a0, $s3, $a1, 3
	move	$a1, $s0
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
	sub.d	$a0, $s7, $s5
	srai.d	$a0, $a0, 3
.LBB37_39:                              # %_ZSt23__copy_move_backward_a1ILb1EPdS0_ET1_T0_S2_S1_.exit.i16
                                        #   in Loop: Header=BB37_35 Depth=1
	sub.d	$a0, $a0, $s8
	bltz	$a0, .LBB37_33
# %bb.40:                               #   in Loop: Header=BB37_35 Depth=1
	bltu	$s2, $a0, .LBB37_42
# %bb.41:                               #   in Loop: Header=BB37_35 Depth=1
	alsl.d	$s7, $s3, $s7, 3
	sub.d	$fp, $fp, $s8
	bgtz	$fp, .LBB37_35
	b	.LBB37_59
	.p2align	4, , 16
.LBB37_42:                              #   in Loop: Header=BB37_35 Depth=1
	srli.d	$a1, $a0, 6
	b	.LBB37_34
.LBB37_43:                              #   in Loop: Header=BB37_35 Depth=1
	bne	$s8, $s6, .LBB37_39
# %bb.44:                               #   in Loop: Header=BB37_35 Depth=1
	fld.d	$fa0, $s0, 0
	fst.d	$fa0, $a1, -8
	b	.LBB37_39
.LBB37_45:
	ld.d	$a0, $a1, 0
	ld.d	$s0, $s6, 0
	ld.d	$s7, $a3, 0
	ld.d	$s5, $a3, 8
	ld.d	$a1, $a3, 16
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	ld.d	$s4, $a3, 24
	sub.d	$a0, $s0, $a0
	srai.d	$fp, $a0, 3
	blez	$fp, .LBB37_59
# %bb.46:                               # %.lr.ph.i54.preheader
	ori	$s1, $zero, 2
	ori	$s2, $zero, 63
	ori	$s3, $zero, 1
	b	.LBB37_49
	.p2align	4, , 16
.LBB37_47:                              #   in Loop: Header=BB37_49 Depth=1
	srai.d	$a1, $a0, 6
.LBB37_48:                              #   in Loop: Header=BB37_49 Depth=1
	slli.d	$a2, $a1, 3
	ldx.d	$s5, $s4, $a2
	alsl.d	$s4, $a1, $s4, 3
	addi.d	$a2, $s5, 512
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	slli.d	$a1, $a1, 6
	sub.d	$a0, $a0, $a1
	alsl.d	$s7, $a0, $s5, 3
	sub.d	$fp, $fp, $s8
	blez	$fp, .LBB37_59
.LBB37_49:                              # %.lr.ph.i54
                                        # =>This Inner Loop Header: Depth=1
	sub.d	$a0, $s7, $s5
	srai.d	$a0, $a0, 3
	move	$a2, $a0
	move	$a1, $s7
	bne	$s7, $s5, .LBB37_51
# %bb.50:                               #   in Loop: Header=BB37_49 Depth=1
	ld.d	$a1, $s4, -8
	addi.d	$a1, $a1, 512
	ori	$a2, $zero, 64
.LBB37_51:                              #   in Loop: Header=BB37_49 Depth=1
	slt	$a3, $a2, $fp
	masknez	$a4, $fp, $a3
	maskeqz	$a2, $a2, $a3
	or	$s8, $a2, $a4
	sub.d	$s6, $zero, $s8
	slli.d	$a2, $s8, 3
	sub.d	$s0, $s0, $a2
	blt	$s8, $s1, .LBB37_57
# %bb.52:                               #   in Loop: Header=BB37_49 Depth=1
	alsl.d	$a0, $s6, $a1, 3
	move	$a1, $s0
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
	sub.d	$a0, $s7, $s5
	srai.d	$a0, $a0, 3
.LBB37_53:                              # %_ZSt23__copy_move_backward_a1ILb1EPdS0_ET1_T0_S2_S1_.exit.i62
                                        #   in Loop: Header=BB37_49 Depth=1
	sub.d	$a0, $a0, $s8
	bltz	$a0, .LBB37_47
# %bb.54:                               #   in Loop: Header=BB37_49 Depth=1
	bltu	$s2, $a0, .LBB37_56
# %bb.55:                               #   in Loop: Header=BB37_49 Depth=1
	alsl.d	$s7, $s6, $s7, 3
	sub.d	$fp, $fp, $s8
	bgtz	$fp, .LBB37_49
	b	.LBB37_59
	.p2align	4, , 16
.LBB37_56:                              #   in Loop: Header=BB37_49 Depth=1
	srli.d	$a1, $a0, 6
	b	.LBB37_48
.LBB37_57:                              #   in Loop: Header=BB37_49 Depth=1
	bne	$s8, $s3, .LBB37_53
# %bb.58:                               #   in Loop: Header=BB37_49 Depth=1
	fld.d	$fa0, $s0, 0
	fst.d	$fa0, $a1, -8
	b	.LBB37_53
.LBB37_59:                              # %_ZSt23__copy_move_backward_a1ILb1EPddEN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS5_PS5_EE6__typeES3_S3_S8_.exit27
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	st.d	$s7, $a0, 0
	st.d	$s5, $a0, 8
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	st.d	$a1, $a0, 16
	st.d	$s4, $a0, 24
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
.Lfunc_end37:
	.size	_ZSt24__copy_move_backward_ditILb1EdRdPdSt15_Deque_iteratorIdS0_S1_EET3_S2_IT0_T1_T2_ES8_S4_, .Lfunc_end37-_ZSt24__copy_move_backward_ditILb1EdRdPdSt15_Deque_iteratorIdS0_S1_EET3_S2_IT0_T1_T2_ES8_S4_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIdERKd,"axG",@progbits,_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIdERKd,comdat
	.weak	_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIdERKd # -- Begin function _ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIdERKd
	.p2align	5
	.type	_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIdERKd,@function
_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIdERKd: # @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIdERKd
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -48
	.cfi_def_cfa_offset 48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	fst.d	$fs0, $sp, 0                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 56, -48
	move	$s0, $a0
	addi.d	$fp, $a0, 8
	beq	$fp, $a1, .LBB38_5
# %bb.1:
	move	$a0, $a1
	fld.d	$fs0, $a2, 0
	fld.d	$fa0, $a1, 32
	fcmp.cule.d	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB38_8
# %bb.2:
	ld.d	$s2, $s0, 24
	beq	$s2, $a0, .LBB38_19
# %bb.3:
	move	$s1, $a0
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $a0, 32
	fcmp.cule.d	$fcc0, $fs0, $fa0
	bcnez	$fcc0, .LBB38_20
# %bb.4:
	ld.d	$a1, $a0, 24
	sltui	$a1, $a1, 1
	move	$a2, $a0
	masknez	$a0, $s1, $a1
	maskeqz	$a1, $a2, $a1
	or	$a1, $a1, $a0
	b	.LBB38_35
.LBB38_5:
	ld.d	$a0, $s0, 40
	beqz	$a0, .LBB38_12
# %bb.6:
	ld.d	$a1, $s0, 32
	fld.d	$fa0, $a1, 32
	fld.d	$fa1, $a2, 0
	fcmp.clt.d	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB38_12
.LBB38_7:
	move	$a0, $zero
	b	.LBB38_35
.LBB38_8:
	fcmp.cule.d	$fcc0, $fs0, $fa0
	bcnez	$fcc0, .LBB38_34
# %bb.9:
	ld.d	$a1, $s0, 32
	beq	$a1, $a0, .LBB38_25
# %bb.10:
	move	$s1, $a0
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $a0, 32
	fcmp.cule.d	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB38_26
# %bb.11:
	ld.d	$a1, $s1, 24
	sltui	$a1, $a1, 1
	maskeqz	$a2, $s1, $a1
	masknez	$a0, $a0, $a1
	or	$a1, $a2, $a0
	b	.LBB38_35
.LBB38_12:
	ld.d	$a3, $s0, 16
	beqz	$a3, .LBB38_16
# %bb.13:                               # %.lr.ph.i
	fld.d	$fa0, $a2, 0
	ori	$a0, $zero, 24
	ori	$a1, $zero, 16
	.p2align	4, , 16
.LBB38_14:                              # =>This Inner Loop Header: Depth=1
	move	$fp, $a3
	fld.d	$fa1, $a3, 32
	fcmp.clt.d	$fcc0, $fa0, $fa1
	movcf2gr	$a3, $fcc0
	masknez	$a4, $a0, $a3
	maskeqz	$a3, $a1, $a3
	or	$a3, $a3, $a4
	ldx.d	$a3, $fp, $a3
	bnez	$a3, .LBB38_14
# %bb.15:                               # %._crit_edge.i
	fcmp.cule.d	$fcc0, $fa1, $fa0
	move	$a0, $fp
	bcnez	$fcc0, .LBB38_18
.LBB38_16:                              # %._crit_edge.thread.i
	ld.d	$a0, $s0, 24
	beq	$fp, $a0, .LBB38_33
# %bb.17:
	move	$a0, $fp
	move	$s0, $a2
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $a0, 32
	fld.d	$fa0, $s0, 0
.LBB38_18:
	fcmp.clt.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB38_33
	b	.LBB38_34
.LBB38_19:
	move	$a1, $a0
	b	.LBB38_35
.LBB38_20:
	ld.d	$a3, $s0, 16
	move	$a1, $s2
	beqz	$a3, .LBB38_24
# %bb.21:                               # %.lr.ph.i22.preheader
	ori	$a0, $zero, 24
	ori	$a2, $zero, 16
	.p2align	4, , 16
.LBB38_22:                              # %.lr.ph.i22
                                        # =>This Inner Loop Header: Depth=1
	move	$fp, $a3
	fld.d	$fa0, $a3, 32
	fcmp.clt.d	$fcc0, $fs0, $fa0
	movcf2gr	$a3, $fcc0
	masknez	$a4, $a0, $a3
	maskeqz	$a3, $a2, $a3
	or	$a3, $a3, $a4
	ldx.d	$a3, $fp, $a3
	bnez	$a3, .LBB38_22
# %bb.23:                               # %._crit_edge.i28
	fcmp.cule.d	$fcc0, $fa0, $fs0
	move	$a0, $fp
	bcnez	$fcc0, .LBB38_32
.LBB38_24:                              # %._crit_edge.thread.i35
	bne	$fp, $a1, .LBB38_31
	b	.LBB38_7
.LBB38_25:
	move	$a1, $a0
	move	$a0, $zero
	b	.LBB38_35
.LBB38_26:
	ld.d	$a2, $s0, 16
	beqz	$a2, .LBB38_30
# %bb.27:                               # %.lr.ph.i40.preheader
	ori	$a0, $zero, 24
	ori	$a1, $zero, 16
	.p2align	4, , 16
.LBB38_28:                              # %.lr.ph.i40
                                        # =>This Inner Loop Header: Depth=1
	move	$fp, $a2
	fld.d	$fa0, $a2, 32
	fcmp.clt.d	$fcc0, $fs0, $fa0
	movcf2gr	$a2, $fcc0
	masknez	$a3, $a0, $a2
	maskeqz	$a2, $a1, $a2
	or	$a2, $a2, $a3
	ldx.d	$a2, $fp, $a2
	bnez	$a2, .LBB38_28
# %bb.29:                               # %._crit_edge.i46
	fcmp.cule.d	$fcc0, $fa0, $fs0
	move	$a0, $fp
	bcnez	$fcc0, .LBB38_32
.LBB38_30:                              # %._crit_edge.thread.i53
	ld.d	$a0, $s0, 24
	beq	$fp, $a0, .LBB38_33
.LBB38_31:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $a0, 32
.LBB38_32:
	fcmp.clt.d	$fcc0, $fa0, $fs0
	bceqz	$fcc0, .LBB38_34
.LBB38_33:
	move	$a0, $zero
	move	$a1, $fp
	b	.LBB38_35
.LBB38_34:
	move	$a1, $zero
.LBB38_35:                              # %_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE24_M_get_insert_unique_posERKd.exit
	fld.d	$fs0, $sp, 0                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end38:
	.size	_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIdERKd, .Lfunc_end38-_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIdERKd
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE16_M_insert_equal_IRdNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIdESt23_Rb_tree_const_iteratorIdEOT_RT0_,"axG",@progbits,_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE16_M_insert_equal_IRdNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIdESt23_Rb_tree_const_iteratorIdEOT_RT0_,comdat
	.weak	_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE16_M_insert_equal_IRdNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIdESt23_Rb_tree_const_iteratorIdEOT_RT0_ # -- Begin function _ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE16_M_insert_equal_IRdNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIdESt23_Rb_tree_const_iteratorIdEOT_RT0_
	.p2align	5
	.type	_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE16_M_insert_equal_IRdNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIdESt23_Rb_tree_const_iteratorIdEOT_RT0_,@function
_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE16_M_insert_equal_IRdNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIdESt23_Rb_tree_const_iteratorIdEOT_RT0_: # @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE16_M_insert_equal_IRdNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIdESt23_Rb_tree_const_iteratorIdEOT_RT0_
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
	fst.d	$fs0, $sp, 8                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 56, -56
	move	$s1, $a2
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE28_M_get_insert_hint_equal_posESt23_Rb_tree_const_iteratorIdERKd)
	jirl	$ra, $ra, 0
	beqz	$a1, .LBB39_5
# %bb.1:
	move	$s0, $a1
	fld.d	$fs0, $s1, 0
	addi.d	$s1, $fp, 8
	ori	$s3, $zero, 1
	bnez	$a0, .LBB39_4
# %bb.2:
	beq	$s1, $s0, .LBB39_4
# %bb.3:
	fld.d	$fa0, $s0, 32
	fcmp.clt.d	$fcc0, $fs0, $fa0
	movcf2gr	$s3, $fcc0
.LBB39_4:                               # %_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE10_M_insert_IRdNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIdEPSt18_Rb_tree_node_baseSC_OT_RT0_.exit
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	fst.d	$fs0, $a0, 32
	move	$a0, $s3
	move	$a1, $s2
	move	$a2, $s0
	move	$a3, $s1
	b	.LBB39_11
.LBB39_5:
	ld.d	$a2, $fp, 16
	fld.d	$fs0, $s1, 0
	addi.d	$s0, $fp, 8
	beqz	$a2, .LBB39_9
# %bb.6:                                # %.lr.ph.i.preheader
	ori	$a0, $zero, 16
	ori	$a1, $zero, 24
	.p2align	4, , 16
.LBB39_7:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	move	$s1, $a2
	fld.d	$fa0, $a2, 32
	fcmp.clt.d	$fcc0, $fa0, $fs0
	movcf2gr	$a2, $fcc0
	masknez	$a3, $a0, $a2
	maskeqz	$a2, $a1, $a2
	or	$a2, $a2, $a3
	ldx.d	$a2, $s1, $a2
	bnez	$a2, .LBB39_7
# %bb.8:                                # %._crit_edge.i
	xor	$a0, $s1, $s0
	fcmp.cule.d	$fcc0, $fs0, $fa0
	sltui	$a0, $a0, 1
	movcf2gr	$a1, $fcc0
	or	$s3, $a0, $a1
	b	.LBB39_10
.LBB39_9:
	ori	$s3, $zero, 1
	move	$s1, $s0
.LBB39_10:                              # %_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE21_M_insert_equal_lowerIRdEESt17_Rb_tree_iteratorIdEOT_.exit
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	fst.d	$fs0, $a0, 32
	move	$a0, $s3
	move	$a1, $s2
	move	$a2, $s1
	move	$a3, $s0
.LBB39_11:
	pcaddu18i	$ra, %call36(_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 40
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, 40
	move	$a0, $s2
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end39:
	.size	_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE16_M_insert_equal_IRdNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIdESt23_Rb_tree_const_iteratorIdEOT_RT0_, .Lfunc_end39-_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE16_M_insert_equal_IRdNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIdESt23_Rb_tree_const_iteratorIdEOT_RT0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE28_M_get_insert_hint_equal_posESt23_Rb_tree_const_iteratorIdERKd,"axG",@progbits,_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE28_M_get_insert_hint_equal_posESt23_Rb_tree_const_iteratorIdERKd,comdat
	.weak	_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE28_M_get_insert_hint_equal_posESt23_Rb_tree_const_iteratorIdERKd # -- Begin function _ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE28_M_get_insert_hint_equal_posESt23_Rb_tree_const_iteratorIdERKd
	.p2align	5
	.type	_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE28_M_get_insert_hint_equal_posESt23_Rb_tree_const_iteratorIdERKd,@function
_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE28_M_get_insert_hint_equal_posESt23_Rb_tree_const_iteratorIdERKd: # @_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE28_M_get_insert_hint_equal_posESt23_Rb_tree_const_iteratorIdERKd
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -48
	.cfi_def_cfa_offset 48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 8                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 56, -40
	addi.d	$fp, $a0, 8
	beq	$fp, $a1, .LBB40_5
# %bb.1:
	fld.d	$fa0, $a1, 32
	fld.d	$fs0, $a2, 0
	fcmp.clt.d	$fcc0, $fa0, $fs0
	bceqz	$fcc0, .LBB40_10
# %bb.2:
	ld.d	$a0, $a0, 32
	beq	$a0, $a1, .LBB40_16
# %bb.3:
	move	$fp, $a1
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $a0, 32
	fcmp.clt.d	$fcc0, $fa0, $fs0
	bceqz	$fcc0, .LBB40_18
# %bb.4:
	move	$a0, $zero
	move	$fp, $zero
	b	.LBB40_21
.LBB40_5:
	ld.d	$a3, $a0, 40
	beqz	$a3, .LBB40_7
# %bb.6:
	ld.d	$fp, $a0, 32
	fld.d	$fa0, $a2, 0
	fld.d	$fa1, $fp, 32
	fcmp.cule.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB40_15
.LBB40_7:
	ld.d	$a3, $a0, 16
	beqz	$a3, .LBB40_16
# %bb.8:                                # %.lr.ph.i
	fld.d	$fa0, $a2, 0
	ori	$a0, $zero, 24
	ori	$a1, $zero, 16
	.p2align	4, , 16
.LBB40_9:                               # =>This Inner Loop Header: Depth=1
	move	$fp, $a3
	fld.d	$fa1, $a3, 32
	fcmp.clt.d	$fcc0, $fa0, $fa1
	movcf2gr	$a2, $fcc0
	masknez	$a3, $a0, $a2
	maskeqz	$a2, $a1, $a2
	or	$a2, $a2, $a3
	ldx.d	$a3, $fp, $a2
	bnez	$a3, .LBB40_9
	b	.LBB40_15
.LBB40_10:
	ld.d	$a2, $a0, 24
	beq	$a2, $a1, .LBB40_17
# %bb.11:
	move	$s1, $a0
	move	$s0, $a1
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $a0, 32
	fcmp.clt.d	$fcc0, $fs0, $fa0
	bceqz	$fcc0, .LBB40_19
# %bb.12:
	ld.d	$a2, $s1, 16
	beqz	$a2, .LBB40_15
# %bb.13:                               # %.lr.ph.i16.preheader
	ori	$a0, $zero, 24
	ori	$a1, $zero, 16
	.p2align	4, , 16
.LBB40_14:                              # %.lr.ph.i16
                                        # =>This Inner Loop Header: Depth=1
	move	$fp, $a2
	fld.d	$fa0, $a2, 32
	fcmp.clt.d	$fcc0, $fs0, $fa0
	movcf2gr	$a2, $fcc0
	masknez	$a3, $a0, $a2
	maskeqz	$a2, $a1, $a2
	or	$a2, $a2, $a3
	ldx.d	$a2, $fp, $a2
	bnez	$a2, .LBB40_14
.LBB40_15:
	move	$a0, $zero
	b	.LBB40_21
.LBB40_16:
	move	$a0, $zero
	move	$fp, $a1
	b	.LBB40_21
.LBB40_17:
	move	$a0, $a1
	move	$fp, $a1
	b	.LBB40_21
.LBB40_18:
	ld.d	$a1, $fp, 24
	sltui	$a1, $a1, 1
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $fp, $a1
	b	.LBB40_20
.LBB40_19:
	ld.d	$a1, $a0, 24
	sltui	$a1, $a1, 1
	move	$a2, $a0
	masknez	$a0, $s0, $a1
	maskeqz	$a1, $a2, $a1
.LBB40_20:                              # %_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE23_M_get_insert_equal_posERKd.exit
	or	$fp, $a1, $a0
.LBB40_21:                              # %_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE23_M_get_insert_equal_posERKd.exit
	move	$a1, $fp
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end40:
	.size	_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE28_M_get_insert_hint_equal_posESt23_Rb_tree_const_iteratorIdERKd, .Lfunc_end40-_ZNSt8_Rb_treeIddSt9_IdentityIdESt4lessIdESaIdEE28_M_get_insert_hint_equal_posESt23_Rb_tree_const_iteratorIdERKd
	.cfi_endproc
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	5                               # -- Begin function _GLOBAL__sub_I_stepanov_container.cpp
	.type	_GLOBAL__sub_I_stepanov_container.cpp,@function
_GLOBAL__sub_I_stepanov_container.cpp:  # @_GLOBAL__sub_I_stepanov_container.cpp
# %bb.0:
	pcalau12i	$a0, %pc_hi20(result_times)
	addi.d	$a1, $a0, %pc_lo12(result_times)
	st.d	$zero, $a1, 16
	vrepli.b	$vr0, 0
	vst	$vr0, $a1, 0
	pcalau12i	$a0, %pc_hi20(_ZNSt6vectorIdSaIdEED2Ev)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt6vectorIdSaIdEED2Ev)
	pcalau12i	$a2, %pc_hi20(__dso_handle)
	addi.d	$a2, $a2, %pc_lo12(__dso_handle)
	pcaddu18i	$t8, %call36(__cxa_atexit)
	jr	$t8
.Lfunc_end41:
	.size	_GLOBAL__sub_I_stepanov_container.cpp, .Lfunc_end41-_GLOBAL__sub_I_stepanov_container.cpp
                                        # -- End function
	.type	result_times,@object            # @result_times
	.bss
	.globl	result_times
	.p2align	3, 0x0
result_times:
	.space	24
	.size	result_times, 24

	.hidden	__dso_handle
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"cannot create std::vector larger than max_size()"
	.size	.L.str, 49

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"cannot create std::deque larger than max_size()"
	.size	.L.str.1, 48

	.section	.init_array,"aw",@init_array
	.p2align	3, 0x0
	.dword	_GLOBAL__sub_I_stepanov_container.cpp
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
	.addrsig_sym _GLOBAL__sub_I_stepanov_container.cpp
	.addrsig_sym _Unwind_Resume
	.addrsig_sym result_times
	.addrsig_sym __dso_handle
