	.file	"string_util.cc"
                                        # Start of file scope inline assembly
	.globl	_ZSt21ios_base_library_initv

                                        # End of file scope inline assembly
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	3, 0x0                          # -- Begin function _ZN9benchmark19HumanReadableNumberB5cxx11EdNS_7Counter4OneKE
.LCPI0_0:
	.dword	0x408f400000000000              # double 1000
	.dword	0x4090000000000000              # double 1024
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI0_1:
	.dword	0x3f847ae147ae147b              # double 0.01
	.text
	.hidden	_ZN9benchmark19HumanReadableNumberB5cxx11EdNS_7Counter4OneKE
	.globl	_ZN9benchmark19HumanReadableNumberB5cxx11EdNS_7Counter4OneKE
	.p2align	5
	.type	_ZN9benchmark19HumanReadableNumberB5cxx11EdNS_7Counter4OneKE,@function
_ZN9benchmark19HumanReadableNumberB5cxx11EdNS_7Counter4OneKE: # @_ZN9benchmark19HumanReadableNumberB5cxx11EdNS_7Counter4OneKE
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
# %bb.0:
	addi.d	$sp, $sp, -528
	.cfi_def_cfa_offset 528
	st.d	$ra, $sp, 520                   # 8-byte Folded Spill
	st.d	$fp, $sp, 512                   # 8-byte Folded Spill
	st.d	$s0, $sp, 504                   # 8-byte Folded Spill
	st.d	$s1, $sp, 496                   # 8-byte Folded Spill
	st.d	$s2, $sp, 488                   # 8-byte Folded Spill
	st.d	$s3, $sp, 480                   # 8-byte Folded Spill
	st.d	$s4, $sp, 472                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 464                  # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 56, -64
	move	$s0, $a1
	fmov.d	$fs0, $fa0
	move	$fp, $a0
	addi.d	$s3, $sp, 24
	st.d	$s3, $sp, 8
	st.d	$zero, $sp, 16
	st.b	$zero, $sp, 24
.Ltmp0:                                 # EH_LABEL
	addi.d	$a0, $sp, 72
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.1:                                # %.noexc.i
	movgr2fr.d	$fa0, $zero
	fcmp.cule.d	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB0_4
# %bb.2:
	addi.d	$a0, $sp, 88
.Ltmp3:                                 # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp4:                                 # EH_LABEL
# %bb.3:                                # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i
	fneg.d	$fs0, $fs0
.LBB0_4:
	addi.d	$a0, $s0, -1024
	sltui	$s1, $a0, 1
	slli.d	$a0, $s1, 3
	pcalau12i	$a1, %pc_hi20(.LCPI0_0)
	addi.d	$a1, $a1, %pc_lo12(.LCPI0_0)
	fldx.d	$fa1, $a1, $a0
	vldi	$vr0, -784
	fadd.d	$fa2, $fa1, $fa0
	fcmp.cule.d	$fcc0, $fs0, $fa2
	bcnez	$fcc0, .LBB0_14
# %bb.5:                                # %.preheader.preheader.i.i
	fdiv.d	$fa0, $fs0, $fa1
	fcmp.cult.d	$fcc0, $fa2, $fa0
	ori	$s2, $zero, 1
	bceqz	$fcc0, .LBB0_28
# %bb.6:                                # %.preheader.1.i.i
	fdiv.d	$fa0, $fa0, $fa1
	fcmp.cle.d	$fcc0, $fa0, $fa2
	ori	$s2, $zero, 2
	bcnez	$fcc0, .LBB0_28
# %bb.7:                                # %.preheader.2.i.i
	fdiv.d	$fa0, $fa0, $fa1
	fcmp.cle.d	$fcc0, $fa0, $fa2
	ori	$s2, $zero, 3
	bcnez	$fcc0, .LBB0_28
# %bb.8:                                # %.preheader.3.i.i
	fdiv.d	$fa0, $fa0, $fa1
	fcmp.cle.d	$fcc0, $fa0, $fa2
	ori	$s2, $zero, 4
	bcnez	$fcc0, .LBB0_28
# %bb.9:                                # %.preheader.4.i.i
	fdiv.d	$fa0, $fa0, $fa1
	fcmp.cle.d	$fcc0, $fa0, $fa2
	ori	$s2, $zero, 5
	bcnez	$fcc0, .LBB0_28
# %bb.10:                               # %.preheader.5.i.i
	fdiv.d	$fa0, $fa0, $fa1
	fcmp.cle.d	$fcc0, $fa0, $fa2
	ori	$s2, $zero, 6
	bcnez	$fcc0, .LBB0_28
# %bb.11:                               # %.preheader.6.i.i
	fdiv.d	$fa0, $fa0, $fa1
	fcmp.cle.d	$fcc0, $fa0, $fa2
	ori	$s2, $zero, 7
	bcnez	$fcc0, .LBB0_28
# %bb.12:                               # %.preheader.7.i.i
	fdiv.d	$fa0, $fa0, $fa1
	fcmp.cle.d	$fcc0, $fa0, $fa2
	ori	$s2, $zero, 8
	bcnez	$fcc0, .LBB0_28
# %bb.13:                               # %.critedge.i.i
	addi.d	$a0, $sp, 88
.Ltmp25:                                # EH_LABEL
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp26:                                # EH_LABEL
	b	.LBB0_25
.LBB0_14:
	vldi	$vr0, -912
	fcmp.cule.d	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB0_24
# %bb.15:
	pcalau12i	$a0, %pc_hi20(.LCPI0_1)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI0_1)
	fcmp.cule.d	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB0_24
# %bb.16:                               # %.preheader129.preheader.i.i
	fmul.d	$fa0, $fa1, $fs0
	vldi	$vr2, -912
	fcmp.cult.d	$fcc0, $fa0, $fa2
	bceqz	$fcc0, .LBB0_38
# %bb.17:                               # %.preheader129.1.i.i
	fmul.d	$fa0, $fa1, $fa0
	fcmp.cle.d	$fcc0, $fa2, $fa0
	bcnez	$fcc0, .LBB0_47
# %bb.18:                               # %.preheader129.2.i.i
	fmul.d	$fa0, $fa1, $fa0
	fcmp.cle.d	$fcc0, $fa2, $fa0
	bcnez	$fcc0, .LBB0_50
# %bb.19:                               # %.preheader129.3.i.i
	fmul.d	$fa0, $fa1, $fa0
	fcmp.cle.d	$fcc0, $fa2, $fa0
	bcnez	$fcc0, .LBB0_51
# %bb.20:                               # %.preheader129.4.i.i
	fmul.d	$fa0, $fa1, $fa0
	fcmp.cle.d	$fcc0, $fa2, $fa0
	bcnez	$fcc0, .LBB0_52
# %bb.21:                               # %.preheader129.5.i.i
	fmul.d	$fa0, $fa1, $fa0
	fcmp.cle.d	$fcc0, $fa2, $fa0
	bcnez	$fcc0, .LBB0_53
# %bb.22:                               # %.preheader129.6.i.i
	fmul.d	$fa0, $fa1, $fa0
	fcmp.cle.d	$fcc0, $fa2, $fa0
	bcnez	$fcc0, .LBB0_54
