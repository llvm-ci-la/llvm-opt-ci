	.file	"fftbench.cpp"
                                        # Start of file scope inline assembly
	.globl	_ZSt21ios_base_library_initv

                                        # End of file scope inline assembly
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function main
.LCPI0_0:
	.dword	0x3e340000002813d9              # double 4.6566128752499998E-9
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	ori	$a2, $zero, 2
	blt	$a0, $a2, .LBB0_2
# %bb.1:                                # %.preheader
	ld.d	$a0, $a1, 8
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	sltui	$s3, $a0, 1
	b	.LBB0_3
.LBB0_2:
	move	$s3, $zero
.LBB0_3:                                # %.loopexit.split
	pcalau12i	$a0, %pc_hi20(_ZTV10polynomialIdE+16)
	addi.d	$s2, $a0, %pc_lo12(_ZTV10polynomialIdE+16)
	st.d	$s2, $sp, 64
	lu12i.w	$s4, 128
	st.d	$s4, $sp, 80
	lu12i.w	$fp, 1024
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	st.d	$a0, $sp, 72
	st.d	$s2, $sp, 40
	st.d	$s4, $sp, 56
.Ltmp0:                                 # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.4:
	move	$s0, $a0
	st.d	$a0, $sp, 48
.Ltmp3:                                 # EH_LABEL
	lu12i.w	$a0, 2047
	ori	$a0, $a0, 4088
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp4:                                 # EH_LABEL
# %bb.5:                                # %_ZN10polynomialIdEC2Em.exit28.preheader
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZZL13random_doublevE4seed)
	ld.d	$a2, $a0, %pc_lo12(_ZZL13random_doublevE4seed)
	lu12i.w	$a1, 30141
	ori	$a1, $a1, 2340
	xor	$a7, $a2, $a1
	lu12i.w	$a2, 130623
	ori	$a2, $a2, 2937
	lu32i.d	$a2, 460207
	lu52i.d	$a2, $a2, 1050
	lu12i.w	$a3, -32
	ori	$a3, $a3, 3299
	lu12i.w	$a4, 4
	ori	$a4, $a4, 423
	lu12i.w	$a5, -1
	pcalau12i	$a6, %pc_hi20(.LCPI0_0)
	fld.d	$fa0, $a6, %pc_lo12(.LCPI0_0)
	ori	$a5, $a5, 1260
	lu12i.w	$a6, 524287
	ori	$a6, $a6, 4095
	.p2align	4, , 16
.LBB0_6:                                # %_ZN10polynomialIdEC2Em.exit28
                                        # =>This Inner Loop Header: Depth=1
	mulh.d	$t0, $a7, $a2
	srli.d	$t1, $t0, 63
	srai.d	$t0, $t0, 15
	add.d	$t0, $t0, $t1
	mul.d	$t1, $t0, $a3
	add.d	$a7, $t1, $a7
	mul.d	$a7, $a7, $a4
	mul.d	$t0, $t0, $a5
	add.d	$a7, $a7, $t0
	slti	$t0, $a7, 0
	add.d	$t1, $a7, $a6
	masknez	$a7, $a7, $t0
	maskeqz	$t0, $t1, $t0
	or	$a7, $t0, $a7
	movgr2fr.d	$fa1, $a7
	ffint.d.l	$fa1, $fa1
	fmul.d	$fa1, $fa1, $fa0
	fst.d	$fa1, $s1, 0
	mulh.d	$t0, $a7, $a2
	srli.d	$t1, $t0, 63
	srai.d	$t0, $t0, 15
	add.d	$t0, $t0, $t1
	mul.d	$t1, $t0, $a3
	add.d	$a7, $t1, $a7
	mul.d	$a7, $a7, $a4
	mul.d	$t0, $t0, $a5
	add.d	$a7, $a7, $t0
	slti	$t0, $a7, 0
	add.d	$t1, $a7, $a6
	masknez	$a7, $a7, $t0
	maskeqz	$t0, $t1, $t0
	or	$a7, $t0, $a7
	movgr2fr.d	$fa1, $a7
	ffint.d.l	$fa1, $fa1
	fmul.d	$fa1, $fa1, $fa0
	fst.d	$fa1, $s0, 0
	addi.d	$s1, $s1, 8
	addi.d	$s4, $s4, -1
	addi.d	$s0, $s0, 8
	bnez	$s4, .LBB0_6
# %bb.7:
	xor	$a1, $a7, $a1
	st.d	$a1, $a0, %pc_lo12(_ZZL13random_doublevE4seed)
.Ltmp6:                                 # EH_LABEL
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 64
	addi.d	$a2, $sp, 40
	pcaddu18i	$ra, %call36(_ZNK10polynomialIdEmlERKS0_)
	jirl	$ra, $ra, 0
.Ltmp7:                                 # EH_LABEL
# %bb.8:
	ld.d	$a0, $sp, 32
	lu12i.w	$a1, 255
	ori	$s1, $a1, 4095
	bne	$a0, $s1, .LBB0_10
# %bb.9:                                # %.noexc.thread
	ld.d	$a0, $sp, 24
	move	$s0, $fp
	b	.LBB0_12
.LBB0_10:                               # %_ZN10polynomialIdE7releaseEv.exit.i
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 32
	srli.d	$a0, $s1, 61
	sltu	$a0, $zero, $a0
	slli.d	$a1, $s1, 3
	masknez	$a1, $a1, $a0
	addi.w	$a2, $zero, -1
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
.Ltmp9:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp10:                                # EH_LABEL
# %bb.11:                               # %.noexc
	move	$s0, $a0
	ld.d	$a0, $sp, 24
	beqz	$s1, .LBB0_32
.LBB0_12:                               # %.lr.ph.i.i
	ori	$a2, $zero, 4
	move	$a1, $zero
	bltu	$s1, $a2, .LBB0_17
# %bb.13:                               # %.lr.ph.i.i
	sub.d	$a2, $s0, $a0
	ori	$a3, $zero, 32
	bltu	$a2, $a3, .LBB0_17
# %bb.14:                               # %vector.ph
	move	$a1, $s1
	bstrins.d	$a1, $zero, 1, 0
	addi.d	$a2, $s0, 16
	addi.d	$a3, $a0, 16
	move	$a4, $a1
	.p2align	4, , 16
.LBB0_15:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a3, -16
	vld	$vr1, $a3, 0
	vst	$vr0, $a2, -16
	vst	$vr1, $a2, 0
	addi.d	$a4, $a4, -4
	addi.d	$a2, $a2, 32
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB0_15
# %bb.16:                               # %middle.block
	beq	$s1, $a1, .LBB0_19
.LBB0_17:                               # %scalar.ph.preheader
	sub.d	$a2, $s1, $a1
	alsl.d	$a3, $a1, $s0, 3
	alsl.d	$a1, $a1, $a0, 3
	.p2align	4, , 16
.LBB0_18:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a1, 0
	fst.d	$fa0, $a3, 0
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 8
	addi.d	$a1, $a1, 8
	bnez	$a2, .LBB0_18
.LBB0_19:                               # %_ZN10polynomialIdEaSERKS0_.exit.thread
	st.d	$s2, $sp, 16
.LBB0_20:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$fp, $s0
.LBB0_21:                               # %_ZN10polynomialIdED2Ev.exit
	beqz	$s3, .LBB0_23
# %bb.22:
.Ltmp18:                                # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	movgr2fr.d	$fa0, $zero
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp19:                                # EH_LABEL
	b	.LBB0_26
.LBB0_23:
.Ltmp12:                                # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a1, $a1, %pc_lo12(.L.str.1)
	ori	$a2, $zero, 31
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp13:                                # EH_LABEL
# %bb.24:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
.Ltmp14:                                # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	movgr2fr.d	$fa0, $zero
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp15:                                # EH_LABEL
# %bb.25:                               # %_ZNSolsEd.exit38
.Ltmp16:                                # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp17:                                # EH_LABEL
.LBB0_26:                               # %_ZNSolsEd.exit
.Ltmp20:                                # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp21:                                # EH_LABEL
# %bb.27:                               # %_ZN10polynomialIdED2Ev.exit42
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 48
	st.d	$s2, $sp, 40
	beqz	$a0, .LBB0_29
# %bb.28:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB0_29:                               # %_ZN10polynomialIdED2Ev.exit44
	ld.d	$a0, $sp, 72
	st.d	$s2, $sp, 64
	beqz	$a0, .LBB0_31
# %bb.30:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB0_31:                               # %_ZN10polynomialIdED2Ev.exit46
	move	$a0, $zero
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.LBB0_32:                               # %_ZN10polynomialIdEaSERKS0_.exit
	st.d	$s2, $sp, 16
	move	$fp, $s0
	bnez	$a0, .LBB0_20
	b	.LBB0_21
.LBB0_33:
.Ltmp11:                                # EH_LABEL
	ld.d	$a1, $sp, 24
	move	$s1, $a0
	st.d	$s2, $sp, 16
	beqz	$a1, .LBB0_40
# %bb.34:
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB0_40
.LBB0_35:
.Ltmp8:                                 # EH_LABEL
	b	.LBB0_39
.LBB0_36:                               # %.thread
.Ltmp5:                                 # EH_LABEL
	move	$s1, $a0
	st.d	$s2, $sp, 40
	b	.LBB0_43
.LBB0_37:
.Ltmp2:                                 # EH_LABEL
	move	$s1, $a0
	ld.d	$a0, $sp, 72
	st.d	$s2, $sp, 64
	beqz	$a0, .LBB0_42
	b	.LBB0_44
.LBB0_38:
.Ltmp22:                                # EH_LABEL
.LBB0_39:
	move	$s1, $a0
.LBB0_40:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 48
	st.d	$s2, $sp, 40
	bnez	$s0, .LBB0_43
# %bb.41:                               # %_ZN10polynomialIdED2Ev.exit50
	ld.d	$a0, $sp, 72
	st.d	$s2, $sp, 64
	bnez	$a0, .LBB0_44
.LBB0_42:                               # %_ZN10polynomialIdED2Ev.exit52
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB0_43:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 72
	st.d	$s2, $sp, 64
	beqz	$a0, .LBB0_42
.LBB0_44:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
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
	.uleb128 .Ltmp3-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp4-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp4
	.uleb128 .Ltmp5-.Lfunc_begin0           #     jumps to .Ltmp5
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp6-.Lfunc_begin0           # >> Call Site 4 <<
	.uleb128 .Ltmp7-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp7
	.uleb128 .Ltmp8-.Lfunc_begin0           #     jumps to .Ltmp8
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp7-.Lfunc_begin0           # >> Call Site 5 <<
	.uleb128 .Ltmp9-.Ltmp7                  #   Call between .Ltmp7 and .Ltmp9
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp9-.Lfunc_begin0           # >> Call Site 6 <<
	.uleb128 .Ltmp10-.Ltmp9                 #   Call between .Ltmp9 and .Ltmp10
	.uleb128 .Ltmp11-.Lfunc_begin0          #     jumps to .Ltmp11
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp10-.Lfunc_begin0          # >> Call Site 7 <<
	.uleb128 .Ltmp18-.Ltmp10                #   Call between .Ltmp10 and .Ltmp18
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp18-.Lfunc_begin0          # >> Call Site 8 <<
	.uleb128 .Ltmp21-.Ltmp18                #   Call between .Ltmp18 and .Ltmp21
	.uleb128 .Ltmp22-.Lfunc_begin0          #     jumps to .Ltmp22
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp21-.Lfunc_begin0          # >> Call Site 9 <<
	.uleb128 .Lfunc_end0-.Ltmp21            #   Call between .Ltmp21 and .Lfunc_end0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNK10polynomialIdEmlERKS0_,"axG",@progbits,_ZNK10polynomialIdEmlERKS0_,comdat
	.weak	_ZNK10polynomialIdEmlERKS0_     # -- Begin function _ZNK10polynomialIdEmlERKS0_
	.p2align	5
	.type	_ZNK10polynomialIdEmlERKS0_,@function
