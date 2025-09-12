	.file	"Parser_math.cc"
                                        # Start of file scope inline assembly
	.globl	_ZSt21ios_base_library_initv

                                        # End of file scope inline assembly
	.text
	.globl	_ZN2PP11Parser_mathC2Ev         # -- Begin function _ZN2PP11Parser_mathC2Ev
	.p2align	5
	.type	_ZN2PP11Parser_mathC2Ev,@function
_ZN2PP11Parser_mathC2Ev:                # @_ZN2PP11Parser_mathC2Ev
# %bb.0:
	ret
.Lfunc_end0:
	.size	_ZN2PP11Parser_mathC2Ev, .Lfunc_end0-_ZN2PP11Parser_mathC2Ev
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _ZN2PP11Parser_math5do_opEiiiRSt5dequeINS_4WordESaIS2_EERS2_RNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi
.LCPI1_0:
	.dword	0x46293e5939a08cea              # double 1.0E+30
	.text
	.globl	_ZN2PP11Parser_math5do_opEiiiRSt5dequeINS_4WordESaIS2_EERS2_RNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi
	.p2align	5
	.type	_ZN2PP11Parser_math5do_opEiiiRSt5dequeINS_4WordESaIS2_EERS2_RNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi,@function
_ZN2PP11Parser_math5do_opEiiiRSt5dequeINS_4WordESaIS2_EERS2_RNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi: # @_ZN2PP11Parser_math5do_opEiiiRSt5dequeINS_4WordESaIS2_EERS2_RNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
# %bb.0:
	addi.d	$sp, $sp, -240
	.cfi_def_cfa_offset 240
	st.d	$ra, $sp, 232                   # 8-byte Folded Spill
	st.d	$fp, $sp, 224                   # 8-byte Folded Spill
	st.d	$s0, $sp, 216                   # 8-byte Folded Spill
	st.d	$s1, $sp, 208                   # 8-byte Folded Spill
	st.d	$s2, $sp, 200                   # 8-byte Folded Spill
	st.d	$s3, $sp, 192                   # 8-byte Folded Spill
	st.d	$s4, $sp, 184                   # 8-byte Folded Spill
	st.d	$s5, $sp, 176                   # 8-byte Folded Spill
	st.d	$s6, $sp, 168                   # 8-byte Folded Spill
	st.d	$s7, $sp, 160                   # 8-byte Folded Spill
	st.d	$s8, $sp, 152                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 144                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 136                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 128                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 120                  # 8-byte Folded Spill
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
	move	$s1, $a4
	ld.d	$a4, $a4, 16
	ld.d	$t0, $s1, 24
	move	$s5, $a1
	ld.d	$a0, $s1, 40
	sub.d	$a1, $a4, $t0
	srai.d	$t0, $a1, 7
	add.d	$a1, $t0, $s5
	move	$s0, $a7
	move	$s4, $a6
	move	$fp, $a5
	move	$s2, $a3
	move	$s3, $a2
	bltz	$a1, .LBB1_3
# %bb.1:
	ori	$a2, $zero, 3
	bltu	$a2, $a1, .LBB1_4
# %bb.2:
	slli.d	$a2, $s5, 7
	add.d	$a2, $a4, $a2
	b	.LBB1_6
.LBB1_3:
	srai.d	$a2, $a1, 2
	b	.LBB1_5
.LBB1_4:
	srli.d	$a2, $a1, 2
.LBB1_5:
	slli.d	$a3, $a2, 3
	ldx.d	$a3, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a2, $a1, $a2
	slli.d	$a2, $a2, 7
	add.d	$a2, $a3, $a2
.LBB1_6:                                # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit
	ld.wu	$a2, $a2, 32
	bstrpick.d	$a2, $a2, 31, 1
	slli.w	$a2, $a2, 1
	ori	$a3, $zero, 2
	bne	$a2, $a3, .LBB1_17
# %bb.7:
	add.d	$a2, $t0, $s2
	bltz	$a2, .LBB1_10
# %bb.8:
	ori	$a3, $zero, 3
	bltu	$a3, $a2, .LBB1_11
# %bb.9:
	slli.d	$a2, $s2, 7
	add.d	$a2, $a4, $a2
	b	.LBB1_13
.LBB1_10:
	srai.d	$a3, $a2, 2
	b	.LBB1_12
.LBB1_11:
	srli.d	$a3, $a2, 2
.LBB1_12:
	slli.d	$a5, $a3, 3
	ldx.d	$a5, $a0, $a5
	slli.d	$a3, $a3, 2
	sub.d	$a2, $a2, $a3
	slli.d	$a2, $a2, 7
	add.d	$a2, $a5, $a2
.LBB1_13:                               # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit112
	ld.wu	$a2, $a2, 32
	bstrpick.d	$a2, $a2, 31, 1
	slli.w	$a2, $a2, 1
	ori	$a3, $zero, 2
	bne	$a2, $a3, .LBB1_17
# %bb.14:
	bltz	$a1, .LBB1_106
# %bb.15:
	ori	$a2, $zero, 3
	bltu	$a2, $a1, .LBB1_107
# %bb.16:
	slli.d	$a0, $s5, 7
	add.d	$a0, $a4, $a0
	b	.LBB1_109
.LBB1_17:
	add.d	$a1, $t0, $s3
	bltz	$a1, .LBB1_20
# %bb.18:
	ori	$a2, $zero, 3
	bltu	$a2, $a1, .LBB1_21
# %bb.19:
	slli.d	$a0, $s3, 7
	add.d	$a0, $a4, $a0
	b	.LBB1_23
.LBB1_20:
	srai.d	$a2, $a1, 2
	b	.LBB1_22
.LBB1_21:
	srli.d	$a2, $a1, 2
.LBB1_22:
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 7
	add.d	$a0, $a0, $a1
.LBB1_23:                               # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit115
	addi.d	$s8, $sp, 96
	move	$a1, $s4
	move	$a2, $s0
	pcaddu18i	$ra, %call36(_ZN2PP4Word11fatal_errorERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi)
	jirl	$ra, $ra, 0
	addi.d	$s4, $s4, 16
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	ori	$a2, $zero, 21
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s1, 16
	ld.d	$a1, $s1, 24
	ld.d	$a0, $s1, 40
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 7
	add.d	$a1, $a1, $s3
	bltz	$a1, .LBB1_26
# %bb.24:
	ori	$a3, $zero, 3
	bltu	$a3, $a1, .LBB1_27
# %bb.25:
	slli.d	$a0, $s3, 7
	add.d	$a0, $a2, $a0
	b	.LBB1_29
.LBB1_26:
	srai.d	$a2, $a1, 2
	b	.LBB1_28
.LBB1_27:
	srli.d	$a2, $a1, 2
.LBB1_28:
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 7
	add.d	$a0, $a0, $a1
.LBB1_29:                               # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit117
	st.d	$s8, $sp, 80
	ld.d	$s6, $a0, 8
	ld.d	$s7, $a0, 0
	ori	$a1, $zero, 16
	st.d	$s6, $sp, 48
	move	$a0, $s8
	bltu	$s6, $a1, .LBB1_31
# %bb.30:                               # %.noexc.i.i
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 48
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 48
	st.d	$a0, $sp, 80
	st.d	$a1, $sp, 96
.LBB1_31:                               # %._crit_edge.i.i.i
	beqz	$s6, .LBB1_35
# %bb.32:                               # %._crit_edge.i.i.i
	ori	$a1, $zero, 1
	bne	$s6, $a1, .LBB1_34
# %bb.33:
	ld.b	$a1, $s7, 0
	st.b	$a1, $a0, 0
	b	.LBB1_35
.LBB1_34:
	move	$a1, $s7
	move	$a2, $s6
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB1_35:                               # %_ZN2PP4Word10get_stringB5cxx11Ev.exit
	ld.d	$a0, $sp, 48
	ld.d	$a1, $sp, 80
	st.d	$a0, $sp, 88
	stx.b	$zero, $a1, $a0
	ld.d	$a1, $sp, 80
	ld.d	$a2, $sp, 88
.Ltmp0:                                 # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.36:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
.Ltmp2:                                 # EH_LABEL
	move	$s6, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a1, $a0, %pc_lo12(.L.str.1)
	ori	$a2, $zero, 12
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp3:                                 # EH_LABEL
# %bb.37:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
	ld.d	$a0, $s6, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s6, $a0
	ld.d	$s7, $a0, 240
	beqz	$s7, .LBB1_209
# %bb.38:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	ld.bu	$a0, $s7, 56
	beqz	$a0, .LBB1_40
# %bb.39:
	ld.bu	$a0, $s7, 67
	b	.LBB1_42
.LBB1_40:
.Ltmp4:                                 # EH_LABEL
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp5:                                 # EH_LABEL
# %bb.41:                               # %.noexc231
	ld.d	$a0, $s7, 0
	ld.d	$a2, $a0, 48
.Ltmp6:                                 # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s7
	jirl	$ra, $a2, 0
.Ltmp7:                                 # EH_LABEL
.LBB1_42:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
.Ltmp8:                                 # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp9:                                 # EH_LABEL
# %bb.43:                               # %.noexc233
.Ltmp10:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp11:                                # EH_LABEL
# %bb.44:                               # %_ZNSolsEPFRSoS_E.exit
	ld.d	$a0, $sp, 80
	beq	$a0, $s8, .LBB1_46
# %bb.45:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a1, $sp, 96
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_46:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a1, $a0, %pc_lo12(.L.str.2)
	ori	$a2, $zero, 40
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s4, $a0
	ld.d	$s6, $a0, 240
	beqz	$s6, .LBB1_211
# %bb.47:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i236
	ld.bu	$a0, $s6, 56
	beqz	$a0, .LBB1_49
# %bb.48:
	ld.bu	$a0, $s6, 67
	b	.LBB1_50
.LBB1_49:
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s6
	jirl	$ra, $a2, 0
.LBB1_50:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit240
	ext.w.b	$a1, $a0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s1, 16
	ld.d	$a1, $s1, 24
	ld.d	$a0, $s1, 40
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 7
	add.d	$a1, $a1, $s5
	bltz	$a1, .LBB1_53
# %bb.51:
	ori	$a3, $zero, 3
	bltu	$a3, $a1, .LBB1_54
# %bb.52:
	slli.d	$a0, $s5, 7
	add.d	$a0, $a2, $a0
	b	.LBB1_56
.LBB1_53:
	srai.d	$a2, $a1, 2
	b	.LBB1_55
.LBB1_54:
	srli.d	$a2, $a1, 2
.LBB1_55:
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 7
	add.d	$a0, $a0, $a1
.LBB1_56:                               # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit119
	addi.d	$s7, $sp, 96
	st.d	$s7, $sp, 80
	ld.d	$s5, $a0, 8
	ld.d	$s6, $a0, 0
	ori	$a1, $zero, 16
	st.d	$s5, $sp, 48
	move	$a0, $s7
	bltu	$s5, $a1, .LBB1_58
# %bb.57:                               # %.noexc.i.i121
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 48
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 48
	st.d	$a0, $sp, 80
	st.d	$a1, $sp, 96
.LBB1_58:                               # %._crit_edge.i.i.i120
	beqz	$s5, .LBB1_62
# %bb.59:                               # %._crit_edge.i.i.i120
	ori	$a1, $zero, 1
	bne	$s5, $a1, .LBB1_61
# %bb.60:
	ld.b	$a1, $s6, 0
	st.b	$a1, $a0, 0
	b	.LBB1_62
.LBB1_61:
	move	$a1, $s6
	move	$a2, $s5
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB1_62:                               # %_ZN2PP4Word10get_stringB5cxx11Ev.exit122
	ld.d	$a0, $sp, 48
	ld.d	$a1, $sp, 80
	st.d	$a0, $sp, 88
	stx.b	$zero, $a1, $a0
	ld.d	$a1, $sp, 80
	ld.d	$a2, $sp, 88
.Ltmp12:                                # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp13:                                # EH_LABEL
# %bb.63:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit123
	move	$s4, $a0
	ld.d	$a2, $s1, 16
	ld.d	$a1, $s1, 24
	ld.d	$a0, $s1, 40
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 7
	add.d	$a1, $a1, $s3
	bltz	$a1, .LBB1_66
# %bb.64:
	ori	$a3, $zero, 3
	bltu	$a3, $a1, .LBB1_67
# %bb.65:
	slli.d	$a0, $s3, 7
	add.d	$a0, $a2, $a0
	b	.LBB1_69
.LBB1_66:
	srai.d	$a2, $a1, 2
	b	.LBB1_68
.LBB1_67:
	srli.d	$a2, $a1, 2
.LBB1_68:
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 7
	add.d	$a0, $a0, $a1
.LBB1_69:                               # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit125
	addi.d	$s6, $sp, 64
	st.d	$s6, $sp, 48
	ld.d	$s3, $a0, 8
	ld.d	$s5, $a0, 0
	ori	$a1, $zero, 16
	st.d	$s3, $sp, 16
	move	$a0, $s6
	bltu	$s3, $a1, .LBB1_72
# %bb.70:                               # %.noexc.i.i127
.Ltmp15:                                # EH_LABEL
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 16
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp16:                                # EH_LABEL
# %bb.71:                               # %.noexc
	ld.d	$a1, $sp, 16
	st.d	$a0, $sp, 48
	st.d	$a1, $sp, 64
.LBB1_72:                               # %._crit_edge.i.i.i126
	beqz	$s3, .LBB1_76
# %bb.73:                               # %._crit_edge.i.i.i126
	ori	$a1, $zero, 1
	bne	$s3, $a1, .LBB1_75
# %bb.74:
	ld.b	$a1, $s5, 0
	st.b	$a1, $a0, 0
	b	.LBB1_76
.LBB1_75:
	move	$a1, $s5
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB1_76:
	ld.d	$a0, $sp, 16
	ld.d	$a1, $sp, 48
	st.d	$a0, $sp, 56
	stx.b	$zero, $a1, $a0
	ld.d	$a1, $sp, 48
	ld.d	$a2, $sp, 56
.Ltmp18:                                # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp19:                                # EH_LABEL
# %bb.77:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit130
	move	$s3, $a0
	ld.d	$a2, $s1, 16
	ld.d	$a1, $s1, 24
	ld.d	$a0, $s1, 40
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 7
	add.d	$a1, $a1, $s2
	bltz	$a1, .LBB1_80
# %bb.78:
	ori	$a3, $zero, 3
	bltu	$a3, $a1, .LBB1_81
# %bb.79:
	slli.d	$a0, $s2, 7
	add.d	$a0, $a2, $a0
	b	.LBB1_83
.LBB1_80:
	srai.d	$a2, $a1, 2
	b	.LBB1_82
.LBB1_81:
	srli.d	$a2, $a1, 2
.LBB1_82:
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 7
	add.d	$a0, $a0, $a1
.LBB1_83:                               # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit132
	addi.d	$s4, $sp, 32
	st.d	$s4, $sp, 16
	ld.d	$s1, $a0, 8
	ld.d	$s2, $a0, 0
	ori	$a1, $zero, 16
	st.d	$s1, $sp, 112
	move	$a0, $s4
	bltu	$s1, $a1, .LBB1_86
# %bb.84:                               # %.noexc.i.i134
.Ltmp21:                                # EH_LABEL
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 112
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp22:                                # EH_LABEL
# %bb.85:                               # %.noexc135
	ld.d	$a1, $sp, 112
	st.d	$a0, $sp, 16
	st.d	$a1, $sp, 32
.LBB1_86:                               # %._crit_edge.i.i.i133
	beqz	$s1, .LBB1_90
# %bb.87:                               # %._crit_edge.i.i.i133
	ori	$a1, $zero, 1
	bne	$s1, $a1, .LBB1_89
# %bb.88:
	ld.b	$a1, $s2, 0
	st.b	$a1, $a0, 0
	b	.LBB1_90
.LBB1_89:
	move	$a1, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB1_90:
	ld.d	$a0, $sp, 112
	ld.d	$a1, $sp, 16
	st.d	$a0, $sp, 24
	stx.b	$zero, $a1, $a0
	ld.d	$a1, $sp, 16
	ld.d	$a2, $sp, 24
.Ltmp24:                                # EH_LABEL
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp25:                                # EH_LABEL
# %bb.91:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit138
	move	$s1, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s1, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB1_212
# %bb.92:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i242
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB1_94
# %bb.93:
	ld.bu	$a0, $s2, 67
	b	.LBB1_96
.LBB1_94:
.Ltmp26:                                # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp27:                                # EH_LABEL
# %bb.95:                               # %.noexc247
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp28:                                # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp29:                                # EH_LABEL
.LBB1_96:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i244
.Ltmp30:                                # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp31:                                # EH_LABEL
# %bb.97:                               # %.noexc249
.Ltmp32:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp33:                                # EH_LABEL
# %bb.98:                               # %_ZNSolsEPFRSoS_E.exit140
	ld.d	$a0, $sp, 16
	beq	$a0, $s4, .LBB1_100
