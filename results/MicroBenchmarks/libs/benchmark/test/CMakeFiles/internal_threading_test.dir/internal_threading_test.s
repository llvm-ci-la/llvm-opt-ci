	.file	"internal_threading_test.cc"
                                        # Start of file scope inline assembly
	.globl	_ZSt21ios_base_library_initv

                                        # End of file scope inline assembly
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _Z14MyBusySpinwaitv
.LCPI0_0:
	.dword	0x41cdcd6500000000              # double 1.0E+9
.LCPI0_1:
	.dword	0x408f400000000000              # double 1000
.LCPI0_2:
	.dword	0x4049000000000000              # double 50
	.text
	.hidden	_Z14MyBusySpinwaitv
	.globl	_Z14MyBusySpinwaitv
	.p2align	5
	.type	_Z14MyBusySpinwaitv,@function
_Z14MyBusySpinwaitv:                    # @_Z14MyBusySpinwaitv
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 8                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(_ZNSt6chrono3_V212steady_clock3nowEv)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.LCPI0_0)
	fld.d	$fs0, $a1, %pc_lo12(.LCPI0_0)
	pcalau12i	$a1, %pc_hi20(.LCPI0_1)
	fld.d	$fs1, $a1, %pc_lo12(.LCPI0_1)
	pcalau12i	$a1, %pc_hi20(.LCPI0_2)
	fld.d	$fs2, $a1, %pc_lo12(.LCPI0_2)
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	fdiv.d	$fs3, $fa0, $fs0
	.p2align	4, , 16
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	pcaddu18i	$ra, %call36(_ZNSt6chrono3_V212steady_clock3nowEv)
	jirl	$ra, $ra, 0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	fdiv.d	$fa0, $fa0, $fs0
	fsub.d	$fa0, $fa0, $fs3
	fmul.d	$fa0, $fa0, $fs1
	fcmp.clt.d	$fcc0, $fa0, $fs2
	bcnez	$fcc0, .LBB0_1
# %bb.2:
	fld.d	$fs3, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs2, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end0:
	.size	_Z14MyBusySpinwaitv, .Lfunc_end0-_Z14MyBusySpinwaitv
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _Z13BM_MainThreadRN9benchmark5StateE
.LCPI1_0:
	.dword	0x41cdcd6500000000              # double 1.0E+9
.LCPI1_1:
	.dword	0x408f400000000000              # double 1000
.LCPI1_2:
	.dword	0x4049000000000000              # double 50
.LCPI1_3:
	.dword	0x3fa999999999999a              # double 0.050000000000000003
	.text
	.hidden	_Z13BM_MainThreadRN9benchmark5StateE
	.globl	_Z13BM_MainThreadRN9benchmark5StateE
	.p2align	5
	.type	_Z13BM_MainThreadRN9benchmark5StateE,@function
_Z13BM_MainThreadRN9benchmark5StateE:   # @_Z13BM_MainThreadRN9benchmark5StateE
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
# %bb.0:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	addi.d	$sp, $sp, -112
	.cfi_def_cfa_offset 112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 72                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 56                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 40                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 56, -40
	.cfi_offset 57, -48
	.cfi_offset 58, -56
	.cfi_offset 59, -64
	.cfi_offset 60, -72
	move	$fp, $a0
	ld.w	$s1, $a0, 28
	ld.d	$s0, $a0, 16
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	bnez	$s1, .LBB1_7
# %bb.1:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	beqz	$s0, .LBB1_7
# %bb.2:
	pcalau12i	$a0, %pc_hi20(.LCPI1_0)
	fld.d	$fs1, $a0, %pc_lo12(.LCPI1_0)
	pcalau12i	$a0, %pc_hi20(.LCPI1_1)
	fld.d	$fs2, $a0, %pc_lo12(.LCPI1_1)
	pcalau12i	$a0, %pc_hi20(.LCPI1_2)
	fld.d	$fs3, $a0, %pc_lo12(.LCPI1_2)
	pcalau12i	$a0, %pc_hi20(.LCPI1_3)
	fld.d	$fs0, $a0, %pc_lo12(.LCPI1_3)
	.p2align	4, , 16
.LBB1_3:                                # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_4 Depth 2
	pcaddu18i	$ra, %call36(_ZNSt6chrono3_V212steady_clock3nowEv)
	jirl	$ra, $ra, 0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	fdiv.d	$fs4, $fa0, $fs1
	.p2align	4, , 16
.LBB1_4:                                #   Parent Loop BB1_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	pcaddu18i	$ra, %call36(_ZNSt6chrono3_V212steady_clock3nowEv)
	jirl	$ra, $ra, 0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	fdiv.d	$fa0, $fa0, $fs1
	fsub.d	$fa0, $fa0, $fs4
	fmul.d	$fa0, $fa0, $fs2
	fcmp.clt.d	$fcc0, $fa0, $fs3
	bcnez	$fcc0, .LBB1_4
# %bb.5:                                # %_Z14MyBusySpinwaitv.exit
                                        #   in Loop: Header=BB1_3 Depth=1
	move	$a0, $fp
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16SetIterationTimeEd)
	jirl	$ra, $ra, 0
	blez	$s0, .LBB1_11
# %bb.6:                                #   in Loop: Header=BB1_3 Depth=1
	addi.d	$s0, $s0, -1
	bnez	$s0, .LBB1_3
.LBB1_7:                                # %._crit_edge.i.i
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
	addi.d	$s0, $sp, 24
	st.d	$s0, $sp, 8
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ld.w	$a1, $a0, 0
	ld.w	$a0, $a0, 3
	st.w	$a1, $sp, 24
	st.w	$a0, $sp, 27
	ori	$a0, $zero, 7
	st.d	$a0, $sp, 16
	st.b	$zero, $sp, 31
	addi.d	$a0, $fp, 64
.Ltmp0:                                 # EH_LABEL
	addi.d	$a1, $sp, 8
	pcaddu18i	$ra, %call36(_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEEixEOS5_)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.8:
	lu52i.d	$a1, $zero, 1023
	ld.d	$a2, $sp, 8
	st.d	$a1, $a0, 0
	ori	$a1, $zero, 1
	lu32i.d	$a1, 1000
	st.d	$a1, $a0, 8
	beq	$a2, $s0, .LBB1_10
# %bb.9:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a0, $sp, 24
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_10:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	fld.d	$fs4, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 64                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 72                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.LBB1_11:
	pcalau12i	$a0, %pc_hi20(.L.str.40)
	addi.d	$a0, $a0, %pc_lo12(.L.str.40)
	pcalau12i	$a1, %pc_hi20(.L.str.41)
	addi.d	$a1, $a1, %pc_lo12(.L.str.41)
	pcalau12i	$a2, %pc_hi20(.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv)
	addi.d	$a3, $a2, %pc_lo12(.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv)
	ori	$a2, $zero, 1134
	pcaddu18i	$ra, %call36(__assert_fail)
	jirl	$ra, $ra, 0
.LBB1_12:
.Ltmp2:                                 # EH_LABEL
	ld.d	$a2, $sp, 8
	move	$fp, $a0
	beq	$a2, $s0, .LBB1_14
# %bb.13:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17
	ld.d	$a0, $sp, 24
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_14:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	_Z13BM_MainThreadRN9benchmark5StateE, .Lfunc_end1-_Z13BM_MainThreadRN9benchmark5StateE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table1:
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
	.uleb128 .Lfunc_end1-.Ltmp1             #   Call between .Ltmp1 and .Lfunc_end1
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEEixEOS5_,"axG",@progbits,_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEEixEOS5_,comdat
	.hidden	_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEEixEOS5_ # -- Begin function _ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEEixEOS5_
	.weak	_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEEixEOS5_
	.p2align	5
	.type	_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEEixEOS5_,@function
_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEEixEOS5_: # @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEEixEOS5_
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
	ld.d	$s7, $a0, 16
	move	$s8, $a1
	addi.d	$s2, $a0, 8
	beqz	$s7, .LBB2_11
# %bb.1:                                # %.lr.ph.i.i.i
	st.d	$s0, $sp, 16                    # 8-byte Folded Spill
	ld.d	$s6, $s8, 8
	st.d	$s8, $sp, 8                     # 8-byte Folded Spill
	ld.d	$s3, $s8, 0
	lu12i.w	$s5, -524288
	lu12i.w	$a0, 524287
	ori	$s4, $a0, 4095
	ori	$s8, $zero, 16
	ori	$s0, $zero, 24
	move	$s1, $s2
	b	.LBB2_4
	.p2align	4, , 16
.LBB2_2:                                # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i
                                        #   in Loop: Header=BB2_4 Depth=1
	sub.d	$a0, $fp, $s6
	slt	$a1, $s5, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s5, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $s4
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s4, $a1
	or	$a0, $a0, $a1
.LBB2_3:                                # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
                                        #   in Loop: Header=BB2_4 Depth=1
	addi.w	$a0, $a0, 0
	slti	$a0, $a0, 0
	masknez	$a1, $s7, $a0
	masknez	$a2, $s8, $a0
	maskeqz	$a3, $s0, $a0
	or	$a2, $a3, $a2
	ldx.d	$s7, $s7, $a2
	maskeqz	$a0, $s1, $a0
	or	$s1, $a0, $a1
	beqz	$s7, .LBB2_6
.LBB2_4:                                # =>This Inner Loop Header: Depth=1
	ld.d	$fp, $s7, 40
	sltu	$a0, $s6, $fp
	masknez	$a1, $fp, $a0
	maskeqz	$a0, $s6, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB2_2
# %bb.5:                                # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.d	$a0, $s7, 32
	move	$a1, $s3
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB2_3
	b	.LBB2_2
.LBB2_6:                                # %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_.exit
	ld.d	$s0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 8                     # 8-byte Folded Reload
	beq	$s1, $s2, .LBB2_11
# %bb.7:
	ld.d	$fp, $s1, 40
	sltu	$a0, $fp, $s6
	masknez	$a1, $s6, $a0
	maskeqz	$a0, $fp, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB2_9
# %bb.8:                                # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i
	ld.d	$a1, $s1, 32
	move	$a0, $s3
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB2_10
.LBB2_9:                                # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
	sub.d	$a0, $s6, $fp
	slt	$a1, $s5, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s5, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $s4
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s4, $a1
	or	$a0, $a0, $a1
.LBB2_10:                               # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
	addi.w	$a0, $a0, 0
	move	$s2, $s1
	bgez	$a0, .LBB2_12
.LBB2_11:                               # %.critedge
	st.d	$s8, $sp, 32
	pcalau12i	$a0, %pc_hi20(_ZSt19piecewise_construct)
	addi.d	$a2, $a0, %pc_lo12(_ZSt19piecewise_construct)
	addi.d	$a3, $sp, 32
	addi.d	$a4, $sp, 31
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_)
	jirl	$ra, $ra, 0
	move	$s1, $a0
.LBB2_12:
	addi.d	$a0, $s1, 64
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
.Lfunc_end2:
	.size	_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEEixEOS5_, .Lfunc_end2-_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEEixEOS5_
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _Z15BM_WorkerThreadRN9benchmark5StateE
.LCPI3_0:
	.dword	0x3fa999999999999a              # double 0.050000000000000003
	.text
	.hidden	_Z15BM_WorkerThreadRN9benchmark5StateE
	.globl	_Z15BM_WorkerThreadRN9benchmark5StateE
	.p2align	5
	.type	_Z15BM_WorkerThreadRN9benchmark5StateE,@function
_Z15BM_WorkerThreadRN9benchmark5StateE: # @_Z15BM_WorkerThreadRN9benchmark5StateE
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception1
# %bb.0:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
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
	move	$fp, $a0
	ld.w	$s0, $a0, 28
	ld.d	$s1, $a0, 16
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	bnez	$s0, .LBB3_11
# %bb.1:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	beqz	$s1, .LBB3_11
# %bb.2:
	pcalau12i	$a0, %pc_hi20(_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEEE+16)
	addi.d	$s2, $a0, %pc_lo12(_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEEE+16)
	pcalau12i	$a0, %pc_hi20(_Z14MyBusySpinwaitv)
	addi.d	$s3, $a0, %pc_lo12(_Z14MyBusySpinwaitv)
	pcalau12i	$a0, %pc_hi20(_ZNSt6thread24_M_thread_deps_never_runEv)
	addi.d	$s0, $a0, %pc_lo12(_ZNSt6thread24_M_thread_deps_never_runEv)
	pcalau12i	$a0, %pc_hi20(.LCPI3_0)
	fld.d	$fs0, $a0, %pc_lo12(.LCPI3_0)
	.p2align	4, , 16
.LBB3_3:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	st.d	$zero, $sp, 48
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	st.d	$s2, $a0, 0
	st.d	$s3, $a0, 8
	st.d	$a0, $sp, 16
.Ltmp3:                                 # EH_LABEL
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 16
	move	$a2, $s0
	pcaddu18i	$ra, %call36(_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE)
	jirl	$ra, $ra, 0
.Ltmp4:                                 # EH_LABEL
# %bb.4:                                #   in Loop: Header=BB3_3 Depth=1
	ld.d	$a0, $sp, 16
	beqz	$a0, .LBB3_6
# %bb.5:                                # %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i
                                        #   in Loop: Header=BB3_3 Depth=1
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 8
	jirl	$ra, $a1, 0
.LBB3_6:                                # %_ZNSt6threadC2IPFvvEJEvEEOT_DpOT0_.exit
                                        #   in Loop: Header=BB3_3 Depth=1
.Ltmp6:                                 # EH_LABEL
	addi.d	$a0, $sp, 48
	pcaddu18i	$ra, %call36(_ZNSt6thread4joinEv)
	jirl	$ra, $ra, 0
.Ltmp7:                                 # EH_LABEL
# %bb.7:                                #   in Loop: Header=BB3_3 Depth=1
.Ltmp8:                                 # EH_LABEL
	move	$a0, $fp
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16SetIterationTimeEd)
	jirl	$ra, $ra, 0
.Ltmp9:                                 # EH_LABEL
# %bb.8:                                #   in Loop: Header=BB3_3 Depth=1
	ld.d	$a0, $sp, 48
	bnez	$a0, .LBB3_23
# %bb.9:                                # %_ZNSt6threadD2Ev.exit
                                        #   in Loop: Header=BB3_3 Depth=1
	blez	$s1, .LBB3_15
# %bb.10:                               #   in Loop: Header=BB3_3 Depth=1
	addi.d	$s1, $s1, -1
	bnez	$s1, .LBB3_3
.LBB3_11:                               # %._crit_edge.i.i
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
	addi.d	$s0, $sp, 32
	st.d	$s0, $sp, 16
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ld.w	$a1, $a0, 0
	ld.w	$a0, $a0, 3
	st.w	$a1, $sp, 32
	st.w	$a0, $sp, 35
	ori	$a0, $zero, 7
	st.d	$a0, $sp, 24
	st.b	$zero, $sp, 39
	addi.d	$a0, $fp, 64
.Ltmp11:                                # EH_LABEL
	addi.d	$a1, $sp, 16
	pcaddu18i	$ra, %call36(_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEEixEOS5_)
	jirl	$ra, $ra, 0
.Ltmp12:                                # EH_LABEL
# %bb.12:
	lu52i.d	$a1, $zero, 1023
	st.d	$a1, $a0, 0
	ld.d	$a2, $sp, 16
	ori	$a1, $zero, 1
	lu32i.d	$a1, 1000
	st.d	$a1, $a0, 8
	beq	$a2, $s0, .LBB3_14
# %bb.13:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a0, $sp, 32
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_14:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	fld.d	$fs0, $sp, 56                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.LBB3_15:
	pcalau12i	$a0, %pc_hi20(.L.str.40)
	addi.d	$a0, $a0, %pc_lo12(.L.str.40)
	pcalau12i	$a1, %pc_hi20(.L.str.41)
	addi.d	$a1, $a1, %pc_lo12(.L.str.41)
	pcalau12i	$a2, %pc_hi20(.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv)
	addi.d	$a3, $a2, %pc_lo12(.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv)
	ori	$a2, $zero, 1134
	pcaddu18i	$ra, %call36(__assert_fail)
	jirl	$ra, $ra, 0
.LBB3_16:
.Ltmp13:                                # EH_LABEL
	ld.d	$a2, $sp, 16
	move	$fp, $a0
	beq	$a2, $s0, .LBB3_20
# %bb.17:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
	ld.d	$a0, $sp, 32
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB3_20
.LBB3_18:
.Ltmp5:                                 # EH_LABEL
	ld.d	$a1, $sp, 16
	beqz	$a1, .LBB3_22
# %bb.19:                               # %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i6.i
	ld.d	$a2, $a1, 0
	ld.d	$a2, $a2, 8
	move	$fp, $a0
	move	$a0, $a1
	jirl	$ra, $a2, 0
.LBB3_20:                               # %common.resume
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB3_21:
.Ltmp10:                                # EH_LABEL
	ld.d	$a1, $sp, 48
	bnez	$a1, .LBB3_23
.LBB3_22:                               # %common.resume
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB3_23:
	pcaddu18i	$ra, %call36(_ZSt9terminatev)
	jirl	$ra, $ra, 0
