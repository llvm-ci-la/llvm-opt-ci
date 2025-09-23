	.file	"Mesh.cc"
                                        # Start of file scope inline assembly
	.globl	_ZSt21ios_base_library_initv

                                        # End of file scope inline assembly
	.text
	.globl	_ZN4MeshC2EPK9InputFile         # -- Begin function _ZN4MeshC2EPK9InputFile
	.p2align	5
	.type	_ZN4MeshC2EPK9InputFile,@function
_ZN4MeshC2EPK9InputFile:                # @_ZN4MeshC2EPK9InputFile
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
# %bb.0:                                # %._crit_edge.i.i
	addi.d	$sp, $sp, -160
	.cfi_def_cfa_offset 160
	st.d	$ra, $sp, 152                   # 8-byte Folded Spill
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	st.d	$s0, $sp, 136                   # 8-byte Folded Spill
	st.d	$s1, $sp, 128                   # 8-byte Folded Spill
	st.d	$s2, $sp, 120                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	move	$s1, $a1
	move	$fp, $a0
	st.d	$zero, $a0, 48
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	vst	$vr0, $a0, 32
	addi.d	$s0, $a0, 408
	st.d	$zero, $a0, 0
	vst	$vr0, $a0, 8
	ori	$a2, $zero, 96
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	vld	$vr1, $sp, 16                   # 16-byte Folded Reload
	vst	$vr1, $fp, 512
	xvrepli.b	$xr0, 0
	xvst	$xr0, $fp, 528
	vst	$vr1, $fp, 568
	xvst	$xr0, $fp, 584
	addi.d	$s2, $sp, 104
	st.d	$s2, $sp, 88
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ld.d	$a1, $a0, 0
	ld.b	$a0, $a0, 8
	st.d	$a1, $sp, 104
	st.b	$a0, $sp, 112
	ori	$a0, $zero, 9
	st.d	$a0, $sp, 96
	st.b	$zero, $sp, 113
.Ltmp0:                                 # EH_LABEL
	addi.d	$a1, $sp, 88
	move	$a0, $s1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNK9InputFile6getIntERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.1:
	ld.d	$a2, $sp, 88
	st.w	$a0, $fp, 24
	beq	$a2, $s2, .LBB0_3
# %bb.2:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a0, $sp, 104
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 24
.LBB0_3:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	bltz	$a0, .LBB0_27
# %bb.4:                                # %._crit_edge.i.i27
	st.d	$s2, $sp, 88
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	ld.d	$a1, $a0, 0
	ld.b	$a0, $a0, 8
	st.d	$a1, $sp, 104
	st.b	$a0, $sp, 112
	ori	$a0, $zero, 9
	st.d	$a0, $sp, 96
	st.b	$zero, $sp, 113
	st.d	$zero, $sp, 56
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 40
.Ltmp3:                                 # EH_LABEL
	addi.d	$a0, $sp, 64
	addi.d	$a2, $sp, 88
	addi.d	$a3, $sp, 40
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZNK9InputFile13getDoubleListERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIdSaIdEE)
	jirl	$ra, $ra, 0
.Ltmp4:                                 # EH_LABEL
# %bb.5:
	vld	$vr0, $sp, 64
	ld.d	$a2, $sp, 80
	ld.d	$a0, $fp, 32
	ld.d	$a1, $fp, 48
	vst	$vr0, $fp, 32
	st.d	$a2, $fp, 48
	st.d	$zero, $sp, 80
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 64
	beqz	$a0, .LBB0_8
# %bb.6:                                # %_ZNSt6vectorIdSaIdEEaSEOS1_.exit
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 64
	beqz	$a0, .LBB0_8
# %bb.7:
	ld.d	$a1, $sp, 80
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_8:                                # %_ZNSt6vectorIdSaIdEED2Ev.exit
	ld.d	$a0, $sp, 40
	beqz	$a0, .LBB0_10
# %bb.9:
	ld.d	$a1, $sp, 56
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_10:                               # %_ZNSt6vectorIdSaIdEED2Ev.exit32
	ld.d	$a0, $sp, 88
	beq	$a0, $s2, .LBB0_12
# %bb.11:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
	ld.d	$a1, $sp, 104
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_12:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35
	ld.d	$a0, $fp, 40
	ld.d	$a1, $fp, 32
	sub.d	$a0, $a0, $a1
	srai.d	$a0, $a0, 3
	bstrins.d	$a0, $zero, 2, 2
	bnez	$a0, .LBB0_31
# %bb.13:                               # %._crit_edge.i.i45
	st.d	$s2, $sp, 88
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	ld.w	$a1, $a0, 0
	ld.w	$a0, $a0, 3
	st.w	$a1, $sp, 104
	st.w	$a0, $sp, 107
	ori	$a0, $zero, 7
	st.d	$a0, $sp, 96
	st.b	$zero, $sp, 111
.Ltmp6:                                 # EH_LABEL
	addi.d	$a1, $sp, 88
	move	$a0, $s1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNK9InputFile6getIntERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
	move	$a1, $a0
.Ltmp7:                                 # EH_LABEL
# %bb.14:
	ld.d	$a0, $sp, 88
	sltu	$a1, $zero, $a1
	st.b	$a1, $fp, 56
	beq	$a0, $s2, .LBB0_16
# %bb.15:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49
	ld.d	$a1, $sp, 104
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_16:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51
	st.d	$s2, $sp, 88
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	ld.d	$a1, $a0, 0
	ld.b	$a0, $a0, 8
	st.d	$a1, $sp, 104
	st.b	$a0, $sp, 112
	ori	$a0, $zero, 9
	st.d	$a0, $sp, 96
	st.b	$zero, $sp, 113
.Ltmp9:                                 # EH_LABEL
	addi.d	$a1, $sp, 88
	move	$a0, $s1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNK9InputFile6getIntERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
	move	$a1, $a0
.Ltmp10:                                # EH_LABEL
# %bb.17:
	ld.d	$a0, $sp, 88
	sltu	$a1, $zero, $a1
	st.b	$a1, $fp, 57
	beq	$a0, $s2, .LBB0_19
# %bb.18:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56
	ld.d	$a1, $sp, 104
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_19:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58
.Ltmp12:                                # EH_LABEL
	ori	$a0, $zero, 88
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp13:                                # EH_LABEL
# %bb.20:
.Ltmp14:                                # EH_LABEL
	move	$s2, $a0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZN7GenMeshC1EPK9InputFile)
	jirl	$ra, $ra, 0
.Ltmp15:                                # EH_LABEL
# %bb.21:
	st.d	$s2, $fp, 0
.Ltmp17:                                # EH_LABEL
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp18:                                # EH_LABEL
# %bb.22:
.Ltmp19:                                # EH_LABEL
	move	$s2, $a0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN7WriteXYC1EP4Mesh)
	jirl	$ra, $ra, 0
.Ltmp20:                                # EH_LABEL
# %bb.23:
	st.d	$s2, $fp, 8
.Ltmp22:                                # EH_LABEL
	ori	$a0, $zero, 192
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp23:                                # EH_LABEL
# %bb.24:
.Ltmp24:                                # EH_LABEL
	move	$s2, $a0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN10ExportGoldC1EP4Mesh)
	jirl	$ra, $ra, 0
.Ltmp25:                                # EH_LABEL
# %bb.25:
	st.d	$s2, $fp, 16
.Ltmp27:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN4Mesh4initEv)
	jirl	$ra, $ra, 0
.Ltmp28:                                # EH_LABEL
# %bb.26:
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 160
	ret
.LBB0_27:
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZN8Parallel4mypeE)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB0_34
# %bb.28:
.Ltmp33:                                # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a1, $a1, %pc_lo12(.L.str.1)
	ori	$a2, $zero, 21
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp34:                                # EH_LABEL
# %bb.29:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
	ld.w	$a1, $fp, 24
.Ltmp35:                                # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp36:                                # EH_LABEL
# %bb.30:
.Ltmp37:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
	jirl	$ra, $ra, 0
.Ltmp38:                                # EH_LABEL
	b	.LBB0_34
.LBB0_31:
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZN8Parallel4mypeE)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB0_34
# %bb.32:
.Ltmp29:                                # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	ori	$a2, $zero, 37
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp30:                                # EH_LABEL
# %bb.33:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit37
.Ltmp31:                                # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcaddu18i	$ra, %call36(_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
	jirl	$ra, $ra, 0
.Ltmp32:                                # EH_LABEL
.LBB0_34:                               # %_ZNSolsEPFRSoS_E.exit
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB0_35:
.Ltmp26:                                # EH_LABEL
	move	$s1, $a0
	ori	$a1, $zero, 192
	b	.LBB0_38
.LBB0_36:
.Ltmp21:                                # EH_LABEL
	move	$s1, $a0
	ori	$a1, $zero, 8
	b	.LBB0_38
.LBB0_37:
.Ltmp16:                                # EH_LABEL
	move	$s1, $a0
	ori	$a1, $zero, 88
.LBB0_38:
	move	$a0, $s2
	b	.LBB0_48
.LBB0_39:
.Ltmp11:                                # EH_LABEL
	b	.LBB0_46
.LBB0_40:
.Ltmp8:                                 # EH_LABEL
	b	.LBB0_46
.LBB0_41:
.Ltmp5:                                 # EH_LABEL
	ld.d	$a2, $sp, 40
	move	$s1, $a0
	beqz	$a2, .LBB0_43
# %bb.42:
	ld.d	$a0, $sp, 56
	sub.d	$a1, $a0, $a2
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_43:                               # %_ZNSt6vectorIdSaIdEED2Ev.exit41
	ld.d	$a0, $sp, 88
	beq	$a0, $s2, .LBB0_50
# %bb.44:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
	ld.d	$a1, $sp, 104
	addi.d	$a1, $a1, 1
	b	.LBB0_48
.LBB0_45:
.Ltmp2:                                 # EH_LABEL
.LBB0_46:
	ld.d	$a2, $sp, 88
	move	$s1, $a0
	beq	$a2, $s2, .LBB0_50
# %bb.47:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
	ld.d	$a0, $sp, 104
	addi.d	$a1, $a0, 1
	move	$a0, $a2
.LBB0_48:
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB0_50
.LBB0_49:
.Ltmp39:                                # EH_LABEL
	move	$s1, $a0
.LBB0_50:
	ld.d	$a0, $fp, 592
	addi.d	$s2, $fp, 568
	bnez	$a0, .LBB0_60
# %bb.51:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit
	ld.d	$a0, $s2, 0
	bnez	$a0, .LBB0_61
.LBB0_52:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit67
	ld.d	$a0, $fp, 536
	addi.d	$s2, $fp, 512
	bnez	$a0, .LBB0_62
.LBB0_53:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit69
	ld.d	$a0, $s2, 0
	bnez	$a0, .LBB0_63
.LBB0_54:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit71
	ld.d	$a0, $fp, 480
	bnez	$a0, .LBB0_64
.LBB0_55:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit73
	ld.d	$a0, $fp, 456
	bnez	$a0, .LBB0_65
.LBB0_56:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit75
	ld.d	$a0, $fp, 432
	bnez	$a0, .LBB0_66
.LBB0_57:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit77
	ld.d	$a0, $s0, 0
	addi.d	$s0, $fp, 32
	bnez	$a0, .LBB0_67
.LBB0_58:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit79
	ld.d	$a0, $s0, 0
	bnez	$a0, .LBB0_68
.LBB0_59:                               # %_ZNSt6vectorIdSaIdEED2Ev.exit81
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB0_60:
	ld.d	$a1, $fp, 608
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	beqz	$a0, .LBB0_52
.LBB0_61:
	ld.d	$a1, $fp, 584
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 536
	addi.d	$s2, $fp, 512
	beqz	$a0, .LBB0_53
.LBB0_62:
	ld.d	$a1, $fp, 552
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	beqz	$a0, .LBB0_54
.LBB0_63:
	ld.d	$a1, $fp, 528
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 480
	beqz	$a0, .LBB0_55
.LBB0_64:
	ld.d	$a1, $fp, 496
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 456
	beqz	$a0, .LBB0_56
.LBB0_65:
	ld.d	$a1, $fp, 472
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 432
	beqz	$a0, .LBB0_57
.LBB0_66:
	ld.d	$a1, $fp, 448
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	addi.d	$s0, $fp, 32
	beqz	$a0, .LBB0_58
.LBB0_67:
	ld.d	$a1, $fp, 424
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	beqz	$a0, .LBB0_59
.LBB0_68:
	ld.d	$a1, $fp, 48
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	_ZN4MeshC2EPK9InputFile, .Lfunc_end0-_ZN4MeshC2EPK9InputFile
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
	.uleb128 .Ltmp6-.Ltmp4                  #   Call between .Ltmp4 and .Ltmp6
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp6-.Lfunc_begin0           # >> Call Site 6 <<
	.uleb128 .Ltmp7-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp7
	.uleb128 .Ltmp8-.Lfunc_begin0           #     jumps to .Ltmp8
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp7-.Lfunc_begin0           # >> Call Site 7 <<
	.uleb128 .Ltmp9-.Ltmp7                  #   Call between .Ltmp7 and .Ltmp9
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp9-.Lfunc_begin0           # >> Call Site 8 <<
	.uleb128 .Ltmp10-.Ltmp9                 #   Call between .Ltmp9 and .Ltmp10
	.uleb128 .Ltmp11-.Lfunc_begin0          #     jumps to .Ltmp11
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp10-.Lfunc_begin0          # >> Call Site 9 <<
	.uleb128 .Ltmp12-.Ltmp10                #   Call between .Ltmp10 and .Ltmp12
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp12-.Lfunc_begin0          # >> Call Site 10 <<
	.uleb128 .Ltmp13-.Ltmp12                #   Call between .Ltmp12 and .Ltmp13
	.uleb128 .Ltmp39-.Lfunc_begin0          #     jumps to .Ltmp39
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp14-.Lfunc_begin0          # >> Call Site 11 <<
	.uleb128 .Ltmp15-.Ltmp14                #   Call between .Ltmp14 and .Ltmp15
	.uleb128 .Ltmp16-.Lfunc_begin0          #     jumps to .Ltmp16
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp17-.Lfunc_begin0          # >> Call Site 12 <<
	.uleb128 .Ltmp18-.Ltmp17                #   Call between .Ltmp17 and .Ltmp18
	.uleb128 .Ltmp39-.Lfunc_begin0          #     jumps to .Ltmp39
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp19-.Lfunc_begin0          # >> Call Site 13 <<
	.uleb128 .Ltmp20-.Ltmp19                #   Call between .Ltmp19 and .Ltmp20
	.uleb128 .Ltmp21-.Lfunc_begin0          #     jumps to .Ltmp21
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp22-.Lfunc_begin0          # >> Call Site 14 <<
	.uleb128 .Ltmp23-.Ltmp22                #   Call between .Ltmp22 and .Ltmp23
	.uleb128 .Ltmp39-.Lfunc_begin0          #     jumps to .Ltmp39
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp24-.Lfunc_begin0          # >> Call Site 15 <<
	.uleb128 .Ltmp25-.Ltmp24                #   Call between .Ltmp24 and .Ltmp25
	.uleb128 .Ltmp26-.Lfunc_begin0          #     jumps to .Ltmp26
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp27-.Lfunc_begin0          # >> Call Site 16 <<
	.uleb128 .Ltmp32-.Ltmp27                #   Call between .Ltmp27 and .Ltmp32
	.uleb128 .Ltmp39-.Lfunc_begin0          #     jumps to .Ltmp39
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp32-.Lfunc_begin0          # >> Call Site 17 <<
	.uleb128 .Lfunc_end0-.Ltmp32            #   Call between .Ltmp32 and .Lfunc_end0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN4Mesh4initEv                 # -- Begin function _ZN4Mesh4initEv
	.p2align	5
	.type	_ZN4Mesh4initEv,@function
_ZN4Mesh4initEv:                        # @_ZN4Mesh4initEv
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception1
# %bb.0:
	addi.d	$sp, $sp, -336
	.cfi_def_cfa_offset 336
	st.d	$ra, $sp, 328                   # 8-byte Folded Spill
	st.d	$fp, $sp, 320                   # 8-byte Folded Spill
	st.d	$s0, $sp, 312                   # 8-byte Folded Spill
	st.d	$s1, $sp, 304                   # 8-byte Folded Spill
	st.d	$s2, $sp, 296                   # 8-byte Folded Spill
	st.d	$s3, $sp, 288                   # 8-byte Folded Spill
	st.d	$s4, $sp, 280                   # 8-byte Folded Spill
	st.d	$s5, $sp, 272                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	move	$fp, $a0
	st.d	$zero, $sp, 264
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 248
	st.d	$zero, $sp, 240
	vst	$vr0, $sp, 224
	st.d	$zero, $sp, 216
	vst	$vr0, $sp, 200
	st.d	$zero, $sp, 192
	vst	$vr0, $sp, 176
	st.d	$zero, $sp, 168
	vst	$vr0, $sp, 152
	st.d	$zero, $sp, 144
	vst	$vr0, $sp, 128
	st.d	$zero, $sp, 120
	vst	$vr0, $sp, 104
	st.d	$zero, $sp, 96
	vst	$vr0, $sp, 80
	st.d	$zero, $sp, 72
	ld.d	$a0, $a0, 0
	vst	$vr0, $sp, 56
	st.d	$zero, $sp, 48
	vst	$vr0, $sp, 32
.Ltmp40:                                # EH_LABEL
	addi.d	$a1, $sp, 32
	st.d	$a1, $sp, 16
	addi.d	$a1, $sp, 56
	st.d	$a1, $sp, 8
	addi.d	$t0, $sp, 80
	addi.d	$a1, $sp, 248
	addi.d	$a2, $sp, 224
	addi.d	$a3, $sp, 200
	addi.d	$a4, $sp, 176
	addi.d	$a5, $sp, 152
	addi.d	$a6, $sp, 128
	addi.d	$a7, $sp, 104
	st.d	$t0, $sp, 0
	pcaddu18i	$ra, %call36(_ZN7GenMesh8generateERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_)
	jirl	$ra, $ra, 0
.Ltmp41:                                # EH_LABEL
# %bb.1:
	ld.d	$a0, $sp, 256
	ld.d	$a1, $sp, 248
	sub.d	$a0, $a0, $a1
	srli.d	$a0, $a0, 4
	ld.d	$a1, $sp, 232
	ld.d	$a2, $sp, 224
	st.w	$a0, $fp, 60
	ld.d	$a0, $sp, 184
	ld.d	$a3, $sp, 176
	sub.d	$a1, $a1, $a2
	srli.d	$a2, $a1, 2
	st.w	$a2, $fp, 68
	sub.d	$a0, $a0, $a3
	srli.d	$a0, $a0, 2
	st.w	$a0, $fp, 72
	st.w	$a0, $fp, 76
	slli.d	$a0, $a1, 30
	srai.d	$a0, $a0, 30
	bstrins.d	$a0, $zero, 1, 0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 200
	ld.d	$a2, $sp, 208
	sub.d	$a2, $a2, $a1
	ori	$a3, $zero, 5
	st.d	$a0, $fp, 232
	blt	$a2, $a3, .LBB1_59
# %bb.2:
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
.LBB1_3:                                # %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit
	addi.d	$a1, $sp, 224
	addi.d	$a2, $sp, 200
	addi.d	$a3, $sp, 176
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN4Mesh9initSidesERKSt6vectorIiSaIiEES4_S4_)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 232
	ld.d	$a0, $sp, 224
	beq	$a1, $a0, .LBB1_5
# %bb.4:                                # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
	st.d	$a0, $sp, 232
.LBB1_5:                                # %_ZNSt6vectorIiSaIiEE6resizeEm.exit
	ld.d	$a1, $sp, 208
	ld.d	$a0, $sp, 200
	beq	$a1, $a0, .LBB1_7
# %bb.6:                                # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i29
	st.d	$a0, $sp, 208
.LBB1_7:                                # %_ZNSt6vectorIiSaIiEE6resizeEm.exit30
	ld.d	$a1, $sp, 184
	ld.d	$a0, $sp, 176
	beq	$a1, $a0, .LBB1_9
# %bb.8:                                # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i32
	st.d	$a0, $sp, 184
.LBB1_9:                                # %_ZNSt6vectorIiSaIiEE6resizeEm.exit33
.Ltmp42:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN4Mesh9initEdgesEv)
	jirl	$ra, $ra, 0
.Ltmp43:                                # EH_LABEL
# %bb.10:
.Ltmp44:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN4Mesh10initChunksEv)
	jirl	$ra, $ra, 0
.Ltmp45:                                # EH_LABEL
# %bb.11:
.Ltmp46:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN4Mesh10initInvMapEv)
	jirl	$ra, $ra, 0
.Ltmp47:                                # EH_LABEL
# %bb.12:
	addi.d	$a1, $sp, 152
	addi.d	$a2, $sp, 128
	addi.d	$a3, $sp, 104
	addi.d	$a4, $sp, 80
	addi.d	$a5, $sp, 56
	addi.d	$a6, $sp, 32
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN4Mesh12initParallelERKSt6vectorIiSaIiEES4_S4_S4_S4_S4_)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 160
	ld.d	$a0, $sp, 152
	beq	$a1, $a0, .LBB1_14
# %bb.13:                               # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i35
	st.d	$a0, $sp, 160
.LBB1_14:                               # %_ZNSt6vectorIiSaIiEE6resizeEm.exit36
	ld.d	$a1, $sp, 136
	ld.d	$a0, $sp, 128
	beq	$a1, $a0, .LBB1_16
# %bb.15:                               # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i38
	st.d	$a0, $sp, 136
.LBB1_16:                               # %_ZNSt6vectorIiSaIiEE6resizeEm.exit39
	ld.d	$a1, $sp, 112
	ld.d	$a0, $sp, 104
	beq	$a1, $a0, .LBB1_18
# %bb.17:                               # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i41
	st.d	$a0, $sp, 112
.LBB1_18:                               # %_ZNSt6vectorIiSaIiEE6resizeEm.exit42
	ld.d	$a1, $sp, 88
	ld.d	$a0, $sp, 80
	beq	$a1, $a0, .LBB1_20
# %bb.19:                               # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i44
	st.d	$a0, $sp, 88
.LBB1_20:                               # %_ZNSt6vectorIiSaIiEE6resizeEm.exit45
	ld.d	$a1, $sp, 64
	ld.d	$a0, $sp, 56
	beq	$a1, $a0, .LBB1_22
# %bb.21:                               # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i47
	st.d	$a0, $sp, 64
.LBB1_22:                               # %_ZNSt6vectorIiSaIiEE6resizeEm.exit48
	ld.d	$a1, $sp, 40
	ld.d	$a0, $sp, 32
	beq	$a1, $a0, .LBB1_24
# %bb.23:                               # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i50
	st.d	$a0, $sp, 40
