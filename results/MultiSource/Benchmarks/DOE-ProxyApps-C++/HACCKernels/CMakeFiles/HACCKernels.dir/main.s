	.file	"main.cpp"
                                        # Start of file scope inline assembly
	.globl	_ZSt21ios_base_library_initv

                                        # End of file scope inline assembly
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _Z3runPFviPfS_S_S_fffffRfS0_S0_EPKc
.LCPI0_0:
	.word	0x2f800000                      # float 2.32830644E-10
	.text
	.globl	_Z3runPFviPfS_S_S_fffffRfS0_S0_EPKc
	.p2align	5
	.type	_Z3runPFviPfS_S_S_fffffRfS0_S0_EPKc,@function
_Z3runPFviPfS_S_S_fffffRfS0_S0_EPKc:    # @_Z3runPFviPfS_S_S_fffffRfS0_S0_EPKc
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
# %bb.0:
	addi.d	$sp, $sp, -256
	.cfi_def_cfa_offset 256
	st.d	$ra, $sp, 248                   # 8-byte Folded Spill
	st.d	$fp, $sp, 240                   # 8-byte Folded Spill
	st.d	$s0, $sp, 232                   # 8-byte Folded Spill
	st.d	$s1, $sp, 224                   # 8-byte Folded Spill
	st.d	$s2, $sp, 216                   # 8-byte Folded Spill
	st.d	$s3, $sp, 208                   # 8-byte Folded Spill
	st.d	$s4, $sp, 200                   # 8-byte Folded Spill
	st.d	$s5, $sp, 192                   # 8-byte Folded Spill
	st.d	$s6, $sp, 184                   # 8-byte Folded Spill
	st.d	$s7, $sp, 176                   # 8-byte Folded Spill
	st.d	$s8, $sp, 168                   # 8-byte Folded Spill
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
	move	$fp, $a1
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$s1, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	ori	$a2, $zero, 34
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB0_2
# %bb.1:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	b	.LBB0_3
.LBB0_2:
	ld.d	$a0, $s1, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s1, $a0
	ld.w	$a1, $a0, 32
	ori	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate)
	jirl	$ra, $ra, 0
.LBB0_3:                                # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a1, $a1, %pc_lo12(.L.str.1)
	ori	$a2, $zero, 3
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	move	$s2, $zero
	pcalau12i	$a0, %pc_hi20(IListMin)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(IListMax)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(PMin)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(PMax)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	vldi	$vr5, -928
	vldi	$vr6, -1168
	b	.LBB0_5
	.p2align	4, , 16
.LBB0_4:                                # %_ZNSt6vectorIfSaIfEED2Ev.exit119
                                        #   in Loop: Header=BB0_5 Depth=1
	pcalau12i	$a0, %pc_hi20(NumIters)
	ld.w	$a0, $a0, %pc_lo12(NumIters)
	vldi	$vr5, -928
	vldi	$vr6, -1168
	bge	$s2, $a0, .LBB0_56
.LBB0_5:                                # %.lr.ph424
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_34 Depth 2
                                        #     Child Loop BB0_37 Depth 2
                                        #     Child Loop BB0_40 Depth 2
	addi.w	$s2, $s2, 1
	st.w	$zero, $sp, 156
	st.w	$zero, $sp, 160
	slli.d	$a0, $s2, 13
	xor	$a0, $a0, $s2
	bstrpick.d	$a1, $a0, 31, 17
	xor	$a0, $a1, $a0
	slli.d	$a1, $a0, 5
	xor	$s4, $a1, $a0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(PMin)
	slli.d	$a1, $s4, 13
	xor	$a1, $a1, $s4
	bstrpick.d	$a2, $a1, 31, 17
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a3, $a3, %pc_lo12(PMax)
	xor	$a1, $a2, $a1
	slli.d	$a2, $a1, 5
	xor	$fp, $a2, $a1
	sub.w	$a1, $a3, $a0
	addi.w	$a2, $fp, 0
	mod.wu	$a1, $a2, $a1
	add.w	$s1, $a1, $a0
	st.w	$zero, $sp, 164
	bltz	$s1, .LBB0_57
