	.file	"PolyGas.cc"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _ZN7PolyGasC2EPK9InputFileP5Hydro
.LCPI0_0:
	.dword	0x3ffaaaaaaaaaaaab              # double 1.6666666666666667
	.text
	.globl	_ZN7PolyGasC2EPK9InputFileP5Hydro
	.p2align	5
	.type	_ZN7PolyGasC2EPK9InputFileP5Hydro,@function
_ZN7PolyGasC2EPK9InputFileP5Hydro:      # @_ZN7PolyGasC2EPK9InputFileP5Hydro
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
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ld.w	$a1, $a0, 0
	ld.b	$a0, $a0, 4
	st.w	$a1, $sp, 32
	st.b	$a0, $sp, 36
	ori	$a0, $zero, 5
	st.d	$a0, $sp, 24
	st.b	$zero, $sp, 37
.Ltmp0:                                 # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.LCPI0_0)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI0_0)
	addi.d	$a1, $sp, 16
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
	.size	_ZN7PolyGasC2EPK9InputFileP5Hydro, .Lfunc_end0-_ZN7PolyGasC2EPK9InputFileP5Hydro
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
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _ZN7PolyGas15calcStateAtHalfEPKdS1_S1_S1_S1_S1_dPdS2_ii
.LCPI1_0:
	.dword	0x2b617f7d4ed8c33e              # double 1.0E-99
	.text
	.globl	_ZN7PolyGas15calcStateAtHalfEPKdS1_S1_S1_S1_S1_dPdS2_ii
	.p2align	5
	.type	_ZN7PolyGas15calcStateAtHalfEPKdS1_S1_S1_S1_S1_dPdS2_ii,@function
_ZN7PolyGas15calcStateAtHalfEPKdS1_S1_S1_S1_S1_dPdS2_ii: # @_ZN7PolyGas15calcStateAtHalfEPKdS1_S1_S1_S1_S1_dPdS2_ii
# %bb.0:
	addi.d	$sp, $sp, -192
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
	fst.d	$fs0, $sp, 96                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 88                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 80                   # 8-byte Folded Spill
	ld.d	$s8, $sp, 208
	ld.d	$s0, $sp, 200
	move	$fp, $a7
	fmov.d	$fs0, $fa0
	st.d	$a6, $sp, 72                    # 8-byte Folded Spill
	move	$s1, $a5
	st.d	$a4, $sp, 64                    # 8-byte Folded Spill
	move	$s2, $a3
	move	$s3, $a2
	move	$s4, $a1
	move	$s6, $a0
	ld.d	$s7, $sp, 192
	sub.d	$s5, $s8, $s0
	addi.w	$a0, $s5, 0
	slli.d	$a0, $a0, 3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	bge	$s0, $s8, .LBB1_9
# %bb.1:                                # %.lr.ph.preheader.i
	move	$ra, $s0
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	st.d	$s2, $sp, 48                    # 8-byte Folded Spill
	st.d	$s1, $sp, 56                    # 8-byte Folded Spill
	vldi	$vr0, -928
	fmul.d	$ft2, $fs0, $fa0
	fld.d	$fa0, $s6, 8
	fld.d	$fa1, $s6, 16
	pcalau12i	$a1, %pc_hi20(.LCPI1_0)
	fld.d	$fa2, $a1, %pc_lo12(.LCPI1_0)
	vldi	$vr3, -784
	fadd.d	$fs0, $fa0, $fa3
	fmul.d	$fa0, $fa1, $fa1
	fcmp.clt.d	$fcc0, $fa0, $fa2
	fsel	$fs1, $fa0, $fa2, $fcc0
	alsl.d	$s6, $s0, $s7, 3
	alsl.d	$s8, $s0, $fp, 3
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	alsl.d	$s0, $s0, $a1, 3
	alsl.d	$s1, $ra, $s4, 3
	movgr2fr.d	$fs2, $zero
	move	$s2, $a0
	.p2align	4, , 16