# %bb.99:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_100:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143
	ld.d	$a0, $sp, 48
	beq	$a0, $s6, .LBB1_102
# %bb.101:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_102:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146
	ld.d	$a0, $sp, 80
	beq	$a0, $s7, .LBB1_104
# %bb.103:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147
	ld.d	$a1, $sp, 96
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_104:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149
	ori	$a0, $zero, 2
	st.w	$a0, $s0, 0
	movgr2fr.d	$fa0, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN2PP4Word9set_valueEd)
	jirl	$ra, $ra, 0
.LBB1_105:
	fld.d	$fs3, $sp, 120                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 128                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 136                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 144                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 224                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 232                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 240
	ret
.LBB1_106:
	srai.d	$a2, $a1, 2
	b	.LBB1_108
.LBB1_107:
	srli.d	$a2, $a1, 2
.LBB1_108:
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 7
	add.d	$a0, $a0, $a1
.LBB1_109:                              # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit163
	pcaddu18i	$ra, %call36(_ZN2PP4Word10get_doubleEv)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s1, 16
	ld.d	$a1, $s1, 24
	ld.d	$a0, $s1, 40
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 7
	add.d	$a1, $a1, $s3
	fmov.d	$fs0, $fa0
	bltz	$a1, .LBB1_112
# %bb.110:
	ori	$a3, $zero, 3
	bltu	$a3, $a1, .LBB1_113
# %bb.111:
	slli.d	$a0, $s3, 7
	add.d	$a0, $a2, $a0
	b	.LBB1_115
.LBB1_112:
	srai.d	$a2, $a1, 2
	b	.LBB1_114
.LBB1_113:
	srli.d	$a2, $a1, 2
.LBB1_114:
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 7
	add.d	$a0, $a0, $a1
.LBB1_115:                              # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit165
	addi.d	$s7, $sp, 96
	st.d	$s7, $sp, 80
	ld.d	$s5, $a0, 8
	ld.d	$s6, $a0, 0
	ori	$a1, $zero, 16
	st.d	$s5, $sp, 48
	move	$a0, $s7
	bltu	$s5, $a1, .LBB1_117
# %bb.116:                              # %.noexc.i.i167
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 48
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 48
	st.d	$a0, $sp, 80
	st.d	$a1, $sp, 96
.LBB1_117:                              # %._crit_edge.i.i.i166
	beqz	$s5, .LBB1_121
# %bb.118:                              # %._crit_edge.i.i.i166
	ori	$a1, $zero, 1
	bne	$s5, $a1, .LBB1_120
# %bb.119:
	ld.b	$a1, $s6, 0
	st.b	$a1, $a0, 0
	b	.LBB1_121
.LBB1_120:
	move	$a1, $s6
	move	$a2, $s5
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB1_121:                              # %_ZN2PP4Word10get_stringB5cxx11Ev.exit168
	ld.d	$a0, $sp, 48
	ld.d	$a1, $sp, 80
	st.d	$a0, $sp, 88
	stx.b	$zero, $a1, $a0
	ld.d	$a2, $s1, 16
	ld.d	$a1, $s1, 24
	ld.d	$a0, $s1, 40
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 7
	add.d	$a1, $a1, $s2
	bltz	$a1, .LBB1_124
# %bb.122:
	ori	$a3, $zero, 3
	bltu	$a3, $a1, .LBB1_125
# %bb.123:
	slli.d	$a0, $s2, 7
	add.d	$a0, $a2, $a0
	b	.LBB1_127
.LBB1_124:
	srai.d	$a2, $a1, 2
	b	.LBB1_126
.LBB1_125:
	srli.d	$a2, $a1, 2
.LBB1_126:
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 7
	add.d	$a0, $a0, $a1
.LBB1_127:                              # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit170
.Ltmp40:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN2PP4Word10get_doubleEv)
	jirl	$ra, $ra, 0
.Ltmp41:                                # EH_LABEL
# %bb.128:
	fmov.d	$fs1, $fa0
	ld.d	$a0, $sp, 88
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB1_138
# %bb.129:
	ori	$a1, $zero, 2
	movgr2fr.d	$fs2, $zero
	bne	$a0, $a1, .LBB1_197
# %bb.130:                              # %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit176
	ld.d	$a0, $sp, 80
	ld.hu	$a0, $a0, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 2602
	bne	$a0, $a1, .LBB1_197
# %bb.131:                              # %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit176.thread
	movgr2fr.d	$fs2, $zero
	fcmp.cune.d	$fcc0, $fs0, $fs2
	bcnez	$fcc0, .LBB1_133
# %bb.132:                              # %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit176.thread
	movgr2fr.d	$fa0, $zero
	fcmp.cle.d	$fcc0, $fa0, $fs1
	bcnez	$fcc0, .LBB1_197
.LBB1_133:
	movgr2fr.d	$fs3, $zero
	fcmp.cune.d	$fcc0, $fs0, $fs3
	bcnez	$fcc0, .LBB1_169
# %bb.134:
	movgr2fr.d	$fs2, $zero
	fcmp.cule.d	$fcc0, $fs2, $fs1
	bcnez	$fcc0, .LBB1_169
# %bb.135:
	ld.d	$a2, $s1, 16
	ld.d	$a1, $s1, 24
	ld.d	$a0, $s1, 40
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 7
	add.d	$a1, $a1, $s3
	bltz	$a1, .LBB1_173
# %bb.136:
	ori	$a3, $zero, 3
	bltu	$a3, $a1, .LBB1_174
# %bb.137:
	slli.d	$a0, $s3, 7
	add.d	$a0, $a2, $a0
	b	.LBB1_176
.LBB1_138:                              # %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit176.thread319.thread382
	ld.d	$a0, $sp, 80
	ld.b	$a0, $a0, 0
	andi	$a0, $a0, 255
	addi.d	$a1, $a0, -43
	sltui	$a1, $a1, 1
	fadd.d	$fa0, $fs0, $fs1
	movgr2fr.d	$fa1, $zero
	movgr2cf	$fcc0, $a1
	fsel	$fa0, $fa1, $fa0, $fcc0
	addi.d	$a1, $a0, -45
	sltui	$a1, $a1, 1
	fsub.d	$fa1, $fs0, $fs1
	movgr2cf	$fcc0, $a1
	fsel	$fa0, $fa0, $fa1, $fcc0
	addi.d	$a0, $a0, -42
	sltui	$a0, $a0, 1
	fmul.d	$fa1, $fs0, $fs1
	movgr2cf	$fcc0, $a0
	fsel	$fs2, $fa0, $fa1, $fcc0
.LBB1_139:                              # %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit207
	ld.d	$a0, $sp, 80
	ld.bu	$a0, $a0, 0
	ori	$a1, $zero, 47
	bne	$a0, $a1, .LBB1_197
# %bb.140:                              # %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit207.thread
	movgr2fr.d	$fs2, $zero
	fcmp.cune.d	$fcc0, $fs1, $fs2
	bcnez	$fcc0, .LBB1_144
# %bb.141:
	ld.d	$a2, $s1, 16
	ld.d	$a1, $s1, 24
	ld.d	$a0, $s1, 40
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 7
	add.d	$a1, $a1, $s3
	bltz	$a1, .LBB1_145
# %bb.142:
	ori	$a3, $zero, 3
	bltu	$a3, $a1, .LBB1_146
# %bb.143:
	slli.d	$a0, $s3, 7
	add.d	$a0, $a2, $a0
	b	.LBB1_148
.LBB1_144:
	fdiv.d	$fs2, $fs0, $fs1
	b	.LBB1_197
.LBB1_145:
	srai.d	$a2, $a1, 2
	b	.LBB1_147
.LBB1_146:
	srli.d	$a2, $a1, 2
.LBB1_147:
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 7
	add.d	$a0, $a0, $a1
.LBB1_148:                              # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit209
.Ltmp87:                                # EH_LABEL
	move	$a1, $s4
	move	$a2, $s0
	pcaddu18i	$ra, %call36(_ZN2PP4Word11fatal_errorERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi)
	jirl	$ra, $ra, 0
.Ltmp88:                                # EH_LABEL
# %bb.149:
	addi.d	$s1, $s4, 16
.Ltmp89:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a1, $a0, %pc_lo12(.L.str.12)
	ori	$a2, $zero, 12
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp90:                                # EH_LABEL
# %bb.150:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit211
	ld.d	$a0, $s1, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s1, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB1_214
# %bb.151:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i275
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB1_153
# %bb.152:
	ld.bu	$a0, $s2, 67
	b	.LBB1_155
.LBB1_153:
.Ltmp91:                                # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp92:                                # EH_LABEL
# %bb.154:                              # %.noexc280
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp93:                                # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp94:                                # EH_LABEL
.LBB1_155:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i277
.Ltmp95:                                # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp96:                                # EH_LABEL
# %bb.156:                              # %.noexc282
.Ltmp97:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp98:                                # EH_LABEL
# %bb.157:                              # %_ZNSolsEPFRSoS_E.exit213
.Ltmp99:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a1, $a0, %pc_lo12(.L.str.13)
	ori	$a2, $zero, 12
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp100:                               # EH_LABEL
# %bb.158:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit215
.Ltmp101:                               # EH_LABEL
	move	$a0, $s1
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp102:                               # EH_LABEL
# %bb.159:                              # %_ZNSolsEd.exit217
.Ltmp103:                               # EH_LABEL
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a1, $a0, %pc_lo12(.L.str.14)
	ori	$a2, $zero, 16
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp104:                               # EH_LABEL
# %bb.160:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit219
.Ltmp105:                               # EH_LABEL
	move	$a0, $s1
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp106:                               # EH_LABEL
# %bb.161:                              # %_ZNSolsEd.exit221
	move	$s1, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s1, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB1_214
# %bb.162:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i286
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB1_164
# %bb.163:
	ld.bu	$a0, $s2, 67
	b	.LBB1_166
.LBB1_164:
.Ltmp107:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp108:                               # EH_LABEL
# %bb.165:                              # %.noexc291
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp109:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp110:                               # EH_LABEL
.LBB1_166:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i288
.Ltmp111:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp112:                               # EH_LABEL
# %bb.167:                              # %.noexc293
.Ltmp113:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp114:                               # EH_LABEL
# %bb.168:                              # %_ZNSolsEPFRSoS_E.exit223
	pcalau12i	$a0, %pc_hi20(.LCPI1_0)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI1_0)
	fcmp.ceq.d	$fcc0, $fs0, $fs2
	fsel	$fs2, $fa0, $fs2, $fcc0
	b	.LBB1_196
.LBB1_169:
	fcmp.clt.d	$fcc0, $fs0, $fs3
	bceqz	$fcc0, .LBB1_172
# %bb.170:
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZNSt5dequeIN2PP4WordESaIS1_EEixEm)
	jirl	$ra, $ra, 0
	ld.w	$a0, $a0, 32
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB1_200
# %bb.171:                              # %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit176.thread319
	ld.d	$s2, $sp, 88
	fmov.d	$fa0, $fs0
	fmov.d	$fa1, $fs1
	pcaddu18i	$ra, %call36(pow)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	fmov.d	$fs2, $fa0
	beq	$s2, $a0, .LBB1_139
	b	.LBB1_197
.LBB1_172:                              # %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit176.thread319.thread385
	fmov.d	$fa0, $fs0
	fmov.d	$fa1, $fs1
	pcaddu18i	$ra, %call36(pow)
	jirl	$ra, $ra, 0
	fmov.d	$fs2, $fa0
	b	.LBB1_197
.LBB1_173:
	srai.d	$a2, $a1, 2
	b	.LBB1_175
.LBB1_174:
	srli.d	$a2, $a1, 2
.LBB1_175:
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 7
	add.d	$a0, $a0, $a1
.LBB1_176:                              # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit178
.Ltmp59:                                # EH_LABEL
	move	$a1, $s4
	move	$a2, $s0
	pcaddu18i	$ra, %call36(_ZN2PP4Word11fatal_errorERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi)
	jirl	$ra, $ra, 0
.Ltmp60:                                # EH_LABEL
# %bb.177:
	addi.d	$s1, $s4, 16
.Ltmp61:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a1, $a0, %pc_lo12(.L.str.7)
	ori	$a2, $zero, 45
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp62:                                # EH_LABEL
# %bb.178:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit180
	ld.d	$a0, $s1, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s1, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB1_214
# %bb.179:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i253
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB1_181
# %bb.180:
	ld.bu	$a0, $s2, 67
	b	.LBB1_183
.LBB1_181:
.Ltmp63:                                # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp64:                                # EH_LABEL
# %bb.182:                              # %.noexc258
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp65:                                # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp66:                                # EH_LABEL
.LBB1_183:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i255
.Ltmp67:                                # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp68:                                # EH_LABEL
# %bb.184:                              # %.noexc260
.Ltmp69:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp70:                                # EH_LABEL
# %bb.185:                              # %_ZNSolsEPFRSoS_E.exit182
.Ltmp71:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a1, $a0, %pc_lo12(.L.str.8)
	ori	$a2, $zero, 7
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp72:                                # EH_LABEL
# %bb.186:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit184
.Ltmp73:                                # EH_LABEL
	move	$a0, $s1
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp74:                                # EH_LABEL
# %bb.187:                              # %_ZNSolsEd.exit
.Ltmp75:                                # EH_LABEL
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a1, $a0, %pc_lo12(.L.str.9)
	ori	$a2, $zero, 13
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp76:                                # EH_LABEL
# %bb.188:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit187
.Ltmp77:                                # EH_LABEL
	move	$a0, $s1
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp78:                                # EH_LABEL
# %bb.189:                              # %_ZNSolsEd.exit189
	move	$s1, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s1, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB1_214
# %bb.190:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i264
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB1_192
# %bb.191:
	ld.bu	$a0, $s2, 67
	b	.LBB1_194
.LBB1_192:
.Ltmp79:                                # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp80:                                # EH_LABEL
# %bb.193:                              # %.noexc269
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp81:                                # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp82:                                # EH_LABEL
.LBB1_194:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i266
.Ltmp83:                                # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp84:                                # EH_LABEL
# %bb.195:                              # %.noexc271
.Ltmp85:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp86:                                # EH_LABEL
.LBB1_196:                              # %_ZNSolsEPFRSoS_E.exit191
	ori	$a0, $zero, 2
	st.w	$a0, $s0, 0
.LBB1_197:                              # %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit207.thread320.invoke
.Ltmp117:                               # EH_LABEL
	move	$a0, $fp
	fmov.d	$fa0, $fs2
	pcaddu18i	$ra, %call36(_ZN2PP4Word9set_valueEd)
	jirl	$ra, $ra, 0
.Ltmp118:                               # EH_LABEL
# %bb.198:
	ld.d	$a0, $sp, 80
	beq	$a0, $s7, .LBB1_105
# %bb.199:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i224
	ld.d	$a1, $sp, 96
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB1_105
.LBB1_200:
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZNSt5dequeIN2PP4WordESaIS1_EEixEm)
	jirl	$ra, $ra, 0
.Ltmp43:                                # EH_LABEL
	move	$a1, $s4
	move	$a2, $s0
	pcaddu18i	$ra, %call36(_ZN2PP4Word11fatal_errorERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi)
	jirl	$ra, $ra, 0
.Ltmp44:                                # EH_LABEL
# %bb.201:
	addi.d	$s1, $s4, 16
.Ltmp45:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a1, $a0, %pc_lo12(.L.str.10)
	ori	$a2, $zero, 64
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp46:                                # EH_LABEL
# %bb.202:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit193
.Ltmp47:                                # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
	jirl	$ra, $ra, 0
.Ltmp48:                                # EH_LABEL
# %bb.203:                              # %_ZNSolsEPFRSoS_E.exit195
.Ltmp49:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a1, $a0, %pc_lo12(.L.str.8)
	ori	$a2, $zero, 7
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp50:                                # EH_LABEL
# %bb.204:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit197
.Ltmp51:                                # EH_LABEL
	move	$a0, $s1
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp52:                                # EH_LABEL
# %bb.205:                              # %_ZNSolsEd.exit199
.Ltmp53:                                # EH_LABEL
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a1, $a0, %pc_lo12(.L.str.9)
	ori	$a2, $zero, 13
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp54:                                # EH_LABEL
# %bb.206:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit201
.Ltmp55:                                # EH_LABEL
	move	$a0, $s1
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp56:                                # EH_LABEL
# %bb.207:                              # %_ZNSolsEd.exit203
.Ltmp57:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
	jirl	$ra, $ra, 0
.Ltmp58:                                # EH_LABEL
# %bb.208:                              # %_ZNSolsEPFRSoS_E.exit205
	ori	$a0, $zero, 2
	st.w	$a0, $s0, 0
	fmov.d	$fs2, $fs3
	b	.LBB1_197
.LBB1_209:
.Ltmp37:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp38:                                # EH_LABEL
# %bb.210:                              # %.noexc230
.LBB1_211:
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.LBB1_212:
.Ltmp34:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp35:                                # EH_LABEL
# %bb.213:                              # %.noexc246
.LBB1_214:                              # %.invoke
.Ltmp115:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp116:                               # EH_LABEL
# %bb.215:                              # %.cont
.LBB1_216:
.Ltmp42:                                # EH_LABEL
	b	.LBB1_222