# %bb.6:                                # %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
                                        #   in Loop: Header=BB0_5 Depth=1
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.w	$s5, $a0, %pc_lo12(IListMin)
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.w	$s6, $a0, %pc_lo12(IListMax)
	beqz	$s1, .LBB0_16
# %bb.7:                                # %.noexc53
                                        #   in Loop: Header=BB0_5 Depth=1
	slli.d	$s2, $s1, 2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	st.w	$zero, $a0, 0
	addi.d	$s0, $s1, -1
	slli.d	$s3, $s0, 2
	beqz	$s0, .LBB0_9
# %bb.8:                                # %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
                                        #   in Loop: Header=BB0_5 Depth=1
	addi.d	$a0, $s7, 4
	move	$a1, $zero
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB0_9:                                #   in Loop: Header=BB0_5 Depth=1
.Ltmp0:                                 # EH_LABEL
	alsl.d	$a0, $s1, $s7, 2
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.10:                               # %.noexc61
                                        #   in Loop: Header=BB0_5 Depth=1
	move	$s8, $a0
	st.w	$zero, $a0, 0
	beqz	$s0, .LBB0_12
# %bb.11:                               # %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i56
                                        #   in Loop: Header=BB0_5 Depth=1
	addi.d	$a0, $s8, 4
	move	$a1, $zero
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB0_12:                               #   in Loop: Header=BB0_5 Depth=1
.Ltmp3:                                 # EH_LABEL
	alsl.d	$a0, $s1, $s8, 2
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp4:                                 # EH_LABEL
# %bb.13:                               # %.noexc70
                                        #   in Loop: Header=BB0_5 Depth=1
	move	$s2, $a0
	alsl.d	$a0, $s1, $a0, 2
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	st.w	$zero, $s2, 0
	beqz	$s0, .LBB0_15
# %bb.14:                               # %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i65
                                        #   in Loop: Header=BB0_5 Depth=1
	addi.d	$a0, $s2, 4
	move	$a1, $zero
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB0_15:                               # %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit71
                                        #   in Loop: Header=BB0_5 Depth=1
	vldi	$vr5, -928
	vldi	$vr6, -1168
	b	.LBB0_17
	.p2align	4, , 16
.LBB0_16:                               #   in Loop: Header=BB0_5 Depth=1
	move	$s8, $zero
	st.d	$zero, $sp, 56                  # 8-byte Folded Spill
	st.d	$zero, $sp, 64                  # 8-byte Folded Spill
	move	$s7, $zero
	move	$s2, $zero
	st.d	$zero, $sp, 48                  # 8-byte Folded Spill
.LBB0_17:                               # %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit71
                                        #   in Loop: Header=BB0_5 Depth=1
	sub.w	$a0, $s6, $s5
	addi.w	$a1, $s4, 0
	mod.wu	$a0, $a1, $a0
	add.w	$s5, $a0, $s5
	bltz	$s5, .LBB0_58
# %bb.18:                               # %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i72
                                        #   in Loop: Header=BB0_5 Depth=1
	st.d	$s7, $sp, 128                   # 8-byte Folded Spill
	st.d	$s8, $sp, 120                   # 8-byte Folded Spill
	st.d	$s2, $sp, 112                   # 8-byte Folded Spill
	beqz	$s5, .LBB0_32
# %bb.19:                               #   in Loop: Header=BB0_5 Depth=1
	slli.d	$s7, $s5, 2
.Ltmp6:                                 # EH_LABEL
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp7:                                 # EH_LABEL
# %bb.20:                               # %.noexc79
                                        #   in Loop: Header=BB0_5 Depth=1
	move	$s4, $a0
	st.w	$zero, $a0, 0
	addi.d	$s2, $s5, -1
	slli.d	$s8, $s2, 2
	beqz	$s2, .LBB0_22
