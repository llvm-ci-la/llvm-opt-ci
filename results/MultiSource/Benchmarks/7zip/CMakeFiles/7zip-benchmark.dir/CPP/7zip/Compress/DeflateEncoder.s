	.file	"DeflateEncoder.cpp"
	.text
	.globl	_ZN9NCompress8NDeflate8NEncoder6CCoderC2Eb # -- Begin function _ZN9NCompress8NDeflate8NEncoder6CCoderC2Eb
	.p2align	5
	.type	_ZN9NCompress8NDeflate8NEncoder6CCoderC2Eb,@function
_ZN9NCompress8NDeflate8NEncoder6CCoderC2Eb: # @_ZN9NCompress8NDeflate8NEncoder6CCoderC2Eb
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
# %bb.0:
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	addi.d	$fp, $a0, 1168
	st.d	$zero, $a0, 1168
	st.w	$zero, $a0, 1176
	st.d	$zero, $a0, 1192
	st.d	$zero, $a0, 1208
	addi.d	$s0, $a0, 1240
	vrepli.b	$vr0, 0
	vst	$vr0, $a0, 1240
	ori	$a2, $zero, 32
	st.w	$a2, $a0, 1264
	ori	$a2, $zero, 256
	st.h	$a2, $a0, 1268
	vst	$vr0, $a0, 1272
	ori	$a3, $zero, 1
	lu32i.d	$a3, 1
	st.d	$a3, $a0, 1292
	st.b	$zero, $a0, 1336
	st.b	$a1, $a0, 1337
	stptr.d	$zero, $a0, 4920
	lu12i.w	$a3, 9
	ori	$a3, $a3, 2896
	stx.w	$zero, $a0, $a3
	ori	$a3, $zero, 258
	sub.d	$a3, $a3, $a1
	st.w	$a3, $a0, 1312
	sub.d	$a2, $a2, $a1
	st.w	$a2, $a0, 1308
	pcalau12i	$a2, %pc_hi20(_ZN9NCompress8NDeflateL11kLenStart32E)
	addi.d	$a2, $a2, %pc_lo12(_ZN9NCompress8NDeflateL11kLenStart32E)
	masknez	$a2, $a2, $a1
	pcalau12i	$a3, %pc_hi20(_ZN9NCompress8NDeflateL11kLenStart64E)
	addi.d	$a3, $a3, %pc_lo12(_ZN9NCompress8NDeflateL11kLenStart64E)
	maskeqz	$a3, $a3, $a1
	or	$a2, $a3, $a2
	st.d	$a2, $a0, 1320
	pcalau12i	$a2, %pc_hi20(_ZN9NCompress8NDeflateL16kLenDirectBits32E)
	addi.d	$a2, $a2, %pc_lo12(_ZN9NCompress8NDeflateL16kLenDirectBits32E)
	masknez	$a2, $a2, $a1
	pcalau12i	$a3, %pc_hi20(_ZN9NCompress8NDeflateL16kLenDirectBits64E)
	addi.d	$a3, $a3, %pc_lo12(_ZN9NCompress8NDeflateL16kLenDirectBits64E)
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a2
	st.d	$a1, $a0, 1328
.Ltmp0:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(MatchFinder_Construct)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.1:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB0_2:
.Ltmp2:                                 # EH_LABEL
	ld.d	$a1, $s0, 0
	move	$s0, $a0
	beqz	$a1, .LBB0_4
# %bb.3:
	ld.d	$a0, $a1, 0
	ld.d	$a2, $a0, 16
.Ltmp3:                                 # EH_LABEL
	move	$a0, $a1
	jirl	$ra, $a2, 0
.Ltmp4:                                 # EH_LABEL
.LBB0_4:                                # %_ZN9NCompress8NDeflate8NEncoder13_CSeqInStreamD2Ev.exit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN12CBitlEncoderD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB0_5:
.Ltmp5:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	_ZN9NCompress8NDeflate8NEncoder6CCoderC2Eb, .Lfunc_end0-_ZN9NCompress8NDeflate8NEncoder6CCoderC2Eb
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table0:
.Lexception0:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
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
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp4-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Lfunc_end0-.Ltmp4             #   Call between .Ltmp4 and .Lfunc_end0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase0:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN12CBitlEncoderD2Ev,"axG",@progbits,_ZN12CBitlEncoderD2Ev,comdat
	.weak	_ZN12CBitlEncoderD2Ev           # -- Begin function _ZN12CBitlEncoderD2Ev
	.p2align	5
	.type	_ZN12CBitlEncoderD2Ev,@function
_ZN12CBitlEncoderD2Ev:                  # @_ZN12CBitlEncoderD2Ev
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception1
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
.Ltmp6:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN10COutBuffer4FreeEv)
	jirl	$ra, $ra, 0
.Ltmp7:                                 # EH_LABEL
# %bb.1:
	ld.d	$a0, $fp, 24
	beqz	$a0, .LBB1_3
# %bb.2:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp9:                                 # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp10:                                # EH_LABEL
.LBB1_3:                                # %_ZN10COutBufferD2Ev.exit
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB1_4:
.Ltmp11:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_5:
.Ltmp8:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	_ZN12CBitlEncoderD2Ev, .Lfunc_end1-_ZN12CBitlEncoderD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN12CBitlEncoderD2Ev,"aG",@progbits,_ZN12CBitlEncoderD2Ev,comdat
	.p2align	2, 0x0
GCC_except_table1:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Ltmp6-.Lfunc_begin1           # >> Call Site 1 <<
	.uleb128 .Ltmp7-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp7
	.uleb128 .Ltmp8-.Lfunc_begin1           #     jumps to .Ltmp8
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp9-.Lfunc_begin1           # >> Call Site 2 <<
	.uleb128 .Ltmp10-.Ltmp9                 #   Call between .Ltmp9 and .Ltmp10
	.uleb128 .Ltmp11-.Lfunc_begin1          #     jumps to .Ltmp11
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp10-.Lfunc_begin1          # >> Call Site 3 <<
	.uleb128 .Lfunc_end1-.Ltmp10            #   Call between .Ltmp10 and .Lfunc_end1
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase1:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN9NCompress8NDeflate8NEncoder6CCoder6CreateEv # -- Begin function _ZN9NCompress8NDeflate8NEncoder6CCoder6CreateEv
	.p2align	5
	.type	_ZN9NCompress8NDeflate8NEncoder6CCoder6CreateEv,@function
_ZN9NCompress8NDeflate8NEncoder6CCoder6CreateEv: # @_ZN9NCompress8NDeflate8NEncoder6CCoder6CreateEv
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception2
# %bb.0:
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	move	$fp, $a0
	ld.d	$a0, $a0, 1248
	bnez	$a0, .LBB2_3
# %bb.1:
.Ltmp12:                                # EH_LABEL
	lu12i.w	$a0, 63
	ori	$a0, $a0, 4092
	pcaddu18i	$ra, %call36(MyAlloc)
	jirl	$ra, $ra, 0
.Ltmp13:                                # EH_LABEL
# %bb.2:
	st.d	$a0, $fp, 1248
	beqz	$a0, .LBB2_24
.LBB2_3:
	ldptr.d	$a0, $fp, 4920
	bnez	$a0, .LBB2_6
# %bb.4:
.Ltmp14:                                # EH_LABEL
	lu12i.w	$a0, 83
	pcaddu18i	$ra, %call36(MyAlloc)
	jirl	$ra, $ra, 0
.Ltmp15:                                # EH_LABEL
# %bb.5:
	stptr.d	$a0, $fp, 4920
	beqz	$a0, .LBB2_24
.LBB2_6:
	ld.bu	$a0, $fp, 1301
	beqz	$a0, .LBB2_10
# %bb.7:
	ld.d	$a0, $fp, 1272
	bnez	$a0, .LBB2_11
# %bb.8:
.Ltmp18:                                # EH_LABEL
	lu12i.w	$a0, 319
	ori	$a0, $a0, 4076
	pcaddu18i	$ra, %call36(MidAlloc)
	jirl	$ra, $ra, 0
.Ltmp19:                                # EH_LABEL
# %bb.9:
	st.d	$a0, $fp, 1272
	bnez	$a0, .LBB2_11
	b	.LBB2_24
.LBB2_10:
	ld.d	$a0, $fp, 1280
	beqz	$a0, .LBB2_16
.LBB2_11:
	ld.bu	$a0, $fp, 1336
	bnez	$a0, .LBB2_19
.LBB2_12:
	ld.bu	$a0, $fp, 1269
	st.w	$a0, $fp, 112
	ld.w	$a0, $fp, 1312
	ld.w	$a3, $fp, 1264
	ori	$a1, $zero, 3
	ld.bu	$a2, $fp, 1337
	st.w	$a1, $fp, 96
	sub.w	$a4, $a0, $a3
	lu12i.w	$a0, 8
	masknez	$a0, $a0, $a2
	lu12i.w	$a1, 16
	maskeqz	$a1, $a1, $a2
	or	$a1, $a1, $a0
.Ltmp20:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(_ZN9NCompress8NDeflate8NEncoderL7g_AllocE)
	addi.d	$a5, $a0, %pc_lo12(_ZN9NCompress8NDeflate8NEncoderL7g_AllocE)
	lu12i.w	$a0, 17
	ori	$a2, $a0, 257
	move	$a0, $fp
	pcaddu18i	$ra, %call36(MatchFinder_Create)
	jirl	$ra, $ra, 0
	move	$a1, $a0
.Ltmp21:                                # EH_LABEL
# %bb.13:
	lu12i.w	$a0, -524176
	ori	$a0, $a0, 14
	beqz	$a1, .LBB2_25
# %bb.14:
	move	$s0, $a0
	addi.d	$a0, $fp, 1168
.Ltmp22:                                # EH_LABEL
	lu12i.w	$a1, 256
	pcaddu18i	$ra, %call36(_ZN10COutBuffer6CreateEj)
	jirl	$ra, $ra, 0
	move	$a1, $a0
.Ltmp23:                                # EH_LABEL
# %bb.15:                               # %_ZN12CBitlEncoder6CreateEj.exit
	move	$a0, $s0
	bnez	$a1, .LBB2_19
	b	.LBB2_25
.LBB2_16:
.Ltmp16:                                # EH_LABEL
	ori	$a0, $zero, 1040
	pcaddu18i	$ra, %call36(MyAlloc)
	jirl	$ra, $ra, 0
.Ltmp17:                                # EH_LABEL
# %bb.17:
	st.d	$a0, $fp, 1280
	beqz	$a0, .LBB2_24
# %bb.18:
	st.d	$a0, $fp, 1256
	ld.bu	$a0, $fp, 1336
	beqz	$a0, .LBB2_12
.LBB2_19:
	lu12i.w	$a0, 9
	ori	$a0, $a0, 2896
	ldx.w	$a0, $fp, $a0
	beqz	$a0, .LBB2_21
# %bb.20:
	st.w	$a0, $fp, 60
.LBB2_21:
	move	$a0, $zero
	ori	$a1, $zero, 1
	st.b	$a1, $fp, 1336
	b	.LBB2_25
.LBB2_22:
.Ltmp24:                                # EH_LABEL
	addi.w	$s0, $a1, 0
	pcaddu18i	$ra, %call36(__cxa_begin_catch)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	beq	$s0, $a1, .LBB2_26
# %bb.23:
	pcaddu18i	$ra, %call36(__cxa_end_catch)
	jirl	$ra, $ra, 0
.LBB2_24:
	lu12i.w	$a0, -524176
	ori	$a0, $a0, 14
.LBB2_25:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB2_26:
	move	$fp, $a0
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(__cxa_allocate_exception)
	jirl	$ra, $ra, 0
	st.d	$fp, $a0, 0
.Ltmp25:                                # EH_LABEL
	pcalau12i	$a1, %got_pc_hi20(_ZTIPKc)
	ld.d	$a1, $a1, %got_pc_lo12(_ZTIPKc)
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__cxa_throw)
	jirl	$ra, $ra, 0
.Ltmp26:                                # EH_LABEL
# %bb.27:
.LBB2_28:
.Ltmp27:                                # EH_LABEL
	move	$fp, $a0
	pcaddu18i	$ra, %call36(__cxa_end_catch)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	_ZN9NCompress8NDeflate8NEncoder6CCoder6CreateEv, .Lfunc_end2-_ZN9NCompress8NDeflate8NEncoder6CCoder6CreateEv
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table2:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase2-.Lttbaseref2
.Lttbaseref2:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Ltmp12-.Lfunc_begin2          # >> Call Site 1 <<
	.uleb128 .Ltmp17-.Ltmp12                #   Call between .Ltmp12 and .Ltmp17
	.uleb128 .Ltmp24-.Lfunc_begin2          #     jumps to .Ltmp24
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp17-.Lfunc_begin2          # >> Call Site 2 <<
	.uleb128 .Ltmp25-.Ltmp17                #   Call between .Ltmp17 and .Ltmp25
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp25-.Lfunc_begin2          # >> Call Site 3 <<
	.uleb128 .Ltmp26-.Ltmp25                #   Call between .Ltmp25 and .Ltmp26
	.uleb128 .Ltmp27-.Lfunc_begin2          #     jumps to .Ltmp27
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp26-.Lfunc_begin2          # >> Call Site 4 <<
	.uleb128 .Lfunc_end2-.Ltmp26            #   Call between .Ltmp26 and .Lfunc_end2
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.byte	2                               # >> Action Record 2 <<
                                        #   Catch TypeInfo 2
	.byte	125                             #   Continue to action 1
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
.Ltmp28:                                # TypeInfo 2
	.word	.L_ZTIPKc.DW.stub-.Ltmp28
	.word	0                               # TypeInfo 1
.Lttbase2:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN9NCompress8NDeflate8NEncoder6CCoder25BaseSetEncoderProperties2EPKjPK14tagPROPVARIANTj # -- Begin function _ZN9NCompress8NDeflate8NEncoder6CCoder25BaseSetEncoderProperties2EPKjPK14tagPROPVARIANTj
	.p2align	5
	.type	_ZN9NCompress8NDeflate8NEncoder6CCoder25BaseSetEncoderProperties2EPKjPK14tagPROPVARIANTj,@function
_ZN9NCompress8NDeflate8NEncoder6CCoder25BaseSetEncoderProperties2EPKjPK14tagPROPVARIANTj: # @_ZN9NCompress8NDeflate8NEncoder6CCoder25BaseSetEncoderProperties2EPKjPK14tagPROPVARIANTj
# %bb.0:
	beqz	$a3, .LBB3_18
# %bb.1:                                # %.lr.ph
	move	$a4, $a0
	lu12i.w	$a0, 9
	ori	$a0, $a0, 2896
	add.d	$a5, $a4, $a0
	ld.w	$a6, $a4, 1312
	bstrpick.d	$a3, $a3, 31, 0
	addi.d	$a2, $a2, 8
	lu12i.w	$a0, -524176
	ori	$a0, $a0, 87
	ori	$a7, $zero, 4
	pcalau12i	$t0, %pc_hi20(.LJTI3_0)
	addi.d	$t0, $t0, %pc_lo12(.LJTI3_0)
	ori	$t1, $zero, 19
	ori	$t2, $zero, 3
	ori	$t3, $zero, 1
	ori	$t4, $zero, 10
	ori	$t5, $zero, 2
	b	.LBB3_4
.LBB3_2:                                #   in Loop: Header=BB3_4 Depth=1
	st.w	$t3, $a4, 1292
	.p2align	4, , 16
.LBB3_3:                                # %.critedge
                                        #   in Loop: Header=BB3_4 Depth=1
	addi.d	$a2, $a2, 16
	addi.d	$a3, $a3, -1
	addi.d	$a1, $a1, 4
	beqz	$a3, .LBB3_18
.LBB3_4:                                # =>This Inner Loop Header: Depth=1
	ld.w	$t6, $a1, 0
	addi.d	$t6, $t6, -8
	bltu	$a7, $t6, .LBB3_19
# %bb.5:                                #   in Loop: Header=BB3_4 Depth=1
	slli.d	$t6, $t6, 2
	ldx.w	$t6, $t0, $t6
	add.d	$t6, $t0, $t6
	jr	$t6
.LBB3_6:                                #   in Loop: Header=BB3_4 Depth=1
	ld.hu	$t6, $a2, -8
	bne	$t6, $t1, .LBB3_19
# %bb.7:                                #   in Loop: Header=BB3_4 Depth=1
	ld.w	$t6, $a2, 0
	st.w	$t6, $a4, 1264
	bltu	$t6, $t2, .LBB3_19
# %bb.8:                                #   in Loop: Header=BB3_4 Depth=1
	bgeu	$a6, $t6, .LBB3_3
	b	.LBB3_19
	.p2align	4, , 16
.LBB3_9:                                #   in Loop: Header=BB3_4 Depth=1
	ld.hu	$t6, $a2, -8
	bne	$t6, $t1, .LBB3_19
# %bb.10:                               #   in Loop: Header=BB3_4 Depth=1
	ld.w	$t6, $a2, 0
	st.w	$t6, $a5, 0
	b	.LBB3_3
	.p2align	4, , 16
.LBB3_11:                               #   in Loop: Header=BB3_4 Depth=1
	ld.hu	$t6, $a2, -8
	bne	$t6, $t1, .LBB3_19
# %bb.12:                               #   in Loop: Header=BB3_4 Depth=1
	ld.w	$t6, $a2, 0
	sltu	$t7, $zero, $t6
	sltui	$t6, $t6, 1
	st.b	$t6, $a4, 1268
	st.b	$t7, $a4, 1269
	b	.LBB3_3
	.p2align	4, , 16
.LBB3_13:                               #   in Loop: Header=BB3_4 Depth=1
	ld.hu	$t6, $a2, -8
	bne	$t6, $t1, .LBB3_19
# %bb.14:                               #   in Loop: Header=BB3_4 Depth=1
	ld.w	$t7, $a2, 0
	sltu	$t6, $t3, $t7
	masknez	$t8, $t3, $t6
	maskeqz	$t6, $t7, $t6
	or	$t6, $t6, $t8
	st.w	$t6, $a4, 1296
	bgeu	$t3, $t7, .LBB3_2
# %bb.15:                               #   in Loop: Header=BB3_4 Depth=1
	blt	$t4, $t6, .LBB3_17
# %bb.16:                               #   in Loop: Header=BB3_4 Depth=1
	st.w	$t5, $a4, 1292
	b	.LBB3_3
.LBB3_17:                               #   in Loop: Header=BB3_4 Depth=1
	addi.d	$t6, $t6, -8
	st.w	$t6, $a4, 1292
	st.w	$t4, $a4, 1296
	b	.LBB3_3
.LBB3_18:
	move	$a0, $zero
.LBB3_19:                               # %._crit_edge
	ret
.Lfunc_end3:
	.size	_ZN9NCompress8NDeflate8NEncoder6CCoder25BaseSetEncoderProperties2EPKjPK14tagPROPVARIANTj, .Lfunc_end3-_ZN9NCompress8NDeflate8NEncoder6CCoder25BaseSetEncoderProperties2EPKjPK14tagPROPVARIANTj
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI3_0:
	.word	.LBB3_6-.LJTI3_0
	.word	.LBB3_19-.LJTI3_0
	.word	.LBB3_9-.LJTI3_0
	.word	.LBB3_13-.LJTI3_0
	.word	.LBB3_11-.LJTI3_0
                                        # -- End function
	.text
	.globl	_ZN9NCompress8NDeflate8NEncoder6CCoder4FreeEv # -- Begin function _ZN9NCompress8NDeflate8NEncoder6CCoder4FreeEv
	.p2align	5
	.type	_ZN9NCompress8NDeflate8NEncoder6CCoder4FreeEv,@function
_ZN9NCompress8NDeflate8NEncoder6CCoder4FreeEv: # @_ZN9NCompress8NDeflate8NEncoder6CCoder4FreeEv
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	ld.d	$a0, $a0, 1272
	pcaddu18i	$ra, %call36(MidFree)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 1280
	st.d	$zero, $fp, 1272
	pcaddu18i	$ra, %call36(MyFree)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 1248
	st.d	$zero, $fp, 1280
	pcaddu18i	$ra, %call36(MyFree)
	jirl	$ra, $ra, 0
	ldptr.d	$a0, $fp, 4920
	st.d	$zero, $fp, 1248
	pcaddu18i	$ra, %call36(MyFree)
	jirl	$ra, $ra, 0
	stptr.d	$zero, $fp, 4920
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end4:
	.size	_ZN9NCompress8NDeflate8NEncoder6CCoder4FreeEv, .Lfunc_end4-_ZN9NCompress8NDeflate8NEncoder6CCoder4FreeEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZN9NCompress8NDeflate8NEncoder6CCoderD2Ev # -- Begin function _ZN9NCompress8NDeflate8NEncoder6CCoderD2Ev
	.p2align	5
	.type	_ZN9NCompress8NDeflate8NEncoder6CCoderD2Ev,@function
_ZN9NCompress8NDeflate8NEncoder6CCoderD2Ev: # @_ZN9NCompress8NDeflate8NEncoder6CCoderD2Ev
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception3
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	ld.d	$a0, $a0, 1272
.Ltmp29:                                # EH_LABEL
	pcaddu18i	$ra, %call36(MidFree)
	jirl	$ra, $ra, 0
.Ltmp30:                                # EH_LABEL
# %bb.1:                                # %.noexc
	ld.d	$a0, $fp, 1280
	st.d	$zero, $fp, 1272
.Ltmp31:                                # EH_LABEL
	pcaddu18i	$ra, %call36(MyFree)
	jirl	$ra, $ra, 0
.Ltmp32:                                # EH_LABEL
# %bb.2:                                # %.noexc1
	ld.d	$a0, $fp, 1248
	st.d	$zero, $fp, 1280
.Ltmp33:                                # EH_LABEL
	pcaddu18i	$ra, %call36(MyFree)
	jirl	$ra, $ra, 0
.Ltmp34:                                # EH_LABEL
# %bb.3:                                # %.noexc2
	ldptr.d	$a0, $fp, 4920
	st.d	$zero, $fp, 1248
.Ltmp35:                                # EH_LABEL
	pcaddu18i	$ra, %call36(MyFree)
	jirl	$ra, $ra, 0
.Ltmp36:                                # EH_LABEL
# %bb.4:
	stptr.d	$zero, $fp, 4920
.Ltmp37:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(_ZN9NCompress8NDeflate8NEncoderL7g_AllocE)
	addi.d	$a1, $a0, %pc_lo12(_ZN9NCompress8NDeflate8NEncoderL7g_AllocE)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(MatchFinder_Free)
	jirl	$ra, $ra, 0
.Ltmp38:                                # EH_LABEL
# %bb.5:
	ld.d	$a0, $fp, 1240
	beqz	$a0, .LBB5_7
# %bb.6:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp40:                                # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp41:                                # EH_LABEL
.LBB5_7:                                # %_ZN9NCompress8NDeflate8NEncoder13_CSeqInStreamD2Ev.exit
	addi.d	$a0, $fp, 1168
.Ltmp43:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN10COutBuffer4FreeEv)
	jirl	$ra, $ra, 0
.Ltmp44:                                # EH_LABEL
# %bb.8:
	ld.d	$a0, $fp, 1192
	beqz	$a0, .LBB5_10
# %bb.9:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp46:                                # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp47:                                # EH_LABEL
.LBB5_10:                               # %_ZN12CBitlEncoderD2Ev.exit
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB5_11:
.Ltmp48:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB5_12:
.Ltmp42:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB5_13:
.Ltmp45:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB5_14:
.Ltmp39:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end5:
	.size	_ZN9NCompress8NDeflate8NEncoder6CCoderD2Ev, .Lfunc_end5-_ZN9NCompress8NDeflate8NEncoder6CCoderD2Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table5:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase3-.Lttbaseref3
.Lttbaseref3:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Ltmp29-.Lfunc_begin3          # >> Call Site 1 <<
	.uleb128 .Ltmp38-.Ltmp29                #   Call between .Ltmp29 and .Ltmp38
	.uleb128 .Ltmp39-.Lfunc_begin3          #     jumps to .Ltmp39
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp40-.Lfunc_begin3          # >> Call Site 2 <<
	.uleb128 .Ltmp41-.Ltmp40                #   Call between .Ltmp40 and .Ltmp41
	.uleb128 .Ltmp42-.Lfunc_begin3          #     jumps to .Ltmp42
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp43-.Lfunc_begin3          # >> Call Site 3 <<
	.uleb128 .Ltmp44-.Ltmp43                #   Call between .Ltmp43 and .Ltmp44
	.uleb128 .Ltmp45-.Lfunc_begin3          #     jumps to .Ltmp45
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp46-.Lfunc_begin3          # >> Call Site 4 <<
	.uleb128 .Ltmp47-.Ltmp46                #   Call between .Ltmp46 and .Ltmp47
	.uleb128 .Ltmp48-.Lfunc_begin3          #     jumps to .Ltmp48
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp47-.Lfunc_begin3          # >> Call Site 5 <<
	.uleb128 .Lfunc_end5-.Ltmp47            #   Call between .Ltmp47 and .Lfunc_end5
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
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
.Lfunc_end6:
	.size	__clang_call_terminate, .Lfunc_end6-__clang_call_terminate
                                        # -- End function
	.text
	.globl	_ZN9NCompress8NDeflate8NEncoder6CCoder10GetMatchesEv # -- Begin function _ZN9NCompress8NDeflate8NEncoder6CCoder10GetMatchesEv
	.p2align	5
	.type	_ZN9NCompress8NDeflate8NEncoder6CCoder10GetMatchesEv,@function
_ZN9NCompress8NDeflate8NEncoder6CCoder10GetMatchesEv: # @_ZN9NCompress8NDeflate8NEncoder6CCoder10GetMatchesEv
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -2032
	.cfi_def_cfa_offset 2032
	st.d	$ra, $sp, 2024                  # 8-byte Folded Spill
	st.d	$fp, $sp, 2016                  # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	addi.d	$sp, $sp, -80
	.cfi_def_cfa_offset 2112
	move	$fp, $a0
	ld.bu	$a0, $a0, 1301
	beqz	$a0, .LBB7_3
# %bb.1:
	ld.d	$a1, $fp, 1272
	ld.wu	$a0, $fp, 1288
	ld.bu	$a2, $fp, 1376
	alsl.d	$a1, $a0, $a1, 1
	st.d	$a1, $fp, 1256
	beqz	$a2, .LBB7_3
# %bb.2:
	ld.hu	$a1, $a1, 0
	add.d	$a0, $a0, $a1
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 1288
	b	.LBB7_25
.LBB7_3:
	ld.bu	$a0, $fp, 1269
	beqz	$a0, .LBB7_5
# %bb.4:
	addi.d	$a1, $sp, 20
	move	$a0, $fp
	pcaddu18i	$ra, %call36(Bt3Zip_MatchFinder_GetMatches)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 1256
	st.h	$a0, $a1, 0
	bnez	$a0, .LBB7_6
	b	.LBB7_21
.LBB7_5:
	addi.d	$a1, $sp, 20
	move	$a0, $fp
	pcaddu18i	$ra, %call36(Hc3Zip_MatchFinder_GetMatches)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 1256
	st.h	$a0, $a1, 0
	beqz	$a0, .LBB7_21
.LBB7_6:                                # %.preheader.preheader
	ori	$a3, $zero, 3
	bstrpick.d	$a2, $a0, 31, 0
	bgeu	$a0, $a3, .LBB7_8
# %bb.7:
	move	$a3, $zero
	b	.LBB7_11
.LBB7_8:                                # %vector.ph
	addi.d	$a3, $a2, -1
	srli.d	$a3, $a3, 1
	addi.d	$a4, $a3, 1
	move	$a5, $a4
	bstrins.d	$a5, $zero, 0, 0
	slli.d	$a3, $a5, 1
	addi.d	$a6, $a1, 4
	addi.d	$a7, $sp, 28
	move	$t0, $a5
	.p2align	4, , 16
.LBB7_9:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$t1, $a7, -8
	ld.h	$t2, $a7, 0
	ld.h	$t3, $a7, -4
	ld.h	$t4, $a7, 4
	st.h	$t1, $a6, -2
	st.h	$t2, $a6, 2
	st.h	$t3, $a6, 0
	st.h	$t4, $a6, 4
	addi.d	$t0, $t0, -2
	addi.d	$a6, $a6, 8
	addi.d	$a7, $a7, 16
	bnez	$t0, .LBB7_9
# %bb.10:                               # %middle.block
	beq	$a4, $a5, .LBB7_13
.LBB7_11:                               # %.preheader.preheader44
	alsl.d	$a4, $a3, $a1, 1
	addi.d	$a4, $a4, 4
	addi.d	$a5, $sp, 20
	alsl.d	$a5, $a3, $a5, 2
	addi.d	$a5, $a5, 4
	.p2align	4, , 16
.LBB7_12:                               # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a6, $a5, -4
	ld.h	$a7, $a5, 0
	st.h	$a6, $a4, -2
	addi.d	$a3, $a3, 2
	st.h	$a7, $a4, 0
	addi.d	$a4, $a4, 4
	addi.d	$a5, $a5, 8
	bltu	$a3, $a2, .LBB7_12
.LBB7_13:                               # %.loopexit.loopexit
	addi.d	$a2, $a3, -2
	addi.d	$a3, $a0, -2
	bstrpick.d	$a3, $a3, 31, 0
	slli.d	$a3, $a3, 2
	addi.d	$a4, $sp, 20
	ldx.w	$a3, $a3, $a4
	ld.w	$a4, $fp, 1264
	bne	$a3, $a4, .LBB7_21
# %bb.14:
	ld.w	$a4, $fp, 1312
	beq	$a3, $a4, .LBB7_21
# %bb.15:
	ld.w	$a5, $fp, 16
	ld.w	$a6, $fp, 8
	sub.d	$a5, $a5, $a6
	addi.w	$a5, $a5, 1
	sltu	$a6, $a5, $a4
	maskeqz	$a5, $a5, $a6
	masknez	$a4, $a4, $a6
	or	$a4, $a5, $a4
	bgeu	$a3, $a4, .LBB7_20
# %bb.16:                               # %.lr.ph.preheader
	addi.d	$a5, $a0, -1
	bstrpick.d	$a5, $a5, 31, 0
	slli.d	$a5, $a5, 2
	addi.d	$a6, $sp, 20
	ldx.w	$a5, $a5, $a6
	bstrpick.d	$a7, $a3, 31, 0
	ld.d	$a6, $fp, 0
	addi.d	$a5, $a5, 1
	bstrpick.d	$a5, $a5, 31, 0
	sub.d	$a5, $zero, $a5
	bstrpick.d	$t0, $a4, 31, 0
	add.d	$a6, $a7, $a6
	addi.d	$a6, $a6, -1
	sub.d	$a7, $t0, $a7
	.p2align	4, , 16
.LBB7_17:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$t0, $a6, 0
	ldx.bu	$t1, $a6, $a5
	bne	$t0, $t1, .LBB7_20
# %bb.18:                               #   in Loop: Header=BB7_17 Depth=1
	addi.d	$a3, $a3, 1
	addi.d	$a7, $a7, -1
	addi.d	$a6, $a6, 1
	bnez	$a7, .LBB7_17
# %bb.19:
	move	$a3, $a4
.LBB7_20:                               # %.critedge
	bstrpick.d	$a2, $a2, 31, 1
	alsl.d	$a1, $a2, $a1, 2
	st.h	$a3, $a1, 2
.LBB7_21:
	ld.bu	$a1, $fp, 1301
	beqz	$a1, .LBB7_23
# %bb.22:
	ld.w	$a1, $fp, 1288
	add.d	$a0, $a0, $a1
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 1288
.LBB7_23:
	ld.bu	$a0, $fp, 1376
	bnez	$a0, .LBB7_25
# %bb.24:
	ld.w	$a0, $fp, 1380
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 1380
.LBB7_25:
	addi.d	$sp, $sp, 80
	ld.d	$fp, $sp, 2016                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	ret
.Lfunc_end7:
	.size	_ZN9NCompress8NDeflate8NEncoder6CCoder10GetMatchesEv, .Lfunc_end7-_ZN9NCompress8NDeflate8NEncoder6CCoder10GetMatchesEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZN9NCompress8NDeflate8NEncoder6CCoder7MovePosEj # -- Begin function _ZN9NCompress8NDeflate8NEncoder6CCoder7MovePosEj
	.p2align	5
	.type	_ZN9NCompress8NDeflate8NEncoder6CCoder7MovePosEj,@function
_ZN9NCompress8NDeflate8NEncoder6CCoder7MovePosEj: # @_ZN9NCompress8NDeflate8NEncoder6CCoder7MovePosEj
	.cfi_startproc
# %bb.0:
	beqz	$a1, .LBB8_7
# %bb.1:
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	move	$fp, $a0
	ld.b	$a0, $a0, 1376
	andi	$a0, $a0, 1
	bnez	$a0, .LBB8_6
# %bb.2:
	move	$s0, $a1
	ld.bu	$a0, $fp, 1269
	beqz	$a0, .LBB8_4
# %bb.3:
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(Bt3Zip_MatchFinder_Skip)
	jirl	$ra, $ra, 0
	b	.LBB8_5
.LBB8_4:
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(Hc3Zip_MatchFinder_Skip)
	jirl	$ra, $ra, 0
.LBB8_5:
	ld.w	$a0, $fp, 1380
	add.d	$a0, $a0, $s0
	st.w	$a0, $fp, 1380
.LBB8_6:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
.LBB8_7:
	ret
.Lfunc_end8:
	.size	_ZN9NCompress8NDeflate8NEncoder6CCoder7MovePosEj, .Lfunc_end8-_ZN9NCompress8NDeflate8NEncoder6CCoder7MovePosEj
	.cfi_endproc
                                        # -- End function
	.globl	_ZN9NCompress8NDeflate8NEncoder6CCoder8BackwardERjj # -- Begin function _ZN9NCompress8NDeflate8NEncoder6CCoder8BackwardERjj
	.p2align	5
	.type	_ZN9NCompress8NDeflate8NEncoder6CCoder8BackwardERjj,@function
_ZN9NCompress8NDeflate8NEncoder6CCoder8BackwardERjj: # @_ZN9NCompress8NDeflate8NEncoder6CCoder8BackwardERjj
# %bb.0:
	lu12i.w	$a3, 1
	ori	$a4, $a3, 832
	add.d	$a4, $a0, $a4
	bstrpick.d	$a5, $a2, 31, 0
	alsl.d	$a5, $a5, $a4, 3
	ld.hu	$a6, $a5, 4
	ld.hu	$a5, $a5, 6
	st.w	$a2, $a0, 1384
	bstrpick.d	$a2, $a2, 15, 0
	.p2align	4, , 16
.LBB9_1:                                # =>This Inner Loop Header: Depth=1
	move	$a7, $a6
	alsl.d	$t0, $a6, $a4, 3
	ld.hu	$t1, $t0, 6
	ld.hu	$a6, $t0, 4
	st.h	$a5, $t0, 6
	st.h	$a2, $t0, 4
	move	$a5, $t1
	move	$a2, $a7
	bnez	$a7, .LBB9_1
# %bb.2:
	ori	$a2, $a3, 838
	ldx.hu	$a4, $a0, $a2
	ori	$a2, $a3, 836
	ldx.hu	$a2, $a0, $a2
	st.w	$a4, $a1, 0
	st.w	$a2, $a0, 1388
	move	$a0, $a2
	ret
.Lfunc_end9:
	.size	_ZN9NCompress8NDeflate8NEncoder6CCoder8BackwardERjj, .Lfunc_end9-_ZN9NCompress8NDeflate8NEncoder6CCoder8BackwardERjj
                                        # -- End function
	.globl	_ZN9NCompress8NDeflate8NEncoder6CCoder10GetOptimalERj # -- Begin function _ZN9NCompress8NDeflate8NEncoder6CCoder10GetOptimalERj
	.p2align	5
	.type	_ZN9NCompress8NDeflate8NEncoder6CCoder10GetOptimalERj,@function
_ZN9NCompress8NDeflate8NEncoder6CCoder10GetOptimalERj: # @_ZN9NCompress8NDeflate8NEncoder6CCoder10GetOptimalERj
	.cfi_startproc
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
	ld.w	$a2, $a0, 1384
	ld.w	$a4, $a0, 1388
	move	$fp, $a1
	lu12i.w	$s1, 1
	bne	$a2, $a4, .LBB10_7
# %bb.1:
	st.d	$zero, $a0, 1384
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(_ZN9NCompress8NDeflate8NEncoder6CCoder10GetMatchesEv)
	jirl	$ra, $ra, 0
	ld.d	$t4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a0, $t4, 1256
	ld.hu	$a1, $a0, 0
	beqz	$a1, .LBB10_8
# %bb.2:
	addi.d	$a0, $a0, 2
	addi.w	$a2, $zero, -2
	lu32i.d	$a2, 0
	add.d	$a2, $a1, $a2
	bstrpick.d	$a2, $a2, 31, 0
	slli.d	$a2, $a2, 1
	ldx.hu	$s3, $a0, $a2
	ld.w	$a2, $t4, 1264
	bgeu	$a2, $s3, .LBB10_9
# %bb.3:
	alsl.d	$a0, $a1, $a0, 1
	ld.hu	$a0, $a0, -2
	addi.d	$s2, $s3, -1
	st.w	$a0, $fp, 0
	beqz	$s2, .LBB10_59
# %bb.4:
	ld.b	$a0, $t4, 1376
	andi	$a0, $a0, 1
	bnez	$a0, .LBB10_59
# %bb.5:
	ld.bu	$a0, $t4, 1269
	beqz	$a0, .LBB10_56
# %bb.6:
	move	$a0, $t4
	move	$a1, $s2
	move	$fp, $t4
	pcaddu18i	$ra, %call36(Bt3Zip_MatchFinder_Skip)
	jirl	$ra, $ra, 0
	b	.LBB10_57
.LBB10_7:
	bstrpick.d	$a1, $a4, 31, 0
	ori	$a2, $s1, 832
	add.d	$a2, $a0, $a2
	alsl.d	$a1, $a1, $a2, 3
	ld.hu	$a3, $a1, 6
	st.w	$a3, $fp, 0
	ld.wu	$a3, $a0, 1388
	ld.hu	$a1, $a1, 4
	alsl.d	$a2, $a3, $a2, 3
	ld.hu	$a2, $a2, 4
	sub.w	$s3, $a1, $a4
	st.w	$a2, $a0, 1388
	b	.LBB10_59
.LBB10_8:
	ori	$s3, $zero, 1
	b	.LBB10_59
.LBB10_9:
	ld.w	$a1, $t4, 1380
	ld.d	$a2, $t4, 0
	sub.w	$a1, $zero, $a1
	ldx.bu	$a1, $a2, $a1
	addi.d	$a2, $t4, 1392
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	ldx.bu	$a2, $a2, $a1
	ori	$a1, $s1, 838
	add.d	$t6, $t4, $a1
	ori	$a1, $s1, 832
	stptr.w	$a2, $t4, 4936
	ori	$a2, $s1, 844
	stx.h	$zero, $t4, $a2
	lu12i.w	$a2, 65535
	ori	$s6, $a2, 4095
	stptr.w	$s6, $t4, 4944
	ori	$a2, $s1, 852
	ori	$s4, $zero, 1
	stx.h	$s4, $t4, $a2
	ori	$a2, $zero, 3
	pcalau12i	$a3, %pc_hi20(_ZN9NCompress8NDeflate8NEncoderL9g_FastPosE)
	addi.d	$s7, $a3, %pc_lo12(_ZN9NCompress8NDeflate8NEncoderL9g_FastPosE)
	bgeu	$s3, $a2, .LBB10_51
.LBB10_10:                              # %.preheader158
	add.d	$s8, $t4, $a1
	beq	$s3, $s4, .LBB10_48
# %bb.11:                               # %.preheader158
	ld.w	$a0, $t4, 1288
	lu12i.w	$a1, 159
	ori	$a1, $a1, 2021
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	bltu	$a1, $a0, .LBB10_48
# %bb.12:                               # %.lr.ph171
	st.d	$t6, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	move	$s0, $zero
	addi.d	$s2, $t4, 1904
	addi.d	$s5, $t4, 1648
	ori	$a0, $s1, 848
	add.d	$a0, $t4, $a0
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ori	$a0, $s1, 840
	add.d	$a0, $t4, $a0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ori	$t3, $zero, 1
	ori	$s1, $zero, 4
	ori	$fp, $zero, 511
	ori	$s4, $zero, 1
	.p2align	4, , 16
.LBB10_13:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_23 Depth 2
                                        #     Child Loop BB10_26 Depth 2
                                        #     Child Loop BB10_35 Depth 2
	st.d	$t3, $sp, 64                    # 8-byte Folded Spill
	move	$a0, $t4
	pcaddu18i	$ra, %call36(_ZN9NCompress8NDeflate8NEncoder6CCoder10GetMatchesEv)
	jirl	$ra, $ra, 0
	ld.d	$t4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a2, $t4, 1256
	ld.hu	$a0, $a2, 0
	addi.d	$a1, $a2, 2
	beqz	$a0, .LBB10_15
# %bb.14:                               #   in Loop: Header=BB10_13 Depth=1
	addi.d	$a3, $a0, -2
	bstrpick.d	$a3, $a3, 31, 0
	slli.d	$a3, $a3, 1
	ldx.hu	$a4, $a1, $a3
	ld.w	$a3, $t4, 1264
	bgeu	$a3, $a4, .LBB10_16
	b	.LBB10_60
	.p2align	4, , 16
.LBB10_15:                              #   in Loop: Header=BB10_13 Depth=1
	move	$a4, $zero
.LBB10_16:                              #   in Loop: Header=BB10_13 Depth=1
	ld.w	$a3, $t4, 1380
	ld.d	$a5, $t4, 0
	sub.w	$a3, $s4, $a3
	ldx.bu	$a5, $a5, $a3
	slli.d	$a3, $s4, 3
	ldx.w	$a3, $s8, $a3
	ld.d	$a6, $sp, 48                    # 8-byte Folded Reload
	ldx.bu	$a6, $a6, $a5
	alsl.d	$a5, $s0, $s8, 3
	ld.w	$a7, $a5, 16
	add.w	$a6, $a3, $a6
	ld.d	$t3, $sp, 64                    # 8-byte Folded Reload
	bgeu	$a6, $a7, .LBB10_18
# %bb.17:                               #   in Loop: Header=BB10_13 Depth=1
	st.w	$a6, $a5, 16
	st.h	$s4, $a5, 20
.LBB10_18:                              #   in Loop: Header=BB10_13 Depth=1
	beqz	$a0, .LBB10_44
# %bb.19:                               # %.preheader
                                        #   in Loop: Header=BB10_13 Depth=1
	add.w	$a6, $a4, $s4
	addi.w	$a5, $s3, 0
	bgeu	$a5, $a6, .LBB10_28
# %bb.20:                               # %.lr.ph167.preheader
                                        #   in Loop: Header=BB10_13 Depth=1
	sub.w	$a5, $a6, $s3
	bstrpick.d	$t1, $s3, 31, 0
	ori	$a7, $zero, 2
	bgeu	$a5, $a7, .LBB10_22
# %bb.21:                               #   in Loop: Header=BB10_13 Depth=1
	move	$a5, $t1
	b	.LBB10_25
.LBB10_22:                              # %vector.ph
                                        #   in Loop: Header=BB10_13 Depth=1
	bstrpick.d	$a7, $a5, 31, 0
	bstrpick.d	$a5, $a7, 31, 1
	slli.d	$t0, $a5, 1
	alsl.d	$a5, $a5, $t1, 1
	add.d	$a4, $a4, $t3
	sub.d	$a4, $a4, $s3
	bstrpick.d	$a4, $a4, 31, 1
	slli.d	$a4, $a4, 1
	ld.d	$t2, $sp, 24                    # 8-byte Folded Reload
	alsl.d	$t1, $t1, $t2, 3
	.p2align	4, , 16
.LBB10_23:                              # %vector.body
                                        #   Parent Loop BB10_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$s6, $t1, -8
	st.w	$s6, $t1, 0
	addi.d	$a4, $a4, -2
	addi.d	$t1, $t1, 16
	bnez	$a4, .LBB10_23
# %bb.24:                               # %middle.block
                                        #   in Loop: Header=BB10_13 Depth=1
	beq	$t0, $a7, .LBB10_27
.LBB10_25:                              # %.lr.ph167.preheader216
                                        #   in Loop: Header=BB10_13 Depth=1
	bstrpick.d	$a4, $a6, 31, 0
	ld.d	$a6, $sp, 32                    # 8-byte Folded Reload
	alsl.d	$a6, $a5, $a6, 3
	.p2align	4, , 16
.LBB10_26:                              # %.lr.ph167
                                        #   Parent Loop BB10_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a5, $a5, 1
	st.w	$s6, $a6, 0
	addi.d	$a6, $a6, 8
	bltu	$a5, $a4, .LBB10_26
.LBB10_27:                              # %._crit_edge.loopexit
                                        #   in Loop: Header=BB10_13 Depth=1
	move	$s3, $a5
.LBB10_28:                              # %._crit_edge
                                        #   in Loop: Header=BB10_13 Depth=1
	ld.hu	$a2, $a2, 4
	bltu	$fp, $a2, .LBB10_30
# %bb.29:                               #   in Loop: Header=BB10_13 Depth=1
	ldx.bu	$a4, $s7, $a2
	b	.LBB10_31
	.p2align	4, , 16
.LBB10_30:                              #   in Loop: Header=BB10_13 Depth=1
	srli.d	$a4, $a2, 8
	ldx.bu	$a4, $s7, $a4
	addi.d	$a4, $a4, 16
.LBB10_31:                              # %_ZN9NCompress8NDeflate8NEncoder10GetPosSlotEj.exit143
                                        #   in Loop: Header=BB10_13 Depth=1
	ldx.bu	$a6, $s2, $a4
	move	$a4, $zero
	move	$a5, $zero
	add.d	$a3, $a3, $a6
	b	.LBB10_35
	.p2align	4, , 16
.LBB10_32:                              #   in Loop: Header=BB10_35 Depth=2
	srli.d	$a5, $a2, 8
	ldx.bu	$a5, $s7, $a5
	addi.d	$a5, $a5, 16
.LBB10_33:                              # %_ZN9NCompress8NDeflate8NEncoder10GetPosSlotEj.exit147
                                        #   in Loop: Header=BB10_35 Depth=2
	ldx.bu	$a7, $s2, $a7
	ldx.bu	$a5, $s2, $a5
	sub.d	$a3, $a3, $a7
	add.d	$a3, $a3, $a5
	move	$a5, $a6
.LBB10_34:                              #   in Loop: Header=BB10_35 Depth=2
	addi.w	$a4, $a4, 1
.LBB10_35:                              #   Parent Loop BB10_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$a6, $a4, 31, 0
	ldx.bu	$a7, $s5, $a6
	add.d	$a6, $s1, $a4
	bstrpick.d	$a6, $a6, 31, 0
	slli.d	$t0, $a6, 3
	ldx.w	$t0, $s8, $t0
	add.w	$a7, $a3, $a7
	bgeu	$a7, $t0, .LBB10_37
# %bb.36:                               #   in Loop: Header=BB10_35 Depth=2
	alsl.d	$a6, $a6, $s8, 3
	st.w	$a7, $a6, 0
	st.h	$s4, $a6, 4
	st.h	$a2, $a6, 6
.LBB10_37:                              #   in Loop: Header=BB10_35 Depth=2
	bstrpick.d	$a6, $a5, 31, 0
	slli.d	$a6, $a6, 1
	ldx.hu	$a6, $a1, $a6
	addi.w	$a7, $a4, 3
	bne	$a7, $a6, .LBB10_34
# %bb.38:                               #   in Loop: Header=BB10_35 Depth=2
	addi.w	$a6, $a5, 2
	beq	$a6, $a0, .LBB10_44
# %bb.39:                               #   in Loop: Header=BB10_35 Depth=2
	bltu	$fp, $a2, .LBB10_41
# %bb.40:                               #   in Loop: Header=BB10_35 Depth=2
	ldx.bu	$a7, $s7, $a2
	b	.LBB10_42
	.p2align	4, , 16
.LBB10_41:                              #   in Loop: Header=BB10_35 Depth=2
	bstrpick.d	$a2, $a2, 31, 8
	ldx.bu	$a2, $s7, $a2
	addi.d	$a7, $a2, 16
.LBB10_42:                              # %_ZN9NCompress8NDeflate8NEncoder10GetPosSlotEj.exit145
                                        #   in Loop: Header=BB10_35 Depth=2
	addi.d	$a2, $a5, 3
	bstrpick.d	$a2, $a2, 31, 0
	slli.d	$a2, $a2, 1
	ldx.hu	$a2, $a1, $a2
	bltu	$fp, $a2, .LBB10_32
# %bb.43:                               #   in Loop: Header=BB10_35 Depth=2
	ldx.bu	$a5, $s7, $a2
	b	.LBB10_33
	.p2align	4, , 16
.LBB10_44:                              # %_ZN9NCompress8NDeflate8NEncoder6CCoder7MovePosEj.exit141
                                        #   in Loop: Header=BB10_13 Depth=1
	addi.d	$s4, $s4, 1
	bstrpick.d	$a0, $s3, 31, 0
	beq	$s4, $a0, .LBB10_47
# %bb.45:                               # %_ZN9NCompress8NDeflate8NEncoder6CCoder7MovePosEj.exit141
                                        #   in Loop: Header=BB10_13 Depth=1
	lu12i.w	$a0, 1
	beq	$s4, $a0, .LBB10_47
# %bb.46:                               # %_ZN9NCompress8NDeflate8NEncoder6CCoder7MovePosEj.exit141
                                        #   in Loop: Header=BB10_13 Depth=1
	ld.w	$a0, $t4, 1288
	addi.d	$s0, $s0, 1
	addi.w	$t3, $t3, 1
	addi.w	$s1, $s1, 1
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	bgeu	$a1, $a0, .LBB10_13
.LBB10_47:                              # %._crit_edge172.loopexit
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	lu12i.w	$s1, 1
	ld.d	$t6, $sp, 8                     # 8-byte Folded Reload
.LBB10_48:                              # %._crit_edge172
	bstrpick.d	$a0, $s4, 31, 0
	alsl.d	$a0, $a0, $s8, 3
	ld.hu	$a1, $a0, 4
	ld.hu	$a0, $a0, 6
	st.w	$s4, $t4, 1384
	bstrpick.d	$a2, $s4, 15, 0
	.p2align	4, , 16
.LBB10_49:                              # =>This Inner Loop Header: Depth=1
	move	$a3, $a1
	alsl.d	$a4, $a1, $s8, 3
	ld.hu	$a5, $a4, 6
	ld.hu	$a1, $a4, 4
	st.h	$a0, $a4, 6
	st.h	$a2, $a4, 4
	move	$a0, $a5
	move	$a2, $a3
	bnez	$a3, .LBB10_49
# %bb.50:                               # %_ZN9NCompress8NDeflate8NEncoder6CCoder8BackwardERjj.exit
	ld.hu	$a0, $t6, 0
	ori	$a1, $s1, 836
	ldx.hu	$s3, $t4, $a1
	st.w	$a0, $fp, 0
	st.w	$s3, $t4, 1388
	b	.LBB10_59
.LBB10_51:                              # %.lr.ph
	move	$a2, $zero
	move	$a5, $zero
	addi.d	$a3, $t4, 1904
	addi.d	$a4, $t4, 1648
	addi.d	$a6, $t6, 24
	addi.d	$a7, $s3, -2
	ori	$t0, $zero, 511
	b	.LBB10_54
	.p2align	4, , 16
.LBB10_52:                              #   in Loop: Header=BB10_54 Depth=1
	srli.d	$t1, $t1, 8
	ldx.bu	$t1, $s7, $t1
	addi.d	$t1, $t1, 16
.LBB10_53:                              # %_ZN9NCompress8NDeflate8NEncoder10GetPosSlotEj.exit
                                        #   in Loop: Header=BB10_54 Depth=1
	ldx.bu	$t2, $a4, $a2
	ldx.bu	$t1, $a3, $t1
	bstrpick.d	$t3, $a5, 31, 0
	slli.d	$t3, $t3, 1
	ldx.hu	$t3, $a0, $t3
	add.d	$t1, $t1, $t2
	addi.d	$t2, $a2, 3
	st.w	$t1, $a6, -6
	xor	$t1, $t2, $t3
	sltui	$t1, $t1, 1
	addi.w	$t2, $a5, 2
	masknez	$a5, $a5, $t1
	maskeqz	$t1, $t2, $t1
	or	$a5, $t1, $a5
	addi.d	$a2, $a2, 1
	addi.d	$a6, $a6, 8
	beq	$a7, $a2, .LBB10_10
.LBB10_54:                              # =>This Inner Loop Header: Depth=1
	addi.d	$t1, $a5, 1
	bstrpick.d	$t1, $t1, 31, 0
	slli.d	$t1, $t1, 1
	ldx.hu	$t1, $a0, $t1
	st.h	$zero, $a6, -2
	st.h	$t1, $a6, 0
	bltu	$t0, $t1, .LBB10_52
# %bb.55:                               #   in Loop: Header=BB10_54 Depth=1
	ldx.bu	$t1, $s7, $t1
	b	.LBB10_53
.LBB10_56:
	move	$a0, $t4
	move	$a1, $s2
	move	$fp, $t4
	pcaddu18i	$ra, %call36(Hc3Zip_MatchFinder_Skip)
	jirl	$ra, $ra, 0
.LBB10_57:
	ld.w	$a0, $fp, 1380
	add.d	$a0, $a0, $s2
.LBB10_58:                              # %_ZN9NCompress8NDeflate8NEncoder6CCoder7MovePosEj.exit
	st.w	$a0, $fp, 1380
.LBB10_59:                              # %_ZN9NCompress8NDeflate8NEncoder6CCoder7MovePosEj.exit
	move	$a0, $s3
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
.LBB10_60:
	bstrpick.d	$a2, $s4, 31, 0
	alsl.d	$a2, $a2, $s8, 3
	ld.hu	$a5, $a2, 4
	ld.hu	$a3, $a2, 6
	bstrpick.d	$a6, $s4, 15, 0
	.p2align	4, , 16
.LBB10_61:                              # =>This Inner Loop Header: Depth=1
	move	$a7, $a5
	alsl.d	$t0, $a5, $s8, 3
	ld.hu	$t1, $t0, 6
	ld.hu	$a5, $t0, 4
	st.h	$a3, $t0, 6
	st.h	$a6, $t0, 4
	move	$a3, $t1
	move	$a6, $a7
	bnez	$a7, .LBB10_61
# %bb.62:                               # %_ZN9NCompress8NDeflate8NEncoder6CCoder8BackwardERjj.exit139
	ld.d	$a3, $sp, 8                     # 8-byte Folded Reload
	ld.hu	$a3, $a3, 0
	lu12i.w	$a5, 1
	ori	$a5, $a5, 836
	ldx.hu	$s3, $t4, $a5
	alsl.d	$a0, $a0, $a1, 1
	ld.h	$a0, $a0, -2
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	st.w	$a3, $a1, 0
	st.w	$s3, $t4, 1388
	st.h	$a0, $a2, 6
	add.d	$a0, $s4, $a4
	st.w	$a0, $t4, 1384
	addi.d	$s0, $a4, -1
	st.h	$a0, $a2, 4
	beqz	$s0, .LBB10_59
# %bb.63:                               # %_ZN9NCompress8NDeflate8NEncoder6CCoder8BackwardERjj.exit139
	ld.b	$a0, $t4, 1376
	andi	$a0, $a0, 1
	bnez	$a0, .LBB10_59
# %bb.64:
	ld.bu	$a0, $t4, 1269
	beqz	$a0, .LBB10_66
# %bb.65:
	move	$a0, $t4
	move	$a1, $s0
	move	$fp, $t4
	pcaddu18i	$ra, %call36(Bt3Zip_MatchFinder_Skip)
	jirl	$ra, $ra, 0
	b	.LBB10_67
.LBB10_66:
	move	$a0, $t4
	move	$a1, $s0
	move	$fp, $t4
	pcaddu18i	$ra, %call36(Hc3Zip_MatchFinder_Skip)
	jirl	$ra, $ra, 0
.LBB10_67:
	ld.w	$a0, $fp, 1380
	add.d	$a0, $a0, $s0
	b	.LBB10_58
.Lfunc_end10:
	.size	_ZN9NCompress8NDeflate8NEncoder6CCoder10GetOptimalERj, .Lfunc_end10-_ZN9NCompress8NDeflate8NEncoder6CCoder10GetOptimalERj
	.cfi_endproc
                                        # -- End function
	.globl	_ZN9NCompress8NDeflate8NEncoder6CCoder14GetOptimalFastERj # -- Begin function _ZN9NCompress8NDeflate8NEncoder6CCoder14GetOptimalFastERj
	.p2align	5
	.type	_ZN9NCompress8NDeflate8NEncoder6CCoder14GetOptimalFastERj,@function
_ZN9NCompress8NDeflate8NEncoder6CCoder14GetOptimalFastERj: # @_ZN9NCompress8NDeflate8NEncoder6CCoder14GetOptimalFastERj
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
	move	$s1, $a1
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_ZN9NCompress8NDeflate8NEncoder6CCoder10GetMatchesEv)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 1256
	ld.hu	$a0, $a1, 0
	beqz	$a0, .LBB11_5
# %bb.1:
	alsl.d	$a2, $a0, $a1, 1
	slli.d	$a3, $a0, 1
	ld.hu	$a0, $a2, -2
	ldx.hu	$a1, $a1, $a3
	addi.d	$s0, $a0, -1
	st.w	$a1, $s1, 0
	beqz	$s0, .LBB11_8
# %bb.2:
	ld.b	$a1, $fp, 1376
	andi	$a1, $a1, 1
	bnez	$a1, .LBB11_8
# %bb.3:
	move	$s1, $a0
	ld.bu	$a0, $fp, 1269
	beqz	$a0, .LBB11_6
# %bb.4:
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(Bt3Zip_MatchFinder_Skip)
	jirl	$ra, $ra, 0
	b	.LBB11_7
.LBB11_5:
	ori	$a0, $zero, 1
	b	.LBB11_8
.LBB11_6:
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(Hc3Zip_MatchFinder_Skip)
	jirl	$ra, $ra, 0
.LBB11_7:
	ld.w	$a0, $fp, 1380
	add.d	$a0, $a0, $s0
	st.w	$a0, $fp, 1380
	move	$a0, $s1
.LBB11_8:                               # %_ZN9NCompress8NDeflate8NEncoder6CCoder7MovePosEj.exit
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end11:
	.size	_ZN9NCompress8NDeflate8NEncoder6CCoder14GetOptimalFastERj, .Lfunc_end11-_ZN9NCompress8NDeflate8NEncoder6CCoder14GetOptimalFastERj
	.cfi_endproc
                                        # -- End function
	.globl	_ZN9NCompress8NDeflate8NEncoder7CTables14InitStructuresEv # -- Begin function _ZN9NCompress8NDeflate8NEncoder7CTables14InitStructuresEv
	.p2align	5
	.type	_ZN9NCompress8NDeflate8NEncoder7CTables14InitStructuresEv,@function
_ZN9NCompress8NDeflate8NEncoder7CTables14InitStructuresEv: # @_ZN9NCompress8NDeflate8NEncoder7CTables14InitStructuresEv
# %bb.0:                                # %.preheader
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a1, $zero, 8
	ori	$a2, $zero, 256
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 13
	st.b	$a0, $fp, 256
	lu12i.w	$a0, 20560
	ori	$a0, $a0, 1285
	bstrins.d	$a0, $a0, 58, 32
	st.d	$a0, $fp, 257
	st.d	$a0, $fp, 265
	st.d	$a0, $fp, 273
	st.d	$a0, $fp, 281
	st.d	$a0, $fp, 289
	st.d	$a0, $fp, 297
	st.d	$a0, $fp, 305
	st.d	$a0, $fp, 312
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end12:
	.size	_ZN9NCompress8NDeflate8NEncoder7CTables14InitStructuresEv, .Lfunc_end12-_ZN9NCompress8NDeflate8NEncoder7CTables14InitStructuresEv
                                        # -- End function
	.globl	_ZN9NCompress8NDeflate8NEncoder6CCoder15LevelTableDummyEPKhiPj # -- Begin function _ZN9NCompress8NDeflate8NEncoder6CCoder15LevelTableDummyEPKhiPj
	.p2align	5
	.type	_ZN9NCompress8NDeflate8NEncoder6CCoder15LevelTableDummyEPKhiPj,@function
_ZN9NCompress8NDeflate8NEncoder6CCoder15LevelTableDummyEPKhiPj: # @_ZN9NCompress8NDeflate8NEncoder6CCoder15LevelTableDummyEPKhiPj
# %bb.0:
	blez	$a2, .LBB13_17
# %bb.1:                                # %.lr.ph
	ld.bu	$a4, $a1, 0
	move	$a0, $zero
	move	$t5, $zero
	sltui	$a7, $a4, 1
	ori	$a5, $zero, 4
	sub.w	$t2, $a5, $a7
	ori	$a6, $zero, 7
	masknez	$t0, $a6, $a7
	ori	$a6, $zero, 138
	maskeqz	$a7, $a6, $a7
	or	$t4, $a7, $t0
	addi.w	$a7, $a2, -1
	addi.d	$a1, $a1, 1
	ori	$t3, $zero, 255
	ori	$t0, $zero, 9
	b	.LBB13_5
	.p2align	4, , 16
.LBB13_2:                               #   in Loop: Header=BB13_5 Depth=1
	slli.d	$t2, $a4, 2
	ldx.w	$t3, $a3, $t2
	add.d	$t3, $t3, $t6
	stx.w	$t3, $a3, $t2
.LBB13_3:                               #   in Loop: Header=BB13_5 Depth=1
	move	$t6, $zero
	xor	$t2, $a4, $t1
	sltui	$t2, $t2, 1
	sltui	$t3, $t1, 1
	xori	$t4, $t2, 7
	maskeqz	$t5, $a6, $t3
	masknez	$t4, $t4, $t3
	or	$t4, $t5, $t4
	or	$t2, $t3, $t2
	sub.w	$t2, $a5, $t2
	move	$t3, $a4
.LBB13_4:                               #   in Loop: Header=BB13_5 Depth=1
	addi.d	$a0, $a0, 1
	move	$t5, $t6
	move	$a4, $t1
	beq	$a2, $a0, .LBB13_17
.LBB13_5:                               # =>This Inner Loop Header: Depth=1
	ori	$t1, $zero, 255
	bgeu	$a0, $a7, .LBB13_7
# %bb.6:                                #   in Loop: Header=BB13_5 Depth=1
	ldx.bu	$t1, $a1, $a0
.LBB13_7:                               #   in Loop: Header=BB13_5 Depth=1
	addi.w	$t6, $t5, 1
	bge	$t6, $t4, .LBB13_9
# %bb.8:                                #   in Loop: Header=BB13_5 Depth=1
	beq	$a4, $t1, .LBB13_4
.LBB13_9:                               #   in Loop: Header=BB13_5 Depth=1
	blt	$t6, $t2, .LBB13_2
# %bb.10:                               #   in Loop: Header=BB13_5 Depth=1
	beqz	$a4, .LBB13_14
# %bb.11:                               #   in Loop: Header=BB13_5 Depth=1
	beq	$a4, $t3, .LBB13_13
# %bb.12:                               #   in Loop: Header=BB13_5 Depth=1
	slli.d	$t2, $a4, 2
	ldx.w	$t3, $a3, $t2
	addi.d	$t3, $t3, 1
	stx.w	$t3, $a3, $t2
.LBB13_13:                              #   in Loop: Header=BB13_5 Depth=1
	ld.w	$t2, $a3, 64
	addi.d	$t2, $t2, 1
	st.w	$t2, $a3, 64
	b	.LBB13_3
.LBB13_14:                              #   in Loop: Header=BB13_5 Depth=1
	blt	$t0, $t5, .LBB13_16
# %bb.15:                               #   in Loop: Header=BB13_5 Depth=1
	ld.w	$t2, $a3, 68
	addi.d	$t2, $t2, 1
	st.w	$t2, $a3, 68
	b	.LBB13_3
.LBB13_16:                              #   in Loop: Header=BB13_5 Depth=1
	ld.w	$t2, $a3, 72
	addi.d	$t2, $t2, 1
	st.w	$t2, $a3, 72
	b	.LBB13_3
.LBB13_17:                              # %._crit_edge
	ret
.Lfunc_end13:
	.size	_ZN9NCompress8NDeflate8NEncoder6CCoder15LevelTableDummyEPKhiPj, .Lfunc_end13-_ZN9NCompress8NDeflate8NEncoder6CCoder15LevelTableDummyEPKhiPj
                                        # -- End function
	.globl	_ZN9NCompress8NDeflate8NEncoder6CCoder9WriteBitsEji # -- Begin function _ZN9NCompress8NDeflate8NEncoder6CCoder9WriteBitsEji
	.p2align	5
	.type	_ZN9NCompress8NDeflate8NEncoder6CCoder9WriteBitsEji,@function
_ZN9NCompress8NDeflate8NEncoder6CCoder9WriteBitsEji: # @_ZN9NCompress8NDeflate8NEncoder6CCoder9WriteBitsEji
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB14_13
# %bb.1:                                # %.lr.ph.i
	addi.d	$sp, $sp, -64
	.cfi_def_cfa_offset 64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	move	$fp, $a2
	move	$s1, $a1
	move	$s0, $a0
	ld.w	$s3, $a0, 1224
	ld.bu	$a0, $a0, 1228
	bltu	$a2, $s3, .LBB14_11
# %bb.2:
	ori	$s4, $zero, 8
	sub.d	$a1, $s4, $s3
	ld.wu	$a2, $s0, 1176
	sll.w	$a1, $s1, $a1
	ld.d	$a3, $s0, 1168
	or	$a0, $a0, $a1
	addi.d	$a1, $a2, 1
	st.w	$a1, $s0, 1176
	stx.b	$a0, $a3, $a2
	ld.w	$a0, $s0, 1176
	ld.w	$a1, $s0, 1180
	addi.d	$s2, $s0, 1168
	sub.w	$fp, $fp, $s3
	bne	$a0, $a1, .LBB14_4
# %bb.3:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN10COutBuffer14FlushWithCheckEv)
	jirl	$ra, $ra, 0
.LBB14_4:                               # %_ZN10COutBuffer9WriteByteEh.exit.i.peel
	ld.w	$a0, $s0, 1224
	st.w	$s4, $s0, 1224
	st.b	$zero, $s0, 1228
	beqz	$fp, .LBB14_12
# %bb.5:                                # %.peel.next
	srl.w	$s1, $s1, $a0
	ori	$s4, $zero, 7
	ori	$s3, $zero, 8
	b	.LBB14_7
	.p2align	4, , 16
.LBB14_6:                               # %_ZN10COutBuffer9WriteByteEh.exit.i
                                        #   in Loop: Header=BB14_7 Depth=1
	ld.wu	$a0, $s0, 1224
	addi.w	$fp, $fp, -8
	srl.w	$s1, $s1, $a0
	st.w	$s3, $s0, 1224
	st.b	$zero, $s0, 1228
	beqz	$fp, .LBB14_12
.LBB14_7:                               # =>This Inner Loop Header: Depth=1
	bgeu	$s4, $fp, .LBB14_10
# %bb.8:                                #   in Loop: Header=BB14_7 Depth=1
	ld.wu	$a0, $s0, 1176
	ld.d	$a1, $s0, 1168
	addi.d	$a2, $a0, 1
	st.w	$a2, $s0, 1176
	stx.b	$s1, $a1, $a0
	ld.w	$a0, $s0, 1176
	ld.w	$a1, $s0, 1180
	bne	$a0, $a1, .LBB14_6
# %bb.9:                                #   in Loop: Header=BB14_7 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN10COutBuffer14FlushWithCheckEv)
	jirl	$ra, $ra, 0
	b	.LBB14_6
.LBB14_10:
	move	$a0, $zero
.LBB14_11:                              # %.loopexit
	addi.d	$a1, $zero, -1
	sll.w	$a1, $a1, $fp
	andn	$a1, $s1, $a1
	ori	$a2, $zero, 8
	sub.d	$a2, $a2, $s3
	sll.w	$a1, $a1, $a2
	or	$a0, $a0, $a1
	st.b	$a0, $s0, 1228
	sub.d	$a0, $s3, $fp
	st.w	$a0, $s0, 1224
.LBB14_12:
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
.LBB14_13:                              # %_ZN12CBitlEncoder9WriteBitsEjj.exit
	ret
.Lfunc_end14:
	.size	_ZN9NCompress8NDeflate8NEncoder6CCoder9WriteBitsEji, .Lfunc_end14-_ZN9NCompress8NDeflate8NEncoder6CCoder9WriteBitsEji
	.cfi_endproc
                                        # -- End function
	.globl	_ZN9NCompress8NDeflate8NEncoder6CCoder14LevelTableCodeEPKhiS4_PKj # -- Begin function _ZN9NCompress8NDeflate8NEncoder6CCoder14LevelTableCodeEPKhiS4_PKj
	.p2align	5
	.type	_ZN9NCompress8NDeflate8NEncoder6CCoder14LevelTableCodeEPKhiS4_PKj,@function
_ZN9NCompress8NDeflate8NEncoder6CCoder14LevelTableCodeEPKhiS4_PKj: # @_ZN9NCompress8NDeflate8NEncoder6CCoder14LevelTableCodeEPKhiS4_PKj
	.cfi_startproc
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
	st.d	$a4, $sp, 16                    # 8-byte Folded Spill
	st.d	$a3, $sp, 64                    # 8-byte Folded Spill
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	blez	$a2, .LBB15_34
# %bb.1:                                # %.lr.ph77
	move	$s3, $a0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.bu	$s6, $a0, 0
	move	$s5, $zero
	move	$s1, $zero
	sltui	$a1, $s6, 1
	ori	$a0, $zero, 4
	sub.w	$a0, $a0, $a1
	ori	$a3, $zero, 7
	masknez	$a3, $a3, $a1
	ori	$a4, $zero, 138
	maskeqz	$a1, $a4, $a1
	or	$a4, $a1, $a3
	addi.w	$a5, $a2, -1
	addi.d	$s4, $s3, 1168
	ori	$a1, $zero, 255
	ori	$fp, $zero, 8
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	st.d	$a5, $sp, 24                    # 8-byte Folded Spill
	b	.LBB15_6
.LBB15_2:                               #   in Loop: Header=BB15_6 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.w	$a1, $a0, 64
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.bu	$a2, $a0, 16
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN9NCompress8NDeflate8NEncoder6CCoder9WriteBitsEji)
	jirl	$ra, $ra, 0
	addi.w	$a1, $s0, -3
	ori	$a2, $zero, 2
.LBB15_3:                               # %.loopexit
                                        #   in Loop: Header=BB15_6 Depth=1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN9NCompress8NDeflate8NEncoder6CCoder9WriteBitsEji)
	jirl	$ra, $ra, 0
.LBB15_4:                               # %.loopexit
                                        #   in Loop: Header=BB15_6 Depth=1
	move	$s0, $zero
	ld.d	$a6, $sp, 48                    # 8-byte Folded Reload
	xor	$a0, $s6, $a6
	sltui	$a0, $a0, 1
	sltui	$a1, $a6, 1
	xori	$a2, $a0, 7
	ori	$a3, $zero, 138
	maskeqz	$a3, $a3, $a1
	masknez	$a2, $a2, $a1
	or	$a4, $a3, $a2
	or	$a0, $a1, $a0
	ori	$a1, $zero, 4
	sub.w	$a0, $a1, $a0
	move	$a1, $s6
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 24                    # 8-byte Folded Reload
.LBB15_5:                               #   in Loop: Header=BB15_6 Depth=1
	addi.d	$s5, $s5, 1
	move	$s1, $s0
	move	$s6, $a6
	beq	$s5, $a2, .LBB15_34
.LBB15_6:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_16 Depth 2
                                        #       Child Loop BB15_23 Depth 3
	ori	$a6, $zero, 255
	bgeu	$s5, $a5, .LBB15_8
# %bb.7:                                #   in Loop: Header=BB15_6 Depth=1
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	add.d	$a3, $a3, $s5
	ld.bu	$a6, $a3, 1
.LBB15_8:                               #   in Loop: Header=BB15_6 Depth=1
	addi.w	$s0, $s1, 1
	bge	$s0, $a4, .LBB15_10
# %bb.9:                                #   in Loop: Header=BB15_6 Depth=1
	beq	$s6, $a6, .LBB15_5
.LBB15_10:                              #   in Loop: Header=BB15_6 Depth=1
	st.d	$a6, $sp, 48                    # 8-byte Folded Spill
	bge	$s0, $a0, .LBB15_28
# %bb.11:                               # %.preheader
                                        #   in Loop: Header=BB15_6 Depth=1
	bltz	$s1, .LBB15_4
# %bb.12:                               # %.lr.ph
                                        #   in Loop: Header=BB15_6 Depth=1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ldx.bu	$a1, $a0, $s6
	beqz	$a1, .LBB15_4
# %bb.13:                               # %.lr.ph.split.preheader
                                        #   in Loop: Header=BB15_6 Depth=1
	move	$s7, $zero
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	alsl.d	$a0, $s6, $a0, 2
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	b	.LBB15_16
	.p2align	4, , 16
.LBB15_14:                              # %_ZN9NCompress8NDeflate8NEncoder6CCoder9WriteBitsEji.exit
                                        #   in Loop: Header=BB15_16 Depth=2
	beq	$s7, $s1, .LBB15_4
.LBB15_15:                              # %.lr.ph.splitthread-pre-split
                                        #   in Loop: Header=BB15_16 Depth=2
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ldx.bu	$a1, $a0, $s6
	addi.w	$s7, $s7, 1
.LBB15_16:                              # %.lr.ph.split
                                        #   Parent Loop BB15_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB15_23 Depth 3
	beqz	$a1, .LBB15_14
# %bb.17:                               # %.lr.ph.i.i
                                        #   in Loop: Header=BB15_16 Depth=2
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.w	$s0, $a0, 0
	ld.w	$s8, $s3, 1224
	ld.bu	$a0, $s3, 1228
	andi	$s2, $a1, 255
	bltu	$s2, $s8, .LBB15_27
# %bb.18:                               #   in Loop: Header=BB15_16 Depth=2
	sub.d	$a1, $fp, $s8
	ld.wu	$a2, $s3, 1176
	sll.w	$a1, $s0, $a1
	ld.d	$a3, $s3, 1168
	or	$a0, $a0, $a1
	addi.d	$a1, $a2, 1
	st.w	$a1, $s3, 1176
	stx.b	$a0, $a3, $a2
	ld.w	$a0, $s3, 1176
	ld.w	$a1, $s3, 1180
	bne	$a0, $a1, .LBB15_20
# %bb.19:                               #   in Loop: Header=BB15_16 Depth=2
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZN10COutBuffer14FlushWithCheckEv)
	jirl	$ra, $ra, 0
.LBB15_20:                              # %_ZN10COutBuffer9WriteByteEh.exit.i.peel.i
                                        #   in Loop: Header=BB15_16 Depth=2
	ld.w	$a0, $s3, 1224
	sub.w	$s2, $s2, $s8
	st.w	$fp, $s3, 1224
	st.b	$zero, $s3, 1228
	ori	$s8, $zero, 7
	beqz	$s2, .LBB15_14
# %bb.21:                               # %.peel.next.i
                                        #   in Loop: Header=BB15_16 Depth=2
	srl.w	$s0, $s0, $a0
	b	.LBB15_23
	.p2align	4, , 16
.LBB15_22:                              # %_ZN10COutBuffer9WriteByteEh.exit.i.i
                                        #   in Loop: Header=BB15_23 Depth=3
	ld.wu	$a0, $s3, 1224
	addi.w	$s2, $s2, -8
	srl.w	$s0, $s0, $a0
	st.w	$fp, $s3, 1224
	st.b	$zero, $s3, 1228
	beqz	$s2, .LBB15_14
.LBB15_23:                              #   Parent Loop BB15_6 Depth=1
                                        #     Parent Loop BB15_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bgeu	$s8, $s2, .LBB15_26
# %bb.24:                               #   in Loop: Header=BB15_23 Depth=3
	ld.wu	$a0, $s3, 1176
	ld.d	$a1, $s3, 1168
	addi.d	$a2, $a0, 1
	st.w	$a2, $s3, 1176
	stx.b	$s0, $a1, $a0
	ld.w	$a0, $s3, 1176
	ld.w	$a1, $s3, 1180
	bne	$a0, $a1, .LBB15_22
# %bb.25:                               #   in Loop: Header=BB15_23 Depth=3
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZN10COutBuffer14FlushWithCheckEv)
	jirl	$ra, $ra, 0
	b	.LBB15_22
.LBB15_26:                              #   in Loop: Header=BB15_16 Depth=2
	move	$a0, $zero
	ori	$s8, $zero, 8
.LBB15_27:                              # %.loopexit.i
                                        #   in Loop: Header=BB15_16 Depth=2
	addi.d	$a1, $zero, -1
	sll.w	$a1, $a1, $s2
	andn	$a1, $s0, $a1
	sub.d	$a2, $fp, $s8
	sll.w	$a1, $a1, $a2
	or	$a0, $a0, $a1
	st.b	$a0, $s3, 1228
	sub.d	$a0, $s8, $s2
	st.w	$a0, $s3, 1224
	bne	$s7, $s1, .LBB15_15
	b	.LBB15_4
	.p2align	4, , 16
.LBB15_28:                              #   in Loop: Header=BB15_6 Depth=1
	beqz	$s6, .LBB15_31
# %bb.29:                               #   in Loop: Header=BB15_6 Depth=1
	beq	$s6, $a1, .LBB15_2
# %bb.30:                               #   in Loop: Header=BB15_6 Depth=1
	slli.d	$a0, $s6, 2
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ldx.w	$a1, $a1, $a0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ldx.bu	$a2, $a0, $s6
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN9NCompress8NDeflate8NEncoder6CCoder9WriteBitsEji)
	jirl	$ra, $ra, 0
	move	$s0, $s1
	b	.LBB15_2
.LBB15_31:                              #   in Loop: Header=BB15_6 Depth=1
	ori	$a0, $zero, 9
	blt	$a0, $s1, .LBB15_33
# %bb.32:                               #   in Loop: Header=BB15_6 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.w	$a1, $a0, 68
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.bu	$a2, $a0, 17
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN9NCompress8NDeflate8NEncoder6CCoder9WriteBitsEji)
	jirl	$ra, $ra, 0
	addi.w	$a1, $s1, -2
	ori	$a2, $zero, 3
	b	.LBB15_3
.LBB15_33:                              #   in Loop: Header=BB15_6 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.w	$a1, $a0, 72
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.bu	$a2, $a0, 18
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN9NCompress8NDeflate8NEncoder6CCoder9WriteBitsEji)
	jirl	$ra, $ra, 0
	addi.w	$a1, $s1, -10
	ori	$a2, $zero, 7
	b	.LBB15_3
.LBB15_34:                              # %._crit_edge
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
.Lfunc_end15:
	.size	_ZN9NCompress8NDeflate8NEncoder6CCoder14LevelTableCodeEPKhiS4_PKj, .Lfunc_end15-_ZN9NCompress8NDeflate8NEncoder6CCoder14LevelTableCodeEPKhiS4_PKj
	.cfi_endproc
                                        # -- End function
	.globl	_ZN9NCompress8NDeflate8NEncoder6CCoder10MakeTablesEj # -- Begin function _ZN9NCompress8NDeflate8NEncoder6CCoder10MakeTablesEj
	.p2align	5
	.type	_ZN9NCompress8NDeflate8NEncoder6CCoder10MakeTablesEj,@function
_ZN9NCompress8NDeflate8NEncoder6CCoder10MakeTablesEj: # @_ZN9NCompress8NDeflate8NEncoder6CCoder10MakeTablesEj
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
	addi.d	$s1, $a0, 2047
	addi.d	$a0, $s1, 209
	addi.d	$a1, $s1, 1489
	addi.d	$a2, $s0, 1936
	ori	$a3, $zero, 288
	move	$a4, $fp
	pcaddu18i	$ra, %call36(Huffman_Generate)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s1, 1361
	lu12i.w	$a1, 1
	ori	$a1, $a1, 592
	add.d	$a1, $s0, $a1
	addi.d	$a2, $s1, 177
	ori	$a3, $zero, 32
	move	$a4, $fp
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(Huffman_Generate)
	jr	$t8
.Lfunc_end16:
	.size	_ZN9NCompress8NDeflate8NEncoder6CCoder10MakeTablesEj, .Lfunc_end16-_ZN9NCompress8NDeflate8NEncoder6CCoder10MakeTablesEj
	.cfi_endproc
                                        # -- End function
	.globl	_ZN9NCompress8NDeflate8NEncoder16Huffman_GetPriceEPKjPKhj # -- Begin function _ZN9NCompress8NDeflate8NEncoder16Huffman_GetPriceEPKjPKhj
	.p2align	5
	.type	_ZN9NCompress8NDeflate8NEncoder16Huffman_GetPriceEPKjPKhj,@function
_ZN9NCompress8NDeflate8NEncoder16Huffman_GetPriceEPKjPKhj: # @_ZN9NCompress8NDeflate8NEncoder16Huffman_GetPriceEPKjPKhj
# %bb.0:
	beqz	$a2, .LBB17_3
# %bb.1:                                # %.lr.ph.preheader
	ori	$a4, $zero, 8
	bstrpick.d	$a3, $a2, 31, 0
	bgeu	$a2, $a4, .LBB17_4
# %bb.2:
	move	$a2, $zero
	move	$a4, $zero
	b	.LBB17_7
.LBB17_3:
	move	$a4, $zero
	addi.w	$a0, $a4, 0
	ret
.LBB17_4:                               # %vector.ph
	bstrpick.d	$a2, $a3, 31, 3
	slli.d	$a2, $a2, 3
	addi.d	$a4, $a0, 16
	vrepli.b	$vr0, 0
	addi.d	$a5, $a1, 4
	move	$a6, $a2
	vori.b	$vr1, $vr0, 0
	vori.b	$vr2, $vr0, 0
	.p2align	4, , 16
.LBB17_5:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a7, $a5, -4
	ld.w	$t0, $a5, 0
	vinsgr2vr.w	$vr3, $a7, 0
	vinsgr2vr.w	$vr4, $t0, 0
	vilvl.b	$vr3, $vr0, $vr3
	vilvl.h	$vr3, $vr0, $vr3
	vld	$vr5, $a4, -16
	vld	$vr6, $a4, 0
	vilvl.b	$vr4, $vr0, $vr4
	vilvl.h	$vr4, $vr0, $vr4
	vmadd.w	$vr1, $vr5, $vr3
	vmadd.w	$vr2, $vr6, $vr4
	addi.d	$a6, $a6, -8
	addi.d	$a4, $a4, 32
	addi.d	$a5, $a5, 8
	bnez	$a6, .LBB17_5
# %bb.6:                                # %middle.block
	vadd.w	$vr0, $vr2, $vr1
	vhaddw.d.w	$vr0, $vr0, $vr0
	vhaddw.q.d	$vr0, $vr0, $vr0
	vpickve2gr.d	$a4, $vr0, 0
	beq	$a2, $a3, .LBB17_9
.LBB17_7:                               # %.lr.ph.preheader15
	add.d	$a1, $a1, $a2
	alsl.d	$a0, $a2, $a0, 2
	sub.d	$a2, $a3, $a2
	.p2align	4, , 16
.LBB17_8:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a3, $a1, 0
	ld.w	$a5, $a0, 0
	mul.d	$a3, $a5, $a3
	add.d	$a4, $a3, $a4
	addi.d	$a1, $a1, 1
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 4
	bnez	$a2, .LBB17_8
.LBB17_9:                               # %._crit_edge
	addi.w	$a0, $a4, 0
	ret
.Lfunc_end17:
	.size	_ZN9NCompress8NDeflate8NEncoder16Huffman_GetPriceEPKjPKhj, .Lfunc_end17-_ZN9NCompress8NDeflate8NEncoder16Huffman_GetPriceEPKjPKhj
                                        # -- End function
	.globl	_ZN9NCompress8NDeflate8NEncoder21Huffman_GetPrice_SpecEPKjPKhjS5_j # -- Begin function _ZN9NCompress8NDeflate8NEncoder21Huffman_GetPrice_SpecEPKjPKhjS5_j
	.p2align	5
	.type	_ZN9NCompress8NDeflate8NEncoder21Huffman_GetPrice_SpecEPKjPKhjS5_j,@function
_ZN9NCompress8NDeflate8NEncoder21Huffman_GetPrice_SpecEPKjPKhjS5_j: # @_ZN9NCompress8NDeflate8NEncoder21Huffman_GetPrice_SpecEPKjPKhjS5_j
# %bb.0:
	beqz	$a2, .LBB18_3
# %bb.1:                                # %.lr.ph.preheader.i
	ori	$a5, $zero, 8
	bstrpick.d	$a6, $a2, 31, 0
	bgeu	$a2, $a5, .LBB18_4
# %bb.2:
	move	$a7, $zero
	move	$a5, $zero
	b	.LBB18_7
.LBB18_3:
	move	$a5, $zero
	b	.LBB18_9
.LBB18_4:                               # %vector.ph
	bstrpick.d	$a5, $a6, 31, 3
	slli.d	$a7, $a5, 3
	addi.d	$a5, $a0, 16
	vrepli.b	$vr0, 0
	addi.d	$t0, $a1, 4
	move	$t1, $a7
	vori.b	$vr1, $vr0, 0
	vori.b	$vr2, $vr0, 0
	.p2align	4, , 16
.LBB18_5:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t2, $t0, -4
	ld.w	$t3, $t0, 0
	vinsgr2vr.w	$vr3, $t2, 0
	vinsgr2vr.w	$vr4, $t3, 0
	vilvl.b	$vr3, $vr0, $vr3
	vilvl.h	$vr3, $vr0, $vr3
	vld	$vr5, $a5, -16
	vld	$vr6, $a5, 0
	vilvl.b	$vr4, $vr0, $vr4
	vilvl.h	$vr4, $vr0, $vr4
	vmadd.w	$vr1, $vr5, $vr3
	vmadd.w	$vr2, $vr6, $vr4
	addi.d	$t1, $t1, -8
	addi.d	$a5, $a5, 32
	addi.d	$t0, $t0, 8
	bnez	$t1, .LBB18_5
# %bb.6:                                # %middle.block
	vadd.w	$vr0, $vr2, $vr1
	vhaddw.d.w	$vr0, $vr0, $vr0
	vhaddw.q.d	$vr0, $vr0, $vr0
	vpickve2gr.d	$a5, $vr0, 0
	beq	$a7, $a6, .LBB18_9
.LBB18_7:                               # %.lr.ph.i.preheader
	sub.d	$a6, $a6, $a7
	alsl.d	$t0, $a7, $a0, 2
	add.d	$a1, $a1, $a7
	.p2align	4, , 16
.LBB18_8:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a7, $a1, 0
	ld.w	$t1, $t0, 0
	mul.d	$a7, $t1, $a7
	add.d	$a5, $a7, $a5
	addi.d	$a6, $a6, -1
	addi.d	$t0, $t0, 4
	addi.d	$a1, $a1, 1
	bnez	$a6, .LBB18_8
.LBB18_9:                               # %_ZN9NCompress8NDeflate8NEncoder16Huffman_GetPriceEPKjPKhj.exit
	bne	$a2, $a4, .LBB18_11
# %bb.10:
	add.w	$a0, $zero, $a5
	ret
.LBB18_11:                              # %.lr.ph.preheader.i8
	bstrpick.d	$a1, $a4, 31, 0
	sub.w	$a4, $a2, $a4
	ori	$a6, $zero, 8
	bstrpick.d	$a2, $a4, 31, 0
	bgeu	$a4, $a6, .LBB18_13
# %bb.12:
	move	$a4, $zero
	move	$a6, $zero
	b	.LBB18_16
.LBB18_13:                              # %vector.ph28
	bstrpick.d	$a4, $a2, 31, 3
	slli.d	$a4, $a4, 3
	alsl.d	$a6, $a1, $a0, 2
	addi.d	$a6, $a6, 16
	vrepli.b	$vr0, 0
	addi.d	$a7, $a3, 4
	move	$t0, $a4
	vori.b	$vr1, $vr0, 0
	vori.b	$vr2, $vr0, 0
	.p2align	4, , 16
.LBB18_14:                              # %vector.body31
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t1, $a7, -4
	ld.w	$t2, $a7, 0
	vinsgr2vr.w	$vr3, $t1, 0
	vinsgr2vr.w	$vr4, $t2, 0
	vilvl.b	$vr3, $vr0, $vr3
	vilvl.h	$vr3, $vr0, $vr3
	vld	$vr5, $a6, -16
	vld	$vr6, $a6, 0
	vilvl.b	$vr4, $vr0, $vr4
	vilvl.h	$vr4, $vr0, $vr4
	vmadd.w	$vr1, $vr5, $vr3
	vmadd.w	$vr2, $vr6, $vr4
	addi.d	$t0, $t0, -8
	addi.d	$a6, $a6, 32
	addi.d	$a7, $a7, 8
	bnez	$t0, .LBB18_14
# %bb.15:                               # %middle.block40
	vadd.w	$vr0, $vr2, $vr1
	vhaddw.d.w	$vr0, $vr0, $vr0
	vhaddw.q.d	$vr0, $vr0, $vr0
	vpickve2gr.d	$a6, $vr0, 0
	beq	$a4, $a2, .LBB18_18
.LBB18_16:                              # %.lr.ph.i10.preheader
	sub.d	$a2, $a2, $a4
	slli.d	$a7, $a4, 2
	alsl.d	$a1, $a1, $a7, 2
	add.d	$a0, $a0, $a1
	add.d	$a1, $a3, $a4
	.p2align	4, , 16
.LBB18_17:                              # %.lr.ph.i10
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a3, $a1, 0
	ld.w	$a4, $a0, 0
	mul.d	$a3, $a4, $a3
	add.d	$a6, $a3, $a6
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 4
	addi.d	$a1, $a1, 1
	bnez	$a2, .LBB18_17
.LBB18_18:                              # %_ZN9NCompress8NDeflate8NEncoder16Huffman_GetPriceEPKjPKhj.exit16
	add.w	$a0, $a6, $a5
	ret
.Lfunc_end18:
	.size	_ZN9NCompress8NDeflate8NEncoder21Huffman_GetPrice_SpecEPKjPKhjS5_j, .Lfunc_end18-_ZN9NCompress8NDeflate8NEncoder21Huffman_GetPrice_SpecEPKjPKhjS5_j
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZNK9NCompress8NDeflate8NEncoder6CCoder15GetLzBlockPriceEv
.LCPI19_0:
	.word	9                               # 0x9
	.word	10                              # 0xa
	.word	10                              # 0xa
	.word	11                              # 0xb
.LCPI19_1:
	.word	5                               # 0x5
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
.LCPI19_2:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	4294967295                      # 0xffffffff
	.word	4                               # 0x4
.LCPI19_3:
	.word	6                               # 0x6
	.word	7                               # 0x7
	.word	7                               # 0x7
	.word	9                               # 0x9
.LCPI19_4:
	.word	3                               # 0x3
	.word	5                               # 0x5
	.word	5                               # 0x5
	.word	6                               # 0x6
.LCPI19_5:
	.word	11                              # 0xb
	.word	12                              # 0xc
	.word	12                              # 0xc
	.word	13                              # 0xd
	.text
	.globl	_ZNK9NCompress8NDeflate8NEncoder6CCoder15GetLzBlockPriceEv
	.p2align	5
	.type	_ZNK9NCompress8NDeflate8NEncoder6CCoder15GetLzBlockPriceEv,@function
_ZNK9NCompress8NDeflate8NEncoder6CCoder15GetLzBlockPriceEv: # @_ZNK9NCompress8NDeflate8NEncoder6CCoder15GetLzBlockPriceEv
# %bb.0:                                # %vector.ph
	addi.d	$sp, $sp, -128
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
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 8                    # 8-byte Folded Spill
	move	$a1, $zero
	addi.d	$a2, $a0, 2047
	addi.d	$s0, $a2, 179
	addi.d	$a3, $a2, 209
	ld.d	$a2, $a0, 1328
	addi.d	$a4, $a0, 1940
	vrepli.b	$vr0, 0
	ori	$a5, $zero, 1152
	vori.b	$vr1, $vr0, 0
	vori.b	$vr2, $vr0, 0
	.p2align	4, , 16
.LBB19_1:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a6, $a4, -4
	ld.w	$a7, $a4, 0
	vinsgr2vr.d	$vr3, $a6, 0
	vinsgr2vr.w	$vr4, $a7, 0
	vilvl.b	$vr3, $vr0, $vr3
	vilvl.h	$vr3, $vr0, $vr3
	add.d	$a6, $a3, $a1
	vldx	$vr5, $a3, $a1
	vld	$vr6, $a6, 16
	vilvl.b	$vr4, $vr0, $vr4
	vilvl.h	$vr4, $vr0, $vr4
	vmadd.w	$vr1, $vr5, $vr3
	vmadd.w	$vr2, $vr6, $vr4
	addi.d	$a1, $a1, 32
	addi.d	$a4, $a4, 8
	bne	$a1, $a5, .LBB19_1
# %bb.2:                                # %middle.block
	vadd.w	$vr0, $vr2, $vr1
	vhaddw.d.w	$vr0, $vr0, $vr0
	vhaddw.q.d	$vr0, $vr0, $vr0
	vpickve2gr.d	$a1, $vr0, 0
	ld.bu	$a7, $a2, 16
	ori	$a3, $zero, 3348
	ldx.w	$t0, $a0, $a3
	ld.bu	$t1, $a2, 17
	ori	$a3, $zero, 3352
	ldx.w	$t2, $a0, $a3
	ld.b	$s7, $a2, 30
	ld.b	$s6, $s0, 0
	ld.bu	$t5, $s0, 17
	ori	$a3, $zero, 3484
	ldx.w	$t6, $a0, $a3
	ori	$a3, $zero, 2244
	ldx.bu	$t7, $a0, $a3
	ori	$a3, $zero, 3488
	ldx.w	$s5, $a0, $a3
	ld.bu	$t8, $s0, 19
	ld.bu	$fp, $s0, 20
	ld.bu	$s8, $s0, 21
	ori	$a3, $zero, 2248
	ldx.bu	$s1, $a0, $a3
	ld.bu	$s2, $s0, 27
	ld.bu	$s3, $s0, 28
	ld.bu	$s4, $s0, 29
	ori	$a3, $zero, 3532
	ldx.w	$a3, $a0, $a3
	ori	$a4, $zero, 3424
	ori	$a5, $zero, 3432
	ldx.w	$a6, $a0, $a5
	ori	$t3, $zero, 3436
	ldx.w	$t4, $a0, $t3
	ldx.w	$a4, $a0, $a4
	ori	$a5, $zero, 3428
	ldx.w	$a5, $a0, $a5
	add.w	$a6, $a6, $t4
	slli.d	$a6, $a6, 1
	ori	$t4, $zero, 3448
	ldx.w	$t4, $a0, $t4
	ori	$ra, $zero, 3492
	vldx	$vr0, $a0, $ra
	pcalau12i	$ra, %pc_hi20(.LCPI19_0)
	vld	$vr1, $ra, %pc_lo12(.LCPI19_0)
	vld	$vr6, $s0, 1
	vldx	$vr2, $a0, $t3
	ori	$t3, $zero, 3420
	ori	$ra, $zero, 3452
	vldx	$vr3, $a0, $ra
	ori	$ra, $zero, 3468
	vldx	$vr12, $a0, $ra
	vldx	$vr4, $a0, $t3
	vpickve2gr.w	$t3, $vr3, 0
	add.w	$t3, $t4, $t3
	vpickve2gr.w	$t4, $vr12, 3
	add.w	$t4, $t4, $t6
	vrepli.b	$vr7, 0
	vilvh.b	$vr9, $vr7, $vr6
	vilvl.h	$vr5, $vr7, $vr9
	vilvl.b	$vr8, $vr7, $vr6
	vilvh.h	$vr6, $vr7, $vr8
	vilvl.h	$vr8, $vr7, $vr8
	vilvh.h	$vr13, $vr7, $vr9
	mul.d	$t5, $t6, $t5
	mul.d	$t6, $s5, $t7
	vpickve2gr.w	$t7, $vr0, 0
	mul.d	$t7, $t7, $t8
	vpickve2gr.w	$t8, $vr0, 1
	mul.d	$t8, $t8, $fp
	vpickve2gr.w	$fp, $vr0, 2
	mul.d	$fp, $fp, $s8
	ld.w	$s8, $s0, 23
	vpickve2gr.w	$s0, $vr0, 3
	mul.d	$s0, $s0, $s1
	ldptr.d	$s1, $a0, 3524
	vinsgr2vr.w	$vr14, $s8, 0
	ori	$s8, $zero, 3508
	vldx	$vr9, $a0, $s8
	vinsgr2vr.d	$vr15, $s1, 0
	ori	$s1, $zero, 3528
	ldx.w	$s1, $a0, $s1
	ldptr.d	$ra, $a0, 3440
	pcalau12i	$s8, %pc_hi20(.LCPI19_1)
	vld	$vr10, $s8, %pc_lo12(.LCPI19_1)
	pcalau12i	$s8, %pc_hi20(.LCPI19_2)
	vld	$vr11, $s8, %pc_lo12(.LCPI19_2)
	ori	$s8, $zero, 3524
	ldx.w	$s8, $a0, $s8
	vinsgr2vr.d	$vr16, $ra, 0
	vshuf.w	$vr10, $vr16, $vr3
	vshuf.w	$vr11, $vr16, $vr15
	vinsgr2vr.w	$vr11, $a3, 2
	vld	$vr16, $a2, 0
	ori	$ra, $zero, 3332
	vldx	$vr15, $a0, $ra
	ldptr.d	$ra, $a0, 2224
	vilvh.b	$vr17, $vr7, $vr16
	vilvh.h	$vr18, $vr7, $vr17
	vmul.w	$vr15, $vr15, $vr18
	vinsgr2vr.d	$vr18, $ra, 0
	ori	$ra, $zero, 3404
	vldx	$vr19, $a0, $ra
	vinsgr2vr.b	$vr20, $s7, 0
	vextrins.b	$vr20, $vr18, 16
	vextrins.b	$vr20, $vr18, 33
	vinsgr2vr.b	$vr20, $s6, 3
	vilvl.b	$vr18, $vr7, $vr20
	vilvl.h	$vr18, $vr7, $vr18
	vmadd.w	$vr15, $vr19, $vr18
	vmadd.w	$vr15, $vr12, $vr13
	vinsgr2vr.w	$vr12, $s5, 3
	vilvl.b	$vr13, $vr7, $vr14
	vilvl.h	$vr13, $vr7, $vr13
	pcalau12i	$s5, %pc_hi20(.LCPI19_3)
	vld	$vr14, $s5, %pc_lo12(.LCPI19_3)
	pcalau12i	$s5, %pc_hi20(.LCPI19_4)
	vld	$vr18, $s5, %pc_lo12(.LCPI19_4)
	vrepli.w	$vr19, 3
	vinsgr2vr.w	$vr19, $s2, 0
	vinsgr2vr.w	$vr19, $s3, 1
	vinsgr2vr.w	$vr19, $s4, 2
	pcalau12i	$s2, %pc_hi20(.LCPI19_5)
	vld	$vr20, $s2, %pc_lo12(.LCPI19_5)
	alsl.d	$s2, $s8, $s8, 1
	alsl.d	$s2, $s2, $s8, 2
	ori	$s3, $zero, 3316
	vldx	$vr21, $a0, $s3
	ori	$s3, $zero, 3300
	vldx	$vr22, $a0, $s3
	ori	$s3, $zero, 3284
	vldx	$vr23, $a0, $s3
	vilvl.h	$vr17, $vr7, $vr17
	vilvl.b	$vr16, $vr7, $vr16
	vilvh.h	$vr24, $vr7, $vr16
	vilvl.h	$vr16, $vr7, $vr16
	vmul.w	$vr16, $vr23, $vr16
	vmul.w	$vr22, $vr22, $vr24
	vmul.w	$vr17, $vr21, $vr17
	ld.d	$s3, $a2, 18
	ld.w	$a2, $a2, 26
	mul.d	$a7, $t0, $a7
	mul.d	$t0, $t2, $t1
	vinsgr2vr.d	$vr21, $s3, 0
	vinsgr2vr.w	$vr23, $a2, 0
	ori	$a2, $zero, 3356
	vldx	$vr24, $a0, $a2
	ori	$a2, $zero, 3372
	vldx	$vr25, $a0, $a2
	ori	$a2, $zero, 3388
	vldx	$vr26, $a0, $a2
	vilvl.b	$vr21, $vr7, $vr21
	vilvl.h	$vr27, $vr7, $vr21
	vilvh.h	$vr21, $vr7, $vr21
	vilvl.b	$vr23, $vr7, $vr23
	vilvl.h	$vr7, $vr7, $vr23
	vmadd.w	$vr17, $vr26, $vr7
	vmadd.w	$vr22, $vr25, $vr21
	vmadd.w	$vr16, $vr24, $vr27
	vmadd.w	$vr16, $vr4, $vr8
	vmadd.w	$vr22, $vr2, $vr6
	vmadd.w	$vr17, $vr3, $vr5
	vmadd.w	$vr17, $vr10, $vr18
	vmadd.w	$vr22, $vr11, $vr19
	vmadd.w	$vr15, $vr12, $vr14
	vmadd.w	$vr16, $vr9, $vr13
	vmadd.w	$vr16, $vr0, $vr1
	vmadd.w	$vr16, $vr9, $vr20
	vadd.w	$vr0, $vr22, $vr15
	vadd.w	$vr1, $vr16, $vr17
	vadd.w	$vr0, $vr1, $vr0
	vhaddw.d.w	$vr0, $vr0, $vr0
	vhaddw.q.d	$vr0, $vr0, $vr0
	vpickve2gr.d	$a0, $vr0, 0
	add.d	$a0, $a0, $a7
	add.d	$a2, $t0, $t5
	add.d	$a7, $t6, $t7
	add.d	$t0, $t8, $fp
	add.d	$t1, $s0, $s2
	add.d	$a3, $s1, $a3
	ori	$t2, $zero, 14
	mul.d	$a3, $a3, $t2
	alsl.d	$a6, $t3, $a6, 2
	alsl.d	$a5, $t4, $a5, 3
	add.d	$a1, $a4, $a1
	add.d	$a0, $a0, $a2
	add.d	$a2, $a7, $t0
	add.d	$a3, $t1, $a3
	add.d	$a4, $a6, $a5
	add.d	$a0, $a0, $a2
	add.d	$a2, $a3, $a4
	add.d	$a0, $a0, $a2
	add.w	$a0, $a0, $a1
	fld.d	$fs3, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs2, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
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
	ret
.Lfunc_end19:
	.size	_ZNK9NCompress8NDeflate8NEncoder6CCoder15GetLzBlockPriceEv, .Lfunc_end19-_ZNK9NCompress8NDeflate8NEncoder6CCoder15GetLzBlockPriceEv
                                        # -- End function
	.globl	_ZN9NCompress8NDeflate8NEncoder6CCoder8TryBlockEv # -- Begin function _ZN9NCompress8NDeflate8NEncoder6CCoder8TryBlockEv
	.p2align	5
	.type	_ZN9NCompress8NDeflate8NEncoder6CCoder8TryBlockEv,@function
_ZN9NCompress8NDeflate8NEncoder6CCoder8TryBlockEv: # @_ZN9NCompress8NDeflate8NEncoder6CCoder8TryBlockEv
	.cfi_startproc
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
	move	$fp, $a0
	addi.d	$a0, $a0, 2047
	addi.d	$s0, $a0, 209
	addi.d	$s2, $a0, 1361
	st.w	$zero, $fp, 1372
	ori	$a2, $zero, 1280
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	move	$a0, $zero
	lu12i.w	$a2, 1
	ori	$s3, $a2, 816
	ldx.w	$s4, $fp, $s3
	stptr.w	$zero, $fp, 4912
	lu12i.w	$a2, 159
	ori	$s5, $a2, 2021
	lu12i.w	$s6, 8
	ori	$s7, $zero, 3
	ori	$s8, $zero, 511
	b	.LBB20_4
.LBB20_1:                               # %_ZN9NCompress8NDeflate8NEncoder6CCoder14GetOptimalFastERj.exit.thread
                                        #   in Loop: Header=BB20_4 Depth=1
	ld.wu	$a0, $fp, 1372
	ld.d	$a2, $fp, 1248
	addi.w	$a1, $a0, 1
	st.w	$a1, $fp, 1372
	alsl.d	$a2, $a0, $a2, 2
	ori	$a0, $zero, 1
.LBB20_2:                               #   in Loop: Header=BB20_4 Depth=1
	ld.w	$a3, $fp, 1380
	ld.d	$a4, $fp, 0
	sub.w	$a5, $zero, $a3
	ldx.bu	$a4, $a4, $a5
	slli.d	$a5, $a4, 2
	ldx.w	$a6, $s0, $a5
	addi.d	$a6, $a6, 1
	stx.w	$a6, $s0, $a5
	st.h	$s6, $a2, 0
	st.h	$a4, $a2, 2
.LBB20_3:                               #   in Loop: Header=BB20_4 Depth=1
	ldx.w	$a2, $fp, $s3
	sub.d	$a3, $a3, $a0
	st.w	$a3, $fp, 1380
	add.w	$a0, $a2, $a0
	stptr.w	$a0, $fp, 4912
.LBB20_4:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $fp, 1388
	ld.w	$a3, $fp, 1384
	bne	$a2, $a3, .LBB20_10
# %bb.5:                                #   in Loop: Header=BB20_4 Depth=1
	ld.w	$a2, $fp, 1288
	bltu	$s5, $a2, .LBB20_24
# %bb.6:                                #   in Loop: Header=BB20_4 Depth=1
	bgeu	$a0, $s4, .LBB20_24
# %bb.7:                                #   in Loop: Header=BB20_4 Depth=1
	ld.bu	$a2, $fp, 1376
	bnez	$a2, .LBB20_10
# %bb.8:                                #   in Loop: Header=BB20_4 Depth=1
	ld.w	$a2, $fp, 16
	ld.w	$a3, $fp, 8
	beq	$a2, $a3, .LBB20_24
# %bb.9:                                #   in Loop: Header=BB20_4 Depth=1
	ld.w	$a2, $fp, 1304
	bgeu	$a1, $a2, .LBB20_24
.LBB20_10:                              #   in Loop: Header=BB20_4 Depth=1
	ld.bu	$a0, $fp, 1268
	beqz	$a0, .LBB20_16
# %bb.11:                               #   in Loop: Header=BB20_4 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9NCompress8NDeflate8NEncoder6CCoder10GetMatchesEv)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 1256
	ld.hu	$a0, $a1, 0
	beqz	$a0, .LBB20_1
# %bb.12:                               #   in Loop: Header=BB20_4 Depth=1
	alsl.d	$a2, $a0, $a1, 1
	slli.d	$a3, $a0, 1
	ld.hu	$a0, $a2, -2
	ldx.hu	$a1, $a1, $a3
	addi.d	$s1, $a0, -1
	st.w	$a1, $sp, 20
	beqz	$s1, .LBB20_19
# %bb.13:                               #   in Loop: Header=BB20_4 Depth=1
	ld.b	$a1, $fp, 1376
	andi	$a1, $a1, 1
	bnez	$a1, .LBB20_19
# %bb.14:                               #   in Loop: Header=BB20_4 Depth=1
	move	$s8, $a0
	ld.bu	$a0, $fp, 1269
	beqz	$a0, .LBB20_17
# %bb.15:                               #   in Loop: Header=BB20_4 Depth=1
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(Bt3Zip_MatchFinder_Skip)
	jirl	$ra, $ra, 0
	b	.LBB20_18
	.p2align	4, , 16
.LBB20_16:                              #   in Loop: Header=BB20_4 Depth=1
	addi.d	$a1, $sp, 20
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9NCompress8NDeflate8NEncoder6CCoder10GetOptimalERj)
	jirl	$ra, $ra, 0
	b	.LBB20_19
.LBB20_17:                              #   in Loop: Header=BB20_4 Depth=1
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(Hc3Zip_MatchFinder_Skip)
	jirl	$ra, $ra, 0
.LBB20_18:                              #   in Loop: Header=BB20_4 Depth=1
	ld.w	$a0, $fp, 1380
	add.d	$a0, $a0, $s1
	st.w	$a0, $fp, 1380
	move	$a0, $s8
	ori	$s8, $zero, 511
	.p2align	4, , 16
.LBB20_19:                              # %_ZN9NCompress8NDeflate8NEncoder6CCoder14GetOptimalFastERj.exit
                                        #   in Loop: Header=BB20_4 Depth=1
	ld.wu	$a2, $fp, 1372
	ld.d	$a3, $fp, 1248
	addi.w	$a1, $a2, 1
	st.w	$a1, $fp, 1372
	alsl.d	$a2, $a2, $a3, 2
	bltu	$a0, $s7, .LBB20_2
# %bb.20:                               #   in Loop: Header=BB20_4 Depth=1
	addi.d	$a3, $a0, -3
	st.h	$a3, $a2, 0
	bstrpick.d	$a3, $a3, 31, 0
	pcalau12i	$a4, %pc_hi20(_ZN9NCompress8NDeflate8NEncoderL10g_LenSlotsE)
	addi.d	$a4, $a4, %pc_lo12(_ZN9NCompress8NDeflate8NEncoderL10g_LenSlotsE)
	ldx.bu	$a3, $a4, $a3
	alsl.d	$a4, $a3, $s0, 2
	ld.w	$a5, $a4, 1028
	ld.wu	$a3, $sp, 20
	addi.d	$a5, $a5, 1
	st.w	$a5, $a4, 1028
	addi.w	$a4, $a3, 0
	st.h	$a3, $a2, 2
	pcalau12i	$a2, %pc_hi20(_ZN9NCompress8NDeflate8NEncoderL9g_FastPosE)
	addi.d	$a2, $a2, %pc_lo12(_ZN9NCompress8NDeflate8NEncoderL9g_FastPosE)
	bltu	$s8, $a4, .LBB20_22
# %bb.21:                               #   in Loop: Header=BB20_4 Depth=1
	ldx.bu	$a2, $a2, $a4
	b	.LBB20_23
.LBB20_22:                              #   in Loop: Header=BB20_4 Depth=1
	srli.d	$a3, $a3, 8
	ldx.bu	$a2, $a2, $a3
	addi.d	$a2, $a2, 16
.LBB20_23:                              # %_ZN9NCompress8NDeflate8NEncoder10GetPosSlotEj.exit
                                        #   in Loop: Header=BB20_4 Depth=1
	slli.d	$a2, $a2, 2
	ldx.w	$a4, $s2, $a2
	ld.w	$a3, $fp, 1380
	addi.d	$a4, $a4, 1
	stx.w	$a4, $s2, $a2
	b	.LBB20_3
.LBB20_24:
	ori	$a1, $zero, 3280
	ldx.w	$a1, $fp, $a1
	ld.w	$a2, $fp, 1380
	addi.d	$a1, $a1, 1
	stptr.w	$a1, $fp, 3280
	add.d	$a0, $a2, $a0
	st.w	$a0, $fp, 1380
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 1376
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
.Lfunc_end20:
	.size	_ZN9NCompress8NDeflate8NEncoder6CCoder8TryBlockEv, .Lfunc_end20-_ZN9NCompress8NDeflate8NEncoder6CCoder8TryBlockEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZN9NCompress8NDeflate8NEncoder6CCoder9SetPricesERKNS0_7CLevelsE # -- Begin function _ZN9NCompress8NDeflate8NEncoder6CCoder9SetPricesERKNS0_7CLevelsE
	.p2align	5
	.type	_ZN9NCompress8NDeflate8NEncoder6CCoder9SetPricesERKNS0_7CLevelsE,@function
_ZN9NCompress8NDeflate8NEncoder6CCoder9SetPricesERKNS0_7CLevelsE: # @_ZN9NCompress8NDeflate8NEncoder6CCoder9SetPricesERKNS0_7CLevelsE
# %bb.0:
	ld.bu	$a2, $a0, 1268
	bnez	$a2, .LBB21_9
# %bb.1:                                # %.preheader27
	addi.d	$a2, $a0, 1392
	sub.d	$a3, $a2, $a1
	ori	$a4, $zero, 31
	bltu	$a4, $a3, .LBB21_5
# %bb.2:                                # %scalar.ph.preheader
	move	$a3, $zero
	ori	$a4, $zero, 11
	ori	$a5, $zero, 256
	.p2align	4, , 16
.LBB21_3:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ldx.bu	$a6, $a1, $a3
	sltui	$a7, $a6, 1
	masknez	$a6, $a6, $a7
	maskeqz	$a7, $a4, $a7
	or	$a6, $a7, $a6
	stx.b	$a6, $a2, $a3
	addi.d	$a3, $a3, 1
	bne	$a3, $a5, .LBB21_3
# %bb.4:                                # %.preheader26
	ld.wu	$a2, $a0, 1308
	bnez	$a2, .LBB21_6
	b	.LBB21_8
.LBB21_5:                               # %vector.body
	vld	$vr0, $a1, 0
	vld	$vr1, $a1, 16
	vseqi.b	$vr2, $vr0, 0
	vseqi.b	$vr3, $vr1, 0
	vbitseli.b	$vr2, $vr0, 11
	vbitseli.b	$vr3, $vr1, 11
	vst	$vr2, $a0, 1392
	vst	$vr3, $a0, 1408
	vld	$vr0, $a1, 32
	vld	$vr1, $a1, 48
	vseqi.b	$vr2, $vr0, 0
	vseqi.b	$vr3, $vr1, 0
	vbitseli.b	$vr2, $vr0, 11
	vbitseli.b	$vr3, $vr1, 11
	vst	$vr2, $a0, 1424
	vst	$vr3, $a0, 1440
	vld	$vr0, $a1, 64
	vld	$vr1, $a1, 80
	vseqi.b	$vr2, $vr0, 0
	vseqi.b	$vr3, $vr1, 0
	vbitseli.b	$vr2, $vr0, 11
	vbitseli.b	$vr3, $vr1, 11
	vst	$vr2, $a0, 1456
	vst	$vr3, $a0, 1472
	vld	$vr0, $a1, 96
	vld	$vr1, $a1, 112
	vseqi.b	$vr2, $vr0, 0
	vseqi.b	$vr3, $vr1, 0
	vbitseli.b	$vr2, $vr0, 11
	vbitseli.b	$vr3, $vr1, 11
	vst	$vr2, $a0, 1488
	vst	$vr3, $a0, 1504
	vld	$vr0, $a1, 128
	vld	$vr1, $a1, 144
	vseqi.b	$vr2, $vr0, 0
	vseqi.b	$vr3, $vr1, 0
	vbitseli.b	$vr2, $vr0, 11
	vbitseli.b	$vr3, $vr1, 11
	vst	$vr2, $a0, 1520
	vst	$vr3, $a0, 1536
	vld	$vr0, $a1, 160
	vld	$vr1, $a1, 176
	vseqi.b	$vr2, $vr0, 0
	vseqi.b	$vr3, $vr1, 0
	vbitseli.b	$vr2, $vr0, 11
	vbitseli.b	$vr3, $vr1, 11
	vst	$vr2, $a0, 1552
	vst	$vr3, $a0, 1568
	vld	$vr0, $a1, 192
	vld	$vr1, $a1, 208
	vseqi.b	$vr2, $vr0, 0
	vseqi.b	$vr3, $vr1, 0
	vbitseli.b	$vr2, $vr0, 11
	vbitseli.b	$vr3, $vr1, 11
	vst	$vr2, $a0, 1584
	vst	$vr3, $a0, 1600
	vld	$vr0, $a1, 224
	vld	$vr1, $a1, 240
	vseqi.b	$vr2, $vr0, 0
	vseqi.b	$vr3, $vr1, 0
	vbitseli.b	$vr2, $vr0, 11
	vbitseli.b	$vr3, $vr1, 11
	vst	$vr2, $a0, 1616
	vst	$vr3, $a0, 1632
	ld.wu	$a2, $a0, 1308
	beqz	$a2, .LBB21_8
.LBB21_6:                               # %.lr.ph
	ld.d	$a3, $a0, 1328
	addi.d	$a4, $a0, 1648
	pcalau12i	$a5, %pc_hi20(_ZN9NCompress8NDeflate8NEncoderL10g_LenSlotsE)
	addi.d	$a5, $a5, %pc_lo12(_ZN9NCompress8NDeflate8NEncoderL10g_LenSlotsE)
	ori	$a6, $zero, 11
	.p2align	4, , 16
.LBB21_7:                               # =>This Inner Loop Header: Depth=1
	ld.bu	$a7, $a5, 0
	add.d	$t0, $a1, $a7
	ld.bu	$t0, $t0, 257
	sltui	$t1, $t0, 1
	ldx.b	$a7, $a3, $a7
	masknez	$t0, $t0, $t1
	maskeqz	$t1, $a6, $t1
	or	$t0, $t1, $t0
	add.d	$a7, $t0, $a7
	st.b	$a7, $a4, 0
	addi.d	$a5, $a5, 1
	addi.d	$a2, $a2, -1
	addi.d	$a4, $a4, 1
	bnez	$a2, .LBB21_7
.LBB21_8:                               # %.preheader
	ld.bu	$a2, $a1, 288
	sltui	$a3, $a2, 1
	masknez	$a2, $a2, $a3
	ori	$a4, $zero, 6
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	st.b	$a2, $a0, 1904
	ld.bu	$a2, $a1, 289
	sltui	$a3, $a2, 1
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	st.b	$a2, $a0, 1905
	ld.bu	$a2, $a1, 290
	sltui	$a3, $a2, 1
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	st.b	$a2, $a0, 1906
	ld.bu	$a2, $a1, 291
	sltui	$a3, $a2, 1
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	st.b	$a2, $a0, 1907
	ld.bu	$a2, $a1, 292
	sltui	$a3, $a2, 1
	addi.d	$a2, $a2, 1
	masknez	$a2, $a2, $a3
	ori	$a4, $zero, 7
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	st.b	$a2, $a0, 1908
	ld.bu	$a2, $a1, 293
	sltui	$a3, $a2, 1
	addi.d	$a2, $a2, 1
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	st.b	$a2, $a0, 1909
	ld.bu	$a2, $a1, 294
	sltui	$a3, $a2, 1
	addi.d	$a2, $a2, 2
	masknez	$a2, $a2, $a3
	ori	$a4, $zero, 8
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	st.b	$a2, $a0, 1910
	ld.bu	$a2, $a1, 295
	sltui	$a3, $a2, 1
	addi.d	$a2, $a2, 2
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	st.b	$a2, $a0, 1911
	ld.bu	$a2, $a1, 296
	sltui	$a3, $a2, 1
	addi.d	$a2, $a2, 3
	masknez	$a2, $a2, $a3
	ori	$a4, $zero, 9
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	st.b	$a2, $a0, 1912
	ld.bu	$a2, $a1, 297
	sltui	$a3, $a2, 1
	addi.d	$a2, $a2, 3
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	st.b	$a2, $a0, 1913
	ld.bu	$a2, $a1, 298
	sltui	$a3, $a2, 1
	addi.d	$a2, $a2, 4
	masknez	$a2, $a2, $a3
	ori	$a4, $zero, 10
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	st.b	$a2, $a0, 1914
	ld.bu	$a2, $a1, 299
	sltui	$a3, $a2, 1
	addi.d	$a2, $a2, 4
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	st.b	$a2, $a0, 1915
	ld.bu	$a2, $a1, 300
	sltui	$a3, $a2, 1
	addi.d	$a2, $a2, 5
	masknez	$a2, $a2, $a3
	ori	$a4, $zero, 11
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	st.b	$a2, $a0, 1916
	ld.bu	$a2, $a1, 301
	sltui	$a3, $a2, 1
	addi.d	$a2, $a2, 5
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	st.b	$a2, $a0, 1917
	ld.bu	$a2, $a1, 302
	sltui	$a3, $a2, 1
	addi.d	$a2, $a2, 6
	masknez	$a2, $a2, $a3
	ori	$a4, $zero, 12
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	st.b	$a2, $a0, 1918
	ld.bu	$a2, $a1, 303
	sltui	$a3, $a2, 1
	addi.d	$a2, $a2, 6
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	st.b	$a2, $a0, 1919
	ld.bu	$a2, $a1, 304
	sltui	$a3, $a2, 1
	addi.d	$a2, $a2, 7
	masknez	$a2, $a2, $a3
	ori	$a4, $zero, 13
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	st.b	$a2, $a0, 1920
	ld.bu	$a2, $a1, 305
	sltui	$a3, $a2, 1
	addi.d	$a2, $a2, 7
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	st.b	$a2, $a0, 1921
	ld.bu	$a2, $a1, 306
	sltui	$a3, $a2, 1
	addi.d	$a2, $a2, 8
	masknez	$a2, $a2, $a3
	ori	$a4, $zero, 14
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	st.b	$a2, $a0, 1922
	ld.bu	$a2, $a1, 307
	sltui	$a3, $a2, 1
	addi.d	$a2, $a2, 8
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	st.b	$a2, $a0, 1923
	ld.bu	$a2, $a1, 308
	sltui	$a3, $a2, 1
	addi.d	$a2, $a2, 9
	masknez	$a2, $a2, $a3
	ori	$a4, $zero, 15
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	st.b	$a2, $a0, 1924
	ld.bu	$a2, $a1, 309
	sltui	$a3, $a2, 1
	addi.d	$a2, $a2, 9
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	st.b	$a2, $a0, 1925
	ld.bu	$a2, $a1, 310
	sltui	$a3, $a2, 1
	addi.d	$a2, $a2, 10
	masknez	$a2, $a2, $a3
	ori	$a4, $zero, 16
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	st.b	$a2, $a0, 1926
	ld.bu	$a2, $a1, 311
	sltui	$a3, $a2, 1
	addi.d	$a2, $a2, 10
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	st.b	$a2, $a0, 1927
	ld.bu	$a2, $a1, 312
	sltui	$a3, $a2, 1
	addi.d	$a2, $a2, 11
	masknez	$a2, $a2, $a3
	ori	$a4, $zero, 17
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	st.b	$a2, $a0, 1928
	ld.bu	$a2, $a1, 313
	sltui	$a3, $a2, 1
	addi.d	$a2, $a2, 11
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	st.b	$a2, $a0, 1929
	ld.bu	$a2, $a1, 314
	sltui	$a3, $a2, 1
	addi.d	$a2, $a2, 12
	masknez	$a2, $a2, $a3
	ori	$a4, $zero, 18
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	st.b	$a2, $a0, 1930
	ld.bu	$a2, $a1, 315
	sltui	$a3, $a2, 1
	addi.d	$a2, $a2, 12
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	st.b	$a2, $a0, 1931
	ld.bu	$a2, $a1, 316
	sltui	$a3, $a2, 1
	addi.d	$a2, $a2, 13
	masknez	$a2, $a2, $a3
	ori	$a4, $zero, 19
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	st.b	$a2, $a0, 1932
	ld.bu	$a2, $a1, 317
	sltui	$a3, $a2, 1
	addi.d	$a2, $a2, 13
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	st.b	$a2, $a0, 1933
	ld.bu	$a2, $a1, 318
	sltui	$a3, $a2, 1
	addi.d	$a2, $a2, 14
	masknez	$a2, $a2, $a3
	ori	$a4, $zero, 20
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	st.b	$a2, $a0, 1934
	ld.bu	$a1, $a1, 319
	sltui	$a2, $a1, 1
	addi.d	$a1, $a1, 14
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a4, $a2
	or	$a1, $a2, $a1
	st.b	$a1, $a0, 1935
.LBB21_9:                               # %.loopexit
	ret
.Lfunc_end21:
	.size	_ZN9NCompress8NDeflate8NEncoder6CCoder9SetPricesERKNS0_7CLevelsE, .Lfunc_end21-_ZN9NCompress8NDeflate8NEncoder6CCoder9SetPricesERKNS0_7CLevelsE
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN9NCompress8NDeflate8NEncoder19Huffman_ReverseBitsEPjPKhj
.LCPI22_0:
	.half	3                               # 0x3
	.half	9                               # 0x9
	.half	2                               # 0x2
	.half	11                              # 0xb
	.half	1                               # 0x1
	.half	13                              # 0xd
	.half	0                               # 0x0
	.half	15                              # 0xf
	.text
	.globl	_ZN9NCompress8NDeflate8NEncoder19Huffman_ReverseBitsEPjPKhj
	.p2align	5
	.type	_ZN9NCompress8NDeflate8NEncoder19Huffman_ReverseBitsEPjPKhj,@function
_ZN9NCompress8NDeflate8NEncoder19Huffman_ReverseBitsEPjPKhj: # @_ZN9NCompress8NDeflate8NEncoder19Huffman_ReverseBitsEPjPKhj
# %bb.0:
	beqz	$a2, .LBB22_7
# %bb.1:                                # %.lr.ph.preheader
	ori	$a4, $zero, 8
	bstrpick.d	$a3, $a2, 31, 0
	bltu	$a2, $a4, .LBB22_4
# %bb.2:                                # %vector.memcheck
	add.d	$a2, $a1, $a3
	bgeu	$a0, $a2, .LBB22_8
# %bb.3:                                # %vector.memcheck
	alsl.d	$a2, $a3, $a0, 2
	bgeu	$a1, $a2, .LBB22_8
.LBB22_4:
	move	$a2, $zero
.LBB22_5:                               # %.lr.ph.preheader21
	alsl.d	$a0, $a2, $a0, 2
	add.d	$a1, $a1, $a2
	sub.d	$a2, $a3, $a2
	ori	$a3, $zero, 16
	.p2align	4, , 16
.LBB22_6:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a4, $a0, 0
	ld.bu	$a5, $a1, 0
	bitrev.d	$a4, $a4
	srli.d	$a4, $a4, 48
	sub.d	$a5, $a3, $a5
	srl.w	$a4, $a4, $a5
	st.w	$a4, $a0, 0
	addi.d	$a0, $a0, 4
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 1
	bnez	$a2, .LBB22_6
.LBB22_7:                               # %._crit_edge
	ret
.LBB22_8:                               # %vector.ph
	bstrpick.d	$a2, $a3, 31, 3
	slli.d	$a2, $a2, 3
	addi.d	$a4, $a1, 4
	pcalau12i	$a5, %pc_hi20(.LCPI22_0)
	vld	$vr0, $a5, %pc_lo12(.LCPI22_0)
	addi.d	$a5, $a0, 16
	vrepli.b	$vr1, 0
	vrepli.w	$vr2, 16
	move	$a6, $a2
	.p2align	4, , 16
.LBB22_9:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr3, $a5, -16
	vld	$vr4, $a5, 0
	vpickev.h	$vr3, $vr3, $vr3
	vpickev.h	$vr4, $vr4, $vr4
	vpickve2gr.d	$a7, $vr3, 0
	bitrev.d	$a7, $a7
	vinsgr2vr.d	$vr3, $a7, 0
	vpickve2gr.d	$a7, $vr4, 0
	ld.w	$t0, $a4, -4
	bitrev.d	$a7, $a7
	vinsgr2vr.d	$vr4, $a7, 0
	ld.w	$a7, $a4, 0
	vinsgr2vr.w	$vr5, $t0, 0
	vori.b	$vr6, $vr0, 0
	vshuf.h	$vr6, $vr1, $vr3
	vori.b	$vr3, $vr0, 0
	vshuf.h	$vr3, $vr1, $vr4
	vinsgr2vr.w	$vr4, $a7, 0
	vilvl.b	$vr5, $vr1, $vr5
	vilvl.h	$vr5, $vr1, $vr5
	vilvl.b	$vr4, $vr1, $vr4
	vilvl.h	$vr4, $vr1, $vr4
	vsub.w	$vr5, $vr2, $vr5
	vsub.w	$vr4, $vr2, $vr4
	vsrl.w	$vr5, $vr6, $vr5
	vsrl.w	$vr3, $vr3, $vr4
	vst	$vr5, $a5, -16
	vst	$vr3, $a5, 0
	addi.d	$a6, $a6, -8
	addi.d	$a4, $a4, 8
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB22_9
# %bb.10:                               # %middle.block
	beq	$a2, $a3, .LBB22_7
	b	.LBB22_5
.Lfunc_end22:
	.size	_ZN9NCompress8NDeflate8NEncoder19Huffman_ReverseBitsEPjPKhj, .Lfunc_end22-_ZN9NCompress8NDeflate8NEncoder19Huffman_ReverseBitsEPjPKhj
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN9NCompress8NDeflate8NEncoder6CCoder10WriteBlockEv
.LCPI23_0:
	.half	3                               # 0x3
	.half	9                               # 0x9
	.half	2                               # 0x2
	.half	11                              # 0xb
	.half	1                               # 0x1
	.half	13                              # 0xd
	.half	0                               # 0x0
	.half	15                              # 0xf
	.text
	.globl	_ZN9NCompress8NDeflate8NEncoder6CCoder10WriteBlockEv
	.p2align	5
	.type	_ZN9NCompress8NDeflate8NEncoder6CCoder10WriteBlockEv,@function
_ZN9NCompress8NDeflate8NEncoder6CCoder10WriteBlockEv: # @_ZN9NCompress8NDeflate8NEncoder6CCoder10WriteBlockEv
	.cfi_startproc
# %bb.0:                                # %vector.ph
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
	move	$a1, $zero
	addi.d	$a0, $a0, 2047
	addi.d	$a2, $a0, 1489
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	addi.d	$a2, $fp, 1936
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	addi.d	$a2, $a0, 1505
	addi.d	$a3, $fp, 1940
	pcalau12i	$a4, %pc_hi20(.LCPI23_0)
	vld	$vr0, $a4, %pc_lo12(.LCPI23_0)
	vrepli.b	$vr2, 0
	vrepli.w	$vr1, 16
	ori	$a4, $zero, 288
	.p2align	4, , 16
.LBB23_1:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr3, $a2, -16
	vld	$vr4, $a2, 0
	vpickev.h	$vr3, $vr3, $vr3
	vpickev.h	$vr4, $vr4, $vr4
	vpickve2gr.d	$a5, $vr3, 0
	bitrev.d	$a5, $a5
	vinsgr2vr.d	$vr3, $a5, 0
	vpickve2gr.d	$a5, $vr4, 0
	add.d	$a6, $a3, $a1
	ld.d	$a6, $a6, -4
	bitrev.d	$a5, $a5
	vinsgr2vr.d	$vr4, $a5, 0
	ldx.w	$a5, $a3, $a1
	vinsgr2vr.d	$vr5, $a6, 0
	vori.b	$vr6, $vr0, 0
	vshuf.h	$vr6, $vr2, $vr3
	vori.b	$vr3, $vr0, 0
	vshuf.h	$vr3, $vr2, $vr4
	vinsgr2vr.w	$vr4, $a5, 0
	vilvl.b	$vr5, $vr2, $vr5
	vilvl.h	$vr5, $vr2, $vr5
	vilvl.b	$vr4, $vr2, $vr4
	vilvl.h	$vr4, $vr2, $vr4
	vsub.w	$vr5, $vr1, $vr5
	vsub.w	$vr4, $vr1, $vr4
	vsrl.w	$vr5, $vr6, $vr5
	vsrl.w	$vr3, $vr3, $vr4
	vst	$vr5, $a2, -16
	vst	$vr3, $a2, 0
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, 32
	bne	$a1, $a4, .LBB23_1
# %bb.2:                                # %_ZN9NCompress8NDeflate8NEncoder19Huffman_ReverseBitsEPjPKhj.exit
	lu12i.w	$a5, 1
	ori	$a1, $a5, 592
	vldx	$vr3, $fp, $a1
	vpickev.h	$vr3, $vr3, $vr3
	vpickve2gr.d	$a2, $vr3, 0
	ldptr.d	$a3, $fp, 2224
	bitrev.d	$a2, $a2
	vinsgr2vr.d	$vr3, $a2, 0
	vori.b	$vr4, $vr0, 0
	vshuf.h	$vr4, $vr2, $vr3
	vinsgr2vr.d	$vr3, $a3, 0
	vilvl.b	$vr3, $vr2, $vr3
	ori	$a2, $a5, 608
	vldx	$vr5, $fp, $a2
	vilvl.h	$vr3, $vr2, $vr3
	vsub.w	$vr3, $vr1, $vr3
	vsrl.w	$vr3, $vr4, $vr3
	vpickev.h	$vr4, $vr5, $vr5
	vpickve2gr.d	$a3, $vr4, 0
	ori	$a4, $zero, 2228
	ldx.w	$a4, $fp, $a4
	bitrev.d	$a3, $a3
	vinsgr2vr.d	$vr4, $a3, 0
	vori.b	$vr5, $vr0, 0
	vshuf.h	$vr5, $vr2, $vr4
	vinsgr2vr.w	$vr4, $a4, 0
	vilvl.b	$vr4, $vr2, $vr4
	vilvl.h	$vr4, $vr2, $vr4
	ori	$a3, $a5, 624
	vldx	$vr6, $fp, $a3
	vsub.w	$vr4, $vr1, $vr4
	vsrl.w	$vr4, $vr5, $vr4
	vstx	$vr4, $fp, $a2
	vpickev.h	$vr4, $vr6, $vr6
	vpickve2gr.d	$a2, $vr4, 0
	ldptr.d	$a4, $fp, 2232
	bitrev.d	$a2, $a2
	vinsgr2vr.d	$vr4, $a2, 0
	vori.b	$vr5, $vr0, 0
	vshuf.h	$vr5, $vr2, $vr4
	vinsgr2vr.d	$vr4, $a4, 0
	vilvl.b	$vr4, $vr2, $vr4
	vilvl.h	$vr4, $vr2, $vr4
	ori	$a2, $a5, 640
	vldx	$vr6, $fp, $a2
	vsub.w	$vr4, $vr1, $vr4
	vsrl.w	$vr4, $vr5, $vr4
	vstx	$vr4, $fp, $a3
	vpickev.h	$vr4, $vr6, $vr6
	vpickve2gr.d	$a3, $vr4, 0
	ori	$a4, $zero, 2236
	ldx.w	$a4, $fp, $a4
	bitrev.d	$a3, $a3
	vinsgr2vr.d	$vr4, $a3, 0
	vori.b	$vr5, $vr0, 0
	vshuf.h	$vr5, $vr2, $vr4
	vinsgr2vr.w	$vr4, $a4, 0
	vilvl.b	$vr4, $vr2, $vr4
	vilvl.h	$vr4, $vr2, $vr4
	ori	$a3, $a5, 656
	vldx	$vr6, $fp, $a3
	vsub.w	$vr4, $vr1, $vr4
	vsrl.w	$vr4, $vr5, $vr4
	vstx	$vr4, $fp, $a2
	vpickev.h	$vr4, $vr6, $vr6
	vpickve2gr.d	$a2, $vr4, 0
	ldptr.d	$a4, $fp, 2240
	bitrev.d	$a2, $a2
	vinsgr2vr.d	$vr4, $a2, 0
	vori.b	$vr5, $vr0, 0
	vshuf.h	$vr5, $vr2, $vr4
	vinsgr2vr.d	$vr4, $a4, 0
	vilvl.b	$vr4, $vr2, $vr4
	vilvl.h	$vr4, $vr2, $vr4
	ori	$a2, $a5, 672
	vldx	$vr6, $fp, $a2
	vsub.w	$vr4, $vr1, $vr4
	vsrl.w	$vr4, $vr5, $vr4
	vstx	$vr4, $fp, $a3
	vpickev.h	$vr4, $vr6, $vr6
	vpickve2gr.d	$a3, $vr4, 0
	ori	$a4, $zero, 2244
	ldx.w	$a4, $fp, $a4
	bitrev.d	$a3, $a3
	vinsgr2vr.d	$vr4, $a3, 0
	vori.b	$vr5, $vr0, 0
	vshuf.h	$vr5, $vr2, $vr4
	vinsgr2vr.w	$vr4, $a4, 0
	vilvl.b	$vr4, $vr2, $vr4
	vilvl.h	$vr4, $vr2, $vr4
	ori	$a3, $a5, 688
	vldx	$vr6, $fp, $a3
	vsub.w	$vr4, $vr1, $vr4
	vsrl.w	$vr4, $vr5, $vr4
	vstx	$vr4, $fp, $a2
	vpickev.h	$vr4, $vr6, $vr6
	vpickve2gr.d	$a2, $vr4, 0
	ldptr.d	$a4, $fp, 2248
	bitrev.d	$a2, $a2
	vinsgr2vr.d	$vr4, $a2, 0
	vori.b	$vr5, $vr0, 0
	vshuf.h	$vr5, $vr2, $vr4
	vinsgr2vr.d	$vr4, $a4, 0
	vilvl.b	$vr4, $vr2, $vr4
	vilvl.h	$vr4, $vr2, $vr4
	ori	$a2, $a5, 704
	vldx	$vr6, $fp, $a2
	vsub.w	$vr4, $vr1, $vr4
	vsrl.w	$vr4, $vr5, $vr4
	vstx	$vr4, $fp, $a3
	vpickev.h	$vr4, $vr6, $vr6
	vpickve2gr.d	$a3, $vr4, 0
	bitrev.d	$a3, $a3
	ori	$a4, $zero, 2252
	ldx.w	$a4, $fp, $a4
	vinsgr2vr.d	$vr4, $a3, 0
	vstx	$vr3, $fp, $a1
	vshuf.h	$vr0, $vr2, $vr4
	vinsgr2vr.w	$vr3, $a4, 0
	vilvl.b	$vr3, $vr2, $vr3
	vilvl.h	$vr2, $vr2, $vr3
	ld.w	$a3, $fp, 1372
	vsub.w	$vr1, $vr1, $vr2
	vsrl.w	$vr0, $vr0, $vr1
	vstx	$vr0, $fp, $a2
	addi.d	$s0, $fp, 1168
	st.d	$s0, $sp, 48                    # 8-byte Folded Spill
	beqz	$a3, .LBB23_69
# %bb.3:                                # %.lr.ph
	move	$s4, $zero
	add.d	$a1, $fp, $a1
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	addi.d	$a0, $a0, 177
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ori	$s8, $zero, 8
	ori	$s3, $zero, 7
	b	.LBB23_8
.LBB23_4:                               #   in Loop: Header=BB23_8 Depth=1
	move	$a0, $zero
	ori	$s6, $zero, 8
.LBB23_5:                               # %.loopexit134
                                        #   in Loop: Header=BB23_8 Depth=1
	addi.d	$a1, $zero, -1
	sll.w	$a1, $a1, $s1
	andn	$a1, $s2, $a1
	sub.d	$a2, $s8, $s6
	sll.w	$a1, $a1, $a2
	or	$a0, $a0, $a1
	st.b	$a0, $fp, 1228
	sub.d	$a0, $s6, $s1
.LBB23_6:                               # %_ZN12CBitlEncoder9WriteBitsEjj.exit36
                                        #   in Loop: Header=BB23_8 Depth=1
	st.w	$a0, $fp, 1224
.LBB23_7:                               # %_ZN12CBitlEncoder9WriteBitsEjj.exit36
                                        #   in Loop: Header=BB23_8 Depth=1
	ld.wu	$a0, $fp, 1372
	addi.d	$s4, $s4, 1
	bgeu	$s4, $a0, .LBB23_69
.LBB23_8:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB23_16 Depth 2
                                        #     Child Loop BB23_38 Depth 2
                                        #     Child Loop BB23_52 Depth 2
                                        #     Child Loop BB23_64 Depth 2
                                        #     Child Loop BB23_26 Depth 2
	ld.d	$a0, $fp, 1248
	slli.d	$a1, $s4, 2
	ldx.h	$s1, $a0, $a1
	alsl.d	$s5, $s4, $a0, 2
	bltz	$s1, .LBB23_19
# %bb.9:                                #   in Loop: Header=BB23_8 Depth=1
	pcalau12i	$a0, %pc_hi20(_ZN9NCompress8NDeflate8NEncoderL10g_LenSlotsE)
	addi.d	$a0, $a0, %pc_lo12(_ZN9NCompress8NDeflate8NEncoderL10g_LenSlotsE)
	ldx.bu	$s7, $a0, $s1
	addi.d	$a0, $s7, 257
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ldx.bu	$s6, $a1, $a0
	beqz	$s6, .LBB23_31
# %bb.10:                               # %.lr.ph.i38
                                        #   in Loop: Header=BB23_8 Depth=1
	slli.d	$a0, $a0, 2
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ldx.w	$s2, $a1, $a0
	ld.w	$s0, $fp, 1224
	ld.bu	$a0, $fp, 1228
	bltu	$s6, $s0, .LBB23_30
# %bb.11:                               #   in Loop: Header=BB23_8 Depth=1
	sub.d	$a1, $s8, $s0
	ld.wu	$a2, $fp, 1176
	sll.w	$a1, $s2, $a1
	ld.d	$a3, $fp, 1168
	or	$a0, $a0, $a1
	addi.d	$a1, $a2, 1
	st.w	$a1, $fp, 1176
	stx.b	$a0, $a3, $a2
	ld.w	$a0, $fp, 1176
	ld.w	$a1, $fp, 1180
	bne	$a0, $a1, .LBB23_13
# %bb.12:                               #   in Loop: Header=BB23_8 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN10COutBuffer14FlushWithCheckEv)
	jirl	$ra, $ra, 0
.LBB23_13:                              # %_ZN10COutBuffer9WriteByteEh.exit.i42.peel
                                        #   in Loop: Header=BB23_8 Depth=1
	ld.w	$a0, $fp, 1224
	sub.w	$s6, $s6, $s0
	st.w	$s8, $fp, 1224
	st.b	$zero, $fp, 1228
	ld.d	$s0, $sp, 48                    # 8-byte Folded Reload
	beqz	$s6, .LBB23_31
# %bb.14:                               # %.peel.next
                                        #   in Loop: Header=BB23_8 Depth=1
	srl.w	$s2, $s2, $a0
	b	.LBB23_16
	.p2align	4, , 16
.LBB23_15:                              # %_ZN10COutBuffer9WriteByteEh.exit.i42
                                        #   in Loop: Header=BB23_16 Depth=2
	ld.wu	$a0, $fp, 1224
	addi.w	$s6, $s6, -8
	srl.w	$s2, $s2, $a0
	st.w	$s8, $fp, 1224
	st.b	$zero, $fp, 1228
	beqz	$s6, .LBB23_31
.LBB23_16:                              #   Parent Loop BB23_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bgeu	$s3, $s6, .LBB23_29
# %bb.17:                               #   in Loop: Header=BB23_16 Depth=2
	ld.wu	$a0, $fp, 1176
	ld.d	$a1, $fp, 1168
	addi.d	$a2, $a0, 1
	st.w	$a2, $fp, 1176
	stx.b	$s2, $a1, $a0
	ld.w	$a0, $fp, 1176
	ld.w	$a1, $fp, 1180
	bne	$a0, $a1, .LBB23_15
# %bb.18:                               #   in Loop: Header=BB23_16 Depth=2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN10COutBuffer14FlushWithCheckEv)
	jirl	$ra, $ra, 0
	b	.LBB23_15
	.p2align	4, , 16
.LBB23_19:                              #   in Loop: Header=BB23_8 Depth=1
	ld.hu	$a0, $s5, 2
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ldx.bu	$s1, $a1, $a0
	beqz	$s1, .LBB23_7
# %bb.20:                               # %.lr.ph.i29
                                        #   in Loop: Header=BB23_8 Depth=1
	slli.d	$a0, $a0, 2
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ldx.w	$s5, $a1, $a0
	ld.w	$s2, $fp, 1224
	ld.bu	$a0, $fp, 1228
	bltu	$s1, $s2, .LBB23_68
# %bb.21:                               #   in Loop: Header=BB23_8 Depth=1
	sub.d	$a1, $s8, $s2
	ld.wu	$a2, $fp, 1176
	sll.w	$a1, $s5, $a1
	ld.d	$a3, $fp, 1168
	or	$a0, $a0, $a1
	addi.d	$a1, $a2, 1
	st.w	$a1, $fp, 1176
	stx.b	$a0, $a3, $a2
	ld.w	$a0, $fp, 1176
	ld.w	$a1, $fp, 1180
	bne	$a0, $a1, .LBB23_23
# %bb.22:                               #   in Loop: Header=BB23_8 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN10COutBuffer14FlushWithCheckEv)
	jirl	$ra, $ra, 0
.LBB23_23:                              # %_ZN10COutBuffer9WriteByteEh.exit.i33.peel
                                        #   in Loop: Header=BB23_8 Depth=1
	ld.w	$a0, $fp, 1224
	sub.w	$s1, $s1, $s2
	st.w	$s8, $fp, 1224
	st.b	$zero, $fp, 1228
	beqz	$s1, .LBB23_7
# %bb.24:                               # %.peel.next136
                                        #   in Loop: Header=BB23_8 Depth=1
	srl.w	$s5, $s5, $a0
	b	.LBB23_26
	.p2align	4, , 16
.LBB23_25:                              # %_ZN10COutBuffer9WriteByteEh.exit.i33
                                        #   in Loop: Header=BB23_26 Depth=2
	ld.wu	$a0, $fp, 1224
	addi.w	$s1, $s1, -8
	srl.w	$s5, $s5, $a0
	st.w	$s8, $fp, 1224
	st.b	$zero, $fp, 1228
	beqz	$s1, .LBB23_7
.LBB23_26:                              #   Parent Loop BB23_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bgeu	$s3, $s1, .LBB23_67
# %bb.27:                               #   in Loop: Header=BB23_26 Depth=2
	ld.wu	$a0, $fp, 1176
	ld.d	$a1, $fp, 1168
	addi.d	$a2, $a0, 1
	st.w	$a2, $fp, 1176
	stx.b	$s5, $a1, $a0
	ld.w	$a0, $fp, 1176
	ld.w	$a1, $fp, 1180
	bne	$a0, $a1, .LBB23_25
# %bb.28:                               #   in Loop: Header=BB23_26 Depth=2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN10COutBuffer14FlushWithCheckEv)
	jirl	$ra, $ra, 0
	b	.LBB23_25
.LBB23_29:                              #   in Loop: Header=BB23_8 Depth=1
	move	$a0, $zero
	ori	$s0, $zero, 8
.LBB23_30:                              # %.loopexit
                                        #   in Loop: Header=BB23_8 Depth=1
	addi.d	$a1, $zero, -1
	sll.w	$a1, $a1, $s6
	andn	$a1, $s2, $a1
	sub.d	$a2, $s8, $s0
	sll.w	$a1, $a1, $a2
	or	$a0, $a0, $a1
	st.b	$a0, $fp, 1228
	sub.d	$a0, $s0, $s6
	st.w	$a0, $fp, 1224
	ld.d	$s0, $sp, 48                    # 8-byte Folded Reload
.LBB23_31:                              # %_ZN12CBitlEncoder9WriteBitsEjj.exit45
                                        #   in Loop: Header=BB23_8 Depth=1
	ld.d	$a0, $fp, 1328
	ldx.bu	$s6, $a0, $s7
	beqz	$s6, .LBB23_43
# %bb.32:                               # %.lr.ph.i47
                                        #   in Loop: Header=BB23_8 Depth=1
	ld.d	$a0, $fp, 1320
	ldx.bu	$a1, $a0, $s7
	ld.w	$s2, $fp, 1224
	ld.bu	$a0, $fp, 1228
	sub.d	$s1, $s1, $a1
	bltu	$s6, $s2, .LBB23_42
# %bb.33:                               #   in Loop: Header=BB23_8 Depth=1
	sub.d	$a1, $s8, $s2
	ld.wu	$a2, $fp, 1176
	sll.w	$a1, $s1, $a1
	ld.d	$a3, $fp, 1168
	or	$a0, $a0, $a1
	addi.d	$a1, $a2, 1
	st.w	$a1, $fp, 1176
	stx.b	$a0, $a3, $a2
	ld.w	$a0, $fp, 1176
	ld.w	$a1, $fp, 1180
	bne	$a0, $a1, .LBB23_35
# %bb.34:                               #   in Loop: Header=BB23_8 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN10COutBuffer14FlushWithCheckEv)
	jirl	$ra, $ra, 0
.LBB23_35:                              # %_ZN10COutBuffer9WriteByteEh.exit.i51.peel
                                        #   in Loop: Header=BB23_8 Depth=1
	ld.w	$a0, $fp, 1224
	sub.w	$s6, $s6, $s2
	st.w	$s8, $fp, 1224
	st.b	$zero, $fp, 1228
	beqz	$s6, .LBB23_43
# %bb.36:                               # %.peel.next124
                                        #   in Loop: Header=BB23_8 Depth=1
	srl.w	$s1, $s1, $a0
	b	.LBB23_38
	.p2align	4, , 16
.LBB23_37:                              # %_ZN10COutBuffer9WriteByteEh.exit.i51
                                        #   in Loop: Header=BB23_38 Depth=2
	ld.wu	$a0, $fp, 1224
	addi.w	$s6, $s6, -8
	srl.w	$s1, $s1, $a0
	st.w	$s8, $fp, 1224
	st.b	$zero, $fp, 1228
	beqz	$s6, .LBB23_43
.LBB23_38:                              #   Parent Loop BB23_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bgeu	$s3, $s6, .LBB23_41
# %bb.39:                               #   in Loop: Header=BB23_38 Depth=2
	ld.wu	$a0, $fp, 1176
	ld.d	$a1, $fp, 1168
	addi.d	$a2, $a0, 1
	st.w	$a2, $fp, 1176
	stx.b	$s1, $a1, $a0
	ld.w	$a0, $fp, 1176
	ld.w	$a1, $fp, 1180
	bne	$a0, $a1, .LBB23_37
# %bb.40:                               #   in Loop: Header=BB23_38 Depth=2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN10COutBuffer14FlushWithCheckEv)
	jirl	$ra, $ra, 0
	b	.LBB23_37
.LBB23_41:                              #   in Loop: Header=BB23_8 Depth=1
	move	$a0, $zero
	ori	$s2, $zero, 8
.LBB23_42:                              # %.loopexit126
                                        #   in Loop: Header=BB23_8 Depth=1
	addi.d	$a1, $zero, -1
	sll.w	$a1, $a1, $s6
	andn	$a1, $s1, $a1
	sub.d	$a2, $s8, $s2
	sll.w	$a1, $a1, $a2
	or	$a0, $a0, $a1
	st.b	$a0, $fp, 1228
	sub.d	$a0, $s2, $s6
	st.w	$a0, $fp, 1224
.LBB23_43:                              # %_ZN12CBitlEncoder9WriteBitsEjj.exit54
                                        #   in Loop: Header=BB23_8 Depth=1
	ld.hu	$s5, $s5, 2
	pcalau12i	$a0, %pc_hi20(_ZN9NCompress8NDeflate8NEncoderL9g_FastPosE)
	addi.d	$a0, $a0, %pc_lo12(_ZN9NCompress8NDeflate8NEncoderL9g_FastPosE)
	ori	$a1, $zero, 511
	bltu	$a1, $s5, .LBB23_45
# %bb.44:                               #   in Loop: Header=BB23_8 Depth=1
	ldx.bu	$s1, $a0, $s5
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ldx.bu	$s6, $a0, $s1
	slli.d	$s7, $s1, 2
	bnez	$s6, .LBB23_46
	b	.LBB23_57
	.p2align	4, , 16
.LBB23_45:                              #   in Loop: Header=BB23_8 Depth=1
	srli.d	$a1, $s5, 8
	ldx.bu	$a0, $a0, $a1
	addi.d	$s1, $a0, 16
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ldx.bu	$s6, $a0, $s1
	slli.d	$s7, $s1, 2
	beqz	$s6, .LBB23_57
.LBB23_46:                              # %.lr.ph.i56
                                        #   in Loop: Header=BB23_8 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ldx.w	$s2, $a0, $s7
	ld.w	$s0, $fp, 1224
	ld.bu	$a0, $fp, 1228
	bltu	$s6, $s0, .LBB23_56
# %bb.47:                               #   in Loop: Header=BB23_8 Depth=1
	sub.d	$a1, $s8, $s0
	ld.wu	$a2, $fp, 1176
	sll.w	$a1, $s2, $a1
	ld.d	$a3, $fp, 1168
	or	$a0, $a0, $a1
	addi.d	$a1, $a2, 1
	st.w	$a1, $fp, 1176
	stx.b	$a0, $a3, $a2
	ld.w	$a0, $fp, 1176
	ld.w	$a1, $fp, 1180
	bne	$a0, $a1, .LBB23_49
# %bb.48:                               #   in Loop: Header=BB23_8 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN10COutBuffer14FlushWithCheckEv)
	jirl	$ra, $ra, 0
.LBB23_49:                              # %_ZN10COutBuffer9WriteByteEh.exit.i60.peel
                                        #   in Loop: Header=BB23_8 Depth=1
	ld.w	$a0, $fp, 1224
	sub.w	$s6, $s6, $s0
	st.w	$s8, $fp, 1224
	st.b	$zero, $fp, 1228
	ld.d	$s0, $sp, 48                    # 8-byte Folded Reload
	beqz	$s6, .LBB23_57
# %bb.50:                               # %.peel.next128
                                        #   in Loop: Header=BB23_8 Depth=1
	srl.w	$s2, $s2, $a0
	b	.LBB23_52
	.p2align	4, , 16
.LBB23_51:                              # %_ZN10COutBuffer9WriteByteEh.exit.i60
                                        #   in Loop: Header=BB23_52 Depth=2
	ld.wu	$a0, $fp, 1224
	addi.w	$s6, $s6, -8
	srl.w	$s2, $s2, $a0
	st.w	$s8, $fp, 1224
	st.b	$zero, $fp, 1228
	beqz	$s6, .LBB23_57
.LBB23_52:                              #   Parent Loop BB23_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bgeu	$s3, $s6, .LBB23_55
# %bb.53:                               #   in Loop: Header=BB23_52 Depth=2
	ld.wu	$a0, $fp, 1176
	ld.d	$a1, $fp, 1168
	addi.d	$a2, $a0, 1
	st.w	$a2, $fp, 1176
	stx.b	$s2, $a1, $a0
	ld.w	$a0, $fp, 1176
	ld.w	$a1, $fp, 1180
	bne	$a0, $a1, .LBB23_51
# %bb.54:                               #   in Loop: Header=BB23_52 Depth=2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN10COutBuffer14FlushWithCheckEv)
	jirl	$ra, $ra, 0
	b	.LBB23_51
.LBB23_55:                              #   in Loop: Header=BB23_8 Depth=1
	move	$a0, $zero
	ori	$s0, $zero, 8
.LBB23_56:                              # %.loopexit130
                                        #   in Loop: Header=BB23_8 Depth=1
	addi.d	$a1, $zero, -1
	sll.w	$a1, $a1, $s6
	andn	$a1, $s2, $a1
	sub.d	$a2, $s8, $s0
	sll.w	$a1, $a1, $a2
	or	$a0, $a0, $a1
	st.b	$a0, $fp, 1228
	sub.d	$a0, $s0, $s6
	st.w	$a0, $fp, 1224
	ld.d	$s0, $sp, 48                    # 8-byte Folded Reload
.LBB23_57:                              # %_ZN12CBitlEncoder9WriteBitsEjj.exit63
                                        #   in Loop: Header=BB23_8 Depth=1
	ori	$a0, $zero, 4
	bltu	$s1, $a0, .LBB23_7
# %bb.58:                               # %.lr.ph.i65
                                        #   in Loop: Header=BB23_8 Depth=1
	pcalau12i	$a0, %pc_hi20(_ZN9NCompress8NDeflateL15kDistDirectBitsE)
	addi.d	$a0, $a0, %pc_lo12(_ZN9NCompress8NDeflateL15kDistDirectBitsE)
	ldx.bu	$s1, $a0, $s1
	pcalau12i	$a0, %pc_hi20(_ZN9NCompress8NDeflateL10kDistStartE)
	addi.d	$a0, $a0, %pc_lo12(_ZN9NCompress8NDeflateL10kDistStartE)
	ldx.w	$a1, $a0, $s7
	ld.w	$s6, $fp, 1224
	ld.bu	$a0, $fp, 1228
	sub.d	$s2, $s5, $a1
	bltu	$s1, $s6, .LBB23_5
# %bb.59:                               #   in Loop: Header=BB23_8 Depth=1
	sub.d	$a1, $s8, $s6
	ld.wu	$a2, $fp, 1176
	sll.w	$a1, $s2, $a1
	ld.d	$a3, $fp, 1168
	or	$a0, $a0, $a1
	addi.d	$a1, $a2, 1
	st.w	$a1, $fp, 1176
	stx.b	$a0, $a3, $a2
	ld.w	$a0, $fp, 1176
	ld.w	$a1, $fp, 1180
	bne	$a0, $a1, .LBB23_61
# %bb.60:                               #   in Loop: Header=BB23_8 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN10COutBuffer14FlushWithCheckEv)
	jirl	$ra, $ra, 0
.LBB23_61:                              # %_ZN10COutBuffer9WriteByteEh.exit.i69.peel
                                        #   in Loop: Header=BB23_8 Depth=1
	ld.w	$a0, $fp, 1224
	sub.w	$s1, $s1, $s6
	st.w	$s8, $fp, 1224
	st.b	$zero, $fp, 1228
	beqz	$s1, .LBB23_7
# %bb.62:                               # %.peel.next132
                                        #   in Loop: Header=BB23_8 Depth=1
	srl.w	$s2, $s2, $a0
	b	.LBB23_64
	.p2align	4, , 16
.LBB23_63:                              # %_ZN10COutBuffer9WriteByteEh.exit.i69
                                        #   in Loop: Header=BB23_64 Depth=2
	ld.wu	$a0, $fp, 1224
	addi.w	$s1, $s1, -8
	srl.w	$s2, $s2, $a0
	st.w	$s8, $fp, 1224
	st.b	$zero, $fp, 1228
	beqz	$s1, .LBB23_7
.LBB23_64:                              #   Parent Loop BB23_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bgeu	$s3, $s1, .LBB23_4
# %bb.65:                               #   in Loop: Header=BB23_64 Depth=2
	ld.wu	$a0, $fp, 1176
	ld.d	$a1, $fp, 1168
	addi.d	$a2, $a0, 1
	st.w	$a2, $fp, 1176
	stx.b	$s2, $a1, $a0
	ld.w	$a0, $fp, 1176
	ld.w	$a1, $fp, 1180
	bne	$a0, $a1, .LBB23_63
# %bb.66:                               #   in Loop: Header=BB23_64 Depth=2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN10COutBuffer14FlushWithCheckEv)
	jirl	$ra, $ra, 0
	b	.LBB23_63
.LBB23_67:                              #   in Loop: Header=BB23_8 Depth=1
	move	$a0, $zero
	ori	$s2, $zero, 8
.LBB23_68:                              # %.loopexit138
                                        #   in Loop: Header=BB23_8 Depth=1
	addi.d	$a1, $zero, -1
	sll.w	$a1, $a1, $s1
	andn	$a1, $s5, $a1
	sub.d	$a2, $s8, $s2
	sll.w	$a1, $a1, $a2
	or	$a0, $a0, $a1
	st.b	$a0, $fp, 1228
	sub.d	$a0, $s2, $s1
	b	.LBB23_6
.LBB23_69:                              # %_ZN9NCompress8NDeflate8NEncoder19Huffman_ReverseBitsEPjPKhj.exit26._crit_edge
	ori	$a0, $zero, 2192
	ldx.bu	$s1, $fp, $a0
	beqz	$s1, .LBB23_81
# %bb.70:                               # %.lr.ph.i27
	lu12i.w	$a0, 1
	ori	$a0, $a0, 464
	ldx.w	$s2, $fp, $a0
	ld.w	$s3, $fp, 1224
	ld.bu	$a0, $fp, 1228
	bltu	$s1, $s3, .LBB23_80
# %bb.71:
	ori	$s0, $zero, 8
	sub.d	$a1, $s0, $s3
	ld.wu	$a2, $fp, 1176
	sll.w	$a1, $s2, $a1
	ld.d	$a3, $fp, 1168
	or	$a0, $a0, $a1
	addi.d	$a1, $a2, 1
	st.w	$a1, $fp, 1176
	stx.b	$a0, $a3, $a2
	ld.w	$a0, $fp, 1176
	ld.w	$a1, $fp, 1180
	sub.w	$s1, $s1, $s3
	bne	$a0, $a1, .LBB23_73
# %bb.72:
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN10COutBuffer14FlushWithCheckEv)
	jirl	$ra, $ra, 0
.LBB23_73:                              # %_ZN10COutBuffer9WriteByteEh.exit.i.peel
	ld.w	$a0, $fp, 1224
	st.w	$s0, $fp, 1224
	st.b	$zero, $fp, 1228
	beqz	$s1, .LBB23_81
# %bb.74:                               # %.peel.next140
	srl.w	$s2, $s2, $a0
	ori	$s0, $zero, 7
	ori	$s3, $zero, 8
	b	.LBB23_76
	.p2align	4, , 16
.LBB23_75:                              # %_ZN10COutBuffer9WriteByteEh.exit.i
                                        #   in Loop: Header=BB23_76 Depth=1
	ld.wu	$a0, $fp, 1224
	addi.w	$s1, $s1, -8
	srl.w	$s2, $s2, $a0
	st.w	$s3, $fp, 1224
	st.b	$zero, $fp, 1228
	beqz	$s1, .LBB23_81
.LBB23_76:                              # =>This Inner Loop Header: Depth=1
	bgeu	$s0, $s1, .LBB23_79
# %bb.77:                               #   in Loop: Header=BB23_76 Depth=1
	ld.wu	$a0, $fp, 1176
	ld.d	$a1, $fp, 1168
	addi.d	$a2, $a0, 1
	st.w	$a2, $fp, 1176
	stx.b	$s2, $a1, $a0
	ld.w	$a0, $fp, 1176
	ld.w	$a1, $fp, 1180
	bne	$a0, $a1, .LBB23_75
# %bb.78:                               #   in Loop: Header=BB23_76 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN10COutBuffer14FlushWithCheckEv)
	jirl	$ra, $ra, 0
	b	.LBB23_75
.LBB23_79:
	move	$a0, $zero
.LBB23_80:                              # %.loopexit142
	addi.d	$a1, $zero, -1
	sll.w	$a1, $a1, $s1
	andn	$a1, $s2, $a1
	ori	$a2, $zero, 8
	sub.d	$a2, $a2, $s3
	sll.w	$a1, $a1, $a2
	or	$a0, $a0, $a1
	st.b	$a0, $fp, 1228
	sub.d	$a0, $s3, $s1
	st.w	$a0, $fp, 1224
.LBB23_81:                              # %_ZN12CBitlEncoder9WriteBitsEjj.exit
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
.Lfunc_end23:
	.size	_ZN9NCompress8NDeflate8NEncoder6CCoder10WriteBlockEv, .Lfunc_end23-_ZN9NCompress8NDeflate8NEncoder6CCoder10WriteBlockEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZN9NCompress8NDeflate8NEncoder6CCoder15WriteStoreBlockEjjb # -- Begin function _ZN9NCompress8NDeflate8NEncoder6CCoder15WriteStoreBlockEjjb
	.p2align	5
	.type	_ZN9NCompress8NDeflate8NEncoder6CCoder15WriteStoreBlockEjjb,@function
_ZN9NCompress8NDeflate8NEncoder6CCoder15WriteStoreBlockEjjb: # @_ZN9NCompress8NDeflate8NEncoder6CCoder15WriteStoreBlockEjjb
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
	move	$fp, $a3
	move	$s0, $a2
	move	$s4, $a1
	move	$s1, $a0
	addi.d	$s2, $a0, 1168
	lu12i.w	$a0, 15
	ori	$s5, $a0, 4095
	ori	$s7, $zero, 8
	b	.LBB24_2
	.p2align	4, , 16
.LBB24_1:                               # %._crit_edge
                                        #   in Loop: Header=BB24_2 Depth=1
	sub.w	$s0, $s0, $s3
	move	$s4, $s8
	beqz	$s8, .LBB24_10
.LBB24_2:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB24_8 Depth 2
	sltu	$a0, $s4, $s5
	masknez	$a1, $s5, $a0
	maskeqz	$a0, $s4, $a0
	or	$s3, $a0, $a1
	sub.w	$s8, $s4, $s3
	sltui	$a0, $s8, 1
	and	$a1, $fp, $a0
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN9NCompress8NDeflate8NEncoder6CCoder9WriteBitsEji)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 2
	move	$a0, $s1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(_ZN9NCompress8NDeflate8NEncoder6CCoder9WriteBitsEji)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 1224
	ori	$a1, $zero, 7
	bltu	$a1, $a0, .LBB24_5
# %bb.3:                                #   in Loop: Header=BB24_2 Depth=1
	ld.wu	$a0, $s1, 1176
	ld.b	$a1, $s1, 1228
	ld.d	$a2, $s1, 1168
	addi.d	$a3, $a0, 1
	st.w	$a3, $s1, 1176
	stx.b	$a1, $a2, $a0
	ld.w	$a0, $s1, 1176
	ld.w	$a1, $s1, 1180
	bne	$a0, $a1, .LBB24_5
# %bb.4:                                #   in Loop: Header=BB24_2 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN10COutBuffer14FlushWithCheckEv)
	jirl	$ra, $ra, 0
.LBB24_5:                               # %_ZN12CBitlEncoder9FlushByteEv.exit
                                        #   in Loop: Header=BB24_2 Depth=1
	st.w	$s7, $s1, 1224
	st.b	$zero, $s1, 1228
	ori	$a2, $zero, 16
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZN9NCompress8NDeflate8NEncoder6CCoder9WriteBitsEji)
	jirl	$ra, $ra, 0
	xor	$a1, $s3, $s5
	ori	$a2, $zero, 16
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN9NCompress8NDeflate8NEncoder6CCoder9WriteBitsEji)
	jirl	$ra, $ra, 0
	beqz	$s4, .LBB24_1
# %bb.6:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB24_2 Depth=1
	ld.d	$a0, $s1, 0
	bstrpick.d	$a1, $s0, 31, 0
	sub.d	$s4, $a0, $a1
	bstrpick.d	$s6, $s3, 31, 0
	b	.LBB24_8
	.p2align	4, , 16
.LBB24_7:                               # %_ZN12CBitlEncoder9WriteByteEh.exit
                                        #   in Loop: Header=BB24_8 Depth=2
	addi.d	$s6, $s6, -1
	addi.d	$s4, $s4, 1
	beqz	$s6, .LBB24_1
.LBB24_8:                               # %.lr.ph
                                        #   Parent Loop BB24_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.wu	$a0, $s1, 1176
	ld.b	$a1, $s4, 0
	ld.d	$a2, $s1, 1168
	addi.d	$a3, $a0, 1
	st.w	$a3, $s1, 1176
	stx.b	$a1, $a2, $a0
	ld.w	$a0, $s1, 1176
	ld.w	$a1, $s1, 1180
	bne	$a0, $a1, .LBB24_7
# %bb.9:                                #   in Loop: Header=BB24_8 Depth=2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN10COutBuffer14FlushWithCheckEv)
	jirl	$ra, $ra, 0
	b	.LBB24_7
.LBB24_10:
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
.Lfunc_end24:
	.size	_ZN9NCompress8NDeflate8NEncoder6CCoder15WriteStoreBlockEjjb, .Lfunc_end24-_ZN9NCompress8NDeflate8NEncoder6CCoder15WriteStoreBlockEjjb
	.cfi_endproc
                                        # -- End function
	.globl	_ZN9NCompress8NDeflate8NEncoder6CCoder11TryDynBlockEij # -- Begin function _ZN9NCompress8NDeflate8NEncoder6CCoder11TryDynBlockEij
	.p2align	5
	.type	_ZN9NCompress8NDeflate8NEncoder6CCoder11TryDynBlockEij,@function
_ZN9NCompress8NDeflate8NEncoder6CCoder11TryDynBlockEij: # @_ZN9NCompress8NDeflate8NEncoder6CCoder11TryDynBlockEij
	.cfi_startproc
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
	move	$s1, $a2
	move	$s8, $a0
	ldptr.d	$a0, $a0, 4920
	ori	$a2, $zero, 332
	mul.d	$a1, $a1, $a2
	add.d	$a2, $a0, $a1
	ld.w	$a0, $a2, 324
	ld.w	$a1, $a2, 328
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	addi.d	$a1, $s8, 2047
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	addi.d	$a1, $a1, 146
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	stptr.w	$a0, $s8, 4912
	move	$a0, $s8
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	move	$a1, $a2
	pcaddu18i	$ra, %call36(_ZN9NCompress8NDeflate8NEncoder6CCoder9SetPricesERKNS0_7CLevelsE)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s8, 1936
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	beqz	$s1, .LBB25_6
# %bb.1:                                # %.lr.ph
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	addi.d	$s3, $a2, 209
	addi.d	$s4, $a2, 1489
	addi.d	$s5, $a2, 1361
	lu12i.w	$a1, 1
	ori	$a0, $a1, 592
	add.d	$s6, $s8, $a0
	addi.d	$s7, $a2, 177
	lu12i.w	$a0, 4
	ori	$s0, $a0, 1616
	ori	$a0, $a1, 2904
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	b	.LBB25_3
	.p2align	4, , 16
.LBB25_2:                               #   in Loop: Header=BB25_3 Depth=1
	ori	$a3, $zero, 288
	move	$a0, $s3
	move	$a1, $s4
	ld.d	$s2, $sp, 80                    # 8-byte Folded Reload
	move	$a2, $s2
	move	$a4, $s8
	pcaddu18i	$ra, %call36(Huffman_Generate)
	jirl	$ra, $ra, 0
	ori	$a3, $zero, 32
	move	$a0, $s5
	move	$a1, $s6
	move	$a2, $s7
	move	$a4, $s8
	pcaddu18i	$ra, %call36(Huffman_Generate)
	jirl	$ra, $ra, 0
	move	$s8, $fp
	move	$a0, $fp
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZN9NCompress8NDeflate8NEncoder6CCoder9SetPricesERKNS0_7CLevelsE)
	jirl	$ra, $ra, 0
	addi.w	$s1, $s1, -1
	beqz	$s1, .LBB25_6
.LBB25_3:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	st.w	$a0, $s8, 1288
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZN9NCompress8NDeflate8NEncoder6CCoder8TryBlockEv)
	jirl	$ra, $ra, 0
	move	$fp, $s8
	ld.w	$a0, $s8, 1372
	ori	$s8, $zero, 12
	bltu	$s0, $a0, .LBB25_2
# %bb.4:                                #   in Loop: Header=BB25_3 Depth=1
	ori	$s8, $zero, 11
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	bltu	$a1, $a0, .LBB25_2
# %bb.5:                                #   in Loop: Header=BB25_3 Depth=1
	ori	$a1, $zero, 2000
	sltu	$a0, $a1, $a0
	addi.d	$s8, $a0, 9
	b	.LBB25_2
.LBB25_6:                               # %._crit_edge
	ori	$a2, $zero, 320
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	ld.bu	$a0, $a2, 28
	ori	$s1, $zero, 286
	st.w	$s1, $s8, 1360
	bnez	$a0, .LBB25_35
# %bb.7:
	ori	$a0, $zero, 2220
	ldx.bu	$a0, $s8, $a0
	ori	$s1, $zero, 285
	st.w	$s1, $s8, 1360
	bnez	$a0, .LBB25_35
# %bb.8:
	ld.bu	$a0, $a2, 26
	ori	$s1, $zero, 284
	st.w	$s1, $s8, 1360
	bnez	$a0, .LBB25_35
# %bb.9:
	ld.bu	$a0, $a2, 25
	ori	$s1, $zero, 283
	st.w	$s1, $s8, 1360
	bnez	$a0, .LBB25_35
# %bb.10:
	ld.bu	$a0, $a2, 24
	ori	$s1, $zero, 282
	st.w	$s1, $s8, 1360
	bnez	$a0, .LBB25_35
# %bb.11:
	ori	$a0, $zero, 2216
	ldx.bu	$a0, $s8, $a0
	ori	$s1, $zero, 281
	st.w	$s1, $s8, 1360
	bnez	$a0, .LBB25_35
# %bb.12:
	ld.bu	$a0, $a2, 22
	ori	$s1, $zero, 280
	st.w	$s1, $s8, 1360
	bnez	$a0, .LBB25_35
# %bb.13:
	ld.bu	$a0, $a2, 21
	ori	$s1, $zero, 279
	st.w	$s1, $s8, 1360
	bnez	$a0, .LBB25_35
# %bb.14:
	ld.bu	$a0, $a2, 20
	ori	$s1, $zero, 278
	st.w	$s1, $s8, 1360
	bnez	$a0, .LBB25_35
# %bb.15:
	ori	$a0, $zero, 2212
	ldx.bu	$a0, $s8, $a0
	ori	$s1, $zero, 277
	st.w	$s1, $s8, 1360
	bnez	$a0, .LBB25_35
# %bb.16:
	ld.bu	$a0, $a2, 18
	ori	$s1, $zero, 276
	st.w	$s1, $s8, 1360
	bnez	$a0, .LBB25_35
# %bb.17:
	ld.bu	$a0, $a2, 17
	ori	$s1, $zero, 275
	st.w	$s1, $s8, 1360
	bnez	$a0, .LBB25_35
# %bb.18:
	ld.bu	$a0, $a2, 16
	ori	$s1, $zero, 274
	st.w	$s1, $s8, 1360
	bnez	$a0, .LBB25_35
# %bb.19:
	ori	$a0, $zero, 2208
	ldx.bu	$a0, $s8, $a0
	ori	$s1, $zero, 273
	st.w	$s1, $s8, 1360
	bnez	$a0, .LBB25_35
# %bb.20:
	ld.bu	$a0, $a2, 14
	ori	$s1, $zero, 272
	st.w	$s1, $s8, 1360
	bnez	$a0, .LBB25_35
# %bb.21:
	ld.bu	$a0, $a2, 13
	ori	$s1, $zero, 271
	st.w	$s1, $s8, 1360
	bnez	$a0, .LBB25_35
# %bb.22:
	ld.bu	$a0, $a2, 12
	ori	$s1, $zero, 270
	st.w	$s1, $s8, 1360
	bnez	$a0, .LBB25_35
# %bb.23:
	ori	$a0, $zero, 2204
	ldx.bu	$a0, $s8, $a0
	ori	$s1, $zero, 269
	st.w	$s1, $s8, 1360
	bnez	$a0, .LBB25_35
# %bb.24:
	ld.bu	$a0, $a2, 10
	ori	$s1, $zero, 268
	st.w	$s1, $s8, 1360
	bnez	$a0, .LBB25_35
# %bb.25:
	ld.bu	$a0, $a2, 9
	ori	$s1, $zero, 267
	st.w	$s1, $s8, 1360
	bnez	$a0, .LBB25_35
# %bb.26:
	ld.bu	$a0, $a2, 8
	ori	$s1, $zero, 266
	st.w	$s1, $s8, 1360
	bnez	$a0, .LBB25_35
# %bb.27:
	ori	$a0, $zero, 2200
	ldx.bu	$a0, $s8, $a0
	ori	$s1, $zero, 265
	st.w	$s1, $s8, 1360
	bnez	$a0, .LBB25_35
# %bb.28:
	ld.bu	$a0, $a2, 6
	ori	$s1, $zero, 264
	st.w	$s1, $s8, 1360
	bnez	$a0, .LBB25_35
# %bb.29:
	ld.bu	$a0, $a2, 5
	ori	$s1, $zero, 263
	st.w	$s1, $s8, 1360
	bnez	$a0, .LBB25_35
# %bb.30:
	ld.bu	$a0, $a2, 4
	ori	$s1, $zero, 262
	st.w	$s1, $s8, 1360
	bnez	$a0, .LBB25_35
# %bb.31:
	ori	$a0, $zero, 2196
	ldx.bu	$a0, $s8, $a0
	ori	$s1, $zero, 261
	st.w	$s1, $s8, 1360
	bnez	$a0, .LBB25_35
# %bb.32:
	ld.bu	$a0, $a2, 2
	ori	$s1, $zero, 260
	st.w	$s1, $s8, 1360
	bnez	$a0, .LBB25_35
# %bb.33:
	ld.bu	$a0, $a2, 1
	ori	$s1, $zero, 259
	st.w	$s1, $s8, 1360
	bnez	$a0, .LBB25_35
# %bb.34:
	ld.bu	$a0, $a2, 0
	sltui	$a0, $a0, 1
	ori	$a1, $zero, 258
	sub.d	$s1, $a1, $a0
	st.w	$s1, $s8, 1360
.LBB25_35:                              # %.critedge
	ld.bu	$a1, $a2, 62
	lu12i.w	$s0, 1
	ori	$a0, $s0, 798
	ori	$s3, $zero, 32
	st.w	$s3, $s8, 1364
	bnez	$a1, .LBB25_66
# %bb.36:
	ld.bu	$a1, $a2, 61
	ori	$s3, $zero, 31
	st.w	$s3, $s8, 1364
	bnez	$a1, .LBB25_66
# %bb.37:
	ld.bu	$a1, $a2, 60
	ori	$s3, $zero, 30
	st.w	$s3, $s8, 1364
	bnez	$a1, .LBB25_66
# %bb.38:
	ori	$a1, $zero, 2252
	ldx.bu	$a1, $s8, $a1
	ori	$s3, $zero, 29
	st.w	$s3, $s8, 1364
	bnez	$a1, .LBB25_66
# %bb.39:
	ld.bu	$a1, $a2, 58
	ori	$s3, $zero, 28
	st.w	$s3, $s8, 1364
	bnez	$a1, .LBB25_66
# %bb.40:
	ld.bu	$a1, $a2, 57
	ori	$s3, $zero, 27
	st.w	$s3, $s8, 1364
	bnez	$a1, .LBB25_66
# %bb.41:
	ld.bu	$a1, $a2, 56
	ori	$s3, $zero, 26
	st.w	$s3, $s8, 1364
	bnez	$a1, .LBB25_66
# %bb.42:
	ori	$a1, $zero, 2248
	ldx.bu	$a1, $s8, $a1
	ori	$s3, $zero, 25
	st.w	$s3, $s8, 1364
	bnez	$a1, .LBB25_66
# %bb.43:
	ld.bu	$a1, $a2, 54
	ori	$s3, $zero, 24
	st.w	$s3, $s8, 1364
	bnez	$a1, .LBB25_66
# %bb.44:
	ld.bu	$a1, $a2, 53
	ori	$s3, $zero, 23
	st.w	$s3, $s8, 1364
	bnez	$a1, .LBB25_66
# %bb.45:
	ld.bu	$a1, $a2, 52
	ori	$s3, $zero, 22
	st.w	$s3, $s8, 1364
	bnez	$a1, .LBB25_66
# %bb.46:
	ori	$a1, $zero, 2244
	ldx.bu	$a1, $s8, $a1
	ori	$s3, $zero, 21
	st.w	$s3, $s8, 1364
	bnez	$a1, .LBB25_66
# %bb.47:
	ld.bu	$a1, $a2, 50
	ori	$s3, $zero, 20
	st.w	$s3, $s8, 1364
	bnez	$a1, .LBB25_66
# %bb.48:
	ld.bu	$a1, $a2, 49
	ori	$s3, $zero, 19
	st.w	$s3, $s8, 1364
	bnez	$a1, .LBB25_66
# %bb.49:
	ld.bu	$a1, $a2, 48
	ori	$s3, $zero, 18
	st.w	$s3, $s8, 1364
	bnez	$a1, .LBB25_66
# %bb.50:
	ori	$a1, $zero, 2240
	ldx.bu	$a1, $s8, $a1
	ori	$s3, $zero, 17
	st.w	$s3, $s8, 1364
	bnez	$a1, .LBB25_66
# %bb.51:
	ld.bu	$a1, $a2, 46
	ori	$s3, $zero, 16
	st.w	$s3, $s8, 1364
	bnez	$a1, .LBB25_66
# %bb.52:
	ld.bu	$a1, $a2, 45
	ori	$s3, $zero, 15
	st.w	$s3, $s8, 1364
	bnez	$a1, .LBB25_66
# %bb.53:
	ld.bu	$a1, $a2, 44
	ori	$s3, $zero, 14
	st.w	$s3, $s8, 1364
	bnez	$a1, .LBB25_66
# %bb.54:
	ori	$a1, $zero, 2236
	ldx.bu	$a1, $s8, $a1
	ori	$s3, $zero, 13
	st.w	$s3, $s8, 1364
	bnez	$a1, .LBB25_66
# %bb.55:
	ld.bu	$a1, $a2, 42
	ori	$s3, $zero, 12
	st.w	$s3, $s8, 1364
	bnez	$a1, .LBB25_66
# %bb.56:
	ld.bu	$a1, $a2, 41
	ori	$s3, $zero, 11
	st.w	$s3, $s8, 1364
	bnez	$a1, .LBB25_66
# %bb.57:
	ld.bu	$a1, $a2, 40
	ori	$s3, $zero, 10
	st.w	$s3, $s8, 1364
	bnez	$a1, .LBB25_66
# %bb.58:
	ori	$a1, $zero, 2232
	ldx.bu	$a1, $s8, $a1
	ori	$s3, $zero, 9
	st.w	$s3, $s8, 1364
	bnez	$a1, .LBB25_66
# %bb.59:
	ld.bu	$a1, $a2, 38
	ori	$s3, $zero, 8
	st.w	$s3, $s8, 1364
	bnez	$a1, .LBB25_66
# %bb.60:
	ld.bu	$a1, $a2, 37
	ori	$s3, $zero, 7
	st.w	$s3, $s8, 1364
	bnez	$a1, .LBB25_66
# %bb.61:
	ld.bu	$a1, $a2, 36
	ori	$s3, $zero, 6
	st.w	$s3, $s8, 1364
	bnez	$a1, .LBB25_66
# %bb.62:
	ori	$a1, $zero, 2228
	ldx.bu	$a1, $s8, $a1
	ori	$s3, $zero, 5
	st.w	$s3, $s8, 1364
	bnez	$a1, .LBB25_66
# %bb.63:
	ld.bu	$a1, $a2, 34
	ori	$s3, $zero, 4
	st.w	$s3, $s8, 1364
	bnez	$a1, .LBB25_66
# %bb.64:
	ld.bu	$a1, $a2, 33
	ori	$s3, $zero, 3
	st.w	$s3, $s8, 1364
	bnez	$a1, .LBB25_66
# %bb.65:
	ld.bu	$a1, $a2, 32
	sltui	$a1, $a1, 1
	ori	$a2, $zero, 2
	sub.d	$s3, $a2, $a1
	st.w	$s3, $s8, 1364
.LBB25_66:                              # %.lr.ph.i
	add.d	$s2, $s8, $a0
	addi.d	$a0, $sp, 88
	ori	$a2, $zero, 76
	addi.d	$s4, $sp, 88
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.bu	$a2, $a0, 0
	move	$a0, $zero
	move	$t2, $zero
	sltui	$a4, $a2, 1
	ori	$a1, $zero, 4
	sub.w	$a7, $a1, $a4
	ori	$a3, $zero, 7
	masknez	$a5, $a3, $a4
	ori	$a3, $zero, 138
	maskeqz	$a4, $a3, $a4
	or	$t1, $a4, $a5
	addi.d	$a4, $s1, -1
	ori	$t0, $zero, 255
	ori	$a5, $zero, 9
	b	.LBB25_70
	.p2align	4, , 16
.LBB25_67:                              #   in Loop: Header=BB25_70 Depth=1
	slli.d	$a7, $a2, 2
	ldx.w	$t0, $a7, $s4
	add.d	$t0, $t0, $t3
	stx.w	$t0, $a7, $s4
.LBB25_68:                              #   in Loop: Header=BB25_70 Depth=1
	move	$t3, $zero
	xor	$a7, $a2, $a6
	sltui	$a7, $a7, 1
	sltui	$t0, $a6, 1
	xori	$t1, $a7, 7
	maskeqz	$t2, $a3, $t0
	masknez	$t1, $t1, $t0
	or	$t1, $t2, $t1
	or	$a7, $t0, $a7
	sub.w	$a7, $a1, $a7
	move	$t0, $a2
.LBB25_69:                              #   in Loop: Header=BB25_70 Depth=1
	addi.d	$a0, $a0, 1
	move	$t2, $t3
	move	$a2, $a6
	beq	$s1, $a0, .LBB25_82
.LBB25_70:                              # =>This Inner Loop Header: Depth=1
	ori	$a6, $zero, 255
	bgeu	$a0, $a4, .LBB25_72
# %bb.71:                               #   in Loop: Header=BB25_70 Depth=1
	add.d	$a6, $s8, $a0
	ld.bu	$a6, $a6, 1937
.LBB25_72:                              #   in Loop: Header=BB25_70 Depth=1
	addi.w	$t3, $t2, 1
	bge	$t3, $t1, .LBB25_74
# %bb.73:                               #   in Loop: Header=BB25_70 Depth=1
	beq	$a2, $a6, .LBB25_69
.LBB25_74:                              #   in Loop: Header=BB25_70 Depth=1
	blt	$t3, $a7, .LBB25_67
# %bb.75:                               #   in Loop: Header=BB25_70 Depth=1
	beqz	$a2, .LBB25_79
# %bb.76:                               #   in Loop: Header=BB25_70 Depth=1
	beq	$a2, $t0, .LBB25_78
# %bb.77:                               #   in Loop: Header=BB25_70 Depth=1
	slli.d	$a7, $a2, 2
	ldx.w	$t0, $a7, $s4
	addi.d	$t0, $t0, 1
	stx.w	$t0, $a7, $s4
.LBB25_78:                              #   in Loop: Header=BB25_70 Depth=1
	ld.w	$a7, $sp, 152
	addi.d	$a7, $a7, 1
	st.w	$a7, $sp, 152
	b	.LBB25_68
.LBB25_79:                              #   in Loop: Header=BB25_70 Depth=1
	blt	$a5, $t2, .LBB25_81
# %bb.80:                               #   in Loop: Header=BB25_70 Depth=1
	ld.w	$a7, $sp, 156
	addi.d	$a7, $a7, 1
	st.w	$a7, $sp, 156
	b	.LBB25_68
.LBB25_81:                              #   in Loop: Header=BB25_70 Depth=1
	ld.w	$a7, $sp, 160
	addi.d	$a7, $a7, 1
	st.w	$a7, $sp, 160
	b	.LBB25_68
.LBB25_82:                              # %.lr.ph.i26
	ori	$a0, $zero, 2224
	ldx.bu	$a1, $s8, $a0
	move	$a0, $zero
	move	$t4, $zero
	sltui	$a4, $a1, 1
	ori	$a2, $zero, 4
	sub.w	$t1, $a2, $a4
	ori	$a3, $zero, 7
	masknez	$a5, $a3, $a4
	ori	$a3, $zero, 138
	maskeqz	$a4, $a3, $a4
	or	$t3, $a4, $a5
	addi.d	$a4, $s3, -1
	ld.d	$a5, $sp, 48                    # 8-byte Folded Reload
	addi.d	$a5, $a5, 178
	ori	$t2, $zero, 255
	addi.d	$a6, $sp, 88
	ori	$a7, $zero, 9
	b	.LBB25_86
	.p2align	4, , 16
.LBB25_83:                              #   in Loop: Header=BB25_86 Depth=1
	slli.d	$t1, $a1, 2
	ldx.w	$t2, $t1, $a6
	add.d	$t2, $t2, $t5
	stx.w	$t2, $t1, $a6
.LBB25_84:                              #   in Loop: Header=BB25_86 Depth=1
	move	$t5, $zero
	xor	$t1, $a1, $t0
	sltui	$t1, $t1, 1
	sltui	$t2, $t0, 1
	xori	$t3, $t1, 7
	maskeqz	$t4, $a3, $t2
	masknez	$t3, $t3, $t2
	or	$t3, $t4, $t3
	or	$t1, $t2, $t1
	sub.w	$t1, $a2, $t1
	move	$t2, $a1
.LBB25_85:                              #   in Loop: Header=BB25_86 Depth=1
	addi.d	$a0, $a0, 1
	move	$t4, $t5
	move	$a1, $t0
	beq	$s3, $a0, .LBB25_98
.LBB25_86:                              # =>This Inner Loop Header: Depth=1
	ori	$t0, $zero, 255
	bgeu	$a0, $a4, .LBB25_88
# %bb.87:                               #   in Loop: Header=BB25_86 Depth=1
	ldx.bu	$t0, $a5, $a0
.LBB25_88:                              #   in Loop: Header=BB25_86 Depth=1
	addi.w	$t5, $t4, 1
	bge	$t5, $t3, .LBB25_90
# %bb.89:                               #   in Loop: Header=BB25_86 Depth=1
	beq	$a1, $t0, .LBB25_85
.LBB25_90:                              #   in Loop: Header=BB25_86 Depth=1
	blt	$t5, $t1, .LBB25_83
# %bb.91:                               #   in Loop: Header=BB25_86 Depth=1
	beqz	$a1, .LBB25_95
# %bb.92:                               #   in Loop: Header=BB25_86 Depth=1
	beq	$a1, $t2, .LBB25_94
# %bb.93:                               #   in Loop: Header=BB25_86 Depth=1
	slli.d	$t1, $a1, 2
	ldx.w	$t2, $t1, $a6
	addi.d	$t2, $t2, 1
	stx.w	$t2, $t1, $a6
.LBB25_94:                              #   in Loop: Header=BB25_86 Depth=1
	ld.w	$t1, $sp, 152
	addi.d	$t1, $t1, 1
	st.w	$t1, $sp, 152
	b	.LBB25_84
.LBB25_95:                              #   in Loop: Header=BB25_86 Depth=1
	blt	$a7, $t4, .LBB25_97
# %bb.96:                               #   in Loop: Header=BB25_86 Depth=1
	ld.w	$t1, $sp, 156
	addi.d	$t1, $t1, 1
	st.w	$t1, $sp, 156
	b	.LBB25_84
.LBB25_97:                              #   in Loop: Header=BB25_86 Depth=1
	ld.w	$t1, $sp, 160
	addi.d	$t1, $t1, 1
	st.w	$t1, $sp, 160
	b	.LBB25_84
.LBB25_98:
	ori	$a0, $s0, 720
	add.d	$a1, $s8, $a0
	ori	$fp, $s0, 796
	add.d	$a2, $s8, $fp
	addi.d	$a0, $sp, 88
	ori	$a3, $zero, 19
	ori	$a4, $zero, 7
	pcaddu18i	$ra, %call36(Huffman_Generate)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 4
	st.w	$a0, $s8, 1368
	ori	$a0, $s0, 812
	ldx.bu	$a1, $s8, $a0
	ld.bu	$a2, $s2, 15
	ld.bu	$a3, $s2, 16
	ldx.bu	$a5, $s8, $fp
	ori	$a0, $s0, 804
	ldx.bu	$a4, $s8, $a0
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	st.b	$a1, $s8, 1338
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	st.b	$a2, $s8, 1339
	st.d	$a3, $sp, 64                    # 8-byte Folded Spill
	st.b	$a3, $s8, 1340
	st.d	$a5, $sp, 32                    # 8-byte Folded Spill
	st.b	$a5, $s8, 1341
	beqz	$a4, .LBB25_100
# %bb.99:
	ori	$a0, $zero, 5
	st.w	$a0, $s8, 1368
.LBB25_100:
	ld.bu	$a2, $s2, 5
	st.b	$a4, $s8, 1342
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	beqz	$a2, .LBB25_102
# %bb.101:
	ori	$a0, $zero, 6
	st.w	$a0, $s8, 1368
.LBB25_102:
	ld.bu	$a3, $s2, 7
	st.b	$a2, $s8, 1343
	beqz	$a3, .LBB25_104
# %bb.103:
	ori	$a0, $zero, 7
	st.w	$a0, $s8, 1368
.LBB25_104:
	ld.bu	$a6, $s2, 4
	st.b	$a3, $s8, 1344
	beqz	$a6, .LBB25_106
# %bb.105:
	ori	$a0, $zero, 8
	st.w	$a0, $s8, 1368
.LBB25_106:
	ld.bu	$a5, $s2, 8
	st.b	$a6, $s8, 1345
	beqz	$a5, .LBB25_108
# %bb.107:
	ori	$a0, $zero, 9
	st.w	$a0, $s8, 1368
.LBB25_108:
	ld.bu	$s3, $s2, 3
	st.b	$a5, $s8, 1346
	beqz	$s3, .LBB25_110
# %bb.109:
	ori	$a0, $zero, 10
	st.w	$a0, $s8, 1368
.LBB25_110:
	ld.bu	$a7, $s2, 9
	st.b	$s3, $s8, 1347
	beqz	$a7, .LBB25_112
# %bb.111:
	ori	$a0, $zero, 11
	st.w	$a0, $s8, 1368
.LBB25_112:
	ori	$a0, $s0, 800
	ldx.bu	$s4, $s8, $a0
	st.b	$a7, $s8, 1348
	beqz	$s4, .LBB25_114
# %bb.113:
	ori	$a0, $zero, 12
	st.w	$a0, $s8, 1368
.LBB25_114:
	ori	$a0, $s0, 808
	ldx.bu	$s7, $s8, $a0
	st.b	$s4, $s8, 1349
	beqz	$s7, .LBB25_116
# %bb.115:
	ori	$a0, $zero, 13
	st.w	$a0, $s8, 1368
.LBB25_116:
	ld.bu	$s1, $s2, 1
	st.b	$s7, $s8, 1350
	beqz	$s1, .LBB25_118
# %bb.117:
	ori	$a0, $zero, 14
	st.w	$a0, $s8, 1368
.LBB25_118:
	ld.bu	$s5, $s2, 11
	st.b	$s1, $s8, 1351
	beqz	$s5, .LBB25_120
# %bb.119:
	ori	$a0, $zero, 15
	st.w	$a0, $s8, 1368
.LBB25_120:
	ld.bu	$s0, $s2, 0
	st.b	$s5, $s8, 1352
	beqz	$s0, .LBB25_122
# %bb.121:
	ori	$a0, $zero, 16
	st.w	$a0, $s8, 1368
.LBB25_122:
	ld.bu	$s6, $s2, 12
	st.b	$s0, $s8, 1353
	beqz	$s6, .LBB25_124
# %bb.123:
	ori	$a0, $zero, 17
	st.w	$a0, $s8, 1368
.LBB25_124:
	ori	$a0, $zero, 2700
	ldx.bu	$fp, $a1, $a0
	st.b	$s6, $s8, 1354
	beqz	$fp, .LBB25_126
# %bb.125:
	ori	$a0, $zero, 18
	st.w	$a0, $s8, 1368
.LBB25_126:
	st.d	$a7, $sp, 8                     # 8-byte Folded Spill
	st.d	$a6, $sp, 16                    # 8-byte Folded Spill
	st.d	$a5, $sp, 24                    # 8-byte Folded Spill
	st.d	$a3, $sp, 40                    # 8-byte Folded Spill
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	st.d	$a4, $sp, 56                    # 8-byte Folded Spill
	ld.bu	$s2, $s2, 13
	st.b	$fp, $s8, 1355
	beqz	$s2, .LBB25_128
# %bb.127:
	ori	$a0, $zero, 19
	st.w	$a0, $s8, 1368
.LBB25_128:                             # %.lr.ph.i.i
	st.b	$s2, $s8, 1356
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZNK9NCompress8NDeflate8NEncoder6CCoder15GetLzBlockPriceEv)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 88
	ld.w	$a2, $sp, 156
	ld.w	$a3, $sp, 152
	ld.w	$a4, $sp, 160
	ld.w	$a5, $sp, 92
	alsl.w	$a6, $a2, $a2, 1
	alsl.d	$a6, $a3, $a6, 1
	slli.d	$a7, $a4, 3
	sub.d	$a7, $a7, $a4
	add.d	$a6, $a7, $a6
	ld.d	$a7, $sp, 32                    # 8-byte Folded Reload
	mul.d	$a1, $a1, $a7
	ld.w	$a7, $sp, 96
	mul.d	$a5, $a5, $fp
	add.d	$a1, $a5, $a1
	ld.w	$a5, $sp, 100
	mul.d	$a7, $a7, $s0
	add.d	$a1, $a7, $a1
	ld.w	$a7, $sp, 104
	mul.d	$a5, $a5, $s1
	add.d	$a1, $a5, $a1
	ld.w	$a5, $sp, 108
	mul.d	$a7, $a7, $s4
	add.d	$a1, $a7, $a1
	ld.w	$a7, $sp, 112
	mul.d	$a5, $a5, $s3
	add.d	$a1, $a5, $a1
	ld.w	$a5, $sp, 116
	ld.d	$t0, $sp, 16                    # 8-byte Folded Reload
	mul.d	$a7, $a7, $t0
	add.d	$a1, $a7, $a1
	ld.w	$a7, $sp, 120
	ld.d	$t0, $sp, 48                    # 8-byte Folded Reload
	mul.d	$a5, $a5, $t0
	add.d	$a1, $a5, $a1
	ld.w	$a5, $sp, 124
	ld.d	$t0, $sp, 56                    # 8-byte Folded Reload
	mul.d	$a7, $a7, $t0
	add.d	$a1, $a7, $a1
	ld.w	$a7, $sp, 128
	ld.d	$t0, $sp, 40                    # 8-byte Folded Reload
	mul.d	$a5, $a5, $t0
	add.d	$a1, $a5, $a1
	ld.w	$a5, $sp, 132
	ld.d	$t0, $sp, 24                    # 8-byte Folded Reload
	mul.d	$a7, $a7, $t0
	add.d	$a1, $a7, $a1
	ld.w	$a7, $sp, 136
	ld.d	$t0, $sp, 8                     # 8-byte Folded Reload
	mul.d	$a5, $a5, $t0
	add.d	$a1, $a5, $a1
	ld.w	$a5, $sp, 140
	mul.d	$a7, $a7, $s7
	add.d	$a1, $a7, $a1
	ld.w	$a7, $sp, 144
	mul.d	$a5, $a5, $s5
	ld.w	$t0, $sp, 148
	add.d	$a1, $a5, $a1
	mul.d	$a5, $a7, $s6
	add.d	$a1, $a5, $a1
	mul.d	$a5, $t0, $s2
	add.d	$a1, $a5, $a1
	ld.d	$a5, $sp, 80                    # 8-byte Folded Reload
	mul.d	$a3, $a3, $a5
	add.d	$a1, $a3, $a1
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	mul.d	$a2, $a2, $a3
	add.d	$a1, $a2, $a1
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	mul.d	$a2, $a4, $a2
	ld.w	$a3, $s8, 1368
	add.d	$a1, $a2, $a1
	add.d	$a0, $a0, $a1
	add.d	$a0, $a0, $a6
	alsl.d	$a1, $a3, $a3, 1
	add.d	$a0, $a0, $a1
	addi.w	$a0, $a0, 17
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
.Lfunc_end25:
	.size	_ZN9NCompress8NDeflate8NEncoder6CCoder11TryDynBlockEij, .Lfunc_end25-_ZN9NCompress8NDeflate8NEncoder6CCoder11TryDynBlockEij
	.cfi_endproc
                                        # -- End function
	.globl	_ZN9NCompress8NDeflate8NEncoder6CCoder13TryFixedBlockEi # -- Begin function _ZN9NCompress8NDeflate8NEncoder6CCoder13TryFixedBlockEi
	.p2align	5
	.type	_ZN9NCompress8NDeflate8NEncoder6CCoder13TryFixedBlockEi,@function
_ZN9NCompress8NDeflate8NEncoder6CCoder13TryFixedBlockEi: # @_ZN9NCompress8NDeflate8NEncoder6CCoder13TryFixedBlockEi
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
	move	$fp, $a0
	ldptr.d	$a0, $a0, 4920
	ori	$a2, $zero, 332
	mul.d	$a1, $a1, $a2
	add.d	$a0, $a0, $a1
	ld.w	$a1, $a0, 324
	ld.w	$a0, $a0, 328
	stptr.w	$a1, $fp, 4912
	st.w	$a0, $fp, 1288
	addi.d	$s0, $fp, 1936
	ori	$a1, $zero, 8
	ori	$a2, $zero, 144
	move	$a0, $s0
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 2047
	addi.d	$a0, $a0, 33
	ori	$a1, $zero, 9
	ori	$a2, $zero, 112
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 28784
	ori	$a0, $a0, 1799
	bstrins.d	$a0, $a0, 58, 32
	stptr.d	$a0, $fp, 2192
	stptr.d	$a0, $fp, 2200
	stptr.d	$a0, $fp, 2208
	lu12i.w	$a0, 32896
	ori	$a0, $a0, 2056
	bstrins.d	$a0, $a0, 59, 32
	stptr.d	$a0, $fp, 2216
	lu12i.w	$a0, 20560
	ori	$a0, $a0, 1285
	bstrins.d	$a0, $a0, 58, 32
	stptr.d	$a0, $fp, 2224
	stptr.d	$a0, $fp, 2232
	stptr.d	$a0, $fp, 2240
	stptr.d	$a0, $fp, 2248
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN9NCompress8NDeflate8NEncoder6CCoder9SetPricesERKNS0_7CLevelsE)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9NCompress8NDeflate8NEncoder6CCoder8TryBlockEv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNK9NCompress8NDeflate8NEncoder6CCoder15GetLzBlockPriceEv)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 3
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end26:
	.size	_ZN9NCompress8NDeflate8NEncoder6CCoder13TryFixedBlockEi, .Lfunc_end26-_ZN9NCompress8NDeflate8NEncoder6CCoder13TryFixedBlockEi
	.cfi_endproc
                                        # -- End function
	.globl	_ZN9NCompress8NDeflate8NEncoder6CCoder13GetBlockPriceEii # -- Begin function _ZN9NCompress8NDeflate8NEncoder6CCoder13GetBlockPriceEii
	.p2align	5
	.type	_ZN9NCompress8NDeflate8NEncoder6CCoder13GetBlockPriceEii,@function
_ZN9NCompress8NDeflate8NEncoder6CCoder13GetBlockPriceEii: # @_ZN9NCompress8NDeflate8NEncoder6CCoder13GetBlockPriceEii
	.cfi_startproc
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
	move	$s1, $a2
	move	$s2, $a1
	move	$fp, $a0
	ldptr.d	$a0, $a0, 4920
	ori	$a1, $zero, 332
	ld.w	$a2, $fp, 1292
	mul.d	$a1, $s2, $a1
	add.d	$s0, $a0, $a1
	st.b	$zero, $s0, 322
	move	$a0, $fp
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZN9NCompress8NDeflate8NEncoder6CCoder11TryDynBlockEij)
	jirl	$ra, $ra, 0
	lu12i.w	$a1, 1
	ori	$s6, $a1, 816
	ldx.w	$a1, $fp, $s6
	ld.w	$s5, $fp, 1372
	ld.w	$s7, $fp, 1288
	ld.bu	$a2, $fp, 1300
	ld.w	$s8, $fp, 1380
	move	$s3, $a0
	st.w	$a1, $s0, 324
	beqz	$a2, .LBB27_3
# %bb.1:
	ori	$a0, $zero, 256
	bltu	$a0, $s5, .LBB27_3
# %bb.2:
	ldptr.d	$a0, $fp, 4920
	ori	$a1, $zero, 332
	mul.d	$a1, $s2, $a1
	add.d	$a0, $a0, $a1
	ld.w	$a1, $a0, 324
	ld.w	$a0, $a0, 328
	stptr.w	$a1, $fp, 4912
	st.w	$a0, $fp, 1288
	addi.d	$s4, $fp, 1936
	ori	$a1, $zero, 8
	ori	$a2, $zero, 144
	move	$a0, $s4
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 2047
	addi.d	$a0, $a0, 33
	ori	$a1, $zero, 9
	ori	$a2, $zero, 112
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 28784
	ori	$a0, $a0, 1799
	bstrins.d	$a0, $a0, 58, 32
	stptr.d	$a0, $fp, 2192
	stptr.d	$a0, $fp, 2200
	stptr.d	$a0, $fp, 2208
	lu12i.w	$a0, 32896
	ori	$a0, $a0, 2056
	bstrins.d	$a0, $a0, 59, 32
	stptr.d	$a0, $fp, 2216
	lu12i.w	$a0, 20560
	ori	$a0, $a0, 1285
	bstrins.d	$a0, $a0, 58, 32
	stptr.d	$a0, $fp, 2224
	stptr.d	$a0, $fp, 2232
	stptr.d	$a0, $fp, 2240
	stptr.d	$a0, $fp, 2248
	move	$a0, $fp
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZN9NCompress8NDeflate8NEncoder6CCoder9SetPricesERKNS0_7CLevelsE)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9NCompress8NDeflate8NEncoder6CCoder8TryBlockEv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNK9NCompress8NDeflate8NEncoder6CCoder15GetLzBlockPriceEv)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 3
	sltu	$a2, $a0, $s3
	st.b	$a2, $s0, 322
	ldx.w	$a1, $fp, $s6
	masknez	$a3, $s3, $a2
	maskeqz	$a0, $a0, $a2
	or	$s3, $a0, $a3
.LBB27_3:
	move	$a0, $zero
	lu12i.w	$a2, 15
	ori	$a2, $a2, 4095
	.p2align	4, , 16
.LBB27_4:                               # =>This Inner Loop Header: Depth=1
	sltu	$a3, $a1, $a2
	masknez	$a4, $a2, $a3
	maskeqz	$a3, $a1, $a3
	or	$a3, $a3, $a4
	alsl.d	$a0, $a3, $a0, 3
	sub.w	$a1, $a1, $a3
	addi.w	$a0, $a0, 40
	bnez	$a1, .LBB27_4
# %bb.5:                                # %_ZN9NCompress8NDeflate8NEncoderL13GetStorePriceEji.exit
	sltu	$a1, $s3, $a0
	xori	$a1, $a1, 1
	st.b	$a1, $s0, 321
	sltu	$a1, $a0, $s3
	masknez	$a2, $s3, $a1
	maskeqz	$a0, $a0, $a1
	or	$s3, $a0, $a2
	ori	$a0, $zero, 2
	st.b	$zero, $s0, 320
	blt	$s1, $a0, .LBB27_11
# %bb.6:                                # %_ZN9NCompress8NDeflate8NEncoderL13GetStorePriceEji.exit
	ori	$a0, $zero, 128
	bltu	$s5, $a0, .LBB27_11
# %bb.7:
	ldptr.d	$a0, $fp, 4920
	slli.w	$s4, $s2, 1
	ori	$a1, $zero, 332
	mul.d	$a1, $s4, $a1
	add.d	$s2, $a0, $a1
	ori	$a2, $zero, 320
	move	$a0, $s2
	move	$a1, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $s0, 324
	ld.w	$a1, $s0, 328
	srli.d	$a0, $a0, 1
	st.w	$a0, $s2, 324
	st.w	$a1, $s2, 328
	addi.w	$s1, $s1, -1
	move	$a0, $fp
	move	$a1, $s4
	move	$a2, $s1
	pcaddu18i	$ra, %call36(_ZN9NCompress8NDeflate8NEncoder6CCoder13GetBlockPriceEii)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 324
	ori	$a2, $zero, 64
	bltu	$a1, $a2, .LBB27_11
# %bb.8:
	move	$s5, $a0
	st.d	$s8, $sp, 16                    # 8-byte Folded Spill
	move	$s8, $s7
	ld.w	$a0, $s0, 324
	sub.w	$s7, $a0, $a1
	bltu	$s7, $a2, .LBB27_10
# %bb.9:
	ldptr.d	$a0, $fp, 4920
	ori	$s4, $s4, 1
	ori	$a1, $zero, 332
	mul.d	$a1, $s4, $a1
	add.d	$s6, $a0, $a1
	ori	$a2, $zero, 320
	move	$a0, $s6
	move	$a1, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	st.w	$s7, $s6, 324
	ld.w	$a0, $fp, 1288
	ld.w	$a1, $s2, 324
	ld.w	$a2, $fp, 1380
	st.w	$a0, $s6, 328
	sub.d	$a0, $a2, $a1
	st.w	$a0, $fp, 1380
	move	$a0, $fp
	move	$a1, $s4
	move	$a2, $s1
	pcaddu18i	$ra, %call36(_ZN9NCompress8NDeflate8NEncoder6CCoder13GetBlockPriceEii)
	jirl	$ra, $ra, 0
	add.w	$a0, $a0, $s5
	sltu	$a1, $a0, $s3
	st.b	$a1, $s0, 320
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s3, $a1
	or	$s3, $a0, $a1
.LBB27_10:
	move	$s7, $s8
	ld.d	$s8, $sp, 16                    # 8-byte Folded Reload
.LBB27_11:
	st.w	$s8, $fp, 1380
	st.w	$s7, $fp, 1288
	move	$a0, $s3
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
.Lfunc_end27:
	.size	_ZN9NCompress8NDeflate8NEncoder6CCoder13GetBlockPriceEii, .Lfunc_end27-_ZN9NCompress8NDeflate8NEncoder6CCoder13GetBlockPriceEii
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN9NCompress8NDeflate8NEncoder6CCoder9CodeBlockEib
.LCPI28_0:
	.half	3                               # 0x3
	.half	9                               # 0x9
	.half	2                               # 0x2
	.half	11                              # 0xb
	.half	1                               # 0x1
	.half	13                              # 0xd
	.half	0                               # 0x0
	.half	15                              # 0xf
	.text
	.globl	_ZN9NCompress8NDeflate8NEncoder6CCoder9CodeBlockEib
	.p2align	5
	.type	_ZN9NCompress8NDeflate8NEncoder6CCoder9CodeBlockEib,@function
_ZN9NCompress8NDeflate8NEncoder6CCoder9CodeBlockEib: # @_ZN9NCompress8NDeflate8NEncoder6CCoder9CodeBlockEib
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
	move	$fp, $a0
	ldptr.d	$a0, $a0, 4920
	move	$s0, $a1
	ori	$s2, $zero, 332
	mul.d	$a1, $a1, $s2
	add.d	$s3, $a0, $a1
	ld.bu	$a0, $s3, 320
	move	$s1, $a2
	beqz	$a0, .LBB28_2
	.p2align	4, , 16
.LBB28_1:                               # %tailrecurse
                                        # =>This Inner Loop Header: Depth=1
	slli.w	$s0, $s0, 1
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZN9NCompress8NDeflate8NEncoder6CCoder9CodeBlockEib)
	jirl	$ra, $ra, 0
	ldptr.d	$a0, $fp, 4920
	addi.w	$s0, $s0, 1
	mul.d	$a1, $s0, $s2
	add.d	$s3, $a0, $a1
	ld.bu	$a0, $s3, 320
	bnez	$a0, .LBB28_1
.LBB28_2:                               # %tailrecurse._crit_edge
	ld.bu	$a0, $s3, 321
	beqz	$a0, .LBB28_4
# %bb.3:
	ld.w	$a1, $s3, 324
	ld.w	$a2, $fp, 1380
	move	$a0, $fp
	move	$a3, $s1
	pcaddu18i	$ra, %call36(_ZN9NCompress8NDeflate8NEncoder6CCoder15WriteStoreBlockEjjb)
	jirl	$ra, $ra, 0
	b	.LBB28_16
.LBB28_4:
	lu12i.w	$s4, 1
	ori	$a2, $zero, 1
	ori	$s2, $zero, 1
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZN9NCompress8NDeflate8NEncoder6CCoder9WriteBitsEji)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s3, 322
	beqz	$a0, .LBB28_8
# %bb.5:                                # %vector.ph
	ori	$a1, $zero, 1
	ori	$a2, $zero, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9NCompress8NDeflate8NEncoder6CCoder9WriteBitsEji)
	jirl	$ra, $ra, 0
	ldptr.d	$a0, $fp, 4920
	ori	$a1, $zero, 332
	mul.d	$a1, $s0, $a1
	add.d	$a0, $a0, $a1
	ld.w	$a1, $a0, 324
	ld.w	$a0, $a0, 328
	stptr.w	$a1, $fp, 4912
	st.w	$a0, $fp, 1288
	addi.d	$s0, $fp, 1936
	ori	$a1, $zero, 8
	ori	$a2, $zero, 144
	move	$a0, $s0
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	addi.d	$s5, $fp, 2047
	addi.d	$a0, $s5, 33
	ori	$a1, $zero, 9
	ori	$a2, $zero, 112
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 28784
	ori	$a0, $a0, 1799
	bstrins.d	$a0, $a0, 58, 32
	stptr.d	$a0, $fp, 2192
	stptr.d	$a0, $fp, 2200
	stptr.d	$a0, $fp, 2208
	lu12i.w	$a0, 32896
	ori	$a0, $a0, 2056
	bstrins.d	$a0, $a0, 59, 32
	stptr.d	$a0, $fp, 2216
	addi.d	$s1, $s5, 177
	lu12i.w	$a0, 20560
	ori	$a0, $a0, 1285
	bstrins.d	$a0, $a0, 58, 32
	stptr.d	$a0, $fp, 2224
	stptr.d	$a0, $fp, 2232
	stptr.d	$a0, $fp, 2240
	stptr.d	$a0, $fp, 2248
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN9NCompress8NDeflate8NEncoder6CCoder9SetPricesERKNS0_7CLevelsE)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9NCompress8NDeflate8NEncoder6CCoder8TryBlockEv)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	addi.d	$a0, $s5, 209
	addi.d	$a2, $fp, 1940
	vrepli.b	$vr0, 0
	vrepli.w	$vr1, 9
	vrepli.w	$vr2, 1
	ori	$a3, $zero, 1152
	.p2align	4, , 16
.LBB28_6:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a2, -4
	ld.w	$a5, $a2, 0
	vinsgr2vr.d	$vr3, $a4, 0
	vinsgr2vr.w	$vr4, $a5, 0
	vilvl.b	$vr3, $vr0, $vr3
	vilvl.h	$vr3, $vr0, $vr3
	vilvl.b	$vr4, $vr0, $vr4
	vilvl.h	$vr4, $vr0, $vr4
	vsub.w	$vr3, $vr1, $vr3
	vsub.w	$vr4, $vr1, $vr4
	vsll.w	$vr3, $vr2, $vr3
	vsll.w	$vr4, $vr2, $vr4
	add.d	$a4, $a0, $a1
	vstx	$vr3, $a0, $a1
	vst	$vr4, $a4, 16
	addi.d	$a1, $a1, 32
	addi.d	$a2, $a2, 8
	bne	$a1, $a3, .LBB28_6
# %bb.7:                                # %.preheader
	ldptr.d	$a1, $fp, 2224
	ori	$a2, $zero, 3408
	add.d	$s2, $fp, $a2
	vinsgr2vr.d	$vr3, $a1, 0
	vilvl.b	$vr3, $vr0, $vr3
	vilvl.h	$vr3, $vr0, $vr3
	ori	$a1, $zero, 2228
	ldx.w	$a1, $fp, $a1
	vsub.w	$vr3, $vr1, $vr3
	vsll.w	$vr3, $vr2, $vr3
	vstx	$vr3, $fp, $a2
	vinsgr2vr.w	$vr3, $a1, 0
	vilvl.b	$vr3, $vr0, $vr3
	vilvl.h	$vr3, $vr0, $vr3
	vsub.w	$vr3, $vr1, $vr3
	ldptr.d	$a1, $fp, 2232
	vsll.w	$vr3, $vr2, $vr3
	ori	$a2, $zero, 3424
	vstx	$vr3, $fp, $a2
	vinsgr2vr.d	$vr3, $a1, 0
	vilvl.b	$vr3, $vr0, $vr3
	vilvl.h	$vr3, $vr0, $vr3
	vsub.w	$vr3, $vr1, $vr3
	ori	$a1, $zero, 2236
	ldx.w	$a1, $fp, $a1
	vsll.w	$vr3, $vr2, $vr3
	ori	$a2, $zero, 3440
	vstx	$vr3, $fp, $a2
	vinsgr2vr.w	$vr3, $a1, 0
	vilvl.b	$vr3, $vr0, $vr3
	vilvl.h	$vr3, $vr0, $vr3
	vsub.w	$vr3, $vr1, $vr3
	ldptr.d	$a1, $fp, 2240
	vsll.w	$vr3, $vr2, $vr3
	ori	$a2, $zero, 3456
	vstx	$vr3, $fp, $a2
	vinsgr2vr.d	$vr3, $a1, 0
	vilvl.b	$vr3, $vr0, $vr3
	vilvl.h	$vr3, $vr0, $vr3
	vsub.w	$vr3, $vr1, $vr3
	ori	$a1, $zero, 2244
	ldx.w	$a1, $fp, $a1
	vsll.w	$vr3, $vr2, $vr3
	ori	$a2, $zero, 3472
	vstx	$vr3, $fp, $a2
	vinsgr2vr.w	$vr3, $a1, 0
	vilvl.b	$vr3, $vr0, $vr3
	vilvl.h	$vr3, $vr0, $vr3
	vsub.w	$vr3, $vr1, $vr3
	ldptr.d	$a1, $fp, 2248
	vsll.w	$vr3, $vr2, $vr3
	ori	$a2, $zero, 3488
	vstx	$vr3, $fp, $a2
	vinsgr2vr.d	$vr3, $a1, 0
	vilvl.b	$vr3, $vr0, $vr3
	vilvl.h	$vr3, $vr0, $vr3
	vsub.w	$vr3, $vr1, $vr3
	ori	$a1, $zero, 2252
	ldx.w	$a1, $fp, $a1
	vsll.w	$vr3, $vr2, $vr3
	ori	$a2, $zero, 3504
	vstx	$vr3, $fp, $a2
	vinsgr2vr.w	$vr3, $a1, 0
	vilvl.b	$vr3, $vr0, $vr3
	vilvl.h	$vr0, $vr0, $vr3
	vsub.w	$vr0, $vr1, $vr0
	vsll.w	$vr0, $vr2, $vr0
	ori	$a1, $zero, 3520
	vstx	$vr0, $fp, $a1
	addi.d	$a1, $s5, 1489
	ori	$a3, $zero, 288
	ori	$a4, $zero, 9
	move	$a2, $s0
	pcaddu18i	$ra, %call36(Huffman_Generate)
	jirl	$ra, $ra, 0
	ori	$a0, $s4, 592
	add.d	$a1, $fp, $a0
	ori	$a3, $zero, 32
	ori	$a4, $zero, 9
	move	$a0, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(Huffman_Generate)
	jirl	$ra, $ra, 0
	b	.LBB28_15
.LBB28_8:
	ld.w	$a0, $fp, 1296
	ori	$s1, $s4, 813
	blt	$s2, $a0, .LBB28_10
# %bb.9:
	ld.b	$a0, $fp, 1300
	andi	$a0, $a0, 1
	beqz	$a0, .LBB28_11
.LBB28_10:
	ori	$a2, $zero, 1
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN9NCompress8NDeflate8NEncoder6CCoder11TryDynBlockEij)
	jirl	$ra, $ra, 0
.LBB28_11:
	add.d	$s2, $fp, $s1
	ori	$a1, $zero, 2
	ori	$a2, $zero, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9NCompress8NDeflate8NEncoder6CCoder9WriteBitsEji)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 1360
	addi.w	$a1, $a0, -257
	ori	$a2, $zero, 5
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9NCompress8NDeflate8NEncoder6CCoder9WriteBitsEji)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 1364
	addi.w	$a1, $a0, -1
	ori	$a2, $zero, 5
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9NCompress8NDeflate8NEncoder6CCoder9WriteBitsEji)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 1368
	addi.w	$a1, $a0, -4
	ori	$a2, $zero, 4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9NCompress8NDeflate8NEncoder6CCoder9WriteBitsEji)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 1368
	beqz	$a0, .LBB28_14
# %bb.12:                               # %.lr.ph35
	ori	$s0, $zero, 1338
	.p2align	4, , 16
.LBB28_13:                              # =>This Inner Loop Header: Depth=1
	ldx.bu	$a1, $fp, $s0
	ori	$a2, $zero, 3
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9NCompress8NDeflate8NEncoder6CCoder9WriteBitsEji)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $fp, 1368
	addi.d	$a1, $s0, -1337
	addi.d	$s0, $s0, 1
	bltu	$a1, $a0, .LBB28_13
.LBB28_14:                              # %._crit_edge
	ori	$a1, $s4, 720
	vldx	$vr0, $fp, $a1
	ori	$a0, $s4, 796
	vpickev.h	$vr0, $vr0, $vr0
	vpickve2gr.d	$a2, $vr0, 0
	pcalau12i	$a3, %pc_hi20(.LCPI28_0)
	vld	$vr0, $a3, %pc_lo12(.LCPI28_0)
	bitrev.d	$a2, $a2
	ldx.w	$a3, $fp, $a0
	vinsgr2vr.d	$vr2, $a2, 0
	vrepli.b	$vr1, 0
	vori.b	$vr3, $vr0, 0
	vshuf.h	$vr3, $vr1, $vr2
	vinsgr2vr.w	$vr2, $a3, 0
	vilvl.b	$vr2, $vr1, $vr2
	vilvl.h	$vr4, $vr1, $vr2
	vrepli.w	$vr2, 16
	ori	$a2, $s4, 736
	vldx	$vr5, $fp, $a2
	vsub.w	$vr4, $vr2, $vr4
	vsrl.w	$vr3, $vr3, $vr4
	vstx	$vr3, $fp, $a1
	vpickev.h	$vr3, $vr5, $vr5
	vpickve2gr.d	$a3, $vr3, 0
	ldptr.d	$a4, $fp, 4896
	bitrev.d	$a3, $a3
	vinsgr2vr.d	$vr3, $a3, 0
	vori.b	$vr4, $vr0, 0
	vshuf.h	$vr4, $vr1, $vr3
	vinsgr2vr.d	$vr3, $a4, 0
	vilvl.b	$vr3, $vr1, $vr3
	vilvl.h	$vr3, $vr1, $vr3
	ori	$a3, $s4, 752
	vldx	$vr5, $fp, $a3
	vsub.w	$vr3, $vr2, $vr3
	vsrl.w	$vr3, $vr4, $vr3
	vstx	$vr3, $fp, $a2
	vpickev.h	$vr3, $vr5, $vr5
	vpickve2gr.d	$a2, $vr3, 0
	ori	$a4, $s4, 804
	ldx.w	$a4, $fp, $a4
	bitrev.d	$a2, $a2
	vinsgr2vr.d	$vr3, $a2, 0
	vori.b	$vr4, $vr0, 0
	vshuf.h	$vr4, $vr1, $vr3
	vinsgr2vr.w	$vr3, $a4, 0
	vilvl.b	$vr3, $vr1, $vr3
	vilvl.h	$vr3, $vr1, $vr3
	vsub.w	$vr3, $vr2, $vr3
	ori	$a2, $s4, 768
	vldx	$vr5, $fp, $a2
	vsrl.w	$vr3, $vr4, $vr3
	add.d	$s0, $fp, $a1
	vstx	$vr3, $fp, $a3
	vpickev.h	$vr3, $vr5, $vr5
	vpickve2gr.d	$a1, $vr3, 0
	ldptr.d	$a3, $fp, 4904
	bitrev.d	$a1, $a1
	vinsgr2vr.d	$vr3, $a1, 0
	vshuf.h	$vr0, $vr1, $vr3
	vinsgr2vr.d	$vr3, $a3, 0
	vilvl.b	$vr3, $vr1, $vr3
	vilvl.h	$vr1, $vr1, $vr3
	vsub.w	$vr1, $vr2, $vr1
	vsrl.w	$vr0, $vr0, $vr1
	ori	$a1, $s4, 784
	ldx.h	$a1, $fp, $a1
	vstx	$vr0, $fp, $a2
	ori	$a2, $s4, 812
	ldx.bu	$a2, $fp, $a2
	bitrev.d	$a1, $a1
	srli.d	$a1, $a1, 48
	ori	$a3, $zero, 16
	sub.d	$a2, $a3, $a2
	srl.w	$a1, $a1, $a2
	ori	$a2, $s4, 788
	ldx.h	$a2, $fp, $a2
	stptr.w	$a1, $fp, 4880
	ld.bu	$a1, $s2, 0
	add.d	$s1, $fp, $a0
	bitrev.d	$a0, $a2
	srli.d	$a0, $a0, 48
	sub.d	$a1, $a3, $a1
	ori	$a2, $s4, 792
	ldx.h	$a2, $fp, $a2
	srl.w	$a0, $a0, $a1
	ld.bu	$a1, $s2, 1
	stptr.w	$a0, $fp, 4884
	bitrev.d	$a0, $a2
	srli.d	$a0, $a0, 48
	sub.d	$a1, $a3, $a1
	ld.w	$a2, $fp, 1360
	srl.w	$a0, $a0, $a1
	stptr.w	$a0, $fp, 4888
	addi.d	$a1, $fp, 1936
	move	$a0, $fp
	move	$a3, $s1
	move	$a4, $s0
	pcaddu18i	$ra, %call36(_ZN9NCompress8NDeflate8NEncoder6CCoder14LevelTableCodeEPKhiS4_PKj)
	jirl	$ra, $ra, 0
	ld.w	$a2, $fp, 1364
	addi.d	$a0, $fp, 2047
	addi.d	$a1, $a0, 177
	move	$a0, $fp
	move	$a3, $s1
	move	$a4, $s0
	pcaddu18i	$ra, %call36(_ZN9NCompress8NDeflate8NEncoder6CCoder14LevelTableCodeEPKhiS4_PKj)
	jirl	$ra, $ra, 0
.LBB28_15:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9NCompress8NDeflate8NEncoder6CCoder10WriteBlockEv)
	jirl	$ra, $ra, 0
.LBB28_16:
	ld.w	$a0, $s3, 324
	ld.w	$a1, $fp, 1380
	sub.d	$a0, $a1, $a0
	st.w	$a0, $fp, 1380
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
.Lfunc_end28:
	.size	_ZN9NCompress8NDeflate8NEncoder6CCoder9CodeBlockEib, .Lfunc_end28-_ZN9NCompress8NDeflate8NEncoder6CCoder9CodeBlockEib
	.cfi_endproc
                                        # -- End function
	.globl	_ZN9NCompress8NDeflate8NEncoder4ReadEPvS2_Pm # -- Begin function _ZN9NCompress8NDeflate8NEncoder4ReadEPvS2_Pm
	.p2align	5
	.type	_ZN9NCompress8NDeflate8NEncoder4ReadEPvS2_Pm,@function
_ZN9NCompress8NDeflate8NEncoder4ReadEPvS2_Pm: # @_ZN9NCompress8NDeflate8NEncoder4ReadEPvS2_Pm
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a2
	ld.d	$a2, $a2, 0
	ld.d	$a0, $a0, 8
	srli.d	$a3, $a2, 31
	sltui	$a3, $a3, 1
	lu12i.w	$a4, -524288
	ld.d	$a5, $a0, 0
	lu32i.d	$a4, 0
	masknez	$a4, $a4, $a3
	maskeqz	$a2, $a2, $a3
	ld.d	$a5, $a5, 40
	or	$a2, $a2, $a4
	st.w	$a2, $sp, 12
	addi.w	$a2, $a2, 0
	addi.d	$a3, $sp, 12
	jirl	$ra, $a5, 0
	ld.wu	$a1, $sp, 12
	st.d	$a1, $fp, 0
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end29:
	.size	_ZN9NCompress8NDeflate8NEncoder4ReadEPvS2_Pm, .Lfunc_end29-_ZN9NCompress8NDeflate8NEncoder4ReadEPvS2_Pm
	.cfi_endproc
                                        # -- End function
	.globl	_ZN9NCompress8NDeflate8NEncoder6CCoder8CodeRealEP19ISequentialInStreamP20ISequentialOutStreamPKyS8_P21ICompressProgressInfo # -- Begin function _ZN9NCompress8NDeflate8NEncoder6CCoder8CodeRealEP19ISequentialInStreamP20ISequentialOutStreamPKyS8_P21ICompressProgressInfo
	.p2align	5
	.type	_ZN9NCompress8NDeflate8NEncoder6CCoder8CodeRealEP19ISequentialInStreamP20ISequentialOutStreamPKyS8_P21ICompressProgressInfo,@function
_ZN9NCompress8NDeflate8NEncoder6CCoder8CodeRealEP19ISequentialInStreamP20ISequentialOutStreamPKyS8_P21ICompressProgressInfo: # @_ZN9NCompress8NDeflate8NEncoder6CCoder8CodeRealEP19ISequentialInStreamP20ISequentialOutStreamPKyS8_P21ICompressProgressInfo
.Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception4
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	move	$fp, $a0
	ld.w	$a0, $a0, 1292
	ld.w	$a3, $fp, 1296
	move	$s1, $a5
	move	$s2, $a2
	move	$s0, $a1
	addi.d	$a0, $a0, -1
	sltu	$a0, $zero, $a0
	addi.d	$a1, $a3, -1
	sltu	$a1, $zero, $a1
	or	$a0, $a0, $a1
	st.b	$a0, $fp, 1300
	st.b	$a0, $fp, 1301
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9NCompress8NDeflate8NEncoder6CCoder6CreateEv)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB30_28
# %bb.1:
	ld.w	$a0, $fp, 1296
	slli.d	$a0, $a0, 12
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3072
	add.d	$a0, $a0, $a1
	st.w	$a0, $fp, 1304
	st.d	$zero, $sp, 32
	beqz	$s0, .LBB30_3
# %bb.2:
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 8
	move	$a0, $s0
	jirl	$ra, $a1, 0
.LBB30_3:
	ld.d	$a0, $fp, 1240
	addi.d	$s3, $fp, 1232
	beqz	$a0, .LBB30_5
# %bb.4:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
	jirl	$ra, $a1, 0
.LBB30_5:                               # %_ZN9CMyComPtrI19ISequentialInStreamEaSEPS0_.exit
	st.d	$s0, $fp, 1240
	pcalau12i	$a0, %pc_hi20(_ZN9NCompress8NDeflate8NEncoder4ReadEPvS2_Pm)
	addi.d	$a0, $a0, %pc_lo12(_ZN9NCompress8NDeflate8NEncoder4ReadEPvS2_Pm)
	st.d	$a0, $fp, 1232
	st.d	$s3, $fp, 72
	move	$a0, $fp
	pcaddu18i	$ra, %call36(MatchFinder_Init)
	jirl	$ra, $ra, 0
	addi.d	$s0, $fp, 1168
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZN10COutBuffer9SetStreamEP20ISequentialOutStream)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN10COutBuffer4InitEv)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 8
	st.w	$a0, $fp, 1224
	ldptr.d	$s2, $fp, 4920
	st.b	$zero, $fp, 1228
	st.d	$fp, $sp, 24
	st.d	$zero, $fp, 1384
	addi.d	$a0, $s2, 332
	st.w	$zero, $s2, 660
	ori	$a1, $zero, 8
	ori	$a2, $zero, 256
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 13
	st.b	$a0, $s2, 588
	lu12i.w	$a0, 20560
	ori	$a0, $a0, 1285
	bstrins.d	$a0, $a0, 58, 32
	st.d	$a0, $s2, 589
	st.d	$a0, $s2, 597
	st.d	$a0, $s2, 605
	st.d	$a0, $s2, 613
	st.d	$a0, $s2, 621
	st.d	$a0, $s2, 629
	st.d	$a0, $s2, 637
	st.d	$a0, $s2, 644
	st.w	$zero, $fp, 1380
	beqz	$s1, .LBB30_13
# %bb.6:
	lu12i.w	$a0, 14
	ori	$s3, $a0, 3579
	ori	$s4, $zero, 15
	.p2align	4, , 16
.LBB30_7:                               # %_ZN9CMyComPtrI19ISequentialInStreamEaSEPS0_.exit.split
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $fp, 1296
	st.w	$s3, $s2, 656
	st.b	$zero, $fp, 1376
.Ltmp49:                                # EH_LABEL
	ori	$a1, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9NCompress8NDeflate8NEncoder6CCoder13GetBlockPriceEii)
	jirl	$ra, $ra, 0
.Ltmp50:                                # EH_LABEL
# %bb.8:                                #   in Loop: Header=BB30_7 Depth=1
	ld.w	$a0, $fp, 16
	ld.w	$a1, $fp, 8
	xor	$a0, $a0, $a1
	sltui	$a2, $a0, 1
.Ltmp51:                                # EH_LABEL
	ori	$a1, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9NCompress8NDeflate8NEncoder6CCoder9CodeBlockEib)
	jirl	$ra, $ra, 0
.Ltmp52:                                # EH_LABEL
# %bb.9:                                #   in Loop: Header=BB30_7 Depth=1
	ldptr.d	$a0, $fp, 4920
	ld.wu	$a0, $a0, 656
	ld.d	$a1, $sp, 32
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 32
.Ltmp54:                                # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNK10COutBuffer16GetProcessedSizeEv)
	jirl	$ra, $ra, 0
.Ltmp55:                                # EH_LABEL
# %bb.10:                               #   in Loop: Header=BB30_7 Depth=1
	ld.w	$a1, $fp, 1224
	ld.d	$a2, $s1, 0
	sub.d	$a1, $s4, $a1
	ld.d	$a3, $a2, 40
	bstrpick.d	$a1, $a1, 31, 3
	add.d	$a0, $a0, $a1
	st.d	$a0, $sp, 16
.Ltmp57:                                # EH_LABEL
	addi.d	$a1, $sp, 32
	addi.d	$a2, $sp, 16
	move	$a0, $s1
	jirl	$ra, $a3, 0
.Ltmp58:                                # EH_LABEL
# %bb.11:                               #   in Loop: Header=BB30_7 Depth=1
	bnez	$a0, .LBB30_22
# %bb.12:                               #   in Loop: Header=BB30_7 Depth=1
	ld.w	$a0, $fp, 16
	ld.w	$a1, $fp, 8
	bne	$a0, $a1, .LBB30_7
	b	.LBB30_17
.LBB30_13:                              # %_ZN9CMyComPtrI19ISequentialInStreamEaSEPS0_.exit.split.us.preheader
	move	$s1, $zero
	lu12i.w	$a0, 14
	ori	$s3, $a0, 3579
	.p2align	4, , 16
.LBB30_14:                              # %_ZN9CMyComPtrI19ISequentialInStreamEaSEPS0_.exit.split.us
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $fp, 1296
	st.w	$s3, $s2, 656
	st.b	$zero, $fp, 1376
.Ltmp60:                                # EH_LABEL
	ori	$a1, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9NCompress8NDeflate8NEncoder6CCoder13GetBlockPriceEii)
	jirl	$ra, $ra, 0
.Ltmp61:                                # EH_LABEL
# %bb.15:                               #   in Loop: Header=BB30_14 Depth=1
	ld.w	$a0, $fp, 16
	ld.w	$a1, $fp, 8
	xor	$a0, $a0, $a1
	sltui	$a2, $a0, 1
.Ltmp62:                                # EH_LABEL
	ori	$a1, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9NCompress8NDeflate8NEncoder6CCoder9CodeBlockEib)
	jirl	$ra, $ra, 0
.Ltmp63:                                # EH_LABEL
# %bb.16:                               #   in Loop: Header=BB30_14 Depth=1
	ldptr.d	$a0, $fp, 4920
	ld.wu	$a0, $a0, 656
	ld.w	$a1, $fp, 16
	ld.w	$a2, $fp, 8
	add.d	$s1, $s1, $a0
	st.d	$s1, $sp, 32
	bne	$a1, $a2, .LBB30_14
.LBB30_17:                              # %.split.us
	ld.w	$a0, $fp, 136
	bnez	$a0, .LBB30_22
# %bb.18:
	ld.w	$a0, $fp, 1224
	ori	$a1, $zero, 7
	bltu	$a1, $a0, .LBB30_21
# %bb.19:
	ld.wu	$a0, $fp, 1176
	ld.b	$a1, $fp, 1228
	ld.d	$a2, $fp, 1168
	addi.d	$a3, $a0, 1
	st.w	$a3, $fp, 1176
	stx.b	$a1, $a2, $a0
	ld.w	$a0, $fp, 1176
	ld.w	$a1, $fp, 1180
	bne	$a0, $a1, .LBB30_21
# %bb.20:
.Ltmp65:                                # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN10COutBuffer14FlushWithCheckEv)
	jirl	$ra, $ra, 0
.Ltmp66:                                # EH_LABEL
.LBB30_21:                              # %_ZN12CBitlEncoder9FlushByteEv.exit.i
	ori	$a0, $zero, 8
	st.w	$a0, $fp, 1224
	st.b	$zero, $fp, 1228
.Ltmp67:                                # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN10COutBuffer5FlushEv)
	jirl	$ra, $ra, 0
.Ltmp68:                                # EH_LABEL
.LBB30_22:                              # %_ZN12CBitlEncoder5FlushEv.exit
	ld.d	$a1, $fp, 1240
	beqz	$a1, .LBB30_25
# %bb.23:
	move	$s0, $a0
	ld.d	$a0, $a1, 0
	ld.d	$a2, $a0, 16
.Ltmp70:                                # EH_LABEL
	move	$a0, $a1
	jirl	$ra, $a2, 0
.Ltmp71:                                # EH_LABEL
# %bb.24:                               # %.noexc.i
	st.d	$zero, $fp, 1240
	move	$a0, $s0
.LBB30_25:                              # %_ZN9CMyComPtrI19ISequentialInStreamE7ReleaseEv.exit.i.i
	ld.d	$a1, $fp, 1192
	beqz	$a1, .LBB30_28
# %bb.26:
	move	$s0, $a0
	ld.d	$a0, $a1, 0
	ld.d	$a2, $a0, 16
.Ltmp72:                                # EH_LABEL
	move	$a0, $a1
	jirl	$ra, $a2, 0
.Ltmp73:                                # EH_LABEL
# %bb.27:                               # %.noexc1.i
	st.d	$zero, $fp, 1192
	move	$a0, $s0
.LBB30_28:
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.LBB30_29:                              # %.loopexit.split-lp
.Ltmp69:                                # EH_LABEL
	b	.LBB30_35
.LBB30_30:
.Ltmp74:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB30_31:
.Ltmp56:                                # EH_LABEL
	b	.LBB30_35
.LBB30_32:
.Ltmp59:                                # EH_LABEL
	b	.LBB30_35
.LBB30_33:                              # %.loopexit.split
.Ltmp53:                                # EH_LABEL
	b	.LBB30_35
.LBB30_34:                              # %.loopexit.split.us
.Ltmp64:                                # EH_LABEL
.LBB30_35:                              # %.loopexit
	move	$fp, $a0
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(_ZN9NCompress8NDeflate8NEncoder6CCoder14CCoderReleaserD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end30:
	.size	_ZN9NCompress8NDeflate8NEncoder6CCoder8CodeRealEP19ISequentialInStreamP20ISequentialOutStreamPKyS8_P21ICompressProgressInfo, .Lfunc_end30-_ZN9NCompress8NDeflate8NEncoder6CCoder8CodeRealEP19ISequentialInStreamP20ISequentialOutStreamPKyS8_P21ICompressProgressInfo
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table30:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase4-.Lttbaseref4
.Lttbaseref4:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Lfunc_begin4-.Lfunc_begin4    # >> Call Site 1 <<
	.uleb128 .Ltmp49-.Lfunc_begin4          #   Call between .Lfunc_begin4 and .Ltmp49
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp49-.Lfunc_begin4          # >> Call Site 2 <<
	.uleb128 .Ltmp52-.Ltmp49                #   Call between .Ltmp49 and .Ltmp52
	.uleb128 .Ltmp53-.Lfunc_begin4          #     jumps to .Ltmp53
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp54-.Lfunc_begin4          # >> Call Site 3 <<
	.uleb128 .Ltmp55-.Ltmp54                #   Call between .Ltmp54 and .Ltmp55
	.uleb128 .Ltmp56-.Lfunc_begin4          #     jumps to .Ltmp56
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp57-.Lfunc_begin4          # >> Call Site 4 <<
	.uleb128 .Ltmp58-.Ltmp57                #   Call between .Ltmp57 and .Ltmp58
	.uleb128 .Ltmp59-.Lfunc_begin4          #     jumps to .Ltmp59
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp60-.Lfunc_begin4          # >> Call Site 5 <<
	.uleb128 .Ltmp63-.Ltmp60                #   Call between .Ltmp60 and .Ltmp63
	.uleb128 .Ltmp64-.Lfunc_begin4          #     jumps to .Ltmp64
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp65-.Lfunc_begin4          # >> Call Site 6 <<
	.uleb128 .Ltmp68-.Ltmp65                #   Call between .Ltmp65 and .Ltmp68
	.uleb128 .Ltmp69-.Lfunc_begin4          #     jumps to .Ltmp69
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp70-.Lfunc_begin4          # >> Call Site 7 <<
	.uleb128 .Ltmp73-.Ltmp70                #   Call between .Ltmp70 and .Ltmp73
	.uleb128 .Ltmp74-.Lfunc_begin4          #     jumps to .Ltmp74
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp73-.Lfunc_begin4          # >> Call Site 8 <<
	.uleb128 .Lfunc_end30-.Ltmp73           #   Call between .Ltmp73 and .Lfunc_end30
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end4:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase4:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN9NCompress8NDeflate8NEncoder6CCoder14CCoderReleaserD2Ev,"axG",@progbits,_ZN9NCompress8NDeflate8NEncoder6CCoder14CCoderReleaserD2Ev,comdat
	.weak	_ZN9NCompress8NDeflate8NEncoder6CCoder14CCoderReleaserD2Ev # -- Begin function _ZN9NCompress8NDeflate8NEncoder6CCoder14CCoderReleaserD2Ev
	.p2align	5
	.type	_ZN9NCompress8NDeflate8NEncoder6CCoder14CCoderReleaserD2Ev,@function
_ZN9NCompress8NDeflate8NEncoder6CCoder14CCoderReleaserD2Ev: # @_ZN9NCompress8NDeflate8NEncoder6CCoder14CCoderReleaserD2Ev
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
	ld.d	$fp, $a0, 0
	ld.d	$a0, $fp, 1240
	beqz	$a0, .LBB31_3
# %bb.1:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp75:                                # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp76:                                # EH_LABEL
# %bb.2:                                # %.noexc
	st.d	$zero, $fp, 1240
.LBB31_3:                               # %_ZN9CMyComPtrI19ISequentialInStreamE7ReleaseEv.exit.i
	ld.d	$a0, $fp, 1192
	beqz	$a0, .LBB31_6
# %bb.4:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp77:                                # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp78:                                # EH_LABEL
# %bb.5:                                # %.noexc1
	st.d	$zero, $fp, 1192
.LBB31_6:                               # %_ZN9NCompress8NDeflate8NEncoder6CCoder14ReleaseStreamsEv.exit
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB31_7:
.Ltmp79:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end31:
	.size	_ZN9NCompress8NDeflate8NEncoder6CCoder14CCoderReleaserD2Ev, .Lfunc_end31-_ZN9NCompress8NDeflate8NEncoder6CCoder14CCoderReleaserD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN9NCompress8NDeflate8NEncoder6CCoder14CCoderReleaserD2Ev,"aG",@progbits,_ZN9NCompress8NDeflate8NEncoder6CCoder14CCoderReleaserD2Ev,comdat
	.p2align	2, 0x0
GCC_except_table31:
.Lexception5:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase5-.Lttbaseref5
.Lttbaseref5:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end5-.Lcst_begin5
.Lcst_begin5:
	.uleb128 .Ltmp75-.Lfunc_begin5          # >> Call Site 1 <<
	.uleb128 .Ltmp78-.Ltmp75                #   Call between .Ltmp75 and .Ltmp78
	.uleb128 .Ltmp79-.Lfunc_begin5          #     jumps to .Ltmp79
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp78-.Lfunc_begin5          # >> Call Site 2 <<
	.uleb128 .Lfunc_end31-.Ltmp78           #   Call between .Ltmp78 and .Lfunc_end31
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end5:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase5:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN9NCompress8NDeflate8NEncoder6CCoder8BaseCodeEP19ISequentialInStreamP20ISequentialOutStreamPKyS8_P21ICompressProgressInfo # -- Begin function _ZN9NCompress8NDeflate8NEncoder6CCoder8BaseCodeEP19ISequentialInStreamP20ISequentialOutStreamPKyS8_P21ICompressProgressInfo
	.p2align	5
	.type	_ZN9NCompress8NDeflate8NEncoder6CCoder8BaseCodeEP19ISequentialInStreamP20ISequentialOutStreamPKyS8_P21ICompressProgressInfo,@function
_ZN9NCompress8NDeflate8NEncoder6CCoder8BaseCodeEP19ISequentialInStreamP20ISequentialOutStreamPKyS8_P21ICompressProgressInfo: # @_ZN9NCompress8NDeflate8NEncoder6CCoder8BaseCodeEP19ISequentialInStreamP20ISequentialOutStreamPKyS8_P21ICompressProgressInfo
.Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception6
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
.Ltmp80:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN9NCompress8NDeflate8NEncoder6CCoder8CodeRealEP19ISequentialInStreamP20ISequentialOutStreamPKyS8_P21ICompressProgressInfo)
	jirl	$ra, $ra, 0
.Ltmp81:                                # EH_LABEL
# %bb.1:
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB32_2:
.Ltmp82:                                # EH_LABEL
	addi.w	$fp, $a1, 0
	pcaddu18i	$ra, %call36(__cxa_begin_catch)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	bne	$fp, $a1, .LBB32_4
# %bb.3:
	ld.w	$fp, $a0, 0
	b	.LBB32_5
.LBB32_4:
	lu12i.w	$a0, -524284
	ori	$fp, $a0, 5
.LBB32_5:                               # %.sink.split
	pcaddu18i	$ra, %call36(__cxa_end_catch)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end32:
	.size	_ZN9NCompress8NDeflate8NEncoder6CCoder8BaseCodeEP19ISequentialInStreamP20ISequentialOutStreamPKyS8_P21ICompressProgressInfo, .Lfunc_end32-_ZN9NCompress8NDeflate8NEncoder6CCoder8BaseCodeEP19ISequentialInStreamP20ISequentialOutStreamPKyS8_P21ICompressProgressInfo
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table32:
.Lexception6:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase6-.Lttbaseref6
.Lttbaseref6:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end6-.Lcst_begin6
.Lcst_begin6:
	.uleb128 .Ltmp80-.Lfunc_begin6          # >> Call Site 1 <<
	.uleb128 .Ltmp81-.Ltmp80                #   Call between .Ltmp80 and .Ltmp81
	.uleb128 .Ltmp82-.Lfunc_begin6          #     jumps to .Ltmp82
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp81-.Lfunc_begin6          # >> Call Site 2 <<
	.uleb128 .Lfunc_end32-.Ltmp81           #   Call between .Ltmp81 and .Lfunc_end32
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end6:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.byte	2                               # >> Action Record 2 <<
                                        #   Catch TypeInfo 2
	.byte	125                             #   Continue to action 1
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
.Ltmp83:                                # TypeInfo 2
	.word	.L_ZTI19COutBufferException.DW.stub-.Ltmp83
	.word	0                               # TypeInfo 1
.Lttbase6:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN9NCompress8NDeflate8NEncoder9CCOMCoder4CodeEP19ISequentialInStreamP20ISequentialOutStreamPKyS8_P21ICompressProgressInfo # -- Begin function _ZN9NCompress8NDeflate8NEncoder9CCOMCoder4CodeEP19ISequentialInStreamP20ISequentialOutStreamPKyS8_P21ICompressProgressInfo
	.p2align	5
	.type	_ZN9NCompress8NDeflate8NEncoder9CCOMCoder4CodeEP19ISequentialInStreamP20ISequentialOutStreamPKyS8_P21ICompressProgressInfo,@function
_ZN9NCompress8NDeflate8NEncoder9CCOMCoder4CodeEP19ISequentialInStreamP20ISequentialOutStreamPKyS8_P21ICompressProgressInfo: # @_ZN9NCompress8NDeflate8NEncoder9CCOMCoder4CodeEP19ISequentialInStreamP20ISequentialOutStreamPKyS8_P21ICompressProgressInfo
.Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception7
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	addi.d	$a0, $a0, 24
.Ltmp84:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN9NCompress8NDeflate8NEncoder6CCoder8CodeRealEP19ISequentialInStreamP20ISequentialOutStreamPKyS8_P21ICompressProgressInfo)
	jirl	$ra, $ra, 0
.Ltmp85:                                # EH_LABEL
# %bb.1:                                # %_ZN9NCompress8NDeflate8NEncoder6CCoder8BaseCodeEP19ISequentialInStreamP20ISequentialOutStreamPKyS8_P21ICompressProgressInfo.exit
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB33_2:
.Ltmp86:                                # EH_LABEL
	addi.w	$fp, $a1, 0
	pcaddu18i	$ra, %call36(__cxa_begin_catch)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	bne	$fp, $a1, .LBB33_4
# %bb.3:
	ld.w	$fp, $a0, 0
	b	.LBB33_5
.LBB33_4:
	lu12i.w	$a0, -524284
	ori	$fp, $a0, 5
.LBB33_5:                               # %.sink.split.i
	pcaddu18i	$ra, %call36(__cxa_end_catch)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end33:
	.size	_ZN9NCompress8NDeflate8NEncoder9CCOMCoder4CodeEP19ISequentialInStreamP20ISequentialOutStreamPKyS8_P21ICompressProgressInfo, .Lfunc_end33-_ZN9NCompress8NDeflate8NEncoder9CCOMCoder4CodeEP19ISequentialInStreamP20ISequentialOutStreamPKyS8_P21ICompressProgressInfo
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table33:
.Lexception7:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase7-.Lttbaseref7
.Lttbaseref7:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end7-.Lcst_begin7
.Lcst_begin7:
	.uleb128 .Ltmp84-.Lfunc_begin7          # >> Call Site 1 <<
	.uleb128 .Ltmp85-.Ltmp84                #   Call between .Ltmp84 and .Ltmp85
	.uleb128 .Ltmp86-.Lfunc_begin7          #     jumps to .Ltmp86
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp85-.Lfunc_begin7          # >> Call Site 2 <<
	.uleb128 .Lfunc_end33-.Ltmp85           #   Call between .Ltmp85 and .Lfunc_end33
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end7:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.byte	2                               # >> Action Record 2 <<
                                        #   Catch TypeInfo 2
	.byte	125                             #   Continue to action 1
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
.Ltmp87:                                # TypeInfo 2
	.word	.L_ZTI19COutBufferException.DW.stub-.Ltmp87
	.word	0                               # TypeInfo 1
.Lttbase7:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN9NCompress8NDeflate8NEncoder9CCOMCoder18SetCoderPropertiesEPKjPK14tagPROPVARIANTj # -- Begin function _ZN9NCompress8NDeflate8NEncoder9CCOMCoder18SetCoderPropertiesEPKjPK14tagPROPVARIANTj
	.p2align	5
	.type	_ZN9NCompress8NDeflate8NEncoder9CCOMCoder18SetCoderPropertiesEPKjPK14tagPROPVARIANTj,@function
_ZN9NCompress8NDeflate8NEncoder9CCOMCoder18SetCoderPropertiesEPKjPK14tagPROPVARIANTj: # @_ZN9NCompress8NDeflate8NEncoder9CCOMCoder18SetCoderPropertiesEPKjPK14tagPROPVARIANTj
# %bb.0:
	beqz	$a3, .LBB34_18
# %bb.1:                                # %.lr.ph.i
	move	$a4, $a0
	lu12i.w	$a0, 9
	ori	$a0, $a0, 2920
	add.d	$a5, $a4, $a0
	ld.w	$a6, $a4, 1336
	bstrpick.d	$a3, $a3, 31, 0
	addi.d	$a2, $a2, 8
	lu12i.w	$a0, -524176
	ori	$a0, $a0, 87
	ori	$a7, $zero, 4
	pcalau12i	$t0, %pc_hi20(.LJTI34_0)
	addi.d	$t0, $t0, %pc_lo12(.LJTI34_0)
	ori	$t1, $zero, 19
	ori	$t2, $zero, 3
	ori	$t3, $zero, 1
	ori	$t4, $zero, 10
	ori	$t5, $zero, 2
	b	.LBB34_4
.LBB34_2:                               #   in Loop: Header=BB34_4 Depth=1
	st.w	$t3, $a4, 1316
	.p2align	4, , 16
.LBB34_3:                               # %.critedge.i
                                        #   in Loop: Header=BB34_4 Depth=1
	addi.d	$a3, $a3, -1
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, 16
	beqz	$a3, .LBB34_18
.LBB34_4:                               # =>This Inner Loop Header: Depth=1
	ld.w	$t6, $a1, 0
	addi.d	$t6, $t6, -8
	bltu	$a7, $t6, .LBB34_19
# %bb.5:                                #   in Loop: Header=BB34_4 Depth=1
	slli.d	$t6, $t6, 2
	ldx.w	$t6, $t0, $t6
	add.d	$t6, $t0, $t6
	jr	$t6
.LBB34_6:                               #   in Loop: Header=BB34_4 Depth=1
	ld.hu	$t6, $a2, -8
	bne	$t6, $t1, .LBB34_19
# %bb.7:                                #   in Loop: Header=BB34_4 Depth=1
	ld.w	$t6, $a2, 0
	st.w	$t6, $a4, 1288
	bltu	$t6, $t2, .LBB34_19
# %bb.8:                                #   in Loop: Header=BB34_4 Depth=1
	bgeu	$a6, $t6, .LBB34_3
	b	.LBB34_19
	.p2align	4, , 16
.LBB34_9:                               #   in Loop: Header=BB34_4 Depth=1
	ld.hu	$t6, $a2, -8
	bne	$t6, $t1, .LBB34_19
# %bb.10:                               #   in Loop: Header=BB34_4 Depth=1
	ld.w	$t6, $a2, 0
	st.w	$t6, $a5, 0
	b	.LBB34_3
	.p2align	4, , 16
.LBB34_11:                              #   in Loop: Header=BB34_4 Depth=1
	ld.hu	$t6, $a2, -8
	bne	$t6, $t1, .LBB34_19
# %bb.12:                               #   in Loop: Header=BB34_4 Depth=1
	ld.w	$t6, $a2, 0
	sltu	$t7, $zero, $t6
	sltui	$t6, $t6, 1
	st.b	$t6, $a4, 1292
	st.b	$t7, $a4, 1293
	b	.LBB34_3
	.p2align	4, , 16
.LBB34_13:                              #   in Loop: Header=BB34_4 Depth=1
	ld.hu	$t6, $a2, -8
	bne	$t6, $t1, .LBB34_19
# %bb.14:                               #   in Loop: Header=BB34_4 Depth=1
	ld.w	$t7, $a2, 0
	sltu	$t6, $t3, $t7
	masknez	$t8, $t3, $t6
	maskeqz	$t6, $t7, $t6
	or	$t6, $t6, $t8
	st.w	$t6, $a4, 1320
	bgeu	$t3, $t7, .LBB34_2
# %bb.15:                               #   in Loop: Header=BB34_4 Depth=1
	blt	$t4, $t6, .LBB34_17
# %bb.16:                               #   in Loop: Header=BB34_4 Depth=1
	st.w	$t5, $a4, 1316
	b	.LBB34_3
.LBB34_17:                              #   in Loop: Header=BB34_4 Depth=1
	addi.d	$t6, $t6, -8
	st.w	$t6, $a4, 1316
	st.w	$t4, $a4, 1320
	b	.LBB34_3
.LBB34_18:
	move	$a0, $zero
.LBB34_19:                              # %_ZN9NCompress8NDeflate8NEncoder6CCoder25BaseSetEncoderProperties2EPKjPK14tagPROPVARIANTj.exit
	ret
.Lfunc_end34:
	.size	_ZN9NCompress8NDeflate8NEncoder9CCOMCoder18SetCoderPropertiesEPKjPK14tagPROPVARIANTj, .Lfunc_end34-_ZN9NCompress8NDeflate8NEncoder9CCOMCoder18SetCoderPropertiesEPKjPK14tagPROPVARIANTj
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI34_0:
	.word	.LBB34_6-.LJTI34_0
	.word	.LBB34_19-.LJTI34_0
	.word	.LBB34_9-.LJTI34_0
	.word	.LBB34_13-.LJTI34_0
	.word	.LBB34_11-.LJTI34_0
                                        # -- End function
	.text
	.globl	_ZThn8_N9NCompress8NDeflate8NEncoder9CCOMCoder18SetCoderPropertiesEPKjPK14tagPROPVARIANTj # -- Begin function _ZThn8_N9NCompress8NDeflate8NEncoder9CCOMCoder18SetCoderPropertiesEPKjPK14tagPROPVARIANTj
	.p2align	5
	.type	_ZThn8_N9NCompress8NDeflate8NEncoder9CCOMCoder18SetCoderPropertiesEPKjPK14tagPROPVARIANTj,@function
_ZThn8_N9NCompress8NDeflate8NEncoder9CCOMCoder18SetCoderPropertiesEPKjPK14tagPROPVARIANTj: # @_ZThn8_N9NCompress8NDeflate8NEncoder9CCOMCoder18SetCoderPropertiesEPKjPK14tagPROPVARIANTj
# %bb.0:
	beqz	$a3, .LBB35_18
# %bb.1:                                # %.lr.ph.i.i
	move	$a4, $a0
	lu12i.w	$a0, 9
	ori	$a0, $a0, 2912
	add.d	$a5, $a4, $a0
	ld.w	$a6, $a4, 1328
	bstrpick.d	$a3, $a3, 31, 0
	addi.d	$a2, $a2, 8
	lu12i.w	$a0, -524176
	ori	$a0, $a0, 87
	ori	$a7, $zero, 4
	pcalau12i	$t0, %pc_hi20(.LJTI35_0)
	addi.d	$t0, $t0, %pc_lo12(.LJTI35_0)
	ori	$t1, $zero, 19
	ori	$t2, $zero, 3
	ori	$t3, $zero, 1
	ori	$t4, $zero, 10
	ori	$t5, $zero, 2
	b	.LBB35_4
.LBB35_2:                               #   in Loop: Header=BB35_4 Depth=1
	st.w	$t3, $a4, 1308
	.p2align	4, , 16
.LBB35_3:                               # %.critedge.i.i
                                        #   in Loop: Header=BB35_4 Depth=1
	addi.d	$a3, $a3, -1
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, 16
	beqz	$a3, .LBB35_18
.LBB35_4:                               # =>This Inner Loop Header: Depth=1
	ld.w	$t6, $a1, 0
	addi.d	$t6, $t6, -8
	bltu	$a7, $t6, .LBB35_19
# %bb.5:                                #   in Loop: Header=BB35_4 Depth=1
	slli.d	$t6, $t6, 2
	ldx.w	$t6, $t0, $t6
	add.d	$t6, $t0, $t6
	jr	$t6
.LBB35_6:                               #   in Loop: Header=BB35_4 Depth=1
	ld.hu	$t6, $a2, -8
	bne	$t6, $t1, .LBB35_19
# %bb.7:                                #   in Loop: Header=BB35_4 Depth=1
	ld.w	$t6, $a2, 0
	st.w	$t6, $a4, 1280
	bltu	$t6, $t2, .LBB35_19
# %bb.8:                                #   in Loop: Header=BB35_4 Depth=1
	bgeu	$a6, $t6, .LBB35_3
	b	.LBB35_19
	.p2align	4, , 16
.LBB35_9:                               #   in Loop: Header=BB35_4 Depth=1
	ld.hu	$t6, $a2, -8
	bne	$t6, $t1, .LBB35_19
# %bb.10:                               #   in Loop: Header=BB35_4 Depth=1
	ld.w	$t6, $a2, 0
	st.w	$t6, $a5, 0
	b	.LBB35_3
	.p2align	4, , 16
.LBB35_11:                              #   in Loop: Header=BB35_4 Depth=1
	ld.hu	$t6, $a2, -8
	bne	$t6, $t1, .LBB35_19
# %bb.12:                               #   in Loop: Header=BB35_4 Depth=1
	ld.w	$t6, $a2, 0
	sltu	$t7, $zero, $t6
	sltui	$t6, $t6, 1
	st.b	$t6, $a4, 1284
	st.b	$t7, $a4, 1285
	b	.LBB35_3
	.p2align	4, , 16
.LBB35_13:                              #   in Loop: Header=BB35_4 Depth=1
	ld.hu	$t6, $a2, -8
	bne	$t6, $t1, .LBB35_19
# %bb.14:                               #   in Loop: Header=BB35_4 Depth=1
	ld.w	$t7, $a2, 0
	sltu	$t6, $t3, $t7
	masknez	$t8, $t3, $t6
	maskeqz	$t6, $t7, $t6
	or	$t6, $t6, $t8
	st.w	$t6, $a4, 1312
	bgeu	$t3, $t7, .LBB35_2
# %bb.15:                               #   in Loop: Header=BB35_4 Depth=1
	blt	$t4, $t6, .LBB35_17
# %bb.16:                               #   in Loop: Header=BB35_4 Depth=1
	st.w	$t5, $a4, 1308
	b	.LBB35_3
.LBB35_17:                              #   in Loop: Header=BB35_4 Depth=1
	addi.d	$t6, $t6, -8
	st.w	$t6, $a4, 1308
	st.w	$t4, $a4, 1312
	b	.LBB35_3
.LBB35_18:
	move	$a0, $zero
.LBB35_19:                              # %_ZN9NCompress8NDeflate8NEncoder9CCOMCoder18SetCoderPropertiesEPKjPK14tagPROPVARIANTj.exit
	ret
.Lfunc_end35:
	.size	_ZThn8_N9NCompress8NDeflate8NEncoder9CCOMCoder18SetCoderPropertiesEPKjPK14tagPROPVARIANTj, .Lfunc_end35-_ZThn8_N9NCompress8NDeflate8NEncoder9CCOMCoder18SetCoderPropertiesEPKjPK14tagPROPVARIANTj
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI35_0:
	.word	.LBB35_6-.LJTI35_0
	.word	.LBB35_19-.LJTI35_0
	.word	.LBB35_9-.LJTI35_0
	.word	.LBB35_13-.LJTI35_0
	.word	.LBB35_11-.LJTI35_0
                                        # -- End function
	.text
	.globl	_ZN9NCompress8NDeflate8NEncoder11CCOMCoder644CodeEP19ISequentialInStreamP20ISequentialOutStreamPKyS8_P21ICompressProgressInfo # -- Begin function _ZN9NCompress8NDeflate8NEncoder11CCOMCoder644CodeEP19ISequentialInStreamP20ISequentialOutStreamPKyS8_P21ICompressProgressInfo
	.p2align	5
	.type	_ZN9NCompress8NDeflate8NEncoder11CCOMCoder644CodeEP19ISequentialInStreamP20ISequentialOutStreamPKyS8_P21ICompressProgressInfo,@function
_ZN9NCompress8NDeflate8NEncoder11CCOMCoder644CodeEP19ISequentialInStreamP20ISequentialOutStreamPKyS8_P21ICompressProgressInfo: # @_ZN9NCompress8NDeflate8NEncoder11CCOMCoder644CodeEP19ISequentialInStreamP20ISequentialOutStreamPKyS8_P21ICompressProgressInfo
.Lfunc_begin8:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception8
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	addi.d	$a0, $a0, 24
.Ltmp88:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN9NCompress8NDeflate8NEncoder6CCoder8CodeRealEP19ISequentialInStreamP20ISequentialOutStreamPKyS8_P21ICompressProgressInfo)
	jirl	$ra, $ra, 0
.Ltmp89:                                # EH_LABEL
# %bb.1:                                # %_ZN9NCompress8NDeflate8NEncoder6CCoder8BaseCodeEP19ISequentialInStreamP20ISequentialOutStreamPKyS8_P21ICompressProgressInfo.exit
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB36_2:
.Ltmp90:                                # EH_LABEL
	addi.w	$fp, $a1, 0
	pcaddu18i	$ra, %call36(__cxa_begin_catch)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	bne	$fp, $a1, .LBB36_4
# %bb.3:
	ld.w	$fp, $a0, 0
	b	.LBB36_5
.LBB36_4:
	lu12i.w	$a0, -524284
	ori	$fp, $a0, 5
.LBB36_5:                               # %.sink.split.i
	pcaddu18i	$ra, %call36(__cxa_end_catch)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end36:
	.size	_ZN9NCompress8NDeflate8NEncoder11CCOMCoder644CodeEP19ISequentialInStreamP20ISequentialOutStreamPKyS8_P21ICompressProgressInfo, .Lfunc_end36-_ZN9NCompress8NDeflate8NEncoder11CCOMCoder644CodeEP19ISequentialInStreamP20ISequentialOutStreamPKyS8_P21ICompressProgressInfo
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table36:
.Lexception8:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase8-.Lttbaseref8
.Lttbaseref8:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end8-.Lcst_begin8
.Lcst_begin8:
	.uleb128 .Ltmp88-.Lfunc_begin8          # >> Call Site 1 <<
	.uleb128 .Ltmp89-.Ltmp88                #   Call between .Ltmp88 and .Ltmp89
	.uleb128 .Ltmp90-.Lfunc_begin8          #     jumps to .Ltmp90
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp89-.Lfunc_begin8          # >> Call Site 2 <<
	.uleb128 .Lfunc_end36-.Ltmp89           #   Call between .Ltmp89 and .Lfunc_end36
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end8:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.byte	2                               # >> Action Record 2 <<
                                        #   Catch TypeInfo 2
	.byte	125                             #   Continue to action 1
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
.Ltmp91:                                # TypeInfo 2
	.word	.L_ZTI19COutBufferException.DW.stub-.Ltmp91
	.word	0                               # TypeInfo 1
.Lttbase8:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN9NCompress8NDeflate8NEncoder11CCOMCoder6418SetCoderPropertiesEPKjPK14tagPROPVARIANTj # -- Begin function _ZN9NCompress8NDeflate8NEncoder11CCOMCoder6418SetCoderPropertiesEPKjPK14tagPROPVARIANTj
	.p2align	5
	.type	_ZN9NCompress8NDeflate8NEncoder11CCOMCoder6418SetCoderPropertiesEPKjPK14tagPROPVARIANTj,@function
_ZN9NCompress8NDeflate8NEncoder11CCOMCoder6418SetCoderPropertiesEPKjPK14tagPROPVARIANTj: # @_ZN9NCompress8NDeflate8NEncoder11CCOMCoder6418SetCoderPropertiesEPKjPK14tagPROPVARIANTj
# %bb.0:
	beqz	$a3, .LBB37_18
# %bb.1:                                # %.lr.ph.i
	move	$a4, $a0
	lu12i.w	$a0, 9
	ori	$a0, $a0, 2920
	add.d	$a5, $a4, $a0
	ld.w	$a6, $a4, 1336
	bstrpick.d	$a3, $a3, 31, 0
	addi.d	$a2, $a2, 8
	lu12i.w	$a0, -524176
	ori	$a0, $a0, 87
	ori	$a7, $zero, 4
	pcalau12i	$t0, %pc_hi20(.LJTI37_0)
	addi.d	$t0, $t0, %pc_lo12(.LJTI37_0)
	ori	$t1, $zero, 19
	ori	$t2, $zero, 3
	ori	$t3, $zero, 1
	ori	$t4, $zero, 10
	ori	$t5, $zero, 2
	b	.LBB37_4
.LBB37_2:                               #   in Loop: Header=BB37_4 Depth=1
	st.w	$t3, $a4, 1316
	.p2align	4, , 16
.LBB37_3:                               # %.critedge.i
                                        #   in Loop: Header=BB37_4 Depth=1
	addi.d	$a3, $a3, -1
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, 16
	beqz	$a3, .LBB37_18
.LBB37_4:                               # =>This Inner Loop Header: Depth=1
	ld.w	$t6, $a1, 0
	addi.d	$t6, $t6, -8
	bltu	$a7, $t6, .LBB37_19
# %bb.5:                                #   in Loop: Header=BB37_4 Depth=1
	slli.d	$t6, $t6, 2
	ldx.w	$t6, $t0, $t6
	add.d	$t6, $t0, $t6
	jr	$t6
.LBB37_6:                               #   in Loop: Header=BB37_4 Depth=1
	ld.hu	$t6, $a2, -8
	bne	$t6, $t1, .LBB37_19
# %bb.7:                                #   in Loop: Header=BB37_4 Depth=1
	ld.w	$t6, $a2, 0
	st.w	$t6, $a4, 1288
	bltu	$t6, $t2, .LBB37_19
# %bb.8:                                #   in Loop: Header=BB37_4 Depth=1
	bgeu	$a6, $t6, .LBB37_3
	b	.LBB37_19
	.p2align	4, , 16
.LBB37_9:                               #   in Loop: Header=BB37_4 Depth=1
	ld.hu	$t6, $a2, -8
	bne	$t6, $t1, .LBB37_19
# %bb.10:                               #   in Loop: Header=BB37_4 Depth=1
	ld.w	$t6, $a2, 0
	st.w	$t6, $a5, 0
	b	.LBB37_3
	.p2align	4, , 16
.LBB37_11:                              #   in Loop: Header=BB37_4 Depth=1
	ld.hu	$t6, $a2, -8
	bne	$t6, $t1, .LBB37_19
# %bb.12:                               #   in Loop: Header=BB37_4 Depth=1
	ld.w	$t6, $a2, 0
	sltu	$t7, $zero, $t6
	sltui	$t6, $t6, 1
	st.b	$t6, $a4, 1292
	st.b	$t7, $a4, 1293
	b	.LBB37_3
	.p2align	4, , 16
.LBB37_13:                              #   in Loop: Header=BB37_4 Depth=1
	ld.hu	$t6, $a2, -8
	bne	$t6, $t1, .LBB37_19
# %bb.14:                               #   in Loop: Header=BB37_4 Depth=1
	ld.w	$t7, $a2, 0
	sltu	$t6, $t3, $t7
	masknez	$t8, $t3, $t6
	maskeqz	$t6, $t7, $t6
	or	$t6, $t6, $t8
	st.w	$t6, $a4, 1320
	bgeu	$t3, $t7, .LBB37_2
# %bb.15:                               #   in Loop: Header=BB37_4 Depth=1
	blt	$t4, $t6, .LBB37_17
# %bb.16:                               #   in Loop: Header=BB37_4 Depth=1
	st.w	$t5, $a4, 1316
	b	.LBB37_3
.LBB37_17:                              #   in Loop: Header=BB37_4 Depth=1
	addi.d	$t6, $t6, -8
	st.w	$t6, $a4, 1316
	st.w	$t4, $a4, 1320
	b	.LBB37_3
.LBB37_18:
	move	$a0, $zero
.LBB37_19:                              # %_ZN9NCompress8NDeflate8NEncoder6CCoder25BaseSetEncoderProperties2EPKjPK14tagPROPVARIANTj.exit
	ret
.Lfunc_end37:
	.size	_ZN9NCompress8NDeflate8NEncoder11CCOMCoder6418SetCoderPropertiesEPKjPK14tagPROPVARIANTj, .Lfunc_end37-_ZN9NCompress8NDeflate8NEncoder11CCOMCoder6418SetCoderPropertiesEPKjPK14tagPROPVARIANTj
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI37_0:
	.word	.LBB37_6-.LJTI37_0
	.word	.LBB37_19-.LJTI37_0
	.word	.LBB37_9-.LJTI37_0
	.word	.LBB37_13-.LJTI37_0
	.word	.LBB37_11-.LJTI37_0
                                        # -- End function
	.text
	.globl	_ZThn8_N9NCompress8NDeflate8NEncoder11CCOMCoder6418SetCoderPropertiesEPKjPK14tagPROPVARIANTj # -- Begin function _ZThn8_N9NCompress8NDeflate8NEncoder11CCOMCoder6418SetCoderPropertiesEPKjPK14tagPROPVARIANTj
	.p2align	5
	.type	_ZThn8_N9NCompress8NDeflate8NEncoder11CCOMCoder6418SetCoderPropertiesEPKjPK14tagPROPVARIANTj,@function
_ZThn8_N9NCompress8NDeflate8NEncoder11CCOMCoder6418SetCoderPropertiesEPKjPK14tagPROPVARIANTj: # @_ZThn8_N9NCompress8NDeflate8NEncoder11CCOMCoder6418SetCoderPropertiesEPKjPK14tagPROPVARIANTj
# %bb.0:
	beqz	$a3, .LBB38_18
# %bb.1:                                # %.lr.ph.i.i
	move	$a4, $a0
	lu12i.w	$a0, 9
	ori	$a0, $a0, 2912
	add.d	$a5, $a4, $a0
	ld.w	$a6, $a4, 1328
	bstrpick.d	$a3, $a3, 31, 0
	addi.d	$a2, $a2, 8
	lu12i.w	$a0, -524176
	ori	$a0, $a0, 87
	ori	$a7, $zero, 4
	pcalau12i	$t0, %pc_hi20(.LJTI38_0)
	addi.d	$t0, $t0, %pc_lo12(.LJTI38_0)
	ori	$t1, $zero, 19
	ori	$t2, $zero, 3
	ori	$t3, $zero, 1
	ori	$t4, $zero, 10
	ori	$t5, $zero, 2
	b	.LBB38_4
.LBB38_2:                               #   in Loop: Header=BB38_4 Depth=1
	st.w	$t3, $a4, 1308
	.p2align	4, , 16
.LBB38_3:                               # %.critedge.i.i
                                        #   in Loop: Header=BB38_4 Depth=1
	addi.d	$a3, $a3, -1
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, 16
	beqz	$a3, .LBB38_18
.LBB38_4:                               # =>This Inner Loop Header: Depth=1
	ld.w	$t6, $a1, 0
	addi.d	$t6, $t6, -8
	bltu	$a7, $t6, .LBB38_19
# %bb.5:                                #   in Loop: Header=BB38_4 Depth=1
	slli.d	$t6, $t6, 2
	ldx.w	$t6, $t0, $t6
	add.d	$t6, $t0, $t6
	jr	$t6
.LBB38_6:                               #   in Loop: Header=BB38_4 Depth=1
	ld.hu	$t6, $a2, -8
	bne	$t6, $t1, .LBB38_19
# %bb.7:                                #   in Loop: Header=BB38_4 Depth=1
	ld.w	$t6, $a2, 0
	st.w	$t6, $a4, 1280
	bltu	$t6, $t2, .LBB38_19
# %bb.8:                                #   in Loop: Header=BB38_4 Depth=1
	bgeu	$a6, $t6, .LBB38_3
	b	.LBB38_19
	.p2align	4, , 16
.LBB38_9:                               #   in Loop: Header=BB38_4 Depth=1
	ld.hu	$t6, $a2, -8
	bne	$t6, $t1, .LBB38_19
# %bb.10:                               #   in Loop: Header=BB38_4 Depth=1
	ld.w	$t6, $a2, 0
	st.w	$t6, $a5, 0
	b	.LBB38_3
	.p2align	4, , 16
.LBB38_11:                              #   in Loop: Header=BB38_4 Depth=1
	ld.hu	$t6, $a2, -8
	bne	$t6, $t1, .LBB38_19
# %bb.12:                               #   in Loop: Header=BB38_4 Depth=1
	ld.w	$t6, $a2, 0
	sltu	$t7, $zero, $t6
	sltui	$t6, $t6, 1
	st.b	$t6, $a4, 1284
	st.b	$t7, $a4, 1285
	b	.LBB38_3
	.p2align	4, , 16
.LBB38_13:                              #   in Loop: Header=BB38_4 Depth=1
	ld.hu	$t6, $a2, -8
	bne	$t6, $t1, .LBB38_19
# %bb.14:                               #   in Loop: Header=BB38_4 Depth=1
	ld.w	$t7, $a2, 0
	sltu	$t6, $t3, $t7
	masknez	$t8, $t3, $t6
	maskeqz	$t6, $t7, $t6
	or	$t6, $t6, $t8
	st.w	$t6, $a4, 1312
	bgeu	$t3, $t7, .LBB38_2
# %bb.15:                               #   in Loop: Header=BB38_4 Depth=1
	blt	$t4, $t6, .LBB38_17
# %bb.16:                               #   in Loop: Header=BB38_4 Depth=1
	st.w	$t5, $a4, 1308
	b	.LBB38_3
.LBB38_17:                              #   in Loop: Header=BB38_4 Depth=1
	addi.d	$t6, $t6, -8
	st.w	$t6, $a4, 1308
	st.w	$t4, $a4, 1312
	b	.LBB38_3
.LBB38_18:
	move	$a0, $zero
.LBB38_19:                              # %_ZN9NCompress8NDeflate8NEncoder11CCOMCoder6418SetCoderPropertiesEPKjPK14tagPROPVARIANTj.exit
	ret
.Lfunc_end38:
	.size	_ZThn8_N9NCompress8NDeflate8NEncoder11CCOMCoder6418SetCoderPropertiesEPKjPK14tagPROPVARIANTj, .Lfunc_end38-_ZThn8_N9NCompress8NDeflate8NEncoder11CCOMCoder6418SetCoderPropertiesEPKjPK14tagPROPVARIANTj
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI38_0:
	.word	.LBB38_6-.LJTI38_0
	.word	.LBB38_19-.LJTI38_0
	.word	.LBB38_9-.LJTI38_0
	.word	.LBB38_13-.LJTI38_0
	.word	.LBB38_11-.LJTI38_0
                                        # -- End function
	.section	.text._ZN9NCompress8NDeflate8NEncoder9CCOMCoder14QueryInterfaceERK4GUIDPPv,"axG",@progbits,_ZN9NCompress8NDeflate8NEncoder9CCOMCoder14QueryInterfaceERK4GUIDPPv,comdat
	.weak	_ZN9NCompress8NDeflate8NEncoder9CCOMCoder14QueryInterfaceERK4GUIDPPv # -- Begin function _ZN9NCompress8NDeflate8NEncoder9CCOMCoder14QueryInterfaceERK4GUIDPPv
	.p2align	5
	.type	_ZN9NCompress8NDeflate8NEncoder9CCOMCoder14QueryInterfaceERK4GUIDPPv,@function
_ZN9NCompress8NDeflate8NEncoder9CCOMCoder14QueryInterfaceERK4GUIDPPv: # @_ZN9NCompress8NDeflate8NEncoder9CCOMCoder14QueryInterfaceERK4GUIDPPv
	.cfi_startproc
# %bb.0:
	ld.bu	$a4, $a1, 0
	pcalau12i	$a3, %got_pc_hi20(IID_IUnknown)
	ld.d	$a3, $a3, %got_pc_lo12(IID_IUnknown)
	ld.bu	$a5, $a3, 0
	bne	$a4, $a5, .LBB39_16
# %bb.1:
	ld.bu	$a5, $a1, 1
	ld.bu	$a6, $a3, 1
	bne	$a5, $a6, .LBB39_16
# %bb.2:
	ld.bu	$a5, $a1, 2
	ld.bu	$a6, $a3, 2
	bne	$a5, $a6, .LBB39_16
# %bb.3:
	ld.bu	$a5, $a1, 3
	ld.bu	$a6, $a3, 3
	bne	$a5, $a6, .LBB39_16
# %bb.4:
	ld.bu	$a5, $a1, 4
	ld.bu	$a6, $a3, 4
	bne	$a5, $a6, .LBB39_16
# %bb.5:
	ld.bu	$a5, $a1, 5
	ld.bu	$a6, $a3, 5
	bne	$a5, $a6, .LBB39_16
# %bb.6:
	ld.bu	$a5, $a1, 6
	ld.bu	$a6, $a3, 6
	bne	$a5, $a6, .LBB39_16
# %bb.7:
	ld.bu	$a5, $a1, 7
	ld.bu	$a6, $a3, 7
	bne	$a5, $a6, .LBB39_16
# %bb.8:
	ld.bu	$a5, $a1, 8
	ld.bu	$a6, $a3, 8
	bne	$a5, $a6, .LBB39_16
# %bb.9:
	ld.bu	$a5, $a1, 9
	ld.bu	$a6, $a3, 9
	bne	$a5, $a6, .LBB39_16
# %bb.10:
	ld.bu	$a5, $a1, 10
	ld.bu	$a6, $a3, 10
	bne	$a5, $a6, .LBB39_16
# %bb.11:
	ld.bu	$a5, $a1, 11
	ld.bu	$a6, $a3, 11
	bne	$a5, $a6, .LBB39_16
# %bb.12:
	ld.bu	$a5, $a1, 12
	ld.bu	$a6, $a3, 12
	bne	$a5, $a6, .LBB39_16
# %bb.13:
	ld.bu	$a5, $a1, 13
	ld.bu	$a6, $a3, 13
	bne	$a5, $a6, .LBB39_16
# %bb.14:
	ld.bu	$a5, $a1, 14
	ld.bu	$a6, $a3, 14
	bne	$a5, $a6, .LBB39_16
# %bb.15:                               # %_ZeqRK4GUIDS1_.exit
	ld.bu	$a5, $a1, 15
	ld.bu	$a3, $a3, 15
	beq	$a5, $a3, .LBB39_32
.LBB39_16:                              # %_ZeqRK4GUIDS1_.exit.thread
	pcalau12i	$a3, %got_pc_hi20(IID_ICompressSetCoderProperties)
	ld.d	$a5, $a3, %got_pc_lo12(IID_ICompressSetCoderProperties)
	ld.bu	$a6, $a5, 0
	lu12i.w	$a3, -524284
	ori	$a3, $a3, 2
	bne	$a4, $a6, .LBB39_33
# %bb.17:
	ld.bu	$a4, $a1, 1
	ld.bu	$a6, $a5, 1
	bne	$a4, $a6, .LBB39_33
# %bb.18:
	ld.bu	$a4, $a1, 2
	ld.bu	$a6, $a5, 2
	bne	$a4, $a6, .LBB39_33
# %bb.19:
	ld.bu	$a4, $a1, 3
	ld.bu	$a6, $a5, 3
	bne	$a4, $a6, .LBB39_33
# %bb.20:
	ld.bu	$a4, $a1, 4
	ld.bu	$a6, $a5, 4
	bne	$a4, $a6, .LBB39_33
# %bb.21:
	ld.bu	$a4, $a1, 5
	ld.bu	$a6, $a5, 5
	bne	$a4, $a6, .LBB39_33
# %bb.22:
	ld.bu	$a4, $a1, 6
	ld.bu	$a6, $a5, 6
	bne	$a4, $a6, .LBB39_33
# %bb.23:
	ld.bu	$a4, $a1, 7
	ld.bu	$a6, $a5, 7
	bne	$a4, $a6, .LBB39_33
# %bb.24:
	ld.bu	$a4, $a1, 8
	ld.bu	$a6, $a5, 8
	bne	$a4, $a6, .LBB39_33
# %bb.25:
	ld.bu	$a4, $a1, 9
	ld.bu	$a6, $a5, 9
	bne	$a4, $a6, .LBB39_33
# %bb.26:
	ld.bu	$a4, $a1, 10
	ld.bu	$a6, $a5, 10
	bne	$a4, $a6, .LBB39_33
# %bb.27:
	ld.bu	$a4, $a1, 11
	ld.bu	$a6, $a5, 11
	bne	$a4, $a6, .LBB39_33
# %bb.28:
	ld.bu	$a4, $a1, 12
	ld.bu	$a6, $a5, 12
	bne	$a4, $a6, .LBB39_33
# %bb.29:
	ld.bu	$a4, $a1, 13
	ld.bu	$a6, $a5, 13
	bne	$a4, $a6, .LBB39_33
# %bb.30:
	ld.bu	$a4, $a1, 14
	ld.bu	$a6, $a5, 14
	bne	$a4, $a6, .LBB39_33
# %bb.31:                               # %_ZeqRK4GUIDS1_.exit24
	ld.bu	$a1, $a1, 15
	ld.bu	$a4, $a5, 15
	bne	$a1, $a4, .LBB39_33
.LBB39_32:                              # %_ZeqRK4GUIDS1_.exit24.thread.sink.split
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	ld.d	$a1, $a0, 0
	addi.d	$a3, $a0, 8
	st.d	$a3, $a2, 0
	ld.d	$a1, $a1, 8
	jirl	$ra, $a1, 0
	move	$a3, $zero
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
.LBB39_33:                              # %_ZeqRK4GUIDS1_.exit24.thread
	move	$a0, $a3
	ret
.Lfunc_end39:
	.size	_ZN9NCompress8NDeflate8NEncoder9CCOMCoder14QueryInterfaceERK4GUIDPPv, .Lfunc_end39-_ZN9NCompress8NDeflate8NEncoder9CCOMCoder14QueryInterfaceERK4GUIDPPv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9NCompress8NDeflate8NEncoder9CCOMCoder6AddRefEv,"axG",@progbits,_ZN9NCompress8NDeflate8NEncoder9CCOMCoder6AddRefEv,comdat
	.weak	_ZN9NCompress8NDeflate8NEncoder9CCOMCoder6AddRefEv # -- Begin function _ZN9NCompress8NDeflate8NEncoder9CCOMCoder6AddRefEv
	.p2align	5
	.type	_ZN9NCompress8NDeflate8NEncoder9CCOMCoder6AddRefEv,@function
_ZN9NCompress8NDeflate8NEncoder9CCOMCoder6AddRefEv: # @_ZN9NCompress8NDeflate8NEncoder9CCOMCoder6AddRefEv
# %bb.0:
	ld.w	$a1, $a0, 16
	addi.w	$a1, $a1, 1
	st.w	$a1, $a0, 16
	move	$a0, $a1
	ret
.Lfunc_end40:
	.size	_ZN9NCompress8NDeflate8NEncoder9CCOMCoder6AddRefEv, .Lfunc_end40-_ZN9NCompress8NDeflate8NEncoder9CCOMCoder6AddRefEv
                                        # -- End function
	.section	.text._ZN9NCompress8NDeflate8NEncoder9CCOMCoder7ReleaseEv,"axG",@progbits,_ZN9NCompress8NDeflate8NEncoder9CCOMCoder7ReleaseEv,comdat
	.weak	_ZN9NCompress8NDeflate8NEncoder9CCOMCoder7ReleaseEv # -- Begin function _ZN9NCompress8NDeflate8NEncoder9CCOMCoder7ReleaseEv
	.p2align	5
	.type	_ZN9NCompress8NDeflate8NEncoder9CCOMCoder7ReleaseEv,@function
_ZN9NCompress8NDeflate8NEncoder9CCOMCoder7ReleaseEv: # @_ZN9NCompress8NDeflate8NEncoder9CCOMCoder7ReleaseEv
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	ld.w	$a1, $a0, 16
	addi.w	$fp, $a1, -1
	st.w	$fp, $a0, 16
	bnez	$fp, .LBB41_2
# %bb.1:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 32
	jirl	$ra, $a1, 0
.LBB41_2:
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end41:
	.size	_ZN9NCompress8NDeflate8NEncoder9CCOMCoder7ReleaseEv, .Lfunc_end41-_ZN9NCompress8NDeflate8NEncoder9CCOMCoder7ReleaseEv
                                        # -- End function
	.section	.text._ZN9NCompress8NDeflate8NEncoder9CCOMCoderD2Ev,"axG",@progbits,_ZN9NCompress8NDeflate8NEncoder9CCOMCoderD2Ev,comdat
	.weak	_ZN9NCompress8NDeflate8NEncoder9CCOMCoderD2Ev # -- Begin function _ZN9NCompress8NDeflate8NEncoder9CCOMCoderD2Ev
	.p2align	5
	.type	_ZN9NCompress8NDeflate8NEncoder9CCOMCoderD2Ev,@function
_ZN9NCompress8NDeflate8NEncoder9CCOMCoderD2Ev: # @_ZN9NCompress8NDeflate8NEncoder9CCOMCoderD2Ev
# %bb.0:
	addi.d	$a0, $a0, 24
	pcaddu18i	$t8, %call36(_ZN9NCompress8NDeflate8NEncoder6CCoderD2Ev)
	jr	$t8
.Lfunc_end42:
	.size	_ZN9NCompress8NDeflate8NEncoder9CCOMCoderD2Ev, .Lfunc_end42-_ZN9NCompress8NDeflate8NEncoder9CCOMCoderD2Ev
                                        # -- End function
	.section	.text._ZN9NCompress8NDeflate8NEncoder9CCOMCoderD0Ev,"axG",@progbits,_ZN9NCompress8NDeflate8NEncoder9CCOMCoderD0Ev,comdat
	.weak	_ZN9NCompress8NDeflate8NEncoder9CCOMCoderD0Ev # -- Begin function _ZN9NCompress8NDeflate8NEncoder9CCOMCoderD0Ev
	.p2align	5
	.type	_ZN9NCompress8NDeflate8NEncoder9CCOMCoderD0Ev,@function
_ZN9NCompress8NDeflate8NEncoder9CCOMCoderD0Ev: # @_ZN9NCompress8NDeflate8NEncoder9CCOMCoderD0Ev
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	addi.d	$a0, $a0, 24
	pcaddu18i	$ra, %call36(_ZN9NCompress8NDeflate8NEncoder6CCoderD2Ev)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 9
	ori	$a1, $a0, 2928
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.Lfunc_end43:
	.size	_ZN9NCompress8NDeflate8NEncoder9CCOMCoderD0Ev, .Lfunc_end43-_ZN9NCompress8NDeflate8NEncoder9CCOMCoderD0Ev
                                        # -- End function
	.section	.text._ZThn8_N9NCompress8NDeflate8NEncoder9CCOMCoder14QueryInterfaceERK4GUIDPPv,"axG",@progbits,_ZThn8_N9NCompress8NDeflate8NEncoder9CCOMCoder14QueryInterfaceERK4GUIDPPv,comdat
	.weak	_ZThn8_N9NCompress8NDeflate8NEncoder9CCOMCoder14QueryInterfaceERK4GUIDPPv # -- Begin function _ZThn8_N9NCompress8NDeflate8NEncoder9CCOMCoder14QueryInterfaceERK4GUIDPPv
	.p2align	5
	.type	_ZThn8_N9NCompress8NDeflate8NEncoder9CCOMCoder14QueryInterfaceERK4GUIDPPv,@function
_ZThn8_N9NCompress8NDeflate8NEncoder9CCOMCoder14QueryInterfaceERK4GUIDPPv: # @_ZThn8_N9NCompress8NDeflate8NEncoder9CCOMCoder14QueryInterfaceERK4GUIDPPv
	.cfi_startproc
# %bb.0:
	addi.d	$a0, $a0, -8
	pcaddu18i	$t8, %call36(_ZN9NCompress8NDeflate8NEncoder9CCOMCoder14QueryInterfaceERK4GUIDPPv)
	jr	$t8
.Lfunc_end44:
	.size	_ZThn8_N9NCompress8NDeflate8NEncoder9CCOMCoder14QueryInterfaceERK4GUIDPPv, .Lfunc_end44-_ZThn8_N9NCompress8NDeflate8NEncoder9CCOMCoder14QueryInterfaceERK4GUIDPPv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZThn8_N9NCompress8NDeflate8NEncoder9CCOMCoder6AddRefEv,"axG",@progbits,_ZThn8_N9NCompress8NDeflate8NEncoder9CCOMCoder6AddRefEv,comdat
	.weak	_ZThn8_N9NCompress8NDeflate8NEncoder9CCOMCoder6AddRefEv # -- Begin function _ZThn8_N9NCompress8NDeflate8NEncoder9CCOMCoder6AddRefEv
	.p2align	5
	.type	_ZThn8_N9NCompress8NDeflate8NEncoder9CCOMCoder6AddRefEv,@function
_ZThn8_N9NCompress8NDeflate8NEncoder9CCOMCoder6AddRefEv: # @_ZThn8_N9NCompress8NDeflate8NEncoder9CCOMCoder6AddRefEv
	.cfi_startproc
# %bb.0:
	ld.w	$a1, $a0, 8
	addi.w	$a1, $a1, 1
	st.w	$a1, $a0, 8
	move	$a0, $a1
	ret
.Lfunc_end45:
	.size	_ZThn8_N9NCompress8NDeflate8NEncoder9CCOMCoder6AddRefEv, .Lfunc_end45-_ZThn8_N9NCompress8NDeflate8NEncoder9CCOMCoder6AddRefEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZThn8_N9NCompress8NDeflate8NEncoder9CCOMCoder7ReleaseEv,"axG",@progbits,_ZThn8_N9NCompress8NDeflate8NEncoder9CCOMCoder7ReleaseEv,comdat
	.weak	_ZThn8_N9NCompress8NDeflate8NEncoder9CCOMCoder7ReleaseEv # -- Begin function _ZThn8_N9NCompress8NDeflate8NEncoder9CCOMCoder7ReleaseEv
	.p2align	5
	.type	_ZThn8_N9NCompress8NDeflate8NEncoder9CCOMCoder7ReleaseEv,@function
_ZThn8_N9NCompress8NDeflate8NEncoder9CCOMCoder7ReleaseEv: # @_ZThn8_N9NCompress8NDeflate8NEncoder9CCOMCoder7ReleaseEv
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	ld.w	$a1, $a0, 8
	addi.w	$fp, $a1, -1
	st.w	$fp, $a0, 8
	bnez	$fp, .LBB46_2
# %bb.1:
	ld.d	$a1, $a0, -8
	ld.d	$a1, $a1, 32
	addi.d	$a0, $a0, -8
	jirl	$ra, $a1, 0
.LBB46_2:                               # %_ZN9NCompress8NDeflate8NEncoder9CCOMCoder7ReleaseEv.exit
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end46:
	.size	_ZThn8_N9NCompress8NDeflate8NEncoder9CCOMCoder7ReleaseEv, .Lfunc_end46-_ZThn8_N9NCompress8NDeflate8NEncoder9CCOMCoder7ReleaseEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZThn8_N9NCompress8NDeflate8NEncoder9CCOMCoderD1Ev,"axG",@progbits,_ZThn8_N9NCompress8NDeflate8NEncoder9CCOMCoderD1Ev,comdat
	.weak	_ZThn8_N9NCompress8NDeflate8NEncoder9CCOMCoderD1Ev # -- Begin function _ZThn8_N9NCompress8NDeflate8NEncoder9CCOMCoderD1Ev
	.p2align	5
	.type	_ZThn8_N9NCompress8NDeflate8NEncoder9CCOMCoderD1Ev,@function
_ZThn8_N9NCompress8NDeflate8NEncoder9CCOMCoderD1Ev: # @_ZThn8_N9NCompress8NDeflate8NEncoder9CCOMCoderD1Ev
# %bb.0:
	addi.d	$a0, $a0, 16
	pcaddu18i	$t8, %call36(_ZN9NCompress8NDeflate8NEncoder6CCoderD2Ev)
	jr	$t8
.Lfunc_end47:
	.size	_ZThn8_N9NCompress8NDeflate8NEncoder9CCOMCoderD1Ev, .Lfunc_end47-_ZThn8_N9NCompress8NDeflate8NEncoder9CCOMCoderD1Ev
                                        # -- End function
	.section	.text._ZThn8_N9NCompress8NDeflate8NEncoder9CCOMCoderD0Ev,"axG",@progbits,_ZThn8_N9NCompress8NDeflate8NEncoder9CCOMCoderD0Ev,comdat
	.weak	_ZThn8_N9NCompress8NDeflate8NEncoder9CCOMCoderD0Ev # -- Begin function _ZThn8_N9NCompress8NDeflate8NEncoder9CCOMCoderD0Ev
	.p2align	5
	.type	_ZThn8_N9NCompress8NDeflate8NEncoder9CCOMCoderD0Ev,@function
_ZThn8_N9NCompress8NDeflate8NEncoder9CCOMCoderD0Ev: # @_ZThn8_N9NCompress8NDeflate8NEncoder9CCOMCoderD0Ev
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	addi.d	$fp, $a0, -8
	addi.d	$a0, $a0, 16
	pcaddu18i	$ra, %call36(_ZN9NCompress8NDeflate8NEncoder6CCoderD2Ev)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 9
	ori	$a1, $a0, 2928
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.Lfunc_end48:
	.size	_ZThn8_N9NCompress8NDeflate8NEncoder9CCOMCoderD0Ev, .Lfunc_end48-_ZThn8_N9NCompress8NDeflate8NEncoder9CCOMCoderD0Ev
                                        # -- End function
	.section	.text._ZN9NCompress8NDeflate8NEncoder11CCOMCoder6414QueryInterfaceERK4GUIDPPv,"axG",@progbits,_ZN9NCompress8NDeflate8NEncoder11CCOMCoder6414QueryInterfaceERK4GUIDPPv,comdat
	.weak	_ZN9NCompress8NDeflate8NEncoder11CCOMCoder6414QueryInterfaceERK4GUIDPPv # -- Begin function _ZN9NCompress8NDeflate8NEncoder11CCOMCoder6414QueryInterfaceERK4GUIDPPv
	.p2align	5
	.type	_ZN9NCompress8NDeflate8NEncoder11CCOMCoder6414QueryInterfaceERK4GUIDPPv,@function
_ZN9NCompress8NDeflate8NEncoder11CCOMCoder6414QueryInterfaceERK4GUIDPPv: # @_ZN9NCompress8NDeflate8NEncoder11CCOMCoder6414QueryInterfaceERK4GUIDPPv
	.cfi_startproc
# %bb.0:
	ld.bu	$a4, $a1, 0
	pcalau12i	$a3, %got_pc_hi20(IID_IUnknown)
	ld.d	$a3, $a3, %got_pc_lo12(IID_IUnknown)
	ld.bu	$a5, $a3, 0
	bne	$a4, $a5, .LBB49_16
# %bb.1:
	ld.bu	$a5, $a1, 1
	ld.bu	$a6, $a3, 1
	bne	$a5, $a6, .LBB49_16
# %bb.2:
	ld.bu	$a5, $a1, 2
	ld.bu	$a6, $a3, 2
	bne	$a5, $a6, .LBB49_16
# %bb.3:
	ld.bu	$a5, $a1, 3
	ld.bu	$a6, $a3, 3
	bne	$a5, $a6, .LBB49_16
# %bb.4:
	ld.bu	$a5, $a1, 4
	ld.bu	$a6, $a3, 4
	bne	$a5, $a6, .LBB49_16
# %bb.5:
	ld.bu	$a5, $a1, 5
	ld.bu	$a6, $a3, 5
	bne	$a5, $a6, .LBB49_16
# %bb.6:
	ld.bu	$a5, $a1, 6
	ld.bu	$a6, $a3, 6
	bne	$a5, $a6, .LBB49_16
# %bb.7:
	ld.bu	$a5, $a1, 7
	ld.bu	$a6, $a3, 7
	bne	$a5, $a6, .LBB49_16
# %bb.8:
	ld.bu	$a5, $a1, 8
	ld.bu	$a6, $a3, 8
	bne	$a5, $a6, .LBB49_16
# %bb.9:
	ld.bu	$a5, $a1, 9
	ld.bu	$a6, $a3, 9
	bne	$a5, $a6, .LBB49_16
# %bb.10:
	ld.bu	$a5, $a1, 10
	ld.bu	$a6, $a3, 10
	bne	$a5, $a6, .LBB49_16
# %bb.11:
	ld.bu	$a5, $a1, 11
	ld.bu	$a6, $a3, 11
	bne	$a5, $a6, .LBB49_16
# %bb.12:
	ld.bu	$a5, $a1, 12
	ld.bu	$a6, $a3, 12
	bne	$a5, $a6, .LBB49_16
# %bb.13:
	ld.bu	$a5, $a1, 13
	ld.bu	$a6, $a3, 13
	bne	$a5, $a6, .LBB49_16
# %bb.14:
	ld.bu	$a5, $a1, 14
	ld.bu	$a6, $a3, 14
	bne	$a5, $a6, .LBB49_16
# %bb.15:                               # %_ZeqRK4GUIDS1_.exit
	ld.bu	$a5, $a1, 15
	ld.bu	$a3, $a3, 15
	beq	$a5, $a3, .LBB49_32
.LBB49_16:                              # %_ZeqRK4GUIDS1_.exit.thread
	pcalau12i	$a3, %got_pc_hi20(IID_ICompressSetCoderProperties)
	ld.d	$a5, $a3, %got_pc_lo12(IID_ICompressSetCoderProperties)
	ld.bu	$a6, $a5, 0
	lu12i.w	$a3, -524284
	ori	$a3, $a3, 2
	bne	$a4, $a6, .LBB49_33
# %bb.17:
	ld.bu	$a4, $a1, 1
	ld.bu	$a6, $a5, 1
	bne	$a4, $a6, .LBB49_33
# %bb.18:
	ld.bu	$a4, $a1, 2
	ld.bu	$a6, $a5, 2
	bne	$a4, $a6, .LBB49_33
# %bb.19:
	ld.bu	$a4, $a1, 3
	ld.bu	$a6, $a5, 3
	bne	$a4, $a6, .LBB49_33
# %bb.20:
	ld.bu	$a4, $a1, 4
	ld.bu	$a6, $a5, 4
	bne	$a4, $a6, .LBB49_33
# %bb.21:
	ld.bu	$a4, $a1, 5
	ld.bu	$a6, $a5, 5
	bne	$a4, $a6, .LBB49_33
# %bb.22:
	ld.bu	$a4, $a1, 6
	ld.bu	$a6, $a5, 6
	bne	$a4, $a6, .LBB49_33
# %bb.23:
	ld.bu	$a4, $a1, 7
	ld.bu	$a6, $a5, 7
	bne	$a4, $a6, .LBB49_33
# %bb.24:
	ld.bu	$a4, $a1, 8
	ld.bu	$a6, $a5, 8
	bne	$a4, $a6, .LBB49_33
# %bb.25:
	ld.bu	$a4, $a1, 9
	ld.bu	$a6, $a5, 9
	bne	$a4, $a6, .LBB49_33
# %bb.26:
	ld.bu	$a4, $a1, 10
	ld.bu	$a6, $a5, 10
	bne	$a4, $a6, .LBB49_33
# %bb.27:
	ld.bu	$a4, $a1, 11
	ld.bu	$a6, $a5, 11
	bne	$a4, $a6, .LBB49_33
# %bb.28:
	ld.bu	$a4, $a1, 12
	ld.bu	$a6, $a5, 12
	bne	$a4, $a6, .LBB49_33
# %bb.29:
	ld.bu	$a4, $a1, 13
	ld.bu	$a6, $a5, 13
	bne	$a4, $a6, .LBB49_33
# %bb.30:
	ld.bu	$a4, $a1, 14
	ld.bu	$a6, $a5, 14
	bne	$a4, $a6, .LBB49_33
# %bb.31:                               # %_ZeqRK4GUIDS1_.exit24
	ld.bu	$a1, $a1, 15
	ld.bu	$a4, $a5, 15
	bne	$a1, $a4, .LBB49_33
.LBB49_32:                              # %_ZeqRK4GUIDS1_.exit24.thread.sink.split
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	ld.d	$a1, $a0, 0
	addi.d	$a3, $a0, 8
	st.d	$a3, $a2, 0
	ld.d	$a1, $a1, 8
	jirl	$ra, $a1, 0
	move	$a3, $zero
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
.LBB49_33:                              # %_ZeqRK4GUIDS1_.exit24.thread
	move	$a0, $a3
	ret
.Lfunc_end49:
	.size	_ZN9NCompress8NDeflate8NEncoder11CCOMCoder6414QueryInterfaceERK4GUIDPPv, .Lfunc_end49-_ZN9NCompress8NDeflate8NEncoder11CCOMCoder6414QueryInterfaceERK4GUIDPPv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9NCompress8NDeflate8NEncoder11CCOMCoder646AddRefEv,"axG",@progbits,_ZN9NCompress8NDeflate8NEncoder11CCOMCoder646AddRefEv,comdat
	.weak	_ZN9NCompress8NDeflate8NEncoder11CCOMCoder646AddRefEv # -- Begin function _ZN9NCompress8NDeflate8NEncoder11CCOMCoder646AddRefEv
	.p2align	5
	.type	_ZN9NCompress8NDeflate8NEncoder11CCOMCoder646AddRefEv,@function
_ZN9NCompress8NDeflate8NEncoder11CCOMCoder646AddRefEv: # @_ZN9NCompress8NDeflate8NEncoder11CCOMCoder646AddRefEv
# %bb.0:
	ld.w	$a1, $a0, 16
	addi.w	$a1, $a1, 1
	st.w	$a1, $a0, 16
	move	$a0, $a1
	ret
.Lfunc_end50:
	.size	_ZN9NCompress8NDeflate8NEncoder11CCOMCoder646AddRefEv, .Lfunc_end50-_ZN9NCompress8NDeflate8NEncoder11CCOMCoder646AddRefEv
                                        # -- End function
	.section	.text._ZN9NCompress8NDeflate8NEncoder11CCOMCoder647ReleaseEv,"axG",@progbits,_ZN9NCompress8NDeflate8NEncoder11CCOMCoder647ReleaseEv,comdat
	.weak	_ZN9NCompress8NDeflate8NEncoder11CCOMCoder647ReleaseEv # -- Begin function _ZN9NCompress8NDeflate8NEncoder11CCOMCoder647ReleaseEv
	.p2align	5
	.type	_ZN9NCompress8NDeflate8NEncoder11CCOMCoder647ReleaseEv,@function
_ZN9NCompress8NDeflate8NEncoder11CCOMCoder647ReleaseEv: # @_ZN9NCompress8NDeflate8NEncoder11CCOMCoder647ReleaseEv
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	ld.w	$a1, $a0, 16
	addi.w	$fp, $a1, -1
	st.w	$fp, $a0, 16
	bnez	$fp, .LBB51_2
# %bb.1:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 32
	jirl	$ra, $a1, 0
.LBB51_2:
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end51:
	.size	_ZN9NCompress8NDeflate8NEncoder11CCOMCoder647ReleaseEv, .Lfunc_end51-_ZN9NCompress8NDeflate8NEncoder11CCOMCoder647ReleaseEv
                                        # -- End function
	.section	.text._ZN9NCompress8NDeflate8NEncoder11CCOMCoder64D2Ev,"axG",@progbits,_ZN9NCompress8NDeflate8NEncoder11CCOMCoder64D2Ev,comdat
	.weak	_ZN9NCompress8NDeflate8NEncoder11CCOMCoder64D2Ev # -- Begin function _ZN9NCompress8NDeflate8NEncoder11CCOMCoder64D2Ev
	.p2align	5
	.type	_ZN9NCompress8NDeflate8NEncoder11CCOMCoder64D2Ev,@function
_ZN9NCompress8NDeflate8NEncoder11CCOMCoder64D2Ev: # @_ZN9NCompress8NDeflate8NEncoder11CCOMCoder64D2Ev
# %bb.0:
	addi.d	$a0, $a0, 24
	pcaddu18i	$t8, %call36(_ZN9NCompress8NDeflate8NEncoder6CCoderD2Ev)
	jr	$t8
.Lfunc_end52:
	.size	_ZN9NCompress8NDeflate8NEncoder11CCOMCoder64D2Ev, .Lfunc_end52-_ZN9NCompress8NDeflate8NEncoder11CCOMCoder64D2Ev
                                        # -- End function
	.section	.text._ZN9NCompress8NDeflate8NEncoder11CCOMCoder64D0Ev,"axG",@progbits,_ZN9NCompress8NDeflate8NEncoder11CCOMCoder64D0Ev,comdat
	.weak	_ZN9NCompress8NDeflate8NEncoder11CCOMCoder64D0Ev # -- Begin function _ZN9NCompress8NDeflate8NEncoder11CCOMCoder64D0Ev
	.p2align	5
	.type	_ZN9NCompress8NDeflate8NEncoder11CCOMCoder64D0Ev,@function
_ZN9NCompress8NDeflate8NEncoder11CCOMCoder64D0Ev: # @_ZN9NCompress8NDeflate8NEncoder11CCOMCoder64D0Ev
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	addi.d	$a0, $a0, 24
	pcaddu18i	$ra, %call36(_ZN9NCompress8NDeflate8NEncoder6CCoderD2Ev)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 9
	ori	$a1, $a0, 2928
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.Lfunc_end53:
	.size	_ZN9NCompress8NDeflate8NEncoder11CCOMCoder64D0Ev, .Lfunc_end53-_ZN9NCompress8NDeflate8NEncoder11CCOMCoder64D0Ev
                                        # -- End function
	.section	.text._ZThn8_N9NCompress8NDeflate8NEncoder11CCOMCoder6414QueryInterfaceERK4GUIDPPv,"axG",@progbits,_ZThn8_N9NCompress8NDeflate8NEncoder11CCOMCoder6414QueryInterfaceERK4GUIDPPv,comdat
	.weak	_ZThn8_N9NCompress8NDeflate8NEncoder11CCOMCoder6414QueryInterfaceERK4GUIDPPv # -- Begin function _ZThn8_N9NCompress8NDeflate8NEncoder11CCOMCoder6414QueryInterfaceERK4GUIDPPv
	.p2align	5
	.type	_ZThn8_N9NCompress8NDeflate8NEncoder11CCOMCoder6414QueryInterfaceERK4GUIDPPv,@function
_ZThn8_N9NCompress8NDeflate8NEncoder11CCOMCoder6414QueryInterfaceERK4GUIDPPv: # @_ZThn8_N9NCompress8NDeflate8NEncoder11CCOMCoder6414QueryInterfaceERK4GUIDPPv
	.cfi_startproc
# %bb.0:
	addi.d	$a0, $a0, -8
	pcaddu18i	$t8, %call36(_ZN9NCompress8NDeflate8NEncoder11CCOMCoder6414QueryInterfaceERK4GUIDPPv)
	jr	$t8
.Lfunc_end54:
	.size	_ZThn8_N9NCompress8NDeflate8NEncoder11CCOMCoder6414QueryInterfaceERK4GUIDPPv, .Lfunc_end54-_ZThn8_N9NCompress8NDeflate8NEncoder11CCOMCoder6414QueryInterfaceERK4GUIDPPv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZThn8_N9NCompress8NDeflate8NEncoder11CCOMCoder646AddRefEv,"axG",@progbits,_ZThn8_N9NCompress8NDeflate8NEncoder11CCOMCoder646AddRefEv,comdat
	.weak	_ZThn8_N9NCompress8NDeflate8NEncoder11CCOMCoder646AddRefEv # -- Begin function _ZThn8_N9NCompress8NDeflate8NEncoder11CCOMCoder646AddRefEv
	.p2align	5
	.type	_ZThn8_N9NCompress8NDeflate8NEncoder11CCOMCoder646AddRefEv,@function
_ZThn8_N9NCompress8NDeflate8NEncoder11CCOMCoder646AddRefEv: # @_ZThn8_N9NCompress8NDeflate8NEncoder11CCOMCoder646AddRefEv
	.cfi_startproc
# %bb.0:
	ld.w	$a1, $a0, 8
	addi.w	$a1, $a1, 1
	st.w	$a1, $a0, 8
	move	$a0, $a1
	ret
.Lfunc_end55:
	.size	_ZThn8_N9NCompress8NDeflate8NEncoder11CCOMCoder646AddRefEv, .Lfunc_end55-_ZThn8_N9NCompress8NDeflate8NEncoder11CCOMCoder646AddRefEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZThn8_N9NCompress8NDeflate8NEncoder11CCOMCoder647ReleaseEv,"axG",@progbits,_ZThn8_N9NCompress8NDeflate8NEncoder11CCOMCoder647ReleaseEv,comdat
	.weak	_ZThn8_N9NCompress8NDeflate8NEncoder11CCOMCoder647ReleaseEv # -- Begin function _ZThn8_N9NCompress8NDeflate8NEncoder11CCOMCoder647ReleaseEv
	.p2align	5
	.type	_ZThn8_N9NCompress8NDeflate8NEncoder11CCOMCoder647ReleaseEv,@function
_ZThn8_N9NCompress8NDeflate8NEncoder11CCOMCoder647ReleaseEv: # @_ZThn8_N9NCompress8NDeflate8NEncoder11CCOMCoder647ReleaseEv
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	ld.w	$a1, $a0, 8
	addi.w	$fp, $a1, -1
	st.w	$fp, $a0, 8
	bnez	$fp, .LBB56_2
# %bb.1:
	ld.d	$a1, $a0, -8
	ld.d	$a1, $a1, 32
	addi.d	$a0, $a0, -8
	jirl	$ra, $a1, 0
.LBB56_2:                               # %_ZN9NCompress8NDeflate8NEncoder11CCOMCoder647ReleaseEv.exit
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end56:
	.size	_ZThn8_N9NCompress8NDeflate8NEncoder11CCOMCoder647ReleaseEv, .Lfunc_end56-_ZThn8_N9NCompress8NDeflate8NEncoder11CCOMCoder647ReleaseEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZThn8_N9NCompress8NDeflate8NEncoder11CCOMCoder64D1Ev,"axG",@progbits,_ZThn8_N9NCompress8NDeflate8NEncoder11CCOMCoder64D1Ev,comdat
	.weak	_ZThn8_N9NCompress8NDeflate8NEncoder11CCOMCoder64D1Ev # -- Begin function _ZThn8_N9NCompress8NDeflate8NEncoder11CCOMCoder64D1Ev
	.p2align	5
	.type	_ZThn8_N9NCompress8NDeflate8NEncoder11CCOMCoder64D1Ev,@function
_ZThn8_N9NCompress8NDeflate8NEncoder11CCOMCoder64D1Ev: # @_ZThn8_N9NCompress8NDeflate8NEncoder11CCOMCoder64D1Ev
# %bb.0:
	addi.d	$a0, $a0, 16
	pcaddu18i	$t8, %call36(_ZN9NCompress8NDeflate8NEncoder6CCoderD2Ev)
	jr	$t8
.Lfunc_end57:
	.size	_ZThn8_N9NCompress8NDeflate8NEncoder11CCOMCoder64D1Ev, .Lfunc_end57-_ZThn8_N9NCompress8NDeflate8NEncoder11CCOMCoder64D1Ev
                                        # -- End function
	.section	.text._ZThn8_N9NCompress8NDeflate8NEncoder11CCOMCoder64D0Ev,"axG",@progbits,_ZThn8_N9NCompress8NDeflate8NEncoder11CCOMCoder64D0Ev,comdat
	.weak	_ZThn8_N9NCompress8NDeflate8NEncoder11CCOMCoder64D0Ev # -- Begin function _ZThn8_N9NCompress8NDeflate8NEncoder11CCOMCoder64D0Ev
	.p2align	5
	.type	_ZThn8_N9NCompress8NDeflate8NEncoder11CCOMCoder64D0Ev,@function
_ZThn8_N9NCompress8NDeflate8NEncoder11CCOMCoder64D0Ev: # @_ZThn8_N9NCompress8NDeflate8NEncoder11CCOMCoder64D0Ev
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	addi.d	$fp, $a0, -8
	addi.d	$a0, $a0, 16
	pcaddu18i	$ra, %call36(_ZN9NCompress8NDeflate8NEncoder6CCoderD2Ev)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 9
	ori	$a1, $a0, 2928
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.Lfunc_end58:
	.size	_ZThn8_N9NCompress8NDeflate8NEncoder11CCOMCoder64D0Ev, .Lfunc_end58-_ZThn8_N9NCompress8NDeflate8NEncoder11CCOMCoder64D0Ev
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZN9NCompress8NDeflate8NEncoderL7SzAllocEPvm
	.type	_ZN9NCompress8NDeflate8NEncoderL7SzAllocEPvm,@function
_ZN9NCompress8NDeflate8NEncoderL7SzAllocEPvm: # @_ZN9NCompress8NDeflate8NEncoderL7SzAllocEPvm
	.cfi_startproc
# %bb.0:
	move	$a0, $a1
	pcaddu18i	$t8, %call36(MyAlloc)
	jr	$t8
.Lfunc_end59:
	.size	_ZN9NCompress8NDeflate8NEncoderL7SzAllocEPvm, .Lfunc_end59-_ZN9NCompress8NDeflate8NEncoderL7SzAllocEPvm
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZN9NCompress8NDeflate8NEncoderL6SzFreeEPvS2_
	.type	_ZN9NCompress8NDeflate8NEncoderL6SzFreeEPvS2_,@function
_ZN9NCompress8NDeflate8NEncoderL6SzFreeEPvS2_: # @_ZN9NCompress8NDeflate8NEncoderL6SzFreeEPvS2_
	.cfi_startproc
# %bb.0:
	move	$a0, $a1
	pcaddu18i	$t8, %call36(MyFree)
	jr	$t8
.Lfunc_end60:
	.size	_ZN9NCompress8NDeflate8NEncoderL6SzFreeEPvS2_, .Lfunc_end60-_ZN9NCompress8NDeflate8NEncoderL6SzFreeEPvS2_
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _GLOBAL__sub_I_DeflateEncoder.cpp
.LCPI61_0:
	.dword	578721382704613384              # 0x808080808080808
	.dword	651061555542690057              # 0x909090909090909
	.section	.text.startup,"ax",@progbits
	.p2align	5
	.type	_GLOBAL__sub_I_DeflateEncoder.cpp,@function
_GLOBAL__sub_I_DeflateEncoder.cpp:      # @_GLOBAL__sub_I_DeflateEncoder.cpp
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(_ZN9NCompress8NDeflateL16kLenDirectBits32E)
	addi.d	$s0, $a0, %pc_lo12(_ZN9NCompress8NDeflateL16kLenDirectBits32E)
	ori	$s1, $zero, 1
	pcalau12i	$a0, %pc_hi20(_ZN9NCompress8NDeflateL11kLenStart32E)
	addi.d	$s2, $a0, %pc_lo12(_ZN9NCompress8NDeflateL11kLenStart32E)
	pcalau12i	$a0, %pc_hi20(_ZN9NCompress8NDeflate8NEncoderL10g_LenSlotsE)
	addi.d	$s3, $a0, %pc_lo12(_ZN9NCompress8NDeflate8NEncoderL10g_LenSlotsE)
	move	$fp, $zero
	ori	$s4, $zero, 29
	.p2align	4, , 16
.LBB61_1:                               # %._crit_edge.i.i
                                        # =>This Inner Loop Header: Depth=1
	ldx.bu	$a0, $s0, $fp
	ldx.bu	$a1, $s2, $fp
	sll.w	$a2, $s1, $a0
	add.d	$a0, $s3, $a1
	slt	$a1, $s1, $a2
	maskeqz	$a2, $a2, $a1
	masknez	$a1, $s1, $a1
	or	$a2, $a2, $a1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 1
	bne	$fp, $s4, .LBB61_1
# %bb.2:                                # %__cxx_global_var_init.exit
	pcalau12i	$a0, %pc_hi20(_ZN9NCompress8NDeflate8NEncoderL9g_FastPosE)
	addi.d	$fp, $a0, %pc_lo12(_ZN9NCompress8NDeflate8NEncoderL9g_FastPosE)
	lu12i.w	$a0, 12320
	ori	$a0, $a0, 256
	lu32i.d	$a0, 328708
	lu52i.d	$a0, $a0, 80
	st.d	$a0, $fp, 0
	pcalau12i	$a0, %pc_hi20(.LCPI61_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI61_0)
	lu12i.w	$a0, 24672
	ori	$a0, $a0, 1542
	lu32i.d	$a0, 460551
	lu52i.d	$a0, $a0, 112
	st.d	$a0, $fp, 8
	vst	$vr0, $fp, 16
	lu12i.w	$a0, 41120
	ori	$a0, $a0, 2570
	bstrins.d	$a0, $a0, 59, 32
	st.d	$a0, $fp, 32
	st.d	$a0, $fp, 40
	lu12i.w	$a0, 45232
	ori	$a0, $a0, 2827
	bstrins.d	$a0, $a0, 59, 32
	st.d	$a0, $fp, 48
	st.d	$a0, $fp, 56
	lu12i.w	$a0, 49344
	ori	$a0, $a0, 3084
	bstrins.d	$a0, $a0, 59, 32
	st.d	$a0, $fp, 64
	st.d	$a0, $fp, 72
	st.d	$a0, $fp, 80
	st.d	$a0, $fp, 88
	lu12i.w	$a0, 53456
	ori	$a0, $a0, 3341
	bstrins.d	$a0, $a0, 59, 32
	st.d	$a0, $fp, 120
	st.d	$a0, $fp, 112
	st.d	$a0, $fp, 104
	st.d	$a0, $fp, 96
	lu12i.w	$a0, 57568
	ori	$a0, $a0, 3598
	bstrins.d	$a0, $a0, 59, 32
	st.d	$a0, $fp, 128
	st.d	$a0, $fp, 136
	st.d	$a0, $fp, 144
	st.d	$a0, $fp, 152
	st.d	$a0, $fp, 160
	st.d	$a0, $fp, 168
	st.d	$a0, $fp, 176
	st.d	$a0, $fp, 184
	lu12i.w	$a0, 61680
	ori	$a0, $a0, 3855
	bstrins.d	$a0, $a0, 59, 32
	st.d	$a0, $fp, 248
	st.d	$a0, $fp, 240
	st.d	$a0, $fp, 232
	st.d	$a0, $fp, 224
	st.d	$a0, $fp, 216
	st.d	$a0, $fp, 208
	st.d	$a0, $fp, 200
	st.d	$a0, $fp, 192
	addi.d	$a0, $fp, 256
	ori	$a1, $zero, 16
	ori	$a2, $zero, 128
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 384
	ori	$a1, $zero, 17
	ori	$a2, $zero, 128
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	pcaddu18i	$t8, %call36(memset)
	jr	$t8
.Lfunc_end61:
	.size	_GLOBAL__sub_I_DeflateEncoder.cpp, .Lfunc_end61-_GLOBAL__sub_I_DeflateEncoder.cpp
                                        # -- End function
	.type	_ZN9NCompress8NDeflateL11kLenStart64E,@object # @_ZN9NCompress8NDeflateL11kLenStart64E
	.section	.rodata,"a",@progbits
_ZN9NCompress8NDeflateL11kLenStart64E:
	.asciz	"\000\001\002\003\004\005\006\007\b\n\f\016\020\024\030\034 (08@P`p\200\240\300\340\000\000"
	.size	_ZN9NCompress8NDeflateL11kLenStart64E, 31

	.type	_ZN9NCompress8NDeflateL11kLenStart32E,@object # @_ZN9NCompress8NDeflateL11kLenStart32E
_ZN9NCompress8NDeflateL11kLenStart32E:
	.asciz	"\000\001\002\003\004\005\006\007\b\n\f\016\020\024\030\034 (08@P`p\200\240\300\340\377\000"
	.size	_ZN9NCompress8NDeflateL11kLenStart32E, 31

	.type	_ZN9NCompress8NDeflateL16kLenDirectBits64E,@object # @_ZN9NCompress8NDeflateL16kLenDirectBits64E
_ZN9NCompress8NDeflateL16kLenDirectBits64E:
	.asciz	"\000\000\000\000\000\000\000\000\001\001\001\001\002\002\002\002\003\003\003\003\004\004\004\004\005\005\005\005\020\000"
	.size	_ZN9NCompress8NDeflateL16kLenDirectBits64E, 31

	.type	_ZN9NCompress8NDeflateL16kLenDirectBits32E,@object # @_ZN9NCompress8NDeflateL16kLenDirectBits32E
_ZN9NCompress8NDeflateL16kLenDirectBits32E:
	.asciz	"\000\000\000\000\000\000\000\000\001\001\001\001\002\002\002\002\003\003\003\003\004\004\004\004\005\005\005\005\000\000"
	.size	_ZN9NCompress8NDeflateL16kLenDirectBits32E, 31

	.type	_ZN9NCompress8NDeflate8NEncoderL7g_AllocE,@object # @_ZN9NCompress8NDeflate8NEncoderL7g_AllocE
	.data
	.p2align	3, 0x0
_ZN9NCompress8NDeflate8NEncoderL7g_AllocE:
	.dword	_ZN9NCompress8NDeflate8NEncoderL7SzAllocEPvm
	.dword	_ZN9NCompress8NDeflate8NEncoderL6SzFreeEPvS2_
	.size	_ZN9NCompress8NDeflate8NEncoderL7g_AllocE, 16

	.type	_ZN9NCompress8NDeflateL15kDistDirectBitsE,@object # @_ZN9NCompress8NDeflateL15kDistDirectBitsE
	.section	.rodata.cst32,"aM",@progbits,32
_ZN9NCompress8NDeflateL15kDistDirectBitsE:
	.ascii	"\000\000\000\000\001\001\002\002\003\003\004\004\005\005\006\006\007\007\b\b\t\t\n\n\013\013\f\f\r\r\016\016"
	.size	_ZN9NCompress8NDeflateL15kDistDirectBitsE, 32

	.type	_ZN9NCompress8NDeflate8NEncoderL10g_LenSlotsE,@object # @_ZN9NCompress8NDeflate8NEncoderL10g_LenSlotsE
	.local	_ZN9NCompress8NDeflate8NEncoderL10g_LenSlotsE
	.comm	_ZN9NCompress8NDeflate8NEncoderL10g_LenSlotsE,256,1
	.type	_ZN9NCompress8NDeflateL10kDistStartE,@object # @_ZN9NCompress8NDeflateL10kDistStartE
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
_ZN9NCompress8NDeflateL10kDistStartE:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	6                               # 0x6
	.word	8                               # 0x8
	.word	12                              # 0xc
	.word	16                              # 0x10
	.word	24                              # 0x18
	.word	32                              # 0x20
	.word	48                              # 0x30
	.word	64                              # 0x40
	.word	96                              # 0x60
	.word	128                             # 0x80
	.word	192                             # 0xc0
	.word	256                             # 0x100
	.word	384                             # 0x180
	.word	512                             # 0x200
	.word	768                             # 0x300
	.word	1024                            # 0x400
	.word	1536                            # 0x600
	.word	2048                            # 0x800
	.word	3072                            # 0xc00
	.word	4096                            # 0x1000
	.word	6144                            # 0x1800
	.word	8192                            # 0x2000
	.word	12288                           # 0x3000
	.word	16384                           # 0x4000
	.word	24576                           # 0x6000
	.word	32768                           # 0x8000
	.word	49152                           # 0xc000
	.size	_ZN9NCompress8NDeflateL10kDistStartE, 128

	.type	_ZTI19COutBufferException,@object # @_ZTI19COutBufferException
	.section	.data.rel.ro._ZTI19COutBufferException,"awG",@progbits,_ZTI19COutBufferException,comdat
	.weak	_ZTI19COutBufferException
	.p2align	3, 0x0
_ZTI19COutBufferException:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS19COutBufferException
	.dword	_ZTI16CSystemException
	.size	_ZTI19COutBufferException, 24

	.type	_ZTS19COutBufferException,@object # @_ZTS19COutBufferException
	.section	.rodata._ZTS19COutBufferException,"aG",@progbits,_ZTS19COutBufferException,comdat
	.weak	_ZTS19COutBufferException
_ZTS19COutBufferException:
	.asciz	"19COutBufferException"
	.size	_ZTS19COutBufferException, 22

	.type	_ZTI16CSystemException,@object  # @_ZTI16CSystemException
	.section	.data.rel.ro._ZTI16CSystemException,"awG",@progbits,_ZTI16CSystemException,comdat
	.weak	_ZTI16CSystemException
	.p2align	3, 0x0
_ZTI16CSystemException:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTS16CSystemException
	.size	_ZTI16CSystemException, 16

	.type	_ZTS16CSystemException,@object  # @_ZTS16CSystemException
	.section	.rodata._ZTS16CSystemException,"aG",@progbits,_ZTS16CSystemException,comdat
	.weak	_ZTS16CSystemException
_ZTS16CSystemException:
	.asciz	"16CSystemException"
	.size	_ZTS16CSystemException, 19

	.type	_ZTVN9NCompress8NDeflate8NEncoder9CCOMCoderE,@object # @_ZTVN9NCompress8NDeflate8NEncoder9CCOMCoderE
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTVN9NCompress8NDeflate8NEncoder9CCOMCoderE
	.p2align	3, 0x0
_ZTVN9NCompress8NDeflate8NEncoder9CCOMCoderE:
	.dword	0
	.dword	_ZTIN9NCompress8NDeflate8NEncoder9CCOMCoderE
	.dword	_ZN9NCompress8NDeflate8NEncoder9CCOMCoder14QueryInterfaceERK4GUIDPPv
	.dword	_ZN9NCompress8NDeflate8NEncoder9CCOMCoder6AddRefEv
	.dword	_ZN9NCompress8NDeflate8NEncoder9CCOMCoder7ReleaseEv
	.dword	_ZN9NCompress8NDeflate8NEncoder9CCOMCoderD2Ev
	.dword	_ZN9NCompress8NDeflate8NEncoder9CCOMCoderD0Ev
	.dword	_ZN9NCompress8NDeflate8NEncoder9CCOMCoder4CodeEP19ISequentialInStreamP20ISequentialOutStreamPKyS8_P21ICompressProgressInfo
	.dword	_ZN9NCompress8NDeflate8NEncoder9CCOMCoder18SetCoderPropertiesEPKjPK14tagPROPVARIANTj
	.dword	-8
	.dword	_ZTIN9NCompress8NDeflate8NEncoder9CCOMCoderE
	.dword	_ZThn8_N9NCompress8NDeflate8NEncoder9CCOMCoder14QueryInterfaceERK4GUIDPPv
	.dword	_ZThn8_N9NCompress8NDeflate8NEncoder9CCOMCoder6AddRefEv
	.dword	_ZThn8_N9NCompress8NDeflate8NEncoder9CCOMCoder7ReleaseEv
	.dword	_ZThn8_N9NCompress8NDeflate8NEncoder9CCOMCoderD1Ev
	.dword	_ZThn8_N9NCompress8NDeflate8NEncoder9CCOMCoderD0Ev
	.dword	_ZThn8_N9NCompress8NDeflate8NEncoder9CCOMCoder18SetCoderPropertiesEPKjPK14tagPROPVARIANTj
	.size	_ZTVN9NCompress8NDeflate8NEncoder9CCOMCoderE, 136

	.type	_ZTIN9NCompress8NDeflate8NEncoder9CCOMCoderE,@object # @_ZTIN9NCompress8NDeflate8NEncoder9CCOMCoderE
	.globl	_ZTIN9NCompress8NDeflate8NEncoder9CCOMCoderE
	.p2align	3, 0x0
_ZTIN9NCompress8NDeflate8NEncoder9CCOMCoderE:
	.dword	_ZTVN10__cxxabiv121__vmi_class_type_infoE+16
	.dword	_ZTSN9NCompress8NDeflate8NEncoder9CCOMCoderE
	.word	1                               # 0x1
	.word	4                               # 0x4
	.dword	_ZTI14ICompressCoder
	.dword	2                               # 0x2
	.dword	_ZTI27ICompressSetCoderProperties
	.dword	2050                            # 0x802
	.dword	_ZTI13CMyUnknownImp
	.dword	4098                            # 0x1002
	.dword	_ZTIN9NCompress8NDeflate8NEncoder6CCoderE
	.dword	6146                            # 0x1802
	.size	_ZTIN9NCompress8NDeflate8NEncoder9CCOMCoderE, 88

	.type	_ZTSN9NCompress8NDeflate8NEncoder9CCOMCoderE,@object # @_ZTSN9NCompress8NDeflate8NEncoder9CCOMCoderE
	.section	.rodata,"a",@progbits
	.globl	_ZTSN9NCompress8NDeflate8NEncoder9CCOMCoderE
_ZTSN9NCompress8NDeflate8NEncoder9CCOMCoderE:
	.asciz	"N9NCompress8NDeflate8NEncoder9CCOMCoderE"
	.size	_ZTSN9NCompress8NDeflate8NEncoder9CCOMCoderE, 41

	.type	_ZTI14ICompressCoder,@object    # @_ZTI14ICompressCoder
	.section	.data.rel.ro._ZTI14ICompressCoder,"awG",@progbits,_ZTI14ICompressCoder,comdat
	.weak	_ZTI14ICompressCoder
	.p2align	3, 0x0
_ZTI14ICompressCoder:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS14ICompressCoder
	.dword	_ZTI8IUnknown
	.size	_ZTI14ICompressCoder, 24

	.type	_ZTS14ICompressCoder,@object    # @_ZTS14ICompressCoder
	.section	.rodata._ZTS14ICompressCoder,"aG",@progbits,_ZTS14ICompressCoder,comdat
	.weak	_ZTS14ICompressCoder
_ZTS14ICompressCoder:
	.asciz	"14ICompressCoder"
	.size	_ZTS14ICompressCoder, 17

	.type	_ZTI8IUnknown,@object           # @_ZTI8IUnknown
	.section	.data.rel.ro._ZTI8IUnknown,"awG",@progbits,_ZTI8IUnknown,comdat
	.weak	_ZTI8IUnknown
	.p2align	3, 0x0
_ZTI8IUnknown:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTS8IUnknown
	.size	_ZTI8IUnknown, 16

	.type	_ZTS8IUnknown,@object           # @_ZTS8IUnknown
	.section	.rodata._ZTS8IUnknown,"aG",@progbits,_ZTS8IUnknown,comdat
	.weak	_ZTS8IUnknown
_ZTS8IUnknown:
	.asciz	"8IUnknown"
	.size	_ZTS8IUnknown, 10

	.type	_ZTI27ICompressSetCoderProperties,@object # @_ZTI27ICompressSetCoderProperties
	.section	.data.rel.ro._ZTI27ICompressSetCoderProperties,"awG",@progbits,_ZTI27ICompressSetCoderProperties,comdat
	.weak	_ZTI27ICompressSetCoderProperties
	.p2align	3, 0x0
_ZTI27ICompressSetCoderProperties:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS27ICompressSetCoderProperties
	.dword	_ZTI8IUnknown
	.size	_ZTI27ICompressSetCoderProperties, 24

	.type	_ZTS27ICompressSetCoderProperties,@object # @_ZTS27ICompressSetCoderProperties
	.section	.rodata._ZTS27ICompressSetCoderProperties,"aG",@progbits,_ZTS27ICompressSetCoderProperties,comdat
	.weak	_ZTS27ICompressSetCoderProperties
_ZTS27ICompressSetCoderProperties:
	.asciz	"27ICompressSetCoderProperties"
	.size	_ZTS27ICompressSetCoderProperties, 30

	.type	_ZTI13CMyUnknownImp,@object     # @_ZTI13CMyUnknownImp
	.section	.data.rel.ro._ZTI13CMyUnknownImp,"awG",@progbits,_ZTI13CMyUnknownImp,comdat
	.weak	_ZTI13CMyUnknownImp
	.p2align	3, 0x0
_ZTI13CMyUnknownImp:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTS13CMyUnknownImp
	.size	_ZTI13CMyUnknownImp, 16

	.type	_ZTS13CMyUnknownImp,@object     # @_ZTS13CMyUnknownImp
	.section	.rodata._ZTS13CMyUnknownImp,"aG",@progbits,_ZTS13CMyUnknownImp,comdat
	.weak	_ZTS13CMyUnknownImp
_ZTS13CMyUnknownImp:
	.asciz	"13CMyUnknownImp"
	.size	_ZTS13CMyUnknownImp, 16

	.type	_ZTIN9NCompress8NDeflate8NEncoder6CCoderE,@object # @_ZTIN9NCompress8NDeflate8NEncoder6CCoderE
	.section	.data.rel.ro._ZTIN9NCompress8NDeflate8NEncoder6CCoderE,"awG",@progbits,_ZTIN9NCompress8NDeflate8NEncoder6CCoderE,comdat
	.weak	_ZTIN9NCompress8NDeflate8NEncoder6CCoderE
	.p2align	3, 0x0
_ZTIN9NCompress8NDeflate8NEncoder6CCoderE:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTSN9NCompress8NDeflate8NEncoder6CCoderE
	.size	_ZTIN9NCompress8NDeflate8NEncoder6CCoderE, 16

	.type	_ZTSN9NCompress8NDeflate8NEncoder6CCoderE,@object # @_ZTSN9NCompress8NDeflate8NEncoder6CCoderE
	.section	.rodata._ZTSN9NCompress8NDeflate8NEncoder6CCoderE,"aG",@progbits,_ZTSN9NCompress8NDeflate8NEncoder6CCoderE,comdat
	.weak	_ZTSN9NCompress8NDeflate8NEncoder6CCoderE
_ZTSN9NCompress8NDeflate8NEncoder6CCoderE:
	.asciz	"N9NCompress8NDeflate8NEncoder6CCoderE"
	.size	_ZTSN9NCompress8NDeflate8NEncoder6CCoderE, 38

	.type	_ZTVN9NCompress8NDeflate8NEncoder11CCOMCoder64E,@object # @_ZTVN9NCompress8NDeflate8NEncoder11CCOMCoder64E
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTVN9NCompress8NDeflate8NEncoder11CCOMCoder64E
	.p2align	3, 0x0
_ZTVN9NCompress8NDeflate8NEncoder11CCOMCoder64E:
	.dword	0
	.dword	_ZTIN9NCompress8NDeflate8NEncoder11CCOMCoder64E
	.dword	_ZN9NCompress8NDeflate8NEncoder11CCOMCoder6414QueryInterfaceERK4GUIDPPv
	.dword	_ZN9NCompress8NDeflate8NEncoder11CCOMCoder646AddRefEv
	.dword	_ZN9NCompress8NDeflate8NEncoder11CCOMCoder647ReleaseEv
	.dword	_ZN9NCompress8NDeflate8NEncoder11CCOMCoder64D2Ev
	.dword	_ZN9NCompress8NDeflate8NEncoder11CCOMCoder64D0Ev
	.dword	_ZN9NCompress8NDeflate8NEncoder11CCOMCoder644CodeEP19ISequentialInStreamP20ISequentialOutStreamPKyS8_P21ICompressProgressInfo
	.dword	_ZN9NCompress8NDeflate8NEncoder11CCOMCoder6418SetCoderPropertiesEPKjPK14tagPROPVARIANTj
	.dword	-8
	.dword	_ZTIN9NCompress8NDeflate8NEncoder11CCOMCoder64E
	.dword	_ZThn8_N9NCompress8NDeflate8NEncoder11CCOMCoder6414QueryInterfaceERK4GUIDPPv
	.dword	_ZThn8_N9NCompress8NDeflate8NEncoder11CCOMCoder646AddRefEv
	.dword	_ZThn8_N9NCompress8NDeflate8NEncoder11CCOMCoder647ReleaseEv
	.dword	_ZThn8_N9NCompress8NDeflate8NEncoder11CCOMCoder64D1Ev
	.dword	_ZThn8_N9NCompress8NDeflate8NEncoder11CCOMCoder64D0Ev
	.dword	_ZThn8_N9NCompress8NDeflate8NEncoder11CCOMCoder6418SetCoderPropertiesEPKjPK14tagPROPVARIANTj
	.size	_ZTVN9NCompress8NDeflate8NEncoder11CCOMCoder64E, 136

	.type	_ZTIN9NCompress8NDeflate8NEncoder11CCOMCoder64E,@object # @_ZTIN9NCompress8NDeflate8NEncoder11CCOMCoder64E
	.globl	_ZTIN9NCompress8NDeflate8NEncoder11CCOMCoder64E
	.p2align	3, 0x0
_ZTIN9NCompress8NDeflate8NEncoder11CCOMCoder64E:
	.dword	_ZTVN10__cxxabiv121__vmi_class_type_infoE+16
	.dword	_ZTSN9NCompress8NDeflate8NEncoder11CCOMCoder64E
	.word	1                               # 0x1
	.word	4                               # 0x4
	.dword	_ZTI14ICompressCoder
	.dword	2                               # 0x2
	.dword	_ZTI27ICompressSetCoderProperties
	.dword	2050                            # 0x802
	.dword	_ZTI13CMyUnknownImp
	.dword	4098                            # 0x1002
	.dword	_ZTIN9NCompress8NDeflate8NEncoder6CCoderE
	.dword	6146                            # 0x1802
	.size	_ZTIN9NCompress8NDeflate8NEncoder11CCOMCoder64E, 88

	.type	_ZTSN9NCompress8NDeflate8NEncoder11CCOMCoder64E,@object # @_ZTSN9NCompress8NDeflate8NEncoder11CCOMCoder64E
	.section	.rodata,"a",@progbits
	.globl	_ZTSN9NCompress8NDeflate8NEncoder11CCOMCoder64E
_ZTSN9NCompress8NDeflate8NEncoder11CCOMCoder64E:
	.asciz	"N9NCompress8NDeflate8NEncoder11CCOMCoder64E"
	.size	_ZTSN9NCompress8NDeflate8NEncoder11CCOMCoder64E, 44

	.type	_ZN9NCompress8NDeflate8NEncoderL9g_FastPosE,@object # @_ZN9NCompress8NDeflate8NEncoderL9g_FastPosE
	.local	_ZN9NCompress8NDeflate8NEncoderL9g_FastPosE
	.comm	_ZN9NCompress8NDeflate8NEncoderL9g_FastPosE,512,8
	.section	.init_array,"aw",@init_array
	.p2align	3, 0x0
	.dword	_GLOBAL__sub_I_DeflateEncoder.cpp
	.data
	.p2align	3, 0x0
.L_ZTI19COutBufferException.DW.stub:
	.dword	_ZTI19COutBufferException
.L_ZTIPKc.DW.stub:
	.dword	_ZTIPKc
	.globl	_ZN9NCompress8NDeflate8NEncoder6CCoderC1Eb
	.type	_ZN9NCompress8NDeflate8NEncoder6CCoderC1Eb,@function
_ZN9NCompress8NDeflate8NEncoder6CCoderC1Eb = _ZN9NCompress8NDeflate8NEncoder6CCoderC2Eb
	.globl	_ZN9NCompress8NDeflate8NEncoder6CCoderD1Ev
	.type	_ZN9NCompress8NDeflate8NEncoder6CCoderD1Ev,@function
_ZN9NCompress8NDeflate8NEncoder6CCoderD1Ev = _ZN9NCompress8NDeflate8NEncoder6CCoderD2Ev
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
	.addrsig_sym _ZN9NCompress8NDeflate8NEncoder4ReadEPvS2_Pm
	.addrsig_sym _ZN9NCompress8NDeflate8NEncoderL7SzAllocEPvm
	.addrsig_sym _ZN9NCompress8NDeflate8NEncoderL6SzFreeEPvS2_
	.addrsig_sym _GLOBAL__sub_I_DeflateEncoder.cpp
	.addrsig_sym _Unwind_Resume
	.addrsig_sym _ZN9NCompress8NDeflateL11kLenStart64E
	.addrsig_sym _ZN9NCompress8NDeflateL11kLenStart32E
	.addrsig_sym _ZN9NCompress8NDeflateL16kLenDirectBits64E
	.addrsig_sym _ZN9NCompress8NDeflateL16kLenDirectBits32E
	.addrsig_sym _ZTIPKc
	.addrsig_sym _ZN9NCompress8NDeflate8NEncoderL7g_AllocE
	.addrsig_sym _ZTI19COutBufferException
	.addrsig_sym _ZTVN10__cxxabiv120__si_class_type_infoE
	.addrsig_sym _ZTS19COutBufferException
	.addrsig_sym _ZTI16CSystemException
	.addrsig_sym _ZTVN10__cxxabiv117__class_type_infoE
	.addrsig_sym _ZTS16CSystemException
	.addrsig_sym _ZTIN9NCompress8NDeflate8NEncoder9CCOMCoderE
	.addrsig_sym _ZTVN10__cxxabiv121__vmi_class_type_infoE
	.addrsig_sym _ZTSN9NCompress8NDeflate8NEncoder9CCOMCoderE
	.addrsig_sym _ZTI14ICompressCoder
	.addrsig_sym _ZTS14ICompressCoder
	.addrsig_sym _ZTI8IUnknown
	.addrsig_sym _ZTS8IUnknown
	.addrsig_sym _ZTI27ICompressSetCoderProperties
	.addrsig_sym _ZTS27ICompressSetCoderProperties
	.addrsig_sym _ZTI13CMyUnknownImp
	.addrsig_sym _ZTS13CMyUnknownImp
	.addrsig_sym _ZTIN9NCompress8NDeflate8NEncoder6CCoderE
	.addrsig_sym _ZTSN9NCompress8NDeflate8NEncoder6CCoderE
	.addrsig_sym _ZTIN9NCompress8NDeflate8NEncoder11CCOMCoder64E
	.addrsig_sym _ZTSN9NCompress8NDeflate8NEncoder11CCOMCoder64E
