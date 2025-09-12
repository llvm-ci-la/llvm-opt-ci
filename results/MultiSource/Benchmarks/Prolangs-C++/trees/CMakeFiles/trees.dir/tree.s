	.file	"tree.cpp"
	.text
	.globl	_Z6strcpyPcS_                   # -- Begin function _Z6strcpyPcS_
	.p2align	5
	.type	_Z6strcpyPcS_,@function
_Z6strcpyPcS_:                          # @_Z6strcpyPcS_
# %bb.0:
	ld.b	$a1, $a1, 0
	st.b	$a1, $a0, 0
	ret
.Lfunc_end0:
	.size	_Z6strcpyPcS_, .Lfunc_end0-_Z6strcpyPcS_
                                        # -- End function
	.globl	_Z6strlenPc                     # -- Begin function _Z6strlenPc
	.p2align	5
	.type	_Z6strlenPc,@function
_Z6strlenPc:                            # @_Z6strlenPc
# %bb.0:
	move	$a0, $zero
	ret
.Lfunc_end1:
	.size	_Z6strlenPc, .Lfunc_end1-_Z6strlenPc
                                        # -- End function
	.globl	_ZN4TreeC2Ef                    # -- Begin function _ZN4TreeC2Ef
	.p2align	5
	.type	_ZN4TreeC2Ef,@function
_ZN4TreeC2Ef:                           # @_ZN4TreeC2Ef
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 8                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 56, -24
	fmov.s	$fs0, $fa0
	move	$fp, $a0
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 8
	pcalau12i	$a1, %pc_hi20(_ZTV8RealNode+16)
	addi.d	$a1, $a1, %pc_lo12(_ZTV8RealNode+16)
	st.d	$a1, $a0, 0
	st.d	$zero, $a0, 16
	fst.s	$fs0, $a0, 12
	st.d	$a0, $fp, 0
	fld.d	$fs0, $sp, 8                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end2:
	.size	_ZN4TreeC2Ef, .Lfunc_end2-_ZN4TreeC2Ef
	.cfi_endproc
                                        # -- End function
	.globl	_ZN4TreeC2EPc                   # -- Begin function _ZN4TreeC2EPc
	.p2align	5
	.type	_ZN4TreeC2EPc,@function
_ZN4TreeC2EPc:                          # @_ZN4TreeC2EPc
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
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	move	$s1, $a1
	move	$s0, $a0
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ori	$a0, $zero, 1
	st.d	$a0, $fp, 8
	pcalau12i	$a0, %pc_hi20(_ZTV8RealNode+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV8RealNode+16)
	st.d	$a0, $fp, 0
	st.d	$zero, $fp, 16
	beqz	$s1, .LBB3_3
# %bb.1:
.Ltmp0:                                 # EH_LABEL
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.2:                                # %.noexc
	ld.b	$a1, $s1, 0
	st.d	$a0, $fp, 16
	st.b	$a1, $a0, 0
.LBB3_3:                                # %_ZN8RealNodeC2EfPc.exit
	st.d	$fp, $s0, 0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB3_4:
.Ltmp2:                                 # EH_LABEL
	move	$s0, $a0
	ori	$a1, $zero, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end3:
	.size	_ZN4TreeC2EPc, .Lfunc_end3-_ZN4TreeC2EPc
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table3:
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
	.uleb128 .Lfunc_end3-.Ltmp1             #   Call between .Ltmp1 and .Lfunc_end3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN4TreeC2EPcS_                 # -- Begin function _ZN4TreeC2EPcS_
	.p2align	5
	.type	_ZN4TreeC2EPcS_,@function
_ZN4TreeC2EPcS_:                        # @_ZN4TreeC2EPcS_
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception1
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
	move	$fp, $a2
	move	$s2, $a1
	move	$s1, $a0
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	ld.d	$fp, $fp, 0
	ld.w	$s5, $fp, 8
	move	$s0, $a0
	addi.w	$s3, $s5, 1
	st.w	$s3, $fp, 8
	ori	$a0, $zero, 1
	st.w	$a0, $s0, 8
	pcalau12i	$a0, %pc_hi20(_ZTV9UnaryNode+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV9UnaryNode+16)
	st.d	$a0, $s0, 0
.Ltmp3:                                 # EH_LABEL
	ori	$a0, $zero, 8
	move	$s4, $s3
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp4:                                 # EH_LABEL
# %bb.1:                                # %.noexc
	st.d	$fp, $a0, 0
	addi.d	$s4, $s5, 2
	st.w	$s4, $fp, 8
	st.d	$a0, $s0, 24
.Ltmp5:                                 # EH_LABEL
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp6:                                 # EH_LABEL
# %bb.2:
	ld.b	$a1, $s2, 0
	st.d	$a0, $s0, 16
	st.b	$a1, $a0, 0
	st.d	$s0, $s1, 0
	st.w	$s3, $fp, 8
	beqz	$s3, .LBB4_4
# %bb.3:                                # %_ZN4TreeD2Ev.exit
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
.LBB4_4:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 16
	move	$a0, $fp
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	jr	$a1
.LBB4_5:
.Ltmp7:                                 # EH_LABEL
	move	$s1, $a0
	addi.w	$a0, $s4, -1
	st.w	$a0, $fp, 8
	bnez	$a0, .LBB4_7
# %bb.6:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 16
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB4_7:                                # %_ZN4TreeD2Ev.exit6
	ori	$a1, $zero, 32
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end4:
	.size	_ZN4TreeC2EPcS_, .Lfunc_end4-_ZN4TreeC2EPcS_
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table4:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Lfunc_begin1-.Lfunc_begin1    # >> Call Site 1 <<
	.uleb128 .Ltmp3-.Lfunc_begin1           #   Call between .Lfunc_begin1 and .Ltmp3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp3-.Lfunc_begin1           # >> Call Site 2 <<
	.uleb128 .Ltmp6-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp6
	.uleb128 .Ltmp7-.Lfunc_begin1           #     jumps to .Ltmp7
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp6-.Lfunc_begin1           # >> Call Site 3 <<
	.uleb128 .Lfunc_end4-.Ltmp6             #   Call between .Ltmp6 and .Lfunc_end4
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN4TreeC2ES_PcS_               # -- Begin function _ZN4TreeC2ES_PcS_
	.p2align	5
	.type	_ZN4TreeC2ES_PcS_,@function
_ZN4TreeC2ES_PcS_:                      # @_ZN4TreeC2ES_PcS_
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception2
# %bb.0:
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
	move	$s0, $a3
	move	$s3, $a2
	move	$fp, $a1
	move	$s2, $a0
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	ld.d	$fp, $fp, 0
	ld.w	$a1, $fp, 8
	ld.d	$s1, $s0, 0
	addi.d	$a1, $a1, 1
	st.w	$a1, $fp, 8
	ld.w	$a1, $s1, 8
	move	$s0, $a0
	addi.d	$a0, $a1, 1
	st.w	$a0, $s1, 8
	ori	$a0, $zero, 1
	st.w	$a0, $s0, 8
	pcalau12i	$a0, %pc_hi20(_ZTV10BinaryNode+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV10BinaryNode+16)
	st.d	$a0, $s0, 0
.Ltmp8:                                 # EH_LABEL
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp9:                                 # EH_LABEL
# %bb.1:                                # %.noexc
	ld.w	$a1, $fp, 8
	st.d	$fp, $a0, 0
	addi.d	$a1, $a1, 1
	st.w	$a1, $fp, 8
	st.d	$a0, $s0, 24