# %bb.21:                               # %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i74
                                        #   in Loop: Header=BB0_5 Depth=1
	addi.d	$a0, $s4, 4
	move	$a1, $zero
	move	$a2, $s8
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB0_22:                               #   in Loop: Header=BB0_5 Depth=1
.Ltmp9:                                 # EH_LABEL
	alsl.d	$a0, $s5, $s4, 2
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp10:                                # EH_LABEL
# %bb.23:                               # %.noexc88
                                        #   in Loop: Header=BB0_5 Depth=1
	move	$s0, $a0
	st.w	$zero, $a0, 0
	beqz	$s2, .LBB0_25
# %bb.24:                               # %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i83
                                        #   in Loop: Header=BB0_5 Depth=1
	addi.d	$a0, $s0, 4
	move	$a1, $zero
	move	$a2, $s8
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB0_25:                               #   in Loop: Header=BB0_5 Depth=1
.Ltmp12:                                # EH_LABEL
	st.d	$s0, $sp, 144                   # 8-byte Folded Spill
	alsl.d	$a0, $s5, $s0, 2
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp13:                                # EH_LABEL
# %bb.26:                               # %.noexc97
                                        #   in Loop: Header=BB0_5 Depth=1
	move	$s6, $a0
	st.w	$zero, $a0, 0
	beqz	$s2, .LBB0_28
# %bb.27:                               # %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i92
                                        #   in Loop: Header=BB0_5 Depth=1
	addi.d	$a0, $s6, 4
	move	$a1, $zero
	move	$a2, $s8
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB0_28:                               #   in Loop: Header=BB0_5 Depth=1
.Ltmp15:                                # EH_LABEL
	alsl.d	$a0, $s5, $s6, 2
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp16:                                # EH_LABEL
# %bb.29:                               # %.noexc106
                                        #   in Loop: Header=BB0_5 Depth=1
	move	$s7, $a0
	alsl.d	$a0, $s5, $a0, 2
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	st.w	$zero, $s7, 0
	beqz	$s2, .LBB0_31
# %bb.30:                               # %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i101
                                        #   in Loop: Header=BB0_5 Depth=1
	addi.d	$a0, $s7, 4
	move	$a1, $zero
	move	$a2, $s8
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB0_31:                               # %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit107
                                        #   in Loop: Header=BB0_5 Depth=1
	vldi	$vr5, -928
	vldi	$vr6, -1168
	ld.d	$s2, $sp, 112                   # 8-byte Folded Reload
	pcalau12i	$s8, %pc_hi20(MaxSep)
	pcalau12i	$a0, %pc_hi20(.LCPI0_0)
	bnez	$s1, .LBB0_33
	b	.LBB0_35
	.p2align	4, , 16
.LBB0_32:                               #   in Loop: Header=BB0_5 Depth=1
	st.d	$zero, $sp, 72                  # 8-byte Folded Spill
	move	$s6, $zero
	st.d	$zero, $sp, 88                  # 8-byte Folded Spill
	move	$s4, $zero
	st.d	$zero, $sp, 144                 # 8-byte Folded Spill
	st.d	$zero, $sp, 80                  # 8-byte Folded Spill
	move	$s7, $zero
	st.d	$zero, $sp, 96                  # 8-byte Folded Spill
	pcalau12i	$s8, %pc_hi20(MaxSep)
	pcalau12i	$a0, %pc_hi20(.LCPI0_0)
	beqz	$s1, .LBB0_35
