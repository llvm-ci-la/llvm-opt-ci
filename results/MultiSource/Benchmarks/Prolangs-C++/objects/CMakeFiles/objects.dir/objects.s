	.file	"objects.cpp"
	.text
	.globl	_ZN5Table6SearchER6Object       # -- Begin function _ZN5Table6SearchER6Object
	.p2align	5
	.type	_ZN5Table6SearchER6Object,@function
_ZN5Table6SearchER6Object:              # @_ZN5Table6SearchER6Object
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
	move	$s0, $a0
	ld.w	$a0, $a0, 8
	addi.w	$fp, $zero, -1
	blez	$a0, .LBB0_5
# %bb.1:                                # %.lr.ph.preheader
	move	$s1, $a1
	move	$s2, $zero
	.p2align	4, , 16
.LBB0_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	ld.d	$a2, $a0, 56
	move	$a0, $s0
	move	$a1, $s2
	jirl	$ra, $a2, 0
	ld.d	$a1, $s1, 0
	ld.d	$a2, $a1, 16
	move	$a1, $a0
	move	$a0, $s1
	jirl	$ra, $a2, 0
	bnez	$a0, .LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	ld.w	$a0, $s0, 8
	addi.w	$s2, $s2, 1
	blt	$s2, $a0, .LBB0_2
	b	.LBB0_5
.LBB0_4:
	move	$fp, $s2
.LBB0_5:                                # %._crit_edge
	move	$a0, $fp
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end0:
	.size	_ZN5Table6SearchER6Object, .Lfunc_end0-_ZN5Table6SearchER6Object
	.cfi_endproc
                                        # -- End function
	.globl	_ZN5TableeqER6Object            # -- Begin function _ZN5TableeqER6Object
	.p2align	5
	.type	_ZN5TableeqER6Object,@function
_ZN5TableeqER6Object:                   # @_ZN5TableeqER6Object
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
	move	$fp, $a1
	ld.d	$a1, $a1, 0
	ld.d	$a1, $a1, 24
	move	$s0, $a0
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 24
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 96
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.w	$a2, $s0, 8
	bne	$a0, $a2, .LBB1_6
# %bb.1:                                # %.preheader
	move	$a1, $a0
	ori	$a0, $zero, 1
	blez	$a1, .LBB1_7
# %bb.2:                                # %.lr.ph.preheader
	move	$s1, $zero
	.p2align	4, , 16
.LBB1_3:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 56
	move	$a0, $fp
	move	$a1, $s1
	jirl	$ra, $a2, 0
	ld.d	$a1, $s0, 0
	ld.d	$a2, $a1, 56
	move	$s2, $a0
	move	$a0, $s0
	move	$a1, $s1
	jirl	$ra, $a2, 0
	ld.d	$a1, $s2, 0
	ld.d	$a2, $a1, 16
	move	$a1, $a0
	move	$a0, $s2
	jirl	$ra, $a2, 0
	beqz	$a0, .LBB1_6
# %bb.4:                                #   in Loop: Header=BB1_3 Depth=1
	ld.w	$a0, $s0, 8
	addi.w	$s1, $s1, 1
	blt	$s1, $a0, .LBB1_3
# %bb.5:
	ori	$a0, $zero, 1
	b	.LBB1_7
.LBB1_6:
	move	$a0, $zero
.LBB1_7:                                # %._crit_edge
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end1:
	.size	_ZN5TableeqER6Object, .Lfunc_end1-_ZN5TableeqER6Object
	.cfi_endproc
                                        # -- End function
	.globl	_ZN5ArrayC2Ei7TblType           # -- Begin function _ZN5ArrayC2Ei7TblType
	.p2align	5
	.type	_ZN5ArrayC2Ei7TblType,@function
_ZN5ArrayC2Ei7TblType:                  # @_ZN5ArrayC2Ei7TblType
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
	move	$s1, $a0
	st.w	$a2, $a0, 16
	ori	$a0, $zero, 0
	lu32i.d	$a0, -1
	st.d	$a0, $s1, 8
	pcalau12i	$a0, %pc_hi20(_ZTV5Array+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV5Array+16)
	st.d	$a0, $s1, 0
	bstrpick.d	$a0, $a1, 31, 0
	slti	$a1, $a1, 0
	slli.d	$fp, $a0, 3
	addi.w	$a0, $zero, -1
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $fp, $a1
	or	$a0, $a0, $a1
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, 24
	st.w	$s0, $s1, 32
	blez	$s0, .LBB2_2
# %bb.1:                                # %.lr.ph.preheader
	move	$a1, $zero
	move	$a2, $fp
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(memset)
	jr	$t8
.LBB2_2:                                # %._crit_edge
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end2:
	.size	_ZN5ArrayC2Ei7TblType, .Lfunc_end2-_ZN5ArrayC2Ei7TblType
	.cfi_endproc
                                        # -- End function
	.globl	_ZN5ArrayD2Ev                   # -- Begin function _ZN5ArrayD2Ev
	.p2align	5
	.type	_ZN5ArrayD2Ev,@function
_ZN5ArrayD2Ev:                          # @_ZN5ArrayD2Ev
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
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV5Array+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV5Array+16)
	ld.w	$a1, $fp, 16
	ori	$a2, $zero, 1
	st.d	$a0, $fp, 0
	bne	$a1, $a2, .LBB3_4
# %bb.1:
	ld.w	$s0, $fp, 8
	.p2align	4, , 16
.LBB3_2:                                # =>This Inner Loop Header: Depth=1
	blez	$s0, .LBB3_4
# %bb.3:                                #   in Loop: Header=BB3_2 Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 72
	addi.w	$s0, $s0, -1
.Ltmp0:                                 # EH_LABEL
	move	$a0, $fp
	move	$a1, $s0
	jirl	$ra, $a2, 0
