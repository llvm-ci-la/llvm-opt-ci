	.file	"Bcj2Coder.cpp"
	.text
	.globl	_ZN9NCompress5NBcj28CEncoder6CreateEv # -- Begin function _ZN9NCompress5NBcj28CEncoder6CreateEv
	.p2align	5
	.type	_ZN9NCompress5NBcj28CEncoder6CreateEv,@function
_ZN9NCompress5NBcj28CEncoder6CreateEv:  # @_ZN9NCompress5NBcj28CEncoder6CreateEv
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	addi.d	$a0, $a0, 24
	lu12i.w	$a1, 64
	pcaddu18i	$ra, %call36(_ZN10COutBuffer6CreateEj)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_7
# %bb.1:
	addi.d	$a0, $fp, 80
	lu12i.w	$a1, 64
	pcaddu18i	$ra, %call36(_ZN10COutBuffer6CreateEj)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_7
# %bb.2:
	addi.d	$a0, $fp, 136
	lu12i.w	$a1, 64
	pcaddu18i	$ra, %call36(_ZN10COutBuffer6CreateEj)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_7
# %bb.3:
	addi.d	$a0, $fp, 216
	lu12i.w	$a1, 256
	pcaddu18i	$ra, %call36(_ZN10COutBuffer6CreateEj)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_7
# %bb.4:
	ld.d	$a0, $fp, 16
	bnez	$a0, .LBB0_6
# %bb.5:
	lu12i.w	$a0, 32
	pcaddu18i	$ra, %call36(MidAlloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 16
	beqz	$a0, .LBB0_7
.LBB0_6:
	ori	$a0, $zero, 1
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB0_7:
	move	$a0, $zero
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end0:
	.size	_ZN9NCompress5NBcj28CEncoder6CreateEv, .Lfunc_end0-_ZN9NCompress5NBcj28CEncoder6CreateEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZN9NCompress5NBcj28CEncoderD2Ev # -- Begin function _ZN9NCompress5NBcj28CEncoderD2Ev
	.p2align	5
	.type	_ZN9NCompress5NBcj28CEncoderD2Ev,@function
_ZN9NCompress5NBcj28CEncoderD2Ev:       # @_ZN9NCompress5NBcj28CEncoderD2Ev
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTVN9NCompress5NBcj28CEncoderE+16)
	addi.d	$a1, $a0, %pc_lo12(_ZTVN9NCompress5NBcj28CEncoderE+16)
	ld.d	$a0, $fp, 16
	st.d	$a1, $fp, 0
.Ltmp0:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(MidFree)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.1:
	addi.d	$a0, $fp, 216
.Ltmp3:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN10COutBuffer4FreeEv)
	jirl	$ra, $ra, 0
.Ltmp4:                                 # EH_LABEL
# %bb.2:
	ld.d	$a0, $fp, 240
	beqz	$a0, .LBB1_4
# %bb.3:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp6:                                 # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp7:                                 # EH_LABEL
.LBB1_4:                                # %_ZN9NCompress11NRangeCoder8CEncoderD2Ev.exit
	addi.d	$a0, $fp, 136
.Ltmp9:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN10COutBuffer4FreeEv)
	jirl	$ra, $ra, 0
.Ltmp10:                                # EH_LABEL
# %bb.5:
	ld.d	$a0, $fp, 160
	beqz	$a0, .LBB1_7
# %bb.6:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp12:                                # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp13:                                # EH_LABEL
.LBB1_7:                                # %_ZN10COutBufferD2Ev.exit
	addi.d	$a0, $fp, 80
.Ltmp15:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN10COutBuffer4FreeEv)
	jirl	$ra, $ra, 0
.Ltmp16:                                # EH_LABEL
# %bb.8:
	ld.d	$a0, $fp, 104
	beqz	$a0, .LBB1_10
# %bb.9:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp18:                                # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp19:                                # EH_LABEL
.LBB1_10:                               # %_ZN10COutBufferD2Ev.exit2
	addi.d	$a0, $fp, 24
.Ltmp21:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN10COutBuffer4FreeEv)
	jirl	$ra, $ra, 0
.Ltmp22:                                # EH_LABEL
# %bb.11:
	ld.d	$a0, $fp, 48
	beqz	$a0, .LBB1_13
# %bb.12:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp24:                                # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp25:                                # EH_LABEL
.LBB1_13:                               # %_ZN10COutBufferD2Ev.exit4
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB1_14:
.Ltmp26:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_15:
.Ltmp20:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_16:
.Ltmp14:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_17:
.Ltmp8:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_18:
.Ltmp23:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_19:
.Ltmp17:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_20:
.Ltmp11:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_21:
.Ltmp5:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_22:
.Ltmp2:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	_ZN9NCompress5NBcj28CEncoderD2Ev, .Lfunc_end1-_ZN9NCompress5NBcj28CEncoderD2Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table1:
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
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp3-.Lfunc_begin0           # >> Call Site 2 <<
	.uleb128 .Ltmp4-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp4
	.uleb128 .Ltmp5-.Lfunc_begin0           #     jumps to .Ltmp5
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp6-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp7-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp7
	.uleb128 .Ltmp8-.Lfunc_begin0           #     jumps to .Ltmp8
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp9-.Lfunc_begin0           # >> Call Site 4 <<
	.uleb128 .Ltmp10-.Ltmp9                 #   Call between .Ltmp9 and .Ltmp10
	.uleb128 .Ltmp11-.Lfunc_begin0          #     jumps to .Ltmp11
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp12-.Lfunc_begin0          # >> Call Site 5 <<
	.uleb128 .Ltmp13-.Ltmp12                #   Call between .Ltmp12 and .Ltmp13
	.uleb128 .Ltmp14-.Lfunc_begin0          #     jumps to .Ltmp14
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp15-.Lfunc_begin0          # >> Call Site 6 <<
	.uleb128 .Ltmp16-.Ltmp15                #   Call between .Ltmp15 and .Ltmp16
	.uleb128 .Ltmp17-.Lfunc_begin0          #     jumps to .Ltmp17
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp18-.Lfunc_begin0          # >> Call Site 7 <<
	.uleb128 .Ltmp19-.Ltmp18                #   Call between .Ltmp18 and .Ltmp19
	.uleb128 .Ltmp20-.Lfunc_begin0          #     jumps to .Ltmp20
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp21-.Lfunc_begin0          # >> Call Site 8 <<
	.uleb128 .Ltmp22-.Ltmp21                #   Call between .Ltmp21 and .Ltmp22
	.uleb128 .Ltmp23-.Lfunc_begin0          #     jumps to .Ltmp23
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp24-.Lfunc_begin0          # >> Call Site 9 <<
	.uleb128 .Ltmp25-.Ltmp24                #   Call between .Ltmp24 and .Ltmp25
	.uleb128 .Ltmp26-.Lfunc_begin0          #     jumps to .Ltmp26
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp25-.Lfunc_begin0          # >> Call Site 10 <<
	.uleb128 .Lfunc_end1-.Ltmp25            #   Call between .Ltmp25 and .Lfunc_end1
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
.Lfunc_end2:
	.size	__clang_call_terminate, .Lfunc_end2-__clang_call_terminate
                                        # -- End function
	.text
	.globl	_ZN9NCompress5NBcj28CEncoderD0Ev # -- Begin function _ZN9NCompress5NBcj28CEncoderD0Ev
	.p2align	5
	.type	_ZN9NCompress5NBcj28CEncoderD0Ev,@function
_ZN9NCompress5NBcj28CEncoderD0Ev:       # @_ZN9NCompress5NBcj28CEncoderD0Ev
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_ZN9NCompress5NBcj28CEncoderD2Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1304
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.Lfunc_end3:
	.size	_ZN9NCompress5NBcj28CEncoderD0Ev, .Lfunc_end3-_ZN9NCompress5NBcj28CEncoderD0Ev
                                        # -- End function
	.globl	_ZN9NCompress5NBcj28CEncoder5FlushEv # -- Begin function _ZN9NCompress5NBcj28CEncoder5FlushEv
	.p2align	5
	.type	_ZN9NCompress5NBcj28CEncoder5FlushEv,@function
_ZN9NCompress5NBcj28CEncoder5FlushEv:   # @_ZN9NCompress5NBcj28CEncoder5FlushEv
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
	addi.d	$a0, $a0, 24
	pcaddu18i	$ra, %call36(_ZN10COutBuffer5FlushEv)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB4_3
# %bb.1:
	addi.d	$a0, $fp, 80
	pcaddu18i	$ra, %call36(_ZN10COutBuffer5FlushEv)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB4_3
# %bb.2:
	addi.d	$a0, $fp, 136
	pcaddu18i	$ra, %call36(_ZN10COutBuffer5FlushEv)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_4
.LBB4_3:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB4_4:
	addi.d	$s0, $fp, 192
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9NCompress11NRangeCoder8CEncoder8ShiftLowEv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9NCompress11NRangeCoder8CEncoder8ShiftLowEv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9NCompress11NRangeCoder8CEncoder8ShiftLowEv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9NCompress11NRangeCoder8CEncoder8ShiftLowEv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9NCompress11NRangeCoder8CEncoder8ShiftLowEv)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 216
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZN10COutBuffer5FlushEv)
	jr	$t8
.Lfunc_end4:
	.size	_ZN9NCompress5NBcj28CEncoder5FlushEv, .Lfunc_end4-_ZN9NCompress5NBcj28CEncoder5FlushEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZN9NCompress5NBcj28CEncoder8CodeRealEPP19ISequentialInStreamPPKyjPP20ISequentialOutStreamS7_jP21ICompressProgressInfo # -- Begin function _ZN9NCompress5NBcj28CEncoder8CodeRealEPP19ISequentialInStreamPPKyjPP20ISequentialOutStreamS7_jP21ICompressProgressInfo
	.p2align	5
	.type	_ZN9NCompress5NBcj28CEncoder8CodeRealEPP19ISequentialInStreamPPKyjPP20ISequentialOutStreamS7_jP21ICompressProgressInfo,@function
_ZN9NCompress5NBcj28CEncoder8CodeRealEPP19ISequentialInStreamPPKyjPP20ISequentialOutStreamS7_jP21ICompressProgressInfo: # @_ZN9NCompress5NBcj28CEncoder8CodeRealEPP19ISequentialInStreamPPKyjPP20ISequentialOutStreamS7_jP21ICompressProgressInfo
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception1
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
	lu12i.w	$s3, -524176
	ori	$a5, $zero, 1
	ori	$a0, $s3, 87
	bne	$a3, $a5, .LBB5_12
# %bb.1:
	ori	$a3, $zero, 4
	bne	$a6, $a3, .LBB5_12
# %bb.2:
	move	$s6, $a7
	move	$s0, $a2
	move	$s2, $a1
	move	$s1, $a4
	addi.d	$s4, $fp, 24
	lu12i.w	$a1, 64
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZN10COutBuffer6CreateEj)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ori	$a0, $s3, 14
	beqz	$a1, .LBB5_12
# %bb.3:
	move	$s3, $a0
	addi.d	$s5, $fp, 80
	lu12i.w	$a1, 64
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZN10COutBuffer6CreateEj)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_11
# %bb.4:
	addi.d	$a0, $fp, 136
	lu12i.w	$a1, 64
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(_ZN10COutBuffer6CreateEj)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_11
# %bb.5:
	st.d	$s5, $sp, 112                   # 8-byte Folded Spill
	addi.d	$s5, $fp, 216
	lu12i.w	$a1, 256
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZN10COutBuffer6CreateEj)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_11
# %bb.6:
	ld.d	$a0, $fp, 16
	move	$a2, $s1
	move	$a3, $s2
	move	$a4, $s0
	bnez	$a0, .LBB5_8
# %bb.7:
	lu12i.w	$a0, 32
	pcaddu18i	$ra, %call36(MidAlloc)
	jirl	$ra, $ra, 0
	move	$a4, $s0
	move	$a3, $s2
	move	$a2, $s1
	move	$a1, $a0
	move	$a0, $s3
	st.d	$a1, $fp, 16
	beqz	$a1, .LBB5_12
.LBB5_8:                                # %_ZN9NCompress5NBcj28CEncoder6CreateEv.exit
	lu12i.w	$s0, 4096
	beqz	$a4, .LBB5_13
# %bb.9:
	ld.d	$a0, $a4, 0
	beqz	$a0, .LBB5_13
# %bb.10:
	ld.d	$a1, $a0, 0
	ori	$a0, $s0, 1
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	sltu	$a0, $a1, $a0
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	b	.LBB5_14
.LBB5_11:
	move	$a0, $s3
.LBB5_12:                               # %_ZN9NCompress5NBcj28CEncoder6CreateEv.exit.thread
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
	ret
.LBB5_13:
	st.d	$zero, $sp, 48                  # 8-byte Folded Spill
	st.d	$zero, $sp, 88                  # 8-byte Folded Spill
.LBB5_14:
	ld.d	$a0, $a3, 0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ld.d	$a1, $a2, 0
	st.d	$fp, $sp, 176
.Ltmp27:                                # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZN10COutBuffer9SetStreamEP20ISequentialOutStream)
	jirl	$ra, $ra, 0
.Ltmp28:                                # EH_LABEL
# %bb.15:
.Ltmp29:                                # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZN10COutBuffer4InitEv)
	jirl	$ra, $ra, 0
.Ltmp30:                                # EH_LABEL
# %bb.16:
	ld.d	$a1, $s1, 8
.Ltmp31:                                # EH_LABEL
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN10COutBuffer9SetStreamEP20ISequentialOutStream)
	jirl	$ra, $ra, 0
.Ltmp32:                                # EH_LABEL
# %bb.17:
.Ltmp33:                                # EH_LABEL
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN10COutBuffer4InitEv)
	jirl	$ra, $ra, 0
.Ltmp34:                                # EH_LABEL
# %bb.18:
	ld.d	$a1, $s1, 16
.Ltmp35:                                # EH_LABEL
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN10COutBuffer9SetStreamEP20ISequentialOutStream)
	jirl	$ra, $ra, 0
.Ltmp36:                                # EH_LABEL
# %bb.19:
.Ltmp37:                                # EH_LABEL
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN10COutBuffer4InitEv)
	jirl	$ra, $ra, 0
.Ltmp38:                                # EH_LABEL
# %bb.20:
	ld.d	$a1, $s1, 24
.Ltmp39:                                # EH_LABEL
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZN10COutBuffer9SetStreamEP20ISequentialOutStream)
	jirl	$ra, $ra, 0
.Ltmp40:                                # EH_LABEL
# %bb.21:                               # %_ZN9NCompress11NRangeCoder8CEncoder9SetStreamEP20ISequentialOutStream.exit
.Ltmp41:                                # EH_LABEL
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZN10COutBuffer4InitEv)
	jirl	$ra, $ra, 0
.Ltmp42:                                # EH_LABEL
# %bb.22:                               # %iter.check
	st.d	$s6, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 104                   # 8-byte Folded Spill
	addi.w	$a0, $zero, -1
	st.d	$zero, $fp, 200
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	lu32i.d	$a0, 0
	st.w	$a0, $fp, 208
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 192
	st.b	$zero, $fp, 196
	xvldi	$xr0, -3836
	xvst	$xr0, $fp, 272
	xvst	$xr0, $fp, 304
	xvst	$xr0, $fp, 336
	xvst	$xr0, $fp, 368
	xvst	$xr0, $fp, 400
	xvst	$xr0, $fp, 432
	xvst	$xr0, $fp, 464
	xvst	$xr0, $fp, 496
	xvst	$xr0, $fp, 528
	xvst	$xr0, $fp, 560
	xvst	$xr0, $fp, 592
	xvst	$xr0, $fp, 624
	xvst	$xr0, $fp, 656
	xvst	$xr0, $fp, 688
	xvst	$xr0, $fp, 720
	xvst	$xr0, $fp, 752
	xvst	$xr0, $fp, 784
	xvst	$xr0, $fp, 816
	xvst	$xr0, $fp, 848
	xvst	$xr0, $fp, 880
	xvst	$xr0, $fp, 912
	xvst	$xr0, $fp, 944
	xvst	$xr0, $fp, 976
	xvst	$xr0, $fp, 1008
	xvst	$xr0, $fp, 1040
	xvst	$xr0, $fp, 1072
	xvst	$xr0, $fp, 1104
	xvst	$xr0, $fp, 1136
	xvst	$xr0, $fp, 1168
	xvst	$xr0, $fp, 1200
	xvst	$xr0, $fp, 1232
	xvst	$xr0, $fp, 1264
	ori	$a0, $zero, 1024
	lu32i.d	$a0, 1024
	st.d	$a0, $fp, 1296
	st.d	$zero, $sp, 168
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	ld.d	$a3, $a1, 0
.Ltmp44:                                # EH_LABEL
	pcalau12i	$a1, %got_pc_hi20(IID_ICompressGetSubStreamSize)
	ld.d	$a1, $a1, %got_pc_lo12(IID_ICompressGetSubStreamSize)
	addi.d	$a2, $sp, 168
	jirl	$ra, $a3, 0
.Ltmp45:                                # EH_LABEL
# %bb.23:
	move	$s5, $zero
	move	$s3, $zero
	move	$s6, $zero
	move	$s8, $zero
	move	$s1, $zero
	st.d	$zero, $sp, 40                  # 8-byte Folded Spill
	addi.d	$a0, $fp, 192
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	addi.d	$a0, $fp, 272
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	st.d	$zero, $sp, 160
	lu12i.w	$a1, 32
	lu12i.w	$a0, -524284
	ori	$a0, $a0, 1
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ori	$a0, $s0, 1
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
.LBB5_24:                               # %.loopexit
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_26 Depth 2
                                        #     Child Loop BB5_34 Depth 2
                                        #       Child Loop BB5_42 Depth 3
                                        #     Child Loop BB5_82 Depth 2
	move	$s0, $zero
	beq	$s1, $a1, .LBB5_30
# %bb.25:                               # %.lr.ph
                                        #   in Loop: Header=BB5_24 Depth=1
	bstrpick.d	$s2, $s1, 31, 0
	ld.d	$s4, $sp, 32                    # 8-byte Folded Reload
	lu12i.w	$a3, 32
	.p2align	4, , 16
.LBB5_26:                               #   Parent Loop BB5_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s4, 0
	ld.d	$a1, $fp, 16
	add.d	$a2, $s0, $s1
	sub.w	$a2, $a3, $a2
	ld.d	$a4, $a0, 40
	add.d	$a0, $a1, $s2
	bstrpick.d	$a1, $s0, 31, 0
	add.d	$a1, $a0, $a1
