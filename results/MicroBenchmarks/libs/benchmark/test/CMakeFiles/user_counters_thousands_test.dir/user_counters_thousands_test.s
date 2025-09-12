	.file	"user_counters_thousands_test.cc"
                                        # Start of file scope inline assembly
	.globl	_ZSt21ios_base_library_initv

                                        # End of file scope inline assembly
	.text
	.hidden	_Z21BM_Counters_ThousandsRN9benchmark5StateE # -- Begin function _Z21BM_Counters_ThousandsRN9benchmark5StateE
	.globl	_Z21BM_Counters_ThousandsRN9benchmark5StateE
	.p2align	5
	.type	_Z21BM_Counters_ThousandsRN9benchmark5StateE,@function
_Z21BM_Counters_ThousandsRN9benchmark5StateE: # @_Z21BM_Counters_ThousandsRN9benchmark5StateE
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
# %bb.0:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	addi.d	$sp, $sp, -352
	.cfi_def_cfa_offset 352
	st.d	$ra, $sp, 344                   # 8-byte Folded Spill
	st.d	$fp, $sp, 336                   # 8-byte Folded Spill
	st.d	$s0, $sp, 328                   # 8-byte Folded Spill
	st.d	$s1, $sp, 320                   # 8-byte Folded Spill
	st.d	$s2, $sp, 312                   # 8-byte Folded Spill
	st.d	$s3, $sp, 304                   # 8-byte Folded Spill
	st.d	$s4, $sp, 296                   # 8-byte Folded Spill
	st.d	$s5, $sp, 288                   # 8-byte Folded Spill
	st.d	$s6, $sp, 280                   # 8-byte Folded Spill
	st.d	$s7, $sp, 272                   # 8-byte Folded Spill
	st.d	$s8, $sp, 264                   # 8-byte Folded Spill
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
	ld.w	$s1, $a0, 28
	ld.d	$fp, $a0, 16
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	bnez	$s1, .LBB0_3
# %bb.1:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	beqz	$fp, .LBB0_3
# %bb.2:                                # %_ZN9benchmark5State13StateIteratorppEv.exit.preheader
	srai.d	$a0, $fp, 63
	andn	$a0, $fp, $a0
	addi.d	$a1, $fp, -1
	bgeu	$a1, $a0, .LBB0_23
.LBB0_3:                                # %.noexc.i.i
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 32
	st.d	$a0, $sp, 16
	ori	$a0, $zero, 21
	st.d	$a0, $sp, 256
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 256
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 256
	st.d	$a0, $sp, 16
	st.d	$a1, $sp, 32
	pcalau12i	$a2, %pc_hi20(.L.str)
	addi.d	$a2, $a2, %pc_lo12(.L.str)
	ld.d	$a3, $a2, 13
	st.d	$a3, $a0, 13
	vld	$vr0, $a2, 0
	vst	$vr0, $a0, 0
	ld.d	$a0, $sp, 16
	st.d	$a1, $sp, 24
	stx.b	$zero, $a0, $a1
	ori	$s1, $zero, 0
	ori	$a0, $zero, 0
	lu32i.d	$a0, -97152
	lu52i.d	$s2, $a0, 1042
	st.d	$s2, $sp, 48
	lu32i.d	$s1, 1000
	st.d	$s1, $sp, 56
	addi.d	$fp, $sp, 64
	addi.d	$a0, $sp, 80
	st.d	$a0, $sp, 64
	ori	$s3, $zero, 18
	st.d	$s3, $sp, 256
.Ltmp0:                                 # EH_LABEL
	addi.d	$a1, $sp, 256
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.4:                                # %.noexc39
	ld.d	$a1, $sp, 256
	st.d	$a0, $sp, 64
	st.d	$a1, $sp, 80
	pcalau12i	$a2, %pc_hi20(.L.str.1)
	addi.d	$a2, $a2, %pc_lo12(.L.str.1)
	vld	$vr0, $a2, 0
	ld.h	$a2, $a2, 16
	vst	$vr0, $a0, 0
	st.h	$a2, $a0, 16
	ld.d	$a0, $sp, 64
	st.d	$a1, $sp, 72
	stx.b	$zero, $a0, $a1
	st.d	$s2, $sp, 96
	st.d	$s1, $sp, 104
	addi.d	$s1, $sp, 112
	addi.d	$s7, $sp, 128
	st.d	$s7, $sp, 112
	st.d	$s3, $sp, 256
.Ltmp3:                                 # EH_LABEL
	addi.d	$a1, $sp, 256
	move	$a0, $s1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp4:                                 # EH_LABEL
# %bb.5:                                # %.noexc42
	ld.d	$a1, $sp, 256
	st.d	$a0, $sp, 112
	st.d	$a1, $sp, 128
	pcalau12i	$a2, %pc_hi20(.L.str.2)
	addi.d	$a2, $a2, %pc_lo12(.L.str.2)
	vld	$vr0, $a2, 0
	ld.h	$a2, $a2, 16
	vst	$vr0, $a0, 0
	st.h	$a2, $a0, 16
	ld.d	$a0, $sp, 112
	st.d	$a1, $sp, 120
	stx.b	$zero, $a0, $a1
	ori	$s3, $zero, 0
	ori	$a0, $zero, 0
	lu32i.d	$a0, -97152
	lu52i.d	$a0, $a0, 1042
	st.d	$a0, $sp, 144
	ori	$a0, $zero, 0
	lu32i.d	$a0, 1024
	st.d	$a0, $sp, 152
	addi.d	$s2, $sp, 160
	addi.d	$s8, $sp, 176
	st.d	$s8, $sp, 160
	ori	$s4, $zero, 18
	st.d	$s4, $sp, 256
.Ltmp6:                                 # EH_LABEL
	addi.d	$a1, $sp, 256
	move	$a0, $s2
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp7:                                 # EH_LABEL
# %bb.6:                                # %.noexc46
	ld.d	$a1, $sp, 256
	st.d	$a0, $sp, 160
	st.d	$a1, $sp, 176
	pcalau12i	$a2, %pc_hi20(.L.str.3)
	addi.d	$a2, $a2, %pc_lo12(.L.str.3)
	vld	$vr0, $a2, 0
	ld.h	$a2, $a2, 16
	vst	$vr0, $a0, 0
	st.h	$a2, $a0, 16
	ld.d	$a0, $sp, 160
	st.d	$a1, $sp, 168
	stx.b	$zero, $a0, $a1
	lu52i.d	$s6, $zero, 1043
	st.d	$s6, $sp, 192
	lu32i.d	$s3, 1000
	st.d	$s3, $sp, 200
	addi.d	$s3, $sp, 208
	addi.d	$s5, $sp, 224
	st.d	$s5, $sp, 208
	st.d	$s4, $sp, 256
.Ltmp9:                                 # EH_LABEL
	addi.d	$a1, $sp, 256
	move	$a0, $s3
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp10:                                # EH_LABEL
# %bb.7:                                # %.noexc50
	ld.d	$a1, $sp, 256
	addi.d	$s4, $s0, 64
	st.d	$a0, $sp, 208
	st.d	$a1, $sp, 224
	pcalau12i	$a2, %pc_hi20(.L.str.4)
	addi.d	$a2, $a2, %pc_lo12(.L.str.4)
	vld	$vr0, $a2, 0
	ld.h	$a2, $a2, 16
	vst	$vr0, $a0, 0
	st.h	$a2, $a0, 16
	ld.d	$a0, $sp, 208
	st.d	$a1, $sp, 216
	stx.b	$zero, $a0, $a1
	st.d	$s6, $sp, 240
	ori	$a0, $zero, 0
	lu32i.d	$a0, 1024
	st.d	$a0, $sp, 248
	st.d	$s4, $sp, 256
	addi.d	$s0, $s0, 72
.Ltmp12:                                # EH_LABEL
	addi.d	$a2, $sp, 16
	addi.d	$a3, $sp, 256
	move	$a0, $s4
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_insert_unique_IRKSA_NSG_11_Alloc_nodeEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EOT_RT0_)
	jirl	$ra, $ra, 0
.Ltmp13:                                # EH_LABEL
# %bb.8:                                # %.noexc52
.Ltmp14:                                # EH_LABEL
	addi.d	$a3, $sp, 256
	move	$a0, $s4
	move	$a1, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_insert_unique_IRKSA_NSG_11_Alloc_nodeEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EOT_RT0_)
	jirl	$ra, $ra, 0
.Ltmp15:                                # EH_LABEL
# %bb.9:                                # %.noexc52.1
.Ltmp16:                                # EH_LABEL
	addi.d	$a3, $sp, 256
	move	$a0, $s4
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_insert_unique_IRKSA_NSG_11_Alloc_nodeEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EOT_RT0_)
	jirl	$ra, $ra, 0
.Ltmp17:                                # EH_LABEL
# %bb.10:                               # %.noexc52.2
.Ltmp18:                                # EH_LABEL
	addi.d	$a3, $sp, 256
	move	$a0, $s4
	move	$a1, $s0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_insert_unique_IRKSA_NSG_11_Alloc_nodeEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EOT_RT0_)
	jirl	$ra, $ra, 0
.Ltmp19:                                # EH_LABEL
# %bb.11:                               # %.noexc52.3
.Ltmp20:                                # EH_LABEL
	addi.d	$a3, $sp, 256
	move	$a0, $s4
	move	$a1, $s0
	move	$a2, $s3
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_insert_unique_IRKSA_NSG_11_Alloc_nodeEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EOT_RT0_)
	jirl	$ra, $ra, 0
.Ltmp21:                                # EH_LABEL
# %bb.12:                               # %.noexc52.4
	ld.d	$a0, $sp, 208
	beq	$a0, $s5, .LBB0_14
# %bb.13:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
	ld.d	$a1, $sp, 224
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_14:                               # %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterEED2Ev.exit
	ld.d	$a0, $sp, 160
	beq	$a0, $s8, .LBB0_16
# %bb.15:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1
	ld.d	$a1, $sp, 176
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_16:                               # %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterEED2Ev.exit.1
	ld.d	$a0, $sp, 112
	addi.d	$fp, $sp, 32
	addi.d	$s0, $sp, 80
	beq	$a0, $s7, .LBB0_18
# %bb.17:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2
	ld.d	$a1, $sp, 128
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_18:                               # %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterEED2Ev.exit.2
	ld.d	$a0, $sp, 64
	beq	$a0, $s0, .LBB0_20
# %bb.19:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.3
	ld.d	$a1, $sp, 80
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_20:                               # %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterEED2Ev.exit.3
	ld.d	$a0, $sp, 16
	beq	$a0, $fp, .LBB0_22
# %bb.21:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.4
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_22:                               # %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterEED2Ev.exit.4
	ld.d	$s8, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 328                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 336                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 344                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 352
	ret
.LBB0_23:
	pcalau12i	$a0, %pc_hi20(.L.str.77)
	addi.d	$a0, $a0, %pc_lo12(.L.str.77)
	pcalau12i	$a1, %pc_hi20(.L.str.78)
	addi.d	$a1, $a1, %pc_lo12(.L.str.78)
	pcalau12i	$a2, %pc_hi20(.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv)
	addi.d	$a3, $a2, %pc_lo12(.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv)
	ori	$a2, $zero, 1134
	pcaddu18i	$ra, %call36(__assert_fail)
	jirl	$ra, $ra, 0
.LBB0_24:
.Ltmp11:                                # EH_LABEL
	move	$s0, $a0
	move	$fp, $s3
	b	.LBB0_28
.LBB0_25:
.Ltmp8:                                 # EH_LABEL
	move	$s0, $a0
	move	$fp, $s2
	b	.LBB0_28
.LBB0_26:
.Ltmp5:                                 # EH_LABEL
	move	$s0, $a0
	move	$fp, $s1
	b	.LBB0_28
.LBB0_27:
.Ltmp2:                                 # EH_LABEL
	move	$s0, $a0
.LBB0_28:
	addi.d	$s1, $sp, 16
	b	.LBB0_30
	.p2align	4, , 16
.LBB0_29:                               # %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterEED2Ev.exit58
                                        #   in Loop: Header=BB0_30 Depth=1
	addi.d	$fp, $fp, -48
	beq	$fp, $s1, .LBB0_37
.LBB0_30:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, -48
	addi.d	$a1, $fp, -32
	beq	$a1, $a0, .LBB0_29
# %bb.31:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i56
                                        #   in Loop: Header=BB0_30 Depth=1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB0_29
.LBB0_32:
.Ltmp22:                                # EH_LABEL
	ld.d	$a2, $sp, 208
	move	$s0, $a0
	bne	$a2, $s5, .LBB0_38
# %bb.33:                               # %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterEED2Ev.exit55
	ld.d	$a0, $sp, 160
	bne	$a0, $s8, .LBB0_39
.LBB0_34:                               # %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterEED2Ev.exit55.1
	ld.d	$a0, $sp, 112
	bne	$a0, $s7, .LBB0_40
.LBB0_35:                               # %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterEED2Ev.exit55.2
	ld.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	bne	$a0, $a1, .LBB0_41
.LBB0_36:                               # %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterEED2Ev.exit55.3
	ld.d	$a0, $sp, 16
	addi.d	$a1, $sp, 32
	bne	$a0, $a1, .LBB0_42
.LBB0_37:                               # %.thread
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB0_38:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i53
	ld.d	$a0, $sp, 224
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 160
	beq	$a0, $s8, .LBB0_34
.LBB0_39:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i53.1
	ld.d	$a1, $sp, 176
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 112
	beq	$a0, $s7, .LBB0_35
.LBB0_40:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i53.2
	ld.d	$a1, $sp, 128
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 64
	addi.d	$a1, $sp, 80
	beq	$a0, $a1, .LBB0_36
.LBB0_41:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i53.3
	ld.d	$a1, $sp, 80
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 16
	addi.d	$a1, $sp, 32
	beq	$a0, $a1, .LBB0_37
.LBB0_42:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i53.4
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	_Z21BM_Counters_ThousandsRN9benchmark5StateE, .Lfunc_end0-_Z21BM_Counters_ThousandsRN9benchmark5StateE
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
	.uleb128 .Ltmp3-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp4-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp4
	.uleb128 .Ltmp5-.Lfunc_begin0           #     jumps to .Ltmp5
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp6-.Lfunc_begin0           # >> Call Site 4 <<
	.uleb128 .Ltmp7-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp7
	.uleb128 .Ltmp8-.Lfunc_begin0           #     jumps to .Ltmp8
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp9-.Lfunc_begin0           # >> Call Site 5 <<
	.uleb128 .Ltmp10-.Ltmp9                 #   Call between .Ltmp9 and .Ltmp10
	.uleb128 .Ltmp11-.Lfunc_begin0          #     jumps to .Ltmp11
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp12-.Lfunc_begin0          # >> Call Site 6 <<
	.uleb128 .Ltmp21-.Ltmp12                #   Call between .Ltmp12 and .Ltmp21
	.uleb128 .Ltmp22-.Lfunc_begin0          #     jumps to .Ltmp22
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp21-.Lfunc_begin0          # >> Call Site 7 <<
	.uleb128 .Lfunc_end0-.Ltmp21            #   Call between .Ltmp21 and .Lfunc_end0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN8TestCaseD2Ev,"axG",@progbits,_ZN8TestCaseD2Ev,comdat
	.hidden	_ZN8TestCaseD2Ev                # -- Begin function _ZN8TestCaseD2Ev
	.weak	_ZN8TestCaseD2Ev
	.p2align	5
	.type	_ZN8TestCaseD2Ev,@function
_ZN8TestCaseD2Ev:                       # @_ZN8TestCaseD2Ev
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
	ld.d	$s0, $a0, 80
	beqz	$s0, .LBB1_5
# %bb.1:
	ld.d	$a0, $s0, 8
	ori	$a1, $zero, 1
	lu32i.d	$a1, 1
	dbar	20
	bne	$a0, $a1, .LBB1_3
# %bb.2:
	ld.d	$a0, $s0, 0
	st.d	$zero, $s0, 8
	ld.d	$a1, $a0, 16
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 24
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $fp, 40
	addi.d	$a1, $fp, 56
	bne	$a0, $a1, .LBB1_6
	b	.LBB1_7
.LBB1_3:
	pcalau12i	$a1, %got_pc_hi20(__libc_single_threaded)
	ld.d	$a1, $a1, %got_pc_lo12(__libc_single_threaded)
	ld.bu	$a1, $a1, 0
	beqz	$a1, .LBB1_10
# %bb.4:
	addi.d	$a1, $a0, -1
	st.w	$a1, $s0, 8
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB1_11
.LBB1_5:                                # %_ZNSt12__shared_ptrIN9benchmark5RegexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
	ld.d	$a0, $fp, 40
	addi.d	$a1, $fp, 56
	beq	$a0, $a1, .LBB1_7
.LBB1_6:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_7:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$a0, $fp, 0
	addi.d	$a1, $fp, 16
	beq	$a0, $a1, .LBB1_9
# %bb.8:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB1_9:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB1_10:
	addi.d	$a1, $s0, 8
	addi.w	$a2, $zero, -1
	amadd_db.w	$a0, $a2, $a1
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB1_5
.LBB1_11:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 40
	addi.d	$a1, $fp, 56
	bne	$a0, $a1, .LBB1_6
	b	.LBB1_7
.Lfunc_end1:
	.size	_ZN8TestCaseD2Ev, .Lfunc_end1-_ZN8TestCaseD2Ev
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _Z14CheckThousandsRK7Results
.LCPI2_0:
	.dword	0xc12e848000000000              # double -1.0E+6
.LCPI2_1:
	.dword	0x4059000000000000              # double 100
.LCPI2_2:
	.dword	0x3f847ae147ae147b              # double 0.01
.LCPI2_3:
	.dword	0x412e848000000000              # double 1.0E+6
.LCPI2_4:
	.dword	0xc130000000000000              # double -1048576
.LCPI2_5:
	.dword	0x405a36e2eb1c432d              # double 104.85760000000001
.LCPI2_6:
	.dword	0x3eb0000000000000              # double 9.5367431640625E-7
	.text
	.hidden	_Z14CheckThousandsRK7Results
	.globl	_Z14CheckThousandsRK7Results
	.p2align	5
	.type	_Z14CheckThousandsRK7Results,@function
_Z14CheckThousandsRK7Results:           # @_Z14CheckThousandsRK7Results
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception1
# %bb.0:
	addi.d	$sp, $sp, -320
	.cfi_def_cfa_offset 320
	st.d	$ra, $sp, 312                   # 8-byte Folded Spill
	st.d	$fp, $sp, 304                   # 8-byte Folded Spill
	st.d	$s0, $sp, 296                   # 8-byte Folded Spill
	st.d	$s1, $sp, 288                   # 8-byte Folded Spill
	st.d	$s2, $sp, 280                   # 8-byte Folded Spill
	st.d	$s3, $sp, 272                   # 8-byte Folded Spill
	st.d	$s4, $sp, 264                   # 8-byte Folded Spill
	st.d	$s5, $sp, 256                   # 8-byte Folded Spill
	st.d	$s6, $sp, 248                   # 8-byte Folded Spill
	st.d	$s7, $sp, 240                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 232                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 224                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 216                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 208                  # 8-byte Folded Spill
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
	.cfi_offset 57, -96
	.cfi_offset 58, -104
	.cfi_offset 59, -112
	move	$fp, $a0
	ld.d	$a0, $a0, 8
	ori	$a1, $zero, 31
	bne	$a0, $a1, .LBB2_447
# %bb.1:                                # %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.55)
	addi.d	$a1, $a1, %pc_lo12(.L.str.55)
	ori	$a2, $zero, 31
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB2_447
# %bb.2:                                # %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1027
	addi.d	$s0, $sp, 184
	st.d	$s0, $sp, 168
	ori	$a0, $zero, 21
	st.d	$a0, $sp, 128
.Ltmp23:                                # EH_LABEL
	addi.d	$a0, $sp, 168
	addi.d	$a1, $sp, 128
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp24:                                # EH_LABEL
# %bb.3:                                # %.noexc
	ld.d	$a1, $sp, 128
	st.d	$a0, $sp, 168
	st.d	$a1, $sp, 184
	pcalau12i	$a2, %pc_hi20(.L.str)
	addi.d	$s5, $a2, %pc_lo12(.L.str)
	vld	$vr0, $s5, 0
	ld.d	$s4, $s5, 13
	vst	$vr0, $a0, 0
	st.d	$s4, $a0, 13
	ld.d	$a0, $sp, 168
	st.d	$a1, $sp, 176
	stx.b	$zero, $a0, $a1
.Ltmp26:                                # EH_LABEL
	addi.d	$a1, $sp, 168
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNK7Results5GetAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp27:                                # EH_LABEL
# %bb.4:                                # %_ZNK7Results12GetCounterAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
	pcalau12i	$a0, %pc_hi20(.LCPI2_0)
	fld.d	$fs1, $a0, %pc_lo12(.LCPI2_0)
	pcalau12i	$a0, %pc_hi20(.LCPI2_1)
	fld.d	$fs0, $a0, %pc_lo12(.LCPI2_1)
	fadd.d	$fa0, $fa0, $fs1
	fabs.d	$fs2, $fa0
	fcmp.cule.d	$fcc0, $fs0, $fs2
	movcf2gr	$a0, $fcc0
	st.d	$a0, $sp, 24
	bceqz	$fcc0, .LBB2_7
# %bb.5:
.Ltmp29:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.56)
	addi.d	$a1, $a0, %pc_lo12(.L.str.56)
	pcalau12i	$a0, %pc_hi20(.L.str.57)
	addi.d	$a2, $a0, %pc_lo12(.L.str.57)
	pcalau12i	$a0, %pc_hi20(.L__func__._Z14CheckThousandsRK7Results)
	addi.d	$a3, $a0, %pc_lo12(.L__func__._Z14CheckThousandsRK7Results)
	addi.d	$a0, $sp, 160
	ori	$a4, $zero, 174
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal12CheckHandlerC2EPKcS3_S3_i)
	jirl	$ra, $ra, 0
.Ltmp30:                                # EH_LABEL
# %bb.6:
	ld.d	$s6, $sp, 160
	b	.LBB2_8
.LBB2_7:
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	ld.b	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	dbar	20
	pcalau12i	$a1, %pc_hi20(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	addi.d	$s6, $a1, %pc_lo12(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	beqz	$a0, .LBB2_458
.LBB2_8:                                # %_ZN9benchmark8internal18GetNullLogInstanceEv.exit
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_40
# %bb.9:
.Ltmp31:                                # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.58)
	addi.d	$a1, $a1, %pc_lo12(.L.str.58)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp32:                                # EH_LABEL
# %bb.10:                               # %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_40
# %bb.11:
.Ltmp33:                                # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.57)
	addi.d	$a1, $a1, %pc_lo12(.L.str.57)
	ori	$a2, $zero, 150
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp34:                                # EH_LABEL
# %bb.12:                               # %_ZN9benchmark8internallsIA151_cEERNS0_7LogTypeES4_RKT_.exit
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_40
# %bb.13:
.Ltmp35:                                # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.59)
	addi.d	$a1, $a1, %pc_lo12(.L.str.59)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp36:                                # EH_LABEL
# %bb.14:                               # %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit235
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_40
# %bb.15:
.Ltmp38:                                # EH_LABEL
	ori	$a1, $zero, 174
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp39:                                # EH_LABEL
# %bb.16:                               # %_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_40
# %bb.17:
.Ltmp40:                                # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.60)
	addi.d	$a1, $a1, %pc_lo12(.L.str.60)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp41:                                # EH_LABEL
# %bb.18:                               # %_ZN9benchmark8internallsIA3_cEERNS0_7LogTypeES4_RKT_.exit
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_40
# %bb.19:
	ld.d	$a1, $fp, 0
	ld.d	$a2, $fp, 8
.Ltmp42:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp43:                                # EH_LABEL
# %bb.20:                               # %_ZN9benchmark8internallsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNS0_7LogTypeES9_RKT_.exit
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_40
# %bb.21:
.Ltmp44:                                # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.61)
	addi.d	$a1, $a1, %pc_lo12(.L.str.61)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp45:                                # EH_LABEL
# %bb.22:                               # %_ZN9benchmark8internallsIA3_cEERNS0_7LogTypeES4_RKT_.exit244
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_40
# %bb.23:
.Ltmp46:                                # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.57)
	addi.d	$a1, $a1, %pc_lo12(.L.str.57)
	ori	$a2, $zero, 150
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp47:                                # EH_LABEL
# %bb.24:                               # %_ZN9benchmark8internallsIA151_cEERNS0_7LogTypeES4_RKT_.exit247
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_40
# %bb.25:
.Ltmp48:                                # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.59)
	addi.d	$a1, $a1, %pc_lo12(.L.str.59)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp49:                                # EH_LABEL
# %bb.26:                               # %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit250
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_40
# %bb.27:
.Ltmp51:                                # EH_LABEL
	ori	$a1, $zero, 174
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp52:                                # EH_LABEL
# %bb.28:                               # %_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit253
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_40
# %bb.29:
.Ltmp53:                                # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.60)
	addi.d	$a1, $a1, %pc_lo12(.L.str.60)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp54:                                # EH_LABEL
# %bb.30:                               # %_ZN9benchmark8internallsIA3_cEERNS0_7LogTypeES4_RKT_.exit256
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_40
# %bb.31:
.Ltmp55:                                # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.62)
	addi.d	$a1, $a1, %pc_lo12(.L.str.62)
	ori	$a2, $zero, 10
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp56:                                # EH_LABEL
# %bb.32:                               # %_ZN9benchmark8internallsIA11_cEERNS0_7LogTypeES4_RKT_.exit
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_40
# %bb.33:
.Ltmp57:                                # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.63)
	addi.d	$a1, $a1, %pc_lo12(.L.str.63)
	ori	$a2, $zero, 6
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp58:                                # EH_LABEL
# %bb.34:                               # %_ZN9benchmark8internallsIA7_cEERNS0_7LogTypeES4_RKT_.exit
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_40
# %bb.35:
.Ltmp59:                                # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.64)
	addi.d	$a1, $a1, %pc_lo12(.L.str.64)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp60:                                # EH_LABEL
# %bb.36:                               # %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit263
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_40
# %bb.37:
.Ltmp61:                                # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	ori	$a2, $zero, 21
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp62:                                # EH_LABEL
# %bb.38:                               # %_ZN9benchmark8internallsIA22_cEERNS0_7LogTypeES4_RKT_.exit
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_40
# %bb.39:
.Ltmp63:                                # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.65)
	addi.d	$a1, $a1, %pc_lo12(.L.str.65)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp64:                                # EH_LABEL
.LBB2_40:                               # %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit268
	addi.d	$s1, $sp, 144
	st.d	$s1, $sp, 128
	ori	$a0, $zero, 21
	st.d	$a0, $sp, 96
.Ltmp66:                                # EH_LABEL
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 96
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp67:                                # EH_LABEL
# %bb.41:                               # %.noexc271
	ld.d	$a1, $sp, 96
	vld	$vr0, $s5, 0
	st.d	$a0, $sp, 128
	st.d	$a1, $sp, 144
	vst	$vr0, $a0, 0
	st.d	$s4, $a0, 13
	ld.d	$a0, $sp, 128
	st.d	$a1, $sp, 136
	stx.b	$zero, $a0, $a1
.Ltmp69:                                # EH_LABEL
	addi.d	$a1, $sp, 128
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNK7Results5GetAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp70:                                # EH_LABEL
# %bb.42:                               # %_ZNK7Results12GetCounterAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit274
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_70
# %bb.43:
.Ltmp71:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp72:                                # EH_LABEL
# %bb.44:                               # %_ZN9benchmark8internallsIdEERNS0_7LogTypeES3_RKT_.exit
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_70
# %bb.45:
.Ltmp73:                                # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.66)
	addi.d	$a1, $a1, %pc_lo12(.L.str.66)
	ori	$a2, $zero, 13
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp74:                                # EH_LABEL
# %bb.46:                               # %_ZN9benchmark8internallsIA14_cEERNS0_7LogTypeES4_RKT_.exit
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_70
# %bb.47:
.Ltmp76:                                # EH_LABEL
	lu12i.w	$a1, 244
	ori	$a1, $a1, 576
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp77:                                # EH_LABEL
# %bb.48:                               # %_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit281
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_70
# %bb.49:
.Ltmp78:                                # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.58)
	addi.d	$a1, $a1, %pc_lo12(.L.str.58)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp79:                                # EH_LABEL
# %bb.50:                               # %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit284
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_70
# %bb.51:
.Ltmp80:                                # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.57)
	addi.d	$a1, $a1, %pc_lo12(.L.str.57)
	ori	$a2, $zero, 150
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp81:                                # EH_LABEL
# %bb.52:                               # %_ZN9benchmark8internallsIA151_cEERNS0_7LogTypeES4_RKT_.exit287
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_70
# %bb.53:
.Ltmp82:                                # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.59)
	addi.d	$a1, $a1, %pc_lo12(.L.str.59)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp83:                                # EH_LABEL
# %bb.54:                               # %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit290
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_70
# %bb.55:
.Ltmp85:                                # EH_LABEL
	ori	$a1, $zero, 174
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp86:                                # EH_LABEL
# %bb.56:                               # %_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit293
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_70
# %bb.57:
.Ltmp87:                                # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.60)
	addi.d	$a1, $a1, %pc_lo12(.L.str.60)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp88:                                # EH_LABEL
# %bb.58:                               # %_ZN9benchmark8internallsIA3_cEERNS0_7LogTypeES4_RKT_.exit296
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_70
# %bb.59:
.Ltmp89:                                # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.67)
	addi.d	$a1, $a1, %pc_lo12(.L.str.67)
	ori	$a2, $zero, 18
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp90:                                # EH_LABEL
# %bb.60:                               # %_ZN9benchmark8internallsIA19_cEERNS0_7LogTypeES4_RKT_.exit
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_70
# %bb.61:
.Ltmp92:                                # EH_LABEL
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp93:                                # EH_LABEL
# %bb.62:                               # %_ZN9benchmark8internallsIdEERNS0_7LogTypeES3_RKT_.exit301
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_70
# %bb.63:
.Ltmp94:                                # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.68)
	addi.d	$a1, $a1, %pc_lo12(.L.str.68)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp95:                                # EH_LABEL
# %bb.64:                               # %_ZN9benchmark8internallsIA3_cEERNS0_7LogTypeES4_RKT_.exit304
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_70
# %bb.65:
.Ltmp97:                                # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.LCPI2_2)
	fld.d	$fa0, $a1, %pc_lo12(.LCPI2_2)
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp98:                                # EH_LABEL
# %bb.66:                               # %_ZN9benchmark8internallsIdEERNS0_7LogTypeES3_RKT_.exit307
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_70
# %bb.67:
.Ltmp99:                                # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.69)
	addi.d	$a1, $a1, %pc_lo12(.L.str.69)
	ori	$a2, $zero, 4
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp100:                               # EH_LABEL
# %bb.68:                               # %_ZN9benchmark8internallsIA5_cEERNS0_7LogTypeES4_RKT_.exit
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_70
# %bb.69:
.Ltmp101:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.70)
	addi.d	$a1, $a1, %pc_lo12(.L.str.70)
	ori	$a2, $zero, 14
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp102:                               # EH_LABEL
.LBB2_70:                               # %_ZN9benchmark8internallsIA15_cEERNS0_7LogTypeES4_RKT_.exit
	addi.d	$s2, $sp, 112
	st.d	$s2, $sp, 96
	ori	$a0, $zero, 21
	st.d	$a0, $sp, 64
.Ltmp104:                               # EH_LABEL
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 64
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp105:                               # EH_LABEL
# %bb.71:                               # %.noexc314
	ld.d	$a1, $sp, 64
	vld	$vr0, $s5, 0
	st.d	$a0, $sp, 96
	st.d	$a1, $sp, 112
	vst	$vr0, $a0, 0
	st.d	$s4, $a0, 13
	ld.d	$a0, $sp, 96
	st.d	$a1, $sp, 104
	stx.b	$zero, $a0, $a1
.Ltmp107:                               # EH_LABEL
	addi.d	$a1, $sp, 96
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNK7Results5GetAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp108:                               # EH_LABEL
# %bb.72:                               # %_ZNK7Results12GetCounterAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit317
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_76
# %bb.73:
	fadd.d	$fa0, $fa0, $fs1
.Ltmp109:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp110:                               # EH_LABEL
# %bb.74:                               # %_ZN9benchmark8internallsIdEERNS0_7LogTypeES3_RKT_.exit320
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_76
# %bb.75:
.Ltmp111:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.68)
	addi.d	$a1, $a1, %pc_lo12(.L.str.68)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp112:                               # EH_LABEL
.LBB2_76:                               # %_ZN9benchmark8internallsIA3_cEERNS0_7LogTypeES4_RKT_.exit323
	addi.d	$s3, $sp, 80
	st.d	$s3, $sp, 64
	ori	$a0, $zero, 21
	st.d	$a0, $sp, 200
.Ltmp114:                               # EH_LABEL
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 200
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp115:                               # EH_LABEL
# %bb.77:                               # %.noexc326
	ld.d	$a1, $sp, 200
	vld	$vr0, $s5, 0
	st.d	$a0, $sp, 64
	st.d	$a1, $sp, 80
	vst	$vr0, $a0, 0
	st.d	$s4, $a0, 13
	ld.d	$a0, $sp, 64
	st.d	$a1, $sp, 72
	stx.b	$zero, $a0, $a1
.Ltmp117:                               # EH_LABEL
	addi.d	$a1, $sp, 64
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNK7Results5GetAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp118:                               # EH_LABEL
# %bb.78:                               # %_ZNK7Results12GetCounterAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit329
	ld.d	$a0, $s6, 0
	pcalau12i	$s4, %pc_hi20(.LCPI2_3)
	beqz	$a0, .LBB2_82
# %bb.79:
	fld.d	$fa1, $s4, %pc_lo12(.LCPI2_3)
	fadd.d	$fa0, $fa0, $fs1
	fdiv.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fs0
.Ltmp119:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp120:                               # EH_LABEL
# %bb.80:                               # %_ZN9benchmark8internallsIdEERNS0_7LogTypeES3_RKT_.exit332
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_82
# %bb.81:
.Ltmp121:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.71)
	addi.d	$a1, $a1, %pc_lo12(.L.str.71)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp122:                               # EH_LABEL
.LBB2_82:                               # %_ZN9benchmark8internallsIA3_cEERNS0_7LogTypeES4_RKT_.exit335
	ld.d	$a0, $sp, 64
	beq	$a0, $s3, .LBB2_84
# %bb.83:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a1, $sp, 80
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB2_84:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$a0, $sp, 96
	beq	$a0, $s2, .LBB2_86
# %bb.85:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i336
	ld.d	$a1, $sp, 112
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB2_86:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit338
	ld.d	$a0, $sp, 128
	beq	$a0, $s1, .LBB2_88
# %bb.87:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i339
	ld.d	$a1, $sp, 144
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB2_88:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit341
	fcmp.clt.d	$fcc0, $fs2, $fs0
	bceqz	$fcc0, .LBB2_448
# %bb.89:
	ld.d	$a0, $sp, 168
	beq	$a0, $s0, .LBB2_91
# %bb.90:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i351
	ld.d	$a1, $sp, 184
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB2_91:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit353
	st.d	$s0, $sp, 168
	ori	$a0, $zero, 18
	st.d	$a0, $sp, 128
.Ltmp124:                               # EH_LABEL
	addi.d	$a0, $sp, 168
	addi.d	$a1, $sp, 128
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp125:                               # EH_LABEL
# %bb.92:                               # %.noexc356
	ld.d	$a1, $sp, 128
	st.d	$a0, $sp, 168
	st.d	$a1, $sp, 184
	pcalau12i	$a2, %pc_hi20(.L.str.1)
	addi.d	$s6, $a2, %pc_lo12(.L.str.1)
	vld	$vr0, $s6, 0
	ld.h	$s5, $s6, 16
	vst	$vr0, $a0, 0
	st.h	$s5, $a0, 16
	ld.d	$a0, $sp, 168
	st.d	$a1, $sp, 176
	stx.b	$zero, $a0, $a1
.Ltmp127:                               # EH_LABEL
	addi.d	$a1, $sp, 168
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNK7Results5GetAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp128:                               # EH_LABEL
# %bb.93:                               # %_ZNK7Results12GetCounterAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit359
	fadd.d	$fa0, $fa0, $fs1
	fabs.d	$fs2, $fa0
	fcmp.cule.d	$fcc0, $fs0, $fs2
	movcf2gr	$a0, $fcc0
	st.d	$a0, $sp, 24
	bceqz	$fcc0, .LBB2_96
# %bb.94:
.Ltmp130:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.72)
	addi.d	$a1, $a0, %pc_lo12(.L.str.72)
	pcalau12i	$a0, %pc_hi20(.L.str.57)
	addi.d	$a2, $a0, %pc_lo12(.L.str.57)
	pcalau12i	$a0, %pc_hi20(.L__func__._Z14CheckThousandsRK7Results)
	addi.d	$a3, $a0, %pc_lo12(.L__func__._Z14CheckThousandsRK7Results)
	addi.d	$a0, $sp, 56
	ori	$a4, $zero, 175
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal12CheckHandlerC2EPKcS3_S3_i)
	jirl	$ra, $ra, 0
.Ltmp131:                               # EH_LABEL
# %bb.95:
	ld.d	$s7, $sp, 56
	b	.LBB2_97
.LBB2_96:
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	ld.b	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	dbar	20
	pcalau12i	$a1, %pc_hi20(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	addi.d	$s7, $a1, %pc_lo12(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	beqz	$a0, .LBB2_460
.LBB2_97:                               # %_ZN9benchmark8internal18GetNullLogInstanceEv.exit361
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_129
# %bb.98:
.Ltmp132:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.58)
	addi.d	$a1, $a1, %pc_lo12(.L.str.58)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp133:                               # EH_LABEL
# %bb.99:                               # %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit364
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_129
# %bb.100:
.Ltmp134:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.57)
	addi.d	$a1, $a1, %pc_lo12(.L.str.57)
	ori	$a2, $zero, 150
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp135:                               # EH_LABEL
# %bb.101:                              # %_ZN9benchmark8internallsIA151_cEERNS0_7LogTypeES4_RKT_.exit367
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_129
# %bb.102:
.Ltmp136:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.59)
	addi.d	$a1, $a1, %pc_lo12(.L.str.59)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp137:                               # EH_LABEL
# %bb.103:                              # %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit370
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_129
# %bb.104:
.Ltmp139:                               # EH_LABEL
	ori	$a1, $zero, 175
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp140:                               # EH_LABEL
# %bb.105:                              # %_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit373
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_129
# %bb.106:
.Ltmp141:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.60)
	addi.d	$a1, $a1, %pc_lo12(.L.str.60)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp142:                               # EH_LABEL
# %bb.107:                              # %_ZN9benchmark8internallsIA3_cEERNS0_7LogTypeES4_RKT_.exit376
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_129
# %bb.108:
	ld.d	$a1, $fp, 0
	ld.d	$a2, $fp, 8
.Ltmp143:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp144:                               # EH_LABEL
# %bb.109:                              # %_ZN9benchmark8internallsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNS0_7LogTypeES9_RKT_.exit379
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_129
# %bb.110:
.Ltmp145:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.61)
	addi.d	$a1, $a1, %pc_lo12(.L.str.61)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp146:                               # EH_LABEL
# %bb.111:                              # %_ZN9benchmark8internallsIA3_cEERNS0_7LogTypeES4_RKT_.exit382
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_129
# %bb.112:
.Ltmp147:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.57)
	addi.d	$a1, $a1, %pc_lo12(.L.str.57)
	ori	$a2, $zero, 150
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp148:                               # EH_LABEL
# %bb.113:                              # %_ZN9benchmark8internallsIA151_cEERNS0_7LogTypeES4_RKT_.exit385
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_129
# %bb.114:
.Ltmp149:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.59)
	addi.d	$a1, $a1, %pc_lo12(.L.str.59)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp150:                               # EH_LABEL
# %bb.115:                              # %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit388
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_129
# %bb.116:
.Ltmp152:                               # EH_LABEL
	ori	$a1, $zero, 175
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp153:                               # EH_LABEL
# %bb.117:                              # %_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit391
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_129
# %bb.118:
.Ltmp154:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.60)
	addi.d	$a1, $a1, %pc_lo12(.L.str.60)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp155:                               # EH_LABEL
# %bb.119:                              # %_ZN9benchmark8internallsIA3_cEERNS0_7LogTypeES4_RKT_.exit394
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_129
# %bb.120:
.Ltmp156:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.62)
	addi.d	$a1, $a1, %pc_lo12(.L.str.62)
	ori	$a2, $zero, 10
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp157:                               # EH_LABEL
# %bb.121:                              # %_ZN9benchmark8internallsIA11_cEERNS0_7LogTypeES4_RKT_.exit397
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_129
# %bb.122:
.Ltmp158:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.63)
	addi.d	$a1, $a1, %pc_lo12(.L.str.63)
	ori	$a2, $zero, 6
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp159:                               # EH_LABEL
# %bb.123:                              # %_ZN9benchmark8internallsIA7_cEERNS0_7LogTypeES4_RKT_.exit400
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_129
# %bb.124:
.Ltmp160:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.64)
	addi.d	$a1, $a1, %pc_lo12(.L.str.64)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp161:                               # EH_LABEL
# %bb.125:                              # %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit403
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_129
# %bb.126:
.Ltmp162:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a1, $a1, %pc_lo12(.L.str.1)
	ori	$a2, $zero, 18
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp163:                               # EH_LABEL
# %bb.127:                              # %_ZN9benchmark8internallsIA19_cEERNS0_7LogTypeES4_RKT_.exit406
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_129
# %bb.128:
.Ltmp164:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.65)
	addi.d	$a1, $a1, %pc_lo12(.L.str.65)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp165:                               # EH_LABEL
.LBB2_129:                              # %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit409
	st.d	$s1, $sp, 128
	ori	$a0, $zero, 18
	st.d	$a0, $sp, 96
.Ltmp167:                               # EH_LABEL
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 96
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp168:                               # EH_LABEL
# %bb.130:                              # %.noexc412
	ld.d	$a1, $sp, 96
	vld	$vr0, $s6, 0
	st.d	$a0, $sp, 128
	st.d	$a1, $sp, 144
	vst	$vr0, $a0, 0
	st.h	$s5, $a0, 16
	ld.d	$a0, $sp, 128
	st.d	$a1, $sp, 136
	stx.b	$zero, $a0, $a1
.Ltmp170:                               # EH_LABEL
	addi.d	$a1, $sp, 128
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNK7Results5GetAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp171:                               # EH_LABEL
# %bb.131:                              # %_ZNK7Results12GetCounterAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit415
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_159
# %bb.132:
.Ltmp172:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp173:                               # EH_LABEL
# %bb.133:                              # %_ZN9benchmark8internallsIdEERNS0_7LogTypeES3_RKT_.exit418
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_159
# %bb.134:
.Ltmp174:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.66)
	addi.d	$a1, $a1, %pc_lo12(.L.str.66)
	ori	$a2, $zero, 13
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp175:                               # EH_LABEL
# %bb.135:                              # %_ZN9benchmark8internallsIA14_cEERNS0_7LogTypeES4_RKT_.exit421
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_159
# %bb.136:
.Ltmp177:                               # EH_LABEL
	lu12i.w	$a1, 244
	ori	$a1, $a1, 576
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp178:                               # EH_LABEL
# %bb.137:                              # %_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit424
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_159
# %bb.138:
.Ltmp179:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.58)
	addi.d	$a1, $a1, %pc_lo12(.L.str.58)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp180:                               # EH_LABEL
# %bb.139:                              # %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit427
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_159
# %bb.140:
.Ltmp181:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.57)
	addi.d	$a1, $a1, %pc_lo12(.L.str.57)
	ori	$a2, $zero, 150
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp182:                               # EH_LABEL
# %bb.141:                              # %_ZN9benchmark8internallsIA151_cEERNS0_7LogTypeES4_RKT_.exit430
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_159
# %bb.142:
.Ltmp183:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.59)
	addi.d	$a1, $a1, %pc_lo12(.L.str.59)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp184:                               # EH_LABEL
# %bb.143:                              # %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit433
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_159
# %bb.144:
.Ltmp186:                               # EH_LABEL
	ori	$a1, $zero, 175
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp187:                               # EH_LABEL
# %bb.145:                              # %_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit436
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_159
# %bb.146:
.Ltmp188:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.60)
	addi.d	$a1, $a1, %pc_lo12(.L.str.60)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp189:                               # EH_LABEL
# %bb.147:                              # %_ZN9benchmark8internallsIA3_cEERNS0_7LogTypeES4_RKT_.exit439
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_159
# %bb.148:
.Ltmp190:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.67)
	addi.d	$a1, $a1, %pc_lo12(.L.str.67)
	ori	$a2, $zero, 18
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp191:                               # EH_LABEL
# %bb.149:                              # %_ZN9benchmark8internallsIA19_cEERNS0_7LogTypeES4_RKT_.exit442
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_159
# %bb.150:
.Ltmp193:                               # EH_LABEL
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp194:                               # EH_LABEL
# %bb.151:                              # %_ZN9benchmark8internallsIdEERNS0_7LogTypeES3_RKT_.exit445
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_159
# %bb.152:
.Ltmp195:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.68)
	addi.d	$a1, $a1, %pc_lo12(.L.str.68)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp196:                               # EH_LABEL
# %bb.153:                              # %_ZN9benchmark8internallsIA3_cEERNS0_7LogTypeES4_RKT_.exit448
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_159
# %bb.154:
.Ltmp198:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.LCPI2_2)
	fld.d	$fa0, $a1, %pc_lo12(.LCPI2_2)
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp199:                               # EH_LABEL
# %bb.155:                              # %_ZN9benchmark8internallsIdEERNS0_7LogTypeES3_RKT_.exit451
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_159
# %bb.156:
.Ltmp200:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.69)
	addi.d	$a1, $a1, %pc_lo12(.L.str.69)
	ori	$a2, $zero, 4
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp201:                               # EH_LABEL
# %bb.157:                              # %_ZN9benchmark8internallsIA5_cEERNS0_7LogTypeES4_RKT_.exit454
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_159
# %bb.158:
.Ltmp202:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.70)
	addi.d	$a1, $a1, %pc_lo12(.L.str.70)
	ori	$a2, $zero, 14
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp203:                               # EH_LABEL
.LBB2_159:                              # %_ZN9benchmark8internallsIA15_cEERNS0_7LogTypeES4_RKT_.exit457
	st.d	$s2, $sp, 96
	ori	$a0, $zero, 18
	st.d	$a0, $sp, 64
.Ltmp205:                               # EH_LABEL
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 64
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp206:                               # EH_LABEL
# %bb.160:                              # %.noexc460
	ld.d	$a1, $sp, 64
	vld	$vr0, $s6, 0
	st.d	$a0, $sp, 96
	st.d	$a1, $sp, 112
	vst	$vr0, $a0, 0
	st.h	$s5, $a0, 16
	ld.d	$a0, $sp, 96
	st.d	$a1, $sp, 104
	stx.b	$zero, $a0, $a1
.Ltmp208:                               # EH_LABEL
	addi.d	$a1, $sp, 96
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNK7Results5GetAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp209:                               # EH_LABEL
# %bb.161:                              # %_ZNK7Results12GetCounterAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit463
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_165
# %bb.162:
	fadd.d	$fa0, $fa0, $fs1
.Ltmp210:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp211:                               # EH_LABEL
# %bb.163:                              # %_ZN9benchmark8internallsIdEERNS0_7LogTypeES3_RKT_.exit466
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_165
# %bb.164:
.Ltmp212:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.68)
	addi.d	$a1, $a1, %pc_lo12(.L.str.68)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp213:                               # EH_LABEL
.LBB2_165:                              # %_ZN9benchmark8internallsIA3_cEERNS0_7LogTypeES4_RKT_.exit469
	st.d	$s3, $sp, 64
	ori	$a0, $zero, 18
	st.d	$a0, $sp, 200
.Ltmp215:                               # EH_LABEL
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 200
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp216:                               # EH_LABEL
# %bb.166:                              # %.noexc472
	ld.d	$a1, $sp, 200
	vld	$vr0, $s6, 0
	st.d	$a0, $sp, 64
	st.d	$a1, $sp, 80
	vst	$vr0, $a0, 0
	st.h	$s5, $a0, 16
	ld.d	$a0, $sp, 64
	st.d	$a1, $sp, 72
	stx.b	$zero, $a0, $a1
.Ltmp218:                               # EH_LABEL
	addi.d	$a1, $sp, 64
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNK7Results5GetAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp219:                               # EH_LABEL
# %bb.167:                              # %_ZNK7Results12GetCounterAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit475
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_171
# %bb.168:
	fld.d	$fa1, $s4, %pc_lo12(.LCPI2_3)
	fadd.d	$fa0, $fa0, $fs1
	fdiv.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fs0
.Ltmp220:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp221:                               # EH_LABEL
# %bb.169:                              # %_ZN9benchmark8internallsIdEERNS0_7LogTypeES3_RKT_.exit478
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_171
# %bb.170:
.Ltmp222:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.71)
	addi.d	$a1, $a1, %pc_lo12(.L.str.71)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp223:                               # EH_LABEL
.LBB2_171:                              # %_ZN9benchmark8internallsIA3_cEERNS0_7LogTypeES4_RKT_.exit481
	ld.d	$a0, $sp, 64
	beq	$a0, $s3, .LBB2_173
# %bb.172:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i482
	ld.d	$a1, $sp, 80
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB2_173:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit484
	ld.d	$a0, $sp, 96
	beq	$a0, $s2, .LBB2_175
# %bb.174:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i485
	ld.d	$a1, $sp, 112
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB2_175:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit487
	ld.d	$a0, $sp, 128
	beq	$a0, $s1, .LBB2_177
# %bb.176:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i488
	ld.d	$a1, $sp, 144
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB2_177:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit490
	fcmp.clt.d	$fcc0, $fs2, $fs0
	bceqz	$fcc0, .LBB2_450
# %bb.178:
	ld.d	$a0, $sp, 168
	beq	$a0, $s0, .LBB2_180
# %bb.179:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i503
	ld.d	$a1, $sp, 184
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB2_180:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit505
	st.d	$s0, $sp, 168
	ori	$a0, $zero, 18
	st.d	$a0, $sp, 128
.Ltmp225:                               # EH_LABEL
	addi.d	$a0, $sp, 168
	addi.d	$a1, $sp, 128
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp226:                               # EH_LABEL
# %bb.181:                              # %.noexc508
	ld.d	$a1, $sp, 128
	st.d	$a0, $sp, 168
	st.d	$a1, $sp, 184
	pcalau12i	$a2, %pc_hi20(.L.str.2)
	addi.d	$s6, $a2, %pc_lo12(.L.str.2)
	vld	$vr0, $s6, 0
	ld.h	$s5, $s6, 16
	vst	$vr0, $a0, 0
	st.h	$s5, $a0, 16
	ld.d	$a0, $sp, 168
	st.d	$a1, $sp, 176
	stx.b	$zero, $a0, $a1
.Ltmp228:                               # EH_LABEL
	addi.d	$a1, $sp, 168
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNK7Results5GetAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp229:                               # EH_LABEL
# %bb.182:                              # %_ZNK7Results12GetCounterAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit511
	fadd.d	$fa0, $fa0, $fs1
	fabs.d	$fs2, $fa0
	fcmp.cule.d	$fcc0, $fs0, $fs2
	movcf2gr	$a0, $fcc0
	st.d	$a0, $sp, 24
	bceqz	$fcc0, .LBB2_185
# %bb.183:
.Ltmp231:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.73)
	addi.d	$a1, $a0, %pc_lo12(.L.str.73)
	pcalau12i	$a0, %pc_hi20(.L.str.57)
	addi.d	$a2, $a0, %pc_lo12(.L.str.57)
	pcalau12i	$a0, %pc_hi20(.L__func__._Z14CheckThousandsRK7Results)
	addi.d	$a3, $a0, %pc_lo12(.L__func__._Z14CheckThousandsRK7Results)
	addi.d	$a0, $sp, 48
	ori	$a4, $zero, 176
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal12CheckHandlerC2EPKcS3_S3_i)
	jirl	$ra, $ra, 0
.Ltmp232:                               # EH_LABEL
# %bb.184:
	ld.d	$s7, $sp, 48
	b	.LBB2_186
.LBB2_185:
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	ld.b	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	dbar	20
	pcalau12i	$a1, %pc_hi20(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	addi.d	$s7, $a1, %pc_lo12(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	beqz	$a0, .LBB2_462
.LBB2_186:                              # %_ZN9benchmark8internal18GetNullLogInstanceEv.exit513
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_218
# %bb.187:
.Ltmp233:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.58)
	addi.d	$a1, $a1, %pc_lo12(.L.str.58)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp234:                               # EH_LABEL
# %bb.188:                              # %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit516
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_218
# %bb.189:
.Ltmp235:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.57)
	addi.d	$a1, $a1, %pc_lo12(.L.str.57)
	ori	$a2, $zero, 150
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp236:                               # EH_LABEL
# %bb.190:                              # %_ZN9benchmark8internallsIA151_cEERNS0_7LogTypeES4_RKT_.exit519
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_218
# %bb.191:
.Ltmp237:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.59)
	addi.d	$a1, $a1, %pc_lo12(.L.str.59)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp238:                               # EH_LABEL
# %bb.192:                              # %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit522
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_218
# %bb.193:
.Ltmp240:                               # EH_LABEL
	ori	$a1, $zero, 176
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp241:                               # EH_LABEL
# %bb.194:                              # %_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit525
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_218
# %bb.195:
.Ltmp242:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.60)
	addi.d	$a1, $a1, %pc_lo12(.L.str.60)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp243:                               # EH_LABEL
# %bb.196:                              # %_ZN9benchmark8internallsIA3_cEERNS0_7LogTypeES4_RKT_.exit528
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_218
# %bb.197:
	ld.d	$a1, $fp, 0
	ld.d	$a2, $fp, 8
.Ltmp244:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp245:                               # EH_LABEL
# %bb.198:                              # %_ZN9benchmark8internallsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNS0_7LogTypeES9_RKT_.exit531
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_218
# %bb.199:
.Ltmp246:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.61)
	addi.d	$a1, $a1, %pc_lo12(.L.str.61)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp247:                               # EH_LABEL
# %bb.200:                              # %_ZN9benchmark8internallsIA3_cEERNS0_7LogTypeES4_RKT_.exit534
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_218
# %bb.201:
.Ltmp248:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.57)
	addi.d	$a1, $a1, %pc_lo12(.L.str.57)
	ori	$a2, $zero, 150
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp249:                               # EH_LABEL
# %bb.202:                              # %_ZN9benchmark8internallsIA151_cEERNS0_7LogTypeES4_RKT_.exit537
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_218
# %bb.203:
.Ltmp250:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.59)
	addi.d	$a1, $a1, %pc_lo12(.L.str.59)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp251:                               # EH_LABEL
# %bb.204:                              # %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit540
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_218
# %bb.205:
.Ltmp253:                               # EH_LABEL
	ori	$a1, $zero, 176
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp254:                               # EH_LABEL
# %bb.206:                              # %_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit543
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_218
# %bb.207:
.Ltmp255:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.60)
	addi.d	$a1, $a1, %pc_lo12(.L.str.60)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp256:                               # EH_LABEL
# %bb.208:                              # %_ZN9benchmark8internallsIA3_cEERNS0_7LogTypeES4_RKT_.exit546
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_218
# %bb.209:
.Ltmp257:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.62)
	addi.d	$a1, $a1, %pc_lo12(.L.str.62)
	ori	$a2, $zero, 10
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp258:                               # EH_LABEL
# %bb.210:                              # %_ZN9benchmark8internallsIA11_cEERNS0_7LogTypeES4_RKT_.exit549
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_218
# %bb.211:
.Ltmp259:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.63)
	addi.d	$a1, $a1, %pc_lo12(.L.str.63)
	ori	$a2, $zero, 6
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp260:                               # EH_LABEL
# %bb.212:                              # %_ZN9benchmark8internallsIA7_cEERNS0_7LogTypeES4_RKT_.exit552
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_218
# %bb.213:
.Ltmp261:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.64)
	addi.d	$a1, $a1, %pc_lo12(.L.str.64)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp262:                               # EH_LABEL
# %bb.214:                              # %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit555
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_218
# %bb.215:
.Ltmp263:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	ori	$a2, $zero, 18
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp264:                               # EH_LABEL
# %bb.216:                              # %_ZN9benchmark8internallsIA19_cEERNS0_7LogTypeES4_RKT_.exit558
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_218
# %bb.217:
.Ltmp265:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.65)
	addi.d	$a1, $a1, %pc_lo12(.L.str.65)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp266:                               # EH_LABEL
.LBB2_218:                              # %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit561
	st.d	$s1, $sp, 128
	ori	$a0, $zero, 18
	st.d	$a0, $sp, 96
.Ltmp268:                               # EH_LABEL
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 96
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp269:                               # EH_LABEL
# %bb.219:                              # %.noexc564
	ld.d	$a1, $sp, 96
	vld	$vr0, $s6, 0
	st.d	$a0, $sp, 128
	st.d	$a1, $sp, 144
	vst	$vr0, $a0, 0
	st.h	$s5, $a0, 16
	ld.d	$a0, $sp, 128
	st.d	$a1, $sp, 136
	stx.b	$zero, $a0, $a1
.Ltmp271:                               # EH_LABEL
	addi.d	$a1, $sp, 128
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNK7Results5GetAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp272:                               # EH_LABEL
# %bb.220:                              # %_ZNK7Results12GetCounterAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit567
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_248
# %bb.221:
.Ltmp273:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp274:                               # EH_LABEL
# %bb.222:                              # %_ZN9benchmark8internallsIdEERNS0_7LogTypeES3_RKT_.exit570
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_248
# %bb.223:
.Ltmp275:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.66)
	addi.d	$a1, $a1, %pc_lo12(.L.str.66)
	ori	$a2, $zero, 13
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp276:                               # EH_LABEL
# %bb.224:                              # %_ZN9benchmark8internallsIA14_cEERNS0_7LogTypeES4_RKT_.exit573
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_248
# %bb.225:
.Ltmp278:                               # EH_LABEL
	lu12i.w	$a1, 244
	ori	$a1, $a1, 576
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp279:                               # EH_LABEL
# %bb.226:                              # %_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit576
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_248
# %bb.227:
.Ltmp280:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.58)
	addi.d	$a1, $a1, %pc_lo12(.L.str.58)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp281:                               # EH_LABEL
# %bb.228:                              # %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit579
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_248
# %bb.229:
.Ltmp282:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.57)
	addi.d	$a1, $a1, %pc_lo12(.L.str.57)
	ori	$a2, $zero, 150
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp283:                               # EH_LABEL
# %bb.230:                              # %_ZN9benchmark8internallsIA151_cEERNS0_7LogTypeES4_RKT_.exit582
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_248
# %bb.231:
.Ltmp284:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.59)
	addi.d	$a1, $a1, %pc_lo12(.L.str.59)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp285:                               # EH_LABEL
# %bb.232:                              # %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit585
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_248
# %bb.233:
.Ltmp287:                               # EH_LABEL
	ori	$a1, $zero, 176
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp288:                               # EH_LABEL
# %bb.234:                              # %_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit588
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_248
# %bb.235:
.Ltmp289:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.60)
	addi.d	$a1, $a1, %pc_lo12(.L.str.60)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp290:                               # EH_LABEL
# %bb.236:                              # %_ZN9benchmark8internallsIA3_cEERNS0_7LogTypeES4_RKT_.exit591
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_248
# %bb.237:
.Ltmp291:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.67)
	addi.d	$a1, $a1, %pc_lo12(.L.str.67)
	ori	$a2, $zero, 18
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp292:                               # EH_LABEL
# %bb.238:                              # %_ZN9benchmark8internallsIA19_cEERNS0_7LogTypeES4_RKT_.exit594
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_248
# %bb.239:
.Ltmp294:                               # EH_LABEL
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp295:                               # EH_LABEL
# %bb.240:                              # %_ZN9benchmark8internallsIdEERNS0_7LogTypeES3_RKT_.exit597
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_248
# %bb.241:
.Ltmp296:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.68)
	addi.d	$a1, $a1, %pc_lo12(.L.str.68)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp297:                               # EH_LABEL
# %bb.242:                              # %_ZN9benchmark8internallsIA3_cEERNS0_7LogTypeES4_RKT_.exit600
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_248
# %bb.243:
.Ltmp299:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.LCPI2_2)
	fld.d	$fa0, $a1, %pc_lo12(.LCPI2_2)
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp300:                               # EH_LABEL
# %bb.244:                              # %_ZN9benchmark8internallsIdEERNS0_7LogTypeES3_RKT_.exit603
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_248
# %bb.245:
.Ltmp301:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.69)
	addi.d	$a1, $a1, %pc_lo12(.L.str.69)
	ori	$a2, $zero, 4
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp302:                               # EH_LABEL
# %bb.246:                              # %_ZN9benchmark8internallsIA5_cEERNS0_7LogTypeES4_RKT_.exit606
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_248
# %bb.247:
.Ltmp303:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.70)
	addi.d	$a1, $a1, %pc_lo12(.L.str.70)
	ori	$a2, $zero, 14
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp304:                               # EH_LABEL
.LBB2_248:                              # %_ZN9benchmark8internallsIA15_cEERNS0_7LogTypeES4_RKT_.exit609
	st.d	$s2, $sp, 96
	ori	$a0, $zero, 18
	st.d	$a0, $sp, 64
.Ltmp306:                               # EH_LABEL
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 64
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp307:                               # EH_LABEL
# %bb.249:                              # %.noexc612
	ld.d	$a1, $sp, 64
	vld	$vr0, $s6, 0
	st.d	$a0, $sp, 96
	st.d	$a1, $sp, 112
	vst	$vr0, $a0, 0
	st.h	$s5, $a0, 16
	ld.d	$a0, $sp, 96
	st.d	$a1, $sp, 104
	stx.b	$zero, $a0, $a1
.Ltmp309:                               # EH_LABEL
	addi.d	$a1, $sp, 96
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNK7Results5GetAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp310:                               # EH_LABEL
# %bb.250:                              # %_ZNK7Results12GetCounterAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit615
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_254
# %bb.251:
	fadd.d	$fa0, $fa0, $fs1
.Ltmp311:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp312:                               # EH_LABEL
# %bb.252:                              # %_ZN9benchmark8internallsIdEERNS0_7LogTypeES3_RKT_.exit618
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_254
# %bb.253:
.Ltmp313:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.68)
	addi.d	$a1, $a1, %pc_lo12(.L.str.68)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp314:                               # EH_LABEL
.LBB2_254:                              # %_ZN9benchmark8internallsIA3_cEERNS0_7LogTypeES4_RKT_.exit621
	st.d	$s3, $sp, 64
	ori	$a0, $zero, 18
	st.d	$a0, $sp, 200
.Ltmp316:                               # EH_LABEL
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 200
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp317:                               # EH_LABEL
# %bb.255:                              # %.noexc624
	ld.d	$a1, $sp, 200
	vld	$vr0, $s6, 0
	st.d	$a0, $sp, 64
	st.d	$a1, $sp, 80
	vst	$vr0, $a0, 0
	st.h	$s5, $a0, 16
	ld.d	$a0, $sp, 64
	st.d	$a1, $sp, 72
	stx.b	$zero, $a0, $a1
.Ltmp319:                               # EH_LABEL
	addi.d	$a1, $sp, 64
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNK7Results5GetAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp320:                               # EH_LABEL
# %bb.256:                              # %_ZNK7Results12GetCounterAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit627
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_260
# %bb.257:
	fld.d	$fa1, $s4, %pc_lo12(.LCPI2_3)
	fadd.d	$fa0, $fa0, $fs1
	fdiv.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fs0
.Ltmp321:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp322:                               # EH_LABEL
# %bb.258:                              # %_ZN9benchmark8internallsIdEERNS0_7LogTypeES3_RKT_.exit630
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_260
# %bb.259:
.Ltmp323:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.71)
	addi.d	$a1, $a1, %pc_lo12(.L.str.71)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp324:                               # EH_LABEL
.LBB2_260:                              # %_ZN9benchmark8internallsIA3_cEERNS0_7LogTypeES4_RKT_.exit633
	ld.d	$a0, $sp, 64
	beq	$a0, $s3, .LBB2_262
# %bb.261:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i634
	ld.d	$a1, $sp, 80
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB2_262:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit636
	ld.d	$a0, $sp, 96
	beq	$a0, $s2, .LBB2_264
# %bb.263:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i637
	ld.d	$a1, $sp, 112
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB2_264:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit639
	ld.d	$a0, $sp, 128
	beq	$a0, $s1, .LBB2_266
# %bb.265:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i640
	ld.d	$a1, $sp, 144
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB2_266:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit642
	fcmp.clt.d	$fcc0, $fs2, $fs0
	bceqz	$fcc0, .LBB2_452
# %bb.267:
	ld.d	$a0, $sp, 168
	beq	$a0, $s0, .LBB2_269
# %bb.268:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i655
	ld.d	$a1, $sp, 184
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB2_269:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit657
	st.d	$s0, $sp, 168
	ori	$a0, $zero, 18
	st.d	$a0, $sp, 128
.Ltmp326:                               # EH_LABEL
	addi.d	$a0, $sp, 168
	addi.d	$a1, $sp, 128
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp327:                               # EH_LABEL
# %bb.270:                              # %.noexc660
	ld.d	$a1, $sp, 128
	st.d	$a0, $sp, 168
	st.d	$a1, $sp, 184
	pcalau12i	$a2, %pc_hi20(.L.str.3)
	addi.d	$s5, $a2, %pc_lo12(.L.str.3)
	vld	$vr0, $s5, 0
	ld.h	$s4, $s5, 16
	vst	$vr0, $a0, 0
	st.h	$s4, $a0, 16
	ld.d	$a0, $sp, 168
	st.d	$a1, $sp, 176
	stx.b	$zero, $a0, $a1
.Ltmp329:                               # EH_LABEL
	addi.d	$a1, $sp, 168
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNK7Results5GetAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp330:                               # EH_LABEL
# %bb.271:                              # %_ZNK7Results12GetCounterAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit663
	pcalau12i	$a0, %pc_hi20(.LCPI2_4)
	fld.d	$fs2, $a0, %pc_lo12(.LCPI2_4)
	pcalau12i	$a0, %pc_hi20(.LCPI2_5)
	fld.d	$fs1, $a0, %pc_lo12(.LCPI2_5)
	fadd.d	$fa0, $fa0, $fs2
	fabs.d	$fs3, $fa0
	fcmp.cule.d	$fcc0, $fs1, $fs3
	movcf2gr	$a0, $fcc0
	st.d	$a0, $sp, 24
	bceqz	$fcc0, .LBB2_274
# %bb.272:
.Ltmp332:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.74)
	addi.d	$a1, $a0, %pc_lo12(.L.str.74)
	pcalau12i	$a0, %pc_hi20(.L.str.57)
	addi.d	$a2, $a0, %pc_lo12(.L.str.57)
	pcalau12i	$a0, %pc_hi20(.L__func__._Z14CheckThousandsRK7Results)
	addi.d	$a3, $a0, %pc_lo12(.L__func__._Z14CheckThousandsRK7Results)
	addi.d	$a0, $sp, 40
	ori	$a4, $zero, 177
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal12CheckHandlerC2EPKcS3_S3_i)
	jirl	$ra, $ra, 0
.Ltmp333:                               # EH_LABEL
# %bb.273:
	ld.d	$s6, $sp, 40
	b	.LBB2_275
.LBB2_274:
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	ld.b	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	dbar	20
	pcalau12i	$a1, %pc_hi20(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	addi.d	$s6, $a1, %pc_lo12(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	beqz	$a0, .LBB2_464
.LBB2_275:                              # %_ZN9benchmark8internal18GetNullLogInstanceEv.exit665
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_307
# %bb.276:
.Ltmp334:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.58)
	addi.d	$a1, $a1, %pc_lo12(.L.str.58)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp335:                               # EH_LABEL
# %bb.277:                              # %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit668
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_307
# %bb.278:
.Ltmp336:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.57)
	addi.d	$a1, $a1, %pc_lo12(.L.str.57)
	ori	$a2, $zero, 150
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp337:                               # EH_LABEL
# %bb.279:                              # %_ZN9benchmark8internallsIA151_cEERNS0_7LogTypeES4_RKT_.exit671
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_307
# %bb.280:
.Ltmp338:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.59)
	addi.d	$a1, $a1, %pc_lo12(.L.str.59)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp339:                               # EH_LABEL
# %bb.281:                              # %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit674
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_307
# %bb.282:
.Ltmp341:                               # EH_LABEL
	ori	$a1, $zero, 177
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp342:                               # EH_LABEL
# %bb.283:                              # %_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit677
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_307
# %bb.284:
.Ltmp343:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.60)
	addi.d	$a1, $a1, %pc_lo12(.L.str.60)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp344:                               # EH_LABEL
# %bb.285:                              # %_ZN9benchmark8internallsIA3_cEERNS0_7LogTypeES4_RKT_.exit680
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_307
# %bb.286:
	ld.d	$a1, $fp, 0
	ld.d	$a2, $fp, 8
.Ltmp345:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp346:                               # EH_LABEL
# %bb.287:                              # %_ZN9benchmark8internallsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNS0_7LogTypeES9_RKT_.exit683
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_307
# %bb.288:
.Ltmp347:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.61)
	addi.d	$a1, $a1, %pc_lo12(.L.str.61)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp348:                               # EH_LABEL
# %bb.289:                              # %_ZN9benchmark8internallsIA3_cEERNS0_7LogTypeES4_RKT_.exit686
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_307
# %bb.290:
.Ltmp349:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.57)
	addi.d	$a1, $a1, %pc_lo12(.L.str.57)
	ori	$a2, $zero, 150
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp350:                               # EH_LABEL
# %bb.291:                              # %_ZN9benchmark8internallsIA151_cEERNS0_7LogTypeES4_RKT_.exit689
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_307
# %bb.292:
.Ltmp351:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.59)
	addi.d	$a1, $a1, %pc_lo12(.L.str.59)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp352:                               # EH_LABEL
# %bb.293:                              # %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit692
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_307
# %bb.294:
.Ltmp354:                               # EH_LABEL
	ori	$a1, $zero, 177
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp355:                               # EH_LABEL
# %bb.295:                              # %_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit695
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_307
# %bb.296:
.Ltmp356:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.60)
	addi.d	$a1, $a1, %pc_lo12(.L.str.60)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp357:                               # EH_LABEL
# %bb.297:                              # %_ZN9benchmark8internallsIA3_cEERNS0_7LogTypeES4_RKT_.exit698
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_307
# %bb.298:
.Ltmp358:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.62)
	addi.d	$a1, $a1, %pc_lo12(.L.str.62)
	ori	$a2, $zero, 10
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp359:                               # EH_LABEL
# %bb.299:                              # %_ZN9benchmark8internallsIA11_cEERNS0_7LogTypeES4_RKT_.exit701
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_307
# %bb.300:
.Ltmp360:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.63)
	addi.d	$a1, $a1, %pc_lo12(.L.str.63)
	ori	$a2, $zero, 6
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp361:                               # EH_LABEL
# %bb.301:                              # %_ZN9benchmark8internallsIA7_cEERNS0_7LogTypeES4_RKT_.exit704
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_307
# %bb.302:
.Ltmp362:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.64)
	addi.d	$a1, $a1, %pc_lo12(.L.str.64)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp363:                               # EH_LABEL
# %bb.303:                              # %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit707
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_307
# %bb.304:
.Ltmp364:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	ori	$a2, $zero, 18
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp365:                               # EH_LABEL
# %bb.305:                              # %_ZN9benchmark8internallsIA19_cEERNS0_7LogTypeES4_RKT_.exit710
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_307
# %bb.306:
.Ltmp366:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.65)
	addi.d	$a1, $a1, %pc_lo12(.L.str.65)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp367:                               # EH_LABEL
.LBB2_307:                              # %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit713
	st.d	$s1, $sp, 128
	ori	$a0, $zero, 18
	st.d	$a0, $sp, 96
.Ltmp369:                               # EH_LABEL
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 96
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp370:                               # EH_LABEL
# %bb.308:                              # %.noexc716
	ld.d	$a1, $sp, 96
	vld	$vr0, $s5, 0
	st.d	$a0, $sp, 128
	st.d	$a1, $sp, 144
	vst	$vr0, $a0, 0
	st.h	$s4, $a0, 16
	ld.d	$a0, $sp, 128
	st.d	$a1, $sp, 136
	stx.b	$zero, $a0, $a1
.Ltmp372:                               # EH_LABEL
	addi.d	$a1, $sp, 128
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNK7Results5GetAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp373:                               # EH_LABEL
# %bb.309:                              # %_ZNK7Results12GetCounterAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit719
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_337
# %bb.310:
.Ltmp374:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp375:                               # EH_LABEL
# %bb.311:                              # %_ZN9benchmark8internallsIdEERNS0_7LogTypeES3_RKT_.exit722
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_337
# %bb.312:
.Ltmp376:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.66)
	addi.d	$a1, $a1, %pc_lo12(.L.str.66)
	ori	$a2, $zero, 13
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp377:                               # EH_LABEL
# %bb.313:                              # %_ZN9benchmark8internallsIA14_cEERNS0_7LogTypeES4_RKT_.exit725
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_337
# %bb.314:
.Ltmp379:                               # EH_LABEL
	lu12i.w	$a1, 256
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp380:                               # EH_LABEL
# %bb.315:                              # %_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit728
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_337
# %bb.316:
.Ltmp381:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.58)
	addi.d	$a1, $a1, %pc_lo12(.L.str.58)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp382:                               # EH_LABEL
# %bb.317:                              # %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit731
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_337
# %bb.318:
.Ltmp383:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.57)
	addi.d	$a1, $a1, %pc_lo12(.L.str.57)
	ori	$a2, $zero, 150
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp384:                               # EH_LABEL
# %bb.319:                              # %_ZN9benchmark8internallsIA151_cEERNS0_7LogTypeES4_RKT_.exit734
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_337
# %bb.320:
.Ltmp385:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.59)
	addi.d	$a1, $a1, %pc_lo12(.L.str.59)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp386:                               # EH_LABEL
# %bb.321:                              # %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit737
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_337
# %bb.322:
.Ltmp388:                               # EH_LABEL
	ori	$a1, $zero, 177
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp389:                               # EH_LABEL
# %bb.323:                              # %_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit740
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_337
# %bb.324:
.Ltmp390:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.60)
	addi.d	$a1, $a1, %pc_lo12(.L.str.60)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp391:                               # EH_LABEL
# %bb.325:                              # %_ZN9benchmark8internallsIA3_cEERNS0_7LogTypeES4_RKT_.exit743
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_337
# %bb.326:
.Ltmp392:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.67)
	addi.d	$a1, $a1, %pc_lo12(.L.str.67)
	ori	$a2, $zero, 18
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp393:                               # EH_LABEL
# %bb.327:                              # %_ZN9benchmark8internallsIA19_cEERNS0_7LogTypeES4_RKT_.exit746
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_337
# %bb.328:
.Ltmp395:                               # EH_LABEL
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp396:                               # EH_LABEL
# %bb.329:                              # %_ZN9benchmark8internallsIdEERNS0_7LogTypeES3_RKT_.exit749
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_337
# %bb.330:
.Ltmp397:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.68)
	addi.d	$a1, $a1, %pc_lo12(.L.str.68)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp398:                               # EH_LABEL
# %bb.331:                              # %_ZN9benchmark8internallsIA3_cEERNS0_7LogTypeES4_RKT_.exit752
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_337
# %bb.332:
.Ltmp400:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.LCPI2_2)
	fld.d	$fa0, $a1, %pc_lo12(.LCPI2_2)
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp401:                               # EH_LABEL
# %bb.333:                              # %_ZN9benchmark8internallsIdEERNS0_7LogTypeES3_RKT_.exit755
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_337
# %bb.334:
.Ltmp402:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.69)
	addi.d	$a1, $a1, %pc_lo12(.L.str.69)
	ori	$a2, $zero, 4
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp403:                               # EH_LABEL
# %bb.335:                              # %_ZN9benchmark8internallsIA5_cEERNS0_7LogTypeES4_RKT_.exit758
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_337
# %bb.336:
.Ltmp404:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.70)
	addi.d	$a1, $a1, %pc_lo12(.L.str.70)
	ori	$a2, $zero, 14
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp405:                               # EH_LABEL
.LBB2_337:                              # %_ZN9benchmark8internallsIA15_cEERNS0_7LogTypeES4_RKT_.exit761
	st.d	$s2, $sp, 96
	ori	$a0, $zero, 18
	st.d	$a0, $sp, 64
.Ltmp407:                               # EH_LABEL
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 64
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp408:                               # EH_LABEL
# %bb.338:                              # %.noexc764
	ld.d	$a1, $sp, 64
	vld	$vr0, $s5, 0
	st.d	$a0, $sp, 96
	st.d	$a1, $sp, 112
	vst	$vr0, $a0, 0
	st.h	$s4, $a0, 16
	ld.d	$a0, $sp, 96
	st.d	$a1, $sp, 104
	stx.b	$zero, $a0, $a1
.Ltmp410:                               # EH_LABEL
	addi.d	$a1, $sp, 96
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNK7Results5GetAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp411:                               # EH_LABEL
# %bb.339:                              # %_ZNK7Results12GetCounterAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit767
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_343
# %bb.340:
	fadd.d	$fa0, $fa0, $fs2
.Ltmp412:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp413:                               # EH_LABEL
# %bb.341:                              # %_ZN9benchmark8internallsIdEERNS0_7LogTypeES3_RKT_.exit770
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_343
# %bb.342:
.Ltmp414:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.68)
	addi.d	$a1, $a1, %pc_lo12(.L.str.68)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp415:                               # EH_LABEL
.LBB2_343:                              # %_ZN9benchmark8internallsIA3_cEERNS0_7LogTypeES4_RKT_.exit773
	st.d	$s3, $sp, 64
	ori	$a0, $zero, 18
	st.d	$a0, $sp, 200
.Ltmp417:                               # EH_LABEL
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 200
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp418:                               # EH_LABEL
# %bb.344:                              # %.noexc776
	ld.d	$a1, $sp, 200
	vld	$vr0, $s5, 0
	st.d	$a0, $sp, 64
	st.d	$a1, $sp, 80
	vst	$vr0, $a0, 0
	st.h	$s4, $a0, 16
	ld.d	$a0, $sp, 64
	st.d	$a1, $sp, 72
	stx.b	$zero, $a0, $a1
.Ltmp420:                               # EH_LABEL
	addi.d	$a1, $sp, 64
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNK7Results5GetAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp421:                               # EH_LABEL
# %bb.345:                              # %_ZNK7Results12GetCounterAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit779
	ld.d	$a0, $s6, 0
	pcalau12i	$s4, %pc_hi20(.LCPI2_6)
	beqz	$a0, .LBB2_349
# %bb.346:
	fld.d	$fa1, $s4, %pc_lo12(.LCPI2_6)
	fadd.d	$fa0, $fa0, $fs2
	fmul.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fs0
.Ltmp422:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp423:                               # EH_LABEL
# %bb.347:                              # %_ZN9benchmark8internallsIdEERNS0_7LogTypeES3_RKT_.exit782
	ld.d	$a0, $s6, 0
	beqz	$a0, .LBB2_349
# %bb.348:
.Ltmp424:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.71)
	addi.d	$a1, $a1, %pc_lo12(.L.str.71)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp425:                               # EH_LABEL
.LBB2_349:                              # %_ZN9benchmark8internallsIA3_cEERNS0_7LogTypeES4_RKT_.exit785
	ld.d	$a0, $sp, 64
	beq	$a0, $s3, .LBB2_351
# %bb.350:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i786
	ld.d	$a1, $sp, 80
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB2_351:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit788
	ld.d	$a0, $sp, 96
	beq	$a0, $s2, .LBB2_353
# %bb.352:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i789
	ld.d	$a1, $sp, 112
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB2_353:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit791
	ld.d	$a0, $sp, 128
	beq	$a0, $s1, .LBB2_355
# %bb.354:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i792
	ld.d	$a1, $sp, 144
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB2_355:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit794
	fcmp.clt.d	$fcc0, $fs3, $fs1
	bceqz	$fcc0, .LBB2_454
# %bb.356:
	ld.d	$a0, $sp, 168
	beq	$a0, $s0, .LBB2_358
# %bb.357:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i807
	ld.d	$a1, $sp, 184
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB2_358:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit809
	st.d	$s0, $sp, 168
	ori	$a0, $zero, 18
	st.d	$a0, $sp, 128
.Ltmp427:                               # EH_LABEL
	addi.d	$a0, $sp, 168
	addi.d	$a1, $sp, 128
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp428:                               # EH_LABEL
# %bb.359:                              # %.noexc812
	ld.d	$a1, $sp, 128
	st.d	$a0, $sp, 168
	st.d	$a1, $sp, 184
	pcalau12i	$a2, %pc_hi20(.L.str.4)
	addi.d	$s6, $a2, %pc_lo12(.L.str.4)
	vld	$vr0, $s6, 0
	ld.h	$s5, $s6, 16
	vst	$vr0, $a0, 0
	st.h	$s5, $a0, 16
	ld.d	$a0, $sp, 168
	st.d	$a1, $sp, 176
	stx.b	$zero, $a0, $a1
.Ltmp430:                               # EH_LABEL
	addi.d	$a1, $sp, 168
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNK7Results5GetAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp431:                               # EH_LABEL
# %bb.360:                              # %_ZNK7Results12GetCounterAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit815
	fadd.d	$fa0, $fa0, $fs2
	fabs.d	$fs3, $fa0
	fcmp.cule.d	$fcc0, $fs1, $fs3
	bceqz	$fcc0, .LBB2_363
# %bb.361:
.Ltmp433:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.75)
	addi.d	$a1, $a0, %pc_lo12(.L.str.75)
	pcalau12i	$a0, %pc_hi20(.L.str.57)
	addi.d	$a2, $a0, %pc_lo12(.L.str.57)
	pcalau12i	$a0, %pc_hi20(.L__func__._Z14CheckThousandsRK7Results)
	addi.d	$a3, $a0, %pc_lo12(.L__func__._Z14CheckThousandsRK7Results)
	addi.d	$a0, $sp, 32
	ori	$a4, $zero, 178
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal12CheckHandlerC2EPKcS3_S3_i)
	jirl	$ra, $ra, 0
.Ltmp434:                               # EH_LABEL
# %bb.362:
	ld.d	$s7, $sp, 32
	b	.LBB2_364
.LBB2_363:
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	ld.b	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	dbar	20
	pcalau12i	$a1, %pc_hi20(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	addi.d	$s7, $a1, %pc_lo12(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	beqz	$a0, .LBB2_466
.LBB2_364:                              # %_ZN9benchmark8internal18GetNullLogInstanceEv.exit817
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_396
# %bb.365:
.Ltmp435:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.58)
	addi.d	$a1, $a1, %pc_lo12(.L.str.58)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp436:                               # EH_LABEL
# %bb.366:                              # %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit820
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_396
# %bb.367:
.Ltmp437:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.57)
	addi.d	$a1, $a1, %pc_lo12(.L.str.57)
	ori	$a2, $zero, 150
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp438:                               # EH_LABEL
# %bb.368:                              # %_ZN9benchmark8internallsIA151_cEERNS0_7LogTypeES4_RKT_.exit823
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_396
# %bb.369:
.Ltmp439:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.59)
	addi.d	$a1, $a1, %pc_lo12(.L.str.59)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp440:                               # EH_LABEL
# %bb.370:                              # %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit826
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_396
# %bb.371:
.Ltmp442:                               # EH_LABEL
	ori	$a1, $zero, 178
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp443:                               # EH_LABEL
# %bb.372:                              # %_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit829
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_396
# %bb.373:
.Ltmp444:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.60)
	addi.d	$a1, $a1, %pc_lo12(.L.str.60)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp445:                               # EH_LABEL
# %bb.374:                              # %_ZN9benchmark8internallsIA3_cEERNS0_7LogTypeES4_RKT_.exit832
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_396
# %bb.375:
	ld.d	$a1, $fp, 0
	ld.d	$a2, $fp, 8
.Ltmp446:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp447:                               # EH_LABEL
# %bb.376:                              # %_ZN9benchmark8internallsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNS0_7LogTypeES9_RKT_.exit835
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_396
# %bb.377:
.Ltmp448:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.61)
	addi.d	$a1, $a1, %pc_lo12(.L.str.61)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp449:                               # EH_LABEL
# %bb.378:                              # %_ZN9benchmark8internallsIA3_cEERNS0_7LogTypeES4_RKT_.exit838
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_396
# %bb.379:
.Ltmp450:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.57)
	addi.d	$a1, $a1, %pc_lo12(.L.str.57)
	ori	$a2, $zero, 150
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp451:                               # EH_LABEL
# %bb.380:                              # %_ZN9benchmark8internallsIA151_cEERNS0_7LogTypeES4_RKT_.exit841
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_396
# %bb.381:
.Ltmp452:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.59)
	addi.d	$a1, $a1, %pc_lo12(.L.str.59)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp453:                               # EH_LABEL
# %bb.382:                              # %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit844
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_396
# %bb.383:
.Ltmp455:                               # EH_LABEL
	ori	$a1, $zero, 178
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp456:                               # EH_LABEL
# %bb.384:                              # %_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit847
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_396
# %bb.385:
.Ltmp457:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.60)
	addi.d	$a1, $a1, %pc_lo12(.L.str.60)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp458:                               # EH_LABEL
# %bb.386:                              # %_ZN9benchmark8internallsIA3_cEERNS0_7LogTypeES4_RKT_.exit850
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_396
# %bb.387:
.Ltmp459:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.62)
	addi.d	$a1, $a1, %pc_lo12(.L.str.62)
	ori	$a2, $zero, 10
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp460:                               # EH_LABEL
# %bb.388:                              # %_ZN9benchmark8internallsIA11_cEERNS0_7LogTypeES4_RKT_.exit853
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_396
# %bb.389:
.Ltmp461:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.63)
	addi.d	$a1, $a1, %pc_lo12(.L.str.63)
	ori	$a2, $zero, 6
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp462:                               # EH_LABEL
# %bb.390:                              # %_ZN9benchmark8internallsIA7_cEERNS0_7LogTypeES4_RKT_.exit856
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_396
# %bb.391:
.Ltmp463:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.64)
	addi.d	$a1, $a1, %pc_lo12(.L.str.64)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp464:                               # EH_LABEL
# %bb.392:                              # %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit859
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_396
# %bb.393:
.Ltmp465:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
	ori	$a2, $zero, 18
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp466:                               # EH_LABEL
# %bb.394:                              # %_ZN9benchmark8internallsIA19_cEERNS0_7LogTypeES4_RKT_.exit862
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_396
# %bb.395:
.Ltmp467:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.65)
	addi.d	$a1, $a1, %pc_lo12(.L.str.65)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp468:                               # EH_LABEL
.LBB2_396:                              # %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit865
	st.d	$s1, $sp, 128
	ori	$a0, $zero, 18
	st.d	$a0, $sp, 96
.Ltmp470:                               # EH_LABEL
	addi.d	$a0, $sp, 128
	addi.d	$a1, $sp, 96
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp471:                               # EH_LABEL
# %bb.397:                              # %.noexc868
	ld.d	$a1, $sp, 96
	vld	$vr0, $s6, 0
	st.d	$a0, $sp, 128
	st.d	$a1, $sp, 144
	vst	$vr0, $a0, 0
	st.h	$s5, $a0, 16
	ld.d	$a0, $sp, 128
	st.d	$a1, $sp, 136
	stx.b	$zero, $a0, $a1
.Ltmp473:                               # EH_LABEL
	addi.d	$a1, $sp, 128
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNK7Results5GetAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp474:                               # EH_LABEL
# %bb.398:                              # %_ZNK7Results12GetCounterAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit871
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_426
# %bb.399:
.Ltmp475:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp476:                               # EH_LABEL
# %bb.400:                              # %_ZN9benchmark8internallsIdEERNS0_7LogTypeES3_RKT_.exit874
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_426
# %bb.401:
.Ltmp477:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.66)
	addi.d	$a1, $a1, %pc_lo12(.L.str.66)
	ori	$a2, $zero, 13
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp478:                               # EH_LABEL
# %bb.402:                              # %_ZN9benchmark8internallsIA14_cEERNS0_7LogTypeES4_RKT_.exit877
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_426
# %bb.403:
.Ltmp480:                               # EH_LABEL
	lu12i.w	$a1, 256
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp481:                               # EH_LABEL
# %bb.404:                              # %_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit880
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_426
# %bb.405:
.Ltmp482:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.58)
	addi.d	$a1, $a1, %pc_lo12(.L.str.58)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp483:                               # EH_LABEL
# %bb.406:                              # %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit883
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_426
# %bb.407:
.Ltmp484:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.57)
	addi.d	$a1, $a1, %pc_lo12(.L.str.57)
	ori	$a2, $zero, 150
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp485:                               # EH_LABEL
# %bb.408:                              # %_ZN9benchmark8internallsIA151_cEERNS0_7LogTypeES4_RKT_.exit886
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_426
# %bb.409:
.Ltmp486:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.59)
	addi.d	$a1, $a1, %pc_lo12(.L.str.59)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp487:                               # EH_LABEL
# %bb.410:                              # %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit889
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_426
# %bb.411:
.Ltmp489:                               # EH_LABEL
	ori	$a1, $zero, 178
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp490:                               # EH_LABEL
# %bb.412:                              # %_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit892
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_426
# %bb.413:
.Ltmp491:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.60)
	addi.d	$a1, $a1, %pc_lo12(.L.str.60)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp492:                               # EH_LABEL
# %bb.414:                              # %_ZN9benchmark8internallsIA3_cEERNS0_7LogTypeES4_RKT_.exit895
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_426
# %bb.415:
.Ltmp493:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.67)
	addi.d	$a1, $a1, %pc_lo12(.L.str.67)
	ori	$a2, $zero, 18
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp494:                               # EH_LABEL
# %bb.416:                              # %_ZN9benchmark8internallsIA19_cEERNS0_7LogTypeES4_RKT_.exit898
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_426
# %bb.417:
.Ltmp496:                               # EH_LABEL
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp497:                               # EH_LABEL
# %bb.418:                              # %_ZN9benchmark8internallsIdEERNS0_7LogTypeES3_RKT_.exit901
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_426
# %bb.419:
.Ltmp498:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.68)
	addi.d	$a1, $a1, %pc_lo12(.L.str.68)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp499:                               # EH_LABEL
# %bb.420:                              # %_ZN9benchmark8internallsIA3_cEERNS0_7LogTypeES4_RKT_.exit904
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_426
# %bb.421:
.Ltmp501:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.LCPI2_2)
	fld.d	$fa0, $a1, %pc_lo12(.LCPI2_2)
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp502:                               # EH_LABEL
# %bb.422:                              # %_ZN9benchmark8internallsIdEERNS0_7LogTypeES3_RKT_.exit907
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_426
# %bb.423:
.Ltmp503:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.69)
	addi.d	$a1, $a1, %pc_lo12(.L.str.69)
	ori	$a2, $zero, 4
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp504:                               # EH_LABEL
# %bb.424:                              # %_ZN9benchmark8internallsIA5_cEERNS0_7LogTypeES4_RKT_.exit910
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_426
# %bb.425:
.Ltmp505:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.70)
	addi.d	$a1, $a1, %pc_lo12(.L.str.70)
	ori	$a2, $zero, 14
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp506:                               # EH_LABEL
.LBB2_426:                              # %_ZN9benchmark8internallsIA15_cEERNS0_7LogTypeES4_RKT_.exit913
	st.d	$s2, $sp, 96
	ori	$a0, $zero, 18
	st.d	$a0, $sp, 64
.Ltmp508:                               # EH_LABEL
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 64
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp509:                               # EH_LABEL
# %bb.427:                              # %.noexc916
	ld.d	$a1, $sp, 64
	vld	$vr0, $s6, 0
	st.d	$a0, $sp, 96
	st.d	$a1, $sp, 112
	vst	$vr0, $a0, 0
	st.h	$s5, $a0, 16
	ld.d	$a0, $sp, 96
	st.d	$a1, $sp, 104
	stx.b	$zero, $a0, $a1
.Ltmp511:                               # EH_LABEL
	addi.d	$a1, $sp, 96
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNK7Results5GetAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp512:                               # EH_LABEL
# %bb.428:                              # %_ZNK7Results12GetCounterAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit919
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_432
# %bb.429:
	fadd.d	$fa0, $fa0, $fs2
.Ltmp513:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp514:                               # EH_LABEL
# %bb.430:                              # %_ZN9benchmark8internallsIdEERNS0_7LogTypeES3_RKT_.exit922
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_432
# %bb.431:
.Ltmp515:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.68)
	addi.d	$a1, $a1, %pc_lo12(.L.str.68)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp516:                               # EH_LABEL
.LBB2_432:                              # %_ZN9benchmark8internallsIA3_cEERNS0_7LogTypeES4_RKT_.exit925
	st.d	$s3, $sp, 64
	ori	$a0, $zero, 18
	st.d	$a0, $sp, 200
.Ltmp518:                               # EH_LABEL
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 200
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp519:                               # EH_LABEL
# %bb.433:                              # %.noexc928
	ld.d	$a1, $sp, 200
	vld	$vr0, $s6, 0
	st.d	$a0, $sp, 64
	st.d	$a1, $sp, 80
	vst	$vr0, $a0, 0
	st.h	$s5, $a0, 16
	ld.d	$a0, $sp, 64
	st.d	$a1, $sp, 72
	stx.b	$zero, $a0, $a1
.Ltmp521:                               # EH_LABEL
	addi.d	$a1, $sp, 64
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNK7Results5GetAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp522:                               # EH_LABEL
# %bb.434:                              # %_ZNK7Results12GetCounterAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit931
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_438
# %bb.435:
	fld.d	$fa1, $s4, %pc_lo12(.LCPI2_6)
	fadd.d	$fa0, $fa0, $fs2
	fmul.d	$fa0, $fa0, $fa1
	fmul.d	$fa0, $fa0, $fs0
.Ltmp523:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp524:                               # EH_LABEL
# %bb.436:                              # %_ZN9benchmark8internallsIdEERNS0_7LogTypeES3_RKT_.exit934
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB2_438
# %bb.437:
.Ltmp525:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.71)
	addi.d	$a1, $a1, %pc_lo12(.L.str.71)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp526:                               # EH_LABEL
.LBB2_438:                              # %_ZN9benchmark8internallsIA3_cEERNS0_7LogTypeES4_RKT_.exit937
	ld.d	$a0, $sp, 64
	beq	$a0, $s3, .LBB2_440
# %bb.439:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i938
	ld.d	$a1, $sp, 80
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB2_440:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit940
	ld.d	$a0, $sp, 96
	beq	$a0, $s2, .LBB2_442
# %bb.441:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i941
	ld.d	$a1, $sp, 112
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB2_442:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit943
	ld.d	$a0, $sp, 128
	beq	$a0, $s1, .LBB2_444
# %bb.443:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i944
	ld.d	$a1, $sp, 144
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB2_444:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit946
	fcmp.clt.d	$fcc0, $fs3, $fs1
	bceqz	$fcc0, .LBB2_456
# %bb.445:
	ld.d	$a0, $sp, 168
	beq	$a0, $s0, .LBB2_447
# %bb.446:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i959
	ld.d	$a1, $sp, 184
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB2_447:                              # %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
	fld.d	$fs3, $sp, 208                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 216                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 224                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 232                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 304                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 312                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 320
	ret
.LBB2_448:
.Ltmp543:                               # EH_LABEL
	addi.d	$a0, $sp, 160
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal12CheckHandlerD2Ev)
	jirl	$ra, $ra, 0
.Ltmp544:                               # EH_LABEL
# %bb.449:
.LBB2_450:
.Ltmp540:                               # EH_LABEL
	addi.d	$a0, $sp, 56
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal12CheckHandlerD2Ev)
	jirl	$ra, $ra, 0
.Ltmp541:                               # EH_LABEL
# %bb.451:
.LBB2_452:
.Ltmp537:                               # EH_LABEL
	addi.d	$a0, $sp, 48
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal12CheckHandlerD2Ev)
	jirl	$ra, $ra, 0
.Ltmp538:                               # EH_LABEL
# %bb.453:
.LBB2_454:
.Ltmp534:                               # EH_LABEL
	addi.d	$a0, $sp, 40
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal12CheckHandlerD2Ev)
	jirl	$ra, $ra, 0
.Ltmp535:                               # EH_LABEL
# %bb.455:
.LBB2_456:
.Ltmp531:                               # EH_LABEL
	addi.d	$a0, $sp, 32
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal12CheckHandlerD2Ev)
	jirl	$ra, $ra, 0
.Ltmp532:                               # EH_LABEL
# %bb.457:
.LBB2_458:
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcaddu18i	$ra, %call36(__cxa_guard_acquire)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	beqz	$a0, .LBB2_8
# %bb.459:
	pcalau12i	$a0, %pc_hi20(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	addi.d	$s6, $a0, %pc_lo12(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	st.d	$zero, $s6, 0
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcaddu18i	$ra, %call36(__cxa_guard_release)
	jirl	$ra, $ra, 0
	b	.LBB2_8
.LBB2_460:
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcaddu18i	$ra, %call36(__cxa_guard_acquire)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	beqz	$a0, .LBB2_97
# %bb.461:
	pcalau12i	$a0, %pc_hi20(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	addi.d	$s7, $a0, %pc_lo12(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	st.d	$zero, $s7, 0
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcaddu18i	$ra, %call36(__cxa_guard_release)
	jirl	$ra, $ra, 0
	b	.LBB2_97
.LBB2_462:
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcaddu18i	$ra, %call36(__cxa_guard_acquire)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	beqz	$a0, .LBB2_186
# %bb.463:
	pcalau12i	$a0, %pc_hi20(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	addi.d	$s7, $a0, %pc_lo12(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	st.d	$zero, $s7, 0
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcaddu18i	$ra, %call36(__cxa_guard_release)
	jirl	$ra, $ra, 0
	b	.LBB2_186
.LBB2_464:
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcaddu18i	$ra, %call36(__cxa_guard_acquire)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	beqz	$a0, .LBB2_275
# %bb.465:
	pcalau12i	$a0, %pc_hi20(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	addi.d	$s6, $a0, %pc_lo12(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	st.d	$zero, $s6, 0
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcaddu18i	$ra, %call36(__cxa_guard_release)
	jirl	$ra, $ra, 0
	b	.LBB2_275
.LBB2_466:
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcaddu18i	$ra, %call36(__cxa_guard_acquire)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	beqz	$a0, .LBB2_364
# %bb.467:
	pcalau12i	$a0, %pc_hi20(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	addi.d	$s7, $a0, %pc_lo12(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	st.d	$zero, $s7, 0
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcaddu18i	$ra, %call36(__cxa_guard_release)
	jirl	$ra, $ra, 0
	b	.LBB2_364
.LBB2_468:
.Ltmp507:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 128
	beq	$a0, $s1, .LBB2_542
	b	.LBB2_550
.LBB2_469:
.Ltmp406:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 128
	beq	$a0, $s1, .LBB2_554
	b	.LBB2_558
.LBB2_470:
.Ltmp305:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 128
	beq	$a0, $s1, .LBB2_563
	b	.LBB2_567
.LBB2_471:
.Ltmp204:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 128
	beq	$a0, $s1, .LBB2_572
	b	.LBB2_576
.LBB2_472:
.Ltmp103:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 128
	bne	$a0, $s1, .LBB2_581
	b	.LBB2_582
.LBB2_473:
.Ltmp500:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 128
	beq	$a0, $s1, .LBB2_542
	b	.LBB2_550
.LBB2_474:
.Ltmp399:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 128
	beq	$a0, $s1, .LBB2_554
	b	.LBB2_558
.LBB2_475:
.Ltmp298:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 128
	beq	$a0, $s1, .LBB2_563
	b	.LBB2_567
.LBB2_476:
.Ltmp197:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 128
	beq	$a0, $s1, .LBB2_572
	b	.LBB2_576
.LBB2_477:
.Ltmp96:                                # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 128
	bne	$a0, $s1, .LBB2_581
	b	.LBB2_582
.LBB2_478:
.Ltmp469:                               # EH_LABEL
	b	.LBB2_524
.LBB2_479:
.Ltmp368:                               # EH_LABEL
	b	.LBB2_526
.LBB2_480:
.Ltmp267:                               # EH_LABEL
	b	.LBB2_528
.LBB2_481:
.Ltmp166:                               # EH_LABEL
	b	.LBB2_530
.LBB2_482:
.Ltmp65:                                # EH_LABEL
	b	.LBB2_532
.LBB2_483:
.Ltmp495:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 128
	beq	$a0, $s1, .LBB2_542
	b	.LBB2_550
.LBB2_484:
.Ltmp394:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 128
	beq	$a0, $s1, .LBB2_554
	b	.LBB2_558
.LBB2_485:
.Ltmp293:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 128
	beq	$a0, $s1, .LBB2_563
	b	.LBB2_567
.LBB2_486:
.Ltmp192:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 128
	beq	$a0, $s1, .LBB2_572
	b	.LBB2_576
.LBB2_487:
.Ltmp91:                                # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 128
	bne	$a0, $s1, .LBB2_581
	b	.LBB2_582
.LBB2_488:
.Ltmp454:                               # EH_LABEL
	b	.LBB2_524
.LBB2_489:
.Ltmp353:                               # EH_LABEL
	b	.LBB2_526
.LBB2_490:
.Ltmp252:                               # EH_LABEL
	b	.LBB2_528
.LBB2_491:
.Ltmp151:                               # EH_LABEL
	b	.LBB2_530
.LBB2_492:
.Ltmp50:                                # EH_LABEL
	b	.LBB2_532
.LBB2_493:
.Ltmp488:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 128
	beq	$a0, $s1, .LBB2_542
	b	.LBB2_550
.LBB2_494:
.Ltmp387:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 128
	beq	$a0, $s1, .LBB2_554
	b	.LBB2_558
.LBB2_495:
.Ltmp286:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 128
	beq	$a0, $s1, .LBB2_563
	b	.LBB2_567
.LBB2_496:
.Ltmp185:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 128
	beq	$a0, $s1, .LBB2_572
	b	.LBB2_576
.LBB2_497:
.Ltmp84:                                # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 128
	bne	$a0, $s1, .LBB2_581
	b	.LBB2_582
.LBB2_498:
.Ltmp520:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 96
	beq	$a0, $s2, .LBB2_541
	b	.LBB2_548
.LBB2_499:
.Ltmp510:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 128
	beq	$a0, $s1, .LBB2_542
	b	.LBB2_550
.LBB2_500:
.Ltmp472:                               # EH_LABEL
	b	.LBB2_524
.LBB2_501:
.Ltmp432:                               # EH_LABEL
	b	.LBB2_538
.LBB2_502:
.Ltmp429:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB2_503:
.Ltmp419:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 96
	beq	$a0, $s2, .LBB2_553
	b	.LBB2_557
.LBB2_504:
.Ltmp409:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 128
	beq	$a0, $s1, .LBB2_554
	b	.LBB2_558
.LBB2_505:
.Ltmp371:                               # EH_LABEL
	b	.LBB2_526
.LBB2_506:
.Ltmp331:                               # EH_LABEL
	b	.LBB2_538
.LBB2_507:
.Ltmp328:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB2_508:
.Ltmp318:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 96
	beq	$a0, $s2, .LBB2_562
	b	.LBB2_566
.LBB2_509:
.Ltmp308:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 128
	beq	$a0, $s1, .LBB2_563
	b	.LBB2_567
.LBB2_510:
.Ltmp270:                               # EH_LABEL
	b	.LBB2_528
.LBB2_511:
.Ltmp230:                               # EH_LABEL
	b	.LBB2_538
.LBB2_512:
.Ltmp227:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB2_513:
.Ltmp217:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 96
	beq	$a0, $s2, .LBB2_571
	b	.LBB2_575
.LBB2_514:
.Ltmp207:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 128
	beq	$a0, $s1, .LBB2_572
	b	.LBB2_576
.LBB2_515:
.Ltmp169:                               # EH_LABEL
	b	.LBB2_530
.LBB2_516:
.Ltmp129:                               # EH_LABEL
	b	.LBB2_538
.LBB2_517:
.Ltmp126:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB2_518:
.Ltmp116:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 96
	beq	$a0, $s2, .LBB2_580
	b	.LBB2_588
.LBB2_519:
.Ltmp106:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 128
	bne	$a0, $s1, .LBB2_581
	b	.LBB2_582
.LBB2_520:
.Ltmp68:                                # EH_LABEL
	b	.LBB2_532
.LBB2_521:
.Ltmp28:                                # EH_LABEL
	b	.LBB2_538
.LBB2_522:
.Ltmp25:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB2_523:
.Ltmp441:                               # EH_LABEL
.LBB2_524:
	move	$fp, $a0
	fcmp.clt.d	$fcc0, $fs3, $fs1
	addi.d	$a0, $sp, 32
	bcnez	$fcc0, .LBB2_543
	b	.LBB2_584
.LBB2_525:
.Ltmp340:                               # EH_LABEL
.LBB2_526:
	move	$fp, $a0
	b	.LBB2_554
.LBB2_527:
.Ltmp239:                               # EH_LABEL
.LBB2_528:
	move	$fp, $a0
	b	.LBB2_563
.LBB2_529:
.Ltmp138:                               # EH_LABEL
.LBB2_530:
	move	$fp, $a0
	b	.LBB2_572
.LBB2_531:
.Ltmp37:                                # EH_LABEL
.LBB2_532:
	move	$fp, $a0
	b	.LBB2_582
.LBB2_533:
.Ltmp533:                               # EH_LABEL
	b	.LBB2_538
.LBB2_534:
.Ltmp536:                               # EH_LABEL
	b	.LBB2_538
.LBB2_535:
.Ltmp539:                               # EH_LABEL
	b	.LBB2_538
.LBB2_536:
.Ltmp542:                               # EH_LABEL
	b	.LBB2_538
.LBB2_537:
.Ltmp545:                               # EH_LABEL
.LBB2_538:
	move	$fp, $a0
	b	.LBB2_543
.LBB2_539:
.Ltmp527:                               # EH_LABEL
	ld.d	$a2, $sp, 64
	move	$fp, $a0
	bne	$a2, $s3, .LBB2_546
# %bb.540:
	ld.d	$a0, $sp, 96
	bne	$a0, $s2, .LBB2_548
.LBB2_541:
	ld.d	$a0, $sp, 128
	bne	$a0, $s1, .LBB2_550
.LBB2_542:
	fcmp.clt.d	$fcc0, $fs3, $fs1
	addi.d	$a0, $sp, 32
	bceqz	$fcc0, .LBB2_584
.LBB2_543:
	ld.d	$a0, $sp, 168
	beq	$a0, $s0, .LBB2_545
# %bb.544:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i962
	ld.d	$a1, $sp, 184
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB2_545:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB2_546:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i950
	ld.d	$a0, $sp, 80
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96
	beq	$a0, $s2, .LBB2_541
	b	.LBB2_548
.LBB2_547:
.Ltmp517:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 96
	beq	$a0, $s2, .LBB2_541
.LBB2_548:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i953
	ld.d	$a1, $sp, 112
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128
	beq	$a0, $s1, .LBB2_542
	b	.LBB2_550
.LBB2_549:
.Ltmp479:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 128
	beq	$a0, $s1, .LBB2_542
.LBB2_550:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i956
	ld.d	$a1, $sp, 144
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	fcmp.clt.d	$fcc0, $fs3, $fs1
	addi.d	$a0, $sp, 32
	bcnez	$fcc0, .LBB2_543
	b	.LBB2_584
.LBB2_551:
.Ltmp426:                               # EH_LABEL
	ld.d	$a2, $sp, 64
	move	$fp, $a0
	bne	$a2, $s3, .LBB2_555
# %bb.552:
	ld.d	$a0, $sp, 96
	bne	$a0, $s2, .LBB2_557
.LBB2_553:
	ld.d	$a0, $sp, 128
	bne	$a0, $s1, .LBB2_558
.LBB2_554:
	addi.d	$a0, $sp, 40
	b	.LBB2_583
.LBB2_555:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i798
	ld.d	$a0, $sp, 80
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96
	beq	$a0, $s2, .LBB2_553
	b	.LBB2_557
.LBB2_556:
.Ltmp416:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 96
	beq	$a0, $s2, .LBB2_553
.LBB2_557:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i801
	ld.d	$a1, $sp, 112
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128
	beq	$a0, $s1, .LBB2_554
.LBB2_558:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i804
	ld.d	$a1, $sp, 144
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 40
	b	.LBB2_583
.LBB2_559:
.Ltmp378:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 128
	beq	$a0, $s1, .LBB2_554
	b	.LBB2_558
.LBB2_560:
.Ltmp325:                               # EH_LABEL
	ld.d	$a2, $sp, 64
	move	$fp, $a0
	bne	$a2, $s3, .LBB2_564
# %bb.561:
	ld.d	$a0, $sp, 96
	bne	$a0, $s2, .LBB2_566
.LBB2_562:
	ld.d	$a0, $sp, 128
	bne	$a0, $s1, .LBB2_567
.LBB2_563:
	addi.d	$a0, $sp, 48
	b	.LBB2_583
.LBB2_564:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i646
	ld.d	$a0, $sp, 80
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96
	beq	$a0, $s2, .LBB2_562
	b	.LBB2_566
.LBB2_565:
.Ltmp315:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 96
	beq	$a0, $s2, .LBB2_562
.LBB2_566:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i649
	ld.d	$a1, $sp, 112
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128
	beq	$a0, $s1, .LBB2_563
.LBB2_567:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i652
	ld.d	$a1, $sp, 144
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 48
	b	.LBB2_583
.LBB2_568:
.Ltmp277:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 128
	beq	$a0, $s1, .LBB2_563
	b	.LBB2_567
.LBB2_569:
.Ltmp224:                               # EH_LABEL
	ld.d	$a2, $sp, 64
	move	$fp, $a0
	bne	$a2, $s3, .LBB2_573
# %bb.570:
	ld.d	$a0, $sp, 96
	bne	$a0, $s2, .LBB2_575
.LBB2_571:
	ld.d	$a0, $sp, 128
	bne	$a0, $s1, .LBB2_576
.LBB2_572:
	addi.d	$a0, $sp, 56
	b	.LBB2_583
.LBB2_573:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i494
	ld.d	$a0, $sp, 80
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96
	beq	$a0, $s2, .LBB2_571
	b	.LBB2_575
.LBB2_574:
.Ltmp214:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 96
	beq	$a0, $s2, .LBB2_571
.LBB2_575:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i497
	ld.d	$a1, $sp, 112
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128
	beq	$a0, $s1, .LBB2_572
.LBB2_576:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i500
	ld.d	$a1, $sp, 144
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 56
	b	.LBB2_583
.LBB2_577:
.Ltmp176:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 128
	beq	$a0, $s1, .LBB2_572
	b	.LBB2_576
.LBB2_578:
.Ltmp123:                               # EH_LABEL
	ld.d	$a2, $sp, 64
	move	$fp, $a0
	bne	$a2, $s3, .LBB2_586
# %bb.579:
	ld.d	$a0, $sp, 96
	bne	$a0, $s2, .LBB2_588
.LBB2_580:
	ld.d	$a0, $sp, 128
	beq	$a0, $s1, .LBB2_582
.LBB2_581:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i348
	ld.d	$a1, $sp, 144
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB2_582:
	addi.d	$a0, $sp, 160
.LBB2_583:
	ld.d	$a1, $sp, 24
	movgr2cf	$fcc0, $a1
	bceqz	$fcc0, .LBB2_543
.LBB2_584:                              # %.invoke
.Ltmp528:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal12CheckHandlerD2Ev)
	jirl	$ra, $ra, 0
.Ltmp529:                               # EH_LABEL
# %bb.585:                              # %.cont
.LBB2_586:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i342
	ld.d	$a0, $sp, 80
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96
	beq	$a0, $s2, .LBB2_580
	b	.LBB2_588
.LBB2_587:
.Ltmp113:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 96
	beq	$a0, $s2, .LBB2_580
.LBB2_588:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i345
	ld.d	$a1, $sp, 112
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128
	bne	$a0, $s1, .LBB2_581
	b	.LBB2_582
.LBB2_589:
.Ltmp75:                                # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 128
	bne	$a0, $s1, .LBB2_581
	b	.LBB2_582
.LBB2_590:
.Ltmp530:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	_Z14CheckThousandsRK7Results, .Lfunc_end2-_Z14CheckThousandsRK7Results
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table2:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Lfunc_begin1-.Lfunc_begin1    # >> Call Site 1 <<
	.uleb128 .Ltmp23-.Lfunc_begin1          #   Call between .Lfunc_begin1 and .Ltmp23
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp23-.Lfunc_begin1          # >> Call Site 2 <<
	.uleb128 .Ltmp24-.Ltmp23                #   Call between .Ltmp23 and .Ltmp24
	.uleb128 .Ltmp25-.Lfunc_begin1          #     jumps to .Ltmp25
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp26-.Lfunc_begin1          # >> Call Site 3 <<
	.uleb128 .Ltmp27-.Ltmp26                #   Call between .Ltmp26 and .Ltmp27
	.uleb128 .Ltmp28-.Lfunc_begin1          #     jumps to .Ltmp28
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp29-.Lfunc_begin1          # >> Call Site 4 <<
	.uleb128 .Ltmp30-.Ltmp29                #   Call between .Ltmp29 and .Ltmp30
	.uleb128 .Ltmp545-.Lfunc_begin1         #     jumps to .Ltmp545
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp31-.Lfunc_begin1          # >> Call Site 5 <<
	.uleb128 .Ltmp36-.Ltmp31                #   Call between .Ltmp31 and .Ltmp36
	.uleb128 .Ltmp37-.Lfunc_begin1          #     jumps to .Ltmp37
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp38-.Lfunc_begin1          # >> Call Site 6 <<
	.uleb128 .Ltmp49-.Ltmp38                #   Call between .Ltmp38 and .Ltmp49
	.uleb128 .Ltmp50-.Lfunc_begin1          #     jumps to .Ltmp50
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp51-.Lfunc_begin1          # >> Call Site 7 <<
	.uleb128 .Ltmp64-.Ltmp51                #   Call between .Ltmp51 and .Ltmp64
	.uleb128 .Ltmp65-.Lfunc_begin1          #     jumps to .Ltmp65
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp66-.Lfunc_begin1          # >> Call Site 8 <<
	.uleb128 .Ltmp67-.Ltmp66                #   Call between .Ltmp66 and .Ltmp67
	.uleb128 .Ltmp68-.Lfunc_begin1          #     jumps to .Ltmp68
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp69-.Lfunc_begin1          # >> Call Site 9 <<
	.uleb128 .Ltmp74-.Ltmp69                #   Call between .Ltmp69 and .Ltmp74
	.uleb128 .Ltmp75-.Lfunc_begin1          #     jumps to .Ltmp75
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp76-.Lfunc_begin1          # >> Call Site 10 <<
	.uleb128 .Ltmp83-.Ltmp76                #   Call between .Ltmp76 and .Ltmp83
	.uleb128 .Ltmp84-.Lfunc_begin1          #     jumps to .Ltmp84
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp85-.Lfunc_begin1          # >> Call Site 11 <<
	.uleb128 .Ltmp90-.Ltmp85                #   Call between .Ltmp85 and .Ltmp90
	.uleb128 .Ltmp91-.Lfunc_begin1          #     jumps to .Ltmp91
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp92-.Lfunc_begin1          # >> Call Site 12 <<
	.uleb128 .Ltmp95-.Ltmp92                #   Call between .Ltmp92 and .Ltmp95
	.uleb128 .Ltmp96-.Lfunc_begin1          #     jumps to .Ltmp96
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp97-.Lfunc_begin1          # >> Call Site 13 <<
	.uleb128 .Ltmp102-.Ltmp97               #   Call between .Ltmp97 and .Ltmp102
	.uleb128 .Ltmp103-.Lfunc_begin1         #     jumps to .Ltmp103
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp104-.Lfunc_begin1         # >> Call Site 14 <<
	.uleb128 .Ltmp105-.Ltmp104              #   Call between .Ltmp104 and .Ltmp105
	.uleb128 .Ltmp106-.Lfunc_begin1         #     jumps to .Ltmp106
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp107-.Lfunc_begin1         # >> Call Site 15 <<
	.uleb128 .Ltmp112-.Ltmp107              #   Call between .Ltmp107 and .Ltmp112
	.uleb128 .Ltmp113-.Lfunc_begin1         #     jumps to .Ltmp113
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp114-.Lfunc_begin1         # >> Call Site 16 <<
	.uleb128 .Ltmp115-.Ltmp114              #   Call between .Ltmp114 and .Ltmp115
	.uleb128 .Ltmp116-.Lfunc_begin1         #     jumps to .Ltmp116
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp117-.Lfunc_begin1         # >> Call Site 17 <<
	.uleb128 .Ltmp122-.Ltmp117              #   Call between .Ltmp117 and .Ltmp122
	.uleb128 .Ltmp123-.Lfunc_begin1         #     jumps to .Ltmp123
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp122-.Lfunc_begin1         # >> Call Site 18 <<
	.uleb128 .Ltmp124-.Ltmp122              #   Call between .Ltmp122 and .Ltmp124
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp124-.Lfunc_begin1         # >> Call Site 19 <<
	.uleb128 .Ltmp125-.Ltmp124              #   Call between .Ltmp124 and .Ltmp125
	.uleb128 .Ltmp126-.Lfunc_begin1         #     jumps to .Ltmp126
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp127-.Lfunc_begin1         # >> Call Site 20 <<
	.uleb128 .Ltmp128-.Ltmp127              #   Call between .Ltmp127 and .Ltmp128
	.uleb128 .Ltmp129-.Lfunc_begin1         #     jumps to .Ltmp129
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp130-.Lfunc_begin1         # >> Call Site 21 <<
	.uleb128 .Ltmp131-.Ltmp130              #   Call between .Ltmp130 and .Ltmp131
	.uleb128 .Ltmp542-.Lfunc_begin1         #     jumps to .Ltmp542
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp132-.Lfunc_begin1         # >> Call Site 22 <<
	.uleb128 .Ltmp137-.Ltmp132              #   Call between .Ltmp132 and .Ltmp137
	.uleb128 .Ltmp138-.Lfunc_begin1         #     jumps to .Ltmp138
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp139-.Lfunc_begin1         # >> Call Site 23 <<
	.uleb128 .Ltmp150-.Ltmp139              #   Call between .Ltmp139 and .Ltmp150
	.uleb128 .Ltmp151-.Lfunc_begin1         #     jumps to .Ltmp151
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp152-.Lfunc_begin1         # >> Call Site 24 <<
	.uleb128 .Ltmp165-.Ltmp152              #   Call between .Ltmp152 and .Ltmp165
	.uleb128 .Ltmp166-.Lfunc_begin1         #     jumps to .Ltmp166
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp167-.Lfunc_begin1         # >> Call Site 25 <<
	.uleb128 .Ltmp168-.Ltmp167              #   Call between .Ltmp167 and .Ltmp168
	.uleb128 .Ltmp169-.Lfunc_begin1         #     jumps to .Ltmp169
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp170-.Lfunc_begin1         # >> Call Site 26 <<
	.uleb128 .Ltmp175-.Ltmp170              #   Call between .Ltmp170 and .Ltmp175
	.uleb128 .Ltmp176-.Lfunc_begin1         #     jumps to .Ltmp176
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp177-.Lfunc_begin1         # >> Call Site 27 <<
	.uleb128 .Ltmp184-.Ltmp177              #   Call between .Ltmp177 and .Ltmp184
	.uleb128 .Ltmp185-.Lfunc_begin1         #     jumps to .Ltmp185
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp186-.Lfunc_begin1         # >> Call Site 28 <<
	.uleb128 .Ltmp191-.Ltmp186              #   Call between .Ltmp186 and .Ltmp191
	.uleb128 .Ltmp192-.Lfunc_begin1         #     jumps to .Ltmp192
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp193-.Lfunc_begin1         # >> Call Site 29 <<
	.uleb128 .Ltmp196-.Ltmp193              #   Call between .Ltmp193 and .Ltmp196
	.uleb128 .Ltmp197-.Lfunc_begin1         #     jumps to .Ltmp197
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp198-.Lfunc_begin1         # >> Call Site 30 <<
	.uleb128 .Ltmp203-.Ltmp198              #   Call between .Ltmp198 and .Ltmp203
	.uleb128 .Ltmp204-.Lfunc_begin1         #     jumps to .Ltmp204
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp205-.Lfunc_begin1         # >> Call Site 31 <<
	.uleb128 .Ltmp206-.Ltmp205              #   Call between .Ltmp205 and .Ltmp206
	.uleb128 .Ltmp207-.Lfunc_begin1         #     jumps to .Ltmp207
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp208-.Lfunc_begin1         # >> Call Site 32 <<
	.uleb128 .Ltmp213-.Ltmp208              #   Call between .Ltmp208 and .Ltmp213
	.uleb128 .Ltmp214-.Lfunc_begin1         #     jumps to .Ltmp214
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp215-.Lfunc_begin1         # >> Call Site 33 <<
	.uleb128 .Ltmp216-.Ltmp215              #   Call between .Ltmp215 and .Ltmp216
	.uleb128 .Ltmp217-.Lfunc_begin1         #     jumps to .Ltmp217
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp218-.Lfunc_begin1         # >> Call Site 34 <<
	.uleb128 .Ltmp223-.Ltmp218              #   Call between .Ltmp218 and .Ltmp223
	.uleb128 .Ltmp224-.Lfunc_begin1         #     jumps to .Ltmp224
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp223-.Lfunc_begin1         # >> Call Site 35 <<
	.uleb128 .Ltmp225-.Ltmp223              #   Call between .Ltmp223 and .Ltmp225
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp225-.Lfunc_begin1         # >> Call Site 36 <<
	.uleb128 .Ltmp226-.Ltmp225              #   Call between .Ltmp225 and .Ltmp226
	.uleb128 .Ltmp227-.Lfunc_begin1         #     jumps to .Ltmp227
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp228-.Lfunc_begin1         # >> Call Site 37 <<
	.uleb128 .Ltmp229-.Ltmp228              #   Call between .Ltmp228 and .Ltmp229
	.uleb128 .Ltmp230-.Lfunc_begin1         #     jumps to .Ltmp230
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp231-.Lfunc_begin1         # >> Call Site 38 <<
	.uleb128 .Ltmp232-.Ltmp231              #   Call between .Ltmp231 and .Ltmp232
	.uleb128 .Ltmp539-.Lfunc_begin1         #     jumps to .Ltmp539
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp233-.Lfunc_begin1         # >> Call Site 39 <<
	.uleb128 .Ltmp238-.Ltmp233              #   Call between .Ltmp233 and .Ltmp238
	.uleb128 .Ltmp239-.Lfunc_begin1         #     jumps to .Ltmp239
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp240-.Lfunc_begin1         # >> Call Site 40 <<
	.uleb128 .Ltmp251-.Ltmp240              #   Call between .Ltmp240 and .Ltmp251
	.uleb128 .Ltmp252-.Lfunc_begin1         #     jumps to .Ltmp252
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp253-.Lfunc_begin1         # >> Call Site 41 <<
	.uleb128 .Ltmp266-.Ltmp253              #   Call between .Ltmp253 and .Ltmp266
	.uleb128 .Ltmp267-.Lfunc_begin1         #     jumps to .Ltmp267
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp268-.Lfunc_begin1         # >> Call Site 42 <<
	.uleb128 .Ltmp269-.Ltmp268              #   Call between .Ltmp268 and .Ltmp269
	.uleb128 .Ltmp270-.Lfunc_begin1         #     jumps to .Ltmp270
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp271-.Lfunc_begin1         # >> Call Site 43 <<
	.uleb128 .Ltmp276-.Ltmp271              #   Call between .Ltmp271 and .Ltmp276
	.uleb128 .Ltmp277-.Lfunc_begin1         #     jumps to .Ltmp277
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp278-.Lfunc_begin1         # >> Call Site 44 <<
	.uleb128 .Ltmp285-.Ltmp278              #   Call between .Ltmp278 and .Ltmp285
	.uleb128 .Ltmp286-.Lfunc_begin1         #     jumps to .Ltmp286
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp287-.Lfunc_begin1         # >> Call Site 45 <<
	.uleb128 .Ltmp292-.Ltmp287              #   Call between .Ltmp287 and .Ltmp292
	.uleb128 .Ltmp293-.Lfunc_begin1         #     jumps to .Ltmp293
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp294-.Lfunc_begin1         # >> Call Site 46 <<
	.uleb128 .Ltmp297-.Ltmp294              #   Call between .Ltmp294 and .Ltmp297
	.uleb128 .Ltmp298-.Lfunc_begin1         #     jumps to .Ltmp298
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp299-.Lfunc_begin1         # >> Call Site 47 <<
	.uleb128 .Ltmp304-.Ltmp299              #   Call between .Ltmp299 and .Ltmp304
	.uleb128 .Ltmp305-.Lfunc_begin1         #     jumps to .Ltmp305
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp306-.Lfunc_begin1         # >> Call Site 48 <<
	.uleb128 .Ltmp307-.Ltmp306              #   Call between .Ltmp306 and .Ltmp307
	.uleb128 .Ltmp308-.Lfunc_begin1         #     jumps to .Ltmp308
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp309-.Lfunc_begin1         # >> Call Site 49 <<
	.uleb128 .Ltmp314-.Ltmp309              #   Call between .Ltmp309 and .Ltmp314
	.uleb128 .Ltmp315-.Lfunc_begin1         #     jumps to .Ltmp315
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp316-.Lfunc_begin1         # >> Call Site 50 <<
	.uleb128 .Ltmp317-.Ltmp316              #   Call between .Ltmp316 and .Ltmp317
	.uleb128 .Ltmp318-.Lfunc_begin1         #     jumps to .Ltmp318
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp319-.Lfunc_begin1         # >> Call Site 51 <<
	.uleb128 .Ltmp324-.Ltmp319              #   Call between .Ltmp319 and .Ltmp324
	.uleb128 .Ltmp325-.Lfunc_begin1         #     jumps to .Ltmp325
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp324-.Lfunc_begin1         # >> Call Site 52 <<
	.uleb128 .Ltmp326-.Ltmp324              #   Call between .Ltmp324 and .Ltmp326
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp326-.Lfunc_begin1         # >> Call Site 53 <<
	.uleb128 .Ltmp327-.Ltmp326              #   Call between .Ltmp326 and .Ltmp327
	.uleb128 .Ltmp328-.Lfunc_begin1         #     jumps to .Ltmp328
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp329-.Lfunc_begin1         # >> Call Site 54 <<
	.uleb128 .Ltmp330-.Ltmp329              #   Call between .Ltmp329 and .Ltmp330
	.uleb128 .Ltmp331-.Lfunc_begin1         #     jumps to .Ltmp331
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp332-.Lfunc_begin1         # >> Call Site 55 <<
	.uleb128 .Ltmp333-.Ltmp332              #   Call between .Ltmp332 and .Ltmp333
	.uleb128 .Ltmp536-.Lfunc_begin1         #     jumps to .Ltmp536
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp334-.Lfunc_begin1         # >> Call Site 56 <<
	.uleb128 .Ltmp339-.Ltmp334              #   Call between .Ltmp334 and .Ltmp339
	.uleb128 .Ltmp340-.Lfunc_begin1         #     jumps to .Ltmp340
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp341-.Lfunc_begin1         # >> Call Site 57 <<
	.uleb128 .Ltmp352-.Ltmp341              #   Call between .Ltmp341 and .Ltmp352
	.uleb128 .Ltmp353-.Lfunc_begin1         #     jumps to .Ltmp353
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp354-.Lfunc_begin1         # >> Call Site 58 <<
	.uleb128 .Ltmp367-.Ltmp354              #   Call between .Ltmp354 and .Ltmp367
	.uleb128 .Ltmp368-.Lfunc_begin1         #     jumps to .Ltmp368
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp369-.Lfunc_begin1         # >> Call Site 59 <<
	.uleb128 .Ltmp370-.Ltmp369              #   Call between .Ltmp369 and .Ltmp370
	.uleb128 .Ltmp371-.Lfunc_begin1         #     jumps to .Ltmp371
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp372-.Lfunc_begin1         # >> Call Site 60 <<
	.uleb128 .Ltmp377-.Ltmp372              #   Call between .Ltmp372 and .Ltmp377
	.uleb128 .Ltmp378-.Lfunc_begin1         #     jumps to .Ltmp378
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp379-.Lfunc_begin1         # >> Call Site 61 <<
	.uleb128 .Ltmp386-.Ltmp379              #   Call between .Ltmp379 and .Ltmp386
	.uleb128 .Ltmp387-.Lfunc_begin1         #     jumps to .Ltmp387
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp388-.Lfunc_begin1         # >> Call Site 62 <<
	.uleb128 .Ltmp393-.Ltmp388              #   Call between .Ltmp388 and .Ltmp393
	.uleb128 .Ltmp394-.Lfunc_begin1         #     jumps to .Ltmp394
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp395-.Lfunc_begin1         # >> Call Site 63 <<
	.uleb128 .Ltmp398-.Ltmp395              #   Call between .Ltmp395 and .Ltmp398
	.uleb128 .Ltmp399-.Lfunc_begin1         #     jumps to .Ltmp399
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp400-.Lfunc_begin1         # >> Call Site 64 <<
	.uleb128 .Ltmp405-.Ltmp400              #   Call between .Ltmp400 and .Ltmp405
	.uleb128 .Ltmp406-.Lfunc_begin1         #     jumps to .Ltmp406
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp407-.Lfunc_begin1         # >> Call Site 65 <<
	.uleb128 .Ltmp408-.Ltmp407              #   Call between .Ltmp407 and .Ltmp408
	.uleb128 .Ltmp409-.Lfunc_begin1         #     jumps to .Ltmp409
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp410-.Lfunc_begin1         # >> Call Site 66 <<
	.uleb128 .Ltmp415-.Ltmp410              #   Call between .Ltmp410 and .Ltmp415
	.uleb128 .Ltmp416-.Lfunc_begin1         #     jumps to .Ltmp416
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp417-.Lfunc_begin1         # >> Call Site 67 <<
	.uleb128 .Ltmp418-.Ltmp417              #   Call between .Ltmp417 and .Ltmp418
	.uleb128 .Ltmp419-.Lfunc_begin1         #     jumps to .Ltmp419
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp420-.Lfunc_begin1         # >> Call Site 68 <<
	.uleb128 .Ltmp425-.Ltmp420              #   Call between .Ltmp420 and .Ltmp425
	.uleb128 .Ltmp426-.Lfunc_begin1         #     jumps to .Ltmp426
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp425-.Lfunc_begin1         # >> Call Site 69 <<
	.uleb128 .Ltmp427-.Ltmp425              #   Call between .Ltmp425 and .Ltmp427
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp427-.Lfunc_begin1         # >> Call Site 70 <<
	.uleb128 .Ltmp428-.Ltmp427              #   Call between .Ltmp427 and .Ltmp428
	.uleb128 .Ltmp429-.Lfunc_begin1         #     jumps to .Ltmp429
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp430-.Lfunc_begin1         # >> Call Site 71 <<
	.uleb128 .Ltmp431-.Ltmp430              #   Call between .Ltmp430 and .Ltmp431
	.uleb128 .Ltmp432-.Lfunc_begin1         #     jumps to .Ltmp432
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp433-.Lfunc_begin1         # >> Call Site 72 <<
	.uleb128 .Ltmp434-.Ltmp433              #   Call between .Ltmp433 and .Ltmp434
	.uleb128 .Ltmp533-.Lfunc_begin1         #     jumps to .Ltmp533
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp435-.Lfunc_begin1         # >> Call Site 73 <<
	.uleb128 .Ltmp440-.Ltmp435              #   Call between .Ltmp435 and .Ltmp440
	.uleb128 .Ltmp441-.Lfunc_begin1         #     jumps to .Ltmp441
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp442-.Lfunc_begin1         # >> Call Site 74 <<
	.uleb128 .Ltmp453-.Ltmp442              #   Call between .Ltmp442 and .Ltmp453
	.uleb128 .Ltmp454-.Lfunc_begin1         #     jumps to .Ltmp454
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp455-.Lfunc_begin1         # >> Call Site 75 <<
	.uleb128 .Ltmp468-.Ltmp455              #   Call between .Ltmp455 and .Ltmp468
	.uleb128 .Ltmp469-.Lfunc_begin1         #     jumps to .Ltmp469
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp470-.Lfunc_begin1         # >> Call Site 76 <<
	.uleb128 .Ltmp471-.Ltmp470              #   Call between .Ltmp470 and .Ltmp471
	.uleb128 .Ltmp472-.Lfunc_begin1         #     jumps to .Ltmp472
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp473-.Lfunc_begin1         # >> Call Site 77 <<
	.uleb128 .Ltmp478-.Ltmp473              #   Call between .Ltmp473 and .Ltmp478
	.uleb128 .Ltmp479-.Lfunc_begin1         #     jumps to .Ltmp479
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp480-.Lfunc_begin1         # >> Call Site 78 <<
	.uleb128 .Ltmp487-.Ltmp480              #   Call between .Ltmp480 and .Ltmp487
	.uleb128 .Ltmp488-.Lfunc_begin1         #     jumps to .Ltmp488
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp489-.Lfunc_begin1         # >> Call Site 79 <<
	.uleb128 .Ltmp494-.Ltmp489              #   Call between .Ltmp489 and .Ltmp494
	.uleb128 .Ltmp495-.Lfunc_begin1         #     jumps to .Ltmp495
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp496-.Lfunc_begin1         # >> Call Site 80 <<
	.uleb128 .Ltmp499-.Ltmp496              #   Call between .Ltmp496 and .Ltmp499
	.uleb128 .Ltmp500-.Lfunc_begin1         #     jumps to .Ltmp500
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp501-.Lfunc_begin1         # >> Call Site 81 <<
	.uleb128 .Ltmp506-.Ltmp501              #   Call between .Ltmp501 and .Ltmp506
	.uleb128 .Ltmp507-.Lfunc_begin1         #     jumps to .Ltmp507
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp508-.Lfunc_begin1         # >> Call Site 82 <<
	.uleb128 .Ltmp509-.Ltmp508              #   Call between .Ltmp508 and .Ltmp509
	.uleb128 .Ltmp510-.Lfunc_begin1         #     jumps to .Ltmp510
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp511-.Lfunc_begin1         # >> Call Site 83 <<
	.uleb128 .Ltmp516-.Ltmp511              #   Call between .Ltmp511 and .Ltmp516
	.uleb128 .Ltmp517-.Lfunc_begin1         #     jumps to .Ltmp517
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp518-.Lfunc_begin1         # >> Call Site 84 <<
	.uleb128 .Ltmp519-.Ltmp518              #   Call between .Ltmp518 and .Ltmp519
	.uleb128 .Ltmp520-.Lfunc_begin1         #     jumps to .Ltmp520
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp521-.Lfunc_begin1         # >> Call Site 85 <<
	.uleb128 .Ltmp526-.Ltmp521              #   Call between .Ltmp521 and .Ltmp526
	.uleb128 .Ltmp527-.Lfunc_begin1         #     jumps to .Ltmp527
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp526-.Lfunc_begin1         # >> Call Site 86 <<
	.uleb128 .Ltmp543-.Ltmp526              #   Call between .Ltmp526 and .Ltmp543
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp543-.Lfunc_begin1         # >> Call Site 87 <<
	.uleb128 .Ltmp544-.Ltmp543              #   Call between .Ltmp543 and .Ltmp544
	.uleb128 .Ltmp545-.Lfunc_begin1         #     jumps to .Ltmp545
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp540-.Lfunc_begin1         # >> Call Site 88 <<
	.uleb128 .Ltmp541-.Ltmp540              #   Call between .Ltmp540 and .Ltmp541
	.uleb128 .Ltmp542-.Lfunc_begin1         #     jumps to .Ltmp542
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp537-.Lfunc_begin1         # >> Call Site 89 <<
	.uleb128 .Ltmp538-.Ltmp537              #   Call between .Ltmp537 and .Ltmp538
	.uleb128 .Ltmp539-.Lfunc_begin1         #     jumps to .Ltmp539
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp534-.Lfunc_begin1         # >> Call Site 90 <<
	.uleb128 .Ltmp535-.Ltmp534              #   Call between .Ltmp534 and .Ltmp535
	.uleb128 .Ltmp536-.Lfunc_begin1         #     jumps to .Ltmp536
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp531-.Lfunc_begin1         # >> Call Site 91 <<
	.uleb128 .Ltmp532-.Ltmp531              #   Call between .Ltmp531 and .Ltmp532
	.uleb128 .Ltmp533-.Lfunc_begin1         #     jumps to .Ltmp533
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp532-.Lfunc_begin1         # >> Call Site 92 <<
	.uleb128 .Ltmp528-.Ltmp532              #   Call between .Ltmp532 and .Ltmp528
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp528-.Lfunc_begin1         # >> Call Site 93 <<
	.uleb128 .Ltmp529-.Ltmp528              #   Call between .Ltmp528 and .Ltmp529
	.uleb128 .Ltmp530-.Lfunc_begin1         #     jumps to .Ltmp530
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp529-.Lfunc_begin1         # >> Call Site 94 <<
	.uleb128 .Lfunc_end2-.Ltmp529           #   Call between .Ltmp529 and .Lfunc_end2
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase0:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN9benchmark8internal12CheckHandlerC2EPKcS3_S3_i,"axG",@progbits,_ZN9benchmark8internal12CheckHandlerC2EPKcS3_S3_i,comdat
	.hidden	_ZN9benchmark8internal12CheckHandlerC2EPKcS3_S3_i # -- Begin function _ZN9benchmark8internal12CheckHandlerC2EPKcS3_S3_i
	.weak	_ZN9benchmark8internal12CheckHandlerC2EPKcS3_S3_i
	.p2align	5
	.type	_ZN9benchmark8internal12CheckHandlerC2EPKcS3_S3_i,@function
_ZN9benchmark8internal12CheckHandlerC2EPKcS3_S3_i: # @_ZN9benchmark8internal12CheckHandlerC2EPKcS3_S3_i
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
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	pcalau12i	$a5, %pc_hi20(_ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log)
	ld.b	$a5, $a5, %pc_lo12(_ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log)
	move	$s1, $a4
	move	$s0, $a3
	move	$fp, $a1
	dbar	20
	pcalau12i	$a1, %pc_hi20(_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log)
	addi.d	$s4, $a1, %pc_lo12(_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log)
	beqz	$a5, .LBB3_18
.LBB3_1:                                # %_ZN9benchmark8internal19GetErrorLogInstanceEv.exit
	ld.d	$s2, $s4, 0
	st.d	$s4, $a0, 0
	beqz	$s2, .LBB3_17
# %bb.2:
	beqz	$a2, .LBB3_4
# %bb.3:
	move	$a0, $a2
	move	$s3, $a2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	move	$a0, $s2
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	bnez	$a0, .LBB3_5
	b	.LBB3_17
.LBB3_4:
	ld.d	$a0, $s2, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s2, $a0
	ld.w	$a1, $a0, 32
	ori	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	beqz	$a0, .LBB3_17
.LBB3_5:                                # %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit
	pcalau12i	$a1, %pc_hi20(.L.str.59)
	addi.d	$a1, $a1, %pc_lo12(.L.str.59)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	beqz	$a0, .LBB3_17
# %bb.6:                                # %_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	beqz	$a0, .LBB3_17
# %bb.7:                                # %_ZN9benchmark8internallsIA3_cEERNS0_7LogTypeES4_RKT_.exit
	pcalau12i	$a1, %pc_hi20(.L.str.60)
	addi.d	$a1, $a1, %pc_lo12(.L.str.60)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s4, 0
	beqz	$s1, .LBB3_17
# %bb.8:
	beqz	$s0, .LBB3_10
# %bb.9:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	bnez	$a0, .LBB3_11
	b	.LBB3_17
.LBB3_10:
	ld.d	$a0, $s1, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s1, $a0
	ld.w	$a1, $a0, 32
	ori	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	beqz	$a0, .LBB3_17
.LBB3_11:                               # %_ZN9benchmark8internallsIA10_cEERNS0_7LogTypeES4_RKT_.exit
	pcalau12i	$a1, %pc_hi20(.L.str.79)
	addi.d	$a1, $a1, %pc_lo12(.L.str.79)
	ori	$a2, $zero, 9
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$s0, $s4, 0
	beqz	$s0, .LBB3_17
# %bb.12:
	beqz	$fp, .LBB3_14
# %bb.13:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	b	.LBB3_15
.LBB3_14:
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.w	$a1, $a0, 32
	ori	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate)
	jirl	$ra, $ra, 0
.LBB3_15:                               # %_ZN9benchmark8internallsIPKcEERNS0_7LogTypeES5_RKT_.exit11
	ld.d	$a0, $s4, 0
	beqz	$a0, .LBB3_17
# %bb.16:
	pcalau12i	$a1, %pc_hi20(.L.str.80)
	addi.d	$a1, $a1, %pc_lo12(.L.str.80)
	ori	$a2, $zero, 10
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	pcaddu18i	$t8, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jr	$t8
.LBB3_17:                               # %_ZN9benchmark8internallsIA11_cEERNS0_7LogTypeES4_RKT_.exit
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB3_18:
	pcalau12i	$a1, %pc_hi20(_ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log)
	addi.d	$a1, $a1, %pc_lo12(_ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log)
	move	$s2, $a0
	move	$a0, $a1
	move	$s3, $a2
	pcaddu18i	$ra, %call36(__cxa_guard_acquire)
	jirl	$ra, $ra, 0
	move	$a2, $s3
	move	$a1, $a0
	move	$a0, $s2
	addi.w	$a1, $a1, 0
	beqz	$a1, .LBB3_1
# %bb.19:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4clog)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4clog)
	st.d	$a0, $s4, 0
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log)
	pcaddu18i	$ra, %call36(__cxa_guard_release)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a2, $s3
	b	.LBB3_1
.Lfunc_end3:
	.size	_ZN9benchmark8internal12CheckHandlerC2EPKcS3_S3_i, .Lfunc_end3-_ZN9benchmark8internal12CheckHandlerC2EPKcS3_S3_i
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9benchmark8internal12CheckHandlerD2Ev,"axG",@progbits,_ZN9benchmark8internal12CheckHandlerD2Ev,comdat
	.hidden	_ZN9benchmark8internal12CheckHandlerD2Ev # -- Begin function _ZN9benchmark8internal12CheckHandlerD2Ev
	.weak	_ZN9benchmark8internal12CheckHandlerD2Ev
	.p2align	5
	.type	_ZN9benchmark8internal12CheckHandlerD2Ev,@function
_ZN9benchmark8internal12CheckHandlerD2Ev: # @_ZN9benchmark8internal12CheckHandlerD2Ev
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
	ld.d	$a0, $a0, 0
	ld.d	$fp, $a0, 0
	beqz	$fp, .LBB4_7
# %bb.1:
	ld.d	$a0, $fp, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.d	$s0, $a0, 240
	bnez	$s0, .LBB4_3
# %bb.2:
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.LBB4_3:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	ld.bu	$a0, $s0, 56
	bnez	$a0, .LBB4_5
# %bb.4:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s0
	jirl	$ra, $a2, 0
	b	.LBB4_6
.LBB4_5:
	ld.bu	$a0, $s0, 67
.LBB4_6:                                # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
	ext.w.b	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.LBB4_7:                                # %_ZN9benchmark8internallsERNS0_7LogTypeEPFRSoS3_E.exit
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal16CallAbortHandlerEv)
	jirl	$ra, $ra, 0
.Lfunc_end4:
	.size	_ZN9benchmark8internal12CheckHandlerD2Ev, .Lfunc_end4-_ZN9benchmark8internal12CheckHandlerD2Ev
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
.Lfunc_end5:
	.size	__clang_call_terminate, .Lfunc_end5-__clang_call_terminate
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
.Lfunc_end6:
	.size	main, .Lfunc_end6-main
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv,"axG",@progbits,_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv,comdat
	.hidden	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv # -- Begin function _ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv
	.weak	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv
	.p2align	5
	.type	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv,@function
_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv: # @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a0, 16
	move	$a0, $fp
	jirl	$ra, $a1, 0
	pcalau12i	$a0, %got_pc_hi20(__libc_single_threaded)
	ld.d	$a0, $a0, %got_pc_lo12(__libc_single_threaded)
	ld.bu	$a0, $a0, 0
	beqz	$a0, .LBB7_3
# %bb.1:
	ld.w	$a0, $fp, 12
	addi.d	$a1, $a0, -1
	st.w	$a1, $fp, 12
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB7_4
.LBB7_2:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	jr	$a1
.LBB7_3:
	addi.d	$a1, $fp, 12
	addi.w	$a2, $zero, -1
	amadd_db.w	$a0, $a2, $a1
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB7_2
.LBB7_4:                                # %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end7:
	.size	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv, .Lfunc_end7-_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9benchmark8internal16CallAbortHandlerEv,"axG",@progbits,_ZN9benchmark8internal16CallAbortHandlerEv,comdat
	.hidden	_ZN9benchmark8internal16CallAbortHandlerEv # -- Begin function _ZN9benchmark8internal16CallAbortHandlerEv
	.weak	_ZN9benchmark8internal16CallAbortHandlerEv
	.p2align	5
	.type	_ZN9benchmark8internal16CallAbortHandlerEv,@function
_ZN9benchmark8internal16CallAbortHandlerEv: # @_ZN9benchmark8internal16CallAbortHandlerEv
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal15GetAbortHandlerEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	jirl	$ra, $a0, 0
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end8:
	.size	_ZN9benchmark8internal16CallAbortHandlerEv, .Lfunc_end8-_ZN9benchmark8internal16CallAbortHandlerEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_insert_unique_IRKSA_NSG_11_Alloc_nodeEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EOT_RT0_,"axG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_insert_unique_IRKSA_NSG_11_Alloc_nodeEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EOT_RT0_,comdat
	.hidden	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_insert_unique_IRKSA_NSG_11_Alloc_nodeEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EOT_RT0_ # -- Begin function _ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_insert_unique_IRKSA_NSG_11_Alloc_nodeEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EOT_RT0_
	.weak	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_insert_unique_IRKSA_NSG_11_Alloc_nodeEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EOT_RT0_
	.p2align	5
	.type	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_insert_unique_IRKSA_NSG_11_Alloc_nodeEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EOT_RT0_,@function
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_insert_unique_IRKSA_NSG_11_Alloc_nodeEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EOT_RT0_: # @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_insert_unique_IRKSA_NSG_11_Alloc_nodeEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EOT_RT0_
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
	move	$s3, $a3
	move	$s0, $a2
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_)
	jirl	$ra, $ra, 0
	beqz	$a1, .LBB9_8
# %bb.1:
	move	$s1, $a1
	addi.d	$s2, $fp, 8
	ori	$s4, $zero, 1
	bnez	$a0, .LBB9_7
# %bb.2:
	beq	$s2, $s1, .LBB9_7
# %bb.3:
	ld.d	$s4, $s0, 8
	ld.d	$s5, $s1, 40
	sltu	$a0, $s5, $s4
	masknez	$a1, $s4, $a0
	maskeqz	$a0, $s5, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB9_5
# %bb.4:                                # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
	ld.d	$a1, $s1, 32
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB9_6
.LBB9_5:                                # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i
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
.LBB9_6:                                # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i
	addi.w	$a0, $a0, 0
	slti	$s4, $a0, 0
.LBB9_7:                                # %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_M_insert_IRKSA_NSG_11_Alloc_nodeEEESt17_Rb_tree_iteratorISA_EPSt18_Rb_tree_node_baseSO_OT_RT0_.exit
	ld.d	$s3, $s3, 0
	ori	$a0, $zero, 80
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	move	$a0, $s3
	move	$a1, $s5
	move	$a2, $s0
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	move	$a1, $s5
	move	$a2, $s1
	move	$a3, $s2
	pcaddu18i	$ra, %call36(_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	ld.d	$a1, $fp, 40
	addi.d	$a1, $a1, 1
	st.d	$a1, $fp, 40
.LBB9_8:
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
.Lfunc_end9:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_insert_unique_IRKSA_NSG_11_Alloc_nodeEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EOT_RT0_, .Lfunc_end9-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_insert_unique_IRKSA_NSG_11_Alloc_nodeEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EOT_RT0_
	.cfi_endproc
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
	beq	$a0, $a1, .LBB10_4
# %bb.1:
	move	$fp, $a1
	ld.d	$s5, $s0, 8
	ld.d	$s6, $a1, 40
	sltu	$a0, $s6, $s5
	masknez	$a1, $s5, $a0
	maskeqz	$a0, $s6, $a0
	or	$s2, $a0, $a1
	beqz	$s2, .LBB10_10
# %bb.2:                                # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i21
	ld.d	$s3, $fp, 32
	ld.d	$s4, $s0, 0
	move	$a0, $s4
	move	$a1, $s3
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB10_11
# %bb.3:                                # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit28.thread
	bgez	$a0, .LBB10_12
	b	.LBB10_15
.LBB10_4:
	ld.d	$a0, $s1, 40
	beqz	$a0, .LBB10_27
# %bb.5:
	ld.d	$a1, $s1, 32
	ld.d	$fp, $a1, 40
	ld.d	$s2, $s0, 8
	sltu	$a0, $s2, $fp
	masknez	$a2, $fp, $a0
	maskeqz	$a0, $s2, $a0
	or	$a2, $a0, $a2
	beqz	$a2, .LBB10_7
# %bb.6:                                # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i
	ld.d	$a3, $s0, 0
	ld.d	$a0, $a1, 32
	move	$s3, $a1
	move	$a1, $a3
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	move	$a1, $s3
	bnez	$a0, .LBB10_8
.LBB10_7:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
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
.LBB10_8:                               # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
	addi.w	$a0, $a0, 0
	bgez	$a0, .LBB10_27
# %bb.9:
	move	$fp, $zero
	b	.LBB10_28
.LBB10_10:                              # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit28
	sub.d	$a0, $s5, $s6
	bgez	$a0, .LBB10_21
	b	.LBB10_15
.LBB10_11:                              # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit28.thread78
	sub.d	$a0, $s5, $s6
	bltz	$a0, .LBB10_15
.LBB10_12:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i39
	move	$a0, $s3
	move	$a1, $s4
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB10_21
# %bb.13:                               # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit46
	addi.w	$a0, $a0, 0
	bltz	$a0, .LBB10_22
.LBB10_14:
	move	$a1, $zero
	b	.LBB10_28
.LBB10_15:
	ld.d	$a0, $s1, 24
	beq	$a0, $fp, .LBB10_29
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
	beqz	$a2, .LBB10_18
# %bb.17:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i30
	ld.d	$a1, $s0, 0
	ld.d	$a0, $s2, 32
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB10_19
.LBB10_18:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i33
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
.LBB10_19:                              # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit37
	addi.w	$a0, $a0, 0
	bgez	$a0, .LBB10_27
# %bb.20:
	ld.d	$a0, $s2, 24
	sltui	$a0, $a0, 1
	masknez	$fp, $fp, $a0
	maskeqz	$a0, $s2, $a0
	or	$a1, $a0, $fp
	b	.LBB10_28
.LBB10_21:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i42
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
	bgez	$a0, .LBB10_14
.LBB10_22:
	ld.d	$a0, $s1, 32
	beq	$a0, $fp, .LBB10_30
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
	beqz	$a2, .LBB10_25
# %bb.24:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i48
	ld.d	$a1, $s2, 32
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB10_26
.LBB10_25:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i51
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
.LBB10_26:                              # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit55
	addi.w	$a0, $a0, 0
	bltz	$a0, .LBB10_31
.LBB10_27:
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_)
	jirl	$ra, $ra, 0
	move	$fp, $a0
.LBB10_28:
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
.LBB10_29:
	move	$a1, $fp
	b	.LBB10_28
.LBB10_30:
	move	$a1, $fp
	move	$fp, $zero
	b	.LBB10_28
.LBB10_31:
	ld.d	$a0, $fp, 24
	sltui	$a0, $a0, 1
	maskeqz	$a1, $fp, $a0
	masknez	$fp, $s2, $a0
	or	$a1, $a1, $fp
	b	.LBB10_28
.Lfunc_end10:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_, .Lfunc_end10-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_
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
	beqz	$a0, .LBB11_13
# %bb.1:                                # %.lr.ph
	ld.d	$s5, $s0, 8
	ld.d	$s2, $s0, 0
	ori	$s6, $s3, 4095
	ori	$s7, $zero, 24
	ori	$s8, $zero, 16
	b	.LBB11_4
	.p2align	4, , 16
.LBB11_2:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
                                        #   in Loop: Header=BB11_4 Depth=1
	sub.d	$a0, $s5, $s3
	slt	$a1, $s4, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s4, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $s6
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s6, $a1
	or	$a0, $a0, $a1
.LBB11_3:                               # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
                                        #   in Loop: Header=BB11_4 Depth=1
	addi.w	$a1, $a0, 0
	slti	$a0, $a1, 0
	masknez	$a2, $s7, $a0
	maskeqz	$a0, $s8, $a0
	or	$a0, $a0, $a2
	ldx.d	$a0, $fp, $a0
	beqz	$a0, .LBB11_6
.LBB11_4:                               # =>This Inner Loop Header: Depth=1
	move	$fp, $a0
	ld.d	$s3, $a0, 40
	sltu	$a0, $s3, $s5
	masknez	$a1, $s5, $a0
	maskeqz	$a0, $s3, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB11_2
# %bb.5:                                # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i
                                        #   in Loop: Header=BB11_4 Depth=1
	ld.d	$a1, $fp, 32
	move	$a0, $s2
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB11_3
	b	.LBB11_2
.LBB11_6:                               # %._crit_edge
	move	$s2, $fp
	lu12i.w	$s3, 524287
	bgez	$a1, .LBB11_9
# %bb.7:                                # %._crit_edge.thread
	ld.d	$a0, $s1, 24
	beq	$fp, $a0, .LBB11_14
.LBB11_8:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	move	$s2, $a0
.LBB11_9:
	ld.d	$s1, $s2, 40
	ld.d	$s5, $s0, 8
	sltu	$a0, $s5, $s1
	masknez	$a1, $s1, $a0
	maskeqz	$a0, $s5, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB11_11
# %bb.10:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6
	ld.d	$a1, $s0, 0
	ld.d	$a0, $s2, 32
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB11_12
.LBB11_11:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9
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
.LBB11_12:                              # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13
	addi.w	$a0, $a0, 0
	slti	$a1, $a0, 0
	srai.d	$a0, $a0, 63
	and	$fp, $a0, $fp
	masknez	$a0, $s2, $a1
	b	.LBB11_15
.LBB11_13:
	addi.d	$fp, $s1, 8
	ld.d	$a0, $s1, 24
	bne	$fp, $a0, .LBB11_8
.LBB11_14:
	move	$a0, $zero
.LBB11_15:
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
.Lfunc_end11:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_, .Lfunc_end11-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_,"axG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_,comdat
	.hidden	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_ # -- Begin function _ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_
	.weak	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_
	.p2align	5
	.type	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_,@function
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_: # @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception2
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
	move	$s0, $a2
	move	$fp, $a1
	addi.d	$s1, $a1, 48
	st.d	$s1, $a1, 32
	ld.d	$s2, $a2, 8
	ld.d	$s3, $a2, 0
	ori	$a0, $zero, 16
	st.d	$s2, $sp, 16
	bltu	$s2, $a0, .LBB12_3
# %bb.1:                                # %.noexc.i.i
.Ltmp546:                               # EH_LABEL
	addi.d	$s4, $fp, 32
	addi.d	$a1, $sp, 16
	move	$a0, $s4
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp547:                               # EH_LABEL
# %bb.2:                                # %.noexc
	ld.d	$a1, $sp, 16
	st.d	$a0, $s4, 0
	st.d	$a1, $s1, 0
	move	$s1, $a0
.LBB12_3:                               # %._crit_edge.i.i.i
	beqz	$s2, .LBB12_7
# %bb.4:                                # %._crit_edge.i.i.i
	ori	$a0, $zero, 1
	bne	$s2, $a0, .LBB12_6
# %bb.5:
	ld.b	$a0, $s3, 0
	st.b	$a0, $s1, 0
	b	.LBB12_7
.LBB12_6:
	move	$a0, $s1
	move	$a1, $s3
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB12_7:
	ld.d	$a0, $sp, 16
	ld.d	$a1, $fp, 32
	st.d	$a0, $fp, 40
	stx.b	$zero, $a1, $a0
	vld	$vr0, $s0, 32
	vst	$vr0, $fp, 64
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.LBB12_8:
.Ltmp548:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_begin_catch)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 80
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.Ltmp549:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_rethrow)
	jirl	$ra, $ra, 0
.Ltmp550:                               # EH_LABEL
# %bb.9:
.LBB12_10:
.Ltmp551:                               # EH_LABEL
	move	$fp, $a0
.Ltmp552:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_end_catch)
	jirl	$ra, $ra, 0
.Ltmp553:                               # EH_LABEL
# %bb.11:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB12_12:
.Ltmp554:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end12:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_, .Lfunc_end12-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_
	.cfi_endproc
	.section	.gcc_except_table._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_,"aG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_,comdat
	.p2align	2, 0x0
GCC_except_table12:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Ltmp546-.Lfunc_begin2         # >> Call Site 1 <<
	.uleb128 .Ltmp547-.Ltmp546              #   Call between .Ltmp546 and .Ltmp547
	.uleb128 .Ltmp548-.Lfunc_begin2         #     jumps to .Ltmp548
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp547-.Lfunc_begin2         # >> Call Site 2 <<
	.uleb128 .Ltmp549-.Ltmp547              #   Call between .Ltmp547 and .Ltmp549
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp549-.Lfunc_begin2         # >> Call Site 3 <<
	.uleb128 .Ltmp550-.Ltmp549              #   Call between .Ltmp549 and .Ltmp550
	.uleb128 .Ltmp551-.Lfunc_begin2         #     jumps to .Ltmp551
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp552-.Lfunc_begin2         # >> Call Site 4 <<
	.uleb128 .Ltmp553-.Ltmp552              #   Call between .Ltmp552 and .Ltmp553
	.uleb128 .Ltmp554-.Lfunc_begin2         #     jumps to .Ltmp554
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp553-.Lfunc_begin2         # >> Call Site 5 <<
	.uleb128 .Lfunc_end12-.Ltmp553          #   Call between .Ltmp553 and .Lfunc_end12
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase1:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNK7Results5GetAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,"axG",@progbits,_ZNK7Results5GetAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,comdat
	.hidden	_ZNK7Results5GetAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE # -- Begin function _ZNK7Results5GetAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.weak	_ZNK7Results5GetAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.p2align	5
	.type	_ZNK7Results5GetAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,@function
_ZNK7Results5GetAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: # @_ZNK7Results5GetAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception3
# %bb.0:
	addi.d	$sp, $sp, -512
	.cfi_def_cfa_offset 512
	st.d	$ra, $sp, 504                   # 8-byte Folded Spill
	st.d	$fp, $sp, 496                   # 8-byte Folded Spill
	st.d	$s0, $sp, 488                   # 8-byte Folded Spill
	st.d	$s1, $sp, 480                   # 8-byte Folded Spill
	st.d	$s2, $sp, 472                   # 8-byte Folded Spill
	st.d	$s3, $sp, 464                   # 8-byte Folded Spill
	st.d	$s4, $sp, 456                   # 8-byte Folded Spill
	st.d	$s5, $sp, 448                   # 8-byte Folded Spill
	st.d	$s6, $sp, 440                   # 8-byte Folded Spill
	st.d	$s7, $sp, 432                   # 8-byte Folded Spill
	st.d	$s8, $sp, 424                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 416                  # 8-byte Folded Spill
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
	ld.d	$s5, $a0, 48
	beqz	$s5, .LBB13_20
# %bb.1:                                # %.lr.ph.i.i.i.i
	addi.d	$s1, $a0, 40
	ld.d	$s4, $a1, 8
	ld.d	$fp, $a1, 0
	lu12i.w	$s3, -524288
	lu12i.w	$a0, 524287
	ori	$s2, $a0, 4095
	ori	$s6, $zero, 16
	ori	$s7, $zero, 24
	move	$s0, $s1
	b	.LBB13_4
	.p2align	4, , 16
.LBB13_2:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i
                                        #   in Loop: Header=BB13_4 Depth=1
	sub.d	$a0, $s8, $s4
	slt	$a1, $s3, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s3, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $s2
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s2, $a1
	or	$a0, $a0, $a1
.LBB13_3:                               # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i
                                        #   in Loop: Header=BB13_4 Depth=1
	addi.w	$a0, $a0, 0
	slti	$a0, $a0, 0
	masknez	$a1, $s5, $a0
	masknez	$a2, $s6, $a0
	maskeqz	$a3, $s7, $a0
	or	$a2, $a3, $a2
	ldx.d	$s5, $s5, $a2
	maskeqz	$a0, $s0, $a0
	or	$s0, $a0, $a1
	beqz	$s5, .LBB13_6
.LBB13_4:                               # =>This Inner Loop Header: Depth=1
	ld.d	$s8, $s5, 40
	sltu	$a0, $s4, $s8
	masknez	$a1, $s8, $a0
	maskeqz	$a0, $s4, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB13_2
# %bb.5:                                # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i
                                        #   in Loop: Header=BB13_4 Depth=1
	ld.d	$a0, $s5, 32
	move	$a1, $fp
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB13_3
	b	.LBB13_2
.LBB13_6:                               # %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i
	beq	$s0, $s1, .LBB13_20
# %bb.7:
	ld.d	$s5, $s0, 40
	sltu	$a0, $s5, $s4
	masknez	$a1, $s4, $a0
	maskeqz	$a0, $s5, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB13_9
# %bb.8:                                # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
	ld.d	$a1, $s0, 32
	move	$a0, $fp
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB13_10
.LBB13_9:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i
	sub.d	$a0, $s4, $s5
	slt	$a1, $s3, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s3, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $s2
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s2, $a1
	or	$a0, $a0, $a1
.LBB13_10:                              # %_ZNK7Results3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
	addi.w	$a0, $a0, 0
	bltz	$a0, .LBB13_20
# %bb.11:
	ld.d	$a1, $s0, 72
	beqz	$a1, .LBB13_20
# %bb.12:
	slti	$a0, $a0, 0
	pcalau12i	$fp, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	ld.b	$a1, $fp, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	masknez	$a2, $s0, $a0
	maskeqz	$a0, $s1, $a0
	or	$s1, $a0, $a2
	dbar	20
	beqz	$a1, .LBB13_21
.LBB13_13:                              # %_ZN9benchmark8internal18GetNullLogInstanceEv.exit
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 64
	ld.d	$a2, $s0, 72
	addi.d	$a0, $sp, 40
.Ltmp555:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp556:                               # EH_LABEL
# %bb.14:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
.Ltmp558:                               # EH_LABEL
	addi.d	$a0, $sp, 24
	addi.d	$a1, $sp, 16
	addi.d	$s0, $sp, 24
	pcaddu18i	$ra, %call36(_ZNSi10_M_extractIdEERSiRT_)
	jirl	$ra, $ra, 0
.Ltmp559:                               # EH_LABEL
# %bb.15:                               # %_ZNSirsERd.exit
	ld.d	$a0, $sp, 24
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.bu	$a0, $a0, 32
	andi	$a0, $a0, 5
	bnez	$a0, .LBB13_23
# %bb.16:
	ld.b	$a0, $fp, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	dbar	20
	beqz	$a0, .LBB13_26
.LBB13_17:
	fld.d	$fs0, $sp, 16
	pcalau12i	$a0, %got_pc_hi20(_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE)
	ld.d	$fp, $a0, %got_pc_lo12(_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE)
	ld.d	$a0, $fp, 0
	st.d	$a0, $sp, 24
	ld.d	$a1, $fp, 64
	ld.d	$a0, $a0, -24
	ld.d	$a2, $fp, 72
	addi.d	$s0, $sp, 24
	stx.d	$a1, $a0, $s0
	st.d	$a2, $sp, 40
	pcalau12i	$a0, %got_pc_hi20(_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE)
	ld.d	$a1, $a0, %got_pc_lo12(_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE)
	ld.d	$a0, $sp, 120
	addi.d	$a1, $a1, 16
	addi.d	$a2, $sp, 136
	st.d	$a1, $sp, 48
	beq	$a0, $a2, .LBB13_19
# %bb.18:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
	ld.d	$a1, $sp, 136
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB13_19:                              # %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
	pcalau12i	$a0, %got_pc_hi20(_ZTVSt15basic_streambufIcSt11char_traitsIcEE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTVSt15basic_streambufIcSt11char_traitsIcEE)
	addi.d	$a0, $a0, 16
	st.d	$a0, $sp, 48
	addi.d	$a0, $sp, 104
	pcaddu18i	$ra, %call36(_ZNSt6localeD1Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 16
	st.d	$a0, $sp, 24
	ld.d	$a1, $fp, 24
	ld.d	$a0, $a0, -24
	stx.d	$a1, $a0, $s0
	st.d	$zero, $sp, 32
	addi.d	$a0, $sp, 152
	pcaddu18i	$ra, %call36(_ZNSt8ios_baseD2Ev)
	jirl	$ra, $ra, 0
	fmov.d	$fa0, $fs0
	fld.d	$fs0, $sp, 416                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 424                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 432                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 440                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 448                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 456                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 464                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 472                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 480                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 488                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 496                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 504                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 512
	ret
.LBB13_20:                              # %.critedge
	pcalau12i	$a0, %pc_hi20(.L.str.82)
	addi.d	$a1, $a0, %pc_lo12(.L.str.82)
	pcalau12i	$a0, %pc_hi20(.L.str.83)
	addi.d	$a2, $a0, %pc_lo12(.L.str.83)
	pcalau12i	$a0, %pc_hi20(.L__func__._ZNK7Results5GetAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	addi.d	$a3, $a0, %pc_lo12(.L__func__._ZNK7Results5GetAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	addi.d	$a0, $sp, 24
	ori	$a4, $zero, 144
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal12CheckHandlerC2EPKcS3_S3_i)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal12CheckHandlerD2Ev)
	jirl	$ra, $ra, 0
.LBB13_21:
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcaddu18i	$ra, %call36(__cxa_guard_acquire)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	beqz	$a0, .LBB13_13
# %bb.22:
	pcalau12i	$a0, %pc_hi20(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	st.d	$zero, $a0, %pc_lo12(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcaddu18i	$ra, %call36(__cxa_guard_release)
	jirl	$ra, $ra, 0
	b	.LBB13_13
.LBB13_23:
.Ltmp561:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.84)
	addi.d	$a1, $a0, %pc_lo12(.L.str.84)
	pcalau12i	$a0, %pc_hi20(.L.str.83)
	addi.d	$a2, $a0, %pc_lo12(.L.str.83)
	pcalau12i	$a0, %pc_hi20(.L__func__._ZNK7Results5GetAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	addi.d	$a3, $a0, %pc_lo12(.L__func__._ZNK7Results5GetAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	addi.d	$a0, $sp, 8
	ori	$a4, $zero, 149
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal12CheckHandlerC2EPKcS3_S3_i)
	jirl	$ra, $ra, 0
.Ltmp562:                               # EH_LABEL
# %bb.24:                               # %_ZN9benchmark8internal18GetNullLogInstanceEv.exit20
.Ltmp563:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal12CheckHandlerD2Ev)
	jirl	$ra, $ra, 0
.Ltmp564:                               # EH_LABEL
# %bb.25:
.LBB13_26:
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcaddu18i	$ra, %call36(__cxa_guard_acquire)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	beqz	$a0, .LBB13_17
# %bb.27:
	pcalau12i	$a0, %pc_hi20(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	st.d	$zero, $a0, %pc_lo12(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcaddu18i	$ra, %call36(__cxa_guard_release)
	jirl	$ra, $ra, 0
	b	.LBB13_17
.LBB13_28:
.Ltmp565:                               # EH_LABEL
	b	.LBB13_31
.LBB13_29:
.Ltmp560:                               # EH_LABEL
	b	.LBB13_31
.LBB13_30:
.Ltmp557:                               # EH_LABEL
.LBB13_31:
	move	$fp, $a0
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end13:
	.size	_ZNK7Results5GetAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, .Lfunc_end13-_ZNK7Results5GetAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.cfi_endproc
	.section	.gcc_except_table._ZNK7Results5GetAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,"aG",@progbits,_ZNK7Results5GetAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,comdat
	.p2align	2, 0x0
GCC_except_table13:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Lfunc_begin3-.Lfunc_begin3    # >> Call Site 1 <<
	.uleb128 .Ltmp555-.Lfunc_begin3         #   Call between .Lfunc_begin3 and .Ltmp555
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp555-.Lfunc_begin3         # >> Call Site 2 <<
	.uleb128 .Ltmp556-.Ltmp555              #   Call between .Ltmp555 and .Ltmp556
	.uleb128 .Ltmp557-.Lfunc_begin3         #     jumps to .Ltmp557
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp558-.Lfunc_begin3         # >> Call Site 3 <<
	.uleb128 .Ltmp559-.Ltmp558              #   Call between .Ltmp558 and .Ltmp559
	.uleb128 .Ltmp560-.Lfunc_begin3         #     jumps to .Ltmp560
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp559-.Lfunc_begin3         # >> Call Site 4 <<
	.uleb128 .Ltmp561-.Ltmp559              #   Call between .Ltmp559 and .Ltmp561
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp561-.Lfunc_begin3         # >> Call Site 5 <<
	.uleb128 .Ltmp564-.Ltmp561              #   Call between .Ltmp561 and .Ltmp564
	.uleb128 .Ltmp565-.Lfunc_begin3         #     jumps to .Ltmp565
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp564-.Lfunc_begin3         # >> Call Site 6 <<
	.uleb128 .Lfunc_end13-.Ltmp564          #   Call between .Ltmp564 and .Lfunc_end13
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt17_Function_handlerIFvRK7ResultsEPS3_E9_M_invokeERKSt9_Any_dataS2_,"axG",@progbits,_ZNSt17_Function_handlerIFvRK7ResultsEPS3_E9_M_invokeERKSt9_Any_dataS2_,comdat
	.hidden	_ZNSt17_Function_handlerIFvRK7ResultsEPS3_E9_M_invokeERKSt9_Any_dataS2_ # -- Begin function _ZNSt17_Function_handlerIFvRK7ResultsEPS3_E9_M_invokeERKSt9_Any_dataS2_
	.weak	_ZNSt17_Function_handlerIFvRK7ResultsEPS3_E9_M_invokeERKSt9_Any_dataS2_
	.p2align	5
	.type	_ZNSt17_Function_handlerIFvRK7ResultsEPS3_E9_M_invokeERKSt9_Any_dataS2_,@function
_ZNSt17_Function_handlerIFvRK7ResultsEPS3_E9_M_invokeERKSt9_Any_dataS2_: # @_ZNSt17_Function_handlerIFvRK7ResultsEPS3_E9_M_invokeERKSt9_Any_dataS2_
	.cfi_startproc
# %bb.0:
	ld.d	$a2, $a0, 0
	move	$a0, $a1
	jr	$a2
.Lfunc_end14:
	.size	_ZNSt17_Function_handlerIFvRK7ResultsEPS3_E9_M_invokeERKSt9_Any_dataS2_, .Lfunc_end14-_ZNSt17_Function_handlerIFvRK7ResultsEPS3_E9_M_invokeERKSt9_Any_dataS2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt17_Function_handlerIFvRK7ResultsEPS3_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation,"axG",@progbits,_ZNSt17_Function_handlerIFvRK7ResultsEPS3_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation,comdat
	.hidden	_ZNSt17_Function_handlerIFvRK7ResultsEPS3_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation # -- Begin function _ZNSt17_Function_handlerIFvRK7ResultsEPS3_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation
	.weak	_ZNSt17_Function_handlerIFvRK7ResultsEPS3_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation
	.p2align	5
	.type	_ZNSt17_Function_handlerIFvRK7ResultsEPS3_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFvRK7ResultsEPS3_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation: # @_ZNSt17_Function_handlerIFvRK7ResultsEPS3_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB15_6
# %bb.1:
	ori	$a3, $zero, 2
	beq	$a2, $a3, .LBB15_4
# %bb.2:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB15_5
# %bb.3:                                # %_ZNSt14_Function_base13_Base_managerIPFvRK7ResultsEE10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit
	move	$a0, $zero
	ret
.LBB15_4:                               # %.sink.split.i
	ld.d	$a1, $a1, 0
.LBB15_5:                               # %_ZNSt14_Function_base13_Base_managerIPFvRK7ResultsEE10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit.sink.split
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.LBB15_6:
	pcalau12i	$a1, %pc_hi20(_ZTIPFvRK7ResultsE)
	addi.d	$a1, $a1, %pc_lo12(_ZTIPFvRK7ResultsE)
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end15:
	.size	_ZNSt17_Function_handlerIFvRK7ResultsEPS3_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation, .Lfunc_end15-_ZNSt17_Function_handlerIFvRK7ResultsEPS3_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	5                               # -- Begin function _GLOBAL__sub_I_user_counters_thousands_test.cc
	.type	_GLOBAL__sub_I_user_counters_thousands_test.cc,@function
_GLOBAL__sub_I_user_counters_thousands_test.cc: # @_GLOBAL__sub_I_user_counters_thousands_test.cc
.Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception4
# %bb.0:
	addi.d	$sp, $sp, -2032
	.cfi_def_cfa_offset 2032
	st.d	$ra, $sp, 2024                  # 8-byte Folded Spill
	st.d	$fp, $sp, 2016                  # 8-byte Folded Spill
	st.d	$s0, $sp, 2008                  # 8-byte Folded Spill
	st.d	$s1, $sp, 2000                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1992                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1984                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1976                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1968                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1960                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1952                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1944                  # 8-byte Folded Spill
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
	addi.d	$sp, $sp, -656
	.cfi_def_cfa_offset 2688
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal17InitializeStreamsEv)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	addi.d	$s2, $sp, 784
	st.d	$s2, $sp, 768
	ori	$a0, $zero, 21
	ori	$a1, $zero, 2568
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
.Ltmp566:                               # EH_LABEL
	addi.d	$a0, $sp, 768
	ori	$a1, $zero, 2568
	add.d	$a1, $sp, $a1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp567:                               # EH_LABEL
# %bb.1:                                # %.noexc.i
	ori	$a1, $zero, 2568
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	st.d	$a0, $sp, 768
	st.d	$a1, $sp, 784
	pcalau12i	$a2, %pc_hi20(.L.str.6)
	addi.d	$s4, $a2, %pc_lo12(.L.str.6)
	vld	$vr0, $s4, 0
	ld.d	$a2, $s4, 13
	vst	$vr0, $a0, 0
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	st.d	$a2, $a0, 13
	ld.d	$a0, $sp, 768
	st.d	$a1, $sp, 776
	stx.b	$zero, $a0, $a1
	ori	$s1, $zero, 1
.Ltmp569:                               # EH_LABEL
	addi.d	$a1, $sp, 768
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp570:                               # EH_LABEL
# %bb.2:
	pcalau12i	$a0, %got_pc_hi20(_ZTVN9benchmark8internal17FunctionBenchmarkE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTVN9benchmark8internal17FunctionBenchmarkE)
	addi.d	$a0, $a0, 16
	st.d	$a0, $fp, 0
	pcalau12i	$a0, %pc_hi20(_Z21BM_Counters_ThousandsRN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_Z21BM_Counters_ThousandsRN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp571:                               # EH_LABEL
	move	$s1, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp572:                               # EH_LABEL
# %bb.3:
.Ltmp573:                               # EH_LABEL
	ori	$a1, $zero, 2
	move	$s1, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark11RepetitionsEi)
	jirl	$ra, $ra, 0
.Ltmp574:                               # EH_LABEL
# %bb.4:
	move	$s0, $a0
	ld.d	$a0, $sp, 768
	beq	$a0, $s2, .LBB16_6
# %bb.5:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
	ld.d	$a1, $sp, 784
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_6:                               # %__cxx_global_var_init.5.exit
	pcalau12i	$a0, %pc_hi20(_ZL27benchmark_uniq_2_benchmark_)
	st.d	$s0, $a0, %pc_lo12(_ZL27benchmark_uniq_2_benchmark_)
	ori	$a0, $zero, 2584
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2568
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	ori	$s1, $zero, 179
	ori	$a0, $zero, 2536
	add.d	$a0, $sp, $a0
	st.d	$s1, $a0, 0
	ori	$a0, $zero, 2568
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2536
	add.d	$a1, $sp, $a1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2536
	add.d	$a1, $sp, $a1
	ld.d	$s0, $a1, 0
	move	$fp, $a0
	ori	$a1, $zero, 2568
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 2584
	add.d	$a0, $sp, $a0
	st.d	$s0, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a1, $a0, %pc_lo12(.L.str.8)
	ori	$a2, $zero, 179
	move	$a0, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2576
	add.d	$a0, $sp, $a0
	st.d	$s0, $a0, 0
	stx.b	$zero, $fp, $s0
.Ltmp576:                               # EH_LABEL
	addi.d	$a0, $sp, 768
	ori	$a1, $zero, 2568
	add.d	$a1, $sp, $a1
	addi.d	$s0, $sp, 768
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp577:                               # EH_LABEL
# %bb.7:                                # %.noexc.i43.i
	addi.d	$s0, $sp, 856
	ori	$a0, $zero, 2552
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2536
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 2504
	add.d	$a0, $sp, $a0
	st.d	$s1, $a0, 0
.Ltmp579:                               # EH_LABEL
	ori	$a0, $zero, 2536
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2504
	add.d	$a1, $sp, $a1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp580:                               # EH_LABEL
# %bb.8:                                # %.noexc44.i
	move	$fp, $a0
	ori	$a0, $zero, 2504
	add.d	$a0, $sp, $a0
	ld.d	$s1, $a0, 0
	ori	$a0, $zero, 2536
	add.d	$a0, $sp, $a0
	st.d	$fp, $a0, 0
	ori	$a0, $zero, 2552
	add.d	$a0, $sp, $a0
	st.d	$s1, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a1, $a0, %pc_lo12(.L.str.8)
	ori	$a2, $zero, 179
	move	$a0, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2544
	add.d	$a0, $sp, $a0
	st.d	$s1, $a0, 0
	stx.b	$zero, $fp, $s1
.Ltmp582:                               # EH_LABEL
	ori	$a0, $zero, 2536
	add.d	$a1, $sp, $a0
	move	$a0, $s0
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp583:                               # EH_LABEL
# %bb.9:                                # %.noexc.i47.i
	addi.d	$s1, $sp, 944
	ori	$a0, $zero, 2520
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2504
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 184
	ori	$a1, $zero, 2472
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
.Ltmp585:                               # EH_LABEL
	ori	$a0, $zero, 2504
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2472
	add.d	$a1, $sp, $a1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp586:                               # EH_LABEL
# %bb.10:                               # %.noexc48.i
	move	$fp, $a0
	ori	$a0, $zero, 2472
	add.d	$a0, $sp, $a0
	ld.d	$s2, $a0, 0
	ori	$a0, $zero, 2504
	add.d	$a0, $sp, $a0
	st.d	$fp, $a0, 0
	ori	$a0, $zero, 2520
	add.d	$a0, $sp, $a0
	st.d	$s2, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a1, $a0, %pc_lo12(.L.str.9)
	ori	$a2, $zero, 184
	move	$a0, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2512
	add.d	$a0, $sp, $a0
	st.d	$s2, $a0, 0
	stx.b	$zero, $fp, $s2
.Ltmp588:                               # EH_LABEL
	ori	$a0, $zero, 2504
	add.d	$a1, $sp, $a0
	move	$a0, $s1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp589:                               # EH_LABEL
# %bb.11:                               # %.noexc.i51.i
	addi.d	$s2, $sp, 1032
	ori	$a0, $zero, 2488
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2472
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 186
	ori	$a1, $zero, 2440
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
.Ltmp591:                               # EH_LABEL
	ori	$a0, $zero, 2472
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2440
	add.d	$a1, $sp, $a1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp592:                               # EH_LABEL
# %bb.12:                               # %.noexc52.i
	move	$fp, $a0
	ori	$a0, $zero, 2440
	add.d	$a0, $sp, $a0
	ld.d	$s3, $a0, 0
	ori	$a0, $zero, 2472
	add.d	$a0, $sp, $a0
	st.d	$fp, $a0, 0
	ori	$a0, $zero, 2488
	add.d	$a0, $sp, $a0
	st.d	$s3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a1, $a0, %pc_lo12(.L.str.10)
	ori	$a2, $zero, 186
	move	$a0, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2480
	add.d	$a0, $sp, $a0
	st.d	$s3, $a0, 0
	stx.b	$zero, $fp, $s3
.Ltmp594:                               # EH_LABEL
	ori	$a0, $zero, 2472
	add.d	$a1, $sp, $a0
	move	$a0, $s2
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp595:                               # EH_LABEL
# %bb.13:                               # %.noexc.i55.i
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	addi.d	$s3, $sp, 1120
	ori	$a0, $zero, 2456
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2440
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 180
	st.d	$a0, $sp, 736
.Ltmp597:                               # EH_LABEL
	ori	$a0, $zero, 2440
	add.d	$a0, $sp, $a0
	addi.d	$a1, $sp, 736
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp598:                               # EH_LABEL
# %bb.14:                               # %.noexc56.i
	move	$fp, $a0
	ld.d	$s4, $sp, 736
	ori	$a0, $zero, 2440
	add.d	$a0, $sp, $a0
	st.d	$fp, $a0, 0
	ori	$a0, $zero, 2456
	add.d	$a0, $sp, $a0
	st.d	$s4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a1, $a0, %pc_lo12(.L.str.11)
	ori	$a2, $zero, 180
	move	$a0, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2448
	add.d	$a0, $sp, $a0
	st.d	$s4, $a0, 0
	stx.b	$zero, $fp, $s4
.Ltmp600:                               # EH_LABEL
	ori	$a0, $zero, 2440
	add.d	$a1, $sp, $a0
	move	$a0, $s3
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp601:                               # EH_LABEL
# %bb.15:
.Ltmp603:                               # EH_LABEL
	addi.d	$a1, $sp, 768
	ori	$a2, $zero, 5
	move	$a0, $zero
	pcaddu18i	$ra, %call36(_Z8AddCases10TestCaseIDSt16initializer_listI8TestCaseE)
	jirl	$ra, $ra, 0
.Ltmp604:                               # EH_LABEL
# %bb.16:
	move	$fp, $a0
	ld.d	$s0, $sp, 1200
	addi.d	$s1, $sp, 784
	beqz	$s0, .LBB16_21
# %bb.17:
	ld.d	$a0, $s0, 8
	ori	$a1, $zero, 1
	lu32i.d	$a1, 1
	dbar	20
	bne	$a0, $a1, .LBB16_19
# %bb.18:
	ld.d	$a0, $s0, 0
	st.d	$zero, $s0, 8
	ld.d	$a1, $a0, 16
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 24
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $sp, 1160
	addi.d	$a1, $sp, 1176
	bne	$a0, $a1, .LBB16_22
	b	.LBB16_23
.LBB16_19:
	pcalau12i	$a1, %got_pc_hi20(__libc_single_threaded)
	ld.d	$a1, $a1, %got_pc_lo12(__libc_single_threaded)
	ld.bu	$a1, $a1, 0
	beqz	$a1, .LBB16_569
# %bb.20:
	addi.d	$a1, $a0, -1
	st.w	$a1, $s0, 8
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB16_570
.LBB16_21:                              # %_ZNSt12__shared_ptrIN9benchmark5RegexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i
	ld.d	$a0, $sp, 1160
	addi.d	$a1, $sp, 1176
	beq	$a0, $a1, .LBB16_23
.LBB16_22:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
	ld.d	$a1, $sp, 1176
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_23:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
	ld.d	$a0, $sp, 1120
	addi.d	$a1, $sp, 1136
	beq	$a0, $a1, .LBB16_25
# %bb.24:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i
	ld.d	$a1, $sp, 1136
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_25:                              # %_ZN8TestCaseD2Ev.exit.i
	ld.d	$s0, $sp, 1112
	beqz	$s0, .LBB16_30
# %bb.26:
	ld.d	$a0, $s0, 8
	ori	$a1, $zero, 1
	lu32i.d	$a1, 1
	dbar	20
	bne	$a0, $a1, .LBB16_28
# %bb.27:
	ld.d	$a0, $s0, 0
	st.d	$zero, $s0, 8
	ld.d	$a1, $a0, 16
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 24
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $sp, 1072
	addi.d	$a1, $sp, 1088
	bne	$a0, $a1, .LBB16_31
	b	.LBB16_32
.LBB16_28:
	pcalau12i	$a1, %got_pc_hi20(__libc_single_threaded)
	ld.d	$a1, $a1, %got_pc_lo12(__libc_single_threaded)
	ld.bu	$a1, $a1, 0
	beqz	$a1, .LBB16_571
# %bb.29:
	addi.d	$a1, $a0, -1
	st.w	$a1, $s0, 8
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB16_572
.LBB16_30:                              # %_ZNSt12__shared_ptrIN9benchmark5RegexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.1.i
	ld.d	$a0, $sp, 1072
	addi.d	$a1, $sp, 1088
	beq	$a0, $a1, .LBB16_32
.LBB16_31:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1.i
	ld.d	$a1, $sp, 1088
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_32:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.1.i
	ld.d	$a0, $sp, 1032
	addi.d	$a1, $sp, 1048
	beq	$a0, $a1, .LBB16_34
# %bb.33:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.1.i
	ld.d	$a1, $sp, 1048
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_34:                              # %_ZN8TestCaseD2Ev.exit.1.i
	ld.d	$s0, $sp, 1024
	beqz	$s0, .LBB16_39
# %bb.35:
	ld.d	$a0, $s0, 8
	ori	$a1, $zero, 1
	lu32i.d	$a1, 1
	dbar	20
	bne	$a0, $a1, .LBB16_37
# %bb.36:
	ld.d	$a0, $s0, 0
	st.d	$zero, $s0, 8
	ld.d	$a1, $a0, 16
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 24
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $sp, 984
	addi.d	$a1, $sp, 1000
	bne	$a0, $a1, .LBB16_40
	b	.LBB16_41
.LBB16_37:
	pcalau12i	$a1, %got_pc_hi20(__libc_single_threaded)
	ld.d	$a1, $a1, %got_pc_lo12(__libc_single_threaded)
	ld.bu	$a1, $a1, 0
	beqz	$a1, .LBB16_573
# %bb.38:
	addi.d	$a1, $a0, -1
	st.w	$a1, $s0, 8
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB16_574
.LBB16_39:                              # %_ZNSt12__shared_ptrIN9benchmark5RegexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.2.i
	ld.d	$a0, $sp, 984
	addi.d	$a1, $sp, 1000
	beq	$a0, $a1, .LBB16_41
.LBB16_40:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2.i
	ld.d	$a1, $sp, 1000
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_41:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.2.i
	ld.d	$a0, $sp, 944
	addi.d	$a1, $sp, 960
	beq	$a0, $a1, .LBB16_43
# %bb.42:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.2.i
	ld.d	$a1, $sp, 960
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_43:                              # %_ZN8TestCaseD2Ev.exit.2.i
	ld.d	$s0, $sp, 936
	beqz	$s0, .LBB16_48
# %bb.44:
	ld.d	$a0, $s0, 8
	ori	$a1, $zero, 1
	lu32i.d	$a1, 1
	dbar	20
	bne	$a0, $a1, .LBB16_46
# %bb.45:
	ld.d	$a0, $s0, 0
	st.d	$zero, $s0, 8
	ld.d	$a1, $a0, 16
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 24
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $sp, 896
	addi.d	$a1, $sp, 912
	bne	$a0, $a1, .LBB16_49
	b	.LBB16_50
.LBB16_46:
	pcalau12i	$a1, %got_pc_hi20(__libc_single_threaded)
	ld.d	$a1, $a1, %got_pc_lo12(__libc_single_threaded)
	ld.bu	$a1, $a1, 0
	beqz	$a1, .LBB16_575
# %bb.47:
	addi.d	$a1, $a0, -1
	st.w	$a1, $s0, 8
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB16_576
.LBB16_48:                              # %_ZNSt12__shared_ptrIN9benchmark5RegexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.3.i
	ld.d	$a0, $sp, 896
	addi.d	$a1, $sp, 912
	beq	$a0, $a1, .LBB16_50
.LBB16_49:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.3.i
	ld.d	$a1, $sp, 912
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_50:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.3.i
	ld.d	$a0, $sp, 856
	addi.d	$a1, $sp, 872
	beq	$a0, $a1, .LBB16_52
# %bb.51:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.3.i
	ld.d	$a1, $sp, 872
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_52:                              # %_ZN8TestCaseD2Ev.exit.3.i
	ld.d	$s0, $sp, 848
	beqz	$s0, .LBB16_57
# %bb.53:
	ld.d	$a0, $s0, 8
	ori	$a1, $zero, 1
	lu32i.d	$a1, 1
	dbar	20
	bne	$a0, $a1, .LBB16_55
# %bb.54:
	ld.d	$a0, $s0, 0
	st.d	$zero, $s0, 8
	ld.d	$a1, $a0, 16
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 24
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $sp, 808
	addi.d	$a1, $sp, 824
	bne	$a0, $a1, .LBB16_58
	b	.LBB16_59
.LBB16_55:
	pcalau12i	$a1, %got_pc_hi20(__libc_single_threaded)
	ld.d	$a1, $a1, %got_pc_lo12(__libc_single_threaded)
	ld.bu	$a1, $a1, 0
	beqz	$a1, .LBB16_577
# %bb.56:
	addi.d	$a1, $a0, -1
	st.w	$a1, $s0, 8
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB16_578
.LBB16_57:                              # %_ZNSt12__shared_ptrIN9benchmark5RegexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.4.i
	ld.d	$a0, $sp, 808
	addi.d	$a1, $sp, 824
	beq	$a0, $a1, .LBB16_59
.LBB16_58:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.4.i
	ld.d	$a1, $sp, 824
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_59:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.4.i
	ld.d	$a0, $sp, 768
	beq	$a0, $s1, .LBB16_61
# %bb.60:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.4.i
	ld.d	$a1, $sp, 784
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_61:                              # %_ZN8TestCaseD2Ev.exit.4.i
	ori	$a0, $zero, 2440
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2456
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_63
# %bb.62:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1
	ori	$a1, $zero, 2456
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_63:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
	ori	$a0, $zero, 2472
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2488
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_65
# %bb.64:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58.i
	ori	$a1, $zero, 2488
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_65:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60.i
	ori	$a0, $zero, 2504
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2520
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_67
# %bb.66:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61.i
	ori	$a1, $zero, 2520
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_67:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63.i
	ori	$a0, $zero, 2536
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2552
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_69
# %bb.68:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64.i
	ori	$a1, $zero, 2552
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_69:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66.i
	ori	$a0, $zero, 2568
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2584
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_71
# %bb.70:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67.i
	ori	$a1, $zero, 2584
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_71:                              # %__cxx_global_var_init.7.exit
	pcalau12i	$a0, %pc_hi20(dummy51)
	st.w	$fp, $a0, %pc_lo12(dummy51)
	ori	$a0, $zero, 2584
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2568
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 43
	ori	$a1, $zero, 2536
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 2568
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2536
	add.d	$a1, $sp, $a1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2536
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	ori	$a2, $zero, 2568
	add.d	$a2, $sp, $a2
	st.d	$a0, $a2, 0
	ori	$a2, $zero, 2584
	add.d	$a2, $sp, $a2
	st.d	$a1, $a2, 0
	pcalau12i	$a2, %pc_hi20(.L.str.13)
	addi.d	$s2, $a2, %pc_lo12(.L.str.13)
	vld	$vr0, $s2, 0
	vst	$vr0, $a0, 0
	vld	$vr0, $s2, 16
	ld.d	$s1, $s2, 32
	ld.w	$fp, $s2, 39
	vst	$vr0, $a0, 16
	st.d	$s1, $a0, 32
	st.w	$fp, $a0, 39
	ori	$a2, $zero, 2576
	add.d	$a2, $sp, $a2
	st.d	$a1, $a2, 0
	stx.b	$zero, $a0, $a1
.Ltmp606:                               # EH_LABEL
	addi.d	$a0, $sp, 768
	ori	$a1, $zero, 2568
	add.d	$a1, $sp, $a1
	addi.d	$s0, $sp, 768
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp607:                               # EH_LABEL
# %bb.72:                               # %.noexc.i152.i
	addi.d	$s0, $sp, 856
	ori	$a0, $zero, 2552
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2536
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 19
	ori	$a1, $zero, 2504
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
.Ltmp609:                               # EH_LABEL
	ori	$a0, $zero, 2536
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2504
	add.d	$a1, $sp, $a1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp610:                               # EH_LABEL
# %bb.73:                               # %.noexc153.i
	ori	$a1, $zero, 2504
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	ori	$a2, $zero, 2536
	add.d	$a2, $sp, $a2
	st.d	$a0, $a2, 0
	ori	$a2, $zero, 2552
	add.d	$a2, $sp, $a2
	st.d	$a1, $a2, 0
	pcalau12i	$a2, %pc_hi20(.L.str.14)
	addi.d	$a2, $a2, %pc_lo12(.L.str.14)
	vld	$vr0, $a2, 0
	st.d	$a2, $sp, 304                   # 8-byte Folded Spill
	ld.w	$a2, $a2, 15
	vst	$vr0, $a0, 0
	st.d	$a2, $sp, 312                   # 8-byte Folded Spill
	st.w	$a2, $a0, 15
	ori	$a0, $zero, 2536
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a2, $zero, 2544
	add.d	$a2, $sp, $a2
	st.d	$a1, $a2, 0
	stx.b	$zero, $a0, $a1
.Ltmp612:                               # EH_LABEL
	ori	$a0, $zero, 2536
	add.d	$a1, $sp, $a0
	ori	$a2, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp613:                               # EH_LABEL
# %bb.74:                               # %.noexc.i156.i
	addi.d	$s4, $sp, 944
	ori	$a0, $zero, 2520
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2504
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 32
	ori	$a1, $zero, 2472
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
.Ltmp615:                               # EH_LABEL
	ori	$a0, $zero, 2504
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2472
	add.d	$a1, $sp, $a1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp616:                               # EH_LABEL
# %bb.75:                               # %.noexc157.i
	ori	$a1, $zero, 2472
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	ori	$a2, $zero, 2504
	add.d	$a2, $sp, $a2
	st.d	$a0, $a2, 0
	ori	$a2, $zero, 2520
	add.d	$a2, $sp, $a2
	st.d	$a1, $a2, 0
	pcalau12i	$a2, %pc_hi20(.L.str.15)
	addi.d	$a2, $a2, %pc_lo12(.L.str.15)
	vld	$vr0, $a2, 16
	vst	$vr0, $a0, 16
	st.d	$a2, $sp, 296                   # 8-byte Folded Spill
	vld	$vr0, $a2, 0
	vst	$vr0, $a0, 0
	ori	$a0, $zero, 2504
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a2, $zero, 2512
	add.d	$a2, $sp, $a2
	st.d	$a1, $a2, 0
	stx.b	$zero, $a0, $a1
.Ltmp618:                               # EH_LABEL
	ori	$a0, $zero, 2504
	add.d	$a1, $sp, $a0
	ori	$a2, $zero, 1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp619:                               # EH_LABEL
# %bb.76:                               # %.noexc.i160.i
	addi.d	$s4, $sp, 1032
	ori	$a0, $zero, 2488
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2472
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 47
	ori	$a1, $zero, 2440
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
.Ltmp621:                               # EH_LABEL
	ori	$a0, $zero, 2472
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2440
	add.d	$a1, $sp, $a1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp622:                               # EH_LABEL
# %bb.77:                               # %.noexc161.i
	ori	$a1, $zero, 2440
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	ori	$a2, $zero, 2472
	add.d	$a2, $sp, $a2
	st.d	$a0, $a2, 0
	ori	$a2, $zero, 2488
	add.d	$a2, $sp, $a2
	st.d	$a1, $a2, 0
	pcalau12i	$a2, %pc_hi20(.L.str.16)
	addi.d	$a2, $a2, %pc_lo12(.L.str.16)
	vld	$vr0, $a2, 16
	vst	$vr0, $a0, 16
	vld	$vr0, $a2, 0
	ld.d	$a3, $a2, 32
	st.d	$a2, $sp, 288                   # 8-byte Folded Spill
	ld.d	$a2, $a2, 39
	vst	$vr0, $a0, 0
	st.d	$a3, $sp, 280                   # 8-byte Folded Spill
	st.d	$a3, $a0, 32
	st.d	$a2, $sp, 272                   # 8-byte Folded Spill
	st.d	$a2, $a0, 39
	ori	$a2, $zero, 2480
	add.d	$a2, $sp, $a2
	st.d	$a1, $a2, 0
	stx.b	$zero, $a0, $a1
.Ltmp624:                               # EH_LABEL
	ori	$a0, $zero, 2472
	add.d	$a1, $sp, $a0
	ori	$a2, $zero, 1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp625:                               # EH_LABEL
# %bb.78:                               # %.noexc.i164.i
	addi.d	$s6, $sp, 1120
	ori	$a0, $zero, 2456
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2440
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 25
	st.d	$a0, $sp, 736
.Ltmp627:                               # EH_LABEL
	ori	$a0, $zero, 2440
	add.d	$a0, $sp, $a0
	addi.d	$a1, $sp, 736
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp628:                               # EH_LABEL
# %bb.79:                               # %.noexc165.i
	ld.d	$a1, $sp, 736
	ori	$a2, $zero, 2440
	add.d	$a2, $sp, $a2
	st.d	$a0, $a2, 0
	ori	$a2, $zero, 2456
	add.d	$a2, $sp, $a2
	st.d	$a1, $a2, 0
	pcalau12i	$a2, %pc_hi20(.L.str.17)
	addi.d	$s4, $a2, %pc_lo12(.L.str.17)
	vld	$vr0, $s4, 0
	ld.b	$s3, $s4, 24
	ld.d	$s5, $s4, 16
	vst	$vr0, $a0, 0
	st.b	$s3, $a0, 24
	st.d	$s5, $a0, 16
	ori	$a0, $zero, 2440
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a2, $zero, 2448
	add.d	$a2, $sp, $a2
	st.d	$a1, $a2, 0
	stx.b	$zero, $a0, $a1
.Ltmp630:                               # EH_LABEL
	ori	$a0, $zero, 2440
	add.d	$a1, $sp, $a0
	ori	$a2, $zero, 1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp631:                               # EH_LABEL
# %bb.80:                               # %.noexc.i168.i
	addi.d	$s6, $sp, 1208
	addi.d	$a0, $sp, 752
	st.d	$a0, $sp, 736
	ori	$a0, $zero, 18
	st.d	$a0, $sp, 704
.Ltmp633:                               # EH_LABEL
	addi.d	$a0, $sp, 736
	addi.d	$a1, $sp, 704
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp634:                               # EH_LABEL
# %bb.81:                               # %.noexc169.i
	ld.d	$a1, $sp, 704
	st.d	$a0, $sp, 736
	st.d	$a1, $sp, 752
	pcalau12i	$a2, %pc_hi20(.L.str.18)
	addi.d	$a2, $a2, %pc_lo12(.L.str.18)
	vld	$vr0, $a2, 0
	st.d	$a2, $sp, 256                   # 8-byte Folded Spill
	ld.h	$a2, $a2, 16
	vst	$vr0, $a0, 0
	st.d	$a2, $sp, 264                   # 8-byte Folded Spill
	st.h	$a2, $a0, 16
	ld.d	$a0, $sp, 736
	st.d	$a1, $sp, 744
	stx.b	$zero, $a0, $a1
.Ltmp636:                               # EH_LABEL
	addi.d	$a1, $sp, 736
	ori	$a2, $zero, 1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp637:                               # EH_LABEL
# %bb.82:                               # %.noexc.i172.i
	addi.d	$s6, $sp, 1296
	addi.d	$a0, $sp, 720
	st.d	$a0, $sp, 704
	ori	$a0, $zero, 23
	st.d	$a0, $sp, 672
.Ltmp639:                               # EH_LABEL
	addi.d	$a0, $sp, 704
	addi.d	$a1, $sp, 672
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp640:                               # EH_LABEL
# %bb.83:                               # %.noexc173.i
	ld.d	$a1, $sp, 672
	st.d	$a0, $sp, 704
	st.d	$a1, $sp, 720
	pcalau12i	$a2, %pc_hi20(.L.str.19)
	addi.d	$a2, $a2, %pc_lo12(.L.str.19)
	vld	$vr0, $a2, 0
	ld.d	$a2, $a2, 15
	vst	$vr0, $a0, 0
	st.d	$a2, $a0, 15
	ld.d	$a0, $sp, 704
	st.d	$a1, $sp, 712
	stx.b	$zero, $a0, $a1
.Ltmp642:                               # EH_LABEL
	addi.d	$a1, $sp, 704
	ori	$a2, $zero, 1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp643:                               # EH_LABEL
# %bb.84:                               # %._crit_edge.i.i175.i
	addi.d	$s6, $sp, 1384
	addi.d	$a0, $sp, 688
	st.d	$a0, $sp, 672
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a0, $a0, %pc_lo12(.L.str.20)
	ld.d	$a1, $a0, 0
	ld.d	$a0, $a0, 6
	st.d	$a1, $sp, 248                   # 8-byte Folded Spill
	st.d	$a1, $sp, 688
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	st.d	$a0, $sp, 694
	ori	$a0, $zero, 14
	st.d	$a0, $sp, 680
	st.b	$zero, $sp, 702
.Ltmp645:                               # EH_LABEL
	addi.d	$a1, $sp, 672
	ori	$a2, $zero, 1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp646:                               # EH_LABEL
# %bb.85:                               # %.noexc.i180.i
	addi.d	$s6, $sp, 1472
	addi.d	$a0, $sp, 656
	st.d	$a0, $sp, 640
	ori	$a0, $zero, 20
	st.d	$a0, $sp, 608
.Ltmp648:                               # EH_LABEL
	addi.d	$a0, $sp, 640
	addi.d	$a1, $sp, 608
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp649:                               # EH_LABEL
# %bb.86:                               # %.noexc181.i
	ld.d	$a1, $sp, 608
	st.d	$a0, $sp, 640
	st.d	$a1, $sp, 656
	pcalau12i	$a2, %pc_hi20(.L.str.21)
	addi.d	$a2, $a2, %pc_lo12(.L.str.21)
	vld	$vr0, $a2, 0
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	ld.w	$s7, $a2, 16
	vst	$vr0, $a0, 0
	st.w	$s7, $a0, 16
	ld.d	$a0, $sp, 640
	st.d	$a1, $sp, 648
	stx.b	$zero, $a0, $a1
.Ltmp651:                               # EH_LABEL
	addi.d	$a1, $sp, 640
	ori	$a2, $zero, 1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp652:                               # EH_LABEL
# %bb.87:                               # %.noexc.i184.i
	addi.d	$s6, $sp, 1560
	addi.d	$a0, $sp, 624
	st.d	$a0, $sp, 608
	ori	$a0, $zero, 21
	st.d	$a0, $sp, 576
.Ltmp654:                               # EH_LABEL
	addi.d	$a0, $sp, 608
	addi.d	$a1, $sp, 576
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp655:                               # EH_LABEL
# %bb.88:                               # %.noexc185.i
	ld.d	$a1, $sp, 576
	st.d	$a0, $sp, 608
	st.d	$a1, $sp, 624
	pcalau12i	$a2, %pc_hi20(.L.str.22)
	addi.d	$a2, $a2, %pc_lo12(.L.str.22)
	vld	$vr0, $a2, 0
	st.d	$a2, $sp, 224                   # 8-byte Folded Spill
	ld.d	$a2, $a2, 13
	vst	$vr0, $a0, 0
	st.d	$a2, $sp, 232                   # 8-byte Folded Spill
	st.d	$a2, $a0, 13
	ld.d	$a0, $sp, 608
	st.d	$a1, $sp, 616
	stx.b	$zero, $a0, $a1
.Ltmp657:                               # EH_LABEL
	addi.d	$a1, $sp, 608
	ori	$a2, $zero, 1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp658:                               # EH_LABEL
# %bb.89:                               # %.noexc.i188.i
	addi.d	$s6, $sp, 1648
	addi.d	$a0, $sp, 592
	st.d	$a0, $sp, 576
	ori	$a0, $zero, 20
	st.d	$a0, $sp, 544
.Ltmp660:                               # EH_LABEL
	addi.d	$a0, $sp, 576
	addi.d	$a1, $sp, 544
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp661:                               # EH_LABEL
# %bb.90:                               # %.noexc189.i
	ld.d	$a1, $sp, 544
	st.d	$a0, $sp, 576
	st.d	$a1, $sp, 592
	pcalau12i	$a2, %pc_hi20(.L.str.23)
	addi.d	$a2, $a2, %pc_lo12(.L.str.23)
	vld	$vr0, $a2, 0
	st.d	$a2, $sp, 208                   # 8-byte Folded Spill
	ld.w	$a2, $a2, 16
	vst	$vr0, $a0, 0
	st.d	$a2, $sp, 216                   # 8-byte Folded Spill
	st.w	$a2, $a0, 16
	ld.d	$a0, $sp, 576
	st.d	$a1, $sp, 584
	stx.b	$zero, $a0, $a1
.Ltmp663:                               # EH_LABEL
	addi.d	$a1, $sp, 576
	ori	$a2, $zero, 1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp664:                               # EH_LABEL
# %bb.91:                               # %.noexc.i192.i
	addi.d	$s6, $sp, 1736
	addi.d	$a0, $sp, 560
	st.d	$a0, $sp, 544
	ori	$a0, $zero, 19
	st.d	$a0, $sp, 512
.Ltmp666:                               # EH_LABEL
	addi.d	$a0, $sp, 544
	addi.d	$a1, $sp, 512
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp667:                               # EH_LABEL
# %bb.92:                               # %.noexc193.i
	ld.d	$a1, $sp, 512
	st.d	$a0, $sp, 544
	st.d	$a1, $sp, 560
	pcalau12i	$a2, %pc_hi20(.L.str.24)
	addi.d	$a2, $a2, %pc_lo12(.L.str.24)
	vld	$vr0, $a2, 0
	st.d	$a2, $sp, 192                   # 8-byte Folded Spill
	ld.w	$a2, $a2, 15
	vst	$vr0, $a0, 0
	st.d	$a2, $sp, 200                   # 8-byte Folded Spill
	st.w	$a2, $a0, 15
	ld.d	$a0, $sp, 544
	st.d	$a1, $sp, 552
	stx.b	$zero, $a0, $a1
.Ltmp669:                               # EH_LABEL
	addi.d	$a1, $sp, 544
	ori	$a2, $zero, 1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp670:                               # EH_LABEL
# %bb.93:                               # %.noexc.i196.i
	addi.d	$s6, $sp, 1824
	addi.d	$a0, $sp, 528
	st.d	$a0, $sp, 512
	ori	$a0, $zero, 42
	st.d	$a0, $sp, 480
.Ltmp672:                               # EH_LABEL
	addi.d	$a0, $sp, 512
	addi.d	$a1, $sp, 480
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp673:                               # EH_LABEL
# %bb.94:                               # %.noexc197.i
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 480
	st.d	$a0, $sp, 512
	st.d	$a1, $sp, 528
	pcalau12i	$a2, %pc_hi20(.L.str.25)
	addi.d	$a2, $a2, %pc_lo12(.L.str.25)
	vld	$vr0, $a2, 16
	vst	$vr0, $a0, 16
	vld	$vr0, $a2, 0
	ld.d	$a3, $a2, 32
	st.d	$a2, $sp, 184                   # 8-byte Folded Spill
	ld.h	$a2, $a2, 40
	vst	$vr0, $a0, 0
	st.d	$a3, $sp, 176                   # 8-byte Folded Spill
	st.d	$a3, $a0, 32
	st.d	$a2, $sp, 168                   # 8-byte Folded Spill
	st.h	$a2, $a0, 40
	st.d	$a1, $sp, 520
	stx.b	$zero, $a0, $a1
.Ltmp675:                               # EH_LABEL
	addi.d	$a1, $sp, 512
	ori	$a2, $zero, 1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp676:                               # EH_LABEL
# %bb.95:                               # %.noexc.i200.i
	addi.d	$s4, $sp, 1912
	addi.d	$a0, $sp, 496
	st.d	$a0, $sp, 480
	ori	$a0, $zero, 39
	st.d	$a0, $sp, 448
.Ltmp678:                               # EH_LABEL
	addi.d	$a0, $sp, 480
	addi.d	$a1, $sp, 448
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp679:                               # EH_LABEL
# %bb.96:                               # %.noexc201.i
	ld.d	$a1, $sp, 448
	st.d	$a0, $sp, 480
	st.d	$a1, $sp, 496
	pcalau12i	$a2, %pc_hi20(.L.str.26)
	addi.d	$a2, $a2, %pc_lo12(.L.str.26)
	vld	$vr0, $a2, 16
	vst	$vr0, $a0, 16
	vld	$vr0, $a2, 0
	st.d	$a2, $sp, 160                   # 8-byte Folded Spill
	ld.d	$a2, $a2, 31
	vst	$vr0, $a0, 0
	st.d	$a2, $sp, 152                   # 8-byte Folded Spill
	st.d	$a2, $a0, 31
	st.d	$a1, $sp, 488
	stx.b	$zero, $a0, $a1
.Ltmp681:                               # EH_LABEL
	addi.d	$a1, $sp, 480
	ori	$a2, $zero, 1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp682:                               # EH_LABEL
# %bb.97:                               # %.noexc.i204.i
	addi.d	$s6, $sp, 2000
	addi.d	$a0, $sp, 464
	st.d	$a0, $sp, 448
	ori	$a0, $zero, 39
	st.d	$a0, $sp, 416
.Ltmp684:                               # EH_LABEL
	addi.d	$a0, $sp, 448
	addi.d	$a1, $sp, 416
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp685:                               # EH_LABEL
# %bb.98:                               # %.noexc205.i
	ld.d	$a1, $sp, 416
	st.d	$a0, $sp, 448
	st.d	$a1, $sp, 464
	pcalau12i	$a2, %pc_hi20(.L.str.27)
	addi.d	$a2, $a2, %pc_lo12(.L.str.27)
	vld	$vr0, $a2, 16
	vst	$vr0, $a0, 16
	vld	$vr0, $a2, 0
	st.d	$a2, $sp, 144                   # 8-byte Folded Spill
	ld.d	$a2, $a2, 31
	vst	$vr0, $a0, 0
	st.d	$a2, $sp, 136                   # 8-byte Folded Spill
	st.d	$a2, $a0, 31
	st.d	$a1, $sp, 456
	stx.b	$zero, $a0, $a1
.Ltmp687:                               # EH_LABEL
	addi.d	$a1, $sp, 448
	ori	$a2, $zero, 1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp688:                               # EH_LABEL
# %bb.99:                               # %.noexc.i208.i
	ori	$a0, $zero, 2088
	add.d	$s8, $sp, $a0
	addi.d	$a0, $sp, 432
	st.d	$a0, $sp, 416
	ori	$a0, $zero, 45
	st.d	$a0, $sp, 384
.Ltmp690:                               # EH_LABEL
	addi.d	$a0, $sp, 416
	addi.d	$a1, $sp, 384
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp691:                               # EH_LABEL
# %bb.100:                              # %.noexc209.i
	ld.d	$a1, $sp, 384
	st.d	$a0, $sp, 416
	st.d	$a1, $sp, 432
	pcalau12i	$a2, %pc_hi20(.L.str.28)
	addi.d	$a2, $a2, %pc_lo12(.L.str.28)
	vld	$vr0, $a2, 16
	vst	$vr0, $a0, 16
	vld	$vr0, $a2, 0
	ld.d	$a3, $a2, 32
	st.d	$a2, $sp, 128                   # 8-byte Folded Spill
	ld.d	$a2, $a2, 37
	vst	$vr0, $a0, 0
	st.d	$a3, $sp, 120                   # 8-byte Folded Spill
	st.d	$a3, $a0, 32
	st.d	$a2, $sp, 112                   # 8-byte Folded Spill
	st.d	$a2, $a0, 37
	st.d	$a1, $sp, 424
	stx.b	$zero, $a0, $a1
.Ltmp693:                               # EH_LABEL
	addi.d	$a1, $sp, 416
	ori	$a2, $zero, 1
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp694:                               # EH_LABEL
# %bb.101:                              # %.noexc.i212.i
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	st.d	$s5, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	ori	$a0, $zero, 2176
	add.d	$fp, $sp, $a0
	addi.d	$a0, $sp, 400
	st.d	$a0, $sp, 384
	ori	$a0, $zero, 44
	st.d	$a0, $sp, 352
.Ltmp696:                               # EH_LABEL
	addi.d	$a0, $sp, 384
	addi.d	$a1, $sp, 352
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp697:                               # EH_LABEL
# %bb.102:                              # %.noexc213.i
	move	$s7, $s2
	move	$s3, $s1
	ld.d	$a1, $sp, 352
	st.d	$a0, $sp, 384
	st.d	$a1, $sp, 400
	pcalau12i	$a2, %pc_hi20(.L.str.29)
	addi.d	$a2, $a2, %pc_lo12(.L.str.29)
	vld	$vr0, $a2, 16
	vst	$vr0, $a0, 16
	vld	$vr0, $a2, 0
	ld.d	$a3, $a2, 32
	st.d	$a2, $sp, 104                   # 8-byte Folded Spill
	ld.w	$a2, $a2, 40
	vst	$vr0, $a0, 0
	st.d	$a3, $sp, 96                    # 8-byte Folded Spill
	st.d	$a3, $a0, 32
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	st.w	$a2, $a0, 40
	st.d	$a1, $sp, 392
	stx.b	$zero, $a0, $a1
.Ltmp699:                               # EH_LABEL
	addi.d	$a1, $sp, 384
	ori	$a2, $zero, 1
	ori	$s1, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp700:                               # EH_LABEL
# %bb.103:                              # %._crit_edge.i.i215.i
	ori	$a0, $zero, 2264
	add.d	$s2, $sp, $a0
	addi.d	$a0, $sp, 368
	st.d	$a0, $sp, 352
	ori	$a0, $zero, 125
	st.h	$a0, $sp, 368
	st.d	$s1, $sp, 360
.Ltmp702:                               # EH_LABEL
	addi.d	$a1, $sp, 352
	ori	$a2, $zero, 1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp703:                               # EH_LABEL
# %bb.104:
.Ltmp705:                               # EH_LABEL
	ori	$a0, $zero, 2
	addi.d	$a1, $sp, 768
	ori	$a2, $zero, 18
	addi.d	$s5, $sp, 768
	pcaddu18i	$ra, %call36(_Z8AddCases10TestCaseIDSt16initializer_listI8TestCaseE)
	jirl	$ra, $ra, 0
.Ltmp706:                               # EH_LABEL
# %bb.105:
	move	$s1, $a0
	move	$s0, $zero
	ori	$s2, $zero, 1
	ori	$s6, $zero, 1
	lu32i.d	$s6, 1
	b	.LBB16_107
	.p2align	4, , 16
.LBB16_106:                             # %_ZN8TestCaseD2Ev.exit.i25
                                        #   in Loop: Header=BB16_107 Depth=1
	addi.d	$s0, $s0, -88
	addi.w	$s4, $zero, -1584
	beq	$s0, $s4, .LBB16_118
.LBB16_107:                             # =>This Inner Loop Header: Depth=1
	add.d	$s4, $s5, $s0
	ld.d	$fp, $s4, 1576
	beqz	$fp, .LBB16_112
# %bb.108:                              #   in Loop: Header=BB16_107 Depth=1
	ld.d	$a0, $fp, 8
	dbar	20
	bne	$a0, $s6, .LBB16_110
# %bb.109:                              #   in Loop: Header=BB16_107 Depth=1
	ld.d	$a0, $fp, 0
	st.d	$zero, $fp, 8
	ld.d	$a1, $a0, 16
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.d	$a0, $s4, 1536
	addi.d	$a1, $s4, 1552
	bne	$a1, $a0, .LBB16_113
	b	.LBB16_114
	.p2align	4, , 16
.LBB16_110:                             #   in Loop: Header=BB16_107 Depth=1
	pcalau12i	$a1, %got_pc_hi20(__libc_single_threaded)
	ld.d	$a1, $a1, %got_pc_lo12(__libc_single_threaded)
	ld.bu	$a1, $a1, 0
	beqz	$a1, .LBB16_116
# %bb.111:                              #   in Loop: Header=BB16_107 Depth=1
	addi.d	$a1, $a0, -1
	st.w	$a1, $fp, 8
	addi.w	$a0, $a0, 0
	beq	$a0, $s2, .LBB16_117
	.p2align	4, , 16
.LBB16_112:                             # %_ZNSt12__shared_ptrIN9benchmark5RegexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i21
                                        #   in Loop: Header=BB16_107 Depth=1
	ld.d	$a0, $s4, 1536
	addi.d	$a1, $s4, 1552
	beq	$a1, $a0, .LBB16_114
.LBB16_113:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i22
                                        #   in Loop: Header=BB16_107 Depth=1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_114:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i23
                                        #   in Loop: Header=BB16_107 Depth=1
	ld.d	$a0, $s4, 1496
	addi.d	$a1, $s4, 1512
	beq	$a1, $a0, .LBB16_106
# %bb.115:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i24
                                        #   in Loop: Header=BB16_107 Depth=1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB16_106
.LBB16_116:                             #   in Loop: Header=BB16_107 Depth=1
	addi.d	$a1, $fp, 8
	addi.w	$a2, $zero, -1
	amadd_db.w	$a0, $a2, $a1
	addi.w	$a0, $a0, 0
	bne	$a0, $s2, .LBB16_112
.LBB16_117:                             #   in Loop: Header=BB16_107 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 1536
	addi.d	$a1, $s4, 1552
	bne	$a1, $a0, .LBB16_113
	b	.LBB16_114
.LBB16_118:
	ld.d	$a0, $sp, 352
	addi.d	$a1, $sp, 368
	beq	$a0, $a1, .LBB16_120
# %bb.119:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i26
	ld.d	$a1, $sp, 368
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_120:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i27
	ld.d	$a0, $sp, 384
	addi.d	$a1, $sp, 400
	move	$fp, $s3
	beq	$a0, $a1, .LBB16_122
# %bb.121:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219.i
	ld.d	$a1, $sp, 400
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_122:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221.i
	ld.d	$a0, $sp, 416
	addi.d	$a1, $sp, 432
	ld.d	$s2, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	beq	$a0, $a1, .LBB16_124
# %bb.123:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i222.i
	ld.d	$a1, $sp, 432
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_124:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224.i
	ld.d	$a0, $sp, 448
	addi.d	$a1, $sp, 464
	beq	$a0, $a1, .LBB16_126
# %bb.125:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225.i
	ld.d	$a1, $sp, 464
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_126:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227.i
	ld.d	$a0, $sp, 480
	addi.d	$a1, $sp, 496
	beq	$a0, $a1, .LBB16_128
# %bb.127:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228.i
	ld.d	$a1, $sp, 496
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_128:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230.i
	ld.d	$a0, $sp, 512
	addi.d	$a1, $sp, 528
	beq	$a0, $a1, .LBB16_130
# %bb.129:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231.i
	ld.d	$a1, $sp, 528
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_130:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233.i
	ld.d	$a0, $sp, 544
	addi.d	$a1, $sp, 560
	beq	$a0, $a1, .LBB16_132
# %bb.131:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234.i
	ld.d	$a1, $sp, 560
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_132:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236.i
	ld.d	$a0, $sp, 576
	addi.d	$a1, $sp, 592
	beq	$a0, $a1, .LBB16_134
# %bb.133:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237.i
	ld.d	$a1, $sp, 592
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_134:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239.i
	ld.d	$a0, $sp, 608
	addi.d	$a1, $sp, 624
	beq	$a0, $a1, .LBB16_136
# %bb.135:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i240.i
	ld.d	$a1, $sp, 624
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_136:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242.i
	ld.d	$a0, $sp, 640
	addi.d	$a1, $sp, 656
	beq	$a0, $a1, .LBB16_138
# %bb.137:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i243.i
	ld.d	$a1, $sp, 656
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_138:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245.i
	ld.d	$a0, $sp, 672
	addi.d	$a1, $sp, 688
	beq	$a0, $a1, .LBB16_140
# %bb.139:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246.i
	ld.d	$a1, $sp, 688
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_140:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248.i
	ld.d	$a0, $sp, 704
	addi.d	$a1, $sp, 720
	beq	$a0, $a1, .LBB16_142
# %bb.141:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249.i
	ld.d	$a1, $sp, 720
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_142:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251.i
	ld.d	$a0, $sp, 736
	addi.d	$a1, $sp, 752
	beq	$a0, $a1, .LBB16_144
# %bb.143:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252.i
	ld.d	$a1, $sp, 752
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_144:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254.i
	ori	$a0, $zero, 2440
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2456
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_146
# %bb.145:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i255.i
	ori	$a1, $zero, 2456
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_146:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257.i
	ori	$a0, $zero, 2472
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2488
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_148
# %bb.147:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i258.i
	ori	$a1, $zero, 2488
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_148:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260.i
	ori	$a0, $zero, 2504
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2520
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_150
# %bb.149:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261.i
	ori	$a1, $zero, 2520
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_150:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263.i
	ori	$a0, $zero, 2536
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2552
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_152
# %bb.151:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i264.i
	ori	$a1, $zero, 2552
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_152:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266.i
	ori	$a0, $zero, 2568
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2584
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_154
# %bb.153:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i267.i
	ori	$a1, $zero, 2584
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_154:                             # %__cxx_global_var_init.12.exit
	pcalau12i	$a0, %pc_hi20(dummy70)
	st.w	$s1, $a0, %pc_lo12(dummy70)
	ori	$a0, $zero, 2584
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2568
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 43
	ori	$a1, $zero, 2536
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 2568
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2536
	add.d	$a1, $sp, $a1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2536
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	vld	$vr0, $s7, 0
	ori	$a2, $zero, 2568
	add.d	$a2, $sp, $a2
	st.d	$a0, $a2, 0
	ori	$a2, $zero, 2584
	add.d	$a2, $sp, $a2
	st.d	$a1, $a2, 0
	vst	$vr0, $a0, 0
	vld	$vr0, $s7, 16
	vst	$vr0, $a0, 16
	st.d	$fp, $a0, 32
	st.w	$s2, $a0, 39
	ori	$a2, $zero, 2576
	add.d	$a2, $sp, $a2
	st.d	$a1, $a2, 0
	stx.b	$zero, $a0, $a1
.Ltmp708:                               # EH_LABEL
	addi.d	$a0, $sp, 768
	ori	$a1, $zero, 2568
	add.d	$a1, $sp, $a1
	addi.d	$s0, $sp, 768
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp709:                               # EH_LABEL
# %bb.155:                              # %.noexc.i152.i41
	addi.d	$s0, $sp, 856
	ori	$a0, $zero, 2552
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2536
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 19
	ori	$a1, $zero, 2504
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
.Ltmp711:                               # EH_LABEL
	ori	$a0, $zero, 2536
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2504
	add.d	$a1, $sp, $a1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp712:                               # EH_LABEL
# %bb.156:                              # %.noexc153.i42
	ori	$a1, $zero, 2504
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	ld.d	$a2, $sp, 304                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	ori	$a2, $zero, 2536
	add.d	$a2, $sp, $a2
	st.d	$a0, $a2, 0
	ori	$a2, $zero, 2552
	add.d	$a2, $sp, $a2
	st.d	$a1, $a2, 0
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	st.w	$a2, $a0, 15
	ori	$a0, $zero, 2536
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a2, $zero, 2544
	add.d	$a2, $sp, $a2
	st.d	$a1, $a2, 0
	stx.b	$zero, $a0, $a1
.Ltmp714:                               # EH_LABEL
	ori	$a0, $zero, 2536
	add.d	$a1, $sp, $a0
	ori	$a2, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp715:                               # EH_LABEL
# %bb.157:                              # %.noexc.i156.i49
	addi.d	$fp, $sp, 944
	ori	$a0, $zero, 2520
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2504
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 32
	ori	$a1, $zero, 2472
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
.Ltmp717:                               # EH_LABEL
	ori	$a0, $zero, 2504
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2472
	add.d	$a1, $sp, $a1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp718:                               # EH_LABEL
# %bb.158:                              # %.noexc157.i50
	ori	$a1, $zero, 2472
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	ld.d	$a2, $sp, 296                   # 8-byte Folded Reload
	vld	$vr0, $a2, 16
	ori	$a3, $zero, 2504
	add.d	$a3, $sp, $a3
	st.d	$a0, $a3, 0
	ori	$a3, $zero, 2520
	add.d	$a3, $sp, $a3
	st.d	$a1, $a3, 0
	vst	$vr0, $a0, 16
	vld	$vr0, $a2, 0
	vst	$vr0, $a0, 0
	ori	$a0, $zero, 2504
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a2, $zero, 2512
	add.d	$a2, $sp, $a2
	st.d	$a1, $a2, 0
	stx.b	$zero, $a0, $a1
.Ltmp720:                               # EH_LABEL
	ori	$a0, $zero, 2504
	add.d	$a1, $sp, $a0
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp721:                               # EH_LABEL
# %bb.159:                              # %.noexc.i160.i57
	addi.d	$fp, $sp, 1032
	ori	$a0, $zero, 2488
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2472
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 47
	ori	$a1, $zero, 2440
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
.Ltmp723:                               # EH_LABEL
	ori	$a0, $zero, 2472
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2440
	add.d	$a1, $sp, $a1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp724:                               # EH_LABEL
# %bb.160:                              # %.noexc161.i58
	ori	$a1, $zero, 2440
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	ld.d	$a2, $sp, 288                   # 8-byte Folded Reload
	vld	$vr0, $a2, 16
	ori	$a3, $zero, 2472
	add.d	$a3, $sp, $a3
	st.d	$a0, $a3, 0
	ori	$a3, $zero, 2488
	add.d	$a3, $sp, $a3
	st.d	$a1, $a3, 0
	vst	$vr0, $a0, 16
	vld	$vr0, $a2, 0
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 280                   # 8-byte Folded Reload
	st.d	$a2, $a0, 32
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	st.d	$a2, $a0, 39
	ori	$a2, $zero, 2480
	add.d	$a2, $sp, $a2
	st.d	$a1, $a2, 0
	stx.b	$zero, $a0, $a1
.Ltmp726:                               # EH_LABEL
	ori	$a0, $zero, 2472
	add.d	$a1, $sp, $a0
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp727:                               # EH_LABEL
# %bb.161:                              # %.noexc.i164.i65
	addi.d	$fp, $sp, 1120
	ori	$a0, $zero, 2456
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2440
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 25
	st.d	$a0, $sp, 736
.Ltmp729:                               # EH_LABEL
	ori	$a0, $zero, 2440
	add.d	$a0, $sp, $a0
	addi.d	$a1, $sp, 736
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp730:                               # EH_LABEL
# %bb.162:                              # %.noexc165.i66
	ld.d	$a1, $sp, 736
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	ori	$a2, $zero, 2440
	add.d	$a2, $sp, $a2
	st.d	$a0, $a2, 0
	ori	$a2, $zero, 2456
	add.d	$a2, $sp, $a2
	st.d	$a1, $a2, 0
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	st.b	$a2, $a0, 24
	st.d	$s3, $a0, 16
	ori	$a0, $zero, 2440
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a2, $zero, 2448
	add.d	$a2, $sp, $a2
	st.d	$a1, $a2, 0
	stx.b	$zero, $a0, $a1
.Ltmp732:                               # EH_LABEL
	ori	$a0, $zero, 2440
	add.d	$a1, $sp, $a0
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp733:                               # EH_LABEL
# %bb.163:                              # %.noexc.i168.i73
	addi.d	$fp, $sp, 1208
	addi.d	$a0, $sp, 752
	st.d	$a0, $sp, 736
	ori	$a0, $zero, 18
	st.d	$a0, $sp, 704
.Ltmp735:                               # EH_LABEL
	addi.d	$a0, $sp, 736
	addi.d	$a1, $sp, 704
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp736:                               # EH_LABEL
# %bb.164:                              # %.noexc169.i74
	ld.d	$a1, $sp, 704
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 736
	st.d	$a1, $sp, 752
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 264                   # 8-byte Folded Reload
	st.h	$a2, $a0, 16
	ld.d	$a0, $sp, 736
	st.d	$a1, $sp, 744
	stx.b	$zero, $a0, $a1
.Ltmp738:                               # EH_LABEL
	addi.d	$a1, $sp, 736
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp739:                               # EH_LABEL
# %bb.165:                              # %.noexc.i172.i81
	addi.d	$fp, $sp, 1296
	addi.d	$a0, $sp, 720
	st.d	$a0, $sp, 704
	ori	$a0, $zero, 23
	st.d	$a0, $sp, 672
.Ltmp741:                               # EH_LABEL
	addi.d	$a0, $sp, 704
	addi.d	$a1, $sp, 672
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp742:                               # EH_LABEL
# %bb.166:                              # %.noexc173.i82
	ld.d	$a1, $sp, 672
	st.d	$a0, $sp, 704
	st.d	$a1, $sp, 720
	pcalau12i	$a2, %pc_hi20(.L.str.32)
	addi.d	$a2, $a2, %pc_lo12(.L.str.32)
	vld	$vr0, $a2, 0
	ld.d	$a2, $a2, 15
	vst	$vr0, $a0, 0
	st.d	$a2, $a0, 15
	ld.d	$a0, $sp, 704
	st.d	$a1, $sp, 712
	stx.b	$zero, $a0, $a1
.Ltmp744:                               # EH_LABEL
	addi.d	$a1, $sp, 704
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp745:                               # EH_LABEL
# %bb.167:                              # %._crit_edge.i.i175.i89
	addi.d	$fp, $sp, 1384
	addi.d	$a0, $sp, 688
	st.d	$a0, $sp, 672
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	st.d	$a0, $sp, 688
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	st.d	$a0, $sp, 694
	ori	$a0, $zero, 14
	st.d	$a0, $sp, 680
	st.b	$zero, $sp, 702
.Ltmp747:                               # EH_LABEL
	addi.d	$a1, $sp, 672
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp748:                               # EH_LABEL
# %bb.168:                              # %.noexc.i180.i96
	addi.d	$fp, $sp, 1472
	addi.d	$a0, $sp, 656
	st.d	$a0, $sp, 640
	ori	$a0, $zero, 20
	st.d	$a0, $sp, 608
.Ltmp750:                               # EH_LABEL
	addi.d	$a0, $sp, 640
	addi.d	$a1, $sp, 608
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp751:                               # EH_LABEL
# %bb.169:                              # %.noexc181.i97
	ld.d	$a1, $sp, 608
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 640
	st.d	$a1, $sp, 656
	vst	$vr0, $a0, 0
	st.w	$s5, $a0, 16
	ld.d	$a0, $sp, 640
	st.d	$a1, $sp, 648
	stx.b	$zero, $a0, $a1
.Ltmp753:                               # EH_LABEL
	addi.d	$a1, $sp, 640
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp754:                               # EH_LABEL
# %bb.170:                              # %.noexc.i184.i104
	addi.d	$fp, $sp, 1560
	addi.d	$a0, $sp, 624
	st.d	$a0, $sp, 608
	ori	$a0, $zero, 21
	st.d	$a0, $sp, 576
.Ltmp756:                               # EH_LABEL
	addi.d	$a0, $sp, 608
	addi.d	$a1, $sp, 576
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp757:                               # EH_LABEL
# %bb.171:                              # %.noexc185.i105
	ld.d	$a1, $sp, 576
	ld.d	$a2, $sp, 224                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 608
	st.d	$a1, $sp, 624
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	st.d	$a2, $a0, 13
	ld.d	$a0, $sp, 608
	st.d	$a1, $sp, 616
	stx.b	$zero, $a0, $a1
.Ltmp759:                               # EH_LABEL
	addi.d	$a1, $sp, 608
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp760:                               # EH_LABEL
# %bb.172:                              # %.noexc.i188.i112
	addi.d	$fp, $sp, 1648
	addi.d	$a0, $sp, 592
	st.d	$a0, $sp, 576
	ori	$a0, $zero, 20
	st.d	$a0, $sp, 544
.Ltmp762:                               # EH_LABEL
	addi.d	$a0, $sp, 576
	addi.d	$a1, $sp, 544
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp763:                               # EH_LABEL
# %bb.173:                              # %.noexc189.i113
	ld.d	$a1, $sp, 544
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 576
	st.d	$a1, $sp, 592
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	st.w	$a2, $a0, 16
	ld.d	$a0, $sp, 576
	st.d	$a1, $sp, 584
	stx.b	$zero, $a0, $a1
.Ltmp765:                               # EH_LABEL
	addi.d	$a1, $sp, 576
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp766:                               # EH_LABEL
# %bb.174:                              # %.noexc.i192.i120
	addi.d	$fp, $sp, 1736
	addi.d	$a0, $sp, 560
	st.d	$a0, $sp, 544
	ori	$a0, $zero, 19
	st.d	$a0, $sp, 512
.Ltmp768:                               # EH_LABEL
	addi.d	$a0, $sp, 544
	addi.d	$a1, $sp, 512
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp769:                               # EH_LABEL
# %bb.175:                              # %.noexc193.i121
	ld.d	$a1, $sp, 512
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 544
	st.d	$a1, $sp, 560
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	st.w	$a2, $a0, 15
	ld.d	$a0, $sp, 544
	st.d	$a1, $sp, 552
	stx.b	$zero, $a0, $a1
.Ltmp771:                               # EH_LABEL
	addi.d	$a1, $sp, 544
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp772:                               # EH_LABEL
# %bb.176:                              # %.noexc.i196.i128
	addi.d	$s5, $sp, 1824
	addi.d	$a0, $sp, 528
	st.d	$a0, $sp, 512
	ori	$a0, $zero, 42
	st.d	$a0, $sp, 480
.Ltmp774:                               # EH_LABEL
	addi.d	$a0, $sp, 512
	addi.d	$a1, $sp, 480
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp775:                               # EH_LABEL
# %bb.177:                              # %.noexc197.i129
	ld.d	$a1, $sp, 480
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	vld	$vr0, $a2, 16
	st.d	$a0, $sp, 512
	st.d	$a1, $sp, 528
	vst	$vr0, $a0, 16
	vld	$vr0, $a2, 0
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	st.d	$a2, $a0, 32
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	st.h	$a2, $a0, 40
	st.d	$a1, $sp, 520
	stx.b	$zero, $a0, $a1
.Ltmp777:                               # EH_LABEL
	addi.d	$a1, $sp, 512
	ori	$a2, $zero, 1
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp778:                               # EH_LABEL
# %bb.178:                              # %.noexc.i200.i136
	addi.d	$s6, $sp, 1912
	addi.d	$a0, $sp, 496
	st.d	$a0, $sp, 480
	ori	$a0, $zero, 39
	st.d	$a0, $sp, 448
.Ltmp780:                               # EH_LABEL
	addi.d	$a0, $sp, 480
	addi.d	$a1, $sp, 448
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp781:                               # EH_LABEL
# %bb.179:                              # %.noexc201.i137
	ld.d	$a1, $sp, 448
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	vld	$vr0, $a2, 16
	st.d	$a0, $sp, 480
	st.d	$a1, $sp, 496
	vst	$vr0, $a0, 16
	vld	$vr0, $a2, 0
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	st.d	$a2, $a0, 31
	st.d	$a1, $sp, 488
	stx.b	$zero, $a0, $a1
.Ltmp783:                               # EH_LABEL
	addi.d	$a1, $sp, 480
	ori	$a2, $zero, 1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp784:                               # EH_LABEL
# %bb.180:                              # %.noexc.i204.i144
	addi.d	$s7, $sp, 2000
	addi.d	$a0, $sp, 464
	st.d	$a0, $sp, 448
	ori	$a0, $zero, 39
	st.d	$a0, $sp, 416
.Ltmp786:                               # EH_LABEL
	addi.d	$a0, $sp, 448
	addi.d	$a1, $sp, 416
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp787:                               # EH_LABEL
# %bb.181:                              # %.noexc205.i145
	ld.d	$a1, $sp, 416
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	vld	$vr0, $a2, 16
	st.d	$a0, $sp, 448
	st.d	$a1, $sp, 464
	vst	$vr0, $a0, 16
	vld	$vr0, $a2, 0
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	st.d	$a2, $a0, 31
	st.d	$a1, $sp, 456
	stx.b	$zero, $a0, $a1
.Ltmp789:                               # EH_LABEL
	addi.d	$a1, $sp, 448
	ori	$a2, $zero, 1
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp790:                               # EH_LABEL
# %bb.182:                              # %.noexc.i208.i152
	ori	$a0, $zero, 2088
	add.d	$fp, $sp, $a0
	addi.d	$a0, $sp, 432
	st.d	$a0, $sp, 416
	ori	$a0, $zero, 45
	st.d	$a0, $sp, 384
.Ltmp792:                               # EH_LABEL
	addi.d	$a0, $sp, 416
	addi.d	$a1, $sp, 384
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp793:                               # EH_LABEL
# %bb.183:                              # %.noexc209.i153
	ld.d	$a1, $sp, 384
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	vld	$vr0, $a2, 16
	st.d	$a0, $sp, 416
	st.d	$a1, $sp, 432
	vst	$vr0, $a0, 16
	vld	$vr0, $a2, 0
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	st.d	$a2, $a0, 32
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	st.d	$a2, $a0, 37
	st.d	$a1, $sp, 424
	stx.b	$zero, $a0, $a1
.Ltmp795:                               # EH_LABEL
	addi.d	$a1, $sp, 416
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp796:                               # EH_LABEL
# %bb.184:                              # %.noexc.i212.i160
	ori	$a0, $zero, 2176
	add.d	$s8, $sp, $a0
	addi.d	$a0, $sp, 400
	st.d	$a0, $sp, 384
	ori	$a0, $zero, 44
	st.d	$a0, $sp, 352
.Ltmp798:                               # EH_LABEL
	addi.d	$a0, $sp, 384
	addi.d	$a1, $sp, 352
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp799:                               # EH_LABEL
# %bb.185:                              # %.noexc213.i161
	ld.d	$a1, $sp, 352
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	vld	$vr0, $a2, 16
	st.d	$a0, $sp, 384
	st.d	$a1, $sp, 400
	vst	$vr0, $a0, 16
	vld	$vr0, $a2, 0
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	st.d	$a2, $a0, 32
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	st.w	$a2, $a0, 40
	st.d	$a1, $sp, 392
	stx.b	$zero, $a0, $a1
.Ltmp801:                               # EH_LABEL
	addi.d	$a1, $sp, 384
	ori	$a2, $zero, 1
	ori	$s1, $zero, 1
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp802:                               # EH_LABEL
# %bb.186:                              # %._crit_edge.i.i215.i168
	ori	$a0, $zero, 2264
	add.d	$s2, $sp, $a0
	addi.d	$a0, $sp, 368
	st.d	$a0, $sp, 352
	ori	$a0, $zero, 125
	st.h	$a0, $sp, 368
	st.d	$s1, $sp, 360
.Ltmp804:                               # EH_LABEL
	addi.d	$a1, $sp, 352
	ori	$a2, $zero, 1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp805:                               # EH_LABEL
# %bb.187:
.Ltmp807:                               # EH_LABEL
	ori	$a0, $zero, 2
	addi.d	$a1, $sp, 768
	ori	$a2, $zero, 18
	addi.d	$s3, $sp, 768
	pcaddu18i	$ra, %call36(_Z8AddCases10TestCaseIDSt16initializer_listI8TestCaseE)
	jirl	$ra, $ra, 0
.Ltmp808:                               # EH_LABEL
# %bb.188:
	move	$s1, $a0
	move	$s0, $zero
	ori	$s2, $zero, 1
	ori	$s5, $zero, 1
	lu32i.d	$s5, 1
	b	.LBB16_190
	.p2align	4, , 16
.LBB16_189:                             # %_ZN8TestCaseD2Ev.exit.i184
                                        #   in Loop: Header=BB16_190 Depth=1
	addi.d	$s0, $s0, -88
	beq	$s0, $s4, .LBB16_201
.LBB16_190:                             # =>This Inner Loop Header: Depth=1
	add.d	$s6, $s3, $s0
	ld.d	$fp, $s6, 1576
	beqz	$fp, .LBB16_195
# %bb.191:                              #   in Loop: Header=BB16_190 Depth=1
	ld.d	$a0, $fp, 8
	dbar	20
	bne	$a0, $s5, .LBB16_193
# %bb.192:                              #   in Loop: Header=BB16_190 Depth=1
	ld.d	$a0, $fp, 0
	st.d	$zero, $fp, 8
	ld.d	$a1, $a0, 16
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.d	$a0, $s6, 1536
	addi.d	$a1, $s6, 1552
	bne	$a1, $a0, .LBB16_196
	b	.LBB16_197
	.p2align	4, , 16
.LBB16_193:                             #   in Loop: Header=BB16_190 Depth=1
	pcalau12i	$a1, %got_pc_hi20(__libc_single_threaded)
	ld.d	$a1, $a1, %got_pc_lo12(__libc_single_threaded)
	ld.bu	$a1, $a1, 0
	beqz	$a1, .LBB16_199
# %bb.194:                              #   in Loop: Header=BB16_190 Depth=1
	addi.d	$a1, $a0, -1
	st.w	$a1, $fp, 8
	addi.w	$a0, $a0, 0
	beq	$a0, $s2, .LBB16_200
	.p2align	4, , 16
.LBB16_195:                             # %_ZNSt12__shared_ptrIN9benchmark5RegexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i180
                                        #   in Loop: Header=BB16_190 Depth=1
	ld.d	$a0, $s6, 1536
	addi.d	$a1, $s6, 1552
	beq	$a1, $a0, .LBB16_197
.LBB16_196:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i181
                                        #   in Loop: Header=BB16_190 Depth=1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_197:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i182
                                        #   in Loop: Header=BB16_190 Depth=1
	ld.d	$a0, $s6, 1496
	addi.d	$a1, $s6, 1512
	beq	$a1, $a0, .LBB16_189
# %bb.198:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i183
                                        #   in Loop: Header=BB16_190 Depth=1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB16_189
.LBB16_199:                             #   in Loop: Header=BB16_190 Depth=1
	addi.d	$a1, $fp, 8
	addi.w	$a2, $zero, -1
	amadd_db.w	$a0, $a2, $a1
	addi.w	$a0, $a0, 0
	bne	$a0, $s2, .LBB16_195
.LBB16_200:                             #   in Loop: Header=BB16_190 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 1536
	addi.d	$a1, $s6, 1552
	bne	$a1, $a0, .LBB16_196
	b	.LBB16_197
.LBB16_201:
	ld.d	$a0, $sp, 352
	addi.d	$a1, $sp, 368
	beq	$a0, $a1, .LBB16_203
# %bb.202:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i185
	ld.d	$a1, $sp, 368
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_203:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i186
	ld.d	$a0, $sp, 384
	addi.d	$a1, $sp, 400
	beq	$a0, $a1, .LBB16_205
# %bb.204:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219.i187
	ld.d	$a1, $sp, 400
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_205:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221.i188
	ld.d	$a0, $sp, 416
	addi.d	$a1, $sp, 432
	beq	$a0, $a1, .LBB16_207
# %bb.206:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i222.i189
	ld.d	$a1, $sp, 432
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_207:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224.i190
	ld.d	$a0, $sp, 448
	addi.d	$a1, $sp, 464
	beq	$a0, $a1, .LBB16_209
# %bb.208:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225.i191
	ld.d	$a1, $sp, 464
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_209:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227.i192
	ld.d	$a0, $sp, 480
	addi.d	$a1, $sp, 496
	beq	$a0, $a1, .LBB16_211
# %bb.210:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228.i193
	ld.d	$a1, $sp, 496
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_211:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230.i194
	ld.d	$a0, $sp, 512
	addi.d	$a1, $sp, 528
	beq	$a0, $a1, .LBB16_213
# %bb.212:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231.i195
	ld.d	$a1, $sp, 528
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_213:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233.i196
	ld.d	$a0, $sp, 544
	addi.d	$a1, $sp, 560
	beq	$a0, $a1, .LBB16_215
# %bb.214:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234.i197
	ld.d	$a1, $sp, 560
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_215:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236.i198
	ld.d	$a0, $sp, 576
	addi.d	$a1, $sp, 592
	beq	$a0, $a1, .LBB16_217
# %bb.216:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237.i199
	ld.d	$a1, $sp, 592
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_217:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239.i200
	ld.d	$a0, $sp, 608
	addi.d	$a1, $sp, 624
	beq	$a0, $a1, .LBB16_219
# %bb.218:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i240.i201
	ld.d	$a1, $sp, 624
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_219:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242.i202
	ld.d	$a0, $sp, 640
	addi.d	$a1, $sp, 656
	beq	$a0, $a1, .LBB16_221
# %bb.220:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i243.i203
	ld.d	$a1, $sp, 656
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_221:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245.i204
	ld.d	$a0, $sp, 672
	addi.d	$a1, $sp, 688
	beq	$a0, $a1, .LBB16_223
# %bb.222:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246.i205
	ld.d	$a1, $sp, 688
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_223:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248.i206
	ld.d	$a0, $sp, 704
	addi.d	$a1, $sp, 720
	beq	$a0, $a1, .LBB16_225
# %bb.224:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249.i207
	ld.d	$a1, $sp, 720
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_225:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251.i208
	ld.d	$a0, $sp, 736
	addi.d	$a1, $sp, 752
	beq	$a0, $a1, .LBB16_227
# %bb.226:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252.i209
	ld.d	$a1, $sp, 752
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_227:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254.i210
	ori	$a0, $zero, 2440
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2456
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_229
# %bb.228:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i255.i211
	ori	$a1, $zero, 2456
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_229:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257.i212
	ori	$a0, $zero, 2472
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2488
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_231
# %bb.230:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i258.i213
	ori	$a1, $zero, 2488
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_231:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260.i214
	ori	$a0, $zero, 2504
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2520
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_233
# %bb.232:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261.i215
	ori	$a1, $zero, 2520
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_233:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263.i216
	ori	$a0, $zero, 2536
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2552
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_235
# %bb.234:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i264.i217
	ori	$a1, $zero, 2552
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_235:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266.i218
	ori	$a0, $zero, 2568
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2584
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_237
# %bb.236:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i267.i219
	ori	$a1, $zero, 2584
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_237:                             # %__cxx_global_var_init.31.exit
	pcalau12i	$a0, %pc_hi20(dummy89)
	st.w	$s1, $a0, %pc_lo12(dummy89)
	ori	$a0, $zero, 2584
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2568
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 48
	ori	$a1, $zero, 2536
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 2568
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2536
	add.d	$a1, $sp, $a1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2536
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	ori	$a2, $zero, 2568
	add.d	$a2, $sp, $a2
	st.d	$a0, $a2, 0
	ori	$a2, $zero, 2584
	add.d	$a2, $sp, $a2
	st.d	$a1, $a2, 0
	pcalau12i	$a2, %pc_hi20(.L.str.34)
	addi.d	$a2, $a2, %pc_lo12(.L.str.34)
	vld	$vr0, $a2, 0
	vst	$vr0, $a0, 0
	vld	$vr0, $a2, 16
	vst	$vr0, $a0, 16
	vld	$vr0, $a2, 32
	vst	$vr0, $a0, 32
	ori	$a2, $zero, 2576
	add.d	$a2, $sp, $a2
	st.d	$a1, $a2, 0
	stx.b	$zero, $a0, $a1
.Ltmp810:                               # EH_LABEL
	addi.d	$a0, $sp, 768
	ori	$a1, $zero, 2568
	add.d	$a1, $sp, $a1
	addi.d	$s0, $sp, 768
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp811:                               # EH_LABEL
# %bb.238:                              # %.noexc.i160.i243
	addi.d	$s0, $sp, 856
	ori	$a0, $zero, 2552
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2536
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 19
	ori	$a1, $zero, 2504
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
.Ltmp813:                               # EH_LABEL
	ori	$a0, $zero, 2536
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2504
	add.d	$a1, $sp, $a1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp814:                               # EH_LABEL
# %bb.239:                              # %.noexc161.i244
	ori	$a1, $zero, 2504
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	ld.d	$a2, $sp, 304                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	ori	$a2, $zero, 2536
	add.d	$a2, $sp, $a2
	st.d	$a0, $a2, 0
	ori	$a2, $zero, 2552
	add.d	$a2, $sp, $a2
	st.d	$a1, $a2, 0
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	st.w	$a2, $a0, 15
	ori	$a0, $zero, 2536
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a2, $zero, 2544
	add.d	$a2, $sp, $a2
	st.d	$a1, $a2, 0
	stx.b	$zero, $a0, $a1
.Ltmp816:                               # EH_LABEL
	ori	$a0, $zero, 2536
	add.d	$a1, $sp, $a0
	ori	$a2, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp817:                               # EH_LABEL
# %bb.240:                              # %.noexc.i164.i247
	addi.d	$fp, $sp, 944
	ori	$a0, $zero, 2520
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2504
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 32
	ori	$a1, $zero, 2472
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
.Ltmp819:                               # EH_LABEL
	ori	$a0, $zero, 2504
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2472
	add.d	$a1, $sp, $a1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp820:                               # EH_LABEL
# %bb.241:                              # %.noexc165.i248
	ori	$a1, $zero, 2472
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	ld.d	$a2, $sp, 296                   # 8-byte Folded Reload
	vld	$vr0, $a2, 16
	ori	$a3, $zero, 2504
	add.d	$a3, $sp, $a3
	st.d	$a0, $a3, 0
	ori	$a3, $zero, 2520
	add.d	$a3, $sp, $a3
	st.d	$a1, $a3, 0
	vst	$vr0, $a0, 16
	vld	$vr0, $a2, 0
	vst	$vr0, $a0, 0
	ori	$a0, $zero, 2504
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a2, $zero, 2512
	add.d	$a2, $sp, $a2
	st.d	$a1, $a2, 0
	stx.b	$zero, $a0, $a1
.Ltmp822:                               # EH_LABEL
	ori	$a0, $zero, 2504
	add.d	$a1, $sp, $a0
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp823:                               # EH_LABEL
# %bb.242:                              # %.noexc.i168.i251
	addi.d	$fp, $sp, 1032
	ori	$a0, $zero, 2488
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2472
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 47
	ori	$a1, $zero, 2440
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
.Ltmp825:                               # EH_LABEL
	ori	$a0, $zero, 2472
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2440
	add.d	$a1, $sp, $a1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp826:                               # EH_LABEL
# %bb.243:                              # %.noexc169.i252
	ori	$a1, $zero, 2440
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	ld.d	$a2, $sp, 288                   # 8-byte Folded Reload
	vld	$vr0, $a2, 16
	ori	$a3, $zero, 2472
	add.d	$a3, $sp, $a3
	st.d	$a0, $a3, 0
	ori	$a3, $zero, 2488
	add.d	$a3, $sp, $a3
	st.d	$a1, $a3, 0
	vst	$vr0, $a0, 16
	vld	$vr0, $a2, 0
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 280                   # 8-byte Folded Reload
	st.d	$a2, $a0, 32
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	st.d	$a2, $a0, 39
	ori	$a2, $zero, 2480
	add.d	$a2, $sp, $a2
	st.d	$a1, $a2, 0
	stx.b	$zero, $a0, $a1
.Ltmp828:                               # EH_LABEL
	ori	$a0, $zero, 2472
	add.d	$a1, $sp, $a0
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp829:                               # EH_LABEL
# %bb.244:                              # %.noexc.i172.i255
	addi.d	$fp, $sp, 1120
	ori	$a0, $zero, 2456
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2440
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 25
	st.d	$a0, $sp, 736
.Ltmp831:                               # EH_LABEL
	ori	$a0, $zero, 2440
	add.d	$a0, $sp, $a0
	addi.d	$a1, $sp, 736
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp832:                               # EH_LABEL
# %bb.245:                              # %.noexc173.i256
	ld.d	$a1, $sp, 736
	ori	$a2, $zero, 2440
	add.d	$a2, $sp, $a2
	st.d	$a0, $a2, 0
	ori	$a2, $zero, 2456
	add.d	$a2, $sp, $a2
	st.d	$a1, $a2, 0
	pcalau12i	$a2, %pc_hi20(.L.str.35)
	addi.d	$a3, $a2, %pc_lo12(.L.str.35)
	vld	$vr0, $a3, 0
	ld.b	$a2, $a3, 24
	st.d	$a3, $sp, 72                    # 8-byte Folded Spill
	ld.d	$a3, $a3, 16
	vst	$vr0, $a0, 0
	st.d	$a2, $sp, 80                    # 8-byte Folded Spill
	st.b	$a2, $a0, 24
	st.d	$a3, $sp, 64                    # 8-byte Folded Spill
	st.d	$a3, $a0, 16
	ori	$a0, $zero, 2440
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a2, $zero, 2448
	add.d	$a2, $sp, $a2
	st.d	$a1, $a2, 0
	stx.b	$zero, $a0, $a1
.Ltmp834:                               # EH_LABEL
	ori	$a0, $zero, 2440
	add.d	$a1, $sp, $a0
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp835:                               # EH_LABEL
# %bb.246:                              # %.noexc.i176.i
	addi.d	$fp, $sp, 1208
	addi.d	$a0, $sp, 752
	st.d	$a0, $sp, 736
	ori	$a0, $zero, 18
	st.d	$a0, $sp, 704
.Ltmp837:                               # EH_LABEL
	addi.d	$a0, $sp, 736
	addi.d	$a1, $sp, 704
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp838:                               # EH_LABEL
# %bb.247:                              # %.noexc177.i
	ld.d	$a1, $sp, 704
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 736
	st.d	$a1, $sp, 752
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 264                   # 8-byte Folded Reload
	st.h	$a2, $a0, 16
	ld.d	$a0, $sp, 736
	st.d	$a1, $sp, 744
	stx.b	$zero, $a0, $a1
.Ltmp840:                               # EH_LABEL
	addi.d	$a1, $sp, 736
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp841:                               # EH_LABEL
# %bb.248:                              # %._crit_edge.i.i179.i
	addi.d	$fp, $sp, 1296
	addi.d	$a0, $sp, 720
	st.d	$a0, $sp, 704
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	st.d	$a0, $sp, 720
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	st.d	$a0, $sp, 726
	ori	$a0, $zero, 14
	st.d	$a0, $sp, 712
	st.b	$zero, $sp, 734
.Ltmp843:                               # EH_LABEL
	addi.d	$a1, $sp, 704
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp844:                               # EH_LABEL
# %bb.249:                              # %.noexc.i184.i267
	addi.d	$fp, $sp, 1384
	addi.d	$a0, $sp, 688
	st.d	$a0, $sp, 672
	ori	$a0, $zero, 26
	st.d	$a0, $sp, 640
.Ltmp846:                               # EH_LABEL
	addi.d	$a0, $sp, 672
	addi.d	$a1, $sp, 640
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp847:                               # EH_LABEL
# %bb.250:                              # %.noexc185.i268
	ld.d	$a1, $sp, 640
	st.d	$a0, $sp, 672
	st.d	$a1, $sp, 688
	pcalau12i	$a2, %pc_hi20(.L.str.36)
	addi.d	$a2, $a2, %pc_lo12(.L.str.36)
	vld	$vr0, $a2, 0
	ld.h	$a3, $a2, 24
	ld.d	$a2, $a2, 16
	vst	$vr0, $a0, 0
	st.h	$a3, $a0, 24
	st.d	$a2, $a0, 16
	ld.d	$a0, $sp, 672
	st.d	$a1, $sp, 680
	stx.b	$zero, $a0, $a1
.Ltmp849:                               # EH_LABEL
	addi.d	$a1, $sp, 672
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp850:                               # EH_LABEL
# %bb.251:                              # %.noexc.i188.i274
	addi.d	$fp, $sp, 1472
	addi.d	$a0, $sp, 656
	st.d	$a0, $sp, 640
	ori	$a0, $zero, 26
	st.d	$a0, $sp, 608
.Ltmp852:                               # EH_LABEL
	addi.d	$a0, $sp, 640
	addi.d	$a1, $sp, 608
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp853:                               # EH_LABEL
# %bb.252:                              # %.noexc189.i275
	ld.d	$a1, $sp, 608
	st.d	$a0, $sp, 640
	st.d	$a1, $sp, 656
	pcalau12i	$a2, %pc_hi20(.L.str.37)
	addi.d	$a3, $a2, %pc_lo12(.L.str.37)
	vld	$vr0, $a3, 0
	ld.h	$a2, $a3, 24
	st.d	$a3, $sp, 48                    # 8-byte Folded Spill
	ld.d	$a3, $a3, 16
	vst	$vr0, $a0, 0
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	st.h	$a2, $a0, 24
	st.d	$a3, $sp, 40                    # 8-byte Folded Spill
	st.d	$a3, $a0, 16
	ld.d	$a0, $sp, 640
	st.d	$a1, $sp, 648
	stx.b	$zero, $a0, $a1
.Ltmp855:                               # EH_LABEL
	addi.d	$a1, $sp, 640
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp856:                               # EH_LABEL
# %bb.253:                              # %.noexc.i192.i281
	addi.d	$fp, $sp, 1560
	addi.d	$a0, $sp, 624
	st.d	$a0, $sp, 608
	ori	$a0, $zero, 17
	st.d	$a0, $sp, 576
.Ltmp858:                               # EH_LABEL
	addi.d	$a0, $sp, 608
	addi.d	$a1, $sp, 576
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp859:                               # EH_LABEL
# %bb.254:                              # %.noexc193.i282
	ld.d	$a1, $sp, 576
	st.d	$a0, $sp, 608
	st.d	$a1, $sp, 624
	pcalau12i	$a2, %pc_hi20(.L.str.38)
	addi.d	$a2, $a2, %pc_lo12(.L.str.38)
	vld	$vr0, $a2, 0
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	ld.b	$a2, $a2, 16
	vst	$vr0, $a0, 0
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	st.b	$a2, $a0, 16
	ld.d	$a0, $sp, 608
	st.d	$a1, $sp, 616
	stx.b	$zero, $a0, $a1
.Ltmp861:                               # EH_LABEL
	addi.d	$a1, $sp, 608
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp862:                               # EH_LABEL
# %bb.255:                              # %.noexc.i196.i288
	addi.d	$fp, $sp, 1648
	addi.d	$a0, $sp, 592
	st.d	$a0, $sp, 576
	ori	$a0, $zero, 21
	st.d	$a0, $sp, 544
.Ltmp864:                               # EH_LABEL
	addi.d	$a0, $sp, 576
	addi.d	$a1, $sp, 544
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp865:                               # EH_LABEL
# %bb.256:                              # %.noexc197.i289
	ld.d	$a1, $sp, 544
	ld.d	$a2, $sp, 224                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 576
	st.d	$a1, $sp, 592
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	st.d	$a2, $a0, 13
	ld.d	$a0, $sp, 576
	st.d	$a1, $sp, 584
	stx.b	$zero, $a0, $a1
.Ltmp867:                               # EH_LABEL
	addi.d	$a1, $sp, 576
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp868:                               # EH_LABEL
# %bb.257:                              # %.noexc.i200.i295
	addi.d	$fp, $sp, 1736
	addi.d	$a0, $sp, 560
	st.d	$a0, $sp, 544
	ori	$a0, $zero, 20
	st.d	$a0, $sp, 512
.Ltmp870:                               # EH_LABEL
	addi.d	$a0, $sp, 544
	addi.d	$a1, $sp, 512
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp871:                               # EH_LABEL
# %bb.258:                              # %.noexc201.i296
	ld.d	$a1, $sp, 512
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 544
	st.d	$a1, $sp, 560
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	st.w	$a2, $a0, 16
	ld.d	$a0, $sp, 544
	st.d	$a1, $sp, 552
	stx.b	$zero, $a0, $a1
.Ltmp873:                               # EH_LABEL
	addi.d	$a1, $sp, 544
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp874:                               # EH_LABEL
# %bb.259:                              # %.noexc.i204.i302
	addi.d	$s3, $sp, 1824
	addi.d	$a0, $sp, 528
	st.d	$a0, $sp, 512
	ori	$a0, $zero, 19
	st.d	$a0, $sp, 480
.Ltmp876:                               # EH_LABEL
	addi.d	$a0, $sp, 512
	addi.d	$a1, $sp, 480
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp877:                               # EH_LABEL
# %bb.260:                              # %.noexc205.i303
	ld.d	$a1, $sp, 480
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 512
	st.d	$a1, $sp, 528
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	st.w	$a2, $a0, 15
	ld.d	$a0, $sp, 512
	st.d	$a1, $sp, 520
	stx.b	$zero, $a0, $a1
.Ltmp879:                               # EH_LABEL
	addi.d	$a1, $sp, 512
	ori	$a2, $zero, 1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp880:                               # EH_LABEL
# %bb.261:                              # %.noexc.i208.i309
	addi.d	$s5, $sp, 1912
	addi.d	$a0, $sp, 496
	st.d	$a0, $sp, 480
	ori	$a0, $zero, 42
	st.d	$a0, $sp, 448
.Ltmp882:                               # EH_LABEL
	addi.d	$a0, $sp, 480
	addi.d	$a1, $sp, 448
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp883:                               # EH_LABEL
# %bb.262:                              # %.noexc209.i310
	ld.d	$a1, $sp, 448
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	vld	$vr0, $a2, 16
	st.d	$a0, $sp, 480
	st.d	$a1, $sp, 496
	vst	$vr0, $a0, 16
	vld	$vr0, $a2, 0
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	st.d	$a2, $a0, 32
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	st.h	$a2, $a0, 40
	st.d	$a1, $sp, 488
	stx.b	$zero, $a0, $a1
.Ltmp885:                               # EH_LABEL
	addi.d	$a1, $sp, 480
	ori	$a2, $zero, 1
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp886:                               # EH_LABEL
# %bb.263:                              # %.noexc.i212.i316
	addi.d	$s6, $sp, 2000
	addi.d	$a0, $sp, 464
	st.d	$a0, $sp, 448
	ori	$a0, $zero, 39
	st.d	$a0, $sp, 416
.Ltmp888:                               # EH_LABEL
	addi.d	$a0, $sp, 448
	addi.d	$a1, $sp, 416
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp889:                               # EH_LABEL
# %bb.264:                              # %.noexc213.i317
	ld.d	$a1, $sp, 416
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	vld	$vr0, $a2, 16
	st.d	$a0, $sp, 448
	st.d	$a1, $sp, 464
	vst	$vr0, $a0, 16
	vld	$vr0, $a2, 0
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	st.d	$a2, $a0, 31
	st.d	$a1, $sp, 456
	stx.b	$zero, $a0, $a1
.Ltmp891:                               # EH_LABEL
	addi.d	$a1, $sp, 448
	ori	$a2, $zero, 1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp892:                               # EH_LABEL
# %bb.265:                              # %.noexc.i216.i
	ori	$a0, $zero, 2088
	add.d	$s7, $sp, $a0
	addi.d	$a0, $sp, 432
	st.d	$a0, $sp, 416
	ori	$a0, $zero, 39
	st.d	$a0, $sp, 384
.Ltmp894:                               # EH_LABEL
	addi.d	$a0, $sp, 416
	addi.d	$a1, $sp, 384
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp895:                               # EH_LABEL
# %bb.266:                              # %.noexc217.i
	ld.d	$a1, $sp, 384
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	vld	$vr0, $a2, 16
	st.d	$a0, $sp, 416
	st.d	$a1, $sp, 432
	vst	$vr0, $a0, 16
	vld	$vr0, $a2, 0
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	st.d	$a2, $a0, 31
	st.d	$a1, $sp, 424
	stx.b	$zero, $a0, $a1
.Ltmp897:                               # EH_LABEL
	addi.d	$a1, $sp, 416
	ori	$a2, $zero, 1
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp898:                               # EH_LABEL
# %bb.267:                              # %.noexc.i220.i
	ori	$a0, $zero, 2176
	add.d	$s8, $sp, $a0
	addi.d	$a0, $sp, 400
	st.d	$a0, $sp, 384
	ori	$a0, $zero, 45
	st.d	$a0, $sp, 352
.Ltmp900:                               # EH_LABEL
	addi.d	$a0, $sp, 384
	addi.d	$a1, $sp, 352
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp901:                               # EH_LABEL
# %bb.268:                              # %.noexc221.i
	ld.d	$a1, $sp, 352
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	vld	$vr0, $a2, 16
	st.d	$a0, $sp, 384
	st.d	$a1, $sp, 400
	vst	$vr0, $a0, 16
	vld	$vr0, $a2, 0
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	st.d	$a2, $a0, 32
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	st.d	$a2, $a0, 37
	st.d	$a1, $sp, 392
	stx.b	$zero, $a0, $a1
.Ltmp903:                               # EH_LABEL
	addi.d	$a1, $sp, 384
	ori	$a2, $zero, 1
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp904:                               # EH_LABEL
# %bb.269:                              # %.noexc.i224.i
	ori	$a0, $zero, 2264
	add.d	$fp, $sp, $a0
	addi.d	$a0, $sp, 368
	st.d	$a0, $sp, 352
	ori	$a0, $zero, 44
	st.d	$a0, $sp, 320
.Ltmp906:                               # EH_LABEL
	addi.d	$a0, $sp, 352
	addi.d	$a1, $sp, 320
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp907:                               # EH_LABEL
# %bb.270:                              # %.noexc225.i
	ld.d	$a1, $sp, 320
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	vld	$vr0, $a2, 16
	st.d	$a0, $sp, 352
	st.d	$a1, $sp, 368
	vst	$vr0, $a0, 16
	vld	$vr0, $a2, 0
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	st.d	$a2, $a0, 32
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	st.w	$a2, $a0, 40
	st.d	$a1, $sp, 360
	stx.b	$zero, $a0, $a1
.Ltmp909:                               # EH_LABEL
	addi.d	$a1, $sp, 352
	ori	$a2, $zero, 1
	ori	$s1, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp910:                               # EH_LABEL
# %bb.271:                              # %._crit_edge.i.i227.i
	ori	$a0, $zero, 2352
	add.d	$s2, $sp, $a0
	addi.d	$a0, $sp, 336
	st.d	$a0, $sp, 320
	ori	$a0, $zero, 125
	st.h	$a0, $sp, 336
	st.d	$s1, $sp, 328
.Ltmp912:                               # EH_LABEL
	addi.d	$a1, $sp, 320
	ori	$a2, $zero, 1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp913:                               # EH_LABEL
# %bb.272:
.Ltmp915:                               # EH_LABEL
	ori	$a0, $zero, 2
	addi.d	$a1, $sp, 768
	ori	$a2, $zero, 19
	addi.d	$s4, $sp, 768
	pcaddu18i	$ra, %call36(_Z8AddCases10TestCaseIDSt16initializer_listI8TestCaseE)
	jirl	$ra, $ra, 0
.Ltmp916:                               # EH_LABEL
# %bb.273:
	move	$s1, $a0
	move	$s0, $zero
	ori	$s2, $zero, 1
	ori	$s5, $zero, 1
	lu32i.d	$s5, 1
	b	.LBB16_275
	.p2align	4, , 16
.LBB16_274:                             # %_ZN8TestCaseD2Ev.exit.i351
                                        #   in Loop: Header=BB16_275 Depth=1
	addi.d	$s0, $s0, -88
	addi.w	$s3, $zero, -1672
	beq	$s0, $s3, .LBB16_286
.LBB16_275:                             # =>This Inner Loop Header: Depth=1
	add.d	$s3, $s4, $s0
	ld.d	$fp, $s3, 1664
	beqz	$fp, .LBB16_280
# %bb.276:                              #   in Loop: Header=BB16_275 Depth=1
	ld.d	$a0, $fp, 8
	dbar	20
	bne	$a0, $s5, .LBB16_278
# %bb.277:                              #   in Loop: Header=BB16_275 Depth=1
	ld.d	$a0, $fp, 0
	st.d	$zero, $fp, 8
	ld.d	$a1, $a0, 16
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.d	$a0, $s3, 1624
	addi.d	$a1, $s3, 1640
	bne	$a1, $a0, .LBB16_281
	b	.LBB16_282
	.p2align	4, , 16
.LBB16_278:                             #   in Loop: Header=BB16_275 Depth=1
	pcalau12i	$a1, %got_pc_hi20(__libc_single_threaded)
	ld.d	$a1, $a1, %got_pc_lo12(__libc_single_threaded)
	ld.bu	$a1, $a1, 0
	beqz	$a1, .LBB16_284
# %bb.279:                              #   in Loop: Header=BB16_275 Depth=1
	addi.d	$a1, $a0, -1
	st.w	$a1, $fp, 8
	addi.w	$a0, $a0, 0
	beq	$a0, $s2, .LBB16_285
	.p2align	4, , 16
.LBB16_280:                             # %_ZNSt12__shared_ptrIN9benchmark5RegexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i347
                                        #   in Loop: Header=BB16_275 Depth=1
	ld.d	$a0, $s3, 1624
	addi.d	$a1, $s3, 1640
	beq	$a1, $a0, .LBB16_282
.LBB16_281:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i348
                                        #   in Loop: Header=BB16_275 Depth=1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_282:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i349
                                        #   in Loop: Header=BB16_275 Depth=1
	ld.d	$a0, $s3, 1584
	addi.d	$a1, $s3, 1600
	beq	$a1, $a0, .LBB16_274
# %bb.283:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i350
                                        #   in Loop: Header=BB16_275 Depth=1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB16_274
.LBB16_284:                             #   in Loop: Header=BB16_275 Depth=1
	addi.d	$a1, $fp, 8
	addi.w	$a2, $zero, -1
	amadd_db.w	$a0, $a2, $a1
	addi.w	$a0, $a0, 0
	bne	$a0, $s2, .LBB16_280
.LBB16_285:                             #   in Loop: Header=BB16_275 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 1624
	addi.d	$a1, $s3, 1640
	bne	$a1, $a0, .LBB16_281
	b	.LBB16_282
.LBB16_286:
	ld.d	$a0, $sp, 320
	addi.d	$a1, $sp, 336
	beq	$a0, $a1, .LBB16_288
# %bb.287:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i352
	ld.d	$a1, $sp, 336
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_288:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i353
	ld.d	$a0, $sp, 352
	addi.d	$a1, $sp, 368
	beq	$a0, $a1, .LBB16_290
# %bb.289:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231.i354
	ld.d	$a1, $sp, 368
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_290:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233.i355
	ld.d	$a0, $sp, 384
	addi.d	$a1, $sp, 400
	beq	$a0, $a1, .LBB16_292
# %bb.291:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234.i356
	ld.d	$a1, $sp, 400
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_292:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236.i357
	ld.d	$a0, $sp, 416
	addi.d	$a1, $sp, 432
	beq	$a0, $a1, .LBB16_294
# %bb.293:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237.i358
	ld.d	$a1, $sp, 432
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_294:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239.i359
	ld.d	$a0, $sp, 448
	addi.d	$a1, $sp, 464
	beq	$a0, $a1, .LBB16_296
# %bb.295:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i240.i360
	ld.d	$a1, $sp, 464
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_296:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242.i361
	ld.d	$a0, $sp, 480
	addi.d	$a1, $sp, 496
	beq	$a0, $a1, .LBB16_298
# %bb.297:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i243.i362
	ld.d	$a1, $sp, 496
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_298:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245.i363
	ld.d	$a0, $sp, 512
	addi.d	$a1, $sp, 528
	beq	$a0, $a1, .LBB16_300
# %bb.299:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246.i364
	ld.d	$a1, $sp, 528
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_300:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248.i365
	ld.d	$a0, $sp, 544
	addi.d	$a1, $sp, 560
	beq	$a0, $a1, .LBB16_302
# %bb.301:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249.i366
	ld.d	$a1, $sp, 560
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_302:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251.i367
	ld.d	$a0, $sp, 576
	addi.d	$a1, $sp, 592
	beq	$a0, $a1, .LBB16_304
# %bb.303:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252.i368
	ld.d	$a1, $sp, 592
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_304:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254.i369
	ld.d	$a0, $sp, 608
	addi.d	$a1, $sp, 624
	beq	$a0, $a1, .LBB16_306
# %bb.305:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i255.i370
	ld.d	$a1, $sp, 624
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_306:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257.i371
	ld.d	$a0, $sp, 640
	addi.d	$a1, $sp, 656
	beq	$a0, $a1, .LBB16_308
# %bb.307:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i258.i372
	ld.d	$a1, $sp, 656
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_308:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260.i373
	ld.d	$a0, $sp, 672
	addi.d	$a1, $sp, 688
	beq	$a0, $a1, .LBB16_310
# %bb.309:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261.i374
	ld.d	$a1, $sp, 688
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_310:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263.i375
	ld.d	$a0, $sp, 704
	addi.d	$a1, $sp, 720
	beq	$a0, $a1, .LBB16_312
# %bb.311:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i264.i376
	ld.d	$a1, $sp, 720
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_312:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266.i377
	ld.d	$a0, $sp, 736
	addi.d	$a1, $sp, 752
	beq	$a0, $a1, .LBB16_314
# %bb.313:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i267.i378
	ld.d	$a1, $sp, 752
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_314:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269.i
	ori	$a0, $zero, 2440
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2456
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_316
# %bb.315:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i270.i379
	ori	$a1, $zero, 2456
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_316:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272.i380
	ori	$a0, $zero, 2472
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2488
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_318
# %bb.317:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273.i381
	ori	$a1, $zero, 2488
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_318:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275.i382
	ori	$a0, $zero, 2504
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2520
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_320
# %bb.319:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i276.i383
	ori	$a1, $zero, 2520
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_320:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit278.i384
	ori	$a0, $zero, 2536
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2552
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_322
# %bb.321:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i279.i385
	ori	$a1, $zero, 2552
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_322:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281.i386
	ori	$a0, $zero, 2568
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2584
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_324
# %bb.323:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i282.i387
	ori	$a1, $zero, 2584
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_324:                             # %__cxx_global_var_init.33.exit
	pcalau12i	$a0, %pc_hi20(dummy109)
	st.w	$s1, $a0, %pc_lo12(dummy109)
	ori	$a0, $zero, 2584
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2568
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 50
	ori	$a1, $zero, 2536
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 2568
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2536
	add.d	$a1, $sp, $a1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2536
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	ori	$a2, $zero, 2568
	add.d	$a2, $sp, $a2
	st.d	$a0, $a2, 0
	ori	$a2, $zero, 2584
	add.d	$a2, $sp, $a2
	st.d	$a1, $a2, 0
	pcalau12i	$a2, %pc_hi20(.L.str.40)
	addi.d	$a2, $a2, %pc_lo12(.L.str.40)
	vld	$vr0, $a2, 0
	vst	$vr0, $a0, 0
	vld	$vr0, $a2, 16
	vst	$vr0, $a0, 16
	vld	$vr0, $a2, 32
	ld.h	$a2, $a2, 48
	vst	$vr0, $a0, 32
	st.h	$a2, $a0, 48
	ori	$a2, $zero, 2576
	add.d	$a2, $sp, $a2
	st.d	$a1, $a2, 0
	stx.b	$zero, $a0, $a1
.Ltmp918:                               # EH_LABEL
	addi.d	$a0, $sp, 768
	ori	$a1, $zero, 2568
	add.d	$a1, $sp, $a1
	addi.d	$s0, $sp, 768
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp919:                               # EH_LABEL
# %bb.325:                              # %.noexc.i160.i420
	addi.d	$s0, $sp, 856
	ori	$a0, $zero, 2552
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2536
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 19
	ori	$a1, $zero, 2504
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
.Ltmp921:                               # EH_LABEL
	ori	$a0, $zero, 2536
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2504
	add.d	$a1, $sp, $a1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp922:                               # EH_LABEL
# %bb.326:                              # %.noexc161.i421
	ori	$a1, $zero, 2504
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	ld.d	$a2, $sp, 304                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	ori	$a2, $zero, 2536
	add.d	$a2, $sp, $a2
	st.d	$a0, $a2, 0
	ori	$a2, $zero, 2552
	add.d	$a2, $sp, $a2
	st.d	$a1, $a2, 0
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	st.w	$a2, $a0, 15
	ori	$a0, $zero, 2536
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a2, $zero, 2544
	add.d	$a2, $sp, $a2
	st.d	$a1, $a2, 0
	stx.b	$zero, $a0, $a1
.Ltmp924:                               # EH_LABEL
	ori	$a0, $zero, 2536
	add.d	$a1, $sp, $a0
	ori	$a2, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp925:                               # EH_LABEL
# %bb.327:                              # %.noexc.i164.i428
	addi.d	$fp, $sp, 944
	ori	$a0, $zero, 2520
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2504
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 32
	ori	$a1, $zero, 2472
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
.Ltmp927:                               # EH_LABEL
	ori	$a0, $zero, 2504
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2472
	add.d	$a1, $sp, $a1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp928:                               # EH_LABEL
# %bb.328:                              # %.noexc165.i429
	ori	$a1, $zero, 2472
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	ld.d	$a2, $sp, 296                   # 8-byte Folded Reload
	vld	$vr0, $a2, 16
	ori	$a3, $zero, 2504
	add.d	$a3, $sp, $a3
	st.d	$a0, $a3, 0
	ori	$a3, $zero, 2520
	add.d	$a3, $sp, $a3
	st.d	$a1, $a3, 0
	vst	$vr0, $a0, 16
	vld	$vr0, $a2, 0
	vst	$vr0, $a0, 0
	ori	$a0, $zero, 2504
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a2, $zero, 2512
	add.d	$a2, $sp, $a2
	st.d	$a1, $a2, 0
	stx.b	$zero, $a0, $a1
.Ltmp930:                               # EH_LABEL
	ori	$a0, $zero, 2504
	add.d	$a1, $sp, $a0
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp931:                               # EH_LABEL
# %bb.329:                              # %.noexc.i168.i436
	addi.d	$fp, $sp, 1032
	ori	$a0, $zero, 2488
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2472
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 47
	ori	$a1, $zero, 2440
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
.Ltmp933:                               # EH_LABEL
	ori	$a0, $zero, 2472
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2440
	add.d	$a1, $sp, $a1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp934:                               # EH_LABEL
# %bb.330:                              # %.noexc169.i437
	ori	$a1, $zero, 2440
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	ld.d	$a2, $sp, 288                   # 8-byte Folded Reload
	vld	$vr0, $a2, 16
	ori	$a3, $zero, 2472
	add.d	$a3, $sp, $a3
	st.d	$a0, $a3, 0
	ori	$a3, $zero, 2488
	add.d	$a3, $sp, $a3
	st.d	$a1, $a3, 0
	vst	$vr0, $a0, 16
	vld	$vr0, $a2, 0
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 280                   # 8-byte Folded Reload
	st.d	$a2, $a0, 32
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	st.d	$a2, $a0, 39
	ori	$a2, $zero, 2480
	add.d	$a2, $sp, $a2
	st.d	$a1, $a2, 0
	stx.b	$zero, $a0, $a1
.Ltmp936:                               # EH_LABEL
	ori	$a0, $zero, 2472
	add.d	$a1, $sp, $a0
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp937:                               # EH_LABEL
# %bb.331:                              # %.noexc.i172.i444
	addi.d	$fp, $sp, 1120
	ori	$a0, $zero, 2456
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2440
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 25
	st.d	$a0, $sp, 736
.Ltmp939:                               # EH_LABEL
	ori	$a0, $zero, 2440
	add.d	$a0, $sp, $a0
	addi.d	$a1, $sp, 736
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp940:                               # EH_LABEL
# %bb.332:                              # %.noexc173.i445
	ld.d	$a1, $sp, 736
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	ori	$a2, $zero, 2440
	add.d	$a2, $sp, $a2
	st.d	$a0, $a2, 0
	ori	$a2, $zero, 2456
	add.d	$a2, $sp, $a2
	st.d	$a1, $a2, 0
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	st.b	$a2, $a0, 24
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	st.d	$a2, $a0, 16
	ori	$a0, $zero, 2440
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a2, $zero, 2448
	add.d	$a2, $sp, $a2
	st.d	$a1, $a2, 0
	stx.b	$zero, $a0, $a1
.Ltmp942:                               # EH_LABEL
	ori	$a0, $zero, 2440
	add.d	$a1, $sp, $a0
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp943:                               # EH_LABEL
# %bb.333:                              # %.noexc.i176.i452
	addi.d	$fp, $sp, 1208
	addi.d	$a0, $sp, 752
	st.d	$a0, $sp, 736
	ori	$a0, $zero, 18
	st.d	$a0, $sp, 704
.Ltmp945:                               # EH_LABEL
	addi.d	$a0, $sp, 736
	addi.d	$a1, $sp, 704
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp946:                               # EH_LABEL
# %bb.334:                              # %.noexc177.i453
	ld.d	$a1, $sp, 704
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 736
	st.d	$a1, $sp, 752
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 264                   # 8-byte Folded Reload
	st.h	$a2, $a0, 16
	ld.d	$a0, $sp, 736
	st.d	$a1, $sp, 744
	stx.b	$zero, $a0, $a1
.Ltmp948:                               # EH_LABEL
	addi.d	$a1, $sp, 736
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp949:                               # EH_LABEL
# %bb.335:                              # %._crit_edge.i.i179.i460
	addi.d	$fp, $sp, 1296
	addi.d	$a0, $sp, 720
	st.d	$a0, $sp, 704
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	st.d	$a0, $sp, 720
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	st.d	$a0, $sp, 726
	ori	$a0, $zero, 14
	st.d	$a0, $sp, 712
	st.b	$zero, $sp, 734
.Ltmp951:                               # EH_LABEL
	addi.d	$a1, $sp, 704
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp952:                               # EH_LABEL
# %bb.336:                              # %.noexc.i184.i467
	addi.d	$fp, $sp, 1384
	addi.d	$a0, $sp, 688
	st.d	$a0, $sp, 672
	ori	$a0, $zero, 28
	st.d	$a0, $sp, 640
.Ltmp954:                               # EH_LABEL
	addi.d	$a0, $sp, 672
	addi.d	$a1, $sp, 640
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp955:                               # EH_LABEL
# %bb.337:                              # %.noexc185.i468
	ld.d	$a1, $sp, 640
	st.d	$a0, $sp, 672
	st.d	$a1, $sp, 688
	pcalau12i	$a2, %pc_hi20(.L.str.41)
	addi.d	$a2, $a2, %pc_lo12(.L.str.41)
	vld	$vr0, $a2, 0
	ld.w	$a3, $a2, 24
	ld.d	$a2, $a2, 16
	vst	$vr0, $a0, 0
	st.w	$a3, $a0, 24
	st.d	$a2, $a0, 16
	ld.d	$a0, $sp, 672
	st.d	$a1, $sp, 680
	stx.b	$zero, $a0, $a1
.Ltmp957:                               # EH_LABEL
	addi.d	$a1, $sp, 672
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp958:                               # EH_LABEL
# %bb.338:                              # %.noexc.i188.i475
	addi.d	$fp, $sp, 1472
	addi.d	$a0, $sp, 656
	st.d	$a0, $sp, 640
	ori	$a0, $zero, 26
	st.d	$a0, $sp, 608
.Ltmp960:                               # EH_LABEL
	addi.d	$a0, $sp, 640
	addi.d	$a1, $sp, 608
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp961:                               # EH_LABEL
# %bb.339:                              # %.noexc189.i476
	ld.d	$a1, $sp, 608
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 640
	st.d	$a1, $sp, 656
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	st.h	$a2, $a0, 24
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	st.d	$a2, $a0, 16
	ld.d	$a0, $sp, 640
	st.d	$a1, $sp, 648
	stx.b	$zero, $a0, $a1
.Ltmp963:                               # EH_LABEL
	addi.d	$a1, $sp, 640
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp964:                               # EH_LABEL
# %bb.340:                              # %.noexc.i192.i483
	addi.d	$fp, $sp, 1560
	addi.d	$a0, $sp, 624
	st.d	$a0, $sp, 608
	ori	$a0, $zero, 17
	st.d	$a0, $sp, 576
.Ltmp966:                               # EH_LABEL
	addi.d	$a0, $sp, 608
	addi.d	$a1, $sp, 576
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp967:                               # EH_LABEL
# %bb.341:                              # %.noexc193.i484
	ld.d	$a1, $sp, 576
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 608
	st.d	$a1, $sp, 624
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	st.b	$a2, $a0, 16
	ld.d	$a0, $sp, 608
	st.d	$a1, $sp, 616
	stx.b	$zero, $a0, $a1
.Ltmp969:                               # EH_LABEL
	addi.d	$a1, $sp, 608
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp970:                               # EH_LABEL
# %bb.342:                              # %.noexc.i196.i491
	addi.d	$fp, $sp, 1648
	addi.d	$a0, $sp, 592
	st.d	$a0, $sp, 576
	ori	$a0, $zero, 21
	st.d	$a0, $sp, 544
.Ltmp972:                               # EH_LABEL
	addi.d	$a0, $sp, 576
	addi.d	$a1, $sp, 544
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp973:                               # EH_LABEL
# %bb.343:                              # %.noexc197.i492
	ld.d	$a1, $sp, 544
	ld.d	$a2, $sp, 224                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 576
	st.d	$a1, $sp, 592
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	st.d	$a2, $a0, 13
	ld.d	$a0, $sp, 576
	st.d	$a1, $sp, 584
	stx.b	$zero, $a0, $a1
.Ltmp975:                               # EH_LABEL
	addi.d	$a1, $sp, 576
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp976:                               # EH_LABEL
# %bb.344:                              # %.noexc.i200.i499
	addi.d	$fp, $sp, 1736
	addi.d	$a0, $sp, 560
	st.d	$a0, $sp, 544
	ori	$a0, $zero, 20
	st.d	$a0, $sp, 512
.Ltmp978:                               # EH_LABEL
	addi.d	$a0, $sp, 544
	addi.d	$a1, $sp, 512
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp979:                               # EH_LABEL
# %bb.345:                              # %.noexc201.i500
	ld.d	$a1, $sp, 512
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 544
	st.d	$a1, $sp, 560
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	st.w	$a2, $a0, 16
	ld.d	$a0, $sp, 544
	st.d	$a1, $sp, 552
	stx.b	$zero, $a0, $a1
.Ltmp981:                               # EH_LABEL
	addi.d	$a1, $sp, 544
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp982:                               # EH_LABEL
# %bb.346:                              # %.noexc.i204.i507
	addi.d	$fp, $sp, 1824
	addi.d	$a0, $sp, 528
	st.d	$a0, $sp, 512
	ori	$a0, $zero, 19
	st.d	$a0, $sp, 480
.Ltmp984:                               # EH_LABEL
	addi.d	$a0, $sp, 512
	addi.d	$a1, $sp, 480
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp985:                               # EH_LABEL
# %bb.347:                              # %.noexc205.i508
	ld.d	$a1, $sp, 480
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 512
	st.d	$a1, $sp, 528
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	st.w	$a2, $a0, 15
	ld.d	$a0, $sp, 512
	st.d	$a1, $sp, 520
	stx.b	$zero, $a0, $a1
.Ltmp987:                               # EH_LABEL
	addi.d	$a1, $sp, 512
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp988:                               # EH_LABEL
# %bb.348:                              # %.noexc.i208.i515
	addi.d	$s5, $sp, 1912
	addi.d	$a0, $sp, 496
	st.d	$a0, $sp, 480
	ori	$a0, $zero, 42
	st.d	$a0, $sp, 448
.Ltmp990:                               # EH_LABEL
	addi.d	$a0, $sp, 480
	addi.d	$a1, $sp, 448
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp991:                               # EH_LABEL
# %bb.349:                              # %.noexc209.i516
	ld.d	$a1, $sp, 448
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	vld	$vr0, $a2, 16
	st.d	$a0, $sp, 480
	st.d	$a1, $sp, 496
	vst	$vr0, $a0, 16
	vld	$vr0, $a2, 0
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	st.d	$a2, $a0, 32
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	st.h	$a2, $a0, 40
	st.d	$a1, $sp, 488
	stx.b	$zero, $a0, $a1
.Ltmp993:                               # EH_LABEL
	addi.d	$a1, $sp, 480
	ori	$a2, $zero, 1
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp994:                               # EH_LABEL
# %bb.350:                              # %.noexc.i212.i523
	addi.d	$s6, $sp, 2000
	addi.d	$a0, $sp, 464
	st.d	$a0, $sp, 448
	ori	$a0, $zero, 39
	st.d	$a0, $sp, 416
.Ltmp996:                               # EH_LABEL
	addi.d	$a0, $sp, 448
	addi.d	$a1, $sp, 416
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp997:                               # EH_LABEL
# %bb.351:                              # %.noexc213.i524
	ld.d	$a1, $sp, 416
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	vld	$vr0, $a2, 16
	st.d	$a0, $sp, 448
	st.d	$a1, $sp, 464
	vst	$vr0, $a0, 16
	vld	$vr0, $a2, 0
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	st.d	$a2, $a0, 31
	st.d	$a1, $sp, 456
	stx.b	$zero, $a0, $a1
.Ltmp999:                               # EH_LABEL
	addi.d	$a1, $sp, 448
	ori	$a2, $zero, 1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp1000:                              # EH_LABEL
# %bb.352:                              # %.noexc.i216.i531
	ori	$a0, $zero, 2088
	add.d	$s7, $sp, $a0
	addi.d	$a0, $sp, 432
	st.d	$a0, $sp, 416
	ori	$a0, $zero, 39
	st.d	$a0, $sp, 384
.Ltmp1002:                              # EH_LABEL
	addi.d	$a0, $sp, 416
	addi.d	$a1, $sp, 384
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp1003:                              # EH_LABEL
# %bb.353:                              # %.noexc217.i532
	ld.d	$a1, $sp, 384
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	vld	$vr0, $a2, 16
	st.d	$a0, $sp, 416
	st.d	$a1, $sp, 432
	vst	$vr0, $a0, 16
	vld	$vr0, $a2, 0
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	st.d	$a2, $a0, 31
	st.d	$a1, $sp, 424
	stx.b	$zero, $a0, $a1
.Ltmp1005:                              # EH_LABEL
	addi.d	$a1, $sp, 416
	ori	$a2, $zero, 1
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp1006:                              # EH_LABEL
# %bb.354:                              # %.noexc.i220.i539
	ori	$a0, $zero, 2176
	add.d	$s8, $sp, $a0
	addi.d	$a0, $sp, 400
	st.d	$a0, $sp, 384
	ori	$a0, $zero, 45
	st.d	$a0, $sp, 352
.Ltmp1008:                              # EH_LABEL
	addi.d	$a0, $sp, 384
	addi.d	$a1, $sp, 352
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp1009:                              # EH_LABEL
# %bb.355:                              # %.noexc221.i540
	ld.d	$a1, $sp, 352
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	vld	$vr0, $a2, 16
	st.d	$a0, $sp, 384
	st.d	$a1, $sp, 400
	vst	$vr0, $a0, 16
	vld	$vr0, $a2, 0
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	st.d	$a2, $a0, 32
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	st.d	$a2, $a0, 37
	st.d	$a1, $sp, 392
	stx.b	$zero, $a0, $a1
.Ltmp1011:                              # EH_LABEL
	addi.d	$a1, $sp, 384
	ori	$a2, $zero, 1
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp1012:                              # EH_LABEL
# %bb.356:                              # %.noexc.i224.i547
	ori	$a0, $zero, 2264
	add.d	$fp, $sp, $a0
	addi.d	$a0, $sp, 368
	st.d	$a0, $sp, 352
	ori	$a0, $zero, 44
	st.d	$a0, $sp, 320
.Ltmp1014:                              # EH_LABEL
	addi.d	$a0, $sp, 352
	addi.d	$a1, $sp, 320
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp1015:                              # EH_LABEL
# %bb.357:                              # %.noexc225.i548
	ld.d	$a1, $sp, 320
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	vld	$vr0, $a2, 16
	st.d	$a0, $sp, 352
	st.d	$a1, $sp, 368
	vst	$vr0, $a0, 16
	vld	$vr0, $a2, 0
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	st.d	$a2, $a0, 32
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	st.w	$a2, $a0, 40
	st.d	$a1, $sp, 360
	stx.b	$zero, $a0, $a1
.Ltmp1017:                              # EH_LABEL
	addi.d	$a1, $sp, 352
	ori	$a2, $zero, 1
	ori	$s1, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp1018:                              # EH_LABEL
# %bb.358:                              # %._crit_edge.i.i227.i555
	ori	$a0, $zero, 2352
	add.d	$s2, $sp, $a0
	addi.d	$a0, $sp, 336
	st.d	$a0, $sp, 320
	ori	$a0, $zero, 125
	st.h	$a0, $sp, 336
	st.d	$s1, $sp, 328
.Ltmp1020:                              # EH_LABEL
	addi.d	$a1, $sp, 320
	ori	$a2, $zero, 1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp1021:                              # EH_LABEL
# %bb.359:
.Ltmp1023:                              # EH_LABEL
	ori	$a0, $zero, 2
	addi.d	$a1, $sp, 768
	ori	$a2, $zero, 19
	addi.d	$s4, $sp, 768
	pcaddu18i	$ra, %call36(_Z8AddCases10TestCaseIDSt16initializer_listI8TestCaseE)
	jirl	$ra, $ra, 0
.Ltmp1024:                              # EH_LABEL
# %bb.360:
	move	$s1, $a0
	move	$s0, $zero
	ori	$s2, $zero, 1
	ori	$s5, $zero, 1
	lu32i.d	$s5, 1
	b	.LBB16_362
	.p2align	4, , 16
.LBB16_361:                             # %_ZN8TestCaseD2Ev.exit.i571
                                        #   in Loop: Header=BB16_362 Depth=1
	addi.d	$s0, $s0, -88
	beq	$s0, $s3, .LBB16_373
.LBB16_362:                             # =>This Inner Loop Header: Depth=1
	add.d	$s6, $s4, $s0
	ld.d	$fp, $s6, 1664
	beqz	$fp, .LBB16_367
# %bb.363:                              #   in Loop: Header=BB16_362 Depth=1
	ld.d	$a0, $fp, 8
	dbar	20
	bne	$a0, $s5, .LBB16_365
# %bb.364:                              #   in Loop: Header=BB16_362 Depth=1
	ld.d	$a0, $fp, 0
	st.d	$zero, $fp, 8
	ld.d	$a1, $a0, 16
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.d	$a0, $s6, 1624
	addi.d	$a1, $s6, 1640
	bne	$a1, $a0, .LBB16_368
	b	.LBB16_369
	.p2align	4, , 16
.LBB16_365:                             #   in Loop: Header=BB16_362 Depth=1
	pcalau12i	$a1, %got_pc_hi20(__libc_single_threaded)
	ld.d	$a1, $a1, %got_pc_lo12(__libc_single_threaded)
	ld.bu	$a1, $a1, 0
	beqz	$a1, .LBB16_371
# %bb.366:                              #   in Loop: Header=BB16_362 Depth=1
	addi.d	$a1, $a0, -1
	st.w	$a1, $fp, 8
	addi.w	$a0, $a0, 0
	beq	$a0, $s2, .LBB16_372
	.p2align	4, , 16
.LBB16_367:                             # %_ZNSt12__shared_ptrIN9benchmark5RegexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i567
                                        #   in Loop: Header=BB16_362 Depth=1
	ld.d	$a0, $s6, 1624
	addi.d	$a1, $s6, 1640
	beq	$a1, $a0, .LBB16_369
.LBB16_368:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i568
                                        #   in Loop: Header=BB16_362 Depth=1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_369:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i569
                                        #   in Loop: Header=BB16_362 Depth=1
	ld.d	$a0, $s6, 1584
	addi.d	$a1, $s6, 1600
	beq	$a1, $a0, .LBB16_361
# %bb.370:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i570
                                        #   in Loop: Header=BB16_362 Depth=1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB16_361
.LBB16_371:                             #   in Loop: Header=BB16_362 Depth=1
	addi.d	$a1, $fp, 8
	addi.w	$a2, $zero, -1
	amadd_db.w	$a0, $a2, $a1
	addi.w	$a0, $a0, 0
	bne	$a0, $s2, .LBB16_367
.LBB16_372:                             #   in Loop: Header=BB16_362 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 1624
	addi.d	$a1, $s6, 1640
	bne	$a1, $a0, .LBB16_368
	b	.LBB16_369
.LBB16_373:
	ld.d	$a0, $sp, 320
	addi.d	$a1, $sp, 336
	beq	$a0, $a1, .LBB16_375
# %bb.374:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i572
	ld.d	$a1, $sp, 336
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_375:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i573
	ld.d	$a0, $sp, 352
	addi.d	$a1, $sp, 368
	beq	$a0, $a1, .LBB16_377
# %bb.376:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231.i574
	ld.d	$a1, $sp, 368
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_377:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233.i575
	ld.d	$a0, $sp, 384
	addi.d	$a1, $sp, 400
	beq	$a0, $a1, .LBB16_379
# %bb.378:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234.i576
	ld.d	$a1, $sp, 400
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_379:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236.i577
	ld.d	$a0, $sp, 416
	addi.d	$a1, $sp, 432
	beq	$a0, $a1, .LBB16_381
# %bb.380:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237.i578
	ld.d	$a1, $sp, 432
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_381:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239.i579
	ld.d	$a0, $sp, 448
	addi.d	$a1, $sp, 464
	beq	$a0, $a1, .LBB16_383
# %bb.382:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i240.i580
	ld.d	$a1, $sp, 464
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_383:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242.i581
	ld.d	$a0, $sp, 480
	addi.d	$a1, $sp, 496
	beq	$a0, $a1, .LBB16_385
# %bb.384:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i243.i582
	ld.d	$a1, $sp, 496
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_385:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245.i583
	ld.d	$a0, $sp, 512
	addi.d	$a1, $sp, 528
	beq	$a0, $a1, .LBB16_387
# %bb.386:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246.i584
	ld.d	$a1, $sp, 528
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_387:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248.i585
	ld.d	$a0, $sp, 544
	addi.d	$a1, $sp, 560
	beq	$a0, $a1, .LBB16_389
# %bb.388:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249.i586
	ld.d	$a1, $sp, 560
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_389:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251.i587
	ld.d	$a0, $sp, 576
	addi.d	$a1, $sp, 592
	beq	$a0, $a1, .LBB16_391
# %bb.390:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252.i588
	ld.d	$a1, $sp, 592
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_391:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254.i589
	ld.d	$a0, $sp, 608
	addi.d	$a1, $sp, 624
	beq	$a0, $a1, .LBB16_393
# %bb.392:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i255.i590
	ld.d	$a1, $sp, 624
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_393:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257.i591
	ld.d	$a0, $sp, 640
	addi.d	$a1, $sp, 656
	beq	$a0, $a1, .LBB16_395
# %bb.394:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i258.i592
	ld.d	$a1, $sp, 656
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_395:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260.i593
	ld.d	$a0, $sp, 672
	addi.d	$a1, $sp, 688
	beq	$a0, $a1, .LBB16_397
# %bb.396:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261.i594
	ld.d	$a1, $sp, 688
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_397:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263.i595
	ld.d	$a0, $sp, 704
	addi.d	$a1, $sp, 720
	beq	$a0, $a1, .LBB16_399
# %bb.398:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i264.i596
	ld.d	$a1, $sp, 720
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_399:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266.i597
	ld.d	$a0, $sp, 736
	addi.d	$a1, $sp, 752
	beq	$a0, $a1, .LBB16_401
# %bb.400:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i267.i598
	ld.d	$a1, $sp, 752
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_401:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269.i599
	ori	$a0, $zero, 2440
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2456
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_403
# %bb.402:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i270.i600
	ori	$a1, $zero, 2456
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_403:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272.i601
	ori	$a0, $zero, 2472
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2488
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_405
# %bb.404:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273.i602
	ori	$a1, $zero, 2488
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_405:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275.i603
	ori	$a0, $zero, 2504
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2520
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_407
# %bb.406:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i276.i604
	ori	$a1, $zero, 2520
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_407:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit278.i605
	ori	$a0, $zero, 2536
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2552
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_409
# %bb.408:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i279.i606
	ori	$a1, $zero, 2552
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_409:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281.i607
	ori	$a0, $zero, 2568
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2584
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_411
# %bb.410:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i282.i608
	ori	$a1, $zero, 2584
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_411:                             # %__cxx_global_var_init.39.exit
	pcalau12i	$a0, %pc_hi20(dummy129)
	st.w	$s1, $a0, %pc_lo12(dummy129)
	ori	$a0, $zero, 2584
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2568
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 50
	ori	$a1, $zero, 2536
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 2568
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2536
	add.d	$a1, $sp, $a1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2536
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	ori	$a2, $zero, 2568
	add.d	$a2, $sp, $a2
	st.d	$a0, $a2, 0
	ori	$a2, $zero, 2584
	add.d	$a2, $sp, $a2
	st.d	$a1, $a2, 0
	pcalau12i	$a2, %pc_hi20(.L.str.43)
	addi.d	$a2, $a2, %pc_lo12(.L.str.43)
	vld	$vr0, $a2, 0
	vst	$vr0, $a0, 0
	vld	$vr0, $a2, 16
	vst	$vr0, $a0, 16
	vld	$vr0, $a2, 32
	ld.h	$a2, $a2, 48
	vst	$vr0, $a0, 32
	st.h	$a2, $a0, 48
	ori	$a2, $zero, 2576
	add.d	$a2, $sp, $a2
	st.d	$a1, $a2, 0
	stx.b	$zero, $a0, $a1
.Ltmp1026:                              # EH_LABEL
	addi.d	$a0, $sp, 768
	ori	$a1, $zero, 2568
	add.d	$a1, $sp, $a1
	addi.d	$s0, $sp, 768
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp1027:                              # EH_LABEL
# %bb.412:                              # %.noexc.i160.i641
	addi.d	$s0, $sp, 856
	ori	$a0, $zero, 2552
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2536
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 19
	ori	$a1, $zero, 2504
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
.Ltmp1029:                              # EH_LABEL
	ori	$a0, $zero, 2536
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2504
	add.d	$a1, $sp, $a1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp1030:                              # EH_LABEL
# %bb.413:                              # %.noexc161.i642
	ori	$a1, $zero, 2504
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	ld.d	$a2, $sp, 304                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	ori	$a2, $zero, 2536
	add.d	$a2, $sp, $a2
	st.d	$a0, $a2, 0
	ori	$a2, $zero, 2552
	add.d	$a2, $sp, $a2
	st.d	$a1, $a2, 0
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	st.w	$a2, $a0, 15
	ori	$a0, $zero, 2536
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a2, $zero, 2544
	add.d	$a2, $sp, $a2
	st.d	$a1, $a2, 0
	stx.b	$zero, $a0, $a1
.Ltmp1032:                              # EH_LABEL
	ori	$a0, $zero, 2536
	add.d	$a1, $sp, $a0
	ori	$a2, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp1033:                              # EH_LABEL
# %bb.414:                              # %.noexc.i164.i649
	addi.d	$s1, $sp, 944
	ori	$a0, $zero, 2520
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2504
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 32
	ori	$a1, $zero, 2472
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
.Ltmp1035:                              # EH_LABEL
	ori	$a0, $zero, 2504
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2472
	add.d	$a1, $sp, $a1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp1036:                              # EH_LABEL
# %bb.415:                              # %.noexc165.i650
	ori	$a1, $zero, 2472
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	ld.d	$a2, $sp, 296                   # 8-byte Folded Reload
	vld	$vr0, $a2, 16
	ori	$a3, $zero, 2504
	add.d	$a3, $sp, $a3
	st.d	$a0, $a3, 0
	ori	$a3, $zero, 2520
	add.d	$a3, $sp, $a3
	st.d	$a1, $a3, 0
	vst	$vr0, $a0, 16
	vld	$vr0, $a2, 0
	vst	$vr0, $a0, 0
	ori	$a0, $zero, 2504
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a2, $zero, 2512
	add.d	$a2, $sp, $a2
	st.d	$a1, $a2, 0
	stx.b	$zero, $a0, $a1
.Ltmp1038:                              # EH_LABEL
	ori	$a0, $zero, 2504
	add.d	$a1, $sp, $a0
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp1039:                              # EH_LABEL
# %bb.416:                              # %.noexc.i168.i657
	addi.d	$s1, $sp, 1032
	ori	$a0, $zero, 2488
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2472
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 47
	ori	$a1, $zero, 2440
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
.Ltmp1041:                              # EH_LABEL
	ori	$a0, $zero, 2472
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2440
	add.d	$a1, $sp, $a1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp1042:                              # EH_LABEL
# %bb.417:                              # %.noexc169.i658
	ori	$a1, $zero, 2440
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	ld.d	$a2, $sp, 288                   # 8-byte Folded Reload
	vld	$vr0, $a2, 16
	ori	$a3, $zero, 2472
	add.d	$a3, $sp, $a3
	st.d	$a0, $a3, 0
	ori	$a3, $zero, 2488
	add.d	$a3, $sp, $a3
	st.d	$a1, $a3, 0
	vst	$vr0, $a0, 16
	vld	$vr0, $a2, 0
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 280                   # 8-byte Folded Reload
	st.d	$a2, $a0, 32
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	st.d	$a2, $a0, 39
	ori	$a2, $zero, 2480
	add.d	$a2, $sp, $a2
	st.d	$a1, $a2, 0
	stx.b	$zero, $a0, $a1
.Ltmp1044:                              # EH_LABEL
	ori	$a0, $zero, 2472
	add.d	$a1, $sp, $a0
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp1045:                              # EH_LABEL
# %bb.418:                              # %.noexc.i172.i665
	addi.d	$s1, $sp, 1120
	ori	$a0, $zero, 2456
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2440
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 25
	st.d	$a0, $sp, 736
.Ltmp1047:                              # EH_LABEL
	ori	$a0, $zero, 2440
	add.d	$a0, $sp, $a0
	addi.d	$a1, $sp, 736
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp1048:                              # EH_LABEL
# %bb.419:                              # %.noexc173.i666
	ld.d	$a1, $sp, 736
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	ori	$a2, $zero, 2440
	add.d	$a2, $sp, $a2
	st.d	$a0, $a2, 0
	ori	$a2, $zero, 2456
	add.d	$a2, $sp, $a2
	st.d	$a1, $a2, 0
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	st.b	$a2, $a0, 24
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	st.d	$a2, $a0, 16
	ori	$a0, $zero, 2440
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a2, $zero, 2448
	add.d	$a2, $sp, $a2
	st.d	$a1, $a2, 0
	stx.b	$zero, $a0, $a1
.Ltmp1050:                              # EH_LABEL
	ori	$a0, $zero, 2440
	add.d	$a1, $sp, $a0
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp1051:                              # EH_LABEL
# %bb.420:                              # %.noexc.i176.i673
	addi.d	$s1, $sp, 1208
	addi.d	$a0, $sp, 752
	st.d	$a0, $sp, 736
	ori	$a0, $zero, 18
	st.d	$a0, $sp, 704
.Ltmp1053:                              # EH_LABEL
	addi.d	$a0, $sp, 736
	addi.d	$a1, $sp, 704
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp1054:                              # EH_LABEL
# %bb.421:                              # %.noexc177.i674
	ld.d	$a1, $sp, 704
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 736
	st.d	$a1, $sp, 752
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 264                   # 8-byte Folded Reload
	st.h	$a2, $a0, 16
	ld.d	$a0, $sp, 736
	st.d	$a1, $sp, 744
	stx.b	$zero, $a0, $a1
.Ltmp1056:                              # EH_LABEL
	addi.d	$a1, $sp, 736
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp1057:                              # EH_LABEL
# %bb.422:                              # %._crit_edge.i.i179.i681
	addi.d	$fp, $sp, 1296
	addi.d	$a0, $sp, 720
	st.d	$a0, $sp, 704
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	st.d	$a0, $sp, 720
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	st.d	$a0, $sp, 726
	ori	$a0, $zero, 14
	st.d	$a0, $sp, 712
	st.b	$zero, $sp, 734
.Ltmp1059:                              # EH_LABEL
	addi.d	$a1, $sp, 704
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp1060:                              # EH_LABEL
# %bb.423:                              # %.noexc.i184.i688
	addi.d	$s1, $sp, 1384
	addi.d	$a0, $sp, 688
	st.d	$a0, $sp, 672
	ori	$a0, $zero, 28
	st.d	$a0, $sp, 640
.Ltmp1062:                              # EH_LABEL
	addi.d	$a0, $sp, 672
	addi.d	$a1, $sp, 640
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp1063:                              # EH_LABEL
# %bb.424:                              # %.noexc185.i689
	ld.d	$a1, $sp, 640
	st.d	$a0, $sp, 672
	st.d	$a1, $sp, 688
	pcalau12i	$a2, %pc_hi20(.L.str.44)
	addi.d	$a2, $a2, %pc_lo12(.L.str.44)
	vld	$vr0, $a2, 0
	ld.w	$a3, $a2, 24
	ld.d	$a2, $a2, 16
	vst	$vr0, $a0, 0
	st.w	$a3, $a0, 24
	st.d	$a2, $a0, 16
	ld.d	$a0, $sp, 672
	st.d	$a1, $sp, 680
	stx.b	$zero, $a0, $a1
.Ltmp1065:                              # EH_LABEL
	addi.d	$a1, $sp, 672
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp1066:                              # EH_LABEL
# %bb.425:                              # %.noexc.i188.i696
	addi.d	$s1, $sp, 1472
	addi.d	$a0, $sp, 656
	st.d	$a0, $sp, 640
	ori	$a0, $zero, 26
	st.d	$a0, $sp, 608
.Ltmp1068:                              # EH_LABEL
	addi.d	$a0, $sp, 640
	addi.d	$a1, $sp, 608
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp1069:                              # EH_LABEL
# %bb.426:                              # %.noexc189.i697
	ld.d	$a1, $sp, 608
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 640
	st.d	$a1, $sp, 656
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	st.h	$a2, $a0, 24
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	st.d	$a2, $a0, 16
	ld.d	$a0, $sp, 640
	st.d	$a1, $sp, 648
	stx.b	$zero, $a0, $a1
.Ltmp1071:                              # EH_LABEL
	addi.d	$a1, $sp, 640
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp1072:                              # EH_LABEL
# %bb.427:                              # %.noexc.i192.i704
	addi.d	$s1, $sp, 1560
	addi.d	$a0, $sp, 624
	st.d	$a0, $sp, 608
	ori	$a0, $zero, 17
	st.d	$a0, $sp, 576
.Ltmp1074:                              # EH_LABEL
	addi.d	$a0, $sp, 608
	addi.d	$a1, $sp, 576
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp1075:                              # EH_LABEL
# %bb.428:                              # %.noexc193.i705
	ld.d	$a1, $sp, 576
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 608
	st.d	$a1, $sp, 624
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	st.b	$a2, $a0, 16
	ld.d	$a0, $sp, 608
	st.d	$a1, $sp, 616
	stx.b	$zero, $a0, $a1
.Ltmp1077:                              # EH_LABEL
	addi.d	$a1, $sp, 608
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp1078:                              # EH_LABEL
# %bb.429:                              # %.noexc.i196.i712
	addi.d	$s1, $sp, 1648
	addi.d	$a0, $sp, 592
	st.d	$a0, $sp, 576
	ori	$a0, $zero, 21
	st.d	$a0, $sp, 544
.Ltmp1080:                              # EH_LABEL
	addi.d	$a0, $sp, 576
	addi.d	$a1, $sp, 544
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp1081:                              # EH_LABEL
# %bb.430:                              # %.noexc197.i713
	ld.d	$a1, $sp, 544
	ld.d	$a2, $sp, 224                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 576
	st.d	$a1, $sp, 592
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	st.d	$a2, $a0, 13
	ld.d	$a0, $sp, 576
	st.d	$a1, $sp, 584
	stx.b	$zero, $a0, $a1
.Ltmp1083:                              # EH_LABEL
	addi.d	$a1, $sp, 576
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp1084:                              # EH_LABEL
# %bb.431:                              # %.noexc.i200.i720
	addi.d	$s1, $sp, 1736
	addi.d	$a0, $sp, 560
	st.d	$a0, $sp, 544
	ori	$a0, $zero, 20
	st.d	$a0, $sp, 512
.Ltmp1086:                              # EH_LABEL
	addi.d	$a0, $sp, 544
	addi.d	$a1, $sp, 512
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp1087:                              # EH_LABEL
# %bb.432:                              # %.noexc201.i721
	ld.d	$a1, $sp, 512
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 544
	st.d	$a1, $sp, 560
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	st.w	$a2, $a0, 16
	ld.d	$a0, $sp, 544
	st.d	$a1, $sp, 552
	stx.b	$zero, $a0, $a1
.Ltmp1089:                              # EH_LABEL
	addi.d	$a1, $sp, 544
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp1090:                              # EH_LABEL
# %bb.433:                              # %.noexc.i204.i728
	addi.d	$s1, $sp, 1824
	addi.d	$a0, $sp, 528
	st.d	$a0, $sp, 512
	ori	$a0, $zero, 19
	st.d	$a0, $sp, 480
.Ltmp1092:                              # EH_LABEL
	addi.d	$a0, $sp, 512
	addi.d	$a1, $sp, 480
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp1093:                              # EH_LABEL
# %bb.434:                              # %.noexc205.i729
	ld.d	$a1, $sp, 480
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	st.d	$a0, $sp, 512
	st.d	$a1, $sp, 528
	vst	$vr0, $a0, 0
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	st.w	$a2, $a0, 15
	ld.d	$a0, $sp, 512
	st.d	$a1, $sp, 520
	stx.b	$zero, $a0, $a1
.Ltmp1095:                              # EH_LABEL
	addi.d	$a1, $sp, 512
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp1096:                              # EH_LABEL
# %bb.435:                              # %.noexc.i208.i736
	addi.d	$s4, $sp, 1912
	addi.d	$a0, $sp, 496
	st.d	$a0, $sp, 480
	ori	$a0, $zero, 41
	st.d	$a0, $sp, 448
.Ltmp1098:                              # EH_LABEL
	addi.d	$a0, $sp, 480
	addi.d	$a1, $sp, 448
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp1099:                              # EH_LABEL
# %bb.436:                              # %.noexc209.i737
	ld.d	$a1, $sp, 448
	st.d	$a0, $sp, 480
	st.d	$a1, $sp, 496
	pcalau12i	$a2, %pc_hi20(.L.str.45)
	addi.d	$a2, $a2, %pc_lo12(.L.str.45)
	vld	$vr0, $a2, 16
	vst	$vr0, $a0, 16
	vld	$vr0, $a2, 0
	ld.d	$a3, $a2, 32
	ld.b	$a2, $a2, 40
	vst	$vr0, $a0, 0
	st.d	$a3, $a0, 32
	st.b	$a2, $a0, 40
	st.d	$a1, $sp, 488
	stx.b	$zero, $a0, $a1
.Ltmp1101:                              # EH_LABEL
	addi.d	$a1, $sp, 480
	ori	$a2, $zero, 1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp1102:                              # EH_LABEL
# %bb.437:                              # %.noexc.i212.i744
	addi.d	$s5, $sp, 2000
	addi.d	$a0, $sp, 464
	st.d	$a0, $sp, 448
	ori	$a0, $zero, 38
	st.d	$a0, $sp, 416
.Ltmp1104:                              # EH_LABEL
	addi.d	$a0, $sp, 448
	addi.d	$a1, $sp, 416
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp1105:                              # EH_LABEL
# %bb.438:                              # %.noexc213.i745
	ld.d	$a1, $sp, 416
	st.d	$a0, $sp, 448
	st.d	$a1, $sp, 464
	pcalau12i	$a2, %pc_hi20(.L.str.46)
	addi.d	$a2, $a2, %pc_lo12(.L.str.46)
	vld	$vr0, $a2, 16
	vst	$vr0, $a0, 16
	vld	$vr0, $a2, 0
	ld.d	$a2, $a2, 30
	vst	$vr0, $a0, 0
	st.d	$a2, $a0, 30
	st.d	$a1, $sp, 456
	stx.b	$zero, $a0, $a1
.Ltmp1107:                              # EH_LABEL
	addi.d	$a1, $sp, 448
	ori	$a2, $zero, 1
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp1108:                              # EH_LABEL
# %bb.439:                              # %.noexc.i216.i752
	ori	$a0, $zero, 2088
	add.d	$s6, $sp, $a0
	addi.d	$a0, $sp, 432
	st.d	$a0, $sp, 416
	ori	$a0, $zero, 38
	st.d	$a0, $sp, 384
.Ltmp1110:                              # EH_LABEL
	addi.d	$a0, $sp, 416
	addi.d	$a1, $sp, 384
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp1111:                              # EH_LABEL
# %bb.440:                              # %.noexc217.i753
	ld.d	$a1, $sp, 384
	st.d	$a0, $sp, 416
	st.d	$a1, $sp, 432
	pcalau12i	$a2, %pc_hi20(.L.str.47)
	addi.d	$a2, $a2, %pc_lo12(.L.str.47)
	vld	$vr0, $a2, 16
	vst	$vr0, $a0, 16
	vld	$vr0, $a2, 0
	ld.d	$a2, $a2, 30
	vst	$vr0, $a0, 0
	st.d	$a2, $a0, 30
	st.d	$a1, $sp, 424
	stx.b	$zero, $a0, $a1
.Ltmp1113:                              # EH_LABEL
	addi.d	$a1, $sp, 416
	ori	$a2, $zero, 1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp1114:                              # EH_LABEL
# %bb.441:                              # %.noexc.i220.i760
	ori	$a0, $zero, 2176
	add.d	$s7, $sp, $a0
	addi.d	$a0, $sp, 400
	st.d	$a0, $sp, 384
	ori	$a0, $zero, 38
	st.d	$a0, $sp, 352
.Ltmp1116:                              # EH_LABEL
	addi.d	$a0, $sp, 384
	addi.d	$a1, $sp, 352
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp1117:                              # EH_LABEL
# %bb.442:                              # %.noexc221.i761
	ld.d	$a1, $sp, 352
	st.d	$a0, $sp, 384
	st.d	$a1, $sp, 400
	pcalau12i	$a2, %pc_hi20(.L.str.48)
	addi.d	$a2, $a2, %pc_lo12(.L.str.48)
	vld	$vr0, $a2, 16
	vst	$vr0, $a0, 16
	vld	$vr0, $a2, 0
	ld.d	$a2, $a2, 30
	vst	$vr0, $a0, 0
	st.d	$a2, $a0, 30
	st.d	$a1, $sp, 392
	stx.b	$zero, $a0, $a1
.Ltmp1119:                              # EH_LABEL
	addi.d	$a1, $sp, 384
	ori	$a2, $zero, 1
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp1120:                              # EH_LABEL
# %bb.443:                              # %.noexc.i224.i768
	ori	$a0, $zero, 2264
	add.d	$s8, $sp, $a0
	addi.d	$a0, $sp, 368
	st.d	$a0, $sp, 352
	ori	$a0, $zero, 37
	st.d	$a0, $sp, 320
.Ltmp1122:                              # EH_LABEL
	addi.d	$a0, $sp, 352
	addi.d	$a1, $sp, 320
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp1123:                              # EH_LABEL
# %bb.444:                              # %.noexc225.i769
	ld.d	$a1, $sp, 320
	st.d	$a0, $sp, 352
	st.d	$a1, $sp, 368
	pcalau12i	$a2, %pc_hi20(.L.str.49)
	addi.d	$a2, $a2, %pc_lo12(.L.str.49)
	vld	$vr0, $a2, 16
	vst	$vr0, $a0, 16
	vld	$vr0, $a2, 0
	ld.d	$a2, $a2, 29
	vst	$vr0, $a0, 0
	st.d	$a2, $a0, 29
	st.d	$a1, $sp, 360
	stx.b	$zero, $a0, $a1
.Ltmp1125:                              # EH_LABEL
	addi.d	$a1, $sp, 352
	ori	$a2, $zero, 1
	ori	$fp, $zero, 1
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp1126:                              # EH_LABEL
# %bb.445:                              # %._crit_edge.i.i227.i776
	ori	$a0, $zero, 2352
	add.d	$s1, $sp, $a0
	addi.d	$a0, $sp, 336
	st.d	$a0, $sp, 320
	ori	$a0, $zero, 125
	st.h	$a0, $sp, 336
	st.d	$fp, $sp, 328
.Ltmp1128:                              # EH_LABEL
	addi.d	$a1, $sp, 320
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp1129:                              # EH_LABEL
# %bb.446:
.Ltmp1131:                              # EH_LABEL
	ori	$a0, $zero, 2
	addi.d	$a1, $sp, 768
	ori	$a2, $zero, 19
	addi.d	$s2, $sp, 768
	pcaddu18i	$ra, %call36(_Z8AddCases10TestCaseIDSt16initializer_listI8TestCaseE)
	jirl	$ra, $ra, 0
.Ltmp1132:                              # EH_LABEL
# %bb.447:
	move	$fp, $a0
	move	$s1, $zero
	ori	$s4, $zero, 1
	ori	$s5, $zero, 1
	lu32i.d	$s5, 1
	b	.LBB16_449
	.p2align	4, , 16
.LBB16_448:                             # %_ZN8TestCaseD2Ev.exit.i792
                                        #   in Loop: Header=BB16_449 Depth=1
	addi.d	$s1, $s1, -88
	beq	$s1, $s3, .LBB16_460
.LBB16_449:                             # =>This Inner Loop Header: Depth=1
	add.d	$s6, $s2, $s1
	ld.d	$s0, $s6, 1664
	beqz	$s0, .LBB16_454
# %bb.450:                              #   in Loop: Header=BB16_449 Depth=1
	ld.d	$a0, $s0, 8
	dbar	20
	bne	$a0, $s5, .LBB16_452
# %bb.451:                              #   in Loop: Header=BB16_449 Depth=1
	ld.d	$a0, $s0, 0
	st.d	$zero, $s0, 8
	ld.d	$a1, $a0, 16
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 24
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $s6, 1624
	addi.d	$a1, $s6, 1640
	bne	$a1, $a0, .LBB16_455
	b	.LBB16_456
	.p2align	4, , 16
.LBB16_452:                             #   in Loop: Header=BB16_449 Depth=1
	pcalau12i	$a1, %got_pc_hi20(__libc_single_threaded)
	ld.d	$a1, $a1, %got_pc_lo12(__libc_single_threaded)
	ld.bu	$a1, $a1, 0
	beqz	$a1, .LBB16_458
# %bb.453:                              #   in Loop: Header=BB16_449 Depth=1
	addi.d	$a1, $a0, -1
	st.w	$a1, $s0, 8
	addi.w	$a0, $a0, 0
	beq	$a0, $s4, .LBB16_459
	.p2align	4, , 16
.LBB16_454:                             # %_ZNSt12__shared_ptrIN9benchmark5RegexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i788
                                        #   in Loop: Header=BB16_449 Depth=1
	ld.d	$a0, $s6, 1624
	addi.d	$a1, $s6, 1640
	beq	$a1, $a0, .LBB16_456
.LBB16_455:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i789
                                        #   in Loop: Header=BB16_449 Depth=1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_456:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i790
                                        #   in Loop: Header=BB16_449 Depth=1
	ld.d	$a0, $s6, 1584
	addi.d	$a1, $s6, 1600
	beq	$a1, $a0, .LBB16_448
# %bb.457:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i791
                                        #   in Loop: Header=BB16_449 Depth=1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB16_448
.LBB16_458:                             #   in Loop: Header=BB16_449 Depth=1
	addi.d	$a1, $s0, 8
	addi.w	$a2, $zero, -1
	amadd_db.w	$a0, $a2, $a1
	addi.w	$a0, $a0, 0
	bne	$a0, $s4, .LBB16_454
.LBB16_459:                             #   in Loop: Header=BB16_449 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 1624
	addi.d	$a1, $s6, 1640
	bne	$a1, $a0, .LBB16_455
	b	.LBB16_456
.LBB16_460:
	ld.d	$a0, $sp, 320
	addi.d	$a1, $sp, 336
	beq	$a0, $a1, .LBB16_462
# %bb.461:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i793
	ld.d	$a1, $sp, 336
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_462:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i794
	ld.d	$a0, $sp, 352
	addi.d	$s4, $sp, 784
	addi.d	$a1, $sp, 368
	beq	$a0, $a1, .LBB16_464
# %bb.463:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231.i795
	ld.d	$a1, $sp, 368
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_464:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233.i796
	ld.d	$a0, $sp, 384
	addi.d	$a1, $sp, 400
	beq	$a0, $a1, .LBB16_466
# %bb.465:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234.i797
	ld.d	$a1, $sp, 400
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_466:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236.i798
	ld.d	$a0, $sp, 416
	addi.d	$a1, $sp, 432
	beq	$a0, $a1, .LBB16_468
# %bb.467:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237.i799
	ld.d	$a1, $sp, 432
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_468:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239.i800
	ld.d	$a0, $sp, 448
	addi.d	$a1, $sp, 464
	beq	$a0, $a1, .LBB16_470
# %bb.469:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i240.i801
	ld.d	$a1, $sp, 464
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_470:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242.i802
	ld.d	$a0, $sp, 480
	addi.d	$a1, $sp, 496
	beq	$a0, $a1, .LBB16_472
# %bb.471:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i243.i803
	ld.d	$a1, $sp, 496
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_472:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245.i804
	ld.d	$a0, $sp, 512
	addi.d	$a1, $sp, 528
	beq	$a0, $a1, .LBB16_474
# %bb.473:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246.i805
	ld.d	$a1, $sp, 528
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_474:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248.i806
	ld.d	$a0, $sp, 544
	addi.d	$a1, $sp, 560
	beq	$a0, $a1, .LBB16_476
# %bb.475:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i249.i807
	ld.d	$a1, $sp, 560
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_476:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251.i808
	ld.d	$a0, $sp, 576
	addi.d	$a1, $sp, 592
	beq	$a0, $a1, .LBB16_478
# %bb.477:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252.i809
	ld.d	$a1, $sp, 592
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_478:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254.i810
	ld.d	$a0, $sp, 608
	addi.d	$a1, $sp, 624
	beq	$a0, $a1, .LBB16_480
# %bb.479:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i255.i811
	ld.d	$a1, $sp, 624
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_480:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257.i812
	ld.d	$a0, $sp, 640
	addi.d	$a1, $sp, 656
	beq	$a0, $a1, .LBB16_482
# %bb.481:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i258.i813
	ld.d	$a1, $sp, 656
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_482:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260.i814
	ld.d	$a0, $sp, 672
	addi.d	$a1, $sp, 688
	beq	$a0, $a1, .LBB16_484
# %bb.483:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261.i815
	ld.d	$a1, $sp, 688
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_484:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263.i816
	ld.d	$a0, $sp, 704
	addi.d	$a1, $sp, 720
	beq	$a0, $a1, .LBB16_486
# %bb.485:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i264.i817
	ld.d	$a1, $sp, 720
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_486:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266.i818
	ld.d	$a0, $sp, 736
	addi.d	$a1, $sp, 752
	beq	$a0, $a1, .LBB16_488
# %bb.487:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i267.i819
	ld.d	$a1, $sp, 752
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_488:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269.i820
	ori	$a0, $zero, 2440
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2456
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_490
# %bb.489:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i270.i821
	ori	$a1, $zero, 2456
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_490:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272.i822
	ori	$a0, $zero, 2472
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2488
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_492
# %bb.491:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273.i823
	ori	$a1, $zero, 2488
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_492:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275.i824
	ori	$a0, $zero, 2504
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2520
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_494
# %bb.493:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i276.i825
	ori	$a1, $zero, 2520
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_494:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit278.i826
	ori	$a0, $zero, 2536
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2552
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_496
# %bb.495:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i279.i827
	ori	$a1, $zero, 2552
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_496:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281.i828
	ori	$a0, $zero, 2568
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2584
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_498
# %bb.497:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i282.i829
	ori	$a1, $zero, 2584
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_498:                             # %__cxx_global_var_init.42.exit
	pcalau12i	$a0, %pc_hi20(dummy149)
	st.w	$fp, $a0, %pc_lo12(dummy149)
	ori	$a0, $zero, 2584
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2568
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	ori	$s1, $zero, 111
	ori	$a0, $zero, 2536
	add.d	$a0, $sp, $a0
	st.d	$s1, $a0, 0
	ori	$a0, $zero, 2568
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2536
	add.d	$a1, $sp, $a1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2536
	add.d	$a1, $sp, $a1
	ld.d	$s0, $a1, 0
	move	$fp, $a0
	ori	$a1, $zero, 2568
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 2584
	add.d	$a0, $sp, $a0
	st.d	$s0, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a1, $a0, %pc_lo12(.L.str.51)
	ori	$a2, $zero, 111
	move	$a0, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2576
	add.d	$a0, $sp, $a0
	st.d	$s0, $a0, 0
	stx.b	$zero, $fp, $s0
.Ltmp1134:                              # EH_LABEL
	addi.d	$a0, $sp, 768
	ori	$a1, $zero, 2568
	add.d	$a1, $sp, $a1
	addi.d	$s0, $sp, 768
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp1135:                              # EH_LABEL
# %bb.499:                              # %.noexc.i43.i862
	addi.d	$s0, $sp, 856
	ori	$a0, $zero, 2552
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2536
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 2504
	add.d	$a0, $sp, $a0
	st.d	$s1, $a0, 0
.Ltmp1137:                              # EH_LABEL
	ori	$a0, $zero, 2536
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2504
	add.d	$a1, $sp, $a1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp1138:                              # EH_LABEL
# %bb.500:                              # %.noexc44.i863
	move	$fp, $a0
	ori	$a0, $zero, 2504
	add.d	$a0, $sp, $a0
	ld.d	$s1, $a0, 0
	ori	$a0, $zero, 2536
	add.d	$a0, $sp, $a0
	st.d	$fp, $a0, 0
	ori	$a0, $zero, 2552
	add.d	$a0, $sp, $a0
	st.d	$s1, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a1, $a0, %pc_lo12(.L.str.51)
	ori	$a2, $zero, 111
	move	$a0, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2544
	add.d	$a0, $sp, $a0
	st.d	$s1, $a0, 0
	stx.b	$zero, $fp, $s1
.Ltmp1140:                              # EH_LABEL
	ori	$a0, $zero, 2536
	add.d	$a1, $sp, $a0
	move	$a0, $s0
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp1141:                              # EH_LABEL
# %bb.501:                              # %.noexc.i47.i870
	addi.d	$s1, $sp, 944
	ori	$a0, $zero, 2520
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2504
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 116
	ori	$a1, $zero, 2472
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
.Ltmp1143:                              # EH_LABEL
	ori	$a0, $zero, 2504
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2472
	add.d	$a1, $sp, $a1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp1144:                              # EH_LABEL
# %bb.502:                              # %.noexc48.i871
	move	$fp, $a0
	ori	$a0, $zero, 2472
	add.d	$a0, $sp, $a0
	ld.d	$s2, $a0, 0
	ori	$a0, $zero, 2504
	add.d	$a0, $sp, $a0
	st.d	$fp, $a0, 0
	ori	$a0, $zero, 2520
	add.d	$a0, $sp, $a0
	st.d	$s2, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$a1, $a0, %pc_lo12(.L.str.52)
	ori	$a2, $zero, 116
	move	$a0, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2512
	add.d	$a0, $sp, $a0
	st.d	$s2, $a0, 0
	stx.b	$zero, $fp, $s2
.Ltmp1146:                              # EH_LABEL
	ori	$a0, $zero, 2504
	add.d	$a1, $sp, $a0
	move	$a0, $s1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp1147:                              # EH_LABEL
# %bb.503:                              # %.noexc.i51.i878
	addi.d	$s2, $sp, 1032
	ori	$a0, $zero, 2488
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2472
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 118
	ori	$a1, $zero, 2440
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
.Ltmp1149:                              # EH_LABEL
	ori	$a0, $zero, 2472
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2440
	add.d	$a1, $sp, $a1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp1150:                              # EH_LABEL
# %bb.504:                              # %.noexc52.i879
	move	$fp, $a0
	ori	$a0, $zero, 2440
	add.d	$a0, $sp, $a0
	ld.d	$s3, $a0, 0
	ori	$a0, $zero, 2472
	add.d	$a0, $sp, $a0
	st.d	$fp, $a0, 0
	ori	$a0, $zero, 2488
	add.d	$a0, $sp, $a0
	st.d	$s3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a1, $a0, %pc_lo12(.L.str.53)
	ori	$a2, $zero, 118
	move	$a0, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2480
	add.d	$a0, $sp, $a0
	st.d	$s3, $a0, 0
	stx.b	$zero, $fp, $s3
.Ltmp1152:                              # EH_LABEL
	ori	$a0, $zero, 2472
	add.d	$a1, $sp, $a0
	move	$a0, $s2
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp1153:                              # EH_LABEL
# %bb.505:                              # %.noexc.i55.i886
	addi.d	$s3, $sp, 1120
	ori	$a0, $zero, 2456
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2440
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 64
	st.d	$a0, $sp, 736
.Ltmp1155:                              # EH_LABEL
	ori	$a0, $zero, 2440
	add.d	$a0, $sp, $a0
	addi.d	$a1, $sp, 736
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp1156:                              # EH_LABEL
# %bb.506:                              # %.noexc56.i887
	ld.d	$a1, $sp, 736
	ori	$a2, $zero, 2440
	add.d	$a2, $sp, $a2
	st.d	$a0, $a2, 0
	ori	$a2, $zero, 2456
	add.d	$a2, $sp, $a2
	st.d	$a1, $a2, 0
	pcalau12i	$a2, %pc_hi20(.L.str.54)
	addi.d	$a2, $a2, %pc_lo12(.L.str.54)
	vld	$vr0, $a2, 16
	vst	$vr0, $a0, 16
	vld	$vr0, $a2, 0
	vst	$vr0, $a0, 0
	vld	$vr0, $a2, 32
	vst	$vr0, $a0, 32
	vld	$vr0, $a2, 48
	vst	$vr0, $a0, 48
	ori	$a2, $zero, 2448
	add.d	$a2, $sp, $a2
	st.d	$a1, $a2, 0
	stx.b	$zero, $a0, $a1
.Ltmp1158:                              # EH_LABEL
	ori	$a0, $zero, 2440
	add.d	$a1, $sp, $a0
	move	$a0, $s3
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp1159:                              # EH_LABEL
# %bb.507:
.Ltmp1161:                              # EH_LABEL
	ori	$a0, $zero, 4
	addi.d	$a1, $sp, 768
	ori	$a2, $zero, 5
	pcaddu18i	$ra, %call36(_Z8AddCases10TestCaseIDSt16initializer_listI8TestCaseE)
	jirl	$ra, $ra, 0
.Ltmp1162:                              # EH_LABEL
# %bb.508:
	move	$fp, $a0
	ld.d	$s0, $sp, 1200
	beqz	$s0, .LBB16_513
# %bb.509:
	ld.d	$a0, $s0, 8
	ori	$a1, $zero, 1
	lu32i.d	$a1, 1
	dbar	20
	bne	$a0, $a1, .LBB16_511
# %bb.510:
	ld.d	$a0, $s0, 0
	st.d	$zero, $s0, 8
	ld.d	$a1, $a0, 16
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 24
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $sp, 1160
	addi.d	$a1, $sp, 1176
	bne	$a0, $a1, .LBB16_514
	b	.LBB16_515
.LBB16_511:
	pcalau12i	$a1, %got_pc_hi20(__libc_single_threaded)
	ld.d	$a1, $a1, %got_pc_lo12(__libc_single_threaded)
	ld.bu	$a1, $a1, 0
	beqz	$a1, .LBB16_579
# %bb.512:
	addi.d	$a1, $a0, -1
	st.w	$a1, $s0, 8
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB16_580
.LBB16_513:                             # %_ZNSt12__shared_ptrIN9benchmark5RegexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i899
	ld.d	$a0, $sp, 1160
	addi.d	$a1, $sp, 1176
	beq	$a0, $a1, .LBB16_515
.LBB16_514:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i900
	ld.d	$a1, $sp, 1176
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_515:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i901
	ld.d	$a0, $sp, 1120
	addi.d	$a1, $sp, 1136
	beq	$a0, $a1, .LBB16_517
# %bb.516:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i902
	ld.d	$a1, $sp, 1136
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_517:                             # %_ZN8TestCaseD2Ev.exit.i903
	ld.d	$s0, $sp, 1112
	beqz	$s0, .LBB16_522
# %bb.518:
	ld.d	$a0, $s0, 8
	ori	$a1, $zero, 1
	lu32i.d	$a1, 1
	dbar	20
	bne	$a0, $a1, .LBB16_520
# %bb.519:
	ld.d	$a0, $s0, 0
	st.d	$zero, $s0, 8
	ld.d	$a1, $a0, 16
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 24
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $sp, 1072
	addi.d	$a1, $sp, 1088
	bne	$a0, $a1, .LBB16_523
	b	.LBB16_524
.LBB16_520:
	pcalau12i	$a1, %got_pc_hi20(__libc_single_threaded)
	ld.d	$a1, $a1, %got_pc_lo12(__libc_single_threaded)
	ld.bu	$a1, $a1, 0
	beqz	$a1, .LBB16_581
# %bb.521:
	addi.d	$a1, $a0, -1
	st.w	$a1, $s0, 8
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB16_582
.LBB16_522:                             # %_ZNSt12__shared_ptrIN9benchmark5RegexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.1.i908
	ld.d	$a0, $sp, 1072
	addi.d	$a1, $sp, 1088
	beq	$a0, $a1, .LBB16_524
.LBB16_523:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1.i909
	ld.d	$a1, $sp, 1088
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_524:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.1.i910
	ld.d	$a0, $sp, 1032
	addi.d	$a1, $sp, 1048
	beq	$a0, $a1, .LBB16_526
# %bb.525:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.1.i911
	ld.d	$a1, $sp, 1048
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_526:                             # %_ZN8TestCaseD2Ev.exit.1.i912
	ld.d	$s0, $sp, 1024
	beqz	$s0, .LBB16_531
# %bb.527:
	ld.d	$a0, $s0, 8
	ori	$a1, $zero, 1
	lu32i.d	$a1, 1
	dbar	20
	bne	$a0, $a1, .LBB16_529
# %bb.528:
	ld.d	$a0, $s0, 0
	st.d	$zero, $s0, 8
	ld.d	$a1, $a0, 16
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 24
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $sp, 984
	addi.d	$a1, $sp, 1000
	bne	$a0, $a1, .LBB16_532
	b	.LBB16_533
.LBB16_529:
	pcalau12i	$a1, %got_pc_hi20(__libc_single_threaded)
	ld.d	$a1, $a1, %got_pc_lo12(__libc_single_threaded)
	ld.bu	$a1, $a1, 0
	beqz	$a1, .LBB16_583
# %bb.530:
	addi.d	$a1, $a0, -1
	st.w	$a1, $s0, 8
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB16_584
.LBB16_531:                             # %_ZNSt12__shared_ptrIN9benchmark5RegexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.2.i917
	ld.d	$a0, $sp, 984
	addi.d	$a1, $sp, 1000
	beq	$a0, $a1, .LBB16_533
.LBB16_532:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2.i918
	ld.d	$a1, $sp, 1000
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_533:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.2.i919
	ld.d	$a0, $sp, 944
	addi.d	$a1, $sp, 960
	beq	$a0, $a1, .LBB16_535
# %bb.534:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.2.i920
	ld.d	$a1, $sp, 960
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_535:                             # %_ZN8TestCaseD2Ev.exit.2.i921
	ld.d	$s0, $sp, 936
	beqz	$s0, .LBB16_540
# %bb.536:
	ld.d	$a0, $s0, 8
	ori	$a1, $zero, 1
	lu32i.d	$a1, 1
	dbar	20
	bne	$a0, $a1, .LBB16_538
# %bb.537:
	ld.d	$a0, $s0, 0
	st.d	$zero, $s0, 8
	ld.d	$a1, $a0, 16
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 24
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $sp, 896
	addi.d	$a1, $sp, 912
	bne	$a0, $a1, .LBB16_541
	b	.LBB16_542
.LBB16_538:
	pcalau12i	$a1, %got_pc_hi20(__libc_single_threaded)
	ld.d	$a1, $a1, %got_pc_lo12(__libc_single_threaded)
	ld.bu	$a1, $a1, 0
	beqz	$a1, .LBB16_585
# %bb.539:
	addi.d	$a1, $a0, -1
	st.w	$a1, $s0, 8
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB16_586
.LBB16_540:                             # %_ZNSt12__shared_ptrIN9benchmark5RegexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.3.i926
	ld.d	$a0, $sp, 896
	addi.d	$a1, $sp, 912
	beq	$a0, $a1, .LBB16_542
.LBB16_541:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.3.i927
	ld.d	$a1, $sp, 912
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_542:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.3.i928
	ld.d	$a0, $sp, 856
	addi.d	$a1, $sp, 872
	beq	$a0, $a1, .LBB16_544
# %bb.543:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.3.i929
	ld.d	$a1, $sp, 872
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_544:                             # %_ZN8TestCaseD2Ev.exit.3.i930
	ld.d	$s0, $sp, 848
	beqz	$s0, .LBB16_549
# %bb.545:
	ld.d	$a0, $s0, 8
	ori	$a1, $zero, 1
	lu32i.d	$a1, 1
	dbar	20
	bne	$a0, $a1, .LBB16_547
# %bb.546:
	ld.d	$a0, $s0, 0
	st.d	$zero, $s0, 8
	ld.d	$a1, $a0, 16
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 24
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $sp, 808
	addi.d	$a1, $sp, 824
	bne	$a0, $a1, .LBB16_550
	b	.LBB16_551
.LBB16_547:
	pcalau12i	$a1, %got_pc_hi20(__libc_single_threaded)
	ld.d	$a1, $a1, %got_pc_lo12(__libc_single_threaded)
	ld.bu	$a1, $a1, 0
	beqz	$a1, .LBB16_587
# %bb.548:
	addi.d	$a1, $a0, -1
	st.w	$a1, $s0, 8
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB16_588
.LBB16_549:                             # %_ZNSt12__shared_ptrIN9benchmark5RegexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.4.i935
	ld.d	$a0, $sp, 808
	addi.d	$a1, $sp, 824
	beq	$a0, $a1, .LBB16_551
.LBB16_550:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.4.i936
	ld.d	$a1, $sp, 824
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_551:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.4.i937
	ld.d	$a0, $sp, 768
	beq	$a0, $s4, .LBB16_553
# %bb.552:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.4.i938
	ld.d	$a1, $sp, 784
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_553:                             # %_ZN8TestCaseD2Ev.exit.4.i939
	ori	$a0, $zero, 2440
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2456
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_555
# %bb.554:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i940
	ori	$a1, $zero, 2456
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_555:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i941
	ori	$a0, $zero, 2472
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2488
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_557
# %bb.556:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58.i942
	ori	$a1, $zero, 2488
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_557:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60.i943
	ori	$a0, $zero, 2504
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2520
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_559
# %bb.558:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61.i944
	ori	$a1, $zero, 2520
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_559:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63.i945
	ori	$a0, $zero, 2536
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2552
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_561
# %bb.560:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64.i946
	ori	$a1, $zero, 2552
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_561:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66.i947
	ori	$a0, $zero, 2568
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2584
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_563
# %bb.562:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67.i948
	ori	$a1, $zero, 2584
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_563:                             # %__cxx_global_var_init.50.exit
	pcalau12i	$a0, %pc_hi20(dummy165)
	st.w	$fp, $a0, %pc_lo12(dummy165)
	st.d	$s4, $sp, 768
	ori	$a0, $zero, 21
	ori	$a1, $zero, 2568
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	addi.d	$a0, $sp, 768
	ori	$a1, $zero, 2568
	add.d	$a1, $sp, $a1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2568
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	st.d	$a0, $sp, 768
	st.d	$a1, $sp, 784
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	st.d	$a2, $a0, 13
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	vld	$vr0, $a2, 0
	vst	$vr0, $a0, 0
	ld.d	$a0, $sp, 768
	st.d	$a1, $sp, 776
	stx.b	$zero, $a0, $a1
	ori	$a0, $zero, 2576
	add.d	$a0, $sp, $a0
	st.d	$zero, $a0, 0
	pcalau12i	$a0, %pc_hi20(_Z14CheckThousandsRK7Results)
	addi.d	$a0, $a0, %pc_lo12(_Z14CheckThousandsRK7Results)
	ori	$a1, $zero, 2568
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvRK7ResultsEPS3_E9_M_invokeERKSt9_Any_dataS2_)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvRK7ResultsEPS3_E9_M_invokeERKSt9_Any_dataS2_)
	ori	$a1, $zero, 2592
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvRK7ResultsEPS3_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvRK7ResultsEPS3_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation)
	ori	$a1, $zero, 2584
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
.Ltmp1164:                              # EH_LABEL
	addi.d	$a0, $sp, 768
	ori	$a1, $zero, 2568
	add.d	$a1, $sp, $a1
	pcaddu18i	$ra, %call36(_Z10AddCheckerRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt8functionIFvRK7ResultsEE)
	jirl	$ra, $ra, 0
.Ltmp1165:                              # EH_LABEL
# %bb.564:
	move	$fp, $a0
	ori	$a0, $zero, 2584
	add.d	$a0, $sp, $a0
	ld.d	$a3, $a0, 0
	beqz	$a3, .LBB16_566
# %bb.565:
.Ltmp1170:                              # EH_LABEL
	ori	$a0, $zero, 2568
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2568
	add.d	$a1, $sp, $a1
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp1171:                              # EH_LABEL
.LBB16_566:                             # %_ZNSt14_Function_baseD2Ev.exit.i
	ld.d	$a0, $sp, 768
	beq	$a0, $s4, .LBB16_568
# %bb.567:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i966
	ld.d	$a1, $sp, 784
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_568:                             # %__cxx_global_var_init.76.exit
	pcalau12i	$a0, %pc_hi20(dummy180)
	st.d	$fp, $a0, %pc_lo12(dummy180)
	addi.d	$sp, $sp, 656
	ld.d	$s8, $sp, 1944                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1952                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1960                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1968                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1976                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1984                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1992                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 2000                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 2008                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 2016                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	ret
.LBB16_569:
	addi.d	$a1, $s0, 8
	addi.w	$a2, $zero, -1
	amadd_db.w	$a0, $a2, $a1
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB16_21
.LBB16_570:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 1160
	addi.d	$a1, $sp, 1176
	bne	$a0, $a1, .LBB16_22
	b	.LBB16_23
.LBB16_571:
	addi.d	$a1, $s0, 8
	addi.w	$a2, $zero, -1
	amadd_db.w	$a0, $a2, $a1
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB16_30
.LBB16_572:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 1072
	addi.d	$a1, $sp, 1088
	bne	$a0, $a1, .LBB16_31
	b	.LBB16_32
.LBB16_573:
	addi.d	$a1, $s0, 8
	addi.w	$a2, $zero, -1
	amadd_db.w	$a0, $a2, $a1
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB16_39
.LBB16_574:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 984
	addi.d	$a1, $sp, 1000
	bne	$a0, $a1, .LBB16_40
	b	.LBB16_41
.LBB16_575:
	addi.d	$a1, $s0, 8
	addi.w	$a2, $zero, -1
	amadd_db.w	$a0, $a2, $a1
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB16_48
.LBB16_576:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 896
	addi.d	$a1, $sp, 912
	bne	$a0, $a1, .LBB16_49
	b	.LBB16_50
.LBB16_577:
	addi.d	$a1, $s0, 8
	addi.w	$a2, $zero, -1
	amadd_db.w	$a0, $a2, $a1
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB16_57
.LBB16_578:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 808
	addi.d	$a1, $sp, 824
	bne	$a0, $a1, .LBB16_58
	b	.LBB16_59
.LBB16_579:
	addi.d	$a1, $s0, 8
	addi.w	$a2, $zero, -1
	amadd_db.w	$a0, $a2, $a1
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB16_513
.LBB16_580:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 1160
	addi.d	$a1, $sp, 1176
	bne	$a0, $a1, .LBB16_514
	b	.LBB16_515
.LBB16_581:
	addi.d	$a1, $s0, 8
	addi.w	$a2, $zero, -1
	amadd_db.w	$a0, $a2, $a1
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB16_522
.LBB16_582:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 1072
	addi.d	$a1, $sp, 1088
	bne	$a0, $a1, .LBB16_523
	b	.LBB16_524
.LBB16_583:
	addi.d	$a1, $s0, 8
	addi.w	$a2, $zero, -1
	amadd_db.w	$a0, $a2, $a1
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB16_531
.LBB16_584:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 984
	addi.d	$a1, $sp, 1000
	bne	$a0, $a1, .LBB16_532
	b	.LBB16_533
.LBB16_585:
	addi.d	$a1, $s0, 8
	addi.w	$a2, $zero, -1
	amadd_db.w	$a0, $a2, $a1
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB16_540
.LBB16_586:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 896
	addi.d	$a1, $sp, 912
	bne	$a0, $a1, .LBB16_541
	b	.LBB16_542
.LBB16_587:
	addi.d	$a1, $s0, 8
	addi.w	$a2, $zero, -1
	amadd_db.w	$a0, $a2, $a1
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB16_549
.LBB16_588:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 808
	addi.d	$a1, $sp, 824
	bne	$a0, $a1, .LBB16_550
	b	.LBB16_551
.LBB16_589:
.Ltmp1172:                              # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB16_590:
.Ltmp1166:                              # EH_LABEL
	ori	$a1, $zero, 2584
	add.d	$a1, $sp, $a1
	ld.d	$a3, $a1, 0
	move	$s4, $a0
	beqz	$a3, .LBB16_592
# %bb.591:
.Ltmp1167:                              # EH_LABEL
	ori	$a0, $zero, 2568
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2568
	add.d	$a1, $sp, $a1
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp1168:                              # EH_LABEL
.LBB16_592:                             # %_ZNSt14_Function_baseD2Ev.exit5.i
	ld.d	$a0, $sp, 768
	addi.d	$a1, $sp, 784
	beq	$a0, $a1, .LBB16_1042
# %bb.593:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i
	ld.d	$a1, $sp, 784
	addi.d	$a1, $a1, 1
	b	.LBB16_1041
.LBB16_594:
.Ltmp1169:                              # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB16_595:                             # %.loopexit94.loopexit.i894
.Ltmp1163:                              # EH_LABEL
	move	$s4, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 768
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	ori	$fp, $zero, 1
	b	.LBB16_597
.LBB16_596:
.Ltmp1160:                              # EH_LABEL
	move	$s4, $a0
	move	$fp, $zero
.LBB16_597:                             # %.loopexit94.i888
	ori	$a0, $zero, 2440
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2456
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_600
# %bb.598:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70.i890
	ori	$a1, $zero, 2456
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB16_600
.LBB16_599:
.Ltmp1157:                              # EH_LABEL
	move	$s4, $a0
	move	$fp, $zero
.LBB16_600:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.i880
	move	$s2, $s3
	b	.LBB16_602
.LBB16_601:
.Ltmp1154:                              # EH_LABEL
	move	$s4, $a0
	move	$fp, $zero
.LBB16_602:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.i880
	ori	$a0, $zero, 2472
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2488
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_605
# %bb.603:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73.i884
	ori	$a1, $zero, 2488
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB16_605
.LBB16_604:
.Ltmp1151:                              # EH_LABEL
	move	$s4, $a0
	move	$fp, $zero
.LBB16_605:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75.i872
	move	$s1, $s2
.LBB16_606:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75.i872
	ori	$a0, $zero, 2504
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2520
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_610
# %bb.607:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76.i876
	ori	$a1, $zero, 2520
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB16_610
.LBB16_608:
.Ltmp1148:                              # EH_LABEL
	move	$s4, $a0
	move	$fp, $zero
	b	.LBB16_606
.LBB16_609:
.Ltmp1145:                              # EH_LABEL
	move	$s4, $a0
	move	$fp, $zero
.LBB16_610:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78.i864
	move	$s0, $s1
.LBB16_611:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78.i864
	ori	$a0, $zero, 2536
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2552
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_617
# %bb.612:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79.i868
	ori	$a1, $zero, 2552
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB16_617
.LBB16_613:
.Ltmp1142:                              # EH_LABEL
	move	$s4, $a0
	move	$fp, $zero
	b	.LBB16_611
.LBB16_614:
.Ltmp1139:                              # EH_LABEL
	b	.LBB16_616
.LBB16_615:
.Ltmp1136:                              # EH_LABEL
.LBB16_616:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81.i852
	move	$s4, $a0
	move	$fp, $zero
.LBB16_617:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81.i852
	ori	$a0, $zero, 2568
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2584
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_619
# %bb.618:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82.i856
	ori	$a1, $zero, 2584
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_619:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84.i857
	addi.d	$s1, $sp, 768
	xor	$a0, $s1, $s0
	sltui	$a0, $a0, 1
	or	$a0, $fp, $a0
	bnez	$a0, .LBB16_1042
	.p2align	4, , 16
.LBB16_620:                             # %.preheader.i859
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$s0, $s0, -88
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	bne	$s0, $s1, .LBB16_620
	b	.LBB16_1042
.LBB16_621:                             # %.loopexit365.loopexit.i783
.Ltmp1133:                              # EH_LABEL
	move	$s2, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1824
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1736
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1648
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1560
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1472
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1384
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1296
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1208
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1120
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1032
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 944
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 768
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	ori	$fp, $zero, 1
	b	.LBB16_623
.LBB16_622:
.Ltmp1130:                              # EH_LABEL
	move	$s2, $a0
	move	$fp, $zero
.LBB16_623:                             # %.loopexit365.i777
	ld.d	$a0, $sp, 320
	addi.d	$a1, $sp, 336
	beq	$a0, $a1, .LBB16_625
# %bb.624:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i285.i779
	ld.d	$a1, $sp, 336
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_625:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287.i770
	move	$s8, $s1
	b	.LBB16_627
.LBB16_626:
.Ltmp1127:                              # EH_LABEL
	move	$s2, $a0
	move	$fp, $zero
.LBB16_627:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287.i770
	ld.d	$a0, $sp, 352
	addi.d	$a1, $sp, 368
	beq	$a0, $a1, .LBB16_630
# %bb.628:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i288.i774
	ld.d	$a1, $sp, 368
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB16_630
.LBB16_629:
.Ltmp1124:                              # EH_LABEL
	move	$s2, $a0
	move	$fp, $zero
.LBB16_630:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit290.i762
	move	$s7, $s8
	b	.LBB16_632
.LBB16_631:
.Ltmp1121:                              # EH_LABEL
	move	$s2, $a0
	move	$fp, $zero
.LBB16_632:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit290.i762
	ld.d	$a0, $sp, 384
	addi.d	$a1, $sp, 400
	beq	$a0, $a1, .LBB16_635
# %bb.633:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i291.i766
	ld.d	$a1, $sp, 400
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB16_635
.LBB16_634:
.Ltmp1118:                              # EH_LABEL
	move	$s2, $a0
	move	$fp, $zero
.LBB16_635:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit293.i754
	move	$s6, $s7
	ld.d	$a0, $sp, 416
	addi.d	$a1, $sp, 432
	beq	$a0, $a1, .LBB16_639
.LBB16_636:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i294.i758
	ld.d	$a1, $sp, 432
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB16_639
.LBB16_637:
.Ltmp1115:                              # EH_LABEL
	move	$s2, $a0
	move	$fp, $zero
	ld.d	$a0, $sp, 416
	addi.d	$a1, $sp, 432
	bne	$a0, $a1, .LBB16_636
	b	.LBB16_639
.LBB16_638:
.Ltmp1112:                              # EH_LABEL
	move	$s2, $a0
	move	$fp, $zero
.LBB16_639:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit296.i746
	move	$s5, $s6
	ld.d	$a0, $sp, 448
	addi.d	$a1, $sp, 464
	beq	$a0, $a1, .LBB16_641
.LBB16_640:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i297.i750
	ld.d	$a1, $sp, 464
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_641:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299.i738
	move	$s4, $s5
	ld.d	$a0, $sp, 480
	addi.d	$a1, $sp, 496
	beq	$a0, $a1, .LBB16_643
.LBB16_642:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i300.i742
	ld.d	$a1, $sp, 496
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_643:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302.i730
	move	$s0, $s4
	ld.d	$a0, $sp, 512
	addi.d	$a1, $sp, 528
	beq	$a0, $a1, .LBB16_645
.LBB16_644:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i303.i734
	ld.d	$a1, $sp, 528
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_645:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305.i722
	ld.d	$a0, $sp, 544
	addi.d	$a1, $sp, 560
	bne	$a0, $a1, .LBB16_652
# %bb.646:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308.i714
	ld.d	$a0, $sp, 576
	addi.d	$a1, $sp, 592
	bne	$a0, $a1, .LBB16_653
.LBB16_647:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit311.i706
	ld.d	$a0, $sp, 608
	addi.d	$a1, $sp, 624
	bne	$a0, $a1, .LBB16_654
.LBB16_648:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314.i698
	ld.d	$a0, $sp, 640
	addi.d	$a1, $sp, 656
	bne	$a0, $a1, .LBB16_655
.LBB16_649:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit317.i690
	ld.d	$a0, $sp, 672
	addi.d	$a1, $sp, 688
	bne	$a0, $a1, .LBB16_656
.LBB16_650:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit320.i682
	ld.d	$a0, $sp, 704
	addi.d	$a1, $sp, 720
	bne	$a0, $a1, .LBB16_657
.LBB16_651:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit323.i675
	ld.d	$a0, $sp, 736
	addi.d	$a1, $sp, 752
	bne	$a0, $a1, .LBB16_658
	b	.LBB16_659
.LBB16_652:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i306.i726
	ld.d	$a1, $sp, 560
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 576
	addi.d	$a1, $sp, 592
	beq	$a0, $a1, .LBB16_647
.LBB16_653:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i309.i718
	ld.d	$a1, $sp, 592
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 608
	addi.d	$a1, $sp, 624
	beq	$a0, $a1, .LBB16_648
.LBB16_654:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i312.i710
	ld.d	$a1, $sp, 624
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 640
	addi.d	$a1, $sp, 656
	beq	$a0, $a1, .LBB16_649
.LBB16_655:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i315.i702
	ld.d	$a1, $sp, 656
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 672
	addi.d	$a1, $sp, 688
	beq	$a0, $a1, .LBB16_650
.LBB16_656:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i318.i694
	ld.d	$a1, $sp, 688
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 704
	addi.d	$a1, $sp, 720
	beq	$a0, $a1, .LBB16_651
.LBB16_657:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i321.i686
	ld.d	$a1, $sp, 720
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 736
	addi.d	$a1, $sp, 752
	beq	$a0, $a1, .LBB16_659
.LBB16_658:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i324.i679
	ld.d	$a1, $sp, 752
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_659:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit326.i667
	ori	$a0, $zero, 2440
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2456
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_661
# %bb.660:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i327.i671
	ori	$a1, $zero, 2456
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_661:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit329.i659
	ori	$a0, $zero, 2472
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2488
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_663
# %bb.662:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i330.i663
	ori	$a1, $zero, 2488
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_663:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit332.i651
	ori	$a0, $zero, 2504
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2520
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_665
# %bb.664:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i333.i655
	ori	$a1, $zero, 2520
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_665:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit335.i643
	ori	$a0, $zero, 2536
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2552
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_667
# %bb.666:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i336.i647
	ori	$a1, $zero, 2552
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_667:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit338.i631
	ori	$a0, $zero, 2568
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2584
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_669
# %bb.668:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i339.i635
	ori	$a1, $zero, 2584
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_669:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit341.i636
	addi.d	$s1, $sp, 768
	xor	$a0, $s1, $s0
	sltui	$a0, $a0, 1
	or	$a0, $fp, $a0
	bnez	$a0, .LBB16_671
	.p2align	4, , 16
.LBB16_670:                             # %.preheader.i638
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$s0, $s0, -88
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	bne	$s0, $s1, .LBB16_670
.LBB16_671:                             # %.loopexit.i639
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB16_672:
.Ltmp1109:                              # EH_LABEL
	move	$s2, $a0
	move	$fp, $zero
	ld.d	$a0, $sp, 448
	addi.d	$a1, $sp, 464
	bne	$a0, $a1, .LBB16_640
	b	.LBB16_641
.LBB16_673:
.Ltmp1106:                              # EH_LABEL
	move	$s2, $a0
	move	$fp, $zero
	b	.LBB16_641
.LBB16_674:
.Ltmp1103:                              # EH_LABEL
	move	$s2, $a0
	move	$fp, $zero
	ld.d	$a0, $sp, 480
	addi.d	$a1, $sp, 496
	bne	$a0, $a1, .LBB16_642
	b	.LBB16_643
.LBB16_675:
.Ltmp1100:                              # EH_LABEL
	move	$s2, $a0
	move	$fp, $zero
	b	.LBB16_643
.LBB16_676:
.Ltmp1097:                              # EH_LABEL
	move	$s0, $s1
	move	$s2, $a0
	move	$fp, $zero
	ld.d	$a0, $sp, 512
	addi.d	$a1, $sp, 528
	bne	$a0, $a1, .LBB16_644
	b	.LBB16_645
.LBB16_677:
.Ltmp1094:                              # EH_LABEL
	move	$s2, $a0
	move	$fp, $zero
	move	$s0, $s1
	b	.LBB16_645
.LBB16_678:
.Ltmp1091:                              # EH_LABEL
	move	$s0, $s1
	move	$s2, $a0
	move	$fp, $zero
	b	.LBB16_645
.LBB16_679:
.Ltmp1088:                              # EH_LABEL
	move	$s2, $a0
	move	$fp, $zero
	move	$s0, $s1
	ld.d	$a0, $sp, 576
	addi.d	$a1, $sp, 592
	beq	$a0, $a1, .LBB16_647
	b	.LBB16_653
.LBB16_680:
.Ltmp1085:                              # EH_LABEL
	move	$s0, $s1
	move	$s2, $a0
	move	$fp, $zero
	ld.d	$a0, $sp, 576
	addi.d	$a1, $sp, 592
	beq	$a0, $a1, .LBB16_647
	b	.LBB16_653
.LBB16_681:
.Ltmp1082:                              # EH_LABEL
	move	$s2, $a0
	move	$fp, $zero
	move	$s0, $s1
	ld.d	$a0, $sp, 608
	addi.d	$a1, $sp, 624
	beq	$a0, $a1, .LBB16_648
	b	.LBB16_654
.LBB16_682:
.Ltmp1079:                              # EH_LABEL
	move	$s0, $s1
	move	$s2, $a0
	move	$fp, $zero
	ld.d	$a0, $sp, 608
	addi.d	$a1, $sp, 624
	beq	$a0, $a1, .LBB16_648
	b	.LBB16_654
.LBB16_683:
.Ltmp1076:                              # EH_LABEL
	move	$s2, $a0
	move	$fp, $zero
	move	$s0, $s1
	ld.d	$a0, $sp, 640
	addi.d	$a1, $sp, 656
	beq	$a0, $a1, .LBB16_649
	b	.LBB16_655
.LBB16_684:
.Ltmp1073:                              # EH_LABEL
	move	$s0, $s1
	move	$s2, $a0
	move	$fp, $zero
	ld.d	$a0, $sp, 640
	addi.d	$a1, $sp, 656
	beq	$a0, $a1, .LBB16_649
	b	.LBB16_655
.LBB16_685:
.Ltmp1070:                              # EH_LABEL
	move	$s2, $a0
	move	$fp, $zero
	move	$s0, $s1
	ld.d	$a0, $sp, 672
	addi.d	$a1, $sp, 688
	beq	$a0, $a1, .LBB16_650
	b	.LBB16_656
.LBB16_686:
.Ltmp1067:                              # EH_LABEL
	move	$s0, $s1
	move	$s2, $a0
	move	$fp, $zero
	ld.d	$a0, $sp, 672
	addi.d	$a1, $sp, 688
	beq	$a0, $a1, .LBB16_650
	b	.LBB16_656
.LBB16_687:
.Ltmp1064:                              # EH_LABEL
	move	$s2, $a0
	move	$fp, $zero
	move	$s0, $s1
	ld.d	$a0, $sp, 704
	addi.d	$a1, $sp, 720
	beq	$a0, $a1, .LBB16_651
	b	.LBB16_657
.LBB16_688:
.Ltmp1061:                              # EH_LABEL
	move	$s0, $fp
	move	$s2, $a0
	move	$fp, $zero
	ld.d	$a0, $sp, 704
	addi.d	$a1, $sp, 720
	beq	$a0, $a1, .LBB16_651
	b	.LBB16_657
.LBB16_689:
.Ltmp1058:                              # EH_LABEL
	move	$s0, $s1
	move	$s2, $a0
	move	$fp, $zero
	ld.d	$a0, $sp, 736
	addi.d	$a1, $sp, 752
	bne	$a0, $a1, .LBB16_658
	b	.LBB16_659
.LBB16_690:
.Ltmp1055:                              # EH_LABEL
	move	$s2, $a0
	move	$fp, $zero
	move	$s0, $s1
	b	.LBB16_659
.LBB16_691:
.Ltmp1052:                              # EH_LABEL
	move	$s0, $s1
	move	$s2, $a0
	move	$fp, $zero
	b	.LBB16_659
.LBB16_692:
.Ltmp1049:                              # EH_LABEL
	move	$s2, $a0
	move	$fp, $zero
	move	$s0, $s1
	b	.LBB16_661
.LBB16_693:
.Ltmp1046:                              # EH_LABEL
	move	$s0, $s1
	move	$s2, $a0
	move	$fp, $zero
	b	.LBB16_661
.LBB16_694:
.Ltmp1043:                              # EH_LABEL
	move	$s2, $a0
	move	$fp, $zero
	move	$s0, $s1
	b	.LBB16_663
.LBB16_695:
.Ltmp1040:                              # EH_LABEL
	move	$s0, $s1
	move	$s2, $a0
	move	$fp, $zero
	b	.LBB16_663
.LBB16_696:
.Ltmp1037:                              # EH_LABEL
	move	$s2, $a0
	move	$fp, $zero
	move	$s0, $s1
	b	.LBB16_665
.LBB16_697:
.Ltmp1034:                              # EH_LABEL
	move	$s2, $a0
	move	$fp, $zero
	b	.LBB16_665
.LBB16_698:
.Ltmp1031:                              # EH_LABEL
	b	.LBB16_700
.LBB16_699:
.Ltmp1028:                              # EH_LABEL
.LBB16_700:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit338.i631
	move	$s2, $a0
	move	$fp, $zero
	b	.LBB16_667
.LBB16_701:                             # %.loopexit365.loopexit.i562
.Ltmp1025:                              # EH_LABEL
	move	$s4, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1824
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1736
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1648
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1560
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1472
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1384
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1296
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1208
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1120
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1032
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 944
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 768
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	ori	$s1, $zero, 1
	b	.LBB16_703
.LBB16_702:
.Ltmp1022:                              # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
.LBB16_703:                             # %.loopexit365.i556
	ld.d	$a0, $sp, 320
	addi.d	$a1, $sp, 336
	beq	$a0, $a1, .LBB16_705
# %bb.704:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i285.i558
	ld.d	$a1, $sp, 336
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_705:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287.i549
	move	$fp, $s2
	b	.LBB16_707
.LBB16_706:
.Ltmp1019:                              # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
.LBB16_707:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287.i549
	ld.d	$a0, $sp, 352
	addi.d	$a1, $sp, 368
	beq	$a0, $a1, .LBB16_710
# %bb.708:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i288.i553
	ld.d	$a1, $sp, 368
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB16_710
.LBB16_709:
.Ltmp1016:                              # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
.LBB16_710:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit290.i541
	move	$s8, $fp
	b	.LBB16_712
.LBB16_711:
.Ltmp1013:                              # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
.LBB16_712:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit290.i541
	ld.d	$a0, $sp, 384
	addi.d	$a1, $sp, 400
	beq	$a0, $a1, .LBB16_715
# %bb.713:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i291.i545
	ld.d	$a1, $sp, 400
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB16_715
.LBB16_714:
.Ltmp1010:                              # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
.LBB16_715:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit293.i533
	move	$s7, $s8
	ld.d	$a0, $sp, 416
	addi.d	$a1, $sp, 432
	beq	$a0, $a1, .LBB16_719
.LBB16_716:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i294.i537
	ld.d	$a1, $sp, 432
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB16_719
.LBB16_717:
.Ltmp1007:                              # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	ld.d	$a0, $sp, 416
	addi.d	$a1, $sp, 432
	bne	$a0, $a1, .LBB16_716
	b	.LBB16_719
.LBB16_718:
.Ltmp1004:                              # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
.LBB16_719:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit296.i525
	move	$s6, $s7
	ld.d	$a0, $sp, 448
	addi.d	$a1, $sp, 464
	beq	$a0, $a1, .LBB16_721
.LBB16_720:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i297.i529
	ld.d	$a1, $sp, 464
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_721:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299.i517
	move	$s5, $s6
	ld.d	$a0, $sp, 480
	addi.d	$a1, $sp, 496
	beq	$a0, $a1, .LBB16_723
.LBB16_722:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i300.i521
	ld.d	$a1, $sp, 496
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_723:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302.i509
	move	$s0, $s5
	ld.d	$a0, $sp, 512
	addi.d	$a1, $sp, 528
	beq	$a0, $a1, .LBB16_725
.LBB16_724:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i303.i513
	ld.d	$a1, $sp, 528
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_725:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305.i501
	ld.d	$a0, $sp, 544
	addi.d	$a1, $sp, 560
	bne	$a0, $a1, .LBB16_732
# %bb.726:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308.i493
	ld.d	$a0, $sp, 576
	addi.d	$a1, $sp, 592
	bne	$a0, $a1, .LBB16_733
.LBB16_727:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit311.i485
	ld.d	$a0, $sp, 608
	addi.d	$a1, $sp, 624
	bne	$a0, $a1, .LBB16_734
.LBB16_728:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314.i477
	ld.d	$a0, $sp, 640
	addi.d	$a1, $sp, 656
	bne	$a0, $a1, .LBB16_735
.LBB16_729:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit317.i469
	ld.d	$a0, $sp, 672
	addi.d	$a1, $sp, 688
	bne	$a0, $a1, .LBB16_736
.LBB16_730:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit320.i461
	ld.d	$a0, $sp, 704
	addi.d	$a1, $sp, 720
	bne	$a0, $a1, .LBB16_737
.LBB16_731:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit323.i454
	ld.d	$a0, $sp, 736
	addi.d	$a1, $sp, 752
	bne	$a0, $a1, .LBB16_738
	b	.LBB16_739
.LBB16_732:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i306.i505
	ld.d	$a1, $sp, 560
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 576
	addi.d	$a1, $sp, 592
	beq	$a0, $a1, .LBB16_727
.LBB16_733:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i309.i497
	ld.d	$a1, $sp, 592
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 608
	addi.d	$a1, $sp, 624
	beq	$a0, $a1, .LBB16_728
.LBB16_734:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i312.i489
	ld.d	$a1, $sp, 624
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 640
	addi.d	$a1, $sp, 656
	beq	$a0, $a1, .LBB16_729
.LBB16_735:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i315.i481
	ld.d	$a1, $sp, 656
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 672
	addi.d	$a1, $sp, 688
	beq	$a0, $a1, .LBB16_730
.LBB16_736:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i318.i473
	ld.d	$a1, $sp, 688
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 704
	addi.d	$a1, $sp, 720
	beq	$a0, $a1, .LBB16_731
.LBB16_737:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i321.i465
	ld.d	$a1, $sp, 720
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 736
	addi.d	$a1, $sp, 752
	beq	$a0, $a1, .LBB16_739
.LBB16_738:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i324.i458
	ld.d	$a1, $sp, 752
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_739:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit326.i446
	ori	$a0, $zero, 2440
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2456
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_741
# %bb.740:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i327.i450
	ori	$a1, $zero, 2456
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_741:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit329.i438
	ori	$a0, $zero, 2472
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2488
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_743
# %bb.742:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i330.i442
	ori	$a1, $zero, 2488
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_743:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit332.i430
	ori	$a0, $zero, 2504
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2520
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_745
# %bb.744:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i333.i434
	ori	$a1, $zero, 2520
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_745:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit335.i422
	ori	$a0, $zero, 2536
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2552
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_747
# %bb.746:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i336.i426
	ori	$a1, $zero, 2552
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_747:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit338.i410
	ori	$a0, $zero, 2568
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2584
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_749
# %bb.748:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i339.i414
	ori	$a1, $zero, 2584
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_749:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit341.i415
	addi.d	$fp, $sp, 768
	xor	$a0, $fp, $s0
	sltui	$a0, $a0, 1
	or	$a0, $s1, $a0
	bnez	$a0, .LBB16_1042
	.p2align	4, , 16
.LBB16_750:                             # %.preheader.i417
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$s0, $s0, -88
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	bne	$s0, $fp, .LBB16_750
	b	.LBB16_1042
.LBB16_751:
.Ltmp1001:                              # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	ld.d	$a0, $sp, 448
	addi.d	$a1, $sp, 464
	bne	$a0, $a1, .LBB16_720
	b	.LBB16_721
.LBB16_752:
.Ltmp998:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	b	.LBB16_721
.LBB16_753:
.Ltmp995:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	ld.d	$a0, $sp, 480
	addi.d	$a1, $sp, 496
	bne	$a0, $a1, .LBB16_722
	b	.LBB16_723
.LBB16_754:
.Ltmp992:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	b	.LBB16_723
.LBB16_755:
.Ltmp989:                               # EH_LABEL
	move	$s0, $fp
	move	$s4, $a0
	move	$s1, $zero
	ld.d	$a0, $sp, 512
	addi.d	$a1, $sp, 528
	bne	$a0, $a1, .LBB16_724
	b	.LBB16_725
.LBB16_756:
.Ltmp986:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	move	$s0, $fp
	b	.LBB16_725
.LBB16_757:
.Ltmp983:                               # EH_LABEL
	move	$s0, $fp
	move	$s4, $a0
	move	$s1, $zero
	b	.LBB16_725
.LBB16_758:
.Ltmp980:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	move	$s0, $fp
	ld.d	$a0, $sp, 576
	addi.d	$a1, $sp, 592
	beq	$a0, $a1, .LBB16_727
	b	.LBB16_733
.LBB16_759:
.Ltmp977:                               # EH_LABEL
	move	$s0, $fp
	move	$s4, $a0
	move	$s1, $zero
	ld.d	$a0, $sp, 576
	addi.d	$a1, $sp, 592
	beq	$a0, $a1, .LBB16_727
	b	.LBB16_733
.LBB16_760:
.Ltmp974:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	move	$s0, $fp
	ld.d	$a0, $sp, 608
	addi.d	$a1, $sp, 624
	beq	$a0, $a1, .LBB16_728
	b	.LBB16_734
.LBB16_761:
.Ltmp971:                               # EH_LABEL
	move	$s0, $fp
	move	$s4, $a0
	move	$s1, $zero
	ld.d	$a0, $sp, 608
	addi.d	$a1, $sp, 624
	beq	$a0, $a1, .LBB16_728
	b	.LBB16_734
.LBB16_762:
.Ltmp968:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	move	$s0, $fp
	ld.d	$a0, $sp, 640
	addi.d	$a1, $sp, 656
	beq	$a0, $a1, .LBB16_729
	b	.LBB16_735
.LBB16_763:
.Ltmp965:                               # EH_LABEL
	move	$s0, $fp
	move	$s4, $a0
	move	$s1, $zero
	ld.d	$a0, $sp, 640
	addi.d	$a1, $sp, 656
	beq	$a0, $a1, .LBB16_729
	b	.LBB16_735
.LBB16_764:
.Ltmp962:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	move	$s0, $fp
	ld.d	$a0, $sp, 672
	addi.d	$a1, $sp, 688
	beq	$a0, $a1, .LBB16_730
	b	.LBB16_736
.LBB16_765:
.Ltmp959:                               # EH_LABEL
	move	$s0, $fp
	move	$s4, $a0
	move	$s1, $zero
	ld.d	$a0, $sp, 672
	addi.d	$a1, $sp, 688
	beq	$a0, $a1, .LBB16_730
	b	.LBB16_736
.LBB16_766:
.Ltmp956:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	move	$s0, $fp
	ld.d	$a0, $sp, 704
	addi.d	$a1, $sp, 720
	beq	$a0, $a1, .LBB16_731
	b	.LBB16_737
.LBB16_767:
.Ltmp953:                               # EH_LABEL
	move	$s0, $fp
	move	$s4, $a0
	move	$s1, $zero
	ld.d	$a0, $sp, 704
	addi.d	$a1, $sp, 720
	beq	$a0, $a1, .LBB16_731
	b	.LBB16_737
.LBB16_768:
.Ltmp950:                               # EH_LABEL
	move	$s0, $fp
	move	$s4, $a0
	move	$s1, $zero
	ld.d	$a0, $sp, 736
	addi.d	$a1, $sp, 752
	bne	$a0, $a1, .LBB16_738
	b	.LBB16_739
.LBB16_769:
.Ltmp947:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	move	$s0, $fp
	b	.LBB16_739
.LBB16_770:
.Ltmp944:                               # EH_LABEL
	move	$s0, $fp
	move	$s4, $a0
	move	$s1, $zero
	b	.LBB16_739
.LBB16_771:
.Ltmp941:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	move	$s0, $fp
	b	.LBB16_741
.LBB16_772:
.Ltmp938:                               # EH_LABEL
	move	$s0, $fp
	move	$s4, $a0
	move	$s1, $zero
	b	.LBB16_741
.LBB16_773:
.Ltmp935:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	move	$s0, $fp
	b	.LBB16_743
.LBB16_774:
.Ltmp932:                               # EH_LABEL
	move	$s0, $fp
	move	$s4, $a0
	move	$s1, $zero
	b	.LBB16_743
.LBB16_775:
.Ltmp929:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	move	$s0, $fp
	b	.LBB16_745
.LBB16_776:
.Ltmp926:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	b	.LBB16_745
.LBB16_777:
.Ltmp923:                               # EH_LABEL
	b	.LBB16_779
.LBB16_778:
.Ltmp920:                               # EH_LABEL
.LBB16_779:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit338.i410
	move	$s4, $a0
	move	$s1, $zero
	b	.LBB16_747
.LBB16_780:                             # %.loopexit365.loopexit.i
.Ltmp917:                               # EH_LABEL
	move	$s4, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1736
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1648
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1560
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1472
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1384
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1296
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1208
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1120
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1032
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 944
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 768
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	ori	$s1, $zero, 1
	b	.LBB16_782
.LBB16_781:
.Ltmp914:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
.LBB16_782:                             # %.loopexit365.i
	ld.d	$a0, $sp, 320
	addi.d	$a1, $sp, 336
	beq	$a0, $a1, .LBB16_784
# %bb.783:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i285.i339
	ld.d	$a1, $sp, 336
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_784:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287.i333
	move	$fp, $s2
	b	.LBB16_786
.LBB16_785:
.Ltmp911:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
.LBB16_786:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287.i333
	ld.d	$a0, $sp, 352
	addi.d	$a1, $sp, 368
	beq	$a0, $a1, .LBB16_789
# %bb.787:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i288.i336
	ld.d	$a1, $sp, 368
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB16_789
.LBB16_788:
.Ltmp908:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
.LBB16_789:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit290.i328
	move	$s8, $fp
	b	.LBB16_791
.LBB16_790:
.Ltmp905:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
.LBB16_791:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit290.i328
	ld.d	$a0, $sp, 384
	addi.d	$a1, $sp, 400
	beq	$a0, $a1, .LBB16_794
# %bb.792:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i291.i331
	ld.d	$a1, $sp, 400
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB16_794
.LBB16_793:
.Ltmp902:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
.LBB16_794:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit293.i323
	move	$s7, $s8
	ld.d	$a0, $sp, 416
	addi.d	$a1, $sp, 432
	beq	$a0, $a1, .LBB16_798
.LBB16_795:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i294.i326
	ld.d	$a1, $sp, 432
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB16_798
.LBB16_796:
.Ltmp899:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	ld.d	$a0, $sp, 416
	addi.d	$a1, $sp, 432
	bne	$a0, $a1, .LBB16_795
	b	.LBB16_798
.LBB16_797:
.Ltmp896:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
.LBB16_798:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit296.i318
	move	$s6, $s7
	ld.d	$a0, $sp, 448
	addi.d	$a1, $sp, 464
	beq	$a0, $a1, .LBB16_800
.LBB16_799:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i297.i321
	ld.d	$a1, $sp, 464
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_800:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299.i311
	move	$s5, $s6
	ld.d	$a0, $sp, 480
	addi.d	$a1, $sp, 496
	beq	$a0, $a1, .LBB16_802
.LBB16_801:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i300.i314
	ld.d	$a1, $sp, 496
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_802:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302.i304
	move	$s3, $s5
	ld.d	$a0, $sp, 512
	addi.d	$a1, $sp, 528
	beq	$a0, $a1, .LBB16_804
.LBB16_803:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i303.i307
	ld.d	$a1, $sp, 528
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_804:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305.i297
	move	$s0, $s3
	ld.d	$a0, $sp, 544
	addi.d	$a1, $sp, 560
	beq	$a0, $a1, .LBB16_806
.LBB16_805:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i306.i300
	ld.d	$a1, $sp, 560
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_806:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308.i290
	ld.d	$a0, $sp, 576
	addi.d	$a1, $sp, 592
	bne	$a0, $a1, .LBB16_812
# %bb.807:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit311.i283
	ld.d	$a0, $sp, 608
	addi.d	$a1, $sp, 624
	bne	$a0, $a1, .LBB16_813
.LBB16_808:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314.i276
	ld.d	$a0, $sp, 640
	addi.d	$a1, $sp, 656
	bne	$a0, $a1, .LBB16_814
.LBB16_809:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit317.i269
	ld.d	$a0, $sp, 672
	addi.d	$a1, $sp, 688
	bne	$a0, $a1, .LBB16_815
.LBB16_810:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit320.i262
	ld.d	$a0, $sp, 704
	addi.d	$a1, $sp, 720
	bne	$a0, $a1, .LBB16_816
.LBB16_811:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit323.i259
	ld.d	$a0, $sp, 736
	addi.d	$a1, $sp, 752
	bne	$a0, $a1, .LBB16_817
	b	.LBB16_818
.LBB16_812:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i309.i293
	ld.d	$a1, $sp, 592
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 608
	addi.d	$a1, $sp, 624
	beq	$a0, $a1, .LBB16_808
.LBB16_813:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i312.i286
	ld.d	$a1, $sp, 624
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 640
	addi.d	$a1, $sp, 656
	beq	$a0, $a1, .LBB16_809
.LBB16_814:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i315.i279
	ld.d	$a1, $sp, 656
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 672
	addi.d	$a1, $sp, 688
	beq	$a0, $a1, .LBB16_810
.LBB16_815:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i318.i272
	ld.d	$a1, $sp, 688
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 704
	addi.d	$a1, $sp, 720
	beq	$a0, $a1, .LBB16_811
.LBB16_816:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i321.i265
	ld.d	$a1, $sp, 720
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 736
	addi.d	$a1, $sp, 752
	beq	$a0, $a1, .LBB16_818
.LBB16_817:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i324.i
	ld.d	$a1, $sp, 752
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_818:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit326.i
	ori	$a0, $zero, 2440
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2456
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_820
# %bb.819:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i327.i
	ori	$a1, $zero, 2456
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_820:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit329.i
	ori	$a0, $zero, 2472
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2488
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_822
# %bb.821:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i330.i
	ori	$a1, $zero, 2488
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_822:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit332.i
	ori	$a0, $zero, 2504
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2520
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_824
# %bb.823:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i333.i
	ori	$a1, $zero, 2520
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_824:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit335.i
	ori	$a0, $zero, 2536
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2552
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_826
# %bb.825:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i336.i
	ori	$a1, $zero, 2552
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_826:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit338.i
	ori	$a0, $zero, 2568
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2584
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_828
# %bb.827:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i339.i
	ori	$a1, $zero, 2584
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_828:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit341.i
	addi.d	$fp, $sp, 768
	xor	$a0, $fp, $s0
	sltui	$a0, $a0, 1
	or	$a0, $s1, $a0
	bnez	$a0, .LBB16_1042
	.p2align	4, , 16
.LBB16_829:                             # %.preheader.i241
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$s0, $s0, -88
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	bne	$s0, $fp, .LBB16_829
	b	.LBB16_1042
.LBB16_830:
.Ltmp893:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	ld.d	$a0, $sp, 448
	addi.d	$a1, $sp, 464
	bne	$a0, $a1, .LBB16_799
	b	.LBB16_800
.LBB16_831:
.Ltmp890:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	b	.LBB16_800
.LBB16_832:
.Ltmp887:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	ld.d	$a0, $sp, 480
	addi.d	$a1, $sp, 496
	bne	$a0, $a1, .LBB16_801
	b	.LBB16_802
.LBB16_833:
.Ltmp884:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	b	.LBB16_802
.LBB16_834:
.Ltmp881:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	ld.d	$a0, $sp, 512
	addi.d	$a1, $sp, 528
	bne	$a0, $a1, .LBB16_803
	b	.LBB16_804
.LBB16_835:
.Ltmp878:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	b	.LBB16_804
.LBB16_836:
.Ltmp875:                               # EH_LABEL
	move	$s0, $fp
	move	$s4, $a0
	move	$s1, $zero
	ld.d	$a0, $sp, 544
	addi.d	$a1, $sp, 560
	bne	$a0, $a1, .LBB16_805
	b	.LBB16_806
.LBB16_837:
.Ltmp872:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	move	$s0, $fp
	b	.LBB16_806
.LBB16_838:
.Ltmp869:                               # EH_LABEL
	move	$s0, $fp
	move	$s4, $a0
	move	$s1, $zero
	b	.LBB16_806
.LBB16_839:
.Ltmp866:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	move	$s0, $fp
	ld.d	$a0, $sp, 608
	addi.d	$a1, $sp, 624
	beq	$a0, $a1, .LBB16_808
	b	.LBB16_813
.LBB16_840:
.Ltmp863:                               # EH_LABEL
	move	$s0, $fp
	move	$s4, $a0
	move	$s1, $zero
	ld.d	$a0, $sp, 608
	addi.d	$a1, $sp, 624
	beq	$a0, $a1, .LBB16_808
	b	.LBB16_813
.LBB16_841:
.Ltmp860:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	move	$s0, $fp
	ld.d	$a0, $sp, 640
	addi.d	$a1, $sp, 656
	beq	$a0, $a1, .LBB16_809
	b	.LBB16_814
.LBB16_842:
.Ltmp857:                               # EH_LABEL
	move	$s0, $fp
	move	$s4, $a0
	move	$s1, $zero
	ld.d	$a0, $sp, 640
	addi.d	$a1, $sp, 656
	beq	$a0, $a1, .LBB16_809
	b	.LBB16_814
.LBB16_843:
.Ltmp854:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	move	$s0, $fp
	ld.d	$a0, $sp, 672
	addi.d	$a1, $sp, 688
	beq	$a0, $a1, .LBB16_810
	b	.LBB16_815
.LBB16_844:
.Ltmp851:                               # EH_LABEL
	move	$s0, $fp
	move	$s4, $a0
	move	$s1, $zero
	ld.d	$a0, $sp, 672
	addi.d	$a1, $sp, 688
	beq	$a0, $a1, .LBB16_810
	b	.LBB16_815
.LBB16_845:
.Ltmp848:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	move	$s0, $fp
	ld.d	$a0, $sp, 704
	addi.d	$a1, $sp, 720
	beq	$a0, $a1, .LBB16_811
	b	.LBB16_816
.LBB16_846:
.Ltmp845:                               # EH_LABEL
	move	$s0, $fp
	move	$s4, $a0
	move	$s1, $zero
	ld.d	$a0, $sp, 704
	addi.d	$a1, $sp, 720
	beq	$a0, $a1, .LBB16_811
	b	.LBB16_816
.LBB16_847:
.Ltmp842:                               # EH_LABEL
	move	$s0, $fp
	move	$s4, $a0
	move	$s1, $zero
	ld.d	$a0, $sp, 736
	addi.d	$a1, $sp, 752
	bne	$a0, $a1, .LBB16_817
	b	.LBB16_818
.LBB16_848:
.Ltmp839:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	move	$s0, $fp
	b	.LBB16_818
.LBB16_849:
.Ltmp836:                               # EH_LABEL
	move	$s0, $fp
	move	$s4, $a0
	move	$s1, $zero
	b	.LBB16_818
.LBB16_850:
.Ltmp833:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	move	$s0, $fp
	b	.LBB16_820
.LBB16_851:
.Ltmp830:                               # EH_LABEL
	move	$s0, $fp
	move	$s4, $a0
	move	$s1, $zero
	b	.LBB16_820
.LBB16_852:
.Ltmp827:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	move	$s0, $fp
	b	.LBB16_822
.LBB16_853:
.Ltmp824:                               # EH_LABEL
	move	$s0, $fp
	move	$s4, $a0
	move	$s1, $zero
	b	.LBB16_822
.LBB16_854:
.Ltmp821:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	move	$s0, $fp
	b	.LBB16_824
.LBB16_855:
.Ltmp818:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	b	.LBB16_824
.LBB16_856:
.Ltmp815:                               # EH_LABEL
	b	.LBB16_858
.LBB16_857:
.Ltmp812:                               # EH_LABEL
.LBB16_858:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit338.i
	move	$s4, $a0
	move	$s1, $zero
	b	.LBB16_826
.LBB16_859:                             # %.loopexit346.loopexit.i175
.Ltmp809:                               # EH_LABEL
	move	$s4, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1736
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1648
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1560
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1472
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1384
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1296
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1208
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1120
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1032
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 944
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 768
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	ori	$s1, $zero, 1
	b	.LBB16_861
.LBB16_860:
.Ltmp806:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
.LBB16_861:                             # %.loopexit346.i169
	ld.d	$a0, $sp, 352
	addi.d	$a1, $sp, 368
	beq	$a0, $a1, .LBB16_863
# %bb.862:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i270.i171
	ld.d	$a1, $sp, 368
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_863:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272.i162
	move	$s8, $s2
	b	.LBB16_865
.LBB16_864:
.Ltmp803:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
.LBB16_865:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272.i162
	ld.d	$a0, $sp, 384
	addi.d	$a1, $sp, 400
	beq	$a0, $a1, .LBB16_868
# %bb.866:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273.i166
	ld.d	$a1, $sp, 400
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB16_868
.LBB16_867:
.Ltmp800:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
.LBB16_868:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275.i154
	move	$fp, $s8
	b	.LBB16_870
.LBB16_869:
.Ltmp797:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
.LBB16_870:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275.i154
	ld.d	$a0, $sp, 416
	addi.d	$a1, $sp, 432
	beq	$a0, $a1, .LBB16_873
# %bb.871:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i276.i158
	ld.d	$a1, $sp, 432
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB16_873
.LBB16_872:
.Ltmp794:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
.LBB16_873:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit278.i146
	move	$s7, $fp
	ld.d	$a0, $sp, 448
	addi.d	$a1, $sp, 464
	beq	$a0, $a1, .LBB16_877
.LBB16_874:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i279.i150
	ld.d	$a1, $sp, 464
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB16_877
.LBB16_875:
.Ltmp791:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	ld.d	$a0, $sp, 448
	addi.d	$a1, $sp, 464
	bne	$a0, $a1, .LBB16_874
	b	.LBB16_877
.LBB16_876:
.Ltmp788:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
.LBB16_877:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281.i138
	move	$s6, $s7
	ld.d	$a0, $sp, 480
	addi.d	$a1, $sp, 496
	beq	$a0, $a1, .LBB16_879
.LBB16_878:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i282.i142
	ld.d	$a1, $sp, 496
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_879:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284.i130
	move	$s5, $s6
	ld.d	$a0, $sp, 512
	addi.d	$a1, $sp, 528
	beq	$a0, $a1, .LBB16_881
.LBB16_880:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i285.i134
	ld.d	$a1, $sp, 528
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_881:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287.i122
	move	$s0, $s5
	ld.d	$a0, $sp, 544
	addi.d	$a1, $sp, 560
	beq	$a0, $a1, .LBB16_883
.LBB16_882:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i288.i126
	ld.d	$a1, $sp, 560
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_883:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit290.i114
	ld.d	$a0, $sp, 576
	addi.d	$a1, $sp, 592
	bne	$a0, $a1, .LBB16_889
# %bb.884:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit293.i106
	ld.d	$a0, $sp, 608
	addi.d	$a1, $sp, 624
	bne	$a0, $a1, .LBB16_890
.LBB16_885:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit296.i98
	ld.d	$a0, $sp, 640
	addi.d	$a1, $sp, 656
	bne	$a0, $a1, .LBB16_891
.LBB16_886:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299.i90
	ld.d	$a0, $sp, 672
	addi.d	$a1, $sp, 688
	bne	$a0, $a1, .LBB16_892
.LBB16_887:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302.i83
	ld.d	$a0, $sp, 704
	addi.d	$a1, $sp, 720
	bne	$a0, $a1, .LBB16_893
.LBB16_888:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305.i75
	ld.d	$a0, $sp, 736
	addi.d	$a1, $sp, 752
	bne	$a0, $a1, .LBB16_894
	b	.LBB16_895
.LBB16_889:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i291.i118
	ld.d	$a1, $sp, 592
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 608
	addi.d	$a1, $sp, 624
	beq	$a0, $a1, .LBB16_885
.LBB16_890:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i294.i110
	ld.d	$a1, $sp, 624
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 640
	addi.d	$a1, $sp, 656
	beq	$a0, $a1, .LBB16_886
.LBB16_891:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i297.i102
	ld.d	$a1, $sp, 656
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 672
	addi.d	$a1, $sp, 688
	beq	$a0, $a1, .LBB16_887
.LBB16_892:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i300.i94
	ld.d	$a1, $sp, 688
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 704
	addi.d	$a1, $sp, 720
	beq	$a0, $a1, .LBB16_888
.LBB16_893:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i303.i87
	ld.d	$a1, $sp, 720
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 736
	addi.d	$a1, $sp, 752
	beq	$a0, $a1, .LBB16_895
.LBB16_894:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i306.i79
	ld.d	$a1, $sp, 752
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_895:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308.i67
	ori	$a0, $zero, 2440
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2456
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_897
# %bb.896:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i309.i71
	ori	$a1, $zero, 2456
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_897:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit311.i59
	ori	$a0, $zero, 2472
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2488
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_899
# %bb.898:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i312.i63
	ori	$a1, $zero, 2488
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_899:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314.i51
	ori	$a0, $zero, 2504
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2520
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_901
# %bb.900:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i315.i55
	ori	$a1, $zero, 2520
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_901:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit317.i43
	ori	$a0, $zero, 2536
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2552
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_903
# %bb.902:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i318.i47
	ori	$a1, $zero, 2552
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_903:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit320.i31
	ori	$a0, $zero, 2568
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2584
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_905
# %bb.904:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i321.i35
	ori	$a1, $zero, 2584
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_905:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit323.i36
	addi.d	$fp, $sp, 768
	xor	$a0, $fp, $s0
	sltui	$a0, $a0, 1
	or	$a0, $s1, $a0
	bnez	$a0, .LBB16_1042
	.p2align	4, , 16
.LBB16_906:                             # %.preheader.i38
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$s0, $s0, -88
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	bne	$s0, $fp, .LBB16_906
	b	.LBB16_1042
.LBB16_907:
.Ltmp785:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	ld.d	$a0, $sp, 480
	addi.d	$a1, $sp, 496
	bne	$a0, $a1, .LBB16_878
	b	.LBB16_879
.LBB16_908:
.Ltmp782:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	b	.LBB16_879
.LBB16_909:
.Ltmp779:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	ld.d	$a0, $sp, 512
	addi.d	$a1, $sp, 528
	bne	$a0, $a1, .LBB16_880
	b	.LBB16_881
.LBB16_910:
.Ltmp776:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	b	.LBB16_881
.LBB16_911:
.Ltmp773:                               # EH_LABEL
	move	$s0, $fp
	move	$s4, $a0
	move	$s1, $zero
	ld.d	$a0, $sp, 544
	addi.d	$a1, $sp, 560
	bne	$a0, $a1, .LBB16_882
	b	.LBB16_883
.LBB16_912:
.Ltmp770:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	move	$s0, $fp
	b	.LBB16_883
.LBB16_913:
.Ltmp767:                               # EH_LABEL
	move	$s0, $fp
	move	$s4, $a0
	move	$s1, $zero
	b	.LBB16_883
.LBB16_914:
.Ltmp764:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	move	$s0, $fp
	ld.d	$a0, $sp, 608
	addi.d	$a1, $sp, 624
	beq	$a0, $a1, .LBB16_885
	b	.LBB16_890
.LBB16_915:
.Ltmp761:                               # EH_LABEL
	move	$s0, $fp
	move	$s4, $a0
	move	$s1, $zero
	ld.d	$a0, $sp, 608
	addi.d	$a1, $sp, 624
	beq	$a0, $a1, .LBB16_885
	b	.LBB16_890
.LBB16_916:
.Ltmp758:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	move	$s0, $fp
	ld.d	$a0, $sp, 640
	addi.d	$a1, $sp, 656
	beq	$a0, $a1, .LBB16_886
	b	.LBB16_891
.LBB16_917:
.Ltmp755:                               # EH_LABEL
	move	$s0, $fp
	move	$s4, $a0
	move	$s1, $zero
	ld.d	$a0, $sp, 640
	addi.d	$a1, $sp, 656
	beq	$a0, $a1, .LBB16_886
	b	.LBB16_891
.LBB16_918:
.Ltmp752:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	move	$s0, $fp
	ld.d	$a0, $sp, 672
	addi.d	$a1, $sp, 688
	beq	$a0, $a1, .LBB16_887
	b	.LBB16_892
.LBB16_919:
.Ltmp749:                               # EH_LABEL
	move	$s0, $fp
	move	$s4, $a0
	move	$s1, $zero
	ld.d	$a0, $sp, 672
	addi.d	$a1, $sp, 688
	beq	$a0, $a1, .LBB16_887
	b	.LBB16_892
.LBB16_920:
.Ltmp746:                               # EH_LABEL
	move	$s0, $fp
	move	$s4, $a0
	move	$s1, $zero
	ld.d	$a0, $sp, 704
	addi.d	$a1, $sp, 720
	beq	$a0, $a1, .LBB16_888
	b	.LBB16_893
.LBB16_921:
.Ltmp743:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	move	$s0, $fp
	ld.d	$a0, $sp, 736
	addi.d	$a1, $sp, 752
	bne	$a0, $a1, .LBB16_894
	b	.LBB16_895
.LBB16_922:
.Ltmp740:                               # EH_LABEL
	move	$s0, $fp
	move	$s4, $a0
	move	$s1, $zero
	ld.d	$a0, $sp, 736
	addi.d	$a1, $sp, 752
	bne	$a0, $a1, .LBB16_894
	b	.LBB16_895
.LBB16_923:
.Ltmp737:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	move	$s0, $fp
	b	.LBB16_895
.LBB16_924:
.Ltmp734:                               # EH_LABEL
	move	$s0, $fp
	move	$s4, $a0
	move	$s1, $zero
	b	.LBB16_895
.LBB16_925:
.Ltmp731:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	move	$s0, $fp
	b	.LBB16_897
.LBB16_926:
.Ltmp728:                               # EH_LABEL
	move	$s0, $fp
	move	$s4, $a0
	move	$s1, $zero
	b	.LBB16_897
.LBB16_927:
.Ltmp725:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	move	$s0, $fp
	b	.LBB16_899
.LBB16_928:
.Ltmp722:                               # EH_LABEL
	move	$s0, $fp
	move	$s4, $a0
	move	$s1, $zero
	b	.LBB16_899
.LBB16_929:
.Ltmp719:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	move	$s0, $fp
	b	.LBB16_901
.LBB16_930:
.Ltmp716:                               # EH_LABEL
	move	$s4, $a0
	move	$s1, $zero
	b	.LBB16_901
.LBB16_931:
.Ltmp713:                               # EH_LABEL
	b	.LBB16_933
.LBB16_932:
.Ltmp710:                               # EH_LABEL
.LBB16_933:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit320.i31
	move	$s4, $a0
	move	$s1, $zero
	b	.LBB16_903
.LBB16_934:                             # %.loopexit346.loopexit.i
.Ltmp707:                               # EH_LABEL
	move	$s3, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1824
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1736
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1648
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1560
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1472
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1384
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1296
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1208
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1120
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1032
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 944
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 768
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	ori	$s1, $zero, 1
	b	.LBB16_936
.LBB16_935:
.Ltmp704:                               # EH_LABEL
	move	$s3, $a0
	move	$s1, $zero
.LBB16_936:                             # %.loopexit346.i
	ld.d	$a0, $sp, 352
	addi.d	$a1, $sp, 368
	beq	$a0, $a1, .LBB16_938
# %bb.937:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i270.i
	ld.d	$a1, $sp, 368
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_938:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272.i
	move	$fp, $s2
	b	.LBB16_940
.LBB16_939:
.Ltmp701:                               # EH_LABEL
	move	$s3, $a0
	move	$s1, $zero
.LBB16_940:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272.i
	ld.d	$a0, $sp, 384
	addi.d	$a1, $sp, 400
	beq	$a0, $a1, .LBB16_943
# %bb.941:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273.i
	ld.d	$a1, $sp, 400
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB16_943
.LBB16_942:
.Ltmp698:                               # EH_LABEL
	move	$s3, $a0
	move	$s1, $zero
.LBB16_943:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275.i
	move	$s8, $fp
	b	.LBB16_945
.LBB16_944:
.Ltmp695:                               # EH_LABEL
	move	$s3, $a0
	move	$s1, $zero
.LBB16_945:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275.i
	ld.d	$a0, $sp, 416
	addi.d	$a1, $sp, 432
	beq	$a0, $a1, .LBB16_948
# %bb.946:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i276.i
	ld.d	$a1, $sp, 432
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB16_948
.LBB16_947:
.Ltmp692:                               # EH_LABEL
	move	$s3, $a0
	move	$s1, $zero
.LBB16_948:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit278.i
	move	$s6, $s8
	ld.d	$a0, $sp, 448
	addi.d	$a1, $sp, 464
	beq	$a0, $a1, .LBB16_952
.LBB16_949:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i279.i
	ld.d	$a1, $sp, 464
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB16_952
.LBB16_950:
.Ltmp689:                               # EH_LABEL
	move	$s3, $a0
	move	$s1, $zero
	ld.d	$a0, $sp, 448
	addi.d	$a1, $sp, 464
	bne	$a0, $a1, .LBB16_949
	b	.LBB16_952
.LBB16_951:
.Ltmp686:                               # EH_LABEL
	move	$s3, $a0
	move	$s1, $zero
.LBB16_952:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281.i
	move	$s4, $s6
	ld.d	$a0, $sp, 480
	addi.d	$a1, $sp, 496
	beq	$a0, $a1, .LBB16_954
.LBB16_953:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i282.i
	ld.d	$a1, $sp, 496
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_954:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284.i
	move	$s0, $s4
	ld.d	$a0, $sp, 512
	addi.d	$a1, $sp, 528
	beq	$a0, $a1, .LBB16_956
.LBB16_955:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i285.i
	ld.d	$a1, $sp, 528
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_956:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287.i
	ld.d	$a0, $sp, 544
	addi.d	$a1, $sp, 560
	bne	$a0, $a1, .LBB16_963
# %bb.957:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit290.i
	ld.d	$a0, $sp, 576
	addi.d	$a1, $sp, 592
	bne	$a0, $a1, .LBB16_964
.LBB16_958:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit293.i
	ld.d	$a0, $sp, 608
	addi.d	$a1, $sp, 624
	bne	$a0, $a1, .LBB16_965
.LBB16_959:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit296.i
	ld.d	$a0, $sp, 640
	addi.d	$a1, $sp, 656
	bne	$a0, $a1, .LBB16_966
.LBB16_960:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299.i
	ld.d	$a0, $sp, 672
	addi.d	$a1, $sp, 688
	bne	$a0, $a1, .LBB16_967
.LBB16_961:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302.i
	ld.d	$a0, $sp, 704
	addi.d	$a1, $sp, 720
	bne	$a0, $a1, .LBB16_968
.LBB16_962:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305.i
	ld.d	$a0, $sp, 736
	addi.d	$a1, $sp, 752
	bne	$a0, $a1, .LBB16_969
	b	.LBB16_970
.LBB16_963:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i288.i
	ld.d	$a1, $sp, 560
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 576
	addi.d	$a1, $sp, 592
	beq	$a0, $a1, .LBB16_958
.LBB16_964:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i291.i
	ld.d	$a1, $sp, 592
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 608
	addi.d	$a1, $sp, 624
	beq	$a0, $a1, .LBB16_959
.LBB16_965:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i294.i
	ld.d	$a1, $sp, 624
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 640
	addi.d	$a1, $sp, 656
	beq	$a0, $a1, .LBB16_960
.LBB16_966:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i297.i
	ld.d	$a1, $sp, 656
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 672
	addi.d	$a1, $sp, 688
	beq	$a0, $a1, .LBB16_961
.LBB16_967:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i300.i
	ld.d	$a1, $sp, 688
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 704
	addi.d	$a1, $sp, 720
	beq	$a0, $a1, .LBB16_962
.LBB16_968:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i303.i
	ld.d	$a1, $sp, 720
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 736
	addi.d	$a1, $sp, 752
	beq	$a0, $a1, .LBB16_970
.LBB16_969:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i306.i
	ld.d	$a1, $sp, 752
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_970:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308.i
	ori	$a0, $zero, 2440
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2456
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_972
# %bb.971:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i309.i
	ori	$a1, $zero, 2456
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_972:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit311.i
	ori	$a0, $zero, 2472
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2488
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_974
# %bb.973:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i312.i
	ori	$a1, $zero, 2488
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_974:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit314.i
	ori	$a0, $zero, 2504
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2520
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_976
# %bb.975:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i315.i
	ori	$a1, $zero, 2520
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_976:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit317.i
	ori	$a0, $zero, 2536
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2552
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_978
# %bb.977:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i318.i
	ori	$a1, $zero, 2552
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_978:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit320.i
	ori	$a0, $zero, 2568
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2584
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_980
# %bb.979:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i321.i
	ori	$a1, $zero, 2584
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_980:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit323.i
	addi.d	$fp, $sp, 768
	xor	$a0, $fp, $s0
	sltui	$a0, $a0, 1
	or	$a0, $s1, $a0
	bnez	$a0, .LBB16_982
	.p2align	4, , 16
.LBB16_981:                             # %.preheader.i4
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$s0, $s0, -88
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	bne	$s0, $fp, .LBB16_981
.LBB16_982:                             # %.loopexit.i5
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB16_983:
.Ltmp683:                               # EH_LABEL
	move	$s3, $a0
	move	$s1, $zero
	ld.d	$a0, $sp, 480
	addi.d	$a1, $sp, 496
	bne	$a0, $a1, .LBB16_953
	b	.LBB16_954
.LBB16_984:
.Ltmp680:                               # EH_LABEL
	move	$s3, $a0
	move	$s1, $zero
	b	.LBB16_954
.LBB16_985:
.Ltmp677:                               # EH_LABEL
	move	$s0, $s6
	move	$s3, $a0
	move	$s1, $zero
	ld.d	$a0, $sp, 512
	addi.d	$a1, $sp, 528
	bne	$a0, $a1, .LBB16_955
	b	.LBB16_956
.LBB16_986:
.Ltmp674:                               # EH_LABEL
	move	$s3, $a0
	move	$s1, $zero
	move	$s0, $s6
	b	.LBB16_956
.LBB16_987:
.Ltmp671:                               # EH_LABEL
	move	$s0, $s6
	move	$s3, $a0
	move	$s1, $zero
	b	.LBB16_956
.LBB16_988:
.Ltmp668:                               # EH_LABEL
	move	$s3, $a0
	move	$s1, $zero
	move	$s0, $s6
	ld.d	$a0, $sp, 576
	addi.d	$a1, $sp, 592
	beq	$a0, $a1, .LBB16_958
	b	.LBB16_964
.LBB16_989:
.Ltmp665:                               # EH_LABEL
	move	$s0, $s6
	move	$s3, $a0
	move	$s1, $zero
	ld.d	$a0, $sp, 576
	addi.d	$a1, $sp, 592
	beq	$a0, $a1, .LBB16_958
	b	.LBB16_964
.LBB16_990:
.Ltmp662:                               # EH_LABEL
	move	$s3, $a0
	move	$s1, $zero
	move	$s0, $s6
	ld.d	$a0, $sp, 608
	addi.d	$a1, $sp, 624
	beq	$a0, $a1, .LBB16_959
	b	.LBB16_965
.LBB16_991:
.Ltmp659:                               # EH_LABEL
	move	$s0, $s6
	move	$s3, $a0
	move	$s1, $zero
	ld.d	$a0, $sp, 608
	addi.d	$a1, $sp, 624
	beq	$a0, $a1, .LBB16_959
	b	.LBB16_965
.LBB16_992:
.Ltmp656:                               # EH_LABEL
	move	$s3, $a0
	move	$s1, $zero
	move	$s0, $s6
	ld.d	$a0, $sp, 640
	addi.d	$a1, $sp, 656
	beq	$a0, $a1, .LBB16_960
	b	.LBB16_966
.LBB16_993:
.Ltmp653:                               # EH_LABEL
	move	$s0, $s6
	move	$s3, $a0
	move	$s1, $zero
	ld.d	$a0, $sp, 640
	addi.d	$a1, $sp, 656
	beq	$a0, $a1, .LBB16_960
	b	.LBB16_966
.LBB16_994:
.Ltmp650:                               # EH_LABEL
	move	$s3, $a0
	move	$s1, $zero
	move	$s0, $s6
	ld.d	$a0, $sp, 672
	addi.d	$a1, $sp, 688
	beq	$a0, $a1, .LBB16_961
	b	.LBB16_967
.LBB16_995:
.Ltmp647:                               # EH_LABEL
	move	$s0, $s6
	move	$s3, $a0
	move	$s1, $zero
	ld.d	$a0, $sp, 672
	addi.d	$a1, $sp, 688
	beq	$a0, $a1, .LBB16_961
	b	.LBB16_967
.LBB16_996:
.Ltmp644:                               # EH_LABEL
	move	$s0, $s6
	move	$s3, $a0
	move	$s1, $zero
	ld.d	$a0, $sp, 704
	addi.d	$a1, $sp, 720
	beq	$a0, $a1, .LBB16_962
	b	.LBB16_968
.LBB16_997:
.Ltmp641:                               # EH_LABEL
	move	$s3, $a0
	move	$s1, $zero
	move	$s0, $s6
	ld.d	$a0, $sp, 736
	addi.d	$a1, $sp, 752
	bne	$a0, $a1, .LBB16_969
	b	.LBB16_970
.LBB16_998:
.Ltmp638:                               # EH_LABEL
	move	$s0, $s6
	move	$s3, $a0
	move	$s1, $zero
	ld.d	$a0, $sp, 736
	addi.d	$a1, $sp, 752
	bne	$a0, $a1, .LBB16_969
	b	.LBB16_970
.LBB16_999:
.Ltmp635:                               # EH_LABEL
	move	$s3, $a0
	move	$s1, $zero
	move	$s0, $s6
	b	.LBB16_970
.LBB16_1000:
.Ltmp632:                               # EH_LABEL
	move	$s0, $s6
	move	$s3, $a0
	move	$s1, $zero
	b	.LBB16_970
.LBB16_1001:
.Ltmp629:                               # EH_LABEL
	move	$s3, $a0
	move	$s1, $zero
	move	$s0, $s6
	b	.LBB16_972
.LBB16_1002:
.Ltmp626:                               # EH_LABEL
	move	$s0, $s4
	move	$s3, $a0
	move	$s1, $zero
	b	.LBB16_972
.LBB16_1003:
.Ltmp623:                               # EH_LABEL
	move	$s3, $a0
	move	$s1, $zero
	move	$s0, $s4
	b	.LBB16_974
.LBB16_1004:
.Ltmp620:                               # EH_LABEL
	move	$s0, $s4
	move	$s3, $a0
	move	$s1, $zero
	b	.LBB16_974
.LBB16_1005:
.Ltmp617:                               # EH_LABEL
	move	$s3, $a0
	move	$s1, $zero
	move	$s0, $s4
	b	.LBB16_976
.LBB16_1006:
.Ltmp614:                               # EH_LABEL
	move	$s3, $a0
	move	$s1, $zero
	b	.LBB16_976
.LBB16_1007:
.Ltmp611:                               # EH_LABEL
	b	.LBB16_1009
.LBB16_1008:
.Ltmp608:                               # EH_LABEL
.LBB16_1009:                            # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit320.i
	move	$s3, $a0
	move	$s1, $zero
	b	.LBB16_978
.LBB16_1010:                            # %.loopexit94.loopexit.i
.Ltmp605:                               # EH_LABEL
	move	$s4, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 768
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	ori	$fp, $zero, 1
	b	.LBB16_1012
.LBB16_1011:
.Ltmp602:                               # EH_LABEL
	move	$s4, $a0
	move	$fp, $zero
.LBB16_1012:                            # %.loopexit94.i
	ori	$a0, $zero, 2440
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2456
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_1015
# %bb.1013:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70.i
	ori	$a1, $zero, 2456
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB16_1015
.LBB16_1014:
.Ltmp599:                               # EH_LABEL
	move	$s4, $a0
	move	$fp, $zero
.LBB16_1015:                            # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.i
	move	$s2, $s3
	b	.LBB16_1017
.LBB16_1016:
.Ltmp596:                               # EH_LABEL
	move	$s4, $a0
	move	$fp, $zero
.LBB16_1017:                            # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.i
	ori	$a0, $zero, 2472
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2488
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_1020
# %bb.1018:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73.i
	ori	$a1, $zero, 2488
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB16_1020
.LBB16_1019:
.Ltmp593:                               # EH_LABEL
	move	$s4, $a0
	move	$fp, $zero
.LBB16_1020:                            # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75.i
	move	$s1, $s2
.LBB16_1021:                            # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75.i
	ori	$a0, $zero, 2504
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2520
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_1025
# %bb.1022:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76.i
	ori	$a1, $zero, 2520
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB16_1025
.LBB16_1023:
.Ltmp590:                               # EH_LABEL
	move	$s4, $a0
	move	$fp, $zero
	b	.LBB16_1021
.LBB16_1024:
.Ltmp587:                               # EH_LABEL
	move	$s4, $a0
	move	$fp, $zero
.LBB16_1025:                            # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78.i
	move	$s0, $s1
.LBB16_1026:                            # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78.i
	ori	$a0, $zero, 2536
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2552
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_1032
# %bb.1027:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79.i
	ori	$a1, $zero, 2552
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB16_1032
.LBB16_1028:
.Ltmp584:                               # EH_LABEL
	move	$s4, $a0
	move	$fp, $zero
	b	.LBB16_1026
.LBB16_1029:
.Ltmp581:                               # EH_LABEL
	b	.LBB16_1031
.LBB16_1030:
.Ltmp578:                               # EH_LABEL
.LBB16_1031:                            # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81.i
	move	$s4, $a0
	move	$fp, $zero
.LBB16_1032:                            # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81.i
	ori	$a0, $zero, 2568
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2584
	add.d	$a1, $sp, $a1
	beq	$a0, $a1, .LBB16_1034
# %bb.1033:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82.i
	ori	$a1, $zero, 2584
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_1034:                            # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84.i
	addi.d	$s1, $sp, 768
	xor	$a0, $s1, $s0
	sltui	$a0, $a0, 1
	or	$a0, $fp, $a0
	bnez	$a0, .LBB16_1042
	.p2align	4, , 16
.LBB16_1035:                            # %.preheader.i
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$s0, $s0, -88
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	bne	$s0, $s1, .LBB16_1035
	b	.LBB16_1042
.LBB16_1036:                            # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i
.Ltmp568:                               # EH_LABEL
	move	$s4, $a0
	b	.LBB16_1040
.LBB16_1037:
.Ltmp575:                               # EH_LABEL
	ld.d	$a2, $sp, 768
	move	$s4, $a0
	bne	$a2, $s2, .LBB16_1039
# %bb.1038:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i7.i
	bnez	$s1, .LBB16_1040
	b	.LBB16_1042
.LBB16_1039:                            # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i
	ld.d	$a0, $sp, 784
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	beqz	$s1, .LBB16_1042
.LBB16_1040:
	ori	$a1, $zero, 232
	move	$a0, $fp
.LBB16_1041:                            # %common.resume
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_1042:                            # %common.resume
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end16:
	.size	_GLOBAL__sub_I_user_counters_thousands_test.cc, .Lfunc_end16-_GLOBAL__sub_I_user_counters_thousands_test.cc
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table16:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase2-.Lttbaseref2
.Lttbaseref2:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Lfunc_begin4-.Lfunc_begin4    # >> Call Site 1 <<
	.uleb128 .Ltmp566-.Lfunc_begin4         #   Call between .Lfunc_begin4 and .Ltmp566
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp566-.Lfunc_begin4         # >> Call Site 2 <<
	.uleb128 .Ltmp567-.Ltmp566              #   Call between .Ltmp566 and .Ltmp567
	.uleb128 .Ltmp568-.Lfunc_begin4         #     jumps to .Ltmp568
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp569-.Lfunc_begin4         # >> Call Site 3 <<
	.uleb128 .Ltmp574-.Ltmp569              #   Call between .Ltmp569 and .Ltmp574
	.uleb128 .Ltmp575-.Lfunc_begin4         #     jumps to .Ltmp575
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp574-.Lfunc_begin4         # >> Call Site 4 <<
	.uleb128 .Ltmp576-.Ltmp574              #   Call between .Ltmp574 and .Ltmp576
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp576-.Lfunc_begin4         # >> Call Site 5 <<
	.uleb128 .Ltmp577-.Ltmp576              #   Call between .Ltmp576 and .Ltmp577
	.uleb128 .Ltmp578-.Lfunc_begin4         #     jumps to .Ltmp578
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp579-.Lfunc_begin4         # >> Call Site 6 <<
	.uleb128 .Ltmp580-.Ltmp579              #   Call between .Ltmp579 and .Ltmp580
	.uleb128 .Ltmp581-.Lfunc_begin4         #     jumps to .Ltmp581
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp580-.Lfunc_begin4         # >> Call Site 7 <<
	.uleb128 .Ltmp582-.Ltmp580              #   Call between .Ltmp580 and .Ltmp582
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp582-.Lfunc_begin4         # >> Call Site 8 <<
	.uleb128 .Ltmp583-.Ltmp582              #   Call between .Ltmp582 and .Ltmp583
	.uleb128 .Ltmp584-.Lfunc_begin4         #     jumps to .Ltmp584
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp585-.Lfunc_begin4         # >> Call Site 9 <<
	.uleb128 .Ltmp586-.Ltmp585              #   Call between .Ltmp585 and .Ltmp586
	.uleb128 .Ltmp587-.Lfunc_begin4         #     jumps to .Ltmp587
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp586-.Lfunc_begin4         # >> Call Site 10 <<
	.uleb128 .Ltmp588-.Ltmp586              #   Call between .Ltmp586 and .Ltmp588
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp588-.Lfunc_begin4         # >> Call Site 11 <<
	.uleb128 .Ltmp589-.Ltmp588              #   Call between .Ltmp588 and .Ltmp589
	.uleb128 .Ltmp590-.Lfunc_begin4         #     jumps to .Ltmp590
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp591-.Lfunc_begin4         # >> Call Site 12 <<
	.uleb128 .Ltmp592-.Ltmp591              #   Call between .Ltmp591 and .Ltmp592
	.uleb128 .Ltmp593-.Lfunc_begin4         #     jumps to .Ltmp593
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp592-.Lfunc_begin4         # >> Call Site 13 <<
	.uleb128 .Ltmp594-.Ltmp592              #   Call between .Ltmp592 and .Ltmp594
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp594-.Lfunc_begin4         # >> Call Site 14 <<
	.uleb128 .Ltmp595-.Ltmp594              #   Call between .Ltmp594 and .Ltmp595
	.uleb128 .Ltmp596-.Lfunc_begin4         #     jumps to .Ltmp596
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp597-.Lfunc_begin4         # >> Call Site 15 <<
	.uleb128 .Ltmp598-.Ltmp597              #   Call between .Ltmp597 and .Ltmp598
	.uleb128 .Ltmp599-.Lfunc_begin4         #     jumps to .Ltmp599
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp598-.Lfunc_begin4         # >> Call Site 16 <<
	.uleb128 .Ltmp600-.Ltmp598              #   Call between .Ltmp598 and .Ltmp600
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp600-.Lfunc_begin4         # >> Call Site 17 <<
	.uleb128 .Ltmp601-.Ltmp600              #   Call between .Ltmp600 and .Ltmp601
	.uleb128 .Ltmp602-.Lfunc_begin4         #     jumps to .Ltmp602
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp603-.Lfunc_begin4         # >> Call Site 18 <<
	.uleb128 .Ltmp604-.Ltmp603              #   Call between .Ltmp603 and .Ltmp604
	.uleb128 .Ltmp605-.Lfunc_begin4         #     jumps to .Ltmp605
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp604-.Lfunc_begin4         # >> Call Site 19 <<
	.uleb128 .Ltmp606-.Ltmp604              #   Call between .Ltmp604 and .Ltmp606
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp606-.Lfunc_begin4         # >> Call Site 20 <<
	.uleb128 .Ltmp607-.Ltmp606              #   Call between .Ltmp606 and .Ltmp607
	.uleb128 .Ltmp608-.Lfunc_begin4         #     jumps to .Ltmp608
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp609-.Lfunc_begin4         # >> Call Site 21 <<
	.uleb128 .Ltmp610-.Ltmp609              #   Call between .Ltmp609 and .Ltmp610
	.uleb128 .Ltmp611-.Lfunc_begin4         #     jumps to .Ltmp611
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp612-.Lfunc_begin4         # >> Call Site 22 <<
	.uleb128 .Ltmp613-.Ltmp612              #   Call between .Ltmp612 and .Ltmp613
	.uleb128 .Ltmp614-.Lfunc_begin4         #     jumps to .Ltmp614
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp615-.Lfunc_begin4         # >> Call Site 23 <<
	.uleb128 .Ltmp616-.Ltmp615              #   Call between .Ltmp615 and .Ltmp616
	.uleb128 .Ltmp617-.Lfunc_begin4         #     jumps to .Ltmp617
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp618-.Lfunc_begin4         # >> Call Site 24 <<
	.uleb128 .Ltmp619-.Ltmp618              #   Call between .Ltmp618 and .Ltmp619
	.uleb128 .Ltmp620-.Lfunc_begin4         #     jumps to .Ltmp620
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp621-.Lfunc_begin4         # >> Call Site 25 <<
	.uleb128 .Ltmp622-.Ltmp621              #   Call between .Ltmp621 and .Ltmp622
	.uleb128 .Ltmp623-.Lfunc_begin4         #     jumps to .Ltmp623
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp624-.Lfunc_begin4         # >> Call Site 26 <<
	.uleb128 .Ltmp625-.Ltmp624              #   Call between .Ltmp624 and .Ltmp625
	.uleb128 .Ltmp626-.Lfunc_begin4         #     jumps to .Ltmp626
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp627-.Lfunc_begin4         # >> Call Site 27 <<
	.uleb128 .Ltmp628-.Ltmp627              #   Call between .Ltmp627 and .Ltmp628
	.uleb128 .Ltmp629-.Lfunc_begin4         #     jumps to .Ltmp629
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp630-.Lfunc_begin4         # >> Call Site 28 <<
	.uleb128 .Ltmp631-.Ltmp630              #   Call between .Ltmp630 and .Ltmp631
	.uleb128 .Ltmp632-.Lfunc_begin4         #     jumps to .Ltmp632
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp633-.Lfunc_begin4         # >> Call Site 29 <<
	.uleb128 .Ltmp634-.Ltmp633              #   Call between .Ltmp633 and .Ltmp634
	.uleb128 .Ltmp635-.Lfunc_begin4         #     jumps to .Ltmp635
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp636-.Lfunc_begin4         # >> Call Site 30 <<
	.uleb128 .Ltmp637-.Ltmp636              #   Call between .Ltmp636 and .Ltmp637
	.uleb128 .Ltmp638-.Lfunc_begin4         #     jumps to .Ltmp638
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp639-.Lfunc_begin4         # >> Call Site 31 <<
	.uleb128 .Ltmp640-.Ltmp639              #   Call between .Ltmp639 and .Ltmp640
	.uleb128 .Ltmp641-.Lfunc_begin4         #     jumps to .Ltmp641
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp642-.Lfunc_begin4         # >> Call Site 32 <<
	.uleb128 .Ltmp643-.Ltmp642              #   Call between .Ltmp642 and .Ltmp643
	.uleb128 .Ltmp644-.Lfunc_begin4         #     jumps to .Ltmp644
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp645-.Lfunc_begin4         # >> Call Site 33 <<
	.uleb128 .Ltmp646-.Ltmp645              #   Call between .Ltmp645 and .Ltmp646
	.uleb128 .Ltmp647-.Lfunc_begin4         #     jumps to .Ltmp647
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp648-.Lfunc_begin4         # >> Call Site 34 <<
	.uleb128 .Ltmp649-.Ltmp648              #   Call between .Ltmp648 and .Ltmp649
	.uleb128 .Ltmp650-.Lfunc_begin4         #     jumps to .Ltmp650
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp651-.Lfunc_begin4         # >> Call Site 35 <<
	.uleb128 .Ltmp652-.Ltmp651              #   Call between .Ltmp651 and .Ltmp652
	.uleb128 .Ltmp653-.Lfunc_begin4         #     jumps to .Ltmp653
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp654-.Lfunc_begin4         # >> Call Site 36 <<
	.uleb128 .Ltmp655-.Ltmp654              #   Call between .Ltmp654 and .Ltmp655
	.uleb128 .Ltmp656-.Lfunc_begin4         #     jumps to .Ltmp656
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp657-.Lfunc_begin4         # >> Call Site 37 <<
	.uleb128 .Ltmp658-.Ltmp657              #   Call between .Ltmp657 and .Ltmp658
	.uleb128 .Ltmp659-.Lfunc_begin4         #     jumps to .Ltmp659
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp660-.Lfunc_begin4         # >> Call Site 38 <<
	.uleb128 .Ltmp661-.Ltmp660              #   Call between .Ltmp660 and .Ltmp661
	.uleb128 .Ltmp662-.Lfunc_begin4         #     jumps to .Ltmp662
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp663-.Lfunc_begin4         # >> Call Site 39 <<
	.uleb128 .Ltmp664-.Ltmp663              #   Call between .Ltmp663 and .Ltmp664
	.uleb128 .Ltmp665-.Lfunc_begin4         #     jumps to .Ltmp665
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp666-.Lfunc_begin4         # >> Call Site 40 <<
	.uleb128 .Ltmp667-.Ltmp666              #   Call between .Ltmp666 and .Ltmp667
	.uleb128 .Ltmp668-.Lfunc_begin4         #     jumps to .Ltmp668
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp669-.Lfunc_begin4         # >> Call Site 41 <<
	.uleb128 .Ltmp670-.Ltmp669              #   Call between .Ltmp669 and .Ltmp670
	.uleb128 .Ltmp671-.Lfunc_begin4         #     jumps to .Ltmp671
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp672-.Lfunc_begin4         # >> Call Site 42 <<
	.uleb128 .Ltmp673-.Ltmp672              #   Call between .Ltmp672 and .Ltmp673
	.uleb128 .Ltmp674-.Lfunc_begin4         #     jumps to .Ltmp674
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp675-.Lfunc_begin4         # >> Call Site 43 <<
	.uleb128 .Ltmp676-.Ltmp675              #   Call between .Ltmp675 and .Ltmp676
	.uleb128 .Ltmp677-.Lfunc_begin4         #     jumps to .Ltmp677
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp678-.Lfunc_begin4         # >> Call Site 44 <<
	.uleb128 .Ltmp679-.Ltmp678              #   Call between .Ltmp678 and .Ltmp679
	.uleb128 .Ltmp680-.Lfunc_begin4         #     jumps to .Ltmp680
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp681-.Lfunc_begin4         # >> Call Site 45 <<
	.uleb128 .Ltmp682-.Ltmp681              #   Call between .Ltmp681 and .Ltmp682
	.uleb128 .Ltmp683-.Lfunc_begin4         #     jumps to .Ltmp683
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp684-.Lfunc_begin4         # >> Call Site 46 <<
	.uleb128 .Ltmp685-.Ltmp684              #   Call between .Ltmp684 and .Ltmp685
	.uleb128 .Ltmp686-.Lfunc_begin4         #     jumps to .Ltmp686
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp687-.Lfunc_begin4         # >> Call Site 47 <<
	.uleb128 .Ltmp688-.Ltmp687              #   Call between .Ltmp687 and .Ltmp688
	.uleb128 .Ltmp689-.Lfunc_begin4         #     jumps to .Ltmp689
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp690-.Lfunc_begin4         # >> Call Site 48 <<
	.uleb128 .Ltmp691-.Ltmp690              #   Call between .Ltmp690 and .Ltmp691
	.uleb128 .Ltmp692-.Lfunc_begin4         #     jumps to .Ltmp692
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp693-.Lfunc_begin4         # >> Call Site 49 <<
	.uleb128 .Ltmp694-.Ltmp693              #   Call between .Ltmp693 and .Ltmp694
	.uleb128 .Ltmp695-.Lfunc_begin4         #     jumps to .Ltmp695
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp696-.Lfunc_begin4         # >> Call Site 50 <<
	.uleb128 .Ltmp697-.Ltmp696              #   Call between .Ltmp696 and .Ltmp697
	.uleb128 .Ltmp698-.Lfunc_begin4         #     jumps to .Ltmp698
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp699-.Lfunc_begin4         # >> Call Site 51 <<
	.uleb128 .Ltmp700-.Ltmp699              #   Call between .Ltmp699 and .Ltmp700
	.uleb128 .Ltmp701-.Lfunc_begin4         #     jumps to .Ltmp701
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp702-.Lfunc_begin4         # >> Call Site 52 <<
	.uleb128 .Ltmp703-.Ltmp702              #   Call between .Ltmp702 and .Ltmp703
	.uleb128 .Ltmp704-.Lfunc_begin4         #     jumps to .Ltmp704
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp705-.Lfunc_begin4         # >> Call Site 53 <<
	.uleb128 .Ltmp706-.Ltmp705              #   Call between .Ltmp705 and .Ltmp706
	.uleb128 .Ltmp707-.Lfunc_begin4         #     jumps to .Ltmp707
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp706-.Lfunc_begin4         # >> Call Site 54 <<
	.uleb128 .Ltmp708-.Ltmp706              #   Call between .Ltmp706 and .Ltmp708
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp708-.Lfunc_begin4         # >> Call Site 55 <<
	.uleb128 .Ltmp709-.Ltmp708              #   Call between .Ltmp708 and .Ltmp709
	.uleb128 .Ltmp710-.Lfunc_begin4         #     jumps to .Ltmp710
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp711-.Lfunc_begin4         # >> Call Site 56 <<
	.uleb128 .Ltmp712-.Ltmp711              #   Call between .Ltmp711 and .Ltmp712
	.uleb128 .Ltmp713-.Lfunc_begin4         #     jumps to .Ltmp713
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp714-.Lfunc_begin4         # >> Call Site 57 <<
	.uleb128 .Ltmp715-.Ltmp714              #   Call between .Ltmp714 and .Ltmp715
	.uleb128 .Ltmp716-.Lfunc_begin4         #     jumps to .Ltmp716
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp717-.Lfunc_begin4         # >> Call Site 58 <<
	.uleb128 .Ltmp718-.Ltmp717              #   Call between .Ltmp717 and .Ltmp718
	.uleb128 .Ltmp719-.Lfunc_begin4         #     jumps to .Ltmp719
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp720-.Lfunc_begin4         # >> Call Site 59 <<
	.uleb128 .Ltmp721-.Ltmp720              #   Call between .Ltmp720 and .Ltmp721
	.uleb128 .Ltmp722-.Lfunc_begin4         #     jumps to .Ltmp722
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp723-.Lfunc_begin4         # >> Call Site 60 <<
	.uleb128 .Ltmp724-.Ltmp723              #   Call between .Ltmp723 and .Ltmp724
	.uleb128 .Ltmp725-.Lfunc_begin4         #     jumps to .Ltmp725
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp726-.Lfunc_begin4         # >> Call Site 61 <<
	.uleb128 .Ltmp727-.Ltmp726              #   Call between .Ltmp726 and .Ltmp727
	.uleb128 .Ltmp728-.Lfunc_begin4         #     jumps to .Ltmp728
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp729-.Lfunc_begin4         # >> Call Site 62 <<
	.uleb128 .Ltmp730-.Ltmp729              #   Call between .Ltmp729 and .Ltmp730
	.uleb128 .Ltmp731-.Lfunc_begin4         #     jumps to .Ltmp731
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp732-.Lfunc_begin4         # >> Call Site 63 <<
	.uleb128 .Ltmp733-.Ltmp732              #   Call between .Ltmp732 and .Ltmp733
	.uleb128 .Ltmp734-.Lfunc_begin4         #     jumps to .Ltmp734
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp735-.Lfunc_begin4         # >> Call Site 64 <<
	.uleb128 .Ltmp736-.Ltmp735              #   Call between .Ltmp735 and .Ltmp736
	.uleb128 .Ltmp737-.Lfunc_begin4         #     jumps to .Ltmp737
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp738-.Lfunc_begin4         # >> Call Site 65 <<
	.uleb128 .Ltmp739-.Ltmp738              #   Call between .Ltmp738 and .Ltmp739
	.uleb128 .Ltmp740-.Lfunc_begin4         #     jumps to .Ltmp740
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp741-.Lfunc_begin4         # >> Call Site 66 <<
	.uleb128 .Ltmp742-.Ltmp741              #   Call between .Ltmp741 and .Ltmp742
	.uleb128 .Ltmp743-.Lfunc_begin4         #     jumps to .Ltmp743
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp744-.Lfunc_begin4         # >> Call Site 67 <<
	.uleb128 .Ltmp745-.Ltmp744              #   Call between .Ltmp744 and .Ltmp745
	.uleb128 .Ltmp746-.Lfunc_begin4         #     jumps to .Ltmp746
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp747-.Lfunc_begin4         # >> Call Site 68 <<
	.uleb128 .Ltmp748-.Ltmp747              #   Call between .Ltmp747 and .Ltmp748
	.uleb128 .Ltmp749-.Lfunc_begin4         #     jumps to .Ltmp749
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp750-.Lfunc_begin4         # >> Call Site 69 <<
	.uleb128 .Ltmp751-.Ltmp750              #   Call between .Ltmp750 and .Ltmp751
	.uleb128 .Ltmp752-.Lfunc_begin4         #     jumps to .Ltmp752
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp753-.Lfunc_begin4         # >> Call Site 70 <<
	.uleb128 .Ltmp754-.Ltmp753              #   Call between .Ltmp753 and .Ltmp754
	.uleb128 .Ltmp755-.Lfunc_begin4         #     jumps to .Ltmp755
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp756-.Lfunc_begin4         # >> Call Site 71 <<
	.uleb128 .Ltmp757-.Ltmp756              #   Call between .Ltmp756 and .Ltmp757
	.uleb128 .Ltmp758-.Lfunc_begin4         #     jumps to .Ltmp758
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp759-.Lfunc_begin4         # >> Call Site 72 <<
	.uleb128 .Ltmp760-.Ltmp759              #   Call between .Ltmp759 and .Ltmp760
	.uleb128 .Ltmp761-.Lfunc_begin4         #     jumps to .Ltmp761
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp762-.Lfunc_begin4         # >> Call Site 73 <<
	.uleb128 .Ltmp763-.Ltmp762              #   Call between .Ltmp762 and .Ltmp763
	.uleb128 .Ltmp764-.Lfunc_begin4         #     jumps to .Ltmp764
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp765-.Lfunc_begin4         # >> Call Site 74 <<
	.uleb128 .Ltmp766-.Ltmp765              #   Call between .Ltmp765 and .Ltmp766
	.uleb128 .Ltmp767-.Lfunc_begin4         #     jumps to .Ltmp767
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp768-.Lfunc_begin4         # >> Call Site 75 <<
	.uleb128 .Ltmp769-.Ltmp768              #   Call between .Ltmp768 and .Ltmp769
	.uleb128 .Ltmp770-.Lfunc_begin4         #     jumps to .Ltmp770
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp771-.Lfunc_begin4         # >> Call Site 76 <<
	.uleb128 .Ltmp772-.Ltmp771              #   Call between .Ltmp771 and .Ltmp772
	.uleb128 .Ltmp773-.Lfunc_begin4         #     jumps to .Ltmp773
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp774-.Lfunc_begin4         # >> Call Site 77 <<
	.uleb128 .Ltmp775-.Ltmp774              #   Call between .Ltmp774 and .Ltmp775
	.uleb128 .Ltmp776-.Lfunc_begin4         #     jumps to .Ltmp776
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp777-.Lfunc_begin4         # >> Call Site 78 <<
	.uleb128 .Ltmp778-.Ltmp777              #   Call between .Ltmp777 and .Ltmp778
	.uleb128 .Ltmp779-.Lfunc_begin4         #     jumps to .Ltmp779
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp780-.Lfunc_begin4         # >> Call Site 79 <<
	.uleb128 .Ltmp781-.Ltmp780              #   Call between .Ltmp780 and .Ltmp781
	.uleb128 .Ltmp782-.Lfunc_begin4         #     jumps to .Ltmp782
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp783-.Lfunc_begin4         # >> Call Site 80 <<
	.uleb128 .Ltmp784-.Ltmp783              #   Call between .Ltmp783 and .Ltmp784
	.uleb128 .Ltmp785-.Lfunc_begin4         #     jumps to .Ltmp785
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp786-.Lfunc_begin4         # >> Call Site 81 <<
	.uleb128 .Ltmp787-.Ltmp786              #   Call between .Ltmp786 and .Ltmp787
	.uleb128 .Ltmp788-.Lfunc_begin4         #     jumps to .Ltmp788
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp789-.Lfunc_begin4         # >> Call Site 82 <<
	.uleb128 .Ltmp790-.Ltmp789              #   Call between .Ltmp789 and .Ltmp790
	.uleb128 .Ltmp791-.Lfunc_begin4         #     jumps to .Ltmp791
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp792-.Lfunc_begin4         # >> Call Site 83 <<
	.uleb128 .Ltmp793-.Ltmp792              #   Call between .Ltmp792 and .Ltmp793
	.uleb128 .Ltmp794-.Lfunc_begin4         #     jumps to .Ltmp794
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp795-.Lfunc_begin4         # >> Call Site 84 <<
	.uleb128 .Ltmp796-.Ltmp795              #   Call between .Ltmp795 and .Ltmp796
	.uleb128 .Ltmp797-.Lfunc_begin4         #     jumps to .Ltmp797
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp798-.Lfunc_begin4         # >> Call Site 85 <<
	.uleb128 .Ltmp799-.Ltmp798              #   Call between .Ltmp798 and .Ltmp799
	.uleb128 .Ltmp800-.Lfunc_begin4         #     jumps to .Ltmp800
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp801-.Lfunc_begin4         # >> Call Site 86 <<
	.uleb128 .Ltmp802-.Ltmp801              #   Call between .Ltmp801 and .Ltmp802
	.uleb128 .Ltmp803-.Lfunc_begin4         #     jumps to .Ltmp803
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp804-.Lfunc_begin4         # >> Call Site 87 <<
	.uleb128 .Ltmp805-.Ltmp804              #   Call between .Ltmp804 and .Ltmp805
	.uleb128 .Ltmp806-.Lfunc_begin4         #     jumps to .Ltmp806
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp807-.Lfunc_begin4         # >> Call Site 88 <<
	.uleb128 .Ltmp808-.Ltmp807              #   Call between .Ltmp807 and .Ltmp808
	.uleb128 .Ltmp809-.Lfunc_begin4         #     jumps to .Ltmp809
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp808-.Lfunc_begin4         # >> Call Site 89 <<
	.uleb128 .Ltmp810-.Ltmp808              #   Call between .Ltmp808 and .Ltmp810
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp810-.Lfunc_begin4         # >> Call Site 90 <<
	.uleb128 .Ltmp811-.Ltmp810              #   Call between .Ltmp810 and .Ltmp811
	.uleb128 .Ltmp812-.Lfunc_begin4         #     jumps to .Ltmp812
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp813-.Lfunc_begin4         # >> Call Site 91 <<
	.uleb128 .Ltmp814-.Ltmp813              #   Call between .Ltmp813 and .Ltmp814
	.uleb128 .Ltmp815-.Lfunc_begin4         #     jumps to .Ltmp815
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp816-.Lfunc_begin4         # >> Call Site 92 <<
	.uleb128 .Ltmp817-.Ltmp816              #   Call between .Ltmp816 and .Ltmp817
	.uleb128 .Ltmp818-.Lfunc_begin4         #     jumps to .Ltmp818
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp819-.Lfunc_begin4         # >> Call Site 93 <<
	.uleb128 .Ltmp820-.Ltmp819              #   Call between .Ltmp819 and .Ltmp820
	.uleb128 .Ltmp821-.Lfunc_begin4         #     jumps to .Ltmp821
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp822-.Lfunc_begin4         # >> Call Site 94 <<
	.uleb128 .Ltmp823-.Ltmp822              #   Call between .Ltmp822 and .Ltmp823
	.uleb128 .Ltmp824-.Lfunc_begin4         #     jumps to .Ltmp824
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp825-.Lfunc_begin4         # >> Call Site 95 <<
	.uleb128 .Ltmp826-.Ltmp825              #   Call between .Ltmp825 and .Ltmp826
	.uleb128 .Ltmp827-.Lfunc_begin4         #     jumps to .Ltmp827
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp828-.Lfunc_begin4         # >> Call Site 96 <<
	.uleb128 .Ltmp829-.Ltmp828              #   Call between .Ltmp828 and .Ltmp829
	.uleb128 .Ltmp830-.Lfunc_begin4         #     jumps to .Ltmp830
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp831-.Lfunc_begin4         # >> Call Site 97 <<
	.uleb128 .Ltmp832-.Ltmp831              #   Call between .Ltmp831 and .Ltmp832
	.uleb128 .Ltmp833-.Lfunc_begin4         #     jumps to .Ltmp833
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp834-.Lfunc_begin4         # >> Call Site 98 <<
	.uleb128 .Ltmp835-.Ltmp834              #   Call between .Ltmp834 and .Ltmp835
	.uleb128 .Ltmp836-.Lfunc_begin4         #     jumps to .Ltmp836
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp837-.Lfunc_begin4         # >> Call Site 99 <<
	.uleb128 .Ltmp838-.Ltmp837              #   Call between .Ltmp837 and .Ltmp838
	.uleb128 .Ltmp839-.Lfunc_begin4         #     jumps to .Ltmp839
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp840-.Lfunc_begin4         # >> Call Site 100 <<
	.uleb128 .Ltmp841-.Ltmp840              #   Call between .Ltmp840 and .Ltmp841
	.uleb128 .Ltmp842-.Lfunc_begin4         #     jumps to .Ltmp842
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp843-.Lfunc_begin4         # >> Call Site 101 <<
	.uleb128 .Ltmp844-.Ltmp843              #   Call between .Ltmp843 and .Ltmp844
	.uleb128 .Ltmp845-.Lfunc_begin4         #     jumps to .Ltmp845
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp846-.Lfunc_begin4         # >> Call Site 102 <<
	.uleb128 .Ltmp847-.Ltmp846              #   Call between .Ltmp846 and .Ltmp847
	.uleb128 .Ltmp848-.Lfunc_begin4         #     jumps to .Ltmp848
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp849-.Lfunc_begin4         # >> Call Site 103 <<
	.uleb128 .Ltmp850-.Ltmp849              #   Call between .Ltmp849 and .Ltmp850
	.uleb128 .Ltmp851-.Lfunc_begin4         #     jumps to .Ltmp851
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp852-.Lfunc_begin4         # >> Call Site 104 <<
	.uleb128 .Ltmp853-.Ltmp852              #   Call between .Ltmp852 and .Ltmp853
	.uleb128 .Ltmp854-.Lfunc_begin4         #     jumps to .Ltmp854
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp855-.Lfunc_begin4         # >> Call Site 105 <<
	.uleb128 .Ltmp856-.Ltmp855              #   Call between .Ltmp855 and .Ltmp856
	.uleb128 .Ltmp857-.Lfunc_begin4         #     jumps to .Ltmp857
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp858-.Lfunc_begin4         # >> Call Site 106 <<
	.uleb128 .Ltmp859-.Ltmp858              #   Call between .Ltmp858 and .Ltmp859
	.uleb128 .Ltmp860-.Lfunc_begin4         #     jumps to .Ltmp860
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp861-.Lfunc_begin4         # >> Call Site 107 <<
	.uleb128 .Ltmp862-.Ltmp861              #   Call between .Ltmp861 and .Ltmp862
	.uleb128 .Ltmp863-.Lfunc_begin4         #     jumps to .Ltmp863
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp864-.Lfunc_begin4         # >> Call Site 108 <<
	.uleb128 .Ltmp865-.Ltmp864              #   Call between .Ltmp864 and .Ltmp865
	.uleb128 .Ltmp866-.Lfunc_begin4         #     jumps to .Ltmp866
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp867-.Lfunc_begin4         # >> Call Site 109 <<
	.uleb128 .Ltmp868-.Ltmp867              #   Call between .Ltmp867 and .Ltmp868
	.uleb128 .Ltmp869-.Lfunc_begin4         #     jumps to .Ltmp869
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp870-.Lfunc_begin4         # >> Call Site 110 <<
	.uleb128 .Ltmp871-.Ltmp870              #   Call between .Ltmp870 and .Ltmp871
	.uleb128 .Ltmp872-.Lfunc_begin4         #     jumps to .Ltmp872
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp873-.Lfunc_begin4         # >> Call Site 111 <<
	.uleb128 .Ltmp874-.Ltmp873              #   Call between .Ltmp873 and .Ltmp874
	.uleb128 .Ltmp875-.Lfunc_begin4         #     jumps to .Ltmp875
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp876-.Lfunc_begin4         # >> Call Site 112 <<
	.uleb128 .Ltmp877-.Ltmp876              #   Call between .Ltmp876 and .Ltmp877
	.uleb128 .Ltmp878-.Lfunc_begin4         #     jumps to .Ltmp878
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp879-.Lfunc_begin4         # >> Call Site 113 <<
	.uleb128 .Ltmp880-.Ltmp879              #   Call between .Ltmp879 and .Ltmp880
	.uleb128 .Ltmp881-.Lfunc_begin4         #     jumps to .Ltmp881
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp882-.Lfunc_begin4         # >> Call Site 114 <<
	.uleb128 .Ltmp883-.Ltmp882              #   Call between .Ltmp882 and .Ltmp883
	.uleb128 .Ltmp884-.Lfunc_begin4         #     jumps to .Ltmp884
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp885-.Lfunc_begin4         # >> Call Site 115 <<
	.uleb128 .Ltmp886-.Ltmp885              #   Call between .Ltmp885 and .Ltmp886
	.uleb128 .Ltmp887-.Lfunc_begin4         #     jumps to .Ltmp887
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp888-.Lfunc_begin4         # >> Call Site 116 <<
	.uleb128 .Ltmp889-.Ltmp888              #   Call between .Ltmp888 and .Ltmp889
	.uleb128 .Ltmp890-.Lfunc_begin4         #     jumps to .Ltmp890
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp891-.Lfunc_begin4         # >> Call Site 117 <<
	.uleb128 .Ltmp892-.Ltmp891              #   Call between .Ltmp891 and .Ltmp892
	.uleb128 .Ltmp893-.Lfunc_begin4         #     jumps to .Ltmp893
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp894-.Lfunc_begin4         # >> Call Site 118 <<
	.uleb128 .Ltmp895-.Ltmp894              #   Call between .Ltmp894 and .Ltmp895
	.uleb128 .Ltmp896-.Lfunc_begin4         #     jumps to .Ltmp896
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp897-.Lfunc_begin4         # >> Call Site 119 <<
	.uleb128 .Ltmp898-.Ltmp897              #   Call between .Ltmp897 and .Ltmp898
	.uleb128 .Ltmp899-.Lfunc_begin4         #     jumps to .Ltmp899
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp900-.Lfunc_begin4         # >> Call Site 120 <<
	.uleb128 .Ltmp901-.Ltmp900              #   Call between .Ltmp900 and .Ltmp901
	.uleb128 .Ltmp902-.Lfunc_begin4         #     jumps to .Ltmp902
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp903-.Lfunc_begin4         # >> Call Site 121 <<
	.uleb128 .Ltmp904-.Ltmp903              #   Call between .Ltmp903 and .Ltmp904
	.uleb128 .Ltmp905-.Lfunc_begin4         #     jumps to .Ltmp905
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp906-.Lfunc_begin4         # >> Call Site 122 <<
	.uleb128 .Ltmp907-.Ltmp906              #   Call between .Ltmp906 and .Ltmp907
	.uleb128 .Ltmp908-.Lfunc_begin4         #     jumps to .Ltmp908
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp909-.Lfunc_begin4         # >> Call Site 123 <<
	.uleb128 .Ltmp910-.Ltmp909              #   Call between .Ltmp909 and .Ltmp910
	.uleb128 .Ltmp911-.Lfunc_begin4         #     jumps to .Ltmp911
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp912-.Lfunc_begin4         # >> Call Site 124 <<
	.uleb128 .Ltmp913-.Ltmp912              #   Call between .Ltmp912 and .Ltmp913
	.uleb128 .Ltmp914-.Lfunc_begin4         #     jumps to .Ltmp914
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp915-.Lfunc_begin4         # >> Call Site 125 <<
	.uleb128 .Ltmp916-.Ltmp915              #   Call between .Ltmp915 and .Ltmp916
	.uleb128 .Ltmp917-.Lfunc_begin4         #     jumps to .Ltmp917
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp916-.Lfunc_begin4         # >> Call Site 126 <<
	.uleb128 .Ltmp918-.Ltmp916              #   Call between .Ltmp916 and .Ltmp918
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp918-.Lfunc_begin4         # >> Call Site 127 <<
	.uleb128 .Ltmp919-.Ltmp918              #   Call between .Ltmp918 and .Ltmp919
	.uleb128 .Ltmp920-.Lfunc_begin4         #     jumps to .Ltmp920
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp921-.Lfunc_begin4         # >> Call Site 128 <<
	.uleb128 .Ltmp922-.Ltmp921              #   Call between .Ltmp921 and .Ltmp922
	.uleb128 .Ltmp923-.Lfunc_begin4         #     jumps to .Ltmp923
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp924-.Lfunc_begin4         # >> Call Site 129 <<
	.uleb128 .Ltmp925-.Ltmp924              #   Call between .Ltmp924 and .Ltmp925
	.uleb128 .Ltmp926-.Lfunc_begin4         #     jumps to .Ltmp926
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp927-.Lfunc_begin4         # >> Call Site 130 <<
	.uleb128 .Ltmp928-.Ltmp927              #   Call between .Ltmp927 and .Ltmp928
	.uleb128 .Ltmp929-.Lfunc_begin4         #     jumps to .Ltmp929
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp930-.Lfunc_begin4         # >> Call Site 131 <<
	.uleb128 .Ltmp931-.Ltmp930              #   Call between .Ltmp930 and .Ltmp931
	.uleb128 .Ltmp932-.Lfunc_begin4         #     jumps to .Ltmp932
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp933-.Lfunc_begin4         # >> Call Site 132 <<
	.uleb128 .Ltmp934-.Ltmp933              #   Call between .Ltmp933 and .Ltmp934
	.uleb128 .Ltmp935-.Lfunc_begin4         #     jumps to .Ltmp935
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp936-.Lfunc_begin4         # >> Call Site 133 <<
	.uleb128 .Ltmp937-.Ltmp936              #   Call between .Ltmp936 and .Ltmp937
	.uleb128 .Ltmp938-.Lfunc_begin4         #     jumps to .Ltmp938
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp939-.Lfunc_begin4         # >> Call Site 134 <<
	.uleb128 .Ltmp940-.Ltmp939              #   Call between .Ltmp939 and .Ltmp940
	.uleb128 .Ltmp941-.Lfunc_begin4         #     jumps to .Ltmp941
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp942-.Lfunc_begin4         # >> Call Site 135 <<
	.uleb128 .Ltmp943-.Ltmp942              #   Call between .Ltmp942 and .Ltmp943
	.uleb128 .Ltmp944-.Lfunc_begin4         #     jumps to .Ltmp944
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp945-.Lfunc_begin4         # >> Call Site 136 <<
	.uleb128 .Ltmp946-.Ltmp945              #   Call between .Ltmp945 and .Ltmp946
	.uleb128 .Ltmp947-.Lfunc_begin4         #     jumps to .Ltmp947
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp948-.Lfunc_begin4         # >> Call Site 137 <<
	.uleb128 .Ltmp949-.Ltmp948              #   Call between .Ltmp948 and .Ltmp949
	.uleb128 .Ltmp950-.Lfunc_begin4         #     jumps to .Ltmp950
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp951-.Lfunc_begin4         # >> Call Site 138 <<
	.uleb128 .Ltmp952-.Ltmp951              #   Call between .Ltmp951 and .Ltmp952
	.uleb128 .Ltmp953-.Lfunc_begin4         #     jumps to .Ltmp953
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp954-.Lfunc_begin4         # >> Call Site 139 <<
	.uleb128 .Ltmp955-.Ltmp954              #   Call between .Ltmp954 and .Ltmp955
	.uleb128 .Ltmp956-.Lfunc_begin4         #     jumps to .Ltmp956
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp957-.Lfunc_begin4         # >> Call Site 140 <<
	.uleb128 .Ltmp958-.Ltmp957              #   Call between .Ltmp957 and .Ltmp958
	.uleb128 .Ltmp959-.Lfunc_begin4         #     jumps to .Ltmp959
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp960-.Lfunc_begin4         # >> Call Site 141 <<
	.uleb128 .Ltmp961-.Ltmp960              #   Call between .Ltmp960 and .Ltmp961
	.uleb128 .Ltmp962-.Lfunc_begin4         #     jumps to .Ltmp962
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp963-.Lfunc_begin4         # >> Call Site 142 <<
	.uleb128 .Ltmp964-.Ltmp963              #   Call between .Ltmp963 and .Ltmp964
	.uleb128 .Ltmp965-.Lfunc_begin4         #     jumps to .Ltmp965
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp966-.Lfunc_begin4         # >> Call Site 143 <<
	.uleb128 .Ltmp967-.Ltmp966              #   Call between .Ltmp966 and .Ltmp967
	.uleb128 .Ltmp968-.Lfunc_begin4         #     jumps to .Ltmp968
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp969-.Lfunc_begin4         # >> Call Site 144 <<
	.uleb128 .Ltmp970-.Ltmp969              #   Call between .Ltmp969 and .Ltmp970
	.uleb128 .Ltmp971-.Lfunc_begin4         #     jumps to .Ltmp971
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp972-.Lfunc_begin4         # >> Call Site 145 <<
	.uleb128 .Ltmp973-.Ltmp972              #   Call between .Ltmp972 and .Ltmp973
	.uleb128 .Ltmp974-.Lfunc_begin4         #     jumps to .Ltmp974
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp975-.Lfunc_begin4         # >> Call Site 146 <<
	.uleb128 .Ltmp976-.Ltmp975              #   Call between .Ltmp975 and .Ltmp976
	.uleb128 .Ltmp977-.Lfunc_begin4         #     jumps to .Ltmp977
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp978-.Lfunc_begin4         # >> Call Site 147 <<
	.uleb128 .Ltmp979-.Ltmp978              #   Call between .Ltmp978 and .Ltmp979
	.uleb128 .Ltmp980-.Lfunc_begin4         #     jumps to .Ltmp980
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp981-.Lfunc_begin4         # >> Call Site 148 <<
	.uleb128 .Ltmp982-.Ltmp981              #   Call between .Ltmp981 and .Ltmp982
	.uleb128 .Ltmp983-.Lfunc_begin4         #     jumps to .Ltmp983
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp984-.Lfunc_begin4         # >> Call Site 149 <<
	.uleb128 .Ltmp985-.Ltmp984              #   Call between .Ltmp984 and .Ltmp985
	.uleb128 .Ltmp986-.Lfunc_begin4         #     jumps to .Ltmp986
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp987-.Lfunc_begin4         # >> Call Site 150 <<
	.uleb128 .Ltmp988-.Ltmp987              #   Call between .Ltmp987 and .Ltmp988
	.uleb128 .Ltmp989-.Lfunc_begin4         #     jumps to .Ltmp989
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp990-.Lfunc_begin4         # >> Call Site 151 <<
	.uleb128 .Ltmp991-.Ltmp990              #   Call between .Ltmp990 and .Ltmp991
	.uleb128 .Ltmp992-.Lfunc_begin4         #     jumps to .Ltmp992
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp993-.Lfunc_begin4         # >> Call Site 152 <<
	.uleb128 .Ltmp994-.Ltmp993              #   Call between .Ltmp993 and .Ltmp994
	.uleb128 .Ltmp995-.Lfunc_begin4         #     jumps to .Ltmp995
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp996-.Lfunc_begin4         # >> Call Site 153 <<
	.uleb128 .Ltmp997-.Ltmp996              #   Call between .Ltmp996 and .Ltmp997
	.uleb128 .Ltmp998-.Lfunc_begin4         #     jumps to .Ltmp998
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp999-.Lfunc_begin4         # >> Call Site 154 <<
	.uleb128 .Ltmp1000-.Ltmp999             #   Call between .Ltmp999 and .Ltmp1000
	.uleb128 .Ltmp1001-.Lfunc_begin4        #     jumps to .Ltmp1001
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1002-.Lfunc_begin4        # >> Call Site 155 <<
	.uleb128 .Ltmp1003-.Ltmp1002            #   Call between .Ltmp1002 and .Ltmp1003
	.uleb128 .Ltmp1004-.Lfunc_begin4        #     jumps to .Ltmp1004
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1005-.Lfunc_begin4        # >> Call Site 156 <<
	.uleb128 .Ltmp1006-.Ltmp1005            #   Call between .Ltmp1005 and .Ltmp1006
	.uleb128 .Ltmp1007-.Lfunc_begin4        #     jumps to .Ltmp1007
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1008-.Lfunc_begin4        # >> Call Site 157 <<
	.uleb128 .Ltmp1009-.Ltmp1008            #   Call between .Ltmp1008 and .Ltmp1009
	.uleb128 .Ltmp1010-.Lfunc_begin4        #     jumps to .Ltmp1010
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1011-.Lfunc_begin4        # >> Call Site 158 <<
	.uleb128 .Ltmp1012-.Ltmp1011            #   Call between .Ltmp1011 and .Ltmp1012
	.uleb128 .Ltmp1013-.Lfunc_begin4        #     jumps to .Ltmp1013
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1014-.Lfunc_begin4        # >> Call Site 159 <<
	.uleb128 .Ltmp1015-.Ltmp1014            #   Call between .Ltmp1014 and .Ltmp1015
	.uleb128 .Ltmp1016-.Lfunc_begin4        #     jumps to .Ltmp1016
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1017-.Lfunc_begin4        # >> Call Site 160 <<
	.uleb128 .Ltmp1018-.Ltmp1017            #   Call between .Ltmp1017 and .Ltmp1018
	.uleb128 .Ltmp1019-.Lfunc_begin4        #     jumps to .Ltmp1019
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1020-.Lfunc_begin4        # >> Call Site 161 <<
	.uleb128 .Ltmp1021-.Ltmp1020            #   Call between .Ltmp1020 and .Ltmp1021
	.uleb128 .Ltmp1022-.Lfunc_begin4        #     jumps to .Ltmp1022
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1023-.Lfunc_begin4        # >> Call Site 162 <<
	.uleb128 .Ltmp1024-.Ltmp1023            #   Call between .Ltmp1023 and .Ltmp1024
	.uleb128 .Ltmp1025-.Lfunc_begin4        #     jumps to .Ltmp1025
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1024-.Lfunc_begin4        # >> Call Site 163 <<
	.uleb128 .Ltmp1026-.Ltmp1024            #   Call between .Ltmp1024 and .Ltmp1026
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1026-.Lfunc_begin4        # >> Call Site 164 <<
	.uleb128 .Ltmp1027-.Ltmp1026            #   Call between .Ltmp1026 and .Ltmp1027
	.uleb128 .Ltmp1028-.Lfunc_begin4        #     jumps to .Ltmp1028
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1029-.Lfunc_begin4        # >> Call Site 165 <<
	.uleb128 .Ltmp1030-.Ltmp1029            #   Call between .Ltmp1029 and .Ltmp1030
	.uleb128 .Ltmp1031-.Lfunc_begin4        #     jumps to .Ltmp1031
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1032-.Lfunc_begin4        # >> Call Site 166 <<
	.uleb128 .Ltmp1033-.Ltmp1032            #   Call between .Ltmp1032 and .Ltmp1033
	.uleb128 .Ltmp1034-.Lfunc_begin4        #     jumps to .Ltmp1034
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1035-.Lfunc_begin4        # >> Call Site 167 <<
	.uleb128 .Ltmp1036-.Ltmp1035            #   Call between .Ltmp1035 and .Ltmp1036
	.uleb128 .Ltmp1037-.Lfunc_begin4        #     jumps to .Ltmp1037
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1038-.Lfunc_begin4        # >> Call Site 168 <<
	.uleb128 .Ltmp1039-.Ltmp1038            #   Call between .Ltmp1038 and .Ltmp1039
	.uleb128 .Ltmp1040-.Lfunc_begin4        #     jumps to .Ltmp1040
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1041-.Lfunc_begin4        # >> Call Site 169 <<
	.uleb128 .Ltmp1042-.Ltmp1041            #   Call between .Ltmp1041 and .Ltmp1042
	.uleb128 .Ltmp1043-.Lfunc_begin4        #     jumps to .Ltmp1043
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1044-.Lfunc_begin4        # >> Call Site 170 <<
	.uleb128 .Ltmp1045-.Ltmp1044            #   Call between .Ltmp1044 and .Ltmp1045
	.uleb128 .Ltmp1046-.Lfunc_begin4        #     jumps to .Ltmp1046
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1047-.Lfunc_begin4        # >> Call Site 171 <<
	.uleb128 .Ltmp1048-.Ltmp1047            #   Call between .Ltmp1047 and .Ltmp1048
	.uleb128 .Ltmp1049-.Lfunc_begin4        #     jumps to .Ltmp1049
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1050-.Lfunc_begin4        # >> Call Site 172 <<
	.uleb128 .Ltmp1051-.Ltmp1050            #   Call between .Ltmp1050 and .Ltmp1051
	.uleb128 .Ltmp1052-.Lfunc_begin4        #     jumps to .Ltmp1052
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1053-.Lfunc_begin4        # >> Call Site 173 <<
	.uleb128 .Ltmp1054-.Ltmp1053            #   Call between .Ltmp1053 and .Ltmp1054
	.uleb128 .Ltmp1055-.Lfunc_begin4        #     jumps to .Ltmp1055
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1056-.Lfunc_begin4        # >> Call Site 174 <<
	.uleb128 .Ltmp1057-.Ltmp1056            #   Call between .Ltmp1056 and .Ltmp1057
	.uleb128 .Ltmp1058-.Lfunc_begin4        #     jumps to .Ltmp1058
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1059-.Lfunc_begin4        # >> Call Site 175 <<
	.uleb128 .Ltmp1060-.Ltmp1059            #   Call between .Ltmp1059 and .Ltmp1060
	.uleb128 .Ltmp1061-.Lfunc_begin4        #     jumps to .Ltmp1061
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1062-.Lfunc_begin4        # >> Call Site 176 <<
	.uleb128 .Ltmp1063-.Ltmp1062            #   Call between .Ltmp1062 and .Ltmp1063
	.uleb128 .Ltmp1064-.Lfunc_begin4        #     jumps to .Ltmp1064
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1065-.Lfunc_begin4        # >> Call Site 177 <<
	.uleb128 .Ltmp1066-.Ltmp1065            #   Call between .Ltmp1065 and .Ltmp1066
	.uleb128 .Ltmp1067-.Lfunc_begin4        #     jumps to .Ltmp1067
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1068-.Lfunc_begin4        # >> Call Site 178 <<
	.uleb128 .Ltmp1069-.Ltmp1068            #   Call between .Ltmp1068 and .Ltmp1069
	.uleb128 .Ltmp1070-.Lfunc_begin4        #     jumps to .Ltmp1070
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1071-.Lfunc_begin4        # >> Call Site 179 <<
	.uleb128 .Ltmp1072-.Ltmp1071            #   Call between .Ltmp1071 and .Ltmp1072
	.uleb128 .Ltmp1073-.Lfunc_begin4        #     jumps to .Ltmp1073
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1074-.Lfunc_begin4        # >> Call Site 180 <<
	.uleb128 .Ltmp1075-.Ltmp1074            #   Call between .Ltmp1074 and .Ltmp1075
	.uleb128 .Ltmp1076-.Lfunc_begin4        #     jumps to .Ltmp1076
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1077-.Lfunc_begin4        # >> Call Site 181 <<
	.uleb128 .Ltmp1078-.Ltmp1077            #   Call between .Ltmp1077 and .Ltmp1078
	.uleb128 .Ltmp1079-.Lfunc_begin4        #     jumps to .Ltmp1079
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1080-.Lfunc_begin4        # >> Call Site 182 <<
	.uleb128 .Ltmp1081-.Ltmp1080            #   Call between .Ltmp1080 and .Ltmp1081
	.uleb128 .Ltmp1082-.Lfunc_begin4        #     jumps to .Ltmp1082
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1083-.Lfunc_begin4        # >> Call Site 183 <<
	.uleb128 .Ltmp1084-.Ltmp1083            #   Call between .Ltmp1083 and .Ltmp1084
	.uleb128 .Ltmp1085-.Lfunc_begin4        #     jumps to .Ltmp1085
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1086-.Lfunc_begin4        # >> Call Site 184 <<
	.uleb128 .Ltmp1087-.Ltmp1086            #   Call between .Ltmp1086 and .Ltmp1087
	.uleb128 .Ltmp1088-.Lfunc_begin4        #     jumps to .Ltmp1088
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1089-.Lfunc_begin4        # >> Call Site 185 <<
	.uleb128 .Ltmp1090-.Ltmp1089            #   Call between .Ltmp1089 and .Ltmp1090
	.uleb128 .Ltmp1091-.Lfunc_begin4        #     jumps to .Ltmp1091
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1092-.Lfunc_begin4        # >> Call Site 186 <<
	.uleb128 .Ltmp1093-.Ltmp1092            #   Call between .Ltmp1092 and .Ltmp1093
	.uleb128 .Ltmp1094-.Lfunc_begin4        #     jumps to .Ltmp1094
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1095-.Lfunc_begin4        # >> Call Site 187 <<
	.uleb128 .Ltmp1096-.Ltmp1095            #   Call between .Ltmp1095 and .Ltmp1096
	.uleb128 .Ltmp1097-.Lfunc_begin4        #     jumps to .Ltmp1097
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1098-.Lfunc_begin4        # >> Call Site 188 <<
	.uleb128 .Ltmp1099-.Ltmp1098            #   Call between .Ltmp1098 and .Ltmp1099
	.uleb128 .Ltmp1100-.Lfunc_begin4        #     jumps to .Ltmp1100
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1101-.Lfunc_begin4        # >> Call Site 189 <<
	.uleb128 .Ltmp1102-.Ltmp1101            #   Call between .Ltmp1101 and .Ltmp1102
	.uleb128 .Ltmp1103-.Lfunc_begin4        #     jumps to .Ltmp1103
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1104-.Lfunc_begin4        # >> Call Site 190 <<
	.uleb128 .Ltmp1105-.Ltmp1104            #   Call between .Ltmp1104 and .Ltmp1105
	.uleb128 .Ltmp1106-.Lfunc_begin4        #     jumps to .Ltmp1106
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1107-.Lfunc_begin4        # >> Call Site 191 <<
	.uleb128 .Ltmp1108-.Ltmp1107            #   Call between .Ltmp1107 and .Ltmp1108
	.uleb128 .Ltmp1109-.Lfunc_begin4        #     jumps to .Ltmp1109
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1110-.Lfunc_begin4        # >> Call Site 192 <<
	.uleb128 .Ltmp1111-.Ltmp1110            #   Call between .Ltmp1110 and .Ltmp1111
	.uleb128 .Ltmp1112-.Lfunc_begin4        #     jumps to .Ltmp1112
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1113-.Lfunc_begin4        # >> Call Site 193 <<
	.uleb128 .Ltmp1114-.Ltmp1113            #   Call between .Ltmp1113 and .Ltmp1114
	.uleb128 .Ltmp1115-.Lfunc_begin4        #     jumps to .Ltmp1115
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1116-.Lfunc_begin4        # >> Call Site 194 <<
	.uleb128 .Ltmp1117-.Ltmp1116            #   Call between .Ltmp1116 and .Ltmp1117
	.uleb128 .Ltmp1118-.Lfunc_begin4        #     jumps to .Ltmp1118
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1119-.Lfunc_begin4        # >> Call Site 195 <<
	.uleb128 .Ltmp1120-.Ltmp1119            #   Call between .Ltmp1119 and .Ltmp1120
	.uleb128 .Ltmp1121-.Lfunc_begin4        #     jumps to .Ltmp1121
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1122-.Lfunc_begin4        # >> Call Site 196 <<
	.uleb128 .Ltmp1123-.Ltmp1122            #   Call between .Ltmp1122 and .Ltmp1123
	.uleb128 .Ltmp1124-.Lfunc_begin4        #     jumps to .Ltmp1124
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1125-.Lfunc_begin4        # >> Call Site 197 <<
	.uleb128 .Ltmp1126-.Ltmp1125            #   Call between .Ltmp1125 and .Ltmp1126
	.uleb128 .Ltmp1127-.Lfunc_begin4        #     jumps to .Ltmp1127
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1128-.Lfunc_begin4        # >> Call Site 198 <<
	.uleb128 .Ltmp1129-.Ltmp1128            #   Call between .Ltmp1128 and .Ltmp1129
	.uleb128 .Ltmp1130-.Lfunc_begin4        #     jumps to .Ltmp1130
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1131-.Lfunc_begin4        # >> Call Site 199 <<
	.uleb128 .Ltmp1132-.Ltmp1131            #   Call between .Ltmp1131 and .Ltmp1132
	.uleb128 .Ltmp1133-.Lfunc_begin4        #     jumps to .Ltmp1133
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1132-.Lfunc_begin4        # >> Call Site 200 <<
	.uleb128 .Ltmp1134-.Ltmp1132            #   Call between .Ltmp1132 and .Ltmp1134
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1134-.Lfunc_begin4        # >> Call Site 201 <<
	.uleb128 .Ltmp1135-.Ltmp1134            #   Call between .Ltmp1134 and .Ltmp1135
	.uleb128 .Ltmp1136-.Lfunc_begin4        #     jumps to .Ltmp1136
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1137-.Lfunc_begin4        # >> Call Site 202 <<
	.uleb128 .Ltmp1138-.Ltmp1137            #   Call between .Ltmp1137 and .Ltmp1138
	.uleb128 .Ltmp1139-.Lfunc_begin4        #     jumps to .Ltmp1139
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1138-.Lfunc_begin4        # >> Call Site 203 <<
	.uleb128 .Ltmp1140-.Ltmp1138            #   Call between .Ltmp1138 and .Ltmp1140
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1140-.Lfunc_begin4        # >> Call Site 204 <<
	.uleb128 .Ltmp1141-.Ltmp1140            #   Call between .Ltmp1140 and .Ltmp1141
	.uleb128 .Ltmp1142-.Lfunc_begin4        #     jumps to .Ltmp1142
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1143-.Lfunc_begin4        # >> Call Site 205 <<
	.uleb128 .Ltmp1144-.Ltmp1143            #   Call between .Ltmp1143 and .Ltmp1144
	.uleb128 .Ltmp1145-.Lfunc_begin4        #     jumps to .Ltmp1145
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1144-.Lfunc_begin4        # >> Call Site 206 <<
	.uleb128 .Ltmp1146-.Ltmp1144            #   Call between .Ltmp1144 and .Ltmp1146
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1146-.Lfunc_begin4        # >> Call Site 207 <<
	.uleb128 .Ltmp1147-.Ltmp1146            #   Call between .Ltmp1146 and .Ltmp1147
	.uleb128 .Ltmp1148-.Lfunc_begin4        #     jumps to .Ltmp1148
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1149-.Lfunc_begin4        # >> Call Site 208 <<
	.uleb128 .Ltmp1150-.Ltmp1149            #   Call between .Ltmp1149 and .Ltmp1150
	.uleb128 .Ltmp1151-.Lfunc_begin4        #     jumps to .Ltmp1151
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1150-.Lfunc_begin4        # >> Call Site 209 <<
	.uleb128 .Ltmp1152-.Ltmp1150            #   Call between .Ltmp1150 and .Ltmp1152
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1152-.Lfunc_begin4        # >> Call Site 210 <<
	.uleb128 .Ltmp1153-.Ltmp1152            #   Call between .Ltmp1152 and .Ltmp1153
	.uleb128 .Ltmp1154-.Lfunc_begin4        #     jumps to .Ltmp1154
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1155-.Lfunc_begin4        # >> Call Site 211 <<
	.uleb128 .Ltmp1156-.Ltmp1155            #   Call between .Ltmp1155 and .Ltmp1156
	.uleb128 .Ltmp1157-.Lfunc_begin4        #     jumps to .Ltmp1157
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1158-.Lfunc_begin4        # >> Call Site 212 <<
	.uleb128 .Ltmp1159-.Ltmp1158            #   Call between .Ltmp1158 and .Ltmp1159
	.uleb128 .Ltmp1160-.Lfunc_begin4        #     jumps to .Ltmp1160
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1161-.Lfunc_begin4        # >> Call Site 213 <<
	.uleb128 .Ltmp1162-.Ltmp1161            #   Call between .Ltmp1161 and .Ltmp1162
	.uleb128 .Ltmp1163-.Lfunc_begin4        #     jumps to .Ltmp1163
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1162-.Lfunc_begin4        # >> Call Site 214 <<
	.uleb128 .Ltmp1164-.Ltmp1162            #   Call between .Ltmp1162 and .Ltmp1164
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1164-.Lfunc_begin4        # >> Call Site 215 <<
	.uleb128 .Ltmp1165-.Ltmp1164            #   Call between .Ltmp1164 and .Ltmp1165
	.uleb128 .Ltmp1166-.Lfunc_begin4        #     jumps to .Ltmp1166
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1170-.Lfunc_begin4        # >> Call Site 216 <<
	.uleb128 .Ltmp1171-.Ltmp1170            #   Call between .Ltmp1170 and .Ltmp1171
	.uleb128 .Ltmp1172-.Lfunc_begin4        #     jumps to .Ltmp1172
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp1171-.Lfunc_begin4        # >> Call Site 217 <<
	.uleb128 .Ltmp1167-.Ltmp1171            #   Call between .Ltmp1171 and .Ltmp1167
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1167-.Lfunc_begin4        # >> Call Site 218 <<
	.uleb128 .Ltmp1168-.Ltmp1167            #   Call between .Ltmp1167 and .Ltmp1168
	.uleb128 .Ltmp1169-.Lfunc_begin4        #     jumps to .Ltmp1169
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp1168-.Lfunc_begin4        # >> Call Site 219 <<
	.uleb128 .Lfunc_end16-.Ltmp1168         #   Call between .Ltmp1168 and .Lfunc_end16
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end4:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase2:
	.p2align	2, 0x0
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str:
	.asciz	"t0_1000000DefaultBase"
	.size	.L.str, 22

	.type	.L.str.1,@object                # @.str.1
	.p2align	3, 0x0
.L.str.1:
	.asciz	"t1_1000000Base1000"
	.size	.L.str.1, 19

	.type	.L.str.2,@object                # @.str.2
	.p2align	3, 0x0
.L.str.2:
	.asciz	"t2_1000000Base1024"
	.size	.L.str.2, 19

	.type	.L.str.3,@object                # @.str.3
	.p2align	3, 0x0
.L.str.3:
	.asciz	"t3_1048576Base1000"
	.size	.L.str.3, 19

	.type	.L.str.4,@object                # @.str.4
	.p2align	3, 0x0
.L.str.4:
	.asciz	"t4_1048576Base1024"
	.size	.L.str.4, 19

	.type	_ZL27benchmark_uniq_2_benchmark_,@object # @_ZL27benchmark_uniq_2_benchmark_
	.local	_ZL27benchmark_uniq_2_benchmark_
	.comm	_ZL27benchmark_uniq_2_benchmark_,8,8
	.type	.L.str.6,@object                # @.str.6
	.p2align	3, 0x0
.L.str.6:
	.asciz	"BM_Counters_Thousands"
	.size	.L.str.6, 22

	.hidden	dummy51                         # @dummy51
	.type	dummy51,@object
	.bss
	.globl	dummy51
	.p2align	2, 0x0
dummy51:
	.word	0                               # 0x0
	.size	dummy51, 4

	.type	.L.str.8,@object                # @.str.8
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.8:
	.asciz	"^BM_Counters_Thousands/repeats:2 %console_report t0_1000000DefaultBase=1M t1_1000000Base1000=1M t2_1000000Base1024=976.56[23]Ki t3_1048576Base1000=1.04858M t4_1048576Base1024=1Mi$"
	.size	.L.str.8, 180

	.type	.L.str.9,@object                # @.str.9
	.p2align	3, 0x0
.L.str.9:
	.asciz	"^BM_Counters_Thousands/repeats:2_mean %console_report t0_1000000DefaultBase=1M t1_1000000Base1000=1M t2_1000000Base1024=976.56[23]Ki t3_1048576Base1000=1.04858M t4_1048576Base1024=1Mi$"
	.size	.L.str.9, 185

	.type	.L.str.10,@object               # @.str.10
	.p2align	3, 0x0
.L.str.10:
	.asciz	"^BM_Counters_Thousands/repeats:2_median %console_report t0_1000000DefaultBase=1M t1_1000000Base1000=1M t2_1000000Base1024=976.56[23]Ki t3_1048576Base1000=1.04858M t4_1048576Base1024=1Mi$"
	.size	.L.str.10, 187

	.type	.L.str.11,@object               # @.str.11
	.p2align	3, 0x0
.L.str.11:
	.asciz	"^BM_Counters_Thousands/repeats:2_stddev %console_time_only_report [ ]*2 t0_1000000DefaultBase=0 t1_1000000Base1000=0 t2_1000000Base1024=0 t3_1048576Base1000=0 t4_1048576Base1024=0$"
	.size	.L.str.11, 181

	.hidden	dummy70                         # @dummy70
	.type	dummy70,@object
	.bss
	.globl	dummy70
	.p2align	2, 0x0
dummy70:
	.word	0                               # 0x0
	.size	dummy70, 4

	.type	.L.str.13,@object               # @.str.13
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.13:
	.asciz	"\"name\": \"BM_Counters_Thousands/repeats:2\",$"
	.size	.L.str.13, 44

	.type	.L.str.14,@object               # @.str.14
	.p2align	3, 0x0
.L.str.14:
	.asciz	"\"family_index\": 0,$"
	.size	.L.str.14, 20

	.type	.L.str.15,@object               # @.str.15
	.p2align	3, 0x0
.L.str.15:
	.asciz	"\"per_family_instance_index\": 0,$"
	.size	.L.str.15, 33

	.type	.L.str.16,@object               # @.str.16
	.p2align	3, 0x0
.L.str.16:
	.asciz	"\"run_name\": \"BM_Counters_Thousands/repeats:2\",$"
	.size	.L.str.16, 48

	.type	.L.str.17,@object               # @.str.17
	.p2align	3, 0x0
.L.str.17:
	.asciz	"\"run_type\": \"iteration\",$"
	.size	.L.str.17, 26

	.type	.L.str.18,@object               # @.str.18
	.p2align	3, 0x0
.L.str.18:
	.asciz	"\"repetitions\": 2,$"
	.size	.L.str.18, 19

	.type	.L.str.19,@object               # @.str.19
	.p2align	3, 0x0
.L.str.19:
	.asciz	"\"repetition_index\": 0,$"
	.size	.L.str.19, 24

	.type	.L.str.20,@object               # @.str.20
	.p2align	3, 0x0
.L.str.20:
	.asciz	"\"threads\": 1,$"
	.size	.L.str.20, 15

	.type	.L.str.21,@object               # @.str.21
	.p2align	3, 0x0
.L.str.21:
	.asciz	"\"iterations\": %int,$"
	.size	.L.str.21, 21

	.type	.L.str.22,@object               # @.str.22
	.p2align	3, 0x0
.L.str.22:
	.asciz	"\"real_time\": %float,$"
	.size	.L.str.22, 22

	.type	.L.str.23,@object               # @.str.23
	.p2align	3, 0x0
.L.str.23:
	.asciz	"\"cpu_time\": %float,$"
	.size	.L.str.23, 21

	.type	.L.str.24,@object               # @.str.24
	.p2align	3, 0x0
.L.str.24:
	.asciz	"\"time_unit\": \"ns\",$"
	.size	.L.str.24, 20

	.type	.L.str.25,@object               # @.str.25
	.p2align	3, 0x0
.L.str.25:
	.asciz	"\"t0_1000000DefaultBase\": 1\\.(0)*e\\+(0)*6,$"
	.size	.L.str.25, 43

	.type	.L.str.26,@object               # @.str.26
	.p2align	3, 0x0
.L.str.26:
	.asciz	"\"t1_1000000Base1000\": 1\\.(0)*e\\+(0)*6,$"
	.size	.L.str.26, 40

	.type	.L.str.27,@object               # @.str.27
	.p2align	3, 0x0
.L.str.27:
	.asciz	"\"t2_1000000Base1024\": 1\\.(0)*e\\+(0)*6,$"
	.size	.L.str.27, 40

	.type	.L.str.28,@object               # @.str.28
	.p2align	3, 0x0
.L.str.28:
	.asciz	"\"t3_1048576Base1000\": 1\\.048576(0)*e\\+(0)*6,$"
	.size	.L.str.28, 46

	.type	.L.str.29,@object               # @.str.29
	.p2align	3, 0x0
.L.str.29:
	.asciz	"\"t4_1048576Base1024\": 1\\.048576(0)*e\\+(0)*6$"
	.size	.L.str.29, 45

	.hidden	dummy89                         # @dummy89
	.type	dummy89,@object
	.bss
	.globl	dummy89
	.p2align	2, 0x0
dummy89:
	.word	0                               # 0x0
	.size	dummy89, 4

	.type	.L.str.32,@object               # @.str.32
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.32:
	.asciz	"\"repetition_index\": 1,$"
	.size	.L.str.32, 24

	.hidden	dummy109                        # @dummy109
	.type	dummy109,@object
	.bss
	.globl	dummy109
	.p2align	2, 0x0
dummy109:
	.word	0                               # 0x0
	.size	dummy109, 4

	.type	.L.str.34,@object               # @.str.34
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.34:
	.asciz	"\"name\": \"BM_Counters_Thousands/repeats:2_mean\",$"
	.size	.L.str.34, 49

	.type	.L.str.35,@object               # @.str.35
	.p2align	3, 0x0
.L.str.35:
	.asciz	"\"run_type\": \"aggregate\",$"
	.size	.L.str.35, 26

	.type	.L.str.36,@object               # @.str.36
	.p2align	3, 0x0
.L.str.36:
	.asciz	"\"aggregate_name\": \"mean\",$"
	.size	.L.str.36, 27

	.type	.L.str.37,@object               # @.str.37
	.p2align	3, 0x0
.L.str.37:
	.asciz	"\"aggregate_unit\": \"time\",$"
	.size	.L.str.37, 27

	.type	.L.str.38,@object               # @.str.38
	.p2align	3, 0x0
.L.str.38:
	.asciz	"\"iterations\": 2,$"
	.size	.L.str.38, 18

	.hidden	dummy129                        # @dummy129
	.type	dummy129,@object
	.bss
	.globl	dummy129
	.p2align	2, 0x0
dummy129:
	.word	0                               # 0x0
	.size	dummy129, 4

	.type	.L.str.40,@object               # @.str.40
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.40:
	.asciz	"\"name\": \"BM_Counters_Thousands/repeats:2_median\",$"
	.size	.L.str.40, 51

	.type	.L.str.41,@object               # @.str.41
	.p2align	3, 0x0
.L.str.41:
	.asciz	"\"aggregate_name\": \"median\",$"
	.size	.L.str.41, 29

	.hidden	dummy149                        # @dummy149
	.type	dummy149,@object
	.bss
	.globl	dummy149
	.p2align	2, 0x0
dummy149:
	.word	0                               # 0x0
	.size	dummy149, 4

	.type	.L.str.43,@object               # @.str.43
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.43:
	.asciz	"\"name\": \"BM_Counters_Thousands/repeats:2_stddev\",$"
	.size	.L.str.43, 51

	.type	.L.str.44,@object               # @.str.44
	.p2align	3, 0x0
.L.str.44:
	.asciz	"\"aggregate_name\": \"stddev\",$"
	.size	.L.str.44, 29

	.type	.L.str.45,@object               # @.str.45
	.p2align	3, 0x0
.L.str.45:
	.asciz	"\"t0_1000000DefaultBase\": 0\\.(0)*e\\+(0)*,$"
	.size	.L.str.45, 42

	.type	.L.str.46,@object               # @.str.46
	.p2align	3, 0x0
.L.str.46:
	.asciz	"\"t1_1000000Base1000\": 0\\.(0)*e\\+(0)*,$"
	.size	.L.str.46, 39

	.type	.L.str.47,@object               # @.str.47
	.p2align	3, 0x0
.L.str.47:
	.asciz	"\"t2_1000000Base1024\": 0\\.(0)*e\\+(0)*,$"
	.size	.L.str.47, 39

	.type	.L.str.48,@object               # @.str.48
	.p2align	3, 0x0
.L.str.48:
	.asciz	"\"t3_1048576Base1000\": 0\\.(0)*e\\+(0)*,$"
	.size	.L.str.48, 39

	.type	.L.str.49,@object               # @.str.49
	.p2align	3, 0x0
.L.str.49:
	.asciz	"\"t4_1048576Base1024\": 0\\.(0)*e\\+(0)*$"
	.size	.L.str.49, 38

	.hidden	dummy165                        # @dummy165
	.type	dummy165,@object
	.bss
	.globl	dummy165
	.p2align	2, 0x0
dummy165:
	.word	0                               # 0x0
	.size	dummy165, 4

	.type	.L.str.51,@object               # @.str.51
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.51:
	.asciz	"^\"BM_Counters_Thousands/repeats:2\",%csv_report,1e\\+(0)*6,1e\\+(0)*6,1e\\+(0)*6,1\\.04858e\\+(0)*6,1\\.04858e\\+(0)*6$"
	.size	.L.str.51, 112

	.type	.L.str.52,@object               # @.str.52
	.p2align	3, 0x0
.L.str.52:
	.asciz	"^\"BM_Counters_Thousands/repeats:2_mean\",%csv_report,1e\\+(0)*6,1e\\+(0)*6,1e\\+(0)*6,1\\.04858e\\+(0)*6,1\\.04858e\\+(0)*6$"
	.size	.L.str.52, 117

	.type	.L.str.53,@object               # @.str.53
	.p2align	3, 0x0
.L.str.53:
	.asciz	"^\"BM_Counters_Thousands/repeats:2_median\",%csv_report,1e\\+(0)*6,1e\\+(0)*6,1e\\+(0)*6,1\\.04858e\\+(0)*6,1\\.04858e\\+(0)*6$"
	.size	.L.str.53, 119

	.type	.L.str.54,@object               # @.str.54
	.p2align	3, 0x0
.L.str.54:
	.asciz	"^\"BM_Counters_Thousands/repeats:2_stddev\",%csv_report,0,0,0,0,0$"
	.size	.L.str.54, 65

	.type	.L.str.55,@object               # @.str.55
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.55:
	.asciz	"BM_Counters_Thousands/repeats:2"
	.size	.L.str.55, 32

	.type	.L.str.56,@object               # @.str.56
.L.str.56:
	.asciz	"std::fabs((e.GetCounterAs< double >(\"t0_1000000DefaultBase\")) - ((1000 * 1000))) < ((0.0001) * (1000 * 1000))"
	.size	.L.str.56, 110

	.type	.L.str.57,@object               # @.str.57
.L.str.57:
	.asciz	"/home/date/work/actions-runner/_work/llvm-opt-ci/llvm-opt-ci/repos/llvm-test-suite/MicroBenchmarks/libs/benchmark/test/user_counters_thousands_test.cc"
	.size	.L.str.57, 151

	.type	.L__func__._Z14CheckThousandsRK7Results,@object # @__func__._Z14CheckThousandsRK7Results
.L__func__._Z14CheckThousandsRK7Results:
	.asciz	"CheckThousands"
	.size	.L__func__._Z14CheckThousandsRK7Results, 15

	.type	.L.str.58,@object               # @.str.58
.L.str.58:
	.asciz	"\n"
	.size	.L.str.58, 2

	.type	.L.str.59,@object               # @.str.59
.L.str.59:
	.asciz	":"
	.size	.L.str.59, 2

	.type	.L.str.60,@object               # @.str.60
.L.str.60:
	.asciz	": "
	.size	.L.str.60, 3

	.type	.L.str.61,@object               # @.str.61
.L.str.61:
	.asciz	":\n"
	.size	.L.str.61, 3

	.type	.L.str.62,@object               # @.str.62
.L.str.62:
	.asciz	"expected ("
	.size	.L.str.62, 11

	.type	.L.str.63,@object               # @.str.63
.L.str.63:
	.asciz	"double"
	.size	.L.str.63, 7

	.type	.L.str.64,@object               # @.str.64
.L.str.64:
	.asciz	")"
	.size	.L.str.64, 2

	.type	.L.str.65,@object               # @.str.65
.L.str.65:
	.asciz	"="
	.size	.L.str.65, 2

	.type	.L.str.66,@object               # @.str.66
.L.str.66:
	.asciz	" to be EQ to "
	.size	.L.str.66, 14

	.type	.L.str.67,@object               # @.str.67
.L.str.67:
	.asciz	"with tolerance of "
	.size	.L.str.67, 19

	.type	.L.str.68,@object               # @.str.68
.L.str.68:
	.asciz	" ("
	.size	.L.str.68, 3

	.type	.L.str.69,@object               # @.str.69
.L.str.69:
	.asciz	"%), "
	.size	.L.str.69, 5

	.type	.L.str.70,@object               # @.str.70
.L.str.70:
	.asciz	"but delta was "
	.size	.L.str.70, 15

	.type	.L.str.71,@object               # @.str.71
.L.str.71:
	.asciz	"%)"
	.size	.L.str.71, 3

	.type	.L.str.72,@object               # @.str.72
.L.str.72:
	.asciz	"std::fabs((e.GetCounterAs< double >(\"t1_1000000Base1000\")) - ((1000 * 1000))) < ((0.0001) * (1000 * 1000))"
	.size	.L.str.72, 107

	.type	.L.str.73,@object               # @.str.73
.L.str.73:
	.asciz	"std::fabs((e.GetCounterAs< double >(\"t2_1000000Base1024\")) - ((1000 * 1000))) < ((0.0001) * (1000 * 1000))"
	.size	.L.str.73, 107

	.type	.L.str.74,@object               # @.str.74
.L.str.74:
	.asciz	"std::fabs((e.GetCounterAs< double >(\"t3_1048576Base1000\")) - ((1024 * 1024))) < ((0.0001) * (1024 * 1024))"
	.size	.L.str.74, 107

	.type	.L.str.75,@object               # @.str.75
.L.str.75:
	.asciz	"std::fabs((e.GetCounterAs< double >(\"t4_1048576Base1024\")) - ((1024 * 1024))) < ((0.0001) * (1024 * 1024))"
	.size	.L.str.75, 107

	.hidden	dummy180                        # @dummy180
	.type	dummy180,@object
	.bss
	.globl	dummy180
	.p2align	3, 0x0
dummy180:
	.dword	0                               # 0x0
	.size	dummy180, 8

	.type	.L.str.77,@object               # @.str.77
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.77:
	.asciz	"cached_ > 0"
	.size	.L.str.77, 12

	.type	.L.str.78,@object               # @.str.78
.L.str.78:
	.asciz	"/home/date/work/actions-runner/_work/llvm-opt-ci/llvm-opt-ci/repos/llvm-test-suite/MicroBenchmarks/libs/benchmark/include/benchmark/benchmark.h"
	.size	.L.str.78, 144

	.type	.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv,@object # @__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv
.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv:
	.asciz	"StateIterator &benchmark::State::StateIterator::operator++()"
	.size	.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv, 61

	.hidden	_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log # @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log
	.type	_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log,@object
	.section	.bss._ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log,"awG",@nobits,_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log,comdat
	.weak	_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log
	.p2align	3, 0x0
_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log:
	.space	8
	.size	_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, 8

	.hidden	_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log # @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log
	.type	_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log,@object
	.section	.bss._ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log,"awG",@nobits,_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log,comdat
	.weak	_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log
	.p2align	3, 0x0
_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log:
	.dword	0                               # 0x0
	.size	_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log, 8

	.type	.L.str.79,@object               # @.str.79
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.79:
	.asciz	": Check `"
	.size	.L.str.79, 10

	.type	.L.str.80,@object               # @.str.80
.L.str.80:
	.asciz	"' failed. "
	.size	.L.str.80, 11

	.hidden	_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log # @_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log
	.type	_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log,@object
	.section	.bss._ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log,"awG",@nobits,_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log,comdat
	.weak	_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log
	.p2align	3, 0x0
_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log:
	.space	8
	.size	_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log, 8

	.hidden	_ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log # @_ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log
	.type	_ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log,@object
	.section	.bss._ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log,"awG",@nobits,_ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log,comdat
	.weak	_ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log
	.p2align	3, 0x0
_ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log:
	.dword	0                               # 0x0
	.size	_ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log, 8

	.type	.L.str.82,@object               # @.str.82
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.82:
	.asciz	"sv != nullptr && !sv->empty()"
	.size	.L.str.82, 30

	.type	.L.str.83,@object               # @.str.83
.L.str.83:
	.asciz	"/home/date/work/actions-runner/_work/llvm-opt-ci/llvm-opt-ci/repos/llvm-test-suite/MicroBenchmarks/libs/benchmark/test/output_test.h"
	.size	.L.str.83, 133

	.type	.L__func__._ZNK7Results5GetAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,@object # @__func__._ZNK7Results5GetAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.L__func__._ZNK7Results5GetAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:
	.asciz	"GetAs"
	.size	.L__func__._ZNK7Results5GetAsIdEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, 6

	.type	.L.str.84,@object               # @.str.84
.L.str.84:
	.asciz	"!ss.fail()"
	.size	.L.str.84, 11

	.hidden	_ZTIPFvRK7ResultsE              # @_ZTIPFvRK7ResultsE
	.type	_ZTIPFvRK7ResultsE,@object
	.section	.data.rel.ro._ZTIPFvRK7ResultsE,"awG",@progbits,_ZTIPFvRK7ResultsE,comdat
	.weak	_ZTIPFvRK7ResultsE
	.p2align	3, 0x0
_ZTIPFvRK7ResultsE:
	.dword	_ZTVN10__cxxabiv119__pointer_type_infoE+16
	.dword	_ZTSPFvRK7ResultsE
	.word	0                               # 0x0
	.space	4
	.dword	_ZTIFvRK7ResultsE
	.size	_ZTIPFvRK7ResultsE, 32

	.hidden	_ZTSPFvRK7ResultsE              # @_ZTSPFvRK7ResultsE
	.type	_ZTSPFvRK7ResultsE,@object
	.section	.rodata._ZTSPFvRK7ResultsE,"aG",@progbits,_ZTSPFvRK7ResultsE,comdat
	.weak	_ZTSPFvRK7ResultsE
_ZTSPFvRK7ResultsE:
	.asciz	"PFvRK7ResultsE"
	.size	_ZTSPFvRK7ResultsE, 15

	.hidden	_ZTIFvRK7ResultsE               # @_ZTIFvRK7ResultsE
	.type	_ZTIFvRK7ResultsE,@object
	.section	.data.rel.ro._ZTIFvRK7ResultsE,"awG",@progbits,_ZTIFvRK7ResultsE,comdat
	.weak	_ZTIFvRK7ResultsE
	.p2align	3, 0x0
_ZTIFvRK7ResultsE:
	.dword	_ZTVN10__cxxabiv120__function_type_infoE+16
	.dword	_ZTSFvRK7ResultsE
	.size	_ZTIFvRK7ResultsE, 16

	.hidden	_ZTSFvRK7ResultsE               # @_ZTSFvRK7ResultsE
	.type	_ZTSFvRK7ResultsE,@object
	.section	.rodata._ZTSFvRK7ResultsE,"aG",@progbits,_ZTSFvRK7ResultsE,comdat
	.weak	_ZTSFvRK7ResultsE
_ZTSFvRK7ResultsE:
	.asciz	"FvRK7ResultsE"
	.size	_ZTSFvRK7ResultsE, 14

	.section	.init_array,"aw",@init_array
	.p2align	3, 0x0
	.dword	_GLOBAL__sub_I_user_counters_thousands_test.cc
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
	.addrsig_sym _Z21BM_Counters_ThousandsRN9benchmark5StateE
	.addrsig_sym __gxx_personality_v0
	.addrsig_sym _Z14CheckThousandsRK7Results
	.addrsig_sym _ZNSt17_Function_handlerIFvRK7ResultsEPS3_E9_M_invokeERKSt9_Any_dataS2_
	.addrsig_sym _ZNSt17_Function_handlerIFvRK7ResultsEPS3_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation
	.addrsig_sym _GLOBAL__sub_I_user_counters_thousands_test.cc
	.addrsig_sym _Unwind_Resume
	.addrsig_sym _ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log
	.addrsig_sym _ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log
	.addrsig_sym _ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log
	.addrsig_sym _ZSt4clog
	.addrsig_sym _ZTIPFvRK7ResultsE
	.addrsig_sym _ZTVN10__cxxabiv119__pointer_type_infoE
	.addrsig_sym _ZTSPFvRK7ResultsE
	.addrsig_sym _ZTIFvRK7ResultsE
	.addrsig_sym _ZTVN10__cxxabiv120__function_type_infoE
	.addrsig_sym _ZTSFvRK7ResultsE