# %bb.23:                               # %.preheader129.7.i.i
	fmul.d	$fa0, $fa1, $fa0
	vldi	$vr1, -912
	fcmp.cult.d	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB0_55
.LBB0_24:                               # %.invoke.i.i
	addi.d	$a0, $sp, 88
.Ltmp14:                                # EH_LABEL
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp15:                                # EH_LABEL
.LBB0_25:                               # %_ZNSolsEd.exit81.i.i
	ld.d	$a0, $sp, 136
	addi.d	$s0, $sp, 56
	st.d	$s0, $sp, 40
	st.d	$zero, $sp, 48
	st.b	$zero, $sp, 56
	beqz	$a0, .LBB0_33
# %bb.26:                               # %_ZNSolsEd.exit81.i.i
	ld.d	$a1, $sp, 120
	sltu	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	beqz	$a0, .LBB0_33
# %bb.27:
	ld.d	$a3, $sp, 128
	sub.d	$a4, $a0, $a3
.Ltmp28:                                # EH_LABEL
	addi.d	$a0, $sp, 40
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm)
	jirl	$ra, $ra, 0
.Ltmp29:                                # EH_LABEL
	b	.LBB0_34
.LBB0_28:
	addi.d	$a0, $sp, 88
.Ltmp17:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp18:                                # EH_LABEL
# %bb.29:                               # %_ZNSolsEd.exit.i.i
	ld.d	$a0, $sp, 136
	addi.d	$s0, $sp, 56
	st.d	$s0, $sp, 40
	st.d	$zero, $sp, 48
	st.b	$zero, $sp, 56
	beqz	$a0, .LBB0_32
# %bb.30:                               # %_ZNSolsEd.exit.i.i
	ld.d	$a1, $sp, 120
	sltu	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	beqz	$a0, .LBB0_32
# %bb.31:
	ld.d	$a3, $sp, 128
	sub.d	$a4, $a0, $a3
.Ltmp20:                                # EH_LABEL
	addi.d	$a0, $sp, 40
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm)
	jirl	$ra, $ra, 0
.Ltmp21:                                # EH_LABEL
	b	.LBB0_61
.LBB0_32:
	addi.d	$a1, $sp, 168
.Ltmp22:                                # EH_LABEL
	addi.d	$a0, $sp, 40
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_)
	jirl	$ra, $ra, 0
.Ltmp23:                                # EH_LABEL
	b	.LBB0_61
.LBB0_33:
	addi.d	$a1, $sp, 168
.Ltmp30:                                # EH_LABEL
	addi.d	$a0, $sp, 40
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_)
	jirl	$ra, $ra, 0
.Ltmp31:                                # EH_LABEL
.LBB0_34:                               # %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit116.i.i
	ld.d	$a0, $sp, 8
	beq	$a0, $s3, .LBB0_39
# %bb.35:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i117.i.i
	ld.d	$a1, $sp, 40
	beq	$a1, $s0, .LBB0_44
# %bb.36:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i118.i.i
	vld	$vr0, $sp, 48
	ld.d	$a2, $sp, 24
	st.d	$a1, $sp, 8
	vst	$vr0, $sp, 16
	beqz	$a0, .LBB0_41
# %bb.37:
	st.d	$a0, $sp, 40
	st.d	$a2, $sp, 56
	st.d	$zero, $sp, 48
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 40
	bne	$a0, $s0, .LBB0_42
	b	.LBB0_43
.LBB0_38:
	addi.w	$s2, $zero, -1
	b	.LBB0_56
.LBB0_39:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i123.i.i
	ld.d	$a1, $sp, 40
	beq	$a1, $s0, .LBB0_44
# %bb.40:                               # %.thread.i124.i.i
	vld	$vr0, $sp, 48
	st.d	$a1, $sp, 8
	vst	$vr0, $sp, 16
.LBB0_41:
	st.d	$s0, $sp, 40
	move	$a0, $s0
	st.d	$zero, $sp, 48
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 40
	beq	$a0, $s0, .LBB0_43
.LBB0_42:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126.i.i
	ld.d	$a1, $sp, 56
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_43:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128.i.i
	move	$s2, $zero
	b	.LBB0_69
.LBB0_44:
	ld.d	$a2, $sp, 48
	beqz	$a2, .LBB0_49
# %bb.45:
	ori	$a3, $zero, 1
	bne	$a2, $a3, .LBB0_48
# %bb.46:
	ld.b	$a1, $a1, 0
	st.b	$a1, $a0, 0
	b	.LBB0_49
.LBB0_47:
	addi.w	$s2, $zero, -2
	b	.LBB0_56
.LBB0_48:
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB0_49:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i121.i.i
	ld.d	$a0, $sp, 48
	ld.d	$a1, $sp, 8
	st.d	$a0, $sp, 16
	stx.b	$zero, $a1, $a0
	ld.d	$a0, $sp, 40
	st.d	$zero, $sp, 48
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 40
	bne	$a0, $s0, .LBB0_42
	b	.LBB0_43
.LBB0_50:
	addi.w	$s2, $zero, -3
	b	.LBB0_56
.LBB0_51:
	addi.w	$s2, $zero, -4
	b	.LBB0_56
.LBB0_52:
	addi.w	$s2, $zero, -5
	b	.LBB0_56
.LBB0_53:
	addi.w	$s2, $zero, -6
	b	.LBB0_56
.LBB0_54:
	addi.w	$s2, $zero, -7
	b	.LBB0_56
.LBB0_55:
	addi.w	$s2, $zero, -8
.LBB0_56:
	addi.d	$a0, $sp, 88
.Ltmp6:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp7:                                 # EH_LABEL
# %bb.57:                               # %_ZNSolsEd.exit82.i.i
	ld.d	$a0, $sp, 136
	addi.d	$s0, $sp, 56
	st.d	$s0, $sp, 40
	st.d	$zero, $sp, 48
	st.b	$zero, $sp, 56
	beqz	$a0, .LBB0_60
# %bb.58:                               # %_ZNSolsEd.exit82.i.i
	ld.d	$a1, $sp, 120
	sltu	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	beqz	$a0, .LBB0_60
# %bb.59:
	ld.d	$a3, $sp, 128
	sub.d	$a4, $a0, $a3
.Ltmp9:                                 # EH_LABEL
	addi.d	$a0, $sp, 40
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm)
	jirl	$ra, $ra, 0
.Ltmp10:                                # EH_LABEL
	b	.LBB0_61
.LBB0_60:
	addi.d	$a1, $sp, 168
.Ltmp11:                                # EH_LABEL
	addi.d	$a0, $sp, 40
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_)
	jirl	$ra, $ra, 0
.Ltmp12:                                # EH_LABEL
.LBB0_61:                               # %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.i
	ld.d	$a0, $sp, 8
	beq	$a0, $s3, .LBB0_65
# %bb.62:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
	ld.d	$a1, $sp, 40
	beq	$a1, $s0, .LBB0_80
# %bb.63:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i
	vld	$vr0, $sp, 48
	ld.d	$a2, $sp, 24
	st.d	$a1, $sp, 8
	vst	$vr0, $sp, 16
	beqz	$a0, .LBB0_67