.Ltmp47:                                # EH_LABEL
	addi.d	$a3, $sp, 152
	move	$a0, $s4
	jirl	$ra, $a4, 0
.Ltmp48:                                # EH_LABEL
# %bb.27:                               #   in Loop: Header=BB5_26 Depth=2
	bnez	$a0, .LBB5_97
# %bb.28:                               #   in Loop: Header=BB5_26 Depth=2
	ld.w	$a0, $sp, 152
	add.w	$s0, $a0, $s0
	beqz	$a0, .LBB5_30
# %bb.29:                               #   in Loop: Header=BB5_26 Depth=2
	add.w	$a0, $s0, $s1
	lu12i.w	$a3, 32
	bne	$a0, $a3, .LBB5_26
.LBB5_30:                               # %select.unfold
                                        #   in Loop: Header=BB5_24 Depth=1
	add.w	$a1, $s0, $s1
	ori	$a0, $zero, 4
	bgeu	$a0, $a1, .LBB5_84
# %bb.31:                               #   in Loop: Header=BB5_24 Depth=1
	move	$s4, $zero
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	addi.w	$a0, $a1, -5
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	addi.d	$a0, $a0, 5
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	b	.LBB5_34
.LBB5_32:                               #   in Loop: Header=BB5_34 Depth=2
	addi.w	$s4, $s4, 1
	move	$s8, $s7
.LBB5_33:                               # %_ZN9NCompress11NRangeCoder11CBitEncoderILi5EE6EncodeEPNS0_8CEncoderEj.exit297
                                        #   in Loop: Header=BB5_34 Depth=2
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	bltu	$a0, $s4, .LBB5_77
.LBB5_34:                               #   Parent Loop BB5_24 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_42 Depth 3
	ld.d	$a0, $fp, 16
	bstrpick.d	$s0, $s4, 31, 0
	ld.wu	$a1, $fp, 32
	ldx.bu	$s7, $a0, $s0
	ld.d	$a0, $fp, 24
	addi.d	$a2, $a1, 1
	st.w	$a2, $fp, 32
	stx.b	$s7, $a0, $a1
	ld.w	$a0, $fp, 32
	ld.w	$a1, $fp, 36
	bne	$a0, $a1, .LBB5_36
# %bb.35:                               #   in Loop: Header=BB5_34 Depth=2
.Ltmp50:                                # EH_LABEL
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN10COutBuffer14FlushWithCheckEv)
	jirl	$ra, $ra, 0
.Ltmp51:                                # EH_LABEL
.LBB5_36:                               # %_ZN10COutBuffer9WriteByteEh.exit290
                                        #   in Loop: Header=BB5_34 Depth=2
	andi	$a0, $s7, 254
	ori	$a1, $zero, 232
	beq	$a0, $a1, .LBB5_39
# %bb.37:                               # %_ZN9NCompress5NBcj23IsJEhh.exit
                                        #   in Loop: Header=BB5_34 Depth=2
	ori	$a0, $zero, 15
	bne	$s8, $a0, .LBB5_32
# %bb.38:                               # %_ZN9NCompress5NBcj23IsJEhh.exit
                                        #   in Loop: Header=BB5_34 Depth=2
	ext.w.b	$a0, $s7
	addi.w	$a1, $zero, -112
	bge	$a0, $a1, .LBB5_32
.LBB5_39:                               # %_ZN9NCompress5NBcj23IsJEhh.exit.thread
                                        #   in Loop: Header=BB5_34 Depth=2
	ld.d	$a0, $fp, 16
	add.d	$a1, $s0, $a0
	ld.bu	$a4, $a1, 4
	ld.bu	$a2, $a1, 3
	slli.w	$a3, $a4, 24
	slli.w	$a2, $a2, 16
	or	$a2, $a2, $a3
	ld.bu	$a1, $a1, 2
	addi.w	$a5, $s4, 1
	bstrpick.d	$a3, $a5, 31, 0
	ldx.bu	$a0, $a0, $a3
	slli.w	$a1, $a1, 8
	ld.d	$a3, $sp, 168
	or	$a1, $a2, $a1
	or	$s1, $a1, $a0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	add.d	$a0, $a0, $s4
	add.w	$s2, $a0, $s1
	beqz	$a3, .LBB5_45
# %bb.40:                               #   in Loop: Header=BB5_34 Depth=2
	ld.d	$a0, $sp, 160
	add.d	$s0, $a0, $s0
	bgeu	$s5, $s0, .LBB5_55
# %bb.41:                               # %.lr.ph409.preheader
                                        #   in Loop: Header=BB5_34 Depth=2
	st.d	$a5, $sp, 64                    # 8-byte Folded Spill
	st.d	$a4, $sp, 72                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB5_42:                               # %.lr.ph409
                                        #   Parent Loop BB5_24 Depth=1
                                        #     Parent Loop BB5_34 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $sp, 168
	ld.d	$a1, $a0, 0
	ld.d	$a3, $a1, 40
	move	$s3, $s5
.Ltmp53:                                # EH_LABEL
	addi.d	$a2, $sp, 152
	move	$a1, $s6
	jirl	$ra, $a3, 0
.Ltmp54:                                # EH_LABEL
# %bb.43:                               #   in Loop: Header=BB5_42 Depth=3
	bnez	$a0, .LBB5_47
# %bb.44:                               # %_ZN9CMyComPtrI25ICompressGetSubStreamSizeE7ReleaseEv.exit
                                        #   in Loop: Header=BB5_42 Depth=3
	ld.d	$a0, $sp, 152
	add.d	$s5, $a0, $s3
	addi.d	$s6, $s6, 1
	bltu	$s5, $s0, .LBB5_42
	b	.LBB5_53
.LBB5_45:                               #   in Loop: Header=BB5_34 Depth=2
	addi.d	$a0, $s7, -232
	sltui	$s1, $a0, 1
	andi	$a0, $s8, 255
	addi.d	$a1, $s7, -233
	sltui	$a1, $a1, 1
	xori	$a1, $a1, 257
	maskeqz	$a0, $a0, $s1
	masknez	$a1, $a1, $s1
	or	$a0, $a0, $a1
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	beqz	$a1, .LBB5_73
.LBB5_46:                               #   in Loop: Header=BB5_34 Depth=2
	bstrpick.d	$a1, $s2, 31, 0
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	bltu	$a1, $a2, .LBB5_59
	b	.LBB5_74
.LBB5_47:                               #   in Loop: Header=BB5_34 Depth=2
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	beq	$a0, $a1, .LBB5_49
# %bb.48:                               #   in Loop: Header=BB5_34 Depth=2
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB5_97
.LBB5_49:                               #   in Loop: Header=BB5_34 Depth=2
	ld.d	$a0, $sp, 168
	beqz	$a0, .LBB5_52
# %bb.50:                               #   in Loop: Header=BB5_34 Depth=2
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp56:                                # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp57:                                # EH_LABEL
# %bb.51:                               # %.noexc291
                                        #   in Loop: Header=BB5_34 Depth=2
	st.d	$zero, $sp, 168
.LBB5_52:                               # %_ZN9CMyComPtrI25ICompressGetSubStreamSizeE7ReleaseEv.exit.thread
                                        #   in Loop: Header=BB5_34 Depth=2
	move	$s3, $zero
	ld.d	$s5, $sp, 24                    # 8-byte Folded Reload
.LBB5_53:                               # %._crit_edge
                                        #   in Loop: Header=BB5_34 Depth=2
	ld.d	$a0, $sp, 168
	beqz	$a0, .LBB5_72
# %bb.54:                               #   in Loop: Header=BB5_34 Depth=2
	ld.d	$a4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 64                    # 8-byte Folded Reload
.LBB5_55:                               # %._crit_edge.thread
                                        #   in Loop: Header=BB5_34 Depth=2
	sub.d	$a0, $s5, $s3
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	bltu	$a0, $a1, .LBB5_57
# %bb.56:                               #   in Loop: Header=BB5_34 Depth=2
	addi.d	$a1, $a4, -255
	addi.d	$a0, $s7, -232
	sltui	$s1, $a0, 1
	andi	$a0, $s8, 255
	addi.d	$a2, $s7, -233
	sltui	$a2, $a2, 1
	xori	$a2, $a2, 257
	maskeqz	$a0, $a0, $s1
	masknez	$a2, $a2, $s1
	addi.w	$a3, $zero, -254
	or	$a0, $a0, $a2
	bltu	$a1, $a3, .LBB5_59
	b	.LBB5_74
.LBB5_57:                               #   in Loop: Header=BB5_34 Depth=2
	add.d	$a0, $s1, $s0
	addi.d	$a1, $a0, 5
	addi.d	$a0, $s7, -232
	sltui	$s1, $a0, 1
	andi	$a0, $s8, 255
	addi.d	$a2, $s7, -233
	sltui	$a2, $a2, 1
	xori	$a2, $a2, 257
	maskeqz	$a0, $a0, $s1
	masknez	$a2, $a2, $s1
	or	$a0, $a0, $a2
	bgeu	$a1, $s5, .LBB5_74
# %bb.58:                               #   in Loop: Header=BB5_34 Depth=2
	bltu	$a1, $s3, .LBB5_74
.LBB5_59:                               #   in Loop: Header=BB5_34 Depth=2
	move	$s8, $a4
	slli.d	$a1, $a0, 2
	ld.wu	$a0, $fp, 208
	ld.d	$a6, $sp, 120                   # 8-byte Folded Reload
	ldx.wu	$a2, $a6, $a1
	ld.d	$a3, $fp, 200
	srli.d	$a4, $a0, 11
	mul.d	$a4, $a4, $a2
	bstrpick.d	$a5, $a4, 31, 0
	add.d	$a3, $a3, $a5
	st.d	$a3, $fp, 200
	sub.w	$a0, $a0, $a4
	srli.d	$a3, $a2, 5
	sub.d	$a2, $a2, $a3
	st.w	$a0, $fp, 208
	bstrpick.d	$a3, $a0, 31, 24
	stx.w	$a2, $a6, $a1
	bnez	$a3, .LBB5_61
# %bb.60:                               #   in Loop: Header=BB5_34 Depth=2
	slli.d	$a0, $a0, 8
	st.w	$a0, $fp, 208
.Ltmp61:                                # EH_LABEL
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN9NCompress11NRangeCoder8CEncoder8ShiftLowEv)
	jirl	$ra, $ra, 0
.Ltmp62:                                # EH_LABEL
.LBB5_61:                               # %_ZN9NCompress11NRangeCoder11CBitEncoderILi5EE6EncodeEPNS0_8CEncoderEj.exit293
                                        #   in Loop: Header=BB5_34 Depth=2
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	masknez	$a0, $a0, $s1
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	maskeqz	$a1, $a1, $s1
	or	$s7, $a1, $a0
	ld.wu	$a0, $s7, 8
	ld.d	$a1, $s7, 0
	srli.d	$a2, $s2, 24
	addi.d	$a3, $a0, 1
	st.w	$a3, $s7, 8
	stx.b	$a2, $a1, $a0
	ld.w	$a0, $s7, 8
	ld.w	$a1, $s7, 12
	bne	$a0, $a1, .LBB5_64
# %bb.62:                               #   in Loop: Header=BB5_34 Depth=2
.Ltmp64:                                # EH_LABEL
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZN10COutBuffer14FlushWithCheckEv)
	jirl	$ra, $ra, 0
.Ltmp65:                                # EH_LABEL
# %bb.63:                               # %._ZN10COutBuffer9WriteByteEh.exit295_crit_edge
                                        #   in Loop: Header=BB5_34 Depth=2
	ld.w	$a0, $s7, 8
.LBB5_64:                               # %_ZN10COutBuffer9WriteByteEh.exit295
                                        #   in Loop: Header=BB5_34 Depth=2
	srli.d	$a1, $s2, 16
	ld.d	$a2, $s7, 0
	addi.d	$a3, $a0, 1
	st.w	$a3, $s7, 8
	bstrpick.d	$a0, $a0, 31, 0
	stx.b	$a1, $a2, $a0
	ld.w	$a0, $s7, 8
	ld.w	$a1, $s7, 12
	bne	$a0, $a1, .LBB5_67
# %bb.65:                               #   in Loop: Header=BB5_34 Depth=2
.Ltmp66:                                # EH_LABEL
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZN10COutBuffer14FlushWithCheckEv)
	jirl	$ra, $ra, 0
.Ltmp67:                                # EH_LABEL
# %bb.66:                               # %._ZN10COutBuffer9WriteByteEh.exit295.1_crit_edge
                                        #   in Loop: Header=BB5_34 Depth=2
	ld.w	$a0, $s7, 8
.LBB5_67:                               # %_ZN10COutBuffer9WriteByteEh.exit295.1
                                        #   in Loop: Header=BB5_34 Depth=2
	srli.d	$a1, $s2, 8
	ld.d	$a2, $s7, 0
	addi.d	$a3, $a0, 1
	st.w	$a3, $s7, 8
	bstrpick.d	$a0, $a0, 31, 0
	stx.b	$a1, $a2, $a0
	ld.w	$a0, $s7, 8
	ld.w	$a1, $s7, 12
	bne	$a0, $a1, .LBB5_70
# %bb.68:                               #   in Loop: Header=BB5_34 Depth=2
.Ltmp68:                                # EH_LABEL
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZN10COutBuffer14FlushWithCheckEv)
	jirl	$ra, $ra, 0
.Ltmp69:                                # EH_LABEL
# %bb.69:                               # %._ZN10COutBuffer9WriteByteEh.exit295.2_crit_edge
                                        #   in Loop: Header=BB5_34 Depth=2
	ld.w	$a0, $s7, 8
.LBB5_70:                               # %_ZN10COutBuffer9WriteByteEh.exit295.2
                                        #   in Loop: Header=BB5_34 Depth=2
	ld.d	$a1, $s7, 0
	addi.d	$a2, $a0, 1
	st.w	$a2, $s7, 8
	bstrpick.d	$a0, $a0, 31, 0
	stx.b	$s2, $a1, $a0
	ld.w	$a0, $s7, 8
	ld.w	$a1, $s7, 12
	addi.w	$s4, $s4, 5
	bne	$a0, $a1, .LBB5_33
# %bb.71:                               #   in Loop: Header=BB5_34 Depth=2
.Ltmp70:                                # EH_LABEL
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZN10COutBuffer14FlushWithCheckEv)
	jirl	$ra, $ra, 0
.Ltmp71:                                # EH_LABEL
	b	.LBB5_33
.LBB5_72:                               #   in Loop: Header=BB5_34 Depth=2
	addi.d	$a0, $s7, -232
	sltui	$s1, $a0, 1
	andi	$a0, $s8, 255
	addi.d	$a1, $s7, -233
	sltui	$a1, $a1, 1
	xori	$a1, $a1, 257
	maskeqz	$a0, $a0, $s1
	masknez	$a1, $a1, $s1
	or	$a0, $a0, $a1
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 64                    # 8-byte Folded Reload
	bnez	$a1, .LBB5_46
.LBB5_73:                               #   in Loop: Header=BB5_34 Depth=2
	addi.d	$a1, $a4, -255
	addi.w	$a2, $zero, -254
	bltu	$a1, $a2, .LBB5_59
.LBB5_74:                               #   in Loop: Header=BB5_34 Depth=2
	slli.d	$a1, $a0, 2
	ld.wu	$a0, $fp, 208
	ld.d	$a4, $sp, 120                   # 8-byte Folded Reload
	ldx.w	$a2, $a4, $a1
	srli.d	$a0, $a0, 11
	mul.d	$a0, $a0, $a2
	ori	$a3, $zero, 2048
	sub.d	$a3, $a3, $a2
	bstrpick.d	$a3, $a3, 31, 5
	add.d	$a2, $a3, $a2
	st.w	$a0, $fp, 208
	bstrpick.d	$a3, $a0, 31, 24
	stx.w	$a2, $a4, $a1
	bnez	$a3, .LBB5_76
# %bb.75:                               #   in Loop: Header=BB5_34 Depth=2
	slli.d	$a0, $a0, 8
	st.w	$a0, $fp, 208
.Ltmp59:                                # EH_LABEL
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	move	$s4, $a5
	pcaddu18i	$ra, %call36(_ZN9NCompress11NRangeCoder8CEncoder8ShiftLowEv)
	jirl	$ra, $ra, 0
.Ltmp60:                                # EH_LABEL
	move	$s8, $s7
	b	.LBB5_33
.LBB5_76:                               #   in Loop: Header=BB5_34 Depth=2
	move	$s8, $s7
	move	$s4, $a5
	b	.LBB5_33
.LBB5_77:                               #   in Loop: Header=BB5_24 Depth=1
	ld.d	$a0, $sp, 160
	bstrpick.d	$s0, $s4, 31, 0
	add.d	$a0, $a0, $s0
	st.d	$a0, $sp, 160
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	beqz	$a0, .LBB5_80
# %bb.78:                               #   in Loop: Header=BB5_24 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	ld.d	$a3, $a1, 40
.Ltmp73:                                # EH_LABEL
	addi.d	$a1, $sp, 160
	move	$a2, $zero
	jirl	$ra, $a3, 0
.Ltmp74:                                # EH_LABEL
# %bb.79:                               #   in Loop: Header=BB5_24 Depth=1
	bnez	$a0, .LBB5_97
.LBB5_80:                               #   in Loop: Header=BB5_24 Depth=1
	move	$s1, $zero
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	add.d	$a0, $s4, $a0
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	lu12i.w	$a1, 32
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	bgeu	$s4, $a0, .LBB5_24
# %bb.81:                               # %.lr.ph422.preheader
                                        #   in Loop: Header=BB5_24 Depth=1
	move	$a1, $zero
	sub.d	$a0, $a0, $s4
	bstrpick.d	$a2, $a0, 31, 0
.LBB5_82:                               # %.lr.ph422
                                        #   Parent Loop BB5_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a3, $fp, 16
	add.d	$a4, $a3, $a1
	ldx.b	$a4, $a4, $s0
	stx.b	$a4, $a3, $a1
	addi.d	$a1, $a1, 1
	bne	$a2, $a1, .LBB5_82
# %bb.83:                               # %.loopexit.loopexit
                                        #   in Loop: Header=BB5_24 Depth=1
	addi.w	$s1, $a0, 0
	lu12i.w	$a1, 32
	b	.LBB5_24
.LBB5_84:                               # %.preheader
	beqz	$a1, .LBB5_96