.Ltmp1:                                 # EH_LABEL
	b	.LBB3_2
.LBB3_4:                                # %.loopexit
	ld.d	$a0, $fp, 24
	beqz	$a0, .LBB3_6
# %bb.5:
	ori	$a1, $zero, 8
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 24
.LBB3_6:
	ori	$a0, $zero, 0
	lu32i.d	$a0, -1
	st.d	$a0, $fp, 8
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB3_7:
.Ltmp2:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end3:
	.size	_ZN5ArrayD2Ev, .Lfunc_end3-_ZN5ArrayD2Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table3:
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
	.uleb128 .Ltmp1-.Lfunc_begin0           # >> Call Site 2 <<
	.uleb128 .Lfunc_end3-.Ltmp1             #   Call between .Ltmp1 and .Lfunc_end3
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
.Lfunc_end4:
	.size	__clang_call_terminate, .Lfunc_end4-__clang_call_terminate
                                        # -- End function
	.text
	.globl	_ZN5ArrayD0Ev                   # -- Begin function _ZN5ArrayD0Ev
	.p2align	5
	.type	_ZN5ArrayD0Ev,@function
_ZN5ArrayD0Ev:                          # @_ZN5ArrayD0Ev
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception1
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
	pcalau12i	$a0, %pc_hi20(_ZTV5Array+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV5Array+16)
	ld.w	$a1, $fp, 16
	ori	$a2, $zero, 1
	st.d	$a0, $fp, 0
	bne	$a1, $a2, .LBB5_4
# %bb.1:
	ld.w	$s0, $fp, 8
	.p2align	4, , 16
.LBB5_2:                                # =>This Inner Loop Header: Depth=1
	blez	$s0, .LBB5_4
# %bb.3:                                #   in Loop: Header=BB5_2 Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 72
	addi.w	$s0, $s0, -1
.Ltmp3:                                 # EH_LABEL
	move	$a0, $fp
	move	$a1, $s0
	jirl	$ra, $a2, 0
.Ltmp4:                                 # EH_LABEL
	b	.LBB5_2
.LBB5_4:                                # %.loopexit.i
	ld.d	$a0, $fp, 24
	beqz	$a0, .LBB5_6
# %bb.5:
	ori	$a1, $zero, 8
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_6:                                # %_ZN5ArrayD2Ev.exit
	ori	$a1, $zero, 40
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB5_7:
.Ltmp5:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end5:
	.size	_ZN5ArrayD0Ev, .Lfunc_end5-_ZN5ArrayD0Ev
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
	.uleb128 .Ltmp3-.Lfunc_begin1           # >> Call Site 1 <<
	.uleb128 .Ltmp4-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp4
	.uleb128 .Ltmp5-.Lfunc_begin1           #     jumps to .Ltmp5
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp4-.Lfunc_begin1           # >> Call Site 2 <<
	.uleb128 .Lfunc_end5-.Ltmp4             #   Call between .Ltmp4 and .Lfunc_end5
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
	.globl	_ZN5Array6AppendEP6Object       # -- Begin function _ZN5Array6AppendEP6Object
	.p2align	5
	.type	_ZN5Array6AppendEP6Object,@function
_ZN5Array6AppendEP6Object:              # @_ZN5Array6AppendEP6Object
# %bb.0:
	ld.w	$a2, $a0, 8
	ld.w	$a3, $a0, 32
	bne	$a2, $a3, .LBB6_2
# %bb.1:
	move	$a0, $zero
	ret
.LBB6_2:
	ld.d	$a3, $a0, 24
	st.w	$a2, $a0, 12
	slli.d	$a4, $a2, 3
	stx.d	$a1, $a3, $a4
	addi.d	$a1, $a2, 1
	st.w	$a1, $a0, 8
	ori	$a0, $zero, 1
	ret
.Lfunc_end6:
	.size	_ZN5Array6AppendEP6Object, .Lfunc_end6-_ZN5Array6AppendEP6Object
                                        # -- End function
	.globl	_ZN5Array6InsertEP6Objecti      # -- Begin function _ZN5Array6InsertEP6Objecti
	.p2align	5
	.type	_ZN5Array6InsertEP6Objecti,@function
_ZN5Array6InsertEP6Objecti:             # @_ZN5Array6InsertEP6Objecti
# %bb.0:
	move	$a3, $zero
	bltz	$a2, .LBB7_12
# %bb.1:
	ld.wu	$a6, $a0, 8
	addi.w	$a4, $a6, 0
	blt	$a4, $a2, .LBB7_12
# %bb.2:
	ld.w	$a5, $a0, 32
	bge	$a4, $a5, .LBB7_12
# %bb.3:                                # %.preheader
	ld.d	$a3, $a0, 24
	bge	$a2, $a4, .LBB7_11
# %bb.4:                                # %.lr.ph
	addi.d	$a5, $a6, -1
	sltu	$a7, $a5, $a2
	masknez	$t0, $a2, $a7
	maskeqz	$a5, $a5, $a7
	or	$a5, $a5, $t0
	sub.d	$a7, $a6, $a5
	ori	$a5, $zero, 2
	bgeu	$a7, $a5, .LBB7_6
# %bb.5:
	move	$a5, $a6
	b	.LBB7_9
.LBB7_6:                                # %vector.ph
	move	$t0, $a7
	bstrins.d	$t0, $zero, 0, 0
	sub.d	$a5, $a6, $t0
	alsl.d	$a6, $a6, $a3, 3
	addi.d	$a6, $a6, -8
	move	$t1, $t0
	.p2align	4, , 16
.LBB7_7:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a6, -8
	vst	$vr0, $a6, 0
	addi.d	$t1, $t1, -2
	addi.d	$a6, $a6, -16
	bnez	$t1, .LBB7_7
