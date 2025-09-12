	.file	"moments.cpp"
	.text
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
# %bb.0:
	addi.d	$sp, $sp, -160
	.cfi_def_cfa_offset 160
	st.d	$ra, $sp, 152                   # 8-byte Folded Spill
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	st.d	$s0, $sp, 136                   # 8-byte Folded Spill
	st.d	$s1, $sp, 128                   # 8-byte Folded Spill
	st.d	$s2, $sp, 120                   # 8-byte Folded Spill
	st.d	$s3, $sp, 112                   # 8-byte Folded Spill
	st.d	$s4, $sp, 104                   # 8-byte Folded Spill
	st.d	$s5, $sp, 96                    # 8-byte Folded Spill
	st.d	$s6, $sp, 88                    # 8-byte Folded Spill
	st.d	$s7, $sp, 80                    # 8-byte Folded Spill
	st.d	$s8, $sp, 72                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 64                   # 8-byte Folded Spill
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
	ori	$a2, $zero, 2
	bne	$a0, $a2, .LBB0_3
# %bb.1:
	ld.d	$a0, $a1, 8
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(__isoc23_strtol)
	jirl	$ra, $ra, 0
	addi.w	$a1, $a0, 0
	bnez	$a1, .LBB0_4
# %bb.2:
	move	$s3, $zero
	move	$s0, $zero
	move	$fp, $zero
	b	.LBB0_14
.LBB0_3:
	lu12i.w	$a0, 1220
	ori	$a0, $a0, 2880
.LBB0_4:                                # %.lr.ph.preheader
	move	$s4, $zero
	move	$fp, $zero
	move	$s0, $zero
	move	$s3, $zero
	addi.w	$a1, $zero, -8
	lu52i.d	$s5, $a1, 2047
	ori	$s6, $zero, 1
	addi.w	$a1, $zero, -1
	lu52i.d	$s7, $a1, 255
	addi.w	$s8, $a0, 0
	b	.LBB0_6
	.p2align	4, , 16
.LBB0_5:                                #   in Loop: Header=BB0_6 Depth=1
	fst.d	$fs0, $s0, 0
	addi.w	$s4, $s4, 1
	addi.d	$s0, $s0, 8
	beq	$s8, $s4, .LBB0_14
.LBB0_6:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a0, $s4, 31, 0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fs0, $fa0
	bne	$s0, $s3, .LBB0_5
# %bb.7:                                #   in Loop: Header=BB0_6 Depth=1
	sub.d	$s1, $s0, $fp
	beq	$s1, $s5, .LBB0_18
# %bb.8:                                # %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i.i.i
                                        #   in Loop: Header=BB0_6 Depth=1
	srai.d	$a0, $s1, 3
	sltu	$a1, $s6, $a0
	masknez	$a2, $s6, $a1
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
	or	$s3, $a1, $a0
	slli.d	$a0, $s3, 3
.Ltmp0:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.9:                                # %.noexc12
                                        #   in Loop: Header=BB0_6 Depth=1
	move	$s2, $a0
	fstx.d	$fs0, $a0, $s1
	blez	$s1, .LBB0_11
# %bb.10:                               #   in Loop: Header=BB0_6 Depth=1
	move	$a0, $s2
	move	$a1, $fp
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB0_11:                               # %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit.i.i.i
                                        #   in Loop: Header=BB0_6 Depth=1
	beqz	$fp, .LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_6 Depth=1
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_13:                               # %_ZNSt6vectorIdSaIdEE17_M_realloc_appendIJdEEEvDpOT_.exit.i.i
                                        #   in Loop: Header=BB0_6 Depth=1
	add.d	$s0, $s2, $s1
	alsl.d	$s3, $s3, $s2, 3
	move	$fp, $s2
	addi.w	$s4, $s4, 1
	addi.d	$s0, $s0, 8
	bne	$s8, $s4, .LBB0_6
.LBB0_14:                               # %._crit_edge
.Ltmp6:                                 # EH_LABEL
	addi.d	$a0, $sp, 8
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(_ZN7momentsIdEC2IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEET_S9_)
	jirl	$ra, $ra, 0
.Ltmp7:                                 # EH_LABEL
# %bb.15:
	sub.d	$a0, $s0, $fp
	srai.d	$a1, $a0, 3
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 8
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 24
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 32
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 40
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 48
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 56
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB0_17
# %bb.16:
	sub.d	$a1, $s3, $fp
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_17:                               # %_ZNSt6vectorIdSaIdEED2Ev.exit
	move	$a0, $zero
	fld.d	$fs0, $sp, 64                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 160
	ret
