	.file	"CabBlockInStream.cpp"
	.text
	.globl	_ZN8NArchive4NCab17CCabBlockInStream6CreateEv # -- Begin function _ZN8NArchive4NCab17CCabBlockInStream6CreateEv
	.p2align	5
	.type	_ZN8NArchive4NCab17CCabBlockInStream6CreateEv,@function
_ZN8NArchive4NCab17CCabBlockInStream6CreateEv: # @_ZN8NArchive4NCab17CCabBlockInStream6CreateEv
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	ld.d	$a1, $a0, 24
	ori	$a0, $zero, 1
	beqz	$a1, .LBB0_2
# %bb.1:
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB0_2:
	lu12i.w	$a0, 16
	pcaddu18i	$ra, %call36(MyAlloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 24
	sltu	$a0, $zero, $a0
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end0:
	.size	_ZN8NArchive4NCab17CCabBlockInStream6CreateEv, .Lfunc_end0-_ZN8NArchive4NCab17CCabBlockInStream6CreateEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZN8NArchive4NCab17CCabBlockInStreamD2Ev # -- Begin function _ZN8NArchive4NCab17CCabBlockInStreamD2Ev
	.p2align	5
	.type	_ZN8NArchive4NCab17CCabBlockInStreamD2Ev,@function
_ZN8NArchive4NCab17CCabBlockInStreamD2Ev: # @_ZN8NArchive4NCab17CCabBlockInStreamD2Ev
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
	pcalau12i	$a0, %pc_hi20(_ZTVN8NArchive4NCab17CCabBlockInStreamE+16)
	addi.d	$a1, $a0, %pc_lo12(_ZTVN8NArchive4NCab17CCabBlockInStreamE+16)
	ld.d	$a0, $fp, 24
	st.d	$a1, $fp, 0
.Ltmp0:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(MyFree)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.1:
	ld.d	$a0, $fp, 16
	beqz	$a0, .LBB1_3
# %bb.2:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp3:                                 # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp4:                                 # EH_LABEL
.LBB1_3:                                # %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB1_4:
.Ltmp5:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_5:
.Ltmp2:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	_ZN8NArchive4NCab17CCabBlockInStreamD2Ev, .Lfunc_end1-_ZN8NArchive4NCab17CCabBlockInStreamD2Ev
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
	.uleb128 .Ltmp4-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Lfunc_end1-.Ltmp4             #   Call between .Ltmp4 and .Lfunc_end1
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
	.globl	_ZN8NArchive4NCab17CCabBlockInStreamD0Ev # -- Begin function _ZN8NArchive4NCab17CCabBlockInStreamD0Ev
	.p2align	5
	.type	_ZN8NArchive4NCab17CCabBlockInStreamD0Ev,@function
_ZN8NArchive4NCab17CCabBlockInStreamD0Ev: # @_ZN8NArchive4NCab17CCabBlockInStreamD0Ev
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
	pcalau12i	$a0, %pc_hi20(_ZTVN8NArchive4NCab17CCabBlockInStreamE+16)
	addi.d	$a1, $a0, %pc_lo12(_ZTVN8NArchive4NCab17CCabBlockInStreamE+16)
	ld.d	$a0, $fp, 24
	st.d	$a1, $fp, 0
.Ltmp6:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(MyFree)
	jirl	$ra, $ra, 0
.Ltmp7:                                 # EH_LABEL
# %bb.1:
	ld.d	$a0, $fp, 16
	beqz	$a0, .LBB3_3
# %bb.2:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp9:                                 # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp10:                                # EH_LABEL
.LBB3_3:                                # %_ZN8NArchive4NCab17CCabBlockInStreamD2Ev.exit
	ori	$a1, $zero, 56
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB3_4:
.Ltmp11:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB3_5:
.Ltmp8:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end3:
	.size	_ZN8NArchive4NCab17CCabBlockInStreamD0Ev, .Lfunc_end3-_ZN8NArchive4NCab17CCabBlockInStreamD0Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table3:
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
	.uleb128 .Lfunc_end3-.Ltmp10            #   Call between .Ltmp10 and .Lfunc_end3
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
	.globl	_ZN8NArchive4NCab10CCheckSum26UpdateEPKvj # -- Begin function _ZN8NArchive4NCab10CCheckSum26UpdateEPKvj
	.p2align	5
	.type	_ZN8NArchive4NCab10CCheckSum26UpdateEPKvj,@function
_ZN8NArchive4NCab10CCheckSum26UpdateEPKvj: # @_ZN8NArchive4NCab10CCheckSum26UpdateEPKvj
# %bb.0:
	ld.w	$t0, $a0, 0
	beqz	$a2, .LBB4_6
# %bb.1:                                # %.lr.ph
	ld.w	$a6, $a0, 4
	ld.bu	$a4, $a0, 8
	addi.d	$a3, $a0, 8
	ori	$a5, $zero, 3
	b	.LBB4_3
	.p2align	4, , 16
.LBB4_2:                                # %.loopexit
                                        #   in Loop: Header=BB4_3 Depth=1
	addi.w	$a2, $a2, -1
	addi.d	$a1, $a1, 1
	beqz	$a2, .LBB4_6
.LBB4_3:                                # =>This Inner Loop Header: Depth=1
	beqz	$a6, .LBB4_7
# %bb.4:                                #   in Loop: Header=BB4_3 Depth=1
	ld.b	$a7, $a1, 0
	stx.b	$a7, $a3, $a6
	ld.wu	$a7, $a0, 4
	addi.d	$a6, $a7, 1
	andi	$a6, $a6, 3
	andi	$a7, $a7, 3
	st.w	$a6, $a0, 4
	bne	$a7, $a5, .LBB4_2
# %bb.5:                                # %.preheader.preheader
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.bu	$a7, $a0, 9
	ld.bu	$t1, $a0, 10
	slli.d	$a7, $a7, 8
	ld.b	$t2, $a0, 11
	or	$a7, $a7, $a4
	slli.d	$t1, $t1, 16
	or	$a7, $a7, $t1
	slli.d	$t1, $t2, 24
	or	$a7, $a7, $t1
	xor	$t0, $a7, $t0
	b	.LBB4_2
.LBB4_6:                                # %._crit_edge.thread
	st.w	$t0, $a0, 0
	ret
.LBB4_7:                                # %.critedge
	ori	$a4, $zero, 4
	bltu	$a2, $a4, .LBB4_13
# %bb.8:                                # %.lr.ph52.preheader
	bstrpick.d	$a4, $a2, 31, 2
	addi.d	$a5, $a4, -1
	ori	$a6, $zero, 7
	bltu	$a5, $a6, .LBB4_12
# %bb.9:                                # %vector.ph
	addi.d	$a7, $a1, 15
	bstrpick.d	$a5, $a5, 31, 0
	addi.d	$a5, $a5, 1
	bstrpick.d	$a6, $a5, 32, 3
	slli.d	$a6, $a6, 3
	sub.d	$a4, $a4, $a6
	slli.d	$t1, $a5, 2
	bstrpick.d	$t1, $t1, 34, 5
	slli.d	$t1, $t1, 5
	vrepli.b	$vr0, 0
	add.d	$a1, $a1, $t1
	vori.b	$vr1, $vr0, 0
	vinsgr2vr.w	$vr1, $t0, 0
	move	$t0, $a6
	vori.b	$vr2, $vr0, 0
	.p2align	4, , 16
.LBB4_10:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$t1, $a7, -15
	ld.b	$t2, $a7, -11
	ld.b	$t3, $a7, -7
	ld.b	$t4, $a7, -3
	vinsgr2vr.b	$vr3, $t1, 0
	vinsgr2vr.b	$vr3, $t2, 1
	vinsgr2vr.b	$vr3, $t3, 2
	vinsgr2vr.b	$vr3, $t4, 3
	ld.b	$t1, $a7, 1
	ld.b	$t2, $a7, 5
	ld.b	$t3, $a7, 9
	ld.b	$t4, $a7, 13
	vinsgr2vr.b	$vr4, $t1, 0
	vinsgr2vr.b	$vr4, $t2, 1
	vinsgr2vr.b	$vr4, $t3, 2
	vinsgr2vr.b	$vr4, $t4, 3
	vilvl.b	$vr3, $vr0, $vr3
	vilvl.h	$vr3, $vr0, $vr3
	vilvl.b	$vr4, $vr0, $vr4
	vilvl.h	$vr4, $vr0, $vr4
	ld.b	$t1, $a7, -14
	ld.b	$t2, $a7, -10
	ld.b	$t3, $a7, -6
	ld.b	$t4, $a7, -2
	vinsgr2vr.b	$vr5, $t1, 0
	vinsgr2vr.b	$vr5, $t2, 1
	vinsgr2vr.b	$vr5, $t3, 2
	vinsgr2vr.b	$vr5, $t4, 3
	ld.b	$t1, $a7, 2
	ld.b	$t2, $a7, 6
	ld.b	$t3, $a7, 10
	ld.b	$t4, $a7, 14
	vinsgr2vr.b	$vr6, $t1, 0
	vinsgr2vr.b	$vr6, $t2, 1
	vinsgr2vr.b	$vr6, $t3, 2
	vinsgr2vr.b	$vr6, $t4, 3
	vilvl.b	$vr5, $vr0, $vr5
	vilvl.h	$vr5, $vr0, $vr5
	vilvl.b	$vr6, $vr0, $vr6
	vilvl.h	$vr6, $vr0, $vr6
	vslli.w	$vr5, $vr5, 8
	vslli.w	$vr6, $vr6, 8
	vor.v	$vr3, $vr5, $vr3
	vor.v	$vr4, $vr6, $vr4
	ld.b	$t1, $a7, -13
	ld.b	$t2, $a7, -9
	ld.b	$t3, $a7, -5
	ld.b	$t4, $a7, -1
	vinsgr2vr.b	$vr5, $t1, 0
	vinsgr2vr.b	$vr5, $t2, 1
	vinsgr2vr.b	$vr5, $t3, 2
	vinsgr2vr.b	$vr5, $t4, 3
	ld.b	$t1, $a7, 3
	ld.b	$t2, $a7, 7
	ld.b	$t3, $a7, 11
	ld.b	$t4, $a7, 15
	vinsgr2vr.b	$vr6, $t1, 0
	vinsgr2vr.b	$vr6, $t2, 1
	vinsgr2vr.b	$vr6, $t3, 2
	vinsgr2vr.b	$vr6, $t4, 3
	vilvl.b	$vr5, $vr0, $vr5
	vilvl.h	$vr5, $vr0, $vr5
	vilvl.b	$vr6, $vr0, $vr6
	vilvl.h	$vr6, $vr0, $vr6
	vslli.w	$vr5, $vr5, 16
	vslli.w	$vr6, $vr6, 16
	vor.v	$vr3, $vr3, $vr5
	vor.v	$vr4, $vr4, $vr6
	ld.b	$t1, $a7, -12
	ld.b	$t2, $a7, -8
	ld.b	$t3, $a7, -4
	ld.b	$t4, $a7, 0
	ld.b	$t5, $a7, 4
	ld.b	$t6, $a7, 8
	ld.b	$t7, $a7, 12
	ld.b	$t8, $a7, 16
	vinsgr2vr.b	$vr5, $t1, 0
	vinsgr2vr.b	$vr5, $t2, 4
	vinsgr2vr.b	$vr5, $t3, 8
	vinsgr2vr.b	$vr5, $t4, 12
	vinsgr2vr.b	$vr6, $t5, 0
	vinsgr2vr.b	$vr6, $t6, 4
	vinsgr2vr.b	$vr6, $t7, 8
	vinsgr2vr.b	$vr6, $t8, 12
	vslli.w	$vr5, $vr5, 24
	vslli.w	$vr6, $vr6, 24
	vor.v	$vr3, $vr3, $vr5
	vor.v	$vr4, $vr4, $vr6
	vxor.v	$vr1, $vr3, $vr1
	vxor.v	$vr2, $vr4, $vr2
	addi.d	$t0, $t0, -8
	addi.d	$a7, $a7, 32
	bnez	$t0, .LBB4_10
# %bb.11:                               # %middle.block
	vxor.v	$vr0, $vr2, $vr1
	vbsrl.v	$vr1, $vr0, 8
	vxor.v	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 4
	vxor.v	$vr0, $vr1, $vr0
	vpickve2gr.w	$t0, $vr0, 0
	beq	$a5, $a6, .LBB4_13
	.p2align	4, , 16
.LBB4_12:                               # %.lr.ph52
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a1, 0
	addi.w	$a4, $a4, -1
	addi.d	$a1, $a1, 4
	xor	$t0, $a5, $t0
	bnez	$a4, .LBB4_12
.LBB4_13:                               # %._crit_edge
	andi	$a2, $a2, 3
	st.w	$t0, $a0, 0
	beqz	$a2, .LBB4_16
# %bb.14:                               # %.lr.ph59
	ld.w	$a4, $a0, 4
	.p2align	4, , 16
.LBB4_15:                               # =>This Inner Loop Header: Depth=1
	ld.b	$a5, $a1, 0
	stx.b	$a5, $a3, $a4
	ld.w	$a4, $a0, 4
	addi.d	$a1, $a1, 1
	addi.d	$a4, $a4, 1
	andi	$a4, $a4, 3
	addi.w	$a2, $a2, -1
	st.w	$a4, $a0, 4
	bnez	$a2, .LBB4_15
.LBB4_16:                               # %._crit_edge60
	ret
.Lfunc_end4:
	.size	_ZN8NArchive4NCab10CCheckSum26UpdateEPKvj, .Lfunc_end4-_ZN8NArchive4NCab10CCheckSum26UpdateEPKvj
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN8NArchive4NCab17CCabBlockInStream7PreReadERjS2_
.LCPI5_0:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.text
	.globl	_ZN8NArchive4NCab17CCabBlockInStream7PreReadERjS2_
	.p2align	5
	.type	_ZN8NArchive4NCab17CCabBlockInStream7PreReadERjS2_,@function
_ZN8NArchive4NCab17CCabBlockInStream7PreReadERjS2_: # @_ZN8NArchive4NCab17CCabBlockInStream7PreReadERjS2_
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -128
	.cfi_def_cfa_offset 128
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
	ld.d	$a0, $a0, 16
	move	$s1, $a2
	move	$s0, $a1
	st.w	$zero, $sp, 36
	addi.d	$a1, $sp, 28
	ori	$a2, $zero, 8
	addi.d	$s6, $sp, 28
	pcaddu18i	$ra, %call36(_Z16ReadStream_FALSEP19ISequentialInStreamPvm)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_2
.LBB5_1:
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
.LBB5_2:
	ld.wu	$a0, $sp, 36
	addi.d	$a1, $a0, 1
	st.w	$a1, $sp, 36
	ldx.bu	$s2, $a0, $s6
	addi.d	$a2, $a0, 2
	st.w	$a2, $sp, 36
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$s4, $a1, $s6
	addi.d	$a1, $a0, 3
	st.w	$a1, $sp, 36
	bstrpick.d	$a2, $a2, 31, 0
	ldx.bu	$s5, $a2, $s6
	addi.d	$a2, $a0, 4
	st.w	$a2, $sp, 36
	bstrpick.d	$a1, $a1, 31, 0
	ldx.b	$s3, $a1, $s6
	addi.d	$a1, $a0, 5
	st.w	$a1, $sp, 36
	bstrpick.d	$a2, $a2, 31, 0
	ldx.bu	$a2, $a2, $s6
	addi.d	$a3, $a0, 6
	st.w	$a3, $sp, 36
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $a1, $s6
	addi.d	$a4, $a0, 7
	st.w	$a4, $sp, 36
	bstrpick.d	$a3, $a3, 31, 0
	ldx.bu	$a3, $a3, $s6
	addi.d	$a0, $a0, 8
	st.w	$a0, $sp, 36
	bstrpick.d	$a0, $a4, 31, 0
	ldx.bu	$a0, $a0, $s6
	slli.d	$a1, $a1, 8
	or	$a1, $a1, $a2
	st.w	$a1, $s0, 0
	slli.d	$a0, $a0, 8
	or	$a0, $a0, $a3
	st.w	$a0, $s1, 0
	ld.wu	$a2, $fp, 44
	beqz	$a2, .LBB5_4
# %bb.3:
	ld.d	$a0, $fp, 16
	ld.d	$a1, $fp, 24
	pcaddu18i	$ra, %call36(_Z16ReadStream_FALSEP19ISequentialInStreamPvm)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB5_1
.LBB5_4:
	st.w	$zero, $fp, 32
	ld.w	$s6, $s0, 0
	ld.bu	$a0, $fp, 49
	ld.w	$a2, $fp, 36
	st.d	$zero, $sp, 16
	beqz	$a0, .LBB5_11
# %bb.5:
	bnez	$a2, .LBB5_11
# %bb.6:
	ori	$a1, $zero, 2
	ori	$a0, $zero, 1
	bltu	$s6, $a1, .LBB5_1
# %bb.7:
	ld.d	$a0, $fp, 16
	addi.d	$a1, $sp, 8
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_Z16ReadStream_FALSEP19ISequentialInStreamPvm)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB5_1
# %bb.8:
	ld.bu	$a1, $sp, 8
	ori	$a2, $zero, 67
	ori	$a0, $zero, 1
	bne	$a1, $a2, .LBB5_1