.Ltmp10:                                # EH_LABEL
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp11:                                # EH_LABEL
# %bb.2:                                # %.noexc6
	ld.w	$s4, $s1, 8
	st.d	$s1, $a0, 0
	addi.d	$a1, $s4, 1
	st.w	$a1, $s1, 8
	st.d	$a0, $s0, 32
.Ltmp12:                                # EH_LABEL
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp13:                                # EH_LABEL
# %bb.3:
	ld.b	$a1, $s3, 0
	st.d	$a0, $s0, 16
	st.b	$a1, $a0, 0
	st.d	$s0, $s2, 0
	st.w	$s4, $s1, 8
	beqz	$s4, .LBB5_6
# %bb.4:                                # %_ZN4TreeD2Ev.exit
	ld.w	$a0, $fp, 8
	addi.w	$a0, $a0, -1
	st.w	$a0, $fp, 8
	beqz	$a0, .LBB5_7
.LBB5_5:                                # %_ZN4TreeD2Ev.exit8
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB5_6:
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 16
	move	$a0, $s1
	jirl	$ra, $a1, 0
	ld.w	$a0, $fp, 8
	addi.w	$a0, $a0, -1
	st.w	$a0, $fp, 8
	bnez	$a0, .LBB5_5
.LBB5_7:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 16
	move	$a0, $fp
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	jr	$a1
.LBB5_8:
.Ltmp14:                                # EH_LABEL
	ld.w	$a1, $s1, 8
	move	$s2, $a0
	addi.w	$a0, $a1, -1
	st.w	$a0, $s1, 8
	bnez	$a0, .LBB5_10
# %bb.9:
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 16
	move	$a0, $s1
	jirl	$ra, $a1, 0
.LBB5_10:                               # %_ZN4TreeD2Ev.exit9
	ld.w	$a0, $fp, 8
	addi.w	$a0, $a0, -1
	st.w	$a0, $fp, 8
	bnez	$a0, .LBB5_12
# %bb.11:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 16
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB5_12:                               # %_ZN4TreeD2Ev.exit10
	ori	$a1, $zero, 40
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end5:
	.size	_ZN4TreeC2ES_PcS_, .Lfunc_end5-_ZN4TreeC2ES_PcS_
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table5:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Lfunc_begin2-.Lfunc_begin2    # >> Call Site 1 <<
	.uleb128 .Ltmp8-.Lfunc_begin2           #   Call between .Lfunc_begin2 and .Ltmp8
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp8-.Lfunc_begin2           # >> Call Site 2 <<
	.uleb128 .Ltmp13-.Ltmp8                 #   Call between .Ltmp8 and .Ltmp13
	.uleb128 .Ltmp14-.Lfunc_begin2          #     jumps to .Ltmp14
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp13-.Lfunc_begin2          # >> Call Site 3 <<
	.uleb128 .Lfunc_end5-.Ltmp13            #   Call between .Ltmp13 and .Lfunc_end5
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN4TreeD2Ev                    # -- Begin function _ZN4TreeD2Ev
	.p2align	5
	.type	_ZN4TreeD2Ev,@function
_ZN4TreeD2Ev:                           # @_ZN4TreeD2Ev
# %bb.0:
	ld.d	$a0, $a0, 0
	ld.w	$a1, $a0, 8
	addi.w	$a1, $a1, -1
	st.w	$a1, $a0, 8
	beqz	$a1, .LBB6_2
# %bb.1:
	ret
.LBB6_2:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
	jr	$a1
.Lfunc_end6:
	.size	_ZN4TreeD2Ev, .Lfunc_end6-_ZN4TreeD2Ev
                                        # -- End function
	.globl	_ZN4TreeaSERKS_                 # -- Begin function _ZN4TreeaSERKS_
	.p2align	5
	.type	_ZN4TreeaSERKS_,@function
_ZN4TreeaSERKS_:                        # @_ZN4TreeaSERKS_
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$s0, $a1
	ld.d	$a1, $a1, 0
	ld.w	$a2, $a1, 8
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	addi.d	$a2, $a2, 1
	st.w	$a2, $a1, 8
	ld.w	$a2, $a0, 8
	addi.w	$a2, $a2, -1
	st.w	$a2, $a0, 8
	bnez	$a2, .LBB7_2
# %bb.1:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
	jirl	$ra, $a1, 0
	ld.d	$a1, $s0, 0
.LBB7_2:
	st.d	$a1, $fp, 0
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end7:
	.size	_ZN4TreeaSERKS_, .Lfunc_end7-_ZN4TreeaSERKS_
                                        # -- End function
	.globl	_ZN4TreeC2ERKS_                 # -- Begin function _ZN4TreeC2ERKS_
	.p2align	5
	.type	_ZN4TreeC2ERKS_,@function
_ZN4TreeC2ERKS_:                        # @_ZN4TreeC2ERKS_
# %bb.0:
	ld.d	$a1, $a1, 0
	ld.w	$a2, $a1, 8
	st.d	$a1, $a0, 0
	addi.d	$a0, $a2, 1
	st.w	$a0, $a1, 8
	ret
.Lfunc_end8:
	.size	_ZN4TreeC2ERKS_, .Lfunc_end8-_ZN4TreeC2ERKS_
                                        # -- End function
	.globl	_ZN4Tree5valueEv                # -- Begin function _ZN4Tree5valueEv
	.p2align	5
	.type	_ZN4Tree5valueEv,@function
_ZN4Tree5valueEv:                       # @_ZN4Tree5valueEv
	.cfi_startproc
# %bb.0:
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 0
	jr	$a1
.Lfunc_end9:
	.size	_ZN4Tree5valueEv, .Lfunc_end9-_ZN4Tree5valueEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZN4TreeclEfff                  # -- Begin function _ZN4TreeclEfff
	.p2align	5
	.type	_ZN4TreeclEfff,@function
_ZN4TreeclEfff:                         # @_ZN4TreeclEfff
	.cfi_startproc
# %bb.0:
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a0, 0
	pcalau12i	$a2, %pc_hi20(values0)
	fst.s	$fa0, $a2, %pc_lo12(values0)
	ld.d	$a1, $a1, 0
	pcalau12i	$a2, %pc_hi20(values1)
	fst.s	$fa1, $a2, %pc_lo12(values1)
	pcalau12i	$a2, %pc_hi20(values2)
	fst.s	$fa2, $a2, %pc_lo12(values2)
	jr	$a1
.Lfunc_end10:
	.size	_ZN4TreeclEfff, .Lfunc_end10-_ZN4TreeclEfff
	.cfi_endproc
                                        # -- End function
	.globl	_ZN10BinaryNodeC2EPc4TreeS1_    # -- Begin function _ZN10BinaryNodeC2EPc4TreeS1_
	.p2align	5
	.type	_ZN10BinaryNodeC2EPc4TreeS1_,@function
_ZN10BinaryNodeC2EPc4TreeS1_:           # @_ZN10BinaryNodeC2EPc4TreeS1_
	.cfi_startproc
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
	move	$fp, $a3
	move	$s0, $a2
	move	$s1, $a1
	move	$s2, $a0
	ori	$a0, $zero, 1
	st.w	$a0, $s2, 8
	pcalau12i	$a0, %pc_hi20(_ZTV10BinaryNode+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV10BinaryNode+16)
	st.d	$a0, $s2, 0
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 0
	ld.w	$a2, $a1, 8
	st.d	$a1, $a0, 0
	addi.d	$a2, $a2, 1
	st.w	$a2, $a1, 8
	st.d	$a0, $s2, 24
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	ld.w	$a2, $a1, 8
	st.d	$a1, $a0, 0
	addi.d	$a2, $a2, 1
	st.w	$a2, $a1, 8
	st.d	$a0, $s2, 32
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, 16
	ld.b	$a1, $s1, 0
	st.b	$a1, $a0, 0
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end11:
	.size	_ZN10BinaryNodeC2EPc4TreeS1_, .Lfunc_end11-_ZN10BinaryNodeC2EPc4TreeS1_
	.cfi_endproc
                                        # -- End function
	.globl	_ZN10BinaryNode9nodeValueEv     # -- Begin function _ZN10BinaryNode9nodeValueEv
	.p2align	5
	.type	_ZN10BinaryNode9nodeValueEv,@function
