	.file	"statistics.cc"
                                        # Start of file scope inline assembly
	.globl	_ZSt21ios_base_library_initv

                                        # End of file scope inline assembly
	.text
	.hidden	_ZN9benchmark14StatisticsMeanERKSt6vectorIdSaIdEE # -- Begin function _ZN9benchmark14StatisticsMeanERKSt6vectorIdSaIdEE
	.globl	_ZN9benchmark14StatisticsMeanERKSt6vectorIdSaIdEE
	.p2align	5
	.type	_ZN9benchmark14StatisticsMeanERKSt6vectorIdSaIdEE,@function
_ZN9benchmark14StatisticsMeanERKSt6vectorIdSaIdEE: # @_ZN9benchmark14StatisticsMeanERKSt6vectorIdSaIdEE
# %bb.0:
	ld.d	$a1, $a0, 0
	ld.d	$a0, $a0, 8
	beq	$a1, $a0, .LBB0_4
# %bb.1:                                # %.lr.ph.i.i.preheader
	movgr2fr.d	$fa0, $zero
	move	$a2, $a1
	.p2align	4, , 16
.LBB0_2:                                # %.lr.ph.i.i
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa1, $a2, 0
	addi.d	$a2, $a2, 8
	fadd.d	$fa0, $fa0, $fa1
	bne	$a2, $a0, .LBB0_2
# %bb.3:                                # %"_ZNK9benchmark3$_0clERKSt6vectorIdSaIdEE.exit"
	sub.d	$a0, $a0, $a1
	srai.d	$a0, $a0, 3
	srli.d	$a1, $a0, 32
	lu52i.d	$a2, $zero, 1107
	or	$a1, $a1, $a2
	movgr2fr.d	$fa1, $a1
	lu12i.w	$a1, 256
	lu52i.d	$a1, $a1, 1107
	movgr2fr.d	$fa2, $a1
	fsub.d	$fa1, $fa1, $fa2
	lu12i.w	$a1, 275200
	bstrins.d	$a0, $a1, 63, 32
	movgr2fr.d	$fa2, $a0
	fadd.d	$fa1, $fa2, $fa1
	frecip.d	$fa1, $fa1
	fmul.d	$fa0, $fa1, $fa0
	ret
.LBB0_4:
	movgr2fr.d	$fa0, $zero
	ret
.Lfunc_end0:
	.size	_ZN9benchmark14StatisticsMeanERKSt6vectorIdSaIdEE, .Lfunc_end0-_ZN9benchmark14StatisticsMeanERKSt6vectorIdSaIdEE
                                        # -- End function
	.hidden	_ZN9benchmark16StatisticsMedianERKSt6vectorIdSaIdEE # -- Begin function _ZN9benchmark16StatisticsMedianERKSt6vectorIdSaIdEE
	.globl	_ZN9benchmark16StatisticsMedianERKSt6vectorIdSaIdEE
	.p2align	5
	.type	_ZN9benchmark16StatisticsMedianERKSt6vectorIdSaIdEE,@function
_ZN9benchmark16StatisticsMedianERKSt6vectorIdSaIdEE: # @_ZN9benchmark16StatisticsMedianERKSt6vectorIdSaIdEE
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
	ld.d	$a0, $a0, 8
	ld.d	$s1, $s2, 0
	sub.d	$s0, $a0, $s1
	srai.d	$a1, $s0, 3
	ori	$a2, $zero, 2
	bltu	$a2, $a1, .LBB1_5
# %bb.1:
	beq	$s1, $a0, .LBB1_9
# %bb.2:                                # %.lr.ph.i.i.i.preheader
	movgr2fr.d	$fa0, $zero
	.p2align	4, , 16
.LBB1_3:                                # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa1, $s1, 0
	addi.d	$s1, $s1, 8
	fadd.d	$fa0, $fa0, $fa1
	bne	$s1, $a0, .LBB1_3
# %bb.4:                                # %"_ZNK9benchmark3$_0clERKSt6vectorIdSaIdEE.exit.i"
	movgr2fr.d	$fa1, $a1
	ffint.d.l	$fa1, $fa1
	frecip.d	$fa1, $fa1
	fmul.d	$fs0, $fa1, $fa0
	b	.LBB1_22
.LBB1_5:
	beq	$s1, $a0, .LBB1_10
# %bb.6:
	addi.w	$a0, $zero, -7
	lu52i.d	$a0, $a0, 2047
	bgeu	$s0, $a0, .LBB1_23
# %bb.7:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ori	$a0, $zero, 9
	add.d	$s4, $fp, $s0
	bltu	$s0, $a0, .LBB1_24
# %bb.8:
	move	$a0, $fp
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
	b	.LBB1_11
.LBB1_9:
	movgr2fr.d	$fs0, $zero
	b	.LBB1_22
.LBB1_10:                               # %.thread26
	move	$fp, $zero
	move	$s4, $s0
.LBB1_11:                               # %_ZNSt6vectorIdSaIdEEC2ERKS1_.exit
	srli.d	$a0, $s0, 1
	addi.w	$a1, $zero, -8
	lu52i.d	$a1, $a1, 2047
	and	$s5, $a0, $a1
	add.d	$s3, $fp, $s5
	sub.d	$s1, $s4, $fp
	move	$a0, $s0
	beq	$fp, $s4, .LBB1_15
# %bb.12:                               # %_ZNSt6vectorIdSaIdEEC2ERKS1_.exit
	move	$a0, $s0
	beq	$s3, $s4, .LBB1_15
# %bb.13:
	srai.d	$a0, $s1, 3
	clz.d	$a0, $a0
	slli.d	$a0, $a0, 1
	xori	$a3, $a0, 126
.Ltmp0:                                 # EH_LABEL
	move	$a0, $fp
	move	$a1, $s3
	move	$a2, $s4
	move	$a4, $zero
	pcaddu18i	$ra, %call36(_ZSt13__introselectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_T1_)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.14:                               # %._ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_S7_.exit_crit_edge
	ld.d	$a0, $s2, 8
	ld.d	$a1, $s2, 0
	sub.d	$a0, $a0, $a1
.LBB1_15:                               # %_ZSt11nth_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_S7_.exit
	andi	$a0, $a0, 8
	bnez	$a0, .LBB1_20
# %bb.16:
	ori	$a0, $zero, 32
	move	$a2, $fp
	bltu	$s0, $a0, .LBB1_19
# %bb.17:                               # %.lr.ph.preheader.i.i
	fld.d	$fa0, $fp, 0
	addi.d	$a0, $fp, 8
	addi.d	$a1, $s5, -8
	move	$a2, $fp
	.p2align	4, , 16
.LBB1_18:                               # %.lr.ph.i.i
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa1, $a0, 0
	fcmp.clt.d	$fcc0, $fa0, $fa1
	fsel	$fa0, $fa0, $fa1, $fcc0
	movcf2gr	$a3, $fcc0
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $a0, $a3
	or	$a2, $a3, $a2
	addi.d	$a1, $a1, -8
	addi.d	$a0, $a0, 8
	bnez	$a1, .LBB1_18
.LBB1_19:                               # %_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEET_S7_S7_.exit
	fld.d	$fa0, $s3, 0
	fld.d	$fa1, $a2, 0
	fadd.d	$fa0, $fa0, $fa1
	vldi	$vr1, -928
	fmul.d	$fs0, $fa0, $fa1
	b	.LBB1_21
.LBB1_20:
	fld.d	$fs0, $s3, 0
.LBB1_21:                               # %_ZNSt6vectorIdSaIdEED2Ev.exit
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_22:                               # %_ZN9benchmark14StatisticsMeanERKSt6vectorIdSaIdEE.exit
	fmov.d	$fa0, $fs0
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
.LBB1_23:                               # %.noexc.i.i
	pcaddu18i	$ra, %call36(_ZSt28__throw_bad_array_new_lengthv)
	jirl	$ra, $ra, 0
.LBB1_24:
	ori	$a0, $zero, 8
	bne	$s0, $a0, .LBB1_11
# %bb.25:
	fld.d	$fa0, $s1, 0
	fst.d	$fa0, $fp, 0
	b	.LBB1_11
.LBB1_26:
.Ltmp2:                                 # EH_LABEL
	move	$s0, $a0
	beqz	$fp, .LBB1_28
# %bb.27:                               # %.thread27
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_28:                               # %_ZNSt6vectorIdSaIdEED2Ev.exit16
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	_ZN9benchmark16StatisticsMedianERKSt6vectorIdSaIdEE, .Lfunc_end1-_ZN9benchmark16StatisticsMedianERKSt6vectorIdSaIdEE
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
	.uleb128 .Ltmp1-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp1
	.uleb128 .Ltmp2-.Lfunc_begin0           #     jumps to .Ltmp2
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Lfunc_end1-.Ltmp1             #   Call between .Ltmp1 and .Lfunc_end1
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.hidden	_ZN9benchmark16StatisticsStdDevERKSt6vectorIdSaIdEE # -- Begin function _ZN9benchmark16StatisticsStdDevERKSt6vectorIdSaIdEE
	.globl	_ZN9benchmark16StatisticsStdDevERKSt6vectorIdSaIdEE
	.p2align	5
	.type	_ZN9benchmark16StatisticsStdDevERKSt6vectorIdSaIdEE,@function
_ZN9benchmark16StatisticsStdDevERKSt6vectorIdSaIdEE: # @_ZN9benchmark16StatisticsStdDevERKSt6vectorIdSaIdEE
# %bb.0:
	ld.d	$a1, $a0, 0
	ld.d	$a0, $a0, 8
	beq	$a1, $a0, .LBB2_4
# %bb.1:                                # %.lr.ph.i.i.i.preheader
	movgr2fr.d	$fa0, $zero
	move	$a2, $a1
	.p2align	4, , 16
.LBB2_2:                                # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa1, $a2, 0
	addi.d	$a2, $a2, 8
	fadd.d	$fa0, $fa0, $fa1
	bne	$a2, $a0, .LBB2_2
# %bb.3:
	sub.d	$a2, $a0, $a1
	ori	$a3, $zero, 8
	bne	$a2, $a3, .LBB2_6
.LBB2_4:
	movgr2fr.d	$fa0, $zero
.LBB2_5:                                # %"_ZNK9benchmark3$_2clEd.exit"
	ret
.LBB2_6:                                # %.lr.ph.i.i.preheader
	srai.d	$a2, $a2, 3
	srli.d	$a3, $a2, 32
	lu52i.d	$a4, $zero, 1107
	or	$a3, $a3, $a4
	movgr2fr.d	$fa1, $a3
	lu12i.w	$a3, 256
	lu52i.d	$a3, $a3, 1107
	movgr2fr.d	$fa2, $a3
	fsub.d	$fa1, $fa1, $fa2
	lu12i.w	$a3, 275200
	bstrins.d	$a2, $a3, 63, 32
	movgr2fr.d	$fa2, $a2
	fadd.d	$fa1, $fa2, $fa1
	frecip.d	$fa2, $fa1
	fmul.d	$fa0, $fa2, $fa0
	movgr2fr.d	$fa3, $zero
	.p2align	4, , 16
.LBB2_7:                                # %.lr.ph.i.i
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa4, $a1, 0
	addi.d	$a1, $a1, 8
	fmadd.d	$fa3, $fa4, $fa4, $fa3
	bne	$a1, $a0, .LBB2_7
# %bb.8:                                # %"_ZNK9benchmark3$_1clERKSt6vectorIdSaIdEE.exit"
	fmul.d	$fa2, $fa2, $fa3
	vldi	$vr3, -784
	fadd.d	$fa3, $fa1, $fa3
	fdiv.d	$fa1, $fa1, $fa3
	fmul.d	$fa0, $fa0, $fa0
	fsub.d	$fa0, $fa2, $fa0
	fmul.d	$fa1, $fa1, $fa0
	movgr2fr.d	$fa0, $zero
	fcmp.clt.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB2_5
# %bb.9:
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB2_5
# %bb.10:                               # %call.sqrt
	fmov.d	$fa0, $fa1
	pcaddu18i	$t8, %call36(sqrt)
	jr	$t8
.Lfunc_end2:
	.size	_ZN9benchmark16StatisticsStdDevERKSt6vectorIdSaIdEE, .Lfunc_end2-_ZN9benchmark16StatisticsStdDevERKSt6vectorIdSaIdEE
                                        # -- End function
	.hidden	_ZN9benchmark12StatisticsCVERKSt6vectorIdSaIdEE # -- Begin function _ZN9benchmark12StatisticsCVERKSt6vectorIdSaIdEE
	.globl	_ZN9benchmark12StatisticsCVERKSt6vectorIdSaIdEE
	.p2align	5
	.type	_ZN9benchmark12StatisticsCVERKSt6vectorIdSaIdEE,@function
_ZN9benchmark12StatisticsCVERKSt6vectorIdSaIdEE: # @_ZN9benchmark12StatisticsCVERKSt6vectorIdSaIdEE
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 8                    # 8-byte Folded Spill
	ld.d	$fp, $a0, 8
	ld.d	$s0, $a0, 0
	movgr2fr.d	$fa1, $zero
	beq	$fp, $s0, .LBB3_12
# %bb.1:
	sub.d	$a0, $fp, $s0
	srai.d	$a1, $a0, 3
	ori	$a2, $zero, 2
	bltu	$a1, $a2, .LBB3_12
# %bb.2:                                # %.lr.ph.i.i.i.i.preheader
	movgr2fr.d	$fa1, $zero
	move	$a2, $s0
	.p2align	4, , 16
.LBB3_3:                                # %.lr.ph.i.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a2, 0
	addi.d	$a2, $a2, 8
	fadd.d	$fa1, $fa1, $fa0
	bne	$a2, $fp, .LBB3_3
# %bb.4:
	srli.d	$a2, $a1, 32
	lu52i.d	$a3, $zero, 1107
	or	$a2, $a2, $a3
	movgr2fr.d	$fa0, $a2
	lu12i.w	$a2, 256
	lu52i.d	$a2, $a2, 1107
	movgr2fr.d	$fa2, $a2
	fsub.d	$fa0, $fa0, $fa2
	lu12i.w	$a2, 275200
	bstrins.d	$a1, $a2, 63, 32
	movgr2fr.d	$fa2, $a1
	fadd.d	$fa2, $fa2, $fa0
	movgr2fr.d	$fs0, $zero
	ori	$a1, $zero, 8
	frecip.d	$fs1, $fa2
	fmov.d	$fa0, $fs0
	beq	$a0, $a1, .LBB3_9
# %bb.5:                                # %.lr.ph.i.i.i.preheader
	fmul.d	$fa0, $fs1, $fa1
	movgr2fr.d	$fa1, $zero
	move	$a0, $s0
	.p2align	4, , 16
.LBB3_6:                                # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa3, $a0, 0
	addi.d	$a0, $a0, 8
	fmadd.d	$fa1, $fa3, $fa3, $fa1
	bne	$a0, $fp, .LBB3_6
# %bb.7:                                # %"_ZNK9benchmark3$_1clERKSt6vectorIdSaIdEE.exit.i"
	fmul.d	$fa1, $fs1, $fa1
	vldi	$vr3, -784
	fadd.d	$fa3, $fa2, $fa3
	fdiv.d	$fa2, $fa2, $fa3
	fmul.d	$fa0, $fa0, $fa0
	fsub.d	$fa0, $fa1, $fa0
	fmul.d	$fa1, $fa2, $fa0
	movgr2fr.d	$fa0, $zero
	fcmp.clt.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB3_9
# %bb.8:
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB3_13
	.p2align	4, , 16
.LBB3_9:                                # %.lr.ph.i.i.i7
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa1, $s0, 0
	addi.d	$s0, $s0, 8
	fadd.d	$fs0, $fs0, $fa1
	bne	$s0, $fp, .LBB3_9
# %bb.10:                               # %_ZN9benchmark14StatisticsMeanERKSt6vectorIdSaIdEE.exit
	fmul.d	$fa2, $fs1, $fs0
	movgr2fr.d	$fa1, $zero
	fcmp.ceq.d	$fcc0, $fa2, $fa1
	bcnez	$fcc0, .LBB3_12
# %bb.11:                               # %_ZSt10fpclassifyd.exit.thread
	fdiv.d	$fa1, $fa0, $fa2
.LBB3_12:                               # %_ZN9benchmark14StatisticsMeanERKSt6vectorIdSaIdEE.exit.thread
	fmov.d	$fa0, $fa1
	fld.d	$fs1, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs0, $sp, 16                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB3_13:                               # %call.sqrt
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	b	.LBB3_9
.Lfunc_end3:
	.size	_ZN9benchmark12StatisticsCVERKSt6vectorIdSaIdEE, .Lfunc_end3-_ZN9benchmark12StatisticsCVERKSt6vectorIdSaIdEE
                                        # -- End function
	.hidden	_ZN9benchmark12ComputeStatsERKSt6vectorINS_17BenchmarkReporter3RunESaIS2_EE # -- Begin function _ZN9benchmark12ComputeStatsERKSt6vectorINS_17BenchmarkReporter3RunESaIS2_EE
	.globl	_ZN9benchmark12ComputeStatsERKSt6vectorINS_17BenchmarkReporter3RunESaIS2_EE
	.p2align	5
	.type	_ZN9benchmark12ComputeStatsERKSt6vectorINS_17BenchmarkReporter3RunESaIS2_EE,@function
_ZN9benchmark12ComputeStatsERKSt6vectorINS_17BenchmarkReporter3RunESaIS2_EE: # @_ZN9benchmark12ComputeStatsERKSt6vectorINS_17BenchmarkReporter3RunESaIS2_EE
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception1
# %bb.0:
	addi.d	$sp, $sp, -944
	.cfi_def_cfa_offset 944
	st.d	$ra, $sp, 936                   # 8-byte Folded Spill
	st.d	$fp, $sp, 928                   # 8-byte Folded Spill
	st.d	$s0, $sp, 920                   # 8-byte Folded Spill
	st.d	$s1, $sp, 912                   # 8-byte Folded Spill
	st.d	$s2, $sp, 904                   # 8-byte Folded Spill
	st.d	$s3, $sp, 896                   # 8-byte Folded Spill
	st.d	$s4, $sp, 888                   # 8-byte Folded Spill
	st.d	$s5, $sp, 880                   # 8-byte Folded Spill
	st.d	$s6, $sp, 872                   # 8-byte Folded Spill
	st.d	$s7, $sp, 864                   # 8-byte Folded Spill
	st.d	$s8, $sp, 856                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 848                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 840                  # 8-byte Folded Spill
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
	move	$s3, $a0
	ld.d	$a2, $a1, 0
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	ld.d	$s1, $a1, 8
	st.d	$zero, $a0, 16
	vrepli.b	$vr0, 0
	vst	$vr0, $a0, 0
	sub.d	$a0, $s1, $a2
	move	$s4, $a2
	beq	$a2, $s1, .LBB4_3
# %bb.1:                                # %.lr.ph.i.i.preheader
	addi.d	$a1, $a0, -560
	ori	$a2, $zero, 1680
	bgeu	$a1, $a2, .LBB4_4
# %bb.2:
	move	$a4, $zero
	move	$a1, $s4
	b	.LBB4_7
.LBB4_3:
	move	$a4, $zero
	b	.LBB4_8
.LBB4_4:                                # %vector.ph
	lu12i.w	$a2, 59918
	ori	$a2, $a2, 2575
	lu32i.d	$a2, -89878
	lu52i.d	$a2, $a2, -352
	mulh.du	$a1, $a1, $a2
	srli.d	$a1, $a1, 9
	addi.d	$a2, $a1, 1
	bstrpick.d	$a1, $a2, 55, 2
	slli.d	$a3, $a1, 2
	ori	$a4, $zero, 2240
	mul.d	$a1, $a1, $a4
	add.d	$a1, $s4, $a1
	addi.d	$a4, $s4, 1472
	vrepli.b	$vr1, -1
	vrepli.d	$vr2, 1
	move	$a5, $a3
	vori.b	$vr3, $vr0, 0
	.p2align	4, , 16
.LBB4_5:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a4, -1120
	ld.w	$a7, $a4, -560
	ld.w	$t0, $a4, 0
	ld.w	$t1, $a4, 560
	vinsgr2vr.w	$vr4, $a6, 0
	vinsgr2vr.w	$vr4, $a7, 1
	vinsgr2vr.w	$vr5, $t0, 0
	vinsgr2vr.w	$vr5, $t1, 1
	vseqi.w	$vr4, $vr4, 0
	vxor.v	$vr4, $vr4, $vr1
	vshuf4i.w	$vr4, $vr4, 16
	vand.v	$vr4, $vr4, $vr2
	vseqi.w	$vr5, $vr5, 0
	vxor.v	$vr5, $vr5, $vr1
	vshuf4i.w	$vr5, $vr5, 16
	vand.v	$vr5, $vr5, $vr2
	vadd.d	$vr0, $vr0, $vr4
	vadd.d	$vr3, $vr3, $vr5
	addi.d	$a5, $a5, -4
	addi.d	$a4, $a4, 2047
	addi.d	$a4, $a4, 193
	bnez	$a5, .LBB4_5
# %bb.6:                                # %middle.block
	vadd.d	$vr0, $vr3, $vr0
	vhaddw.q.d	$vr0, $vr0, $vr0
	vpickve2gr.d	$a4, $vr0, 0
	beq	$a2, $a3, .LBB4_8
	.p2align	4, , 16
.LBB4_7:                                # %.lr.ph.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $a1, 352
	sltu	$a2, $zero, $a2
	addi.d	$a1, $a1, 560
	add.d	$a4, $a4, $a2
	bne	$a1, $s1, .LBB4_7
.LBB4_8:                                # %"_ZSt8count_ifIN9__gnu_cxx17__normal_iteratorIPKN9benchmark17BenchmarkReporter3RunESt6vectorIS4_SaIS4_EEEEZNS2_12ComputeStatsERKS9_E3$_0ENSt15iterator_traitsIT_E15difference_typeESF_SF_T0_.exit"
	srai.d	$a0, $a0, 4
	lu12i.w	$a1, -479350
	ori	$a1, $a1, 3979
	lu32i.d	$a1, -329553
	lu52i.d	$a1, $a1, -1288
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	mul.d	$s0, $a0, $a1
	sub.d	$a0, $s0, $a4
	ori	$a1, $zero, 2
	bltu	$a0, $a1, .LBB4_207
# %bb.9:
	st.d	$zero, $sp, 800
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 784
	st.d	$zero, $sp, 776
	srli.d	$a0, $s0, 60
	vst	$vr0, $sp, 80                   # 16-byte Folded Spill
	vst	$vr0, $sp, 760
	bnez	$a0, .LBB4_214
# %bb.10:
	move	$a0, $s4
	beq	$s1, $s4, .LBB4_14
# %bb.11:                               # %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i
	slli.d	$fp, $s0, 3
.Ltmp3:                                 # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp4:                                 # EH_LABEL
# %bb.12:                               # %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i108
	st.d	$a0, $sp, 784
	st.d	$a0, $sp, 792
	alsl.d	$a0, $s0, $a0, 3
	st.d	$a0, $sp, 800
.Ltmp5:                                 # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp6:                                 # EH_LABEL
# %bb.13:                               # %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i111
	st.d	$a0, $sp, 760
	st.d	$a0, $sp, 768
	alsl.d	$a0, $s0, $a0, 3
	st.d	$a0, $sp, 776
	move	$a0, $s4
.LBB4_14:                               # %_ZNSt6vectorIdSaIdEE7reserveEm.exit114
	ld.d	$s5, $a0, 392
	addi.d	$a0, $sp, 720
	st.w	$zero, $sp, 720
	st.d	$zero, $sp, 728
	st.d	$a0, $sp, 736
	st.d	$a0, $sp, 744
	st.d	$zero, $sp, 752
	st.d	$s3, $sp, 40                    # 8-byte Folded Spill
	beq	$s4, $s1, .LBB4_123
# %bb.15:
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s5, $sp, 24                    # 8-byte Folded Spill
	ori	$s1, $zero, 16
	lu12i.w	$s2, -524288
	lu12i.w	$a0, 524287
	ori	$s8, $a0, 4095
	ori	$s7, $zero, 24
	b	.LBB4_17
	.p2align	4, , 16
.LBB4_16:                               # %._crit_edge
                                        #   in Loop: Header=BB4_17 Depth=1
	ld.d	$s4, $sp, 48                    # 8-byte Folded Reload
	addi.d	$s4, $s4, 560
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	beq	$s4, $a0, .LBB4_71
.LBB4_17:                               # %.lr.ph334
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_20 Depth 2
                                        #       Child Loop BB4_24 Depth 3
                                        #       Child Loop BB4_35 Depth 3
	ld.d	$s3, $s4, 520
	st.d	$s4, $sp, 48                    # 8-byte Folded Spill
	addi.d	$a1, $s4, 504
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	bne	$s3, $a1, .LBB4_20
	b	.LBB4_16
	.p2align	4, , 16
.LBB4_18:                               #   in Loop: Header=BB4_20 Depth=2
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.b	$a0, $a0, 0
	dbar	20
	beqz	$a0, .LBB4_69
.LBB4_19:                               # %_ZNSt6vectorIdSaIdEE7reserveEm.exit127
                                        #   in Loop: Header=BB4_20 Depth=2
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	beq	$s3, $a0, .LBB4_16
.LBB4_20:                               # %.lr.ph
                                        #   Parent Loop BB4_17 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_24 Depth 3
                                        #       Child Loop BB4_35 Depth 3
	ld.d	$s5, $s3, 32
	ld.d	$fp, $sp, 728
	ld.d	$s6, $s3, 40
	st.d	$s3, $sp, 112                   # 8-byte Folded Spill
	beqz	$fp, .LBB4_30
# %bb.21:                               # %.lr.ph.i.i.i.preheader
                                        #   in Loop: Header=BB4_20 Depth=2
	move	$s0, $fp
	addi.d	$s4, $sp, 720
	b	.LBB4_24
	.p2align	4, , 16
.LBB4_22:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i
                                        #   in Loop: Header=BB4_24 Depth=3
	sub.d	$a0, $s3, $s6
	slt	$a1, $s2, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s2, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $s8
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s8, $a1
	or	$a0, $a0, $a1
.LBB4_23:                               # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
                                        #   in Loop: Header=BB4_24 Depth=3
	addi.w	$a0, $a0, 0
	slti	$a1, $a0, 0
	masknez	$a0, $s0, $a1
	masknez	$a2, $s1, $a1
	maskeqz	$a3, $s7, $a1
	or	$a2, $a3, $a2
	ldx.d	$s0, $s0, $a2
	maskeqz	$a1, $s4, $a1
	or	$s4, $a1, $a0
	beqz	$s0, .LBB4_26
.LBB4_24:                               # %.lr.ph.i.i.i
                                        #   Parent Loop BB4_17 Depth=1
                                        #     Parent Loop BB4_20 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s3, $s0, 40
	sltu	$a0, $s6, $s3
	masknez	$a1, $s3, $a0
	maskeqz	$a0, $s6, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB4_22
# %bb.25:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
                                        #   in Loop: Header=BB4_24 Depth=3
	ld.d	$a0, $s0, 32
	move	$a1, $s5
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB4_23
	b	.LBB4_22
	.p2align	4, , 16
.LBB4_26:                               # %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN9benchmark12ComputeStatsERKSt6vectorINS8_17BenchmarkReporter3RunESaISB_EEE11CounterStatESt10_Select1stISH_ESt4lessIS5_ESaISH_EE14_M_lower_boundEPSt13_Rb_tree_nodeISH_EPSt18_Rb_tree_node_baseRS7_.exit.i.i
                                        #   in Loop: Header=BB4_20 Depth=2
	addi.d	$a2, $sp, 720
	ld.d	$s3, $sp, 112                   # 8-byte Folded Reload
	beq	$s4, $a2, .LBB4_32