# %bb.85:                               # %.lr.ph426
	move	$s0, $zero
	bstrpick.d	$s1, $a1, 31, 0
	ori	$s2, $zero, 233
	ori	$s3, $zero, 2048
	ori	$s4, $zero, 232
	ori	$s5, $zero, 15
	addi.w	$s6, $zero, -112
	b	.LBB5_87
.LBB5_86:                               # %_ZN9NCompress11NRangeCoder11CBitEncoderILi5EE6EncodeEPNS0_8CEncoderEj.exit
                                        #   in Loop: Header=BB5_87 Depth=1
	addi.d	$s0, $s0, 1
	beq	$s1, $s0, .LBB5_96
.LBB5_87:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 16
	move	$s7, $s8
	ld.wu	$a1, $fp, 32
	ldx.bu	$s8, $a0, $s0
	ld.d	$a0, $fp, 24
	addi.d	$a2, $a1, 1
	st.w	$a2, $fp, 32
	stx.b	$s8, $a0, $a1
	ld.w	$a0, $fp, 32
	ld.w	$a1, $fp, 36
	bne	$a0, $a1, .LBB5_89
# %bb.88:                               #   in Loop: Header=BB5_87 Depth=1
.Ltmp76:                                # EH_LABEL
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN10COutBuffer14FlushWithCheckEv)
	jirl	$ra, $ra, 0
.Ltmp77:                                # EH_LABEL
.LBB5_89:                               # %_ZN10COutBuffer9WriteByteEh.exit
                                        #   in Loop: Header=BB5_87 Depth=1
	beq	$s8, $s2, .LBB5_93
# %bb.90:                               # %_ZN10COutBuffer9WriteByteEh.exit
                                        #   in Loop: Header=BB5_87 Depth=1
	beq	$s8, $s4, .LBB5_94
# %bb.91:                               #   in Loop: Header=BB5_87 Depth=1
	bne	$s7, $s5, .LBB5_86
# %bb.92:                               #   in Loop: Header=BB5_87 Depth=1
	ext.w.b	$a0, $s8
	ori	$s7, $zero, 257
	blt	$a0, $s6, .LBB5_94
	b	.LBB5_86
.LBB5_93:                               #   in Loop: Header=BB5_87 Depth=1
	ori	$s7, $zero, 256
.LBB5_94:                               #   in Loop: Header=BB5_87 Depth=1
	slli.d	$a1, $s7, 2
	ld.wu	$a0, $fp, 208
	ld.d	$a4, $sp, 120                   # 8-byte Folded Reload
	ldx.w	$a2, $a4, $a1
	srli.d	$a0, $a0, 11
	mul.d	$a0, $a0, $a2
	sub.d	$a3, $s3, $a2
	bstrpick.d	$a3, $a3, 31, 5
	add.d	$a2, $a3, $a2
	st.w	$a0, $fp, 208
	bstrpick.d	$a3, $a0, 31, 24
	stx.w	$a2, $a4, $a1
	bnez	$a3, .LBB5_86
# %bb.95:                               #   in Loop: Header=BB5_87 Depth=1
	slli.d	$a0, $a0, 8
	st.w	$a0, $fp, 208
.Ltmp79:                                # EH_LABEL
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN9NCompress11NRangeCoder8CEncoder8ShiftLowEv)
	jirl	$ra, $ra, 0
.Ltmp80:                                # EH_LABEL
	b	.LBB5_86
.LBB5_96:                               # %._crit_edge427
.Ltmp82:                                # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9NCompress5NBcj28CEncoder5FlushEv)
	jirl	$ra, $ra, 0
.Ltmp83:                                # EH_LABEL
.LBB5_97:                               # %.loopexit351
	ld.d	$a1, $sp, 168
	move	$s0, $a0
	beqz	$a1, .LBB5_99
# %bb.98:
	ld.d	$a0, $a1, 0
	ld.d	$a2, $a0, 16
.Ltmp88:                                # EH_LABEL
	move	$a0, $a1
	jirl	$ra, $a2, 0
	move	$a0, $s0
.Ltmp89:                                # EH_LABEL
.LBB5_99:                               # %_ZN9CMyComPtrI25ICompressGetSubStreamSizeED2Ev.exit
	ld.d	$a1, $fp, 48
	beqz	$a1, .LBB5_102
# %bb.100:
	ld.d	$a0, $a1, 0
	ld.d	$a2, $a0, 16
.Ltmp91:                                # EH_LABEL
	move	$a0, $a1
	jirl	$ra, $a2, 0
.Ltmp92:                                # EH_LABEL
# %bb.101:                              # %.noexc.i
	st.d	$zero, $fp, 48
	move	$a0, $s0
.LBB5_102:                              # %_ZN10COutBuffer13ReleaseStreamEv.exit.i.i
	ld.d	$a1, $fp, 104
	beqz	$a1, .LBB5_105
# %bb.103:
	ld.d	$a0, $a1, 0
	ld.d	$a2, $a0, 16
.Ltmp93:                                # EH_LABEL
	move	$a0, $a1
	jirl	$ra, $a2, 0
.Ltmp94:                                # EH_LABEL
# %bb.104:                              # %.noexc1.i
	st.d	$zero, $fp, 104
	move	$a0, $s0
.LBB5_105:                              # %_ZN10COutBuffer13ReleaseStreamEv.exit2.i.i
	ld.d	$a1, $fp, 160
	beqz	$a1, .LBB5_108
# %bb.106:
	ld.d	$a0, $a1, 0
	ld.d	$a2, $a0, 16
.Ltmp95:                                # EH_LABEL
	move	$a0, $a1
	jirl	$ra, $a2, 0
.Ltmp96:                                # EH_LABEL
# %bb.107:                              # %.noexc2.i
	st.d	$zero, $fp, 160
	move	$a0, $s0
.LBB5_108:                              # %_ZN10COutBuffer13ReleaseStreamEv.exit4.i.i
	ld.d	$a1, $fp, 240
	beqz	$a1, .LBB5_12
# %bb.109:
	ld.d	$a0, $a1, 0
	ld.d	$a2, $a0, 16
.Ltmp97:                                # EH_LABEL
	move	$a0, $a1
	jirl	$ra, $a2, 0
.Ltmp98:                                # EH_LABEL
# %bb.110:                              # %.noexc3.i
	st.d	$zero, $fp, 240
	move	$a0, $s0
	b	.LBB5_12
.LBB5_111:
.Ltmp84:                                # EH_LABEL
	b	.LBB5_125
.LBB5_112:
.Ltmp75:                                # EH_LABEL
	b	.LBB5_125
.LBB5_113:
.Ltmp81:                                # EH_LABEL
	b	.LBB5_125
.LBB5_114:
.Ltmp78:                                # EH_LABEL
	b	.LBB5_125
.LBB5_115:
.Ltmp90:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB5_116:                              # %.loopexit.split-lp
.Ltmp58:                                # EH_LABEL
	b	.LBB5_125
.LBB5_117:
.Ltmp46:                                # EH_LABEL
	b	.LBB5_125
.LBB5_118:
.Ltmp99:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB5_119:
.Ltmp63:                                # EH_LABEL
	b	.LBB5_125
.LBB5_120:
.Ltmp52:                                # EH_LABEL
	b	.LBB5_125
.LBB5_121:
.Ltmp49:                                # EH_LABEL
	b	.LBB5_125
.LBB5_122:
.Ltmp43:                                # EH_LABEL
	move	$fp, $a0
	addi.d	$a0, $sp, 176
	pcaddu18i	$ra, %call36(_ZN9NCompress5NBcj28CEncoder14CCoderReleaserD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB5_123:
.Ltmp72:                                # EH_LABEL
	b	.LBB5_125
.LBB5_124:                              # %.loopexit497
.Ltmp55:                                # EH_LABEL
.LBB5_125:
	move	$fp, $a0
	ld.d	$a0, $sp, 168
	beqz	$a0, .LBB5_127
# %bb.126:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp85:                                # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp86:                                # EH_LABEL
.LBB5_127:
	addi.d	$a0, $sp, 176
	pcaddu18i	$ra, %call36(_ZN9NCompress5NBcj28CEncoder14CCoderReleaserD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB5_128:
.Ltmp87:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end5:
	.size	_ZN9NCompress5NBcj28CEncoder8CodeRealEPP19ISequentialInStreamPPKyjPP20ISequentialOutStreamS7_jP21ICompressProgressInfo, .Lfunc_end5-_ZN9NCompress5NBcj28CEncoder8CodeRealEPP19ISequentialInStreamPPKyjPP20ISequentialOutStreamS7_jP21ICompressProgressInfo
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table5:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Lfunc_begin1-.Lfunc_begin1    # >> Call Site 1 <<
	.uleb128 .Ltmp27-.Lfunc_begin1          #   Call between .Lfunc_begin1 and .Ltmp27
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp27-.Lfunc_begin1          # >> Call Site 2 <<
	.uleb128 .Ltmp42-.Ltmp27                #   Call between .Ltmp27 and .Ltmp42
	.uleb128 .Ltmp43-.Lfunc_begin1          #     jumps to .Ltmp43
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp44-.Lfunc_begin1          # >> Call Site 3 <<
	.uleb128 .Ltmp45-.Ltmp44                #   Call between .Ltmp44 and .Ltmp45
	.uleb128 .Ltmp46-.Lfunc_begin1          #     jumps to .Ltmp46
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp47-.Lfunc_begin1          # >> Call Site 4 <<
	.uleb128 .Ltmp48-.Ltmp47                #   Call between .Ltmp47 and .Ltmp48
	.uleb128 .Ltmp49-.Lfunc_begin1          #     jumps to .Ltmp49
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp50-.Lfunc_begin1          # >> Call Site 5 <<
	.uleb128 .Ltmp51-.Ltmp50                #   Call between .Ltmp50 and .Ltmp51
	.uleb128 .Ltmp52-.Lfunc_begin1          #     jumps to .Ltmp52
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp53-.Lfunc_begin1          # >> Call Site 6 <<
	.uleb128 .Ltmp54-.Ltmp53                #   Call between .Ltmp53 and .Ltmp54
	.uleb128 .Ltmp55-.Lfunc_begin1          #     jumps to .Ltmp55
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp56-.Lfunc_begin1          # >> Call Site 7 <<
	.uleb128 .Ltmp57-.Ltmp56                #   Call between .Ltmp56 and .Ltmp57
	.uleb128 .Ltmp58-.Lfunc_begin1          #     jumps to .Ltmp58
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp61-.Lfunc_begin1          # >> Call Site 8 <<
	.uleb128 .Ltmp62-.Ltmp61                #   Call between .Ltmp61 and .Ltmp62
	.uleb128 .Ltmp63-.Lfunc_begin1          #     jumps to .Ltmp63
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp64-.Lfunc_begin1          # >> Call Site 9 <<
	.uleb128 .Ltmp71-.Ltmp64                #   Call between .Ltmp64 and .Ltmp71
	.uleb128 .Ltmp72-.Lfunc_begin1          #     jumps to .Ltmp72
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp59-.Lfunc_begin1          # >> Call Site 10 <<
	.uleb128 .Ltmp60-.Ltmp59                #   Call between .Ltmp59 and .Ltmp60
	.uleb128 .Ltmp63-.Lfunc_begin1          #     jumps to .Ltmp63
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp73-.Lfunc_begin1          # >> Call Site 11 <<
	.uleb128 .Ltmp74-.Ltmp73                #   Call between .Ltmp73 and .Ltmp74
	.uleb128 .Ltmp75-.Lfunc_begin1          #     jumps to .Ltmp75
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp76-.Lfunc_begin1          # >> Call Site 12 <<
	.uleb128 .Ltmp77-.Ltmp76                #   Call between .Ltmp76 and .Ltmp77
	.uleb128 .Ltmp78-.Lfunc_begin1          #     jumps to .Ltmp78
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp79-.Lfunc_begin1          # >> Call Site 13 <<
	.uleb128 .Ltmp80-.Ltmp79                #   Call between .Ltmp79 and .Ltmp80
	.uleb128 .Ltmp81-.Lfunc_begin1          #     jumps to .Ltmp81
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp82-.Lfunc_begin1          # >> Call Site 14 <<
	.uleb128 .Ltmp83-.Ltmp82                #   Call between .Ltmp82 and .Ltmp83
	.uleb128 .Ltmp84-.Lfunc_begin1          #     jumps to .Ltmp84
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp88-.Lfunc_begin1          # >> Call Site 15 <<
	.uleb128 .Ltmp89-.Ltmp88                #   Call between .Ltmp88 and .Ltmp89
	.uleb128 .Ltmp90-.Lfunc_begin1          #     jumps to .Ltmp90
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp91-.Lfunc_begin1          # >> Call Site 16 <<
	.uleb128 .Ltmp98-.Ltmp91                #   Call between .Ltmp91 and .Ltmp98
	.uleb128 .Ltmp99-.Lfunc_begin1          #     jumps to .Ltmp99
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp98-.Lfunc_begin1          # >> Call Site 17 <<
	.uleb128 .Ltmp85-.Ltmp98                #   Call between .Ltmp98 and .Ltmp85
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp85-.Lfunc_begin1          # >> Call Site 18 <<
	.uleb128 .Ltmp86-.Ltmp85                #   Call between .Ltmp85 and .Ltmp86
	.uleb128 .Ltmp87-.Lfunc_begin1          #     jumps to .Ltmp87
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp86-.Lfunc_begin1          # >> Call Site 19 <<
	.uleb128 .Lfunc_end5-.Ltmp86            #   Call between .Ltmp86 and .Lfunc_end5
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
	.section	.text._ZN9NCompress5NBcj28CEncoder14CCoderReleaserD2Ev,"axG",@progbits,_ZN9NCompress5NBcj28CEncoder14CCoderReleaserD2Ev,comdat
	.weak	_ZN9NCompress5NBcj28CEncoder14CCoderReleaserD2Ev # -- Begin function _ZN9NCompress5NBcj28CEncoder14CCoderReleaserD2Ev
	.p2align	5
	.type	_ZN9NCompress5NBcj28CEncoder14CCoderReleaserD2Ev,@function
_ZN9NCompress5NBcj28CEncoder14CCoderReleaserD2Ev: # @_ZN9NCompress5NBcj28CEncoder14CCoderReleaserD2Ev
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception2
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	ld.d	$fp, $a0, 0
	ld.d	$a0, $fp, 48
	beqz	$a0, .LBB6_3
# %bb.1:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp100:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp101:                               # EH_LABEL
# %bb.2:                                # %.noexc
	st.d	$zero, $fp, 48
.LBB6_3:                                # %_ZN10COutBuffer13ReleaseStreamEv.exit.i
	ld.d	$a0, $fp, 104
	beqz	$a0, .LBB6_6
# %bb.4:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp102:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp103:                               # EH_LABEL
# %bb.5:                                # %.noexc1
	st.d	$zero, $fp, 104
.LBB6_6:                                # %_ZN10COutBuffer13ReleaseStreamEv.exit2.i
	ld.d	$a0, $fp, 160
	beqz	$a0, .LBB6_9
# %bb.7:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp104:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp105:                               # EH_LABEL
# %bb.8:                                # %.noexc2
	st.d	$zero, $fp, 160
.LBB6_9:                                # %_ZN10COutBuffer13ReleaseStreamEv.exit4.i
	ld.d	$a0, $fp, 240
	beqz	$a0, .LBB6_12
# %bb.10:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp106:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp107:                               # EH_LABEL
# %bb.11:                               # %.noexc3
	st.d	$zero, $fp, 240
.LBB6_12:                               # %_ZN9NCompress5NBcj28CEncoder14ReleaseStreamsEv.exit
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB6_13:
.Ltmp108:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end6:
	.size	_ZN9NCompress5NBcj28CEncoder14CCoderReleaserD2Ev, .Lfunc_end6-_ZN9NCompress5NBcj28CEncoder14CCoderReleaserD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN9NCompress5NBcj28CEncoder14CCoderReleaserD2Ev,"aG",@progbits,_ZN9NCompress5NBcj28CEncoder14CCoderReleaserD2Ev,comdat
	.p2align	2, 0x0
GCC_except_table6:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase2-.Lttbaseref2
.Lttbaseref2:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Ltmp100-.Lfunc_begin2         # >> Call Site 1 <<
	.uleb128 .Ltmp107-.Ltmp100              #   Call between .Ltmp100 and .Ltmp107
	.uleb128 .Ltmp108-.Lfunc_begin2         #     jumps to .Ltmp108
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp107-.Lfunc_begin2         # >> Call Site 2 <<
	.uleb128 .Lfunc_end6-.Ltmp107           #   Call between .Ltmp107 and .Lfunc_end6
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase2:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN9NCompress5NBcj28CEncoder4CodeEPP19ISequentialInStreamPPKyjPP20ISequentialOutStreamS7_jP21ICompressProgressInfo # -- Begin function _ZN9NCompress5NBcj28CEncoder4CodeEPP19ISequentialInStreamPPKyjPP20ISequentialOutStreamS7_jP21ICompressProgressInfo
	.p2align	5
	.type	_ZN9NCompress5NBcj28CEncoder4CodeEPP19ISequentialInStreamPPKyjPP20ISequentialOutStreamS7_jP21ICompressProgressInfo,@function
_ZN9NCompress5NBcj28CEncoder4CodeEPP19ISequentialInStreamPPKyjPP20ISequentialOutStreamS7_jP21ICompressProgressInfo: # @_ZN9NCompress5NBcj28CEncoder4CodeEPP19ISequentialInStreamPPKyjPP20ISequentialOutStreamS7_jP21ICompressProgressInfo
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception3
# %bb.0:
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
.Ltmp109:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN9NCompress5NBcj28CEncoder8CodeRealEPP19ISequentialInStreamPPKyjPP20ISequentialOutStreamS7_jP21ICompressProgressInfo)
	jirl	$ra, $ra, 0
.Ltmp110:                               # EH_LABEL
.LBB7_1:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB7_2:
.Ltmp111:                               # EH_LABEL
	addi.w	$s0, $a1, 0
	pcaddu18i	$ra, %call36(__cxa_begin_catch)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	ori	$fp, $zero, 1
	bne	$s0, $a1, .LBB7_4
# %bb.3:
	ld.w	$fp, $a0, 0
.LBB7_4:                                # %.sink.split
	pcaddu18i	$ra, %call36(__cxa_end_catch)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	b	.LBB7_1
.Lfunc_end7:
	.size	_ZN9NCompress5NBcj28CEncoder4CodeEPP19ISequentialInStreamPPKyjPP20ISequentialOutStreamS7_jP21ICompressProgressInfo, .Lfunc_end7-_ZN9NCompress5NBcj28CEncoder4CodeEPP19ISequentialInStreamPPKyjPP20ISequentialOutStreamS7_jP21ICompressProgressInfo
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table7:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase3-.Lttbaseref3
.Lttbaseref3:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Ltmp109-.Lfunc_begin3         # >> Call Site 1 <<
	.uleb128 .Ltmp110-.Ltmp109              #   Call between .Ltmp109 and .Ltmp110
	.uleb128 .Ltmp111-.Lfunc_begin3         #     jumps to .Ltmp111
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp110-.Lfunc_begin3         # >> Call Site 2 <<
	.uleb128 .Lfunc_end7-.Ltmp110           #   Call between .Ltmp110 and .Lfunc_end7
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.byte	2                               # >> Action Record 2 <<
                                        #   Catch TypeInfo 2
	.byte	125                             #   Continue to action 1
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
.Ltmp112:                               # TypeInfo 2
	.word	.L_ZTI19COutBufferException.DW.stub-.Ltmp112
	.word	0                               # TypeInfo 1
.Lttbase3:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN9NCompress5NBcj28CDecoder12SetInBufSizeEjj # -- Begin function _ZN9NCompress5NBcj28CDecoder12SetInBufSizeEjj
	.p2align	5
	.type	_ZN9NCompress5NBcj28CDecoder12SetInBufSizeEjj,@function
_ZN9NCompress5NBcj28CDecoder12SetInBufSizeEjj: # @_ZN9NCompress5NBcj28CDecoder12SetInBufSizeEjj
# %bb.0:
	bstrpick.d	$a1, $a1, 31, 0
	alsl.d	$a0, $a1, $a0, 2
	st.w	$a2, $a0, 1312
	move	$a0, $zero
	ret
.Lfunc_end8:
	.size	_ZN9NCompress5NBcj28CDecoder12SetInBufSizeEjj, .Lfunc_end8-_ZN9NCompress5NBcj28CDecoder12SetInBufSizeEjj
                                        # -- End function
	.globl	_ZThn8_N9NCompress5NBcj28CDecoder12SetInBufSizeEjj # -- Begin function _ZThn8_N9NCompress5NBcj28CDecoder12SetInBufSizeEjj
	.p2align	5
	.type	_ZThn8_N9NCompress5NBcj28CDecoder12SetInBufSizeEjj,@function
_ZThn8_N9NCompress5NBcj28CDecoder12SetInBufSizeEjj: # @_ZThn8_N9NCompress5NBcj28CDecoder12SetInBufSizeEjj
# %bb.0:
	bstrpick.d	$a1, $a1, 31, 0
	alsl.d	$a0, $a1, $a0, 2
	st.w	$a2, $a0, 1304
	move	$a0, $zero
	ret
.Lfunc_end9:
	.size	_ZThn8_N9NCompress5NBcj28CDecoder12SetInBufSizeEjj, .Lfunc_end9-_ZThn8_N9NCompress5NBcj28CDecoder12SetInBufSizeEjj
                                        # -- End function
	.globl	_ZN9NCompress5NBcj28CDecoder13SetOutBufSizeEjj # -- Begin function _ZN9NCompress5NBcj28CDecoder13SetOutBufSizeEjj
	.p2align	5
	.type	_ZN9NCompress5NBcj28CDecoder13SetOutBufSizeEjj,@function
_ZN9NCompress5NBcj28CDecoder13SetOutBufSizeEjj: # @_ZN9NCompress5NBcj28CDecoder13SetOutBufSizeEjj
# %bb.0:
	st.w	$a2, $a0, 1328
	move	$a0, $zero
	ret
.Lfunc_end10:
	.size	_ZN9NCompress5NBcj28CDecoder13SetOutBufSizeEjj, .Lfunc_end10-_ZN9NCompress5NBcj28CDecoder13SetOutBufSizeEjj
                                        # -- End function
	.globl	_ZThn8_N9NCompress5NBcj28CDecoder13SetOutBufSizeEjj # -- Begin function _ZThn8_N9NCompress5NBcj28CDecoder13SetOutBufSizeEjj
	.p2align	5
	.type	_ZThn8_N9NCompress5NBcj28CDecoder13SetOutBufSizeEjj,@function
_ZThn8_N9NCompress5NBcj28CDecoder13SetOutBufSizeEjj: # @_ZThn8_N9NCompress5NBcj28CDecoder13SetOutBufSizeEjj
# %bb.0:
	st.w	$a2, $a0, 1320
	move	$a0, $zero
	ret
.Lfunc_end11:
	.size	_ZThn8_N9NCompress5NBcj28CDecoder13SetOutBufSizeEjj, .Lfunc_end11-_ZThn8_N9NCompress5NBcj28CDecoder13SetOutBufSizeEjj
                                        # -- End function
	.globl	_ZN9NCompress5NBcj28CDecoderC2Ev # -- Begin function _ZN9NCompress5NBcj28CDecoderC2Ev
	.p2align	5
	.type	_ZN9NCompress5NBcj28CDecoderC2Ev,@function
_ZN9NCompress5NBcj28CDecoderC2Ev:       # @_ZN9NCompress5NBcj28CDecoderC2Ev
.Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception4
# %bb.0:
	addi.d	$sp, $sp, -48
	.cfi_def_cfa_offset 48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	move	$s0, $a0
	st.w	$zero, $a0, 16
	pcalau12i	$a0, %pc_hi20(_ZTVN9NCompress5NBcj28CDecoderE)
	addi.d	$a0, $a0, %pc_lo12(_ZTVN9NCompress5NBcj28CDecoderE)
	addi.d	$a1, $a0, 16
	st.d	$a1, $s0, 0
	addi.d	$a0, $a0, 96
	st.d	$a0, $s0, 8
	addi.d	$fp, $s0, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9CInBufferC1Ev)
	jirl	$ra, $ra, 0
	addi.d	$s1, $s0, 72