.Lfunc_end3:
	.size	_Z15BM_WorkerThreadRN9benchmark5StateE, .Lfunc_end3-_Z15BM_WorkerThreadRN9benchmark5StateE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table3:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Lfunc_begin1-.Lfunc_begin1    # >> Call Site 1 <<
	.uleb128 .Ltmp3-.Lfunc_begin1           #   Call between .Lfunc_begin1 and .Ltmp3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp3-.Lfunc_begin1           # >> Call Site 2 <<
	.uleb128 .Ltmp4-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp4
	.uleb128 .Ltmp5-.Lfunc_begin1           #     jumps to .Ltmp5
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp4-.Lfunc_begin1           # >> Call Site 3 <<
	.uleb128 .Ltmp6-.Ltmp4                  #   Call between .Ltmp4 and .Ltmp6
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp6-.Lfunc_begin1           # >> Call Site 4 <<
	.uleb128 .Ltmp9-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp9
	.uleb128 .Ltmp10-.Lfunc_begin1          #     jumps to .Ltmp10
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp9-.Lfunc_begin1           # >> Call Site 5 <<
	.uleb128 .Ltmp11-.Ltmp9                 #   Call between .Ltmp9 and .Ltmp11
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp11-.Lfunc_begin1          # >> Call Site 6 <<
	.uleb128 .Ltmp12-.Ltmp11                #   Call between .Ltmp11 and .Ltmp12
	.uleb128 .Ltmp13-.Lfunc_begin1          #     jumps to .Ltmp13
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp12-.Lfunc_begin1          # >> Call Site 7 <<
	.uleb128 .Lfunc_end3-.Ltmp12            #   Call between .Ltmp12 and .Lfunc_end3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _Z28BM_MainThreadAndWorkerThreadRN9benchmark5StateE
.LCPI4_0:
	.dword	0x41cdcd6500000000              # double 1.0E+9
.LCPI4_1:
	.dword	0x408f400000000000              # double 1000
.LCPI4_2:
	.dword	0x4049000000000000              # double 50
.LCPI4_3:
	.dword	0x3fa999999999999a              # double 0.050000000000000003
	.text
	.hidden	_Z28BM_MainThreadAndWorkerThreadRN9benchmark5StateE
	.globl	_Z28BM_MainThreadAndWorkerThreadRN9benchmark5StateE
	.p2align	5
	.type	_Z28BM_MainThreadAndWorkerThreadRN9benchmark5StateE,@function
_Z28BM_MainThreadAndWorkerThreadRN9benchmark5StateE: # @_Z28BM_MainThreadAndWorkerThreadRN9benchmark5StateE
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception2
# %bb.0:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
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
	move	$fp, $a0
	ld.w	$s0, $a0, 28
	ld.d	$s1, $a0, 16
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	bnez	$s0, .LBB4_13
# %bb.1:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	beqz	$s1, .LBB4_13
# %bb.2:
	pcalau12i	$a0, %pc_hi20(_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEEE+16)
	addi.d	$s2, $a0, %pc_lo12(_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEEE+16)
	pcalau12i	$a0, %pc_hi20(_Z14MyBusySpinwaitv)
	addi.d	$s3, $a0, %pc_lo12(_Z14MyBusySpinwaitv)
	pcalau12i	$a0, %pc_hi20(_ZNSt6thread24_M_thread_deps_never_runEv)
	addi.d	$s0, $a0, %pc_lo12(_ZNSt6thread24_M_thread_deps_never_runEv)
	pcalau12i	$a0, %pc_hi20(.LCPI4_0)
	fld.d	$fs1, $a0, %pc_lo12(.LCPI4_0)
	pcalau12i	$a0, %pc_hi20(.LCPI4_1)
	fld.d	$fs2, $a0, %pc_lo12(.LCPI4_1)
	pcalau12i	$a0, %pc_hi20(.LCPI4_2)
	fld.d	$fs3, $a0, %pc_lo12(.LCPI4_2)
	pcalau12i	$a0, %pc_hi20(.LCPI4_3)
	fld.d	$fs0, $a0, %pc_lo12(.LCPI4_3)
	.p2align	4, , 16
.LBB4_3:                                # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_7 Depth 2
	st.d	$zero, $sp, 48
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	st.d	$s2, $a0, 0
	st.d	$s3, $a0, 8
	st.d	$a0, $sp, 16
.Ltmp14:                                # EH_LABEL
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 16
	move	$a2, $s0
	pcaddu18i	$ra, %call36(_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE)
	jirl	$ra, $ra, 0
.Ltmp15:                                # EH_LABEL
# %bb.4:                                #   in Loop: Header=BB4_3 Depth=1
	ld.d	$a0, $sp, 16
	beqz	$a0, .LBB4_6
# %bb.5:                                # %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 8
	jirl	$ra, $a1, 0
.LBB4_6:                                # %_ZNSt6threadC2IPFvvEJEvEEOT_DpOT0_.exit
                                        #   in Loop: Header=BB4_3 Depth=1
	pcaddu18i	$ra, %call36(_ZNSt6chrono3_V212steady_clock3nowEv)
	jirl	$ra, $ra, 0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	fdiv.d	$fs4, $fa0, $fs1
	.p2align	4, , 16
.LBB4_7:                                #   Parent Loop BB4_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	pcaddu18i	$ra, %call36(_ZNSt6chrono3_V212steady_clock3nowEv)
	jirl	$ra, $ra, 0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	fdiv.d	$fa0, $fa0, $fs1
	fsub.d	$fa0, $fa0, $fs4
	fmul.d	$fa0, $fa0, $fs2
	fcmp.clt.d	$fcc0, $fa0, $fs3
	bcnez	$fcc0, .LBB4_7
# %bb.8:                                # %_Z14MyBusySpinwaitv.exit
                                        #   in Loop: Header=BB4_3 Depth=1
.Ltmp17:                                # EH_LABEL
	addi.d	$a0, $sp, 48
	pcaddu18i	$ra, %call36(_ZNSt6thread4joinEv)
	jirl	$ra, $ra, 0
.Ltmp18:                                # EH_LABEL
# %bb.9:                                #   in Loop: Header=BB4_3 Depth=1
.Ltmp19:                                # EH_LABEL
	move	$a0, $fp
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16SetIterationTimeEd)
	jirl	$ra, $ra, 0
.Ltmp20:                                # EH_LABEL
# %bb.10:                               #   in Loop: Header=BB4_3 Depth=1
	ld.d	$a0, $sp, 48
	bnez	$a0, .LBB4_25
# %bb.11:                               # %_ZNSt6threadD2Ev.exit
                                        #   in Loop: Header=BB4_3 Depth=1
	blez	$s1, .LBB4_17
# %bb.12:                               #   in Loop: Header=BB4_3 Depth=1
	addi.d	$s1, $s1, -1
	bnez	$s1, .LBB4_3
.LBB4_13:                               # %._crit_edge.i.i
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
	addi.d	$s0, $sp, 32
	st.d	$s0, $sp, 16
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ld.w	$a1, $a0, 0
	ld.w	$a0, $a0, 3
	st.w	$a1, $sp, 32
	st.w	$a0, $sp, 35
	ori	$a0, $zero, 7
	st.d	$a0, $sp, 24
	st.b	$zero, $sp, 39
	addi.d	$a0, $fp, 64
.Ltmp22:                                # EH_LABEL
	addi.d	$a1, $sp, 16
	pcaddu18i	$ra, %call36(_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEEixEOS5_)
	jirl	$ra, $ra, 0
.Ltmp23:                                # EH_LABEL
# %bb.14:
	lu52i.d	$a1, $zero, 1023
	st.d	$a1, $a0, 0
	ld.d	$a2, $sp, 16
	ori	$a1, $zero, 1
	lu32i.d	$a1, 1000
	st.d	$a1, $a0, 8
	beq	$a2, $s0, .LBB4_16
# %bb.15:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a0, $sp, 32
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_16:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
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
.LBB4_17:
	pcalau12i	$a0, %pc_hi20(.L.str.40)
	addi.d	$a0, $a0, %pc_lo12(.L.str.40)
	pcalau12i	$a1, %pc_hi20(.L.str.41)
	addi.d	$a1, $a1, %pc_lo12(.L.str.41)
	pcalau12i	$a2, %pc_hi20(.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv)
	addi.d	$a3, $a2, %pc_lo12(.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv)
	ori	$a2, $zero, 1134
	pcaddu18i	$ra, %call36(__assert_fail)
	jirl	$ra, $ra, 0
.LBB4_18:
.Ltmp24:                                # EH_LABEL
	ld.d	$a2, $sp, 16
	move	$fp, $a0
	beq	$a2, $s0, .LBB4_22
# %bb.19:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
	ld.d	$a0, $sp, 32
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB4_22
.LBB4_20:
.Ltmp16:                                # EH_LABEL
	ld.d	$a1, $sp, 16
	beqz	$a1, .LBB4_24
# %bb.21:                               # %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i6.i
	ld.d	$a2, $a1, 0
	ld.d	$a2, $a2, 8
	move	$fp, $a0
	move	$a0, $a1
	jirl	$ra, $a2, 0
.LBB4_22:                               # %common.resume
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB4_23:
.Ltmp21:                                # EH_LABEL
	ld.d	$a1, $sp, 48
	bnez	$a1, .LBB4_25
.LBB4_24:                               # %common.resume
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB4_25:
	pcaddu18i	$ra, %call36(_ZSt9terminatev)
	jirl	$ra, $ra, 0
.Lfunc_end4:
	.size	_Z28BM_MainThreadAndWorkerThreadRN9benchmark5StateE, .Lfunc_end4-_Z28BM_MainThreadAndWorkerThreadRN9benchmark5StateE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table4:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Lfunc_begin2-.Lfunc_begin2    # >> Call Site 1 <<
	.uleb128 .Ltmp14-.Lfunc_begin2          #   Call between .Lfunc_begin2 and .Ltmp14
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp14-.Lfunc_begin2          # >> Call Site 2 <<
	.uleb128 .Ltmp15-.Ltmp14                #   Call between .Ltmp14 and .Ltmp15
	.uleb128 .Ltmp16-.Lfunc_begin2          #     jumps to .Ltmp16
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp15-.Lfunc_begin2          # >> Call Site 3 <<
	.uleb128 .Ltmp17-.Ltmp15                #   Call between .Ltmp15 and .Ltmp17
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp17-.Lfunc_begin2          # >> Call Site 4 <<
	.uleb128 .Ltmp20-.Ltmp17                #   Call between .Ltmp17 and .Ltmp20
	.uleb128 .Ltmp21-.Lfunc_begin2          #     jumps to .Ltmp21
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp20-.Lfunc_begin2          # >> Call Site 5 <<
	.uleb128 .Ltmp22-.Ltmp20                #   Call between .Ltmp20 and .Ltmp22
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp22-.Lfunc_begin2          # >> Call Site 6 <<
	.uleb128 .Ltmp23-.Ltmp22                #   Call between .Ltmp22 and .Ltmp23
	.uleb128 .Ltmp24-.Lfunc_begin2          #     jumps to .Ltmp24
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp23-.Lfunc_begin2          # >> Call Site 7 <<
	.uleb128 .Lfunc_end4-.Ltmp23            #   Call between .Ltmp23 and .Lfunc_end4
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.hidden	main                            # -- Begin function main
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	pcaddu18i	$ra, %call36(_Z14RunOutputTestsiPPc)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end5:
	.size	main, .Lfunc_end5-main
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_,"axG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_,comdat
	.hidden	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_ # -- Begin function _ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_
	.weak	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_
	.p2align	5
	.type	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_,@function
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_: # @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	move	$fp, $a3
	move	$s2, $a1
	move	$s0, $a0
	st.d	$a0, $sp, 8
	ori	$a0, $zero, 80
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	ld.d	$s5, $fp, 0
	move	$fp, $a0
	addi.d	$s3, $a0, 48
	st.d	$s3, $a0, 32
	ld.d	$a0, $s5, 0
	addi.d	$s4, $s5, 16
	addi.d	$s1, $fp, 32
	beq	$a0, $s4, .LBB6_2
# %bb.1:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
	st.d	$a0, $s1, 0
	ld.d	$a0, $s5, 16
	st.d	$a0, $s3, 0
	ld.d	$s6, $s5, 8
	b	.LBB6_3
.LBB6_2:
	ld.d	$s6, $s5, 8
	addi.d	$a2, $s6, 1
	move	$a0, $s3
	move	$a1, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_3:
	st.d	$s6, $fp, 40
	st.d	$s4, $s5, 0
	st.d	$zero, $s5, 8
	st.b	$zero, $s5, 16
	st.d	$zero, $fp, 64
	ori	$a0, $zero, 0
	lu32i.d	$a0, 1000
	st.d	$a0, $fp, 72
	st.d	$fp, $sp, 16
.Ltmp25:                                # EH_LABEL
	move	$a0, $s0
	move	$a1, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_)
	jirl	$ra, $ra, 0
.Ltmp26:                                # EH_LABEL
# %bb.4:
	move	$a2, $a0
	move	$s2, $a1
	beqz	$a1, .LBB6_12
# %bb.5:
	addi.d	$a3, $s0, 8
	ori	$a0, $zero, 1
	bnez	$a2, .LBB6_11
# %bb.6:
	beq	$a3, $s2, .LBB6_11
# %bb.7:
	ld.d	$s3, $fp, 40
	ld.d	$s4, $s2, 40
	sltu	$a0, $s4, $s3
	masknez	$a1, $s3, $a0
	maskeqz	$a0, $s4, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB6_9
# %bb.8:                                # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
	ld.d	$a1, $s2, 32
	ld.d	$a0, $s1, 0
	move	$s1, $a3
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	move	$a3, $s1
	bnez	$a0, .LBB6_10
.LBB6_9:                                # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i
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
.LBB6_10:                               # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i
	addi.w	$a0, $a0, 0
	slti	$a0, $a0, 0
.LBB6_11:                               # %.thread
	move	$a1, $fp
	move	$a2, $s2
	pcaddu18i	$ra, %call36(_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 40
	addi.d	$a0, $a0, 1
	st.d	$a0, $s0, 40
	move	$a0, $fp
	b	.LBB6_15
.LBB6_12:
	move	$s0, $a2
	ld.d	$a0, $s1, 0
	beq	$a0, $s3, .LBB6_14
# %bb.13:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i8
	ld.d	$a1, $s3, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_14:                               # %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit.i
	ori	$a1, $zero, 80
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s0
.LBB6_15:                               # %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeD2Ev.exit
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
.LBB6_16:
.Ltmp27:                                # EH_LABEL
	move	$fp, $a0
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end6:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_, .Lfunc_end6-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_
	.cfi_endproc
	.section	.gcc_except_table._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_,"aG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_,comdat
	.p2align	2, 0x0
GCC_except_table6:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Lfunc_begin3-.Lfunc_begin3    # >> Call Site 1 <<
	.uleb128 .Ltmp25-.Lfunc_begin3          #   Call between .Lfunc_begin3 and .Ltmp25
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp25-.Lfunc_begin3          # >> Call Site 2 <<
	.uleb128 .Ltmp26-.Ltmp25                #   Call between .Ltmp25 and .Ltmp26
	.uleb128 .Ltmp27-.Lfunc_begin3          #     jumps to .Ltmp27
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp26-.Lfunc_begin3          # >> Call Site 3 <<
	.uleb128 .Lfunc_end6-.Ltmp26            #   Call between .Ltmp26 and .Lfunc_end6
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_,"axG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_,comdat
	.hidden	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_ # -- Begin function _ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_
	.weak	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_
	.p2align	5
	.type	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_,@function
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_: # @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_
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
	beq	$a0, $a1, .LBB7_4
# %bb.1:
	move	$fp, $a1
	ld.d	$s5, $s0, 8
	ld.d	$s6, $a1, 40
	sltu	$a0, $s6, $s5
	masknez	$a1, $s5, $a0
	maskeqz	$a0, $s6, $a0
	or	$s2, $a0, $a1
	beqz	$s2, .LBB7_10
# %bb.2:                                # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i21
	ld.d	$s3, $fp, 32
	ld.d	$s4, $s0, 0
	move	$a0, $s4
	move	$a1, $s3
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB7_11
# %bb.3:                                # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit28.thread
	bgez	$a0, .LBB7_12
	b	.LBB7_15
.LBB7_4:
	ld.d	$a0, $s1, 40
	beqz	$a0, .LBB7_27
# %bb.5:
	ld.d	$a1, $s1, 32
	ld.d	$fp, $a1, 40
	ld.d	$s2, $s0, 8
	sltu	$a0, $s2, $fp
	masknez	$a2, $fp, $a0
	maskeqz	$a0, $s2, $a0
	or	$a2, $a0, $a2
	beqz	$a2, .LBB7_7
# %bb.6:                                # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i
	ld.d	$a3, $s0, 0
	ld.d	$a0, $a1, 32
	move	$s3, $a1
	move	$a1, $a3
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	move	$a1, $s3
	bnez	$a0, .LBB7_8
.LBB7_7:                                # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
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
.LBB7_8:                                # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
	addi.w	$a0, $a0, 0
	bgez	$a0, .LBB7_27
# %bb.9:
	move	$fp, $zero
	b	.LBB7_28
.LBB7_10:                               # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit28
	sub.d	$a0, $s5, $s6
	bgez	$a0, .LBB7_21
	b	.LBB7_15
.LBB7_11:                               # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit28.thread78
	sub.d	$a0, $s5, $s6
	bltz	$a0, .LBB7_15
.LBB7_12:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i39
	move	$a0, $s3
	move	$a1, $s4
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB7_21
# %bb.13:                               # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit46
	addi.w	$a0, $a0, 0
	bltz	$a0, .LBB7_22
.LBB7_14:
	move	$a1, $zero
	b	.LBB7_28
.LBB7_15:
	ld.d	$a0, $s1, 24
	beq	$a0, $fp, .LBB7_29
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
	beqz	$a2, .LBB7_18
# %bb.17:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i30
	ld.d	$a1, $s0, 0
	ld.d	$a0, $s2, 32
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB7_19
.LBB7_18:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i33
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
.LBB7_19:                               # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit37
	addi.w	$a0, $a0, 0
	bgez	$a0, .LBB7_27
# %bb.20:
	ld.d	$a0, $s2, 24
	sltui	$a0, $a0, 1
	masknez	$fp, $fp, $a0
	maskeqz	$a0, $s2, $a0
	or	$a1, $a0, $fp
	b	.LBB7_28
.LBB7_21:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i42
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
	bgez	$a0, .LBB7_14
.LBB7_22:
	ld.d	$a0, $s1, 32
	beq	$a0, $fp, .LBB7_30
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
	beqz	$a2, .LBB7_25
# %bb.24:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i48
	ld.d	$a1, $s2, 32
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB7_26
.LBB7_25:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i51
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
.LBB7_26:                               # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit55
	addi.w	$a0, $a0, 0
	bltz	$a0, .LBB7_31
.LBB7_27:
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_)
	jirl	$ra, $ra, 0
	move	$fp, $a0
