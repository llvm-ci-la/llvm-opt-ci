	.file	"GenMesh.cc"
                                        # Start of file scope inline assembly
	.globl	_ZSt21ios_base_library_initv

                                        # End of file scope inline assembly
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN7GenMeshC2EPK9InputFile
.LCPI0_0:
	.dword	8                               # 0x8
	.dword	7309475736097875309             # 0x657079746873656d
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI0_1:
	.dword	0x4071abe4b73fefb5              # double 282.74333882308139
.LCPI0_2:
	.dword	0x400921fb54442d18              # double 3.1415926535897931
.LCPI0_3:
	.dword	0x4066800000000000              # double 180
.LCPI0_4:
	.dword	0x401921fb54442d18              # double 6.2831853071795862
	.text
	.globl	_ZN7GenMeshC2EPK9InputFile
	.p2align	5
	.type	_ZN7GenMeshC2EPK9InputFile,@function
_ZN7GenMeshC2EPK9InputFile:             # @_ZN7GenMeshC2EPK9InputFile
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
# %bb.0:                                # %._crit_edge.i.i
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
	move	$fp, $a0
	addi.d	$s3, $a0, 16
	st.d	$s3, $a0, 0
	st.d	$zero, $a0, 8
	pcalau12i	$a0, %pc_hi20(.LCPI0_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI0_0)
	st.b	$zero, $fp, 16
	addi.d	$s1, $sp, 88
	st.d	$s1, $sp, 72
	vst	$vr0, $sp, 80
	st.b	$zero, $sp, 96
	addi.d	$s2, $sp, 56
	st.d	$s2, $sp, 40
	st.d	$zero, $sp, 48
	st.b	$zero, $sp, 56
.Ltmp0:                                 # EH_LABEL
	addi.d	$a0, $sp, 104
	addi.d	$a2, $sp, 72
	addi.d	$a3, $sp, 40
	pcaddu18i	$ra, %call36(_ZNK9InputFile9getStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.1:
	ld.d	$a0, $fp, 0
	beq	$a0, $s3, .LBB0_5
# %bb.2:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
	ld.d	$a1, $sp, 104
	addi.d	$a2, $sp, 120
	beq	$a1, $a2, .LBB0_8
# %bb.3:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
	vld	$vr0, $sp, 112
	ld.d	$a3, $fp, 16
	st.d	$a1, $fp, 0
	vst	$vr0, $fp, 8
	beqz	$a0, .LBB0_7
# %bb.4:
	st.d	$a0, $sp, 104
	st.d	$a3, $sp, 120
	b	.LBB0_14
.LBB0_5:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
	ld.d	$a1, $sp, 104
	addi.d	$a2, $sp, 120
	beq	$a1, $a2, .LBB0_8
# %bb.6:                                # %.thread.i
	vld	$vr0, $sp, 112
	st.d	$a1, $fp, 0
	vst	$vr0, $fp, 8
.LBB0_7:
	st.d	$a2, $sp, 104
	move	$a0, $a2
	b	.LBB0_14
.LBB0_8:
	addi.d	$a2, $sp, 104
	beq	$a2, $fp, .LBB0_54
# %bb.9:
	ld.d	$a2, $sp, 112
	beqz	$a2, .LBB0_13
# %bb.10:
	ori	$a3, $zero, 1
	bne	$a2, $a3, .LBB0_12
# %bb.11:
	ld.b	$a1, $a1, 0
	st.b	$a1, $a0, 0
	b	.LBB0_13
.LBB0_12:
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB0_13:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
	ld.d	$a0, $sp, 112
	ld.d	$a1, $fp, 0
	st.d	$a0, $fp, 8
	stx.b	$zero, $a1, $a0
	ld.d	$a0, $sp, 104
.LBB0_14:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
	st.d	$zero, $sp, 112
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 104
	addi.d	$s4, $sp, 120
	beq	$a0, $s4, .LBB0_16
# %bb.15:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a1, $sp, 120
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_16:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$a0, $sp, 40
	beq	$a0, $s2, .LBB0_18
# %bb.17:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
	ld.d	$a1, $sp, 56
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_18:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27
	ld.d	$a0, $sp, 72
	beq	$a0, $s1, .LBB0_20
# %bb.19:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28
	ld.d	$a1, $sp, 88
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_20:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30
	ld.d	$s1, $fp, 8
	ori	$a0, $zero, 3
	beq	$s1, $a0, .LBB0_23
# %bb.21:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30
	ori	$a0, $zero, 4
	bne	$s1, $a0, .LBB0_58
# %bb.22:                               # %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit40
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
	move	$a2, $s1
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_25
	b	.LBB0_62
.LBB0_23:                               # %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
	ld.d	$s2, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a1, $a0, %pc_lo12(.L.str.3)
	ori	$a2, $zero, 3
	move	$a0, $s2
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_25
# %bb.24:                               # %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit42
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a1, $a0, %pc_lo12(.L.str.5)
	move	$a0, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_62
.LBB0_25:                               # %._crit_edge.i.i48
	st.d	$s4, $sp, 104
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	ld.d	$a1, $a0, 0
	ld.h	$a0, $a0, 8
	st.d	$a1, $sp, 120
	st.h	$a0, $sp, 128
	ori	$a0, $zero, 10
	st.d	$a0, $sp, 112
	st.b	$zero, $sp, 130
	st.d	$zero, $sp, 56
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 40
.Ltmp3:                                 # EH_LABEL
	addi.d	$a0, $sp, 72
	addi.d	$a2, $sp, 104
	addi.d	$a3, $sp, 40
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZNK9InputFile13getDoubleListERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIdSaIdEE)
	jirl	$ra, $ra, 0
.Ltmp4:                                 # EH_LABEL
# %bb.26:
	ld.d	$a0, $sp, 40
	beqz	$a0, .LBB0_28
# %bb.27:
	ld.d	$a1, $sp, 56
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_28:                               # %_ZNSt6vectorIdSaIdEED2Ev.exit
	ld.d	$a0, $sp, 104
	beq	$a0, $s4, .LBB0_30
# %bb.29:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52
	ld.d	$a1, $sp, 120
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_30:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54
	ld.d	$s0, $sp, 72
	ld.d	$a0, $sp, 80
	beq	$s0, $a0, .LBB0_66
# %bb.31:
	sub.d	$s4, $a0, $s0
	srai.d	$s6, $s4, 3
	ori	$a0, $zero, 5
	bgeu	$s6, $a0, .LBB0_69
# %bb.32:
	fld.d	$fa0, $s0, 0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$s1, $fa0
	ori	$a0, $zero, 2
	st.w	$s1, $fp, 32
	bltu	$s6, $a0, .LBB0_34
# %bb.33:
	fld.d	$fa0, $s0, 8
	b	.LBB0_35
.LBB0_34:
	movgr2fr.w	$fa0, $s1
	ffint.d.w	$fa0, $fa0
.LBB0_35:
	ld.d	$s2, $fp, 8
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$s5, $fa0
	ori	$s7, $zero, 3
	st.w	$s5, $fp, 36
	bne	$s2, $s7, .LBB0_37
# %bb.36:                               # %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit71
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	ori	$a2, $zero, 3
	ori	$s8, $zero, 3
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_50
.LBB0_37:                               # %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit71.thread
	bltu	$s6, $s7, .LBB0_40
# %bb.38:
	fld.d	$fa2, $s0, 16
	ori	$a0, $zero, 32
	fst.d	$fa2, $fp, 40
	bne	$s4, $a0, .LBB0_41
.LBB0_39:
	fld.d	$fa0, $s0, 24
	b	.LBB0_42
.LBB0_40:
	vldi	$vr2, -912
	ori	$a0, $zero, 32
	fst.d	$fa2, $fp, 40
	beq	$s4, $a0, .LBB0_39
.LBB0_41:
	vldi	$vr0, -912
.LBB0_42:
	fst.d	$fa0, $fp, 48
	blez	$s1, .LBB0_55
# %bb.43:
	blez	$s5, .LBB0_55
# %bb.44:
	movgr2fr.d	$fa1, $zero
	fcmp.cle.d	$fcc0, $fa2, $fa1
	bcnez	$fcc0, .LBB0_55
# %bb.45:
	fcmp.cult.d	$fcc0, $fa1, $fa0
	bceqz	$fcc0, .LBB0_55
# %bb.46:
	ori	$a0, $zero, 3
	bne	$s2, $a0, .LBB0_49
# %bb.47:                               # %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	ori	$a2, $zero, 3
	vst	$vr2, $sp, 16                   # 16-byte Folded Spill
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.LCPI0_4)
	fld.d	$fa0, $a1, %pc_lo12(.LCPI0_4)
	vld	$vr1, $sp, 16                   # 16-byte Folded Reload
	fcmp.cult.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB0_49
# %bb.48:                               # %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
	beqz	$a0, .LBB0_72
.LBB0_49:                               # %_ZNSt6vectorIdSaIdEED2Ev.exit81
	ld.d	$a0, $sp, 88
	sub.d	$a1, $a0, $s0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
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
.LBB0_50:                               # %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit71.thread87
	bltu	$s6, $s8, .LBB0_52
# %bb.51:
	fld.d	$fa0, $s0, 16
	pcalau12i	$a0, %pc_hi20(.LCPI0_2)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI0_2)
	fmul.d	$fa0, $fa0, $fa1
	b	.LBB0_53
.LBB0_52:
	pcalau12i	$a0, %pc_hi20(.LCPI0_1)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI0_1)
.LBB0_53:
	pcalau12i	$a0, %pc_hi20(.LCPI0_3)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI0_3)
	fdiv.d	$fa2, $fa0, $fa1
	ori	$a0, $zero, 32
	fst.d	$fa2, $fp, 40
	beq	$s4, $a0, .LBB0_39
	b	.LBB0_41
.LBB0_54:
	move	$a0, $a1
	b	.LBB0_14
.LBB0_55:
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZN8Parallel4mypeE)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB0_75
# %bb.56:
.Ltmp10:                                # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.10)
	addi.d	$a1, $a1, %pc_lo12(.L.str.10)
	ori	$a2, $zero, 42
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp11:                                # EH_LABEL
# %bb.57:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73
.Ltmp12:                                # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcaddu18i	$ra, %call36(_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
	jirl	$ra, $ra, 0
.Ltmp13:                                # EH_LABEL
	b	.LBB0_75
.LBB0_58:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30
	bnez	$s1, .LBB0_62
# %bb.59:
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZN8Parallel4mypeE)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB0_75
# %bb.60:
.Ltmp23:                                # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	ori	$a2, $zero, 29
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp24:                                # EH_LABEL
# %bb.61:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
.Ltmp25:                                # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcaddu18i	$ra, %call36(_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
	jirl	$ra, $ra, 0
.Ltmp26:                                # EH_LABEL
	b	.LBB0_75
.LBB0_62:                               # %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit42.thread
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZN8Parallel4mypeE)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB0_75
# %bb.63:
.Ltmp27:                                # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.6)
	addi.d	$a1, $a1, %pc_lo12(.L.str.6)
	ori	$a2, $zero, 25
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp28:                                # EH_LABEL
# %bb.64:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit44
	ld.d	$a1, $fp, 0
	ld.d	$a2, $fp, 8
.Ltmp29:                                # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp30:                                # EH_LABEL
# %bb.65:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
.Ltmp31:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
	jirl	$ra, $ra, 0
.Ltmp32:                                # EH_LABEL
	b	.LBB0_75
.LBB0_66:
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZN8Parallel4mypeE)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB0_75
# %bb.67:
.Ltmp18:                                # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.8)
	addi.d	$a1, $a1, %pc_lo12(.L.str.8)
	ori	$a2, $zero, 31
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp19:                                # EH_LABEL
# %bb.68:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit56
.Ltmp20:                                # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcaddu18i	$ra, %call36(_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
	jirl	$ra, $ra, 0
.Ltmp21:                                # EH_LABEL
	b	.LBB0_75
.LBB0_69:
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZN8Parallel4mypeE)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB0_75
# %bb.70:
.Ltmp14:                                # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.9)
	addi.d	$a1, $a1, %pc_lo12(.L.str.9)
	ori	$a2, $zero, 40
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp15:                                # EH_LABEL
# %bb.71:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit67
.Ltmp16:                                # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcaddu18i	$ra, %call36(_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
	jirl	$ra, $ra, 0
.Ltmp17:                                # EH_LABEL
	b	.LBB0_75
.LBB0_72:
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZN8Parallel4mypeE)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB0_75
# %bb.73:
.Ltmp6:                                 # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.11)
	addi.d	$a1, $a1, %pc_lo12(.L.str.11)
	ori	$a2, $zero, 38
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp7:                                 # EH_LABEL
# %bb.74:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77
.Ltmp8:                                 # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcaddu18i	$ra, %call36(_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
	jirl	$ra, $ra, 0
.Ltmp9:                                 # EH_LABEL
.LBB0_75:                               # %_ZNSolsEPFRSoS_E.exit
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB0_76:
.Ltmp33:                                # EH_LABEL
	move	$s0, $a0
	b	.LBB0_89
.LBB0_77:
.Ltmp5:                                 # EH_LABEL
	ld.d	$a2, $sp, 40
	move	$s0, $a0
	beqz	$a2, .LBB0_79
# %bb.78:
	ld.d	$a0, $sp, 56
	sub.d	$a1, $a0, $a2
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_79:                               # %_ZNSt6vectorIdSaIdEED2Ev.exit60
	ld.d	$a0, $sp, 104
	beq	$a0, $s4, .LBB0_89
# %bb.80:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61
	ld.d	$a1, $sp, 120
	b	.LBB0_85
.LBB0_81:
.Ltmp2:                                 # EH_LABEL
	ld.d	$a2, $sp, 40
	move	$s0, $a0
	beq	$a2, $s2, .LBB0_83
# %bb.82:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
	ld.d	$a0, $sp, 56
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_83:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35
	ld.d	$a0, $sp, 72
	beq	$a0, $s1, .LBB0_89
# %bb.84:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
	ld.d	$a1, $sp, 88
.LBB0_85:
	addi.d	$a1, $a1, 1
	b	.LBB0_88
.LBB0_86:
.Ltmp22:                                # EH_LABEL
	ld.d	$a2, $sp, 72
	move	$s0, $a0
	beqz	$a2, .LBB0_89
# %bb.87:
	ld.d	$a0, $sp, 88
	sub.d	$a1, $a0, $a2
	move	$a0, $a2
.LBB0_88:
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_89:
	ld.d	$a0, $fp, 0
	beq	$a0, $s3, .LBB0_91
# %bb.90:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82
	ld.d	$a1, $s3, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_91:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	_ZN7GenMeshC2EPK9InputFile, .Lfunc_end0-_ZN7GenMeshC2EPK9InputFile
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
	.uleb128 .Ltmp0-.Lfunc_begin0           # >> Call Site 1 <<
	.uleb128 .Ltmp1-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp1
	.uleb128 .Ltmp2-.Lfunc_begin0           #     jumps to .Ltmp2
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1-.Lfunc_begin0           # >> Call Site 2 <<
	.uleb128 .Ltmp3-.Ltmp1                  #   Call between .Ltmp1 and .Ltmp3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp3-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp4-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp4
	.uleb128 .Ltmp5-.Lfunc_begin0           #     jumps to .Ltmp5
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp4-.Lfunc_begin0           # >> Call Site 4 <<
	.uleb128 .Ltmp10-.Ltmp4                 #   Call between .Ltmp4 and .Ltmp10
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp10-.Lfunc_begin0          # >> Call Site 5 <<
	.uleb128 .Ltmp13-.Ltmp10                #   Call between .Ltmp10 and .Ltmp13
	.uleb128 .Ltmp22-.Lfunc_begin0          #     jumps to .Ltmp22
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp23-.Lfunc_begin0          # >> Call Site 6 <<
	.uleb128 .Ltmp32-.Ltmp23                #   Call between .Ltmp23 and .Ltmp32
	.uleb128 .Ltmp33-.Lfunc_begin0          #     jumps to .Ltmp33
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp18-.Lfunc_begin0          # >> Call Site 7 <<
	.uleb128 .Ltmp9-.Ltmp18                 #   Call between .Ltmp18 and .Ltmp9
	.uleb128 .Ltmp22-.Lfunc_begin0          #     jumps to .Ltmp22
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp9-.Lfunc_begin0           # >> Call Site 8 <<
	.uleb128 .Lfunc_end0-.Ltmp9             #   Call between .Ltmp9 and .Lfunc_end0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN7GenMeshD2Ev                 # -- Begin function _ZN7GenMeshD2Ev
	.p2align	5
	.type	_ZN7GenMeshD2Ev,@function
_ZN7GenMeshD2Ev:                        # @_ZN7GenMeshD2Ev
	.cfi_startproc
# %bb.0:
	move	$a1, $a0
	ld.d	$a0, $a0, 0
	addi.d	$a1, $a1, 16
	beq	$a0, $a1, .LBB1_2
# %bb.1:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB1_2:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ret
.Lfunc_end1:
	.size	_ZN7GenMeshD2Ev, .Lfunc_end1-_ZN7GenMeshD2Ev
	.cfi_endproc
                                        # -- End function
	.globl	_ZN7GenMesh8generateERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_ # -- Begin function _ZN7GenMesh8generateERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_
	.p2align	5
	.type	_ZN7GenMesh8generateERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_,@function
_ZN7GenMesh8generateERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_: # @_ZN7GenMesh8generateERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_
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
	ld.d	$t0, $sp, 160
	st.d	$t0, $sp, 40                    # 8-byte Folded Spill
	ld.d	$t0, $sp, 152
	st.d	$t0, $sp, 48                    # 8-byte Folded Spill
	ld.d	$s5, $sp, 144
	move	$s8, $a7
	move	$s2, $a6
	move	$s3, $a5
	move	$s4, $a4
	move	$fp, $a3
	move	$s0, $a2
	move	$s1, $a1
	move	$s6, $a0
	pcaddu18i	$ra, %call36(_ZN7GenMesh9calcNumPEEv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s6, 64
	ld.w	$a1, $s6, 32
	ld.w	$a2, $s6, 56
	mul.w	$a3, $a1, $a0
	div.w	$a3, $a3, $a2
	st.w	$a3, $s6, 80
	addi.d	$a0, $a0, 1
	mul.w	$a0, $a0, $a1
	div.w	$a0, $a0, $a2
	ld.w	$a1, $s6, 68
	ld.w	$a2, $s6, 36
	ld.w	$a4, $s6, 60
	sub.d	$a0, $a0, $a3
	st.w	$a0, $s6, 72
	mul.w	$a0, $a2, $a1
	div.w	$a0, $a0, $a4
	st.w	$a0, $s6, 84
	addi.d	$a1, $a1, 1
	mul.w	$a1, $a1, $a2
	ld.d	$s7, $s6, 8
	div.w	$a1, $a1, $a4
	sub.d	$a0, $a1, $a0
	ori	$a1, $zero, 4
	st.w	$a0, $s6, 76
	beq	$s7, $a1, .LBB2_5
# %bb.1:
	ori	$a0, $zero, 3
	bne	$s7, $a0, .LBB2_8
# %bb.2:                                # %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
	st.d	$s8, $sp, 32                    # 8-byte Folded Spill
	ld.d	$s8, $s6, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a1, $a0, %pc_lo12(.L.str.3)
	ori	$a2, $zero, 3
	move	$a0, $s8
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_7
# %bb.3:                                # %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit35
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a1, $a0, %pc_lo12(.L.str.5)
	move	$a0, $s8
	move	$a2, $s7
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	ld.d	$a7, $sp, 32                    # 8-byte Folded Reload
	bnez	$a0, .LBB2_8
# %bb.4:                                # %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit35.thread
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	st.d	$a0, $sp, 16
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	st.d	$a0, $sp, 8
	st.d	$s5, $sp, 0
	move	$a0, $s6
	move	$a1, $s1
	move	$a2, $s0
	move	$a3, $fp
	move	$a4, $s4
	move	$a5, $s3
	move	$a6, $s2
	pcaddu18i	$ra, %call36(_ZN7GenMesh11generateHexERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_)
	jirl	$ra, $ra, 0
	b	.LBB2_8
.LBB2_5:                                # %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit33
	ld.d	$a0, $s6, 0
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
	move	$a2, $s7
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB2_8
# %bb.6:                                # %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit33.thread
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	st.d	$a0, $sp, 16
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	st.d	$a0, $sp, 8
	st.d	$s5, $sp, 0
	move	$a0, $s6
	move	$a1, $s1
	move	$a2, $s0
	move	$a3, $fp
	move	$a4, $s4
	move	$a5, $s3
	move	$a6, $s2
	move	$a7, $s8
	pcaddu18i	$ra, %call36(_ZN7GenMesh12generateRectERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_)
	jirl	$ra, $ra, 0
	b	.LBB2_8
.LBB2_7:                                # %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	st.d	$a0, $sp, 16
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	st.d	$a0, $sp, 8
	st.d	$s5, $sp, 0
	move	$a0, $s6
	move	$a1, $s1
	move	$a2, $s0
	move	$a3, $fp
	move	$a4, $s4
	move	$a5, $s3
	move	$a6, $s2
	ld.d	$a7, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN7GenMesh11generatePieERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_)
	jirl	$ra, $ra, 0
.LBB2_8:                                # %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit35.thread38
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
.Lfunc_end2:
	.size	_ZN7GenMesh8generateERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_, .Lfunc_end2-_ZN7GenMesh8generateERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _ZN7GenMesh9calcNumPEEv
.LCPI3_0:
	.dword	0x3d719799812dea11              # double 9.9999999999999998E-13
.LCPI3_1:
	.dword	0xbd719799812dea11              # double -9.9999999999999998E-13
	.text
	.globl	_ZN7GenMesh9calcNumPEEv
	.p2align	5
	.type	_ZN7GenMesh9calcNumPEEv,@function
_ZN7GenMesh9calcNumPEEv:                # @_ZN7GenMesh9calcNumPEEv
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 8                    # 8-byte Folded Spill
	ld.w	$a1, $a0, 32
	ld.w	$a2, $a0, 36
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fs0, $fa0
	movgr2fr.w	$fa0, $a2
	ffint.d.w	$fs1, $fa0
	fcmp.clt.d	$fcc0, $fs1, $fs0
	fsel	$fs2, $fs1, $fs0, $fcc0
	fsel	$fs3, $fs0, $fs1, $fcc0
	pcalau12i	$a1, %got_pc_hi20(_ZN8Parallel5numpeE)
	ld.d	$fp, $a1, %got_pc_lo12(_ZN8Parallel5numpeE)
	ld.w	$a1, $fp, 0
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	fmul.d	$fa0, $fs3, $fa0
	fdiv.d	$fa1, $fa0, $fs2
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB3_9
.LBB3_1:                                # %.split
	pcalau12i	$a1, %pc_hi20(.LCPI3_0)
	fld.d	$fa1, $a1, %pc_lo12(.LCPI3_0)
	fadd.d	$fa1, $fa0, $fa1
	vreplvei.d	$vr1, $vr1, 0
	vfrintrm.d	$vr1, $vr1
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a2, $fa1
	ori	$a3, $zero, 1
	slt	$a4, $a3, $a2
	ld.w	$a1, $fp, 0
	maskeqz	$a2, $a2, $a4
	masknez	$a3, $a3, $a4
	or	$a2, $a2, $a3
	.p2align	4, , 16
.LBB3_2:                                # =>This Inner Loop Header: Depth=1
	div.w	$a3, $a1, $a2
	mul.d	$a4, $a3, $a2
	sub.w	$a4, $a1, $a4
	addi.w	$a2, $a2, -1
	bnez	$a4, .LBB3_2
# %bb.3:
	pcalau12i	$a4, %pc_hi20(.LCPI3_1)
	fld.d	$fa1, $a4, %pc_lo12(.LCPI3_1)
	fadd.d	$fa0, $fa0, $fa1
	vreplvei.d	$vr0, $vr0, 0
	vfrintrp.d	$vr0, $vr0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a4, $fa0
	addi.w	$a2, $a2, 1
	.p2align	4, , 16
.LBB3_4:                                # =>This Inner Loop Header: Depth=1
	div.w	$a5, $a1, $a4
	mul.d	$a6, $a5, $a4
	sub.w	$a6, $a1, $a6
	addi.w	$a4, $a4, 1
	bnez	$a6, .LBB3_4
# %bb.5:
	movgr2fr.w	$fa0, $a2
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fa0, $fs3, $fa0
	movgr2fr.w	$fa1, $a3
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa1, $fs2, $fa1
	fcmp.clt.d	$fcc0, $fa0, $fa1
	fsel	$fa0, $fa0, $fa1, $fcc0
	addi.d	$a3, $a4, -1
	movgr2fr.w	$fa1, $a3
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa1, $fs3, $fa1
	movgr2fr.w	$fa2, $a5
	ffint.d.w	$fa2, $fa2
	fdiv.d	$fa2, $fs2, $fa2
	fcmp.clt.d	$fcc0, $fa1, $fa2
	fsel	$fa1, $fa1, $fa2, $fcc0
	fcmp.cle.d	$fcc0, $fa0, $fa1
	addi.w	$a3, $a3, 0
	movcf2gr	$a4, $fcc0
	masknez	$a3, $a3, $a4
	maskeqz	$a2, $a2, $a4
	or	$a2, $a2, $a3
	st.w	$a2, $a0, 56
	div.w	$a1, $a1, $a2
	fcmp.cule.d	$fcc0, $fs0, $fs1
	st.w	$a1, $a0, 60
	bcnez	$fcc0, .LBB3_7
# %bb.6:
	st.w	$a1, $a0, 56
	st.w	$a2, $a0, 60
	b	.LBB3_8
.LBB3_7:
	move	$a1, $a2
.LBB3_8:
	pcalau12i	$a2, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$a2, $a2, %got_pc_lo12(_ZN8Parallel4mypeE)
	ld.w	$a2, $a2, 0
	div.w	$a3, $a2, $a1
	mul.d	$a1, $a3, $a1
	sub.d	$a1, $a2, $a1
	st.w	$a1, $a0, 64
	st.w	$a3, $a0, 68
	fld.d	$fs3, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs2, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB3_9:                                # %call.sqrt
	fmov.d	$fa0, $fa1
	move	$s0, $a0
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	b	.LBB3_1
.Lfunc_end3:
	.size	_ZN7GenMesh9calcNumPEEv, .Lfunc_end3-_ZN7GenMesh9calcNumPEEv
                                        # -- End function
	.globl	_ZN7GenMesh11generatePieERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_ # -- Begin function _ZN7GenMesh11generatePieERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_
	.p2align	5
	.type	_ZN7GenMesh11generatePieERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_,@function
_ZN7GenMesh11generatePieERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_: # @_ZN7GenMesh11generatePieERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -272
	.cfi_def_cfa_offset 272
	st.d	$ra, $sp, 264                   # 8-byte Folded Spill
	st.d	$fp, $sp, 256                   # 8-byte Folded Spill
	st.d	$s0, $sp, 248                   # 8-byte Folded Spill
	st.d	$s1, $sp, 240                   # 8-byte Folded Spill
	st.d	$s2, $sp, 232                   # 8-byte Folded Spill
	st.d	$s3, $sp, 224                   # 8-byte Folded Spill
	st.d	$s4, $sp, 216                   # 8-byte Folded Spill
	st.d	$s5, $sp, 208                   # 8-byte Folded Spill
	st.d	$s6, $sp, 200                   # 8-byte Folded Spill
	st.d	$s7, $sp, 192                   # 8-byte Folded Spill
	st.d	$s8, $sp, 184                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 176                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 168                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 160                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 152                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 144                  # 8-byte Folded Spill
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
	ld.w	$t2, $a0, 72
	ld.w	$t0, $a0, 76
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	ld.w	$a0, $a0, 68
	addi.d	$t1, $t2, 1
	addi.d	$t4, $t0, 1
	sltui	$a0, $a0, 1
	st.d	$t0, $sp, 80                    # 8-byte Folded Spill
	mul.d	$t3, $t1, $t0
	addi.d	$t0, $t3, 1
	st.d	$t1, $sp, 104                   # 8-byte Folded Spill
	st.d	$t4, $sp, 32                    # 8-byte Folded Spill
	mulw.d.w	$t1, $t4, $t1
	st.d	$t1, $sp, 16                    # 8-byte Folded Spill
	masknez	$t1, $t1, $a0
	maskeqz	$a0, $t0, $a0
	or	$a0, $a0, $t1
	addi.w	$s1, $a0, 0
	st.d	$a7, $sp, 56                    # 8-byte Folded Spill
	st.d	$a6, $sp, 40                    # 8-byte Folded Spill
	st.d	$a3, $sp, 88                    # 8-byte Folded Spill
	st.d	$a2, $sp, 120                   # 8-byte Folded Spill
	bltz	$s1, .LBB4_377
# %bb.1:
	move	$s3, $a4
	move	$s6, $a1
	st.d	$a5, $sp, 48                    # 8-byte Folded Spill
	st.d	$t3, $sp, 24                    # 8-byte Folded Spill
	st.d	$t2, $sp, 128                   # 8-byte Folded Spill
	ld.d	$fp, $a1, 16
	ld.d	$s0, $a1, 0
	sub.d	$s8, $fp, $s0
	srai.d	$a0, $s8, 4
	bgeu	$a0, $s1, .LBB4_8
# %bb.2:                                # %_ZNSt12_Vector_baseI7double2SaIS0_EE11_M_allocateEm.exit.i.i
	ld.d	$fp, $s6, 8
	slli.d	$a0, $s1, 4
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	beq	$fp, $s0, .LBB4_5
# %bb.3:                                # %.lr.ph.i.i.i.i.i.i.preheader
	move	$a0, $s5
	move	$a1, $s0
	.p2align	4, , 16
.LBB4_4:                                # %.lr.ph.i.i.i.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a1, 0
	vst	$vr0, $a0, 0
	addi.d	$a1, $a1, 16
	addi.d	$a0, $a0, 16
	bne	$a1, $fp, .LBB4_4
.LBB4_5:                                # %_ZNSt6vectorI7double2SaIS0_EE20_M_allocate_and_copyIPKS0_EEPS0_mT_S7_.exit.i
	sub.d	$fp, $fp, $s0
	beqz	$s0, .LBB4_7
# %bb.6:
	move	$a0, $s0
	move	$a1, $s8
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_7:                                # %_ZNSt12_Vector_baseI7double2SaIS0_EE13_M_deallocateEPS0_m.exit.i
	st.d	$s5, $s6, 0
	add.d	$a0, $s5, $fp
	st.d	$a0, $s6, 8
	alsl.d	$fp, $s1, $s5, 4
	st.d	$fp, $s6, 16
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	bgez	$a0, .LBB4_9
	b	.LBB4_33
.LBB4_8:
	move	$s5, $s0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	bltz	$a0, .LBB4_33
.LBB4_9:                                # %.lr.ph515
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a1, $a2, 32
	move	$a0, $zero
	fld.d	$fa0, $a2, 40
	movgr2fr.w	$fa1, $a1
	ld.w	$a1, $a2, 36
	ffint.d.w	$fa1, $fa1
	fld.d	$fa2, $a2, 48
	fdiv.d	$fs1, $fa0, $fa1
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fs2, $fa2, $fa0
	addi.w	$a1, $zero, -16
	lu52i.d	$a1, $a1, 2047
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	addi.w	$a1, $zero, -1
	lu52i.d	$s1, $a1, 127
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 64                   # 16-byte Folded Spill
	b	.LBB4_14
	.p2align	4, , 16
.LBB4_10:                               #   in Loop: Header=BB4_14 Depth=1
	ld.d	$a0, $s6, 8
	beq	$a0, $fp, .LBB4_26
# %bb.11:                               #   in Loop: Header=BB4_14 Depth=1
	addi.d	$a1, $a0, 16
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vst	$vr0, $a0, 0
	st.d	$a1, $s6, 8
.LBB4_12:                               #   in Loop: Header=BB4_14 Depth=1
	move	$s7, $s5
.LBB4_13:                               # %_ZNSt6vectorI7double2SaIS0_EE9push_backEOS0_.exit
                                        #   in Loop: Header=BB4_14 Depth=1
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	addi.w	$a0, $a2, 1
	move	$s5, $s7
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	beq	$a2, $a1, .LBB4_33
.LBB4_14:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_18 Depth 2
                                        #       Child Loop BB4_22 Depth 3
                                        #     Child Loop BB4_29 Depth 2
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a1, $a1, 84
	add.w	$a1, $a1, $a0
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	beqz	$a1, .LBB4_10
# %bb.15:                               #   in Loop: Header=BB4_14 Depth=1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	bltz	$a0, .LBB4_12
# %bb.16:                               # %.lr.ph.preheader
                                        #   in Loop: Header=BB4_14 Depth=1
	move	$a0, $zero
	ld.d	$s0, $s6, 8
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	fmul.d	$fs3, $fs2, $fa0
	b	.LBB4_18
	.p2align	4, , 16
.LBB4_17:                               #   in Loop: Header=BB4_18 Depth=2
	fst.d	$fs4, $s0, 0
	fst.d	$fs0, $s0, 8
	addi.d	$s0, $s0, 16
	st.d	$s0, $s6, 8
	move	$s7, $s5
	addi.w	$a0, $s2, 1
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	beq	$s2, $a1, .LBB4_13
.LBB4_18:                               # %.lr.ph
                                        #   Parent Loop BB4_14 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_22 Depth 3
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a1, $a2, 80
	ld.w	$a2, $a2, 32
	move	$s2, $a0
	add.d	$a0, $a0, $a1
	sub.d	$a0, $a2, $a0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fmul.d	$fs0, $fs1, $fa0
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fmul.d	$fs4, $fs3, $fa0
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fmul.d	$fs0, $fs3, $fa0
	bne	$s0, $fp, .LBB4_17
# %bb.19:                               #   in Loop: Header=BB4_18 Depth=2
	sub.d	$s0, $fp, $s5
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	beq	$s0, $a0, .LBB4_376
# %bb.20:                               # %.noexc414
                                        #   in Loop: Header=BB4_18 Depth=2
	srai.d	$a0, $s0, 4
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	sltu	$a2, $a0, $s1
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $s1, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s1, $a1
	or	$s4, $a1, $a0
	slli.d	$a0, $s4, 4
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	add.d	$a0, $a0, $s0
	fstx.d	$fs4, $s7, $s0
	fst.d	$fs0, $a0, 8
	move	$s8, $s7
	beq	$s5, $fp, .LBB4_23
# %bb.21:                               # %.lr.ph.i.i.i.i.i.i.i405.preheader
                                        #   in Loop: Header=BB4_18 Depth=2
	move	$s8, $s7
	move	$a0, $s5
	.p2align	4, , 16
.LBB4_22:                               # %.lr.ph.i.i.i.i.i.i.i405
                                        #   Parent Loop BB4_14 Depth=1
                                        #     Parent Loop BB4_18 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr0, $a0, 0
	vst	$vr0, $s8, 0
	addi.d	$a0, $a0, 16
	addi.d	$s8, $s8, 16
	bne	$a0, $fp, .LBB4_22
.LBB4_23:                               # %_ZSt34__uninitialized_move_if_noexcept_aIP7double2S1_SaIS0_EET0_T_S4_S3_RT1_.exit.i.i409
                                        #   in Loop: Header=BB4_18 Depth=2
	beqz	$s5, .LBB4_25
# %bb.24:                               #   in Loop: Header=BB4_18 Depth=2
	move	$a0, $s5
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_25:                               # %_ZNSt6vectorI7double2SaIS0_EE17_M_realloc_appendIJS0_EEEvDpOT_.exit.i412
                                        #   in Loop: Header=BB4_18 Depth=2
	addi.d	$s0, $s8, 16
	st.d	$s7, $s6, 0
	st.d	$s0, $s6, 8
	alsl.d	$fp, $s4, $s7, 4
	st.d	$fp, $s6, 16
	move	$s5, $s7
	addi.w	$a0, $s2, 1
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	bne	$s2, $a1, .LBB4_18
	b	.LBB4_13
.LBB4_26:                               #   in Loop: Header=BB4_14 Depth=1
	sub.d	$s0, $fp, $s5
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	beq	$s0, $a0, .LBB4_376
# %bb.27:                               # %.noexc401
                                        #   in Loop: Header=BB4_14 Depth=1
	srai.d	$a0, $s0, 4
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	sltu	$a2, $a0, $s1
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $s1, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s1, $a1
	or	$s2, $a1, $a0
	slli.d	$a0, $s2, 4
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vstx	$vr0, $a0, $s0
	move	$s4, $a0
	beq	$s5, $fp, .LBB4_30
# %bb.28:                               # %.lr.ph.i.i.i.i.i.i.i.preheader
                                        #   in Loop: Header=BB4_14 Depth=1
	move	$s4, $s7
	move	$a0, $s5
	.p2align	4, , 16
.LBB4_29:                               # %.lr.ph.i.i.i.i.i.i.i
                                        #   Parent Loop BB4_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a0, 0
	vst	$vr0, $s4, 0
	addi.d	$a0, $a0, 16
	addi.d	$s4, $s4, 16
	bne	$a0, $fp, .LBB4_29
.LBB4_30:                               # %_ZSt34__uninitialized_move_if_noexcept_aIP7double2S1_SaIS0_EET0_T_S4_S3_RT1_.exit.i.i
                                        #   in Loop: Header=BB4_14 Depth=1
	beqz	$s5, .LBB4_32
# %bb.31:                               #   in Loop: Header=BB4_14 Depth=1
	move	$a0, $s5
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_32:                               # %_ZNSt6vectorI7double2SaIS0_EE17_M_realloc_appendIJS0_EEEvDpOT_.exit.i
                                        #   in Loop: Header=BB4_14 Depth=1
	addi.d	$a0, $s4, 16
	st.d	$s7, $s6, 0
	st.d	$a0, $s6, 8
	alsl.d	$fp, $s2, $s7, 4
	st.d	$fp, $s6, 16
	b	.LBB4_13
.LBB4_33:                               # %._crit_edge
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	mul.w	$fp, $a0, $a1
	bltz	$fp, .LBB4_377
# %bb.34:
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a0, $a1, 16
	ld.d	$s0, $a1, 0
	sub.d	$s7, $a0, $s0
	srai.d	$a0, $s7, 2
	slli.d	$s6, $fp, 2
	ld.d	$s1, $sp, 136                   # 8-byte Folded Reload
	bgeu	$a0, $fp, .LBB4_40
# %bb.35:                               # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 8
	sub.d	$s8, $a0, $s0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	blez	$s8, .LBB4_37
# %bb.36:
	move	$a0, $s2
	move	$a1, $s0
	move	$a2, $s8
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_37:                               # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
	beqz	$s0, .LBB4_39
# %bb.38:
	move	$a0, $s0
	move	$a1, $s7
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_39:                               # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	st.d	$s2, $a1, 0
	add.d	$a0, $s2, $s8
	st.d	$a0, $a1, 8
	alsl.d	$a0, $fp, $s2, 2
	st.d	$a0, $a1, 16
.LBB4_40:                               # %_ZNSt6vectorIiSaIiEE7reserveEm.exit
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $a1, 16
	ld.d	$s0, $a1, 0
	sub.d	$s7, $a0, $s0
	srai.d	$a0, $s7, 2
	bgeu	$a0, $fp, .LBB4_46
# %bb.41:                               # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i160
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 8
	sub.d	$s8, $a0, $s0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	blez	$s8, .LBB4_43
# %bb.42:
	move	$a0, $s2
	move	$a1, $s0
	move	$a2, $s8
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_43:                               # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i161
	beqz	$s0, .LBB4_45
# %bb.44:
	move	$a0, $s0
	move	$a1, $s7
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_45:                               # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i163
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	st.d	$s2, $a1, 0
	add.d	$a0, $s2, $s8
	st.d	$a0, $a1, 8
	alsl.d	$a0, $fp, $s2, 2
	st.d	$a0, $a1, 16
.LBB4_46:                               # %_ZNSt6vectorIiSaIiEE7reserveEm.exit164
	ld.d	$a0, $s3, 16
	ld.d	$s0, $s3, 0
	addi.w	$fp, $s6, 0
	sub.d	$s6, $a0, $s0
	srai.d	$a0, $s6, 2
	bgeu	$a0, $fp, .LBB4_52
# %bb.47:                               # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i165
	ld.d	$a0, $s3, 8
	sub.d	$s7, $a0, $s0
	slli.d	$a0, $fp, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	blez	$s7, .LBB4_49
# %bb.48:
	move	$a0, $s2
	move	$a1, $s0
	move	$a2, $s7
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_49:                               # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i166
	beqz	$s0, .LBB4_51
# %bb.50:
	move	$a0, $s0
	move	$a1, $s6
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_51:                               # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i168
	st.d	$s2, $s3, 0
	add.d	$a0, $s2, $s7
	st.d	$a0, $s3, 8
	alsl.d	$a0, $fp, $s2, 2
	st.d	$a0, $s3, 16
.LBB4_52:                               # %_ZNSt6vectorIiSaIiEE7reserveEm.exit169
	ld.w	$a1, $s1, 76
	ld.d	$a5, $sp, 120                   # 8-byte Folded Reload
	blez	$a1, .LBB4_116
# %bb.53:                               # %.preheader509.lr.ph
	ld.w	$a0, $s1, 72
	blez	$a0, .LBB4_116
# %bb.54:                               # %.preheader509.preheader
	move	$s5, $zero
	addi.w	$a2, $zero, -4
	lu52i.d	$a2, $a2, 2047
	st.d	$a2, $sp, 112                   # 8-byte Folded Spill
	addi.w	$a2, $zero, -1
	lu52i.d	$fp, $a2, 511
	b	.LBB4_57
	.p2align	4, , 16
.LBB4_55:                               # %._crit_edge518.loopexit
                                        #   in Loop: Header=BB4_57 Depth=1
	ld.w	$a1, $s1, 76
.LBB4_56:                               # %._crit_edge518
                                        #   in Loop: Header=BB4_57 Depth=1
	addi.w	$a2, $s5, 1
	move	$s5, $a2
	bge	$a2, $a1, .LBB4_116
.LBB4_57:                               # %.preheader509
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_60 Depth 2
	blez	$a0, .LBB4_56
# %bb.58:                               # %.lr.ph517
                                        #   in Loop: Header=BB4_57 Depth=1
	ld.d	$a1, $s3, 8
	move	$s2, $zero
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	mul.d	$a0, $s5, $a0
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	b	.LBB4_60
	.p2align	4, , 16
.LBB4_59:                               #   in Loop: Header=BB4_60 Depth=2
	st.w	$s8, $a1, 0
	addi.d	$a1, $a1, 4
	st.d	$a1, $s3, 8
	ld.w	$a0, $s1, 72
	addi.w	$s2, $s2, 1
	bge	$s2, $a0, .LBB4_55
.LBB4_60:                               #   Parent Loop BB4_57 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $s3, 0
	ld.d	$a0, $a5, 8
	ld.d	$a3, $a5, 16
	sub.d	$a1, $a1, $a2
	srli.d	$s8, $a1, 2
	beq	$a0, $a3, .LBB4_62
# %bb.61:                               #   in Loop: Header=BB4_60 Depth=2
	st.w	$s8, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a5, 8
	b	.LBB4_68
	.p2align	4, , 16
.LBB4_62:                               #   in Loop: Header=BB4_60 Depth=2
	ld.d	$s6, $a5, 0
	sub.d	$s0, $a0, $s6
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	beq	$s0, $a0, .LBB4_376
# %bb.63:                               # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i
                                        #   in Loop: Header=BB4_60 Depth=2
	srai.d	$a0, $s0, 2
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	sltu	$a2, $a0, $fp
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $fp, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $fp, $a1
	or	$s4, $a1, $a0
	slli.d	$a0, $s4, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	stx.w	$s8, $a0, $s0
	blez	$s0, .LBB4_65
# %bb.64:                               #   in Loop: Header=BB4_60 Depth=2
	move	$a0, $s7
	move	$a1, $s6
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_65:                               # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i
                                        #   in Loop: Header=BB4_60 Depth=2
	beqz	$s6, .LBB4_67
# %bb.66:                               #   in Loop: Header=BB4_60 Depth=2
	move	$a0, $s6
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_67:                               # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i
                                        #   in Loop: Header=BB4_60 Depth=2
	add.d	$a0, $s7, $s0
	addi.d	$a0, $a0, 4
	ld.d	$a5, $sp, 120                   # 8-byte Folded Reload
	st.d	$s7, $a5, 0
	st.d	$a0, $a5, 8
	alsl.d	$a0, $s4, $s7, 2
	st.d	$a0, $a5, 16
.LBB4_68:                               # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
                                        #   in Loop: Header=BB4_60 Depth=2
	ld.w	$a0, $s1, 68
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	add.d	$a2, $s2, $a1
	sltui	$a3, $a0, 1
	ld.w	$a4, $s1, 84
	ld.d	$s1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $s1, 8
	ld.d	$a1, $s1, 16
	ld.d	$a6, $sp, 128                   # 8-byte Folded Reload
	maskeqz	$a3, $a6, $a3
	sub.w	$a4, $zero, $a4
	sub.d	$s8, $a2, $a3
	bne	$s5, $a4, .LBB4_72
# %bb.69:                               #   in Loop: Header=BB4_60 Depth=2
	beq	$a0, $a1, .LBB4_78
# %bb.70:                               #   in Loop: Header=BB4_60 Depth=2
	ori	$a1, $zero, 3
	st.w	$a1, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $s1, 8
	ld.d	$a1, $s3, 8
	ld.d	$a0, $s3, 16
	beq	$a1, $a0, .LBB4_84
.LBB4_71:                               #   in Loop: Header=BB4_60 Depth=2
	st.w	$zero, $a1, 0
	b	.LBB4_76
	.p2align	4, , 16
.LBB4_72:                               #   in Loop: Header=BB4_60 Depth=2
	beq	$a0, $a1, .LBB4_102
# %bb.73:                               #   in Loop: Header=BB4_60 Depth=2
	ori	$a1, $zero, 4
	st.w	$a1, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $s1, 8
	ld.d	$a1, $s3, 8
	ld.d	$a0, $s3, 16
	beq	$a1, $a0, .LBB4_108
.LBB4_74:                               #   in Loop: Header=BB4_60 Depth=2
	st.w	$s8, $a1, 0
	addi.d	$a1, $a1, 4
	st.d	$a1, $s3, 8
	addi.d	$s1, $s8, 1
	beq	$a1, $a0, .LBB4_114
.LBB4_75:                               #   in Loop: Header=BB4_60 Depth=2
	st.w	$s1, $a1, 0
.LBB4_76:                               # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit185
                                        #   in Loop: Header=BB4_60 Depth=2
	addi.d	$a1, $a1, 4
	st.d	$a1, $s3, 8
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	add.d	$s8, $s8, $a2
	addi.d	$s1, $s8, 1
	beq	$a1, $a0, .LBB4_90
.LBB4_77:                               #   in Loop: Header=BB4_60 Depth=2
	st.w	$s1, $a1, 0
	addi.d	$a1, $a1, 4
	st.d	$a1, $s3, 8
	ld.d	$s1, $sp, 136                   # 8-byte Folded Reload
	bne	$a1, $a0, .LBB4_59
	b	.LBB4_96
.LBB4_78:                               #   in Loop: Header=BB4_60 Depth=2
	ld.d	$s6, $s1, 0
	sub.d	$s0, $a0, $s6
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	beq	$s0, $a0, .LBB4_376
# %bb.79:                               # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i173
                                        #   in Loop: Header=BB4_60 Depth=2
	srai.d	$a0, $s0, 2
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	sltu	$a2, $a0, $fp
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $fp, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $fp, $a1
	or	$s4, $a1, $a0
	slli.d	$a0, $s4, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	ori	$a0, $zero, 3
	stx.w	$a0, $s7, $s0
	blez	$s0, .LBB4_81
# %bb.80:                               #   in Loop: Header=BB4_60 Depth=2
	move	$a0, $s7
	move	$a1, $s6
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_81:                               # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i175
                                        #   in Loop: Header=BB4_60 Depth=2
	beqz	$s6, .LBB4_83
# %bb.82:                               #   in Loop: Header=BB4_60 Depth=2
	move	$a0, $s6
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_83:                               # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i177
                                        #   in Loop: Header=BB4_60 Depth=2
	add.d	$a0, $s7, $s0
	addi.d	$a0, $a0, 4
	st.d	$s7, $s1, 0
	st.d	$a0, $s1, 8
	alsl.d	$a0, $s4, $s7, 2
	st.d	$a0, $s1, 16
	ld.d	$a5, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a1, $s3, 8
	ld.d	$a0, $s3, 16
	bne	$a1, $a0, .LBB4_71
.LBB4_84:                               #   in Loop: Header=BB4_60 Depth=2
	ld.d	$s6, $s3, 0
	sub.d	$s0, $a1, $s6
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	beq	$s0, $a0, .LBB4_376
# %bb.85:                               # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i180
                                        #   in Loop: Header=BB4_60 Depth=2
	srai.d	$a0, $s0, 2
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	sltu	$a2, $a0, $fp
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $fp, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $fp, $a1
	or	$s4, $a1, $a0
	slli.d	$a0, $s4, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	stx.w	$zero, $a0, $s0
	blez	$s0, .LBB4_87
.LBB4_86:                               #   in Loop: Header=BB4_60 Depth=2
	move	$a0, $s7
	move	$a1, $s6
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_87:                               # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i182
                                        #   in Loop: Header=BB4_60 Depth=2
	beqz	$s6, .LBB4_89
# %bb.88:                               #   in Loop: Header=BB4_60 Depth=2
	move	$a0, $s6
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_89:                               # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i198
                                        #   in Loop: Header=BB4_60 Depth=2
	add.d	$a0, $s7, $s0
	addi.d	$a1, $a0, 4
	st.d	$s7, $s3, 0
	st.d	$a1, $s3, 8
	alsl.d	$a0, $s4, $s7, 2
	st.d	$a0, $s3, 16
	ld.d	$a5, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	add.d	$s8, $s8, $a2
	addi.d	$s1, $s8, 1
	bne	$a1, $a0, .LBB4_77
.LBB4_90:                               #   in Loop: Header=BB4_60 Depth=2
	ld.d	$s6, $s3, 0
	sub.d	$s0, $a0, $s6
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	beq	$s0, $a0, .LBB4_376
# %bb.91:                               # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i201
                                        #   in Loop: Header=BB4_60 Depth=2
	srai.d	$a0, $s0, 2
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	sltu	$a2, $a0, $fp
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $fp, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $fp, $a1
	or	$s4, $a1, $a0
	slli.d	$a0, $s4, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	stx.w	$s1, $a0, $s0
	blez	$s0, .LBB4_93
# %bb.92:                               #   in Loop: Header=BB4_60 Depth=2
	move	$a0, $s7
	move	$a1, $s6
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_93:                               # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i203
                                        #   in Loop: Header=BB4_60 Depth=2
	ld.d	$s1, $sp, 136                   # 8-byte Folded Reload
	beqz	$s6, .LBB4_95
# %bb.94:                               #   in Loop: Header=BB4_60 Depth=2
	move	$a0, $s6
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_95:                               # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i205
                                        #   in Loop: Header=BB4_60 Depth=2
	add.d	$a0, $s7, $s0
	addi.d	$a1, $a0, 4
	st.d	$s7, $s3, 0
	st.d	$a1, $s3, 8
	alsl.d	$a0, $s4, $s7, 2
	st.d	$a0, $s3, 16
	ld.d	$a5, $sp, 120                   # 8-byte Folded Reload
	bne	$a1, $a0, .LBB4_59
.LBB4_96:                               #   in Loop: Header=BB4_60 Depth=2
	ld.d	$s6, $s3, 0
	sub.d	$s0, $a0, $s6
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	beq	$s0, $a0, .LBB4_376
# %bb.97:                               # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i208
                                        #   in Loop: Header=BB4_60 Depth=2
	srai.d	$a0, $s0, 2
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	sltu	$a2, $a0, $fp
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $fp, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $fp, $a1
	or	$s4, $a1, $a0
	slli.d	$a0, $s4, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	stx.w	$s8, $a0, $s0
	blez	$s0, .LBB4_99
# %bb.98:                               #   in Loop: Header=BB4_60 Depth=2
	move	$a0, $s7
	move	$a1, $s6
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_99:                               # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i210
                                        #   in Loop: Header=BB4_60 Depth=2
	beqz	$s6, .LBB4_101
# %bb.100:                              #   in Loop: Header=BB4_60 Depth=2
	move	$a0, $s6
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_101:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i212
                                        #   in Loop: Header=BB4_60 Depth=2
	add.d	$a0, $s7, $s0
	addi.d	$a1, $a0, 4
	st.d	$s7, $s3, 0
	st.d	$a1, $s3, 8
	alsl.d	$a0, $s4, $s7, 2
	st.d	$a0, $s3, 16
	ld.d	$a5, $sp, 120                   # 8-byte Folded Reload
	ld.w	$a0, $s1, 72
	addi.w	$s2, $s2, 1
	blt	$s2, $a0, .LBB4_60
	b	.LBB4_55
.LBB4_102:                              #   in Loop: Header=BB4_60 Depth=2
	ld.d	$s6, $s1, 0
	sub.d	$s0, $a0, $s6
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	beq	$s0, $a0, .LBB4_376
# %bb.103:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i187
                                        #   in Loop: Header=BB4_60 Depth=2
	srai.d	$a0, $s0, 2
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	sltu	$a2, $a0, $fp
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $fp, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $fp, $a1
	or	$s4, $a1, $a0
	slli.d	$a0, $s4, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	ori	$a0, $zero, 4
	stx.w	$a0, $s7, $s0
	blez	$s0, .LBB4_105
# %bb.104:                              #   in Loop: Header=BB4_60 Depth=2
	move	$a0, $s7
	move	$a1, $s6
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_105:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i189
                                        #   in Loop: Header=BB4_60 Depth=2
	beqz	$s6, .LBB4_107
# %bb.106:                              #   in Loop: Header=BB4_60 Depth=2
	move	$a0, $s6
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_107:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i191
                                        #   in Loop: Header=BB4_60 Depth=2
	add.d	$a0, $s7, $s0
	addi.d	$a0, $a0, 4
	st.d	$s7, $s1, 0
	st.d	$a0, $s1, 8
	alsl.d	$a0, $s4, $s7, 2
	st.d	$a0, $s1, 16
	ld.d	$a5, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a1, $s3, 8
	ld.d	$a0, $s3, 16
	bne	$a1, $a0, .LBB4_74
.LBB4_108:                              #   in Loop: Header=BB4_60 Depth=2
	ld.d	$s6, $s3, 0
	sub.d	$s0, $a1, $s6
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	beq	$s0, $a0, .LBB4_376
# %bb.109:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i
                                        #   in Loop: Header=BB4_60 Depth=2
	srai.d	$a0, $s0, 2
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	sltu	$a2, $a0, $fp
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $fp, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $fp, $a1
	or	$s4, $a1, $a0
	slli.d	$a0, $s4, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	stx.w	$s8, $a0, $s0
	blez	$s0, .LBB4_111
# %bb.110:                              #   in Loop: Header=BB4_60 Depth=2
	move	$a0, $s7
	move	$a1, $s6
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_111:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i
                                        #   in Loop: Header=BB4_60 Depth=2
	beqz	$s6, .LBB4_113
# %bb.112:                              #   in Loop: Header=BB4_60 Depth=2
	move	$a0, $s6
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_113:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i
                                        #   in Loop: Header=BB4_60 Depth=2
	add.d	$a0, $s7, $s0
	addi.d	$a1, $a0, 4
	st.d	$s7, $s3, 0
	st.d	$a1, $s3, 8
	alsl.d	$a0, $s4, $s7, 2
	st.d	$a0, $s3, 16
	ld.d	$a5, $sp, 120                   # 8-byte Folded Reload
	addi.d	$s1, $s8, 1
	bne	$a1, $a0, .LBB4_75
.LBB4_114:                              #   in Loop: Header=BB4_60 Depth=2
	ld.d	$s6, $s3, 0
	sub.d	$s0, $a0, $s6
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	beq	$s0, $a0, .LBB4_376
# %bb.115:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i194
                                        #   in Loop: Header=BB4_60 Depth=2
	srai.d	$a0, $s0, 2
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	sltu	$a2, $a0, $fp
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $fp, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $fp, $a1
	or	$s4, $a1, $a0
	slli.d	$a0, $s4, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	stx.w	$s1, $a0, $s0
	bgtz	$s0, .LBB4_86
	b	.LBB4_87
.LBB4_116:                              # %._crit_edge520
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel5numpeE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZN8Parallel5numpeE)
	ld.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB4_369
# %bb.117:
	move	$a0, $s1
	ld.w	$s1, $s1, 68
	ld.w	$fp, $a0, 64
	sltui	$a0, $s1, 1
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	masknez	$a0, $a1, $a0
	sltui	$a1, $fp, 1
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	masknez	$a1, $a3, $a1
	add.w	$s2, $a1, $a0
	bltz	$s2, .LBB4_377
# %bb.118:
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a0, $a1, 16
	ld.d	$s4, $a1, 0
	sub.d	$s5, $a0, $s4
	srai.d	$a0, $s5, 2
	bgeu	$a0, $s2, .LBB4_124
# %bb.119:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i214
	ld.d	$a0, $a1, 8
	sub.d	$s0, $a0, $s4
	slli.d	$a0, $s2, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	blez	$s0, .LBB4_121
# %bb.120:
	move	$a0, $s3
	move	$a1, $s4
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_121:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i215
	beqz	$s4, .LBB4_123
# %bb.122:
	move	$a0, $s4
	move	$a1, $s5
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.w	$s1, $a0, 68
	ld.w	$fp, $a0, 64
.LBB4_123:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i217
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	st.d	$s3, $a1, 0
	add.d	$a0, $s3, $s0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $s2, $s3, 2
	st.d	$a0, $a1, 16
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
.LBB4_124:                              # %_ZNSt6vectorIiSaIiEE7reserveEm.exit218
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a0, $a1, 60
	addi.w	$a0, $a0, -1
	ld.w	$a1, $a1, 56
	xor	$a0, $s1, $a0
	sltui	$a0, $a0, 1
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	masknez	$a0, $a2, $a0
	addi.w	$a1, $a1, -1
	xor	$a1, $fp, $a1
	sltui	$a1, $a1, 1
	masknez	$a1, $a3, $a1
	add.w	$a0, $a1, $a0
	addi.w	$a1, $zero, -2
	bge	$a1, $a0, .LBB4_377
# %bb.125:
	ld.d	$s6, $sp, 288
	ld.d	$a1, $s6, 16
	ld.d	$s3, $s6, 0
	addi.w	$s2, $a0, 1
	sub.d	$s4, $a1, $s3
	srai.d	$a0, $s4, 2
	bgeu	$a0, $s2, .LBB4_131
# %bb.126:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i219
	ld.d	$a0, $s6, 8
	sub.d	$s0, $a0, $s3
	slli.d	$a0, $s2, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	blez	$s0, .LBB4_128
# %bb.127:
	move	$a0, $s5
	move	$a1, $s3
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_128:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i220
	ld.d	$s1, $sp, 136                   # 8-byte Folded Reload
	beqz	$s3, .LBB4_130
# %bb.129:
	move	$a0, $s3
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.w	$fp, $s1, 64
.LBB4_130:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i222
	st.d	$s5, $s6, 0
	add.d	$a0, $s5, $s0
	st.d	$a0, $s6, 8
	alsl.d	$a0, $s2, $s5, 2
	st.d	$a0, $s6, 16
	ld.w	$s1, $s1, 68
.LBB4_131:                              # %_ZNSt6vectorIiSaIiEE7reserveEm.exit223
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	beqz	$fp, .LBB4_158
# %bb.132:                              # %_ZNSt6vectorIiSaIiEE7reserveEm.exit223
	beqz	$s1, .LBB4_158
# %bb.133:
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZN8Parallel4mypeE)
	ld.w	$fp, $a0, 0
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a0, $a3, 8
	ld.d	$a1, $a3, 16
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	ld.w	$s1, $a2, 56
	beq	$a0, $a1, .LBB4_135
# %bb.134:
	st.w	$zero, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a3, 8
	b	.LBB4_141
.LBB4_135:
	ld.d	$s0, $a3, 0
	sub.d	$s3, $a0, $s0
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s3, $a0, .LBB4_376
# %bb.136:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i225
	srai.d	$a0, $s3, 2
	ori	$a1, $zero, 1
	sltu	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a0, $a2
	or	$a1, $a2, $a1
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
	or	$s2, $a1, $a0
	slli.d	$a0, $s2, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	stx.w	$zero, $a0, $s3
	blez	$s3, .LBB4_138
# %bb.137:
	move	$a0, $s4
	move	$a1, $s0
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_138:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i227
	add.d	$s5, $s4, $s3
	beqz	$s0, .LBB4_140
# %bb.139:
	move	$a0, $s0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_140:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i229
	addi.d	$a0, $s5, 4
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	st.d	$s4, $a1, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $s2, $s4, 2
	st.d	$a0, $a1, 16
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
.LBB4_141:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit230
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $a3, 8
	ld.d	$a1, $a3, 16
	nor	$a2, $s1, $zero
	add.d	$fp, $fp, $a2
	beq	$a0, $a1, .LBB4_143
# %bb.142:
	st.w	$fp, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a3, 8
	b	.LBB4_149
.LBB4_143:
	ld.d	$s0, $a3, 0
	sub.d	$s3, $a0, $s0
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s3, $a0, .LBB4_376
# %bb.144:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i232
	srai.d	$a0, $s3, 2
	ori	$a1, $zero, 1
	sltu	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a0, $a2
	or	$a1, $a2, $a1
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
	or	$s1, $a1, $a0
	slli.d	$a0, $s1, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	stx.w	$fp, $a0, $s3
	blez	$s3, .LBB4_146
# %bb.145:
	move	$a0, $s4
	move	$a1, $s0
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_146:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i234
	add.d	$fp, $s4, $s3
	beqz	$s0, .LBB4_148
# %bb.147:
	move	$a0, $s0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_148:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i236
	addi.d	$a0, $fp, 4
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	st.d	$s4, $a1, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $s1, $s4, 2
	st.d	$a0, $a1, 16
.LBB4_149:                              # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit237
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $a3, 8
	ld.d	$a1, $a3, 16
	beq	$a0, $a1, .LBB4_151
# %bb.150:
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a3, 8
	b	.LBB4_157
.LBB4_151:
	ld.d	$s0, $a3, 0
	sub.d	$s3, $a0, $s0
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s3, $a0, .LBB4_376
# %bb.152:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i239
	srai.d	$a0, $s3, 2
	ori	$s1, $zero, 1
	sltu	$a1, $s1, $a0
	masknez	$a2, $s1, $a1
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
	or	$fp, $a1, $a0
	slli.d	$a0, $fp, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	stx.w	$s1, $a0, $s3
	blez	$s3, .LBB4_154
# %bb.153:
	move	$a0, $s4
	move	$a1, $s0
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_154:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i241
	add.d	$s1, $s4, $s3
	beqz	$s0, .LBB4_156
# %bb.155:
	move	$a0, $s0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_156:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i243
	addi.d	$a0, $s1, 4
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	st.d	$s4, $a1, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $fp, $s4, 2
	st.d	$a0, $a1, 16
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
.LBB4_157:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit244thread-pre-split
	ld.w	$s1, $a2, 68
.LBB4_158:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit244
	beqz	$s1, .LBB4_184
# %bb.159:
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZN8Parallel4mypeE)
	ld.w	$a0, $a0, 0
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a0, $a2, 8
	ld.d	$s4, $a2, 0
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ld.w	$s1, $a1, 56
	sub.d	$s2, $a0, $s4
	st.d	$s2, $sp, 120                   # 8-byte Folded Spill
	bltz	$s5, .LBB4_174
# %bb.160:                              # %.lr.ph525.preheader
	ld.w	$a1, $a1, 64
	beqz	$a1, .LBB4_171
# %bb.161:
	move	$s5, $s4
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	beqz	$a1, .LBB4_173
.LBB4_162:                              # %.lr.ph525.peel.next.preheader
	move	$s2, $zero
	addi.w	$a1, $zero, -4
	lu52i.d	$s7, $a1, 2047
	ori	$s8, $zero, 1
	addi.w	$a1, $zero, -1
	lu52i.d	$s3, $a1, 511
	b	.LBB4_164
	.p2align	4, , 16
.LBB4_163:                              #   in Loop: Header=BB4_164 Depth=1
	st.w	$s2, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a2, 8
	move	$s4, $s5
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	beq	$a1, $s2, .LBB4_174
.LBB4_164:                              # %.lr.ph525.peel.next
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $a2, 16
	addi.w	$s2, $s2, 1
	bne	$a0, $a1, .LBB4_163
# %bb.165:                              #   in Loop: Header=BB4_164 Depth=1
	sub.d	$s0, $a0, $s5
	beq	$s0, $s7, .LBB4_376
# %bb.166:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i260
                                        #   in Loop: Header=BB4_164 Depth=1
	srai.d	$a0, $s0, 2
	sltu	$a1, $s8, $a0
	masknez	$a2, $s8, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	sltu	$a2, $a0, $s3
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $s3, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s3, $a1
	or	$fp, $a1, $a0
	slli.d	$a0, $fp, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	stx.w	$s2, $a0, $s0
	blez	$s0, .LBB4_168
# %bb.167:                              #   in Loop: Header=BB4_164 Depth=1
	move	$a0, $s4
	move	$a1, $s5
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_168:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i262
                                        #   in Loop: Header=BB4_164 Depth=1
	beqz	$s5, .LBB4_170
# %bb.169:                              #   in Loop: Header=BB4_164 Depth=1
	move	$a0, $s5
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_170:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i264
                                        #   in Loop: Header=BB4_164 Depth=1
	add.d	$a0, $s4, $s0
	addi.d	$a0, $a0, 4
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	st.d	$s4, $a2, 0
	st.d	$a0, $a2, 8
	alsl.d	$a1, $fp, $s4, 2
	st.d	$a1, $a2, 16
	move	$s5, $s4
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	bne	$a1, $s2, .LBB4_164
	b	.LBB4_174
.LBB4_171:
	ld.d	$a1, $a2, 16
	beq	$a0, $a1, .LBB4_213
# %bb.172:
	st.w	$zero, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a2, 8
	move	$s5, $s4
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	bnez	$a1, .LBB4_162
.LBB4_173:
	move	$s4, $s5
.LBB4_174:                              # %._crit_edge526
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $a3, 8
	ld.d	$a1, $a3, 16
	ld.d	$a4, $sp, 112                   # 8-byte Folded Reload
	sub.d	$s1, $a4, $s1
	beq	$a0, $a1, .LBB4_176
# %bb.175:
	st.w	$s1, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a3, 8
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	b	.LBB4_182
.LBB4_176:
	ld.d	$s0, $a3, 0
	sub.d	$s4, $a0, $s0
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	beq	$s4, $a0, .LBB4_376
# %bb.177:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i246
	srai.d	$a0, $s4, 2
	ori	$a1, $zero, 1
	sltu	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a0, $a2
	or	$a1, $a2, $a1
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
	or	$fp, $a1, $a0
	slli.d	$a0, $fp, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	stx.w	$s1, $a0, $s4
	blez	$s4, .LBB4_179
# %bb.178:
	move	$a0, $s5
	move	$a1, $s0
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_179:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i248
	add.d	$s1, $s5, $s4
	beqz	$s0, .LBB4_181
# %bb.180:
	move	$a0, $s0
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_181:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i250
	addi.d	$a0, $s1, 4
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	st.d	$s5, $a1, 0
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s4, $a2, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $fp, $s5, 2
	st.d	$a0, $a1, 16
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
.LBB4_182:                              # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit251
	ld.d	$a1, $a2, 8
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $a4, 8
	ld.d	$a2, $a4, 16
	srli.d	$a3, $s2, 2
	sub.d	$a1, $a1, $s4
	srli.d	$a1, $a1, 2
	sub.d	$fp, $a1, $a3
	beq	$a0, $a2, .LBB4_198
# %bb.183:
	st.w	$fp, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a4, 8
.LBB4_184:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit258
	ld.d	$s1, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a0, $s1, 64
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	beqz	$a0, .LBB4_247
.LBB4_185:
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$a1, $a0, %got_pc_lo12(_ZN8Parallel4mypeE)
	ld.d	$a0, $a3, 8
	ld.d	$s3, $a3, 0
	ld.w	$a2, $s1, 68
	ld.w	$s7, $a1, 0
	sub.d	$s4, $a0, $s3
	srai.d	$s5, $s4, 2
	st.d	$s7, $sp, 120                   # 8-byte Folded Spill
	beqz	$a2, .LBB4_196
.LBB4_186:
	st.d	$s5, $sp, 112                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	blez	$a0, .LBB4_231
.LBB4_187:                              # %.lr.ph531.preheader
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 68
	slti	$a0, $a0, 1
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	masknez	$a1, $a1, $a0
	ori	$s2, $zero, 1
	maskeqz	$a0, $s2, $a0
	or	$s5, $a0, $a1
	ld.d	$a0, $a3, 8
	ld.d	$a1, $a3, 16
	addi.w	$a2, $zero, -4
	lu52i.d	$s7, $a2, 2047
	addi.w	$a2, $zero, -1
	lu52i.d	$s8, $a2, 511
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	b	.LBB4_189
	.p2align	4, , 16
.LBB4_188:                              #   in Loop: Header=BB4_189 Depth=1
	st.w	$s5, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a3, 8
	addi.w	$s1, $s1, -1
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	add.d	$s5, $s5, $a2
	beqz	$s1, .LBB4_231
.LBB4_189:                              # %.lr.ph531
                                        # =>This Inner Loop Header: Depth=1
	bne	$a0, $a1, .LBB4_188
# %bb.190:                              #   in Loop: Header=BB4_189 Depth=1
	ld.d	$s3, $a3, 0
	sub.d	$s0, $a1, $s3
	beq	$s0, $s7, .LBB4_376
# %bb.191:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i302
                                        #   in Loop: Header=BB4_189 Depth=1
	srai.d	$a0, $s0, 2
	sltu	$a1, $s2, $a0
	masknez	$a2, $s2, $a1
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
	or	$fp, $a1, $a0
	slli.d	$a0, $fp, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	stx.w	$s5, $a0, $s0
	blez	$s0, .LBB4_193
# %bb.192:                              #   in Loop: Header=BB4_189 Depth=1
	move	$a0, $s4
	move	$a1, $s3
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_193:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i304
                                        #   in Loop: Header=BB4_189 Depth=1
	beqz	$s3, .LBB4_195
# %bb.194:                              #   in Loop: Header=BB4_189 Depth=1
	move	$a0, $s3
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_195:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i306
                                        #   in Loop: Header=BB4_189 Depth=1
	add.d	$a0, $s4, $s0
	addi.d	$a0, $a0, 4
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	st.d	$s4, $a3, 0
	st.d	$a0, $a3, 8
	alsl.d	$a1, $fp, $s4, 2
	st.d	$a1, $a3, 16
	addi.w	$s1, $s1, -1
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	add.d	$s5, $s5, $a2
	bnez	$s1, .LBB4_189
	b	.LBB4_231
.LBB4_196:
	ld.d	$a1, $a3, 16
	beq	$a0, $a1, .LBB4_204
# %bb.197:
	st.w	$zero, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a3, 8
	ld.d	$s2, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a0, $s1, 64
	ori	$a1, $zero, 2
	bge	$a0, $a1, .LBB4_210
	b	.LBB4_186
.LBB4_198:
	ld.d	$s0, $a4, 0
	sub.d	$s3, $a0, $s0
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s3, $a0, .LBB4_376
# %bb.199:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i253
	srai.d	$a0, $s3, 2
	ori	$a1, $zero, 1
	sltu	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a0, $a2
	or	$a1, $a2, $a1
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
	or	$s1, $a1, $a0
	slli.d	$a0, $s1, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	stx.w	$fp, $a0, $s3
	blez	$s3, .LBB4_201
# %bb.200:
	move	$a0, $s4
	move	$a1, $s0
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_201:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i255
	add.d	$fp, $s4, $s3
	beqz	$s0, .LBB4_203
# %bb.202:
	move	$a0, $s0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_203:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i257
	addi.d	$a0, $fp, 4
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	st.d	$s4, $a1, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $s1, $s4, 2
	st.d	$a0, $a1, 16
	ld.d	$s1, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a0, $s1, 64
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	bnez	$a0, .LBB4_185
	b	.LBB4_247
.LBB4_204:
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	ld.d	$s2, $sp, 48                    # 8-byte Folded Reload
	beq	$s4, $a0, .LBB4_376
# %bb.205:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i267
	ori	$a0, $zero, 1
	sltu	$a1, $a0, $s5
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s5, $a1
	or	$a0, $a1, $a0
	add.d	$a1, $a0, $s5
	sltu	$a0, $a1, $a0
	addi.w	$a2, $zero, -1
	lu52i.d	$a2, $a2, 511
	sltu	$a3, $a1, $a2
	maskeqz	$a1, $a1, $a3
	masknez	$a3, $a2, $a3
	or	$a1, $a1, $a3
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $a2, $a0
	or	$s1, $a0, $a1
	slli.d	$a0, $s1, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	stx.w	$zero, $a0, $s4
	blez	$s4, .LBB4_207
# %bb.206:
	move	$a0, $s0
	move	$a1, $s3
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_207:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i269
	add.d	$fp, $s0, $s4
	beqz	$s3, .LBB4_209
# %bb.208:
	move	$a0, $s3
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_209:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i271
	addi.d	$a0, $fp, 4
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	st.d	$s0, $a3, 0
	st.d	$a0, $a3, 8
	alsl.d	$a0, $s1, $s0, 2
	st.d	$a0, $a3, 16
	ld.d	$s1, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a0, $s1, 64
	ori	$a1, $zero, 2
	blt	$a0, $a1, .LBB4_186
.LBB4_210:
	ld.d	$a0, $s2, 8
	ld.d	$a1, $s2, 16
	beq	$a0, $a1, .LBB4_219
# %bb.211:
	st.w	$zero, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $s2, 8
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $a2, 8
	ld.d	$a1, $a2, 16
	beq	$a0, $a1, .LBB4_225
.LBB4_212:
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a2, 8
	addi.d	$s5, $s5, 1
	st.d	$s5, $sp, 112                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	bgtz	$a0, .LBB4_187
	b	.LBB4_231
.LBB4_213:
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s2, $a0, .LBB4_376
# %bb.214:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i260.peel
	move	$a1, $s2
	srai.d	$a0, $a1, 2
	ori	$a1, $zero, 1
	sltu	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a0, $a2
	or	$a1, $a2, $a1
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
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	stx.w	$zero, $a0, $s2
	blez	$s2, .LBB4_216
# %bb.215:
	move	$a0, $s5
	move	$a1, $s4
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_216:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i262.peel
	add.d	$fp, $s5, $s2
	beqz	$s4, .LBB4_218
# %bb.217:
	move	$a0, $s4
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_218:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i264.peel
	addi.d	$a0, $fp, 4
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	st.d	$s5, $a2, 0
	st.d	$a0, $a2, 8
	alsl.d	$a1, $s0, $s5, 2
	st.d	$a1, $a2, 16
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	bnez	$a1, .LBB4_162
	b	.LBB4_173
.LBB4_219:
	ld.d	$s0, $s2, 0
	sub.d	$s3, $a0, $s0
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s3, $a0, .LBB4_376
# %bb.220:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i274
	srai.d	$a0, $s3, 2
	ori	$a1, $zero, 1
	sltu	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a0, $a2
	or	$a1, $a2, $a1
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
	or	$s1, $a1, $a0
	slli.d	$a0, $s1, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	stx.w	$zero, $a0, $s3
	blez	$s3, .LBB4_222
# %bb.221:
	move	$a0, $s4
	move	$a1, $s0
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_222:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i276
	add.d	$fp, $s4, $s3
	beqz	$s0, .LBB4_224
# %bb.223:
	move	$a0, $s0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_224:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i278
	addi.d	$a0, $fp, 4
	st.d	$s4, $s2, 0
	st.d	$a0, $s2, 8
	alsl.d	$a0, $s1, $s4, 2
	st.d	$a0, $s2, 16
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a0, $a2, 8
	ld.d	$a1, $a2, 16
	bne	$a0, $a1, .LBB4_212
.LBB4_225:
	ld.d	$s0, $a2, 0
	sub.d	$s3, $a0, $s0
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s3, $a0, .LBB4_376
# %bb.226:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i281
	srai.d	$a0, $s3, 2
	ori	$fp, $zero, 1
	sltu	$a1, $fp, $a0
	masknez	$a2, $fp, $a1
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
	or	$s1, $a1, $a0
	slli.d	$a0, $s1, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	stx.w	$fp, $a0, $s3
	blez	$s3, .LBB4_228
# %bb.227:
	move	$a0, $s4
	move	$a1, $s0
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_228:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i283
	add.d	$fp, $s4, $s3
	beqz	$s0, .LBB4_230
# %bb.229:
	move	$a0, $s0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_230:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i285
	addi.d	$a0, $fp, 4
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	st.d	$s4, $a1, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $s1, $s4, 2
	st.d	$a0, $a1, 16
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	addi.d	$s5, $s5, 1
	st.d	$s5, $sp, 112                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	bgtz	$a0, .LBB4_187
.LBB4_231:                              # %._crit_edge532
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $a2, 8
	ld.d	$a1, $a2, 16
	ld.d	$a4, $sp, 120                   # 8-byte Folded Reload
	addi.d	$s1, $a4, -1
	beq	$a0, $a1, .LBB4_233
# %bb.232:
	st.w	$s1, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a2, 8
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 136                   # 8-byte Folded Reload
	b	.LBB4_239
.LBB4_233:
	ld.d	$s0, $a2, 0
	sub.d	$s3, $a0, $s0
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	beq	$s3, $a0, .LBB4_376
# %bb.234:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i288
	srai.d	$a0, $s3, 2
	ori	$a1, $zero, 1
	sltu	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a0, $a2
	or	$a1, $a2, $a1
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
	or	$s2, $a1, $a0
	slli.d	$a0, $s2, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	stx.w	$s1, $a0, $s3
	blez	$s3, .LBB4_236
# %bb.235:
	move	$a0, $s4
	move	$a1, $s0
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_236:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i290
	add.d	$fp, $s4, $s3
	ld.d	$s1, $sp, 136                   # 8-byte Folded Reload
	beqz	$s0, .LBB4_238
# %bb.237:
	move	$a0, $s0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_238:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i292
	addi.d	$a0, $fp, 4
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	st.d	$s4, $a1, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $s2, $s4, 2
	st.d	$a0, $a1, 16
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
.LBB4_239:                              # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit293
	ld.d	$a1, $a3, 8
	ld.d	$a2, $a3, 0
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $a4, 8
	ld.d	$a3, $a4, 16
	sub.d	$a1, $a1, $a2
	srli.d	$a1, $a1, 2
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	sub.d	$fp, $a1, $a2
	beq	$a0, $a3, .LBB4_241
# %bb.240:
	st.w	$fp, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a4, 8
	b	.LBB4_247
.LBB4_241:
	ld.d	$s0, $a4, 0
	sub.d	$s1, $a0, $s0
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s1, $a0, .LBB4_376
# %bb.242:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i295
	srai.d	$a0, $s1, 2
	ori	$a1, $zero, 1
	sltu	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a0, $a2
	or	$a1, $a2, $a1
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
	or	$s3, $a1, $a0
	slli.d	$a0, $s3, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	stx.w	$fp, $a0, $s1
	blez	$s1, .LBB4_244
# %bb.243:
	move	$a0, $s2
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_244:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i297
	add.d	$fp, $s2, $s1
	beqz	$s0, .LBB4_246
# %bb.245:
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_246:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i299
	addi.d	$a0, $fp, 4
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	st.d	$s2, $a1, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $s3, $s2, 2
	st.d	$a0, $a1, 16
	ld.d	$s1, $sp, 136                   # 8-byte Folded Reload
.LBB4_247:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit300
	ld.d	$a5, $sp, 280
	ld.d	$a6, $sp, 272
	ld.w	$a0, $s1, 56
	ld.w	$a2, $s1, 64
	ld.w	$a1, $s1, 68
	addi.w	$a0, $a0, -1
	st.d	$a5, $sp, 112                   # 8-byte Folded Spill
	st.d	$a6, $sp, 120                   # 8-byte Folded Spill
	beq	$a2, $a0, .LBB4_311
# %bb.248:
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$a3, $a0, %got_pc_lo12(_ZN8Parallel4mypeE)
	ld.d	$a0, $s6, 8
	ld.d	$s1, $s6, 0
	ld.w	$s5, $a3, 0
	sub.d	$s2, $a0, $s1
	or	$a1, $a2, $a1
	srai.d	$a2, $s2, 2
	st.d	$a2, $sp, 96                    # 8-byte Folded Spill
	bnez	$a1, .LBB4_251
# %bb.249:
	ld.d	$a1, $s6, 16
	beq	$a0, $a1, .LBB4_262
# %bb.250:
	st.w	$zero, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $s6, 8
.LBB4_251:
	move	$s0, $s1
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	blez	$a2, .LBB4_268
.LBB4_252:                              # %.lr.ph536.preheader
	ld.w	$a1, $a1, 68
	slt	$a1, $zero, $a1
	addi.w	$a2, $zero, -1
	ld.d	$a4, $sp, 104                   # 8-byte Folded Reload
	alsl.w	$a3, $a4, $a2, 1
	maskeqz	$a3, $a3, $a1
	masknez	$a1, $a4, $a1
	or	$s7, $a3, $a1
	ld.d	$a1, $s6, 16
	addi.w	$a3, $zero, -4
	lu52i.d	$s8, $a3, 2047
	ori	$fp, $zero, 1
	lu52i.d	$s3, $a2, 511
	b	.LBB4_255
	.p2align	4, , 16
.LBB4_253:                              #   in Loop: Header=BB4_255 Depth=1
	st.w	$s7, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $s6, 8
	move	$s1, $s0
.LBB4_254:                              # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit335
                                        #   in Loop: Header=BB4_255 Depth=1
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	addi.w	$a2, $a2, -1
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	add.d	$s7, $s7, $a3
	st.d	$a2, $sp, 80                    # 8-byte Folded Spill
	beqz	$a2, .LBB4_269
.LBB4_255:                              # %.lr.ph536
                                        # =>This Inner Loop Header: Depth=1
	bne	$a0, $a1, .LBB4_253
# %bb.256:                              #   in Loop: Header=BB4_255 Depth=1
	sub.d	$s2, $a1, $s0
	beq	$s2, $s8, .LBB4_376
# %bb.257:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i330
                                        #   in Loop: Header=BB4_255 Depth=1
	srai.d	$a0, $s2, 2
	sltu	$a1, $fp, $a0
	masknez	$a2, $fp, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	sltu	$a2, $a0, $s3
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $s3, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s3, $a1
	or	$s4, $a1, $a0
	slli.d	$a0, $s4, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	stx.w	$s7, $a0, $s2
	blez	$s2, .LBB4_259
# %bb.258:                              #   in Loop: Header=BB4_255 Depth=1
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_259:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i332
                                        #   in Loop: Header=BB4_255 Depth=1
	beqz	$s0, .LBB4_261
# %bb.260:                              #   in Loop: Header=BB4_255 Depth=1
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_261:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i334
                                        #   in Loop: Header=BB4_255 Depth=1
	add.d	$a0, $s1, $s2
	addi.d	$a0, $a0, 4
	st.d	$s1, $s6, 0
	st.d	$a0, $s6, 8
	alsl.d	$a1, $s4, $s1, 2
	st.d	$a1, $s6, 16
	move	$s0, $s1
	b	.LBB4_254
.LBB4_262:
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s2, $a0, .LBB4_376
# %bb.263:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i309
	ori	$a0, $zero, 1
	sltu	$a1, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	add.d	$a1, $a0, $a2
	sltu	$a0, $a1, $a0
	addi.w	$a2, $zero, -1
	lu52i.d	$a2, $a2, 511
	sltu	$a3, $a1, $a2
	maskeqz	$a1, $a1, $a3
	masknez	$a3, $a2, $a3
	or	$a1, $a1, $a3
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $a2, $a0
	or	$fp, $a0, $a1
	slli.d	$a0, $fp, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	stx.w	$zero, $a0, $s2
	blez	$s2, .LBB4_265
# %bb.264:
	move	$a0, $s0
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_265:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i311
	add.d	$s3, $s0, $s2
	beqz	$s1, .LBB4_267
# %bb.266:
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_267:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i313
	addi.d	$a0, $s3, 4
	st.d	$s0, $s6, 0
	st.d	$a0, $s6, 8
	alsl.d	$a1, $fp, $s0, 2
	st.d	$a1, $s6, 16
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	bgtz	$a2, .LBB4_252
.LBB4_268:
	move	$s1, $s0
.LBB4_269:                              # %._crit_edge537
	ld.d	$a6, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a0, $a6, 8
	ld.d	$a1, $a6, 16
	addi.d	$s3, $s5, 1
	beq	$a0, $a1, .LBB4_271
# %bb.270:
	st.w	$s3, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a6, 8
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	b	.LBB4_277
.LBB4_271:
	ld.d	$s0, $a6, 0
	sub.d	$s1, $a0, $s0
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	beq	$s1, $a0, .LBB4_376
# %bb.272:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i316
	srai.d	$a0, $s1, 2
	ori	$a1, $zero, 1
	sltu	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a0, $a2
	or	$a1, $a2, $a1
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
	or	$fp, $a1, $a0
	slli.d	$a0, $fp, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	stx.w	$s3, $a0, $s1
	blez	$s1, .LBB4_274
# %bb.273:
	move	$a0, $s2
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_274:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i318
	add.d	$s3, $s2, $s1
	beqz	$s0, .LBB4_276
# %bb.275:
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_276:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i320
	addi.d	$a0, $s3, 4
	ld.d	$a6, $sp, 120                   # 8-byte Folded Reload
	st.d	$s2, $a6, 0
	ld.d	$s1, $s6, 0
	st.d	$a0, $a6, 8
	alsl.d	$a0, $fp, $s2, 2
	st.d	$a0, $a6, 16
.LBB4_277:                              # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit321
	ld.d	$a1, $s6, 8
	ld.d	$a5, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $a5, 8
	ld.d	$a2, $a5, 16
	sub.d	$a1, $a1, $s1
	srli.d	$a1, $a1, 2
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	sub.d	$fp, $a1, $a3
	beq	$a0, $a2, .LBB4_279
# %bb.278:
	st.w	$fp, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a5, 8
	b	.LBB4_285
.LBB4_279:
	ld.d	$s0, $a5, 0
	sub.d	$s1, $a0, $s0
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s1, $a0, .LBB4_376
# %bb.280:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i323
	srai.d	$a0, $s1, 2
	ori	$a1, $zero, 1
	sltu	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a0, $a2
	or	$a1, $a2, $a1
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
	or	$s3, $a1, $a0
	slli.d	$a0, $s3, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	stx.w	$fp, $a0, $s1
	blez	$s1, .LBB4_282
# %bb.281:
	move	$a0, $s2
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_282:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i325
	add.d	$fp, $s2, $s1
	beqz	$s0, .LBB4_284
# %bb.283:
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_284:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i327
	addi.d	$a0, $fp, 4
	ld.d	$a5, $sp, 112                   # 8-byte Folded Reload
	st.d	$s2, $a5, 0
	st.d	$a0, $a5, 8
	alsl.d	$a0, $s3, $s2, 2
	st.d	$a0, $a5, 16
	ld.d	$a6, $sp, 120                   # 8-byte Folded Reload
.LBB4_285:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit328
	ld.d	$s1, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a0, $s1, 64
	ld.w	$a1, $s1, 68
	or	$a0, $a0, $a1
	bnez	$a0, .LBB4_311
# %bb.286:                              # %.preheader
	ld.w	$a0, $s1, 56
	ori	$a1, $zero, 3
	blt	$a0, $a1, .LBB4_324
# %bb.287:                              # %.lr.ph539.preheader
	ori	$fp, $zero, 2
	addi.w	$a0, $zero, -4
	lu52i.d	$s3, $a0, 2047
	ori	$s7, $zero, 1
	addi.w	$a0, $zero, -1
	lu52i.d	$s8, $a0, 511
	b	.LBB4_289
	.p2align	4, , 16
.LBB4_288:                              #   in Loop: Header=BB4_289 Depth=1
	st.w	$s7, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a5, 8
	ld.w	$a0, $s1, 56
	addi.w	$fp, $fp, 1
	bge	$fp, $a0, .LBB4_310
.LBB4_289:                              # %.lr.ph539
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s6, 8
	ld.d	$a1, $s6, 16
	beq	$a0, $a1, .LBB4_292
# %bb.290:                              #   in Loop: Header=BB4_289 Depth=1
	st.w	$zero, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $s6, 8
	ld.d	$a0, $a6, 8
	ld.d	$a1, $a6, 16
	beq	$a0, $a1, .LBB4_298
.LBB4_291:                              #   in Loop: Header=BB4_289 Depth=1
	st.w	$fp, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a6, 8
	ld.d	$a0, $a5, 8
	ld.d	$a1, $a5, 16
	bne	$a0, $a1, .LBB4_288
	b	.LBB4_304
	.p2align	4, , 16
.LBB4_292:                              #   in Loop: Header=BB4_289 Depth=1
	ld.d	$s1, $s6, 0
	sub.d	$s0, $a0, $s1
	beq	$s0, $s3, .LBB4_376
# %bb.293:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i337
                                        #   in Loop: Header=BB4_289 Depth=1
	srai.d	$a0, $s0, 2
	sltu	$a1, $s7, $a0
	masknez	$a2, $s7, $a1
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
	or	$s4, $a1, $a0
	slli.d	$a0, $s4, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	stx.w	$zero, $a0, $s0
	blez	$s0, .LBB4_295
# %bb.294:                              #   in Loop: Header=BB4_289 Depth=1
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_295:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i339
                                        #   in Loop: Header=BB4_289 Depth=1
	beqz	$s1, .LBB4_297
# %bb.296:                              #   in Loop: Header=BB4_289 Depth=1
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_297:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i341
                                        #   in Loop: Header=BB4_289 Depth=1
	add.d	$a0, $s2, $s0
	addi.d	$a0, $a0, 4
	st.d	$s2, $s6, 0
	st.d	$a0, $s6, 8
	alsl.d	$a0, $s4, $s2, 2
	st.d	$a0, $s6, 16
	ld.d	$s1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a0, $a6, 8
	ld.d	$a1, $a6, 16
	bne	$a0, $a1, .LBB4_291
.LBB4_298:                              #   in Loop: Header=BB4_289 Depth=1
	ld.d	$s1, $a6, 0
	sub.d	$s0, $a0, $s1
	beq	$s0, $s3, .LBB4_376
# %bb.299:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i344
                                        #   in Loop: Header=BB4_289 Depth=1
	srai.d	$a0, $s0, 2
	sltu	$a1, $s7, $a0
	masknez	$a2, $s7, $a1
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
	or	$s4, $a1, $a0
	slli.d	$a0, $s4, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	stx.w	$fp, $a0, $s0
	blez	$s0, .LBB4_301
# %bb.300:                              #   in Loop: Header=BB4_289 Depth=1
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_301:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i346
                                        #   in Loop: Header=BB4_289 Depth=1
	beqz	$s1, .LBB4_303
# %bb.302:                              #   in Loop: Header=BB4_289 Depth=1
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_303:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i348
                                        #   in Loop: Header=BB4_289 Depth=1
	add.d	$a0, $s2, $s0
	addi.d	$a0, $a0, 4
	ld.d	$a6, $sp, 120                   # 8-byte Folded Reload
	st.d	$s2, $a6, 0
	st.d	$a0, $a6, 8
	alsl.d	$a0, $s4, $s2, 2
	st.d	$a0, $a6, 16
	ld.d	$s1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $a5, 8
	ld.d	$a1, $a5, 16
	bne	$a0, $a1, .LBB4_288
.LBB4_304:                              #   in Loop: Header=BB4_289 Depth=1
	ld.d	$s1, $a5, 0
	sub.d	$s0, $a0, $s1
	beq	$s0, $s3, .LBB4_376
# %bb.305:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i351
                                        #   in Loop: Header=BB4_289 Depth=1
	srai.d	$a0, $s0, 2
	sltu	$a1, $s7, $a0
	masknez	$a2, $s7, $a1
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
	or	$s4, $a1, $a0
	slli.d	$a0, $s4, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	stx.w	$s7, $a0, $s0
	blez	$s0, .LBB4_307
# %bb.306:                              #   in Loop: Header=BB4_289 Depth=1
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_307:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i353
                                        #   in Loop: Header=BB4_289 Depth=1
	beqz	$s1, .LBB4_309
# %bb.308:                              #   in Loop: Header=BB4_289 Depth=1
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_309:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i355
                                        #   in Loop: Header=BB4_289 Depth=1
	add.d	$a0, $s2, $s0
	addi.d	$a0, $a0, 4
	ld.d	$a5, $sp, 112                   # 8-byte Folded Reload
	st.d	$s2, $a5, 0
	st.d	$a0, $a5, 8
	alsl.d	$a0, $s4, $s2, 2
	st.d	$a0, $a5, 16
	ld.d	$s1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 120                   # 8-byte Folded Reload
	ld.w	$a0, $s1, 56
	addi.w	$fp, $fp, 1
	blt	$fp, $a0, .LBB4_289
.LBB4_310:                              # %thread-pre-split.loopexit
	ld.w	$a1, $s1, 68
.LBB4_311:                              # %thread-pre-split
	ld.w	$a0, $s1, 60
	addi.w	$a0, $a0, -1
	beq	$a1, $a0, .LBB4_325
.LBB4_312:
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZN8Parallel4mypeE)
	ld.w	$a4, $a0, 0
	ld.d	$a0, $s6, 8
	move	$a2, $s1
	ld.d	$s1, $s6, 0
	ld.w	$a5, $a2, 56
	sub.d	$s4, $a0, $s1
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	st.d	$a4, $sp, 104                   # 8-byte Folded Spill
	st.d	$a5, $sp, 96                    # 8-byte Folded Spill
	bltz	$s5, .LBB4_329
# %bb.313:                              # %.lr.ph544.preheader
	ld.w	$a2, $a2, 64
	sltui	$a1, $a1, 1
	maskeqz	$a1, $s5, $a1
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	sub.d	$fp, $a3, $a1
	beqz	$a2, .LBB4_326
# %bb.314:
	move	$s2, $s1
	beqz	$s5, .LBB4_328
.LBB4_315:                              # %.lr.ph544.peel.next.preheader
	addi.d	$s8, $fp, 1
	addi.w	$a1, $zero, -4
	lu52i.d	$s0, $a1, 2047
	ori	$fp, $zero, 1
	addi.w	$a1, $zero, -1
	lu52i.d	$s7, $a1, 511
	move	$s4, $s5
	b	.LBB4_317
	.p2align	4, , 16
.LBB4_316:                              #   in Loop: Header=BB4_317 Depth=1
	st.w	$s8, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $s6, 8
	move	$s1, $s2
	addi.w	$s4, $s4, -1
	addi.d	$s8, $s8, 1
	beqz	$s4, .LBB4_329
.LBB4_317:                              # %.lr.ph544.peel.next
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s6, 16
	bne	$a0, $a1, .LBB4_316
# %bb.318:                              #   in Loop: Header=BB4_317 Depth=1
	sub.d	$s3, $a0, $s2
	beq	$s3, $s0, .LBB4_376
# %bb.319:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i372
                                        #   in Loop: Header=BB4_317 Depth=1
	srai.d	$a0, $s3, 2
	sltu	$a1, $fp, $a0
	masknez	$a2, $fp, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	sltu	$a2, $a0, $s7
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $s7, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s7, $a1
	or	$s5, $a1, $a0
	slli.d	$a0, $s5, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	stx.w	$s8, $a0, $s3
	blez	$s3, .LBB4_321
# %bb.320:                              #   in Loop: Header=BB4_317 Depth=1
	move	$a0, $s1
	move	$a1, $s2
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_321:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i374
                                        #   in Loop: Header=BB4_317 Depth=1
	beqz	$s2, .LBB4_323
# %bb.322:                              #   in Loop: Header=BB4_317 Depth=1
	move	$a0, $s2
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_323:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i376
                                        #   in Loop: Header=BB4_317 Depth=1
	add.d	$a0, $s1, $s3
	addi.d	$a0, $a0, 4
	st.d	$s1, $s6, 0
	st.d	$a0, $s6, 8
	alsl.d	$a1, $s5, $s1, 2
	st.d	$a1, $s6, 16
	move	$s2, $s1
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	addi.w	$s4, $s4, -1
	addi.d	$s8, $s8, 1
	bnez	$s4, .LBB4_317
	b	.LBB4_329
.LBB4_324:
	move	$a1, $zero
	ld.w	$a0, $s1, 60
	addi.w	$a0, $a0, -1
	bne	$a1, $a0, .LBB4_312
.LBB4_325:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit370
	ld.w	$s3, $s1, 56
	ld.w	$a0, $s1, 64
	addi.w	$a1, $s3, -1
	beq	$a0, $a1, .LBB4_369
	b	.LBB4_345
.LBB4_326:
	ld.d	$a1, $s6, 16
	beq	$a0, $a1, .LBB4_370
# %bb.327:
	st.w	$fp, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $s6, 8
	move	$s2, $s1
	bnez	$s5, .LBB4_315
.LBB4_328:
	move	$s1, $s2
.LBB4_329:                              # %._crit_edge545
	ld.d	$a6, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a0, $a6, 8
	ld.d	$a1, $a6, 16
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	add.d	$s0, $a3, $a2
	beq	$a0, $a1, .LBB4_331
# %bb.330:
	st.w	$s0, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a6, 8
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	b	.LBB4_337
.LBB4_331:
	ld.d	$s1, $a6, 0
	sub.d	$s2, $a0, $s1
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	beq	$s2, $a0, .LBB4_376
# %bb.332:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i358
	srai.d	$a0, $s2, 2
	ori	$a1, $zero, 1
	sltu	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a0, $a2
	or	$a1, $a2, $a1
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
	or	$fp, $a1, $a0
	slli.d	$a0, $fp, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	stx.w	$s0, $a0, $s2
	blez	$s2, .LBB4_334
# %bb.333:
	move	$a0, $s3
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_334:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i360
	add.d	$s0, $s3, $s2
	beqz	$s1, .LBB4_336
# %bb.335:
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_336:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i362
	addi.d	$a0, $s0, 4
	ld.d	$a6, $sp, 120                   # 8-byte Folded Reload
	st.d	$s3, $a6, 0
	ld.d	$s1, $s6, 0
	st.d	$a0, $a6, 8
	alsl.d	$a0, $fp, $s3, 2
	st.d	$a0, $a6, 16
.LBB4_337:                              # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit363
	ld.d	$a1, $s6, 8
	ld.d	$a5, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $a5, 8
	ld.d	$a2, $a5, 16
	srli.d	$a3, $s4, 2
	sub.d	$a1, $a1, $s1
	srli.d	$a1, $a1, 2
	sub.d	$fp, $a1, $a3
	beq	$a0, $a2, .LBB4_339
# %bb.338:
	st.w	$fp, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a5, 8
	ld.d	$s1, $sp, 136                   # 8-byte Folded Reload
	ld.w	$s3, $s1, 56
	ld.w	$a0, $s1, 64
	addi.w	$a1, $s3, -1
	beq	$a0, $a1, .LBB4_369
	b	.LBB4_345
.LBB4_339:
	ld.d	$s0, $a5, 0
	sub.d	$s1, $a0, $s0
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s1, $a0, .LBB4_376
# %bb.340:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i365
	srai.d	$a0, $s1, 2
	ori	$a1, $zero, 1
	sltu	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a0, $a2
	or	$a1, $a2, $a1
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
	or	$s3, $a1, $a0
	slli.d	$a0, $s3, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	stx.w	$fp, $a0, $s1
	blez	$s1, .LBB4_342
# %bb.341:
	move	$a0, $s2
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_342:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i367
	add.d	$fp, $s2, $s1
	beqz	$s0, .LBB4_344
# %bb.343:
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_344:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i369
	addi.d	$a0, $fp, 4
	ld.d	$a5, $sp, 112                   # 8-byte Folded Reload
	st.d	$s2, $a5, 0
	st.d	$a0, $a5, 8
	alsl.d	$a0, $s3, $s2, 2
	st.d	$a0, $a5, 16
	ld.d	$s1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 120                   # 8-byte Folded Reload
	ld.w	$s3, $s1, 56
	ld.w	$a0, $s1, 64
	addi.w	$a1, $s3, -1
	beq	$a0, $a1, .LBB4_369
.LBB4_345:
	ld.w	$a1, $s1, 60
	ld.w	$a0, $s1, 68
	addi.w	$a1, $a1, -1
	beq	$a0, $a1, .LBB4_369
# %bb.346:
	pcalau12i	$a1, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$a1, $a1, %got_pc_lo12(_ZN8Parallel4mypeE)
	ld.w	$s4, $a1, 0
	sltui	$a1, $a0, 1
	nor	$a2, $s5, $zero
	addi.w	$s2, $zero, -1
	ld.d	$a0, $s6, 8
	ld.d	$a3, $s6, 16
	masknez	$a4, $s2, $a1
	maskeqz	$a1, $a2, $a1
	or	$a1, $a1, $a4
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	add.d	$s7, $a1, $a2
	beq	$a0, $a3, .LBB4_348
# %bb.347:
	st.w	$s7, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $s6, 8
	b	.LBB4_354
.LBB4_348:
	ld.d	$fp, $s6, 0
	sub.d	$s0, $a0, $fp
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s0, $a0, .LBB4_376
# %bb.349:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i379
	srai.d	$a0, $s0, 2
	ori	$a1, $zero, 1
	sltu	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a0, $a2
	or	$a1, $a2, $a1
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	lu52i.d	$a2, $s2, 511
	sltu	$a3, $a0, $a2
	maskeqz	$a0, $a0, $a3
	masknez	$a3, $a2, $a3
	or	$a0, $a0, $a3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$s5, $a1, $a0
	slli.d	$a0, $s5, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	stx.w	$s7, $a0, $s0
	blez	$s0, .LBB4_351
# %bb.350:
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_351:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i381
	add.d	$s7, $s1, $s0
	beqz	$fp, .LBB4_353
# %bb.352:
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_353:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i383
	addi.d	$a0, $s7, 4
	st.d	$s1, $s6, 0
	st.d	$a0, $s6, 8
	alsl.d	$a0, $s5, $s1, 2
	st.d	$a0, $s6, 16
	ld.d	$a5, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 120                   # 8-byte Folded Reload
.LBB4_354:                              # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit384
	ld.d	$a0, $a6, 8
	ld.d	$a1, $a6, 16
	add.d	$a2, $s3, $s4
	addi.d	$s3, $a2, 1
	beq	$a0, $a1, .LBB4_357
# %bb.355:
	st.w	$s3, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a6, 8
	ld.d	$a0, $a5, 8
	ld.d	$a1, $a5, 16
	beq	$a0, $a1, .LBB4_363
.LBB4_356:
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a5, 8
	b	.LBB4_369
.LBB4_357:
	ld.d	$fp, $a6, 0
	sub.d	$s0, $a0, $fp
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s0, $a0, .LBB4_376
# %bb.358:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i386
	srai.d	$a0, $s0, 2
	ori	$a1, $zero, 1
	sltu	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a0, $a2
	or	$a1, $a2, $a1
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	lu52i.d	$a2, $s2, 511
	sltu	$a3, $a0, $a2
	maskeqz	$a0, $a0, $a3
	masknez	$a3, $a2, $a3
	or	$a0, $a0, $a3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$s4, $a1, $a0
	slli.d	$a0, $s4, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	stx.w	$s3, $a0, $s0
	blez	$s0, .LBB4_360
# %bb.359:
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_360:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i388
	add.d	$s3, $s1, $s0
	beqz	$fp, .LBB4_362
# %bb.361:
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_362:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i390
	addi.d	$a0, $s3, 4
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	st.d	$s1, $a1, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $s4, $s1, 2
	st.d	$a0, $a1, 16
	ld.d	$a5, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $a5, 8
	ld.d	$a1, $a5, 16
	bne	$a0, $a1, .LBB4_356
.LBB4_363:
	ld.d	$fp, $a5, 0
	sub.d	$s0, $a0, $fp
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s0, $a0, .LBB4_376
# %bb.364:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i393
	srai.d	$a0, $s0, 2
	ori	$s3, $zero, 1
	sltu	$a1, $s3, $a0
	masknez	$a2, $s3, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	lu52i.d	$a2, $s2, 511
	sltu	$a3, $a0, $a2
	maskeqz	$a0, $a0, $a3
	masknez	$a3, $a2, $a3
	or	$a0, $a0, $a3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$s2, $a1, $a0
	slli.d	$a0, $s2, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	stx.w	$s3, $a0, $s0
	blez	$s0, .LBB4_366
# %bb.365:
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_366:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i395
	add.d	$s3, $s1, $s0
	beqz	$fp, .LBB4_368
# %bb.367:
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_368:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i397
	addi.d	$a0, $s3, 4
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	st.d	$s1, $a1, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $s2, $s1, 2
	st.d	$a0, $a1, 16
.LBB4_369:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit398
	fld.d	$fs4, $sp, 144                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 152                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 160                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 168                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 176                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 256                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 264                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 272
	ret
.LBB4_370:
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s4, $a0, .LBB4_376
# %bb.371:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i372.peel
	move	$a1, $s4
	srai.d	$a0, $a1, 2
	ori	$a1, $zero, 1
	sltu	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a0, $a2
	or	$a1, $a2, $a1
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
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	stx.w	$fp, $a0, $s4
	blez	$s4, .LBB4_373
# %bb.372:
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_373:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i374.peel
	add.d	$s3, $s2, $s4
	beqz	$s1, .LBB4_375
# %bb.374:
	move	$a0, $s1
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_375:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i376.peel
	addi.d	$a0, $s3, 4
	st.d	$s2, $s6, 0
	st.d	$a0, $s6, 8
	alsl.d	$a1, $s0, $s2, 2
	st.d	$a1, $s6, 16
	bnez	$s5, .LBB4_315
	b	.LBB4_328
.LBB4_376:                              # %.noexc
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.LBB4_377:
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Lfunc_end4:
	.size	_ZN7GenMesh11generatePieERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_, .Lfunc_end4-_ZN7GenMesh11generatePieERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_
	.cfi_endproc
                                        # -- End function
	.globl	_ZN7GenMesh12generateRectERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_ # -- Begin function _ZN7GenMesh12generateRectERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_
	.p2align	5
	.type	_ZN7GenMesh12generateRectERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_,@function
_ZN7GenMesh12generateRectERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_: # @_ZN7GenMesh12generateRectERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_
	.cfi_startproc
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
	move	$s4, $a0
	ld.w	$a0, $a0, 72
	ld.w	$t0, $s4, 76
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	addi.d	$a0, $a0, 1
	st.d	$t0, $sp, 48                    # 8-byte Folded Spill
	addi.d	$t0, $t0, 1
	st.d	$t0, $sp, 16                    # 8-byte Folded Spill
	mul.w	$s0, $t0, $a0
	st.d	$a7, $sp, 40                    # 8-byte Folded Spill
	bltz	$s0, .LBB5_317
# %bb.1:
	move	$s3, $a4
	move	$s6, $a1
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ld.d	$fp, $a1, 16
	ld.d	$s7, $a1, 0
	sub.d	$s8, $fp, $s7
	srai.d	$a0, $s8, 4
	st.d	$a6, $sp, 24                    # 8-byte Folded Spill
	st.d	$a5, $sp, 32                    # 8-byte Folded Spill
	st.d	$a3, $sp, 72                    # 8-byte Folded Spill
	st.d	$a2, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	bgeu	$a0, $s0, .LBB5_8
# %bb.2:                                # %_ZNSt12_Vector_baseI7double2SaIS0_EE11_M_allocateEm.exit.i.i
	ld.d	$fp, $s6, 8
	slli.d	$a0, $s0, 4
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	beq	$fp, $s7, .LBB5_5
# %bb.3:                                # %.lr.ph.i.i.i.i.i.i.preheader
	move	$a0, $s5
	move	$a1, $s7
	.p2align	4, , 16
.LBB5_4:                                # %.lr.ph.i.i.i.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a1, 0
	vst	$vr0, $a0, 0
	addi.d	$a1, $a1, 16
	addi.d	$a0, $a0, 16
	bne	$a1, $fp, .LBB5_4
.LBB5_5:                                # %_ZNSt6vectorI7double2SaIS0_EE20_M_allocate_and_copyIPKS0_EEPS0_mT_S7_.exit.i
	sub.d	$fp, $fp, $s7
	beqz	$s7, .LBB5_7
# %bb.6:
	move	$a0, $s7
	move	$a1, $s8
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_7:                                # %_ZNSt12_Vector_baseI7double2SaIS0_EE13_M_deallocateEPS0_m.exit.i
	st.d	$s5, $s6, 0
	add.d	$a0, $s5, $fp
	st.d	$a0, $s6, 8
	alsl.d	$fp, $s0, $s5, 4
	st.d	$fp, $s6, 16
	st.d	$s4, $sp, 104                   # 8-byte Folded Spill
	ld.d	$s8, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	bgez	$a0, .LBB5_9
	b	.LBB5_22
.LBB5_8:
	move	$s5, $s7
	st.d	$s4, $sp, 104                   # 8-byte Folded Spill
	ld.d	$s8, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	bltz	$a0, .LBB5_22
.LBB5_9:                                # %.lr.ph380
	bltz	$s8, .LBB5_22
# %bb.10:                               # %.lr.ph.preheader
	ld.w	$a0, $s4, 32
	move	$a1, $zero
	fld.d	$fa0, $s4, 40
	movgr2fr.w	$fa1, $a0
	ld.w	$a0, $s4, 36
	ffint.d.w	$fa1, $fa1
	fld.d	$fa2, $s4, 48
	fdiv.d	$fs0, $fa0, $fa1
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fs1, $fa2, $fa0
	ld.d	$a0, $s6, 8
	addi.w	$a2, $zero, -16
	lu52i.d	$a2, $a2, 2047
	st.d	$a2, $sp, 112                   # 8-byte Folded Spill
	addi.w	$a2, $zero, -1
	lu52i.d	$s1, $a2, 127
	b	.LBB5_12
	.p2align	4, , 16
.LBB5_11:                               # %._crit_edge
                                        #   in Loop: Header=BB5_12 Depth=1
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	addi.w	$a1, $a3, 1
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	beq	$a3, $a2, .LBB5_22
.LBB5_12:                               # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_14 Depth 2
                                        #       Child Loop BB5_18 Depth 3
	ld.w	$a3, $s4, 84
	move	$a2, $zero
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	add.d	$a1, $a3, $a1
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	fmul.d	$fs2, $fs1, $fa0
	b	.LBB5_14
	.p2align	4, , 16
.LBB5_13:                               #   in Loop: Header=BB5_14 Depth=2
	fst.d	$fs3, $a0, 0
	fst.d	$fs2, $a0, 8
	addi.d	$a0, $a0, 16
	st.d	$a0, $s6, 8
	addi.w	$a2, $s2, 1
	beq	$s2, $s8, .LBB5_11
.LBB5_14:                               #   Parent Loop BB5_12 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_18 Depth 3
	ld.w	$a1, $s4, 80
	move	$s2, $a2
	add.d	$a1, $a1, $a2
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	fmul.d	$fs3, $fs0, $fa0
	bne	$a0, $fp, .LBB5_13
# %bb.15:                               #   in Loop: Header=BB5_14 Depth=2
	sub.d	$s8, $fp, $s5
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	beq	$s8, $a0, .LBB5_316
# %bb.16:                               # %.noexc314
                                        #   in Loop: Header=BB5_14 Depth=2
	srai.d	$a0, $s8, 4
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	sltu	$a2, $a0, $s1
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $s1, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s1, $a1
	or	$s4, $a1, $a0
	slli.d	$a0, $s4, 4
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	add.d	$a0, $a0, $s8
	fstx.d	$fs3, $s0, $s8
	fst.d	$fs2, $a0, 8
	move	$s7, $s0
	beq	$s5, $fp, .LBB5_19
# %bb.17:                               # %.lr.ph.i.i.i.i.i.i.i.preheader
                                        #   in Loop: Header=BB5_14 Depth=2
	move	$s7, $s0
	move	$a0, $s5
	.p2align	4, , 16
.LBB5_18:                               # %.lr.ph.i.i.i.i.i.i.i
                                        #   Parent Loop BB5_12 Depth=1
                                        #     Parent Loop BB5_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr0, $a0, 0
	vst	$vr0, $s7, 0
	addi.d	$a0, $a0, 16
	addi.d	$s7, $s7, 16
	bne	$a0, $fp, .LBB5_18
.LBB5_19:                               # %_ZSt34__uninitialized_move_if_noexcept_aIP7double2S1_SaIS0_EET0_T_S4_S3_RT1_.exit.i.i
                                        #   in Loop: Header=BB5_14 Depth=2
	beqz	$s5, .LBB5_21
# %bb.20:                               #   in Loop: Header=BB5_14 Depth=2
	move	$a0, $s5
	move	$a1, $s8
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_21:                               # %_ZNSt6vectorI7double2SaIS0_EE17_M_realloc_appendIJS0_EEEvDpOT_.exit.i
                                        #   in Loop: Header=BB5_14 Depth=2
	addi.d	$a0, $s7, 16
	st.d	$s0, $s6, 0
	st.d	$a0, $s6, 8
	alsl.d	$fp, $s4, $s0, 4
	st.d	$fp, $s6, 16
	move	$s5, $s0
	ld.d	$s4, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 64                    # 8-byte Folded Reload
	addi.w	$a2, $s2, 1
	bne	$s2, $s8, .LBB5_14
	b	.LBB5_11
.LBB5_22:                               # %._crit_edge381
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	mul.w	$fp, $a0, $s8
	bltz	$fp, .LBB5_317
# %bb.23:
	ld.d	$s2, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $s2, 16
	ld.d	$s0, $s2, 0
	sub.d	$s6, $a0, $s0
	srai.d	$a0, $s6, 2
	ld.d	$s1, $sp, 72                    # 8-byte Folded Reload
	bgeu	$a0, $fp, .LBB5_29
# %bb.24:                               # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
	ld.d	$a0, $s2, 8
	sub.d	$s7, $a0, $s0
	slli.d	$a0, $fp, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	blez	$s7, .LBB5_26
# %bb.25:
	move	$a0, $s8
	move	$a1, $s0
	move	$a2, $s7
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_26:                               # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
	beqz	$s0, .LBB5_28
# %bb.27:
	move	$a0, $s0
	move	$a1, $s6
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_28:                               # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i
	st.d	$s8, $s2, 0
	add.d	$a0, $s8, $s7
	st.d	$a0, $s2, 8
	alsl.d	$a0, $fp, $s8, 2
	st.d	$a0, $s2, 16
	ld.d	$s8, $sp, 64                    # 8-byte Folded Reload
.LBB5_29:                               # %_ZNSt6vectorIiSaIiEE7reserveEm.exit
	ld.d	$a0, $s1, 16
	ld.d	$s0, $s1, 0
	sub.d	$s6, $a0, $s0
	srai.d	$a0, $s6, 2
	bgeu	$a0, $fp, .LBB5_35
# %bb.30:                               # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i137
	ld.d	$a0, $s1, 8
	sub.d	$s7, $a0, $s0
	slli.d	$a0, $fp, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	blez	$s7, .LBB5_32
# %bb.31:
	move	$a0, $s8
	move	$a1, $s0
	move	$a2, $s7
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_32:                               # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i138
	beqz	$s0, .LBB5_34
# %bb.33:
	move	$a0, $s0
	move	$a1, $s6
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_34:                               # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i140
	st.d	$s8, $s1, 0
	add.d	$a0, $s8, $s7
	st.d	$a0, $s1, 8
	alsl.d	$a0, $fp, $s8, 2
	st.d	$a0, $s1, 16
	ld.d	$s8, $sp, 64                    # 8-byte Folded Reload
.LBB5_35:                               # %_ZNSt6vectorIiSaIiEE7reserveEm.exit141
	ld.d	$a0, $s3, 16
	ld.d	$s0, $s3, 0
	slli.w	$fp, $fp, 2
	sub.d	$s6, $a0, $s0
	srai.d	$a0, $s6, 2
	bgeu	$a0, $fp, .LBB5_41
# %bb.36:                               # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i142
	ld.d	$a0, $s3, 8
	sub.d	$s7, $a0, $s0
	slli.d	$a0, $fp, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	blez	$s7, .LBB5_38
# %bb.37:
	move	$a0, $s8
	move	$a1, $s0
	move	$a2, $s7
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_38:                               # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i143
	beqz	$s0, .LBB5_40
# %bb.39:
	move	$a0, $s0
	move	$a1, $s6
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_40:                               # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i145
	st.d	$s8, $s3, 0
	add.d	$a0, $s8, $s7
	st.d	$a0, $s3, 8
	alsl.d	$a0, $fp, $s8, 2
	st.d	$a0, $s3, 16
	ld.d	$s8, $sp, 64                    # 8-byte Folded Reload
.LBB5_41:                               # %_ZNSt6vectorIiSaIiEE7reserveEm.exit146
	ld.w	$a1, $s4, 76
	blez	$a1, .LBB5_93
# %bb.42:                               # %.preheader.lr.ph
	ld.w	$a0, $s4, 72
	blez	$a0, .LBB5_93
# %bb.43:                               # %.preheader.preheader
	st.d	$zero, $sp, 88                  # 8-byte Folded Spill
	move	$s5, $zero
	addi.w	$a2, $zero, -4
	lu52i.d	$a2, $a2, 2047
	st.d	$a2, $sp, 112                   # 8-byte Folded Spill
	addi.w	$a2, $zero, -1
	lu52i.d	$fp, $a2, 511
	b	.LBB5_46
	.p2align	4, , 16
.LBB5_44:                               # %._crit_edge384.loopexit
                                        #   in Loop: Header=BB5_46 Depth=1
	ld.w	$a1, $s4, 76
	ld.d	$s8, $sp, 64                    # 8-byte Folded Reload
.LBB5_45:                               # %._crit_edge384
                                        #   in Loop: Header=BB5_46 Depth=1
	addi.w	$s5, $s5, 1
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	add.d	$a2, $a2, $a3
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	bge	$s5, $a1, .LBB5_93
.LBB5_46:                               # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_50 Depth 2
	blez	$a0, .LBB5_45
# %bb.47:                               # %.lr.ph383
                                        #   in Loop: Header=BB5_46 Depth=1
	ld.d	$a1, $s3, 8
	move	$a0, $s8
	move	$s8, $zero
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	b	.LBB5_50
	.p2align	4, , 16
.LBB5_48:                               #   in Loop: Header=BB5_50 Depth=2
	st.w	$s4, $a1, 0
	addi.d	$a1, $a1, 4
	st.d	$a1, $s3, 8
	ld.d	$s4, $sp, 104                   # 8-byte Folded Reload
.LBB5_49:                               # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit175
                                        #   in Loop: Header=BB5_50 Depth=2
	ld.d	$s2, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a0, $s4, 72
	addi.w	$s8, $s8, 1
	bge	$s8, $a0, .LBB5_44
.LBB5_50:                               #   Parent Loop BB5_46 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $s3, 0
	ld.d	$a0, $s2, 8
	ld.d	$a3, $s2, 16
	sub.d	$a1, $a1, $a2
	srli.d	$s4, $a1, 2
	beq	$a0, $a3, .LBB5_53
# %bb.51:                               #   in Loop: Header=BB5_50 Depth=2
	st.w	$s4, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $s2, 8
	ld.d	$a0, $s1, 8
	ld.d	$a1, $s1, 16
	beq	$a0, $a1, .LBB5_59
.LBB5_52:                               #   in Loop: Header=BB5_50 Depth=2
	ori	$a1, $zero, 4
	st.w	$a1, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $s1, 8
	b	.LBB5_65
	.p2align	4, , 16
.LBB5_53:                               #   in Loop: Header=BB5_50 Depth=2
	ld.d	$s7, $s2, 0
	sub.d	$s6, $a0, $s7
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	beq	$s6, $a0, .LBB5_316
# %bb.54:                               # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i
                                        #   in Loop: Header=BB5_50 Depth=2
	srai.d	$a0, $s6, 2
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	sltu	$a2, $a0, $fp
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $fp, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $fp, $a1
	or	$s2, $a1, $a0
	slli.d	$a0, $s2, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	stx.w	$s4, $a0, $s6
	blez	$s6, .LBB5_56
# %bb.55:                               #   in Loop: Header=BB5_50 Depth=2
	move	$a0, $s0
	move	$a1, $s7
	move	$a2, $s6
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_56:                               # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i
                                        #   in Loop: Header=BB5_50 Depth=2
	beqz	$s7, .LBB5_58
# %bb.57:                               #   in Loop: Header=BB5_50 Depth=2
	move	$a0, $s7
	move	$a1, $s6
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_58:                               # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i
                                        #   in Loop: Header=BB5_50 Depth=2
	add.d	$a0, $s0, $s6
	addi.d	$a0, $a0, 4
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	st.d	$s0, $a1, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $s2, $s0, 2
	st.d	$a0, $a1, 16
	ld.d	$a0, $s1, 8
	ld.d	$a1, $s1, 16
	bne	$a0, $a1, .LBB5_52
.LBB5_59:                               #   in Loop: Header=BB5_50 Depth=2
	ld.d	$s7, $s1, 0
	sub.d	$s6, $a0, $s7
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	beq	$s6, $a0, .LBB5_316
# %bb.60:                               # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i149
                                        #   in Loop: Header=BB5_50 Depth=2
	srai.d	$a0, $s6, 2
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	sltu	$a2, $a0, $fp
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $fp, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $fp, $a1
	or	$s2, $a1, $a0
	slli.d	$a0, $s2, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a0, $zero, 4
	stx.w	$a0, $s0, $s6
	blez	$s6, .LBB5_62
# %bb.61:                               #   in Loop: Header=BB5_50 Depth=2
	move	$a0, $s0
	move	$a1, $s7
	move	$a2, $s6
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_62:                               # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i151
                                        #   in Loop: Header=BB5_50 Depth=2
	beqz	$s7, .LBB5_64
# %bb.63:                               #   in Loop: Header=BB5_50 Depth=2
	move	$a0, $s7
	move	$a1, $s6
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_64:                               # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i153
                                        #   in Loop: Header=BB5_50 Depth=2
	add.d	$a0, $s0, $s6
	addi.d	$a0, $a0, 4
	st.d	$s0, $s1, 0
	st.d	$a0, $s1, 8
	alsl.d	$a0, $s2, $s0, 2
	st.d	$a0, $s1, 16
.LBB5_65:                               # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit154
                                        #   in Loop: Header=BB5_50 Depth=2
	ld.d	$a1, $s3, 8
	ld.d	$a0, $s3, 16
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	add.d	$s2, $a2, $s8
	beq	$a1, $a0, .LBB5_69
# %bb.66:                               #   in Loop: Header=BB5_50 Depth=2
	st.w	$s2, $a1, 0
	addi.d	$a1, $a1, 4
	st.d	$a1, $s3, 8
	addi.d	$s4, $s2, 1
	beq	$a1, $a0, .LBB5_75
.LBB5_67:                               #   in Loop: Header=BB5_50 Depth=2
	st.w	$s4, $a1, 0
	addi.d	$a1, $a1, 4
	st.d	$a1, $s3, 8
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	add.d	$s2, $a2, $s8
	addi.d	$s1, $s2, 2
	beq	$a1, $a0, .LBB5_81
.LBB5_68:                               #   in Loop: Header=BB5_50 Depth=2
	st.w	$s1, $a1, 0
	addi.d	$a1, $a1, 4
	st.d	$a1, $s3, 8
	ld.d	$s1, $sp, 72                    # 8-byte Folded Reload
	addi.d	$s4, $s2, 1
	bne	$a1, $a0, .LBB5_48
	b	.LBB5_87
	.p2align	4, , 16
.LBB5_69:                               #   in Loop: Header=BB5_50 Depth=2
	ld.d	$s7, $s3, 0
	sub.d	$s6, $a1, $s7
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	beq	$s6, $a0, .LBB5_316
# %bb.70:                               # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i
                                        #   in Loop: Header=BB5_50 Depth=2
	srai.d	$a0, $s6, 2
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	sltu	$a2, $a0, $fp
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $fp, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $fp, $a1
	or	$s4, $a1, $a0
	slli.d	$a0, $s4, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	stx.w	$s2, $a0, $s6
	blez	$s6, .LBB5_72
# %bb.71:                               #   in Loop: Header=BB5_50 Depth=2
	move	$a0, $s0
	move	$a1, $s7
	move	$a2, $s6
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_72:                               # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i
                                        #   in Loop: Header=BB5_50 Depth=2
	beqz	$s7, .LBB5_74
# %bb.73:                               #   in Loop: Header=BB5_50 Depth=2
	move	$a0, $s7
	move	$a1, $s6
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_74:                               # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i
                                        #   in Loop: Header=BB5_50 Depth=2
	add.d	$a0, $s0, $s6
	addi.d	$a1, $a0, 4
	st.d	$s0, $s3, 0
	st.d	$a1, $s3, 8
	alsl.d	$a0, $s4, $s0, 2
	st.d	$a0, $s3, 16
	addi.d	$s4, $s2, 1
	bne	$a1, $a0, .LBB5_67
.LBB5_75:                               #   in Loop: Header=BB5_50 Depth=2
	ld.d	$s7, $s3, 0
	sub.d	$s6, $a0, $s7
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	beq	$s6, $a0, .LBB5_316
# %bb.76:                               # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i156
                                        #   in Loop: Header=BB5_50 Depth=2
	srai.d	$a0, $s6, 2
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	sltu	$a2, $a0, $fp
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $fp, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $fp, $a1
	or	$s2, $a1, $a0
	slli.d	$a0, $s2, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	stx.w	$s4, $a0, $s6
	blez	$s6, .LBB5_78
# %bb.77:                               #   in Loop: Header=BB5_50 Depth=2
	move	$a0, $s0
	move	$a1, $s7
	move	$a2, $s6
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_78:                               # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i158
                                        #   in Loop: Header=BB5_50 Depth=2
	beqz	$s7, .LBB5_80
# %bb.79:                               #   in Loop: Header=BB5_50 Depth=2
	move	$a0, $s7
	move	$a1, $s6
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_80:                               # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i160
                                        #   in Loop: Header=BB5_50 Depth=2
	add.d	$a0, $s0, $s6
	addi.d	$a1, $a0, 4
	st.d	$s0, $s3, 0
	st.d	$a1, $s3, 8
	alsl.d	$a0, $s2, $s0, 2
	st.d	$a0, $s3, 16
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	add.d	$s2, $a2, $s8
	addi.d	$s1, $s2, 2
	bne	$a1, $a0, .LBB5_68
.LBB5_81:                               #   in Loop: Header=BB5_50 Depth=2
	ld.d	$s7, $s3, 0
	sub.d	$s6, $a0, $s7
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	beq	$s6, $a0, .LBB5_316
# %bb.82:                               # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i163
                                        #   in Loop: Header=BB5_50 Depth=2
	srai.d	$a0, $s6, 2
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	sltu	$a2, $a0, $fp
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $fp, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $fp, $a1
	or	$s4, $a1, $a0
	slli.d	$a0, $s4, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	stx.w	$s1, $a0, $s6
	blez	$s6, .LBB5_84
# %bb.83:                               #   in Loop: Header=BB5_50 Depth=2
	move	$a0, $s0
	move	$a1, $s7
	move	$a2, $s6
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_84:                               # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i165
                                        #   in Loop: Header=BB5_50 Depth=2
	ld.d	$s1, $sp, 72                    # 8-byte Folded Reload
	beqz	$s7, .LBB5_86
# %bb.85:                               #   in Loop: Header=BB5_50 Depth=2
	move	$a0, $s7
	move	$a1, $s6
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_86:                               # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i167
                                        #   in Loop: Header=BB5_50 Depth=2
	add.d	$a0, $s0, $s6
	addi.d	$a1, $a0, 4
	st.d	$s0, $s3, 0
	st.d	$a1, $s3, 8
	alsl.d	$a0, $s4, $s0, 2
	st.d	$a0, $s3, 16
	addi.d	$s4, $s2, 1
	bne	$a1, $a0, .LBB5_48
.LBB5_87:                               #   in Loop: Header=BB5_50 Depth=2
	ld.d	$s7, $s3, 0
	sub.d	$s6, $a0, $s7
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	beq	$s6, $a0, .LBB5_316
# %bb.88:                               # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i170
                                        #   in Loop: Header=BB5_50 Depth=2
	srai.d	$a0, $s6, 2
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	sltu	$a2, $a0, $fp
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $fp, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $fp, $a1
	or	$s2, $a1, $a0
	slli.d	$a0, $s2, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	stx.w	$s4, $a0, $s6
	blez	$s6, .LBB5_90
# %bb.89:                               #   in Loop: Header=BB5_50 Depth=2
	move	$a0, $s0
	move	$a1, $s7
	move	$a2, $s6
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_90:                               # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i172
                                        #   in Loop: Header=BB5_50 Depth=2
	ld.d	$s4, $sp, 104                   # 8-byte Folded Reload
	beqz	$s7, .LBB5_92
# %bb.91:                               #   in Loop: Header=BB5_50 Depth=2
	move	$a0, $s7
	move	$a1, $s6
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_92:                               # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i174
                                        #   in Loop: Header=BB5_50 Depth=2
	add.d	$a0, $s0, $s6
	addi.d	$a1, $a0, 4
	st.d	$s0, $s3, 0
	st.d	$a1, $s3, 8
	alsl.d	$a0, $s2, $s0, 2
	st.d	$a0, $s3, 16
	b	.LBB5_49
.LBB5_93:                               # %._crit_edge386
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel5numpeE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZN8Parallel5numpeE)
	ld.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB5_315
# %bb.94:
	ld.w	$s1, $s4, 68
	ld.w	$fp, $s4, 64
	sltui	$a0, $s1, 1
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	masknez	$a0, $a1, $a0
	sltui	$a1, $fp, 1
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	masknez	$a1, $a2, $a1
	add.w	$s2, $a1, $a0
	bltz	$s2, .LBB5_317
# %bb.95:
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $a1, 16
	ld.d	$s4, $a1, 0
	sub.d	$s5, $a0, $s4
	srai.d	$a0, $s5, 2
	bgeu	$a0, $s2, .LBB5_101
# %bb.96:                               # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i176
	ld.d	$a0, $a1, 8
	sub.d	$s0, $a0, $s4
	slli.d	$a0, $s2, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	blez	$s0, .LBB5_98
# %bb.97:
	move	$a0, $s3
	move	$a1, $s4
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_98:                               # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i177
	beqz	$s4, .LBB5_100
# %bb.99:
	move	$a0, $s4
	move	$a1, $s5
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.w	$s1, $a0, 68
	ld.w	$fp, $a0, 64
.LBB5_100:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i179
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	st.d	$s3, $a1, 0
	add.d	$a0, $s3, $s0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $s2, $s3, 2
	st.d	$a0, $a1, 16
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
.LBB5_101:                              # %_ZNSt6vectorIiSaIiEE7reserveEm.exit180
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	ld.w	$a0, $a1, 60
	addi.w	$a0, $a0, -1
	ld.w	$a1, $a1, 56
	xor	$a0, $s1, $a0
	sltui	$a0, $a0, 1
	ld.d	$s5, $sp, 56                    # 8-byte Folded Reload
	masknez	$a0, $s5, $a0
	addi.w	$a1, $a1, -1
	xor	$a1, $fp, $a1
	sltui	$a1, $a1, 1
	masknez	$a1, $a2, $a1
	add.w	$a0, $a1, $a0
	addi.w	$a1, $zero, -2
	bge	$a1, $a0, .LBB5_317
# %bb.102:
	ld.d	$s7, $sp, 256
	ld.d	$a1, $s7, 16
	ld.d	$s3, $s7, 0
	addi.w	$s2, $a0, 1
	sub.d	$s4, $a1, $s3
	srai.d	$a0, $s4, 2
	bgeu	$a0, $s2, .LBB5_108
# %bb.103:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i181
	ld.d	$a0, $s7, 8
	sub.d	$s0, $a0, $s3
	slli.d	$a0, $s2, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	blez	$s0, .LBB5_105
# %bb.104:
	move	$a0, $s5
	move	$a1, $s3
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_105:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i182
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
	beqz	$s3, .LBB5_107
# %bb.106:
	move	$a0, $s3
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.w	$fp, $s6, 64
.LBB5_107:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i184
	st.d	$s5, $s7, 0
	add.d	$a0, $s5, $s0
	st.d	$a0, $s7, 8
	alsl.d	$a0, $s2, $s5, 2
	st.d	$a0, $s7, 16
	ld.w	$s1, $s6, 68
	move	$s4, $s6
	ld.d	$s5, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 32                    # 8-byte Folded Reload
	bnez	$fp, .LBB5_109
	b	.LBB5_134
.LBB5_108:
	ld.d	$s4, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 32                    # 8-byte Folded Reload
	beqz	$fp, .LBB5_134
.LBB5_109:                              # %_ZNSt6vectorIiSaIiEE7reserveEm.exit185
	beqz	$s1, .LBB5_134
# %bb.110:
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZN8Parallel4mypeE)
	ld.w	$fp, $a0, 0
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $a2, 8
	ld.d	$a1, $a2, 16
	ld.w	$s1, $s4, 56
	beq	$a0, $a1, .LBB5_112
# %bb.111:
	st.w	$zero, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a2, 8
	b	.LBB5_118
.LBB5_112:
	ld.d	$s3, $a2, 0
	sub.d	$s4, $a0, $s3
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s4, $a0, .LBB5_316
# %bb.113:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i187
	srai.d	$a0, $s4, 2
	ori	$a1, $zero, 1
	sltu	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a0, $a2
	or	$a1, $a2, $a1
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
	or	$s2, $a1, $a0
	slli.d	$a0, $s2, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	stx.w	$zero, $a0, $s4
	blez	$s4, .LBB5_115
# %bb.114:
	move	$a0, $s0
	move	$a1, $s3
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_115:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i189
	add.d	$s5, $s0, $s4
	beqz	$s3, .LBB5_117
# %bb.116:
	move	$a0, $s3
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_117:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i191
	addi.d	$a0, $s5, 4
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	st.d	$s0, $a1, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $s2, $s0, 2
	st.d	$a0, $a1, 16
	ld.d	$s4, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 32                    # 8-byte Folded Reload
.LBB5_118:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit192
	ld.d	$a0, $s2, 8
	ld.d	$a1, $s2, 16
	nor	$a2, $s1, $zero
	add.d	$fp, $fp, $a2
	beq	$a0, $a1, .LBB5_121
# %bb.119:
	st.w	$fp, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $s2, 8
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $a2, 8
	ld.d	$a1, $a2, 16
	beq	$a0, $a1, .LBB5_127
.LBB5_120:
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a2, 8
	b	.LBB5_133
.LBB5_121:
	ld.d	$s3, $s2, 0
	sub.d	$s4, $a0, $s3
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s4, $a0, .LBB5_316
# %bb.122:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i194
	srai.d	$a0, $s4, 2
	ori	$a1, $zero, 1
	sltu	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a0, $a2
	or	$a1, $a2, $a1
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
	or	$s1, $a1, $a0
	slli.d	$a0, $s1, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	stx.w	$fp, $a0, $s4
	blez	$s4, .LBB5_124
# %bb.123:
	move	$a0, $s0
	move	$a1, $s3
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_124:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i196
	add.d	$fp, $s0, $s4
	beqz	$s3, .LBB5_126
# %bb.125:
	move	$a0, $s3
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_126:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i198
	addi.d	$a0, $fp, 4
	st.d	$s0, $s2, 0
	st.d	$a0, $s2, 8
	alsl.d	$a0, $s1, $s0, 2
	st.d	$a0, $s2, 16
	ld.d	$s4, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $a2, 8
	ld.d	$a1, $a2, 16
	bne	$a0, $a1, .LBB5_120
.LBB5_127:
	ld.d	$s3, $a2, 0
	sub.d	$s4, $a0, $s3
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s4, $a0, .LBB5_316
# %bb.128:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i201
	srai.d	$a0, $s4, 2
	ori	$s1, $zero, 1
	sltu	$a1, $s1, $a0
	masknez	$a2, $s1, $a1
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
	or	$fp, $a1, $a0
	slli.d	$a0, $fp, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	stx.w	$s1, $a0, $s4
	blez	$s4, .LBB5_130
# %bb.129:
	move	$a0, $s0
	move	$a1, $s3
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_130:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i203
	add.d	$s1, $s0, $s4
	beqz	$s3, .LBB5_132
# %bb.131:
	move	$a0, $s3
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_132:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i205
	addi.d	$a0, $s1, 4
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	st.d	$s0, $a1, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $fp, $s0, 2
	st.d	$a0, $a1, 16
	ld.d	$s4, $sp, 104                   # 8-byte Folded Reload
.LBB5_133:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit206thread-pre-split
	ld.w	$s1, $s4, 68
.LBB5_134:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit206
	beqz	$s1, .LBB5_173
# %bb.135:
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZN8Parallel4mypeE)
	ld.w	$a0, $a0, 0
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $a2, 8
	move	$a1, $s4
	ld.d	$s4, $a2, 0
	ld.w	$s0, $a1, 56
	sub.d	$s2, $a0, $s4
	st.d	$s2, $sp, 96                    # 8-byte Folded Spill
	bltz	$s8, .LBB5_156
# %bb.136:                              # %.lr.ph391.preheader
	ld.w	$a1, $a1, 64
	beqz	$a1, .LBB5_138
# %bb.137:
	move	$s5, $s4
	bnez	$s8, .LBB5_140
	b	.LBB5_155
.LBB5_138:
	ld.d	$a1, $a2, 16
	beq	$a0, $a1, .LBB5_149
# %bb.139:
	st.w	$zero, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a2, 8
	move	$s5, $s4
	beqz	$s8, .LBB5_155
.LBB5_140:                              # %.lr.ph391.peel.next.preheader
	move	$s1, $zero
	addi.w	$a1, $zero, -4
	lu52i.d	$s2, $a1, 2047
	ori	$s8, $zero, 1
	addi.w	$a1, $zero, -1
	lu52i.d	$s3, $a1, 511
	b	.LBB5_142
	.p2align	4, , 16
.LBB5_141:                              #   in Loop: Header=BB5_142 Depth=1
	st.w	$s1, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a2, 8
	move	$s4, $s5
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	beq	$a1, $s1, .LBB5_156
.LBB5_142:                              # %.lr.ph391.peel.next
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $a2, 16
	addi.w	$s1, $s1, 1
	bne	$a0, $a1, .LBB5_141
# %bb.143:                              #   in Loop: Header=BB5_142 Depth=1
	sub.d	$s6, $a0, $s5
	beq	$s6, $s2, .LBB5_316
# %bb.144:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i222
                                        #   in Loop: Header=BB5_142 Depth=1
	srai.d	$a0, $s6, 2
	sltu	$a1, $s8, $a0
	masknez	$a2, $s8, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	sltu	$a2, $a0, $s3
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $s3, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s3, $a1
	or	$fp, $a1, $a0
	slli.d	$a0, $fp, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	stx.w	$s1, $a0, $s6
	blez	$s6, .LBB5_146
# %bb.145:                              #   in Loop: Header=BB5_142 Depth=1
	move	$a0, $s4
	move	$a1, $s5
	move	$a2, $s6
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_146:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i224
                                        #   in Loop: Header=BB5_142 Depth=1
	beqz	$s5, .LBB5_148
# %bb.147:                              #   in Loop: Header=BB5_142 Depth=1
	move	$a0, $s5
	move	$a1, $s6
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_148:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i226
                                        #   in Loop: Header=BB5_142 Depth=1
	add.d	$a0, $s4, $s6
	addi.d	$a0, $a0, 4
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	st.d	$s4, $a2, 0
	st.d	$a0, $a2, 8
	alsl.d	$a1, $fp, $s4, 2
	st.d	$a1, $a2, 16
	move	$s5, $s4
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	bne	$a1, $s1, .LBB5_142
	b	.LBB5_156
.LBB5_149:
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s2, $a0, .LBB5_316
# %bb.150:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i222.peel
	move	$a1, $s2
	srai.d	$a0, $a1, 2
	ori	$a1, $zero, 1
	sltu	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a0, $a2
	or	$a1, $a2, $a1
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
	or	$s1, $a1, $a0
	slli.d	$a0, $s1, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	stx.w	$zero, $a0, $s2
	blez	$s2, .LBB5_152
# %bb.151:
	move	$a0, $s5
	move	$a1, $s4
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_152:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i224.peel
	add.d	$fp, $s5, $s2
	ld.d	$s8, $sp, 64                    # 8-byte Folded Reload
	beqz	$s4, .LBB5_154
# %bb.153:
	move	$a0, $s4
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_154:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i226.peel
	addi.d	$a0, $fp, 4
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	st.d	$s5, $a2, 0
	st.d	$a0, $a2, 8
	alsl.d	$a1, $s1, $s5, 2
	st.d	$a1, $a2, 16
	bnez	$s8, .LBB5_140
.LBB5_155:
	move	$s4, $s5
.LBB5_156:                              # %._crit_edge392
	ld.d	$s2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $s2, 8
	ld.d	$a1, $s2, 16
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	sub.d	$s1, $a3, $s0
	beq	$a0, $a1, .LBB5_158
# %bb.157:
	st.w	$s1, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $s2, 8
	ld.d	$s8, $sp, 64                    # 8-byte Folded Reload
	b	.LBB5_164
.LBB5_158:
	ld.d	$s4, $s2, 0
	sub.d	$s5, $a0, $s4
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	ld.d	$s8, $sp, 64                    # 8-byte Folded Reload
	beq	$s5, $a0, .LBB5_316
# %bb.159:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i208
	srai.d	$a0, $s5, 2
	ori	$a1, $zero, 1
	sltu	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a0, $a2
	or	$a1, $a2, $a1
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
	or	$fp, $a1, $a0
	slli.d	$a0, $fp, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	stx.w	$s1, $a0, $s5
	blez	$s5, .LBB5_161
# %bb.160:
	move	$a0, $s0
	move	$a1, $s4
	move	$a2, $s5
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_161:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i210
	add.d	$s1, $s0, $s5
	beqz	$s4, .LBB5_163
# %bb.162:
	move	$a0, $s4
	move	$a1, $s5
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_163:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i212
	addi.d	$a0, $s1, 4
	st.d	$s0, $s2, 0
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s4, $a2, 0
	st.d	$a0, $s2, 8
	alsl.d	$a0, $fp, $s0, 2
	st.d	$a0, $s2, 16
.LBB5_164:                              # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit213
	ld.d	$a1, $a2, 8
	ld.d	$a4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $a4, 8
	ld.d	$a2, $a4, 16
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	srli.d	$a3, $a3, 2
	sub.d	$a1, $a1, $s4
	srli.d	$a1, $a1, 2
	sub.d	$fp, $a1, $a3
	ld.d	$s5, $sp, 56                    # 8-byte Folded Reload
	beq	$a0, $a2, .LBB5_166
# %bb.165:
	st.w	$fp, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a4, 8
	b	.LBB5_172
.LBB5_166:
	ld.d	$s3, $a4, 0
	sub.d	$s4, $a0, $s3
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s4, $a0, .LBB5_316
# %bb.167:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i215
	srai.d	$a0, $s4, 2
	ori	$a1, $zero, 1
	sltu	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a0, $a2
	or	$a1, $a2, $a1
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
	or	$s1, $a1, $a0
	slli.d	$a0, $s1, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	stx.w	$fp, $a0, $s4
	blez	$s4, .LBB5_169
# %bb.168:
	move	$a0, $s0
	move	$a1, $s3
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_169:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i217
	add.d	$fp, $s0, $s4
	beqz	$s3, .LBB5_171
# %bb.170:
	move	$a0, $s3
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_171:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i219
	addi.d	$a0, $fp, 4
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	st.d	$s0, $a1, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $s1, $s0, 2
	st.d	$a0, $a1, 16
.LBB5_172:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit220
	ld.d	$s4, $sp, 104                   # 8-byte Folded Reload
.LBB5_173:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit220
	ld.w	$a0, $s4, 64
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	beqz	$a0, .LBB5_212
# %bb.174:
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$a1, $a0, %got_pc_lo12(_ZN8Parallel4mypeE)
	ld.d	$a0, $a2, 8
	ld.d	$s4, $a2, 0
	ld.w	$a3, $a1, 0
	sub.d	$s1, $a0, $s4
	ld.d	$s8, $sp, 48                    # 8-byte Folded Reload
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$a3, $sp, 112                   # 8-byte Folded Spill
	bltz	$s8, .LBB5_196
# %bb.175:                              # %.lr.ph397.preheader
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	ld.w	$a1, $a1, 68
	beqz	$a1, .LBB5_177
# %bb.176:
	move	$s5, $s4
	bnez	$s8, .LBB5_179
	b	.LBB5_195
.LBB5_177:
	ld.d	$a1, $a2, 16
	beq	$a0, $a1, .LBB5_189
# %bb.178:
	st.w	$zero, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a2, 8
	move	$s5, $s4
	beqz	$s8, .LBB5_195
.LBB5_179:
	addi.w	$a1, $zero, -4
	lu52i.d	$s0, $a1, 2047
	ori	$s1, $zero, 1
	addi.w	$a1, $zero, -1
	lu52i.d	$s2, $a1, 511
	ld.d	$s3, $sp, 56                    # 8-byte Folded Reload
	b	.LBB5_182
	.p2align	4, , 16
.LBB5_180:                              #   in Loop: Header=BB5_182 Depth=1
	st.w	$s3, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a2, 8
	move	$s4, $s5
.LBB5_181:                              # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit248
                                        #   in Loop: Header=BB5_182 Depth=1
	addi.w	$s8, $s8, -1
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	add.d	$s3, $s3, $a1
	beqz	$s8, .LBB5_196
.LBB5_182:                              # %.lr.ph397.peel.next
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $a2, 16
	bne	$a0, $a1, .LBB5_180
# %bb.183:                              #   in Loop: Header=BB5_182 Depth=1
	sub.d	$s6, $a0, $s5
	beq	$s6, $s0, .LBB5_316
# %bb.184:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i243
                                        #   in Loop: Header=BB5_182 Depth=1
	srai.d	$a0, $s6, 2
	sltu	$a1, $s1, $a0
	masknez	$a2, $s1, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	sltu	$a2, $a0, $s2
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $s2, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s2, $a1
	or	$fp, $a1, $a0
	slli.d	$a0, $fp, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	stx.w	$s3, $a0, $s6
	blez	$s6, .LBB5_186
# %bb.185:                              #   in Loop: Header=BB5_182 Depth=1
	move	$a0, $s4
	move	$a1, $s5
	move	$a2, $s6
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_186:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i245
                                        #   in Loop: Header=BB5_182 Depth=1
	beqz	$s5, .LBB5_188
# %bb.187:                              #   in Loop: Header=BB5_182 Depth=1
	move	$a0, $s5
	move	$a1, $s6
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_188:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i247
                                        #   in Loop: Header=BB5_182 Depth=1
	add.d	$a0, $s4, $s6
	addi.d	$a0, $a0, 4
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	st.d	$s4, $a2, 0
	st.d	$a0, $a2, 8
	alsl.d	$a1, $fp, $s4, 2
	st.d	$a1, $a2, 16
	move	$s5, $s4
	b	.LBB5_181
.LBB5_189:
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s1, $a0, .LBB5_316
# %bb.190:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i243.peel
	move	$a1, $s1
	srai.d	$a0, $a1, 2
	ori	$a1, $zero, 1
	sltu	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a0, $a2
	or	$a1, $a2, $a1
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
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	stx.w	$zero, $a0, $s1
	blez	$s1, .LBB5_192
# %bb.191:
	move	$a0, $s5
	move	$a1, $s4
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_192:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i245.peel
	add.d	$fp, $s5, $s1
	ld.d	$s8, $sp, 48                    # 8-byte Folded Reload
	beqz	$s4, .LBB5_194
# %bb.193:
	move	$a0, $s4
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_194:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i247.peel
	addi.d	$a0, $fp, 4
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	st.d	$s5, $a2, 0
	st.d	$a0, $a2, 8
	alsl.d	$a1, $s0, $s5, 2
	st.d	$a1, $a2, 16
	bnez	$s8, .LBB5_179
.LBB5_195:
	move	$s4, $s5
.LBB5_196:                              # %._crit_edge398
	ld.d	$s2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $s2, 8
	ld.d	$a1, $s2, 16
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	addi.d	$s1, $a3, -1
	beq	$a0, $a1, .LBB5_198
# %bb.197:
	st.w	$s1, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $s2, 8
	ld.d	$s8, $sp, 64                    # 8-byte Folded Reload
	b	.LBB5_204
.LBB5_198:
	ld.d	$s4, $s2, 0
	sub.d	$s5, $a0, $s4
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s5, $a0, .LBB5_316
# %bb.199:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i229
	srai.d	$a0, $s5, 2
	ori	$a1, $zero, 1
	sltu	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a0, $a2
	or	$a1, $a2, $a1
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
	or	$fp, $a1, $a0
	slli.d	$a0, $fp, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	stx.w	$s1, $a0, $s5
	blez	$s5, .LBB5_201
# %bb.200:
	move	$a0, $s0
	move	$a1, $s4
	move	$a2, $s5
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_201:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i231
	add.d	$s1, $s0, $s5
	ld.d	$s8, $sp, 64                    # 8-byte Folded Reload
	beqz	$s4, .LBB5_203
# %bb.202:
	move	$a0, $s4
	move	$a1, $s5
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_203:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i233
	addi.d	$a0, $s1, 4
	st.d	$s0, $s2, 0
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s4, $a2, 0
	st.d	$a0, $s2, 8
	alsl.d	$a0, $fp, $s0, 2
	st.d	$a0, $s2, 16
.LBB5_204:                              # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit234
	ld.d	$a1, $a2, 8
	ld.d	$a4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $a4, 8
	ld.d	$a2, $a4, 16
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	srli.d	$a3, $a3, 2
	sub.d	$a1, $a1, $s4
	srli.d	$a1, $a1, 2
	sub.d	$fp, $a1, $a3
	ld.d	$s5, $sp, 56                    # 8-byte Folded Reload
	beq	$a0, $a2, .LBB5_206
# %bb.205:
	st.w	$fp, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a4, 8
	ld.d	$s4, $sp, 104                   # 8-byte Folded Reload
	b	.LBB5_212
.LBB5_206:
	ld.d	$s1, $a4, 0
	sub.d	$s3, $a0, $s1
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	ld.d	$s4, $sp, 104                   # 8-byte Folded Reload
	beq	$s3, $a0, .LBB5_316
# %bb.207:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i236
	srai.d	$a0, $s3, 2
	ori	$a1, $zero, 1
	sltu	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a0, $a2
	or	$a1, $a2, $a1
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
	or	$s2, $a1, $a0
	slli.d	$a0, $s2, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	stx.w	$fp, $a0, $s3
	blez	$s3, .LBB5_209
# %bb.208:
	move	$a0, $s0
	move	$a1, $s1
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_209:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i238
	add.d	$fp, $s0, $s3
	beqz	$s1, .LBB5_211
# %bb.210:
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_211:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i240
	addi.d	$a0, $fp, 4
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	st.d	$s0, $a1, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $s2, $s0, 2
	st.d	$a0, $a1, 16
.LBB5_212:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit241
	ld.d	$a4, $sp, 248
	ld.w	$a0, $s4, 56
	ld.w	$a1, $s4, 64
	ld.d	$a2, $sp, 240
	st.d	$a2, $sp, 96                    # 8-byte Folded Spill
	addi.w	$a0, $a0, -1
	st.d	$a4, $sp, 112                   # 8-byte Folded Spill
	beq	$a1, $a0, .LBB5_245
# %bb.213:
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$a1, $a0, %got_pc_lo12(_ZN8Parallel4mypeE)
	ld.d	$a0, $s7, 8
	ld.d	$s1, $s7, 0
	ld.w	$a3, $a1, 0
	sub.d	$a2, $a0, $s1
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	st.d	$a3, $sp, 80                    # 8-byte Folded Spill
	bltz	$a1, .LBB5_235
# %bb.214:                              # %.lr.ph403.preheader
	ld.w	$a1, $s4, 68
	beqz	$a1, .LBB5_216
# %bb.215:
	move	$s4, $s1
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	bnez	$s5, .LBB5_218
	b	.LBB5_234
.LBB5_216:
	ld.d	$a1, $s7, 16
	beq	$a0, $a1, .LBB5_228
# %bb.217:
	st.w	$s8, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $s7, 8
	move	$s4, $s1
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	beqz	$s5, .LBB5_234
.LBB5_218:                              # %.lr.ph403.peel.next.preheader
	slli.d	$a1, $s8, 1
	addi.d	$s2, $a1, 1
	addi.w	$a1, $zero, -4
	lu52i.d	$s8, $a1, 2047
	ori	$s0, $zero, 1
	addi.w	$a1, $zero, -1
	lu52i.d	$fp, $a1, 511
	b	.LBB5_221
	.p2align	4, , 16
.LBB5_219:                              #   in Loop: Header=BB5_221 Depth=1
	st.w	$s2, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $s7, 8
	move	$s1, $s4
.LBB5_220:                              # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit269
                                        #   in Loop: Header=BB5_221 Depth=1
	addi.w	$s5, $s5, -1
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	add.d	$s2, $s2, $a1
	beqz	$s5, .LBB5_235
.LBB5_221:                              # %.lr.ph403.peel.next
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s7, 16
	bne	$a0, $a1, .LBB5_219
# %bb.222:                              #   in Loop: Header=BB5_221 Depth=1
	sub.d	$s3, $a0, $s4
	beq	$s3, $s8, .LBB5_316
# %bb.223:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i264
                                        #   in Loop: Header=BB5_221 Depth=1
	srai.d	$a0, $s3, 2
	sltu	$a1, $s0, $a0
	masknez	$a2, $s0, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	sltu	$a2, $a0, $fp
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $fp, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $fp, $a1
	or	$s6, $a1, $a0
	slli.d	$a0, $s6, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	stx.w	$s2, $a0, $s3
	blez	$s3, .LBB5_225
# %bb.224:                              #   in Loop: Header=BB5_221 Depth=1
	move	$a0, $s1
	move	$a1, $s4
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_225:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i266
                                        #   in Loop: Header=BB5_221 Depth=1
	beqz	$s4, .LBB5_227
# %bb.226:                              #   in Loop: Header=BB5_221 Depth=1
	move	$a0, $s4
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_227:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i268
                                        #   in Loop: Header=BB5_221 Depth=1
	add.d	$a0, $s1, $s3
	addi.d	$a0, $a0, 4
	st.d	$s1, $s7, 0
	st.d	$a0, $s7, 8
	alsl.d	$a1, $s6, $s1, 2
	st.d	$a1, $s7, 16
	move	$s4, $s1
	b	.LBB5_220
.LBB5_228:
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$a2, $a0, .LBB5_316
# %bb.229:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i264.peel
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	srai.d	$a0, $s2, 2
	ori	$a1, $zero, 1
	sltu	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a0, $a2
	or	$a1, $a2, $a1
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
	or	$fp, $a1, $a0
	slli.d	$a0, $fp, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	ld.d	$s8, $sp, 64                    # 8-byte Folded Reload
	stx.w	$s8, $a0, $s2
	blez	$s2, .LBB5_231
# %bb.230:
	move	$a0, $s4
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_231:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i266.peel
	add.d	$s0, $s4, $s2
	beqz	$s1, .LBB5_233
# %bb.232:
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_233:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i268.peel
	addi.d	$a0, $s0, 4
	st.d	$s4, $s7, 0
	st.d	$a0, $s7, 8
	alsl.d	$a1, $fp, $s4, 2
	st.d	$a1, $s7, 16
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	bnez	$s5, .LBB5_218
.LBB5_234:
	move	$s1, $s4
.LBB5_235:                              # %._crit_edge404
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $a2, 8
	ld.d	$a1, $a2, 16
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	addi.d	$s0, $a3, 1
	beq	$a0, $a1, .LBB5_237
# %bb.236:
	st.w	$s0, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a2, 8
	ld.d	$s8, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 56                    # 8-byte Folded Reload
	b	.LBB5_243
.LBB5_237:
	ld.d	$s1, $a2, 0
	sub.d	$s4, $a0, $s1
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	ld.d	$s8, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 56                    # 8-byte Folded Reload
	beq	$s4, $a0, .LBB5_316
# %bb.238:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i250
	srai.d	$a0, $s4, 2
	ori	$a1, $zero, 1
	sltu	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a0, $a2
	or	$a1, $a2, $a1
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
	or	$fp, $a1, $a0
	slli.d	$a0, $fp, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	stx.w	$s0, $a0, $s4
	blez	$s4, .LBB5_240
# %bb.239:
	move	$a0, $s3
	move	$a1, $s1
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_240:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i252
	add.d	$s0, $s3, $s4
	beqz	$s1, .LBB5_242
# %bb.241:
	move	$a0, $s1
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_242:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i254
	addi.d	$a0, $s0, 4
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	st.d	$s3, $a1, 0
	ld.d	$s1, $s7, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $fp, $s3, 2
	st.d	$a0, $a1, 16
.LBB5_243:                              # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit255
	ld.d	$a1, $s7, 8
	ld.d	$a4, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $a4, 8
	ld.d	$a2, $a4, 16
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	srli.d	$a3, $a3, 2
	sub.d	$a1, $a1, $s1
	srli.d	$a1, $a1, 2
	sub.d	$fp, $a1, $a3
	ld.d	$s4, $sp, 104                   # 8-byte Folded Reload
	beq	$a0, $a2, .LBB5_249
# %bb.244:
	st.w	$fp, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a4, 8
.LBB5_245:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit262
	ld.w	$a0, $s4, 60
	ld.w	$a1, $s4, 68
	addi.w	$a0, $a0, -1
	beq	$a1, $a0, .LBB5_284
.LBB5_246:
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZN8Parallel4mypeE)
	ld.w	$a0, $a0, 0
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	ld.d	$a0, $s7, 8
	ld.d	$s1, $s7, 0
	ld.w	$a1, $s4, 56
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	sub.d	$s6, $a0, $s1
	bltz	$s8, .LBB5_274
# %bb.247:                              # %.lr.ph409.preheader
	ld.w	$a1, $s4, 64
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	mul.d	$fp, $a2, $s5
	beqz	$a1, .LBB5_255
# %bb.248:
	move	$s4, $s1
	bnez	$s8, .LBB5_257
	b	.LBB5_273
.LBB5_249:
	ld.d	$s0, $a4, 0
	sub.d	$s1, $a0, $s0
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s1, $a0, .LBB5_316
# %bb.250:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i257
	srai.d	$a0, $s1, 2
	ori	$a1, $zero, 1
	sltu	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a0, $a2
	or	$a1, $a2, $a1
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
	or	$s2, $a1, $a0
	slli.d	$a0, $s2, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	stx.w	$fp, $a0, $s1
	blez	$s1, .LBB5_252
# %bb.251:
	move	$a0, $s3
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_252:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i259
	add.d	$fp, $s3, $s1
	beqz	$s0, .LBB5_254
# %bb.253:
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_254:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i261
	addi.d	$a0, $fp, 4
	ld.d	$a4, $sp, 112                   # 8-byte Folded Reload
	st.d	$s3, $a4, 0
	st.d	$a0, $a4, 8
	alsl.d	$a0, $s2, $s3, 2
	st.d	$a0, $a4, 16
	ld.w	$a0, $s4, 60
	ld.w	$a1, $s4, 68
	addi.w	$a0, $a0, -1
	bne	$a1, $a0, .LBB5_246
	b	.LBB5_284
.LBB5_255:
	ld.d	$a1, $s7, 16
	beq	$a0, $a1, .LBB5_267
# %bb.256:
	st.w	$fp, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $s7, 8
	move	$s4, $s1
	beqz	$s8, .LBB5_273
.LBB5_257:                              # %.lr.ph409.peel.next.preheader
	addi.d	$s8, $fp, 1
	addi.w	$a1, $zero, -4
	lu52i.d	$s0, $a1, 2047
	ori	$fp, $zero, 1
	addi.w	$a1, $zero, -1
	lu52i.d	$s2, $a1, 511
	b	.LBB5_260
	.p2align	4, , 16
.LBB5_258:                              #   in Loop: Header=BB5_260 Depth=1
	st.w	$s8, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $s7, 8
	move	$s1, $s4
.LBB5_259:                              # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit290
                                        #   in Loop: Header=BB5_260 Depth=1
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	addi.w	$a1, $a1, -1
	addi.d	$s8, $s8, 1
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	beqz	$a1, .LBB5_274
.LBB5_260:                              # %.lr.ph409.peel.next
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s7, 16
	bne	$a0, $a1, .LBB5_258
# %bb.261:                              #   in Loop: Header=BB5_260 Depth=1
	sub.d	$s3, $a0, $s4
	beq	$s3, $s0, .LBB5_316
# %bb.262:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i285
                                        #   in Loop: Header=BB5_260 Depth=1
	srai.d	$a0, $s3, 2
	sltu	$a1, $fp, $a0
	masknez	$a2, $fp, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	sltu	$a2, $a0, $s2
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $s2, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s2, $a1
	or	$s5, $a1, $a0
	slli.d	$a0, $s5, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	stx.w	$s8, $a0, $s3
	blez	$s3, .LBB5_264
# %bb.263:                              #   in Loop: Header=BB5_260 Depth=1
	move	$a0, $s1
	move	$a1, $s4
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_264:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i287
                                        #   in Loop: Header=BB5_260 Depth=1
	beqz	$s4, .LBB5_266
# %bb.265:                              #   in Loop: Header=BB5_260 Depth=1
	move	$a0, $s4
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_266:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i289
                                        #   in Loop: Header=BB5_260 Depth=1
	add.d	$a0, $s1, $s3
	addi.d	$a0, $a0, 4
	st.d	$s1, $s7, 0
	st.d	$a0, $s7, 8
	alsl.d	$a1, $s5, $s1, 2
	st.d	$a1, $s7, 16
	move	$s4, $s1
	b	.LBB5_259
.LBB5_267:
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s6, $a0, .LBB5_316
# %bb.268:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i285.peel
	srai.d	$a0, $s6, 2
	ori	$a1, $zero, 1
	sltu	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a0, $a2
	or	$a1, $a2, $a1
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
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	stx.w	$fp, $a0, $s6
	blez	$s6, .LBB5_270
# %bb.269:
	move	$a0, $s4
	move	$a1, $s1
	move	$a2, $s6
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_270:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i287.peel
	add.d	$s2, $s4, $s6
	ld.d	$s8, $sp, 64                    # 8-byte Folded Reload
	beqz	$s1, .LBB5_272
# %bb.271:
	move	$a0, $s1
	move	$a1, $s6
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_272:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i289.peel
	addi.d	$a0, $s2, 4
	st.d	$s4, $s7, 0
	st.d	$a0, $s7, 8
	alsl.d	$a1, $s0, $s4, 2
	st.d	$a1, $s7, 16
	bnez	$s8, .LBB5_257
.LBB5_273:
	move	$s1, $s4
.LBB5_274:                              # %._crit_edge410
	ld.d	$s5, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $s5, 8
	ld.d	$a1, $s5, 16
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	add.d	$s0, $a3, $a2
	beq	$a0, $a1, .LBB5_276
# %bb.275:
	st.w	$s0, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $s5, 8
	ld.d	$s4, $sp, 104                   # 8-byte Folded Reload
	b	.LBB5_282
.LBB5_276:
	ld.d	$s1, $s5, 0
	sub.d	$s2, $a0, $s1
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s2, $a0, .LBB5_316
# %bb.277:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i271
	srai.d	$a0, $s2, 2
	ori	$a1, $zero, 1
	sltu	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a0, $a2
	or	$a1, $a2, $a1
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
	or	$fp, $a1, $a0
	slli.d	$a0, $fp, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	stx.w	$s0, $a0, $s2
	blez	$s2, .LBB5_279
# %bb.278:
	move	$a0, $s3
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_279:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i273
	add.d	$s0, $s3, $s2
	ld.d	$s4, $sp, 104                   # 8-byte Folded Reload
	beqz	$s1, .LBB5_281
# %bb.280:
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_281:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i275
	addi.d	$a0, $s0, 4
	st.d	$s3, $s5, 0
	ld.d	$s1, $s7, 0
	st.d	$a0, $s5, 8
	alsl.d	$a0, $fp, $s3, 2
	st.d	$a0, $s5, 16
.LBB5_282:                              # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit276
	ld.d	$a1, $s7, 8
	ld.d	$a4, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $a4, 8
	ld.d	$a2, $a4, 16
	srli.d	$a3, $s6, 2
	sub.d	$a1, $a1, $s1
	srli.d	$a1, $a1, 2
	sub.d	$fp, $a1, $a3
	beq	$a0, $a2, .LBB5_288
# %bb.283:
	st.w	$fp, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a4, 8
.LBB5_284:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit283
	ld.w	$s2, $s4, 56
	ld.w	$a0, $s4, 64
	addi.w	$a1, $s2, -1
	beq	$a0, $a1, .LBB5_315
.LBB5_285:
	ld.w	$a0, $s4, 60
	ld.w	$a1, $s4, 68
	addi.w	$a0, $a0, -1
	beq	$a1, $a0, .LBB5_315
# %bb.286:
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$a1, $a0, %got_pc_lo12(_ZN8Parallel4mypeE)
	ld.d	$a0, $s7, 8
	ld.d	$a2, $s7, 16
	ld.w	$s3, $a1, 0
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	addi.d	$s4, $a1, -1
	beq	$a0, $a2, .LBB5_294
# %bb.287:
	st.w	$s4, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $s7, 8
	ld.d	$s6, $sp, 96                    # 8-byte Folded Reload
	b	.LBB5_300
.LBB5_288:
	ld.d	$s0, $a4, 0
	sub.d	$s1, $a0, $s0
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s1, $a0, .LBB5_316
# %bb.289:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i278
	srai.d	$a0, $s1, 2
	ori	$a1, $zero, 1
	sltu	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a0, $a2
	or	$a1, $a2, $a1
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
	or	$s3, $a1, $a0
	slli.d	$a0, $s3, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	stx.w	$fp, $a0, $s1
	blez	$s1, .LBB5_291
# %bb.290:
	move	$a0, $s2
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_291:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i280
	add.d	$fp, $s2, $s1
	beqz	$s0, .LBB5_293
# %bb.292:
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_293:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i282
	addi.d	$a0, $fp, 4
	ld.d	$a4, $sp, 112                   # 8-byte Folded Reload
	st.d	$s2, $a4, 0
	st.d	$a0, $a4, 8
	alsl.d	$a0, $s3, $s2, 2
	st.d	$a0, $a4, 16
	ld.w	$s2, $s4, 56
	ld.w	$a0, $s4, 64
	addi.w	$a1, $s2, -1
	bne	$a0, $a1, .LBB5_285
	b	.LBB5_315
.LBB5_294:
	ld.d	$fp, $s7, 0
	sub.d	$s0, $a0, $fp
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	ld.d	$s6, $sp, 96                    # 8-byte Folded Reload
	beq	$s0, $a0, .LBB5_316
# %bb.295:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i292
	srai.d	$a0, $s0, 2
	ori	$a1, $zero, 1
	sltu	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a0, $a2
	or	$a1, $a2, $a1
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
	or	$s5, $a1, $a0
	slli.d	$a0, $s5, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	stx.w	$s4, $a0, $s0
	blez	$s0, .LBB5_297
# %bb.296:
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_297:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i294
	add.d	$s4, $s1, $s0
	beqz	$fp, .LBB5_299
# %bb.298:
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_299:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i296
	addi.d	$a0, $s4, 4
	st.d	$s1, $s7, 0
	st.d	$a0, $s7, 8
	alsl.d	$a0, $s5, $s1, 2
	st.d	$a0, $s7, 16
	ld.d	$a4, $sp, 112                   # 8-byte Folded Reload
.LBB5_300:                              # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit297
	ld.d	$a0, $s6, 8
	ld.d	$a1, $s6, 16
	add.d	$a2, $s2, $s3
	addi.d	$s2, $a2, 1
	beq	$a0, $a1, .LBB5_303
# %bb.301:
	st.w	$s2, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $s6, 8
	ld.d	$a0, $a4, 8
	ld.d	$a1, $a4, 16
	beq	$a0, $a1, .LBB5_309
.LBB5_302:
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a4, 8
	b	.LBB5_315
.LBB5_303:
	ld.d	$fp, $s6, 0
	sub.d	$s0, $a0, $fp
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s0, $a0, .LBB5_316
# %bb.304:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i299
	srai.d	$a0, $s0, 2
	ori	$a1, $zero, 1
	sltu	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a0, $a2
	or	$a1, $a2, $a1
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
	or	$s3, $a1, $a0
	slli.d	$a0, $s3, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	stx.w	$s2, $a0, $s0
	blez	$s0, .LBB5_306
# %bb.305:
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_306:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i301
	add.d	$s2, $s1, $s0
	beqz	$fp, .LBB5_308
# %bb.307:
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_308:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i303
	addi.d	$a0, $s2, 4
	st.d	$s1, $s6, 0
	st.d	$a0, $s6, 8
	alsl.d	$a0, $s3, $s1, 2
	st.d	$a0, $s6, 16
	ld.d	$a4, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $a4, 8
	ld.d	$a1, $a4, 16
	bne	$a0, $a1, .LBB5_302
.LBB5_309:
	ld.d	$fp, $a4, 0
	sub.d	$s0, $a0, $fp
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s0, $a0, .LBB5_316
# %bb.310:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i306
	srai.d	$a0, $s0, 2
	ori	$s3, $zero, 1
	sltu	$a1, $s3, $a0
	masknez	$a2, $s3, $a1
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
	or	$s2, $a1, $a0
	slli.d	$a0, $s2, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	stx.w	$s3, $a0, $s0
	blez	$s0, .LBB5_312
# %bb.311:
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_312:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i308
	add.d	$s3, $s1, $s0
	beqz	$fp, .LBB5_314
# %bb.313:
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_314:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i310
	addi.d	$a0, $s3, 4
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	st.d	$s1, $a1, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $s2, $s1, 2
	st.d	$a0, $a1, 16
.LBB5_315:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit311
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
.LBB5_316:                              # %.noexc
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.LBB5_317:
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Lfunc_end5:
	.size	_ZN7GenMesh12generateRectERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_, .Lfunc_end5-_ZN7GenMesh12generateRectERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_
	.cfi_endproc
                                        # -- End function
	.globl	_ZN7GenMesh11generateHexERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_ # -- Begin function _ZN7GenMesh11generateHexERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_
	.p2align	5
	.type	_ZN7GenMesh11generateHexERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_,@function
_ZN7GenMesh11generateHexERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_: # @_ZN7GenMesh11generateHexERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_
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
	st.d	$s6, $sp, 264                   # 8-byte Folded Spill
	st.d	$s7, $sp, 256                   # 8-byte Folded Spill
	st.d	$s8, $sp, 248                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 240                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 232                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 224                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 216                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 208                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 200                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 192                  # 8-byte Folded Spill
	fst.d	$fs7, $sp, 184                  # 8-byte Folded Spill
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
	.cfi_offset 61, -136
	.cfi_offset 62, -144
	.cfi_offset 63, -152
	move	$s5, $a0
	ld.w	$t0, $a0, 72
	ld.w	$a0, $a0, 76
	st.d	$t0, $sp, 120                   # 8-byte Folded Spill
	addi.w	$t0, $t0, 1
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	addi.w	$s4, $a0, 1
	st.d	$t0, $sp, 48                    # 8-byte Folded Spill
	mul.d	$a0, $t0, $s4
	slli.w	$s0, $a0, 1
	st.d	$a7, $sp, 88                    # 8-byte Folded Spill
	st.d	$a6, $sp, 64                    # 8-byte Folded Spill
	st.d	$a5, $sp, 56                    # 8-byte Folded Spill
	st.d	$a4, $sp, 144                   # 8-byte Folded Spill
	st.d	$a3, $sp, 136                   # 8-byte Folded Spill
	st.d	$a2, $sp, 128                   # 8-byte Folded Spill
	bltz	$s0, .LBB6_494
# %bb.1:
	move	$s8, $a1
	ld.d	$s2, $a1, 16
	ld.d	$fp, $a1, 0
	ld.d	$a0, $sp, 352
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	ld.d	$s3, $sp, 344
	ld.d	$a0, $sp, 336
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	sub.d	$s1, $s2, $fp
	srai.d	$a0, $s1, 4
	bgeu	$a0, $s0, .LBB6_8
# %bb.2:                                # %_ZNSt12_Vector_baseI7double2SaIS0_EE11_M_allocateEm.exit.i.i
	ld.d	$s2, $s8, 8
	slli.d	$a0, $s0, 4
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	beq	$s2, $fp, .LBB6_5
# %bb.3:                                # %.lr.ph.i.i.i.i.i.i.preheader
	move	$a0, $a2
	move	$a1, $fp
	.p2align	4, , 16
.LBB6_4:                                # %.lr.ph.i.i.i.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a1, 0
	vst	$vr0, $a0, 0
	addi.d	$a1, $a1, 16
	addi.d	$a0, $a0, 16
	bne	$a1, $s2, .LBB6_4
.LBB6_5:                                # %_ZNSt6vectorI7double2SaIS0_EE20_M_allocate_and_copyIPKS0_EEPS0_mT_S7_.exit.i
	sub.d	$s2, $s2, $fp
	beqz	$fp, .LBB6_7
# %bb.6:
	move	$a0, $fp
	move	$a1, $s1
	move	$fp, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a2, $fp
.LBB6_7:                                # %_ZNSt12_Vector_baseI7double2SaIS0_EE13_M_deallocateEPS0_m.exit.i
	st.d	$a2, $s8, 0
	add.d	$a0, $a2, $s2
	st.d	$a0, $s8, 8
	alsl.d	$s2, $s0, $a2, 4
	st.d	$s2, $s8, 16
	b	.LBB6_9
.LBB6_8:
	move	$a2, $fp
.LBB6_9:                                # %_ZNSt6vectorI7double2SaIS0_EE7reserveEm.exit
	addi.w	$a0, $zero, -2
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	bge	$a0, $a1, .LBB6_495
# %bb.10:                               # %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s5, $sp, 176                   # 8-byte Folded Spill
	st.d	$s4, $sp, 96                    # 8-byte Folded Spill
	beqz	$s4, .LBB6_71
# %bb.11:                               # %.noexc296
	move	$fp, $a2
	ld.w	$a0, $s5, 32
	fld.d	$fa0, $s5, 40
	addi.d	$a0, $a0, -1
	movgr2fr.w	$fa1, $a0
	ld.w	$a0, $s5, 36
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fs0, $fa0, $fa1
	fld.d	$fa0, $s5, 48
	addi.d	$a0, $a0, -1
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $sp, 168                  # 8-byte Folded Spill
	slli.d	$a0, $s4, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	addi.d	$a1, $s4, -1
	st.w	$zero, $a0, 0
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	beqz	$a1, .LBB6_13
# %bb.12:                               # %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
	addi.d	$a0, $s6, 4
	slli.d	$a2, $a1, 2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB6_13:                               # %.lr.ph975
	move	$a4, $zero
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	alsl.d	$a0, $a0, $s6, 2
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	vldi	$vr0, -1000
	fdiv.d	$fs2, $fs0, $fa0
	fld.d	$fa1, $sp, 168                  # 8-byte Folded Reload
	fdiv.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $sp, 160                  # 8-byte Folded Spill
	ld.d	$a3, $s8, 8
	vldi	$vr3, -800
	movgr2fr.d	$fs4, $zero
	move	$a2, $fp
	st.d	$s6, $sp, 112                   # 8-byte Folded Spill
	b	.LBB6_15
	.p2align	4, , 16
.LBB6_14:                               # %._crit_edge
                                        #   in Loop: Header=BB6_15 Depth=1
	addi.d	$a4, $a4, 1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 112                   # 8-byte Folded Reload
	beq	$a4, $a0, .LBB6_70
.LBB6_15:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_21 Depth 2
                                        #       Child Loop BB6_54 Depth 3
                                        #       Child Loop BB6_62 Depth 3
                                        #       Child Loop BB6_69 Depth 3
                                        #       Child Loop BB6_49 Depth 3
                                        #       Child Loop BB6_33 Depth 3
	sub.d	$a0, $a3, $a2
	srli.d	$a0, $a0, 4
	slli.d	$a1, $a4, 2
	stx.w	$a0, $s6, $a1
	bltz	$s0, .LBB6_14
# %bb.16:                               # %.lr.ph
                                        #   in Loop: Header=BB6_15 Depth=1
	ld.w	$a1, $s5, 84
	move	$a0, $zero
	add.d	$a1, $a1, $a4
	movgr2fr.w	$fa0, $a1
	addi.w	$a5, $a1, 0
	fld.d	$fa1, $s5, 48
	ffint.d.w	$fa0, $fa0
	fadd.d	$fa0, $fa0, $fa3
	fld.d	$fa2, $sp, 168                  # 8-byte Folded Reload
	fmul.d	$fa0, $fa2, $fa0
	fcmp.clt.d	$fcc0, $fa0, $fa1
	fsel	$fa0, $fa1, $fa0, $fcc0
	fmax.d	$fs5, $fa0, $fs4
	fld.d	$fa0, $sp, 160                  # 8-byte Folded Reload
	fadd.d	$fs6, $fa0, $fs5
	fsub.d	$fs7, $fs5, $fa0
	move	$s4, $a2
	move	$s6, $a4
	move	$s7, $a5
	b	.LBB6_21
	.p2align	4, , 16
.LBB6_17:                               #   in Loop: Header=BB6_21 Depth=2
	beq	$a3, $s2, .LBB6_29
# %bb.18:                               #   in Loop: Header=BB6_21 Depth=2
	fst.d	$fs1, $a3, 0
	fst.d	$fs5, $a3, 8
.LBB6_19:                               # %_ZNSt6vectorI7double2SaIS0_EE9push_backEOS0_.exit
                                        #   in Loop: Header=BB6_21 Depth=2
	addi.d	$a3, $a3, 16
	st.d	$a3, $s8, 8
	move	$a2, $s4
.LBB6_20:                               # %_ZNSt6vectorI7double2SaIS0_EE9push_backEOS0_.exit
                                        #   in Loop: Header=BB6_21 Depth=2
	addi.w	$a0, $fp, 1
	move	$s4, $a2
	beq	$fp, $s0, .LBB6_14
.LBB6_21:                               #   Parent Loop BB6_15 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_54 Depth 3
                                        #       Child Loop BB6_62 Depth 3
                                        #       Child Loop BB6_69 Depth 3
                                        #       Child Loop BB6_49 Depth 3
                                        #       Child Loop BB6_33 Depth 3
	ld.w	$a1, $s5, 80
	move	$fp, $a0
	add.d	$a1, $a1, $a0
	addi.w	$a0, $a1, 0
	movgr2fr.w	$fa0, $a1
	fld.d	$fa1, $s5, 40
	ffint.d.w	$fa0, $fa0
	fadd.d	$fa0, $fa0, $fa3
	fmul.d	$fa0, $fs0, $fa0
	fcmp.clt.d	$fcc0, $fa0, $fa1
	fsel	$fa0, $fa1, $fa0, $fcc0
	fmax.d	$fs1, $fa0, $fs4
	beqz	$a0, .LBB6_17
# %bb.22:                               #   in Loop: Header=BB6_21 Depth=2
	ld.w	$a1, $s5, 32
	beq	$a0, $a1, .LBB6_17
# %bb.23:                               #   in Loop: Header=BB6_21 Depth=2
	beqz	$a5, .LBB6_17
# %bb.24:                               #   in Loop: Header=BB6_21 Depth=2
	ld.w	$a0, $s5, 36
	beq	$a5, $a0, .LBB6_17
# %bb.25:                               #   in Loop: Header=BB6_21 Depth=2
	bnez	$a4, .LBB6_38
# %bb.26:                               #   in Loop: Header=BB6_21 Depth=2
	ld.w	$a0, $s5, 72
	bne	$fp, $a0, .LBB6_38
# %bb.27:                               #   in Loop: Header=BB6_21 Depth=2
	fsub.d	$fs1, $fs1, $fs2
	beq	$a3, $s2, .LBB6_45
# %bb.28:                               #   in Loop: Header=BB6_21 Depth=2
	fst.d	$fs1, $a3, 0
	fst.d	$fs6, $a3, 8
	b	.LBB6_19
	.p2align	4, , 16
.LBB6_29:                               #   in Loop: Header=BB6_21 Depth=2
	sub.d	$s1, $s2, $s4
	addi.w	$a0, $zero, -16
	lu52i.d	$a0, $a0, 2047
	beq	$s1, $a0, .LBB6_482
# %bb.30:                               #   in Loop: Header=BB6_21 Depth=2
	srai.d	$a0, $s1, 4
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	addi.w	$a2, $zero, -1
	lu52i.d	$a2, $a2, 127
	sltu	$a3, $a0, $a2
	maskeqz	$a0, $a0, $a3
	masknez	$a3, $a2, $a3
	or	$a0, $a0, $a3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$s0, $a1, $a0
	slli.d	$a0, $s0, 4
.Ltmp58:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp59:                                # EH_LABEL
# %bb.31:                               # %.noexc627
                                        #   in Loop: Header=BB6_21 Depth=2
	move	$a2, $a0
	add.d	$a0, $a0, $s1
	fstx.d	$fs1, $a2, $s1
	fst.d	$fs5, $a0, 8
	move	$s3, $a2
	beq	$s4, $s2, .LBB6_34
# %bb.32:                               # %.lr.ph.i.i.i.i.i.i.i.preheader
                                        #   in Loop: Header=BB6_21 Depth=2
	move	$s3, $a2
	move	$a0, $s4
	.p2align	4, , 16
.LBB6_33:                               # %.lr.ph.i.i.i.i.i.i.i
                                        #   Parent Loop BB6_15 Depth=1
                                        #     Parent Loop BB6_21 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr0, $a0, 0
	vst	$vr0, $s3, 0
	addi.d	$a0, $a0, 16
	addi.d	$s3, $s3, 16
	bne	$a0, $s2, .LBB6_33
.LBB6_34:                               # %_ZSt34__uninitialized_move_if_noexcept_aIP7double2S1_SaIS0_EET0_T_S4_S3_RT1_.exit.i.i
                                        #   in Loop: Header=BB6_21 Depth=2
	beqz	$s4, .LBB6_37
# %bb.35:                               #   in Loop: Header=BB6_21 Depth=2
	move	$a0, $s4
	move	$a1, $s1
.LBB6_36:                               # %_ZNSt6vectorI7double2SaIS0_EE17_M_realloc_appendIJS0_EEEvDpOT_.exit.i
                                        #   in Loop: Header=BB6_21 Depth=2
	move	$s1, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a2, $s1
.LBB6_37:                               # %_ZNSt6vectorI7double2SaIS0_EE17_M_realloc_appendIJS0_EEEvDpOT_.exit.i
                                        #   in Loop: Header=BB6_21 Depth=2
	addi.d	$a3, $s3, 16
	st.d	$a2, $s8, 0
	st.d	$a3, $s8, 8
	alsl.d	$s2, $s0, $a2, 4
	st.d	$s2, $s8, 16
	move	$a4, $s6
	vldi	$vr3, -800
	move	$a5, $s7
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	b	.LBB6_20
.LBB6_38:                               #   in Loop: Header=BB6_21 Depth=2
	bnez	$fp, .LBB6_42
# %bb.39:                               #   in Loop: Header=BB6_21 Depth=2
	ld.wu	$a0, $s5, 76
	bne	$a4, $a0, .LBB6_42
# %bb.40:                               #   in Loop: Header=BB6_21 Depth=2
	fadd.d	$fs1, $fs2, $fs1
	beq	$a3, $s2, .LBB6_65
# %bb.41:                               #   in Loop: Header=BB6_21 Depth=2
	fst.d	$fs1, $a3, 0
	fst.d	$fs7, $a3, 8
	b	.LBB6_19
.LBB6_42:                               #   in Loop: Header=BB6_21 Depth=2
	fsub.d	$fs3, $fs1, $fs2
	beq	$a3, $s2, .LBB6_50
# %bb.43:                               #   in Loop: Header=BB6_21 Depth=2
	fst.d	$fs3, $a3, 0
	fst.d	$fs6, $a3, 8
	addi.d	$a0, $a3, 16
	st.d	$a0, $s8, 8
	move	$s1, $s4
	fadd.d	$fs1, $fs2, $fs1
	beq	$a0, $s2, .LBB6_58
.LBB6_44:                               #   in Loop: Header=BB6_21 Depth=2
	fst.d	$fs1, $a0, 0
	fst.d	$fs7, $a0, 8
	addi.d	$a3, $a0, 16
	st.d	$a3, $s8, 8
	move	$a2, $s1
	b	.LBB6_20
.LBB6_45:                               #   in Loop: Header=BB6_21 Depth=2
	sub.d	$s1, $s2, $s4
	addi.w	$a0, $zero, -16
	lu52i.d	$a0, $a0, 2047
	beq	$s1, $a0, .LBB6_484
# %bb.46:                               #   in Loop: Header=BB6_21 Depth=2
	srai.d	$a0, $s1, 4
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	addi.w	$a2, $zero, -1
	lu52i.d	$a2, $a2, 127
	sltu	$a3, $a0, $a2
	maskeqz	$a0, $a0, $a3
	masknez	$a3, $a2, $a3
	or	$a0, $a0, $a3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$s0, $a1, $a0
	slli.d	$a0, $s0, 4
.Ltmp52:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp53:                                # EH_LABEL
# %bb.47:                               # %.noexc640
                                        #   in Loop: Header=BB6_21 Depth=2
	move	$a2, $a0
	add.d	$a0, $a0, $s1
	fstx.d	$fs1, $a2, $s1
	fst.d	$fs6, $a0, 8
	move	$s3, $a2
	beq	$s4, $s2, .LBB6_34
# %bb.48:                               # %.lr.ph.i.i.i.i.i.i.i631.preheader
                                        #   in Loop: Header=BB6_21 Depth=2
	move	$s3, $a2
	move	$a0, $s4
	.p2align	4, , 16
.LBB6_49:                               # %.lr.ph.i.i.i.i.i.i.i631
                                        #   Parent Loop BB6_15 Depth=1
                                        #     Parent Loop BB6_21 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr0, $a0, 0
	vst	$vr0, $s3, 0
	addi.d	$a0, $a0, 16
	addi.d	$s3, $s3, 16
	bne	$a0, $s2, .LBB6_49
	b	.LBB6_34
.LBB6_50:                               #   in Loop: Header=BB6_21 Depth=2
	sub.d	$s3, $s2, $s4
	addi.w	$a0, $zero, -16
	lu52i.d	$a0, $a0, 2047
	beq	$s3, $a0, .LBB6_486
# %bb.51:                               #   in Loop: Header=BB6_21 Depth=2
	srai.d	$a0, $s3, 4
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	addi.w	$a2, $zero, -1
	lu52i.d	$a2, $a2, 127
	sltu	$a3, $a0, $a2
	maskeqz	$a0, $a0, $a3
	masknez	$a3, $a2, $a3
	or	$a0, $a0, $a3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$s0, $a1, $a0
	slli.d	$a0, $s0, 4
.Ltmp34:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp35:                                # EH_LABEL
# %bb.52:                               # %.noexc668
                                        #   in Loop: Header=BB6_21 Depth=2
	move	$s1, $a0
	add.d	$a0, $a0, $s3
	fstx.d	$fs3, $s1, $s3
	fst.d	$fs6, $a0, 8
	move	$s5, $s1
	beq	$s4, $s2, .LBB6_55
# %bb.53:                               # %.lr.ph.i.i.i.i.i.i.i659.preheader
                                        #   in Loop: Header=BB6_21 Depth=2
	move	$s5, $s1
	move	$a0, $s4
	.p2align	4, , 16
.LBB6_54:                               # %.lr.ph.i.i.i.i.i.i.i659
                                        #   Parent Loop BB6_15 Depth=1
                                        #     Parent Loop BB6_21 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr0, $a0, 0
	vst	$vr0, $s5, 0
	addi.d	$a0, $a0, 16
	addi.d	$s5, $s5, 16
	bne	$a0, $s2, .LBB6_54
.LBB6_55:                               # %_ZSt34__uninitialized_move_if_noexcept_aIP7double2S1_SaIS0_EET0_T_S4_S3_RT1_.exit.i.i663
                                        #   in Loop: Header=BB6_21 Depth=2
	beqz	$s4, .LBB6_57
# %bb.56:                               #   in Loop: Header=BB6_21 Depth=2
	move	$a0, $s4
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_57:                               # %_ZNSt6vectorI7double2SaIS0_EE17_M_realloc_appendIJS0_EEEvDpOT_.exit.i666
                                        #   in Loop: Header=BB6_21 Depth=2
	addi.d	$a0, $s5, 16
	st.d	$s1, $s8, 0
	st.d	$a0, $s8, 8
	alsl.d	$s2, $s0, $s1, 4
	st.d	$s2, $s8, 16
	ld.d	$s5, $sp, 176                   # 8-byte Folded Reload
	move	$a4, $s6
	vldi	$vr3, -800
	move	$a5, $s7
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	fadd.d	$fs1, $fs2, $fs1
	bne	$a0, $s2, .LBB6_44
.LBB6_58:                               #   in Loop: Header=BB6_21 Depth=2
	sub.d	$s4, $s2, $s1
	addi.w	$a0, $zero, -16
	lu52i.d	$a0, $a0, 2047
	beq	$s4, $a0, .LBB6_488
# %bb.59:                               #   in Loop: Header=BB6_21 Depth=2
	srai.d	$a0, $s4, 4
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	addi.w	$a2, $zero, -1
	lu52i.d	$a2, $a2, 127
	sltu	$a3, $a0, $a2
	maskeqz	$a0, $a0, $a3
	masknez	$a3, $a2, $a3
	or	$a0, $a0, $a3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$s0, $a1, $a0
	slli.d	$a0, $s0, 4
.Ltmp37:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp38:                                # EH_LABEL
# %bb.60:                               # %.noexc682
                                        #   in Loop: Header=BB6_21 Depth=2
	move	$a2, $a0
	add.d	$a0, $a0, $s4
	fstx.d	$fs1, $a2, $s4
	fst.d	$fs7, $a0, 8
	move	$s3, $a2
	beq	$s1, $s2, .LBB6_63
# %bb.61:                               # %.lr.ph.i.i.i.i.i.i.i673.preheader
                                        #   in Loop: Header=BB6_21 Depth=2
	move	$s3, $a2
	move	$a0, $s1
	.p2align	4, , 16
.LBB6_62:                               # %.lr.ph.i.i.i.i.i.i.i673
                                        #   Parent Loop BB6_15 Depth=1
                                        #     Parent Loop BB6_21 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr0, $a0, 0
	vst	$vr0, $s3, 0
	addi.d	$a0, $a0, 16
	addi.d	$s3, $s3, 16
	bne	$a0, $s2, .LBB6_62
.LBB6_63:                               # %_ZSt34__uninitialized_move_if_noexcept_aIP7double2S1_SaIS0_EET0_T_S4_S3_RT1_.exit.i.i677
                                        #   in Loop: Header=BB6_21 Depth=2
	beqz	$s1, .LBB6_37
# %bb.64:                               #   in Loop: Header=BB6_21 Depth=2
	move	$a0, $s1
	move	$a1, $s4
	b	.LBB6_36
.LBB6_65:                               #   in Loop: Header=BB6_21 Depth=2
	sub.d	$s1, $s2, $s4
	addi.w	$a0, $zero, -16
	lu52i.d	$a0, $a0, 2047
	beq	$s1, $a0, .LBB6_490
# %bb.66:                               #   in Loop: Header=BB6_21 Depth=2
	srai.d	$a0, $s1, 4
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	addi.w	$a2, $zero, -1
	lu52i.d	$a2, $a2, 127
	sltu	$a3, $a0, $a2
	maskeqz	$a0, $a0, $a3
	masknez	$a3, $a2, $a3
	or	$a0, $a0, $a3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$s0, $a1, $a0
	slli.d	$a0, $s0, 4
.Ltmp46:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp47:                                # EH_LABEL
# %bb.67:                               # %.noexc654
                                        #   in Loop: Header=BB6_21 Depth=2
	move	$a2, $a0
	add.d	$a0, $a0, $s1
	fstx.d	$fs1, $a2, $s1
	fst.d	$fs7, $a0, 8
	move	$s3, $a2
	beq	$s4, $s2, .LBB6_34
# %bb.68:                               # %.lr.ph.i.i.i.i.i.i.i645.preheader
                                        #   in Loop: Header=BB6_21 Depth=2
	move	$s3, $a2
	move	$a0, $s4
	.p2align	4, , 16
.LBB6_69:                               # %.lr.ph.i.i.i.i.i.i.i645
                                        #   Parent Loop BB6_15 Depth=1
                                        #     Parent Loop BB6_21 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr0, $a0, 0
	vst	$vr0, $s3, 0
	addi.d	$a0, $a0, 16
	addi.d	$s3, $s3, 16
	bne	$a0, $s2, .LBB6_69
	b	.LBB6_34
.LBB6_70:
	st.d	$a3, $sp, 8                     # 8-byte Folded Spill
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	mul.w	$s0, $a0, $s0
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	bgez	$s0, .LBB6_72
	b	.LBB6_492
.LBB6_71:                               # %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit.._crit_edge976_crit_edge
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	ld.d	$a0, $s8, 8
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	move	$s6, $zero
	st.d	$zero, $sp, 24                  # 8-byte Folded Spill
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	mul.w	$s0, $a0, $s0
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	bltz	$s0, .LBB6_492
.LBB6_72:
	ld.d	$a0, $a1, 16
	ld.d	$s1, $a1, 0
	sub.d	$s2, $a0, $s1
	srai.d	$a0, $s2, 2
	bgeu	$a0, $s0, .LBB6_79
# %bb.73:                               # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s3, $a0, 8
	slli.d	$a0, $s0, 2
.Ltmp64:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp65:                                # EH_LABEL
# %bb.74:                               # %.noexc298
	move	$fp, $a0
	sub.d	$s4, $s3, $s1
	blez	$s4, .LBB6_76
# %bb.75:
	move	$a0, $fp
	move	$a1, $s1
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_76:                               # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
	beqz	$s1, .LBB6_78
# %bb.77:
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_78:                               # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	st.d	$fp, $a1, 0
	add.d	$a0, $fp, $s4
	st.d	$a0, $a1, 8
	alsl.d	$a0, $s0, $fp, 2
	st.d	$a0, $a1, 16
	ld.d	$s5, $sp, 176                   # 8-byte Folded Reload
.LBB6_79:                               # %_ZNSt6vectorIiSaIiEE7reserveEm.exit
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a0, $a1, 16
	ld.d	$s1, $a1, 0
	sub.d	$s2, $a0, $s1
	srai.d	$a0, $s2, 2
	bgeu	$a0, $s0, .LBB6_86
# %bb.80:                               # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i311
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s3, $a0, 8
	slli.d	$a0, $s0, 2
.Ltmp66:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp67:                                # EH_LABEL
# %bb.81:                               # %.noexc316
	move	$fp, $a0
	sub.d	$s4, $s3, $s1
	blez	$s4, .LBB6_83
# %bb.82:
	move	$a0, $fp
	move	$a1, $s1
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_83:                               # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i312
	beqz	$s1, .LBB6_85
# %bb.84:
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_85:                               # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i314
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	st.d	$fp, $a1, 0
	add.d	$a0, $fp, $s4
	st.d	$a0, $a1, 8
	alsl.d	$a0, $s0, $fp, 2
	st.d	$a0, $a1, 16
	ld.d	$s5, $sp, 176                   # 8-byte Folded Reload
.LBB6_86:                               # %_ZNSt6vectorIiSaIiEE7reserveEm.exit317
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $a1, 16
	ld.d	$s1, $a1, 0
	slli.d	$a1, $s0, 2
	alsl.w	$s0, $s0, $a1, 1
	sub.d	$s2, $a0, $s1
	srai.d	$a0, $s2, 2
	ld.d	$s7, $sp, 120                   # 8-byte Folded Reload
	bgeu	$a0, $s0, .LBB6_93
# %bb.87:                               # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i318
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s3, $a0, 8
	slli.d	$a0, $s0, 2
.Ltmp68:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp69:                                # EH_LABEL
# %bb.88:                               # %.noexc323
	move	$fp, $a0
	sub.d	$s4, $s3, $s1
	blez	$s4, .LBB6_90
# %bb.89:
	move	$a0, $fp
	move	$a1, $s1
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_90:                               # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i319
	ld.d	$s5, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 120                   # 8-byte Folded Reload
	beqz	$s1, .LBB6_92
# %bb.91:
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_92:                               # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i321
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	st.d	$fp, $a1, 0
	add.d	$a0, $fp, $s4
	st.d	$a0, $a1, 8
	alsl.d	$a0, $s0, $fp, 2
	st.d	$a0, $a1, 16
.LBB6_93:                               # %_ZNSt6vectorIiSaIiEE7reserveEm.exit324
	ld.w	$a0, $s5, 76
	st.d	$s6, $sp, 112                   # 8-byte Folded Spill
	ld.d	$s0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 128                   # 8-byte Folded Reload
	blez	$a0, .LBB6_138
# %bb.94:                               # %.lr.ph981
	move	$a5, $zero
	b	.LBB6_97
	.p2align	4, , 16
.LBB6_95:                               # %.loopexit926.loopexit
                                        #   in Loop: Header=BB6_97 Depth=1
	ld.w	$a0, $s5, 76
	ld.d	$s6, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 104                   # 8-byte Folded Reload
.LBB6_96:                               # %.loopexit926
                                        #   in Loop: Header=BB6_97 Depth=1
	bge	$a5, $a0, .LBB6_138
.LBB6_97:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_101 Depth 2
	move	$a1, $a5
	ld.w	$a2, $s5, 84
	slli.d	$a3, $a5, 2
	ldx.w	$a6, $s6, $a3
	addi.d	$a5, $a5, 1
	slli.d	$a3, $a5, 2
	ld.w	$a4, $s5, 64
	ldx.w	$a3, $s6, $a3
	add.w	$a7, $a2, $a1
	blez	$a4, .LBB6_99
# %bb.98:                               #   in Loop: Header=BB6_97 Depth=1
	slt	$a2, $zero, $a7
	add.d	$a6, $a6, $a2
	addi.w	$a2, $a0, -1
	slt	$a1, $a1, $a2
	add.d	$a3, $a3, $a1
.LBB6_99:                               #   in Loop: Header=BB6_97 Depth=1
	ld.w	$a1, $s5, 72
	blez	$a1, .LBB6_96
# %bb.100:                              # %.lr.ph979
                                        #   in Loop: Header=BB6_97 Depth=1
	st.d	$a7, $sp, 152                   # 8-byte Folded Spill
	st.d	$a3, $sp, 160                   # 8-byte Folded Spill
	st.d	$a6, $sp, 168                   # 8-byte Folded Spill
	st.d	$a5, $sp, 104                   # 8-byte Folded Spill
	move	$s6, $zero
	move	$s7, $zero
	ori	$s3, $zero, 2
	.p2align	4, , 16
.LBB6_101:                              #   Parent Loop BB6_97 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$fp, $s5, 80
.Ltmp70:                                # EH_LABEL
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp71:                                # EH_LABEL
# %bb.102:                              #   in Loop: Header=BB6_101 Depth=2
	move	$s4, $a0
	add.w	$a2, $s7, $fp
	addi.d	$a0, $a0, 4
	addi.d	$s8, $s4, 24
	ld.d	$a5, $sp, 168                   # 8-byte Folded Reload
	add.d	$a1, $a5, $s3
	addi.d	$a3, $a1, -2
	st.w	$a3, $s4, 4
	addi.d	$a3, $a1, -3
	st.w	$a3, $s4, 0
	addi.d	$a1, $a1, -1
	st.w	$a1, $s4, 8
	ld.d	$a4, $sp, 160                   # 8-byte Folded Reload
	add.d	$a3, $a4, $s6
	addi.d	$a1, $s4, 20
	st.w	$a3, $s4, 20
	addi.d	$a3, $a3, 1
	st.w	$a3, $s4, 16
	add.d	$a3, $a4, $s3
	st.w	$a3, $s4, 12
	ld.d	$a6, $sp, 152                   # 8-byte Folded Reload
	beqz	$a6, .LBB6_106
# %bb.103:                              #   in Loop: Header=BB6_101 Depth=2
	ld.w	$a3, $s5, 36
	addi.w	$a3, $a3, -1
	bne	$a6, $a3, .LBB6_110
# %bb.104:                              #   in Loop: Header=BB6_101 Depth=2
	add.d	$a3, $a4, $s7
	st.w	$a3, $s4, 20
	addi.d	$a4, $a3, 1
	st.w	$a4, $s4, 12
	st.w	$a3, $s4, 16
	move	$s8, $a1
	bnez	$a2, .LBB6_115
# %bb.105:                              #   in Loop: Header=BB6_101 Depth=2
	vld	$vr0, $a0, 0
	addi.d	$s8, $s4, 16
	vst	$vr0, $s4, 0
	b	.LBB6_115
	.p2align	4, , 16
.LBB6_106:                              #   in Loop: Header=BB6_101 Depth=2
	ld.w	$a4, $s5, 32
	add.d	$a3, $a5, $s7
	st.w	$a3, $s4, 0
	addi.d	$a3, $a3, 1
	addi.w	$a4, $a4, -1
	st.w	$a3, $s4, 8
	bne	$a2, $a4, .LBB6_108
# %bb.107:                              #   in Loop: Header=BB6_101 Depth=2
	ld.d	$a2, $s4, 16
	st.d	$a2, $s4, 12
	move	$s8, $a1
.LBB6_108:                              #   in Loop: Header=BB6_101 Depth=2
	addi.d	$a1, $s4, 8
	sub.d	$a2, $s8, $a1
	ori	$a4, $zero, 5
	blt	$a2, $a4, .LBB6_135
# %bb.109:                              #   in Loop: Header=BB6_101 Depth=2
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
	addi.d	$s8, $s8, -4
	b	.LBB6_115
	.p2align	4, , 16
.LBB6_110:                              #   in Loop: Header=BB6_101 Depth=2
	beqz	$a2, .LBB6_113
# %bb.111:                              #   in Loop: Header=BB6_101 Depth=2
	ld.w	$a0, $s5, 32
	addi.w	$a0, $a0, -1
	bne	$a2, $a0, .LBB6_115
# %bb.112:                              #   in Loop: Header=BB6_101 Depth=2
	ld.d	$a0, $s4, 16
	st.d	$a0, $s4, 12
	b	.LBB6_114
.LBB6_113:                              #   in Loop: Header=BB6_101 Depth=2
	ld.w	$a2, $a0, 16
	vld	$vr0, $a0, 0
	st.w	$a2, $s4, 16
	vst	$vr0, $s4, 0
.LBB6_114:                              #   in Loop: Header=BB6_101 Depth=2
	move	$s8, $a1
.LBB6_115:                              #   in Loop: Header=BB6_101 Depth=2
	ld.d	$a1, $s0, 8
	ld.d	$a2, $s0, 0
	ld.d	$a0, $s2, 8
	ld.d	$a3, $s2, 16
	sub.d	$a1, $a1, $a2
	srli.d	$s5, $a1, 2
	beq	$a0, $a3, .LBB6_117
# %bb.116:                              #   in Loop: Header=BB6_101 Depth=2
	st.w	$s5, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $s2, 8
	b	.LBB6_124
	.p2align	4, , 16
.LBB6_117:                              #   in Loop: Header=BB6_101 Depth=2
	ld.d	$s2, $s2, 0
	sub.d	$s1, $a0, $s2
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s1, $a0, .LBB6_478
# %bb.118:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i
                                        #   in Loop: Header=BB6_101 Depth=2
	srai.d	$a0, $s1, 2
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
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
.Ltmp73:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp74:                                # EH_LABEL
# %bb.119:                              # %.noexc348
                                        #   in Loop: Header=BB6_101 Depth=2
	move	$fp, $a0
	stx.w	$s5, $a0, $s1
	blez	$s1, .LBB6_121
# %bb.120:                              #   in Loop: Header=BB6_101 Depth=2
	move	$a0, $fp
	move	$a1, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_121:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i
                                        #   in Loop: Header=BB6_101 Depth=2
	beqz	$s2, .LBB6_123
# %bb.122:                              #   in Loop: Header=BB6_101 Depth=2
	move	$a0, $s2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_123:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i
                                        #   in Loop: Header=BB6_101 Depth=2
	add.d	$a0, $fp, $s1
	addi.d	$a0, $a0, 4
	ld.d	$s2, $sp, 128                   # 8-byte Folded Reload
	st.d	$fp, $s2, 0
	st.d	$a0, $s2, 8
	alsl.d	$a0, $s0, $fp, 2
	st.d	$a0, $s2, 16
	ld.d	$s0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 136                   # 8-byte Folded Reload
.LBB6_124:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
                                        #   in Loop: Header=BB6_101 Depth=2
	ld.d	$a0, $s1, 8
	ld.d	$a1, $s1, 16
	sub.d	$a2, $s8, $s4
	srli.d	$s5, $a2, 2
	beq	$a0, $a1, .LBB6_126
# %bb.125:                              #   in Loop: Header=BB6_101 Depth=2
	st.w	$s5, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $s1, 8
	ld.d	$s5, $sp, 176                   # 8-byte Folded Reload
	b	.LBB6_133
	.p2align	4, , 16
.LBB6_126:                              #   in Loop: Header=BB6_101 Depth=2
	ld.d	$s2, $s1, 0
	sub.d	$s1, $a0, $s2
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s1, $a0, .LBB6_480
# %bb.127:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i350
                                        #   in Loop: Header=BB6_101 Depth=2
	srai.d	$a0, $s1, 2
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
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
.Ltmp76:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp77:                                # EH_LABEL
# %bb.128:                              # %.noexc356
                                        #   in Loop: Header=BB6_101 Depth=2
	move	$fp, $a0
	stx.w	$s5, $a0, $s1
	blez	$s1, .LBB6_130
# %bb.129:                              #   in Loop: Header=BB6_101 Depth=2
	move	$a0, $fp
	move	$a1, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_130:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i352
                                        #   in Loop: Header=BB6_101 Depth=2
	ld.d	$s5, $sp, 176                   # 8-byte Folded Reload
	beqz	$s2, .LBB6_132
# %bb.131:                              #   in Loop: Header=BB6_101 Depth=2
	move	$a0, $s2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_132:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i354
                                        #   in Loop: Header=BB6_101 Depth=2
	add.d	$a0, $fp, $s1
	addi.d	$a0, $a0, 4
	ld.d	$s1, $sp, 136                   # 8-byte Folded Reload
	st.d	$fp, $s1, 0
	st.d	$a0, $s1, 8
	alsl.d	$a0, $s0, $fp, 2
	st.d	$a0, $s1, 16
	ld.d	$s0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 128                   # 8-byte Folded Reload
.LBB6_133:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit357
                                        #   in Loop: Header=BB6_101 Depth=2
	ld.d	$a1, $s0, 8
.Ltmp79:                                # EH_LABEL
	move	$a0, $s0
	move	$a2, $s4
	move	$a3, $s8
	move	$a4, $zero
	pcaddu18i	$ra, %call36(_ZNSt6vectorIiSaIiEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPiS1_EEEEvS6_T_S7_St20forward_iterator_tag)
	jirl	$ra, $ra, 0
.Ltmp80:                                # EH_LABEL
# %bb.134:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit
                                        #   in Loop: Header=BB6_101 Depth=2
	ori	$a1, $zero, 24
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, 72
	addi.w	$s7, $s7, 1
	addi.d	$s3, $s3, 2
	addi.d	$s6, $s6, 2
	blt	$s7, $a0, .LBB6_101
	b	.LBB6_95
.LBB6_135:                              #   in Loop: Header=BB6_101 Depth=2
	ori	$a1, $zero, 4
	bne	$a2, $a1, .LBB6_137
# %bb.136:                              #   in Loop: Header=BB6_101 Depth=2
	st.w	$a3, $a0, 0
.LBB6_137:                              #   in Loop: Header=BB6_101 Depth=2
	addi.d	$s8, $s8, -4
	b	.LBB6_115
.LBB6_138:                              # %._crit_edge982
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel5numpeE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZN8Parallel5numpeE)
	ld.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB6_432
# %bb.139:
	ld.w	$fp, $s5, 68
	ld.w	$s0, $s5, 64
	sltu	$a0, $zero, $fp
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	mul.d	$a0, $a0, $a1
	sltu	$a1, $zero, $s0
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	mul.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 1
	alsl.w	$s3, $a0, $a1, 1
	bltz	$s3, .LBB6_492
# %bb.140:
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $a1, 16
	ld.d	$s2, $a1, 0
	sub.d	$s4, $a0, $s2
	srai.d	$a0, $s4, 2
	bgeu	$a0, $s3, .LBB6_147
# %bb.141:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i361
	ld.d	$s5, $a1, 8
	slli.d	$a0, $s3, 2
.Ltmp82:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp83:                                # EH_LABEL
# %bb.142:                              # %.noexc366
	move	$s1, $a0
	sub.d	$s5, $s5, $s2
	blez	$s5, .LBB6_144
# %bb.143:
	move	$a0, $s1
	move	$a1, $s2
	move	$a2, $s5
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_144:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i362
	beqz	$s2, .LBB6_146
# %bb.145:
	move	$a0, $s2
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.w	$fp, $a0, 68
	ld.w	$s0, $a0, 64
.LBB6_146:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i364
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	st.d	$s1, $a1, 0
	add.d	$a0, $s1, $s5
	st.d	$a0, $a1, 8
	alsl.d	$a0, $s3, $s1, 2
	st.d	$a0, $a1, 16
	ld.d	$s5, $sp, 176                   # 8-byte Folded Reload
.LBB6_147:                              # %_ZNSt6vectorIiSaIiEE7reserveEm.exit367
	ld.w	$a0, $s5, 60
	addi.w	$a0, $a0, -1
	ld.w	$a1, $s5, 56
	xor	$a0, $fp, $a0
	sltu	$a0, $zero, $a0
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	mul.d	$a0, $a0, $a2
	addi.w	$a1, $a1, -1
	xor	$a1, $s0, $a1
	sltu	$a1, $zero, $a1
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	mul.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 1
	alsl.w	$a2, $a0, $a1, 1
	addi.w	$a3, $zero, -3
	bge	$a3, $a2, .LBB6_492
# %bb.148:
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a2, $a3, 16
	ld.d	$s1, $a3, 0
	alsl.d	$a0, $a0, $a1, 1
	addi.w	$s3, $a0, 2
	sub.d	$s2, $a2, $s1
	srai.d	$a0, $s2, 2
	bgeu	$a0, $s3, .LBB6_155
# %bb.149:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i368
	ld.d	$fp, $a3, 8
	slli.d	$a0, $s3, 2
.Ltmp84:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp85:                                # EH_LABEL
# %bb.150:                              # %.noexc373
	move	$s4, $a0
	sub.d	$fp, $fp, $s1
	blez	$fp, .LBB6_152
# %bb.151:
	move	$a0, $s4
	move	$a1, $s1
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_152:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i369
	ld.d	$s5, $sp, 176                   # 8-byte Folded Reload
	beqz	$s1, .LBB6_154
# %bb.153:
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.w	$s0, $s5, 64
.LBB6_154:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i371
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	st.d	$s4, $a3, 0
	add.d	$a0, $s4, $fp
	st.d	$a0, $a3, 8
	alsl.d	$a0, $s3, $s4, 2
	st.d	$a0, $a3, 16
	ld.w	$fp, $s5, 68
.LBB6_155:                              # %_ZNSt6vectorIiSaIiEE7reserveEm.exit374
	move	$s3, $s7
	beqz	$s0, .LBB6_192
# %bb.156:                              # %_ZNSt6vectorIiSaIiEE7reserveEm.exit374
	beqz	$fp, .LBB6_192
# %bb.157:
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZN8Parallel4mypeE)
	ld.w	$s0, $a0, 0
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a1, $a2, 8
	ld.d	$a0, $a2, 16
	ld.w	$s2, $s5, 56
	beq	$a1, $a0, .LBB6_160
# %bb.158:
	st.w	$zero, $a1, 0
	addi.d	$a1, $a1, 4
	st.d	$a1, $a2, 8
	ld.d	$a4, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 56                    # 8-byte Folded Reload
	beq	$a1, $a0, .LBB6_167
.LBB6_159:
	ori	$a0, $zero, 1
	st.w	$a0, $a1, 0
	addi.d	$a0, $a1, 4
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	st.d	$a0, $a1, 8
	b	.LBB6_174
.LBB6_160:
	ld.d	$s1, $a2, 0
	sub.d	$s4, $a1, $s1
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s4, $a0, .LBB6_528
# %bb.161:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i376
	srai.d	$a0, $s4, 2
	ori	$a1, $zero, 1
	sltu	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a0, $a2
	or	$a1, $a2, $a1
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
	or	$s3, $a1, $a0
	slli.d	$a0, $s3, 2
.Ltmp86:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp87:                                # EH_LABEL
# %bb.162:                              # %.noexc382
	move	$fp, $a0
	stx.w	$zero, $a0, $s4
	blez	$s4, .LBB6_164
# %bb.163:
	move	$a0, $fp
	move	$a1, $s1
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_164:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i378
	add.d	$s5, $fp, $s4
	beqz	$s1, .LBB6_166
# %bb.165:
	move	$a0, $s1
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_166:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i380
	addi.d	$a1, $s5, 4
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	st.d	$fp, $a2, 0
	st.d	$a1, $a2, 8
	alsl.d	$a0, $s3, $fp, 2
	st.d	$a0, $a2, 16
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 56                    # 8-byte Folded Reload
	move	$s3, $s7
	bne	$a1, $a0, .LBB6_159
.LBB6_167:
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $a1, 0
	sub.d	$s4, $a0, $s1
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s4, $a0, .LBB6_530
# %bb.168:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i385
	srai.d	$a0, $s4, 2
	ori	$s5, $zero, 1
	sltu	$a1, $s5, $a0
	masknez	$a2, $s5, $a1
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
	or	$s3, $a1, $a0
	slli.d	$a0, $s3, 2
.Ltmp88:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp89:                                # EH_LABEL
# %bb.169:                              # %.noexc391
	move	$fp, $a0
	stx.w	$s5, $a0, $s4
	blez	$s4, .LBB6_171
# %bb.170:
	move	$a0, $fp
	move	$a1, $s1
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_171:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i387
	add.d	$s5, $fp, $s4
	beqz	$s1, .LBB6_173
# %bb.172:
	move	$a0, $s1
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_173:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i389
	addi.d	$a0, $s5, 4
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	st.d	$fp, $a1, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $s3, $fp, 2
	st.d	$a0, $a1, 16
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 56                    # 8-byte Folded Reload
	move	$s3, $s7
.LBB6_174:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit392
	ld.d	$a0, $a5, 8
	ld.d	$a1, $a5, 16
	nor	$a2, $s2, $zero
	add.d	$s0, $s0, $a2
	beq	$a0, $a1, .LBB6_177
# %bb.175:
	st.w	$s0, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a5, 8
	ld.d	$a0, $a4, 8
	ld.d	$a1, $a4, 16
	beq	$a0, $a1, .LBB6_184
.LBB6_176:
	ori	$a1, $zero, 2
	st.w	$a1, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a4, 8
	b	.LBB6_191
.LBB6_177:
	ld.d	$s1, $a5, 0
	sub.d	$s4, $a0, $s1
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s4, $a0, .LBB6_532
# %bb.178:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i
	srai.d	$a0, $s4, 2
	ori	$a1, $zero, 1
	sltu	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a0, $a2
	or	$a1, $a2, $a1
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
	or	$s2, $a1, $a0
	slli.d	$a0, $s2, 2
.Ltmp90:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp91:                                # EH_LABEL
# %bb.179:                              # %.noexc394
	move	$fp, $a0
	stx.w	$s0, $a0, $s4
	blez	$s4, .LBB6_181
# %bb.180:
	move	$a0, $fp
	move	$a1, $s1
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_181:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i
	add.d	$s0, $fp, $s4
	beqz	$s1, .LBB6_183
# %bb.182:
	move	$a0, $s1
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_183:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i
	addi.d	$a0, $s0, 4
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	st.d	$fp, $a1, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $s2, $fp, 2
	st.d	$a0, $a1, 16
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $a4, 8
	ld.d	$a1, $a4, 16
	bne	$a0, $a1, .LBB6_176
.LBB6_184:
	ld.d	$s1, $a4, 0
	sub.d	$s4, $a0, $s1
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s4, $a0, .LBB6_534
# %bb.185:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i396
	srai.d	$a0, $s4, 2
	ori	$a1, $zero, 1
	sltu	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a0, $a2
	or	$a1, $a2, $a1
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
	or	$fp, $a1, $a0
	slli.d	$a0, $fp, 2
.Ltmp92:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp93:                                # EH_LABEL
# %bb.186:                              # %.noexc402
	move	$s2, $a0
	ori	$a0, $zero, 2
	stx.w	$a0, $s2, $s4
	blez	$s4, .LBB6_188
# %bb.187:
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_188:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i398
	add.d	$s0, $s2, $s4
	beqz	$s1, .LBB6_190
# %bb.189:
	move	$a0, $s1
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_190:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i400
	addi.d	$a0, $s0, 4
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	st.d	$s2, $a1, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $fp, $s2, 2
	st.d	$a0, $a1, 16
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
.LBB6_191:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit403thread-pre-split
	ld.w	$fp, $s5, 68
.LBB6_192:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit403
	beqz	$fp, .LBB6_247
# %bb.193:
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZN8Parallel4mypeE)
	ld.w	$a2, $a0, 0
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $a3, 8
	ld.d	$s4, $a3, 0
	ld.w	$a4, $s5, 56
	sub.d	$s1, $a0, $s4
	st.d	$s1, $sp, 168                   # 8-byte Folded Spill
	st.d	$a2, $sp, 160                   # 8-byte Folded Spill
	st.d	$a4, $sp, 152                   # 8-byte Folded Spill
	bltz	$s3, .LBB6_228
# %bb.194:                              # %.lr.ph987.preheader
	ld.w	$a1, $s5, 64
	ori	$s0, $zero, 2
	beqz	$a1, .LBB6_225
# %bb.195:
	move	$s6, $s4
	beqz	$s3, .LBB6_227
.LBB6_196:                              # %.lr.ph987.peel.next.preheader
	move	$s3, $zero
	addi.w	$a1, $zero, -4
	lu52i.d	$s8, $a1, 2047
	ori	$fp, $zero, 1
	addi.w	$a1, $zero, -1
	lu52i.d	$s7, $a1, 511
	b	.LBB6_199
	.p2align	4, , 16
.LBB6_197:                              #   in Loop: Header=BB6_199 Depth=1
	st.w	$s5, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a3, 8
	ori	$a1, $zero, 2
	move	$s4, $s1
	ld.d	$s5, $sp, 176                   # 8-byte Folded Reload
.LBB6_198:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit421
                                        #   in Loop: Header=BB6_199 Depth=1
	add.d	$s0, $s0, $a1
	move	$s6, $s4
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	beq	$a1, $s3, .LBB6_228
.LBB6_199:                              # %.lr.ph987.peel.next
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $s5, 72
	ld.d	$a1, $a3, 16
	addi.w	$s3, $s3, 1
	bne	$s3, $a2, .LBB6_202
# %bb.200:                              #   in Loop: Header=BB6_199 Depth=1
	beq	$a0, $a1, .LBB6_204
# %bb.201:                              #   in Loop: Header=BB6_199 Depth=1
	st.w	$s0, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a3, 8
	ori	$a1, $zero, 1
	move	$s4, $s6
	b	.LBB6_198
	.p2align	4, , 16
.LBB6_202:                              #   in Loop: Header=BB6_199 Depth=1
	beq	$a0, $a1, .LBB6_211
# %bb.203:                              #   in Loop: Header=BB6_199 Depth=1
	st.w	$s0, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a3, 8
	move	$s1, $s6
	addi.d	$s5, $s0, 1
	bne	$a0, $a1, .LBB6_197
	b	.LBB6_218
.LBB6_204:                              #   in Loop: Header=BB6_199 Depth=1
	sub.d	$s1, $a0, $s6
	beq	$s1, $s8, .LBB6_496
# %bb.205:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i414
                                        #   in Loop: Header=BB6_199 Depth=1
	srai.d	$a0, $s1, 2
	sltu	$a1, $fp, $a0
	masknez	$a2, $fp, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	sltu	$a2, $a0, $s7
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $s7, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s7, $a1
	or	$s2, $a1, $a0
	slli.d	$a0, $s2, 2
.Ltmp121:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp122:                               # EH_LABEL
# %bb.206:                              # %.noexc420
                                        #   in Loop: Header=BB6_199 Depth=1
	move	$s4, $a0
	stx.w	$s0, $a0, $s1
	blez	$s1, .LBB6_208
# %bb.207:                              #   in Loop: Header=BB6_199 Depth=1
	move	$a0, $s4
	move	$a1, $s6
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_208:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i416
                                        #   in Loop: Header=BB6_199 Depth=1
	beqz	$s6, .LBB6_210
# %bb.209:                              #   in Loop: Header=BB6_199 Depth=1
	move	$a0, $s6
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_210:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i418
                                        #   in Loop: Header=BB6_199 Depth=1
	add.d	$a0, $s4, $s1
	addi.d	$a0, $a0, 4
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	st.d	$s4, $a3, 0
	st.d	$a0, $a3, 8
	alsl.d	$a1, $s2, $s4, 2
	st.d	$a1, $a3, 16
	ori	$a1, $zero, 1
	b	.LBB6_198
.LBB6_211:                              #   in Loop: Header=BB6_199 Depth=1
	sub.d	$s2, $a0, $s6
	beq	$s2, $s8, .LBB6_502
# %bb.212:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i423
                                        #   in Loop: Header=BB6_199 Depth=1
	srai.d	$a0, $s2, 2
	sltu	$a1, $fp, $a0
	masknez	$a2, $fp, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	sltu	$a2, $a0, $s7
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $s7, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s7, $a1
	or	$s4, $a1, $a0
	slli.d	$a0, $s4, 2
.Ltmp109:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp110:                               # EH_LABEL
# %bb.213:                              # %.noexc429
                                        #   in Loop: Header=BB6_199 Depth=1
	move	$s1, $a0
	stx.w	$s0, $a0, $s2
	blez	$s2, .LBB6_215
# %bb.214:                              #   in Loop: Header=BB6_199 Depth=1
	move	$a0, $s1
	move	$a1, $s6
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_215:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i425
                                        #   in Loop: Header=BB6_199 Depth=1
	beqz	$s6, .LBB6_217
# %bb.216:                              #   in Loop: Header=BB6_199 Depth=1
	move	$a0, $s6
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_217:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i427
                                        #   in Loop: Header=BB6_199 Depth=1
	add.d	$a0, $s1, $s2
	addi.d	$a0, $a0, 4
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	st.d	$s1, $a3, 0
	st.d	$a0, $a3, 8
	alsl.d	$a1, $s4, $s1, 2
	st.d	$a1, $a3, 16
	addi.d	$s5, $s0, 1
	bne	$a0, $a1, .LBB6_197
.LBB6_218:                              #   in Loop: Header=BB6_199 Depth=1
	sub.d	$s2, $a1, $s1
	beq	$s2, $s8, .LBB6_500
# %bb.219:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i432
                                        #   in Loop: Header=BB6_199 Depth=1
	srai.d	$a0, $s2, 2
	sltu	$a1, $fp, $a0
	masknez	$a2, $fp, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	sltu	$a2, $a0, $s7
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $s7, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s7, $a1
	or	$s6, $a1, $a0
	slli.d	$a0, $s6, 2
.Ltmp112:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp113:                               # EH_LABEL
# %bb.220:                              # %.noexc438
                                        #   in Loop: Header=BB6_199 Depth=1
	move	$s4, $a0
	stx.w	$s5, $a0, $s2
	blez	$s2, .LBB6_222
# %bb.221:                              #   in Loop: Header=BB6_199 Depth=1
	move	$a0, $s4
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_222:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i434
                                        #   in Loop: Header=BB6_199 Depth=1
	ld.d	$s5, $sp, 176                   # 8-byte Folded Reload
	beqz	$s1, .LBB6_224
# %bb.223:                              #   in Loop: Header=BB6_199 Depth=1
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_224:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i436
                                        #   in Loop: Header=BB6_199 Depth=1
	add.d	$a0, $s4, $s2
	addi.d	$a0, $a0, 4
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	st.d	$s4, $a3, 0
	st.d	$a0, $a3, 8
	alsl.d	$a1, $s6, $s4, 2
	st.d	$a1, $a3, 16
	ori	$a1, $zero, 2
	b	.LBB6_198
.LBB6_225:
	ld.d	$a1, $a3, 16
	beq	$a0, $a1, .LBB6_449
# %bb.226:
	st.w	$zero, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a3, 8
	ori	$s0, $zero, 1
	move	$s6, $s4
	bnez	$s3, .LBB6_196
.LBB6_227:
	move	$s4, $s6
.LBB6_228:                              # %._crit_edge988
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a0, $a2, 8
	ld.d	$a1, $a2, 16
	ld.d	$a4, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 152                   # 8-byte Folded Reload
	sub.d	$s0, $a4, $a5
	beq	$a0, $a1, .LBB6_230
# %bb.229:
	st.w	$s0, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a2, 8
	ld.d	$s6, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 168                   # 8-byte Folded Reload
	b	.LBB6_237
.LBB6_230:
	ld.d	$s1, $a2, 0
	sub.d	$s4, $a0, $s1
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	ld.d	$s3, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 168                   # 8-byte Folded Reload
	beq	$s4, $a0, .LBB6_520
# %bb.231:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i405
	srai.d	$a0, $s4, 2
	ori	$a1, $zero, 1
	sltu	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a0, $a2
	or	$a1, $a2, $a1
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
	or	$fp, $a1, $a0
	slli.d	$a0, $fp, 2
.Ltmp127:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp128:                               # EH_LABEL
# %bb.232:                              # %.noexc411
	move	$s2, $a0
	stx.w	$s0, $a0, $s4
	ld.d	$s6, $sp, 112                   # 8-byte Folded Reload
	blez	$s4, .LBB6_234
# %bb.233:
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_234:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i407
	add.d	$s0, $s2, $s4
	beqz	$s1, .LBB6_236
# %bb.235:
	move	$a0, $s1
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_236:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i409
	addi.d	$a0, $s0, 4
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	st.d	$s2, $a1, 0
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s4, $a3, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $fp, $s2, 2
	st.d	$a0, $a1, 16
	ld.d	$a4, $sp, 64                    # 8-byte Folded Reload
.LBB6_237:                              # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit412
	ld.d	$a1, $a3, 8
	ld.d	$a0, $a4, 8
	ld.d	$a2, $a4, 16
	srli.d	$a3, $s7, 2
	sub.d	$a1, $a1, $s4
	srli.d	$a1, $a1, 2
	sub.d	$s0, $a1, $a3
	beq	$a0, $a2, .LBB6_239
# %bb.238:
	st.w	$s0, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a4, 8
	b	.LBB6_246
.LBB6_239:
	ld.d	$s1, $a4, 0
	sub.d	$s4, $a0, $s1
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s4, $a0, .LBB6_522
# %bb.240:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i441
	srai.d	$a0, $s4, 2
	ori	$a1, $zero, 1
	sltu	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a0, $a2
	or	$a1, $a2, $a1
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
	or	$s2, $a1, $a0
	slli.d	$a0, $s2, 2
.Ltmp129:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp130:                               # EH_LABEL
# %bb.241:                              # %.noexc447
	move	$fp, $a0
	stx.w	$s0, $a0, $s4
	blez	$s4, .LBB6_243
# %bb.242:
	move	$a0, $fp
	move	$a1, $s1
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_243:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i443
	add.d	$s0, $fp, $s4
	beqz	$s1, .LBB6_245
# %bb.244:
	move	$a0, $s1
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_245:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i445
	addi.d	$a0, $s0, 4
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	st.d	$fp, $a1, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $s2, $fp, 2
	st.d	$a0, $a1, 16
.LBB6_246:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit448
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
.LBB6_247:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit448
	ld.w	$a0, $s5, 64
	beqz	$a0, .LBB6_301
# %bb.248:
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$a1, $a0, %got_pc_lo12(_ZN8Parallel4mypeE)
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $a3, 8
	ld.d	$s4, $a3, 0
	ld.w	$a1, $a1, 0
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	sub.d	$s1, $a0, $s4
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	st.d	$s1, $sp, 168                   # 8-byte Folded Spill
	beqz	$a1, .LBB6_283
# %bb.249:                              # %.lr.ph992.preheader
	ld.w	$a1, $s5, 68
	beqz	$a1, .LBB6_280
# %bb.250:
	move	$s6, $s4
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	beqz	$a1, .LBB6_282
.LBB6_251:                              # %.lr.ph992.peel.next.preheader
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	bstrpick.d	$s0, $a1, 31, 0
	ori	$s7, $zero, 4
	addi.w	$a1, $zero, -4
	lu52i.d	$s8, $a1, 2047
	addi.w	$a1, $zero, -1
	lu52i.d	$fp, $a1, 511
	ori	$s5, $zero, 1
	b	.LBB6_254
	.p2align	4, , 16
.LBB6_252:                              #   in Loop: Header=BB6_254 Depth=1
	st.w	$s6, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a3, 8
	move	$s4, $s1
.LBB6_253:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit466
                                        #   in Loop: Header=BB6_254 Depth=1
	addi.d	$s5, $s5, 1
	addi.d	$s7, $s7, 4
	move	$s6, $s4
	beq	$s0, $s5, .LBB6_283
.LBB6_254:                              # %.lr.ph992.peel.next
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	ldx.w	$s3, $a1, $s7
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	ld.wu	$a2, $a1, 76
	ld.d	$a1, $a3, 16
	bne	$s5, $a2, .LBB6_257
# %bb.255:                              #   in Loop: Header=BB6_254 Depth=1
	beq	$a0, $a1, .LBB6_259
# %bb.256:                              #   in Loop: Header=BB6_254 Depth=1
	st.w	$s3, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a3, 8
	move	$s4, $s6
	b	.LBB6_253
	.p2align	4, , 16
.LBB6_257:                              #   in Loop: Header=BB6_254 Depth=1
	beq	$a0, $a1, .LBB6_266
# %bb.258:                              #   in Loop: Header=BB6_254 Depth=1
	st.w	$s3, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a3, 8
	move	$s1, $s6
	addi.d	$s6, $s3, 1
	bne	$a0, $a1, .LBB6_252
	b	.LBB6_273
.LBB6_259:                              #   in Loop: Header=BB6_254 Depth=1
	sub.d	$s1, $a0, $s6
	beq	$s1, $s8, .LBB6_498
# %bb.260:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i459
                                        #   in Loop: Header=BB6_254 Depth=1
	srai.d	$a0, $s1, 2
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	sltu	$a2, $a0, $fp
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $fp, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $fp, $a1
	or	$s2, $a1, $a0
	slli.d	$a0, $s2, 2
.Ltmp152:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp153:                               # EH_LABEL
# %bb.261:                              # %.noexc465
                                        #   in Loop: Header=BB6_254 Depth=1
	move	$s4, $a0
	stx.w	$s3, $a0, $s1
	blez	$s1, .LBB6_263
# %bb.262:                              #   in Loop: Header=BB6_254 Depth=1
	move	$a0, $s4
	move	$a1, $s6
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_263:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i461
                                        #   in Loop: Header=BB6_254 Depth=1
	beqz	$s6, .LBB6_265
# %bb.264:                              #   in Loop: Header=BB6_254 Depth=1
	move	$a0, $s6
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_265:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i463
                                        #   in Loop: Header=BB6_254 Depth=1
	add.d	$a0, $s4, $s1
	addi.d	$a0, $a0, 4
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	st.d	$s4, $a3, 0
	st.d	$a0, $a3, 8
	alsl.d	$a1, $s2, $s4, 2
	st.d	$a1, $a3, 16
	b	.LBB6_253
.LBB6_266:                              #   in Loop: Header=BB6_254 Depth=1
	sub.d	$s2, $a0, $s6
	beq	$s2, $s8, .LBB6_506
# %bb.267:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i468
                                        #   in Loop: Header=BB6_254 Depth=1
	srai.d	$a0, $s2, 2
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	sltu	$a2, $a0, $fp
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $fp, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $fp, $a1
	or	$s4, $a1, $a0
	slli.d	$a0, $s4, 2
.Ltmp140:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp141:                               # EH_LABEL
# %bb.268:                              # %.noexc474
                                        #   in Loop: Header=BB6_254 Depth=1
	move	$s1, $a0
	stx.w	$s3, $a0, $s2
	blez	$s2, .LBB6_270
# %bb.269:                              #   in Loop: Header=BB6_254 Depth=1
	move	$a0, $s1
	move	$a1, $s6
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_270:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i470
                                        #   in Loop: Header=BB6_254 Depth=1
	beqz	$s6, .LBB6_272
# %bb.271:                              #   in Loop: Header=BB6_254 Depth=1
	move	$a0, $s6
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_272:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i472
                                        #   in Loop: Header=BB6_254 Depth=1
	add.d	$a0, $s1, $s2
	addi.d	$a0, $a0, 4
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	st.d	$s1, $a3, 0
	st.d	$a0, $a3, 8
	alsl.d	$a1, $s4, $s1, 2
	st.d	$a1, $a3, 16
	addi.d	$s6, $s3, 1
	bne	$a0, $a1, .LBB6_252
.LBB6_273:                              #   in Loop: Header=BB6_254 Depth=1
	sub.d	$s2, $a1, $s1
	beq	$s2, $s8, .LBB6_504
# %bb.274:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i477
                                        #   in Loop: Header=BB6_254 Depth=1
	srai.d	$a0, $s2, 2
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	sltu	$a2, $a0, $fp
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $fp, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $fp, $a1
	or	$s3, $a1, $a0
	slli.d	$a0, $s3, 2
.Ltmp143:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp144:                               # EH_LABEL
# %bb.275:                              # %.noexc483
                                        #   in Loop: Header=BB6_254 Depth=1
	move	$s4, $a0
	stx.w	$s6, $a0, $s2
	blez	$s2, .LBB6_277
# %bb.276:                              #   in Loop: Header=BB6_254 Depth=1
	move	$a0, $s4
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_277:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i479
                                        #   in Loop: Header=BB6_254 Depth=1
	beqz	$s1, .LBB6_279
# %bb.278:                              #   in Loop: Header=BB6_254 Depth=1
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_279:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i481
                                        #   in Loop: Header=BB6_254 Depth=1
	add.d	$a0, $s4, $s2
	addi.d	$a0, $a0, 4
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	st.d	$s4, $a3, 0
	st.d	$a0, $a3, 8
	alsl.d	$a1, $s3, $s4, 2
	st.d	$a1, $a3, 16
	b	.LBB6_253
.LBB6_280:
	ld.d	$a1, $a3, 16
	ld.w	$fp, $s6, 0
	beq	$a0, $a1, .LBB6_456
# %bb.281:
	st.w	$fp, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a3, 8
	move	$s6, $s4
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	bnez	$a1, .LBB6_251
.LBB6_282:
	move	$s4, $s6
.LBB6_283:                              # %._crit_edge993
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a0, $a2, 8
	ld.d	$a1, $a2, 16
	ld.d	$a4, $sp, 160                   # 8-byte Folded Reload
	addi.d	$s0, $a4, -1
	beq	$a0, $a1, .LBB6_285
# %bb.284:
	st.w	$s0, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a2, 8
	ld.d	$s6, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 168                   # 8-byte Folded Reload
	b	.LBB6_292
.LBB6_285:
	ld.d	$s1, $a2, 0
	sub.d	$s4, $a0, $s1
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	ld.d	$s6, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 168                   # 8-byte Folded Reload
	beq	$s4, $a0, .LBB6_524
# %bb.286:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i450
	srai.d	$a0, $s4, 2
	ori	$a1, $zero, 1
	sltu	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a0, $a2
	or	$a1, $a2, $a1
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
	or	$fp, $a1, $a0
	slli.d	$a0, $fp, 2
.Ltmp158:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp159:                               # EH_LABEL
# %bb.287:                              # %.noexc456
	move	$s2, $a0
	stx.w	$s0, $a0, $s4
	ld.d	$s3, $sp, 120                   # 8-byte Folded Reload
	blez	$s4, .LBB6_289
# %bb.288:
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_289:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i452
	add.d	$s0, $s2, $s4
	beqz	$s1, .LBB6_291
# %bb.290:
	move	$a0, $s1
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_291:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i454
	addi.d	$a0, $s0, 4
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	st.d	$s2, $a1, 0
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s4, $a3, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $fp, $s2, 2
	st.d	$a0, $a1, 16
	ld.d	$a4, $sp, 64                    # 8-byte Folded Reload
.LBB6_292:                              # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit457
	ld.d	$a1, $a3, 8
	ld.d	$a0, $a4, 8
	ld.d	$a2, $a4, 16
	srli.d	$a3, $s7, 2
	sub.d	$a1, $a1, $s4
	srli.d	$a1, $a1, 2
	sub.d	$s0, $a1, $a3
	beq	$a0, $a2, .LBB6_294
# %bb.293:
	st.w	$s0, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a4, 8
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	b	.LBB6_301
.LBB6_294:
	ld.d	$s1, $a4, 0
	sub.d	$s2, $a0, $s1
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s2, $a0, .LBB6_526
# %bb.295:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i486
	move	$s4, $s3
	srai.d	$a0, $s2, 2
	ori	$a1, $zero, 1
	sltu	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a0, $a2
	or	$a1, $a2, $a1
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
	or	$s3, $a1, $a0
	slli.d	$a0, $s3, 2
.Ltmp160:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp161:                               # EH_LABEL
# %bb.296:                              # %.noexc492
	move	$fp, $a0
	stx.w	$s0, $a0, $s2
	blez	$s2, .LBB6_298
# %bb.297:
	move	$a0, $fp
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_298:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i488
	add.d	$s0, $fp, $s2
	beqz	$s1, .LBB6_300
# %bb.299:
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_300:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i490
	addi.d	$a0, $s0, 4
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	st.d	$fp, $a1, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $s3, $fp, 2
	st.d	$a0, $a1, 16
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	move	$s3, $s4
.LBB6_301:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit493
	ld.w	$a0, $s5, 56
	ld.w	$a1, $s5, 64
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 8                     # 8-byte Folded Reload
	sub.d	$a2, $a4, $a2
	addi.w	$a0, $a0, -1
	srli.d	$a2, $a2, 4
	st.d	$a2, $sp, 152                   # 8-byte Folded Spill
	beq	$a1, $a0, .LBB6_349
# %bb.302:
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$a1, $a0, %got_pc_lo12(_ZN8Parallel4mypeE)
	ld.d	$a0, $a3, 8
	ld.d	$s2, $a3, 0
	ld.w	$a2, $a1, 0
	sub.d	$s4, $a0, $s2
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	st.d	$s4, $sp, 144                   # 8-byte Folded Spill
	st.d	$a2, $sp, 136                   # 8-byte Folded Spill
	beqz	$a1, .LBB6_338
# %bb.303:                              # %.lr.ph998.preheader
	ld.w	$a1, $s5, 68
	beqz	$a1, .LBB6_334
# %bb.304:
	move	$s3, $s2
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	beqz	$a1, .LBB6_337
.LBB6_305:                              # %.lr.ph998.peel.next
	bstrpick.d	$s0, $s1, 31, 0
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	addi.d	$a1, $a1, -1
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	ori	$s7, $zero, 8
	addi.w	$a1, $zero, -4
	lu52i.d	$a1, $a1, 2047
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	addi.w	$a1, $zero, -1
	lu52i.d	$fp, $a1, 511
	ori	$s1, $zero, 1
	b	.LBB6_308
	.p2align	4, , 16
.LBB6_306:                              #   in Loop: Header=BB6_308 Depth=1
	st.w	$s6, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a3, 8
	move	$s2, $s4
.LBB6_307:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit511
                                        #   in Loop: Header=BB6_308 Depth=1
	addi.d	$s1, $s1, 1
	addi.d	$s7, $s7, 4
	move	$s3, $s2
	beq	$s0, $s1, .LBB6_338
.LBB6_308:                              # =>This Inner Loop Header: Depth=1
	ld.wu	$a1, $s5, 76
	bne	$s1, $a1, .LBB6_311
# %bb.309:                              # %.thread
                                        #   in Loop: Header=BB6_308 Depth=1
	ld.d	$a1, $a3, 16
	beq	$a0, $a1, .LBB6_313
# %bb.310:                              #   in Loop: Header=BB6_308 Depth=1
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	st.w	$a1, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a3, 8
	move	$s2, $s3
	b	.LBB6_307
	.p2align	4, , 16
.LBB6_311:                              #   in Loop: Header=BB6_308 Depth=1
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	ldx.w	$s6, $a1, $s7
	ld.d	$a1, $a3, 16
	addi.d	$s8, $s6, -2
	beq	$a0, $a1, .LBB6_320
# %bb.312:                              #   in Loop: Header=BB6_308 Depth=1
	st.w	$s8, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a3, 8
	move	$s4, $s3
	addi.d	$s6, $s6, -1
	bne	$a0, $a1, .LBB6_306
	b	.LBB6_327
.LBB6_313:                              #   in Loop: Header=BB6_308 Depth=1
	sub.d	$s4, $a0, $s3
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	beq	$s4, $a0, .LBB6_508
# %bb.314:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i504
                                        #   in Loop: Header=BB6_308 Depth=1
	srai.d	$a0, $s4, 2
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	sltu	$a2, $a0, $fp
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $fp, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $fp, $a1
	or	$s6, $a1, $a0
	slli.d	$a0, $s6, 2
.Ltmp183:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp184:                               # EH_LABEL
# %bb.315:                              # %.noexc510
                                        #   in Loop: Header=BB6_308 Depth=1
	move	$s2, $a0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	stx.w	$a0, $s2, $s4
	blez	$s4, .LBB6_317
# %bb.316:                              #   in Loop: Header=BB6_308 Depth=1
	move	$a0, $s2
	move	$a1, $s3
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_317:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i506
                                        #   in Loop: Header=BB6_308 Depth=1
	beqz	$s3, .LBB6_319
# %bb.318:                              #   in Loop: Header=BB6_308 Depth=1
	move	$a0, $s3
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_319:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i508
                                        #   in Loop: Header=BB6_308 Depth=1
	add.d	$a0, $s2, $s4
	addi.d	$a0, $a0, 4
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	st.d	$s2, $a3, 0
	st.d	$a0, $a3, 8
	alsl.d	$a1, $s6, $s2, 2
	st.d	$a1, $a3, 16
	b	.LBB6_307
.LBB6_320:                              #   in Loop: Header=BB6_308 Depth=1
	sub.d	$s2, $a0, $s3
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	beq	$s2, $a0, .LBB6_514
# %bb.321:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i513
                                        #   in Loop: Header=BB6_308 Depth=1
	srai.d	$a0, $s2, 2
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	sltu	$a2, $a0, $fp
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $fp, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $fp, $a1
	or	$s5, $a1, $a0
	slli.d	$a0, $s5, 2
.Ltmp171:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp172:                               # EH_LABEL
# %bb.322:                              # %.noexc519
                                        #   in Loop: Header=BB6_308 Depth=1
	move	$s4, $a0
	stx.w	$s8, $a0, $s2
	blez	$s2, .LBB6_324
# %bb.323:                              #   in Loop: Header=BB6_308 Depth=1
	move	$a0, $s4
	move	$a1, $s3
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_324:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i515
                                        #   in Loop: Header=BB6_308 Depth=1
	beqz	$s3, .LBB6_326
# %bb.325:                              #   in Loop: Header=BB6_308 Depth=1
	move	$a0, $s3
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_326:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i517
                                        #   in Loop: Header=BB6_308 Depth=1
	add.d	$a0, $s4, $s2
	addi.d	$a0, $a0, 4
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	st.d	$s4, $a3, 0
	st.d	$a0, $a3, 8
	alsl.d	$a1, $s5, $s4, 2
	st.d	$a1, $a3, 16
	ld.d	$s5, $sp, 176                   # 8-byte Folded Reload
	addi.d	$s6, $s6, -1
	bne	$a0, $a1, .LBB6_306
.LBB6_327:                              #   in Loop: Header=BB6_308 Depth=1
	sub.d	$s3, $a1, $s4
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	beq	$s3, $a0, .LBB6_512
# %bb.328:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i522
                                        #   in Loop: Header=BB6_308 Depth=1
	srai.d	$a0, $s3, 2
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	sltu	$a2, $a0, $fp
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $fp, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $fp, $a1
	or	$s5, $a1, $a0
	slli.d	$a0, $s5, 2
.Ltmp174:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp175:                               # EH_LABEL
# %bb.329:                              # %.noexc528
                                        #   in Loop: Header=BB6_308 Depth=1
	move	$s2, $a0
	stx.w	$s6, $a0, $s3
	blez	$s3, .LBB6_331
# %bb.330:                              #   in Loop: Header=BB6_308 Depth=1
	move	$a0, $s2
	move	$a1, $s4
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_331:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i524
                                        #   in Loop: Header=BB6_308 Depth=1
	beqz	$s4, .LBB6_333
# %bb.332:                              #   in Loop: Header=BB6_308 Depth=1
	move	$a0, $s4
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_333:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i526
                                        #   in Loop: Header=BB6_308 Depth=1
	add.d	$a0, $s2, $s3
	addi.d	$a0, $a0, 4
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	st.d	$s2, $a3, 0
	st.d	$a0, $a3, 8
	alsl.d	$a1, $s5, $s2, 2
	st.d	$a1, $a3, 16
	ld.d	$s5, $sp, 176                   # 8-byte Folded Reload
	b	.LBB6_307
.LBB6_334:
	ld.w	$a1, $s5, 76
	beqz	$a1, .LBB6_463
# %bb.335:
	ld.w	$a1, $s6, 4
	ld.d	$a2, $a3, 16
	addi.d	$fp, $a1, -1
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	beq	$a0, $a2, .LBB6_464
.LBB6_336:
	st.w	$fp, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a3, 8
	move	$s3, $s2
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	bnez	$a1, .LBB6_305
.LBB6_337:
	move	$s2, $s3
.LBB6_338:                              # %._crit_edge999
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $a2, 8
	ld.d	$a1, $a2, 16
	ld.d	$a4, $sp, 136                   # 8-byte Folded Reload
	addi.d	$s0, $a4, 1
	beq	$a0, $a1, .LBB6_340
# %bb.339:
	st.w	$s0, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a2, 8
	ld.d	$s6, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 144                   # 8-byte Folded Reload
	b	.LBB6_347
.LBB6_340:
	ld.d	$s2, $a2, 0
	sub.d	$s3, $a0, $s2
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	ld.d	$s7, $sp, 144                   # 8-byte Folded Reload
	beq	$s3, $a0, .LBB6_536
# %bb.341:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i495
	srai.d	$a0, $s3, 2
	ori	$a1, $zero, 1
	sltu	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a0, $a2
	or	$a1, $a2, $a1
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
	or	$fp, $a1, $a0
	slli.d	$a0, $fp, 2
.Ltmp189:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp190:                               # EH_LABEL
# %bb.342:                              # %.noexc501
	move	$s4, $a0
	stx.w	$s0, $a0, $s3
	ld.d	$s6, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 120                   # 8-byte Folded Reload
	blez	$s3, .LBB6_344
# %bb.343:
	move	$a0, $s4
	move	$a1, $s2
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_344:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i497
	add.d	$s0, $s4, $s3
	beqz	$s2, .LBB6_346
# %bb.345:
	move	$a0, $s2
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_346:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i499
	addi.d	$a0, $s0, 4
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	st.d	$s4, $a1, 0
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $a3, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $fp, $s4, 2
	st.d	$a0, $a1, 16
	move	$s3, $s1
.LBB6_347:                              # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit502
	ld.d	$a1, $a3, 8
	ld.d	$a4, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $a4, 8
	ld.d	$a2, $a4, 16
	srli.d	$a3, $s7, 2
	sub.d	$a1, $a1, $s2
	srli.d	$a1, $a1, 2
	sub.d	$s0, $a1, $a3
	beq	$a0, $a2, .LBB6_382
# %bb.348:
	st.w	$s0, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a4, 8
.LBB6_349:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit538
	ld.w	$a0, $s5, 60
	ld.w	$a1, $s5, 68
	addi.w	$a0, $a0, -1
	beq	$a1, $a0, .LBB6_389
.LBB6_350:
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZN8Parallel4mypeE)
	ld.w	$a0, $a0, 0
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $a3, 8
	ld.d	$s2, $a3, 0
	ld.w	$a1, $s5, 56
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	sub.d	$s7, $a0, $s2
	st.d	$s7, $sp, 168                   # 8-byte Folded Spill
	bltz	$s3, .LBB6_393
# %bb.351:                              # %.lr.ph1004.preheader
	ld.w	$a1, $s5, 76
	slli.d	$a1, $a1, 2
	ld.w	$a2, $s5, 64
	ldx.w	$fp, $s6, $a1
	beqz	$a2, .LBB6_390
# %bb.352:
	move	$s1, $s3
	move	$s3, $s2
	beqz	$s1, .LBB6_392
.LBB6_353:                              # %.lr.ph1004.peel.next
	move	$s6, $zero
	addi.d	$s7, $fp, 1
	addi.w	$a1, $zero, -4
	lu52i.d	$s8, $a1, 2047
	ori	$s5, $zero, 1
	addi.w	$a1, $zero, -1
	lu52i.d	$fp, $a1, 511
	b	.LBB6_356
	.p2align	4, , 16
.LBB6_354:                              #   in Loop: Header=BB6_356 Depth=1
	st.w	$s1, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a3, 8
	ori	$a1, $zero, 2
	move	$s2, $s4
.LBB6_355:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit556
                                        #   in Loop: Header=BB6_356 Depth=1
	add.d	$s7, $s7, $a1
	move	$s3, $s2
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	beq	$a1, $s6, .LBB6_393
.LBB6_356:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	ld.w	$a2, $a1, 72
	ld.d	$a1, $a3, 16
	addi.w	$s6, $s6, 1
	bne	$s6, $a2, .LBB6_359
# %bb.357:                              #   in Loop: Header=BB6_356 Depth=1
	beq	$a0, $a1, .LBB6_361
# %bb.358:                              #   in Loop: Header=BB6_356 Depth=1
	st.w	$s7, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a3, 8
	ori	$a1, $zero, 1
	move	$s2, $s3
	b	.LBB6_355
	.p2align	4, , 16
.LBB6_359:                              #   in Loop: Header=BB6_356 Depth=1
	beq	$a0, $a1, .LBB6_368
# %bb.360:                              #   in Loop: Header=BB6_356 Depth=1
	st.w	$s7, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a3, 8
	move	$s4, $s3
	addi.d	$s1, $s7, 1
	bne	$a0, $a1, .LBB6_354
	b	.LBB6_375
.LBB6_361:                              #   in Loop: Header=BB6_356 Depth=1
	sub.d	$s4, $a0, $s3
	beq	$s4, $s8, .LBB6_510
# %bb.362:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i549
                                        #   in Loop: Header=BB6_356 Depth=1
	srai.d	$a0, $s4, 2
	sltu	$a1, $s5, $a0
	masknez	$a2, $s5, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	sltu	$a2, $a0, $fp
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $fp, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $fp, $a1
	or	$s0, $a1, $a0
	slli.d	$a0, $s0, 2
.Ltmp214:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp215:                               # EH_LABEL
# %bb.363:                              # %.noexc555
                                        #   in Loop: Header=BB6_356 Depth=1
	move	$s2, $a0
	stx.w	$s7, $a0, $s4
	blez	$s4, .LBB6_365
# %bb.364:                              #   in Loop: Header=BB6_356 Depth=1
	move	$a0, $s2
	move	$a1, $s3
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_365:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i551
                                        #   in Loop: Header=BB6_356 Depth=1
	beqz	$s3, .LBB6_367
# %bb.366:                              #   in Loop: Header=BB6_356 Depth=1
	move	$a0, $s3
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_367:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i553
                                        #   in Loop: Header=BB6_356 Depth=1
	add.d	$a0, $s2, $s4
	addi.d	$a0, $a0, 4
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	st.d	$s2, $a3, 0
	st.d	$a0, $a3, 8
	alsl.d	$a1, $s0, $s2, 2
	st.d	$a1, $a3, 16
	ori	$a1, $zero, 1
	b	.LBB6_355
.LBB6_368:                              #   in Loop: Header=BB6_356 Depth=1
	sub.d	$s2, $a0, $s3
	beq	$s2, $s8, .LBB6_518
# %bb.369:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i558
                                        #   in Loop: Header=BB6_356 Depth=1
	srai.d	$a0, $s2, 2
	sltu	$a1, $s5, $a0
	masknez	$a2, $s5, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	sltu	$a2, $a0, $fp
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $fp, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $fp, $a1
	or	$s0, $a1, $a0
	slli.d	$a0, $s0, 2
.Ltmp202:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp203:                               # EH_LABEL
# %bb.370:                              # %.noexc564
                                        #   in Loop: Header=BB6_356 Depth=1
	move	$s4, $a0
	stx.w	$s7, $a0, $s2
	blez	$s2, .LBB6_372
# %bb.371:                              #   in Loop: Header=BB6_356 Depth=1
	move	$a0, $s4
	move	$a1, $s3
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_372:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i560
                                        #   in Loop: Header=BB6_356 Depth=1
	beqz	$s3, .LBB6_374
# %bb.373:                              #   in Loop: Header=BB6_356 Depth=1
	move	$a0, $s3
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_374:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i562
                                        #   in Loop: Header=BB6_356 Depth=1
	add.d	$a0, $s4, $s2
	addi.d	$a0, $a0, 4
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	st.d	$s4, $a3, 0
	st.d	$a0, $a3, 8
	alsl.d	$a1, $s0, $s4, 2
	st.d	$a1, $a3, 16
	addi.d	$s1, $s7, 1
	bne	$a0, $a1, .LBB6_354
.LBB6_375:                              #   in Loop: Header=BB6_356 Depth=1
	sub.d	$s3, $a1, $s4
	beq	$s3, $s8, .LBB6_516
# %bb.376:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i567
                                        #   in Loop: Header=BB6_356 Depth=1
	srai.d	$a0, $s3, 2
	sltu	$a1, $s5, $a0
	masknez	$a2, $s5, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	sltu	$a2, $a0, $fp
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $fp, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $fp, $a1
	or	$s0, $a1, $a0
	slli.d	$a0, $s0, 2
.Ltmp205:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp206:                               # EH_LABEL
# %bb.377:                              # %.noexc573
                                        #   in Loop: Header=BB6_356 Depth=1
	move	$s2, $a0
	stx.w	$s1, $a0, $s3
	blez	$s3, .LBB6_379
# %bb.378:                              #   in Loop: Header=BB6_356 Depth=1
	move	$a0, $s2
	move	$a1, $s4
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_379:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i569
                                        #   in Loop: Header=BB6_356 Depth=1
	beqz	$s4, .LBB6_381
# %bb.380:                              #   in Loop: Header=BB6_356 Depth=1
	move	$a0, $s4
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_381:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i571
                                        #   in Loop: Header=BB6_356 Depth=1
	add.d	$a0, $s2, $s3
	addi.d	$a0, $a0, 4
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	st.d	$s2, $a3, 0
	st.d	$a0, $a3, 8
	alsl.d	$a1, $s0, $s2, 2
	st.d	$a1, $a3, 16
	ori	$a1, $zero, 2
	b	.LBB6_355
.LBB6_382:
	ld.d	$s1, $a4, 0
	sub.d	$s2, $a0, $s1
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s2, $a0, .LBB6_538
# %bb.383:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i531
	move	$s4, $s3
	srai.d	$a0, $s2, 2
	ori	$a1, $zero, 1
	sltu	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a0, $a2
	or	$a1, $a2, $a1
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
	or	$s3, $a1, $a0
	slli.d	$a0, $s3, 2
.Ltmp191:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp192:                               # EH_LABEL
# %bb.384:                              # %.noexc537
	move	$fp, $a0
	stx.w	$s0, $a0, $s2
	blez	$s2, .LBB6_386
# %bb.385:
	move	$a0, $fp
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_386:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i533
	add.d	$s0, $fp, $s2
	beqz	$s1, .LBB6_388
# %bb.387:
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_388:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i535
	addi.d	$a0, $s0, 4
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	st.d	$fp, $a1, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $s3, $fp, 2
	st.d	$a0, $a1, 16
	move	$s3, $s4
	ld.w	$a0, $s5, 60
	ld.w	$a1, $s5, 68
	addi.w	$a0, $a0, -1
	bne	$a1, $a0, .LBB6_350
.LBB6_389:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit583
	ld.w	$s2, $s5, 56
	ld.w	$a0, $s5, 64
	addi.w	$a1, $s2, -1
	beq	$a0, $a1, .LBB6_432
	b	.LBB6_411
.LBB6_390:
	ld.d	$a1, $a3, 16
	beq	$a0, $a1, .LBB6_471
# %bb.391:
	move	$s1, $s3
	st.w	$fp, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a3, 8
	move	$s3, $s2
	bnez	$s1, .LBB6_353
.LBB6_392:
	move	$s2, $s3
.LBB6_393:                              # %._crit_edge1005
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $a2, 8
	ld.d	$a1, $a2, 16
	ld.d	$a4, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 144                   # 8-byte Folded Reload
	add.d	$s0, $a5, $a4
	beq	$a0, $a1, .LBB6_395
# %bb.394:
	st.w	$s0, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a2, 8
	ld.d	$s6, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 168                   # 8-byte Folded Reload
	b	.LBB6_402
.LBB6_395:
	ld.d	$s2, $a2, 0
	sub.d	$s3, $a0, $s2
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	ld.d	$s5, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 168                   # 8-byte Folded Reload
	beq	$s3, $a0, .LBB6_540
# %bb.396:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i540
	srai.d	$a0, $s3, 2
	ori	$a1, $zero, 1
	sltu	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a0, $a2
	or	$a1, $a2, $a1
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
	or	$fp, $a1, $a0
	slli.d	$a0, $fp, 2
.Ltmp220:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp221:                               # EH_LABEL
# %bb.397:                              # %.noexc546
	move	$s4, $a0
	stx.w	$s0, $a0, $s3
	ld.d	$s6, $sp, 112                   # 8-byte Folded Reload
	blez	$s3, .LBB6_399
# %bb.398:
	move	$a0, $s4
	move	$a1, $s2
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_399:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i542
	add.d	$s0, $s4, $s3
	beqz	$s2, .LBB6_401
# %bb.400:
	move	$a0, $s2
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_401:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i544
	addi.d	$a0, $s0, 4
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	st.d	$s4, $a1, 0
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $a3, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $fp, $s4, 2
	st.d	$a0, $a1, 16
.LBB6_402:                              # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit547
	ld.d	$a1, $a3, 8
	ld.d	$a4, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $a4, 8
	ld.d	$a2, $a4, 16
	srli.d	$a3, $s1, 2
	sub.d	$a1, $a1, $s2
	srli.d	$a1, $a1, 2
	sub.d	$s0, $a1, $a3
	beq	$a0, $a2, .LBB6_404
# %bb.403:
	st.w	$s0, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a4, 8
	ld.w	$s2, $s5, 56
	ld.w	$a0, $s5, 64
	addi.w	$a1, $s2, -1
	beq	$a0, $a1, .LBB6_432
	b	.LBB6_411
.LBB6_404:
	ld.d	$s1, $a4, 0
	sub.d	$s2, $a0, $s1
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s2, $a0, .LBB6_542
# %bb.405:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i576
	srai.d	$a0, $s2, 2
	ori	$a1, $zero, 1
	sltu	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a0, $a2
	or	$a1, $a2, $a1
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
	or	$s3, $a1, $a0
	slli.d	$a0, $s3, 2
.Ltmp222:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp223:                               # EH_LABEL
# %bb.406:                              # %.noexc582
	move	$fp, $a0
	stx.w	$s0, $a0, $s2
	blez	$s2, .LBB6_408
# %bb.407:
	move	$a0, $fp
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_408:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i578
	add.d	$s0, $fp, $s2
	beqz	$s1, .LBB6_410
# %bb.409:
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_410:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i580
	addi.d	$a0, $s0, 4
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	st.d	$fp, $a1, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $s3, $fp, 2
	st.d	$a0, $a1, 16
	ld.w	$s2, $s5, 56
	ld.w	$a0, $s5, 64
	addi.w	$a1, $s2, -1
	beq	$a0, $a1, .LBB6_432
.LBB6_411:
	ld.w	$a0, $s5, 60
	ld.w	$a1, $s5, 68
	addi.w	$a0, $a0, -1
	beq	$a1, $a0, .LBB6_432
# %bb.412:
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$a2, $a0, %got_pc_lo12(_ZN8Parallel4mypeE)
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a1, $a3, 8
	ld.d	$a0, $a3, 16
	ld.w	$s3, $a2, 0
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	addi.d	$s4, $a2, -2
	beq	$a1, $a0, .LBB6_415
# %bb.413:
	st.w	$s4, $a1, 0
	addi.d	$a1, $a1, 4
	st.d	$a1, $a3, 8
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	addi.d	$s4, $a2, -1
	beq	$a1, $a0, .LBB6_422
.LBB6_414:
	st.w	$s4, $a1, 0
	addi.d	$a0, $a1, 4
	st.d	$a0, $a3, 8
	b	.LBB6_429
.LBB6_415:
	ld.d	$s0, $a3, 0
	sub.d	$s1, $a1, $s0
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s1, $a0, .LBB6_544
# %bb.416:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i585
	srai.d	$a0, $s1, 2
	ori	$a1, $zero, 1
	sltu	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a0, $a2
	or	$a1, $a2, $a1
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
	or	$s5, $a1, $a0
	slli.d	$a0, $s5, 2
.Ltmp230:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp231:                               # EH_LABEL
# %bb.417:                              # %.noexc591
	move	$fp, $a0
	stx.w	$s4, $a0, $s1
	blez	$s1, .LBB6_419
# %bb.418:
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_419:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i587
	add.d	$s4, $fp, $s1
	beqz	$s0, .LBB6_421
# %bb.420:
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_421:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i589
	addi.d	$a1, $s4, 4
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	st.d	$fp, $a3, 0
	st.d	$a1, $a3, 8
	alsl.d	$a0, $s5, $fp, 2
	st.d	$a0, $a3, 16
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	addi.d	$s4, $a2, -1
	bne	$a1, $a0, .LBB6_414
.LBB6_422:
	ld.d	$s0, $a3, 0
	sub.d	$s1, $a0, $s0
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s1, $a0, .LBB6_546
# %bb.423:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i594
	srai.d	$a0, $s1, 2
	ori	$a1, $zero, 1
	sltu	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a0, $a2
	or	$a1, $a2, $a1
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
	or	$s5, $a1, $a0
	slli.d	$a0, $s5, 2
.Ltmp232:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp233:                               # EH_LABEL
# %bb.424:                              # %.noexc600
	move	$fp, $a0
	stx.w	$s4, $a0, $s1
	blez	$s1, .LBB6_426
# %bb.425:
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_426:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i596
	add.d	$s4, $fp, $s1
	beqz	$s0, .LBB6_428
# %bb.427:
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_428:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i598
	addi.d	$a0, $s4, 4
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	st.d	$fp, $a1, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $s5, $fp, 2
	st.d	$a0, $a1, 16
.LBB6_429:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit601
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $a3, 8
	ld.d	$a1, $a3, 16
	add.d	$a2, $s2, $s3
	addi.d	$s2, $a2, 1
	beq	$a0, $a1, .LBB6_434
# %bb.430:
	st.w	$s2, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a3, 8
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $a2, 8
	ld.d	$a1, $a2, 16
	beq	$a0, $a1, .LBB6_441
.LBB6_431:
	ori	$a1, $zero, 2
	st.w	$a1, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a2, 8
.LBB6_432:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit619
	beqz	$s6, .LBB6_448
.LBB6_433:
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	sub.d	$a1, $a0, $s6
	move	$a0, $s6
	fld.d	$fs7, $sp, 184                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 192                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 200                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 208                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 216                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 224                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 232                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 240                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 320                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 328                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 336
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB6_434:
	ld.d	$s0, $a3, 0
	sub.d	$s1, $a0, $s0
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s1, $a0, .LBB6_548
# %bb.435:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i603
	srai.d	$a0, $s1, 2
	ori	$a1, $zero, 1
	sltu	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a0, $a2
	or	$a1, $a2, $a1
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
	or	$s3, $a1, $a0
	slli.d	$a0, $s3, 2
.Ltmp234:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp235:                               # EH_LABEL
# %bb.436:                              # %.noexc609
	move	$fp, $a0
	stx.w	$s2, $a0, $s1
	blez	$s1, .LBB6_438
# %bb.437:
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_438:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i605
	add.d	$s2, $fp, $s1
	beqz	$s0, .LBB6_440
# %bb.439:
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_440:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i607
	addi.d	$a0, $s2, 4
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	st.d	$fp, $a1, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $s3, $fp, 2
	st.d	$a0, $a1, 16
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $a2, 8
	ld.d	$a1, $a2, 16
	bne	$a0, $a1, .LBB6_431
.LBB6_441:
	ld.d	$s0, $a2, 0
	sub.d	$s1, $a0, $s0
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s1, $a0, .LBB6_550
# %bb.442:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i612
	srai.d	$a0, $s1, 2
	ori	$a1, $zero, 1
	sltu	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a0, $a2
	or	$a1, $a2, $a1
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
	or	$fp, $a1, $a0
	slli.d	$a0, $fp, 2
.Ltmp236:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp237:                               # EH_LABEL
# %bb.443:                              # %.noexc618
	move	$s2, $a0
	ori	$a0, $zero, 2
	stx.w	$a0, $s2, $s1
	blez	$s1, .LBB6_445
# %bb.444:
	move	$a0, $s2
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_445:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i614
	add.d	$s3, $s2, $s1
	beqz	$s0, .LBB6_447
# %bb.446:
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_447:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i616
	addi.d	$a0, $s3, 4
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	st.d	$s2, $a1, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $fp, $s2, 2
	st.d	$a0, $a1, 16
	bnez	$s6, .LBB6_433
.LBB6_448:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit621
	fld.d	$fs7, $sp, 184                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 192                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 200                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 208                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 216                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 224                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 232                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 240                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
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
.LBB6_449:
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s1, $a0, .LBB6_496
# %bb.450:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i414.peel
	move	$a1, $s1
	srai.d	$a0, $a1, 2
	ori	$a1, $zero, 1
	sltu	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a0, $a2
	or	$a1, $a2, $a1
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
	or	$fp, $a1, $a0
	slli.d	$a0, $fp, 2
.Ltmp106:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp107:                               # EH_LABEL
# %bb.451:                              # %.noexc420.peel
	move	$s6, $a0
	stx.w	$zero, $a0, $s1
	ld.d	$s3, $sp, 120                   # 8-byte Folded Reload
	blez	$s1, .LBB6_453
# %bb.452:
	move	$a0, $s6
	move	$a1, $s4
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_453:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i416.peel
	add.d	$s0, $s6, $s1
	beqz	$s4, .LBB6_455
# %bb.454:
	move	$a0, $s4
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_455:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i418.peel
	addi.d	$a0, $s0, 4
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	st.d	$s6, $a3, 0
	st.d	$a0, $a3, 8
	alsl.d	$a1, $fp, $s6, 2
	st.d	$a1, $a3, 16
	ori	$s0, $zero, 1
	bnez	$s3, .LBB6_196
	b	.LBB6_227
.LBB6_456:
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s1, $a0, .LBB6_498
# %bb.457:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i459.peel
	move	$a1, $s1
	srai.d	$a0, $a1, 2
	ori	$a1, $zero, 1
	sltu	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a0, $a2
	or	$a1, $a2, $a1
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
.Ltmp137:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp138:                               # EH_LABEL
# %bb.458:                              # %.noexc465.peel
	move	$s6, $a0
	stx.w	$fp, $a0, $s1
	blez	$s1, .LBB6_460
# %bb.459:
	move	$a0, $s6
	move	$a1, $s4
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_460:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i461.peel
	add.d	$fp, $s6, $s1
	beqz	$s4, .LBB6_462
# %bb.461:
	move	$a0, $s4
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_462:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i463.peel
	addi.d	$a0, $fp, 4
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	st.d	$s6, $a3, 0
	st.d	$a0, $a3, 8
	alsl.d	$a1, $s0, $s6, 2
	st.d	$a1, $a3, 16
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	bnez	$a1, .LBB6_251
	b	.LBB6_282
.LBB6_463:
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a2, $a3, 16
	addi.d	$fp, $a1, -1
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	bne	$a0, $a2, .LBB6_336
.LBB6_464:
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s4, $a0, .LBB6_508
# %bb.465:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i504.peel
	move	$a1, $s4
	srai.d	$a0, $a1, 2
	ori	$a1, $zero, 1
	sltu	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a0, $a2
	or	$a1, $a2, $a1
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
.Ltmp168:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp169:                               # EH_LABEL
# %bb.466:                              # %.noexc510.peel
	move	$s3, $a0
	stx.w	$fp, $a0, $s4
	blez	$s4, .LBB6_468
# %bb.467:
	move	$a0, $s3
	move	$a1, $s2
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_468:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i506.peel
	add.d	$fp, $s3, $s4
	beqz	$s2, .LBB6_470
# %bb.469:
	move	$a0, $s2
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_470:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i508.peel
	addi.d	$a0, $fp, 4
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	st.d	$s3, $a3, 0
	st.d	$a0, $a3, 8
	alsl.d	$a1, $s0, $s3, 2
	st.d	$a1, $a3, 16
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	bnez	$a1, .LBB6_305
	b	.LBB6_337
.LBB6_471:
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s7, $a0, .LBB6_510
# %bb.472:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i549.peel
	move	$a1, $s7
	srai.d	$a0, $a1, 2
	ori	$a1, $zero, 1
	sltu	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a0, $a2
	or	$a1, $a2, $a1
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
	or	$s4, $a1, $a0
	slli.d	$a0, $s4, 2
.Ltmp199:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp200:                               # EH_LABEL
# %bb.473:                              # %.noexc555.peel
	move	$s3, $a0
	stx.w	$fp, $a0, $s7
	ld.d	$s1, $sp, 120                   # 8-byte Folded Reload
	blez	$s7, .LBB6_475
# %bb.474:
	move	$a0, $s3
	move	$a1, $s2
	move	$a2, $s7
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_475:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i551.peel
	add.d	$s0, $s3, $s7
	beqz	$s2, .LBB6_477
# %bb.476:
	move	$a0, $s2
	move	$a1, $s7
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_477:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i553.peel
	addi.d	$a0, $s0, 4
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	st.d	$s3, $a3, 0
	st.d	$a0, $a3, 8
	alsl.d	$a1, $s4, $s3, 2
	st.d	$a1, $a3, 16
	bnez	$s1, .LBB6_353
	b	.LBB6_392
.LBB6_478:
.Ltmp253:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	ld.d	$s6, $sp, 112                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp254:                               # EH_LABEL
# %bb.479:                              # %.noexc347
.LBB6_480:
.Ltmp250:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	ld.d	$s6, $sp, 112                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp251:                               # EH_LABEL
# %bb.481:                              # %.noexc355
.LBB6_482:
.Ltmp61:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp62:                                # EH_LABEL
# %bb.483:                              # %.noexc626
.LBB6_484:
.Ltmp55:                                # EH_LABEL
	ld.d	$s6, $sp, 112                   # 8-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp56:                                # EH_LABEL
# %bb.485:                              # %.noexc639
.LBB6_486:
.Ltmp43:                                # EH_LABEL
	ld.d	$s6, $sp, 112                   # 8-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp44:                                # EH_LABEL
# %bb.487:                              # %.noexc667
.LBB6_488:
.Ltmp40:                                # EH_LABEL
	ld.d	$s6, $sp, 112                   # 8-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp41:                                # EH_LABEL
# %bb.489:                              # %.noexc681
.LBB6_490:
.Ltmp49:                                # EH_LABEL
	ld.d	$s6, $sp, 112                   # 8-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp50:                                # EH_LABEL
# %bb.491:                              # %.noexc653
.LBB6_492:                              # %.invoke
.Ltmp256:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp257:                               # EH_LABEL
# %bb.493:                              # %.cont
.LBB6_494:
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.LBB6_495:                              # %.noexc
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.LBB6_496:                              # %.loopexit1028
.Ltmp124:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp125:                               # EH_LABEL
# %bb.497:                              # %.noexc419
.LBB6_498:                              # %.loopexit1045
.Ltmp155:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp156:                               # EH_LABEL
# %bb.499:                              # %.noexc464
.LBB6_500:                              # %.loopexit1024
.Ltmp115:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp116:                               # EH_LABEL
# %bb.501:                              # %.noexc437
.LBB6_502:                              # %.loopexit1021
.Ltmp118:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp119:                               # EH_LABEL
# %bb.503:                              # %.noexc428
.LBB6_504:                              # %.loopexit1041
.Ltmp146:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp147:                               # EH_LABEL
# %bb.505:                              # %.noexc482
.LBB6_506:                              # %.loopexit1037
.Ltmp149:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp150:                               # EH_LABEL
# %bb.507:                              # %.noexc473
.LBB6_508:                              # %.loopexit1062
.Ltmp186:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp187:                               # EH_LABEL
# %bb.509:                              # %.noexc509
.LBB6_510:                              # %.loopexit1075
.Ltmp217:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp218:                               # EH_LABEL
# %bb.511:                              # %.noexc554
.LBB6_512:                              # %.loopexit1058
.Ltmp177:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp178:                               # EH_LABEL
# %bb.513:                              # %.noexc527
.LBB6_514:                              # %.loopexit1054
.Ltmp180:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp181:                               # EH_LABEL
# %bb.515:                              # %.noexc518
.LBB6_516:                              # %.loopexit1072
.Ltmp208:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp209:                               # EH_LABEL
# %bb.517:                              # %.noexc572
.LBB6_518:                              # %.loopexit1068
.Ltmp211:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp212:                               # EH_LABEL
# %bb.519:                              # %.noexc563
.LBB6_520:
.Ltmp134:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp135:                               # EH_LABEL
# %bb.521:                              # %.noexc410
.LBB6_522:
.Ltmp131:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp132:                               # EH_LABEL
# %bb.523:                              # %.noexc446
.LBB6_524:
.Ltmp165:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp166:                               # EH_LABEL
# %bb.525:                              # %.noexc455
.LBB6_526:
.Ltmp162:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp163:                               # EH_LABEL
# %bb.527:                              # %.noexc491
.LBB6_528:
.Ltmp103:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp104:                               # EH_LABEL
# %bb.529:                              # %.noexc381
.LBB6_530:
.Ltmp100:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp101:                               # EH_LABEL
# %bb.531:                              # %.noexc390
.LBB6_532:
.Ltmp97:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp98:                                # EH_LABEL
# %bb.533:                              # %.noexc393
.LBB6_534:
.Ltmp94:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp95:                                # EH_LABEL
# %bb.535:                              # %.noexc401
.LBB6_536:
.Ltmp196:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp197:                               # EH_LABEL
# %bb.537:                              # %.noexc500
.LBB6_538:
.Ltmp193:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp194:                               # EH_LABEL
# %bb.539:                              # %.noexc536
.LBB6_540:
.Ltmp227:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp228:                               # EH_LABEL
# %bb.541:                              # %.noexc545
.LBB6_542:
.Ltmp224:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp225:                               # EH_LABEL
# %bb.543:                              # %.noexc581
.LBB6_544:
.Ltmp247:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp248:                               # EH_LABEL
# %bb.545:                              # %.noexc590
.LBB6_546:
.Ltmp244:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp245:                               # EH_LABEL
# %bb.547:                              # %.noexc599
.LBB6_548:
.Ltmp241:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp242:                               # EH_LABEL
# %bb.549:                              # %.noexc608
.LBB6_550:
.Ltmp238:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp239:                               # EH_LABEL
# %bb.551:                              # %.noexc617
.LBB6_552:                              # %.loopexit876.loopexit.split-lp
.Ltmp201:                               # EH_LABEL
	b	.LBB6_608
.LBB6_553:                              # %.loopexit891.loopexit.split-lp
.Ltmp170:                               # EH_LABEL
	b	.LBB6_614
.LBB6_554:                              # %.loopexit906.loopexit.split-lp
.Ltmp139:                               # EH_LABEL
	b	.LBB6_608
.LBB6_555:                              # %.loopexit921.loopexit.split-lp
.Ltmp108:                               # EH_LABEL
	b	.LBB6_614
.LBB6_556:
.Ltmp240:                               # EH_LABEL
	b	.LBB6_597
.LBB6_557:
.Ltmp243:                               # EH_LABEL
	b	.LBB6_597
.LBB6_558:
.Ltmp246:                               # EH_LABEL
	b	.LBB6_597
.LBB6_559:
.Ltmp249:                               # EH_LABEL
	b	.LBB6_597
.LBB6_560:
.Ltmp226:                               # EH_LABEL
	b	.LBB6_597
.LBB6_561:
.Ltmp229:                               # EH_LABEL
	b	.LBB6_614
.LBB6_562:
.Ltmp195:                               # EH_LABEL
	b	.LBB6_597
.LBB6_563:
.Ltmp198:                               # EH_LABEL
	b	.LBB6_614
.LBB6_564:
.Ltmp96:                                # EH_LABEL
	b	.LBB6_597
.LBB6_565:
.Ltmp99:                                # EH_LABEL
	b	.LBB6_597
.LBB6_566:
.Ltmp102:                               # EH_LABEL
	b	.LBB6_597
.LBB6_567:
.Ltmp105:                               # EH_LABEL
	b	.LBB6_597
.LBB6_568:
.Ltmp164:                               # EH_LABEL
	b	.LBB6_597
.LBB6_569:
.Ltmp167:                               # EH_LABEL
	b	.LBB6_597
.LBB6_570:
.Ltmp133:                               # EH_LABEL
	b	.LBB6_597
.LBB6_571:
.Ltmp136:                               # EH_LABEL
	b	.LBB6_614
.LBB6_572:                              # %.loopexit876.loopexit
.Ltmp216:                               # EH_LABEL
	b	.LBB6_614
.LBB6_573:                              # %.loopexit.split-lp
.Ltmp213:                               # EH_LABEL
	b	.LBB6_614
.LBB6_574:                              # %.loopexit891.loopexit
.Ltmp185:                               # EH_LABEL
	b	.LBB6_614
.LBB6_575:                              # %.loopexit.split-lp872
.Ltmp210:                               # EH_LABEL
	b	.LBB6_614
.LBB6_576:                              # %.loopexit.split-lp882
.Ltmp182:                               # EH_LABEL
	b	.LBB6_608
.LBB6_577:                              # %.loopexit871
.Ltmp207:                               # EH_LABEL
	b	.LBB6_614
.LBB6_578:                              # %.loopexit.split-lp887
.Ltmp179:                               # EH_LABEL
	b	.LBB6_608
.LBB6_579:                              # %.loopexit
.Ltmp204:                               # EH_LABEL
	b	.LBB6_614
.LBB6_580:                              # %.loopexit886
.Ltmp176:                               # EH_LABEL
	b	.LBB6_608
.LBB6_581:                              # %.loopexit881
.Ltmp173:                               # EH_LABEL
	b	.LBB6_608
.LBB6_582:                              # %.loopexit.split-lp877
.Ltmp219:                               # EH_LABEL
	b	.LBB6_614
.LBB6_583:                              # %.loopexit.split-lp892
.Ltmp188:                               # EH_LABEL
	b	.LBB6_614
.LBB6_584:                              # %.loopexit906.loopexit
.Ltmp154:                               # EH_LABEL
	b	.LBB6_608
.LBB6_585:                              # %.loopexit.split-lp897
.Ltmp151:                               # EH_LABEL
	b	.LBB6_608
.LBB6_586:                              # %.loopexit921.loopexit
.Ltmp123:                               # EH_LABEL
	b	.LBB6_614
.LBB6_587:                              # %.loopexit.split-lp902
.Ltmp148:                               # EH_LABEL
	b	.LBB6_608
.LBB6_588:                              # %.loopexit.split-lp912
.Ltmp120:                               # EH_LABEL
	b	.LBB6_614
.LBB6_589:                              # %.loopexit901
.Ltmp145:                               # EH_LABEL
	b	.LBB6_608
.LBB6_590:                              # %.loopexit.split-lp917
.Ltmp117:                               # EH_LABEL
	b	.LBB6_614
.LBB6_591:                              # %.loopexit896
.Ltmp142:                               # EH_LABEL
	b	.LBB6_608
.LBB6_592:                              # %.loopexit916
.Ltmp114:                               # EH_LABEL
	b	.LBB6_614
.LBB6_593:                              # %.loopexit911
.Ltmp111:                               # EH_LABEL
	b	.LBB6_614
.LBB6_594:                              # %.loopexit.split-lp907
.Ltmp157:                               # EH_LABEL
	b	.LBB6_608
.LBB6_595:                              # %.loopexit.split-lp922
.Ltmp126:                               # EH_LABEL
	b	.LBB6_614
.LBB6_596:
.Ltmp258:                               # EH_LABEL
.LBB6_597:                              # %.loopexit921
	move	$s0, $a0
	b	.LBB6_618
.LBB6_598:                              # %.loopexit947
.Ltmp48:                                # EH_LABEL
	b	.LBB6_608
.LBB6_599:                              # %.loopexit942
.Ltmp39:                                # EH_LABEL
	b	.LBB6_608
.LBB6_600:                              # %.loopexit.split-lp948
.Ltmp51:                                # EH_LABEL
	move	$s0, $a0
	b	.LBB6_619
.LBB6_601:                              # %.loopexit.split-lp943
.Ltmp42:                                # EH_LABEL
	move	$s0, $a0
	b	.LBB6_619
.LBB6_602:                              # %.loopexit.split-lp938
.Ltmp45:                                # EH_LABEL
	move	$s0, $a0
	b	.LBB6_619
.LBB6_603:                              # %.loopexit937
.Ltmp36:                                # EH_LABEL
	b	.LBB6_608
.LBB6_604:                              # %.loopexit.split-lp953
.Ltmp57:                                # EH_LABEL
	move	$s0, $a0
	b	.LBB6_619
.LBB6_605:                              # %.loopexit952
.Ltmp54:                                # EH_LABEL
	b	.LBB6_608
.LBB6_606:                              # %.loopexit.split-lp958
.Ltmp63:                                # EH_LABEL
	b	.LBB6_608
.LBB6_607:                              # %.loopexit957
.Ltmp60:                                # EH_LABEL
.LBB6_608:                              # %.thread866
	move	$s0, $a0
	ld.d	$s6, $sp, 112                   # 8-byte Folded Reload
	b	.LBB6_619
.LBB6_609:                              # %.loopexit932
.Ltmp78:                                # EH_LABEL
	b	.LBB6_616
.LBB6_610:                              # %.loopexit927
.Ltmp75:                                # EH_LABEL
	b	.LBB6_616
.LBB6_611:                              # %.loopexit.split-lp933
.Ltmp252:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB6_617
.LBB6_612:                              # %.loopexit.split-lp928
.Ltmp255:                               # EH_LABEL
	move	$s0, $a0
	b	.LBB6_617
.LBB6_613:
.Ltmp72:                                # EH_LABEL
.LBB6_614:                              # %.loopexit921
	move	$s0, $a0
	ld.d	$s6, $sp, 112                   # 8-byte Folded Reload
	b	.LBB6_618
.LBB6_615:
.Ltmp81:                                # EH_LABEL
.LBB6_616:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit360
	move	$s0, $a0
	ld.d	$s6, $sp, 112                   # 8-byte Folded Reload
.LBB6_617:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit360
	ori	$a1, $zero, 24
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_618:                              # %.loopexit921
	beqz	$s6, .LBB6_620
.LBB6_619:                              # %.thread866
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	sub.d	$a1, $a0, $s6
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_620:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit623
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end6:
	.size	_ZN7GenMesh11generateHexERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_, .Lfunc_end6-_ZN7GenMesh11generateHexERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table6:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Lfunc_begin1-.Lfunc_begin1    # >> Call Site 1 <<
	.uleb128 .Ltmp58-.Lfunc_begin1          #   Call between .Lfunc_begin1 and .Ltmp58
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp58-.Lfunc_begin1          # >> Call Site 2 <<
	.uleb128 .Ltmp59-.Ltmp58                #   Call between .Ltmp58 and .Ltmp59
	.uleb128 .Ltmp60-.Lfunc_begin1          #     jumps to .Ltmp60
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp59-.Lfunc_begin1          # >> Call Site 3 <<
	.uleb128 .Ltmp52-.Ltmp59                #   Call between .Ltmp59 and .Ltmp52
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp52-.Lfunc_begin1          # >> Call Site 4 <<
	.uleb128 .Ltmp53-.Ltmp52                #   Call between .Ltmp52 and .Ltmp53
	.uleb128 .Ltmp54-.Lfunc_begin1          #     jumps to .Ltmp54
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp34-.Lfunc_begin1          # >> Call Site 5 <<
	.uleb128 .Ltmp35-.Ltmp34                #   Call between .Ltmp34 and .Ltmp35
	.uleb128 .Ltmp36-.Lfunc_begin1          #     jumps to .Ltmp36
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp35-.Lfunc_begin1          # >> Call Site 6 <<
	.uleb128 .Ltmp37-.Ltmp35                #   Call between .Ltmp35 and .Ltmp37
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp37-.Lfunc_begin1          # >> Call Site 7 <<
	.uleb128 .Ltmp38-.Ltmp37                #   Call between .Ltmp37 and .Ltmp38
	.uleb128 .Ltmp39-.Lfunc_begin1          #     jumps to .Ltmp39
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp46-.Lfunc_begin1          # >> Call Site 8 <<
	.uleb128 .Ltmp47-.Ltmp46                #   Call between .Ltmp46 and .Ltmp47
	.uleb128 .Ltmp48-.Lfunc_begin1          #     jumps to .Ltmp48
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp64-.Lfunc_begin1          # >> Call Site 9 <<
	.uleb128 .Ltmp65-.Ltmp64                #   Call between .Ltmp64 and .Ltmp65
	.uleb128 .Ltmp258-.Lfunc_begin1         #     jumps to .Ltmp258
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp65-.Lfunc_begin1          # >> Call Site 10 <<
	.uleb128 .Ltmp66-.Ltmp65                #   Call between .Ltmp65 and .Ltmp66
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp66-.Lfunc_begin1          # >> Call Site 11 <<
	.uleb128 .Ltmp67-.Ltmp66                #   Call between .Ltmp66 and .Ltmp67
	.uleb128 .Ltmp258-.Lfunc_begin1         #     jumps to .Ltmp258
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp67-.Lfunc_begin1          # >> Call Site 12 <<
	.uleb128 .Ltmp68-.Ltmp67                #   Call between .Ltmp67 and .Ltmp68
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp68-.Lfunc_begin1          # >> Call Site 13 <<
	.uleb128 .Ltmp69-.Ltmp68                #   Call between .Ltmp68 and .Ltmp69
	.uleb128 .Ltmp258-.Lfunc_begin1         #     jumps to .Ltmp258
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp69-.Lfunc_begin1          # >> Call Site 14 <<
	.uleb128 .Ltmp70-.Ltmp69                #   Call between .Ltmp69 and .Ltmp70
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp70-.Lfunc_begin1          # >> Call Site 15 <<
	.uleb128 .Ltmp71-.Ltmp70                #   Call between .Ltmp70 and .Ltmp71
	.uleb128 .Ltmp72-.Lfunc_begin1          #     jumps to .Ltmp72
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp71-.Lfunc_begin1          # >> Call Site 16 <<
	.uleb128 .Ltmp73-.Ltmp71                #   Call between .Ltmp71 and .Ltmp73
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp73-.Lfunc_begin1          # >> Call Site 17 <<
	.uleb128 .Ltmp74-.Ltmp73                #   Call between .Ltmp73 and .Ltmp74
	.uleb128 .Ltmp75-.Lfunc_begin1          #     jumps to .Ltmp75
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp74-.Lfunc_begin1          # >> Call Site 18 <<
	.uleb128 .Ltmp76-.Ltmp74                #   Call between .Ltmp74 and .Ltmp76
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp76-.Lfunc_begin1          # >> Call Site 19 <<
	.uleb128 .Ltmp77-.Ltmp76                #   Call between .Ltmp76 and .Ltmp77
	.uleb128 .Ltmp78-.Lfunc_begin1          #     jumps to .Ltmp78
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp77-.Lfunc_begin1          # >> Call Site 20 <<
	.uleb128 .Ltmp79-.Ltmp77                #   Call between .Ltmp77 and .Ltmp79
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp79-.Lfunc_begin1          # >> Call Site 21 <<
	.uleb128 .Ltmp80-.Ltmp79                #   Call between .Ltmp79 and .Ltmp80
	.uleb128 .Ltmp81-.Lfunc_begin1          #     jumps to .Ltmp81
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp80-.Lfunc_begin1          # >> Call Site 22 <<
	.uleb128 .Ltmp82-.Ltmp80                #   Call between .Ltmp80 and .Ltmp82
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp82-.Lfunc_begin1          # >> Call Site 23 <<
	.uleb128 .Ltmp83-.Ltmp82                #   Call between .Ltmp82 and .Ltmp83
	.uleb128 .Ltmp258-.Lfunc_begin1         #     jumps to .Ltmp258
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp83-.Lfunc_begin1          # >> Call Site 24 <<
	.uleb128 .Ltmp84-.Ltmp83                #   Call between .Ltmp83 and .Ltmp84
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp84-.Lfunc_begin1          # >> Call Site 25 <<
	.uleb128 .Ltmp85-.Ltmp84                #   Call between .Ltmp84 and .Ltmp85
	.uleb128 .Ltmp258-.Lfunc_begin1         #     jumps to .Ltmp258
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp85-.Lfunc_begin1          # >> Call Site 26 <<
	.uleb128 .Ltmp86-.Ltmp85                #   Call between .Ltmp85 and .Ltmp86
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp86-.Lfunc_begin1          # >> Call Site 27 <<
	.uleb128 .Ltmp87-.Ltmp86                #   Call between .Ltmp86 and .Ltmp87
	.uleb128 .Ltmp105-.Lfunc_begin1         #     jumps to .Ltmp105
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp87-.Lfunc_begin1          # >> Call Site 28 <<
	.uleb128 .Ltmp88-.Ltmp87                #   Call between .Ltmp87 and .Ltmp88
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp88-.Lfunc_begin1          # >> Call Site 29 <<
	.uleb128 .Ltmp89-.Ltmp88                #   Call between .Ltmp88 and .Ltmp89
	.uleb128 .Ltmp102-.Lfunc_begin1         #     jumps to .Ltmp102
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp89-.Lfunc_begin1          # >> Call Site 30 <<
	.uleb128 .Ltmp90-.Ltmp89                #   Call between .Ltmp89 and .Ltmp90
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp90-.Lfunc_begin1          # >> Call Site 31 <<
	.uleb128 .Ltmp91-.Ltmp90                #   Call between .Ltmp90 and .Ltmp91
	.uleb128 .Ltmp99-.Lfunc_begin1          #     jumps to .Ltmp99
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp91-.Lfunc_begin1          # >> Call Site 32 <<
	.uleb128 .Ltmp92-.Ltmp91                #   Call between .Ltmp91 and .Ltmp92
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp92-.Lfunc_begin1          # >> Call Site 33 <<
	.uleb128 .Ltmp93-.Ltmp92                #   Call between .Ltmp92 and .Ltmp93
	.uleb128 .Ltmp96-.Lfunc_begin1          #     jumps to .Ltmp96
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp93-.Lfunc_begin1          # >> Call Site 34 <<
	.uleb128 .Ltmp121-.Ltmp93               #   Call between .Ltmp93 and .Ltmp121
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp121-.Lfunc_begin1         # >> Call Site 35 <<
	.uleb128 .Ltmp122-.Ltmp121              #   Call between .Ltmp121 and .Ltmp122
	.uleb128 .Ltmp123-.Lfunc_begin1         #     jumps to .Ltmp123
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp122-.Lfunc_begin1         # >> Call Site 36 <<
	.uleb128 .Ltmp109-.Ltmp122              #   Call between .Ltmp122 and .Ltmp109
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp109-.Lfunc_begin1         # >> Call Site 37 <<
	.uleb128 .Ltmp110-.Ltmp109              #   Call between .Ltmp109 and .Ltmp110
	.uleb128 .Ltmp111-.Lfunc_begin1         #     jumps to .Ltmp111
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp110-.Lfunc_begin1         # >> Call Site 38 <<
	.uleb128 .Ltmp112-.Ltmp110              #   Call between .Ltmp110 and .Ltmp112
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp112-.Lfunc_begin1         # >> Call Site 39 <<
	.uleb128 .Ltmp113-.Ltmp112              #   Call between .Ltmp112 and .Ltmp113
	.uleb128 .Ltmp114-.Lfunc_begin1         #     jumps to .Ltmp114
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp113-.Lfunc_begin1         # >> Call Site 40 <<
	.uleb128 .Ltmp127-.Ltmp113              #   Call between .Ltmp113 and .Ltmp127
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp127-.Lfunc_begin1         # >> Call Site 41 <<
	.uleb128 .Ltmp128-.Ltmp127              #   Call between .Ltmp127 and .Ltmp128
	.uleb128 .Ltmp136-.Lfunc_begin1         #     jumps to .Ltmp136
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp128-.Lfunc_begin1         # >> Call Site 42 <<
	.uleb128 .Ltmp129-.Ltmp128              #   Call between .Ltmp128 and .Ltmp129
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp129-.Lfunc_begin1         # >> Call Site 43 <<
	.uleb128 .Ltmp130-.Ltmp129              #   Call between .Ltmp129 and .Ltmp130
	.uleb128 .Ltmp133-.Lfunc_begin1         #     jumps to .Ltmp133
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp130-.Lfunc_begin1         # >> Call Site 44 <<
	.uleb128 .Ltmp152-.Ltmp130              #   Call between .Ltmp130 and .Ltmp152
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp152-.Lfunc_begin1         # >> Call Site 45 <<
	.uleb128 .Ltmp153-.Ltmp152              #   Call between .Ltmp152 and .Ltmp153
	.uleb128 .Ltmp154-.Lfunc_begin1         #     jumps to .Ltmp154
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp153-.Lfunc_begin1         # >> Call Site 46 <<
	.uleb128 .Ltmp140-.Ltmp153              #   Call between .Ltmp153 and .Ltmp140
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp140-.Lfunc_begin1         # >> Call Site 47 <<
	.uleb128 .Ltmp141-.Ltmp140              #   Call between .Ltmp140 and .Ltmp141
	.uleb128 .Ltmp142-.Lfunc_begin1         #     jumps to .Ltmp142
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp141-.Lfunc_begin1         # >> Call Site 48 <<
	.uleb128 .Ltmp143-.Ltmp141              #   Call between .Ltmp141 and .Ltmp143
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp143-.Lfunc_begin1         # >> Call Site 49 <<
	.uleb128 .Ltmp144-.Ltmp143              #   Call between .Ltmp143 and .Ltmp144
	.uleb128 .Ltmp145-.Lfunc_begin1         #     jumps to .Ltmp145
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp144-.Lfunc_begin1         # >> Call Site 50 <<
	.uleb128 .Ltmp158-.Ltmp144              #   Call between .Ltmp144 and .Ltmp158
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp158-.Lfunc_begin1         # >> Call Site 51 <<
	.uleb128 .Ltmp159-.Ltmp158              #   Call between .Ltmp158 and .Ltmp159
	.uleb128 .Ltmp167-.Lfunc_begin1         #     jumps to .Ltmp167
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp159-.Lfunc_begin1         # >> Call Site 52 <<
	.uleb128 .Ltmp160-.Ltmp159              #   Call between .Ltmp159 and .Ltmp160
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp160-.Lfunc_begin1         # >> Call Site 53 <<
	.uleb128 .Ltmp161-.Ltmp160              #   Call between .Ltmp160 and .Ltmp161
	.uleb128 .Ltmp164-.Lfunc_begin1         #     jumps to .Ltmp164
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp161-.Lfunc_begin1         # >> Call Site 54 <<
	.uleb128 .Ltmp183-.Ltmp161              #   Call between .Ltmp161 and .Ltmp183
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp183-.Lfunc_begin1         # >> Call Site 55 <<
	.uleb128 .Ltmp184-.Ltmp183              #   Call between .Ltmp183 and .Ltmp184
	.uleb128 .Ltmp185-.Lfunc_begin1         #     jumps to .Ltmp185
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp184-.Lfunc_begin1         # >> Call Site 56 <<
	.uleb128 .Ltmp171-.Ltmp184              #   Call between .Ltmp184 and .Ltmp171
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp171-.Lfunc_begin1         # >> Call Site 57 <<
	.uleb128 .Ltmp172-.Ltmp171              #   Call between .Ltmp171 and .Ltmp172
	.uleb128 .Ltmp173-.Lfunc_begin1         #     jumps to .Ltmp173
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp172-.Lfunc_begin1         # >> Call Site 58 <<
	.uleb128 .Ltmp174-.Ltmp172              #   Call between .Ltmp172 and .Ltmp174
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp174-.Lfunc_begin1         # >> Call Site 59 <<
	.uleb128 .Ltmp175-.Ltmp174              #   Call between .Ltmp174 and .Ltmp175
	.uleb128 .Ltmp176-.Lfunc_begin1         #     jumps to .Ltmp176
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp175-.Lfunc_begin1         # >> Call Site 60 <<
	.uleb128 .Ltmp189-.Ltmp175              #   Call between .Ltmp175 and .Ltmp189
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp189-.Lfunc_begin1         # >> Call Site 61 <<
	.uleb128 .Ltmp190-.Ltmp189              #   Call between .Ltmp189 and .Ltmp190
	.uleb128 .Ltmp198-.Lfunc_begin1         #     jumps to .Ltmp198
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp190-.Lfunc_begin1         # >> Call Site 62 <<
	.uleb128 .Ltmp214-.Ltmp190              #   Call between .Ltmp190 and .Ltmp214
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp214-.Lfunc_begin1         # >> Call Site 63 <<
	.uleb128 .Ltmp215-.Ltmp214              #   Call between .Ltmp214 and .Ltmp215
	.uleb128 .Ltmp216-.Lfunc_begin1         #     jumps to .Ltmp216
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp215-.Lfunc_begin1         # >> Call Site 64 <<
	.uleb128 .Ltmp202-.Ltmp215              #   Call between .Ltmp215 and .Ltmp202
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp202-.Lfunc_begin1         # >> Call Site 65 <<
	.uleb128 .Ltmp203-.Ltmp202              #   Call between .Ltmp202 and .Ltmp203
	.uleb128 .Ltmp204-.Lfunc_begin1         #     jumps to .Ltmp204
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp203-.Lfunc_begin1         # >> Call Site 66 <<
	.uleb128 .Ltmp205-.Ltmp203              #   Call between .Ltmp203 and .Ltmp205
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp205-.Lfunc_begin1         # >> Call Site 67 <<
	.uleb128 .Ltmp206-.Ltmp205              #   Call between .Ltmp205 and .Ltmp206
	.uleb128 .Ltmp207-.Lfunc_begin1         #     jumps to .Ltmp207
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp206-.Lfunc_begin1         # >> Call Site 68 <<
	.uleb128 .Ltmp191-.Ltmp206              #   Call between .Ltmp206 and .Ltmp191
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp191-.Lfunc_begin1         # >> Call Site 69 <<
	.uleb128 .Ltmp192-.Ltmp191              #   Call between .Ltmp191 and .Ltmp192
	.uleb128 .Ltmp195-.Lfunc_begin1         #     jumps to .Ltmp195
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp192-.Lfunc_begin1         # >> Call Site 70 <<
	.uleb128 .Ltmp220-.Ltmp192              #   Call between .Ltmp192 and .Ltmp220
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp220-.Lfunc_begin1         # >> Call Site 71 <<
	.uleb128 .Ltmp221-.Ltmp220              #   Call between .Ltmp220 and .Ltmp221
	.uleb128 .Ltmp229-.Lfunc_begin1         #     jumps to .Ltmp229
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp221-.Lfunc_begin1         # >> Call Site 72 <<
	.uleb128 .Ltmp222-.Ltmp221              #   Call between .Ltmp221 and .Ltmp222
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp222-.Lfunc_begin1         # >> Call Site 73 <<
	.uleb128 .Ltmp223-.Ltmp222              #   Call between .Ltmp222 and .Ltmp223
	.uleb128 .Ltmp226-.Lfunc_begin1         #     jumps to .Ltmp226
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp223-.Lfunc_begin1         # >> Call Site 74 <<
	.uleb128 .Ltmp230-.Ltmp223              #   Call between .Ltmp223 and .Ltmp230
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp230-.Lfunc_begin1         # >> Call Site 75 <<
	.uleb128 .Ltmp231-.Ltmp230              #   Call between .Ltmp230 and .Ltmp231
	.uleb128 .Ltmp249-.Lfunc_begin1         #     jumps to .Ltmp249
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp231-.Lfunc_begin1         # >> Call Site 76 <<
	.uleb128 .Ltmp232-.Ltmp231              #   Call between .Ltmp231 and .Ltmp232
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp232-.Lfunc_begin1         # >> Call Site 77 <<
	.uleb128 .Ltmp233-.Ltmp232              #   Call between .Ltmp232 and .Ltmp233
	.uleb128 .Ltmp246-.Lfunc_begin1         #     jumps to .Ltmp246
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp233-.Lfunc_begin1         # >> Call Site 78 <<
	.uleb128 .Ltmp234-.Ltmp233              #   Call between .Ltmp233 and .Ltmp234
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp234-.Lfunc_begin1         # >> Call Site 79 <<
	.uleb128 .Ltmp235-.Ltmp234              #   Call between .Ltmp234 and .Ltmp235
	.uleb128 .Ltmp243-.Lfunc_begin1         #     jumps to .Ltmp243
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp235-.Lfunc_begin1         # >> Call Site 80 <<
	.uleb128 .Ltmp236-.Ltmp235              #   Call between .Ltmp235 and .Ltmp236
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp236-.Lfunc_begin1         # >> Call Site 81 <<
	.uleb128 .Ltmp237-.Ltmp236              #   Call between .Ltmp236 and .Ltmp237
	.uleb128 .Ltmp240-.Lfunc_begin1         #     jumps to .Ltmp240
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp237-.Lfunc_begin1         # >> Call Site 82 <<
	.uleb128 .Ltmp106-.Ltmp237              #   Call between .Ltmp237 and .Ltmp106
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp106-.Lfunc_begin1         # >> Call Site 83 <<
	.uleb128 .Ltmp107-.Ltmp106              #   Call between .Ltmp106 and .Ltmp107
	.uleb128 .Ltmp108-.Lfunc_begin1         #     jumps to .Ltmp108
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp107-.Lfunc_begin1         # >> Call Site 84 <<
	.uleb128 .Ltmp137-.Ltmp107              #   Call between .Ltmp107 and .Ltmp137
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp137-.Lfunc_begin1         # >> Call Site 85 <<
	.uleb128 .Ltmp138-.Ltmp137              #   Call between .Ltmp137 and .Ltmp138
	.uleb128 .Ltmp139-.Lfunc_begin1         #     jumps to .Ltmp139
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp138-.Lfunc_begin1         # >> Call Site 86 <<
	.uleb128 .Ltmp168-.Ltmp138              #   Call between .Ltmp138 and .Ltmp168
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp168-.Lfunc_begin1         # >> Call Site 87 <<
	.uleb128 .Ltmp169-.Ltmp168              #   Call between .Ltmp168 and .Ltmp169
	.uleb128 .Ltmp170-.Lfunc_begin1         #     jumps to .Ltmp170
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp169-.Lfunc_begin1         # >> Call Site 88 <<
	.uleb128 .Ltmp199-.Ltmp169              #   Call between .Ltmp169 and .Ltmp199
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp199-.Lfunc_begin1         # >> Call Site 89 <<
	.uleb128 .Ltmp200-.Ltmp199              #   Call between .Ltmp199 and .Ltmp200
	.uleb128 .Ltmp201-.Lfunc_begin1         #     jumps to .Ltmp201
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp200-.Lfunc_begin1         # >> Call Site 90 <<
	.uleb128 .Ltmp253-.Ltmp200              #   Call between .Ltmp200 and .Ltmp253
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp253-.Lfunc_begin1         # >> Call Site 91 <<
	.uleb128 .Ltmp254-.Ltmp253              #   Call between .Ltmp253 and .Ltmp254
	.uleb128 .Ltmp255-.Lfunc_begin1         #     jumps to .Ltmp255
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp250-.Lfunc_begin1         # >> Call Site 92 <<
	.uleb128 .Ltmp251-.Ltmp250              #   Call between .Ltmp250 and .Ltmp251
	.uleb128 .Ltmp252-.Lfunc_begin1         #     jumps to .Ltmp252
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp61-.Lfunc_begin1          # >> Call Site 93 <<
	.uleb128 .Ltmp62-.Ltmp61                #   Call between .Ltmp61 and .Ltmp62
	.uleb128 .Ltmp63-.Lfunc_begin1          #     jumps to .Ltmp63
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp55-.Lfunc_begin1          # >> Call Site 94 <<
	.uleb128 .Ltmp56-.Ltmp55                #   Call between .Ltmp55 and .Ltmp56
	.uleb128 .Ltmp57-.Lfunc_begin1          #     jumps to .Ltmp57
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp43-.Lfunc_begin1          # >> Call Site 95 <<
	.uleb128 .Ltmp44-.Ltmp43                #   Call between .Ltmp43 and .Ltmp44
	.uleb128 .Ltmp45-.Lfunc_begin1          #     jumps to .Ltmp45
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp40-.Lfunc_begin1          # >> Call Site 96 <<
	.uleb128 .Ltmp41-.Ltmp40                #   Call between .Ltmp40 and .Ltmp41
	.uleb128 .Ltmp42-.Lfunc_begin1          #     jumps to .Ltmp42
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp49-.Lfunc_begin1          # >> Call Site 97 <<
	.uleb128 .Ltmp50-.Ltmp49                #   Call between .Ltmp49 and .Ltmp50
	.uleb128 .Ltmp51-.Lfunc_begin1          #     jumps to .Ltmp51
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp256-.Lfunc_begin1         # >> Call Site 98 <<
	.uleb128 .Ltmp257-.Ltmp256              #   Call between .Ltmp256 and .Ltmp257
	.uleb128 .Ltmp258-.Lfunc_begin1         #     jumps to .Ltmp258
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp257-.Lfunc_begin1         # >> Call Site 99 <<
	.uleb128 .Ltmp124-.Ltmp257              #   Call between .Ltmp257 and .Ltmp124
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp124-.Lfunc_begin1         # >> Call Site 100 <<
	.uleb128 .Ltmp125-.Ltmp124              #   Call between .Ltmp124 and .Ltmp125
	.uleb128 .Ltmp126-.Lfunc_begin1         #     jumps to .Ltmp126
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp155-.Lfunc_begin1         # >> Call Site 101 <<
	.uleb128 .Ltmp156-.Ltmp155              #   Call between .Ltmp155 and .Ltmp156
	.uleb128 .Ltmp157-.Lfunc_begin1         #     jumps to .Ltmp157
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp115-.Lfunc_begin1         # >> Call Site 102 <<
	.uleb128 .Ltmp116-.Ltmp115              #   Call between .Ltmp115 and .Ltmp116
	.uleb128 .Ltmp117-.Lfunc_begin1         #     jumps to .Ltmp117
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp118-.Lfunc_begin1         # >> Call Site 103 <<
	.uleb128 .Ltmp119-.Ltmp118              #   Call between .Ltmp118 and .Ltmp119
	.uleb128 .Ltmp120-.Lfunc_begin1         #     jumps to .Ltmp120
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp146-.Lfunc_begin1         # >> Call Site 104 <<
	.uleb128 .Ltmp147-.Ltmp146              #   Call between .Ltmp146 and .Ltmp147
	.uleb128 .Ltmp148-.Lfunc_begin1         #     jumps to .Ltmp148
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp149-.Lfunc_begin1         # >> Call Site 105 <<
	.uleb128 .Ltmp150-.Ltmp149              #   Call between .Ltmp149 and .Ltmp150
	.uleb128 .Ltmp151-.Lfunc_begin1         #     jumps to .Ltmp151
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp186-.Lfunc_begin1         # >> Call Site 106 <<
	.uleb128 .Ltmp187-.Ltmp186              #   Call between .Ltmp186 and .Ltmp187
	.uleb128 .Ltmp188-.Lfunc_begin1         #     jumps to .Ltmp188
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp217-.Lfunc_begin1         # >> Call Site 107 <<
	.uleb128 .Ltmp218-.Ltmp217              #   Call between .Ltmp217 and .Ltmp218
	.uleb128 .Ltmp219-.Lfunc_begin1         #     jumps to .Ltmp219
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp177-.Lfunc_begin1         # >> Call Site 108 <<
	.uleb128 .Ltmp178-.Ltmp177              #   Call between .Ltmp177 and .Ltmp178
	.uleb128 .Ltmp179-.Lfunc_begin1         #     jumps to .Ltmp179
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp180-.Lfunc_begin1         # >> Call Site 109 <<
	.uleb128 .Ltmp181-.Ltmp180              #   Call between .Ltmp180 and .Ltmp181
	.uleb128 .Ltmp182-.Lfunc_begin1         #     jumps to .Ltmp182
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp208-.Lfunc_begin1         # >> Call Site 110 <<
	.uleb128 .Ltmp209-.Ltmp208              #   Call between .Ltmp208 and .Ltmp209
	.uleb128 .Ltmp210-.Lfunc_begin1         #     jumps to .Ltmp210
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp211-.Lfunc_begin1         # >> Call Site 111 <<
	.uleb128 .Ltmp212-.Ltmp211              #   Call between .Ltmp211 and .Ltmp212
	.uleb128 .Ltmp213-.Lfunc_begin1         #     jumps to .Ltmp213
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp134-.Lfunc_begin1         # >> Call Site 112 <<
	.uleb128 .Ltmp135-.Ltmp134              #   Call between .Ltmp134 and .Ltmp135
	.uleb128 .Ltmp136-.Lfunc_begin1         #     jumps to .Ltmp136
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp131-.Lfunc_begin1         # >> Call Site 113 <<
	.uleb128 .Ltmp132-.Ltmp131              #   Call between .Ltmp131 and .Ltmp132
	.uleb128 .Ltmp133-.Lfunc_begin1         #     jumps to .Ltmp133
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp165-.Lfunc_begin1         # >> Call Site 114 <<
	.uleb128 .Ltmp166-.Ltmp165              #   Call between .Ltmp165 and .Ltmp166
	.uleb128 .Ltmp167-.Lfunc_begin1         #     jumps to .Ltmp167
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp162-.Lfunc_begin1         # >> Call Site 115 <<
	.uleb128 .Ltmp163-.Ltmp162              #   Call between .Ltmp162 and .Ltmp163
	.uleb128 .Ltmp164-.Lfunc_begin1         #     jumps to .Ltmp164
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp103-.Lfunc_begin1         # >> Call Site 116 <<
	.uleb128 .Ltmp104-.Ltmp103              #   Call between .Ltmp103 and .Ltmp104
	.uleb128 .Ltmp105-.Lfunc_begin1         #     jumps to .Ltmp105
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp100-.Lfunc_begin1         # >> Call Site 117 <<
	.uleb128 .Ltmp101-.Ltmp100              #   Call between .Ltmp100 and .Ltmp101
	.uleb128 .Ltmp102-.Lfunc_begin1         #     jumps to .Ltmp102
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp97-.Lfunc_begin1          # >> Call Site 118 <<
	.uleb128 .Ltmp98-.Ltmp97                #   Call between .Ltmp97 and .Ltmp98
	.uleb128 .Ltmp99-.Lfunc_begin1          #     jumps to .Ltmp99
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp94-.Lfunc_begin1          # >> Call Site 119 <<
	.uleb128 .Ltmp95-.Ltmp94                #   Call between .Ltmp94 and .Ltmp95
	.uleb128 .Ltmp96-.Lfunc_begin1          #     jumps to .Ltmp96
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp196-.Lfunc_begin1         # >> Call Site 120 <<
	.uleb128 .Ltmp197-.Ltmp196              #   Call between .Ltmp196 and .Ltmp197
	.uleb128 .Ltmp198-.Lfunc_begin1         #     jumps to .Ltmp198
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp193-.Lfunc_begin1         # >> Call Site 121 <<
	.uleb128 .Ltmp194-.Ltmp193              #   Call between .Ltmp193 and .Ltmp194
	.uleb128 .Ltmp195-.Lfunc_begin1         #     jumps to .Ltmp195
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp227-.Lfunc_begin1         # >> Call Site 122 <<
	.uleb128 .Ltmp228-.Ltmp227              #   Call between .Ltmp227 and .Ltmp228
	.uleb128 .Ltmp229-.Lfunc_begin1         #     jumps to .Ltmp229
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp224-.Lfunc_begin1         # >> Call Site 123 <<
	.uleb128 .Ltmp225-.Ltmp224              #   Call between .Ltmp224 and .Ltmp225
	.uleb128 .Ltmp226-.Lfunc_begin1         #     jumps to .Ltmp226
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp247-.Lfunc_begin1         # >> Call Site 124 <<
	.uleb128 .Ltmp248-.Ltmp247              #   Call between .Ltmp247 and .Ltmp248
	.uleb128 .Ltmp249-.Lfunc_begin1         #     jumps to .Ltmp249
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp244-.Lfunc_begin1         # >> Call Site 125 <<
	.uleb128 .Ltmp245-.Ltmp244              #   Call between .Ltmp244 and .Ltmp245
	.uleb128 .Ltmp246-.Lfunc_begin1         #     jumps to .Ltmp246
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp241-.Lfunc_begin1         # >> Call Site 126 <<
	.uleb128 .Ltmp242-.Ltmp241              #   Call between .Ltmp241 and .Ltmp242
	.uleb128 .Ltmp243-.Lfunc_begin1         #     jumps to .Ltmp243
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp238-.Lfunc_begin1         # >> Call Site 127 <<
	.uleb128 .Ltmp239-.Ltmp238              #   Call between .Ltmp238 and .Ltmp239
	.uleb128 .Ltmp240-.Lfunc_begin1         #     jumps to .Ltmp240
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp239-.Lfunc_begin1         # >> Call Site 128 <<
	.uleb128 .Lfunc_end6-.Ltmp239           #   Call between .Ltmp239 and .Lfunc_end6
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt6vectorIiSaIiEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPiS1_EEEEvS6_T_S7_St20forward_iterator_tag,"axG",@progbits,_ZNSt6vectorIiSaIiEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPiS1_EEEEvS6_T_S7_St20forward_iterator_tag,comdat
	.weak	_ZNSt6vectorIiSaIiEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPiS1_EEEEvS6_T_S7_St20forward_iterator_tag # -- Begin function _ZNSt6vectorIiSaIiEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPiS1_EEEEvS6_T_S7_St20forward_iterator_tag
	.p2align	5
	.type	_ZNSt6vectorIiSaIiEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPiS1_EEEEvS6_T_S7_St20forward_iterator_tag,@function
_ZNSt6vectorIiSaIiEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPiS1_EEEEvS6_T_S7_St20forward_iterator_tag: # @_ZNSt6vectorIiSaIiEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPiS1_EEEEvS6_T_S7_St20forward_iterator_tag
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
	beq	$a3, $a2, .LBB7_13
# %bb.1:
	move	$s1, $a2
	move	$fp, $a1
	move	$s0, $a0
	ld.d	$s7, $a0, 16
	ld.d	$s2, $a0, 8
	sub.d	$s3, $a3, $a2
	sub.d	$a0, $s7, $s2
	srai.d	$s5, $s3, 2
	bgeu	$a0, $s3, .LBB7_14
# %bb.2:
	ld.d	$s4, $s0, 0
	sub.d	$a0, $s2, $s4
	srai.d	$a1, $a0, 2
	addi.w	$a0, $zero, -1
	lu52i.d	$a0, $a0, 511
	sub.d	$a2, $a0, $a1
	bltu	$a2, $s5, .LBB7_46
# %bb.3:                                # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
	sltu	$a2, $s5, $a1
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $a1, $a2
	or	$a2, $a2, $a3
	add.d	$a1, $a2, $a1
	sltu	$a2, $a1, $a2
	sltu	$a3, $a1, $a0
	maskeqz	$a1, $a1, $a3
	masknez	$a3, $a0, $a3
	or	$a1, $a1, $a3
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$s8, $a0, $a1
	beqz	$s8, .LBB7_28
# %bb.4:
	slli.d	$a0, $s8, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	sub.d	$s6, $fp, $s4
	ori	$a0, $zero, 5
	blt	$s6, $a0, .LBB7_29
.LBB7_5:
	move	$a0, $s5
	move	$a1, $s4
	move	$a2, $s6
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
.LBB7_6:
	ori	$a0, $zero, 5
	add.d	$s6, $s5, $s6
	blt	$s3, $a0, .LBB7_31
# %bb.7:
	move	$a0, $s6
	move	$a1, $s1
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
.LBB7_8:
	sub.d	$s1, $s2, $fp
	ori	$a0, $zero, 5
	add.d	$s2, $s6, $s3
	blt	$s1, $a0, .LBB7_33
# %bb.9:
	move	$a0, $s2
	move	$a1, $fp
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
.LBB7_10:
	add.d	$fp, $s2, $s1
	beqz	$s4, .LBB7_12
# %bb.11:
	sub.d	$a1, $s7, $s4
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_12:                               # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit
	st.d	$s5, $s0, 0
	st.d	$fp, $s0, 8
	alsl.d	$a0, $s8, $s5, 2
	st.d	$a0, $s0, 16
.LBB7_13:                               # %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit
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
.LBB7_14:
	sub.d	$s4, $s2, $fp
	srai.d	$s6, $s4, 2
	bgeu	$s5, $s6, .LBB7_21
# %bb.15:
	slli.d	$a0, $s5, 2
	ori	$a1, $zero, 5
	sub.d	$s4, $s2, $a0
	blt	$s3, $a1, .LBB7_35
# %bb.16:
	move	$a0, $s2
	move	$a1, $s4
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 8
.LBB7_17:                               # %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
	add.d	$a1, $a0, $s3
	sub.d	$a2, $s4, $fp
	srai.d	$a0, $a2, 2
	ori	$a3, $zero, 2
	st.d	$a1, $s0, 8
	blt	$a0, $a3, .LBB7_37
# %bb.18:
	slli.d	$a0, $a0, 2
	sub.d	$a0, $s2, $a0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
.LBB7_19:                               # %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit
	ori	$a0, $zero, 5
	blt	$s3, $a0, .LBB7_39
# %bb.20:
	move	$a0, $fp
	move	$a1, $s1
	move	$a2, $s3
	b	.LBB7_27
.LBB7_21:                               # %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit
	add.d	$s3, $s1, $s4
	sub.d	$a2, $a3, $s3
	ori	$a0, $zero, 5
	blt	$a2, $a0, .LBB7_40
# %bb.22:
	move	$a0, $s2
	move	$a1, $s3
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s0, 8
.LBB7_23:                               # %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_iET0_T_S8_S7_RSaIT1_E.exit
	sub.d	$a0, $s5, $s6
	alsl.d	$a0, $a0, $s2, 2
	ori	$a1, $zero, 5
	st.d	$a0, $s0, 8
	blt	$s4, $a1, .LBB7_42
# %bb.24:
	move	$a1, $fp
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 8
.LBB7_25:                               # %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit52
	add.d	$a0, $a0, $s4
	sub.d	$a2, $s3, $s1
	ori	$a1, $zero, 5
	st.d	$a0, $s0, 8
	blt	$a2, $a1, .LBB7_44
# %bb.26:
	move	$a0, $fp
	move	$a1, $s1
.LBB7_27:
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
	pcaddu18i	$t8, %call36(memmove)
	jr	$t8
.LBB7_28:
	move	$s5, $zero
	sub.d	$s6, $fp, $s4
	ori	$a0, $zero, 5
	bge	$s6, $a0, .LBB7_5
.LBB7_29:
	ori	$a0, $zero, 4
	bne	$s6, $a0, .LBB7_6
# %bb.30:
	ld.w	$a0, $s4, 0
	st.w	$a0, $s5, 0
	b	.LBB7_6
.LBB7_31:
	ori	$a0, $zero, 4
	bne	$s3, $a0, .LBB7_8
# %bb.32:
	ld.w	$a0, $s1, 0
	st.w	$a0, $s6, 0
	b	.LBB7_8
.LBB7_33:
	ori	$a0, $zero, 4
	bne	$s1, $a0, .LBB7_10
# %bb.34:
	ld.w	$a0, $fp, 0
	st.w	$a0, $s2, 0
	b	.LBB7_10
.LBB7_35:
	ori	$a1, $zero, 4
	move	$a0, $s2
	bne	$s3, $a1, .LBB7_17
# %bb.36:
	ld.w	$a0, $s4, 0
	st.w	$a0, $s2, 0
	move	$a0, $s2
	b	.LBB7_17
.LBB7_37:
	ori	$a0, $zero, 4
	bne	$a2, $a0, .LBB7_19
# %bb.38:
	ld.w	$a0, $fp, 0
	st.w	$a0, $s2, -4
	b	.LBB7_19
.LBB7_39:
	ori	$a0, $zero, 4
	bne	$s3, $a0, .LBB7_13
	b	.LBB7_45
.LBB7_40:
	ori	$a0, $zero, 4
	bne	$a2, $a0, .LBB7_23
# %bb.41:
	ld.w	$a0, $s3, 0
	st.w	$a0, $s2, 0
	b	.LBB7_23
.LBB7_42:
	ori	$a1, $zero, 4
	bne	$s4, $a1, .LBB7_25
# %bb.43:
	ld.w	$a1, $fp, 0
	st.w	$a1, $a0, 0
	b	.LBB7_25
.LBB7_44:
	ori	$a0, $zero, 4
	bne	$a2, $a0, .LBB7_13
.LBB7_45:
	ld.w	$a0, $s1, 0
	st.w	$a0, $fp, 0
	b	.LBB7_13
.LBB7_46:
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Lfunc_end7:
	.size	_ZNSt6vectorIiSaIiEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPiS1_EEEEvS6_T_S7_St20forward_iterator_tag, .Lfunc_end7-_ZNSt6vectorIiSaIiEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPiS1_EEEEvS6_T_S7_St20forward_iterator_tag
	.cfi_endproc
                                        # -- End function
	.type	.L.str.2,@object                # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"Error:  must specify meshtype"
	.size	.L.str.2, 30

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"pie"
	.size	.L.str.3, 4

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"rect"
	.size	.L.str.4, 5

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"hex"
	.size	.L.str.5, 4

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"Error:  invalid meshtype "
	.size	.L.str.6, 26

	.type	.L.str.7,@object                # @.str.7
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.7:
	.asciz	"meshparams"
	.size	.L.str.7, 11

	.type	.L.str.8,@object                # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"Error:  must specify meshparams"
	.size	.L.str.8, 32

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"Error:  meshparams must have <= 4 values"
	.size	.L.str.9, 41

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"Error:  meshparams values must be positive"
	.size	.L.str.10, 43

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"Error:  meshparams theta must be < 360"
	.size	.L.str.11, 39

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"vector::reserve"
	.size	.L.str.13, 16

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"vector::_M_realloc_append"
	.size	.L.str.14, 26

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"cannot create std::vector larger than max_size()"
	.size	.L.str.15, 49

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"vector::_M_range_insert"
	.size	.L.str.16, 24

	.globl	_ZN7GenMeshC1EPK9InputFile
	.type	_ZN7GenMeshC1EPK9InputFile,@function
_ZN7GenMeshC1EPK9InputFile = _ZN7GenMeshC2EPK9InputFile
	.globl	_ZN7GenMeshD1Ev
	.type	_ZN7GenMeshD1Ev,@function
_ZN7GenMeshD1Ev = _ZN7GenMeshD2Ev
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