.LBB1_24:                               # %_ZNSt6vectorIiSaIiEE6resizeEm.exit51
.Ltmp48:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN4Mesh10writeStatsEv)
	jirl	$ra, $ra, 0
.Ltmp49:                                # EH_LABEL
# %bb.25:
	ld.w	$a0, $fp, 60
	slli.d	$s1, $a0, 4
	move	$a0, $s1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$s4, $fp, 64
	move	$s0, $a0
	st.d	$a0, $fp, 240
	slli.d	$s2, $s4, 4
	move	$a0, $s2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$s5, $fp, 68
	st.d	$a0, $fp, 248
	slli.d	$s3, $s5, 4
	move	$a0, $s3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 256
	move	$a0, $s1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 288
	move	$a0, $s1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 264
	move	$a0, $s2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 272
	move	$a0, $s3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$s3, $fp, 72
	st.d	$a0, $fp, 280
	slli.d	$s1, $s3, 3
	move	$a0, $s1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 296
	move	$a0, $s1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 304
	slli.d	$s2, $s5, 3
	move	$a0, $s2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 312
	move	$a0, $s2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 320
	move	$a0, $s1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 328
	move	$a0, $s1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 336
	move	$a0, $s2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 344
	move	$a0, $s2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 352
	move	$a0, $s2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 360
	slli.d	$a0, $s3, 4
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 368
	slli.d	$a0, $s4, 3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 376
	move	$a0, $s2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 392
	move	$a0, $s1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 504
	st.d	$a0, $fp, 384
	blez	$a1, .LBB1_31
# %bb.26:                               # %.lr.ph100
	ld.d	$a0, $fp, 512
	ld.d	$a2, $fp, 536
	ld.d	$a3, $sp, 248
	move	$a4, $zero
	b	.LBB1_28
	.p2align	4, , 16
.LBB1_27:                               # %._crit_edge
                                        #   in Loop: Header=BB1_28 Depth=1
	addi.d	$a4, $a4, 1
	beq	$a4, $a1, .LBB1_31
.LBB1_28:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_30 Depth 2
	slli.d	$a5, $a4, 2
	ldx.w	$a7, $a0, $a5
	ldx.w	$t0, $a2, $a5
	bge	$a7, $t0, .LBB1_27
# %bb.29:                               # %.lr.ph.preheader
                                        #   in Loop: Header=BB1_28 Depth=1
	alsl.d	$a5, $a7, $s0, 4
	alsl.d	$a6, $a7, $a3, 4
	sub.d	$a7, $t0, $a7
	.p2align	4, , 16
.LBB1_30:                               # %.lr.ph
                                        #   Parent Loop BB1_28 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a6, 0
	vst	$vr0, $a5, 0
	addi.d	$a5, $a5, 16
	addi.d	$a7, $a7, -1
	addi.d	$a6, $a6, 16
	bnez	$a7, .LBB1_30
	b	.LBB1_27
.LBB1_31:                               # %._crit_edge101
	ld.w	$a0, $fp, 400
	st.w	$zero, $fp, 80
	blez	$a0, .LBB1_37
# %bb.32:                               # %.lr.ph104
	move	$s2, $zero
	b	.LBB1_34
	.p2align	4, , 16
.LBB1_33:                               # %_ZN4Mesh13calcSideFracsEPKdS1_Pdii.exit
                                        #   in Loop: Header=BB1_34 Depth=1
	ld.w	$a0, $fp, 400
	addi.d	$s2, $s2, 1
	bge	$s2, $a0, .LBB1_37
.LBB1_34:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_36 Depth 2
	ld.d	$a0, $fp, 408
	ld.d	$a1, $fp, 432
	slli.d	$a2, $s2, 2
	ldx.w	$s0, $a0, $a2
	ldx.w	$s1, $a1, $a2
	ld.d	$a1, $fp, 240
	ld.d	$a2, $fp, 248
	ld.d	$a3, $fp, 256
	move	$a0, $fp
	move	$a4, $s0
	move	$a5, $s1
	pcaddu18i	$ra, %call36(_ZN4Mesh8calcCtrsEPK7double2PS0_S3_ii)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 240
	ld.d	$a2, $fp, 256
	ld.d	$a3, $fp, 296
	ld.d	$a4, $fp, 304
	ld.d	$a5, $fp, 312
	ld.d	$a6, $fp, 320
	st.d	$s1, $sp, 0
	move	$a0, $fp
	move	$a7, $s0
	pcaddu18i	$ra, %call36(_ZN4Mesh8calcVolsEPK7double2S2_PdS3_S3_S3_ii)
	jirl	$ra, $ra, 0
	bge	$s0, $s1, .LBB1_33
# %bb.35:                               # %.lr.ph.i
                                        #   in Loop: Header=BB1_34 Depth=1
	ld.d	$a3, $fp, 296
	ld.d	$a2, $fp, 384
	ld.d	$a0, $fp, 312
	ld.d	$a4, $fp, 104
	sub.d	$a1, $s1, $s0
	alsl.d	$a2, $s0, $a2, 3
	alsl.d	$a3, $s0, $a3, 3
	alsl.d	$a4, $s0, $a4, 2
	.p2align	4, , 16
.LBB1_36:                               #   Parent Loop BB1_34 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a5, $a4, 0
	fld.d	$fa0, $a3, 0
	slli.d	$a5, $a5, 3
	fldx.d	$fa1, $a0, $a5
	fdiv.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $a2, 0
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 8
	addi.d	$a3, $a3, 8
	addi.d	$a4, $a4, 4
	bnez	$a1, .LBB1_36
	b	.LBB1_33
.LBB1_37:                               # %._crit_edge105
.Ltmp50:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN4Mesh13checkBadSidesEv)
	jirl	$ra, $ra, 0
.Ltmp51:                                # EH_LABEL
# %bb.38:
	ld.d	$a0, $sp, 32
	beqz	$a0, .LBB1_40
# %bb.39:
	ld.d	$a1, $sp, 48
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_40:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit
	ld.d	$a0, $sp, 56
	beqz	$a0, .LBB1_42
# %bb.41:
	ld.d	$a1, $sp, 72
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_42:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit53
	ld.d	$a0, $sp, 80
	beqz	$a0, .LBB1_44
# %bb.43:
	ld.d	$a1, $sp, 96
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_44:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit55
	ld.d	$a0, $sp, 104
	beqz	$a0, .LBB1_46
# %bb.45:
	ld.d	$a1, $sp, 120
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_46:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit57
	ld.d	$a0, $sp, 128
	beqz	$a0, .LBB1_48
# %bb.47:
	ld.d	$a1, $sp, 144
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_48:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit59
	ld.d	$a0, $sp, 152
	beqz	$a0, .LBB1_50
# %bb.49:
	ld.d	$a1, $sp, 168
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_50:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit61
	ld.d	$a0, $sp, 176
	beqz	$a0, .LBB1_52
# %bb.51:
	ld.d	$a1, $sp, 192
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_52:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit63
	ld.d	$a0, $sp, 200
	beqz	$a0, .LBB1_54
# %bb.53:
	ld.d	$a1, $sp, 216
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_54:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit65
	ld.d	$a0, $sp, 224
	beqz	$a0, .LBB1_56
# %bb.55:
	ld.d	$a1, $sp, 240
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_56:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit67
	ld.d	$a0, $sp, 248
	beqz	$a0, .LBB1_58
# %bb.57:
	ld.d	$a1, $sp, 264
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_58:                               # %_ZNSt6vectorI7double2SaIS0_EED2Ev.exit
	ld.d	$s5, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 320                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 328                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 336
	ret
.LBB1_59:
	ori	$a3, $zero, 4
	bne	$a2, $a3, .LBB1_3
# %bb.60:
	ld.w	$a1, $a1, 0
	st.w	$a1, $a0, 0
	b	.LBB1_3
.LBB1_61:
.Ltmp52:                                # EH_LABEL
	ld.d	$a2, $sp, 32
	move	$fp, $a0
	bnez	$a2, .LBB1_72
# %bb.62:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit70
	ld.d	$a0, $sp, 56
	bnez	$a0, .LBB1_73
.LBB1_63:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit72
	ld.d	$a0, $sp, 80
	bnez	$a0, .LBB1_74
.LBB1_64:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit74
	ld.d	$a0, $sp, 104
	bnez	$a0, .LBB1_75
.LBB1_65:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit76
	ld.d	$a0, $sp, 128
	bnez	$a0, .LBB1_76
.LBB1_66:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit78
	ld.d	$a0, $sp, 152
	bnez	$a0, .LBB1_77
.LBB1_67:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit80
	ld.d	$a0, $sp, 176
	bnez	$a0, .LBB1_78
.LBB1_68:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit82
	ld.d	$a0, $sp, 200
	bnez	$a0, .LBB1_79
.LBB1_69:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit84
	ld.d	$a0, $sp, 224
	bnez	$a0, .LBB1_80
.LBB1_70:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit86
	ld.d	$a0, $sp, 248
	bnez	$a0, .LBB1_81
.LBB1_71:                               # %_ZNSt6vectorI7double2SaIS0_EED2Ev.exit88
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB1_72:
	ld.d	$a0, $sp, 48
	sub.d	$a1, $a0, $a2
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 56
	beqz	$a0, .LBB1_63
.LBB1_73:
	ld.d	$a1, $sp, 72
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 80
	beqz	$a0, .LBB1_64
.LBB1_74:
	ld.d	$a1, $sp, 96
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104
	beqz	$a0, .LBB1_65
.LBB1_75:
	ld.d	$a1, $sp, 120
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128
	beqz	$a0, .LBB1_66
.LBB1_76:
	ld.d	$a1, $sp, 144
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 152
	beqz	$a0, .LBB1_67
.LBB1_77:
	ld.d	$a1, $sp, 168
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 176
	beqz	$a0, .LBB1_68
.LBB1_78:
	ld.d	$a1, $sp, 192
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 200
	beqz	$a0, .LBB1_69
.LBB1_79:
	ld.d	$a1, $sp, 216
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 224
	beqz	$a0, .LBB1_70
.LBB1_80:
	ld.d	$a1, $sp, 240
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 248
	beqz	$a0, .LBB1_71
.LBB1_81:
	ld.d	$a1, $sp, 264
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	_ZN4Mesh4initEv, .Lfunc_end1-_ZN4Mesh4initEv
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table1:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Ltmp40-.Lfunc_begin1          # >> Call Site 1 <<
	.uleb128 .Ltmp41-.Ltmp40                #   Call between .Ltmp40 and .Ltmp41
	.uleb128 .Ltmp52-.Lfunc_begin1          #     jumps to .Ltmp52
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp41-.Lfunc_begin1          # >> Call Site 2 <<
	.uleb128 .Ltmp42-.Ltmp41                #   Call between .Ltmp41 and .Ltmp42
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp42-.Lfunc_begin1          # >> Call Site 3 <<
	.uleb128 .Ltmp47-.Ltmp42                #   Call between .Ltmp42 and .Ltmp47
	.uleb128 .Ltmp52-.Lfunc_begin1          #     jumps to .Ltmp52
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp47-.Lfunc_begin1          # >> Call Site 4 <<
	.uleb128 .Ltmp48-.Ltmp47                #   Call between .Ltmp47 and .Ltmp48
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp48-.Lfunc_begin1          # >> Call Site 5 <<
	.uleb128 .Ltmp49-.Ltmp48                #   Call between .Ltmp48 and .Ltmp49
	.uleb128 .Ltmp52-.Lfunc_begin1          #     jumps to .Ltmp52
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp49-.Lfunc_begin1          # >> Call Site 6 <<
	.uleb128 .Ltmp50-.Ltmp49                #   Call between .Ltmp49 and .Ltmp50
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp50-.Lfunc_begin1          # >> Call Site 7 <<
	.uleb128 .Ltmp51-.Ltmp50                #   Call between .Ltmp50 and .Ltmp51
	.uleb128 .Ltmp52-.Lfunc_begin1          #     jumps to .Ltmp52
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp51-.Lfunc_begin1          # >> Call Site 8 <<
	.uleb128 .Lfunc_end1-.Ltmp51            #   Call between .Ltmp51 and .Lfunc_end1
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN4MeshD2Ev                    # -- Begin function _ZN4MeshD2Ev
	.p2align	5
	.type	_ZN4MeshD2Ev,@function
_ZN4MeshD2Ev:                           # @_ZN4MeshD2Ev
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
	ld.d	$s0, $a0, 0
	beqz	$s0, .LBB2_2
# %bb.1:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN7GenMeshD1Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 88
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB2_2:
	ld.d	$s0, $fp, 8
	beqz	$s0, .LBB2_4
# %bb.3:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN7WriteXYD1Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB2_4:
	ld.d	$s0, $fp, 16
	beqz	$s0, .LBB2_6
# %bb.5:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN10ExportGoldD1Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 192
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB2_6:
	ld.d	$a0, $fp, 592
	beqz	$a0, .LBB2_8
# %bb.7:
	ld.d	$a1, $fp, 608
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB2_8:                                # %_ZNSt6vectorIiSaIiEED2Ev.exit
	ld.d	$a0, $fp, 568
	beqz	$a0, .LBB2_10
# %bb.9:
	ld.d	$a1, $fp, 584
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB2_10:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit4
	ld.d	$a0, $fp, 536
	beqz	$a0, .LBB2_12
# %bb.11:
	ld.d	$a1, $fp, 552
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB2_12:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit6
	ld.d	$a0, $fp, 512
	beqz	$a0, .LBB2_14
# %bb.13:
	ld.d	$a1, $fp, 528
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB2_14:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit8
	ld.d	$a0, $fp, 480
	beqz	$a0, .LBB2_16
# %bb.15:
	ld.d	$a1, $fp, 496
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB2_16:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit10
	ld.d	$a0, $fp, 456
	beqz	$a0, .LBB2_18
# %bb.17:
	ld.d	$a1, $fp, 472
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB2_18:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit12
	ld.d	$a0, $fp, 432
	beqz	$a0, .LBB2_20
# %bb.19:
	ld.d	$a1, $fp, 448
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB2_20:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit14
	ld.d	$a0, $fp, 408
	beqz	$a0, .LBB2_22
# %bb.21:
	ld.d	$a1, $fp, 424
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB2_22:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit16
	ld.d	$a0, $fp, 32
	beqz	$a0, .LBB2_24
# %bb.23:
	ld.d	$a1, $fp, 48
	sub.d	$a1, $a1, $a0
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB2_24:                               # %_ZNSt6vectorIdSaIdEED2Ev.exit
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end2:
	.size	_ZN4MeshD2Ev, .Lfunc_end2-_ZN4MeshD2Ev
	.cfi_endproc
                                        # -- End function
	.globl	_ZN4Mesh9initSidesERKSt6vectorIiSaIiEES4_S4_ # -- Begin function _ZN4Mesh9initSidesERKSt6vectorIiSaIiEES4_S4_
	.p2align	5
	.type	_ZN4Mesh9initSidesERKSt6vectorIiSaIiEES4_S4_,@function
_ZN4Mesh9initSidesERKSt6vectorIiSaIiEES4_S4_: # @_ZN4Mesh9initSidesERKSt6vectorIiSaIiEES4_S4_
# %bb.0:
	addi.d	$sp, $sp, -128
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
	move	$s6, $a0
	ld.w	$a0, $a0, 72
	move	$s3, $a3
	move	$s4, $a2
	move	$s5, $a1
	slli.d	$s7, $a0, 2
	move	$a0, $s7
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$a0, $s6, 88
	move	$a0, $s7
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$a0, $s6, 96
	move	$a0, $s7
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	st.d	$a0, $s6, 104
	move	$a0, $s7
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	st.d	$a0, $s6, 120
	move	$a0, $s7
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s6, 68
	st.d	$a0, $s6, 128
	blez	$a1, .LBB3_10
# %bb.1:                                # %.lr.ph36
	move	$a2, $zero
	ld.d	$a3, $s5, 0
	ld.d	$a4, $s4, 0
	ld.d	$a5, $s3, 0
	addi.d	$a6, $s1, 4
	st.d	$a6, $sp, 32                    # 8-byte Folded Spill
	addi.d	$a6, $fp, 4
	st.d	$a6, $sp, 24                    # 8-byte Folded Spill
	addi.d	$a6, $s0, 4
	st.d	$a6, $sp, 16                    # 8-byte Folded Spill
	addi.d	$t1, $s2, 4
	addi.d	$t2, $a0, 4
	addi.d	$t3, $a5, 4
	ori	$a7, $zero, 2
	b	.LBB3_4
	.p2align	4, , 16
.LBB3_2:                                # %.peel.next.peel
                                        #   in Loop: Header=BB3_4 Depth=1
	add.d	$t8, $a6, $t5
	addi.d	$s3, $a6, 1
	xor	$t6, $s3, $t6
	slli.d	$t8, $t8, 2
	stx.w	$a2, $s1, $t8
	ldx.w	$s4, $a5, $t8
	sltui	$t6, $t6, 1
	masknez	$t6, $s3, $t6
	add.w	$t5, $t6, $t5
	stx.w	$s4, $fp, $t8
	slli.d	$t6, $t5, 2
	ldx.w	$t6, $a5, $t6
	add.d	$a6, $t7, $a6
	stx.w	$t6, $s0, $t8
	stx.w	$a6, $s2, $t8
	stx.w	$t5, $a0, $t8
.LBB3_3:                                # %._crit_edge
                                        #   in Loop: Header=BB3_4 Depth=1
	addi.d	$a2, $a2, 1
	beq	$a2, $a1, .LBB3_10
.LBB3_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_8 Depth 2
	slli.d	$a6, $a2, 2
	ldx.w	$t6, $a4, $a6
	blez	$t6, .LBB3_3
# %bb.5:                                # %.lr.ph
                                        #   in Loop: Header=BB3_4 Depth=1
	ldx.w	$t5, $a3, $a6
	slli.d	$t8, $t5, 2
	stx.w	$a2, $s1, $t8
	ldx.w	$a6, $a5, $t8
	addi.d	$t7, $t6, -1
	sltu	$t7, $zero, $t7
	add.w	$s3, $t5, $t7
	stx.w	$a6, $fp, $t8
	slli.d	$a6, $s3, 2
	ldx.w	$a6, $a5, $a6
	addi.d	$t7, $t5, -1
	add.d	$s4, $t7, $t6
	stx.w	$a6, $s0, $t8
	stx.w	$s4, $s2, $t8
	ori	$a6, $zero, 1
	stx.w	$s3, $a0, $t8
	beq	$t6, $a6, .LBB3_3
# %bb.6:                                # %.lr.ph
                                        #   in Loop: Header=BB3_4 Depth=1
	beq	$t6, $a7, .LBB3_2
# %bb.7:                                # %.peel.next.preheader.split
                                        #   in Loop: Header=BB3_4 Depth=1
	move	$s4, $zero
	ori	$s3, $zero, 2
	move	$s5, $t3
	move	$s6, $t2
	move	$s7, $t1
	ld.d	$s8, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 32                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB3_8:                                # %.peel.next
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xor	$t4, $t6, $s3
	sltui	$t4, $t4, 1
	stx.w	$a2, $a6, $t8
	ldx.w	$a7, $s5, $t8
	addi.d	$t0, $s4, 2
	masknez	$t0, $t0, $t4
	add.w	$t0, $t0, $t5
	stx.w	$a7, $ra, $t8
	slli.d	$a7, $t0, 2
	ldx.w	$a7, $a5, $a7
	add.d	$t4, $t5, $s4
	stx.w	$a7, $s8, $t8
	stx.w	$t4, $s7, $t8
	stx.w	$t0, $s6, $t8
	addi.d	$s3, $s3, 1
	addi.d	$s4, $s4, 1
	addi.d	$a6, $a6, 4
	addi.d	$ra, $ra, 4
	addi.d	$s8, $s8, 4
	addi.d	$s7, $s7, 4
	addi.d	$s6, $s6, 4
	addi.d	$s5, $s5, 4
	bne	$t6, $s3, .LBB3_8
# %bb.9:                                # %.peel.next.peel.loopexit
                                        #   in Loop: Header=BB3_4 Depth=1
	addi.d	$a6, $s3, -1
	ori	$a7, $zero, 2
	b	.LBB3_2
.LBB3_10:                               # %._crit_edge37
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
.Lfunc_end3:
	.size	_ZN4Mesh9initSidesERKSt6vectorIiSaIiEES4_S4_, .Lfunc_end3-_ZN4Mesh9initSidesERKSt6vectorIiSaIiEES4_S4_
                                        # -- End function
	.globl	_ZN4Mesh9initEdgesEv            # -- Begin function _ZN4Mesh9initEdgesEv
	.p2align	5
	.type	_ZN4Mesh9initEdgesEv,@function
_ZN4Mesh9initEdgesEv:                   # @_ZN4Mesh9initEdgesEv
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception2
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
	move	$s0, $a0
	ld.w	$a0, $a0, 60
	bltz	$a0, .LBB4_65
# %bb.1:                                # %_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
	beqz	$a0, .LBB4_4
# %bb.2:                                # %.lr.ph.preheader.i.i.i.i.i
	slli.d	$a1, $a0, 4
	alsl.d	$s2, $a0, $a1, 3
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	st.d	$a0, $sp, 80
	add.d	$fp, $a0, $s2
	move	$a1, $zero
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	st.d	$fp, $sp, 96
	st.d	$fp, $sp, 88
.Ltmp53:                                # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp54:                                # EH_LABEL
# %bb.3:                                # %.noexc37
	move	$fp, $a0
	st.d	$a0, $sp, 56
	add.d	$s1, $a0, $s2
	move	$a1, $zero
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	add.d	$a0, $fp, $s2
	b	.LBB4_5
.LBB4_4:                                # %_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EEC2EmRKS3_.exit.thread.i35
	move	$fp, $zero
	move	$s4, $zero
	move	$s1, $zero
	move	$a0, $zero
	st.d	$zero, $sp, 96
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 80
	st.d	$zero, $sp, 56
.LBB4_5:
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	ld.w	$fp, $s0, 72
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s1, $sp, 72
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	st.d	$a0, $sp, 64
	slli.d	$a0, $fp, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 112
	blez	$fp, .LBB4_47
# %bb.6:                                # %.lr.ph
	move	$s8, $zero
	move	$a7, $zero
	ori	$t0, $zero, 1
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	st.d	$s0, $sp, 32                    # 8-byte Folded Spill
	b	.LBB4_10
	.p2align	4, , 16
.LBB4_7:                                #   in Loop: Header=BB4_10 Depth=1
	st.w	$a7, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $fp, 8
.LBB4_8:                                # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit62
                                        #   in Loop: Header=BB4_10 Depth=1
	ld.d	$a0, $s0, 112
	addi.d	$a7, $a7, 1
