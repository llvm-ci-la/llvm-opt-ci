	.file	"HydroBC.cc"
	.text
	.globl	_ZN7HydroBCC2EP4Mesh7double2RKSt6vectorIiSaIiEE # -- Begin function _ZN7HydroBCC2EP4Mesh7double2RKSt6vectorIiSaIiEE
	.p2align	5
	.type	_ZN7HydroBCC2EP4Mesh7double2RKSt6vectorIiSaIiEE,@function
_ZN7HydroBCC2EP4Mesh7double2RKSt6vectorIiSaIiEE: # @_ZN7HydroBCC2EP4Mesh7double2RKSt6vectorIiSaIiEE
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
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
	move	$s4, $a3
	ld.d	$a3, $a3, 8
	ld.d	$a4, $s4, 0
	move	$s2, $a1
	move	$fp, $a0
	st.d	$a1, $a0, 0
	vld	$vr0, $a2, 0
	sub.d	$a0, $a3, $a4
	srli.d	$s5, $a0, 2
	st.w	$s5, $fp, 8
	vst	$vr0, $fp, 16
	addi.d	$s0, $fp, 40
	addi.d	$s1, $fp, 64
	slli.d	$a0, $a0, 30
	srai.d	$a0, $a0, 30
	bstrins.d	$a0, $zero, 1, 0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	vrepli.b	$vr0, 0
	vst	$vr0, $fp, 40
	vst	$vr0, $fp, 56
	vst	$vr0, $fp, 72
	st.d	$a0, $fp, 32
	ld.d	$a1, $s4, 0
	ld.d	$a0, $s4, 8
	sub.d	$a2, $a0, $a1
	ori	$a0, $zero, 5
	blt	$a2, $a0, .LBB0_4
# %bb.1:
	move	$a0, $s3
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
.LBB0_2:                                # %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_.exit
.Ltmp0:                                 # EH_LABEL
	addi.w	$a1, $s5, 0
	move	$a0, $s2
	move	$a2, $s3
	move	$a3, $s0
	move	$a4, $s1
	pcaddu18i	$ra, %call36(_ZN4Mesh14getPlaneChunksEiPKiRSt6vectorIiSaIiEES5_)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.3:
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
.LBB0_4:
	ori	$a0, $zero, 4
	bne	$a2, $a0, .LBB0_2
# %bb.5:
	ld.w	$a0, $a1, 0
	st.w	$a0, $s3, 0
	b	.LBB0_2
.LBB0_6:
.Ltmp2:                                 # EH_LABEL
	ld.d	$a2, $s1, 0
	move	$s1, $a0
	bnez	$a2, .LBB0_9
# %bb.7:                                # %_ZNSt6vectorIiSaIiEED2Ev.exit
	ld.d	$a0, $s0, 0
	bnez	$a0, .LBB0_10
.LBB0_8:                                # %_ZNSt6vectorIiSaIiEED2Ev.exit8
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB0_9:
	ld.d	$a0, $fp, 80
	sub.d	$a1, $a0, $a2
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	beqz	$a0, .LBB0_8
.LBB0_10:
	ld.d	$a1, $fp, 56
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	_ZN7HydroBCC2EP4Mesh7double2RKSt6vectorIiSaIiEE, .Lfunc_end0-_ZN7HydroBCC2EP4Mesh7double2RKSt6vectorIiSaIiEE
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
	.uleb128 .Lfunc_end0-.Ltmp1             #   Call between .Ltmp1 and .Lfunc_end0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN7HydroBCD2Ev                 # -- Begin function _ZN7HydroBCD2Ev
	.p2align	5
	.type	_ZN7HydroBCD2Ev,@function
_ZN7HydroBCD2Ev:                        # @_ZN7HydroBCD2Ev
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	ld.d	$a0, $a0, 64
	beqz	$a0, .LBB1_2
# %bb.1:
	ld.d	$a1, $fp, 80
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_2:                                # %_ZNSt6vectorIiSaIiEED2Ev.exit
	ld.d	$a0, $fp, 40
	beqz	$a0, .LBB1_4
# %bb.3:
	ld.d	$a1, $fp, 56
	sub.d	$a1, $a1, $a0
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB1_4:                                # %_ZNSt6vectorIiSaIiEED2Ev.exit2
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end1:
	.size	_ZN7HydroBCD2Ev, .Lfunc_end1-_ZN7HydroBCD2Ev
	.cfi_endproc
                                        # -- End function
	.globl	_ZN7HydroBC12applyFixedBCEP7double2S1_ii # -- Begin function _ZN7HydroBC12applyFixedBCEP7double2S1_ii
	.p2align	5
	.type	_ZN7HydroBC12applyFixedBCEP7double2S1_ii,@function
_ZN7HydroBC12applyFixedBCEP7double2S1_ii: # @_ZN7HydroBC12applyFixedBCEP7double2S1_ii
	.cfi_startproc
# %bb.0:
	bge	$a3, $a4, .LBB2_3
# %bb.1:                                # %.lr.ph
	ld.d	$a5, $a0, 32
	alsl.d	$a5, $a3, $a5, 2
	sub.d	$a3, $a4, $a3
	.p2align	4, , 16
.LBB2_2:                                # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a5, 0
	slli.d	$a4, $a4, 4
	vldx	$vr0, $a1, $a4
	vld	$vr1, $a0, 16
	vfmul.d	$vr2, $vr0, $vr1
	vreplvei.d	$vr2, $vr2, 1
	vreplvei.d	$vr3, $vr0, 0
	vreplvei.d	$vr4, $vr1, 0
	fmadd.d	$fa2, $fa3, $fa4, $fa2
	vreplvei.d	$vr2, $vr2, 0
	vfmul.d	$vr1, $vr1, $vr2
	vfsub.d	$vr0, $vr0, $vr1
	vstx	$vr0, $a1, $a4
	vldx	$vr0, $a2, $a4
	vld	$vr1, $a0, 16
	vfmul.d	$vr2, $vr0, $vr1
	vreplvei.d	$vr2, $vr2, 1
	vreplvei.d	$vr3, $vr0, 0
	vreplvei.d	$vr4, $vr1, 0
	fmadd.d	$fa2, $fa3, $fa4, $fa2
	vreplvei.d	$vr2, $vr2, 0
	vfmul.d	$vr1, $vr1, $vr2
	vfsub.d	$vr0, $vr0, $vr1
	vstx	$vr0, $a2, $a4
	addi.d	$a3, $a3, -1
	addi.d	$a5, $a5, 4
	bnez	$a3, .LBB2_2
.LBB2_3:                                # %._crit_edge
	ret
.Lfunc_end2:
	.size	_ZN7HydroBC12applyFixedBCEP7double2S1_ii, .Lfunc_end2-_ZN7HydroBC12applyFixedBCEP7double2S1_ii
	.cfi_endproc
                                        # -- End function
	.globl	_ZN7HydroBCC1EP4Mesh7double2RKSt6vectorIiSaIiEE
	.type	_ZN7HydroBCC1EP4Mesh7double2RKSt6vectorIiSaIiEE,@function
_ZN7HydroBCC1EP4Mesh7double2RKSt6vectorIiSaIiEE = _ZN7HydroBCC2EP4Mesh7double2RKSt6vectorIiSaIiEE
	.globl	_ZN7HydroBCD1Ev
	.type	_ZN7HydroBCD1Ev,@function
_ZN7HydroBCD1Ev = _ZN7HydroBCD2Ev
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