# %bb.64:
	st.d	$a0, $sp, 40
	st.d	$a2, $sp, 56
	st.d	$zero, $sp, 48
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 40
	bne	$a0, $s0, .LBB0_68
	b	.LBB0_69
.LBB0_65:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
	ld.d	$a1, $sp, 40
	beq	$a1, $s0, .LBB0_80
# %bb.66:                               # %.thread.i.i.i
	vld	$vr0, $sp, 48
	st.d	$a1, $sp, 8
	vst	$vr0, $sp, 16
.LBB0_67:
	st.d	$s0, $sp, 40
	move	$a0, $s0
	st.d	$zero, $sp, 48
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 40
	beq	$a0, $s0, .LBB0_69
.LBB0_68:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
	ld.d	$a1, $sp, 56
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_69:                               # %.critedge78.i.i
	pcalau12i	$a0, %got_pc_hi20(_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE)
	ld.d	$s0, $a0, %got_pc_lo12(_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE)
	ld.d	$a0, $s0, 0
	st.d	$a0, $sp, 72
	ld.d	$a1, $s0, 64
	ld.d	$a0, $a0, -24
	ld.d	$a2, $s0, 72
	addi.d	$s4, $sp, 72
	stx.d	$a1, $a0, $s4
	st.d	$a2, $sp, 88
	pcalau12i	$a0, %got_pc_hi20(_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE)
	ld.d	$a1, $a0, %got_pc_lo12(_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE)
	ld.d	$a0, $sp, 168
	addi.d	$a1, $a1, 16
	addi.d	$a2, $sp, 184
	st.d	$a1, $sp, 96
	beq	$a0, $a2, .LBB0_71
# %bb.70:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
	ld.d	$a1, $sp, 184
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_71:
	pcalau12i	$a0, %got_pc_hi20(_ZTVSt15basic_streambufIcSt11char_traitsIcEE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTVSt15basic_streambufIcSt11char_traitsIcEE)
	addi.d	$a0, $a0, 16
	st.d	$a0, $sp, 96
	addi.d	$a0, $sp, 152
	pcaddu18i	$ra, %call36(_ZNSt6localeD1Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 16
	st.d	$a0, $sp, 72
	ld.d	$a1, $s0, 24
	ld.d	$a0, $a0, -24
	stx.d	$a1, $a0, $s4
	st.d	$zero, $sp, 80
	addi.d	$a0, $sp, 200
	pcaddu18i	$ra, %call36(_ZNSt8ios_baseD2Ev)
	jirl	$ra, $ra, 0
	beqz	$s2, .LBB0_79
# %bb.72:
	addi.d	$s0, $sp, 88
	slt	$a0, $zero, $s2
	addi.d	$a1, $s2, -1
	nor	$a2, $s2, $zero
	masknez	$a2, $a2, $a0
	maskeqz	$a1, $a1, $a0
	or	$a1, $a1, $a2
	pcalau12i	$a2, %pc_hi20(_ZN9benchmark12_GLOBAL__N_111kBigSIUnitsE)
	addi.d	$a2, $a2, %pc_lo12(_ZN9benchmark12_GLOBAL__N_111kBigSIUnitsE)
	masknez	$a2, $a2, $s1
	pcalau12i	$a3, %pc_hi20(_ZN9benchmark12_GLOBAL__N_112kBigIECUnitsE)
	addi.d	$a3, $a3, %pc_lo12(_ZN9benchmark12_GLOBAL__N_112kBigIECUnitsE)
	maskeqz	$a3, $a3, $s1
	or	$a2, $a3, $a2
	maskeqz	$a2, $a2, $a0
	pcalau12i	$a3, %pc_hi20(_ZN9benchmark12_GLOBAL__N_113kSmallSIUnitsE)
	addi.d	$a3, $a3, %pc_lo12(_ZN9benchmark12_GLOBAL__N_113kSmallSIUnitsE)
	masknez	$a0, $a3, $a0
	or	$a0, $a2, $a0
	slli.d	$a1, $a1, 3
	ldx.d	$s1, $a0, $a1
	st.d	$s0, $sp, 72
	beqz	$s1, .LBB0_96
# %bb.73:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ori	$a0, $zero, 16
	st.d	$s2, $sp, 40
	bltu	$s2, $a0, .LBB0_76
# %bb.74:                               # %.noexc.i22.i.i
.Ltmp33:                                # EH_LABEL
	addi.d	$a0, $sp, 72
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp34:                                # EH_LABEL
# %bb.75:                               # %.noexc10.i
	move	$s0, $a0
	ld.d	$a0, $sp, 40
	st.d	$s0, $sp, 72
	st.d	$a0, $sp, 88
.LBB0_76:                               # %._crit_edge.i.i21.i.i
	beqz	$s2, .LBB0_84
# %bb.77:                               # %._crit_edge.i.i21.i.i
	ori	$a0, $zero, 1
	bne	$s2, $a0, .LBB0_83
# %bb.78:
	ld.b	$a0, $s1, 0
	st.b	$a0, $s0, 0
	b	.LBB0_84
.LBB0_79:                               # %._crit_edge.i.i.i.i
	addi.d	$a0, $sp, 88
	st.d	$a0, $sp, 72
	st.d	$zero, $sp, 80
	st.b	$zero, $sp, 88
	b	.LBB0_85
.LBB0_80:
	ld.d	$a2, $sp, 48
	beqz	$a2, .LBB0_95
# %bb.81:
	ori	$a3, $zero, 1
	bne	$a2, $a3, .LBB0_94
# %bb.82:
	ld.b	$a1, $a1, 0
	st.b	$a1, $a0, 0
	b	.LBB0_95
.LBB0_83:
	move	$a0, $s0
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB0_84:
	ld.d	$a0, $sp, 40
	ld.d	$a1, $sp, 72
	st.d	$a0, $sp, 80
	stx.b	$zero, $a1, $a0
.LBB0_85:                               # %_ZN9benchmark12_GLOBAL__N_116ExponentToPrefixB5cxx11Elb.exit.i
	ld.d	$a4, $sp, 16
	ld.d	$a3, $sp, 8
.Ltmp38:                                # EH_LABEL
	addi.d	$a0, $sp, 72
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm)
	jirl	$ra, $ra, 0
.Ltmp39:                                # EH_LABEL
# %bb.86:                               # %.noexc12.i
	addi.d	$a1, $fp, 16
	st.d	$a1, $fp, 0
	ld.d	$a2, $a0, 0
	addi.d	$s0, $a0, 16
	beq	$a2, $s0, .LBB0_88
# %bb.87:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i
	st.d	$a2, $fp, 0
	ld.d	$a1, $a0, 16
	st.d	$a1, $fp, 16
	ld.d	$s1, $a0, 8
	b	.LBB0_89
.LBB0_88:
	ld.d	$s1, $a0, 8
	addi.d	$a2, $s1, 1
	move	$s2, $a0
	move	$a0, $a1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s2
.LBB0_89:
	st.d	$s1, $fp, 8
	st.d	$s0, $a0, 0
	ld.d	$a2, $sp, 72
	st.d	$zero, $a0, 8
	addi.d	$a1, $sp, 88
	st.b	$zero, $a0, 16
	beq	$a2, $a1, .LBB0_91