_ZNK10polynomialIdEmlERKS0_:            # @_ZNK10polynomialIdEmlERKS0_
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception1
# %bb.0:
	addi.d	$sp, $sp, -208
	.cfi_def_cfa_offset 208
	st.d	$ra, $sp, 200                   # 8-byte Folded Spill
	st.d	$fp, $sp, 192                   # 8-byte Folded Spill
	st.d	$s0, $sp, 184                   # 8-byte Folded Spill
	st.d	$s1, $sp, 176                   # 8-byte Folded Spill
	st.d	$s2, $sp, 168                   # 8-byte Folded Spill
	st.d	$s3, $sp, 160                   # 8-byte Folded Spill
	st.d	$s4, $sp, 152                   # 8-byte Folded Spill
	st.d	$s5, $sp, 144                   # 8-byte Folded Spill
	st.d	$s6, $sp, 136                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	move	$s0, $a2
	move	$s1, $a1
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV10polynomialIdE+16)
	addi.d	$s2, $a0, %pc_lo12(_ZTV10polynomialIdE+16)
	ld.d	$s4, $a1, 16
	st.d	$s2, $sp, 112
	st.d	$s4, $sp, 128
	srli.d	$a0, $s4, 61
	sltu	$a0, $zero, $a0
	slli.d	$a1, $s4, 3
	masknez	$a1, $a1, $a0
	addi.w	$s3, $zero, -1
	maskeqz	$a0, $s3, $a0
	or	$a0, $a0, $a1
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 120
	beqz	$s4, .LBB1_8
# %bb.1:                                # %.lr.ph.i.i.preheader
	ld.d	$a1, $s1, 8
	ori	$a3, $zero, 4
	move	$a2, $zero
	bltu	$s4, $a3, .LBB1_6
# %bb.2:                                # %.lr.ph.i.i.preheader
	sub.d	$a3, $a0, $a1
	ori	$a4, $zero, 32
	bltu	$a3, $a4, .LBB1_6
# %bb.3:                                # %vector.ph
	move	$a2, $s4
	bstrins.d	$a2, $zero, 1, 0
	addi.d	$a3, $a0, 16
	addi.d	$a4, $a1, 16
	move	$a5, $a2
	.p2align	4, , 16
.LBB1_4:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a4, -16
	vld	$vr1, $a4, 0
	vst	$vr0, $a3, -16
	vst	$vr1, $a3, 0
	addi.d	$a5, $a5, -4
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB1_4
# %bb.5:                                # %middle.block
	beq	$s4, $a2, .LBB1_8
.LBB1_6:                                # %.lr.ph.i.i.preheader168
	sub.d	$a3, $s4, $a2
	alsl.d	$a0, $a2, $a0, 3
	alsl.d	$a1, $a2, $a1, 3
	.p2align	4, , 16
.LBB1_7:                                # %.lr.ph.i.i
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a1, 0
	fst.d	$fa0, $a0, 0
	addi.d	$a3, $a3, -1
	addi.d	$a0, $a0, 8
	addi.d	$a1, $a1, 8
	bnez	$a3, .LBB1_7
.LBB1_8:                                # %_ZN10polynomialIdEC2ERKS0_.exit
	ld.d	$s1, $s0, 16
	st.d	$s2, $sp, 88
	st.d	$s1, $sp, 104
	srli.d	$a0, $s1, 61
	sltu	$a0, $zero, $a0
	slli.d	$a1, $s1, 3
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s3, $a0
	or	$a0, $a0, $a1
.Ltmp23:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp24:                                # EH_LABEL
# %bb.9:                                # %.noexc
	st.d	$a0, $sp, 96
	beqz	$s1, .LBB1_17
# %bb.10:                               # %.lr.ph.i.i33.preheader
	ld.d	$a1, $s0, 8
	ori	$a3, $zero, 4
	move	$a2, $zero
	bltu	$s1, $a3, .LBB1_15
# %bb.11:                               # %.lr.ph.i.i33.preheader
	sub.d	$a3, $a0, $a1
	ori	$a4, $zero, 32
	bltu	$a3, $a4, .LBB1_15
# %bb.12:                               # %vector.ph107
	move	$a2, $s1
	bstrins.d	$a2, $zero, 1, 0
	addi.d	$a3, $a0, 16
	addi.d	$a4, $a1, 16
	move	$a5, $a2
	.p2align	4, , 16
.LBB1_13:                               # %vector.body110
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a4, -16
	vld	$vr1, $a4, 0
	vst	$vr0, $a3, -16
	vst	$vr1, $a3, 0
	addi.d	$a5, $a5, -4
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB1_13
# %bb.14:                               # %middle.block115
	beq	$s1, $a2, .LBB1_17
.LBB1_15:                               # %.lr.ph.i.i33.preheader167
	sub.d	$a3, $s1, $a2
	alsl.d	$a0, $a2, $a0, 3
	alsl.d	$a1, $a2, $a1, 3
	.p2align	4, , 16
.LBB1_16:                               # %.lr.ph.i.i33
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a1, 0
	fst.d	$fa0, $a0, 0
	addi.d	$a3, $a3, -1
	addi.d	$a0, $a0, 8
	addi.d	$a1, $a1, 8
	bnez	$a3, .LBB1_16
.LBB1_17:                               # %_ZN10polynomialIdEC2ERKS0_.exit36
	bgeu	$s1, $s4, .LBB1_29
# %bb.18:
.Ltmp30:                                # EH_LABEL
	addi.d	$a0, $sp, 112
	pcaddu18i	$ra, %call36(_ZN10polynomialIdE11stretch_fftEv)
	jirl	$ra, $ra, 0
.Ltmp31:                                # EH_LABEL
# %bb.19:
	move	$s0, $a0
	beqz	$a0, .LBB1_42
# %bb.20:
	ld.d	$s1, $sp, 104
	ld.d	$s5, $sp, 96
	add.d	$s4, $s1, $s0
	st.d	$s4, $sp, 104
	srli.d	$a0, $s4, 61
	sltu	$a0, $zero, $a0
	slli.d	$a1, $s4, 3
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s3, $a0
	or	$a0, $a0, $a1
.Ltmp32:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp33:                                # EH_LABEL
# %bb.21:                               # %.noexc37
	st.d	$a0, $sp, 96
	beqz	$s1, .LBB1_40
# %bb.22:                               # %.lr.ph.i.preheader
	ori	$a2, $zero, 4
	move	$a1, $zero
	bltu	$s1, $a2, .LBB1_27
# %bb.23:                               # %.lr.ph.i.preheader
	sub.d	$a2, $a0, $s5
	ori	$a3, $zero, 32
	bltu	$a2, $a3, .LBB1_27
# %bb.24:                               # %vector.ph137
	move	$a1, $s1
	bstrins.d	$a1, $zero, 1, 0
	addi.d	$a2, $a0, 16
	addi.d	$a3, $s5, 16
	move	$a4, $a1
	.p2align	4, , 16
.LBB1_25:                               # %vector.body140
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a3, -16
	vld	$vr1, $a3, 0
	vst	$vr0, $a2, -16
	vst	$vr1, $a2, 0
	addi.d	$a4, $a4, -4
	addi.d	$a2, $a2, 32
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB1_25
# %bb.26:                               # %middle.block145
	beq	$s1, $a1, .LBB1_40
.LBB1_27:                               # %.lr.ph.i.preheader165
	sub.d	$a2, $s1, $a1
	alsl.d	$a3, $a1, $a0, 3
	alsl.d	$a1, $a1, $s5, 3
	.p2align	4, , 16
.LBB1_28:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a1, 0
	fst.d	$fa0, $a3, 0
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 8
	addi.d	$a1, $a1, 8
	bnez	$a2, .LBB1_28
	b	.LBB1_40
.LBB1_29:
.Ltmp26:                                # EH_LABEL
	addi.d	$a0, $sp, 88
	pcaddu18i	$ra, %call36(_ZN10polynomialIdE11stretch_fftEv)
	jirl	$ra, $ra, 0
.Ltmp27:                                # EH_LABEL
# %bb.30:
	move	$s0, $a0
	beqz	$a0, .LBB1_42
# %bb.31:
	ld.d	$s1, $sp, 128
	ld.d	$s5, $sp, 120
	add.d	$s4, $s1, $s0
	st.d	$s4, $sp, 128
	srli.d	$a0, $s4, 61
	sltu	$a0, $zero, $a0
	slli.d	$a1, $s4, 3
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s3, $a0
	or	$a0, $a0, $a1
.Ltmp28:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp29:                                # EH_LABEL
# %bb.32:                               # %.noexc46
	st.d	$a0, $sp, 120
	beqz	$s1, .LBB1_40
# %bb.33:                               # %.lr.ph.i40.preheader
	ori	$a2, $zero, 4
	move	$a1, $zero
	bltu	$s1, $a2, .LBB1_38
# %bb.34:                               # %.lr.ph.i40.preheader
	sub.d	$a2, $a0, $s5
	ori	$a3, $zero, 32
	bltu	$a2, $a3, .LBB1_38
# %bb.35:                               # %vector.ph122
	move	$a1, $s1
	bstrins.d	$a1, $zero, 1, 0
	addi.d	$a2, $a0, 16
	addi.d	$a3, $s5, 16
	move	$a4, $a1
	.p2align	4, , 16
.LBB1_36:                               # %vector.body125
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a3, -16
	vld	$vr1, $a3, 0
	vst	$vr0, $a2, -16
	vst	$vr1, $a2, 0
	addi.d	$a4, $a4, -4
	addi.d	$a2, $a2, 32
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB1_36
# %bb.37:                               # %middle.block130
	beq	$s1, $a1, .LBB1_40
.LBB1_38:                               # %.lr.ph.i40.preheader166
	sub.d	$a2, $s1, $a1
	alsl.d	$a3, $a1, $a0, 3
	alsl.d	$a1, $a1, $s5, 3
	.p2align	4, , 16
.LBB1_39:                               # %.lr.ph.i40
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a1, 0
	fst.d	$fa0, $a3, 0
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 8
	addi.d	$a1, $a1, 8
	bnez	$a2, .LBB1_39
.LBB1_40:                               # %.preheader.i43
	bgeu	$s1, $s4, .LBB1_42
# %bb.41:                               # %_ZN10polynomialIdE7stretchEm.exit.sink.split
	alsl.d	$a0, $s1, $a0, 3
	slli.d	$a2, $s0, 3
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB1_42:                               # %_ZN10polynomialIdE7stretchEm.exit
.Ltmp35:                                # EH_LABEL
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 112
	pcaddu18i	$ra, %call36(_ZN10polynomialIdE3fftERKS0_)
	jirl	$ra, $ra, 0
.Ltmp36:                                # EH_LABEL
# %bb.43:
.Ltmp38:                                # EH_LABEL
	addi.d	$a0, $sp, 40
	addi.d	$a1, $sp, 88
	pcaddu18i	$ra, %call36(_ZN10polynomialIdE3fftERKS0_)
	jirl	$ra, $ra, 0
.Ltmp39:                                # EH_LABEL
# %bb.44:
	ld.d	$s4, $sp, 128
	beqz	$s4, .LBB1_50
# %bb.45:                               # %.lr.ph
	move	$s0, $zero
	move	$s1, $s4
	.p2align	4, , 16
.LBB1_46:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 48
	ld.d	$s5, $sp, 72
	add.d	$a1, $a0, $s0
	add.d	$s6, $s5, $s0
	fldx.d	$fa2, $a0, $s0
	fld.d	$fa3, $a1, 8
	fldx.d	$fa4, $s5, $s0
	fld.d	$fa5, $s6, 8
	fmul.d	$fa0, $fa2, $fa4
	fmul.d	$fa1, $fa3, $fa5
	fmul.d	$fa6, $fa3, $fa4
	fmul.d	$fa7, $fa2, $fa5
	fsub.d	$fa0, $fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	fadd.d	$fa1, $fa6, $fa7
	bceqz	$fcc0, .LBB1_48
.LBB1_47:                               # %_ZNSt7complexIdEmLIdEERS0_RKS_IT_E.exit
                                        #   in Loop: Header=BB1_46 Depth=1
	fstx.d	$fa0, $s5, $s0
	fst.d	$fa1, $s6, 8
	addi.d	$s1, $s1, -1
	addi.d	$s0, $s0, 16
	bnez	$s1, .LBB1_46
	b	.LBB1_50
.LBB1_48:                               #   in Loop: Header=BB1_46 Depth=1
	fcmp.cor.d	$fcc0, $fa1, $fa1
	bcnez	$fcc0, .LBB1_47