_ZN10BinaryNode9nodeValueEv:            # @_ZN10BinaryNode9nodeValueEv
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	fst.d	$fs0, $sp, 0                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 56, -32
	move	$fp, $a0
	ld.d	$a0, $a0, 24
	ld.d	$a0, $a0, 0
	ld.d	$a1, $fp, 16
	ld.d	$a2, $a0, 0
	ld.bu	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	addi.d	$a1, $a1, -43
	sltui	$s0, $a1, 1
	jirl	$ra, $a2, 0
	ld.d	$a0, $fp, 32
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 0
	fmov.s	$fs0, $fa0
	jirl	$ra, $a1, 0
	fadd.s	$fa0, $fs0, $fa0
	lu12i.w	$a0, 307593
	ori	$a0, $a0, 1663
	movgr2fr.w	$fa1, $a0
	movgr2cf	$fcc0, $s0
	fsel	$fa0, $fa1, $fa0, $fcc0
	fld.d	$fs0, $sp, 0                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end12:
	.size	_ZN10BinaryNode9nodeValueEv, .Lfunc_end12-_ZN10BinaryNode9nodeValueEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZN9UnaryNodeC2EPc4Tree         # -- Begin function _ZN9UnaryNodeC2EPc4Tree
	.p2align	5
	.type	_ZN9UnaryNodeC2EPc4Tree,@function
_ZN9UnaryNodeC2EPc4Tree:                # @_ZN9UnaryNodeC2EPc4Tree
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
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	ori	$a0, $zero, 1
	st.w	$a0, $s1, 8
	pcalau12i	$a0, %pc_hi20(_ZTV9UnaryNode+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV9UnaryNode+16)
	st.d	$a0, $s1, 0
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	ld.w	$a2, $a1, 8
	st.d	$a1, $a0, 0
	addi.d	$a2, $a2, 1
	st.w	$a2, $a1, 8
	st.d	$a0, $s1, 24
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, 16
	ld.b	$a1, $s0, 0
	st.b	$a1, $a0, 0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end13:
	.size	_ZN9UnaryNodeC2EPc4Tree, .Lfunc_end13-_ZN9UnaryNodeC2EPc4Tree
	.cfi_endproc
                                        # -- End function
	.globl	_ZN9UnaryNode9nodeValueEv       # -- Begin function _ZN9UnaryNode9nodeValueEv
	.p2align	5
	.type	_ZN9UnaryNode9nodeValueEv,@function
_ZN9UnaryNode9nodeValueEv:              # @_ZN9UnaryNode9nodeValueEv
	.cfi_startproc
# %bb.0:
	ld.d	$a1, $a0, 16
	ld.bu	$a1, $a1, 0
	ori	$a2, $zero, 45
	bne	$a1, $a2, .LBB14_2
# %bb.1:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	ld.d	$a0, $a0, 24
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 0
	jirl	$ra, $a1, 0
	fneg.s	$fa0, $fa0
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB14_2:
	ld.d	$a0, $a0, 24
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 0
	jr	$a1
.Lfunc_end14:
	.size	_ZN9UnaryNode9nodeValueEv, .Lfunc_end14-_ZN9UnaryNode9nodeValueEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZN8RealNodeC2EfPc              # -- Begin function _ZN8RealNodeC2EfPc
	.p2align	5
	.type	_ZN8RealNodeC2EfPc,@function
_ZN8RealNodeC2EfPc:                     # @_ZN8RealNodeC2EfPc
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
	move	$s0, $a0
	ori	$a0, $zero, 1
	st.w	$a0, $s0, 8
	pcalau12i	$a0, %pc_hi20(_ZTV8RealNode+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV8RealNode+16)
	st.d	$a0, $s0, 0
	st.d	$zero, $s0, 16
	fst.s	$fa0, $s0, 12
	beqz	$a1, .LBB15_2
# %bb.1:
	move	$fp, $a1
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 16
	ld.b	$a1, $fp, 0
	st.b	$a1, $a0, 0
.LBB15_2:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end15:
	.size	_ZN8RealNodeC2EfPc, .Lfunc_end15-_ZN8RealNodeC2EfPc
	.cfi_endproc
                                        # -- End function
	.globl	_ZN8RealNode9nodeValueEv        # -- Begin function _ZN8RealNode9nodeValueEv
	.p2align	5
	.type	_ZN8RealNode9nodeValueEv,@function
_ZN8RealNode9nodeValueEv:               # @_ZN8RealNode9nodeValueEv
# %bb.0:
	ld.d	$a1, $a0, 16
	beqz	$a1, .LBB16_2
# %bb.1:
	ld.bu	$a0, $a1, 0
	addi.d	$a1, $a0, -121
	sltui	$a1, $a1, 1
	pcalau12i	$a2, %pc_hi20(values2)
	addi.d	$a2, $a2, %pc_lo12(values2)
	masknez	$a2, $a2, $a1
	pcalau12i	$a3, %pc_hi20(values1)
	addi.d	$a3, $a3, %pc_lo12(values1)
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a2
	addi.d	$a0, $a0, -120
	sltui	$a0, $a0, 1
	masknez	$a1, $a1, $a0
	pcalau12i	$a2, %pc_hi20(values0)
	addi.d	$a2, $a2, %pc_lo12(values0)
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	fld.s	$fa0, $a0, 0
	ret
.LBB16_2:
	addi.d	$a0, $a0, 12
	fld.s	$fa0, $a0, 0
	ret
.Lfunc_end16:
	.size	_ZN8RealNode9nodeValueEv, .Lfunc_end16-_ZN8RealNode9nodeValueEv
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception3
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
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ori	$s1, $zero, 1
	lu52i.d	$a0, $s1, 1016
	st.d	$a0, $fp, 8
	pcalau12i	$a0, %pc_hi20(_ZTV8RealNode+16)
	addi.d	$s2, $a0, %pc_lo12(_ZTV8RealNode+16)
	st.d	$s2, $fp, 0
	st.d	$zero, $fp, 16
.Ltmp15:                                # EH_LABEL
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp16:                                # EH_LABEL
# %bb.1:                                # %.noexc
	move	$s0, $a0
	st.d	$s1, $a0, 8
	st.d	$s2, $a0, 0
	st.d	$zero, $a0, 16
.Ltmp18:                                # EH_LABEL
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp19:                                # EH_LABEL
# %bb.2:
	st.d	$a0, $s0, 16
	ori	$a1, $zero, 117
	st.b	$a1, $a0, 0
.Ltmp21:                                # EH_LABEL
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp22:                                # EH_LABEL
# %bb.3:
	move	$s1, $a0
	ori	$a0, $zero, 1
	lu52i.d	$a0, $a0, 1034
	st.d	$a0, $s1, 8
	st.d	$s2, $s1, 0
	st.d	$zero, $s1, 16
	st.d	$fp, $sp, 64
	ori	$a0, $zero, 2
	st.w	$a0, $fp, 8
	st.d	$s0, $sp, 56
	st.w	$a0, $s0, 8