.LBB0_33:                               # %.lr.ph
                                        #   in Loop: Header=BB0_5 Depth=1
	fld.s	$fa0, $s8, %pc_lo12(MaxSep)
	move	$a1, $zero
	fcvt.d.s	$fa0, $fa0
	fmul.d	$fa0, $fa0, $fa5
	move	$a2, $s2
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 128                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_34:                               #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$a5, $fp, 13
	xor	$a5, $a5, $fp
	bstrpick.d	$a6, $a5, 31, 17
	xor	$a5, $a6, $a5
	slli.d	$a6, $a5, 5
	xor	$a5, $a6, $a5
	fld.s	$fa1, $a0, %pc_lo12(.LCPI0_0)
	bstrpick.d	$a6, $a5, 31, 0
	movgr2fr.d	$fa2, $a6
	ffint.s.l	$fa2, $fa2
	fmul.s	$fa2, $fa2, $fa1
	fcvt.d.s	$fa2, $fa2
	fmul.d	$fa2, $fa0, $fa2
	fcvt.s.d	$fa2, $fa2
	fst.s	$fa2, $a4, 0
	slli.d	$a6, $a5, 13
	xor	$a5, $a6, $a5
	bstrpick.d	$a6, $a5, 31, 17
	xor	$a5, $a6, $a5
	slli.d	$a6, $a5, 5
	xor	$a5, $a6, $a5
	bstrpick.d	$a6, $a5, 31, 0
	movgr2fr.d	$fa2, $a6
	ffint.s.l	$fa2, $fa2
	fmul.s	$fa2, $fa2, $fa1
	fcvt.d.s	$fa2, $fa2
	fmul.d	$fa2, $fa0, $fa2
	fcvt.s.d	$fa2, $fa2
	fst.s	$fa2, $a3, 0
	slli.d	$a6, $a5, 13
	xor	$a5, $a6, $a5
	bstrpick.d	$a6, $a5, 31, 17
	xor	$a5, $a6, $a5
	slli.d	$a6, $a5, 5
	xor	$fp, $a6, $a5
	bstrpick.d	$a5, $fp, 31, 0
	movgr2fr.d	$fa2, $a5
	ffint.s.l	$fa2, $fa2
	fmul.s	$fa1, $fa2, $fa1
	fcvt.d.s	$fa1, $fa1
	fmul.d	$fa1, $fa0, $fa1
	fcvt.s.d	$fa1, $fa1
	fst.s	$fa1, $a2, 0
	addi.d	$a1, $a1, 1
	addi.d	$a4, $a4, 4
	addi.d	$a3, $a3, 4
	addi.d	$a2, $a2, 4
	blt	$a1, $s1, .LBB0_34
.LBB0_35:                               # %.preheader338
                                        #   in Loop: Header=BB0_5 Depth=1
	beqz	$s5, .LBB0_38
# %bb.36:                               # %.lr.ph420
                                        #   in Loop: Header=BB0_5 Depth=1
	fld.s	$fa0, $s8, %pc_lo12(MaxSep)
	pcalau12i	$a1, %pc_hi20(OffsetAdjFrac)
	fld.s	$fa1, $a1, %pc_lo12(OffsetAdjFrac)
	move	$a1, $zero
	fcvt.d.s	$fa0, $fa0
	fcvt.d.s	$fa1, $fa1
	fadd.d	$fa1, $fa1, $fa5
	fmul.d	$fa2, $fa0, $fa5
	move	$a2, $s7
	move	$a3, $s6
	ld.d	$a4, $sp, 144                   # 8-byte Folded Reload
	move	$a5, $s4
	.p2align	4, , 16