# %bb.49:                               #   in Loop: Header=BB1_46 Depth=1
	fmov.d	$fa0, $fa4
	fmov.d	$fa1, $fa5
	pcaddu18i	$ra, %call36(__muldc3)
	jirl	$ra, $ra, 0
	b	.LBB1_47
.LBB1_50:                               # %._crit_edge
.Ltmp41:                                # EH_LABEL
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 64
	pcaddu18i	$ra, %call36(_ZN10polynomialIdE11inverse_fftERKS_ISt7complexIdEE)
	jirl	$ra, $ra, 0
.Ltmp42:                                # EH_LABEL
# %bb.51:
	ld.d	$a1, $sp, 56
	ld.d	$s5, $sp, 32
	beq	$a1, $s5, .LBB1_58
# %bb.52:
	ld.d	$a0, $sp, 48
	beqz	$a0, .LBB1_54
# %bb.53:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$s5, $sp, 32
.LBB1_54:                               # %_ZN10polynomialISt7complexIdEE7releaseEv.exit.i
	st.d	$s5, $sp, 56
	srli.d	$a0, $s5, 60
	sltu	$a0, $zero, $a0
	slli.d	$s0, $s5, 4
	masknez	$a1, $s0, $a0
	maskeqz	$a0, $s3, $a0
	or	$a0, $a0, $a1
.Ltmp44:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp45:                                # EH_LABEL
# %bb.55:                               # %.noexc52
	move	$s1, $a0
	beqz	$s5, .LBB1_57
# %bb.56:                               # %.loopexit.loopexit.i.i
	move	$a0, $s1
	move	$a1, $zero
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB1_57:                               # %_ZN10polynomialISt7complexIdEE7acquireEv.exit.i
	st.d	$s1, $sp, 48
	move	$a1, $s5
.LBB1_58:
	ld.d	$a0, $sp, 24
	beqz	$a1, .LBB1_62
# %bb.59:                               # %.lr.ph.i.i50
	move	$a1, $zero
	move	$a2, $zero
	.p2align	4, , 16
.LBB1_60:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $sp, 48
	vldx	$vr0, $a0, $a1
	vstx	$vr0, $a3, $a1
	ld.d	$a3, $sp, 56
	addi.d	$a2, $a2, 1
	addi.d	$a1, $a1, 16
	bltu	$a2, $a3, .LBB1_60
# %bb.61:                               # %_ZN10polynomialISt7complexIdEEaSERKS2_.exitthread-pre-split
	ld.d	$a0, $sp, 24
.LBB1_62:                               # %_ZN10polynomialISt7complexIdEEaSERKS2_.exit
	pcalau12i	$a1, %pc_hi20(_ZTV10polynomialISt7complexIdEE+16)
	addi.d	$s0, $a1, %pc_lo12(_ZTV10polynomialISt7complexIdEE+16)
	st.d	$s0, $sp, 16
	beqz	$a0, .LBB1_64
# %bb.63:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB1_64:                               # %_ZN10polynomialISt7complexIdEED2Ev.exit
	addi.d	$s1, $s4, -1
	st.d	$s2, $fp, 0
	st.d	$zero, $fp, 8
	st.d	$s1, $fp, 16
	srli.d	$a0, $s1, 61
	sltu	$a0, $zero, $a0
	slli.d	$a1, $s1, 3
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s3, $a0
	or	$a0, $a0, $a1
.Ltmp47:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$a1, $a0
.Ltmp48:                                # EH_LABEL
# %bb.65:                               # %_ZN10polynomialIdEC2Em.exit
	ld.d	$a0, $sp, 48
	st.d	$a1, $fp, 8
	beqz	$s1, .LBB1_73
# %bb.66:                               # %.lr.ph70.preheader
	ori	$a2, $zero, 14
	bltu	$s1, $a2, .LBB1_69
# %bb.67:                               # %vector.memcheck148
	alsl.d	$a2, $s4, $a0, 4
	addi.d	$a2, $a2, -24
	bgeu	$a1, $a2, .LBB1_82
# %bb.68:                               # %vector.memcheck148
	alsl.d	$a2, $s4, $a1, 3
	addi.d	$a2, $a2, -8
	bgeu	$a0, $a2, .LBB1_82
.LBB1_69:
	move	$a2, $zero
.LBB1_70:                               # %.lr.ph70.preheader164
	nor	$a3, $a2, $zero
	add.d	$a3, $a3, $s4
	alsl.d	$a4, $a2, $a0, 4
	alsl.d	$a1, $a2, $a1, 3
	.p2align	4, , 16
.LBB1_71:                               # %.lr.ph70
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a4, 0
	fst.d	$fa0, $a1, 0
	addi.d	$a3, $a3, -1
	addi.d	$a4, $a4, 16
	addi.d	$a1, $a1, 8
	bnez	$a3, .LBB1_71
.LBB1_72:                               # %._crit_edge71.thread
	st.d	$s0, $sp, 40
	b	.LBB1_74
.LBB1_73:                               # %._crit_edge71
	st.d	$s0, $sp, 40
	beqz	$a0, .LBB1_75
.LBB1_74:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 72
	st.d	$s0, $sp, 64
	bnez	$a0, .LBB1_76
	b	.LBB1_77
.LBB1_75:                               # %_ZN10polynomialISt7complexIdEED2Ev.exit58
	ld.d	$a0, $sp, 72
	st.d	$s0, $sp, 64
	beqz	$a0, .LBB1_77
.LBB1_76:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB1_77:                               # %_ZN10polynomialISt7complexIdEED2Ev.exit60
	ld.d	$a0, $sp, 96
	st.d	$s2, $sp, 88
	beqz	$a0, .LBB1_79
# %bb.78:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB1_79:                               # %_ZN10polynomialIdED2Ev.exit
	ld.d	$a0, $sp, 120
	st.d	$s2, $sp, 112
	beqz	$a0, .LBB1_81
# %bb.80:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB1_81:                               # %_ZN10polynomialIdED2Ev.exit61
	ld.d	$s6, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 192                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 200                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 208
	ret
.LBB1_82:                               # %vector.ph152
	move	$a2, $s1
	bstrins.d	$a2, $zero, 1, 0
	addi.d	$a3, $a0, 32
	addi.d	$a4, $a1, 16
	move	$a5, $a2
	.p2align	4, , 16
.LBB1_83:                               # %vector.body155
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a3, -32
	fld.d	$fa1, $a3, -16
	fld.d	$fa2, $a3, 0
	fld.d	$fa3, $a3, 16
	vextrins.d	$vr0, $vr1, 16
	vextrins.d	$vr2, $vr3, 16
	vst	$vr0, $a4, -16
	vst	$vr2, $a4, 0
	addi.d	$a3, $a3, 64
	addi.d	$a5, $a5, -4
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB1_83
# %bb.84:                               # %middle.block158
	beq	$s1, $a2, .LBB1_72
	b	.LBB1_70
.LBB1_85:
.Ltmp46:                                # EH_LABEL
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV10polynomialISt7complexIdEE+16)
	addi.d	$a1, $a0, %pc_lo12(_ZTV10polynomialISt7complexIdEE+16)
	ld.d	$a0, $sp, 24
	st.d	$a1, $sp, 16
	beqz	$a0, .LBB1_90
# %bb.86:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB1_90
.LBB1_87:
.Ltmp49:                                # EH_LABEL
	b	.LBB1_89
.LBB1_88:
.Ltmp43:                                # EH_LABEL
.LBB1_89:
	move	$fp, $a0
.LBB1_90:
	pcalau12i	$a0, %pc_hi20(_ZTV10polynomialISt7complexIdEE+16)
	addi.d	$a1, $a0, %pc_lo12(_ZTV10polynomialISt7complexIdEE+16)
	ld.d	$a0, $sp, 48
	st.d	$a1, $sp, 40
	beqz	$a0, .LBB1_93
# %bb.91:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB1_93
.LBB1_92:
.Ltmp40:                                # EH_LABEL
	move	$fp, $a0
.LBB1_93:                               # %_ZN10polynomialISt7complexIdEED2Ev.exit63
	pcalau12i	$a0, %pc_hi20(_ZTV10polynomialISt7complexIdEE+16)
	addi.d	$a1, $a0, %pc_lo12(_ZTV10polynomialISt7complexIdEE+16)
	ld.d	$a0, $sp, 72
	st.d	$a1, $sp, 64
	bnez	$a0, .LBB1_97
# %bb.94:
	ld.d	$a0, $sp, 96
	st.d	$s2, $sp, 88
	bnez	$a0, .LBB1_98
.LBB1_95:                               # %_ZN10polynomialIdED2Ev.exit66
	ld.d	$a0, $sp, 120
	st.d	$s2, $sp, 112
	bnez	$a0, .LBB1_99
.LBB1_96:                               # %_ZN10polynomialIdED2Ev.exit67
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB1_97:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96
	st.d	$s2, $sp, 88
	beqz	$a0, .LBB1_95
.LBB1_98:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 120
	st.d	$s2, $sp, 112
	beqz	$a0, .LBB1_96
.LBB1_99:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB1_100:
.Ltmp37:                                # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 96
	st.d	$s2, $sp, 88
	beqz	$a0, .LBB1_95
	b	.LBB1_98
.LBB1_101:
.Ltmp25:                                # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 120
	st.d	$s2, $sp, 112
	beqz	$a0, .LBB1_96
	b	.LBB1_99
.LBB1_102:
.Ltmp34:                                # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 96
	st.d	$s2, $sp, 88
	beqz	$a0, .LBB1_95
	b	.LBB1_98
.Lfunc_end1:
	.size	_ZNK10polynomialIdEmlERKS0_, .Lfunc_end1-_ZNK10polynomialIdEmlERKS0_
	.cfi_endproc
	.section	.gcc_except_table._ZNK10polynomialIdEmlERKS0_,"aG",@progbits,_ZNK10polynomialIdEmlERKS0_,comdat
	.p2align	2, 0x0
GCC_except_table1:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Lfunc_begin1-.Lfunc_begin1    # >> Call Site 1 <<
	.uleb128 .Ltmp23-.Lfunc_begin1          #   Call between .Lfunc_begin1 and .Ltmp23
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp23-.Lfunc_begin1          # >> Call Site 2 <<
	.uleb128 .Ltmp24-.Ltmp23                #   Call between .Ltmp23 and .Ltmp24
	.uleb128 .Ltmp25-.Lfunc_begin1          #     jumps to .Ltmp25
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp30-.Lfunc_begin1          # >> Call Site 3 <<
	.uleb128 .Ltmp29-.Ltmp30                #   Call between .Ltmp30 and .Ltmp29
	.uleb128 .Ltmp34-.Lfunc_begin1          #     jumps to .Ltmp34
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp29-.Lfunc_begin1          # >> Call Site 4 <<
	.uleb128 .Ltmp35-.Ltmp29                #   Call between .Ltmp29 and .Ltmp35
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp35-.Lfunc_begin1          # >> Call Site 5 <<
	.uleb128 .Ltmp36-.Ltmp35                #   Call between .Ltmp35 and .Ltmp36
	.uleb128 .Ltmp37-.Lfunc_begin1          #     jumps to .Ltmp37
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp38-.Lfunc_begin1          # >> Call Site 6 <<
	.uleb128 .Ltmp39-.Ltmp38                #   Call between .Ltmp38 and .Ltmp39
	.uleb128 .Ltmp40-.Lfunc_begin1          #     jumps to .Ltmp40
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp39-.Lfunc_begin1          # >> Call Site 7 <<
	.uleb128 .Ltmp41-.Ltmp39                #   Call between .Ltmp39 and .Ltmp41
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp41-.Lfunc_begin1          # >> Call Site 8 <<
	.uleb128 .Ltmp42-.Ltmp41                #   Call between .Ltmp41 and .Ltmp42
	.uleb128 .Ltmp43-.Lfunc_begin1          #     jumps to .Ltmp43
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp42-.Lfunc_begin1          # >> Call Site 9 <<
	.uleb128 .Ltmp44-.Ltmp42                #   Call between .Ltmp42 and .Ltmp44
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp44-.Lfunc_begin1          # >> Call Site 10 <<
	.uleb128 .Ltmp45-.Ltmp44                #   Call between .Ltmp44 and .Ltmp45
	.uleb128 .Ltmp46-.Lfunc_begin1          #     jumps to .Ltmp46
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp45-.Lfunc_begin1          # >> Call Site 11 <<
	.uleb128 .Ltmp47-.Ltmp45                #   Call between .Ltmp45 and .Ltmp47
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp47-.Lfunc_begin1          # >> Call Site 12 <<
	.uleb128 .Ltmp48-.Ltmp47                #   Call between .Ltmp47 and .Ltmp48
	.uleb128 .Ltmp49-.Lfunc_begin1          #     jumps to .Ltmp49
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp48-.Lfunc_begin1          # >> Call Site 13 <<
	.uleb128 .Lfunc_end1-.Ltmp48            #   Call between .Ltmp48 and .Lfunc_end1
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN10polynomialIdED2Ev,"axG",@progbits,_ZN10polynomialIdED2Ev,comdat
	.weak	_ZN10polynomialIdED2Ev          # -- Begin function _ZN10polynomialIdED2Ev
	.p2align	5
	.type	_ZN10polynomialIdED2Ev,@function