.Ltmp24:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a2, $a0, %pc_lo12(.L.str.1)
	addi.d	$a0, $sp, 72
	addi.d	$a1, $sp, 64
	addi.d	$a3, $sp, 56
	pcaddu18i	$ra, %call36(_ZN4TreeC2ES_PcS_)
	jirl	$ra, $ra, 0
.Ltmp25:                                # EH_LABEL
# %bb.4:
	ld.w	$a0, $s0, 8
	addi.w	$a0, $a0, -1
	st.w	$a0, $s0, 8
	beqz	$a0, .LBB17_29
# %bb.5:                                # %_ZN4TreeD2Ev.exit
	ld.w	$a0, $fp, 8
	addi.w	$a0, $a0, -1
	st.w	$a0, $fp, 8
	beqz	$a0, .LBB17_30
.LBB17_6:                               # %_ZN4TreeD2Ev.exit21
	ld.w	$s4, $s1, 8
	addi.d	$a0, $s4, 1
	st.w	$a0, $s1, 8
.Ltmp27:                                # EH_LABEL
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp28:                                # EH_LABEL
# %bb.7:                                # %.noexc22
	move	$s2, $a0
	addi.w	$s3, $s4, 2
	st.w	$s3, $s1, 8
	ori	$a0, $zero, 1
	st.w	$a0, $s2, 8
	pcalau12i	$a0, %pc_hi20(_ZTV9UnaryNode+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV9UnaryNode+16)
	st.d	$a0, $s2, 0
.Ltmp30:                                # EH_LABEL
	ori	$a0, $zero, 8
	move	$s5, $s3
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp31:                                # EH_LABEL
# %bb.8:                                # %.noexc.i
	st.d	$s1, $a0, 0
	addi.d	$s5, $s4, 3
	st.w	$s5, $s1, 8
	st.d	$a0, $s2, 24
.Ltmp32:                                # EH_LABEL
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp33:                                # EH_LABEL
# %bb.9:
	st.d	$a0, $s2, 16
	ori	$a1, $zero, 45
	st.b	$a1, $a0, 0
	st.w	$s3, $s1, 8
	beqz	$s3, .LBB17_31
# %bb.10:                               # %_ZN4TreeC2EPcS_.exit
	addi.w	$a0, $s3, -1
	st.w	$a0, $s1, 8
	beqz	$a0, .LBB17_32
.LBB17_11:                              # %_ZN4TreeD2Ev.exit25
	ld.d	$s3, $sp, 72
	pcalau12i	$s5, %pc_hi20(values0)
	ld.d	$a0, $s3, 0
	lu12i.w	$a1, 267264
	st.w	$a1, $s5, %pc_lo12(values0)
	pcalau12i	$s6, %pc_hi20(values1)
	ld.d	$a1, $a0, 0
	st.w	$zero, $s6, %pc_lo12(values1)
	pcalau12i	$s7, %pc_hi20(values2)
	st.w	$zero, $s7, %pc_lo12(values2)
.Ltmp35:                                # EH_LABEL
	move	$a0, $s3
	jirl	$ra, $a1, 0
.Ltmp36:                                # EH_LABEL
# %bb.12:                               # %_ZN4TreeclEfff.exit
	ld.d	$a0, $s2, 0
	ld.d	$a1, $a0, 0
.Ltmp37:                                # EH_LABEL
	move	$a0, $s2
	jirl	$ra, $a1, 0
.Ltmp38:                                # EH_LABEL
# %bb.13:                               # %_ZN4Tree5valueEv.exit
	ld.w	$a0, $fp, 8
	st.d	$fp, $sp, 40
	ld.w	$a1, $s1, 8
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 8
	st.d	$s1, $sp, 32
	addi.d	$a0, $a1, 1
	st.w	$a0, $s1, 8
.Ltmp40:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a2, $a0, %pc_lo12(.L.str.3)
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 40
	addi.d	$a3, $sp, 32
	pcaddu18i	$ra, %call36(_ZN4TreeC2ES_PcS_)
	jirl	$ra, $ra, 0
.Ltmp41:                                # EH_LABEL
# %bb.14:
	ld.w	$a0, $s1, 8
	addi.w	$a0, $a0, -1
	st.w	$a0, $s1, 8
	beqz	$a0, .LBB17_33
# %bb.15:                               # %_ZN4TreeD2Ev.exit28
	ld.w	$a0, $fp, 8
	addi.w	$a0, $a0, -1
	st.w	$a0, $fp, 8
	beqz	$a0, .LBB17_34
.LBB17_16:                              # %_ZN4TreeD2Ev.exit29
	ld.d	$s4, $sp, 48
	ld.d	$a0, $s4, 0
	lu12i.w	$a1, 267294
	ori	$a1, $a1, 2949
	ld.d	$a2, $a0, 0
	st.w	$a1, $s5, %pc_lo12(values0)
	st.w	$zero, $s6, %pc_lo12(values1)
	st.w	$zero, $s7, %pc_lo12(values2)
.Ltmp43:                                # EH_LABEL
	move	$a0, $s4
	jirl	$ra, $a2, 0
.Ltmp44:                                # EH_LABEL
# %bb.17:                               # %_ZN4TreeclEfff.exit31
	ld.w	$a0, $fp, 8
	st.d	$fp, $sp, 16
	ld.w	$a1, $s2, 8
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 8
	st.d	$s2, $sp, 8
	addi.d	$a0, $a1, 1
	st.w	$a0, $s2, 8
.Ltmp46:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a2, $a0, %pc_lo12(.L.str.4)
	addi.d	$a0, $sp, 24
	addi.d	$a1, $sp, 16
	addi.d	$a3, $sp, 8
	pcaddu18i	$ra, %call36(_ZN4TreeC2ES_PcS_)
	jirl	$ra, $ra, 0
.Ltmp47:                                # EH_LABEL
# %bb.18:
	ld.w	$a0, $s2, 8
	addi.w	$a0, $a0, -1
	st.w	$a0, $s2, 8
	beqz	$a0, .LBB17_35
# %bb.19:                               # %_ZN4TreeD2Ev.exit32
	ld.w	$a0, $fp, 8
	addi.w	$a0, $a0, -1
	st.w	$a0, $fp, 8
	beqz	$a0, .LBB17_36
.LBB17_20:                              # %_ZN4TreeD2Ev.exit33
	ld.d	$s5, $sp, 24
	ld.d	$a0, $s5, 0
	ld.d	$a1, $a0, 0
.Ltmp49:                                # EH_LABEL
	move	$a0, $s5
	jirl	$ra, $a1, 0
.Ltmp50:                                # EH_LABEL
# %bb.21:                               # %_ZN4Tree5valueEv.exit35
	ld.w	$a0, $s5, 8
	addi.w	$a0, $a0, -1
	st.w	$a0, $s5, 8
	beqz	$a0, .LBB17_37
# %bb.22:                               # %_ZN4TreeD2Ev.exit36
	ld.w	$a0, $s4, 8
	addi.w	$a0, $a0, -1
	st.w	$a0, $s4, 8
	beqz	$a0, .LBB17_38
.LBB17_23:                              # %_ZN4TreeD2Ev.exit37
	ld.w	$a0, $s2, 8
	addi.w	$a0, $a0, -1
	st.w	$a0, $s2, 8
	beqz	$a0, .LBB17_39
.LBB17_24:                              # %_ZN4TreeD2Ev.exit38
	ld.w	$a0, $s3, 8
	addi.w	$a0, $a0, -1
	st.w	$a0, $s3, 8
	beqz	$a0, .LBB17_40
