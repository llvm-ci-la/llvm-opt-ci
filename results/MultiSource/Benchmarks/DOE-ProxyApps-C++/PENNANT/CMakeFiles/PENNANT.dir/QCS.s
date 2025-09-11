	.file	"QCS.cc"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _ZN3QCSC2EPK9InputFileP5Hydro
.LCPI0_0:
	.dword	0x3ffaaaaaaaaaaaab              # double 1.6666666666666667
	.text
	.globl	_ZN3QCSC2EPK9InputFileP5Hydro
	.p2align	5
	.type	_ZN3QCSC2EPK9InputFileP5Hydro,@function
_ZN3QCSC2EPK9InputFileP5Hydro:          # @_ZN3QCSC2EPK9InputFileP5Hydro
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
# %bb.0:                                # %._crit_edge.i.i
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
	move	$s0, $a1
	move	$fp, $a0
	st.d	$a2, $a0, 0
	addi.d	$s1, $sp, 24
	st.d	$s1, $sp, 8
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ld.w	$a1, $a0, 0
	ld.h	$a0, $a0, 4
	st.w	$a1, $sp, 24
	st.h	$a0, $sp, 28
	ori	$a0, $zero, 6
	st.d	$a0, $sp, 16
	st.b	$zero, $sp, 30
.Ltmp0:                                 # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.LCPI0_0)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI0_0)
	addi.d	$a1, $sp, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNK9InputFile9getDoubleERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.1:
	ld.d	$a0, $sp, 8
	fst.d	$fa0, $fp, 8
	beq	$a0, $s1, .LBB0_3
# %bb.2:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_3:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	st.d	$s1, $sp, 8
	lu12i.w	$s2, 3
	ori	$a0, $s2, 369
	st.h	$a0, $sp, 24
	ori	$a0, $zero, 2
	st.d	$a0, $sp, 16
	st.b	$zero, $sp, 26
.Ltmp3:                                 # EH_LABEL
	movgr2fr.d	$fa0, $zero
	addi.d	$a1, $sp, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNK9InputFile9getDoubleERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd)
	jirl	$ra, $ra, 0
.Ltmp4:                                 # EH_LABEL
# %bb.4:
	ld.d	$a0, $sp, 8
	fst.d	$fa0, $fp, 16
	beq	$a0, $s1, .LBB0_6
# %bb.5:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_6:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22
	st.d	$s1, $sp, 8
	ori	$a0, $s2, 625
	st.h	$a0, $sp, 24
	ori	$a0, $zero, 2
	st.d	$a0, $sp, 16
	st.b	$zero, $sp, 26
.Ltmp6:                                 # EH_LABEL
	addi.d	$a1, $sp, 8
	vldi	$vr0, -1024
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNK9InputFile9getDoubleERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd)
	jirl	$ra, $ra, 0
.Ltmp7:                                 # EH_LABEL
# %bb.7:
	ld.d	$a0, $sp, 8
	fst.d	$fa0, $fp, 24
	beq	$a0, $s1, .LBB0_9
# %bb.8:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_9:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.LBB0_10:
.Ltmp8:                                 # EH_LABEL
	b	.LBB0_13
.LBB0_11:
.Ltmp5:                                 # EH_LABEL
	b	.LBB0_13
.LBB0_12:
.Ltmp2:                                 # EH_LABEL
.LBB0_13:
	ld.d	$a2, $sp, 8
	move	$fp, $a0
	beq	$a2, $s1, .LBB0_15
# %bb.14:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
	ld.d	$a0, $sp, 24
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_15:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	_ZN3QCSC2EPK9InputFileP5Hydro, .Lfunc_end0-_ZN3QCSC2EPK9InputFileP5Hydro
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
	.uleb128 .Ltmp6-.Ltmp4                  #   Call between .Ltmp4 and .Ltmp6
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp6-.Lfunc_begin0           # >> Call Site 5 <<
	.uleb128 .Ltmp7-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp7
	.uleb128 .Ltmp8-.Lfunc_begin0           #     jumps to .Ltmp8
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp7-.Lfunc_begin0           # >> Call Site 6 <<
	.uleb128 .Lfunc_end0-.Ltmp7             #   Call between .Ltmp7 and .Lfunc_end0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN3QCSD2Ev                     # -- Begin function _ZN3QCSD2Ev
	.p2align	5
	.type	_ZN3QCSD2Ev,@function
_ZN3QCSD2Ev:                            # @_ZN3QCSD2Ev
# %bb.0:
	ret
.Lfunc_end1:
	.size	_ZN3QCSD2Ev, .Lfunc_end1-_ZN3QCSD2Ev
                                        # -- End function
	.globl	_ZN3QCS9calcForceEP7double2ii   # -- Begin function _ZN3QCS9calcForceEP7double2ii
	.p2align	5
	.type	_ZN3QCS9calcForceEP7double2ii,@function