# %bb.9:
	ld.bu	$a1, $sp, 9
	ori	$a2, $zero, 75
	bne	$a1, $a2, .LBB5_1
# %bb.10:
	addi.w	$s6, $s6, -2
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 8
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZN8NArchive4NCab10CCheckSum26UpdateEPKvj)
	jirl	$ra, $ra, 0
	ld.w	$a2, $fp, 36
.LBB5_11:
	lu12i.w	$a0, 16
	sub.w	$a1, $a0, $a2
	ori	$a0, $zero, 1
	bltu	$a1, $s6, .LBB5_1
# %bb.12:
	beqz	$s6, .LBB5_15
# %bb.13:
	bstrpick.d	$s6, $s6, 31, 0
	ld.d	$a1, $fp, 24
	ld.d	$a0, $fp, 16
	st.d	$s6, $sp, 8
	bstrpick.d	$a2, $a2, 31, 0
	add.d	$a1, $a1, $a2
	addi.d	$a2, $sp, 8
	pcaddu18i	$ra, %call36(_Z10ReadStreamP19ISequentialInStreamPvPm)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB5_1
# %bb.14:
	ld.d	$a0, $fp, 24
	ld.wu	$s7, $fp, 36
	ld.d	$s8, $sp, 8
	add.d	$a1, $a0, $s7
	addi.w	$a2, $s8, 0
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(_ZN8NArchive4NCab10CCheckSum26UpdateEPKvj)
	jirl	$ra, $ra, 0
	add.d	$a2, $s7, $s8
	st.w	$a2, $fp, 36
	ori	$a0, $zero, 1
	bne	$s8, $s6, .LBB5_1