# %bb.90:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i
	ld.d	$a0, $sp, 88
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_91:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
	ld.d	$a0, $sp, 8
	beq	$a0, $s3, .LBB0_93
# %bb.92:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_93:                               # %_ZN9benchmark12_GLOBAL__N_128ToBinaryStringFullySpecifiedB5cxx11EdiNS_7Counter4OneKE.exit
	fld.d	$fs0, $sp, 464                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 472                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 480                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 488                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 496                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 504                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 512                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 520                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 528
	ret
.LBB0_94:
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB0_95:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i
	ld.d	$a0, $sp, 48
	ld.d	$a1, $sp, 8
	st.d	$a0, $sp, 16
	stx.b	$zero, $a1, $a0
	ld.d	$a0, $sp, 40
	st.d	$zero, $sp, 48
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 40
	bne	$a0, $s0, .LBB0_68
	b	.LBB0_69
.LBB0_96:                               # %.noexc23.i.i
.Ltmp35:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(_ZSt19__throw_logic_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp36:                                # EH_LABEL
# %bb.97:                               # %.noexc9.i
.LBB0_98:
.Ltmp27:                                # EH_LABEL
	b	.LBB0_108
.LBB0_99:
.Ltmp13:                                # EH_LABEL
	b	.LBB0_104
.LBB0_100:
.Ltmp8:                                 # EH_LABEL
	b	.LBB0_108
.LBB0_101:
.Ltmp16:                                # EH_LABEL
	b	.LBB0_108
.LBB0_102:
.Ltmp32:                                # EH_LABEL
	b	.LBB0_104
.LBB0_103:
.Ltmp24:                                # EH_LABEL
.LBB0_104:
	ld.d	$a2, $sp, 40
	move	$fp, $a0
	beq	$a2, $s0, .LBB0_109
# %bb.105:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
	ld.d	$a0, $sp, 56
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB0_109
.LBB0_106:
.Ltmp19:                                # EH_LABEL
	b	.LBB0_108
.LBB0_107:
.Ltmp5:                                 # EH_LABEL
.LBB0_108:
	move	$fp, $a0
.LBB0_109:
	addi.d	$a0, $sp, 72
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 8
	beq	$a0, $s3, .LBB0_113
	b	.LBB0_116
.LBB0_110:
.Ltmp37:                                # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s3, .LBB0_113
	b	.LBB0_116
.LBB0_111:
.Ltmp40:                                # EH_LABEL
	ld.d	$a2, $sp, 72
	addi.d	$a1, $sp, 88
	move	$fp, $a0
	bne	$a2, $a1, .LBB0_114
# %bb.112:                              # %.body.i
	ld.d	$a0, $sp, 8
	bne	$a0, $s3, .LBB0_116
.LBB0_113:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.i
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB0_114:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18.i
	ld.d	$a0, $sp, 88
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 8
	beq	$a0, $s3, .LBB0_113
	b	.LBB0_116
.LBB0_115:
.Ltmp2:                                 # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s3, .LBB0_113
.LBB0_116:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21.i
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	_ZN9benchmark19HumanReadableNumberB5cxx11EdNS_7Counter4OneKE, .Lfunc_end0-_ZN9benchmark19HumanReadableNumberB5cxx11EdNS_7Counter4OneKE
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
	.uleb128 .Ltmp3-.Lfunc_begin0           # >> Call Site 2 <<
	.uleb128 .Ltmp4-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp4
	.uleb128 .Ltmp5-.Lfunc_begin0           #     jumps to .Ltmp5
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp25-.Lfunc_begin0          # >> Call Site 3 <<
	.uleb128 .Ltmp26-.Ltmp25                #   Call between .Ltmp25 and .Ltmp26
	.uleb128 .Ltmp27-.Lfunc_begin0          #     jumps to .Ltmp27
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp14-.Lfunc_begin0          # >> Call Site 4 <<
	.uleb128 .Ltmp15-.Ltmp14                #   Call between .Ltmp14 and .Ltmp15
	.uleb128 .Ltmp16-.Lfunc_begin0          #     jumps to .Ltmp16
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp28-.Lfunc_begin0          # >> Call Site 5 <<
	.uleb128 .Ltmp29-.Ltmp28                #   Call between .Ltmp28 and .Ltmp29
	.uleb128 .Ltmp32-.Lfunc_begin0          #     jumps to .Ltmp32
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp17-.Lfunc_begin0          # >> Call Site 6 <<
	.uleb128 .Ltmp18-.Ltmp17                #   Call between .Ltmp17 and .Ltmp18
	.uleb128 .Ltmp19-.Lfunc_begin0          #     jumps to .Ltmp19
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp20-.Lfunc_begin0          # >> Call Site 7 <<
	.uleb128 .Ltmp23-.Ltmp20                #   Call between .Ltmp20 and .Ltmp23
	.uleb128 .Ltmp24-.Lfunc_begin0          #     jumps to .Ltmp24
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp30-.Lfunc_begin0          # >> Call Site 8 <<
	.uleb128 .Ltmp31-.Ltmp30                #   Call between .Ltmp30 and .Ltmp31
	.uleb128 .Ltmp32-.Lfunc_begin0          #     jumps to .Ltmp32
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp31-.Lfunc_begin0          # >> Call Site 9 <<
	.uleb128 .Ltmp6-.Ltmp31                 #   Call between .Ltmp31 and .Ltmp6
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp6-.Lfunc_begin0           # >> Call Site 10 <<
	.uleb128 .Ltmp7-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp7
	.uleb128 .Ltmp8-.Lfunc_begin0           #     jumps to .Ltmp8
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp9-.Lfunc_begin0           # >> Call Site 11 <<
	.uleb128 .Ltmp12-.Ltmp9                 #   Call between .Ltmp9 and .Ltmp12
	.uleb128 .Ltmp13-.Lfunc_begin0          #     jumps to .Ltmp13
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp12-.Lfunc_begin0          # >> Call Site 12 <<
	.uleb128 .Ltmp33-.Ltmp12                #   Call between .Ltmp12 and .Ltmp33
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp33-.Lfunc_begin0          # >> Call Site 13 <<
	.uleb128 .Ltmp34-.Ltmp33                #   Call between .Ltmp33 and .Ltmp34
	.uleb128 .Ltmp37-.Lfunc_begin0          #     jumps to .Ltmp37
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp34-.Lfunc_begin0          # >> Call Site 14 <<
	.uleb128 .Ltmp38-.Ltmp34                #   Call between .Ltmp34 and .Ltmp38
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp38-.Lfunc_begin0          # >> Call Site 15 <<
	.uleb128 .Ltmp39-.Ltmp38                #   Call between .Ltmp38 and .Ltmp39
	.uleb128 .Ltmp40-.Lfunc_begin0          #     jumps to .Ltmp40
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp39-.Lfunc_begin0          # >> Call Site 16 <<
	.uleb128 .Ltmp35-.Ltmp39                #   Call between .Ltmp39 and .Ltmp35
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp35-.Lfunc_begin0          # >> Call Site 17 <<
	.uleb128 .Ltmp36-.Ltmp35                #   Call between .Ltmp35 and .Ltmp36
	.uleb128 .Ltmp37-.Lfunc_begin0          #     jumps to .Ltmp37
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp36-.Lfunc_begin0          # >> Call Site 18 <<
	.uleb128 .Lfunc_end0-.Ltmp36            #   Call between .Ltmp36 and .Lfunc_end0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.hidden	_ZN9benchmark9StrFormatB5cxx11EPKcz # -- Begin function _ZN9benchmark9StrFormatB5cxx11EPKcz
	.globl	_ZN9benchmark9StrFormatB5cxx11EPKcz
	.p2align	5
	.type	_ZN9benchmark9StrFormatB5cxx11EPKcz,@function
_ZN9benchmark9StrFormatB5cxx11EPKcz:    # @_ZN9benchmark9StrFormatB5cxx11EPKcz
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception1
# %bb.0:
	addi.d	$sp, $sp, -384
	.cfi_def_cfa_offset 384
	st.d	$ra, $sp, 328                   # 8-byte Folded Spill
	st.d	$fp, $sp, 320                   # 8-byte Folded Spill
	st.d	$s0, $sp, 312                   # 8-byte Folded Spill
	st.d	$s1, $sp, 304                   # 8-byte Folded Spill
	st.d	$s2, $sp, 296                   # 8-byte Folded Spill
	.cfi_offset 1, -56
	.cfi_offset 22, -64
	.cfi_offset 23, -72
	.cfi_offset 24, -80
	.cfi_offset 25, -88
	move	$s1, $a1
	move	$fp, $a0
	st.d	$a7, $sp, 376
	st.d	$a6, $sp, 368
	st.d	$a5, $sp, 360
	st.d	$a4, $sp, 352
	st.d	$a3, $sp, 344
	st.d	$a2, $sp, 336
	addi.d	$a0, $sp, 336
	st.d	$a0, $sp, 8
	st.d	$a0, $sp, 280
	st.d	$a0, $sp, 272
	addi.d	$a0, $sp, 16
	ori	$a1, $zero, 256
	addi.d	$a3, $sp, 336
	move	$a2, $s1
	pcaddu18i	$ra, %call36(vsnprintf)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_7
# %bb.1:
	ori	$a1, $zero, 255
	bltu	$a1, $a0, .LBB1_8
# %bb.2:
	addi.d	$s1, $fp, 16
	st.d	$s1, $fp, 0
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a0, $zero, 16
	st.d	$s0, $sp, 288
	bltu	$s0, $a0, .LBB1_4
# %bb.3:                                # %.noexc.i.i
	addi.d	$a1, $sp, 288
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 288
	move	$s1, $a0
	st.d	$a0, $fp, 0
	st.d	$a1, $fp, 16
.LBB1_4:                                # %._crit_edge.i.i.i
	beqz	$s0, .LBB1_15
# %bb.5:                                # %._crit_edge.i.i.i
	ori	$a0, $zero, 1
	bne	$s0, $a0, .LBB1_14
# %bb.6:
	ld.b	$a0, $sp, 16
	st.b	$a0, $s1, 0
	b	.LBB1_15
.LBB1_7:
	addi.d	$a0, $fp, 16
	st.d	$a0, $fp, 0
	st.d	$zero, $fp, 8
	st.b	$zero, $fp, 16
	b	.LBB1_18
.LBB1_8:
	addi.d	$s2, $a0, 1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 280
	move	$s0, $a0
	move	$a1, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(vsnprintf)
	jirl	$ra, $ra, 0
	addi.d	$s2, $fp, 16
	st.d	$s2, $fp, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ori	$a0, $zero, 16
	st.d	$s1, $sp, 288
	bltu	$s1, $a0, .LBB1_11
# %bb.9:                                # %.noexc.i13.i
.Ltmp41:                                # EH_LABEL
	addi.d	$a1, $sp, 288
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp42:                                # EH_LABEL
# %bb.10:                               # %.noexc15.i
	move	$s2, $a0
	ld.d	$a0, $sp, 288
	st.d	$s2, $fp, 0
	st.d	$a0, $fp, 16
.LBB1_11:                               # %._crit_edge.i.i12.i
	beqz	$s1, .LBB1_17
# %bb.12:                               # %._crit_edge.i.i12.i
	ori	$a0, $zero, 1
	bne	$s1, $a0, .LBB1_16
# %bb.13:
	ld.b	$a0, $s0, 0
	st.b	$a0, $s2, 0
	b	.LBB1_17
.LBB1_14:
	addi.d	$a1, $sp, 16
	move	$a0, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB1_15:
	ld.d	$a0, $sp, 288
	ld.d	$a1, $fp, 0
	st.d	$a0, $fp, 8
	stx.b	$zero, $a1, $a0
	b	.LBB1_18
.LBB1_16:
	move	$a0, $s2
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB1_17:                               # %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit.i
	ld.d	$a0, $sp, 288
	ld.d	$a1, $fp, 0
	st.d	$a0, $fp, 8
	stx.b	$zero, $a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB1_18:                               # %_ZN9benchmark12_GLOBAL__N_112StrFormatImpB5cxx11EPKcPv.exit
	ld.d	$s2, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 320                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 328                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 384
	ret
.LBB1_19:                               # %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit19.i
.Ltmp43:                                # EH_LABEL
	move	$fp, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	_ZN9benchmark9StrFormatB5cxx11EPKcz, .Lfunc_end1-_ZN9benchmark9StrFormatB5cxx11EPKcz
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
	.uleb128 .Lfunc_begin1-.Lfunc_begin1    # >> Call Site 1 <<
	.uleb128 .Ltmp41-.Lfunc_begin1          #   Call between .Lfunc_begin1 and .Ltmp41
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp41-.Lfunc_begin1          # >> Call Site 2 <<
	.uleb128 .Ltmp42-.Ltmp41                #   Call between .Ltmp41 and .Ltmp42
	.uleb128 .Ltmp43-.Lfunc_begin1          #     jumps to .Ltmp43
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp42-.Lfunc_begin1          # >> Call Site 3 <<
	.uleb128 .Lfunc_end1-.Ltmp42            #   Call between .Ltmp42 and .Lfunc_end1
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.hidden	_ZN9benchmark8StrSplitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc # -- Begin function _ZN9benchmark8StrSplitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc
	.globl	_ZN9benchmark8StrSplitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc
	.p2align	5
	.type	_ZN9benchmark8StrSplitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc,@function
_ZN9benchmark8StrSplitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc: # @_ZN9benchmark8StrSplitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception2
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
	move	$s0, $a1
	ld.d	$a1, $a1, 8
	move	$fp, $a0
	beqz	$a1, .LBB2_23
# %bb.1:
	move	$s1, $a2
	st.d	$zero, $fp, 16
	vrepli.b	$vr0, 0
	vst	$vr0, $fp, 0
	move	$a0, $s0
	move	$a1, $a2
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm)
	jirl	$ra, $ra, 0
	addi.w	$s5, $zero, -1
	beq	$a0, $s5, .LBB2_24