.LBB0_37:                               #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$a6, $fp, 13
	xor	$a6, $a6, $fp
	bstrpick.d	$a7, $a6, 31, 17
	xor	$a6, $a7, $a6
	slli.d	$a7, $a6, 5
	xor	$a6, $a7, $a6
	fld.s	$fa3, $a0, %pc_lo12(.LCPI0_0)
	bstrpick.d	$a7, $a6, 31, 0
	movgr2fr.d	$fa4, $a7
	ffint.s.l	$fa4, $fa4
	fmul.s	$fa4, $fa4, $fa3
	fcvt.d.s	$fa4, $fa4
	fmadd.d	$fa4, $fa4, $fa5, $fa1
	fmul.d	$fa4, $fa4, $fa0
	fcvt.s.d	$fa4, $fa4
	fst.s	$fa4, $a5, 0
	slli.d	$a7, $a6, 13
	xor	$a6, $a7, $a6
	bstrpick.d	$a7, $a6, 31, 17
	xor	$a6, $a7, $a6
	slli.d	$a7, $a6, 5
	xor	$a6, $a7, $a6
	bstrpick.d	$a7, $a6, 31, 0
	movgr2fr.d	$fa4, $a7
	ffint.s.l	$fa4, $fa4
	fmul.s	$fa4, $fa4, $fa3
	fcvt.d.s	$fa4, $fa4
	fmul.d	$fa4, $fa2, $fa4
	fcvt.s.d	$fa4, $fa4
	fst.s	$fa4, $a4, 0
	slli.d	$a7, $a6, 13
	xor	$a6, $a7, $a6
	bstrpick.d	$a7, $a6, 31, 17
	xor	$a6, $a7, $a6
	slli.d	$a7, $a6, 5
	xor	$a6, $a7, $a6
	bstrpick.d	$a7, $a6, 31, 0
	movgr2fr.d	$fa4, $a7
	ffint.s.l	$fa4, $fa4
	fmul.s	$fa4, $fa4, $fa3
	fcvt.d.s	$fa4, $fa4
	fmul.d	$fa4, $fa2, $fa4
	fcvt.s.d	$fa4, $fa4
	fst.s	$fa4, $a3, 0
	slli.d	$a7, $a6, 13
	xor	$a6, $a7, $a6
	bstrpick.d	$a7, $a6, 31, 17
	xor	$a6, $a7, $a6
	slli.d	$a7, $a6, 5
	xor	$fp, $a7, $a6
	bstrpick.d	$a6, $fp, 31, 0
	movgr2fr.d	$fa4, $a6
	ffint.s.l	$fa4, $fa4
	fmadd.s	$fa3, $fa4, $fa3, $fa6
	fst.s	$fa3, $a2, 0
	addi.d	$a1, $a1, 1
	addi.d	$a5, $a5, 4
	addi.d	$a4, $a4, 4
	addi.d	$a3, $a3, 4
	addi.d	$a2, $a2, 4
	blt	$a1, $s5, .LBB0_37
.LBB0_38:                               # %.preheader
                                        #   in Loop: Header=BB0_5 Depth=1
	beqz	$s1, .LBB0_42
# %bb.39:                               # %.lr.ph422.preheader
                                        #   in Loop: Header=BB0_5 Depth=1
	move	$fp, $zero
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 128                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_40:                               # %.lr.ph422
                                        #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.s	$fa0, $s3, 0
	fld.s	$fa1, $s0, 0
	fld.s	$fa3, $s8, %pc_lo12(MaxSep)
	pcalau12i	$a0, %pc_hi20(SofteningLen)
	fld.s	$fa4, $a0, %pc_lo12(SofteningLen)
	fld.s	$fa2, $s2, 0
	fmul.s	$fa3, $fa3, $fa3
	fmul.s	$fa4, $fa4, $fa4
.Ltmp18:                                # EH_LABEL
	addi.d	$a5, $sp, 164
	addi.d	$a6, $sp, 160
	addi.d	$a7, $sp, 156
	move	$a0, $s5
	move	$a1, $s4
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	move	$a3, $s6
	move	$a4, $s7
	ld.d	$t0, $sp, 136                   # 8-byte Folded Reload
	jirl	$ra, $t0, 0
.Ltmp19:                                # EH_LABEL
# %bb.41:                               #   in Loop: Header=BB0_40 Depth=2
	addi.d	$fp, $fp, 1
	addi.d	$s3, $s3, 4
	addi.d	$s0, $s0, 4
	addi.d	$s2, $s2, 4
	blt	$fp, $s1, .LBB0_40
	b	.LBB0_43
	.p2align	4, , 16
.LBB0_42:                               # %._crit_edge
                                        #   in Loop: Header=BB0_5 Depth=1
	beqz	$s7, .LBB0_44