_ZN10polynomialIdED2Ev:                 # @_ZN10polynomialIdED2Ev
	.cfi_startproc
# %bb.0:
	move	$a1, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV10polynomialIdE+16)
	addi.d	$a2, $a0, %pc_lo12(_ZTV10polynomialIdE+16)
	ld.d	$a0, $a1, 8
	st.d	$a2, $a1, 0
	beqz	$a0, .LBB2_2
# %bb.1:
	pcaddu18i	$t8, %call36(_ZdaPv)
	jr	$t8
.LBB2_2:                                # %_ZN10polynomialIdE7releaseEv.exit
	ret
.Lfunc_end2:
	.size	_ZN10polynomialIdED2Ev, .Lfunc_end2-_ZN10polynomialIdED2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN10polynomialIdED0Ev,"axG",@progbits,_ZN10polynomialIdED0Ev,comdat
	.weak	_ZN10polynomialIdED0Ev          # -- Begin function _ZN10polynomialIdED0Ev
	.p2align	5
	.type	_ZN10polynomialIdED0Ev,@function
_ZN10polynomialIdED0Ev:                 # @_ZN10polynomialIdED0Ev
	.cfi_startproc
# %bb.0:
	pcalau12i	$a1, %pc_hi20(_ZTV10polynomialIdE+16)
	addi.d	$a2, $a1, %pc_lo12(_ZTV10polynomialIdE+16)
	ld.d	$a1, $a0, 8
	st.d	$a2, $a0, 0
	beqz	$a1, .LBB3_2
# %bb.1:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
.LBB3_2:                                # %_ZN10polynomialIdED2Ev.exit
	ori	$a1, $zero, 24
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.Lfunc_end3:
	.size	_ZN10polynomialIdED0Ev, .Lfunc_end3-_ZN10polynomialIdED0Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN10polynomialIdE11stretch_fftEv,"axG",@progbits,_ZN10polynomialIdE11stretch_fftEv,comdat
	.weak	_ZN10polynomialIdE11stretch_fftEv # -- Begin function _ZN10polynomialIdE11stretch_fftEv
	.p2align	5
	.type	_ZN10polynomialIdE11stretch_fftEv,@function
_ZN10polynomialIdE11stretch_fftEv:      # @_ZN10polynomialIdE11stretch_fftEv
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
	ld.d	$s0, $a0, 16
	ori	$a2, $zero, 2
	ori	$a1, $zero, 1
	bltu	$s0, $a2, .LBB4_97
# %bb.1:
	ori	$a1, $zero, 2
	beq	$s0, $a2, .LBB4_97
# %bb.2:
	ori	$a2, $zero, 5
	ori	$a1, $zero, 4
	bltu	$s0, $a2, .LBB4_97
# %bb.3:
	ori	$a2, $zero, 9
	ori	$a1, $zero, 8
	bltu	$s0, $a2, .LBB4_97
# %bb.4:
	ori	$a2, $zero, 17
	ori	$a1, $zero, 16
	bltu	$s0, $a2, .LBB4_97
# %bb.5:
	ori	$a2, $zero, 33
	ori	$a1, $zero, 32
	bltu	$s0, $a2, .LBB4_97
# %bb.6:
	ori	$a2, $zero, 65
	ori	$a1, $zero, 64
	bltu	$s0, $a2, .LBB4_97
# %bb.7:
	ori	$a2, $zero, 129
	ori	$a1, $zero, 128
	bltu	$s0, $a2, .LBB4_97
# %bb.8:
	ori	$a2, $zero, 257
	ori	$a1, $zero, 256
	bltu	$s0, $a2, .LBB4_97
# %bb.9:
	ori	$a2, $zero, 513
	ori	$a1, $zero, 512
	bltu	$s0, $a2, .LBB4_97
# %bb.10:
	ori	$a2, $zero, 1025
	ori	$a1, $zero, 1024
	bltu	$s0, $a2, .LBB4_97
# %bb.11:
	ori	$a2, $zero, 2049
	ori	$a1, $zero, 2048
	bltu	$s0, $a2, .LBB4_97
# %bb.12:
	lu12i.w	$a1, 1
	ori	$a2, $a1, 1
	bltu	$s0, $a2, .LBB4_97
# %bb.13:
	lu12i.w	$a1, 2
	ori	$a2, $a1, 1
	bltu	$s0, $a2, .LBB4_97
# %bb.14:
	lu12i.w	$a1, 4
	ori	$a2, $a1, 1
	bltu	$s0, $a2, .LBB4_97
# %bb.15:
	lu12i.w	$a1, 8
	ori	$a2, $a1, 1
	bltu	$s0, $a2, .LBB4_97
# %bb.16:
	lu12i.w	$a1, 16
	ori	$a2, $a1, 1
	bltu	$s0, $a2, .LBB4_97
# %bb.17:
	lu12i.w	$a1, 32
	ori	$a2, $a1, 1
	bltu	$s0, $a2, .LBB4_97
# %bb.18:
	lu12i.w	$a1, 64
	ori	$a2, $a1, 1
	bltu	$s0, $a2, .LBB4_97
# %bb.19:
	lu12i.w	$a1, 128
	ori	$a2, $a1, 1
	bltu	$s0, $a2, .LBB4_97
# %bb.20:
	lu12i.w	$a1, 256
	ori	$a2, $a1, 1
	bltu	$s0, $a2, .LBB4_97
# %bb.21:
	lu12i.w	$a1, 512
	ori	$a2, $a1, 1
	bltu	$s0, $a2, .LBB4_97
# %bb.22:
	lu12i.w	$a1, 1024
	ori	$a2, $a1, 1
	bltu	$s0, $a2, .LBB4_97
# %bb.23:
	lu12i.w	$a1, 2048
	ori	$a2, $a1, 1
	bltu	$s0, $a2, .LBB4_97
# %bb.24:
	lu12i.w	$a1, 4096
	ori	$a2, $a1, 1
	bltu	$s0, $a2, .LBB4_97
# %bb.25:
	lu12i.w	$a1, 8192
	ori	$a2, $a1, 1
	bltu	$s0, $a2, .LBB4_97
# %bb.26:
	lu12i.w	$a1, 16384
	ori	$a2, $a1, 1
	bltu	$s0, $a2, .LBB4_97
# %bb.27:
	lu12i.w	$a1, 32768
	ori	$a2, $a1, 1
	bltu	$s0, $a2, .LBB4_97
# %bb.28:
	lu12i.w	$a1, 65536
	ori	$a2, $a1, 1
	bltu	$s0, $a2, .LBB4_97
# %bb.29:
	lu12i.w	$a1, 131072
	ori	$a2, $a1, 1
	bltu	$s0, $a2, .LBB4_97
# %bb.30:
	lu12i.w	$a1, 262144
	ori	$a2, $a1, 1
	bltu	$s0, $a2, .LBB4_97
# %bb.31:
	ori	$a1, $zero, 1
	bstrins.d	$a1, $a1, 32, 31
	ori	$a2, $zero, 1
	bltu	$s0, $a1, .LBB4_65
# %bb.32:
	lu32i.d	$a2, 1
	ori	$a1, $zero, 0
	bltu	$s0, $a2, .LBB4_66
# %bb.33:
	ori	$a3, $zero, 1
	lu32i.d	$a3, 2
	ori	$a2, $zero, 1
	bltu	$s0, $a3, .LBB4_67
# %bb.34:
	lu32i.d	$a2, 4
	ori	$a1, $zero, 0
	bltu	$s0, $a2, .LBB4_68
# %bb.35:
	ori	$a3, $zero, 1
	lu32i.d	$a3, 8
	ori	$a2, $zero, 1
	bltu	$s0, $a3, .LBB4_69
# %bb.36:
	lu32i.d	$a2, 16
	ori	$a1, $zero, 0
	bltu	$s0, $a2, .LBB4_70
# %bb.37:
	ori	$a3, $zero, 1
	lu32i.d	$a3, 32
	ori	$a2, $zero, 1
	bltu	$s0, $a3, .LBB4_71
# %bb.38:
	lu32i.d	$a2, 64
	ori	$a1, $zero, 0
	bltu	$s0, $a2, .LBB4_72
# %bb.39:
	ori	$a3, $zero, 1
	lu32i.d	$a3, 128
	ori	$a2, $zero, 1
	bltu	$s0, $a3, .LBB4_73
# %bb.40:
	lu32i.d	$a2, 256
	ori	$a1, $zero, 0
	bltu	$s0, $a2, .LBB4_74
# %bb.41:
	ori	$a3, $zero, 1
	lu32i.d	$a3, 512
	ori	$a2, $zero, 1
	bltu	$s0, $a3, .LBB4_75
# %bb.42:
	lu32i.d	$a2, 1024
	ori	$a1, $zero, 0
	bltu	$s0, $a2, .LBB4_76
# %bb.43:
	ori	$a3, $zero, 1
	lu32i.d	$a3, 2048
	ori	$a2, $zero, 1
	bltu	$s0, $a3, .LBB4_77
# %bb.44:
	lu32i.d	$a2, 4096
	ori	$a1, $zero, 0
	bltu	$s0, $a2, .LBB4_78
# %bb.45:
	ori	$a3, $zero, 1
	lu32i.d	$a3, 8192
	ori	$a2, $zero, 1
	bltu	$s0, $a3, .LBB4_79
# %bb.46:
	lu32i.d	$a2, 16384
	ori	$a1, $zero, 0
	bltu	$s0, $a2, .LBB4_80
# %bb.47:
	ori	$a3, $zero, 1
	lu32i.d	$a3, 32768
	ori	$a2, $zero, 1
	bltu	$s0, $a3, .LBB4_81
# %bb.48:
	lu32i.d	$a2, 65536
	ori	$a1, $zero, 0
	bltu	$s0, $a2, .LBB4_82
# %bb.49:
	ori	$a3, $zero, 1
	lu32i.d	$a3, 131072
	ori	$a2, $zero, 1
	bltu	$s0, $a3, .LBB4_83
# %bb.50:
	lu32i.d	$a2, 262144
	ori	$a1, $zero, 0
	bltu	$s0, $a2, .LBB4_84
# %bb.51:
	ori	$a3, $zero, 1
	bstrins.d	$a3, $a3, 51, 51
	ori	$a2, $zero, 1
	bltu	$s0, $a3, .LBB4_85
# %bb.52:
	lu52i.d	$a1, $a2, 1
	bltu	$s0, $a1, .LBB4_86
# %bb.53:
	ori	$a1, $zero, 1
	lu52i.d	$a2, $a1, 2
	bltu	$s0, $a2, .LBB4_87
# %bb.54:
	lu52i.d	$a1, $a1, 4
	bltu	$s0, $a1, .LBB4_88
# %bb.55:
	ori	$a1, $zero, 1
	lu52i.d	$a2, $a1, 8
	bltu	$s0, $a2, .LBB4_89
# %bb.56:
	lu52i.d	$a1, $a1, 16
	bltu	$s0, $a1, .LBB4_90
# %bb.57:
	ori	$a1, $zero, 1
	lu52i.d	$a2, $a1, 32
	bltu	$s0, $a2, .LBB4_91
# %bb.58:
	lu52i.d	$a1, $a1, 64
	bltu	$s0, $a1, .LBB4_92
# %bb.59:
	ori	$a1, $zero, 1
	lu52i.d	$a2, $a1, 128
	bltu	$s0, $a2, .LBB4_93
# %bb.60:
	lu52i.d	$a1, $a1, 256
	bltu	$s0, $a1, .LBB4_94