# %bb.8:                                # %middle.block
	beq	$a7, $t0, .LBB7_11
.LBB7_9:                                # %scalar.ph.preheader
	alsl.d	$a6, $a5, $a3, 3
	.p2align	4, , 16
.LBB7_10:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a7, $a6, -8
	addi.d	$t0, $a6, -8
	addi.d	$a5, $a5, -1
	st.d	$a7, $a6, 0
	move	$a6, $t0
	bltu	$a2, $a5, .LBB7_10
.LBB7_11:                               # %._crit_edge
	slli.d	$a5, $a2, 3
	stx.d	$a1, $a3, $a5
	addi.d	$a1, $a4, 1
	st.w	$a1, $a0, 8
	st.w	$a2, $a0, 12
	ori	$a3, $zero, 1
.LBB7_12:
	move	$a0, $a3
	ret
.Lfunc_end7:
	.size	_ZN5Array6InsertEP6Objecti, .Lfunc_end7-_ZN5Array6InsertEP6Objecti
                                        # -- End function
	.globl	_ZN5Array6AssignEP6Objecti      # -- Begin function _ZN5Array6AssignEP6Objecti
	.p2align	5
	.type	_ZN5Array6AssignEP6Objecti,@function
_ZN5Array6AssignEP6Objecti:             # @_ZN5Array6AssignEP6Objecti
# %bb.0:
	move	$a3, $zero
	bltz	$a2, .LBB8_6
# %bb.1:
	ld.w	$a4, $a0, 8
	blt	$a4, $a2, .LBB8_6
# %bb.2:
	ld.w	$a5, $a0, 32
	bge	$a4, $a5, .LBB8_6
# %bb.3:
	bne	$a2, $a4, .LBB8_5
# %bb.4:
	addi.d	$a3, $a2, 1
	st.w	$a3, $a0, 8
.LBB8_5:
	ld.d	$a3, $a0, 24
	st.w	$a2, $a0, 12
	slli.d	$a0, $a2, 3
	stx.d	$a1, $a3, $a0
	ori	$a3, $zero, 1
.LBB8_6:
	move	$a0, $a3
	ret
.Lfunc_end8:
	.size	_ZN5Array6AssignEP6Objecti, .Lfunc_end8-_ZN5Array6AssignEP6Objecti
                                        # -- End function
	.globl	_ZN5Array3GetEi                 # -- Begin function _ZN5Array3GetEi
	.p2align	5
	.type	_ZN5Array3GetEi,@function
_ZN5Array3GetEi:                        # @_ZN5Array3GetEi
# %bb.0:
	move	$a2, $a0
	move	$a0, $zero
	bltz	$a1, .LBB9_3
# %bb.1:
	ld.w	$a3, $a2, 8
	bge	$a1, $a3, .LBB9_3
# %bb.2:
	ld.d	$a0, $a2, 24
	slli.d	$a3, $a1, 3
	ldx.d	$a0, $a0, $a3
	st.w	$a1, $a2, 12
.LBB9_3:
	ret
.Lfunc_end9:
	.size	_ZN5Array3GetEi, .Lfunc_end9-_ZN5Array3GetEi
                                        # -- End function
	.globl	_ZN5Array5FetchEi               # -- Begin function _ZN5Array5FetchEi
	.p2align	5
	.type	_ZN5Array5FetchEi,@function
_ZN5Array5FetchEi:                      # @_ZN5Array5FetchEi
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
	move	$a0, $zero
	bltz	$a1, .LBB10_11
# %bb.1:
	move	$s0, $a1
	ld.w	$a1, $fp, 8
	bge	$s0, $a1, .LBB10_11
# %bb.2:
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 56
	move	$a0, $fp
	move	$a1, $s0
	jirl	$ra, $a2, 0
	ld.w	$a3, $fp, 8
	ld.d	$a2, $fp, 24
	addi.w	$a1, $a3, -1
	bge	$s0, $a1, .LBB10_10
# %bb.3:                                # %.lr.ph
	sub.d	$a3, $a3, $s0
	addi.w	$a3, $a3, -2
	ori	$a4, $zero, 3
	bstrpick.d	$a6, $s0, 31, 0
	bgeu	$a3, $a4, .LBB10_5
# %bb.4:
	move	$a3, $a6
	b	.LBB10_8
.LBB10_5:                               # %vector.ph
	bstrpick.d	$a3, $a3, 31, 0
	addi.d	$a4, $a3, 1
	bstrpick.d	$a3, $a4, 32, 2
	slli.d	$a5, $a3, 2
	alsl.d	$a3, $a3, $a6, 2
	alsl.d	$a6, $a6, $a2, 3
	addi.d	$a6, $a6, 16
	move	$a7, $a5
	.p2align	4, , 16
.LBB10_6:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a6, -8
	vld	$vr1, $a6, 8
	vst	$vr0, $a6, -16
	vst	$vr1, $a6, 0
	addi.d	$a7, $a7, -4
	addi.d	$a6, $a6, 32
	bnez	$a7, .LBB10_6
# %bb.7:                                # %middle.block
	beq	$a4, $a5, .LBB10_10
.LBB10_8:                               # %scalar.ph.preheader
	alsl.d	$a4, $a3, $a2, 3
	addi.d	$a4, $a4, 8
	.p2align	4, , 16
.LBB10_9:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a4, 0
	st.d	$a5, $a4, -8
	addi.w	$a3, $a3, 1
	addi.d	$a4, $a4, 8
	blt	$a3, $a1, .LBB10_9
.LBB10_10:                              # %._crit_edge
	slli.d	$a3, $a1, 3
	stx.d	$zero, $a2, $a3
	xor	$a2, $s0, $a1
	sltui	$a2, $a2, 1
	sub.d	$a2, $s0, $a2
	st.w	$a2, $fp, 12
	st.w	$a1, $fp, 8