.Ltmp113:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN9CInBufferC1Ev)
	jirl	$ra, $ra, 0
.Ltmp114:                               # EH_LABEL
# %bb.1:
	addi.d	$s2, $s0, 120
.Ltmp116:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN9CInBufferC1Ev)
	jirl	$ra, $ra, 0
.Ltmp117:                               # EH_LABEL
# %bb.2:
	addi.d	$a0, $s0, 168
.Ltmp119:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN9CInBufferC1Ev)
	jirl	$ra, $ra, 0
.Ltmp120:                               # EH_LABEL
# %bb.3:
	st.d	$zero, $s0, 1256
	st.w	$zero, $s0, 1264
	st.d	$zero, $s0, 1280
	st.d	$zero, $s0, 1296
	lu12i.w	$a0, 16
	st.w	$a0, $s0, 1328
	vldi	$vr0, -3568
	vst	$vr0, $s0, 1312
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB12_4:
.Ltmp121:                               # EH_LABEL
	move	$s0, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN9CInBufferD2Ev)
	jirl	$ra, $ra, 0
	b	.LBB12_6
.LBB12_5:
.Ltmp118:                               # EH_LABEL
	move	$s0, $a0
.LBB12_6:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN9CInBufferD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9CInBufferD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB12_7:
.Ltmp115:                               # EH_LABEL
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9CInBufferD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end12:
	.size	_ZN9NCompress5NBcj28CDecoderC2Ev, .Lfunc_end12-_ZN9NCompress5NBcj28CDecoderC2Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table12:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Lfunc_begin4-.Lfunc_begin4    # >> Call Site 1 <<
	.uleb128 .Ltmp113-.Lfunc_begin4         #   Call between .Lfunc_begin4 and .Ltmp113
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp113-.Lfunc_begin4         # >> Call Site 2 <<
	.uleb128 .Ltmp114-.Ltmp113              #   Call between .Ltmp113 and .Ltmp114
	.uleb128 .Ltmp115-.Lfunc_begin4         #     jumps to .Ltmp115
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp116-.Lfunc_begin4         # >> Call Site 3 <<
	.uleb128 .Ltmp117-.Ltmp116              #   Call between .Ltmp116 and .Ltmp117
	.uleb128 .Ltmp118-.Lfunc_begin4         #     jumps to .Ltmp118
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp119-.Lfunc_begin4         # >> Call Site 4 <<
	.uleb128 .Ltmp120-.Ltmp119              #   Call between .Ltmp119 and .Ltmp120
	.uleb128 .Ltmp121-.Lfunc_begin4         #     jumps to .Ltmp121
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp120-.Lfunc_begin4         # >> Call Site 5 <<
	.uleb128 .Lfunc_end12-.Ltmp120          #   Call between .Ltmp120 and .Lfunc_end12
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end4:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN9CInBufferD2Ev,"axG",@progbits,_ZN9CInBufferD2Ev,comdat
	.weak	_ZN9CInBufferD2Ev               # -- Begin function _ZN9CInBufferD2Ev
	.p2align	5
	.type	_ZN9CInBufferD2Ev,@function
_ZN9CInBufferD2Ev:                      # @_ZN9CInBufferD2Ev
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
.Ltmp122:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN9CInBuffer4FreeEv)
	jirl	$ra, $ra, 0
.Ltmp123:                               # EH_LABEL
# %bb.1:
	ld.d	$a0, $fp, 24
	beqz	$a0, .LBB13_3
# %bb.2:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp125:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp126:                               # EH_LABEL
.LBB13_3:                               # %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB13_4:
.Ltmp127:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB13_5:
.Ltmp124:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end13:
	.size	_ZN9CInBufferD2Ev, .Lfunc_end13-_ZN9CInBufferD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN9CInBufferD2Ev,"aG",@progbits,_ZN9CInBufferD2Ev,comdat
	.p2align	2, 0x0
GCC_except_table13:
.Lexception5:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase4-.Lttbaseref4
.Lttbaseref4:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end5-.Lcst_begin5
.Lcst_begin5:
	.uleb128 .Ltmp122-.Lfunc_begin5         # >> Call Site 1 <<
	.uleb128 .Ltmp123-.Ltmp122              #   Call between .Ltmp122 and .Ltmp123
	.uleb128 .Ltmp124-.Lfunc_begin5         #     jumps to .Ltmp124
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp125-.Lfunc_begin5         # >> Call Site 2 <<
	.uleb128 .Ltmp126-.Ltmp125              #   Call between .Ltmp125 and .Ltmp126
	.uleb128 .Ltmp127-.Lfunc_begin5         #     jumps to .Ltmp127
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp126-.Lfunc_begin5         # >> Call Site 3 <<
	.uleb128 .Lfunc_end13-.Ltmp126          #   Call between .Ltmp126 and .Lfunc_end13
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end5:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase4:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN9NCompress5NBcj28CDecoder8CodeRealEPP19ISequentialInStreamPPKyjPP20ISequentialOutStreamS7_jP21ICompressProgressInfo # -- Begin function _ZN9NCompress5NBcj28CDecoder8CodeRealEPP19ISequentialInStreamPPKyjPP20ISequentialOutStreamS7_jP21ICompressProgressInfo
	.p2align	5
	.type	_ZN9NCompress5NBcj28CDecoder8CodeRealEPP19ISequentialInStreamPPKyjPP20ISequentialOutStreamS7_jP21ICompressProgressInfo,@function
_ZN9NCompress5NBcj28CDecoder8CodeRealEPP19ISequentialInStreamPPKyjPP20ISequentialOutStreamS7_jP21ICompressProgressInfo: # @_ZN9NCompress5NBcj28CDecoder8CodeRealEPP19ISequentialInStreamPPKyjPP20ISequentialOutStreamS7_jP21ICompressProgressInfo
.Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception6
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
	move	$s0, $a0
	lu12i.w	$s2, -524176
	ori	$a2, $zero, 4
	ori	$a0, $s2, 87
	bne	$a3, $a2, .LBB14_19
# %bb.1:
	ori	$a2, $zero, 1
	bne	$a6, $a2, .LBB14_19
# %bb.2:
	move	$fp, $a7
	move	$s4, $a1
	move	$s3, $a4
	ld.w	$a1, $s0, 1312
	addi.d	$s1, $s0, 24
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN9CInBuffer6CreateEj)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ori	$a0, $s2, 14
	beqz	$a1, .LBB14_19
# %bb.3:
	move	$s2, $a0
	ld.w	$a1, $s0, 1316
	addi.d	$s6, $s0, 72
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZN9CInBuffer6CreateEj)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB14_18
# %bb.4:
	ld.w	$a1, $s0, 1320
	addi.d	$s7, $s0, 120
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZN9CInBuffer6CreateEj)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB14_18
# %bb.5:
	ld.w	$a1, $s0, 1324
	addi.d	$s8, $s0, 168
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZN9CInBuffer6CreateEj)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB14_18
# %bb.6:
	ld.w	$a1, $s0, 1328
	addi.d	$s5, $s0, 1256
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZN10COutBuffer6CreateEj)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s2
	beqz	$a1, .LBB14_19
# %bb.7:
	ld.d	$a1, $s4, 0
	st.d	$s0, $sp, 48
.Ltmp128:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN9CInBuffer9SetStreamEP19ISequentialInStream)
	jirl	$ra, $ra, 0
.Ltmp129:                               # EH_LABEL
# %bb.8:
	ld.d	$a1, $s4, 8
.Ltmp130:                               # EH_LABEL
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZN9CInBuffer9SetStreamEP19ISequentialInStream)
	jirl	$ra, $ra, 0
.Ltmp131:                               # EH_LABEL
# %bb.9:
	ld.d	$a1, $s4, 16
.Ltmp132:                               # EH_LABEL
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZN9CInBuffer9SetStreamEP19ISequentialInStream)
	jirl	$ra, $ra, 0
.Ltmp133:                               # EH_LABEL
# %bb.10:
	ld.d	$a1, $s4, 24
.Ltmp134:                               # EH_LABEL
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZN9CInBuffer9SetStreamEP19ISequentialInStream)
	jirl	$ra, $ra, 0
.Ltmp135:                               # EH_LABEL
# %bb.11:                               # %_ZN9NCompress11NRangeCoder8CDecoder9SetStreamEP19ISequentialInStream.exit
	ld.d	$a1, $s3, 0
.Ltmp136:                               # EH_LABEL
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZN10COutBuffer9SetStreamEP20ISequentialOutStream)
	jirl	$ra, $ra, 0
.Ltmp137:                               # EH_LABEL
# %bb.12:
.Ltmp138:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN9CInBuffer4InitEv)
	jirl	$ra, $ra, 0
.Ltmp139:                               # EH_LABEL
# %bb.13:
.Ltmp140:                               # EH_LABEL
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZN9CInBuffer4InitEv)
	jirl	$ra, $ra, 0
.Ltmp141:                               # EH_LABEL
# %bb.14:
.Ltmp142:                               # EH_LABEL
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZN9CInBuffer4InitEv)
	jirl	$ra, $ra, 0
.Ltmp143:                               # EH_LABEL
# %bb.15:
.Ltmp144:                               # EH_LABEL
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZN9NCompress11NRangeCoder8CDecoder4InitEv)
	jirl	$ra, $ra, 0
.Ltmp145:                               # EH_LABEL
# %bb.16:
.Ltmp146:                               # EH_LABEL
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZN10COutBuffer4InitEv)
	jirl	$ra, $ra, 0
.Ltmp147:                               # EH_LABEL
# %bb.17:                               # %iter.check
	st.d	$s8, $sp, 24                    # 8-byte Folded Spill
	st.d	$s7, $sp, 8                     # 8-byte Folded Spill
	st.d	$s6, $sp, 16                    # 8-byte Folded Spill
	move	$s4, $zero
	move	$s3, $zero
	addi.d	$a0, $s0, 224
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	xvldi	$xr0, -3836
	xvst	$xr0, $s0, 224
	xvst	$xr0, $s0, 256
	xvst	$xr0, $s0, 288
	xvst	$xr0, $s0, 320
	xvst	$xr0, $s0, 352
	xvst	$xr0, $s0, 384
	xvst	$xr0, $s0, 416
	xvst	$xr0, $s0, 448
	xvst	$xr0, $s0, 480
	xvst	$xr0, $s0, 512
	xvst	$xr0, $s0, 544
	xvst	$xr0, $s0, 576
	xvst	$xr0, $s0, 608
	xvst	$xr0, $s0, 640
	xvst	$xr0, $s0, 672
	xvst	$xr0, $s0, 704
	xvst	$xr0, $s0, 736
	xvst	$xr0, $s0, 768
	xvst	$xr0, $s0, 800
	xvst	$xr0, $s0, 832
	xvst	$xr0, $s0, 864
	xvst	$xr0, $s0, 896
	xvst	$xr0, $s0, 928
	xvst	$xr0, $s0, 960
	xvst	$xr0, $s0, 992
	xvst	$xr0, $s0, 1024
	xvst	$xr0, $s0, 1056
	xvst	$xr0, $s0, 1088
	xvst	$xr0, $s0, 1120
	xvst	$xr0, $s0, 1152
	xvst	$xr0, $s0, 1184
	xvst	$xr0, $s0, 1216
	ori	$a0, $zero, 1024
	lu32i.d	$a0, 1024
	st.d	$a0, $s0, 1248
	b	.LBB14_21
.LBB14_18:
	move	$a0, $s2
.LBB14_19:
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
.LBB14_20:                              #   in Loop: Header=BB14_21 Depth=1
	addu16i.d	$a0, $s4, 4
	addi.w	$s4, $a0, 0
	move	$s3, $s6
.LBB14_21:                              # %.backedge
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_29 Depth 2
	beqz	$fp, .LBB14_27
# %bb.22:                               # %.backedge
                                        #   in Loop: Header=BB14_21 Depth=1
	bstrpick.d	$a0, $s4, 31, 20
	beqz	$a0, .LBB14_27
# %bb.23:                               #   in Loop: Header=BB14_21 Depth=1
.Ltmp149:                               # EH_LABEL
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZNK10COutBuffer16GetProcessedSizeEv)
	jirl	$ra, $ra, 0
.Ltmp150:                               # EH_LABEL
# %bb.24:                               #   in Loop: Header=BB14_21 Depth=1
	ld.d	$a1, $fp, 0
	ld.d	$a3, $a1, 40
	st.d	$a0, $sp, 40
.Ltmp152:                               # EH_LABEL
	addi.d	$a2, $sp, 40
	move	$a0, $fp
	move	$a1, $zero
	jirl	$ra, $a3, 0
.Ltmp153:                               # EH_LABEL
# %bb.25:                               #   in Loop: Header=BB14_21 Depth=1
	bnez	$a0, .LBB14_82