# %bb.61:
	ori	$a1, $zero, 1
	lu52i.d	$a2, $a1, 512
	bltu	$s0, $a2, .LBB4_95
# %bb.62:
	lu52i.d	$a1, $a1, 1024
	bltu	$s0, $a1, .LBB4_96
# %bb.63:
	ori	$a1, $zero, 1
	lu52i.d	$a1, $a1, -2048
	bgeu	$s0, $a1, .LBB4_109
# %bb.64:
	lu52i.d	$a1, $zero, -2048
	b	.LBB4_97
.LBB4_65:
	lu12i.w	$a1, -524288
	lu32i.d	$a1, 0
	b	.LBB4_97
.LBB4_66:
	lu32i.d	$a1, 1
	b	.LBB4_97
.LBB4_67:
	lu32i.d	$a1, 2
	b	.LBB4_97
.LBB4_68:
	lu32i.d	$a1, 4
	b	.LBB4_97
.LBB4_69:
	lu32i.d	$a1, 8
	b	.LBB4_97
.LBB4_70:
	lu32i.d	$a1, 16
	b	.LBB4_97
.LBB4_71:
	lu32i.d	$a1, 32
	b	.LBB4_97
.LBB4_72:
	lu32i.d	$a1, 64
	b	.LBB4_97
.LBB4_73:
	lu32i.d	$a1, 128
	b	.LBB4_97
.LBB4_74:
	lu32i.d	$a1, 256
	b	.LBB4_97
.LBB4_75:
	lu32i.d	$a1, 512
	b	.LBB4_97
.LBB4_76:
	lu32i.d	$a1, 1024
	b	.LBB4_97
.LBB4_77:
	lu32i.d	$a1, 2048
	b	.LBB4_97
.LBB4_78:
	lu32i.d	$a1, 4096
	b	.LBB4_97
.LBB4_79:
	lu32i.d	$a1, 8192
	b	.LBB4_97
.LBB4_80:
	lu32i.d	$a1, 16384
	b	.LBB4_97
.LBB4_81:
	lu32i.d	$a1, 32768
	b	.LBB4_97
.LBB4_82:
	lu32i.d	$a1, 65536
	b	.LBB4_97
.LBB4_83:
	lu32i.d	$a1, 131072
	b	.LBB4_97
.LBB4_84:
	lu32i.d	$a1, 262144
	b	.LBB4_97
.LBB4_85:
	lu32i.d	$a1, -524288
	lu52i.d	$a1, $a1, 0
	b	.LBB4_97
.LBB4_86:
	lu52i.d	$a1, $zero, 1
	b	.LBB4_97
.LBB4_87:
	lu52i.d	$a1, $zero, 2
	b	.LBB4_97
.LBB4_88:
	lu52i.d	$a1, $zero, 4
	b	.LBB4_97
.LBB4_89:
	lu52i.d	$a1, $zero, 8
	b	.LBB4_97
.LBB4_90:
	lu52i.d	$a1, $zero, 16
	b	.LBB4_97
.LBB4_91:
	lu52i.d	$a1, $zero, 32
	b	.LBB4_97
.LBB4_92:
	lu52i.d	$a1, $zero, 64
	b	.LBB4_97
.LBB4_93:
	lu52i.d	$a1, $zero, 128
	b	.LBB4_97
.LBB4_94:
	lu52i.d	$a1, $zero, 256
	b	.LBB4_97
.LBB4_95:
	lu52i.d	$a1, $zero, 512
	b	.LBB4_97
.LBB4_96:
	lu52i.d	$a1, $zero, 1024
.LBB4_97:
	slli.d	$s1, $a1, 1
	sub.d	$fp, $s1, $s0
	beq	$s1, $s0, .LBB4_108
# %bb.98:
	ld.d	$s2, $a0, 8
	st.d	$s1, $a0, 16
	srli.d	$a2, $s1, 61
	sltu	$a2, $zero, $a2
	slli.d	$a1, $a1, 4
	masknez	$a1, $a1, $a2
	addi.w	$a3, $zero, -1
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	move	$s3, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	st.d	$a0, $s3, 8
	beqz	$s0, .LBB4_106
# %bb.99:                               # %.lr.ph.i.preheader
	ori	$a2, $zero, 4
	move	$a1, $zero
	bltu	$s0, $a2, .LBB4_104
# %bb.100:                              # %.lr.ph.i.preheader
	sub.d	$a2, $a0, $s2
	ori	$a3, $zero, 32
	bltu	$a2, $a3, .LBB4_104
# %bb.101:                              # %vector.ph
	move	$a1, $s0
	bstrins.d	$a1, $zero, 1, 0
	addi.d	$a2, $a0, 16
	addi.d	$a3, $s2, 16
	move	$a4, $a1
	.p2align	4, , 16
.LBB4_102:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a3, -16
	vld	$vr1, $a3, 0
	vst	$vr0, $a2, -16
	vst	$vr1, $a2, 0
	addi.d	$a4, $a4, -4
	addi.d	$a2, $a2, 32
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB4_102
# %bb.103:                              # %middle.block
	beq	$s0, $a1, .LBB4_106
.LBB4_104:                              # %.lr.ph.i.preheader21
	sub.d	$a2, $s0, $a1
	alsl.d	$a3, $a1, $a0, 3
	alsl.d	$a1, $a1, $s2, 3
	.p2align	4, , 16
.LBB4_105:                              # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a1, 0
	fst.d	$fa0, $a3, 0
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 8
	addi.d	$a1, $a1, 8
	bnez	$a2, .LBB4_105
.LBB4_106:                              # %.preheader.i
	bgeu	$s0, $s1, .LBB4_108
# %bb.107:                              # %.lr.ph14.preheader.i
	alsl.d	$a0, $s0, $a0, 3
	slli.d	$a2, $fp, 3
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB4_108:                              # %_ZN10polynomialIdE7stretchEm.exit
	move	$a0, $fp
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB4_109:
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(__cxa_allocate_exception)
	jirl	$ra, $ra, 0
	move	$fp, $a0
.Ltmp50:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a1, $a0, %pc_lo12(.L.str.3)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt14overflow_errorC1EPKc)
	jirl	$ra, $ra, 0
.Ltmp51:                                # EH_LABEL
# %bb.110:
	pcalau12i	$a0, %got_pc_hi20(_ZTISt14overflow_error)
	ld.d	$a1, $a0, %got_pc_lo12(_ZTISt14overflow_error)
	pcalau12i	$a0, %got_pc_hi20(_ZNSt14overflow_errorD1Ev)
	ld.d	$a2, $a0, %got_pc_lo12(_ZNSt14overflow_errorD1Ev)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(__cxa_throw)
	jirl	$ra, $ra, 0
.LBB4_111:
.Ltmp52:                                # EH_LABEL
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(__cxa_free_exception)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end4:
	.size	_ZN10polynomialIdE11stretch_fftEv, .Lfunc_end4-_ZN10polynomialIdE11stretch_fftEv
	.cfi_endproc
	.section	.gcc_except_table._ZN10polynomialIdE11stretch_fftEv,"aG",@progbits,_ZN10polynomialIdE11stretch_fftEv,comdat
	.p2align	2, 0x0
GCC_except_table4:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Lfunc_begin2-.Lfunc_begin2    # >> Call Site 1 <<
	.uleb128 .Ltmp50-.Lfunc_begin2          #   Call between .Lfunc_begin2 and .Ltmp50
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp50-.Lfunc_begin2          # >> Call Site 2 <<
	.uleb128 .Ltmp51-.Ltmp50                #   Call between .Ltmp50 and .Ltmp51
	.uleb128 .Ltmp52-.Lfunc_begin2          #     jumps to .Ltmp52
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp51-.Lfunc_begin2          # >> Call Site 3 <<
	.uleb128 .Lfunc_end4-.Ltmp51            #   Call between .Ltmp51 and .Lfunc_end4
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _ZN10polynomialIdE3fftERKS0_
.LCPI5_0:
	.dword	0x4530000000100000              # double 1.9342813118337666E+25
.LCPI5_1:
	.dword	0x401921fb54442d18              # double 6.2831853071795862
	.section	.text._ZN10polynomialIdE3fftERKS0_,"axG",@progbits,_ZN10polynomialIdE3fftERKS0_,comdat
	.weak	_ZN10polynomialIdE3fftERKS0_
	.p2align	5
	.type	_ZN10polynomialIdE3fftERKS0_,@function
_ZN10polynomialIdE3fftERKS0_:           # @_ZN10polynomialIdE3fftERKS0_
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -208
	.cfi_def_cfa_offset 208
	st.d	$ra, $sp, 200                   # 8-byte Folded Spill
	st.d	$fp, $sp, 192                   # 8-byte Folded Spill
	st.d	$s0, $sp, 184                   # 8-byte Folded Spill
	st.d	$s1, $sp, 176                   # 8-byte Folded Spill
	st.d	$s2, $sp, 168                   # 8-byte Folded Spill
	st.d	$s3, $sp, 160                   # 8-byte Folded Spill
	st.d	$s4, $sp, 152                   # 8-byte Folded Spill
	st.d	$s5, $sp, 144                   # 8-byte Folded Spill
	st.d	$s6, $sp, 136                   # 8-byte Folded Spill
	st.d	$s7, $sp, 128                   # 8-byte Folded Spill
	st.d	$s8, $sp, 120                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 112                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 104                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 96                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 88                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 80                   # 8-byte Folded Spill
	fst.d	$fs5, $sp, 72                   # 8-byte Folded Spill
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
	move	$fp, $a1
	ld.d	$a1, $a1, 16
	move	$s2, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZN10polynomialIdE4log2Em)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 16
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZN10polynomialIdE4log2Em)
	jirl	$ra, $ra, 0
	ld.d	$s1, $fp, 16
	move	$s3, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV10polynomialISt7complexIdEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV10polynomialISt7complexIdEE+16)
	st.d	$a0, $s2, 0
	st.d	$s1, $s2, 16
	srli.d	$a0, $s1, 60
	sltu	$a0, $zero, $a0
	slli.d	$s4, $s1, 4
	masknez	$a1, $s4, $a0
	addi.w	$a2, $zero, -1
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	beqz	$s1, .LBB5_6
# %bb.1:                                # %.lr.ph.i
	move	$a0, $s0
	move	$a1, $zero
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	st.d	$s0, $s2, 8
	ld.d	$a1, $fp, 8
	addi.d	$a3, $s3, -1
	ori	$a2, $zero, 1
	sll.w	$a3, $a2, $a3
	.p2align	4, , 16
.LBB5_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_3 Depth 2
	slli.d	$a4, $a0, 3
	fldx.d	$fa0, $a1, $a4
	move	$a4, $zero
	ori	$a5, $zero, 1
	move	$a6, $a3
	.p2align	4, , 16
.LBB5_3:                                #   Parent Loop BB5_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a7, $a6
	and	$a6, $a5, $a0
	sltui	$a6, $a6, 1
	masknez	$a6, $a7, $a6
	or	$a4, $a6, $a4
	srli.d	$a6, $a7, 1
	slli.d	$a5, $a5, 1
	bltu	$a2, $a7, .LBB5_3
# %bb.4:                                # %_ZN10polynomialIdE9flip_bitsEmm.exit.i
                                        #   in Loop: Header=BB5_2 Depth=1
	alsl.d	$a5, $a4, $s0, 4
	slli.d	$a4, $a4, 4
	fstx.d	$fa0, $s0, $a4
	addi.d	$a0, $a0, 1
	st.d	$zero, $a5, 8
	bne	$a0, $s1, .LBB5_2
# %bb.5:                                # %_ZN10polynomialIdE11bit_reverseERKS0_.exit
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	bnez	$a0, .LBB5_7
	b	.LBB5_20
.LBB5_6:                                # %_ZN10polynomialISt7complexIdEEC2Em.exit.thread.i
	st.d	$s0, $s2, 8
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	beqz	$a0, .LBB5_20
.LBB5_7:                                # %.lr.ph61.preheader
	move	$a1, $zero
	ori	$s1, $zero, 1
	ori	$s4, $zero, 2
	pcalau12i	$a0, %pc_hi20(.LCPI5_0)
	fld.d	$fs5, $a0, %pc_lo12(.LCPI5_0)
	pcalau12i	$a0, %pc_hi20(.LCPI5_1)
	fld.d	$fs0, $a0, %pc_lo12(.LCPI5_1)
	movgr2fr.d	$fs1, $zero
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	b	.LBB5_9
	.p2align	4, , 16