_ZN3QCS9calcForceEP7double2ii:          # @_ZN3QCS9calcForceEP7double2ii
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
	st.d	$s8, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a3
	move	$s0, $a2
	move	$s6, $a1
	move	$s1, $a0
	sub.w	$s8, $a3, $a2
	slli.d	$s7, $s8, 3
	move	$a0, $s7
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	slli.w	$a0, $s8, 1
	slli.d	$a0, $a0, 4
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	move	$a0, $s1
	move	$a1, $s2
	move	$a2, $s5
	move	$a3, $s3
	move	$a4, $s4
	move	$a5, $s7
	move	$a6, $s0
	move	$a7, $fp
	pcaddu18i	$ra, %call36(_ZN3QCS12setCornerDivEPdS0_S0_S0_S0_ii)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	move	$a1, $s5
	move	$a2, $s4
	move	$a3, $s3
	move	$a4, $s8
	move	$a5, $s0
	move	$a6, $fp
	pcaddu18i	$ra, %call36(_ZN3QCS11setQCnForceEPKdS1_S1_P7double2ii)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	move	$a1, $s2
	move	$a2, $s8
	move	$a3, $s7
	move	$a4, $s6
	move	$a5, $s0
	move	$a6, $fp
	pcaddu18i	$ra, %call36(_ZN3QCS8setForceEPKdPK7double2PdPS2_ii)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(_ZN3QCS10setVelDiffEii)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s8
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
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.Lfunc_end2:
	.size	_ZN3QCS9calcForceEP7double2ii, .Lfunc_end2-_ZN3QCS9calcForceEP7double2ii
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _ZN3QCS12setCornerDivEPdS0_S0_S0_S0_ii
.LCPI3_0:
	.dword	0x3d719799812dea11              # double 9.9999999999999998E-13
	.text
	.globl	_ZN3QCS12setCornerDivEPdS0_S0_S0_S0_ii
	.p2align	5
	.type	_ZN3QCS12setCornerDivEPdS0_S0_S0_S0_ii,@function
_ZN3QCS12setCornerDivEPdS0_S0_S0_S0_ii: # @_ZN3QCS12setCornerDivEPdS0_S0_S0_S0_ii
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
	fst.d	$fs5, $sp, 136                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 128                  # 8-byte Folded Spill
	fst.d	$fs7, $sp, 120                  # 8-byte Folded Spill
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
	ld.d	$a0, $a0, 0
	ld.d	$s4, $a0, 0
	move	$fp, $a5
	move	$s0, $a4
	move	$s1, $a3
	move	$s2, $a2
	move	$s3, $a1
	ld.w	$a1, $s4, 72
	ld.d	$s8, $a0, 248
	ld.d	$a2, $s4, 104
	ld.d	$a0, $s4, 264
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	ld.d	$a0, $s4, 272
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	st.d	$a6, $sp, 112                   # 8-byte Folded Spill
	slli.d	$a0, $a6, 2
	ldx.w	$s6, $a2, $a0
	slt	$a0, $a7, $a1
	st.d	$a2, $sp, 96                    # 8-byte Folded Spill
	st.d	$a7, $sp, 104                   # 8-byte Folded Spill
	alsl.d	$a1, $a7, $a2, 2
	addi.d	$a2, $s4, 68
	maskeqz	$a1, $a1, $a0
	masknez	$a0, $a2, $a0
	or	$a0, $a1, $a0
	ld.w	$s7, $a0, 0
	ld.d	$a0, $s4, 280
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ld.d	$a0, $s4, 376
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ld.d	$a0, $s4, 232
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	sub.d	$s5, $s7, $s6
	addi.w	$a0, $s5, 0
	slli.d	$a0, $a0, 4
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$t5, $s6
	beq	$s7, $s6, .LBB3_2
# %bb.1:                                # %.lr.ph.i.i.i.preheader
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	move	$a1, $zero
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	move	$s6, $t5
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$t5, $s6
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
.LBB3_2:                                # %_ZSt4fillIP7double2S0_EvT_S2_RKT0_.exit
	ld.d	$t2, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 104                   # 8-byte Folded Reload
	bge	$a6, $a7, .LBB3_5
# %bb.3:                                # %.lr.ph
	ld.d	$a2, $s4, 88
	alsl.d	$a1, $a6, $t2, 2
	alsl.d	$a2, $a6, $a2, 2
	sub.d	$a3, $a7, $a6
	.p2align	4, , 16
.LBB3_4:                                # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a1, 0
	ld.w	$a5, $a2, 0
	sub.w	$a4, $a4, $t5
	slli.d	$a5, $a5, 4
	slli.d	$a4, $a4, 4
	vldx	$vr0, $s8, $a5
	vldx	$vr1, $a0, $a4
	vfadd.d	$vr0, $vr0, $vr1
	vstx	$vr0, $a0, $a4
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, -1
	addi.d	$a1, $a1, 4
	bnez	$a3, .LBB3_4
.LBB3_5:                                # %.preheader359
	ld.d	$t3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$t4, $sp, 80                    # 8-byte Folded Reload
	ld.d	$t6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$t7, $sp, 64                    # 8-byte Folded Reload
	bge	$t5, $s7, .LBB3_8
# %bb.6:                                # %.lr.ph362.preheader
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	alsl.d	$a1, $t5, $a1, 2
	move	$a2, $a0
	.p2align	4, , 16
.LBB3_7:                                # %.lr.ph362
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a1, 0
	vld	$vr0, $a2, 0
	movgr2fr.w	$fa1, $a3
	ffint.d.w	$fa1, $fa1
	vreplvei.d	$vr1, $vr1, 0
	vfdiv.d	$vr0, $vr0, $vr1
	vst	$vr0, $a2, 0
	addi.d	$a1, $a1, 4
	addi.d	$s5, $s5, -1
	addi.d	$a2, $a2, 16
	bnez	$s5, .LBB3_7
.LBB3_8:                                # %.preheader
	bge	$a6, $a7, .LBB3_15
# %bb.9:                                # %.lr.ph364
	sub.d	$s6, $a7, $a6
	ld.d	$a1, $s4, 120
	ld.d	$t8, $s4, 96
	ld.d	$ra, $s4, 112
	ld.d	$a2, $s4, 88
	st.d	$a2, $sp, 104                   # 8-byte Folded Spill
	alsl.d	$s4, $a6, $a1, 2
	alsl.d	$s5, $a6, $t8, 2
	alsl.d	$s7, $a6, $ra, 2
	vldi	$vr23, -928
	pcalau12i	$a1, %pc_hi20(.LCPI3_0)
	fld.d	$ft12, $a1, %pc_lo12(.LCPI3_0)
	movgr2fr.d	$ft13, $zero
	vldi	$vr22, -944
	.p2align	4, , 16