.LBB7_28:
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
.LBB7_29:
	move	$a1, $fp
	b	.LBB7_28
.LBB7_30:
	move	$a1, $fp
	move	$fp, $zero
	b	.LBB7_28
.LBB7_31:
	ld.d	$a0, $fp, 24
	sltui	$a0, $a0, 1
	maskeqz	$a1, $fp, $a0
	masknez	$fp, $s2, $a0
	or	$a1, $a1, $fp
	b	.LBB7_28
.Lfunc_end7:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_, .Lfunc_end7-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeD2Ev,"axG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeD2Ev,comdat
	.hidden	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeD2Ev # -- Begin function _ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeD2Ev
	.weak	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeD2Ev
	.p2align	5
	.type	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeD2Ev,@function
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeD2Ev: # @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeD2Ev
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	ld.d	$fp, $a0, 8
	beqz	$fp, .LBB8_4
# %bb.1:
	ld.d	$a0, $fp, 32
	addi.d	$a1, $fp, 48
	beq	$a0, $a1, .LBB8_3
# %bb.2:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB8_3:                                # %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit
	ori	$a1, $zero, 80
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB8_4:
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end8:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeD2Ev, .Lfunc_end8-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeD2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_,"axG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_,comdat
	.hidden	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_ # -- Begin function _ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_
	.weak	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_
	.p2align	5
	.type	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_,@function
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_: # @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_
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
	beqz	$a0, .LBB9_13
# %bb.1:                                # %.lr.ph
	ld.d	$s5, $s0, 8
	ld.d	$s2, $s0, 0
	ori	$s6, $s3, 4095
	ori	$s7, $zero, 24
	ori	$s8, $zero, 16
	b	.LBB9_4
	.p2align	4, , 16
.LBB9_2:                                # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
                                        #   in Loop: Header=BB9_4 Depth=1
	sub.d	$a0, $s5, $s3
	slt	$a1, $s4, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s4, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $s6
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s6, $a1
	or	$a0, $a0, $a1
.LBB9_3:                                # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
                                        #   in Loop: Header=BB9_4 Depth=1
	addi.w	$a1, $a0, 0
	slti	$a0, $a1, 0
	masknez	$a2, $s7, $a0
	maskeqz	$a0, $s8, $a0
	or	$a0, $a0, $a2
	ldx.d	$a0, $fp, $a0
	beqz	$a0, .LBB9_6
.LBB9_4:                                # =>This Inner Loop Header: Depth=1
	move	$fp, $a0
	ld.d	$s3, $a0, 40
	sltu	$a0, $s3, $s5
	masknez	$a1, $s5, $a0
	maskeqz	$a0, $s3, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB9_2
# %bb.5:                                # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i
                                        #   in Loop: Header=BB9_4 Depth=1
	ld.d	$a1, $fp, 32
	move	$a0, $s2
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB9_3
	b	.LBB9_2
.LBB9_6:                                # %._crit_edge
	move	$s2, $fp
	lu12i.w	$s3, 524287
	bgez	$a1, .LBB9_9
# %bb.7:                                # %._crit_edge.thread
	ld.d	$a0, $s1, 24
	beq	$fp, $a0, .LBB9_14
.LBB9_8:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	move	$s2, $a0
.LBB9_9:
	ld.d	$s1, $s2, 40
	ld.d	$s5, $s0, 8
	sltu	$a0, $s5, $s1
	masknez	$a1, $s1, $a0
	maskeqz	$a0, $s5, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB9_11
# %bb.10:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6
	ld.d	$a1, $s0, 0
	ld.d	$a0, $s2, 32
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB9_12
.LBB9_11:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9
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
.LBB9_12:                               # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13
	addi.w	$a0, $a0, 0
	slti	$a1, $a0, 0
	srai.d	$a0, $a0, 63
	and	$fp, $a0, $fp
	masknez	$a0, $s2, $a1
	b	.LBB9_15
.LBB9_13:
	addi.d	$fp, $s1, 8
	ld.d	$a0, $s1, 24
	bne	$fp, $a0, .LBB9_8
.LBB9_14:
	move	$a0, $zero
.LBB9_15:
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
.Lfunc_end9:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_, .Lfunc_end9-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6thread24_M_thread_deps_never_runEv,"axG",@progbits,_ZNSt6thread24_M_thread_deps_never_runEv,comdat
	.hidden	_ZNSt6thread24_M_thread_deps_never_runEv # -- Begin function _ZNSt6thread24_M_thread_deps_never_runEv
	.weak	_ZNSt6thread24_M_thread_deps_never_runEv
	.p2align	5
	.type	_ZNSt6thread24_M_thread_deps_never_runEv,@function
_ZNSt6thread24_M_thread_deps_never_runEv: # @_ZNSt6thread24_M_thread_deps_never_runEv
# %bb.0:
	ret
.Lfunc_end10:
	.size	_ZNSt6thread24_M_thread_deps_never_runEv, .Lfunc_end10-_ZNSt6thread24_M_thread_deps_never_runEv
                                        # -- End function
	.section	.text._ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEED0Ev,"axG",@progbits,_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEED0Ev,comdat
	.hidden	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEED0Ev # -- Begin function _ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEED0Ev
	.weak	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEED0Ev
	.p2align	5
	.type	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEED0Ev,@function
_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEED0Ev: # @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEED0Ev
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_ZNSt6thread6_StateD2Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 16
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.Lfunc_end11:
	.size	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEED0Ev, .Lfunc_end11-_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEED0Ev
                                        # -- End function
	.section	.text._ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEE6_M_runEv,"axG",@progbits,_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEE6_M_runEv,comdat
	.hidden	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEE6_M_runEv # -- Begin function _ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEE6_M_runEv
	.weak	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEE6_M_runEv
	.p2align	5
	.type	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEE6_M_runEv,@function
_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEE6_M_runEv: # @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEE6_M_runEv
	.cfi_startproc
# %bb.0:
	ld.d	$a0, $a0, 8
	jr	$a0
.Lfunc_end12:
	.size	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEE6_M_runEv, .Lfunc_end12-_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEE6_M_runEv
	.cfi_endproc
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	5                               # -- Begin function _GLOBAL__sub_I_internal_threading_test.cc
	.type	_GLOBAL__sub_I_internal_threading_test.cc,@function
_GLOBAL__sub_I_internal_threading_test.cc: # @_GLOBAL__sub_I_internal_threading_test.cc
.Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception4
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
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal17InitializeStreamsEv)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	addi.d	$s1, $sp, 24
	st.d	$s1, $sp, 8
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	ld.d	$s3, $a0, 0
	ld.d	$s4, $a0, 5
	st.d	$s3, $sp, 24
	st.d	$s4, $sp, 29
	ori	$a0, $zero, 13
	st.d	$a0, $sp, 16
	st.b	$zero, $sp, 37
	ori	$s6, $zero, 1
.Ltmp28:                                # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp29:                                # EH_LABEL
# %bb.1:
	pcalau12i	$a0, %got_pc_hi20(_ZTVN9benchmark8internal17FunctionBenchmarkE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTVN9benchmark8internal17FunctionBenchmarkE)
	addi.d	$s2, $a0, 16
	st.d	$s2, $fp, 0
	pcalau12i	$a0, %pc_hi20(_Z13BM_MainThreadRN9benchmark5StateE)
	addi.d	$s5, $a0, %pc_lo12(_Z13BM_MainThreadRN9benchmark5StateE)
	st.d	$s5, $fp, 224
.Ltmp30:                                # EH_LABEL
	move	$s6, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp31:                                # EH_LABEL
# %bb.2:
.Ltmp32:                                # EH_LABEL
	ori	$a1, $zero, 1
	move	$s6, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark10IterationsEl)
	jirl	$ra, $ra, 0
.Ltmp33:                                # EH_LABEL
# %bb.3:
.Ltmp34:                                # EH_LABEL
	ori	$a1, $zero, 1
	move	$s6, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark7ThreadsEi)
	jirl	$ra, $ra, 0
.Ltmp35:                                # EH_LABEL
# %bb.4:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB13_6
# %bb.5:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB13_6:                               # %__cxx_global_var_init.1.exit
	pcalau12i	$a0, %pc_hi20(_ZL27benchmark_uniq_2_benchmark_)
	st.d	$s0, $a0, %pc_lo12(_ZL27benchmark_uniq_2_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s1, $sp, 8
	st.d	$s3, $sp, 24
	st.d	$s4, $sp, 29
	ori	$a0, $zero, 13
	st.d	$a0, $sp, 16
	st.b	$zero, $sp, 37
	ori	$s6, $zero, 1
.Ltmp37:                                # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp38:                                # EH_LABEL
# %bb.7:
	st.d	$s2, $fp, 0
	st.d	$s5, $fp, 224
.Ltmp39:                                # EH_LABEL
	move	$s6, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp40:                                # EH_LABEL
# %bb.8:
.Ltmp41:                                # EH_LABEL
	ori	$a1, $zero, 1
	move	$s6, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark10IterationsEl)
	jirl	$ra, $ra, 0
.Ltmp42:                                # EH_LABEL
# %bb.9:
.Ltmp43:                                # EH_LABEL
	ori	$a1, $zero, 1
	move	$s6, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark7ThreadsEi)
	jirl	$ra, $ra, 0
.Ltmp44:                                # EH_LABEL
# %bb.10:
.Ltmp45:                                # EH_LABEL
	move	$s6, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark11UseRealTimeEv)
	jirl	$ra, $ra, 0
.Ltmp46:                                # EH_LABEL
# %bb.11:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB13_13
# %bb.12:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB13_13:                              # %__cxx_global_var_init.3.exit
	pcalau12i	$a0, %pc_hi20(_ZL27benchmark_uniq_3_benchmark_)
	st.d	$s0, $a0, %pc_lo12(_ZL27benchmark_uniq_3_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s1, $sp, 8
	st.d	$s3, $sp, 24
	st.d	$s4, $sp, 29
	ori	$a0, $zero, 13
	st.d	$a0, $sp, 16
	st.b	$zero, $sp, 37
	ori	$s6, $zero, 1
.Ltmp48:                                # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp49:                                # EH_LABEL
# %bb.14:
	st.d	$s2, $fp, 0
	st.d	$s5, $fp, 224
.Ltmp50:                                # EH_LABEL
	move	$s6, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp51:                                # EH_LABEL
# %bb.15:
.Ltmp52:                                # EH_LABEL
	ori	$a1, $zero, 1
	move	$s6, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark10IterationsEl)
	jirl	$ra, $ra, 0
.Ltmp53:                                # EH_LABEL
# %bb.16:
.Ltmp54:                                # EH_LABEL
	ori	$a1, $zero, 1
	move	$s6, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark7ThreadsEi)
	jirl	$ra, $ra, 0
.Ltmp55:                                # EH_LABEL
# %bb.17:
.Ltmp56:                                # EH_LABEL
	move	$s6, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark13UseManualTimeEv)
	jirl	$ra, $ra, 0
.Ltmp57:                                # EH_LABEL
# %bb.18:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB13_20
# %bb.19:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB13_20:                              # %__cxx_global_var_init.4.exit
	pcalau12i	$a0, %pc_hi20(_ZL27benchmark_uniq_4_benchmark_)
	st.d	$s0, $a0, %pc_lo12(_ZL27benchmark_uniq_4_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s1, $sp, 8
	st.d	$s3, $sp, 24
	st.d	$s4, $sp, 29
	ori	$a0, $zero, 13
	st.d	$a0, $sp, 16
	st.b	$zero, $sp, 37
	ori	$s6, $zero, 1
.Ltmp59:                                # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp60:                                # EH_LABEL
# %bb.21:
	st.d	$s2, $fp, 0
	st.d	$s5, $fp, 224
.Ltmp61:                                # EH_LABEL
	move	$s6, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp62:                                # EH_LABEL
# %bb.22:
.Ltmp63:                                # EH_LABEL
	ori	$a1, $zero, 1
	move	$s6, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark10IterationsEl)
	jirl	$ra, $ra, 0
.Ltmp64:                                # EH_LABEL
# %bb.23:
.Ltmp65:                                # EH_LABEL
	ori	$a1, $zero, 1
	move	$s6, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark7ThreadsEi)
	jirl	$ra, $ra, 0
.Ltmp66:                                # EH_LABEL
# %bb.24:
.Ltmp67:                                # EH_LABEL
	move	$s6, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark21MeasureProcessCPUTimeEv)
	jirl	$ra, $ra, 0
.Ltmp68:                                # EH_LABEL
# %bb.25:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB13_27
# %bb.26:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i14
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB13_27:                              # %__cxx_global_var_init.5.exit
	pcalau12i	$a0, %pc_hi20(_ZL27benchmark_uniq_5_benchmark_)
	st.d	$s0, $a0, %pc_lo12(_ZL27benchmark_uniq_5_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s1, $sp, 8
	st.d	$s3, $sp, 24
	st.d	$s4, $sp, 29
	ori	$a0, $zero, 13
	st.d	$a0, $sp, 16
	st.b	$zero, $sp, 37
	ori	$s6, $zero, 1
.Ltmp70:                                # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp71:                                # EH_LABEL
# %bb.28:
	st.d	$s2, $fp, 0
	st.d	$s5, $fp, 224
.Ltmp72:                                # EH_LABEL
	move	$s6, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp73:                                # EH_LABEL
# %bb.29:
.Ltmp74:                                # EH_LABEL
	ori	$a1, $zero, 1
	move	$s6, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark10IterationsEl)
	jirl	$ra, $ra, 0
.Ltmp75:                                # EH_LABEL
# %bb.30:
.Ltmp76:                                # EH_LABEL
	ori	$a1, $zero, 1
	move	$s6, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark7ThreadsEi)
	jirl	$ra, $ra, 0
.Ltmp77:                                # EH_LABEL
# %bb.31:
.Ltmp78:                                # EH_LABEL
	move	$s6, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark21MeasureProcessCPUTimeEv)
	jirl	$ra, $ra, 0
.Ltmp79:                                # EH_LABEL
# %bb.32:
.Ltmp80:                                # EH_LABEL
	move	$s6, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark11UseRealTimeEv)
	jirl	$ra, $ra, 0
.Ltmp81:                                # EH_LABEL
# %bb.33:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB13_35
# %bb.34:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i19
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB13_35:                              # %__cxx_global_var_init.6.exit
	pcalau12i	$a0, %pc_hi20(_ZL27benchmark_uniq_6_benchmark_)
	st.d	$s0, $a0, %pc_lo12(_ZL27benchmark_uniq_6_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s1, $sp, 8
	st.d	$s3, $sp, 24
	st.d	$s4, $sp, 29
	ori	$a0, $zero, 13
	st.d	$a0, $sp, 16
	st.b	$zero, $sp, 37
	ori	$s6, $zero, 1
.Ltmp83:                                # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp84:                                # EH_LABEL
# %bb.36:
	st.d	$s2, $fp, 0
	st.d	$s5, $fp, 224
.Ltmp85:                                # EH_LABEL
	move	$s6, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp86:                                # EH_LABEL
# %bb.37:
.Ltmp87:                                # EH_LABEL
	ori	$a1, $zero, 1
	move	$s6, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark10IterationsEl)
	jirl	$ra, $ra, 0
.Ltmp88:                                # EH_LABEL
# %bb.38:
.Ltmp89:                                # EH_LABEL
	ori	$a1, $zero, 1
	move	$s6, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark7ThreadsEi)
	jirl	$ra, $ra, 0
.Ltmp90:                                # EH_LABEL
# %bb.39:
.Ltmp91:                                # EH_LABEL
	move	$s6, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark21MeasureProcessCPUTimeEv)
	jirl	$ra, $ra, 0
.Ltmp92:                                # EH_LABEL
# %bb.40:
.Ltmp93:                                # EH_LABEL
	move	$s6, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark13UseManualTimeEv)
	jirl	$ra, $ra, 0
.Ltmp94:                                # EH_LABEL
# %bb.41:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB13_43
# %bb.42:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i24
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB13_43:                              # %__cxx_global_var_init.7.exit
	pcalau12i	$a0, %pc_hi20(_ZL27benchmark_uniq_7_benchmark_)
	st.d	$s0, $a0, %pc_lo12(_ZL27benchmark_uniq_7_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s1, $sp, 8
	st.d	$s3, $sp, 24
	st.d	$s4, $sp, 29
	ori	$a0, $zero, 13
	st.d	$a0, $sp, 16
	st.b	$zero, $sp, 37
	ori	$s6, $zero, 1
.Ltmp96:                                # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp97:                                # EH_LABEL
# %bb.44:
	st.d	$s2, $fp, 0
	st.d	$s5, $fp, 224
.Ltmp98:                                # EH_LABEL
	move	$s6, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp99:                                # EH_LABEL
# %bb.45:
.Ltmp100:                               # EH_LABEL
	ori	$a1, $zero, 1
	move	$s6, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark10IterationsEl)
	jirl	$ra, $ra, 0
.Ltmp101:                               # EH_LABEL
# %bb.46:
.Ltmp102:                               # EH_LABEL
	ori	$a1, $zero, 2
	move	$s6, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark7ThreadsEi)
	jirl	$ra, $ra, 0
.Ltmp103:                               # EH_LABEL
# %bb.47:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB13_49
# %bb.48:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i29
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB13_49:                              # %__cxx_global_var_init.8.exit
	pcalau12i	$a0, %pc_hi20(_ZL27benchmark_uniq_8_benchmark_)
	st.d	$s0, $a0, %pc_lo12(_ZL27benchmark_uniq_8_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s1, $sp, 8
	st.d	$s3, $sp, 24
	st.d	$s4, $sp, 29
	ori	$a0, $zero, 13
	st.d	$a0, $sp, 16
	st.b	$zero, $sp, 37
	ori	$s6, $zero, 1
.Ltmp105:                               # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp106:                               # EH_LABEL
# %bb.50:
	st.d	$s2, $fp, 0
	st.d	$s5, $fp, 224
.Ltmp107:                               # EH_LABEL
	move	$s6, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp108:                               # EH_LABEL
# %bb.51:
.Ltmp109:                               # EH_LABEL
	ori	$a1, $zero, 1
	move	$s6, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark10IterationsEl)
	jirl	$ra, $ra, 0