.LBB5_8:                                #   in Loop: Header=BB5_9 Depth=1
	slli.d	$s4, $s4, 1
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	ld.d	$s1, $sp, 56                    # 8-byte Folded Reload
	slli.d	$s1, $s1, 1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	beq	$a1, $a0, .LBB5_20
.LBB5_9:                                # %.lr.ph61
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_10 Depth 2
                                        #       Child Loop BB5_14 Depth 3
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	srli.d	$a0, $s4, 32
	lu52i.d	$a1, $zero, 1107
	or	$a0, $a0, $a1
	movgr2fr.d	$fa0, $a0
	fsub.d	$fa0, $fa0, $fs5
	move	$a0, $s4
	lu12i.w	$a1, 275200
	bstrins.d	$a0, $a1, 63, 32
	movgr2fr.d	$fa1, $a0
	fadd.d	$fa2, $fa1, $fa0
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	fmov.d	$fa3, $fs1
	pcaddu18i	$ra, %call36(__divdc3)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(cexp)
	jirl	$ra, $ra, 0
	move	$s2, $zero
	addi.d	$s8, $s1, -1
	st.d	$s1, $sp, 56                    # 8-byte Folded Spill
	slli.d	$s5, $s1, 4
	slli.d	$s6, $s4, 4
	vldi	$vr8, -912
	fmov.d	$fs2, $fs1
	.p2align	4, , 16
.LBB5_10:                               # %.preheader
                                        #   Parent Loop BB5_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_14 Depth 3
	ld.d	$a0, $fp, 16
	addi.d	$a1, $a0, -1
	bgeu	$a1, $s2, .LBB5_13
.LBB5_11:                               # %._crit_edge
                                        #   in Loop: Header=BB5_10 Depth=2
	fmul.d	$fa2, $fa0, $ft0
	fmul.d	$fa3, $fa1, $fs2
	fmul.d	$fa4, $fa1, $ft0
	fmul.d	$fa5, $fa0, $fs2
	fsub.d	$fa2, $fa2, $fa3
	fcmp.cor.d	$fcc0, $fa2, $fa2
	fadd.d	$fa3, $fa4, $fa5
	bceqz	$fcc0, .LBB5_18
.LBB5_12:                               # %_ZNSt7complexIdEmLIdEERS0_RKS_IT_E.exit
                                        #   in Loop: Header=BB5_10 Depth=2
	addi.d	$s2, $s2, 1
	addi.d	$s0, $s0, 16
	fmov.d	$fs2, $fa3
	fmov.d	$ft0, $fa2
	bgeu	$s8, $s2, .LBB5_10
	b	.LBB5_8
	.p2align	4, , 16
.LBB5_13:                               # %.lr.ph.preheader
                                        #   in Loop: Header=BB5_10 Depth=2
	move	$s1, $s0
	move	$s7, $s2
	.p2align	4, , 16
.LBB5_14:                               # %.lr.ph
                                        #   Parent Loop BB5_9 Depth=1
                                        #     Parent Loop BB5_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$s3, $s1, $s5
	fldx.d	$fa2, $s1, $s5
	fld.d	$fa3, $s3, 8
	fmul.d	$fa4, $ft0, $fa2
	fmul.d	$fa5, $fs2, $fa3
	fmul.d	$fa6, $ft0, $fa3
	fmul.d	$fa7, $fs2, $fa2
	fsub.d	$fa4, $fa4, $fa5
	fcmp.cor.d	$fcc0, $fa4, $fa4
	fadd.d	$fa5, $fa7, $fa6
	bceqz	$fcc0, .LBB5_16
.LBB5_15:                               #   in Loop: Header=BB5_14 Depth=3
	fld.d	$fa2, $s1, 0
	fld.d	$fa3, $s1, 8
	fadd.d	$fa6, $fa4, $fa2
	fadd.d	$fa7, $fa5, $fa3
	fst.d	$fa6, $s1, 0
	fst.d	$fa7, $s1, 8
	fsub.d	$fa2, $fa2, $fa4
	fsub.d	$fa3, $fa3, $fa5
	fst.d	$fa2, $s3, 0
	fst.d	$fa3, $s3, 8
	add.d	$s7, $s7, $s4
	addi.d	$a1, $a0, -1
	add.d	$s1, $s1, $s6
	bgeu	$a1, $s7, .LBB5_14
	b	.LBB5_11
.LBB5_16:                               #   in Loop: Header=BB5_14 Depth=3
	fcmp.cor.d	$fcc0, $fa5, $fa5
	bcnez	$fcc0, .LBB5_15
# %bb.17:                               #   in Loop: Header=BB5_14 Depth=3
	fmov.d	$fs4, $fa0
	fmov.d	$fa0, $ft0
	fmov.d	$fs3, $fa1
	fmov.d	$fa1, $fs2
	vst	$vr8, $sp, 16                   # 16-byte Folded Spill
	pcaddu18i	$ra, %call36(__muldc3)
	jirl	$ra, $ra, 0
	vld	$vr8, $sp, 16                   # 16-byte Folded Reload
	ld.d	$a0, $fp, 16
	fmov.d	$fa4, $fa0
	fmov.d	$fa0, $fs4
	fmov.d	$fa5, $fa1
	fmov.d	$fa1, $fs3
	b	.LBB5_15
.LBB5_18:                               #   in Loop: Header=BB5_10 Depth=2
	fcmp.cor.d	$fcc0, $fa3, $fa3
	bcnez	$fcc0, .LBB5_12
# %bb.19:                               #   in Loop: Header=BB5_10 Depth=2
	fmov.d	$fs4, $fa0
	fmov.d	$fa0, $ft0
	fmov.d	$fs3, $fa1
	fmov.d	$fa1, $fs2
	fmov.d	$fa2, $fs4
	fmov.d	$fa3, $fs3
	pcaddu18i	$ra, %call36(__muldc3)
	jirl	$ra, $ra, 0
	fmov.d	$fa2, $fa0
	fmov.d	$fa0, $fs4
	fmov.d	$fa3, $fa1
	fmov.d	$fa1, $fs3
	b	.LBB5_12
.LBB5_20:                               # %._crit_edge62
	fld.d	$fs5, $sp, 72                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 80                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 88                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 96                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 104                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 112                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 192                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 200                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 208
	ret
.Lfunc_end5:
	.size	_ZN10polynomialIdE3fftERKS0_, .Lfunc_end5-_ZN10polynomialIdE3fftERKS0_
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _ZN10polynomialIdE11inverse_fftERKS_ISt7complexIdEE
.LCPI6_0:
	.dword	0x4530000000100000              # double 1.9342813118337666E+25
.LCPI6_1:
	.dword	0xc01921fb54442d18              # double -6.2831853071795862
	.section	.text._ZN10polynomialIdE11inverse_fftERKS_ISt7complexIdEE,"axG",@progbits,_ZN10polynomialIdE11inverse_fftERKS_ISt7complexIdEE,comdat
	.weak	_ZN10polynomialIdE11inverse_fftERKS_ISt7complexIdEE
	.p2align	5
	.type	_ZN10polynomialIdE11inverse_fftERKS_ISt7complexIdEE,@function
_ZN10polynomialIdE11inverse_fftERKS_ISt7complexIdEE: # @_ZN10polynomialIdE11inverse_fftERKS_ISt7complexIdEE
	.cfi_startproc
# %bb.0:
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
	fst.d	$fs0, $sp, 128                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 120                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 112                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 104                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 96                   # 8-byte Folded Spill
	fst.d	$fs5, $sp, 88                   # 8-byte Folded Spill
	fst.d	$fs6, $sp, 80                   # 8-byte Folded Spill
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
	move	$s0, $a1
	ld.d	$a1, $a1, 16
	move	$s2, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZN10polynomialIdE4log2Em)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 16
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZN10polynomialIdE4log2Em)
	jirl	$ra, $ra, 0
	ld.d	$fp, $s0, 16
	move	$s3, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV10polynomialISt7complexIdEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV10polynomialISt7complexIdEE+16)
	st.d	$a0, $s2, 0
	st.d	$fp, $s2, 16
	srli.d	$a0, $fp, 60
	sltu	$a0, $zero, $a0
	slli.d	$s4, $fp, 4
	masknez	$a1, $s4, $a0
	addi.w	$a2, $zero, -1
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	beqz	$fp, .LBB6_7
# %bb.1:                                # %.lr.ph.i
	move	$a0, $s1
	move	$a1, $zero
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	st.d	$s1, $s2, 8
	ld.d	$a1, $s0, 8
	addi.d	$a3, $s3, -1
	ori	$a2, $zero, 1
	sll.w	$a3, $a2, $a3
	.p2align	4, , 16
.LBB6_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_3 Depth 2
	slli.d	$a4, $a0, 4
	vldx	$vr0, $a1, $a4
	move	$a4, $zero
	ori	$a5, $zero, 1
	move	$a6, $a3
	.p2align	4, , 16
.LBB6_3:                                #   Parent Loop BB6_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a7, $a6
	and	$a6, $a5, $a0
	sltui	$a6, $a6, 1
	masknez	$a6, $a7, $a6
	or	$a4, $a6, $a4
	srli.d	$a6, $a7, 1
	slli.d	$a5, $a5, 1
	bltu	$a2, $a7, .LBB6_3
# %bb.4:                                # %_ZN10polynomialIdE9flip_bitsEmm.exit.i
                                        #   in Loop: Header=BB6_2 Depth=1
	slli.d	$a4, $a4, 4
	addi.d	$a0, $a0, 1
	vstx	$vr0, $s1, $a4
	bne	$a0, $fp, .LBB6_2
# %bb.5:                                # %_ZN10polynomialIdE11bit_reverseERKS_ISt7complexIdEE.exit
	pcalau12i	$a2, %pc_hi20(.LCPI6_0)
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	bnez	$a0, .LBB6_8
.LBB6_6:                                # %.preheader
	bnez	$fp, .LBB6_22
	b	.LBB6_24
.LBB6_7:                                # %_ZN10polynomialISt7complexIdEEC2Em.exit.thread.i
	st.d	$s1, $s2, 8
	pcalau12i	$a2, %pc_hi20(.LCPI6_0)
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	beqz	$a0, .LBB6_6
.LBB6_8:                                # %.lr.ph77.preheader
	move	$a1, $zero
	ori	$fp, $zero, 1
	ori	$s6, $zero, 2
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	fld.d	$fs6, $a2, %pc_lo12(.LCPI6_0)
	pcalau12i	$a0, %pc_hi20(.LCPI6_1)
	fld.d	$fs0, $a0, %pc_lo12(.LCPI6_1)
	movgr2fr.d	$fs1, $zero
	fneg.d	$fs2, $fs1
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	b	.LBB6_10
	.p2align	4, , 16
.LBB6_9:                                #   in Loop: Header=BB6_10 Depth=1
	slli.d	$s6, $s6, 1
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	slli.d	$fp, $fp, 1
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	beq	$a1, $a0, .LBB6_21
.LBB6_10:                               # %.lr.ph77
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_11 Depth 2
                                        #       Child Loop BB6_15 Depth 3
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	srli.d	$a0, $s6, 32
	lu52i.d	$a1, $zero, 1107
	or	$a0, $a0, $a1
	movgr2fr.d	$fa0, $a0
	fsub.d	$fa0, $fa0, $fs6
	move	$a0, $s6
	lu12i.w	$a1, 275200
	bstrins.d	$a0, $a1, 63, 32
	movgr2fr.d	$fa1, $a0
	fadd.d	$fa2, $fa1, $fa0
	fmov.d	$fa0, $fs2
	fmov.d	$fa1, $fs0
	fmov.d	$fa3, $fs1
	pcaddu18i	$ra, %call36(__divdc3)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(cexp)
	jirl	$ra, $ra, 0
	move	$s4, $zero
	addi.d	$s3, $fp, -1
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	slli.d	$s2, $fp, 4
	slli.d	$s7, $s6, 4
	vldi	$vr8, -912
	fmov.d	$fs3, $fs1
	.p2align	4, , 16