.LBB3_10:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $s4, 0
	slli.d	$a1, $a1, 2
	ldx.w	$a2, $t2, $a1
	sub.w	$a3, $a2, $t5
	ldx.w	$a4, $t8, $a1
	ld.d	$a5, $sp, 104                   # 8-byte Folded Reload
	ldx.w	$a5, $a5, $a1
	ld.w	$a6, $s5, 0
	ldx.w	$a1, $ra, $a1
	ld.w	$a7, $s7, 0
	alsl.d	$t0, $a4, $s8, 4
	slli.d	$t1, $a4, 4
	fldx.d	$fs2, $s8, $t1
	fld.d	$fs3, $t0, 8
	alsl.d	$a4, $a4, $t3, 4
	fldx.d	$fa0, $t3, $t1
	fld.d	$fa1, $a4, 8
	alsl.d	$a4, $a6, $s8, 4
	slli.d	$a6, $a6, 4
	fldx.d	$ft1, $s8, $a6
	fld.d	$ft2, $a4, 8
	alsl.d	$a4, $a7, $t4, 4
	slli.d	$a6, $a7, 4
	fldx.d	$fa3, $t4, $a6
	fld.d	$fa4, $a4, 8
	alsl.d	$a4, $a3, $a0, 4
	alsl.d	$a6, $a2, $t6, 4
	slli.d	$a2, $a2, 4
	fldx.d	$fa5, $t6, $a2
	fld.d	$fa6, $a6, 8
	alsl.d	$a2, $a5, $s8, 4
	slli.d	$a5, $a5, 4
	fldx.d	$ft5, $s8, $a5
	fld.d	$ft6, $a2, 8
	alsl.d	$a2, $a1, $t4, 4
	slli.d	$a5, $a1, 4
	fldx.d	$fa7, $t4, $a5
	fld.d	$ft0, $a2, 8
	fsub.d	$ft4, $fa5, $fa0
	fsub.d	$ft3, $fa6, $fa1
	fsub.d	$fa2, $fa7, $fa3
	fsub.d	$ft7, $ft0, $fa4
	fneg.d	$ft8, $fa2
	fmul.d	$fa2, $ft3, $ft8
	fmadd.d	$fa2, $ft4, $ft7, $fa2
	fmul.d	$fa2, $fa2, $ft15
	fst.d	$fa2, $s3, 0
	slli.d	$a1, $a1, 3
	fldx.d	$ft9, $t7, $a1
	slli.d	$a1, $a7, 3
	fldx.d	$ft10, $t7, $a1
	slli.d	$a1, $a3, 4
	fldx.d	$fs4, $a0, $a1
	fld.d	$fs5, $a4, 8
	fcmp.clt.d	$fcc0, $ft10, $ft9
	fsel	$ft11, $ft9, $ft10, $fcc0
	fst.d	$ft11, $sp, 112                 # 8-byte Folded Spill
	fcmp.clt.d	$fcc0, $ft11, $ft12
	fmov.d	$ft11, $ft13
	bcnez	$fcc0, .LBB3_12
# %bb.11:                               #   in Loop: Header=BB3_10 Depth=1
	fsub.d	$ft11, $fa4, $fa1
	fmov.d	$fs0, $ft12
	fsub.d	$ft12, $fa3, $fa0
	fmov.d	$fs1, $ft13
	fsub.d	$ft13, $ft0, $fa1
	fsub.d	$ft14, $fa7, $fa0
	fmul.d	$ft11, $ft11, $ft13
	fmov.d	$ft13, $fs1
	fmadd.d	$ft11, $ft14, $ft12, $ft11
	vldi	$vr22, -944
	fmov.d	$ft12, $fs0
	vldi	$vr24, -1008
	fmul.d	$ft11, $ft11, $fs0
	fmul.d	$ft9, $ft9, $ft10
	fdiv.d	$ft11, $ft11, $ft9