.LBB1_2:                                # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $s0, 0
	fld.d	$fa1, $s1, 0
	fcmp.clt.d	$fcc0, $fa0, $fs2
	fsel	$fa0, $fa0, $fs2, $fcc0
	fmul.d	$fa2, $fs0, $fa1
	fmul.d	$fa3, $fa2, $fa0
	fmul.d	$fa0, $fs0, $fa0
	fmul.d	$fa4, $fa2, $fa3
	fmul.d	$fa1, $fa1, $fa1
	fdiv.d	$fa1, $fa4, $fa1
	fadd.d	$fa0, $fa0, $fa1
	fcmp.clt.d	$fcc0, $fs1, $fa0
	fsel	$fa0, $fs1, $fa0, $fcc0
	fst.d	$fa3, $s8, 0
	fsqrt.d	$fa1, $fa0
	fcmp.cor.d	$fcc0, $fa1, $fa1
	fst.d	$fa2, $s2, 0
	bceqz	$fcc0, .LBB1_4
.LBB1_3:                                # %.lr.ph.i.split
                                        #   in Loop: Header=BB1_2 Depth=1
	fst.d	$fa1, $s6, 0
	addi.d	$s5, $s5, -1
	addi.d	$s6, $s6, 8
	addi.d	$s8, $s8, 8
	addi.d	$s0, $s0, 8
	addi.d	$s1, $s1, 8
	addi.d	$s2, $s2, 8
	bnez	$s5, .LBB1_2
	b	.LBB1_5
.LBB1_4:                                # %call.sqrt
                                        #   in Loop: Header=BB1_2 Depth=1
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	vst	$vr10, $sp, 16                  # 16-byte Folded Spill
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	vld	$vr10, $sp, 16                  # 16-byte Folded Reload
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	fmov.d	$fa1, $fa0
	b	.LBB1_3
.LBB1_5:                                # %.lr.ph.preheader
	ld.d	$t8, $sp, 40                    # 8-byte Folded Reload
	sub.d	$a1, $t8, $ra
	ori	$a2, $zero, 6
	bgeu	$a1, $a2, .LBB1_10
# %bb.6:
	move	$a7, $ra
	ld.d	$t5, $sp, 72                    # 8-byte Folded Reload
	ld.d	$t6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$t7, $sp, 48                    # 8-byte Folded Reload
.LBB1_7:                                # %.lr.ph.preheader89
	slli.d	$a1, $a7, 3
	slli.d	$a2, $ra, 3
	sub.d	$a2, $a0, $a2
	sub.d	$a3, $t8, $a7
	vldi	$vr0, -928
	vldi	$vr1, -912
	.p2align	4, , 16
.LBB1_8:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	fldx.d	$fa2, $t5, $a1
	fldx.d	$fa3, $s3, $a1
	fldx.d	$fa4, $t7, $a1
	frecip.d	$fa2, $fa2
	fldx.d	$fa5, $s4, $a1
	fldx.d	$fa6, $s7, $a1
	fsub.d	$fa3, $fa3, $fa4
	fmul.d	$fa3, $fa2, $fa3
	fldx.d	$fa4, $a2, $a1
	fmul.d	$fa7, $fa5, $fa6
	fldx.d	$ft0, $t6, $a1
	fmul.d	$fa6, $fa6, $fa7
	fmul.d	$fa7, $fa4, $fa0
	fmadd.d	$fa7, $fa7, $fa3, $fa1
	fmul.d	$ft0, $ft2, $ft0
	fmul.d	$fa2, $fa2, $ft0
	fmul.d	$fa5, $fa5, $fa6
	fneg.d	$fa3, $fa3
	fldx.d	$fa6, $fp, $a1
	fmul.d	$fa3, $fa5, $fa3
	fmadd.d	$fa2, $fa4, $fa2, $fa3
	fdiv.d	$fa2, $fa2, $fa7
	fadd.d	$fa2, $fa6, $fa2
	fstx.d	$fa2, $fp, $a1
	addi.d	$t5, $t5, 8
	addi.d	$s3, $s3, 8
	addi.d	$t7, $t7, 8
	addi.d	$s4, $s4, 8
	addi.d	$s7, $s7, 8
	addi.d	$t6, $t6, 8
	addi.d	$fp, $fp, 8
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 8
	bnez	$a3, .LBB1_8