# %bb.26:                               #   in Loop: Header=BB14_21 Depth=1
	move	$s4, $zero
.LBB14_27:                              #   in Loop: Header=BB14_21 Depth=1
	lu12i.w	$s2, 64
	move	$s7, $s4
	ori	$s8, $zero, 232
	b	.LBB14_29
	.p2align	4, , 16
.LBB14_28:                              #   in Loop: Header=BB14_29 Depth=2
	addi.w	$s2, $s2, -1
	addi.w	$s7, $s7, 1
	move	$s3, $s6
	beqz	$s2, .LBB14_20
.LBB14_29:                              #   Parent Loop BB14_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s0, 24
	ld.d	$a1, $s0, 32
	bltu	$a0, $a1, .LBB14_33
# %bb.30:                               #   in Loop: Header=BB14_29 Depth=2
.Ltmp155:                               # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN9CInBuffer9ReadBlockEv)
	jirl	$ra, $ra, 0
.Ltmp156:                               # EH_LABEL
# %bb.31:                               # %.noexc
                                        #   in Loop: Header=BB14_29 Depth=2
	beqz	$a0, .LBB14_81
# %bb.32:                               # %._crit_edge.i
                                        #   in Loop: Header=BB14_29 Depth=2
	ld.d	$a0, $s1, 0
.LBB14_33:                              #   in Loop: Header=BB14_29 Depth=2
	addi.d	$a1, $a0, 1
	st.d	$a1, $s0, 24
	ld.wu	$a1, $s0, 1264
	ld.bu	$s6, $a0, 0
	ld.d	$a0, $s0, 1256
	addi.d	$a2, $a1, 1
	st.w	$a2, $s0, 1264
	stx.b	$s6, $a0, $a1
	ld.w	$a0, $s0, 1264
	ld.w	$a1, $s0, 1268
	bne	$a0, $a1, .LBB14_35
# %bb.34:                               #   in Loop: Header=BB14_29 Depth=2
.Ltmp160:                               # EH_LABEL
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZN10COutBuffer14FlushWithCheckEv)
	jirl	$ra, $ra, 0
.Ltmp161:                               # EH_LABEL
.LBB14_35:                              # %_ZN10COutBuffer9WriteByteEh.exit
                                        #   in Loop: Header=BB14_29 Depth=2
	andi	$a0, $s6, 254
	beq	$a0, $s8, .LBB14_38
# %bb.36:                               # %_ZN9NCompress5NBcj23IsJEhh.exit
                                        #   in Loop: Header=BB14_29 Depth=2
	ori	$a0, $zero, 15
	bne	$s3, $a0, .LBB14_28
# %bb.37:                               # %_ZN9NCompress5NBcj23IsJEhh.exit
                                        #   in Loop: Header=BB14_29 Depth=2
	ext.w.b	$a1, $s6
	addi.w	$a2, $zero, -112
	bge	$a1, $a2, .LBB14_28
	b	.LBB14_39
.LBB14_38:                              #   in Loop: Header=BB14_21 Depth=1
	move	$a0, $s3
.LBB14_39:                              #   in Loop: Header=BB14_21 Depth=1
	addi.d	$a1, $s6, -232
	sltui	$s2, $a1, 1
	addi.d	$a1, $s6, -233
	sltui	$a1, $a1, 1
	xori	$a1, $a1, 257
	maskeqz	$a0, $a0, $s2
	masknez	$a1, $a1, $s2
	or	$a3, $a0, $a1
	slli.d	$a0, $a3, 2
	ld.wu	$a2, $s0, 216
	ld.d	$a5, $sp, 32                    # 8-byte Folded Reload
	ldx.w	$a0, $a5, $a0
	ld.w	$s8, $s0, 220
	srli.d	$a1, $a2, 11
	mul.d	$a1, $a1, $a0
	addi.w	$a4, $a1, 0
	alsl.d	$a3, $a3, $a5, 2
	bgeu	$s8, $a4, .LBB14_43
# %bb.40:                               #   in Loop: Header=BB14_21 Depth=1
	st.w	$a1, $s0, 216
	ori	$a2, $zero, 2048
	sub.d	$a2, $a2, $a0
	bstrpick.d	$a2, $a2, 31, 5
	add.d	$a0, $a2, $a0
	bstrpick.d	$a2, $a1, 31, 24
	st.w	$a0, $a3, 0
	move	$s4, $s7
	move	$s3, $s6
	bnez	$a2, .LBB14_21
# %bb.41:                               #   in Loop: Header=BB14_21 Depth=1
	ld.d	$a0, $s0, 168
	ld.d	$a2, $s0, 176
	bgeu	$a0, $a2, .LBB14_46
# %bb.42:                               #   in Loop: Header=BB14_21 Depth=1
	addi.d	$a2, $a0, 1
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	st.d	$a2, $a3, 0
	ld.bu	$a0, $a0, 0
	b	.LBB14_48
.LBB14_43:                              #   in Loop: Header=BB14_21 Depth=1
	sub.w	$a2, $a2, $a1
	st.w	$a2, $s0, 216
	sub.d	$s3, $s8, $a1
	st.w	$s3, $s0, 220
	bstrpick.d	$a1, $a0, 31, 5
	sub.d	$a0, $a0, $a1
	bstrpick.d	$a1, $a2, 31, 24
	st.w	$a0, $a3, 0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	bnez	$a1, .LBB14_52
# %bb.44:                               #   in Loop: Header=BB14_21 Depth=1
	ld.d	$a3, $s0, 168
	ld.d	$a1, $s0, 176
	bgeu	$a3, $a1, .LBB14_49
# %bb.45:                               #   in Loop: Header=BB14_21 Depth=1
	addi.d	$a1, $a3, 1
	st.d	$a1, $a0, 0
	ld.bu	$a0, $a3, 0
	b	.LBB14_51
.LBB14_46:                              #   in Loop: Header=BB14_21 Depth=1
.Ltmp185:                               # EH_LABEL
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN9CInBuffer10ReadBlock2Ev)
	jirl	$ra, $ra, 0
.Ltmp186:                               # EH_LABEL
# %bb.47:                               # %.noexc102
                                        #   in Loop: Header=BB14_21 Depth=1
	ld.w	$a1, $s0, 216
.LBB14_48:                              # %_ZN9NCompress11NRangeCoder11CBitDecoderILi5EE6DecodeEPNS0_8CDecoderE.exit.thread226
                                        #   in Loop: Header=BB14_21 Depth=1
	slli.d	$a2, $s8, 8
	or	$a0, $a2, $a0
	st.w	$a0, $s0, 220
	slli.d	$a0, $a1, 8
	st.w	$a0, $s0, 216
	move	$s4, $s7
	move	$s3, $s6
	b	.LBB14_21
.LBB14_49:                              #   in Loop: Header=BB14_21 Depth=1
.Ltmp163:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN9CInBuffer10ReadBlock2Ev)
	jirl	$ra, $ra, 0
.Ltmp164:                               # EH_LABEL
# %bb.50:                               # %.noexc103
                                        #   in Loop: Header=BB14_21 Depth=1
	ld.w	$a2, $s0, 216
.LBB14_51:                              # %_ZN9NCompress11NRangeCoder11CBitDecoderILi5EE6DecodeEPNS0_8CDecoderE.exit
                                        #   in Loop: Header=BB14_21 Depth=1
	slli.d	$a1, $s3, 8
	or	$a0, $a1, $a0
	st.w	$a0, $s0, 220
	slli.d	$a0, $a2, 8
	st.w	$a0, $s0, 216
.LBB14_52:                              # %_ZN9NCompress11NRangeCoder11CBitDecoderILi5EE6DecodeEPNS0_8CDecoderE.exit.thread
                                        #   in Loop: Header=BB14_21 Depth=1
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	masknez	$a0, $a0, $s2
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	maskeqz	$a1, $a1, $s2
	or	$s6, $a1, $a0
	ld.d	$a1, $s6, 0
	ld.d	$a0, $s6, 8
	bltu	$a1, $a0, .LBB14_56
# %bb.53:                               #   in Loop: Header=BB14_21 Depth=1
.Ltmp165:                               # EH_LABEL
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZN9CInBuffer9ReadBlockEv)
	jirl	$ra, $ra, 0
.Ltmp166:                               # EH_LABEL
# %bb.54:                               # %.noexc108
                                        #   in Loop: Header=BB14_21 Depth=1
	beqz	$a0, .LBB14_83
# %bb.55:                               # %._crit_edge.i106
                                        #   in Loop: Header=BB14_21 Depth=1
	ld.d	$a1, $s6, 0
	ld.d	$a0, $s6, 8
.LBB14_56:                              #   in Loop: Header=BB14_21 Depth=1
	addi.d	$a2, $a1, 1
	st.d	$a2, $s6, 0
	ld.bu	$s3, $a1, 0
	bltu	$a2, $a0, .LBB14_60
# %bb.57:                               #   in Loop: Header=BB14_21 Depth=1
.Ltmp167:                               # EH_LABEL
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZN9CInBuffer9ReadBlockEv)
	jirl	$ra, $ra, 0
.Ltmp168:                               # EH_LABEL
# %bb.58:                               # %.noexc108.1
                                        #   in Loop: Header=BB14_21 Depth=1
	beqz	$a0, .LBB14_83
# %bb.59:                               # %._crit_edge.i106.1
                                        #   in Loop: Header=BB14_21 Depth=1
	ld.d	$a2, $s6, 0
	ld.d	$a0, $s6, 8
.LBB14_60:                              #   in Loop: Header=BB14_21 Depth=1
	addi.d	$a1, $a2, 1
	st.d	$a1, $s6, 0
	ld.bu	$s2, $a2, 0
	bltu	$a1, $a0, .LBB14_64
# %bb.61:                               #   in Loop: Header=BB14_21 Depth=1
.Ltmp169:                               # EH_LABEL
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZN9CInBuffer9ReadBlockEv)
	jirl	$ra, $ra, 0
.Ltmp170:                               # EH_LABEL
# %bb.62:                               # %.noexc108.2
                                        #   in Loop: Header=BB14_21 Depth=1
	beqz	$a0, .LBB14_83
# %bb.63:                               # %._crit_edge.i106.2
                                        #   in Loop: Header=BB14_21 Depth=1
	ld.d	$a1, $s6, 0
	ld.d	$a0, $s6, 8
.LBB14_64:                              #   in Loop: Header=BB14_21 Depth=1
	addi.d	$a2, $a1, 1
	st.d	$a2, $s6, 0
	ld.bu	$s4, $a1, 0
	bltu	$a2, $a0, .LBB14_68
# %bb.65:                               #   in Loop: Header=BB14_21 Depth=1
.Ltmp171:                               # EH_LABEL
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZN9CInBuffer9ReadBlockEv)
	jirl	$ra, $ra, 0
.Ltmp172:                               # EH_LABEL
# %bb.66:                               # %.noexc108.3
                                        #   in Loop: Header=BB14_21 Depth=1
	beqz	$a0, .LBB14_83
# %bb.67:                               # %._crit_edge.i106.3
                                        #   in Loop: Header=BB14_21 Depth=1
	ld.d	$a2, $s6, 0
.LBB14_68:                              #   in Loop: Header=BB14_21 Depth=1
	addi.d	$a0, $a2, 1
	st.d	$a0, $s6, 0
	ld.bu	$s6, $a2, 0
.Ltmp174:                               # EH_LABEL
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZNK10COutBuffer16GetProcessedSizeEv)
	jirl	$ra, $ra, 0
.Ltmp175:                               # EH_LABEL
# %bb.69:                               #   in Loop: Header=BB14_21 Depth=1
	slli.d	$a1, $s3, 16
	slli.d	$a2, $s2, 8
	or	$a1, $a1, $a2
	or	$a1, $a1, $s4
	slli.d	$a1, $a1, 8
	or	$a1, $a1, $s6
	ld.wu	$a2, $s0, 1264
	sub.d	$a0, $a1, $a0
	ld.d	$a1, $s0, 1256
	addi.w	$s2, $a0, -4
	addi.d	$a0, $a2, 1
	st.w	$a0, $s0, 1264
	stx.b	$s2, $a1, $a2
	ld.w	$a0, $s0, 1264
	ld.w	$a1, $s0, 1268
	bne	$a0, $a1, .LBB14_72
# %bb.70:                               #   in Loop: Header=BB14_21 Depth=1
.Ltmp176:                               # EH_LABEL
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZN10COutBuffer14FlushWithCheckEv)
	jirl	$ra, $ra, 0
.Ltmp177:                               # EH_LABEL
# %bb.71:                               # %._ZN10COutBuffer9WriteByteEh.exit111_crit_edge
                                        #   in Loop: Header=BB14_21 Depth=1
	ld.w	$a0, $s0, 1264
.LBB14_72:                              # %_ZN10COutBuffer9WriteByteEh.exit111
                                        #   in Loop: Header=BB14_21 Depth=1
	srli.d	$a1, $s2, 8
	ld.d	$a2, $s0, 1256
	addi.d	$a3, $a0, 1
	st.w	$a3, $s0, 1264
	bstrpick.d	$a0, $a0, 31, 0
	stx.b	$a1, $a2, $a0
	ld.w	$a0, $s0, 1264
	ld.w	$a1, $s0, 1268
	bne	$a0, $a1, .LBB14_75
# %bb.73:                               #   in Loop: Header=BB14_21 Depth=1
.Ltmp178:                               # EH_LABEL
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZN10COutBuffer14FlushWithCheckEv)
	jirl	$ra, $ra, 0
.Ltmp179:                               # EH_LABEL
# %bb.74:                               # %._ZN10COutBuffer9WriteByteEh.exit113_crit_edge
                                        #   in Loop: Header=BB14_21 Depth=1
	ld.w	$a0, $s0, 1264
.LBB14_75:                              # %_ZN10COutBuffer9WriteByteEh.exit113
                                        #   in Loop: Header=BB14_21 Depth=1
	srli.d	$a1, $s2, 16
	ld.d	$a2, $s0, 1256
	addi.d	$a3, $a0, 1
	st.w	$a3, $s0, 1264
	bstrpick.d	$a0, $a0, 31, 0
	stx.b	$a1, $a2, $a0
	ld.w	$a0, $s0, 1264
	ld.w	$a1, $s0, 1268
	bne	$a0, $a1, .LBB14_78
# %bb.76:                               #   in Loop: Header=BB14_21 Depth=1
.Ltmp180:                               # EH_LABEL
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZN10COutBuffer14FlushWithCheckEv)
	jirl	$ra, $ra, 0
.Ltmp181:                               # EH_LABEL
# %bb.77:                               # %._ZN10COutBuffer9WriteByteEh.exit115_crit_edge
                                        #   in Loop: Header=BB14_21 Depth=1
	ld.w	$a0, $s0, 1264
.LBB14_78:                              # %_ZN10COutBuffer9WriteByteEh.exit115
                                        #   in Loop: Header=BB14_21 Depth=1
	bstrpick.d	$s3, $s2, 31, 24
	ld.d	$a1, $s0, 1256
	addi.d	$a2, $a0, 1
	st.w	$a2, $s0, 1264
	bstrpick.d	$a0, $a0, 31, 0
	stx.b	$s3, $a1, $a0
	ld.w	$a0, $s0, 1264
	ld.w	$a1, $s0, 1268
	bne	$a0, $a1, .LBB14_80
# %bb.79:                               #   in Loop: Header=BB14_21 Depth=1
.Ltmp182:                               # EH_LABEL
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZN10COutBuffer14FlushWithCheckEv)
	jirl	$ra, $ra, 0
.Ltmp183:                               # EH_LABEL
.LBB14_80:                              # %_ZN10COutBuffer9WriteByteEh.exit117
                                        #   in Loop: Header=BB14_21 Depth=1
	addi.w	$s4, $s7, 4
	b	.LBB14_21
.LBB14_81:                              # %_ZN9CInBuffer8ReadByteERh.exit
.Ltmp157:                               # EH_LABEL
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZN10COutBuffer5FlushEv)
	jirl	$ra, $ra, 0