.LBB0_18:
.Ltmp3:                                 # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp4:                                 # EH_LABEL
# %bb.19:                               # %.noexc
.LBB0_20:
.Ltmp8:                                 # EH_LABEL
	move	$s1, $a0
	move	$s0, $s3
	b	.LBB0_24
.LBB0_21:                               # %.loopexit
.Ltmp2:                                 # EH_LABEL
	b	.LBB0_23
.LBB0_22:                               # %.loopexit.split-lp
.Ltmp5:                                 # EH_LABEL
.LBB0_23:
	move	$s1, $a0
.LBB0_24:
	beqz	$fp, .LBB0_26
# %bb.25:
	sub.d	$a1, $s0, $fp
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_26:                               # %_ZNSt6vectorIdSaIdEED2Ev.exit14
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
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
	.uleb128 .Ltmp6-.Ltmp1                  #   Call between .Ltmp1 and .Ltmp6
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp6-.Lfunc_begin0           # >> Call Site 4 <<
	.uleb128 .Ltmp7-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp7
	.uleb128 .Ltmp8-.Lfunc_begin0           #     jumps to .Ltmp8
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp7-.Lfunc_begin0           # >> Call Site 5 <<
	.uleb128 .Ltmp3-.Ltmp7                  #   Call between .Ltmp7 and .Ltmp3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp3-.Lfunc_begin0           # >> Call Site 6 <<
	.uleb128 .Ltmp4-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp4
	.uleb128 .Ltmp5-.Lfunc_begin0           #     jumps to .Ltmp5
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp4-.Lfunc_begin0           # >> Call Site 7 <<
	.uleb128 .Lfunc_end0-.Ltmp4             #   Call between .Ltmp4 and .Lfunc_end0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _ZN7momentsIdEC2IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEET_S9_
.LCPI1_0:
	.dword	0x4530000000100000              # double 1.9342813118337666E+25
	.section	.text._ZN7momentsIdEC2IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEET_S9_,"axG",@progbits,_ZN7momentsIdEC2IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEET_S9_,comdat
	.weak	_ZN7momentsIdEC2IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEET_S9_
	.p2align	5
	.type	_ZN7momentsIdEC2IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEET_S9_,@function
_ZN7momentsIdEC2IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEET_S9_: # @_ZN7momentsIdEC2IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEET_S9_
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
	fst.d	$fs0, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 8                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 56, -64
	.cfi_offset 57, -72
	move	$s0, $a1
	move	$fp, $a0
	st.d	$zero, $a0, 48
	vrepli.b	$vr0, 0
	vst	$vr0, $a0, 32
	vst	$vr0, $a0, 16
	vst	$vr0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.LCPI1_0)
	lu12i.w	$a0, 275200
	bne	$a2, $s0, .LBB1_2
# %bb.1:                                # %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET0_T_S8_S7_.exit.thread
	move	$s3, $zero
	move	$s2, $zero
	ori	$a3, $zero, 0
	lu32i.d	$a3, -524288
	lu52i.d	$a3, $a3, 2047
	movgr2fr.d	$fs1, $zero
	st.d	$a3, $fp, 8
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs1
	b	.LBB1_6
.LBB1_2:                                # %.lr.ph.i.preheader
	movgr2fr.d	$fa0, $zero
	move	$a3, $s0
	.p2align	4, , 16
.LBB1_3:                                # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa1, $a3, 0
	addi.d	$a3, $a3, 8
	fadd.d	$fa0, $fa0, $fa1
	bne	$a3, $a2, .LBB1_3
# %bb.4:                                # %.lr.ph.preheader
	sub.d	$s2, $a2, $s0
	srai.d	$s3, $s2, 3
	srli.d	$a3, $s3, 32
	fld.d	$fa1, $a1, %pc_lo12(.LCPI1_0)
	lu52i.d	$a4, $zero, 1107
	or	$a3, $a3, $a4
	movgr2fr.d	$fa2, $a3
	fsub.d	$fa1, $fa2, $fa1
	move	$a3, $s3
	bstrins.d	$a3, $a0, 63, 32
	movgr2fr.d	$fa2, $a3
	fadd.d	$fs1, $fa2, $fa1
	fdiv.d	$fa2, $fa0, $fs1
	movgr2fr.d	$fa1, $zero
	fst.d	$fa2, $fp, 8
	move	$a3, $s0
	fmov.d	$fa0, $fa1
	fmov.d	$fa3, $fa1
	fmov.d	$fa4, $fa1
	.p2align	4, , 16