.LBB1_217:
.Ltmp23:                                # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 48
	beq	$a0, $s6, .LBB1_225
	b	.LBB1_227
.LBB1_218:
.Ltmp17:                                # EH_LABEL
	b	.LBB1_222
.LBB1_219:
.Ltmp119:                               # EH_LABEL
	b	.LBB1_222
.LBB1_220:
.Ltmp20:                                # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 48
	beq	$a0, $s6, .LBB1_225
	b	.LBB1_227
.LBB1_221:
.Ltmp14:                                # EH_LABEL
.LBB1_222:
	move	$fp, $a0
	ld.d	$a0, $sp, 80
	bne	$a0, $s7, .LBB1_228
	b	.LBB1_232
.LBB1_223:
.Ltmp36:                                # EH_LABEL
	ld.d	$a2, $sp, 16
	move	$fp, $a0
	bne	$a2, $s4, .LBB1_226
# %bb.224:
	ld.d	$a0, $sp, 48
	bne	$a0, $s6, .LBB1_227
.LBB1_225:
	ld.d	$a0, $sp, 80
	bne	$a0, $s7, .LBB1_228
	b	.LBB1_232
.LBB1_226:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153
	ld.d	$a0, $sp, 32
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 48
	beq	$a0, $s6, .LBB1_225
.LBB1_227:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 80
	beq	$a0, $s7, .LBB1_232
.LBB1_228:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i227
	ld.d	$a1, $sp, 96
	addi.d	$a1, $a1, 1
	b	.LBB1_231
.LBB1_229:
.Ltmp39:                                # EH_LABEL
	ld.d	$a2, $sp, 80
	move	$fp, $a0
	beq	$a2, $s8, .LBB1_232
# %bb.230:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150
	ld.d	$a0, $sp, 96
	addi.d	$a1, $a0, 1
	move	$a0, $a2
.LBB1_231:
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_232:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	_ZN2PP11Parser_math5do_opEiiiRSt5dequeINS_4WordESaIS2_EERS2_RNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi, .Lfunc_end1-_ZN2PP11Parser_math5do_opEiiiRSt5dequeINS_4WordESaIS2_EERS2_RNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi
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
	.uleb128 .Ltmp11-.Ltmp0                 #   Call between .Ltmp0 and .Ltmp11
	.uleb128 .Ltmp39-.Lfunc_begin0          #     jumps to .Ltmp39
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp11-.Lfunc_begin0          # >> Call Site 3 <<
	.uleb128 .Ltmp12-.Ltmp11                #   Call between .Ltmp11 and .Ltmp12
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp12-.Lfunc_begin0          # >> Call Site 4 <<
	.uleb128 .Ltmp13-.Ltmp12                #   Call between .Ltmp12 and .Ltmp13
	.uleb128 .Ltmp14-.Lfunc_begin0          #     jumps to .Ltmp14
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp15-.Lfunc_begin0          # >> Call Site 5 <<
	.uleb128 .Ltmp16-.Ltmp15                #   Call between .Ltmp15 and .Ltmp16
	.uleb128 .Ltmp17-.Lfunc_begin0          #     jumps to .Ltmp17
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp16-.Lfunc_begin0          # >> Call Site 6 <<
	.uleb128 .Ltmp18-.Ltmp16                #   Call between .Ltmp16 and .Ltmp18
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp18-.Lfunc_begin0          # >> Call Site 7 <<
	.uleb128 .Ltmp19-.Ltmp18                #   Call between .Ltmp18 and .Ltmp19
	.uleb128 .Ltmp20-.Lfunc_begin0          #     jumps to .Ltmp20
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp21-.Lfunc_begin0          # >> Call Site 8 <<
	.uleb128 .Ltmp22-.Ltmp21                #   Call between .Ltmp21 and .Ltmp22
	.uleb128 .Ltmp23-.Lfunc_begin0          #     jumps to .Ltmp23
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp22-.Lfunc_begin0          # >> Call Site 9 <<
	.uleb128 .Ltmp24-.Ltmp22                #   Call between .Ltmp22 and .Ltmp24
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp24-.Lfunc_begin0          # >> Call Site 10 <<
	.uleb128 .Ltmp33-.Ltmp24                #   Call between .Ltmp24 and .Ltmp33
	.uleb128 .Ltmp36-.Lfunc_begin0          #     jumps to .Ltmp36
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp33-.Lfunc_begin0          # >> Call Site 11 <<
	.uleb128 .Ltmp40-.Ltmp33                #   Call between .Ltmp33 and .Ltmp40
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp40-.Lfunc_begin0          # >> Call Site 12 <<
	.uleb128 .Ltmp41-.Ltmp40                #   Call between .Ltmp40 and .Ltmp41
	.uleb128 .Ltmp42-.Lfunc_begin0          #     jumps to .Ltmp42
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp87-.Lfunc_begin0          # >> Call Site 13 <<
	.uleb128 .Ltmp114-.Ltmp87               #   Call between .Ltmp87 and .Ltmp114
	.uleb128 .Ltmp119-.Lfunc_begin0         #     jumps to .Ltmp119
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp114-.Lfunc_begin0         # >> Call Site 14 <<
	.uleb128 .Ltmp59-.Ltmp114               #   Call between .Ltmp114 and .Ltmp59
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp59-.Lfunc_begin0          # >> Call Site 15 <<
	.uleb128 .Ltmp118-.Ltmp59               #   Call between .Ltmp59 and .Ltmp118
	.uleb128 .Ltmp119-.Lfunc_begin0         #     jumps to .Ltmp119
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp118-.Lfunc_begin0         # >> Call Site 16 <<
	.uleb128 .Ltmp43-.Ltmp118               #   Call between .Ltmp118 and .Ltmp43
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp43-.Lfunc_begin0          # >> Call Site 17 <<
	.uleb128 .Ltmp58-.Ltmp43                #   Call between .Ltmp43 and .Ltmp58
	.uleb128 .Ltmp119-.Lfunc_begin0         #     jumps to .Ltmp119
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp37-.Lfunc_begin0          # >> Call Site 18 <<
	.uleb128 .Ltmp38-.Ltmp37                #   Call between .Ltmp37 and .Ltmp38
	.uleb128 .Ltmp39-.Lfunc_begin0          #     jumps to .Ltmp39
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp38-.Lfunc_begin0          # >> Call Site 19 <<
	.uleb128 .Ltmp34-.Ltmp38                #   Call between .Ltmp38 and .Ltmp34
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp34-.Lfunc_begin0          # >> Call Site 20 <<
	.uleb128 .Ltmp35-.Ltmp34                #   Call between .Ltmp34 and .Ltmp35
	.uleb128 .Ltmp36-.Lfunc_begin0          #     jumps to .Ltmp36
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp115-.Lfunc_begin0         # >> Call Site 21 <<
	.uleb128 .Ltmp116-.Ltmp115              #   Call between .Ltmp115 and .Ltmp116
	.uleb128 .Ltmp119-.Lfunc_begin0         #     jumps to .Ltmp119
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp116-.Lfunc_begin0         # >> Call Site 22 <<
	.uleb128 .Lfunc_end1-.Ltmp116           #   Call between .Ltmp116 and .Lfunc_end1
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt5dequeIN2PP4WordESaIS1_EEixEm,"axG",@progbits,_ZNSt5dequeIN2PP4WordESaIS1_EEixEm,comdat
	.weak	_ZNSt5dequeIN2PP4WordESaIS1_EEixEm # -- Begin function _ZNSt5dequeIN2PP4WordESaIS1_EEixEm
	.p2align	5
	.type	_ZNSt5dequeIN2PP4WordESaIS1_EEixEm,@function
_ZNSt5dequeIN2PP4WordESaIS1_EEixEm:     # @_ZNSt5dequeIN2PP4WordESaIS1_EEixEm
	.cfi_startproc
# %bb.0:
	ld.d	$a3, $a0, 16
	ld.d	$a2, $a0, 24
	ld.d	$a0, $a0, 40
	sub.d	$a2, $a3, $a2
	srai.d	$a2, $a2, 7
	add.d	$a2, $a2, $a1
	bltz	$a2, .LBB2_3
# %bb.1:
	ori	$a4, $zero, 3
	bltu	$a4, $a2, .LBB2_4
# %bb.2:
	slli.d	$a0, $a1, 7
	add.d	$a0, $a3, $a0
	ret
.LBB2_3:
	srai.d	$a1, $a2, 2
	b	.LBB2_5
.LBB2_4:
	srli.d	$a1, $a2, 2
.LBB2_5:
	slli.d	$a3, $a1, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a1, $a1, 2
	sub.d	$a1, $a2, $a1
	slli.d	$a1, $a1, 7
	add.d	$a0, $a0, $a1
	ret
.Lfunc_end2:
	.size	_ZNSt5dequeIN2PP4WordESaIS1_EEixEm, .Lfunc_end2-_ZNSt5dequeIN2PP4WordESaIS1_EEixEm
	.cfi_endproc
                                        # -- End function
	.text
	.globl	_ZN2PP11Parser_math16do_op_relationalEiiiRSt5dequeINS_4WordESaIS2_EERS2_RNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi # -- Begin function _ZN2PP11Parser_math16do_op_relationalEiiiRSt5dequeINS_4WordESaIS2_EERS2_RNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi
	.p2align	5
	.type	_ZN2PP11Parser_math16do_op_relationalEiiiRSt5dequeINS_4WordESaIS2_EERS2_RNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi,@function
_ZN2PP11Parser_math16do_op_relationalEiiiRSt5dequeINS_4WordESaIS2_EERS2_RNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi: # @_ZN2PP11Parser_math16do_op_relationalEiiiRSt5dequeINS_4WordESaIS2_EERS2_RNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception1
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
	st.d	$s8, $sp, 136                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 128                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 120                  # 8-byte Folded Spill
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
	move	$s3, $a4
	ld.d	$a4, $a4, 16
	ld.d	$t0, $s3, 24
	move	$s4, $a1
	ld.d	$a0, $s3, 40
	sub.d	$a1, $a4, $t0
	srai.d	$a1, $a1, 7
	add.d	$a1, $a1, $s4
	move	$s0, $a7
	move	$s1, $a6
	move	$s8, $a5
	move	$s2, $a3
	move	$s5, $a2
	bltz	$a1, .LBB3_3
# %bb.1:
	ori	$a2, $zero, 3
	bltu	$a2, $a1, .LBB3_4
# %bb.2:
	slli.d	$a0, $s4, 7
	add.d	$a0, $a4, $a0
	b	.LBB3_6
.LBB3_3:
	srai.d	$a2, $a1, 2
	b	.LBB3_5
.LBB3_4:
	srli.d	$a2, $a1, 2
.LBB3_5:
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 7
	add.d	$a0, $a0, $a1
.LBB3_6:                                # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit
	addi.d	$a2, $sp, 96
	st.d	$a2, $sp, 80
	ld.d	$s6, $a0, 8
	ld.d	$s7, $a0, 0
	ori	$a1, $zero, 16
	st.d	$s6, $sp, 48
	move	$a0, $a2
	bltu	$s6, $a1, .LBB3_8
# %bb.7:                                # %.noexc.i.i
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 48
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 48
	st.d	$a0, $sp, 80
	st.d	$a1, $sp, 96
.LBB3_8:                                # %._crit_edge.i.i.i
	beqz	$s6, .LBB3_12
# %bb.9:                                # %._crit_edge.i.i.i
	ori	$a1, $zero, 1
	bne	$s6, $a1, .LBB3_11
# %bb.10:
	ld.b	$a1, $s7, 0
	st.b	$a1, $a0, 0
	b	.LBB3_12
.LBB3_11:
	move	$a1, $s7
	move	$a2, $s6
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB3_12:                               # %_ZN2PP4Word10get_stringB5cxx11Ev.exit
	ld.d	$a0, $sp, 48
	ld.d	$a1, $sp, 80
	st.d	$a0, $sp, 88
	stx.b	$zero, $a1, $a0
	ld.d	$a2, $s3, 16
	ld.d	$a1, $s3, 24
	ld.d	$a0, $s3, 40
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 7
	add.d	$a1, $a1, $s5
	bltz	$a1, .LBB3_15
# %bb.13:
	ori	$a3, $zero, 3
	bltu	$a3, $a1, .LBB3_16
# %bb.14:
	slli.d	$a0, $s5, 7
	add.d	$a0, $a2, $a0
	b	.LBB3_18
.LBB3_15:
	srai.d	$a2, $a1, 2
	b	.LBB3_17
.LBB3_16:
	srli.d	$a2, $a1, 2
.LBB3_17:
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 7
	add.d	$a0, $a0, $a1
.LBB3_18:                               # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit143
	addi.d	$a2, $sp, 64
	st.d	$a2, $sp, 48
	ld.d	$s6, $a0, 8
	ld.d	$s7, $a0, 0
	ori	$a1, $zero, 16
	st.d	$s6, $sp, 16
	move	$a0, $a2
	bltu	$s6, $a1, .LBB3_21
# %bb.19:                               # %.noexc.i.i145
.Ltmp120:                               # EH_LABEL
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 16
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp121:                               # EH_LABEL
# %bb.20:                               # %.noexc
	ld.d	$a1, $sp, 16
	st.d	$a0, $sp, 48
	st.d	$a1, $sp, 64
.LBB3_21:                               # %._crit_edge.i.i.i144
	beqz	$s6, .LBB3_25
# %bb.22:                               # %._crit_edge.i.i.i144
	ori	$a1, $zero, 1
	bne	$s6, $a1, .LBB3_24
# %bb.23:
	ld.b	$a1, $s7, 0
	st.b	$a1, $a0, 0
	b	.LBB3_25
.LBB3_24:
	move	$a1, $s7
	move	$a2, $s6
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB3_25:
	ld.d	$a0, $sp, 16
	ld.d	$a1, $sp, 48
	st.d	$a0, $sp, 56
	stx.b	$zero, $a1, $a0
	ld.d	$a2, $s3, 16
	ld.d	$a1, $s3, 24
	ld.d	$a0, $s3, 40
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 7
	add.d	$a1, $a1, $s2
	bltz	$a1, .LBB3_28
# %bb.26:
	ori	$a3, $zero, 3
	bltu	$a3, $a1, .LBB3_29
# %bb.27:
	slli.d	$a0, $s2, 7
	add.d	$a0, $a2, $a0
	b	.LBB3_31
.LBB3_28:
	srai.d	$a2, $a1, 2
	b	.LBB3_30
.LBB3_29:
	srli.d	$a2, $a1, 2
.LBB3_30:
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 7
	add.d	$a0, $a0, $a1
.LBB3_31:                               # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit148
	addi.d	$fp, $sp, 32
	st.d	$fp, $sp, 16
	ld.d	$s6, $a0, 8
	ld.d	$s7, $a0, 0
	ori	$a1, $zero, 16
	st.d	$s6, $sp, 112
	move	$a0, $fp
	bltu	$s6, $a1, .LBB3_34
# %bb.32:                               # %.noexc.i.i150
.Ltmp123:                               # EH_LABEL
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 112
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp124:                               # EH_LABEL
# %bb.33:                               # %.noexc151
	ld.d	$a1, $sp, 112
	st.d	$a0, $sp, 16
	st.d	$a1, $sp, 32
.LBB3_34:                               # %._crit_edge.i.i.i149
	beqz	$s6, .LBB3_38
# %bb.35:                               # %._crit_edge.i.i.i149
	ori	$a1, $zero, 1
	bne	$s6, $a1, .LBB3_37
# %bb.36:
	ld.b	$a1, $s7, 0
	st.b	$a1, $a0, 0
	b	.LBB3_38
.LBB3_37:
	move	$a1, $s7
	move	$a2, $s6
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB3_38:
	ld.d	$a0, $sp, 112
	ld.d	$a1, $sp, 16
	st.d	$a0, $sp, 24
	stx.b	$zero, $a1, $a0
	ld.d	$a2, $s3, 16
	ld.d	$a1, $s3, 24
	ld.d	$a0, $s3, 40
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 7
	add.d	$a1, $a1, $s4
	bltz	$a1, .LBB3_41
# %bb.39:
	ori	$a3, $zero, 3
	bltu	$a3, $a1, .LBB3_42
# %bb.40:
	slli.d	$a0, $s4, 7
	add.d	$a0, $a2, $a0
	b	.LBB3_44
.LBB3_41:
	srai.d	$a2, $a1, 2
	b	.LBB3_43
.LBB3_42:
	srli.d	$a2, $a1, 2
.LBB3_43:
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 7
	add.d	$a0, $a0, $a1
.LBB3_44:                               # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit154
.Ltmp126:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN2PP4Word7is_boolEv)
	jirl	$ra, $ra, 0
.Ltmp127:                               # EH_LABEL
# %bb.45:
	beqz	$a0, .LBB3_58