.LBB17_25:                              # %_ZN4TreeD2Ev.exit39
	ld.w	$a0, $s1, 8
	addi.w	$a0, $a0, -1
	st.w	$a0, $s1, 8
	beqz	$a0, .LBB17_41
.LBB17_26:                              # %_ZN4TreeD2Ev.exit40
	ld.w	$a0, $s0, 8
	addi.w	$a0, $a0, -1
	st.w	$a0, $s0, 8
	beqz	$a0, .LBB17_42
.LBB17_27:                              # %_ZN4TreeD2Ev.exit41
	ld.w	$a0, $fp, 8
	addi.w	$a0, $a0, -1
	st.w	$a0, $fp, 8
	beqz	$a0, .LBB17_43
.LBB17_28:                              # %_ZN4TreeD2Ev.exit42
	move	$a0, $zero
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
.LBB17_29:
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 16
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.w	$a0, $fp, 8
	addi.w	$a0, $a0, -1
	st.w	$a0, $fp, 8
	bnez	$a0, .LBB17_6
.LBB17_30:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 16
	move	$a0, $fp
	jirl	$ra, $a1, 0
	b	.LBB17_6
.LBB17_31:
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 16
	move	$a0, $s1
	jirl	$ra, $a1, 0
	ld.w	$s3, $s1, 8
	addi.w	$a0, $s3, -1
	st.w	$a0, $s1, 8
	bnez	$a0, .LBB17_11
.LBB17_32:
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 16
	move	$a0, $s1
	jirl	$ra, $a1, 0
	b	.LBB17_11
.LBB17_33:
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 16
	move	$a0, $s1
	jirl	$ra, $a1, 0
	ld.w	$a0, $fp, 8
	addi.w	$a0, $a0, -1
	st.w	$a0, $fp, 8
	bnez	$a0, .LBB17_16
.LBB17_34:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 16
	move	$a0, $fp
	jirl	$ra, $a1, 0
	b	.LBB17_16
.LBB17_35:
	ld.d	$a0, $s2, 0
	ld.d	$a1, $a0, 16
	move	$a0, $s2
	jirl	$ra, $a1, 0
	ld.w	$a0, $fp, 8
	addi.w	$a0, $a0, -1
	st.w	$a0, $fp, 8
	bnez	$a0, .LBB17_20
.LBB17_36:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 16
	move	$a0, $fp
	jirl	$ra, $a1, 0
	b	.LBB17_20
.LBB17_37:
	ld.d	$a0, $s5, 0
	ld.d	$a1, $a0, 16
	move	$a0, $s5
	jirl	$ra, $a1, 0
	ld.w	$a0, $s4, 8
	addi.w	$a0, $a0, -1
	st.w	$a0, $s4, 8
	bnez	$a0, .LBB17_23
.LBB17_38:
	ld.d	$a0, $s4, 0
	ld.d	$a1, $a0, 16
	move	$a0, $s4
	jirl	$ra, $a1, 0
	ld.w	$a0, $s2, 8
	addi.w	$a0, $a0, -1
	st.w	$a0, $s2, 8
	bnez	$a0, .LBB17_24
.LBB17_39:
	ld.d	$a0, $s2, 0
	ld.d	$a1, $a0, 16
	move	$a0, $s2
	jirl	$ra, $a1, 0
	ld.w	$a0, $s3, 8
	addi.w	$a0, $a0, -1
	st.w	$a0, $s3, 8
	bnez	$a0, .LBB17_25
.LBB17_40:
	ld.d	$a0, $s3, 0
	ld.d	$a1, $a0, 16
	move	$a0, $s3
	jirl	$ra, $a1, 0
	ld.w	$a0, $s1, 8
	addi.w	$a0, $a0, -1
	st.w	$a0, $s1, 8
	bnez	$a0, .LBB17_26
.LBB17_41:
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 16
	move	$a0, $s1
	jirl	$ra, $a1, 0
	ld.w	$a0, $s0, 8
	addi.w	$a0, $a0, -1
	st.w	$a0, $s0, 8
	bnez	$a0, .LBB17_27
.LBB17_42:
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 16
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.w	$a0, $fp, 8
	addi.w	$a0, $a0, -1
	st.w	$a0, $fp, 8
	bnez	$a0, .LBB17_28
.LBB17_43:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 16
	move	$a0, $fp
	jirl	$ra, $a1, 0
	b	.LBB17_28
.LBB17_44:
.Ltmp51:                                # EH_LABEL
	ld.w	$a1, $s5, 8
	move	$s3, $a0
	addi.w	$a0, $a1, -1
	st.w	$a0, $s5, 8
	beqz	$a0, .LBB17_48
	b	.LBB17_50
.LBB17_45:
.Ltmp48:                                # EH_LABEL
	ld.w	$a1, $s2, 8
	move	$s3, $a0
	addi.w	$a0, $a1, -1
	st.w	$a0, $s2, 8
	bnez	$a0, .LBB17_47
# %bb.46:
	ld.d	$a0, $s2, 0
	ld.d	$a1, $a0, 16
	move	$a0, $s2
	jirl	$ra, $a1, 0
.LBB17_47:                              # %_ZN4TreeD2Ev.exit48
	ld.w	$a0, $fp, 8
	addi.w	$a0, $a0, -1
	st.w	$a0, $fp, 8
	move	$s5, $fp
	bnez	$a0, .LBB17_50
.LBB17_48:                              # %_ZN4TreeD2Ev.exit49.sink.split
	ld.d	$a0, $s5, 0
	ld.d	$a1, $a0, 16
	move	$a0, $s5
	jirl	$ra, $a1, 0
	b	.LBB17_50
.LBB17_49:
.Ltmp45:                                # EH_LABEL
	move	$s3, $a0
.LBB17_50:
	ld.w	$a0, $s4, 8
	addi.w	$a0, $a0, -1
	st.w	$a0, $s4, 8
	beqz	$a0, .LBB17_54
	b	.LBB17_63
.LBB17_51:
.Ltmp42:                                # EH_LABEL
	ld.w	$a1, $s1, 8
	move	$s3, $a0
	addi.w	$a0, $a1, -1
	st.w	$a0, $s1, 8
	bnez	$a0, .LBB17_53
# %bb.52:
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 16
	move	$a0, $s1
	jirl	$ra, $a1, 0
.LBB17_53:                              # %_ZN4TreeD2Ev.exit46
	ld.w	$a0, $fp, 8
	addi.w	$a0, $a0, -1
	st.w	$a0, $fp, 8
	move	$s4, $fp
	bnez	$a0, .LBB17_63
.LBB17_54:                              # %_ZN4TreeD2Ev.exit47.sink.split
	ld.d	$a0, $s4, 0
	ld.d	$a1, $a0, 16
	move	$a0, $s4
	jirl	$ra, $a1, 0
	b	.LBB17_63
.LBB17_55:
.Ltmp29:                                # EH_LABEL
	move	$s3, $a0
	b	.LBB17_77
.LBB17_56:
.Ltmp26:                                # EH_LABEL
	ld.w	$a1, $s0, 8
	move	$s3, $a0
	addi.w	$a0, $a1, -1
	st.w	$a0, $s0, 8
	bnez	$a0, .LBB17_58
# %bb.57:
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 16
	move	$a0, $s0
	jirl	$ra, $a1, 0
.LBB17_58:                              # %_ZN4TreeD2Ev.exit43
	ld.w	$a0, $fp, 8
	addi.w	$a1, $a0, -1
	st.w	$a1, $fp, 8
	move	$a0, $fp
	beqz	$a1, .LBB17_66
	b	.LBB17_67