.LBB4_9:                                #   in Loop: Header=BB4_10 Depth=1
	ld.d	$a1, $fp, 0
	slli.d	$a2, $s7, 2
	ldx.w	$a1, $a1, $a2
	stx.w	$a1, $a0, $s6
	ld.w	$a1, $s0, 72
	addi.d	$s8, $s8, 1
	bge	$s8, $a1, .LBB4_48
.LBB4_10:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_12 Depth 2
	ld.d	$a1, $s0, 96
	ld.d	$a2, $s0, 88
	slli.d	$s6, $s8, 2
	ldx.w	$a3, $a1, $s6
	ldx.w	$a4, $a2, $s6
	slt	$a5, $a3, $a4
	masknez	$a1, $a4, $a5
	maskeqz	$a2, $a3, $a5
	or	$a1, $a2, $a1
	slli.d	$a2, $a1, 4
	alsl.d	$a2, $a1, $a2, 3
	add.d	$s1, $s4, $a2
	ldx.d	$s3, $s4, $a2
	ld.d	$a1, $s1, 8
	masknez	$a3, $a3, $a5
	maskeqz	$a5, $a4, $a5
	sub.d	$s2, $a1, $s3
	srai.d	$a4, $s2, 4
	or	$s5, $a5, $a3
	move	$a5, $s2
	move	$a3, $s3
	blez	$a4, .LBB4_18
# %bb.11:                               # %.lr.ph.i.i.i51
                                        #   in Loop: Header=BB4_10 Depth=1
	move	$a3, $s2
	bstrins.d	$a3, $zero, 3, 0
	add.d	$a3, $s3, $a3
	addi.d	$a5, $a4, 1
	addi.d	$a4, $s3, 8
	.p2align	4, , 16
.LBB4_12:                               #   Parent Loop BB4_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a6, $a4, -8
	beq	$a6, $s5, .LBB4_25
# %bb.13:                               #   in Loop: Header=BB4_12 Depth=2
	ld.w	$a6, $a4, -4
	beq	$a6, $s5, .LBB4_26
# %bb.14:                               #   in Loop: Header=BB4_12 Depth=2
	ld.w	$a6, $a4, 0
	beq	$a6, $s5, .LBB4_30
# %bb.15:                               #   in Loop: Header=BB4_12 Depth=2
	ld.w	$a6, $a4, 4
	beq	$a6, $s5, .LBB4_27
# %bb.16:                               #   in Loop: Header=BB4_12 Depth=2
	addi.d	$a5, $a5, -1
	addi.d	$a4, $a4, 16
	blt	$t0, $a5, .LBB4_12
# %bb.17:                               # %._crit_edge.i.i.i.loopexit
                                        #   in Loop: Header=BB4_10 Depth=1
	sub.d	$a5, $a1, $a3
.LBB4_18:                               # %._crit_edge.i.i.i
                                        #   in Loop: Header=BB4_10 Depth=1
	srai.d	$a5, $a5, 2
	beq	$a5, $t0, .LBB4_29
# %bb.19:                               # %._crit_edge.i.i.i
                                        #   in Loop: Header=BB4_10 Depth=1
	ori	$a4, $zero, 2
	beq	$a5, $a4, .LBB4_23
# %bb.20:                               # %._crit_edge.i.i.i
                                        #   in Loop: Header=BB4_10 Depth=1
	move	$a4, $a1
	ori	$a6, $zero, 3
	bne	$a5, $a6, .LBB4_30
# %bb.21:                               #   in Loop: Header=BB4_10 Depth=1
	ld.w	$a4, $a3, 0
	beq	$a4, $s5, .LBB4_24
# %bb.22:                               #   in Loop: Header=BB4_10 Depth=1
	addi.d	$a3, $a3, 4
.LBB4_23:                               # %._crit_edge._crit_edge.i.i.i
                                        #   in Loop: Header=BB4_10 Depth=1
	ld.w	$a4, $a3, 0
	bne	$a4, $s5, .LBB4_28
.LBB4_24:                               #   in Loop: Header=BB4_10 Depth=1
	move	$a4, $a3
	b	.LBB4_30
.LBB4_25:                               # %.loopexit.loopexit
                                        #   in Loop: Header=BB4_10 Depth=1
	addi.d	$a4, $a4, -8
	b	.LBB4_30
.LBB4_26:                               # %.loopexit.loopexit.split.loop.exit118
                                        #   in Loop: Header=BB4_10 Depth=1
	addi.d	$a4, $a4, -4
	b	.LBB4_30
.LBB4_27:                               # %.loopexit.loopexit.split.loop.exit
                                        #   in Loop: Header=BB4_10 Depth=1
	addi.d	$a4, $a4, 4
	b	.LBB4_30
.LBB4_28:                               #   in Loop: Header=BB4_10 Depth=1
	addi.d	$a3, $a3, 4
.LBB4_29:                               # %._crit_edge._crit_edge58.i.i.i
                                        #   in Loop: Header=BB4_10 Depth=1
	ld.w	$a4, $a3, 0
	xor	$a4, $a4, $s5
	sltui	$a4, $a4, 1
	masknez	$a5, $a1, $a4
	maskeqz	$a3, $a3, $a4
	or	$a4, $a3, $a5
.LBB4_30:                               # %.loopexit
                                        #   in Loop: Header=BB4_10 Depth=1
	sub.d	$a3, $a4, $s3
	slli.d	$a3, $a3, 30
	srai.d	$s7, $a3, 32
	srai.d	$a3, $s2, 2
	ld.d	$a4, $sp, 48                    # 8-byte Folded Reload
	add.d	$fp, $a4, $a2
	bne	$s7, $a3, .LBB4_9
# %bb.31:                               #   in Loop: Header=BB4_10 Depth=1
	ld.d	$a0, $s1, 16
	beq	$a1, $a0, .LBB4_33
# %bb.32:                               #   in Loop: Header=BB4_10 Depth=1
	st.w	$s5, $a1, 0
	addi.d	$a0, $a1, 4
	st.d	$a0, $s1, 8
	ld.d	$a0, $fp, 8
	ld.d	$a1, $fp, 16
	bne	$a0, $a1, .LBB4_7
	b	.LBB4_40
.LBB4_33:                               #   in Loop: Header=BB4_10 Depth=1
	st.d	$a7, $sp, 24                    # 8-byte Folded Spill
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s2, $a0, .LBB4_63
# %bb.34:                               # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i
                                        #   in Loop: Header=BB4_10 Depth=1
	sltu	$a0, $t0, $s7
	masknez	$a1, $t0, $a0
	maskeqz	$a0, $s7, $a0
	or	$a0, $a0, $a1
	add.d	$a1, $a0, $s7
	sltu	$a0, $a1, $a0
	addi.w	$a2, $zero, -1
	lu52i.d	$a2, $a2, 511
	sltu	$a3, $a1, $a2
	maskeqz	$a1, $a1, $a3
	masknez	$a3, $a2, $a3
	or	$a1, $a1, $a3
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $a2, $a0
	or	$s0, $a0, $a1
	slli.d	$a0, $s0, 2
.Ltmp56:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp57:                                # EH_LABEL
# %bb.35:                               # %.noexc53
                                        #   in Loop: Header=BB4_10 Depth=1
	move	$s4, $a0
	stx.w	$s5, $a0, $s2
	blez	$s2, .LBB4_37
# %bb.36:                               #   in Loop: Header=BB4_10 Depth=1
	move	$a0, $s4
	move	$a1, $s3
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_37:                               # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i
                                        #   in Loop: Header=BB4_10 Depth=1
	beqz	$s3, .LBB4_39
# %bb.38:                               #   in Loop: Header=BB4_10 Depth=1
	move	$a0, $s3
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_39:                               # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i
                                        #   in Loop: Header=BB4_10 Depth=1
	add.d	$a0, $s4, $s2
	addi.d	$a0, $a0, 4
	st.d	$s4, $s1, 0
	st.d	$a0, $s1, 8
	alsl.d	$a0, $s0, $s4, 2
	st.d	$a0, $s1, 16
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a7, $sp, 24                    # 8-byte Folded Reload
	ori	$t0, $zero, 1
	ld.d	$a0, $fp, 8
	ld.d	$a1, $fp, 16
	bne	$a0, $a1, .LBB4_7
.LBB4_40:                               #   in Loop: Header=BB4_10 Depth=1
	ld.d	$s3, $fp, 0
	sub.d	$s2, $a0, $s3
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s2, $a0, .LBB4_63
# %bb.41:                               # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i55
                                        #   in Loop: Header=BB4_10 Depth=1
	move	$s1, $a7
	srai.d	$a0, $s2, 2
	sltu	$a1, $t0, $a0
	masknez	$a2, $t0, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	addi.w	$a2, $zero, -1
	lu52i.d	$a2, $a2, 511
	sltu	$a3, $a0, $a2
	maskeqz	$a0, $a0, $a3
	masknez	$a3, $a2, $a3
	or	$a0, $a0, $a3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$s0, $a1, $a0
	slli.d	$a0, $s0, 2
.Ltmp58:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp59:                                # EH_LABEL
# %bb.42:                               # %.noexc61
                                        #   in Loop: Header=BB4_10 Depth=1
	move	$s4, $a0
	move	$a7, $s1
	stx.w	$s1, $a0, $s2
	blez	$s2, .LBB4_44
# %bb.43:                               #   in Loop: Header=BB4_10 Depth=1
	move	$a0, $s4
	move	$a1, $s3
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a7, $s1
.LBB4_44:                               # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i57
                                        #   in Loop: Header=BB4_10 Depth=1
	beqz	$s3, .LBB4_46
# %bb.45:                               #   in Loop: Header=BB4_10 Depth=1
	move	$a0, $s3
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a7, $s1
.LBB4_46:                               # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i59
                                        #   in Loop: Header=BB4_10 Depth=1
	add.d	$a0, $s4, $s2
	addi.d	$a0, $a0, 4
	st.d	$s4, $fp, 0
	st.d	$a0, $fp, 8
	alsl.d	$a0, $s0, $s4, 2
	st.d	$a0, $fp, 16
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	ori	$t0, $zero, 1
	b	.LBB4_8
.LBB4_47:
	move	$a7, $zero
.LBB4_48:                               # %._crit_edge
	st.w	$a7, $s0, 64
	ld.d	$s0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	beq	$s0, $s2, .LBB4_53
# %bb.49:                               # %.lr.ph.i.i.i.preheader
	move	$fp, $s0
	b	.LBB4_51
	.p2align	4, , 16
.LBB4_50:                               # %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i
                                        #   in Loop: Header=BB4_51 Depth=1
	addi.d	$fp, $fp, 24
	beq	$fp, $s2, .LBB4_53
.LBB4_51:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 0
	beqz	$a0, .LBB4_50
# %bb.52:                               #   in Loop: Header=BB4_51 Depth=1
	ld.d	$a1, $fp, 16
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB4_50
.LBB4_53:                               # %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i
	beqz	$s0, .LBB4_55
# %bb.54:
	sub.d	$a1, $s1, $s0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_55:                               # %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit
	ld.d	$fp, $sp, 88
	beq	$s4, $fp, .LBB4_60
# %bb.56:                               # %.lr.ph.i.i.i40.preheader
	move	$s0, $s4
	b	.LBB4_58
	.p2align	4, , 16
.LBB4_57:                               # %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i43
                                        #   in Loop: Header=BB4_58 Depth=1
	addi.d	$s0, $s0, 24
	beq	$s0, $fp, .LBB4_60
.LBB4_58:                               # %.lr.ph.i.i.i40
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	beqz	$a0, .LBB4_57
# %bb.59:                               #   in Loop: Header=BB4_58 Depth=1
	ld.d	$a1, $s0, 16
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB4_57
.LBB4_60:                               # %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i47
	beqz	$s4, .LBB4_62