# %bb.27:                               #   in Loop: Header=BB4_20 Depth=2
	or	$a0, $a1, $a0
	ld.d	$s0, $a0, 40
	sltu	$a1, $s0, $s6
	maskeqz	$a2, $s0, $a1
	masknez	$a1, $s6, $a1
	or	$a2, $a2, $a1
	beqz	$a2, .LBB4_31
# %bb.28:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
                                        #   in Loop: Header=BB4_20 Depth=2
	ld.d	$a1, $a0, 32
	move	$a0, $s5
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_31
# %bb.29:                               # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i
                                        #   in Loop: Header=BB4_20 Depth=2
	addi.w	$a0, $a0, 0
	bgez	$a0, .LBB4_18
	b	.LBB4_32
	.p2align	4, , 16
.LBB4_30:                               # %.thread
                                        #   in Loop: Header=BB4_20 Depth=2
	vld	$vr0, $s3, 64
	vst	$vr0, $sp, 120
	addi.d	$s2, $sp, 720
	b	.LBB4_42
	.p2align	4, , 16
.LBB4_31:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i
                                        #   in Loop: Header=BB4_20 Depth=2
	sub.d	$a0, $s6, $s0
	slt	$a1, $s2, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s2, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $s8
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s8, $a1
	or	$a0, $a0, $a1
	addi.w	$a0, $a0, 0
	bgez	$a0, .LBB4_18
.LBB4_32:                               # %.critedge
                                        #   in Loop: Header=BB4_20 Depth=2
	vld	$vr0, $s3, 64
	vst	$vr0, $sp, 120
	addi.d	$s4, $sp, 720
	b	.LBB4_35
	.p2align	4, , 16
.LBB4_33:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i
                                        #   in Loop: Header=BB4_35 Depth=3
	sub.d	$a0, $s0, $s6
	slt	$a1, $s2, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s2, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $s8
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s8, $a1
	or	$a0, $a0, $a1
.LBB4_34:                               # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i
                                        #   in Loop: Header=BB4_35 Depth=3
	addi.w	$a0, $a0, 0
	slti	$a1, $a0, 0
	masknez	$a0, $fp, $a1
	masknez	$a2, $s1, $a1
	maskeqz	$a3, $s7, $a1
	or	$a2, $a3, $a2
	ldx.d	$fp, $fp, $a2
	maskeqz	$a1, $s4, $a1
	or	$s4, $a1, $a0
	beqz	$fp, .LBB4_37
.LBB4_35:                               # %.lr.ph.i.i.i.i
                                        #   Parent Loop BB4_17 Depth=1
                                        #     Parent Loop BB4_20 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s0, $fp, 40
	sltu	$a0, $s6, $s0
	masknez	$a1, $s0, $a0
	maskeqz	$a0, $s6, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB4_33
# %bb.36:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i
                                        #   in Loop: Header=BB4_35 Depth=3
	ld.d	$a0, $fp, 32
	move	$a1, $s5
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB4_34
	b	.LBB4_33
	.p2align	4, , 16
.LBB4_37:                               # %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN9benchmark12ComputeStatsERKSt6vectorINS6_17BenchmarkReporter3RunESaIS9_EEE11CounterStatSt4lessIS5_ESaISt4pairIKS5_SE_EEE11lower_boundERSI_.exit.i
                                        #   in Loop: Header=BB4_20 Depth=2
	addi.d	$a2, $sp, 720
	move	$s2, $a2
	beq	$s4, $a2, .LBB4_42
# %bb.38:                               #   in Loop: Header=BB4_20 Depth=2
	or	$a0, $a1, $a0
	ld.d	$fp, $a0, 40
	sltu	$a1, $fp, $s6
	maskeqz	$a2, $fp, $a1
	masknez	$a1, $s6, $a1
	or	$a2, $a2, $a1
	beqz	$a2, .LBB4_41
# %bb.39:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
                                        #   in Loop: Header=BB4_20 Depth=2
	ld.d	$a1, $a0, 32
	move	$a0, $s5
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_41
# %bb.40:                               # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i
                                        #   in Loop: Header=BB4_20 Depth=2
	addi.w	$a0, $a0, 0
	move	$s2, $s4
	bgez	$a0, .LBB4_61
	b	.LBB4_42
.LBB4_41:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i
                                        #   in Loop: Header=BB4_20 Depth=2
	sub.d	$a0, $s6, $fp
	lu12i.w	$a2, -524288
	slt	$a1, $a2, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $s8
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s8, $a1
	or	$a0, $a0, $a1
	addi.w	$a0, $a0, 0
	move	$s2, $s4
	bgez	$a0, .LBB4_61
	.p2align	4, , 16
.LBB4_42:                               # %.critedge.i
                                        #   in Loop: Header=BB4_20 Depth=2
.Ltmp7:                                 # EH_LABEL
	ori	$a0, $zero, 104
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp8:                                 # EH_LABEL
# %bb.43:                               # %.noexc119
                                        #   in Loop: Header=BB4_20 Depth=2
	move	$s4, $a0
	addi.d	$s0, $a0, 48
	st.d	$s0, $a0, 32
	st.d	$s6, $sp, 680
	move	$a0, $s0
	bltu	$s6, $s1, .LBB4_46
# %bb.44:                               # %.noexc.i.i.i.i.i.i.i.i
                                        #   in Loop: Header=BB4_20 Depth=2
.Ltmp10:                                # EH_LABEL
	addi.d	$fp, $s4, 32
	addi.d	$a1, $sp, 680
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp11:                                # EH_LABEL
# %bb.45:                               # %.noexc.i.i.i.i.i.i
                                        #   in Loop: Header=BB4_20 Depth=2
	ld.d	$a1, $sp, 680
	st.d	$a0, $fp, 0
	st.d	$a1, $s0, 0
.LBB4_46:                               # %._crit_edge.i.i.i.i.i.i.i.i.i
                                        #   in Loop: Header=BB4_20 Depth=2
	beqz	$s6, .LBB4_50
# %bb.47:                               # %._crit_edge.i.i.i.i.i.i.i.i.i
                                        #   in Loop: Header=BB4_20 Depth=2
	ori	$a1, $zero, 1
	bne	$s6, $a1, .LBB4_49
# %bb.48:                               #   in Loop: Header=BB4_20 Depth=2
	ld.b	$a1, $s5, 0
	st.b	$a1, $a0, 0
	b	.LBB4_50
	.p2align	4, , 16
.LBB4_49:                               #   in Loop: Header=BB4_20 Depth=2
	move	$a1, $s5
	move	$a2, $s6
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_50:                               #   in Loop: Header=BB4_20 Depth=2
	ld.d	$a0, $sp, 680
	ld.d	$a1, $s4, 32
	st.d	$a0, $s4, 40
	stx.b	$zero, $a1, $a0
	vld	$vr0, $sp, 120
	ld.d	$s6, $s4, 32
	ld.d	$s5, $s4, 40
	vst	$vr0, $s4, 64
	st.d	$zero, $s4, 80
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vst	$vr0, $s4, 88
	addi.d	$a0, $sp, 712
	move	$a1, $s2
	move	$a2, $s6
	move	$a3, $s5
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN9benchmark12ComputeStatsERKSt6vectorINS8_17BenchmarkReporter3RunESaISB_EEE11CounterStatESt10_Select1stISH_ESt4lessIS5_ESaISH_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISH_ERS7_)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	beqz	$a1, .LBB4_58
# %bb.51:                               #   in Loop: Header=BB4_20 Depth=2
	move	$fp, $a1
	ori	$a0, $zero, 1
	bnez	$a2, .LBB4_57
# %bb.52:                               #   in Loop: Header=BB4_20 Depth=2
	addi.d	$a1, $sp, 720
	beq	$a1, $fp, .LBB4_57
# %bb.53:                               #   in Loop: Header=BB4_20 Depth=2
	ld.d	$s0, $fp, 40
	sltu	$a0, $s0, $s5
	masknez	$a1, $s5, $a0
	maskeqz	$a0, $s0, $a0
	or	$a2, $a0, $a1
	lu12i.w	$s2, -524288
	beqz	$a2, .LBB4_55
# %bb.54:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i
                                        #   in Loop: Header=BB4_20 Depth=2
	ld.d	$a1, $fp, 32
	move	$a0, $s6
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB4_56
.LBB4_55:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i
                                        #   in Loop: Header=BB4_20 Depth=2
	sub.d	$a0, $s5, $s0
	slt	$a1, $s2, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s2, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $s8
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s8, $a1
	or	$a0, $a0, $a1
.LBB4_56:                               # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i.i
                                        #   in Loop: Header=BB4_20 Depth=2
	addi.w	$a0, $a0, 0
	slti	$a0, $a0, 0
.LBB4_57:                               # %.thread.i.i.i
                                        #   in Loop: Header=BB4_20 Depth=2
	move	$a1, $s4
	move	$a2, $fp
	addi.d	$a3, $sp, 720
	pcaddu18i	$ra, %call36(_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 752
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 752
	b	.LBB4_61
	.p2align	4, , 16
.LBB4_58:                               # %_ZZN9benchmark12ComputeStatsERKSt6vectorINS_17BenchmarkReporter3RunESaIS2_EEEN11CounterStatD2Ev.exit.i.i.i.i.i.i.i
                                        #   in Loop: Header=BB4_20 Depth=2
	move	$fp, $a2
	beq	$s6, $s0, .LBB4_60
# %bb.59:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
                                        #   in Loop: Header=BB4_20 Depth=2
	ld.d	$a0, $s0, 0
	addi.d	$a1, $a0, 1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_60:                               # %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN9benchmark12ComputeStatsERKSt6vectorINS8_17BenchmarkReporter3RunESaISB_EEE11CounterStatESt10_Select1stISH_ESt4lessIS5_ESaISH_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISH_E.exit.i.i.i.i
                                        #   in Loop: Header=BB4_20 Depth=2
	ori	$a1, $zero, 104
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$s4, $fp
.LBB4_61:                               # %_ZZN9benchmark12ComputeStatsERKSt6vectorINS_17BenchmarkReporter3RunESaIS2_EEEN11CounterStatD2Ev.exit
                                        #   in Loop: Header=BB4_20 Depth=2
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $a1, 8
	ld.d	$a1, $a1, 0
	sub.d	$a0, $a0, $a1
	srai.d	$a0, $a0, 4
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	mul.d	$s3, $a0, $a1
	srli.d	$a0, $s3, 60
	bnez	$a0, .LBB4_208
# %bb.62:                               #   in Loop: Header=BB4_20 Depth=2
	ld.d	$a0, $s4, 96
	ld.d	$fp, $s4, 80
	sub.d	$s0, $a0, $fp
	srai.d	$a0, $s0, 3
	lu12i.w	$s2, -524288
	bgeu	$a0, $s3, .LBB4_19
# %bb.63:                               # %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i121
                                        #   in Loop: Header=BB4_20 Depth=2
	ld.d	$s6, $s4, 88
	slli.d	$a0, $s3, 3
.Ltmp19:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp20:                                # EH_LABEL
# %bb.64:                               # %.noexc126
                                        #   in Loop: Header=BB4_20 Depth=2
	move	$s5, $a0
	sub.d	$s6, $s6, $fp
	blez	$s6, .LBB4_66
# %bb.65:                               #   in Loop: Header=BB4_20 Depth=2
	move	$a0, $s5
	move	$a1, $fp
	move	$a2, $s6
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_66:                               # %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit.i122
                                        #   in Loop: Header=BB4_20 Depth=2
	beqz	$fp, .LBB4_68
# %bb.67:                               #   in Loop: Header=BB4_20 Depth=2
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_68:                               # %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i124
                                        #   in Loop: Header=BB4_20 Depth=2
	st.d	$s5, $s4, 80
	add.d	$a0, $s5, $s6
	st.d	$a0, $s4, 88
	alsl.d	$a0, $s3, $s5, 3
	st.d	$a0, $s4, 96
	b	.LBB4_19
.LBB4_69:                               #   in Loop: Header=BB4_20 Depth=2
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcaddu18i	$ra, %call36(__cxa_guard_acquire)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	beqz	$a0, .LBB4_19
# %bb.70:                               #   in Loop: Header=BB4_20 Depth=2
	pcalau12i	$a0, %pc_hi20(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	st.d	$zero, $a0, %pc_lo12(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcaddu18i	$ra, %call36(__cxa_guard_release)
	jirl	$ra, $ra, 0
	b	.LBB4_19
.LBB4_71:                               # %._crit_edge335
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a0, 8
	move	$a0, $a1
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	beq	$a1, $a2, .LBB4_124
# %bb.72:
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	addi.w	$a0, $zero, -8
	lu52i.d	$a0, $a0, 2047
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	addi.w	$a0, $zero, -1
	lu52i.d	$a0, $a0, 255
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	ori	$s1, $zero, 16
	ori	$s7, $zero, 24
	b	.LBB4_74
	.p2align	4, , 16
.LBB4_73:                               # %.loopexit
                                        #   in Loop: Header=BB4_74 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	addi.d	$a0, $a0, 560
	ld.d	$s3, $sp, 40                    # 8-byte Folded Reload
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	beq	$a0, $a1, .LBB4_122
.LBB4_74:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_96 Depth 2
                                        #       Child Loop BB4_100 Depth 3
	ld.d	$fp, $sp, 56                    # 8-byte Folded Reload
	ld.b	$a0, $fp, 0
	dbar	20
	beqz	$a0, .LBB4_118
.LBB4_75:                               # %_ZN9benchmark8internal18GetNullLogInstanceEv.exit132
                                        #   in Loop: Header=BB4_74 Depth=1
	ld.b	$a0, $fp, 0
	dbar	20
	beqz	$a0, .LBB4_120
.LBB4_76:                               # %_ZN9benchmark8internal18GetNullLogInstanceEv.exit134
                                        #   in Loop: Header=BB4_74 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 352
	bnez	$a0, .LBB4_73
# %bb.77:                               #   in Loop: Header=BB4_74 Depth=1
	ld.d	$a0, $sp, 792
	ld.d	$a1, $sp, 800
	beq	$a0, $a1, .LBB4_80
# %bb.78:                               #   in Loop: Header=BB4_74 Depth=1
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	fld.d	$fa0, $a1, 432
	fst.d	$fa0, $a0, 0
	addi.d	$a0, $a0, 8
	st.d	$a0, $sp, 792
	ld.d	$a0, $sp, 768
	ld.d	$a1, $sp, 776
	beq	$a0, $a1, .LBB4_87
.LBB4_79:                               #   in Loop: Header=BB4_74 Depth=1
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	fld.d	$fa0, $a1, 440
	fst.d	$fa0, $a0, 0
	addi.d	$a0, $a0, 8
	st.d	$a0, $sp, 768
	ld.d	$s3, $a1, 520
	addi.d	$a0, $a1, 504
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	bne	$s3, $a0, .LBB4_96
	b	.LBB4_73
.LBB4_80:                               #   in Loop: Header=BB4_74 Depth=1
	ld.d	$s3, $sp, 784
	sub.d	$fp, $a0, $s3
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	beq	$fp, $a0, .LBB4_212
# %bb.81:                               # %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i.i
                                        #   in Loop: Header=BB4_74 Depth=1
	srai.d	$a0, $fp, 3
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	sltu	$a2, $a0, $a3
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $a3, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a3, $a1
	or	$s4, $a1, $a0
	slli.d	$a0, $s4, 3
.Ltmp25:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp26:                                # EH_LABEL
# %bb.82:                               # %.noexc137
                                        #   in Loop: Header=BB4_74 Depth=1
	move	$s0, $a0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	fld.d	$fa0, $a0, 432
	fstx.d	$fa0, $s0, $fp
	blez	$fp, .LBB4_84
# %bb.83:                               #   in Loop: Header=BB4_74 Depth=1
	move	$a0, $s0
	move	$a1, $s3
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_84:                               # %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit.i.i
                                        #   in Loop: Header=BB4_74 Depth=1
	beqz	$s3, .LBB4_86
# %bb.85:                               #   in Loop: Header=BB4_74 Depth=1
	move	$a0, $s3
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_86:                               # %_ZNSt6vectorIdSaIdEE17_M_realloc_appendIJRKdEEEvDpOT_.exit.i
                                        #   in Loop: Header=BB4_74 Depth=1
	add.d	$a0, $s0, $fp
	addi.d	$a0, $a0, 8
	st.d	$s0, $sp, 784
	st.d	$a0, $sp, 792
	alsl.d	$a0, $s4, $s0, 3
	st.d	$a0, $sp, 800
	ld.d	$a0, $sp, 768
	ld.d	$a1, $sp, 776
	bne	$a0, $a1, .LBB4_79
.LBB4_87:                               #   in Loop: Header=BB4_74 Depth=1
	ld.d	$s3, $sp, 760
	sub.d	$fp, $a0, $s3
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	beq	$fp, $a0, .LBB4_212
# %bb.88:                               # %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i.i139
                                        #   in Loop: Header=BB4_74 Depth=1
	srai.d	$a0, $fp, 3
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	sltu	$a2, $a0, $a3
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $a3, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a3, $a1
	or	$s4, $a1, $a0
	slli.d	$a0, $s4, 3
.Ltmp27:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp28:                                # EH_LABEL
# %bb.89:                               # %.noexc145
                                        #   in Loop: Header=BB4_74 Depth=1
	move	$s0, $a0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	fld.d	$fa0, $a0, 440
	fstx.d	$fa0, $s0, $fp
	blez	$fp, .LBB4_91
# %bb.90:                               #   in Loop: Header=BB4_74 Depth=1
	move	$a0, $s0
	move	$a1, $s3
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_91:                               # %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit.i.i141
                                        #   in Loop: Header=BB4_74 Depth=1
	beqz	$s3, .LBB4_93
# %bb.92:                               #   in Loop: Header=BB4_74 Depth=1
	move	$a0, $s3
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_93:                               # %_ZNSt6vectorIdSaIdEE17_M_realloc_appendIJRKdEEEvDpOT_.exit.i143
                                        #   in Loop: Header=BB4_74 Depth=1
	add.d	$a0, $s0, $fp
	addi.d	$a0, $a0, 8
	st.d	$s0, $sp, 760
	st.d	$a0, $sp, 768
	alsl.d	$a0, $s4, $s0, 3
	st.d	$a0, $sp, 776
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s3, $a1, 520
	addi.d	$a0, $a1, 504
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	bne	$s3, $a0, .LBB4_96
	b	.LBB4_73
	.p2align	4, , 16
.LBB4_94:                               #   in Loop: Header=BB4_96 Depth=2
	fld.d	$fa0, $s3, 64
	fst.d	$fa0, $a0, 0
	addi.d	$a0, $a0, 8
	st.d	$a0, $s5, 88
.LBB4_95:                               # %_ZNSt6vectorIdSaIdEE12emplace_backIJRKN9benchmark7CounterEEEERdDpOT_.exit
                                        #   in Loop: Header=BB4_96 Depth=2
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	beq	$s3, $a0, .LBB4_73
.LBB4_96:                               # %.lr.ph339
                                        #   Parent Loop BB4_74 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_100 Depth 3
	ld.d	$s6, $sp, 728
	addi.d	$s5, $sp, 720
	beqz	$s6, .LBB4_107
# %bb.97:                               # %.lr.ph.i.i.i149.preheader
                                        #   in Loop: Header=BB4_96 Depth=2
	ld.d	$s4, $s3, 32
	ld.d	$s0, $s3, 40
	addi.d	$fp, $sp, 720
	b	.LBB4_100
	.p2align	4, , 16
.LBB4_98:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i174
                                        #   in Loop: Header=BB4_100 Depth=3
	sub.d	$a0, $s5, $s0
	slt	$a1, $s2, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s2, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $s8
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s8, $a1
	or	$a0, $a0, $a1
.LBB4_99:                               # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i155
                                        #   in Loop: Header=BB4_100 Depth=3
	addi.w	$a0, $a0, 0
	slti	$a1, $a0, 0
	masknez	$a0, $s6, $a1
	masknez	$a2, $s1, $a1
	maskeqz	$a3, $s7, $a1
	or	$a2, $a3, $a2
	ldx.d	$s6, $s6, $a2
	maskeqz	$a1, $fp, $a1
	or	$fp, $a1, $a0
	beqz	$s6, .LBB4_102
.LBB4_100:                              # %.lr.ph.i.i.i149
                                        #   Parent Loop BB4_74 Depth=1
                                        #     Parent Loop BB4_96 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s5, $s6, 40
	sltu	$a0, $s0, $s5
	masknez	$a1, $s5, $a0
	maskeqz	$a0, $s0, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB4_98
# %bb.101:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i153
                                        #   in Loop: Header=BB4_100 Depth=3
	ld.d	$a0, $s6, 32
	move	$a1, $s4
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB4_99
	b	.LBB4_98
	.p2align	4, , 16
.LBB4_102:                              # %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN9benchmark12ComputeStatsERKSt6vectorINS8_17BenchmarkReporter3RunESaISB_EEE11CounterStatESt10_Select1stISH_ESt4lessIS5_ESaISH_EE14_M_lower_boundEPSt13_Rb_tree_nodeISH_EPSt18_Rb_tree_node_baseRS7_.exit.i.i162
                                        #   in Loop: Header=BB4_96 Depth=2
	addi.d	$a2, $sp, 720
	move	$s5, $a2
	beq	$fp, $a2, .LBB4_107
# %bb.103:                              #   in Loop: Header=BB4_96 Depth=2
	or	$a0, $a1, $a0
	ld.d	$s5, $a0, 40
	sltu	$a1, $s5, $s0
	maskeqz	$a2, $s5, $a1
	masknez	$a1, $s0, $a1
	or	$a2, $a2, $a1
	beqz	$a2, .LBB4_105
# %bb.104:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i164
                                        #   in Loop: Header=BB4_96 Depth=2
	ld.d	$a1, $a0, 32
	move	$a0, $s4
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB4_106
.LBB4_105:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i170
                                        #   in Loop: Header=BB4_96 Depth=2
	sub.d	$a0, $s0, $s5
	slt	$a1, $s2, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s2, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $s8
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s8, $a1
	or	$a0, $a0, $a1
.LBB4_106:                              # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i166
                                        #   in Loop: Header=BB4_96 Depth=2
	addi.w	$a0, $a0, 0
	slti	$a0, $a0, 0
	masknez	$a1, $fp, $a0
	addi.d	$a2, $sp, 720
	maskeqz	$a0, $a2, $a0
	or	$s5, $a0, $a1
.LBB4_107:                              # %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN9benchmark12ComputeStatsERKSt6vectorINS6_17BenchmarkReporter3RunESaIS9_EEE11CounterStatSt4lessIS5_ESaISt4pairIKS5_SE_EEE4findERSI_.exit179
                                        #   in Loop: Header=BB4_96 Depth=2
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.b	$a0, $a0, 0
	dbar	20
	beqz	$a0, .LBB4_116
.LBB4_108:                              # %_ZN9benchmark8internal18GetNullLogInstanceEv.exit181
                                        #   in Loop: Header=BB4_96 Depth=2
	ld.d	$a0, $s5, 88
	ld.d	$a1, $s5, 96
	bne	$a0, $a1, .LBB4_94
# %bb.109:                              #   in Loop: Header=BB4_96 Depth=2
	ld.d	$s4, $s5, 80
	sub.d	$fp, $a0, $s4
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	beq	$fp, $a0, .LBB4_210
# %bb.110:                              #   in Loop: Header=BB4_96 Depth=2
	srai.d	$a0, $fp, 3
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	sltu	$a2, $a0, $a3
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $a3, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a3, $a1
	or	$s6, $a1, $a0
	slli.d	$a0, $s6, 3
.Ltmp30:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp31:                                # EH_LABEL
# %bb.111:                              # %.noexc186
                                        #   in Loop: Header=BB4_96 Depth=2
	move	$s0, $a0
	fld.d	$fa0, $s3, 64
	fstx.d	$fa0, $a0, $fp
	blez	$fp, .LBB4_113
# %bb.112:                              #   in Loop: Header=BB4_96 Depth=2
	move	$a0, $s0
	move	$a1, $s4
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_113:                              # %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit.i.i184
                                        #   in Loop: Header=BB4_96 Depth=2
	beqz	$s4, .LBB4_115
# %bb.114:                              #   in Loop: Header=BB4_96 Depth=2
	move	$a0, $s4
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_115:                              # %_ZNSt6vectorIdSaIdEE17_M_realloc_appendIJRKN9benchmark7CounterEEEEvDpOT_.exit.i
                                        #   in Loop: Header=BB4_96 Depth=2
	add.d	$a0, $s0, $fp
	addi.d	$a0, $a0, 8
	st.d	$s0, $s5, 80
	st.d	$a0, $s5, 88
	alsl.d	$a0, $s6, $s0, 3
	st.d	$a0, $s5, 96
	b	.LBB4_95
.LBB4_116:                              #   in Loop: Header=BB4_96 Depth=2
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcaddu18i	$ra, %call36(__cxa_guard_acquire)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	beqz	$a0, .LBB4_108
# %bb.117:                              #   in Loop: Header=BB4_96 Depth=2
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	st.d	$zero, $a0, %pc_lo12(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcaddu18i	$ra, %call36(__cxa_guard_release)
	jirl	$ra, $ra, 0
	b	.LBB4_108
.LBB4_118:                              #   in Loop: Header=BB4_74 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(__cxa_guard_acquire)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	beqz	$a0, .LBB4_75
# %bb.119:                              #   in Loop: Header=BB4_74 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	st.d	$zero, $a0, %pc_lo12(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(__cxa_guard_release)
	jirl	$ra, $ra, 0
	b	.LBB4_75
.LBB4_120:                              #   in Loop: Header=BB4_74 Depth=1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(__cxa_guard_acquire)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	beqz	$a0, .LBB4_76
# %bb.121:                              #   in Loop: Header=BB4_74 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	st.d	$zero, $a0, %pc_lo12(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(__cxa_guard_release)
	jirl	$ra, $ra, 0
	b	.LBB4_76
.LBB4_122:                              # %._crit_edge344.loopexit
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	b	.LBB4_125
.LBB4_123:
	move	$a0, $s4
	b	.LBB4_126
.LBB4_124:
	ld.d	$s3, $sp, 40                    # 8-byte Folded Reload
.LBB4_125:                              # %._crit_edge344
	ld.d	$s5, $sp, 24                    # 8-byte Folded Reload
.LBB4_126:                              # %._crit_edge344
	addi.d	$a2, $sp, 696
	ld.d	$fp, $a0, 328
	ld.d	$s0, $a0, 320
	st.d	$a2, $sp, 680
	ori	$a1, $zero, 16
	st.d	$fp, $sp, 120
	move	$a0, $a2
	bltu	$fp, $a1, .LBB4_129
# %bb.127:                              # %.noexc.i
.Ltmp39:                                # EH_LABEL
	addi.d	$a0, $sp, 680
	addi.d	$a1, $sp, 120
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp40:                                # EH_LABEL
# %bb.128:                              # %.noexc130
	ld.d	$a1, $sp, 120
	st.d	$a0, $sp, 680
	st.d	$a1, $sp, 696
.LBB4_129:                              # %._crit_edge.i.i
	beqz	$fp, .LBB4_133
# %bb.130:                              # %._crit_edge.i.i
	ori	$a1, $zero, 1
	bne	$fp, $a1, .LBB4_132
# %bb.131:
	ld.b	$a1, $s0, 0
	st.b	$a1, $a0, 0
	b	.LBB4_133
.LBB4_132:
	move	$a1, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_133:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
	ld.d	$a0, $sp, 120
	ld.d	$a1, $sp, 680
	st.d	$a0, $sp, 688
	stx.b	$zero, $a1, $a0
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $a1, 8
	ld.d	$s2, $a1, 0
	sub.d	$a0, $a0, $s2
	srai.d	$a0, $a0, 4
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	mul.d	$s1, $a0, $a1
	ori	$a0, $zero, 2
	bltu	$s1, $a0, .LBB4_141
# %bb.134:                              # %.lr.ph346
	ld.d	$fp, $sp, 688
	ld.d	$s0, $sp, 680
	addi.d	$s3, $s2, 888
	ori	$s4, $zero, 1
	b	.LBB4_136
	.p2align	4, , 16
.LBB4_135:                              # %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread298
                                        #   in Loop: Header=BB4_136 Depth=1
	addi.d	$s4, $s4, 1
	addi.d	$s3, $s3, 560
	beq	$s1, $s4, .LBB4_141
.LBB4_136:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s3, 0
	bne	$a0, $fp, .LBB4_139
# %bb.137:                              #   in Loop: Header=BB4_136 Depth=1
	beqz	$fp, .LBB4_135
# %bb.138:                              # %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
                                        #   in Loop: Header=BB4_136 Depth=1
	ld.d	$a0, $s3, -8
	move	$a1, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_135
.LBB4_139:                              # %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
.Ltmp42:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a3, $a0, %pc_lo12(.L.str)
	addi.d	$a0, $sp, 680
	move	$a1, $zero
	move	$a2, $fp
	move	$a4, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm)
	jirl	$ra, $ra, 0
.Ltmp43:                                # EH_LABEL
# %bb.140:                              # %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit_crit_edge
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $a1, 8
	ld.d	$s2, $a1, 0
	sub.d	$a0, $a0, $s2
	srai.d	$a0, $a0, 4
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	mul.d	$s1, $a0, $a1
.LBB4_141:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
	ld.d	$a0, $s2, 480
	ld.d	$a1, $a0, 0
	ld.d	$a0, $a0, 8
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	beq	$a1, $a0, .LBB4_201
# %bb.142:                              # %.lr.ph356
	srli.d	$a0, $s1, 32
	lu52i.d	$a1, $zero, 1107
	or	$a0, $a0, $a1
	movgr2fr.d	$fa0, $a0
	lu12i.w	$a0, 256
	lu52i.d	$a0, $a0, 1107
	movgr2fr.d	$fa1, $a0
	fsub.d	$fa0, $fa0, $fa1
	lu12i.w	$a0, 275200
	bstrins.d	$s1, $a0, 63, 32
	movgr2fr.d	$fa1, $s1
	fadd.d	$fa0, $fa1, $fa0
	movgr2fr.d	$fa1, $s5
	ffint.d.l	$fa1, $fa1
	fdiv.d	$fs1, $fa0, $fa1
	addi.w	$a0, $zero, -1
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(_ZSt19piecewise_construct)
	addi.d	$a0, $a0, %pc_lo12(_ZSt19piecewise_construct)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	lu12i.w	$s8, -524288
	lu12i.w	$a0, 524287
	ori	$s1, $a0, 4095
	ori	$s2, $zero, 24
	b	.LBB4_144
	.p2align	4, , 16
.LBB4_143:                              # %_ZN9benchmark17BenchmarkReporter3RunD2Ev.exit
                                        #   in Loop: Header=BB4_144 Depth=1
	addi.d	$a0, $sp, 120
	pcaddu18i	$ra, %call36(_ZN9benchmark13BenchmarkNameD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	addi.d	$a0, $a0, 48
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	beq	$a0, $a1, .LBB4_201
.LBB4_144:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_164 Depth 2
                                        #       Child Loop BB4_172 Depth 3
.Ltmp45:                                # EH_LABEL
	addi.d	$a0, $sp, 120
	pcaddu18i	$ra, %call36(_ZN9benchmark17BenchmarkReporter3RunC2Ev)
	jirl	$ra, $ra, 0
.Ltmp46:                                # EH_LABEL
# %bb.145:                              #   in Loop: Header=BB4_144 Depth=1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $a0, 0
.Ltmp48:                                # EH_LABEL
	addi.d	$a0, $sp, 120
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_)
	jirl	$ra, $ra, 0
.Ltmp49:                                # EH_LABEL
# %bb.146:                              # %.noexc191
                                        #   in Loop: Header=BB4_144 Depth=1
	addi.d	$a1, $s3, 32
.Ltmp50:                                # EH_LABEL
	addi.d	$a0, $sp, 152
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_)
	jirl	$ra, $ra, 0
.Ltmp51:                                # EH_LABEL
# %bb.147:                              # %.noexc192
                                        #   in Loop: Header=BB4_144 Depth=1
	addi.d	$a1, $s3, 64
.Ltmp52:                                # EH_LABEL
	addi.d	$a0, $sp, 184
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_)
	jirl	$ra, $ra, 0
.Ltmp53:                                # EH_LABEL
# %bb.148:                              # %.noexc193
                                        #   in Loop: Header=BB4_144 Depth=1
	addi.d	$a1, $s3, 96
.Ltmp54:                                # EH_LABEL
	addi.d	$a0, $sp, 216
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_)
	jirl	$ra, $ra, 0