.LBB17_59:
.Ltmp23:                                # EH_LABEL
	move	$s3, $a0
	ld.w	$a0, $s0, 8
	addi.w	$a0, $a0, -1
	st.w	$a0, $s0, 8
	bnez	$a0, .LBB17_69
	b	.LBB17_72
.LBB17_60:
.Ltmp20:                                # EH_LABEL
	move	$s3, $a0
	ori	$a1, $zero, 24
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 8
	addi.w	$a0, $a0, -1
	st.w	$a0, $fp, 8
	bnez	$a0, .LBB17_70
	b	.LBB17_73
.LBB17_61:
.Ltmp17:                                # EH_LABEL
	move	$s3, $a0
	ld.w	$a0, $fp, 8
	addi.w	$a0, $a0, -1
	st.w	$a0, $fp, 8
	bnez	$a0, .LBB17_70
	b	.LBB17_73
.LBB17_62:
.Ltmp39:                                # EH_LABEL
	move	$s3, $a0
.LBB17_63:
	ld.w	$a0, $s2, 8
	addi.w	$a0, $a0, -1
	st.w	$a0, $s2, 8
	bnez	$a0, .LBB17_65
.LBB17_64:                              # %_ZN4TreeD2Ev.exit45.sink.split
	ld.d	$a0, $s2, 0
	ld.d	$a1, $a0, 16
	move	$a0, $s2
	jirl	$ra, $a1, 0
.LBB17_65:                              # %_ZN4TreeD2Ev.exit45
	ld.d	$a0, $sp, 72
	ld.w	$a1, $a0, 8
	addi.w	$a1, $a1, -1
	st.w	$a1, $a0, 8
	bnez	$a1, .LBB17_67
.LBB17_66:                              # %_ZN4TreeD2Ev.exit44.sink.split
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
	jirl	$ra, $a1, 0
.LBB17_67:                              # %_ZN4TreeD2Ev.exit44
	ld.w	$a0, $s1, 8
	addi.w	$a0, $a0, -1
	st.w	$a0, $s1, 8
	beqz	$a0, .LBB17_71
# %bb.68:                               # %_ZN4TreeD2Ev.exit54
	ld.w	$a0, $s0, 8
	addi.w	$a0, $a0, -1
	st.w	$a0, $s0, 8
	beqz	$a0, .LBB17_72
.LBB17_69:                              # %.body
	ld.w	$a0, $fp, 8
	addi.w	$a0, $a0, -1
	st.w	$a0, $fp, 8
	beqz	$a0, .LBB17_73
.LBB17_70:                              # %_ZN4TreeD2Ev.exit56
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB17_71:
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 16
	move	$a0, $s1
	jirl	$ra, $a1, 0
	ld.w	$a0, $s0, 8
	addi.w	$a0, $a0, -1
	st.w	$a0, $s0, 8
	bnez	$a0, .LBB17_69
.LBB17_72:
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 16
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.w	$a0, $fp, 8
	addi.w	$a0, $a0, -1
	st.w	$a0, $fp, 8
	bnez	$a0, .LBB17_70
.LBB17_73:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 16
	move	$a0, $fp
	jirl	$ra, $a1, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB17_74:
.Ltmp34:                                # EH_LABEL
	move	$s3, $a0
	addi.w	$a0, $s5, -1
	st.w	$a0, $s1, 8
	bnez	$a0, .LBB17_76
# %bb.75:
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 16
	move	$a0, $s1
	jirl	$ra, $a1, 0
.LBB17_76:                              # %_ZN4TreeD2Ev.exit6.i
	ori	$a1, $zero, 32
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 8
	addi.w	$s4, $a0, -1
.LBB17_77:                              # %.body23
	st.w	$s4, $s1, 8
	move	$s2, $s1
	beqz	$s4, .LBB17_64
	b	.LBB17_65
.Lfunc_end17:
	.size	main, .Lfunc_end17-main
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table17:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Lfunc_begin3-.Lfunc_begin3    # >> Call Site 1 <<
	.uleb128 .Ltmp15-.Lfunc_begin3          #   Call between .Lfunc_begin3 and .Ltmp15
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp15-.Lfunc_begin3          # >> Call Site 2 <<
	.uleb128 .Ltmp16-.Ltmp15                #   Call between .Ltmp15 and .Ltmp16
	.uleb128 .Ltmp17-.Lfunc_begin3          #     jumps to .Ltmp17
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp18-.Lfunc_begin3          # >> Call Site 3 <<
	.uleb128 .Ltmp19-.Ltmp18                #   Call between .Ltmp18 and .Ltmp19
	.uleb128 .Ltmp20-.Lfunc_begin3          #     jumps to .Ltmp20
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp21-.Lfunc_begin3          # >> Call Site 4 <<
	.uleb128 .Ltmp22-.Ltmp21                #   Call between .Ltmp21 and .Ltmp22
	.uleb128 .Ltmp23-.Lfunc_begin3          #     jumps to .Ltmp23
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp24-.Lfunc_begin3          # >> Call Site 5 <<
	.uleb128 .Ltmp25-.Ltmp24                #   Call between .Ltmp24 and .Ltmp25
	.uleb128 .Ltmp26-.Lfunc_begin3          #     jumps to .Ltmp26
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp27-.Lfunc_begin3          # >> Call Site 6 <<
	.uleb128 .Ltmp28-.Ltmp27                #   Call between .Ltmp27 and .Ltmp28
	.uleb128 .Ltmp29-.Lfunc_begin3          #     jumps to .Ltmp29
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp30-.Lfunc_begin3          # >> Call Site 7 <<
	.uleb128 .Ltmp33-.Ltmp30                #   Call between .Ltmp30 and .Ltmp33
	.uleb128 .Ltmp34-.Lfunc_begin3          #     jumps to .Ltmp34
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp35-.Lfunc_begin3          # >> Call Site 8 <<
	.uleb128 .Ltmp38-.Ltmp35                #   Call between .Ltmp35 and .Ltmp38
	.uleb128 .Ltmp39-.Lfunc_begin3          #     jumps to .Ltmp39
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp40-.Lfunc_begin3          # >> Call Site 9 <<
	.uleb128 .Ltmp41-.Ltmp40                #   Call between .Ltmp40 and .Ltmp41
	.uleb128 .Ltmp42-.Lfunc_begin3          #     jumps to .Ltmp42
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp43-.Lfunc_begin3          # >> Call Site 10 <<
	.uleb128 .Ltmp44-.Ltmp43                #   Call between .Ltmp43 and .Ltmp44
	.uleb128 .Ltmp45-.Lfunc_begin3          #     jumps to .Ltmp45
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp46-.Lfunc_begin3          # >> Call Site 11 <<
	.uleb128 .Ltmp47-.Ltmp46                #   Call between .Ltmp46 and .Ltmp47
	.uleb128 .Ltmp48-.Lfunc_begin3          #     jumps to .Ltmp48
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp49-.Lfunc_begin3          # >> Call Site 12 <<
	.uleb128 .Ltmp50-.Ltmp49                #   Call between .Ltmp49 and .Ltmp50
	.uleb128 .Ltmp51-.Lfunc_begin3          #     jumps to .Ltmp51
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp50-.Lfunc_begin3          # >> Call Site 13 <<
	.uleb128 .Lfunc_end17-.Ltmp50           #   Call between .Ltmp50 and .Lfunc_end17
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN8RealNodeD2Ev,"axG",@progbits,_ZN8RealNodeD2Ev,comdat
	.weak	_ZN8RealNodeD2Ev                # -- Begin function _ZN8RealNodeD2Ev
	.p2align	5
	.type	_ZN8RealNodeD2Ev,@function