.LBB3_12:                               #   in Loop: Header=BB3_10 Depth=1
	fadd.d	$ft1, $fs2, $ft1
	fadd.d	$ft2, $fs3, $ft2
	fmul.d	$fs7, $ft1, $ft15
	fmul.d	$fs0, $ft2, $ft15
	fadd.d	$ft1, $fs2, $ft5
	fadd.d	$ft2, $fs3, $ft6
	fmul.d	$fs1, $ft1, $ft15
	fmul.d	$fs6, $ft2, $ft15
	fst.d	$ft11, $fp, 0
	fsub.d	$ft1, $fs4, $fs2
	fsub.d	$ft2, $fs5, $fs3
	fmul.d	$ft2, $ft2, $ft8
	fmadd.d	$ft1, $ft1, $ft7, $ft2
	fsub.d	$ft2, $fs1, $fs7
	fsub.d	$ft5, $fs6, $fs0
	fneg.d	$ft4, $ft4
	fmul.d	$ft4, $ft5, $ft4
	fmadd.d	$ft2, $ft2, $ft3, $ft4
	fsub.d	$ft1, $ft1, $ft2
	fadd.d	$ft2, $fa2, $fa2
	fdiv.d	$ft3, $ft1, $ft2
	fadd.d	$ft1, $fa3, $fa5
	fadd.d	$ft2, $fa4, $fa6
	fsub.d	$ft1, $ft1, $fa0
	fsub.d	$ft2, $ft2, $fa1
	fsub.d	$ft1, $ft1, $fa7
	fsub.d	$ft2, $ft2, $ft0
	fmul.d	$ft1, $ft1, $ft15
	fmul.d	$ft2, $ft2, $ft15
	fadd.d	$fa5, $fa5, $fa7
	fadd.d	$fa6, $fa6, $ft0
	fsub.d	$fa0, $fa5, $fa0
	fsub.d	$fa1, $fa6, $fa1
	fsub.d	$fa0, $fa0, $fa3
	fsub.d	$fa1, $fa1, $fa4
	fmul.d	$fa0, $fa0, $ft15
	fmul.d	$fa1, $fa1, $ft15
	fmul.d	$fa3, $ft2, $ft2
	fmadd.d	$fa3, $ft1, $ft1, $fa3
	fsqrt.d	$fa3, $fa3
	fmul.d	$fa4, $fa1, $fa1
	fmadd.d	$fa4, $fa0, $fa0, $fa4
	fsqrt.d	$fa4, $fa4
	fadd.d	$fa5, $fs2, $fs7
	fadd.d	$fa6, $fs3, $fs0
	fadd.d	$fa5, $fa5, $fs4
	fadd.d	$fa6, $fa6, $fs5
	fadd.d	$fa5, $fa5, $fs1
	fadd.d	$fa6, $fa6, $fs6
	fmul.d	$fa5, $fa5, $ft14
	fmul.d	$fa6, $fa6, $ft14
	fmul.d	$fa7, $ft2, $fa6
	fmadd.d	$fa7, $ft1, $fa5, $fa7
	fmul.d	$fa7, $fa7, $fa4
	fabs.d	$fa7, $fa7
	fmul.d	$fa1, $fa6, $fa1
	fmadd.d	$fa0, $fa0, $fa5, $fa1
	fmul.d	$fa0, $fa3, $fa0
	fabs.d	$fa0, $fa0
	fcmp.clt.d	$fcc0, $fa0, $fa7
	fsel	$fa0, $fa4, $fa3, $fcc0
	fsel	$fa1, $fa3, $fa4, $fcc0
	fdiv.d	$fa0, $fa0, $fa1
	vldi	$vr1, -1008
	fmul.d	$fa1, $fa2, $fa1
	fmul.d	$fa1, $fa1, $fa0
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	fst.d	$ft3, $s2, 0
	bceqz	$fcc0, .LBB3_14
.LBB3_13:                               # %.split
                                        #   in Loop: Header=BB3_10 Depth=1
	fld.d	$fa1, $sp, 112                  # 8-byte Folded Reload
	fadd.d	$fa1, $fa1, $fa1
	fcmp.clt.d	$fcc0, $fa1, $fa0
	fsel	$fa0, $fa0, $fa1, $fcc0
	fadd.d	$fa1, $fs7, $fs4
	fadd.d	$fa2, $fs0, $fs5
	fsub.d	$fa1, $fa1, $fs2
	fsub.d	$fa2, $fa2, $fs3
	fsub.d	$fa1, $fa1, $fs1
	fsub.d	$fa2, $fa2, $fs6
	fmul.d	$fa2, $fa2, $fa2
	fmadd.d	$fa1, $fa1, $fa1, $fa2
	fadd.d	$fa2, $fs4, $fs1
	fadd.d	$fa3, $fs5, $fs6
	fsub.d	$fa2, $fa2, $fs2
	fsub.d	$fa3, $fa3, $fs3
	fsub.d	$fa2, $fa2, $fs7
	fsub.d	$fa3, $fa3, $fs0
	fmul.d	$fa3, $fa3, $fa3
	fmadd.d	$fa2, $fa2, $fa2, $fa3
	movgr2fr.d	$fa3, $zero
	fcmp.clt.d	$fcc0, $ft3, $fa3
	fsel	$fa0, $fa3, $fa0, $fcc0
	fst.d	$fa0, $s1, 0
	fld.d	$fa0, $s2, 0
	fcmp.clt.d	$fcc0, $fa1, $fa2
	fsel	$fa1, $fa1, $fa2, $fcc0
	fsqrt.d	$fa1, $fa1
	fcmp.clt.d	$fcc0, $fa0, $fa3
	fsel	$fa0, $fa3, $fa1, $fcc0
	fst.d	$fa0, $s0, 0
	addi.d	$s3, $s3, 8
	addi.d	$fp, $fp, 8
	addi.d	$s2, $s2, 8
	addi.d	$s1, $s1, 8
	addi.d	$s0, $s0, 8
	addi.d	$s4, $s4, 4
	addi.d	$s5, $s5, 4
	addi.d	$s6, $s6, -1
	addi.d	$s7, $s7, 4
	bnez	$s6, .LBB3_10
	b	.LBB3_15
.LBB3_14:                               # %call.sqrt
                                        #   in Loop: Header=BB3_10 Depth=1
	fmov.d	$fa0, $fa1
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	st.d	$t5, $sp, 48                    # 8-byte Folded Spill
	st.d	$t8, $sp, 40                    # 8-byte Folded Spill
	st.d	$ra, $sp, 32                    # 8-byte Folded Spill
	fst.d	$ft12, $sp, 24                  # 8-byte Folded Spill
	fst.d	$ft13, $sp, 16                  # 8-byte Folded Spill
	fst.d	$ft3, $sp, 8                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	fld.d	$ft3, $sp, 8                    # 8-byte Folded Reload
	vldi	$vr22, -944
	fld.d	$ft13, $sp, 16                  # 8-byte Folded Reload
	fld.d	$ft12, $sp, 24                  # 8-byte Folded Reload
	vldi	$vr23, -928
	ld.d	$ra, $sp, 32                    # 8-byte Folded Reload
	ld.d	$t8, $sp, 40                    # 8-byte Folded Reload
	ld.d	$t7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$t6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$t5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$t4, $sp, 80                    # 8-byte Folded Reload
	ld.d	$t3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$t2, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	b	.LBB3_13