.LBB5_15:
	slli.w	$a0, $s4, 8
	or	$a0, $a0, $s2
	slli.w	$a3, $s5, 16
	ld.w	$a1, $sp, 20
	or	$a0, $a0, $a3
	slli.w	$a3, $s3, 24
	or	$a0, $a0, $a3
	st.w	$a2, $fp, 40
	blez	$a1, .LBB5_24
# %bb.16:                               # %.lr.ph.i
	ld.w	$a3, $sp, 16
	ori	$a2, $zero, 8
	bgeu	$a1, $a2, .LBB5_18
# %bb.17:
	move	$a2, $zero
	b	.LBB5_21
.LBB5_18:                               # %vector.ph
	bstrpick.d	$a2, $a1, 30, 3
	vrepli.b	$vr0, 0
	slli.d	$a2, $a2, 3
	vori.b	$vr1, $vr0, 0
	vinsgr2vr.w	$vr1, $a3, 0
	vreplgr2vr.w	$vr2, $a1
	pcalau12i	$a3, %pc_hi20(.LCPI5_0)
	vld	$vr3, $a3, %pc_lo12(.LCPI5_0)
	addi.d	$a3, $sp, 28
	vrepli.b	$vr4, -1
	vrepli.w	$vr5, -40
	move	$a4, $a2
	vori.b	$vr6, $vr0, 0
	.p2align	4, , 16