.LBB6_11:                               # %.preheader68
                                        #   Parent Loop BB6_10 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_15 Depth 3
	ld.d	$a0, $s0, 16
	addi.d	$a1, $a0, -1
	bgeu	$a1, $s4, .LBB6_14
.LBB6_12:                               # %._crit_edge
                                        #   in Loop: Header=BB6_11 Depth=2
	fmul.d	$fa2, $fa0, $ft0
	fmul.d	$fa3, $fa1, $fs3
	fmul.d	$fa4, $fa1, $ft0
	fmul.d	$fa5, $fa0, $fs3
	fsub.d	$fa2, $fa2, $fa3
	fcmp.cor.d	$fcc0, $fa2, $fa2
	fadd.d	$fa3, $fa4, $fa5
	bceqz	$fcc0, .LBB6_19
.LBB6_13:                               # %_ZNSt7complexIdEmLIdEERS0_RKS_IT_E.exit
                                        #   in Loop: Header=BB6_11 Depth=2
	addi.d	$s4, $s4, 1
	addi.d	$s1, $s1, 16
	fmov.d	$fs3, $fa3
	fmov.d	$ft0, $fa2
	bgeu	$s3, $s4, .LBB6_11
	b	.LBB6_9
	.p2align	4, , 16
.LBB6_14:                               # %.lr.ph.preheader
                                        #   in Loop: Header=BB6_11 Depth=2
	move	$fp, $s1
	move	$s8, $s4
	.p2align	4, , 16
.LBB6_15:                               # %.lr.ph
                                        #   Parent Loop BB6_10 Depth=1
                                        #     Parent Loop BB6_11 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$s5, $fp, $s2
	fldx.d	$fa2, $fp, $s2
	fld.d	$fa3, $s5, 8
	fmul.d	$fa4, $ft0, $fa2
	fmul.d	$fa5, $fs3, $fa3
	fmul.d	$fa6, $ft0, $fa3
	fmul.d	$fa7, $fs3, $fa2
	fsub.d	$fa4, $fa4, $fa5
	fcmp.cor.d	$fcc0, $fa4, $fa4
	fadd.d	$fa5, $fa7, $fa6
	bceqz	$fcc0, .LBB6_17
.LBB6_16:                               #   in Loop: Header=BB6_15 Depth=3
	fld.d	$fa2, $fp, 0
	fld.d	$fa3, $fp, 8
	fadd.d	$fa6, $fa4, $fa2
	fadd.d	$fa7, $fa5, $fa3
	fst.d	$fa6, $fp, 0
	fst.d	$fa7, $fp, 8
	fsub.d	$fa2, $fa2, $fa4
	fsub.d	$fa3, $fa3, $fa5
	fst.d	$fa2, $s5, 0
	fst.d	$fa3, $s5, 8
	add.d	$s8, $s8, $s6
	addi.d	$a1, $a0, -1
	add.d	$fp, $fp, $s7
	bgeu	$a1, $s8, .LBB6_15
	b	.LBB6_12
.LBB6_17:                               #   in Loop: Header=BB6_15 Depth=3
	fcmp.cor.d	$fcc0, $fa5, $fa5
	bcnez	$fcc0, .LBB6_16
# %bb.18:                               #   in Loop: Header=BB6_15 Depth=3
	fmov.d	$fs5, $fa0
	fmov.d	$fa0, $ft0
	fmov.d	$fs4, $fa1
	fmov.d	$fa1, $fs3
	vst	$vr8, $sp, 16                   # 16-byte Folded Spill
	pcaddu18i	$ra, %call36(__muldc3)
	jirl	$ra, $ra, 0
	vld	$vr8, $sp, 16                   # 16-byte Folded Reload
	ld.d	$a0, $s0, 16
	fmov.d	$fa4, $fa0
	fmov.d	$fa0, $fs5
	fmov.d	$fa5, $fa1
	fmov.d	$fa1, $fs4
	b	.LBB6_16
.LBB6_19:                               #   in Loop: Header=BB6_11 Depth=2
	fcmp.cor.d	$fcc0, $fa3, $fa3
	bcnez	$fcc0, .LBB6_13
# %bb.20:                               #   in Loop: Header=BB6_11 Depth=2
	fmov.d	$fs5, $fa0
	fmov.d	$fa0, $ft0
	fmov.d	$fs4, $fa1
	fmov.d	$fa1, $fs3
	fmov.d	$fa2, $fs5
	fmov.d	$fa3, $fs4
	pcaddu18i	$ra, %call36(__muldc3)
	jirl	$ra, $ra, 0
	fmov.d	$fa2, $fa0
	fmov.d	$fa0, $fs5
	fmov.d	$fa3, $fa1
	fmov.d	$fa1, $fs4
	b	.LBB6_13
.LBB6_21:                               # %.preheader.loopexit
	ld.d	$fp, $s0, 16
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	beqz	$fp, .LBB6_24
.LBB6_22:                               # %.lr.ph79
	move	$a0, $zero
	srli.d	$a1, $fp, 32
	fld.d	$fa0, $a2, %pc_lo12(.LCPI6_0)
	lu52i.d	$a2, $zero, 1107
	or	$a1, $a1, $a2
	movgr2fr.d	$fa1, $a1
	fsub.d	$fa0, $fa1, $fa0
	move	$a1, $fp
	lu12i.w	$a2, 275200
	bstrins.d	$a1, $a2, 63, 32
	movgr2fr.d	$fa1, $a1
	fadd.d	$fa0, $fa1, $fa0
	vreplvei.d	$vr0, $vr0, 0
	.p2align	4, , 16
.LBB6_23:                               # =>This Inner Loop Header: Depth=1
	vld	$vr1, $s1, 0
	vfdiv.d	$vr1, $vr1, $vr0
	vst	$vr1, $s1, 0
	addi.d	$a0, $a0, 1
	addi.d	$s1, $s1, 16
	bltu	$a0, $fp, .LBB6_23
.LBB6_24:                               # %._crit_edge80
	fld.d	$fs6, $sp, 80                   # 8-byte Folded Reload
	fld.d	$fs5, $sp, 88                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 96                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 104                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 112                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 120                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 128                  # 8-byte Folded Reload
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
.Lfunc_end6:
	.size	_ZN10polynomialIdE11inverse_fftERKS_ISt7complexIdEE, .Lfunc_end6-_ZN10polynomialIdE11inverse_fftERKS_ISt7complexIdEE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN10polynomialISt7complexIdEED2Ev,"axG",@progbits,_ZN10polynomialISt7complexIdEED2Ev,comdat
	.weak	_ZN10polynomialISt7complexIdEED2Ev # -- Begin function _ZN10polynomialISt7complexIdEED2Ev
	.p2align	5
	.type	_ZN10polynomialISt7complexIdEED2Ev,@function
_ZN10polynomialISt7complexIdEED2Ev:     # @_ZN10polynomialISt7complexIdEED2Ev
# %bb.0:
	move	$a1, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV10polynomialISt7complexIdEE+16)
	addi.d	$a2, $a0, %pc_lo12(_ZTV10polynomialISt7complexIdEE+16)
	ld.d	$a0, $a1, 8
	st.d	$a2, $a1, 0
	beqz	$a0, .LBB7_2
# %bb.1:
	pcaddu18i	$t8, %call36(_ZdaPv)
	jr	$t8
.LBB7_2:                                # %_ZN10polynomialISt7complexIdEE7releaseEv.exit
	ret
.Lfunc_end7:
	.size	_ZN10polynomialISt7complexIdEED2Ev, .Lfunc_end7-_ZN10polynomialISt7complexIdEED2Ev
                                        # -- End function
	.section	.text._ZN10polynomialIdE4log2Em,"axG",@progbits,_ZN10polynomialIdE4log2Em,comdat
	.weak	_ZN10polynomialIdE4log2Em       # -- Begin function _ZN10polynomialIdE4log2Em
	.p2align	5
	.type	_ZN10polynomialIdE4log2Em,@function
_ZN10polynomialIdE4log2Em:              # @_ZN10polynomialIdE4log2Em
# %bb.0:
	ori	$a2, $zero, 2
	bltu	$a0, $a2, .LBB8_65
# %bb.1:
	ori	$a1, $zero, 1
	beq	$a0, $a2, .LBB8_64
# %bb.2:
	ori	$a2, $zero, 5
	ori	$a1, $zero, 2
	bltu	$a0, $a2, .LBB8_64
# %bb.3:
	ori	$a2, $zero, 9
	ori	$a1, $zero, 3
	bltu	$a0, $a2, .LBB8_64
# %bb.4:
	ori	$a2, $zero, 17
	ori	$a1, $zero, 4
	bltu	$a0, $a2, .LBB8_64
# %bb.5:
	ori	$a2, $zero, 33
	ori	$a1, $zero, 5
	bltu	$a0, $a2, .LBB8_64
# %bb.6:
	ori	$a2, $zero, 65
	ori	$a1, $zero, 6
	bltu	$a0, $a2, .LBB8_64
# %bb.7:
	ori	$a2, $zero, 129
	ori	$a1, $zero, 7
	bltu	$a0, $a2, .LBB8_64
# %bb.8:
	ori	$a2, $zero, 257
	ori	$a1, $zero, 8
	bltu	$a0, $a2, .LBB8_64
# %bb.9:
	ori	$a2, $zero, 513
	ori	$a1, $zero, 9
	bltu	$a0, $a2, .LBB8_64
# %bb.10:
	ori	$a2, $zero, 1025
	ori	$a1, $zero, 10
	bltu	$a0, $a2, .LBB8_64
# %bb.11:
	ori	$a2, $zero, 2049
	ori	$a1, $zero, 11
	bltu	$a0, $a2, .LBB8_64
# %bb.12:
	lu12i.w	$a1, 1
	ori	$a2, $a1, 1
	ori	$a1, $zero, 12
	bltu	$a0, $a2, .LBB8_64
# %bb.13:
	lu12i.w	$a1, 2
	ori	$a2, $a1, 1
	ori	$a1, $zero, 13
	bltu	$a0, $a2, .LBB8_64
# %bb.14:
	lu12i.w	$a1, 4
	ori	$a2, $a1, 1
	ori	$a1, $zero, 14
	bltu	$a0, $a2, .LBB8_64
# %bb.15:
	lu12i.w	$a1, 8
	ori	$a2, $a1, 1
	ori	$a1, $zero, 15
	bltu	$a0, $a2, .LBB8_64
# %bb.16:
	lu12i.w	$a1, 16
	ori	$a2, $a1, 1
	ori	$a1, $zero, 16
	bltu	$a0, $a2, .LBB8_64
# %bb.17:
	lu12i.w	$a1, 32
	ori	$a2, $a1, 1
	ori	$a1, $zero, 17
	bltu	$a0, $a2, .LBB8_64
# %bb.18:
	lu12i.w	$a1, 64
	ori	$a2, $a1, 1
	ori	$a1, $zero, 18
	bltu	$a0, $a2, .LBB8_64
# %bb.19:
	lu12i.w	$a1, 128
	ori	$a2, $a1, 1
	ori	$a1, $zero, 19
	bltu	$a0, $a2, .LBB8_64
# %bb.20:
	lu12i.w	$a1, 256
	ori	$a2, $a1, 1
	ori	$a1, $zero, 20
	bltu	$a0, $a2, .LBB8_64
# %bb.21:
	lu12i.w	$a1, 512
	ori	$a2, $a1, 1
	ori	$a1, $zero, 21
	bltu	$a0, $a2, .LBB8_64
# %bb.22:
	lu12i.w	$a1, 1024
	ori	$a2, $a1, 1
	ori	$a1, $zero, 22
	bltu	$a0, $a2, .LBB8_64
# %bb.23:
	lu12i.w	$a1, 2048
	ori	$a2, $a1, 1
	ori	$a1, $zero, 23
	bltu	$a0, $a2, .LBB8_64
# %bb.24:
	lu12i.w	$a1, 4096
	ori	$a2, $a1, 1
	ori	$a1, $zero, 24
	bltu	$a0, $a2, .LBB8_64
# %bb.25:
	lu12i.w	$a1, 8192
	ori	$a2, $a1, 1
	ori	$a1, $zero, 25
	bltu	$a0, $a2, .LBB8_64
# %bb.26:
	lu12i.w	$a1, 16384
	ori	$a2, $a1, 1
	ori	$a1, $zero, 26
	bltu	$a0, $a2, .LBB8_64