.Ltmp110:                               # EH_LABEL
# %bb.52:
.Ltmp111:                               # EH_LABEL
	ori	$a1, $zero, 2
	move	$s6, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark7ThreadsEi)
	jirl	$ra, $ra, 0
.Ltmp112:                               # EH_LABEL
# %bb.53:
.Ltmp113:                               # EH_LABEL
	move	$s6, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark11UseRealTimeEv)
	jirl	$ra, $ra, 0
.Ltmp114:                               # EH_LABEL
# %bb.54:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB13_56
# %bb.55:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB13_56:                              # %__cxx_global_var_init.9.exit
	pcalau12i	$a0, %pc_hi20(_ZL27benchmark_uniq_9_benchmark_)
	st.d	$s0, $a0, %pc_lo12(_ZL27benchmark_uniq_9_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s1, $sp, 8
	st.d	$s3, $sp, 24
	st.d	$s4, $sp, 29
	ori	$a0, $zero, 13
	st.d	$a0, $sp, 16
	st.b	$zero, $sp, 37
	ori	$s6, $zero, 1
.Ltmp116:                               # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp117:                               # EH_LABEL
# %bb.57:
	st.d	$s2, $fp, 0
	st.d	$s5, $fp, 224
.Ltmp118:                               # EH_LABEL
	move	$s6, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp119:                               # EH_LABEL
# %bb.58:
.Ltmp120:                               # EH_LABEL
	ori	$a1, $zero, 1
	move	$s6, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark10IterationsEl)
	jirl	$ra, $ra, 0
.Ltmp121:                               # EH_LABEL
# %bb.59:
.Ltmp122:                               # EH_LABEL
	ori	$a1, $zero, 2
	move	$s6, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark7ThreadsEi)
	jirl	$ra, $ra, 0
.Ltmp123:                               # EH_LABEL
# %bb.60:
.Ltmp124:                               # EH_LABEL
	move	$s6, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark13UseManualTimeEv)
	jirl	$ra, $ra, 0
.Ltmp125:                               # EH_LABEL
# %bb.61:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB13_63
# %bb.62:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i39
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB13_63:                              # %__cxx_global_var_init.10.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_10_benchmark_)
	st.d	$s0, $a0, %pc_lo12(_ZL28benchmark_uniq_10_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s1, $sp, 8
	st.d	$s3, $sp, 24
	st.d	$s4, $sp, 29
	ori	$a0, $zero, 13
	st.d	$a0, $sp, 16
	st.b	$zero, $sp, 37
	ori	$s6, $zero, 1
.Ltmp127:                               # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp128:                               # EH_LABEL
# %bb.64:
	st.d	$s2, $fp, 0
	st.d	$s5, $fp, 224
.Ltmp129:                               # EH_LABEL
	move	$s6, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp130:                               # EH_LABEL
# %bb.65:
.Ltmp131:                               # EH_LABEL
	ori	$a1, $zero, 1
	move	$s6, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark10IterationsEl)
	jirl	$ra, $ra, 0
.Ltmp132:                               # EH_LABEL
# %bb.66:
.Ltmp133:                               # EH_LABEL
	ori	$a1, $zero, 2
	move	$s6, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark7ThreadsEi)
	jirl	$ra, $ra, 0
.Ltmp134:                               # EH_LABEL
# %bb.67:
.Ltmp135:                               # EH_LABEL
	move	$s6, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark21MeasureProcessCPUTimeEv)
	jirl	$ra, $ra, 0
.Ltmp136:                               # EH_LABEL
# %bb.68:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB13_70
# %bb.69:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i44
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB13_70:                              # %__cxx_global_var_init.11.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_11_benchmark_)
	st.d	$s0, $a0, %pc_lo12(_ZL28benchmark_uniq_11_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s1, $sp, 8
	st.d	$s3, $sp, 24
	st.d	$s4, $sp, 29
	ori	$a0, $zero, 13
	st.d	$a0, $sp, 16
	st.b	$zero, $sp, 37
	ori	$s6, $zero, 1
.Ltmp138:                               # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp139:                               # EH_LABEL
# %bb.71:
	st.d	$s2, $fp, 0
	st.d	$s5, $fp, 224
.Ltmp140:                               # EH_LABEL
	move	$s6, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp141:                               # EH_LABEL
# %bb.72:
.Ltmp142:                               # EH_LABEL
	ori	$a1, $zero, 1
	move	$s6, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark10IterationsEl)
	jirl	$ra, $ra, 0
.Ltmp143:                               # EH_LABEL
# %bb.73:
.Ltmp144:                               # EH_LABEL
	ori	$a1, $zero, 2
	move	$s6, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark7ThreadsEi)
	jirl	$ra, $ra, 0
.Ltmp145:                               # EH_LABEL
# %bb.74:
.Ltmp146:                               # EH_LABEL
	move	$s6, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark21MeasureProcessCPUTimeEv)
	jirl	$ra, $ra, 0
.Ltmp147:                               # EH_LABEL
# %bb.75:
.Ltmp148:                               # EH_LABEL
	move	$s6, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark11UseRealTimeEv)
	jirl	$ra, $ra, 0
.Ltmp149:                               # EH_LABEL
# %bb.76:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB13_78
# %bb.77:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i49
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB13_78:                              # %__cxx_global_var_init.12.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_12_benchmark_)
	st.d	$s0, $a0, %pc_lo12(_ZL28benchmark_uniq_12_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s1, $sp, 8
	st.d	$s3, $sp, 24
	st.d	$s4, $sp, 29
	ori	$a0, $zero, 13
	st.d	$a0, $sp, 16
	st.b	$zero, $sp, 37
	ori	$s3, $zero, 1
.Ltmp151:                               # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp152:                               # EH_LABEL
# %bb.79:
	st.d	$s2, $fp, 0
	st.d	$s5, $fp, 224
.Ltmp153:                               # EH_LABEL
	move	$s3, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp154:                               # EH_LABEL
# %bb.80:
.Ltmp155:                               # EH_LABEL
	ori	$a1, $zero, 1
	move	$s3, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark10IterationsEl)
	jirl	$ra, $ra, 0
.Ltmp156:                               # EH_LABEL
# %bb.81:
.Ltmp157:                               # EH_LABEL
	ori	$a1, $zero, 2
	move	$s3, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark7ThreadsEi)
	jirl	$ra, $ra, 0
.Ltmp158:                               # EH_LABEL
# %bb.82:
.Ltmp159:                               # EH_LABEL
	move	$s3, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark21MeasureProcessCPUTimeEv)
	jirl	$ra, $ra, 0
.Ltmp160:                               # EH_LABEL
# %bb.83:
.Ltmp161:                               # EH_LABEL
	move	$s3, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark13UseManualTimeEv)
	jirl	$ra, $ra, 0
.Ltmp162:                               # EH_LABEL
# %bb.84:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB13_86
# %bb.85:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i54
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB13_86:                              # %__cxx_global_var_init.13.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_13_benchmark_)
	st.d	$s0, $a0, %pc_lo12(_ZL28benchmark_uniq_13_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s1, $sp, 8
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	ld.d	$s3, $a0, 0
	ld.d	$s4, $a0, 7
	st.d	$s3, $sp, 24
	st.d	$s4, $sp, 31
	ori	$a0, $zero, 15
	st.d	$a0, $sp, 16
	st.b	$zero, $sp, 39
	ori	$s6, $zero, 1
.Ltmp164:                               # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp165:                               # EH_LABEL
# %bb.87:
	st.d	$s2, $fp, 0
	pcalau12i	$a0, %pc_hi20(_Z15BM_WorkerThreadRN9benchmark5StateE)
	addi.d	$s5, $a0, %pc_lo12(_Z15BM_WorkerThreadRN9benchmark5StateE)
	st.d	$s5, $fp, 224
.Ltmp166:                               # EH_LABEL
	move	$s6, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp167:                               # EH_LABEL
# %bb.88:
.Ltmp168:                               # EH_LABEL
	ori	$a1, $zero, 1
	move	$s6, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark10IterationsEl)
	jirl	$ra, $ra, 0
.Ltmp169:                               # EH_LABEL
# %bb.89:
.Ltmp170:                               # EH_LABEL
	ori	$a1, $zero, 1
	move	$s6, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark7ThreadsEi)
	jirl	$ra, $ra, 0
.Ltmp171:                               # EH_LABEL
# %bb.90:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB13_92
# %bb.91:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i59
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB13_92:                              # %__cxx_global_var_init.14.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_14_benchmark_)
	st.d	$s0, $a0, %pc_lo12(_ZL28benchmark_uniq_14_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s1, $sp, 8
	st.d	$s3, $sp, 24
	st.d	$s4, $sp, 31
	ori	$a0, $zero, 15
	st.d	$a0, $sp, 16
	st.b	$zero, $sp, 39
	ori	$s6, $zero, 1
.Ltmp173:                               # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp174:                               # EH_LABEL
# %bb.93:
	st.d	$s2, $fp, 0
	st.d	$s5, $fp, 224
.Ltmp175:                               # EH_LABEL
	move	$s6, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp176:                               # EH_LABEL
# %bb.94:
.Ltmp177:                               # EH_LABEL
	ori	$a1, $zero, 1
	move	$s6, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark10IterationsEl)
	jirl	$ra, $ra, 0
.Ltmp178:                               # EH_LABEL
# %bb.95:
.Ltmp179:                               # EH_LABEL
	ori	$a1, $zero, 1
	move	$s6, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark7ThreadsEi)
	jirl	$ra, $ra, 0
.Ltmp180:                               # EH_LABEL
# %bb.96:
.Ltmp181:                               # EH_LABEL
	move	$s6, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark11UseRealTimeEv)
	jirl	$ra, $ra, 0
.Ltmp182:                               # EH_LABEL
# %bb.97:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB13_99
# %bb.98:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i64
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB13_99:                              # %__cxx_global_var_init.16.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_15_benchmark_)
	st.d	$s0, $a0, %pc_lo12(_ZL28benchmark_uniq_15_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s1, $sp, 8
	st.d	$s3, $sp, 24
	st.d	$s4, $sp, 31
	ori	$a0, $zero, 15
	st.d	$a0, $sp, 16
	st.b	$zero, $sp, 39
	ori	$s6, $zero, 1
.Ltmp184:                               # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp185:                               # EH_LABEL
# %bb.100:
	st.d	$s2, $fp, 0
	st.d	$s5, $fp, 224
.Ltmp186:                               # EH_LABEL
	move	$s6, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp187:                               # EH_LABEL
# %bb.101:
.Ltmp188:                               # EH_LABEL
	ori	$a1, $zero, 1
	move	$s6, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark10IterationsEl)
	jirl	$ra, $ra, 0
.Ltmp189:                               # EH_LABEL
# %bb.102:
.Ltmp190:                               # EH_LABEL
	ori	$a1, $zero, 1
	move	$s6, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark7ThreadsEi)
	jirl	$ra, $ra, 0
.Ltmp191:                               # EH_LABEL
# %bb.103:
.Ltmp192:                               # EH_LABEL
	move	$s6, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark13UseManualTimeEv)
	jirl	$ra, $ra, 0
.Ltmp193:                               # EH_LABEL
# %bb.104:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB13_106
# %bb.105:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i69
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB13_106:                             # %__cxx_global_var_init.17.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_16_benchmark_)
	st.d	$s0, $a0, %pc_lo12(_ZL28benchmark_uniq_16_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s1, $sp, 8
	st.d	$s3, $sp, 24
	st.d	$s4, $sp, 31
	ori	$a0, $zero, 15
	st.d	$a0, $sp, 16
	st.b	$zero, $sp, 39
	ori	$s6, $zero, 1
.Ltmp195:                               # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp196:                               # EH_LABEL
# %bb.107:
	st.d	$s2, $fp, 0
	st.d	$s5, $fp, 224
.Ltmp197:                               # EH_LABEL
	move	$s6, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp198:                               # EH_LABEL
# %bb.108:
.Ltmp199:                               # EH_LABEL
	ori	$a1, $zero, 1
	move	$s6, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark10IterationsEl)
	jirl	$ra, $ra, 0
.Ltmp200:                               # EH_LABEL
# %bb.109:
.Ltmp201:                               # EH_LABEL
	ori	$a1, $zero, 1
	move	$s6, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark7ThreadsEi)
	jirl	$ra, $ra, 0
.Ltmp202:                               # EH_LABEL
# %bb.110:
.Ltmp203:                               # EH_LABEL
	move	$s6, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark21MeasureProcessCPUTimeEv)
	jirl	$ra, $ra, 0
.Ltmp204:                               # EH_LABEL
# %bb.111:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB13_113
# %bb.112:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i74
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB13_113:                             # %__cxx_global_var_init.18.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_17_benchmark_)
	st.d	$s0, $a0, %pc_lo12(_ZL28benchmark_uniq_17_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s1, $sp, 8
	st.d	$s3, $sp, 24
	st.d	$s4, $sp, 31
	ori	$a0, $zero, 15
	st.d	$a0, $sp, 16
	st.b	$zero, $sp, 39
	ori	$s6, $zero, 1
.Ltmp206:                               # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp207:                               # EH_LABEL
# %bb.114:
	st.d	$s2, $fp, 0
	st.d	$s5, $fp, 224
.Ltmp208:                               # EH_LABEL
	move	$s6, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp209:                               # EH_LABEL
# %bb.115:
.Ltmp210:                               # EH_LABEL
	ori	$a1, $zero, 1
	move	$s6, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark10IterationsEl)
	jirl	$ra, $ra, 0
.Ltmp211:                               # EH_LABEL
# %bb.116:
.Ltmp212:                               # EH_LABEL
	ori	$a1, $zero, 1
	move	$s6, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark7ThreadsEi)
	jirl	$ra, $ra, 0
.Ltmp213:                               # EH_LABEL
# %bb.117:
.Ltmp214:                               # EH_LABEL
	move	$s6, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark21MeasureProcessCPUTimeEv)
	jirl	$ra, $ra, 0
.Ltmp215:                               # EH_LABEL
# %bb.118:
.Ltmp216:                               # EH_LABEL
	move	$s6, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark11UseRealTimeEv)
	jirl	$ra, $ra, 0
.Ltmp217:                               # EH_LABEL
# %bb.119:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB13_121
# %bb.120:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i79
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB13_121:                             # %__cxx_global_var_init.19.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_18_benchmark_)
	st.d	$s0, $a0, %pc_lo12(_ZL28benchmark_uniq_18_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s1, $sp, 8
	st.d	$s3, $sp, 24
	st.d	$s4, $sp, 31
	ori	$a0, $zero, 15
	st.d	$a0, $sp, 16
	st.b	$zero, $sp, 39
	ori	$s6, $zero, 1
.Ltmp219:                               # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp220:                               # EH_LABEL
# %bb.122:
	st.d	$s2, $fp, 0
	st.d	$s5, $fp, 224
.Ltmp221:                               # EH_LABEL
	move	$s6, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp222:                               # EH_LABEL
# %bb.123:
.Ltmp223:                               # EH_LABEL
	ori	$a1, $zero, 1
	move	$s6, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark10IterationsEl)
	jirl	$ra, $ra, 0
.Ltmp224:                               # EH_LABEL
# %bb.124:
.Ltmp225:                               # EH_LABEL
	ori	$a1, $zero, 1
	move	$s6, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark7ThreadsEi)
	jirl	$ra, $ra, 0
.Ltmp226:                               # EH_LABEL
# %bb.125:
.Ltmp227:                               # EH_LABEL
	move	$s6, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark21MeasureProcessCPUTimeEv)
	jirl	$ra, $ra, 0
.Ltmp228:                               # EH_LABEL
# %bb.126:
.Ltmp229:                               # EH_LABEL
	move	$s6, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark13UseManualTimeEv)
	jirl	$ra, $ra, 0
.Ltmp230:                               # EH_LABEL
# %bb.127:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB13_129
# %bb.128:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i84
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB13_129:                             # %__cxx_global_var_init.20.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_19_benchmark_)
	st.d	$s0, $a0, %pc_lo12(_ZL28benchmark_uniq_19_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s1, $sp, 8
	st.d	$s3, $sp, 24
	st.d	$s4, $sp, 31
	ori	$a0, $zero, 15
	st.d	$a0, $sp, 16
	st.b	$zero, $sp, 39
	ori	$s6, $zero, 1
.Ltmp232:                               # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp233:                               # EH_LABEL
# %bb.130:
	st.d	$s2, $fp, 0
	st.d	$s5, $fp, 224
.Ltmp234:                               # EH_LABEL
	move	$s6, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp235:                               # EH_LABEL
# %bb.131:
.Ltmp236:                               # EH_LABEL
	ori	$a1, $zero, 1
	move	$s6, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark10IterationsEl)
	jirl	$ra, $ra, 0
.Ltmp237:                               # EH_LABEL
# %bb.132:
.Ltmp238:                               # EH_LABEL
	ori	$a1, $zero, 2
	move	$s6, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark7ThreadsEi)
	jirl	$ra, $ra, 0