.LBB10_11:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end10:
	.size	_ZN5Array5FetchEi, .Lfunc_end10-_ZN5Array5FetchEi
	.cfi_endproc
                                        # -- End function
	.globl	_ZN7SpArray6AssignEP6Objecti    # -- Begin function _ZN7SpArray6AssignEP6Objecti
	.p2align	5
	.type	_ZN7SpArray6AssignEP6Objecti,@function
_ZN7SpArray6AssignEP6Objecti:           # @_ZN7SpArray6AssignEP6Objecti
# %bb.0:
	move	$a3, $zero
	bltz	$a2, .LBB11_5
# %bb.1:
	ld.w	$a4, $a0, 32
	bge	$a2, $a4, .LBB11_5
# %bb.2:
	ld.d	$a3, $a0, 24
	slli.d	$a4, $a2, 3
	ldx.d	$a4, $a3, $a4
	alsl.d	$a3, $a2, $a3, 3
	bnez	$a4, .LBB11_4
# %bb.3:
	ld.w	$a4, $a0, 8
	addi.d	$a4, $a4, 1
	st.w	$a4, $a0, 8
.LBB11_4:
	st.w	$a2, $a0, 12
	st.d	$a1, $a3, 0
	ori	$a3, $zero, 1
.LBB11_5:
	move	$a0, $a3
	ret
.Lfunc_end11:
	.size	_ZN7SpArray6AssignEP6Objecti, .Lfunc_end11-_ZN7SpArray6AssignEP6Objecti
                                        # -- End function
	.globl	_ZN7SpArray3GetEi               # -- Begin function _ZN7SpArray3GetEi
	.p2align	5
	.type	_ZN7SpArray3GetEi,@function
_ZN7SpArray3GetEi:                      # @_ZN7SpArray3GetEi
# %bb.0:
	move	$a2, $a0
	move	$a0, $zero
	bltz	$a1, .LBB12_3
# %bb.1:
	ld.w	$a3, $a2, 32
	bge	$a1, $a3, .LBB12_3
# %bb.2:
	ld.d	$a0, $a2, 24
	slli.d	$a3, $a1, 3
	ldx.d	$a0, $a0, $a3
	st.w	$a1, $a2, 12
.LBB12_3:
	ret
.Lfunc_end12:
	.size	_ZN7SpArray3GetEi, .Lfunc_end12-_ZN7SpArray3GetEi
                                        # -- End function
	.globl	_ZN7SpArray5FetchEi             # -- Begin function _ZN7SpArray5FetchEi
	.p2align	5
	.type	_ZN7SpArray5FetchEi,@function
_ZN7SpArray5FetchEi:                    # @_ZN7SpArray5FetchEi
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
	ld.d	$a0, $a0, 0
	ld.d	$a2, $a0, 56
	move	$s0, $a1
	move	$a0, $fp
	jirl	$ra, $a2, 0
	beqz	$a0, .LBB13_2
# %bb.1:
	ld.d	$a1, $fp, 24
	ld.w	$a2, $fp, 8
	slli.d	$a3, $s0, 3
	stx.d	$zero, $a1, $a3
	addi.w	$a1, $a2, -1
	xor	$a2, $s0, $a1
	sltui	$a2, $a2, 1
	sub.d	$a2, $s0, $a2
	st.w	$a2, $fp, 12
	st.w	$a1, $fp, 8
.LBB13_2:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end13:
	.size	_ZN7SpArray5FetchEi, .Lfunc_end13-_ZN7SpArray5FetchEi
	.cfi_endproc
                                        # -- End function
	.globl	_ZN7SpArray6SearchER6Object     # -- Begin function _ZN7SpArray6SearchER6Object
	.p2align	5
	.type	_ZN7SpArray6SearchER6Object,@function
_ZN7SpArray6SearchER6Object:            # @_ZN7SpArray6SearchER6Object
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
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	ld.w	$a2, $a0, 32
	addi.w	$fp, $zero, -1
	blez	$a2, .LBB14_7
# %bb.1:                                # %.lr.ph
	move	$s0, $a0
	move	$s1, $a1
	move	$s3, $zero
	move	$s2, $zero
	move	$s4, $zero
	b	.LBB14_3
	.p2align	4, , 16
.LBB14_2:                               #   in Loop: Header=BB14_3 Depth=1
	addi.d	$s4, $s4, 1
	addi.w	$s2, $s2, 1
	addi.d	$s3, $s3, 8
	bge	$s4, $a2, .LBB14_7
.LBB14_3:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 24
	ldx.d	$a0, $a0, $s3
	beqz	$a0, .LBB14_2
# %bb.4:                                #   in Loop: Header=BB14_3 Depth=1
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a1, 16
	move	$a1, $s1
	jirl	$ra, $a2, 0
	bnez	$a0, .LBB14_6
# %bb.5:                                # %._crit_edge23
                                        #   in Loop: Header=BB14_3 Depth=1
	ld.w	$a2, $s0, 32
	b	.LBB14_2
.LBB14_6:
	move	$fp, $s2
.LBB14_7:                               # %._crit_edge
	move	$a0, $fp
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end14:
	.size	_ZN7SpArray6SearchER6Object, .Lfunc_end14-_ZN7SpArray6SearchER6Object
	.cfi_endproc
                                        # -- End function
	.globl	_ZN7SpArrayD2Ev                 # -- Begin function _ZN7SpArrayD2Ev
	.p2align	5
	.type	_ZN7SpArrayD2Ev,@function