.LBB1_9:                                # %._crit_edge
	fld.d	$fs2, $sp, 80                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 88                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 96                   # 8-byte Folded Reload
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
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.LBB1_10:                               # %vector.memcheck
	alsl.d	$a2, $ra, $fp, 3
	alsl.d	$a7, $t8, $fp, 3
	ld.d	$t5, $sp, 72                    # 8-byte Folded Reload
	alsl.d	$a3, $ra, $t5, 3
	alsl.d	$a4, $t8, $t5, 3
	sltu	$a4, $a2, $a4
	sltu	$a5, $a3, $a7
	and	$a4, $a4, $a5
	ld.d	$t6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$t7, $sp, 48                    # 8-byte Folded Reload
	bnez	$a4, .LBB1_19
# %bb.11:                               # %vector.memcheck
	alsl.d	$a4, $ra, $s3, 3
	alsl.d	$a5, $t8, $s3, 3
	sltu	$a5, $a2, $a5
	sltu	$a6, $a4, $a7
	and	$a5, $a5, $a6
	bnez	$a5, .LBB1_19
# %bb.12:                               # %vector.memcheck
	alsl.d	$a5, $ra, $t7, 3
	alsl.d	$a6, $t8, $t7, 3
	sltu	$a6, $a2, $a6
	sltu	$t0, $a5, $a7
	and	$a6, $a6, $t0
	bnez	$a6, .LBB1_19
# %bb.13:                               # %vector.memcheck
	alsl.d	$a6, $ra, $s4, 3
	alsl.d	$t0, $t8, $s4, 3
	sltu	$t0, $a2, $t0
	sltu	$t1, $a6, $a7
	and	$t0, $t0, $t1
	bnez	$t0, .LBB1_19
# %bb.14:                               # %vector.memcheck
	alsl.d	$t0, $ra, $s7, 3
	alsl.d	$t1, $t8, $s7, 3
	sltu	$t1, $a2, $t1
	sltu	$t2, $t0, $a7
	and	$t1, $t1, $t2
	bnez	$t1, .LBB1_19
# %bb.15:                               # %vector.memcheck
	alsl.d	$t1, $ra, $t6, 3
	alsl.d	$t2, $t8, $t6, 3
	sltu	$t2, $a2, $t2
	sltu	$a7, $t1, $a7
	and	$t2, $t2, $a7
	move	$a7, $ra
	bnez	$t2, .LBB1_7
# %bb.16:                               # %vector.ph
	move	$t2, $a1
	bstrins.d	$t2, $zero, 0, 0
	add.d	$a7, $t2, $ra
	vreplvei.d	$vr0, $vr10, 0
	lu52i.d	$t3, $zero, 1023
	vreplgr2vr.d	$vr1, $t3
	lu52i.d	$t3, $zero, 1022
	vreplgr2vr.d	$vr2, $t3
	move	$t3, $t2
	move	$t4, $a0
	.p2align	4, , 16