# %bb.2:                                # %.lr.ph
	move	$s3, $zero
	addi.d	$s2, $sp, 32
	ori	$s6, $zero, 16
	b	.LBB2_6
	.p2align	4, , 16
.LBB2_3:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
                                        #   in Loop: Header=BB2_6 Depth=1
	st.d	$a1, $s3, 0
	ld.d	$a0, $sp, 32
	ld.d	$s4, $sp, 24
	st.d	$a0, $s3, 16
.LBB2_4:                                # %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread
                                        #   in Loop: Header=BB2_6 Depth=1
	st.d	$s4, $s3, 8
	ld.d	$a0, $fp, 8
	st.d	$s2, $sp, 16
	st.d	$zero, $sp, 24
	addi.d	$a0, $a0, 32
	st.d	$a0, $fp, 8
.LBB2_5:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
                                        #   in Loop: Header=BB2_6 Depth=1
	addi.d	$s3, $s8, 1
	move	$a0, $s0
	move	$a1, $s1
	move	$a2, $s3
	pcaddu18i	$ra, %call36(_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm)
	jirl	$ra, $ra, 0
	beq	$a0, $s5, .LBB2_20
.LBB2_6:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $s0, 8
	bltu	$a3, $s3, .LBB2_41
# %bb.7:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
                                        #   in Loop: Header=BB2_6 Depth=1
	move	$s8, $a0
	sub.d	$a0, $a0, $s3
	st.d	$s2, $sp, 16
	ld.d	$s7, $s0, 0
	sub.d	$a1, $a3, $s3
	sltu	$a2, $a0, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$s4, $a0, $a1
	st.d	$s4, $sp, 48
	move	$a0, $s2
	bltu	$s4, $s6, .LBB2_10