# %bb.46:
	ld.d	$a2, $s3, 16
	ld.d	$a1, $s3, 24
	ld.d	$a0, $s3, 40
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 7
	add.d	$a1, $a1, $s2
	bltz	$a1, .LBB3_49
# %bb.47:
	ori	$a3, $zero, 3
	bltu	$a3, $a1, .LBB3_50
# %bb.48:
	slli.d	$a0, $s2, 7
	add.d	$a0, $a2, $a0
	b	.LBB3_52
.LBB3_49:
	srai.d	$a2, $a1, 2
	b	.LBB3_51
.LBB3_50:
	srli.d	$a2, $a1, 2
.LBB3_51:
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 7
	add.d	$a0, $a0, $a1
.LBB3_52:                               # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit156
.Ltmp128:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN2PP4Word7is_boolEv)
	jirl	$ra, $ra, 0
.Ltmp129:                               # EH_LABEL
# %bb.53:
	ld.d	$a1, $sp, 56
	addi.d	$a1, $a1, -4
	sltui	$a1, $a1, 1
	and	$a0, $a0, $a1
	beqz	$a0, .LBB3_58
# %bb.54:                               # %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
	ld.d	$a0, $sp, 48
	ld.w	$a2, $a0, 0
	lu12i.w	$a1, 190278
	ori	$a3, $a1, 1838
	beq	$a2, $a3, .LBB3_69
# %bb.55:                               # %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit158
	ld.w	$a3, $a0, 0
	lu12i.w	$a2, 190038
	ori	$a4, $a2, 1838
	beq	$a3, $a4, .LBB3_69
# %bb.56:                               # %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit160
	ld.w	$a3, $a0, 0
	ori	$a1, $a1, 3118
	beq	$a3, $a1, .LBB3_69
# %bb.57:                               # %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit162
	ld.w	$a0, $a0, 0
	ori	$a1, $a2, 3118
	beq	$a0, $a1, .LBB3_69
.LBB3_58:                               # %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit162.thread433
	ld.d	$a2, $s3, 16
	ld.d	$a1, $s3, 24
	ld.d	$a0, $s3, 40
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 7
	add.d	$a1, $a1, $s4
	bltz	$a1, .LBB3_61
# %bb.59:
	ori	$a3, $zero, 3
	bltu	$a3, $a1, .LBB3_62
# %bb.60:
	slli.d	$a0, $s4, 7
	add.d	$a0, $a2, $a0
	b	.LBB3_64
.LBB3_61:
	srai.d	$a2, $a1, 2
	b	.LBB3_63
.LBB3_62:
	srli.d	$a2, $a1, 2
.LBB3_63:
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 7
	add.d	$a0, $a0, $a1
.LBB3_64:                               # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit185
.Ltmp130:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN2PP4Word7is_boolEv)
	jirl	$ra, $ra, 0
.Ltmp131:                               # EH_LABEL
# %bb.65:
	beqz	$a0, .LBB3_77
# %bb.66:
	ld.d	$a2, $s3, 16
	ld.d	$a1, $s3, 24
	ld.d	$a0, $s3, 40
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 7
	add.d	$a1, $a1, $s2
	bltz	$a1, .LBB3_72
# %bb.67:
	ori	$a3, $zero, 3
	bltu	$a3, $a1, .LBB3_73
# %bb.68:
	slli.d	$a0, $s2, 7
	add.d	$a0, $a2, $a0
	b	.LBB3_75
.LBB3_69:                               # %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
	ld.d	$a2, $s3, 16
	ld.d	$a1, $s3, 24
	ld.d	$a0, $s3, 40
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 7
	add.d	$a1, $a1, $s5
	bltz	$a1, .LBB3_140
# %bb.70:
	ori	$a3, $zero, 3
	bltu	$a3, $a1, .LBB3_154
# %bb.71:
	slli.d	$a0, $s5, 7
	add.d	$a0, $a2, $a0
	b	.LBB3_156
.LBB3_72:
	srai.d	$a2, $a1, 2
	b	.LBB3_74
.LBB3_73:
	srli.d	$a2, $a1, 2
.LBB3_74:
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 7
	add.d	$a0, $a0, $a1
.LBB3_75:                               # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit187
.Ltmp132:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN2PP4Word7is_boolEv)
	jirl	$ra, $ra, 0
.Ltmp133:                               # EH_LABEL
# %bb.76:
	beqz	$a0, .LBB3_93
.LBB3_77:
	ld.d	$a2, $s3, 16
	ld.d	$a1, $s3, 24
	ld.d	$a0, $s3, 40
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 7
	add.d	$a1, $a1, $s4
	bltz	$a1, .LBB3_80
# %bb.78:
	ori	$a3, $zero, 3
	bltu	$a3, $a1, .LBB3_81
# %bb.79:
	slli.d	$a0, $s4, 7
	add.d	$a0, $a2, $a0
	b	.LBB3_83
.LBB3_80:
	srai.d	$a2, $a1, 2
	b	.LBB3_82
.LBB3_81:
	srli.d	$a2, $a1, 2
.LBB3_82:
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 7
	add.d	$a0, $a0, $a1
.LBB3_83:                               # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit189
.Ltmp134:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN2PP4Word7is_boolEv)
	jirl	$ra, $ra, 0
.Ltmp135:                               # EH_LABEL
# %bb.84:
	bnez	$a0, .LBB3_96
# %bb.85:
	ld.d	$a2, $s3, 16
	ld.d	$a1, $s3, 24
	ld.d	$a0, $s3, 40
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 7
	add.d	$a1, $a1, $s2
	bltz	$a1, .LBB3_88
# %bb.86:
	ori	$a3, $zero, 3
	bltu	$a3, $a1, .LBB3_89
# %bb.87:
	slli.d	$a0, $s2, 7
	add.d	$a0, $a2, $a0
	b	.LBB3_91
.LBB3_88:
	srai.d	$a2, $a1, 2
	b	.LBB3_90
.LBB3_89:
	srli.d	$a2, $a1, 2
.LBB3_90:
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 7
	add.d	$a0, $a0, $a1
.LBB3_91:                               # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit191
.Ltmp136:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN2PP4Word7is_boolEv)
	jirl	$ra, $ra, 0
.Ltmp137:                               # EH_LABEL
# %bb.92:
	beqz	$a0, .LBB3_96
.LBB3_93:
	ld.d	$a2, $s3, 16
	ld.d	$a1, $s3, 24
	ld.d	$a0, $s3, 40
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 7
	add.d	$a1, $a1, $s5
	bltz	$a1, .LBB3_106
# %bb.94:
	ori	$a3, $zero, 3
	bltu	$a3, $a1, .LBB3_107
# %bb.95:
	slli.d	$a0, $s5, 7
	add.d	$a0, $a2, $a0
	b	.LBB3_109
.LBB3_96:
	ld.d	$a2, $s3, 16
	ld.d	$a1, $s3, 24
	ld.d	$a0, $s3, 40
	sub.d	$a1, $a2, $a1
	srai.d	$a3, $a1, 7
	add.d	$a1, $a3, $s4
	bltz	$a1, .LBB3_99
# %bb.97:
	ori	$a4, $zero, 3
	bltu	$a4, $a1, .LBB3_100
# %bb.98:
	slli.d	$a4, $s4, 7
	add.d	$a4, $a2, $a4
	b	.LBB3_102
.LBB3_99:
	srai.d	$a4, $a1, 2
	b	.LBB3_101
.LBB3_100:
	srli.d	$a4, $a1, 2
.LBB3_101:
	slli.d	$a5, $a4, 3
	ldx.d	$a5, $a0, $a5
	slli.d	$a4, $a4, 2
	sub.d	$a4, $a1, $a4
	slli.d	$a4, $a4, 7
	add.d	$a4, $a5, $a4
.LBB3_102:                              # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit217
	ld.wu	$a4, $a4, 32
	bstrpick.d	$a4, $a4, 31, 1
	slli.w	$a4, $a4, 1
	ori	$a5, $zero, 2
	bne	$a4, $a5, .LBB3_144
# %bb.103:
	add.d	$a4, $a3, $s2
	bltz	$a4, .LBB3_139
# %bb.104:
	ori	$a5, $zero, 3
	bltu	$a5, $a4, .LBB3_141
# %bb.105:
	slli.d	$a4, $s2, 7
	add.d	$a4, $a2, $a4
	b	.LBB3_143
.LBB3_106:
	srai.d	$a2, $a1, 2
	b	.LBB3_108
.LBB3_107:
	srli.d	$a2, $a1, 2
.LBB3_108:
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 7
	add.d	$a0, $a0, $a1
.LBB3_109:                              # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit193
.Ltmp138:                               # EH_LABEL
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(_ZN2PP4Word11fatal_errorERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi)
	jirl	$ra, $ra, 0
.Ltmp139:                               # EH_LABEL
# %bb.110:
	addi.d	$s1, $s1, 16
.Ltmp140:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a1, $a0, %pc_lo12(.L.str.23)
	ori	$a2, $zero, 42
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp141:                               # EH_LABEL
# %bb.111:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit195
	ld.d	$a0, $s1, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s1, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB3_334
# %bb.112:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i365
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB3_114
# %bb.113:
	ld.bu	$a0, $s2, 67
	b	.LBB3_116
.LBB3_114:
.Ltmp142:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp143:                               # EH_LABEL
# %bb.115:                              # %.noexc370
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp144:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp145:                               # EH_LABEL
.LBB3_116:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i367
.Ltmp146:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp147:                               # EH_LABEL
# %bb.117:                              # %.noexc372
.Ltmp148:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp149:                               # EH_LABEL
# %bb.118:                              # %_ZNSolsEPFRSoS_E.exit197
.Ltmp150:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a1, $a0, %pc_lo12(.L.str.24)
	ori	$a2, $zero, 19
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp151:                               # EH_LABEL
# %bb.119:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit199
	ld.d	$a0, $s1, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s1, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB3_334
# %bb.120:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i376
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB3_122
# %bb.121:
	ld.bu	$a0, $s2, 67
	b	.LBB3_124
.LBB3_122:
.Ltmp152:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp153:                               # EH_LABEL
# %bb.123:                              # %.noexc381
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp154:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp155:                               # EH_LABEL
.LBB3_124:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i378
.Ltmp156:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp157:                               # EH_LABEL
# %bb.125:                              # %.noexc383
.Ltmp158:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp159:                               # EH_LABEL
# %bb.126:                              # %_ZNSolsEPFRSoS_E.exit201
.Ltmp160:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a1, $a0, %pc_lo12(.L.str.21)
	ori	$a2, $zero, 4
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp161:                               # EH_LABEL
# %bb.127:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit203
	ld.d	$a1, $sp, 80
	ld.d	$a2, $sp, 88
.Ltmp162:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp163:                               # EH_LABEL
# %bb.128:                              # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit205
.Ltmp164:                               # EH_LABEL
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a1, $a0, %pc_lo12(.L.str.22)
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp165:                               # EH_LABEL
# %bb.129:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit207
	ld.d	$a1, $sp, 48
	ld.d	$a2, $sp, 56
.Ltmp166:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp167:                               # EH_LABEL
# %bb.130:                              # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit209
.Ltmp168:                               # EH_LABEL
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a1, $a0, %pc_lo12(.L.str.22)
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp169:                               # EH_LABEL
# %bb.131:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit211
	ld.d	$a1, $sp, 16
	ld.d	$a2, $sp, 24
.Ltmp170:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp171:                               # EH_LABEL
# %bb.132:                              # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit213
	move	$s1, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s1, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB3_334
# %bb.133:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i387
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB3_135
# %bb.134:
	ld.bu	$a0, $s2, 67
	b	.LBB3_137
.LBB3_135:
.Ltmp172:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp173:                               # EH_LABEL
# %bb.136:                              # %.noexc392
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp174:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp175:                               # EH_LABEL
.LBB3_137:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i389
.Ltmp176:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp177:                               # EH_LABEL
# %bb.138:                              # %.noexc394
.Ltmp178:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp179:                               # EH_LABEL
	b	.LBB3_236
.LBB3_139:
	srai.d	$a5, $a4, 2
	b	.LBB3_142
.LBB3_140:
	srai.d	$a2, $a1, 2
	b	.LBB3_155
.LBB3_141:
	srli.d	$a5, $a4, 2
.LBB3_142:
	slli.d	$a6, $a5, 3
	ldx.d	$a6, $a0, $a6
	slli.d	$a5, $a5, 2
	sub.d	$a4, $a4, $a5
	slli.d	$a4, $a4, 7
	add.d	$a4, $a6, $a4
.LBB3_143:                              # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit219
	ld.wu	$a4, $a4, 32
	bstrpick.d	$a4, $a4, 31, 1
	slli.w	$a4, $a4, 1
	ori	$a5, $zero, 2
	bne	$a4, $a5, .LBB3_190
.LBB3_144:
	bltz	$a1, .LBB3_147
# %bb.145:
	ori	$a4, $zero, 3
	bltu	$a4, $a1, .LBB3_148
# %bb.146:
	slli.d	$a4, $s4, 7
	add.d	$a4, $a2, $a4
	b	.LBB3_150
.LBB3_147:
	srai.d	$a4, $a1, 2
	b	.LBB3_149
.LBB3_148:
	srli.d	$a4, $a1, 2
.LBB3_149:
	slli.d	$a5, $a4, 3
	ldx.d	$a5, $a0, $a5
	slli.d	$a4, $a4, 2
	sub.d	$a4, $a1, $a4
	slli.d	$a4, $a4, 7
	add.d	$a4, $a5, $a4
.LBB3_150:                              # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit222
	ld.wu	$a4, $a4, 32
	bstrpick.d	$a4, $a4, 31, 1
	slli.w	$a4, $a4, 1
	ori	$a5, $zero, 2
	beq	$a4, $a5, .LBB3_193
# %bb.151:
	add.d	$a4, $a3, $s2
	bltz	$a4, .LBB3_186
# %bb.152:
	ori	$a5, $zero, 3
	bltu	$a5, $a4, .LBB3_187
# %bb.153:
	slli.d	$a4, $s2, 7
	add.d	$a4, $a2, $a4
	b	.LBB3_189
.LBB3_154:
	srli.d	$a2, $a1, 2
.LBB3_155:
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 7
	add.d	$a0, $a0, $a1
.LBB3_156:                              # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit164
.Ltmp242:                               # EH_LABEL
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(_ZN2PP4Word11fatal_errorERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi)
	jirl	$ra, $ra, 0
.Ltmp243:                               # EH_LABEL
# %bb.157:
	addi.d	$s1, $s1, 16
.Ltmp244:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a1, $a0, %pc_lo12(.L.str.19)
	ori	$a2, $zero, 45
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp245:                               # EH_LABEL
# %bb.158:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
	ld.d	$a0, $s1, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s1, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB3_334
# %bb.159:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB3_161
# %bb.160:
	ld.bu	$a0, $s2, 67
	b	.LBB3_163
.LBB3_161:
.Ltmp246:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp247:                               # EH_LABEL
# %bb.162:                              # %.noexc338
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp248:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp249:                               # EH_LABEL
.LBB3_163:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
.Ltmp250:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp251:                               # EH_LABEL
# %bb.164:                              # %.noexc340
.Ltmp252:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp253:                               # EH_LABEL
# %bb.165:                              # %_ZNSolsEPFRSoS_E.exit
.Ltmp254:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a1, $a0, %pc_lo12(.L.str.20)
	ori	$a2, $zero, 31
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp255:                               # EH_LABEL
# %bb.166:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit168
	ld.d	$a0, $s1, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s1, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB3_334
# %bb.167:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i343
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB3_169
# %bb.168:
	ld.bu	$a0, $s2, 67
	b	.LBB3_171
.LBB3_169:
.Ltmp256:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp257:                               # EH_LABEL
# %bb.170:                              # %.noexc348
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp258:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp259:                               # EH_LABEL
.LBB3_171:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i345
.Ltmp260:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp261:                               # EH_LABEL
# %bb.172:                              # %.noexc350
.Ltmp262:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp263:                               # EH_LABEL
# %bb.173:                              # %_ZNSolsEPFRSoS_E.exit170
.Ltmp264:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a1, $a0, %pc_lo12(.L.str.21)
	ori	$a2, $zero, 4
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp265:                               # EH_LABEL
# %bb.174:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit172
	ld.d	$a1, $sp, 80
	ld.d	$a2, $sp, 88
.Ltmp266:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp267:                               # EH_LABEL
# %bb.175:                              # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
.Ltmp268:                               # EH_LABEL
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a1, $a0, %pc_lo12(.L.str.22)
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp269:                               # EH_LABEL
# %bb.176:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit175
	ld.d	$a1, $sp, 48
	ld.d	$a2, $sp, 56
.Ltmp270:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp271:                               # EH_LABEL
# %bb.177:                              # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit177
.Ltmp272:                               # EH_LABEL
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a1, $a0, %pc_lo12(.L.str.22)
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp273:                               # EH_LABEL
# %bb.178:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit179
	ld.d	$a1, $sp, 16
	ld.d	$a2, $sp, 24