.LBB3_15:                               # %._crit_edge
	fld.d	$fs7, $sp, 120                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 128                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 136                  # 8-byte Folded Reload
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
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.Lfunc_end3:
	.size	_ZN3QCS12setCornerDivEPdS0_S0_S0_S0_ii, .Lfunc_end3-_ZN3QCS12setCornerDivEPdS0_S0_S0_S0_ii
	.cfi_endproc
                                        # -- End function
	.globl	_ZN3QCS11setQCnForceEPKdS1_S1_P7double2ii # -- Begin function _ZN3QCS11setQCnForceEPKdS1_S1_P7double2ii
	.p2align	5
	.type	_ZN3QCS11setQCnForceEPKdS1_S1_P7double2ii,@function
_ZN3QCS11setQCnForceEPKdS1_S1_P7double2ii: # @_ZN3QCS11setQCnForceEPKdS1_S1_P7double2ii
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
	move	$s5, $a0
	ld.d	$a0, $a0, 0
	move	$s0, $a6
	move	$s4, $a5
	st.d	$a4, $sp, 32                    # 8-byte Folded Spill
	st.d	$a3, $sp, 24                    # 8-byte Folded Spill
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	move	$s1, $a1
	ld.d	$fp, $a0, 0
	ld.d	$s6, $a0, 248
	ld.d	$s2, $a0, 312
	ld.d	$s3, $a0, 360
	ld.d	$s7, $fp, 376
	sub.d	$s8, $a6, $a5
	addi.w	$a0, $s8, 0
	slli.d	$a0, $a0, 3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	bge	$s4, $s0, .LBB4_9
# %bb.1:                                # %.lr.ph
	fld.d	$fa0, $s5, 8
	vldi	$vr1, -912
	fadd.d	$fa1, $fa0, $fa1
	fld.d	$fa2, $s5, 24
	ld.d	$a1, $fp, 104
	vldi	$vr3, -944
	fld.d	$fa0, $s5, 16
	fmul.d	$fa2, $fa2, $fa3
	ori	$a3, $zero, 2
	fmul.d	$fa1, $fa1, $fa2
	move	$a2, $s4
	ld.d	$t5, $sp, 24                    # 8-byte Folded Reload
	ld.d	$t6, $sp, 16                    # 8-byte Folded Reload
	bltu	$s8, $a3, .LBB4_5
# %bb.2:                                # %vector.ph
	move	$a3, $s8
	bstrins.d	$a3, $zero, 0, 0
	add.d	$a2, $a3, $s4
	vreplvei.d	$vr2, $vr1, 0
	vreplvei.d	$vr3, $vr0, 0
	alsl.d	$a4, $s4, $a1, 2
	vrepli.b	$vr4, 0
	move	$a5, $a3
	move	$a6, $a0
	move	$a7, $s1
	move	$t0, $t5
	move	$t1, $t6
	.p2align	4, , 16
.LBB4_3:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$t2, $a4, 0
	vinsgr2vr.d	$vr5, $t2, 0
	vld	$vr6, $t1, 0
	vshuf4i.w	$vr5, $vr5, 16
	vslli.d	$vr5, $vr5, 32
	vsrai.d	$vr5, $vr5, 32
	vpickve2gr.d	$t2, $vr5, 0
	slli.d	$t2, $t2, 3
	vpickve2gr.d	$t3, $vr5, 1
	slli.d	$t3, $t3, 3
	fldx.d	$fa5, $s3, $t2
	fldx.d	$fa7, $s3, $t3
	vfmul.d	$vr6, $vr6, $vr2
	vextrins.d	$vr5, $vr7, 16
	vfmul.d	$vr5, $vr3, $vr5
	vfmul.d	$vr5, $vr5, $vr5
	vfmadd.d	$vr5, $vr6, $vr6, $vr5
	vfsqrt.d	$vr5, $vr5
	fldx.d	$fa7, $s2, $t2
	fldx.d	$ft0, $s2, $t3
	vfadd.d	$vr5, $vr6, $vr5
	vld	$vr6, $t0, 0
	vld	$vr9, $a7, 0
	vextrins.d	$vr7, $vr8, 16
	vfmul.d	$vr5, $vr7, $vr5
	vfmul.d	$vr5, $vr6, $vr5
	vfcmp.cule.d	$vr6, $vr9, $vr4
	vand.v	$vr5, $vr6, $vr5
	vst	$vr5, $a6, 0
	addi.d	$a4, $a4, 8
	addi.d	$t1, $t1, 16
	addi.d	$t0, $t0, 16
	addi.d	$a7, $a7, 16
	addi.d	$a5, $a5, -2
	addi.d	$a6, $a6, 16
	bnez	$a5, .LBB4_3
# %bb.4:                                # %middle.block
	beq	$s8, $a3, .LBB4_7
.LBB4_5:                                # %scalar.ph.preheader
	alsl.d	$a1, $a2, $a1, 2
	slli.d	$a3, $a2, 3
	slli.d	$a4, $s4, 3
	sub.d	$a6, $a3, $a4
	add.d	$a3, $t6, $a6
	add.d	$a4, $t5, $a6
	add.d	$a5, $s1, $a6
	add.d	$a6, $a0, $a6
	sub.d	$a2, $s0, $a2
	movgr2fr.d	$fa2, $zero
	.p2align	4, , 16