# %bb.8:                                # %.noexc10.i.i
                                        #   in Loop: Header=BB2_6 Depth=1
.Ltmp44:                                # EH_LABEL
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 48
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp45:                                # EH_LABEL
# %bb.9:                                # %.noexc25
                                        #   in Loop: Header=BB2_6 Depth=1
	ld.d	$a1, $sp, 48
	st.d	$a0, $sp, 16
	st.d	$a1, $sp, 32
.LBB2_10:                               # %._crit_edge.i.i.i
                                        #   in Loop: Header=BB2_6 Depth=1
	beqz	$s4, .LBB2_14
# %bb.11:                               # %._crit_edge.i.i.i
                                        #   in Loop: Header=BB2_6 Depth=1
	add.d	$a1, $s7, $s3
	ori	$a2, $zero, 1
	bne	$s4, $a2, .LBB2_13
# %bb.12:                               #   in Loop: Header=BB2_6 Depth=1
	ld.b	$a1, $a1, 0
	st.b	$a1, $a0, 0
	b	.LBB2_14
	.p2align	4, , 16
.LBB2_13:                               #   in Loop: Header=BB2_6 Depth=1
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB2_14:                               #   in Loop: Header=BB2_6 Depth=1
	ld.d	$a0, $sp, 48
	ld.d	$a1, $sp, 16
	st.d	$a0, $sp, 24
	stx.b	$zero, $a1, $a0
	ld.d	$s3, $fp, 8
	ld.d	$a0, $fp, 16
	beq	$s3, $a0, .LBB2_17
# %bb.15:                               #   in Loop: Header=BB2_6 Depth=1
	addi.d	$a0, $s3, 16
	st.d	$a0, $s3, 0
	ld.d	$a1, $sp, 16
	bne	$a1, $s2, .LBB2_3
# %bb.16:                               #   in Loop: Header=BB2_6 Depth=1
	ld.d	$s4, $sp, 24
	addi.d	$a2, $s4, 1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	b	.LBB2_4
	.p2align	4, , 16
.LBB2_17:                               #   in Loop: Header=BB2_6 Depth=1
.Ltmp47:                                # EH_LABEL
	addi.d	$a1, $sp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_appendIJS5_EEEvDpOT_)
	jirl	$ra, $ra, 0
.Ltmp48:                                # EH_LABEL
# %bb.18:                               # %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit
                                        #   in Loop: Header=BB2_6 Depth=1
	ld.d	$a0, $sp, 16
	beq	$a0, $s2, .LBB2_5
# %bb.19:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
                                        #   in Loop: Header=BB2_6 Depth=1
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB2_5
.LBB2_20:                               # %._crit_edge
	ld.d	$a3, $s0, 8
	bltu	$s8, $a3, .LBB2_25
# %bb.21:
.Ltmp50:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcalau12i	$a1, %pc_hi20(.L.str.29)
	addi.d	$a1, $a1, %pc_lo12(.L.str.29)
	move	$a2, $s3
	pcaddu18i	$ra, %call36(_ZSt24__throw_out_of_range_fmtPKcz)
	jirl	$ra, $ra, 0
.Ltmp51:                                # EH_LABEL
# %bb.22:                               # %.noexc34
.LBB2_23:
	st.d	$zero, $fp, 16
	vrepli.b	$vr0, 0
	vst	$vr0, $fp, 0
	b	.LBB2_40
.LBB2_24:                               # %._crit_edge.thread
	ld.d	$a3, $s0, 8
	move	$s3, $zero
.LBB2_25:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i30
	addi.d	$s1, $sp, 32
	st.d	$s1, $sp, 16
	ld.d	$s2, $s0, 0
	sub.d	$s0, $a3, $s3
	ori	$a1, $zero, 16
	st.d	$s0, $sp, 48
	move	$a0, $s1
	bltu	$s0, $a1, .LBB2_28
# %bb.26:                               # %.noexc10.i.i33
.Ltmp55:                                # EH_LABEL
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 48
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp56:                                # EH_LABEL
# %bb.27:                               # %.noexc35
	ld.d	$a1, $sp, 48
	st.d	$a0, $sp, 16
	st.d	$a1, $sp, 32
.LBB2_28:                               # %._crit_edge.i.i.i32
	beqz	$s0, .LBB2_32
# %bb.29:                               # %._crit_edge.i.i.i32
	ori	$a2, $zero, 1
	add.d	$a1, $s2, $s3
	bne	$s0, $a2, .LBB2_31
# %bb.30:
	ld.b	$a1, $a1, 0
	st.b	$a1, $a0, 0
	b	.LBB2_32
.LBB2_31:
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB2_32:
	ld.d	$a0, $sp, 48
	ld.d	$a1, $sp, 16
	st.d	$a0, $sp, 24
	stx.b	$zero, $a1, $a0
	ld.d	$s0, $fp, 8
	ld.d	$a0, $fp, 16
	beq	$s0, $a0, .LBB2_35
# %bb.33:
	addi.d	$a0, $s0, 16
	st.d	$a0, $s0, 0
	ld.d	$a1, $sp, 16
	beq	$a1, $s1, .LBB2_38
# %bb.34:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i38
	st.d	$a1, $s0, 0
	ld.d	$a0, $sp, 32
	ld.d	$s2, $sp, 24
	st.d	$a0, $s0, 16
	b	.LBB2_39
.LBB2_35:
.Ltmp58:                                # EH_LABEL
	addi.d	$a1, $sp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_appendIJS5_EEEvDpOT_)
	jirl	$ra, $ra, 0
.Ltmp59:                                # EH_LABEL
# %bb.36:                               # %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit41
	ld.d	$a0, $sp, 16
	beq	$a0, $s1, .LBB2_40