.LBB0_43:                               # %._crit_edge.thread
                                        #   in Loop: Header=BB0_5 Depth=1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	sub.d	$a1, $a0, $s7
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_44:                               # %_ZNSt6vectorIfSaIfEED2Ev.exit
                                        #   in Loop: Header=BB0_5 Depth=1
	beqz	$s6, .LBB0_46
# %bb.45:                               #   in Loop: Header=BB0_5 Depth=1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	sub.d	$a1, $a0, $s6
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_46:                               # %_ZNSt6vectorIfSaIfEED2Ev.exit109
                                        #   in Loop: Header=BB0_5 Depth=1
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	beqz	$a0, .LBB0_48
# %bb.47:                               #   in Loop: Header=BB0_5 Depth=1
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_48:                               # %_ZNSt6vectorIfSaIfEED2Ev.exit111
                                        #   in Loop: Header=BB0_5 Depth=1
	beqz	$s4, .LBB0_50
# %bb.49:                               #   in Loop: Header=BB0_5 Depth=1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	sub.d	$a1, $a0, $s4
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_50:                               # %_ZNSt6vectorIfSaIfEED2Ev.exit113
                                        #   in Loop: Header=BB0_5 Depth=1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	beqz	$a0, .LBB0_52
# %bb.51:                               #   in Loop: Header=BB0_5 Depth=1
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_52:                               # %_ZNSt6vectorIfSaIfEED2Ev.exit115
                                        #   in Loop: Header=BB0_5 Depth=1
	beqz	$s0, .LBB0_54
# %bb.53:                               #   in Loop: Header=BB0_5 Depth=1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	sub.d	$a1, $a0, $s0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_54:                               # %_ZNSt6vectorIfSaIfEED2Ev.exit117
                                        #   in Loop: Header=BB0_5 Depth=1
	beqz	$fp, .LBB0_4
# %bb.55:                               #   in Loop: Header=BB0_5 Depth=1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	sub.d	$a1, $a0, $fp
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB0_4
.LBB0_56:                               # %._crit_edge425.loopexit
	fld.s	$fa0, $sp, 164
	fcvt.d.s	$fa0, $fa0
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$fp, $a0, %got_pc_lo12(_ZSt4cout)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$s1, $a0, %pc_lo12(.L.str.2)
	ori	$a2, $zero, 1
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $sp, 160
	fcvt.d.s	$fa0, $fa0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a2, $zero, 1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $sp, 156
	fcvt.d.s	$fa0, $fa0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a1, $a0, %pc_lo12(.L.str.3)
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$s8, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 240                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 248                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 256
	ret
.LBB0_57:                               # %.noexc
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.LBB0_58:
.Ltmp21:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp22:                                # EH_LABEL
# %bb.59:                               # %.noexc78
.LBB0_60:                               # %.loopexit
.Ltmp8:                                 # EH_LABEL
	move	$s0, $a0
	ld.d	$s7, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 112                   # 8-byte Folded Reload
	b	.LBB0_71
.LBB0_61:
.Ltmp11:                                # EH_LABEL
	move	$s0, $a0
	ld.d	$s7, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 88                    # 8-byte Folded Reload
	b	.LBB0_70
.LBB0_62:
.Ltmp14:                                # EH_LABEL
	move	$s0, $a0
	b	.LBB0_69
.LBB0_63:                               # %_ZNSt6vectorIfSaIfEED2Ev.exit131.thread
.Ltmp2:                                 # EH_LABEL
	move	$s0, $a0
	b	.LBB0_77
.LBB0_64:
.Ltmp17:                                # EH_LABEL
	move	$s0, $a0
	b	.LBB0_68
.LBB0_65:                               # %_ZNSt6vectorIfSaIfEED2Ev.exit129.thread
.Ltmp5:                                 # EH_LABEL
	move	$s0, $a0
	b	.LBB0_76
.LBB0_66:                               # %.loopexit.split-lp
.Ltmp23:                                # EH_LABEL
	move	$s0, $a0
	b	.LBB0_71
