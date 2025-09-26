	.file	"MallocPlus.cpp"
	.text
	.globl	_ZN10MallocPlus13memory_mallocEmmPKci # -- Begin function _ZN10MallocPlus13memory_mallocEmmPKci
	.p2align	5
	.type	_ZN10MallocPlus13memory_mallocEmmPKci,@function
_ZN10MallocPlus13memory_mallocEmmPKci:  # @_ZN10MallocPlus13memory_mallocEmmPKci
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	move	$s4, $a4
	move	$s1, $a3
	move	$s2, $a2
	move	$s3, $a1
	move	$s0, $a0
	ori	$a0, $zero, 56
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 16
	st.d	$s3, $a0, 0
	ori	$a0, $zero, 1
	st.d	$a0, $fp, 24
	st.d	$s2, $fp, 32
	andi	$a0, $s4, 2
	st.w	$s4, $fp, 40
	bnez	$a0, .LBB0_5
# %bb.1:
	andi	$a0, $s4, 1
	bnez	$a0, .LBB0_3
# %bb.2:
	st.d	$s3, $fp, 8
	mul.d	$a0, $s2, $s3
	b	.LBB0_4
.LBB0_3:
	slli.d	$a0, $s3, 1
	st.d	$a0, $fp, 8
	mul.d	$a0, $a0, $s2
.LBB0_4:                                # %.sink.split
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 0
.LBB0_5:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strdup)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 48
	addi.d	$s3, $sp, 24
	st.d	$s3, $sp, 8
	beqz	$s1, .LBB0_28
# %bb.6:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ori	$a1, $zero, 16
	st.d	$a0, $sp, 48
	move	$a0, $s3
	bltu	$s2, $a1, .LBB0_8
# %bb.7:                                # %.noexc.i.i
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 48
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 48
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
.LBB0_8:                                # %._crit_edge.i.i.i
	beqz	$s2, .LBB0_12
# %bb.9:                                # %._crit_edge.i.i.i
	ori	$a1, $zero, 1
	bne	$s2, $a1, .LBB0_11
# %bb.10:
	ld.b	$a1, $s1, 0
	st.b	$a1, $a0, 0
	b	.LBB0_12
.LBB0_11:
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB0_12:                               # %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entryEC2IRPKcRS7_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISF_SG_EEEbE4typeELb1EEEOSF_OSG_.exit
	ld.d	$a0, $sp, 48
	ld.d	$a1, $sp, 8
	st.d	$a0, $sp, 16
	stx.b	$zero, $a1, $a0
	st.d	$fp, $sp, 40
.Ltmp0:                                 # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE6insertISA_IS5_S7_EEENSt9enable_ifIXsr16is_constructibleISC_T_EE5valueESA_ISt17_Rb_tree_iteratorISC_EbEE4typeEOSI_)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.13:
	ld.d	$a0, $sp, 8
	beq	$a0, $s3, .LBB0_15
# %bb.14:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_15:                               # %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entryED2Ev.exit
	ld.d	$a0, $s0, 64
	ld.d	$s6, $fp, 0
	addi.d	$s1, $s0, 56
	move	$s4, $s1
	beqz	$a0, .LBB0_20
# %bb.16:                               # %.lr.ph.i.i.i.i.preheader
	ori	$a2, $zero, 16
	ori	$a3, $zero, 24
	move	$a1, $s1
	.p2align	4, , 16
.LBB0_17:                               # %.lr.ph.i.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a0, 32
	sltu	$a4, $a4, $s6
	masknez	$a5, $a0, $a4
	masknez	$a6, $a2, $a4
	maskeqz	$a7, $a3, $a4
	or	$a6, $a7, $a6
	ldx.d	$a0, $a0, $a6
	maskeqz	$a1, $a1, $a4
	or	$a1, $a1, $a5
	bnez	$a0, .LBB0_17
# %bb.18:                               # %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i
	move	$s4, $s1
	beq	$a1, $s1, .LBB0_20
# %bb.19:
	ld.d	$a0, $a1, 32
	move	$s4, $a1
	bgeu	$s6, $a0, .LBB0_27
.LBB0_20:                               # %.critedge.i
	addi.d	$s5, $s0, 48
	ori	$a0, $zero, 48
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	addi.d	$s3, $a0, 32
	st.d	$s6, $a0, 32
	st.d	$fp, $a0, 40
.Ltmp3:                                 # EH_LABEL
	move	$a0, $s5
	move	$a1, $s4
	move	$a2, $s3
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS2_)
	jirl	$ra, $ra, 0
.Ltmp4:                                 # EH_LABEL
# %bb.21:
	move	$a2, $a1
	beqz	$a1, .LBB0_26
# %bb.22:
	move	$a3, $a0
	ori	$a0, $zero, 1
	bnez	$a3, .LBB0_25
# %bb.23:
	beq	$s1, $a2, .LBB0_25
# %bb.24:
	ld.d	$a0, $s3, 0
	ld.d	$a1, $a2, 32
	sltu	$a0, $a0, $a1
.LBB0_25:                               # %.thread.i
	move	$a1, $s2
	move	$a3, $s1
	pcaddu18i	$ra, %call36(_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 88
	addi.d	$a0, $a0, 1
	st.d	$a0, $s0, 88
	b	.LBB0_27
.LBB0_26:
	ori	$a1, $zero, 48
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_27:                               # %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE6insertIS5_IS0_S2_EEENSt9enable_ifIXsr16is_constructibleIS7_T_EE5valueES5_ISt17_Rb_tree_iteratorIS7_EbEE4typeEOSD_.exit
	ld.d	$a0, $fp, 0
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
.LBB0_28:                               # %.noexc.i
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	pcaddu18i	$ra, %call36(_ZSt19__throw_logic_errorPKc)
	jirl	$ra, $ra, 0
.LBB0_29:                               # %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i
.Ltmp5:                                 # EH_LABEL
	move	$fp, $a0
	ori	$a1, $zero, 48
	move	$a0, $s2
	b	.LBB0_32
.LBB0_30:
.Ltmp2:                                 # EH_LABEL
	ld.d	$a2, $sp, 8
	move	$fp, $a0
	beq	$a2, $s3, .LBB0_33
# %bb.31:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i18
	ld.d	$a0, $sp, 24
	addi.d	$a1, $a0, 1
	move	$a0, $a2
.LBB0_32:                               # %common.resume
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_33:                               # %common.resume
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	_ZN10MallocPlus13memory_mallocEmmPKci, .Lfunc_end0-_ZN10MallocPlus13memory_mallocEmmPKci
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table0:
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
	.uleb128 .Ltmp1-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp1
	.uleb128 .Ltmp2-.Lfunc_begin0           #     jumps to .Ltmp2
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp3-.Ltmp1                  #   Call between .Ltmp1 and .Ltmp3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp3-.Lfunc_begin0           # >> Call Site 4 <<
	.uleb128 .Ltmp4-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp4
	.uleb128 .Ltmp5-.Lfunc_begin0           #     jumps to .Ltmp5
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp4-.Lfunc_begin0           # >> Call Site 5 <<
	.uleb128 .Lfunc_end0-.Ltmp4             #   Call between .Ltmp4 and .Lfunc_end0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE6insertISA_IS5_S7_EEENSt9enable_ifIXsr16is_constructibleISC_T_EE5valueESA_ISt17_Rb_tree_iteratorISC_EbEE4typeEOSI_,"axG",@progbits,_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE6insertISA_IS5_S7_EEENSt9enable_ifIXsr16is_constructibleISC_T_EE5valueESA_ISt17_Rb_tree_iteratorISC_EbEE4typeEOSI_,comdat
	.weak	_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE6insertISA_IS5_S7_EEENSt9enable_ifIXsr16is_constructibleISC_T_EE5valueESA_ISt17_Rb_tree_iteratorISC_EbEE4typeEOSI_ # -- Begin function _ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE6insertISA_IS5_S7_EEENSt9enable_ifIXsr16is_constructibleISC_T_EE5valueESA_ISt17_Rb_tree_iteratorISC_EbEE4typeEOSI_
	.p2align	5
	.type	_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE6insertISA_IS5_S7_EEENSt9enable_ifIXsr16is_constructibleISC_T_EE5valueESA_ISt17_Rb_tree_iteratorISC_EbEE4typeEOSI_,@function
_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE6insertISA_IS5_S7_EEENSt9enable_ifIXsr16is_constructibleISC_T_EE5valueESA_ISt17_Rb_tree_iteratorISC_EbEE4typeEOSI_: # @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE6insertISA_IS5_S7_EEENSt9enable_ifIXsr16is_constructibleISC_T_EE5valueESA_ISt17_Rb_tree_iteratorISC_EbEE4typeEOSI_
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
	ld.d	$s7, $a0, 16
	move	$a2, $a1
	addi.d	$s6, $a0, 8
	beqz	$s7, .LBB1_11
# %bb.1:                                # %.lr.ph.i.i.i
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	ld.d	$s5, $a2, 8
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	ld.d	$s2, $a2, 0
	lu12i.w	$s4, -524288
	lu12i.w	$a0, 524287
	ori	$s3, $a0, 4095
	ori	$s8, $zero, 16
	ori	$s0, $zero, 24
	move	$s1, $s6
	b	.LBB1_4
	.p2align	4, , 16
.LBB1_2:                                # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i
                                        #   in Loop: Header=BB1_4 Depth=1
	sub.d	$a0, $fp, $s5
	slt	$a1, $s4, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s4, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $s3
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s3, $a1
	or	$a0, $a0, $a1
.LBB1_3:                                # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
                                        #   in Loop: Header=BB1_4 Depth=1
	addi.w	$a0, $a0, 0
	slti	$a0, $a0, 0
	masknez	$a1, $s7, $a0
	masknez	$a2, $s8, $a0
	maskeqz	$a3, $s0, $a0
	or	$a2, $a3, $a2
	ldx.d	$s7, $s7, $a2
	maskeqz	$a0, $s1, $a0
	or	$s1, $a0, $a1
	beqz	$s7, .LBB1_6
.LBB1_4:                                # =>This Inner Loop Header: Depth=1
	ld.d	$fp, $s7, 40
	sltu	$a0, $s5, $fp
	masknez	$a1, $fp, $a0
	maskeqz	$a0, $s5, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB1_2
# %bb.5:                                # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
                                        #   in Loop: Header=BB1_4 Depth=1
	ld.d	$a0, $s7, 32
	move	$a1, $s2
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_3
	b	.LBB1_2
.LBB1_6:                                # %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_.exit
	beq	$s1, $s6, .LBB1_14
# %bb.7:
	ld.d	$fp, $s1, 40
	sltu	$a0, $fp, $s5
	masknez	$a1, $s5, $a0
	maskeqz	$a0, $fp, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB1_12
# %bb.8:                                # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i
	ld.d	$a1, $s1, 32
	move	$a0, $s2
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_12
# %bb.9:                                # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
	addi.w	$a0, $a0, 0
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	bltz	$a0, .LBB1_13
.LBB1_10:
	move	$a1, $zero
	b	.LBB1_16
.LBB1_11:                               # %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_.exit.thread
	move	$s1, $s6
	b	.LBB1_15
.LBB1_12:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
	sub.d	$a0, $s5, $fp
	slt	$a1, $s4, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s4, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $s3
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s3, $a1
	or	$a0, $a0, $a1
	addi.w	$a0, $a0, 0
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	bgez	$a0, .LBB1_10
.LBB1_13:
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	b	.LBB1_15
.LBB1_14:
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
.LBB1_15:                               # %.critedge
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJS6_IS5_S9_EEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ori	$a1, $zero, 1
.LBB1_16:
	move	$a0, $s1
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
.Lfunc_end1:
	.size	_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE6insertISA_IS5_S7_EEENSt9enable_ifIXsr16is_constructibleISC_T_EE5valueESA_ISt17_Rb_tree_iteratorISC_EbEE4typeEOSI_, .Lfunc_end1-_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE6insertISA_IS5_S7_EEENSt9enable_ifIXsr16is_constructibleISC_T_EE5valueESA_ISt17_Rb_tree_iteratorISC_EbEE4typeEOSI_
	.cfi_endproc
                                        # -- End function
	.text
	.globl	_ZN10MallocPlus14memory_reallocEmPv # -- Begin function _ZN10MallocPlus14memory_reallocEmPv
	.p2align	5
	.type	_ZN10MallocPlus14memory_reallocEmPv,@function
_ZN10MallocPlus14memory_reallocEmPv:    # @_ZN10MallocPlus14memory_reallocEmPv
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception1
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
	ld.d	$a3, $a0, 64
	beqz	$a3, .LBB2_5
# %bb.1:                                # %.lr.ph.i.i.i.preheader
	move	$fp, $a0
	addi.d	$s1, $a0, 48
	addi.d	$s0, $a0, 56
	ori	$a4, $zero, 16
	ori	$a5, $zero, 24
	move	$a0, $s0
	.p2align	4, , 16
.LBB2_2:                                # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a6, $a3, 32
	sltu	$a6, $a6, $a2
	masknez	$a7, $a3, $a6
	masknez	$t0, $a4, $a6
	maskeqz	$t1, $a5, $a6
	or	$t0, $t1, $t0
	ldx.d	$a3, $a3, $t0
	maskeqz	$a0, $a0, $a6
	or	$a0, $a0, $a7
	bnez	$a3, .LBB2_2
# %bb.3:                                # %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i
	beq	$a0, $s0, .LBB2_5
# %bb.4:                                # %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit
	ld.d	$a3, $a0, 32
	bgeu	$a2, $a3, .LBB2_7
.LBB2_5:
	move	$a0, $zero
.LBB2_6:                                # %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE6insertIS5_IS0_S2_EEENSt9enable_ifIXsr16is_constructibleIS7_T_EE5valueES5_ISt17_Rb_tree_iteratorIS7_EbEE4typeEOSD_.exit
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
.LBB2_7:
	move	$s2, $a1
	ld.d	$s6, $a0, 40
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 48
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 88
	addi.d	$a0, $a0, -1
	st.d	$a0, $fp, 88
	ld.bu	$a0, $s6, 40
	andi	$a0, $a0, 1
	bnez	$a0, .LBB2_9
# %bb.8:
	ld.d	$a1, $s6, 32
	ld.d	$a0, $s6, 0
	move	$s3, $s2
	mul.d	$a1, $a1, $s2
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s6, 16
	move	$s2, $a0
	st.d	$s3, $s6, 8
	st.d	$s3, $a1, 0
	b	.LBB2_11
.LBB2_9:
	ld.d	$a0, $s6, 8
	move	$a2, $s2
	bgeu	$a0, $s2, .LBB2_12
# %bb.10:
	ld.d	$a1, $s6, 32
	ld.d	$a0, $s6, 0
	slli.d	$s3, $a2, 1
	mul.d	$a1, $a1, $s3
	move	$s4, $a2
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s6, 16
	move	$s2, $a0
	st.d	$s3, $s6, 8
	st.d	$s4, $a1, 0
.LBB2_11:
	st.d	$a0, $s6, 0
	ld.d	$a1, $fp, 64
	move	$s5, $s0
	bnez	$a1, .LBB2_13
	b	.LBB2_17
.LBB2_12:
	ld.d	$a1, $s6, 16
	ld.d	$s2, $s6, 0
	move	$a0, $zero
	st.d	$a2, $a1, 0
	ld.d	$a1, $fp, 64
	move	$s5, $s0
	beqz	$a1, .LBB2_17
.LBB2_13:                               # %.lr.ph.i.i.i.i.preheader
	ori	$a3, $zero, 16
	ori	$a4, $zero, 24
	move	$a2, $s0
	.p2align	4, , 16
.LBB2_14:                               # %.lr.ph.i.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a1, 32
	sltu	$a5, $a5, $s2
	masknez	$a6, $a1, $a5
	masknez	$a7, $a3, $a5
	maskeqz	$t0, $a4, $a5
	or	$a7, $t0, $a7
	ldx.d	$a1, $a1, $a7
	maskeqz	$a2, $a2, $a5
	or	$a2, $a2, $a6
	bnez	$a1, .LBB2_14
# %bb.15:                               # %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i
	move	$s5, $s0
	beq	$a2, $s0, .LBB2_17
# %bb.16:
	ld.d	$a1, $a2, 32
	move	$s5, $a2
	bgeu	$s2, $a1, .LBB2_6
.LBB2_17:                               # %.critedge.i
	move	$s7, $a0
	ori	$a0, $zero, 48
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	addi.d	$s4, $a0, 32
	st.d	$s2, $a0, 32
	st.d	$s6, $a0, 40
.Ltmp6:                                 # EH_LABEL
	move	$a0, $s1
	move	$a1, $s5
	move	$a2, $s4
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS2_)
	jirl	$ra, $ra, 0
.Ltmp7:                                 # EH_LABEL
# %bb.18:
	move	$a2, $a1
	beqz	$a1, .LBB2_23
# %bb.19:
	move	$a3, $a0
	ori	$a0, $zero, 1
	bnez	$a3, .LBB2_22
# %bb.20:
	beq	$s0, $a2, .LBB2_22
# %bb.21:
	ld.d	$a0, $s4, 0
	ld.d	$a1, $a2, 32
	sltu	$a0, $a0, $a1
.LBB2_22:                               # %.thread.i
	move	$a1, $s3
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 88
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, 88
	b	.LBB2_24
.LBB2_23:
	ori	$a1, $zero, 48
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB2_24:                               # %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE6insertIS5_IS0_S2_EEENSt9enable_ifIXsr16is_constructibleIS7_T_EE5valueES5_ISt17_Rb_tree_iteratorIS7_EbEE4typeEOSD_.exit
	move	$a0, $s7
	b	.LBB2_6
.LBB2_25:                               # %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i
.Ltmp8:                                 # EH_LABEL
	move	$fp, $a0
	ori	$a1, $zero, 48
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	_ZN10MallocPlus14memory_reallocEmPv, .Lfunc_end2-_ZN10MallocPlus14memory_reallocEmPv
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table2:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Lfunc_begin1-.Lfunc_begin1    # >> Call Site 1 <<
	.uleb128 .Ltmp6-.Lfunc_begin1           #   Call between .Lfunc_begin1 and .Ltmp6
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp6-.Lfunc_begin1           # >> Call Site 2 <<
	.uleb128 .Ltmp7-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp7
	.uleb128 .Ltmp8-.Lfunc_begin1           #     jumps to .Ltmp8
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp7-.Lfunc_begin1           # >> Call Site 3 <<
	.uleb128 .Lfunc_end2-.Ltmp7             #   Call between .Ltmp7 and .Lfunc_end2
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN10MallocPlus14memory_reallocEmPKc # -- Begin function _ZN10MallocPlus14memory_reallocEmPKc
	.p2align	5
	.type	_ZN10MallocPlus14memory_reallocEmPKc,@function
_ZN10MallocPlus14memory_reallocEmPKc:   # @_ZN10MallocPlus14memory_reallocEmPKc
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception2
# %bb.0:
	addi.d	$sp, $sp, -160
	.cfi_def_cfa_offset 160
	st.d	$ra, $sp, 152                   # 8-byte Folded Spill
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	st.d	$s0, $sp, 136                   # 8-byte Folded Spill
	st.d	$s1, $sp, 128                   # 8-byte Folded Spill
	st.d	$s2, $sp, 120                   # 8-byte Folded Spill
	st.d	$s3, $sp, 112                   # 8-byte Folded Spill
	st.d	$s4, $sp, 104                   # 8-byte Folded Spill
	st.d	$s5, $sp, 96                    # 8-byte Folded Spill
	st.d	$s6, $sp, 88                    # 8-byte Folded Spill
	st.d	$s7, $sp, 80                    # 8-byte Folded Spill
	st.d	$s8, $sp, 72                    # 8-byte Folded Spill
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
	addi.d	$s3, $sp, 48
	st.d	$s3, $sp, 32
	beqz	$a2, .LBB3_45
# %bb.1:
	move	$s1, $a2
	move	$s0, $a1
	move	$fp, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ori	$a1, $zero, 16
	st.d	$a0, $sp, 64
	move	$a0, $s3
	bltu	$s2, $a1, .LBB3_3
# %bb.2:                                # %.noexc.i
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 64
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 64
	st.d	$a0, $sp, 32
	st.d	$a1, $sp, 48
.LBB3_3:                                # %._crit_edge.i.i
	beqz	$s2, .LBB3_7
# %bb.4:                                # %._crit_edge.i.i
	ori	$a1, $zero, 1
	bne	$s2, $a1, .LBB3_6
# %bb.5:
	ld.b	$a1, $s1, 0
	st.b	$a1, $a0, 0
	b	.LBB3_7
.LBB3_6:
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB3_7:
	st.d	$s0, $sp, 16                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 64
	ld.d	$a1, $sp, 32
	st.d	$a0, $sp, 40
	stx.b	$zero, $a1, $a0
	ld.d	$s8, $fp, 16
	ld.d	$s1, $sp, 32
	st.d	$fp, $sp, 24                    # 8-byte Folded Spill
	addi.d	$s2, $fp, 8
	move	$s0, $s2
	beqz	$s8, .LBB3_18
# %bb.8:                                # %.lr.ph.i.i.i
	ld.d	$s7, $sp, 40
	lu12i.w	$s6, -524288
	lu12i.w	$a0, 524287
	ori	$s5, $a0, 4095
	ori	$s0, $zero, 16
	ori	$s3, $zero, 24
	move	$s4, $s2
	b	.LBB3_11
	.p2align	4, , 16
.LBB3_9:                                # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i
                                        #   in Loop: Header=BB3_11 Depth=1
	sub.d	$a0, $fp, $s7
	slt	$a1, $s6, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s6, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $s5
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s5, $a1
	or	$a0, $a0, $a1
.LBB3_10:                               # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
                                        #   in Loop: Header=BB3_11 Depth=1
	addi.w	$a0, $a0, 0
	slti	$a0, $a0, 0
	masknez	$a1, $s8, $a0
	masknez	$a2, $s0, $a0
	maskeqz	$a3, $s3, $a0
	or	$a2, $a3, $a2
	ldx.d	$s8, $s8, $a2
	maskeqz	$a0, $s4, $a0
	or	$s4, $a0, $a1
	beqz	$s8, .LBB3_13
.LBB3_11:                               # =>This Inner Loop Header: Depth=1
	ld.d	$fp, $s8, 40
	sltu	$a0, $s7, $fp
	masknez	$a1, $fp, $a0
	maskeqz	$a0, $s7, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB3_9
# %bb.12:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
                                        #   in Loop: Header=BB3_11 Depth=1
	ld.d	$a0, $s8, 32
	move	$a1, $s1
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB3_10
	b	.LBB3_9
.LBB3_13:                               # %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i
	move	$s0, $s2
	addi.d	$s3, $sp, 48
	beq	$s4, $s2, .LBB3_18
# %bb.14:
	ld.d	$fp, $s4, 40
	sltu	$a0, $fp, $s7
	masknez	$a1, $s7, $a0
	maskeqz	$a0, $fp, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB3_16
# %bb.15:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
	ld.d	$a1, $s4, 32
	move	$a0, $s1
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB3_17
.LBB3_16:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i
	sub.d	$a0, $s7, $fp
	slt	$a1, $s6, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s6, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $s5
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s5, $a1
	or	$a0, $a0, $a1
.LBB3_17:                               # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i
	addi.w	$a0, $a0, 0
	slti	$a0, $a0, 0
	masknez	$a1, $s4, $a0
	maskeqz	$a0, $s2, $a0
	or	$s0, $a0, $a1
.LBB3_18:                               # %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit
	beq	$s1, $s3, .LBB3_20
# %bb.19:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a0, $sp, 48
	addi.d	$a1, $a0, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_20:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$fp, $sp, 24                    # 8-byte Folded Reload
	beq	$s0, $s2, .LBB3_28
# %bb.21:
	ld.d	$a1, $fp, 64
	ld.d	$s7, $s0, 64
	addi.d	$s1, $fp, 56
	move	$a0, $s1
	ld.d	$s0, $sp, 16                    # 8-byte Folded Reload
	beqz	$a1, .LBB3_26
# %bb.22:                               # %.lr.ph.i.i.i24
	ld.d	$a2, $s7, 0
	ori	$a0, $zero, 16
	ori	$a4, $zero, 24
	move	$a3, $s1
	.p2align	4, , 16
.LBB3_23:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a1, 32
	sltu	$a5, $a5, $a2
	masknez	$a6, $a1, $a5
	masknez	$a7, $a0, $a5
	maskeqz	$t0, $a4, $a5
	or	$a7, $t0, $a7
	ldx.d	$a1, $a1, $a7
	maskeqz	$a3, $a3, $a5
	or	$a3, $a3, $a6
	bnez	$a1, .LBB3_23
# %bb.24:                               # %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i
	move	$a0, $s1
	beq	$a3, $s1, .LBB3_26
# %bb.25:
	ld.d	$a0, $a3, 32
	sltu	$a0, $a2, $a0
	masknez	$a1, $a3, $a0
	maskeqz	$a0, $s1, $a0
	or	$a0, $a0, $a1
.LBB3_26:                               # %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 48
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 88
	addi.d	$a0, $a0, -1
	st.d	$a0, $fp, 88
	ld.bu	$a0, $s7, 40
	andi	$a0, $a0, 1
	bnez	$a0, .LBB3_29
# %bb.27:
	ld.d	$a1, $s7, 32
	ld.d	$a0, $s7, 0
	mul.d	$a1, $a1, $s0
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s7, 16
	move	$s3, $a0
	st.d	$s0, $s7, 8
	b	.LBB3_31
.LBB3_28:
	move	$s2, $zero
	b	.LBB3_44
.LBB3_29:
	ld.d	$a0, $s7, 8
	bgeu	$a0, $s0, .LBB3_32
# %bb.30:
	ld.d	$a1, $s7, 32
	ld.d	$a0, $s7, 0
	slli.d	$fp, $s0, 1
	mul.d	$a1, $a1, $fp
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s7, 16
	move	$s3, $a0
	st.d	$fp, $s7, 8
	ld.d	$fp, $sp, 24                    # 8-byte Folded Reload
.LBB3_31:
	st.d	$s0, $a1, 0
	st.d	$a0, $s7, 0
	move	$s2, $a0
	ld.d	$a0, $fp, 64
	move	$s5, $s1
	bnez	$a0, .LBB3_33
	b	.LBB3_37
.LBB3_32:
	ld.d	$a0, $s7, 16
	ld.d	$s3, $s7, 0
	move	$s2, $zero
	st.d	$s0, $a0, 0
	ld.d	$a0, $fp, 64
	move	$s5, $s1
	beqz	$a0, .LBB3_37
.LBB3_33:                               # %.lr.ph.i.i.i.i.preheader
	ori	$a2, $zero, 16
	ori	$a3, $zero, 24
	move	$a1, $s1
	.p2align	4, , 16
.LBB3_34:                               # %.lr.ph.i.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a0, 32
	sltu	$a4, $a4, $s3
	masknez	$a5, $a0, $a4
	masknez	$a6, $a2, $a4
	maskeqz	$a7, $a3, $a4
	or	$a6, $a7, $a6
	ldx.d	$a0, $a0, $a6
	maskeqz	$a1, $a1, $a4
	or	$a1, $a1, $a5
	bnez	$a0, .LBB3_34
# %bb.35:                               # %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i
	move	$s5, $s1
	beq	$a1, $s1, .LBB3_37
# %bb.36:
	ld.d	$a0, $a1, 32
	move	$s5, $a1
	bgeu	$s3, $a0, .LBB3_44
.LBB3_37:                               # %.critedge.i
	addi.d	$s6, $fp, 48
	ori	$a0, $zero, 48
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	addi.d	$s4, $a0, 32
	st.d	$s3, $a0, 32
	st.d	$s7, $a0, 40
.Ltmp9:                                 # EH_LABEL
	move	$a0, $s6
	move	$a1, $s5
	move	$a2, $s4
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS2_)
	jirl	$ra, $ra, 0
.Ltmp10:                                # EH_LABEL
# %bb.38:
	move	$a2, $a1
	beqz	$a1, .LBB3_43
# %bb.39:
	move	$a3, $a0
	ori	$a0, $zero, 1
	bnez	$a3, .LBB3_42
# %bb.40:
	beq	$s1, $a2, .LBB3_42
# %bb.41:
	ld.d	$a0, $s4, 0
	ld.d	$a1, $a2, 32
	sltu	$a0, $a0, $a1
.LBB3_42:                               # %.thread.i
	move	$a1, $s0
	move	$a3, $s1
	pcaddu18i	$ra, %call36(_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 88
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, 88
	b	.LBB3_44
.LBB3_43:
	ori	$a1, $zero, 48
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_44:                               # %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE6insertIS5_IS0_S2_EEENSt9enable_ifIXsr16is_constructibleIS7_T_EE5valueES5_ISt17_Rb_tree_iteratorIS7_EbEE4typeEOSD_.exit
	move	$a0, $s2
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 160
	ret
.LBB3_45:                               # %.noexc
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	pcaddu18i	$ra, %call36(_ZSt19__throw_logic_errorPKc)
	jirl	$ra, $ra, 0
.LBB3_46:                               # %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i
.Ltmp11:                                # EH_LABEL
	move	$fp, $a0
	ori	$a1, $zero, 48
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end3:
	.size	_ZN10MallocPlus14memory_reallocEmPKc, .Lfunc_end3-_ZN10MallocPlus14memory_reallocEmPKc
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
	.uleb128 .Lfunc_begin2-.Lfunc_begin2    # >> Call Site 1 <<
	.uleb128 .Ltmp9-.Lfunc_begin2           #   Call between .Lfunc_begin2 and .Ltmp9
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp9-.Lfunc_begin2           # >> Call Site 2 <<
	.uleb128 .Ltmp10-.Ltmp9                 #   Call between .Ltmp9 and .Ltmp10
	.uleb128 .Ltmp11-.Lfunc_begin2          #     jumps to .Ltmp11
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp10-.Lfunc_begin2          # >> Call Site 3 <<
	.uleb128 .Lfunc_end3-.Ltmp10            #   Call between .Ltmp10 and .Lfunc_end3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN10MallocPlus14memory_requestEmPv # -- Begin function _ZN10MallocPlus14memory_requestEmPv
	.p2align	5
	.type	_ZN10MallocPlus14memory_requestEmPv,@function
_ZN10MallocPlus14memory_requestEmPv:    # @_ZN10MallocPlus14memory_requestEmPv
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
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	st.d	$s7, $sp, 16                    # 8-byte Folded Spill
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
	ld.d	$a4, $a0, 64
	beqz	$a4, .LBB4_5
# %bb.1:                                # %.lr.ph.i.i.i.preheader
	addi.d	$s0, $a0, 48
	addi.d	$fp, $a0, 56
	ori	$a5, $zero, 16
	ori	$a6, $zero, 24
	move	$a3, $fp
	.p2align	4, , 16
.LBB4_2:                                # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a7, $a4, 32
	sltu	$a7, $a7, $a2
	masknez	$t0, $a4, $a7
	masknez	$t1, $a5, $a7
	maskeqz	$t2, $a6, $a7
	or	$t1, $t2, $t1
	ldx.d	$a4, $a4, $t1
	maskeqz	$a3, $a3, $a7
	or	$a3, $a3, $t0
	bnez	$a4, .LBB4_2
# %bb.3:                                # %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i
	beq	$a3, $fp, .LBB4_5
# %bb.4:                                # %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit
	ld.d	$a4, $a3, 32
	bgeu	$a2, $a4, .LBB4_7
.LBB4_5:
	move	$a0, $zero
.LBB4_6:                                # %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE6insertIS5_IS0_S2_EEENSt9enable_ifIXsr16is_constructibleIS7_T_EE5valueES5_ISt17_Rb_tree_iteratorIS7_EbEE4typeEOSD_.exit
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
.LBB4_7:
	ld.d	$s5, $a3, 40
	move	$s1, $a0
	move	$a0, $a3
	move	$s2, $a1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 48
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 88
	ld.d	$a2, $s5, 32
	ld.d	$a0, $s5, 0
	addi.d	$a1, $a1, -1
	st.d	$a1, $s1, 88
	mul.d	$a1, $a2, $s2
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	move	$s4, $s1
	ld.d	$a1, $s1, 64
	st.d	$s2, $s5, 8
	st.d	$a0, $s5, 0
	move	$s3, $fp
	beqz	$a1, .LBB4_12
# %bb.8:                                # %.lr.ph.i.i.i.i.preheader
	ori	$a3, $zero, 16
	ori	$a4, $zero, 24
	move	$a2, $fp
	.p2align	4, , 16
.LBB4_9:                                # %.lr.ph.i.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a1, 32
	sltu	$a5, $a5, $a0
	masknez	$a6, $a1, $a5
	masknez	$a7, $a3, $a5
	maskeqz	$t0, $a4, $a5
	or	$a7, $t0, $a7
	ldx.d	$a1, $a1, $a7
	maskeqz	$a2, $a2, $a5
	or	$a2, $a2, $a6
	bnez	$a1, .LBB4_9
# %bb.10:                               # %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i
	move	$s3, $fp
	beq	$a2, $fp, .LBB4_12
# %bb.11:
	ld.d	$a1, $a2, 32
	move	$s3, $a2
	bgeu	$a0, $a1, .LBB4_6
.LBB4_12:                               # %.critedge.i
	move	$s7, $a0
	ori	$a0, $zero, 48
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	addi.d	$s2, $a0, 32
	move	$s6, $s7
	st.d	$s7, $a0, 32
	st.d	$s5, $a0, 40
.Ltmp12:                                # EH_LABEL
	move	$a0, $s0
	move	$a1, $s3
	move	$a2, $s2
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS2_)
	jirl	$ra, $ra, 0
.Ltmp13:                                # EH_LABEL
# %bb.13:
	move	$a2, $a1
	beqz	$a1, .LBB4_18
# %bb.14:
	move	$a3, $a0
	ori	$a0, $zero, 1
	bnez	$a3, .LBB4_17
# %bb.15:
	beq	$fp, $a2, .LBB4_17
# %bb.16:
	ld.d	$a0, $s2, 0
	ld.d	$a1, $a2, 32
	sltu	$a0, $a0, $a1
.LBB4_17:                               # %.thread.i
	move	$a1, $s1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 88
	addi.d	$a0, $a0, 1
	st.d	$a0, $s4, 88
	b	.LBB4_19
.LBB4_18:
	ori	$a1, $zero, 48
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_19:                               # %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE6insertIS5_IS0_S2_EEENSt9enable_ifIXsr16is_constructibleIS7_T_EE5valueES5_ISt17_Rb_tree_iteratorIS7_EbEE4typeEOSD_.exit
	move	$a0, $s6
	b	.LBB4_6
.LBB4_20:                               # %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i
.Ltmp14:                                # EH_LABEL
	move	$fp, $a0
	ori	$a1, $zero, 48
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end4:
	.size	_ZN10MallocPlus14memory_requestEmPv, .Lfunc_end4-_ZN10MallocPlus14memory_requestEmPv
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table4:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Lfunc_begin3-.Lfunc_begin3    # >> Call Site 1 <<
	.uleb128 .Ltmp12-.Lfunc_begin3          #   Call between .Lfunc_begin3 and .Ltmp12
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp12-.Lfunc_begin3          # >> Call Site 2 <<
	.uleb128 .Ltmp13-.Ltmp12                #   Call between .Ltmp12 and .Ltmp13
	.uleb128 .Ltmp14-.Lfunc_begin3          #     jumps to .Ltmp14
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp13-.Lfunc_begin3          # >> Call Site 3 <<
	.uleb128 .Lfunc_end4-.Ltmp13            #   Call between .Ltmp13 and .Lfunc_end4
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN10MallocPlus14memory_requestEmPKc # -- Begin function _ZN10MallocPlus14memory_requestEmPKc
	.p2align	5
	.type	_ZN10MallocPlus14memory_requestEmPKc,@function
_ZN10MallocPlus14memory_requestEmPKc:   # @_ZN10MallocPlus14memory_requestEmPKc
.Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception4
# %bb.0:
	addi.d	$sp, $sp, -160
	.cfi_def_cfa_offset 160
	st.d	$ra, $sp, 152                   # 8-byte Folded Spill
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	st.d	$s0, $sp, 136                   # 8-byte Folded Spill
	st.d	$s1, $sp, 128                   # 8-byte Folded Spill
	st.d	$s2, $sp, 120                   # 8-byte Folded Spill
	st.d	$s3, $sp, 112                   # 8-byte Folded Spill
	st.d	$s4, $sp, 104                   # 8-byte Folded Spill
	st.d	$s5, $sp, 96                    # 8-byte Folded Spill
	st.d	$s6, $sp, 88                    # 8-byte Folded Spill
	st.d	$s7, $sp, 80                    # 8-byte Folded Spill
	st.d	$s8, $sp, 72                    # 8-byte Folded Spill
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
	addi.d	$s0, $sp, 48
	st.d	$s0, $sp, 32
	beqz	$a2, .LBB5_40
# %bb.1:
	move	$s1, $a2
	move	$s3, $a1
	move	$fp, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ori	$a1, $zero, 16
	st.d	$a0, $sp, 64
	move	$a0, $s0
	bltu	$s2, $a1, .LBB5_3
# %bb.2:                                # %.noexc.i
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 64
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 64
	st.d	$a0, $sp, 32
	st.d	$a1, $sp, 48
.LBB5_3:                                # %._crit_edge.i.i
	beqz	$s2, .LBB5_7
# %bb.4:                                # %._crit_edge.i.i
	ori	$a1, $zero, 1
	bne	$s2, $a1, .LBB5_6
# %bb.5:
	ld.b	$a1, $s1, 0
	st.b	$a1, $a0, 0
	b	.LBB5_7
.LBB5_6:
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_7:
	ld.d	$a0, $sp, 64
	ld.d	$a1, $sp, 32
	st.d	$a0, $sp, 40
	stx.b	$zero, $a1, $a0
	ld.d	$s8, $fp, 16
	ld.d	$s1, $sp, 32
	st.d	$fp, $sp, 24                    # 8-byte Folded Spill
	addi.d	$s2, $fp, 8
	move	$s0, $s2
	beqz	$s8, .LBB5_18
# %bb.8:                                # %.lr.ph.i.i.i
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	ld.d	$s7, $sp, 40
	lu12i.w	$s6, -524288
	lu12i.w	$a0, 524287
	ori	$s5, $a0, 4095
	ori	$s0, $zero, 16
	ori	$s3, $zero, 24
	move	$s4, $s2
	b	.LBB5_11
	.p2align	4, , 16
.LBB5_9:                                # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i
                                        #   in Loop: Header=BB5_11 Depth=1
	sub.d	$a0, $fp, $s7
	slt	$a1, $s6, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s6, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $s5
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s5, $a1
	or	$a0, $a0, $a1
.LBB5_10:                               # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
                                        #   in Loop: Header=BB5_11 Depth=1
	addi.w	$a0, $a0, 0
	slti	$a0, $a0, 0
	masknez	$a1, $s8, $a0
	masknez	$a2, $s0, $a0
	maskeqz	$a3, $s3, $a0
	or	$a2, $a3, $a2
	ldx.d	$s8, $s8, $a2
	maskeqz	$a0, $s4, $a0
	or	$s4, $a0, $a1
	beqz	$s8, .LBB5_13
.LBB5_11:                               # =>This Inner Loop Header: Depth=1
	ld.d	$fp, $s8, 40
	sltu	$a0, $s7, $fp
	masknez	$a1, $fp, $a0
	maskeqz	$a0, $s7, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB5_9
# %bb.12:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
                                        #   in Loop: Header=BB5_11 Depth=1
	ld.d	$a0, $s8, 32
	move	$a1, $s1
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB5_10
	b	.LBB5_9
.LBB5_13:                               # %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i
	move	$s0, $s2
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	beq	$s4, $s2, .LBB5_18
# %bb.14:
	ld.d	$fp, $s4, 40
	sltu	$a0, $fp, $s7
	masknez	$a1, $s7, $a0
	maskeqz	$a0, $fp, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB5_16
# %bb.15:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
	ld.d	$a1, $s4, 32
	move	$a0, $s1
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB5_17
.LBB5_16:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i
	sub.d	$a0, $s7, $fp
	slt	$a1, $s6, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s6, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $s5
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s5, $a1
	or	$a0, $a0, $a1
.LBB5_17:                               # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i
	addi.w	$a0, $a0, 0
	slti	$a0, $a0, 0
	masknez	$a1, $s4, $a0
	maskeqz	$a0, $s2, $a0
	or	$s0, $a0, $a1
.LBB5_18:                               # %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit
	addi.d	$a0, $sp, 48
	beq	$s1, $a0, .LBB5_20
# %bb.19:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a0, $sp, 48
	addi.d	$a1, $a0, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_20:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$fp, $sp, 24                    # 8-byte Folded Reload
	beq	$s0, $s2, .LBB5_37
# %bb.21:
	ld.d	$a1, $fp, 64
	ld.d	$s6, $s0, 64
	addi.d	$s1, $fp, 56
	move	$a0, $s1
	beqz	$a1, .LBB5_26
# %bb.22:                               # %.lr.ph.i.i.i12
	ld.d	$a2, $s6, 0
	ori	$a0, $zero, 16
	ori	$a4, $zero, 24
	move	$a3, $s1
	.p2align	4, , 16
.LBB5_23:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a1, 32
	sltu	$a5, $a5, $a2
	masknez	$a6, $a1, $a5
	masknez	$a7, $a0, $a5
	maskeqz	$t0, $a4, $a5
	or	$a7, $t0, $a7
	ldx.d	$a1, $a1, $a7
	maskeqz	$a3, $a3, $a5
	or	$a3, $a3, $a6
	bnez	$a1, .LBB5_23
# %bb.24:                               # %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i
	move	$a0, $s1
	beq	$a3, $s1, .LBB5_26
# %bb.25:
	ld.d	$a0, $a3, 32
	sltu	$a0, $a2, $a0
	masknez	$a1, $a3, $a0
	maskeqz	$a0, $s1, $a0
	or	$a0, $a0, $a1
.LBB5_26:                               # %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 48
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 88
	ld.d	$a2, $s6, 32
	ld.d	$a0, $s6, 0
	addi.d	$a1, $a1, -1
	st.d	$a1, $fp, 88
	mul.d	$a1, $a2, $s3
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 64
	move	$s2, $a0
	st.d	$s3, $s6, 8
	st.d	$a0, $s6, 0
	move	$s4, $s1
	beqz	$a1, .LBB5_31
# %bb.27:                               # %.lr.ph.i.i.i.i.preheader
	ori	$a2, $zero, 16
	ori	$a3, $zero, 24
	move	$a0, $s1
	.p2align	4, , 16
.LBB5_28:                               # %.lr.ph.i.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a1, 32
	sltu	$a4, $a4, $s2
	masknez	$a5, $a1, $a4
	masknez	$a6, $a2, $a4
	maskeqz	$a7, $a3, $a4
	or	$a6, $a7, $a6
	ldx.d	$a1, $a1, $a6
	maskeqz	$a0, $a0, $a4
	or	$a0, $a0, $a5
	bnez	$a1, .LBB5_28
# %bb.29:                               # %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i
	move	$s4, $s1
	beq	$a0, $s1, .LBB5_31
# %bb.30:
	ld.d	$a1, $a0, 32
	move	$s4, $a0
	bgeu	$s2, $a1, .LBB5_39
.LBB5_31:                               # %.critedge.i
	addi.d	$s5, $fp, 48
	ori	$a0, $zero, 48
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	addi.d	$s3, $a0, 32
	st.d	$s2, $a0, 32
	st.d	$s6, $a0, 40
.Ltmp15:                                # EH_LABEL
	move	$a0, $s5
	move	$a1, $s4
	move	$a2, $s3
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS2_)
	jirl	$ra, $ra, 0
.Ltmp16:                                # EH_LABEL
# %bb.32:
	move	$a2, $a1
	beqz	$a1, .LBB5_38
# %bb.33:
	move	$a3, $a0
	ori	$a0, $zero, 1
	bnez	$a3, .LBB5_36
# %bb.34:
	beq	$s1, $a2, .LBB5_36
# %bb.35:
	ld.d	$a0, $s3, 0
	ld.d	$a1, $a2, 32
	sltu	$a0, $a0, $a1
.LBB5_36:                               # %.thread.i
	move	$a1, $s0
	move	$a3, $s1
	pcaddu18i	$ra, %call36(_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 88
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, 88
	b	.LBB5_39
.LBB5_37:
	move	$s2, $zero
	b	.LBB5_39
.LBB5_38:
	ori	$a1, $zero, 48
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_39:                               # %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE6insertIS5_IS0_S2_EEENSt9enable_ifIXsr16is_constructibleIS7_T_EE5valueES5_ISt17_Rb_tree_iteratorIS7_EbEE4typeEOSD_.exit
	move	$a0, $s2
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 160
	ret
.LBB5_40:                               # %.noexc
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	pcaddu18i	$ra, %call36(_ZSt19__throw_logic_errorPKc)
	jirl	$ra, $ra, 0
.LBB5_41:                               # %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i
.Ltmp17:                                # EH_LABEL
	move	$fp, $a0
	ori	$a1, $zero, 48
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end5:
	.size	_ZN10MallocPlus14memory_requestEmPKc, .Lfunc_end5-_ZN10MallocPlus14memory_requestEmPKc
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table5:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Lfunc_begin4-.Lfunc_begin4    # >> Call Site 1 <<
	.uleb128 .Ltmp15-.Lfunc_begin4          #   Call between .Lfunc_begin4 and .Ltmp15
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp15-.Lfunc_begin4          # >> Call Site 2 <<
	.uleb128 .Ltmp16-.Ltmp15                #   Call between .Ltmp15 and .Ltmp16
	.uleb128 .Ltmp17-.Lfunc_begin4          #     jumps to .Ltmp17
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp16-.Lfunc_begin4          # >> Call Site 3 <<
	.uleb128 .Lfunc_end5-.Ltmp16            #   Call between .Ltmp16 and .Lfunc_end5
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end4:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN10MallocPlus18memory_realloc_allEm # -- Begin function _ZN10MallocPlus18memory_realloc_allEm
	.p2align	5
	.type	_ZN10MallocPlus18memory_realloc_allEm,@function
_ZN10MallocPlus18memory_realloc_allEm:  # @_ZN10MallocPlus18memory_realloc_allEm
.Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception5
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
	move	$s0, $a1
	addi.d	$fp, $sp, 40
	st.w	$zero, $sp, 40
	ld.d	$a1, $a0, 64
	st.d	$zero, $sp, 48
	st.d	$fp, $sp, 56
	st.d	$fp, $sp, 64
	st.d	$zero, $sp, 72
	beqz	$a1, .LBB6_30
# %bb.1:
	move	$s4, $a0
	addi.d	$a0, $a0, 48
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	addi.d	$a0, $sp, 32
	st.d	$a0, $sp, 80
	addi.d	$a3, $sp, 80
	move	$a2, $fp
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE7_M_copyILb0ENSB_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS5_ESG_PSt18_Rb_tree_node_baseRT0_)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	.p2align	4, , 16
.LBB6_2:                                # %.noexc.i.i
                                        # =>This Inner Loop Header: Depth=1
	move	$s3, $a0
	ld.d	$a0, $a0, 16
	bnez	$a0, .LBB6_2
# %bb.3:                                # %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i
	st.d	$s3, $sp, 56
	move	$a2, $a1
	.p2align	4, , 16
.LBB6_4:                                # =>This Inner Loop Header: Depth=1
	move	$a0, $a2
	ld.d	$a2, $a2, 24
	bnez	$a2, .LBB6_4
# %bb.5:                                # %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEEC2ERKS9_.exit
	ld.d	$a2, $s4, 88
	st.d	$a0, $sp, 64
	st.d	$a2, $sp, 72
	st.d	$a1, $sp, 48
	beq	$s3, $fp, .LBB6_31
# %bb.6:                                # %.lr.ph
	move	$s5, $zero
	addi.d	$s8, $s4, 56
	ori	$s1, $zero, 16
	ori	$s2, $zero, 24
	st.d	$s8, $sp, 24                    # 8-byte Folded Spill
	b	.LBB6_9
	.p2align	4, , 16
.LBB6_7:                                #   in Loop: Header=BB6_9 Depth=1
	ori	$a1, $zero, 48
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_8:                                #   in Loop: Header=BB6_9 Depth=1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	addi.d	$a0, $sp, 40
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
	beq	$s3, $a0, .LBB6_29
.LBB6_9:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_11 Depth 2
                                        #     Child Loop BB6_19 Depth 2
	ld.d	$a2, $s4, 64
	ld.d	$fp, $s3, 40
	move	$a0, $s8
	beqz	$a2, .LBB6_14
# %bb.10:                               # %.lr.ph.i.i.i
                                        #   in Loop: Header=BB6_9 Depth=1
	ld.d	$a1, $fp, 0
	move	$a3, $s8
	.p2align	4, , 16
.LBB6_11:                               #   Parent Loop BB6_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $a2, 32
	sltu	$a0, $a0, $a1
	masknez	$a4, $a2, $a0
	masknez	$a5, $s1, $a0
	maskeqz	$a6, $s2, $a0
	or	$a5, $a6, $a5
	ldx.d	$a2, $a2, $a5
	maskeqz	$a0, $a3, $a0
	or	$a3, $a0, $a4
	bnez	$a2, .LBB6_11
# %bb.12:                               # %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i
                                        #   in Loop: Header=BB6_9 Depth=1
	move	$a0, $s8
	beq	$a3, $s8, .LBB6_14
# %bb.13:                               #   in Loop: Header=BB6_9 Depth=1
	ld.d	$a0, $a3, 32
	sltu	$a0, $a1, $a0
	masknez	$a1, $a3, $a0
	maskeqz	$a0, $s8, $a0
	or	$a0, $a0, $a1
.LBB6_14:                               # %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.thread.i.i
                                        #   in Loop: Header=BB6_9 Depth=1
	move	$a1, $s8
	pcaddu18i	$ra, %call36(_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 48
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 88
	addi.d	$a0, $a0, -1
	st.d	$a0, $s4, 88
	ld.bu	$a0, $fp, 40
	andi	$a0, $a0, 1
	beqz	$a0, .LBB6_16
# %bb.15:                               #   in Loop: Header=BB6_9 Depth=1
	ld.d	$a0, $fp, 8
	bgeu	$a0, $s0, .LBB6_17
.LBB6_16:                               #   in Loop: Header=BB6_9 Depth=1
	ld.d	$a1, $fp, 32
	ld.d	$a0, $fp, 0
	mul.d	$a1, $a1, $s0
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 16
	move	$s5, $a0
	st.d	$s0, $fp, 8
	st.d	$s0, $a1, 0
	st.d	$a0, $fp, 0
	ld.d	$a0, $s4, 64
	bnez	$a0, .LBB6_18
	b	.LBB6_22
	.p2align	4, , 16
.LBB6_17:                               #   in Loop: Header=BB6_9 Depth=1
	ld.d	$a0, $fp, 16
	st.d	$s0, $a0, 0
	ld.d	$a0, $s4, 64
	beqz	$a0, .LBB6_22
.LBB6_18:                               # %.lr.ph.i.i.i.i.preheader
                                        #   in Loop: Header=BB6_9 Depth=1
	ld.d	$a6, $sp, 24                    # 8-byte Folded Reload
	move	$a1, $a6
	.p2align	4, , 16
.LBB6_19:                               # %.lr.ph.i.i.i.i
                                        #   Parent Loop BB6_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $a0, 32
	sltu	$a2, $a2, $s5
	masknez	$a3, $a0, $a2
	masknez	$a4, $s1, $a2
	maskeqz	$a5, $s2, $a2
	or	$a4, $a5, $a4
	ldx.d	$a0, $a0, $a4
	maskeqz	$a1, $a1, $a2
	or	$a1, $a1, $a3
	bnez	$a0, .LBB6_19
# %bb.20:                               # %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i
                                        #   in Loop: Header=BB6_9 Depth=1
	move	$s8, $a6
	beq	$a1, $a6, .LBB6_22
# %bb.21:                               #   in Loop: Header=BB6_9 Depth=1
	ld.d	$a0, $a1, 32
	move	$s8, $a1
	bgeu	$s5, $a0, .LBB6_8
.LBB6_22:                               # %.critedge.i
                                        #   in Loop: Header=BB6_9 Depth=1
.Ltmp18:                                # EH_LABEL
	ori	$a0, $zero, 48
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp19:                                # EH_LABEL
# %bb.23:                               # %.noexc19
                                        #   in Loop: Header=BB6_9 Depth=1
	move	$s6, $a0
	addi.d	$s7, $a0, 32
	st.d	$s5, $a0, 32
	st.d	$fp, $a0, 40
.Ltmp21:                                # EH_LABEL
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	move	$a1, $s8
	move	$a2, $s7
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS2_)
	jirl	$ra, $ra, 0
.Ltmp22:                                # EH_LABEL
# %bb.24:                               #   in Loop: Header=BB6_9 Depth=1
	move	$a2, $a1
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	beqz	$a1, .LBB6_7
# %bb.25:                               #   in Loop: Header=BB6_9 Depth=1
	move	$a4, $a0
	ori	$a0, $zero, 1
	bnez	$a4, .LBB6_28
# %bb.26:                               #   in Loop: Header=BB6_9 Depth=1
	beq	$a3, $a2, .LBB6_28
# %bb.27:                               #   in Loop: Header=BB6_9 Depth=1
	ld.d	$a0, $s7, 0
	ld.d	$a1, $a2, 32
	sltu	$a0, $a0, $a1
.LBB6_28:                               # %.thread.i
                                        #   in Loop: Header=BB6_9 Depth=1
	move	$a1, $s6
	pcaddu18i	$ra, %call36(_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 88
	addi.d	$a0, $a0, 1
	st.d	$a0, $s4, 88
	b	.LBB6_8
.LBB6_29:                               # %._crit_edge.loopexit
	ld.d	$a1, $sp, 48
	b	.LBB6_31
.LBB6_30:
	move	$a1, $zero
.LBB6_31:                               # %._crit_edge
.Ltmp24:                                # EH_LABEL
	addi.d	$a0, $sp, 32
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E)
	jirl	$ra, $ra, 0
.Ltmp25:                                # EH_LABEL
# %bb.32:                               # %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEED2Ev.exit
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
.LBB6_33:
.Ltmp26:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB6_34:
.Ltmp20:                                # EH_LABEL
	move	$fp, $a0
	addi.d	$a0, $sp, 32
	pcaddu18i	$ra, %call36(_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEED2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB6_35:                               # %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i
.Ltmp23:                                # EH_LABEL
	move	$fp, $a0
	ori	$a1, $zero, 48
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 32
	pcaddu18i	$ra, %call36(_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEED2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end6:
	.size	_ZN10MallocPlus18memory_realloc_allEm, .Lfunc_end6-_ZN10MallocPlus18memory_realloc_allEm
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table6:
.Lexception5:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end5-.Lcst_begin5
.Lcst_begin5:
	.uleb128 .Lfunc_begin5-.Lfunc_begin5    # >> Call Site 1 <<
	.uleb128 .Ltmp18-.Lfunc_begin5          #   Call between .Lfunc_begin5 and .Ltmp18
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp18-.Lfunc_begin5          # >> Call Site 2 <<
	.uleb128 .Ltmp19-.Ltmp18                #   Call between .Ltmp18 and .Ltmp19
	.uleb128 .Ltmp20-.Lfunc_begin5          #     jumps to .Ltmp20
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp21-.Lfunc_begin5          # >> Call Site 3 <<
	.uleb128 .Ltmp22-.Ltmp21                #   Call between .Ltmp21 and .Ltmp22
	.uleb128 .Ltmp23-.Lfunc_begin5          #     jumps to .Ltmp23
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp22-.Lfunc_begin5          # >> Call Site 4 <<
	.uleb128 .Ltmp24-.Ltmp22                #   Call between .Ltmp22 and .Ltmp24
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp24-.Lfunc_begin5          # >> Call Site 5 <<
	.uleb128 .Ltmp25-.Ltmp24                #   Call between .Ltmp24 and .Ltmp25
	.uleb128 .Ltmp26-.Lfunc_begin5          #     jumps to .Ltmp26
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp25-.Lfunc_begin5          # >> Call Site 6 <<
	.uleb128 .Lfunc_end6-.Ltmp25            #   Call between .Ltmp25 and .Lfunc_end6
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end5:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase0:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEED2Ev,"axG",@progbits,_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEED2Ev,comdat
	.weak	_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEED2Ev # -- Begin function _ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEED2Ev
	.p2align	5
	.type	_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEED2Ev,@function
_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEED2Ev: # @_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEED2Ev
.Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception6
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	ld.d	$a1, $a0, 16
.Ltmp27:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E)
	jirl	$ra, $ra, 0
.Ltmp28:                                # EH_LABEL
# %bb.1:                                # %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EED2Ev.exit
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB7_2:
.Ltmp29:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end7:
	.size	_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEED2Ev, .Lfunc_end7-_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEED2Ev,"aG",@progbits,_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEED2Ev,comdat
	.p2align	2, 0x0
GCC_except_table7:
.Lexception6:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end6-.Lcst_begin6
.Lcst_begin6:
	.uleb128 .Ltmp27-.Lfunc_begin6          # >> Call Site 1 <<
	.uleb128 .Ltmp28-.Ltmp27                #   Call between .Ltmp27 and .Ltmp28
	.uleb128 .Ltmp29-.Lfunc_begin6          #     jumps to .Ltmp29
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp28-.Lfunc_begin6          # >> Call Site 2 <<
	.uleb128 .Lfunc_end7-.Ltmp28            #   Call between .Ltmp28 and .Lfunc_end7
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end6:
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
	.globl	_ZN10MallocPlus18memory_request_allEm # -- Begin function _ZN10MallocPlus18memory_request_allEm
	.p2align	5
	.type	_ZN10MallocPlus18memory_request_allEm,@function
_ZN10MallocPlus18memory_request_allEm:  # @_ZN10MallocPlus18memory_request_allEm
.Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception7
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
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	addi.d	$s7, $sp, 40
	st.w	$zero, $sp, 40
	ld.d	$a1, $a0, 64
	st.d	$zero, $sp, 48
	st.d	$s7, $sp, 56
	st.d	$s7, $sp, 64
	st.d	$zero, $sp, 72
	beqz	$a1, .LBB8_28
# %bb.1:
	move	$s0, $a0
	addi.d	$a0, $a0, 48
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	addi.d	$a0, $sp, 32
	st.d	$a0, $sp, 80
	addi.d	$a3, $sp, 80
	move	$a2, $s7
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE7_M_copyILb0ENSB_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS5_ESG_PSt18_Rb_tree_node_baseRT0_)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	.p2align	4, , 16
.LBB8_2:                                # %.noexc.i.i
                                        # =>This Inner Loop Header: Depth=1
	move	$s3, $a0
	ld.d	$a0, $a0, 16
	bnez	$a0, .LBB8_2
# %bb.3:                                # %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i
	st.d	$s3, $sp, 56
	move	$a2, $a1
	.p2align	4, , 16
.LBB8_4:                                # =>This Inner Loop Header: Depth=1
	move	$a0, $a2
	ld.d	$a2, $a2, 24
	bnez	$a2, .LBB8_4
# %bb.5:                                # %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEEC2ERKS9_.exit
	ld.d	$a2, $s0, 88
	st.d	$a0, $sp, 64
	st.d	$a2, $sp, 72
	st.d	$a1, $sp, 48
	beq	$s3, $s7, .LBB8_29
# %bb.6:                                # %.lr.ph
	addi.d	$s4, $s0, 56
	ori	$s1, $zero, 16
	ori	$s2, $zero, 24
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	b	.LBB8_10
	.p2align	4, , 16
.LBB8_7:                                #   in Loop: Header=BB8_10 Depth=1
	ori	$a1, $zero, 48
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB8_8:                                #   in Loop: Header=BB8_10 Depth=1
	move	$s7, $s0
.LBB8_9:                                #   in Loop: Header=BB8_10 Depth=1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	beq	$a0, $s7, .LBB8_27
.LBB8_10:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_12 Depth 2
                                        #     Child Loop BB8_17 Depth 2
	ld.d	$a2, $s0, 64
	ld.d	$fp, $s3, 40
	move	$a0, $s4
	beqz	$a2, .LBB8_15
# %bb.11:                               # %.lr.ph.i.i.i
                                        #   in Loop: Header=BB8_10 Depth=1
	ld.d	$a1, $fp, 0
	move	$a3, $s4
	.p2align	4, , 16
.LBB8_12:                               #   Parent Loop BB8_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $a2, 32
	sltu	$a0, $a0, $a1
	masknez	$a4, $a2, $a0
	masknez	$a5, $s1, $a0
	maskeqz	$a6, $s2, $a0
	or	$a5, $a6, $a5
	ldx.d	$a2, $a2, $a5
	maskeqz	$a0, $a3, $a0
	or	$a3, $a0, $a4
	bnez	$a2, .LBB8_12
# %bb.13:                               # %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i
                                        #   in Loop: Header=BB8_10 Depth=1
	move	$a0, $s4
	beq	$a3, $s4, .LBB8_15
# %bb.14:                               #   in Loop: Header=BB8_10 Depth=1
	ld.d	$a0, $a3, 32
	sltu	$a0, $a1, $a0
	masknez	$a1, $a3, $a0
	maskeqz	$a0, $s4, $a0
	or	$a0, $a0, $a1
.LBB8_15:                               # %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.thread.i.i
                                        #   in Loop: Header=BB8_10 Depth=1
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 48
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 88
	ld.d	$a2, $fp, 32
	ld.d	$a0, $fp, 0
	addi.d	$a1, $a1, -1
	st.d	$a1, $s0, 88
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	mul.d	$a1, $a2, $s5
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 64
	move	$s6, $a0
	st.d	$s5, $fp, 8
	st.d	$a0, $fp, 0
	move	$s8, $s4
	beqz	$a1, .LBB8_20
# %bb.16:                               # %.lr.ph.i.i.i.i.preheader
                                        #   in Loop: Header=BB8_10 Depth=1
	move	$a0, $s4
	.p2align	4, , 16
.LBB8_17:                               # %.lr.ph.i.i.i.i
                                        #   Parent Loop BB8_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $a1, 32
	sltu	$a2, $a2, $s6
	masknez	$a3, $a1, $a2
	masknez	$a4, $s1, $a2
	maskeqz	$a5, $s2, $a2
	or	$a4, $a5, $a4
	ldx.d	$a1, $a1, $a4
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a3
	bnez	$a1, .LBB8_17
# %bb.18:                               # %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i
                                        #   in Loop: Header=BB8_10 Depth=1
	move	$s8, $s4
	beq	$a0, $s4, .LBB8_20
# %bb.19:                               #   in Loop: Header=BB8_10 Depth=1
	ld.d	$a1, $a0, 32
	move	$s8, $a0
	bgeu	$s6, $a1, .LBB8_9
.LBB8_20:                               # %.critedge.i
                                        #   in Loop: Header=BB8_10 Depth=1
.Ltmp30:                                # EH_LABEL
	move	$s0, $s7
	ori	$a0, $zero, 48
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp31:                                # EH_LABEL
# %bb.21:                               # %.noexc12
                                        #   in Loop: Header=BB8_10 Depth=1
	move	$s5, $a0
	addi.d	$s7, $a0, 32
	st.d	$s6, $a0, 32
	st.d	$fp, $a0, 40
.Ltmp33:                                # EH_LABEL
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	move	$a1, $s8
	move	$a2, $s7
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS2_)
	jirl	$ra, $ra, 0
.Ltmp34:                                # EH_LABEL
# %bb.22:                               #   in Loop: Header=BB8_10 Depth=1
	move	$a2, $a1
	ld.d	$fp, $sp, 24                    # 8-byte Folded Reload
	beqz	$a1, .LBB8_7
# %bb.23:                               #   in Loop: Header=BB8_10 Depth=1
	move	$a3, $a0
	ori	$a0, $zero, 1
	bnez	$a3, .LBB8_26
# %bb.24:                               #   in Loop: Header=BB8_10 Depth=1
	beq	$s4, $a2, .LBB8_26
# %bb.25:                               #   in Loop: Header=BB8_10 Depth=1
	ld.d	$a0, $s7, 0
	ld.d	$a1, $a2, 32
	sltu	$a0, $a0, $a1
.LBB8_26:                               # %.thread.i
                                        #   in Loop: Header=BB8_10 Depth=1
	move	$a1, $s5
	move	$a3, $s4
	pcaddu18i	$ra, %call36(_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 88
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, 88
	b	.LBB8_8
.LBB8_27:                               # %._crit_edge.loopexit
	ld.d	$a1, $sp, 48
	b	.LBB8_29
.LBB8_28:
	move	$a1, $zero
.LBB8_29:                               # %._crit_edge
.Ltmp36:                                # EH_LABEL
	addi.d	$a0, $sp, 32
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E)
	jirl	$ra, $ra, 0
.Ltmp37:                                # EH_LABEL
# %bb.30:                               # %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEED2Ev.exit
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
.LBB8_31:
.Ltmp38:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB8_32:
.Ltmp32:                                # EH_LABEL
	move	$fp, $a0
	addi.d	$a0, $sp, 32
	pcaddu18i	$ra, %call36(_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEED2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB8_33:                               # %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i
.Ltmp35:                                # EH_LABEL
	move	$fp, $a0
	ori	$a1, $zero, 48
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 32
	pcaddu18i	$ra, %call36(_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEED2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end8:
	.size	_ZN10MallocPlus18memory_request_allEm, .Lfunc_end8-_ZN10MallocPlus18memory_request_allEm
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table8:
.Lexception7:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase2-.Lttbaseref2
.Lttbaseref2:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end7-.Lcst_begin7
.Lcst_begin7:
	.uleb128 .Lfunc_begin7-.Lfunc_begin7    # >> Call Site 1 <<
	.uleb128 .Ltmp30-.Lfunc_begin7          #   Call between .Lfunc_begin7 and .Ltmp30
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp30-.Lfunc_begin7          # >> Call Site 2 <<
	.uleb128 .Ltmp31-.Ltmp30                #   Call between .Ltmp30 and .Ltmp31
	.uleb128 .Ltmp32-.Lfunc_begin7          #     jumps to .Ltmp32
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp33-.Lfunc_begin7          # >> Call Site 3 <<
	.uleb128 .Ltmp34-.Ltmp33                #   Call between .Ltmp33 and .Ltmp34
	.uleb128 .Ltmp35-.Lfunc_begin7          #     jumps to .Ltmp35
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp34-.Lfunc_begin7          # >> Call Site 4 <<
	.uleb128 .Ltmp36-.Ltmp34                #   Call between .Ltmp34 and .Ltmp36
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp36-.Lfunc_begin7          # >> Call Site 5 <<
	.uleb128 .Ltmp37-.Ltmp36                #   Call between .Ltmp36 and .Ltmp37
	.uleb128 .Ltmp38-.Lfunc_begin7          #     jumps to .Ltmp38
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp37-.Lfunc_begin7          # >> Call Site 6 <<
	.uleb128 .Lfunc_end8-.Ltmp37            #   Call between .Ltmp37 and .Lfunc_end8
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
	.text
	.globl	_ZN10MallocPlus10memory_addEPvmmPKci # -- Begin function _ZN10MallocPlus10memory_addEPvmmPKci
	.p2align	5
	.type	_ZN10MallocPlus10memory_addEPvmmPKci,@function
_ZN10MallocPlus10memory_addEPvmmPKci:   # @_ZN10MallocPlus10memory_addEPvmmPKci
.Lfunc_begin8:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception8
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
	move	$s3, $a5
	move	$s2, $a4
	move	$s4, $a3
	move	$s5, $a2
	move	$fp, $a1
	move	$s0, $a0
	ori	$a0, $zero, 56
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, 16
	st.d	$s5, $a0, 0
	ori	$a0, $zero, 1
	st.d	$a0, $s1, 24
	st.d	$s5, $s1, 8
	st.d	$s4, $s1, 32
	st.w	$s3, $s1, 40
	st.d	$fp, $s1, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strdup)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 64
	addi.d	$s3, $s0, 56
	st.d	$a0, $s1, 48
	move	$s6, $s3
	beqz	$a1, .LBB9_5
# %bb.1:                                # %.lr.ph.i.i.i.i.preheader
	ori	$a2, $zero, 16
	ori	$a3, $zero, 24
	move	$a0, $s3
	.p2align	4, , 16
.LBB9_2:                                # %.lr.ph.i.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a1, 32
	sltu	$a4, $a4, $fp
	masknez	$a5, $a1, $a4
	masknez	$a6, $a2, $a4
	maskeqz	$a7, $a3, $a4
	or	$a6, $a7, $a6
	ldx.d	$a1, $a1, $a6
	maskeqz	$a0, $a0, $a4
	or	$a0, $a0, $a5
	bnez	$a1, .LBB9_2
# %bb.3:                                # %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i
	move	$s6, $s3
	beq	$a0, $s3, .LBB9_5
# %bb.4:
	ld.d	$a1, $a0, 32
	move	$s6, $a0
	bgeu	$fp, $a1, .LBB9_11
.LBB9_5:                                # %.critedge.i
	addi.d	$s7, $s0, 48
	ori	$a0, $zero, 48
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	addi.d	$s5, $a0, 32
	st.d	$fp, $a0, 32
	st.d	$s1, $a0, 40
.Ltmp39:                                # EH_LABEL
	move	$a0, $s7
	move	$a1, $s6
	move	$a2, $s5
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS2_)
	jirl	$ra, $ra, 0
.Ltmp40:                                # EH_LABEL
# %bb.6:
	move	$a2, $a1
	beqz	$a1, .LBB9_22
# %bb.7:
	move	$a3, $a0
	ori	$a0, $zero, 1
	bnez	$a3, .LBB9_10
# %bb.8:
	beq	$s3, $a2, .LBB9_10
# %bb.9:
	ld.d	$a0, $s5, 0
	ld.d	$a1, $a2, 32
	sltu	$a0, $a0, $a1
.LBB9_10:                               # %.thread.i
	move	$a1, $s4
	move	$a3, $s3
	pcaddu18i	$ra, %call36(_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 88
	addi.d	$a0, $a0, 1
	st.d	$a0, $s0, 88
.LBB9_11:                               # %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE6insertIS5_IS0_S2_EEENSt9enable_ifIXsr16is_constructibleIS7_T_EE5valueES5_ISt17_Rb_tree_iteratorIS7_EbEE4typeEOSD_.exit
	addi.d	$s4, $sp, 32
	st.d	$s4, $sp, 16
	beqz	$s2, .LBB9_23
.LBB9_12:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	ori	$a1, $zero, 16
	st.d	$a0, $sp, 56
	move	$a0, $s4
	bltu	$s3, $a1, .LBB9_14
# %bb.13:                               # %.noexc.i.i
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 56
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 56
	st.d	$a0, $sp, 16
	st.d	$a1, $sp, 32
.LBB9_14:                               # %._crit_edge.i.i.i
	beqz	$s3, .LBB9_18
# %bb.15:                               # %._crit_edge.i.i.i
	ori	$a1, $zero, 1
	bne	$s3, $a1, .LBB9_17
# %bb.16:
	ld.b	$a1, $s2, 0
	st.b	$a1, $a0, 0
	b	.LBB9_18
.LBB9_17:
	move	$a1, $s2
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB9_18:                               # %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entryEC2IRPKcRS7_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISF_SG_EEEbE4typeELb1EEEOSF_OSG_.exit
	ld.d	$a0, $sp, 56
	ld.d	$a1, $sp, 16
	st.d	$a0, $sp, 24
	stx.b	$zero, $a1, $a0
	st.d	$s1, $sp, 48
.Ltmp42:                                # EH_LABEL
	addi.d	$a1, $sp, 16
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE6insertISA_IS5_S7_EEENSt9enable_ifIXsr16is_constructibleISC_T_EE5valueESA_ISt17_Rb_tree_iteratorISC_EbEE4typeEOSI_)
	jirl	$ra, $ra, 0
.Ltmp43:                                # EH_LABEL
# %bb.19:
	ld.d	$a0, $sp, 16
	beq	$a0, $s4, .LBB9_21
# %bb.20:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB9_21:                               # %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entryED2Ev.exit
	move	$a0, $fp
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
.LBB9_22:
	ori	$a1, $zero, 48
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	addi.d	$s4, $sp, 32
	st.d	$s4, $sp, 16
	bnez	$s2, .LBB9_12
.LBB9_23:                               # %.noexc.i
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	pcaddu18i	$ra, %call36(_ZSt19__throw_logic_errorPKc)
	jirl	$ra, $ra, 0
.LBB9_24:                               # %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i
.Ltmp41:                                # EH_LABEL
	move	$fp, $a0
	ori	$a1, $zero, 48
	move	$a0, $s4
	b	.LBB9_27
.LBB9_25:
.Ltmp44:                                # EH_LABEL
	ld.d	$a2, $sp, 16
	move	$fp, $a0
	beq	$a2, $s4, .LBB9_28
# %bb.26:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10
	ld.d	$a0, $sp, 32
	addi.d	$a1, $a0, 1
	move	$a0, $a2
.LBB9_27:                               # %common.resume
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB9_28:                               # %common.resume
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end9:
	.size	_ZN10MallocPlus10memory_addEPvmmPKci, .Lfunc_end9-_ZN10MallocPlus10memory_addEPvmmPKci
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table9:
.Lexception8:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end8-.Lcst_begin8
.Lcst_begin8:
	.uleb128 .Lfunc_begin8-.Lfunc_begin8    # >> Call Site 1 <<
	.uleb128 .Ltmp39-.Lfunc_begin8          #   Call between .Lfunc_begin8 and .Ltmp39
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp39-.Lfunc_begin8          # >> Call Site 2 <<
	.uleb128 .Ltmp40-.Ltmp39                #   Call between .Ltmp39 and .Ltmp40
	.uleb128 .Ltmp41-.Lfunc_begin8          #     jumps to .Ltmp41
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp40-.Lfunc_begin8          # >> Call Site 3 <<
	.uleb128 .Ltmp42-.Ltmp40                #   Call between .Ltmp40 and .Ltmp42
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp42-.Lfunc_begin8          # >> Call Site 4 <<
	.uleb128 .Ltmp43-.Ltmp42                #   Call between .Ltmp42 and .Ltmp43
	.uleb128 .Ltmp44-.Lfunc_begin8          #     jumps to .Ltmp44
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp43-.Lfunc_begin8          # >> Call Site 5 <<
	.uleb128 .Lfunc_end9-.Ltmp43            #   Call between .Ltmp43 and .Lfunc_end9
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end8:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN10MallocPlus10memory_addEPviPmmPKci # -- Begin function _ZN10MallocPlus10memory_addEPviPmmPKci
	.p2align	5
	.type	_ZN10MallocPlus10memory_addEPviPmmPKci,@function
_ZN10MallocPlus10memory_addEPviPmmPKci: # @_ZN10MallocPlus10memory_addEPviPmmPKci
.Lfunc_begin9:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception9
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
	move	$s3, $a6
	move	$s2, $a5
	move	$s4, $a4
	move	$s6, $a3
	move	$s5, $a2
	move	$fp, $a1
	move	$s0, $a0
	ori	$a0, $zero, 56
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	slli.d	$s7, $s5, 3
	move	$a0, $s7
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, 16
	blez	$s5, .LBB10_2
# %bb.1:                                # %.lr.ph.preheader
	move	$a1, $s6
	move	$a2, $s7
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB10_2:                               # %._crit_edge
	st.d	$s5, $s1, 24
	st.d	$zero, $s1, 8
	st.d	$s4, $s1, 32
	st.w	$s3, $s1, 40
	st.d	$fp, $s1, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strdup)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 64
	addi.d	$s3, $s0, 56
	st.d	$a0, $s1, 48
	move	$s6, $s3
	beqz	$a1, .LBB10_7
# %bb.3:                                # %.lr.ph.i.i.i.i.preheader
	ori	$a2, $zero, 16
	ori	$a3, $zero, 24
	move	$a0, $s3
	.p2align	4, , 16
.LBB10_4:                               # %.lr.ph.i.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a1, 32
	sltu	$a4, $a4, $fp
	masknez	$a5, $a1, $a4
	masknez	$a6, $a2, $a4
	maskeqz	$a7, $a3, $a4
	or	$a6, $a7, $a6
	ldx.d	$a1, $a1, $a6
	maskeqz	$a0, $a0, $a4
	or	$a0, $a0, $a5
	bnez	$a1, .LBB10_4
# %bb.5:                                # %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i
	move	$s6, $s3
	beq	$a0, $s3, .LBB10_7
# %bb.6:
	ld.d	$a1, $a0, 32
	move	$s6, $a0
	bgeu	$fp, $a1, .LBB10_13
.LBB10_7:                               # %.critedge.i
	addi.d	$s7, $s0, 48
	ori	$a0, $zero, 48
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	addi.d	$s5, $a0, 32
	st.d	$fp, $a0, 32
	st.d	$s1, $a0, 40
.Ltmp45:                                # EH_LABEL
	move	$a0, $s7
	move	$a1, $s6
	move	$a2, $s5
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS2_)
	jirl	$ra, $ra, 0
.Ltmp46:                                # EH_LABEL
# %bb.8:
	move	$a2, $a1
	beqz	$a1, .LBB10_24
# %bb.9:
	move	$a3, $a0
	ori	$a0, $zero, 1
	bnez	$a3, .LBB10_12
# %bb.10:
	beq	$s3, $a2, .LBB10_12
# %bb.11:
	ld.d	$a0, $s5, 0
	ld.d	$a1, $a2, 32
	sltu	$a0, $a0, $a1
.LBB10_12:                              # %.thread.i
	move	$a1, $s4
	move	$a3, $s3
	pcaddu18i	$ra, %call36(_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 88
	addi.d	$a0, $a0, 1
	st.d	$a0, $s0, 88
.LBB10_13:                              # %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE6insertIS5_IS0_S2_EEENSt9enable_ifIXsr16is_constructibleIS7_T_EE5valueES5_ISt17_Rb_tree_iteratorIS7_EbEE4typeEOSD_.exit
	addi.d	$s4, $sp, 32
	st.d	$s4, $sp, 16
	beqz	$s2, .LBB10_25
.LBB10_14:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	ori	$a1, $zero, 16
	st.d	$a0, $sp, 56
	move	$a0, $s4
	bltu	$s3, $a1, .LBB10_16
# %bb.15:                               # %.noexc.i.i
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 56
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 56
	st.d	$a0, $sp, 16
	st.d	$a1, $sp, 32
.LBB10_16:                              # %._crit_edge.i.i.i
	beqz	$s3, .LBB10_20
# %bb.17:                               # %._crit_edge.i.i.i
	ori	$a1, $zero, 1
	bne	$s3, $a1, .LBB10_19
# %bb.18:
	ld.b	$a1, $s2, 0
	st.b	$a1, $a0, 0
	b	.LBB10_20
.LBB10_19:
	move	$a1, $s2
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB10_20:                              # %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entryEC2IRPKcRS7_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISF_SG_EEEbE4typeELb1EEEOSF_OSG_.exit
	ld.d	$a0, $sp, 56
	ld.d	$a1, $sp, 16
	st.d	$a0, $sp, 24
	stx.b	$zero, $a1, $a0
	st.d	$s1, $sp, 48
.Ltmp48:                                # EH_LABEL
	addi.d	$a1, $sp, 16
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE6insertISA_IS5_S7_EEENSt9enable_ifIXsr16is_constructibleISC_T_EE5valueESA_ISt17_Rb_tree_iteratorISC_EbEE4typeEOSI_)
	jirl	$ra, $ra, 0
.Ltmp49:                                # EH_LABEL
# %bb.21:
	ld.d	$a0, $sp, 16
	beq	$a0, $s4, .LBB10_23
# %bb.22:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB10_23:                              # %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entryED2Ev.exit
	move	$a0, $fp
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
.LBB10_24:
	ori	$a1, $zero, 48
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	addi.d	$s4, $sp, 32
	st.d	$s4, $sp, 16
	bnez	$s2, .LBB10_14
.LBB10_25:                              # %.noexc.i
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	pcaddu18i	$ra, %call36(_ZSt19__throw_logic_errorPKc)
	jirl	$ra, $ra, 0
.LBB10_26:                              # %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i
.Ltmp47:                                # EH_LABEL
	move	$fp, $a0
	ori	$a1, $zero, 48
	move	$a0, $s4
	b	.LBB10_29
.LBB10_27:
.Ltmp50:                                # EH_LABEL
	ld.d	$a2, $sp, 16
	move	$fp, $a0
	beq	$a2, $s4, .LBB10_30
# %bb.28:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i16
	ld.d	$a0, $sp, 32
	addi.d	$a1, $a0, 1
	move	$a0, $a2
.LBB10_29:                              # %common.resume
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB10_30:                              # %common.resume
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end10:
	.size	_ZN10MallocPlus10memory_addEPviPmmPKci, .Lfunc_end10-_ZN10MallocPlus10memory_addEPviPmmPKci
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table10:
.Lexception9:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end9-.Lcst_begin9
.Lcst_begin9:
	.uleb128 .Lfunc_begin9-.Lfunc_begin9    # >> Call Site 1 <<
	.uleb128 .Ltmp45-.Lfunc_begin9          #   Call between .Lfunc_begin9 and .Ltmp45
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp45-.Lfunc_begin9          # >> Call Site 2 <<
	.uleb128 .Ltmp46-.Ltmp45                #   Call between .Ltmp45 and .Ltmp46
	.uleb128 .Ltmp47-.Lfunc_begin9          #     jumps to .Ltmp47
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp46-.Lfunc_begin9          # >> Call Site 3 <<
	.uleb128 .Ltmp48-.Ltmp46                #   Call between .Ltmp46 and .Ltmp48
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp48-.Lfunc_begin9          # >> Call Site 4 <<
	.uleb128 .Ltmp49-.Ltmp48                #   Call between .Ltmp48 and .Ltmp49
	.uleb128 .Ltmp50-.Lfunc_begin9          #     jumps to .Ltmp50
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp49-.Lfunc_begin9          # >> Call Site 5 <<
	.uleb128 .Lfunc_end10-.Ltmp49           #   Call between .Ltmp49 and .Lfunc_end10
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end9:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN10MallocPlus14memory_reorderEPdPi # -- Begin function _ZN10MallocPlus14memory_reorderEPdPi
	.p2align	5
	.type	_ZN10MallocPlus14memory_reorderEPdPi,@function
_ZN10MallocPlus14memory_reorderEPdPi:   # @_ZN10MallocPlus14memory_reorderEPdPi
.Lfunc_begin10:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception10
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
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	ld.d	$a3, $a0, 64
	move	$s1, $a1
	beqz	$a3, .LBB11_27
# %bb.1:                                # %.lr.ph.i.i.i.preheader
	move	$fp, $a0
	addi.d	$s2, $a0, 48
	addi.d	$s0, $a0, 56
	ori	$a4, $zero, 16
	ori	$a5, $zero, 24
	move	$a0, $s0
	.p2align	4, , 16
.LBB11_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a6, $a3, 32
	sltu	$a6, $a6, $s1
	masknez	$a7, $a3, $a6
	masknez	$t0, $a4, $a6
	maskeqz	$t1, $a5, $a6
	or	$t0, $t1, $t0
	ldx.d	$a3, $a3, $t0
	maskeqz	$a0, $a0, $a6
	or	$a0, $a0, $a7
	bnez	$a3, .LBB11_2
# %bb.3:                                # %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i
	beq	$a0, $s0, .LBB11_27
# %bb.4:                                # %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit
	ld.d	$a3, $a0, 32
	bltu	$s1, $a3, .LBB11_27
# %bb.5:
	ld.d	$s6, $a0, 40
	move	$a1, $s0
	move	$s4, $a2
	pcaddu18i	$ra, %call36(_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 48
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 88
	ld.d	$a1, $s6, 16
	addi.d	$a0, $a0, -1
	st.d	$a0, $fp, 88
	ld.d	$s3, $a1, 0
	ld.d	$a0, $s6, 32
	mul.d	$a0, $a0, $s3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s1
	move	$s1, $a0
	beqz	$s3, .LBB11_10
# %bb.6:
	move	$a2, $s4
	ori	$a0, $zero, 1
	bne	$s3, $a0, .LBB11_21
# %bb.7:
	move	$a0, $zero
.LBB11_8:                               # %.lr.ph.preheader
	addi.w	$a3, $a0, 1
	.p2align	4, , 16
.LBB11_9:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$a4, $a0, 2
	ldx.w	$a4, $a2, $a4
	slli.d	$a4, $a4, 3
	fldx.d	$fa0, $a1, $a4
	slli.d	$a0, $a0, 3
	fstx.d	$fa0, $s1, $a0
	bstrpick.d	$a0, $a3, 31, 0
	addi.w	$a3, $a3, 1
	bltu	$a0, $s3, .LBB11_9
.LBB11_10:                              # %._crit_edge
	move	$a0, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 64
	st.d	$s1, $s6, 0
	move	$s5, $s0
	beqz	$a0, .LBB11_15
# %bb.11:                               # %.lr.ph.i.i.i.i.preheader
	ori	$a2, $zero, 16
	ori	$a3, $zero, 24
	move	$a1, $s0
	.p2align	4, , 16
.LBB11_12:                              # %.lr.ph.i.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a0, 32
	sltu	$a4, $a4, $s1
	masknez	$a5, $a0, $a4
	masknez	$a6, $a2, $a4
	maskeqz	$a7, $a3, $a4
	or	$a6, $a7, $a6
	ldx.d	$a0, $a0, $a6
	maskeqz	$a1, $a1, $a4
	or	$a1, $a1, $a5
	bnez	$a0, .LBB11_12
# %bb.13:                               # %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i
	move	$s5, $s0
	beq	$a1, $s0, .LBB11_15
# %bb.14:
	ld.d	$a0, $a1, 32
	move	$s5, $a1
	bgeu	$s1, $a0, .LBB11_27
.LBB11_15:                              # %.critedge.i
	ori	$a0, $zero, 48
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	addi.d	$s4, $a0, 32
	st.d	$s1, $a0, 32
	st.d	$s6, $a0, 40
.Ltmp51:                                # EH_LABEL
	move	$a0, $s2
	move	$a1, $s5
	move	$a2, $s4
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS2_)
	jirl	$ra, $ra, 0
.Ltmp52:                                # EH_LABEL
# %bb.16:
	move	$a2, $a1
	beqz	$a1, .LBB11_26
# %bb.17:
	move	$a3, $a0
	ori	$a0, $zero, 1
	bnez	$a3, .LBB11_20
# %bb.18:
	beq	$s0, $a2, .LBB11_20
# %bb.19:
	ld.d	$a0, $s4, 0
	ld.d	$a1, $a2, 32
	sltu	$a0, $a0, $a1
.LBB11_20:                              # %.thread.i
	move	$a1, $s3
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 88
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, 88
	b	.LBB11_27
.LBB11_21:                              # %vector.scevcheck
	addi.d	$a3, $s3, -1
	bstrpick.d	$a4, $a3, 31, 0
	addi.w	$a5, $zero, -1
	lu32i.d	$a5, 0
	move	$a0, $zero
	beq	$a4, $a5, .LBB11_8
# %bb.22:                               # %vector.scevcheck
	srli.d	$a3, $a3, 32
	bnez	$a3, .LBB11_8
# %bb.23:                               # %vector.ph
	bstrpick.d	$a0, $s3, 32, 1
	slli.d	$a0, $a0, 1
	addi.d	$a3, $a2, 4
	addi.d	$a4, $s1, 8
	move	$a5, $a0
	.p2align	4, , 16
.LBB11_24:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a3, -4
	ld.w	$a7, $a3, 0
	slli.d	$a6, $a6, 3
	slli.d	$a7, $a7, 3
	fldx.d	$fa0, $a1, $a6
	fldx.d	$fa1, $a1, $a7
	fst.d	$fa0, $a4, -8
	fst.d	$fa1, $a4, 0
	addi.d	$a3, $a3, 8
	addi.d	$a5, $a5, -2
	addi.d	$a4, $a4, 16
	bnez	$a5, .LBB11_24
# %bb.25:                               # %middle.block
	bne	$s3, $a0, .LBB11_8
	b	.LBB11_10
.LBB11_26:
	ori	$a1, $zero, 48
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB11_27:                              # %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE6insertIS5_IS0_S2_EEENSt9enable_ifIXsr16is_constructibleIS7_T_EE5valueES5_ISt17_Rb_tree_iteratorIS7_EbEE4typeEOSD_.exit
	move	$a0, $s1
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
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
.LBB11_28:                              # %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i
.Ltmp53:                                # EH_LABEL
	move	$fp, $a0
	ori	$a1, $zero, 48
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end11:
	.size	_ZN10MallocPlus14memory_reorderEPdPi, .Lfunc_end11-_ZN10MallocPlus14memory_reorderEPdPi
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table11:
.Lexception10:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end10-.Lcst_begin10
.Lcst_begin10:
	.uleb128 .Lfunc_begin10-.Lfunc_begin10  # >> Call Site 1 <<
	.uleb128 .Ltmp51-.Lfunc_begin10         #   Call between .Lfunc_begin10 and .Ltmp51
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp51-.Lfunc_begin10         # >> Call Site 2 <<
	.uleb128 .Ltmp52-.Ltmp51                #   Call between .Ltmp51 and .Ltmp52
	.uleb128 .Ltmp53-.Lfunc_begin10         #     jumps to .Ltmp53
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp52-.Lfunc_begin10         # >> Call Site 3 <<
	.uleb128 .Lfunc_end11-.Ltmp52           #   Call between .Ltmp52 and .Lfunc_end11
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end10:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN10MallocPlus14memory_reorderEPfPi # -- Begin function _ZN10MallocPlus14memory_reorderEPfPi
	.p2align	5
	.type	_ZN10MallocPlus14memory_reorderEPfPi,@function
_ZN10MallocPlus14memory_reorderEPfPi:   # @_ZN10MallocPlus14memory_reorderEPfPi
.Lfunc_begin11:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception11
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
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	ld.d	$a3, $a0, 64
	move	$s1, $a1
	beqz	$a3, .LBB12_27
# %bb.1:                                # %.lr.ph.i.i.i.preheader
	move	$fp, $a0
	addi.d	$s2, $a0, 48
	addi.d	$s0, $a0, 56
	ori	$a4, $zero, 16
	ori	$a5, $zero, 24
	move	$a0, $s0
	.p2align	4, , 16
.LBB12_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a6, $a3, 32
	sltu	$a6, $a6, $s1
	masknez	$a7, $a3, $a6
	masknez	$t0, $a4, $a6
	maskeqz	$t1, $a5, $a6
	or	$t0, $t1, $t0
	ldx.d	$a3, $a3, $t0
	maskeqz	$a0, $a0, $a6
	or	$a0, $a0, $a7
	bnez	$a3, .LBB12_2
# %bb.3:                                # %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i
	beq	$a0, $s0, .LBB12_27
# %bb.4:                                # %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit
	ld.d	$a3, $a0, 32
	bltu	$s1, $a3, .LBB12_27
# %bb.5:
	ld.d	$s6, $a0, 40
	move	$a1, $s0
	move	$s4, $a2
	pcaddu18i	$ra, %call36(_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 48
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 88
	ld.d	$a1, $s6, 16
	addi.d	$a0, $a0, -1
	st.d	$a0, $fp, 88
	ld.d	$s3, $a1, 0
	ld.d	$a0, $s6, 32
	mul.d	$a0, $a0, $s3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s1
	move	$s1, $a0
	beqz	$s3, .LBB12_10
# %bb.6:                                # %.lr.ph.preheader
	move	$a2, $s4
	ori	$a0, $zero, 8
	bgeu	$s3, $a0, .LBB12_21
# %bb.7:
	move	$a0, $zero
.LBB12_8:                               # %.lr.ph.preheader37
	addi.w	$a3, $a0, 1
	.p2align	4, , 16
.LBB12_9:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$a0, $a0, 2
	ldx.w	$a4, $a2, $a0
	slli.d	$a4, $a4, 2
	fldx.s	$fa0, $a1, $a4
	fstx.s	$fa0, $s1, $a0
	bstrpick.d	$a0, $a3, 31, 0
	addi.w	$a3, $a3, 1
	bltu	$a0, $s3, .LBB12_9
.LBB12_10:                              # %._crit_edge
	move	$a0, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 64
	st.d	$s1, $s6, 0
	move	$s5, $s0
	beqz	$a0, .LBB12_15
# %bb.11:                               # %.lr.ph.i.i.i.i.preheader
	ori	$a2, $zero, 16
	ori	$a3, $zero, 24
	move	$a1, $s0
	.p2align	4, , 16
.LBB12_12:                              # %.lr.ph.i.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a0, 32
	sltu	$a4, $a4, $s1
	masknez	$a5, $a0, $a4
	masknez	$a6, $a2, $a4
	maskeqz	$a7, $a3, $a4
	or	$a6, $a7, $a6
	ldx.d	$a0, $a0, $a6
	maskeqz	$a1, $a1, $a4
	or	$a1, $a1, $a5
	bnez	$a0, .LBB12_12
# %bb.13:                               # %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i
	move	$s5, $s0
	beq	$a1, $s0, .LBB12_15
# %bb.14:
	ld.d	$a0, $a1, 32
	move	$s5, $a1
	bgeu	$s1, $a0, .LBB12_27
.LBB12_15:                              # %.critedge.i
	ori	$a0, $zero, 48
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	addi.d	$s4, $a0, 32
	st.d	$s1, $a0, 32
	st.d	$s6, $a0, 40
.Ltmp54:                                # EH_LABEL
	move	$a0, $s2
	move	$a1, $s5
	move	$a2, $s4
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS2_)
	jirl	$ra, $ra, 0
.Ltmp55:                                # EH_LABEL
# %bb.16:
	move	$a2, $a1
	beqz	$a1, .LBB12_26
# %bb.17:
	move	$a3, $a0
	ori	$a0, $zero, 1
	bnez	$a3, .LBB12_20
# %bb.18:
	beq	$s0, $a2, .LBB12_20
# %bb.19:
	ld.d	$a0, $s4, 0
	ld.d	$a1, $a2, 32
	sltu	$a0, $a0, $a1
.LBB12_20:                              # %.thread.i
	move	$a1, $s3
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 88
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, 88
	b	.LBB12_27
.LBB12_21:                              # %vector.scevcheck
	addi.d	$a3, $s3, -1
	bstrpick.d	$a4, $a3, 31, 0
	addi.w	$a5, $zero, -1
	lu32i.d	$a5, 0
	move	$a0, $zero
	beq	$a4, $a5, .LBB12_8
# %bb.22:                               # %vector.scevcheck
	srli.d	$a3, $a3, 32
	bnez	$a3, .LBB12_8
# %bb.23:                               # %vector.ph
	bstrpick.d	$a0, $s3, 32, 2
	slli.d	$a0, $a0, 2
	move	$a3, $a2
	move	$a4, $s1
	move	$a5, $a0
	.p2align	4, , 16
.LBB12_24:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a3, 0
	vshuf4i.w	$vr1, $vr0, 14
	vsllwil.d.w	$vr1, $vr1, 0
	vsllwil.d.w	$vr0, $vr0, 0
	vpickve2gr.d	$a6, $vr0, 0
	slli.d	$a6, $a6, 2
	vpickve2gr.d	$a7, $vr0, 1
	slli.d	$a7, $a7, 2
	vpickve2gr.d	$t0, $vr1, 0
	slli.d	$t0, $t0, 2
	vpickve2gr.d	$t1, $vr1, 1
	slli.d	$t1, $t1, 2
	fldx.s	$fa0, $a1, $a6
	fldx.s	$fa1, $a1, $a7
	fldx.s	$fa2, $a1, $t0
	fldx.s	$fa3, $a1, $t1
	vextrins.w	$vr0, $vr1, 16
	vextrins.w	$vr0, $vr2, 32
	vextrins.w	$vr0, $vr3, 48
	vst	$vr0, $a4, 0
	addi.d	$a5, $a5, -4
	addi.d	$a4, $a4, 16
	addi.d	$a3, $a3, 16
	bnez	$a5, .LBB12_24
# %bb.25:                               # %middle.block
	bne	$s3, $a0, .LBB12_8
	b	.LBB12_10
.LBB12_26:
	ori	$a1, $zero, 48
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB12_27:                              # %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE6insertIS5_IS0_S2_EEENSt9enable_ifIXsr16is_constructibleIS7_T_EE5valueES5_ISt17_Rb_tree_iteratorIS7_EbEE4typeEOSD_.exit
	move	$a0, $s1
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
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
.LBB12_28:                              # %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i
.Ltmp56:                                # EH_LABEL
	move	$fp, $a0
	ori	$a1, $zero, 48
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end12:
	.size	_ZN10MallocPlus14memory_reorderEPfPi, .Lfunc_end12-_ZN10MallocPlus14memory_reorderEPfPi
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table12:
.Lexception11:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end11-.Lcst_begin11
.Lcst_begin11:
	.uleb128 .Lfunc_begin11-.Lfunc_begin11  # >> Call Site 1 <<
	.uleb128 .Ltmp54-.Lfunc_begin11         #   Call between .Lfunc_begin11 and .Ltmp54
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp54-.Lfunc_begin11         # >> Call Site 2 <<
	.uleb128 .Ltmp55-.Ltmp54                #   Call between .Ltmp54 and .Ltmp55
	.uleb128 .Ltmp56-.Lfunc_begin11         #     jumps to .Ltmp56
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp55-.Lfunc_begin11         # >> Call Site 3 <<
	.uleb128 .Lfunc_end12-.Ltmp55           #   Call between .Ltmp55 and .Lfunc_end12
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end11:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN10MallocPlus14memory_reorderEPiS0_ # -- Begin function _ZN10MallocPlus14memory_reorderEPiS0_
	.p2align	5
	.type	_ZN10MallocPlus14memory_reorderEPiS0_,@function
_ZN10MallocPlus14memory_reorderEPiS0_:  # @_ZN10MallocPlus14memory_reorderEPiS0_
.Lfunc_begin12:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception12
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
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	ld.d	$a3, $a0, 64
	move	$s1, $a1
	beqz	$a3, .LBB13_27
# %bb.1:                                # %.lr.ph.i.i.i.preheader
	move	$fp, $a0
	addi.d	$s2, $a0, 48
	addi.d	$s0, $a0, 56
	ori	$a4, $zero, 16
	ori	$a5, $zero, 24
	move	$a0, $s0
	.p2align	4, , 16
.LBB13_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a6, $a3, 32
	sltu	$a6, $a6, $s1
	masknez	$a7, $a3, $a6
	masknez	$t0, $a4, $a6
	maskeqz	$t1, $a5, $a6
	or	$t0, $t1, $t0
	ldx.d	$a3, $a3, $t0
	maskeqz	$a0, $a0, $a6
	or	$a0, $a0, $a7
	bnez	$a3, .LBB13_2
# %bb.3:                                # %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i
	beq	$a0, $s0, .LBB13_27
# %bb.4:                                # %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit
	ld.d	$a3, $a0, 32
	bltu	$s1, $a3, .LBB13_27
# %bb.5:
	ld.d	$s6, $a0, 40
	move	$a1, $s0
	move	$s4, $a2
	pcaddu18i	$ra, %call36(_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 48
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 88
	ld.d	$a1, $s6, 16
	addi.d	$a0, $a0, -1
	st.d	$a0, $fp, 88
	ld.d	$s3, $a1, 0
	ld.d	$a0, $s6, 32
	mul.d	$a0, $a0, $s3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s1
	move	$s1, $a0
	beqz	$s3, .LBB13_10
# %bb.6:                                # %.lr.ph.preheader
	move	$a2, $s4
	ori	$a0, $zero, 8
	bgeu	$s3, $a0, .LBB13_21
# %bb.7:
	move	$a0, $zero
.LBB13_8:                               # %.lr.ph.preheader37
	addi.w	$a3, $a0, 1
	.p2align	4, , 16
.LBB13_9:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$a0, $a0, 2
	ldx.w	$a4, $a2, $a0
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a1, $a4
	stx.w	$a4, $s1, $a0
	bstrpick.d	$a0, $a3, 31, 0
	addi.w	$a3, $a3, 1
	bltu	$a0, $s3, .LBB13_9
.LBB13_10:                              # %._crit_edge
	move	$a0, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 64
	st.d	$s1, $s6, 0
	move	$s5, $s0
	beqz	$a0, .LBB13_15
# %bb.11:                               # %.lr.ph.i.i.i.i.preheader
	ori	$a2, $zero, 16
	ori	$a3, $zero, 24
	move	$a1, $s0
	.p2align	4, , 16
.LBB13_12:                              # %.lr.ph.i.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a0, 32
	sltu	$a4, $a4, $s1
	masknez	$a5, $a0, $a4
	masknez	$a6, $a2, $a4
	maskeqz	$a7, $a3, $a4
	or	$a6, $a7, $a6
	ldx.d	$a0, $a0, $a6
	maskeqz	$a1, $a1, $a4
	or	$a1, $a1, $a5
	bnez	$a0, .LBB13_12
# %bb.13:                               # %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i
	move	$s5, $s0
	beq	$a1, $s0, .LBB13_15
# %bb.14:
	ld.d	$a0, $a1, 32
	move	$s5, $a1
	bgeu	$s1, $a0, .LBB13_27
.LBB13_15:                              # %.critedge.i
	ori	$a0, $zero, 48
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	addi.d	$s4, $a0, 32
	st.d	$s1, $a0, 32
	st.d	$s6, $a0, 40
.Ltmp57:                                # EH_LABEL
	move	$a0, $s2
	move	$a1, $s5
	move	$a2, $s4
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS2_)
	jirl	$ra, $ra, 0
.Ltmp58:                                # EH_LABEL
# %bb.16:
	move	$a2, $a1
	beqz	$a1, .LBB13_26
# %bb.17:
	move	$a3, $a0
	ori	$a0, $zero, 1
	bnez	$a3, .LBB13_20
# %bb.18:
	beq	$s0, $a2, .LBB13_20
# %bb.19:
	ld.d	$a0, $s4, 0
	ld.d	$a1, $a2, 32
	sltu	$a0, $a0, $a1
.LBB13_20:                              # %.thread.i
	move	$a1, $s3
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 88
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, 88
	b	.LBB13_27
.LBB13_21:                              # %vector.scevcheck
	addi.d	$a3, $s3, -1
	bstrpick.d	$a4, $a3, 31, 0
	addi.w	$a5, $zero, -1
	lu32i.d	$a5, 0
	move	$a0, $zero
	beq	$a4, $a5, .LBB13_8
# %bb.22:                               # %vector.scevcheck
	srli.d	$a3, $a3, 32
	bnez	$a3, .LBB13_8
# %bb.23:                               # %vector.ph
	bstrpick.d	$a0, $s3, 32, 2
	slli.d	$a0, $a0, 2
	move	$a3, $a2
	move	$a4, $s1
	move	$a5, $a0
	.p2align	4, , 16
.LBB13_24:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a3, 0
	vshuf4i.w	$vr1, $vr0, 14
	vsllwil.d.w	$vr1, $vr1, 0
	vsllwil.d.w	$vr0, $vr0, 0
	vpickve2gr.d	$a6, $vr0, 0
	slli.d	$a6, $a6, 2
	vpickve2gr.d	$a7, $vr0, 1
	slli.d	$a7, $a7, 2
	vpickve2gr.d	$t0, $vr1, 0
	slli.d	$t0, $t0, 2
	vpickve2gr.d	$t1, $vr1, 1
	slli.d	$t1, $t1, 2
	ldx.w	$a6, $a1, $a6
	ldx.w	$a7, $a1, $a7
	ldx.w	$t0, $a1, $t0
	ldx.w	$t1, $a1, $t1
	vinsgr2vr.w	$vr0, $a6, 0
	vinsgr2vr.w	$vr0, $a7, 1
	vinsgr2vr.w	$vr0, $t0, 2
	vinsgr2vr.w	$vr0, $t1, 3
	vst	$vr0, $a4, 0
	addi.d	$a5, $a5, -4
	addi.d	$a4, $a4, 16
	addi.d	$a3, $a3, 16
	bnez	$a5, .LBB13_24
# %bb.25:                               # %middle.block
	bne	$s3, $a0, .LBB13_8
	b	.LBB13_10
.LBB13_26:
	ori	$a1, $zero, 48
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB13_27:                              # %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE6insertIS5_IS0_S2_EEENSt9enable_ifIXsr16is_constructibleIS7_T_EE5valueES5_ISt17_Rb_tree_iteratorIS7_EbEE4typeEOSD_.exit
	move	$a0, $s1
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
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
.LBB13_28:                              # %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i
.Ltmp59:                                # EH_LABEL
	move	$fp, $a0
	ori	$a1, $zero, 48
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end13:
	.size	_ZN10MallocPlus14memory_reorderEPiS0_, .Lfunc_end13-_ZN10MallocPlus14memory_reorderEPiS0_
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table13:
.Lexception12:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end12-.Lcst_begin12
.Lcst_begin12:
	.uleb128 .Lfunc_begin12-.Lfunc_begin12  # >> Call Site 1 <<
	.uleb128 .Ltmp57-.Lfunc_begin12         #   Call between .Lfunc_begin12 and .Ltmp57
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp57-.Lfunc_begin12         # >> Call Site 2 <<
	.uleb128 .Ltmp58-.Ltmp57                #   Call between .Ltmp57 and .Ltmp58
	.uleb128 .Ltmp59-.Lfunc_begin12         #     jumps to .Ltmp59
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp58-.Lfunc_begin12         # >> Call Site 3 <<
	.uleb128 .Lfunc_end13-.Ltmp58           #   Call between .Ltmp58 and .Lfunc_end13
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end12:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN10MallocPlus25memory_reorder_indexarrayEPiS0_S0_ # -- Begin function _ZN10MallocPlus25memory_reorder_indexarrayEPiS0_S0_
	.p2align	5
	.type	_ZN10MallocPlus25memory_reorder_indexarrayEPiS0_S0_,@function
_ZN10MallocPlus25memory_reorder_indexarrayEPiS0_S0_: # @_ZN10MallocPlus25memory_reorder_indexarrayEPiS0_S0_
.Lfunc_begin13:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception13
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
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	ld.d	$a4, $a0, 64
	move	$s1, $a1
	beqz	$a4, .LBB14_27
# %bb.1:                                # %.lr.ph.i.i.i.preheader
	move	$fp, $a0
	addi.d	$s2, $a0, 48
	addi.d	$s0, $a0, 56
	ori	$a5, $zero, 16
	ori	$a6, $zero, 24
	move	$a0, $s0
	.p2align	4, , 16
.LBB14_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a7, $a4, 32
	sltu	$a7, $a7, $s1
	masknez	$t0, $a4, $a7
	masknez	$t1, $a5, $a7
	maskeqz	$t2, $a6, $a7
	or	$t1, $t2, $t1
	ldx.d	$a4, $a4, $t1
	maskeqz	$a0, $a0, $a7
	or	$a0, $a0, $t0
	bnez	$a4, .LBB14_2
# %bb.3:                                # %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i
	beq	$a0, $s0, .LBB14_27
# %bb.4:                                # %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit
	ld.d	$a4, $a0, 32
	bltu	$s1, $a4, .LBB14_27
# %bb.5:
	ld.d	$s6, $a0, 40
	move	$a1, $s0
	move	$s4, $a3
	move	$s5, $a2
	pcaddu18i	$ra, %call36(_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 48
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 88
	ld.d	$a1, $s6, 16
	addi.d	$a0, $a0, -1
	st.d	$a0, $fp, 88
	ld.d	$s3, $a1, 0
	ld.d	$a0, $s6, 32
	mul.d	$a0, $a0, $s3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $s1
	move	$s1, $a0
	beqz	$s3, .LBB14_10
# %bb.6:
	move	$a3, $s5
	move	$a2, $s4
	ori	$a0, $zero, 1
	bne	$s3, $a0, .LBB14_21
# %bb.7:
	move	$a0, $zero
.LBB14_8:                               # %.lr.ph.preheader
	addi.w	$a4, $a0, 1
	.p2align	4, , 16
.LBB14_9:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$a0, $a0, 2
	ldx.w	$a5, $a3, $a0
	slli.d	$a5, $a5, 2
	ldx.w	$a5, $a1, $a5
	slli.d	$a5, $a5, 2
	ldx.w	$a5, $a2, $a5
	stx.w	$a5, $s1, $a0
	bstrpick.d	$a0, $a4, 31, 0
	addi.w	$a4, $a4, 1
	bltu	$a0, $s3, .LBB14_9
.LBB14_10:                              # %._crit_edge
	move	$a0, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 64
	st.d	$s1, $s6, 0
	move	$s5, $s0
	beqz	$a0, .LBB14_15
# %bb.11:                               # %.lr.ph.i.i.i.i.preheader
	ori	$a2, $zero, 16
	ori	$a3, $zero, 24
	move	$a1, $s0
	.p2align	4, , 16
.LBB14_12:                              # %.lr.ph.i.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a0, 32
	sltu	$a4, $a4, $s1
	masknez	$a5, $a0, $a4
	masknez	$a6, $a2, $a4
	maskeqz	$a7, $a3, $a4
	or	$a6, $a7, $a6
	ldx.d	$a0, $a0, $a6
	maskeqz	$a1, $a1, $a4
	or	$a1, $a1, $a5
	bnez	$a0, .LBB14_12
# %bb.13:                               # %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i
	move	$s5, $s0
	beq	$a1, $s0, .LBB14_15
# %bb.14:
	ld.d	$a0, $a1, 32
	move	$s5, $a1
	bgeu	$s1, $a0, .LBB14_27
.LBB14_15:                              # %.critedge.i
	ori	$a0, $zero, 48
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	addi.d	$s4, $a0, 32
	st.d	$s1, $a0, 32
	st.d	$s6, $a0, 40
.Ltmp60:                                # EH_LABEL
	move	$a0, $s2
	move	$a1, $s5
	move	$a2, $s4
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS2_)
	jirl	$ra, $ra, 0
.Ltmp61:                                # EH_LABEL
# %bb.16:
	move	$a2, $a1
	beqz	$a1, .LBB14_26
# %bb.17:
	move	$a3, $a0
	ori	$a0, $zero, 1
	bnez	$a3, .LBB14_20
# %bb.18:
	beq	$s0, $a2, .LBB14_20
# %bb.19:
	ld.d	$a0, $s4, 0
	ld.d	$a1, $a2, 32
	sltu	$a0, $a0, $a1
.LBB14_20:                              # %.thread.i
	move	$a1, $s3
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 88
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, 88
	b	.LBB14_27
.LBB14_21:                              # %vector.scevcheck
	addi.d	$a4, $s3, -1
	bstrpick.d	$a5, $a4, 31, 0
	addi.w	$a6, $zero, -1
	lu32i.d	$a6, 0
	move	$a0, $zero
	beq	$a5, $a6, .LBB14_8
# %bb.22:                               # %vector.scevcheck
	srli.d	$a4, $a4, 32
	bnez	$a4, .LBB14_8
# %bb.23:                               # %vector.ph
	bstrpick.d	$a0, $s3, 32, 1
	slli.d	$a0, $a0, 1
	addi.d	$a4, $a3, 4
	addi.d	$a5, $s1, 4
	move	$a6, $a0
	.p2align	4, , 16
.LBB14_24:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a7, $a4, -4
	ld.w	$t0, $a4, 0
	slli.d	$a7, $a7, 2
	slli.d	$t0, $t0, 2
	ldx.w	$a7, $a1, $a7
	ldx.w	$t0, $a1, $t0
	slli.d	$a7, $a7, 2
	slli.d	$t0, $t0, 2
	ldx.w	$a7, $a2, $a7
	ldx.w	$t0, $a2, $t0
	st.w	$a7, $a5, -4
	st.w	$t0, $a5, 0
	addi.d	$a4, $a4, 8
	addi.d	$a6, $a6, -2
	addi.d	$a5, $a5, 8
	bnez	$a6, .LBB14_24
# %bb.25:                               # %middle.block
	bne	$s3, $a0, .LBB14_8
	b	.LBB14_10
.LBB14_26:
	ori	$a1, $zero, 48
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB14_27:                              # %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE6insertIS5_IS0_S2_EEENSt9enable_ifIXsr16is_constructibleIS7_T_EE5valueES5_ISt17_Rb_tree_iteratorIS7_EbEE4typeEOSD_.exit
	move	$a0, $s1
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
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
.LBB14_28:                              # %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i
.Ltmp62:                                # EH_LABEL
	move	$fp, $a0
	ori	$a1, $zero, 48
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end14:
	.size	_ZN10MallocPlus25memory_reorder_indexarrayEPiS0_S0_, .Lfunc_end14-_ZN10MallocPlus25memory_reorder_indexarrayEPiS0_S0_
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table14:
.Lexception13:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end13-.Lcst_begin13
.Lcst_begin13:
	.uleb128 .Lfunc_begin13-.Lfunc_begin13  # >> Call Site 1 <<
	.uleb128 .Ltmp60-.Lfunc_begin13         #   Call between .Lfunc_begin13 and .Ltmp60
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp60-.Lfunc_begin13         # >> Call Site 2 <<
	.uleb128 .Ltmp61-.Ltmp60                #   Call between .Ltmp60 and .Ltmp61
	.uleb128 .Ltmp62-.Lfunc_begin13         #     jumps to .Ltmp62
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp61-.Lfunc_begin13         # >> Call Site 3 <<
	.uleb128 .Lfunc_end14-.Ltmp61           #   Call between .Ltmp61 and .Lfunc_end14
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end13:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN10MallocPlus18memory_reorder_allEPi # -- Begin function _ZN10MallocPlus18memory_reorder_allEPi
	.p2align	5
	.type	_ZN10MallocPlus18memory_reorder_allEPi,@function
_ZN10MallocPlus18memory_reorder_allEPi: # @_ZN10MallocPlus18memory_reorder_allEPi
.Lfunc_begin14:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception14
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
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	addi.d	$fp, $sp, 56
	st.w	$zero, $sp, 56
	ld.d	$a1, $a0, 64
	st.d	$zero, $sp, 64
	st.d	$fp, $sp, 72
	st.d	$fp, $sp, 80
	st.d	$zero, $sp, 88
	beqz	$a1, .LBB15_73
# %bb.1:
	move	$s5, $a0
	addi.d	$a0, $a0, 48
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	addi.d	$a0, $sp, 48
	st.d	$a0, $sp, 96
	addi.d	$a3, $sp, 96
	move	$a2, $fp
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE7_M_copyILb0ENSB_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS5_ESG_PSt18_Rb_tree_node_baseRT0_)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	.p2align	4, , 16
.LBB15_2:                               # %.noexc.i.i
                                        # =>This Inner Loop Header: Depth=1
	move	$s4, $a1
	ld.d	$a1, $a1, 16
	bnez	$a1, .LBB15_2
# %bb.3:                                # %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i
	st.d	$s4, $sp, 72
	move	$a2, $a0
	.p2align	4, , 16
.LBB15_4:                               # =>This Inner Loop Header: Depth=1
	move	$a1, $a2
	ld.d	$a2, $a2, 24
	bnez	$a2, .LBB15_4
# %bb.5:                                # %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEEC2ERKS9_.exit
	ld.d	$a2, $s5, 88
	st.d	$a1, $sp, 80
	st.d	$a2, $sp, 88
	st.d	$a0, $sp, 64
	beq	$s4, $fp, .LBB15_73
# %bb.6:                                # %.lr.ph247
	move	$fp, $zero
	st.d	$zero, $sp, 16                  # 8-byte Folded Spill
	st.d	$zero, $sp, 8                   # 8-byte Folded Spill
	addi.d	$s0, $s5, 56
	ori	$s3, $zero, 16
	ori	$s6, $zero, 24
	st.d	$s5, $sp, 40                    # 8-byte Folded Spill
	b	.LBB15_9
	.p2align	4, , 16
.LBB15_7:                               #   in Loop: Header=BB15_9 Depth=1
	ori	$a1, $zero, 48
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB15_8:                               #   in Loop: Header=BB15_9 Depth=1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	addi.d	$a0, $sp, 56
	beq	$s4, $a0, .LBB15_71
.LBB15_9:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_11 Depth 2
                                        #     Child Loop BB15_52 Depth 2
                                        #     Child Loop BB15_56 Depth 2
                                        #     Child Loop BB15_60 Depth 2
                                        #     Child Loop BB15_39 Depth 2
                                        #     Child Loop BB15_43 Depth 2
                                        #     Child Loop BB15_18 Depth 2
                                        #     Child Loop BB15_21 Depth 2
	ld.d	$a2, $s5, 64
	ld.d	$s1, $s4, 40
	move	$a0, $s0
	beqz	$a2, .LBB15_14
# %bb.10:                               # %.lr.ph.i.i.i
                                        #   in Loop: Header=BB15_9 Depth=1
	ld.d	$a1, $s1, 0
	move	$a3, $s0
	.p2align	4, , 16
.LBB15_11:                              #   Parent Loop BB15_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $a2, 32
	sltu	$a0, $a0, $a1
	masknez	$a4, $a2, $a0
	masknez	$a5, $s3, $a0
	maskeqz	$a6, $s6, $a0
	or	$a5, $a6, $a5
	ldx.d	$a2, $a2, $a5
	maskeqz	$a0, $a3, $a0
	or	$a3, $a0, $a4
	bnez	$a2, .LBB15_11
# %bb.12:                               # %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i
                                        #   in Loop: Header=BB15_9 Depth=1
	move	$a0, $s0
	beq	$a3, $s0, .LBB15_14
# %bb.13:                               #   in Loop: Header=BB15_9 Depth=1
	ld.d	$a0, $a3, 32
	sltu	$a0, $a1, $a0
	masknez	$a1, $a3, $a0
	maskeqz	$a0, $s0, $a0
	or	$a0, $a0, $a1
.LBB15_14:                              # %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.thread.i.i
                                        #   in Loop: Header=BB15_9 Depth=1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 48
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 88
	addi.d	$a0, $a0, -1
	ld.d	$a1, $s1, 16
	st.d	$a0, $s5, 88
	ld.bu	$a0, $s1, 41
	ld.d	$s2, $a1, 0
	andi	$a0, $a0, 1
	bnez	$a0, .LBB15_26
# %bb.15:                               #   in Loop: Header=BB15_9 Depth=1
	ld.d	$a0, $s1, 32
	ld.d	$s8, $s1, 0
	ori	$a1, $zero, 8
	bne	$a0, $a1, .LBB15_37
# %bb.16:                               #   in Loop: Header=BB15_9 Depth=1
	slli.d	$a0, $s2, 3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	beqz	$s2, .LBB15_19
# %bb.17:                               # %.lr.ph240.preheader
                                        #   in Loop: Header=BB15_9 Depth=1
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	move	$a2, $s7
	.p2align	4, , 16
.LBB15_18:                              # %.lr.ph240
                                        #   Parent Loop BB15_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a3, $a1, 0
	slli.d	$a3, $a3, 3
	fldx.d	$fa0, $s8, $a3
	fst.d	$fa0, $a2, 0
	bstrpick.d	$a3, $a0, 31, 0
	addi.d	$a2, $a2, 8
	addi.d	$a1, $a1, 4
	addi.w	$a0, $a0, 1
	bltu	$a3, $s2, .LBB15_18
.LBB15_19:                              # %._crit_edge241
                                        #   in Loop: Header=BB15_9 Depth=1
	move	$a0, $s8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 64
	st.d	$s7, $s1, 0
	move	$s5, $s0
	beqz	$a0, .LBB15_24
# %bb.20:                               # %.lr.ph.i.i.i.i87.preheader
                                        #   in Loop: Header=BB15_9 Depth=1
	move	$a1, $s0
	.p2align	4, , 16
.LBB15_21:                              # %.lr.ph.i.i.i.i87
                                        #   Parent Loop BB15_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $a0, 32
	sltu	$a2, $a2, $s7
	masknez	$a3, $a0, $a2
	masknez	$a4, $s3, $a2
	maskeqz	$a5, $s6, $a2
	or	$a4, $a5, $a4
	ldx.d	$a0, $a0, $a4
	maskeqz	$a1, $a1, $a2
	or	$a1, $a1, $a3
	bnez	$a0, .LBB15_21
# %bb.22:                               # %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i95
                                        #   in Loop: Header=BB15_9 Depth=1
	move	$s5, $s0
	beq	$a1, $s0, .LBB15_24
# %bb.23:                               #   in Loop: Header=BB15_9 Depth=1
	ld.d	$a0, $a1, 32
	move	$s5, $a1
	bgeu	$s7, $a0, .LBB15_70
.LBB15_24:                              # %.critedge.i100
                                        #   in Loop: Header=BB15_9 Depth=1
.Ltmp87:                                # EH_LABEL
	ori	$a0, $zero, 48
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp88:                                # EH_LABEL
# %bb.25:                               # %.noexc140
                                        #   in Loop: Header=BB15_9 Depth=1
	move	$s8, $a0
	addi.d	$s2, $a0, 32
	st.d	$s7, $a0, 32
	st.d	$s1, $a0, 40
.Ltmp90:                                # EH_LABEL
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	move	$a1, $s5
	move	$a2, $s2
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS2_)
	jirl	$ra, $ra, 0
.Ltmp91:                                # EH_LABEL
	b	.LBB15_65
	.p2align	4, , 16
.LBB15_26:                              #   in Loop: Header=BB15_9 Depth=1
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	sub.d	$s8, $a3, $fp
	srai.d	$a0, $s8, 2
	bgeu	$a0, $s2, .LBB15_54
# %bb.27:                               #   in Loop: Header=BB15_9 Depth=1
	sub.d	$s5, $s2, $a0
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	sub.d	$a1, $a1, $a3
	srai.d	$a1, $a1, 2
	bgeu	$a1, $s5, .LBB15_48
# %bb.28:                               #   in Loop: Header=BB15_9 Depth=1
	addi.w	$a1, $zero, -1
	lu52i.d	$a1, $a1, 511
	xor	$a2, $a0, $a1
	bltu	$a2, $s5, .LBB15_75
# %bb.29:                               # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i
                                        #   in Loop: Header=BB15_9 Depth=1
	sltu	$a2, $s5, $a0
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $a0, $a2
	or	$a2, $a2, $a3
	add.d	$a0, $a2, $a0
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$s2, $a0, $a1
	slli.d	$a0, $s2, 2
.Ltmp63:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp64:                                # EH_LABEL
# %bb.30:                               # %.noexc128
                                        #   in Loop: Header=BB15_9 Depth=1
	move	$s7, $a0
	add.d	$a2, $a0, $s8
	addi.d	$a1, $s5, -1
	stx.w	$zero, $a0, $s8
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	beqz	$a1, .LBB15_32
# %bb.31:                               # %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i29.i
                                        #   in Loop: Header=BB15_9 Depth=1
	addi.d	$a0, $a2, 4
	slli.d	$a2, $a1, 2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
.LBB15_32:                              # %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit32.i
                                        #   in Loop: Header=BB15_9 Depth=1
	blez	$s8, .LBB15_34
# %bb.33:                               #   in Loop: Header=BB15_9 Depth=1
	move	$a0, $s7
	move	$a1, $fp
	move	$a2, $s8
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
.LBB15_34:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
                                        #   in Loop: Header=BB15_9 Depth=1
	move	$s8, $s2
	beqz	$fp, .LBB15_36
# %bb.35:                               #   in Loop: Header=BB15_9 Depth=1
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	sub.d	$a1, $a0, $fp
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
.LBB15_36:                              # %_ZZNSt6vectorIiSaIiEE17_M_default_appendEmEN6_GuardD2Ev.exit.i
                                        #   in Loop: Header=BB15_9 Depth=1
	ld.d	$a0, $s1, 16
	ld.d	$s2, $a0, 0
	alsl.d	$a3, $s5, $a2, 2
	alsl.d	$a0, $s8, $s7, 2
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	ld.d	$s5, $sp, 40                    # 8-byte Folded Reload
	st.d	$a3, $sp, 16                    # 8-byte Folded Spill
	addi.w	$a0, $s2, 0
	bgtz	$a0, .LBB15_51
	b	.LBB15_53
	.p2align	4, , 16
.LBB15_37:                              #   in Loop: Header=BB15_9 Depth=1
	mul.d	$a0, $s2, $a0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	beqz	$s2, .LBB15_40
# %bb.38:                               # %.lr.ph236.preheader
                                        #   in Loop: Header=BB15_9 Depth=1
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	move	$a2, $s7
	.p2align	4, , 16
.LBB15_39:                              # %.lr.ph236
                                        #   Parent Loop BB15_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a3, $a1, 0
	slli.d	$a3, $a3, 2
	fldx.s	$fa0, $s8, $a3
	fst.s	$fa0, $a2, 0
	bstrpick.d	$a3, $a0, 31, 0
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, 4
	addi.w	$a0, $a0, 1
	bltu	$a3, $s2, .LBB15_39
.LBB15_40:                              # %._crit_edge237
                                        #   in Loop: Header=BB15_9 Depth=1
.Ltmp78:                                # EH_LABEL
	move	$a0, $s5
	move	$a1, $s8
	move	$a2, $s7
	pcaddu18i	$ra, %call36(_ZN10MallocPlus14memory_replaceEPvS0_)
	jirl	$ra, $ra, 0
.Ltmp79:                                # EH_LABEL
# %bb.41:                               #   in Loop: Header=BB15_9 Depth=1
	move	$a0, $s8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 64
	st.d	$s7, $s1, 0
	move	$s5, $s0
	beqz	$a0, .LBB15_46
# %bb.42:                               # %.lr.ph.i.i.i.i105.preheader
                                        #   in Loop: Header=BB15_9 Depth=1
	move	$a1, $s0
	.p2align	4, , 16
.LBB15_43:                              # %.lr.ph.i.i.i.i105
                                        #   Parent Loop BB15_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $a0, 32
	sltu	$a2, $a2, $s7
	masknez	$a3, $a0, $a2
	masknez	$a4, $s3, $a2
	maskeqz	$a5, $s6, $a2
	or	$a4, $a5, $a4
	ldx.d	$a0, $a0, $a4
	maskeqz	$a1, $a1, $a2
	or	$a1, $a1, $a3
	bnez	$a0, .LBB15_43
# %bb.44:                               # %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i113
                                        #   in Loop: Header=BB15_9 Depth=1
	move	$s5, $s0
	beq	$a1, $s0, .LBB15_46
# %bb.45:                               #   in Loop: Header=BB15_9 Depth=1
	ld.d	$a0, $a1, 32
	move	$s5, $a1
	bgeu	$s7, $a0, .LBB15_70
.LBB15_46:                              # %.critedge.i118
                                        #   in Loop: Header=BB15_9 Depth=1
.Ltmp81:                                # EH_LABEL
	ori	$a0, $zero, 48
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp82:                                # EH_LABEL
# %bb.47:                               # %.noexc152
                                        #   in Loop: Header=BB15_9 Depth=1
	move	$s8, $a0
	addi.d	$s2, $a0, 32
	st.d	$s7, $a0, 32
	st.d	$s1, $a0, 40
.Ltmp84:                                # EH_LABEL
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	move	$a1, $s5
	move	$a2, $s2
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS2_)
	jirl	$ra, $ra, 0
.Ltmp85:                                # EH_LABEL
	b	.LBB15_65
.LBB15_48:                              #   in Loop: Header=BB15_9 Depth=1
	st.w	$zero, $a3, 0
	addi.d	$s5, $s5, -1
	addi.d	$a3, $a3, 4
	beqz	$s5, .LBB15_50
# %bb.49:                               # %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i
                                        #   in Loop: Header=BB15_9 Depth=1
	slli.d	$a2, $s5, 2
	move	$a0, $a3
	move	$a1, $zero
	move	$s7, $a3
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	alsl.d	$a3, $s5, $s7, 2
.LBB15_50:                              #   in Loop: Header=BB15_9 Depth=1
	move	$s7, $fp
	ld.d	$s5, $sp, 40                    # 8-byte Folded Reload
	st.d	$a3, $sp, 16                    # 8-byte Folded Spill
	addi.w	$a0, $s2, 0
	blez	$a0, .LBB15_53
.LBB15_51:                              # %.lr.ph.preheader
                                        #   in Loop: Header=BB15_9 Depth=1
	move	$a0, $zero
	bstrpick.d	$a1, $s2, 30, 0
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB15_52:                              # %.lr.ph
                                        #   Parent Loop BB15_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a3, $a2, 0
	slli.d	$a3, $a3, 2
	stx.w	$a0, $s7, $a3
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 4
	bnez	$a1, .LBB15_52
.LBB15_53:                              #   in Loop: Header=BB15_9 Depth=1
	move	$fp, $s7
.LBB15_54:                              # %.loopexit
                                        #   in Loop: Header=BB15_9 Depth=1
	ld.d	$a0, $s1, 32
	ld.d	$s8, $s1, 0
	mul.d	$a0, $a0, $s2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	beqz	$s2, .LBB15_57
# %bb.55:                               # %.lr.ph233.preheader
                                        #   in Loop: Header=BB15_9 Depth=1
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	move	$a2, $s7
	.p2align	4, , 16
.LBB15_56:                              # %.lr.ph233
                                        #   Parent Loop BB15_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a3, $a1, 0
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $s8, $a3
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $fp, $a3
	st.w	$a3, $a2, 0
	bstrpick.d	$a3, $a0, 31, 0
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, 4
	addi.w	$a0, $a0, 1
	bltu	$a3, $s2, .LBB15_56
.LBB15_57:                              # %._crit_edge
                                        #   in Loop: Header=BB15_9 Depth=1
.Ltmp66:                                # EH_LABEL
	move	$a0, $s5
	move	$a1, $s8
	move	$a2, $s7
	pcaddu18i	$ra, %call36(_ZN10MallocPlus14memory_replaceEPvS0_)
	jirl	$ra, $ra, 0
.Ltmp67:                                # EH_LABEL
# %bb.58:                               #   in Loop: Header=BB15_9 Depth=1
	move	$a0, $s8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 64
	st.d	$s7, $s1, 0
	move	$s5, $s0
	beqz	$a0, .LBB15_63
# %bb.59:                               # %.lr.ph.i.i.i.i.preheader
                                        #   in Loop: Header=BB15_9 Depth=1
	move	$a1, $s0
	.p2align	4, , 16
.LBB15_60:                              # %.lr.ph.i.i.i.i
                                        #   Parent Loop BB15_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $a0, 32
	sltu	$a2, $a2, $s7
	masknez	$a3, $a0, $a2
	masknez	$a4, $s3, $a2
	maskeqz	$a5, $s6, $a2
	or	$a4, $a5, $a4
	ldx.d	$a0, $a0, $a4
	maskeqz	$a1, $a1, $a2
	or	$a1, $a1, $a3
	bnez	$a0, .LBB15_60
# %bb.61:                               # %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i
                                        #   in Loop: Header=BB15_9 Depth=1
	move	$s5, $s0
	beq	$a1, $s0, .LBB15_63
# %bb.62:                               #   in Loop: Header=BB15_9 Depth=1
	ld.d	$a0, $a1, 32
	move	$s5, $a1
	bgeu	$s7, $a0, .LBB15_70
.LBB15_63:                              # %.critedge.i
                                        #   in Loop: Header=BB15_9 Depth=1
.Ltmp69:                                # EH_LABEL
	ori	$a0, $zero, 48
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp70:                                # EH_LABEL
# %bb.64:                               # %.noexc131
                                        #   in Loop: Header=BB15_9 Depth=1
	move	$s8, $a0
	addi.d	$s2, $a0, 32
	st.d	$s7, $a0, 32
	st.d	$s1, $a0, 40
.Ltmp72:                                # EH_LABEL
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	move	$a1, $s5
	move	$a2, $s2
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS2_)
	jirl	$ra, $ra, 0
.Ltmp73:                                # EH_LABEL
.LBB15_65:                              #   in Loop: Header=BB15_9 Depth=1
	move	$a2, $a1
	ld.d	$s5, $sp, 40                    # 8-byte Folded Reload
	beqz	$a1, .LBB15_7
# %bb.66:                               #   in Loop: Header=BB15_9 Depth=1
	move	$a3, $a0
	ori	$a0, $zero, 1
	bnez	$a3, .LBB15_69
# %bb.67:                               #   in Loop: Header=BB15_9 Depth=1
	beq	$s0, $a2, .LBB15_69
# %bb.68:                               #   in Loop: Header=BB15_9 Depth=1
	ld.d	$a0, $s2, 0
	ld.d	$a1, $a2, 32
	sltu	$a0, $a0, $a1
.LBB15_69:                              # %.thread.i
                                        #   in Loop: Header=BB15_9 Depth=1
	move	$a1, $s8
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 88
	addi.d	$a0, $a0, 1
	st.d	$a0, $s5, 88
	b	.LBB15_8
.LBB15_70:                              #   in Loop: Header=BB15_9 Depth=1
	ld.d	$s5, $sp, 40                    # 8-byte Folded Reload
	b	.LBB15_8
.LBB15_71:                              # %_ZNSt6vectorIiSaIiEE5clearEv.exit
	beqz	$fp, .LBB15_73
# %bb.72:
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	sub.d	$a1, $a0, $fp
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB15_73:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit126
	ld.d	$a1, $sp, 64
.Ltmp93:                                # EH_LABEL
	addi.d	$a0, $sp, 48
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E)
	jirl	$ra, $ra, 0
.Ltmp94:                                # EH_LABEL
# %bb.74:                               # %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEED2Ev.exit
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
.LBB15_75:
.Ltmp75:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp76:                                # EH_LABEL
# %bb.76:                               # %.noexc127
.LBB15_77:
.Ltmp95:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB15_78:                              # %.loopexit202
.Ltmp65:                                # EH_LABEL
	b	.LBB15_89
.LBB15_79:                              # %.loopexit.split-lp
.Ltmp77:                                # EH_LABEL
	b	.LBB15_89
.LBB15_80:                              # %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i132
.Ltmp92:                                # EH_LABEL
	b	.LBB15_87
.LBB15_81:
.Ltmp89:                                # EH_LABEL
	b	.LBB15_89
.LBB15_82:                              # %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i144
.Ltmp86:                                # EH_LABEL
	b	.LBB15_87
.LBB15_83:
.Ltmp83:                                # EH_LABEL
	b	.LBB15_89
.LBB15_84:
.Ltmp80:                                # EH_LABEL
	b	.LBB15_89
.LBB15_85:
.Ltmp71:                                # EH_LABEL
	b	.LBB15_89
.LBB15_86:                              # %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i
.Ltmp74:                                # EH_LABEL
.LBB15_87:                              # %.body
	move	$s0, $a0
	ori	$a1, $zero, 48
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB15_90
.LBB15_88:
.Ltmp68:                                # EH_LABEL
.LBB15_89:                              # %.body
	move	$s0, $a0
.LBB15_90:                              # %.body
	beqz	$fp, .LBB15_92
# %bb.91:
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	sub.d	$a1, $a0, $fp
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB15_92:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit
	addi.d	$a0, $sp, 48
	pcaddu18i	$ra, %call36(_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEED2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end15:
	.size	_ZN10MallocPlus18memory_reorder_allEPi, .Lfunc_end15-_ZN10MallocPlus18memory_reorder_allEPi
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table15:
.Lexception14:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase3-.Lttbaseref3
.Lttbaseref3:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end14-.Lcst_begin14
.Lcst_begin14:
	.uleb128 .Lfunc_begin14-.Lfunc_begin14  # >> Call Site 1 <<
	.uleb128 .Ltmp87-.Lfunc_begin14         #   Call between .Lfunc_begin14 and .Ltmp87
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp87-.Lfunc_begin14         # >> Call Site 2 <<
	.uleb128 .Ltmp88-.Ltmp87                #   Call between .Ltmp87 and .Ltmp88
	.uleb128 .Ltmp89-.Lfunc_begin14         #     jumps to .Ltmp89
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp90-.Lfunc_begin14         # >> Call Site 3 <<
	.uleb128 .Ltmp91-.Ltmp90                #   Call between .Ltmp90 and .Ltmp91
	.uleb128 .Ltmp92-.Lfunc_begin14         #     jumps to .Ltmp92
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp63-.Lfunc_begin14         # >> Call Site 4 <<
	.uleb128 .Ltmp64-.Ltmp63                #   Call between .Ltmp63 and .Ltmp64
	.uleb128 .Ltmp65-.Lfunc_begin14         #     jumps to .Ltmp65
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp64-.Lfunc_begin14         # >> Call Site 5 <<
	.uleb128 .Ltmp78-.Ltmp64                #   Call between .Ltmp64 and .Ltmp78
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp78-.Lfunc_begin14         # >> Call Site 6 <<
	.uleb128 .Ltmp79-.Ltmp78                #   Call between .Ltmp78 and .Ltmp79
	.uleb128 .Ltmp80-.Lfunc_begin14         #     jumps to .Ltmp80
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp79-.Lfunc_begin14         # >> Call Site 7 <<
	.uleb128 .Ltmp81-.Ltmp79                #   Call between .Ltmp79 and .Ltmp81
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp81-.Lfunc_begin14         # >> Call Site 8 <<
	.uleb128 .Ltmp82-.Ltmp81                #   Call between .Ltmp81 and .Ltmp82
	.uleb128 .Ltmp83-.Lfunc_begin14         #     jumps to .Ltmp83
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp84-.Lfunc_begin14         # >> Call Site 9 <<
	.uleb128 .Ltmp85-.Ltmp84                #   Call between .Ltmp84 and .Ltmp85
	.uleb128 .Ltmp86-.Lfunc_begin14         #     jumps to .Ltmp86
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp85-.Lfunc_begin14         # >> Call Site 10 <<
	.uleb128 .Ltmp66-.Ltmp85                #   Call between .Ltmp85 and .Ltmp66
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp66-.Lfunc_begin14         # >> Call Site 11 <<
	.uleb128 .Ltmp67-.Ltmp66                #   Call between .Ltmp66 and .Ltmp67
	.uleb128 .Ltmp68-.Lfunc_begin14         #     jumps to .Ltmp68
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp67-.Lfunc_begin14         # >> Call Site 12 <<
	.uleb128 .Ltmp69-.Ltmp67                #   Call between .Ltmp67 and .Ltmp69
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp69-.Lfunc_begin14         # >> Call Site 13 <<
	.uleb128 .Ltmp70-.Ltmp69                #   Call between .Ltmp69 and .Ltmp70
	.uleb128 .Ltmp71-.Lfunc_begin14         #     jumps to .Ltmp71
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp72-.Lfunc_begin14         # >> Call Site 14 <<
	.uleb128 .Ltmp73-.Ltmp72                #   Call between .Ltmp72 and .Ltmp73
	.uleb128 .Ltmp74-.Lfunc_begin14         #     jumps to .Ltmp74
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp73-.Lfunc_begin14         # >> Call Site 15 <<
	.uleb128 .Ltmp93-.Ltmp73                #   Call between .Ltmp73 and .Ltmp93
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp93-.Lfunc_begin14         # >> Call Site 16 <<
	.uleb128 .Ltmp94-.Ltmp93                #   Call between .Ltmp93 and .Ltmp94
	.uleb128 .Ltmp95-.Lfunc_begin14         #     jumps to .Ltmp95
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp75-.Lfunc_begin14         # >> Call Site 17 <<
	.uleb128 .Ltmp76-.Ltmp75                #   Call between .Ltmp75 and .Ltmp76
	.uleb128 .Ltmp77-.Lfunc_begin14         #     jumps to .Ltmp77
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp76-.Lfunc_begin14         # >> Call Site 18 <<
	.uleb128 .Lfunc_end15-.Ltmp76           #   Call between .Ltmp76 and .Lfunc_end15
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end14:
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
	.globl	_ZN10MallocPlus14memory_replaceEPvS0_ # -- Begin function _ZN10MallocPlus14memory_replaceEPvS0_
	.p2align	5
	.type	_ZN10MallocPlus14memory_replaceEPvS0_,@function
_ZN10MallocPlus14memory_replaceEPvS0_:  # @_ZN10MallocPlus14memory_replaceEPvS0_
.Lfunc_begin15:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception15
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
	move	$s7, $a0
	ld.d	$a0, $a0, 64
	beqz	$a0, .LBB16_16
# %bb.1:                                # %.lr.ph.i.i.i.preheader
	addi.d	$fp, $s7, 48
	addi.d	$s0, $s7, 56
	ori	$a4, $zero, 16
	ori	$a5, $zero, 24
	move	$a6, $a0
	move	$a3, $s0
	.p2align	4, , 16
.LBB16_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a7, $a6, 32
	sltu	$a7, $a7, $a1
	masknez	$t0, $a6, $a7
	masknez	$t1, $a4, $a7
	maskeqz	$t2, $a5, $a7
	or	$t1, $t2, $t1
	ldx.d	$a6, $a6, $t1
	maskeqz	$a3, $a3, $a7
	or	$a3, $a3, $t0
	bnez	$a6, .LBB16_2
# %bb.3:                                # %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i
	move	$s3, $s0
	beq	$a3, $s0, .LBB16_5
# %bb.4:
	ld.d	$a4, $a3, 32
	sltu	$a1, $a1, $a4
	masknez	$a3, $a3, $a1
	maskeqz	$a1, $s0, $a1
	or	$s3, $a1, $a3
.LBB16_5:                               # %.lr.ph.i.i.i35
	ori	$a3, $zero, 16
	ori	$a4, $zero, 24
	move	$a1, $s0
	.p2align	4, , 16
.LBB16_6:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a0, 32
	sltu	$a5, $a5, $a2
	masknez	$a6, $a0, $a5
	masknez	$a7, $a3, $a5
	maskeqz	$t0, $a4, $a5
	or	$a7, $t0, $a7
	ldx.d	$a0, $a0, $a7
	maskeqz	$a1, $a1, $a5
	or	$a1, $a1, $a6
	bnez	$a0, .LBB16_6
# %bb.7:                                # %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i43
	move	$a0, $zero
	beq	$a1, $s0, .LBB16_70
# %bb.8:                                # %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit47
	beq	$s3, $s0, .LBB16_70
# %bb.9:                                # %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit47
	ld.d	$a3, $a1, 32
	sltu	$a3, $a2, $a3
	masknez	$a1, $a1, $a3
	maskeqz	$a3, $s0, $a3
	or	$a1, $a3, $a1
	beq	$a1, $s0, .LBB16_70
# %bb.10:
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	ld.d	$s1, $s3, 40
	ld.d	$a0, $a1, 40
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	move	$a0, $a1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 48
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 88
	addi.d	$a0, $a0, -1
	st.d	$a0, $s7, 88
	move	$a0, $s3
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 48
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 88
	addi.d	$a0, $a0, -1
	st.d	$a0, $s7, 88
	ld.d	$s3, $s1, 48
	addi.d	$s2, $sp, 80
	st.d	$s2, $sp, 64
	beqz	$s3, .LBB16_71
# %bb.11:
	move	$a0, $s3
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	ori	$a1, $zero, 16
	st.d	$a0, $sp, 96
	move	$a0, $s2
	bltu	$s4, $a1, .LBB16_13
# %bb.12:                               # %.noexc.i
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 96
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 96
	st.d	$a0, $sp, 64
	st.d	$a1, $sp, 80
.LBB16_13:                              # %._crit_edge.i.i
	beqz	$s4, .LBB16_18
# %bb.14:                               # %._crit_edge.i.i
	ori	$a1, $zero, 1
	bne	$s4, $a1, .LBB16_17
# %bb.15:
	ld.b	$a1, $s3, 0
	st.b	$a1, $a0, 0
	b	.LBB16_18
.LBB16_16:
	move	$a0, $zero
	b	.LBB16_70
.LBB16_17:
	move	$a1, $s3
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB16_18:
	st.d	$s1, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 8                     # 8-byte Folded Spill
	ld.d	$a0, $sp, 96
	ld.d	$a1, $sp, 64
	st.d	$a0, $sp, 72
	stx.b	$zero, $a1, $a0
	ld.d	$s2, $s7, 16
	ld.d	$s5, $sp, 64
	addi.d	$fp, $s7, 8
	lu12i.w	$s8, -524288
	move	$a0, $fp
	st.d	$fp, $sp, 56                    # 8-byte Folded Spill
	st.d	$s7, $sp, 40                    # 8-byte Folded Spill
	beqz	$s2, .LBB16_29
# %bb.19:                               # %.lr.ph.i.i.i50
	ld.d	$s6, $sp, 72
	lu12i.w	$a0, 524287
	ori	$s3, $a0, 4095
	ori	$s7, $zero, 16
	ori	$s4, $zero, 24
	move	$s1, $fp
	b	.LBB16_22
	.p2align	4, , 16
.LBB16_20:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i
                                        #   in Loop: Header=BB16_22 Depth=1
	sub.d	$a0, $fp, $s6
	slt	$a1, $s8, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s8, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $s3
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s3, $a1
	or	$a0, $a0, $a1
.LBB16_21:                              # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
                                        #   in Loop: Header=BB16_22 Depth=1
	addi.w	$a0, $a0, 0
	slti	$a0, $a0, 0
	masknez	$a1, $s2, $a0
	masknez	$a2, $s7, $a0
	maskeqz	$a3, $s4, $a0
	or	$a2, $a3, $a2
	ldx.d	$s2, $s2, $a2
	maskeqz	$a0, $s1, $a0
	or	$s1, $a0, $a1
	beqz	$s2, .LBB16_24
.LBB16_22:                              # =>This Inner Loop Header: Depth=1
	ld.d	$fp, $s2, 40
	sltu	$a0, $s6, $fp
	masknez	$a1, $fp, $a0
	maskeqz	$a0, $s6, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB16_20
# %bb.23:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
                                        #   in Loop: Header=BB16_22 Depth=1
	ld.d	$a0, $s2, 32
	move	$a1, $s5
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB16_21
	b	.LBB16_20
.LBB16_24:                              # %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i
	ld.d	$fp, $sp, 56                    # 8-byte Folded Reload
	move	$a0, $fp
	ld.d	$s7, $sp, 40                    # 8-byte Folded Reload
	beq	$s1, $fp, .LBB16_29
# %bb.25:
	ld.d	$fp, $s1, 40
	sltu	$a0, $fp, $s6
	masknez	$a1, $s6, $a0
	maskeqz	$a0, $fp, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB16_27
# %bb.26:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
	ld.d	$a1, $s1, 32
	move	$a0, $s5
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB16_28
.LBB16_27:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i
	sub.d	$a0, $s6, $fp
	slt	$a1, $s8, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s8, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $s3
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s3, $a1
	or	$a0, $a0, $a1
.LBB16_28:                              # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i
	addi.w	$a0, $a0, 0
	slti	$a0, $a0, 0
	masknez	$a1, $s1, $a0
	ld.d	$fp, $sp, 56                    # 8-byte Folded Reload
	maskeqz	$a0, $fp, $a0
	or	$a0, $a0, $a1
.LBB16_29:                              # %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	addi.d	$a0, $sp, 80
	beq	$s5, $a0, .LBB16_31
# %bb.30:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a0, $sp, 80
	addi.d	$a1, $a0, 1
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_31:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$s4, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s5, $s4, 48
	addi.d	$s1, $sp, 80
	st.d	$s1, $sp, 64
	beqz	$s5, .LBB16_71
# %bb.32:
	move	$a0, $s5
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	ori	$a1, $zero, 16
	st.d	$a0, $sp, 96
	move	$a0, $s1
	bltu	$s6, $a1, .LBB16_34
# %bb.33:                               # %.noexc.i61
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 96
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 96
	st.d	$a0, $sp, 64
	st.d	$a1, $sp, 80
.LBB16_34:                              # %._crit_edge.i.i60
	beqz	$s6, .LBB16_38
# %bb.35:                               # %._crit_edge.i.i60
	ori	$a1, $zero, 1
	bne	$s6, $a1, .LBB16_37
# %bb.36:
	ld.b	$a1, $s5, 0
	st.b	$a1, $a0, 0
	b	.LBB16_38
.LBB16_37:
	move	$a1, $s5
	move	$a2, $s6
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB16_38:
	ld.d	$a0, $sp, 96
	ld.d	$a1, $sp, 64
	st.d	$a0, $sp, 72
	stx.b	$zero, $a1, $a0
	ld.d	$s7, $s7, 16
	ld.d	$s5, $sp, 64
	move	$s6, $fp
	beqz	$s7, .LBB16_49
# %bb.39:                               # %.lr.ph.i.i.i66
	ld.d	$s2, $sp, 72
	lu12i.w	$a0, 524287
	ori	$s1, $a0, 4095
	ori	$s6, $zero, 16
	ori	$s4, $zero, 24
	move	$s3, $fp
	b	.LBB16_42
	.p2align	4, , 16
.LBB16_40:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i91
                                        #   in Loop: Header=BB16_42 Depth=1
	sub.d	$a0, $fp, $s2
	slt	$a1, $s8, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s8, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $s1
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s1, $a1
	or	$a0, $a0, $a1
.LBB16_41:                              # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i72
                                        #   in Loop: Header=BB16_42 Depth=1
	addi.w	$a0, $a0, 0
	slti	$a0, $a0, 0
	masknez	$a1, $s7, $a0
	masknez	$a2, $s6, $a0
	maskeqz	$a3, $s4, $a0
	or	$a2, $a3, $a2
	ldx.d	$s7, $s7, $a2
	maskeqz	$a0, $s3, $a0
	or	$s3, $a0, $a1
	beqz	$s7, .LBB16_44
.LBB16_42:                              # =>This Inner Loop Header: Depth=1
	ld.d	$fp, $s7, 40
	sltu	$a0, $s2, $fp
	masknez	$a1, $fp, $a0
	maskeqz	$a0, $s2, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB16_40
# %bb.43:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i70
                                        #   in Loop: Header=BB16_42 Depth=1
	ld.d	$a0, $s7, 32
	move	$a1, $s5
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB16_41
	b	.LBB16_40
.LBB16_44:                              # %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i79
	ld.d	$fp, $sp, 56                    # 8-byte Folded Reload
	move	$s6, $fp
	ld.d	$s4, $sp, 48                    # 8-byte Folded Reload
	beq	$s3, $fp, .LBB16_49
# %bb.45:
	ld.d	$fp, $s3, 40
	sltu	$a0, $fp, $s2
	masknez	$a1, $s2, $a0
	maskeqz	$a0, $fp, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB16_47
# %bb.46:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i81
	ld.d	$a1, $s3, 32
	move	$a0, $s5
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB16_48
.LBB16_47:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i87
	sub.d	$a0, $s2, $fp
	slt	$a1, $s8, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s8, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $s1
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s1, $a1
	or	$a0, $a0, $a1
.LBB16_48:                              # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i83
	addi.w	$a0, $a0, 0
	slti	$a0, $a0, 0
	masknez	$a1, $s3, $a0
	ld.d	$fp, $sp, 56                    # 8-byte Folded Reload
	maskeqz	$a0, $fp, $a0
	or	$s6, $a0, $a1
.LBB16_49:                              # %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit96
	addi.d	$a0, $sp, 80
	beq	$s5, $a0, .LBB16_51
# %bb.50:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97
	ld.d	$a0, $sp, 80
	addi.d	$a1, $a0, 1
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_51:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99
	move	$a0, $s6
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_)
	jirl	$ra, $ra, 0
	ld.d	$a2, $a0, 32
	addi.d	$a1, $a0, 48
	ld.d	$s1, $sp, 40                    # 8-byte Folded Reload
	beq	$a2, $a1, .LBB16_53
# %bb.52:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	move	$fp, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$fp, $sp, 56                    # 8-byte Folded Reload
.LBB16_53:                              # %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISC_E.exit
	ori	$a1, $zero, 72
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 40
	addi.d	$a0, $a0, -1
	st.d	$a0, $s1, 40
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_)
	jirl	$ra, $ra, 0
	ld.d	$a2, $a0, 32
	addi.d	$a1, $a0, 48
	ld.d	$s5, $sp, 24                    # 8-byte Folded Reload
	beq	$a2, $a1, .LBB16_55
# %bb.54:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i100
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	move	$fp, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
.LBB16_55:                              # %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISC_E.exit102
	ori	$a1, $zero, 72
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 40
	addi.d	$a0, $a0, -1
	st.d	$a0, $s1, 40
	ld.bu	$a0, $s5, 40
	andi	$a0, $a0, 2
	bnez	$a0, .LBB16_57
# %bb.56:
	ld.d	$a0, $s5, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	st.d	$a0, $s5, 0
.LBB16_57:
	ld.d	$a0, $s4, 16
	ld.d	$a1, $a0, 0
	ld.d	$a2, $s5, 16
	st.d	$a1, $a2, 0
	ld.d	$a1, $s4, 8
	st.d	$a1, $s5, 8
	ld.d	$a1, $s4, 32
	st.d	$a1, $s5, 32
	ld.w	$a1, $s4, 40
	st.w	$a1, $s5, 40
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 48
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 64
	move	$s4, $s0
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	beqz	$a0, .LBB16_62
# %bb.58:                               # %.lr.ph.i.i.i.i.preheader
	ori	$a3, $zero, 16
	ori	$a4, $zero, 24
	move	$a2, $s0
	.p2align	4, , 16
.LBB16_59:                              # %.lr.ph.i.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a0, 32
	sltu	$a5, $a5, $a1
	masknez	$a6, $a0, $a5
	masknez	$a7, $a3, $a5
	maskeqz	$t0, $a4, $a5
	or	$a7, $t0, $a7
	ldx.d	$a0, $a0, $a7
	maskeqz	$a2, $a2, $a5
	or	$a2, $a2, $a6
	bnez	$a0, .LBB16_59
# %bb.60:                               # %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i
	move	$s4, $s0
	beq	$a2, $s0, .LBB16_62
# %bb.61:
	ld.d	$a0, $a2, 32
	move	$s4, $a2
	bgeu	$a1, $a0, .LBB16_69
.LBB16_62:                              # %.critedge.i
	ori	$a0, $zero, 48
	move	$fp, $a1
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	addi.d	$s3, $a0, 32
	st.d	$fp, $a0, 32
	st.d	$s5, $a0, 40
.Ltmp96:                                # EH_LABEL
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	move	$a1, $s4
	move	$a2, $s3
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS2_)
	jirl	$ra, $ra, 0
.Ltmp97:                                # EH_LABEL
# %bb.63:
	move	$a2, $a1
	beqz	$a1, .LBB16_68
# %bb.64:
	move	$a3, $a0
	ori	$a0, $zero, 1
	bnez	$a3, .LBB16_67
# %bb.65:
	beq	$s0, $a2, .LBB16_67
# %bb.66:
	ld.d	$a0, $s3, 0
	ld.d	$a1, $a2, 32
	sltu	$a0, $a0, $a1
.LBB16_67:                              # %.thread.i
	move	$a1, $s2
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 88
	addi.d	$a0, $a0, 1
	st.d	$a0, $s1, 88
	b	.LBB16_69
.LBB16_68:
	ori	$a1, $zero, 48
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_69:                              # %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE6insertIS5_IS0_S2_EEENSt9enable_ifIXsr16is_constructibleIS7_T_EE5valueES5_ISt17_Rb_tree_iteratorIS7_EbEE4typeEOSD_.exit
	ld.d	$a0, $s5, 48
	st.d	$a0, $sp, 64
	st.d	$s5, $sp, 72
	addi.d	$a1, $sp, 64
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_emplace_uniqueIJS6_IPKcS9_EEEES6_ISt17_Rb_tree_iteratorISA_EbEDpOT_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 0
.LBB16_70:                              # %.critedge
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
.LBB16_71:                              # %.noexc
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	pcaddu18i	$ra, %call36(_ZSt19__throw_logic_errorPKc)
	jirl	$ra, $ra, 0
.LBB16_72:                              # %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i
.Ltmp98:                                # EH_LABEL
	move	$fp, $a0
	ori	$a1, $zero, 48
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end16:
	.size	_ZN10MallocPlus14memory_replaceEPvS0_, .Lfunc_end16-_ZN10MallocPlus14memory_replaceEPvS0_
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table16:
.Lexception15:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end15-.Lcst_begin15
.Lcst_begin15:
	.uleb128 .Lfunc_begin15-.Lfunc_begin15  # >> Call Site 1 <<
	.uleb128 .Ltmp96-.Lfunc_begin15         #   Call between .Lfunc_begin15 and .Ltmp96
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp96-.Lfunc_begin15         # >> Call Site 2 <<
	.uleb128 .Ltmp97-.Ltmp96                #   Call between .Ltmp96 and .Ltmp97
	.uleb128 .Ltmp98-.Lfunc_begin15         #     jumps to .Ltmp98
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp97-.Lfunc_begin15         # >> Call Site 3 <<
	.uleb128 .Lfunc_end16-.Ltmp97           #   Call between .Ltmp97 and .Lfunc_end16
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end15:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN10MallocPlus13memory_reportEv # -- Begin function _ZN10MallocPlus13memory_reportEv
	.p2align	5
	.type	_ZN10MallocPlus13memory_reportEv,@function
_ZN10MallocPlus13memory_reportEv:       # @_ZN10MallocPlus13memory_reportEv
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
	ld.d	$s0, $a0, 72
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	addi.d	$s7, $a0, 56
	beq	$s0, $s7, .LBB17_6
# %bb.1:                                # %.lr.ph54.preheader
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$s1, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$s2, $a0, %pc_lo12(.L.str.4)
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$s3, $a0, %pc_lo12(.L.str.5)
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$s4, $a0, %pc_lo12(.L.str.6)
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$s5, $a0, %pc_lo12(.L.str.7)
	b	.LBB17_3
	.p2align	4, , 16
.LBB17_2:                               # %._crit_edge
                                        #   in Loop: Header=BB17_3 Depth=1
	addi.d	$a1, $sp, 24
	move	$a0, $s4
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s8, 32
	ld.w	$a2, $s8, 40
	ld.d	$a3, $s8, 8
	move	$a0, $s5
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	beq	$a0, $s7, .LBB17_6
.LBB17_3:                               # %.lr.ph54
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_5 Depth 2
	ld.d	$s8, $s0, 40
	ld.d	$a1, $s0, 32
	ld.d	$a2, $s8, 48
	ld.d	$a3, $s8, 0
	ld.d	$a4, $s8, 24
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s8, 16
	ld.d	$a2, $a0, 0
	addi.d	$a0, $sp, 24
	move	$a1, $s2
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s8, 24
	ori	$a2, $zero, 2
	bltu	$a1, $a2, .LBB17_2
# %bb.4:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB17_3 Depth=1
	addi.d	$a1, $sp, 24
	add.d	$s6, $a1, $a0
	ori	$a0, $zero, 1
	ori	$fp, $zero, 2
	.p2align	4, , 16
.LBB17_5:                               # %.lr.ph
                                        #   Parent Loop BB17_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $s8, 16
	slli.d	$a0, $a0, 3
	ldx.d	$a2, $a1, $a0
	move	$a0, $s6
	move	$a1, $s3
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s8, 24
	add.d	$s6, $s6, $a0
	bstrpick.d	$a0, $fp, 31, 0
	addi.w	$fp, $fp, 1
	bltu	$a0, $a1, .LBB17_5
	b	.LBB17_2
.LBB17_6:                               # %._crit_edge55
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $a0, 24
	addi.d	$s6, $a0, 8
	beq	$s0, $s6, .LBB17_12
# %bb.7:                                # %.lr.ph64.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$fp, $a0, %pc_lo12(.L.str.8)
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$s1, $a0, %pc_lo12(.L.str.4)
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$s2, $a0, %pc_lo12(.L.str.5)
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$s3, $a0, %pc_lo12(.L.str.6)
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$s4, $a0, %pc_lo12(.L.str.7)
	b	.LBB17_9
	.p2align	4, , 16
.LBB17_8:                               # %._crit_edge60
                                        #   in Loop: Header=BB17_9 Depth=1
	addi.d	$a1, $sp, 24
	move	$a0, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s7, 32
	ld.w	$a2, $s7, 40
	ld.d	$a3, $s7, 8
	move	$a0, $s4
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	beq	$a0, $s6, .LBB17_12
.LBB17_9:                               # %.lr.ph64
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_11 Depth 2
	ld.d	$s7, $s0, 64
	ld.d	$a1, $s0, 32
	ld.d	$a2, $s7, 48
	ld.d	$a3, $s7, 0
	ld.d	$a4, $s7, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 16
	ld.d	$a2, $a0, 0
	addi.d	$a0, $sp, 24
	move	$a1, $s1
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s7, 24
	ori	$a2, $zero, 2
	bltu	$a1, $a2, .LBB17_8
# %bb.10:                               # %.lr.ph59.preheader
                                        #   in Loop: Header=BB17_9 Depth=1
	addi.d	$a1, $sp, 24
	add.d	$s5, $a1, $a0
	ori	$a0, $zero, 1
	ori	$s8, $zero, 2
	.p2align	4, , 16
.LBB17_11:                              # %.lr.ph59
                                        #   Parent Loop BB17_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $s7, 16
	slli.d	$a0, $a0, 3
	ldx.d	$a2, $a1, $a0
	move	$a0, $s5
	move	$a1, $s2
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s7, 24
	add.d	$s5, $s5, $a0
	bstrpick.d	$a0, $s8, 31, 0
	addi.w	$s8, $s8, 1
	bltu	$a0, $a1, .LBB17_11
	b	.LBB17_8
.LBB17_12:                              # %._crit_edge65
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
.Lfunc_end17:
	.size	_ZN10MallocPlus13memory_reportEv, .Lfunc_end17-_ZN10MallocPlus13memory_reportEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZN10MallocPlus13memory_deleteEPv # -- Begin function _ZN10MallocPlus13memory_deleteEPv
	.p2align	5
	.type	_ZN10MallocPlus13memory_deleteEPv,@function
_ZN10MallocPlus13memory_deleteEPv:      # @_ZN10MallocPlus13memory_deleteEPv
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -160
	.cfi_def_cfa_offset 160
	st.d	$ra, $sp, 152                   # 8-byte Folded Spill
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	st.d	$s0, $sp, 136                   # 8-byte Folded Spill
	st.d	$s1, $sp, 128                   # 8-byte Folded Spill
	st.d	$s2, $sp, 120                   # 8-byte Folded Spill
	st.d	$s3, $sp, 112                   # 8-byte Folded Spill
	st.d	$s4, $sp, 104                   # 8-byte Folded Spill
	st.d	$s5, $sp, 96                    # 8-byte Folded Spill
	st.d	$s6, $sp, 88                    # 8-byte Folded Spill
	st.d	$s7, $sp, 80                    # 8-byte Folded Spill
	st.d	$s8, $sp, 72                    # 8-byte Folded Spill
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
	ld.d	$a0, $a0, 64
	beqz	$a0, .LBB18_30
# %bb.1:                                # %.lr.ph.i.i.i.preheader
	addi.d	$s1, $fp, 56
	ori	$a3, $zero, 16
	ori	$a4, $zero, 24
	move	$a2, $s1
	.p2align	4, , 16
.LBB18_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a0, 32
	sltu	$a5, $a5, $a1
	masknez	$a6, $a0, $a5
	masknez	$a7, $a3, $a5
	maskeqz	$t0, $a4, $a5
	or	$a7, $t0, $a7
	ldx.d	$a0, $a0, $a7
	maskeqz	$a2, $a2, $a5
	or	$a2, $a2, $a6
	bnez	$a0, .LBB18_2
# %bb.3:                                # %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i
	beq	$a2, $s1, .LBB18_30
# %bb.4:                                # %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit
	ld.d	$a0, $a2, 32
	bltu	$a1, $a0, .LBB18_30
# %bb.5:
	sltu	$a0, $a1, $a0
	masknez	$a1, $a2, $a0
	maskeqz	$a0, $s1, $a0
	or	$s2, $a0, $a1
	ld.d	$s0, $s2, 40
	ld.bu	$a0, $s0, 40
	andi	$a0, $a0, 2
	bnez	$a0, .LBB18_7
# %bb.6:
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB18_7:
	move	$a0, $s2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 48
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 88
	ld.d	$s1, $s0, 48
	addi.d	$a0, $a0, -1
	st.d	$a0, $fp, 88
	addi.d	$s3, $sp, 48
	st.d	$s3, $sp, 32
	beqz	$s1, .LBB18_31
# %bb.8:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ori	$a1, $zero, 16
	st.d	$a0, $sp, 64
	move	$a0, $s3
	bltu	$s2, $a1, .LBB18_10
# %bb.9:                                # %.noexc.i
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 64
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 64
	st.d	$a0, $sp, 32
	st.d	$a1, $sp, 48
.LBB18_10:                              # %._crit_edge.i.i
	beqz	$s2, .LBB18_14
# %bb.11:                               # %._crit_edge.i.i
	ori	$a1, $zero, 1
	bne	$s2, $a1, .LBB18_13
# %bb.12:
	ld.b	$a1, $s1, 0
	st.b	$a1, $a0, 0
	b	.LBB18_14
.LBB18_13:
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB18_14:
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 64
	ld.d	$a1, $sp, 32
	st.d	$a0, $sp, 40
	stx.b	$zero, $a1, $a0
	ld.d	$s4, $fp, 16
	ld.d	$s2, $sp, 32
	addi.d	$s1, $fp, 8
	move	$s3, $s1
	beqz	$s4, .LBB18_25
# %bb.15:                               # %.lr.ph.i.i.i16
	ld.d	$s8, $sp, 40
	lu12i.w	$s7, -524288
	lu12i.w	$a0, 524287
	ori	$s6, $a0, 4095
	ori	$s3, $zero, 16
	ori	$s0, $zero, 24
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	move	$s5, $s1
	b	.LBB18_18
	.p2align	4, , 16
.LBB18_16:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i
                                        #   in Loop: Header=BB18_18 Depth=1
	sub.d	$a0, $s1, $s8
	slt	$a1, $s7, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s7, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $s6
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s6, $a1
	or	$a0, $a0, $a1
.LBB18_17:                              # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
                                        #   in Loop: Header=BB18_18 Depth=1
	addi.w	$a0, $a0, 0
	slti	$a0, $a0, 0
	masknez	$a1, $s4, $a0
	masknez	$a2, $s3, $a0
	maskeqz	$a3, $s0, $a0
	or	$a2, $a3, $a2
	ldx.d	$s4, $s4, $a2
	maskeqz	$a0, $s5, $a0
	or	$s5, $a0, $a1
	beqz	$s4, .LBB18_20
.LBB18_18:                              # =>This Inner Loop Header: Depth=1
	ld.d	$s1, $s4, 40
	sltu	$a0, $s8, $s1
	masknez	$a1, $s1, $a0
	maskeqz	$a0, $s8, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB18_16
# %bb.19:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
                                        #   in Loop: Header=BB18_18 Depth=1
	ld.d	$a0, $s4, 32
	move	$a1, $s2
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB18_17
	b	.LBB18_16
.LBB18_20:                              # %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	move	$s3, $s1
	beq	$s5, $s1, .LBB18_25
# %bb.21:
	ld.d	$s0, $s5, 40
	sltu	$a0, $s0, $s8
	masknez	$a1, $s8, $a0
	maskeqz	$a0, $s0, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB18_23
# %bb.22:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
	ld.d	$a1, $s5, 32
	move	$a0, $s2
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB18_24
.LBB18_23:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i
	sub.d	$a0, $s8, $s0
	slt	$a1, $s7, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s7, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $s6
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s6, $a1
	or	$a0, $a0, $a1
.LBB18_24:                              # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i
	addi.w	$a0, $a0, 0
	slti	$a0, $a0, 0
	masknez	$a1, $s5, $a0
	maskeqz	$a0, $s1, $a0
	or	$s3, $a0, $a1
.LBB18_25:                              # %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit
	addi.d	$a0, $sp, 48
	beq	$s2, $a0, .LBB18_27
# %bb.26:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a0, $sp, 48
	addi.d	$a1, $a0, 1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB18_27:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	move	$a0, $s3
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_)
	jirl	$ra, $ra, 0
	ld.d	$a2, $a0, 32
	addi.d	$a1, $a0, 48
	beq	$a2, $a1, .LBB18_29
# %bb.28:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	move	$s0, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s0
.LBB18_29:                              # %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISC_E.exit
	ori	$a1, $zero, 72
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 40
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $s0, 16
	addi.d	$a1, $a1, -1
	st.d	$a1, $fp, 40
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 48
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB18_30:                              # %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit.thread
	move	$a0, $zero
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 160
	ret
.LBB18_31:                              # %.noexc
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	pcaddu18i	$ra, %call36(_ZSt19__throw_logic_errorPKc)
	jirl	$ra, $ra, 0
.Lfunc_end18:
	.size	_ZN10MallocPlus13memory_deleteEPv, .Lfunc_end18-_ZN10MallocPlus13memory_deleteEPv
	.cfi_endproc
                                        # -- End function
	.globl	_ZN10MallocPlus13memory_deleteEPKc # -- Begin function _ZN10MallocPlus13memory_deleteEPKc
	.p2align	5
	.type	_ZN10MallocPlus13memory_deleteEPKc,@function
_ZN10MallocPlus13memory_deleteEPKc:     # @_ZN10MallocPlus13memory_deleteEPKc
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
	addi.d	$fp, $sp, 32
	st.d	$fp, $sp, 16
	beqz	$a1, .LBB19_32
# %bb.1:
	move	$s0, $a1
	move	$s3, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ori	$a1, $zero, 16
	st.d	$a0, $sp, 48
	move	$a0, $fp
	bltu	$s1, $a1, .LBB19_3
# %bb.2:                                # %.noexc.i
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 48
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 48
	st.d	$a0, $sp, 16
	st.d	$a1, $sp, 32
.LBB19_3:                               # %._crit_edge.i.i
	beqz	$s1, .LBB19_7
# %bb.4:                                # %._crit_edge.i.i
	ori	$a1, $zero, 1
	bne	$s1, $a1, .LBB19_6
# %bb.5:
	ld.b	$a1, $s0, 0
	st.b	$a1, $a0, 0
	b	.LBB19_7
.LBB19_6:
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB19_7:
	ld.d	$a0, $sp, 48
	ld.d	$a1, $sp, 16
	st.d	$a0, $sp, 24
	stx.b	$zero, $a1, $a0
	ld.d	$s8, $s3, 16
	ld.d	$s1, $sp, 16
	addi.d	$s0, $s3, 8
	move	$s2, $s0
	beqz	$s8, .LBB19_18
# %bb.8:                                # %.lr.ph.i.i.i
	st.d	$s3, $sp, 8                     # 8-byte Folded Spill
	ld.d	$s7, $sp, 24
	lu12i.w	$s6, -524288
	lu12i.w	$a0, 524287
	ori	$s5, $a0, 4095
	ori	$s2, $zero, 16
	ori	$s3, $zero, 24
	move	$s4, $s0
	b	.LBB19_11
	.p2align	4, , 16
.LBB19_9:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i
                                        #   in Loop: Header=BB19_11 Depth=1
	sub.d	$a0, $fp, $s7
	slt	$a1, $s6, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s6, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $s5
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s5, $a1
	or	$a0, $a0, $a1
.LBB19_10:                              # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
                                        #   in Loop: Header=BB19_11 Depth=1
	addi.w	$a0, $a0, 0
	slti	$a0, $a0, 0
	masknez	$a1, $s8, $a0
	masknez	$a2, $s2, $a0
	maskeqz	$a3, $s3, $a0
	or	$a2, $a3, $a2
	ldx.d	$s8, $s8, $a2
	maskeqz	$a0, $s4, $a0
	or	$s4, $a0, $a1
	beqz	$s8, .LBB19_13
.LBB19_11:                              # =>This Inner Loop Header: Depth=1
	ld.d	$fp, $s8, 40
	sltu	$a0, $s7, $fp
	masknez	$a1, $fp, $a0
	maskeqz	$a0, $s7, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB19_9
# %bb.12:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
                                        #   in Loop: Header=BB19_11 Depth=1
	ld.d	$a0, $s8, 32
	move	$a1, $s1
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB19_10
	b	.LBB19_9
.LBB19_13:                              # %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i
	move	$s2, $s0
	ld.d	$s3, $sp, 8                     # 8-byte Folded Reload
	beq	$s4, $s0, .LBB19_18
# %bb.14:
	ld.d	$fp, $s4, 40
	sltu	$a0, $fp, $s7
	masknez	$a1, $s7, $a0
	maskeqz	$a0, $fp, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB19_16
# %bb.15:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
	ld.d	$a1, $s4, 32
	move	$a0, $s1
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB19_17
.LBB19_16:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i
	sub.d	$a0, $s7, $fp
	slt	$a1, $s6, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s6, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $s5
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s5, $a1
	or	$a0, $a0, $a1
.LBB19_17:                              # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i
	addi.w	$a0, $a0, 0
	slti	$a0, $a0, 0
	masknez	$a1, $s4, $a0
	maskeqz	$a0, $s0, $a0
	or	$s2, $a0, $a1
.LBB19_18:                              # %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit
	addi.d	$a0, $sp, 32
	beq	$s1, $a0, .LBB19_20
# %bb.19:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a0, $sp, 32
	addi.d	$a1, $a0, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB19_20:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	beq	$s2, $s0, .LBB19_31
# %bb.21:
	ld.d	$s1, $s2, 64
	ld.bu	$a0, $s1, 40
	andi	$a0, $a0, 2
	bnez	$a0, .LBB19_23
# %bb.22:
	ld.d	$a0, $s1, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB19_23:
	move	$a0, $s2
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_)
	jirl	$ra, $ra, 0
	ld.d	$a2, $a0, 32
	addi.d	$a1, $a0, 48
	beq	$a2, $a1, .LBB19_25
# %bb.24:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	move	$fp, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
.LBB19_25:                              # %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISC_E.exit
	ori	$a1, $zero, 72
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 40
	ld.d	$a2, $s3, 64
	addi.d	$a0, $a0, -1
	addi.d	$a1, $s3, 56
	st.d	$a0, $s3, 40
	move	$a0, $a1
	beqz	$a2, .LBB19_30
# %bb.26:                               # %.lr.ph.i.i.i20
	ld.d	$a3, $s1, 0
	ori	$a0, $zero, 16
	ori	$a5, $zero, 24
	move	$a4, $a1
	.p2align	4, , 16
.LBB19_27:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a6, $a2, 32
	sltu	$a6, $a6, $a3
	masknez	$a7, $a2, $a6
	masknez	$t0, $a0, $a6
	maskeqz	$t1, $a5, $a6
	or	$t0, $t1, $t0
	ldx.d	$a2, $a2, $t0
	maskeqz	$a4, $a4, $a6
	or	$a4, $a4, $a7
	bnez	$a2, .LBB19_27
# %bb.28:                               # %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i
	move	$a0, $a1
	beq	$a4, $a1, .LBB19_30
# %bb.29:
	ld.d	$a0, $a4, 32
	sltu	$a0, $a3, $a0
	masknez	$a2, $a4, $a0
	maskeqz	$a0, $a1, $a0
	or	$a0, $a0, $a2
.LBB19_30:                              # %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit
	pcaddu18i	$ra, %call36(_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 48
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 88
	ld.d	$a0, $s1, 16
	addi.d	$a1, $a1, -1
	st.d	$a1, $s3, 88
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 48
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB19_31:
	move	$a0, $zero
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
.LBB19_32:                              # %.noexc
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	pcaddu18i	$ra, %call36(_ZSt19__throw_logic_errorPKc)
	jirl	$ra, $ra, 0
.Lfunc_end19:
	.size	_ZN10MallocPlus13memory_deleteEPKc, .Lfunc_end19-_ZN10MallocPlus13memory_deleteEPKc
	.cfi_endproc
                                        # -- End function
	.globl	_ZN10MallocPlus17memory_delete_allEv # -- Begin function _ZN10MallocPlus17memory_delete_allEv
	.p2align	5
	.type	_ZN10MallocPlus17memory_delete_allEv,@function
_ZN10MallocPlus17memory_delete_allEv:   # @_ZN10MallocPlus17memory_delete_allEv
.Lfunc_begin16:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception16
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
	move	$fp, $a0
	addi.d	$s0, $a0, 48
	addi.d	$s1, $sp, 16
	st.w	$zero, $sp, 16
	ld.d	$a1, $a0, 64
	st.d	$zero, $sp, 24
	st.d	$s1, $sp, 32
	st.d	$s1, $sp, 40
	st.d	$zero, $sp, 48
	beqz	$a1, .LBB20_6
# %bb.1:
	addi.d	$a0, $sp, 8
	st.d	$a0, $sp, 56
	addi.d	$a3, $sp, 56
	move	$a2, $s1
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE7_M_copyILb0ENSB_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS5_ESG_PSt18_Rb_tree_node_baseRT0_)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	.p2align	4, , 16
.LBB20_2:                               # %.noexc.i.i
                                        # =>This Inner Loop Header: Depth=1
	move	$s2, $a1
	ld.d	$a1, $a1, 16
	bnez	$a1, .LBB20_2
# %bb.3:                                # %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i
	st.d	$s2, $sp, 32
	move	$a2, $a0
	.p2align	4, , 16
.LBB20_4:                               # =>This Inner Loop Header: Depth=1
	move	$a1, $a2
	ld.d	$a2, $a2, 24
	bnez	$a2, .LBB20_4
# %bb.5:                                # %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEEC2ERKS9_.exit
	ld.d	$a2, $fp, 88
	st.d	$a1, $sp, 40
	st.d	$a2, $sp, 48
	st.d	$a0, $sp, 24
	bne	$s2, $s1, .LBB20_11
.LBB20_6:                               # %._crit_edge
	ld.d	$a1, $fp, 64
.Ltmp99:                                # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E)
	jirl	$ra, $ra, 0
.Ltmp100:                               # EH_LABEL
# %bb.7:                                # %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE5clearEv.exit
	addi.d	$a0, $fp, 56
	st.d	$zero, $fp, 64
	ld.d	$a1, $fp, 16
	st.d	$a0, $fp, 72
	st.d	$a0, $fp, 80
	st.d	$zero, $fp, 88
.Ltmp102:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E)
	jirl	$ra, $ra, 0
.Ltmp103:                               # EH_LABEL
# %bb.8:                                # %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE5clearEv.exit
	addi.d	$a0, $fp, 8
	st.d	$zero, $fp, 16
	ld.d	$a1, $sp, 24
	st.d	$a0, $fp, 24
	st.d	$a0, $fp, 32
	st.d	$zero, $fp, 40
.Ltmp105:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E)
	jirl	$ra, $ra, 0
.Ltmp106:                               # EH_LABEL
# %bb.9:                                # %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEED2Ev.exit
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
	.p2align	4, , 16
.LBB20_10:                              #   in Loop: Header=BB20_11 Depth=1
	ld.d	$a0, $s3, 16
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 48
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	beq	$a0, $s1, .LBB20_6
.LBB20_11:                              # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s3, $s2, 40
	ld.bu	$a0, $s3, 40
	andi	$a0, $a0, 2
	bnez	$a0, .LBB20_10
# %bb.12:                               #   in Loop: Header=BB20_11 Depth=1
	ld.d	$a0, $s3, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB20_10
.LBB20_13:
.Ltmp107:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB20_14:
.Ltmp104:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB20_15:
.Ltmp101:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end20:
	.size	_ZN10MallocPlus17memory_delete_allEv, .Lfunc_end20-_ZN10MallocPlus17memory_delete_allEv
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table20:
.Lexception16:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase4-.Lttbaseref4
.Lttbaseref4:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end16-.Lcst_begin16
.Lcst_begin16:
	.uleb128 .Lfunc_begin16-.Lfunc_begin16  # >> Call Site 1 <<
	.uleb128 .Ltmp99-.Lfunc_begin16         #   Call between .Lfunc_begin16 and .Ltmp99
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp99-.Lfunc_begin16         # >> Call Site 2 <<
	.uleb128 .Ltmp100-.Ltmp99               #   Call between .Ltmp99 and .Ltmp100
	.uleb128 .Ltmp101-.Lfunc_begin16        #     jumps to .Ltmp101
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp102-.Lfunc_begin16        # >> Call Site 3 <<
	.uleb128 .Ltmp103-.Ltmp102              #   Call between .Ltmp102 and .Ltmp103
	.uleb128 .Ltmp104-.Lfunc_begin16        #     jumps to .Ltmp104
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp105-.Lfunc_begin16        # >> Call Site 4 <<
	.uleb128 .Ltmp106-.Ltmp105              #   Call between .Ltmp105 and .Ltmp106
	.uleb128 .Ltmp107-.Lfunc_begin16        #     jumps to .Ltmp107
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp106-.Lfunc_begin16        # >> Call Site 5 <<
	.uleb128 .Lfunc_end20-.Ltmp106          #   Call between .Ltmp106 and .Lfunc_end20
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end16:
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
	.globl	_ZN10MallocPlus13memory_removeEPv # -- Begin function _ZN10MallocPlus13memory_removeEPv
	.p2align	5
	.type	_ZN10MallocPlus13memory_removeEPv,@function
_ZN10MallocPlus13memory_removeEPv:      # @_ZN10MallocPlus13memory_removeEPv
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -160
	.cfi_def_cfa_offset 160
	st.d	$ra, $sp, 152                   # 8-byte Folded Spill
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	st.d	$s0, $sp, 136                   # 8-byte Folded Spill
	st.d	$s1, $sp, 128                   # 8-byte Folded Spill
	st.d	$s2, $sp, 120                   # 8-byte Folded Spill
	st.d	$s3, $sp, 112                   # 8-byte Folded Spill
	st.d	$s4, $sp, 104                   # 8-byte Folded Spill
	st.d	$s5, $sp, 96                    # 8-byte Folded Spill
	st.d	$s6, $sp, 88                    # 8-byte Folded Spill
	st.d	$s7, $sp, 80                    # 8-byte Folded Spill
	st.d	$s8, $sp, 72                    # 8-byte Folded Spill
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
	ld.d	$a3, $a0, 64
	beqz	$a3, .LBB21_28
# %bb.1:                                # %.lr.ph.i.i.i.preheader
	move	$fp, $a0
	move	$a2, $a1
	addi.d	$a1, $a0, 56
	ori	$a4, $zero, 16
	ori	$a5, $zero, 24
	move	$a0, $a1
	.p2align	4, , 16
.LBB21_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a6, $a3, 32
	sltu	$a6, $a6, $a2
	masknez	$a7, $a3, $a6
	masknez	$t0, $a4, $a6
	maskeqz	$t1, $a5, $a6
	or	$t0, $t1, $t0
	ldx.d	$a3, $a3, $t0
	maskeqz	$a0, $a0, $a6
	or	$a0, $a0, $a7
	bnez	$a3, .LBB21_2
# %bb.3:                                # %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i
	beq	$a0, $a1, .LBB21_28
# %bb.4:                                # %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit
	ld.d	$a3, $a0, 32
	bltu	$a2, $a3, .LBB21_28
# %bb.5:
	ld.d	$s0, $a0, 40
	pcaddu18i	$ra, %call36(_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 48
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 88
	ld.d	$s1, $s0, 48
	addi.d	$a0, $a0, -1
	st.d	$a0, $fp, 88
	addi.d	$s3, $sp, 48
	st.d	$s3, $sp, 32
	beqz	$s1, .LBB21_29
# %bb.6:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ori	$a1, $zero, 16
	st.d	$a0, $sp, 64
	move	$a0, $s3
	bltu	$s2, $a1, .LBB21_8
# %bb.7:                                # %.noexc.i
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 64
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 64
	st.d	$a0, $sp, 32
	st.d	$a1, $sp, 48
.LBB21_8:                               # %._crit_edge.i.i
	beqz	$s2, .LBB21_12
# %bb.9:                                # %._crit_edge.i.i
	ori	$a1, $zero, 1
	bne	$s2, $a1, .LBB21_11
# %bb.10:
	ld.b	$a1, $s1, 0
	st.b	$a1, $a0, 0
	b	.LBB21_12
.LBB21_11:
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB21_12:
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 64
	ld.d	$a1, $sp, 32
	st.d	$a0, $sp, 40
	stx.b	$zero, $a1, $a0
	ld.d	$s4, $fp, 16
	ld.d	$s2, $sp, 32
	addi.d	$s1, $fp, 8
	move	$s3, $s1
	beqz	$s4, .LBB21_23
# %bb.13:                               # %.lr.ph.i.i.i14
	ld.d	$s8, $sp, 40
	lu12i.w	$s7, -524288
	lu12i.w	$a0, 524287
	ori	$s6, $a0, 4095
	ori	$s3, $zero, 16
	ori	$s0, $zero, 24
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	move	$s5, $s1
	b	.LBB21_16
	.p2align	4, , 16
.LBB21_14:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i
                                        #   in Loop: Header=BB21_16 Depth=1
	sub.d	$a0, $s1, $s8
	slt	$a1, $s7, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s7, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $s6
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s6, $a1
	or	$a0, $a0, $a1
.LBB21_15:                              # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
                                        #   in Loop: Header=BB21_16 Depth=1
	addi.w	$a0, $a0, 0
	slti	$a0, $a0, 0
	masknez	$a1, $s4, $a0
	masknez	$a2, $s3, $a0
	maskeqz	$a3, $s0, $a0
	or	$a2, $a3, $a2
	ldx.d	$s4, $s4, $a2
	maskeqz	$a0, $s5, $a0
	or	$s5, $a0, $a1
	beqz	$s4, .LBB21_18
.LBB21_16:                              # =>This Inner Loop Header: Depth=1
	ld.d	$s1, $s4, 40
	sltu	$a0, $s8, $s1
	masknez	$a1, $s1, $a0
	maskeqz	$a0, $s8, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB21_14
# %bb.17:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
                                        #   in Loop: Header=BB21_16 Depth=1
	ld.d	$a0, $s4, 32
	move	$a1, $s2
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB21_15
	b	.LBB21_14
.LBB21_18:                              # %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	move	$s3, $s1
	beq	$s5, $s1, .LBB21_23
# %bb.19:
	ld.d	$s0, $s5, 40
	sltu	$a0, $s0, $s8
	masknez	$a1, $s8, $a0
	maskeqz	$a0, $s0, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB21_21
# %bb.20:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
	ld.d	$a1, $s5, 32
	move	$a0, $s2
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB21_22
.LBB21_21:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i
	sub.d	$a0, $s8, $s0
	slt	$a1, $s7, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s7, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $s6
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s6, $a1
	or	$a0, $a0, $a1
.LBB21_22:                              # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i
	addi.w	$a0, $a0, 0
	slti	$a0, $a0, 0
	masknez	$a1, $s5, $a0
	maskeqz	$a0, $s1, $a0
	or	$s3, $a0, $a1
.LBB21_23:                              # %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit
	addi.d	$a0, $sp, 48
	beq	$s2, $a0, .LBB21_25
# %bb.24:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a0, $sp, 48
	addi.d	$a1, $a0, 1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB21_25:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	move	$a0, $s3
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_)
	jirl	$ra, $ra, 0
	ld.d	$a2, $a0, 32
	addi.d	$a1, $a0, 48
	beq	$a2, $a1, .LBB21_27
# %bb.26:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	move	$s0, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s0
.LBB21_27:                              # %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISC_E.exit
	ori	$a1, $zero, 72
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 40
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $s0, 16
	addi.d	$a1, $a1, -1
	st.d	$a1, $fp, 40
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 48
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB21_28:                              # %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit.thread
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 160
	ret
.LBB21_29:                              # %.noexc
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	pcaddu18i	$ra, %call36(_ZSt19__throw_logic_errorPKc)
	jirl	$ra, $ra, 0
.Lfunc_end21:
	.size	_ZN10MallocPlus13memory_removeEPv, .Lfunc_end21-_ZN10MallocPlus13memory_removeEPv
	.cfi_endproc
                                        # -- End function
	.globl	_ZN10MallocPlus13memory_removeEPKc # -- Begin function _ZN10MallocPlus13memory_removeEPKc
	.p2align	5
	.type	_ZN10MallocPlus13memory_removeEPKc,@function
_ZN10MallocPlus13memory_removeEPKc:     # @_ZN10MallocPlus13memory_removeEPKc
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
	addi.d	$fp, $sp, 32
	st.d	$fp, $sp, 16
	beqz	$a1, .LBB22_30
# %bb.1:
	move	$s0, $a1
	move	$s3, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ori	$a1, $zero, 16
	st.d	$a0, $sp, 48
	move	$a0, $fp
	bltu	$s1, $a1, .LBB22_3
# %bb.2:                                # %.noexc.i
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 48
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 48
	st.d	$a0, $sp, 16
	st.d	$a1, $sp, 32
.LBB22_3:                               # %._crit_edge.i.i
	beqz	$s1, .LBB22_7
# %bb.4:                                # %._crit_edge.i.i
	ori	$a1, $zero, 1
	bne	$s1, $a1, .LBB22_6
# %bb.5:
	ld.b	$a1, $s0, 0
	st.b	$a1, $a0, 0
	b	.LBB22_7
.LBB22_6:
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB22_7:
	ld.d	$a0, $sp, 48
	ld.d	$a1, $sp, 16
	st.d	$a0, $sp, 24
	stx.b	$zero, $a1, $a0
	ld.d	$s8, $s3, 16
	ld.d	$s1, $sp, 16
	addi.d	$s0, $s3, 8
	move	$s2, $s0
	beqz	$s8, .LBB22_18
# %bb.8:                                # %.lr.ph.i.i.i
	st.d	$s3, $sp, 8                     # 8-byte Folded Spill
	ld.d	$s7, $sp, 24
	lu12i.w	$s6, -524288
	lu12i.w	$a0, 524287
	ori	$s5, $a0, 4095
	ori	$s2, $zero, 16
	ori	$s3, $zero, 24
	move	$s4, $s0
	b	.LBB22_11
	.p2align	4, , 16
.LBB22_9:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i
                                        #   in Loop: Header=BB22_11 Depth=1
	sub.d	$a0, $fp, $s7
	slt	$a1, $s6, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s6, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $s5
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s5, $a1
	or	$a0, $a0, $a1
.LBB22_10:                              # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
                                        #   in Loop: Header=BB22_11 Depth=1
	addi.w	$a0, $a0, 0
	slti	$a0, $a0, 0
	masknez	$a1, $s8, $a0
	masknez	$a2, $s2, $a0
	maskeqz	$a3, $s3, $a0
	or	$a2, $a3, $a2
	ldx.d	$s8, $s8, $a2
	maskeqz	$a0, $s4, $a0
	or	$s4, $a0, $a1
	beqz	$s8, .LBB22_13
.LBB22_11:                              # =>This Inner Loop Header: Depth=1
	ld.d	$fp, $s8, 40
	sltu	$a0, $s7, $fp
	masknez	$a1, $fp, $a0
	maskeqz	$a0, $s7, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB22_9
# %bb.12:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
                                        #   in Loop: Header=BB22_11 Depth=1
	ld.d	$a0, $s8, 32
	move	$a1, $s1
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB22_10
	b	.LBB22_9
.LBB22_13:                              # %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i
	move	$s2, $s0
	ld.d	$s3, $sp, 8                     # 8-byte Folded Reload
	beq	$s4, $s0, .LBB22_18
# %bb.14:
	ld.d	$fp, $s4, 40
	sltu	$a0, $fp, $s7
	masknez	$a1, $s7, $a0
	maskeqz	$a0, $fp, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB22_16
# %bb.15:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
	ld.d	$a1, $s4, 32
	move	$a0, $s1
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB22_17
.LBB22_16:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i
	sub.d	$a0, $s7, $fp
	slt	$a1, $s6, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s6, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $s5
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s5, $a1
	or	$a0, $a0, $a1
.LBB22_17:                              # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i
	addi.w	$a0, $a0, 0
	slti	$a0, $a0, 0
	masknez	$a1, $s4, $a0
	maskeqz	$a0, $s0, $a0
	or	$s2, $a0, $a1
.LBB22_18:                              # %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit
	addi.d	$a0, $sp, 32
	beq	$s1, $a0, .LBB22_20
# %bb.19:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a0, $sp, 32
	addi.d	$a1, $a0, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB22_20:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	beq	$s2, $s0, .LBB22_29
# %bb.21:
	ld.d	$s1, $s2, 64
	move	$a0, $s2
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_)
	jirl	$ra, $ra, 0
	ld.d	$a2, $a0, 32
	addi.d	$a1, $a0, 48
	beq	$a2, $a1, .LBB22_23
# %bb.22:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	move	$fp, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
.LBB22_23:                              # %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISC_E.exit
	ori	$a1, $zero, 72
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 40
	ld.d	$a2, $s3, 64
	addi.d	$a0, $a0, -1
	addi.d	$a1, $s3, 56
	st.d	$a0, $s3, 40
	move	$a0, $a1
	beqz	$a2, .LBB22_28
# %bb.24:                               # %.lr.ph.i.i.i15
	ld.d	$a3, $s1, 0
	ori	$a0, $zero, 16
	ori	$a5, $zero, 24
	move	$a4, $a1
	.p2align	4, , 16
.LBB22_25:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a6, $a2, 32
	sltu	$a6, $a6, $a3
	masknez	$a7, $a2, $a6
	masknez	$t0, $a0, $a6
	maskeqz	$t1, $a5, $a6
	or	$t0, $t1, $t0
	ldx.d	$a2, $a2, $t0
	maskeqz	$a4, $a4, $a6
	or	$a4, $a4, $a7
	bnez	$a2, .LBB22_25
# %bb.26:                               # %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i
	move	$a0, $a1
	beq	$a4, $a1, .LBB22_28
# %bb.27:
	ld.d	$a0, $a4, 32
	sltu	$a0, $a3, $a0
	masknez	$a2, $a4, $a0
	maskeqz	$a0, $a1, $a0
	or	$a0, $a0, $a2
.LBB22_28:                              # %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit
	pcaddu18i	$ra, %call36(_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 48
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 88
	ld.d	$a0, $s1, 16
	addi.d	$a1, $a1, -1
	st.d	$a1, $s3, 88
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 48
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB22_29:
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
.LBB22_30:                              # %.noexc
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	pcaddu18i	$ra, %call36(_ZSt19__throw_logic_errorPKc)
	jirl	$ra, $ra, 0
.Lfunc_end22:
	.size	_ZN10MallocPlus13memory_removeEPKc, .Lfunc_end22-_ZN10MallocPlus13memory_removeEPKc
	.cfi_endproc
                                        # -- End function
	.globl	_ZN10MallocPlus12memory_beginEv # -- Begin function _ZN10MallocPlus12memory_beginEv
	.p2align	5
	.type	_ZN10MallocPlus12memory_beginEv,@function
_ZN10MallocPlus12memory_beginEv:        # @_ZN10MallocPlus12memory_beginEv
# %bb.0:
	ld.d	$a1, $a0, 72
	ld.d	$a0, $a1, 40
	ld.d	$a0, $a0, 0
	pcalau12i	$a2, %pc_hi20(it_save)
	st.d	$a1, $a2, %pc_lo12(it_save)
	ret
.Lfunc_end23:
	.size	_ZN10MallocPlus12memory_beginEv, .Lfunc_end23-_ZN10MallocPlus12memory_beginEv
                                        # -- End function
	.globl	_ZN10MallocPlus11memory_nextEv  # -- Begin function _ZN10MallocPlus11memory_nextEv
	.p2align	5
	.type	_ZN10MallocPlus11memory_nextEv,@function
_ZN10MallocPlus11memory_nextEv:         # @_ZN10MallocPlus11memory_nextEv
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$s0, %pc_hi20(it_save)
	ld.d	$a1, $s0, %pc_lo12(it_save)
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	addi.d	$a1, $fp, 56
	st.d	$a0, $s0, %pc_lo12(it_save)
	beq	$a0, $a1, .LBB24_2
# %bb.1:
	ld.d	$a0, $a0, 40
	ld.d	$a0, $a0, 0
	b	.LBB24_3
.LBB24_2:
	move	$a0, $zero
.LBB24_3:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end24:
	.size	_ZN10MallocPlus11memory_nextEv, .Lfunc_end24-_ZN10MallocPlus11memory_nextEv
                                        # -- End function
	.globl	_ZN10MallocPlus20memory_by_name_beginEv # -- Begin function _ZN10MallocPlus20memory_by_name_beginEv
	.p2align	5
	.type	_ZN10MallocPlus20memory_by_name_beginEv,@function
_ZN10MallocPlus20memory_by_name_beginEv: # @_ZN10MallocPlus20memory_by_name_beginEv
# %bb.0:
	pcalau12i	$a1, %pc_hi20(it_save)
	ld.d	$a1, $a1, %pc_lo12(it_save)
	ld.d	$a1, $a1, 40
	ld.d	$a2, $a0, 24
	ld.d	$a0, $a1, 0
	pcalau12i	$a1, %pc_hi20(_Z15it_save_by_nameB5cxx11)
	st.d	$a2, $a1, %pc_lo12(_Z15it_save_by_nameB5cxx11)
	ret
.Lfunc_end25:
	.size	_ZN10MallocPlus20memory_by_name_beginEv, .Lfunc_end25-_ZN10MallocPlus20memory_by_name_beginEv
                                        # -- End function
	.globl	_ZN10MallocPlus19memory_by_name_nextEv # -- Begin function _ZN10MallocPlus19memory_by_name_nextEv
	.p2align	5
	.type	_ZN10MallocPlus19memory_by_name_nextEv,@function
_ZN10MallocPlus19memory_by_name_nextEv: # @_ZN10MallocPlus19memory_by_name_nextEv
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$s0, %pc_hi20(_Z15it_save_by_nameB5cxx11)
	ld.d	$a1, $s0, %pc_lo12(_Z15it_save_by_nameB5cxx11)
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	addi.d	$a1, $fp, 8
	st.d	$a0, $s0, %pc_lo12(_Z15it_save_by_nameB5cxx11)
	beq	$a0, $a1, .LBB26_2
# %bb.1:
	ld.d	$a0, $a0, 64
	ld.d	$a0, $a0, 0
	b	.LBB26_3
.LBB26_2:
	move	$a0, $zero
.LBB26_3:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end26:
	.size	_ZN10MallocPlus19memory_by_name_nextEv, .Lfunc_end26-_ZN10MallocPlus19memory_by_name_nextEv
                                        # -- End function
	.globl	_ZN10MallocPlus18memory_entry_beginEv # -- Begin function _ZN10MallocPlus18memory_entry_beginEv
	.p2align	5
	.type	_ZN10MallocPlus18memory_entry_beginEv,@function
_ZN10MallocPlus18memory_entry_beginEv:  # @_ZN10MallocPlus18memory_entry_beginEv
# %bb.0:
	ld.d	$a1, $a0, 72
	ld.d	$a0, $a1, 40
	pcalau12i	$a2, %pc_hi20(it_save)
	st.d	$a1, $a2, %pc_lo12(it_save)
	ret
.Lfunc_end27:
	.size	_ZN10MallocPlus18memory_entry_beginEv, .Lfunc_end27-_ZN10MallocPlus18memory_entry_beginEv
                                        # -- End function
	.globl	_ZN10MallocPlus17memory_entry_nextEv # -- Begin function _ZN10MallocPlus17memory_entry_nextEv
	.p2align	5
	.type	_ZN10MallocPlus17memory_entry_nextEv,@function
_ZN10MallocPlus17memory_entry_nextEv:   # @_ZN10MallocPlus17memory_entry_nextEv
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$s0, %pc_hi20(it_save)
	ld.d	$a1, $s0, %pc_lo12(it_save)
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	addi.d	$a1, $fp, 56
	st.d	$a0, $s0, %pc_lo12(it_save)
	beq	$a0, $a1, .LBB28_2
# %bb.1:
	ld.d	$a0, $a0, 40
	b	.LBB28_3
.LBB28_2:
	move	$a0, $zero
.LBB28_3:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end28:
	.size	_ZN10MallocPlus17memory_entry_nextEv, .Lfunc_end28-_ZN10MallocPlus17memory_entry_nextEv
                                        # -- End function
	.globl	_ZN10MallocPlus16memory_entry_endEv # -- Begin function _ZN10MallocPlus16memory_entry_endEv
	.p2align	5
	.type	_ZN10MallocPlus16memory_entry_endEv,@function
_ZN10MallocPlus16memory_entry_endEv:    # @_ZN10MallocPlus16memory_entry_endEv
# %bb.0:
	move	$a0, $zero
	ret
.Lfunc_end29:
	.size	_ZN10MallocPlus16memory_entry_endEv, .Lfunc_end29-_ZN10MallocPlus16memory_entry_endEv
                                        # -- End function
	.globl	_ZN10MallocPlus26memory_entry_by_name_beginEv # -- Begin function _ZN10MallocPlus26memory_entry_by_name_beginEv
	.p2align	5
	.type	_ZN10MallocPlus26memory_entry_by_name_beginEv,@function
_ZN10MallocPlus26memory_entry_by_name_beginEv: # @_ZN10MallocPlus26memory_entry_by_name_beginEv
# %bb.0:
	ld.d	$a1, $a0, 24
	ld.d	$a0, $a1, 64
	pcalau12i	$a2, %pc_hi20(_Z15it_save_by_nameB5cxx11)
	st.d	$a1, $a2, %pc_lo12(_Z15it_save_by_nameB5cxx11)
	ret
.Lfunc_end30:
	.size	_ZN10MallocPlus26memory_entry_by_name_beginEv, .Lfunc_end30-_ZN10MallocPlus26memory_entry_by_name_beginEv
                                        # -- End function
	.globl	_ZN10MallocPlus25memory_entry_by_name_nextEv # -- Begin function _ZN10MallocPlus25memory_entry_by_name_nextEv
	.p2align	5
	.type	_ZN10MallocPlus25memory_entry_by_name_nextEv,@function
_ZN10MallocPlus25memory_entry_by_name_nextEv: # @_ZN10MallocPlus25memory_entry_by_name_nextEv
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$s0, %pc_hi20(_Z15it_save_by_nameB5cxx11)
	ld.d	$a1, $s0, %pc_lo12(_Z15it_save_by_nameB5cxx11)
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	addi.d	$a1, $fp, 8
	st.d	$a0, $s0, %pc_lo12(_Z15it_save_by_nameB5cxx11)
	beq	$a0, $a1, .LBB31_2
# %bb.1:
	ld.d	$a0, $a0, 64
	b	.LBB31_3
.LBB31_2:
	move	$a0, $zero
.LBB31_3:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end31:
	.size	_ZN10MallocPlus25memory_entry_by_name_nextEv, .Lfunc_end31-_ZN10MallocPlus25memory_entry_by_name_nextEv
                                        # -- End function
	.globl	_ZN10MallocPlus24memory_entry_by_name_endEv # -- Begin function _ZN10MallocPlus24memory_entry_by_name_endEv
	.p2align	5
	.type	_ZN10MallocPlus24memory_entry_by_name_endEv,@function
_ZN10MallocPlus24memory_entry_by_name_endEv: # @_ZN10MallocPlus24memory_entry_by_name_endEv
# %bb.0:
	move	$a0, $zero
	ret
.Lfunc_end32:
	.size	_ZN10MallocPlus24memory_entry_by_name_endEv, .Lfunc_end32-_ZN10MallocPlus24memory_entry_by_name_endEv
                                        # -- End function
	.globl	_ZN10MallocPlus15get_memory_sizeEPv # -- Begin function _ZN10MallocPlus15get_memory_sizeEPv
	.p2align	5
	.type	_ZN10MallocPlus15get_memory_sizeEPv,@function
_ZN10MallocPlus15get_memory_sizeEPv:    # @_ZN10MallocPlus15get_memory_sizeEPv
# %bb.0:
	ld.d	$a2, $a0, 64
	beqz	$a2, .LBB33_5
# %bb.1:                                # %.lr.ph.i.i.i.preheader
	addi.d	$a0, $a0, 56
	ori	$a4, $zero, 16
	ori	$a5, $zero, 24
	move	$a3, $a0
	.p2align	4, , 16
.LBB33_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a6, $a2, 32
	sltu	$a6, $a6, $a1
	masknez	$a7, $a2, $a6
	masknez	$t0, $a4, $a6
	maskeqz	$t1, $a5, $a6
	or	$t0, $t1, $t0
	ldx.d	$a2, $a2, $t0
	maskeqz	$a3, $a3, $a6
	or	$a3, $a3, $a7
	bnez	$a2, .LBB33_2
# %bb.3:                                # %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i
	beq	$a3, $a0, .LBB33_5
# %bb.4:                                # %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit
	ld.d	$a0, $a3, 32
	bgeu	$a1, $a0, .LBB33_6
.LBB33_5:
	move	$a0, $zero
	ret
.LBB33_6:
	ld.d	$a0, $a3, 40
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 0
	ret
.Lfunc_end33:
	.size	_ZN10MallocPlus15get_memory_sizeEPv, .Lfunc_end33-_ZN10MallocPlus15get_memory_sizeEPv
                                        # -- End function
	.globl	_ZN10MallocPlus19get_memory_elemsizeEPv # -- Begin function _ZN10MallocPlus19get_memory_elemsizeEPv
	.p2align	5
	.type	_ZN10MallocPlus19get_memory_elemsizeEPv,@function
_ZN10MallocPlus19get_memory_elemsizeEPv: # @_ZN10MallocPlus19get_memory_elemsizeEPv
# %bb.0:
	ld.d	$a2, $a0, 64
	beqz	$a2, .LBB34_5
# %bb.1:                                # %.lr.ph.i.i.i.preheader
	addi.d	$a0, $a0, 56
	ori	$a4, $zero, 16
	ori	$a5, $zero, 24
	move	$a3, $a0
	.p2align	4, , 16
.LBB34_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a6, $a2, 32
	sltu	$a6, $a6, $a1
	masknez	$a7, $a2, $a6
	masknez	$t0, $a4, $a6
	maskeqz	$t1, $a5, $a6
	or	$t0, $t1, $t0
	ldx.d	$a2, $a2, $t0
	maskeqz	$a3, $a3, $a6
	or	$a3, $a3, $a7
	bnez	$a2, .LBB34_2
# %bb.3:                                # %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i
	beq	$a3, $a0, .LBB34_5
# %bb.4:                                # %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit
	ld.d	$a0, $a3, 32
	bgeu	$a1, $a0, .LBB34_6
.LBB34_5:
	move	$a0, $zero
	ret
.LBB34_6:
	ld.d	$a0, $a3, 40
	ld.w	$a0, $a0, 32
	ret
.Lfunc_end34:
	.size	_ZN10MallocPlus19get_memory_elemsizeEPv, .Lfunc_end34-_ZN10MallocPlus19get_memory_elemsizeEPv
                                        # -- End function
	.globl	_ZN10MallocPlus16get_memory_flagsEPv # -- Begin function _ZN10MallocPlus16get_memory_flagsEPv
	.p2align	5
	.type	_ZN10MallocPlus16get_memory_flagsEPv,@function
_ZN10MallocPlus16get_memory_flagsEPv:   # @_ZN10MallocPlus16get_memory_flagsEPv
# %bb.0:
	ld.d	$a2, $a0, 64
	beqz	$a2, .LBB35_5
# %bb.1:                                # %.lr.ph.i.i.i.preheader
	addi.d	$a0, $a0, 56
	ori	$a4, $zero, 16
	ori	$a5, $zero, 24
	move	$a3, $a0
	.p2align	4, , 16
.LBB35_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a6, $a2, 32
	sltu	$a6, $a6, $a1
	masknez	$a7, $a2, $a6
	masknez	$t0, $a4, $a6
	maskeqz	$t1, $a5, $a6
	or	$t0, $t1, $t0
	ldx.d	$a2, $a2, $t0
	maskeqz	$a3, $a3, $a6
	or	$a3, $a3, $a7
	bnez	$a2, .LBB35_2
# %bb.3:                                # %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i
	beq	$a3, $a0, .LBB35_5
# %bb.4:                                # %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit
	ld.d	$a0, $a3, 32
	bgeu	$a1, $a0, .LBB35_6
.LBB35_5:
	move	$a0, $zero
	ret
.LBB35_6:
	ld.d	$a0, $a3, 40
	ld.w	$a0, $a0, 40
	ret
.Lfunc_end35:
	.size	_ZN10MallocPlus16get_memory_flagsEPv, .Lfunc_end35-_ZN10MallocPlus16get_memory_flagsEPv
                                        # -- End function
	.globl	_ZN10MallocPlus19get_memory_capacityEPv # -- Begin function _ZN10MallocPlus19get_memory_capacityEPv
	.p2align	5
	.type	_ZN10MallocPlus19get_memory_capacityEPv,@function
_ZN10MallocPlus19get_memory_capacityEPv: # @_ZN10MallocPlus19get_memory_capacityEPv
# %bb.0:
	ld.d	$a2, $a0, 64
	beqz	$a2, .LBB36_5
# %bb.1:                                # %.lr.ph.i.i.i.preheader
	addi.d	$a0, $a0, 56
	ori	$a4, $zero, 16
	ori	$a5, $zero, 24
	move	$a3, $a0
	.p2align	4, , 16
.LBB36_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a6, $a2, 32
	sltu	$a6, $a6, $a1
	masknez	$a7, $a2, $a6
	masknez	$t0, $a4, $a6
	maskeqz	$t1, $a5, $a6
	or	$t0, $t1, $t0
	ldx.d	$a2, $a2, $t0
	maskeqz	$a3, $a3, $a6
	or	$a3, $a3, $a7
	bnez	$a2, .LBB36_2
# %bb.3:                                # %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i
	beq	$a3, $a0, .LBB36_5
# %bb.4:                                # %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit
	ld.d	$a0, $a3, 32
	bgeu	$a1, $a0, .LBB36_6
.LBB36_5:
	move	$a0, $zero
	ret
.LBB36_6:
	ld.d	$a0, $a3, 40
	ld.d	$a0, $a0, 8
	ret
.Lfunc_end36:
	.size	_ZN10MallocPlus19get_memory_capacityEPv, .Lfunc_end36-_ZN10MallocPlus19get_memory_capacityEPv
                                        # -- End function
	.globl	_ZN10MallocPlus15get_memory_nameEPv # -- Begin function _ZN10MallocPlus15get_memory_nameEPv
	.p2align	5
	.type	_ZN10MallocPlus15get_memory_nameEPv,@function
_ZN10MallocPlus15get_memory_nameEPv:    # @_ZN10MallocPlus15get_memory_nameEPv
# %bb.0:
	ld.d	$a2, $a0, 64
	beqz	$a2, .LBB37_5
# %bb.1:                                # %.lr.ph.i.i.i.preheader
	addi.d	$a0, $a0, 56
	ori	$a4, $zero, 16
	ori	$a5, $zero, 24
	move	$a3, $a0
	.p2align	4, , 16
.LBB37_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a6, $a2, 32
	sltu	$a6, $a6, $a1
	masknez	$a7, $a2, $a6
	masknez	$t0, $a4, $a6
	maskeqz	$t1, $a5, $a6
	or	$t0, $t1, $t0
	ldx.d	$a2, $a2, $t0
	maskeqz	$a3, $a3, $a6
	or	$a3, $a3, $a7
	bnez	$a2, .LBB37_2
# %bb.3:                                # %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i
	beq	$a3, $a0, .LBB37_5
# %bb.4:                                # %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit
	ld.d	$a0, $a3, 32
	bgeu	$a1, $a0, .LBB37_6
.LBB37_5:
	move	$a0, $zero
	ret
.LBB37_6:
	ld.d	$a0, $a3, 40
	ld.d	$a0, $a0, 48
	ret
.Lfunc_end37:
	.size	_ZN10MallocPlus15get_memory_nameEPv, .Lfunc_end37-_ZN10MallocPlus15get_memory_nameEPv
                                        # -- End function
	.globl	_ZN10MallocPlus11memory_swapEPPiS1_ # -- Begin function _ZN10MallocPlus11memory_swapEPPiS1_
	.p2align	5
	.type	_ZN10MallocPlus11memory_swapEPPiS1_,@function
_ZN10MallocPlus11memory_swapEPPiS1_:    # @_ZN10MallocPlus11memory_swapEPPiS1_
.Lfunc_begin17:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception17
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
	ld.d	$a3, $a0, 64
	beqz	$a3, .LBB38_101
# %bb.1:                                # %.lr.ph.i.i.i.preheader
	move	$fp, $a0
	addi.d	$s1, $a0, 48
	ld.d	$a4, $a1, 0
	addi.d	$s0, $a0, 56
	ori	$a0, $zero, 16
	ori	$a6, $zero, 24
	move	$a7, $a3
	move	$a5, $s0
	.p2align	4, , 16
.LBB38_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$t0, $a7, 32
	sltu	$t0, $t0, $a4
	masknez	$t1, $a7, $t0
	masknez	$t2, $a0, $t0
	maskeqz	$t3, $a6, $t0
	or	$t2, $t3, $t2
	ldx.d	$a7, $a7, $t2
	maskeqz	$a5, $a5, $t0
	or	$a5, $a5, $t1
	bnez	$a7, .LBB38_2
# %bb.3:                                # %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i
	move	$a0, $s0
	beq	$a5, $s0, .LBB38_5
# %bb.4:
	ld.d	$a0, $a5, 32
	sltu	$a0, $a4, $a0
	masknez	$a4, $a5, $a0
	maskeqz	$a0, $s0, $a0
	or	$a0, $a0, $a4
.LBB38_5:                               # %.lr.ph.i.i.i40
	ld.d	$a4, $a2, 0
	ori	$a6, $zero, 16
	ori	$a7, $zero, 24
	move	$a5, $s0
	.p2align	4, , 16
.LBB38_6:                               # =>This Inner Loop Header: Depth=1
	ld.d	$t0, $a3, 32
	sltu	$t0, $t0, $a4
	masknez	$t1, $a3, $t0
	masknez	$t2, $a6, $t0
	maskeqz	$t3, $a7, $t0
	or	$t2, $t3, $t2
	ldx.d	$a3, $a3, $t2
	maskeqz	$a5, $a5, $t0
	or	$a5, $a5, $t1
	bnez	$a3, .LBB38_6
# %bb.7:                                # %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i48
	beq	$a5, $s0, .LBB38_101
# %bb.8:                                # %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit52
	beq	$a0, $s0, .LBB38_101
# %bb.9:                                # %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit52
	ld.d	$a3, $a5, 32
	sltu	$a3, $a4, $a3
	masknez	$a4, $a5, $a3
	maskeqz	$a3, $s0, $a3
	or	$s2, $a3, $a4
	beq	$s2, $s0, .LBB38_101
# %bb.10:
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	ld.d	$s6, $a0, 40
	ld.d	$s7, $s2, 40
	ld.d	$a1, $s6, 48
	ld.d	$a2, $s7, 48
	st.d	$a1, $s7, 48
	st.d	$a2, $s6, 48
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 48
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 88
	addi.d	$a0, $a0, -1
	st.d	$a0, $fp, 88
	move	$a0, $s2
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 48
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 88
	addi.d	$a0, $a0, -1
	st.d	$a0, $fp, 88
	ld.d	$a0, $fp, 64
	ld.d	$s5, $s7, 0
	beqz	$a0, .LBB38_15
# %bb.11:                               # %.lr.ph.i.i.i.i.preheader
	ori	$a1, $zero, 16
	ori	$a2, $zero, 24
	move	$s3, $s0
	.p2align	4, , 16
.LBB38_12:                              # %.lr.ph.i.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a0, 32
	sltu	$a3, $a3, $s5
	masknez	$a4, $a0, $a3
	masknez	$a5, $a1, $a3
	maskeqz	$a6, $a2, $a3
	or	$a5, $a6, $a5
	ldx.d	$a0, $a0, $a5
	maskeqz	$a3, $s3, $a3
	or	$s3, $a3, $a4
	bnez	$a0, .LBB38_12
# %bb.13:                               # %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i
	beq	$s3, $s0, .LBB38_16
# %bb.14:
	ld.d	$a0, $s3, 32
	bltu	$s5, $a0, .LBB38_16
	b	.LBB38_22
.LBB38_15:
	move	$s3, $s0
.LBB38_16:                              # %.critedge.i
	ori	$a0, $zero, 48
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	addi.d	$s4, $a0, 32
	st.d	$s5, $a0, 32
	st.d	$s7, $a0, 40
.Ltmp108:                               # EH_LABEL
	move	$a0, $s1
	move	$a1, $s3
	move	$a2, $s4
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS2_)
	jirl	$ra, $ra, 0
.Ltmp109:                               # EH_LABEL
# %bb.17:
	move	$a2, $a1
	beqz	$a1, .LBB38_27
# %bb.18:
	move	$a3, $a0
	ori	$a0, $zero, 1
	bnez	$a3, .LBB38_21
# %bb.19:
	beq	$s0, $a2, .LBB38_21
# %bb.20:
	ld.d	$a0, $s4, 0
	ld.d	$a1, $a2, 32
	sltu	$a0, $a0, $a1
.LBB38_21:                              # %.thread.i
	move	$a1, $s2
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 88
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, 88
.LBB38_22:                              # %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE6insertIS5_IS0_S2_EEENSt9enable_ifIXsr16is_constructibleIS7_T_EE5valueES5_ISt17_Rb_tree_iteratorIS7_EbEE4typeEOSD_.exit
	ld.d	$a0, $fp, 64
	ld.d	$s5, $s6, 0
	beqz	$a0, .LBB38_28
.LBB38_23:                              # %.lr.ph.i.i.i.i54.preheader
	ori	$a1, $zero, 16
	ori	$a2, $zero, 24
	move	$s3, $s0
	.p2align	4, , 16
.LBB38_24:                              # %.lr.ph.i.i.i.i54
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a0, 32
	sltu	$a3, $a3, $s5
	masknez	$a4, $a0, $a3
	masknez	$a5, $a1, $a3
	maskeqz	$a6, $a2, $a3
	or	$a5, $a6, $a5
	ldx.d	$a0, $a0, $a5
	maskeqz	$a3, $s3, $a3
	or	$s3, $a3, $a4
	bnez	$a0, .LBB38_24
# %bb.25:                               # %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i62
	beq	$s3, $s0, .LBB38_29
# %bb.26:
	ld.d	$a0, $s3, 32
	bltu	$s5, $a0, .LBB38_29
	b	.LBB38_35
.LBB38_27:
	ori	$a1, $zero, 48
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 64
	ld.d	$s5, $s6, 0
	bnez	$a0, .LBB38_23
.LBB38_28:
	move	$s3, $s0
.LBB38_29:                              # %.critedge.i67
	ori	$a0, $zero, 48
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	addi.d	$s4, $a0, 32
	st.d	$s5, $a0, 32
	st.d	$s6, $a0, 40
.Ltmp111:                               # EH_LABEL
	move	$a0, $s1
	move	$a1, $s3
	move	$a2, $s4
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS2_)
	jirl	$ra, $ra, 0
.Ltmp112:                               # EH_LABEL
# %bb.30:
	move	$a2, $a1
	beqz	$a1, .LBB38_36
# %bb.31:
	move	$a3, $a0
	ori	$a0, $zero, 1
	bnez	$a3, .LBB38_34
# %bb.32:
	beq	$s0, $a2, .LBB38_34
# %bb.33:
	ld.d	$a0, $s4, 0
	ld.d	$a1, $a2, 32
	sltu	$a0, $a0, $a1
.LBB38_34:                              # %.thread.i152
	move	$a1, $s2
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 88
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, 88
.LBB38_35:                              # %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE6insertIS5_IS0_S2_EEENSt9enable_ifIXsr16is_constructibleIS7_T_EE5valueES5_ISt17_Rb_tree_iteratorIS7_EbEE4typeEOSD_.exit69
	ld.d	$s0, $s7, 48
	addi.d	$s3, $sp, 72
	st.d	$s3, $sp, 56
	bnez	$s0, .LBB38_37
	b	.LBB38_102
.LBB38_36:
	ori	$a1, $zero, 48
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$s0, $s7, 48
	addi.d	$s3, $sp, 72
	st.d	$s3, $sp, 56
	beqz	$s0, .LBB38_102
.LBB38_37:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ori	$a1, $zero, 16
	st.d	$a0, $sp, 96
	move	$a0, $s3
	bltu	$s1, $a1, .LBB38_39
# %bb.38:                               # %.noexc.i
	addi.d	$a0, $sp, 56
	addi.d	$a1, $sp, 96
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 96
	st.d	$a0, $sp, 56
	st.d	$a1, $sp, 72
.LBB38_39:                              # %._crit_edge.i.i
	st.d	$s6, $sp, 48                    # 8-byte Folded Spill
	beqz	$s1, .LBB38_43
# %bb.40:                               # %._crit_edge.i.i
	ori	$a1, $zero, 1
	bne	$s1, $a1, .LBB38_42
# %bb.41:
	ld.b	$a1, $s0, 0
	st.b	$a1, $a0, 0
	b	.LBB38_43
.LBB38_42:
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB38_43:
	st.d	$s7, $sp, 32                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 96
	ld.d	$a1, $sp, 56
	st.d	$a0, $sp, 64
	stx.b	$zero, $a1, $a0
	ld.d	$s8, $fp, 16
	ld.d	$s2, $sp, 56
	addi.d	$s1, $fp, 8
	lu12i.w	$s4, -524288
	move	$s0, $s1
	st.d	$s1, $sp, 40                    # 8-byte Folded Spill
	beqz	$s8, .LBB38_54
# %bb.44:                               # %.lr.ph.i.i.i72
	ld.d	$s6, $sp, 64
	lu12i.w	$a0, 524287
	ori	$s5, $a0, 4095
	move	$s7, $s1
	ori	$s1, $zero, 16
	ori	$s3, $zero, 24
	b	.LBB38_47
	.p2align	4, , 16
.LBB38_45:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i
                                        #   in Loop: Header=BB38_47 Depth=1
	sub.d	$a0, $s0, $s6
	slt	$a1, $s4, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s4, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $s5
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s5, $a1
	or	$a0, $a0, $a1
.LBB38_46:                              # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
                                        #   in Loop: Header=BB38_47 Depth=1
	addi.w	$a0, $a0, 0
	slti	$a0, $a0, 0
	masknez	$a1, $s8, $a0
	masknez	$a2, $s1, $a0
	maskeqz	$a3, $s3, $a0
	or	$a2, $a3, $a2
	ldx.d	$s8, $s8, $a2
	maskeqz	$a0, $s7, $a0
	or	$s7, $a0, $a1
	beqz	$s8, .LBB38_49
.LBB38_47:                              # =>This Inner Loop Header: Depth=1
	ld.d	$s0, $s8, 40
	sltu	$a0, $s6, $s0
	masknez	$a1, $s0, $a0
	maskeqz	$a0, $s6, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB38_45
# %bb.48:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
                                        #   in Loop: Header=BB38_47 Depth=1
	ld.d	$a0, $s8, 32
	move	$a1, $s2
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB38_46
	b	.LBB38_45
.LBB38_49:                              # %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i
	ld.d	$s1, $sp, 40                    # 8-byte Folded Reload
	move	$s0, $s1
	addi.d	$s3, $sp, 72
	beq	$s7, $s1, .LBB38_54
# %bb.50:
	ld.d	$s0, $s7, 40
	sltu	$a0, $s0, $s6
	masknez	$a1, $s6, $a0
	maskeqz	$a0, $s0, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB38_52
# %bb.51:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
	ld.d	$a1, $s7, 32
	move	$a0, $s2
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB38_53
.LBB38_52:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i
	sub.d	$a0, $s6, $s0
	slt	$a1, $s4, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s4, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $s5
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s5, $a1
	or	$a0, $a0, $a1
.LBB38_53:                              # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i
	addi.w	$a0, $a0, 0
	slti	$a0, $a0, 0
	masknez	$a1, $s7, $a0
	maskeqz	$a0, $s1, $a0
	or	$s0, $a0, $a1
.LBB38_54:                              # %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit
	beq	$s2, $s3, .LBB38_56
# %bb.55:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a0, $sp, 72
	addi.d	$a1, $a0, 1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB38_56:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $a0, 48
	addi.d	$s5, $sp, 72
	st.d	$s5, $sp, 56
	beqz	$s2, .LBB38_102
# %bb.57:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	ori	$a1, $zero, 16
	st.d	$a0, $sp, 96
	move	$a0, $s5
	bltu	$s3, $a1, .LBB38_59
# %bb.58:                               # %.noexc.i83
	addi.d	$a0, $sp, 56
	addi.d	$a1, $sp, 96
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 96
	st.d	$a0, $sp, 56
	st.d	$a1, $sp, 72
.LBB38_59:                              # %._crit_edge.i.i82
	beqz	$s3, .LBB38_63
# %bb.60:                               # %._crit_edge.i.i82
	ori	$a1, $zero, 1
	bne	$s3, $a1, .LBB38_62
# %bb.61:
	ld.b	$a1, $s2, 0
	st.b	$a1, $a0, 0
	b	.LBB38_63
.LBB38_62:
	move	$a1, $s2
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB38_63:
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 96
	ld.d	$a1, $sp, 56
	st.d	$a0, $sp, 64
	stx.b	$zero, $a1, $a0
	ld.d	$s7, $fp, 16
	ld.d	$s2, $sp, 56
	move	$s3, $s1
	beqz	$s7, .LBB38_74
# %bb.64:                               # %.lr.ph.i.i.i88
	ld.d	$s8, $sp, 64
	lu12i.w	$a0, 524287
	ori	$s6, $a0, 4095
	ori	$s3, $zero, 16
	move	$s5, $s1
	ori	$s1, $zero, 24
	b	.LBB38_67
	.p2align	4, , 16
.LBB38_65:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i113
                                        #   in Loop: Header=BB38_67 Depth=1
	sub.d	$a0, $s0, $s8
	slt	$a1, $s4, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s4, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $s6
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s6, $a1
	or	$a0, $a0, $a1
.LBB38_66:                              # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i94
                                        #   in Loop: Header=BB38_67 Depth=1
	addi.w	$a0, $a0, 0
	slti	$a0, $a0, 0
	masknez	$a1, $s7, $a0
	masknez	$a2, $s3, $a0
	maskeqz	$a3, $s1, $a0
	or	$a2, $a3, $a2
	ldx.d	$s7, $s7, $a2
	maskeqz	$a0, $s5, $a0
	or	$s5, $a0, $a1
	beqz	$s7, .LBB38_69
.LBB38_67:                              # =>This Inner Loop Header: Depth=1
	ld.d	$s0, $s7, 40
	sltu	$a0, $s8, $s0
	masknez	$a1, $s0, $a0
	maskeqz	$a0, $s8, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB38_65
# %bb.68:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i92
                                        #   in Loop: Header=BB38_67 Depth=1
	ld.d	$a0, $s7, 32
	move	$a1, $s2
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB38_66
	b	.LBB38_65
.LBB38_69:                              # %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i101
	ld.d	$s1, $sp, 40                    # 8-byte Folded Reload
	move	$s3, $s1
	beq	$s5, $s1, .LBB38_74
# %bb.70:
	ld.d	$s0, $s5, 40
	sltu	$a0, $s0, $s8
	masknez	$a1, $s8, $a0
	maskeqz	$a0, $s0, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB38_72
# %bb.71:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i103
	ld.d	$a1, $s5, 32
	move	$a0, $s2
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB38_73
.LBB38_72:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i109
	sub.d	$a0, $s8, $s0
	slt	$a1, $s4, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s4, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $s6
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s6, $a1
	or	$a0, $a0, $a1
.LBB38_73:                              # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i105
	addi.w	$a0, $a0, 0
	slti	$a0, $a0, 0
	masknez	$a1, $s5, $a0
	maskeqz	$a0, $s1, $a0
	or	$s3, $a0, $a1
.LBB38_74:                              # %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit118
	addi.d	$a0, $sp, 72
	beq	$s2, $a0, .LBB38_76
# %bb.75:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119
	ld.d	$a0, $sp, 72
	addi.d	$a1, $a0, 1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB38_76:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_)
	jirl	$ra, $ra, 0
	ld.d	$a2, $a0, 32
	addi.d	$a1, $a0, 48
	ld.d	$s4, $sp, 32                    # 8-byte Folded Reload
	beq	$a2, $a1, .LBB38_78
# %bb.77:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	move	$s0, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s0
.LBB38_78:                              # %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISC_E.exit
	ori	$a1, $zero, 72
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 40
	addi.d	$a0, $a0, -1
	st.d	$a0, $fp, 40
	move	$a0, $s3
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_)
	jirl	$ra, $ra, 0
	ld.d	$a2, $a0, 32
	addi.d	$a1, $a0, 48
	beq	$a2, $a1, .LBB38_80
# %bb.79:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i122
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	move	$s0, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s0
.LBB38_80:                              # %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISC_E.exit124
	ori	$a1, $zero, 72
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 40
	addi.d	$a0, $a0, -1
	st.d	$a0, $fp, 40
	ld.d	$s0, $s4, 48
	addi.d	$s2, $sp, 72
	st.d	$s2, $sp, 56
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	beqz	$s0, .LBB38_102
# %bb.81:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ori	$a1, $zero, 16
	st.d	$a0, $sp, 96
	move	$a0, $s2
	bltu	$s1, $a1, .LBB38_83
# %bb.82:                               # %.noexc.i.i
	addi.d	$a0, $sp, 56
	addi.d	$a1, $sp, 96
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 96
	st.d	$a0, $sp, 56
	st.d	$a1, $sp, 72
.LBB38_83:                              # %._crit_edge.i.i.i
	beqz	$s1, .LBB38_87
# %bb.84:                               # %._crit_edge.i.i.i
	ori	$a1, $zero, 1
	bne	$s1, $a1, .LBB38_86
# %bb.85:
	ld.b	$a1, $s0, 0
	st.b	$a1, $a0, 0
	b	.LBB38_87
.LBB38_86:
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB38_87:                              # %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entryEC2IRPcRS7_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_.exit
	ld.d	$a0, $sp, 96
	ld.d	$a1, $sp, 56
	st.d	$a0, $sp, 64
	stx.b	$zero, $a1, $a0
	st.d	$s4, $sp, 88
.Ltmp114:                               # EH_LABEL
	addi.d	$a1, $sp, 56
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE6insertISA_IS5_S7_EEENSt9enable_ifIXsr16is_constructibleISC_T_EE5valueESA_ISt17_Rb_tree_iteratorISC_EbEE4typeEOSI_)
	jirl	$ra, $ra, 0
.Ltmp115:                               # EH_LABEL
# %bb.88:
	ld.d	$a0, $sp, 56
	beq	$a0, $s2, .LBB38_90
# %bb.89:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
	ld.d	$a1, $sp, 72
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB38_90:                              # %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entryED2Ev.exit
	ld.d	$s0, $s3, 48
	addi.d	$s2, $sp, 72
	st.d	$s2, $sp, 56
	beqz	$s0, .LBB38_102
# %bb.91:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ori	$a1, $zero, 16
	st.d	$a0, $sp, 96
	move	$a0, $s2
	bltu	$s1, $a1, .LBB38_93
# %bb.92:                               # %.noexc.i.i127
	addi.d	$a0, $sp, 56
	addi.d	$a1, $sp, 96
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 96
	st.d	$a0, $sp, 56
	st.d	$a1, $sp, 72
.LBB38_93:                              # %._crit_edge.i.i.i126
	beqz	$s1, .LBB38_97
# %bb.94:                               # %._crit_edge.i.i.i126
	ori	$a1, $zero, 1
	bne	$s1, $a1, .LBB38_96
# %bb.95:
	ld.b	$a1, $s0, 0
	st.b	$a1, $a0, 0
	b	.LBB38_97
.LBB38_96:
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB38_97:                              # %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entryEC2IRPcRS7_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_.exit129
	ld.d	$a0, $sp, 96
	ld.d	$a1, $sp, 56
	st.d	$a0, $sp, 64
	stx.b	$zero, $a1, $a0
	st.d	$s3, $sp, 88
.Ltmp117:                               # EH_LABEL
	addi.d	$a1, $sp, 56
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE6insertISA_IS5_S7_EEENSt9enable_ifIXsr16is_constructibleISC_T_EE5valueESA_ISt17_Rb_tree_iteratorISC_EbEE4typeEOSI_)
	jirl	$ra, $ra, 0
.Ltmp118:                               # EH_LABEL
# %bb.98:
	ld.d	$a0, $sp, 56
	beq	$a0, $s2, .LBB38_100
# %bb.99:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i130
	ld.d	$a1, $sp, 72
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB38_100:                             # %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entryED2Ev.exit132
	ld.d	$a1, $s4, 0
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	st.d	$a1, $a0, 0
	ld.d	$a1, $s3, 0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	st.d	$a1, $a0, 0
.LBB38_101:                             # %.critedge
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
.LBB38_102:                             # %.noexc
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	pcaddu18i	$ra, %call36(_ZSt19__throw_logic_errorPKc)
	jirl	$ra, $ra, 0
.LBB38_103:                             # %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i146
.Ltmp113:                               # EH_LABEL
	b	.LBB38_105
.LBB38_104:                             # %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i
.Ltmp110:                               # EH_LABEL
.LBB38_105:                             # %common.resume
	move	$fp, $a0
	ori	$a1, $zero, 48
	move	$a0, $s2
	b	.LBB38_110
.LBB38_106:
.Ltmp119:                               # EH_LABEL
	b	.LBB38_108
.LBB38_107:
.Ltmp116:                               # EH_LABEL
.LBB38_108:
	ld.d	$a2, $sp, 56
	move	$fp, $a0
	beq	$a2, $s2, .LBB38_111
# %bb.109:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i139
	ld.d	$a0, $sp, 72
	addi.d	$a1, $a0, 1
	move	$a0, $a2
.LBB38_110:                             # %common.resume
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB38_111:                             # %common.resume
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end38:
	.size	_ZN10MallocPlus11memory_swapEPPiS1_, .Lfunc_end38-_ZN10MallocPlus11memory_swapEPPiS1_
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table38:
.Lexception17:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end17-.Lcst_begin17
.Lcst_begin17:
	.uleb128 .Lfunc_begin17-.Lfunc_begin17  # >> Call Site 1 <<
	.uleb128 .Ltmp108-.Lfunc_begin17        #   Call between .Lfunc_begin17 and .Ltmp108
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp108-.Lfunc_begin17        # >> Call Site 2 <<
	.uleb128 .Ltmp109-.Ltmp108              #   Call between .Ltmp108 and .Ltmp109
	.uleb128 .Ltmp110-.Lfunc_begin17        #     jumps to .Ltmp110
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp109-.Lfunc_begin17        # >> Call Site 3 <<
	.uleb128 .Ltmp111-.Ltmp109              #   Call between .Ltmp109 and .Ltmp111
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp111-.Lfunc_begin17        # >> Call Site 4 <<
	.uleb128 .Ltmp112-.Ltmp111              #   Call between .Ltmp111 and .Ltmp112
	.uleb128 .Ltmp113-.Lfunc_begin17        #     jumps to .Ltmp113
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp112-.Lfunc_begin17        # >> Call Site 5 <<
	.uleb128 .Ltmp114-.Ltmp112              #   Call between .Ltmp112 and .Ltmp114
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp114-.Lfunc_begin17        # >> Call Site 6 <<
	.uleb128 .Ltmp115-.Ltmp114              #   Call between .Ltmp114 and .Ltmp115
	.uleb128 .Ltmp116-.Lfunc_begin17        #     jumps to .Ltmp116
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp115-.Lfunc_begin17        # >> Call Site 7 <<
	.uleb128 .Ltmp117-.Ltmp115              #   Call between .Ltmp115 and .Ltmp117
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp117-.Lfunc_begin17        # >> Call Site 8 <<
	.uleb128 .Ltmp118-.Ltmp117              #   Call between .Ltmp117 and .Ltmp118
	.uleb128 .Ltmp119-.Lfunc_begin17        #     jumps to .Ltmp119
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp118-.Lfunc_begin17        # >> Call Site 9 <<
	.uleb128 .Lfunc_end38-.Ltmp118          #   Call between .Ltmp118 and .Lfunc_end38
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end17:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN10MallocPlus11memory_swapEPPfS1_ # -- Begin function _ZN10MallocPlus11memory_swapEPPfS1_
	.p2align	5
	.type	_ZN10MallocPlus11memory_swapEPPfS1_,@function
_ZN10MallocPlus11memory_swapEPPfS1_:    # @_ZN10MallocPlus11memory_swapEPPfS1_
.Lfunc_begin18:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception18
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
	ld.d	$a3, $a0, 64
	beqz	$a3, .LBB39_101
# %bb.1:                                # %.lr.ph.i.i.i.preheader
	move	$fp, $a0
	addi.d	$s1, $a0, 48
	ld.d	$a4, $a1, 0
	addi.d	$s0, $a0, 56
	ori	$a0, $zero, 16
	ori	$a6, $zero, 24
	move	$a7, $a3
	move	$a5, $s0
	.p2align	4, , 16
.LBB39_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$t0, $a7, 32
	sltu	$t0, $t0, $a4
	masknez	$t1, $a7, $t0
	masknez	$t2, $a0, $t0
	maskeqz	$t3, $a6, $t0
	or	$t2, $t3, $t2
	ldx.d	$a7, $a7, $t2
	maskeqz	$a5, $a5, $t0
	or	$a5, $a5, $t1
	bnez	$a7, .LBB39_2
# %bb.3:                                # %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i
	move	$a0, $s0
	beq	$a5, $s0, .LBB39_5
# %bb.4:
	ld.d	$a0, $a5, 32
	sltu	$a0, $a4, $a0
	masknez	$a4, $a5, $a0
	maskeqz	$a0, $s0, $a0
	or	$a0, $a0, $a4
.LBB39_5:                               # %.lr.ph.i.i.i40
	ld.d	$a4, $a2, 0
	ori	$a6, $zero, 16
	ori	$a7, $zero, 24
	move	$a5, $s0
	.p2align	4, , 16
.LBB39_6:                               # =>This Inner Loop Header: Depth=1
	ld.d	$t0, $a3, 32
	sltu	$t0, $t0, $a4
	masknez	$t1, $a3, $t0
	masknez	$t2, $a6, $t0
	maskeqz	$t3, $a7, $t0
	or	$t2, $t3, $t2
	ldx.d	$a3, $a3, $t2
	maskeqz	$a5, $a5, $t0
	or	$a5, $a5, $t1
	bnez	$a3, .LBB39_6
# %bb.7:                                # %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i48
	beq	$a5, $s0, .LBB39_101
# %bb.8:                                # %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit52
	beq	$a0, $s0, .LBB39_101
# %bb.9:                                # %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit52
	ld.d	$a3, $a5, 32
	sltu	$a3, $a4, $a3
	masknez	$a4, $a5, $a3
	maskeqz	$a3, $s0, $a3
	or	$s2, $a3, $a4
	beq	$s2, $s0, .LBB39_101
# %bb.10:
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	ld.d	$s6, $a0, 40
	ld.d	$s7, $s2, 40
	ld.d	$a1, $s6, 48
	ld.d	$a2, $s7, 48
	st.d	$a1, $s7, 48
	st.d	$a2, $s6, 48
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 48
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 88
	addi.d	$a0, $a0, -1
	st.d	$a0, $fp, 88
	move	$a0, $s2
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 48
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 88
	addi.d	$a0, $a0, -1
	st.d	$a0, $fp, 88
	ld.d	$a0, $fp, 64
	ld.d	$s5, $s7, 0
	beqz	$a0, .LBB39_15
# %bb.11:                               # %.lr.ph.i.i.i.i.preheader
	ori	$a1, $zero, 16
	ori	$a2, $zero, 24
	move	$s3, $s0
	.p2align	4, , 16
.LBB39_12:                              # %.lr.ph.i.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a0, 32
	sltu	$a3, $a3, $s5
	masknez	$a4, $a0, $a3
	masknez	$a5, $a1, $a3
	maskeqz	$a6, $a2, $a3
	or	$a5, $a6, $a5
	ldx.d	$a0, $a0, $a5
	maskeqz	$a3, $s3, $a3
	or	$s3, $a3, $a4
	bnez	$a0, .LBB39_12
# %bb.13:                               # %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i
	beq	$s3, $s0, .LBB39_16
# %bb.14:
	ld.d	$a0, $s3, 32
	bltu	$s5, $a0, .LBB39_16
	b	.LBB39_22
.LBB39_15:
	move	$s3, $s0
.LBB39_16:                              # %.critedge.i
	ori	$a0, $zero, 48
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	addi.d	$s4, $a0, 32
	st.d	$s5, $a0, 32
	st.d	$s7, $a0, 40
.Ltmp120:                               # EH_LABEL
	move	$a0, $s1
	move	$a1, $s3
	move	$a2, $s4
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS2_)
	jirl	$ra, $ra, 0
.Ltmp121:                               # EH_LABEL
# %bb.17:
	move	$a2, $a1
	beqz	$a1, .LBB39_27
# %bb.18:
	move	$a3, $a0
	ori	$a0, $zero, 1
	bnez	$a3, .LBB39_21
# %bb.19:
	beq	$s0, $a2, .LBB39_21
# %bb.20:
	ld.d	$a0, $s4, 0
	ld.d	$a1, $a2, 32
	sltu	$a0, $a0, $a1
.LBB39_21:                              # %.thread.i
	move	$a1, $s2
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 88
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, 88
.LBB39_22:                              # %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE6insertIS5_IS0_S2_EEENSt9enable_ifIXsr16is_constructibleIS7_T_EE5valueES5_ISt17_Rb_tree_iteratorIS7_EbEE4typeEOSD_.exit
	ld.d	$a0, $fp, 64
	ld.d	$s5, $s6, 0
	beqz	$a0, .LBB39_28
.LBB39_23:                              # %.lr.ph.i.i.i.i54.preheader
	ori	$a1, $zero, 16
	ori	$a2, $zero, 24
	move	$s3, $s0
	.p2align	4, , 16
.LBB39_24:                              # %.lr.ph.i.i.i.i54
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a0, 32
	sltu	$a3, $a3, $s5
	masknez	$a4, $a0, $a3
	masknez	$a5, $a1, $a3
	maskeqz	$a6, $a2, $a3
	or	$a5, $a6, $a5
	ldx.d	$a0, $a0, $a5
	maskeqz	$a3, $s3, $a3
	or	$s3, $a3, $a4
	bnez	$a0, .LBB39_24
# %bb.25:                               # %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i62
	beq	$s3, $s0, .LBB39_29
# %bb.26:
	ld.d	$a0, $s3, 32
	bltu	$s5, $a0, .LBB39_29
	b	.LBB39_35
.LBB39_27:
	ori	$a1, $zero, 48
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 64
	ld.d	$s5, $s6, 0
	bnez	$a0, .LBB39_23
.LBB39_28:
	move	$s3, $s0
.LBB39_29:                              # %.critedge.i67
	ori	$a0, $zero, 48
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	addi.d	$s4, $a0, 32
	st.d	$s5, $a0, 32
	st.d	$s6, $a0, 40
.Ltmp123:                               # EH_LABEL
	move	$a0, $s1
	move	$a1, $s3
	move	$a2, $s4
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS2_)
	jirl	$ra, $ra, 0
.Ltmp124:                               # EH_LABEL
# %bb.30:
	move	$a2, $a1
	beqz	$a1, .LBB39_36
# %bb.31:
	move	$a3, $a0
	ori	$a0, $zero, 1
	bnez	$a3, .LBB39_34
# %bb.32:
	beq	$s0, $a2, .LBB39_34
# %bb.33:
	ld.d	$a0, $s4, 0
	ld.d	$a1, $a2, 32
	sltu	$a0, $a0, $a1
.LBB39_34:                              # %.thread.i152
	move	$a1, $s2
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 88
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, 88
.LBB39_35:                              # %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE6insertIS5_IS0_S2_EEENSt9enable_ifIXsr16is_constructibleIS7_T_EE5valueES5_ISt17_Rb_tree_iteratorIS7_EbEE4typeEOSD_.exit69
	ld.d	$s0, $s7, 48
	addi.d	$s3, $sp, 72
	st.d	$s3, $sp, 56
	bnez	$s0, .LBB39_37
	b	.LBB39_102
.LBB39_36:
	ori	$a1, $zero, 48
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$s0, $s7, 48
	addi.d	$s3, $sp, 72
	st.d	$s3, $sp, 56
	beqz	$s0, .LBB39_102
.LBB39_37:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ori	$a1, $zero, 16
	st.d	$a0, $sp, 96
	move	$a0, $s3
	bltu	$s1, $a1, .LBB39_39
# %bb.38:                               # %.noexc.i
	addi.d	$a0, $sp, 56
	addi.d	$a1, $sp, 96
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 96
	st.d	$a0, $sp, 56
	st.d	$a1, $sp, 72
.LBB39_39:                              # %._crit_edge.i.i
	st.d	$s6, $sp, 48                    # 8-byte Folded Spill
	beqz	$s1, .LBB39_43
# %bb.40:                               # %._crit_edge.i.i
	ori	$a1, $zero, 1
	bne	$s1, $a1, .LBB39_42
# %bb.41:
	ld.b	$a1, $s0, 0
	st.b	$a1, $a0, 0
	b	.LBB39_43
.LBB39_42:
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB39_43:
	st.d	$s7, $sp, 32                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 96
	ld.d	$a1, $sp, 56
	st.d	$a0, $sp, 64
	stx.b	$zero, $a1, $a0
	ld.d	$s8, $fp, 16
	ld.d	$s2, $sp, 56
	addi.d	$s1, $fp, 8
	lu12i.w	$s4, -524288
	move	$s0, $s1
	st.d	$s1, $sp, 40                    # 8-byte Folded Spill
	beqz	$s8, .LBB39_54
# %bb.44:                               # %.lr.ph.i.i.i72
	ld.d	$s6, $sp, 64
	lu12i.w	$a0, 524287
	ori	$s5, $a0, 4095
	move	$s7, $s1
	ori	$s1, $zero, 16
	ori	$s3, $zero, 24
	b	.LBB39_47
	.p2align	4, , 16
.LBB39_45:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i
                                        #   in Loop: Header=BB39_47 Depth=1
	sub.d	$a0, $s0, $s6
	slt	$a1, $s4, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s4, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $s5
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s5, $a1
	or	$a0, $a0, $a1
.LBB39_46:                              # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
                                        #   in Loop: Header=BB39_47 Depth=1
	addi.w	$a0, $a0, 0
	slti	$a0, $a0, 0
	masknez	$a1, $s8, $a0
	masknez	$a2, $s1, $a0
	maskeqz	$a3, $s3, $a0
	or	$a2, $a3, $a2
	ldx.d	$s8, $s8, $a2
	maskeqz	$a0, $s7, $a0
	or	$s7, $a0, $a1
	beqz	$s8, .LBB39_49
.LBB39_47:                              # =>This Inner Loop Header: Depth=1
	ld.d	$s0, $s8, 40
	sltu	$a0, $s6, $s0
	masknez	$a1, $s0, $a0
	maskeqz	$a0, $s6, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB39_45
# %bb.48:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
                                        #   in Loop: Header=BB39_47 Depth=1
	ld.d	$a0, $s8, 32
	move	$a1, $s2
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB39_46
	b	.LBB39_45
.LBB39_49:                              # %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i
	ld.d	$s1, $sp, 40                    # 8-byte Folded Reload
	move	$s0, $s1
	addi.d	$s3, $sp, 72
	beq	$s7, $s1, .LBB39_54
# %bb.50:
	ld.d	$s0, $s7, 40
	sltu	$a0, $s0, $s6
	masknez	$a1, $s6, $a0
	maskeqz	$a0, $s0, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB39_52
# %bb.51:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
	ld.d	$a1, $s7, 32
	move	$a0, $s2
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB39_53
.LBB39_52:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i
	sub.d	$a0, $s6, $s0
	slt	$a1, $s4, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s4, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $s5
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s5, $a1
	or	$a0, $a0, $a1
.LBB39_53:                              # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i
	addi.w	$a0, $a0, 0
	slti	$a0, $a0, 0
	masknez	$a1, $s7, $a0
	maskeqz	$a0, $s1, $a0
	or	$s0, $a0, $a1
.LBB39_54:                              # %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit
	beq	$s2, $s3, .LBB39_56
# %bb.55:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a0, $sp, 72
	addi.d	$a1, $a0, 1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB39_56:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $a0, 48
	addi.d	$s5, $sp, 72
	st.d	$s5, $sp, 56
	beqz	$s2, .LBB39_102
# %bb.57:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	ori	$a1, $zero, 16
	st.d	$a0, $sp, 96
	move	$a0, $s5
	bltu	$s3, $a1, .LBB39_59
# %bb.58:                               # %.noexc.i83
	addi.d	$a0, $sp, 56
	addi.d	$a1, $sp, 96
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 96
	st.d	$a0, $sp, 56
	st.d	$a1, $sp, 72
.LBB39_59:                              # %._crit_edge.i.i82
	beqz	$s3, .LBB39_63
# %bb.60:                               # %._crit_edge.i.i82
	ori	$a1, $zero, 1
	bne	$s3, $a1, .LBB39_62
# %bb.61:
	ld.b	$a1, $s2, 0
	st.b	$a1, $a0, 0
	b	.LBB39_63
.LBB39_62:
	move	$a1, $s2
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB39_63:
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 96
	ld.d	$a1, $sp, 56
	st.d	$a0, $sp, 64
	stx.b	$zero, $a1, $a0
	ld.d	$s7, $fp, 16
	ld.d	$s2, $sp, 56
	move	$s3, $s1
	beqz	$s7, .LBB39_74
# %bb.64:                               # %.lr.ph.i.i.i88
	ld.d	$s8, $sp, 64
	lu12i.w	$a0, 524287
	ori	$s6, $a0, 4095
	ori	$s3, $zero, 16
	move	$s5, $s1
	ori	$s1, $zero, 24
	b	.LBB39_67
	.p2align	4, , 16
.LBB39_65:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i113
                                        #   in Loop: Header=BB39_67 Depth=1
	sub.d	$a0, $s0, $s8
	slt	$a1, $s4, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s4, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $s6
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s6, $a1
	or	$a0, $a0, $a1
.LBB39_66:                              # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i94
                                        #   in Loop: Header=BB39_67 Depth=1
	addi.w	$a0, $a0, 0
	slti	$a0, $a0, 0
	masknez	$a1, $s7, $a0
	masknez	$a2, $s3, $a0
	maskeqz	$a3, $s1, $a0
	or	$a2, $a3, $a2
	ldx.d	$s7, $s7, $a2
	maskeqz	$a0, $s5, $a0
	or	$s5, $a0, $a1
	beqz	$s7, .LBB39_69
.LBB39_67:                              # =>This Inner Loop Header: Depth=1
	ld.d	$s0, $s7, 40
	sltu	$a0, $s8, $s0
	masknez	$a1, $s0, $a0
	maskeqz	$a0, $s8, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB39_65
# %bb.68:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i92
                                        #   in Loop: Header=BB39_67 Depth=1
	ld.d	$a0, $s7, 32
	move	$a1, $s2
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB39_66
	b	.LBB39_65
.LBB39_69:                              # %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i101
	ld.d	$s1, $sp, 40                    # 8-byte Folded Reload
	move	$s3, $s1
	beq	$s5, $s1, .LBB39_74
# %bb.70:
	ld.d	$s0, $s5, 40
	sltu	$a0, $s0, $s8
	masknez	$a1, $s8, $a0
	maskeqz	$a0, $s0, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB39_72
# %bb.71:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i103
	ld.d	$a1, $s5, 32
	move	$a0, $s2
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB39_73
.LBB39_72:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i109
	sub.d	$a0, $s8, $s0
	slt	$a1, $s4, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s4, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $s6
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s6, $a1
	or	$a0, $a0, $a1
.LBB39_73:                              # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i105
	addi.w	$a0, $a0, 0
	slti	$a0, $a0, 0
	masknez	$a1, $s5, $a0
	maskeqz	$a0, $s1, $a0
	or	$s3, $a0, $a1
.LBB39_74:                              # %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit118
	addi.d	$a0, $sp, 72
	beq	$s2, $a0, .LBB39_76
# %bb.75:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119
	ld.d	$a0, $sp, 72
	addi.d	$a1, $a0, 1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB39_76:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_)
	jirl	$ra, $ra, 0
	ld.d	$a2, $a0, 32
	addi.d	$a1, $a0, 48
	ld.d	$s4, $sp, 32                    # 8-byte Folded Reload
	beq	$a2, $a1, .LBB39_78
# %bb.77:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	move	$s0, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s0
.LBB39_78:                              # %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISC_E.exit
	ori	$a1, $zero, 72
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 40
	addi.d	$a0, $a0, -1
	st.d	$a0, $fp, 40
	move	$a0, $s3
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_)
	jirl	$ra, $ra, 0
	ld.d	$a2, $a0, 32
	addi.d	$a1, $a0, 48
	beq	$a2, $a1, .LBB39_80
# %bb.79:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i122
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	move	$s0, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s0
.LBB39_80:                              # %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISC_E.exit124
	ori	$a1, $zero, 72
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 40
	addi.d	$a0, $a0, -1
	st.d	$a0, $fp, 40
	ld.d	$s0, $s4, 48
	addi.d	$s2, $sp, 72
	st.d	$s2, $sp, 56
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	beqz	$s0, .LBB39_102
# %bb.81:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ori	$a1, $zero, 16
	st.d	$a0, $sp, 96
	move	$a0, $s2
	bltu	$s1, $a1, .LBB39_83
# %bb.82:                               # %.noexc.i.i
	addi.d	$a0, $sp, 56
	addi.d	$a1, $sp, 96
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 96
	st.d	$a0, $sp, 56
	st.d	$a1, $sp, 72
.LBB39_83:                              # %._crit_edge.i.i.i
	beqz	$s1, .LBB39_87
# %bb.84:                               # %._crit_edge.i.i.i
	ori	$a1, $zero, 1
	bne	$s1, $a1, .LBB39_86
# %bb.85:
	ld.b	$a1, $s0, 0
	st.b	$a1, $a0, 0
	b	.LBB39_87
.LBB39_86:
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB39_87:                              # %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entryEC2IRPcRS7_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_.exit
	ld.d	$a0, $sp, 96
	ld.d	$a1, $sp, 56
	st.d	$a0, $sp, 64
	stx.b	$zero, $a1, $a0
	st.d	$s4, $sp, 88
.Ltmp126:                               # EH_LABEL
	addi.d	$a1, $sp, 56
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE6insertISA_IS5_S7_EEENSt9enable_ifIXsr16is_constructibleISC_T_EE5valueESA_ISt17_Rb_tree_iteratorISC_EbEE4typeEOSI_)
	jirl	$ra, $ra, 0
.Ltmp127:                               # EH_LABEL
# %bb.88:
	ld.d	$a0, $sp, 56
	beq	$a0, $s2, .LBB39_90
# %bb.89:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
	ld.d	$a1, $sp, 72
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB39_90:                              # %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entryED2Ev.exit
	ld.d	$s0, $s3, 48
	addi.d	$s2, $sp, 72
	st.d	$s2, $sp, 56
	beqz	$s0, .LBB39_102
# %bb.91:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ori	$a1, $zero, 16
	st.d	$a0, $sp, 96
	move	$a0, $s2
	bltu	$s1, $a1, .LBB39_93
# %bb.92:                               # %.noexc.i.i127
	addi.d	$a0, $sp, 56
	addi.d	$a1, $sp, 96
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 96
	st.d	$a0, $sp, 56
	st.d	$a1, $sp, 72
.LBB39_93:                              # %._crit_edge.i.i.i126
	beqz	$s1, .LBB39_97
# %bb.94:                               # %._crit_edge.i.i.i126
	ori	$a1, $zero, 1
	bne	$s1, $a1, .LBB39_96
# %bb.95:
	ld.b	$a1, $s0, 0
	st.b	$a1, $a0, 0
	b	.LBB39_97
.LBB39_96:
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB39_97:                              # %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entryEC2IRPcRS7_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_.exit129
	ld.d	$a0, $sp, 96
	ld.d	$a1, $sp, 56
	st.d	$a0, $sp, 64
	stx.b	$zero, $a1, $a0
	st.d	$s3, $sp, 88
.Ltmp129:                               # EH_LABEL
	addi.d	$a1, $sp, 56
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE6insertISA_IS5_S7_EEENSt9enable_ifIXsr16is_constructibleISC_T_EE5valueESA_ISt17_Rb_tree_iteratorISC_EbEE4typeEOSI_)
	jirl	$ra, $ra, 0
.Ltmp130:                               # EH_LABEL
# %bb.98:
	ld.d	$a0, $sp, 56
	beq	$a0, $s2, .LBB39_100
# %bb.99:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i130
	ld.d	$a1, $sp, 72
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB39_100:                             # %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entryED2Ev.exit132
	ld.d	$a1, $s4, 0
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	st.d	$a1, $a0, 0
	ld.d	$a1, $s3, 0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	st.d	$a1, $a0, 0
.LBB39_101:                             # %.critedge
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
.LBB39_102:                             # %.noexc
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	pcaddu18i	$ra, %call36(_ZSt19__throw_logic_errorPKc)
	jirl	$ra, $ra, 0
.LBB39_103:                             # %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i146
.Ltmp125:                               # EH_LABEL
	b	.LBB39_105
.LBB39_104:                             # %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i
.Ltmp122:                               # EH_LABEL
.LBB39_105:                             # %common.resume
	move	$fp, $a0
	ori	$a1, $zero, 48
	move	$a0, $s2
	b	.LBB39_110
.LBB39_106:
.Ltmp131:                               # EH_LABEL
	b	.LBB39_108
.LBB39_107:
.Ltmp128:                               # EH_LABEL
.LBB39_108:
	ld.d	$a2, $sp, 56
	move	$fp, $a0
	beq	$a2, $s2, .LBB39_111
# %bb.109:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i139
	ld.d	$a0, $sp, 72
	addi.d	$a1, $a0, 1
	move	$a0, $a2
.LBB39_110:                             # %common.resume
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB39_111:                             # %common.resume
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end39:
	.size	_ZN10MallocPlus11memory_swapEPPfS1_, .Lfunc_end39-_ZN10MallocPlus11memory_swapEPPfS1_
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table39:
.Lexception18:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end18-.Lcst_begin18
.Lcst_begin18:
	.uleb128 .Lfunc_begin18-.Lfunc_begin18  # >> Call Site 1 <<
	.uleb128 .Ltmp120-.Lfunc_begin18        #   Call between .Lfunc_begin18 and .Ltmp120
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp120-.Lfunc_begin18        # >> Call Site 2 <<
	.uleb128 .Ltmp121-.Ltmp120              #   Call between .Ltmp120 and .Ltmp121
	.uleb128 .Ltmp122-.Lfunc_begin18        #     jumps to .Ltmp122
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp121-.Lfunc_begin18        # >> Call Site 3 <<
	.uleb128 .Ltmp123-.Ltmp121              #   Call between .Ltmp121 and .Ltmp123
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp123-.Lfunc_begin18        # >> Call Site 4 <<
	.uleb128 .Ltmp124-.Ltmp123              #   Call between .Ltmp123 and .Ltmp124
	.uleb128 .Ltmp125-.Lfunc_begin18        #     jumps to .Ltmp125
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp124-.Lfunc_begin18        # >> Call Site 5 <<
	.uleb128 .Ltmp126-.Ltmp124              #   Call between .Ltmp124 and .Ltmp126
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp126-.Lfunc_begin18        # >> Call Site 6 <<
	.uleb128 .Ltmp127-.Ltmp126              #   Call between .Ltmp126 and .Ltmp127
	.uleb128 .Ltmp128-.Lfunc_begin18        #     jumps to .Ltmp128
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp127-.Lfunc_begin18        # >> Call Site 7 <<
	.uleb128 .Ltmp129-.Ltmp127              #   Call between .Ltmp127 and .Ltmp129
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp129-.Lfunc_begin18        # >> Call Site 8 <<
	.uleb128 .Ltmp130-.Ltmp129              #   Call between .Ltmp129 and .Ltmp130
	.uleb128 .Ltmp131-.Lfunc_begin18        #     jumps to .Ltmp131
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp130-.Lfunc_begin18        # >> Call Site 9 <<
	.uleb128 .Lfunc_end39-.Ltmp130          #   Call between .Ltmp130 and .Lfunc_end39
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end18:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN10MallocPlus11memory_swapEPPdS1_ # -- Begin function _ZN10MallocPlus11memory_swapEPPdS1_
	.p2align	5
	.type	_ZN10MallocPlus11memory_swapEPPdS1_,@function
_ZN10MallocPlus11memory_swapEPPdS1_:    # @_ZN10MallocPlus11memory_swapEPPdS1_
.Lfunc_begin19:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception19
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
	ld.d	$a3, $a0, 64
	beqz	$a3, .LBB40_81
# %bb.1:                                # %.lr.ph.i.i.i.preheader
	move	$fp, $a0
	addi.d	$s1, $a0, 48
	ld.d	$a4, $a1, 0
	addi.d	$s0, $a0, 56
	ori	$a0, $zero, 16
	ori	$a6, $zero, 24
	move	$a7, $a3
	move	$a5, $s0
	.p2align	4, , 16
.LBB40_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$t0, $a7, 32
	sltu	$t0, $t0, $a4
	masknez	$t1, $a7, $t0
	masknez	$t2, $a0, $t0
	maskeqz	$t3, $a6, $t0
	or	$t2, $t3, $t2
	ldx.d	$a7, $a7, $t2
	maskeqz	$a5, $a5, $t0
	or	$a5, $a5, $t1
	bnez	$a7, .LBB40_2
# %bb.3:                                # %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i
	move	$a0, $s0
	beq	$a5, $s0, .LBB40_5
# %bb.4:
	ld.d	$a0, $a5, 32
	sltu	$a0, $a4, $a0
	masknez	$a4, $a5, $a0
	maskeqz	$a0, $s0, $a0
	or	$a0, $a0, $a4
.LBB40_5:                               # %.lr.ph.i.i.i37
	ld.d	$a4, $a2, 0
	ori	$a6, $zero, 16
	ori	$a7, $zero, 24
	move	$a5, $s0
	.p2align	4, , 16
.LBB40_6:                               # =>This Inner Loop Header: Depth=1
	ld.d	$t0, $a3, 32
	sltu	$t0, $t0, $a4
	masknez	$t1, $a3, $t0
	masknez	$t2, $a6, $t0
	maskeqz	$t3, $a7, $t0
	or	$t2, $t3, $t2
	ldx.d	$a3, $a3, $t2
	maskeqz	$a5, $a5, $t0
	or	$a5, $a5, $t1
	bnez	$a3, .LBB40_6
# %bb.7:                                # %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i45
	beq	$a5, $s0, .LBB40_81
# %bb.8:                                # %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit49
	beq	$a0, $s0, .LBB40_81
# %bb.9:                                # %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit49
	ld.d	$a3, $a5, 32
	sltu	$a3, $a4, $a3
	masknez	$a4, $a5, $a3
	maskeqz	$a3, $s0, $a3
	or	$s2, $a3, $a4
	beq	$s2, $s0, .LBB40_81
# %bb.10:
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	ld.d	$s8, $a0, 40
	ld.d	$s6, $s2, 40
	ld.d	$a1, $s8, 48
	ld.d	$a2, $s6, 48
	st.d	$a1, $s6, 48
	st.d	$a2, $s8, 48
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 48
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 88
	addi.d	$a0, $a0, -1
	st.d	$a0, $fp, 88
	move	$a0, $s2
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 48
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 88
	addi.d	$a0, $a0, -1
	st.d	$a0, $fp, 88
	ld.d	$a0, $fp, 64
	ld.d	$s5, $s6, 0
	beqz	$a0, .LBB40_15
# %bb.11:                               # %.lr.ph.i.i.i.i.preheader
	ori	$a1, $zero, 16
	ori	$a2, $zero, 24
	move	$s3, $s0
	.p2align	4, , 16
.LBB40_12:                              # %.lr.ph.i.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a0, 32
	sltu	$a3, $a3, $s5
	masknez	$a4, $a0, $a3
	masknez	$a5, $a1, $a3
	maskeqz	$a6, $a2, $a3
	or	$a5, $a6, $a5
	ldx.d	$a0, $a0, $a5
	maskeqz	$a3, $s3, $a3
	or	$s3, $a3, $a4
	bnez	$a0, .LBB40_12
# %bb.13:                               # %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i
	beq	$s3, $s0, .LBB40_16
# %bb.14:
	ld.d	$a0, $s3, 32
	bltu	$s5, $a0, .LBB40_16
	b	.LBB40_22
.LBB40_15:
	move	$s3, $s0
.LBB40_16:                              # %.critedge.i
	ori	$a0, $zero, 48
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	addi.d	$s4, $a0, 32
	st.d	$s5, $a0, 32
	st.d	$s6, $a0, 40
.Ltmp132:                               # EH_LABEL
	move	$a0, $s1
	move	$a1, $s3
	move	$a2, $s4
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS2_)
	jirl	$ra, $ra, 0
.Ltmp133:                               # EH_LABEL
# %bb.17:
	move	$a2, $a1
	beqz	$a1, .LBB40_27
# %bb.18:
	move	$a3, $a0
	ori	$a0, $zero, 1
	bnez	$a3, .LBB40_21
# %bb.19:
	beq	$s0, $a2, .LBB40_21
# %bb.20:
	ld.d	$a0, $s4, 0
	ld.d	$a1, $a2, 32
	sltu	$a0, $a0, $a1
.LBB40_21:                              # %.thread.i
	move	$a1, $s2
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 88
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, 88
.LBB40_22:                              # %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE6insertIS5_IS0_S2_EEENSt9enable_ifIXsr16is_constructibleIS7_T_EE5valueES5_ISt17_Rb_tree_iteratorIS7_EbEE4typeEOSD_.exit
	ld.d	$a0, $fp, 64
	ld.d	$s5, $s8, 0
	beqz	$a0, .LBB40_28
.LBB40_23:                              # %.lr.ph.i.i.i.i51.preheader
	ori	$a1, $zero, 16
	ori	$a2, $zero, 24
	move	$s3, $s0
	.p2align	4, , 16
.LBB40_24:                              # %.lr.ph.i.i.i.i51
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a0, 32
	sltu	$a3, $a3, $s5
	masknez	$a4, $a0, $a3
	masknez	$a5, $a1, $a3
	maskeqz	$a6, $a2, $a3
	or	$a5, $a6, $a5
	ldx.d	$a0, $a0, $a5
	maskeqz	$a3, $s3, $a3
	or	$s3, $a3, $a4
	bnez	$a0, .LBB40_24
# %bb.25:                               # %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i59
	beq	$s3, $s0, .LBB40_29
# %bb.26:
	ld.d	$a0, $s3, 32
	bltu	$s5, $a0, .LBB40_29
	b	.LBB40_35
.LBB40_27:
	ori	$a1, $zero, 48
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 64
	ld.d	$s5, $s8, 0
	bnez	$a0, .LBB40_23
.LBB40_28:
	move	$s3, $s0
.LBB40_29:                              # %.critedge.i64
	ori	$a0, $zero, 48
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	addi.d	$s4, $a0, 32
	st.d	$s5, $a0, 32
	st.d	$s8, $a0, 40
.Ltmp135:                               # EH_LABEL
	move	$a0, $s1
	move	$a1, $s3
	move	$a2, $s4
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS2_)
	jirl	$ra, $ra, 0
.Ltmp136:                               # EH_LABEL
# %bb.30:
	move	$a2, $a1
	beqz	$a1, .LBB40_36
# %bb.31:
	move	$a3, $a0
	ori	$a0, $zero, 1
	bnez	$a3, .LBB40_34
# %bb.32:
	beq	$s0, $a2, .LBB40_34
# %bb.33:
	ld.d	$a0, $s4, 0
	ld.d	$a1, $a2, 32
	sltu	$a0, $a0, $a1
.LBB40_34:                              # %.thread.i140
	move	$a1, $s2
	move	$a3, $s0
	pcaddu18i	$ra, %call36(_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 88
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, 88
.LBB40_35:                              # %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE6insertIS5_IS0_S2_EEENSt9enable_ifIXsr16is_constructibleIS7_T_EE5valueES5_ISt17_Rb_tree_iteratorIS7_EbEE4typeEOSD_.exit66
	ld.d	$s0, $s6, 48
	addi.d	$s2, $sp, 80
	st.d	$s2, $sp, 64
	bnez	$s0, .LBB40_37
	b	.LBB40_82
.LBB40_36:
	ori	$a1, $zero, 48
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$s0, $s6, 48
	addi.d	$s2, $sp, 80
	st.d	$s2, $sp, 64
	beqz	$s0, .LBB40_82
.LBB40_37:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ori	$a1, $zero, 16
	st.d	$a0, $sp, 96
	move	$a0, $s2
	bltu	$s1, $a1, .LBB40_39
# %bb.38:                               # %.noexc.i
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 96
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 96
	st.d	$a0, $sp, 64
	st.d	$a1, $sp, 80
.LBB40_39:                              # %._crit_edge.i.i
	beqz	$s1, .LBB40_43
# %bb.40:                               # %._crit_edge.i.i
	ori	$a1, $zero, 1
	bne	$s1, $a1, .LBB40_42
# %bb.41:
	ld.b	$a1, $s0, 0
	st.b	$a1, $a0, 0
	b	.LBB40_43
.LBB40_42:
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB40_43:
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 96
	ld.d	$a1, $sp, 64
	st.d	$a0, $sp, 72
	stx.b	$zero, $a1, $a0
	ld.d	$s6, $fp, 16
	ld.d	$s2, $sp, 64
	addi.d	$s0, $fp, 8
	lu12i.w	$s4, -524288
	move	$s1, $s0
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s8, $sp, 48                    # 8-byte Folded Spill
	beqz	$s6, .LBB40_54
# %bb.44:                               # %.lr.ph.i.i.i69
	ld.d	$s3, $sp, 72
	lu12i.w	$a0, 524287
	ori	$s5, $a0, 4095
	ori	$s1, $zero, 16
	ori	$s8, $zero, 24
	move	$s7, $s0
	b	.LBB40_47
	.p2align	4, , 16
.LBB40_45:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i
                                        #   in Loop: Header=BB40_47 Depth=1
	sub.d	$a0, $s0, $s3
	slt	$a1, $s4, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s4, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $s5
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s5, $a1
	or	$a0, $a0, $a1
.LBB40_46:                              # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
                                        #   in Loop: Header=BB40_47 Depth=1
	addi.w	$a0, $a0, 0
	slti	$a0, $a0, 0
	masknez	$a1, $s6, $a0
	masknez	$a2, $s1, $a0
	maskeqz	$a3, $s8, $a0
	or	$a2, $a3, $a2
	ldx.d	$s6, $s6, $a2
	maskeqz	$a0, $s7, $a0
	or	$s7, $a0, $a1
	beqz	$s6, .LBB40_49
.LBB40_47:                              # =>This Inner Loop Header: Depth=1
	ld.d	$s0, $s6, 40
	sltu	$a0, $s3, $s0
	masknez	$a1, $s0, $a0
	maskeqz	$a0, $s3, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB40_45
# %bb.48:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
                                        #   in Loop: Header=BB40_47 Depth=1
	ld.d	$a0, $s6, 32
	move	$a1, $s2
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB40_46
	b	.LBB40_45
.LBB40_49:                              # %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	move	$s1, $s0
	ld.d	$s8, $sp, 48                    # 8-byte Folded Reload
	beq	$s7, $s0, .LBB40_54
# %bb.50:
	ld.d	$s0, $s7, 40
	sltu	$a0, $s0, $s3
	masknez	$a1, $s3, $a0
	maskeqz	$a0, $s0, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB40_52
# %bb.51:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
	ld.d	$a1, $s7, 32
	move	$a0, $s2
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB40_53
.LBB40_52:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i
	sub.d	$a0, $s3, $s0
	slt	$a1, $s4, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s4, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $s5
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s5, $a1
	or	$a0, $a0, $a1
.LBB40_53:                              # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i
	addi.w	$a0, $a0, 0
	slti	$a0, $a0, 0
	masknez	$a1, $s7, $a0
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	maskeqz	$a0, $s0, $a0
	or	$s1, $a0, $a1
.LBB40_54:                              # %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit
	addi.d	$a0, $sp, 80
	beq	$s2, $a0, .LBB40_56
# %bb.55:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a0, $sp, 80
	addi.d	$a1, $a0, 1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB40_56:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$s2, $s8, 48
	addi.d	$s5, $sp, 80
	st.d	$s5, $sp, 64
	beqz	$s2, .LBB40_82
# %bb.57:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	ori	$a1, $zero, 16
	st.d	$a0, $sp, 96
	move	$a0, $s5
	bltu	$s3, $a1, .LBB40_59
# %bb.58:                               # %.noexc.i80
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 96
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 96
	st.d	$a0, $sp, 64
	st.d	$a1, $sp, 80
.LBB40_59:                              # %._crit_edge.i.i79
	beqz	$s3, .LBB40_63
# %bb.60:                               # %._crit_edge.i.i79
	ori	$a1, $zero, 1
	bne	$s3, $a1, .LBB40_62
# %bb.61:
	ld.b	$a1, $s2, 0
	st.b	$a1, $a0, 0
	b	.LBB40_63
.LBB40_62:
	move	$a1, $s2
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB40_63:
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 96
	ld.d	$a1, $sp, 64
	st.d	$a0, $sp, 72
	stx.b	$zero, $a1, $a0
	ld.d	$s8, $fp, 16
	ld.d	$s2, $sp, 64
	move	$s3, $s0
	beqz	$s8, .LBB40_74
# %bb.64:                               # %.lr.ph.i.i.i85
	ld.d	$s6, $sp, 72
	lu12i.w	$a0, 524287
	ori	$s7, $a0, 4095
	ori	$s3, $zero, 16
	ori	$s1, $zero, 24
	move	$s5, $s0
	b	.LBB40_67
	.p2align	4, , 16
.LBB40_65:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i110
                                        #   in Loop: Header=BB40_67 Depth=1
	sub.d	$a0, $s0, $s6
	slt	$a1, $s4, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s4, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $s7
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s7, $a1
	or	$a0, $a0, $a1
.LBB40_66:                              # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i91
                                        #   in Loop: Header=BB40_67 Depth=1
	addi.w	$a0, $a0, 0
	slti	$a0, $a0, 0
	masknez	$a1, $s8, $a0
	masknez	$a2, $s3, $a0
	maskeqz	$a3, $s1, $a0
	or	$a2, $a3, $a2
	ldx.d	$s8, $s8, $a2
	maskeqz	$a0, $s5, $a0
	or	$s5, $a0, $a1
	beqz	$s8, .LBB40_69
.LBB40_67:                              # =>This Inner Loop Header: Depth=1
	ld.d	$s0, $s8, 40
	sltu	$a0, $s6, $s0
	masknez	$a1, $s0, $a0
	maskeqz	$a0, $s6, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB40_65
# %bb.68:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i89
                                        #   in Loop: Header=BB40_67 Depth=1
	ld.d	$a0, $s8, 32
	move	$a1, $s2
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB40_66
	b	.LBB40_65
.LBB40_69:                              # %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i98
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	move	$s3, $s0
	beq	$s5, $s0, .LBB40_74
# %bb.70:
	ld.d	$s0, $s5, 40
	sltu	$a0, $s0, $s6
	masknez	$a1, $s6, $a0
	maskeqz	$a0, $s0, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB40_72
# %bb.71:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i100
	ld.d	$a1, $s5, 32
	move	$a0, $s2
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB40_73
.LBB40_72:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i106
	sub.d	$a0, $s6, $s0
	slt	$a1, $s4, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s4, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $s7
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s7, $a1
	or	$a0, $a0, $a1
.LBB40_73:                              # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i102
	addi.w	$a0, $a0, 0
	slti	$a0, $a0, 0
	masknez	$a1, $s5, $a0
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	maskeqz	$a0, $s0, $a0
	or	$s3, $a0, $a1
.LBB40_74:                              # %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit115
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	addi.d	$a0, $sp, 80
	beq	$s2, $a0, .LBB40_76
# %bb.75:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116
	ld.d	$a0, $sp, 80
	addi.d	$a1, $a0, 1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB40_76:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_)
	jirl	$ra, $ra, 0
	ld.d	$a2, $a0, 32
	addi.d	$a1, $a0, 48
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	beq	$a2, $a1, .LBB40_78
# %bb.77:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	move	$s0, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
.LBB40_78:                              # %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISC_E.exit
	ori	$a1, $zero, 72
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 40
	addi.d	$a0, $a0, -1
	st.d	$a0, $fp, 40
	move	$a0, $s3
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_)
	jirl	$ra, $ra, 0
	ld.d	$a2, $a0, 32
	addi.d	$a1, $a0, 48
	beq	$a2, $a1, .LBB40_80
# %bb.79:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i119
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	move	$s0, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s0
.LBB40_80:                              # %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE5eraseB5cxx11ESt17_Rb_tree_iteratorISC_E.exit121
	ori	$a1, $zero, 72
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 40
	addi.d	$a0, $a0, -1
	st.d	$a0, $fp, 40
	ld.d	$a0, $s2, 48
	st.d	$a0, $sp, 64
	st.d	$s2, $sp, 72
	addi.d	$a1, $sp, 64
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_emplace_uniqueIJS6_IPKcS9_EEEES6_ISt17_Rb_tree_iteratorISA_EbEDpOT_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 48
	st.d	$a0, $sp, 64
	st.d	$s1, $sp, 72
	addi.d	$a1, $sp, 64
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_emplace_uniqueIJS6_IPKcS9_EEEES6_ISt17_Rb_tree_iteratorISA_EbEDpOT_)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	st.d	$a1, $a0, 0
	ld.d	$a1, $s1, 0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	st.d	$a1, $a0, 0
.LBB40_81:                              # %.critedge
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
.LBB40_82:                              # %.noexc
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	pcaddu18i	$ra, %call36(_ZSt19__throw_logic_errorPKc)
	jirl	$ra, $ra, 0
.LBB40_83:                              # %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i134
.Ltmp137:                               # EH_LABEL
	b	.LBB40_85
.LBB40_84:                              # %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i
.Ltmp134:                               # EH_LABEL
.LBB40_85:                              # %common.resume
	move	$fp, $a0
	ori	$a1, $zero, 48
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end40:
	.size	_ZN10MallocPlus11memory_swapEPPdS1_, .Lfunc_end40-_ZN10MallocPlus11memory_swapEPPdS1_
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table40:
.Lexception19:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end19-.Lcst_begin19
.Lcst_begin19:
	.uleb128 .Lfunc_begin19-.Lfunc_begin19  # >> Call Site 1 <<
	.uleb128 .Ltmp132-.Lfunc_begin19        #   Call between .Lfunc_begin19 and .Ltmp132
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp132-.Lfunc_begin19        # >> Call Site 2 <<
	.uleb128 .Ltmp133-.Ltmp132              #   Call between .Ltmp132 and .Ltmp133
	.uleb128 .Ltmp134-.Lfunc_begin19        #     jumps to .Ltmp134
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp133-.Lfunc_begin19        # >> Call Site 3 <<
	.uleb128 .Ltmp135-.Ltmp133              #   Call between .Ltmp133 and .Ltmp135
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp135-.Lfunc_begin19        # >> Call Site 4 <<
	.uleb128 .Ltmp136-.Ltmp135              #   Call between .Ltmp135 and .Ltmp136
	.uleb128 .Ltmp137-.Lfunc_begin19        #     jumps to .Ltmp137
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp136-.Lfunc_begin19        # >> Call Site 5 <<
	.uleb128 .Lfunc_end40-.Ltmp136          #   Call between .Ltmp136 and .Lfunc_end40
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end19:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN10MallocPlus16memory_duplicateEPvPKc # -- Begin function _ZN10MallocPlus16memory_duplicateEPvPKc
	.p2align	5
	.type	_ZN10MallocPlus16memory_duplicateEPvPKc,@function
_ZN10MallocPlus16memory_duplicateEPvPKc: # @_ZN10MallocPlus16memory_duplicateEPvPKc
	.cfi_startproc
# %bb.0:
	ld.d	$a4, $a0, 64
	beqz	$a4, .LBB41_5
# %bb.1:                                # %.lr.ph.i.i.i.preheader
	move	$a3, $a2
	addi.d	$a5, $a0, 56
	ori	$a6, $zero, 16
	ori	$a7, $zero, 24
	move	$a2, $a5
	.p2align	4, , 16
.LBB41_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$t0, $a4, 32
	sltu	$t0, $t0, $a1
	masknez	$t1, $a4, $t0
	masknez	$t2, $a6, $t0
	maskeqz	$t3, $a7, $t0
	or	$t2, $t3, $t2
	ldx.d	$a4, $a4, $t2
	maskeqz	$a2, $a2, $t0
	or	$a2, $a2, $t1
	bnez	$a4, .LBB41_2
# %bb.3:                                # %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i
	beq	$a2, $a5, .LBB41_5
# %bb.4:                                # %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit
	ld.d	$a4, $a2, 32
	bgeu	$a1, $a4, .LBB41_6
.LBB41_5:                               # %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit.thread
	move	$a0, $zero
	ret
.LBB41_6:
	ld.d	$a4, $a2, 40
	ld.d	$a1, $a4, 16
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a4, 32
	ld.w	$a4, $a4, 40
	pcaddu18i	$t8, %call36(_ZN10MallocPlus13memory_mallocEmmPKci)
	jr	$t8
.Lfunc_end41:
	.size	_ZN10MallocPlus16memory_duplicateEPvPKc, .Lfunc_end41-_ZN10MallocPlus16memory_duplicateEPvPKc
	.cfi_endproc
                                        # -- End function
	.globl	_ZN10MallocPlus14get_memory_ptrEPKc # -- Begin function _ZN10MallocPlus14get_memory_ptrEPKc
	.p2align	5
	.type	_ZN10MallocPlus14get_memory_ptrEPKc,@function
_ZN10MallocPlus14get_memory_ptrEPKc:    # @_ZN10MallocPlus14get_memory_ptrEPKc
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
	addi.d	$s8, $sp, 32
	st.d	$s8, $sp, 16
	beqz	$a1, .LBB42_24
# %bb.1:
	move	$fp, $a1
	move	$s0, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ori	$a1, $zero, 16
	st.d	$a0, $sp, 48
	move	$a0, $s8
	bltu	$s1, $a1, .LBB42_3
# %bb.2:                                # %.noexc.i
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 48
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 48
	st.d	$a0, $sp, 16
	st.d	$a1, $sp, 32
.LBB42_3:                               # %._crit_edge.i.i
	beqz	$s1, .LBB42_7
# %bb.4:                                # %._crit_edge.i.i
	ori	$a1, $zero, 1
	bne	$s1, $a1, .LBB42_6
# %bb.5:
	ld.b	$a1, $fp, 0
	st.b	$a1, $a0, 0
	b	.LBB42_7
.LBB42_6:
	move	$a1, $fp
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB42_7:
	ld.d	$a0, $sp, 48
	ld.d	$a1, $sp, 16
	st.d	$a0, $sp, 24
	stx.b	$zero, $a1, $a0
	ld.d	$s6, $s0, 16
	ld.d	$fp, $sp, 16
	addi.d	$s0, $s0, 8
	move	$s7, $s0
	beqz	$s6, .LBB42_18
# %bb.8:                                # %.lr.ph.i.i.i
	ld.d	$s5, $sp, 24
	lu12i.w	$s4, -524288
	lu12i.w	$a0, 524287
	ori	$s3, $a0, 4095
	ori	$s7, $zero, 16
	ori	$s8, $zero, 24
	move	$s1, $s0
	b	.LBB42_11
	.p2align	4, , 16
.LBB42_9:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i
                                        #   in Loop: Header=BB42_11 Depth=1
	sub.d	$a0, $s2, $s5
	slt	$a1, $s4, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s4, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $s3
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s3, $a1
	or	$a0, $a0, $a1
.LBB42_10:                              # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
                                        #   in Loop: Header=BB42_11 Depth=1
	addi.w	$a0, $a0, 0
	slti	$a0, $a0, 0
	masknez	$a1, $s6, $a0
	masknez	$a2, $s7, $a0
	maskeqz	$a3, $s8, $a0
	or	$a2, $a3, $a2
	ldx.d	$s6, $s6, $a2
	maskeqz	$a0, $s1, $a0
	or	$s1, $a0, $a1
	beqz	$s6, .LBB42_13
.LBB42_11:                              # =>This Inner Loop Header: Depth=1
	ld.d	$s2, $s6, 40
	sltu	$a0, $s5, $s2
	masknez	$a1, $s2, $a0
	maskeqz	$a0, $s5, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB42_9
# %bb.12:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
                                        #   in Loop: Header=BB42_11 Depth=1
	ld.d	$a0, $s6, 32
	move	$a1, $fp
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB42_10
	b	.LBB42_9
.LBB42_13:                              # %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i
	move	$s7, $s0
	addi.d	$s8, $sp, 32
	beq	$s1, $s0, .LBB42_18
# %bb.14:
	ld.d	$s2, $s1, 40
	sltu	$a0, $s2, $s5
	masknez	$a1, $s5, $a0
	maskeqz	$a0, $s2, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB42_16
# %bb.15:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
	ld.d	$a1, $s1, 32
	move	$a0, $fp
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB42_17
.LBB42_16:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i
	sub.d	$a0, $s5, $s2
	slt	$a1, $s4, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s4, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $s3
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s3, $a1
	or	$a0, $a0, $a1
.LBB42_17:                              # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i
	addi.w	$a0, $a0, 0
	slti	$a0, $a0, 0
	masknez	$a1, $s1, $a0
	maskeqz	$a0, $s0, $a0
	or	$s7, $a0, $a1
.LBB42_18:                              # %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit
	beq	$fp, $s8, .LBB42_20
# %bb.19:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a0, $sp, 32
	addi.d	$a1, $a0, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB42_20:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	beq	$s7, $s0, .LBB42_22
# %bb.21:
	ld.d	$a0, $s7, 64
	ld.d	$a0, $a0, 0
	b	.LBB42_23
.LBB42_22:
	move	$a0, $zero
.LBB42_23:
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
.LBB42_24:                              # %.noexc
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	pcaddu18i	$ra, %call36(_ZSt19__throw_logic_errorPKc)
	jirl	$ra, $ra, 0
.Lfunc_end42:
	.size	_ZN10MallocPlus14get_memory_ptrEPKc, .Lfunc_end42-_ZN10MallocPlus14get_memory_ptrEPKc
	.cfi_endproc
                                        # -- End function
	.globl	_ZN10MallocPlus22check_memory_attributeEPvi # -- Begin function _ZN10MallocPlus22check_memory_attributeEPvi
	.p2align	5
	.type	_ZN10MallocPlus22check_memory_attributeEPvi,@function
_ZN10MallocPlus22check_memory_attributeEPvi: # @_ZN10MallocPlus22check_memory_attributeEPvi
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	ld.d	$a3, $a0, 64
	beqz	$a3, .LBB43_6
# %bb.1:                                # %.lr.ph.i.i.i.preheader
	addi.d	$a4, $a0, 56
	ori	$a5, $zero, 16
	ori	$a6, $zero, 24
	move	$a0, $a4
	.p2align	4, , 16
.LBB43_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a7, $a3, 32
	sltu	$a7, $a7, $a1
	masknez	$t0, $a3, $a7
	masknez	$t1, $a5, $a7
	maskeqz	$t2, $a6, $a7
	or	$t1, $t2, $t1
	ldx.d	$a3, $a3, $t1
	maskeqz	$a0, $a0, $a7
	or	$a0, $a0, $t0
	bnez	$a3, .LBB43_2
# %bb.3:                                # %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i
	beq	$a0, $a4, .LBB43_6
# %bb.4:                                # %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit
	ld.d	$a3, $a0, 32
	bltu	$a1, $a3, .LBB43_6
# %bb.5:
	ld.d	$a0, $a0, 40
	ld.w	$a0, $a0, 40
	and	$a0, $a0, $a2
	sltu	$a0, $zero, $a0
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB43_6:                               # %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit.thread
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end43:
	.size	_ZN10MallocPlus22check_memory_attributeEPvi, .Lfunc_end43-_ZN10MallocPlus22check_memory_attributeEPvi
                                        # -- End function
	.globl	_ZN10MallocPlus20set_memory_attributeEPvi # -- Begin function _ZN10MallocPlus20set_memory_attributeEPvi
	.p2align	5
	.type	_ZN10MallocPlus20set_memory_attributeEPvi,@function
_ZN10MallocPlus20set_memory_attributeEPvi: # @_ZN10MallocPlus20set_memory_attributeEPvi
# %bb.0:
	ld.d	$a3, $a0, 64
	beqz	$a3, .LBB44_6
# %bb.1:                                # %.lr.ph.i.i.i.preheader
	addi.d	$a4, $a0, 56
	ori	$a5, $zero, 16
	ori	$a6, $zero, 24
	move	$a0, $a4
	.p2align	4, , 16
.LBB44_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a7, $a3, 32
	sltu	$a7, $a7, $a1
	masknez	$t0, $a3, $a7
	masknez	$t1, $a5, $a7
	maskeqz	$t2, $a6, $a7
	or	$t1, $t2, $t1
	ldx.d	$a3, $a3, $t1
	maskeqz	$a0, $a0, $a7
	or	$a0, $a0, $t0
	bnez	$a3, .LBB44_2
# %bb.3:                                # %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i
	beq	$a0, $a4, .LBB44_6
# %bb.4:                                # %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit
	ld.d	$a3, $a0, 32
	bltu	$a1, $a3, .LBB44_6
# %bb.5:
	ld.d	$a0, $a0, 40
	ld.w	$a1, $a0, 40
	or	$a1, $a1, $a2
	st.w	$a1, $a0, 40
.LBB44_6:                               # %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit.thread
	ret
.Lfunc_end44:
	.size	_ZN10MallocPlus20set_memory_attributeEPvi, .Lfunc_end44-_ZN10MallocPlus20set_memory_attributeEPvi
                                        # -- End function
	.globl	_ZN10MallocPlus22clear_memory_attributeEPvi # -- Begin function _ZN10MallocPlus22clear_memory_attributeEPvi
	.p2align	5
	.type	_ZN10MallocPlus22clear_memory_attributeEPvi,@function
_ZN10MallocPlus22clear_memory_attributeEPvi: # @_ZN10MallocPlus22clear_memory_attributeEPvi
# %bb.0:
	ld.d	$a3, $a0, 64
	beqz	$a3, .LBB45_6
# %bb.1:                                # %.lr.ph.i.i.i.preheader
	addi.d	$a4, $a0, 56
	ori	$a5, $zero, 16
	ori	$a6, $zero, 24
	move	$a0, $a4
	.p2align	4, , 16
.LBB45_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a7, $a3, 32
	sltu	$a7, $a7, $a1
	masknez	$t0, $a3, $a7
	masknez	$t1, $a5, $a7
	maskeqz	$t2, $a6, $a7
	or	$t1, $t2, $t1
	ldx.d	$a3, $a3, $t1
	maskeqz	$a0, $a0, $a7
	or	$a0, $a0, $t0
	bnez	$a3, .LBB45_2
# %bb.3:                                # %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i
	beq	$a0, $a4, .LBB45_6
# %bb.4:                                # %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit
	ld.d	$a3, $a0, 32
	bltu	$a1, $a3, .LBB45_6
# %bb.5:
	ld.d	$a0, $a0, 40
	ld.w	$a1, $a0, 40
	andn	$a1, $a1, $a2
	st.w	$a1, $a0, 40
.LBB45_6:                               # %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit.thread
	ret
.Lfunc_end45:
	.size	_ZN10MallocPlus22clear_memory_attributeEPvi, .Lfunc_end45-_ZN10MallocPlus22clear_memory_attributeEPvi
                                        # -- End function
	.globl	MallocPlus_new                  # -- Begin function MallocPlus_new
	.p2align	5
	.type	MallocPlus_new,@function
MallocPlus_new:                         # @MallocPlus_new
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	ori	$a0, $zero, 96
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	addi.d	$a1, $a0, 8
	st.w	$zero, $a0, 8
	st.d	$zero, $a0, 16
	st.d	$a1, $a0, 24
	st.d	$a1, $a0, 32
	st.d	$zero, $a0, 40
	addi.d	$a1, $a0, 56
	st.w	$zero, $a0, 56
	st.d	$zero, $a0, 64
	st.d	$a1, $a0, 72
	st.d	$a1, $a0, 80
	st.d	$zero, $a0, 88
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end46:
	.size	MallocPlus_new, .Lfunc_end46-MallocPlus_new
	.cfi_endproc
                                        # -- End function
	.globl	MallocPlus_memory_report        # -- Begin function MallocPlus_memory_report
	.p2align	5
	.type	MallocPlus_memory_report,@function
MallocPlus_memory_report:               # @MallocPlus_memory_report
# %bb.0:
	pcaddu18i	$t8, %call36(_ZN10MallocPlus13memory_reportEv)
	jr	$t8
.Lfunc_end47:
	.size	MallocPlus_memory_report, .Lfunc_end47-MallocPlus_memory_report
                                        # -- End function
	.globl	MallocPlus_memory_add           # -- Begin function MallocPlus_memory_add
	.p2align	5
	.type	MallocPlus_memory_add,@function
MallocPlus_memory_add:                  # @MallocPlus_memory_add
	.cfi_startproc
# %bb.0:
	addi.w	$a5, $a5, 0
	pcaddu18i	$t8, %call36(_ZN10MallocPlus10memory_addEPvmmPKci)
	jr	$t8
.Lfunc_end48:
	.size	MallocPlus_memory_add, .Lfunc_end48-MallocPlus_memory_add
	.cfi_endproc
                                        # -- End function
	.globl	MallocPlus_memory_add_nD        # -- Begin function MallocPlus_memory_add_nD
	.p2align	5
	.type	MallocPlus_memory_add_nD,@function
MallocPlus_memory_add_nD:               # @MallocPlus_memory_add_nD
	.cfi_startproc
# %bb.0:
	addi.w	$a6, $a6, 0
	pcaddu18i	$t8, %call36(_ZN10MallocPlus10memory_addEPviPmmPKci)
	jr	$t8
.Lfunc_end49:
	.size	MallocPlus_memory_add_nD, .Lfunc_end49-MallocPlus_memory_add_nD
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
.Lfunc_end50:
	.size	__clang_call_terminate, .Lfunc_end50-__clang_call_terminate
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE7_M_copyILb0ENSB_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS5_ESG_PSt18_Rb_tree_node_baseRT0_,"axG",@progbits,_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE7_M_copyILb0ENSB_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS5_ESG_PSt18_Rb_tree_node_baseRT0_,comdat
	.weak	_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE7_M_copyILb0ENSB_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS5_ESG_PSt18_Rb_tree_node_baseRT0_ # -- Begin function _ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE7_M_copyILb0ENSB_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS5_ESG_PSt18_Rb_tree_node_baseRT0_
	.p2align	5
	.type	_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE7_M_copyILb0ENSB_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS5_ESG_PSt18_Rb_tree_node_baseRT0_,@function
_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE7_M_copyILb0ENSB_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS5_ESG_PSt18_Rb_tree_node_baseRT0_: # @_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE7_M_copyILb0ENSB_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS5_ESG_PSt18_Rb_tree_node_baseRT0_
.Lfunc_begin20:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception20
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	move	$s1, $a3
	move	$s3, $a2
	move	$s2, $a1
	move	$fp, $a0
	ori	$a0, $zero, 48
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	vld	$vr0, $s2, 32
	ld.w	$a2, $s2, 0
	move	$s0, $a0
	vst	$vr0, $a0, 32
	ld.d	$a1, $s2, 24
	st.w	$a2, $a0, 0
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	vst	$vr0, $a0, 16
	st.d	$s3, $a0, 8
	beqz	$a1, .LBB51_3
# %bb.1:
.Ltmp138:                               # EH_LABEL
	move	$a0, $fp
	move	$a2, $s0
	move	$a3, $s1
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE7_M_copyILb0ENSB_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS5_ESG_PSt18_Rb_tree_node_baseRT0_)
	jirl	$ra, $ra, 0
.Ltmp139:                               # EH_LABEL
# %bb.2:
	st.d	$a0, $s0, 24
.LBB51_3:
	ld.d	$s3, $s2, 16
	beqz	$s3, .LBB51_10
# %bb.4:                                # %.lr.ph.preheader
	move	$s4, $s0
	b	.LBB51_6
	.p2align	4, , 16
.LBB51_5:                               #   in Loop: Header=BB51_6 Depth=1
	ld.d	$s3, $s3, 16
	move	$s4, $s2
	beqz	$s3, .LBB51_10
.LBB51_6:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
.Ltmp141:                               # EH_LABEL
	ori	$a0, $zero, 48
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp142:                               # EH_LABEL
# %bb.7:                                #   in Loop: Header=BB51_6 Depth=1
	move	$s2, $a0
	vld	$vr0, $s3, 32
	vst	$vr0, $a0, 32
	ld.w	$a0, $s3, 0
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $s2, 16
	ld.d	$a1, $s3, 24
	st.w	$a0, $s2, 0
	st.d	$s2, $s4, 16
	st.d	$s4, $s2, 8
	beqz	$a1, .LBB51_5
# %bb.8:                                #   in Loop: Header=BB51_6 Depth=1
.Ltmp143:                               # EH_LABEL
	move	$a0, $fp
	move	$a2, $s2
	move	$a3, $s1
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE7_M_copyILb0ENSB_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS5_ESG_PSt18_Rb_tree_node_baseRT0_)
	jirl	$ra, $ra, 0
.Ltmp144:                               # EH_LABEL
# %bb.9:                                #   in Loop: Header=BB51_6 Depth=1
	st.d	$a0, $s2, 24
	b	.LBB51_5
.LBB51_10:                              # %._crit_edge
	move	$a0, $s0
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.LBB51_11:
.Ltmp140:                               # EH_LABEL
	b	.LBB51_13
.LBB51_12:
.Ltmp145:                               # EH_LABEL
.LBB51_13:
	pcaddu18i	$ra, %call36(__cxa_begin_catch)
	jirl	$ra, $ra, 0
.Ltmp146:                               # EH_LABEL
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E)
	jirl	$ra, $ra, 0
.Ltmp147:                               # EH_LABEL
# %bb.14:
.Ltmp148:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_rethrow)
	jirl	$ra, $ra, 0
.Ltmp149:                               # EH_LABEL
# %bb.15:
.LBB51_16:
.Ltmp150:                               # EH_LABEL
	move	$fp, $a0
.Ltmp151:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_end_catch)
	jirl	$ra, $ra, 0
.Ltmp152:                               # EH_LABEL
# %bb.17:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB51_18:
.Ltmp153:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end51:
	.size	_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE7_M_copyILb0ENSB_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS5_ESG_PSt18_Rb_tree_node_baseRT0_, .Lfunc_end51-_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE7_M_copyILb0ENSB_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS5_ESG_PSt18_Rb_tree_node_baseRT0_
	.cfi_endproc
	.section	.gcc_except_table._ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE7_M_copyILb0ENSB_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS5_ESG_PSt18_Rb_tree_node_baseRT0_,"aG",@progbits,_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE7_M_copyILb0ENSB_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS5_ESG_PSt18_Rb_tree_node_baseRT0_,comdat
	.p2align	2, 0x0
GCC_except_table51:
.Lexception20:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase5-.Lttbaseref5
.Lttbaseref5:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end20-.Lcst_begin20
.Lcst_begin20:
	.uleb128 .Lfunc_begin20-.Lfunc_begin20  # >> Call Site 1 <<
	.uleb128 .Ltmp138-.Lfunc_begin20        #   Call between .Lfunc_begin20 and .Ltmp138
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp138-.Lfunc_begin20        # >> Call Site 2 <<
	.uleb128 .Ltmp139-.Ltmp138              #   Call between .Ltmp138 and .Ltmp139
	.uleb128 .Ltmp140-.Lfunc_begin20        #     jumps to .Ltmp140
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp141-.Lfunc_begin20        # >> Call Site 3 <<
	.uleb128 .Ltmp144-.Ltmp141              #   Call between .Ltmp141 and .Ltmp144
	.uleb128 .Ltmp145-.Lfunc_begin20        #     jumps to .Ltmp145
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp144-.Lfunc_begin20        # >> Call Site 4 <<
	.uleb128 .Ltmp146-.Ltmp144              #   Call between .Ltmp144 and .Ltmp146
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp146-.Lfunc_begin20        # >> Call Site 5 <<
	.uleb128 .Ltmp149-.Ltmp146              #   Call between .Ltmp146 and .Ltmp149
	.uleb128 .Ltmp150-.Lfunc_begin20        #     jumps to .Ltmp150
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp151-.Lfunc_begin20        # >> Call Site 6 <<
	.uleb128 .Ltmp152-.Ltmp151              #   Call between .Ltmp151 and .Ltmp152
	.uleb128 .Ltmp153-.Lfunc_begin20        #     jumps to .Ltmp153
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp152-.Lfunc_begin20        # >> Call Site 7 <<
	.uleb128 .Lfunc_end51-.Ltmp152          #   Call between .Ltmp152 and .Lfunc_end51
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end20:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase5:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E,"axG",@progbits,_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E,comdat
	.weak	_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E # -- Begin function _ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E
	.p2align	5
	.type	_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E,@function
_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E: # @_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E
	.cfi_startproc
# %bb.0:
	beqz	$a1, .LBB52_4
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
.LBB52_2:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s0, 16
	ori	$a1, $zero, 48
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$s0, $s1
	bnez	$s1, .LBB52_2
# %bb.3:
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
.LBB52_4:                               # %._crit_edge
	ret
.Lfunc_end52:
	.size	_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E, .Lfunc_end52-_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJS6_IS5_S9_EEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_,"axG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJS6_IS5_S9_EEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_,comdat
	.weak	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJS6_IS5_S9_EEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_ # -- Begin function _ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJS6_IS5_S9_EEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_
	.p2align	5
	.type	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJS6_IS5_S9_EEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_,@function
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJS6_IS5_S9_EEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_: # @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJS6_IS5_S9_EEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_
.Lfunc_begin21:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception21
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
	move	$s4, $a2
	move	$s2, $a1
	move	$s0, $a0
	st.d	$a0, $sp, 8
	ori	$a0, $zero, 72
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ld.d	$a0, $s4, 0
	addi.d	$s1, $fp, 32
	addi.d	$s3, $fp, 48
	addi.d	$s5, $s4, 16
	st.d	$s3, $fp, 32
	beq	$a0, $s5, .LBB53_2
# %bb.1:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
	ld.d	$a1, $s4, 16
	ld.d	$s6, $s4, 8
	st.d	$a0, $s1, 0
	st.d	$a1, $s3, 0
	b	.LBB53_3
.LBB53_2:
	ld.d	$s6, $s4, 8
	addi.d	$a2, $s6, 1
	move	$a0, $s3
	move	$a1, $s5
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB53_3:
	st.d	$s6, $fp, 40
	ld.d	$a0, $s4, 32
	st.d	$s5, $s4, 0
	st.d	$zero, $s4, 8
	st.b	$zero, $s4, 16
	st.d	$a0, $fp, 64
	st.d	$fp, $sp, 16
.Ltmp154:                               # EH_LABEL
	move	$a0, $s0
	move	$a1, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_)
	jirl	$ra, $ra, 0
.Ltmp155:                               # EH_LABEL
# %bb.4:
	move	$a2, $a0
	move	$s2, $a1
	beqz	$a1, .LBB53_12
# %bb.5:
	addi.d	$a3, $s0, 8
	ori	$a0, $zero, 1
	bnez	$a2, .LBB53_11
# %bb.6:
	beq	$a3, $s2, .LBB53_11
# %bb.7:
	ld.d	$s3, $fp, 40
	ld.d	$s4, $s2, 40
	sltu	$a0, $s4, $s3
	masknez	$a1, $s3, $a0
	maskeqz	$a0, $s4, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB53_9
# %bb.8:                                # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
	ld.d	$a1, $s2, 32
	ld.d	$a0, $s1, 0
	move	$s1, $a3
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	move	$a3, $s1
	bnez	$a0, .LBB53_10
.LBB53_9:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i
	sub.d	$a0, $s3, $s4
	lu12i.w	$a1, -524288
	slt	$a2, $a1, $a0
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$a0, $a0, $a1
	lu12i.w	$a1, 524287
	ori	$a1, $a1, 4095
	slt	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$a0, $a0, $a1
.LBB53_10:                              # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i
	addi.w	$a0, $a0, 0
	slti	$a0, $a0, 0
.LBB53_11:                              # %.thread
	move	$a1, $fp
	move	$a2, $s2
	pcaddu18i	$ra, %call36(_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 40
	addi.d	$a0, $a0, 1
	st.d	$a0, $s0, 40
	move	$a0, $fp
	b	.LBB53_15
.LBB53_12:
	move	$s0, $a2
	ld.d	$a0, $s1, 0
	beq	$a0, $s3, .LBB53_14
# %bb.13:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
	ld.d	$a1, $s3, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB53_14:                              # %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit.i
	ori	$a1, $zero, 72
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s0
.LBB53_15:                              # %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeD2Ev.exit
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
.LBB53_16:
.Ltmp156:                               # EH_LABEL
	move	$fp, $a0
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end53:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJS6_IS5_S9_EEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_, .Lfunc_end53-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJS6_IS5_S9_EEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_
	.cfi_endproc
	.section	.gcc_except_table._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJS6_IS5_S9_EEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_,"aG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJS6_IS5_S9_EEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_,comdat
	.p2align	2, 0x0
GCC_except_table53:
.Lexception21:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end21-.Lcst_begin21
.Lcst_begin21:
	.uleb128 .Lfunc_begin21-.Lfunc_begin21  # >> Call Site 1 <<
	.uleb128 .Ltmp154-.Lfunc_begin21        #   Call between .Lfunc_begin21 and .Ltmp154
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp154-.Lfunc_begin21        # >> Call Site 2 <<
	.uleb128 .Ltmp155-.Ltmp154              #   Call between .Ltmp154 and .Ltmp155
	.uleb128 .Ltmp156-.Lfunc_begin21        #     jumps to .Ltmp156
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp155-.Lfunc_begin21        # >> Call Site 3 <<
	.uleb128 .Lfunc_end53-.Ltmp155          #   Call between .Ltmp155 and .Lfunc_end53
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end21:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_,"axG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_,comdat
	.weak	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_ # -- Begin function _ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_
	.p2align	5
	.type	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_,@function
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_: # @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_
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
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	move	$s1, $a0
	addi.d	$a0, $a0, 8
	move	$s0, $a2
	beq	$a0, $a1, .LBB54_4
# %bb.1:
	move	$fp, $a1
	ld.d	$s5, $s0, 8
	ld.d	$s6, $a1, 40
	sltu	$a0, $s6, $s5
	masknez	$a1, $s5, $a0
	maskeqz	$a0, $s6, $a0
	or	$s2, $a0, $a1
	beqz	$s2, .LBB54_10
# %bb.2:                                # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i21
	ld.d	$s3, $fp, 32
	ld.d	$s4, $s0, 0
	move	$a0, $s4
	move	$a1, $s3
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB54_11
# %bb.3:                                # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit28.thread
	bgez	$a0, .LBB54_12
	b	.LBB54_15
.LBB54_4:
	ld.d	$a0, $s1, 40
	beqz	$a0, .LBB54_27
# %bb.5:
	ld.d	$a1, $s1, 32
	ld.d	$fp, $a1, 40
	ld.d	$s2, $s0, 8
	sltu	$a0, $s2, $fp
	masknez	$a2, $fp, $a0
	maskeqz	$a0, $s2, $a0
	or	$a2, $a0, $a2
	beqz	$a2, .LBB54_7
# %bb.6:                                # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i
	ld.d	$a3, $s0, 0
	ld.d	$a0, $a1, 32
	move	$s3, $a1
	move	$a1, $a3
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	move	$a1, $s3
	bnez	$a0, .LBB54_8
.LBB54_7:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
	sub.d	$a0, $fp, $s2
	lu12i.w	$a2, -524288
	slt	$a3, $a2, $a0
	maskeqz	$a0, $a0, $a3
	masknez	$a2, $a2, $a3
	or	$a0, $a0, $a2
	lu12i.w	$a2, 524287
	ori	$a2, $a2, 4095
	slt	$a3, $a0, $a2
	maskeqz	$a0, $a0, $a3
	masknez	$a2, $a2, $a3
	or	$a0, $a0, $a2
.LBB54_8:                               # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
	addi.w	$a0, $a0, 0
	bgez	$a0, .LBB54_27
# %bb.9:
	move	$fp, $zero
	b	.LBB54_28
.LBB54_10:                              # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit28
	sub.d	$a0, $s5, $s6
	bgez	$a0, .LBB54_21
	b	.LBB54_15
.LBB54_11:                              # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit28.thread78
	sub.d	$a0, $s5, $s6
	bltz	$a0, .LBB54_15
.LBB54_12:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i39
	move	$a0, $s3
	move	$a1, $s4
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB54_21
# %bb.13:                               # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit46
	addi.w	$a0, $a0, 0
	bltz	$a0, .LBB54_22
.LBB54_14:
	move	$a1, $zero
	b	.LBB54_28
.LBB54_15:
	ld.d	$a0, $s1, 24
	beq	$a0, $fp, .LBB54_29
# %bb.16:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ld.d	$s3, $a0, 40
	sltu	$a0, $s5, $s3
	masknez	$a1, $s3, $a0
	maskeqz	$a0, $s5, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB54_18
# %bb.17:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i30
	ld.d	$a1, $s0, 0
	ld.d	$a0, $s2, 32
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB54_19
.LBB54_18:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i33
	sub.d	$a0, $s3, $s5
	lu12i.w	$a1, -524288
	slt	$a2, $a1, $a0
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$a0, $a0, $a1
	lu12i.w	$a1, 524287
	ori	$a1, $a1, 4095
	slt	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$a0, $a0, $a1
.LBB54_19:                              # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit37
	addi.w	$a0, $a0, 0
	bgez	$a0, .LBB54_27
# %bb.20:
	ld.d	$a0, $s2, 24
	sltui	$a0, $a0, 1
	masknez	$fp, $fp, $a0
	maskeqz	$a0, $s2, $a0
	or	$a1, $a0, $fp
	b	.LBB54_28
.LBB54_21:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i42
	sub.d	$a0, $s6, $s5
	lu12i.w	$a1, -524288
	slt	$a2, $a1, $a0
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$a0, $a0, $a1
	lu12i.w	$a1, 524287
	ori	$a1, $a1, 4095
	slt	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$a0, $a0, $a1
	addi.w	$a0, $a0, 0
	bgez	$a0, .LBB54_14
.LBB54_22:
	ld.d	$a0, $s1, 32
	beq	$a0, $fp, .LBB54_30
# %bb.23:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ld.d	$s3, $a0, 40
	sltu	$a0, $s3, $s5
	masknez	$a1, $s5, $a0
	maskeqz	$a0, $s3, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB54_25
# %bb.24:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i48
	ld.d	$a1, $s2, 32
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB54_26
.LBB54_25:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i51
	sub.d	$a0, $s5, $s3
	lu12i.w	$a1, -524288
	slt	$a2, $a1, $a0
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$a0, $a0, $a1
	lu12i.w	$a1, 524287
	ori	$a1, $a1, 4095
	slt	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$a0, $a0, $a1
.LBB54_26:                              # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit55
	addi.w	$a0, $a0, 0
	bltz	$a0, .LBB54_31
.LBB54_27:
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_)
	jirl	$ra, $ra, 0
	move	$fp, $a0
.LBB54_28:
	move	$a0, $fp
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
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
.LBB54_29:
	move	$a1, $fp
	b	.LBB54_28
.LBB54_30:
	move	$a1, $fp
	move	$fp, $zero
	b	.LBB54_28
.LBB54_31:
	ld.d	$a0, $fp, 24
	sltui	$a0, $a0, 1
	maskeqz	$a1, $fp, $a0
	masknez	$fp, $s2, $a0
	or	$a1, $a1, $fp
	b	.LBB54_28
.Lfunc_end54:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_, .Lfunc_end54-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeD2Ev,"axG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeD2Ev,comdat
	.weak	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeD2Ev # -- Begin function _ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeD2Ev
	.p2align	5
	.type	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeD2Ev,@function
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeD2Ev: # @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeD2Ev
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	ld.d	$fp, $a0, 8
	beqz	$fp, .LBB55_4
# %bb.1:
	ld.d	$a0, $fp, 32
	addi.d	$a1, $fp, 48
	beq	$a0, $a1, .LBB55_3
# %bb.2:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB55_3:                               # %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit
	ori	$a1, $zero, 72
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB55_4:
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end55:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeD2Ev, .Lfunc_end55-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeD2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_,"axG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_,comdat
	.weak	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_ # -- Begin function _ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_
	.p2align	5
	.type	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_,@function
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_: # @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_
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
	move	$s1, $a0
	ld.d	$a0, $a0, 16
	move	$s0, $a1
	lu12i.w	$s4, -524288
	lu12i.w	$s3, 524287
	beqz	$a0, .LBB56_13
# %bb.1:                                # %.lr.ph
	ld.d	$s5, $s0, 8
	ld.d	$s2, $s0, 0
	ori	$s6, $s3, 4095
	ori	$s7, $zero, 24
	ori	$s8, $zero, 16
	b	.LBB56_4
	.p2align	4, , 16
.LBB56_2:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
                                        #   in Loop: Header=BB56_4 Depth=1
	sub.d	$a0, $s5, $s3
	slt	$a1, $s4, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s4, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $s6
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s6, $a1
	or	$a0, $a0, $a1
.LBB56_3:                               # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
                                        #   in Loop: Header=BB56_4 Depth=1
	addi.w	$a1, $a0, 0
	slti	$a0, $a1, 0
	masknez	$a2, $s7, $a0
	maskeqz	$a0, $s8, $a0
	or	$a0, $a0, $a2
	ldx.d	$a0, $fp, $a0
	beqz	$a0, .LBB56_6
.LBB56_4:                               # =>This Inner Loop Header: Depth=1
	move	$fp, $a0
	ld.d	$s3, $a0, 40
	sltu	$a0, $s3, $s5
	masknez	$a1, $s5, $a0
	maskeqz	$a0, $s3, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB56_2
# %bb.5:                                # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i
                                        #   in Loop: Header=BB56_4 Depth=1
	ld.d	$a1, $fp, 32
	move	$a0, $s2
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB56_3
	b	.LBB56_2
.LBB56_6:                               # %._crit_edge
	move	$s2, $fp
	lu12i.w	$s3, 524287
	bgez	$a1, .LBB56_9
# %bb.7:                                # %._crit_edge.thread
	ld.d	$a0, $s1, 24
	beq	$fp, $a0, .LBB56_14
.LBB56_8:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	move	$s2, $a0
.LBB56_9:
	ld.d	$s1, $s2, 40
	ld.d	$s5, $s0, 8
	sltu	$a0, $s5, $s1
	masknez	$a1, $s1, $a0
	maskeqz	$a0, $s5, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB56_11
# %bb.10:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6
	ld.d	$a1, $s0, 0
	ld.d	$a0, $s2, 32
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB56_12
.LBB56_11:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9
	sub.d	$a0, $s1, $s5
	slt	$a1, $s4, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s4, $a1
	or	$a0, $a0, $a1
	ori	$a1, $s3, 4095
	slt	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$a0, $a0, $a1
.LBB56_12:                              # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13
	addi.w	$a0, $a0, 0
	slti	$a1, $a0, 0
	srai.d	$a0, $a0, 63
	and	$fp, $a0, $fp
	masknez	$a0, $s2, $a1
	b	.LBB56_15
.LBB56_13:
	addi.d	$fp, $s1, 8
	ld.d	$a0, $s1, 24
	bne	$fp, $a0, .LBB56_8
.LBB56_14:
	move	$a0, $zero
.LBB56_15:
	move	$a1, $fp
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
	ret
.Lfunc_end56:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_, .Lfunc_end56-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS2_,"axG",@progbits,_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS2_,comdat
	.weak	_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS2_ # -- Begin function _ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS2_
	.p2align	5
	.type	_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS2_,@function
_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS2_: # @_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS2_
	.cfi_startproc
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
	move	$a3, $a0
	addi.d	$fp, $a0, 8
	beq	$fp, $a1, .LBB57_5
# %bb.1:
	move	$a0, $a1
	ld.d	$s0, $a2, 0
	ld.d	$a1, $a1, 32
	bgeu	$s0, $a1, .LBB57_8
# %bb.2:
	ld.d	$s1, $a3, 24
	beq	$s1, $a0, .LBB57_20
# %bb.3:
	move	$s3, $a3
	move	$s2, $a0
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 32
	bgeu	$a1, $s0, .LBB57_21
# %bb.4:
	ld.d	$a1, $a0, 24
	sltui	$a1, $a1, 1
	move	$a2, $a0
	masknez	$a0, $s2, $a1
	maskeqz	$a1, $a2, $a1
	or	$a1, $a1, $a0
	b	.LBB57_36
.LBB57_5:
	ld.d	$a0, $a3, 40
	beqz	$a0, .LBB57_12
# %bb.6:
	ld.d	$a1, $a3, 32
	ld.d	$a0, $a1, 32
	ld.d	$a4, $a2, 0
	bgeu	$a0, $a4, .LBB57_12
.LBB57_7:
	move	$a0, $zero
	b	.LBB57_36
.LBB57_8:
	bgeu	$a1, $s0, .LBB57_19
# %bb.9:
	ld.d	$a1, $a3, 32
	beq	$a1, $a0, .LBB57_26
# %bb.10:
	move	$s1, $a3
	move	$s2, $a0
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 32
	bgeu	$s0, $a1, .LBB57_27
# %bb.11:
	ld.d	$a1, $s2, 24
	sltui	$a1, $a1, 1
	maskeqz	$a2, $s2, $a1
	masknez	$a0, $a0, $a1
	or	$a1, $a2, $a0
	b	.LBB57_36
.LBB57_12:
	ld.d	$a5, $a3, 16
	beqz	$a5, .LBB57_16
# %bb.13:                               # %.lr.ph.i
	ld.d	$a1, $a2, 0
	ori	$a0, $zero, 24
	ori	$a6, $zero, 16
	.p2align	4, , 16
.LBB57_14:                              # =>This Inner Loop Header: Depth=1
	move	$fp, $a5
	ld.d	$a4, $a5, 32
	sltu	$a5, $a1, $a4
	masknez	$a7, $a0, $a5
	maskeqz	$a5, $a6, $a5
	or	$a5, $a5, $a7
	ldx.d	$a5, $fp, $a5
	bnez	$a5, .LBB57_14
# %bb.15:                               # %._crit_edge.i
	move	$a0, $fp
	bgeu	$a1, $a4, .LBB57_18
.LBB57_16:                              # %._crit_edge.thread.i
	ld.d	$a0, $a3, 24
	beq	$fp, $a0, .LBB57_35
# %bb.17:
	move	$a0, $fp
	move	$s0, $a2
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	ld.d	$a4, $a0, 32
	ld.d	$a1, $s0, 0
.LBB57_18:
	sltu	$a1, $a4, $a1
	b	.LBB57_34
.LBB57_19:
	move	$a1, $zero
	b	.LBB57_36
.LBB57_20:
	move	$a1, $a0
	b	.LBB57_36
.LBB57_21:
	ld.d	$a4, $s3, 16
	move	$a1, $s1
	beqz	$a4, .LBB57_25
# %bb.22:                               # %.lr.ph.i22.preheader
	ori	$a0, $zero, 24
	ori	$a3, $zero, 16
	.p2align	4, , 16
.LBB57_23:                              # %.lr.ph.i22
                                        # =>This Inner Loop Header: Depth=1
	move	$fp, $a4
	ld.d	$a2, $a4, 32
	sltu	$a4, $s0, $a2
	masknez	$a5, $a0, $a4
	maskeqz	$a4, $a3, $a4
	or	$a4, $a4, $a5
	ldx.d	$a4, $fp, $a4
	bnez	$a4, .LBB57_23
# %bb.24:                               # %._crit_edge.i28
	move	$a0, $fp
	bgeu	$s0, $a2, .LBB57_33
.LBB57_25:                              # %._crit_edge.thread.i37
	bne	$fp, $a1, .LBB57_32
	b	.LBB57_7
.LBB57_26:
	move	$a1, $a0
	move	$a0, $zero
	b	.LBB57_36
.LBB57_27:
	move	$a1, $s1
	ld.d	$a4, $s1, 16
	beqz	$a4, .LBB57_31
# %bb.28:                               # %.lr.ph.i42.preheader
	ori	$a0, $zero, 24
	ori	$a3, $zero, 16
	.p2align	4, , 16
.LBB57_29:                              # %.lr.ph.i42
                                        # =>This Inner Loop Header: Depth=1
	move	$fp, $a4
	ld.d	$a2, $a4, 32
	sltu	$a4, $s0, $a2
	masknez	$a5, $a0, $a4
	maskeqz	$a4, $a3, $a4
	or	$a4, $a4, $a5
	ldx.d	$a4, $fp, $a4
	bnez	$a4, .LBB57_29
# %bb.30:                               # %._crit_edge.i48
	move	$a0, $fp
	bgeu	$s0, $a2, .LBB57_33
.LBB57_31:                              # %._crit_edge.thread.i57
	ld.d	$a0, $a1, 24
	beq	$fp, $a0, .LBB57_35
.LBB57_32:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	ld.d	$a2, $a0, 32
.LBB57_33:
	sltu	$a1, $a2, $s0
.LBB57_34:                              # %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE24_M_get_insert_unique_posERS2_.exit
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $fp, $a1
	b	.LBB57_36
.LBB57_35:
	move	$a0, $zero
	move	$a1, $fp
.LBB57_36:                              # %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE24_M_get_insert_unique_posERS2_.exit
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end57:
	.size	_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS2_, .Lfunc_end57-_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E,"axG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E,comdat
	.weak	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E # -- Begin function _ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E
	.p2align	5
	.type	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E,@function
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E: # @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E
	.cfi_startproc
# %bb.0:
	beqz	$a1, .LBB58_6
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
	b	.LBB58_3
	.p2align	4, , 16
.LBB58_2:                               # %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit
                                        #   in Loop: Header=BB58_3 Depth=1
	ori	$a1, $zero, 72
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$s0, $s1
	beqz	$s1, .LBB58_5
.LBB58_3:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 32
	ld.d	$s1, $s0, 16
	addi.d	$a1, $s0, 48
	beq	$a0, $a1, .LBB58_2
# %bb.4:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
                                        #   in Loop: Header=BB58_3 Depth=1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB58_2
.LBB58_5:
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
.LBB58_6:                               # %._crit_edge
	ret
.Lfunc_end58:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E, .Lfunc_end58-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_emplace_uniqueIJS6_IPKcS9_EEEES6_ISt17_Rb_tree_iteratorISA_EbEDpOT_,"axG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_emplace_uniqueIJS6_IPKcS9_EEEES6_ISt17_Rb_tree_iteratorISA_EbEDpOT_,comdat
	.weak	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_emplace_uniqueIJS6_IPKcS9_EEEES6_ISt17_Rb_tree_iteratorISA_EbEDpOT_ # -- Begin function _ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_emplace_uniqueIJS6_IPKcS9_EEEES6_ISt17_Rb_tree_iteratorISA_EbEDpOT_
	.p2align	5
	.type	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_emplace_uniqueIJS6_IPKcS9_EEEES6_ISt17_Rb_tree_iteratorISA_EbEDpOT_,@function
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_emplace_uniqueIJS6_IPKcS9_EEEES6_ISt17_Rb_tree_iteratorISA_EbEDpOT_: # @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_emplace_uniqueIJS6_IPKcS9_EEEES6_ISt17_Rb_tree_iteratorISA_EbEDpOT_
.Lfunc_begin22:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception22
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
	move	$s1, $a1
	move	$s0, $a0
	st.d	$a0, $sp, 16
	ori	$a0, $zero, 72
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a0, $s0
	move	$a1, $fp
	move	$a2, $s1
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJS6_IPKcS9_EEEEvPSt13_Rb_tree_nodeISA_EDpOT_)
	jirl	$ra, $ra, 0
	st.d	$fp, $sp, 24
	addi.d	$s3, $fp, 32
.Ltmp157:                               # EH_LABEL
	move	$a0, $s0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_)
	jirl	$ra, $ra, 0
.Ltmp158:                               # EH_LABEL
# %bb.1:
	move	$s2, $a1
	beqz	$a1, .LBB59_9
# %bb.2:
	addi.d	$a3, $s0, 8
	ori	$s1, $zero, 1
	ori	$a1, $zero, 1
	bnez	$a0, .LBB59_8
# %bb.3:
	ori	$a1, $zero, 1
	beq	$a3, $s2, .LBB59_8
# %bb.4:
	ld.d	$s4, $fp, 40
	ld.d	$s5, $s2, 40
	sltu	$a0, $s5, $s4
	masknez	$a1, $s4, $a0
	maskeqz	$a0, $s5, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB59_6
# %bb.5:                                # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
	ld.d	$a1, $s2, 32
	ld.d	$a0, $s3, 0
	move	$s3, $a3
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	move	$a3, $s3
	bnez	$a0, .LBB59_7
.LBB59_6:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i
	sub.d	$a0, $s4, $s5
	lu12i.w	$a1, -524288
	slt	$a2, $a1, $a0
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$a0, $a0, $a1
	lu12i.w	$a1, 524287
	ori	$a1, $a1, 4095
	slt	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$a0, $a0, $a1
.LBB59_7:                               # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i
	addi.w	$a0, $a0, 0
	slti	$a1, $a0, 0
.LBB59_8:                               # %.thread
	move	$a0, $a1
	move	$a1, $fp
	move	$a2, $s2
	pcaddu18i	$ra, %call36(_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 40
	addi.d	$a0, $a0, 1
	st.d	$a0, $s0, 40
	move	$a0, $fp
	b	.LBB59_12
.LBB59_9:
	move	$s0, $a0
	ld.d	$a0, $fp, 32
	addi.d	$a1, $fp, 48
	beq	$a0, $a1, .LBB59_11
# %bb.10:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB59_11:                              # %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit.i
	ori	$a1, $zero, 72
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$s1, $zero
	move	$a0, $s0
.LBB59_12:                              # %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeD2Ev.exit
	move	$a1, $s1
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
.LBB59_13:
.Ltmp159:                               # EH_LABEL
	move	$fp, $a0
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end59:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_emplace_uniqueIJS6_IPKcS9_EEEES6_ISt17_Rb_tree_iteratorISA_EbEDpOT_, .Lfunc_end59-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_emplace_uniqueIJS6_IPKcS9_EEEES6_ISt17_Rb_tree_iteratorISA_EbEDpOT_
	.cfi_endproc
	.section	.gcc_except_table._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_emplace_uniqueIJS6_IPKcS9_EEEES6_ISt17_Rb_tree_iteratorISA_EbEDpOT_,"aG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_emplace_uniqueIJS6_IPKcS9_EEEES6_ISt17_Rb_tree_iteratorISA_EbEDpOT_,comdat
	.p2align	2, 0x0
GCC_except_table59:
.Lexception22:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end22-.Lcst_begin22
.Lcst_begin22:
	.uleb128 .Lfunc_begin22-.Lfunc_begin22  # >> Call Site 1 <<
	.uleb128 .Ltmp157-.Lfunc_begin22        #   Call between .Lfunc_begin22 and .Ltmp157
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp157-.Lfunc_begin22        # >> Call Site 2 <<
	.uleb128 .Ltmp158-.Ltmp157              #   Call between .Ltmp157 and .Ltmp158
	.uleb128 .Ltmp159-.Lfunc_begin22        #     jumps to .Ltmp159
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp158-.Lfunc_begin22        # >> Call Site 3 <<
	.uleb128 .Lfunc_end59-.Ltmp158          #   Call between .Ltmp158 and .Lfunc_end59
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end22:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJS6_IPKcS9_EEEEvPSt13_Rb_tree_nodeISA_EDpOT_,"axG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJS6_IPKcS9_EEEEvPSt13_Rb_tree_nodeISA_EDpOT_,comdat
	.weak	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJS6_IPKcS9_EEEEvPSt13_Rb_tree_nodeISA_EDpOT_ # -- Begin function _ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJS6_IPKcS9_EEEEvPSt13_Rb_tree_nodeISA_EDpOT_
	.p2align	5
	.type	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJS6_IPKcS9_EEEEvPSt13_Rb_tree_nodeISA_EDpOT_,@function
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJS6_IPKcS9_EEEEvPSt13_Rb_tree_nodeISA_EDpOT_: # @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJS6_IPKcS9_EEEEvPSt13_Rb_tree_nodeISA_EDpOT_
.Lfunc_begin23:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception23
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	ld.d	$s1, $a2, 0
	move	$fp, $a1
	addi.d	$s2, $a1, 48
	st.d	$s2, $a1, 32
	beqz	$s1, .LBB60_9
# %bb.1:
	move	$s0, $a2
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	ori	$a0, $zero, 16
	st.d	$s3, $sp, 16
	bltu	$s3, $a0, .LBB60_4
# %bb.2:                                # %.noexc.i.i
.Ltmp160:                               # EH_LABEL
	addi.d	$s4, $fp, 32
	addi.d	$a1, $sp, 16
	move	$a0, $s4
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp161:                               # EH_LABEL
# %bb.3:                                # %.noexc8
	ld.d	$a1, $sp, 16
	st.d	$a0, $s4, 0
	st.d	$a1, $s2, 0
	move	$s2, $a0
.LBB60_4:                               # %._crit_edge.i.i.i
	beqz	$s3, .LBB60_8
# %bb.5:                                # %._crit_edge.i.i.i
	ori	$a0, $zero, 1
	bne	$s3, $a0, .LBB60_7
# %bb.6:
	ld.b	$a0, $s1, 0
	st.b	$a0, $s2, 0
	b	.LBB60_8
.LBB60_7:
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB60_8:
	ld.d	$a0, $sp, 16
	ld.d	$a1, $fp, 32
	st.d	$a0, $fp, 40
	stx.b	$zero, $a1, $a0
	ld.d	$a0, $s0, 8
	st.d	$a0, $fp, 64
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.LBB60_9:                               # %.noexc.i
.Ltmp162:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	pcaddu18i	$ra, %call36(_ZSt19__throw_logic_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp163:                               # EH_LABEL
# %bb.10:                               # %.noexc
.LBB60_11:
.Ltmp164:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_begin_catch)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 72
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.Ltmp165:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_rethrow)
	jirl	$ra, $ra, 0
.Ltmp166:                               # EH_LABEL
# %bb.12:
.LBB60_13:
.Ltmp167:                               # EH_LABEL
	move	$fp, $a0
.Ltmp168:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_end_catch)
	jirl	$ra, $ra, 0
.Ltmp169:                               # EH_LABEL
# %bb.14:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB60_15:
.Ltmp170:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end60:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJS6_IPKcS9_EEEEvPSt13_Rb_tree_nodeISA_EDpOT_, .Lfunc_end60-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJS6_IPKcS9_EEEEvPSt13_Rb_tree_nodeISA_EDpOT_
	.cfi_endproc
	.section	.gcc_except_table._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJS6_IPKcS9_EEEEvPSt13_Rb_tree_nodeISA_EDpOT_,"aG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P24malloc_plus_memory_entryESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJS6_IPKcS9_EEEEvPSt13_Rb_tree_nodeISA_EDpOT_,comdat
	.p2align	2, 0x0
GCC_except_table60:
.Lexception23:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase6-.Lttbaseref6
.Lttbaseref6:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end23-.Lcst_begin23
.Lcst_begin23:
	.uleb128 .Lfunc_begin23-.Lfunc_begin23  # >> Call Site 1 <<
	.uleb128 .Ltmp160-.Lfunc_begin23        #   Call between .Lfunc_begin23 and .Ltmp160
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp160-.Lfunc_begin23        # >> Call Site 2 <<
	.uleb128 .Ltmp161-.Ltmp160              #   Call between .Ltmp160 and .Ltmp161
	.uleb128 .Ltmp164-.Lfunc_begin23        #     jumps to .Ltmp164
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp161-.Lfunc_begin23        # >> Call Site 3 <<
	.uleb128 .Ltmp162-.Ltmp161              #   Call between .Ltmp161 and .Ltmp162
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp162-.Lfunc_begin23        # >> Call Site 4 <<
	.uleb128 .Ltmp163-.Ltmp162              #   Call between .Ltmp162 and .Ltmp163
	.uleb128 .Ltmp164-.Lfunc_begin23        #     jumps to .Ltmp164
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp163-.Lfunc_begin23        # >> Call Site 5 <<
	.uleb128 .Ltmp165-.Ltmp163              #   Call between .Ltmp163 and .Ltmp165
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp165-.Lfunc_begin23        # >> Call Site 6 <<
	.uleb128 .Ltmp166-.Ltmp165              #   Call between .Ltmp165 and .Ltmp166
	.uleb128 .Ltmp167-.Lfunc_begin23        #     jumps to .Ltmp167
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp168-.Lfunc_begin23        # >> Call Site 7 <<
	.uleb128 .Ltmp169-.Ltmp168              #   Call between .Ltmp168 and .Ltmp169
	.uleb128 .Ltmp170-.Lfunc_begin23        #     jumps to .Ltmp170
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp169-.Lfunc_begin23        # >> Call Site 8 <<
	.uleb128 .Lfunc_end60-.Ltmp169          #   Call between .Ltmp169 and .Lfunc_end60
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end23:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase6:
	.p2align	2, 0x0
                                        # -- End function
	.type	it_save,@object                 # @it_save
	.bss
	.globl	it_save
	.p2align	3, 0x0
it_save:
	.space	8
	.size	it_save, 8

	.type	it_end,@object                  # @it_end
	.globl	it_end
	.p2align	3, 0x0
it_end:
	.space	8
	.size	it_end, 8

	.type	_Z15it_save_by_nameB5cxx11,@object # @_Z15it_save_by_nameB5cxx11
	.globl	_Z15it_save_by_nameB5cxx11
	.p2align	3, 0x0
_Z15it_save_by_nameB5cxx11:
	.space	8
	.size	_Z15it_save_by_nameB5cxx11, 8

	.type	_Z14it_end_by_nameB5cxx11,@object # @_Z14it_end_by_nameB5cxx11
	.globl	_Z14it_end_by_nameB5cxx11
	.p2align	3, 0x0
_Z14it_end_by_nameB5cxx11:
	.space	8
	.size	_Z14it_end_by_nameB5cxx11, 8

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"MallocPlus ptr  %p: name %10s ptr %p dims %lu nelem ("
	.size	.L.str, 54

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"%lu"
	.size	.L.str.4, 4

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	", %lu"
	.size	.L.str.5, 6

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"%12s"
	.size	.L.str.6, 5

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	") elsize %lu flags %d capacity %lu\n"
	.size	.L.str.7, 36

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"MallocPlus name %14s: name %10s ptr %p dims %lu nelem ("
	.size	.L.str.8, 56

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"basic_string: construction from null is not valid"
	.size	.L.str.10, 50

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"vector::_M_default_append"
	.size	.L.str.11, 26

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"Error -- memory not found"
	.size	.Lstr, 26

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