.Ltmp239:                               # EH_LABEL
# %bb.133:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB13_135
# %bb.134:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i89
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB13_135:                             # %__cxx_global_var_init.21.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_20_benchmark_)
	st.d	$s0, $a0, %pc_lo12(_ZL28benchmark_uniq_20_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s1, $sp, 8
	st.d	$s3, $sp, 24
	st.d	$s4, $sp, 31
	ori	$a0, $zero, 15
	st.d	$a0, $sp, 16
	st.b	$zero, $sp, 39
	ori	$s6, $zero, 1
.Ltmp241:                               # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp242:                               # EH_LABEL
# %bb.136:
	st.d	$s2, $fp, 0
	st.d	$s5, $fp, 224
.Ltmp243:                               # EH_LABEL
	move	$s6, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp244:                               # EH_LABEL
# %bb.137:
.Ltmp245:                               # EH_LABEL
	ori	$a1, $zero, 1
	move	$s6, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark10IterationsEl)
	jirl	$ra, $ra, 0
.Ltmp246:                               # EH_LABEL
# %bb.138:
.Ltmp247:                               # EH_LABEL
	ori	$a1, $zero, 2
	move	$s6, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark7ThreadsEi)
	jirl	$ra, $ra, 0
.Ltmp248:                               # EH_LABEL
# %bb.139:
.Ltmp249:                               # EH_LABEL
	move	$s6, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark11UseRealTimeEv)
	jirl	$ra, $ra, 0
.Ltmp250:                               # EH_LABEL
# %bb.140:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB13_142
# %bb.141:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i94
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB13_142:                             # %__cxx_global_var_init.22.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_21_benchmark_)
	st.d	$s0, $a0, %pc_lo12(_ZL28benchmark_uniq_21_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s1, $sp, 8
	st.d	$s3, $sp, 24
	st.d	$s4, $sp, 31
	ori	$a0, $zero, 15
	st.d	$a0, $sp, 16
	st.b	$zero, $sp, 39
	ori	$s6, $zero, 1
.Ltmp252:                               # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp253:                               # EH_LABEL
# %bb.143:
	st.d	$s2, $fp, 0
	st.d	$s5, $fp, 224
.Ltmp254:                               # EH_LABEL
	move	$s6, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp255:                               # EH_LABEL
# %bb.144:
.Ltmp256:                               # EH_LABEL
	ori	$a1, $zero, 1
	move	$s6, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark10IterationsEl)
	jirl	$ra, $ra, 0
.Ltmp257:                               # EH_LABEL
# %bb.145:
.Ltmp258:                               # EH_LABEL
	ori	$a1, $zero, 2
	move	$s6, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark7ThreadsEi)
	jirl	$ra, $ra, 0
.Ltmp259:                               # EH_LABEL
# %bb.146:
.Ltmp260:                               # EH_LABEL
	move	$s6, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark13UseManualTimeEv)
	jirl	$ra, $ra, 0
.Ltmp261:                               # EH_LABEL
# %bb.147:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB13_149
# %bb.148:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i99
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB13_149:                             # %__cxx_global_var_init.23.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_22_benchmark_)
	st.d	$s0, $a0, %pc_lo12(_ZL28benchmark_uniq_22_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s1, $sp, 8
	st.d	$s3, $sp, 24
	st.d	$s4, $sp, 31
	ori	$a0, $zero, 15
	st.d	$a0, $sp, 16
	st.b	$zero, $sp, 39
	ori	$s6, $zero, 1
.Ltmp263:                               # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp264:                               # EH_LABEL
# %bb.150:
	st.d	$s2, $fp, 0
	st.d	$s5, $fp, 224
.Ltmp265:                               # EH_LABEL
	move	$s6, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp266:                               # EH_LABEL
# %bb.151:
.Ltmp267:                               # EH_LABEL
	ori	$a1, $zero, 1
	move	$s6, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark10IterationsEl)
	jirl	$ra, $ra, 0
.Ltmp268:                               # EH_LABEL
# %bb.152:
.Ltmp269:                               # EH_LABEL
	ori	$a1, $zero, 2
	move	$s6, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark7ThreadsEi)
	jirl	$ra, $ra, 0
.Ltmp270:                               # EH_LABEL
# %bb.153:
.Ltmp271:                               # EH_LABEL
	move	$s6, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark21MeasureProcessCPUTimeEv)
	jirl	$ra, $ra, 0
.Ltmp272:                               # EH_LABEL
# %bb.154:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB13_156
# %bb.155:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i104
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB13_156:                             # %__cxx_global_var_init.24.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_23_benchmark_)
	st.d	$s0, $a0, %pc_lo12(_ZL28benchmark_uniq_23_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s1, $sp, 8
	st.d	$s3, $sp, 24
	st.d	$s4, $sp, 31
	ori	$a0, $zero, 15
	st.d	$a0, $sp, 16
	st.b	$zero, $sp, 39
	ori	$s6, $zero, 1
.Ltmp274:                               # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp275:                               # EH_LABEL
# %bb.157:
	st.d	$s2, $fp, 0
	st.d	$s5, $fp, 224
.Ltmp276:                               # EH_LABEL
	move	$s6, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp277:                               # EH_LABEL
# %bb.158:
.Ltmp278:                               # EH_LABEL
	ori	$a1, $zero, 1
	move	$s6, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark10IterationsEl)
	jirl	$ra, $ra, 0
.Ltmp279:                               # EH_LABEL
# %bb.159:
.Ltmp280:                               # EH_LABEL
	ori	$a1, $zero, 2
	move	$s6, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark7ThreadsEi)
	jirl	$ra, $ra, 0
.Ltmp281:                               # EH_LABEL
# %bb.160:
.Ltmp282:                               # EH_LABEL
	move	$s6, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark21MeasureProcessCPUTimeEv)
	jirl	$ra, $ra, 0
.Ltmp283:                               # EH_LABEL
# %bb.161:
.Ltmp284:                               # EH_LABEL
	move	$s6, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark11UseRealTimeEv)
	jirl	$ra, $ra, 0
.Ltmp285:                               # EH_LABEL
# %bb.162:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB13_164
# %bb.163:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i109
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB13_164:                             # %__cxx_global_var_init.25.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_24_benchmark_)
	st.d	$s0, $a0, %pc_lo12(_ZL28benchmark_uniq_24_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s1, $sp, 8
	st.d	$s3, $sp, 24
	st.d	$s4, $sp, 31
	ori	$a0, $zero, 15
	st.d	$a0, $sp, 16
	st.b	$zero, $sp, 39
	ori	$s3, $zero, 1
.Ltmp287:                               # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp288:                               # EH_LABEL
# %bb.165:
	st.d	$s2, $fp, 0
	st.d	$s5, $fp, 224
.Ltmp289:                               # EH_LABEL
	move	$s3, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp290:                               # EH_LABEL
# %bb.166:
.Ltmp291:                               # EH_LABEL
	ori	$a1, $zero, 1
	move	$s3, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark10IterationsEl)
	jirl	$ra, $ra, 0
.Ltmp292:                               # EH_LABEL
# %bb.167:
.Ltmp293:                               # EH_LABEL
	ori	$a1, $zero, 2
	move	$s3, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark7ThreadsEi)
	jirl	$ra, $ra, 0
.Ltmp294:                               # EH_LABEL
# %bb.168:
.Ltmp295:                               # EH_LABEL
	move	$s3, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark21MeasureProcessCPUTimeEv)
	jirl	$ra, $ra, 0
.Ltmp296:                               # EH_LABEL
# %bb.169:
.Ltmp297:                               # EH_LABEL
	move	$s3, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark13UseManualTimeEv)
	jirl	$ra, $ra, 0
.Ltmp298:                               # EH_LABEL
# %bb.170:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB13_172
# %bb.171:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i114
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB13_172:                             # %__cxx_global_var_init.26.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_25_benchmark_)
	st.d	$s0, $a0, %pc_lo12(_ZL28benchmark_uniq_25_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s1, $sp, 8
	ori	$a0, $zero, 28
	st.d	$a0, $sp, 40
.Ltmp300:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp301:                               # EH_LABEL
# %bb.173:                              # %.noexc.i
	ld.d	$a1, $sp, 40
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	pcalau12i	$a2, %pc_hi20(.L.str.28)
	addi.d	$s4, $a2, %pc_lo12(.L.str.28)
	vld	$vr0, $s4, 0
	ld.w	$s3, $s4, 24
	ld.d	$s5, $s4, 16
	vst	$vr0, $a0, 0
	st.w	$s3, $a0, 24
	st.d	$s5, $a0, 16
	ld.d	$a0, $sp, 8
	st.d	$a1, $sp, 16
	stx.b	$zero, $a0, $a1
	ori	$s7, $zero, 1
.Ltmp303:                               # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp304:                               # EH_LABEL
# %bb.174:
	st.d	$s2, $fp, 0
	pcalau12i	$a0, %pc_hi20(_Z28BM_MainThreadAndWorkerThreadRN9benchmark5StateE)
	addi.d	$s6, $a0, %pc_lo12(_Z28BM_MainThreadAndWorkerThreadRN9benchmark5StateE)
	st.d	$s6, $fp, 224
.Ltmp305:                               # EH_LABEL
	move	$s7, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp306:                               # EH_LABEL
# %bb.175:
.Ltmp307:                               # EH_LABEL
	ori	$a1, $zero, 1
	move	$s7, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark10IterationsEl)
	jirl	$ra, $ra, 0
.Ltmp308:                               # EH_LABEL
# %bb.176:
.Ltmp309:                               # EH_LABEL
	ori	$a1, $zero, 1
	move	$s7, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark7ThreadsEi)
	jirl	$ra, $ra, 0
.Ltmp310:                               # EH_LABEL
# %bb.177:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB13_179
# %bb.178:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i119
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB13_179:                             # %__cxx_global_var_init.27.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_26_benchmark_)
	st.d	$s0, $a0, %pc_lo12(_ZL28benchmark_uniq_26_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s1, $sp, 8
	ori	$a0, $zero, 28
	st.d	$a0, $sp, 40
.Ltmp312:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp313:                               # EH_LABEL
# %bb.180:                              # %.noexc.i124
	ld.d	$a1, $sp, 40
	vld	$vr0, $s4, 0
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	vst	$vr0, $a0, 0
	st.w	$s3, $a0, 24
	st.d	$s5, $a0, 16
	ld.d	$a0, $sp, 8
	st.d	$a1, $sp, 16
	stx.b	$zero, $a0, $a1
	ori	$s7, $zero, 1
.Ltmp315:                               # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp316:                               # EH_LABEL
# %bb.181:
	st.d	$s2, $fp, 0
	st.d	$s6, $fp, 224
.Ltmp317:                               # EH_LABEL
	move	$s7, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp318:                               # EH_LABEL
# %bb.182:
.Ltmp319:                               # EH_LABEL
	ori	$a1, $zero, 1
	move	$s7, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark10IterationsEl)
	jirl	$ra, $ra, 0
.Ltmp320:                               # EH_LABEL
# %bb.183:
.Ltmp321:                               # EH_LABEL
	ori	$a1, $zero, 1
	move	$s7, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark7ThreadsEi)
	jirl	$ra, $ra, 0
.Ltmp322:                               # EH_LABEL
# %bb.184:
.Ltmp323:                               # EH_LABEL
	move	$s7, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark11UseRealTimeEv)
	jirl	$ra, $ra, 0
.Ltmp324:                               # EH_LABEL
# %bb.185:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB13_187
# %bb.186:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i128
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB13_187:                             # %__cxx_global_var_init.29.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_27_benchmark_)
	st.d	$s0, $a0, %pc_lo12(_ZL28benchmark_uniq_27_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s1, $sp, 8
	ori	$a0, $zero, 28
	st.d	$a0, $sp, 40
.Ltmp326:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp327:                               # EH_LABEL
# %bb.188:                              # %.noexc.i133
	ld.d	$a1, $sp, 40
	vld	$vr0, $s4, 0
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	vst	$vr0, $a0, 0
	st.w	$s3, $a0, 24
	st.d	$s5, $a0, 16
	ld.d	$a0, $sp, 8
	st.d	$a1, $sp, 16
	stx.b	$zero, $a0, $a1
	ori	$s7, $zero, 1
.Ltmp329:                               # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp330:                               # EH_LABEL
# %bb.189:
	st.d	$s2, $fp, 0
	st.d	$s6, $fp, 224
.Ltmp331:                               # EH_LABEL
	move	$s7, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp332:                               # EH_LABEL
# %bb.190:
.Ltmp333:                               # EH_LABEL
	ori	$a1, $zero, 1
	move	$s7, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark10IterationsEl)
	jirl	$ra, $ra, 0
.Ltmp334:                               # EH_LABEL
# %bb.191:
.Ltmp335:                               # EH_LABEL
	ori	$a1, $zero, 1
	move	$s7, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark7ThreadsEi)
	jirl	$ra, $ra, 0
.Ltmp336:                               # EH_LABEL
# %bb.192:
.Ltmp337:                               # EH_LABEL
	move	$s7, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark13UseManualTimeEv)
	jirl	$ra, $ra, 0
.Ltmp338:                               # EH_LABEL
# %bb.193:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB13_195
# %bb.194:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i137
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB13_195:                             # %__cxx_global_var_init.30.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_28_benchmark_)
	st.d	$s0, $a0, %pc_lo12(_ZL28benchmark_uniq_28_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s1, $sp, 8
	ori	$a0, $zero, 28
	st.d	$a0, $sp, 40
.Ltmp340:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp341:                               # EH_LABEL
# %bb.196:                              # %.noexc.i142
	ld.d	$a1, $sp, 40
	vld	$vr0, $s4, 0
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	vst	$vr0, $a0, 0
	st.w	$s3, $a0, 24
	st.d	$s5, $a0, 16
	ld.d	$a0, $sp, 8
	st.d	$a1, $sp, 16
	stx.b	$zero, $a0, $a1
	ori	$s7, $zero, 1
.Ltmp343:                               # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp344:                               # EH_LABEL
# %bb.197:
	st.d	$s2, $fp, 0
	st.d	$s6, $fp, 224
.Ltmp345:                               # EH_LABEL
	move	$s7, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp346:                               # EH_LABEL
# %bb.198:
.Ltmp347:                               # EH_LABEL
	ori	$a1, $zero, 1
	move	$s7, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark10IterationsEl)
	jirl	$ra, $ra, 0
.Ltmp348:                               # EH_LABEL
# %bb.199:
.Ltmp349:                               # EH_LABEL
	ori	$a1, $zero, 1
	move	$s7, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark7ThreadsEi)
	jirl	$ra, $ra, 0
.Ltmp350:                               # EH_LABEL
# %bb.200:
.Ltmp351:                               # EH_LABEL
	move	$s7, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark21MeasureProcessCPUTimeEv)
	jirl	$ra, $ra, 0
.Ltmp352:                               # EH_LABEL
# %bb.201:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB13_203
# %bb.202:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i146
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB13_203:                             # %__cxx_global_var_init.31.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_29_benchmark_)
	st.d	$s0, $a0, %pc_lo12(_ZL28benchmark_uniq_29_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s1, $sp, 8
	ori	$a0, $zero, 28
	st.d	$a0, $sp, 40
.Ltmp354:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp355:                               # EH_LABEL
# %bb.204:                              # %.noexc.i151
	ld.d	$a1, $sp, 40
	vld	$vr0, $s4, 0
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	vst	$vr0, $a0, 0
	st.w	$s3, $a0, 24
	st.d	$s5, $a0, 16
	ld.d	$a0, $sp, 8
	st.d	$a1, $sp, 16
	stx.b	$zero, $a0, $a1
	ori	$s7, $zero, 1
.Ltmp357:                               # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp358:                               # EH_LABEL
# %bb.205:
	st.d	$s2, $fp, 0
	st.d	$s6, $fp, 224
.Ltmp359:                               # EH_LABEL
	move	$s7, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp360:                               # EH_LABEL
# %bb.206:
.Ltmp361:                               # EH_LABEL
	ori	$a1, $zero, 1
	move	$s7, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark10IterationsEl)
	jirl	$ra, $ra, 0
.Ltmp362:                               # EH_LABEL
# %bb.207:
.Ltmp363:                               # EH_LABEL
	ori	$a1, $zero, 1
	move	$s7, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark7ThreadsEi)
	jirl	$ra, $ra, 0
.Ltmp364:                               # EH_LABEL
# %bb.208:
.Ltmp365:                               # EH_LABEL
	move	$s7, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark21MeasureProcessCPUTimeEv)
	jirl	$ra, $ra, 0
.Ltmp366:                               # EH_LABEL
# %bb.209:
.Ltmp367:                               # EH_LABEL
	move	$s7, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark11UseRealTimeEv)
	jirl	$ra, $ra, 0
.Ltmp368:                               # EH_LABEL
# %bb.210:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB13_212
# %bb.211:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i155
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB13_212:                             # %__cxx_global_var_init.32.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_30_benchmark_)
	st.d	$s0, $a0, %pc_lo12(_ZL28benchmark_uniq_30_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s1, $sp, 8
	ori	$a0, $zero, 28
	st.d	$a0, $sp, 40
.Ltmp370:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp371:                               # EH_LABEL
# %bb.213:                              # %.noexc.i160
	ld.d	$a1, $sp, 40
	vld	$vr0, $s4, 0
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	vst	$vr0, $a0, 0
	st.w	$s3, $a0, 24
	st.d	$s5, $a0, 16
	ld.d	$a0, $sp, 8
	st.d	$a1, $sp, 16
	stx.b	$zero, $a0, $a1
	ori	$s7, $zero, 1
.Ltmp373:                               # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp374:                               # EH_LABEL
# %bb.214:
	st.d	$s2, $fp, 0
	st.d	$s6, $fp, 224
.Ltmp375:                               # EH_LABEL
	move	$s7, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp376:                               # EH_LABEL
# %bb.215:
.Ltmp377:                               # EH_LABEL
	ori	$a1, $zero, 1
	move	$s7, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark10IterationsEl)
	jirl	$ra, $ra, 0
.Ltmp378:                               # EH_LABEL
# %bb.216:
.Ltmp379:                               # EH_LABEL
	ori	$a1, $zero, 1
	move	$s7, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark7ThreadsEi)
	jirl	$ra, $ra, 0