.LBB0_67:                               # %_ZNSt6vectorIfSaIfEED2Ev.exit121
.Ltmp20:                                # EH_LABEL
	move	$s0, $a0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	sub.d	$a1, $a0, $s7
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_68:                               # %_ZNSt6vectorIfSaIfEED2Ev.exit123
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	sub.d	$a1, $a0, $s6
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_69:                               # %_ZNSt6vectorIfSaIfEED2Ev.exit125
	ld.d	$s7, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_70:                               # %_ZNSt6vectorIfSaIfEED2Ev.exit127
	sub.d	$a1, $s1, $s4
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_71:
	bnez	$s2, .LBB0_75
# %bb.72:                               # %_ZNSt6vectorIfSaIfEED2Ev.exit129
	bnez	$s8, .LBB0_76
.LBB0_73:                               # %_ZNSt6vectorIfSaIfEED2Ev.exit131
	bnez	$s7, .LBB0_77
.LBB0_74:                               # %_ZNSt6vectorIfSaIfEED2Ev.exit133
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB0_75:
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	sub.d	$a1, $a0, $s2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	beqz	$s8, .LBB0_73
.LBB0_76:
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	sub.d	$a1, $a0, $s8
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	beqz	$s7, .LBB0_74
.LBB0_77:
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	sub.d	$a1, $a0, $s7
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	_Z3runPFviPfS_S_S_fffffRfS0_S0_EPKc, .Lfunc_end0-_Z3runPFviPfS_S_S_fffffRfS0_S0_EPKc
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
	.uleb128 .Ltmp14-.Lfunc_begin0          #     jumps to .Ltmp14
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp13-.Lfunc_begin0          # >> Call Site 11 <<
	.uleb128 .Ltmp15-.Ltmp13                #   Call between .Ltmp13 and .Ltmp15
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp15-.Lfunc_begin0          # >> Call Site 12 <<
	.uleb128 .Ltmp16-.Ltmp15                #   Call between .Ltmp15 and .Ltmp16
	.uleb128 .Ltmp17-.Lfunc_begin0          #     jumps to .Ltmp17
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp16-.Lfunc_begin0          # >> Call Site 13 <<
	.uleb128 .Ltmp18-.Ltmp16                #   Call between .Ltmp16 and .Ltmp18
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp18-.Lfunc_begin0          # >> Call Site 14 <<
	.uleb128 .Ltmp19-.Ltmp18                #   Call between .Ltmp18 and .Ltmp19
	.uleb128 .Ltmp20-.Lfunc_begin0          #     jumps to .Ltmp20
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp19-.Lfunc_begin0          # >> Call Site 15 <<
	.uleb128 .Ltmp21-.Ltmp19                #   Call between .Ltmp19 and .Ltmp21
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp21-.Lfunc_begin0          # >> Call Site 16 <<
	.uleb128 .Ltmp22-.Ltmp21                #   Call between .Ltmp21 and .Ltmp22
	.uleb128 .Ltmp23-.Lfunc_begin0          #     jumps to .Ltmp23
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp22-.Lfunc_begin0          # >> Call Site 17 <<
	.uleb128 .Lfunc_end0-.Ltmp22            #   Call between .Ltmp22 and .Lfunc_end0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
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
	ori	$a2, $zero, 2
	pcalau12i	$s0, %pc_hi20(NumIters)
	blt	$a0, $a2, .LBB1_2
# %bb.1:
	ld.d	$a0, $a1, 8
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(__isoc23_strtol)
	jirl	$ra, $ra, 0
	st.w	$a0, $s0, %pc_lo12(NumIters)