_ZN7SpArrayD2Ev:                        # @_ZN7SpArrayD2Ev
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
	pcalau12i	$a0, %pc_hi20(_ZTV7SpArray+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV7SpArray+16)
	ld.w	$a1, $fp, 16
	ori	$a2, $zero, 1
	st.d	$a0, $fp, 0
	bne	$a1, $a2, .LBB15_6
# %bb.1:
	ld.w	$a0, $fp, 32
	blez	$a0, .LBB15_6
# %bb.2:                                # %.lr.ph
	addi.d	$s1, $a0, 1
	slli.d	$a1, $a0, 3
	addi.d	$s2, $a1, -8
	addi.w	$s0, $a0, -1
	ori	$s3, $zero, 1
	b	.LBB15_4
	.p2align	4, , 16
.LBB15_3:                               #   in Loop: Header=BB15_4 Depth=1
	addi.d	$s1, $s1, -1
	addi.d	$s2, $s2, -8
	addi.w	$s0, $s0, -1
	bgeu	$s3, $s1, .LBB15_6
.LBB15_4:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 24
	ldx.d	$a0, $a0, $s2
	beqz	$a0, .LBB15_3
# %bb.5:                                #   in Loop: Header=BB15_4 Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 72
.Ltmp6:                                 # EH_LABEL
	move	$a0, $fp
	move	$a1, $s0
	jirl	$ra, $a2, 0
.Ltmp7:                                 # EH_LABEL
	b	.LBB15_3
.LBB15_6:                               # %.loopexit
	ld.d	$a0, $fp, 24
	beqz	$a0, .LBB15_8
# %bb.7:
	ori	$a1, $zero, 8
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 24
.LBB15_8:                               # %_ZN5ArrayD2Ev.exit
	pcalau12i	$a0, %pc_hi20(_ZTV5Array+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV5Array+16)
	st.d	$a0, $fp, 0
	ori	$a0, $zero, 0
	lu32i.d	$a0, -1
	st.d	$a0, $fp, 8
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB15_9:
.Ltmp8:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end15:
	.size	_ZN7SpArrayD2Ev, .Lfunc_end15-_ZN7SpArrayD2Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table15:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase2-.Lttbaseref2
.Lttbaseref2:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Ltmp6-.Lfunc_begin2           # >> Call Site 1 <<
	.uleb128 .Ltmp7-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp7
	.uleb128 .Ltmp8-.Lfunc_begin2           #     jumps to .Ltmp8
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp7-.Lfunc_begin2           # >> Call Site 2 <<
	.uleb128 .Lfunc_end15-.Ltmp7            #   Call between .Ltmp7 and .Lfunc_end15
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
	.globl	_ZN7SpArrayD0Ev                 # -- Begin function _ZN7SpArrayD0Ev
	.p2align	5
	.type	_ZN7SpArrayD0Ev,@function
_ZN7SpArrayD0Ev:                        # @_ZN7SpArrayD0Ev
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception3
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
	pcalau12i	$a0, %pc_hi20(_ZTV7SpArray+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV7SpArray+16)
	ld.w	$a1, $fp, 16
	ori	$a2, $zero, 1
	st.d	$a0, $fp, 0
	bne	$a1, $a2, .LBB16_6
# %bb.1:
	ld.w	$a0, $fp, 32
	blez	$a0, .LBB16_6
# %bb.2:                                # %.lr.ph.i
	addi.d	$s1, $a0, 1
	addi.w	$s0, $a0, -1
	slli.d	$a0, $a0, 3
	addi.d	$s2, $a0, -8
	ori	$s3, $zero, 1
	b	.LBB16_4
	.p2align	4, , 16
.LBB16_3:                               #   in Loop: Header=BB16_4 Depth=1
	addi.d	$s1, $s1, -1
	addi.w	$s0, $s0, -1
	addi.d	$s2, $s2, -8
	bgeu	$s3, $s1, .LBB16_6
.LBB16_4:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 24
	ldx.d	$a0, $a0, $s2
	beqz	$a0, .LBB16_3
# %bb.5:                                #   in Loop: Header=BB16_4 Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 72
.Ltmp9:                                 # EH_LABEL
	move	$a0, $fp
	move	$a1, $s0
	jirl	$ra, $a2, 0
.Ltmp10:                                # EH_LABEL
	b	.LBB16_3
.LBB16_6:                               # %.loopexit.i
	ld.d	$a0, $fp, 24
	beqz	$a0, .LBB16_8
# %bb.7:
	ori	$a1, $zero, 8
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_8:                               # %_ZN7SpArrayD2Ev.exit
	ori	$a1, $zero, 40
	move	$a0, $fp
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB16_9:
.Ltmp11:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end16:
	.size	_ZN7SpArrayD0Ev, .Lfunc_end16-_ZN7SpArrayD0Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table16:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase3-.Lttbaseref3
.Lttbaseref3:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Ltmp9-.Lfunc_begin3           # >> Call Site 1 <<
	.uleb128 .Ltmp10-.Ltmp9                 #   Call between .Ltmp9 and .Ltmp10
	.uleb128 .Ltmp11-.Lfunc_begin3          #     jumps to .Ltmp11
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp10-.Lfunc_begin3          # >> Call Site 2 <<
	.uleb128 .Lfunc_end16-.Ltmp10           #   Call between .Ltmp10 and .Lfunc_end16
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
	.text
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:                                # %_ZN7SpArray5FetchEi.exit
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(_ZTV1A+16)
	addi.d	$a1, $a1, %pc_lo12(_ZTV1A+16)
	st.d	$a1, $a0, 0
	ori	$a1, $zero, 2
	st.w	$a1, $a0, 8
	pcaddu18i	$ra, %call36(_ZN1A4TypeEv)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end17:
	.size	main, .Lfunc_end17-main
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN6ObjectD2Ev,"axG",@progbits,_ZN6ObjectD2Ev,comdat
	.weak	_ZN6ObjectD2Ev                  # -- Begin function _ZN6ObjectD2Ev
	.p2align	5
	.type	_ZN6ObjectD2Ev,@function