.Ltmp380:                               # EH_LABEL
# %bb.217:
.Ltmp381:                               # EH_LABEL
	move	$s7, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark21MeasureProcessCPUTimeEv)
	jirl	$ra, $ra, 0
.Ltmp382:                               # EH_LABEL
# %bb.218:
.Ltmp383:                               # EH_LABEL
	move	$s7, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark13UseManualTimeEv)
	jirl	$ra, $ra, 0
.Ltmp384:                               # EH_LABEL
# %bb.219:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB13_221
# %bb.220:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i164
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB13_221:                             # %__cxx_global_var_init.33.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_31_benchmark_)
	st.d	$s0, $a0, %pc_lo12(_ZL28benchmark_uniq_31_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s1, $sp, 8
	ori	$a0, $zero, 28
	st.d	$a0, $sp, 40
.Ltmp386:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp387:                               # EH_LABEL
# %bb.222:                              # %.noexc.i169
	ld.d	$a1, $sp, 40
	vld	$vr0, $s4, 0
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	vst	$vr0, $a0, 0
	st.w	$s3, $a0, 24
	st.d	$s5, $a0, 16
	ld.d	$a0, $sp, 8
	st.d	$a1, $sp, 16
	stx.b	$zero, $a0, $a1
	ori	$s7, $zero, 1
.Ltmp389:                               # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp390:                               # EH_LABEL
# %bb.223:
	st.d	$s2, $fp, 0
	st.d	$s6, $fp, 224
.Ltmp391:                               # EH_LABEL
	move	$s7, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp392:                               # EH_LABEL
# %bb.224:
.Ltmp393:                               # EH_LABEL
	ori	$a1, $zero, 1
	move	$s7, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark10IterationsEl)
	jirl	$ra, $ra, 0
.Ltmp394:                               # EH_LABEL
# %bb.225:
.Ltmp395:                               # EH_LABEL
	ori	$a1, $zero, 2
	move	$s7, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark7ThreadsEi)
	jirl	$ra, $ra, 0
.Ltmp396:                               # EH_LABEL
# %bb.226:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB13_228
# %bb.227:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i173
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB13_228:                             # %__cxx_global_var_init.34.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_32_benchmark_)
	st.d	$s0, $a0, %pc_lo12(_ZL28benchmark_uniq_32_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s1, $sp, 8
	ori	$a0, $zero, 28
	st.d	$a0, $sp, 40
.Ltmp398:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp399:                               # EH_LABEL
# %bb.229:                              # %.noexc.i178
	ld.d	$a1, $sp, 40
	vld	$vr0, $s4, 0
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	vst	$vr0, $a0, 0
	st.w	$s3, $a0, 24
	st.d	$s5, $a0, 16
	ld.d	$a0, $sp, 8
	st.d	$a1, $sp, 16
	stx.b	$zero, $a0, $a1
	ori	$s7, $zero, 1
.Ltmp401:                               # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp402:                               # EH_LABEL
# %bb.230:
	st.d	$s2, $fp, 0
	st.d	$s6, $fp, 224
.Ltmp403:                               # EH_LABEL
	move	$s7, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp404:                               # EH_LABEL
# %bb.231:
.Ltmp405:                               # EH_LABEL
	ori	$a1, $zero, 1
	move	$s7, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark10IterationsEl)
	jirl	$ra, $ra, 0
.Ltmp406:                               # EH_LABEL
# %bb.232:
.Ltmp407:                               # EH_LABEL
	ori	$a1, $zero, 2
	move	$s7, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark7ThreadsEi)
	jirl	$ra, $ra, 0
.Ltmp408:                               # EH_LABEL
# %bb.233:
.Ltmp409:                               # EH_LABEL
	move	$s7, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark11UseRealTimeEv)
	jirl	$ra, $ra, 0
.Ltmp410:                               # EH_LABEL
# %bb.234:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB13_236
# %bb.235:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i182
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB13_236:                             # %__cxx_global_var_init.35.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_33_benchmark_)
	st.d	$s0, $a0, %pc_lo12(_ZL28benchmark_uniq_33_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s1, $sp, 8
	ori	$a0, $zero, 28
	st.d	$a0, $sp, 40
.Ltmp412:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp413:                               # EH_LABEL
# %bb.237:                              # %.noexc.i187
	ld.d	$a1, $sp, 40
	vld	$vr0, $s4, 0
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	vst	$vr0, $a0, 0
	st.w	$s3, $a0, 24
	st.d	$s5, $a0, 16
	ld.d	$a0, $sp, 8
	st.d	$a1, $sp, 16
	stx.b	$zero, $a0, $a1
	ori	$s7, $zero, 1
.Ltmp415:                               # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp416:                               # EH_LABEL
# %bb.238:
	st.d	$s2, $fp, 0
	st.d	$s6, $fp, 224
.Ltmp417:                               # EH_LABEL
	move	$s7, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp418:                               # EH_LABEL
# %bb.239:
.Ltmp419:                               # EH_LABEL
	ori	$a1, $zero, 1
	move	$s7, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark10IterationsEl)
	jirl	$ra, $ra, 0
.Ltmp420:                               # EH_LABEL
# %bb.240:
.Ltmp421:                               # EH_LABEL
	ori	$a1, $zero, 2
	move	$s7, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark7ThreadsEi)
	jirl	$ra, $ra, 0
.Ltmp422:                               # EH_LABEL
# %bb.241:
.Ltmp423:                               # EH_LABEL
	move	$s7, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark13UseManualTimeEv)
	jirl	$ra, $ra, 0
.Ltmp424:                               # EH_LABEL
# %bb.242:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB13_244
# %bb.243:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i191
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB13_244:                             # %__cxx_global_var_init.36.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_34_benchmark_)
	st.d	$s0, $a0, %pc_lo12(_ZL28benchmark_uniq_34_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s1, $sp, 8
	ori	$a0, $zero, 28
	st.d	$a0, $sp, 40
.Ltmp426:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp427:                               # EH_LABEL
# %bb.245:                              # %.noexc.i196
	ld.d	$a1, $sp, 40
	vld	$vr0, $s4, 0
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	vst	$vr0, $a0, 0
	st.w	$s3, $a0, 24
	st.d	$s5, $a0, 16
	ld.d	$a0, $sp, 8
	st.d	$a1, $sp, 16
	stx.b	$zero, $a0, $a1
	ori	$s7, $zero, 1
.Ltmp429:                               # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp430:                               # EH_LABEL
# %bb.246:
	st.d	$s2, $fp, 0
	st.d	$s6, $fp, 224
.Ltmp431:                               # EH_LABEL
	move	$s7, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp432:                               # EH_LABEL
# %bb.247:
.Ltmp433:                               # EH_LABEL
	ori	$a1, $zero, 1
	move	$s7, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark10IterationsEl)
	jirl	$ra, $ra, 0
.Ltmp434:                               # EH_LABEL
# %bb.248:
.Ltmp435:                               # EH_LABEL
	ori	$a1, $zero, 2
	move	$s7, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark7ThreadsEi)
	jirl	$ra, $ra, 0
.Ltmp436:                               # EH_LABEL
# %bb.249:
.Ltmp437:                               # EH_LABEL
	move	$s7, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark21MeasureProcessCPUTimeEv)
	jirl	$ra, $ra, 0
.Ltmp438:                               # EH_LABEL
# %bb.250:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB13_252
# %bb.251:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i200
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB13_252:                             # %__cxx_global_var_init.37.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_35_benchmark_)
	st.d	$s0, $a0, %pc_lo12(_ZL28benchmark_uniq_35_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s1, $sp, 8
	ori	$a0, $zero, 28
	st.d	$a0, $sp, 40
.Ltmp440:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp441:                               # EH_LABEL
# %bb.253:                              # %.noexc.i205
	ld.d	$a1, $sp, 40
	vld	$vr0, $s4, 0
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	vst	$vr0, $a0, 0
	st.w	$s3, $a0, 24
	st.d	$s5, $a0, 16
	ld.d	$a0, $sp, 8
	st.d	$a1, $sp, 16
	stx.b	$zero, $a0, $a1
	ori	$s7, $zero, 1
.Ltmp443:                               # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp444:                               # EH_LABEL
# %bb.254:
	st.d	$s2, $fp, 0
	st.d	$s6, $fp, 224
.Ltmp445:                               # EH_LABEL
	move	$s7, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp446:                               # EH_LABEL
# %bb.255:
.Ltmp447:                               # EH_LABEL
	ori	$a1, $zero, 1
	move	$s7, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark10IterationsEl)
	jirl	$ra, $ra, 0
.Ltmp448:                               # EH_LABEL
# %bb.256:
.Ltmp449:                               # EH_LABEL
	ori	$a1, $zero, 2
	move	$s7, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark7ThreadsEi)
	jirl	$ra, $ra, 0
.Ltmp450:                               # EH_LABEL
# %bb.257:
.Ltmp451:                               # EH_LABEL
	move	$s7, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark21MeasureProcessCPUTimeEv)
	jirl	$ra, $ra, 0
.Ltmp452:                               # EH_LABEL
# %bb.258:
.Ltmp453:                               # EH_LABEL
	move	$s7, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark11UseRealTimeEv)
	jirl	$ra, $ra, 0
.Ltmp454:                               # EH_LABEL
# %bb.259:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB13_261
# %bb.260:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i209
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB13_261:                             # %__cxx_global_var_init.38.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_36_benchmark_)
	st.d	$s0, $a0, %pc_lo12(_ZL28benchmark_uniq_36_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s1, $sp, 8
	ori	$a0, $zero, 28
	st.d	$a0, $sp, 40
.Ltmp456:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp457:                               # EH_LABEL
# %bb.262:                              # %.noexc.i214
	ld.d	$a1, $sp, 40
	vld	$vr0, $s4, 0
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	vst	$vr0, $a0, 0
	st.w	$s3, $a0, 24
	st.d	$s5, $a0, 16
	ld.d	$a0, $sp, 8
	st.d	$a1, $sp, 16
	stx.b	$zero, $a0, $a1
	ori	$s3, $zero, 1
.Ltmp459:                               # EH_LABEL
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp460:                               # EH_LABEL
# %bb.263:
	st.d	$s2, $fp, 0
	st.d	$s6, $fp, 224
.Ltmp461:                               # EH_LABEL
	move	$s3, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp462:                               # EH_LABEL
# %bb.264:
.Ltmp463:                               # EH_LABEL
	ori	$a1, $zero, 1
	move	$s3, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark10IterationsEl)
	jirl	$ra, $ra, 0
.Ltmp464:                               # EH_LABEL
# %bb.265:
.Ltmp465:                               # EH_LABEL
	ori	$a1, $zero, 2
	move	$s3, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark7ThreadsEi)
	jirl	$ra, $ra, 0
.Ltmp466:                               # EH_LABEL
# %bb.266:
.Ltmp467:                               # EH_LABEL
	move	$s3, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark21MeasureProcessCPUTimeEv)
	jirl	$ra, $ra, 0
.Ltmp468:                               # EH_LABEL
# %bb.267:
.Ltmp469:                               # EH_LABEL
	move	$s3, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark13UseManualTimeEv)
	jirl	$ra, $ra, 0
.Ltmp470:                               # EH_LABEL
# %bb.268:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s1, .LBB13_270
# %bb.269:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i218
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB13_270:                             # %__cxx_global_var_init.39.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_37_benchmark_)
	st.d	$s0, $a0, %pc_lo12(_ZL28benchmark_uniq_37_benchmark_)
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
.LBB13_271:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i211
.Ltmp458:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB13_323
.LBB13_272:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i202
.Ltmp442:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB13_323
.LBB13_273:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i193
.Ltmp428:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB13_323
.LBB13_274:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i184
.Ltmp414:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB13_323
.LBB13_275:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i175
.Ltmp400:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB13_323
.LBB13_276:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i166
.Ltmp388:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB13_323
.LBB13_277:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i157
.Ltmp372:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB13_323
.LBB13_278:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i148
.Ltmp356:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB13_323
.LBB13_279:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i139
.Ltmp342:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB13_323
.LBB13_280:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i130
.Ltmp328:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB13_323
.LBB13_281:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i121
.Ltmp314:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB13_323
.LBB13_282:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i
.Ltmp302:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB13_323
.LBB13_283:
.Ltmp397:                               # EH_LABEL
	ld.d	$a2, $sp, 8
	move	$s0, $a0
	beq	$a2, $s1, .LBB13_312
	b	.LBB13_310
.LBB13_284:
.Ltmp311:                               # EH_LABEL
	ld.d	$a2, $sp, 8
	move	$s0, $a0
	bne	$a2, $s1, .LBB13_310
	b	.LBB13_312
.LBB13_285:
.Ltmp240:                               # EH_LABEL
	ld.d	$a2, $sp, 8
	move	$s0, $a0
	beq	$a2, $s1, .LBB13_326
	b	.LBB13_322
.LBB13_286:
.Ltmp172:                               # EH_LABEL
	ld.d	$a2, $sp, 8
	move	$s0, $a0
	beq	$a2, $s1, .LBB13_326
	b	.LBB13_322
.LBB13_287:
.Ltmp104:                               # EH_LABEL
	ld.d	$a2, $sp, 8
	move	$s0, $a0
	beq	$a2, $s1, .LBB13_326
	b	.LBB13_322
.LBB13_288:
.Ltmp36:                                # EH_LABEL
	ld.d	$a2, $sp, 8
	move	$s0, $a0
	bne	$a2, $s1, .LBB13_322
	b	.LBB13_326
.LBB13_289:
.Ltmp439:                               # EH_LABEL
	ld.d	$a2, $sp, 8
	move	$s0, $a0
	beq	$a2, $s1, .LBB13_312
	b	.LBB13_310
.LBB13_290:
.Ltmp425:                               # EH_LABEL
	ld.d	$a2, $sp, 8
	move	$s0, $a0
	beq	$a2, $s1, .LBB13_312
	b	.LBB13_310
.LBB13_291:
.Ltmp411:                               # EH_LABEL
	ld.d	$a2, $sp, 8
	move	$s0, $a0
	beq	$a2, $s1, .LBB13_312
	b	.LBB13_310
.LBB13_292:
.Ltmp353:                               # EH_LABEL
	ld.d	$a2, $sp, 8
	move	$s0, $a0
	beq	$a2, $s1, .LBB13_312
	b	.LBB13_310
.LBB13_293:
.Ltmp339:                               # EH_LABEL
	ld.d	$a2, $sp, 8
	move	$s0, $a0
	beq	$a2, $s1, .LBB13_312
	b	.LBB13_310
.LBB13_294:
.Ltmp325:                               # EH_LABEL
	ld.d	$a2, $sp, 8
	move	$s0, $a0
	beq	$a2, $s1, .LBB13_312
	b	.LBB13_310
.LBB13_295:
.Ltmp273:                               # EH_LABEL
	ld.d	$a2, $sp, 8
	move	$s0, $a0
	beq	$a2, $s1, .LBB13_326
	b	.LBB13_322
.LBB13_296:
.Ltmp262:                               # EH_LABEL
	ld.d	$a2, $sp, 8
	move	$s0, $a0
	beq	$a2, $s1, .LBB13_326
	b	.LBB13_322
.LBB13_297:
.Ltmp251:                               # EH_LABEL
	ld.d	$a2, $sp, 8
	move	$s0, $a0
	beq	$a2, $s1, .LBB13_326
	b	.LBB13_322
.LBB13_298:
.Ltmp205:                               # EH_LABEL
	ld.d	$a2, $sp, 8
	move	$s0, $a0
	beq	$a2, $s1, .LBB13_326
	b	.LBB13_322
.LBB13_299:
.Ltmp194:                               # EH_LABEL
	ld.d	$a2, $sp, 8
	move	$s0, $a0
	beq	$a2, $s1, .LBB13_326
	b	.LBB13_322
.LBB13_300:
.Ltmp183:                               # EH_LABEL
	ld.d	$a2, $sp, 8
	move	$s0, $a0
	beq	$a2, $s1, .LBB13_326
	b	.LBB13_322
.LBB13_301:
.Ltmp137:                               # EH_LABEL
	ld.d	$a2, $sp, 8
	move	$s0, $a0
	beq	$a2, $s1, .LBB13_326
	b	.LBB13_322
.LBB13_302:
.Ltmp126:                               # EH_LABEL
	ld.d	$a2, $sp, 8
	move	$s0, $a0
	beq	$a2, $s1, .LBB13_326
	b	.LBB13_322
.LBB13_303:
.Ltmp115:                               # EH_LABEL
	ld.d	$a2, $sp, 8
	move	$s0, $a0
	beq	$a2, $s1, .LBB13_326
	b	.LBB13_322
.LBB13_304:
.Ltmp69:                                # EH_LABEL
	ld.d	$a2, $sp, 8
	move	$s0, $a0
	beq	$a2, $s1, .LBB13_326
	b	.LBB13_322
.LBB13_305:
.Ltmp58:                                # EH_LABEL
	ld.d	$a2, $sp, 8
	move	$s0, $a0
	beq	$a2, $s1, .LBB13_326
	b	.LBB13_322
.LBB13_306:
.Ltmp47:                                # EH_LABEL
	ld.d	$a2, $sp, 8
	move	$s0, $a0
	beq	$a2, $s1, .LBB13_326
	b	.LBB13_322
.LBB13_307:
.Ltmp471:                               # EH_LABEL
	ld.d	$a2, $sp, 8
	move	$s0, $a0
	bne	$a2, $s1, .LBB13_314
	b	.LBB13_319
.LBB13_308:
.Ltmp455:                               # EH_LABEL
	ld.d	$a2, $sp, 8
	move	$s0, $a0
	beq	$a2, $s1, .LBB13_312
	b	.LBB13_310
.LBB13_309:
.Ltmp385:                               # EH_LABEL
	ld.d	$a2, $sp, 8
	move	$s0, $a0
	beq	$a2, $s1, .LBB13_312