_ZN8RealNodeD2Ev:                       # @_ZN8RealNodeD2Ev
# %bb.0:
	move	$a1, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV8RealNode+16)
	addi.d	$a2, $a0, %pc_lo12(_ZTV8RealNode+16)
	ld.d	$a0, $a1, 16
	st.d	$a2, $a1, 0
	beqz	$a0, .LBB18_2
# %bb.1:
	ori	$a1, $zero, 1
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB18_2:
	ret
.Lfunc_end18:
	.size	_ZN8RealNodeD2Ev, .Lfunc_end18-_ZN8RealNodeD2Ev
                                        # -- End function
	.section	.text._ZN8RealNodeD0Ev,"axG",@progbits,_ZN8RealNodeD0Ev,comdat
	.weak	_ZN8RealNodeD0Ev                # -- Begin function _ZN8RealNodeD0Ev
	.p2align	5
	.type	_ZN8RealNodeD0Ev,@function
_ZN8RealNodeD0Ev:                       # @_ZN8RealNodeD0Ev
# %bb.0:
	pcalau12i	$a1, %pc_hi20(_ZTV8RealNode+16)
	addi.d	$a1, $a1, %pc_lo12(_ZTV8RealNode+16)
	ld.d	$a2, $a0, 16
	st.d	$a1, $a0, 0
	beqz	$a2, .LBB19_2
# %bb.1:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	ori	$a1, $zero, 1
	move	$fp, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
.LBB19_2:                               # %_ZN8RealNodeD2Ev.exit
	ori	$a1, $zero, 24
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.Lfunc_end19:
	.size	_ZN8RealNodeD0Ev, .Lfunc_end19-_ZN8RealNodeD0Ev
                                        # -- End function
	.section	.text._ZN9UnaryNodeD2Ev,"axG",@progbits,_ZN9UnaryNodeD2Ev,comdat
	.weak	_ZN9UnaryNodeD2Ev               # -- Begin function _ZN9UnaryNodeD2Ev
	.p2align	5
	.type	_ZN9UnaryNodeD2Ev,@function
_ZN9UnaryNodeD2Ev:                      # @_ZN9UnaryNodeD2Ev
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV9UnaryNode+16)
	addi.d	$a1, $a0, %pc_lo12(_ZTV9UnaryNode+16)
	ld.d	$a0, $fp, 16
	st.d	$a1, $fp, 0
	beqz	$a0, .LBB20_2
# %bb.1:
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB20_2:
	ld.d	$fp, $fp, 24
	beqz	$fp, .LBB20_6
# %bb.3:
	ld.d	$a0, $fp, 0
	ld.w	$a1, $a0, 8
	addi.w	$a1, $a1, -1
	st.w	$a1, $a0, 8
	bnez	$a1, .LBB20_5
# %bb.4:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
	jirl	$ra, $a1, 0
.LBB20_5:                               # %_ZN4TreeD2Ev.exit
	ori	$a1, $zero, 8
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB20_6:
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end20:
	.size	_ZN9UnaryNodeD2Ev, .Lfunc_end20-_ZN9UnaryNodeD2Ev
                                        # -- End function
	.section	.text._ZN9UnaryNodeD0Ev,"axG",@progbits,_ZN9UnaryNodeD0Ev,comdat
	.weak	_ZN9UnaryNodeD0Ev               # -- Begin function _ZN9UnaryNodeD0Ev
	.p2align	5
	.type	_ZN9UnaryNodeD0Ev,@function
_ZN9UnaryNodeD0Ev:                      # @_ZN9UnaryNodeD0Ev
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV9UnaryNode+16)
	addi.d	$a1, $a0, %pc_lo12(_ZTV9UnaryNode+16)
	ld.d	$a0, $fp, 16
	st.d	$a1, $fp, 0
	beqz	$a0, .LBB21_2
# %bb.1:
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB21_2:
	ld.d	$s0, $fp, 24
	beqz	$s0, .LBB21_6
# %bb.3:
	ld.d	$a0, $s0, 0
	ld.w	$a1, $a0, 8
	addi.w	$a1, $a1, -1
	st.w	$a1, $a0, 8
	bnez	$a1, .LBB21_5
# %bb.4:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
	jirl	$ra, $a1, 0
.LBB21_5:                               # %_ZN4TreeD2Ev.exit.i
	ori	$a1, $zero, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB21_6:                               # %_ZN9UnaryNodeD2Ev.exit
	ori	$a1, $zero, 32
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.Lfunc_end21:
	.size	_ZN9UnaryNodeD0Ev, .Lfunc_end21-_ZN9UnaryNodeD0Ev
                                        # -- End function
	.section	.text._ZN10BinaryNodeD2Ev,"axG",@progbits,_ZN10BinaryNodeD2Ev,comdat
	.weak	_ZN10BinaryNodeD2Ev             # -- Begin function _ZN10BinaryNodeD2Ev
	.p2align	5
	.type	_ZN10BinaryNodeD2Ev,@function
_ZN10BinaryNodeD2Ev:                    # @_ZN10BinaryNodeD2Ev
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV10BinaryNode+16)
	addi.d	$a1, $a0, %pc_lo12(_ZTV10BinaryNode+16)
	ld.d	$a0, $fp, 16
	st.d	$a1, $fp, 0
	beqz	$a0, .LBB22_2
# %bb.1:
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB22_2:
	ld.d	$s0, $fp, 24
	beqz	$s0, .LBB22_6
# %bb.3:
	ld.d	$a0, $s0, 0
	ld.w	$a1, $a0, 8
	addi.w	$a1, $a1, -1
	st.w	$a1, $a0, 8
	bnez	$a1, .LBB22_5
# %bb.4:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
	jirl	$ra, $a1, 0
.LBB22_5:                               # %_ZN4TreeD2Ev.exit
	ori	$a1, $zero, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB22_6:
	ld.d	$fp, $fp, 32
	beqz	$fp, .LBB22_10
# %bb.7:
	ld.d	$a0, $fp, 0
	ld.w	$a1, $a0, 8
	addi.w	$a1, $a1, -1
	st.w	$a1, $a0, 8
	bnez	$a1, .LBB22_9
# %bb.8:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
	jirl	$ra, $a1, 0
.LBB22_9:                               # %_ZN4TreeD2Ev.exit3
	ori	$a1, $zero, 8
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB22_10:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end22:
	.size	_ZN10BinaryNodeD2Ev, .Lfunc_end22-_ZN10BinaryNodeD2Ev
                                        # -- End function
	.section	.text._ZN10BinaryNodeD0Ev,"axG",@progbits,_ZN10BinaryNodeD0Ev,comdat
	.weak	_ZN10BinaryNodeD0Ev             # -- Begin function _ZN10BinaryNodeD0Ev
	.p2align	5
	.type	_ZN10BinaryNodeD0Ev,@function
_ZN10BinaryNodeD0Ev:                    # @_ZN10BinaryNodeD0Ev
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV10BinaryNode+16)
	addi.d	$a1, $a0, %pc_lo12(_ZTV10BinaryNode+16)
	ld.d	$a0, $fp, 16
	st.d	$a1, $fp, 0
	beqz	$a0, .LBB23_2
# %bb.1:
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB23_2:
	ld.d	$s0, $fp, 24
	beqz	$s0, .LBB23_6
# %bb.3:
	ld.d	$a0, $s0, 0
	ld.w	$a1, $a0, 8
	addi.w	$a1, $a1, -1
	st.w	$a1, $a0, 8
	bnez	$a1, .LBB23_5
# %bb.4:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
	jirl	$ra, $a1, 0