# %bb.61:
	ld.d	$a0, $sp, 96
	sub.d	$a1, $a0, $s4
	move	$a0, $s4
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
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB4_62:                               # %_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev.exit49
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
.LBB4_63:                               # %.invoke
.Ltmp61:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a0, $a0, %pc_lo12(.L.str.24)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp62:                                # EH_LABEL
# %bb.64:                               # %.cont
.LBB4_65:                               # %.noexc
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.LBB4_66:
.Ltmp55:                                # EH_LABEL
	move	$fp, $a0
	addi.d	$a0, $sp, 80
	pcaddu18i	$ra, %call36(_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB4_67:                               # %.loopexit79
.Ltmp60:                                # EH_LABEL
	b	.LBB4_69
.LBB4_68:                               # %.loopexit.split-lp
.Ltmp63:                                # EH_LABEL
.LBB4_69:
	move	$fp, $a0
	addi.d	$a0, $sp, 56
	pcaddu18i	$ra, %call36(_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 80
	pcaddu18i	$ra, %call36(_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end4:
	.size	_ZN4Mesh9initEdgesEv, .Lfunc_end4-_ZN4Mesh9initEdgesEv
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
	.uleb128 .Ltmp53-.Lfunc_begin2          #   Call between .Lfunc_begin2 and .Ltmp53
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp53-.Lfunc_begin2          # >> Call Site 2 <<
	.uleb128 .Ltmp54-.Ltmp53                #   Call between .Ltmp53 and .Ltmp54
	.uleb128 .Ltmp55-.Lfunc_begin2          #     jumps to .Ltmp55
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp54-.Lfunc_begin2          # >> Call Site 3 <<
	.uleb128 .Ltmp56-.Ltmp54                #   Call between .Ltmp54 and .Ltmp56
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp56-.Lfunc_begin2          # >> Call Site 4 <<
	.uleb128 .Ltmp57-.Ltmp56                #   Call between .Ltmp56 and .Ltmp57
	.uleb128 .Ltmp60-.Lfunc_begin2          #     jumps to .Ltmp60
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp57-.Lfunc_begin2          # >> Call Site 5 <<
	.uleb128 .Ltmp58-.Ltmp57                #   Call between .Ltmp57 and .Ltmp58
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp58-.Lfunc_begin2          # >> Call Site 6 <<
	.uleb128 .Ltmp59-.Ltmp58                #   Call between .Ltmp58 and .Ltmp59
	.uleb128 .Ltmp60-.Lfunc_begin2          #     jumps to .Ltmp60
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp59-.Lfunc_begin2          # >> Call Site 7 <<
	.uleb128 .Ltmp61-.Ltmp59                #   Call between .Ltmp59 and .Ltmp61
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp61-.Lfunc_begin2          # >> Call Site 8 <<
	.uleb128 .Ltmp62-.Ltmp61                #   Call between .Ltmp61 and .Ltmp62
	.uleb128 .Ltmp63-.Lfunc_begin2          #     jumps to .Ltmp63
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp62-.Lfunc_begin2          # >> Call Site 9 <<
	.uleb128 .Lfunc_end4-.Ltmp62            #   Call between .Ltmp62 and .Lfunc_end4
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN4Mesh10initChunksEv          # -- Begin function _ZN4Mesh10initChunksEv
	.p2align	5
	.type	_ZN4Mesh10initChunksEv,@function
_ZN4Mesh10initChunksEv:                 # @_ZN4Mesh10initChunksEv
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
	move	$fp, $a0
	ld.w	$a0, $a0, 24
	beqz	$a0, .LBB5_2
# %bb.1:                                # %._crit_edge97
	ld.w	$a0, $fp, 72
	addi.w	$a1, $zero, -4
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	bgtz	$a0, .LBB5_3
	b	.LBB5_39
.LBB5_2:
	ld.w	$a1, $fp, 60
	ld.w	$a0, $fp, 72
	slt	$a2, $a0, $a1
	masknez	$a3, $a0, $a2
	maskeqz	$a1, $a1, $a2
	or	$a1, $a1, $a3
	st.w	$a1, $fp, 24
	addi.w	$a1, $zero, -4
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	blez	$a0, .LBB5_39
.LBB5_3:                                # %.lr.ph88
	move	$s8, $zero
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	lu52i.d	$s4, $a1, 2047
	ori	$s5, $zero, 1
	addi.w	$a1, $zero, -1
	lu52i.d	$s6, $a1, 511
	b	.LBB5_5
	.p2align	4, , 16
.LBB5_4:                                #   in Loop: Header=BB5_5 Depth=1
	st.w	$s8, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $fp, 488
	ld.w	$a0, $fp, 72
	move	$s8, $s7
	bge	$s7, $a0, .LBB5_39
.LBB5_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_7 Depth 2
	ld.w	$a1, $fp, 24
	add.w	$a2, $a1, $s8
	bge	$a2, $a0, .LBB5_11
# %bb.6:                                # %.lr.ph
                                        #   in Loop: Header=BB5_5 Depth=1
	ld.d	$a2, $fp, 104
	add.d	$a1, $s8, $a1
	slt	$a3, $a1, $a0
	maskeqz	$a1, $a1, $a3
	masknez	$a0, $a0, $a3
	or	$a0, $a1, $a0
	addi.d	$s7, $a0, 1
	alsl.d	$a0, $a0, $a2, 2
	.p2align	4, , 16
.LBB5_7:                                #   Parent Loop BB5_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a1, $a0, 0
	ld.w	$a2, $a0, -4
	addi.d	$a0, $a0, -4
	addi.w	$s7, $s7, -1
	beq	$a1, $a2, .LBB5_7
# %bb.8:                                # %.critedge
                                        #   in Loop: Header=BB5_5 Depth=1
	ld.d	$a0, $fp, 416
	ld.d	$a1, $fp, 424
	beq	$a0, $a1, .LBB5_12
.LBB5_9:                                #   in Loop: Header=BB5_5 Depth=1
	st.w	$s8, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $fp, 416
	ld.d	$a0, $fp, 440
	ld.d	$a1, $fp, 448
	beq	$a0, $a1, .LBB5_18
.LBB5_10:                               #   in Loop: Header=BB5_5 Depth=1
	st.w	$s7, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $fp, 440
	b	.LBB5_24
	.p2align	4, , 16
.LBB5_11:                               #   in Loop: Header=BB5_5 Depth=1
	slt	$a1, $a0, $a2
	masknez	$a2, $a2, $a1
	maskeqz	$a0, $a0, $a1
	or	$s7, $a0, $a2
	ld.d	$a0, $fp, 416
	ld.d	$a1, $fp, 424
	bne	$a0, $a1, .LBB5_9
.LBB5_12:                               #   in Loop: Header=BB5_5 Depth=1
	ld.d	$s1, $fp, 408
	sub.d	$s0, $a0, $s1
	beq	$s0, $s4, .LBB5_76
# %bb.13:                               # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i
                                        #   in Loop: Header=BB5_5 Depth=1
	srai.d	$a0, $s0, 2
	sltu	$a1, $s5, $a0
	masknez	$a2, $s5, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	sltu	$a2, $a0, $s6
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $s6, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s6, $a1
	or	$s3, $a1, $a0
	slli.d	$a0, $s3, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	stx.w	$s8, $a0, $s0
	blez	$s0, .LBB5_15
# %bb.14:                               #   in Loop: Header=BB5_5 Depth=1
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_15:                               # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i
                                        #   in Loop: Header=BB5_5 Depth=1
	beqz	$s1, .LBB5_17
# %bb.16:                               #   in Loop: Header=BB5_5 Depth=1
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_17:                               # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i
                                        #   in Loop: Header=BB5_5 Depth=1
	add.d	$a0, $s2, $s0
	addi.d	$a0, $a0, 4
	st.d	$s2, $fp, 408
	st.d	$a0, $fp, 416
	alsl.d	$a0, $s3, $s2, 2
	st.d	$a0, $fp, 424
	ld.d	$a0, $fp, 440
	ld.d	$a1, $fp, 448
	bne	$a0, $a1, .LBB5_10
.LBB5_18:                               #   in Loop: Header=BB5_5 Depth=1
	ld.d	$s1, $fp, 432
	sub.d	$s0, $a0, $s1
	beq	$s0, $s4, .LBB5_76
# %bb.19:                               # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i6
                                        #   in Loop: Header=BB5_5 Depth=1
	srai.d	$a0, $s0, 2
	sltu	$a1, $s5, $a0
	masknez	$a2, $s5, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	sltu	$a2, $a0, $s6
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $s6, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s6, $a1
	or	$s3, $a1, $a0
	slli.d	$a0, $s3, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	stx.w	$s7, $a0, $s0
	blez	$s0, .LBB5_21
# %bb.20:                               #   in Loop: Header=BB5_5 Depth=1
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_21:                               # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i8
                                        #   in Loop: Header=BB5_5 Depth=1
	beqz	$s1, .LBB5_23
# %bb.22:                               #   in Loop: Header=BB5_5 Depth=1
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_23:                               # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i10
                                        #   in Loop: Header=BB5_5 Depth=1
	add.d	$a0, $s2, $s0
	addi.d	$a0, $a0, 4
	st.d	$s2, $fp, 432
	st.d	$a0, $fp, 440
	alsl.d	$a0, $s3, $s2, 2
	st.d	$a0, $fp, 448
.LBB5_24:                               # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit11
                                        #   in Loop: Header=BB5_5 Depth=1
	ld.d	$s3, $fp, 104
	ld.d	$a0, $fp, 464
	ld.d	$a1, $fp, 472
	alsl.d	$s2, $s8, $s3, 2
	beq	$a0, $a1, .LBB5_26
# %bb.25:                               #   in Loop: Header=BB5_5 Depth=1
	ld.w	$a1, $s2, 0
	st.w	$a1, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $fp, 464
	b	.LBB5_32
	.p2align	4, , 16
.LBB5_26:                               #   in Loop: Header=BB5_5 Depth=1
	ld.d	$s1, $fp, 456
	sub.d	$s0, $a0, $s1
	beq	$s0, $s4, .LBB5_76
# %bb.27:                               # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i13
                                        #   in Loop: Header=BB5_5 Depth=1
	srai.d	$a0, $s0, 2
	sltu	$a1, $s5, $a0
	masknez	$a2, $s5, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	sltu	$a2, $a0, $s6
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $s6, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s6, $a1
	or	$s8, $a1, $a0
	slli.d	$a0, $s8, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 0
	move	$s2, $a0
	stx.w	$a1, $a0, $s0
	blez	$s0, .LBB5_29
# %bb.28:                               #   in Loop: Header=BB5_5 Depth=1
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_29:                               # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i15
                                        #   in Loop: Header=BB5_5 Depth=1
	beqz	$s1, .LBB5_31
# %bb.30:                               #   in Loop: Header=BB5_5 Depth=1
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$s3, $fp, 104
.LBB5_31:                               # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i17
                                        #   in Loop: Header=BB5_5 Depth=1
	add.d	$a0, $s2, $s0
	addi.d	$a0, $a0, 4
	st.d	$s2, $fp, 456
	st.d	$a0, $fp, 464
	alsl.d	$a0, $s8, $s2, 2
	st.d	$a0, $fp, 472
.LBB5_32:                               # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit18
                                        #   in Loop: Header=BB5_5 Depth=1
	alsl.d	$a0, $s7, $s3, 2
	ld.w	$a1, $a0, -4
	ld.d	$a0, $fp, 488
	ld.d	$a2, $fp, 496
	addi.d	$s8, $a1, 1
	bne	$a0, $a2, .LBB5_4
# %bb.33:                               #   in Loop: Header=BB5_5 Depth=1
	ld.d	$s1, $fp, 480
	sub.d	$s0, $a0, $s1
	beq	$s0, $s4, .LBB5_76
# %bb.34:                               # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i
                                        #   in Loop: Header=BB5_5 Depth=1
	srai.d	$a0, $s0, 2
	sltu	$a1, $s5, $a0
	masknez	$a2, $s5, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	sltu	$a2, $a0, $s6
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $s6, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s6, $a1
	or	$s3, $a1, $a0
	slli.d	$a0, $s3, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	stx.w	$s8, $a0, $s0
	blez	$s0, .LBB5_36
# %bb.35:                               #   in Loop: Header=BB5_5 Depth=1
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_36:                               # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i
                                        #   in Loop: Header=BB5_5 Depth=1
	beqz	$s1, .LBB5_38
# %bb.37:                               #   in Loop: Header=BB5_5 Depth=1
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_38:                               # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i
                                        #   in Loop: Header=BB5_5 Depth=1
	add.d	$a0, $s2, $s0
	addi.d	$a0, $a0, 4
	st.d	$s2, $fp, 480
	st.d	$a0, $fp, 488
	alsl.d	$a0, $s3, $s2, 2
	st.d	$a0, $fp, 496
	ld.w	$a0, $fp, 72
	move	$s8, $s7
	blt	$s7, $a0, .LBB5_5
.LBB5_39:                               # %._crit_edge
	ld.d	$a0, $fp, 416
	ld.d	$a1, $fp, 408
	ld.w	$s8, $fp, 60
	sub.d	$a0, $a0, $a1
	srli.d	$a0, $a0, 2
	st.w	$a0, $fp, 400
	blez	$s8, .LBB5_57
# %bb.40:                               # %.lr.ph91
	move	$s7, $zero
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	lu52i.d	$s4, $a0, 2047
	ori	$s5, $zero, 1
	addi.w	$a0, $zero, -1
	lu52i.d	$s6, $a0, 511
	b	.LBB5_42
	.p2align	4, , 16
.LBB5_41:                               #   in Loop: Header=BB5_42 Depth=1
	st.w	$s7, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $fp, 544
	ld.w	$s8, $fp, 60
	bge	$s7, $s8, .LBB5_57
.LBB5_42:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 520
	ld.d	$a1, $fp, 528
	ld.w	$s3, $fp, 24
	beq	$a0, $a1, .LBB5_44
# %bb.43:                               #   in Loop: Header=BB5_42 Depth=1
	st.w	$s7, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $fp, 520
	b	.LBB5_50
	.p2align	4, , 16
.LBB5_44:                               #   in Loop: Header=BB5_42 Depth=1
	ld.d	$s1, $fp, 512
	sub.d	$s0, $a0, $s1
	beq	$s0, $s4, .LBB5_76
# %bb.45:                               # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i21
                                        #   in Loop: Header=BB5_42 Depth=1
	srai.d	$a0, $s0, 2
	sltu	$a1, $s5, $a0
	masknez	$a2, $s5, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	sltu	$a2, $a0, $s6
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $s6, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s6, $a1
	or	$s5, $a1, $a0
	slli.d	$a0, $s5, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	stx.w	$s7, $a0, $s0
	blez	$s0, .LBB5_47
# %bb.46:                               #   in Loop: Header=BB5_42 Depth=1
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_47:                               # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i23
                                        #   in Loop: Header=BB5_42 Depth=1
	beqz	$s1, .LBB5_49
# %bb.48:                               #   in Loop: Header=BB5_42 Depth=1
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_49:                               # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i25
                                        #   in Loop: Header=BB5_42 Depth=1
	add.d	$a0, $s2, $s0
	addi.d	$a0, $a0, 4
	st.d	$s2, $fp, 512
	st.d	$a0, $fp, 520
	alsl.d	$a0, $s5, $s2, 2
	st.d	$a0, $fp, 528
	ori	$s5, $zero, 1
.LBB5_50:                               # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit26
                                        #   in Loop: Header=BB5_42 Depth=1
	add.w	$a1, $s3, $s7
	ld.d	$a0, $fp, 544
	ld.d	$a2, $fp, 552
	slt	$a3, $s8, $a1
	masknez	$a1, $a1, $a3
	maskeqz	$a3, $s8, $a3
	or	$s7, $a3, $a1
	bne	$a0, $a2, .LBB5_41
# %bb.51:                               #   in Loop: Header=BB5_42 Depth=1
	ld.d	$s1, $fp, 536
	sub.d	$s0, $a0, $s1
	beq	$s0, $s4, .LBB5_76
# %bb.52:                               # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i28
                                        #   in Loop: Header=BB5_42 Depth=1
	srai.d	$a0, $s0, 2
	sltu	$a1, $s5, $a0
	masknez	$a2, $s5, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	sltu	$a2, $a0, $s6
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $s6, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s6, $a1
	or	$s3, $a1, $a0
	slli.d	$a0, $s3, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	stx.w	$s7, $a0, $s0
	blez	$s0, .LBB5_54
# %bb.53:                               #   in Loop: Header=BB5_42 Depth=1
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_54:                               # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i30
                                        #   in Loop: Header=BB5_42 Depth=1
	beqz	$s1, .LBB5_56
# %bb.55:                               #   in Loop: Header=BB5_42 Depth=1
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_56:                               # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i32
                                        #   in Loop: Header=BB5_42 Depth=1
	add.d	$a0, $s2, $s0
	addi.d	$a0, $a0, 4
	st.d	$s2, $fp, 536
	st.d	$a0, $fp, 544
	alsl.d	$a0, $s3, $s2, 2
	st.d	$a0, $fp, 552
	ld.w	$s8, $fp, 60
	blt	$s7, $s8, .LBB5_42
.LBB5_57:                               # %._crit_edge92
	ld.d	$a0, $fp, 520
	ld.d	$a1, $fp, 512
	ld.w	$s7, $fp, 68
	sub.d	$a0, $a0, $a1
	srli.d	$a0, $a0, 2
	st.w	$a0, $fp, 504
	blez	$s7, .LBB5_75
# %bb.58:                               # %.lr.ph95
	move	$s6, $zero
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	lu52i.d	$s3, $a0, 2047
	addi.w	$a0, $zero, -1
	lu52i.d	$s5, $a0, 511
	b	.LBB5_60
	.p2align	4, , 16
.LBB5_59:                               #   in Loop: Header=BB5_60 Depth=1
	st.w	$s6, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $fp, 600
	ld.w	$s7, $fp, 68
	bge	$s6, $s7, .LBB5_75
.LBB5_60:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 576
	ld.d	$a1, $fp, 584
	ld.w	$s8, $fp, 24
	beq	$a0, $a1, .LBB5_62
# %bb.61:                               #   in Loop: Header=BB5_60 Depth=1
	st.w	$s6, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $fp, 576
	b	.LBB5_68
	.p2align	4, , 16
.LBB5_62:                               #   in Loop: Header=BB5_60 Depth=1
	ld.d	$s1, $fp, 568
	sub.d	$s0, $a0, $s1
	beq	$s0, $s3, .LBB5_76
# %bb.63:                               # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i36
                                        #   in Loop: Header=BB5_60 Depth=1
	srai.d	$a0, $s0, 2
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	sltu	$a2, $a0, $s5
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $s5, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s5, $a1
	or	$s4, $a1, $a0
	slli.d	$a0, $s4, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	stx.w	$s6, $a0, $s0
	blez	$s0, .LBB5_65
# %bb.64:                               #   in Loop: Header=BB5_60 Depth=1
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_65:                               # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i38
                                        #   in Loop: Header=BB5_60 Depth=1
	beqz	$s1, .LBB5_67
# %bb.66:                               #   in Loop: Header=BB5_60 Depth=1
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_67:                               # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i40
                                        #   in Loop: Header=BB5_60 Depth=1
	add.d	$a0, $s2, $s0
	addi.d	$a0, $a0, 4
	st.d	$s2, $fp, 568
	st.d	$a0, $fp, 576
	alsl.d	$a0, $s4, $s2, 2
	st.d	$a0, $fp, 584
.LBB5_68:                               # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit41
                                        #   in Loop: Header=BB5_60 Depth=1
	add.w	$a1, $s8, $s6
	ld.d	$a0, $fp, 600
	ld.d	$a2, $fp, 608
	slt	$a3, $s7, $a1
	masknez	$a1, $a1, $a3
	maskeqz	$a3, $s7, $a3
	or	$s6, $a3, $a1
	bne	$a0, $a2, .LBB5_59
# %bb.69:                               #   in Loop: Header=BB5_60 Depth=1
	ld.d	$s1, $fp, 592
	sub.d	$s0, $a0, $s1
	beq	$s0, $s3, .LBB5_76
# %bb.70:                               # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i43
                                        #   in Loop: Header=BB5_60 Depth=1
	srai.d	$a0, $s0, 2
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	sltu	$a2, $a0, $s5
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $s5, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s5, $a1
	or	$s4, $a1, $a0
	slli.d	$a0, $s4, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	stx.w	$s6, $a0, $s0
	blez	$s0, .LBB5_72
# %bb.71:                               #   in Loop: Header=BB5_60 Depth=1
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_72:                               # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i45
                                        #   in Loop: Header=BB5_60 Depth=1
	beqz	$s1, .LBB5_74
# %bb.73:                               #   in Loop: Header=BB5_60 Depth=1
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_74:                               # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i47
                                        #   in Loop: Header=BB5_60 Depth=1
	add.d	$a0, $s2, $s0
	addi.d	$a0, $a0, 4
	st.d	$s2, $fp, 592
	st.d	$a0, $fp, 600
	alsl.d	$a0, $s4, $s2, 2
	st.d	$a0, $fp, 608
	ld.w	$s7, $fp, 68
	blt	$s6, $s7, .LBB5_60
.LBB5_75:                               # %._crit_edge96
	ld.d	$a0, $fp, 576
	ld.d	$a1, $fp, 568
	sub.d	$a0, $a0, $a1
	srli.d	$a0, $a0, 2
	st.w	$a0, $fp, 560
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
.LBB5_76:
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a0, $a0, %pc_lo12(.L.str.24)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Lfunc_end5:
	.size	_ZN4Mesh10initChunksEv, .Lfunc_end5-_ZN4Mesh10initChunksEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZN4Mesh10initInvMapEv          # -- Begin function _ZN4Mesh10initInvMapEv
	.p2align	5
	.type	_ZN4Mesh10initInvMapEv,@function
_ZN4Mesh10initInvMapEv:                 # @_ZN4Mesh10initInvMapEv
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception3
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
	move	$fp, $a0
	ld.w	$a0, $a0, 60
	slli.d	$a0, $a0, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.w	$s2, $fp, 72
	st.d	$a0, $fp, 136
	slli.d	$a0, $s2, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 144
	bltz	$s2, .LBB6_32
# %bb.1:                                # %_ZNSt6vectorISt4pairIiiESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
	beqz	$s2, .LBB6_3
# %bb.2:                                # %.lr.ph.preheader.i.i.i.i.i
	slli.d	$s1, $s2, 3
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	alsl.d	$s2, $s2, $a0, 3
	move	$a1, $zero
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$s1, $s2
	ld.w	$a0, $fp, 76
	bgtz	$a0, .LBB6_4
	b	.LBB6_10
.LBB6_3:
	move	$s0, $zero
	move	$s2, $zero
	move	$s1, $zero
	ld.w	$a0, $fp, 76
	blez	$a0, .LBB6_10
.LBB6_4:                                # %.lr.ph
	ld.d	$a2, $fp, 88
	ori	$a1, $zero, 24
	bltu	$a0, $a1, .LBB6_7
# %bb.5:                                # %vector.memcheck
	alsl.d	$a1, $a0, $a2, 2
	bgeu	$s0, $a1, .LBB6_28
# %bb.6:                                # %vector.memcheck
	alsl.d	$a1, $a0, $s0, 3
	bgeu	$a2, $a1, .LBB6_28
.LBB6_7:
	move	$a1, $zero
.LBB6_8:                                # %scalar.ph.preheader
	alsl.d	$a3, $a1, $s0, 3
	addi.d	$a3, $a3, 4
	alsl.d	$a2, $a1, $a2, 2
	sub.d	$a4, $a0, $a1
	.p2align	4, , 16
.LBB6_9:                                # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a2, 0
	st.w	$a5, $a3, -4
	st.w	$a1, $a3, 0
	addi.d	$a1, $a1, 1
	addi.d	$a3, $a3, 8
	addi.d	$a4, $a4, -1
	addi.d	$a2, $a2, 4
	bnez	$a4, .LBB6_9
.LBB6_10:                               # %._crit_edge
	beq	$s1, $s0, .LBB6_14
# %bb.11:
	sub.d	$a0, $s1, $s0
	srai.d	$a0, $a0, 3
	clz.d	$a0, $a0
	slli.d	$a0, $a0, 1
	xori	$a2, $a0, 126
.Ltmp64:                                # EH_LABEL
	move	$a0, $s0
	move	$a1, $s1
	move	$a3, $zero
	pcaddu18i	$ra, %call36(_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_)
	jirl	$ra, $ra, 0
.Ltmp65:                                # EH_LABEL
# %bb.12:                               # %.noexc32
.Ltmp66:                                # EH_LABEL
	move	$a0, $s0
	move	$a1, $s1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_)
	jirl	$ra, $ra, 0
.Ltmp67:                                # EH_LABEL
# %bb.13:                               # %.noexc32._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit_crit_edge
	ld.w	$a0, $fp, 76
.LBB6_14:                               # %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit
	blez	$a0, .LBB6_26
# %bb.15:
	ld.d	$a0, $fp, 136
	ld.w	$a4, $s0, 0
	ld.w	$a3, $s0, 4
	ld.d	$a1, $fp, 144
	slli.d	$a2, $a4, 2
	stx.w	$a3, $a0, $a2
	slli.d	$a5, $a3, 2
	addi.w	$a2, $zero, -1
	lu32i.d	$a2, 0
	stx.w	$a2, $a1, $a5
	ld.w	$a5, $fp, 76
	ori	$a6, $zero, 1
	beq	$a5, $a6, .LBB6_27
# %bb.16:
	ld.w	$a6, $s0, 8
	bne	$a4, $a6, .LBB6_18
# %bb.17:
	ld.w	$a4, $s0, 12
	alsl.d	$a3, $a3, $a1, 2
	st.w	$a4, $a3, 0
	ld.w	$a5, $fp, 76
.LBB6_18:
	ori	$a3, $zero, 2
	blt	$a5, $a3, .LBB6_27
# %bb.19:                               # %.peel.next.preheader
	addi.d	$a3, $s0, 12
	ori	$a4, $zero, 1
	b	.LBB6_21
	.p2align	4, , 16
.LBB6_20:                               #   in Loop: Header=BB6_21 Depth=1
	addi.w	$a5, $a7, 0
	addi.d	$a3, $a3, 8
	bge	$a4, $a5, .LBB6_27
.LBB6_21:                               # %.peel.next
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a3, -4
	ld.w	$a7, $a3, -12
	ld.w	$a5, $a3, 0
	beq	$a6, $a7, .LBB6_23
# %bb.22:                               #   in Loop: Header=BB6_21 Depth=1
	slli.d	$a7, $a6, 2
	stx.w	$a5, $a0, $a7
.LBB6_23:                               #   in Loop: Header=BB6_21 Depth=1
	slli.d	$a7, $a5, 2
	stx.w	$a2, $a1, $a7
	ld.wu	$a7, $fp, 76
	addi.d	$a4, $a4, 1
	beq	$a4, $a7, .LBB6_20
# %bb.24:                               #   in Loop: Header=BB6_21 Depth=1
	ld.w	$t0, $a3, 4
	bne	$a6, $t0, .LBB6_20
# %bb.25:                               #   in Loop: Header=BB6_21 Depth=1
	ld.w	$a6, $a3, 8
	alsl.d	$a5, $a5, $a1, 2
	st.w	$a6, $a5, 0
	ld.w	$a7, $fp, 76
	b	.LBB6_20
.LBB6_26:                               # %._crit_edge55
	beqz	$s0, .LBB6_31
.LBB6_27:                               # %._crit_edge55.thread
	sub.d	$a1, $s2, $s0
	move	$a0, $s0
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB6_28:                               # %vector.ph
	bstrpick.d	$a1, $a0, 30, 3
	slli.d	$a1, $a1, 3
	addi.d	$a3, $s0, 32
	ori	$a4, $zero, 7
	move	$a5, $a2
	move	$a6, $a1
	.p2align	4, , 16
.LBB6_29:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a7, $a4, -7
	addi.d	$t0, $a4, -6
	addi.d	$t1, $a4, -5
	addi.d	$t2, $a4, -4
	xvld	$xr0, $a5, 0
	addi.d	$t3, $a4, -3
	addi.d	$t4, $a4, -2
	addi.d	$t5, $a4, -1
	xvstelm.w	$xr0, $a3, -32, 0
	xvstelm.w	$xr0, $a3, -24, 1
	xvstelm.w	$xr0, $a3, -16, 2
	xvstelm.w	$xr0, $a3, -8, 3
	xvstelm.w	$xr0, $a3, 0, 4
	xvstelm.w	$xr0, $a3, 8, 5
	xvstelm.w	$xr0, $a3, 16, 6
	xvstelm.w	$xr0, $a3, 24, 7
	st.w	$a7, $a3, -28
	st.w	$t0, $a3, -20
	st.w	$t1, $a3, -12
	st.w	$t2, $a3, -4
	st.w	$t3, $a3, 4
	st.w	$t4, $a3, 12
	st.w	$t5, $a3, 20
	st.w	$a4, $a3, 28
	addi.d	$a4, $a4, 8
	addi.d	$a6, $a6, -8
	addi.d	$a3, $a3, 64
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB6_29
# %bb.30:                               # %middle.block
	beq	$a1, $a0, .LBB6_10
	b	.LBB6_8
.LBB6_31:                               # %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB6_32:                               # %.noexc
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.LBB6_33:
.Ltmp68:                                # EH_LABEL
	move	$fp, $a0
	beqz	$s0, .LBB6_35
# %bb.34:
	sub.d	$a1, $s2, $s0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_35:                               # %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit35
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end6:
	.size	_ZN4Mesh10initInvMapEv, .Lfunc_end6-_ZN4Mesh10initInvMapEv
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table6:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Lfunc_begin3-.Lfunc_begin3    # >> Call Site 1 <<
	.uleb128 .Ltmp64-.Lfunc_begin3          #   Call between .Lfunc_begin3 and .Ltmp64
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp64-.Lfunc_begin3          # >> Call Site 2 <<
	.uleb128 .Ltmp67-.Ltmp64                #   Call between .Ltmp64 and .Ltmp67
	.uleb128 .Ltmp68-.Lfunc_begin3          #     jumps to .Ltmp68
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp67-.Lfunc_begin3          # >> Call Site 3 <<
	.uleb128 .Lfunc_end6-.Ltmp67            #   Call between .Ltmp67 and .Lfunc_end6
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN4Mesh12initParallelERKSt6vectorIiSaIiEES4_S4_S4_S4_S4_ # -- Begin function _ZN4Mesh12initParallelERKSt6vectorIiSaIiEES4_S4_S4_S4_S4_
	.p2align	5
	.type	_ZN4Mesh12initParallelERKSt6vectorIiSaIiEES4_S4_S4_S4_S4_,@function
_ZN4Mesh12initParallelERKSt6vectorIiSaIiEES4_S4_S4_S4_S4_: # @_ZN4Mesh12initParallelERKSt6vectorIiSaIiEES4_S4_S4_S4_S4_
# %bb.0:
	addi.d	$sp, $sp, -96
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
	move	$s6, $a2
	move	$s0, $a0
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel5numpeE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZN8Parallel5numpeE)
	ld.w	$a0, $a0, 0
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB7_2
.LBB7_1:                                # %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_.exit45
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
.LBB7_2:
	move	$fp, $a6
	move	$s1, $a5
	move	$s2, $a4
	move	$s3, $a3
	ld.d	$a0, $a1, 8
	ld.d	$a2, $a1, 0
	sub.d	$a0, $a0, $a2
	srli.d	$s7, $a0, 2
	st.w	$s7, $s0, 152
	slli.d	$a0, $a0, 30
	srai.d	$s5, $a0, 30
	bstrins.d	$s5, $zero, 1, 0
	move	$a0, $s5
	move	$s4, $a1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 200
	ld.d	$a1, $s4, 0
	ld.d	$a2, $s4, 8
	sub.d	$a2, $a2, $a1
	ori	$a3, $zero, 5
	blt	$a2, $a3, .LBB7_20
# %bb.3:
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
.LBB7_4:                                # %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_.exit
	move	$a0, $s5
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	st.d	$a0, $s0, 208
	ld.d	$a1, $s6, 0
	ld.d	$a0, $s6, 8
	sub.d	$a2, $a0, $a1
	ori	$a0, $zero, 5
	blt	$a2, $a0, .LBB7_22
# %bb.5:
	move	$a0, $s4
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
.LBB7_6:                                # %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_.exit41
	addi.w	$s6, $s7, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 216
	blez	$s6, .LBB7_9
# %bb.7:                                # %.lr.ph.preheader
	move	$a1, $zero
	bstrpick.d	$a2, $s7, 30, 0
	.p2align	4, , 16
.LBB7_8:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $s4, 0
	st.w	$a1, $a0, 0
	add.d	$a1, $a3, $a1
	addi.d	$s4, $s4, 4
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 4
	bnez	$a2, .LBB7_8
.LBB7_9:                                # %._crit_edge
	ld.d	$a0, $s3, 8
	ld.d	$a1, $s3, 0
	sub.d	$a0, $a0, $a1
	srli.d	$a1, $a0, 2
	st.w	$a1, $s0, 164
	slli.d	$a0, $a0, 30
	srai.d	$a0, $a0, 30
	bstrins.d	$a0, $zero, 1, 0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 224
	ld.d	$a1, $s3, 0
	ld.d	$a2, $s3, 8
	sub.d	$a2, $a2, $a1
	ori	$a3, $zero, 5
	blt	$a2, $a3, .LBB7_24
# %bb.10:
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
.LBB7_11:                               # %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_.exit42
	ld.d	$a0, $s2, 8
	ld.d	$a1, $s2, 0
	sub.d	$a0, $a0, $a1
	srli.d	$s4, $a0, 2
	st.w	$s4, $s0, 156
	slli.d	$a0, $a0, 30
	srai.d	$s3, $a0, 30
	bstrins.d	$s3, $zero, 1, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 168
	ld.d	$a1, $s2, 0
	ld.d	$a2, $s2, 8
	sub.d	$a2, $a2, $a1
	ori	$a3, $zero, 5
	blt	$a2, $a3, .LBB7_26
# %bb.12:
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
.LBB7_13:                               # %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_.exit43
	move	$a0, $s3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	st.d	$a0, $s0, 192
	ld.d	$a1, $s1, 0
	ld.d	$a0, $s1, 8
	sub.d	$a2, $a0, $a1
	ori	$a0, $zero, 5
	blt	$a2, $a0, .LBB7_28
# %bb.14:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
.LBB7_15:                               # %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_.exit44
	addi.w	$s1, $s4, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 176
	blez	$s1, .LBB7_18
# %bb.16:                               # %.lr.ph53.preheader
	move	$a1, $zero
	bstrpick.d	$a2, $s4, 30, 0
	.p2align	4, , 16
.LBB7_17:                               # %.lr.ph53
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $s2, 0
	st.w	$a1, $a0, 0
	add.d	$a1, $a3, $a1
	addi.d	$s2, $s2, 4
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 4
	bnez	$a2, .LBB7_17
.LBB7_18:                               # %._crit_edge54
	ld.d	$a0, $fp, 8
	ld.d	$a1, $fp, 0
	sub.d	$a0, $a0, $a1
	srli.d	$a1, $a0, 2
	st.w	$a1, $s0, 160
	slli.d	$a0, $a0, 30
	srai.d	$a0, $a0, 30
	bstrins.d	$a0, $zero, 1, 0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 184
	ld.d	$a1, $fp, 0
	ld.d	$a2, $fp, 8
	sub.d	$a2, $a2, $a1
	ori	$a3, $zero, 5
	blt	$a2, $a3, .LBB7_30
# %bb.19:
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
	pcaddu18i	$t8, %call36(memmove)
	jr	$t8
.LBB7_20:
	ori	$a3, $zero, 4
	bne	$a2, $a3, .LBB7_4
# %bb.21:
	ld.w	$a1, $a1, 0
	st.w	$a1, $a0, 0
	b	.LBB7_4
.LBB7_22:
	ori	$a0, $zero, 4
	bne	$a2, $a0, .LBB7_6
# %bb.23:
	ld.w	$a0, $a1, 0
	st.w	$a0, $s4, 0
	b	.LBB7_6
.LBB7_24:
	ori	$a3, $zero, 4
	bne	$a2, $a3, .LBB7_11
# %bb.25:
	ld.w	$a1, $a1, 0
	st.w	$a1, $a0, 0
	b	.LBB7_11
.LBB7_26:
	ori	$a3, $zero, 4
	bne	$a2, $a3, .LBB7_13
# %bb.27:
	ld.w	$a1, $a1, 0
	st.w	$a1, $a0, 0
	b	.LBB7_13
.LBB7_28:
	ori	$a0, $zero, 4
	bne	$a2, $a0, .LBB7_15
# %bb.29:
	ld.w	$a0, $a1, 0
	st.w	$a0, $s2, 0
	b	.LBB7_15
.LBB7_30:
	ori	$a3, $zero, 4
	bne	$a2, $a3, .LBB7_1
# %bb.31:
	ld.w	$a1, $a1, 0
	st.w	$a1, $a0, 0
	b	.LBB7_1
.Lfunc_end7:
	.size	_ZN4Mesh12initParallelERKSt6vectorIiSaIiEES4_S4_S4_S4_S4_, .Lfunc_end7-_ZN4Mesh12initParallelERKSt6vectorIiSaIiEES4_S4_S4_S4_S4_
                                        # -- End function
	.globl	_ZN4Mesh10writeStatsEv          # -- Begin function _ZN4Mesh10writeStatsEv
	.p2align	5
	.type	_ZN4Mesh10writeStatsEv,@function
_ZN4Mesh10writeStatsEv:                 # @_ZN4Mesh10writeStatsEv
	.cfi_startproc
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
	move	$fp, $a0
	ld.w	$a0, $a0, 60
	st.d	$a0, $sp, 56
	pcalau12i	$a1, %got_pc_hi20(_ZN8Parallel5numpeE)
	ld.d	$a1, $a1, %got_pc_lo12(_ZN8Parallel5numpeE)
	ld.w	$a1, $a1, 0
	ori	$a2, $zero, 2
	blt	$a1, $a2, .LBB8_2
# %bb.1:
	ld.w	$a1, $fp, 164
	sub.d	$a0, $a0, $a1
	st.d	$a0, $sp, 56
.LBB8_2:
	ld.w	$a0, $fp, 68
	ld.w	$a1, $fp, 72
	st.d	$a0, $sp, 48
	st.d	$a1, $sp, 40
	ld.w	$a0, $fp, 64
	ld.w	$a1, $fp, 504
	ld.w	$a2, $fp, 560
	ld.w	$a3, $fp, 400
	st.d	$a0, $sp, 32
	st.w	$a1, $sp, 28
	st.w	$a2, $sp, 24
	st.w	$a3, $sp, 20
	addi.d	$a0, $sp, 56
	pcaddu18i	$ra, %call36(_ZN8Parallel9globalSumERl)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 48
	pcaddu18i	$ra, %call36(_ZN8Parallel9globalSumERl)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 40
	pcaddu18i	$ra, %call36(_ZN8Parallel9globalSumERl)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 32
	pcaddu18i	$ra, %call36(_ZN8Parallel9globalSumERl)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 28
	pcaddu18i	$ra, %call36(_ZN8Parallel9globalSumERi)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(_ZN8Parallel9globalSumERi)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 20
	pcaddu18i	$ra, %call36(_ZN8Parallel9globalSumERi)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZN8Parallel4mypeE)
	ld.w	$a0, $a0, 0
	bgtz	$a0, .LBB8_44