_ZN6ObjectD2Ev:                         # @_ZN6ObjectD2Ev
# %bb.0:
	ret
.Lfunc_end18:
	.size	_ZN6ObjectD2Ev, .Lfunc_end18-_ZN6ObjectD2Ev
                                        # -- End function
	.section	.text._ZN5TableD0Ev,"axG",@progbits,_ZN5TableD0Ev,comdat
	.weak	_ZN5TableD0Ev                   # -- Begin function _ZN5TableD0Ev
	.p2align	5
	.type	_ZN5TableD0Ev,@function
_ZN5TableD0Ev:                          # @_ZN5TableD0Ev
# %bb.0:
	amswap.w	$zero, $ra, $zero
.Lfunc_end19:
	.size	_ZN5TableD0Ev, .Lfunc_end19-_ZN5TableD0Ev
                                        # -- End function
	.section	.text._ZN5Table4TypeEv,"axG",@progbits,_ZN5Table4TypeEv,comdat
	.weak	_ZN5Table4TypeEv                # -- Begin function _ZN5Table4TypeEv
	.p2align	5
	.type	_ZN5Table4TypeEv,@function
_ZN5Table4TypeEv:                       # @_ZN5Table4TypeEv
# %bb.0:
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	ret
.Lfunc_end20:
	.size	_ZN5Table4TypeEv, .Lfunc_end20-_ZN5Table4TypeEv
                                        # -- End function
	.section	.text._ZN5Table6AppendEP6Object,"axG",@progbits,_ZN5Table6AppendEP6Object,comdat
	.weak	_ZN5Table6AppendEP6Object       # -- Begin function _ZN5Table6AppendEP6Object
	.p2align	5
	.type	_ZN5Table6AppendEP6Object,@function
_ZN5Table6AppendEP6Object:              # @_ZN5Table6AppendEP6Object
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
	ld.d	$a0, $a0, 0
	ld.d	$a2, $a0, 96
	move	$s0, $a1
	move	$a0, $fp
	jirl	$ra, $a2, 0
	ld.d	$a1, $fp, 0
	ld.d	$a3, $a1, 32
	move	$a2, $a0
	move	$a0, $fp
	move	$a1, $s0
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	jr	$a3
.Lfunc_end21:
	.size	_ZN5Table6AppendEP6Object, .Lfunc_end21-_ZN5Table6AppendEP6Object
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN5Table6AssignEP6Objecti,"axG",@progbits,_ZN5Table6AssignEP6Objecti,comdat
	.weak	_ZN5Table6AssignEP6Objecti      # -- Begin function _ZN5Table6AssignEP6Objecti
	.p2align	5
	.type	_ZN5Table6AssignEP6Objecti,@function
_ZN5Table6AssignEP6Objecti:             # @_ZN5Table6AssignEP6Objecti
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
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a3, $a0, 64
	move	$s0, $a2
	move	$s1, $a1
	move	$a0, $fp
	move	$a1, $a2
	jirl	$ra, $a3, 0
	ld.d	$a0, $fp, 0
	ld.d	$a3, $a0, 32
	move	$a0, $fp
	move	$a1, $s1
	move	$a2, $s0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	jr	$a3
.Lfunc_end22:
	.size	_ZN5Table6AssignEP6Objecti, .Lfunc_end22-_ZN5Table6AssignEP6Objecti
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN5Table6RemoveEi,"axG",@progbits,_ZN5Table6RemoveEi,comdat
	.weak	_ZN5Table6RemoveEi              # -- Begin function _ZN5Table6RemoveEi
	.p2align	5
	.type	_ZN5Table6RemoveEi,@function
_ZN5Table6RemoveEi:                     # @_ZN5Table6RemoveEi
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	ld.d	$a2, $a0, 0
	ld.d	$a2, $a2, 64
	jirl	$ra, $a2, 0
	move	$fp, $a0
	beqz	$a0, .LBB23_2
# %bb.1:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 8
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB23_2:
	sltu	$a0, $zero, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end23:
	.size	_ZN5Table6RemoveEi, .Lfunc_end23-_ZN5Table6RemoveEi
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN5Table6CurIndEv,"axG",@progbits,_ZN5Table6CurIndEv,comdat
	.weak	_ZN5Table6CurIndEv              # -- Begin function _ZN5Table6CurIndEv
	.p2align	5
	.type	_ZN5Table6CurIndEv,@function
_ZN5Table6CurIndEv:                     # @_ZN5Table6CurIndEv
# %bb.0:
	ld.w	$a0, $a0, 12
	ret
.Lfunc_end24:
	.size	_ZN5Table6CurIndEv, .Lfunc_end24-_ZN5Table6CurIndEv
                                        # -- End function
	.section	.text._ZN5Table5NelemEv,"axG",@progbits,_ZN5Table5NelemEv,comdat
	.weak	_ZN5Table5NelemEv               # -- Begin function _ZN5Table5NelemEv
	.p2align	5
	.type	_ZN5Table5NelemEv,@function
_ZN5Table5NelemEv:                      # @_ZN5Table5NelemEv
# %bb.0:
	ld.w	$a0, $a0, 8
	ret
.Lfunc_end25:
	.size	_ZN5Table5NelemEv, .Lfunc_end25-_ZN5Table5NelemEv
                                        # -- End function
	.section	.text._ZN7SpArray4TypeEv,"axG",@progbits,_ZN7SpArray4TypeEv,comdat
	.weak	_ZN7SpArray4TypeEv              # -- Begin function _ZN7SpArray4TypeEv
	.p2align	5
	.type	_ZN7SpArray4TypeEv,@function