.Ltmp55:                                # EH_LABEL
# %bb.149:                              # %.noexc194
                                        #   in Loop: Header=BB4_144 Depth=1
	addi.d	$a1, $s3, 128
.Ltmp56:                                # EH_LABEL
	addi.d	$a0, $sp, 248
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_)
	jirl	$ra, $ra, 0
.Ltmp57:                                # EH_LABEL
# %bb.150:                              # %.noexc195
                                        #   in Loop: Header=BB4_144 Depth=1
	addi.d	$a1, $s3, 160
.Ltmp58:                                # EH_LABEL
	addi.d	$a0, $sp, 280
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_)
	jirl	$ra, $ra, 0
.Ltmp59:                                # EH_LABEL
# %bb.151:                              # %.noexc196
                                        #   in Loop: Header=BB4_144 Depth=1
	addi.d	$a1, $s3, 192
.Ltmp60:                                # EH_LABEL
	addi.d	$a0, $sp, 312
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_)
	jirl	$ra, $ra, 0
.Ltmp61:                                # EH_LABEL
# %bb.152:                              # %.noexc197
                                        #   in Loop: Header=BB4_144 Depth=1
	addi.d	$a1, $s3, 224
.Ltmp62:                                # EH_LABEL
	addi.d	$a0, $sp, 344
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_)
	jirl	$ra, $ra, 0
.Ltmp63:                                # EH_LABEL
# %bb.153:                              # %_ZN9benchmark13BenchmarkNameaSERKS0_.exit
                                        #   in Loop: Header=BB4_144 Depth=1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	vld	$vr0, $a0, 256
	ld.d	$a1, $a0, 400
	ld.d	$a0, $a0, 416
	vst	$vr0, $sp, 376
	ori	$a2, $zero, 1
	st.w	$a2, $sp, 392
	st.d	$a1, $sp, 520
	st.d	$a0, $sp, 536
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	st.d	$a0, $sp, 528
.Ltmp64:                                # EH_LABEL
	addi.d	$a0, $sp, 400
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_)
	jirl	$ra, $ra, 0
.Ltmp65:                                # EH_LABEL
# %bb.154:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
                                        #   in Loop: Header=BB4_144 Depth=1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 40
	st.w	$a0, $sp, 432
.Ltmp66:                                # EH_LABEL
	addi.d	$a1, $sp, 680
	addi.d	$a0, $sp, 440
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_)
	jirl	$ra, $ra, 0
.Ltmp67:                                # EH_LABEL
# %bb.155:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit201
                                        #   in Loop: Header=BB4_144 Depth=1
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $a1, 8
	ld.d	$a1, $a1, 0
	sub.d	$a0, $a0, $a1
	srai.d	$a0, $a0, 4
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	mul.d	$a0, $a0, $a1
	st.d	$a0, $sp, 512
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 32
.Ltmp68:                                # EH_LABEL
	addi.d	$a0, $sp, 784
	jirl	$ra, $a1, 0
.Ltmp69:                                # EH_LABEL
# %bb.156:                              #   in Loop: Header=BB4_144 Depth=1
	fst.d	$fa0, $sp, 552
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 32
.Ltmp70:                                # EH_LABEL
	addi.d	$a0, $sp, 760
	jirl	$ra, $a1, 0
.Ltmp71:                                # EH_LABEL
# %bb.157:                              #   in Loop: Header=BB4_144 Depth=1
	ld.w	$a0, $sp, 432
	fst.d	$fa0, $sp, 560
	bnez	$a0, .LBB4_159
# %bb.158:                              #   in Loop: Header=BB4_144 Depth=1
	fld.d	$fa1, $sp, 552
	fmul.d	$fa1, $fs1, $fa1
	fst.d	$fa1, $sp, 552
	fmul.d	$fa0, $fs1, $fa0
	fst.d	$fa0, $sp, 560
.LBB4_159:                              #   in Loop: Header=BB4_144 Depth=1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.w	$a0, $a0, 424
	ld.d	$s3, $sp, 736
	st.w	$a0, $sp, 544
	b	.LBB4_164
.LBB4_160:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i244
                                        #   in Loop: Header=BB4_164 Depth=2
	sub.d	$a0, $s0, $s4
	slt	$a1, $s8, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s8, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $s1
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s1, $a1
	or	$a0, $a0, $a1
.LBB4_161:                              # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i242
                                        #   in Loop: Header=BB4_164 Depth=2
	addi.w	$a0, $a0, 0
	slti	$a0, $a0, 0
.LBB4_162:                              # %.thread.i
                                        #   in Loop: Header=BB4_164 Depth=2
	move	$a1, $s7
	move	$a2, $fp
	addi.d	$a3, $sp, 624
	pcaddu18i	$ra, %call36(_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 656
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 656
.LBB4_163:                              #   in Loop: Header=BB4_164 Depth=2
	fst.d	$fs0, $s7, 64
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	st.w	$a0, $s7, 72
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	st.w	$a0, $s7, 76
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	move	$s3, $a0
.LBB4_164:                              #   Parent Loop BB4_144 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_172 Depth 3
	addi.d	$a0, $sp, 720
	beq	$s3, $a0, .LBB4_190
# %bb.165:                              # %.lr.ph352
                                        #   in Loop: Header=BB4_164 Depth=2
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 32
	addi.d	$a0, $s3, 80
.Ltmp72:                                # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp73:                                # EH_LABEL
# %bb.166:                              #   in Loop: Header=BB4_164 Depth=2
.Ltmp75:                                # EH_LABEL
	fmov.d	$fs0, $fa0
	addi.d	$s5, $s3, 32
	addi.d	$a0, $sp, 712
	move	$a1, $s5
	pcaddu18i	$ra, %call36(_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN9benchmark12ComputeStatsERKSt6vectorINS6_17BenchmarkReporter3RunESaIS9_EEE11CounterStatSt4lessIS5_ESaISt4pairIKS5_SE_EEEixERSI_)
	jirl	$ra, $ra, 0
.Ltmp76:                                # EH_LABEL
# %bb.167:                              #   in Loop: Header=BB4_164 Depth=2
	ld.w	$a0, $a0, 8
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
.Ltmp77:                                # EH_LABEL
	addi.d	$a0, $sp, 712
	move	$a1, $s5
	pcaddu18i	$ra, %call36(_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN9benchmark12ComputeStatsERKSt6vectorINS6_17BenchmarkReporter3RunESaIS9_EEE11CounterStatSt4lessIS5_ESaISt4pairIKS5_SE_EEEixERSI_)
	jirl	$ra, $ra, 0
.Ltmp78:                                # EH_LABEL
# %bb.168:                              #   in Loop: Header=BB4_164 Depth=2
	ld.d	$s6, $sp, 632
	ld.w	$a0, $a0, 12
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	addi.d	$s4, $sp, 624
	beqz	$s6, .LBB4_179
# %bb.169:                              # %.lr.ph.i.i.i.i205
                                        #   in Loop: Header=BB4_164 Depth=2
	ld.d	$s0, $s3, 40
	ld.d	$fp, $s3, 32
	addi.d	$s7, $sp, 624
	b	.LBB4_172
	.p2align	4, , 16
.LBB4_170:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i225
                                        #   in Loop: Header=BB4_172 Depth=3
	sub.d	$a0, $s4, $s0
	slt	$a1, $s8, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s8, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $s1
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s1, $a1
	or	$a0, $a0, $a1
.LBB4_171:                              # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i209
                                        #   in Loop: Header=BB4_172 Depth=3
	addi.w	$a0, $a0, 0
	slti	$a1, $a0, 0
	masknez	$a0, $s6, $a1
	ori	$a2, $zero, 16
	masknez	$a2, $a2, $a1
	maskeqz	$a3, $s2, $a1
	or	$a2, $a3, $a2
	ldx.d	$s6, $s6, $a2
	maskeqz	$a1, $s7, $a1
	or	$s7, $a1, $a0
	beqz	$s6, .LBB4_174
.LBB4_172:                              #   Parent Loop BB4_144 Depth=1
                                        #     Parent Loop BB4_164 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s4, $s6, 40
	sltu	$a0, $s0, $s4
	masknez	$a1, $s4, $a0
	maskeqz	$a0, $s0, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB4_170
# %bb.173:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i207
                                        #   in Loop: Header=BB4_172 Depth=3
	ld.d	$a0, $s6, 32
	move	$a1, $fp
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB4_171
	b	.LBB4_170
	.p2align	4, , 16
.LBB4_174:                              # %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_.exit.i
                                        #   in Loop: Header=BB4_164 Depth=2
	addi.d	$a2, $sp, 624
	move	$s4, $a2
	beq	$s7, $a2, .LBB4_179
# %bb.175:                              #   in Loop: Header=BB4_164 Depth=2
	or	$a0, $a1, $a0
	ld.d	$s4, $a0, 40
	sltu	$a1, $s4, $s0
	maskeqz	$a2, $s4, $a1
	masknez	$a1, $s0, $a1
	or	$a2, $a2, $a1
	beqz	$a2, .LBB4_178
# %bb.176:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i217
                                        #   in Loop: Header=BB4_164 Depth=2
	ld.d	$a1, $a0, 32
	move	$a0, $fp
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_178
# %bb.177:                              # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i218
                                        #   in Loop: Header=BB4_164 Depth=2
	addi.w	$a0, $a0, 0
	move	$s4, $s7
	bgez	$a0, .LBB4_163
	b	.LBB4_179
	.p2align	4, , 16
.LBB4_178:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i221
                                        #   in Loop: Header=BB4_164 Depth=2
	sub.d	$a0, $s0, $s4
	slt	$a1, $s8, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s8, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $s1
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s1, $a1
	or	$a0, $a0, $a1
	addi.w	$a0, $a0, 0
	move	$s4, $s7
	bgez	$a0, .LBB4_163
	.p2align	4, , 16
.LBB4_179:                              # %.critedge.i220
                                        #   in Loop: Header=BB4_164 Depth=2
	st.d	$s5, $sp, 816
	addi.d	$a0, $sp, 616
	st.d	$a0, $sp, 824
.Ltmp79:                                # EH_LABEL
	ori	$a0, $zero, 80
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp80:                                # EH_LABEL
# %bb.180:                              # %.noexc248
                                        #   in Loop: Header=BB4_164 Depth=2
.Ltmp81:                                # EH_LABEL
	move	$s7, $a0
	addi.d	$a3, $sp, 816
	addi.d	$a4, $sp, 815
	addi.d	$a0, $sp, 616
	move	$a1, $s7
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEEvPSt13_Rb_tree_nodeISA_EDpOT_)
	jirl	$ra, $ra, 0
.Ltmp82:                                # EH_LABEL
# %bb.181:                              # %.noexc249
                                        #   in Loop: Header=BB4_164 Depth=2
	st.d	$s7, $sp, 832
	addi.d	$s5, $s7, 32
.Ltmp84:                                # EH_LABEL
	addi.d	$a0, $sp, 616
	move	$a1, $s4
	move	$a2, $s5
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_)
	jirl	$ra, $ra, 0
.Ltmp85:                                # EH_LABEL
# %bb.182:                              #   in Loop: Header=BB4_164 Depth=2
	move	$a2, $a0
	move	$fp, $a1
	beqz	$a1, .LBB4_187
# %bb.183:                              #   in Loop: Header=BB4_164 Depth=2
	ori	$a0, $zero, 1
	bnez	$a2, .LBB4_162
# %bb.184:                              #   in Loop: Header=BB4_164 Depth=2
	addi.d	$a1, $sp, 624
	beq	$a1, $fp, .LBB4_162
# %bb.185:                              #   in Loop: Header=BB4_164 Depth=2
	ld.d	$s0, $s7, 40
	ld.d	$s4, $fp, 40
	sltu	$a0, $s4, $s0
	masknez	$a1, $s0, $a0
	maskeqz	$a0, $s4, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB4_160
# %bb.186:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i240
                                        #   in Loop: Header=BB4_164 Depth=2
	ld.d	$a1, $fp, 32
	ld.d	$a0, $s5, 0
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB4_161
	b	.LBB4_160
	.p2align	4, , 16
.LBB4_187:                              #   in Loop: Header=BB4_164 Depth=2
	move	$fp, $a2
	ld.d	$a0, $s7, 32
	addi.d	$a1, $s7, 48
	beq	$a0, $a1, .LBB4_189
# %bb.188:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
                                        #   in Loop: Header=BB4_164 Depth=2
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_189:                              # %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit.i.i
                                        #   in Loop: Header=BB4_164 Depth=2
	ori	$a1, $zero, 80
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$s7, $fp
	b	.LBB4_163
	.p2align	4, , 16
.LBB4_190:                              # %._crit_edge353
                                        #   in Loop: Header=BB4_144 Depth=1
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $a2, 8
	ld.d	$a1, $a2, 16
	beq	$a0, $a1, .LBB4_193
# %bb.191:                              #   in Loop: Header=BB4_144 Depth=1
.Ltmp87:                                # EH_LABEL
	addi.d	$a1, $sp, 120
	pcaddu18i	$ra, %call36(_ZN9benchmark17BenchmarkReporter3RunC2ERKS1_)
	jirl	$ra, $ra, 0
.Ltmp88:                                # EH_LABEL
# %bb.192:                              # %.noexc203
                                        #   in Loop: Header=BB4_144 Depth=1
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $a1, 8
	addi.d	$a0, $a0, 560
	st.d	$a0, $a1, 8
	b	.LBB4_194
	.p2align	4, , 16
.LBB4_193:                              #   in Loop: Header=BB4_144 Depth=1
.Ltmp89:                                # EH_LABEL
	addi.d	$a1, $sp, 120
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EE17_M_realloc_appendIJRKS2_EEEvDpOT_)
	jirl	$ra, $ra, 0
.Ltmp90:                                # EH_LABEL
.LBB4_194:                              # %_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EE9push_backERKS2_.exit
                                        #   in Loop: Header=BB4_144 Depth=1
	ld.d	$a1, $sp, 632
.Ltmp92:                                # EH_LABEL
	addi.d	$a0, $sp, 616
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E)
	jirl	$ra, $ra, 0
.Ltmp93:                                # EH_LABEL
# %bb.195:                              # %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit.i
                                        #   in Loop: Header=BB4_144 Depth=1
	ld.d	$a0, $sp, 480
	addi.d	$a1, $sp, 496
	beq	$a0, $a1, .LBB4_197
# %bb.196:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
                                        #   in Loop: Header=BB4_144 Depth=1
	ld.d	$a1, $sp, 496
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_197:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
                                        #   in Loop: Header=BB4_144 Depth=1
	ld.d	$a0, $sp, 440
	addi.d	$a1, $sp, 456
	beq	$a0, $a1, .LBB4_199
# %bb.198:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
                                        #   in Loop: Header=BB4_144 Depth=1
	ld.d	$a1, $sp, 456
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_199:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
                                        #   in Loop: Header=BB4_144 Depth=1
	ld.d	$a0, $sp, 400
	addi.d	$a1, $sp, 416
	beq	$a0, $a1, .LBB4_143
# %bb.200:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
                                        #   in Loop: Header=BB4_144 Depth=1
	ld.d	$a1, $sp, 416
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB4_143
.LBB4_201:                              # %._crit_edge357
	ld.d	$a0, $sp, 680
	addi.d	$a1, $sp, 696
	beq	$a0, $a1, .LBB4_203
# %bb.202:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a1, $sp, 696
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_203:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$a0, $sp, 728
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN9benchmark12ComputeStatsERKSt6vectorINS8_17BenchmarkReporter3RunESaISB_EEE11CounterStatESt10_Select1stISH_ESt4lessIS5_ESaISH_EE8_M_eraseEPSt13_Rb_tree_nodeISH_E)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 760
	beqz	$a0, .LBB4_205
# %bb.204:
	ld.d	$a1, $sp, 776
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_205:                              # %_ZNSt6vectorIdSaIdEED2Ev.exit
	ld.d	$a0, $sp, 784
	beqz	$a0, .LBB4_207
# %bb.206:
	ld.d	$a1, $sp, 800
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_207:
	fld.d	$fs1, $sp, 840                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 848                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 856                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 864                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 872                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 880                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 888                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 896                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 904                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 912                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 920                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 928                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 936                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 944
	ret
.LBB4_208:
.Ltmp22:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp23:                                # EH_LABEL
# %bb.209:                              # %.noexc125
.LBB4_210:
.Ltmp33:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp34:                                # EH_LABEL
# %bb.211:                              # %.noexc185
.LBB4_212:                              # %.invoke
.Ltmp36:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp37:                                # EH_LABEL
# %bb.213:                              # %.cont
.LBB4_214:
.Ltmp95:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp96:                                # EH_LABEL
# %bb.215:                              # %.noexc
.LBB4_216:
.Ltmp44:                                # EH_LABEL
	move	$s0, $a0
	b	.LBB4_240
.LBB4_217:
.Ltmp41:                                # EH_LABEL
	move	$s0, $a0
	b	.LBB4_242
.LBB4_218:
.Ltmp97:                                # EH_LABEL
	move	$s0, $a0
	b	.LBB4_243
.LBB4_219:                              # %.loopexit.split-lp308
.Ltmp38:                                # EH_LABEL
	b	.LBB4_235
.LBB4_220:                              # %.loopexit307
.Ltmp29:                                # EH_LABEL
	b	.LBB4_235
.LBB4_221:
.Ltmp94:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB4_222:
.Ltmp47:                                # EH_LABEL
	move	$s0, $a0
	b	.LBB4_240
.LBB4_223:                              # %.loopexit306
.Ltmp32:                                # EH_LABEL
	b	.LBB4_235
.LBB4_224:                              # %.loopexit.split-lp
.Ltmp35:                                # EH_LABEL
	b	.LBB4_235
.LBB4_225:
.Ltmp12:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_begin_catch)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 104
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.Ltmp13:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_rethrow)
	jirl	$ra, $ra, 0
.Ltmp14:                                # EH_LABEL
# %bb.226:
.LBB4_227:
.Ltmp15:                                # EH_LABEL
	move	$s0, $a0
.Ltmp16:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_end_catch)
	jirl	$ra, $ra, 0
.Ltmp17:                                # EH_LABEL
	b	.LBB4_231
.LBB4_228:
.Ltmp18:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB4_229:                              # %.loopexit312
.Ltmp21:                                # EH_LABEL
	b	.LBB4_235
.LBB4_230:
.Ltmp9:                                 # EH_LABEL
	move	$s0, $a0
.LBB4_231:                              # %_ZZN9benchmark12ComputeStatsERKSt6vectorINS_17BenchmarkReporter3RunESaIS2_EEEN11CounterStatD2Ev.exit129
	ld.d	$s3, $sp, 40                    # 8-byte Folded Reload
	b	.LBB4_242
.LBB4_232:
.Ltmp91:                                # EH_LABEL
	b	.LBB4_238
.LBB4_233:
.Ltmp86:                                # EH_LABEL
	move	$s0, $a0
	addi.d	$a0, $sp, 824
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeD2Ev)
	jirl	$ra, $ra, 0
	b	.LBB4_239
.LBB4_234:                              # %.loopexit.split-lp313
.Ltmp24:                                # EH_LABEL
.LBB4_235:
	move	$s0, $a0
	ld.d	$s3, $sp, 40                    # 8-byte Folded Reload
	b	.LBB4_242
.LBB4_236:
.Ltmp74:                                # EH_LABEL
	b	.LBB4_238
.LBB4_237:
.Ltmp83:                                # EH_LABEL
.LBB4_238:                              # %.body250
	move	$s0, $a0
.LBB4_239:                              # %.body250
	addi.d	$a0, $sp, 120
	pcaddu18i	$ra, %call36(_ZN9benchmark17BenchmarkReporter3RunD2Ev)
	jirl	$ra, $ra, 0
.LBB4_240:
	ld.d	$s3, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 680
	addi.d	$a1, $sp, 696
	beq	$a0, $a1, .LBB4_242
# %bb.241:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230
	ld.d	$a1, $sp, 696
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_242:
	ld.d	$a0, $sp, 728
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN9benchmark12ComputeStatsERKSt6vectorINS8_17BenchmarkReporter3RunESaISB_EEE11CounterStatESt10_Select1stISH_ESt4lessIS5_ESaISH_EE8_M_eraseEPSt13_Rb_tree_nodeISH_E)
	jirl	$ra, $ra, 0
.LBB4_243:
	ld.d	$a0, $sp, 760
	bnez	$a0, .LBB4_246
# %bb.244:                              # %_ZNSt6vectorIdSaIdEED2Ev.exit234
	ld.d	$a0, $sp, 784
	bnez	$a0, .LBB4_247
.LBB4_245:                              # %_ZNSt6vectorIdSaIdEED2Ev.exit236
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EED2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB4_246:
	ld.d	$a1, $sp, 776
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 784
	beqz	$a0, .LBB4_245