.LBB13_310:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i117
	ld.d	$a0, $sp, 24
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	bnez	$s7, .LBB13_323
	b	.LBB13_324
.LBB13_311:
.Ltmp369:                               # EH_LABEL
	ld.d	$a2, $sp, 8
	move	$s0, $a0
	bne	$a2, $s1, .LBB13_310
.LBB13_312:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i7.i118
	bnez	$s7, .LBB13_323
	b	.LBB13_324
.LBB13_313:
.Ltmp299:                               # EH_LABEL
	ld.d	$a2, $sp, 8
	move	$s0, $a0
	beq	$a2, $s1, .LBB13_319
.LBB13_314:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i52
	ld.d	$a0, $sp, 24
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	bnez	$s3, .LBB13_323
	b	.LBB13_324
.LBB13_315:
.Ltmp286:                               # EH_LABEL
	ld.d	$a2, $sp, 8
	move	$s0, $a0
	beq	$a2, $s1, .LBB13_326
	b	.LBB13_322
.LBB13_316:
.Ltmp231:                               # EH_LABEL
	ld.d	$a2, $sp, 8
	move	$s0, $a0
	beq	$a2, $s1, .LBB13_326
	b	.LBB13_322
.LBB13_317:
.Ltmp218:                               # EH_LABEL
	ld.d	$a2, $sp, 8
	move	$s0, $a0
	beq	$a2, $s1, .LBB13_326
	b	.LBB13_322
.LBB13_318:
.Ltmp163:                               # EH_LABEL
	ld.d	$a2, $sp, 8
	move	$s0, $a0
	bne	$a2, $s1, .LBB13_314
.LBB13_319:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i7.i53
	bnez	$s3, .LBB13_323
	b	.LBB13_324
.LBB13_320:
.Ltmp150:                               # EH_LABEL
	ld.d	$a2, $sp, 8
	move	$s0, $a0
	beq	$a2, $s1, .LBB13_326
	b	.LBB13_322
.LBB13_321:
.Ltmp95:                                # EH_LABEL
	ld.d	$a2, $sp, 8
	move	$s0, $a0
	beq	$a2, $s1, .LBB13_326
.LBB13_322:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i
	ld.d	$a0, $sp, 24
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	beqz	$s6, .LBB13_324
.LBB13_323:                             # %common.resume.sink.split
	ori	$a1, $zero, 232
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB13_324:                             # %common.resume
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB13_325:
.Ltmp82:                                # EH_LABEL
	ld.d	$a2, $sp, 8
	move	$s0, $a0
	bne	$a2, $s1, .LBB13_322
.LBB13_326:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i7.i
	bnez	$s6, .LBB13_323
	b	.LBB13_324
.Lfunc_end13:
	.size	_GLOBAL__sub_I_internal_threading_test.cc, .Lfunc_end13-_GLOBAL__sub_I_internal_threading_test.cc
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table13:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Lfunc_begin4-.Lfunc_begin4    # >> Call Site 1 <<
	.uleb128 .Ltmp28-.Lfunc_begin4          #   Call between .Lfunc_begin4 and .Ltmp28
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp28-.Lfunc_begin4          # >> Call Site 2 <<
	.uleb128 .Ltmp35-.Ltmp28                #   Call between .Ltmp28 and .Ltmp35
	.uleb128 .Ltmp36-.Lfunc_begin4          #     jumps to .Ltmp36
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp35-.Lfunc_begin4          # >> Call Site 3 <<
	.uleb128 .Ltmp37-.Ltmp35                #   Call between .Ltmp35 and .Ltmp37
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp37-.Lfunc_begin4          # >> Call Site 4 <<
	.uleb128 .Ltmp46-.Ltmp37                #   Call between .Ltmp37 and .Ltmp46
	.uleb128 .Ltmp47-.Lfunc_begin4          #     jumps to .Ltmp47
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp46-.Lfunc_begin4          # >> Call Site 5 <<
	.uleb128 .Ltmp48-.Ltmp46                #   Call between .Ltmp46 and .Ltmp48
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp48-.Lfunc_begin4          # >> Call Site 6 <<
	.uleb128 .Ltmp57-.Ltmp48                #   Call between .Ltmp48 and .Ltmp57
	.uleb128 .Ltmp58-.Lfunc_begin4          #     jumps to .Ltmp58
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp57-.Lfunc_begin4          # >> Call Site 7 <<
	.uleb128 .Ltmp59-.Ltmp57                #   Call between .Ltmp57 and .Ltmp59
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp59-.Lfunc_begin4          # >> Call Site 8 <<
	.uleb128 .Ltmp68-.Ltmp59                #   Call between .Ltmp59 and .Ltmp68
	.uleb128 .Ltmp69-.Lfunc_begin4          #     jumps to .Ltmp69
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp68-.Lfunc_begin4          # >> Call Site 9 <<
	.uleb128 .Ltmp70-.Ltmp68                #   Call between .Ltmp68 and .Ltmp70
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp70-.Lfunc_begin4          # >> Call Site 10 <<
	.uleb128 .Ltmp81-.Ltmp70                #   Call between .Ltmp70 and .Ltmp81
	.uleb128 .Ltmp82-.Lfunc_begin4          #     jumps to .Ltmp82
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp81-.Lfunc_begin4          # >> Call Site 11 <<
	.uleb128 .Ltmp83-.Ltmp81                #   Call between .Ltmp81 and .Ltmp83
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp83-.Lfunc_begin4          # >> Call Site 12 <<
	.uleb128 .Ltmp94-.Ltmp83                #   Call between .Ltmp83 and .Ltmp94
	.uleb128 .Ltmp95-.Lfunc_begin4          #     jumps to .Ltmp95
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp94-.Lfunc_begin4          # >> Call Site 13 <<
	.uleb128 .Ltmp96-.Ltmp94                #   Call between .Ltmp94 and .Ltmp96
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp96-.Lfunc_begin4          # >> Call Site 14 <<
	.uleb128 .Ltmp103-.Ltmp96               #   Call between .Ltmp96 and .Ltmp103
	.uleb128 .Ltmp104-.Lfunc_begin4         #     jumps to .Ltmp104
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp103-.Lfunc_begin4         # >> Call Site 15 <<
	.uleb128 .Ltmp105-.Ltmp103              #   Call between .Ltmp103 and .Ltmp105
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp105-.Lfunc_begin4         # >> Call Site 16 <<
	.uleb128 .Ltmp114-.Ltmp105              #   Call between .Ltmp105 and .Ltmp114
	.uleb128 .Ltmp115-.Lfunc_begin4         #     jumps to .Ltmp115
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp114-.Lfunc_begin4         # >> Call Site 17 <<
	.uleb128 .Ltmp116-.Ltmp114              #   Call between .Ltmp114 and .Ltmp116
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp116-.Lfunc_begin4         # >> Call Site 18 <<
	.uleb128 .Ltmp125-.Ltmp116              #   Call between .Ltmp116 and .Ltmp125
	.uleb128 .Ltmp126-.Lfunc_begin4         #     jumps to .Ltmp126
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp125-.Lfunc_begin4         # >> Call Site 19 <<
	.uleb128 .Ltmp127-.Ltmp125              #   Call between .Ltmp125 and .Ltmp127
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp127-.Lfunc_begin4         # >> Call Site 20 <<
	.uleb128 .Ltmp136-.Ltmp127              #   Call between .Ltmp127 and .Ltmp136
	.uleb128 .Ltmp137-.Lfunc_begin4         #     jumps to .Ltmp137
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp136-.Lfunc_begin4         # >> Call Site 21 <<
	.uleb128 .Ltmp138-.Ltmp136              #   Call between .Ltmp136 and .Ltmp138
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp138-.Lfunc_begin4         # >> Call Site 22 <<
	.uleb128 .Ltmp149-.Ltmp138              #   Call between .Ltmp138 and .Ltmp149
	.uleb128 .Ltmp150-.Lfunc_begin4         #     jumps to .Ltmp150
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp149-.Lfunc_begin4         # >> Call Site 23 <<
	.uleb128 .Ltmp151-.Ltmp149              #   Call between .Ltmp149 and .Ltmp151
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp151-.Lfunc_begin4         # >> Call Site 24 <<
	.uleb128 .Ltmp162-.Ltmp151              #   Call between .Ltmp151 and .Ltmp162
	.uleb128 .Ltmp163-.Lfunc_begin4         #     jumps to .Ltmp163
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp162-.Lfunc_begin4         # >> Call Site 25 <<
	.uleb128 .Ltmp164-.Ltmp162              #   Call between .Ltmp162 and .Ltmp164
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp164-.Lfunc_begin4         # >> Call Site 26 <<
	.uleb128 .Ltmp171-.Ltmp164              #   Call between .Ltmp164 and .Ltmp171
	.uleb128 .Ltmp172-.Lfunc_begin4         #     jumps to .Ltmp172
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp171-.Lfunc_begin4         # >> Call Site 27 <<
	.uleb128 .Ltmp173-.Ltmp171              #   Call between .Ltmp171 and .Ltmp173
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp173-.Lfunc_begin4         # >> Call Site 28 <<
	.uleb128 .Ltmp182-.Ltmp173              #   Call between .Ltmp173 and .Ltmp182
	.uleb128 .Ltmp183-.Lfunc_begin4         #     jumps to .Ltmp183
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp182-.Lfunc_begin4         # >> Call Site 29 <<
	.uleb128 .Ltmp184-.Ltmp182              #   Call between .Ltmp182 and .Ltmp184
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp184-.Lfunc_begin4         # >> Call Site 30 <<
	.uleb128 .Ltmp193-.Ltmp184              #   Call between .Ltmp184 and .Ltmp193
	.uleb128 .Ltmp194-.Lfunc_begin4         #     jumps to .Ltmp194
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp193-.Lfunc_begin4         # >> Call Site 31 <<
	.uleb128 .Ltmp195-.Ltmp193              #   Call between .Ltmp193 and .Ltmp195
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp195-.Lfunc_begin4         # >> Call Site 32 <<
	.uleb128 .Ltmp204-.Ltmp195              #   Call between .Ltmp195 and .Ltmp204
	.uleb128 .Ltmp205-.Lfunc_begin4         #     jumps to .Ltmp205
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp204-.Lfunc_begin4         # >> Call Site 33 <<
	.uleb128 .Ltmp206-.Ltmp204              #   Call between .Ltmp204 and .Ltmp206
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp206-.Lfunc_begin4         # >> Call Site 34 <<
	.uleb128 .Ltmp217-.Ltmp206              #   Call between .Ltmp206 and .Ltmp217
	.uleb128 .Ltmp218-.Lfunc_begin4         #     jumps to .Ltmp218
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp217-.Lfunc_begin4         # >> Call Site 35 <<
	.uleb128 .Ltmp219-.Ltmp217              #   Call between .Ltmp217 and .Ltmp219
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp219-.Lfunc_begin4         # >> Call Site 36 <<
	.uleb128 .Ltmp230-.Ltmp219              #   Call between .Ltmp219 and .Ltmp230
	.uleb128 .Ltmp231-.Lfunc_begin4         #     jumps to .Ltmp231
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp230-.Lfunc_begin4         # >> Call Site 37 <<
	.uleb128 .Ltmp232-.Ltmp230              #   Call between .Ltmp230 and .Ltmp232
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp232-.Lfunc_begin4         # >> Call Site 38 <<
	.uleb128 .Ltmp239-.Ltmp232              #   Call between .Ltmp232 and .Ltmp239
	.uleb128 .Ltmp240-.Lfunc_begin4         #     jumps to .Ltmp240
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp239-.Lfunc_begin4         # >> Call Site 39 <<
	.uleb128 .Ltmp241-.Ltmp239              #   Call between .Ltmp239 and .Ltmp241
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp241-.Lfunc_begin4         # >> Call Site 40 <<
	.uleb128 .Ltmp250-.Ltmp241              #   Call between .Ltmp241 and .Ltmp250
	.uleb128 .Ltmp251-.Lfunc_begin4         #     jumps to .Ltmp251
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp250-.Lfunc_begin4         # >> Call Site 41 <<
	.uleb128 .Ltmp252-.Ltmp250              #   Call between .Ltmp250 and .Ltmp252
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp252-.Lfunc_begin4         # >> Call Site 42 <<
	.uleb128 .Ltmp261-.Ltmp252              #   Call between .Ltmp252 and .Ltmp261
	.uleb128 .Ltmp262-.Lfunc_begin4         #     jumps to .Ltmp262
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp261-.Lfunc_begin4         # >> Call Site 43 <<
	.uleb128 .Ltmp263-.Ltmp261              #   Call between .Ltmp261 and .Ltmp263
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp263-.Lfunc_begin4         # >> Call Site 44 <<
	.uleb128 .Ltmp272-.Ltmp263              #   Call between .Ltmp263 and .Ltmp272
	.uleb128 .Ltmp273-.Lfunc_begin4         #     jumps to .Ltmp273
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp272-.Lfunc_begin4         # >> Call Site 45 <<
	.uleb128 .Ltmp274-.Ltmp272              #   Call between .Ltmp272 and .Ltmp274
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp274-.Lfunc_begin4         # >> Call Site 46 <<
	.uleb128 .Ltmp285-.Ltmp274              #   Call between .Ltmp274 and .Ltmp285
	.uleb128 .Ltmp286-.Lfunc_begin4         #     jumps to .Ltmp286
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp285-.Lfunc_begin4         # >> Call Site 47 <<
	.uleb128 .Ltmp287-.Ltmp285              #   Call between .Ltmp285 and .Ltmp287
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp287-.Lfunc_begin4         # >> Call Site 48 <<
	.uleb128 .Ltmp298-.Ltmp287              #   Call between .Ltmp287 and .Ltmp298
	.uleb128 .Ltmp299-.Lfunc_begin4         #     jumps to .Ltmp299
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp298-.Lfunc_begin4         # >> Call Site 49 <<
	.uleb128 .Ltmp300-.Ltmp298              #   Call between .Ltmp298 and .Ltmp300
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp300-.Lfunc_begin4         # >> Call Site 50 <<
	.uleb128 .Ltmp301-.Ltmp300              #   Call between .Ltmp300 and .Ltmp301
	.uleb128 .Ltmp302-.Lfunc_begin4         #     jumps to .Ltmp302
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp303-.Lfunc_begin4         # >> Call Site 51 <<
	.uleb128 .Ltmp310-.Ltmp303              #   Call between .Ltmp303 and .Ltmp310
	.uleb128 .Ltmp311-.Lfunc_begin4         #     jumps to .Ltmp311
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp310-.Lfunc_begin4         # >> Call Site 52 <<
	.uleb128 .Ltmp312-.Ltmp310              #   Call between .Ltmp310 and .Ltmp312
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp312-.Lfunc_begin4         # >> Call Site 53 <<
	.uleb128 .Ltmp313-.Ltmp312              #   Call between .Ltmp312 and .Ltmp313
	.uleb128 .Ltmp314-.Lfunc_begin4         #     jumps to .Ltmp314
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp315-.Lfunc_begin4         # >> Call Site 54 <<
	.uleb128 .Ltmp324-.Ltmp315              #   Call between .Ltmp315 and .Ltmp324
	.uleb128 .Ltmp325-.Lfunc_begin4         #     jumps to .Ltmp325
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp324-.Lfunc_begin4         # >> Call Site 55 <<
	.uleb128 .Ltmp326-.Ltmp324              #   Call between .Ltmp324 and .Ltmp326
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp326-.Lfunc_begin4         # >> Call Site 56 <<
	.uleb128 .Ltmp327-.Ltmp326              #   Call between .Ltmp326 and .Ltmp327
	.uleb128 .Ltmp328-.Lfunc_begin4         #     jumps to .Ltmp328
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp329-.Lfunc_begin4         # >> Call Site 57 <<
	.uleb128 .Ltmp338-.Ltmp329              #   Call between .Ltmp329 and .Ltmp338
	.uleb128 .Ltmp339-.Lfunc_begin4         #     jumps to .Ltmp339
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp338-.Lfunc_begin4         # >> Call Site 58 <<
	.uleb128 .Ltmp340-.Ltmp338              #   Call between .Ltmp338 and .Ltmp340
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp340-.Lfunc_begin4         # >> Call Site 59 <<
	.uleb128 .Ltmp341-.Ltmp340              #   Call between .Ltmp340 and .Ltmp341
	.uleb128 .Ltmp342-.Lfunc_begin4         #     jumps to .Ltmp342
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp343-.Lfunc_begin4         # >> Call Site 60 <<
	.uleb128 .Ltmp352-.Ltmp343              #   Call between .Ltmp343 and .Ltmp352
	.uleb128 .Ltmp353-.Lfunc_begin4         #     jumps to .Ltmp353
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp352-.Lfunc_begin4         # >> Call Site 61 <<
	.uleb128 .Ltmp354-.Ltmp352              #   Call between .Ltmp352 and .Ltmp354
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp354-.Lfunc_begin4         # >> Call Site 62 <<
	.uleb128 .Ltmp355-.Ltmp354              #   Call between .Ltmp354 and .Ltmp355
	.uleb128 .Ltmp356-.Lfunc_begin4         #     jumps to .Ltmp356
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp357-.Lfunc_begin4         # >> Call Site 63 <<
	.uleb128 .Ltmp368-.Ltmp357              #   Call between .Ltmp357 and .Ltmp368
	.uleb128 .Ltmp369-.Lfunc_begin4         #     jumps to .Ltmp369
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp368-.Lfunc_begin4         # >> Call Site 64 <<
	.uleb128 .Ltmp370-.Ltmp368              #   Call between .Ltmp368 and .Ltmp370
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp370-.Lfunc_begin4         # >> Call Site 65 <<
	.uleb128 .Ltmp371-.Ltmp370              #   Call between .Ltmp370 and .Ltmp371
	.uleb128 .Ltmp372-.Lfunc_begin4         #     jumps to .Ltmp372
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp373-.Lfunc_begin4         # >> Call Site 66 <<
	.uleb128 .Ltmp384-.Ltmp373              #   Call between .Ltmp373 and .Ltmp384
	.uleb128 .Ltmp385-.Lfunc_begin4         #     jumps to .Ltmp385
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp384-.Lfunc_begin4         # >> Call Site 67 <<
	.uleb128 .Ltmp386-.Ltmp384              #   Call between .Ltmp384 and .Ltmp386
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp386-.Lfunc_begin4         # >> Call Site 68 <<
	.uleb128 .Ltmp387-.Ltmp386              #   Call between .Ltmp386 and .Ltmp387
	.uleb128 .Ltmp388-.Lfunc_begin4         #     jumps to .Ltmp388
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp389-.Lfunc_begin4         # >> Call Site 69 <<
	.uleb128 .Ltmp396-.Ltmp389              #   Call between .Ltmp389 and .Ltmp396
	.uleb128 .Ltmp397-.Lfunc_begin4         #     jumps to .Ltmp397
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp396-.Lfunc_begin4         # >> Call Site 70 <<
	.uleb128 .Ltmp398-.Ltmp396              #   Call between .Ltmp396 and .Ltmp398
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp398-.Lfunc_begin4         # >> Call Site 71 <<
	.uleb128 .Ltmp399-.Ltmp398              #   Call between .Ltmp398 and .Ltmp399
	.uleb128 .Ltmp400-.Lfunc_begin4         #     jumps to .Ltmp400
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp401-.Lfunc_begin4         # >> Call Site 72 <<
	.uleb128 .Ltmp410-.Ltmp401              #   Call between .Ltmp401 and .Ltmp410
	.uleb128 .Ltmp411-.Lfunc_begin4         #     jumps to .Ltmp411
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp410-.Lfunc_begin4         # >> Call Site 73 <<
	.uleb128 .Ltmp412-.Ltmp410              #   Call between .Ltmp410 and .Ltmp412
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp412-.Lfunc_begin4         # >> Call Site 74 <<
	.uleb128 .Ltmp413-.Ltmp412              #   Call between .Ltmp412 and .Ltmp413
	.uleb128 .Ltmp414-.Lfunc_begin4         #     jumps to .Ltmp414
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp415-.Lfunc_begin4         # >> Call Site 75 <<
	.uleb128 .Ltmp424-.Ltmp415              #   Call between .Ltmp415 and .Ltmp424
	.uleb128 .Ltmp425-.Lfunc_begin4         #     jumps to .Ltmp425
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp424-.Lfunc_begin4         # >> Call Site 76 <<
	.uleb128 .Ltmp426-.Ltmp424              #   Call between .Ltmp424 and .Ltmp426
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp426-.Lfunc_begin4         # >> Call Site 77 <<
	.uleb128 .Ltmp427-.Ltmp426              #   Call between .Ltmp426 and .Ltmp427
	.uleb128 .Ltmp428-.Lfunc_begin4         #     jumps to .Ltmp428
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp429-.Lfunc_begin4         # >> Call Site 78 <<
	.uleb128 .Ltmp438-.Ltmp429              #   Call between .Ltmp429 and .Ltmp438
	.uleb128 .Ltmp439-.Lfunc_begin4         #     jumps to .Ltmp439
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp438-.Lfunc_begin4         # >> Call Site 79 <<
	.uleb128 .Ltmp440-.Ltmp438              #   Call between .Ltmp438 and .Ltmp440
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp440-.Lfunc_begin4         # >> Call Site 80 <<
	.uleb128 .Ltmp441-.Ltmp440              #   Call between .Ltmp440 and .Ltmp441
	.uleb128 .Ltmp442-.Lfunc_begin4         #     jumps to .Ltmp442
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp443-.Lfunc_begin4         # >> Call Site 81 <<
	.uleb128 .Ltmp454-.Ltmp443              #   Call between .Ltmp443 and .Ltmp454
	.uleb128 .Ltmp455-.Lfunc_begin4         #     jumps to .Ltmp455
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp454-.Lfunc_begin4         # >> Call Site 82 <<
	.uleb128 .Ltmp456-.Ltmp454              #   Call between .Ltmp454 and .Ltmp456
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp456-.Lfunc_begin4         # >> Call Site 83 <<
	.uleb128 .Ltmp457-.Ltmp456              #   Call between .Ltmp456 and .Ltmp457
	.uleb128 .Ltmp458-.Lfunc_begin4         #     jumps to .Ltmp458
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp459-.Lfunc_begin4         # >> Call Site 84 <<
	.uleb128 .Ltmp470-.Ltmp459              #   Call between .Ltmp459 and .Ltmp470
	.uleb128 .Ltmp471-.Lfunc_begin4         #     jumps to .Ltmp471
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp470-.Lfunc_begin4         # >> Call Site 85 <<
	.uleb128 .Lfunc_end13-.Ltmp470          #   Call between .Ltmp470 and .Lfunc_end13
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end4:
	.p2align	2, 0x0
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str:
	.asciz	"invtime"
	.size	.L.str, 8

	.type	_ZL27benchmark_uniq_2_benchmark_,@object # @_ZL27benchmark_uniq_2_benchmark_
	.local	_ZL27benchmark_uniq_2_benchmark_
	.comm	_ZL27benchmark_uniq_2_benchmark_,8,8
	.type	.L.str.2,@object                # @.str.2
	.p2align	3, 0x0