.Ltmp158:                               # EH_LABEL
.LBB14_82:                              # %_ZN9NCompress5NBcj28CDecoder5FlushEv.exit.thread
	move	$fp, $a0
	addi.d	$a0, $sp, 48
	pcaddu18i	$ra, %call36(_ZN9NCompress5NBcj28CDecoder14CCoderReleaserD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	b	.LBB14_19
.LBB14_83:
	ori	$a0, $zero, 1
	b	.LBB14_82
.LBB14_84:
.Ltmp187:                               # EH_LABEL
	b	.LBB14_92
.LBB14_85:                              # %.loopexit.split-lp
.Ltmp159:                               # EH_LABEL
	b	.LBB14_92
.LBB14_86:
.Ltmp154:                               # EH_LABEL
	b	.LBB14_92
.LBB14_87:
.Ltmp151:                               # EH_LABEL
	b	.LBB14_92
.LBB14_88:
.Ltmp173:                               # EH_LABEL
	b	.LBB14_92
.LBB14_89:
.Ltmp184:                               # EH_LABEL
	b	.LBB14_92
.LBB14_90:
.Ltmp148:                               # EH_LABEL
	b	.LBB14_92
.LBB14_91:                              # %.loopexit
.Ltmp162:                               # EH_LABEL
.LBB14_92:
	move	$fp, $a0
	addi.d	$a0, $sp, 48
	pcaddu18i	$ra, %call36(_ZN9NCompress5NBcj28CDecoder14CCoderReleaserD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end14:
	.size	_ZN9NCompress5NBcj28CDecoder8CodeRealEPP19ISequentialInStreamPPKyjPP20ISequentialOutStreamS7_jP21ICompressProgressInfo, .Lfunc_end14-_ZN9NCompress5NBcj28CDecoder8CodeRealEPP19ISequentialInStreamPPKyjPP20ISequentialOutStreamS7_jP21ICompressProgressInfo
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table14:
.Lexception6:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end6-.Lcst_begin6
.Lcst_begin6:
	.uleb128 .Lfunc_begin6-.Lfunc_begin6    # >> Call Site 1 <<
	.uleb128 .Ltmp128-.Lfunc_begin6         #   Call between .Lfunc_begin6 and .Ltmp128
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp128-.Lfunc_begin6         # >> Call Site 2 <<
	.uleb128 .Ltmp147-.Ltmp128              #   Call between .Ltmp128 and .Ltmp147
	.uleb128 .Ltmp148-.Lfunc_begin6         #     jumps to .Ltmp148
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp149-.Lfunc_begin6         # >> Call Site 3 <<
	.uleb128 .Ltmp150-.Ltmp149              #   Call between .Ltmp149 and .Ltmp150
	.uleb128 .Ltmp151-.Lfunc_begin6         #     jumps to .Ltmp151
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp152-.Lfunc_begin6         # >> Call Site 4 <<
	.uleb128 .Ltmp153-.Ltmp152              #   Call between .Ltmp152 and .Ltmp153
	.uleb128 .Ltmp154-.Lfunc_begin6         #     jumps to .Ltmp154
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp155-.Lfunc_begin6         # >> Call Site 5 <<
	.uleb128 .Ltmp161-.Ltmp155              #   Call between .Ltmp155 and .Ltmp161
	.uleb128 .Ltmp162-.Lfunc_begin6         #     jumps to .Ltmp162
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp185-.Lfunc_begin6         # >> Call Site 6 <<
	.uleb128 .Ltmp164-.Ltmp185              #   Call between .Ltmp185 and .Ltmp164
	.uleb128 .Ltmp187-.Lfunc_begin6         #     jumps to .Ltmp187
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp165-.Lfunc_begin6         # >> Call Site 7 <<
	.uleb128 .Ltmp172-.Ltmp165              #   Call between .Ltmp165 and .Ltmp172
	.uleb128 .Ltmp173-.Lfunc_begin6         #     jumps to .Ltmp173
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp174-.Lfunc_begin6         # >> Call Site 8 <<
	.uleb128 .Ltmp183-.Ltmp174              #   Call between .Ltmp174 and .Ltmp183
	.uleb128 .Ltmp184-.Lfunc_begin6         #     jumps to .Ltmp184
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp157-.Lfunc_begin6         # >> Call Site 9 <<
	.uleb128 .Ltmp158-.Ltmp157              #   Call between .Ltmp157 and .Ltmp158
	.uleb128 .Ltmp159-.Lfunc_begin6         #     jumps to .Ltmp159
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp158-.Lfunc_begin6         # >> Call Site 10 <<
	.uleb128 .Lfunc_end14-.Ltmp158          #   Call between .Ltmp158 and .Lfunc_end14
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end6:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN9NCompress11NRangeCoder8CDecoder4InitEv,"axG",@progbits,_ZN9NCompress11NRangeCoder8CDecoder4InitEv,comdat
	.weak	_ZN9NCompress11NRangeCoder8CDecoder4InitEv # -- Begin function _ZN9NCompress11NRangeCoder8CDecoder4InitEv
	.p2align	5
	.type	_ZN9NCompress11NRangeCoder8CDecoder4InitEv,@function
_ZN9NCompress11NRangeCoder8CDecoder4InitEv: # @_ZN9NCompress11NRangeCoder8CDecoder4InitEv
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
	pcaddu18i	$ra, %call36(_ZN9CInBuffer4InitEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $fp, 8
	addi.w	$a2, $zero, -1
	lu32i.d	$a2, 0
	st.d	$a2, $fp, 48
	bgeu	$a0, $a1, .LBB15_6
# %bb.1:
	addi.d	$a3, $a0, 1
	st.d	$a3, $fp, 0
	ld.bu	$a0, $a0, 0
	st.w	$a0, $fp, 52
	slli.d	$s0, $a0, 8
	bltu	$a3, $a1, .LBB15_7
.LBB15_2:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9CInBuffer10ReadBlock2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 0
	ld.d	$a1, $fp, 8
	or	$a0, $s0, $a0
	st.w	$a0, $fp, 52
	slli.d	$s0, $a0, 8
	bltu	$a2, $a1, .LBB15_8
.LBB15_3:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9CInBuffer10ReadBlock2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	ld.d	$a1, $fp, 8
	or	$a0, $s0, $a0
	st.w	$a0, $fp, 52
	slli.d	$s0, $a0, 8
	bltu	$a3, $a1, .LBB15_9
.LBB15_4:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9CInBuffer10ReadBlock2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 0
	ld.d	$a1, $fp, 8
	or	$s0, $s0, $a0
	st.w	$s0, $fp, 52
	bltu	$a2, $a1, .LBB15_10
.LBB15_5:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9CInBuffer10ReadBlock2Ev)
	jirl	$ra, $ra, 0
	b	.LBB15_11
.LBB15_6:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9CInBuffer10ReadBlock2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	ld.d	$a1, $fp, 8
	st.w	$a0, $fp, 52
	slli.d	$s0, $a0, 8
	bgeu	$a3, $a1, .LBB15_2
.LBB15_7:
	addi.d	$a2, $a3, 1
	st.d	$a2, $fp, 0
	ld.bu	$a0, $a3, 0
	or	$a0, $s0, $a0
	st.w	$a0, $fp, 52
	slli.d	$s0, $a0, 8
	bgeu	$a2, $a1, .LBB15_3
.LBB15_8:
	addi.d	$a3, $a2, 1
	st.d	$a3, $fp, 0
	ld.bu	$a0, $a2, 0
	or	$a0, $s0, $a0
	st.w	$a0, $fp, 52
	slli.d	$s0, $a0, 8
	bgeu	$a3, $a1, .LBB15_4
.LBB15_9:
	addi.d	$a2, $a3, 1
	st.d	$a2, $fp, 0
	ld.bu	$a0, $a3, 0
	or	$s0, $s0, $a0
	st.w	$s0, $fp, 52
	bgeu	$a2, $a1, .LBB15_5
.LBB15_10:
	addi.d	$a0, $a2, 1
	st.d	$a0, $fp, 0
	ld.bu	$a0, $a2, 0
.LBB15_11:                              # %_ZN9CInBuffer8ReadByteEv.exit.4
	slli.d	$a1, $s0, 8
	or	$a0, $a1, $a0
	st.w	$a0, $fp, 52
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end15:
	.size	_ZN9NCompress11NRangeCoder8CDecoder4InitEv, .Lfunc_end15-_ZN9NCompress11NRangeCoder8CDecoder4InitEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9NCompress5NBcj28CDecoder14CCoderReleaserD2Ev,"axG",@progbits,_ZN9NCompress5NBcj28CDecoder14CCoderReleaserD2Ev,comdat
	.weak	_ZN9NCompress5NBcj28CDecoder14CCoderReleaserD2Ev # -- Begin function _ZN9NCompress5NBcj28CDecoder14CCoderReleaserD2Ev
	.p2align	5
	.type	_ZN9NCompress5NBcj28CDecoder14CCoderReleaserD2Ev,@function
_ZN9NCompress5NBcj28CDecoder14CCoderReleaserD2Ev: # @_ZN9NCompress5NBcj28CDecoder14CCoderReleaserD2Ev
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
	ld.d	$fp, $a0, 0
	ld.d	$a0, $fp, 48
	beqz	$a0, .LBB16_3
# %bb.1:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp188:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp189:                               # EH_LABEL
# %bb.2:                                # %.noexc
	st.d	$zero, $fp, 48
.LBB16_3:                               # %_ZN9CInBuffer13ReleaseStreamEv.exit.i
	ld.d	$a0, $fp, 96
	beqz	$a0, .LBB16_6
# %bb.4:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp190:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp191:                               # EH_LABEL
# %bb.5:                                # %.noexc1
	st.d	$zero, $fp, 96
.LBB16_6:                               # %_ZN9CInBuffer13ReleaseStreamEv.exit2.i
	ld.d	$a0, $fp, 144
	beqz	$a0, .LBB16_9
# %bb.7:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp192:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp193:                               # EH_LABEL
# %bb.8:                                # %.noexc2
	st.d	$zero, $fp, 144
.LBB16_9:                               # %_ZN9CInBuffer13ReleaseStreamEv.exit4.i
	ld.d	$a0, $fp, 192
	beqz	$a0, .LBB16_12
# %bb.10:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp194:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp195:                               # EH_LABEL
# %bb.11:                               # %.noexc3
	st.d	$zero, $fp, 192
.LBB16_12:                              # %_ZN9NCompress11NRangeCoder8CDecoder13ReleaseStreamEv.exit.i
	ld.d	$a0, $fp, 1280
	beqz	$a0, .LBB16_15
# %bb.13:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp196:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp197:                               # EH_LABEL
# %bb.14:                               # %.noexc4
	st.d	$zero, $fp, 1280
.LBB16_15:                              # %_ZN9NCompress5NBcj28CDecoder14ReleaseStreamsEv.exit
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB16_16:
.Ltmp198:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end16:
	.size	_ZN9NCompress5NBcj28CDecoder14CCoderReleaserD2Ev, .Lfunc_end16-_ZN9NCompress5NBcj28CDecoder14CCoderReleaserD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN9NCompress5NBcj28CDecoder14CCoderReleaserD2Ev,"aG",@progbits,_ZN9NCompress5NBcj28CDecoder14CCoderReleaserD2Ev,comdat
	.p2align	2, 0x0
GCC_except_table16:
.Lexception7:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase5-.Lttbaseref5
.Lttbaseref5:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end7-.Lcst_begin7
.Lcst_begin7:
	.uleb128 .Ltmp188-.Lfunc_begin7         # >> Call Site 1 <<
	.uleb128 .Ltmp197-.Ltmp188              #   Call between .Ltmp188 and .Ltmp197
	.uleb128 .Ltmp198-.Lfunc_begin7         #     jumps to .Ltmp198
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp197-.Lfunc_begin7         # >> Call Site 2 <<
	.uleb128 .Lfunc_end16-.Ltmp197          #   Call between .Ltmp197 and .Lfunc_end16
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
	.text
	.globl	_ZN9NCompress5NBcj28CDecoder4CodeEPP19ISequentialInStreamPPKyjPP20ISequentialOutStreamS7_jP21ICompressProgressInfo # -- Begin function _ZN9NCompress5NBcj28CDecoder4CodeEPP19ISequentialInStreamPPKyjPP20ISequentialOutStreamS7_jP21ICompressProgressInfo
	.p2align	5
	.type	_ZN9NCompress5NBcj28CDecoder4CodeEPP19ISequentialInStreamPPKyjPP20ISequentialOutStreamS7_jP21ICompressProgressInfo,@function
_ZN9NCompress5NBcj28CDecoder4CodeEPP19ISequentialInStreamPPKyjPP20ISequentialOutStreamS7_jP21ICompressProgressInfo: # @_ZN9NCompress5NBcj28CDecoder4CodeEPP19ISequentialInStreamPPKyjPP20ISequentialOutStreamS7_jP21ICompressProgressInfo
.Lfunc_begin8:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception8
# %bb.0:
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
.Ltmp199:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN9NCompress5NBcj28CDecoder8CodeRealEPP19ISequentialInStreamPPKyjPP20ISequentialOutStreamS7_jP21ICompressProgressInfo)
	jirl	$ra, $ra, 0
.Ltmp200:                               # EH_LABEL
.LBB17_1:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB17_2:
.Ltmp201:                               # EH_LABEL
	addi.w	$fp, $a1, 0
	ori	$a1, $zero, 3
	bne	$fp, $a1, .LBB17_4
# %bb.3:
	pcaddu18i	$ra, %call36(__cxa_begin_catch)
	jirl	$ra, $ra, 0
	b	.LBB17_5
.LBB17_4:
	pcaddu18i	$ra, %call36(__cxa_begin_catch)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	ori	$s0, $zero, 1
	bne	$fp, $a1, .LBB17_6
.LBB17_5:                               # %.sink.split.sink.split
	ld.w	$s0, $a0, 0
.LBB17_6:                               # %.sink.split
	pcaddu18i	$ra, %call36(__cxa_end_catch)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	b	.LBB17_1
.Lfunc_end17:
	.size	_ZN9NCompress5NBcj28CDecoder4CodeEPP19ISequentialInStreamPPKyjPP20ISequentialOutStreamS7_jP21ICompressProgressInfo, .Lfunc_end17-_ZN9NCompress5NBcj28CDecoder4CodeEPP19ISequentialInStreamPPKyjPP20ISequentialOutStreamS7_jP21ICompressProgressInfo
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table17:
.Lexception8:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase6-.Lttbaseref6
.Lttbaseref6:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end8-.Lcst_begin8
.Lcst_begin8:
	.uleb128 .Ltmp199-.Lfunc_begin8         # >> Call Site 1 <<
	.uleb128 .Ltmp200-.Ltmp199              #   Call between .Ltmp199 and .Ltmp200
	.uleb128 .Ltmp201-.Lfunc_begin8         #     jumps to .Ltmp201
	.byte	5                               #   On action: 3
	.uleb128 .Ltmp200-.Lfunc_begin8         # >> Call Site 2 <<
	.uleb128 .Lfunc_end17-.Ltmp200          #   Call between .Ltmp200 and .Lfunc_end17
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end8:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.byte	2                               # >> Action Record 2 <<
                                        #   Catch TypeInfo 2
	.byte	125                             #   Continue to action 1
	.byte	3                               # >> Action Record 3 <<
                                        #   Catch TypeInfo 3
	.byte	125                             #   Continue to action 2
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
.Ltmp202:                               # TypeInfo 3
	.word	.L_ZTI18CInBufferException.DW.stub-.Ltmp202
.Ltmp203:                               # TypeInfo 2
	.word	.L_ZTI19COutBufferException.DW.stub-.Ltmp203
	.word	0                               # TypeInfo 1
.Lttbase6:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN9NCompress5NBcj28CEncoder14QueryInterfaceERK4GUIDPPv,"axG",@progbits,_ZN9NCompress5NBcj28CEncoder14QueryInterfaceERK4GUIDPPv,comdat
	.weak	_ZN9NCompress5NBcj28CEncoder14QueryInterfaceERK4GUIDPPv # -- Begin function _ZN9NCompress5NBcj28CEncoder14QueryInterfaceERK4GUIDPPv
	.p2align	5
	.type	_ZN9NCompress5NBcj28CEncoder14QueryInterfaceERK4GUIDPPv,@function
_ZN9NCompress5NBcj28CEncoder14QueryInterfaceERK4GUIDPPv: # @_ZN9NCompress5NBcj28CEncoder14QueryInterfaceERK4GUIDPPv
	.cfi_startproc
# %bb.0:
	ld.bu	$a5, $a1, 0
	move	$a3, $a0
	pcalau12i	$a0, %got_pc_hi20(IID_IUnknown)
	ld.d	$a4, $a0, %got_pc_lo12(IID_IUnknown)
	ld.bu	$a6, $a4, 0
	lu12i.w	$a0, -524284
	ori	$a0, $a0, 2
	bne	$a5, $a6, .LBB18_17
# %bb.1:
	ld.bu	$a5, $a1, 1
	ld.bu	$a6, $a4, 1
	bne	$a5, $a6, .LBB18_17
# %bb.2:
	ld.bu	$a5, $a1, 2
	ld.bu	$a6, $a4, 2
	bne	$a5, $a6, .LBB18_17
# %bb.3:
	ld.bu	$a5, $a1, 3
	ld.bu	$a6, $a4, 3
	bne	$a5, $a6, .LBB18_17
# %bb.4:
	ld.bu	$a5, $a1, 4
	ld.bu	$a6, $a4, 4
	bne	$a5, $a6, .LBB18_17
# %bb.5:
	ld.bu	$a5, $a1, 5
	ld.bu	$a6, $a4, 5
	bne	$a5, $a6, .LBB18_17
# %bb.6:
	ld.bu	$a5, $a1, 6
	ld.bu	$a6, $a4, 6
	bne	$a5, $a6, .LBB18_17
# %bb.7:
	ld.bu	$a5, $a1, 7
	ld.bu	$a6, $a4, 7
	bne	$a5, $a6, .LBB18_17
# %bb.8:
	ld.bu	$a5, $a1, 8
	ld.bu	$a6, $a4, 8
	bne	$a5, $a6, .LBB18_17
# %bb.9:
	ld.bu	$a5, $a1, 9
	ld.bu	$a6, $a4, 9
	bne	$a5, $a6, .LBB18_17
# %bb.10:
	ld.bu	$a5, $a1, 10
	ld.bu	$a6, $a4, 10
	bne	$a5, $a6, .LBB18_17
# %bb.11:
	ld.bu	$a5, $a1, 11
	ld.bu	$a6, $a4, 11
	bne	$a5, $a6, .LBB18_17
# %bb.12:
	ld.bu	$a5, $a1, 12
	ld.bu	$a6, $a4, 12
	bne	$a5, $a6, .LBB18_17
# %bb.13:
	ld.bu	$a5, $a1, 13
	ld.bu	$a6, $a4, 13
	bne	$a5, $a6, .LBB18_17
# %bb.14:
	ld.bu	$a5, $a1, 14
	ld.bu	$a6, $a4, 14
	bne	$a5, $a6, .LBB18_17
# %bb.15:                               # %_ZeqRK4GUIDS1_.exit
	ld.bu	$a1, $a1, 15
	ld.bu	$a4, $a4, 15
	bne	$a1, $a4, .LBB18_17
# %bb.16:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	ld.d	$a0, $a3, 0
	st.d	$a3, $a2, 0
	ld.d	$a1, $a0, 8
	move	$a0, $a3
	jirl	$ra, $a1, 0
	move	$a0, $zero
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
.LBB18_17:                              # %_ZeqRK4GUIDS1_.exit.thread
	ret
.Lfunc_end18:
	.size	_ZN9NCompress5NBcj28CEncoder14QueryInterfaceERK4GUIDPPv, .Lfunc_end18-_ZN9NCompress5NBcj28CEncoder14QueryInterfaceERK4GUIDPPv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9NCompress5NBcj28CEncoder6AddRefEv,"axG",@progbits,_ZN9NCompress5NBcj28CEncoder6AddRefEv,comdat
	.weak	_ZN9NCompress5NBcj28CEncoder6AddRefEv # -- Begin function _ZN9NCompress5NBcj28CEncoder6AddRefEv
	.p2align	5
	.type	_ZN9NCompress5NBcj28CEncoder6AddRefEv,@function
_ZN9NCompress5NBcj28CEncoder6AddRefEv:  # @_ZN9NCompress5NBcj28CEncoder6AddRefEv
# %bb.0:
	ld.w	$a1, $a0, 8
	addi.w	$a1, $a1, 1
	st.w	$a1, $a0, 8
	move	$a0, $a1
	ret
.Lfunc_end19:
	.size	_ZN9NCompress5NBcj28CEncoder6AddRefEv, .Lfunc_end19-_ZN9NCompress5NBcj28CEncoder6AddRefEv
                                        # -- End function
	.section	.text._ZN9NCompress5NBcj28CEncoder7ReleaseEv,"axG",@progbits,_ZN9NCompress5NBcj28CEncoder7ReleaseEv,comdat
	.weak	_ZN9NCompress5NBcj28CEncoder7ReleaseEv # -- Begin function _ZN9NCompress5NBcj28CEncoder7ReleaseEv
	.p2align	5
	.type	_ZN9NCompress5NBcj28CEncoder7ReleaseEv,@function
_ZN9NCompress5NBcj28CEncoder7ReleaseEv: # @_ZN9NCompress5NBcj28CEncoder7ReleaseEv
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	ld.w	$a1, $a0, 8
	addi.w	$fp, $a1, -1
	st.w	$fp, $a0, 8
	bnez	$fp, .LBB20_2
# %bb.1:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 32
	jirl	$ra, $a1, 0
.LBB20_2:
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end20:
	.size	_ZN9NCompress5NBcj28CEncoder7ReleaseEv, .Lfunc_end20-_ZN9NCompress5NBcj28CEncoder7ReleaseEv
                                        # -- End function
	.section	.text._ZN9NCompress5NBcj28CDecoder14QueryInterfaceERK4GUIDPPv,"axG",@progbits,_ZN9NCompress5NBcj28CDecoder14QueryInterfaceERK4GUIDPPv,comdat
	.weak	_ZN9NCompress5NBcj28CDecoder14QueryInterfaceERK4GUIDPPv # -- Begin function _ZN9NCompress5NBcj28CDecoder14QueryInterfaceERK4GUIDPPv
	.p2align	5
	.type	_ZN9NCompress5NBcj28CDecoder14QueryInterfaceERK4GUIDPPv,@function
_ZN9NCompress5NBcj28CDecoder14QueryInterfaceERK4GUIDPPv: # @_ZN9NCompress5NBcj28CDecoder14QueryInterfaceERK4GUIDPPv
	.cfi_startproc
# %bb.0:
	ld.bu	$a4, $a1, 0
	pcalau12i	$a3, %got_pc_hi20(IID_IUnknown)
	ld.d	$a3, $a3, %got_pc_lo12(IID_IUnknown)
	ld.bu	$a5, $a3, 0
	bne	$a4, $a5, .LBB21_16
# %bb.1:
	ld.bu	$a5, $a1, 1
	ld.bu	$a6, $a3, 1
	bne	$a5, $a6, .LBB21_16
# %bb.2:
	ld.bu	$a5, $a1, 2
	ld.bu	$a6, $a3, 2
	bne	$a5, $a6, .LBB21_16
# %bb.3:
	ld.bu	$a5, $a1, 3
	ld.bu	$a6, $a3, 3
	bne	$a5, $a6, .LBB21_16
# %bb.4:
	ld.bu	$a5, $a1, 4
	ld.bu	$a6, $a3, 4
	bne	$a5, $a6, .LBB21_16
# %bb.5:
	ld.bu	$a5, $a1, 5
	ld.bu	$a6, $a3, 5
	bne	$a5, $a6, .LBB21_16
# %bb.6:
	ld.bu	$a5, $a1, 6
	ld.bu	$a6, $a3, 6
	bne	$a5, $a6, .LBB21_16
# %bb.7:
	ld.bu	$a5, $a1, 7
	ld.bu	$a6, $a3, 7
	bne	$a5, $a6, .LBB21_16
# %bb.8:
	ld.bu	$a5, $a1, 8
	ld.bu	$a6, $a3, 8
	bne	$a5, $a6, .LBB21_16
# %bb.9:
	ld.bu	$a5, $a1, 9
	ld.bu	$a6, $a3, 9
	bne	$a5, $a6, .LBB21_16
# %bb.10:
	ld.bu	$a5, $a1, 10
	ld.bu	$a6, $a3, 10
	bne	$a5, $a6, .LBB21_16
# %bb.11:
	ld.bu	$a5, $a1, 11
	ld.bu	$a6, $a3, 11
	bne	$a5, $a6, .LBB21_16
# %bb.12:
	ld.bu	$a5, $a1, 12
	ld.bu	$a6, $a3, 12
	bne	$a5, $a6, .LBB21_16
# %bb.13:
	ld.bu	$a5, $a1, 13
	ld.bu	$a6, $a3, 13
	bne	$a5, $a6, .LBB21_16
# %bb.14:
	ld.bu	$a5, $a1, 14
	ld.bu	$a6, $a3, 14
	bne	$a5, $a6, .LBB21_16
# %bb.15:                               # %_ZeqRK4GUIDS1_.exit
	ld.bu	$a5, $a1, 15
	ld.bu	$a3, $a3, 15
	beq	$a5, $a3, .LBB21_32
.LBB21_16:                              # %_ZeqRK4GUIDS1_.exit.thread
	pcalau12i	$a3, %got_pc_hi20(IID_ICompressSetBufSize)
	ld.d	$a5, $a3, %got_pc_lo12(IID_ICompressSetBufSize)
	ld.bu	$a6, $a5, 0
	lu12i.w	$a3, -524284
	ori	$a3, $a3, 2
	bne	$a4, $a6, .LBB21_33
# %bb.17:
	ld.bu	$a4, $a1, 1
	ld.bu	$a6, $a5, 1
	bne	$a4, $a6, .LBB21_33
# %bb.18:
	ld.bu	$a4, $a1, 2
	ld.bu	$a6, $a5, 2
	bne	$a4, $a6, .LBB21_33
# %bb.19:
	ld.bu	$a4, $a1, 3
	ld.bu	$a6, $a5, 3
	bne	$a4, $a6, .LBB21_33
# %bb.20:
	ld.bu	$a4, $a1, 4
	ld.bu	$a6, $a5, 4
	bne	$a4, $a6, .LBB21_33
# %bb.21:
	ld.bu	$a4, $a1, 5
	ld.bu	$a6, $a5, 5
	bne	$a4, $a6, .LBB21_33
# %bb.22:
	ld.bu	$a4, $a1, 6
	ld.bu	$a6, $a5, 6
	bne	$a4, $a6, .LBB21_33
# %bb.23:
	ld.bu	$a4, $a1, 7
	ld.bu	$a6, $a5, 7
	bne	$a4, $a6, .LBB21_33
# %bb.24:
	ld.bu	$a4, $a1, 8
	ld.bu	$a6, $a5, 8
	bne	$a4, $a6, .LBB21_33
# %bb.25:
	ld.bu	$a4, $a1, 9
	ld.bu	$a6, $a5, 9
	bne	$a4, $a6, .LBB21_33
# %bb.26:
	ld.bu	$a4, $a1, 10
	ld.bu	$a6, $a5, 10
	bne	$a4, $a6, .LBB21_33
# %bb.27:
	ld.bu	$a4, $a1, 11
	ld.bu	$a6, $a5, 11
	bne	$a4, $a6, .LBB21_33
# %bb.28:
	ld.bu	$a4, $a1, 12
	ld.bu	$a6, $a5, 12
	bne	$a4, $a6, .LBB21_33
# %bb.29:
	ld.bu	$a4, $a1, 13
	ld.bu	$a6, $a5, 13
	bne	$a4, $a6, .LBB21_33
# %bb.30:
	ld.bu	$a4, $a1, 14
	ld.bu	$a6, $a5, 14
	bne	$a4, $a6, .LBB21_33
# %bb.31:                               # %_ZeqRK4GUIDS1_.exit24
	ld.bu	$a1, $a1, 15
	ld.bu	$a4, $a5, 15
	bne	$a1, $a4, .LBB21_33
.LBB21_32:                              # %_ZeqRK4GUIDS1_.exit24.thread.sink.split
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
.LBB21_33:                              # %_ZeqRK4GUIDS1_.exit24.thread
	move	$a0, $a3
	ret
.Lfunc_end21:
	.size	_ZN9NCompress5NBcj28CDecoder14QueryInterfaceERK4GUIDPPv, .Lfunc_end21-_ZN9NCompress5NBcj28CDecoder14QueryInterfaceERK4GUIDPPv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9NCompress5NBcj28CDecoder6AddRefEv,"axG",@progbits,_ZN9NCompress5NBcj28CDecoder6AddRefEv,comdat
	.weak	_ZN9NCompress5NBcj28CDecoder6AddRefEv # -- Begin function _ZN9NCompress5NBcj28CDecoder6AddRefEv
	.p2align	5
	.type	_ZN9NCompress5NBcj28CDecoder6AddRefEv,@function
_ZN9NCompress5NBcj28CDecoder6AddRefEv:  # @_ZN9NCompress5NBcj28CDecoder6AddRefEv
# %bb.0:
	ld.w	$a1, $a0, 16
	addi.w	$a1, $a1, 1
	st.w	$a1, $a0, 16
	move	$a0, $a1
	ret
.Lfunc_end22:
	.size	_ZN9NCompress5NBcj28CDecoder6AddRefEv, .Lfunc_end22-_ZN9NCompress5NBcj28CDecoder6AddRefEv
                                        # -- End function
	.section	.text._ZN9NCompress5NBcj28CDecoder7ReleaseEv,"axG",@progbits,_ZN9NCompress5NBcj28CDecoder7ReleaseEv,comdat
	.weak	_ZN9NCompress5NBcj28CDecoder7ReleaseEv # -- Begin function _ZN9NCompress5NBcj28CDecoder7ReleaseEv
	.p2align	5
	.type	_ZN9NCompress5NBcj28CDecoder7ReleaseEv,@function
_ZN9NCompress5NBcj28CDecoder7ReleaseEv: # @_ZN9NCompress5NBcj28CDecoder7ReleaseEv
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	ld.w	$a1, $a0, 16
	addi.w	$fp, $a1, -1
	st.w	$fp, $a0, 16
	bnez	$fp, .LBB23_2
# %bb.1:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 32
	jirl	$ra, $a1, 0
.LBB23_2:
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end23:
	.size	_ZN9NCompress5NBcj28CDecoder7ReleaseEv, .Lfunc_end23-_ZN9NCompress5NBcj28CDecoder7ReleaseEv
                                        # -- End function
	.section	.text._ZN9NCompress5NBcj28CDecoderD2Ev,"axG",@progbits,_ZN9NCompress5NBcj28CDecoderD2Ev,comdat
	.weak	_ZN9NCompress5NBcj28CDecoderD2Ev # -- Begin function _ZN9NCompress5NBcj28CDecoderD2Ev
	.p2align	5
	.type	_ZN9NCompress5NBcj28CDecoderD2Ev,@function
_ZN9NCompress5NBcj28CDecoderD2Ev:       # @_ZN9NCompress5NBcj28CDecoderD2Ev
.Lfunc_begin9:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception9
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTVN9NCompress5NBcj28CDecoderE)
	addi.d	$a0, $a0, %pc_lo12(_ZTVN9NCompress5NBcj28CDecoderE)
	addi.d	$a1, $a0, 16
	st.d	$a1, $fp, 0
	addi.d	$a0, $a0, 96
	st.d	$a0, $fp, 8
	addi.d	$a0, $fp, 1256