.LBB4_247:
	ld.d	$a1, $sp, 800
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EED2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end4:
	.size	_ZN9benchmark12ComputeStatsERKSt6vectorINS_17BenchmarkReporter3RunESaIS2_EE, .Lfunc_end4-_ZN9benchmark12ComputeStatsERKSt6vectorINS_17BenchmarkReporter3RunESaIS2_EE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table4:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Ltmp3-.Lfunc_begin1           # >> Call Site 1 <<
	.uleb128 .Ltmp6-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp6
	.uleb128 .Ltmp97-.Lfunc_begin1          #     jumps to .Ltmp97
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp6-.Lfunc_begin1           # >> Call Site 2 <<
	.uleb128 .Ltmp7-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp7
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp7-.Lfunc_begin1           # >> Call Site 3 <<
	.uleb128 .Ltmp8-.Ltmp7                  #   Call between .Ltmp7 and .Ltmp8
	.uleb128 .Ltmp9-.Lfunc_begin1           #     jumps to .Ltmp9
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp10-.Lfunc_begin1          # >> Call Site 4 <<
	.uleb128 .Ltmp11-.Ltmp10                #   Call between .Ltmp10 and .Ltmp11
	.uleb128 .Ltmp12-.Lfunc_begin1          #     jumps to .Ltmp12
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp11-.Lfunc_begin1          # >> Call Site 5 <<
	.uleb128 .Ltmp19-.Ltmp11                #   Call between .Ltmp11 and .Ltmp19
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp19-.Lfunc_begin1          # >> Call Site 6 <<
	.uleb128 .Ltmp20-.Ltmp19                #   Call between .Ltmp19 and .Ltmp20
	.uleb128 .Ltmp21-.Lfunc_begin1          #     jumps to .Ltmp21
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp20-.Lfunc_begin1          # >> Call Site 7 <<
	.uleb128 .Ltmp25-.Ltmp20                #   Call between .Ltmp20 and .Ltmp25
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp25-.Lfunc_begin1          # >> Call Site 8 <<
	.uleb128 .Ltmp26-.Ltmp25                #   Call between .Ltmp25 and .Ltmp26
	.uleb128 .Ltmp29-.Lfunc_begin1          #     jumps to .Ltmp29
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp26-.Lfunc_begin1          # >> Call Site 9 <<
	.uleb128 .Ltmp27-.Ltmp26                #   Call between .Ltmp26 and .Ltmp27
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp27-.Lfunc_begin1          # >> Call Site 10 <<
	.uleb128 .Ltmp28-.Ltmp27                #   Call between .Ltmp27 and .Ltmp28
	.uleb128 .Ltmp29-.Lfunc_begin1          #     jumps to .Ltmp29
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp28-.Lfunc_begin1          # >> Call Site 11 <<
	.uleb128 .Ltmp30-.Ltmp28                #   Call between .Ltmp28 and .Ltmp30
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp30-.Lfunc_begin1          # >> Call Site 12 <<
	.uleb128 .Ltmp31-.Ltmp30                #   Call between .Ltmp30 and .Ltmp31
	.uleb128 .Ltmp32-.Lfunc_begin1          #     jumps to .Ltmp32
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp31-.Lfunc_begin1          # >> Call Site 13 <<
	.uleb128 .Ltmp39-.Ltmp31                #   Call between .Ltmp31 and .Ltmp39
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp39-.Lfunc_begin1          # >> Call Site 14 <<
	.uleb128 .Ltmp40-.Ltmp39                #   Call between .Ltmp39 and .Ltmp40
	.uleb128 .Ltmp41-.Lfunc_begin1          #     jumps to .Ltmp41
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp40-.Lfunc_begin1          # >> Call Site 15 <<
	.uleb128 .Ltmp42-.Ltmp40                #   Call between .Ltmp40 and .Ltmp42
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp42-.Lfunc_begin1          # >> Call Site 16 <<
	.uleb128 .Ltmp43-.Ltmp42                #   Call between .Ltmp42 and .Ltmp43
	.uleb128 .Ltmp44-.Lfunc_begin1          #     jumps to .Ltmp44
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp43-.Lfunc_begin1          # >> Call Site 17 <<
	.uleb128 .Ltmp45-.Ltmp43                #   Call between .Ltmp43 and .Ltmp45
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp45-.Lfunc_begin1          # >> Call Site 18 <<
	.uleb128 .Ltmp46-.Ltmp45                #   Call between .Ltmp45 and .Ltmp46
	.uleb128 .Ltmp47-.Lfunc_begin1          #     jumps to .Ltmp47
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp48-.Lfunc_begin1          # >> Call Site 19 <<
	.uleb128 .Ltmp71-.Ltmp48                #   Call between .Ltmp48 and .Ltmp71
	.uleb128 .Ltmp91-.Lfunc_begin1          #     jumps to .Ltmp91
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp71-.Lfunc_begin1          # >> Call Site 20 <<
	.uleb128 .Ltmp72-.Ltmp71                #   Call between .Ltmp71 and .Ltmp72
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp72-.Lfunc_begin1          # >> Call Site 21 <<
	.uleb128 .Ltmp73-.Ltmp72                #   Call between .Ltmp72 and .Ltmp73
	.uleb128 .Ltmp74-.Lfunc_begin1          #     jumps to .Ltmp74
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp75-.Lfunc_begin1          # >> Call Site 22 <<
	.uleb128 .Ltmp78-.Ltmp75                #   Call between .Ltmp75 and .Ltmp78
	.uleb128 .Ltmp83-.Lfunc_begin1          #     jumps to .Ltmp83
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp78-.Lfunc_begin1          # >> Call Site 23 <<
	.uleb128 .Ltmp79-.Ltmp78                #   Call between .Ltmp78 and .Ltmp79
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp79-.Lfunc_begin1          # >> Call Site 24 <<
	.uleb128 .Ltmp82-.Ltmp79                #   Call between .Ltmp79 and .Ltmp82
	.uleb128 .Ltmp83-.Lfunc_begin1          #     jumps to .Ltmp83
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp84-.Lfunc_begin1          # >> Call Site 25 <<
	.uleb128 .Ltmp85-.Ltmp84                #   Call between .Ltmp84 and .Ltmp85
	.uleb128 .Ltmp86-.Lfunc_begin1          #     jumps to .Ltmp86
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp85-.Lfunc_begin1          # >> Call Site 26 <<
	.uleb128 .Ltmp87-.Ltmp85                #   Call between .Ltmp85 and .Ltmp87
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp87-.Lfunc_begin1          # >> Call Site 27 <<
	.uleb128 .Ltmp90-.Ltmp87                #   Call between .Ltmp87 and .Ltmp90
	.uleb128 .Ltmp91-.Lfunc_begin1          #     jumps to .Ltmp91
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp92-.Lfunc_begin1          # >> Call Site 28 <<
	.uleb128 .Ltmp93-.Ltmp92                #   Call between .Ltmp92 and .Ltmp93
	.uleb128 .Ltmp94-.Lfunc_begin1          #     jumps to .Ltmp94
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp93-.Lfunc_begin1          # >> Call Site 29 <<
	.uleb128 .Ltmp22-.Ltmp93                #   Call between .Ltmp93 and .Ltmp22
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp22-.Lfunc_begin1          # >> Call Site 30 <<
	.uleb128 .Ltmp23-.Ltmp22                #   Call between .Ltmp22 and .Ltmp23
	.uleb128 .Ltmp24-.Lfunc_begin1          #     jumps to .Ltmp24
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp33-.Lfunc_begin1          # >> Call Site 31 <<
	.uleb128 .Ltmp34-.Ltmp33                #   Call between .Ltmp33 and .Ltmp34
	.uleb128 .Ltmp35-.Lfunc_begin1          #     jumps to .Ltmp35
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp36-.Lfunc_begin1          # >> Call Site 32 <<
	.uleb128 .Ltmp37-.Ltmp36                #   Call between .Ltmp36 and .Ltmp37
	.uleb128 .Ltmp38-.Lfunc_begin1          #     jumps to .Ltmp38
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp95-.Lfunc_begin1          # >> Call Site 33 <<
	.uleb128 .Ltmp96-.Ltmp95                #   Call between .Ltmp95 and .Ltmp96
	.uleb128 .Ltmp97-.Lfunc_begin1          #     jumps to .Ltmp97
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp96-.Lfunc_begin1          # >> Call Site 34 <<
	.uleb128 .Ltmp13-.Ltmp96                #   Call between .Ltmp96 and .Ltmp13
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp13-.Lfunc_begin1          # >> Call Site 35 <<
	.uleb128 .Ltmp14-.Ltmp13                #   Call between .Ltmp13 and .Ltmp14
	.uleb128 .Ltmp15-.Lfunc_begin1          #     jumps to .Ltmp15
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp16-.Lfunc_begin1          # >> Call Site 36 <<
	.uleb128 .Ltmp17-.Ltmp16                #   Call between .Ltmp16 and .Ltmp17
	.uleb128 .Ltmp18-.Lfunc_begin1          #     jumps to .Ltmp18
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp17-.Lfunc_begin1          # >> Call Site 37 <<
	.uleb128 .Lfunc_end4-.Ltmp17            #   Call between .Ltmp17 and .Lfunc_end4
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
	.section	.text._ZN9benchmark17BenchmarkReporter3RunC2Ev,"axG",@progbits,_ZN9benchmark17BenchmarkReporter3RunC2Ev,comdat
	.hidden	_ZN9benchmark17BenchmarkReporter3RunC2Ev # -- Begin function _ZN9benchmark17BenchmarkReporter3RunC2Ev
	.weak	_ZN9benchmark17BenchmarkReporter3RunC2Ev
	.p2align	5
	.type	_ZN9benchmark17BenchmarkReporter3RunC2Ev,@function
_ZN9benchmark17BenchmarkReporter3RunC2Ev: # @_ZN9benchmark17BenchmarkReporter3RunC2Ev
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception2
# %bb.0:
	addi.d	$sp, $sp, -48
	.cfi_def_cfa_offset 48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	move	$fp, $a0
	addi.d	$a0, $a0, 16
	st.d	$a0, $fp, 0
	st.d	$zero, $fp, 8
	st.b	$zero, $fp, 16
	addi.d	$a0, $fp, 48
	st.d	$a0, $fp, 32
	st.d	$zero, $fp, 40
	st.b	$zero, $fp, 48
	addi.d	$a0, $fp, 80
	st.d	$a0, $fp, 64
	st.d	$zero, $fp, 72
	st.b	$zero, $fp, 80
	addi.d	$a0, $fp, 112
	st.d	$a0, $fp, 96
	st.d	$zero, $fp, 104
	st.b	$zero, $fp, 112
	addi.d	$a0, $fp, 144
	st.d	$a0, $fp, 128
	st.d	$zero, $fp, 136
	st.b	$zero, $fp, 144
	addi.d	$a0, $fp, 176
	st.d	$a0, $fp, 160
	st.d	$zero, $fp, 168
	st.b	$zero, $fp, 176
	addi.d	$a0, $fp, 208
	st.d	$a0, $fp, 192
	st.d	$zero, $fp, 200
	st.b	$zero, $fp, 208
	addi.d	$a0, $fp, 240
	st.d	$a0, $fp, 224
	st.d	$zero, $fp, 232
	st.b	$zero, $fp, 240
	st.w	$zero, $fp, 272
	addi.d	$s1, $fp, 296
	st.d	$s1, $fp, 280
	st.d	$zero, $fp, 288
	st.b	$zero, $fp, 296
	st.w	$zero, $fp, 312
	addi.d	$s2, $fp, 336
	st.d	$s2, $fp, 320
	st.d	$zero, $fp, 328
	st.b	$zero, $fp, 336
	st.w	$zero, $fp, 352
	addi.d	$s3, $fp, 376
	st.d	$s3, $fp, 360
	st.d	$zero, $fp, 368
	st.b	$zero, $fp, 376
	vrepli.d	$vr0, 1
	vst	$vr0, $fp, 392
.Ltmp98:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN9benchmark18GetDefaultTimeUnitEv)
	jirl	$ra, $ra, 0
.Ltmp99:                                # EH_LABEL
# %bb.1:
	st.w	$a0, $fp, 424
	st.h	$zero, $fp, 488
	addi.d	$a0, $fp, 504
	st.w	$zero, $fp, 504
	st.d	$zero, $fp, 512
	st.d	$zero, $fp, 432
	vrepli.b	$vr0, 0
	vst	$vr0, $fp, 440
	st.b	$zero, $fp, 456
	vst	$vr0, $fp, 460
	st.w	$zero, $fp, 476
	st.d	$a0, $fp, 520
	st.d	$a0, $fp, 528
	st.d	$zero, $fp, 536
	vst	$vr0, $fp, 544
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB5_2:
.Ltmp100:                               # EH_LABEL
	ld.d	$a2, $fp, 360
	move	$s0, $a0
	bne	$a2, $s3, .LBB5_6
# %bb.3:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$a0, $fp, 320
	bne	$a0, $s2, .LBB5_7
.LBB5_4:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4
	ld.d	$a0, $fp, 280
	bne	$a0, $s1, .LBB5_8
.LBB5_5:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark13BenchmarkNameD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB5_6:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a0, $s3, 0
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 320
	beq	$a0, $s2, .LBB5_4
.LBB5_7:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2
	ld.d	$a1, $s2, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 280
	beq	$a0, $s1, .LBB5_5
.LBB5_8:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
	ld.d	$a1, $s1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark13BenchmarkNameD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end5:
	.size	_ZN9benchmark17BenchmarkReporter3RunC2Ev, .Lfunc_end5-_ZN9benchmark17BenchmarkReporter3RunC2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN9benchmark17BenchmarkReporter3RunC2Ev,"aG",@progbits,_ZN9benchmark17BenchmarkReporter3RunC2Ev,comdat
	.p2align	2, 0x0
GCC_except_table5:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Ltmp98-.Lfunc_begin2          # >> Call Site 1 <<
	.uleb128 .Ltmp99-.Ltmp98                #   Call between .Ltmp98 and .Ltmp99
	.uleb128 .Ltmp100-.Lfunc_begin2         #     jumps to .Ltmp100
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp99-.Lfunc_begin2          # >> Call Site 2 <<
	.uleb128 .Lfunc_end5-.Ltmp99            #   Call between .Ltmp99 and .Lfunc_end5
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN9benchmark12ComputeStatsERKSt6vectorINS6_17BenchmarkReporter3RunESaIS9_EEE11CounterStatSt4lessIS5_ESaISt4pairIKS5_SE_EEEixERSI_
	.type	_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN9benchmark12ComputeStatsERKSt6vectorINS6_17BenchmarkReporter3RunESaIS9_EEE11CounterStatSt4lessIS5_ESaISt4pairIKS5_SE_EEEixERSI_,@function
_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN9benchmark12ComputeStatsERKSt6vectorINS6_17BenchmarkReporter3RunESaIS9_EEE11CounterStatSt4lessIS5_ESaISt4pairIKS5_SE_EEEixERSI_: # @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN9benchmark12ComputeStatsERKSt6vectorINS6_17BenchmarkReporter3RunESaIS9_EEE11CounterStatSt4lessIS5_ESaISt4pairIKS5_SE_EEEixERSI_
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception3
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
	move	$s8, $a0
	ld.d	$s2, $a1, 0
	ld.d	$s7, $a0, 16
	ld.d	$s3, $a1, 8
	addi.d	$s1, $a0, 8
	move	$s4, $s1
	beqz	$s7, .LBB6_11
# %bb.1:                                # %.lr.ph.i.i.i.preheader
	st.d	$s8, $sp, 8                     # 8-byte Folded Spill
	lu12i.w	$s6, -524288
	lu12i.w	$a0, 524287
	ori	$s5, $a0, 4095
	ori	$s4, $zero, 16
	ori	$s8, $zero, 24
	move	$fp, $s1
	b	.LBB6_4
	.p2align	4, , 16
.LBB6_2:                                # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i
                                        #   in Loop: Header=BB6_4 Depth=1
	sub.d	$a0, $s0, $s3
	slt	$a1, $s6, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s6, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $s5
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s5, $a1
	or	$a0, $a0, $a1
.LBB6_3:                                # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
                                        #   in Loop: Header=BB6_4 Depth=1
	addi.w	$a0, $a0, 0
	slti	$a0, $a0, 0
	masknez	$a1, $s7, $a0
	masknez	$a2, $s4, $a0
	maskeqz	$a3, $s8, $a0
	or	$a2, $a3, $a2
	ldx.d	$s7, $s7, $a2
	maskeqz	$a0, $fp, $a0
	or	$fp, $a0, $a1
	beqz	$s7, .LBB6_6
.LBB6_4:                                # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s0, $s7, 40
	sltu	$a0, $s3, $s0
	masknez	$a1, $s0, $a0
	maskeqz	$a0, $s3, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB6_2
# %bb.5:                                # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
                                        #   in Loop: Header=BB6_4 Depth=1
	ld.d	$a0, $s7, 32
	move	$a1, $s2
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB6_3
	b	.LBB6_2
.LBB6_6:                                # %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN9benchmark12ComputeStatsERKSt6vectorINS6_17BenchmarkReporter3RunESaIS9_EEE11CounterStatSt4lessIS5_ESaISt4pairIKS5_SE_EEE11lower_boundERSI_.exit
	move	$s4, $s1
	ld.d	$s8, $sp, 8                     # 8-byte Folded Reload
	beq	$fp, $s1, .LBB6_11
# %bb.7:
	ld.d	$s0, $fp, 40
	sltu	$a0, $s0, $s3
	masknez	$a1, $s3, $a0
	maskeqz	$a0, $s0, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB6_10
# %bb.8:                                # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i
	ld.d	$a1, $fp, 32
	move	$a0, $s2
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB6_10
# %bb.9:                                # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
	addi.w	$a0, $a0, 0
	move	$s4, $fp
	bgez	$a0, .LBB6_29
	b	.LBB6_11
.LBB6_10:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
	sub.d	$a0, $s3, $s0
	slt	$a1, $s6, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s6, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $s5
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s5, $a1
	or	$a0, $a0, $a1
	addi.w	$a0, $a0, 0
	move	$s4, $fp
	bgez	$a0, .LBB6_29
.LBB6_11:                               # %.critedge
	ori	$a0, $zero, 104
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	addi.d	$s6, $a0, 48
	st.d	$s6, $a0, 32
	ori	$a1, $zero, 16
	st.d	$s3, $sp, 16
	move	$a0, $s6
	bltu	$s3, $a1, .LBB6_14
# %bb.12:                               # %.noexc.i.i.i.i.i.i.i
.Ltmp101:                               # EH_LABEL
	addi.d	$s5, $fp, 32
	addi.d	$a1, $sp, 16
	move	$a0, $s5
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp102:                               # EH_LABEL
# %bb.13:                               # %.noexc.i.i.i.i
	ld.d	$a1, $sp, 16
	st.d	$a0, $s5, 0
	st.d	$a1, $s6, 0
.LBB6_14:                               # %._crit_edge.i.i.i.i.i.i.i.i
	beqz	$s3, .LBB6_18
# %bb.15:                               # %._crit_edge.i.i.i.i.i.i.i.i
	ori	$a1, $zero, 1
	bne	$s3, $a1, .LBB6_17
# %bb.16:
	ld.b	$a1, $s2, 0
	st.b	$a1, $a0, 0
	b	.LBB6_18
.LBB6_17:
	move	$a1, $s2
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_18:
	ld.d	$a0, $sp, 16
	ld.d	$a1, $fp, 32
	st.d	$a0, $fp, 40
	stx.b	$zero, $a1, $a0
	vrepli.b	$vr0, 0
	vst	$vr0, $fp, 64
	ori	$a0, $zero, 1000
	ld.d	$s5, $fp, 32
	ld.d	$s3, $fp, 40
	st.w	$a0, $fp, 76
	st.d	$zero, $fp, 80
	vst	$vr0, $fp, 88
	move	$a0, $s8
	move	$a1, $s4
	move	$a2, $s5
	move	$a3, $s3
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN9benchmark12ComputeStatsERKSt6vectorINS8_17BenchmarkReporter3RunESaISB_EEE11CounterStatESt10_Select1stISH_ESt4lessIS5_ESaISH_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISH_ERS7_)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	beqz	$a1, .LBB6_26
# %bb.19:
	move	$s2, $a1
	ori	$a0, $zero, 1
	bnez	$s4, .LBB6_25
# %bb.20:
	beq	$s1, $s2, .LBB6_25
# %bb.21:
	ld.d	$s0, $s2, 40
	sltu	$a0, $s0, $s3
	masknez	$a1, $s3, $a0
	maskeqz	$a0, $s0, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB6_23
# %bb.22:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i14
	ld.d	$a1, $s2, 32
	move	$a0, $s5
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB6_24
.LBB6_23:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i18
	sub.d	$a0, $s3, $s0
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
.LBB6_24:                               # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i16
	addi.w	$a0, $a0, 0
	slti	$a0, $a0, 0
.LBB6_25:                               # %.thread.i
	move	$a1, $fp
	move	$a2, $s2
	move	$a3, $s1
	pcaddu18i	$ra, %call36(_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s8, 40
	addi.d	$a0, $a0, 1
	st.d	$a0, $s8, 40
	b	.LBB6_29
.LBB6_26:                               # %_ZZN9benchmark12ComputeStatsERKSt6vectorINS_17BenchmarkReporter3RunESaIS2_EEEN11CounterStatD2Ev.exit.i.i.i.i.i
	beq	$s5, $s6, .LBB6_28
# %bb.27:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
	ld.d	$a0, $s6, 0
	addi.d	$a1, $a0, 1
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_28:                               # %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN9benchmark12ComputeStatsERKSt6vectorINS8_17BenchmarkReporter3RunESaISB_EEE11CounterStatESt10_Select1stISH_ESt4lessIS5_ESaISH_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISH_E.exit.i.i
	ori	$a1, $zero, 104
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$fp, $s4
.LBB6_29:                               # %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN9benchmark12ComputeStatsERKSt6vectorINS8_17BenchmarkReporter3RunESaISB_EEE11CounterStatESt10_Select1stISH_ESt4lessIS5_ESaISH_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESS_IJEEEEESt17_Rb_tree_iteratorISH_ESt23_Rb_tree_const_iteratorISH_EDpOT_.exit
	addi.d	$a0, $fp, 64
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
.LBB6_30:
.Ltmp103:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_begin_catch)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 104
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.Ltmp104:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_rethrow)
	jirl	$ra, $ra, 0
.Ltmp105:                               # EH_LABEL
# %bb.31:
.LBB6_32:
.Ltmp106:                               # EH_LABEL
	move	$fp, $a0
.Ltmp107:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_end_catch)
	jirl	$ra, $ra, 0
.Ltmp108:                               # EH_LABEL
# %bb.33:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB6_34:
.Ltmp109:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end6:
	.size	_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN9benchmark12ComputeStatsERKSt6vectorINS6_17BenchmarkReporter3RunESaIS9_EEE11CounterStatSt4lessIS5_ESaISt4pairIKS5_SE_EEEixERSI_, .Lfunc_end6-_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN9benchmark12ComputeStatsERKSt6vectorINS6_17BenchmarkReporter3RunESaIS9_EEE11CounterStatSt4lessIS5_ESaISt4pairIKS5_SE_EEEixERSI_
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table6:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Lfunc_begin3-.Lfunc_begin3    # >> Call Site 1 <<
	.uleb128 .Ltmp101-.Lfunc_begin3         #   Call between .Lfunc_begin3 and .Ltmp101
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp101-.Lfunc_begin3         # >> Call Site 2 <<
	.uleb128 .Ltmp102-.Ltmp101              #   Call between .Ltmp101 and .Ltmp102
	.uleb128 .Ltmp103-.Lfunc_begin3         #     jumps to .Ltmp103
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp102-.Lfunc_begin3         # >> Call Site 3 <<
	.uleb128 .Ltmp104-.Ltmp102              #   Call between .Ltmp102 and .Ltmp104
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp104-.Lfunc_begin3         # >> Call Site 4 <<
	.uleb128 .Ltmp105-.Ltmp104              #   Call between .Ltmp104 and .Ltmp105
	.uleb128 .Ltmp106-.Lfunc_begin3         #     jumps to .Ltmp106
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp107-.Lfunc_begin3         # >> Call Site 5 <<
	.uleb128 .Ltmp108-.Ltmp107              #   Call between .Ltmp107 and .Ltmp108
	.uleb128 .Ltmp109-.Lfunc_begin3         #     jumps to .Ltmp109
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp108-.Lfunc_begin3         # >> Call Site 6 <<
	.uleb128 .Lfunc_end6-.Ltmp108           #   Call between .Ltmp108 and .Lfunc_end6
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase1:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN9benchmark17BenchmarkReporter3RunD2Ev,"axG",@progbits,_ZN9benchmark17BenchmarkReporter3RunD2Ev,comdat
	.hidden	_ZN9benchmark17BenchmarkReporter3RunD2Ev # -- Begin function _ZN9benchmark17BenchmarkReporter3RunD2Ev
	.weak	_ZN9benchmark17BenchmarkReporter3RunD2Ev
	.p2align	5
	.type	_ZN9benchmark17BenchmarkReporter3RunD2Ev,@function
_ZN9benchmark17BenchmarkReporter3RunD2Ev: # @_ZN9benchmark17BenchmarkReporter3RunD2Ev
.Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception4
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	ld.d	$a1, $a0, 512
	addi.d	$a0, $a0, 496
.Ltmp110:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E)
	jirl	$ra, $ra, 0
.Ltmp111:                               # EH_LABEL
# %bb.1:                                # %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit
	ld.d	$a0, $fp, 360
	addi.d	$a1, $fp, 376
	beq	$a0, $a1, .LBB7_3
# %bb.2:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_3:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$a0, $fp, 320
	addi.d	$a1, $fp, 336
	beq	$a0, $a1, .LBB7_5
# %bb.4:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_5:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3
	ld.d	$a0, $fp, 280
	addi.d	$a1, $fp, 296
	beq	$a0, $a1, .LBB7_7
# %bb.6:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_7:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZN9benchmark13BenchmarkNameD2Ev)
	jr	$t8
.LBB7_8:
.Ltmp112:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end7:
	.size	_ZN9benchmark17BenchmarkReporter3RunD2Ev, .Lfunc_end7-_ZN9benchmark17BenchmarkReporter3RunD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN9benchmark17BenchmarkReporter3RunD2Ev,"aG",@progbits,_ZN9benchmark17BenchmarkReporter3RunD2Ev,comdat
	.p2align	2, 0x0
GCC_except_table7:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase2-.Lttbaseref2
.Lttbaseref2:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Ltmp110-.Lfunc_begin4         # >> Call Site 1 <<
	.uleb128 .Ltmp111-.Ltmp110              #   Call between .Ltmp110 and .Ltmp111
	.uleb128 .Ltmp112-.Lfunc_begin4         #     jumps to .Ltmp112
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp111-.Lfunc_begin4         # >> Call Site 2 <<
	.uleb128 .Lfunc_end7-.Ltmp111           #   Call between .Ltmp111 and .Lfunc_end7
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
	.section	.text._ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EED2Ev,"axG",@progbits,_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EED2Ev,comdat
	.hidden	_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EED2Ev # -- Begin function _ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EED2Ev
	.weak	_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EED2Ev
	.p2align	5
	.type	_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EED2Ev,@function
_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EED2Ev: # @_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EED2Ev
.Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception5
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a1, $fp, 8
.Ltmp113:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSt12_Destroy_auxILb0EE9__destroyIPN9benchmark17BenchmarkReporter3RunEEEvT_S6_)
	jirl	$ra, $ra, 0
.Ltmp114:                               # EH_LABEL
# %bb.1:                                # %_ZSt8_DestroyIPN9benchmark17BenchmarkReporter3RunES2_EvT_S4_RSaIT0_E.exit
	ld.d	$a0, $fp, 0
	beqz	$a0, .LBB8_3
# %bb.2:
	ld.d	$a1, $fp, 16
	sub.d	$a1, $a1, $a0
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB8_3:                                # %_ZNSt12_Vector_baseIN9benchmark17BenchmarkReporter3RunESaIS2_EED2Ev.exit
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB8_4:
.Ltmp115:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end8:
	.size	_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EED2Ev, .Lfunc_end8-_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EED2Ev,"aG",@progbits,_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EED2Ev,comdat
	.p2align	2, 0x0
GCC_except_table8:
.Lexception5:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase3-.Lttbaseref3
.Lttbaseref3:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end5-.Lcst_begin5
.Lcst_begin5:
	.uleb128 .Ltmp113-.Lfunc_begin5         # >> Call Site 1 <<
	.uleb128 .Ltmp114-.Ltmp113              #   Call between .Ltmp113 and .Ltmp114
	.uleb128 .Ltmp115-.Lfunc_begin5         #     jumps to .Ltmp115
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp114-.Lfunc_begin5         # >> Call Site 2 <<
	.uleb128 .Lfunc_end8-.Ltmp114           #   Call between .Ltmp114 and .Lfunc_end8
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end5:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase3:
	.p2align	2, 0x0
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
.Lfunc_end9:
	.size	__clang_call_terminate, .Lfunc_end9-__clang_call_terminate
                                        # -- End function
	.section	.text._ZN9benchmark13BenchmarkNameD2Ev,"axG",@progbits,_ZN9benchmark13BenchmarkNameD2Ev,comdat
	.hidden	_ZN9benchmark13BenchmarkNameD2Ev # -- Begin function _ZN9benchmark13BenchmarkNameD2Ev
	.weak	_ZN9benchmark13BenchmarkNameD2Ev
	.p2align	5
	.type	_ZN9benchmark13BenchmarkNameD2Ev,@function
_ZN9benchmark13BenchmarkNameD2Ev:       # @_ZN9benchmark13BenchmarkNameD2Ev
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	ld.d	$a0, $a0, 224
	addi.d	$a1, $fp, 240
	beq	$a0, $a1, .LBB10_2
# %bb.1:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB10_2:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$a0, $fp, 192
	addi.d	$a1, $fp, 208
	beq	$a0, $a1, .LBB10_4