.Ltmp274:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp275:                               # EH_LABEL
# %bb.179:                              # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit181
	move	$s1, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s1, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB3_334
# %bb.180:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i354
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB3_182
# %bb.181:
	ld.bu	$a0, $s2, 67
	b	.LBB3_184
.LBB3_182:
.Ltmp276:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp277:                               # EH_LABEL
# %bb.183:                              # %.noexc359
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp278:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp279:                               # EH_LABEL
.LBB3_184:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i356
.Ltmp280:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp281:                               # EH_LABEL
# %bb.185:                              # %.noexc361
.Ltmp282:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp283:                               # EH_LABEL
	b	.LBB3_236
.LBB3_186:
	srai.d	$a5, $a4, 2
	b	.LBB3_188
.LBB3_187:
	srli.d	$a5, $a4, 2
.LBB3_188:
	slli.d	$a6, $a5, 3
	ldx.d	$a6, $a0, $a6
	slli.d	$a5, $a5, 2
	sub.d	$a4, $a4, $a5
	slli.d	$a4, $a4, 7
	add.d	$a4, $a6, $a4
.LBB3_189:                              # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit225
	ld.wu	$a4, $a4, 32
	bstrpick.d	$a4, $a4, 31, 1
	slli.w	$a4, $a4, 1
	ori	$a5, $zero, 2
	bne	$a4, $a5, .LBB3_193
.LBB3_190:
	add.d	$a1, $a3, $s5
	bltz	$a1, .LBB3_203
# %bb.191:
	ori	$a3, $zero, 3
	bltu	$a3, $a1, .LBB3_204
# %bb.192:
	slli.d	$a0, $s5, 7
	add.d	$a0, $a2, $a0
	b	.LBB3_206
.LBB3_193:
	bltz	$a1, .LBB3_196
# %bb.194:
	ori	$a4, $zero, 3
	bltu	$a4, $a1, .LBB3_197
# %bb.195:
	slli.d	$a4, $s4, 7
	add.d	$a4, $a2, $a4
	b	.LBB3_199
.LBB3_196:
	srai.d	$a4, $a1, 2
	b	.LBB3_198
.LBB3_197:
	srli.d	$a4, $a1, 2
.LBB3_198:
	slli.d	$a5, $a4, 3
	ldx.d	$a5, $a0, $a5
	slli.d	$a4, $a4, 2
	sub.d	$a4, $a1, $a4
	slli.d	$a4, $a4, 7
	add.d	$a4, $a5, $a4
.LBB3_199:                              # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit252
	ld.wu	$a4, $a4, 32
	bstrpick.d	$a4, $a4, 31, 1
	slli.w	$a4, $a4, 1
	ori	$a5, $zero, 2
	bne	$a4, $a5, .LBB3_252
# %bb.200:
	add.d	$a3, $a3, $s2
	bltz	$a3, .LBB3_245
# %bb.201:
	ori	$a4, $zero, 3
	bltu	$a4, $a3, .LBB3_246
# %bb.202:
	slli.d	$a3, $s2, 7
	add.d	$a3, $a2, $a3
	b	.LBB3_248
.LBB3_203:
	srai.d	$a2, $a1, 2
	b	.LBB3_205
.LBB3_204:
	srli.d	$a2, $a1, 2
.LBB3_205:
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 7
	add.d	$a0, $a0, $a1
.LBB3_206:                              # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit228
.Ltmp180:                               # EH_LABEL
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(_ZN2PP4Word11fatal_errorERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi)
	jirl	$ra, $ra, 0
.Ltmp181:                               # EH_LABEL
# %bb.207:
	addi.d	$s1, $s1, 16
.Ltmp182:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a1, $a0, %pc_lo12(.L.str.25)
	ori	$a2, $zero, 44
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp183:                               # EH_LABEL
# %bb.208:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit230
	ld.d	$a0, $s1, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s1, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB3_334
# %bb.209:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i398
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB3_211
# %bb.210:
	ld.bu	$a0, $s2, 67
	b	.LBB3_213
.LBB3_211:
.Ltmp184:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp185:                               # EH_LABEL
# %bb.212:                              # %.noexc403
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp186:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp187:                               # EH_LABEL
.LBB3_213:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i400
.Ltmp188:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp189:                               # EH_LABEL
# %bb.214:                              # %.noexc405
.Ltmp190:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp191:                               # EH_LABEL
# %bb.215:                              # %_ZNSolsEPFRSoS_E.exit232
.Ltmp192:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a1, $a0, %pc_lo12(.L.str.26)
	ori	$a2, $zero, 21
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp193:                               # EH_LABEL
# %bb.216:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit234
	ld.d	$a0, $s1, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s1, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB3_334
# %bb.217:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i409
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB3_219
# %bb.218:
	ld.bu	$a0, $s2, 67
	b	.LBB3_221
.LBB3_219:
.Ltmp194:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp195:                               # EH_LABEL
# %bb.220:                              # %.noexc414
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp196:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp197:                               # EH_LABEL
.LBB3_221:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i411
.Ltmp198:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp199:                               # EH_LABEL
# %bb.222:                              # %.noexc416
.Ltmp200:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp201:                               # EH_LABEL
# %bb.223:                              # %_ZNSolsEPFRSoS_E.exit236
.Ltmp202:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a1, $a0, %pc_lo12(.L.str.21)
	ori	$a2, $zero, 4
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp203:                               # EH_LABEL
# %bb.224:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit238
	ld.d	$a1, $sp, 80
	ld.d	$a2, $sp, 88
.Ltmp204:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp205:                               # EH_LABEL
# %bb.225:                              # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit240
.Ltmp206:                               # EH_LABEL
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a1, $a0, %pc_lo12(.L.str.22)
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp207:                               # EH_LABEL
# %bb.226:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit242
	ld.d	$a1, $sp, 48
	ld.d	$a2, $sp, 56
.Ltmp208:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp209:                               # EH_LABEL
# %bb.227:                              # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit244
.Ltmp210:                               # EH_LABEL
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a1, $a0, %pc_lo12(.L.str.22)
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp211:                               # EH_LABEL
# %bb.228:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit246
	ld.d	$a1, $sp, 16
	ld.d	$a2, $sp, 24
.Ltmp212:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp213:                               # EH_LABEL
# %bb.229:                              # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit248
	move	$s1, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s1, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB3_334
# %bb.230:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i420
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB3_232
# %bb.231:
	ld.bu	$a0, $s2, 67
	b	.LBB3_234
.LBB3_232:
.Ltmp214:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp215:                               # EH_LABEL
# %bb.233:                              # %.noexc425
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp216:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp217:                               # EH_LABEL
.LBB3_234:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i422
.Ltmp218:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp219:                               # EH_LABEL
# %bb.235:                              # %.noexc427
.Ltmp220:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp221:                               # EH_LABEL
.LBB3_236:                              # %_ZNSolsEPFRSoS_E.exit183
	move	$a1, $zero
	ori	$a0, $zero, 2
	st.w	$a0, $s0, 0
.LBB3_237:                              # %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.invoke
.Ltmp284:                               # EH_LABEL
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZN2PP4Word9set_valueEb)
	jirl	$ra, $ra, 0
.Ltmp285:                               # EH_LABEL
.LBB3_238:
	ld.d	$a0, $sp, 16
	beq	$a0, $fp, .LBB3_240
# %bb.239:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_240:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	beq	$a0, $a1, .LBB3_242
# %bb.241:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i322
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_242:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324
	ld.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	beq	$a0, $a1, .LBB3_244
# %bb.243:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i325
	ld.d	$a1, $sp, 96
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_244:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit327
	fld.d	$fs1, $sp, 120                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 128                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 136                   # 8-byte Folded Reload
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
.LBB3_245:
	srai.d	$a4, $a3, 2
	b	.LBB3_247
.LBB3_246:
	srli.d	$a4, $a3, 2
.LBB3_247:
	slli.d	$a5, $a4, 3
	ldx.d	$a5, $a0, $a5
	slli.d	$a4, $a4, 2
	sub.d	$a3, $a3, $a4
	slli.d	$a3, $a3, 7
	add.d	$a3, $a5, $a3
.LBB3_248:                              # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit255
	ld.wu	$a3, $a3, 32
	bstrpick.d	$a3, $a3, 31, 1
	slli.w	$a3, $a3, 1
	ori	$a4, $zero, 2
	bne	$a3, $a4, .LBB3_252
# %bb.249:
	bltz	$a1, .LBB3_297
# %bb.250:
	ori	$a3, $zero, 3
	bltu	$a3, $a1, .LBB3_298
# %bb.251:
	slli.d	$a0, $s4, 7
	add.d	$a0, $a2, $a0
	b	.LBB3_300
.LBB3_252:
	bltz	$a1, .LBB3_255
# %bb.253:
	ori	$a3, $zero, 3
	bltu	$a3, $a1, .LBB3_256
# %bb.254:
	slli.d	$a0, $s4, 7
	add.d	$a0, $a2, $a0
	b	.LBB3_258
.LBB3_255:
	srai.d	$a2, $a1, 2
	b	.LBB3_257
.LBB3_256:
	srli.d	$a2, $a1, 2
.LBB3_257:
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 7
	add.d	$a0, $a0, $a1
.LBB3_258:                              # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit274
.Ltmp222:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN2PP4Word7is_boolEv)
	jirl	$ra, $ra, 0
.Ltmp223:                               # EH_LABEL
# %bb.259:
	beqz	$a0, .LBB3_271
# %bb.260:
	ld.d	$a2, $s3, 16
	ld.d	$a1, $s3, 24
	ld.d	$a0, $s3, 40
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 7
	add.d	$a1, $a1, $s2
	bltz	$a1, .LBB3_263
# %bb.261:
	ori	$a3, $zero, 3
	bltu	$a3, $a1, .LBB3_264
# %bb.262:
	slli.d	$a0, $s2, 7
	add.d	$a0, $a2, $a0
	b	.LBB3_266
.LBB3_263:
	srai.d	$a2, $a1, 2
	b	.LBB3_265
.LBB3_264:
	srli.d	$a2, $a1, 2
.LBB3_265:
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 7
	add.d	$a0, $a0, $a1
.LBB3_266:                              # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit276
.Ltmp224:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN2PP4Word7is_boolEv)
	jirl	$ra, $ra, 0
.Ltmp225:                               # EH_LABEL
# %bb.267:
	beqz	$a0, .LBB3_271
# %bb.268:
	ld.d	$a2, $s3, 16
	ld.d	$a1, $s3, 24
	ld.d	$a0, $s3, 40
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 7
	add.d	$a1, $a1, $s4
	bltz	$a1, .LBB3_312
# %bb.269:
	ori	$a3, $zero, 3
	bltu	$a3, $a1, .LBB3_313
# %bb.270:
	slli.d	$a0, $s4, 7
	add.d	$a0, $a2, $a0
	b	.LBB3_315
.LBB3_271:
	ld.d	$a0, $sp, 56
	ori	$a1, $zero, 4
	bne	$a0, $a1, .LBB3_333
# %bb.272:                              # %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit286
	ld.d	$a0, $sp, 48
	ld.w	$a0, $a0, 0
	lu12i.w	$s1, 190278
	ori	$a1, $s1, 1838
	beq	$a0, $a1, .LBB3_274
# %bb.273:
	move	$a1, $zero
	b	.LBB3_278
.LBB3_274:                              # %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit286.thread
	ld.d	$s0, $sp, 88
	ld.d	$s2, $sp, 24
	sltu	$a0, $s2, $s0
	masknez	$a1, $s0, $a0
	maskeqz	$a0, $s2, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB3_276
# %bb.275:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
	ld.d	$a1, $sp, 16
	ld.d	$a0, $sp, 80
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB3_277
.LBB3_276:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i
	sub.d	$a0, $s0, $s2
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
.LBB3_277:                              # %_ZStgtIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
	addi.w	$a0, $a0, 0
	slt	$a1, $zero, $a0
.LBB3_278:                              # %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit288
	ld.d	$a0, $sp, 48
	ld.w	$a0, $a0, 0
	lu12i.w	$s0, 190038
	ori	$a2, $s0, 1838
	beq	$a0, $a2, .LBB3_281
# %bb.279:                              # %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit298
	ld.d	$a0, $sp, 48
	ld.w	$a0, $a0, 0
	ori	$a2, $s1, 3118
	beq	$a0, $a2, .LBB3_285
.LBB3_280:                              # %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit308
	ld.d	$a0, $sp, 48
	ld.w	$a0, $a0, 0
	ori	$a2, $s0, 3118
	bne	$a0, $a2, .LBB3_293
	b	.LBB3_289
.LBB3_281:                              # %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit288.thread
	ld.d	$s2, $sp, 88
	ld.d	$s3, $sp, 24
	sltu	$a0, $s3, $s2
	masknez	$a1, $s2, $a0
	maskeqz	$a0, $s3, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB3_283
# %bb.282:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i290
	ld.d	$a1, $sp, 16
	ld.d	$a0, $sp, 80
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB3_284
.LBB3_283:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i293
	sub.d	$a0, $s2, $s3
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
.LBB3_284:                              # %_ZStgeIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
	addi.w	$a0, $a0, 0
	addi.w	$a1, $zero, -1
	slt	$a1, $a1, $a0
	ld.d	$a0, $sp, 48
	ld.w	$a0, $a0, 0
	ori	$a2, $s1, 3118
	bne	$a0, $a2, .LBB3_280
.LBB3_285:                              # %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit298.thread
	ld.d	$s1, $sp, 88
	ld.d	$s2, $sp, 24
	sltu	$a0, $s2, $s1
	masknez	$a1, $s1, $a0
	maskeqz	$a0, $s2, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB3_287
# %bb.286:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i300
	ld.d	$a1, $sp, 16
	ld.d	$a0, $sp, 80
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB3_288
.LBB3_287:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i303
	sub.d	$a0, $s1, $s2
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
.LBB3_288:                              # %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
	addi.w	$a0, $a0, 0
	slti	$a1, $a0, 0
	ld.d	$a0, $sp, 48
	ld.w	$a0, $a0, 0
	ori	$a2, $s0, 3118
	bne	$a0, $a2, .LBB3_293
.LBB3_289:                              # %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit308.thread
	ld.d	$s1, $sp, 88
	ld.d	$s2, $sp, 24
	sltu	$a0, $s2, $s1
	masknez	$a1, $s1, $a0
	maskeqz	$a0, $s2, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB3_291
# %bb.290:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i310
	ld.d	$a1, $sp, 16
	ld.d	$a0, $sp, 80
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB3_292
.LBB3_291:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i313
	sub.d	$a0, $s1, $s2
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
.LBB3_292:                              # %_ZStleIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
	addi.w	$a0, $a0, 0
	slti	$a1, $a0, 1
.LBB3_293:                              # %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit318
	ld.d	$a0, $sp, 48
	ld.w	$a0, $a0, 0
	lu12i.w	$a2, 190230
	ori	$a2, $a2, 1326
	bne	$a0, $a2, .LBB3_329
# %bb.294:                              # %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit318.thread
	ld.d	$a2, $sp, 88
	ld.d	$a0, $sp, 24
	bne	$a2, $a0, .LBB3_327
# %bb.295:
	beqz	$a2, .LBB3_328
# %bb.296:
	ld.d	$a1, $sp, 16
	ld.d	$a0, $sp, 80
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	sltui	$a1, $a0, 1
	b	.LBB3_329
.LBB3_297:
	srai.d	$a2, $a1, 2
	b	.LBB3_299
.LBB3_298:
	srli.d	$a2, $a1, 2
.LBB3_299:
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 7
	add.d	$a0, $a0, $a1
.LBB3_300:                              # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit258
.Ltmp234:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN2PP4Word10get_doubleEv)
	jirl	$ra, $ra, 0
.Ltmp235:                               # EH_LABEL
# %bb.301:
	fmov.d	$fs0, $fa0
	ld.d	$a2, $s3, 16
	ld.d	$a1, $s3, 24
	ld.d	$a0, $s3, 40
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 7
	add.d	$a1, $a1, $s2
	bltz	$a1, .LBB3_304
# %bb.302:
	ori	$a3, $zero, 3
	bltu	$a3, $a1, .LBB3_305
# %bb.303:
	slli.d	$a0, $s2, 7
	add.d	$a0, $a2, $a0
	b	.LBB3_307
.LBB3_304:
	srai.d	$a2, $a1, 2
	b	.LBB3_306
.LBB3_305:
	srli.d	$a2, $a1, 2
.LBB3_306:
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 7
	add.d	$a0, $a0, $a1
.LBB3_307:                              # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit260
.Ltmp237:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN2PP4Word10get_doubleEv)
	jirl	$ra, $ra, 0
.Ltmp238:                               # EH_LABEL
# %bb.308:
	ld.d	$a0, $sp, 56
	ori	$a1, $zero, 4
	bne	$a0, $a1, .LBB3_310