# %bb.3:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$s0, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a1, $a0, %pc_lo12(.L.str.6)
	ori	$a2, $zero, 24
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s0, $a0, 240
	beqz	$s0, .LBB8_45
# %bb.4:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	ld.bu	$a0, $s0, 56
	beqz	$a0, .LBB8_6
# %bb.5:
	ld.bu	$a0, $s0, 67
	b	.LBB8_7
.LBB8_6:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s0
	jirl	$ra, $a2, 0
.LBB8_7:                                # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
	ext.w.b	$a1, $a0
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$s0, $a0, %got_pc_lo12(_ZSt4cout)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a1, $a0, %pc_lo12(.L.str.7)
	ori	$a2, $zero, 9
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 56
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIlEERSoT_)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	ld.d	$s0, $a1, 240
	beqz	$s0, .LBB8_45
# %bb.8:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2
	ld.bu	$a1, $s0, 56
	beqz	$a1, .LBB8_10
# %bb.9:
	ld.bu	$a1, $s0, 67
	b	.LBB8_11
.LBB8_10:
	move	$s1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s0
	jirl	$ra, $a2, 0
	move	$a1, $a0
	move	$a0, $s1
.LBB8_11:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit5
	ext.w.b	$a1, $a1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$s0, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a1, $a0, %pc_lo12(.L.str.8)
	ori	$a2, $zero, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 48
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIlEERSoT_)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	ld.d	$s0, $a1, 240
	beqz	$s0, .LBB8_45
# %bb.12:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i7
	ld.bu	$a1, $s0, 56
	beqz	$a1, .LBB8_14
# %bb.13:
	ld.bu	$a1, $s0, 67
	b	.LBB8_15
.LBB8_14:
	move	$s1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s0
	jirl	$ra, $a2, 0
	move	$a1, $a0
	move	$a0, $s1
.LBB8_15:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit10
	ext.w.b	$a1, $a1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$s0, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a1, $a0, %pc_lo12(.L.str.9)
	ori	$a2, $zero, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 40
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIlEERSoT_)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	ld.d	$s0, $a1, 240
	beqz	$s0, .LBB8_45
# %bb.16:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i12
	ld.bu	$a1, $s0, 56
	beqz	$a1, .LBB8_18
# %bb.17:
	ld.bu	$a1, $s0, 67
	b	.LBB8_19
.LBB8_18:
	move	$s1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s0
	jirl	$ra, $a2, 0
	move	$a1, $a0
	move	$a0, $s1
.LBB8_19:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit15
	ext.w.b	$a1, $a1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$s0, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a1, $a0, %pc_lo12(.L.str.10)
	ori	$a2, $zero, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 32
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIlEERSoT_)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	ld.d	$s0, $a1, 240
	beqz	$s0, .LBB8_45
# %bb.20:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i17
	ld.bu	$a1, $s0, 56
	beqz	$a1, .LBB8_22
# %bb.21:
	ld.bu	$a1, $s0, 67
	b	.LBB8_23
.LBB8_22:
	move	$s1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s0
	jirl	$ra, $a2, 0
	move	$a1, $a0
	move	$a0, $s1
.LBB8_23:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit20
	ext.w.b	$a1, $a1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$s0, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a1, $a0, %pc_lo12(.L.str.11)
	ori	$a2, $zero, 14
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 20
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	ld.d	$s0, $a1, 240
	beqz	$s0, .LBB8_45
# %bb.24:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i22
	ld.bu	$a1, $s0, 56
	beqz	$a1, .LBB8_26
# %bb.25:
	ld.bu	$a1, $s0, 67
	b	.LBB8_27
.LBB8_26:
	move	$s1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s0
	jirl	$ra, $a2, 0
	move	$a1, $a0
	move	$a0, $s1
.LBB8_27:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit25
	ext.w.b	$a1, $a1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$s0, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a1, $a0, %pc_lo12(.L.str.12)
	ori	$a2, $zero, 15
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 28
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	ld.d	$s0, $a1, 240
	beqz	$s0, .LBB8_45
# %bb.28:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i27
	ld.bu	$a1, $s0, 56
	beqz	$a1, .LBB8_30
# %bb.29:
	ld.bu	$a1, $s0, 67
	b	.LBB8_31
.LBB8_30:
	move	$s1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s0
	jirl	$ra, $a2, 0
	move	$a1, $a0
	move	$a0, $s1
.LBB8_31:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit30
	ext.w.b	$a1, $a1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$s0, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a1, $a0, %pc_lo12(.L.str.13)
	ori	$a2, $zero, 14
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 24
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	ld.d	$s0, $a1, 240
	beqz	$s0, .LBB8_45
# %bb.32:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i32
	ld.bu	$a1, $s0, 56
	beqz	$a1, .LBB8_34
# %bb.33:
	ld.bu	$a1, $s0, 67
	b	.LBB8_35
.LBB8_34:
	move	$s1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s0
	jirl	$ra, $a2, 0
	move	$a1, $a0
	move	$a0, $s1
.LBB8_35:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit35
	ext.w.b	$a1, $a1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$s0, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a1, $a0, %pc_lo12(.L.str.14)
	ori	$a2, $zero, 13
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 24
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a1, $a0, $a1
	ld.d	$fp, $a1, 240
	beqz	$fp, .LBB8_45
# %bb.36:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i37
	ld.bu	$a1, $fp, 56
	beqz	$a1, .LBB8_38
# %bb.37:
	ld.bu	$a1, $fp, 67
	b	.LBB8_39
.LBB8_38:
	move	$s1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $fp
	jirl	$ra, $a2, 0
	move	$a1, $a0
	move	$a0, $s1
.LBB8_39:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit40
	ext.w.b	$a1, $a1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a1, $a0, %pc_lo12(.L.str.15)
	ori	$a2, $zero, 24
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$fp, $a0, 240
	beqz	$fp, .LBB8_45
# %bb.40:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i42
	ld.bu	$a0, $fp, 56
	beqz	$a0, .LBB8_42
# %bb.41:
	ld.bu	$a0, $fp, 67
	b	.LBB8_43
.LBB8_42:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $fp
	jirl	$ra, $a2, 0
.LBB8_43:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit45
	ext.w.b	$a1, $a0
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.LBB8_44:
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.LBB8_45:
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Lfunc_end8:
	.size	_ZN4Mesh10writeStatsEv, .Lfunc_end8-_ZN4Mesh10writeStatsEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZN4Mesh8calcCtrsEPK7double2PS0_S3_ii # -- Begin function _ZN4Mesh8calcCtrsEPK7double2PS0_S3_ii
	.p2align	5
	.type	_ZN4Mesh8calcCtrsEPK7double2PS0_S3_ii,@function
_ZN4Mesh8calcCtrsEPK7double2PS0_S3_ii:  # @_ZN4Mesh8calcCtrsEPK7double2PS0_S3_ii
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
	move	$fp, $a0
	ld.d	$s0, $a0, 104
	ld.w	$a0, $a0, 72
	move	$s4, $a5
	move	$s5, $a4
	slli.d	$a4, $a4, 2
	ldx.w	$s7, $s0, $a4
	slt	$a0, $a5, $a0
	alsl.d	$a4, $a5, $s0, 2
	addi.d	$a5, $fp, 68
	maskeqz	$a4, $a4, $a0
	masknez	$a0, $a5, $a0
	or	$a0, $a4, $a0
	ld.w	$s8, $a0, 0
	move	$s1, $a3
	move	$s2, $a2
	move	$s3, $a1
	alsl.d	$a0, $s7, $a3, 4
	sub.d	$s6, $s8, $s7
	beq	$s7, $s8, .LBB9_2
# %bb.1:                                # %.lr.ph.i.i.i.preheader
	slli.d	$a2, $s6, 4
	move	$a1, $zero
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
.LBB9_2:                                # %_ZSt4fillIP7double2S0_EvT_S2_RKT0_.exit
	bge	$s5, $s4, .LBB9_5
# %bb.3:                                # %.lr.ph
	ld.d	$a1, $fp, 88
	ld.d	$a2, $fp, 96
	ld.d	$a3, $fp, 112
	alsl.d	$t0, $s5, $s0, 2
	alsl.d	$a1, $s5, $a1, 2
	alsl.d	$a2, $s5, $a2, 2
	alsl.d	$a3, $s5, $a3, 2
	sub.d	$a4, $s4, $s5
	lu52i.d	$a5, $zero, 1022
	vreplgr2vr.d	$vr0, $a5
	.p2align	4, , 16
.LBB9_4:                                # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a1, 0
	ld.w	$a6, $a2, 0
	ld.w	$a7, $a3, 0
	slli.d	$a5, $a5, 4
	slli.d	$a6, $a6, 4
	vldx	$vr1, $s3, $a5
	vldx	$vr2, $s3, $a6
	ld.w	$a6, $t0, 0
	slli.d	$a7, $a7, 4
	vfadd.d	$vr1, $vr1, $vr2
	vfmul.d	$vr1, $vr1, $vr0
	vstx	$vr1, $s2, $a7
	slli.d	$a6, $a6, 4
	vldx	$vr1, $s3, $a5
	vldx	$vr2, $s1, $a6
	vfadd.d	$vr1, $vr1, $vr2
	vstx	$vr1, $s1, $a6
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, -1
	addi.d	$t0, $t0, 4
	bnez	$a4, .LBB9_4
.LBB9_5:                                # %.preheader
	bge	$s7, $s8, .LBB9_8
# %bb.6:                                # %.lr.ph49
	ld.d	$a1, $fp, 232
	alsl.d	$a3, $s7, $a1, 2
	addi.d	$a1, $a0, 8
	.p2align	4, , 16
.LBB9_7:                                # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $a3, 0
	fld.d	$fa0, $a1, -8
	movgr2fr.w	$fa1, $a2
	fld.d	$fa2, $a1, 0
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $a1, -8
	fdiv.d	$fa0, $fa2, $fa1
	fst.d	$fa0, $a1, 0
	addi.d	$a3, $a3, 4
	addi.d	$s6, $s6, -1
	addi.d	$a1, $a1, 16
	bnez	$s6, .LBB9_7
.LBB9_8:                                # %._crit_edge
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
.Lfunc_end9:
	.size	_ZN4Mesh8calcCtrsEPK7double2PS0_S3_ii, .Lfunc_end9-_ZN4Mesh8calcCtrsEPK7double2PS0_S3_ii
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _ZN4Mesh8calcVolsEPK7double2S2_PdS3_S3_S3_ii
.LCPI10_0:
	.dword	0x3fd5555555555555              # double 0.33333333333333331
	.text
	.globl	_ZN4Mesh8calcVolsEPK7double2S2_PdS3_S3_S3_ii
	.p2align	5
	.type	_ZN4Mesh8calcVolsEPK7double2S2_PdS3_S3_S3_ii,@function
_ZN4Mesh8calcVolsEPK7double2S2_PdS3_S3_S3_ii: # @_ZN4Mesh8calcVolsEPK7double2S2_PdS3_S3_S3_ii
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
	move	$fp, $a0
	ld.d	$s8, $sp, 112
	ld.d	$s5, $a0, 104
	ld.w	$a0, $a0, 72
	move	$s4, $a7
	slli.d	$a7, $a7, 2
	ldx.w	$s6, $s5, $a7
	slt	$a0, $s8, $a0
	alsl.d	$a7, $s8, $s5, 2
	addi.d	$t0, $fp, 68
	maskeqz	$a7, $a7, $a0
	masknez	$a0, $t0, $a0
	or	$a0, $a7, $a0
	ld.w	$a7, $a0, 0
	move	$s0, $a6
	move	$s1, $a5
	move	$s2, $a2
	move	$s3, $a1
	beq	$s6, $a7, .LBB10_2
# %bb.1:                                # %.lr.ph.i.i.i54.preheader
	alsl.d	$a0, $s6, $s0, 3
	sub.d	$a1, $a7, $s6
	slli.d	$s7, $a1, 3
	move	$a1, $zero
	move	$a2, $s7
	st.d	$a4, $sp, 16                    # 8-byte Folded Spill
	st.d	$a3, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	alsl.d	$a0, $s6, $s1, 3
	move	$a1, $zero
	move	$a2, $s7
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a4, $sp, 16                    # 8-byte Folded Reload
.LBB10_2:                               # %_ZSt4fillIPddEvT_S1_RKT0_.exit57
	bge	$s4, $s8, .LBB10_7
# %bb.3:                                # %.lr.ph
	ld.d	$a1, $fp, 88
	ld.d	$a2, $fp, 96
	move	$a0, $zero
	alsl.d	$a1, $s4, $a1, 2
	alsl.d	$a2, $s4, $a2, 2
	alsl.d	$t5, $s4, $s5, 2
	alsl.d	$t4, $s4, $a3, 3
	alsl.d	$a5, $s4, $a4, 3
	pcalau12i	$a6, %pc_hi20(.LCPI10_0)
	fld.d	$fa0, $a6, %pc_lo12(.LCPI10_0)
	sub.d	$a6, $s8, $s4
	vldi	$vr1, -928
	movgr2fr.d	$fa2, $zero
	.p2align	4, , 16
.LBB10_4:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a7, $a2, 0
	ld.w	$t0, $a1, 0
	ld.w	$t1, $t5, 0
	alsl.d	$t2, $a7, $s3, 4
	slli.d	$a7, $a7, 4
	alsl.d	$t3, $t0, $s3, 4
	slli.d	$t0, $t0, 4
	fldx.d	$fa3, $s3, $a7
	fldx.d	$fa4, $s3, $t0
	fld.d	$fa5, $t2, 8
	fld.d	$fa6, $t3, 8
	alsl.d	$a7, $t1, $s2, 4
	slli.d	$t0, $t1, 4
	fldx.d	$fa7, $s2, $t0
	fld.d	$ft0, $a7, 8
	fsub.d	$ft1, $fa3, $fa4
	fsub.d	$fa5, $fa5, $fa6
	fsub.d	$ft2, $fa7, $fa4
	fsub.d	$fa6, $ft0, $fa6
	fneg.d	$ft0, $ft2
	fmul.d	$fa5, $fa5, $ft0
	fmadd.d	$fa5, $ft1, $fa6, $fa5
	fmul.d	$fa5, $fa5, $fa1
	fmul.d	$fa6, $fa5, $fa0
	fadd.d	$fa3, $fa3, $fa4
	fadd.d	$fa3, $fa3, $fa7
	fmul.d	$fa3, $fa3, $fa6
	fst.d	$fa5, $t4, 0
	fst.d	$fa3, $a5, 0
	slli.d	$a7, $t1, 3
	fldx.d	$fa4, $s1, $a7
	fadd.d	$fa4, $fa4, $fa5
	fstx.d	$fa4, $s1, $a7
	fldx.d	$fa4, $s0, $a7
	fadd.d	$fa4, $fa4, $fa3
	fcmp.cle.d	$fcc0, $fa3, $fa2
	fstx.d	$fa4, $s0, $a7
	movcf2gr	$a7, $fcc0
	add.w	$a0, $a0, $a7
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, 4
	addi.d	$t5, $t5, 4
	addi.d	$t4, $t4, 8
	addi.d	$a6, $a6, -1
	addi.d	$a5, $a5, 8
	bnez	$a6, .LBB10_4
# %bb.5:                                # %._crit_edge
	beqz	$a0, .LBB10_7
# %bb.6:
	ld.w	$a1, $fp, 80
	add.d	$a0, $a1, $a0
	st.w	$a0, $fp, 80
.LBB10_7:                               # %._crit_edge.thread
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
.Lfunc_end10:
	.size	_ZN4Mesh8calcVolsEPK7double2S2_PdS3_S3_S3_ii, .Lfunc_end10-_ZN4Mesh8calcVolsEPK7double2S2_PdS3_S3_S3_ii
	.cfi_endproc
                                        # -- End function
	.globl	_ZN4Mesh13calcSideFracsEPKdS1_Pdii # -- Begin function _ZN4Mesh13calcSideFracsEPKdS1_Pdii
	.p2align	5
	.type	_ZN4Mesh13calcSideFracsEPKdS1_Pdii,@function
_ZN4Mesh13calcSideFracsEPKdS1_Pdii:     # @_ZN4Mesh13calcSideFracsEPKdS1_Pdii
# %bb.0:
	bge	$a4, $a5, .LBB11_3
# %bb.1:                                # %.lr.ph
	ld.d	$a0, $a0, 104
	alsl.d	$a0, $a4, $a0, 2
	alsl.d	$a1, $a4, $a1, 3
	alsl.d	$a3, $a4, $a3, 3
	sub.d	$a4, $a5, $a4
	.p2align	4, , 16
.LBB11_2:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a0, 0
	fld.d	$fa0, $a1, 0
	slli.d	$a5, $a5, 3
	fldx.d	$fa1, $a2, $a5
	fdiv.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $a3, 0
	addi.d	$a0, $a0, 4
	addi.d	$a1, $a1, 8
	addi.d	$a4, $a4, -1
	addi.d	$a3, $a3, 8
	bnez	$a4, .LBB11_2
.LBB11_3:                               # %._crit_edge
	ret