.LBB5_19:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a3, -4
	ld.w	$a6, $a3, 0
	vinsgr2vr.w	$vr7, $a5, 0
	vinsgr2vr.w	$vr8, $a6, 0
	vilvl.b	$vr7, $vr0, $vr7
	vilvl.h	$vr7, $vr0, $vr7
	vilvl.b	$vr8, $vr0, $vr8
	vilvl.h	$vr8, $vr0, $vr8
	vxor.v	$vr9, $vr3, $vr4
	vadd.w	$vr9, $vr2, $vr9
	vsub.w	$vr10, $vr2, $vr3
	vslli.w	$vr9, $vr9, 3
	vslli.w	$vr10, $vr10, 3
	vadd.w	$vr10, $vr10, $vr5
	vsll.w	$vr7, $vr7, $vr9
	vsll.w	$vr8, $vr8, $vr10
	vxor.v	$vr1, $vr7, $vr1
	vxor.v	$vr6, $vr8, $vr6
	vaddi.wu	$vr3, $vr3, 8
	addi.d	$a4, $a4, -8
	addi.d	$a3, $a3, 8
	bnez	$a4, .LBB5_19
# %bb.20:                               # %middle.block
	vxor.v	$vr0, $vr6, $vr1
	vbsrl.v	$vr1, $vr0, 8
	vxor.v	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 4
	vxor.v	$vr0, $vr1, $vr0
	vpickve2gr.w	$a3, $vr0, 0
	beq	$a2, $a1, .LBB5_23