# %bb.37:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB2_40
.LBB2_38:
	ld.d	$s2, $sp, 24
	addi.d	$a2, $s2, 1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB2_39:                               # %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit41.thread
	st.d	$s2, $s0, 8
	ld.d	$a0, $fp, 8
	st.d	$zero, $sp, 24
	addi.d	$a0, $a0, 32
	st.d	$a0, $fp, 8
.LBB2_40:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44
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
.LBB2_41:
.Ltmp52:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcalau12i	$a1, %pc_hi20(.L.str.29)
	addi.d	$a1, $a1, %pc_lo12(.L.str.29)
	move	$a2, $s3
	pcaddu18i	$ra, %call36(_ZSt24__throw_out_of_range_fmtPKcz)
	jirl	$ra, $ra, 0
.Ltmp53:                                # EH_LABEL
# %bb.42:                               # %.noexc
.LBB2_43:
.Ltmp60:                                # EH_LABEL
	ld.d	$a2, $sp, 16
	move	$s0, $a0
	bne	$a2, $s1, .LBB2_46
	b	.LBB2_50
.LBB2_44:
.Ltmp57:                                # EH_LABEL
	b	.LBB2_48
.LBB2_45:
.Ltmp49:                                # EH_LABEL
	ld.d	$a2, $sp, 16
	move	$s0, $a0
	beq	$a2, $s2, .LBB2_50
.LBB2_46:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45
	ld.d	$a0, $sp, 32
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB2_47:                               # %.loopexit
.Ltmp46:                                # EH_LABEL
.LBB2_48:                               # %.loopexit
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB2_49:                               # %.loopexit.split-lp
.Ltmp54:                                # EH_LABEL
	move	$s0, $a0
.LBB2_50:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	_ZN9benchmark8StrSplitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc, .Lfunc_end2-_ZN9benchmark8StrSplitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table2:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Lfunc_begin2-.Lfunc_begin2    # >> Call Site 1 <<
	.uleb128 .Ltmp44-.Lfunc_begin2          #   Call between .Lfunc_begin2 and .Ltmp44
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp44-.Lfunc_begin2          # >> Call Site 2 <<
	.uleb128 .Ltmp45-.Ltmp44                #   Call between .Ltmp44 and .Ltmp45
	.uleb128 .Ltmp46-.Lfunc_begin2          #     jumps to .Ltmp46
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp45-.Lfunc_begin2          # >> Call Site 3 <<
	.uleb128 .Ltmp47-.Ltmp45                #   Call between .Ltmp45 and .Ltmp47
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp47-.Lfunc_begin2          # >> Call Site 4 <<
	.uleb128 .Ltmp48-.Ltmp47                #   Call between .Ltmp47 and .Ltmp48
	.uleb128 .Ltmp49-.Lfunc_begin2          #     jumps to .Ltmp49
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp48-.Lfunc_begin2          # >> Call Site 5 <<
	.uleb128 .Ltmp50-.Ltmp48                #   Call between .Ltmp48 and .Ltmp50
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp50-.Lfunc_begin2          # >> Call Site 6 <<
	.uleb128 .Ltmp56-.Ltmp50                #   Call between .Ltmp50 and .Ltmp56
	.uleb128 .Ltmp57-.Lfunc_begin2          #     jumps to .Ltmp57
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp56-.Lfunc_begin2          # >> Call Site 7 <<
	.uleb128 .Ltmp58-.Ltmp56                #   Call between .Ltmp56 and .Ltmp58
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp58-.Lfunc_begin2          # >> Call Site 8 <<
	.uleb128 .Ltmp59-.Ltmp58                #   Call between .Ltmp58 and .Ltmp59
	.uleb128 .Ltmp60-.Lfunc_begin2          #     jumps to .Ltmp60
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp59-.Lfunc_begin2          # >> Call Site 9 <<
	.uleb128 .Ltmp52-.Ltmp59                #   Call between .Ltmp59 and .Ltmp52
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp52-.Lfunc_begin2          # >> Call Site 10 <<
	.uleb128 .Ltmp53-.Ltmp52                #   Call between .Ltmp52 and .Ltmp53
	.uleb128 .Ltmp54-.Lfunc_begin2          #     jumps to .Ltmp54
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp53-.Lfunc_begin2          # >> Call Site 11 <<
	.uleb128 .Lfunc_end2-.Ltmp53            #   Call between .Ltmp53 and .Lfunc_end2
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev,"axG",@progbits,_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev,comdat
	.hidden	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev # -- Begin function _ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev
	.weak	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev
	.p2align	5
	.type	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev,@function
_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev: # @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev
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
	ld.d	$a0, $a0, 0
	ld.d	$s0, $fp, 8
	beq	$a0, $s0, .LBB3_6
# %bb.1:                                # %.lr.ph.i.i.preheader
	addi.d	$s1, $a0, 16
	b	.LBB3_3
	.p2align	4, , 16
.LBB3_2:                                # %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
                                        #   in Loop: Header=BB3_3 Depth=1
	addi.d	$a0, $s1, 16
	addi.d	$s1, $s1, 32
	beq	$a0, $s0, .LBB3_5
.LBB3_3:                                # %.lr.ph.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, -16
	beq	$s1, $a0, .LBB3_2
# %bb.4:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
                                        #   in Loop: Header=BB3_3 Depth=1
	ld.d	$a1, $s1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB3_2
.LBB3_5:                                # %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split
	ld.d	$a0, $fp, 0
.LBB3_6:                                # %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit
	beqz	$a0, .LBB3_8
# %bb.7:
	ld.d	$a1, $fp, 16
	sub.d	$a1, $a1, $a0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB3_8:                                # %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end3:
	.size	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, .Lfunc_end3-_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_appendIJS5_EEEvDpOT_,"axG",@progbits,_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_appendIJS5_EEEvDpOT_,comdat
	.weak	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_appendIJS5_EEEvDpOT_ # -- Begin function _ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_appendIJS5_EEEvDpOT_
	.p2align	5
	.type	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_appendIJS5_EEEvDpOT_,@function
_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_appendIJS5_EEEvDpOT_: # @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_appendIJS5_EEEvDpOT_
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
	move	$fp, $a0
	ld.d	$s5, $a0, 8
	ld.d	$s0, $a0, 0
	sub.d	$s6, $s5, $s0
	addi.w	$a0, $zero, -32
	lu52i.d	$a0, $a0, 2047
	beq	$s6, $a0, .LBB4_14
# %bb.1:                                # %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
	move	$s3, $a1
	srai.d	$a0, $s6, 5
	ori	$a1, $zero, 1
	sltu	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a0, $a2
	or	$a1, $a2, $a1
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	addi.w	$a2, $zero, -1
	lu52i.d	$a2, $a2, 63
	sltu	$a3, $a0, $a2
	maskeqz	$a0, $a0, $a3
	masknez	$a3, $a2, $a3
	or	$a0, $a0, $a3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	slli.d	$s1, $a0, 5
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ld.d	$a1, $s3, 0
	add.d	$s7, $a0, $s6
	addi.d	$a0, $s7, 16
	addi.d	$s4, $s3, 16
	stx.d	$a0, $s2, $s6
	beq	$a1, $s4, .LBB4_3