.Lfunc_end11:
	.size	_ZN4Mesh13calcSideFracsEPKdS1_Pdii, .Lfunc_end11-_ZN4Mesh13calcSideFracsEPKdS1_Pdii
                                        # -- End function
	.globl	_ZN4Mesh13checkBadSidesEv       # -- Begin function _ZN4Mesh13checkBadSidesEv
	.p2align	5
	.type	_ZN4Mesh13checkBadSidesEv,@function
_ZN4Mesh13checkBadSidesEv:              # @_ZN4Mesh13checkBadSidesEv
	.cfi_startproc
# %bb.0:
	ld.w	$a1, $a0, 80
	bgtz	$a1, .LBB12_2
# %bb.1:
	ret
.LBB12_2:
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	pcalau12i	$a1, %got_pc_hi20(_ZSt4cerr)
	ld.d	$fp, $a1, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.18)
	addi.d	$a1, $a1, %pc_lo12(.L.str.18)
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, 80
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.L.str.19)
	addi.d	$a1, $a1, %pc_lo12(.L.str.19)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a1, $a0, %pc_lo12(.L.str.20)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end12:
	.size	_ZN4Mesh13checkBadSidesEv, .Lfunc_end12-_ZN4Mesh13checkBadSidesEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev,"axG",@progbits,_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev,comdat
	.weak	_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev # -- Begin function _ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev
	.p2align	5
	.type	_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev,@function
_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev:    # @_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev
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
	ld.d	$s0, $a0, 0
	ld.d	$s1, $a0, 8
	bne	$s0, $s1, .LBB13_4
# %bb.1:                                # %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit
	beqz	$s0, .LBB13_7
.LBB13_2:
	ld.d	$a0, $fp, 16
	sub.d	$a1, $a0, $s0
	move	$a0, $s0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
	.p2align	4, , 16
.LBB13_3:                               # %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i
                                        #   in Loop: Header=BB13_4 Depth=1
	addi.d	$s0, $s0, 24
	beq	$s0, $s1, .LBB13_6
.LBB13_4:                               # %.lr.ph.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	beqz	$a0, .LBB13_3
# %bb.5:                                #   in Loop: Header=BB13_4 Depth=1
	ld.d	$a1, $s0, 16
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB13_3
.LBB13_6:                               # %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exitthread-pre-split
	ld.d	$s0, $fp, 0
	bnez	$s0, .LBB13_2
.LBB13_7:                               # %_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EED2Ev.exit
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end13:
	.size	_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev, .Lfunc_end13-_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev
	.cfi_endproc
                                        # -- End function
	.text
	.globl	_ZN4Mesh5writeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEidPKdS9_S9_ # -- Begin function _ZN4Mesh5writeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEidPKdS9_S9_
	.p2align	5
	.type	_ZN4Mesh5writeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEidPKdS9_S9_,@function
_ZN4Mesh5writeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEidPKdS9_S9_: # @_ZN4Mesh5writeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEidPKdS9_S9_
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
	fst.d	$fs0, $sp, 8                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 56, -72
	move	$s2, $a0
	ld.bu	$a0, $a0, 56
	move	$fp, $a5
	move	$s0, $a4
	move	$s1, $a3
	fmov.d	$fs0, $fa0
	move	$s3, $a2
	move	$s4, $a1
	beqz	$a0, .LBB14_8
# %bb.1:
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZN8Parallel4mypeE)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB14_7
# %bb.2:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$s5, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a1, $a0, %pc_lo12(.L.str.16)
	ori	$a2, $zero, 19
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s5, $a0
	ld.d	$s5, $a0, 240
	beqz	$s5, .LBB14_17
# %bb.3:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	ld.bu	$a0, $s5, 56
	beqz	$a0, .LBB14_5
# %bb.4:
	ld.bu	$a0, $s5, 67
	b	.LBB14_6
.LBB14_5:
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s5
	jirl	$ra, $a2, 0
.LBB14_6:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
	ext.w.b	$a1, $a0
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.LBB14_7:
	ld.d	$a0, $s2, 8
	move	$a1, $s4
	move	$a2, $s1
	move	$a3, $s0
	move	$a4, $fp
	pcaddu18i	$ra, %call36(_ZN7WriteXY5writeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKdS9_S9_)
	jirl	$ra, $ra, 0
.LBB14_8:
	ld.bu	$a0, $s2, 57
	beqz	$a0, .LBB14_13
# %bb.9:
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZN8Parallel4mypeE)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB14_16
# %bb.10:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$s5, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a1, $a0, %pc_lo12(.L.str.17)
	ori	$a2, $zero, 20
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s5, $a0
	ld.d	$s5, $a0, 240
	beqz	$s5, .LBB14_17
# %bb.11:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i11
	ld.bu	$a0, $s5, 56
	beqz	$a0, .LBB14_14
# %bb.12:
	ld.bu	$a0, $s5, 67
	b	.LBB14_15
.LBB14_13:
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
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
.LBB14_14:
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s5
	jirl	$ra, $a2, 0
.LBB14_15:                              # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit14
	ext.w.b	$a1, $a0
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.LBB14_16:
	ld.d	$a0, $s2, 16
	move	$a1, $s4
	move	$a2, $s3
	fmov.d	$fa0, $fs0
	move	$a3, $s1
	move	$a4, $s0
	move	$a5, $fp
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	pcaddu18i	$t8, %call36(_ZN10ExportGold5writeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEidPKdS9_S9_)
	jr	$t8
.LBB14_17:
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Lfunc_end14:
	.size	_ZN4Mesh5writeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEidPKdS9_S9_, .Lfunc_end14-_ZN4Mesh5writeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEidPKdS9_S9_
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _ZN4Mesh9getXPlaneEd
.LCPI15_0:
	.dword	0x3d719799812dea11              # double 9.9999999999999998E-13
	.text
	.globl	_ZN4Mesh9getXPlaneEd
	.p2align	5
	.type	_ZN4Mesh9getXPlaneEd,@function
_ZN4Mesh9getXPlaneEd:                   # @_ZN4Mesh9getXPlaneEd
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
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 24                   # 8-byte Folded Spill
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
	move	$s0, $a1
	ld.w	$a1, $a1, 60
	fmov.d	$fs0, $fa0
	move	$fp, $a0
	st.d	$zero, $a0, 16
	vrepli.b	$vr0, 0
	vst	$vr0, $a0, 0
	blez	$a1, .LBB15_14
# %bb.1:                                # %.lr.ph
	move	$s4, $zero
	move	$s5, $zero
	move	$a0, $zero
	move	$a1, $zero
	move	$s6, $zero
	move	$s1, $zero
	pcalau12i	$a2, %pc_hi20(.LCPI15_0)
	fld.d	$fs1, $a2, %pc_lo12(.LCPI15_0)
	addi.w	$a2, $zero, -4
	lu52i.d	$a2, $a2, 2047
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	addi.w	$a2, $zero, -1
	lu52i.d	$s8, $a2, 511
	b	.LBB15_5
	.p2align	4, , 16
.LBB15_2:                               #   in Loop: Header=BB15_5 Depth=1
	st.w	$s5, $a1, 0
	addi.d	$a1, $a1, 4
	st.d	$a1, $fp, 8
.LBB15_3:                               # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
                                        #   in Loop: Header=BB15_5 Depth=1
	move	$s3, $s1
.LBB15_4:                               # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
                                        #   in Loop: Header=BB15_5 Depth=1
	ld.w	$a2, $s0, 60
	addi.d	$s6, $s6, 1
	addi.d	$s5, $s5, 1
	addi.d	$s4, $s4, 16
	move	$s1, $s3
	bge	$s6, $a2, .LBB15_15
.LBB15_5:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $s0, 240
	fldx.d	$fa0, $a2, $s4
	fsub.d	$fa0, $fa0, $fs0
	fabs.d	$fa0, $fa0
	fcmp.cule.d	$fcc0, $fs1, $fa0
	bcnez	$fcc0, .LBB15_3
# %bb.6:                                #   in Loop: Header=BB15_5 Depth=1
	bne	$a1, $a0, .LBB15_2
# %bb.7:                                #   in Loop: Header=BB15_5 Depth=1
	sub.d	$s2, $a0, $s1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	beq	$s2, $a0, .LBB15_16
# %bb.8:                                # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i
                                        #   in Loop: Header=BB15_5 Depth=1
	srai.d	$a0, $s2, 2
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	sltu	$a2, $a0, $s8
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $s8, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s8, $a1
	or	$s7, $a1, $a0
	slli.d	$a0, $s7, 2
.Ltmp69:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp70:                                # EH_LABEL
# %bb.9:                                # %.noexc4
                                        #   in Loop: Header=BB15_5 Depth=1
	move	$s3, $a0
	stx.w	$s5, $a0, $s2
	blez	$s2, .LBB15_11
# %bb.10:                               #   in Loop: Header=BB15_5 Depth=1
	move	$a0, $s3
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB15_11:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i
                                        #   in Loop: Header=BB15_5 Depth=1
	beqz	$s1, .LBB15_13
# %bb.12:                               #   in Loop: Header=BB15_5 Depth=1
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB15_13:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i
                                        #   in Loop: Header=BB15_5 Depth=1
	add.d	$a0, $s3, $s2
	addi.d	$a1, $a0, 4
	st.d	$a1, $fp, 8
	alsl.d	$a0, $s7, $s3, 2
	st.d	$a0, $fp, 16
	b	.LBB15_4
.LBB15_14:
	move	$s3, $zero
.LBB15_15:                              # %._crit_edge
	st.d	$s3, $fp, 0
	fld.d	$fs1, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
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
.LBB15_16:
	st.d	$s1, $fp, 0
.Ltmp72:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a0, $a0, %pc_lo12(.L.str.24)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp73:                                # EH_LABEL
# %bb.17:                               # %.noexc
.LBB15_18:                              # %.loopexit.split-lp
.Ltmp74:                                # EH_LABEL
	move	$s0, $a0
	b	.LBB15_20
.LBB15_19:                              # %.loopexit
.Ltmp71:                                # EH_LABEL
	move	$s0, $a0
	st.d	$s1, $fp, 0
.LBB15_20:
	beqz	$s1, .LBB15_22
# %bb.21:
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB15_22:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end15:
	.size	_ZN4Mesh9getXPlaneEd, .Lfunc_end15-_ZN4Mesh9getXPlaneEd
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table15:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Ltmp69-.Lfunc_begin4          # >> Call Site 1 <<
	.uleb128 .Ltmp70-.Ltmp69                #   Call between .Ltmp69 and .Ltmp70
	.uleb128 .Ltmp71-.Lfunc_begin4          #     jumps to .Ltmp71
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp70-.Lfunc_begin4          # >> Call Site 2 <<
	.uleb128 .Ltmp72-.Ltmp70                #   Call between .Ltmp70 and .Ltmp72
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp72-.Lfunc_begin4          # >> Call Site 3 <<
	.uleb128 .Ltmp73-.Ltmp72                #   Call between .Ltmp72 and .Ltmp73
	.uleb128 .Ltmp74-.Lfunc_begin4          #     jumps to .Ltmp74
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp73-.Lfunc_begin4          # >> Call Site 4 <<
	.uleb128 .Lfunc_end15-.Ltmp73           #   Call between .Ltmp73 and .Lfunc_end15
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end4:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _ZN4Mesh9getYPlaneEd
.LCPI16_0:
	.dword	0x3d719799812dea11              # double 9.9999999999999998E-13
	.text
	.globl	_ZN4Mesh9getYPlaneEd
	.p2align	5
	.type	_ZN4Mesh9getYPlaneEd,@function
_ZN4Mesh9getYPlaneEd:                   # @_ZN4Mesh9getYPlaneEd
.Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception5
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
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 24                   # 8-byte Folded Spill
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
	move	$s0, $a1
	ld.w	$a1, $a1, 60
	fmov.d	$fs0, $fa0
	move	$fp, $a0
	st.d	$zero, $a0, 16
	vrepli.b	$vr0, 0
	vst	$vr0, $a0, 0
	blez	$a1, .LBB16_14
# %bb.1:                                # %.lr.ph
	move	$s4, $zero
	move	$a0, $zero
	move	$a1, $zero
	move	$s5, $zero
	move	$s1, $zero
	ori	$s6, $zero, 8
	pcalau12i	$a2, %pc_hi20(.LCPI16_0)
	fld.d	$fs1, $a2, %pc_lo12(.LCPI16_0)
	addi.w	$a2, $zero, -4
	lu52i.d	$a2, $a2, 2047
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	addi.w	$a2, $zero, -1
	lu52i.d	$s8, $a2, 511
	b	.LBB16_5
	.p2align	4, , 16
.LBB16_2:                               #   in Loop: Header=BB16_5 Depth=1
	st.w	$s4, $a1, 0
	addi.d	$a1, $a1, 4
	st.d	$a1, $fp, 8
.LBB16_3:                               # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
                                        #   in Loop: Header=BB16_5 Depth=1
	move	$s3, $s1
.LBB16_4:                               # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
                                        #   in Loop: Header=BB16_5 Depth=1
	ld.w	$a2, $s0, 60
	addi.d	$s5, $s5, 1
	addi.d	$s4, $s4, 1
	addi.d	$s6, $s6, 16
	move	$s1, $s3
	bge	$s5, $a2, .LBB16_15
.LBB16_5:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $s0, 240
	fldx.d	$fa0, $a2, $s6
	fsub.d	$fa0, $fa0, $fs0
	fabs.d	$fa0, $fa0
	fcmp.cule.d	$fcc0, $fs1, $fa0
	bcnez	$fcc0, .LBB16_3
# %bb.6:                                #   in Loop: Header=BB16_5 Depth=1
	bne	$a1, $a0, .LBB16_2
# %bb.7:                                #   in Loop: Header=BB16_5 Depth=1
	sub.d	$s2, $a0, $s1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	beq	$s2, $a0, .LBB16_16
# %bb.8:                                # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i
                                        #   in Loop: Header=BB16_5 Depth=1
	srai.d	$a0, $s2, 2
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	sltu	$a2, $a0, $s8
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $s8, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s8, $a1
	or	$s7, $a1, $a0
	slli.d	$a0, $s7, 2
.Ltmp75:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp76:                                # EH_LABEL
# %bb.9:                                # %.noexc4
                                        #   in Loop: Header=BB16_5 Depth=1
	move	$s3, $a0
	stx.w	$s4, $a0, $s2
	blez	$s2, .LBB16_11
# %bb.10:                               #   in Loop: Header=BB16_5 Depth=1
	move	$a0, $s3
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB16_11:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i
                                        #   in Loop: Header=BB16_5 Depth=1
	beqz	$s1, .LBB16_13
# %bb.12:                               #   in Loop: Header=BB16_5 Depth=1
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_13:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i
                                        #   in Loop: Header=BB16_5 Depth=1
	add.d	$a0, $s3, $s2
	addi.d	$a1, $a0, 4
	st.d	$a1, $fp, 8
	alsl.d	$a0, $s7, $s3, 2
	st.d	$a0, $fp, 16
	b	.LBB16_4
.LBB16_14:
	move	$s3, $zero
.LBB16_15:                              # %._crit_edge
	st.d	$s3, $fp, 0
	fld.d	$fs1, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
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
.LBB16_16:
	st.d	$s1, $fp, 0
.Ltmp78:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a0, $a0, %pc_lo12(.L.str.24)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp79:                                # EH_LABEL
# %bb.17:                               # %.noexc
.LBB16_18:                              # %.loopexit.split-lp
.Ltmp80:                                # EH_LABEL
	move	$s0, $a0
	b	.LBB16_20
.LBB16_19:                              # %.loopexit
.Ltmp77:                                # EH_LABEL
	move	$s0, $a0
	st.d	$s1, $fp, 0
.LBB16_20:
	beqz	$s1, .LBB16_22
# %bb.21:
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_22:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end16:
	.size	_ZN4Mesh9getYPlaneEd, .Lfunc_end16-_ZN4Mesh9getYPlaneEd
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table16:
.Lexception5:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end5-.Lcst_begin5
.Lcst_begin5:
	.uleb128 .Ltmp75-.Lfunc_begin5          # >> Call Site 1 <<
	.uleb128 .Ltmp76-.Ltmp75                #   Call between .Ltmp75 and .Ltmp76
	.uleb128 .Ltmp77-.Lfunc_begin5          #     jumps to .Ltmp77
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp76-.Lfunc_begin5          # >> Call Site 2 <<
	.uleb128 .Ltmp78-.Ltmp76                #   Call between .Ltmp76 and .Ltmp78
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp78-.Lfunc_begin5          # >> Call Site 3 <<
	.uleb128 .Ltmp79-.Ltmp78                #   Call between .Ltmp78 and .Ltmp79
	.uleb128 .Ltmp80-.Lfunc_begin5          #     jumps to .Ltmp80
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp79-.Lfunc_begin5          # >> Call Site 4 <<
	.uleb128 .Lfunc_end16-.Ltmp79           #   Call between .Ltmp79 and .Lfunc_end16
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end5:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN4Mesh14getPlaneChunksEiPKiRSt6vectorIiSaIiEES5_ # -- Begin function _ZN4Mesh14getPlaneChunksEiPKiRSt6vectorIiSaIiEES5_
	.p2align	5
	.type	_ZN4Mesh14getPlaneChunksEiPKiRSt6vectorIiSaIiEES5_,@function
_ZN4Mesh14getPlaneChunksEiPKiRSt6vectorIiSaIiEES5_: # @_ZN4Mesh14getPlaneChunksEiPKiRSt6vectorIiSaIiEES5_
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
	ld.d	$a5, $a3, 8
	ld.d	$a6, $a3, 0
	move	$s0, $a4
	move	$s1, $a2
	move	$s8, $a1
	move	$fp, $a0
	beq	$a5, $a6, .LBB17_2
# %bb.1:                                # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
	st.d	$a6, $a3, 8
.LBB17_2:                               # %_ZNSt6vectorIiSaIiEE6resizeEm.exit
	ld.d	$a1, $s0, 8
	ld.d	$a0, $s0, 0
	beq	$a1, $a0, .LBB17_4
# %bb.3:                                # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i12
	st.d	$a0, $s0, 8
.LBB17_4:                               # %_ZNSt6vectorIiSaIiEE6resizeEm.exit13
	ld.w	$a0, $fp, 504
	blez	$a0, .LBB17_25
# %bb.5:                                # %.lr.ph
	move	$s7, $zero
	move	$s2, $zero
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	addi.w	$a0, $zero, -1
	lu52i.d	$a0, $a0, 511
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	st.d	$a3, $sp, 24                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	b	.LBB17_7
	.p2align	4, , 16
.LBB17_6:                               #   in Loop: Header=BB17_7 Depth=1
	st.w	$s2, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $s0, 8
	ld.w	$a0, $fp, 504
	addi.d	$s7, $s7, 1
	bge	$s7, $a0, .LBB17_25
.LBB17_7:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_9 Depth 2
	addi.w	$a1, $s2, 0
	sub.d	$a0, $s8, $a1
	alsl.d	$s3, $a1, $s1, 2
	blez	$a0, .LBB17_10
# %bb.8:                                # %_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i.i.preheader
                                        #   in Loop: Header=BB17_7 Depth=1
	ld.d	$a1, $fp, 536
	slli.d	$a2, $s7, 2
	ldx.w	$a1, $a1, $a2
	.p2align	4, , 16
.LBB17_9:                               # %_ZSt9__advanceIPKilEvRT_T0_St26random_access_iterator_tag.exit.i.i
                                        #   Parent Loop BB17_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	srli.d	$a2, $a0, 1
	slli.d	$a4, $a2, 2
	ldx.w	$a5, $s3, $a4
	alsl.d	$a4, $a2, $s3, 2
	slt	$a6, $a5, $a1
	addi.d	$a4, $a4, 4
	nor	$a5, $a2, $zero
	add.d	$a0, $a0, $a5
	maskeqz	$a0, $a0, $a6
	masknez	$a2, $a2, $a6
	or	$a0, $a0, $a2
	maskeqz	$a2, $a4, $a6
	masknez	$a4, $s3, $a6
	or	$s3, $a2, $a4
	bgtz	$a0, .LBB17_9
.LBB17_10:                              # %_ZSt11lower_boundIPKiiET_S2_S2_RKT0_.exit
                                        #   in Loop: Header=BB17_7 Depth=1
	ld.d	$a0, $a3, 8
	ld.d	$a1, $a3, 16
	beq	$a0, $a1, .LBB17_12
# %bb.11:                               #   in Loop: Header=BB17_7 Depth=1
	st.w	$s2, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a3, 8
	b	.LBB17_18
	.p2align	4, , 16
.LBB17_12:                              #   in Loop: Header=BB17_7 Depth=1
	ld.d	$s5, $a3, 0
	sub.d	$s4, $a0, $s5
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	beq	$s4, $a0, .LBB17_26
# %bb.13:                               # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i
                                        #   in Loop: Header=BB17_7 Depth=1
	move	$s0, $fp
	move	$fp, $s8
	move	$s8, $s1
	srai.d	$a0, $s4, 2
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	sltu	$a2, $a0, $a3
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $a3, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a3, $a1
	or	$s1, $a1, $a0
	slli.d	$a0, $s1, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	stx.w	$s2, $a0, $s4
	blez	$s4, .LBB17_15
# %bb.14:                               #   in Loop: Header=BB17_7 Depth=1
	move	$a0, $s6
	move	$a1, $s5
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB17_15:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i
                                        #   in Loop: Header=BB17_7 Depth=1
	beqz	$s5, .LBB17_17
# %bb.16:                               #   in Loop: Header=BB17_7 Depth=1
	move	$a0, $s5
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB17_17:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i
                                        #   in Loop: Header=BB17_7 Depth=1
	add.d	$a0, $s6, $s4
	addi.d	$a0, $a0, 4
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	st.d	$s6, $a3, 0
	st.d	$a0, $a3, 8
	alsl.d	$a0, $s1, $s6, 2
	st.d	$a0, $a3, 16
	move	$s1, $s8
	move	$s8, $fp
	move	$fp, $s0
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
.LBB17_18:                              # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
                                        #   in Loop: Header=BB17_7 Depth=1
	ld.d	$a0, $s0, 8
	ld.d	$a1, $s0, 16
	sub.d	$a2, $s3, $s1
	srli.d	$s2, $a2, 2
	bne	$a0, $a1, .LBB17_6
# %bb.19:                               #   in Loop: Header=BB17_7 Depth=1
	ld.d	$s5, $s0, 0
	sub.d	$s4, $a0, $s5
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	beq	$s4, $a0, .LBB17_26
# %bb.20:                               # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i15
                                        #   in Loop: Header=BB17_7 Depth=1
	srai.d	$a0, $s4, 2
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	sltu	$a2, $a0, $a3
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $a3, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a3, $a1
	or	$s3, $a1, $a0
	slli.d	$a0, $s3, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	stx.w	$s2, $a0, $s4
	blez	$s4, .LBB17_22