# %bb.309:                              # %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit272
	fmov.d	$fs1, $fa0
	ld.d	$a0, $sp, 48
	ld.w	$a1, $a0, 0
	lu12i.w	$a2, 190278
	ori	$a2, $a2, 1838
	xor	$a1, $a1, $a2
	fcmp.clt.d	$fcc0, $fa0, $fs0
	sltui	$a1, $a1, 1
	movcf2gr	$a2, $fcc0
	and	$s1, $a2, $a1
	pcalau12i	$a1, %pc_hi20(.L.str.16)
	addi.d	$a1, $a1, %pc_lo12(.L.str.16)
	ori	$a2, $zero, 4
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	sltui	$a0, $a0, 1
	fcmp.cle.d	$fcc0, $fs1, $fs0
	ld.d	$s0, $sp, 48
	masknez	$a1, $s1, $a0
	movcf2gr	$a2, $fcc0
	maskeqz	$a0, $a2, $a0
	or	$s1, $a0, $a1
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a1, $a0, %pc_lo12(.L.str.17)
	ori	$a2, $zero, 4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	sltui	$a0, $a0, 1
	fcmp.clt.d	$fcc0, $fs0, $fs1
	masknez	$a1, $s1, $a0
	movcf2gr	$a2, $fcc0
	maskeqz	$a0, $a2, $a0
	or	$s1, $a0, $a1
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a1, $a0, %pc_lo12(.L.str.18)
	ori	$a2, $zero, 4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	sltui	$a0, $a0, 1
	fcmp.cle.d	$fcc0, $fs0, $fs1
	ld.d	$s0, $sp, 48
	masknez	$a1, $s1, $a0
	movcf2gr	$a2, $fcc0
	maskeqz	$a0, $a2, $a0
	or	$s1, $a0, $a1
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a1, $a0, %pc_lo12(.L.str.27)
	ori	$a2, $zero, 4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	sltui	$a0, $a0, 1
	fcmp.ceq.d	$fcc0, $fs0, $fs1
	masknez	$a1, $s1, $a0
	movcf2gr	$a2, $fcc0
	maskeqz	$a0, $a2, $a0
	or	$s1, $a0, $a1
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a1, $a0, %pc_lo12(.L.str.28)
	ori	$a2, $zero, 4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	sltui	$a0, $a0, 1
	fcmp.cune.d	$fcc0, $fs0, $fs1
	masknez	$a1, $s1, $a0
	movcf2gr	$a2, $fcc0
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	b	.LBB3_311
.LBB3_310:
	move	$a0, $zero
.LBB3_311:                              # %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit272.thread468
.Ltmp239:                               # EH_LABEL
	andi	$a1, $a0, 1
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZN2PP4Word9set_valueEb)
	jirl	$ra, $ra, 0
.Ltmp240:                               # EH_LABEL
	b	.LBB3_238
.LBB3_312:
	srai.d	$a2, $a1, 2
	b	.LBB3_314
.LBB3_313:
	srli.d	$a2, $a1, 2
.LBB3_314:
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 7
	add.d	$a0, $a0, $a1
.LBB3_315:                              # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit278
.Ltmp226:                               # EH_LABEL
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(_ZN2PP4Word8get_boolERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi)
	jirl	$ra, $ra, 0
.Ltmp227:                               # EH_LABEL
# %bb.316:
	move	$s4, $a0
	ld.d	$a2, $s3, 16
	ld.d	$a1, $s3, 24
	ld.d	$a0, $s3, 40
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 7
	add.d	$a1, $a1, $s2
	bltz	$a1, .LBB3_319
# %bb.317:
	ori	$a3, $zero, 3
	bltu	$a3, $a1, .LBB3_320
# %bb.318:
	slli.d	$a0, $s2, 7
	add.d	$a0, $a2, $a0
	b	.LBB3_322
.LBB3_319:
	srai.d	$a2, $a1, 2
	b	.LBB3_321
.LBB3_320:
	srli.d	$a2, $a1, 2
.LBB3_321:
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 7
	add.d	$a0, $a0, $a1
.LBB3_322:                              # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit280
.Ltmp229:                               # EH_LABEL
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(_ZN2PP4Word8get_boolERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi)
	jirl	$ra, $ra, 0
.Ltmp230:                               # EH_LABEL
# %bb.323:
	ld.d	$a1, $sp, 56
	ori	$a2, $zero, 4
	bne	$a1, $a2, .LBB3_325
# %bb.324:                              # %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit284
	ld.d	$a3, $sp, 48
	ld.w	$a1, $a3, 0
	lu12i.w	$a2, 190230
	ori	$a2, $a2, 1326
	xor	$a1, $a1, $a2
	sltui	$a1, $a1, 1
	xor	$s0, $s4, $a0
	xori	$a0, $s0, 1
	and	$s1, $a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a1, $a0, %pc_lo12(.L.str.28)
	ori	$a2, $zero, 4
	move	$a0, $a3
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	sltui	$a0, $a0, 1
	masknez	$a1, $s1, $a0
	maskeqz	$a0, $s0, $a0
	or	$a1, $a0, $a1
	b	.LBB3_326
.LBB3_325:
	move	$a1, $zero
.LBB3_326:                              # %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit284.thread472
.Ltmp231:                               # EH_LABEL
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZN2PP4Word9set_valueEb)
	jirl	$ra, $ra, 0
.Ltmp232:                               # EH_LABEL
	b	.LBB3_238
.LBB3_327:
	move	$a1, $zero
	b	.LBB3_329
.LBB3_328:
	ori	$a1, $zero, 1
.LBB3_329:                              # %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit321
	ld.d	$a0, $sp, 48
	ld.w	$a0, $a0, 0
	ori	$a2, $s0, 3630
	bne	$a0, $a2, .LBB3_237
# %bb.330:                              # %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit321.thread
	ld.d	$a2, $sp, 88
	ld.d	$a0, $sp, 24
	ori	$a1, $zero, 1
	bne	$a2, $a0, .LBB3_237
# %bb.331:
	beqz	$a2, .LBB3_333
# %bb.332:
	ld.d	$a1, $sp, 16
	ld.d	$a0, $sp, 80
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	sltu	$a1, $zero, $a0
	b	.LBB3_237
.LBB3_333:
	move	$a1, $zero
	b	.LBB3_237
.LBB3_334:                              # %.invoke
.Ltmp286:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp287:                               # EH_LABEL
# %bb.335:                              # %.cont
.LBB3_336:
.Ltmp228:                               # EH_LABEL
	b	.LBB3_343
.LBB3_337:
.Ltmp236:                               # EH_LABEL
	b	.LBB3_343
.LBB3_338:
.Ltmp233:                               # EH_LABEL
	b	.LBB3_343
.LBB3_339:
.Ltmp241:                               # EH_LABEL
	b	.LBB3_343
.LBB3_340:
.Ltmp125:                               # EH_LABEL
	move	$s0, $a0
	ld.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	beq	$a0, $a1, .LBB3_345
	b	.LBB3_348
.LBB3_341:
.Ltmp122:                               # EH_LABEL
	move	$s0, $a0
	ld.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	beq	$a0, $a1, .LBB3_346
	b	.LBB3_349
.LBB3_342:
.Ltmp288:                               # EH_LABEL
.LBB3_343:
	move	$s0, $a0
	ld.d	$a0, $sp, 16
	bne	$a0, $fp, .LBB3_347
# %bb.344:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit330
	ld.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	bne	$a0, $a1, .LBB3_348
.LBB3_345:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit333
	ld.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	bne	$a0, $a1, .LBB3_349
.LBB3_346:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit336
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB3_347:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i328
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	beq	$a0, $a1, .LBB3_345
.LBB3_348:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i331
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	beq	$a0, $a1, .LBB3_346
.LBB3_349:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i334
	ld.d	$a1, $sp, 96
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end3:
	.size	_ZN2PP11Parser_math16do_op_relationalEiiiRSt5dequeINS_4WordESaIS2_EERS2_RNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi, .Lfunc_end3-_ZN2PP11Parser_math16do_op_relationalEiiiRSt5dequeINS_4WordESaIS2_EERS2_RNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi
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
	.uleb128 .Ltmp120-.Lfunc_begin1         #   Call between .Lfunc_begin1 and .Ltmp120
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp120-.Lfunc_begin1         # >> Call Site 2 <<
	.uleb128 .Ltmp121-.Ltmp120              #   Call between .Ltmp120 and .Ltmp121
	.uleb128 .Ltmp122-.Lfunc_begin1         #     jumps to .Ltmp122
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp121-.Lfunc_begin1         # >> Call Site 3 <<
	.uleb128 .Ltmp123-.Ltmp121              #   Call between .Ltmp121 and .Ltmp123
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp123-.Lfunc_begin1         # >> Call Site 4 <<
	.uleb128 .Ltmp124-.Ltmp123              #   Call between .Ltmp123 and .Ltmp124
	.uleb128 .Ltmp125-.Lfunc_begin1         #     jumps to .Ltmp125
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp124-.Lfunc_begin1         # >> Call Site 5 <<
	.uleb128 .Ltmp126-.Ltmp124              #   Call between .Ltmp124 and .Ltmp126
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp126-.Lfunc_begin1         # >> Call Site 6 <<
	.uleb128 .Ltmp285-.Ltmp126              #   Call between .Ltmp126 and .Ltmp285
	.uleb128 .Ltmp288-.Lfunc_begin1         #     jumps to .Ltmp288
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp285-.Lfunc_begin1         # >> Call Site 7 <<
	.uleb128 .Ltmp222-.Ltmp285              #   Call between .Ltmp285 and .Ltmp222
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp222-.Lfunc_begin1         # >> Call Site 8 <<
	.uleb128 .Ltmp225-.Ltmp222              #   Call between .Ltmp222 and .Ltmp225
	.uleb128 .Ltmp288-.Lfunc_begin1         #     jumps to .Ltmp288
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp225-.Lfunc_begin1         # >> Call Site 9 <<
	.uleb128 .Ltmp234-.Ltmp225              #   Call between .Ltmp225 and .Ltmp234
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp234-.Lfunc_begin1         # >> Call Site 10 <<
	.uleb128 .Ltmp235-.Ltmp234              #   Call between .Ltmp234 and .Ltmp235
	.uleb128 .Ltmp236-.Lfunc_begin1         #     jumps to .Ltmp236
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp237-.Lfunc_begin1         # >> Call Site 11 <<
	.uleb128 .Ltmp238-.Ltmp237              #   Call between .Ltmp237 and .Ltmp238
	.uleb128 .Ltmp241-.Lfunc_begin1         #     jumps to .Ltmp241
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp238-.Lfunc_begin1         # >> Call Site 12 <<
	.uleb128 .Ltmp239-.Ltmp238              #   Call between .Ltmp238 and .Ltmp239
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp239-.Lfunc_begin1         # >> Call Site 13 <<
	.uleb128 .Ltmp240-.Ltmp239              #   Call between .Ltmp239 and .Ltmp240
	.uleb128 .Ltmp241-.Lfunc_begin1         #     jumps to .Ltmp241
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp226-.Lfunc_begin1         # >> Call Site 14 <<
	.uleb128 .Ltmp227-.Ltmp226              #   Call between .Ltmp226 and .Ltmp227
	.uleb128 .Ltmp228-.Lfunc_begin1         #     jumps to .Ltmp228
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp229-.Lfunc_begin1         # >> Call Site 15 <<
	.uleb128 .Ltmp230-.Ltmp229              #   Call between .Ltmp229 and .Ltmp230
	.uleb128 .Ltmp233-.Lfunc_begin1         #     jumps to .Ltmp233
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp230-.Lfunc_begin1         # >> Call Site 16 <<
	.uleb128 .Ltmp231-.Ltmp230              #   Call between .Ltmp230 and .Ltmp231
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp231-.Lfunc_begin1         # >> Call Site 17 <<
	.uleb128 .Ltmp232-.Ltmp231              #   Call between .Ltmp231 and .Ltmp232
	.uleb128 .Ltmp233-.Lfunc_begin1         #     jumps to .Ltmp233
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp232-.Lfunc_begin1         # >> Call Site 18 <<
	.uleb128 .Ltmp286-.Ltmp232              #   Call between .Ltmp232 and .Ltmp286
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp286-.Lfunc_begin1         # >> Call Site 19 <<
	.uleb128 .Ltmp287-.Ltmp286              #   Call between .Ltmp286 and .Ltmp287
	.uleb128 .Ltmp288-.Lfunc_begin1         #     jumps to .Ltmp288
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp287-.Lfunc_begin1         # >> Call Site 20 <<
	.uleb128 .Lfunc_end3-.Ltmp287           #   Call between .Ltmp287 and .Lfunc_end3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN2PP11Parser_math9do_op_notEiiRSt5dequeINS_4WordESaIS2_EERS2_RNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi # -- Begin function _ZN2PP11Parser_math9do_op_notEiiRSt5dequeINS_4WordESaIS2_EERS2_RNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi
	.p2align	5
	.type	_ZN2PP11Parser_math9do_op_notEiiRSt5dequeINS_4WordESaIS2_EERS2_RNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi,@function
_ZN2PP11Parser_math9do_op_notEiiRSt5dequeINS_4WordESaIS2_EERS2_RNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi: # @_ZN2PP11Parser_math9do_op_notEiiRSt5dequeINS_4WordESaIS2_EERS2_RNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception2
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
	move	$s4, $a3
	ld.d	$a3, $a3, 16
	ld.d	$a7, $s4, 24
	move	$s2, $a1
	ld.d	$a0, $s4, 40
	sub.d	$a1, $a3, $a7
	srai.d	$a1, $a1, 7
	add.d	$a1, $a1, $s2
	move	$s0, $a6
	move	$s1, $a5
	move	$fp, $a4
	move	$s3, $a2
	bltz	$a1, .LBB4_3
# %bb.1:
	ori	$a2, $zero, 3
	bltu	$a2, $a1, .LBB4_4
# %bb.2:
	slli.d	$a0, $s2, 7
	add.d	$a0, $a3, $a0
	b	.LBB4_6
.LBB4_3:
	srai.d	$a2, $a1, 2
	b	.LBB4_5
.LBB4_4:
	srli.d	$a2, $a1, 2
.LBB4_5:
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 7
	add.d	$a0, $a0, $a1
.LBB4_6:                                # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit
	addi.d	$s7, $sp, 64
	st.d	$s7, $sp, 48
	ld.d	$s5, $a0, 8
	ld.d	$s6, $a0, 0
	ori	$a1, $zero, 16
	st.d	$s5, $sp, 16
	move	$a0, $s7
	bltu	$s5, $a1, .LBB4_8
# %bb.7:                                # %.noexc.i.i
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 16
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 16
	st.d	$a0, $sp, 48
	st.d	$a1, $sp, 64
.LBB4_8:                                # %._crit_edge.i.i.i
	beqz	$s5, .LBB4_12
# %bb.9:                                # %._crit_edge.i.i.i
	ori	$a1, $zero, 1
	bne	$s5, $a1, .LBB4_11
# %bb.10:
	ld.b	$a1, $s6, 0
	st.b	$a1, $a0, 0
	b	.LBB4_12
.LBB4_11:
	move	$a1, $s6
	move	$a2, $s5
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_12:                               # %_ZN2PP4Word10get_stringB5cxx11Ev.exit
	ld.d	$a0, $sp, 16
	ld.d	$a1, $sp, 48
	st.d	$a0, $sp, 56
	stx.b	$zero, $a1, $a0
	ld.d	$a2, $s4, 16
	ld.d	$a1, $s4, 24
	ld.d	$a0, $s4, 40
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 7
	add.d	$a1, $a1, $s3
	bltz	$a1, .LBB4_15
# %bb.13:
	ori	$a3, $zero, 3
	bltu	$a3, $a1, .LBB4_16
# %bb.14:
	slli.d	$a0, $s3, 7
	add.d	$a0, $a2, $a0
	b	.LBB4_18
.LBB4_15:
	srai.d	$a2, $a1, 2
	b	.LBB4_17
.LBB4_16:
	srli.d	$a2, $a1, 2
.LBB4_17:
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 7
	add.d	$a0, $a0, $a1
.LBB4_18:                               # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit26
	addi.d	$s8, $sp, 32
	st.d	$s8, $sp, 16
	ld.d	$s5, $a0, 8
	ld.d	$s6, $a0, 0
	ori	$a1, $zero, 16
	st.d	$s5, $sp, 80
	move	$a0, $s8
	bltu	$s5, $a1, .LBB4_21
# %bb.19:                               # %.noexc.i.i28
.Ltmp289:                               # EH_LABEL
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 80
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp290:                               # EH_LABEL
# %bb.20:                               # %.noexc
	ld.d	$a1, $sp, 80
	st.d	$a0, $sp, 16
	st.d	$a1, $sp, 32
.LBB4_21:                               # %._crit_edge.i.i.i27
	beqz	$s5, .LBB4_25
# %bb.22:                               # %._crit_edge.i.i.i27
	ori	$a1, $zero, 1
	bne	$s5, $a1, .LBB4_24