_ZN7SpArray4TypeEv:                     # @_ZN7SpArray4TypeEv
# %bb.0:
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	ret
.Lfunc_end26:
	.size	_ZN7SpArray4TypeEv, .Lfunc_end26-_ZN7SpArray4TypeEv
                                        # -- End function
	.section	.text._ZN7SpArray6InsertEP6Objecti,"axG",@progbits,_ZN7SpArray6InsertEP6Objecti,comdat
	.weak	_ZN7SpArray6InsertEP6Objecti    # -- Begin function _ZN7SpArray6InsertEP6Objecti
	.p2align	5
	.type	_ZN7SpArray6InsertEP6Objecti,@function
_ZN7SpArray6InsertEP6Objecti:           # @_ZN7SpArray6InsertEP6Objecti
# %bb.0:
	move	$a0, $zero
	ret
.Lfunc_end27:
	.size	_ZN7SpArray6InsertEP6Objecti, .Lfunc_end27-_ZN7SpArray6InsertEP6Objecti
                                        # -- End function
	.section	.text._ZN7SpArray6AppendEP6Object,"axG",@progbits,_ZN7SpArray6AppendEP6Object,comdat
	.weak	_ZN7SpArray6AppendEP6Object     # -- Begin function _ZN7SpArray6AppendEP6Object
	.p2align	5
	.type	_ZN7SpArray6AppendEP6Object,@function
_ZN7SpArray6AppendEP6Object:            # @_ZN7SpArray6AppendEP6Object
# %bb.0:
	move	$a0, $zero
	ret
.Lfunc_end28:
	.size	_ZN7SpArray6AppendEP6Object, .Lfunc_end28-_ZN7SpArray6AppendEP6Object
                                        # -- End function
	.section	.text._ZN5Array4TypeEv,"axG",@progbits,_ZN5Array4TypeEv,comdat
	.weak	_ZN5Array4TypeEv                # -- Begin function _ZN5Array4TypeEv
	.p2align	5
	.type	_ZN5Array4TypeEv,@function
_ZN5Array4TypeEv:                       # @_ZN5Array4TypeEv
# %bb.0:
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	ret
.Lfunc_end29:
	.size	_ZN5Array4TypeEv, .Lfunc_end29-_ZN5Array4TypeEv
                                        # -- End function
	.section	.text._ZN1AD0Ev,"axG",@progbits,_ZN1AD0Ev,comdat
	.weak	_ZN1AD0Ev                       # -- Begin function _ZN1AD0Ev
	.p2align	5
	.type	_ZN1AD0Ev,@function
_ZN1AD0Ev:                              # @_ZN1AD0Ev
# %bb.0:
	ori	$a1, $zero, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.Lfunc_end30:
	.size	_ZN1AD0Ev, .Lfunc_end30-_ZN1AD0Ev
                                        # -- End function
	.section	.text._ZN1AeqER6Object,"axG",@progbits,_ZN1AeqER6Object,comdat
	.weak	_ZN1AeqER6Object                # -- Begin function _ZN1AeqER6Object
	.p2align	5
	.type	_ZN1AeqER6Object,@function
_ZN1AeqER6Object:                       # @_ZN1AeqER6Object
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
	move	$fp, $a1
	ld.d	$a1, $a1, 0
	ld.d	$a1, $a1, 24
	move	$s0, $a0
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 24
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.w	$a0, $s0, 8
	ld.w	$a1, $fp, 8
	xor	$a0, $a0, $a1
	sltui	$a0, $a0, 1
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end31:
	.size	_ZN1AeqER6Object, .Lfunc_end31-_ZN1AeqER6Object
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN1A4TypeEv,"axG",@progbits,_ZN1A4TypeEv,comdat
	.weak	_ZN1A4TypeEv                    # -- Begin function _ZN1A4TypeEv
	.p2align	5
	.type	_ZN1A4TypeEv,@function
_ZN1A4TypeEv:                           # @_ZN1A4TypeEv
# %bb.0:
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ret
.Lfunc_end32:
	.size	_ZN1A4TypeEv, .Lfunc_end32-_ZN1A4TypeEv
                                        # -- End function
	.type	_ZTV5Array,@object              # @_ZTV5Array
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTV5Array
	.p2align	3, 0x0
_ZTV5Array:
	.dword	0
	.dword	_ZTI5Array
	.dword	_ZN5ArrayD2Ev
	.dword	_ZN5ArrayD0Ev
	.dword	_ZN5TableeqER6Object
	.dword	_ZN5Array4TypeEv
	.dword	_ZN5Array6InsertEP6Objecti
	.dword	_ZN5Array6AppendEP6Object
	.dword	_ZN5Array6AssignEP6Objecti
	.dword	_ZN5Array3GetEi
	.dword	_ZN5Array5FetchEi
	.dword	_ZN5Table6RemoveEi
	.dword	_ZN5Table6SearchER6Object
	.dword	_ZN5Table6CurIndEv
	.dword	_ZN5Table5NelemEv
	.size	_ZTV5Array, 120

	.type	_ZTV7SpArray,@object            # @_ZTV7SpArray
	.globl	_ZTV7SpArray
	.p2align	3, 0x0
_ZTV7SpArray:
	.dword	0
	.dword	_ZTI7SpArray
	.dword	_ZN7SpArrayD2Ev
	.dword	_ZN7SpArrayD0Ev
	.dword	_ZN5TableeqER6Object
	.dword	_ZN7SpArray4TypeEv
	.dword	_ZN7SpArray6InsertEP6Objecti
	.dword	_ZN7SpArray6AppendEP6Object
	.dword	_ZN7SpArray6AssignEP6Objecti
	.dword	_ZN7SpArray3GetEi
	.dword	_ZN7SpArray5FetchEi
	.dword	_ZN5Table6RemoveEi
	.dword	_ZN7SpArray6SearchER6Object
	.dword	_ZN5Table6CurIndEv
	.dword	_ZN5Table5NelemEv
	.size	_ZTV7SpArray, 120

	.type	_ZTV5Table,@object              # @_ZTV5Table
	.globl	_ZTV5Table
	.p2align	3, 0x0