# %bb.21:                               #   in Loop: Header=BB17_7 Depth=1
	move	$a0, $s6
	move	$a1, $s5
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB17_22:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i17
                                        #   in Loop: Header=BB17_7 Depth=1
	beqz	$s5, .LBB17_24
# %bb.23:                               #   in Loop: Header=BB17_7 Depth=1
	move	$a0, $s5
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB17_24:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i19
                                        #   in Loop: Header=BB17_7 Depth=1
	add.d	$a0, $s6, $s4
	addi.d	$a0, $a0, 4
	st.d	$s6, $s0, 0
	st.d	$a0, $s0, 8
	alsl.d	$a0, $s3, $s6, 2
	st.d	$a0, $s0, 16
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	ld.w	$a0, $fp, 504
	addi.d	$s7, $s7, 1
	blt	$s7, $a0, .LBB17_7
.LBB17_25:                              # %._crit_edge
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
.LBB17_26:
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a0, $a0, %pc_lo12(.L.str.24)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Lfunc_end17:
	.size	_ZN4Mesh14getPlaneChunksEiPKiRSt6vectorIiSaIiEES5_, .Lfunc_end17-_ZN4Mesh14getPlaneChunksEiPKiRSt6vectorIiSaIiEES5_
	.cfi_endproc
                                        # -- End function
	.globl	_ZN4Mesh12calcSurfVecsEPK7double2S2_PS0_ii # -- Begin function _ZN4Mesh12calcSurfVecsEPK7double2S2_PS0_ii
	.p2align	5
	.type	_ZN4Mesh12calcSurfVecsEPK7double2S2_PS0_ii,@function
_ZN4Mesh12calcSurfVecsEPK7double2S2_PS0_ii: # @_ZN4Mesh12calcSurfVecsEPK7double2S2_PS0_ii
	.cfi_startproc
# %bb.0:
	bge	$a4, $a5, .LBB18_3
# %bb.1:                                # %.lr.ph
	ld.d	$a6, $a0, 104
	ld.d	$a7, $a0, 112
	alsl.d	$a0, $a4, $a6, 2
	alsl.d	$a6, $a4, $a7, 2
	alsl.d	$a3, $a4, $a3, 4
	addi.d	$a3, $a3, 8
	sub.d	$a4, $a5, $a4
	.p2align	4, , 16
.LBB18_2:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a6, 0
	ld.w	$a7, $a0, 0
	alsl.d	$t0, $a5, $a2, 4
	slli.d	$a5, $a5, 4
	alsl.d	$t1, $a7, $a1, 4
	slli.d	$a7, $a7, 4
	fldx.d	$fa0, $a2, $a5
	fldx.d	$fa1, $a1, $a7
	fld.d	$fa2, $t0, 8
	fld.d	$fa3, $t1, 8
	fsub.d	$fa0, $fa0, $fa1
	fsub.d	$fa1, $fa2, $fa3
	fneg.d	$fa1, $fa1
	fst.d	$fa1, $a3, -8
	fst.d	$fa0, $a3, 0
	addi.d	$a0, $a0, 4
	addi.d	$a6, $a6, 4
	addi.d	$a4, $a4, -1
	addi.d	$a3, $a3, 16
	bnez	$a4, .LBB18_2
.LBB18_3:                               # %._crit_edge
	ret
.Lfunc_end18:
	.size	_ZN4Mesh12calcSurfVecsEPK7double2S2_PS0_ii, .Lfunc_end18-_ZN4Mesh12calcSurfVecsEPK7double2S2_PS0_ii
	.cfi_endproc
                                        # -- End function
	.globl	_ZN4Mesh11calcEdgeLenEPK7double2Pdii # -- Begin function _ZN4Mesh11calcEdgeLenEPK7double2Pdii
	.p2align	5
	.type	_ZN4Mesh11calcEdgeLenEPK7double2Pdii,@function
_ZN4Mesh11calcEdgeLenEPK7double2Pdii:   # @_ZN4Mesh11calcEdgeLenEPK7double2Pdii
	.cfi_startproc
# %bb.0:
	bge	$a3, $a4, .LBB19_3
# %bb.1:                                # %.lr.ph
	ld.d	$a5, $a0, 88
	ld.d	$a6, $a0, 96
	ld.d	$a7, $a0, 112
	alsl.d	$a0, $a3, $a5, 2
	alsl.d	$a5, $a3, $a6, 2
	alsl.d	$a6, $a3, $a7, 2
	sub.d	$a3, $a4, $a3
	.p2align	4, , 16
.LBB19_2:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a5, 0
	ld.w	$a7, $a0, 0
	alsl.d	$t0, $a4, $a1, 4
	slli.d	$a4, $a4, 4
	alsl.d	$t1, $a7, $a1, 4
	slli.d	$a7, $a7, 4
	fldx.d	$fa0, $a1, $a4
	fldx.d	$fa1, $a1, $a7
	fld.d	$fa2, $t0, 8
	fld.d	$fa3, $t1, 8
	fsub.d	$fa0, $fa0, $fa1
	ld.w	$a4, $a6, 0
	fsub.d	$fa1, $fa2, $fa3
	fmul.d	$fa1, $fa1, $fa1
	fmadd.d	$fa0, $fa0, $fa0, $fa1
	fsqrt.d	$fa0, $fa0
	slli.d	$a4, $a4, 3
	fstx.d	$fa0, $a2, $a4
	addi.d	$a0, $a0, 4
	addi.d	$a5, $a5, 4
	addi.d	$a3, $a3, -1
	addi.d	$a6, $a6, 4
	bnez	$a3, .LBB19_2
.LBB19_3:                               # %._crit_edge
	ret
.Lfunc_end19:
	.size	_ZN4Mesh11calcEdgeLenEPK7double2Pdii, .Lfunc_end19-_ZN4Mesh11calcEdgeLenEPK7double2Pdii
	.cfi_endproc
                                        # -- End function
	.globl	_ZN4Mesh11calcCharLenEPKdPdii   # -- Begin function _ZN4Mesh11calcCharLenEPKdPdii
	.p2align	5
	.type	_ZN4Mesh11calcCharLenEPKdPdii,@function
_ZN4Mesh11calcCharLenEPKdPdii:          # @_ZN4Mesh11calcCharLenEPKdPdii
# %bb.0:
	ld.d	$a5, $a0, 104
	ld.w	$a6, $a0, 72
	slli.d	$a7, $a3, 2
	ldx.w	$t0, $a5, $a7
	slt	$a6, $a4, $a6
	alsl.d	$a7, $a4, $a5, 2
	addi.d	$t1, $a0, 68
	maskeqz	$a7, $a7, $a6
	masknez	$a6, $t1, $a6
	or	$a6, $a7, $a6
	ld.w	$a7, $a6, 0
	beq	$t0, $a7, .LBB20_7
# %bb.1:                                # %.lr.ph.i.i.i.preheader
	alsl.d	$a6, $t0, $a2, 3
	slli.d	$t3, $t0, 3
	slli.d	$t0, $a7, 3
	sub.d	$t0, $t0, $t3
	addi.d	$t1, $t0, -8
	ori	$t2, $zero, 56
	lu12i.w	$t0, -382855
	bltu	$t1, $t2, .LBB20_5
# %bb.2:                                # %vector.ph
	srli.d	$t1, $t1, 3
	addi.d	$t1, $t1, 1
	bstrpick.d	$t4, $t1, 61, 3
	slli.d	$t2, $t4, 3
	slli.d	$t4, $t4, 6
	add.d	$a6, $a6, $t4
	add.d	$t3, $t3, $a2
	addi.d	$t3, $t3, 32
	ori	$t4, $t0, 3886
	lu32i.d	$t4, -179538
	lu52i.d	$t4, $t4, 1351
	xvreplgr2vr.d	$xr0, $t4
	move	$t4, $t2
	.p2align	4, , 16
.LBB20_3:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $t3, -32
	xvst	$xr0, $t3, 0
	addi.d	$t4, $t4, -8
	addi.d	$t3, $t3, 64
	bnez	$t4, .LBB20_3
# %bb.4:                                # %middle.block
	beq	$t1, $t2, .LBB20_7
.LBB20_5:                               # %.lr.ph.i.i.i.preheader26
	alsl.d	$a7, $a7, $a2, 3
	ori	$t0, $t0, 3886
	lu32i.d	$t0, -179538
	lu52i.d	$t0, $t0, 1351
	.p2align	4, , 16
.LBB20_6:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	st.d	$t0, $a6, 0
	addi.d	$a6, $a6, 8
	bne	$a6, $a7, .LBB20_6
.LBB20_7:                               # %_ZSt4fillIPddEvT_S1_RKT0_.exit
	bge	$a3, $a4, .LBB20_10
# %bb.8:                                # %.lr.ph
	ld.d	$a7, $a0, 112
	ld.d	$a6, $a0, 376
	ld.d	$a0, $a0, 232
	alsl.d	$a5, $a3, $a5, 2
	alsl.d	$a7, $a3, $a7, 2
	alsl.d	$a1, $a3, $a1, 3
	sub.d	$a3, $a4, $a3
	vldi	$vr0, -1016
	vldi	$vr1, -1008
	.p2align	4, , 16
.LBB20_9:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a5, 0
	ld.w	$t0, $a7, 0
	slli.d	$t1, $a4, 2
	ldx.w	$t1, $a0, $t1
	slli.d	$t0, $t0, 3
	fldx.d	$fa2, $a6, $t0
	addi.d	$t0, $t1, -3
	sltui	$t0, $t0, 1
	fld.d	$fa3, $a1, 0
	movgr2cf	$fcc0, $t0
	slli.d	$a4, $a4, 3
	fldx.d	$fa4, $a2, $a4
	fsel	$fa5, $fa1, $fa0, $fcc0
	fmul.d	$fa3, $fa3, $fa5
	fdiv.d	$fa2, $fa3, $fa2
	fcmp.clt.d	$fcc0, $fa2, $fa4
	fsel	$fa2, $fa4, $fa2, $fcc0
	fstx.d	$fa2, $a2, $a4
	addi.d	$a5, $a5, 4
	addi.d	$a7, $a7, 4
	addi.d	$a3, $a3, -1
	addi.d	$a1, $a1, 8
	bnez	$a3, .LBB20_9
.LBB20_10:                              # %._crit_edge
	ret
.Lfunc_end20:
	.size	_ZN4Mesh11calcCharLenEPKdPdii, .Lfunc_end20-_ZN4Mesh11calcCharLenEPKdPdii
                                        # -- End function
	.globl	_ZN4Mesh11sumToPointsIdEEvPKT_PS1_ # -- Begin function _ZN4Mesh11sumToPointsIdEEvPKT_PS1_
	.p2align	5
	.type	_ZN4Mesh11sumToPointsIdEEvPKT_PS1_,@function
_ZN4Mesh11sumToPointsIdEEvPKT_PS1_:     # @_ZN4Mesh11sumToPointsIdEEvPKT_PS1_
# %bb.0:
	ld.w	$a3, $a0, 504
	blez	$a3, .LBB21_9
# %bb.1:                                # %.lr.ph29.i
	ld.d	$a4, $a0, 512
	ld.d	$a5, $a0, 536
	ld.d	$a6, $a0, 136
	move	$a7, $zero
	movgr2fr.d	$fa0, $zero
	b	.LBB21_3
	.p2align	4, , 16
.LBB21_2:                               # %._crit_edge26.i
                                        #   in Loop: Header=BB21_3 Depth=1
	addi.d	$a7, $a7, 1
	beq	$a7, $a3, .LBB21_9
.LBB21_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_6 Depth 2
                                        #       Child Loop BB21_8 Depth 3
	slli.d	$t1, $a7, 2
	ldx.w	$t0, $a4, $t1
	ldx.w	$t1, $a5, $t1
	bge	$t0, $t1, .LBB21_2
# %bb.4:                                # %.lr.ph25.i
                                        #   in Loop: Header=BB21_3 Depth=1
	ld.d	$t2, $a0, 144
	b	.LBB21_6
	.p2align	4, , 16
.LBB21_5:                               # %._crit_edge.i
                                        #   in Loop: Header=BB21_6 Depth=2
	slli.d	$t3, $t0, 3
	addi.d	$t0, $t0, 1
	fstx.d	$fa1, $a2, $t3
	beq	$t0, $t1, .LBB21_2
.LBB21_6:                               #   Parent Loop BB21_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB21_8 Depth 3
	slli.d	$t3, $t0, 2
	ldx.w	$t3, $a6, $t3
	fmov.d	$fa1, $fa0
	bltz	$t3, .LBB21_5
# %bb.7:                                # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB21_6 Depth=2
	bstrpick.d	$t3, $t3, 31, 0
	fmov.d	$fa1, $fa0
	.p2align	4, , 16
.LBB21_8:                               # %.lr.ph.i
                                        #   Parent Loop BB21_3 Depth=1
                                        #     Parent Loop BB21_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli.d	$t4, $t3, 3
	fldx.d	$fa2, $a1, $t4
	slli.d	$t3, $t3, 2
	ldx.w	$t4, $t2, $t3
	fadd.d	$fa1, $fa1, $fa2
	bstrpick.d	$t3, $t4, 31, 0
	bgez	$t4, .LBB21_8
	b	.LBB21_5
.LBB21_9:                               # %_ZN4Mesh9sumOnProcIdEEvPKT_PS1_.exit
	ret
.Lfunc_end21:
	.size	_ZN4Mesh11sumToPointsIdEEvPKT_PS1_, .Lfunc_end21-_ZN4Mesh11sumToPointsIdEEvPKT_PS1_
                                        # -- End function
	.globl	_ZN4Mesh11sumToPointsI7double2EEvPKT_PS2_ # -- Begin function _ZN4Mesh11sumToPointsI7double2EEvPKT_PS2_
	.p2align	5
	.type	_ZN4Mesh11sumToPointsI7double2EEvPKT_PS2_,@function
_ZN4Mesh11sumToPointsI7double2EEvPKT_PS2_: # @_ZN4Mesh11sumToPointsI7double2EEvPKT_PS2_
# %bb.0:
	ld.w	$a3, $a0, 504
	blez	$a3, .LBB22_9
# %bb.1:                                # %.lr.ph30.i
	ld.d	$a4, $a0, 512
	ld.d	$a5, $a0, 536
	ld.d	$a6, $a0, 136
	move	$a7, $zero
	vrepli.b	$vr0, 0
	b	.LBB22_3
	.p2align	4, , 16
.LBB22_2:                               # %._crit_edge27.i
                                        #   in Loop: Header=BB22_3 Depth=1
	addi.d	$a7, $a7, 1
	beq	$a7, $a3, .LBB22_9
.LBB22_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB22_6 Depth 2
                                        #       Child Loop BB22_8 Depth 3
	slli.d	$t1, $a7, 2
	ldx.w	$t0, $a4, $t1
	ldx.w	$t1, $a5, $t1
	bge	$t0, $t1, .LBB22_2
# %bb.4:                                # %.lr.ph26.i
                                        #   in Loop: Header=BB22_3 Depth=1
	ld.d	$t2, $a0, 144
	b	.LBB22_6
	.p2align	4, , 16
.LBB22_5:                               # %._crit_edge.i
                                        #   in Loop: Header=BB22_6 Depth=2
	slli.d	$t3, $t0, 4
	addi.d	$t0, $t0, 1
	vstx	$vr1, $a2, $t3
	beq	$t0, $t1, .LBB22_2
.LBB22_6:                               #   Parent Loop BB22_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB22_8 Depth 3
	slli.d	$t3, $t0, 2
	ldx.w	$t3, $a6, $t3
	vori.b	$vr1, $vr0, 0
	bltz	$t3, .LBB22_5
# %bb.7:                                # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB22_6 Depth=2
	bstrpick.d	$t3, $t3, 31, 0
	vori.b	$vr1, $vr0, 0
	.p2align	4, , 16
.LBB22_8:                               # %.lr.ph.i
                                        #   Parent Loop BB22_3 Depth=1
                                        #     Parent Loop BB22_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli.d	$t4, $t3, 4
	vldx	$vr2, $a1, $t4
	slli.d	$t3, $t3, 2
	ldx.w	$t4, $t2, $t3
	vfadd.d	$vr1, $vr1, $vr2
	bstrpick.d	$t3, $t4, 31, 0
	bgez	$t4, .LBB22_8
	b	.LBB22_5
.LBB22_9:                               # %_ZN4Mesh9sumOnProcI7double2EEvPKT_PS2_.exit
	ret
.Lfunc_end22:
	.size	_ZN4Mesh11sumToPointsI7double2EEvPKT_PS2_, .Lfunc_end22-_ZN4Mesh11sumToPointsI7double2EEvPKT_PS2_
                                        # -- End function
	.section	.text._ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_,"axG",@progbits,_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_,comdat
	.weak	_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_ # -- Begin function _ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_
	.p2align	5
	.type	_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_,@function
_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_: # @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_
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
	srai.d	$s1, $a0, 3
	ori	$a0, $zero, 17
	blt	$s1, $a0, .LBB23_10
# %bb.1:                                # %.lr.ph.preheader
	move	$s3, $a1
	beqz	$a2, .LBB23_5
# %bb.2:                                # %.lr.ph32.preheader
	addi.d	$s2, $a2, -1
	ori	$s4, $zero, 16
	addi.w	$s5, $zero, -1
	.p2align	4, , 16
.LBB23_3:                               # %.lr.ph32
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $fp
	move	$a1, $s3
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEET_SB_SB_T0_)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a1, $s3
	move	$a2, $s2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_)
	jirl	$ra, $ra, 0
	sub.d	$a0, $s0, $fp
	srai.d	$s1, $a0, 3
	bge	$s4, $s1, .LBB23_10
# %bb.4:                                # %.lr.ph
                                        #   in Loop: Header=BB23_3 Depth=1
	addi.d	$s2, $s2, -1
	move	$s3, $s0
	bne	$s2, $s5, .LBB23_3
	b	.LBB23_6
.LBB23_5:
	move	$s0, $s3
.LBB23_6:                               # %.lr.ph._crit_edge
	addi.d	$a0, $s1, -2
	srli.d	$s2, $a0, 1
	slli.d	$s3, $s2, 3
	addi.w	$s4, $zero, -1
	.p2align	4, , 16
.LBB23_7:                               # =>This Inner Loop Header: Depth=1
	ldx.d	$a3, $fp, $s3
	move	$a0, $fp
	move	$a1, $s2
	move	$a2, $s1
	move	$a4, $zero
	pcaddu18i	$ra, %call36(_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_less_iterEEvT_T0_SC_T1_T2_)
	jirl	$ra, $ra, 0
	addi.d	$s2, $s2, -1
	addi.d	$s3, $s3, -8
	bne	$s2, $s4, .LBB23_7
# %bb.8:                                # %.lr.ph.i9.i
	addi.d	$s1, $s0, -8
	sub.d	$s0, $s0, $fp
	ori	$s2, $zero, 8
	.p2align	4, , 16
.LBB23_9:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, 0
	ld.d	$a3, $s1, 0
	st.w	$a0, $s1, 0
	ld.w	$a0, $fp, 4
	st.w	$a0, $s1, 4
	addi.d	$s0, $s0, -8
	srai.d	$a2, $s0, 3
	move	$a0, $fp
	move	$a1, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_less_iterEEvT_T0_SC_T1_T2_)
	jirl	$ra, $ra, 0
	addi.d	$s1, $s1, -8
	blt	$s2, $s0, .LBB23_9
.LBB23_10:                              # %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_T0_.exit
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
.Lfunc_end23:
	.size	_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_, .Lfunc_end23-_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_,"axG",@progbits,_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_,comdat
	.weak	_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_ # -- Begin function _ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_
	.p2align	5
	.type	_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_,@function
_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_: # @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$fp, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 22, -8
	sub.d	$a2, $a1, $a0
	ori	$a3, $zero, 129
	blt	$a2, $a3, .LBB24_11
# %bb.1:
	addi.d	$a2, $a0, 128
	beqz	$zero, .LBB24_34
.LBB24_2:                               # %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_.exit
	beq	$a1, $a2, .LBB24_33
# %bb.3:                                # %.lr.ph.i10.preheader
	addi.d	$a0, $a0, 132
	b	.LBB24_5
	.p2align	4, , 16
.LBB24_4:                               # %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i17
                                        #   in Loop: Header=BB24_5 Depth=1
	st.d	$a3, $a5, -4
	addi.d	$a2, $a2, 8
	addi.d	$a0, $a0, 8
	beq	$a2, $a1, .LBB24_33
.LBB24_5:                               # %.lr.ph.i10
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB24_8 Depth 2
	ld.d	$a3, $a2, 0
	srli.d	$a5, $a3, 32
	addi.w	$a4, $a3, 0
	addi.w	$a6, $a5, 0
	move	$a5, $a0
	b	.LBB24_8
	.p2align	4, , 16
.LBB24_6:                               # %._ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIiiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread_crit_edge.i.i20
                                        #   in Loop: Header=BB24_8 Depth=2
	ld.w	$t0, $a5, -8
.LBB24_7:                               # %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIiiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i19
                                        #   in Loop: Header=BB24_8 Depth=2
	st.w	$a7, $a5, -4
	st.w	$t0, $a5, 0
	addi.d	$a5, $a5, -8
.LBB24_8:                               #   Parent Loop BB24_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a7, $a5, -12
	blt	$a4, $a7, .LBB24_6
# %bb.9:                                #   in Loop: Header=BB24_8 Depth=2
	blt	$a7, $a4, .LBB24_4
# %bb.10:                               # %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIiiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i16
                                        #   in Loop: Header=BB24_8 Depth=2
	ld.w	$t0, $a5, -8
	blt	$a6, $t0, .LBB24_7
	b	.LBB24_4
.LBB24_11:
	beq	$a1, $a0, .LBB24_33
# %bb.12:                               # %.preheader.i23
	addi.d	$a7, $a0, 8
	beq	$a7, $a1, .LBB24_33
# %bb.13:                               # %.lr.ph.i26
	addi.d	$a2, $a0, 4
	ori	$a3, $zero, 8
	ori	$a4, $zero, 1
	move	$a5, $a2
	move	$t0, $a0
	b	.LBB24_15
	.p2align	4, , 16
.LBB24_14:                              # %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i45
                                        #   in Loop: Header=BB24_15 Depth=1
	st.d	$a7, $a0, 0
	addi.d	$a7, $a6, 8
	addi.d	$a5, $a5, 8
	move	$t0, $a6
	beq	$a7, $a1, .LBB24_33
.LBB24_15:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB24_24 Depth 2
                                        #     Child Loop BB24_29 Depth 2
                                        #     Child Loop BB24_32 Depth 2
	move	$a6, $a7
	ld.w	$a7, $a7, 0
	ld.w	$t1, $a0, 0
	bge	$a7, $t1, .LBB24_19