# %bb.27:
	lu12i.w	$a1, 32768
	ori	$a2, $a1, 1
	ori	$a1, $zero, 27
	bltu	$a0, $a2, .LBB8_64
# %bb.28:
	lu12i.w	$a1, 65536
	ori	$a2, $a1, 1
	ori	$a1, $zero, 28
	bltu	$a0, $a2, .LBB8_64
# %bb.29:
	lu12i.w	$a1, 131072
	ori	$a2, $a1, 1
	ori	$a1, $zero, 29
	bltu	$a0, $a2, .LBB8_64
# %bb.30:
	lu12i.w	$a1, 262144
	ori	$a2, $a1, 1
	ori	$a1, $zero, 30
	bltu	$a0, $a2, .LBB8_64
# %bb.31:
	ori	$a1, $zero, 31
	ori	$a3, $zero, 1
	bstrins.d	$a3, $a3, 32, 31
	ori	$a2, $zero, 1
	bltu	$a0, $a3, .LBB8_64
# %bb.32:
	lu32i.d	$a2, 1
	ori	$a1, $zero, 32
	bltu	$a0, $a2, .LBB8_64
# %bb.33:
	ori	$a1, $zero, 33
	ori	$a3, $zero, 1
	lu32i.d	$a3, 2
	ori	$a2, $zero, 1
	bltu	$a0, $a3, .LBB8_64
# %bb.34:
	lu32i.d	$a2, 4
	ori	$a1, $zero, 34
	bltu	$a0, $a2, .LBB8_64
# %bb.35:
	ori	$a1, $zero, 35
	ori	$a3, $zero, 1
	lu32i.d	$a3, 8
	ori	$a2, $zero, 1
	bltu	$a0, $a3, .LBB8_64
# %bb.36:
	lu32i.d	$a2, 16
	ori	$a1, $zero, 36
	bltu	$a0, $a2, .LBB8_64
# %bb.37:
	ori	$a1, $zero, 37
	ori	$a3, $zero, 1
	lu32i.d	$a3, 32
	ori	$a2, $zero, 1
	bltu	$a0, $a3, .LBB8_64
# %bb.38:
	lu32i.d	$a2, 64
	ori	$a1, $zero, 38
	bltu	$a0, $a2, .LBB8_64
# %bb.39:
	ori	$a1, $zero, 39
	ori	$a3, $zero, 1
	lu32i.d	$a3, 128
	ori	$a2, $zero, 1
	bltu	$a0, $a3, .LBB8_64
# %bb.40:
	lu32i.d	$a2, 256
	ori	$a1, $zero, 40
	bltu	$a0, $a2, .LBB8_64
# %bb.41:
	ori	$a1, $zero, 41
	ori	$a3, $zero, 1
	lu32i.d	$a3, 512
	ori	$a2, $zero, 1
	bltu	$a0, $a3, .LBB8_64
# %bb.42:
	lu32i.d	$a2, 1024
	ori	$a1, $zero, 42
	bltu	$a0, $a2, .LBB8_64
# %bb.43:
	ori	$a1, $zero, 43
	ori	$a3, $zero, 1
	lu32i.d	$a3, 2048
	ori	$a2, $zero, 1
	bltu	$a0, $a3, .LBB8_64
# %bb.44:
	lu32i.d	$a2, 4096
	ori	$a1, $zero, 44
	bltu	$a0, $a2, .LBB8_64
# %bb.45:
	ori	$a1, $zero, 45
	ori	$a3, $zero, 1
	lu32i.d	$a3, 8192
	ori	$a2, $zero, 1
	bltu	$a0, $a3, .LBB8_64
# %bb.46:
	lu32i.d	$a2, 16384
	ori	$a1, $zero, 46
	bltu	$a0, $a2, .LBB8_64
# %bb.47:
	ori	$a1, $zero, 47
	ori	$a3, $zero, 1
	lu32i.d	$a3, 32768
	ori	$a2, $zero, 1
	bltu	$a0, $a3, .LBB8_64
# %bb.48:
	lu32i.d	$a2, 65536
	ori	$a1, $zero, 48
	bltu	$a0, $a2, .LBB8_64
# %bb.49:
	ori	$a1, $zero, 49
	ori	$a3, $zero, 1
	lu32i.d	$a3, 131072
	ori	$a2, $zero, 1
	bltu	$a0, $a3, .LBB8_64
# %bb.50:
	lu32i.d	$a2, 262144
	ori	$a1, $zero, 50
	bltu	$a0, $a2, .LBB8_64
# %bb.51:
	ori	$a1, $zero, 51
	ori	$a3, $zero, 1
	bstrins.d	$a3, $a3, 51, 51
	ori	$a2, $zero, 1
	bltu	$a0, $a3, .LBB8_64
# %bb.52:
	lu52i.d	$a2, $a2, 1
	ori	$a1, $zero, 52
	bltu	$a0, $a2, .LBB8_64
# %bb.53:
	ori	$a2, $zero, 1
	lu52i.d	$a3, $a2, 2
	ori	$a1, $zero, 53
	bltu	$a0, $a3, .LBB8_64
# %bb.54:
	lu52i.d	$a2, $a2, 4
	ori	$a1, $zero, 54
	bltu	$a0, $a2, .LBB8_64
# %bb.55:
	ori	$a2, $zero, 1
	lu52i.d	$a3, $a2, 8
	ori	$a1, $zero, 55
	bltu	$a0, $a3, .LBB8_64
# %bb.56:
	lu52i.d	$a2, $a2, 16
	ori	$a1, $zero, 56
	bltu	$a0, $a2, .LBB8_64
# %bb.57:
	ori	$a2, $zero, 1
	lu52i.d	$a3, $a2, 32
	ori	$a1, $zero, 57
	bltu	$a0, $a3, .LBB8_64
# %bb.58:
	lu52i.d	$a2, $a2, 64
	ori	$a1, $zero, 58
	bltu	$a0, $a2, .LBB8_64
# %bb.59:
	ori	$a2, $zero, 1
	lu52i.d	$a3, $a2, 128
	ori	$a1, $zero, 59
	bltu	$a0, $a3, .LBB8_64
# %bb.60:
	lu52i.d	$a2, $a2, 256
	ori	$a1, $zero, 60
	bltu	$a0, $a2, .LBB8_64
# %bb.61:
	ori	$a2, $zero, 1
	lu52i.d	$a3, $a2, 512
	ori	$a1, $zero, 61
	bltu	$a0, $a3, .LBB8_64
# %bb.62:
	lu52i.d	$a2, $a2, 1024
	ori	$a1, $zero, 62
	bltu	$a0, $a2, .LBB8_64
# %bb.63:
	lu52i.d	$a1, $zero, -2048
	sltu	$a0, $a1, $a0
	addi.d	$a1, $a0, 63
.LBB8_64:
	move	$a0, $a1
	ret
.LBB8_65:
	move	$a0, $zero
	ret
.Lfunc_end8:
	.size	_ZN10polynomialIdE4log2Em, .Lfunc_end8-_ZN10polynomialIdE4log2Em
                                        # -- End function
	.section	.text._ZN10polynomialISt7complexIdEED0Ev,"axG",@progbits,_ZN10polynomialISt7complexIdEED0Ev,comdat
	.weak	_ZN10polynomialISt7complexIdEED0Ev # -- Begin function _ZN10polynomialISt7complexIdEED0Ev
	.p2align	5
	.type	_ZN10polynomialISt7complexIdEED0Ev,@function
_ZN10polynomialISt7complexIdEED0Ev:     # @_ZN10polynomialISt7complexIdEED0Ev
# %bb.0:
	pcalau12i	$a1, %pc_hi20(_ZTV10polynomialISt7complexIdEE+16)
	addi.d	$a2, $a1, %pc_lo12(_ZTV10polynomialISt7complexIdEE+16)
	ld.d	$a1, $a0, 8
	st.d	$a2, $a0, 0
	beqz	$a1, .LBB9_2
# %bb.1:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
.LBB9_2:                                # %_ZN10polynomialISt7complexIdEED2Ev.exit
	ori	$a1, $zero, 24
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.Lfunc_end9:
	.size	_ZN10polynomialISt7complexIdEED0Ev, .Lfunc_end9-_ZN10polynomialISt7complexIdEED0Ev
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"-ga"
	.size	.L.str, 4

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"\nfftbench (Std. C++) run time: "
	.size	.L.str.1, 32

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"\n\n"
	.size	.L.str.2, 3

	.type	_ZZL13random_doublevE4seed,@object # @_ZZL13random_doublevE4seed
	.data
	.p2align	3, 0x0
_ZZL13random_doublevE4seed:
	.dword	1325                            # 0x52d
	.size	_ZZL13random_doublevE4seed, 8

	.type	_ZTV10polynomialIdE,@object     # @_ZTV10polynomialIdE
	.section	.data.rel.ro._ZTV10polynomialIdE,"awG",@progbits,_ZTV10polynomialIdE,comdat
	.weak	_ZTV10polynomialIdE
	.p2align	3, 0x0
_ZTV10polynomialIdE:
	.dword	0
	.dword	_ZTI10polynomialIdE
	.dword	_ZN10polynomialIdED2Ev
	.dword	_ZN10polynomialIdED0Ev
	.size	_ZTV10polynomialIdE, 32

	.type	_ZTI10polynomialIdE,@object     # @_ZTI10polynomialIdE
	.section	.data.rel.ro._ZTI10polynomialIdE,"awG",@progbits,_ZTI10polynomialIdE,comdat
	.weak	_ZTI10polynomialIdE
	.p2align	3, 0x0
_ZTI10polynomialIdE:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTS10polynomialIdE
	.size	_ZTI10polynomialIdE, 16

	.type	_ZTS10polynomialIdE,@object     # @_ZTS10polynomialIdE
	.section	.rodata._ZTS10polynomialIdE,"aG",@progbits,_ZTS10polynomialIdE,comdat
	.weak	_ZTS10polynomialIdE
_ZTS10polynomialIdE:
	.asciz	"10polynomialIdE"
	.size	_ZTS10polynomialIdE, 16

	.type	.L.str.3,@object                # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"overflow in fft polynomial stretch"
	.size	.L.str.3, 35

	.type	_ZTV10polynomialISt7complexIdEE,@object # @_ZTV10polynomialISt7complexIdEE
	.section	.data.rel.ro._ZTV10polynomialISt7complexIdEE,"awG",@progbits,_ZTV10polynomialISt7complexIdEE,comdat
	.weak	_ZTV10polynomialISt7complexIdEE
	.p2align	3, 0x0
_ZTV10polynomialISt7complexIdEE:
	.dword	0
	.dword	_ZTI10polynomialISt7complexIdEE
	.dword	_ZN10polynomialISt7complexIdEED2Ev
	.dword	_ZN10polynomialISt7complexIdEED0Ev
	.size	_ZTV10polynomialISt7complexIdEE, 32

	.type	_ZTI10polynomialISt7complexIdEE,@object # @_ZTI10polynomialISt7complexIdEE
	.section	.data.rel.ro._ZTI10polynomialISt7complexIdEE,"awG",@progbits,_ZTI10polynomialISt7complexIdEE,comdat
	.weak	_ZTI10polynomialISt7complexIdEE
	.p2align	3, 0x0
_ZTI10polynomialISt7complexIdEE:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTS10polynomialISt7complexIdEE
	.size	_ZTI10polynomialISt7complexIdEE, 16

	.type	_ZTS10polynomialISt7complexIdEE,@object # @_ZTS10polynomialISt7complexIdEE
	.section	.rodata._ZTS10polynomialISt7complexIdEE,"aG",@progbits,_ZTS10polynomialISt7complexIdEE,comdat
	.weak	_ZTS10polynomialISt7complexIdEE
_ZTS10polynomialISt7complexIdEE:
	.asciz	"10polynomialISt7complexIdEE"
	.size	_ZTS10polynomialISt7complexIdEE, 28

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
	.addrsig_sym _ZSt4cout
	.addrsig_sym _ZTI10polynomialIdE
	.addrsig_sym _ZTVN10__cxxabiv117__class_type_infoE
	.addrsig_sym _ZTS10polynomialIdE
	.addrsig_sym _ZTISt14overflow_error
	.addrsig_sym _ZTI10polynomialISt7complexIdEE
	.addrsig_sym _ZTS10polynomialISt7complexIdEE