_ZTV5Table:
	.dword	0
	.dword	_ZTI5Table
	.dword	_ZN6ObjectD2Ev
	.dword	_ZN5TableD0Ev
	.dword	_ZN5TableeqER6Object
	.dword	_ZN5Table4TypeEv
	.dword	__cxa_pure_virtual
	.dword	_ZN5Table6AppendEP6Object
	.dword	_ZN5Table6AssignEP6Objecti
	.dword	__cxa_pure_virtual
	.dword	__cxa_pure_virtual
	.dword	_ZN5Table6RemoveEi
	.dword	_ZN5Table6SearchER6Object
	.dword	_ZN5Table6CurIndEv
	.dword	_ZN5Table5NelemEv
	.size	_ZTV5Table, 120

	.type	_ZTI5Table,@object              # @_ZTI5Table
	.globl	_ZTI5Table
	.p2align	3, 0x0
_ZTI5Table:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS5Table
	.dword	_ZTI6Object
	.size	_ZTI5Table, 24

	.type	_ZTS5Table,@object              # @_ZTS5Table
	.section	.rodata,"a",@progbits
	.globl	_ZTS5Table
_ZTS5Table:
	.asciz	"5Table"
	.size	_ZTS5Table, 7

	.type	_ZTI6Object,@object             # @_ZTI6Object
	.section	.data.rel.ro._ZTI6Object,"awG",@progbits,_ZTI6Object,comdat
	.weak	_ZTI6Object
	.p2align	3, 0x0
_ZTI6Object:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTS6Object
	.size	_ZTI6Object, 16

	.type	_ZTS6Object,@object             # @_ZTS6Object
	.section	.rodata._ZTS6Object,"aG",@progbits,_ZTS6Object,comdat
	.weak	_ZTS6Object
_ZTS6Object:
	.asciz	"6Object"
	.size	_ZTS6Object, 8

	.type	_ZTI7SpArray,@object            # @_ZTI7SpArray
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTI7SpArray
	.p2align	3, 0x0
_ZTI7SpArray:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS7SpArray
	.dword	_ZTI5Array
	.size	_ZTI7SpArray, 24

	.type	_ZTS7SpArray,@object            # @_ZTS7SpArray
	.section	.rodata,"a",@progbits
	.globl	_ZTS7SpArray
_ZTS7SpArray:
	.asciz	"7SpArray"
	.size	_ZTS7SpArray, 9

	.type	_ZTI5Array,@object              # @_ZTI5Array
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTI5Array
	.p2align	3, 0x0
_ZTI5Array:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS5Array
	.dword	_ZTI5Table
	.size	_ZTI5Array, 24

	.type	_ZTS5Array,@object              # @_ZTS5Array
	.section	.rodata,"a",@progbits
	.globl	_ZTS5Array
_ZTS5Array:
	.asciz	"5Array"
	.size	_ZTS5Array, 7

	.type	_ZTV1A,@object                  # @_ZTV1A
	.section	.data.rel.ro._ZTV1A,"awG",@progbits,_ZTV1A,comdat
	.weak	_ZTV1A
	.p2align	3, 0x0
_ZTV1A:
	.dword	0
	.dword	_ZTI1A
	.dword	_ZN6ObjectD2Ev
	.dword	_ZN1AD0Ev
	.dword	_ZN1AeqER6Object
	.dword	_ZN1A4TypeEv
	.size	_ZTV1A, 48

	.type	_ZTI1A,@object                  # @_ZTI1A
	.section	.data.rel.ro._ZTI1A,"awG",@progbits,_ZTI1A,comdat
	.weak	_ZTI1A
	.p2align	3, 0x0
_ZTI1A:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS1A
	.dword	_ZTI6Object
	.size	_ZTI1A, 24

	.type	_ZTS1A,@object                  # @_ZTS1A
	.section	.rodata._ZTS1A,"aG",@progbits,_ZTS1A,comdat
	.weak	_ZTS1A
_ZTS1A:
	.asciz	"1A"
	.size	_ZTS1A, 3

	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"A"
	.size	.L.str.1, 2

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"Table"
	.size	.L.str.2, 6

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"SpArray"
	.size	.L.str.3, 8

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"Array"
	.size	.L.str.4, 6

	.globl	_ZN5ArrayC1Ei7TblType
	.type	_ZN5ArrayC1Ei7TblType,@function
_ZN5ArrayC1Ei7TblType = _ZN5ArrayC2Ei7TblType
	.globl	_ZN5ArrayD1Ev
	.type	_ZN5ArrayD1Ev,@function
_ZN5ArrayD1Ev = _ZN5ArrayD2Ev
	.globl	_ZN7SpArrayD1Ev
	.type	_ZN7SpArrayD1Ev,@function
_ZN7SpArrayD1Ev = _ZN7SpArrayD2Ev
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
	.addrsig_sym _ZTI5Table
	.addrsig_sym _ZTVN10__cxxabiv120__si_class_type_infoE
	.addrsig_sym _ZTS5Table
	.addrsig_sym _ZTI6Object
	.addrsig_sym _ZTVN10__cxxabiv117__class_type_infoE
	.addrsig_sym _ZTS6Object
	.addrsig_sym _ZTI7SpArray
	.addrsig_sym _ZTS7SpArray
	.addrsig_sym _ZTI5Array
	.addrsig_sym _ZTS5Array
	.addrsig_sym _ZTI1A
	.addrsig_sym _ZTS1A