.LBB23_5:                               # %_ZN4TreeD2Ev.exit.i
	ori	$a1, $zero, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB23_6:
	ld.d	$s0, $fp, 32
	beqz	$s0, .LBB23_10
# %bb.7:
	ld.d	$a0, $s0, 0
	ld.w	$a1, $a0, 8
	addi.w	$a1, $a1, -1
	st.w	$a1, $a0, 8
	bnez	$a1, .LBB23_9
# %bb.8:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
	jirl	$ra, $a1, 0
.LBB23_9:                               # %_ZN4TreeD2Ev.exit3.i
	ori	$a1, $zero, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB23_10:                              # %_ZN10BinaryNodeD2Ev.exit
	ori	$a1, $zero, 40
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.Lfunc_end23:
	.size	_ZN10BinaryNodeD0Ev, .Lfunc_end23-_ZN10BinaryNodeD0Ev
                                        # -- End function
	.type	values0,@object                 # @values0
	.bss
	.globl	values0
	.p2align	2, 0x0
values0:
	.word	0x00000000                      # float 0
	.size	values0, 4

	.type	values1,@object                 # @values1
	.globl	values1
	.p2align	2, 0x0
values1:
	.word	0x00000000                      # float 0
	.size	values1, 4

	.type	values2,@object                 # @values2
	.globl	values2
	.p2align	2, 0x0
values2:
	.word	0x00000000                      # float 0
	.size	values2, 4

	.type	_ZTV10BinaryNode,@object        # @_ZTV10BinaryNode
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTV10BinaryNode
	.p2align	3, 0x0
_ZTV10BinaryNode:
	.dword	0
	.dword	_ZTI10BinaryNode
	.dword	_ZN10BinaryNode9nodeValueEv
	.dword	_ZN10BinaryNodeD2Ev
	.dword	_ZN10BinaryNodeD0Ev
	.size	_ZTV10BinaryNode, 40

	.type	_ZTV9UnaryNode,@object          # @_ZTV9UnaryNode
	.globl	_ZTV9UnaryNode
	.p2align	3, 0x0
_ZTV9UnaryNode:
	.dword	0
	.dword	_ZTI9UnaryNode
	.dword	_ZN9UnaryNode9nodeValueEv
	.dword	_ZN9UnaryNodeD2Ev
	.dword	_ZN9UnaryNodeD0Ev
	.size	_ZTV9UnaryNode, 40

	.type	_ZTV8RealNode,@object           # @_ZTV8RealNode
	.globl	_ZTV8RealNode
	.p2align	3, 0x0
_ZTV8RealNode:
	.dword	0
	.dword	_ZTI8RealNode
	.dword	_ZN8RealNode9nodeValueEv
	.dword	_ZN8RealNodeD2Ev
	.dword	_ZN8RealNodeD0Ev
	.size	_ZTV8RealNode, 40

	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"*"
	.size	.L.str.1, 2

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"/"
	.size	.L.str.3, 2

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"+"
	.size	.L.str.4, 2

	.type	_ZTI8RealNode,@object           # @_ZTI8RealNode
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTI8RealNode
	.p2align	3, 0x0
_ZTI8RealNode:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS8RealNode
	.dword	_ZTI4Node
	.size	_ZTI8RealNode, 24

	.type	_ZTS8RealNode,@object           # @_ZTS8RealNode
	.section	.rodata,"a",@progbits
	.globl	_ZTS8RealNode
_ZTS8RealNode:
	.asciz	"8RealNode"
	.size	_ZTS8RealNode, 10

	.type	_ZTI4Node,@object               # @_ZTI4Node
	.section	.data.rel.ro._ZTI4Node,"awG",@progbits,_ZTI4Node,comdat
	.weak	_ZTI4Node
	.p2align	3, 0x0
_ZTI4Node:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTS4Node
	.size	_ZTI4Node, 16

	.type	_ZTS4Node,@object               # @_ZTS4Node
	.section	.rodata._ZTS4Node,"aG",@progbits,_ZTS4Node,comdat
	.weak	_ZTS4Node
_ZTS4Node:
	.asciz	"4Node"
	.size	_ZTS4Node, 6

	.type	_ZTI9UnaryNode,@object          # @_ZTI9UnaryNode
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTI9UnaryNode
	.p2align	3, 0x0
_ZTI9UnaryNode:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS9UnaryNode
	.dword	_ZTI4Node
	.size	_ZTI9UnaryNode, 24

	.type	_ZTS9UnaryNode,@object          # @_ZTS9UnaryNode
	.section	.rodata,"a",@progbits
	.globl	_ZTS9UnaryNode
_ZTS9UnaryNode:
	.asciz	"9UnaryNode"
	.size	_ZTS9UnaryNode, 11

	.type	_ZTI10BinaryNode,@object        # @_ZTI10BinaryNode
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTI10BinaryNode
	.p2align	3, 0x0
_ZTI10BinaryNode:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS10BinaryNode
	.dword	_ZTI4Node
	.size	_ZTI10BinaryNode, 24

	.type	_ZTS10BinaryNode,@object        # @_ZTS10BinaryNode
	.section	.rodata,"a",@progbits
	.globl	_ZTS10BinaryNode
_ZTS10BinaryNode:
	.asciz	"10BinaryNode"
	.size	_ZTS10BinaryNode, 13

	.globl	_ZN4TreeC1Ef
	.type	_ZN4TreeC1Ef,@function
_ZN4TreeC1Ef = _ZN4TreeC2Ef
	.globl	_ZN4TreeC1EPc
	.type	_ZN4TreeC1EPc,@function
_ZN4TreeC1EPc = _ZN4TreeC2EPc
	.globl	_ZN4TreeC1EPcS_
	.type	_ZN4TreeC1EPcS_,@function
_ZN4TreeC1EPcS_ = _ZN4TreeC2EPcS_
	.globl	_ZN4TreeC1ES_PcS_
	.type	_ZN4TreeC1ES_PcS_,@function
_ZN4TreeC1ES_PcS_ = _ZN4TreeC2ES_PcS_
	.globl	_ZN4TreeD1Ev
	.type	_ZN4TreeD1Ev,@function
_ZN4TreeD1Ev = _ZN4TreeD2Ev
	.globl	_ZN4TreeC1ERKS_
	.type	_ZN4TreeC1ERKS_,@function
_ZN4TreeC1ERKS_ = _ZN4TreeC2ERKS_
	.globl	_ZN10BinaryNodeC1EPc4TreeS1_
	.type	_ZN10BinaryNodeC1EPc4TreeS1_,@function
_ZN10BinaryNodeC1EPc4TreeS1_ = _ZN10BinaryNodeC2EPc4TreeS1_
	.globl	_ZN9UnaryNodeC1EPc4Tree
	.type	_ZN9UnaryNodeC1EPc4Tree,@function
_ZN9UnaryNodeC1EPc4Tree = _ZN9UnaryNodeC2EPc4Tree
	.globl	_ZN8RealNodeC1EfPc
	.type	_ZN8RealNodeC1EfPc,@function
_ZN8RealNodeC1EfPc = _ZN8RealNodeC2EfPc
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
	.addrsig_sym _ZTI8RealNode
	.addrsig_sym _ZTVN10__cxxabiv120__si_class_type_infoE
	.addrsig_sym _ZTS8RealNode
	.addrsig_sym _ZTI4Node
	.addrsig_sym _ZTVN10__cxxabiv117__class_type_infoE
	.addrsig_sym _ZTS4Node
	.addrsig_sym _ZTI9UnaryNode
	.addrsig_sym _ZTS9UnaryNode
	.addrsig_sym _ZTI10BinaryNode
	.addrsig_sym _ZTS10BinaryNode