.LBB1_17:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr3, $a3, 0
	vld	$vr4, $a4, 0
	vld	$vr5, $a5, 0
	vfrecip.d	$vr3, $vr3
	vld	$vr6, $a6, 0
	vld	$vr7, $t0, 0
	vfsub.d	$vr4, $vr4, $vr5
	vfmul.d	$vr4, $vr3, $vr4
	vld	$vr5, $t4, 0
	vfmul.d	$vr8, $vr6, $vr7
	vld	$vr9, $t1, 0
	vfmul.d	$vr7, $vr7, $vr8
	vfmul.d	$vr8, $vr5, $vr2
	vfmadd.d	$vr8, $vr8, $vr4, $vr1
	vfmul.d	$vr9, $vr0, $vr9
	vfmul.d	$vr3, $vr3, $vr9
	vfmul.d	$vr6, $vr6, $vr7
	vbitrevi.d	$vr4, $vr4, 63
	vld	$vr7, $a2, 0
	vfmul.d	$vr4, $vr6, $vr4
	vfmadd.d	$vr3, $vr5, $vr3, $vr4
	vfdiv.d	$vr3, $vr3, $vr8
	vfadd.d	$vr3, $vr7, $vr3
	vst	$vr3, $a2, 0
	addi.d	$t4, $t4, 16
	addi.d	$t3, $t3, -2
	addi.d	$a2, $a2, 16
	addi.d	$t1, $t1, 16
	addi.d	$t0, $t0, 16
	addi.d	$a6, $a6, 16
	addi.d	$a5, $a5, 16
	addi.d	$a4, $a4, 16
	addi.d	$a3, $a3, 16
	bnez	$t3, .LBB1_17
# %bb.18:                               # %middle.block
	bne	$a1, $t2, .LBB1_7
	b	.LBB1_9
.LBB1_19:
	move	$a7, $ra
	b	.LBB1_7
.Lfunc_end1:
	.size	_ZN7PolyGas15calcStateAtHalfEPKdS1_S1_S1_S1_S1_dPdS2_ii, .Lfunc_end1-_ZN7PolyGas15calcStateAtHalfEPKdS1_S1_S1_S1_S1_dPdS2_ii
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _ZN7PolyGas7calcEOSEPKdS1_PdS2_S2_ii
.LCPI2_0:
	.dword	0x2b617f7d4ed8c33e              # double 1.0E-99
	.text
	.globl	_ZN7PolyGas7calcEOSEPKdS1_PdS2_S2_ii
	.p2align	5
	.type	_ZN7PolyGas7calcEOSEPKdS1_PdS2_S2_ii,@function
_ZN7PolyGas7calcEOSEPKdS1_PdS2_S2_ii:   # @_ZN7PolyGas7calcEOSEPKdS1_PdS2_S2_ii
# %bb.0:
	bge	$a6, $a7, .LBB2_6
# %bb.1:                                # %.lr.ph.preheader
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 16                   # 8-byte Folded Spill
	fld.d	$fa0, $a0, 8
	fld.d	$fa1, $a0, 16
	pcalau12i	$a0, %pc_hi20(.LCPI2_0)
	fld.d	$fa2, $a0, %pc_lo12(.LCPI2_0)
	vldi	$vr3, -784
	fadd.d	$fs0, $fa0, $fa3
	fmul.d	$fa0, $fa1, $fa1
	fcmp.clt.d	$fcc0, $fa0, $fa2
	fsel	$fs1, $fa0, $fa2, $fcc0
	alsl.d	$fp, $a6, $a1, 3
	alsl.d	$s0, $a6, $a2, 3
	alsl.d	$s1, $a6, $a3, 3
	alsl.d	$s2, $a6, $a5, 3
	sub.d	$s3, $a7, $a6
	movgr2fr.d	$fs2, $zero
	.p2align	4, , 16
.LBB2_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $s0, 0
	fld.d	$fa1, $fp, 0
	fcmp.clt.d	$fcc0, $fa0, $fs2
	fsel	$fa0, $fa0, $fs2, $fcc0
	fmul.d	$fa2, $fs0, $fa1
	fmul.d	$fa3, $fa2, $fa0
	fmul.d	$fa0, $fs0, $fa0
	fmul.d	$fa4, $fa2, $fa3
	fmul.d	$fa1, $fa1, $fa1
	fdiv.d	$fa1, $fa4, $fa1
	fadd.d	$fa0, $fa0, $fa1
	fcmp.clt.d	$fcc0, $fs1, $fa0
	fsel	$fa0, $fs1, $fa0, $fcc0
	fst.d	$fa3, $s1, 0
	fsqrt.d	$fa1, $fa0
	fcmp.cor.d	$fcc0, $fa1, $fa1
	fst.d	$fa2, $a4, 0
	bceqz	$fcc0, .LBB2_4