.LBB5_21:                               # %scalar.ph.preheader
	sub.d	$a4, $a1, $a2
	nor	$a5, $a2, $zero
	add.d	$a1, $a5, $a1
	slli.d	$a1, $a1, 3
	addi.d	$a5, $sp, 16
	add.d	$a2, $a2, $a5
	addi.d	$a2, $a2, 8
	.p2align	4, , 16
.LBB5_22:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a5, $a2, 0
	sll.w	$a5, $a5, $a1
	xor	$a3, $a5, $a3
	addi.d	$a4, $a4, -1
	addi.d	$a1, $a1, -8
	addi.d	$a2, $a2, 1
	bnez	$a4, .LBB5_22
.LBB5_23:                               # %._crit_edge.i
	st.w	$a3, $sp, 16
.LBB5_24:                               # %_ZN8NArchive4NCab10CCheckSum216FinishDataUpdateEv.exit
	beqz	$a0, .LBB5_26
# %bb.25:
	ld.w	$a1, $s1, 0
	ld.w	$a2, $s0, 0
	ld.w	$a3, $sp, 16
	slli.w	$a1, $a1, 16
	or	$a1, $a1, $a2
	xor	$a1, $a1, $a3
	xor	$a0, $a1, $a0
	sltu	$a0, $zero, $a0
	b	.LBB5_27