.LBB4_6:                                # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a7, $a1, 0
	fld.d	$fa3, $a3, 0
	slli.d	$a7, $a7, 3
	fldx.d	$fa4, $s3, $a7
	fmul.d	$fa3, $fa3, $fa1
	fmul.d	$fa4, $fa0, $fa4
	fmul.d	$fa4, $fa4, $fa4
	fmadd.d	$fa4, $fa3, $fa3, $fa4
	fsqrt.d	$fa4, $fa4
	fldx.d	$fa5, $s2, $a7
	fld.d	$fa6, $a4, 0
	fld.d	$fa7, $a5, 0
	fadd.d	$fa3, $fa3, $fa4
	fmul.d	$fa3, $fa5, $fa3
	fmul.d	$fa3, $fa6, $fa3
	fcmp.clt.d	$fcc0, $fa2, $fa7
	fsel	$fa3, $fa3, $fa2, $fcc0
	fst.d	$fa3, $a6, 0
	addi.d	$a1, $a1, 4
	addi.d	$a3, $a3, 8
	addi.d	$a4, $a4, 8
	addi.d	$a5, $a5, 8
	addi.d	$a2, $a2, -1
	addi.d	$a6, $a6, 8
	bnez	$a2, .LBB4_6
.LBB4_7:                                # %.lr.ph97
	ld.d	$a5, $fp, 120
	ld.d	$a1, $fp, 96
	ld.d	$a2, $fp, 88
	ld.d	$a3, $fp, 112
	ld.d	$a4, $sp, 32                    # 8-byte Folded Reload
	addi.d	$a4, $a4, 16
	alsl.d	$a5, $s4, $a5, 2
	alsl.d	$a6, $s4, $a1, 2
	alsl.d	$a7, $s4, $a3, 2
	move	$t0, $a0
	.p2align	4, , 16
.LBB4_8:                                # =>This Inner Loop Header: Depth=1
	ld.w	$t1, $a5, 0
	slli.d	$t1, $t1, 2
	ldx.w	$t2, $a1, $t1
	ldx.w	$t3, $a2, $t1
	ldx.w	$t1, $a3, $t1
	ld.w	$t4, $a6, 0
	slli.d	$t2, $t2, 4
	slli.d	$t3, $t3, 4
	slli.d	$t1, $t1, 3
	fldx.d	$fa0, $s7, $t1
	vldx	$vr1, $s6, $t2
	vldx	$vr2, $s6, $t3
	fld.d	$fa3, $t0, 0
	ld.w	$t1, $a7, 0
	frecip.d	$fa0, $fa0
	vfsub.d	$vr1, $vr1, $vr2
	vreplvei.d	$vr2, $vr3, 0
	vfmul.d	$vr1, $vr1, $vr2
	vreplvei.d	$vr0, $vr0, 0
	vfmul.d	$vr0, $vr1, $vr0
	vst	$vr0, $a4, -16
	slli.d	$t3, $t4, 4
	slli.d	$t1, $t1, 3
	fldx.d	$fa0, $s7, $t1
	vldx	$vr1, $s6, $t3
	vldx	$vr3, $s6, $t2
	frecip.d	$fa0, $fa0
	vfsub.d	$vr1, $vr1, $vr3
	vfmul.d	$vr1, $vr2, $vr1
	vreplvei.d	$vr0, $vr0, 0
	vfmul.d	$vr0, $vr1, $vr0
	vst	$vr0, $a4, 0
	addi.d	$a4, $a4, 32
	addi.d	$t0, $t0, 8
	addi.d	$a5, $a5, 4
	addi.d	$a6, $a6, 4
	addi.d	$s8, $s8, -1
	addi.d	$a7, $a7, 4
	bnez	$s8, .LBB4_8
.LBB4_9:                                # %._crit_edge
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
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.Lfunc_end4:
	.size	_ZN3QCS11setQCnForceEPKdS1_S1_P7double2ii, .Lfunc_end4-_ZN3QCS11setQCnForceEPKdS1_S1_P7double2ii
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _ZN3QCS8setForceEPKdPK7double2PdPS2_ii
.LCPI5_0:
	.dword	0x3f1a36e2eb1c432d              # double 1.0E-4
	.text
	.globl	_ZN3QCS8setForceEPKdPK7double2PdPS2_ii
	.p2align	5
	.type	_ZN3QCS8setForceEPKdPK7double2PdPS2_ii,@function
_ZN3QCS8setForceEPKdPK7double2PdPS2_ii: # @_ZN3QCS8setForceEPKdPK7double2PdPS2_ii
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
	ld.d	$a0, $a0, 0
	ld.d	$s6, $a0, 0
	move	$s2, $a6
	move	$fp, $a5
	move	$s3, $a4
	move	$s0, $a3
	move	$s1, $a2
	move	$s4, $a1
	ld.d	$s5, $s6, 376
	sub.d	$s7, $a6, $a5
	addi.w	$a0, $s7, 0
	slli.d	$a0, $a0, 3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	bge	$fp, $s2, .LBB5_7
# %bb.1:                                # %.lr.ph.preheader
	pcalau12i	$a1, %pc_hi20(.LCPI5_0)
	fld.d	$fa0, $a1, %pc_lo12(.LCPI5_0)
	vldi	$vr1, -912
	movgr2fr.d	$fa2, $zero
	move	$a1, $s0
	move	$a2, $a0
	b	.LBB5_3
	.p2align	4, , 16
.LBB5_2:                                # %.critedge
                                        #   in Loop: Header=BB5_3 Depth=1
	fst.d	$fa4, $a2, 0
	fst.d	$fa6, $a1, 0
	addi.d	$a2, $a2, 8
	addi.d	$a1, $a1, 8
	addi.d	$s7, $s7, -1
	addi.d	$s4, $s4, 8
	beqz	$s7, .LBB5_5
.LBB5_3:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa3, $a1, 0
	fneg.d	$fa4, $fa3
	fmadd.d	$fa5, $fa4, $fa3, $fa1
	fcmp.clt.d	$fcc0, $fa5, $fa0
	fmov.d	$fa4, $fa2
	fmov.d	$fa6, $fa2
	bcnez	$fcc0, .LBB5_2