.LBB2_3:                                # %.lr.ph.split
                                        #   in Loop: Header=BB2_2 Depth=1
	fst.d	$fa1, $s2, 0
	addi.d	$fp, $fp, 8
	addi.d	$s0, $s0, 8
	addi.d	$s1, $s1, 8
	addi.d	$s2, $s2, 8
	addi.d	$s3, $s3, -1
	addi.d	$a4, $a4, 8
	bnez	$s3, .LBB2_2
	b	.LBB2_5
.LBB2_4:                                # %call.sqrt
                                        #   in Loop: Header=BB2_2 Depth=1
	move	$s4, $a4
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	move	$a4, $s4
	fmov.d	$fa1, $fa0
	b	.LBB2_3
.LBB2_5:
	fld.d	$fs2, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
.LBB2_6:                                # %._crit_edge
	ret
.Lfunc_end2:
	.size	_ZN7PolyGas7calcEOSEPKdS1_PdS2_S2_ii, .Lfunc_end2-_ZN7PolyGas7calcEOSEPKdS1_PdS2_S2_ii
                                        # -- End function
	.globl	_ZN7PolyGas9calcForceEPKdPK7double2PS2_ii # -- Begin function _ZN7PolyGas9calcForceEPKdPK7double2PS2_ii
	.p2align	5
	.type	_ZN7PolyGas9calcForceEPKdPK7double2PS2_ii,@function
_ZN7PolyGas9calcForceEPKdPK7double2PS2_ii: # @_ZN7PolyGas9calcForceEPKdPK7double2PS2_ii
	.cfi_startproc
# %bb.0:
	bge	$a4, $a5, .LBB3_3
# %bb.1:                                # %.lr.ph
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, 104
	alsl.d	$a0, $a4, $a0, 2
	slli.d	$a6, $a4, 4
	addi.d	$a6, $a6, 8
	add.d	$a2, $a2, $a6
	add.d	$a3, $a3, $a6
	sub.d	$a4, $a5, $a4
	.p2align	4, , 16
.LBB3_2:                                # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a0, 0
	slli.d	$a5, $a5, 3
	fldx.d	$fa0, $a1, $a5
	fld.d	$fa1, $a2, -8
	fld.d	$fa2, $a2, 0
	fneg.d	$fa0, $fa0
	fmul.d	$fa1, $fa1, $fa0
	fmul.d	$fa0, $fa2, $fa0
	fst.d	$fa1, $a3, -8
	fst.d	$fa0, $a3, 0
	addi.d	$a0, $a0, 4
	addi.d	$a2, $a2, 16
	addi.d	$a4, $a4, -1
	addi.d	$a3, $a3, 16
	bnez	$a4, .LBB3_2
.LBB3_3:                                # %._crit_edge
	ret
.Lfunc_end3:
	.size	_ZN7PolyGas9calcForceEPKdPK7double2PS2_ii, .Lfunc_end3-_ZN7PolyGas9calcForceEPKdPK7double2PS2_ii
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gamma"
	.size	.L.str, 6

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"ssmin"
	.size	.L.str.1, 6

	.globl	_ZN7PolyGasC1EPK9InputFileP5Hydro
	.type	_ZN7PolyGasC1EPK9InputFileP5Hydro,@function
_ZN7PolyGasC1EPK9InputFileP5Hydro = _ZN7PolyGasC2EPK9InputFileP5Hydro
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