# %bb.23:
	ld.b	$a1, $s6, 0
	st.b	$a1, $a0, 0
	b	.LBB4_25
.LBB4_24:
	move	$a1, $s6
	move	$a2, $s5
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_25:
	ld.d	$a0, $sp, 80
	ld.d	$a1, $sp, 16
	st.d	$a0, $sp, 24
	stx.b	$zero, $a1, $a0
	ld.d	$a2, $s4, 16
	ld.d	$a1, $s4, 24
	ld.d	$a0, $s4, 40
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 7
	add.d	$a1, $a1, $s3
	bltz	$a1, .LBB4_28
# %bb.26:
	ori	$a3, $zero, 3
	bltu	$a3, $a1, .LBB4_29
# %bb.27:
	slli.d	$a0, $s3, 7
	add.d	$a0, $a2, $a0
	b	.LBB4_31
.LBB4_28:
	srai.d	$a2, $a1, 2
	b	.LBB4_30
.LBB4_29:
	srli.d	$a2, $a1, 2
.LBB4_30:
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 7
	add.d	$a0, $a0, $a1
.LBB4_31:                               # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit31
.Ltmp292:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN2PP4Word7is_boolEv)
	jirl	$ra, $ra, 0
.Ltmp293:                               # EH_LABEL
# %bb.32:
	ld.d	$a2, $s4, 16
	ld.d	$a3, $s4, 24
	ld.d	$a1, $s4, 40
	sub.d	$a3, $a2, $a3
	srai.d	$a3, $a3, 7
	beqz	$a0, .LBB4_36
# %bb.33:
	add.d	$a0, $a3, $s3
	bltz	$a0, .LBB4_39
# %bb.34:
	ori	$a3, $zero, 3
	bltu	$a3, $a0, .LBB4_41
# %bb.35:
	slli.d	$a0, $s3, 7
	add.d	$a0, $a2, $a0
	b	.LBB4_43
.LBB4_36:
	add.d	$a0, $a3, $s2
	bltz	$a0, .LBB4_40
# %bb.37:
	ori	$a3, $zero, 3
	bltu	$a3, $a0, .LBB4_45
# %bb.38:
	slli.d	$a0, $s2, 7
	add.d	$a0, $a2, $a0
	b	.LBB4_47
.LBB4_39:
	srai.d	$a2, $a0, 2
	b	.LBB4_42
.LBB4_40:
	srai.d	$a2, $a0, 2
	b	.LBB4_46
.LBB4_41:
	srli.d	$a2, $a0, 2
.LBB4_42:
	slli.d	$a3, $a2, 3
	ldx.d	$a1, $a1, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a0, $a0, $a2
	slli.d	$a0, $a0, 7
	add.d	$a0, $a1, $a0
.LBB4_43:                               # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit42
.Ltmp320:                               # EH_LABEL
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(_ZN2PP4Word8get_boolERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi)
	jirl	$ra, $ra, 0
.Ltmp321:                               # EH_LABEL
# %bb.44:
	xori	$a1, $a0, 1
	b	.LBB4_66
.LBB4_45:
	srli.d	$a2, $a0, 2
.LBB4_46:
	slli.d	$a3, $a2, 3
	ldx.d	$a1, $a1, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a0, $a0, $a2
	slli.d	$a0, $a0, 7
	add.d	$a0, $a1, $a0
.LBB4_47:                               # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit33
.Ltmp294:                               # EH_LABEL
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(_ZN2PP4Word11fatal_errorERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi)
	jirl	$ra, $ra, 0
.Ltmp295:                               # EH_LABEL
# %bb.48:
	addi.d	$s1, $s1, 16
.Ltmp296:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a1, $a0, %pc_lo12(.L.str.29)
	ori	$a2, $zero, 60
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp297:                               # EH_LABEL
# %bb.49:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
	ld.d	$a0, $s1, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s1, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB4_72
# %bb.50:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB4_52
# %bb.51:
	ld.bu	$a0, $s2, 67
	b	.LBB4_54
.LBB4_52:
.Ltmp298:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp299:                               # EH_LABEL
# %bb.53:                               # %.noexc53
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp300:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp301:                               # EH_LABEL
.LBB4_54:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
.Ltmp302:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp303:                               # EH_LABEL
# %bb.55:                               # %.noexc55
.Ltmp304:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp305:                               # EH_LABEL
# %bb.56:                               # %_ZNSolsEPFRSoS_E.exit
.Ltmp306:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a1, $a0, %pc_lo12(.L.str.30)
	ori	$a2, $zero, 36
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp307:                               # EH_LABEL
# %bb.57:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit37
	ld.d	$a1, $sp, 16
	ld.d	$a2, $sp, 24
.Ltmp308:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp309:                               # EH_LABEL
# %bb.58:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
	move	$s1, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s1, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB4_72
# %bb.59:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i58
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB4_61
# %bb.60:
	ld.bu	$a0, $s2, 67
	b	.LBB4_63
.LBB4_61:
.Ltmp310:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp311:                               # EH_LABEL
# %bb.62:                               # %.noexc63
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp312:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp313:                               # EH_LABEL
.LBB4_63:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i60
.Ltmp314:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp315:                               # EH_LABEL
# %bb.64:                               # %.noexc65
.Ltmp316:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp317:                               # EH_LABEL
# %bb.65:                               # %_ZNSolsEPFRSoS_E.exit40
	move	$a1, $zero
	ori	$a0, $zero, 2
	st.w	$a0, $s0, 0
.LBB4_66:                               # %.invoke85
.Ltmp322:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN2PP4Word9set_valueEb)
	jirl	$ra, $ra, 0
.Ltmp323:                               # EH_LABEL
# %bb.67:
	ld.d	$a0, $sp, 16
	beq	$a0, $s8, .LBB4_69
# %bb.68:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_69:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45
	ld.d	$a0, $sp, 48
	beq	$a0, $s7, .LBB4_71
# %bb.70:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_71:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48
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
.LBB4_72:                               # %.invoke
.Ltmp318:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp319:                               # EH_LABEL
# %bb.73:                               # %.cont
.LBB4_74:
.Ltmp291:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 48
	beq	$a0, $s7, .LBB4_77
	b	.LBB4_79
.LBB4_75:
.Ltmp324:                               # EH_LABEL
	ld.d	$a2, $sp, 16
	move	$fp, $a0
	bne	$a2, $s8, .LBB4_78
# %bb.76:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$a0, $sp, 48
	bne	$a0, $s7, .LBB4_79
.LBB4_77:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB4_78:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a0, $sp, 32
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 48
	beq	$a0, $s7, .LBB4_77
.LBB4_79:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end4:
	.size	_ZN2PP11Parser_math9do_op_notEiiRSt5dequeINS_4WordESaIS2_EERS2_RNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi, .Lfunc_end4-_ZN2PP11Parser_math9do_op_notEiiRSt5dequeINS_4WordESaIS2_EERS2_RNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi
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
	.uleb128 .Ltmp289-.Lfunc_begin2         #   Call between .Lfunc_begin2 and .Ltmp289
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp289-.Lfunc_begin2         # >> Call Site 2 <<
	.uleb128 .Ltmp290-.Ltmp289              #   Call between .Ltmp289 and .Ltmp290
	.uleb128 .Ltmp291-.Lfunc_begin2         #     jumps to .Ltmp291
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp290-.Lfunc_begin2         # >> Call Site 3 <<
	.uleb128 .Ltmp292-.Ltmp290              #   Call between .Ltmp290 and .Ltmp292
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp292-.Lfunc_begin2         # >> Call Site 4 <<
	.uleb128 .Ltmp323-.Ltmp292              #   Call between .Ltmp292 and .Ltmp323
	.uleb128 .Ltmp324-.Lfunc_begin2         #     jumps to .Ltmp324
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp323-.Lfunc_begin2         # >> Call Site 5 <<
	.uleb128 .Ltmp318-.Ltmp323              #   Call between .Ltmp323 and .Ltmp318
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp318-.Lfunc_begin2         # >> Call Site 6 <<
	.uleb128 .Ltmp319-.Ltmp318              #   Call between .Ltmp318 and .Ltmp319
	.uleb128 .Ltmp324-.Lfunc_begin2         #     jumps to .Ltmp324
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp319-.Lfunc_begin2         # >> Call Site 7 <<
	.uleb128 .Lfunc_end4-.Ltmp319           #   Call between .Ltmp319 and .Lfunc_end4
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN2PP11Parser_math13do_op_logicalEiiiRSt5dequeINS_4WordESaIS2_EERS2_RNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi # -- Begin function _ZN2PP11Parser_math13do_op_logicalEiiiRSt5dequeINS_4WordESaIS2_EERS2_RNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi
	.p2align	5
	.type	_ZN2PP11Parser_math13do_op_logicalEiiiRSt5dequeINS_4WordESaIS2_EERS2_RNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi,@function
_ZN2PP11Parser_math13do_op_logicalEiiiRSt5dequeINS_4WordESaIS2_EERS2_RNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi: # @_ZN2PP11Parser_math13do_op_logicalEiiiRSt5dequeINS_4WordESaIS2_EERS2_RNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception3
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
	st.d	$s5, $sp, 144                   # 8-byte Folded Spill
	st.d	$s6, $sp, 136                   # 8-byte Folded Spill
	st.d	$s7, $sp, 128                   # 8-byte Folded Spill
	st.d	$s8, $sp, 120                   # 8-byte Folded Spill
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
	move	$s2, $a4
	ld.d	$a4, $a4, 16
	ld.d	$t0, $s2, 24
	move	$s4, $a1
	ld.d	$a0, $s2, 40
	sub.d	$a1, $a4, $t0
	srai.d	$a1, $a1, 7
	add.d	$a1, $a1, $s4
	move	$s0, $a7
	move	$s1, $a6
	move	$s8, $a5
	move	$s3, $a3
	move	$s5, $a2
	bltz	$a1, .LBB5_3
# %bb.1:
	ori	$a2, $zero, 3
	bltu	$a2, $a1, .LBB5_4
# %bb.2:
	slli.d	$a0, $s4, 7
	add.d	$a0, $a4, $a0
	b	.LBB5_6
.LBB5_3:
	srai.d	$a2, $a1, 2
	b	.LBB5_5
.LBB5_4:
	srli.d	$a2, $a1, 2
.LBB5_5:
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 7
	add.d	$a0, $a0, $a1
.LBB5_6:                                # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit
	addi.d	$a2, $sp, 96
	st.d	$a2, $sp, 80
	ld.d	$s6, $a0, 8
	ld.d	$s7, $a0, 0
	ori	$a1, $zero, 16
	st.d	$s6, $sp, 48
	move	$a0, $a2
	bltu	$s6, $a1, .LBB5_8
# %bb.7:                                # %.noexc.i.i
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 48
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 48
	st.d	$a0, $sp, 80
	st.d	$a1, $sp, 96
.LBB5_8:                                # %._crit_edge.i.i.i
	beqz	$s6, .LBB5_12
# %bb.9:                                # %._crit_edge.i.i.i
	ori	$a1, $zero, 1
	bne	$s6, $a1, .LBB5_11
# %bb.10:
	ld.b	$a1, $s7, 0
	st.b	$a1, $a0, 0
	b	.LBB5_12
.LBB5_11:
	move	$a1, $s7
	move	$a2, $s6
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_12:                               # %_ZN2PP4Word10get_stringB5cxx11Ev.exit
	ld.d	$a0, $sp, 48
	ld.d	$a1, $sp, 80
	st.d	$a0, $sp, 88
	stx.b	$zero, $a1, $a0
	ld.d	$a2, $s2, 16
	ld.d	$a1, $s2, 24
	ld.d	$a0, $s2, 40
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 7
	add.d	$a1, $a1, $s5
	bltz	$a1, .LBB5_15
# %bb.13:
	ori	$a3, $zero, 3
	bltu	$a3, $a1, .LBB5_16
# %bb.14:
	slli.d	$a0, $s5, 7
	add.d	$a0, $a2, $a0
	b	.LBB5_18
.LBB5_15:
	srai.d	$a2, $a1, 2
	b	.LBB5_17
.LBB5_16:
	srli.d	$a2, $a1, 2
.LBB5_17:
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 7
	add.d	$a0, $a0, $a1
.LBB5_18:                               # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit50
	addi.d	$a2, $sp, 64
	st.d	$a2, $sp, 48
	ld.d	$s6, $a0, 8
	ld.d	$s7, $a0, 0
	ori	$a1, $zero, 16
	st.d	$s6, $sp, 16
	move	$a0, $a2
	bltu	$s6, $a1, .LBB5_21
# %bb.19:                               # %.noexc.i.i52
.Ltmp325:                               # EH_LABEL
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 16
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp326:                               # EH_LABEL
# %bb.20:                               # %.noexc
	ld.d	$a1, $sp, 16
	st.d	$a0, $sp, 48
	st.d	$a1, $sp, 64
.LBB5_21:                               # %._crit_edge.i.i.i51
	beqz	$s6, .LBB5_25
# %bb.22:                               # %._crit_edge.i.i.i51
	ori	$a1, $zero, 1
	bne	$s6, $a1, .LBB5_24
# %bb.23:
	ld.b	$a1, $s7, 0
	st.b	$a1, $a0, 0
	b	.LBB5_25
.LBB5_24:
	move	$a1, $s7
	move	$a2, $s6
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_25:
	ld.d	$a0, $sp, 16
	ld.d	$a1, $sp, 48
	st.d	$a0, $sp, 56
	stx.b	$zero, $a1, $a0
	ld.d	$a2, $s2, 16
	ld.d	$a1, $s2, 24
	ld.d	$a0, $s2, 40
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 7
	add.d	$a1, $a1, $s3
	bltz	$a1, .LBB5_28
# %bb.26:
	ori	$a3, $zero, 3
	bltu	$a3, $a1, .LBB5_29
# %bb.27:
	slli.d	$a0, $s3, 7
	add.d	$a0, $a2, $a0
	b	.LBB5_31
.LBB5_28:
	srai.d	$a2, $a1, 2
	b	.LBB5_30
.LBB5_29:
	srli.d	$a2, $a1, 2
.LBB5_30:
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 7
	add.d	$a0, $a0, $a1
.LBB5_31:                               # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit55
	addi.d	$fp, $sp, 32
	st.d	$fp, $sp, 16
	ld.d	$s6, $a0, 8
	ld.d	$s7, $a0, 0
	ori	$a1, $zero, 16
	st.d	$s6, $sp, 112
	move	$a0, $fp
	bltu	$s6, $a1, .LBB5_34
# %bb.32:                               # %.noexc.i.i57
.Ltmp328:                               # EH_LABEL
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 112
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp329:                               # EH_LABEL
# %bb.33:                               # %.noexc58
	ld.d	$a1, $sp, 112
	st.d	$a0, $sp, 16
	st.d	$a1, $sp, 32
.LBB5_34:                               # %._crit_edge.i.i.i56
	beqz	$s6, .LBB5_38
# %bb.35:                               # %._crit_edge.i.i.i56
	ori	$a1, $zero, 1
	bne	$s6, $a1, .LBB5_37
# %bb.36:
	ld.b	$a1, $s7, 0
	st.b	$a1, $a0, 0
	b	.LBB5_38
.LBB5_37:
	move	$a1, $s7
	move	$a2, $s6
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_38:
	ld.d	$a0, $sp, 112
	ld.d	$a1, $sp, 16
	st.d	$a0, $sp, 24
	stx.b	$zero, $a1, $a0
	ld.d	$a2, $s2, 16
	ld.d	$a1, $s2, 24
	ld.d	$a0, $s2, 40
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 7
	add.d	$a1, $a1, $s4
	bltz	$a1, .LBB5_41
# %bb.39:
	ori	$a3, $zero, 3
	bltu	$a3, $a1, .LBB5_42
# %bb.40:
	slli.d	$a0, $s4, 7
	add.d	$a0, $a2, $a0
	b	.LBB5_44
.LBB5_41:
	srai.d	$a2, $a1, 2
	b	.LBB5_43
.LBB5_42:
	srli.d	$a2, $a1, 2
.LBB5_43:
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 7
	add.d	$a0, $a0, $a1
.LBB5_44:                               # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit61
.Ltmp331:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN2PP4Word7is_boolEv)
	jirl	$ra, $ra, 0
.Ltmp332:                               # EH_LABEL
# %bb.45:
	beqz	$a0, .LBB5_57
# %bb.46:
	ld.d	$a2, $s2, 16
	ld.d	$a1, $s2, 24
	ld.d	$a0, $s2, 40
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 7
	add.d	$a1, $a1, $s3
	bltz	$a1, .LBB5_49
# %bb.47:
	ori	$a3, $zero, 3
	bltu	$a3, $a1, .LBB5_50
# %bb.48:
	slli.d	$a0, $s3, 7
	add.d	$a0, $a2, $a0
	b	.LBB5_52
.LBB5_49:
	srai.d	$a2, $a1, 2
	b	.LBB5_51
.LBB5_50:
	srli.d	$a2, $a1, 2