.LBB1_2:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$fp, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a1, $a0, %pc_lo12(.L.str.4)
	ori	$a2, $zero, 12
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s0, %pc_lo12(NumIters)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(_Z19GravityForceKernel4iPfS_S_S_fffffRfS0_S0_)
	ld.d	$a0, $a0, %got_pc_lo12(_Z19GravityForceKernel4iPfS_S_S_fffffRfS0_S0_)
	pcalau12i	$a1, %pc_hi20(.L.str.5)
	addi.d	$a1, $a1, %pc_lo12(.L.str.5)
	pcaddu18i	$ra, %call36(_Z3runPFviPfS_S_S_fffffRfS0_S0_EPKc)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(_Z19GravityForceKernel5iPfS_S_S_fffffRfS0_S0_)
	ld.d	$a0, $a0, %got_pc_lo12(_Z19GravityForceKernel5iPfS_S_S_fffffRfS0_S0_)
	pcalau12i	$a1, %pc_hi20(.L.str.6)
	addi.d	$a1, $a1, %pc_lo12(.L.str.6)
	pcaddu18i	$ra, %call36(_Z3runPFviPfS_S_S_fffffRfS0_S0_EPKc)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(_Z19GravityForceKernel6iPfS_S_S_fffffRfS0_S0_)
	ld.d	$a0, $a0, %got_pc_lo12(_Z19GravityForceKernel6iPfS_S_S_fffffRfS0_S0_)
	pcalau12i	$a1, %pc_hi20(.L.str.7)
	addi.d	$a1, $a1, %pc_lo12(.L.str.7)
	pcaddu18i	$ra, %call36(_Z3runPFviPfS_S_S_fffffRfS0_S0_EPKc)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.type	NumIters,@object                # @NumIters
	.data
	.globl	NumIters
	.p2align	2, 0x0
NumIters:
	.word	2000                            # 0x7d0
	.size	NumIters, 4

	.type	IListMin,@object                # @IListMin
	.globl	IListMin
	.p2align	2, 0x0
IListMin:
	.word	250                             # 0xfa
	.size	IListMin, 4

	.type	IListMax,@object                # @IListMax
	.globl	IListMax
	.p2align	2, 0x0
IListMax:
	.word	2250                            # 0x8ca
	.size	IListMax, 4

	.type	PMin,@object                    # @PMin
	.globl	PMin
	.p2align	2, 0x0
PMin:
	.word	75                              # 0x4b
	.size	PMin, 4

	.type	PMax,@object                    # @PMax
	.globl	PMax
	.p2align	2, 0x0
PMax:
	.word	150                             # 0x96
	.size	PMax, 4

	.type	SofteningLen,@object            # @SofteningLen
	.globl	SofteningLen
	.p2align	2, 0x0
SofteningLen:
	.word	0x3dcccccd                      # float 0.100000001
	.size	SofteningLen, 4

	.type	MaxSep,@object                  # @MaxSep
	.globl	MaxSep
	.p2align	2, 0x0
MaxSep:
	.word	0x404ccccd                      # float 3.20000005
	.size	MaxSep, 4

	.type	OffsetAdjFrac,@object           # @OffsetAdjFrac
	.globl	OffsetAdjFrac
	.p2align	2, 0x0
OffsetAdjFrac:
	.word	0x3dcccccd                      # float 0.100000001
	.size	OffsetAdjFrac, 4

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gravity Short-Range-Force Kernel ("
	.size	.L.str, 35

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"): "
	.size	.L.str.1, 4

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	" "
	.size	.L.str.2, 2

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"\n"
	.size	.L.str.3, 2

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"Iterations: "
	.size	.L.str.4, 13

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"4th Order"
	.size	.L.str.5, 10

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"5th Order"
	.size	.L.str.6, 10

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"6th Order"
	.size	.L.str.7, 10

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"cannot create std::vector larger than max_size()"
	.size	.L.str.8, 49

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
	.addrsig_sym _Z19GravityForceKernel4iPfS_S_S_fffffRfS0_S0_
	.addrsig_sym _Z19GravityForceKernel5iPfS_S_S_fffffRfS0_S0_
	.addrsig_sym _Z19GravityForceKernel6iPfS_S_S_fffffRfS0_S0_
	.addrsig_sym _Unwind_Resume
	.addrsig_sym _ZSt4cout