# %bb.4:                                #   in Loop: Header=BB5_3 Depth=1
	fld.d	$fa4, $s4, 0
	fdiv.d	$fa4, $fa4, $fa5
	fmov.d	$fa6, $fa3
	b	.LBB5_2
.LBB5_5:                                # %.lr.ph94
	ld.d	$a1, $s6, 128
	ld.d	$a2, $s6, 112
	alsl.d	$a1, $fp, $a1, 2
	alsl.d	$a2, $fp, $a2, 2
	alsl.d	$a3, $fp, $s3, 4
	addi.d	$a4, $s1, 16
	sub.d	$a5, $s2, $fp
	move	$a6, $s0
	move	$a7, $a0
	.p2align	4, , 16
.LBB5_6:                                # =>This Inner Loop Header: Depth=1
	ld.w	$t0, $a1, 0
	ld.w	$t1, $a2, 0
	sub.w	$t0, $t0, $fp
	slli.d	$t1, $t1, 3
	fldx.d	$fa0, $s5, $t1
	fld.d	$fa1, $a6, 0
	fld.d	$fa2, $a7, 0
	slli.d	$t1, $t0, 3
	slli.w	$t0, $t0, 1
	slli.d	$t2, $t0, 4
	alsl.d	$t0, $t0, $s1, 4
	vld	$vr3, $a4, -16
	fldx.d	$fa4, $s0, $t1
	vld	$vr5, $a4, 0
	vreplvei.d	$vr1, $vr1, 0
	vfmul.d	$vr1, $vr1, $vr3
	fldx.d	$fa3, $a0, $t1
	vfadd.d	$vr1, $vr1, $vr5
	vreplvei.d	$vr2, $vr2, 0
	vfmul.d	$vr1, $vr1, $vr2
	vld	$vr2, $t0, 16
	vldx	$vr5, $s1, $t2
	frecip.d	$fa0, $fa0
	vreplvei.d	$vr4, $vr4, 0
	vfmul.d	$vr2, $vr4, $vr2
	vfadd.d	$vr2, $vr2, $vr5
	vreplvei.d	$vr3, $vr3, 0
	vfmul.d	$vr2, $vr2, $vr3
	vfadd.d	$vr1, $vr1, $vr2
	vreplvei.d	$vr0, $vr0, 0
	vfmul.d	$vr0, $vr0, $vr1
	vst	$vr0, $a3, 0
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 16
	addi.d	$a4, $a4, 32
	addi.d	$a7, $a7, 8
	addi.d	$a5, $a5, -1
	addi.d	$a6, $a6, 8
	bnez	$a5, .LBB5_6
.LBB5_7:                                # %._crit_edge
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
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.Lfunc_end5:
	.size	_ZN3QCS8setForceEPKdPK7double2PdPS2_ii, .Lfunc_end5-_ZN3QCS8setForceEPKdPK7double2PdPS2_ii
	.cfi_endproc
                                        # -- End function
	.globl	_ZN3QCS10setVelDiffEii          # -- Begin function _ZN3QCS10setVelDiffEii
	.p2align	5
	.type	_ZN3QCS10setVelDiffEii,@function
_ZN3QCS10setVelDiffEii:                 # @_ZN3QCS10setVelDiffEii
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
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	ld.d	$s6, $a0, 0
	ld.d	$s7, $s6, 104
	ld.w	$a3, $s6, 72
	move	$s0, $a2
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	slli.d	$s8, $a1, 2
	ldx.w	$s4, $s7, $s8
	slt	$a1, $a2, $a3
	alsl.d	$a2, $a2, $s7, 2
	addi.d	$a3, $s6, 68
	maskeqz	$a2, $a2, $a1
	masknez	$a1, $a3, $a1
	or	$a1, $a2, $a1
	ld.w	$s2, $a1, 0
	ld.d	$s5, $s6, 264
	ld.d	$s3, $a0, 248
	ld.d	$a1, $a0, 360
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	ld.d	$a0, $a0, 368
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ld.d	$s1, $s6, 376
	sub.d	$a0, $s2, $s4
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	addi.w	$a0, $a0, 0
	slli.d	$a0, $a0, 3
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	beq	$s2, $s4, .LBB6_2
# %bb.1:                                # %.lr.ph.i.i.i.preheader
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	move	$a1, $zero
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
.LBB6_2:                                # %_ZSt4fillIPddEvT_S1_RKT0_.exit
	ld.d	$t2, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	bge	$a2, $s0, .LBB6_7
# %bb.3:                                # %.lr.ph
	ld.d	$a1, $s6, 112
	sub.d	$a2, $s0, $a2
	movgr2fr.d	$fa0, $zero
	b	.LBB6_5
	.p2align	4, , 16
.LBB6_4:                                #   in Loop: Header=BB6_5 Depth=1
	ldx.w	$a3, $s7, $s8
	sub.w	$a3, $a3, $s4
	slli.d	$a3, $a3, 3
	fldx.d	$fa1, $a0, $a3
	fcmp.clt.d	$fcc0, $fa1, $fa2
	fsel	$fa1, $fa1, $fa2, $fcc0
	fstx.d	$fa1, $a0, $a3
	addi.d	$a2, $a2, -1
	addi.d	$s8, $s8, 4
	beqz	$a2, .LBB6_7
.LBB6_5:                                # =>This Inner Loop Header: Depth=1
	ldx.w	$a3, $a1, $s8
	slli.d	$a3, $a3, 3
	fldx.d	$fa1, $s1, $a3
	fcmp.cule.d	$fcc0, $fa1, $fa0
	fmov.d	$fa2, $fa0
	bcnez	$fcc0, .LBB6_4