.Ltmp204:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN10COutBuffer4FreeEv)
	jirl	$ra, $ra, 0
.Ltmp205:                               # EH_LABEL
# %bb.1:
	ld.d	$a0, $fp, 1280
	beqz	$a0, .LBB24_3
# %bb.2:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp207:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp208:                               # EH_LABEL
.LBB24_3:                               # %_ZN10COutBufferD2Ev.exit
	addi.d	$a0, $fp, 168
.Ltmp210:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN9CInBuffer4FreeEv)
	jirl	$ra, $ra, 0
.Ltmp211:                               # EH_LABEL
# %bb.4:
	ld.d	$a0, $fp, 192
	beqz	$a0, .LBB24_6
# %bb.5:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp213:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp214:                               # EH_LABEL
.LBB24_6:                               # %_ZN9NCompress11NRangeCoder8CDecoderD2Ev.exit
	addi.d	$a0, $fp, 120
.Ltmp216:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN9CInBuffer4FreeEv)
	jirl	$ra, $ra, 0
.Ltmp217:                               # EH_LABEL
# %bb.7:
	ld.d	$a0, $fp, 144
	beqz	$a0, .LBB24_9
# %bb.8:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp219:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp220:                               # EH_LABEL
.LBB24_9:                               # %_ZN9CInBufferD2Ev.exit
	addi.d	$a0, $fp, 72
.Ltmp222:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN9CInBuffer4FreeEv)
	jirl	$ra, $ra, 0
.Ltmp223:                               # EH_LABEL
# %bb.10:
	ld.d	$a0, $fp, 96
	beqz	$a0, .LBB24_12
# %bb.11:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp225:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp226:                               # EH_LABEL
.LBB24_12:                              # %_ZN9CInBufferD2Ev.exit3
	addi.d	$a0, $fp, 24
.Ltmp228:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN9CInBuffer4FreeEv)
	jirl	$ra, $ra, 0
.Ltmp229:                               # EH_LABEL
# %bb.13:
	ld.d	$a0, $fp, 48
	beqz	$a0, .LBB24_15
# %bb.14:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp231:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp232:                               # EH_LABEL
.LBB24_15:                              # %_ZN9CInBufferD2Ev.exit5
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB24_16:
.Ltmp233:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB24_17:
.Ltmp227:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB24_18:
.Ltmp221:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB24_19:
.Ltmp215:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB24_20:
.Ltmp209:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB24_21:
.Ltmp230:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB24_22:
.Ltmp224:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB24_23:
.Ltmp218:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB24_24:
.Ltmp212:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB24_25:
.Ltmp206:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end24:
	.size	_ZN9NCompress5NBcj28CDecoderD2Ev, .Lfunc_end24-_ZN9NCompress5NBcj28CDecoderD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN9NCompress5NBcj28CDecoderD2Ev,"aG",@progbits,_ZN9NCompress5NBcj28CDecoderD2Ev,comdat
	.p2align	2, 0x0
GCC_except_table24:
.Lexception9:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase7-.Lttbaseref7
.Lttbaseref7:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end9-.Lcst_begin9
.Lcst_begin9:
	.uleb128 .Ltmp204-.Lfunc_begin9         # >> Call Site 1 <<
	.uleb128 .Ltmp205-.Ltmp204              #   Call between .Ltmp204 and .Ltmp205
	.uleb128 .Ltmp206-.Lfunc_begin9         #     jumps to .Ltmp206
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp207-.Lfunc_begin9         # >> Call Site 2 <<
	.uleb128 .Ltmp208-.Ltmp207              #   Call between .Ltmp207 and .Ltmp208
	.uleb128 .Ltmp209-.Lfunc_begin9         #     jumps to .Ltmp209
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp210-.Lfunc_begin9         # >> Call Site 3 <<
	.uleb128 .Ltmp211-.Ltmp210              #   Call between .Ltmp210 and .Ltmp211
	.uleb128 .Ltmp212-.Lfunc_begin9         #     jumps to .Ltmp212
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp213-.Lfunc_begin9         # >> Call Site 4 <<
	.uleb128 .Ltmp214-.Ltmp213              #   Call between .Ltmp213 and .Ltmp214
	.uleb128 .Ltmp215-.Lfunc_begin9         #     jumps to .Ltmp215
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp216-.Lfunc_begin9         # >> Call Site 5 <<
	.uleb128 .Ltmp217-.Ltmp216              #   Call between .Ltmp216 and .Ltmp217
	.uleb128 .Ltmp218-.Lfunc_begin9         #     jumps to .Ltmp218
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp219-.Lfunc_begin9         # >> Call Site 6 <<
	.uleb128 .Ltmp220-.Ltmp219              #   Call between .Ltmp219 and .Ltmp220
	.uleb128 .Ltmp221-.Lfunc_begin9         #     jumps to .Ltmp221
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp222-.Lfunc_begin9         # >> Call Site 7 <<
	.uleb128 .Ltmp223-.Ltmp222              #   Call between .Ltmp222 and .Ltmp223
	.uleb128 .Ltmp224-.Lfunc_begin9         #     jumps to .Ltmp224
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp225-.Lfunc_begin9         # >> Call Site 8 <<
	.uleb128 .Ltmp226-.Ltmp225              #   Call between .Ltmp225 and .Ltmp226
	.uleb128 .Ltmp227-.Lfunc_begin9         #     jumps to .Ltmp227
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp228-.Lfunc_begin9         # >> Call Site 9 <<
	.uleb128 .Ltmp229-.Ltmp228              #   Call between .Ltmp228 and .Ltmp229
	.uleb128 .Ltmp230-.Lfunc_begin9         #     jumps to .Ltmp230
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp231-.Lfunc_begin9         # >> Call Site 10 <<
	.uleb128 .Ltmp232-.Ltmp231              #   Call between .Ltmp231 and .Ltmp232
	.uleb128 .Ltmp233-.Lfunc_begin9         #     jumps to .Ltmp233
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp232-.Lfunc_begin9         # >> Call Site 11 <<
	.uleb128 .Lfunc_end24-.Ltmp232          #   Call between .Ltmp232 and .Lfunc_end24
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end9:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase7:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN9NCompress5NBcj28CDecoderD0Ev,"axG",@progbits,_ZN9NCompress5NBcj28CDecoderD0Ev,comdat
	.weak	_ZN9NCompress5NBcj28CDecoderD0Ev # -- Begin function _ZN9NCompress5NBcj28CDecoderD0Ev
	.p2align	5
	.type	_ZN9NCompress5NBcj28CDecoderD0Ev,@function
_ZN9NCompress5NBcj28CDecoderD0Ev:       # @_ZN9NCompress5NBcj28CDecoderD0Ev
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_ZN9NCompress5NBcj28CDecoderD2Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1336
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.Lfunc_end25:
	.size	_ZN9NCompress5NBcj28CDecoderD0Ev, .Lfunc_end25-_ZN9NCompress5NBcj28CDecoderD0Ev
                                        # -- End function
	.section	.text._ZThn8_N9NCompress5NBcj28CDecoder14QueryInterfaceERK4GUIDPPv,"axG",@progbits,_ZThn8_N9NCompress5NBcj28CDecoder14QueryInterfaceERK4GUIDPPv,comdat
	.weak	_ZThn8_N9NCompress5NBcj28CDecoder14QueryInterfaceERK4GUIDPPv # -- Begin function _ZThn8_N9NCompress5NBcj28CDecoder14QueryInterfaceERK4GUIDPPv
	.p2align	5
	.type	_ZThn8_N9NCompress5NBcj28CDecoder14QueryInterfaceERK4GUIDPPv,@function