# %bb.3:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB10_4:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3
	ld.d	$a0, $fp, 160
	addi.d	$a1, $fp, 176
	beq	$a0, $a1, .LBB10_6
# %bb.5:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB10_6:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
	ld.d	$a0, $fp, 128
	addi.d	$a1, $fp, 144
	beq	$a0, $a1, .LBB10_8
# %bb.7:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB10_8:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9
	ld.d	$a0, $fp, 96
	addi.d	$a1, $fp, 112
	beq	$a0, $a1, .LBB10_10
# %bb.9:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB10_10:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12
	ld.d	$a0, $fp, 64
	addi.d	$a1, $fp, 80
	beq	$a0, $a1, .LBB10_12
# %bb.11:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB10_12:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
	ld.d	$a0, $fp, 32
	addi.d	$a1, $fp, 48
	beq	$a0, $a1, .LBB10_14
# %bb.13:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB10_14:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18
	ld.d	$a0, $fp, 0
	addi.d	$a1, $fp, 16
	beq	$a0, $a1, .LBB10_16
# %bb.15:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB10_16:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end10:
	.size	_ZN9benchmark13BenchmarkNameD2Ev, .Lfunc_end10-_ZN9benchmark13BenchmarkNameD2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E,"axG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E,comdat
	.hidden	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E # -- Begin function _ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E
	.weak	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E
	.p2align	5
	.type	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E,@function
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E: # @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E
	.cfi_startproc
# %bb.0:
	beqz	$a1, .LBB11_6
# %bb.1:                                # %.lr.ph.preheader
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
	move	$s0, $a1
	move	$fp, $a0
	b	.LBB11_3
	.p2align	4, , 16
.LBB11_2:                               # %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit
                                        #   in Loop: Header=BB11_3 Depth=1
	ori	$a1, $zero, 80
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$s0, $s1
	beqz	$s1, .LBB11_5
.LBB11_3:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 32
	ld.d	$s1, $s0, 16
	addi.d	$a1, $s0, 48
	beq	$a0, $a1, .LBB11_2
# %bb.4:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
                                        #   in Loop: Header=BB11_3 Depth=1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB11_2
.LBB11_5:
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
.LBB11_6:                               # %._crit_edge
	ret
.Lfunc_end11:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E, .Lfunc_end11-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E
	.cfi_endproc
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN9benchmark12ComputeStatsERKSt6vectorINS8_17BenchmarkReporter3RunESaISB_EEE11CounterStatESt10_Select1stISH_ESt4lessIS5_ESaISH_EE8_M_eraseEPSt13_Rb_tree_nodeISH_E
	.type	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN9benchmark12ComputeStatsERKSt6vectorINS8_17BenchmarkReporter3RunESaISB_EEE11CounterStatESt10_Select1stISH_ESt4lessIS5_ESaISH_EE8_M_eraseEPSt13_Rb_tree_nodeISH_E,@function
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN9benchmark12ComputeStatsERKSt6vectorINS8_17BenchmarkReporter3RunESaISB_EEE11CounterStatESt10_Select1stISH_ESt4lessIS5_ESaISH_EE8_M_eraseEPSt13_Rb_tree_nodeISH_E: # @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN9benchmark12ComputeStatsERKSt6vectorINS8_17BenchmarkReporter3RunESaISB_EEE11CounterStatESt10_Select1stISH_ESt4lessIS5_ESaISH_EE8_M_eraseEPSt13_Rb_tree_nodeISH_E
	.cfi_startproc
# %bb.0:
	beqz	$a0, .LBB12_8
# %bb.1:                                # %.lr.ph.preheader
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	move	$fp, $a0
	b	.LBB12_3
	.p2align	4, , 16
.LBB12_2:                               # %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN9benchmark12ComputeStatsERKSt6vectorINS8_17BenchmarkReporter3RunESaISB_EEE11CounterStatESt10_Select1stISH_ESt4lessIS5_ESaISH_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISH_E.exit
                                        #   in Loop: Header=BB12_3 Depth=1
	ori	$a1, $zero, 104
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$fp, $s0
	beqz	$s0, .LBB12_7
.LBB12_3:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 24
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN9benchmark12ComputeStatsERKSt6vectorINS8_17BenchmarkReporter3RunESaISB_EEE11CounterStatESt10_Select1stISH_ESt4lessIS5_ESaISH_EE8_M_eraseEPSt13_Rb_tree_nodeISH_E)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 80
	ld.d	$s0, $fp, 16
	beqz	$a0, .LBB12_5
# %bb.4:                                #   in Loop: Header=BB12_3 Depth=1
	ld.d	$a1, $fp, 96
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB12_5:                               # %_ZZN9benchmark12ComputeStatsERKSt6vectorINS_17BenchmarkReporter3RunESaIS2_EEEN11CounterStatD2Ev.exit.i.i.i
                                        #   in Loop: Header=BB12_3 Depth=1
	ld.d	$a0, $fp, 32
	addi.d	$a1, $fp, 48
	beq	$a0, $a1, .LBB12_2
# %bb.6:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
                                        #   in Loop: Header=BB12_3 Depth=1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB12_2
.LBB12_7:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
.LBB12_8:                               # %._crit_edge
	ret
.Lfunc_end12:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN9benchmark12ComputeStatsERKSt6vectorINS8_17BenchmarkReporter3RunESaISB_EEE11CounterStatESt10_Select1stISH_ESt4lessIS5_ESaISH_EE8_M_eraseEPSt13_Rb_tree_nodeISH_E, .Lfunc_end12-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN9benchmark12ComputeStatsERKSt6vectorINS8_17BenchmarkReporter3RunESaISB_EEE11CounterStatESt10_Select1stISH_ESt4lessIS5_ESaISH_EE8_M_eraseEPSt13_Rb_tree_nodeISH_E
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Destroy_auxILb0EE9__destroyIPN9benchmark17BenchmarkReporter3RunEEEvT_S6_,"axG",@progbits,_ZNSt12_Destroy_auxILb0EE9__destroyIPN9benchmark17BenchmarkReporter3RunEEEvT_S6_,comdat
	.hidden	_ZNSt12_Destroy_auxILb0EE9__destroyIPN9benchmark17BenchmarkReporter3RunEEEvT_S6_ # -- Begin function _ZNSt12_Destroy_auxILb0EE9__destroyIPN9benchmark17BenchmarkReporter3RunEEEvT_S6_
	.weak	_ZNSt12_Destroy_auxILb0EE9__destroyIPN9benchmark17BenchmarkReporter3RunEEEvT_S6_
	.p2align	5
	.type	_ZNSt12_Destroy_auxILb0EE9__destroyIPN9benchmark17BenchmarkReporter3RunEEEvT_S6_,@function
_ZNSt12_Destroy_auxILb0EE9__destroyIPN9benchmark17BenchmarkReporter3RunEEEvT_S6_: # @_ZNSt12_Destroy_auxILb0EE9__destroyIPN9benchmark17BenchmarkReporter3RunEEEvT_S6_
.Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception6
# %bb.0:
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	beq	$a0, $a1, .LBB13_10
# %bb.1:                                # %.lr.ph.preheader
	move	$fp, $a1
	move	$s0, $a0
	b	.LBB13_3
	.p2align	4, , 16
.LBB13_2:                               # %_ZSt8_DestroyIN9benchmark17BenchmarkReporter3RunEEvPT_.exit
                                        #   in Loop: Header=BB13_3 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark13BenchmarkNameD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, 560
	beq	$s0, $fp, .LBB13_10
.LBB13_3:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 512
	addi.d	$a0, $s0, 496
.Ltmp116:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E)
	jirl	$ra, $ra, 0
.Ltmp117:                               # EH_LABEL
# %bb.4:                                # %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit.i.i
                                        #   in Loop: Header=BB13_3 Depth=1
	ld.d	$a0, $s0, 360
	addi.d	$a1, $s0, 376
	beq	$a1, $a0, .LBB13_6
# %bb.5:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
                                        #   in Loop: Header=BB13_3 Depth=1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB13_6:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
                                        #   in Loop: Header=BB13_3 Depth=1
	ld.d	$a0, $s0, 320
	addi.d	$a1, $s0, 336
	beq	$a1, $a0, .LBB13_8
# %bb.7:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i
                                        #   in Loop: Header=BB13_3 Depth=1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB13_8:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i
                                        #   in Loop: Header=BB13_3 Depth=1
	ld.d	$a0, $s0, 280
	addi.d	$a1, $s0, 296
	beq	$a1, $a0, .LBB13_2
# %bb.9:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i
                                        #   in Loop: Header=BB13_3 Depth=1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB13_2
.LBB13_10:                              # %._crit_edge
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB13_11:
.Ltmp118:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end13:
	.size	_ZNSt12_Destroy_auxILb0EE9__destroyIPN9benchmark17BenchmarkReporter3RunEEEvT_S6_, .Lfunc_end13-_ZNSt12_Destroy_auxILb0EE9__destroyIPN9benchmark17BenchmarkReporter3RunEEEvT_S6_
	.cfi_endproc
	.section	.gcc_except_table._ZNSt12_Destroy_auxILb0EE9__destroyIPN9benchmark17BenchmarkReporter3RunEEEvT_S6_,"aG",@progbits,_ZNSt12_Destroy_auxILb0EE9__destroyIPN9benchmark17BenchmarkReporter3RunEEEvT_S6_,comdat
	.p2align	2, 0x0
GCC_except_table13:
.Lexception6:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase4-.Lttbaseref4
.Lttbaseref4:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end6-.Lcst_begin6
.Lcst_begin6:
	.uleb128 .Lfunc_begin6-.Lfunc_begin6    # >> Call Site 1 <<
	.uleb128 .Ltmp116-.Lfunc_begin6         #   Call between .Lfunc_begin6 and .Ltmp116
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp116-.Lfunc_begin6         # >> Call Site 2 <<
	.uleb128 .Ltmp117-.Ltmp116              #   Call between .Ltmp116 and .Ltmp117
	.uleb128 .Ltmp118-.Lfunc_begin6         #     jumps to .Ltmp118
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp117-.Lfunc_begin6         # >> Call Site 3 <<
	.uleb128 .Lfunc_end13-.Ltmp117          #   Call between .Ltmp117 and .Lfunc_end13
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end6:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase4:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZSt13__introselectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_T1_,"axG",@progbits,_ZSt13__introselectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_T1_,comdat
	.hidden	_ZSt13__introselectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_T1_ # -- Begin function _ZSt13__introselectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_T1_
	.weak	_ZSt13__introselectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_T1_
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
	blt	$a2, $a0, .LBB14_24
# %bb.1:                                # %.lr.ph.preheader
	beqz	$a3, .LBB14_23
# %bb.2:                                # %.lr.ph73.preheader
	ori	$a0, $zero, 3
	.p2align	4, , 16
.LBB14_3:                               # %.lr.ph73
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_15 Depth 2
                                        #       Child Loop BB14_16 Depth 3
                                        #       Child Loop BB14_18 Depth 3
	slli.d	$a2, $a2, 2
	bstrins.d	$a2, $zero, 2, 0
	fld.d	$fa1, $fp, 8
	fldx.d	$fa2, $fp, $a2
	fld.d	$fa0, $s0, -8
	fcmp.cule.d	$fcc0, $fa2, $fa1
	add.d	$a2, $fp, $a2
	bcnez	$fcc0, .LBB14_6
# %bb.4:                                #   in Loop: Header=BB14_3 Depth=1
	fcmp.cule.d	$fcc0, $fa0, $fa2
	bcnez	$fcc0, .LBB14_8
# %bb.5:                                #   in Loop: Header=BB14_3 Depth=1
	fld.d	$fa0, $fp, 0
	fst.d	$fa2, $fp, 0
	fst.d	$fa0, $a2, 0
	b	.LBB14_14
	.p2align	4, , 16
.LBB14_6:                               #   in Loop: Header=BB14_3 Depth=1
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB14_10
# %bb.7:                                #   in Loop: Header=BB14_3 Depth=1
	fld.d	$fa0, $fp, 0
	fst.d	$fa1, $fp, 0
	fst.d	$fa0, $fp, 8
	b	.LBB14_14
	.p2align	4, , 16
.LBB14_8:                               #   in Loop: Header=BB14_3 Depth=1
	fld.d	$fa2, $fp, 0
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB14_12
# %bb.9:                                #   in Loop: Header=BB14_3 Depth=1
	fst.d	$fa0, $fp, 0
	fst.d	$fa2, $s0, -8
	b	.LBB14_14
	.p2align	4, , 16
.LBB14_10:                              #   in Loop: Header=BB14_3 Depth=1
	fld.d	$fa1, $fp, 0
	fcmp.cule.d	$fcc0, $fa0, $fa2
	bcnez	$fcc0, .LBB14_13
# %bb.11:                               #   in Loop: Header=BB14_3 Depth=1
	fst.d	$fa0, $fp, 0
	fst.d	$fa1, $s0, -8
	b	.LBB14_14
.LBB14_12:                              #   in Loop: Header=BB14_3 Depth=1
	fst.d	$fa1, $fp, 0
	fst.d	$fa2, $fp, 8
	b	.LBB14_14
.LBB14_13:                              #   in Loop: Header=BB14_3 Depth=1
	fst.d	$fa2, $fp, 0
	fst.d	$fa1, $a2, 0
	.p2align	4, , 16
.LBB14_14:                              # %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader
                                        #   in Loop: Header=BB14_3 Depth=1
	addi.d	$a3, $a3, -1
	addi.d	$a2, $fp, 8
	move	$a4, $s0
	.p2align	4, , 16
.LBB14_15:                              # %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i
                                        #   Parent Loop BB14_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB14_16 Depth 3
                                        #       Child Loop BB14_18 Depth 3
	fld.d	$fa1, $fp, 0
	.p2align	4, , 16
.LBB14_16:                              #   Parent Loop BB14_3 Depth=1
                                        #     Parent Loop BB14_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa0, $a2, 0
	fcmp.clt.d	$fcc0, $fa0, $fa1
	addi.d	$a2, $a2, 8
	bcnez	$fcc0, .LBB14_16
# %bb.17:                               # %.preheader.i.i.preheader
                                        #   in Loop: Header=BB14_15 Depth=2
	addi.d	$a5, $a2, -8
	.p2align	4, , 16
.LBB14_18:                              # %.preheader.i.i
                                        #   Parent Loop BB14_3 Depth=1
                                        #     Parent Loop BB14_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa2, $a4, -8
	fcmp.clt.d	$fcc0, $fa1, $fa2
	addi.d	$a4, $a4, -8
	bcnez	$fcc0, .LBB14_18
# %bb.19:                               #   in Loop: Header=BB14_15 Depth=2
	bgeu	$a5, $a4, .LBB14_21
# %bb.20:                               #   in Loop: Header=BB14_15 Depth=2
	fst.d	$fa2, $a5, 0
	fst.d	$fa0, $a4, 0
	b	.LBB14_15
	.p2align	4, , 16
.LBB14_21:                              # %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_.exit
                                        #   in Loop: Header=BB14_3 Depth=1
	sltu	$a2, $a1, $a5
	masknez	$a4, $s0, $a2
	maskeqz	$a6, $a5, $a2
	or	$s0, $a6, $a4
	masknez	$a4, $a5, $a2
	maskeqz	$a2, $fp, $a2
	or	$fp, $a2, $a4
	sub.d	$a2, $s0, $fp
	srai.d	$a2, $a2, 3
	bge	$a0, $a2, .LBB14_24
# %bb.22:                               # %.lr.ph
                                        #   in Loop: Header=BB14_3 Depth=1
	bnez	$a3, .LBB14_3
.LBB14_23:                              # %.lr.ph._crit_edge
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
	b	.LBB14_37
.LBB14_24:                              # %._crit_edge
	beq	$fp, $s0, .LBB14_37
# %bb.25:                               # %._crit_edge
	addi.d	$a2, $fp, 8
	beq	$a2, $s0, .LBB14_37
# %bb.26:                               # %.lr.ph.i.preheader
	ori	$s1, $zero, 2
	ori	$s2, $zero, 8
	move	$s3, $fp
	b	.LBB14_31
	.p2align	4, , 16
.LBB14_27:                              #   in Loop: Header=BB14_31 Depth=1
	sub.d	$a2, $s3, $fp
	srai.d	$a0, $a2, 3
	blt	$a0, $s1, .LBB14_35
# %bb.28:                               #   in Loop: Header=BB14_31 Depth=1
	slli.d	$a0, $a0, 3
	sub.d	$a0, $a1, $a0
	addi.d	$a0, $a0, 16
	move	$a1, $fp
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
.LBB14_29:                              # %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_.exit.i
                                        #   in Loop: Header=BB14_31 Depth=1
	move	$a0, $fp
.LBB14_30:                              # %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_ET0_T_S8_S7_.exit.i
                                        #   in Loop: Header=BB14_31 Depth=1
	addi.d	$a2, $s3, 8
	fst.d	$fs0, $a0, 0
	beq	$a2, $s0, .LBB14_37
.LBB14_31:                              # %.lr.ph.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_34 Depth 2
	move	$a1, $s3
	fld.d	$fs0, $s3, 8
	fld.d	$fa0, $fp, 0
	fcmp.cule.d	$fcc0, $fa0, $fs0
	move	$s3, $a2
	bceqz	$fcc0, .LBB14_27
# %bb.32:                               #   in Loop: Header=BB14_31 Depth=1
	fld.d	$fa0, $a1, 0
	fcmp.cule.d	$fcc0, $fa0, $fs0
	move	$a0, $s3
	bcnez	$fcc0, .LBB14_30
# %bb.33:                               # %.lr.ph.i.i.preheader
                                        #   in Loop: Header=BB14_31 Depth=1
	move	$a0, $s3
	.p2align	4, , 16
.LBB14_34:                              # %.lr.ph.i.i
                                        #   Parent Loop BB14_31 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fst.d	$fa0, $a0, 0
	fld.d	$fa0, $a0, -16
	fcmp.clt.d	$fcc0, $fs0, $fa0
	addi.d	$a0, $a0, -8
	bcnez	$fcc0, .LBB14_34
	b	.LBB14_30
.LBB14_35:                              #   in Loop: Header=BB14_31 Depth=1
	move	$a0, $fp
	bne	$a2, $s2, .LBB14_30
# %bb.36:                               #   in Loop: Header=BB14_31 Depth=1
	fst.d	$fa0, $a1, 8
	b	.LBB14_29
.LBB14_37:                              # %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end14:
	.size	_ZSt13__introselectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_T1_, .Lfunc_end14-_ZSt13__introselectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_T1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_,"axG",@progbits,_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_,comdat
	.hidden	_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_ # -- Begin function _ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_
	.weak	_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_
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
	bgeu	$s0, $fp, .LBB15_28
# %bb.1:                                # %.lr.ph
	sub.d	$a0, $s0, $s1
	srai.d	$a1, $a0, 3
	andi	$a0, $a0, 8
	ori	$a2, $zero, 3
	addi.d	$a3, $a1, -2
	blt	$a1, $a2, .LBB15_15
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
	b	.LBB15_6
	.p2align	4, , 16
.LBB15_3:                               #   in Loop: Header=BB15_6 Depth=1
	move	$a7, $zero
.LBB15_4:                               # %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.us
                                        #   in Loop: Header=BB15_6 Depth=1
	slli.d	$a7, $a7, 3
	fstx.d	$fa0, $s1, $a7
.LBB15_5:                               #   in Loop: Header=BB15_6 Depth=1
	addi.d	$s0, $s0, 8
	bgeu	$s0, $fp, .LBB15_28
.LBB15_6:                               # %.lr.ph.split.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_8 Depth 2
                                        #     Child Loop BB15_13 Depth 2
	fld.d	$fa0, $s0, 0
	fld.d	$fa1, $s1, 0
	fcmp.cule.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB15_5
# %bb.7:                                # %.lr.ph.i.i.preheader.us
                                        #   in Loop: Header=BB15_6 Depth=1
	move	$a7, $zero
	fst.d	$fa1, $s0, 0
	.p2align	4, , 16
.LBB15_8:                               # %.lr.ph.i.i.us
                                        #   Parent Loop BB15_6 Depth=1
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
	blt	$a7, $a1, .LBB15_8
# %bb.9:                                # %._crit_edge.i.i.loopexit.us
                                        #   in Loop: Header=BB15_6 Depth=1
	bnez	$a0, .LBB15_12
# %bb.10:                               # %._crit_edge.i.i.loopexit.us
                                        #   in Loop: Header=BB15_6 Depth=1
	bne	$a7, $a2, .LBB15_12
# %bb.11:                               # %.thread.i.us
                                        #   in Loop: Header=BB15_6 Depth=1
	fld.d	$fa1, $a4, 0
	fst.d	$fa1, $a5, 0
	move	$a7, $a3
	b	.LBB15_13
	.p2align	4, , 16
.LBB15_12:                              #   in Loop: Header=BB15_6 Depth=1
	beqz	$a7, .LBB15_3
	.p2align	4, , 16
.LBB15_13:                              # %.lr.ph.i.i.i.us
                                        #   Parent Loop BB15_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$t0, $a7, -1
	srli.d	$t1, $t0, 1
	slli.d	$t2, $t1, 3
	fldx.d	$fa1, $s1, $t2
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB15_4
# %bb.14:                               #   in Loop: Header=BB15_13 Depth=2
	slli.d	$a7, $a7, 3
	fstx.d	$fa1, $s1, $a7
	move	$a7, $t1
	bltu	$a6, $t0, .LBB15_13
	b	.LBB15_3
.LBB15_15:                              # %.lr.ph.split
	bnez	$a0, .LBB15_24
# %bb.16:                               # %.lr.ph.split.split.us
	beqz	$a3, .LBB15_22
# %bb.17:                               # %.lr.ph.split.split.us.split.preheader
	fld.d	$fa0, $s1, 0
	b	.LBB15_19
	.p2align	4, , 16
.LBB15_18:                              #   in Loop: Header=BB15_19 Depth=1
	addi.d	$s0, $s0, 8
	bgeu	$s0, $fp, .LBB15_28
.LBB15_19:                              # %.lr.ph.split.split.us.split
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa1, $s0, 0
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB15_18
# %bb.20:                               # %._crit_edge.i.i.us13
                                        #   in Loop: Header=BB15_19 Depth=1
	fst.d	$fa0, $s0, 0
	fst.d	$fa1, $s1, 0
	fmov.d	$fa0, $fa1
	b	.LBB15_18
	.p2align	4, , 16
.LBB15_21:                              #   in Loop: Header=BB15_22 Depth=1
	addi.d	$s0, $s0, 8
	bgeu	$s0, $fp, .LBB15_28
.LBB15_22:                              # %.lr.ph.split.split.us.split.us
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $s0, 0
	fld.d	$fa1, $s1, 0
	fcmp.cule.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB15_21
# %bb.23:                               # %._crit_edge.i.i.us13.us
                                        #   in Loop: Header=BB15_22 Depth=1
	fst.d	$fa1, $s0, 0
	fld.d	$fa1, $s1, 8
	fcmp.cule.d	$fcc0, $fa0, $fa1
	fst.d	$fa1, $s1, 0
	movcf2gr	$a0, $fcc0
	slli.d	$a0, $a0, 3
	fstx.d	$fa0, $s1, $a0
	b	.LBB15_21
.LBB15_24:                              # %.lr.ph.split.split.preheader
	fld.d	$fa0, $s1, 0
	b	.LBB15_26
	.p2align	4, , 16
.LBB15_25:                              #   in Loop: Header=BB15_26 Depth=1
	addi.d	$s0, $s0, 8
	bgeu	$s0, $fp, .LBB15_28
.LBB15_26:                              # %.lr.ph.split.split
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa1, $s0, 0
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB15_25
# %bb.27:                               # %._crit_edge.i.i
                                        #   in Loop: Header=BB15_26 Depth=1
	fst.d	$fa0, $s0, 0
	fst.d	$fa1, $s1, 0
	fmov.d	$fa0, $fa1
	b	.LBB15_25
.LBB15_28:                              # %._crit_edge
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end15:
	.size	_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_, .Lfunc_end15-_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_,"axG",@progbits,_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_,comdat
	.hidden	_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_ # -- Begin function _ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_
	.weak	_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_
	.p2align	5
	.type	_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_,@function
_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_: # @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_
	.cfi_startproc
# %bb.0:
	sub.d	$a1, $a1, $a0
	srai.d	$a3, $a1, 3
	ori	$a2, $zero, 2
	bge	$a3, $a2, .LBB16_2
.LBB16_1:                               # %.loopexit
	ret
.LBB16_2:
	addi.d	$a4, $a3, -2
	srli.d	$a2, $a4, 1
	addi.d	$a3, $a3, -1
	andi	$a5, $a1, 8
	srli.d	$a1, $a3, 1
	bnez	$a5, .LBB16_16
# %bb.3:                                # %.split.preheader
	addi.d	$a3, $a4, 1
	alsl.d	$a4, $a3, $a0, 3
	alsl.d	$a5, $a2, $a0, 3
	move	$a7, $a2
	b	.LBB16_6
	.p2align	4, , 16
.LBB16_4:                               #   in Loop: Header=BB16_6 Depth=1
	move	$t0, $a7
.LBB16_5:                               # %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit
                                        #   in Loop: Header=BB16_6 Depth=1
	slli.d	$a7, $t0, 3
	fstx.d	$fa0, $a0, $a7
	addi.d	$a7, $a6, -1
	beqz	$a6, .LBB16_1
.LBB16_6:                               # %.split
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_8 Depth 2
                                        #     Child Loop BB16_12 Depth 2
	move	$a6, $a7
	slli.d	$a7, $a7, 3
	fldx.d	$fa0, $a0, $a7
	move	$a7, $a6
	bge	$a6, $a1, .LBB16_9
# %bb.7:                                # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB16_6 Depth=1
	move	$t0, $a6
	.p2align	4, , 16
.LBB16_8:                               # %.lr.ph.i
                                        #   Parent Loop BB16_6 Depth=1
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
	blt	$a7, $a1, .LBB16_8
.LBB16_9:                               # %._crit_edge.i
                                        #   in Loop: Header=BB16_6 Depth=1
	bne	$a7, $a2, .LBB16_11
# %bb.10:                               #   in Loop: Header=BB16_6 Depth=1
	fld.d	$fa1, $a4, 0
	fst.d	$fa1, $a5, 0
	move	$a7, $a3
.LBB16_11:                              #   in Loop: Header=BB16_6 Depth=1
	bge	$a6, $a7, .LBB16_4
	.p2align	4, , 16
.LBB16_12:                              # %.lr.ph.i.i
                                        #   Parent Loop BB16_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$t0, $a7, -1
	srli.d	$t1, $t0, 63
	add.d	$t0, $t0, $t1
	srai.d	$t0, $t0, 1
	slli.d	$t1, $t0, 3
	fldx.d	$fa1, $a0, $t1
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB16_4
# %bb.13:                               #   in Loop: Header=BB16_12 Depth=2
	slli.d	$a7, $a7, 3
	fstx.d	$fa1, $a0, $a7
	move	$a7, $t0
	blt	$a6, $t0, .LBB16_12
	b	.LBB16_5
	.p2align	4, , 16
.LBB16_14:                              #   in Loop: Header=BB16_16 Depth=1
	move	$a4, $a2
.LBB16_15:                              # %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEldNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us
                                        #   in Loop: Header=BB16_16 Depth=1
	slli.d	$a2, $a4, 3
	fstx.d	$fa0, $a0, $a2
	addi.d	$a2, $a3, -1
	beqz	$a3, .LBB16_1
.LBB16_16:                              # %.split.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_18 Depth 2
                                        #     Child Loop BB16_20 Depth 2
	move	$a3, $a2
	slli.d	$a2, $a2, 3
	fldx.d	$fa0, $a0, $a2
	move	$a4, $a3
	bge	$a3, $a1, .LBB16_15