.L.str.2:
	.asciz	"BM_MainThread"
	.size	.L.str.2, 14

	.type	_ZL27benchmark_uniq_3_benchmark_,@object # @_ZL27benchmark_uniq_3_benchmark_
	.local	_ZL27benchmark_uniq_3_benchmark_
	.comm	_ZL27benchmark_uniq_3_benchmark_,8,8
	.type	_ZL27benchmark_uniq_4_benchmark_,@object # @_ZL27benchmark_uniq_4_benchmark_
	.local	_ZL27benchmark_uniq_4_benchmark_
	.comm	_ZL27benchmark_uniq_4_benchmark_,8,8
	.type	_ZL27benchmark_uniq_5_benchmark_,@object # @_ZL27benchmark_uniq_5_benchmark_
	.local	_ZL27benchmark_uniq_5_benchmark_
	.comm	_ZL27benchmark_uniq_5_benchmark_,8,8
	.type	_ZL27benchmark_uniq_6_benchmark_,@object # @_ZL27benchmark_uniq_6_benchmark_
	.local	_ZL27benchmark_uniq_6_benchmark_
	.comm	_ZL27benchmark_uniq_6_benchmark_,8,8
	.type	_ZL27benchmark_uniq_7_benchmark_,@object # @_ZL27benchmark_uniq_7_benchmark_
	.local	_ZL27benchmark_uniq_7_benchmark_
	.comm	_ZL27benchmark_uniq_7_benchmark_,8,8
	.type	_ZL27benchmark_uniq_8_benchmark_,@object # @_ZL27benchmark_uniq_8_benchmark_
	.local	_ZL27benchmark_uniq_8_benchmark_
	.comm	_ZL27benchmark_uniq_8_benchmark_,8,8
	.type	_ZL27benchmark_uniq_9_benchmark_,@object # @_ZL27benchmark_uniq_9_benchmark_
	.local	_ZL27benchmark_uniq_9_benchmark_
	.comm	_ZL27benchmark_uniq_9_benchmark_,8,8
	.type	_ZL28benchmark_uniq_10_benchmark_,@object # @_ZL28benchmark_uniq_10_benchmark_
	.local	_ZL28benchmark_uniq_10_benchmark_
	.comm	_ZL28benchmark_uniq_10_benchmark_,8,8
	.type	_ZL28benchmark_uniq_11_benchmark_,@object # @_ZL28benchmark_uniq_11_benchmark_
	.local	_ZL28benchmark_uniq_11_benchmark_
	.comm	_ZL28benchmark_uniq_11_benchmark_,8,8
	.type	_ZL28benchmark_uniq_12_benchmark_,@object # @_ZL28benchmark_uniq_12_benchmark_
	.local	_ZL28benchmark_uniq_12_benchmark_
	.comm	_ZL28benchmark_uniq_12_benchmark_,8,8
	.type	_ZL28benchmark_uniq_13_benchmark_,@object # @_ZL28benchmark_uniq_13_benchmark_
	.local	_ZL28benchmark_uniq_13_benchmark_
	.comm	_ZL28benchmark_uniq_13_benchmark_,8,8
	.type	_ZL28benchmark_uniq_14_benchmark_,@object # @_ZL28benchmark_uniq_14_benchmark_
	.local	_ZL28benchmark_uniq_14_benchmark_
	.comm	_ZL28benchmark_uniq_14_benchmark_,8,8
	.type	.L.str.15,@object               # @.str.15
	.p2align	3, 0x0
.L.str.15:
	.asciz	"BM_WorkerThread"
	.size	.L.str.15, 16

	.type	_ZL28benchmark_uniq_15_benchmark_,@object # @_ZL28benchmark_uniq_15_benchmark_
	.local	_ZL28benchmark_uniq_15_benchmark_
	.comm	_ZL28benchmark_uniq_15_benchmark_,8,8
	.type	_ZL28benchmark_uniq_16_benchmark_,@object # @_ZL28benchmark_uniq_16_benchmark_
	.local	_ZL28benchmark_uniq_16_benchmark_
	.comm	_ZL28benchmark_uniq_16_benchmark_,8,8
	.type	_ZL28benchmark_uniq_17_benchmark_,@object # @_ZL28benchmark_uniq_17_benchmark_
	.local	_ZL28benchmark_uniq_17_benchmark_
	.comm	_ZL28benchmark_uniq_17_benchmark_,8,8
	.type	_ZL28benchmark_uniq_18_benchmark_,@object # @_ZL28benchmark_uniq_18_benchmark_
	.local	_ZL28benchmark_uniq_18_benchmark_
	.comm	_ZL28benchmark_uniq_18_benchmark_,8,8
	.type	_ZL28benchmark_uniq_19_benchmark_,@object # @_ZL28benchmark_uniq_19_benchmark_
	.local	_ZL28benchmark_uniq_19_benchmark_
	.comm	_ZL28benchmark_uniq_19_benchmark_,8,8
	.type	_ZL28benchmark_uniq_20_benchmark_,@object # @_ZL28benchmark_uniq_20_benchmark_
	.local	_ZL28benchmark_uniq_20_benchmark_
	.comm	_ZL28benchmark_uniq_20_benchmark_,8,8
	.type	_ZL28benchmark_uniq_21_benchmark_,@object # @_ZL28benchmark_uniq_21_benchmark_
	.local	_ZL28benchmark_uniq_21_benchmark_
	.comm	_ZL28benchmark_uniq_21_benchmark_,8,8
	.type	_ZL28benchmark_uniq_22_benchmark_,@object # @_ZL28benchmark_uniq_22_benchmark_
	.local	_ZL28benchmark_uniq_22_benchmark_
	.comm	_ZL28benchmark_uniq_22_benchmark_,8,8
	.type	_ZL28benchmark_uniq_23_benchmark_,@object # @_ZL28benchmark_uniq_23_benchmark_
	.local	_ZL28benchmark_uniq_23_benchmark_
	.comm	_ZL28benchmark_uniq_23_benchmark_,8,8
	.type	_ZL28benchmark_uniq_24_benchmark_,@object # @_ZL28benchmark_uniq_24_benchmark_
	.local	_ZL28benchmark_uniq_24_benchmark_
	.comm	_ZL28benchmark_uniq_24_benchmark_,8,8
	.type	_ZL28benchmark_uniq_25_benchmark_,@object # @_ZL28benchmark_uniq_25_benchmark_
	.local	_ZL28benchmark_uniq_25_benchmark_
	.comm	_ZL28benchmark_uniq_25_benchmark_,8,8
	.type	_ZL28benchmark_uniq_26_benchmark_,@object # @_ZL28benchmark_uniq_26_benchmark_
	.local	_ZL28benchmark_uniq_26_benchmark_
	.comm	_ZL28benchmark_uniq_26_benchmark_,8,8
	.type	.L.str.28,@object               # @.str.28
	.p2align	3, 0x0
.L.str.28:
	.asciz	"BM_MainThreadAndWorkerThread"
	.size	.L.str.28, 29

	.type	_ZL28benchmark_uniq_27_benchmark_,@object # @_ZL28benchmark_uniq_27_benchmark_
	.local	_ZL28benchmark_uniq_27_benchmark_
	.comm	_ZL28benchmark_uniq_27_benchmark_,8,8
	.type	_ZL28benchmark_uniq_28_benchmark_,@object # @_ZL28benchmark_uniq_28_benchmark_
	.local	_ZL28benchmark_uniq_28_benchmark_
	.comm	_ZL28benchmark_uniq_28_benchmark_,8,8
	.type	_ZL28benchmark_uniq_29_benchmark_,@object # @_ZL28benchmark_uniq_29_benchmark_
	.local	_ZL28benchmark_uniq_29_benchmark_
	.comm	_ZL28benchmark_uniq_29_benchmark_,8,8
	.type	_ZL28benchmark_uniq_30_benchmark_,@object # @_ZL28benchmark_uniq_30_benchmark_
	.local	_ZL28benchmark_uniq_30_benchmark_
	.comm	_ZL28benchmark_uniq_30_benchmark_,8,8
	.type	_ZL28benchmark_uniq_31_benchmark_,@object # @_ZL28benchmark_uniq_31_benchmark_
	.local	_ZL28benchmark_uniq_31_benchmark_
	.comm	_ZL28benchmark_uniq_31_benchmark_,8,8
	.type	_ZL28benchmark_uniq_32_benchmark_,@object # @_ZL28benchmark_uniq_32_benchmark_
	.local	_ZL28benchmark_uniq_32_benchmark_
	.comm	_ZL28benchmark_uniq_32_benchmark_,8,8
	.type	_ZL28benchmark_uniq_33_benchmark_,@object # @_ZL28benchmark_uniq_33_benchmark_
	.local	_ZL28benchmark_uniq_33_benchmark_
	.comm	_ZL28benchmark_uniq_33_benchmark_,8,8
	.type	_ZL28benchmark_uniq_34_benchmark_,@object # @_ZL28benchmark_uniq_34_benchmark_
	.local	_ZL28benchmark_uniq_34_benchmark_
	.comm	_ZL28benchmark_uniq_34_benchmark_,8,8
	.type	_ZL28benchmark_uniq_35_benchmark_,@object # @_ZL28benchmark_uniq_35_benchmark_
	.local	_ZL28benchmark_uniq_35_benchmark_
	.comm	_ZL28benchmark_uniq_35_benchmark_,8,8
	.type	_ZL28benchmark_uniq_36_benchmark_,@object # @_ZL28benchmark_uniq_36_benchmark_
	.local	_ZL28benchmark_uniq_36_benchmark_
	.comm	_ZL28benchmark_uniq_36_benchmark_,8,8
	.type	_ZL28benchmark_uniq_37_benchmark_,@object # @_ZL28benchmark_uniq_37_benchmark_
	.local	_ZL28benchmark_uniq_37_benchmark_
	.comm	_ZL28benchmark_uniq_37_benchmark_,8,8
	.type	.L.str.40,@object               # @.str.40
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.40:
	.asciz	"cached_ > 0"
	.size	.L.str.40, 12

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"/home/date/work/actions-runner/_work/llvm-opt-ci/llvm-opt-ci/repos/llvm-test-suite/MicroBenchmarks/libs/benchmark/include/benchmark/benchmark.h"
	.size	.L.str.41, 144

	.type	.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv,@object # @__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv
.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv:
	.asciz	"StateIterator &benchmark::State::StateIterator::operator++()"
	.size	.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv, 61

	.type	_ZSt19piecewise_construct,@object # @_ZSt19piecewise_construct
	.section	.rodata._ZSt19piecewise_construct,"aG",@progbits,_ZSt19piecewise_construct,comdat
	.weak	_ZSt19piecewise_construct
_ZSt19piecewise_construct:
	.space	1
	.size	_ZSt19piecewise_construct, 1

	.type	_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEEE,@object # @_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEEE
	.section	.data.rel.ro._ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEEE,"awG",@progbits,_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEEE,comdat
	.weak	_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEEE
	.p2align	3, 0x0
_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEEE:
	.dword	0
	.dword	_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEEE
	.dword	_ZNSt6thread6_StateD2Ev
	.dword	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEED0Ev
	.dword	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEE6_M_runEv
	.size	_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEEE, 40

	.type	_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEEE,@object # @_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEEE
	.section	.data.rel.ro._ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEEE,"awG",@progbits,_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEEE,comdat
	.weak	_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEEE
	.p2align	3, 0x0
_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEEE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEEE
	.dword	_ZTINSt6thread6_StateE
	.size	_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEEE, 24

	.type	_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEEE,@object # @_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEEE
	.section	.rodata._ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEEE,"aG",@progbits,_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEEE,comdat
	.weak	_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEEE
_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEEE:
	.asciz	"NSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEEE"
	.size	_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEEE, 59

	.section	.init_array,"aw",@init_array
	.p2align	3, 0x0
	.dword	_GLOBAL__sub_I_internal_threading_test.cc
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
	.addrsig_sym _Z14MyBusySpinwaitv
	.addrsig_sym _Z13BM_MainThreadRN9benchmark5StateE
	.addrsig_sym __gxx_personality_v0
	.addrsig_sym _Z15BM_WorkerThreadRN9benchmark5StateE
	.addrsig_sym _Z28BM_MainThreadAndWorkerThreadRN9benchmark5StateE
	.addrsig_sym _ZNSt6thread24_M_thread_deps_never_runEv
	.addrsig_sym _GLOBAL__sub_I_internal_threading_test.cc
	.addrsig_sym _Unwind_Resume
	.addrsig_sym _ZSt19piecewise_construct
	.addrsig_sym _ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEEE
	.addrsig_sym _ZTVN10__cxxabiv120__si_class_type_infoE
	.addrsig_sym _ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvvEEEEEEE
	.addrsig_sym _ZTINSt6thread6_StateE