_ZThn8_N9NCompress5NBcj28CDecoder14QueryInterfaceERK4GUIDPPv: # @_ZThn8_N9NCompress5NBcj28CDecoder14QueryInterfaceERK4GUIDPPv
	.cfi_startproc
# %bb.0:
	addi.d	$a0, $a0, -8
	pcaddu18i	$t8, %call36(_ZN9NCompress5NBcj28CDecoder14QueryInterfaceERK4GUIDPPv)
	jr	$t8
.Lfunc_end26:
	.size	_ZThn8_N9NCompress5NBcj28CDecoder14QueryInterfaceERK4GUIDPPv, .Lfunc_end26-_ZThn8_N9NCompress5NBcj28CDecoder14QueryInterfaceERK4GUIDPPv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZThn8_N9NCompress5NBcj28CDecoder6AddRefEv,"axG",@progbits,_ZThn8_N9NCompress5NBcj28CDecoder6AddRefEv,comdat
	.weak	_ZThn8_N9NCompress5NBcj28CDecoder6AddRefEv # -- Begin function _ZThn8_N9NCompress5NBcj28CDecoder6AddRefEv
	.p2align	5
	.type	_ZThn8_N9NCompress5NBcj28CDecoder6AddRefEv,@function
_ZThn8_N9NCompress5NBcj28CDecoder6AddRefEv: # @_ZThn8_N9NCompress5NBcj28CDecoder6AddRefEv
	.cfi_startproc
# %bb.0:
	ld.w	$a1, $a0, 8
	addi.w	$a1, $a1, 1
	st.w	$a1, $a0, 8
	move	$a0, $a1
	ret
.Lfunc_end27:
	.size	_ZThn8_N9NCompress5NBcj28CDecoder6AddRefEv, .Lfunc_end27-_ZThn8_N9NCompress5NBcj28CDecoder6AddRefEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZThn8_N9NCompress5NBcj28CDecoder7ReleaseEv,"axG",@progbits,_ZThn8_N9NCompress5NBcj28CDecoder7ReleaseEv,comdat
	.weak	_ZThn8_N9NCompress5NBcj28CDecoder7ReleaseEv # -- Begin function _ZThn8_N9NCompress5NBcj28CDecoder7ReleaseEv
	.p2align	5
	.type	_ZThn8_N9NCompress5NBcj28CDecoder7ReleaseEv,@function
_ZThn8_N9NCompress5NBcj28CDecoder7ReleaseEv: # @_ZThn8_N9NCompress5NBcj28CDecoder7ReleaseEv
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
	bnez	$fp, .LBB28_2
# %bb.1:
	ld.d	$a1, $a0, -8
	ld.d	$a1, $a1, 32
	addi.d	$a0, $a0, -8
	jirl	$ra, $a1, 0
.LBB28_2:                               # %_ZN9NCompress5NBcj28CDecoder7ReleaseEv.exit
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end28:
	.size	_ZThn8_N9NCompress5NBcj28CDecoder7ReleaseEv, .Lfunc_end28-_ZThn8_N9NCompress5NBcj28CDecoder7ReleaseEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZThn8_N9NCompress5NBcj28CDecoderD1Ev,"axG",@progbits,_ZThn8_N9NCompress5NBcj28CDecoderD1Ev,comdat
	.weak	_ZThn8_N9NCompress5NBcj28CDecoderD1Ev # -- Begin function _ZThn8_N9NCompress5NBcj28CDecoderD1Ev
	.p2align	5
	.type	_ZThn8_N9NCompress5NBcj28CDecoderD1Ev,@function
_ZThn8_N9NCompress5NBcj28CDecoderD1Ev:  # @_ZThn8_N9NCompress5NBcj28CDecoderD1Ev
# %bb.0:
	addi.d	$a0, $a0, -8
	pcaddu18i	$t8, %call36(_ZN9NCompress5NBcj28CDecoderD2Ev)
	jr	$t8
.Lfunc_end29:
	.size	_ZThn8_N9NCompress5NBcj28CDecoderD1Ev, .Lfunc_end29-_ZThn8_N9NCompress5NBcj28CDecoderD1Ev
                                        # -- End function
	.section	.text._ZThn8_N9NCompress5NBcj28CDecoderD0Ev,"axG",@progbits,_ZThn8_N9NCompress5NBcj28CDecoderD0Ev,comdat
	.weak	_ZThn8_N9NCompress5NBcj28CDecoderD0Ev # -- Begin function _ZThn8_N9NCompress5NBcj28CDecoderD0Ev
	.p2align	5
	.type	_ZThn8_N9NCompress5NBcj28CDecoderD0Ev,@function
_ZThn8_N9NCompress5NBcj28CDecoderD0Ev:  # @_ZThn8_N9NCompress5NBcj28CDecoderD0Ev
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	addi.d	$fp, $a0, -8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9NCompress5NBcj28CDecoderD2Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1336
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.Lfunc_end30:
	.size	_ZThn8_N9NCompress5NBcj28CDecoderD0Ev, .Lfunc_end30-_ZThn8_N9NCompress5NBcj28CDecoderD0Ev
                                        # -- End function
	.section	.text._ZN9NCompress11NRangeCoder8CEncoder8ShiftLowEv,"axG",@progbits,_ZN9NCompress11NRangeCoder8CEncoder8ShiftLowEv,comdat
	.weak	_ZN9NCompress11NRangeCoder8CEncoder8ShiftLowEv # -- Begin function _ZN9NCompress11NRangeCoder8CEncoder8ShiftLowEv
	.p2align	5
	.type	_ZN9NCompress11NRangeCoder8CEncoder8ShiftLowEv,@function
_ZN9NCompress11NRangeCoder8CEncoder8ShiftLowEv: # @_ZN9NCompress11NRangeCoder8CEncoder8ShiftLowEv
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
	ld.d	$a0, $a0, 8
	srli.d	$a1, $a0, 24
	ori	$a2, $zero, 255
	bne	$a1, $a2, .LBB31_2
# %bb.1:                                # %._crit_edge
	ld.w	$a1, $fp, 0
	addi.d	$a1, $a1, 1
	b	.LBB31_7
.LBB31_2:                               # %.peel.begin
	ld.b	$a1, $fp, 4
	ld.wu	$a2, $fp, 32
	srli.d	$a0, $a0, 32
	ld.d	$a3, $fp, 24
	add.d	$a0, $a1, $a0
	addi.d	$a1, $a2, 1
	st.w	$a1, $fp, 32
	stx.b	$a0, $a3, $a2
	ld.w	$a0, $fp, 32
	ld.w	$a1, $fp, 36
	addi.d	$s0, $fp, 24
	bne	$a0, $a1, .LBB31_4
.LBB31_3:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN10COutBuffer14FlushWithCheckEv)
	jirl	$ra, $ra, 0
.LBB31_4:                               # %_ZN10COutBuffer9WriteByteEh.exit.peel
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, 0
	addi.w	$a0, $a0, -1
	st.w	$a0, $fp, 0
	beqz	$a0, .LBB31_6
# %bb.5:                                # %.peel.next
                                        #   in Loop: Header=BB31_4 Depth=1
	ld.b	$a0, $fp, 12
	ld.wu	$a1, $fp, 32
	ld.d	$a2, $fp, 24
	addi.d	$a0, $a0, -1
	addi.d	$a3, $a1, 1
	st.w	$a3, $fp, 32
	stx.b	$a0, $a2, $a1
	ld.w	$a0, $fp, 32
	ld.w	$a1, $fp, 36
	beq	$a0, $a1, .LBB31_3
	b	.LBB31_4
.LBB31_6:                               # %.loopexit
	ld.d	$a0, $fp, 8
	srli.d	$a1, $a0, 24
	st.b	$a1, $fp, 4
	ori	$a1, $zero, 1
.LBB31_7:
	st.w	$a1, $fp, 0
	slli.d	$a0, $a0, 8
	bstrpick.d	$a0, $a0, 31, 8
	slli.d	$a0, $a0, 8
	st.d	$a0, $fp, 8
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end31:
	.size	_ZN9NCompress11NRangeCoder8CEncoder8ShiftLowEv, .Lfunc_end31-_ZN9NCompress11NRangeCoder8CEncoder8ShiftLowEv
	.cfi_endproc
                                        # -- End function
	.type	_ZTVN9NCompress5NBcj28CEncoderE,@object # @_ZTVN9NCompress5NBcj28CEncoderE
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTVN9NCompress5NBcj28CEncoderE
	.p2align	3, 0x0
_ZTVN9NCompress5NBcj28CEncoderE:
	.dword	0
	.dword	_ZTIN9NCompress5NBcj28CEncoderE
	.dword	_ZN9NCompress5NBcj28CEncoder14QueryInterfaceERK4GUIDPPv
	.dword	_ZN9NCompress5NBcj28CEncoder6AddRefEv
	.dword	_ZN9NCompress5NBcj28CEncoder7ReleaseEv
	.dword	_ZN9NCompress5NBcj28CEncoderD2Ev
	.dword	_ZN9NCompress5NBcj28CEncoderD0Ev
	.dword	_ZN9NCompress5NBcj28CEncoder4CodeEPP19ISequentialInStreamPPKyjPP20ISequentialOutStreamS7_jP21ICompressProgressInfo
	.size	_ZTVN9NCompress5NBcj28CEncoderE, 64

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

	.type	_ZTVN9NCompress5NBcj28CDecoderE,@object # @_ZTVN9NCompress5NBcj28CDecoderE
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTVN9NCompress5NBcj28CDecoderE
	.p2align	3, 0x0
_ZTVN9NCompress5NBcj28CDecoderE:
	.dword	0
	.dword	_ZTIN9NCompress5NBcj28CDecoderE
	.dword	_ZN9NCompress5NBcj28CDecoder14QueryInterfaceERK4GUIDPPv
	.dword	_ZN9NCompress5NBcj28CDecoder6AddRefEv
	.dword	_ZN9NCompress5NBcj28CDecoder7ReleaseEv
	.dword	_ZN9NCompress5NBcj28CDecoderD2Ev
	.dword	_ZN9NCompress5NBcj28CDecoderD0Ev
	.dword	_ZN9NCompress5NBcj28CDecoder4CodeEPP19ISequentialInStreamPPKyjPP20ISequentialOutStreamS7_jP21ICompressProgressInfo
	.dword	_ZN9NCompress5NBcj28CDecoder12SetInBufSizeEjj
	.dword	_ZN9NCompress5NBcj28CDecoder13SetOutBufSizeEjj
	.dword	-8
	.dword	_ZTIN9NCompress5NBcj28CDecoderE
	.dword	_ZThn8_N9NCompress5NBcj28CDecoder14QueryInterfaceERK4GUIDPPv
	.dword	_ZThn8_N9NCompress5NBcj28CDecoder6AddRefEv
	.dword	_ZThn8_N9NCompress5NBcj28CDecoder7ReleaseEv
	.dword	_ZThn8_N9NCompress5NBcj28CDecoderD1Ev
	.dword	_ZThn8_N9NCompress5NBcj28CDecoderD0Ev
	.dword	_ZThn8_N9NCompress5NBcj28CDecoder12SetInBufSizeEjj
	.dword	_ZThn8_N9NCompress5NBcj28CDecoder13SetOutBufSizeEjj
	.size	_ZTVN9NCompress5NBcj28CDecoderE, 152

	.type	_ZTI18CInBufferException,@object # @_ZTI18CInBufferException
	.section	.data.rel.ro._ZTI18CInBufferException,"awG",@progbits,_ZTI18CInBufferException,comdat
	.weak	_ZTI18CInBufferException
	.p2align	3, 0x0
_ZTI18CInBufferException:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS18CInBufferException
	.dword	_ZTI16CSystemException
	.size	_ZTI18CInBufferException, 24

	.type	_ZTS18CInBufferException,@object # @_ZTS18CInBufferException
	.section	.rodata._ZTS18CInBufferException,"aG",@progbits,_ZTS18CInBufferException,comdat
	.weak	_ZTS18CInBufferException
_ZTS18CInBufferException:
	.asciz	"18CInBufferException"
	.size	_ZTS18CInBufferException, 21

	.type	_ZTIN9NCompress5NBcj28CEncoderE,@object # @_ZTIN9NCompress5NBcj28CEncoderE
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTIN9NCompress5NBcj28CEncoderE
	.p2align	3, 0x0
_ZTIN9NCompress5NBcj28CEncoderE:
	.dword	_ZTVN10__cxxabiv121__vmi_class_type_infoE+16
	.dword	_ZTSN9NCompress5NBcj28CEncoderE
	.word	0                               # 0x0
	.word	2                               # 0x2
	.dword	_ZTI15ICompressCoder2
	.dword	2                               # 0x2
	.dword	_ZTI13CMyUnknownImp
	.dword	2050                            # 0x802
	.size	_ZTIN9NCompress5NBcj28CEncoderE, 56

	.type	_ZTSN9NCompress5NBcj28CEncoderE,@object # @_ZTSN9NCompress5NBcj28CEncoderE
	.section	.rodata,"a",@progbits
	.globl	_ZTSN9NCompress5NBcj28CEncoderE
_ZTSN9NCompress5NBcj28CEncoderE:
	.asciz	"N9NCompress5NBcj28CEncoderE"
	.size	_ZTSN9NCompress5NBcj28CEncoderE, 28

	.type	_ZTI15ICompressCoder2,@object   # @_ZTI15ICompressCoder2
	.section	.data.rel.ro._ZTI15ICompressCoder2,"awG",@progbits,_ZTI15ICompressCoder2,comdat
	.weak	_ZTI15ICompressCoder2
	.p2align	3, 0x0
_ZTI15ICompressCoder2:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS15ICompressCoder2
	.dword	_ZTI8IUnknown
	.size	_ZTI15ICompressCoder2, 24

	.type	_ZTS15ICompressCoder2,@object   # @_ZTS15ICompressCoder2
	.section	.rodata._ZTS15ICompressCoder2,"aG",@progbits,_ZTS15ICompressCoder2,comdat
	.weak	_ZTS15ICompressCoder2
_ZTS15ICompressCoder2:
	.asciz	"15ICompressCoder2"
	.size	_ZTS15ICompressCoder2, 18

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

	.type	_ZTIN9NCompress5NBcj28CDecoderE,@object # @_ZTIN9NCompress5NBcj28CDecoderE
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTIN9NCompress5NBcj28CDecoderE
	.p2align	3, 0x0
_ZTIN9NCompress5NBcj28CDecoderE:
	.dword	_ZTVN10__cxxabiv121__vmi_class_type_infoE+16
	.dword	_ZTSN9NCompress5NBcj28CDecoderE
	.word	1                               # 0x1
	.word	3                               # 0x3
	.dword	_ZTI15ICompressCoder2
	.dword	2                               # 0x2
	.dword	_ZTI19ICompressSetBufSize
	.dword	2050                            # 0x802
	.dword	_ZTI13CMyUnknownImp
	.dword	4098                            # 0x1002
	.size	_ZTIN9NCompress5NBcj28CDecoderE, 72

	.type	_ZTSN9NCompress5NBcj28CDecoderE,@object # @_ZTSN9NCompress5NBcj28CDecoderE
	.section	.rodata,"a",@progbits
	.globl	_ZTSN9NCompress5NBcj28CDecoderE
_ZTSN9NCompress5NBcj28CDecoderE:
	.asciz	"N9NCompress5NBcj28CDecoderE"
	.size	_ZTSN9NCompress5NBcj28CDecoderE, 28

	.type	_ZTI19ICompressSetBufSize,@object # @_ZTI19ICompressSetBufSize
	.section	.data.rel.ro._ZTI19ICompressSetBufSize,"awG",@progbits,_ZTI19ICompressSetBufSize,comdat
	.weak	_ZTI19ICompressSetBufSize
	.p2align	3, 0x0
_ZTI19ICompressSetBufSize:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS19ICompressSetBufSize
	.dword	_ZTI8IUnknown
	.size	_ZTI19ICompressSetBufSize, 24

	.type	_ZTS19ICompressSetBufSize,@object # @_ZTS19ICompressSetBufSize
	.section	.rodata._ZTS19ICompressSetBufSize,"aG",@progbits,_ZTS19ICompressSetBufSize,comdat
	.weak	_ZTS19ICompressSetBufSize
_ZTS19ICompressSetBufSize:
	.asciz	"19ICompressSetBufSize"
	.size	_ZTS19ICompressSetBufSize, 22

	.data
	.p2align	3, 0x0
.L_ZTI18CInBufferException.DW.stub:
	.dword	_ZTI18CInBufferException
.L_ZTI19COutBufferException.DW.stub:
	.dword	_ZTI19COutBufferException
	.globl	_ZN9NCompress5NBcj28CEncoderD1Ev
	.type	_ZN9NCompress5NBcj28CEncoderD1Ev,@function
_ZN9NCompress5NBcj28CEncoderD1Ev = _ZN9NCompress5NBcj28CEncoderD2Ev
	.globl	_ZN9NCompress5NBcj28CDecoderC1Ev
	.type	_ZN9NCompress5NBcj28CDecoderC1Ev,@function
_ZN9NCompress5NBcj28CDecoderC1Ev = _ZN9NCompress5NBcj28CDecoderC2Ev
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
	.addrsig_sym IID_ICompressGetSubStreamSize
	.addrsig_sym _ZTI19COutBufferException
	.addrsig_sym _ZTVN10__cxxabiv120__si_class_type_infoE
	.addrsig_sym _ZTS19COutBufferException
	.addrsig_sym _ZTI16CSystemException
	.addrsig_sym _ZTVN10__cxxabiv117__class_type_infoE
	.addrsig_sym _ZTS16CSystemException
	.addrsig_sym _ZTI18CInBufferException
	.addrsig_sym _ZTS18CInBufferException
	.addrsig_sym _ZTIN9NCompress5NBcj28CEncoderE
	.addrsig_sym _ZTVN10__cxxabiv121__vmi_class_type_infoE
	.addrsig_sym _ZTSN9NCompress5NBcj28CEncoderE
	.addrsig_sym _ZTI15ICompressCoder2
	.addrsig_sym _ZTS15ICompressCoder2
	.addrsig_sym _ZTI8IUnknown
	.addrsig_sym _ZTS8IUnknown
	.addrsig_sym _ZTI13CMyUnknownImp
	.addrsig_sym _ZTS13CMyUnknownImp
	.addrsig_sym _ZTIN9NCompress5NBcj28CDecoderE
	.addrsig_sym _ZTSN9NCompress5NBcj28CDecoderE
	.addrsig_sym _ZTI19ICompressSetBufSize
	.addrsig_sym _ZTS19ICompressSetBufSize