.LBB1_5:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa5, $a3, 0
	fsub.d	$fa5, $fa5, $fa2
	fabs.d	$fa6, $fa5
	fadd.d	$fa1, $fa1, $fa6
	fst.d	$fa1, $fp, 16
	fmul.d	$fa6, $fa5, $fa5
	fadd.d	$fa0, $fa6, $fa0
	fst.d	$fa0, $fp, 32
	fmul.d	$fa6, $fa5, $fa6
	fadd.d	$fa3, $fa6, $fa3
	fst.d	$fa3, $fp, 40
	fmadd.d	$fa4, $fa6, $fa5, $fa4
	addi.d	$a3, $a3, 8
	fst.d	$fa4, $fp, 48
	bne	$a3, $a2, .LBB1_5
.LBB1_6:                                # %._crit_edge
	fdiv.d	$fa1, $fa1, $fs1
	fst.d	$fa1, $fp, 16
	addi.d	$a3, $s3, -1
	srli.d	$a4, $a3, 32
	fld.d	$fa1, $a1, %pc_lo12(.LCPI1_0)
	lu52i.d	$a1, $zero, 1107
	or	$a1, $a4, $a1
	movgr2fr.d	$fa2, $a1
	fsub.d	$fa1, $fa2, $fa1
	bstrins.d	$a3, $a0, 63, 32
	movgr2fr.d	$fa2, $a3
	fadd.d	$fa1, $fa2, $fa1
	fdiv.d	$fs0, $fa0, $fa1
	fsqrt.d	$fa0, $fs0
	fcmp.cor.d	$fcc0, $fa0, $fa0
	fst.d	$fs0, $fp, 32
	bceqz	$fcc0, .LBB1_20
# %bb.7:                                # %._crit_edge.split
	movgr2fr.d	$fa1, $zero
	fcmp.cune.d	$fcc0, $fs0, $fa1
	fst.d	$fa0, $fp, 24
	bceqz	$fcc0, .LBB1_9
.LBB1_8:
	fld.d	$fa1, $fp, 40
	fmul.d	$fa2, $fs0, $fs1
	fmul.d	$fa0, $fa2, $fa0
	fld.d	$fa3, $fp, 48
	fdiv.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $fp, 40
	fmul.d	$fa0, $fs0, $fa2
	fdiv.d	$fa0, $fa3, $fa0
	vldi	$vr1, -888
	fadd.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $fp, 48
.LBB1_9:
	srai.d	$s4, $s2, 1
	bstrins.d	$s4, $zero, 2, 0
	add.d	$s1, $s0, $s4
	beq	$a2, $s0, .LBB1_12
# %bb.10:
	beq	$a2, $s1, .LBB1_12
# %bb.11:
	clz.d	$a0, $s3
	slli.d	$a0, $a0, 1
	xori	$a3, $a0, 126
	move	$a0, $s0
	move	$a1, $s1
	move	$a4, $zero
	pcaddu18i	$ra, %call36(_ZSt13__introselectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_T1_)
	jirl	$ra, $ra, 0
.LBB1_12:                               # %_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_S7_.exit
	andi	$a0, $s2, 8
	bnez	$a0, .LBB1_18
# %bb.13:
	beq	$s0, $s1, .LBB1_17
# %bb.14:
	ori	$a0, $zero, 8
	beq	$s4, $a0, .LBB1_17
# %bb.15:                               # %.lr.ph.preheader.i.i
	fld.d	$fa0, $s0, 0
	addi.d	$a0, $s0, 8
	addi.d	$a1, $s4, -8
	.p2align	4, , 16
.LBB1_16:                               # %.lr.ph.i.i
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa1, $a0, 0
	fcmp.clt.d	$fcc0, $fa0, $fa1
	fsel	$fa0, $fa0, $fa1, $fcc0
	movcf2gr	$a2, $fcc0
	masknez	$a3, $s0, $a2
	maskeqz	$a2, $a0, $a2
	or	$s0, $a2, $a3
	addi.d	$a1, $a1, -8
	addi.d	$a0, $a0, 8
	bnez	$a1, .LBB1_16
.LBB1_17:                               # %_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEET_S7_S7_.exit
	fld.d	$fa0, $s1, 0
	fld.d	$fa1, $s0, 0
	fadd.d	$fa0, $fa0, $fa1
	vldi	$vr1, -928
	fmul.d	$fa0, $fa0, $fa1
	b	.LBB1_19
.LBB1_18:
	fld.d	$fa0, $s1, 0
.LBB1_19:
	fst.d	$fa0, $fp, 0
	fld.d	$fs1, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs0, $sp, 16                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.LBB1_20:                               # %call.sqrt
	fmov.d	$fa0, $fs0
	move	$s1, $a2
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	move	$a2, $s1
	movgr2fr.d	$fa1, $zero
	fcmp.cune.d	$fcc0, $fs0, $fa1
	fst.d	$fa0, $fp, 24
	bcnez	$fcc0, .LBB1_8
	b	.LBB1_9