# %bb.2:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
	ld.d	$a0, $s3, 16
	ld.d	$s6, $s3, 8
	st.d	$a1, $s7, 0
	st.d	$a0, $s7, 16
	b	.LBB4_4
.LBB4_3:
	ld.d	$s6, $s3, 8
	addi.d	$a2, $s6, 1
	move	$a1, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_4:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
	st.d	$s6, $s7, 8
	st.d	$s4, $s3, 0
	st.d	$zero, $s3, 8
	st.b	$zero, $s3, 16
	move	$s3, $s2
	beq	$s0, $s5, .LBB4_11
# %bb.5:                                # %.lr.ph.i.i.i.preheader
	move	$s4, $zero
	b	.LBB4_8
	.p2align	4, , 16
.LBB4_6:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
                                        #   in Loop: Header=BB4_8 Depth=1
	ld.d	$a0, $s3, 0
	ld.d	$s8, $s7, 8
	st.d	$a1, $s6, 0
	st.d	$a0, $s6, 16
.LBB4_7:                                # %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
                                        #   in Loop: Header=BB4_8 Depth=1
	st.d	$s8, $s6, 8
	stx.d	$s3, $s0, $s4
	st.d	$zero, $s7, 8
	addi.d	$s4, $s4, 32
	add.d	$a0, $s0, $s4
	st.b	$zero, $s3, 0
	beq	$a0, $s5, .LBB4_10
.LBB4_8:                                # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	add.d	$s6, $s2, $s4
	ldx.d	$a1, $s0, $s4
	add.d	$s7, $s0, $s4
	addi.d	$a0, $s6, 16
	addi.d	$s3, $s7, 16
	stx.d	$a0, $s2, $s4
	bne	$s3, $a1, .LBB4_6
# %bb.9:                                #   in Loop: Header=BB4_8 Depth=1
	ld.d	$s8, $s7, 8
	addi.d	$a2, $s8, 1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	b	.LBB4_7
.LBB4_10:                               # %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.loopexit
	add.d	$s3, $s2, $s4
.LBB4_11:                               # %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
	beqz	$s0, .LBB4_13
# %bb.12:
	ld.d	$a0, $fp, 16
	sub.d	$a1, $a0, $s0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_13:                               # %_ZZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_appendIJS5_EEEvDpOT_EN6_GuardD2Ev.exit
	addi.d	$a0, $s3, 32
	st.d	$s2, $fp, 0
	st.d	$a0, $fp, 8
	add.d	$a0, $s2, $s1
	st.d	$a0, $fp, 16
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
.LBB4_14:
	pcalau12i	$a0, %pc_hi20(.L.str.31)
	addi.d	$a0, $a0, %pc_lo12(.L.str.31)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Lfunc_end4:
	.size	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_appendIJS5_EEEvDpOT_, .Lfunc_end4-_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_appendIJS5_EEEvDpOT_
	.cfi_endproc
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	5                               # -- Begin function _GLOBAL__sub_I_string_util.cc
	.type	_GLOBAL__sub_I_string_util.cc,@function
_GLOBAL__sub_I_string_util.cc:          # @_GLOBAL__sub_I_string_util.cc
	.cfi_startproc
# %bb.0:
	pcaddu18i	$t8, %call36(_ZN9benchmark8internal17InitializeStreamsEv)
	jr	$t8
.Lfunc_end5:
	.size	_GLOBAL__sub_I_string_util.cc, .Lfunc_end5-_GLOBAL__sub_I_string_util.cc
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"-"
	.size	.L.str, 2

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"%s: __pos (which is %zu) > this->size() (which is %zu)"
	.size	.L.str.2, 55

	.type	_ZN9benchmark12_GLOBAL__N_112kBigIECUnitsE,@object # @_ZN9benchmark12_GLOBAL__N_112kBigIECUnitsE
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
_ZN9benchmark12_GLOBAL__N_112kBigIECUnitsE:
	.dword	.L.str.5
	.dword	.L.str.6
	.dword	.L.str.7
	.dword	.L.str.8
	.dword	.L.str.9
	.dword	.L.str.10
	.dword	.L.str.11
	.dword	.L.str.12
	.size	_ZN9benchmark12_GLOBAL__N_112kBigIECUnitsE, 64

	.type	_ZN9benchmark12_GLOBAL__N_111kBigSIUnitsE,@object # @_ZN9benchmark12_GLOBAL__N_111kBigSIUnitsE
	.p2align	3, 0x0
_ZN9benchmark12_GLOBAL__N_111kBigSIUnitsE:
	.dword	.L.str.13
	.dword	.L.str.14
	.dword	.L.str.15
	.dword	.L.str.16
	.dword	.L.str.17
	.dword	.L.str.18
	.dword	.L.str.19
	.dword	.L.str.20
	.size	_ZN9benchmark12_GLOBAL__N_111kBigSIUnitsE, 64

	.type	_ZN9benchmark12_GLOBAL__N_113kSmallSIUnitsE,@object # @_ZN9benchmark12_GLOBAL__N_113kSmallSIUnitsE
	.p2align	3, 0x0
_ZN9benchmark12_GLOBAL__N_113kSmallSIUnitsE:
	.dword	.L.str.21
	.dword	.L.str.22
	.dword	.L.str.23
	.dword	.L.str.24
	.dword	.L.str.25
	.dword	.L.str.26
	.dword	.L.str.27
	.dword	.L.str.28
	.size	_ZN9benchmark12_GLOBAL__N_113kSmallSIUnitsE, 64

	.type	.L.str.4,@object                # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"basic_string: construction from null is not valid"
	.size	.L.str.4, 50

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"Ki"
	.size	.L.str.5, 3

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"Mi"
	.size	.L.str.6, 3

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"Gi"
	.size	.L.str.7, 3

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"Ti"
	.size	.L.str.8, 3

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"Pi"
	.size	.L.str.9, 3

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"Ei"
	.size	.L.str.10, 3

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"Zi"
	.size	.L.str.11, 3

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"Yi"
	.size	.L.str.12, 3

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"k"
	.size	.L.str.13, 2

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"M"
	.size	.L.str.14, 2

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"G"
	.size	.L.str.15, 2

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"T"
	.size	.L.str.16, 2

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"P"
	.size	.L.str.17, 2

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"E"
	.size	.L.str.18, 2

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"Z"
	.size	.L.str.19, 2

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"Y"
	.size	.L.str.20, 2

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"m"
	.size	.L.str.21, 2

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"u"
	.size	.L.str.22, 2

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"n"
	.size	.L.str.23, 2

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"p"
	.size	.L.str.24, 2

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"f"
	.size	.L.str.25, 2

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"a"
	.size	.L.str.26, 2

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"z"
	.size	.L.str.27, 2

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"y"
	.size	.L.str.28, 2

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"basic_string::substr"
	.size	.L.str.29, 21

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"vector::_M_realloc_append"
	.size	.L.str.31, 26

	.section	.init_array,"aw",@init_array
	.p2align	3, 0x0
	.dword	_GLOBAL__sub_I_string_util.cc
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
	.addrsig_sym _GLOBAL__sub_I_string_util.cc
	.addrsig_sym _Unwind_Resume