# %bb.17:                               # %.lr.ph.i.us.preheader
                                        #   in Loop: Header=BB16_16 Depth=1
	move	$a2, $a3
	.p2align	4, , 16
.LBB16_18:                              # %.lr.ph.i.us
                                        #   Parent Loop BB16_16 Depth=1
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
	blt	$a2, $a1, .LBB16_18
# %bb.19:                               # %._crit_edge.i.us
                                        #   in Loop: Header=BB16_16 Depth=1
	bge	$a3, $a2, .LBB16_14
	.p2align	4, , 16
.LBB16_20:                              # %.lr.ph.i.i.us
                                        #   Parent Loop BB16_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a4, $a2, -1
	srli.d	$a5, $a4, 63
	add.d	$a4, $a4, $a5
	srai.d	$a4, $a4, 1
	slli.d	$a5, $a4, 3
	fldx.d	$fa1, $a0, $a5
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB16_14
# %bb.21:                               #   in Loop: Header=BB16_20 Depth=2
	slli.d	$a2, $a2, 3
	fstx.d	$fa1, $a0, $a2
	move	$a2, $a4
	blt	$a3, $a4, .LBB16_20
	b	.LBB16_15
.Lfunc_end16:
	.size	_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_, .Lfunc_end16-_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_
	.cfi_endproc
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN9benchmark12ComputeStatsERKSt6vectorINS8_17BenchmarkReporter3RunESaISB_EEE11CounterStatESt10_Select1stISH_ESt4lessIS5_ESaISH_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISH_ERS7_
	.type	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN9benchmark12ComputeStatsERKSt6vectorINS8_17BenchmarkReporter3RunESaISB_EEE11CounterStatESt10_Select1stISH_ESt4lessIS5_ESaISH_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISH_ERS7_,@function
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN9benchmark12ComputeStatsERKSt6vectorINS8_17BenchmarkReporter3RunESaISB_EEE11CounterStatESt10_Select1stISH_ESt4lessIS5_ESaISH_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISH_ERS7_: # @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN9benchmark12ComputeStatsERKSt6vectorINS8_17BenchmarkReporter3RunESaISB_EEE11CounterStatESt10_Select1stISH_ESt4lessIS5_ESaISH_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISH_ERS7_
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
	move	$s1, $a0
	addi.d	$a0, $a0, 8
	move	$fp, $a3
	move	$s2, $a2
	beq	$a0, $a1, .LBB17_4
# %bb.1:
	move	$s0, $a1
	ld.d	$s5, $a1, 40
	sltu	$a0, $s5, $fp
	masknez	$a1, $fp, $a0
	maskeqz	$a0, $s5, $a0
	or	$s3, $a0, $a1
	beqz	$s3, .LBB17_10
# %bb.2:                                # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i30
	ld.d	$s4, $s0, 32
	move	$a0, $s2
	move	$a1, $s4
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB17_11
# %bb.3:                                # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit37.thread
	bgez	$a0, .LBB17_12
	b	.LBB17_15
.LBB17_4:
	ld.d	$a0, $s1, 40
	beqz	$a0, .LBB17_27
# %bb.5:
	ld.d	$a1, $s1, 32
	ld.d	$s0, $a1, 40
	sltu	$a0, $fp, $s0
	masknez	$a2, $s0, $a0
	maskeqz	$a0, $fp, $a0
	or	$a2, $a0, $a2
	beqz	$a2, .LBB17_7
# %bb.6:                                # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i
	ld.d	$a0, $a1, 32
	move	$s3, $a1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	move	$a1, $s3
	bnez	$a0, .LBB17_8
.LBB17_7:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
	sub.d	$a0, $s0, $fp
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
.LBB17_8:                               # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
	addi.w	$a0, $a0, 0
	bgez	$a0, .LBB17_27
# %bb.9:
	move	$s0, $zero
	b	.LBB17_28
.LBB17_10:                              # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit37
	sub.d	$a0, $fp, $s5
	bgez	$a0, .LBB17_21
	b	.LBB17_15
.LBB17_11:                              # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit37.thread23
	sub.d	$a0, $fp, $s5
	bltz	$a0, .LBB17_15
.LBB17_12:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i48
	move	$a0, $s4
	move	$a1, $s2
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB17_21
# %bb.13:                               # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit55
	addi.w	$a0, $a0, 0
	bltz	$a0, .LBB17_22
.LBB17_14:
	move	$a1, $zero
	b	.LBB17_28
.LBB17_15:
	ld.d	$a0, $s1, 24
	beq	$a0, $s0, .LBB17_29
# %bb.16:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	ld.d	$s4, $a0, 40
	sltu	$a0, $fp, $s4
	masknez	$a1, $s4, $a0
	maskeqz	$a0, $fp, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB17_18
# %bb.17:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i39
	ld.d	$a0, $s3, 32
	move	$a1, $s2
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB17_19
.LBB17_18:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i42
	sub.d	$a0, $s4, $fp
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
.LBB17_19:                              # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit46
	addi.w	$a0, $a0, 0
	bgez	$a0, .LBB17_27
# %bb.20:
	ld.d	$a0, $s3, 24
	sltui	$a0, $a0, 1
	masknez	$s0, $s0, $a0
	maskeqz	$a0, $s3, $a0
	or	$a1, $a0, $s0
	b	.LBB17_28
.LBB17_21:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i51
	sub.d	$a0, $s5, $fp
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
	bgez	$a0, .LBB17_14
.LBB17_22:
	ld.d	$a0, $s1, 32
	beq	$a0, $s0, .LBB17_30
# %bb.23:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	ld.d	$s4, $a0, 40
	sltu	$a0, $s4, $fp
	masknez	$a1, $fp, $a0
	maskeqz	$a0, $s4, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB17_25
# %bb.24:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i57
	ld.d	$a1, $s3, 32
	move	$a0, $s2
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB17_26
.LBB17_25:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i60
	sub.d	$a0, $fp, $s4
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
.LBB17_26:                              # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit64
	addi.w	$a0, $a0, 0
	bltz	$a0, .LBB17_31
.LBB17_27:
	move	$a0, $s1
	move	$a1, $s2
	move	$a2, $fp
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN9benchmark12ComputeStatsERKSt6vectorINS8_17BenchmarkReporter3RunESaISB_EEE11CounterStatESt10_Select1stISH_ESt4lessIS5_ESaISH_EE24_M_get_insert_unique_posERS7_)
	jirl	$ra, $ra, 0
	move	$s0, $a0
.LBB17_28:
	move	$a0, $s0
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
.LBB17_29:
	move	$a1, $s0
	b	.LBB17_28
.LBB17_30:
	move	$a1, $s0
	move	$s0, $zero
	b	.LBB17_28
.LBB17_31:
	ld.d	$a0, $s0, 24
	sltui	$a0, $a0, 1
	maskeqz	$a1, $s0, $a0
	masknez	$s0, $s3, $a0
	or	$a1, $a1, $s0
	b	.LBB17_28
.Lfunc_end17:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN9benchmark12ComputeStatsERKSt6vectorINS8_17BenchmarkReporter3RunESaISB_EEE11CounterStatESt10_Select1stISH_ESt4lessIS5_ESaISH_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISH_ERS7_, .Lfunc_end17-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN9benchmark12ComputeStatsERKSt6vectorINS8_17BenchmarkReporter3RunESaISB_EEE11CounterStatESt10_Select1stISH_ESt4lessIS5_ESaISH_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISH_ERS7_
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN9benchmark12ComputeStatsERKSt6vectorINS8_17BenchmarkReporter3RunESaISB_EEE11CounterStatESt10_Select1stISH_ESt4lessIS5_ESaISH_EE24_M_get_insert_unique_posERS7_
	.type	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN9benchmark12ComputeStatsERKSt6vectorINS8_17BenchmarkReporter3RunESaISB_EEE11CounterStatESt10_Select1stISH_ESt4lessIS5_ESaISH_EE24_M_get_insert_unique_posERS7_,@function
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN9benchmark12ComputeStatsERKSt6vectorINS8_17BenchmarkReporter3RunESaISB_EEE11CounterStatESt10_Select1stISH_ESt4lessIS5_ESaISH_EE24_M_get_insert_unique_posERS7_: # @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN9benchmark12ComputeStatsERKSt6vectorINS8_17BenchmarkReporter3RunESaISB_EEE11CounterStatESt10_Select1stISH_ESt4lessIS5_ESaISH_EE24_M_get_insert_unique_posERS7_
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
	move	$s2, $a0
	ld.d	$a0, $a0, 16
	move	$s0, $a2
	move	$s1, $a1
	lu12i.w	$s5, -524288
	lu12i.w	$s4, 524287
	beqz	$a0, .LBB18_13
# %bb.1:                                # %.lr.ph.preheader
	ori	$s3, $s4, 4095
	ori	$s6, $zero, 24
	ori	$s7, $zero, 16
	b	.LBB18_4
	.p2align	4, , 16
.LBB18_2:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
                                        #   in Loop: Header=BB18_4 Depth=1
	sub.d	$a0, $s0, $s8
	slt	$a1, $s5, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s5, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $s3
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s3, $a1
	or	$a0, $a0, $a1
.LBB18_3:                               # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
                                        #   in Loop: Header=BB18_4 Depth=1
	addi.w	$a1, $a0, 0
	slti	$a0, $a1, 0
	masknez	$a2, $s6, $a0
	maskeqz	$a0, $s7, $a0
	or	$a0, $a0, $a2
	ldx.d	$a0, $fp, $a0
	beqz	$a0, .LBB18_6
.LBB18_4:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	move	$fp, $a0
	ld.d	$s8, $a0, 40
	sltu	$a0, $s8, $s0
	masknez	$a1, $s0, $a0
	maskeqz	$a0, $s8, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB18_2
# %bb.5:                                # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i
                                        #   in Loop: Header=BB18_4 Depth=1
	ld.d	$a1, $fp, 32
	move	$a0, $s1
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB18_3
	b	.LBB18_2
.LBB18_6:                               # %._crit_edge
	move	$s3, $fp
	bgez	$a1, .LBB18_9
# %bb.7:                                # %._crit_edge.thread
	ld.d	$a0, $s2, 24
	beq	$fp, $a0, .LBB18_14
.LBB18_8:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	move	$s3, $a0
.LBB18_9:
	ld.d	$s2, $s3, 40
	sltu	$a0, $s0, $s2
	masknez	$a1, $s2, $a0
	maskeqz	$a0, $s0, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB18_11
# %bb.10:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i15
	ld.d	$a0, $s3, 32
	move	$a1, $s1
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB18_12
.LBB18_11:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i18
	sub.d	$a0, $s2, $s0
	slt	$a1, $s5, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s5, $a1
	or	$a0, $a0, $a1
	ori	$a1, $s4, 4095
	slt	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$a0, $a0, $a1
.LBB18_12:                              # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit22
	addi.w	$a0, $a0, 0
	slti	$a1, $a0, 0
	srai.d	$a0, $a0, 63
	and	$fp, $a0, $fp
	masknez	$a0, $s3, $a1
	b	.LBB18_15
.LBB18_13:
	addi.d	$fp, $s2, 8
	ld.d	$a0, $s2, 24
	bne	$fp, $a0, .LBB18_8
.LBB18_14:
	move	$a0, $zero
.LBB18_15:
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
.Lfunc_end18:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN9benchmark12ComputeStatsERKSt6vectorINS8_17BenchmarkReporter3RunESaISB_EEE11CounterStatESt10_Select1stISH_ESt4lessIS5_ESaISH_EE24_M_get_insert_unique_posERS7_, .Lfunc_end18-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZN9benchmark12ComputeStatsERKSt6vectorINS8_17BenchmarkReporter3RunESaISB_EEE11CounterStatESt10_Select1stISH_ESt4lessIS5_ESaISH_EE24_M_get_insert_unique_posERS7_
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
	beq	$a0, $a1, .LBB19_4
# %bb.1:
	move	$fp, $a1
	ld.d	$s5, $s0, 8
	ld.d	$s6, $a1, 40
	sltu	$a0, $s6, $s5
	masknez	$a1, $s5, $a0
	maskeqz	$a0, $s6, $a0
	or	$s2, $a0, $a1
	beqz	$s2, .LBB19_10
# %bb.2:                                # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i21
	ld.d	$s3, $fp, 32
	ld.d	$s4, $s0, 0
	move	$a0, $s4
	move	$a1, $s3
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB19_11
# %bb.3:                                # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit28.thread
	bgez	$a0, .LBB19_12
	b	.LBB19_15
.LBB19_4:
	ld.d	$a0, $s1, 40
	beqz	$a0, .LBB19_27
# %bb.5:
	ld.d	$a1, $s1, 32
	ld.d	$fp, $a1, 40
	ld.d	$s2, $s0, 8
	sltu	$a0, $s2, $fp
	masknez	$a2, $fp, $a0
	maskeqz	$a0, $s2, $a0
	or	$a2, $a0, $a2
	beqz	$a2, .LBB19_7
# %bb.6:                                # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i
	ld.d	$a3, $s0, 0
	ld.d	$a0, $a1, 32
	move	$s3, $a1
	move	$a1, $a3
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	move	$a1, $s3
	bnez	$a0, .LBB19_8
.LBB19_7:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
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
.LBB19_8:                               # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
	addi.w	$a0, $a0, 0
	bgez	$a0, .LBB19_27
# %bb.9:
	move	$fp, $zero
	b	.LBB19_28
.LBB19_10:                              # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit28
	sub.d	$a0, $s5, $s6
	bgez	$a0, .LBB19_21
	b	.LBB19_15
.LBB19_11:                              # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit28.thread78
	sub.d	$a0, $s5, $s6
	bltz	$a0, .LBB19_15
.LBB19_12:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i39
	move	$a0, $s3
	move	$a1, $s4
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB19_21
# %bb.13:                               # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit46
	addi.w	$a0, $a0, 0
	bltz	$a0, .LBB19_22
.LBB19_14:
	move	$a1, $zero
	b	.LBB19_28
.LBB19_15:
	ld.d	$a0, $s1, 24
	beq	$a0, $fp, .LBB19_29
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
	beqz	$a2, .LBB19_18
# %bb.17:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i30
	ld.d	$a1, $s0, 0
	ld.d	$a0, $s2, 32
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB19_19
.LBB19_18:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i33
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
.LBB19_19:                              # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit37
	addi.w	$a0, $a0, 0
	bgez	$a0, .LBB19_27
# %bb.20:
	ld.d	$a0, $s2, 24
	sltui	$a0, $a0, 1
	masknez	$fp, $fp, $a0
	maskeqz	$a0, $s2, $a0
	or	$a1, $a0, $fp
	b	.LBB19_28
.LBB19_21:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i42
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
	bgez	$a0, .LBB19_14
.LBB19_22:
	ld.d	$a0, $s1, 32
	beq	$a0, $fp, .LBB19_30
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
	beqz	$a2, .LBB19_25
# %bb.24:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i48
	ld.d	$a1, $s2, 32
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB19_26
.LBB19_25:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i51
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
.LBB19_26:                              # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit55
	addi.w	$a0, $a0, 0
	bltz	$a0, .LBB19_31
.LBB19_27:
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_)
	jirl	$ra, $ra, 0
	move	$fp, $a0
.LBB19_28:
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
.LBB19_29:
	move	$a1, $fp
	b	.LBB19_28
.LBB19_30:
	move	$a1, $fp
	move	$fp, $zero
	b	.LBB19_28
.LBB19_31:
	ld.d	$a0, $fp, 24
	sltui	$a0, $a0, 1
	maskeqz	$a1, $fp, $a0
	masknez	$fp, $s2, $a0
	or	$a1, $a1, $fp
	b	.LBB19_28
.Lfunc_end19:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_, .Lfunc_end19-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeD2Ev,"axG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeD2Ev,comdat
	.hidden	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeD2Ev # -- Begin function _ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeD2Ev
	.weak	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeD2Ev
	.p2align	5
	.type	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeD2Ev,@function
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeD2Ev: # @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeD2Ev
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	ld.d	$fp, $a0, 8
	beqz	$fp, .LBB20_4
# %bb.1:
	ld.d	$a0, $fp, 32
	addi.d	$a1, $fp, 48
	beq	$a0, $a1, .LBB20_3
# %bb.2:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB20_3:                               # %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit
	ori	$a1, $zero, 80
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB20_4:
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end20:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeD2Ev, .Lfunc_end20-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeD2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEEvPSt13_Rb_tree_nodeISA_EDpOT_,"axG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEEvPSt13_Rb_tree_nodeISA_EDpOT_,comdat
	.hidden	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEEvPSt13_Rb_tree_nodeISA_EDpOT_ # -- Begin function _ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEEvPSt13_Rb_tree_nodeISA_EDpOT_
	.weak	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEEvPSt13_Rb_tree_nodeISA_EDpOT_
	.p2align	5
	.type	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEEvPSt13_Rb_tree_nodeISA_EDpOT_,@function
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEEvPSt13_Rb_tree_nodeISA_EDpOT_: # @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEEvPSt13_Rb_tree_nodeISA_EDpOT_
.Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception7
# %bb.0:
	addi.d	$sp, $sp, -64
	.cfi_def_cfa_offset 64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	ld.d	$a0, $a3, 0
	move	$fp, $a1
	addi.d	$s0, $a1, 48
	st.d	$s0, $a1, 32
	ld.d	$s1, $a0, 8
	ld.d	$s2, $a0, 0
	ori	$a0, $zero, 16
	st.d	$s1, $sp, 8
	bltu	$s1, $a0, .LBB21_3
# %bb.1:                                # %.noexc.i.i.i
.Ltmp119:                               # EH_LABEL
	addi.d	$s3, $fp, 32
	addi.d	$a1, $sp, 8
	move	$a0, $s3
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp120:                               # EH_LABEL
# %bb.2:                                # %.noexc
	ld.d	$a1, $sp, 8
	st.d	$a0, $s3, 0
	st.d	$a1, $s0, 0
	move	$s0, $a0
.LBB21_3:                               # %._crit_edge.i.i.i.i
	beqz	$s1, .LBB21_7
# %bb.4:                                # %._crit_edge.i.i.i.i
	ori	$a0, $zero, 1
	bne	$s1, $a0, .LBB21_6
# %bb.5:
	ld.b	$a0, $s2, 0
	st.b	$a0, $s0, 0
	b	.LBB21_7
.LBB21_6:
	move	$a0, $s0
	move	$a1, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB21_7:
	ld.d	$a0, $sp, 8
	ld.d	$a1, $fp, 32
	st.d	$a0, $fp, 40
	stx.b	$zero, $a1, $a0
	st.d	$zero, $fp, 64
	ori	$a0, $zero, 0
	lu32i.d	$a0, 1000
	st.d	$a0, $fp, 72
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB21_8:
.Ltmp121:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_begin_catch)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 80
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.Ltmp122:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_rethrow)
	jirl	$ra, $ra, 0
.Ltmp123:                               # EH_LABEL
# %bb.9:
.LBB21_10:
.Ltmp124:                               # EH_LABEL
	move	$fp, $a0
.Ltmp125:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_end_catch)
	jirl	$ra, $ra, 0
.Ltmp126:                               # EH_LABEL
# %bb.11:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB21_12:
.Ltmp127:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end21:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEEvPSt13_Rb_tree_nodeISA_EDpOT_, .Lfunc_end21-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEEvPSt13_Rb_tree_nodeISA_EDpOT_
	.cfi_endproc
	.section	.gcc_except_table._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEEvPSt13_Rb_tree_nodeISA_EDpOT_,"aG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEEvPSt13_Rb_tree_nodeISA_EDpOT_,comdat
	.p2align	2, 0x0
GCC_except_table21:
.Lexception7:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase5-.Lttbaseref5
.Lttbaseref5:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end7-.Lcst_begin7
.Lcst_begin7:
	.uleb128 .Ltmp119-.Lfunc_begin7         # >> Call Site 1 <<
	.uleb128 .Ltmp120-.Ltmp119              #   Call between .Ltmp119 and .Ltmp120
	.uleb128 .Ltmp121-.Lfunc_begin7         #     jumps to .Ltmp121
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp120-.Lfunc_begin7         # >> Call Site 2 <<
	.uleb128 .Ltmp122-.Ltmp120              #   Call between .Ltmp120 and .Ltmp122
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp122-.Lfunc_begin7         # >> Call Site 3 <<
	.uleb128 .Ltmp123-.Ltmp122              #   Call between .Ltmp122 and .Ltmp123
	.uleb128 .Ltmp124-.Lfunc_begin7         #     jumps to .Ltmp124
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp125-.Lfunc_begin7         # >> Call Site 4 <<
	.uleb128 .Ltmp126-.Ltmp125              #   Call between .Ltmp125 and .Ltmp126
	.uleb128 .Ltmp127-.Lfunc_begin7         #     jumps to .Ltmp127
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp126-.Lfunc_begin7         # >> Call Site 5 <<
	.uleb128 .Lfunc_end21-.Ltmp126          #   Call between .Ltmp126 and .Lfunc_end21
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end7:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase5:
	.p2align	2, 0x0
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
	beqz	$a0, .LBB22_13
# %bb.1:                                # %.lr.ph
	ld.d	$s5, $s0, 8
	ld.d	$s2, $s0, 0
	ori	$s6, $s3, 4095
	ori	$s7, $zero, 24
	ori	$s8, $zero, 16
	b	.LBB22_4
	.p2align	4, , 16
.LBB22_2:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
                                        #   in Loop: Header=BB22_4 Depth=1
	sub.d	$a0, $s5, $s3
	slt	$a1, $s4, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s4, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $s6
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s6, $a1
	or	$a0, $a0, $a1
.LBB22_3:                               # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
                                        #   in Loop: Header=BB22_4 Depth=1
	addi.w	$a1, $a0, 0
	slti	$a0, $a1, 0
	masknez	$a2, $s7, $a0
	maskeqz	$a0, $s8, $a0
	or	$a0, $a0, $a2
	ldx.d	$a0, $fp, $a0
	beqz	$a0, .LBB22_6
.LBB22_4:                               # =>This Inner Loop Header: Depth=1
	move	$fp, $a0
	ld.d	$s3, $a0, 40
	sltu	$a0, $s3, $s5
	masknez	$a1, $s5, $a0
	maskeqz	$a0, $s3, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB22_2
# %bb.5:                                # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i
                                        #   in Loop: Header=BB22_4 Depth=1
	ld.d	$a1, $fp, 32
	move	$a0, $s2
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB22_3
	b	.LBB22_2
.LBB22_6:                               # %._crit_edge
	move	$s2, $fp
	lu12i.w	$s3, 524287
	bgez	$a1, .LBB22_9
# %bb.7:                                # %._crit_edge.thread
	ld.d	$a0, $s1, 24
	beq	$fp, $a0, .LBB22_14
.LBB22_8:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base)
	jirl	$ra, $ra, 0
	move	$s2, $a0
.LBB22_9:
	ld.d	$s1, $s2, 40
	ld.d	$s5, $s0, 8
	sltu	$a0, $s5, $s1
	masknez	$a1, $s1, $a0
	maskeqz	$a0, $s5, $a0
	or	$a2, $a0, $a1
	beqz	$a2, .LBB22_11
# %bb.10:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6
	ld.d	$a1, $s0, 0
	ld.d	$a0, $s2, 32
	pcaddu18i	$ra, %call36(memcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB22_12
.LBB22_11:                              # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9
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
.LBB22_12:                              # %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13
	addi.w	$a0, $a0, 0
	slti	$a1, $a0, 0
	srai.d	$a0, $a0, 63
	and	$fp, $a0, $fp
	masknez	$a0, $s2, $a1
	b	.LBB22_15
.LBB22_13:
	addi.d	$fp, $s1, 8
	ld.d	$a0, $s1, 24
	bne	$fp, $a0, .LBB22_8
.LBB22_14:
	move	$a0, $zero
.LBB22_15:
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
.Lfunc_end22:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_, .Lfunc_end22-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EE17_M_realloc_appendIJRKS2_EEEvDpOT_,"axG",@progbits,_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EE17_M_realloc_appendIJRKS2_EEEvDpOT_,comdat
	.hidden	_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EE17_M_realloc_appendIJRKS2_EEEvDpOT_ # -- Begin function _ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EE17_M_realloc_appendIJRKS2_EEEvDpOT_
	.weak	_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EE17_M_realloc_appendIJRKS2_EEEvDpOT_
	.p2align	5
	.type	_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EE17_M_realloc_appendIJRKS2_EEEvDpOT_,@function
_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EE17_M_realloc_appendIJRKS2_EEEvDpOT_: # @_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EE17_M_realloc_appendIJRKS2_EEEvDpOT_
.Lfunc_begin8:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception8
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
	move	$fp, $a0
	ld.d	$s1, $a0, 8
	ld.d	$s0, $a0, 0
	sub.d	$s6, $s1, $s0
	addi.w	$a0, $zero, -288
	lu52i.d	$a0, $a0, 2047
	beq	$s6, $a0, .LBB23_5
# %bb.1:                                # %_ZNSt12_Vector_baseIN9benchmark17BenchmarkReporter3RunESaIS2_EE11_M_allocateEm.exit
	move	$s2, $a1
	srai.d	$a0, $s6, 4
	lu12i.w	$a1, -479350
	ori	$a1, $a1, 3979
	lu32i.d	$a1, -329553
	lu52i.d	$a1, $a1, -1288
	mul.d	$a0, $a0, $a1
	ori	$a1, $zero, 1
	sltu	$a2, $a1, $a0
	maskeqz	$a3, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$a1, $a3, $a1
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	lu12i.w	$a2, 239674
	ori	$a2, $a2, 2106
	bstrins.d	$a2, $a2, 53, 24
	sltu	$a3, $a0, $a2
	maskeqz	$a0, $a0, $a3
	masknez	$a3, $a2, $a3
	or	$a0, $a0, $a3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$s5, $a1, $a0
	ori	$a0, $zero, 560
	mul.d	$s4, $s5, $a0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	add.d	$a0, $a0, $s6
.Ltmp128:                               # EH_LABEL
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZN9benchmark17BenchmarkReporter3RunC2ERKS1_)
	jirl	$ra, $ra, 0
.Ltmp129:                               # EH_LABEL
# %bb.2:                                # %_ZNSt16allocator_traitsISaIN9benchmark17BenchmarkReporter3RunEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_.exit
	move	$a0, $s0
	move	$a1, $s1
	move	$a2, $s3
	move	$a3, $fp
	pcaddu18i	$ra, %call36(_ZSt14__relocate_a_1IPN9benchmark17BenchmarkReporter3RunES3_SaIS2_EET0_T_S6_S5_RT1_)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	beqz	$s0, .LBB23_4
# %bb.3:
	ld.d	$a0, $fp, 16
	sub.d	$a1, $a0, $s0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB23_4:                               # %_ZZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EE17_M_realloc_appendIJRKS2_EEEvDpOT_EN6_GuardD2Ev.exit
	addi.d	$a0, $s1, 560
	st.d	$s3, $fp, 0
	st.d	$a0, $fp, 8
	ori	$a0, $zero, 560
	mul.d	$a0, $s5, $a0
	add.d	$a0, $s3, $a0
	st.d	$a0, $fp, 16
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
.LBB23_5:
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.LBB23_6:                               # %_ZZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EE17_M_realloc_appendIJRKS2_EEEvDpOT_EN6_GuardD2Ev.exit22
.Ltmp130:                               # EH_LABEL
	move	$fp, $a0
	move	$a0, $s3
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end23:
	.size	_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EE17_M_realloc_appendIJRKS2_EEEvDpOT_, .Lfunc_end23-_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EE17_M_realloc_appendIJRKS2_EEEvDpOT_
	.cfi_endproc
	.section	.gcc_except_table._ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EE17_M_realloc_appendIJRKS2_EEEvDpOT_,"aG",@progbits,_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EE17_M_realloc_appendIJRKS2_EEEvDpOT_,comdat
	.p2align	2, 0x0