.Lfunc_end1:
	.size	_ZN7momentsIdEC2IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEET_S9_, .Lfunc_end1-_ZN7momentsIdEC2IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEET_S9_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt13__introselectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_T1_,"axG",@progbits,_ZSt13__introselectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_T1_,comdat
	.weak	_ZSt13__introselectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_T1_ # -- Begin function _ZSt13__introselectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_T1_
	.p2align	5
	.type	_ZSt13__introselectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_T1_,@function
_ZSt13__introselectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_T1_: # @_ZSt13__introselectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_T1_
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
	fst.d	$fs0, $sp, 8                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 56, -56
	move	$s0, $a2
	move	$fp, $a0
	sub.d	$a0, $a2, $a0
	srai.d	$a2, $a0, 3
	ori	$a0, $zero, 4
	blt	$a2, $a0, .LBB2_24
# %bb.1:                                # %.lr.ph.preheader
	beqz	$a3, .LBB2_23
# %bb.2:                                # %.lr.ph73.preheader
	ori	$a0, $zero, 3
	.p2align	4, , 16
.LBB2_3:                                # %.lr.ph73
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_15 Depth 2
                                        #       Child Loop BB2_16 Depth 3
                                        #       Child Loop BB2_18 Depth 3
	slli.d	$a2, $a2, 2
	bstrins.d	$a2, $zero, 2, 0
	fld.d	$fa1, $fp, 8
	fldx.d	$fa2, $fp, $a2
	fld.d	$fa0, $s0, -8
	fcmp.cule.d	$fcc0, $fa2, $fa1
	add.d	$a2, $fp, $a2
	bcnez	$fcc0, .LBB2_6
# %bb.4:                                #   in Loop: Header=BB2_3 Depth=1
	fcmp.cule.d	$fcc0, $fa0, $fa2
	bcnez	$fcc0, .LBB2_8
# %bb.5:                                #   in Loop: Header=BB2_3 Depth=1
	fld.d	$fa0, $fp, 0
	fst.d	$fa2, $fp, 0
	fst.d	$fa0, $a2, 0
	b	.LBB2_14
	.p2align	4, , 16
.LBB2_6:                                #   in Loop: Header=BB2_3 Depth=1
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB2_10
# %bb.7:                                #   in Loop: Header=BB2_3 Depth=1
	fld.d	$fa0, $fp, 0
	fst.d	$fa1, $fp, 0
	fst.d	$fa0, $fp, 8
	b	.LBB2_14
	.p2align	4, , 16
.LBB2_8:                                #   in Loop: Header=BB2_3 Depth=1
	fld.d	$fa2, $fp, 0
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB2_12
# %bb.9:                                #   in Loop: Header=BB2_3 Depth=1
	fst.d	$fa0, $fp, 0
	fst.d	$fa2, $s0, -8
	b	.LBB2_14
	.p2align	4, , 16
.LBB2_10:                               #   in Loop: Header=BB2_3 Depth=1
	fld.d	$fa1, $fp, 0
	fcmp.cule.d	$fcc0, $fa0, $fa2
	bcnez	$fcc0, .LBB2_13
# %bb.11:                               #   in Loop: Header=BB2_3 Depth=1
	fst.d	$fa0, $fp, 0
	fst.d	$fa1, $s0, -8
	b	.LBB2_14
.LBB2_12:                               #   in Loop: Header=BB2_3 Depth=1
	fst.d	$fa1, $fp, 0
	fst.d	$fa2, $fp, 8
	b	.LBB2_14
.LBB2_13:                               #   in Loop: Header=BB2_3 Depth=1
	fst.d	$fa2, $fp, 0
	fst.d	$fa1, $a2, 0
	.p2align	4, , 16
.LBB2_14:                               # %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader
                                        #   in Loop: Header=BB2_3 Depth=1
	addi.d	$a3, $a3, -1
	addi.d	$a2, $fp, 8
	move	$a4, $s0
	.p2align	4, , 16
.LBB2_15:                               # %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_16 Depth 3
                                        #       Child Loop BB2_18 Depth 3
	fld.d	$fa1, $fp, 0
	.p2align	4, , 16
.LBB2_16:                               #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa0, $a2, 0
	fcmp.clt.d	$fcc0, $fa0, $fa1
	addi.d	$a2, $a2, 8
	bcnez	$fcc0, .LBB2_16
# %bb.17:                               # %.preheader.i.i.preheader
                                        #   in Loop: Header=BB2_15 Depth=2
	addi.d	$a5, $a2, -8
	.p2align	4, , 16
.LBB2_18:                               # %.preheader.i.i
                                        #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa2, $a4, -8
	fcmp.clt.d	$fcc0, $fa1, $fa2
	addi.d	$a4, $a4, -8
	bcnez	$fcc0, .LBB2_18