.LBB5_26:
	move	$a0, $zero
.LBB5_27:
	ld.b	$a1, $fp, 48
	or	$a1, $a1, $a0
	st.b	$a1, $fp, 48
	b	.LBB5_1
.Lfunc_end5:
	.size	_ZN8NArchive4NCab17CCabBlockInStream7PreReadERjS2_, .Lfunc_end5-_ZN8NArchive4NCab17CCabBlockInStream7PreReadERjS2_
	.cfi_endproc
                                        # -- End function
	.globl	_ZN8NArchive4NCab17CCabBlockInStream4ReadEPvjPj # -- Begin function _ZN8NArchive4NCab17CCabBlockInStream4ReadEPvjPj
	.p2align	5
	.type	_ZN8NArchive4NCab17CCabBlockInStream4ReadEPvjPj,@function
_ZN8NArchive4NCab17CCabBlockInStream4ReadEPvjPj: # @_ZN8NArchive4NCab17CCabBlockInStream4ReadEPvjPj
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a3
	beqz	$a3, .LBB6_2
# %bb.1:
	st.w	$zero, $fp, 0
.LBB6_2:
	beqz	$a2, .LBB6_6
# %bb.3:
	ld.w	$a3, $a0, 36
	beqz	$a3, .LBB6_6
# %bb.4:
	sltu	$a4, $a3, $a2
	ld.d	$a5, $a0, 24
	ld.wu	$a6, $a0, 32
	masknez	$a2, $a2, $a4
	maskeqz	$a3, $a3, $a4
	or	$s0, $a3, $a2
	add.d	$a3, $a5, $a6
	bstrpick.d	$a2, $s0, 31, 0
	move	$s1, $a0
	move	$a0, $a1
	move	$a1, $a3
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 32
	ld.w	$a1, $s1, 36
	add.d	$a0, $a0, $s0
	st.w	$a0, $s1, 32
	sub.d	$a0, $a1, $s0
	st.w	$a0, $s1, 36
	beqz	$fp, .LBB6_6
# %bb.5:
	st.w	$s0, $fp, 0
.LBB6_6:
	move	$a0, $zero
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end6:
	.size	_ZN8NArchive4NCab17CCabBlockInStream4ReadEPvjPj, .Lfunc_end6-_ZN8NArchive4NCab17CCabBlockInStream4ReadEPvjPj
                                        # -- End function
	.section	.text._ZN8NArchive4NCab17CCabBlockInStream14QueryInterfaceERK4GUIDPPv,"axG",@progbits,_ZN8NArchive4NCab17CCabBlockInStream14QueryInterfaceERK4GUIDPPv,comdat
	.weak	_ZN8NArchive4NCab17CCabBlockInStream14QueryInterfaceERK4GUIDPPv # -- Begin function _ZN8NArchive4NCab17CCabBlockInStream14QueryInterfaceERK4GUIDPPv
	.p2align	5
	.type	_ZN8NArchive4NCab17CCabBlockInStream14QueryInterfaceERK4GUIDPPv,@function
_ZN8NArchive4NCab17CCabBlockInStream14QueryInterfaceERK4GUIDPPv: # @_ZN8NArchive4NCab17CCabBlockInStream14QueryInterfaceERK4GUIDPPv
	.cfi_startproc
# %bb.0:
	ld.bu	$a5, $a1, 0
	move	$a3, $a0
	pcalau12i	$a0, %got_pc_hi20(IID_IUnknown)
	ld.d	$a4, $a0, %got_pc_lo12(IID_IUnknown)
	ld.bu	$a6, $a4, 0
	lu12i.w	$a0, -524284
	ori	$a0, $a0, 2
	bne	$a5, $a6, .LBB7_17
# %bb.1:
	ld.bu	$a5, $a1, 1
	ld.bu	$a6, $a4, 1
	bne	$a5, $a6, .LBB7_17
# %bb.2:
	ld.bu	$a5, $a1, 2
	ld.bu	$a6, $a4, 2
	bne	$a5, $a6, .LBB7_17