GCC_except_table23:
.Lexception8:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end8-.Lcst_begin8
.Lcst_begin8:
	.uleb128 .Lfunc_begin8-.Lfunc_begin8    # >> Call Site 1 <<
	.uleb128 .Ltmp128-.Lfunc_begin8         #   Call between .Lfunc_begin8 and .Ltmp128
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp128-.Lfunc_begin8         # >> Call Site 2 <<
	.uleb128 .Ltmp129-.Ltmp128              #   Call between .Ltmp128 and .Ltmp129
	.uleb128 .Ltmp130-.Lfunc_begin8         #     jumps to .Ltmp130
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp129-.Lfunc_begin8         # >> Call Site 3 <<
	.uleb128 .Lfunc_end23-.Ltmp129          #   Call between .Ltmp129 and .Lfunc_end23
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end8:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN9benchmark17BenchmarkReporter3RunC2ERKS1_,"axG",@progbits,_ZN9benchmark17BenchmarkReporter3RunC2ERKS1_,comdat
	.hidden	_ZN9benchmark17BenchmarkReporter3RunC2ERKS1_ # -- Begin function _ZN9benchmark17BenchmarkReporter3RunC2ERKS1_
	.weak	_ZN9benchmark17BenchmarkReporter3RunC2ERKS1_
	.p2align	5
	.type	_ZN9benchmark17BenchmarkReporter3RunC2ERKS1_,@function
_ZN9benchmark17BenchmarkReporter3RunC2ERKS1_: # @_ZN9benchmark17BenchmarkReporter3RunC2ERKS1_
.Lfunc_begin9:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception9
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
	move	$s1, $a1
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_ZN9benchmark13BenchmarkNameC2ERKS0_)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 272
	st.w	$a0, $fp, 272
	vld	$vr0, $s1, 256
	vst	$vr0, $fp, 256
	addi.d	$s6, $fp, 296
	st.d	$s6, $fp, 280
	ld.d	$s2, $s1, 288
	ld.d	$s3, $s1, 280
	addi.d	$s0, $fp, 280
	ori	$a1, $zero, 16
	st.d	$s2, $sp, 16
	move	$a0, $s6
	bltu	$s2, $a1, .LBB24_3
# %bb.1:                                # %.noexc.i
.Ltmp131:                               # EH_LABEL
	addi.d	$a1, $sp, 16
	move	$a0, $s0
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp132:                               # EH_LABEL
# %bb.2:                                # %.noexc
	ld.d	$a1, $sp, 16
	st.d	$a0, $s0, 0
	st.d	$a1, $s6, 0
.LBB24_3:                               # %._crit_edge.i.i
	beqz	$s2, .LBB24_7
# %bb.4:                                # %._crit_edge.i.i
	ori	$a1, $zero, 1
	bne	$s2, $a1, .LBB24_6
# %bb.5:
	ld.b	$a1, $s3, 0
	st.b	$a1, $a0, 0
	b	.LBB24_7
.LBB24_6:
	move	$a1, $s3
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB24_7:
	ld.d	$a0, $sp, 16
	ld.d	$a1, $fp, 280
	st.d	$a0, $fp, 288
	stx.b	$zero, $a1, $a0
	ld.w	$a0, $s1, 312
	st.w	$a0, $fp, 312
	addi.d	$s7, $fp, 336
	st.d	$s7, $fp, 320
	ld.d	$s3, $s1, 328
	ld.d	$s4, $s1, 320
	addi.d	$s2, $fp, 320
	ori	$a1, $zero, 16
	st.d	$s3, $sp, 16
	move	$a0, $s7
	bltu	$s3, $a1, .LBB24_10
# %bb.8:                                # %.noexc.i19
.Ltmp134:                               # EH_LABEL
	addi.d	$a1, $sp, 16
	move	$a0, $s2
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp135:                               # EH_LABEL
# %bb.9:                                # %.noexc20
	ld.d	$a1, $sp, 16
	st.d	$a0, $s2, 0
	st.d	$a1, $s7, 0
.LBB24_10:                              # %._crit_edge.i.i18
	beqz	$s3, .LBB24_14
# %bb.11:                               # %._crit_edge.i.i18
	ori	$a1, $zero, 1
	bne	$s3, $a1, .LBB24_13
# %bb.12:
	ld.b	$a1, $s4, 0
	st.b	$a1, $a0, 0
	b	.LBB24_14
.LBB24_13:
	move	$a1, $s4
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB24_14:
	ld.d	$a0, $sp, 16
	ld.d	$a1, $fp, 320
	st.d	$a0, $fp, 328
	stx.b	$zero, $a1, $a0
	ld.w	$a0, $s1, 352
	st.w	$a0, $fp, 352
	addi.d	$s8, $fp, 376
	st.d	$s8, $fp, 360
	ld.d	$s4, $s1, 368
	ld.d	$s5, $s1, 360
	addi.d	$s3, $fp, 360
	ori	$a1, $zero, 16
	st.d	$s4, $sp, 16
	move	$a0, $s8
	bltu	$s4, $a1, .LBB24_17
# %bb.15:                               # %.noexc.i23
.Ltmp137:                               # EH_LABEL
	addi.d	$a1, $sp, 16
	move	$a0, $s3
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp138:                               # EH_LABEL
# %bb.16:                               # %.noexc24
	ld.d	$a1, $sp, 16
	st.d	$a0, $s3, 0
	st.d	$a1, $s8, 0
.LBB24_17:                              # %._crit_edge.i.i22
	beqz	$s4, .LBB24_21
# %bb.18:                               # %._crit_edge.i.i22
	ori	$a1, $zero, 1
	bne	$s4, $a1, .LBB24_20
# %bb.19:
	ld.b	$a1, $s5, 0
	st.b	$a1, $a0, 0
	b	.LBB24_21
.LBB24_20:
	move	$a1, $s5
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB24_21:
	ld.d	$a0, $sp, 16
	ld.d	$a1, $fp, 360
	st.d	$a0, $fp, 368
	stx.b	$zero, $a1, $a0
	addi.d	$a0, $fp, 392
	addi.d	$a1, $s1, 392
	ori	$a2, $zero, 98
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	addi.d	$a2, $fp, 504
	st.w	$zero, $fp, 504
	st.d	$zero, $fp, 512
	st.d	$a2, $fp, 520
	st.d	$a2, $fp, 528
	st.d	$zero, $fp, 536
	ld.d	$a1, $s1, 512
	beqz	$a1, .LBB24_28
# %bb.22:
	addi.d	$a0, $fp, 496
	st.d	$a0, $sp, 16
.Ltmp140:                               # EH_LABEL
	addi.d	$a3, $sp, 16
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_)
	jirl	$ra, $ra, 0
.Ltmp141:                               # EH_LABEL
# %bb.23:                               # %.noexc.i.i.preheader
	move	$a2, $a0
	.p2align	4, , 16
.LBB24_24:                              # %.noexc.i.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a1, $a2
	ld.d	$a2, $a2, 16
	bnez	$a2, .LBB24_24
# %bb.25:                               # %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i
	st.d	$a1, $fp, 520
	move	$a2, $a0
	.p2align	4, , 16
.LBB24_26:                              # =>This Inner Loop Header: Depth=1
	move	$a1, $a2
	ld.d	$a2, $a2, 24
	bnez	$a2, .LBB24_26
# %bb.27:
	st.d	$a1, $fp, 528
	ld.d	$a1, $s1, 536
	st.d	$a1, $fp, 536
	st.d	$a0, $fp, 512
.LBB24_28:                              # %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEEC2ERKSE_.exit
	vld	$vr0, $s1, 544
	vst	$vr0, $fp, 544
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
.LBB24_29:
.Ltmp139:                               # EH_LABEL
	move	$s1, $a0
	ld.d	$a0, $s2, 0
	beq	$a0, $s7, .LBB24_34
	b	.LBB24_37
.LBB24_30:
.Ltmp136:                               # EH_LABEL
	move	$s1, $a0
	ld.d	$a0, $s0, 0
	beq	$a0, $s6, .LBB24_35
	b	.LBB24_38
.LBB24_31:
.Ltmp133:                               # EH_LABEL
	move	$s1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark13BenchmarkNameD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB24_32:
.Ltmp142:                               # EH_LABEL
	ld.d	$a2, $s3, 0
	move	$s1, $a0
	bne	$a2, $s8, .LBB24_36
# %bb.33:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$a0, $s2, 0
	bne	$a0, $s7, .LBB24_37
.LBB24_34:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29
	ld.d	$a0, $s0, 0
	bne	$a0, $s6, .LBB24_38
.LBB24_35:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark13BenchmarkNameD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB24_36:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a0, $s8, 0
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	beq	$a0, $s7, .LBB24_34
.LBB24_37:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27
	ld.d	$a1, $s7, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	beq	$a0, $s6, .LBB24_35
.LBB24_38:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30
	ld.d	$a1, $s6, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark13BenchmarkNameD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end24:
	.size	_ZN9benchmark17BenchmarkReporter3RunC2ERKS1_, .Lfunc_end24-_ZN9benchmark17BenchmarkReporter3RunC2ERKS1_
	.cfi_endproc
	.section	.gcc_except_table._ZN9benchmark17BenchmarkReporter3RunC2ERKS1_,"aG",@progbits,_ZN9benchmark17BenchmarkReporter3RunC2ERKS1_,comdat
	.p2align	2, 0x0
GCC_except_table24:
.Lexception9:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end9-.Lcst_begin9
.Lcst_begin9:
	.uleb128 .Lfunc_begin9-.Lfunc_begin9    # >> Call Site 1 <<
	.uleb128 .Ltmp131-.Lfunc_begin9         #   Call between .Lfunc_begin9 and .Ltmp131
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp131-.Lfunc_begin9         # >> Call Site 2 <<
	.uleb128 .Ltmp132-.Ltmp131              #   Call between .Ltmp131 and .Ltmp132
	.uleb128 .Ltmp133-.Lfunc_begin9         #     jumps to .Ltmp133
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp132-.Lfunc_begin9         # >> Call Site 3 <<
	.uleb128 .Ltmp134-.Ltmp132              #   Call between .Ltmp132 and .Ltmp134
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp134-.Lfunc_begin9         # >> Call Site 4 <<
	.uleb128 .Ltmp135-.Ltmp134              #   Call between .Ltmp134 and .Ltmp135
	.uleb128 .Ltmp136-.Lfunc_begin9         #     jumps to .Ltmp136
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp135-.Lfunc_begin9         # >> Call Site 5 <<
	.uleb128 .Ltmp137-.Ltmp135              #   Call between .Ltmp135 and .Ltmp137
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp137-.Lfunc_begin9         # >> Call Site 6 <<
	.uleb128 .Ltmp138-.Ltmp137              #   Call between .Ltmp137 and .Ltmp138
	.uleb128 .Ltmp139-.Lfunc_begin9         #     jumps to .Ltmp139
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp138-.Lfunc_begin9         # >> Call Site 7 <<
	.uleb128 .Ltmp140-.Ltmp138              #   Call between .Ltmp138 and .Ltmp140
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp140-.Lfunc_begin9         # >> Call Site 8 <<
	.uleb128 .Ltmp141-.Ltmp140              #   Call between .Ltmp140 and .Ltmp141
	.uleb128 .Ltmp142-.Lfunc_begin9         #     jumps to .Ltmp142
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp141-.Lfunc_begin9         # >> Call Site 9 <<
	.uleb128 .Lfunc_end24-.Ltmp141          #   Call between .Ltmp141 and .Lfunc_end24
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end9:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN9benchmark13BenchmarkNameC2ERKS0_,"axG",@progbits,_ZN9benchmark13BenchmarkNameC2ERKS0_,comdat
	.hidden	_ZN9benchmark13BenchmarkNameC2ERKS0_ # -- Begin function _ZN9benchmark13BenchmarkNameC2ERKS0_
	.weak	_ZN9benchmark13BenchmarkNameC2ERKS0_
	.p2align	5
	.type	_ZN9benchmark13BenchmarkNameC2ERKS0_,@function
_ZN9benchmark13BenchmarkNameC2ERKS0_:   # @_ZN9benchmark13BenchmarkNameC2ERKS0_
.Lfunc_begin10:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception10
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
	move	$s1, $a1
	move	$fp, $a0
	addi.d	$a0, $a0, 16
	st.d	$a0, $fp, 0
	ld.d	$s0, $a1, 8
	ld.d	$s2, $a1, 0
	ori	$a1, $zero, 16
	st.d	$s0, $sp, 80
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	bltu	$s0, $a1, .LBB25_2
# %bb.1:                                # %.noexc.i
	addi.d	$a1, $sp, 80
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 80
	st.d	$a0, $fp, 0
	st.d	$a1, $fp, 16
.LBB25_2:                               # %._crit_edge.i.i
	beqz	$s0, .LBB25_6
# %bb.3:                                # %._crit_edge.i.i
	ori	$a1, $zero, 1
	bne	$s0, $a1, .LBB25_5
# %bb.4:
	ld.b	$a1, $s2, 0
	st.b	$a1, $a0, 0
	b	.LBB25_6
.LBB25_5:
	move	$a1, $s2
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB25_6:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
	ld.d	$a0, $sp, 80
	ld.d	$a1, $fp, 0
	st.d	$a0, $fp, 8
	stx.b	$zero, $a1, $a0
	addi.d	$s0, $fp, 48
	st.d	$s0, $fp, 32
	ld.d	$s2, $s1, 40
	ld.d	$s3, $s1, 32
	addi.d	$s6, $fp, 32
	ori	$a1, $zero, 16
	st.d	$s2, $sp, 80
	move	$a0, $s0
	bltu	$s2, $a1, .LBB25_9
# %bb.7:                                # %.noexc.i23
.Ltmp143:                               # EH_LABEL
	addi.d	$a1, $sp, 80
	move	$a0, $s6
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp144:                               # EH_LABEL
# %bb.8:                                # %.noexc
	ld.d	$a1, $sp, 80
	st.d	$a0, $s6, 0
	st.d	$a1, $s0, 0
.LBB25_9:                               # %._crit_edge.i.i22
	beqz	$s2, .LBB25_13
# %bb.10:                               # %._crit_edge.i.i22
	ori	$a1, $zero, 1
	bne	$s2, $a1, .LBB25_12
# %bb.11:
	ld.b	$a1, $s3, 0
	st.b	$a1, $a0, 0
	b	.LBB25_13
.LBB25_12:
	move	$a1, $s3
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB25_13:
	ld.d	$a0, $sp, 80
	ld.d	$a1, $fp, 32
	st.d	$a0, $fp, 40
	stx.b	$zero, $a1, $a0
	addi.d	$s2, $fp, 80
	st.d	$s2, $fp, 64
	ld.d	$s3, $s1, 72
	ld.d	$s4, $s1, 64
	addi.d	$s7, $fp, 64
	ori	$a1, $zero, 16
	st.d	$s3, $sp, 80
	move	$a0, $s2
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	bltu	$s3, $a1, .LBB25_16
# %bb.14:                               # %.noexc.i26
.Ltmp146:                               # EH_LABEL
	addi.d	$a1, $sp, 80
	move	$a0, $s7
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp147:                               # EH_LABEL
# %bb.15:                               # %.noexc27
	ld.d	$a1, $sp, 80
	st.d	$a0, $s7, 0
	st.d	$a1, $s2, 0
.LBB25_16:                              # %._crit_edge.i.i25
	beqz	$s3, .LBB25_20
# %bb.17:                               # %._crit_edge.i.i25
	ori	$a1, $zero, 1
	bne	$s3, $a1, .LBB25_19
# %bb.18:
	ld.b	$a1, $s4, 0
	st.b	$a1, $a0, 0
	b	.LBB25_20
.LBB25_19:
	move	$a1, $s4
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB25_20:
	ld.d	$a0, $sp, 80
	ld.d	$a1, $fp, 64
	st.d	$a0, $fp, 72
	stx.b	$zero, $a1, $a0
	addi.d	$s3, $fp, 112
	st.d	$s3, $fp, 96
	ld.d	$s4, $s1, 104
	ld.d	$s5, $s1, 96
	addi.d	$s8, $fp, 96
	ori	$a1, $zero, 16
	st.d	$s4, $sp, 80
	move	$a0, $s3
	st.d	$s2, $sp, 48                    # 8-byte Folded Spill
	st.d	$s7, $sp, 32                    # 8-byte Folded Spill
	bltu	$s4, $a1, .LBB25_23
# %bb.21:                               # %.noexc.i30
.Ltmp149:                               # EH_LABEL
	addi.d	$a1, $sp, 80
	move	$a0, $s8
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp150:                               # EH_LABEL
# %bb.22:                               # %.noexc31
	ld.d	$a1, $sp, 80
	st.d	$a0, $s8, 0
	st.d	$a1, $s3, 0
.LBB25_23:                              # %._crit_edge.i.i29
	beqz	$s4, .LBB25_27
# %bb.24:                               # %._crit_edge.i.i29
	ori	$a1, $zero, 1
	bne	$s4, $a1, .LBB25_26
# %bb.25:
	ld.b	$a1, $s5, 0
	st.b	$a1, $a0, 0
	b	.LBB25_27
.LBB25_26:
	move	$a1, $s5
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB25_27:
	ld.d	$a0, $sp, 80
	ld.d	$a1, $fp, 96
	st.d	$a0, $fp, 104
	stx.b	$zero, $a1, $a0
	addi.d	$s4, $fp, 144
	st.d	$s4, $fp, 128
	ld.d	$s5, $s1, 136
	ld.d	$s6, $s1, 128
	addi.d	$a0, $fp, 128
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ori	$a1, $zero, 16
	st.d	$s5, $sp, 80
	move	$a0, $s4
	st.d	$s3, $sp, 24                    # 8-byte Folded Spill
	st.d	$s8, $sp, 16                    # 8-byte Folded Spill
	bltu	$s5, $a1, .LBB25_30
# %bb.28:                               # %.noexc.i34
.Ltmp152:                               # EH_LABEL
	addi.d	$a1, $sp, 80
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	move	$a0, $s0
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp153:                               # EH_LABEL
# %bb.29:                               # %.noexc35
	ld.d	$a1, $sp, 80
	st.d	$a0, $s0, 0
	st.d	$a1, $s4, 0
.LBB25_30:                              # %._crit_edge.i.i33
	beqz	$s5, .LBB25_34
# %bb.31:                               # %._crit_edge.i.i33
	ori	$a1, $zero, 1
	bne	$s5, $a1, .LBB25_33
# %bb.32:
	ld.b	$a1, $s6, 0
	st.b	$a1, $a0, 0
	b	.LBB25_34
.LBB25_33:
	move	$a1, $s6
	move	$a2, $s5
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB25_34:
	ld.d	$a0, $sp, 80
	ld.d	$a1, $fp, 128
	st.d	$a0, $fp, 136
	stx.b	$zero, $a1, $a0
	addi.d	$s2, $fp, 176
	st.d	$s2, $fp, 160
	ld.d	$s6, $s1, 168
	ld.d	$s7, $s1, 160
	addi.d	$s5, $fp, 160
	ori	$a1, $zero, 16
	st.d	$s6, $sp, 80
	move	$a0, $s2
	bltu	$s6, $a1, .LBB25_37
# %bb.35:                               # %.noexc.i38
.Ltmp155:                               # EH_LABEL
	addi.d	$a1, $sp, 80
	move	$a0, $s5
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp156:                               # EH_LABEL
# %bb.36:                               # %.noexc39
	ld.d	$a1, $sp, 80
	st.d	$a0, $s5, 0
	st.d	$a1, $s2, 0
.LBB25_37:                              # %._crit_edge.i.i37
	beqz	$s6, .LBB25_41
# %bb.38:                               # %._crit_edge.i.i37
	ori	$a1, $zero, 1
	bne	$s6, $a1, .LBB25_40
# %bb.39:
	ld.b	$a1, $s7, 0
	st.b	$a1, $a0, 0
	b	.LBB25_41
.LBB25_40:
	move	$a1, $s7
	move	$a2, $s6
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB25_41:
	ld.d	$a0, $sp, 80
	ld.d	$a1, $fp, 160
	st.d	$a0, $fp, 168
	stx.b	$zero, $a1, $a0
	addi.d	$s3, $fp, 208
	st.d	$s3, $fp, 192
	ld.d	$s7, $s1, 200
	ld.d	$s8, $s1, 192
	addi.d	$s6, $fp, 192
	ori	$a1, $zero, 16
	st.d	$s7, $sp, 80
	move	$a0, $s3
	bltu	$s7, $a1, .LBB25_44
# %bb.42:                               # %.noexc.i42
.Ltmp158:                               # EH_LABEL
	addi.d	$a1, $sp, 80
	move	$a0, $s6
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp159:                               # EH_LABEL
# %bb.43:                               # %.noexc43
	ld.d	$a1, $sp, 80
	st.d	$a0, $s6, 0
	st.d	$a1, $s3, 0
.LBB25_44:                              # %._crit_edge.i.i41
	beqz	$s7, .LBB25_48
# %bb.45:                               # %._crit_edge.i.i41
	ori	$a1, $zero, 1
	bne	$s7, $a1, .LBB25_47
# %bb.46:
	ld.b	$a1, $s8, 0
	st.b	$a1, $a0, 0
	b	.LBB25_48
.LBB25_47:
	move	$a1, $s8
	move	$a2, $s7
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB25_48:
	ld.d	$a0, $sp, 80
	ld.d	$a1, $fp, 192
	st.d	$a0, $fp, 200
	stx.b	$zero, $a1, $a0
	addi.d	$s7, $fp, 240
	st.d	$s7, $fp, 224
	ld.d	$s8, $s1, 232
	ld.d	$s1, $s1, 224
	ori	$a0, $zero, 16
	st.d	$s8, $sp, 80
	bltu	$s8, $a0, .LBB25_51
# %bb.49:                               # %.noexc.i46
.Ltmp161:                               # EH_LABEL
	addi.d	$s0, $fp, 224
	addi.d	$a1, $sp, 80
	move	$a0, $s0
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp162:                               # EH_LABEL
# %bb.50:                               # %.noexc47
	ld.d	$a1, $sp, 80
	st.d	$a0, $s0, 0
	st.d	$a1, $s7, 0
	move	$s7, $a0
.LBB25_51:                              # %._crit_edge.i.i45
	beqz	$s8, .LBB25_55
# %bb.52:                               # %._crit_edge.i.i45
	ori	$a0, $zero, 1
	bne	$s8, $a0, .LBB25_54
# %bb.53:
	ld.b	$a0, $s1, 0
	st.b	$a0, $s7, 0
	b	.LBB25_55
.LBB25_54:
	move	$a0, $s7
	move	$a1, $s1
	move	$a2, $s8
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB25_55:
	ld.d	$a0, $sp, 80
	ld.d	$a1, $fp, 224
	st.d	$a0, $fp, 232
	stx.b	$zero, $a1, $a0
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
.LBB25_56:
.Ltmp163:                               # EH_LABEL
	ld.d	$a2, $s6, 0
	move	$s1, $a0
	bne	$a2, $s3, .LBB25_64
# %bb.57:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$a0, $s5, 0
	bne	$a0, $s2, .LBB25_66
.LBB25_58:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	bne	$a0, $s4, .LBB25_68
.LBB25_59:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	bne	$a0, $a1, .LBB25_70
.LBB25_60:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	bne	$a0, $a1, .LBB25_72
.LBB25_61:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	bne	$a0, $a1, .LBB25_74
.LBB25_62:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63
	ld.d	$a0, $fp, 0
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	bne	$a0, $a1, .LBB25_76
.LBB25_63:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB25_64:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a0, $s3, 0
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 0
	beq	$a0, $s2, .LBB25_58
	b	.LBB25_66
.LBB25_65:
.Ltmp160:                               # EH_LABEL
	move	$s1, $a0
	ld.d	$a0, $s5, 0
	beq	$a0, $s2, .LBB25_58
.LBB25_66:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49
	ld.d	$a1, $s2, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	beq	$a0, $s4, .LBB25_59
	b	.LBB25_68
.LBB25_67:
.Ltmp157:                               # EH_LABEL
	move	$s1, $a0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	beq	$a0, $s4, .LBB25_59
.LBB25_68:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52
	ld.d	$a1, $s4, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	beq	$a0, $a1, .LBB25_60
	b	.LBB25_70
.LBB25_69:
.Ltmp154:                               # EH_LABEL
	move	$s1, $a0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	beq	$a0, $a1, .LBB25_60
.LBB25_70:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	beq	$a0, $a1, .LBB25_61
	b	.LBB25_72
.LBB25_71:
.Ltmp151:                               # EH_LABEL
	move	$s1, $a0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	beq	$a0, $a1, .LBB25_61
.LBB25_72:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	beq	$a0, $a1, .LBB25_62
	b	.LBB25_74
.LBB25_73:
.Ltmp148:                               # EH_LABEL
	move	$s1, $a0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	beq	$a0, $a1, .LBB25_62
.LBB25_74:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	beq	$a0, $a1, .LBB25_63
	b	.LBB25_76
.LBB25_75:
.Ltmp145:                               # EH_LABEL
	move	$s1, $a0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	beq	$a0, $a1, .LBB25_63
.LBB25_76:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end25:
	.size	_ZN9benchmark13BenchmarkNameC2ERKS0_, .Lfunc_end25-_ZN9benchmark13BenchmarkNameC2ERKS0_
	.cfi_endproc
	.section	.gcc_except_table._ZN9benchmark13BenchmarkNameC2ERKS0_,"aG",@progbits,_ZN9benchmark13BenchmarkNameC2ERKS0_,comdat
	.p2align	2, 0x0
GCC_except_table25:
.Lexception10:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end10-.Lcst_begin10
.Lcst_begin10:
	.uleb128 .Lfunc_begin10-.Lfunc_begin10  # >> Call Site 1 <<
	.uleb128 .Ltmp143-.Lfunc_begin10        #   Call between .Lfunc_begin10 and .Ltmp143
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp143-.Lfunc_begin10        # >> Call Site 2 <<
	.uleb128 .Ltmp144-.Ltmp143              #   Call between .Ltmp143 and .Ltmp144
	.uleb128 .Ltmp145-.Lfunc_begin10        #     jumps to .Ltmp145
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp144-.Lfunc_begin10        # >> Call Site 3 <<
	.uleb128 .Ltmp146-.Ltmp144              #   Call between .Ltmp144 and .Ltmp146
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp146-.Lfunc_begin10        # >> Call Site 4 <<
	.uleb128 .Ltmp147-.Ltmp146              #   Call between .Ltmp146 and .Ltmp147
	.uleb128 .Ltmp148-.Lfunc_begin10        #     jumps to .Ltmp148
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp147-.Lfunc_begin10        # >> Call Site 5 <<
	.uleb128 .Ltmp149-.Ltmp147              #   Call between .Ltmp147 and .Ltmp149
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp149-.Lfunc_begin10        # >> Call Site 6 <<
	.uleb128 .Ltmp150-.Ltmp149              #   Call between .Ltmp149 and .Ltmp150
	.uleb128 .Ltmp151-.Lfunc_begin10        #     jumps to .Ltmp151
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp150-.Lfunc_begin10        # >> Call Site 7 <<
	.uleb128 .Ltmp152-.Ltmp150              #   Call between .Ltmp150 and .Ltmp152
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp152-.Lfunc_begin10        # >> Call Site 8 <<
	.uleb128 .Ltmp153-.Ltmp152              #   Call between .Ltmp152 and .Ltmp153
	.uleb128 .Ltmp154-.Lfunc_begin10        #     jumps to .Ltmp154
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp153-.Lfunc_begin10        # >> Call Site 9 <<
	.uleb128 .Ltmp155-.Ltmp153              #   Call between .Ltmp153 and .Ltmp155
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp155-.Lfunc_begin10        # >> Call Site 10 <<
	.uleb128 .Ltmp156-.Ltmp155              #   Call between .Ltmp155 and .Ltmp156
	.uleb128 .Ltmp157-.Lfunc_begin10        #     jumps to .Ltmp157
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp156-.Lfunc_begin10        # >> Call Site 11 <<
	.uleb128 .Ltmp158-.Ltmp156              #   Call between .Ltmp156 and .Ltmp158
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp158-.Lfunc_begin10        # >> Call Site 12 <<
	.uleb128 .Ltmp159-.Ltmp158              #   Call between .Ltmp158 and .Ltmp159
	.uleb128 .Ltmp160-.Lfunc_begin10        #     jumps to .Ltmp160
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp159-.Lfunc_begin10        # >> Call Site 13 <<
	.uleb128 .Ltmp161-.Ltmp159              #   Call between .Ltmp159 and .Ltmp161
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp161-.Lfunc_begin10        # >> Call Site 14 <<
	.uleb128 .Ltmp162-.Ltmp161              #   Call between .Ltmp161 and .Ltmp162
	.uleb128 .Ltmp163-.Lfunc_begin10        #     jumps to .Ltmp163
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp162-.Lfunc_begin10        # >> Call Site 15 <<
	.uleb128 .Lfunc_end25-.Ltmp162          #   Call between .Ltmp162 and .Lfunc_end25
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end10:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_,"axG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_,comdat
	.hidden	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_ # -- Begin function _ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_
	.weak	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_
	.p2align	5
	.type	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_,@function
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_: # @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_
.Lfunc_begin11:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception11
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	move	$s1, $a3
	ld.d	$s3, $a3, 0
	move	$s4, $a2
	move	$s2, $a1
	move	$fp, $a0
	addi.d	$s5, $a1, 32
	ori	$a0, $zero, 80
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $s3
	move	$a1, $s0
	move	$a2, $s5
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 0
	ld.d	$a1, $s2, 24
	st.w	$a0, $s0, 0
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	vst	$vr0, $s0, 16
	st.d	$s4, $s0, 8
	beqz	$a1, .LBB26_3