.LBB5_51:
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 7
	add.d	$a0, $a0, $a1
.LBB5_52:                               # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit63
.Ltmp333:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN2PP4Word7is_boolEv)
	jirl	$ra, $ra, 0
.Ltmp334:                               # EH_LABEL
# %bb.53:
	beqz	$a0, .LBB5_57
# %bb.54:
	ld.d	$a2, $s2, 16
	ld.d	$a1, $s2, 24
	ld.d	$a0, $s2, 40
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 7
	add.d	$a1, $a1, $s4
	bltz	$a1, .LBB5_103
# %bb.55:
	ori	$a3, $zero, 3
	bltu	$a3, $a1, .LBB5_104
# %bb.56:
	slli.d	$a0, $s4, 7
	add.d	$a0, $a2, $a0
	b	.LBB5_106
.LBB5_57:
	ld.d	$a2, $s2, 16
	ld.d	$a1, $s2, 24
	ld.d	$a0, $s2, 40
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 7
	add.d	$a1, $a1, $s5
	bltz	$a1, .LBB5_60
# %bb.58:
	ori	$a3, $zero, 3
	bltu	$a3, $a1, .LBB5_61
# %bb.59:
	slli.d	$a0, $s5, 7
	add.d	$a0, $a2, $a0
	b	.LBB5_63
.LBB5_60:
	srai.d	$a2, $a1, 2
	b	.LBB5_62
.LBB5_61:
	srli.d	$a2, $a1, 2
.LBB5_62:
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 7
	add.d	$a0, $a0, $a1
.LBB5_63:                               # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit65
.Ltmp335:                               # EH_LABEL
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(_ZN2PP4Word11fatal_errorERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi)
	jirl	$ra, $ra, 0
.Ltmp336:                               # EH_LABEL
# %bb.64:
	addi.d	$s1, $s1, 16
.Ltmp337:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.31)
	addi.d	$a1, $a0, %pc_lo12(.L.str.31)
	ori	$a2, $zero, 16
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp338:                               # EH_LABEL
# %bb.65:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
	ld.d	$a1, $sp, 48
	ld.d	$a2, $sp, 56
.Ltmp339:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp340:                               # EH_LABEL
# %bb.66:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
	move	$s2, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s2, $a0
	ld.d	$s3, $a0, 240
	beqz	$s3, .LBB5_127
# %bb.67:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	ld.bu	$a0, $s3, 56
	beqz	$a0, .LBB5_69
# %bb.68:
	ld.bu	$a0, $s3, 67
	b	.LBB5_71
.LBB5_69:
.Ltmp341:                               # EH_LABEL
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp342:                               # EH_LABEL
# %bb.70:                               # %.noexc113
	ld.d	$a0, $s3, 0
	ld.d	$a2, $a0, 48
.Ltmp343:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s3
	jirl	$ra, $a2, 0
.Ltmp344:                               # EH_LABEL
.LBB5_71:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
.Ltmp345:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp346:                               # EH_LABEL
# %bb.72:                               # %.noexc115
.Ltmp347:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp348:                               # EH_LABEL
# %bb.73:                               # %_ZNSolsEPFRSoS_E.exit
.Ltmp349:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a1, $a0, %pc_lo12(.L.str.32)
	ori	$a2, $zero, 56
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp350:                               # EH_LABEL
# %bb.74:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit70
	ld.d	$a0, $s1, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s1, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB5_127
# %bb.75:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i118
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB5_77
# %bb.76:
	ld.bu	$a0, $s2, 67
	b	.LBB5_79
.LBB5_77:
.Ltmp351:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp352:                               # EH_LABEL
# %bb.78:                               # %.noexc123
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp353:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp354:                               # EH_LABEL
.LBB5_79:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i120
.Ltmp355:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp356:                               # EH_LABEL
# %bb.80:                               # %.noexc125
.Ltmp357:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp358:                               # EH_LABEL
# %bb.81:                               # %_ZNSolsEPFRSoS_E.exit72
.Ltmp359:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a1, $a0, %pc_lo12(.L.str.33)
	ori	$a2, $zero, 39
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp360:                               # EH_LABEL
# %bb.82:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74
	ld.d	$a0, $s1, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s1, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB5_127
# %bb.83:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i129
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB5_85
# %bb.84:
	ld.bu	$a0, $s2, 67
	b	.LBB5_87
.LBB5_85:
.Ltmp361:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp362:                               # EH_LABEL
# %bb.86:                               # %.noexc134
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp363:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp364:                               # EH_LABEL
.LBB5_87:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i131
.Ltmp365:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp366:                               # EH_LABEL
# %bb.88:                               # %.noexc136
.Ltmp367:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp368:                               # EH_LABEL
# %bb.89:                               # %_ZNSolsEPFRSoS_E.exit76
.Ltmp369:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a1, $a0, %pc_lo12(.L.str.21)
	ori	$a2, $zero, 4
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp370:                               # EH_LABEL
# %bb.90:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit78
	ld.d	$a1, $sp, 80
	ld.d	$a2, $sp, 88
.Ltmp371:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp372:                               # EH_LABEL
# %bb.91:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit80
.Ltmp373:                               # EH_LABEL
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a1, $a0, %pc_lo12(.L.str.22)
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp374:                               # EH_LABEL
# %bb.92:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit82
	ld.d	$a1, $sp, 48
	ld.d	$a2, $sp, 56
.Ltmp375:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp376:                               # EH_LABEL
# %bb.93:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit84
.Ltmp377:                               # EH_LABEL
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a1, $a0, %pc_lo12(.L.str.22)
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp378:                               # EH_LABEL
# %bb.94:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit86
	ld.d	$a1, $sp, 16
	ld.d	$a2, $sp, 24
.Ltmp379:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp380:                               # EH_LABEL
# %bb.95:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit88
	move	$s1, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s1, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB5_127
# %bb.96:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i140
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB5_98
# %bb.97:
	ld.bu	$a0, $s2, 67
	b	.LBB5_100
.LBB5_98:
.Ltmp381:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp382:                               # EH_LABEL
# %bb.99:                               # %.noexc145
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp383:                               # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp384:                               # EH_LABEL
.LBB5_100:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i142
.Ltmp385:                               # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp386:                               # EH_LABEL
# %bb.101:                              # %.noexc147
.Ltmp387:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp388:                               # EH_LABEL
# %bb.102:                              # %_ZNSolsEPFRSoS_E.exit90
	ori	$a0, $zero, 2
	st.w	$a0, $s0, 0
.Ltmp389:                               # EH_LABEL
	move	$a0, $s8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(_ZN2PP4Word9set_valueEb)
	jirl	$ra, $ra, 0
.Ltmp390:                               # EH_LABEL
	b	.LBB5_120
.LBB5_103:
	srai.d	$a2, $a1, 2
	b	.LBB5_105
.LBB5_104:
	srli.d	$a2, $a1, 2
.LBB5_105:
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 7
	add.d	$a0, $a0, $a1
.LBB5_106:                              # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit92
.Ltmp394:                               # EH_LABEL
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(_ZN2PP4Word8get_boolERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi)
	jirl	$ra, $ra, 0
.Ltmp395:                               # EH_LABEL
# %bb.107:
	move	$s4, $a0
	ld.d	$a2, $s2, 16
	ld.d	$a1, $s2, 24
	ld.d	$a0, $s2, 40
	sub.d	$a1, $a2, $a1
	srai.d	$a1, $a1, 7
	add.d	$a1, $a1, $s3
	bltz	$a1, .LBB5_110
# %bb.108:
	ori	$a3, $zero, 3
	bltu	$a3, $a1, .LBB5_111
# %bb.109:
	slli.d	$a0, $s3, 7
	add.d	$a0, $a2, $a0
	b	.LBB5_113
.LBB5_110:
	srai.d	$a2, $a1, 2
	b	.LBB5_112
.LBB5_111:
	srli.d	$a2, $a1, 2
.LBB5_112:
	slli.d	$a3, $a2, 3
	ldx.d	$a0, $a0, $a3
	slli.d	$a2, $a2, 2
	sub.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 7
	add.d	$a0, $a0, $a1
.LBB5_113:                              # %_ZNSt5dequeIN2PP4WordESaIS1_EEixEm.exit94
.Ltmp397:                               # EH_LABEL
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(_ZN2PP4Word8get_boolERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi)
	jirl	$ra, $ra, 0
.Ltmp398:                               # EH_LABEL
# %bb.114:
	move	$s0, $a0
	ld.d	$a0, $sp, 56
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB5_117
# %bb.115:
	ori	$a1, $zero, 5
	bne	$a0, $a1, .LBB5_118
# %bb.116:                              # %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
	ld.d	$a0, $sp, 48
	pcalau12i	$a1, %pc_hi20(.L.str.34)
	addi.d	$a1, $a1, %pc_lo12(.L.str.34)
	ori	$a2, $zero, 5
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	sltui	$a0, $a0, 1
	and	$a0, $s0, $a0
	and	$a1, $s4, $a0
	b	.LBB5_119
.LBB5_117:                              # %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit96
	ld.d	$a0, $sp, 48
	pcalau12i	$a1, %pc_hi20(.L.str.35)
	addi.d	$a1, $a1, %pc_lo12(.L.str.35)
	ori	$a2, $zero, 4
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	sltui	$a0, $a0, 1
	or	$a1, $s4, $s0
	and	$a1, $a0, $a1
	b	.LBB5_119
.LBB5_118:
	move	$a1, $zero
.LBB5_119:                              # %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit96.thread151
.Ltmp399:                               # EH_LABEL
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZN2PP4Word9set_valueEb)
	jirl	$ra, $ra, 0
.Ltmp400:                               # EH_LABEL
.LBB5_120:
	ld.d	$a0, $sp, 16
	beq	$a0, $fp, .LBB5_122
# %bb.121:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_122:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	beq	$a0, $a1, .LBB5_124
# %bb.123:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_124:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99
	ld.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	beq	$a0, $a1, .LBB5_126
# %bb.125:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100
	ld.d	$a1, $sp, 96
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_126:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102
	ld.d	$s8, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 192                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 200                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 208
	ret
.LBB5_127:                              # %.invoke
.Ltmp391:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp392:                               # EH_LABEL
# %bb.128:                              # %.cont
.LBB5_129:
.Ltmp396:                               # EH_LABEL
	b	.LBB5_134
.LBB5_130:
.Ltmp401:                               # EH_LABEL
	b	.LBB5_134
.LBB5_131:
.Ltmp330:                               # EH_LABEL
	move	$s0, $a0
	ld.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	beq	$a0, $a1, .LBB5_136
	b	.LBB5_139
.LBB5_132:
.Ltmp327:                               # EH_LABEL
	move	$s0, $a0
	ld.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	beq	$a0, $a1, .LBB5_137
	b	.LBB5_140
.LBB5_133:
.Ltmp393:                               # EH_LABEL
.LBB5_134:
	move	$s0, $a0
	ld.d	$a0, $sp, 16
	bne	$a0, $fp, .LBB5_138
# %bb.135:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105
	ld.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	bne	$a0, $a1, .LBB5_139
.LBB5_136:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108
	ld.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	bne	$a0, $a1, .LBB5_140
.LBB5_137:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB5_138:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	beq	$a0, $a1, .LBB5_136
.LBB5_139:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106
	ld.d	$a1, $sp, 64
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 80
	addi.d	$a1, $sp, 96
	beq	$a0, $a1, .LBB5_137
.LBB5_140:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109
	ld.d	$a1, $sp, 96
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end5:
	.size	_ZN2PP11Parser_math13do_op_logicalEiiiRSt5dequeINS_4WordESaIS2_EERS2_RNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi, .Lfunc_end5-_ZN2PP11Parser_math13do_op_logicalEiiiRSt5dequeINS_4WordESaIS2_EERS2_RNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEERi
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table5:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Lfunc_begin3-.Lfunc_begin3    # >> Call Site 1 <<
	.uleb128 .Ltmp325-.Lfunc_begin3         #   Call between .Lfunc_begin3 and .Ltmp325
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp325-.Lfunc_begin3         # >> Call Site 2 <<
	.uleb128 .Ltmp326-.Ltmp325              #   Call between .Ltmp325 and .Ltmp326
	.uleb128 .Ltmp327-.Lfunc_begin3         #     jumps to .Ltmp327
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp326-.Lfunc_begin3         # >> Call Site 3 <<
	.uleb128 .Ltmp328-.Ltmp326              #   Call between .Ltmp326 and .Ltmp328
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp328-.Lfunc_begin3         # >> Call Site 4 <<
	.uleb128 .Ltmp329-.Ltmp328              #   Call between .Ltmp328 and .Ltmp329
	.uleb128 .Ltmp330-.Lfunc_begin3         #     jumps to .Ltmp330
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp329-.Lfunc_begin3         # >> Call Site 5 <<
	.uleb128 .Ltmp331-.Ltmp329              #   Call between .Ltmp329 and .Ltmp331
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp331-.Lfunc_begin3         # >> Call Site 6 <<
	.uleb128 .Ltmp390-.Ltmp331              #   Call between .Ltmp331 and .Ltmp390
	.uleb128 .Ltmp393-.Lfunc_begin3         #     jumps to .Ltmp393
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp394-.Lfunc_begin3         # >> Call Site 7 <<
	.uleb128 .Ltmp395-.Ltmp394              #   Call between .Ltmp394 and .Ltmp395
	.uleb128 .Ltmp396-.Lfunc_begin3         #     jumps to .Ltmp396
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp397-.Lfunc_begin3         # >> Call Site 8 <<
	.uleb128 .Ltmp398-.Ltmp397              #   Call between .Ltmp397 and .Ltmp398
	.uleb128 .Ltmp401-.Lfunc_begin3         #     jumps to .Ltmp401
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp398-.Lfunc_begin3         # >> Call Site 9 <<
	.uleb128 .Ltmp399-.Ltmp398              #   Call between .Ltmp398 and .Ltmp399
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp399-.Lfunc_begin3         # >> Call Site 10 <<
	.uleb128 .Ltmp400-.Ltmp399              #   Call between .Ltmp399 and .Ltmp400
	.uleb128 .Ltmp401-.Lfunc_begin3         #     jumps to .Ltmp401
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp400-.Lfunc_begin3         # >> Call Site 11 <<
	.uleb128 .Ltmp391-.Ltmp400              #   Call between .Ltmp400 and .Ltmp391
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp391-.Lfunc_begin3         # >> Call Site 12 <<
	.uleb128 .Ltmp392-.Ltmp391              #   Call between .Ltmp391 and .Ltmp392
	.uleb128 .Ltmp393-.Lfunc_begin3         #     jumps to .Ltmp393
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp392-.Lfunc_begin3         # >> Call Site 13 <<
	.uleb128 .Lfunc_end5-.Ltmp392           #   Call between .Ltmp392 and .Lfunc_end5
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
	.p2align	2, 0x0
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Expected some number "
	.size	.L.str, 22

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	" some number"
	.size	.L.str.1, 13

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"But did not find a number, instead found"
	.size	.L.str.2, 41

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"**"
	.size	.L.str.6, 3

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"Trying to exponentiate 0 to a negative power."
	.size	.L.str.7, 46

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"Base = "
	.size	.L.str.8, 8

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"  Exponent = "
	.size	.L.str.9, 14

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"Trying to exponentiate a negative number to a non-integer power."
	.size	.L.str.10, 65

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"Divide by 0."
	.size	.L.str.12, 13

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"Numerator = "
	.size	.L.str.13, 13

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"  Denominator = "
	.size	.L.str.14, 17

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	".gt."
	.size	.L.str.15, 5

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	".ge."
	.size	.L.str.16, 5

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	".lt."
	.size	.L.str.17, 5

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	".le."
	.size	.L.str.18, 5

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"Does not make sense to compare logical values"
	.size	.L.str.19, 46

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	" with greater than or less than"
	.size	.L.str.20, 32

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"    "
	.size	.L.str.21, 5

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	" "
	.size	.L.str.22, 2

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"Does not make sense to compare logical and"
	.size	.L.str.23, 43

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	" non-logical values"
	.size	.L.str.24, 20

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"Does not make sense to compare numerical and"
	.size	.L.str.25, 45

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	" non-numerical values"
	.size	.L.str.26, 22

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	".eq."
	.size	.L.str.27, 5

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	".ne."
	.size	.L.str.28, 5

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"The word following the .not. operator must be true or false."
	.size	.L.str.29, 61

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"Instead the word following .not. is "
	.size	.L.str.30, 37

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"The operator is "
	.size	.L.str.31, 17

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"The two operands (on the left and right of the operator)"
	.size	.L.str.32, 57

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"must be logical values (true or false)."
	.size	.L.str.33, 40

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	".and."
	.size	.L.str.34, 6

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	".or."
	.size	.L.str.35, 5

	.globl	_ZN2PP11Parser_mathC1Ev
	.type	_ZN2PP11Parser_mathC1Ev,@function
_ZN2PP11Parser_mathC1Ev = _ZN2PP11Parser_mathC2Ev
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