# %bb.19:                               #   in Loop: Header=BB2_15 Depth=2
	bgeu	$a5, $a4, .LBB2_21
# %bb.20:                               #   in Loop: Header=BB2_15 Depth=2
	fst.d	$fa2, $a5, 0
	fst.d	$fa0, $a4, 0
	b	.LBB2_15
	.p2align	4, , 16
.LBB2_21:                               # %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_.exit
                                        #   in Loop: Header=BB2_3 Depth=1
	sltu	$a2, $a1, $a5
	masknez	$a4, $s0, $a2
	maskeqz	$a6, $a5, $a2
	or	$s0, $a6, $a4
	masknez	$a4, $a5, $a2
	maskeqz	$a2, $fp, $a2
	or	$fp, $a2, $a4
	sub.d	$a2, $s0, $fp
	srai.d	$a2, $a2, 3
	bge	$a0, $a2, .LBB2_24
# %bb.22:                               # %.lr.ph
                                        #   in Loop: Header=BB2_3 Depth=1
	bnez	$a3, .LBB2_3
.LBB2_23:                               # %.lr.ph._crit_edge
	addi.d	$a2, $a1, 8
	move	$a0, $fp
	move	$s1, $a1
	move	$a1, $a2
	move	$a2, $s0
	move	$a3, $zero
	pcaddu18i	$ra, %call36(_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s1, 0
	fld.d	$fa1, $fp, 0
	fst.d	$fa0, $fp, 0
	fst.d	$fa1, $s1, 0
	b	.LBB2_37
.LBB2_24:                               # %._crit_edge
	beq	$fp, $s0, .LBB2_37
# %bb.25:                               # %._crit_edge
	addi.d	$a2, $fp, 8
	beq	$a2, $s0, .LBB2_37
# %bb.26:                               # %.lr.ph.i.preheader
	ori	$s1, $zero, 2
	ori	$s2, $zero, 8
	move	$s3, $fp
	b	.LBB2_31
	.p2align	4, , 16
.LBB2_27:                               #   in Loop: Header=BB2_31 Depth=1
	sub.d	$a2, $s3, $fp
	srai.d	$a0, $a2, 3
	blt	$a0, $s1, .LBB2_35
# %bb.28:                               #   in Loop: Header=BB2_31 Depth=1
	slli.d	$a0, $a0, 3
	sub.d	$a0, $a1, $a0
	addi.d	$a0, $a0, 16
	move	$a1, $fp
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
.LBB2_29:                               # %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_.exit.i
                                        #   in Loop: Header=BB2_31 Depth=1
	move	$a0, $fp
.LBB2_30:                               # %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_.exit.i
                                        #   in Loop: Header=BB2_31 Depth=1
	addi.d	$a2, $s3, 8
	fst.d	$fs0, $a0, 0
	beq	$a2, $s0, .LBB2_37
.LBB2_31:                               # %.lr.ph.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_34 Depth 2
	move	$a1, $s3
	fld.d	$fs0, $s3, 8
	fld.d	$fa0, $fp, 0
	fcmp.cule.d	$fcc0, $fa0, $fs0
	move	$s3, $a2
	bceqz	$fcc0, .LBB2_27
# %bb.32:                               #   in Loop: Header=BB2_31 Depth=1
	fld.d	$fa0, $a1, 0
	fcmp.cule.d	$fcc0, $fa0, $fs0
	move	$a0, $s3
	bcnez	$fcc0, .LBB2_30
# %bb.33:                               # %.lr.ph.i.i.preheader
                                        #   in Loop: Header=BB2_31 Depth=1
	move	$a0, $s3
	.p2align	4, , 16
.LBB2_34:                               # %.lr.ph.i.i
                                        #   Parent Loop BB2_31 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fst.d	$fa0, $a0, 0
	fld.d	$fa0, $a0, -16
	fcmp.clt.d	$fcc0, $fs0, $fa0
	addi.d	$a0, $a0, -8
	bcnez	$fcc0, .LBB2_34
	b	.LBB2_30
.LBB2_35:                               #   in Loop: Header=BB2_31 Depth=1
	move	$a0, $fp
	bne	$a2, $s2, .LBB2_30
# %bb.36:                               #   in Loop: Header=BB2_31 Depth=1
	fst.d	$fa0, $a1, 8
	b	.LBB2_29
.LBB2_37:                               # %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end2:
	.size	_ZSt13__introselectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_T1_, .Lfunc_end2-_ZSt13__introselectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_T1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_,"axG",@progbits,_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_,comdat
	.weak	_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_ # -- Begin function _ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_
	.p2align	5
	.type	_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_,@function
_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_: # @_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -48
	.cfi_def_cfa_offset 48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	st.b	$a3, $sp, 15
	addi.d	$a2, $sp, 15
	pcaddu18i	$ra, %call36(_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_)
	jirl	$ra, $ra, 0
	bgeu	$s0, $fp, .LBB3_28
# %bb.1:                                # %.lr.ph
	sub.d	$a0, $s0, $s1
	srai.d	$a1, $a0, 3
	andi	$a0, $a0, 8
	ori	$a2, $zero, 3
	addi.d	$a3, $a1, -2
	blt	$a1, $a2, .LBB3_15
# %bb.2:                                # %.lr.ph.split.us.preheader
	addi.d	$a1, $a1, -1
	srli.d	$a2, $a1, 63
	add.d	$a1, $a1, $a2
	srai.d	$a1, $a1, 1
	srai.d	$a2, $a3, 1
	addi.d	$a3, $a3, 1
	alsl.d	$a4, $a3, $s1, 3
	alsl.d	$a5, $a2, $s1, 3
	ori	$a6, $zero, 1
	b	.LBB3_6
	.p2align	4, , 16
.LBB3_3:                                #   in Loop: Header=BB3_6 Depth=1
	move	$a7, $zero
.LBB3_4:                                # %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.us
                                        #   in Loop: Header=BB3_6 Depth=1
	slli.d	$a7, $a7, 3
	fstx.d	$fa0, $s1, $a7
.LBB3_5:                                #   in Loop: Header=BB3_6 Depth=1
	addi.d	$s0, $s0, 8
	bgeu	$s0, $fp, .LBB3_28
.LBB3_6:                                # %.lr.ph.split.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_8 Depth 2
                                        #     Child Loop BB3_13 Depth 2
	fld.d	$fa0, $s0, 0
	fld.d	$fa1, $s1, 0
	fcmp.cule.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB3_5
# %bb.7:                                # %.lr.ph.i.i.preheader.us
                                        #   in Loop: Header=BB3_6 Depth=1
	move	$a7, $zero
	fst.d	$fa1, $s0, 0
	.p2align	4, , 16
.LBB3_8:                                # %.lr.ph.i.i.us
                                        #   Parent Loop BB3_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$t0, $a7
	slli.d	$a7, $a7, 1
	addi.d	$t1, $a7, 2
	slli.d	$t2, $t1, 3
	addi.d	$a7, $a7, 1
	slli.d	$t3, $a7, 3
	fldx.d	$fa1, $s1, $t2
	fldx.d	$fa2, $s1, $t3
	fcmp.clt.d	$fcc0, $fa1, $fa2
	movcf2gr	$t2, $fcc0
	masknez	$t1, $t1, $t2
	maskeqz	$a7, $a7, $t2
	or	$a7, $a7, $t1
	slli.d	$t1, $a7, 3
	fldx.d	$fa1, $s1, $t1
	slli.d	$t0, $t0, 3
	fstx.d	$fa1, $s1, $t0
	blt	$a7, $a1, .LBB3_8
# %bb.9:                                # %._crit_edge.i.i.loopexit.us
                                        #   in Loop: Header=BB3_6 Depth=1
	bnez	$a0, .LBB3_12
# %bb.10:                               # %._crit_edge.i.i.loopexit.us
                                        #   in Loop: Header=BB3_6 Depth=1
	bne	$a7, $a2, .LBB3_12
# %bb.11:                               # %.thread.i.us
                                        #   in Loop: Header=BB3_6 Depth=1
	fld.d	$fa1, $a4, 0
	fst.d	$fa1, $a5, 0
	move	$a7, $a3
	b	.LBB3_13
	.p2align	4, , 16
.LBB3_12:                               #   in Loop: Header=BB3_6 Depth=1
	beqz	$a7, .LBB3_3
	.p2align	4, , 16
.LBB3_13:                               # %.lr.ph.i.i.i.us
                                        #   Parent Loop BB3_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$t0, $a7, -1
	srli.d	$t1, $t0, 1
	slli.d	$t2, $t1, 3
	fldx.d	$fa1, $s1, $t2
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB3_4
# %bb.14:                               #   in Loop: Header=BB3_13 Depth=2
	slli.d	$a7, $a7, 3
	fstx.d	$fa1, $s1, $a7
	move	$a7, $t1
	bltu	$a6, $t0, .LBB3_13
	b	.LBB3_3
.LBB3_15:                               # %.lr.ph.split
	bnez	$a0, .LBB3_24
# %bb.16:                               # %.lr.ph.split.split.us
	beqz	$a3, .LBB3_22
# %bb.17:                               # %.lr.ph.split.split.us.split.preheader
	fld.d	$fa0, $s1, 0
	b	.LBB3_19
	.p2align	4, , 16
.LBB3_18:                               #   in Loop: Header=BB3_19 Depth=1
	addi.d	$s0, $s0, 8
	bgeu	$s0, $fp, .LBB3_28
.LBB3_19:                               # %.lr.ph.split.split.us.split
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa1, $s0, 0
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB3_18
# %bb.20:                               # %._crit_edge.i.i.us13
                                        #   in Loop: Header=BB3_19 Depth=1
	fst.d	$fa0, $s0, 0
	fst.d	$fa1, $s1, 0
	fmov.d	$fa0, $fa1
	b	.LBB3_18
	.p2align	4, , 16
.LBB3_21:                               #   in Loop: Header=BB3_22 Depth=1
	addi.d	$s0, $s0, 8
	bgeu	$s0, $fp, .LBB3_28
.LBB3_22:                               # %.lr.ph.split.split.us.split.us
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $s0, 0
	fld.d	$fa1, $s1, 0
	fcmp.cule.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB3_21
# %bb.23:                               # %._crit_edge.i.i.us13.us
                                        #   in Loop: Header=BB3_22 Depth=1
	fst.d	$fa1, $s0, 0
	fld.d	$fa1, $s1, 8
	fcmp.cule.d	$fcc0, $fa0, $fa1
	fst.d	$fa1, $s1, 0
	movcf2gr	$a0, $fcc0
	slli.d	$a0, $a0, 3
	fstx.d	$fa0, $s1, $a0
	b	.LBB3_21
.LBB3_24:                               # %.lr.ph.split.split.preheader
	fld.d	$fa0, $s1, 0
	b	.LBB3_26
	.p2align	4, , 16
.LBB3_25:                               #   in Loop: Header=BB3_26 Depth=1
	addi.d	$s0, $s0, 8
	bgeu	$s0, $fp, .LBB3_28
.LBB3_26:                               # %.lr.ph.split.split
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa1, $s0, 0
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB3_25
# %bb.27:                               # %._crit_edge.i.i
                                        #   in Loop: Header=BB3_26 Depth=1
	fst.d	$fa0, $s0, 0
	fst.d	$fa1, $s1, 0
	fmov.d	$fa0, $fa1
	b	.LBB3_25
.LBB3_28:                               # %._crit_edge
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end3:
	.size	_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_, .Lfunc_end3-_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_,"axG",@progbits,_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_,comdat
	.weak	_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_ # -- Begin function _ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_
	.p2align	5
	.type	_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_,@function
_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_: # @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_
	.cfi_startproc
# %bb.0:
	sub.d	$a1, $a1, $a0
	srai.d	$a3, $a1, 3
	ori	$a2, $zero, 2
	bge	$a3, $a2, .LBB4_2
.LBB4_1:                                # %.loopexit
	ret
.LBB4_2:
	addi.d	$a4, $a3, -2
	srli.d	$a2, $a4, 1
	addi.d	$a3, $a3, -1
	andi	$a5, $a1, 8
	srli.d	$a1, $a3, 1
	bnez	$a5, .LBB4_16
# %bb.3:                                # %.split.preheader
	addi.d	$a3, $a4, 1
	alsl.d	$a4, $a3, $a0, 3
	alsl.d	$a5, $a2, $a0, 3
	move	$a7, $a2
	b	.LBB4_6
	.p2align	4, , 16
.LBB4_4:                                #   in Loop: Header=BB4_6 Depth=1
	move	$t0, $a7
.LBB4_5:                                # %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit
                                        #   in Loop: Header=BB4_6 Depth=1
	slli.d	$a7, $t0, 3
	fstx.d	$fa0, $a0, $a7
	addi.d	$a7, $a6, -1
	beqz	$a6, .LBB4_1
.LBB4_6:                                # %.split
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_8 Depth 2
                                        #     Child Loop BB4_12 Depth 2
	move	$a6, $a7
	slli.d	$a7, $a7, 3
	fldx.d	$fa0, $a0, $a7
	move	$a7, $a6
	bge	$a6, $a1, .LBB4_9
# %bb.7:                                # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB4_6 Depth=1
	move	$t0, $a6
	.p2align	4, , 16
.LBB4_8:                                # %.lr.ph.i
                                        #   Parent Loop BB4_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$a7, $t0, 1
	addi.d	$t1, $a7, 2
	slli.d	$t2, $t1, 3
	addi.d	$a7, $a7, 1
	slli.d	$t3, $a7, 3
	fldx.d	$fa1, $a0, $t2
	fldx.d	$fa2, $a0, $t3
	fcmp.clt.d	$fcc0, $fa1, $fa2
	movcf2gr	$t2, $fcc0
	masknez	$t1, $t1, $t2
	maskeqz	$a7, $a7, $t2
	or	$a7, $a7, $t1
	slli.d	$t1, $a7, 3
	fldx.d	$fa1, $a0, $t1
	slli.d	$t0, $t0, 3
	fstx.d	$fa1, $a0, $t0
	move	$t0, $a7
	blt	$a7, $a1, .LBB4_8
.LBB4_9:                                # %._crit_edge.i
                                        #   in Loop: Header=BB4_6 Depth=1
	bne	$a7, $a2, .LBB4_11
# %bb.10:                               #   in Loop: Header=BB4_6 Depth=1
	fld.d	$fa1, $a4, 0
	fst.d	$fa1, $a5, 0
	move	$a7, $a3
.LBB4_11:                               #   in Loop: Header=BB4_6 Depth=1
	bge	$a6, $a7, .LBB4_4
	.p2align	4, , 16
.LBB4_12:                               # %.lr.ph.i.i
                                        #   Parent Loop BB4_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$t0, $a7, -1
	srli.d	$t1, $t0, 63
	add.d	$t0, $t0, $t1
	srai.d	$t0, $t0, 1
	slli.d	$t1, $t0, 3
	fldx.d	$fa1, $a0, $t1
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB4_4
# %bb.13:                               #   in Loop: Header=BB4_12 Depth=2
	slli.d	$a7, $a7, 3
	fstx.d	$fa1, $a0, $a7
	move	$a7, $t0
	blt	$a6, $t0, .LBB4_12
	b	.LBB4_5
	.p2align	4, , 16
.LBB4_14:                               #   in Loop: Header=BB4_16 Depth=1
	move	$a4, $a2
.LBB4_15:                               # %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us
                                        #   in Loop: Header=BB4_16 Depth=1
	slli.d	$a2, $a4, 3
	fstx.d	$fa0, $a0, $a2
	addi.d	$a2, $a3, -1
	beqz	$a3, .LBB4_1
.LBB4_16:                               # %.split.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_18 Depth 2
                                        #     Child Loop BB4_20 Depth 2
	move	$a3, $a2
	slli.d	$a2, $a2, 3
	fldx.d	$fa0, $a0, $a2
	move	$a4, $a3
	bge	$a3, $a1, .LBB4_15
# %bb.17:                               # %.lr.ph.i.us.preheader
                                        #   in Loop: Header=BB4_16 Depth=1
	move	$a2, $a3
	.p2align	4, , 16
.LBB4_18:                               # %.lr.ph.i.us
                                        #   Parent Loop BB4_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a4, $a2
	slli.d	$a2, $a2, 1
	addi.d	$a5, $a2, 2
	slli.d	$a6, $a5, 3
	addi.d	$a2, $a2, 1
	slli.d	$a7, $a2, 3
	fldx.d	$fa1, $a0, $a6
	fldx.d	$fa2, $a0, $a7
	fcmp.clt.d	$fcc0, $fa1, $fa2
	movcf2gr	$a6, $fcc0
	masknez	$a5, $a5, $a6
	maskeqz	$a2, $a2, $a6
	or	$a2, $a2, $a5
	slli.d	$a5, $a2, 3
	fldx.d	$fa1, $a0, $a5
	slli.d	$a4, $a4, 3
	fstx.d	$fa1, $a0, $a4
	blt	$a2, $a1, .LBB4_18
# %bb.19:                               # %._crit_edge.i.us
                                        #   in Loop: Header=BB4_16 Depth=1
	bge	$a3, $a2, .LBB4_14
	.p2align	4, , 16
.LBB4_20:                               # %.lr.ph.i.i.us
                                        #   Parent Loop BB4_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a4, $a2, -1
	srli.d	$a5, $a4, 63
	add.d	$a4, $a4, $a5
	srai.d	$a4, $a4, 1
	slli.d	$a5, $a4, 3
	fldx.d	$fa1, $a0, $a5
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB4_14
# %bb.21:                               #   in Loop: Header=BB4_20 Depth=2
	slli.d	$a2, $a2, 3
	fstx.d	$fa1, $a0, $a2
	move	$a2, $a4
	blt	$a3, $a4, .LBB4_20
	b	.LBB4_15
.Lfunc_end4:
	.size	_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_, .Lfunc_end4-_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"n:                  %d\n"
	.size	.L.str, 24

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"median:             %f\n"
	.size	.L.str.1, 24

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"mean:               %f\n"
	.size	.L.str.2, 24

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"average_deviation:  %f\n"
	.size	.L.str.3, 24

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"standard_deviation: %f\n"
	.size	.L.str.4, 24

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"variance:           %f\n"
	.size	.L.str.5, 24

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"skew:               %f\n"
	.size	.L.str.6, 24

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"kurtosis:           %f\n"
	.size	.L.str.7, 24

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"vector::_M_realloc_append"
	.size	.L.str.8, 26

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
