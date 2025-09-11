	.file	"TTS.cc"
	.text
	.globl	_ZN3TTSC2EPK9InputFileP5Hydro   # -- Begin function _ZN3TTSC2EPK9InputFileP5Hydro
	.p2align	5
	.type	_ZN3TTSC2EPK9InputFileP5Hydro,@function
_ZN3TTSC2EPK9InputFileP5Hydro:          # @_ZN3TTSC2EPK9InputFileP5Hydro
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	move	$s0, $a1
	move	$fp, $a0
	st.d	$a2, $a0, 0
	addi.d	$s1, $sp, 32
	st.d	$s1, $sp, 16
	lu12i.w	$a0, 398950
	ori	$a0, $a0, 3169
	st.w	$a0, $sp, 32
	ori	$a0, $zero, 4
	st.d	$a0, $sp, 24
	st.b	$zero, $sp, 36
.Ltmp0:                                 # EH_LABEL
	addi.d	$a1, $sp, 16
	vldi	$vr0, -928
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNK9InputFile9getDoubleERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.1:
	ld.d	$a0, $sp, 16
	fst.d	$fa0, $fp, 8
	beq	$a0, $s1, .LBB0_3
# %bb.2:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_3:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	st.d	$s1, $sp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ld.w	$a1, $a0, 0
	ld.b	$a0, $a0, 4
	st.w	$a1, $sp, 32
	st.b	$a0, $sp, 36
	ori	$a0, $zero, 5
	st.d	$a0, $sp, 24
	st.b	$zero, $sp, 37
.Ltmp3:                                 # EH_LABEL
	movgr2fr.d	$fa0, $zero
	addi.d	$a1, $sp, 16
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNK9InputFile9getDoubleERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd)
	jirl	$ra, $ra, 0
.Ltmp4:                                 # EH_LABEL
# %bb.4:
	ld.d	$a0, $sp, 16
	fst.d	$fa0, $fp, 16
	beq	$a0, $s1, .LBB0_6
# %bb.5:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_6:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.LBB0_7:
.Ltmp5:                                 # EH_LABEL
	b	.LBB0_9
.LBB0_8:
.Ltmp2:                                 # EH_LABEL
.LBB0_9:
	ld.d	$a2, $sp, 16
	move	$fp, $a0
	beq	$a2, $s1, .LBB0_11
# %bb.10:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22
	ld.d	$a0, $sp, 32
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_11:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	_ZN3TTSC2EPK9InputFileP5Hydro, .Lfunc_end0-_ZN3TTSC2EPK9InputFileP5Hydro
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
	.uleb128 .Lfunc_end0-.Ltmp4             #   Call between .Ltmp4 and .Lfunc_end0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN3TTSD2Ev                     # -- Begin function _ZN3TTSD2Ev
	.p2align	5
	.type	_ZN3TTSD2Ev,@function
_ZN3TTSD2Ev:                            # @_ZN3TTSD2Ev
# %bb.0:
	ret
.Lfunc_end1:
	.size	_ZN3TTSD2Ev, .Lfunc_end1-_ZN3TTSD2Ev
                                        # -- End function
	.globl	_ZN3TTS9calcForceEPKdS1_S1_S1_S1_PK7double2PS2_ii # -- Begin function _ZN3TTS9calcForceEPKdS1_S1_S1_S1_PK7double2PS2_ii
	.p2align	5
	.type	_ZN3TTS9calcForceEPKdS1_S1_S1_S1_PK7double2PS2_ii,@function
_ZN3TTS9calcForceEPKdS1_S1_S1_S1_PK7double2PS2_ii: # @_ZN3TTS9calcForceEPKdS1_S1_S1_S1_PK7double2PS2_ii
	.cfi_startproc
# %bb.0:
	ld.d	$t1, $sp, 8
	ld.d	$t2, $sp, 0
	bge	$t2, $t1, .LBB2_3
# %bb.1:                                # %.lr.ph
	ld.d	$t0, $a0, 0
	ld.d	$t0, $t0, 0
	ld.d	$t0, $t0, 104
	fld.d	$fa0, $a0, 8
	alsl.d	$t0, $t2, $t0, 2
	alsl.d	$a4, $t2, $a4, 3
	alsl.d	$a5, $t2, $a5, 3
	alsl.d	$a6, $t2, $a6, 4
	alsl.d	$a7, $t2, $a7, 4
	sub.d	$t1, $t1, $t2
	.p2align	4, , 16
.LBB2_2:                                # =>This Inner Loop Header: Depth=1
	ld.w	$t2, $t0, 0
	slli.d	$t2, $t2, 3
	fldx.d	$fa1, $a1, $t2
	fld.d	$fa2, $a4, 0
	fldx.d	$fa3, $a2, $t2
	fld.d	$fa4, $a5, 0
	fldx.d	$fa5, $a3, $t2
	fld.d	$fa6, $a0, 16
	fdiv.d	$fa1, $fa1, $fa2
	fmul.d	$fa2, $fa3, $fa4
	fmul.d	$fa1, $fa1, $fa2
	fcmp.clt.d	$fcc0, $fa5, $fa6
	fsel	$fa2, $fa5, $fa6, $fcc0
	fmul.d	$fa4, $fa0, $fa2
	fmul.d	$fa2, $fa2, $fa4
	fsub.d	$fa1, $fa1, $fa3
	vld	$vr3, $a6, 0
	fneg.d	$fa1, $fa1
	fmul.d	$fa1, $fa2, $fa1
	vreplvei.d	$vr1, $vr1, 0
	vfmul.d	$vr1, $vr3, $vr1
	vst	$vr1, $a7, 0
	addi.d	$t0, $t0, 4
	addi.d	$a4, $a4, 8
	addi.d	$a5, $a5, 8
	addi.d	$a6, $a6, 16
	addi.d	$t1, $t1, -1
	addi.d	$a7, $a7, 16
	bnez	$t1, .LBB2_2
.LBB2_3:                                # %._crit_edge
	ret
.Lfunc_end2:
	.size	_ZN3TTS9calcForceEPKdS1_S1_S1_S1_PK7double2PS2_ii, .Lfunc_end2-_ZN3TTS9calcForceEPKdS1_S1_S1_S1_PK7double2PS2_ii
	.cfi_endproc
                                        # -- End function
	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"ssmin"
	.size	.L.str.1, 6

	.globl	_ZN3TTSC1EPK9InputFileP5Hydro
	.type	_ZN3TTSC1EPK9InputFileP5Hydro,@function
_ZN3TTSC1EPK9InputFileP5Hydro = _ZN3TTSC2EPK9InputFileP5Hydro
	.globl	_ZN3TTSD1Ev
	.type	_ZN3TTSD1Ev,@function
_ZN3TTSD1Ev = _ZN3TTSD2Ev
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
