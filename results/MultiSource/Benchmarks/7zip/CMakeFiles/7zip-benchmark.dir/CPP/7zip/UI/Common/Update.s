	.file	"Update.cpp"
	.text
	.globl	_ZN18COutMultiVolStream5CloseEv # -- Begin function _ZN18COutMultiVolStream5CloseEv
	.p2align	5
	.type	_ZN18COutMultiVolStream5CloseEv,@function
_ZN18COutMultiVolStream5CloseEv:        # @_ZN18COutMultiVolStream5CloseEv
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
	ld.w	$a1, $a0, 52
	blez	$a1, .LBB0_5
# %bb.1:                                # %.lr.ph
	move	$fp, $a0
	move	$s1, $zero
	move	$s2, $zero
	move	$s0, $zero
	b	.LBB0_3
	.p2align	4, , 16
.LBB0_2:                                #   in Loop: Header=BB0_3 Depth=1
	addi.d	$s2, $s2, 1
	addi.d	$s1, $s1, 8
	bge	$s2, $a1, .LBB0_6
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 56
	ldx.d	$a0, $a0, $s1
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB0_2
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	pcaddu18i	$ra, %call36(_ZN14COutFileStream5CloseEv)
	jirl	$ra, $ra, 0
	sltui	$a2, $a0, 1
	ld.w	$a1, $fp, 52
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $s0, $a2
	or	$s0, $a2, $a0
	b	.LBB0_2
.LBB0_5:
	move	$s0, $zero
.LBB0_6:                                # %._crit_edge
	move	$a0, $s0
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end0:
	.size	_ZN18COutMultiVolStream5CloseEv, .Lfunc_end0-_ZN18COutMultiVolStream5CloseEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZN18COutMultiVolStream5WriteEPKvjPj # -- Begin function _ZN18COutMultiVolStream5WriteEPKvjPj
	.p2align	5
	.type	_ZN18COutMultiVolStream5WriteEPKvjPj,@function
_ZN18COutMultiVolStream5WriteEPKvjPj:   # @_ZN18COutMultiVolStream5WriteEPKvjPj
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
# %bb.0:
	addi.d	$sp, $sp, -336
	.cfi_def_cfa_offset 336
	st.d	$ra, $sp, 328                   # 8-byte Folded Spill
	st.d	$fp, $sp, 320                   # 8-byte Folded Spill
	st.d	$s0, $sp, 312                   # 8-byte Folded Spill
	st.d	$s1, $sp, 304                   # 8-byte Folded Spill
	st.d	$s2, $sp, 296                   # 8-byte Folded Spill
	st.d	$s3, $sp, 288                   # 8-byte Folded Spill
	st.d	$s4, $sp, 280                   # 8-byte Folded Spill
	st.d	$s5, $sp, 272                   # 8-byte Folded Spill
	st.d	$s6, $sp, 264                   # 8-byte Folded Spill
	st.d	$s7, $sp, 256                   # 8-byte Folded Spill
	st.d	$s8, $sp, 248                   # 8-byte Folded Spill
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
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	move	$s1, $a0
	beqz	$a3, .LBB1_2
# %bb.1:
	st.w	$zero, $a3, 0
.LBB1_2:
	st.d	$a3, $sp, 16                    # 8-byte Folded Spill
	addi.d	$a0, $s1, 40
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(_ZTV14COutFileStream)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTV14COutFileStream)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ld.d	$a0, $a0, 24
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ori	$s0, $zero, 3
	lu12i.w	$a0, -524284
	ori	$a0, $a0, 5
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 80                   # 16-byte Folded Spill
	ori	$s8, $zero, 48
                                        # implicit-def: $r4
                                        # kill: killed $r4
	st.d	$s1, $sp, 72                    # 8-byte Folded Spill
.LBB1_3:                                # %.outer
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_5 Depth 2
                                        #       Child Loop BB1_9 Depth 3
                                        #       Child Loop BB1_11 Depth 3
                                        #         Child Loop BB1_14 Depth 4
                                        #         Child Loop BB1_19 Depth 4
                                        #         Child Loop BB1_27 Depth 4
                                        #       Child Loop BB1_34 Depth 3
                                        #       Child Loop BB1_50 Depth 3
                                        #       Child Loop BB1_59 Depth 3
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	bnez	$a0, .LBB1_5
	b	.LBB1_87
	.p2align	4, , 16
.LBB1_4:                                # %_ZN18COutMultiVolStream14CSubStreamInfoD2Ev.exit
                                        #   in Loop: Header=BB1_5 Depth=2
	beqz	$s4, .LBB1_88
.LBB1_5:                                # %.outer.split
                                        #   Parent Loop BB1_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_9 Depth 3
                                        #       Child Loop BB1_11 Depth 3
                                        #         Child Loop BB1_14 Depth 4
                                        #         Child Loop BB1_19 Depth 4
                                        #         Child Loop BB1_27 Depth 4
                                        #       Child Loop BB1_34 Depth 3
                                        #       Child Loop BB1_50 Depth 3
                                        #       Child Loop BB1_59 Depth 3
	ld.w	$fp, $s1, 12
	ld.w	$a0, $s1, 52
	blt	$fp, $a0, .LBB1_69
# %bb.6:                                #   in Loop: Header=BB1_5 Depth=2
	addi.d	$a0, $sp, 208
	st.d	$zero, $a0, 16
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vst	$vr0, $a0, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 216
	st.w	$zero, $a0, 0
	ori	$a0, $zero, 4
	st.w	$a0, $sp, 228
	addi.w	$a0, $fp, 1
.Ltmp0:                                 # EH_LABEL
	addi.d	$a1, $sp, 136
	pcaddu18i	$ra, %call36(_Z21ConvertUInt32ToStringjPw)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.7:                                #   in Loop: Header=BB1_5 Depth=2
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vst	$vr0, $sp, 120
	addi.d	$a0, $sp, 136
	pcaddu18i	$ra, %call36(wcslen)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	addi.w	$fp, $a0, 0
	addi.w	$s1, $a0, 1
	slti	$a0, $fp, -1
	slli.d	$a1, $s1, 2
	addi.w	$s3, $zero, -1
	maskeqz	$a2, $s3, $a0
	masknez	$a0, $a1, $a0
	or	$a0, $a2, $a0
.Ltmp3:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp4:                                 # EH_LABEL
# %bb.8:                                # %.noexc
                                        #   in Loop: Header=BB1_5 Depth=2
	st.d	$a0, $sp, 120
	st.w	$zero, $a0, 0
	st.w	$s1, $sp, 132
	addi.d	$a1, $sp, 136
	.p2align	4, , 16
.LBB1_9:                                # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
                                        #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a2, $a1, 0
	addi.d	$a1, $a1, 4
	addi.d	$a3, $a0, 4
	st.w	$a2, $a0, 0
	move	$a0, $a3
	bnez	$a2, .LBB1_9
# %bb.10:                               # %_ZN11CStringBaseIwEC2EPKw.exit
                                        #   in Loop: Header=BB1_5 Depth=2
	st.w	$s6, $sp, 128
	ori	$a0, $zero, 2
	blt	$a0, $fp, .LBB1_29
	.p2align	4, , 16
.LBB1_11:                               # %.lr.ph
                                        #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_5 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_14 Depth 4
                                        #         Child Loop BB1_19 Depth 4
                                        #         Child Loop BB1_27 Depth 4
.Ltmp6:                                 # EH_LABEL
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp7:                                 # EH_LABEL
# %bb.12:                               #   in Loop: Header=BB1_11 Depth=3
	move	$s4, $a0
	st.d	$s8, $a0, 0
.Ltmp9:                                 # EH_LABEL
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp10:                                # EH_LABEL
# %bb.13:                               # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i
                                        #   in Loop: Header=BB1_11 Depth=3
	move	$s5, $a0
	st.w	$s8, $a0, 0
	ori	$a0, $zero, 4
	.p2align	4, , 16
.LBB1_14:                               # %thread-pre-split
                                        #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_5 Depth=2
                                        #       Parent Loop BB1_11 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ldx.w	$a1, $s4, $a0
	stx.w	$a1, $s5, $a0
	addi.d	$a0, $a0, 4
	bnez	$a1, .LBB1_14
# %bb.15:                               # %_ZN11CStringBaseIwEC2ERKS0_.exit.i
                                        #   in Loop: Header=BB1_11 Depth=3
	addi.w	$a0, $s6, 0
	blez	$a0, .LBB1_18
# %bb.16:                               #   in Loop: Header=BB1_11 Depth=3
.Ltmp12:                                # EH_LABEL
	ori	$a0, $zero, 28
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp13:                                # EH_LABEL
# %bb.17:                               # %.lr.ph.i.i.i.preheader
                                        #   in Loop: Header=BB1_11 Depth=3
	move	$s6, $a0
	ld.w	$a0, $s5, 0
	st.w	$a0, $s6, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	st.w	$zero, $s6, 4
	move	$s5, $s6
.LBB1_18:                               # %_ZN11CStringBaseIwE10GrowLengthEi.exit.i
                                        #   in Loop: Header=BB1_11 Depth=3
	ld.d	$s6, $sp, 120
	move	$a0, $zero
	.p2align	4, , 16
.LBB1_19:                               #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_5 Depth=2
                                        #       Parent Loop BB1_11 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ldx.w	$a1, $s6, $a0
	add.d	$a2, $s5, $a0
	st.w	$a1, $a2, 4
	addi.d	$a0, $a0, 4
	bnez	$a1, .LBB1_19
# %bb.20:                               #   in Loop: Header=BB1_11 Depth=3
	ld.w	$fp, $sp, 128
	st.w	$zero, $sp, 128
	st.w	$zero, $s6, 0
	ld.w	$s2, $sp, 132
	addi.w	$s1, $fp, 2
	beq	$s1, $s2, .LBB1_26
# %bb.21:                               #   in Loop: Header=BB1_11 Depth=3
	slti	$a0, $fp, -2
	slli.d	$a1, $s1, 2
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s3, $a0
	or	$a0, $a0, $a1
.Ltmp15:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp16:                                # EH_LABEL
# %bb.22:                               # %.noexc98
                                        #   in Loop: Header=BB1_11 Depth=3
	move	$s7, $a0
	blez	$s2, .LBB1_24
# %bb.23:                               # %._crit_edge.thread.i.i
                                        #   in Loop: Header=BB1_11 Depth=3
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 128
	b	.LBB1_25
.LBB1_24:                               #   in Loop: Header=BB1_11 Depth=3
	move	$a0, $zero
.LBB1_25:                               #   in Loop: Header=BB1_11 Depth=3
	st.d	$s7, $sp, 120
	slli.d	$a0, $a0, 2
	stx.w	$zero, $s7, $a0
	st.w	$s1, $sp, 132
	move	$s6, $s7
.LBB1_26:                               # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i94.preheader
                                        #   in Loop: Header=BB1_11 Depth=3
	move	$a1, $zero
	addi.d	$a0, $fp, 1
	.p2align	4, , 16
.LBB1_27:                               # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i94
                                        #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_5 Depth=2
                                        #       Parent Loop BB1_11 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ldx.w	$a2, $s5, $a1
	stx.w	$a2, $s6, $a1
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB1_27
# %bb.28:                               # %_ZN11CStringBaseIwED2Ev.exit99
                                        #   in Loop: Header=BB1_11 Depth=3
	st.w	$a0, $sp, 128
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$s6, $sp, 128
	blt	$s6, $s0, .LBB1_11
.LBB1_29:                               # %._crit_edge
                                        #   in Loop: Header=BB1_5 Depth=2
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.w	$fp, $a0, 112
	bstrpick.d	$a0, $fp, 31, 0
	addi.d	$s1, $a0, 1
	slli.d	$a0, $s1, 31
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vst	$vr0, $sp, 104
	bgez	$a0, .LBB1_31
# %bb.30:                               #   in Loop: Header=BB1_5 Depth=2
	move	$a0, $zero
	b	.LBB1_33
	.p2align	4, , 16
.LBB1_31:                               #   in Loop: Header=BB1_5 Depth=2
	addi.w	$a0, $s1, 0
	slti	$a1, $fp, -1
	slli.d	$a0, $a0, 2
	maskeqz	$a2, $s3, $a1
	masknez	$a0, $a0, $a1
	or	$a0, $a2, $a0
.Ltmp18:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp19:                                # EH_LABEL
# %bb.32:                               # %.noexc108
                                        #   in Loop: Header=BB1_5 Depth=2
	st.d	$a0, $sp, 104
	st.w	$zero, $a0, 0
	st.w	$s1, $sp, 116
.LBB1_33:                               # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i102
                                        #   in Loop: Header=BB1_5 Depth=2
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 104
	.p2align	4, , 16
.LBB1_34:                               #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a2, $a1, 0
	addi.d	$a1, $a1, 4
	addi.d	$a3, $a0, 4
	st.w	$a2, $a0, 0
	move	$a0, $a3
	bnez	$a2, .LBB1_34
# %bb.35:                               # %_ZN11CStringBaseIwEC2ERKS0_.exit.i106
                                        #   in Loop: Header=BB1_5 Depth=2
	st.w	$fp, $sp, 112
.Ltmp21:                                # EH_LABEL
	addi.d	$a0, $sp, 104
	addi.d	$a1, $sp, 120
	pcaddu18i	$ra, %call36(_ZN11CStringBaseIwEpLERKS0_)
	jirl	$ra, $ra, 0
.Ltmp22:                                # EH_LABEL
# %bb.36:                               # %_ZplIwE11CStringBaseIT_ERKS2_S4_.exit111
                                        #   in Loop: Header=BB1_5 Depth=2
.Ltmp24:                                # EH_LABEL
	ori	$a0, $zero, 1112
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp25:                                # EH_LABEL
# %bb.37:                               #   in Loop: Header=BB1_5 Depth=2
	move	$s4, $a0
	st.w	$zero, $a0, 8
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	addi.d	$a0, $a0, 16
	st.d	$a0, $s4, 0
	pcalau12i	$a0, %got_pc_hi20(_ZTVN8NWindows5NFile3NIO9CFileBaseE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTVN8NWindows5NFile3NIO9CFileBaseE)
	addi.d	$a0, $a0, 16
	st.d	$a0, $s4, 16
	move	$a0, $s3
	lu32i.d	$a0, 0
	st.w	$a0, $s4, 24
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vst	$vr0, $s4, 32
.Ltmp26:                                # EH_LABEL
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp27:                                # EH_LABEL
# %bb.38:                               #   in Loop: Header=BB1_5 Depth=2
	st.d	$a0, $s4, 32
	st.b	$zero, $a0, 0
	ori	$a0, $zero, 4
	st.w	$a0, $s4, 44
	pcalau12i	$a0, %pc_hi20(_ZTVN8NWindows5NFile3NIO8COutFileE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTVN8NWindows5NFile3NIO8COutFileE+16)
	st.d	$a0, $s4, 16
	st.d	$s4, $sp, 200
.Ltmp29:                                # EH_LABEL
	move	$a0, $s4
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	jirl	$ra, $a1, 0
.Ltmp30:                                # EH_LABEL
# %bb.39:                               # %.noexc113
                                        #   in Loop: Header=BB1_5 Depth=2
	ld.d	$a0, $sp, 208
	beqz	$a0, .LBB1_41
# %bb.40:                               #   in Loop: Header=BB1_5 Depth=2
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp31:                                # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp32:                                # EH_LABEL
.LBB1_41:                               #   in Loop: Header=BB1_5 Depth=2
	ld.d	$a0, $sp, 200
	ld.d	$a1, $sp, 104
	st.d	$s4, $sp, 208
	st.d	$zero, $a0, 1104
	addi.d	$a0, $a0, 16
.Ltmp33:                                # EH_LABEL
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZN8NWindows5NFile3NIO8COutFile6CreateEPKwb)
	jirl	$ra, $ra, 0
.Ltmp34:                                # EH_LABEL
# %bb.42:                               # %_ZN14COutFileStream6CreateEPKwb.exit
                                        #   in Loop: Header=BB1_5 Depth=2
	move	$s4, $a0
	beqz	$a0, .LBB1_46
# %bb.43:                               #   in Loop: Header=BB1_5 Depth=2
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s6, $a0, 120
.Ltmp35:                                # EH_LABEL
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp36:                                # EH_LABEL
# %bb.44:                               # %.noexc120
                                        #   in Loop: Header=BB1_5 Depth=2
	move	$s5, $a0
	ld.w	$fp, $sp, 112
	bstrpick.d	$a0, $fp, 31, 0
	addi.d	$s1, $a0, 1
	slli.d	$a0, $s1, 31
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vst	$vr0, $s5, 0
	bgez	$a0, .LBB1_47
# %bb.45:                               #   in Loop: Header=BB1_5 Depth=2
	move	$a0, $zero
	b	.LBB1_49
	.p2align	4, , 16
.LBB1_46:                               #   in Loop: Header=BB1_5 Depth=2
	pcaddu18i	$ra, %call36(__errno_location)
	jirl	$ra, $ra, 0
	ld.w	$a0, $a0, 0
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	b	.LBB1_61
	.p2align	4, , 16
.LBB1_47:                               #   in Loop: Header=BB1_5 Depth=2
	addi.w	$a0, $s1, 0
	slti	$a1, $fp, -1
	slli.d	$a0, $a0, 2
	maskeqz	$a2, $s3, $a1
	masknez	$a0, $a0, $a1
	or	$a0, $a2, $a0
.Ltmp37:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp38:                                # EH_LABEL
# %bb.48:                               # %.noexc.i
                                        #   in Loop: Header=BB1_5 Depth=2
	st.d	$a0, $s5, 0
	st.w	$zero, $a0, 0
	st.w	$s1, $s5, 12
.LBB1_49:                               # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i116
                                        #   in Loop: Header=BB1_5 Depth=2
	ld.d	$a1, $sp, 104
	.p2align	4, , 16
.LBB1_50:                               #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a2, $a1, 0
	addi.d	$a1, $a1, 4
	addi.d	$a3, $a0, 4
	st.w	$a2, $a0, 0
	move	$a0, $a3
	bnez	$a2, .LBB1_50
# %bb.51:                               #   in Loop: Header=BB1_5 Depth=2
	st.w	$fp, $s5, 8
.Ltmp40:                                # EH_LABEL
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp41:                                # EH_LABEL
# %bb.52:                               #   in Loop: Header=BB1_5 Depth=2
	ld.w	$a0, $s6, 12
	ld.d	$a1, $s6, 16
	slli.d	$a2, $a0, 3
	stx.d	$s5, $a1, $a2
	addi.d	$a0, $a0, 1
	st.w	$a0, $s6, 12
	ld.d	$s5, $sp, 216
	st.w	$zero, $sp, 224
	addi.d	$a0, $sp, 232
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vst	$vr0, $a0, 0
	st.w	$zero, $s5, 0
	ld.w	$a0, $sp, 112
	ld.w	$s1, $sp, 228
	addi.w	$fp, $a0, 1
	beq	$fp, $s1, .LBB1_58
# %bb.53:                               #   in Loop: Header=BB1_5 Depth=2
	slti	$a0, $a0, -1
	slli.d	$a1, $fp, 2
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s3, $a0
	or	$a0, $a0, $a1
.Ltmp42:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp43:                                # EH_LABEL
# %bb.54:                               # %.noexc130
                                        #   in Loop: Header=BB1_5 Depth=2
	move	$s6, $a0
	blez	$s1, .LBB1_56
# %bb.55:                               # %._crit_edge.thread.i.i128
                                        #   in Loop: Header=BB1_5 Depth=2
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 224
	b	.LBB1_57
.LBB1_56:                               #   in Loop: Header=BB1_5 Depth=2
	move	$a0, $zero
.LBB1_57:                               #   in Loop: Header=BB1_5 Depth=2
	st.d	$s6, $sp, 216
	slli.d	$a0, $a0, 2
	stx.w	$zero, $s6, $a0
	st.w	$fp, $sp, 228
	move	$s5, $s6
.LBB1_58:                               # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i124
                                        #   in Loop: Header=BB1_5 Depth=2
	ld.d	$a0, $sp, 104
	.p2align	4, , 16
.LBB1_59:                               #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a1, $a0, 0
	addi.d	$a0, $a0, 4
	addi.d	$a2, $s5, 4
	st.w	$a1, $s5, 0
	move	$s5, $a2
	bnez	$a1, .LBB1_59
# %bb.60:                               #   in Loop: Header=BB1_5 Depth=2
	ld.w	$a0, $sp, 112
	st.w	$a0, $sp, 224
.Ltmp44:                                # EH_LABEL
	addi.d	$a1, $sp, 200
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE3AddERKS1_)
	jirl	$ra, $ra, 0
.Ltmp45:                                # EH_LABEL
.LBB1_61:                               #   in Loop: Header=BB1_5 Depth=2
	ld.d	$a0, $sp, 104
	beqz	$a0, .LBB1_63
# %bb.62:                               #   in Loop: Header=BB1_5 Depth=2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB1_63:                               # %_ZN11CStringBaseIwED2Ev.exit132
                                        #   in Loop: Header=BB1_5 Depth=2
	ld.d	$a0, $sp, 120
	ld.d	$s1, $sp, 72                    # 8-byte Folded Reload
	beqz	$a0, .LBB1_65
# %bb.64:                               #   in Loop: Header=BB1_5 Depth=2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB1_65:                               # %_ZN11CStringBaseIwED2Ev.exit133
                                        #   in Loop: Header=BB1_5 Depth=2
	ld.d	$a0, $sp, 216
	beqz	$a0, .LBB1_67
# %bb.66:                               #   in Loop: Header=BB1_5 Depth=2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB1_67:                               # %_ZN11CStringBaseIwED2Ev.exit.i134
                                        #   in Loop: Header=BB1_5 Depth=2
	ld.d	$a0, $sp, 208
	beqz	$a0, .LBB1_4
# %bb.68:                               #   in Loop: Header=BB1_5 Depth=2
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp47:                                # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp48:                                # EH_LABEL
	b	.LBB1_4
	.p2align	4, , 16
.LBB1_69:                               #   in Loop: Header=BB1_3 Depth=1
	ld.w	$a0, $s1, 84
	addi.w	$a0, $a0, -1
	slt	$a1, $fp, $a0
	masknez	$a0, $a0, $a1
	ld.d	$a2, $s1, 88
	maskeqz	$a1, $fp, $a1
	or	$a0, $a1, $a0
	slli.d	$a0, $a0, 3
	ldx.d	$s3, $a2, $a0
	ld.d	$s4, $s1, 16
	bgeu	$s4, $s3, .LBB1_75
# %bb.70:                               #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a0, $s1, 56
	slli.d	$a1, $fp, 3
	ldx.d	$s5, $a0, $a1
	ld.d	$a0, $s5, 32
	beq	$s4, $a0, .LBB1_73
# %bb.71:                               #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a0, $s5, 8
	ld.d	$a1, $a0, 0
	ld.d	$a4, $a1, 48
	move	$a1, $s4
	move	$a2, $zero
	move	$a3, $zero
	jirl	$ra, $a4, 0
	bnez	$a0, .LBB1_89
# %bb.72:                               #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s4, $a0, 16
	st.d	$s4, $s5, 32
.LBB1_73:                               #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a0, $s5, 8
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	bstrpick.d	$a1, $a1, 31, 0
	ld.d	$a2, $a0, 0
	sub.d	$a3, $s3, $s4
	sltu	$a4, $a1, $a3
	masknez	$a3, $a3, $a4
	ld.d	$a5, $a2, 40
	maskeqz	$a1, $a1, $a4
	or	$a1, $a1, $a3
	addi.w	$a2, $a1, 0
	addi.d	$a3, $sp, 136
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	jirl	$ra, $a5, 0
	beqz	$a0, .LBB1_76
# %bb.74:                               #   in Loop: Header=BB1_3 Depth=1
	ori	$a1, $zero, 1
	b	.LBB1_83
	.p2align	4, , 16
.LBB1_75:                               #   in Loop: Header=BB1_3 Depth=1
	sub.d	$a0, $s4, $s3
	st.d	$a0, $s1, 16
	addi.d	$a0, $fp, 1
	st.w	$a0, $s1, 12
	ori	$a1, $zero, 2
	ori	$a0, $zero, 2
	beq	$a1, $a0, .LBB1_3
	b	.LBB1_86
.LBB1_76:                               #   in Loop: Header=BB1_3 Depth=1
	ld.wu	$a0, $sp, 136
	ld.d	$a1, $s5, 32
	add.d	$a1, $a1, $a0
	st.d	$a1, $s5, 32
	ld.d	$a5, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a2, $a5, 16
	ld.d	$a3, $a5, 24
	ld.d	$a4, $a5, 32
	add.d	$a2, $a2, $a0
	st.d	$a2, $a5, 16
	add.d	$a3, $a3, $a0
	st.d	$a3, $a5, 24
	bgeu	$a4, $a3, .LBB1_84
# %bb.77:                               #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a4, $sp, 72                    # 8-byte Folded Reload
	st.d	$a3, $a4, 32
	ld.d	$a3, $s5, 40
	bltu	$a3, $a2, .LBB1_85
.LBB1_78:                               #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	beqz	$a3, .LBB1_80
.LBB1_79:                               #   in Loop: Header=BB1_3 Depth=1
	ld.w	$a2, $a3, 0
	add.d	$a2, $a2, $a0
	st.w	$a2, $a3, 0
.LBB1_80:                               #   in Loop: Header=BB1_3 Depth=1
	bne	$a1, $s3, .LBB1_82
# %bb.81:                               #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	ld.w	$a1, $a2, 12
	addi.d	$a1, $a1, 1
	st.w	$a1, $a2, 12
	st.d	$zero, $a2, 16
.LBB1_82:                               #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	sub.w	$a1, $a1, $a0
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	sltui	$a0, $a0, 1
	xor	$a1, $s3, $s4
	sltu	$a1, $zero, $a1
	and	$a0, $a1, $a0
	masknez	$a1, $s0, $a0
	ori	$a2, $zero, 1
	maskeqz	$a2, $a2, $a0
	or	$a1, $a2, $a1
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	masknez	$a2, $a2, $a0
	ld.d	$a3, $sp, 8                     # 8-byte Folded Reload
	maskeqz	$a0, $a3, $a0
	or	$a0, $a0, $a2
.LBB1_83:                               #   in Loop: Header=BB1_3 Depth=1
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ld.d	$s1, $sp, 72                    # 8-byte Folded Reload
	ori	$a0, $zero, 2
	beq	$a1, $a0, .LBB1_3
	b	.LBB1_86
.LBB1_84:                               #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a3, $s5, 40
	bgeu	$a3, $a2, .LBB1_78
.LBB1_85:                               #   in Loop: Header=BB1_3 Depth=1
	st.d	$a2, $s5, 40
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	bnez	$a3, .LBB1_79
	b	.LBB1_80
.LBB1_86:
	ori	$a0, $zero, 3
	bne	$a1, $a0, .LBB1_88
.LBB1_87:
	st.d	$zero, $sp, 48                  # 8-byte Folded Spill
.LBB1_88:                               # %.thread
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	ld.d	$s8, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 320                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 328                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 336
	ret
.LBB1_89:
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	b	.LBB1_88
.LBB1_90:
.Ltmp39:                                # EH_LABEL
	move	$fp, $a0
	ori	$a1, $zero, 16
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB1_100
.LBB1_91:
.Ltmp20:                                # EH_LABEL
	move	$fp, $a0
	b	.LBB1_108
.LBB1_92:
.Ltmp49:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_93:
.Ltmp28:                                # EH_LABEL
	move	$fp, $a0
	ori	$a1, $zero, 1112
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB1_100
.LBB1_94:
.Ltmp23:                                # EH_LABEL
	ld.d	$a1, $sp, 104
	move	$fp, $a0
	beqz	$a1, .LBB1_108
# %bb.95:
	move	$a0, $a1
	b	.LBB1_107
.LBB1_96:
.Ltmp2:                                 # EH_LABEL
	b	.LBB1_98
.LBB1_97:
.Ltmp5:                                 # EH_LABEL
.LBB1_98:
	move	$fp, $a0
	addi.d	$a0, $sp, 200
	pcaddu18i	$ra, %call36(_ZN18COutMultiVolStream14CSubStreamInfoD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB1_99:
.Ltmp46:                                # EH_LABEL
	move	$fp, $a0
.LBB1_100:                              # %.body122
	ld.d	$a0, $sp, 104
	bnez	$a0, .LBB1_107
	b	.LBB1_108
.LBB1_101:                              # %_ZN11CStringBaseIwED2Ev.exit100
.Ltmp17:                                # EH_LABEL
	b	.LBB1_103
.LBB1_102:                              # %_ZN11CStringBaseIwED2Ev.exit.i
.Ltmp14:                                # EH_LABEL
.LBB1_103:                              # %_ZN11CStringBaseIwED2Ev.exit101
	move	$fp, $a0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB1_106
.LBB1_104:
.Ltmp8:                                 # EH_LABEL
	move	$fp, $a0
	b	.LBB1_108
.LBB1_105:
.Ltmp11:                                # EH_LABEL
	move	$fp, $a0
.LBB1_106:
	move	$a0, $s4
.LBB1_107:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB1_108:
	ld.d	$a0, $sp, 120
	beqz	$a0, .LBB1_110
# %bb.109:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB1_110:
	addi.d	$a0, $sp, 200
	pcaddu18i	$ra, %call36(_ZN18COutMultiVolStream14CSubStreamInfoD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	_ZN18COutMultiVolStream5WriteEPKvjPj, .Lfunc_end1-_ZN18COutMultiVolStream5WriteEPKvjPj
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
	.uleb128 .Ltmp6-.Lfunc_begin0           # >> Call Site 5 <<
	.uleb128 .Ltmp7-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp7
	.uleb128 .Ltmp8-.Lfunc_begin0           #     jumps to .Ltmp8
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp9-.Lfunc_begin0           # >> Call Site 6 <<
	.uleb128 .Ltmp10-.Ltmp9                 #   Call between .Ltmp9 and .Ltmp10
	.uleb128 .Ltmp11-.Lfunc_begin0          #     jumps to .Ltmp11
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp12-.Lfunc_begin0          # >> Call Site 7 <<
	.uleb128 .Ltmp13-.Ltmp12                #   Call between .Ltmp12 and .Ltmp13
	.uleb128 .Ltmp14-.Lfunc_begin0          #     jumps to .Ltmp14
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp13-.Lfunc_begin0          # >> Call Site 8 <<
	.uleb128 .Ltmp15-.Ltmp13                #   Call between .Ltmp13 and .Ltmp15
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp15-.Lfunc_begin0          # >> Call Site 9 <<
	.uleb128 .Ltmp16-.Ltmp15                #   Call between .Ltmp15 and .Ltmp16
	.uleb128 .Ltmp17-.Lfunc_begin0          #     jumps to .Ltmp17
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp16-.Lfunc_begin0          # >> Call Site 10 <<
	.uleb128 .Ltmp18-.Ltmp16                #   Call between .Ltmp16 and .Ltmp18
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp18-.Lfunc_begin0          # >> Call Site 11 <<
	.uleb128 .Ltmp19-.Ltmp18                #   Call between .Ltmp18 and .Ltmp19
	.uleb128 .Ltmp20-.Lfunc_begin0          #     jumps to .Ltmp20
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp21-.Lfunc_begin0          # >> Call Site 12 <<
	.uleb128 .Ltmp22-.Ltmp21                #   Call between .Ltmp21 and .Ltmp22
	.uleb128 .Ltmp23-.Lfunc_begin0          #     jumps to .Ltmp23
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp24-.Lfunc_begin0          # >> Call Site 13 <<
	.uleb128 .Ltmp25-.Ltmp24                #   Call between .Ltmp24 and .Ltmp25
	.uleb128 .Ltmp46-.Lfunc_begin0          #     jumps to .Ltmp46
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp26-.Lfunc_begin0          # >> Call Site 14 <<
	.uleb128 .Ltmp27-.Ltmp26                #   Call between .Ltmp26 and .Ltmp27
	.uleb128 .Ltmp28-.Lfunc_begin0          #     jumps to .Ltmp28
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp29-.Lfunc_begin0          # >> Call Site 15 <<
	.uleb128 .Ltmp36-.Ltmp29                #   Call between .Ltmp29 and .Ltmp36
	.uleb128 .Ltmp46-.Lfunc_begin0          #     jumps to .Ltmp46
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp36-.Lfunc_begin0          # >> Call Site 16 <<
	.uleb128 .Ltmp37-.Ltmp36                #   Call between .Ltmp36 and .Ltmp37
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp37-.Lfunc_begin0          # >> Call Site 17 <<
	.uleb128 .Ltmp38-.Ltmp37                #   Call between .Ltmp37 and .Ltmp38
	.uleb128 .Ltmp39-.Lfunc_begin0          #     jumps to .Ltmp39
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp40-.Lfunc_begin0          # >> Call Site 18 <<
	.uleb128 .Ltmp43-.Ltmp40                #   Call between .Ltmp40 and .Ltmp43
	.uleb128 .Ltmp46-.Lfunc_begin0          #     jumps to .Ltmp46
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp43-.Lfunc_begin0          # >> Call Site 19 <<
	.uleb128 .Ltmp44-.Ltmp43                #   Call between .Ltmp43 and .Ltmp44
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp44-.Lfunc_begin0          # >> Call Site 20 <<
	.uleb128 .Ltmp45-.Ltmp44                #   Call between .Ltmp44 and .Ltmp45
	.uleb128 .Ltmp46-.Lfunc_begin0          #     jumps to .Ltmp46
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp45-.Lfunc_begin0          # >> Call Site 21 <<
	.uleb128 .Ltmp47-.Ltmp45                #   Call between .Ltmp45 and .Ltmp47
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp47-.Lfunc_begin0          # >> Call Site 22 <<
	.uleb128 .Ltmp48-.Ltmp47                #   Call between .Ltmp47 and .Ltmp48
	.uleb128 .Ltmp49-.Lfunc_begin0          #     jumps to .Ltmp49
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp48-.Lfunc_begin0          # >> Call Site 23 <<
	.uleb128 .Lfunc_end1-.Ltmp48            #   Call between .Ltmp48 and .Lfunc_end1
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
	.section	.text._ZN11CStringBaseIwEaSERKS0_,"axG",@progbits,_ZN11CStringBaseIwEaSERKS0_,comdat
	.weak	_ZN11CStringBaseIwEaSERKS0_     # -- Begin function _ZN11CStringBaseIwEaSERKS0_
	.p2align	5
	.type	_ZN11CStringBaseIwEaSERKS0_,@function
_ZN11CStringBaseIwEaSERKS0_:            # @_ZN11CStringBaseIwEaSERKS0_
	.cfi_startproc
# %bb.0:
	beq	$a1, $a0, .LBB2_10
# %bb.1:
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
	st.w	$zero, $a0, 8
	ld.d	$s0, $a0, 0
	ld.w	$a2, $a1, 8
	ld.w	$s4, $a0, 12
	addi.w	$s1, $a2, 1
	st.w	$zero, $s0, 0
	bne	$s1, $s4, .LBB2_3
# %bb.2:
	move	$fp, $s0
	b	.LBB2_7
.LBB2_3:
	move	$s2, $a1
	move	$s3, $a0
	slti	$a0, $a2, -1
	slli.d	$a1, $s1, 2
	masknez	$a1, $a1, $a0
	addi.w	$a2, $zero, -1
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	blez	$s4, .LBB2_5
# %bb.4:                                # %._crit_edge.thread.i
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	ld.w	$a1, $s3, 8
	b	.LBB2_6
.LBB2_5:
	move	$a1, $zero
	move	$a0, $s3
.LBB2_6:
	st.d	$fp, $a0, 0
	slli.d	$a1, $a1, 2
	stx.w	$zero, $fp, $a1
	st.w	$s1, $a0, 12
	move	$a1, $s2
.LBB2_7:                                # %_ZN11CStringBaseIwE11SetCapacityEi.exit
	ld.d	$a2, $a1, 0
	.p2align	4, , 16
.LBB2_8:                                # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a2, 0
	addi.d	$a2, $a2, 4
	addi.d	$a4, $fp, 4
	st.w	$a3, $fp, 0
	move	$fp, $a4
	bnez	$a3, .LBB2_8
# %bb.9:                                # %_Z12MyStringCopyIwEPT_S1_PKS0_.exit
	ld.w	$a1, $a1, 8
	st.w	$a1, $a0, 8
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
.LBB2_10:
	ret
.Lfunc_end2:
	.size	_ZN11CStringBaseIwEaSERKS0_, .Lfunc_end2-_ZN11CStringBaseIwEaSERKS0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN14COutFileStreamC2Ev,"axG",@progbits,_ZN14COutFileStreamC2Ev,comdat
	.weak	_ZN14COutFileStreamC2Ev         # -- Begin function _ZN14COutFileStreamC2Ev
	.p2align	5
	.type	_ZN14COutFileStreamC2Ev,@function
_ZN14COutFileStreamC2Ev:                # @_ZN14COutFileStreamC2Ev
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
	st.w	$zero, $a0, 8
	pcalau12i	$a0, %got_pc_hi20(_ZTV14COutFileStream)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTV14COutFileStream)
	addi.d	$a0, $a0, 16
	st.d	$a0, $fp, 0
	pcalau12i	$a0, %got_pc_hi20(_ZTVN8NWindows5NFile3NIO9CFileBaseE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTVN8NWindows5NFile3NIO9CFileBaseE)
	addi.d	$a0, $a0, 16
	st.d	$a0, $fp, 16
	addi.w	$a0, $zero, -1
	lu32i.d	$a0, 0
	st.w	$a0, $fp, 24
	vrepli.b	$vr0, 0
	vst	$vr0, $fp, 32
	ori	$a0, $zero, 4
	ori	$s0, $zero, 4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 32
	st.b	$zero, $a0, 0
	st.w	$s0, $fp, 44
	pcalau12i	$a0, %pc_hi20(_ZTVN8NWindows5NFile3NIO8COutFileE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTVN8NWindows5NFile3NIO8COutFileE+16)
	st.d	$a0, $fp, 16
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end3:
	.size	_ZN14COutFileStreamC2Ev, .Lfunc_end3-_ZN14COutFileStreamC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE3AddERKS1_,"axG",@progbits,_ZN13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE3AddERKS1_,comdat
	.weak	_ZN13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE3AddERKS1_ # -- Begin function _ZN13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE3AddERKS1_
	.p2align	5
	.type	_ZN13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE3AddERKS1_,@function
_ZN13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE3AddERKS1_: # @_ZN13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE3AddERKS1_
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception1
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
	move	$s1, $a1
	move	$s0, $a0
	ori	$a0, $zero, 48
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 8
	vld	$vr0, $s1, 0
	move	$fp, $a0
	vst	$vr0, $a0, 0
	beqz	$a1, .LBB4_2
# %bb.1:
	ld.d	$a0, $a1, 0
	ld.d	$a2, $a0, 8
.Ltmp50:                                # EH_LABEL
	move	$a0, $a1
	jirl	$ra, $a2, 0
.Ltmp51:                                # EH_LABEL
.LBB4_2:                                # %_ZN9CMyComPtrI10IOutStreamEC2ERKS1_.exit.i
	ld.w	$s2, $s1, 24
	vrepli.b	$vr0, 0
	bstrpick.d	$a0, $s2, 31, 0
	addi.d	$s3, $a0, 1
	slli.d	$a0, $s3, 31
	vst	$vr0, $fp, 16
	bgez	$a0, .LBB4_4
# %bb.3:
	move	$a0, $zero
	b	.LBB4_6
.LBB4_4:
	addi.w	$a0, $s3, 0
	slti	$a1, $s2, -1
	slli.d	$a0, $a0, 2
	addi.w	$a2, $zero, -1
	maskeqz	$a2, $a2, $a1
	masknez	$a0, $a0, $a1
	or	$a0, $a2, $a0
.Ltmp53:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp54:                                # EH_LABEL
# %bb.5:                                # %.noexc.i
	st.d	$a0, $fp, 16
	st.w	$zero, $a0, 0
	st.w	$s3, $fp, 28
.LBB4_6:                                # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i
	ld.d	$a1, $s1, 16
	.p2align	4, , 16
.LBB4_7:                                # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $a1, 0
	addi.d	$a1, $a1, 4
	addi.d	$a3, $a0, 4
	st.w	$a2, $a0, 0
	move	$a0, $a3
	bnez	$a2, .LBB4_7
# %bb.8:
	vld	$vr0, $s1, 32
	st.w	$s2, $fp, 24
	vst	$vr0, $fp, 32
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 12
	ld.d	$a1, $s0, 16
	slli.d	$a2, $a0, 3
	stx.d	$fp, $a1, $a2
	addi.d	$a1, $a0, 1
	st.w	$a1, $s0, 12
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB4_9:
.Ltmp55:                                # EH_LABEL
	ld.d	$a1, $fp, 8
	move	$s0, $a0
	beqz	$a1, .LBB4_13
# %bb.10:
	ld.d	$a0, $a1, 0
	ld.d	$a2, $a0, 16
.Ltmp56:                                # EH_LABEL
	move	$a0, $a1
	jirl	$ra, $a2, 0
.Ltmp57:                                # EH_LABEL
	b	.LBB4_13
.LBB4_11:
.Ltmp58:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB4_12:
.Ltmp52:                                # EH_LABEL
	move	$s0, $a0
.LBB4_13:                               # %.body
	ori	$a1, $zero, 48
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end4:
	.size	_ZN13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE3AddERKS1_, .Lfunc_end4-_ZN13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE3AddERKS1_
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE3AddERKS1_,"aG",@progbits,_ZN13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE3AddERKS1_,comdat
	.p2align	2, 0x0
GCC_except_table4:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Lfunc_begin1-.Lfunc_begin1    # >> Call Site 1 <<
	.uleb128 .Ltmp50-.Lfunc_begin1          #   Call between .Lfunc_begin1 and .Ltmp50
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp50-.Lfunc_begin1          # >> Call Site 2 <<
	.uleb128 .Ltmp51-.Ltmp50                #   Call between .Ltmp50 and .Ltmp51
	.uleb128 .Ltmp52-.Lfunc_begin1          #     jumps to .Ltmp52
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp53-.Lfunc_begin1          # >> Call Site 3 <<
	.uleb128 .Ltmp54-.Ltmp53                #   Call between .Ltmp53 and .Ltmp54
	.uleb128 .Ltmp55-.Lfunc_begin1          #     jumps to .Ltmp55
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp54-.Lfunc_begin1          # >> Call Site 4 <<
	.uleb128 .Ltmp56-.Ltmp54                #   Call between .Ltmp54 and .Ltmp56
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp56-.Lfunc_begin1          # >> Call Site 5 <<
	.uleb128 .Ltmp57-.Ltmp56                #   Call between .Ltmp56 and .Ltmp57
	.uleb128 .Ltmp58-.Lfunc_begin1          #     jumps to .Ltmp58
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp57-.Lfunc_begin1          # >> Call Site 6 <<
	.uleb128 .Lfunc_end4-.Ltmp57            #   Call between .Ltmp57 and .Lfunc_end4
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
	.section	.text._ZN18COutMultiVolStream14CSubStreamInfoD2Ev,"axG",@progbits,_ZN18COutMultiVolStream14CSubStreamInfoD2Ev,comdat
	.weak	_ZN18COutMultiVolStream14CSubStreamInfoD2Ev # -- Begin function _ZN18COutMultiVolStream14CSubStreamInfoD2Ev
	.p2align	5
	.type	_ZN18COutMultiVolStream14CSubStreamInfoD2Ev,@function
_ZN18COutMultiVolStream14CSubStreamInfoD2Ev: # @_ZN18COutMultiVolStream14CSubStreamInfoD2Ev
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
	move	$fp, $a0
	ld.d	$a0, $a0, 16
	beqz	$a0, .LBB5_2
# %bb.1:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB5_2:                                # %_ZN11CStringBaseIwED2Ev.exit
	ld.d	$a0, $fp, 8
	beqz	$a0, .LBB5_4
# %bb.3:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp59:                                # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp60:                                # EH_LABEL
.LBB5_4:                                # %_ZN9CMyComPtrI10IOutStreamED2Ev.exit
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB5_5:
.Ltmp61:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end5:
	.size	_ZN18COutMultiVolStream14CSubStreamInfoD2Ev, .Lfunc_end5-_ZN18COutMultiVolStream14CSubStreamInfoD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN18COutMultiVolStream14CSubStreamInfoD2Ev,"aG",@progbits,_ZN18COutMultiVolStream14CSubStreamInfoD2Ev,comdat
	.p2align	2, 0x0
GCC_except_table5:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase2-.Lttbaseref2
.Lttbaseref2:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Lfunc_begin2-.Lfunc_begin2    # >> Call Site 1 <<
	.uleb128 .Ltmp59-.Lfunc_begin2          #   Call between .Lfunc_begin2 and .Ltmp59
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp59-.Lfunc_begin2          # >> Call Site 2 <<
	.uleb128 .Ltmp60-.Ltmp59                #   Call between .Ltmp59 and .Ltmp60
	.uleb128 .Ltmp61-.Lfunc_begin2          #     jumps to .Ltmp61
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp60-.Lfunc_begin2          # >> Call Site 3 <<
	.uleb128 .Lfunc_end5-.Ltmp60            #   Call between .Ltmp60 and .Lfunc_end5
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
	.globl	_ZN18COutMultiVolStream4SeekExjPy # -- Begin function _ZN18COutMultiVolStream4SeekExjPy
	.p2align	5
	.type	_ZN18COutMultiVolStream4SeekExjPy,@function
_ZN18COutMultiVolStream4SeekExjPy:      # @_ZN18COutMultiVolStream4SeekExjPy
# %bb.0:
	ori	$a4, $zero, 2
	bgeu	$a4, $a2, .LBB6_2
# %bb.1:
	lu12i.w	$a0, -524240
	ori	$a0, $a0, 1
	ret
.LBB6_2:
	beq	$a2, $a4, .LBB6_5
# %bb.3:
	ori	$a4, $zero, 1
	bne	$a2, $a4, .LBB6_7
# %bb.4:
	ld.d	$a2, $a0, 24
	b	.LBB6_6
.LBB6_5:
	ld.d	$a2, $a0, 32
.LBB6_6:
	add.d	$a1, $a2, $a1
.LBB6_7:
	st.d	$a1, $a0, 24
	st.d	$a1, $a0, 16
	beqz	$a3, .LBB6_9
# %bb.8:
	st.d	$a1, $a3, 0
.LBB6_9:
	st.w	$zero, $a0, 12
	move	$a0, $zero
	ret
.Lfunc_end6:
	.size	_ZN18COutMultiVolStream4SeekExjPy, .Lfunc_end6-_ZN18COutMultiVolStream4SeekExjPy
                                        # -- End function
	.globl	_ZN18COutMultiVolStream7SetSizeEy # -- Begin function _ZN18COutMultiVolStream7SetSizeEy
	.p2align	5
	.type	_ZN18COutMultiVolStream7SetSizeEy,@function
_ZN18COutMultiVolStream7SetSizeEy:      # @_ZN18COutMultiVolStream7SetSizeEy
	.cfi_startproc
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
	ld.w	$a0, $a0, 52
	move	$s0, $a1
	blez	$a0, .LBB7_4
# %bb.1:                                # %.lr.ph
	ld.d	$a1, $fp, 56
	ori	$s2, $zero, 1
	.p2align	4, , 16
.LBB7_2:                                # =>This Inner Loop Header: Depth=1
	ld.d	$s1, $a1, 0
	ld.d	$a2, $s1, 40
	bltu	$s0, $a2, .LBB7_5
# %bb.3:                                #   in Loop: Header=BB7_2 Depth=1
	sub.d	$s0, $s0, $a2
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, -1
	addi.w	$s2, $s2, 1
	bnez	$a0, .LBB7_2
	b	.LBB7_11
.LBB7_4:
	move	$s2, $zero
	blt	$s2, $a0, .LBB7_7
	b	.LBB7_11
.LBB7_5:
	ld.d	$a0, $s1, 8
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a1, 56
	move	$a1, $s0
	jirl	$ra, $a2, 0
	bnez	$a0, .LBB7_12
# %bb.6:                                # %.thread32
	ld.w	$a0, $fp, 52
	st.d	$s0, $s1, 40
	bge	$s2, $a0, .LBB7_11
.LBB7_7:                                # %.lr.ph49
	addi.d	$s1, $fp, 40
	b	.LBB7_9
	.p2align	4, , 16
.LBB7_8:                                # %_ZN9CMyComPtrI10IOutStreamE7ReleaseEv.exit
                                        #   in Loop: Header=BB7_9 Depth=1
	ld.d	$a0, $s3, 16
	pcaddu18i	$ra, %call36(_ZN8NWindows5NFile10NDirectory16DeleteFileAlwaysEPKw)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector10DeleteBackEv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 52
	bge	$s2, $a0, .LBB7_11
.LBB7_9:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $fp, 56
	alsl.d	$a0, $a0, $a1, 3
	ld.d	$s3, $a0, -8
	ld.d	$a0, $s3, 8
	beqz	$a0, .LBB7_8
# %bb.10:                               #   in Loop: Header=BB7_9 Depth=1
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
	jirl	$ra, $a1, 0
	st.d	$zero, $s3, 8
	b	.LBB7_8
.LBB7_11:                               # %._crit_edge
	ld.d	$a1, $fp, 24
	move	$a0, $zero
	st.d	$a1, $fp, 16
	st.w	$zero, $fp, 12
	st.d	$s0, $fp, 32
.LBB7_12:                               # %.thread
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end7:
	.size	_ZN18COutMultiVolStream7SetSizeEy, .Lfunc_end7-_ZN18COutMultiVolStream7SetSizeEy
	.cfi_endproc
                                        # -- End function
	.globl	_ZN14CUpdateOptions4InitEPK7CCodecsRK13CRecordVectorIiERK11CStringBaseIwE # -- Begin function _ZN14CUpdateOptions4InitEPK7CCodecsRK13CRecordVectorIiERK11CStringBaseIwE
	.p2align	5
	.type	_ZN14CUpdateOptions4InitEPK7CCodecsRK13CRecordVectorIiERK11CStringBaseIwE,@function
_ZN14CUpdateOptions4InitEPK7CCodecsRK13CRecordVectorIiERK11CStringBaseIwE: # @_ZN14CUpdateOptions4InitEPK7CCodecsRK13CRecordVectorIiERK11CStringBaseIwE
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
	ld.w	$a4, $a2, 12
	ori	$a5, $zero, 1
	blt	$a5, $a4, .LBB8_13
# %bb.1:
	move	$s8, $a3
	move	$s0, $a1
	move	$fp, $a0
	beqz	$a4, .LBB8_4
# %bb.2:
	ld.d	$a0, $a2, 16
	ld.w	$a0, $a0, 0
	bltz	$a0, .LBB8_4
# %bb.3:
	st.w	$a0, $fp, 0
	b	.LBB8_9
.LBB8_4:                                # %.thread
	move	$a0, $s0
	move	$a1, $s8
	pcaddu18i	$ra, %call36(_ZNK7CCodecs24FindFormatForArchiveNameERK11CStringBaseIwE)
	jirl	$ra, $ra, 0
	st.w	$a0, $fp, 0
	bgez	$a0, .LBB8_9
# %bb.5:                                # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
	ori	$a0, $zero, 12
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 56
	pcalau12i	$a1, %pc_hi20(.L.str.10)
	addi.d	$a1, $a1, %pc_lo12(.L.str.10)
	ld.d	$a2, $a1, 0
	ld.w	$a1, $a1, 8
	st.d	$a2, $a0, 0
	st.w	$a1, $a0, 8
	ori	$a0, $zero, 2
	lu32i.d	$a0, 3
	st.d	$a0, $sp, 64
.Ltmp62:                                # EH_LABEL
	addi.d	$a1, $sp, 56
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNK7CCodecs24FindFormatForArchiveTypeERK11CStringBaseIwE)
	jirl	$ra, $ra, 0
.Ltmp63:                                # EH_LABEL
# %bb.6:
	ld.d	$a1, $sp, 56
	st.w	$a0, $fp, 0
	beqz	$a1, .LBB8_8
# %bb.7:
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 0
.LBB8_8:
	bltz	$a0, .LBB8_13
.LBB8_9:                                # %.thread84
	ld.d	$a1, $s0, 32
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	ld.bu	$a1, $a0, 0
	beqz	$a1, .LBB8_13
# %bb.10:
	ld.w	$a1, $a0, 52
	beqz	$a1, .LBB8_15
# %bb.11:
	ld.d	$a0, $a0, 56
	ld.d	$s2, $a0, 0
	ld.w	$a2, $s2, 8
	bstrpick.d	$a0, $a2, 31, 0
	addi.d	$a0, $a0, 1
	slli.d	$a1, $a0, 31
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	slti	$s1, $a2, -1
	bgez	$a1, .LBB8_16
# %bb.12:
	move	$s0, $zero
	b	.LBB8_17
.LBB8_13:
	move	$a0, $zero
.LBB8_14:                               # %_ZN11CStringBaseIwED2Ev.exit62
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
.LBB8_15:                               # %.thread118
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$zero, $sp, 48                  # 8-byte Folded Spill
	st.w	$zero, $a0, 0
	ori	$a0, $zero, 4
	ori	$s2, $zero, 1
	b	.LBB8_22
.LBB8_16:
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a0, $a0, 2
	addi.w	$a1, $zero, -1
	maskeqz	$a1, $a1, $s1
	masknez	$a0, $a0, $s1
	or	$a0, $a1, $a0
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.w	$zero, $a0, 0
.LBB8_17:                               # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i
	ld.d	$a0, $s2, 0
	move	$a1, $zero
	.p2align	4, , 16
.LBB8_18:                               # =>This Inner Loop Header: Depth=1
	ldx.w	$a2, $a0, $a1
	stx.w	$a2, $s0, $a1
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB8_18
# %bb.19:                               # %_ZNK10CArcInfoEx10GetMainExtEv.exit
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 31, 0
	addi.d	$s2, $a0, 1
	slli.d	$a0, $s2, 31
	bgez	$a0, .LBB8_21
# %bb.20:
	move	$s2, $zero
	move	$s1, $zero
	addi.w	$a0, $zero, -1
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	b	.LBB8_24
.LBB8_21:
	addi.w	$a0, $s2, 0
	slli.d	$a0, $a0, 2
	addi.w	$a1, $zero, -1
	maskeqz	$a1, $a1, $s1
	masknez	$a0, $a0, $s1
	or	$a0, $a1, $a0
.LBB8_22:
.Ltmp65:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp66:                                # EH_LABEL
# %bb.23:                               # %.noexc
	move	$s1, $a0
	st.w	$zero, $a0, 0
.LBB8_24:                               # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i35
	move	$a0, $zero
	.p2align	4, , 16
.LBB8_25:                               # =>This Inner Loop Header: Depth=1
	ldx.w	$a1, $s0, $a0
	stx.w	$a1, $s1, $a0
	addi.d	$a0, $a0, 4
	bnez	$a1, .LBB8_25
# %bb.26:
	ld.bu	$a0, $fp, 200
	addi.w	$a1, $s2, 0
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	beqz	$a0, .LBB8_29
# %bb.27:
	ori	$a0, $zero, 1
	st.w	$zero, $s1, 0
	bne	$a1, $a0, .LBB8_30
# %bb.28:
	move	$s3, $s1
	b	.LBB8_34
.LBB8_29:
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	b	.LBB8_35
.LBB8_30:
.Ltmp68:                                # EH_LABEL
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp69:                                # EH_LABEL
# %bb.31:                               # %.noexc44
	move	$s3, $a0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	blez	$a0, .LBB8_33
# %bb.32:                               # %._crit_edge.thread.i.i
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB8_33:
	st.w	$zero, $s3, 0
	move	$s1, $s3
.LBB8_34:                               # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i40
	move	$a2, $zero
	st.w	$zero, $s3, 0
.LBB8_35:
	ld.d	$s3, $fp, 128
	st.w	$zero, $fp, 136
	ld.w	$s5, $fp, 140
	st.w	$zero, $s3, 0
	addi.w	$s2, $a2, 1
	slti	$a3, $a2, -1
	slli.d	$a0, $s2, 2
	st.d	$a3, $sp, 16                    # 8-byte Folded Spill
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	bne	$s2, $s5, .LBB8_37
# %bb.36:
	move	$s4, $s3
	b	.LBB8_42
.LBB8_37:
	move	$s6, $a2
	masknez	$a0, $a0, $a3
	addi.w	$a1, $zero, -1
	maskeqz	$a1, $a1, $a3
	or	$a0, $a1, $a0
.Ltmp70:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp71:                                # EH_LABEL
# %bb.38:                               # %.noexc51
	move	$s4, $a0
	blez	$s5, .LBB8_40
# %bb.39:                               # %._crit_edge.thread.i.i49
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 136
	b	.LBB8_41
.LBB8_40:
	move	$a0, $zero
.LBB8_41:
	st.d	$s4, $fp, 128
	slli.d	$a0, $a0, 2
	stx.w	$zero, $s4, $a0
	st.w	$s2, $fp, 140
	move	$a2, $s6
.LBB8_42:                               # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i45.preheader
	move	$a0, $zero
	addi.d	$s3, $fp, 80
	.p2align	4, , 16
.LBB8_43:                               # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i45
                                        # =>This Inner Loop Header: Depth=1
	ldx.w	$a1, $s1, $a0
	stx.w	$a1, $s4, $a0
	addi.d	$a0, $a0, 4
	bnez	$a1, .LBB8_43
# %bb.44:                               # %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i
	ld.d	$s5, $fp, 144
	ld.w	$s7, $fp, 156
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	st.w	$a2, $fp, 136
	st.w	$zero, $fp, 152
	st.w	$zero, $s5, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	slti	$s6, $a0, -1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	bne	$a0, $s7, .LBB8_46
# %bb.45:
	move	$s4, $s5
	b	.LBB8_51
.LBB8_46:
	slli.d	$a0, $a0, 2
	addi.w	$a1, $zero, -1
	maskeqz	$a1, $a1, $s6
	masknez	$a0, $a0, $s6
	or	$a0, $a1, $a0
.Ltmp72:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp73:                                # EH_LABEL
# %bb.47:                               # %.noexc59
	move	$s4, $a0
	blez	$s7, .LBB8_49
# %bb.48:                               # %._crit_edge.thread.i.i57
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 152
	b	.LBB8_50
.LBB8_49:
	move	$a0, $zero
.LBB8_50:
	st.d	$s4, $fp, 144
	slli.d	$a0, $a0, 2
	stx.w	$zero, $s4, $a0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	st.w	$a0, $fp, 156
.LBB8_51:                               # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i52.preheader
	move	$a0, $zero
	.p2align	4, , 16
.LBB8_52:                               # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i52
                                        # =>This Inner Loop Header: Depth=1
	ldx.w	$a1, $s0, $a0
	stx.w	$a1, $s4, $a0
	addi.d	$a0, $a0, 4
	bnez	$a1, .LBB8_52
# %bb.53:                               # %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i56
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	st.w	$a0, $fp, 152
.Ltmp74:                                # EH_LABEL
	move	$a0, $s3
	move	$a1, $s8
	pcaddu18i	$ra, %call36(_ZN12CArchivePath13ParseFromPathERK11CStringBaseIwE)
	jirl	$ra, $ra, 0
.Ltmp75:                                # EH_LABEL
# %bb.54:                               # %.preheader
	ld.w	$a0, $fp, 52
	blez	$a0, .LBB8_74
# %bb.55:                               # %.lr.ph
	move	$s3, $zero
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	masknez	$a0, $a0, $a2
	addi.w	$a1, $zero, -1
	maskeqz	$a2, $a1, $a2
	or	$a0, $a2, $a0
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	slli.d	$a0, $a0, 2
	maskeqz	$a1, $a1, $s6
	masknez	$a0, $a0, $s6
	or	$a0, $a1, $a0
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	.p2align	4, , 16
.LBB8_56:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_63 Depth 2
                                        #     Child Loop BB8_71 Depth 2
	ld.d	$a0, $fp, 56
	slli.d	$a1, $s3, 3
	ldx.d	$s4, $a0, $a1
	ld.d	$s6, $s4, 64
	ld.w	$s7, $s4, 76
	st.w	$zero, $s4, 72
	st.w	$zero, $s6, 0
	beq	$s2, $s7, .LBB8_62
# %bb.57:                               #   in Loop: Header=BB8_56 Depth=1
.Ltmp77:                                # EH_LABEL
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp78:                                # EH_LABEL
# %bb.58:                               # %.noexc70
                                        #   in Loop: Header=BB8_56 Depth=1
	move	$s5, $a0
	blez	$s7, .LBB8_60
# %bb.59:                               # %._crit_edge.thread.i.i68
                                        #   in Loop: Header=BB8_56 Depth=1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 72
	b	.LBB8_61
.LBB8_60:                               #   in Loop: Header=BB8_56 Depth=1
	move	$a0, $zero
.LBB8_61:                               #   in Loop: Header=BB8_56 Depth=1
	st.d	$s5, $s4, 64
	slli.d	$a0, $a0, 2
	stx.w	$zero, $s5, $a0
	st.w	$s2, $s4, 76
	move	$s6, $s5
.LBB8_62:                               # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i63.preheader
                                        #   in Loop: Header=BB8_56 Depth=1
	addi.d	$s5, $s4, 16
	move	$a0, $s1
	.p2align	4, , 16
.LBB8_63:                               # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i63
                                        #   Parent Loop BB8_56 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a1, $a0, 0
	addi.d	$a0, $a0, 4
	addi.d	$a2, $s6, 4
	st.w	$a1, $s6, 0
	move	$s6, $a2
	bnez	$a1, .LBB8_63
# %bb.64:                               # %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i67
                                        #   in Loop: Header=BB8_56 Depth=1
	ld.d	$s6, $s4, 80
	ld.w	$s8, $s4, 92
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	st.w	$a0, $s4, 72
	st.w	$zero, $s4, 88
	st.w	$zero, $s6, 0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	beq	$a0, $s8, .LBB8_70
# %bb.65:                               #   in Loop: Header=BB8_56 Depth=1
.Ltmp79:                                # EH_LABEL
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp80:                                # EH_LABEL
# %bb.66:                               # %.noexc79
                                        #   in Loop: Header=BB8_56 Depth=1
	move	$s7, $a0
	blez	$s8, .LBB8_68
# %bb.67:                               # %._crit_edge.thread.i.i77
                                        #   in Loop: Header=BB8_56 Depth=1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 88
	b	.LBB8_69
.LBB8_68:                               #   in Loop: Header=BB8_56 Depth=1
	move	$a0, $zero
.LBB8_69:                               #   in Loop: Header=BB8_56 Depth=1
	st.d	$s7, $s4, 80
	slli.d	$a0, $a0, 2
	stx.w	$zero, $s7, $a0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	st.w	$a0, $s4, 92
	move	$s6, $s7
.LBB8_70:                               # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i72.preheader
                                        #   in Loop: Header=BB8_56 Depth=1
	move	$a0, $s0
	.p2align	4, , 16
.LBB8_71:                               # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i72
                                        #   Parent Loop BB8_56 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a1, $a0, 0
	addi.d	$a0, $a0, 4
	addi.d	$a2, $s6, 4
	st.w	$a1, $s6, 0
	move	$s6, $a2
	bnez	$a1, .LBB8_71
# %bb.72:                               # %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i76
                                        #   in Loop: Header=BB8_56 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	st.w	$a0, $s4, 88
.Ltmp81:                                # EH_LABEL
	move	$a0, $s5
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZN12CArchivePath13ParseFromPathERK11CStringBaseIwE)
	jirl	$ra, $ra, 0
.Ltmp82:                                # EH_LABEL
# %bb.73:                               #   in Loop: Header=BB8_56 Depth=1
	ld.w	$a0, $fp, 52
	addi.d	$s3, $s3, 1
	blt	$s3, $a0, .LBB8_56
.LBB8_74:                               # %._crit_edge
	beqz	$s1, .LBB8_76
# %bb.75:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB8_76:                               # %_ZN11CStringBaseIwED2Ev.exit61
	ori	$a0, $zero, 1
	beqz	$s0, .LBB8_14
# %bb.77:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	b	.LBB8_14
.LBB8_78:
.Ltmp64:                                # EH_LABEL
	ld.d	$a1, $sp, 56
	move	$fp, $a0
	beqz	$a1, .LBB8_88
# %bb.79:
	move	$a0, $a1
	b	.LBB8_87
.LBB8_80:
.Ltmp67:                                # EH_LABEL
	move	$fp, $a0
	b	.LBB8_85
.LBB8_81:
.Ltmp76:                                # EH_LABEL
	b	.LBB8_83
.LBB8_82:
.Ltmp83:                                # EH_LABEL
.LBB8_83:
	move	$fp, $a0
	beqz	$s1, .LBB8_85
# %bb.84:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB8_85:                               # %_ZN11CStringBaseIwED2Ev.exit81
	beqz	$s0, .LBB8_88
# %bb.86:
	move	$a0, $s0
.LBB8_87:                               # %_ZN11CStringBaseIwED2Ev.exit82
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB8_88:                               # %_ZN11CStringBaseIwED2Ev.exit82
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end8:
	.size	_ZN14CUpdateOptions4InitEPK7CCodecsRK13CRecordVectorIiERK11CStringBaseIwE, .Lfunc_end8-_ZN14CUpdateOptions4InitEPK7CCodecsRK13CRecordVectorIiERK11CStringBaseIwE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table8:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Lfunc_begin3-.Lfunc_begin3    # >> Call Site 1 <<
	.uleb128 .Ltmp62-.Lfunc_begin3          #   Call between .Lfunc_begin3 and .Ltmp62
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp62-.Lfunc_begin3          # >> Call Site 2 <<
	.uleb128 .Ltmp63-.Ltmp62                #   Call between .Ltmp62 and .Ltmp63
	.uleb128 .Ltmp64-.Lfunc_begin3          #     jumps to .Ltmp64
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp63-.Lfunc_begin3          # >> Call Site 3 <<
	.uleb128 .Ltmp65-.Ltmp63                #   Call between .Ltmp63 and .Ltmp65
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp65-.Lfunc_begin3          # >> Call Site 4 <<
	.uleb128 .Ltmp66-.Ltmp65                #   Call between .Ltmp65 and .Ltmp66
	.uleb128 .Ltmp67-.Lfunc_begin3          #     jumps to .Ltmp67
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp68-.Lfunc_begin3          # >> Call Site 5 <<
	.uleb128 .Ltmp69-.Ltmp68                #   Call between .Ltmp68 and .Ltmp69
	.uleb128 .Ltmp76-.Lfunc_begin3          #     jumps to .Ltmp76
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp69-.Lfunc_begin3          # >> Call Site 6 <<
	.uleb128 .Ltmp70-.Ltmp69                #   Call between .Ltmp69 and .Ltmp70
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp70-.Lfunc_begin3          # >> Call Site 7 <<
	.uleb128 .Ltmp71-.Ltmp70                #   Call between .Ltmp70 and .Ltmp71
	.uleb128 .Ltmp76-.Lfunc_begin3          #     jumps to .Ltmp76
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp71-.Lfunc_begin3          # >> Call Site 8 <<
	.uleb128 .Ltmp72-.Ltmp71                #   Call between .Ltmp71 and .Ltmp72
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp72-.Lfunc_begin3          # >> Call Site 9 <<
	.uleb128 .Ltmp73-.Ltmp72                #   Call between .Ltmp72 and .Ltmp73
	.uleb128 .Ltmp76-.Lfunc_begin3          #     jumps to .Ltmp76
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp73-.Lfunc_begin3          # >> Call Site 10 <<
	.uleb128 .Ltmp74-.Ltmp73                #   Call between .Ltmp73 and .Ltmp74
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp74-.Lfunc_begin3          # >> Call Site 11 <<
	.uleb128 .Ltmp75-.Ltmp74                #   Call between .Ltmp74 and .Ltmp75
	.uleb128 .Ltmp76-.Lfunc_begin3          #     jumps to .Ltmp76
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp77-.Lfunc_begin3          # >> Call Site 12 <<
	.uleb128 .Ltmp78-.Ltmp77                #   Call between .Ltmp77 and .Ltmp78
	.uleb128 .Ltmp83-.Lfunc_begin3          #     jumps to .Ltmp83
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp78-.Lfunc_begin3          # >> Call Site 13 <<
	.uleb128 .Ltmp79-.Ltmp78                #   Call between .Ltmp78 and .Ltmp79
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp79-.Lfunc_begin3          # >> Call Site 14 <<
	.uleb128 .Ltmp80-.Ltmp79                #   Call between .Ltmp79 and .Ltmp80
	.uleb128 .Ltmp83-.Lfunc_begin3          #     jumps to .Ltmp83
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp80-.Lfunc_begin3          # >> Call Site 15 <<
	.uleb128 .Ltmp81-.Ltmp80                #   Call between .Ltmp80 and .Ltmp81
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp81-.Lfunc_begin3          # >> Call Site 16 <<
	.uleb128 .Ltmp82-.Ltmp81                #   Call between .Ltmp81 and .Ltmp82
	.uleb128 .Ltmp83-.Lfunc_begin3          #     jumps to .Ltmp83
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp82-.Lfunc_begin3          # >> Call Site 17 <<
	.uleb128 .Lfunc_end8-.Ltmp82            #   Call between .Ltmp82 and .Lfunc_end8
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN11CStringBaseIwEaSEPKw,"axG",@progbits,_ZN11CStringBaseIwEaSEPKw,comdat
	.weak	_ZN11CStringBaseIwEaSEPKw       # -- Begin function _ZN11CStringBaseIwEaSEPKw
	.p2align	5
	.type	_ZN11CStringBaseIwEaSEPKw,@function
_ZN11CStringBaseIwEaSEPKw:              # @_ZN11CStringBaseIwEaSEPKw
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
	ld.d	$s3, $a0, 0
	move	$s0, $a1
	st.w	$zero, $a0, 8
	st.w	$zero, $s3, 0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(wcslen)
	jirl	$ra, $ra, 0
	ld.w	$s5, $fp, 12
	move	$s1, $a0
	addi.w	$s4, $a0, 1
	bne	$s4, $s5, .LBB9_2
# %bb.1:
	move	$s2, $s3
	b	.LBB9_6
.LBB9_2:
	addi.w	$a0, $s1, 0
	slti	$a0, $a0, -1
	slli.d	$a1, $s4, 2
	masknez	$a1, $a1, $a0
	addi.w	$a2, $zero, -1
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	blez	$s5, .LBB9_4
# %bb.3:                                # %._crit_edge.thread.i
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 8
	b	.LBB9_5
.LBB9_4:
	move	$a0, $zero
.LBB9_5:
	st.d	$s2, $fp, 0
	slli.d	$a0, $a0, 2
	stx.w	$zero, $s2, $a0
	st.w	$s4, $fp, 12
	.p2align	4, , 16
.LBB9_6:                                # %_ZN11CStringBaseIwE11SetCapacityEi.exit
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s0, 0
	addi.d	$s0, $s0, 4
	addi.d	$a1, $s2, 4
	st.w	$a0, $s2, 0
	move	$s2, $a1
	bnez	$a0, .LBB9_6
# %bb.7:                                # %_Z12MyStringCopyIwEPT_S1_PKS0_.exit
	st.w	$s1, $fp, 8
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
	ret
.Lfunc_end9:
	.size	_ZN11CStringBaseIwEaSEPKw, .Lfunc_end9-_ZN11CStringBaseIwEaSEPKw
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN12CArchivePath13ParseFromPathERK11CStringBaseIwE,"axG",@progbits,_ZN12CArchivePath13ParseFromPathERK11CStringBaseIwE,comdat
	.weak	_ZN12CArchivePath13ParseFromPathERK11CStringBaseIwE # -- Begin function _ZN12CArchivePath13ParseFromPathERK11CStringBaseIwE
	.p2align	5
	.type	_ZN12CArchivePath13ParseFromPathERK11CStringBaseIwE,@function
_ZN12CArchivePath13ParseFromPathERK11CStringBaseIwE: # @_ZN12CArchivePath13ParseFromPathERK11CStringBaseIwE
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
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	move	$s1, $a1
	move	$fp, $a0
	beq	$a1, $a0, .LBB10_10
# %bb.1:
	ld.d	$s2, $fp, 0
	st.w	$zero, $fp, 8
	st.w	$zero, $s2, 0
	ld.w	$a0, $s1, 8
	ld.w	$s4, $fp, 12
	addi.w	$s3, $a0, 1
	bne	$s3, $s4, .LBB10_3
# %bb.2:
	move	$s0, $s2
	b	.LBB10_7
.LBB10_3:
	slti	$a0, $a0, -1
	slli.d	$a1, $s3, 2
	masknez	$a1, $a1, $a0
	addi.w	$a2, $zero, -1
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	blez	$s4, .LBB10_5
# %bb.4:                                # %._crit_edge.thread.i.i
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 8
	b	.LBB10_6
.LBB10_5:
	move	$a0, $zero
.LBB10_6:
	st.d	$s0, $fp, 0
	slli.d	$a0, $a0, 2
	stx.w	$zero, $s0, $a0
	st.w	$s3, $fp, 12
.LBB10_7:                               # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
	ld.d	$a0, $s1, 0
	.p2align	4, , 16
.LBB10_8:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $a0, 0
	addi.d	$a0, $a0, 4
	addi.d	$a2, $s0, 4
	st.w	$a1, $s0, 0
	move	$s0, $a2
	bnez	$a1, .LBB10_8
# %bb.9:                                # %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i
	ld.w	$a0, $s1, 8
	st.w	$a0, $fp, 8
.LBB10_10:                              # %_ZN11CStringBaseIwEaSERKS0_.exit
	addi.d	$a1, $fp, 16
	addi.d	$s0, $fp, 32
	move	$a0, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(_Z16SplitPathToPartsRK11CStringBaseIwERS0_S3_)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 40
	beqz	$a0, .LBB10_42
# %bb.11:
	ld.d	$a1, $s0, 0
	slli.d	$a2, $a0, 2
	addi.d	$a2, $a2, -4
	ori	$a3, $zero, 46
	addi.w	$a4, $zero, -4
	.p2align	4, , 16
.LBB10_12:                              # =>This Inner Loop Header: Depth=1
	ldx.w	$a5, $a1, $a2
	beq	$a5, $a3, .LBB10_14
# %bb.13:                               #   in Loop: Header=BB10_12 Depth=1
	addi.d	$a2, $a2, -4
	bne	$a2, $a4, .LBB10_12
	b	.LBB10_42
.LBB10_14:                              # %_ZNK11CStringBaseIwE11ReverseFindEw.exit
	srli.d	$a1, $a2, 2
	addi.w	$s1, $a1, 0
	bltz	$s1, .LBB10_42
# %bb.15:
	addi.w	$a2, $a0, -1
	bne	$a2, $s1, .LBB10_19
# %bb.16:
	addi.d	$a0, $sp, 16
	addi.d	$s2, $sp, 16
	move	$a1, $s0
	move	$a2, $zero
	move	$a3, $s1
	pcaddu18i	$ra, %call36(_ZNK11CStringBaseIwE3MidEii)
	jirl	$ra, $ra, 0
	beq	$s2, $s0, .LBB10_26
# %bb.17:
	ld.d	$s1, $fp, 32
	st.w	$zero, $fp, 40
	st.w	$zero, $s1, 0
	ld.w	$a0, $sp, 24
	ld.w	$s3, $fp, 44
	addi.w	$s2, $a0, 1
	bne	$s2, $s3, .LBB10_27
# %bb.18:
	move	$s0, $s1
	b	.LBB10_36
.LBB10_19:
	addi.w	$s2, $a1, 1
	sub.w	$a3, $a0, $s2
	addi.d	$a0, $sp, 16
	move	$a1, $s0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(_ZNK11CStringBaseIwE3MidEii)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 48
	ld.d	$a1, $sp, 16
.Ltmp84:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Z21MyStringCompareNoCasePKwS0_)
	jirl	$ra, $ra, 0
.Ltmp85:                                # EH_LABEL
# %bb.20:                               # %_ZNK11CStringBaseIwE13CompareNoCaseERKS0_.exit
	move	$s3, $a0
	ld.d	$a0, $sp, 16
	beqz	$a0, .LBB10_22
# %bb.21:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB10_22:                              # %_ZN11CStringBaseIwED2Ev.exit23
	bnez	$s3, .LBB10_41
# %bb.23:
	ld.w	$a0, $fp, 40
	addi.d	$s3, $fp, 48
	sub.w	$a3, $a0, $s2
	addi.d	$a0, $sp, 16
	addi.d	$s4, $sp, 16
	move	$a1, $s0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(_ZNK11CStringBaseIwE3MidEii)
	jirl	$ra, $ra, 0
	beq	$s4, $s3, .LBB10_30
# %bb.24:
	ld.d	$s3, $fp, 48
	st.w	$zero, $fp, 56
	st.w	$zero, $s3, 0
	ld.w	$a0, $sp, 24
	ld.w	$s5, $fp, 60
	addi.w	$s4, $a0, 1
	bne	$s4, $s5, .LBB10_31
# %bb.25:
	move	$s2, $s3
	b	.LBB10_45
.LBB10_26:                              # %._ZN11CStringBaseIwEaSERKS0_.exit20_crit_edge
	ld.d	$a0, $sp, 16
	b	.LBB10_39
.LBB10_27:
	slti	$a0, $a0, -1
	slli.d	$a1, $s2, 2
	masknez	$a1, $a1, $a0
	addi.w	$a2, $zero, -1
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
.Ltmp93:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp94:                                # EH_LABEL
# %bb.28:                               # %.noexc
	move	$s0, $a0
	blez	$s3, .LBB10_34
# %bb.29:                               # %._crit_edge.thread.i.i18
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 40
	b	.LBB10_35
.LBB10_30:                              # %._ZN11CStringBaseIwEaSERKS0_.exit32_crit_edge
	ld.d	$a0, $sp, 16
	b	.LBB10_48
.LBB10_31:
	slti	$a0, $a0, -1
	slli.d	$a1, $s4, 2
	masknez	$a1, $a1, $a0
	addi.w	$a2, $zero, -1
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
.Ltmp87:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp88:                                # EH_LABEL
# %bb.32:                               # %.noexc31
	move	$s2, $a0
	blez	$s5, .LBB10_43
# %bb.33:                               # %._crit_edge.thread.i.i29
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 56
	b	.LBB10_44
.LBB10_34:
	move	$a0, $zero
.LBB10_35:
	st.d	$s0, $fp, 32
	slli.d	$a0, $a0, 2
	stx.w	$zero, $s0, $a0
	st.w	$s2, $fp, 44
.LBB10_36:                              # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i13
	ld.d	$a0, $sp, 16
	move	$a1, $zero
	.p2align	4, , 16
.LBB10_37:                              # =>This Inner Loop Header: Depth=1
	ldx.w	$a2, $a0, $a1
	stx.w	$a2, $s0, $a1
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB10_37
# %bb.38:                               # %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i17
	ld.w	$a1, $sp, 24
	st.w	$a1, $fp, 40
.LBB10_39:                              # %_ZN11CStringBaseIwEaSERKS0_.exit20
	beqz	$a0, .LBB10_41
# %bb.40:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB10_41:
	ld.d	$a0, $fp, 48
	st.w	$zero, $fp, 56
	st.w	$zero, $a0, 0
.LBB10_42:                              # %_ZNK11CStringBaseIwE11ReverseFindEw.exit.thread
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
.LBB10_43:
	move	$a0, $zero
.LBB10_44:
	st.d	$s2, $fp, 48
	slli.d	$a0, $a0, 2
	stx.w	$zero, $s2, $a0
	st.w	$s4, $fp, 60
.LBB10_45:                              # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i24
	ld.d	$a0, $sp, 16
	move	$a1, $zero
	.p2align	4, , 16
.LBB10_46:                              # =>This Inner Loop Header: Depth=1
	ldx.w	$a2, $a0, $a1
	stx.w	$a2, $s2, $a1
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB10_46
# %bb.47:                               # %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i28
	ld.w	$a1, $sp, 24
	st.w	$a1, $fp, 56
.LBB10_48:                              # %_ZN11CStringBaseIwEaSERKS0_.exit32
	beqz	$a0, .LBB10_50
# %bb.49:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB10_50:                              # %_ZN11CStringBaseIwED2Ev.exit33
	addi.d	$a0, $sp, 16
	addi.d	$s2, $sp, 16
	move	$a1, $s0
	move	$a2, $zero
	move	$a3, $s1
	pcaddu18i	$ra, %call36(_ZNK11CStringBaseIwE3MidEii)
	jirl	$ra, $ra, 0
	beq	$s2, $s0, .LBB10_53
# %bb.51:
	ld.d	$s1, $fp, 32
	st.w	$zero, $fp, 40
	st.w	$zero, $s1, 0
	ld.w	$a0, $sp, 24
	ld.w	$s3, $fp, 44
	addi.w	$s2, $a0, 1
	bne	$s2, $s3, .LBB10_54
# %bb.52:
	move	$s0, $s1
	b	.LBB10_59
.LBB10_53:                              # %_ZN11CStringBaseIwED2Ev.exit33._ZN11CStringBaseIwEaSERKS0_.exit42_crit_edge
	ld.d	$a0, $sp, 16
	b	.LBB10_62
.LBB10_54:
	slti	$a0, $a0, -1
	slli.d	$a1, $s2, 2
	masknez	$a1, $a1, $a0
	addi.w	$a2, $zero, -1
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
.Ltmp90:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp91:                                # EH_LABEL
# %bb.55:                               # %.noexc41
	move	$s0, $a0
	blez	$s3, .LBB10_57
# %bb.56:                               # %._crit_edge.thread.i.i39
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 40
	b	.LBB10_58
.LBB10_57:
	move	$a0, $zero
.LBB10_58:
	st.d	$s0, $fp, 32
	slli.d	$a0, $a0, 2
	stx.w	$zero, $s0, $a0
	st.w	$s2, $fp, 44
.LBB10_59:                              # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i34
	ld.d	$a0, $sp, 16
	move	$a1, $zero
	.p2align	4, , 16
.LBB10_60:                              # =>This Inner Loop Header: Depth=1
	ldx.w	$a2, $a0, $a1
	stx.w	$a2, $s0, $a1
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB10_60
# %bb.61:                               # %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i38
	ld.w	$a1, $sp, 24
	st.w	$a1, $fp, 40
.LBB10_62:                              # %_ZN11CStringBaseIwEaSERKS0_.exit42
	beqz	$a0, .LBB10_42
# %bb.63:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB10_42
.LBB10_64:
.Ltmp92:                                # EH_LABEL
	b	.LBB10_68
.LBB10_65:
.Ltmp89:                                # EH_LABEL
	b	.LBB10_68
.LBB10_66:
.Ltmp95:                                # EH_LABEL
	b	.LBB10_68
.LBB10_67:
.Ltmp86:                                # EH_LABEL
.LBB10_68:
	ld.d	$a1, $sp, 16
	move	$fp, $a0
	beqz	$a1, .LBB10_70
# %bb.69:
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB10_70:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end10:
	.size	_ZN12CArchivePath13ParseFromPathERK11CStringBaseIwE, .Lfunc_end10-_ZN12CArchivePath13ParseFromPathERK11CStringBaseIwE
	.cfi_endproc
	.section	.gcc_except_table._ZN12CArchivePath13ParseFromPathERK11CStringBaseIwE,"aG",@progbits,_ZN12CArchivePath13ParseFromPathERK11CStringBaseIwE,comdat
	.p2align	2, 0x0
GCC_except_table10:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Lfunc_begin4-.Lfunc_begin4    # >> Call Site 1 <<
	.uleb128 .Ltmp84-.Lfunc_begin4          #   Call between .Lfunc_begin4 and .Ltmp84
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp84-.Lfunc_begin4          # >> Call Site 2 <<
	.uleb128 .Ltmp85-.Ltmp84                #   Call between .Ltmp84 and .Ltmp85
	.uleb128 .Ltmp86-.Lfunc_begin4          #     jumps to .Ltmp86
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp85-.Lfunc_begin4          # >> Call Site 3 <<
	.uleb128 .Ltmp93-.Ltmp85                #   Call between .Ltmp85 and .Ltmp93
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp93-.Lfunc_begin4          # >> Call Site 4 <<
	.uleb128 .Ltmp94-.Ltmp93                #   Call between .Ltmp93 and .Ltmp94
	.uleb128 .Ltmp95-.Lfunc_begin4          #     jumps to .Ltmp95
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp94-.Lfunc_begin4          # >> Call Site 5 <<
	.uleb128 .Ltmp87-.Ltmp94                #   Call between .Ltmp94 and .Ltmp87
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp87-.Lfunc_begin4          # >> Call Site 6 <<
	.uleb128 .Ltmp88-.Ltmp87                #   Call between .Ltmp87 and .Ltmp88
	.uleb128 .Ltmp89-.Lfunc_begin4          #     jumps to .Ltmp89
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp88-.Lfunc_begin4          # >> Call Site 7 <<
	.uleb128 .Ltmp90-.Ltmp88                #   Call between .Ltmp88 and .Ltmp90
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp90-.Lfunc_begin4          # >> Call Site 8 <<
	.uleb128 .Ltmp91-.Ltmp90                #   Call between .Ltmp90 and .Ltmp91
	.uleb128 .Ltmp92-.Lfunc_begin4          #     jumps to .Ltmp92
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp91-.Lfunc_begin4          # >> Call Site 9 <<
	.uleb128 .Lfunc_end10-.Ltmp91           #   Call between .Ltmp91 and .Lfunc_end10
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end4:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_Z23EnumerateInArchiveItemsRKN9NWildcard7CCensorERK4CArcR13CObjectVectorI8CArcItemE # -- Begin function _Z23EnumerateInArchiveItemsRKN9NWildcard7CCensorERK4CArcR13CObjectVectorI8CArcItemE
	.p2align	5
	.type	_Z23EnumerateInArchiveItemsRKN9NWildcard7CCensorERK4CArcR13CObjectVectorI8CArcItemE,@function
_Z23EnumerateInArchiveItemsRKN9NWildcard7CCensorERK4CArcR13CObjectVectorI8CArcItemE: # @_Z23EnumerateInArchiveItemsRKN9NWildcard7CCensorERK4CArcR13CObjectVectorI8CArcItemE
.Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception5
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
	move	$fp, $a2
	move	$s0, $a1
	move	$s6, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s0, 0
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 56
	addi.d	$a1, $sp, 132
	move	$a0, $s2
	jirl	$ra, $a2, 0
	move	$s8, $a0
	bnez	$a0, .LBB11_44
# %bb.1:
	ld.w	$a1, $sp, 132
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector7ReserveEi)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 132
	beqz	$a0, .LBB11_43
# %bb.2:                                # %.lr.ph
	st.d	$fp, $sp, 56                    # 8-byte Folded Spill
	move	$s8, $zero
	move	$s3, $zero
	addi.d	$s4, $sp, 96
	addi.d	$s7, $sp, 112
	addi.w	$s5, $zero, -1
	ori	$fp, $zero, 4
	st.d	$s5, $sp, 24                    # 8-byte Folded Spill
	lu32i.d	$s5, 0
	lu12i.w	$a0, -524284
	ori	$a0, $a0, 5
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 32                   # 16-byte Folded Spill
	.p2align	4, , 16
.LBB11_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_39 Depth 2
	st.d	$zero, $sp, 104
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 96
	st.w	$zero, $a0, 0
	st.d	$fp, $sp, 108
	st.w	$s5, $sp, 120
.Ltmp96:                                # EH_LABEL
	move	$a0, $s0
	move	$a1, $s3
	move	$a2, $s4
	pcaddu18i	$ra, %call36(_ZNK4CArc11GetItemPathEjR11CStringBaseIwE)
	jirl	$ra, $ra, 0
.Ltmp97:                                # EH_LABEL
# %bb.4:                                #   in Loop: Header=BB11_3 Depth=1
	bnez	$a0, .LBB11_7
# %bb.5:                                #   in Loop: Header=BB11_3 Depth=1
.Ltmp99:                                # EH_LABEL
	move	$a0, $s2
	move	$a1, $s3
	move	$a2, $s7
	pcaddu18i	$ra, %call36(_Z19IsArchiveItemFolderP10IInArchivejRb)
	jirl	$ra, $ra, 0
.Ltmp100:                               # EH_LABEL
# %bb.6:                                #   in Loop: Header=BB11_3 Depth=1
	beqz	$a0, .LBB11_11
.LBB11_7:                               #   in Loop: Header=BB11_3 Depth=1
	move	$s1, $zero
	move	$s8, $a0
	ld.d	$a0, $sp, 96
	beqz	$a0, .LBB11_9
.LBB11_8:                               #   in Loop: Header=BB11_3 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB11_9:                               # %_ZN8CArcItemD2Ev.exit
                                        #   in Loop: Header=BB11_3 Depth=1
	beqz	$s1, .LBB11_44
# %bb.10:                               #   in Loop: Header=BB11_3 Depth=1
	ld.w	$a0, $sp, 132
	addi.w	$s3, $s3, 1
	bltu	$s3, $a0, .LBB11_3
	b	.LBB11_43
.LBB11_11:                              #   in Loop: Header=BB11_3 Depth=1
	move	$fp, $s7
	ld.b	$a0, $sp, 112
	ori	$a1, $zero, 1
	andn	$a2, $a1, $a0
.Ltmp102:                               # EH_LABEL
	move	$s7, $s6
	move	$a0, $s6
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZNK9NWildcard7CCensor9CheckPathERK11CStringBaseIwEb)
	jirl	$ra, $ra, 0
.Ltmp103:                               # EH_LABEL
# %bb.12:                               #   in Loop: Header=BB11_3 Depth=1
	st.b	$a0, $sp, 115
.Ltmp104:                               # EH_LABEL
	move	$a0, $s0
	move	$a1, $s3
	addi.d	$a2, $sp, 88
	addi.d	$a3, $sp, 114
	pcaddu18i	$ra, %call36(_ZNK4CArc12GetItemMTimeEjR9_FILETIMERb)
	jirl	$ra, $ra, 0
.Ltmp105:                               # EH_LABEL
# %bb.13:                               #   in Loop: Header=BB11_3 Depth=1
	beqz	$a0, .LBB11_15
# %bb.14:                               #   in Loop: Header=BB11_3 Depth=1
	move	$s1, $zero
	move	$s8, $a0
	b	.LBB11_42
.LBB11_15:                              #   in Loop: Header=BB11_3 Depth=1
	st.w	$zero, $sp, 64
	ld.d	$a0, $s2, 0
	ld.d	$a4, $a0, 64
.Ltmp107:                               # EH_LABEL
	ori	$a2, $zero, 7
	addi.d	$a3, $sp, 64
	move	$a0, $s2
	move	$a1, $s3
	jirl	$ra, $a4, 0
.Ltmp108:                               # EH_LABEL
# %bb.16:                               #   in Loop: Header=BB11_3 Depth=1
	move	$s6, $a0
	beqz	$a0, .LBB11_19
# %bb.17:                               # %.critedge
                                        #   in Loop: Header=BB11_3 Depth=1
.Ltmp110:                               # EH_LABEL
	addi.d	$a0, $sp, 64
	pcaddu18i	$ra, %call36(_ZN8NWindows4NCOM12CPropVariant5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp111:                               # EH_LABEL
# %bb.18:                               # %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit84
                                        #   in Loop: Header=BB11_3 Depth=1
	move	$s1, $zero
	move	$s8, $s6
	b	.LBB11_42
.LBB11_19:                              #   in Loop: Header=BB11_3 Depth=1
	ld.hu	$a0, $sp, 64
	sltu	$a1, $zero, $a0
	st.b	$a1, $sp, 113
	beqz	$a0, .LBB11_22
# %bb.20:                               #   in Loop: Header=BB11_3 Depth=1
.Ltmp113:                               # EH_LABEL
	addi.d	$a0, $sp, 64
	pcaddu18i	$ra, %call36(_Z26ConvertPropVariantToUInt64RK14tagPROPVARIANT)
	jirl	$ra, $ra, 0
.Ltmp114:                               # EH_LABEL
# %bb.21:                               #   in Loop: Header=BB11_3 Depth=1
	st.d	$a0, $sp, 80
.LBB11_22:                              #   in Loop: Header=BB11_3 Depth=1
.Ltmp119:                               # EH_LABEL
	addi.d	$a0, $sp, 64
	pcaddu18i	$ra, %call36(_ZN8NWindows4NCOM12CPropVariant5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp120:                               # EH_LABEL
# %bb.23:                               #   in Loop: Header=BB11_3 Depth=1
	st.w	$zero, $sp, 64
	ld.d	$a0, $s2, 0
	ld.d	$a4, $a0, 64
.Ltmp122:                               # EH_LABEL
	ori	$a2, $zero, 40
	addi.d	$a3, $sp, 64
	move	$a0, $s2
	move	$a1, $s3
	jirl	$ra, $a4, 0
.Ltmp123:                               # EH_LABEL
# %bb.24:                               #   in Loop: Header=BB11_3 Depth=1
	beqz	$a0, .LBB11_26
# %bb.25:                               #   in Loop: Header=BB11_3 Depth=1
	move	$s1, $zero
	move	$s8, $a0
	b	.LBB11_30
.LBB11_26:                              #   in Loop: Header=BB11_3 Depth=1
	ld.hu	$a0, $sp, 64
	ori	$a1, $zero, 19
	bne	$a0, $a1, .LBB11_28
# %bb.27:                               #   in Loop: Header=BB11_3 Depth=1
	ld.w	$a0, $sp, 72
	st.w	$a0, $sp, 120
	ori	$a1, $zero, 2
	bltu	$a1, $a0, .LBB11_29
.LBB11_28:                              #   in Loop: Header=BB11_3 Depth=1
	ori	$s1, $zero, 1
	b	.LBB11_30
.LBB11_29:                              #   in Loop: Header=BB11_3 Depth=1
	move	$s1, $zero
	ld.d	$s8, $sp, 16                    # 8-byte Folded Reload
.LBB11_30:                              #   in Loop: Header=BB11_3 Depth=1
.Ltmp128:                               # EH_LABEL
	addi.d	$a0, $sp, 64
	pcaddu18i	$ra, %call36(_ZN8NWindows4NCOM12CPropVariant5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp129:                               # EH_LABEL
# %bb.31:                               # %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit82
                                        #   in Loop: Header=BB11_3 Depth=1
	beqz	$s1, .LBB11_35
# %bb.32:                               #   in Loop: Header=BB11_3 Depth=1
	st.w	$s3, $sp, 116
.Ltmp131:                               # EH_LABEL
	ori	$a0, $zero, 48
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp132:                               # EH_LABEL
# %bb.33:                               # %.noexc
                                        #   in Loop: Header=BB11_3 Depth=1
	move	$s6, $a0
	vld	$vr0, $sp, 80
	ld.w	$a4, $sp, 104
	vst	$vr0, $a0, 0
	bstrpick.d	$a0, $a4, 31, 0
	addi.d	$s1, $a0, 1
	slli.d	$a0, $s1, 31
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vst	$vr0, $s6, 16
	bgez	$a0, .LBB11_36
# %bb.34:                               #   in Loop: Header=BB11_3 Depth=1
	move	$a0, $zero
	b	.LBB11_38
.LBB11_35:                              #   in Loop: Header=BB11_3 Depth=1
	move	$s1, $zero
	b	.LBB11_42
.LBB11_36:                              #   in Loop: Header=BB11_3 Depth=1
	addi.w	$a0, $s1, 0
	st.d	$a4, $sp, 8                     # 8-byte Folded Spill
	slti	$a1, $a4, -1
	slli.d	$a0, $a0, 2
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	maskeqz	$a2, $a2, $a1
	masknez	$a0, $a0, $a1
	or	$a0, $a2, $a0
.Ltmp133:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp134:                               # EH_LABEL
# %bb.37:                               # %.noexc.i
                                        #   in Loop: Header=BB11_3 Depth=1
	st.d	$a0, $s6, 16
	st.w	$zero, $a0, 0
	st.w	$s1, $s6, 28
	ld.d	$a4, $sp, 8                     # 8-byte Folded Reload
.LBB11_38:                              # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i.i
                                        #   in Loop: Header=BB11_3 Depth=1
	ld.d	$a1, $sp, 96
	.p2align	4, , 16
.LBB11_39:                              #   Parent Loop BB11_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a2, $a1, 0
	addi.d	$a1, $a1, 4
	addi.d	$a3, $a0, 4
	st.w	$a2, $a0, 0
	move	$a0, $a3
	bnez	$a2, .LBB11_39
# %bb.40:                               #   in Loop: Header=BB11_3 Depth=1
	ld.d	$a0, $fp, 0
	ld.w	$a1, $fp, 8
	st.w	$a4, $s6, 24
	st.d	$a0, $s6, 32
	st.w	$a1, $s6, 40
.Ltmp136:                               # EH_LABEL
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp137:                               # EH_LABEL
# %bb.41:                               # %_ZN13CObjectVectorI8CArcItemE3AddERKS0_.exit
                                        #   in Loop: Header=BB11_3 Depth=1
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a0, $a3, 12
	ld.d	$a1, $a3, 16
	slli.d	$a2, $a0, 3
	stx.d	$s6, $a1, $a2
	addi.d	$a0, $a0, 1
	st.w	$a0, $a3, 12
	ori	$s1, $zero, 1
.LBB11_42:                              #   in Loop: Header=BB11_3 Depth=1
	move	$s6, $s7
	move	$s7, $fp
	ori	$fp, $zero, 4
	ld.d	$a0, $sp, 96
	bnez	$a0, .LBB11_8
	b	.LBB11_9
.LBB11_43:
	move	$s8, $zero
.LBB11_44:                              # %.loopexit
	addi.w	$a0, $s8, 0
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
.LBB11_45:
.Ltmp135:                               # EH_LABEL
	move	$fp, $a0
	ori	$a1, $zero, 48
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB11_60
.LBB11_46:
.Ltmp115:                               # EH_LABEL
	b	.LBB11_53
.LBB11_47:
.Ltmp130:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB11_48:
.Ltmp124:                               # EH_LABEL
	move	$fp, $a0
.Ltmp125:                               # EH_LABEL
	addi.d	$a0, $sp, 64
	pcaddu18i	$ra, %call36(_ZN8NWindows4NCOM12CPropVariant5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp126:                               # EH_LABEL
	b	.LBB11_60
.LBB11_49:
.Ltmp127:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB11_50:
.Ltmp121:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB11_51:
.Ltmp112:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB11_52:
.Ltmp109:                               # EH_LABEL
.LBB11_53:
	move	$fp, $a0
.Ltmp116:                               # EH_LABEL
	addi.d	$a0, $sp, 64
	pcaddu18i	$ra, %call36(_ZN8NWindows4NCOM12CPropVariant5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp117:                               # EH_LABEL
	b	.LBB11_60
.LBB11_54:
.Ltmp118:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB11_55:
.Ltmp106:                               # EH_LABEL
	b	.LBB11_59
.LBB11_56:
.Ltmp138:                               # EH_LABEL
	b	.LBB11_59
.LBB11_57:
.Ltmp101:                               # EH_LABEL
	b	.LBB11_59
.LBB11_58:
.Ltmp98:                                # EH_LABEL
.LBB11_59:                              # %.body
	move	$fp, $a0
.LBB11_60:                              # %.body
	ld.d	$a0, $sp, 96
	beqz	$a0, .LBB11_62
# %bb.61:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB11_62:                              # %_ZN8CArcItemD2Ev.exit85
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end11:
	.size	_Z23EnumerateInArchiveItemsRKN9NWildcard7CCensorERK4CArcR13CObjectVectorI8CArcItemE, .Lfunc_end11-_Z23EnumerateInArchiveItemsRKN9NWildcard7CCensorERK4CArcR13CObjectVectorI8CArcItemE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table11:
.Lexception5:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase3-.Lttbaseref3
.Lttbaseref3:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end5-.Lcst_begin5
.Lcst_begin5:
	.uleb128 .Lfunc_begin5-.Lfunc_begin5    # >> Call Site 1 <<
	.uleb128 .Ltmp96-.Lfunc_begin5          #   Call between .Lfunc_begin5 and .Ltmp96
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp96-.Lfunc_begin5          # >> Call Site 2 <<
	.uleb128 .Ltmp97-.Ltmp96                #   Call between .Ltmp96 and .Ltmp97
	.uleb128 .Ltmp98-.Lfunc_begin5          #     jumps to .Ltmp98
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp99-.Lfunc_begin5          # >> Call Site 3 <<
	.uleb128 .Ltmp100-.Ltmp99               #   Call between .Ltmp99 and .Ltmp100
	.uleb128 .Ltmp101-.Lfunc_begin5         #     jumps to .Ltmp101
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp100-.Lfunc_begin5         # >> Call Site 4 <<
	.uleb128 .Ltmp102-.Ltmp100              #   Call between .Ltmp100 and .Ltmp102
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp102-.Lfunc_begin5         # >> Call Site 5 <<
	.uleb128 .Ltmp103-.Ltmp102              #   Call between .Ltmp102 and .Ltmp103
	.uleb128 .Ltmp138-.Lfunc_begin5         #     jumps to .Ltmp138
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp104-.Lfunc_begin5         # >> Call Site 6 <<
	.uleb128 .Ltmp105-.Ltmp104              #   Call between .Ltmp104 and .Ltmp105
	.uleb128 .Ltmp106-.Lfunc_begin5         #     jumps to .Ltmp106
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp107-.Lfunc_begin5         # >> Call Site 7 <<
	.uleb128 .Ltmp108-.Ltmp107              #   Call between .Ltmp107 and .Ltmp108
	.uleb128 .Ltmp109-.Lfunc_begin5         #     jumps to .Ltmp109
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp110-.Lfunc_begin5         # >> Call Site 8 <<
	.uleb128 .Ltmp111-.Ltmp110              #   Call between .Ltmp110 and .Ltmp111
	.uleb128 .Ltmp112-.Lfunc_begin5         #     jumps to .Ltmp112
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp113-.Lfunc_begin5         # >> Call Site 9 <<
	.uleb128 .Ltmp114-.Ltmp113              #   Call between .Ltmp113 and .Ltmp114
	.uleb128 .Ltmp115-.Lfunc_begin5         #     jumps to .Ltmp115
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp119-.Lfunc_begin5         # >> Call Site 10 <<
	.uleb128 .Ltmp120-.Ltmp119              #   Call between .Ltmp119 and .Ltmp120
	.uleb128 .Ltmp121-.Lfunc_begin5         #     jumps to .Ltmp121
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp122-.Lfunc_begin5         # >> Call Site 11 <<
	.uleb128 .Ltmp123-.Ltmp122              #   Call between .Ltmp122 and .Ltmp123
	.uleb128 .Ltmp124-.Lfunc_begin5         #     jumps to .Ltmp124
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp128-.Lfunc_begin5         # >> Call Site 12 <<
	.uleb128 .Ltmp129-.Ltmp128              #   Call between .Ltmp128 and .Ltmp129
	.uleb128 .Ltmp130-.Lfunc_begin5         #     jumps to .Ltmp130
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp131-.Lfunc_begin5         # >> Call Site 13 <<
	.uleb128 .Ltmp132-.Ltmp131              #   Call between .Ltmp131 and .Ltmp132
	.uleb128 .Ltmp138-.Lfunc_begin5         #     jumps to .Ltmp138
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp133-.Lfunc_begin5         # >> Call Site 14 <<
	.uleb128 .Ltmp134-.Ltmp133              #   Call between .Ltmp133 and .Ltmp134
	.uleb128 .Ltmp135-.Lfunc_begin5         #     jumps to .Ltmp135
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp136-.Lfunc_begin5         # >> Call Site 15 <<
	.uleb128 .Ltmp137-.Ltmp136              #   Call between .Ltmp136 and .Ltmp137
	.uleb128 .Ltmp138-.Lfunc_begin5         #     jumps to .Ltmp138
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp137-.Lfunc_begin5         # >> Call Site 16 <<
	.uleb128 .Ltmp125-.Ltmp137              #   Call between .Ltmp137 and .Ltmp125
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp125-.Lfunc_begin5         # >> Call Site 17 <<
	.uleb128 .Ltmp126-.Ltmp125              #   Call between .Ltmp125 and .Ltmp126
	.uleb128 .Ltmp127-.Lfunc_begin5         #     jumps to .Ltmp127
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp126-.Lfunc_begin5         # >> Call Site 18 <<
	.uleb128 .Ltmp116-.Ltmp126              #   Call between .Ltmp126 and .Ltmp116
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp116-.Lfunc_begin5         # >> Call Site 19 <<
	.uleb128 .Ltmp117-.Ltmp116              #   Call between .Ltmp116 and .Ltmp117
	.uleb128 .Ltmp118-.Lfunc_begin5         #     jumps to .Ltmp118
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp117-.Lfunc_begin5         # >> Call Site 20 <<
	.uleb128 .Lfunc_end11-.Ltmp117          #   Call between .Ltmp117 and .Lfunc_end11
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
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _Z13UpdateArchiveP7CCodecsRKN9NWildcard7CCensorER14CUpdateOptionsR16CUpdateErrorInfoP15IOpenCallbackUIP18IUpdateCallbackUI2
.LCPI12_0:
	.word	55                              # 0x37
	.word	45                              # 0x2d
	.word	90                              # 0x5a
	.word	105                             # 0x69
.LCPI12_1:
	.word	112                             # 0x70
	.word	32                              # 0x20
	.word	99                              # 0x63
	.word	97                              # 0x61
.LCPI12_2:
	.word	110                             # 0x6e
	.word	110                             # 0x6e
	.word	111                             # 0x6f
	.word	116                             # 0x74
.LCPI12_3:
	.word	32                              # 0x20
	.word	102                             # 0x66
	.word	105                             # 0x69
	.word	110                             # 0x6e
.LCPI12_4:
	.word	100                             # 0x64
	.word	32                              # 0x20
	.word	115                             # 0x73
	.word	112                             # 0x70
.LCPI12_5:
	.word	101                             # 0x65
	.word	99                              # 0x63
	.word	105                             # 0x69
	.word	102                             # 0x66
.LCPI12_6:
	.word	105                             # 0x69
	.word	101                             # 0x65
	.word	100                             # 0x64
	.word	32                              # 0x20
.LCPI12_7:
	.word	83                              # 0x53
	.word	70                              # 0x46
	.word	88                              # 0x58
	.word	32                              # 0x20
.LCPI12_8:
	.word	109                             # 0x6d
	.word	111                             # 0x6f
	.word	100                             # 0x64
	.word	117                             # 0x75
.LCPI12_9:
	.word	102                             # 0x66
	.word	105                             # 0x69
	.word	108                             # 0x6c
	.word	101                             # 0x65
.LCPI12_10:
	.word	32                              # 0x20
	.word	105                             # 0x69
	.word	115                             # 0x73
	.word	32                              # 0x20
.LCPI12_11:
	.word	110                             # 0x6e
	.word	111                             # 0x6f
	.word	116                             # 0x74
	.word	32                              # 0x20
.LCPI12_12:
	.word	115                             # 0x73
	.word	112                             # 0x70
	.word	101                             # 0x65
	.word	99                              # 0x63
.LCPI12_13:
	.word	105                             # 0x69
	.word	102                             # 0x66
	.word	105                             # 0x69
	.word	101                             # 0x65
.LCPI12_14:
	.dword	8                               # 0x8
	.dword	0                               # 0x0
.LCPI12_15:
	.word	84                              # 0x54
	.word	104                             # 0x68
	.word	101                             # 0x65
	.word	32                              # 0x20
.LCPI12_16:
	.word	32                              # 0x20
	.word	97                              # 0x61
	.word	108                             # 0x6c
	.word	114                             # 0x72
.LCPI12_17:
	.word	101                             # 0x65
	.word	97                              # 0x61
	.word	100                             # 0x64
	.word	121                             # 0x79
.LCPI12_18:
	.word	32                              # 0x20
	.word	101                             # 0x65
	.word	120                             # 0x78
	.word	105                             # 0x69
.LCPI12_19:
	.word	115                             # 0x73
	.word	116                             # 0x74
	.word	115                             # 0x73
	.word	0                               # 0x0
.LCPI12_20:
	.word	32                              # 0x20
	.word	111                             # 0x6f
	.word	112                             # 0x70
	.word	101                             # 0x65
.LCPI12_21:
	.word	110                             # 0x6e
	.word	32                              # 0x20
	.word	102                             # 0x66
	.word	105                             # 0x69
.LCPI12_22:
	.word	110                             # 0x6e
	.word	32                              # 0x20
	.word	83                              # 0x53
	.word	70                              # 0x46
.LCPI12_23:
	.word	88                              # 0x58
	.word	32                              # 0x20
	.word	109                             # 0x6d
	.word	111                             # 0x6f
.LCPI12_24:
	.word	100                             # 0x64
	.word	117                             # 0x75
	.word	108                             # 0x6c
	.word	101                             # 0x65
	.text
	.globl	_Z13UpdateArchiveP7CCodecsRKN9NWildcard7CCensorER14CUpdateOptionsR16CUpdateErrorInfoP15IOpenCallbackUIP18IUpdateCallbackUI2
	.p2align	5
	.type	_Z13UpdateArchiveP7CCodecsRKN9NWildcard7CCensorER14CUpdateOptionsR16CUpdateErrorInfoP15IOpenCallbackUIP18IUpdateCallbackUI2,@function
_Z13UpdateArchiveP7CCodecsRKN9NWildcard7CCensorER14CUpdateOptionsR16CUpdateErrorInfoP15IOpenCallbackUIP18IUpdateCallbackUI2: # @_Z13UpdateArchiveP7CCodecsRKN9NWildcard7CCensorER14CUpdateOptionsR16CUpdateErrorInfoP15IOpenCallbackUIP18IUpdateCallbackUI2
.Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception6
# %bb.0:
	addi.d	$sp, $sp, -864
	.cfi_def_cfa_offset 864
	st.d	$ra, $sp, 856                   # 8-byte Folded Spill
	st.d	$fp, $sp, 848                   # 8-byte Folded Spill
	st.d	$s0, $sp, 840                   # 8-byte Folded Spill
	st.d	$s1, $sp, 832                   # 8-byte Folded Spill
	st.d	$s2, $sp, 824                   # 8-byte Folded Spill
	st.d	$s3, $sp, 816                   # 8-byte Folded Spill
	st.d	$s4, $sp, 808                   # 8-byte Folded Spill
	st.d	$s5, $sp, 800                   # 8-byte Folded Spill
	st.d	$s6, $sp, 792                   # 8-byte Folded Spill
	st.d	$s7, $sp, 784                   # 8-byte Folded Spill
	st.d	$s8, $sp, 776                   # 8-byte Folded Spill
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
	move	$s0, $a2
	ld.bu	$a6, $a2, 248
	ld.bu	$a2, $a2, 249
	st.d	$a5, $sp, 336                   # 8-byte Folded Spill
	move	$s6, $a4
	move	$fp, $a3
	move	$s1, $a0
	lu12i.w	$a0, -524284
	ori	$s8, $a0, 5
	beqz	$a6, .LBB12_2
# %bb.1:
	bnez	$a2, .LBB12_419
.LBB12_2:
	st.d	$a1, $sp, 296                   # 8-byte Folded Spill
	ld.w	$a1, $s0, 300
	ld.b	$a0, $s0, 200
	blez	$a1, .LBB12_5
# %bb.3:
	or	$a1, $a2, $a0
	andi	$a1, $a1, 1
	beqz	$a1, .LBB12_5
# %bb.4:
	lu12i.w	$a0, -524284
	ori	$s8, $a0, 1
	b	.LBB12_419
.LBB12_5:
	andi	$a0, $a0, 255
	andi	$a0, $a0, 1
	st.d	$s1, $sp, 184                   # 8-byte Folded Spill
	beqz	$a0, .LBB12_51
# %bb.6:
	st.d	$s8, $sp, 256                   # 8-byte Folded Spill
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	st.d	$a0, $sp, 408
	st.w	$zero, $a0, 0
	ori	$s1, $zero, 4
	st.w	$s1, $sp, 420
	st.d	$zero, $sp, 432
.Ltmp139:                               # EH_LABEL
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp140:                               # EH_LABEL
# %bb.7:                                # %_ZN9CPropertyC2Ev.exit
	move	$s2, $a0
	st.d	$a0, $sp, 424
	st.w	$zero, $a0, 0
	st.w	$s1, $sp, 436
	st.w	$zero, $sp, 416
	st.w	$zero, $s3, 0
.Ltmp142:                               # EH_LABEL
	ori	$a0, $zero, 20
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp143:                               # EH_LABEL
# %bb.8:
	move	$s5, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	st.d	$s5, $sp, 408
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	vld	$vr0, $a0, 0
	ld.w	$a0, $a0, 16
	vst	$vr0, $s5, 0
	st.w	$a0, $s5, 16
	ori	$a0, $zero, 4
	lu32i.d	$a0, 5
	st.d	$a0, $sp, 416
	st.w	$zero, $sp, 432
	st.w	$zero, $s2, 0
.Ltmp144:                               # EH_LABEL
	ori	$a0, $zero, 12
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp145:                               # EH_LABEL
# %bb.9:                                # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i296
	move	$s3, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	st.d	$s3, $sp, 424
	ori	$a0, $zero, 111
	lu32i.d	$a0, 110
	st.d	$a0, $s3, 0
	st.w	$zero, $s3, 8
	ori	$a0, $zero, 2
	lu32i.d	$a0, 3
	st.d	$a0, $sp, 432
	addi.d	$a0, $s0, 8
.Ltmp146:                               # EH_LABEL
	addi.d	$a1, $sp, 408
	pcaddu18i	$ra, %call36(_ZN13CObjectVectorI9CPropertyE3AddERKS0_)
	jirl	$ra, $ra, 0
.Ltmp147:                               # EH_LABEL
# %bb.10:
	ld.w	$s1, $s0, 216
	beqz	$s1, .LBB12_13
# %bb.11:
	bstrpick.d	$a0, $s1, 31, 0
	addi.d	$s4, $a0, 1
	slli.d	$a0, $s4, 31
	bgez	$a0, .LBB12_15
# %bb.12:
	move	$s5, $zero
	b	.LBB12_17
.LBB12_13:
	ld.d	$s2, $fp, 40
	st.w	$zero, $fp, 48
	st.w	$zero, $s2, 0
	ld.w	$s1, $fp, 52
	ori	$a0, $zero, 26
	bne	$s1, $a0, .LBB12_23
# %bb.14:
	move	$s5, $s2
	b	.LBB12_31
.LBB12_15:
	addi.w	$a0, $s4, 0
	slti	$a1, $s1, -1
	slli.d	$a0, $a0, 2
	addi.w	$a2, $zero, -1
	maskeqz	$a2, $a2, $a1
	masknez	$a0, $a0, $a1
	or	$a0, $a2, $a0
.Ltmp148:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp149:                               # EH_LABEL
# %bb.16:                               # %.noexc317
	move	$s5, $a0
	st.w	$zero, $a0, 0
.LBB12_17:                              # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i313
	addi.d	$a3, $s0, 208
	ld.d	$a0, $a3, 0
	move	$a1, $zero
	.p2align	4, , 16
.LBB12_18:                              # =>This Inner Loop Header: Depth=1
	ldx.w	$a2, $a0, $a1
	stx.w	$a2, $s5, $a1
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB12_18
# %bb.19:
.Ltmp151:                               # EH_LABEL
	move	$a0, $zero
	move	$a1, $s5
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZN8NWindows5NFile10NDirectory12MySearchPathEPKwS3_S3_R11CStringBaseIwE)
	jirl	$ra, $ra, 0
.Ltmp152:                               # EH_LABEL
# %bb.20:
	move	$s3, $a0
	bnez	$a0, .LBB12_44
# %bb.21:
	pcaddu18i	$ra, %call36(__errno_location)
	jirl	$ra, $ra, 0
	ld.w	$a0, $a0, 0
	ld.d	$s2, $fp, 40
	st.w	$a0, $fp, 0
	st.w	$zero, $fp, 48
	st.w	$zero, $s2, 0
	ld.w	$s7, $fp, 52
	ori	$a0, $zero, 39
	bne	$s7, $a0, .LBB12_26
# %bb.22:
	move	$s8, $s2
	b	.LBB12_34
.LBB12_23:
.Ltmp158:                               # EH_LABEL
	ori	$a0, $zero, 104
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp159:                               # EH_LABEL
# %bb.24:                               # %.noexc311
	move	$s5, $a0
	blez	$s1, .LBB12_29
# %bb.25:                               # %._crit_edge.thread.i.i309
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 48
	b	.LBB12_30
.LBB12_26:
.Ltmp153:                               # EH_LABEL
	ori	$a0, $zero, 156
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp154:                               # EH_LABEL
# %bb.27:                               # %.noexc325
	move	$s8, $a0
	blez	$s7, .LBB12_32
# %bb.28:                               # %._crit_edge.thread.i.i323
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 48
	b	.LBB12_33
.LBB12_29:
	move	$a0, $zero
.LBB12_30:
	st.d	$s5, $fp, 40
	slli.d	$a0, $a0, 2
	stx.w	$zero, $s5, $a0
	ori	$a0, $zero, 26
	st.w	$a0, $fp, 52
.LBB12_31:                              # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i305
	pcalau12i	$a0, %pc_hi20(.LCPI12_7)
	vld	$vr0, $a0, %pc_lo12(.LCPI12_7)
	move	$s3, $zero
	pcalau12i	$a0, %pc_hi20(.LCPI12_9)
	vld	$vr1, $a0, %pc_lo12(.LCPI12_9)
	vst	$vr0, $s5, 0
	pcalau12i	$a0, %pc_hi20(.LCPI12_10)
	vld	$vr0, $a0, %pc_lo12(.LCPI12_10)
	vst	$vr1, $s5, 16
	pcalau12i	$a0, %pc_hi20(.LCPI12_11)
	vld	$vr1, $a0, %pc_lo12(.LCPI12_11)
	vst	$vr0, $s5, 32
	pcalau12i	$a0, %pc_hi20(.LCPI12_12)
	vld	$vr0, $a0, %pc_lo12(.LCPI12_12)
	vst	$vr1, $s5, 48
	pcalau12i	$a0, %pc_hi20(.LCPI12_13)
	vld	$vr1, $a0, %pc_lo12(.LCPI12_13)
	vst	$vr0, $s5, 64
	ori	$a0, $zero, 100
	st.d	$a0, $s5, 96
	vst	$vr1, $s5, 80
	ori	$a0, $zero, 25
	st.w	$a0, $fp, 48
	b	.LBB12_46
.LBB12_32:
	move	$a0, $zero
.LBB12_33:
	st.d	$s8, $fp, 40
	slli.d	$a0, $a0, 2
	stx.w	$zero, $s8, $a0
	ori	$a0, $zero, 39
	st.w	$a0, $fp, 52
.LBB12_34:                              # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i319
	pcalau12i	$a0, %pc_hi20(.LCPI12_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI12_0)
	vst	$vr0, $s8, 0
	pcalau12i	$a0, %pc_hi20(.LCPI12_1)
	vld	$vr0, $a0, %pc_lo12(.LCPI12_1)
	pcalau12i	$a0, %pc_hi20(.LCPI12_2)
	vld	$vr1, $a0, %pc_lo12(.LCPI12_2)
	pcalau12i	$a0, %pc_hi20(.LCPI12_3)
	vld	$vr2, $a0, %pc_lo12(.LCPI12_3)
	pcalau12i	$a0, %pc_hi20(.LCPI12_4)
	vld	$vr3, $a0, %pc_lo12(.LCPI12_4)
	vst	$vr0, $s8, 16
	vst	$vr1, $s8, 32
	vst	$vr2, $s8, 48
	vst	$vr3, $s8, 64
	pcalau12i	$a0, %pc_hi20(.LCPI12_5)
	vld	$vr0, $a0, %pc_lo12(.LCPI12_5)
	pcalau12i	$a0, %pc_hi20(.LCPI12_6)
	vld	$vr1, $a0, %pc_lo12(.LCPI12_6)
	pcalau12i	$a0, %pc_hi20(.LCPI12_7)
	vld	$vr2, $a0, %pc_lo12(.LCPI12_7)
	pcalau12i	$a0, %pc_hi20(.LCPI12_8)
	vld	$vr3, $a0, %pc_lo12(.LCPI12_8)
	vst	$vr0, $s8, 80
	vst	$vr1, $s8, 96
	vst	$vr2, $s8, 112
	vst	$vr3, $s8, 128
	ori	$a0, $zero, 108
	lu32i.d	$a0, 101
	st.d	$a0, $s8, 144
	st.w	$zero, $s8, 152
	ld.d	$s8, $fp, 8
	ori	$a0, $zero, 38
	st.w	$a0, $fp, 48
	st.w	$zero, $fp, 16
	st.w	$zero, $s8, 0
	ld.w	$s7, $fp, 20
	addi.w	$a0, $s4, 0
	bne	$a0, $s7, .LBB12_36
# %bb.35:
	move	$s2, $s8
	b	.LBB12_41
.LBB12_36:
	slti	$a1, $s1, -1
	slli.d	$a0, $a0, 2
	addi.w	$a2, $zero, -1
	maskeqz	$a2, $a2, $a1
	masknez	$a0, $a0, $a1
	or	$a0, $a2, $a0
.Ltmp155:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp156:                               # EH_LABEL
# %bb.37:                               # %.noexc333
	move	$s2, $a0
	blez	$s7, .LBB12_39
# %bb.38:                               # %._crit_edge.thread.i.i331
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 16
	b	.LBB12_40
.LBB12_39:
	move	$a0, $zero
.LBB12_40:
	st.d	$s2, $fp, 8
	slli.d	$a0, $a0, 2
	stx.w	$zero, $s2, $a0
	st.w	$s4, $fp, 20
.LBB12_41:                              # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i327.preheader
	move	$a0, $s5
	.p2align	4, , 16
.LBB12_42:                              # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i327
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $a0, 0
	addi.d	$a0, $a0, 4
	addi.d	$a2, $s2, 4
	st.w	$a1, $s2, 0
	move	$s2, $a2
	bnez	$a1, .LBB12_42
# %bb.43:                               # %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i
	st.w	$s1, $fp, 16
.LBB12_44:                              # %_ZN11CStringBaseIwEaSERKS0_.exit
	beqz	$s5, .LBB12_46
# %bb.45:
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB12_46:                              # %_ZN11CStringBaseIwED2Ev.exit334
	ld.d	$a0, $sp, 424
	ld.d	$s8, $sp, 256                   # 8-byte Folded Reload
	beqz	$a0, .LBB12_48
# %bb.47:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB12_48:                              # %_ZN11CStringBaseIwED2Ev.exit.i335
	ld.d	$a0, $sp, 408
	beqz	$a0, .LBB12_50
# %bb.49:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB12_50:                              # %_ZN9CPropertyD2Ev.exit
	beqz	$s3, .LBB12_419
.LBB12_51:
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 560
	ori	$a0, $zero, 8
	st.d	$a0, $sp, 576
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI4CArcE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorI4CArcE+16)
	st.d	$a0, $sp, 552
	vst	$vr0, $sp, 304                  # 16-byte Folded Spill
	vst	$vr0, $sp, 592
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI11CStringBaseIwEE+16)
	addi.d	$s4, $a0, %pc_lo12(_ZTV13CObjectVectorI11CStringBaseIwEE+16)
	pcalau12i	$a0, %pc_hi20(.LCPI12_14)
	vld	$vr0, $a0, %pc_lo12(.LCPI12_14)
	st.d	$s4, $sp, 584
	vst	$vr0, $sp, 608
	st.b	$zero, $sp, 624
	addi.d	$s5, $s0, 80
.Ltmp161:                               # EH_LABEL
	addi.d	$a0, $sp, 536
	move	$a1, $s5
	pcaddu18i	$ra, %call36(_ZNK12CArchivePath12GetFinalPathEv)
	jirl	$ra, $ra, 0
.Ltmp162:                               # EH_LABEL
# %bb.52:
	ld.w	$a0, $s0, 88
	beqz	$a0, .LBB12_59
# %bb.53:
	st.d	$zero, $sp, 456
.Ltmp164:                               # EH_LABEL
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp165:                               # EH_LABEL
# %bb.54:
	st.d	$a0, $sp, 448
	ld.d	$a1, $sp, 536
	st.w	$zero, $a0, 0
	ori	$a0, $zero, 4
	st.w	$a0, $sp, 460
.Ltmp167:                               # EH_LABEL
	addi.d	$a0, $sp, 408
	pcaddu18i	$ra, %call36(_ZN8NWindows5NFile5NFind10CFileInfoW4FindEPKw)
	jirl	$ra, $ra, 0
.Ltmp168:                               # EH_LABEL
# %bb.55:
	beqz	$a0, .LBB12_60
# %bb.56:
	ld.bu	$a0, $sp, 440
	andi	$a0, $a0, 16
	bnez	$a0, .LBB12_430
# %bb.57:
	ld.w	$a0, $s0, 300
	blez	$a0, .LBB12_389
# %bb.58:
	move	$s1, $zero
	lu12i.w	$a0, -524284
	ori	$s8, $a0, 1
	ld.d	$a0, $sp, 448
	bnez	$a0, .LBB12_61
	b	.LBB12_62
.LBB12_59:
	lu12i.w	$a0, -524284
	ori	$s8, $a0, 5
	b	.LBB12_63
.LBB12_60:
	ori	$s1, $zero, 1
	lu12i.w	$a0, -524284
	ori	$s8, $a0, 5
	ld.d	$a0, $sp, 448
	beqz	$a0, .LBB12_62
.LBB12_61:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB12_62:                              # %_ZN8NWindows5NFile5NFind10CFileInfoWD2Ev.exit
	beqz	$s1, .LBB12_416
.LBB12_63:
	vld	$vr0, $sp, 304                  # 16-byte Folded Reload
	vst	$vr0, $sp, 416
	ori	$a0, $zero, 8
	st.d	$a0, $sp, 432
	st.d	$s4, $sp, 408
	vst	$vr0, $sp, 448
	ori	$a1, $zero, 4
	st.d	$a1, $sp, 464
	pcalau12i	$a2, %pc_hi20(_ZTV13CRecordVectorIiE+16)
	addi.d	$a2, $a2, %pc_lo12(_ZTV13CRecordVectorIiE+16)
	st.d	$a2, $sp, 440
	vst	$vr0, $sp, 480
	st.d	$a1, $sp, 496
	st.d	$a2, $sp, 472
	vst	$vr0, $sp, 512
	st.d	$a0, $sp, 528
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI8CDirItemE+16)
	addi.d	$a1, $a0, %pc_lo12(_ZTV13CObjectVectorI8CDirItemE+16)
	ld.bu	$a0, $s0, 225
	st.d	$a1, $sp, 504
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	beqz	$a0, .LBB12_76
# %bb.64:
	move	$s7, $s4
	st.d	$zero, $sp, 688
.Ltmp197:                               # EH_LABEL
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp198:                               # EH_LABEL
# %bb.65:
	addi.d	$a2, $sp, 680
	st.d	$a0, $sp, 680
	st.w	$zero, $a0, 0
	ori	$a1, $zero, 4
	st.w	$a1, $sp, 692
	addi.w	$s1, $zero, -1
	addi.d	$s4, $s0, 232
	st.d	$s1, $sp, 700
	beq	$s4, $a2, .LBB12_72
# %bb.66:
	ld.w	$a2, $s0, 240
	st.w	$zero, $sp, 688
	addi.w	$s6, $a2, 1
	st.w	$zero, $a0, 0
	beq	$s6, $a1, .LBB12_69
# %bb.67:
	move	$s2, $a0
	slti	$a0, $a2, -1
	slli.d	$a1, $s6, 2
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s1, $a0
	or	$a0, $a0, $a1
.Ltmp200:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp201:                               # EH_LABEL
# %bb.68:
	move	$s3, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 688
	st.d	$s3, $sp, 680
	slli.d	$a0, $a0, 2
	stx.w	$zero, $s3, $a0
	st.w	$s6, $sp, 692
	move	$a0, $s3
.LBB12_69:                              # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i342
	ld.d	$a1, $s4, 0
	.p2align	4, , 16
.LBB12_70:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $a1, 0
	addi.d	$a1, $a1, 4
	addi.d	$a3, $a0, 4
	st.w	$a2, $a0, 0
	move	$a0, $a3
	bnez	$a2, .LBB12_70
# %bb.71:                               # %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i346
	ld.w	$a0, $s0, 240
	st.w	$a0, $sp, 688
.LBB12_72:                              # %_ZN11CStringBaseIwEaSERKS0_.exit350
	st.d	$s1, $sp, 648
	st.w	$zero, $sp, 696
	addi.d	$a0, $sp, 672
.Ltmp202:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN8NWindows5NTime17GetCurUtcFileTimeER9_FILETIME)
	jirl	$ra, $ra, 0
.Ltmp203:                               # EH_LABEL
# %bb.73:
	ld.d	$a0, $sp, 672
	st.d	$a0, $sp, 664
	st.d	$a0, $sp, 656
.Ltmp204:                               # EH_LABEL
	ori	$a0, $zero, 64
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp205:                               # EH_LABEL
# %bb.74:                               # %.noexc351
	move	$s3, $a0
	vld	$vr0, $sp, 664
	vld	$vr1, $sp, 648
	ld.w	$s2, $sp, 688
	vst	$vr0, $a0, 16
	vst	$vr1, $a0, 0
	vrepli.b	$vr0, 0
	bstrpick.d	$a0, $s2, 31, 0
	addi.d	$s4, $a0, 1
	slli.d	$a0, $s4, 31
	vst	$vr0, $s3, 32
	bgez	$a0, .LBB12_99
# %bb.75:
	move	$a0, $zero
	b	.LBB12_101
.LBB12_76:                              # %.preheader432
	ld.w	$a0, $s0, 52
	blez	$a0, .LBB12_107
# %bb.77:                               # %.lr.ph
	ld.d	$a1, $s0, 56
	move	$a3, $zero
	ori	$a2, $zero, 2
	b	.LBB12_79
	.p2align	4, , 16
.LBB12_78:                              # %_ZNK14NUpdateArchive10CActionSet12NeedScanningEv.exit
                                        #   in Loop: Header=BB12_79 Depth=1
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 8
	beqz	$a0, .LBB12_86
.LBB12_79:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a1, 0
	ld.w	$a6, $a5, 136
	move	$a4, $a3
	ori	$a3, $zero, 1
	beq	$a6, $a2, .LBB12_78
# %bb.80:                               #   in Loop: Header=BB12_79 Depth=1
	ld.w	$a6, $a5, 140
	beq	$a6, $a2, .LBB12_78
# %bb.81:                               #   in Loop: Header=BB12_79 Depth=1
	ld.w	$a7, $a5, 144
	beq	$a7, $a2, .LBB12_78
# %bb.82:                               #   in Loop: Header=BB12_79 Depth=1
	ld.w	$t0, $a5, 148
	beq	$t0, $a2, .LBB12_78
# %bb.83:                               #   in Loop: Header=BB12_79 Depth=1
	ld.w	$t1, $a5, 152
	beq	$t1, $a2, .LBB12_78
# %bb.84:                               #   in Loop: Header=BB12_79 Depth=1
	ld.w	$t2, $a5, 156
	beq	$t2, $a2, .LBB12_78
# %bb.85:                               #   in Loop: Header=BB12_79 Depth=1
	ld.w	$a3, $a5, 160
	or	$a3, $a6, $a3
	or	$a3, $a3, $a7
	or	$a3, $a3, $t0
	or	$a3, $a3, $t1
	or	$a3, $a3, $t2
	sltu	$a3, $zero, $a3
	or	$a3, $a3, $a4
	b	.LBB12_78
.LBB12_86:                              # %._crit_edge
	andi	$a0, $a3, 1
	beqz	$a0, .LBB12_107
# %bb.87:
	pcalau12i	$a0, %pc_hi20(_ZTV26CEnumDirItemUpdateCallback+16)
	addi.d	$a2, $a0, %pc_lo12(_ZTV26CEnumDirItemUpdateCallback+16)
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 96
	st.d	$a2, $sp, 376
	st.d	$a0, $sp, 384
.Ltmp183:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp184:                               # EH_LABEL
# %bb.88:
	move	$s3, $a0
	bnez	$a0, .LBB12_413
# %bb.89:
	vld	$vr0, $sp, 304                  # 16-byte Folded Reload
	vst	$vr0, $sp, 656
	ori	$a0, $zero, 8
	st.d	$a0, $sp, 672
	st.d	$s4, $sp, 648
	vst	$vr0, $sp, 736
	ori	$a0, $zero, 4
	st.d	$a0, $sp, 752
	pcalau12i	$a0, %pc_hi20(_ZTV13CRecordVectorIjE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CRecordVectorIjE+16)
	st.d	$a0, $sp, 728
.Ltmp186:                               # EH_LABEL
	addi.d	$a1, $sp, 408
	addi.d	$a2, $sp, 376
	addi.d	$a3, $sp, 648
	addi.d	$a4, $sp, 728
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_Z14EnumerateItemsRKN9NWildcard7CCensorER9CDirItemsP20IEnumDirItemCallbackR13CObjectVectorI11CStringBaseIwEER13CRecordVectorIjE)
	jirl	$ra, $ra, 0
.Ltmp187:                               # EH_LABEL
# %bb.90:                               # %.preheader
	move	$s6, $a0
	move	$s7, $s4
	ld.w	$a0, $sp, 660
	blez	$a0, .LBB12_95
# %bb.91:                               # %.lr.ph567
	move	$s1, $zero
	move	$s2, $zero
	move	$s4, $zero
.LBB12_92:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 664
	ldx.d	$a1, $a0, $s1
	ld.d	$a2, $sp, 744
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	ld.d	$a3, $a0, 0
	ld.d	$a1, $a1, 0
	ldx.w	$a2, $a2, $s2
	ld.d	$a3, $a3, 112
.Ltmp188:                               # EH_LABEL
	jirl	$ra, $a3, 0
.Ltmp189:                               # EH_LABEL
# %bb.93:                               #   in Loop: Header=BB12_92 Depth=1
	move	$s3, $a0
	bnez	$a0, .LBB12_420
# %bb.94:                               #   in Loop: Header=BB12_92 Depth=1
	ld.w	$a0, $sp, 660
	addi.d	$s4, $s4, 1
	addi.d	$s2, $s2, 4
	addi.d	$s1, $s1, 8
	blt	$s4, $a0, .LBB12_92
.LBB12_95:                              # %._crit_edge568
	lu12i.w	$a0, -524284
	ori	$a0, $a0, 4
	beq	$s6, $a0, .LBB12_421
# %bb.96:                               # %._crit_edge568
	move	$s4, $s7
	bnez	$s6, .LBB12_422
# %bb.97:
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 120
.Ltmp191:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp192:                               # EH_LABEL
# %bb.98:
	sltui	$s1, $a0, 1
	masknez	$a0, $a0, $s1
	maskeqz	$a1, $s8, $s1
	or	$s3, $a1, $a0
	b	.LBB12_424
.LBB12_99:
	addi.w	$a0, $s4, 0
	slti	$a1, $s2, -1
	slli.d	$a0, $a0, 2
	maskeqz	$a2, $s1, $a1
	masknez	$a0, $a0, $a1
	or	$a0, $a2, $a0
.Ltmp206:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp207:                               # EH_LABEL
# %bb.100:                              # %.noexc.i
	st.d	$a0, $s3, 32
	st.w	$zero, $a0, 0
	st.w	$s4, $s3, 44
.LBB12_101:                             # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i.i
	addi.d	$a5, $sp, 504
	ld.d	$a2, $sp, 680
	addi.d	$a1, $sp, 696
	.p2align	4, , 16
.LBB12_102:                             # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a2, 0
	addi.d	$a2, $a2, 4
	addi.d	$a4, $a0, 4
	st.w	$a3, $a0, 0
	move	$a0, $a4
	bnez	$a3, .LBB12_102
# %bb.103:
	ld.d	$a0, $a1, 0
	ld.w	$a1, $a1, 8
	st.w	$s2, $s3, 40
	st.d	$a0, $s3, 48
	st.w	$a1, $s3, 56
.Ltmp209:                               # EH_LABEL
	move	$a0, $a5
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp210:                               # EH_LABEL
# %bb.104:
	ld.w	$a1, $sp, 516
	ld.d	$a0, $sp, 520
	slli.d	$a2, $a1, 3
	stx.d	$s3, $a0, $a2
	ld.d	$a0, $sp, 680
	addi.d	$a1, $a1, 1
	st.w	$a1, $sp, 516
	beqz	$a0, .LBB12_106
# %bb.105:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB12_106:                             # %_ZN8CDirItemD2Ev.exit
	move	$s4, $s7
.LBB12_107:                             # %.thread400
	st.d	$zero, $sp, 328                 # 8-byte Folded Spill
	vld	$vr0, $sp, 304                  # 16-byte Folded Reload
	vst	$vr0, $sp, 384
	ld.bu	$a0, $s0, 248
	ld.bu	$a1, $sp, 624
	st.d	$a1, $sp, 176                   # 8-byte Folded Spill
	ori	$a1, $zero, 8
	st.d	$a1, $sp, 400
	st.d	$s4, $sp, 376
	bnez	$a0, .LBB12_115
# %bb.108:                              # %.thread400
	ld.b	$a0, $s0, 72
	andi	$a0, $a0, 1
	beqz	$a0, .LBB12_115
# %bb.109:
	ld.d	$a0, $s0, 56
	ld.d	$s1, $a0, 0
	addi.d	$a0, $s1, 16
.Ltmp212:                               # EH_LABEL
	move	$a1, $s5
	pcaddu18i	$ra, %call36(_ZN12CArchivePathaSERKS_)
	jirl	$ra, $ra, 0
.Ltmp213:                               # EH_LABEL
# %bb.110:
	ld.w	$a0, $s0, 280
	sltu	$a1, $zero, $a0
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	or	$a1, $a2, $a1
	st.d	$zero, $sp, 328                 # 8-byte Folded Spill
	beqz	$a1, .LBB12_115
# %bb.111:
	ld.w	$a1, $s0, 300
	bnez	$a1, .LBB12_115
# %bb.112:
	ori	$a2, $zero, 1
	ori	$a1, $zero, 1
	st.d	$a1, $sp, 328                   # 8-byte Folded Spill
	st.b	$a2, $s1, 96
	beqz	$a0, .LBB12_115
# %bb.113:
	addi.d	$a1, $s0, 272
	addi.d	$s2, $s1, 104
.Ltmp214:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN11CStringBaseIwEaSERKS0_)
	jirl	$ra, $ra, 0
.Ltmp215:                               # EH_LABEL
# %bb.114:
.Ltmp216:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN8NWindows5NFile5NName22NormalizeDirPathPrefixER11CStringBaseIwE)
	jirl	$ra, $ra, 0
.Ltmp217:                               # EH_LABEL
.LBB12_115:
	st.d	$s4, $sp, 288                   # 8-byte Folded Spill
	ld.w	$a0, $s0, 52
	blez	$a0, .LBB12_143
# %bb.116:                              # %.lr.ph573
	move	$s1, $zero
	addi.d	$s6, $fp, 8
	pcalau12i	$a1, %pc_hi20(.LCPI12_15)
	vld	$vr0, $a1, %pc_lo12(.LCPI12_15)
	vst	$vr0, $sp, 272                  # 16-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.LCPI12_9)
	vld	$vr0, $a1, %pc_lo12(.LCPI12_9)
	vst	$vr0, $sp, 256                  # 16-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.LCPI12_16)
	vld	$vr0, $a1, %pc_lo12(.LCPI12_16)
	vst	$vr0, $sp, 240                  # 16-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.LCPI12_17)
	vld	$vr0, $a1, %pc_lo12(.LCPI12_17)
	vst	$vr0, $sp, 224                  # 16-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.LCPI12_18)
	vld	$vr0, $a1, %pc_lo12(.LCPI12_18)
	vst	$vr0, $sp, 208                  # 16-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.LCPI12_19)
	vld	$vr0, $a1, %pc_lo12(.LCPI12_19)
	vst	$vr0, $sp, 192                  # 16-byte Folded Spill
	lu12i.w	$a1, -524284
	ori	$s7, $a1, 5
	addi.w	$a1, $zero, -1
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	move	$s2, $s8
	b	.LBB12_120
	.p2align	4, , 16
.LBB12_117:                             #   in Loop: Header=BB12_120 Depth=1
	bnez	$s3, .LBB12_388
# %bb.118:                              # %..thread406_crit_edge
                                        #   in Loop: Header=BB12_120 Depth=1
	ld.w	$a0, $s0, 52
.LBB12_119:                             # %.thread406
                                        #   in Loop: Header=BB12_120 Depth=1
	addi.d	$s1, $s1, 1
	bge	$s1, $a0, .LBB12_144
.LBB12_120:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_139 Depth 2
	sltui	$a1, $s1, 1
	ld.d	$a2, $sp, 328                   # 8-byte Folded Reload
	and	$a1, $a2, $a1
	bnez	$a1, .LBB12_119
# %bb.121:                              #   in Loop: Header=BB12_120 Depth=1
	ld.b	$a1, $s0, 248
	andi	$a1, $a1, 1
	bnez	$a1, .LBB12_119
# %bb.122:                              #   in Loop: Header=BB12_120 Depth=1
	ld.d	$a0, $s0, 56
	slli.d	$a1, $s1, 3
	ldx.d	$a0, $a0, $a1
	addi.d	$a1, $a0, 16
.Ltmp219:                               # EH_LABEL
	addi.d	$a0, $sp, 648
	pcaddu18i	$ra, %call36(_ZNK12CArchivePath12GetFinalPathEv)
	jirl	$ra, $ra, 0
.Ltmp220:                               # EH_LABEL
# %bb.123:                              #   in Loop: Header=BB12_120 Depth=1
	ld.d	$a0, $sp, 648
.Ltmp222:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN8NWindows5NFile5NFind18DoesFileOrDirExistEPKw)
	jirl	$ra, $ra, 0
.Ltmp223:                               # EH_LABEL
# %bb.124:                              #   in Loop: Header=BB12_120 Depth=1
	move	$s3, $a0
	beqz	$a0, .LBB12_141
# %bb.125:                              #   in Loop: Header=BB12_120 Depth=1
	ld.d	$s2, $fp, 40
	st.w	$zero, $fp, 0
	st.w	$zero, $fp, 48
	st.w	$zero, $s2, 0
	ld.w	$s4, $fp, 52
	ori	$a0, $zero, 24
	beq	$s4, $a0, .LBB12_131
# %bb.126:                              #   in Loop: Header=BB12_120 Depth=1
.Ltmp224:                               # EH_LABEL
	ori	$a0, $zero, 96
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp225:                               # EH_LABEL
# %bb.127:                              # %.noexc366
                                        #   in Loop: Header=BB12_120 Depth=1
	move	$s5, $a0
	blez	$s4, .LBB12_129
# %bb.128:                              # %._crit_edge.thread.i.i364
                                        #   in Loop: Header=BB12_120 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 48
	b	.LBB12_130
.LBB12_129:                             #   in Loop: Header=BB12_120 Depth=1
	move	$a0, $zero
.LBB12_130:                             #   in Loop: Header=BB12_120 Depth=1
	st.d	$s5, $fp, 40
	slli.d	$a0, $a0, 2
	stx.w	$zero, $s5, $a0
	ori	$a0, $zero, 24
	st.w	$a0, $fp, 52
	move	$s2, $s5
.LBB12_131:                             # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i359
                                        #   in Loop: Header=BB12_120 Depth=1
	vld	$vr0, $sp, 272                  # 16-byte Folded Reload
	vst	$vr0, $s2, 0
	vld	$vr0, $sp, 256                  # 16-byte Folded Reload
	vst	$vr0, $s2, 16
	vld	$vr0, $sp, 240                  # 16-byte Folded Reload
	vst	$vr0, $s2, 32
	vld	$vr0, $sp, 224                  # 16-byte Folded Reload
	vst	$vr0, $s2, 48
	vld	$vr0, $sp, 208                  # 16-byte Folded Reload
	vst	$vr0, $s2, 64
	vld	$vr0, $sp, 192                  # 16-byte Folded Reload
	vst	$vr0, $s2, 80
	ori	$a0, $zero, 23
	st.w	$a0, $fp, 48
	move	$s2, $s7
	addi.d	$a0, $sp, 648
	beq	$a0, $s6, .LBB12_141
# %bb.132:                              #   in Loop: Header=BB12_120 Depth=1
	ld.d	$s2, $fp, 8
	st.w	$zero, $fp, 16
	st.w	$zero, $s2, 0
	ld.w	$a0, $sp, 656
	ld.w	$s4, $fp, 20
	addi.w	$s8, $a0, 1
	beq	$s8, $s4, .LBB12_138
# %bb.133:                              #   in Loop: Header=BB12_120 Depth=1
	slti	$a0, $a0, -1
	slli.d	$a1, $s8, 2
	masknez	$a1, $a1, $a0
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
.Ltmp226:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp227:                               # EH_LABEL
# %bb.134:                              # %.noexc375
                                        #   in Loop: Header=BB12_120 Depth=1
	move	$s5, $a0
	blez	$s4, .LBB12_136
# %bb.135:                              # %._crit_edge.thread.i.i373
                                        #   in Loop: Header=BB12_120 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 16
	b	.LBB12_137
.LBB12_136:                             #   in Loop: Header=BB12_120 Depth=1
	move	$a0, $zero
.LBB12_137:                             #   in Loop: Header=BB12_120 Depth=1
	st.d	$s5, $fp, 8
	slli.d	$a0, $a0, 2
	stx.w	$zero, $s5, $a0
	st.w	$s8, $fp, 20
	move	$s2, $s5
.LBB12_138:                             # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i368
                                        #   in Loop: Header=BB12_120 Depth=1
	ld.d	$a0, $sp, 648
	.p2align	4, , 16
.LBB12_139:                             #   Parent Loop BB12_120 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a1, $a0, 0
	addi.d	$a0, $a0, 4
	addi.d	$a2, $s2, 4
	st.w	$a1, $s2, 0
	move	$s2, $a2
	bnez	$a1, .LBB12_139
# %bb.140:                              # %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i372
                                        #   in Loop: Header=BB12_120 Depth=1
	ld.w	$a0, $sp, 656
	st.w	$a0, $fp, 16
	move	$s2, $s7
.LBB12_141:                             # %_ZN11CStringBaseIwEaSERKS0_.exit376
                                        #   in Loop: Header=BB12_120 Depth=1
	ld.d	$a0, $sp, 648
	beqz	$a0, .LBB12_117
# %bb.142:                              #   in Loop: Header=BB12_120 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB12_117
.LBB12_143:
	move	$s2, $s8
.LBB12_144:                             # %._crit_edge574
	vld	$vr0, $sp, 304                  # 16-byte Folded Reload
	vst	$vr0, $sp, 352
	ori	$a1, $zero, 8
	st.d	$a1, $sp, 368
	pcalau12i	$a1, %pc_hi20(_ZTV13CObjectVectorI8CArcItemE+16)
	addi.d	$a2, $a1, %pc_lo12(_ZTV13CObjectVectorI8CArcItemE+16)
	st.d	$a2, $sp, 344
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	st.d	$s2, $sp, 256                   # 8-byte Folded Spill
	st.d	$a2, $sp, 208                   # 8-byte Folded Spill
	beqz	$a1, .LBB12_148
# %bb.145:
	ld.w	$a0, $sp, 564
	ld.d	$a1, $sp, 568
	alsl.d	$a0, $a0, $a1, 3
	ld.d	$a1, $a0, -8
.Ltmp229:                               # EH_LABEL
	addi.d	$a2, $sp, 344
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_Z23EnumerateInArchiveItemsRKN9NWildcard7CCensorERK4CArcR13CObjectVectorI8CArcItemE)
	jirl	$ra, $ra, 0
.Ltmp230:                               # EH_LABEL
	ld.d	$s4, $sp, 288                   # 8-byte Folded Reload
# %bb.146:
	move	$s3, $a0
	bnez	$a0, .LBB12_408
# %bb.147:
	ld.w	$a0, $sp, 564
	ld.d	$a1, $sp, 568
	alsl.d	$a0, $a0, $a1, 3
	ld.d	$a0, $a0, -8
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 296                   # 8-byte Folded Spill
	ld.w	$a0, $s0, 52
	b	.LBB12_149
.LBB12_148:
	st.d	$zero, $sp, 296                 # 8-byte Folded Spill
	ld.d	$s4, $sp, 288                   # 8-byte Folded Reload
.LBB12_149:
	blez	$a0, .LBB12_374
# %bb.150:                              # %.lr.ph.i
	addi.d	$a0, $s0, 208
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(_ZTV14COutFileStream)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTV14COutFileStream)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ld.d	$a0, $a0, 24
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	addi.d	$a0, $fp, 8
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	addi.d	$a0, $fp, 40
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(_ZTV17CStdOutFileStream)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTV17CStdOutFileStream)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	ld.d	$a0, $a0, 24
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	addi.d	$a0, $s0, 8
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(_ZTV13CInFileStream)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTV13CInFileStream)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ld.d	$a0, $a0, 24
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	sltu	$a0, $zero, $a0
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	lu12i.w	$a0, -524284
	ori	$a0, $a0, 5
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(_ZTV13CRecordVectorI12CUpdatePair2E+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CRecordVectorI12CUpdatePair2E+16)
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	move	$s1, $zero
	ori	$a0, $zero, 0
	lu32i.d	$a0, 4
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	ori	$a0, $zero, 108
	lu32i.d	$a0, 101
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB12_151:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_181 Depth 2
                                        #     Child Loop BB12_184 Depth 2
                                        #     Child Loop BB12_213 Depth 2
                                        #     Child Loop BB12_270 Depth 2
                                        #     Child Loop BB12_285 Depth 2
                                        #     Child Loop BB12_226 Depth 2
                                        #       Child Loop BB12_241 Depth 3
                                        #       Child Loop BB12_245 Depth 3
                                        #       Child Loop BB12_255 Depth 3
                                        #     Child Loop BB12_329 Depth 2
                                        #     Child Loop BB12_279 Depth 2
                                        #     Child Loop BB12_351 Depth 2
	ld.d	$a0, $s0, 56
	slli.d	$a1, $s1, 3
	ldx.d	$s5, $a0, $a1
	ld.bu	$a0, $s0, 248
	addi.d	$a1, $s5, 16
	beqz	$a0, .LBB12_154
# %bb.152:                              #   in Loop: Header=BB12_151 Depth=1
	move	$s7, $a1
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	ld.d	$a3, $a1, 128
.Ltmp237:                               # EH_LABEL
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	jirl	$ra, $a3, 0
.Ltmp238:                               # EH_LABEL
# %bb.153:                              # %.noexc386
                                        #   in Loop: Header=BB12_151 Depth=1
	move	$s3, $a0
	beqz	$a0, .LBB12_159
	b	.LBB12_408
.LBB12_154:                             #   in Loop: Header=BB12_151 Depth=1
.Ltmp232:                               # EH_LABEL
	addi.d	$a0, $sp, 648
	move	$s7, $a1
	pcaddu18i	$ra, %call36(_ZNK12CArchivePath12GetFinalPathEv)
	jirl	$ra, $ra, 0
.Ltmp233:                               # EH_LABEL
# %bb.155:                              # %.noexc387
                                        #   in Loop: Header=BB12_151 Depth=1
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	ld.d	$a3, $a0, 0
	ld.b	$a2, $s0, 72
	ld.d	$a1, $sp, 648
	ld.d	$a3, $a3, 128
	sltui	$a4, $s1, 1
	and	$a2, $a4, $a2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	and	$a2, $a4, $a2
.Ltmp234:                               # EH_LABEL
	jirl	$ra, $a3, 0
.Ltmp235:                               # EH_LABEL
# %bb.156:                              #   in Loop: Header=BB12_151 Depth=1
	move	$s3, $a0
	ld.d	$a0, $sp, 648
	beqz	$a0, .LBB12_158
# %bb.157:                              #   in Loop: Header=BB12_151 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB12_158:                             # %_ZN11CStringBaseIwED2Ev.exit.i380
                                        #   in Loop: Header=BB12_151 Depth=1
	bnez	$s3, .LBB12_408
.LBB12_159:                             #   in Loop: Header=BB12_151 Depth=1
	ld.bu	$s6, $s0, 224
	ld.bu	$s8, $s0, 225
	ld.bu	$s4, $s0, 248
	ld.bu	$s3, $s0, 200
	st.d	$zero, $sp, 768
	ld.d	$s2, $sp, 296                   # 8-byte Folded Reload
	beqz	$s2, .LBB12_165
# %bb.160:                              #   in Loop: Header=BB12_151 Depth=1
	ld.d	$a0, $s2, 0
	ld.d	$a1, $a0, 8
.Ltmp239:                               # EH_LABEL
	move	$a0, $s2
	jirl	$ra, $a1, 0
.Ltmp240:                               # EH_LABEL
# %bb.161:                              # %_ZN9CMyComPtrI10IInArchiveEC2EPS0_.exit.i.i
                                        #   in Loop: Header=BB12_151 Depth=1
	ld.d	$a0, $s2, 0
	ld.d	$a3, $a0, 0
.Ltmp242:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(IID_IOutArchive)
	ld.d	$a1, $a0, %got_pc_lo12(IID_IOutArchive)
	addi.d	$a2, $sp, 768
	move	$a0, $s2
	jirl	$ra, $a3, 0
.Ltmp243:                               # EH_LABEL
# %bb.162:                              # %_ZNK9CMyComPtrI10IInArchiveE14QueryInterfaceI11IOutArchiveEEiRK4GUIDPPT_.exit.i.i
                                        #   in Loop: Header=BB12_151 Depth=1
	bnez	$a0, .LBB12_429
# %bb.163:                              #   in Loop: Header=BB12_151 Depth=1
	ld.d	$a0, $s2, 0
	ld.d	$a1, $a0, 16
.Ltmp251:                               # EH_LABEL
	move	$a0, $s2
	jirl	$ra, $a1, 0
.Ltmp252:                               # EH_LABEL
# %bb.164:                              # %_ZN9CMyComPtrI10IInArchiveED2Ev.exit244thread-pre-split.i.i
                                        #   in Loop: Header=BB12_151 Depth=1
	ld.d	$a0, $sp, 768
	st.d	$s3, $sp, 240                   # 8-byte Folded Spill
	bnez	$a0, .LBB12_171
	b	.LBB12_428
.LBB12_165:                             #   in Loop: Header=BB12_151 Depth=1
	ld.w	$a0, $s0, 0
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 32
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	ld.d	$a0, $a0, 16
.Ltmp254:                               # EH_LABEL
	jirl	$ra, $a0, 0
.Ltmp255:                               # EH_LABEL
# %bb.166:                              # %.noexc245.i.i
                                        #   in Loop: Header=BB12_151 Depth=1
	beqz	$a0, .LBB12_168
# %bb.167:                              #   in Loop: Header=BB12_151 Depth=1
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 8
.Ltmp256:                               # EH_LABEL
	move	$s2, $a0
	jirl	$ra, $a1, 0
	move	$a0, $s2
.Ltmp257:                               # EH_LABEL
.LBB12_168:                             # %.noexc246.i.i
                                        #   in Loop: Header=BB12_151 Depth=1
	ld.d	$a1, $sp, 768
	beqz	$a1, .LBB12_170
# %bb.169:                              #   in Loop: Header=BB12_151 Depth=1
	ld.d	$a2, $a1, 0
	ld.d	$a2, $a2, 16
.Ltmp258:                               # EH_LABEL
	move	$s2, $a0
	move	$a0, $a1
	jirl	$ra, $a2, 0
	move	$a0, $s2
.Ltmp259:                               # EH_LABEL
.LBB12_170:                             #   in Loop: Header=BB12_151 Depth=1
	st.d	$a0, $sp, 768
	st.d	$s3, $sp, 240                   # 8-byte Folded Spill
	beqz	$a0, .LBB12_428
.LBB12_171:                             #   in Loop: Header=BB12_151 Depth=1
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a1, 48
.Ltmp261:                               # EH_LABEL
	addi.d	$a1, $sp, 764
	jirl	$ra, $a2, 0
.Ltmp262:                               # EH_LABEL
# %bb.172:                              #   in Loop: Header=BB12_151 Depth=1
	move	$s3, $a0
	bnez	$a0, .LBB12_366
# %bb.173:                              #   in Loop: Header=BB12_151 Depth=1
	ld.w	$a2, $sp, 764
	ld.d	$s3, $sp, 192                   # 8-byte Folded Reload
	ori	$a0, $zero, 2
	bltu	$a0, $a2, .LBB12_366
# %bb.174:                              #   in Loop: Header=BB12_151 Depth=1
	vld	$vr0, $sp, 304                  # 16-byte Folded Reload
	addi.d	$a0, $sp, 736
	vst	$vr0, $a0, 0
	ori	$a0, $zero, 16
	st.d	$a0, $sp, 752
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	st.d	$a0, $sp, 728
	addi.d	$a0, $sp, 656
	vst	$vr0, $a0, 0
	ori	$a0, $zero, 12
	st.d	$a0, $sp, 672
	pcalau12i	$a0, %pc_hi20(_ZTV13CRecordVectorI11CUpdatePairE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CRecordVectorI11CUpdatePairE+16)
	st.d	$a0, $sp, 648
.Ltmp264:                               # EH_LABEL
	addi.d	$a0, $sp, 408
	addi.d	$a1, $sp, 344
	addi.d	$a3, $sp, 648
	pcaddu18i	$ra, %call36(_Z21GetUpdatePairInfoListRK9CDirItemsRK13CObjectVectorI8CArcItemEN13NFileTimeType5EEnumER13CRecordVectorI11CUpdatePairE)
	jirl	$ra, $ra, 0
.Ltmp265:                               # EH_LABEL
# %bb.175:                              #   in Loop: Header=BB12_151 Depth=1
.Ltmp266:                               # EH_LABEL
	addi.d	$a1, $s5, 136
	addi.d	$a0, $sp, 648
	addi.d	$a2, $sp, 728
	move	$a3, $zero
	pcaddu18i	$ra, %call36(_Z13UpdateProduceRK13CRecordVectorI11CUpdatePairERKN14NUpdateArchive10CActionSetERS_I12CUpdatePair2EP22IUpdateProduceCallback)
	jirl	$ra, $ra, 0
.Ltmp267:                               # EH_LABEL
# %bb.176:                              #   in Loop: Header=BB12_151 Depth=1
	addi.d	$a0, $sp, 648
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 740
	blez	$a0, .LBB12_179
# %bb.177:                              # %.lr.ph.i.i
                                        #   in Loop: Header=BB12_151 Depth=1
	ld.d	$a1, $sp, 744
	ori	$a2, $zero, 8
	bgeu	$a0, $a2, .LBB12_180
# %bb.178:                              #   in Loop: Header=BB12_151 Depth=1
	move	$a2, $zero
	move	$a3, $zero
	b	.LBB12_183
.LBB12_179:                             #   in Loop: Header=BB12_151 Depth=1
	move	$a1, $zero
	b	.LBB12_186
.LBB12_180:                             # %vector.ph
                                        #   in Loop: Header=BB12_151 Depth=1
	bstrpick.d	$a2, $a0, 30, 3
	slli.d	$a2, $a2, 3
	addi.d	$a3, $a1, 64
	move	$a4, $a2
	vld	$vr1, $sp, 304                  # 16-byte Folded Reload
	vori.b	$vr0, $vr1, 0
	.p2align	4, , 16
.LBB12_181:                             # %vector.body
                                        #   Parent Loop BB12_151 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$a5, $a3, -64
	ld.b	$a6, $a3, -48
	ld.b	$a7, $a3, -32
	ld.b	$t0, $a3, -16
	vinsgr2vr.b	$vr2, $a5, 0
	vinsgr2vr.b	$vr2, $a6, 1
	vinsgr2vr.b	$vr2, $a7, 2
	vinsgr2vr.b	$vr2, $t0, 3
	ld.b	$a5, $a3, 0
	ld.b	$a6, $a3, 16
	ld.b	$a7, $a3, 32
	ld.b	$t0, $a3, 48
	vinsgr2vr.b	$vr3, $a5, 0
	vinsgr2vr.b	$vr3, $a6, 1
	vinsgr2vr.b	$vr3, $a7, 2
	vinsgr2vr.b	$vr3, $t0, 3
	vsllwil.hu.bu	$vr2, $vr2, 0
	vsllwil.wu.hu	$vr2, $vr2, 0
	vsllwil.hu.bu	$vr3, $vr3, 0
	vsllwil.wu.hu	$vr3, $vr3, 0
	vadd.w	$vr0, $vr0, $vr2
	vadd.w	$vr1, $vr1, $vr3
	addi.d	$a4, $a4, -8
	addi.d	$a3, $a3, 128
	bnez	$a4, .LBB12_181
# %bb.182:                              # %middle.block
                                        #   in Loop: Header=BB12_151 Depth=1
	vadd.w	$vr0, $vr1, $vr0
	vhaddw.d.w	$vr0, $vr0, $vr0
	vhaddw.q.d	$vr0, $vr0, $vr0
	vpickve2gr.d	$a3, $vr0, 0
	beq	$a2, $a0, .LBB12_185
.LBB12_183:                             # %scalar.ph.preheader
                                        #   in Loop: Header=BB12_151 Depth=1
	sub.d	$a0, $a0, $a2
	alsl.d	$a1, $a2, $a1, 4
	.p2align	4, , 16
.LBB12_184:                             # %scalar.ph
                                        #   Parent Loop BB12_151 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a2, $a1, 0
	add.w	$a3, $a3, $a2
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 16
	bnez	$a0, .LBB12_184
.LBB12_185:                             # %._crit_edge.loopexit.i.i
                                        #   in Loop: Header=BB12_151 Depth=1
	bstrpick.d	$a1, $a3, 31, 0
.LBB12_186:                             # %._crit_edge.i.i
                                        #   in Loop: Header=BB12_151 Depth=1
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a2, $a2, 40
.Ltmp269:                               # EH_LABEL
	jirl	$ra, $a2, 0
.Ltmp270:                               # EH_LABEL
# %bb.187:                              #   in Loop: Header=BB12_151 Depth=1
	move	$s3, $a0
	bnez	$a0, .LBB12_365
# %bb.188:                              #   in Loop: Header=BB12_151 Depth=1
.Ltmp272:                               # EH_LABEL
	ori	$a0, $zero, 160
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp273:                               # EH_LABEL
# %bb.189:                              #   in Loop: Header=BB12_151 Depth=1
.Ltmp275:                               # EH_LABEL
	move	$s2, $a0
	pcaddu18i	$ra, %call36(_ZN22CArchiveUpdateCallbackC1Ev)
	jirl	$ra, $ra, 0
.Ltmp276:                               # EH_LABEL
# %bb.190:                              #   in Loop: Header=BB12_151 Depth=1
	move	$s3, $s7
	ld.d	$a0, $s2, 0
	ld.d	$a1, $a0, 8
.Ltmp278:                               # EH_LABEL
	move	$a0, $s2
	jirl	$ra, $a1, 0
.Ltmp279:                               # EH_LABEL
# %bb.191:                              # %_ZN9CMyComPtrI22IArchiveUpdateCallbackEC2EPS0_.exit.i.i
                                        #   in Loop: Header=BB12_151 Depth=1
	st.b	$s6, $s2, 112
	st.b	$s8, $s2, 113
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	st.d	$a0, $s2, 104
	addi.d	$a0, $sp, 408
	st.d	$a0, $s2, 120
	addi.d	$a0, $sp, 344
	st.d	$a0, $s2, 128
	addi.d	$a0, $sp, 728
	st.d	$a0, $s2, 136
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	beqz	$s4, .LBB12_194
# %bb.192:                              #   in Loop: Header=BB12_151 Depth=1
	ld.w	$a0, $s0, 300
	beqz	$a0, .LBB12_219
# %bb.193:                              #   in Loop: Header=BB12_151 Depth=1
	lu12i.w	$a0, -524284
	ori	$s3, $a0, 5
	b	.LBB12_364
.LBB12_194:                             #   in Loop: Header=BB12_151 Depth=1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	st.d	$a0, $sp, 656
.Ltmp281:                               # EH_LABEL
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp282:                               # EH_LABEL
# %bb.195:                              #   in Loop: Header=BB12_151 Depth=1
	st.d	$a0, $sp, 648
	st.w	$zero, $a0, 0
.Ltmp284:                               # EH_LABEL
	addi.d	$a0, $sp, 712
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZNK12CArchivePath12GetFinalPathEv)
	jirl	$ra, $ra, 0
.Ltmp285:                               # EH_LABEL
# %bb.196:                              #   in Loop: Header=BB12_151 Depth=1
	ld.d	$a0, $sp, 712
.Ltmp287:                               # EH_LABEL
	addi.d	$a1, $sp, 648
	addi.d	$a2, $sp, 632
	pcaddu18i	$ra, %call36(_ZN8NWindows5NFile10NDirectory17MyGetFullPathNameEPKwR11CStringBaseIwERi)
	jirl	$ra, $ra, 0
.Ltmp288:                               # EH_LABEL
# %bb.197:                              #   in Loop: Header=BB12_151 Depth=1
	move	$s2, $a0
	ld.d	$a0, $sp, 712
	beqz	$a0, .LBB12_199
# %bb.198:                              #   in Loop: Header=BB12_151 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB12_199:                             # %_ZN11CStringBaseIwED2Ev.exit.i.i
                                        #   in Loop: Header=BB12_151 Depth=1
	beqz	$s2, .LBB12_431
# %bb.200:                              #   in Loop: Header=BB12_151 Depth=1
	ld.w	$a3, $sp, 632
.Ltmp293:                               # EH_LABEL
	addi.d	$a0, $sp, 712
	addi.d	$a1, $sp, 648
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNK11CStringBaseIwE3MidEii)
	jirl	$ra, $ra, 0
.Ltmp294:                               # EH_LABEL
# %bb.201:                              # %_ZNK11CStringBaseIwE4LeftEi.exit.i.i
                                        #   in Loop: Header=BB12_151 Depth=1
	ld.d	$a0, $sp, 712
.Ltmp296:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN8NWindows5NFile10NDirectory22CreateComplexDirectoryEPKw)
	jirl	$ra, $ra, 0
.Ltmp297:                               # EH_LABEL
# %bb.202:                              #   in Loop: Header=BB12_151 Depth=1
	ld.d	$a0, $sp, 712
	beqz	$a0, .LBB12_204
# %bb.203:                              #   in Loop: Header=BB12_151 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB12_204:                             # %_ZN11CStringBaseIwED2Ev.exit253.i.i
                                        #   in Loop: Header=BB12_151 Depth=1
	ld.d	$a0, $sp, 648
	beqz	$a0, .LBB12_206
# %bb.205:                              #   in Loop: Header=BB12_151 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB12_206:                             # %.thread.i.i
                                        #   in Loop: Header=BB12_151 Depth=1
	ld.w	$a0, $s0, 300
	beqz	$a0, .LBB12_221
# %bb.207:                              # %.thread358.i.i
                                        #   in Loop: Header=BB12_151 Depth=1
.Ltmp299:                               # EH_LABEL
	ori	$a0, $zero, 128
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp300:                               # EH_LABEL
# %bb.208:                              #   in Loop: Header=BB12_151 Depth=1
	move	$s8, $a0
	move	$s6, $s3
	st.w	$zero, $a0, 8
	pcalau12i	$a0, %pc_hi20(_ZTV18COutMultiVolStream+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV18COutMultiVolStream+16)
	st.d	$a0, $s8, 0
	vld	$vr0, $sp, 304                  # 16-byte Folded Reload
	vst	$vr0, $s8, 48
	ori	$a1, $zero, 8
	st.d	$a1, $s8, 64
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE+16)
	st.d	$a0, $s8, 40
	addi.d	$s3, $s8, 72
	vst	$vr0, $s8, 80
	st.d	$a1, $s8, 96
	pcalau12i	$a0, %pc_hi20(_ZTV13CRecordVectorIyE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CRecordVectorIyE+16)
	st.d	$a0, $s8, 72
	vst	$vr0, $s8, 104
.Ltmp301:                               # EH_LABEL
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp302:                               # EH_LABEL
# %bb.209:                              # %_ZN9CMyComPtrI20ISequentialOutStreamEaSEPS0_.exit295.i.i
                                        #   in Loop: Header=BB12_151 Depth=1
	st.d	$a0, $s8, 104
	st.w	$zero, $a0, 0
	ori	$a0, $zero, 4
	st.w	$a0, $s8, 116
	ori	$a0, $zero, 1
	st.w	$a0, $s8, 8
.Ltmp304:                               # EH_LABEL
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp305:                               # EH_LABEL
# %bb.210:                              # %.noexc101.i
                                        #   in Loop: Header=BB12_151 Depth=1
	ld.w	$s4, $s0, 300
	ld.w	$a0, $s8, 84
	add.w	$a1, $a0, $s4
.Ltmp306:                               # EH_LABEL
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector7ReserveEi)
	jirl	$ra, $ra, 0
.Ltmp307:                               # EH_LABEL
# %bb.211:                              # %.noexc102.i
                                        #   in Loop: Header=BB12_151 Depth=1
	blez	$s4, .LBB12_215
# %bb.212:                              # %.lr.ph.i.i.i
                                        #   in Loop: Header=BB12_151 Depth=1
	move	$s2, $zero
	slli.d	$s4, $s4, 3
.LBB12_213:                             #   Parent Loop BB12_151 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s0, 304
	ldx.d	$s5, $a0, $s2
.Ltmp309:                               # EH_LABEL
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp310:                               # EH_LABEL
# %bb.214:                              # %.noexc103.i
                                        #   in Loop: Header=BB12_213 Depth=2
	ld.w	$a0, $s8, 84
	ld.d	$a1, $s8, 88
	slli.d	$a2, $a0, 3
	stx.d	$s5, $a1, $a2
	addi.d	$a0, $a0, 1
	addi.d	$s2, $s2, 8
	st.w	$a0, $s8, 84
	bne	$s4, $s2, .LBB12_213
.LBB12_215:                             # %_ZN13CRecordVectorIyEaSERKS0_.exit.i
                                        #   in Loop: Header=BB12_151 Depth=1
.Ltmp312:                               # EH_LABEL
	addi.d	$a0, $sp, 712
	move	$a1, $s6
	pcaddu18i	$ra, %call36(_ZNK12CArchivePath12GetFinalPathEv)
	jirl	$ra, $ra, 0
.Ltmp313:                               # EH_LABEL
# %bb.216:                              #   in Loop: Header=BB12_151 Depth=1
.Ltmp315:                               # EH_LABEL
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp316:                               # EH_LABEL
# %bb.217:                              # %.noexc100.i
                                        #   in Loop: Header=BB12_151 Depth=1
	st.d	$a0, $sp, 632
	ori	$a1, $zero, 46
	st.d	$a1, $a0, 0
	ld.w	$s2, $sp, 720
	ori	$a0, $zero, 1
	lu32i.d	$a0, 2
	st.d	$a0, $sp, 640
	bstrpick.d	$a0, $s2, 31, 0
	addi.d	$s3, $a0, 1
	slli.d	$a0, $s3, 31
	vld	$vr0, $sp, 304                  # 16-byte Folded Reload
	vst	$vr0, $sp, 648
	bgez	$a0, .LBB12_267
# %bb.218:                              #   in Loop: Header=BB12_151 Depth=1
	move	$a0, $zero
	b	.LBB12_269
.LBB12_219:                             #   in Loop: Header=BB12_151 Depth=1
.Ltmp370:                               # EH_LABEL
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp371:                               # EH_LABEL
# %bb.220:                              #   in Loop: Header=BB12_151 Depth=1
	move	$s8, $a0
	st.w	$zero, $a0, 8
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	addi.d	$a0, $a0, 16
	st.d	$a0, $s8, 0
.Ltmp372:                               # EH_LABEL
	move	$a0, $s8
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	jirl	$ra, $a1, 0
.Ltmp373:                               # EH_LABEL
	move	$s7, $zero
	st.d	$zero, $sp, 136                 # 8-byte Folded Spill
	b	.LBB12_293
.LBB12_221:                             # %.thread353.i.i
                                        #   in Loop: Header=BB12_151 Depth=1
.Ltmp327:                               # EH_LABEL
	ori	$a0, $zero, 1112
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp328:                               # EH_LABEL
# %bb.222:                              #   in Loop: Header=BB12_151 Depth=1
	move	$s2, $a0
	st.w	$zero, $a0, 8
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	addi.d	$a0, $a0, 16
	st.d	$a0, $s2, 0
	pcalau12i	$a0, %got_pc_hi20(_ZTVN8NWindows5NFile3NIO9CFileBaseE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTVN8NWindows5NFile3NIO9CFileBaseE)
	addi.d	$a0, $a0, 16
	addi.w	$a1, $zero, -1
	st.d	$a0, $s2, 16
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	move	$a0, $a1
	lu32i.d	$a0, 0
	st.w	$a0, $s2, 24
	vld	$vr0, $sp, 304                  # 16-byte Folded Reload
	vst	$vr0, $s2, 32
.Ltmp329:                               # EH_LABEL
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp330:                               # EH_LABEL
# %bb.223:                              #   in Loop: Header=BB12_151 Depth=1
	st.d	$a0, $s2, 32
	st.b	$zero, $a0, 0
	ori	$a0, $zero, 4
	st.w	$a0, $s2, 44
	pcalau12i	$a0, %pc_hi20(_ZTVN8NWindows5NFile3NIO8COutFileE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTVN8NWindows5NFile3NIO8COutFileE+16)
	st.d	$a0, $s2, 16
.Ltmp332:                               # EH_LABEL
	move	$a0, $s2
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	jirl	$ra, $a1, 0
.Ltmp333:                               # EH_LABEL
# %bb.224:                              # %_ZN9CMyComPtrI20ISequentialOutStreamEaSEPS0_.exit264.i.i
                                        #   in Loop: Header=BB12_151 Depth=1
.Ltmp334:                               # EH_LABEL
	st.d	$s3, $sp, 144                   # 8-byte Folded Spill
	ori	$a0, $zero, 16
	st.d	$s2, $sp, 152                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp335:                               # EH_LABEL
# %bb.225:                              # %_ZN11CStringBaseIwEC2Ev.exit266.i.i
                                        #   in Loop: Header=BB12_151 Depth=1
	move	$s6, $a0
	st.w	$zero, $a0, 0
	ld.b	$a0, $s5, 96
	move	$s3, $zero
	addi.d	$a1, $s2, 16
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	ori	$s7, $zero, 4
.LBB12_226:                             #   Parent Loop BB12_151 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB12_241 Depth 3
                                        #       Child Loop BB12_245 Depth 3
                                        #       Child Loop BB12_255 Depth 3
	andi	$a0, $a0, 1
	beqz	$a0, .LBB12_233
# %bb.227:                              #   in Loop: Header=BB12_226 Depth=2
	beqz	$s3, .LBB12_247
# %bb.228:                              #   in Loop: Header=BB12_226 Depth=2
.Ltmp343:                               # EH_LABEL
	addi.d	$a1, $sp, 648
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_Z21ConvertUInt32ToStringjPw)
	jirl	$ra, $ra, 0
.Ltmp344:                               # EH_LABEL
# %bb.229:                              #   in Loop: Header=BB12_226 Depth=2
	ld.d	$s8, $s5, 120
	st.w	$zero, $s5, 128
	st.w	$zero, $s8, 0
	addi.d	$a0, $sp, 648
	pcaddu18i	$ra, %call36(wcslen)
	jirl	$ra, $ra, 0
	ld.w	$s2, $s5, 132
	move	$a3, $a0
	addi.w	$a1, $a0, 1
	beq	$a1, $s2, .LBB12_244
# %bb.230:                              #   in Loop: Header=BB12_226 Depth=2
	st.d	$a3, $sp, 16                    # 8-byte Folded Spill
	addi.w	$a0, $a3, 0
	slti	$a0, $a0, -1
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	slli.d	$a1, $a1, 2
	masknez	$a1, $a1, $a0
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
.Ltmp345:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp346:                               # EH_LABEL
# %bb.231:                              # %.noexc268.i.i
                                        #   in Loop: Header=BB12_226 Depth=2
	move	$s4, $a0
	blez	$s2, .LBB12_242
# %bb.232:                              # %._crit_edge.thread.i.i.i.i
                                        #   in Loop: Header=BB12_226 Depth=2
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, 128
	b	.LBB12_243
.LBB12_233:                             #   in Loop: Header=BB12_226 Depth=2
.Ltmp337:                               # EH_LABEL
	addi.d	$a0, $sp, 648
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZNK12CArchivePath12GetFinalPathEv)
	jirl	$ra, $ra, 0
.Ltmp338:                               # EH_LABEL
# %bb.234:                              #   in Loop: Header=BB12_226 Depth=2
	ld.w	$a0, $sp, 656
	addi.w	$s8, $a0, 1
	st.w	$zero, $s6, 0
	bne	$s8, $s7, .LBB12_236
# %bb.235:                              #   in Loop: Header=BB12_226 Depth=2
	move	$s8, $s7
	b	.LBB12_240
.LBB12_236:                             #   in Loop: Header=BB12_226 Depth=2
	slti	$a0, $a0, -1
	slli.d	$a1, $s8, 2
	masknez	$a1, $a1, $a0
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
.Ltmp340:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp341:                               # EH_LABEL
# %bb.237:                              # %.noexc284.i.i
                                        #   in Loop: Header=BB12_226 Depth=2
	move	$s2, $a0
	blez	$s7, .LBB12_239
# %bb.238:                              # %._crit_edge.thread.i.i282.i.i
                                        #   in Loop: Header=BB12_226 Depth=2
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB12_239:                             #   in Loop: Header=BB12_226 Depth=2
	st.w	$zero, $s2, 0
	move	$s6, $s2
.LBB12_240:                             # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i278.i.i
                                        #   in Loop: Header=BB12_226 Depth=2
	ld.d	$a0, $sp, 648
	move	$a1, $zero
	.p2align	4, , 16
.LBB12_241:                             #   Parent Loop BB12_151 Depth=1
                                        #     Parent Loop BB12_226 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.w	$a2, $a0, $a1
	stx.w	$a2, $s6, $a1
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB12_241
	b	.LBB12_256
.LBB12_242:                             #   in Loop: Header=BB12_226 Depth=2
	move	$a0, $zero
.LBB12_243:                             #   in Loop: Header=BB12_226 Depth=2
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	st.d	$s4, $s5, 120
	slli.d	$a0, $a0, 2
	stx.w	$zero, $s4, $a0
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	st.w	$a0, $s5, 132
	move	$s8, $s4
.LBB12_244:                             # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i.i382.preheader
                                        #   in Loop: Header=BB12_226 Depth=2
	addi.d	$a0, $sp, 648
	.p2align	4, , 16
.LBB12_245:                             # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i.i382
                                        #   Parent Loop BB12_151 Depth=1
                                        #     Parent Loop BB12_226 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a1, $a0, 0
	addi.d	$a0, $a0, 4
	addi.d	$a2, $s8, 4
	st.w	$a1, $s8, 0
	move	$s8, $a2
	bnez	$a1, .LBB12_245
# %bb.246:                              #   in Loop: Header=BB12_226 Depth=2
	st.w	$a3, $s5, 128
.LBB12_247:                             #   in Loop: Header=BB12_226 Depth=2
.Ltmp348:                               # EH_LABEL
	addi.d	$a0, $sp, 648
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZNK12CArchivePath11GetTempPathEv)
	jirl	$ra, $ra, 0
.Ltmp349:                               # EH_LABEL
# %bb.248:                              #   in Loop: Header=BB12_226 Depth=2
	ld.w	$a0, $sp, 656
	addi.w	$s8, $a0, 1
	st.w	$zero, $s6, 0
	bne	$s8, $s7, .LBB12_250
# %bb.249:                              #   in Loop: Header=BB12_226 Depth=2
	move	$s8, $s7
	b	.LBB12_254
.LBB12_250:                             #   in Loop: Header=BB12_226 Depth=2
	slti	$a0, $a0, -1
	slli.d	$a1, $s8, 2
	masknez	$a1, $a1, $a0
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
.Ltmp351:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp352:                               # EH_LABEL
# %bb.251:                              # %.noexc275.i.i
                                        #   in Loop: Header=BB12_226 Depth=2
	move	$s2, $a0
	blez	$s7, .LBB12_253
# %bb.252:                              # %._crit_edge.thread.i.i273.i.i
                                        #   in Loop: Header=BB12_226 Depth=2
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB12_253:                             #   in Loop: Header=BB12_226 Depth=2
	st.w	$zero, $s2, 0
	move	$s6, $s2
.LBB12_254:                             # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i269.i.i
                                        #   in Loop: Header=BB12_226 Depth=2
	ld.d	$a0, $sp, 648
	move	$a1, $zero
	.p2align	4, , 16
.LBB12_255:                             #   Parent Loop BB12_151 Depth=1
                                        #     Parent Loop BB12_226 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.w	$a2, $a0, $a1
	stx.w	$a2, $s6, $a1
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB12_255
.LBB12_256:                             #   in Loop: Header=BB12_226 Depth=2
	ld.w	$s4, $sp, 656
	beqz	$a0, .LBB12_258
# %bb.257:                              #   in Loop: Header=BB12_226 Depth=2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB12_258:                             #   in Loop: Header=BB12_226 Depth=2
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	st.d	$zero, $a0, 1104
.Ltmp354:                               # EH_LABEL
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	move	$a1, $s6
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZN8NWindows5NFile3NIO8COutFile6CreateEPKwb)
	jirl	$ra, $ra, 0
.Ltmp355:                               # EH_LABEL
# %bb.259:                              # %_ZN14COutFileStream6CreateEPKwb.exit.i.i
                                        #   in Loop: Header=BB12_226 Depth=2
	bnez	$a0, .LBB12_276
# %bb.260:                              #   in Loop: Header=BB12_226 Depth=2
	pcaddu18i	$ra, %call36(__errno_location)
	jirl	$ra, $ra, 0
	ld.w	$a1, $a0, 0
	ori	$a0, $zero, 17
	bne	$a1, $a0, .LBB12_263
# %bb.261:                              #   in Loop: Header=BB12_226 Depth=2
	ld.b	$a0, $s5, 96
	andi	$a0, $a0, 1
	beqz	$a0, .LBB12_263
# %bb.262:                              #   in Loop: Header=BB12_226 Depth=2
	addi.w	$s3, $s3, 1
	ori	$a0, $zero, 1
	move	$s7, $s8
	lu12i.w	$a2, 16
	bne	$s3, $a2, .LBB12_226
.LBB12_263:                             #   in Loop: Header=BB12_151 Depth=1
	ld.d	$s2, $fp, 8
	st.w	$a1, $fp, 0
	st.w	$zero, $fp, 16
	st.w	$zero, $s2, 0
	ld.w	$s7, $fp, 20
	addi.w	$s5, $s4, 1
	beq	$s5, $s7, .LBB12_328
# %bb.264:                              #   in Loop: Header=BB12_151 Depth=1
	slti	$a0, $s4, -1
	slli.d	$a1, $s5, 2
	masknez	$a1, $a1, $a0
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
.Ltmp357:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp358:                               # EH_LABEL
# %bb.265:                              # %.noexc123.i
                                        #   in Loop: Header=BB12_151 Depth=1
	move	$s3, $a0
	blez	$s7, .LBB12_326
# %bb.266:                              # %._crit_edge.thread.i.i121.i
                                        #   in Loop: Header=BB12_151 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 16
	b	.LBB12_327
.LBB12_267:                             #   in Loop: Header=BB12_151 Depth=1
	addi.w	$a0, $s3, 0
	slti	$a1, $s2, -1
	slli.d	$a0, $a0, 2
	addi.w	$a2, $zero, -1
	maskeqz	$a2, $a2, $a1
	masknez	$a0, $a0, $a1
	or	$a0, $a2, $a0
.Ltmp318:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp319:                               # EH_LABEL
# %bb.268:                              # %.noexc93.i
                                        #   in Loop: Header=BB12_151 Depth=1
	st.d	$a0, $sp, 648
	st.w	$zero, $a0, 0
	st.w	$s3, $sp, 660
.LBB12_269:                             # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i88.i
                                        #   in Loop: Header=BB12_151 Depth=1
	ld.d	$a1, $sp, 712
	move	$s3, $s6
	.p2align	4, , 16
.LBB12_270:                             #   Parent Loop BB12_151 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a2, $a1, 0
	addi.d	$a1, $a1, 4
	addi.d	$a3, $a0, 4
	st.w	$a2, $a0, 0
	move	$a0, $a3
	bnez	$a2, .LBB12_270
# %bb.271:                              # %_ZN11CStringBaseIwEC2ERKS0_.exit.i.i
                                        #   in Loop: Header=BB12_151 Depth=1
	st.w	$s2, $sp, 656
.Ltmp321:                               # EH_LABEL
	addi.d	$a0, $sp, 648
	addi.d	$a1, $sp, 632
	pcaddu18i	$ra, %call36(_ZN11CStringBaseIwEpLERKS0_)
	jirl	$ra, $ra, 0
.Ltmp322:                               # EH_LABEL
# %bb.272:                              # %_ZplIwE11CStringBaseIT_ERKS2_S4_.exit.i
                                        #   in Loop: Header=BB12_151 Depth=1
	ld.d	$s2, $s8, 104
	st.w	$zero, $s8, 112
	st.w	$zero, $s2, 0
	ld.w	$a0, $sp, 656
	ld.w	$s5, $s8, 116
	addi.w	$s4, $a0, 1
	beq	$s4, $s5, .LBB12_284
# %bb.273:                              #   in Loop: Header=BB12_151 Depth=1
	slti	$a0, $a0, -1
	slli.d	$a1, $s4, 2
	masknez	$a1, $a1, $a0
	addi.w	$a2, $zero, -1
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
.Ltmp324:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp325:                               # EH_LABEL
# %bb.274:                              # %.noexc86.i
                                        #   in Loop: Header=BB12_151 Depth=1
	move	$s3, $a0
	blez	$s5, .LBB12_282
# %bb.275:                              # %._crit_edge.thread.i.i84.i
                                        #   in Loop: Header=BB12_151 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, 112
	b	.LBB12_283
.LBB12_276:                             #   in Loop: Header=BB12_151 Depth=1
.Ltmp362:                               # EH_LABEL
	ori	$a0, $zero, 16
	ld.d	$s8, $sp, 152                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp363:                               # EH_LABEL
# %bb.277:                              # %.noexc129.i
                                        #   in Loop: Header=BB12_151 Depth=1
	move	$s2, $a0
	vld	$vr0, $sp, 304                  # 16-byte Folded Reload
	vst	$vr0, $a0, 0
	addi.w	$s3, $s4, 1
	slti	$a0, $s4, -1
	slli.d	$a1, $s3, 2
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	maskeqz	$a2, $a2, $a0
	masknez	$a0, $a1, $a0
	or	$a0, $a2, $a0
.Ltmp364:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp365:                               # EH_LABEL
# %bb.278:                              # %.noexc.i.i
                                        #   in Loop: Header=BB12_151 Depth=1
	move	$a1, $zero
	st.d	$a0, $s2, 0
	st.w	$zero, $a0, 0
	st.w	$s3, $s2, 12
.LBB12_279:                             # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i125.i
                                        #   Parent Loop BB12_151 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.w	$a2, $s6, $a1
	stx.w	$a2, $a0, $a1
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB12_279
# %bb.280:                              #   in Loop: Header=BB12_151 Depth=1
	st.w	$s4, $s2, 8
.Ltmp367:                               # EH_LABEL
	addi.d	$a0, $sp, 376
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp368:                               # EH_LABEL
# %bb.281:                              # %_ZN11CStringBaseIwED2Ev.exit289.i.thread.i
                                        #   in Loop: Header=BB12_151 Depth=1
	ld.w	$a0, $sp, 388
	ld.d	$a1, $sp, 392
	slli.d	$a2, $a0, 3
	stx.d	$s2, $a1, $a2
	addi.d	$a0, $a0, 1
	st.w	$a0, $sp, 388
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	st.d	$zero, $sp, 136                 # 8-byte Folded Spill
	move	$s7, $s8
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
	b	.LBB12_293
.LBB12_282:                             #   in Loop: Header=BB12_151 Depth=1
	move	$a0, $zero
.LBB12_283:                             #   in Loop: Header=BB12_151 Depth=1
	st.d	$s3, $s8, 104
	slli.d	$a0, $a0, 2
	stx.w	$zero, $s3, $a0
	st.w	$s4, $s8, 116
	move	$s2, $s3
	move	$s3, $s6
.LBB12_284:                             # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i79.i
                                        #   in Loop: Header=BB12_151 Depth=1
	ld.d	$a0, $sp, 648
	move	$a1, $zero
	.p2align	4, , 16
.LBB12_285:                             #   Parent Loop BB12_151 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.w	$a2, $a0, $a1
	stx.w	$a2, $s2, $a1
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB12_285
# %bb.286:                              #   in Loop: Header=BB12_151 Depth=1
	ld.w	$a1, $sp, 656
	st.w	$a1, $s8, 112
	beqz	$a0, .LBB12_288
# %bb.287:                              #   in Loop: Header=BB12_151 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB12_288:                             # %_ZN11CStringBaseIwED2Ev.exit296.i.i
                                        #   in Loop: Header=BB12_151 Depth=1
	ld.d	$a0, $sp, 632
	beqz	$a0, .LBB12_290
# %bb.289:                              #   in Loop: Header=BB12_151 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB12_290:                             # %_ZN11CStringBaseIwED2Ev.exit297.i.i
                                        #   in Loop: Header=BB12_151 Depth=1
	ld.d	$a0, $sp, 712
	beqz	$a0, .LBB12_292
# %bb.291:                              #   in Loop: Header=BB12_151 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB12_292:                             # %_ZN11CStringBaseIwED2Ev.exit298.i.i
                                        #   in Loop: Header=BB12_151 Depth=1
	move	$s7, $zero
	addi.d	$a0, $sp, 376
	st.d	$a0, $s8, 120
	st.d	$zero, $s8, 12
	vld	$vr0, $sp, 304                  # 16-byte Folded Reload
	vst	$vr0, $s8, 20
	st.w	$zero, $s8, 36
	st.d	$s8, $sp, 136                   # 8-byte Folded Spill
.LBB12_293:                             # %_ZN9CMyComPtrI20ISequentialOutStreamEaSEPS0_.exit.i.i
                                        #   in Loop: Header=BB12_151 Depth=1
	move	$s2, $s3
	ld.d	$a0, $sp, 768
.Ltmp375:                               # EH_LABEL
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_Z13SetPropertiesP8IUnknownRK13CObjectVectorI9CPropertyE)
	jirl	$ra, $ra, 0
.Ltmp376:                               # EH_LABEL
# %bb.294:                              #   in Loop: Header=BB12_151 Depth=1
	move	$s3, $a0
	bnez	$a0, .LBB12_363
# %bb.295:                              #   in Loop: Header=BB12_151 Depth=1
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	beqz	$a0, .LBB12_355
# %bb.296:                              #   in Loop: Header=BB12_151 Depth=1
.Ltmp378:                               # EH_LABEL
	ori	$a0, $zero, 1112
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp379:                               # EH_LABEL
# %bb.297:                              #   in Loop: Header=BB12_151 Depth=1
	move	$s6, $a0
	st.w	$zero, $a0, 16
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	addi.d	$a0, $a1, 16
	st.d	$a0, $s6, 0
	addi.d	$a0, $a1, 96
	st.d	$a0, $s6, 8
	pcalau12i	$a0, %got_pc_hi20(_ZTVN8NWindows5NFile3NIO9CFileBaseE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTVN8NWindows5NFile3NIO9CFileBaseE)
	addi.d	$a0, $a0, 16
	addi.w	$s4, $zero, -1
	st.d	$a0, $s6, 24
	move	$a0, $s4
	lu32i.d	$a0, 0
	st.w	$a0, $s6, 32
	vld	$vr0, $sp, 304                  # 16-byte Folded Reload
	vst	$vr0, $s6, 40
.Ltmp381:                               # EH_LABEL
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp382:                               # EH_LABEL
# %bb.298:                              #   in Loop: Header=BB12_151 Depth=1
	st.d	$a0, $s6, 40
	st.b	$zero, $a0, 0
	ori	$a0, $zero, 4
	st.w	$a0, $s6, 52
	pcalau12i	$a0, %pc_hi20(_ZTVN8NWindows5NFile3NIO7CInFileE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTVN8NWindows5NFile3NIO7CInFileE+16)
	st.d	$a0, $s6, 24
	st.b	$zero, $s6, 20
.Ltmp384:                               # EH_LABEL
	move	$a0, $s6
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	jirl	$ra, $a1, 0
.Ltmp385:                               # EH_LABEL
# %bb.299:                              # %_ZN9CMyComPtrI9IInStreamEC2EPS0_.exit.i.i
                                        #   in Loop: Header=BB12_151 Depth=1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
.Ltmp387:                               # EH_LABEL
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZN13CInFileStream4OpenEPKw)
	jirl	$ra, $ra, 0
.Ltmp388:                               # EH_LABEL
# %bb.300:                              #   in Loop: Header=BB12_151 Depth=1
	beqz	$a0, .LBB12_309
# %bb.301:                              #   in Loop: Header=BB12_151 Depth=1
	ld.w	$a0, $s0, 300
	beqz	$a0, .LBB12_313
# %bb.302:                              #   in Loop: Header=BB12_151 Depth=1
.Ltmp394:                               # EH_LABEL
	ori	$a0, $zero, 1112
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp395:                               # EH_LABEL
# %bb.303:                              #   in Loop: Header=BB12_151 Depth=1
.Ltmp396:                               # EH_LABEL
	move	$s5, $a0
	pcaddu18i	$ra, %call36(_ZN14COutFileStreamC2Ev)
	jirl	$ra, $ra, 0
.Ltmp397:                               # EH_LABEL
# %bb.304:                              #   in Loop: Header=BB12_151 Depth=1
	ld.d	$a0, $s5, 0
	ld.d	$a1, $a0, 8
.Ltmp399:                               # EH_LABEL
	move	$a0, $s5
	jirl	$ra, $a1, 0
.Ltmp400:                               # EH_LABEL
# %bb.305:                              # %_ZN9CMyComPtrI20ISequentialOutStreamEaSEPS0_.exit312.i.i
                                        #   in Loop: Header=BB12_151 Depth=1
.Ltmp401:                               # EH_LABEL
	addi.d	$a0, $sp, 648
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZNK12CArchivePath12GetFinalPathEv)
	jirl	$ra, $ra, 0
.Ltmp402:                               # EH_LABEL
# %bb.306:                              #   in Loop: Header=BB12_151 Depth=1
	ld.d	$a1, $sp, 648
	st.d	$zero, $s5, 1104
	addi.d	$a0, $s5, 16
.Ltmp404:                               # EH_LABEL
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZN8NWindows5NFile3NIO8COutFile6CreateEPKwb)
	jirl	$ra, $ra, 0
.Ltmp405:                               # EH_LABEL
# %bb.307:                              # %_ZN14COutFileStream6CreateEPKwb.exit314.i.i
                                        #   in Loop: Header=BB12_151 Depth=1
	move	$s2, $a0
	beqz	$a0, .LBB12_315
# %bb.308:                              #   in Loop: Header=BB12_151 Depth=1
	move	$s3, $zero
	b	.LBB12_318
.LBB12_309:                             #   in Loop: Header=BB12_151 Depth=1
	pcaddu18i	$ra, %call36(__errno_location)
	jirl	$ra, $ra, 0
	ld.w	$a0, $a0, 0
	ld.d	$s2, $fp, 40
	st.w	$a0, $fp, 0
	st.w	$zero, $fp, 48
	st.w	$zero, $s2, 0
	ld.w	$s5, $fp, 52
	ori	$a0, $zero, 29
	beq	$s5, $a0, .LBB12_342
# %bb.310:                              #   in Loop: Header=BB12_151 Depth=1
.Ltmp389:                               # EH_LABEL
	ori	$a0, $zero, 116
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp390:                               # EH_LABEL
# %bb.311:                              # %.noexc77.i
                                        #   in Loop: Header=BB12_151 Depth=1
	move	$s3, $a0
	blez	$s5, .LBB12_340
# %bb.312:                              # %._crit_edge.thread.i.i75.i
                                        #   in Loop: Header=BB12_151 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 48
	b	.LBB12_341
.LBB12_313:                             #   in Loop: Header=BB12_151 Depth=1
	ld.d	$a0, $s8, 0
	ld.d	$a1, $a0, 8
.Ltmp411:                               # EH_LABEL
	move	$a0, $s8
	jirl	$ra, $a1, 0
.Ltmp412:                               # EH_LABEL
# %bb.314:                              #   in Loop: Header=BB12_151 Depth=1
	move	$s2, $zero
	st.d	$zero, $sp, 240                 # 8-byte Folded Spill
	move	$a1, $s8
	b	.LBB12_322
.LBB12_315:                             #   in Loop: Header=BB12_151 Depth=1
	pcaddu18i	$ra, %call36(__errno_location)
	jirl	$ra, $ra, 0
	ld.w	$a0, $a0, 0
	st.w	$a0, $fp, 0
.Ltmp406:                               # EH_LABEL
	addi.d	$a1, $sp, 648
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN11CStringBaseIwEaSERKS0_)
	jirl	$ra, $ra, 0
.Ltmp407:                               # EH_LABEL
# %bb.316:                              #   in Loop: Header=BB12_151 Depth=1
.Ltmp408:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a1, $a0, %pc_lo12(.L.str.13)
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN11CStringBaseIwEaSEPKw)
	jirl	$ra, $ra, 0
.Ltmp409:                               # EH_LABEL
# %bb.317:                              #   in Loop: Header=BB12_151 Depth=1
	lu12i.w	$a0, -524284
	ori	$s3, $a0, 5
.LBB12_318:                             #   in Loop: Header=BB12_151 Depth=1
	ld.d	$a0, $sp, 648
	beqz	$a0, .LBB12_320
# %bb.319:                              #   in Loop: Header=BB12_151 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB12_320:                             # %_ZN11CStringBaseIwED2Ev.exit316.i.i
                                        #   in Loop: Header=BB12_151 Depth=1
	beqz	$s2, .LBB12_324
# %bb.321:                              #   in Loop: Header=BB12_151 Depth=1
	move	$s2, $s5
	st.d	$s3, $sp, 240                   # 8-byte Folded Spill
	move	$a1, $s5
.LBB12_322:                             # %_ZN9CMyComPtrI20ISequentialOutStreamEaSERKS1_.exit.i.i
                                        #   in Loop: Header=BB12_151 Depth=1
.Ltmp414:                               # EH_LABEL
	move	$a0, $s6
	move	$s5, $a1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZN9NCompress10CopyStreamEP19ISequentialInStreamP20ISequentialOutStreamP21ICompressProgressInfo)
	jirl	$ra, $ra, 0
.Ltmp415:                               # EH_LABEL
# %bb.323:                              #   in Loop: Header=BB12_151 Depth=1
	move	$s3, $a0
	beqz	$a0, .LBB12_337
.LBB12_324:                             #   in Loop: Header=BB12_151 Depth=1
	move	$s2, $zero
.LBB12_325:                             #   in Loop: Header=BB12_151 Depth=1
	ld.d	$a1, $s5, 0
	ld.d	$a1, $a1, 16
.Ltmp426:                               # EH_LABEL
	move	$a0, $s5
	jirl	$ra, $a1, 0
.Ltmp427:                               # EH_LABEL
	b	.LBB12_353
.LBB12_326:                             #   in Loop: Header=BB12_151 Depth=1
	move	$a0, $zero
.LBB12_327:                             #   in Loop: Header=BB12_151 Depth=1
	st.d	$s3, $fp, 8
	slli.d	$a0, $a0, 2
	stx.w	$zero, $s3, $a0
	st.w	$s5, $fp, 20
	move	$s2, $s3
.LBB12_328:                             # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i116.i.preheader
                                        #   in Loop: Header=BB12_151 Depth=1
	move	$a0, $zero
.LBB12_329:                             # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i116.i
                                        #   Parent Loop BB12_151 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.w	$a1, $s6, $a0
	stx.w	$a1, $s2, $a0
	addi.d	$a0, $a0, 4
	bnez	$a1, .LBB12_329
# %bb.330:                              # %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i120.i
                                        #   in Loop: Header=BB12_151 Depth=1
	ld.d	$s2, $fp, 40
	st.w	$s4, $fp, 16
	st.w	$zero, $fp, 48
	st.w	$zero, $s2, 0
	ld.w	$s4, $fp, 52
	ori	$a0, $zero, 23
	ld.d	$s8, $sp, 152                   # 8-byte Folded Reload
	beq	$s4, $a0, .LBB12_336
# %bb.331:                              #   in Loop: Header=BB12_151 Depth=1
.Ltmp359:                               # EH_LABEL
	ori	$a0, $zero, 92
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp360:                               # EH_LABEL
# %bb.332:                              # %.noexc114.i
                                        #   in Loop: Header=BB12_151 Depth=1
	move	$s3, $a0
	blez	$s4, .LBB12_334
# %bb.333:                              # %._crit_edge.thread.i.i112.i
                                        #   in Loop: Header=BB12_151 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 48
	b	.LBB12_335
.LBB12_334:                             #   in Loop: Header=BB12_151 Depth=1
	move	$a0, $zero
.LBB12_335:                             #   in Loop: Header=BB12_151 Depth=1
	st.d	$s3, $fp, 40
	slli.d	$a0, $a0, 2
	stx.w	$zero, $s3, $a0
	ori	$a0, $zero, 23
	st.w	$a0, $fp, 52
	move	$s2, $s3
.LBB12_336:                             # %_ZN11CStringBaseIwED2Ev.exit289.i.i
                                        #   in Loop: Header=BB12_151 Depth=1
	pcalau12i	$a0, %pc_hi20(.LCPI12_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI12_0)
	vst	$vr0, $s2, 0
	pcalau12i	$a0, %pc_hi20(.LCPI12_1)
	vld	$vr0, $a0, %pc_lo12(.LCPI12_1)
	pcalau12i	$a0, %pc_hi20(.LCPI12_2)
	vld	$vr1, $a0, %pc_lo12(.LCPI12_2)
	pcalau12i	$a0, %pc_hi20(.LCPI12_20)
	vld	$vr2, $a0, %pc_lo12(.LCPI12_20)
	pcalau12i	$a0, %pc_hi20(.LCPI12_21)
	vld	$vr3, $a0, %pc_lo12(.LCPI12_21)
	vst	$vr0, $s2, 16
	vst	$vr1, $s2, 32
	vst	$vr2, $s2, 48
	vst	$vr3, $s2, 64
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	st.d	$a0, $s2, 80
	st.w	$zero, $s2, 88
	ori	$a0, $zero, 22
	st.w	$a0, $fp, 48
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, -524284
	ori	$s3, $a0, 5
	b	.LBB12_363
.LBB12_337:                             #   in Loop: Header=BB12_151 Depth=1
	beqz	$s2, .LBB12_373
# %bb.338:                              #   in Loop: Header=BB12_151 Depth=1
.Ltmp417:                               # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN14COutFileStream5CloseEv)
	jirl	$ra, $ra, 0
.Ltmp418:                               # EH_LABEL
# %bb.339:                              #   in Loop: Header=BB12_151 Depth=1
	sltui	$s2, $a0, 1
	masknez	$a0, $a0, $s2
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	maskeqz	$a1, $a1, $s2
	or	$s3, $a1, $a0
	b	.LBB12_325
.LBB12_340:                             #   in Loop: Header=BB12_151 Depth=1
	move	$a0, $zero
.LBB12_341:                             #   in Loop: Header=BB12_151 Depth=1
	st.d	$s3, $fp, 40
	slli.d	$a0, $a0, 2
	stx.w	$zero, $s3, $a0
	ori	$a0, $zero, 29
	st.w	$a0, $fp, 52
	move	$s2, $s3
.LBB12_342:                             # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i70.i
                                        #   in Loop: Header=BB12_151 Depth=1
	pcalau12i	$a0, %pc_hi20(.LCPI12_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI12_0)
	pcalau12i	$a0, %pc_hi20(.LCPI12_1)
	vld	$vr1, $a0, %pc_lo12(.LCPI12_1)
	pcalau12i	$a0, %pc_hi20(.LCPI12_2)
	vld	$vr2, $a0, %pc_lo12(.LCPI12_2)
	vst	$vr0, $s2, 0
	vst	$vr1, $s2, 16
	vst	$vr2, $s2, 32
	pcalau12i	$a0, %pc_hi20(.LCPI12_20)
	vld	$vr0, $a0, %pc_lo12(.LCPI12_20)
	pcalau12i	$a0, %pc_hi20(.LCPI12_22)
	vld	$vr1, $a0, %pc_lo12(.LCPI12_22)
	pcalau12i	$a0, %pc_hi20(.LCPI12_23)
	vld	$vr2, $a0, %pc_lo12(.LCPI12_23)
	pcalau12i	$a0, %pc_hi20(.LCPI12_24)
	vld	$vr3, $a0, %pc_lo12(.LCPI12_24)
	vst	$vr0, $s2, 48
	vst	$vr1, $s2, 64
	vst	$vr2, $s2, 80
	vst	$vr3, $s2, 96
	st.w	$zero, $s2, 112
	ori	$a0, $zero, 28
	st.w	$a0, $fp, 48
	lu12i.w	$a0, -524284
	ori	$s3, $a0, 5
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	beq	$a0, $a1, .LBB12_347
# %bb.343:                              #   in Loop: Header=BB12_151 Depth=1
	ld.d	$s2, $fp, 8
	st.w	$zero, $fp, 16
	st.w	$zero, $s2, 0
	ld.w	$a0, $s0, 216
	ld.w	$s5, $fp, 20
	addi.w	$a1, $a0, 1
	beq	$a1, $s5, .LBB12_350
# %bb.344:                              #   in Loop: Header=BB12_151 Depth=1
	slti	$a0, $a0, -1
	st.d	$a1, $sp, 240                   # 8-byte Folded Spill
	slli.d	$a1, $a1, 2
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s4, $a0
	or	$a0, $a0, $a1
.Ltmp391:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp392:                               # EH_LABEL
# %bb.345:                              # %.noexc.i381
                                        #   in Loop: Header=BB12_151 Depth=1
	move	$s4, $a0
	blez	$s5, .LBB12_348
# %bb.346:                              # %._crit_edge.thread.i.i.i
                                        #   in Loop: Header=BB12_151 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 16
	b	.LBB12_349
.LBB12_347:                             #   in Loop: Header=BB12_151 Depth=1
	move	$s2, $zero
	b	.LBB12_353
.LBB12_348:                             #   in Loop: Header=BB12_151 Depth=1
	move	$a0, $zero
.LBB12_349:                             #   in Loop: Header=BB12_151 Depth=1
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	st.d	$s4, $fp, 8
	slli.d	$a0, $a0, 2
	stx.w	$zero, $s4, $a0
	st.w	$a1, $fp, 20
	move	$s2, $s4
.LBB12_350:                             # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i
                                        #   in Loop: Header=BB12_151 Depth=1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
.LBB12_351:                             #   Parent Loop BB12_151 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a1, $a0, 0
	addi.d	$a0, $a0, 4
	addi.d	$a2, $s2, 4
	st.w	$a1, $s2, 0
	move	$s2, $a2
	bnez	$a1, .LBB12_351
# %bb.352:                              # %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i.i
                                        #   in Loop: Header=BB12_151 Depth=1
	ld.w	$a0, $s0, 216
	move	$s2, $zero
	st.w	$a0, $fp, 16
.LBB12_353:                             # %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit.i.i
                                        #   in Loop: Header=BB12_151 Depth=1
	ld.d	$a0, $s6, 0
	ld.d	$a1, $a0, 16
.Ltmp429:                               # EH_LABEL
	move	$a0, $s6
	jirl	$ra, $a1, 0
.Ltmp430:                               # EH_LABEL
# %bb.354:                              # %_ZN9CMyComPtrI9IInStreamED2Ev.exit.i.i
                                        #   in Loop: Header=BB12_151 Depth=1
	beqz	$s2, .LBB12_363
.LBB12_355:                             #   in Loop: Header=BB12_151 Depth=1
	ld.d	$a0, $sp, 768
	ld.d	$a1, $a0, 0
	ld.w	$a2, $sp, 740
	ld.d	$a4, $a1, 40
.Ltmp432:                               # EH_LABEL
	move	$a1, $s8
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	jirl	$ra, $a4, 0
.Ltmp433:                               # EH_LABEL
# %bb.356:                              #   in Loop: Header=BB12_151 Depth=1
	move	$s3, $a0
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 32
.Ltmp434:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp435:                               # EH_LABEL
# %bb.357:                              #   in Loop: Header=BB12_151 Depth=1
	bnez	$s3, .LBB12_363
# %bb.358:                              #   in Loop: Header=BB12_151 Depth=1
	beqz	$s7, .LBB12_360
# %bb.359:                              #   in Loop: Header=BB12_151 Depth=1
.Ltmp436:                               # EH_LABEL
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZN14COutFileStream5CloseEv)
	jirl	$ra, $ra, 0
.Ltmp437:                               # EH_LABEL
	b	.LBB12_362
.LBB12_360:                             #   in Loop: Header=BB12_151 Depth=1
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	beqz	$a0, .LBB12_372
# %bb.361:                              #   in Loop: Header=BB12_151 Depth=1
.Ltmp438:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN18COutMultiVolStream5CloseEv)
	jirl	$ra, $ra, 0
.Ltmp439:                               # EH_LABEL
.LBB12_362:                             #   in Loop: Header=BB12_151 Depth=1
	move	$s3, $a0
.LBB12_363:                             #   in Loop: Header=BB12_151 Depth=1
	ld.d	$a0, $s8, 0
	ld.d	$a1, $a0, 16
.Ltmp447:                               # EH_LABEL
	move	$a0, $s8
	jirl	$ra, $a1, 0
.Ltmp448:                               # EH_LABEL
.LBB12_364:                             # %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit324.i.i
                                        #   in Loop: Header=BB12_151 Depth=1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp450:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp451:                               # EH_LABEL
.LBB12_365:                             # %_ZN9CMyComPtrI22IArchiveUpdateCallbackED2Ev.exit.i.i
                                        #   in Loop: Header=BB12_151 Depth=1
	addi.d	$a0, $sp, 728
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	.p2align	4, , 16
.LBB12_366:                             #   in Loop: Header=BB12_151 Depth=1
	ld.d	$a0, $sp, 768
	beqz	$a0, .LBB12_368
# %bb.367:                              #   in Loop: Header=BB12_151 Depth=1
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp453:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp454:                               # EH_LABEL
.LBB12_368:                             # %_ZL8CompressP7CCodecsRKN14NUpdateArchive10CActionSetEP10IInArchiveRK22CCompressionMethodModeR12CArchivePathRK13CObjectVectorI8CArcItemEbbbRK9CDirItemsbRK11CStringBaseIwERK13CRecordVectorIyER10CTempFilesR16CUpdateErrorInfoP17IUpdateCallbackUI.exit.i
                                        #   in Loop: Header=BB12_151 Depth=1
	ld.d	$s4, $sp, 288                   # 8-byte Folded Reload
	bnez	$s3, .LBB12_408
# %bb.369:                              #   in Loop: Header=BB12_151 Depth=1
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 136
.Ltmp456:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp457:                               # EH_LABEL
# %bb.370:                              # %.noexc390
                                        #   in Loop: Header=BB12_151 Depth=1
	move	$s3, $a0
	bnez	$a0, .LBB12_408
# %bb.371:                              #   in Loop: Header=BB12_151 Depth=1
	ld.w	$a0, $s0, 52
	addi.d	$s1, $s1, 1
	blt	$s1, $a0, .LBB12_151
	b	.LBB12_374
.LBB12_372:                             #   in Loop: Header=BB12_151 Depth=1
	move	$s3, $zero
	b	.LBB12_363
.LBB12_373:                             #   in Loop: Header=BB12_151 Depth=1
	ori	$s2, $zero, 1
	ld.d	$s3, $sp, 240                   # 8-byte Folded Reload
	b	.LBB12_325
.LBB12_374:                             # %.loopexit
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	beqz	$a0, .LBB12_378
# %bb.375:
.Ltmp459:                               # EH_LABEL
	addi.d	$a0, $sp, 552
	pcaddu18i	$ra, %call36(_ZN12CArchiveLink5CloseEv)
	jirl	$ra, $ra, 0
.Ltmp460:                               # EH_LABEL
# %bb.376:
	move	$s3, $a0
	bnez	$a0, .LBB12_408
# %bb.377:
.Ltmp462:                               # EH_LABEL
	addi.d	$a0, $sp, 552
	pcaddu18i	$ra, %call36(_ZN12CArchiveLink7ReleaseEv)
	jirl	$ra, $ra, 0
.Ltmp463:                               # EH_LABEL
.LBB12_378:
.Ltmp464:                               # EH_LABEL
	addi.d	$a0, $sp, 376
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp465:                               # EH_LABEL
# %bb.379:
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	beqz	$a0, .LBB12_407
# %bb.380:
	ld.d	$a0, $s0, 56
	ld.d	$a0, $a0, 0
	addi.d	$a1, $a0, 16
.Ltmp467:                               # EH_LABEL
	addi.d	$a0, $sp, 648
	pcaddu18i	$ra, %call36(_ZNK12CArchivePath11GetTempPathEv)
	jirl	$ra, $ra, 0
.Ltmp468:                               # EH_LABEL
# %bb.381:
	ld.d	$s3, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	beqz	$a0, .LBB12_384
# %bb.382:
	ld.d	$a0, $sp, 536
.Ltmp470:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN8NWindows5NFile10NDirectory16DeleteFileAlwaysEPKw)
	jirl	$ra, $ra, 0
.Ltmp471:                               # EH_LABEL
# %bb.383:
	beqz	$a0, .LBB12_401
.LBB12_384:
	ld.d	$a0, $sp, 648
	ld.d	$a1, $sp, 536
.Ltmp474:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN8NWindows5NFile10NDirectory10MyMoveFileEPKwS3_)
	jirl	$ra, $ra, 0
.Ltmp475:                               # EH_LABEL
# %bb.385:
	ori	$s0, $zero, 1
	bnez	$a0, .LBB12_404
# %bb.386:
	pcaddu18i	$ra, %call36(__errno_location)
	jirl	$ra, $ra, 0
	ld.w	$a0, $a0, 0
	st.w	$a0, $fp, 0
	addi.d	$a0, $fp, 40
.Ltmp476:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.9)
	addi.d	$a1, $a1, %pc_lo12(.L.str.9)
	pcaddu18i	$ra, %call36(_ZN11CStringBaseIwEaSEPKw)
	jirl	$ra, $ra, 0
.Ltmp477:                               # EH_LABEL
# %bb.387:
	addi.d	$a0, $fp, 8
	ori	$s0, $zero, 24
.Ltmp478:                               # EH_LABEL
	addi.d	$a1, $sp, 648
	pcaddu18i	$ra, %call36(_ZN11CStringBaseIwEaSERKS0_)
	jirl	$ra, $ra, 0
.Ltmp479:                               # EH_LABEL
	b	.LBB12_402
.LBB12_388:
	move	$s3, $s2
	ld.d	$s4, $sp, 288                   # 8-byte Folded Reload
	b	.LBB12_410
.LBB12_389:
	vld	$vr0, $sp, 304                  # 16-byte Folded Reload
	vst	$vr0, $sp, 656
	ori	$a0, $zero, 4
	st.d	$a0, $sp, 672
	pcalau12i	$a0, %pc_hi20(_ZTV13CRecordVectorIiE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CRecordVectorIiE+16)
	ld.w	$s1, $s0, 0
	st.d	$a0, $sp, 648
	bltz	$s1, .LBB12_392
# %bb.390:
.Ltmp172:                               # EH_LABEL
	addi.d	$a0, $sp, 648
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
.Ltmp173:                               # EH_LABEL
# %bb.391:                              # %_ZN13CRecordVectorIiE3AddEi.exit
	ld.w	$a0, $sp, 660
	ld.d	$a1, $sp, 664
	slli.d	$a0, $a0, 2
	stx.w	$s1, $a1, $a0
	ld.w	$a0, $sp, 660
	addi.d	$a0, $a0, 1
	st.w	$a0, $sp, 660
.LBB12_392:
.Ltmp175:                               # EH_LABEL
	addi.d	$a0, $sp, 552
	addi.d	$a2, $sp, 648
	addi.d	$a5, $sp, 536
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	move	$a3, $zero
	move	$a4, $zero
	move	$a6, $s6
	pcaddu18i	$ra, %call36(_ZN12CArchiveLink5Open2EP7CCodecsRK13CRecordVectorIiEbP9IInStreamRK11CStringBaseIwEP15IOpenCallbackUI)
	jirl	$ra, $ra, 0
.Ltmp176:                               # EH_LABEL
# %bb.393:
	move	$s2, $a0
	lu12i.w	$a0, -524284
	ori	$a0, $a0, 4
	beq	$s2, $a0, .LBB12_396
# %bb.394:
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	ld.d	$a2, $a0, 0
	ld.d	$a1, $sp, 536
	ld.d	$a3, $a2, 88
.Ltmp177:                               # EH_LABEL
	move	$a2, $s2
	jirl	$ra, $a3, 0
.Ltmp178:                               # EH_LABEL
# %bb.395:
	beqz	$a0, .LBB12_399
.LBB12_396:
	move	$s8, $a0
.LBB12_397:
	move	$s1, $zero
.LBB12_398:
	addi.d	$a0, $sp, 648
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 448
	bnez	$a0, .LBB12_61
	b	.LBB12_62
.LBB12_399:
	beqz	$s2, .LBB12_425
# %bb.400:
	move	$s1, $zero
	move	$s8, $s2
	b	.LBB12_398
.LBB12_401:
	pcaddu18i	$ra, %call36(__errno_location)
	jirl	$ra, $ra, 0
	ld.w	$a0, $a0, 0
	st.w	$a0, $fp, 0
	addi.d	$a0, $fp, 40
	ori	$s0, $zero, 8
.Ltmp472:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.8)
	addi.d	$a1, $a1, %pc_lo12(.L.str.8)
	pcaddu18i	$ra, %call36(_ZN11CStringBaseIwEaSEPKw)
	jirl	$ra, $ra, 0
.Ltmp473:                               # EH_LABEL
.LBB12_402:                             # %.invoke
	add.d	$a0, $fp, $s0
.Ltmp480:                               # EH_LABEL
	addi.d	$a1, $sp, 536
	pcaddu18i	$ra, %call36(_ZN11CStringBaseIwEaSERKS0_)
	jirl	$ra, $ra, 0
.Ltmp481:                               # EH_LABEL
# %bb.403:
	move	$s0, $zero
	lu12i.w	$a0, -524284
	ori	$s3, $a0, 5
.LBB12_404:
	ld.d	$a0, $sp, 648
	beqz	$a0, .LBB12_406
# %bb.405:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB12_406:                             # %_ZN11CStringBaseIwED2Ev.exit392
	beqz	$s0, .LBB12_408
.LBB12_407:
	move	$s3, $zero
.LBB12_408:                             # %_ZL19UpdateWithItemListsP7CCodecsR14CUpdateOptionsP10IInArchiveRK13CObjectVectorI8CArcItemER9CDirItemsR10CTempFilesR16CUpdateErrorInfoP18IUpdateCallbackUI2.exit.thread
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	st.d	$a0, $sp, 344
.Ltmp489:                               # EH_LABEL
	addi.d	$a0, $sp, 344
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp490:                               # EH_LABEL
# %bb.409:                              # %_ZN13CObjectVectorI8CArcItemED2Ev.exit
	addi.d	$a0, $sp, 344
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
.LBB12_410:                             # %.thread410
.Ltmp492:                               # EH_LABEL
	addi.d	$a0, $sp, 376
	pcaddu18i	$ra, %call36(_ZN10CTempFiles5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp493:                               # EH_LABEL
# %bb.411:
	st.d	$s4, $sp, 376
.Ltmp495:                               # EH_LABEL
	addi.d	$a0, $sp, 376
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp496:                               # EH_LABEL
# %bb.412:                              # %_ZN11CStringBaseIwED2Ev.exit393
	addi.d	$a0, $sp, 376
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
.LBB12_413:
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	st.d	$a0, $sp, 504
.Ltmp498:                               # EH_LABEL
	addi.d	$s1, $sp, 504
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp499:                               # EH_LABEL
# %bb.414:                              # %_ZN13CObjectVectorI8CDirItemED2Ev.exit.i
	addi.d	$fp, $sp, 440
	addi.d	$s0, $sp, 472
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	st.d	$s4, $sp, 408
.Ltmp501:                               # EH_LABEL
	addi.d	$a0, $sp, 408
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp502:                               # EH_LABEL
# %bb.415:                              # %_ZN9CDirItemsD2Ev.exit
	addi.d	$a0, $sp, 408
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	move	$s8, $s3
.LBB12_416:
	ld.d	$a0, $sp, 536
	beqz	$a0, .LBB12_418
# %bb.417:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB12_418:                             # %_ZN11CStringBaseIwED2Ev.exit395
	addi.d	$a0, $sp, 552
	pcaddu18i	$ra, %call36(_ZN12CArchiveLinkD2Ev)
	jirl	$ra, $ra, 0
.LBB12_419:
	addi.w	$a0, $s8, 0
	ld.d	$s8, $sp, 776                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 784                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 792                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 800                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 808                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 816                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 824                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 832                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 840                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 848                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 856                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 864
	ret
.LBB12_420:
	move	$s1, $zero
	move	$s4, $s7
	b	.LBB12_424
.LBB12_421:
	move	$s1, $zero
	move	$s3, $s6
	move	$s4, $s7
	b	.LBB12_424
.LBB12_422:
	addi.d	$a0, $fp, 40
.Ltmp194:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.6)
	addi.d	$a1, $a1, %pc_lo12(.L.str.6)
	pcaddu18i	$ra, %call36(_ZN11CStringBaseIwEaSEPKw)
	jirl	$ra, $ra, 0
.Ltmp195:                               # EH_LABEL
# %bb.423:
	move	$s1, $zero
	move	$s3, $s6
.LBB12_424:                             # %.thread
	addi.d	$a0, $sp, 728
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 648
	pcaddu18i	$ra, %call36(_ZN13CObjectVectorI11CStringBaseIwEED2Ev)
	jirl	$ra, $ra, 0
	move	$s8, $s3
	bnez	$s1, .LBB12_107
	b	.LBB12_413
.LBB12_425:
	ld.w	$a0, $sp, 596
	ori	$a1, $zero, 2
	blt	$a0, $a1, .LBB12_427
# %bb.426:
	lu12i.w	$a0, -524284
	ori	$a0, $a0, 1
	move	$s8, $a0
	lu32i.d	$a0, 0
	st.w	$a0, $fp, 0
	addi.d	$a0, $fp, 40
.Ltmp180:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.5)
	addi.d	$a1, $a1, %pc_lo12(.L.str.5)
	pcaddu18i	$ra, %call36(_ZN11CStringBaseIwEaSEPKw)
	jirl	$ra, $ra, 0
.Ltmp181:                               # EH_LABEL
	b	.LBB12_397
.LBB12_427:
	ld.w	$a0, $sp, 564
	ld.d	$a1, $sp, 568
	alsl.d	$a0, $a0, $a1, 3
	ld.b	$a1, $sp, 444
	ld.d	$a0, $a0, -8
	ld.d	$a2, $sp, 432
	xori	$a1, $a1, 1
	st.b	$a1, $a0, 56
	st.d	$a2, $a0, 48
	ori	$s1, $zero, 1
	lu12i.w	$a0, -524284
	ori	$s8, $a0, 5
	b	.LBB12_398
.LBB12_428:
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(__cxa_allocate_exception)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.L.str.16)
	addi.d	$a1, $a1, %pc_lo12(.L.str.16)
	st.d	$a1, $a0, 0
.Ltmp504:                               # EH_LABEL
	pcalau12i	$a1, %got_pc_hi20(_ZTIPKc)
	ld.d	$a1, $a1, %got_pc_lo12(_ZTIPKc)
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__cxa_throw)
	jirl	$ra, $ra, 0
.Ltmp505:                               # EH_LABEL
	b	.LBB12_432
.LBB12_429:
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(__cxa_allocate_exception)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.L.str.16)
	addi.d	$a1, $a1, %pc_lo12(.L.str.16)
	st.d	$a1, $a0, 0
.Ltmp245:                               # EH_LABEL
	pcalau12i	$a1, %got_pc_hi20(_ZTIPKc)
	ld.d	$a1, $a1, %got_pc_lo12(_ZTIPKc)
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__cxa_throw)
	jirl	$ra, $ra, 0
.Ltmp246:                               # EH_LABEL
	b	.LBB12_432
.LBB12_430:
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(__cxa_allocate_exception)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
	st.d	$a1, $a0, 0
.Ltmp169:                               # EH_LABEL
	pcalau12i	$a1, %got_pc_hi20(_ZTIPKc)
	ld.d	$a1, $a1, %got_pc_lo12(_ZTIPKc)
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__cxa_throw)
	jirl	$ra, $ra, 0
.Ltmp170:                               # EH_LABEL
	b	.LBB12_508
.LBB12_431:
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(__cxa_allocate_exception)
	jirl	$ra, $ra, 0
	lu12i.w	$a1, 345
	ori	$a1, $a1, 4041
	st.w	$a1, $a0, 0
.Ltmp290:                               # EH_LABEL
	pcalau12i	$a1, %got_pc_hi20(_ZTIi)
	ld.d	$a1, $a1, %got_pc_lo12(_ZTIi)
	move	$a2, $zero
	pcaddu18i	$ra, %call36(__cxa_throw)
	jirl	$ra, $ra, 0
.Ltmp291:                               # EH_LABEL
.LBB12_432:
.LBB12_433:
.Ltmp419:                               # EH_LABEL
	b	.LBB12_437
.LBB12_434:
.Ltmp403:                               # EH_LABEL
	b	.LBB12_437
.LBB12_435:
.Ltmp398:                               # EH_LABEL
	st.d	$s8, $sp, 152                   # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a1, $zero, 1112
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB12_455
.LBB12_436:
.Ltmp416:                               # EH_LABEL
.LBB12_437:
	st.d	$s8, $sp, 152                   # 8-byte Folded Spill
	move	$fp, $a0
	b	.LBB12_441
.LBB12_438:
.Ltmp428:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB12_439:
.Ltmp410:                               # EH_LABEL
	st.d	$s8, $sp, 152                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 648
	move	$fp, $a0
	beqz	$a1, .LBB12_441
# %bb.440:
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB12_441:
	ld.d	$a1, $s5, 0
	ld.d	$a1, $a1, 16
.Ltmp420:                               # EH_LABEL
	move	$a0, $s5
	jirl	$ra, $a1, 0
.Ltmp421:                               # EH_LABEL
	b	.LBB12_455
.LBB12_442:
.Ltmp422:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB12_443:
.Ltmp193:                               # EH_LABEL
	b	.LBB12_523
.LBB12_444:
.Ltmp413:                               # EH_LABEL
	b	.LBB12_454
.LBB12_445:
.Ltmp361:                               # EH_LABEL
	b	.LBB12_520
.LBB12_446:
.Ltmp366:                               # EH_LABEL
	move	$fp, $a0
	ori	$a1, $zero, 16
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB12_521
.LBB12_447:
.Ltmp431:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB12_448:
.Ltmp386:                               # EH_LABEL
	b	.LBB12_536
.LBB12_449:
.Ltmp383:                               # EH_LABEL
	st.d	$s8, $sp, 152                   # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a1, $zero, 1112
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB12_538
.LBB12_450:
.Ltmp380:                               # EH_LABEL
	b	.LBB12_536
.LBB12_451:
.Ltmp326:                               # EH_LABEL
	b	.LBB12_461
.LBB12_452:
.Ltmp320:                               # EH_LABEL
	st.d	$s8, $sp, 152                   # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $sp, 632
	beqz	$a0, .LBB12_463
	b	.LBB12_465
.LBB12_453:
.Ltmp393:                               # EH_LABEL
.LBB12_454:                             # %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit320.i.i
	st.d	$s8, $sp, 152                   # 8-byte Folded Spill
	move	$fp, $a0
.LBB12_455:                             # %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit320.i.i
	ld.d	$a0, $s6, 0
	ld.d	$a1, $a0, 16
.Ltmp423:                               # EH_LABEL
	move	$a0, $s6
	jirl	$ra, $a1, 0
.Ltmp424:                               # EH_LABEL
	b	.LBB12_538
.LBB12_456:
.Ltmp425:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB12_457:
.Ltmp336:                               # EH_LABEL
	b	.LBB12_537
.LBB12_458:
.Ltmp331:                               # EH_LABEL
	move	$fp, $a0
	ori	$a1, $zero, 1112
	move	$a0, $s2
	b	.LBB12_470
.LBB12_459:                             # %.loopexit.split-lp.i.i
.Ltmp369:                               # EH_LABEL
	b	.LBB12_520
.LBB12_460:
.Ltmp323:                               # EH_LABEL
.LBB12_461:
	st.d	$s8, $sp, 152                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 648
	move	$fp, $a0
	bnez	$a1, .LBB12_464
# %bb.462:                              # %_ZN11CStringBaseIwED2Ev.exit299.i.i
	ld.d	$a0, $sp, 632
	bnez	$a0, .LBB12_465
.LBB12_463:                             # %_ZN11CStringBaseIwED2Ev.exit300.i.i
	ld.d	$a0, $sp, 712
	bnez	$a0, .LBB12_467
	b	.LBB12_538
.LBB12_464:
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 632
	beqz	$a0, .LBB12_463
.LBB12_465:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 712
	bnez	$a0, .LBB12_467
	b	.LBB12_538
.LBB12_466:
.Ltmp317:                               # EH_LABEL
	st.d	$s8, $sp, 152                   # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $sp, 712
	beqz	$a0, .LBB12_538
.LBB12_467:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB12_538
.LBB12_468:
.Ltmp314:                               # EH_LABEL
	b	.LBB12_536
.LBB12_469:                             # %.body104.i
.Ltmp303:                               # EH_LABEL
	move	$fp, $a0
	addi.d	$s0, $s8, 40
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEED2Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 128
	move	$a0, $s8
.LBB12_470:                             # %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit327.i.i
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB12_539
.LBB12_471:
.Ltmp440:                               # EH_LABEL
	b	.LBB12_536
.LBB12_472:
.Ltmp196:                               # EH_LABEL
	b	.LBB12_523
.LBB12_473:
.Ltmp298:                               # EH_LABEL
	b	.LBB12_477
.LBB12_474:
.Ltmp295:                               # EH_LABEL
	b	.LBB12_480
.LBB12_475:
.Ltmp292:                               # EH_LABEL
	b	.LBB12_480
.LBB12_476:
.Ltmp289:                               # EH_LABEL
.LBB12_477:
	ld.d	$a1, $sp, 712
	move	$fp, $a0
	beqz	$a1, .LBB12_481
# %bb.478:
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB12_481
.LBB12_479:
.Ltmp286:                               # EH_LABEL
.LBB12_480:
	move	$fp, $a0
.LBB12_481:
	ld.d	$a0, $sp, 648
	beqz	$a0, .LBB12_539
# %bb.482:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB12_539
.LBB12_483:
.Ltmp283:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB12_539
.LBB12_484:
.Ltmp179:                               # EH_LABEL
	b	.LBB12_501
.LBB12_485:
.Ltmp469:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB12_507
.LBB12_486:
.Ltmp377:                               # EH_LABEL
	b	.LBB12_536
.LBB12_487:                             # %_ZN9CMyComPtrI9IInStreamED2Ev.exit322.i.loopexit.split-lp.i
.Ltmp308:                               # EH_LABEL
	b	.LBB12_536
.LBB12_488:
.Ltmp174:                               # EH_LABEL
	b	.LBB12_501
.LBB12_489:
.Ltmp449:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB12_490:
.Ltmp461:                               # EH_LABEL
	b	.LBB12_572
.LBB12_491:
.Ltmp353:                               # EH_LABEL
	b	.LBB12_493
.LBB12_492:
.Ltmp342:                               # EH_LABEL
.LBB12_493:
	ld.d	$a1, $sp, 648
	move	$fp, $a0
	beqz	$a1, .LBB12_521
# %bb.494:
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB12_521
.LBB12_495:
.Ltmp185:                               # EH_LABEL
	b	.LBB12_518
.LBB12_496:
.Ltmp452:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB12_497:
.Ltmp280:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB12_540
.LBB12_498:
.Ltmp277:                               # EH_LABEL
	move	$fp, $a0
	ori	$a1, $zero, 160
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB12_540
.LBB12_499:
.Ltmp274:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB12_540
.LBB12_500:
.Ltmp182:                               # EH_LABEL
.LBB12_501:
	move	$fp, $a0
	addi.d	$a0, $sp, 648
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	b	.LBB12_545
.LBB12_502:                             # %_ZN9CMyComPtrI9IInStreamED2Ev.exit322.thread388.i.i
.Ltmp374:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB12_539
.LBB12_503:
.Ltmp466:                               # EH_LABEL
	b	.LBB12_572
.LBB12_504:
.Ltmp347:                               # EH_LABEL
	b	.LBB12_520
.LBB12_505:
.Ltmp482:                               # EH_LABEL
	ld.d	$a1, $sp, 648
	move	$fp, $a0
	beqz	$a1, .LBB12_507
# %bb.506:
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB12_507:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(__cxa_begin_catch)
	jirl	$ra, $ra, 0
.Ltmp483:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_rethrow)
	jirl	$ra, $ra, 0
.Ltmp484:                               # EH_LABEL
.LBB12_508:
.LBB12_509:
.Ltmp208:                               # EH_LABEL
	move	$fp, $a0
	ori	$a1, $zero, 64
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB12_559
.LBB12_510:
.Ltmp350:                               # EH_LABEL
	b	.LBB12_520
.LBB12_511:
.Ltmp339:                               # EH_LABEL
	b	.LBB12_520
.LBB12_512:
.Ltmp150:                               # EH_LABEL
	b	.LBB12_568
.LBB12_513:
.Ltmp485:                               # EH_LABEL
	move	$fp, $a0
.Ltmp486:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__cxa_end_catch)
	jirl	$ra, $ra, 0
.Ltmp487:                               # EH_LABEL
	b	.LBB12_573
.LBB12_514:
.Ltmp488:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB12_515:
.Ltmp231:                               # EH_LABEL
	b	.LBB12_572
.LBB12_516:
.Ltmp271:                               # EH_LABEL
	move	$fp, $a0
	b	.LBB12_540
.LBB12_517:
.Ltmp199:                               # EH_LABEL
.LBB12_518:
	move	$fp, $a0
	b	.LBB12_579
.LBB12_519:                             # %.loopexit.i.i
.Ltmp356:                               # EH_LABEL
.LBB12_520:                             # %.loopexit.split-lp.i.body.i
	move	$fp, $a0
.LBB12_521:                             # %.loopexit.split-lp.i.body.i
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB12_538
.LBB12_522:
.Ltmp190:                               # EH_LABEL
.LBB12_523:
	move	$fp, $a0
	addi.d	$a0, $sp, 728
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 648
	pcaddu18i	$ra, %call36(_ZN13CObjectVectorI11CStringBaseIwEED2Ev)
	jirl	$ra, $ra, 0
	b	.LBB12_579
.LBB12_524:
.Ltmp491:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB12_525:
.Ltmp218:                               # EH_LABEL
	b	.LBB12_575
.LBB12_526:
.Ltmp497:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB12_527:
.Ltmp494:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB12_528:
.Ltmp268:                               # EH_LABEL
	move	$fp, $a0
	addi.d	$a0, $sp, 648
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	b	.LBB12_540
.LBB12_529:
.Ltmp157:                               # EH_LABEL
	move	$fp, $a0
	beqz	$s5, .LBB12_569
# %bb.530:
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 408
	pcaddu18i	$ra, %call36(_ZN9CPropertyD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB12_531:
.Ltmp166:                               # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 536
	beqz	$a0, .LBB12_547
	b	.LBB12_580
.LBB12_532:                             # %_ZN11CStringBaseIwED2Ev.exit.i
.Ltmp141:                               # EH_LABEL
	move	$fp, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB12_533:
.Ltmp503:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB12_534:
.Ltmp500:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB12_535:                             # %_ZN9CMyComPtrI9IInStreamED2Ev.exit322.i.loopexit.i
.Ltmp311:                               # EH_LABEL
.LBB12_536:                             # %_ZN9CMyComPtrI9IInStreamED2Ev.exit322.thread.i.i
	st.d	$s8, $sp, 152                   # 8-byte Folded Spill
.LBB12_537:                             # %_ZN9CMyComPtrI9IInStreamED2Ev.exit322.thread.i.i
	move	$fp, $a0
.LBB12_538:                             # %_ZN9CMyComPtrI9IInStreamED2Ev.exit322.thread.i.i
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp441:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp442:                               # EH_LABEL
.LBB12_539:                             # %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit327.i.i
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp444:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp445:                               # EH_LABEL
.LBB12_540:                             # %_ZN9CMyComPtrI22IArchiveUpdateCallbackED2Ev.exit329.i.i
	addi.d	$a0, $sp, 728
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	b	.LBB12_565
.LBB12_541:
.Ltmp446:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB12_542:
.Ltmp236:                               # EH_LABEL
	ld.d	$a1, $sp, 648
	move	$fp, $a0
	beqz	$a1, .LBB12_573
# %bb.543:
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB12_573
.LBB12_544:
.Ltmp171:                               # EH_LABEL
	move	$fp, $a0
.LBB12_545:
	ld.d	$a0, $sp, 448
	bnez	$a0, .LBB12_548
# %bb.546:
	ld.d	$a0, $sp, 536
	bnez	$a0, .LBB12_580
.LBB12_547:                             # %_ZN11CStringBaseIwED2Ev.exit396
	addi.d	$a0, $sp, 552
	pcaddu18i	$ra, %call36(_ZN12CArchiveLinkD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB12_548:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 536
	beqz	$a0, .LBB12_547
	b	.LBB12_580
.LBB12_549:
.Ltmp163:                               # EH_LABEL
	move	$fp, $a0
	addi.d	$a0, $sp, 552
	pcaddu18i	$ra, %call36(_ZN12CArchiveLinkD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB12_550:
.Ltmp455:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB12_551:
.Ltmp253:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB12_552:                             # %.loopexit.split-lp.i
.Ltmp247:                               # EH_LABEL
	b	.LBB12_554
.LBB12_553:                             # %.loopexit.i
.Ltmp244:                               # EH_LABEL
.LBB12_554:
	move	$fp, $a0
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp248:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp249:                               # EH_LABEL
	b	.LBB12_565
.LBB12_555:
.Ltmp250:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB12_556:
.Ltmp241:                               # EH_LABEL
	b	.LBB12_564
.LBB12_557:
.Ltmp443:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB12_558:
.Ltmp211:                               # EH_LABEL
	move	$fp, $a0
.LBB12_559:                             # %.body
	ld.d	$a0, $sp, 680
	beqz	$a0, .LBB12_579
# %bb.560:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB12_579
.LBB12_561:
.Ltmp260:                               # EH_LABEL
	b	.LBB12_564
.LBB12_562:
.Ltmp506:                               # EH_LABEL
	b	.LBB12_564
.LBB12_563:
.Ltmp263:                               # EH_LABEL
.LBB12_564:                             # %_ZN9CMyComPtrI10IInArchiveED2Ev.exit.i.i
	move	$fp, $a0
.LBB12_565:                             # %_ZN9CMyComPtrI10IInArchiveED2Ev.exit.i.i
	ld.d	$a0, $sp, 768
	beqz	$a0, .LBB12_573
# %bb.566:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp507:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp508:                               # EH_LABEL
	b	.LBB12_573
.LBB12_567:
.Ltmp160:                               # EH_LABEL
.LBB12_568:                             # %_ZN11CStringBaseIwED2Ev.exit
	move	$fp, $a0
.LBB12_569:                             # %_ZN11CStringBaseIwED2Ev.exit
	addi.d	$a0, $sp, 408
	pcaddu18i	$ra, %call36(_ZN9CPropertyD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB12_570:
.Ltmp509:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB12_571:
.Ltmp458:                               # EH_LABEL
.LBB12_572:                             # %.body388
	move	$fp, $a0
.LBB12_573:                             # %.body388
	addi.d	$a0, $sp, 344
	pcaddu18i	$ra, %call36(_ZN13CObjectVectorI8CArcItemED2Ev)
	jirl	$ra, $ra, 0
	b	.LBB12_578
.LBB12_574:
.Ltmp221:                               # EH_LABEL
.LBB12_575:                             # %_ZN11CStringBaseIwED2Ev.exit394
	move	$fp, $a0
	b	.LBB12_578
.LBB12_576:
.Ltmp228:                               # EH_LABEL
	ld.d	$a1, $sp, 648
	move	$fp, $a0
	beqz	$a1, .LBB12_578
# %bb.577:
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB12_578:                             # %_ZN11CStringBaseIwED2Ev.exit394
	addi.d	$a0, $sp, 376
	pcaddu18i	$ra, %call36(_ZN10CTempFilesD2Ev)
	jirl	$ra, $ra, 0
.LBB12_579:
	addi.d	$a0, $sp, 408
	pcaddu18i	$ra, %call36(_ZN9CDirItemsD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 536
	beqz	$a0, .LBB12_547
.LBB12_580:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 552
	pcaddu18i	$ra, %call36(_ZN12CArchiveLinkD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end12:
	.size	_Z13UpdateArchiveP7CCodecsRKN9NWildcard7CCensorER14CUpdateOptionsR16CUpdateErrorInfoP15IOpenCallbackUIP18IUpdateCallbackUI2, .Lfunc_end12-_Z13UpdateArchiveP7CCodecsRKN9NWildcard7CCensorER14CUpdateOptionsR16CUpdateErrorInfoP15IOpenCallbackUIP18IUpdateCallbackUI2
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table12:
.Lexception6:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase4-.Lttbaseref4
.Lttbaseref4:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end6-.Lcst_begin6
.Lcst_begin6:
	.uleb128 .Lfunc_begin6-.Lfunc_begin6    # >> Call Site 1 <<
	.uleb128 .Ltmp139-.Lfunc_begin6         #   Call between .Lfunc_begin6 and .Ltmp139
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp139-.Lfunc_begin6         # >> Call Site 2 <<
	.uleb128 .Ltmp140-.Ltmp139              #   Call between .Ltmp139 and .Ltmp140
	.uleb128 .Ltmp141-.Lfunc_begin6         #     jumps to .Ltmp141
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp142-.Lfunc_begin6         # >> Call Site 3 <<
	.uleb128 .Ltmp143-.Ltmp142              #   Call between .Ltmp142 and .Ltmp143
	.uleb128 .Ltmp160-.Lfunc_begin6         #     jumps to .Ltmp160
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp143-.Lfunc_begin6         # >> Call Site 4 <<
	.uleb128 .Ltmp144-.Ltmp143              #   Call between .Ltmp143 and .Ltmp144
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp144-.Lfunc_begin6         # >> Call Site 5 <<
	.uleb128 .Ltmp145-.Ltmp144              #   Call between .Ltmp144 and .Ltmp145
	.uleb128 .Ltmp160-.Lfunc_begin6         #     jumps to .Ltmp160
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp145-.Lfunc_begin6         # >> Call Site 6 <<
	.uleb128 .Ltmp146-.Ltmp145              #   Call between .Ltmp145 and .Ltmp146
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp146-.Lfunc_begin6         # >> Call Site 7 <<
	.uleb128 .Ltmp147-.Ltmp146              #   Call between .Ltmp146 and .Ltmp147
	.uleb128 .Ltmp160-.Lfunc_begin6         #     jumps to .Ltmp160
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp148-.Lfunc_begin6         # >> Call Site 8 <<
	.uleb128 .Ltmp149-.Ltmp148              #   Call between .Ltmp148 and .Ltmp149
	.uleb128 .Ltmp150-.Lfunc_begin6         #     jumps to .Ltmp150
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp151-.Lfunc_begin6         # >> Call Site 9 <<
	.uleb128 .Ltmp152-.Ltmp151              #   Call between .Ltmp151 and .Ltmp152
	.uleb128 .Ltmp157-.Lfunc_begin6         #     jumps to .Ltmp157
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp152-.Lfunc_begin6         # >> Call Site 10 <<
	.uleb128 .Ltmp158-.Ltmp152              #   Call between .Ltmp152 and .Ltmp158
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp158-.Lfunc_begin6         # >> Call Site 11 <<
	.uleb128 .Ltmp159-.Ltmp158              #   Call between .Ltmp158 and .Ltmp159
	.uleb128 .Ltmp160-.Lfunc_begin6         #     jumps to .Ltmp160
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp159-.Lfunc_begin6         # >> Call Site 12 <<
	.uleb128 .Ltmp153-.Ltmp159              #   Call between .Ltmp159 and .Ltmp153
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp153-.Lfunc_begin6         # >> Call Site 13 <<
	.uleb128 .Ltmp154-.Ltmp153              #   Call between .Ltmp153 and .Ltmp154
	.uleb128 .Ltmp157-.Lfunc_begin6         #     jumps to .Ltmp157
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp154-.Lfunc_begin6         # >> Call Site 14 <<
	.uleb128 .Ltmp155-.Ltmp154              #   Call between .Ltmp154 and .Ltmp155
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp155-.Lfunc_begin6         # >> Call Site 15 <<
	.uleb128 .Ltmp156-.Ltmp155              #   Call between .Ltmp155 and .Ltmp156
	.uleb128 .Ltmp157-.Lfunc_begin6         #     jumps to .Ltmp157
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp156-.Lfunc_begin6         # >> Call Site 16 <<
	.uleb128 .Ltmp161-.Ltmp156              #   Call between .Ltmp156 and .Ltmp161
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp161-.Lfunc_begin6         # >> Call Site 17 <<
	.uleb128 .Ltmp162-.Ltmp161              #   Call between .Ltmp161 and .Ltmp162
	.uleb128 .Ltmp163-.Lfunc_begin6         #     jumps to .Ltmp163
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp164-.Lfunc_begin6         # >> Call Site 18 <<
	.uleb128 .Ltmp165-.Ltmp164              #   Call between .Ltmp164 and .Ltmp165
	.uleb128 .Ltmp166-.Lfunc_begin6         #     jumps to .Ltmp166
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp167-.Lfunc_begin6         # >> Call Site 19 <<
	.uleb128 .Ltmp168-.Ltmp167              #   Call between .Ltmp167 and .Ltmp168
	.uleb128 .Ltmp171-.Lfunc_begin6         #     jumps to .Ltmp171
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp168-.Lfunc_begin6         # >> Call Site 20 <<
	.uleb128 .Ltmp197-.Ltmp168              #   Call between .Ltmp168 and .Ltmp197
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp197-.Lfunc_begin6         # >> Call Site 21 <<
	.uleb128 .Ltmp198-.Ltmp197              #   Call between .Ltmp197 and .Ltmp198
	.uleb128 .Ltmp199-.Lfunc_begin6         #     jumps to .Ltmp199
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp200-.Lfunc_begin6         # >> Call Site 22 <<
	.uleb128 .Ltmp201-.Ltmp200              #   Call between .Ltmp200 and .Ltmp201
	.uleb128 .Ltmp211-.Lfunc_begin6         #     jumps to .Ltmp211
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp201-.Lfunc_begin6         # >> Call Site 23 <<
	.uleb128 .Ltmp202-.Ltmp201              #   Call between .Ltmp201 and .Ltmp202
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp202-.Lfunc_begin6         # >> Call Site 24 <<
	.uleb128 .Ltmp205-.Ltmp202              #   Call between .Ltmp202 and .Ltmp205
	.uleb128 .Ltmp211-.Lfunc_begin6         #     jumps to .Ltmp211
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp183-.Lfunc_begin6         # >> Call Site 25 <<
	.uleb128 .Ltmp184-.Ltmp183              #   Call between .Ltmp183 and .Ltmp184
	.uleb128 .Ltmp185-.Lfunc_begin6         #     jumps to .Ltmp185
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp186-.Lfunc_begin6         # >> Call Site 26 <<
	.uleb128 .Ltmp187-.Ltmp186              #   Call between .Ltmp186 and .Ltmp187
	.uleb128 .Ltmp196-.Lfunc_begin6         #     jumps to .Ltmp196
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp188-.Lfunc_begin6         # >> Call Site 27 <<
	.uleb128 .Ltmp189-.Ltmp188              #   Call between .Ltmp188 and .Ltmp189
	.uleb128 .Ltmp190-.Lfunc_begin6         #     jumps to .Ltmp190
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp191-.Lfunc_begin6         # >> Call Site 28 <<
	.uleb128 .Ltmp192-.Ltmp191              #   Call between .Ltmp191 and .Ltmp192
	.uleb128 .Ltmp193-.Lfunc_begin6         #     jumps to .Ltmp193
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp206-.Lfunc_begin6         # >> Call Site 29 <<
	.uleb128 .Ltmp207-.Ltmp206              #   Call between .Ltmp206 and .Ltmp207
	.uleb128 .Ltmp208-.Lfunc_begin6         #     jumps to .Ltmp208
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp209-.Lfunc_begin6         # >> Call Site 30 <<
	.uleb128 .Ltmp210-.Ltmp209              #   Call between .Ltmp209 and .Ltmp210
	.uleb128 .Ltmp211-.Lfunc_begin6         #     jumps to .Ltmp211
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp210-.Lfunc_begin6         # >> Call Site 31 <<
	.uleb128 .Ltmp212-.Ltmp210              #   Call between .Ltmp210 and .Ltmp212
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp212-.Lfunc_begin6         # >> Call Site 32 <<
	.uleb128 .Ltmp217-.Ltmp212              #   Call between .Ltmp212 and .Ltmp217
	.uleb128 .Ltmp218-.Lfunc_begin6         #     jumps to .Ltmp218
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp219-.Lfunc_begin6         # >> Call Site 33 <<
	.uleb128 .Ltmp220-.Ltmp219              #   Call between .Ltmp219 and .Ltmp220
	.uleb128 .Ltmp221-.Lfunc_begin6         #     jumps to .Ltmp221
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp222-.Lfunc_begin6         # >> Call Site 34 <<
	.uleb128 .Ltmp225-.Ltmp222              #   Call between .Ltmp222 and .Ltmp225
	.uleb128 .Ltmp228-.Lfunc_begin6         #     jumps to .Ltmp228
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp225-.Lfunc_begin6         # >> Call Site 35 <<
	.uleb128 .Ltmp226-.Ltmp225              #   Call between .Ltmp225 and .Ltmp226
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp226-.Lfunc_begin6         # >> Call Site 36 <<
	.uleb128 .Ltmp227-.Ltmp226              #   Call between .Ltmp226 and .Ltmp227
	.uleb128 .Ltmp228-.Lfunc_begin6         #     jumps to .Ltmp228
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp227-.Lfunc_begin6         # >> Call Site 37 <<
	.uleb128 .Ltmp229-.Ltmp227              #   Call between .Ltmp227 and .Ltmp229
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp229-.Lfunc_begin6         # >> Call Site 38 <<
	.uleb128 .Ltmp230-.Ltmp229              #   Call between .Ltmp229 and .Ltmp230
	.uleb128 .Ltmp231-.Lfunc_begin6         #     jumps to .Ltmp231
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp237-.Lfunc_begin6         # >> Call Site 39 <<
	.uleb128 .Ltmp233-.Ltmp237              #   Call between .Ltmp237 and .Ltmp233
	.uleb128 .Ltmp458-.Lfunc_begin6         #     jumps to .Ltmp458
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp234-.Lfunc_begin6         # >> Call Site 40 <<
	.uleb128 .Ltmp235-.Ltmp234              #   Call between .Ltmp234 and .Ltmp235
	.uleb128 .Ltmp236-.Lfunc_begin6         #     jumps to .Ltmp236
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp235-.Lfunc_begin6         # >> Call Site 41 <<
	.uleb128 .Ltmp239-.Ltmp235              #   Call between .Ltmp235 and .Ltmp239
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp239-.Lfunc_begin6         # >> Call Site 42 <<
	.uleb128 .Ltmp240-.Ltmp239              #   Call between .Ltmp239 and .Ltmp240
	.uleb128 .Ltmp241-.Lfunc_begin6         #     jumps to .Ltmp241
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp242-.Lfunc_begin6         # >> Call Site 43 <<
	.uleb128 .Ltmp243-.Ltmp242              #   Call between .Ltmp242 and .Ltmp243
	.uleb128 .Ltmp244-.Lfunc_begin6         #     jumps to .Ltmp244
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp251-.Lfunc_begin6         # >> Call Site 44 <<
	.uleb128 .Ltmp252-.Ltmp251              #   Call between .Ltmp251 and .Ltmp252
	.uleb128 .Ltmp253-.Lfunc_begin6         #     jumps to .Ltmp253
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp254-.Lfunc_begin6         # >> Call Site 45 <<
	.uleb128 .Ltmp259-.Ltmp254              #   Call between .Ltmp254 and .Ltmp259
	.uleb128 .Ltmp260-.Lfunc_begin6         #     jumps to .Ltmp260
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp261-.Lfunc_begin6         # >> Call Site 46 <<
	.uleb128 .Ltmp262-.Ltmp261              #   Call between .Ltmp261 and .Ltmp262
	.uleb128 .Ltmp263-.Lfunc_begin6         #     jumps to .Ltmp263
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp264-.Lfunc_begin6         # >> Call Site 47 <<
	.uleb128 .Ltmp267-.Ltmp264              #   Call between .Ltmp264 and .Ltmp267
	.uleb128 .Ltmp268-.Lfunc_begin6         #     jumps to .Ltmp268
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp267-.Lfunc_begin6         # >> Call Site 48 <<
	.uleb128 .Ltmp269-.Ltmp267              #   Call between .Ltmp267 and .Ltmp269
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp269-.Lfunc_begin6         # >> Call Site 49 <<
	.uleb128 .Ltmp270-.Ltmp269              #   Call between .Ltmp269 and .Ltmp270
	.uleb128 .Ltmp271-.Lfunc_begin6         #     jumps to .Ltmp271
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp272-.Lfunc_begin6         # >> Call Site 50 <<
	.uleb128 .Ltmp273-.Ltmp272              #   Call between .Ltmp272 and .Ltmp273
	.uleb128 .Ltmp274-.Lfunc_begin6         #     jumps to .Ltmp274
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp275-.Lfunc_begin6         # >> Call Site 51 <<
	.uleb128 .Ltmp276-.Ltmp275              #   Call between .Ltmp275 and .Ltmp276
	.uleb128 .Ltmp277-.Lfunc_begin6         #     jumps to .Ltmp277
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp278-.Lfunc_begin6         # >> Call Site 52 <<
	.uleb128 .Ltmp279-.Ltmp278              #   Call between .Ltmp278 and .Ltmp279
	.uleb128 .Ltmp280-.Lfunc_begin6         #     jumps to .Ltmp280
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp281-.Lfunc_begin6         # >> Call Site 53 <<
	.uleb128 .Ltmp282-.Ltmp281              #   Call between .Ltmp281 and .Ltmp282
	.uleb128 .Ltmp283-.Lfunc_begin6         #     jumps to .Ltmp283
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp284-.Lfunc_begin6         # >> Call Site 54 <<
	.uleb128 .Ltmp285-.Ltmp284              #   Call between .Ltmp284 and .Ltmp285
	.uleb128 .Ltmp286-.Lfunc_begin6         #     jumps to .Ltmp286
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp287-.Lfunc_begin6         # >> Call Site 55 <<
	.uleb128 .Ltmp288-.Ltmp287              #   Call between .Ltmp287 and .Ltmp288
	.uleb128 .Ltmp289-.Lfunc_begin6         #     jumps to .Ltmp289
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp288-.Lfunc_begin6         # >> Call Site 56 <<
	.uleb128 .Ltmp293-.Ltmp288              #   Call between .Ltmp288 and .Ltmp293
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp293-.Lfunc_begin6         # >> Call Site 57 <<
	.uleb128 .Ltmp294-.Ltmp293              #   Call between .Ltmp293 and .Ltmp294
	.uleb128 .Ltmp295-.Lfunc_begin6         #     jumps to .Ltmp295
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp296-.Lfunc_begin6         # >> Call Site 58 <<
	.uleb128 .Ltmp297-.Ltmp296              #   Call between .Ltmp296 and .Ltmp297
	.uleb128 .Ltmp298-.Lfunc_begin6         #     jumps to .Ltmp298
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp297-.Lfunc_begin6         # >> Call Site 59 <<
	.uleb128 .Ltmp299-.Ltmp297              #   Call between .Ltmp297 and .Ltmp299
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp299-.Lfunc_begin6         # >> Call Site 60 <<
	.uleb128 .Ltmp300-.Ltmp299              #   Call between .Ltmp299 and .Ltmp300
	.uleb128 .Ltmp374-.Lfunc_begin6         #     jumps to .Ltmp374
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp301-.Lfunc_begin6         # >> Call Site 61 <<
	.uleb128 .Ltmp302-.Ltmp301              #   Call between .Ltmp301 and .Ltmp302
	.uleb128 .Ltmp303-.Lfunc_begin6         #     jumps to .Ltmp303
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp304-.Lfunc_begin6         # >> Call Site 62 <<
	.uleb128 .Ltmp307-.Ltmp304              #   Call between .Ltmp304 and .Ltmp307
	.uleb128 .Ltmp308-.Lfunc_begin6         #     jumps to .Ltmp308
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp309-.Lfunc_begin6         # >> Call Site 63 <<
	.uleb128 .Ltmp310-.Ltmp309              #   Call between .Ltmp309 and .Ltmp310
	.uleb128 .Ltmp311-.Lfunc_begin6         #     jumps to .Ltmp311
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp312-.Lfunc_begin6         # >> Call Site 64 <<
	.uleb128 .Ltmp313-.Ltmp312              #   Call between .Ltmp312 and .Ltmp313
	.uleb128 .Ltmp314-.Lfunc_begin6         #     jumps to .Ltmp314
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp315-.Lfunc_begin6         # >> Call Site 65 <<
	.uleb128 .Ltmp316-.Ltmp315              #   Call between .Ltmp315 and .Ltmp316
	.uleb128 .Ltmp317-.Lfunc_begin6         #     jumps to .Ltmp317
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp370-.Lfunc_begin6         # >> Call Site 66 <<
	.uleb128 .Ltmp328-.Ltmp370              #   Call between .Ltmp370 and .Ltmp328
	.uleb128 .Ltmp374-.Lfunc_begin6         #     jumps to .Ltmp374
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp329-.Lfunc_begin6         # >> Call Site 67 <<
	.uleb128 .Ltmp330-.Ltmp329              #   Call between .Ltmp329 and .Ltmp330
	.uleb128 .Ltmp331-.Lfunc_begin6         #     jumps to .Ltmp331
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp332-.Lfunc_begin6         # >> Call Site 68 <<
	.uleb128 .Ltmp333-.Ltmp332              #   Call between .Ltmp332 and .Ltmp333
	.uleb128 .Ltmp374-.Lfunc_begin6         #     jumps to .Ltmp374
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp334-.Lfunc_begin6         # >> Call Site 69 <<
	.uleb128 .Ltmp335-.Ltmp334              #   Call between .Ltmp334 and .Ltmp335
	.uleb128 .Ltmp336-.Lfunc_begin6         #     jumps to .Ltmp336
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp343-.Lfunc_begin6         # >> Call Site 70 <<
	.uleb128 .Ltmp344-.Ltmp343              #   Call between .Ltmp343 and .Ltmp344
	.uleb128 .Ltmp347-.Lfunc_begin6         #     jumps to .Ltmp347
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp344-.Lfunc_begin6         # >> Call Site 71 <<
	.uleb128 .Ltmp345-.Ltmp344              #   Call between .Ltmp344 and .Ltmp345
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp345-.Lfunc_begin6         # >> Call Site 72 <<
	.uleb128 .Ltmp346-.Ltmp345              #   Call between .Ltmp345 and .Ltmp346
	.uleb128 .Ltmp347-.Lfunc_begin6         #     jumps to .Ltmp347
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp346-.Lfunc_begin6         # >> Call Site 73 <<
	.uleb128 .Ltmp337-.Ltmp346              #   Call between .Ltmp346 and .Ltmp337
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp337-.Lfunc_begin6         # >> Call Site 74 <<
	.uleb128 .Ltmp338-.Ltmp337              #   Call between .Ltmp337 and .Ltmp338
	.uleb128 .Ltmp339-.Lfunc_begin6         #     jumps to .Ltmp339
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp340-.Lfunc_begin6         # >> Call Site 75 <<
	.uleb128 .Ltmp341-.Ltmp340              #   Call between .Ltmp340 and .Ltmp341
	.uleb128 .Ltmp342-.Lfunc_begin6         #     jumps to .Ltmp342
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp341-.Lfunc_begin6         # >> Call Site 76 <<
	.uleb128 .Ltmp348-.Ltmp341              #   Call between .Ltmp341 and .Ltmp348
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp348-.Lfunc_begin6         # >> Call Site 77 <<
	.uleb128 .Ltmp349-.Ltmp348              #   Call between .Ltmp348 and .Ltmp349
	.uleb128 .Ltmp350-.Lfunc_begin6         #     jumps to .Ltmp350
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp351-.Lfunc_begin6         # >> Call Site 78 <<
	.uleb128 .Ltmp352-.Ltmp351              #   Call between .Ltmp351 and .Ltmp352
	.uleb128 .Ltmp353-.Lfunc_begin6         #     jumps to .Ltmp353
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp352-.Lfunc_begin6         # >> Call Site 79 <<
	.uleb128 .Ltmp354-.Ltmp352              #   Call between .Ltmp352 and .Ltmp354
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp354-.Lfunc_begin6         # >> Call Site 80 <<
	.uleb128 .Ltmp355-.Ltmp354              #   Call between .Ltmp354 and .Ltmp355
	.uleb128 .Ltmp356-.Lfunc_begin6         #     jumps to .Ltmp356
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp355-.Lfunc_begin6         # >> Call Site 81 <<
	.uleb128 .Ltmp357-.Ltmp355              #   Call between .Ltmp355 and .Ltmp357
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp357-.Lfunc_begin6         # >> Call Site 82 <<
	.uleb128 .Ltmp358-.Ltmp357              #   Call between .Ltmp357 and .Ltmp358
	.uleb128 .Ltmp361-.Lfunc_begin6         #     jumps to .Ltmp361
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp358-.Lfunc_begin6         # >> Call Site 83 <<
	.uleb128 .Ltmp318-.Ltmp358              #   Call between .Ltmp358 and .Ltmp318
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp318-.Lfunc_begin6         # >> Call Site 84 <<
	.uleb128 .Ltmp319-.Ltmp318              #   Call between .Ltmp318 and .Ltmp319
	.uleb128 .Ltmp320-.Lfunc_begin6         #     jumps to .Ltmp320
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp321-.Lfunc_begin6         # >> Call Site 85 <<
	.uleb128 .Ltmp322-.Ltmp321              #   Call between .Ltmp321 and .Ltmp322
	.uleb128 .Ltmp323-.Lfunc_begin6         #     jumps to .Ltmp323
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp324-.Lfunc_begin6         # >> Call Site 86 <<
	.uleb128 .Ltmp325-.Ltmp324              #   Call between .Ltmp324 and .Ltmp325
	.uleb128 .Ltmp326-.Lfunc_begin6         #     jumps to .Ltmp326
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp325-.Lfunc_begin6         # >> Call Site 87 <<
	.uleb128 .Ltmp362-.Ltmp325              #   Call between .Ltmp325 and .Ltmp362
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp362-.Lfunc_begin6         # >> Call Site 88 <<
	.uleb128 .Ltmp363-.Ltmp362              #   Call between .Ltmp362 and .Ltmp363
	.uleb128 .Ltmp369-.Lfunc_begin6         #     jumps to .Ltmp369
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp364-.Lfunc_begin6         # >> Call Site 89 <<
	.uleb128 .Ltmp365-.Ltmp364              #   Call between .Ltmp364 and .Ltmp365
	.uleb128 .Ltmp366-.Lfunc_begin6         #     jumps to .Ltmp366
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp367-.Lfunc_begin6         # >> Call Site 90 <<
	.uleb128 .Ltmp368-.Ltmp367              #   Call between .Ltmp367 and .Ltmp368
	.uleb128 .Ltmp369-.Lfunc_begin6         #     jumps to .Ltmp369
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp368-.Lfunc_begin6         # >> Call Site 91 <<
	.uleb128 .Ltmp375-.Ltmp368              #   Call between .Ltmp368 and .Ltmp375
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp375-.Lfunc_begin6         # >> Call Site 92 <<
	.uleb128 .Ltmp376-.Ltmp375              #   Call between .Ltmp375 and .Ltmp376
	.uleb128 .Ltmp377-.Lfunc_begin6         #     jumps to .Ltmp377
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp378-.Lfunc_begin6         # >> Call Site 93 <<
	.uleb128 .Ltmp379-.Ltmp378              #   Call between .Ltmp378 and .Ltmp379
	.uleb128 .Ltmp380-.Lfunc_begin6         #     jumps to .Ltmp380
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp381-.Lfunc_begin6         # >> Call Site 94 <<
	.uleb128 .Ltmp382-.Ltmp381              #   Call between .Ltmp381 and .Ltmp382
	.uleb128 .Ltmp383-.Lfunc_begin6         #     jumps to .Ltmp383
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp384-.Lfunc_begin6         # >> Call Site 95 <<
	.uleb128 .Ltmp385-.Ltmp384              #   Call between .Ltmp384 and .Ltmp385
	.uleb128 .Ltmp386-.Lfunc_begin6         #     jumps to .Ltmp386
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp387-.Lfunc_begin6         # >> Call Site 96 <<
	.uleb128 .Ltmp388-.Ltmp387              #   Call between .Ltmp387 and .Ltmp388
	.uleb128 .Ltmp393-.Lfunc_begin6         #     jumps to .Ltmp393
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp394-.Lfunc_begin6         # >> Call Site 97 <<
	.uleb128 .Ltmp395-.Ltmp394              #   Call between .Ltmp394 and .Ltmp395
	.uleb128 .Ltmp413-.Lfunc_begin6         #     jumps to .Ltmp413
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp396-.Lfunc_begin6         # >> Call Site 98 <<
	.uleb128 .Ltmp397-.Ltmp396              #   Call between .Ltmp396 and .Ltmp397
	.uleb128 .Ltmp398-.Lfunc_begin6         #     jumps to .Ltmp398
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp399-.Lfunc_begin6         # >> Call Site 99 <<
	.uleb128 .Ltmp400-.Ltmp399              #   Call between .Ltmp399 and .Ltmp400
	.uleb128 .Ltmp413-.Lfunc_begin6         #     jumps to .Ltmp413
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp401-.Lfunc_begin6         # >> Call Site 100 <<
	.uleb128 .Ltmp402-.Ltmp401              #   Call between .Ltmp401 and .Ltmp402
	.uleb128 .Ltmp403-.Lfunc_begin6         #     jumps to .Ltmp403
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp404-.Lfunc_begin6         # >> Call Site 101 <<
	.uleb128 .Ltmp405-.Ltmp404              #   Call between .Ltmp404 and .Ltmp405
	.uleb128 .Ltmp410-.Lfunc_begin6         #     jumps to .Ltmp410
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp405-.Lfunc_begin6         # >> Call Site 102 <<
	.uleb128 .Ltmp389-.Ltmp405              #   Call between .Ltmp405 and .Ltmp389
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp389-.Lfunc_begin6         # >> Call Site 103 <<
	.uleb128 .Ltmp390-.Ltmp389              #   Call between .Ltmp389 and .Ltmp390
	.uleb128 .Ltmp393-.Lfunc_begin6         #     jumps to .Ltmp393
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp390-.Lfunc_begin6         # >> Call Site 104 <<
	.uleb128 .Ltmp411-.Ltmp390              #   Call between .Ltmp390 and .Ltmp411
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp411-.Lfunc_begin6         # >> Call Site 105 <<
	.uleb128 .Ltmp412-.Ltmp411              #   Call between .Ltmp411 and .Ltmp412
	.uleb128 .Ltmp413-.Lfunc_begin6         #     jumps to .Ltmp413
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp412-.Lfunc_begin6         # >> Call Site 106 <<
	.uleb128 .Ltmp406-.Ltmp412              #   Call between .Ltmp412 and .Ltmp406
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp406-.Lfunc_begin6         # >> Call Site 107 <<
	.uleb128 .Ltmp409-.Ltmp406              #   Call between .Ltmp406 and .Ltmp409
	.uleb128 .Ltmp410-.Lfunc_begin6         #     jumps to .Ltmp410
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp409-.Lfunc_begin6         # >> Call Site 108 <<
	.uleb128 .Ltmp414-.Ltmp409              #   Call between .Ltmp409 and .Ltmp414
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp414-.Lfunc_begin6         # >> Call Site 109 <<
	.uleb128 .Ltmp415-.Ltmp414              #   Call between .Ltmp414 and .Ltmp415
	.uleb128 .Ltmp416-.Lfunc_begin6         #     jumps to .Ltmp416
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp426-.Lfunc_begin6         # >> Call Site 110 <<
	.uleb128 .Ltmp427-.Ltmp426              #   Call between .Ltmp426 and .Ltmp427
	.uleb128 .Ltmp428-.Lfunc_begin6         #     jumps to .Ltmp428
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp359-.Lfunc_begin6         # >> Call Site 111 <<
	.uleb128 .Ltmp360-.Ltmp359              #   Call between .Ltmp359 and .Ltmp360
	.uleb128 .Ltmp361-.Lfunc_begin6         #     jumps to .Ltmp361
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp360-.Lfunc_begin6         # >> Call Site 112 <<
	.uleb128 .Ltmp417-.Ltmp360              #   Call between .Ltmp360 and .Ltmp417
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp417-.Lfunc_begin6         # >> Call Site 113 <<
	.uleb128 .Ltmp418-.Ltmp417              #   Call between .Ltmp417 and .Ltmp418
	.uleb128 .Ltmp419-.Lfunc_begin6         #     jumps to .Ltmp419
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp391-.Lfunc_begin6         # >> Call Site 114 <<
	.uleb128 .Ltmp392-.Ltmp391              #   Call between .Ltmp391 and .Ltmp392
	.uleb128 .Ltmp393-.Lfunc_begin6         #     jumps to .Ltmp393
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp392-.Lfunc_begin6         # >> Call Site 115 <<
	.uleb128 .Ltmp429-.Ltmp392              #   Call between .Ltmp392 and .Ltmp429
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp429-.Lfunc_begin6         # >> Call Site 116 <<
	.uleb128 .Ltmp430-.Ltmp429              #   Call between .Ltmp429 and .Ltmp430
	.uleb128 .Ltmp431-.Lfunc_begin6         #     jumps to .Ltmp431
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp432-.Lfunc_begin6         # >> Call Site 117 <<
	.uleb128 .Ltmp439-.Ltmp432              #   Call between .Ltmp432 and .Ltmp439
	.uleb128 .Ltmp440-.Lfunc_begin6         #     jumps to .Ltmp440
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp447-.Lfunc_begin6         # >> Call Site 118 <<
	.uleb128 .Ltmp448-.Ltmp447              #   Call between .Ltmp447 and .Ltmp448
	.uleb128 .Ltmp449-.Lfunc_begin6         #     jumps to .Ltmp449
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp450-.Lfunc_begin6         # >> Call Site 119 <<
	.uleb128 .Ltmp451-.Ltmp450              #   Call between .Ltmp450 and .Ltmp451
	.uleb128 .Ltmp452-.Lfunc_begin6         #     jumps to .Ltmp452
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp451-.Lfunc_begin6         # >> Call Site 120 <<
	.uleb128 .Ltmp453-.Ltmp451              #   Call between .Ltmp451 and .Ltmp453
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp453-.Lfunc_begin6         # >> Call Site 121 <<
	.uleb128 .Ltmp454-.Ltmp453              #   Call between .Ltmp453 and .Ltmp454
	.uleb128 .Ltmp455-.Lfunc_begin6         #     jumps to .Ltmp455
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp456-.Lfunc_begin6         # >> Call Site 122 <<
	.uleb128 .Ltmp457-.Ltmp456              #   Call between .Ltmp456 and .Ltmp457
	.uleb128 .Ltmp458-.Lfunc_begin6         #     jumps to .Ltmp458
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp459-.Lfunc_begin6         # >> Call Site 123 <<
	.uleb128 .Ltmp460-.Ltmp459              #   Call between .Ltmp459 and .Ltmp460
	.uleb128 .Ltmp461-.Lfunc_begin6         #     jumps to .Ltmp461
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp462-.Lfunc_begin6         # >> Call Site 124 <<
	.uleb128 .Ltmp465-.Ltmp462              #   Call between .Ltmp462 and .Ltmp465
	.uleb128 .Ltmp466-.Lfunc_begin6         #     jumps to .Ltmp466
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp467-.Lfunc_begin6         # >> Call Site 125 <<
	.uleb128 .Ltmp468-.Ltmp467              #   Call between .Ltmp467 and .Ltmp468
	.uleb128 .Ltmp469-.Lfunc_begin6         #     jumps to .Ltmp469
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp470-.Lfunc_begin6         # >> Call Site 126 <<
	.uleb128 .Ltmp475-.Ltmp470              #   Call between .Ltmp470 and .Ltmp475
	.uleb128 .Ltmp482-.Lfunc_begin6         #     jumps to .Ltmp482
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp475-.Lfunc_begin6         # >> Call Site 127 <<
	.uleb128 .Ltmp476-.Ltmp475              #   Call between .Ltmp475 and .Ltmp476
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp476-.Lfunc_begin6         # >> Call Site 128 <<
	.uleb128 .Ltmp479-.Ltmp476              #   Call between .Ltmp476 and .Ltmp479
	.uleb128 .Ltmp482-.Lfunc_begin6         #     jumps to .Ltmp482
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp172-.Lfunc_begin6         # >> Call Site 129 <<
	.uleb128 .Ltmp173-.Ltmp172              #   Call between .Ltmp172 and .Ltmp173
	.uleb128 .Ltmp174-.Lfunc_begin6         #     jumps to .Ltmp174
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp175-.Lfunc_begin6         # >> Call Site 130 <<
	.uleb128 .Ltmp176-.Ltmp175              #   Call between .Ltmp175 and .Ltmp176
	.uleb128 .Ltmp182-.Lfunc_begin6         #     jumps to .Ltmp182
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp177-.Lfunc_begin6         # >> Call Site 131 <<
	.uleb128 .Ltmp178-.Ltmp177              #   Call between .Ltmp177 and .Ltmp178
	.uleb128 .Ltmp179-.Lfunc_begin6         #     jumps to .Ltmp179
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp178-.Lfunc_begin6         # >> Call Site 132 <<
	.uleb128 .Ltmp472-.Ltmp178              #   Call between .Ltmp178 and .Ltmp472
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp472-.Lfunc_begin6         # >> Call Site 133 <<
	.uleb128 .Ltmp481-.Ltmp472              #   Call between .Ltmp472 and .Ltmp481
	.uleb128 .Ltmp482-.Lfunc_begin6         #     jumps to .Ltmp482
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp481-.Lfunc_begin6         # >> Call Site 134 <<
	.uleb128 .Ltmp489-.Ltmp481              #   Call between .Ltmp481 and .Ltmp489
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp489-.Lfunc_begin6         # >> Call Site 135 <<
	.uleb128 .Ltmp490-.Ltmp489              #   Call between .Ltmp489 and .Ltmp490
	.uleb128 .Ltmp491-.Lfunc_begin6         #     jumps to .Ltmp491
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp490-.Lfunc_begin6         # >> Call Site 136 <<
	.uleb128 .Ltmp492-.Ltmp490              #   Call between .Ltmp490 and .Ltmp492
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp492-.Lfunc_begin6         # >> Call Site 137 <<
	.uleb128 .Ltmp493-.Ltmp492              #   Call between .Ltmp492 and .Ltmp493
	.uleb128 .Ltmp494-.Lfunc_begin6         #     jumps to .Ltmp494
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp495-.Lfunc_begin6         # >> Call Site 138 <<
	.uleb128 .Ltmp496-.Ltmp495              #   Call between .Ltmp495 and .Ltmp496
	.uleb128 .Ltmp497-.Lfunc_begin6         #     jumps to .Ltmp497
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp496-.Lfunc_begin6         # >> Call Site 139 <<
	.uleb128 .Ltmp498-.Ltmp496              #   Call between .Ltmp496 and .Ltmp498
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp498-.Lfunc_begin6         # >> Call Site 140 <<
	.uleb128 .Ltmp499-.Ltmp498              #   Call between .Ltmp498 and .Ltmp499
	.uleb128 .Ltmp500-.Lfunc_begin6         #     jumps to .Ltmp500
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp499-.Lfunc_begin6         # >> Call Site 141 <<
	.uleb128 .Ltmp501-.Ltmp499              #   Call between .Ltmp499 and .Ltmp501
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp501-.Lfunc_begin6         # >> Call Site 142 <<
	.uleb128 .Ltmp502-.Ltmp501              #   Call between .Ltmp501 and .Ltmp502
	.uleb128 .Ltmp503-.Lfunc_begin6         #     jumps to .Ltmp503
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp502-.Lfunc_begin6         # >> Call Site 143 <<
	.uleb128 .Ltmp194-.Ltmp502              #   Call between .Ltmp502 and .Ltmp194
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp194-.Lfunc_begin6         # >> Call Site 144 <<
	.uleb128 .Ltmp195-.Ltmp194              #   Call between .Ltmp194 and .Ltmp195
	.uleb128 .Ltmp196-.Lfunc_begin6         #     jumps to .Ltmp196
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp195-.Lfunc_begin6         # >> Call Site 145 <<
	.uleb128 .Ltmp180-.Ltmp195              #   Call between .Ltmp195 and .Ltmp180
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp180-.Lfunc_begin6         # >> Call Site 146 <<
	.uleb128 .Ltmp181-.Ltmp180              #   Call between .Ltmp180 and .Ltmp181
	.uleb128 .Ltmp182-.Lfunc_begin6         #     jumps to .Ltmp182
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp181-.Lfunc_begin6         # >> Call Site 147 <<
	.uleb128 .Ltmp504-.Ltmp181              #   Call between .Ltmp181 and .Ltmp504
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp504-.Lfunc_begin6         # >> Call Site 148 <<
	.uleb128 .Ltmp505-.Ltmp504              #   Call between .Ltmp504 and .Ltmp505
	.uleb128 .Ltmp506-.Lfunc_begin6         #     jumps to .Ltmp506
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp505-.Lfunc_begin6         # >> Call Site 149 <<
	.uleb128 .Ltmp245-.Ltmp505              #   Call between .Ltmp505 and .Ltmp245
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp245-.Lfunc_begin6         # >> Call Site 150 <<
	.uleb128 .Ltmp246-.Ltmp245              #   Call between .Ltmp245 and .Ltmp246
	.uleb128 .Ltmp247-.Lfunc_begin6         #     jumps to .Ltmp247
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp246-.Lfunc_begin6         # >> Call Site 151 <<
	.uleb128 .Ltmp169-.Ltmp246              #   Call between .Ltmp246 and .Ltmp169
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp169-.Lfunc_begin6         # >> Call Site 152 <<
	.uleb128 .Ltmp170-.Ltmp169              #   Call between .Ltmp169 and .Ltmp170
	.uleb128 .Ltmp171-.Lfunc_begin6         #     jumps to .Ltmp171
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp170-.Lfunc_begin6         # >> Call Site 153 <<
	.uleb128 .Ltmp290-.Ltmp170              #   Call between .Ltmp170 and .Ltmp290
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp290-.Lfunc_begin6         # >> Call Site 154 <<
	.uleb128 .Ltmp291-.Ltmp290              #   Call between .Ltmp290 and .Ltmp291
	.uleb128 .Ltmp292-.Lfunc_begin6         #     jumps to .Ltmp292
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp291-.Lfunc_begin6         # >> Call Site 155 <<
	.uleb128 .Ltmp420-.Ltmp291              #   Call between .Ltmp291 and .Ltmp420
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp420-.Lfunc_begin6         # >> Call Site 156 <<
	.uleb128 .Ltmp421-.Ltmp420              #   Call between .Ltmp420 and .Ltmp421
	.uleb128 .Ltmp422-.Lfunc_begin6         #     jumps to .Ltmp422
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp421-.Lfunc_begin6         # >> Call Site 157 <<
	.uleb128 .Ltmp423-.Ltmp421              #   Call between .Ltmp421 and .Ltmp423
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp423-.Lfunc_begin6         # >> Call Site 158 <<
	.uleb128 .Ltmp424-.Ltmp423              #   Call between .Ltmp423 and .Ltmp424
	.uleb128 .Ltmp425-.Lfunc_begin6         #     jumps to .Ltmp425
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp424-.Lfunc_begin6         # >> Call Site 159 <<
	.uleb128 .Ltmp483-.Ltmp424              #   Call between .Ltmp424 and .Ltmp483
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp483-.Lfunc_begin6         # >> Call Site 160 <<
	.uleb128 .Ltmp484-.Ltmp483              #   Call between .Ltmp483 and .Ltmp484
	.uleb128 .Ltmp485-.Lfunc_begin6         #     jumps to .Ltmp485
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp484-.Lfunc_begin6         # >> Call Site 161 <<
	.uleb128 .Ltmp486-.Ltmp484              #   Call between .Ltmp484 and .Ltmp486
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp486-.Lfunc_begin6         # >> Call Site 162 <<
	.uleb128 .Ltmp487-.Ltmp486              #   Call between .Ltmp486 and .Ltmp487
	.uleb128 .Ltmp488-.Lfunc_begin6         #     jumps to .Ltmp488
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp487-.Lfunc_begin6         # >> Call Site 163 <<
	.uleb128 .Ltmp441-.Ltmp487              #   Call between .Ltmp487 and .Ltmp441
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp441-.Lfunc_begin6         # >> Call Site 164 <<
	.uleb128 .Ltmp442-.Ltmp441              #   Call between .Ltmp441 and .Ltmp442
	.uleb128 .Ltmp443-.Lfunc_begin6         #     jumps to .Ltmp443
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp444-.Lfunc_begin6         # >> Call Site 165 <<
	.uleb128 .Ltmp445-.Ltmp444              #   Call between .Ltmp444 and .Ltmp445
	.uleb128 .Ltmp446-.Lfunc_begin6         #     jumps to .Ltmp446
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp445-.Lfunc_begin6         # >> Call Site 166 <<
	.uleb128 .Ltmp248-.Ltmp445              #   Call between .Ltmp445 and .Ltmp248
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp248-.Lfunc_begin6         # >> Call Site 167 <<
	.uleb128 .Ltmp249-.Ltmp248              #   Call between .Ltmp248 and .Ltmp249
	.uleb128 .Ltmp250-.Lfunc_begin6         #     jumps to .Ltmp250
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp249-.Lfunc_begin6         # >> Call Site 168 <<
	.uleb128 .Ltmp507-.Ltmp249              #   Call between .Ltmp249 and .Ltmp507
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp507-.Lfunc_begin6         # >> Call Site 169 <<
	.uleb128 .Ltmp508-.Ltmp507              #   Call between .Ltmp507 and .Ltmp508
	.uleb128 .Ltmp509-.Lfunc_begin6         #     jumps to .Ltmp509
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp508-.Lfunc_begin6         # >> Call Site 170 <<
	.uleb128 .Lfunc_end12-.Ltmp508          #   Call between .Ltmp508 and .Lfunc_end12
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
	.section	.text._ZN13CObjectVectorI9CPropertyE3AddERKS0_,"axG",@progbits,_ZN13CObjectVectorI9CPropertyE3AddERKS0_,comdat
	.weak	_ZN13CObjectVectorI9CPropertyE3AddERKS0_ # -- Begin function _ZN13CObjectVectorI9CPropertyE3AddERKS0_
	.p2align	5
	.type	_ZN13CObjectVectorI9CPropertyE3AddERKS0_,@function
_ZN13CObjectVectorI9CPropertyE3AddERKS0_: # @_ZN13CObjectVectorI9CPropertyE3AddERKS0_
.Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception7
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
	move	$s1, $a1
	move	$s0, $a0
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	ld.w	$s3, $s1, 8
	move	$fp, $a0
	vrepli.b	$vr0, 0
	bstrpick.d	$a0, $s3, 31, 0
	addi.d	$s4, $a0, 1
	slli.d	$a0, $s4, 31
	vst	$vr0, $fp, 0
	bgez	$a0, .LBB13_2
# %bb.1:
	move	$s2, $zero
	b	.LBB13_4
.LBB13_2:
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	addi.w	$a0, $s4, 0
	slti	$a1, $s3, -1
	slli.d	$a0, $a0, 2
	addi.w	$a2, $zero, -1
	maskeqz	$a2, $a2, $a1
	masknez	$a0, $a0, $a1
	or	$a0, $a2, $a0
.Ltmp510:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp511:                               # EH_LABEL
# %bb.3:                                # %.noexc
	move	$s2, $a0
	st.d	$a0, $fp, 0
	st.w	$zero, $a0, 0
	st.w	$s4, $fp, 12
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
.LBB13_4:                               # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i
	ld.d	$a0, $s1, 0
	move	$a1, $zero
	.p2align	4, , 16
.LBB13_5:                               # =>This Inner Loop Header: Depth=1
	ldx.w	$a2, $a0, $a1
	stx.w	$a2, $s2, $a1
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB13_5
# %bb.6:                                # %_ZN11CStringBaseIwEC2ERKS0_.exit.i
	ld.w	$s4, $s1, 24
	st.w	$s3, $fp, 8
	bstrpick.d	$a0, $s4, 31, 0
	addi.d	$s3, $a0, 1
	slli.d	$a0, $s3, 31
	vst	$vr0, $fp, 16
	bgez	$a0, .LBB13_8
# %bb.7:
	move	$a0, $zero
	b	.LBB13_10
.LBB13_8:
	addi.w	$a0, $s3, 0
	slti	$a1, $s4, -1
	slli.d	$a0, $a0, 2
	addi.w	$a2, $zero, -1
	maskeqz	$a2, $a2, $a1
	masknez	$a0, $a0, $a1
	or	$a0, $a2, $a0
.Ltmp513:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp514:                               # EH_LABEL
# %bb.9:                                # %.noexc.i
	st.d	$a0, $fp, 16
	st.w	$zero, $a0, 0
	st.w	$s3, $fp, 28
.LBB13_10:                              # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i4.i
	ld.d	$a1, $s1, 16
	.p2align	4, , 16
.LBB13_11:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $a1, 0
	addi.d	$a1, $a1, 4
	addi.d	$a3, $a0, 4
	st.w	$a2, $a0, 0
	move	$a0, $a3
	bnez	$a2, .LBB13_11
# %bb.12:
	st.w	$s4, $fp, 24
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector18ReserveOnePositionEv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 12
	ld.d	$a1, $s0, 16
	slli.d	$a2, $a0, 3
	stx.d	$fp, $a1, $a2
	addi.d	$a1, $a0, 1
	st.w	$a1, $s0, 12
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.LBB13_13:
.Ltmp515:                               # EH_LABEL
	move	$s0, $a0
	beqz	$s2, .LBB13_16
# %bb.14:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB13_16
.LBB13_15:
.Ltmp512:                               # EH_LABEL
	move	$s0, $a0
.LBB13_16:                              # %.body
	ori	$a1, $zero, 32
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end13:
	.size	_ZN13CObjectVectorI9CPropertyE3AddERKS0_, .Lfunc_end13-_ZN13CObjectVectorI9CPropertyE3AddERKS0_
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorI9CPropertyE3AddERKS0_,"aG",@progbits,_ZN13CObjectVectorI9CPropertyE3AddERKS0_,comdat
	.p2align	2, 0x0
GCC_except_table13:
.Lexception7:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end7-.Lcst_begin7
.Lcst_begin7:
	.uleb128 .Lfunc_begin7-.Lfunc_begin7    # >> Call Site 1 <<
	.uleb128 .Ltmp510-.Lfunc_begin7         #   Call between .Lfunc_begin7 and .Ltmp510
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp510-.Lfunc_begin7         # >> Call Site 2 <<
	.uleb128 .Ltmp511-.Ltmp510              #   Call between .Ltmp510 and .Ltmp511
	.uleb128 .Ltmp512-.Lfunc_begin7         #     jumps to .Ltmp512
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp513-.Lfunc_begin7         # >> Call Site 3 <<
	.uleb128 .Ltmp514-.Ltmp513              #   Call between .Ltmp513 and .Ltmp514
	.uleb128 .Ltmp515-.Lfunc_begin7         #     jumps to .Ltmp515
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp514-.Lfunc_begin7         # >> Call Site 4 <<
	.uleb128 .Lfunc_end13-.Ltmp514          #   Call between .Ltmp514 and .Lfunc_end13
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end7:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN9CPropertyD2Ev,"axG",@progbits,_ZN9CPropertyD2Ev,comdat
	.weak	_ZN9CPropertyD2Ev               # -- Begin function _ZN9CPropertyD2Ev
	.p2align	5
	.type	_ZN9CPropertyD2Ev,@function
_ZN9CPropertyD2Ev:                      # @_ZN9CPropertyD2Ev
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 16
	beqz	$a0, .LBB14_2
# %bb.1:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB14_2:                               # %_ZN11CStringBaseIwED2Ev.exit
	ld.d	$a0, $fp, 0
	beqz	$a0, .LBB14_4
# %bb.3:
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdaPv)
	jr	$t8
.LBB14_4:                               # %_ZN11CStringBaseIwED2Ev.exit1
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end14:
	.size	_ZN9CPropertyD2Ev, .Lfunc_end14-_ZN9CPropertyD2Ev
                                        # -- End function
	.section	.text._ZNK12CArchivePath12GetFinalPathEv,"axG",@progbits,_ZNK12CArchivePath12GetFinalPathEv,comdat
	.weak	_ZNK12CArchivePath12GetFinalPathEv # -- Begin function _ZNK12CArchivePath12GetFinalPathEv
	.p2align	5
	.type	_ZNK12CArchivePath12GetFinalPathEv,@function
_ZNK12CArchivePath12GetFinalPathEv:     # @_ZNK12CArchivePath12GetFinalPathEv
.Lfunc_begin8:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception8
# %bb.0:
	addi.d	$sp, $sp, -96
	.cfi_def_cfa_offset 96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	move	$s1, $a1
	ld.w	$s0, $a1, 24
	move	$fp, $a0
	vrepli.b	$vr0, 0
	bstrpick.d	$a0, $s0, 31, 0
	addi.d	$s2, $a0, 1
	slli.d	$a0, $s2, 31
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	vst	$vr0, $fp, 0
	bgez	$a0, .LBB15_2
# %bb.1:
	move	$a0, $zero
	b	.LBB15_3
.LBB15_2:
	addi.w	$a0, $s2, 0
	slti	$a1, $s0, -1
	slli.d	$a0, $a0, 2
	addi.w	$a2, $zero, -1
	maskeqz	$a2, $a2, $a1
	masknez	$a0, $a0, $a1
	or	$a0, $a2, $a0
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 0
	st.w	$zero, $a0, 0
	st.w	$s2, $fp, 12
.LBB15_3:                               # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i.i
	ld.d	$a2, $s1, 16
	addi.d	$a1, $s1, 32
	.p2align	4, , 16
.LBB15_4:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a2, 0
	addi.d	$a2, $a2, 4
	addi.d	$a4, $a0, 4
	st.w	$a3, $a0, 0
	move	$a0, $a4
	bnez	$a3, .LBB15_4
# %bb.5:                                # %_ZN11CStringBaseIwEC2ERKS0_.exit.i.i
	st.w	$s0, $fp, 8
.Ltmp516:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN11CStringBaseIwEpLERKS0_)
	jirl	$ra, $ra, 0
.Ltmp517:                               # EH_LABEL
# %bb.6:                                # %_ZNK12CArchivePath17GetPathWithoutExtEv.exit
	ld.w	$a0, $s1, 56
	beqz	$a0, .LBB15_16
# %bb.7:
.Ltmp519:                               # EH_LABEL
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp520:                               # EH_LABEL
# %bb.8:
	move	$s0, $a0
	ori	$a0, $zero, 46
	st.d	$a0, $s0, 0
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 40
.Ltmp522:                               # EH_LABEL
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp523:                               # EH_LABEL
# %bb.9:                                # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i
	move	$a2, $zero
	addi.d	$a1, $s1, 48
	st.d	$a0, $sp, 40
	st.w	$zero, $a0, 0
	ori	$a3, $zero, 2
	st.w	$a3, $sp, 52
	.p2align	4, , 16
.LBB15_10:                              # =>This Inner Loop Header: Depth=1
	ldx.w	$a3, $s0, $a2
	stx.w	$a3, $a0, $a2
	addi.d	$a2, $a2, 4
	bnez	$a3, .LBB15_10
# %bb.11:                               # %_ZN11CStringBaseIwEC2ERKS0_.exit.i
	ori	$a0, $zero, 1
	st.w	$a0, $sp, 48
.Ltmp525:                               # EH_LABEL
	addi.d	$a0, $sp, 40
	pcaddu18i	$ra, %call36(_ZN11CStringBaseIwEpLERKS0_)
	jirl	$ra, $ra, 0
.Ltmp526:                               # EH_LABEL
# %bb.12:                               # %_ZplIwE11CStringBaseIT_ERKS2_S4_.exit
.Ltmp528:                               # EH_LABEL
	addi.d	$a1, $sp, 40
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN11CStringBaseIwEpLERKS0_)
	jirl	$ra, $ra, 0
.Ltmp529:                               # EH_LABEL
# %bb.13:
	ld.d	$a0, $sp, 40
	beqz	$a0, .LBB15_15
# %bb.14:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB15_15:                              # %_ZN11CStringBaseIwED2Ev.exit7
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB15_16:
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.LBB15_17:
.Ltmp530:                               # EH_LABEL
	b	.LBB15_19
.LBB15_18:
.Ltmp527:                               # EH_LABEL
.LBB15_19:
	ld.d	$a1, $sp, 40
	move	$s1, $a0
	beqz	$a1, .LBB15_22
# %bb.20:
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB15_22
.LBB15_21:
.Ltmp524:                               # EH_LABEL
	move	$s1, $a0
.LBB15_22:                              # %_ZN11CStringBaseIwED2Ev.exit9
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB15_24
.LBB15_23:
.Ltmp521:                               # EH_LABEL
	move	$s1, $a0
.LBB15_24:
	ld.d	$a0, $fp, 0
	bnez	$a0, .LBB15_27
	b	.LBB15_28
.LBB15_25:
.Ltmp518:                               # EH_LABEL
	ld.d	$a1, $fp, 0
	move	$s1, $a0
	beqz	$a1, .LBB15_28
# %bb.26:
	move	$a0, $a1
.LBB15_27:                              # %common.resume
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB15_28:                              # %common.resume
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end15:
	.size	_ZNK12CArchivePath12GetFinalPathEv, .Lfunc_end15-_ZNK12CArchivePath12GetFinalPathEv
	.cfi_endproc
	.section	.gcc_except_table._ZNK12CArchivePath12GetFinalPathEv,"aG",@progbits,_ZNK12CArchivePath12GetFinalPathEv,comdat
	.p2align	2, 0x0
GCC_except_table15:
.Lexception8:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end8-.Lcst_begin8
.Lcst_begin8:
	.uleb128 .Lfunc_begin8-.Lfunc_begin8    # >> Call Site 1 <<
	.uleb128 .Ltmp516-.Lfunc_begin8         #   Call between .Lfunc_begin8 and .Ltmp516
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp516-.Lfunc_begin8         # >> Call Site 2 <<
	.uleb128 .Ltmp517-.Ltmp516              #   Call between .Ltmp516 and .Ltmp517
	.uleb128 .Ltmp518-.Lfunc_begin8         #     jumps to .Ltmp518
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp519-.Lfunc_begin8         # >> Call Site 3 <<
	.uleb128 .Ltmp520-.Ltmp519              #   Call between .Ltmp519 and .Ltmp520
	.uleb128 .Ltmp521-.Lfunc_begin8         #     jumps to .Ltmp521
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp522-.Lfunc_begin8         # >> Call Site 4 <<
	.uleb128 .Ltmp523-.Ltmp522              #   Call between .Ltmp522 and .Ltmp523
	.uleb128 .Ltmp524-.Lfunc_begin8         #     jumps to .Ltmp524
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp525-.Lfunc_begin8         # >> Call Site 5 <<
	.uleb128 .Ltmp526-.Ltmp525              #   Call between .Ltmp525 and .Ltmp526
	.uleb128 .Ltmp527-.Lfunc_begin8         #     jumps to .Ltmp527
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp528-.Lfunc_begin8         # >> Call Site 6 <<
	.uleb128 .Ltmp529-.Ltmp528              #   Call between .Ltmp528 and .Ltmp529
	.uleb128 .Ltmp530-.Lfunc_begin8         #     jumps to .Ltmp530
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp529-.Lfunc_begin8         # >> Call Site 7 <<
	.uleb128 .Lfunc_end15-.Ltmp529          #   Call between .Ltmp529 and .Lfunc_end15
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end8:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorI11CStringBaseIwEED2Ev,"axG",@progbits,_ZN13CObjectVectorI11CStringBaseIwEED2Ev,comdat
	.weak	_ZN13CObjectVectorI11CStringBaseIwEED2Ev # -- Begin function _ZN13CObjectVectorI11CStringBaseIwEED2Ev
	.p2align	5
	.type	_ZN13CObjectVectorI11CStringBaseIwEED2Ev,@function
_ZN13CObjectVectorI11CStringBaseIwEED2Ev: # @_ZN13CObjectVectorI11CStringBaseIwEED2Ev
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
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI11CStringBaseIwEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorI11CStringBaseIwEE+16)
	st.d	$a0, $fp, 0
.Ltmp531:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp532:                               # EH_LABEL
# %bb.1:
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVectorD2Ev)
	jr	$t8
.LBB16_2:
.Ltmp533:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end16:
	.size	_ZN13CObjectVectorI11CStringBaseIwEED2Ev, .Lfunc_end16-_ZN13CObjectVectorI11CStringBaseIwEED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorI11CStringBaseIwEED2Ev,"aG",@progbits,_ZN13CObjectVectorI11CStringBaseIwEED2Ev,comdat
	.p2align	2, 0x0
GCC_except_table16:
.Lexception9:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase5-.Lttbaseref5
.Lttbaseref5:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end9-.Lcst_begin9
.Lcst_begin9:
	.uleb128 .Ltmp531-.Lfunc_begin9         # >> Call Site 1 <<
	.uleb128 .Ltmp532-.Ltmp531              #   Call between .Ltmp531 and .Ltmp532
	.uleb128 .Ltmp533-.Lfunc_begin9         #     jumps to .Ltmp533
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp532-.Lfunc_begin9         # >> Call Site 2 <<
	.uleb128 .Lfunc_end16-.Ltmp532          #   Call between .Ltmp532 and .Lfunc_end16
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end9:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase5:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN12CArchivePathaSERKS_,"axG",@progbits,_ZN12CArchivePathaSERKS_,comdat
	.weak	_ZN12CArchivePathaSERKS_        # -- Begin function _ZN12CArchivePathaSERKS_
	.p2align	5
	.type	_ZN12CArchivePathaSERKS_,@function
_ZN12CArchivePathaSERKS_:               # @_ZN12CArchivePathaSERKS_
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
	move	$s0, $a1
	move	$fp, $a0
	beq	$a1, $a0, .LBB17_3
# %bb.1:
	st.w	$zero, $fp, 8
	ld.d	$s2, $fp, 0
	ld.w	$a0, $s0, 8
	ld.w	$s4, $fp, 12
	addi.w	$s3, $a0, 1
	st.w	$zero, $s2, 0
	bne	$s3, $s4, .LBB17_4
# %bb.2:
	move	$s1, $s2
	b	.LBB17_8
.LBB17_3:                               # %_ZN11CStringBaseIwEaSERKS0_.exit48.thread
	ld.b	$a0, $s0, 80
	st.b	$a0, $fp, 80
	b	.LBB17_59
.LBB17_4:
	slti	$a0, $a0, -1
	slli.d	$a1, $s3, 2
	masknez	$a1, $a1, $a0
	addi.w	$a2, $zero, -1
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	blez	$s4, .LBB17_6
# %bb.5:                                # %._crit_edge.thread.i.i
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 8
	b	.LBB17_7
.LBB17_6:
	move	$a0, $zero
.LBB17_7:
	st.d	$s1, $fp, 0
	slli.d	$a0, $a0, 2
	stx.w	$zero, $s1, $a0
	st.w	$s3, $fp, 12
.LBB17_8:                               # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
	ld.d	$a0, $s0, 0
	.p2align	4, , 16
.LBB17_9:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $a0, 0
	addi.d	$a0, $a0, 4
	addi.d	$a2, $s1, 4
	st.w	$a1, $s1, 0
	move	$s1, $a2
	bnez	$a1, .LBB17_9
# %bb.10:
	ld.w	$a0, $s0, 8
	st.w	$a0, $fp, 8
	st.w	$zero, $fp, 24
	ld.d	$s2, $fp, 16
	ld.w	$a0, $s0, 24
	ld.w	$s4, $fp, 28
	addi.w	$s3, $a0, 1
	st.w	$zero, $s2, 0
	bne	$s3, $s4, .LBB17_12
# %bb.11:
	move	$s1, $s2
	b	.LBB17_16
.LBB17_12:
	slti	$a0, $a0, -1
	slli.d	$a1, $s3, 2
	masknez	$a1, $a1, $a0
	addi.w	$a2, $zero, -1
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	blez	$s4, .LBB17_14
# %bb.13:                               # %._crit_edge.thread.i.i14
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 24
	b	.LBB17_15
.LBB17_14:
	move	$a0, $zero
.LBB17_15:
	st.d	$s1, $fp, 16
	slli.d	$a0, $a0, 2
	stx.w	$zero, $s1, $a0
	st.w	$s3, $fp, 28
.LBB17_16:                              # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i9
	ld.d	$a0, $s0, 16
	.p2align	4, , 16
.LBB17_17:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $a0, 0
	addi.d	$a0, $a0, 4
	addi.d	$a2, $s1, 4
	st.w	$a1, $s1, 0
	move	$s1, $a2
	bnez	$a1, .LBB17_17
# %bb.18:
	ld.w	$a0, $s0, 24
	st.w	$a0, $fp, 24
	st.w	$zero, $fp, 40
	ld.d	$s2, $fp, 32
	ld.w	$a0, $s0, 40
	ld.w	$s4, $fp, 44
	addi.w	$s3, $a0, 1
	st.w	$zero, $s2, 0
	bne	$s3, $s4, .LBB17_20
# %bb.19:
	move	$s1, $s2
	b	.LBB17_24
.LBB17_20:
	slti	$a0, $a0, -1
	slli.d	$a1, $s3, 2
	masknez	$a1, $a1, $a0
	addi.w	$a2, $zero, -1
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	blez	$s4, .LBB17_22
# %bb.21:                               # %._crit_edge.thread.i.i22
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 40
	b	.LBB17_23
.LBB17_22:
	move	$a0, $zero
.LBB17_23:
	st.d	$s1, $fp, 32
	slli.d	$a0, $a0, 2
	stx.w	$zero, $s1, $a0
	st.w	$s3, $fp, 44
.LBB17_24:                              # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i17
	ld.d	$a0, $s0, 32
	.p2align	4, , 16
.LBB17_25:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $a0, 0
	addi.d	$a0, $a0, 4
	addi.d	$a2, $s1, 4
	st.w	$a1, $s1, 0
	move	$s1, $a2
	bnez	$a1, .LBB17_25
# %bb.26:
	ld.w	$a0, $s0, 40
	st.w	$a0, $fp, 40
	st.w	$zero, $fp, 56
	ld.d	$s2, $fp, 48
	ld.w	$a0, $s0, 56
	ld.w	$s4, $fp, 60
	addi.w	$s3, $a0, 1
	st.w	$zero, $s2, 0
	bne	$s3, $s4, .LBB17_28
# %bb.27:
	move	$s1, $s2
	b	.LBB17_32
.LBB17_28:
	slti	$a0, $a0, -1
	slli.d	$a1, $s3, 2
	masknez	$a1, $a1, $a0
	addi.w	$a2, $zero, -1
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	blez	$s4, .LBB17_30
# %bb.29:                               # %._crit_edge.thread.i.i30
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 56
	b	.LBB17_31
.LBB17_30:
	move	$a0, $zero
.LBB17_31:
	st.d	$s1, $fp, 48
	slli.d	$a0, $a0, 2
	stx.w	$zero, $s1, $a0
	st.w	$s3, $fp, 60
.LBB17_32:                              # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i25
	ld.d	$a0, $s0, 48
	.p2align	4, , 16
.LBB17_33:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $a0, 0
	addi.d	$a0, $a0, 4
	addi.d	$a2, $s1, 4
	st.w	$a1, $s1, 0
	move	$s1, $a2
	bnez	$a1, .LBB17_33
# %bb.34:
	ld.w	$a0, $s0, 56
	st.w	$a0, $fp, 56
	st.w	$zero, $fp, 72
	ld.d	$s2, $fp, 64
	ld.w	$a0, $s0, 72
	ld.w	$s4, $fp, 76
	addi.w	$s3, $a0, 1
	st.w	$zero, $s2, 0
	bne	$s3, $s4, .LBB17_36
# %bb.35:
	move	$s1, $s2
	b	.LBB17_40
.LBB17_36:
	slti	$a0, $a0, -1
	slli.d	$a1, $s3, 2
	masknez	$a1, $a1, $a0
	addi.w	$a2, $zero, -1
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	blez	$s4, .LBB17_38
# %bb.37:                               # %._crit_edge.thread.i.i38
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 72
	b	.LBB17_39
.LBB17_38:
	move	$a0, $zero
.LBB17_39:
	st.d	$s1, $fp, 64
	slli.d	$a0, $a0, 2
	stx.w	$zero, $s1, $a0
	st.w	$s3, $fp, 76
.LBB17_40:                              # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i33
	ld.d	$a0, $s0, 64
	.p2align	4, , 16
.LBB17_41:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $a0, 0
	addi.d	$a0, $a0, 4
	addi.d	$a2, $s1, 4
	st.w	$a1, $s1, 0
	move	$s1, $a2
	bnez	$a1, .LBB17_41
# %bb.42:
	ld.w	$a0, $s0, 72
	st.w	$a0, $fp, 72
	ld.b	$a1, $s0, 80
	st.w	$zero, $fp, 96
	ld.d	$s2, $fp, 88
	ld.w	$a0, $s0, 96
	ld.w	$s4, $fp, 100
	st.b	$a1, $fp, 80
	addi.w	$s3, $a0, 1
	st.w	$zero, $s2, 0
	bne	$s3, $s4, .LBB17_44
# %bb.43:
	move	$s1, $s2
	b	.LBB17_48
.LBB17_44:
	slti	$a0, $a0, -1
	slli.d	$a1, $s3, 2
	masknez	$a1, $a1, $a0
	addi.w	$a2, $zero, -1
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	blez	$s4, .LBB17_46
# %bb.45:                               # %._crit_edge.thread.i.i46
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 96
	b	.LBB17_47
.LBB17_46:
	move	$a0, $zero
.LBB17_47:
	st.d	$s1, $fp, 88
	slli.d	$a0, $a0, 2
	stx.w	$zero, $s1, $a0
	st.w	$s3, $fp, 100
.LBB17_48:                              # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i41
	ld.d	$a0, $s0, 88
	.p2align	4, , 16
.LBB17_49:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $a0, 0
	addi.d	$a0, $a0, 4
	addi.d	$a2, $s1, 4
	st.w	$a1, $s1, 0
	move	$s1, $a2
	bnez	$a1, .LBB17_49
# %bb.50:
	ld.w	$a0, $s0, 96
	st.w	$a0, $fp, 96
	st.w	$zero, $fp, 112
	ld.d	$s2, $fp, 104
	ld.w	$a0, $s0, 112
	ld.w	$s4, $fp, 116
	addi.w	$s3, $a0, 1
	st.w	$zero, $s2, 0
	bne	$s3, $s4, .LBB17_52
# %bb.51:
	move	$s1, $s2
	b	.LBB17_56
.LBB17_52:
	slti	$a0, $a0, -1
	slli.d	$a1, $s3, 2
	masknez	$a1, $a1, $a0
	addi.w	$a2, $zero, -1
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	blez	$s4, .LBB17_54
# %bb.53:                               # %._crit_edge.thread.i.i54
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 112
	b	.LBB17_55
.LBB17_54:
	move	$a0, $zero
.LBB17_55:
	st.d	$s1, $fp, 104
	slli.d	$a0, $a0, 2
	stx.w	$zero, $s1, $a0
	st.w	$s3, $fp, 116
.LBB17_56:                              # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i49
	ld.d	$a0, $s0, 104
	.p2align	4, , 16
.LBB17_57:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $a0, 0
	addi.d	$a0, $a0, 4
	addi.d	$a2, $s1, 4
	st.w	$a1, $s1, 0
	move	$s1, $a2
	bnez	$a1, .LBB17_57
# %bb.58:                               # %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i53
	ld.w	$a0, $s0, 112
	st.w	$a0, $fp, 112
.LBB17_59:                              # %_ZN11CStringBaseIwEaSERKS0_.exit56
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
.Lfunc_end17:
	.size	_ZN12CArchivePathaSERKS_, .Lfunc_end17-_ZN12CArchivePathaSERKS_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK12CArchivePath11GetTempPathEv,"axG",@progbits,_ZNK12CArchivePath11GetTempPathEv,comdat
	.weak	_ZNK12CArchivePath11GetTempPathEv # -- Begin function _ZNK12CArchivePath11GetTempPathEv
	.p2align	5
	.type	_ZNK12CArchivePath11GetTempPathEv,@function
_ZNK12CArchivePath11GetTempPathEv:      # @_ZNK12CArchivePath11GetTempPathEv
.Lfunc_begin10:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception10
# %bb.0:
	addi.d	$sp, $sp, -96
	.cfi_def_cfa_offset 96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	move	$s0, $a1
	ld.w	$s1, $a1, 96
	move	$fp, $a0
	vrepli.b	$vr0, 0
	bstrpick.d	$a0, $s1, 31, 0
	addi.d	$s2, $a0, 1
	slli.d	$a0, $s2, 31
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	vst	$vr0, $fp, 0
	bgez	$a0, .LBB18_2
# %bb.1:
	move	$a0, $zero
	b	.LBB18_3
.LBB18_2:
	addi.w	$a0, $s2, 0
	slti	$a1, $s1, -1
	slli.d	$a0, $a0, 2
	addi.w	$a2, $zero, -1
	maskeqz	$a2, $a2, $a1
	masknez	$a0, $a0, $a1
	or	$a0, $a2, $a0
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 0
	st.w	$zero, $a0, 0
	st.w	$s2, $fp, 12
.LBB18_3:                               # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i
	ld.d	$a2, $s0, 88
	addi.d	$a1, $s0, 32
	.p2align	4, , 16
.LBB18_4:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a2, 0
	addi.d	$a2, $a2, 4
	addi.d	$a4, $a0, 4
	st.w	$a3, $a0, 0
	move	$a0, $a4
	bnez	$a3, .LBB18_4
# %bb.5:                                # %_ZN11CStringBaseIwEC2ERKS0_.exit.i
	st.w	$s1, $fp, 8
.Ltmp534:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN11CStringBaseIwEpLERKS0_)
	jirl	$ra, $ra, 0
.Ltmp535:                               # EH_LABEL
# %bb.6:                                # %_ZplIwE11CStringBaseIT_ERKS2_S4_.exit
	ld.w	$a0, $s0, 56
	beqz	$a0, .LBB18_16
# %bb.7:
.Ltmp537:                               # EH_LABEL
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp538:                               # EH_LABEL
# %bb.8:
	move	$s1, $a0
	ori	$a0, $zero, 46
	st.d	$a0, $s1, 0
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 40
.Ltmp540:                               # EH_LABEL
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp541:                               # EH_LABEL
# %bb.9:                                # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i10
	move	$a2, $zero
	addi.d	$a1, $s0, 48
	st.d	$a0, $sp, 40
	st.w	$zero, $a0, 0
	ori	$a3, $zero, 2
	st.w	$a3, $sp, 52
	.p2align	4, , 16
.LBB18_10:                              # =>This Inner Loop Header: Depth=1
	ldx.w	$a3, $s1, $a2
	stx.w	$a3, $a0, $a2
	addi.d	$a2, $a2, 4
	bnez	$a3, .LBB18_10
# %bb.11:                               # %_ZN11CStringBaseIwEC2ERKS0_.exit.i14
	ori	$a0, $zero, 1
	st.w	$a0, $sp, 48
.Ltmp543:                               # EH_LABEL
	addi.d	$a0, $sp, 40
	pcaddu18i	$ra, %call36(_ZN11CStringBaseIwEpLERKS0_)
	jirl	$ra, $ra, 0
.Ltmp544:                               # EH_LABEL
# %bb.12:                               # %_ZplIwE11CStringBaseIT_ERKS2_S4_.exit16
.Ltmp546:                               # EH_LABEL
	addi.d	$a1, $sp, 40
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN11CStringBaseIwEpLERKS0_)
	jirl	$ra, $ra, 0
.Ltmp547:                               # EH_LABEL
# %bb.13:
	ld.d	$a0, $sp, 40
	beqz	$a0, .LBB18_15
# %bb.14:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB18_15:                              # %_ZN11CStringBaseIwED2Ev.exit17
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB18_16:
.Ltmp549:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a1, $a0, %pc_lo12(.L.str.17)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN11CStringBaseIwEpLEPKw)
	jirl	$ra, $ra, 0
.Ltmp550:                               # EH_LABEL
# %bb.17:
	addi.d	$a1, $s0, 104
.Ltmp551:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN11CStringBaseIwEpLERKS0_)
	jirl	$ra, $ra, 0
.Ltmp552:                               # EH_LABEL
# %bb.18:
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.LBB18_19:
.Ltmp548:                               # EH_LABEL
	b	.LBB18_21
.LBB18_20:
.Ltmp545:                               # EH_LABEL
.LBB18_21:
	ld.d	$a1, $sp, 40
	move	$s0, $a0
	beqz	$a1, .LBB18_24
# %bb.22:
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB18_24
.LBB18_23:
.Ltmp542:                               # EH_LABEL
	move	$s0, $a0
.LBB18_24:                              # %_ZN11CStringBaseIwED2Ev.exit19
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB18_30
.LBB18_25:
.Ltmp539:                               # EH_LABEL
	b	.LBB18_29
.LBB18_26:
.Ltmp536:                               # EH_LABEL
	ld.d	$a1, $fp, 0
	move	$s0, $a0
	beqz	$a1, .LBB18_32
# %bb.27:
	move	$a0, $a1
	b	.LBB18_31
.LBB18_28:
.Ltmp553:                               # EH_LABEL
.LBB18_29:
	move	$s0, $a0
.LBB18_30:
	ld.d	$a0, $fp, 0
	beqz	$a0, .LBB18_32
.LBB18_31:                              # %common.resume
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB18_32:                              # %common.resume
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end18:
	.size	_ZNK12CArchivePath11GetTempPathEv, .Lfunc_end18-_ZNK12CArchivePath11GetTempPathEv
	.cfi_endproc
	.section	.gcc_except_table._ZNK12CArchivePath11GetTempPathEv,"aG",@progbits,_ZNK12CArchivePath11GetTempPathEv,comdat
	.p2align	2, 0x0
GCC_except_table18:
.Lexception10:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end10-.Lcst_begin10
.Lcst_begin10:
	.uleb128 .Lfunc_begin10-.Lfunc_begin10  # >> Call Site 1 <<
	.uleb128 .Ltmp534-.Lfunc_begin10        #   Call between .Lfunc_begin10 and .Ltmp534
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp534-.Lfunc_begin10        # >> Call Site 2 <<
	.uleb128 .Ltmp535-.Ltmp534              #   Call between .Ltmp534 and .Ltmp535
	.uleb128 .Ltmp536-.Lfunc_begin10        #     jumps to .Ltmp536
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp537-.Lfunc_begin10        # >> Call Site 3 <<
	.uleb128 .Ltmp538-.Ltmp537              #   Call between .Ltmp537 and .Ltmp538
	.uleb128 .Ltmp539-.Lfunc_begin10        #     jumps to .Ltmp539
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp540-.Lfunc_begin10        # >> Call Site 4 <<
	.uleb128 .Ltmp541-.Ltmp540              #   Call between .Ltmp540 and .Ltmp541
	.uleb128 .Ltmp542-.Lfunc_begin10        #     jumps to .Ltmp542
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp543-.Lfunc_begin10        # >> Call Site 5 <<
	.uleb128 .Ltmp544-.Ltmp543              #   Call between .Ltmp543 and .Ltmp544
	.uleb128 .Ltmp545-.Lfunc_begin10        #     jumps to .Ltmp545
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp546-.Lfunc_begin10        # >> Call Site 6 <<
	.uleb128 .Ltmp547-.Ltmp546              #   Call between .Ltmp546 and .Ltmp547
	.uleb128 .Ltmp548-.Lfunc_begin10        #     jumps to .Ltmp548
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp547-.Lfunc_begin10        # >> Call Site 7 <<
	.uleb128 .Ltmp549-.Ltmp547              #   Call between .Ltmp547 and .Ltmp549
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp549-.Lfunc_begin10        # >> Call Site 8 <<
	.uleb128 .Ltmp552-.Ltmp549              #   Call between .Ltmp549 and .Ltmp552
	.uleb128 .Ltmp553-.Lfunc_begin10        #     jumps to .Ltmp553
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp552-.Lfunc_begin10        # >> Call Site 9 <<
	.uleb128 .Lfunc_end18-.Ltmp552          #   Call between .Ltmp552 and .Lfunc_end18
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end10:
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
.Lfunc_end19:
	.size	__clang_call_terminate, .Lfunc_end19-__clang_call_terminate
                                        # -- End function
	.section	.text._ZN13CObjectVectorI8CArcItemED2Ev,"axG",@progbits,_ZN13CObjectVectorI8CArcItemED2Ev,comdat
	.weak	_ZN13CObjectVectorI8CArcItemED2Ev # -- Begin function _ZN13CObjectVectorI8CArcItemED2Ev
	.p2align	5
	.type	_ZN13CObjectVectorI8CArcItemED2Ev,@function
_ZN13CObjectVectorI8CArcItemED2Ev:      # @_ZN13CObjectVectorI8CArcItemED2Ev
.Lfunc_begin11:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception11
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI8CArcItemE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorI8CArcItemE+16)
	st.d	$a0, $fp, 0
.Ltmp554:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp555:                               # EH_LABEL
# %bb.1:
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVectorD2Ev)
	jr	$t8
.LBB20_2:
.Ltmp556:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end20:
	.size	_ZN13CObjectVectorI8CArcItemED2Ev, .Lfunc_end20-_ZN13CObjectVectorI8CArcItemED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorI8CArcItemED2Ev,"aG",@progbits,_ZN13CObjectVectorI8CArcItemED2Ev,comdat
	.p2align	2, 0x0
GCC_except_table20:
.Lexception11:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase6-.Lttbaseref6
.Lttbaseref6:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end11-.Lcst_begin11
.Lcst_begin11:
	.uleb128 .Ltmp554-.Lfunc_begin11        # >> Call Site 1 <<
	.uleb128 .Ltmp555-.Ltmp554              #   Call between .Ltmp554 and .Ltmp555
	.uleb128 .Ltmp556-.Lfunc_begin11        #     jumps to .Ltmp556
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp555-.Lfunc_begin11        # >> Call Site 2 <<
	.uleb128 .Lfunc_end20-.Ltmp555          #   Call between .Ltmp555 and .Lfunc_end20
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
	.section	.text._ZN10CTempFilesD2Ev,"axG",@progbits,_ZN10CTempFilesD2Ev,comdat
	.weak	_ZN10CTempFilesD2Ev             # -- Begin function _ZN10CTempFilesD2Ev
	.p2align	5
	.type	_ZN10CTempFilesD2Ev,@function
_ZN10CTempFilesD2Ev:                    # @_ZN10CTempFilesD2Ev
.Lfunc_begin12:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception12
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
.Ltmp557:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN10CTempFiles5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp558:                               # EH_LABEL
# %bb.1:
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI11CStringBaseIwEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorI11CStringBaseIwEE+16)
	st.d	$a0, $fp, 0
.Ltmp560:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp561:                               # EH_LABEL
# %bb.2:                                # %_ZN13CObjectVectorI11CStringBaseIwEED2Ev.exit
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVectorD2Ev)
	jr	$t8
.LBB21_3:
.Ltmp562:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB21_4:
.Ltmp559:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end21:
	.size	_ZN10CTempFilesD2Ev, .Lfunc_end21-_ZN10CTempFilesD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN10CTempFilesD2Ev,"aG",@progbits,_ZN10CTempFilesD2Ev,comdat
	.p2align	2, 0x0
GCC_except_table21:
.Lexception12:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase7-.Lttbaseref7
.Lttbaseref7:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end12-.Lcst_begin12
.Lcst_begin12:
	.uleb128 .Ltmp557-.Lfunc_begin12        # >> Call Site 1 <<
	.uleb128 .Ltmp558-.Ltmp557              #   Call between .Ltmp557 and .Ltmp558
	.uleb128 .Ltmp559-.Lfunc_begin12        #     jumps to .Ltmp559
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp560-.Lfunc_begin12        # >> Call Site 2 <<
	.uleb128 .Ltmp561-.Ltmp560              #   Call between .Ltmp560 and .Ltmp561
	.uleb128 .Ltmp562-.Lfunc_begin12        #     jumps to .Ltmp562
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp561-.Lfunc_begin12        # >> Call Site 3 <<
	.uleb128 .Lfunc_end21-.Ltmp561          #   Call between .Ltmp561 and .Lfunc_end21
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
	.section	.text._ZN9CDirItemsD2Ev,"axG",@progbits,_ZN9CDirItemsD2Ev,comdat
	.weak	_ZN9CDirItemsD2Ev               # -- Begin function _ZN9CDirItemsD2Ev
	.p2align	5
	.type	_ZN9CDirItemsD2Ev,@function
_ZN9CDirItemsD2Ev:                      # @_ZN9CDirItemsD2Ev
.Lfunc_begin13:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception13
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
	addi.d	$s0, $a0, 96
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI8CDirItemE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorI8CDirItemE+16)
	st.d	$a0, $fp, 96
.Ltmp563:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp564:                               # EH_LABEL
# %bb.1:                                # %_ZN13CObjectVectorI8CDirItemED2Ev.exit
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 64
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 32
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI11CStringBaseIwEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorI11CStringBaseIwEE+16)
	st.d	$a0, $fp, 0
.Ltmp566:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp567:                               # EH_LABEL
# %bb.2:                                # %_ZN13CObjectVectorI11CStringBaseIwEED2Ev.exit
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVectorD2Ev)
	jr	$t8
.LBB22_3:
.Ltmp568:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB22_4:
.Ltmp565:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end22:
	.size	_ZN9CDirItemsD2Ev, .Lfunc_end22-_ZN9CDirItemsD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN9CDirItemsD2Ev,"aG",@progbits,_ZN9CDirItemsD2Ev,comdat
	.p2align	2, 0x0
GCC_except_table22:
.Lexception13:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase8-.Lttbaseref8
.Lttbaseref8:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end13-.Lcst_begin13
.Lcst_begin13:
	.uleb128 .Ltmp563-.Lfunc_begin13        # >> Call Site 1 <<
	.uleb128 .Ltmp564-.Ltmp563              #   Call between .Ltmp563 and .Ltmp564
	.uleb128 .Ltmp565-.Lfunc_begin13        #     jumps to .Ltmp565
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp564-.Lfunc_begin13        # >> Call Site 2 <<
	.uleb128 .Ltmp566-.Ltmp564              #   Call between .Ltmp564 and .Ltmp566
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp566-.Lfunc_begin13        # >> Call Site 3 <<
	.uleb128 .Ltmp567-.Ltmp566              #   Call between .Ltmp566 and .Ltmp567
	.uleb128 .Ltmp568-.Lfunc_begin13        #     jumps to .Ltmp568
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp567-.Lfunc_begin13        # >> Call Site 4 <<
	.uleb128 .Lfunc_end22-.Ltmp567          #   Call between .Ltmp567 and .Lfunc_end22
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
	.section	.text._ZN12CArchiveLinkD2Ev,"axG",@progbits,_ZN12CArchiveLinkD2Ev,comdat
	.weak	_ZN12CArchiveLinkD2Ev           # -- Begin function _ZN12CArchiveLinkD2Ev
	.p2align	5
	.type	_ZN12CArchiveLinkD2Ev,@function
_ZN12CArchiveLinkD2Ev:                  # @_ZN12CArchiveLinkD2Ev
.Lfunc_begin14:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception14
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
.Ltmp569:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN12CArchiveLink7ReleaseEv)
	jirl	$ra, $ra, 0
.Ltmp570:                               # EH_LABEL
# %bb.1:
	addi.d	$s0, $fp, 32
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI11CStringBaseIwEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorI11CStringBaseIwEE+16)
	st.d	$a0, $fp, 32
.Ltmp572:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp573:                               # EH_LABEL
# %bb.2:                                # %_ZN13CObjectVectorI11CStringBaseIwEED2Ev.exit
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI4CArcE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorI4CArcE+16)
	st.d	$a0, $fp, 0
.Ltmp575:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp576:                               # EH_LABEL
# %bb.3:                                # %_ZN13CObjectVectorI4CArcED2Ev.exit
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVectorD2Ev)
	jr	$t8
.LBB23_4:
.Ltmp577:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB23_5:
.Ltmp574:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB23_6:
.Ltmp571:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end23:
	.size	_ZN12CArchiveLinkD2Ev, .Lfunc_end23-_ZN12CArchiveLinkD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN12CArchiveLinkD2Ev,"aG",@progbits,_ZN12CArchiveLinkD2Ev,comdat
	.p2align	2, 0x0
GCC_except_table23:
.Lexception14:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase9-.Lttbaseref9
.Lttbaseref9:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end14-.Lcst_begin14
.Lcst_begin14:
	.uleb128 .Ltmp569-.Lfunc_begin14        # >> Call Site 1 <<
	.uleb128 .Ltmp570-.Ltmp569              #   Call between .Ltmp569 and .Ltmp570
	.uleb128 .Ltmp571-.Lfunc_begin14        #     jumps to .Ltmp571
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp572-.Lfunc_begin14        # >> Call Site 2 <<
	.uleb128 .Ltmp573-.Ltmp572              #   Call between .Ltmp572 and .Ltmp573
	.uleb128 .Ltmp574-.Lfunc_begin14        #     jumps to .Ltmp574
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp573-.Lfunc_begin14        # >> Call Site 3 <<
	.uleb128 .Ltmp575-.Ltmp573              #   Call between .Ltmp573 and .Ltmp575
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp575-.Lfunc_begin14        # >> Call Site 4 <<
	.uleb128 .Ltmp576-.Ltmp575              #   Call between .Ltmp575 and .Ltmp576
	.uleb128 .Ltmp577-.Lfunc_begin14        #     jumps to .Ltmp577
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp576-.Lfunc_begin14        # >> Call Site 5 <<
	.uleb128 .Lfunc_end23-.Ltmp576          #   Call between .Ltmp576 and .Lfunc_end23
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end14:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase9:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN18COutMultiVolStream14QueryInterfaceERK4GUIDPPv,"axG",@progbits,_ZN18COutMultiVolStream14QueryInterfaceERK4GUIDPPv,comdat
	.weak	_ZN18COutMultiVolStream14QueryInterfaceERK4GUIDPPv # -- Begin function _ZN18COutMultiVolStream14QueryInterfaceERK4GUIDPPv
	.p2align	5
	.type	_ZN18COutMultiVolStream14QueryInterfaceERK4GUIDPPv,@function
_ZN18COutMultiVolStream14QueryInterfaceERK4GUIDPPv: # @_ZN18COutMultiVolStream14QueryInterfaceERK4GUIDPPv
	.cfi_startproc
# %bb.0:
	ld.bu	$a4, $a1, 0
	pcalau12i	$a3, %got_pc_hi20(IID_IUnknown)
	ld.d	$a3, $a3, %got_pc_lo12(IID_IUnknown)
	ld.bu	$a5, $a3, 0
	bne	$a4, $a5, .LBB24_16
# %bb.1:
	ld.bu	$a5, $a1, 1
	ld.bu	$a6, $a3, 1
	bne	$a5, $a6, .LBB24_16
# %bb.2:
	ld.bu	$a5, $a1, 2
	ld.bu	$a6, $a3, 2
	bne	$a5, $a6, .LBB24_16
# %bb.3:
	ld.bu	$a5, $a1, 3
	ld.bu	$a6, $a3, 3
	bne	$a5, $a6, .LBB24_16
# %bb.4:
	ld.bu	$a5, $a1, 4
	ld.bu	$a6, $a3, 4
	bne	$a5, $a6, .LBB24_16
# %bb.5:
	ld.bu	$a5, $a1, 5
	ld.bu	$a6, $a3, 5
	bne	$a5, $a6, .LBB24_16
# %bb.6:
	ld.bu	$a5, $a1, 6
	ld.bu	$a6, $a3, 6
	bne	$a5, $a6, .LBB24_16
# %bb.7:
	ld.bu	$a5, $a1, 7
	ld.bu	$a6, $a3, 7
	bne	$a5, $a6, .LBB24_16
# %bb.8:
	ld.bu	$a5, $a1, 8
	ld.bu	$a6, $a3, 8
	bne	$a5, $a6, .LBB24_16
# %bb.9:
	ld.bu	$a5, $a1, 9
	ld.bu	$a6, $a3, 9
	bne	$a5, $a6, .LBB24_16
# %bb.10:
	ld.bu	$a5, $a1, 10
	ld.bu	$a6, $a3, 10
	bne	$a5, $a6, .LBB24_16
# %bb.11:
	ld.bu	$a5, $a1, 11
	ld.bu	$a6, $a3, 11
	bne	$a5, $a6, .LBB24_16
# %bb.12:
	ld.bu	$a5, $a1, 12
	ld.bu	$a6, $a3, 12
	bne	$a5, $a6, .LBB24_16
# %bb.13:
	ld.bu	$a5, $a1, 13
	ld.bu	$a6, $a3, 13
	bne	$a5, $a6, .LBB24_16
# %bb.14:
	ld.bu	$a5, $a1, 14
	ld.bu	$a6, $a3, 14
	bne	$a5, $a6, .LBB24_16
# %bb.15:                               # %_ZeqRK4GUIDS1_.exit
	ld.bu	$a5, $a1, 15
	ld.bu	$a3, $a3, 15
	beq	$a5, $a3, .LBB24_32
.LBB24_16:                              # %_ZeqRK4GUIDS1_.exit.thread
	pcalau12i	$a3, %got_pc_hi20(IID_IOutStream)
	ld.d	$a5, $a3, %got_pc_lo12(IID_IOutStream)
	ld.bu	$a6, $a5, 0
	lu12i.w	$a3, -524284
	ori	$a3, $a3, 2
	bne	$a4, $a6, .LBB24_33
# %bb.17:
	ld.bu	$a4, $a1, 1
	ld.bu	$a6, $a5, 1
	bne	$a4, $a6, .LBB24_33
# %bb.18:
	ld.bu	$a4, $a1, 2
	ld.bu	$a6, $a5, 2
	bne	$a4, $a6, .LBB24_33
# %bb.19:
	ld.bu	$a4, $a1, 3
	ld.bu	$a6, $a5, 3
	bne	$a4, $a6, .LBB24_33
# %bb.20:
	ld.bu	$a4, $a1, 4
	ld.bu	$a6, $a5, 4
	bne	$a4, $a6, .LBB24_33
# %bb.21:
	ld.bu	$a4, $a1, 5
	ld.bu	$a6, $a5, 5
	bne	$a4, $a6, .LBB24_33
# %bb.22:
	ld.bu	$a4, $a1, 6
	ld.bu	$a6, $a5, 6
	bne	$a4, $a6, .LBB24_33
# %bb.23:
	ld.bu	$a4, $a1, 7
	ld.bu	$a6, $a5, 7
	bne	$a4, $a6, .LBB24_33
# %bb.24:
	ld.bu	$a4, $a1, 8
	ld.bu	$a6, $a5, 8
	bne	$a4, $a6, .LBB24_33
# %bb.25:
	ld.bu	$a4, $a1, 9
	ld.bu	$a6, $a5, 9
	bne	$a4, $a6, .LBB24_33
# %bb.26:
	ld.bu	$a4, $a1, 10
	ld.bu	$a6, $a5, 10
	bne	$a4, $a6, .LBB24_33
# %bb.27:
	ld.bu	$a4, $a1, 11
	ld.bu	$a6, $a5, 11
	bne	$a4, $a6, .LBB24_33
# %bb.28:
	ld.bu	$a4, $a1, 12
	ld.bu	$a6, $a5, 12
	bne	$a4, $a6, .LBB24_33
# %bb.29:
	ld.bu	$a4, $a1, 13
	ld.bu	$a6, $a5, 13
	bne	$a4, $a6, .LBB24_33
# %bb.30:
	ld.bu	$a4, $a1, 14
	ld.bu	$a6, $a5, 14
	bne	$a4, $a6, .LBB24_33
# %bb.31:                               # %_ZeqRK4GUIDS1_.exit24
	ld.bu	$a1, $a1, 15
	ld.bu	$a4, $a5, 15
	bne	$a1, $a4, .LBB24_33
.LBB24_32:                              # %_ZeqRK4GUIDS1_.exit24.thread.sink.split
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	ld.d	$a1, $a0, 0
	st.d	$a0, $a2, 0
	ld.d	$a1, $a1, 8
	jirl	$ra, $a1, 0
	move	$a3, $zero
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
.LBB24_33:                              # %_ZeqRK4GUIDS1_.exit24.thread
	move	$a0, $a3
	ret
.Lfunc_end24:
	.size	_ZN18COutMultiVolStream14QueryInterfaceERK4GUIDPPv, .Lfunc_end24-_ZN18COutMultiVolStream14QueryInterfaceERK4GUIDPPv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN18COutMultiVolStream6AddRefEv,"axG",@progbits,_ZN18COutMultiVolStream6AddRefEv,comdat
	.weak	_ZN18COutMultiVolStream6AddRefEv # -- Begin function _ZN18COutMultiVolStream6AddRefEv
	.p2align	5
	.type	_ZN18COutMultiVolStream6AddRefEv,@function
_ZN18COutMultiVolStream6AddRefEv:       # @_ZN18COutMultiVolStream6AddRefEv
# %bb.0:
	ld.w	$a1, $a0, 8
	addi.w	$a1, $a1, 1
	st.w	$a1, $a0, 8
	move	$a0, $a1
	ret
.Lfunc_end25:
	.size	_ZN18COutMultiVolStream6AddRefEv, .Lfunc_end25-_ZN18COutMultiVolStream6AddRefEv
                                        # -- End function
	.section	.text._ZN18COutMultiVolStream7ReleaseEv,"axG",@progbits,_ZN18COutMultiVolStream7ReleaseEv,comdat
	.weak	_ZN18COutMultiVolStream7ReleaseEv # -- Begin function _ZN18COutMultiVolStream7ReleaseEv
	.p2align	5
	.type	_ZN18COutMultiVolStream7ReleaseEv,@function
_ZN18COutMultiVolStream7ReleaseEv:      # @_ZN18COutMultiVolStream7ReleaseEv
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	ld.w	$a1, $a0, 8
	addi.w	$fp, $a1, -1
	st.w	$fp, $a0, 8
	bnez	$fp, .LBB26_2
# %bb.1:
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 32
	jirl	$ra, $a1, 0
.LBB26_2:
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end26:
	.size	_ZN18COutMultiVolStream7ReleaseEv, .Lfunc_end26-_ZN18COutMultiVolStream7ReleaseEv
                                        # -- End function
	.section	.text._ZN18COutMultiVolStreamD2Ev,"axG",@progbits,_ZN18COutMultiVolStreamD2Ev,comdat
	.weak	_ZN18COutMultiVolStreamD2Ev     # -- Begin function _ZN18COutMultiVolStreamD2Ev
	.p2align	5
	.type	_ZN18COutMultiVolStreamD2Ev,@function
_ZN18COutMultiVolStreamD2Ev:            # @_ZN18COutMultiVolStreamD2Ev
.Lfunc_begin15:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception15
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
	pcalau12i	$a0, %pc_hi20(_ZTV18COutMultiVolStream+16)
	addi.d	$a1, $a0, %pc_lo12(_ZTV18COutMultiVolStream+16)
	ld.d	$a0, $fp, 104
	st.d	$a1, $fp, 0
	beqz	$a0, .LBB27_2
# %bb.1:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB27_2:                               # %_ZN11CStringBaseIwED2Ev.exit
	addi.d	$a0, $fp, 72
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$s0, $fp, 40
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE+16)
	st.d	$a0, $fp, 40
.Ltmp578:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp579:                               # EH_LABEL
# %bb.3:                                # %_ZN13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEED2Ev.exit
	move	$a0, $s0
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVectorD2Ev)
	jr	$t8
.LBB27_4:
.Ltmp580:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end27:
	.size	_ZN18COutMultiVolStreamD2Ev, .Lfunc_end27-_ZN18COutMultiVolStreamD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN18COutMultiVolStreamD2Ev,"aG",@progbits,_ZN18COutMultiVolStreamD2Ev,comdat
	.p2align	2, 0x0
GCC_except_table27:
.Lexception15:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase10-.Lttbaseref10
.Lttbaseref10:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end15-.Lcst_begin15
.Lcst_begin15:
	.uleb128 .Lfunc_begin15-.Lfunc_begin15  # >> Call Site 1 <<
	.uleb128 .Ltmp578-.Lfunc_begin15        #   Call between .Lfunc_begin15 and .Ltmp578
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp578-.Lfunc_begin15        # >> Call Site 2 <<
	.uleb128 .Ltmp579-.Ltmp578              #   Call between .Ltmp578 and .Ltmp579
	.uleb128 .Ltmp580-.Lfunc_begin15        #     jumps to .Ltmp580
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp579-.Lfunc_begin15        # >> Call Site 3 <<
	.uleb128 .Lfunc_end27-.Ltmp579          #   Call between .Ltmp579 and .Lfunc_end27
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end15:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase10:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN18COutMultiVolStreamD0Ev,"axG",@progbits,_ZN18COutMultiVolStreamD0Ev,comdat
	.weak	_ZN18COutMultiVolStreamD0Ev     # -- Begin function _ZN18COutMultiVolStreamD0Ev
	.p2align	5
	.type	_ZN18COutMultiVolStreamD0Ev,@function
_ZN18COutMultiVolStreamD0Ev:            # @_ZN18COutMultiVolStreamD0Ev
.Lfunc_begin16:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception16
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
	pcalau12i	$a0, %pc_hi20(_ZTV18COutMultiVolStream+16)
	addi.d	$a1, $a0, %pc_lo12(_ZTV18COutMultiVolStream+16)
	ld.d	$a0, $fp, 104
	st.d	$a1, $fp, 0
	beqz	$a0, .LBB28_2
# %bb.1:
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB28_2:                               # %_ZN11CStringBaseIwED2Ev.exit.i
	addi.d	$a0, $fp, 72
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$s0, $fp, 40
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE+16)
	st.d	$a0, $fp, 40
.Ltmp581:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp582:                               # EH_LABEL
# %bb.3:                                # %_ZN18COutMultiVolStreamD2Ev.exit
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 128
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB28_4:
.Ltmp583:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end28:
	.size	_ZN18COutMultiVolStreamD0Ev, .Lfunc_end28-_ZN18COutMultiVolStreamD0Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN18COutMultiVolStreamD0Ev,"aG",@progbits,_ZN18COutMultiVolStreamD0Ev,comdat
	.p2align	2, 0x0
GCC_except_table28:
.Lexception16:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase11-.Lttbaseref11
.Lttbaseref11:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end16-.Lcst_begin16
.Lcst_begin16:
	.uleb128 .Lfunc_begin16-.Lfunc_begin16  # >> Call Site 1 <<
	.uleb128 .Ltmp581-.Lfunc_begin16        #   Call between .Lfunc_begin16 and .Ltmp581
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp581-.Lfunc_begin16        # >> Call Site 2 <<
	.uleb128 .Ltmp582-.Ltmp581              #   Call between .Ltmp581 and .Ltmp582
	.uleb128 .Ltmp583-.Lfunc_begin16        #     jumps to .Ltmp583
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp582-.Lfunc_begin16        # >> Call Site 3 <<
	.uleb128 .Lfunc_end28-.Ltmp582          #   Call between .Ltmp582 and .Lfunc_end28
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end16:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase11:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN8NWindows5NFile3NIO8COutFileD0Ev,"axG",@progbits,_ZN8NWindows5NFile3NIO8COutFileD0Ev,comdat
	.weak	_ZN8NWindows5NFile3NIO8COutFileD0Ev # -- Begin function _ZN8NWindows5NFile3NIO8COutFileD0Ev
	.p2align	5
	.type	_ZN8NWindows5NFile3NIO8COutFileD0Ev,@function
_ZN8NWindows5NFile3NIO8COutFileD0Ev:    # @_ZN8NWindows5NFile3NIO8COutFileD0Ev
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_ZN8NWindows5NFile3NIO9CFileBaseD2Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1088
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.Lfunc_end29:
	.size	_ZN8NWindows5NFile3NIO8COutFileD0Ev, .Lfunc_end29-_ZN8NWindows5NFile3NIO8COutFileD0Ev
                                        # -- End function
	.section	.text._ZNK11CStringBaseIwE3MidEii,"axG",@progbits,_ZNK11CStringBaseIwE3MidEii,comdat
	.weak	_ZNK11CStringBaseIwE3MidEii     # -- Begin function _ZNK11CStringBaseIwE3MidEii
	.p2align	5
	.type	_ZNK11CStringBaseIwE3MidEii,@function
_ZNK11CStringBaseIwE3MidEii:            # @_ZNK11CStringBaseIwE3MidEii
.Lfunc_begin17:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception17
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
	move	$s0, $a1
	ld.w	$s2, $a1, 8
	move	$s1, $a2
	move	$fp, $a0
	add.w	$a0, $a3, $a2
	slt	$a0, $s2, $a0
	sub.w	$a1, $s2, $a2
	maskeqz	$a1, $a1, $a0
	masknez	$a0, $a3, $a0
	or	$s4, $a1, $a0
	bnez	$a2, .LBB30_4
# %bb.1:
	bne	$s4, $s2, .LBB30_4
# %bb.2:
	vrepli.b	$vr0, 0
	bstrpick.d	$a0, $s2, 31, 0
	addi.d	$s1, $a0, 1
	slli.d	$a0, $s1, 31
	vst	$vr0, $fp, 0
	bgez	$a0, .LBB30_13
# %bb.3:
	move	$a0, $zero
	b	.LBB30_14
.LBB30_4:
	st.d	$zero, $fp, 8
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 0
	st.w	$zero, $a0, 0
	ori	$a1, $zero, 4
	addi.w	$s5, $s4, 1
	st.w	$a1, $fp, 12
	beq	$s5, $a1, .LBB30_7
# %bb.5:
	move	$s2, $a0
	slti	$a0, $s4, -1
	slli.d	$a1, $s5, 2
	masknez	$a1, $a1, $a0
	addi.w	$a2, $zero, -1
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
.Ltmp584:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp585:                               # EH_LABEL
# %bb.6:                                # %_ZN11CStringBaseIwE11SetCapacityEi.exit
	move	$s3, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	st.d	$s3, $fp, 0
	st.w	$zero, $s3, 0
	st.w	$s5, $fp, 12
	blez	$s4, .LBB30_12
.LBB30_7:                               # %.lr.ph
	ld.d	$a2, $s0, 0
	ori	$a3, $zero, 8
	alsl.d	$a1, $s1, $a2, 2
	bltu	$s4, $a3, .LBB30_9
# %bb.8:                                # %vector.memcheck
	alsl.d	$a2, $s1, $a2, 2
	sub.d	$a2, $a0, $a2
	ori	$a3, $zero, 32
	bgeu	$a2, $a3, .LBB30_18
.LBB30_9:
	move	$a2, $zero
.LBB30_10:                              # %scalar.ph.preheader
	slli.d	$a3, $a2, 2
	.p2align	4, , 16
.LBB30_11:                              # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ldx.w	$a4, $a1, $a3
	stx.w	$a4, $a0, $a3
	addi.d	$a2, $a2, 1
	addi.d	$a3, $a3, 4
	bltu	$a2, $s4, .LBB30_11
.LBB30_12:                              # %._crit_edge
	slli.d	$a1, $s4, 2
	stx.w	$zero, $a0, $a1
	b	.LBB30_17
.LBB30_13:
	addi.w	$a0, $s1, 0
	slti	$a1, $s2, -1
	slli.d	$a0, $a0, 2
	addi.w	$a2, $zero, -1
	maskeqz	$a2, $a2, $a1
	masknez	$a0, $a0, $a1
	or	$a0, $a2, $a0
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 0
	st.w	$zero, $a0, 0
	st.w	$s1, $fp, 12
.LBB30_14:                              # %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
	ld.d	$a1, $s0, 0
	.p2align	4, , 16
.LBB30_15:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $a1, 0
	addi.d	$a1, $a1, 4
	addi.d	$a3, $a0, 4
	st.w	$a2, $a0, 0
	move	$a0, $a3
	bnez	$a2, .LBB30_15
# %bb.16:
	move	$s4, $s2
.LBB30_17:                              # %_ZN11CStringBaseIwEC2ERKS0_.exit
	st.w	$s4, $fp, 8
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
.LBB30_18:                              # %vector.ph
	bstrpick.d	$a2, $s4, 30, 3
	slli.d	$a2, $a2, 3
	move	$a3, $zero
	move	$a4, $a2
	.p2align	4, , 16
.LBB30_19:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a5, $a1, $a3
	vldx	$vr0, $a1, $a3
	vld	$vr1, $a5, 16
	add.d	$a5, $a0, $a3
	vstx	$vr0, $a0, $a3
	vst	$vr1, $a5, 16
	addi.d	$a4, $a4, -8
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB30_19
# %bb.20:                               # %middle.block
	beq	$a2, $s4, .LBB30_12
	b	.LBB30_10
.LBB30_21:                              # %_ZN11CStringBaseIwED2Ev.exit
.Ltmp586:                               # EH_LABEL
	move	$fp, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end30:
	.size	_ZNK11CStringBaseIwE3MidEii, .Lfunc_end30-_ZNK11CStringBaseIwE3MidEii
	.cfi_endproc
	.section	.gcc_except_table._ZNK11CStringBaseIwE3MidEii,"aG",@progbits,_ZNK11CStringBaseIwE3MidEii,comdat
	.p2align	2, 0x0
GCC_except_table30:
.Lexception17:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end17-.Lcst_begin17
.Lcst_begin17:
	.uleb128 .Lfunc_begin17-.Lfunc_begin17  # >> Call Site 1 <<
	.uleb128 .Ltmp584-.Lfunc_begin17        #   Call between .Lfunc_begin17 and .Ltmp584
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp584-.Lfunc_begin17        # >> Call Site 2 <<
	.uleb128 .Ltmp585-.Ltmp584              #   Call between .Ltmp584 and .Ltmp585
	.uleb128 .Ltmp586-.Lfunc_begin17        #     jumps to .Ltmp586
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp585-.Lfunc_begin17        # >> Call Site 3 <<
	.uleb128 .Lfunc_end30-.Ltmp585          #   Call between .Ltmp585 and .Lfunc_end30
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end17:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorI4CArcED2Ev,"axG",@progbits,_ZN13CObjectVectorI4CArcED2Ev,comdat
	.weak	_ZN13CObjectVectorI4CArcED2Ev   # -- Begin function _ZN13CObjectVectorI4CArcED2Ev
	.p2align	5
	.type	_ZN13CObjectVectorI4CArcED2Ev,@function
_ZN13CObjectVectorI4CArcED2Ev:          # @_ZN13CObjectVectorI4CArcED2Ev
.Lfunc_begin18:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception18
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI4CArcE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorI4CArcE+16)
	st.d	$a0, $fp, 0
.Ltmp587:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp588:                               # EH_LABEL
# %bb.1:
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVectorD2Ev)
	jr	$t8
.LBB31_2:
.Ltmp589:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end31:
	.size	_ZN13CObjectVectorI4CArcED2Ev, .Lfunc_end31-_ZN13CObjectVectorI4CArcED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorI4CArcED2Ev,"aG",@progbits,_ZN13CObjectVectorI4CArcED2Ev,comdat
	.p2align	2, 0x0
GCC_except_table31:
.Lexception18:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase12-.Lttbaseref12
.Lttbaseref12:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end18-.Lcst_begin18
.Lcst_begin18:
	.uleb128 .Ltmp587-.Lfunc_begin18        # >> Call Site 1 <<
	.uleb128 .Ltmp588-.Ltmp587              #   Call between .Ltmp587 and .Ltmp588
	.uleb128 .Ltmp589-.Lfunc_begin18        #     jumps to .Ltmp589
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp588-.Lfunc_begin18        # >> Call Site 2 <<
	.uleb128 .Lfunc_end31-.Ltmp588          #   Call between .Ltmp588 and .Lfunc_end31
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end18:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase12:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorI4CArcED0Ev,"axG",@progbits,_ZN13CObjectVectorI4CArcED0Ev,comdat
	.weak	_ZN13CObjectVectorI4CArcED0Ev   # -- Begin function _ZN13CObjectVectorI4CArcED0Ev
	.p2align	5
	.type	_ZN13CObjectVectorI4CArcED0Ev,@function
_ZN13CObjectVectorI4CArcED0Ev:          # @_ZN13CObjectVectorI4CArcED0Ev
.Lfunc_begin19:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception19
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI4CArcE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorI4CArcE+16)
	st.d	$a0, $fp, 0
.Ltmp590:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp591:                               # EH_LABEL
# %bb.1:                                # %_ZN13CObjectVectorI4CArcED2Ev.exit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 32
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB32_2:
.Ltmp592:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end32:
	.size	_ZN13CObjectVectorI4CArcED0Ev, .Lfunc_end32-_ZN13CObjectVectorI4CArcED0Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorI4CArcED0Ev,"aG",@progbits,_ZN13CObjectVectorI4CArcED0Ev,comdat
	.p2align	2, 0x0
GCC_except_table32:
.Lexception19:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase13-.Lttbaseref13
.Lttbaseref13:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end19-.Lcst_begin19
.Lcst_begin19:
	.uleb128 .Ltmp590-.Lfunc_begin19        # >> Call Site 1 <<
	.uleb128 .Ltmp591-.Ltmp590              #   Call between .Ltmp590 and .Ltmp591
	.uleb128 .Ltmp592-.Lfunc_begin19        #     jumps to .Ltmp592
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp591-.Lfunc_begin19        # >> Call Site 2 <<
	.uleb128 .Lfunc_end32-.Ltmp591          #   Call between .Ltmp591 and .Lfunc_end32
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end19:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase13:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorI4CArcE6DeleteEii,"axG",@progbits,_ZN13CObjectVectorI4CArcE6DeleteEii,comdat
	.weak	_ZN13CObjectVectorI4CArcE6DeleteEii # -- Begin function _ZN13CObjectVectorI4CArcE6DeleteEii
	.p2align	5
	.type	_ZN13CObjectVectorI4CArcE6DeleteEii,@function
_ZN13CObjectVectorI4CArcE6DeleteEii:    # @_ZN13CObjectVectorI4CArcE6DeleteEii
.Lfunc_begin20:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception20
# %bb.0:                                # %_ZNK17CBaseRecordVector22TestIndexAndCorrectNumEiRi.exit
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
	move	$fp, $a0
	ld.w	$a0, $a0, 12
	move	$s0, $a1
	add.w	$a1, $a2, $a1
	slt	$a1, $a0, $a1
	sub.w	$a0, $a0, $s0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$s1, $a0, $a1
	blez	$s1, .LBB33_13
# %bb.1:                                # %.lr.ph
	move	$s3, $zero
	slli.d	$s4, $s0, 3
	b	.LBB33_4
	.p2align	4, , 16
.LBB33_2:                               # %_ZN4CArcD2Ev.exit
                                        #   in Loop: Header=BB33_4 Depth=1
	ori	$a1, $zero, 80
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB33_3:                               #   in Loop: Header=BB33_4 Depth=1
	addi.d	$s3, $s3, 1
	addi.d	$s4, $s4, 8
	bgeu	$s3, $s1, .LBB33_13
.LBB33_4:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 16
	ldx.d	$s2, $a0, $s4
	beqz	$s2, .LBB33_3
# %bb.5:                                #   in Loop: Header=BB33_4 Depth=1
	ld.d	$a0, $s2, 64
	beqz	$a0, .LBB33_7
# %bb.6:                                #   in Loop: Header=BB33_4 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB33_7:                               # %_ZN11CStringBaseIwED2Ev.exit.i
                                        #   in Loop: Header=BB33_4 Depth=1
	ld.d	$a0, $s2, 24
	beqz	$a0, .LBB33_9
# %bb.8:                                #   in Loop: Header=BB33_4 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB33_9:                               # %_ZN11CStringBaseIwED2Ev.exit1.i
                                        #   in Loop: Header=BB33_4 Depth=1
	ld.d	$a0, $s2, 8
	beqz	$a0, .LBB33_11
# %bb.10:                               #   in Loop: Header=BB33_4 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB33_11:                              # %_ZN11CStringBaseIwED2Ev.exit2.i
                                        #   in Loop: Header=BB33_4 Depth=1
	ld.d	$a0, $s2, 0
	beqz	$a0, .LBB33_2
# %bb.12:                               #   in Loop: Header=BB33_4 Depth=1
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp593:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp594:                               # EH_LABEL
	b	.LBB33_2
.LBB33_13:                              # %._crit_edge
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVector6DeleteEii)
	jr	$t8
.LBB33_14:
.Ltmp595:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end33:
	.size	_ZN13CObjectVectorI4CArcE6DeleteEii, .Lfunc_end33-_ZN13CObjectVectorI4CArcE6DeleteEii
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorI4CArcE6DeleteEii,"aG",@progbits,_ZN13CObjectVectorI4CArcE6DeleteEii,comdat
	.p2align	2, 0x0
GCC_except_table33:
.Lexception20:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase14-.Lttbaseref14
.Lttbaseref14:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end20-.Lcst_begin20
.Lcst_begin20:
	.uleb128 .Lfunc_begin20-.Lfunc_begin20  # >> Call Site 1 <<
	.uleb128 .Ltmp593-.Lfunc_begin20        #   Call between .Lfunc_begin20 and .Ltmp593
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp593-.Lfunc_begin20        # >> Call Site 2 <<
	.uleb128 .Ltmp594-.Ltmp593              #   Call between .Ltmp593 and .Ltmp594
	.uleb128 .Ltmp595-.Lfunc_begin20        #     jumps to .Ltmp595
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp594-.Lfunc_begin20        # >> Call Site 3 <<
	.uleb128 .Lfunc_end33-.Ltmp594          #   Call between .Ltmp594 and .Lfunc_end33
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end20:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase14:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN11CStringBaseIwEpLERKS0_,"axG",@progbits,_ZN11CStringBaseIwEpLERKS0_,comdat
	.weak	_ZN11CStringBaseIwEpLERKS0_     # -- Begin function _ZN11CStringBaseIwEpLERKS0_
	.p2align	5
	.type	_ZN11CStringBaseIwEpLERKS0_,@function
_ZN11CStringBaseIwEpLERKS0_:            # @_ZN11CStringBaseIwEpLERKS0_
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
	move	$fp, $a1
	ld.w	$s1, $a0, 8
	ld.w	$s4, $a0, 12
	ld.w	$a1, $a1, 8
	nor	$a2, $s1, $zero
	add.w	$a2, $s4, $a2
	bge	$a2, $a1, .LBB34_15
# %bb.1:
	ori	$a3, $zero, 64
	slt	$a3, $a3, $s4
	bstrpick.d	$a4, $s4, 31, 1
	ori	$a5, $zero, 8
	slt	$a5, $a5, $s4
	ori	$a6, $zero, 4
	masknez	$a6, $a6, $a5
	ori	$a7, $zero, 16
	maskeqz	$a5, $a7, $a5
	or	$a5, $a5, $a6
	masknez	$a5, $a5, $a3
	maskeqz	$a3, $a4, $a3
	or	$a3, $a3, $a5
	add.w	$a4, $a3, $a2
	slt	$a4, $a4, $a1
	sub.d	$a1, $a1, $a2
	masknez	$a2, $a3, $a4
	maskeqz	$a1, $a1, $a4
	or	$a1, $a1, $a2
	add.w	$a1, $a1, $s4
	addi.w	$s2, $a1, 1
	beq	$s2, $s4, .LBB34_15
# %bb.2:
	move	$s3, $a0
	slti	$a0, $a1, -1
	slli.d	$a1, $s2, 2
	masknez	$a1, $a1, $a0
	addi.w	$a2, $zero, -1
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	blez	$s4, .LBB34_11
# %bb.3:                                # %.preheader.i.i
	ld.d	$a1, $s3, 0
	blez	$s1, .LBB34_12
# %bb.4:                                # %.lr.ph.i.i
	ori	$a2, $zero, 8
	move	$a0, $zero
	bltu	$s1, $a2, .LBB34_9
# %bb.5:                                # %.lr.ph.i.i
	sub.d	$a2, $s0, $a1
	ori	$a3, $zero, 32
	bltu	$a2, $a3, .LBB34_9
# %bb.6:                                # %vector.ph
	bstrpick.d	$a0, $s1, 30, 3
	slli.d	$a0, $a0, 3
	addi.d	$a2, $s0, 16
	addi.d	$a3, $a1, 16
	move	$a4, $a0
	.p2align	4, , 16
.LBB34_7:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a3, -16
	vld	$vr1, $a3, 0
	vst	$vr0, $a2, -16
	vst	$vr1, $a2, 0
	addi.d	$a4, $a4, -8
	addi.d	$a2, $a2, 32
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB34_7
# %bb.8:                                # %middle.block
	beq	$a0, $s1, .LBB34_13
.LBB34_9:                               # %scalar.ph.preheader
	sub.d	$a2, $s1, $a0
	alsl.d	$a3, $a0, $s0, 2
	alsl.d	$a0, $a0, $a1, 2
	.p2align	4, , 16
.LBB34_10:                              # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a0, 0
	st.w	$a4, $a3, 0
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 4
	addi.d	$a0, $a0, 4
	bnez	$a2, .LBB34_10
	b	.LBB34_13
.LBB34_11:
	move	$a0, $s3
	b	.LBB34_14
.LBB34_12:                              # %._crit_edge.i.i
	move	$a0, $s3
	beqz	$a1, .LBB34_14
.LBB34_13:                              # %._crit_edge.thread.i.i
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	ld.w	$s1, $s3, 8
.LBB34_14:
	st.d	$s0, $a0, 0
	slli.d	$a1, $s1, 2
	stx.w	$zero, $s0, $a1
	st.w	$s2, $a0, 12
.LBB34_15:                              # %_ZN11CStringBaseIwE10GrowLengthEi.exit
	ld.d	$a2, $a0, 0
	ld.d	$a1, $fp, 0
	alsl.d	$a2, $s1, $a2, 2
	.p2align	4, , 16
.LBB34_16:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a1, 0
	addi.d	$a1, $a1, 4
	addi.d	$a4, $a2, 4
	st.w	$a3, $a2, 0
	move	$a2, $a4
	bnez	$a3, .LBB34_16
# %bb.17:                               # %_Z12MyStringCopyIwEPT_S1_PKS0_.exit
	ld.w	$a1, $fp, 8
	add.d	$a1, $a1, $s1
	st.w	$a1, $a0, 8
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end34:
	.size	_ZN11CStringBaseIwEpLERKS0_, .Lfunc_end34-_ZN11CStringBaseIwEpLERKS0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN13CObjectVectorI8CDirItemED2Ev,"axG",@progbits,_ZN13CObjectVectorI8CDirItemED2Ev,comdat
	.weak	_ZN13CObjectVectorI8CDirItemED2Ev # -- Begin function _ZN13CObjectVectorI8CDirItemED2Ev
	.p2align	5
	.type	_ZN13CObjectVectorI8CDirItemED2Ev,@function
_ZN13CObjectVectorI8CDirItemED2Ev:      # @_ZN13CObjectVectorI8CDirItemED2Ev
.Lfunc_begin21:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception21
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI8CDirItemE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorI8CDirItemE+16)
	st.d	$a0, $fp, 0
.Ltmp596:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp597:                               # EH_LABEL
# %bb.1:
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVectorD2Ev)
	jr	$t8
.LBB35_2:
.Ltmp598:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end35:
	.size	_ZN13CObjectVectorI8CDirItemED2Ev, .Lfunc_end35-_ZN13CObjectVectorI8CDirItemED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorI8CDirItemED2Ev,"aG",@progbits,_ZN13CObjectVectorI8CDirItemED2Ev,comdat
	.p2align	2, 0x0
GCC_except_table35:
.Lexception21:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase15-.Lttbaseref15
.Lttbaseref15:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end21-.Lcst_begin21
.Lcst_begin21:
	.uleb128 .Ltmp596-.Lfunc_begin21        # >> Call Site 1 <<
	.uleb128 .Ltmp597-.Ltmp596              #   Call between .Ltmp596 and .Ltmp597
	.uleb128 .Ltmp598-.Lfunc_begin21        #     jumps to .Ltmp598
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp597-.Lfunc_begin21        # >> Call Site 2 <<
	.uleb128 .Lfunc_end35-.Ltmp597          #   Call between .Ltmp597 and .Lfunc_end35
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end21:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase15:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorI8CDirItemED0Ev,"axG",@progbits,_ZN13CObjectVectorI8CDirItemED0Ev,comdat
	.weak	_ZN13CObjectVectorI8CDirItemED0Ev # -- Begin function _ZN13CObjectVectorI8CDirItemED0Ev
	.p2align	5
	.type	_ZN13CObjectVectorI8CDirItemED0Ev,@function
_ZN13CObjectVectorI8CDirItemED0Ev:      # @_ZN13CObjectVectorI8CDirItemED0Ev
.Lfunc_begin22:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception22
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI8CDirItemE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorI8CDirItemE+16)
	st.d	$a0, $fp, 0
.Ltmp599:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp600:                               # EH_LABEL
# %bb.1:                                # %_ZN13CObjectVectorI8CDirItemED2Ev.exit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 32
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB36_2:
.Ltmp601:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end36:
	.size	_ZN13CObjectVectorI8CDirItemED0Ev, .Lfunc_end36-_ZN13CObjectVectorI8CDirItemED0Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorI8CDirItemED0Ev,"aG",@progbits,_ZN13CObjectVectorI8CDirItemED0Ev,comdat
	.p2align	2, 0x0
GCC_except_table36:
.Lexception22:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase16-.Lttbaseref16
.Lttbaseref16:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end22-.Lcst_begin22
.Lcst_begin22:
	.uleb128 .Ltmp599-.Lfunc_begin22        # >> Call Site 1 <<
	.uleb128 .Ltmp600-.Ltmp599              #   Call between .Ltmp599 and .Ltmp600
	.uleb128 .Ltmp601-.Lfunc_begin22        #     jumps to .Ltmp601
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp600-.Lfunc_begin22        # >> Call Site 2 <<
	.uleb128 .Lfunc_end36-.Ltmp600          #   Call between .Ltmp600 and .Lfunc_end36
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end22:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase16:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorI8CDirItemE6DeleteEii,"axG",@progbits,_ZN13CObjectVectorI8CDirItemE6DeleteEii,comdat
	.weak	_ZN13CObjectVectorI8CDirItemE6DeleteEii # -- Begin function _ZN13CObjectVectorI8CDirItemE6DeleteEii
	.p2align	5
	.type	_ZN13CObjectVectorI8CDirItemE6DeleteEii,@function
_ZN13CObjectVectorI8CDirItemE6DeleteEii: # @_ZN13CObjectVectorI8CDirItemE6DeleteEii
	.cfi_startproc
# %bb.0:                                # %_ZNK17CBaseRecordVector22TestIndexAndCorrectNumEiRi.exit
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
	move	$fp, $a0
	ld.w	$a0, $a0, 12
	move	$s0, $a1
	add.w	$a1, $a2, $a1
	slt	$a1, $a0, $a1
	sub.w	$a0, $a0, $s0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$s1, $a0, $a1
	blez	$s1, .LBB37_7
# %bb.1:                                # %.lr.ph
	move	$s3, $zero
	slli.d	$s4, $s0, 3
	b	.LBB37_4
	.p2align	4, , 16
.LBB37_2:                               # %_ZN8CDirItemD2Ev.exit
                                        #   in Loop: Header=BB37_4 Depth=1
	ori	$a1, $zero, 64
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB37_3:                               #   in Loop: Header=BB37_4 Depth=1
	addi.d	$s3, $s3, 1
	addi.d	$s4, $s4, 8
	bgeu	$s3, $s1, .LBB37_7
.LBB37_4:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 16
	ldx.d	$s2, $a0, $s4
	beqz	$s2, .LBB37_3
# %bb.5:                                #   in Loop: Header=BB37_4 Depth=1
	ld.d	$a0, $s2, 32
	beqz	$a0, .LBB37_2
# %bb.6:                                #   in Loop: Header=BB37_4 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB37_2
.LBB37_7:                               # %._crit_edge
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVector6DeleteEii)
	jr	$t8
.Lfunc_end37:
	.size	_ZN13CObjectVectorI8CDirItemE6DeleteEii, .Lfunc_end37-_ZN13CObjectVectorI8CDirItemE6DeleteEii
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN26CEnumDirItemUpdateCallback12ScanProgressEyyPKw,"axG",@progbits,_ZN26CEnumDirItemUpdateCallback12ScanProgressEyyPKw,comdat
	.weak	_ZN26CEnumDirItemUpdateCallback12ScanProgressEyyPKw # -- Begin function _ZN26CEnumDirItemUpdateCallback12ScanProgressEyyPKw
	.p2align	5
	.type	_ZN26CEnumDirItemUpdateCallback12ScanProgressEyyPKw,@function
_ZN26CEnumDirItemUpdateCallback12ScanProgressEyyPKw: # @_ZN26CEnumDirItemUpdateCallback12ScanProgressEyyPKw
	.cfi_startproc
# %bb.0:
	ld.d	$a0, $a0, 8
	ld.d	$a4, $a0, 0
	ld.d	$a4, $a4, 104
	jr	$a4
.Lfunc_end38:
	.size	_ZN26CEnumDirItemUpdateCallback12ScanProgressEyyPKw, .Lfunc_end38-_ZN26CEnumDirItemUpdateCallback12ScanProgressEyyPKw
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN13CRecordVectorI12CUpdatePair2ED0Ev,"axG",@progbits,_ZN13CRecordVectorI12CUpdatePair2ED0Ev,comdat
	.weak	_ZN13CRecordVectorI12CUpdatePair2ED0Ev # -- Begin function _ZN13CRecordVectorI12CUpdatePair2ED0Ev
	.p2align	5
	.type	_ZN13CRecordVectorI12CUpdatePair2ED0Ev,@function
_ZN13CRecordVectorI12CUpdatePair2ED0Ev: # @_ZN13CRecordVectorI12CUpdatePair2ED0Ev
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 32
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.Lfunc_end39:
	.size	_ZN13CRecordVectorI12CUpdatePair2ED0Ev, .Lfunc_end39-_ZN13CRecordVectorI12CUpdatePair2ED0Ev
                                        # -- End function
	.section	.text._ZN13CRecordVectorI11CUpdatePairED0Ev,"axG",@progbits,_ZN13CRecordVectorI11CUpdatePairED0Ev,comdat
	.weak	_ZN13CRecordVectorI11CUpdatePairED0Ev # -- Begin function _ZN13CRecordVectorI11CUpdatePairED0Ev
	.p2align	5
	.type	_ZN13CRecordVectorI11CUpdatePairED0Ev,@function
_ZN13CRecordVectorI11CUpdatePairED0Ev:  # @_ZN13CRecordVectorI11CUpdatePairED0Ev
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 32
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.Lfunc_end40:
	.size	_ZN13CRecordVectorI11CUpdatePairED0Ev, .Lfunc_end40-_ZN13CRecordVectorI11CUpdatePairED0Ev
                                        # -- End function
	.section	.text._ZN13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEED2Ev,"axG",@progbits,_ZN13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEED2Ev,comdat
	.weak	_ZN13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEED2Ev # -- Begin function _ZN13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEED2Ev
	.p2align	5
	.type	_ZN13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEED2Ev,@function
_ZN13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEED2Ev: # @_ZN13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEED2Ev
.Lfunc_begin23:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception23
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE+16)
	st.d	$a0, $fp, 0
.Ltmp602:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp603:                               # EH_LABEL
# %bb.1:
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVectorD2Ev)
	jr	$t8
.LBB41_2:
.Ltmp604:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end41:
	.size	_ZN13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEED2Ev, .Lfunc_end41-_ZN13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEED2Ev,"aG",@progbits,_ZN13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEED2Ev,comdat
	.p2align	2, 0x0
GCC_except_table41:
.Lexception23:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase17-.Lttbaseref17
.Lttbaseref17:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end23-.Lcst_begin23
.Lcst_begin23:
	.uleb128 .Ltmp602-.Lfunc_begin23        # >> Call Site 1 <<
	.uleb128 .Ltmp603-.Ltmp602              #   Call between .Ltmp602 and .Ltmp603
	.uleb128 .Ltmp604-.Lfunc_begin23        #     jumps to .Ltmp604
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp603-.Lfunc_begin23        # >> Call Site 2 <<
	.uleb128 .Lfunc_end41-.Ltmp603          #   Call between .Ltmp603 and .Lfunc_end41
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end23:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase17:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEED0Ev,"axG",@progbits,_ZN13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEED0Ev,comdat
	.weak	_ZN13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEED0Ev # -- Begin function _ZN13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEED0Ev
	.p2align	5
	.type	_ZN13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEED0Ev,@function
_ZN13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEED0Ev: # @_ZN13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEED0Ev
.Lfunc_begin24:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception24
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE+16)
	st.d	$a0, $fp, 0
.Ltmp605:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp606:                               # EH_LABEL
# %bb.1:                                # %_ZN13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEED2Ev.exit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 32
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB42_2:
.Ltmp607:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end42:
	.size	_ZN13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEED0Ev, .Lfunc_end42-_ZN13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEED0Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEED0Ev,"aG",@progbits,_ZN13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEED0Ev,comdat
	.p2align	2, 0x0
GCC_except_table42:
.Lexception24:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase18-.Lttbaseref18
.Lttbaseref18:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end24-.Lcst_begin24
.Lcst_begin24:
	.uleb128 .Ltmp605-.Lfunc_begin24        # >> Call Site 1 <<
	.uleb128 .Ltmp606-.Ltmp605              #   Call between .Ltmp605 and .Ltmp606
	.uleb128 .Ltmp607-.Lfunc_begin24        #     jumps to .Ltmp607
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp606-.Lfunc_begin24        # >> Call Site 2 <<
	.uleb128 .Lfunc_end42-.Ltmp606          #   Call between .Ltmp606 and .Lfunc_end42
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end24:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase18:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE6DeleteEii,"axG",@progbits,_ZN13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE6DeleteEii,comdat
	.weak	_ZN13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE6DeleteEii # -- Begin function _ZN13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE6DeleteEii
	.p2align	5
	.type	_ZN13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE6DeleteEii,@function
_ZN13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE6DeleteEii: # @_ZN13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE6DeleteEii
.Lfunc_begin25:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception25
# %bb.0:                                # %_ZNK17CBaseRecordVector22TestIndexAndCorrectNumEiRi.exit
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
	move	$fp, $a0
	ld.w	$a0, $a0, 12
	move	$s0, $a1
	add.w	$a1, $a2, $a1
	slt	$a1, $a0, $a1
	sub.w	$a0, $a0, $s0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$s1, $a0, $a1
	blez	$s1, .LBB43_9
# %bb.1:                                # %.lr.ph
	move	$s3, $zero
	slli.d	$s4, $s0, 3
	b	.LBB43_4
	.p2align	4, , 16
.LBB43_2:                               # %_ZN18COutMultiVolStream14CSubStreamInfoD2Ev.exit
                                        #   in Loop: Header=BB43_4 Depth=1
	ori	$a1, $zero, 48
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB43_3:                               #   in Loop: Header=BB43_4 Depth=1
	addi.d	$s3, $s3, 1
	addi.d	$s4, $s4, 8
	bgeu	$s3, $s1, .LBB43_9
.LBB43_4:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 16
	ldx.d	$s2, $a0, $s4
	beqz	$s2, .LBB43_3
# %bb.5:                                #   in Loop: Header=BB43_4 Depth=1
	ld.d	$a0, $s2, 16
	beqz	$a0, .LBB43_7
# %bb.6:                                #   in Loop: Header=BB43_4 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB43_7:                               # %_ZN11CStringBaseIwED2Ev.exit.i
                                        #   in Loop: Header=BB43_4 Depth=1
	ld.d	$a0, $s2, 8
	beqz	$a0, .LBB43_2
# %bb.8:                                #   in Loop: Header=BB43_4 Depth=1
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 16
.Ltmp608:                               # EH_LABEL
	jirl	$ra, $a1, 0
.Ltmp609:                               # EH_LABEL
	b	.LBB43_2
.LBB43_9:                               # %._crit_edge
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVector6DeleteEii)
	jr	$t8
.LBB43_10:
.Ltmp610:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end43:
	.size	_ZN13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE6DeleteEii, .Lfunc_end43-_ZN13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE6DeleteEii
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE6DeleteEii,"aG",@progbits,_ZN13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE6DeleteEii,comdat
	.p2align	2, 0x0
GCC_except_table43:
.Lexception25:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase19-.Lttbaseref19
.Lttbaseref19:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end25-.Lcst_begin25
.Lcst_begin25:
	.uleb128 .Lfunc_begin25-.Lfunc_begin25  # >> Call Site 1 <<
	.uleb128 .Ltmp608-.Lfunc_begin25        #   Call between .Lfunc_begin25 and .Ltmp608
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp608-.Lfunc_begin25        # >> Call Site 2 <<
	.uleb128 .Ltmp609-.Ltmp608              #   Call between .Ltmp608 and .Ltmp609
	.uleb128 .Ltmp610-.Lfunc_begin25        #     jumps to .Ltmp610
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp609-.Lfunc_begin25        # >> Call Site 3 <<
	.uleb128 .Lfunc_end43-.Ltmp609          #   Call between .Ltmp609 and .Lfunc_end43
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end25:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase19:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CRecordVectorIyED0Ev,"axG",@progbits,_ZN13CRecordVectorIyED0Ev,comdat
	.weak	_ZN13CRecordVectorIyED0Ev       # -- Begin function _ZN13CRecordVectorIyED0Ev
	.p2align	5
	.type	_ZN13CRecordVectorIyED0Ev,@function
_ZN13CRecordVectorIyED0Ev:              # @_ZN13CRecordVectorIyED0Ev
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 32
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.Lfunc_end44:
	.size	_ZN13CRecordVectorIyED0Ev, .Lfunc_end44-_ZN13CRecordVectorIyED0Ev
                                        # -- End function
	.section	.text._ZN8NWindows5NFile3NIO7CInFileD0Ev,"axG",@progbits,_ZN8NWindows5NFile3NIO7CInFileD0Ev,comdat
	.weak	_ZN8NWindows5NFile3NIO7CInFileD0Ev # -- Begin function _ZN8NWindows5NFile3NIO7CInFileD0Ev
	.p2align	5
	.type	_ZN8NWindows5NFile3NIO7CInFileD0Ev,@function
_ZN8NWindows5NFile3NIO7CInFileD0Ev:     # @_ZN8NWindows5NFile3NIO7CInFileD0Ev
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_ZN8NWindows5NFile3NIO9CFileBaseD2Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1088
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.Lfunc_end45:
	.size	_ZN8NWindows5NFile3NIO7CInFileD0Ev, .Lfunc_end45-_ZN8NWindows5NFile3NIO7CInFileD0Ev
                                        # -- End function
	.section	.text._ZN11CStringBaseIwEpLEPKw,"axG",@progbits,_ZN11CStringBaseIwEpLEPKw,comdat
	.weak	_ZN11CStringBaseIwEpLEPKw       # -- Begin function _ZN11CStringBaseIwEpLEPKw
	.p2align	5
	.type	_ZN11CStringBaseIwEpLEPKw,@function
_ZN11CStringBaseIwEpLEPKw:              # @_ZN11CStringBaseIwEpLEPKw
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
	move	$s0, $a1
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(wcslen)
	jirl	$ra, $ra, 0
	ld.w	$s3, $fp, 8
	ld.w	$s5, $fp, 12
	move	$s1, $a0
	addi.w	$a0, $a0, 0
	nor	$a1, $s3, $zero
	add.w	$a1, $s5, $a1
	bge	$a1, $a0, .LBB46_14
# %bb.1:
	ori	$a2, $zero, 64
	slt	$a2, $a2, $s5
	bstrpick.d	$a3, $s5, 31, 1
	ori	$a4, $zero, 8
	slt	$a4, $a4, $s5
	ori	$a5, $zero, 4
	masknez	$a5, $a5, $a4
	ori	$a6, $zero, 16
	maskeqz	$a4, $a6, $a4
	or	$a4, $a4, $a5
	masknez	$a4, $a4, $a2
	maskeqz	$a2, $a3, $a2
	or	$a2, $a2, $a4
	add.w	$a3, $a2, $a1
	slt	$a0, $a3, $a0
	sub.d	$a1, $s1, $a1
	masknez	$a2, $a2, $a0
	maskeqz	$a0, $a1, $a0
	or	$a0, $a0, $a2
	add.w	$a0, $a0, $s5
	addi.w	$s4, $a0, 1
	beq	$s4, $s5, .LBB46_14
# %bb.2:
	slti	$a0, $a0, -1
	slli.d	$a1, $s4, 2
	masknez	$a1, $a1, $a0
	addi.w	$a2, $zero, -1
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	blez	$s5, .LBB46_13
# %bb.3:                                # %.preheader.i.i
	ld.d	$a0, $fp, 0
	blez	$s3, .LBB46_11
# %bb.4:                                # %.lr.ph.i.i
	ori	$a2, $zero, 8
	move	$a1, $zero
	bltu	$s3, $a2, .LBB46_9
# %bb.5:                                # %.lr.ph.i.i
	sub.d	$a2, $s2, $a0
	ori	$a3, $zero, 32
	bltu	$a2, $a3, .LBB46_9
# %bb.6:                                # %vector.ph
	bstrpick.d	$a1, $s3, 30, 3
	slli.d	$a1, $a1, 3
	addi.d	$a2, $s2, 16
	addi.d	$a3, $a0, 16
	move	$a4, $a1
	.p2align	4, , 16
.LBB46_7:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a3, -16
	vld	$vr1, $a3, 0
	vst	$vr0, $a2, -16
	vst	$vr1, $a2, 0
	addi.d	$a4, $a4, -8
	addi.d	$a2, $a2, 32
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB46_7
# %bb.8:                                # %middle.block
	beq	$a1, $s3, .LBB46_12
.LBB46_9:                               # %scalar.ph.preheader
	sub.d	$a2, $s3, $a1
	alsl.d	$a3, $a1, $s2, 2
	alsl.d	$a1, $a1, $a0, 2
	.p2align	4, , 16
.LBB46_10:                              # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a1, 0
	st.w	$a4, $a3, 0
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 4
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB46_10
	b	.LBB46_12
.LBB46_11:                              # %._crit_edge.i.i
	beqz	$a0, .LBB46_13
.LBB46_12:                              # %._crit_edge.thread.i.i
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.w	$s3, $fp, 8
.LBB46_13:
	st.d	$s2, $fp, 0
	slli.d	$a0, $s3, 2
	stx.w	$zero, $s2, $a0
	st.w	$s4, $fp, 12
.LBB46_14:                              # %_ZN11CStringBaseIwE10GrowLengthEi.exit
	ld.d	$a0, $fp, 0
	alsl.d	$a0, $s3, $a0, 2
	.p2align	4, , 16
.LBB46_15:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $s0, 0
	addi.d	$s0, $s0, 4
	addi.d	$a2, $a0, 4
	st.w	$a1, $a0, 0
	move	$a0, $a2
	bnez	$a1, .LBB46_15
# %bb.16:                               # %_Z12MyStringCopyIwEPT_S1_PKS0_.exit
	add.d	$a0, $s3, $s1
	st.w	$a0, $fp, 8
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
	ret
.Lfunc_end46:
	.size	_ZN11CStringBaseIwEpLEPKw, .Lfunc_end46-_ZN11CStringBaseIwEpLEPKw
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN13CObjectVectorI11CStringBaseIwEED0Ev,"axG",@progbits,_ZN13CObjectVectorI11CStringBaseIwEED0Ev,comdat
	.weak	_ZN13CObjectVectorI11CStringBaseIwEED0Ev # -- Begin function _ZN13CObjectVectorI11CStringBaseIwEED0Ev
	.p2align	5
	.type	_ZN13CObjectVectorI11CStringBaseIwEED0Ev,@function
_ZN13CObjectVectorI11CStringBaseIwEED0Ev: # @_ZN13CObjectVectorI11CStringBaseIwEED0Ev
.Lfunc_begin26:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception26
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI11CStringBaseIwEE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorI11CStringBaseIwEE+16)
	st.d	$a0, $fp, 0
.Ltmp611:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp612:                               # EH_LABEL
# %bb.1:                                # %_ZN13CObjectVectorI11CStringBaseIwEED2Ev.exit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 32
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB47_2:
.Ltmp613:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end47:
	.size	_ZN13CObjectVectorI11CStringBaseIwEED0Ev, .Lfunc_end47-_ZN13CObjectVectorI11CStringBaseIwEED0Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorI11CStringBaseIwEED0Ev,"aG",@progbits,_ZN13CObjectVectorI11CStringBaseIwEED0Ev,comdat
	.p2align	2, 0x0
GCC_except_table47:
.Lexception26:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase20-.Lttbaseref20
.Lttbaseref20:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end26-.Lcst_begin26
.Lcst_begin26:
	.uleb128 .Ltmp611-.Lfunc_begin26        # >> Call Site 1 <<
	.uleb128 .Ltmp612-.Ltmp611              #   Call between .Ltmp611 and .Ltmp612
	.uleb128 .Ltmp613-.Lfunc_begin26        #     jumps to .Ltmp613
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp612-.Lfunc_begin26        # >> Call Site 2 <<
	.uleb128 .Lfunc_end47-.Ltmp612          #   Call between .Ltmp612 and .Lfunc_end47
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end26:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase20:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorI11CStringBaseIwEE6DeleteEii,"axG",@progbits,_ZN13CObjectVectorI11CStringBaseIwEE6DeleteEii,comdat
	.weak	_ZN13CObjectVectorI11CStringBaseIwEE6DeleteEii # -- Begin function _ZN13CObjectVectorI11CStringBaseIwEE6DeleteEii
	.p2align	5
	.type	_ZN13CObjectVectorI11CStringBaseIwEE6DeleteEii,@function
_ZN13CObjectVectorI11CStringBaseIwEE6DeleteEii: # @_ZN13CObjectVectorI11CStringBaseIwEE6DeleteEii
	.cfi_startproc
# %bb.0:                                # %_ZNK17CBaseRecordVector22TestIndexAndCorrectNumEiRi.exit
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
	move	$fp, $a0
	ld.w	$a0, $a0, 12
	move	$s0, $a1
	add.w	$a1, $a2, $a1
	slt	$a1, $a0, $a1
	sub.w	$a0, $a0, $s0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$s1, $a0, $a1
	blez	$s1, .LBB48_7
# %bb.1:                                # %.lr.ph
	move	$s3, $zero
	slli.d	$s4, $s0, 3
	b	.LBB48_4
	.p2align	4, , 16
.LBB48_2:                               # %_ZN11CStringBaseIwED2Ev.exit
                                        #   in Loop: Header=BB48_4 Depth=1
	ori	$a1, $zero, 16
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB48_3:                               #   in Loop: Header=BB48_4 Depth=1
	addi.d	$s3, $s3, 1
	addi.d	$s4, $s4, 8
	bgeu	$s3, $s1, .LBB48_7
.LBB48_4:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 16
	ldx.d	$s2, $a0, $s4
	beqz	$s2, .LBB48_3
# %bb.5:                                #   in Loop: Header=BB48_4 Depth=1
	ld.d	$a0, $s2, 0
	beqz	$a0, .LBB48_2
# %bb.6:                                #   in Loop: Header=BB48_4 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB48_2
.LBB48_7:                               # %._crit_edge
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVector6DeleteEii)
	jr	$t8
.Lfunc_end48:
	.size	_ZN13CObjectVectorI11CStringBaseIwEE6DeleteEii, .Lfunc_end48-_ZN13CObjectVectorI11CStringBaseIwEE6DeleteEii
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN13CRecordVectorIiED0Ev,"axG",@progbits,_ZN13CRecordVectorIiED0Ev,comdat
	.weak	_ZN13CRecordVectorIiED0Ev       # -- Begin function _ZN13CRecordVectorIiED0Ev
	.p2align	5
	.type	_ZN13CRecordVectorIiED0Ev,@function
_ZN13CRecordVectorIiED0Ev:              # @_ZN13CRecordVectorIiED0Ev
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 32
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.Lfunc_end49:
	.size	_ZN13CRecordVectorIiED0Ev, .Lfunc_end49-_ZN13CRecordVectorIiED0Ev
                                        # -- End function
	.section	.text._ZN13CRecordVectorIjED0Ev,"axG",@progbits,_ZN13CRecordVectorIjED0Ev,comdat
	.weak	_ZN13CRecordVectorIjED0Ev       # -- Begin function _ZN13CRecordVectorIjED0Ev
	.p2align	5
	.type	_ZN13CRecordVectorIjED0Ev,@function
_ZN13CRecordVectorIjED0Ev:              # @_ZN13CRecordVectorIjED0Ev
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 32
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.Lfunc_end50:
	.size	_ZN13CRecordVectorIjED0Ev, .Lfunc_end50-_ZN13CRecordVectorIjED0Ev
                                        # -- End function
	.section	.text._ZN13CObjectVectorI8CArcItemED0Ev,"axG",@progbits,_ZN13CObjectVectorI8CArcItemED0Ev,comdat
	.weak	_ZN13CObjectVectorI8CArcItemED0Ev # -- Begin function _ZN13CObjectVectorI8CArcItemED0Ev
	.p2align	5
	.type	_ZN13CObjectVectorI8CArcItemED0Ev,@function
_ZN13CObjectVectorI8CArcItemED0Ev:      # @_ZN13CObjectVectorI8CArcItemED0Ev
.Lfunc_begin27:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception27
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTV13CObjectVectorI8CArcItemE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV13CObjectVectorI8CArcItemE+16)
	st.d	$a0, $fp, 0
.Ltmp614:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVector5ClearEv)
	jirl	$ra, $ra, 0
.Ltmp615:                               # EH_LABEL
# %bb.1:                                # %_ZN13CObjectVectorI8CArcItemED2Ev.exit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN17CBaseRecordVectorD2Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 32
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB51_2:
.Ltmp616:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end51:
	.size	_ZN13CObjectVectorI8CArcItemED0Ev, .Lfunc_end51-_ZN13CObjectVectorI8CArcItemED0Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN13CObjectVectorI8CArcItemED0Ev,"aG",@progbits,_ZN13CObjectVectorI8CArcItemED0Ev,comdat
	.p2align	2, 0x0
GCC_except_table51:
.Lexception27:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase21-.Lttbaseref21
.Lttbaseref21:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end27-.Lcst_begin27
.Lcst_begin27:
	.uleb128 .Ltmp614-.Lfunc_begin27        # >> Call Site 1 <<
	.uleb128 .Ltmp615-.Ltmp614              #   Call between .Ltmp614 and .Ltmp615
	.uleb128 .Ltmp616-.Lfunc_begin27        #     jumps to .Ltmp616
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp615-.Lfunc_begin27        # >> Call Site 2 <<
	.uleb128 .Lfunc_end51-.Ltmp615          #   Call between .Ltmp615 and .Lfunc_end51
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end27:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase21:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN13CObjectVectorI8CArcItemE6DeleteEii,"axG",@progbits,_ZN13CObjectVectorI8CArcItemE6DeleteEii,comdat
	.weak	_ZN13CObjectVectorI8CArcItemE6DeleteEii # -- Begin function _ZN13CObjectVectorI8CArcItemE6DeleteEii
	.p2align	5
	.type	_ZN13CObjectVectorI8CArcItemE6DeleteEii,@function
_ZN13CObjectVectorI8CArcItemE6DeleteEii: # @_ZN13CObjectVectorI8CArcItemE6DeleteEii
	.cfi_startproc
# %bb.0:                                # %_ZNK17CBaseRecordVector22TestIndexAndCorrectNumEiRi.exit
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
	move	$fp, $a0
	ld.w	$a0, $a0, 12
	move	$s0, $a1
	add.w	$a1, $a2, $a1
	slt	$a1, $a0, $a1
	sub.w	$a0, $a0, $s0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$s1, $a0, $a1
	blez	$s1, .LBB52_7
# %bb.1:                                # %.lr.ph
	move	$s3, $zero
	slli.d	$s4, $s0, 3
	b	.LBB52_4
	.p2align	4, , 16
.LBB52_2:                               # %_ZN8CArcItemD2Ev.exit
                                        #   in Loop: Header=BB52_4 Depth=1
	ori	$a1, $zero, 48
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB52_3:                               #   in Loop: Header=BB52_4 Depth=1
	addi.d	$s3, $s3, 1
	addi.d	$s4, $s4, 8
	bgeu	$s3, $s1, .LBB52_7
.LBB52_4:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 16
	ldx.d	$s2, $a0, $s4
	beqz	$s2, .LBB52_3
# %bb.5:                                #   in Loop: Header=BB52_4 Depth=1
	ld.d	$a0, $s2, 16
	beqz	$a0, .LBB52_2
# %bb.6:                                #   in Loop: Header=BB52_4 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	b	.LBB52_2
.LBB52_7:                               # %._crit_edge
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	pcaddu18i	$t8, %call36(_ZN17CBaseRecordVector6DeleteEii)
	jr	$t8
.Lfunc_end52:
	.size	_ZN13CObjectVectorI8CArcItemE6DeleteEii, .Lfunc_end52-_ZN13CObjectVectorI8CArcItemE6DeleteEii
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str4.8,"aMS",@progbits,4
	.p2align	3, 0x0
.L.str:
	.word	114                             # 0x72
	.word	115                             # 0x73
	.word	102                             # 0x66
	.word	120                             # 0x78
	.word	0                               # 0x0
	.size	.L.str, 20

	.type	.L.str.4,@object                # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"there is no such archive"
	.size	.L.str.4, 25

	.type	.L.str.5,@object                # @.str.5
	.section	.rodata.str4.4,"aMS",@progbits,4
	.p2align	2, 0x0
.L.str.5:
	.word	85                              # 0x55
	.word	112                             # 0x70
	.word	100                             # 0x64
	.word	97                              # 0x61
	.word	116                             # 0x74
	.word	105                             # 0x69
	.word	110                             # 0x6e
	.word	103                             # 0x67
	.word	32                              # 0x20
	.word	102                             # 0x66
	.word	111                             # 0x6f
	.word	114                             # 0x72
	.word	32                              # 0x20
	.word	109                             # 0x6d
	.word	117                             # 0x75
	.word	108                             # 0x6c
	.word	116                             # 0x74
	.word	105                             # 0x69
	.word	118                             # 0x76
	.word	111                             # 0x6f
	.word	108                             # 0x6c
	.word	117                             # 0x75
	.word	109                             # 0x6d
	.word	101                             # 0x65
	.word	32                              # 0x20
	.word	97                              # 0x61
	.word	114                             # 0x72
	.word	99                              # 0x63
	.word	104                             # 0x68
	.word	105                             # 0x69
	.word	118                             # 0x76
	.word	101                             # 0x65
	.word	115                             # 0x73
	.word	32                              # 0x20
	.word	105                             # 0x69
	.word	115                             # 0x73
	.word	32                              # 0x20
	.word	110                             # 0x6e
	.word	111                             # 0x6f
	.word	116                             # 0x74
	.word	32                              # 0x20
	.word	105                             # 0x69
	.word	109                             # 0x6d
	.word	112                             # 0x70
	.word	108                             # 0x6c
	.word	101                             # 0x65
	.word	109                             # 0x6d
	.word	101                             # 0x65
	.word	110                             # 0x6e
	.word	116                             # 0x74
	.word	101                             # 0x65
	.word	100                             # 0x64
	.word	0                               # 0x0
	.size	.L.str.5, 212

	.type	.L.str.6,@object                # @.str.6
	.p2align	2, 0x0
.L.str.6:
	.word	83                              # 0x53
	.word	99                              # 0x63
	.word	97                              # 0x61
	.word	110                             # 0x6e
	.word	110                             # 0x6e
	.word	105                             # 0x69
	.word	110                             # 0x6e
	.word	103                             # 0x67
	.word	32                              # 0x20
	.word	101                             # 0x65
	.word	114                             # 0x72
	.word	114                             # 0x72
	.word	111                             # 0x6f
	.word	114                             # 0x72
	.word	0                               # 0x0
	.size	.L.str.6, 60

	.type	.L.str.8,@object                # @.str.8
	.p2align	2, 0x0
.L.str.8:
	.word	55                              # 0x37
	.word	45                              # 0x2d
	.word	90                              # 0x5a
	.word	105                             # 0x69
	.word	112                             # 0x70
	.word	32                              # 0x20
	.word	99                              # 0x63
	.word	97                              # 0x61
	.word	110                             # 0x6e
	.word	110                             # 0x6e
	.word	111                             # 0x6f
	.word	116                             # 0x74
	.word	32                              # 0x20
	.word	100                             # 0x64
	.word	101                             # 0x65
	.word	108                             # 0x6c
	.word	101                             # 0x65
	.word	116                             # 0x74
	.word	101                             # 0x65
	.word	32                              # 0x20
	.word	116                             # 0x74
	.word	104                             # 0x68
	.word	101                             # 0x65
	.word	32                              # 0x20
	.word	102                             # 0x66
	.word	105                             # 0x69
	.word	108                             # 0x6c
	.word	101                             # 0x65
	.word	0                               # 0x0
	.size	.L.str.8, 116

	.type	.L.str.9,@object                # @.str.9
	.p2align	2, 0x0
.L.str.9:
	.word	55                              # 0x37
	.word	45                              # 0x2d
	.word	90                              # 0x5a
	.word	105                             # 0x69
	.word	112                             # 0x70
	.word	32                              # 0x20
	.word	99                              # 0x63
	.word	97                              # 0x61
	.word	110                             # 0x6e
	.word	110                             # 0x6e
	.word	111                             # 0x6f
	.word	116                             # 0x74
	.word	32                              # 0x20
	.word	109                             # 0x6d
	.word	111                             # 0x6f
	.word	118                             # 0x76
	.word	101                             # 0x65
	.word	32                              # 0x20
	.word	116                             # 0x74
	.word	104                             # 0x68
	.word	101                             # 0x65
	.word	32                              # 0x20
	.word	102                             # 0x66
	.word	105                             # 0x69
	.word	108                             # 0x6c
	.word	101                             # 0x65
	.word	0                               # 0x0
	.size	.L.str.9, 108

	.type	_ZTV18COutMultiVolStream,@object # @_ZTV18COutMultiVolStream
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTV18COutMultiVolStream
	.p2align	3, 0x0
_ZTV18COutMultiVolStream:
	.dword	0
	.dword	_ZTI18COutMultiVolStream
	.dword	_ZN18COutMultiVolStream14QueryInterfaceERK4GUIDPPv
	.dword	_ZN18COutMultiVolStream6AddRefEv
	.dword	_ZN18COutMultiVolStream7ReleaseEv
	.dword	_ZN18COutMultiVolStreamD2Ev
	.dword	_ZN18COutMultiVolStreamD0Ev
	.dword	_ZN18COutMultiVolStream5WriteEPKvjPj
	.dword	_ZN18COutMultiVolStream4SeekExjPy
	.dword	_ZN18COutMultiVolStream7SetSizeEy
	.size	_ZTV18COutMultiVolStream, 80

	.type	_ZTI18COutMultiVolStream,@object # @_ZTI18COutMultiVolStream
	.globl	_ZTI18COutMultiVolStream
	.p2align	3, 0x0
_ZTI18COutMultiVolStream:
	.dword	_ZTVN10__cxxabiv121__vmi_class_type_infoE+16
	.dword	_ZTS18COutMultiVolStream
	.word	0                               # 0x0
	.word	2                               # 0x2
	.dword	_ZTI10IOutStream
	.dword	2                               # 0x2
	.dword	_ZTI13CMyUnknownImp
	.dword	2050                            # 0x802
	.size	_ZTI18COutMultiVolStream, 56

	.type	_ZTS18COutMultiVolStream,@object # @_ZTS18COutMultiVolStream
	.section	.rodata,"a",@progbits
	.globl	_ZTS18COutMultiVolStream
_ZTS18COutMultiVolStream:
	.asciz	"18COutMultiVolStream"
	.size	_ZTS18COutMultiVolStream, 21

	.type	_ZTI10IOutStream,@object        # @_ZTI10IOutStream
	.section	.data.rel.ro._ZTI10IOutStream,"awG",@progbits,_ZTI10IOutStream,comdat
	.weak	_ZTI10IOutStream
	.p2align	3, 0x0
_ZTI10IOutStream:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS10IOutStream
	.dword	_ZTI20ISequentialOutStream
	.size	_ZTI10IOutStream, 24

	.type	_ZTS10IOutStream,@object        # @_ZTS10IOutStream
	.section	.rodata._ZTS10IOutStream,"aG",@progbits,_ZTS10IOutStream,comdat
	.weak	_ZTS10IOutStream
_ZTS10IOutStream:
	.asciz	"10IOutStream"
	.size	_ZTS10IOutStream, 13

	.type	_ZTI20ISequentialOutStream,@object # @_ZTI20ISequentialOutStream
	.section	.data.rel.ro._ZTI20ISequentialOutStream,"awG",@progbits,_ZTI20ISequentialOutStream,comdat
	.weak	_ZTI20ISequentialOutStream
	.p2align	3, 0x0
_ZTI20ISequentialOutStream:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS20ISequentialOutStream
	.dword	_ZTI8IUnknown
	.size	_ZTI20ISequentialOutStream, 24

	.type	_ZTS20ISequentialOutStream,@object # @_ZTS20ISequentialOutStream
	.section	.rodata._ZTS20ISequentialOutStream,"aG",@progbits,_ZTS20ISequentialOutStream,comdat
	.weak	_ZTS20ISequentialOutStream
_ZTS20ISequentialOutStream:
	.asciz	"20ISequentialOutStream"
	.size	_ZTS20ISequentialOutStream, 23

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

	.type	_ZTVN8NWindows5NFile3NIO8COutFileE,@object # @_ZTVN8NWindows5NFile3NIO8COutFileE
	.section	.data.rel.ro._ZTVN8NWindows5NFile3NIO8COutFileE,"awG",@progbits,_ZTVN8NWindows5NFile3NIO8COutFileE,comdat
	.weak	_ZTVN8NWindows5NFile3NIO8COutFileE
	.p2align	3, 0x0
_ZTVN8NWindows5NFile3NIO8COutFileE:
	.dword	0
	.dword	_ZTIN8NWindows5NFile3NIO8COutFileE
	.dword	_ZN8NWindows5NFile3NIO9CFileBaseD2Ev
	.dword	_ZN8NWindows5NFile3NIO8COutFileD0Ev
	.dword	_ZN8NWindows5NFile3NIO9CFileBase5CloseEv
	.size	_ZTVN8NWindows5NFile3NIO8COutFileE, 40

	.type	_ZTIN8NWindows5NFile3NIO8COutFileE,@object # @_ZTIN8NWindows5NFile3NIO8COutFileE
	.section	.data.rel.ro._ZTIN8NWindows5NFile3NIO8COutFileE,"awG",@progbits,_ZTIN8NWindows5NFile3NIO8COutFileE,comdat
	.weak	_ZTIN8NWindows5NFile3NIO8COutFileE
	.p2align	3, 0x0
_ZTIN8NWindows5NFile3NIO8COutFileE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTSN8NWindows5NFile3NIO8COutFileE
	.dword	_ZTIN8NWindows5NFile3NIO9CFileBaseE
	.size	_ZTIN8NWindows5NFile3NIO8COutFileE, 24

	.type	_ZTSN8NWindows5NFile3NIO8COutFileE,@object # @_ZTSN8NWindows5NFile3NIO8COutFileE
	.section	.rodata._ZTSN8NWindows5NFile3NIO8COutFileE,"aG",@progbits,_ZTSN8NWindows5NFile3NIO8COutFileE,comdat
	.weak	_ZTSN8NWindows5NFile3NIO8COutFileE
_ZTSN8NWindows5NFile3NIO8COutFileE:
	.asciz	"N8NWindows5NFile3NIO8COutFileE"
	.size	_ZTSN8NWindows5NFile3NIO8COutFileE, 31

	.type	.L.str.10,@object               # @.str.10
	.section	.rodata.str4.8,"aMS",@progbits,4
	.p2align	3, 0x0
.L.str.10:
	.word	55                              # 0x37
	.word	122                             # 0x7a
	.word	0                               # 0x0
	.size	.L.str.10, 12

	.type	_ZTV13CObjectVectorI4CArcE,@object # @_ZTV13CObjectVectorI4CArcE
	.section	.data.rel.ro._ZTV13CObjectVectorI4CArcE,"awG",@progbits,_ZTV13CObjectVectorI4CArcE,comdat
	.weak	_ZTV13CObjectVectorI4CArcE
	.p2align	3, 0x0
_ZTV13CObjectVectorI4CArcE:
	.dword	0
	.dword	_ZTI13CObjectVectorI4CArcE
	.dword	_ZN13CObjectVectorI4CArcED2Ev
	.dword	_ZN13CObjectVectorI4CArcED0Ev
	.dword	_ZN13CObjectVectorI4CArcE6DeleteEii
	.size	_ZTV13CObjectVectorI4CArcE, 40

	.type	_ZTI13CObjectVectorI4CArcE,@object # @_ZTI13CObjectVectorI4CArcE
	.section	.data.rel.ro._ZTI13CObjectVectorI4CArcE,"awG",@progbits,_ZTI13CObjectVectorI4CArcE,comdat
	.weak	_ZTI13CObjectVectorI4CArcE
	.p2align	3, 0x0
_ZTI13CObjectVectorI4CArcE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS13CObjectVectorI4CArcE
	.dword	_ZTI13CRecordVectorIPvE
	.size	_ZTI13CObjectVectorI4CArcE, 24

	.type	_ZTS13CObjectVectorI4CArcE,@object # @_ZTS13CObjectVectorI4CArcE
	.section	.rodata._ZTS13CObjectVectorI4CArcE,"aG",@progbits,_ZTS13CObjectVectorI4CArcE,comdat
	.weak	_ZTS13CObjectVectorI4CArcE
_ZTS13CObjectVectorI4CArcE:
	.asciz	"13CObjectVectorI4CArcE"
	.size	_ZTS13CObjectVectorI4CArcE, 23

	.type	_ZTI13CRecordVectorIPvE,@object # @_ZTI13CRecordVectorIPvE
	.section	.data.rel.ro._ZTI13CRecordVectorIPvE,"awG",@progbits,_ZTI13CRecordVectorIPvE,comdat
	.weak	_ZTI13CRecordVectorIPvE
	.p2align	3, 0x0
_ZTI13CRecordVectorIPvE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS13CRecordVectorIPvE
	.dword	_ZTI17CBaseRecordVector
	.size	_ZTI13CRecordVectorIPvE, 24

	.type	_ZTS13CRecordVectorIPvE,@object # @_ZTS13CRecordVectorIPvE
	.section	.rodata._ZTS13CRecordVectorIPvE,"aG",@progbits,_ZTS13CRecordVectorIPvE,comdat
	.weak	_ZTS13CRecordVectorIPvE
_ZTS13CRecordVectorIPvE:
	.asciz	"13CRecordVectorIPvE"
	.size	_ZTS13CRecordVectorIPvE, 20

	.type	_ZTV13CObjectVectorI8CDirItemE,@object # @_ZTV13CObjectVectorI8CDirItemE
	.section	.data.rel.ro._ZTV13CObjectVectorI8CDirItemE,"awG",@progbits,_ZTV13CObjectVectorI8CDirItemE,comdat
	.weak	_ZTV13CObjectVectorI8CDirItemE
	.p2align	3, 0x0
_ZTV13CObjectVectorI8CDirItemE:
	.dword	0
	.dword	_ZTI13CObjectVectorI8CDirItemE
	.dword	_ZN13CObjectVectorI8CDirItemED2Ev
	.dword	_ZN13CObjectVectorI8CDirItemED0Ev
	.dword	_ZN13CObjectVectorI8CDirItemE6DeleteEii
	.size	_ZTV13CObjectVectorI8CDirItemE, 40

	.type	_ZTI13CObjectVectorI8CDirItemE,@object # @_ZTI13CObjectVectorI8CDirItemE
	.section	.data.rel.ro._ZTI13CObjectVectorI8CDirItemE,"awG",@progbits,_ZTI13CObjectVectorI8CDirItemE,comdat
	.weak	_ZTI13CObjectVectorI8CDirItemE
	.p2align	3, 0x0
_ZTI13CObjectVectorI8CDirItemE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS13CObjectVectorI8CDirItemE
	.dword	_ZTI13CRecordVectorIPvE
	.size	_ZTI13CObjectVectorI8CDirItemE, 24

	.type	_ZTS13CObjectVectorI8CDirItemE,@object # @_ZTS13CObjectVectorI8CDirItemE
	.section	.rodata._ZTS13CObjectVectorI8CDirItemE,"aG",@progbits,_ZTS13CObjectVectorI8CDirItemE,comdat
	.weak	_ZTS13CObjectVectorI8CDirItemE
_ZTS13CObjectVectorI8CDirItemE:
	.asciz	"13CObjectVectorI8CDirItemE"
	.size	_ZTS13CObjectVectorI8CDirItemE, 27

	.type	_ZTV26CEnumDirItemUpdateCallback,@object # @_ZTV26CEnumDirItemUpdateCallback
	.section	.data.rel.ro._ZTV26CEnumDirItemUpdateCallback,"awG",@progbits,_ZTV26CEnumDirItemUpdateCallback,comdat
	.weak	_ZTV26CEnumDirItemUpdateCallback
	.p2align	3, 0x0
_ZTV26CEnumDirItemUpdateCallback:
	.dword	0
	.dword	_ZTI26CEnumDirItemUpdateCallback
	.dword	_ZN26CEnumDirItemUpdateCallback12ScanProgressEyyPKw
	.size	_ZTV26CEnumDirItemUpdateCallback, 24

	.type	_ZTI26CEnumDirItemUpdateCallback,@object # @_ZTI26CEnumDirItemUpdateCallback
	.section	.data.rel.ro._ZTI26CEnumDirItemUpdateCallback,"awG",@progbits,_ZTI26CEnumDirItemUpdateCallback,comdat
	.weak	_ZTI26CEnumDirItemUpdateCallback
	.p2align	3, 0x0
_ZTI26CEnumDirItemUpdateCallback:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS26CEnumDirItemUpdateCallback
	.dword	_ZTI20IEnumDirItemCallback
	.size	_ZTI26CEnumDirItemUpdateCallback, 24

	.type	_ZTS26CEnumDirItemUpdateCallback,@object # @_ZTS26CEnumDirItemUpdateCallback
	.section	.rodata._ZTS26CEnumDirItemUpdateCallback,"aG",@progbits,_ZTS26CEnumDirItemUpdateCallback,comdat
	.weak	_ZTS26CEnumDirItemUpdateCallback
_ZTS26CEnumDirItemUpdateCallback:
	.asciz	"26CEnumDirItemUpdateCallback"
	.size	_ZTS26CEnumDirItemUpdateCallback, 29

	.type	_ZTI20IEnumDirItemCallback,@object # @_ZTI20IEnumDirItemCallback
	.section	.data.rel.ro._ZTI20IEnumDirItemCallback,"awG",@progbits,_ZTI20IEnumDirItemCallback,comdat
	.weak	_ZTI20IEnumDirItemCallback
	.p2align	3, 0x0
_ZTI20IEnumDirItemCallback:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTS20IEnumDirItemCallback
	.size	_ZTI20IEnumDirItemCallback, 16

	.type	_ZTS20IEnumDirItemCallback,@object # @_ZTS20IEnumDirItemCallback
	.section	.rodata._ZTS20IEnumDirItemCallback,"aG",@progbits,_ZTS20IEnumDirItemCallback,comdat
	.weak	_ZTS20IEnumDirItemCallback
_ZTS20IEnumDirItemCallback:
	.asciz	"20IEnumDirItemCallback"
	.size	_ZTS20IEnumDirItemCallback, 23

	.type	.L.str.12,@object               # @.str.12
	.section	.rodata.str4.4,"aMS",@progbits,4
	.p2align	2, 0x0
.L.str.12:
	.word	115                             # 0x73
	.word	116                             # 0x74
	.word	100                             # 0x64
	.word	111                             # 0x6f
	.word	117                             # 0x75
	.word	116                             # 0x74
	.word	0                               # 0x0
	.size	.L.str.12, 28

	.type	.L.str.13,@object               # @.str.13
	.p2align	2, 0x0
.L.str.13:
	.word	55                              # 0x37
	.word	45                              # 0x2d
	.word	90                              # 0x5a
	.word	105                             # 0x69
	.word	112                             # 0x70
	.word	32                              # 0x20
	.word	99                              # 0x63
	.word	97                              # 0x61
	.word	110                             # 0x6e
	.word	110                             # 0x6e
	.word	111                             # 0x6f
	.word	116                             # 0x74
	.word	32                              # 0x20
	.word	111                             # 0x6f
	.word	112                             # 0x70
	.word	101                             # 0x65
	.word	110                             # 0x6e
	.word	32                              # 0x20
	.word	102                             # 0x66
	.word	105                             # 0x69
	.word	108                             # 0x6c
	.word	101                             # 0x65
	.word	0                               # 0x0
	.size	.L.str.13, 92

	.type	.L.str.16,@object               # @.str.16
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.16:
	.asciz	"update operations are not supported for this archive"
	.size	.L.str.16, 53

	.type	_ZTV13CRecordVectorI12CUpdatePair2E,@object # @_ZTV13CRecordVectorI12CUpdatePair2E
	.section	.data.rel.ro._ZTV13CRecordVectorI12CUpdatePair2E,"awG",@progbits,_ZTV13CRecordVectorI12CUpdatePair2E,comdat
	.weak	_ZTV13CRecordVectorI12CUpdatePair2E
	.p2align	3, 0x0
_ZTV13CRecordVectorI12CUpdatePair2E:
	.dword	0
	.dword	_ZTI13CRecordVectorI12CUpdatePair2E
	.dword	_ZN17CBaseRecordVectorD2Ev
	.dword	_ZN13CRecordVectorI12CUpdatePair2ED0Ev
	.dword	_ZN17CBaseRecordVector6DeleteEii
	.size	_ZTV13CRecordVectorI12CUpdatePair2E, 40

	.type	_ZTI13CRecordVectorI12CUpdatePair2E,@object # @_ZTI13CRecordVectorI12CUpdatePair2E
	.section	.data.rel.ro._ZTI13CRecordVectorI12CUpdatePair2E,"awG",@progbits,_ZTI13CRecordVectorI12CUpdatePair2E,comdat
	.weak	_ZTI13CRecordVectorI12CUpdatePair2E
	.p2align	3, 0x0
_ZTI13CRecordVectorI12CUpdatePair2E:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS13CRecordVectorI12CUpdatePair2E
	.dword	_ZTI17CBaseRecordVector
	.size	_ZTI13CRecordVectorI12CUpdatePair2E, 24

	.type	_ZTS13CRecordVectorI12CUpdatePair2E,@object # @_ZTS13CRecordVectorI12CUpdatePair2E
	.section	.rodata._ZTS13CRecordVectorI12CUpdatePair2E,"aG",@progbits,_ZTS13CRecordVectorI12CUpdatePair2E,comdat
	.weak	_ZTS13CRecordVectorI12CUpdatePair2E
_ZTS13CRecordVectorI12CUpdatePair2E:
	.asciz	"13CRecordVectorI12CUpdatePair2E"
	.size	_ZTS13CRecordVectorI12CUpdatePair2E, 32

	.type	_ZTV13CRecordVectorI11CUpdatePairE,@object # @_ZTV13CRecordVectorI11CUpdatePairE
	.section	.data.rel.ro._ZTV13CRecordVectorI11CUpdatePairE,"awG",@progbits,_ZTV13CRecordVectorI11CUpdatePairE,comdat
	.weak	_ZTV13CRecordVectorI11CUpdatePairE
	.p2align	3, 0x0
_ZTV13CRecordVectorI11CUpdatePairE:
	.dword	0
	.dword	_ZTI13CRecordVectorI11CUpdatePairE
	.dword	_ZN17CBaseRecordVectorD2Ev
	.dword	_ZN13CRecordVectorI11CUpdatePairED0Ev
	.dword	_ZN17CBaseRecordVector6DeleteEii
	.size	_ZTV13CRecordVectorI11CUpdatePairE, 40

	.type	_ZTI13CRecordVectorI11CUpdatePairE,@object # @_ZTI13CRecordVectorI11CUpdatePairE
	.section	.data.rel.ro._ZTI13CRecordVectorI11CUpdatePairE,"awG",@progbits,_ZTI13CRecordVectorI11CUpdatePairE,comdat
	.weak	_ZTI13CRecordVectorI11CUpdatePairE
	.p2align	3, 0x0
_ZTI13CRecordVectorI11CUpdatePairE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS13CRecordVectorI11CUpdatePairE
	.dword	_ZTI17CBaseRecordVector
	.size	_ZTI13CRecordVectorI11CUpdatePairE, 24

	.type	_ZTS13CRecordVectorI11CUpdatePairE,@object # @_ZTS13CRecordVectorI11CUpdatePairE
	.section	.rodata._ZTS13CRecordVectorI11CUpdatePairE,"aG",@progbits,_ZTS13CRecordVectorI11CUpdatePairE,comdat
	.weak	_ZTS13CRecordVectorI11CUpdatePairE
_ZTS13CRecordVectorI11CUpdatePairE:
	.asciz	"13CRecordVectorI11CUpdatePairE"
	.size	_ZTS13CRecordVectorI11CUpdatePairE, 31

	.type	_ZTV13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE,@object # @_ZTV13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE
	.section	.data.rel.ro._ZTV13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE,"awG",@progbits,_ZTV13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE,comdat
	.weak	_ZTV13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE
	.p2align	3, 0x0
_ZTV13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE:
	.dword	0
	.dword	_ZTI13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE
	.dword	_ZN13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEED2Ev
	.dword	_ZN13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEED0Ev
	.dword	_ZN13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE6DeleteEii
	.size	_ZTV13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE, 40

	.type	_ZTI13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE,@object # @_ZTI13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE
	.section	.data.rel.ro._ZTI13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE,"awG",@progbits,_ZTI13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE,comdat
	.weak	_ZTI13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE
	.p2align	3, 0x0
_ZTI13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE
	.dword	_ZTI13CRecordVectorIPvE
	.size	_ZTI13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE, 24

	.type	_ZTS13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE,@object # @_ZTS13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE
	.section	.rodata._ZTS13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE,"aG",@progbits,_ZTS13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE,comdat
	.weak	_ZTS13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE
_ZTS13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE:
	.asciz	"13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE"
	.size	_ZTS13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE, 56

	.type	_ZTV13CRecordVectorIyE,@object  # @_ZTV13CRecordVectorIyE
	.section	.data.rel.ro._ZTV13CRecordVectorIyE,"awG",@progbits,_ZTV13CRecordVectorIyE,comdat
	.weak	_ZTV13CRecordVectorIyE
	.p2align	3, 0x0
_ZTV13CRecordVectorIyE:
	.dword	0
	.dword	_ZTI13CRecordVectorIyE
	.dword	_ZN17CBaseRecordVectorD2Ev
	.dword	_ZN13CRecordVectorIyED0Ev
	.dword	_ZN17CBaseRecordVector6DeleteEii
	.size	_ZTV13CRecordVectorIyE, 40

	.type	_ZTI13CRecordVectorIyE,@object  # @_ZTI13CRecordVectorIyE
	.section	.data.rel.ro._ZTI13CRecordVectorIyE,"awG",@progbits,_ZTI13CRecordVectorIyE,comdat
	.weak	_ZTI13CRecordVectorIyE
	.p2align	3, 0x0
_ZTI13CRecordVectorIyE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS13CRecordVectorIyE
	.dword	_ZTI17CBaseRecordVector
	.size	_ZTI13CRecordVectorIyE, 24

	.type	_ZTS13CRecordVectorIyE,@object  # @_ZTS13CRecordVectorIyE
	.section	.rodata._ZTS13CRecordVectorIyE,"aG",@progbits,_ZTS13CRecordVectorIyE,comdat
	.weak	_ZTS13CRecordVectorIyE
_ZTS13CRecordVectorIyE:
	.asciz	"13CRecordVectorIyE"
	.size	_ZTS13CRecordVectorIyE, 19

	.type	_ZTVN8NWindows5NFile3NIO7CInFileE,@object # @_ZTVN8NWindows5NFile3NIO7CInFileE
	.section	.data.rel.ro._ZTVN8NWindows5NFile3NIO7CInFileE,"awG",@progbits,_ZTVN8NWindows5NFile3NIO7CInFileE,comdat
	.weak	_ZTVN8NWindows5NFile3NIO7CInFileE
	.p2align	3, 0x0
_ZTVN8NWindows5NFile3NIO7CInFileE:
	.dword	0
	.dword	_ZTIN8NWindows5NFile3NIO7CInFileE
	.dword	_ZN8NWindows5NFile3NIO9CFileBaseD2Ev
	.dword	_ZN8NWindows5NFile3NIO7CInFileD0Ev
	.dword	_ZN8NWindows5NFile3NIO9CFileBase5CloseEv
	.size	_ZTVN8NWindows5NFile3NIO7CInFileE, 40

	.type	_ZTIN8NWindows5NFile3NIO7CInFileE,@object # @_ZTIN8NWindows5NFile3NIO7CInFileE
	.section	.data.rel.ro._ZTIN8NWindows5NFile3NIO7CInFileE,"awG",@progbits,_ZTIN8NWindows5NFile3NIO7CInFileE,comdat
	.weak	_ZTIN8NWindows5NFile3NIO7CInFileE
	.p2align	3, 0x0
_ZTIN8NWindows5NFile3NIO7CInFileE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTSN8NWindows5NFile3NIO7CInFileE
	.dword	_ZTIN8NWindows5NFile3NIO9CFileBaseE
	.size	_ZTIN8NWindows5NFile3NIO7CInFileE, 24

	.type	_ZTSN8NWindows5NFile3NIO7CInFileE,@object # @_ZTSN8NWindows5NFile3NIO7CInFileE
	.section	.rodata._ZTSN8NWindows5NFile3NIO7CInFileE,"aG",@progbits,_ZTSN8NWindows5NFile3NIO7CInFileE,comdat
	.weak	_ZTSN8NWindows5NFile3NIO7CInFileE
_ZTSN8NWindows5NFile3NIO7CInFileE:
	.asciz	"N8NWindows5NFile3NIO7CInFileE"
	.size	_ZTSN8NWindows5NFile3NIO7CInFileE, 30

	.type	.L.str.17,@object               # @.str.17
	.section	.rodata.str4.4,"aMS",@progbits,4
	.p2align	2, 0x0
.L.str.17:
	.word	46                              # 0x2e
	.word	116                             # 0x74
	.word	109                             # 0x6d
	.word	112                             # 0x70
	.word	0                               # 0x0
	.size	.L.str.17, 20

	.type	_ZTV13CObjectVectorI11CStringBaseIwEE,@object # @_ZTV13CObjectVectorI11CStringBaseIwEE
	.section	.data.rel.ro._ZTV13CObjectVectorI11CStringBaseIwEE,"awG",@progbits,_ZTV13CObjectVectorI11CStringBaseIwEE,comdat
	.weak	_ZTV13CObjectVectorI11CStringBaseIwEE
	.p2align	3, 0x0
_ZTV13CObjectVectorI11CStringBaseIwEE:
	.dword	0
	.dword	_ZTI13CObjectVectorI11CStringBaseIwEE
	.dword	_ZN13CObjectVectorI11CStringBaseIwEED2Ev
	.dword	_ZN13CObjectVectorI11CStringBaseIwEED0Ev
	.dword	_ZN13CObjectVectorI11CStringBaseIwEE6DeleteEii
	.size	_ZTV13CObjectVectorI11CStringBaseIwEE, 40

	.type	_ZTI13CObjectVectorI11CStringBaseIwEE,@object # @_ZTI13CObjectVectorI11CStringBaseIwEE
	.section	.data.rel.ro._ZTI13CObjectVectorI11CStringBaseIwEE,"awG",@progbits,_ZTI13CObjectVectorI11CStringBaseIwEE,comdat
	.weak	_ZTI13CObjectVectorI11CStringBaseIwEE
	.p2align	3, 0x0
_ZTI13CObjectVectorI11CStringBaseIwEE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS13CObjectVectorI11CStringBaseIwEE
	.dword	_ZTI13CRecordVectorIPvE
	.size	_ZTI13CObjectVectorI11CStringBaseIwEE, 24

	.type	_ZTS13CObjectVectorI11CStringBaseIwEE,@object # @_ZTS13CObjectVectorI11CStringBaseIwEE
	.section	.rodata._ZTS13CObjectVectorI11CStringBaseIwEE,"aG",@progbits,_ZTS13CObjectVectorI11CStringBaseIwEE,comdat
	.weak	_ZTS13CObjectVectorI11CStringBaseIwEE
_ZTS13CObjectVectorI11CStringBaseIwEE:
	.asciz	"13CObjectVectorI11CStringBaseIwEE"
	.size	_ZTS13CObjectVectorI11CStringBaseIwEE, 34

	.type	_ZTV13CRecordVectorIiE,@object  # @_ZTV13CRecordVectorIiE
	.section	.data.rel.ro._ZTV13CRecordVectorIiE,"awG",@progbits,_ZTV13CRecordVectorIiE,comdat
	.weak	_ZTV13CRecordVectorIiE
	.p2align	3, 0x0
_ZTV13CRecordVectorIiE:
	.dword	0
	.dword	_ZTI13CRecordVectorIiE
	.dword	_ZN17CBaseRecordVectorD2Ev
	.dword	_ZN13CRecordVectorIiED0Ev
	.dword	_ZN17CBaseRecordVector6DeleteEii
	.size	_ZTV13CRecordVectorIiE, 40

	.type	_ZTI13CRecordVectorIiE,@object  # @_ZTI13CRecordVectorIiE
	.section	.data.rel.ro._ZTI13CRecordVectorIiE,"awG",@progbits,_ZTI13CRecordVectorIiE,comdat
	.weak	_ZTI13CRecordVectorIiE
	.p2align	3, 0x0
_ZTI13CRecordVectorIiE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS13CRecordVectorIiE
	.dword	_ZTI17CBaseRecordVector
	.size	_ZTI13CRecordVectorIiE, 24

	.type	_ZTS13CRecordVectorIiE,@object  # @_ZTS13CRecordVectorIiE
	.section	.rodata._ZTS13CRecordVectorIiE,"aG",@progbits,_ZTS13CRecordVectorIiE,comdat
	.weak	_ZTS13CRecordVectorIiE
_ZTS13CRecordVectorIiE:
	.asciz	"13CRecordVectorIiE"
	.size	_ZTS13CRecordVectorIiE, 19

	.type	_ZTV13CRecordVectorIjE,@object  # @_ZTV13CRecordVectorIjE
	.section	.data.rel.ro._ZTV13CRecordVectorIjE,"awG",@progbits,_ZTV13CRecordVectorIjE,comdat
	.weak	_ZTV13CRecordVectorIjE
	.p2align	3, 0x0
_ZTV13CRecordVectorIjE:
	.dword	0
	.dword	_ZTI13CRecordVectorIjE
	.dword	_ZN17CBaseRecordVectorD2Ev
	.dword	_ZN13CRecordVectorIjED0Ev
	.dword	_ZN17CBaseRecordVector6DeleteEii
	.size	_ZTV13CRecordVectorIjE, 40

	.type	_ZTI13CRecordVectorIjE,@object  # @_ZTI13CRecordVectorIjE
	.section	.data.rel.ro._ZTI13CRecordVectorIjE,"awG",@progbits,_ZTI13CRecordVectorIjE,comdat
	.weak	_ZTI13CRecordVectorIjE
	.p2align	3, 0x0
_ZTI13CRecordVectorIjE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS13CRecordVectorIjE
	.dword	_ZTI17CBaseRecordVector
	.size	_ZTI13CRecordVectorIjE, 24

	.type	_ZTS13CRecordVectorIjE,@object  # @_ZTS13CRecordVectorIjE
	.section	.rodata._ZTS13CRecordVectorIjE,"aG",@progbits,_ZTS13CRecordVectorIjE,comdat
	.weak	_ZTS13CRecordVectorIjE
_ZTS13CRecordVectorIjE:
	.asciz	"13CRecordVectorIjE"
	.size	_ZTS13CRecordVectorIjE, 19

	.type	_ZTV13CObjectVectorI8CArcItemE,@object # @_ZTV13CObjectVectorI8CArcItemE
	.section	.data.rel.ro._ZTV13CObjectVectorI8CArcItemE,"awG",@progbits,_ZTV13CObjectVectorI8CArcItemE,comdat
	.weak	_ZTV13CObjectVectorI8CArcItemE
	.p2align	3, 0x0
_ZTV13CObjectVectorI8CArcItemE:
	.dword	0
	.dword	_ZTI13CObjectVectorI8CArcItemE
	.dword	_ZN13CObjectVectorI8CArcItemED2Ev
	.dword	_ZN13CObjectVectorI8CArcItemED0Ev
	.dword	_ZN13CObjectVectorI8CArcItemE6DeleteEii
	.size	_ZTV13CObjectVectorI8CArcItemE, 40

	.type	_ZTI13CObjectVectorI8CArcItemE,@object # @_ZTI13CObjectVectorI8CArcItemE
	.section	.data.rel.ro._ZTI13CObjectVectorI8CArcItemE,"awG",@progbits,_ZTI13CObjectVectorI8CArcItemE,comdat
	.weak	_ZTI13CObjectVectorI8CArcItemE
	.p2align	3, 0x0
_ZTI13CObjectVectorI8CArcItemE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS13CObjectVectorI8CArcItemE
	.dword	_ZTI13CRecordVectorIPvE
	.size	_ZTI13CObjectVectorI8CArcItemE, 24

	.type	_ZTS13CObjectVectorI8CArcItemE,@object # @_ZTS13CObjectVectorI8CArcItemE
	.section	.rodata._ZTS13CObjectVectorI8CArcItemE,"aG",@progbits,_ZTS13CObjectVectorI8CArcItemE,comdat
	.weak	_ZTS13CObjectVectorI8CArcItemE
_ZTS13CObjectVectorI8CArcItemE:
	.asciz	"13CObjectVectorI8CArcItemE"
	.size	_ZTS13CObjectVectorI8CArcItemE, 27

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
	.addrsig_sym _ZTIPKc
	.addrsig_sym _ZTI18COutMultiVolStream
	.addrsig_sym _ZTVN10__cxxabiv121__vmi_class_type_infoE
	.addrsig_sym _ZTS18COutMultiVolStream
	.addrsig_sym _ZTI10IOutStream
	.addrsig_sym _ZTVN10__cxxabiv120__si_class_type_infoE
	.addrsig_sym _ZTS10IOutStream
	.addrsig_sym _ZTI20ISequentialOutStream
	.addrsig_sym _ZTS20ISequentialOutStream
	.addrsig_sym _ZTI8IUnknown
	.addrsig_sym _ZTVN10__cxxabiv117__class_type_infoE
	.addrsig_sym _ZTS8IUnknown
	.addrsig_sym _ZTI13CMyUnknownImp
	.addrsig_sym _ZTS13CMyUnknownImp
	.addrsig_sym _ZTIN8NWindows5NFile3NIO8COutFileE
	.addrsig_sym _ZTSN8NWindows5NFile3NIO8COutFileE
	.addrsig_sym _ZTIN8NWindows5NFile3NIO9CFileBaseE
	.addrsig_sym _ZTI13CObjectVectorI4CArcE
	.addrsig_sym _ZTS13CObjectVectorI4CArcE
	.addrsig_sym _ZTI13CRecordVectorIPvE
	.addrsig_sym _ZTS13CRecordVectorIPvE
	.addrsig_sym _ZTI17CBaseRecordVector
	.addrsig_sym _ZTI13CObjectVectorI8CDirItemE
	.addrsig_sym _ZTS13CObjectVectorI8CDirItemE
	.addrsig_sym _ZTI26CEnumDirItemUpdateCallback
	.addrsig_sym _ZTS26CEnumDirItemUpdateCallback
	.addrsig_sym _ZTI20IEnumDirItemCallback
	.addrsig_sym _ZTS20IEnumDirItemCallback
	.addrsig_sym IID_IOutArchive
	.addrsig_sym _ZTIi
	.addrsig_sym _ZTI13CRecordVectorI12CUpdatePair2E
	.addrsig_sym _ZTS13CRecordVectorI12CUpdatePair2E
	.addrsig_sym _ZTI13CRecordVectorI11CUpdatePairE
	.addrsig_sym _ZTS13CRecordVectorI11CUpdatePairE
	.addrsig_sym _ZTI13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE
	.addrsig_sym _ZTS13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE
	.addrsig_sym _ZTI13CRecordVectorIyE
	.addrsig_sym _ZTS13CRecordVectorIyE
	.addrsig_sym _ZTIN8NWindows5NFile3NIO7CInFileE
	.addrsig_sym _ZTSN8NWindows5NFile3NIO7CInFileE
	.addrsig_sym _ZTI13CObjectVectorI11CStringBaseIwEE
	.addrsig_sym _ZTS13CObjectVectorI11CStringBaseIwEE
	.addrsig_sym _ZTI13CRecordVectorIiE
	.addrsig_sym _ZTS13CRecordVectorIiE
	.addrsig_sym _ZTI13CRecordVectorIjE
	.addrsig_sym _ZTS13CRecordVectorIjE
	.addrsig_sym _ZTI13CObjectVectorI8CArcItemE
	.addrsig_sym _ZTS13CObjectVectorI8CArcItemE