# %bb.3:
	ld.bu	$a5, $a1, 3
	ld.bu	$a6, $a4, 3
	bne	$a5, $a6, .LBB7_17
# %bb.4:
	ld.bu	$a5, $a1, 4
	ld.bu	$a6, $a4, 4
	bne	$a5, $a6, .LBB7_17
# %bb.5:
	ld.bu	$a5, $a1, 5
	ld.bu	$a6, $a4, 5
	bne	$a5, $a6, .LBB7_17
# %bb.6:
	ld.bu	$a5, $a1, 6
	ld.bu	$a6, $a4, 6
	bne	$a5, $a6, .LBB7_17
# %bb.7:
	ld.bu	$a5, $a1, 7
	ld.bu	$a6, $a4, 7
	bne	$a5, $a6, .LBB7_17
# %bb.8:
	ld.bu	$a5, $a1, 8
	ld.bu	$a6, $a4, 8
	bne	$a5, $a6, .LBB7_17
# %bb.9:
	ld.bu	$a5, $a1, 9
	ld.bu	$a6, $a4, 9
	bne	$a5, $a6, .LBB7_17
# %bb.10:
	ld.bu	$a5, $a1, 10
	ld.bu	$a6, $a4, 10
	bne	$a5, $a6, .LBB7_17
# %bb.11:
	ld.bu	$a5, $a1, 11
	ld.bu	$a6, $a4, 11
	bne	$a5, $a6, .LBB7_17
# %bb.12:
	ld.bu	$a5, $a1, 12
	ld.bu	$a6, $a4, 12
	bne	$a5, $a6, .LBB7_17
# %bb.13:
	ld.bu	$a5, $a1, 13
	ld.bu	$a6, $a4, 13
	bne	$a5, $a6, .LBB7_17
# %bb.14:
	ld.bu	$a5, $a1, 14
	ld.bu	$a6, $a4, 14
	bne	$a5, $a6, .LBB7_17
# %bb.15:                               # %_ZeqRK4GUIDS1_.exit
	ld.bu	$a1, $a1, 15
	ld.bu	$a4, $a4, 15
	bne	$a1, $a4, .LBB7_17
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
.LBB7_17:                               # %_ZeqRK4GUIDS1_.exit.thread
	ret
.Lfunc_end7:
	.size	_ZN8NArchive4NCab17CCabBlockInStream14QueryInterfaceERK4GUIDPPv, .Lfunc_end7-_ZN8NArchive4NCab17CCabBlockInStream14QueryInterfaceERK4GUIDPPv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN8NArchive4NCab17CCabBlockInStream6AddRefEv,"axG",@progbits,_ZN8NArchive4NCab17CCabBlockInStream6AddRefEv,comdat
	.weak	_ZN8NArchive4NCab17CCabBlockInStream6AddRefEv # -- Begin function _ZN8NArchive4NCab17CCabBlockInStream6AddRefEv
	.p2align	5
	.type	_ZN8NArchive4NCab17CCabBlockInStream6AddRefEv,@function
_ZN8NArchive4NCab17CCabBlockInStream6AddRefEv: # @_ZN8NArchive4NCab17CCabBlockInStream6AddRefEv
# %bb.0:
	ld.w	$a1, $a0, 8
	addi.w	$a1, $a1, 1
	st.w	$a1, $a0, 8
	move	$a0, $a1
	ret
.Lfunc_end8:
	.size	_ZN8NArchive4NCab17CCabBlockInStream6AddRefEv, .Lfunc_end8-_ZN8NArchive4NCab17CCabBlockInStream6AddRefEv
                                        # -- End function
	.section	.text._ZN8NArchive4NCab17CCabBlockInStream7ReleaseEv,"axG",@progbits,_ZN8NArchive4NCab17CCabBlockInStream7ReleaseEv,comdat
	.weak	_ZN8NArchive4NCab17CCabBlockInStream7ReleaseEv # -- Begin function _ZN8NArchive4NCab17CCabBlockInStream7ReleaseEv
	.p2align	5
	.type	_ZN8NArchive4NCab17CCabBlockInStream7ReleaseEv,@function
_ZN8NArchive4NCab17CCabBlockInStream7ReleaseEv: # @_ZN8NArchive4NCab17CCabBlockInStream7ReleaseEv
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	ld.w	$a1, $a0, 8
	addi.w	$fp, $a1, -1
	st.w	$fp, $a0, 8
	bnez	$fp, .LBB9_2
# %bb.1:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 32
	jirl	$ra, $a1, 0