.LBB24_16:                              # %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i44
                                        #   in Loop: Header=BB24_15 Depth=1
	ld.d	$a7, $a6, 0
	sub.d	$t2, $a6, $a0
	srai.d	$t1, $t2, 3
	blez	$t1, .LBB24_14
# %bb.17:                               # %.lr.ph.i.i.i.i.i.preheader.i46
                                        #   in Loop: Header=BB24_15 Depth=1
	addi.d	$t0, $t0, 16
	bne	$t2, $a3, .LBB24_28
# %bb.18:                               #   in Loop: Header=BB24_15 Depth=1
	move	$t2, $t1
	move	$t3, $a6
	b	.LBB24_31
	.p2align	4, , 16
.LBB24_19:                              #   in Loop: Header=BB24_15 Depth=1
	blt	$t1, $a7, .LBB24_21
# %bb.20:                               # %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i29
                                        #   in Loop: Header=BB24_15 Depth=1
	ld.w	$a7, $t0, 12
	ld.w	$t1, $a2, 0
	blt	$a7, $t1, .LBB24_16
.LBB24_21:                              # %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread19.i30
                                        #   in Loop: Header=BB24_15 Depth=1
	ld.d	$a7, $a6, 0
	srli.d	$t0, $a7, 32
	addi.w	$t0, $t0, 0
	move	$t1, $a6
	b	.LBB24_24
	.p2align	4, , 16
.LBB24_22:                              # %._ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIiiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread_crit_edge.i.i41
                                        #   in Loop: Header=BB24_24 Depth=2
	ld.w	$t3, $t1, -4
.LBB24_23:                              # %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIiiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i40
                                        #   in Loop: Header=BB24_24 Depth=2
	st.w	$t2, $t1, 0
	addi.d	$t2, $t1, -8
	st.w	$t3, $t1, 4
	move	$t1, $t2
.LBB24_24:                              #   Parent Loop BB24_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t2, $t1, -8
	addi.w	$t3, $a7, 0
	blt	$t3, $t2, .LBB24_22
# %bb.25:                               #   in Loop: Header=BB24_24 Depth=2
	blt	$t2, $t3, .LBB24_27
# %bb.26:                               # %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIiiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i36
                                        #   in Loop: Header=BB24_24 Depth=2
	ld.w	$t3, $t1, -4
	blt	$t0, $t3, .LBB24_23
.LBB24_27:                              # %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i37
                                        #   in Loop: Header=BB24_15 Depth=1
	st.d	$a7, $t1, 0
	addi.d	$a7, $a6, 8
	addi.d	$a5, $a5, 8
	move	$t0, $a6
	bne	$a7, $a1, .LBB24_15
	b	.LBB24_33
.LBB24_28:                              # %vector.ph
                                        #   in Loop: Header=BB24_15 Depth=1
	bstrpick.d	$t3, $t1, 62, 1
	slli.d	$t4, $t3, 1
	andi	$t2, $t1, 1
	slli.d	$t3, $t3, 4
	sub.d	$t0, $t0, $t3
	sub.d	$t3, $a6, $t3
	move	$t5, $a5
	move	$t6, $t4
	.p2align	4, , 16
.LBB24_29:                              # %vector.body
                                        #   Parent Loop BB24_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $t5, -12
	vst	$vr0, $t5, -4
	addi.d	$t6, $t6, -2
	addi.d	$t5, $t5, -16
	bnez	$t6, .LBB24_29
# %bb.30:                               # %middle.block
                                        #   in Loop: Header=BB24_15 Depth=1
	beq	$t1, $t4, .LBB24_14
.LBB24_31:                              # %.lr.ph.i.i.i.i.i.i47.preheader
                                        #   in Loop: Header=BB24_15 Depth=1
	addi.d	$t1, $t2, 1
	addi.d	$t0, $t0, -4
	addi.d	$t2, $t3, -4
	.p2align	4, , 16
.LBB24_32:                              # %.lr.ph.i.i.i.i.i.i47
                                        #   Parent Loop BB24_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t3, $t2, -4
	st.w	$t3, $t0, -4
	ld.w	$t3, $t2, 0
	st.w	$t3, $t0, 0
	addi.d	$t1, $t1, -1
	addi.d	$t0, $t0, -8
	addi.d	$t2, $t2, -8
	bltu	$a4, $t1, .LBB24_32
	b	.LBB24_14
.LBB24_33:                              # %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_.exit
	ld.d	$fp, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB24_34:                              # %.lr.ph.i
	addi.d	$a3, $a0, 4
	ori	$a4, $zero, 8
	ori	$a5, $zero, 1
	ori	$a6, $zero, 128
	move	$a7, $a3
	ori	$t0, $zero, 8
	move	$t3, $a0
	b	.LBB24_36
	.p2align	4, , 16
.LBB24_35:                              # %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i
                                        #   in Loop: Header=BB24_36 Depth=1
	st.d	$t2, $a0, 0
	addi.d	$t0, $t0, 8
	addi.d	$a7, $a7, 8
	move	$t3, $t1
	beq	$t0, $a6, .LBB24_2
.LBB24_36:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB24_45 Depth 2
                                        #     Child Loop BB24_50 Depth 2
                                        #     Child Loop BB24_53 Depth 2
	ldx.w	$t2, $a0, $t0
	ld.w	$t4, $a0, 0
	add.d	$t1, $a0, $t0
	bge	$t2, $t4, .LBB24_40
.LBB24_37:                              # %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i
                                        #   in Loop: Header=BB24_36 Depth=1
	ld.d	$t2, $t1, 0
	sub.d	$t5, $t1, $a0
	srai.d	$t4, $t5, 3
	blez	$t4, .LBB24_35
# %bb.38:                               # %.lr.ph.i.i.i.i.i.preheader.i
                                        #   in Loop: Header=BB24_36 Depth=1
	addi.d	$t3, $t3, 16
	bne	$t5, $a4, .LBB24_49
# %bb.39:                               #   in Loop: Header=BB24_36 Depth=1
	move	$t5, $t4
	move	$t6, $t1
	b	.LBB24_52
	.p2align	4, , 16
.LBB24_40:                              #   in Loop: Header=BB24_36 Depth=1
	blt	$t4, $t2, .LBB24_42
# %bb.41:                               # %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i
                                        #   in Loop: Header=BB24_36 Depth=1
	ld.w	$t2, $t3, 12
	ld.w	$t4, $a3, 0
	blt	$t2, $t4, .LBB24_37
.LBB24_42:                              # %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread19.i
                                        #   in Loop: Header=BB24_36 Depth=1
	ld.d	$t2, $t1, 0
	srli.d	$t3, $t2, 32
	addi.w	$t3, $t3, 0
	move	$t4, $t1
	b	.LBB24_45
	.p2align	4, , 16
.LBB24_43:                              # %._ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIiiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread_crit_edge.i.i
                                        #   in Loop: Header=BB24_45 Depth=2
	ld.w	$t6, $t4, -4
.LBB24_44:                              # %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIiiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i
                                        #   in Loop: Header=BB24_45 Depth=2
	st.w	$t5, $t4, 0
	addi.d	$t5, $t4, -8
	st.w	$t6, $t4, 4
	move	$t4, $t5
.LBB24_45:                              #   Parent Loop BB24_36 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t5, $t4, -8
	addi.w	$t6, $t2, 0
	blt	$t6, $t5, .LBB24_43
# %bb.46:                               #   in Loop: Header=BB24_45 Depth=2
	blt	$t5, $t6, .LBB24_48
# %bb.47:                               # %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIiiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i
                                        #   in Loop: Header=BB24_45 Depth=2
	ld.w	$t6, $t4, -4
	blt	$t3, $t6, .LBB24_44
.LBB24_48:                              # %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i
                                        #   in Loop: Header=BB24_36 Depth=1
	st.d	$t2, $t4, 0
	addi.d	$t0, $t0, 8
	addi.d	$a7, $a7, 8
	move	$t3, $t1
	bne	$t0, $a6, .LBB24_36
	b	.LBB24_2
.LBB24_49:                              # %vector.ph81
                                        #   in Loop: Header=BB24_36 Depth=1
	bstrpick.d	$t6, $t4, 62, 1
	slli.d	$t7, $t6, 1
	andi	$t5, $t4, 1
	slli.d	$t6, $t6, 4
	sub.d	$t3, $t3, $t6
	sub.d	$t6, $t1, $t6
	move	$t8, $a7
	move	$fp, $t7
	.p2align	4, , 16
.LBB24_50:                              # %vector.body84
                                        #   Parent Loop BB24_36 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $t8, -12
	vst	$vr0, $t8, -4
	addi.d	$fp, $fp, -2
	addi.d	$t8, $t8, -16
	bnez	$fp, .LBB24_50
# %bb.51:                               # %middle.block93
                                        #   in Loop: Header=BB24_36 Depth=1
	beq	$t4, $t7, .LBB24_35
.LBB24_52:                              # %.lr.ph.i.i.i.i.i.i.preheader
                                        #   in Loop: Header=BB24_36 Depth=1
	addi.d	$t4, $t5, 1
	addi.d	$t3, $t3, -4
	addi.d	$t5, $t6, -4
	.p2align	4, , 16
.LBB24_53:                              # %.lr.ph.i.i.i.i.i.i
                                        #   Parent Loop BB24_36 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t6, $t5, -4
	st.w	$t6, $t3, -4
	ld.w	$t6, $t5, 0
	st.w	$t6, $t3, 0
	addi.d	$t4, $t4, -1
	addi.d	$t3, $t3, -8
	addi.d	$t5, $t5, -8
	bltu	$a5, $t4, .LBB24_53
	b	.LBB24_35
.Lfunc_end24:
	.size	_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_, .Lfunc_end24-_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEET_SB_SB_T0_,"axG",@progbits,_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEET_SB_SB_T0_,comdat
	.weak	_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEET_SB_SB_T0_ # -- Begin function _ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEET_SB_SB_T0_
	.p2align	5
	.type	_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEET_SB_SB_T0_,@function
_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEET_SB_SB_T0_: # @_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEET_SB_SB_T0_
	.cfi_startproc
# %bb.0:
	sub.d	$a2, $a1, $a0
	srai.d	$a3, $a2, 3
	srli.d	$a2, $a2, 63
	add.d	$a2, $a3, $a2
	slli.d	$a2, $a2, 2
	addi.w	$a3, $zero, -8
	and	$a2, $a2, $a3
	ld.w	$a5, $a0, 8
	ldx.w	$a6, $a0, $a2
	add.d	$a4, $a0, $a2
	addi.d	$a2, $a0, 8
	addi.d	$a3, $a1, -8
	bge	$a5, $a6, .LBB25_3
.LBB25_1:                               # %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i
	ld.w	$t1, $a3, 0
	bge	$a6, $t1, .LBB25_11
.LBB25_2:                               # %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit29.thread34.i
	move	$a7, $a6
	move	$t0, $a4
	b	.LBB25_18
.LBB25_3:
	blt	$a6, $a5, .LBB25_5
# %bb.4:                                # %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i
	ld.w	$a7, $a0, 12
	ld.w	$t0, $a4, 4
	blt	$a7, $t0, .LBB25_1
.LBB25_5:                               # %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread30.i
	ld.w	$t1, $a3, 0
	blt	$a5, $t1, .LBB25_17
# %bb.6:
	blt	$t1, $a5, .LBB25_8
# %bb.7:                                # %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit28.i
	ld.w	$t2, $a0, 12
	ld.w	$t3, $a1, -4
	move	$a7, $a5
	move	$t0, $a2
	blt	$t2, $t3, .LBB25_18
.LBB25_8:                               # %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit28.thread33.i
	blt	$a6, $t1, .LBB25_14
# %bb.9:
	blt	$t1, $a6, .LBB25_2
# %bb.10:                               # %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit29.i
	ld.w	$a5, $a4, 4
	ld.w	$t2, $a1, -4
	move	$a7, $t1
	move	$t0, $a3
	bge	$a5, $t2, .LBB25_2
	b	.LBB25_18
.LBB25_11:
	blt	$t1, $a6, .LBB25_13
# %bb.12:                               # %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit26.i
	ld.w	$t2, $a4, 4
	ld.w	$t3, $a1, -4
	move	$a7, $a6
	move	$t0, $a4
	blt	$t2, $t3, .LBB25_18
.LBB25_13:                              # %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit26.thread31.i
	bge	$a5, $t1, .LBB25_15
.LBB25_14:
	move	$a7, $t1
	move	$t0, $a3
	b	.LBB25_18
.LBB25_15:
	blt	$t1, $a5, .LBB25_17
# %bb.16:                               # %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit27.i
	ld.w	$a4, $a0, 12
	ld.w	$a6, $a1, -4
	move	$a7, $t1
	move	$t0, $a3
	blt	$a4, $a6, .LBB25_18
.LBB25_17:                              # %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit27.thread32.i
	move	$a7, $a5
	move	$t0, $a2
.LBB25_18:                              # %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_.exit
	ld.w	$a3, $a0, 0
	st.w	$a7, $a0, 0
	st.w	$a3, $t0, 0
	ld.w	$a3, $t0, 4
	ld.w	$a4, $a0, 4
	st.w	$a3, $a0, 4
	st.w	$a4, $t0, 4
	.p2align	4, , 16
.LBB25_19:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB25_21 Depth 2
                                        #     Child Loop BB25_24 Depth 2
	ld.w	$a4, $a0, 0
	move	$a3, $a2
	b	.LBB25_21
	.p2align	4, , 16
.LBB25_20:                              # %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i13
                                        #   in Loop: Header=BB25_21 Depth=2
	addi.d	$a3, $a3, 8
	addi.d	$a2, $a2, 8
.LBB25_21:                              #   Parent Loop BB25_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a5, $a3, 0
	blt	$a5, $a4, .LBB25_20
# %bb.22:                               #   in Loop: Header=BB25_21 Depth=2
	blt	$a4, $a5, .LBB25_24
# %bb.23:                               # %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i12
                                        #   in Loop: Header=BB25_21 Depth=2
	ld.w	$a6, $a3, 4
	ld.w	$a7, $a0, 4
	blt	$a6, $a7, .LBB25_20
	.p2align	4, , 16
.LBB25_24:                              # %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread15.i.preheader
                                        #   Parent Loop BB25_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a1, $a1, -8
	ld.w	$a6, $a1, 0
	blt	$a4, $a6, .LBB25_24
# %bb.25:                               #   in Loop: Header=BB25_24 Depth=2
	blt	$a6, $a4, .LBB25_27
# %bb.26:                               # %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit8.i
                                        #   in Loop: Header=BB25_24 Depth=2
	ld.w	$a7, $a0, 4
	ld.w	$t0, $a1, 4
	blt	$a7, $t0, .LBB25_24
.LBB25_27:                              # %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit8.thread16.i
                                        #   in Loop: Header=BB25_19 Depth=1
	bgeu	$a3, $a1, .LBB25_29
# %bb.28:                               #   in Loop: Header=BB25_19 Depth=1
	st.w	$a6, $a3, 0
	st.w	$a5, $a1, 0
	ld.w	$a2, $a1, 4
	ld.w	$a4, $a3, 4
	st.w	$a2, $a3, 4
	st.w	$a4, $a1, 4
	addi.d	$a2, $a3, 8
	b	.LBB25_19
.LBB25_29:                              # %_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEET_SB_SB_SB_T0_.exit
	move	$a0, $a2
	ret
.Lfunc_end25:
	.size	_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEET_SB_SB_T0_, .Lfunc_end25-_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEET_SB_SB_T0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_less_iterEEvT_T0_SC_T1_T2_,"axG",@progbits,_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_less_iterEEvT_T0_SC_T1_T2_,comdat
	.weak	_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_less_iterEEvT_T0_SC_T1_T2_ # -- Begin function _ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_less_iterEEvT_T0_SC_T1_T2_
	.p2align	5
	.type	_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_less_iterEEvT_T0_SC_T1_T2_,@function
_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_less_iterEEvT_T0_SC_T1_T2_: # @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_less_iterEEvT_T0_SC_T1_T2_
	.cfi_startproc
# %bb.0:
	addi.d	$a4, $a2, -1
	srli.d	$a5, $a4, 63
	add.d	$a4, $a4, $a5
	srai.d	$a5, $a4, 1
	move	$a4, $a1
	bge	$a1, $a5, .LBB26_7
# %bb.1:                                # %.lr.ph.preheader
	move	$a6, $a1
	b	.LBB26_4
	.p2align	4, , 16
.LBB26_2:                               # %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread
                                        #   in Loop: Header=BB26_4 Depth=1
	move	$a7, $t1
	move	$a4, $t0
.LBB26_3:                               # %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread39
                                        #   in Loop: Header=BB26_4 Depth=1
	alsl.d	$t0, $a4, $a0, 3
	ld.w	$t0, $t0, 4
	alsl.d	$t1, $a6, $a0, 3
	slli.d	$a6, $a6, 3
	stx.w	$a7, $a0, $a6
	st.w	$t0, $t1, 4
	move	$a6, $a4
	bge	$a4, $a5, .LBB26_7
.LBB26_4:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$a7, $a6, 1
	addi.d	$a4, $a7, 2
	slli.d	$t1, $a4, 3
	addi.d	$t0, $a7, 1
	slli.d	$t2, $t0, 3
	ldx.w	$a7, $a0, $t1
	ldx.w	$t1, $a0, $t2
	blt	$a7, $t1, .LBB26_2
# %bb.5:                                #   in Loop: Header=BB26_4 Depth=1
	blt	$t1, $a7, .LBB26_3
# %bb.6:                                # %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit
                                        #   in Loop: Header=BB26_4 Depth=1
	alsl.d	$t2, $a4, $a0, 3
	alsl.d	$t3, $t0, $a0, 3
	ld.w	$t2, $t2, 4
	ld.w	$t3, $t3, 4
	blt	$t2, $t3, .LBB26_2
	b	.LBB26_3
.LBB26_7:                               # %._crit_edge
	andi	$a5, $a2, 1
	bnez	$a5, .LBB26_10
# %bb.8:
	addi.d	$a2, $a2, -2
	srai.d	$a2, $a2, 1
	bne	$a4, $a2, .LBB26_10
# %bb.9:
	slli.d	$a2, $a4, 1
	addi.d	$a2, $a2, 1
	slli.d	$a5, $a2, 3
	ldx.d	$a5, $a0, $a5
	slli.d	$a4, $a4, 3
	stx.d	$a5, $a0, $a4
	move	$a4, $a2
.LBB26_10:
	bge	$a1, $a4, .LBB26_17
# %bb.11:                               # %.lr.ph.i.preheader
	srli.d	$a5, $a3, 32
	addi.w	$a2, $a3, 0
	addi.w	$a6, $a5, 0
	b	.LBB26_14
	.p2align	4, , 16
.LBB26_12:                              # %.lr.ph._ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread_crit_edge.i
                                        #   in Loop: Header=BB26_14 Depth=1
	ld.w	$t0, $t0, 4
.LBB26_13:                              # %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.thread.i
                                        #   in Loop: Header=BB26_14 Depth=1
	alsl.d	$t1, $a4, $a0, 3
	slli.d	$a4, $a4, 3
	stx.w	$a7, $a0, $a4
	st.w	$t0, $t1, 4
	move	$a4, $a5
	bge	$a1, $a5, .LBB26_18
.LBB26_14:                              # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a5, $a4, -1
	srli.d	$a7, $a5, 63
	add.d	$a5, $a5, $a7
	srai.d	$a5, $a5, 1
	slli.d	$a7, $a5, 3
	ldx.w	$a7, $a0, $a7
	alsl.d	$t0, $a5, $a0, 3
	blt	$a7, $a2, .LBB26_12
# %bb.15:                               #   in Loop: Header=BB26_14 Depth=1
	blt	$a2, $a7, .LBB26_17
# %bb.16:                               # %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIiiESt6vectorIS5_SaIS5_EEEES5_EEbT_RT0_.exit.i
                                        #   in Loop: Header=BB26_14 Depth=1
	ld.w	$t0, $t0, 4
	blt	$t0, $a6, .LBB26_13
.LBB26_17:
	move	$a5, $a4
.LBB26_18:                              # %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_less_valEEvT_T0_SC_T1_RT2_.exit
	slli.d	$a1, $a5, 3
	stx.d	$a3, $a0, $a1
	ret
.Lfunc_end26:
	.size	_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_less_iterEEvT_T0_SC_T1_T2_, .Lfunc_end26-_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_less_iterEEvT_T0_SC_T1_T2_
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str:
	.asciz	"chunksize"
	.size	.L.str, 10

	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"Error: bad chunksize "
	.size	.L.str.1, 22

	.type	.L.str.2,@object                # @.str.2
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.2:
	.asciz	"subregion"
	.size	.L.str.2, 10

	.type	.L.str.3,@object                # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"Error:  subregion must have 4 entries"
	.size	.L.str.3, 38

	.type	.L.str.4,@object                # @.str.4
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.4:
	.asciz	"writexy"
	.size	.L.str.4, 8

	.type	.L.str.5,@object                # @.str.5
	.p2align	3, 0x0
.L.str.5:
	.asciz	"writegold"
	.size	.L.str.5, 10

	.type	.L.str.6,@object                # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"--- Mesh Information ---"
	.size	.L.str.6, 25

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"Points:  "
	.size	.L.str.7, 10

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"Zones:  "
	.size	.L.str.8, 9

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"Sides:  "
	.size	.L.str.9, 9

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"Edges:  "
	.size	.L.str.10, 9

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"Side chunks:  "
	.size	.L.str.11, 15

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"Point chunks:  "
	.size	.L.str.12, 16

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"Zone chunks:  "
	.size	.L.str.13, 15

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"Chunk size:  "
	.size	.L.str.14, 14

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"------------------------"
	.size	.L.str.15, 25

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"Writing .xy file..."
	.size	.L.str.16, 20

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"Writing gold file..."
	.size	.L.str.17, 21

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"Error: "
	.size	.L.str.18, 8

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	" negative side volumes"
	.size	.L.str.19, 23

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"Exiting..."
	.size	.L.str.20, 11

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"cannot create std::vector larger than max_size()"
	.size	.L.str.23, 49

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"vector::_M_realloc_append"
	.size	.L.str.24, 26

	.globl	_ZN4MeshC1EPK9InputFile
	.type	_ZN4MeshC1EPK9InputFile,@function
_ZN4MeshC1EPK9InputFile = _ZN4MeshC2EPK9InputFile
	.globl	_ZN4MeshD1Ev
	.type	_ZN4MeshD1Ev,@function
_ZN4MeshD1Ev = _ZN4MeshD2Ev
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
	.addrsig_sym _ZSt4cerr
	.addrsig_sym _ZSt4cout