# %bb.1:
.Ltmp164:                               # EH_LABEL
	move	$a0, $fp
	move	$a2, $s0
	move	$a3, $s1
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_)
	jirl	$ra, $ra, 0
.Ltmp165:                               # EH_LABEL
# %bb.2:
	st.d	$a0, $s0, 24
.LBB26_3:
	ld.d	$s4, $s2, 16
	beqz	$s4, .LBB26_11
# %bb.4:                                # %.lr.ph.preheader
	move	$s5, $s0
	b	.LBB26_6
	.p2align	4, , 16
.LBB26_5:                               #   in Loop: Header=BB26_6 Depth=1
	ld.d	$s4, $s4, 16
	move	$s5, $s2
	beqz	$s4, .LBB26_11
.LBB26_6:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s3, $s1, 0
.Ltmp167:                               # EH_LABEL
	ori	$a0, $zero, 80
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp168:                               # EH_LABEL
# %bb.7:                                # %.noexc
                                        #   in Loop: Header=BB26_6 Depth=1
	move	$s2, $a0
	addi.d	$a2, $s4, 32
.Ltmp169:                               # EH_LABEL
	move	$a0, $s3
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_)
	jirl	$ra, $ra, 0
.Ltmp170:                               # EH_LABEL
# %bb.8:                                #   in Loop: Header=BB26_6 Depth=1
	ld.w	$a0, $s4, 0
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $s2, 16
	ld.d	$a1, $s4, 24
	st.w	$a0, $s2, 0
	st.d	$s2, $s5, 16
	st.d	$s5, $s2, 8
	beqz	$a1, .LBB26_5
# %bb.9:                                #   in Loop: Header=BB26_6 Depth=1
.Ltmp171:                               # EH_LABEL
	move	$a0, $fp
	move	$a2, $s2
	move	$a3, $s1
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_)
	jirl	$ra, $ra, 0
.Ltmp172:                               # EH_LABEL
# %bb.10:                               #   in Loop: Header=BB26_6 Depth=1
	st.d	$a0, $s2, 24
	b	.LBB26_5
.LBB26_11:                              # %._crit_edge
	move	$a0, $s0
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
.LBB26_12:
.Ltmp166:                               # EH_LABEL
	b	.LBB26_14
.LBB26_13:
.Ltmp173:                               # EH_LABEL
.LBB26_14:
	pcaddu18i	$ra, %call36(__cxa_begin_catch)
	jirl	$ra, $ra, 0
.Ltmp174:                               # EH_LABEL
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E)
	jirl	$ra, $ra, 0
.Ltmp175:                               # EH_LABEL
# %bb.15:
.Ltmp176:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_rethrow)
	jirl	$ra, $ra, 0
.Ltmp177:                               # EH_LABEL
# %bb.16:
.LBB26_17:
.Ltmp178:                               # EH_LABEL
	move	$fp, $a0
.Ltmp179:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_end_catch)
	jirl	$ra, $ra, 0
.Ltmp180:                               # EH_LABEL
# %bb.18:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB26_19:
.Ltmp181:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end26:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_, .Lfunc_end26-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_
	.cfi_endproc
	.section	.gcc_except_table._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_,"aG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_,comdat
	.p2align	2, 0x0
GCC_except_table26:
.Lexception11:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase6-.Lttbaseref6
.Lttbaseref6:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end11-.Lcst_begin11
.Lcst_begin11:
	.uleb128 .Lfunc_begin11-.Lfunc_begin11  # >> Call Site 1 <<
	.uleb128 .Ltmp164-.Lfunc_begin11        #   Call between .Lfunc_begin11 and .Ltmp164
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp164-.Lfunc_begin11        # >> Call Site 2 <<
	.uleb128 .Ltmp165-.Ltmp164              #   Call between .Ltmp164 and .Ltmp165
	.uleb128 .Ltmp166-.Lfunc_begin11        #     jumps to .Ltmp166
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp167-.Lfunc_begin11        # >> Call Site 3 <<
	.uleb128 .Ltmp172-.Ltmp167              #   Call between .Ltmp167 and .Ltmp172
	.uleb128 .Ltmp173-.Lfunc_begin11        #     jumps to .Ltmp173
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp172-.Lfunc_begin11        # >> Call Site 4 <<
	.uleb128 .Ltmp174-.Ltmp172              #   Call between .Ltmp172 and .Ltmp174
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp174-.Lfunc_begin11        # >> Call Site 5 <<
	.uleb128 .Ltmp177-.Ltmp174              #   Call between .Ltmp174 and .Ltmp177
	.uleb128 .Ltmp178-.Lfunc_begin11        #     jumps to .Ltmp178
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp179-.Lfunc_begin11        # >> Call Site 6 <<
	.uleb128 .Ltmp180-.Ltmp179              #   Call between .Ltmp179 and .Ltmp180
	.uleb128 .Ltmp181-.Lfunc_begin11        #     jumps to .Ltmp181
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp180-.Lfunc_begin11        # >> Call Site 7 <<
	.uleb128 .Lfunc_end26-.Ltmp180          #   Call between .Ltmp180 and .Lfunc_end26
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end11:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase6:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_,"axG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_,comdat
	.hidden	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_ # -- Begin function _ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_
	.weak	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_
	.p2align	5
	.type	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_,@function
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_: # @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_
.Lfunc_begin12:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception12
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
	bltu	$s2, $a0, .LBB27_3
# %bb.1:                                # %.noexc.i.i
.Ltmp182:                               # EH_LABEL
	addi.d	$s4, $fp, 32
	addi.d	$a1, $sp, 16
	move	$a0, $s4
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp183:                               # EH_LABEL
# %bb.2:                                # %.noexc
	ld.d	$a1, $sp, 16
	st.d	$a0, $s4, 0
	st.d	$a1, $s1, 0
	move	$s1, $a0
.LBB27_3:                               # %._crit_edge.i.i.i
	beqz	$s2, .LBB27_7
# %bb.4:                                # %._crit_edge.i.i.i
	ori	$a0, $zero, 1
	bne	$s2, $a0, .LBB27_6
# %bb.5:
	ld.b	$a0, $s3, 0
	st.b	$a0, $s1, 0
	b	.LBB27_7
.LBB27_6:
	move	$a0, $s1
	move	$a1, $s3
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB27_7:
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
.LBB27_8:
.Ltmp184:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_begin_catch)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 80
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.Ltmp185:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_rethrow)
	jirl	$ra, $ra, 0
.Ltmp186:                               # EH_LABEL
# %bb.9:
.LBB27_10:
.Ltmp187:                               # EH_LABEL
	move	$fp, $a0
.Ltmp188:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_end_catch)
	jirl	$ra, $ra, 0
.Ltmp189:                               # EH_LABEL
# %bb.11:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB27_12:
.Ltmp190:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end27:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_, .Lfunc_end27-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_
	.cfi_endproc
	.section	.gcc_except_table._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_,"aG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_,comdat
	.p2align	2, 0x0
GCC_except_table27:
.Lexception12:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase7-.Lttbaseref7
.Lttbaseref7:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end12-.Lcst_begin12
.Lcst_begin12:
	.uleb128 .Ltmp182-.Lfunc_begin12        # >> Call Site 1 <<
	.uleb128 .Ltmp183-.Ltmp182              #   Call between .Ltmp182 and .Ltmp183
	.uleb128 .Ltmp184-.Lfunc_begin12        #     jumps to .Ltmp184
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp183-.Lfunc_begin12        # >> Call Site 2 <<
	.uleb128 .Ltmp185-.Ltmp183              #   Call between .Ltmp183 and .Ltmp185
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp185-.Lfunc_begin12        # >> Call Site 3 <<
	.uleb128 .Ltmp186-.Ltmp185              #   Call between .Ltmp185 and .Ltmp186
	.uleb128 .Ltmp187-.Lfunc_begin12        #     jumps to .Ltmp187
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp188-.Lfunc_begin12        # >> Call Site 4 <<
	.uleb128 .Ltmp189-.Ltmp188              #   Call between .Ltmp188 and .Ltmp189
	.uleb128 .Ltmp190-.Lfunc_begin12        #     jumps to .Ltmp190
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp189-.Lfunc_begin12        # >> Call Site 5 <<
	.uleb128 .Lfunc_end27-.Ltmp189          #   Call between .Ltmp189 and .Lfunc_end27
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end12:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase7:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZSt14__relocate_a_1IPN9benchmark17BenchmarkReporter3RunES3_SaIS2_EET0_T_S6_S5_RT1_,"axG",@progbits,_ZSt14__relocate_a_1IPN9benchmark17BenchmarkReporter3RunES3_SaIS2_EET0_T_S6_S5_RT1_,comdat
	.hidden	_ZSt14__relocate_a_1IPN9benchmark17BenchmarkReporter3RunES3_SaIS2_EET0_T_S6_S5_RT1_ # -- Begin function _ZSt14__relocate_a_1IPN9benchmark17BenchmarkReporter3RunES3_SaIS2_EET0_T_S6_S5_RT1_
	.weak	_ZSt14__relocate_a_1IPN9benchmark17BenchmarkReporter3RunES3_SaIS2_EET0_T_S6_S5_RT1_
	.p2align	5
	.type	_ZSt14__relocate_a_1IPN9benchmark17BenchmarkReporter3RunES3_SaIS2_EET0_T_S6_S5_RT1_,@function
_ZSt14__relocate_a_1IPN9benchmark17BenchmarkReporter3RunES3_SaIS2_EET0_T_S6_S5_RT1_: # @_ZSt14__relocate_a_1IPN9benchmark17BenchmarkReporter3RunES3_SaIS2_EET0_T_S6_S5_RT1_
.Lfunc_begin13:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception13
# %bb.0:
	addi.d	$sp, $sp, -48
	.cfi_def_cfa_offset 48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	move	$fp, $a2
	beq	$a0, $a1, .LBB28_11
# %bb.1:                                # %.lr.ph.preheader
	move	$s0, $a1
	move	$s1, $a0
	move	$s3, $zero
	b	.LBB28_3
	.p2align	4, , 16
.LBB28_2:                               # %_ZSt19__relocate_object_aIN9benchmark17BenchmarkReporter3RunES2_SaIS2_EEvPT_PT0_RT1_.exit
                                        #   in Loop: Header=BB28_3 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN9benchmark13BenchmarkNameD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$s3, $s3, 560
	add.d	$a0, $s1, $s3
	beq	$a0, $s0, .LBB28_10
.LBB28_3:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a0, $fp, $s3
	add.d	$s2, $s1, $s3
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZN9benchmark17BenchmarkReporter3RunC2EOS1_)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 512
	addi.d	$a0, $s2, 496
.Ltmp191:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E)
	jirl	$ra, $ra, 0
.Ltmp192:                               # EH_LABEL
# %bb.4:                                # %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit.i.i
                                        #   in Loop: Header=BB28_3 Depth=1
	ld.d	$a0, $s2, 360
	addi.d	$a1, $s2, 376
	beq	$a1, $a0, .LBB28_6
# %bb.5:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
                                        #   in Loop: Header=BB28_3 Depth=1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB28_6:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
                                        #   in Loop: Header=BB28_3 Depth=1
	ld.d	$a0, $s2, 320
	addi.d	$a1, $s2, 336
	beq	$a1, $a0, .LBB28_8
# %bb.7:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i
                                        #   in Loop: Header=BB28_3 Depth=1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB28_8:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i
                                        #   in Loop: Header=BB28_3 Depth=1
	ld.d	$a0, $s2, 280
	addi.d	$a1, $s2, 296
	beq	$a1, $a0, .LBB28_2
# %bb.9:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i
                                        #   in Loop: Header=BB28_3 Depth=1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB28_2
.LBB28_10:                              # %._crit_edge.loopexit
	add.d	$fp, $fp, $s3
.LBB28_11:                              # %._crit_edge
	move	$a0, $fp
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB28_12:
.Ltmp193:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end28:
	.size	_ZSt14__relocate_a_1IPN9benchmark17BenchmarkReporter3RunES3_SaIS2_EET0_T_S6_S5_RT1_, .Lfunc_end28-_ZSt14__relocate_a_1IPN9benchmark17BenchmarkReporter3RunES3_SaIS2_EET0_T_S6_S5_RT1_
	.cfi_endproc
	.section	.gcc_except_table._ZSt14__relocate_a_1IPN9benchmark17BenchmarkReporter3RunES3_SaIS2_EET0_T_S6_S5_RT1_,"aG",@progbits,_ZSt14__relocate_a_1IPN9benchmark17BenchmarkReporter3RunES3_SaIS2_EET0_T_S6_S5_RT1_,comdat
	.p2align	2, 0x0
GCC_except_table28:
.Lexception13:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase8-.Lttbaseref8
.Lttbaseref8:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end13-.Lcst_begin13
.Lcst_begin13:
	.uleb128 .Lfunc_begin13-.Lfunc_begin13  # >> Call Site 1 <<
	.uleb128 .Ltmp191-.Lfunc_begin13        #   Call between .Lfunc_begin13 and .Ltmp191
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp191-.Lfunc_begin13        # >> Call Site 2 <<
	.uleb128 .Ltmp192-.Ltmp191              #   Call between .Ltmp191 and .Ltmp192
	.uleb128 .Ltmp193-.Lfunc_begin13        #     jumps to .Ltmp193
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp192-.Lfunc_begin13        # >> Call Site 3 <<
	.uleb128 .Lfunc_end28-.Ltmp192          #   Call between .Ltmp192 and .Lfunc_end28
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end13:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase8:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN9benchmark17BenchmarkReporter3RunC2EOS1_,"axG",@progbits,_ZN9benchmark17BenchmarkReporter3RunC2EOS1_,comdat
	.hidden	_ZN9benchmark17BenchmarkReporter3RunC2EOS1_ # -- Begin function _ZN9benchmark17BenchmarkReporter3RunC2EOS1_
	.weak	_ZN9benchmark17BenchmarkReporter3RunC2EOS1_
	.p2align	5
	.type	_ZN9benchmark17BenchmarkReporter3RunC2EOS1_,@function
_ZN9benchmark17BenchmarkReporter3RunC2EOS1_: # @_ZN9benchmark17BenchmarkReporter3RunC2EOS1_
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
	move	$s0, $a1
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_ZN9benchmark13BenchmarkNameC2EOS0_)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 272
	st.w	$a0, $fp, 272
	vld	$vr0, $s0, 256
	vst	$vr0, $fp, 256
	addi.d	$a0, $fp, 296
	st.d	$a0, $fp, 280
	ld.d	$a1, $s0, 280
	addi.d	$s1, $s0, 296
	beq	$a1, $s1, .LBB29_2
# %bb.1:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
	st.d	$a1, $fp, 280
	ld.d	$a0, $s1, 0
	st.d	$a0, $fp, 296
	b	.LBB29_3
.LBB29_2:
	ld.d	$a1, $s0, 288
	addi.d	$a2, $a1, 1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB29_3:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
	ld.d	$a0, $s0, 288
	st.d	$a0, $fp, 288
	st.d	$s1, $s0, 280
	st.b	$zero, $s0, 296
	ld.w	$a2, $s0, 312
	addi.d	$a0, $fp, 336
	st.d	$a0, $fp, 320
	ld.d	$a1, $s0, 320
	st.d	$zero, $s0, 288
	addi.d	$s1, $s0, 336
	st.w	$a2, $fp, 312
	beq	$a1, $s1, .LBB29_5
# %bb.4:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i11
	st.d	$a1, $fp, 320
	ld.d	$a0, $s1, 0
	st.d	$a0, $fp, 336
	b	.LBB29_6
.LBB29_5:
	ld.d	$a1, $s0, 328
	addi.d	$a2, $a1, 1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB29_6:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit12
	ld.d	$a0, $s0, 328
	st.d	$a0, $fp, 328
	st.d	$s1, $s0, 320
	st.b	$zero, $s0, 336
	ld.w	$a2, $s0, 352
	addi.d	$a0, $fp, 376
	st.d	$a0, $fp, 360
	ld.d	$a1, $s0, 360
	st.d	$zero, $s0, 328
	addi.d	$s1, $s0, 376
	st.w	$a2, $fp, 352
	beq	$a1, $s1, .LBB29_8
# %bb.7:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13
	st.d	$a1, $fp, 360
	ld.d	$a0, $s1, 0
	st.d	$a0, $fp, 376
	b	.LBB29_9
.LBB29_8:
	ld.d	$a1, $s0, 368
	addi.d	$a2, $a1, 1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB29_9:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14
	ld.d	$a0, $s0, 368
	st.d	$a0, $fp, 368
	st.d	$s1, $s0, 360
	st.d	$zero, $s0, 368
	st.b	$zero, $s0, 376
	addi.d	$a0, $fp, 392
	addi.d	$a1, $s0, 392
	ori	$a2, $zero, 98
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s0, 512
	addi.d	$a0, $fp, 504
	beqz	$a2, .LBB29_11
# %bb.10:
	st.d	$a2, $fp, 512
	vld	$vr0, $s0, 520
	addi.d	$a3, $s0, 504
	ld.d	$a4, $s0, 536
	ld.w	$a1, $s0, 504
	vst	$vr0, $fp, 520
	st.d	$a0, $a2, 8
	st.d	$a4, $fp, 536
	st.d	$zero, $s0, 512
	st.d	$a3, $s0, 520
	st.d	$a3, $s0, 528
	st.d	$zero, $s0, 536
	b	.LBB29_12
.LBB29_11:
	move	$a1, $zero
	st.d	$zero, $fp, 512
	st.d	$a0, $fp, 520
	st.d	$a0, $fp, 528
	st.d	$zero, $fp, 536
.LBB29_12:                              # %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEEC2EOSE_.exit
	st.w	$a1, $fp, 504
	vld	$vr0, $s0, 544
	vst	$vr0, $fp, 544
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end29:
	.size	_ZN9benchmark17BenchmarkReporter3RunC2EOS1_, .Lfunc_end29-_ZN9benchmark17BenchmarkReporter3RunC2EOS1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9benchmark13BenchmarkNameC2EOS0_,"axG",@progbits,_ZN9benchmark13BenchmarkNameC2EOS0_,comdat
	.hidden	_ZN9benchmark13BenchmarkNameC2EOS0_ # -- Begin function _ZN9benchmark13BenchmarkNameC2EOS0_
	.weak	_ZN9benchmark13BenchmarkNameC2EOS0_
	.p2align	5
	.type	_ZN9benchmark13BenchmarkNameC2EOS0_,@function
_ZN9benchmark13BenchmarkNameC2EOS0_:    # @_ZN9benchmark13BenchmarkNameC2EOS0_
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
	move	$fp, $a1
	move	$s0, $a0
	addi.d	$a0, $a0, 16
	st.d	$a0, $s0, 0
	ld.d	$a1, $a1, 0
	addi.d	$s1, $fp, 16
	beq	$a1, $s1, .LBB30_2
# %bb.1:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
	st.d	$a1, $s0, 0
	ld.d	$a0, $s1, 0
	st.d	$a0, $s0, 16
	b	.LBB30_3
.LBB30_2:
	ld.d	$a1, $fp, 8
	addi.d	$a2, $a1, 1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB30_3:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
	ld.d	$a0, $fp, 8
	st.d	$a0, $s0, 8
	st.d	$s1, $fp, 0
	st.b	$zero, $fp, 16
	addi.d	$a0, $s0, 48
	st.d	$a0, $s0, 32
	ld.d	$a1, $fp, 32
	addi.d	$s1, $fp, 48
	st.d	$zero, $fp, 8
	beq	$a1, $s1, .LBB30_5
# %bb.4:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i9
	st.d	$a1, $s0, 32
	ld.d	$a0, $s1, 0
	st.d	$a0, $s0, 48
	b	.LBB30_6
.LBB30_5:
	ld.d	$a1, $fp, 40
	addi.d	$a2, $a1, 1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB30_6:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit10
	ld.d	$a0, $fp, 40
	st.d	$a0, $s0, 40
	st.d	$s1, $fp, 32
	st.b	$zero, $fp, 48
	addi.d	$a0, $s0, 80
	st.d	$a0, $s0, 64
	ld.d	$a1, $fp, 64
	addi.d	$s1, $fp, 80
	st.d	$zero, $fp, 40
	beq	$a1, $s1, .LBB30_8
# %bb.7:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i11
	st.d	$a1, $s0, 64
	ld.d	$a0, $s1, 0
	st.d	$a0, $s0, 80
	b	.LBB30_9
.LBB30_8:
	ld.d	$a1, $fp, 72
	addi.d	$a2, $a1, 1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB30_9:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit12
	ld.d	$a0, $fp, 72
	st.d	$a0, $s0, 72
	st.d	$s1, $fp, 64
	st.b	$zero, $fp, 80
	addi.d	$a0, $s0, 112
	st.d	$a0, $s0, 96
	ld.d	$a1, $fp, 96
	addi.d	$s1, $fp, 112
	st.d	$zero, $fp, 72
	beq	$a1, $s1, .LBB30_11
# %bb.10:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13
	st.d	$a1, $s0, 96
	ld.d	$a0, $s1, 0
	st.d	$a0, $s0, 112
	b	.LBB30_12
.LBB30_11:
	ld.d	$a1, $fp, 104
	addi.d	$a2, $a1, 1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB30_12:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14
	ld.d	$a0, $fp, 104
	st.d	$a0, $s0, 104
	st.d	$s1, $fp, 96
	st.b	$zero, $fp, 112
	addi.d	$a0, $s0, 144
	st.d	$a0, $s0, 128
	ld.d	$a1, $fp, 128
	addi.d	$s1, $fp, 144
	st.d	$zero, $fp, 104
	beq	$a1, $s1, .LBB30_14
# %bb.13:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15
	st.d	$a1, $s0, 128
	ld.d	$a0, $s1, 0
	st.d	$a0, $s0, 144
	b	.LBB30_15
.LBB30_14:
	ld.d	$a1, $fp, 136
	addi.d	$a2, $a1, 1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB30_15:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit16
	ld.d	$a0, $fp, 136
	st.d	$a0, $s0, 136
	st.d	$s1, $fp, 128
	st.b	$zero, $fp, 144
	addi.d	$a0, $s0, 176
	st.d	$a0, $s0, 160
	ld.d	$a1, $fp, 160
	addi.d	$s1, $fp, 176
	st.d	$zero, $fp, 136
	beq	$a1, $s1, .LBB30_17
# %bb.16:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i17
	st.d	$a1, $s0, 160
	ld.d	$a0, $s1, 0
	st.d	$a0, $s0, 176
	b	.LBB30_18
.LBB30_17:
	ld.d	$a1, $fp, 168
	addi.d	$a2, $a1, 1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB30_18:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit18
	ld.d	$a0, $fp, 168
	st.d	$a0, $s0, 168
	st.d	$s1, $fp, 160
	st.b	$zero, $fp, 176
	addi.d	$a0, $s0, 208
	st.d	$a0, $s0, 192
	ld.d	$a1, $fp, 192
	addi.d	$s1, $fp, 208
	st.d	$zero, $fp, 168
	beq	$a1, $s1, .LBB30_20
# %bb.19:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i19
	st.d	$a1, $s0, 192
	ld.d	$a0, $s1, 0
	st.d	$a0, $s0, 208
	b	.LBB30_21
.LBB30_20:
	ld.d	$a1, $fp, 200
	addi.d	$a2, $a1, 1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB30_21:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit20
	ld.d	$a0, $fp, 200
	st.d	$a0, $s0, 200
	st.d	$s1, $fp, 192
	st.b	$zero, $fp, 208
	addi.d	$a0, $s0, 240
	st.d	$a0, $s0, 224
	ld.d	$a1, $fp, 224
	addi.d	$s1, $fp, 240
	st.d	$zero, $fp, 200
	beq	$a1, $s1, .LBB30_23
# %bb.22:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i21
	st.d	$a1, $s0, 224
	ld.d	$a0, $s1, 0
	st.d	$a0, $s0, 240
	b	.LBB30_24
.LBB30_23:
	ld.d	$a1, $fp, 232
	addi.d	$a2, $a1, 1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB30_24:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit22
	ld.d	$a0, $fp, 232
	st.d	$a0, $s0, 232
	st.d	$s1, $fp, 224
	st.d	$zero, $fp, 232
	st.b	$zero, $fp, 240
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end30:
	.size	_ZN9benchmark13BenchmarkNameC2EOS0_, .Lfunc_end30-_ZN9benchmark13BenchmarkNameC2EOS0_
	.cfi_endproc
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	5                               # -- Begin function _GLOBAL__sub_I_statistics.cc
	.type	_GLOBAL__sub_I_statistics.cc,@function
_GLOBAL__sub_I_statistics.cc:           # @_GLOBAL__sub_I_statistics.cc
	.cfi_startproc
# %bb.0:
	pcaddu18i	$t8, %call36(_ZN9benchmark8internal17InitializeStreamsEv)
	jr	$t8
.Lfunc_end31:
	.size	_GLOBAL__sub_I_statistics.cc, .Lfunc_end31-_GLOBAL__sub_I_statistics.cc
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.space	1
	.size	.L.str, 1

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

	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"vector::reserve"
	.size	.L.str.1, 16

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"vector::_M_realloc_append"
	.size	.L.str.2, 26

	.type	_ZSt19piecewise_construct,@object # @_ZSt19piecewise_construct
	.section	.rodata._ZSt19piecewise_construct,"aG",@progbits,_ZSt19piecewise_construct,comdat
	.weak	_ZSt19piecewise_construct
_ZSt19piecewise_construct:
	.space	1
	.size	_ZSt19piecewise_construct, 1

	.section	.init_array,"aw",@init_array
	.p2align	3, 0x0
	.dword	_GLOBAL__sub_I_statistics.cc
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
	.addrsig_sym _GLOBAL__sub_I_statistics.cc
	.addrsig_sym _Unwind_Resume
	.addrsig_sym _ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log
	.addrsig_sym _ZSt19piecewise_construct