.LBB9_2:
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end9:
	.size	_ZN8NArchive4NCab17CCabBlockInStream7ReleaseEv, .Lfunc_end9-_ZN8NArchive4NCab17CCabBlockInStream7ReleaseEv
                                        # -- End function
	.type	_ZTVN8NArchive4NCab17CCabBlockInStreamE,@object # @_ZTVN8NArchive4NCab17CCabBlockInStreamE
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTVN8NArchive4NCab17CCabBlockInStreamE
	.p2align	3, 0x0
_ZTVN8NArchive4NCab17CCabBlockInStreamE:
	.dword	0
	.dword	_ZTIN8NArchive4NCab17CCabBlockInStreamE
	.dword	_ZN8NArchive4NCab17CCabBlockInStream14QueryInterfaceERK4GUIDPPv
	.dword	_ZN8NArchive4NCab17CCabBlockInStream6AddRefEv
	.dword	_ZN8NArchive4NCab17CCabBlockInStream7ReleaseEv
	.dword	_ZN8NArchive4NCab17CCabBlockInStreamD2Ev
	.dword	_ZN8NArchive4NCab17CCabBlockInStreamD0Ev
	.dword	_ZN8NArchive4NCab17CCabBlockInStream4ReadEPvjPj
	.size	_ZTVN8NArchive4NCab17CCabBlockInStreamE, 64

	.type	_ZTIN8NArchive4NCab17CCabBlockInStreamE,@object # @_ZTIN8NArchive4NCab17CCabBlockInStreamE
	.globl	_ZTIN8NArchive4NCab17CCabBlockInStreamE
	.p2align	3, 0x0
_ZTIN8NArchive4NCab17CCabBlockInStreamE:
	.dword	_ZTVN10__cxxabiv121__vmi_class_type_infoE+16
	.dword	_ZTSN8NArchive4NCab17CCabBlockInStreamE
	.word	0                               # 0x0
	.word	2                               # 0x2
	.dword	_ZTI19ISequentialInStream
	.dword	2                               # 0x2
	.dword	_ZTI13CMyUnknownImp
	.dword	2050                            # 0x802
	.size	_ZTIN8NArchive4NCab17CCabBlockInStreamE, 56

	.type	_ZTSN8NArchive4NCab17CCabBlockInStreamE,@object # @_ZTSN8NArchive4NCab17CCabBlockInStreamE
	.section	.rodata,"a",@progbits
	.globl	_ZTSN8NArchive4NCab17CCabBlockInStreamE
_ZTSN8NArchive4NCab17CCabBlockInStreamE:
	.asciz	"N8NArchive4NCab17CCabBlockInStreamE"
	.size	_ZTSN8NArchive4NCab17CCabBlockInStreamE, 36

	.type	_ZTI19ISequentialInStream,@object # @_ZTI19ISequentialInStream
	.section	.data.rel.ro._ZTI19ISequentialInStream,"awG",@progbits,_ZTI19ISequentialInStream,comdat
	.weak	_ZTI19ISequentialInStream
	.p2align	3, 0x0
_ZTI19ISequentialInStream:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS19ISequentialInStream
	.dword	_ZTI8IUnknown
	.size	_ZTI19ISequentialInStream, 24

	.type	_ZTS19ISequentialInStream,@object # @_ZTS19ISequentialInStream
	.section	.rodata._ZTS19ISequentialInStream,"aG",@progbits,_ZTS19ISequentialInStream,comdat
	.weak	_ZTS19ISequentialInStream
_ZTS19ISequentialInStream:
	.asciz	"19ISequentialInStream"
	.size	_ZTS19ISequentialInStream, 22

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

	.globl	_ZN8NArchive4NCab17CCabBlockInStreamD1Ev
	.type	_ZN8NArchive4NCab17CCabBlockInStreamD1Ev,@function
_ZN8NArchive4NCab17CCabBlockInStreamD1Ev = _ZN8NArchive4NCab17CCabBlockInStreamD2Ev
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
	.addrsig_sym _ZTIN8NArchive4NCab17CCabBlockInStreamE
	.addrsig_sym _ZTVN10__cxxabiv121__vmi_class_type_infoE
	.addrsig_sym _ZTSN8NArchive4NCab17CCabBlockInStreamE
	.addrsig_sym _ZTI19ISequentialInStream
	.addrsig_sym _ZTVN10__cxxabiv120__si_class_type_infoE
	.addrsig_sym _ZTS19ISequentialInStream
	.addrsig_sym _ZTI8IUnknown
	.addrsig_sym _ZTVN10__cxxabiv117__class_type_infoE
	.addrsig_sym _ZTS8IUnknown
	.addrsig_sym _ZTI13CMyUnknownImp
	.addrsig_sym _ZTS13CMyUnknownImp