# %bb.6:                                #   in Loop: Header=BB6_5 Depth=1
	ld.d	$a3, $s6, 96
	ld.d	$a4, $s6, 88
	ldx.w	$a3, $a3, $s8
	ldx.w	$a4, $a4, $s8
	alsl.d	$a5, $a3, $s3, 4
	slli.d	$a6, $a3, 4
	fldx.d	$fa2, $s3, $a6
	alsl.d	$a7, $a4, $s3, 4
	slli.d	$t0, $a4, 4
	fldx.d	$fa3, $s3, $t0
	alsl.d	$a3, $a3, $s5, 4
	fldx.d	$fa4, $s5, $a6
	alsl.d	$a4, $a4, $s5, 4
	fldx.d	$fa5, $s5, $t0
	fld.d	$fa6, $a5, 8
	fld.d	$fa7, $a7, 8
	fld.d	$ft0, $a3, 8
	fld.d	$ft1, $a4, 8
	fsub.d	$fa2, $fa2, $fa3
	fsub.d	$fa3, $fa4, $fa5
	fsub.d	$fa4, $fa6, $fa7
	fsub.d	$fa5, $ft0, $ft1
	fmul.d	$fa4, $fa4, $fa5
	fmadd.d	$fa2, $fa2, $fa3, $fa4
	fabs.d	$fa2, $fa2
	fdiv.d	$fa2, $fa2, $fa1
	b	.LBB6_4
.LBB6_7:                                # %.preheader
	bge	$s4, $s2, .LBB6_11
# %bb.8:                                # %.lr.ph69
	ori	$a2, $zero, 6
	slli.d	$a1, $s4, 3
	ld.d	$t0, $sp, 16                    # 8-byte Folded Reload
	bgeu	$t0, $a2, .LBB6_12
.LBB6_9:                                # %scalar.ph.preheader
	slli.d	$a4, $s4, 3
	alsl.d	$a2, $s4, $t2, 3
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	alsl.d	$a3, $s4, $a3, 3
	sub.d	$a1, $a4, $a1
	add.d	$a1, $a0, $a1
	sub.d	$a4, $s2, $s4
	.p2align	4, , 16
.LBB6_10:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $fp, 16
	fld.d	$fa1, $fp, 24
	fld.d	$fa2, $a1, 0
	fld.d	$fa3, $a2, 0
	fadd.d	$fa1, $fa1, $fa1
	fmul.d	$fa1, $fa1, $fa2
	fmadd.d	$fa0, $fa0, $fa3, $fa1
	fst.d	$fa0, $a3, 0
	addi.d	$a2, $a2, 8
	addi.d	$a3, $a3, 8
	addi.d	$a4, $a4, -1
	addi.d	$a1, $a1, 8
	bnez	$a4, .LBB6_10
.LBB6_11:                               # %._crit_edge
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
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.LBB6_12:                               # %vector.memcheck
	addi.d	$a2, $fp, 16
	ld.d	$a4, $sp, 32                    # 8-byte Folded Reload
	alsl.d	$a3, $s4, $a4, 3
	alsl.d	$a4, $s2, $a4, 3
	addi.d	$a5, $fp, 32
	sltu	$a5, $a3, $a5
	sltu	$a6, $a2, $a4
	and	$a5, $a5, $a6
	bnez	$a5, .LBB6_9
# %bb.13:                               # %vector.memcheck
	alsl.d	$a5, $s4, $t2, 3
	alsl.d	$a6, $s2, $t2, 3
	sltu	$a3, $a3, $a6
	sltu	$a4, $a5, $a4
	and	$a3, $a3, $a4
	bnez	$a3, .LBB6_9
# %bb.14:                               # %vector.ph
	fld.d	$fa0, $fp, 24
	move	$a3, $t0
	bstrins.d	$a3, $zero, 1, 0
	add.d	$s4, $a3, $s4
	fadd.d	$fa0, $fa0, $fa0
	vreplvei.d	$vr0, $vr0, 0
	addi.d	$a6, $a1, 16
	add.d	$a4, $t2, $a6
	addi.d	$a5, $a0, 16
	ld.d	$a7, $sp, 32                    # 8-byte Folded Reload
	add.d	$a6, $a7, $a6
	move	$a7, $a3
	.p2align	4, , 16
.LBB6_15:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a2, 0
	vreplvei.d	$vr1, $vr1, 0
	vld	$vr2, $a5, -16
	vld	$vr3, $a5, 0
	vld	$vr4, $a4, -16
	vld	$vr5, $a4, 0
	vfmul.d	$vr2, $vr0, $vr2
	vfmul.d	$vr3, $vr0, $vr3
	vfmadd.d	$vr2, $vr1, $vr4, $vr2
	vfmadd.d	$vr1, $vr1, $vr5, $vr3
	vst	$vr2, $a6, -16
	vst	$vr1, $a6, 0
	addi.d	$a4, $a4, 32
	addi.d	$a5, $a5, 32
	addi.d	$a7, $a7, -4
	addi.d	$a6, $a6, 32
	bnez	$a7, .LBB6_15
# %bb.16:                               # %middle.block
	bne	$t0, $a3, .LBB6_9
	b	.LBB6_11
.Lfunc_end6:
	.size	_ZN3QCS10setVelDiffEii, .Lfunc_end6-_ZN3QCS10setVelDiffEii
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"qgamma"
	.size	.L.str, 7

	.globl	_ZN3QCSC1EPK9InputFileP5Hydro
	.type	_ZN3QCSC1EPK9InputFileP5Hydro,@function
_ZN3QCSC1EPK9InputFileP5Hydro = _ZN3QCSC2EPK9InputFileP5Hydro
	.globl	_ZN3QCSD1Ev
	.type	_ZN3QCSD1Ev,@function
_ZN3QCSD1Ev = _ZN3QCSD2Ev
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
