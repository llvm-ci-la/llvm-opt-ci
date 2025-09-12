	.file	"sysinfo.cc"
                                        # Start of file scope inline assembly
	.globl	_ZSt21ios_base_library_initv

                                        # End of file scope inline assembly
	.text
	.hidden	_ZN9benchmark7CPUInfo3GetEv     # -- Begin function _ZN9benchmark7CPUInfo3GetEv
	.globl	_ZN9benchmark7CPUInfo3GetEv
	.p2align	5
	.type	_ZN9benchmark7CPUInfo3GetEv,@function
_ZN9benchmark7CPUInfo3GetEv:            # @_ZN9benchmark7CPUInfo3GetEv
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
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark7CPUInfo3GetEvE4info)
	ld.b	$a0, $a0, %pc_lo12(_ZGVZN9benchmark7CPUInfo3GetEvE4info)
	dbar	20
	pcalau12i	$fp, %pc_hi20(_ZZN9benchmark7CPUInfo3GetEvE4info)
	beqz	$a0, .LBB0_2
.LBB0_1:
	ld.d	$a0, $fp, %pc_lo12(_ZZN9benchmark7CPUInfo3GetEvE4info)
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB0_2:
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark7CPUInfo3GetEvE4info)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN9benchmark7CPUInfo3GetEvE4info)
	pcaddu18i	$ra, %call36(__cxa_guard_acquire)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	beqz	$a0, .LBB0_1
# %bb.3:
.Ltmp0:                                 # EH_LABEL
	ori	$a0, $zero, 64
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.4:
.Ltmp3:                                 # EH_LABEL
	move	$s0, $a0
	pcaddu18i	$ra, %call36(_ZN9benchmark7CPUInfoC2Ev)
	jirl	$ra, $ra, 0
.Ltmp4:                                 # EH_LABEL
# %bb.5:
	st.d	$s0, $fp, %pc_lo12(_ZZN9benchmark7CPUInfo3GetEvE4info)
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark7CPUInfo3GetEvE4info)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN9benchmark7CPUInfo3GetEvE4info)
	pcaddu18i	$ra, %call36(__cxa_guard_release)
	jirl	$ra, $ra, 0
	b	.LBB0_1
.LBB0_6:
.Ltmp5:                                 # EH_LABEL
	move	$fp, $a0
	ori	$a1, $zero, 64
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB0_8
.LBB0_7:
.Ltmp2:                                 # EH_LABEL
	move	$fp, $a0
.LBB0_8:
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark7CPUInfo3GetEvE4info)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN9benchmark7CPUInfo3GetEvE4info)
	pcaddu18i	$ra, %call36(__cxa_guard_abort)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	_ZN9benchmark7CPUInfo3GetEv, .Lfunc_end0-_ZN9benchmark7CPUInfo3GetEv
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
	.uleb128 .Ltmp4-.Lfunc_begin0           # >> Call Site 4 <<
	.uleb128 .Lfunc_end0-.Ltmp4             #   Call between .Ltmp4 and .Lfunc_end0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _ZN9benchmark7CPUInfoC2Ev
.LCPI1_0:
	.dword	0x41cdcd6500000000              # double 1.0E+9
.LCPI1_2:
	.dword	0x412e848000000000              # double 1.0E+6
.LCPI1_3:
	.dword	0x408f400000000000              # double 1000
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI1_1:
	.dword	8                               # 0x8
	.dword	8318264430494707554             # 0x7370696d6f676f62
	.text
	.hidden	_ZN9benchmark7CPUInfoC2Ev
	.globl	_ZN9benchmark7CPUInfoC2Ev
	.p2align	5
	.type	_ZN9benchmark7CPUInfoC2Ev,@function
_ZN9benchmark7CPUInfoC2Ev:              # @_ZN9benchmark7CPUInfoC2Ev
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception1
# %bb.0:
	addi.d	$sp, $sp, -1648
	.cfi_def_cfa_offset 1648
	st.d	$ra, $sp, 1640                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1632                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1624                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1616                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1608                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1600                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1592                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1584                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1576                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1568                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1560                  # 8-byte Folded Spill
	fst.d	$fs0, $sp, 1552                 # 8-byte Folded Spill
	fst.d	$fs1, $sp, 1544                 # 8-byte Folded Spill
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
	move	$s8, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a1, $a0, %pc_lo12(.L.str.1)
	addi.d	$a0, $sp, 952
	ori	$a2, $zero, 8
	addi.d	$s2, $sp, 952
	pcaddu18i	$ra, %call36(_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1072
	pcaddu18i	$ra, %call36(_ZNKSt12__basic_fileIcE7is_openEv)
	jirl	$ra, $ra, 0
	addi.d	$s4, $sp, 384
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	beqz	$a0, .LBB1_44
# %bb.1:                                # %._crit_edge.i.i.i.i
	st.d	$s4, $sp, 368
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	ld.d	$a1, $a0, 0
	ld.b	$a0, $a0, 8
	move	$fp, $zero
	st.d	$a1, $sp, 384
	st.b	$a0, $sp, 392
	ori	$a0, $zero, 9
	st.d	$a0, $sp, 376
	st.b	$zero, $sp, 393
	addi.d	$s3, $sp, 160
	st.d	$s3, $sp, 144
	st.d	$zero, $sp, 152
	st.b	$zero, $sp, 160
	addi.d	$s8, $sp, 1520
	addi.w	$s7, $zero, -1
	addi.d	$s4, $sp, 1488
	ori	$a0, $zero, 0
	lu32i.d	$a0, -1
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	move	$s6, $s7
	.p2align	4, , 16
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 952
	ld.d	$a0, $a0, -24
	add.d	$a0, $s2, $a0
	ld.d	$s0, $a0, 240
	beqz	$s0, .LBB1_333
# %bb.3:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	ld.bu	$a0, $s0, 56
	beqz	$a0, .LBB1_5
# %bb.4:                                #   in Loop: Header=BB1_2 Depth=1
	ld.bu	$a0, $s0, 67
	b	.LBB1_7
	.p2align	4, , 16
.LBB1_5:                                #   in Loop: Header=BB1_2 Depth=1
.Ltmp9:                                 # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp10:                                # EH_LABEL
# %bb.6:                                # %.noexc22.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	ld.d	$a0, $s0, 0
	ld.d	$a2, $a0, 48
.Ltmp11:                                # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s0
	jirl	$ra, $a2, 0
.Ltmp12:                                # EH_LABEL
.LBB1_7:                                # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
.Ltmp13:                                # EH_LABEL
	ext.w.b	$a2, $a0
	addi.d	$a0, $sp, 952
	addi.d	$a1, $sp, 144
	pcaddu18i	$ra, %call36(_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_)
	jirl	$ra, $ra, 0
.Ltmp14:                                # EH_LABEL
# %bb.8:                                #   in Loop: Header=BB1_2 Depth=1
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a0, $a0, $a1
	ld.bu	$a0, $a0, 32
	andi	$a0, $a0, 5
	bnez	$a0, .LBB1_46
# %bb.9:                                #   in Loop: Header=BB1_2 Depth=1
	ld.d	$a0, $sp, 152
	beqz	$a0, .LBB1_2
# %bb.10:                               #   in Loop: Header=BB1_2 Depth=1
	addi.d	$a0, $sp, 144
	ori	$a1, $zero, 58
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm)
	jirl	$ra, $ra, 0
	st.d	$s8, $sp, 1504
	st.d	$zero, $sp, 1512
	st.b	$zero, $sp, 1520
	beq	$a0, $s7, .LBB1_27
# %bb.11:                               #   in Loop: Header=BB1_2 Depth=1
	ld.d	$a3, $sp, 152
	addi.d	$s0, $a0, 1
	bgeu	$a0, $a3, .LBB1_353
# %bb.12:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	ld.d	$s5, $sp, 144
	move	$a0, $s4
	st.d	$s4, $sp, 1472
	sub.d	$s1, $a3, $s0
	st.d	$s1, $sp, 920
	ori	$a1, $zero, 16
	bltu	$s1, $a1, .LBB1_15
# %bb.13:                               # %.noexc10.i.i.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
.Ltmp193:                               # EH_LABEL
	addi.d	$a0, $sp, 1472
	addi.d	$a1, $sp, 920
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp194:                               # EH_LABEL
# %bb.14:                               # %.noexc26.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	ld.d	$a1, $sp, 920
	st.d	$a0, $sp, 1472
	st.d	$a1, $sp, 1488
.LBB1_15:                               # %._crit_edge.i.i.i.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	beqz	$s1, .LBB1_19
# %bb.16:                               # %._crit_edge.i.i.i.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	add.d	$a1, $s5, $s0
	ori	$a2, $zero, 1
	bne	$s1, $a2, .LBB1_18
# %bb.17:                               #   in Loop: Header=BB1_2 Depth=1
	ld.b	$a1, $a1, 0
	st.b	$a1, $a0, 0
	b	.LBB1_19
.LBB1_18:                               #   in Loop: Header=BB1_2 Depth=1
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB1_19:                               #   in Loop: Header=BB1_2 Depth=1
	ld.d	$a0, $sp, 920
	ld.d	$a1, $sp, 1472
	st.d	$a0, $sp, 1480
	stx.b	$zero, $a1, $a0
	ld.d	$a0, $sp, 1504
	beq	$a0, $s8, .LBB1_23
# %bb.20:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	ld.d	$a1, $sp, 1472
	beq	$a1, $s4, .LBB1_39
# %bb.21:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	vld	$vr0, $sp, 1480
	ld.d	$a2, $sp, 1520
	st.d	$a1, $sp, 1504
	vst	$vr0, $sp, 1512
	beqz	$a0, .LBB1_25
# %bb.22:                               #   in Loop: Header=BB1_2 Depth=1
	st.d	$a0, $sp, 1472
	st.d	$a2, $sp, 1488
	st.d	$zero, $sp, 1480
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 1472
	bne	$a0, $s4, .LBB1_26
	b	.LBB1_27
.LBB1_23:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	ld.d	$a1, $sp, 1472
	beq	$a1, $s4, .LBB1_39
# %bb.24:                               # %.thread.i.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	vld	$vr0, $sp, 1480
	st.d	$a1, $sp, 1504
	vst	$vr0, $sp, 1512
.LBB1_25:                               #   in Loop: Header=BB1_2 Depth=1
	st.d	$s4, $sp, 1472
	move	$a0, $s4
	st.d	$zero, $sp, 1480
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 1472
	beq	$a0, $s4, .LBB1_27
.LBB1_26:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	ld.d	$a1, $sp, 1488
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_27:                               #   in Loop: Header=BB1_2 Depth=1
	ld.d	$a0, $sp, 152
	ld.d	$a2, $sp, 376
	bltu	$a0, $a2, .LBB1_37
# %bb.28:                               #   in Loop: Header=BB1_2 Depth=1
	beqz	$a2, .LBB1_30
# %bb.29:                               # %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	ld.d	$a1, $sp, 368
	ld.d	$a0, $sp, 144
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_37
.LBB1_30:                               #   in Loop: Header=BB1_2 Depth=1
	ld.d	$a0, $sp, 1512
	addi.w	$fp, $fp, 1
	beqz	$a0, .LBB1_37
# %bb.31:                               #   in Loop: Header=BB1_2 Depth=1
	ld.d	$s1, $sp, 1504
	pcaddu18i	$ra, %call36(__errno_location)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ld.w	$s5, $a0, 0
	st.w	$zero, $a0, 0
	addi.d	$a1, $sp, 1472
	ori	$a2, $zero, 10
	move	$a0, $s1
	pcaddu18i	$ra, %call36(__isoc23_strtol)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 1472
	beq	$a1, $s1, .LBB1_357
# %bb.32:                               #   in Loop: Header=BB1_2 Depth=1
	addu16i.d	$a1, $a0, -32768
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	bltu	$a1, $a2, .LBB1_359
# %bb.33:                               #   in Loop: Header=BB1_2 Depth=1
	ld.w	$a1, $s0, 0
	ori	$a2, $zero, 34
	beq	$a1, $a2, .LBB1_359
# %bb.34:                               #   in Loop: Header=BB1_2 Depth=1
	bnez	$a1, .LBB1_36
# %bb.35:                               #   in Loop: Header=BB1_2 Depth=1
	st.w	$s5, $s0, 0
.LBB1_36:                               #   in Loop: Header=BB1_2 Depth=1
	addi.w	$a0, $a0, 0
	slt	$a1, $a0, $s6
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s6, $a1
	or	$s6, $a1, $a0
.LBB1_37:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmRKS4_.exit.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	ld.d	$a0, $sp, 1504
	beq	$a0, $s8, .LBB1_2
# %bb.38:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	ld.d	$a1, $sp, 1520
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB1_2
.LBB1_39:                               #   in Loop: Header=BB1_2 Depth=1
	ld.d	$a2, $sp, 1480
	beqz	$a2, .LBB1_43
# %bb.40:                               #   in Loop: Header=BB1_2 Depth=1
	ori	$a3, $zero, 1
	bne	$a2, $a3, .LBB1_42
# %bb.41:                               #   in Loop: Header=BB1_2 Depth=1
	ld.b	$a1, $a1, 0
	st.b	$a1, $a0, 0
	b	.LBB1_43
.LBB1_42:                               #   in Loop: Header=BB1_2 Depth=1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB1_43:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i
                                        #   in Loop: Header=BB1_2 Depth=1
	ld.d	$a0, $sp, 1480
	ld.d	$a1, $sp, 1504
	st.d	$a0, $sp, 1512
	stx.b	$zero, $a1, $a0
	ld.d	$a0, $sp, 1472
	st.d	$zero, $sp, 1480
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 1472
	bne	$a0, $s4, .LBB1_26
	b	.LBB1_27
.LBB1_44:
.Ltmp6:                                 # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	ori	$a2, $zero, 29
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp7:                                 # EH_LABEL
# %bb.45:                               # %_ZN9benchmark12_GLOBAL__N_114GetNumCPUsImplEv.exit.thread.i
	addi.d	$a0, $sp, 952
	pcaddu18i	$ra, %call36(_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev)
	jirl	$ra, $ra, 0
	addi.d	$fp, $zero, -1
	b	.LBB1_66
.LBB1_46:
	ld.d	$a0, $sp, 952
	ld.d	$a0, $a0, -24
	addi.d	$a1, $sp, 952
	add.d	$a0, $a1, $a0
	ld.wu	$a0, $a0, 32
	andi	$a1, $a0, 1
	bnez	$a1, .LBB1_349
# %bb.47:
	andi	$a0, $a0, 2
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	beqz	$a0, .LBB1_351
# %bb.48:
	addi.d	$s0, $sp, 968
.Ltmp18:                                # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv)
	jirl	$ra, $ra, 0
.Ltmp19:                                # EH_LABEL
# %bb.49:                               # %.noexc36.i.i
	bnez	$a0, .LBB1_51
# %bb.50:
	ld.d	$a0, $sp, 952
	ld.d	$a0, $a0, -24
	addi.d	$a1, $sp, 952
	add.d	$a0, $a1, $a0
	ld.w	$a1, $a0, 32
	ori	$a1, $a1, 4
.Ltmp20:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate)
	jirl	$ra, $ra, 0
.Ltmp21:                                # EH_LABEL
.LBB1_51:                               # %_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv.exit.i.i
	addi.w	$a0, $s6, 1
	bne	$a0, $fp, .LBB1_310
# %bb.52:
	ld.d	$a0, $sp, 144
	addi.d	$s4, $sp, 384
	beq	$a0, $s3, .LBB1_54
.LBB1_53:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38.i.i
	ld.d	$a1, $sp, 160
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_54:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40.i.i
	ld.d	$a0, $sp, 368
	beq	$a0, $s4, .LBB1_56
# %bb.55:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41.i.i
	ld.d	$a1, $sp, 384
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_56:                               # %_ZN9benchmark12_GLOBAL__N_114GetNumCPUsImplEv.exit.i
	addi.d	$a0, $sp, 952
	pcaddu18i	$ra, %call36(_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev)
	jirl	$ra, $ra, 0
	blez	$fp, .LBB1_66
# %bb.57:
	st.w	$fp, $s8, 0
	st.d	$s0, $sp, 952
	st.d	$zero, $sp, 960
	st.b	$zero, $sp, 968
	st.w	$zero, $sp, 144
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$s1, $a0, %pc_lo12(.L.str.13)
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$s2, $a0, %pc_lo12(.L.str.14)
	ori	$s5, $zero, 11
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$s3, $a0, %pc_lo12(.L.str.15)
	b	.LBB1_59
	.p2align	4, , 16
.LBB1_58:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i
                                        #   in Loop: Header=BB1_59 Depth=1
	ld.w	$a0, $sp, 144
	addi.w	$a0, $a0, 1
	st.w	$a0, $sp, 144
	bge	$a0, $fp, .LBB1_172
.LBB1_59:                               # =>This Inner Loop Header: Depth=1
.Ltmp22:                                # EH_LABEL
	addi.d	$a0, $sp, 368
	addi.d	$a2, $sp, 144
	move	$a1, $s1
	move	$a3, $s2
	pcaddu18i	$ra, %call36(_ZN9benchmark6StrCatIJRA28_KcRiRA26_S1_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_)
	jirl	$ra, $ra, 0
.Ltmp23:                                # EH_LABEL
# %bb.60:                               #   in Loop: Header=BB1_59 Depth=1
.Ltmp25:                                # EH_LABEL
	addi.d	$a0, $sp, 368
	addi.d	$a1, $sp, 952
	pcaddu18i	$ra, %call36(_ZN9benchmark12_GLOBAL__N_112ReadFromFileINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKS7_PT_)
	jirl	$ra, $ra, 0
.Ltmp26:                                # EH_LABEL
# %bb.61:                               #   in Loop: Header=BB1_59 Depth=1
	beqz	$a0, .LBB1_64
# %bb.62:                               #   in Loop: Header=BB1_59 Depth=1
	ld.d	$a0, $sp, 960
	bne	$a0, $s5, .LBB1_67
# %bb.63:                               # %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i
                                        #   in Loop: Header=BB1_59 Depth=1
	ld.d	$a0, $sp, 952
	ori	$a2, $zero, 11
	move	$a1, $s3
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_67
.LBB1_64:                               # %.critedge.i
                                        #   in Loop: Header=BB1_59 Depth=1
	ld.d	$a0, $sp, 368
	beq	$a0, $s4, .LBB1_58
# %bb.65:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i
                                        #   in Loop: Header=BB1_59 Depth=1
	ld.d	$a1, $sp, 384
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB1_58
.LBB1_66:                               # %_ZN9benchmark12_GLOBAL__N_110GetNumCPUsEv.exit.thread
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	ori	$a2, $zero, 109
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	move	$s1, $zero
	st.w	$fp, $s8, 0
	b	.LBB1_71
.LBB1_67:                               # %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i
	ld.d	$a0, $sp, 368
	beq	$a0, $s4, .LBB1_69
# %bb.68:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i
	ld.d	$a1, $sp, 384
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_69:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i
	ori	$s1, $zero, 1
	ld.d	$a0, $sp, 952
	beq	$a0, $s0, .LBB1_71
.LBB1_70:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22.i
	ld.d	$a1, $sp, 968
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_71:                               # %_ZN9benchmark12_GLOBAL__N_110CpuScalingEi.exit
	st.w	$s1, $s8, 4
	st.d	$s4, $sp, 368
	ori	$a0, $zero, 41
	st.d	$a0, $sp, 952
.Ltmp28:                                # EH_LABEL
	addi.d	$a0, $sp, 368
	addi.d	$a1, $sp, 952
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp29:                                # EH_LABEL
# %bb.72:                               # %.noexc.i
	ld.d	$a1, $sp, 952
	st.d	$a0, $sp, 368
	st.d	$a1, $sp, 384
	pcalau12i	$a2, %pc_hi20(.L.str.16)
	addi.d	$a2, $a2, %pc_lo12(.L.str.16)
	vld	$vr0, $a2, 16
	vst	$vr0, $a0, 16
	vld	$vr0, $a2, 0
	ld.d	$a3, $a2, 32
	ld.b	$a2, $a2, 40
	vst	$vr0, $a0, 0
	st.d	$a3, $a0, 32
	st.b	$a2, $a0, 40
	st.d	$a1, $sp, 376
	stx.b	$zero, $a0, $a1
	ld.d	$a1, $sp, 368
	st.d	$zero, $sp, 920
.Ltmp31:                                # EH_LABEL
	addi.d	$a0, $sp, 952
	ori	$a2, $zero, 8
	pcaddu18i	$ra, %call36(_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode)
	jirl	$ra, $ra, 0
.Ltmp32:                                # EH_LABEL
# %bb.73:                               # %.noexc122.i
	addi.d	$s5, $sp, 160
	addi.d	$a0, $sp, 1072
	pcaddu18i	$ra, %call36(_ZNKSt12__basic_fileIcE7is_openEv)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_77
# %bb.74:
.Ltmp34:                                # EH_LABEL
	addi.d	$a0, $sp, 952
	addi.d	$a1, $sp, 920
	addi.d	$fp, $sp, 952
	pcaddu18i	$ra, %call36(_ZNSi10_M_extractIlEERSiRT_)
	jirl	$ra, $ra, 0
.Ltmp35:                                # EH_LABEL
# %bb.75:
	ld.d	$a0, $sp, 952
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.w	$fp, $a0, 32
	addi.d	$a0, $sp, 952
	pcaddu18i	$ra, %call36(_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB1_171
# %bb.76:
	ori	$a0, $zero, 2
	beq	$s1, $a0, .LBB1_78
	b	.LBB1_85
.LBB1_77:                               # %.thread.i
	addi.d	$a0, $sp, 952
	pcaddu18i	$ra, %call36(_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	bne	$s1, $a0, .LBB1_85
.LBB1_78:                               # %.noexc.i124.i
	addi.d	$a0, $sp, 128
	st.d	$a0, $sp, 112
	ori	$a0, $zero, 53
	st.d	$a0, $sp, 952
.Ltmp37:                                # EH_LABEL
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 952
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp38:                                # EH_LABEL
# %bb.79:                               # %.noexc125.i
	ld.d	$a1, $sp, 952
	st.d	$a0, $sp, 112
	st.d	$a1, $sp, 128
	pcalau12i	$a2, %pc_hi20(.L.str.17)
	addi.d	$a2, $a2, %pc_lo12(.L.str.17)
	vld	$vr0, $a2, 16
	vst	$vr0, $a0, 16
	vld	$vr0, $a2, 0
	vst	$vr0, $a0, 0
	vld	$vr0, $a2, 32
	ld.d	$a2, $a2, 45
	vst	$vr0, $a0, 32
	st.d	$a2, $a0, 45
	st.d	$a1, $sp, 120
	stx.b	$zero, $a0, $a1
	ld.d	$a1, $sp, 112
	st.d	$zero, $sp, 920
.Ltmp40:                                # EH_LABEL
	addi.d	$a0, $sp, 952
	ori	$a2, $zero, 8
	pcaddu18i	$ra, %call36(_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode)
	jirl	$ra, $ra, 0
.Ltmp41:                                # EH_LABEL
# %bb.80:                               # %.noexc129.i
	addi.d	$a0, $sp, 1072
	pcaddu18i	$ra, %call36(_ZNKSt12__basic_fileIcE7is_openEv)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_84
# %bb.81:
.Ltmp43:                                # EH_LABEL
	addi.d	$a0, $sp, 952
	addi.d	$a1, $sp, 920
	addi.d	$fp, $sp, 952
	pcaddu18i	$ra, %call36(_ZNSi10_M_extractIlEERSiRT_)
	jirl	$ra, $ra, 0
.Ltmp44:                                # EH_LABEL
# %bb.82:
	ld.d	$a0, $sp, 952
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.w	$fp, $a0, 32
	addi.d	$a0, $sp, 952
	pcaddu18i	$ra, %call36(_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev)
	jirl	$ra, $ra, 0
	bnez	$fp, .LBB1_85
# %bb.83:
	ori	$fp, $zero, 1
	b	.LBB1_93
.LBB1_84:                               # %.thread239.i
	addi.d	$a0, $sp, 952
	pcaddu18i	$ra, %call36(_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev)
	jirl	$ra, $ra, 0
.LBB1_85:                               # %.noexc.i134.i
	st.d	$s5, $sp, 144
	ori	$a0, $zero, 53
	st.d	$a0, $sp, 952
.Ltmp46:                                # EH_LABEL
	addi.d	$a0, $sp, 144
	addi.d	$a1, $sp, 952
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp47:                                # EH_LABEL
# %bb.86:                               # %.noexc135.i
	ld.d	$a1, $sp, 952
	st.d	$a0, $sp, 144
	st.d	$a1, $sp, 160
	pcalau12i	$a2, %pc_hi20(.L.str.18)
	addi.d	$a2, $a2, %pc_lo12(.L.str.18)
	vld	$vr0, $a2, 16
	vst	$vr0, $a0, 16
	vld	$vr0, $a2, 0
	vst	$vr0, $a0, 0
	vld	$vr0, $a2, 32
	ld.d	$a2, $a2, 45
	vst	$vr0, $a0, 32
	st.d	$a2, $a0, 45
	st.d	$a1, $sp, 152
	stx.b	$zero, $a0, $a1
	ld.d	$a1, $sp, 144
	st.d	$zero, $sp, 920
.Ltmp49:                                # EH_LABEL
	addi.d	$a0, $sp, 952
	ori	$a2, $zero, 8
	pcaddu18i	$ra, %call36(_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode)
	jirl	$ra, $ra, 0
.Ltmp50:                                # EH_LABEL
# %bb.87:                               # %.noexc139.i
	addi.d	$a0, $sp, 1072
	pcaddu18i	$ra, %call36(_ZNKSt12__basic_fileIcE7is_openEv)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_90
# %bb.88:
.Ltmp52:                                # EH_LABEL
	addi.d	$a0, $sp, 952
	addi.d	$a1, $sp, 920
	addi.d	$fp, $sp, 952
	pcaddu18i	$ra, %call36(_ZNSi10_M_extractIlEERSiRT_)
	jirl	$ra, $ra, 0
.Ltmp53:                                # EH_LABEL
# %bb.89:                               # %_ZNSirsERl.exit.i138.i
	ld.d	$a0, $sp, 952
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.w	$a0, $a0, 32
	sltui	$fp, $a0, 1
	addi.d	$a0, $sp, 952
	pcaddu18i	$ra, %call36(_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 144
	bne	$a0, $s5, .LBB1_91
	b	.LBB1_92
.LBB1_90:
	move	$fp, $zero
	addi.d	$a0, $sp, 952
	pcaddu18i	$ra, %call36(_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 144
	beq	$a0, $s5, .LBB1_92
.LBB1_91:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6
	ld.d	$a1, $sp, 160
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_92:                               # %.critedge104.i
	ori	$a0, $zero, 2
	bne	$s1, $a0, .LBB1_95
.LBB1_93:                               # %.critedge106.i
	ld.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	beq	$a0, $a1, .LBB1_95
# %bb.94:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143.i
	ld.d	$a1, $sp, 128
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_95:                               # %.critedge108.i
	ld.d	$a0, $sp, 368
	beq	$a0, $s4, .LBB1_97
.LBB1_96:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146.i
	ld.d	$a1, $sp, 384
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_97:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148.i
	addi.d	$s3, $sp, 1520
	beqz	$fp, .LBB1_99
# %bb.98:
	ld.d	$a0, $sp, 920
	pcalau12i	$a1, %pc_hi20(.LCPI1_3)
	fld.d	$fa0, $a1, %pc_lo12(.LCPI1_3)
	movgr2fr.d	$fa1, $a0
	ffint.d.l	$fa1, $fa1
	fmul.d	$fa0, $fa1, $fa0
	b	.LBB1_180
.LBB1_99:
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a1, $a0, %pc_lo12(.L.str.1)
	addi.d	$a0, $sp, 952
	ori	$a2, $zero, 8
	addi.d	$fp, $sp, 952
	pcaddu18i	$ra, %call36(_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1072
	pcaddu18i	$ra, %call36(_ZNKSt12__basic_fileIcE7is_openEv)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_166
# %bb.100:
	st.d	$s3, $sp, 1504
	st.d	$zero, $sp, 1512
	st.b	$zero, $sp, 1520
	vldi	$vr0, -784
	vst	$vr0, $sp, 64                   # 16-byte Folded Spill
	addi.w	$s6, $zero, -1
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$s8, $a0, %pc_lo12(.L.str.20)
	ori	$s7, $zero, 6
	pcalau12i	$a0, %pc_hi20(.LCPI1_2)
	fld.d	$fs1, $a0, %pc_lo12(.LCPI1_2)
	movgr2fr.d	$fs0, $zero
	pcalau12i	$a0, %pc_hi20(.LCPI1_1)
	vld	$vr0, $a0, %pc_lo12(.LCPI1_1)
	vst	$vr0, $sp, 80                   # 16-byte Folded Spill
                                        # implicit-def: $f0_64
	vst	$vr0, $sp, 96                   # 16-byte Folded Spill
	.p2align	4, , 16
.LBB1_101:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 952
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.d	$s0, $a0, 240
	beqz	$s0, .LBB1_343
# %bb.102:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i
                                        #   in Loop: Header=BB1_101 Depth=1
	ld.bu	$a0, $s0, 56
	beqz	$a0, .LBB1_104
# %bb.103:                              #   in Loop: Header=BB1_101 Depth=1
	ld.bu	$a0, $s0, 67
	b	.LBB1_106
	.p2align	4, , 16
.LBB1_104:                              #   in Loop: Header=BB1_101 Depth=1
.Ltmp58:                                # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp59:                                # EH_LABEL
# %bb.105:                              # %.noexc160.i
                                        #   in Loop: Header=BB1_101 Depth=1
	ld.d	$a0, $s0, 0
	ld.d	$a2, $a0, 48
.Ltmp60:                                # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s0
	jirl	$ra, $a2, 0
.Ltmp61:                                # EH_LABEL
.LBB1_106:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i
                                        #   in Loop: Header=BB1_101 Depth=1
.Ltmp62:                                # EH_LABEL
	ext.w.b	$a2, $a0
	addi.d	$a0, $sp, 952
	addi.d	$a1, $sp, 1504
	pcaddu18i	$ra, %call36(_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_)
	jirl	$ra, $ra, 0
.Ltmp63:                                # EH_LABEL
# %bb.107:                              #   in Loop: Header=BB1_101 Depth=1
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	add.d	$a0, $a0, $a1
	ld.bu	$a0, $a0, 32
	andi	$a0, $a0, 5
	bnez	$a0, .LBB1_168
# %bb.108:                              #   in Loop: Header=BB1_101 Depth=1
	ld.d	$a0, $sp, 1512
	beqz	$a0, .LBB1_101
# %bb.109:                              #   in Loop: Header=BB1_101 Depth=1
	addi.d	$a0, $sp, 1504
	ori	$a1, $zero, 58
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm)
	jirl	$ra, $ra, 0
	st.d	$s4, $sp, 368
	st.d	$zero, $sp, 376
	st.b	$zero, $sp, 384
	beq	$a0, $s6, .LBB1_126
# %bb.110:                              #   in Loop: Header=BB1_101 Depth=1
	ld.d	$a3, $sp, 1512
	addi.d	$s0, $a0, 1
	bgeu	$a0, $a3, .LBB1_355
# %bb.111:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i
                                        #   in Loop: Header=BB1_101 Depth=1
	ld.d	$s2, $sp, 1504
	st.d	$s5, $sp, 144
	sub.d	$s1, $a3, $s0
	st.d	$s1, $sp, 1472
	move	$a0, $s5
	ori	$a1, $zero, 16
	bltu	$s1, $a1, .LBB1_114
# %bb.112:                              # %.noexc10.i.i.i
                                        #   in Loop: Header=BB1_101 Depth=1
.Ltmp90:                                # EH_LABEL
	addi.d	$a0, $sp, 144
	addi.d	$a1, $sp, 1472
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp91:                                # EH_LABEL
# %bb.113:                              # %.noexc164.i
                                        #   in Loop: Header=BB1_101 Depth=1
	ld.d	$a1, $sp, 1472
	st.d	$a0, $sp, 144
	st.d	$a1, $sp, 160
.LBB1_114:                              # %._crit_edge.i.i.i.i16
                                        #   in Loop: Header=BB1_101 Depth=1
	beqz	$s1, .LBB1_118
# %bb.115:                              # %._crit_edge.i.i.i.i16
                                        #   in Loop: Header=BB1_101 Depth=1
	add.d	$a1, $s2, $s0
	ori	$a2, $zero, 1
	bne	$s1, $a2, .LBB1_117
# %bb.116:                              #   in Loop: Header=BB1_101 Depth=1
	ld.b	$a1, $a1, 0
	st.b	$a1, $a0, 0
	b	.LBB1_118
.LBB1_117:                              #   in Loop: Header=BB1_101 Depth=1
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB1_118:                              #   in Loop: Header=BB1_101 Depth=1
	ld.d	$a0, $sp, 1472
	ld.d	$a1, $sp, 144
	st.d	$a0, $sp, 152
	stx.b	$zero, $a1, $a0
	ld.d	$a0, $sp, 368
	beq	$a0, $s4, .LBB1_122
# %bb.119:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
                                        #   in Loop: Header=BB1_101 Depth=1
	ld.d	$a1, $sp, 144
	beq	$a1, $s5, .LBB1_155
# %bb.120:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
                                        #   in Loop: Header=BB1_101 Depth=1
	vld	$vr0, $sp, 152
	ld.d	$a2, $sp, 384
	st.d	$a1, $sp, 368
	vst	$vr0, $sp, 376
	beqz	$a0, .LBB1_124
# %bb.121:                              #   in Loop: Header=BB1_101 Depth=1
	st.d	$a0, $sp, 144
	st.d	$a2, $sp, 160
	st.d	$zero, $sp, 152
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 144
	bne	$a0, $s5, .LBB1_125
	b	.LBB1_126
.LBB1_122:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
                                        #   in Loop: Header=BB1_101 Depth=1
	ld.d	$a1, $sp, 144
	beq	$a1, $s5, .LBB1_155
# %bb.123:                              # %.thread.i.i
                                        #   in Loop: Header=BB1_101 Depth=1
	vld	$vr0, $sp, 152
	st.d	$a1, $sp, 368
	vst	$vr0, $sp, 376
.LBB1_124:                              #   in Loop: Header=BB1_101 Depth=1
	st.d	$s5, $sp, 144
	move	$a0, $s5
	st.d	$zero, $sp, 152
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 144
	beq	$a0, $s5, .LBB1_126
.LBB1_125:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166.i
                                        #   in Loop: Header=BB1_101 Depth=1
	ld.d	$a1, $sp, 160
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_126:                              # %._crit_edge.i.i169.i
                                        #   in Loop: Header=BB1_101 Depth=1
	ld.w	$a0, $s8, 0
	ld.w	$a1, $s8, 3
	addi.d	$a2, $sp, 160
	st.d	$a2, $sp, 144
	ld.d	$s2, $sp, 1512
	st.w	$a0, $a2, 0
	st.w	$a1, $a2, 3
	ori	$a0, $zero, 7
	st.d	$a0, $sp, 152
	st.b	$zero, $sp, 167
	bgeu	$s7, $s2, .LBB1_151
# %bb.127:                              # %.lr.ph.i.i.preheader.i
                                        #   in Loop: Header=BB1_101 Depth=1
	ld.d	$s7, $sp, 1504
	ld.b	$s0, $s7, 0
	ori	$a0, $zero, 99
	pcaddu18i	$ra, %call36(tolower)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(tolower)
	jirl	$ra, $ra, 0
	bne	$s1, $a0, .LBB1_138
# %bb.128:                              # %.lr.ph.i.i.1.i
                                        #   in Loop: Header=BB1_101 Depth=1
	ld.b	$s0, $s7, 1
	ori	$a0, $zero, 112
	pcaddu18i	$ra, %call36(tolower)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(tolower)
	jirl	$ra, $ra, 0
	bne	$s1, $a0, .LBB1_138
# %bb.129:                              # %.lr.ph.i.i.2.i
                                        #   in Loop: Header=BB1_101 Depth=1
	ld.b	$s0, $s7, 2
	ori	$a0, $zero, 117
	pcaddu18i	$ra, %call36(tolower)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(tolower)
	jirl	$ra, $ra, 0
	bne	$s1, $a0, .LBB1_138
# %bb.130:                              # %.lr.ph.i.i.3.i
                                        #   in Loop: Header=BB1_101 Depth=1
	ld.b	$s0, $s7, 3
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(tolower)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(tolower)
	jirl	$ra, $ra, 0
	bne	$s1, $a0, .LBB1_138
# %bb.131:                              # %.lr.ph.i.i.4.i
                                        #   in Loop: Header=BB1_101 Depth=1
	ld.b	$s0, $s7, 4
	ori	$a0, $zero, 77
	pcaddu18i	$ra, %call36(tolower)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(tolower)
	jirl	$ra, $ra, 0
	bne	$s1, $a0, .LBB1_138
# %bb.132:                              # %.lr.ph.i.i.5.i
                                        #   in Loop: Header=BB1_101 Depth=1
	ld.b	$s0, $s7, 5
	ori	$a0, $zero, 72
	pcaddu18i	$ra, %call36(tolower)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(tolower)
	jirl	$ra, $ra, 0
	bne	$s1, $a0, .LBB1_138
# %bb.133:                              # %.lr.ph.i.i.6.i
                                        #   in Loop: Header=BB1_101 Depth=1
	ld.b	$s0, $s7, 6
	ori	$a0, $zero, 122
	pcaddu18i	$ra, %call36(tolower)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(tolower)
	jirl	$ra, $ra, 0
	bne	$s1, $a0, .LBB1_138
# %bb.134:                              #   in Loop: Header=BB1_101 Depth=1
	ld.d	$a0, $sp, 376
	ori	$s2, $zero, 1
	beqz	$a0, .LBB1_152
# %bb.135:                              #   in Loop: Header=BB1_101 Depth=1
	ld.d	$s1, $sp, 368
	pcaddu18i	$ra, %call36(__errno_location)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ld.w	$s7, $a0, 0
	st.w	$zero, $a0, 0
	addi.d	$a1, $sp, 144
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strtod)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 144
	beq	$a0, $s1, .LBB1_365
# %bb.136:                              #   in Loop: Header=BB1_101 Depth=1
	ld.w	$a0, $s0, 0
	beqz	$a0, .LBB1_160
# %bb.137:                              #   in Loop: Header=BB1_101 Depth=1
	ori	$a1, $zero, 34
	bne	$a0, $a1, .LBB1_161
	b	.LBB1_367
.LBB1_138:                              # %._crit_edge.i.i182.i
                                        #   in Loop: Header=BB1_101 Depth=1
	addi.d	$a0, $sp, 160
	st.d	$a0, $sp, 144
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	vst	$vr0, $sp, 152
	st.b	$zero, $sp, 168
	ori	$a0, $zero, 7
	beq	$s2, $a0, .LBB1_151
# %bb.139:                              # %.lr.ph.i.i187.preheader.i
                                        #   in Loop: Header=BB1_101 Depth=1
	ld.b	$s0, $s7, 0
	ori	$a0, $zero, 98
	pcaddu18i	$ra, %call36(tolower)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(tolower)
	jirl	$ra, $ra, 0
	bne	$s1, $a0, .LBB1_151
# %bb.140:                              # %.lr.ph.i.i187.1.i
                                        #   in Loop: Header=BB1_101 Depth=1
	ld.b	$s1, $s7, 1
	ori	$a0, $zero, 111
	pcaddu18i	$ra, %call36(tolower)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(tolower)
	jirl	$ra, $ra, 0
	bne	$s0, $a0, .LBB1_151
# %bb.141:                              # %.lr.ph.i.i187.2.i
                                        #   in Loop: Header=BB1_101 Depth=1
	ld.b	$s1, $s7, 2
	ori	$a0, $zero, 103
	pcaddu18i	$ra, %call36(tolower)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(tolower)
	jirl	$ra, $ra, 0
	bne	$s2, $a0, .LBB1_151
# %bb.142:                              # %.lr.ph.i.i187.3.i
                                        #   in Loop: Header=BB1_101 Depth=1
	ld.b	$a0, $s7, 3
	pcaddu18i	$ra, %call36(tolower)
	jirl	$ra, $ra, 0
	bne	$s0, $a0, .LBB1_151
# %bb.143:                              # %.lr.ph.i.i187.4.i
                                        #   in Loop: Header=BB1_101 Depth=1
	ld.b	$s0, $s7, 4
	ori	$a0, $zero, 109
	pcaddu18i	$ra, %call36(tolower)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(tolower)
	jirl	$ra, $ra, 0
	bne	$s1, $a0, .LBB1_151
# %bb.144:                              # %.lr.ph.i.i187.5.i
                                        #   in Loop: Header=BB1_101 Depth=1
	ld.b	$s0, $s7, 5
	ori	$a0, $zero, 105
	pcaddu18i	$ra, %call36(tolower)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(tolower)
	jirl	$ra, $ra, 0
	bne	$s1, $a0, .LBB1_151
# %bb.145:                              # %.lr.ph.i.i187.6.i
                                        #   in Loop: Header=BB1_101 Depth=1
	ld.b	$s0, $s7, 6
	ori	$a0, $zero, 112
	pcaddu18i	$ra, %call36(tolower)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(tolower)
	jirl	$ra, $ra, 0
	bne	$s1, $a0, .LBB1_151
# %bb.146:                              # %.lr.ph.i.i187.7.i
                                        #   in Loop: Header=BB1_101 Depth=1
	ld.b	$s0, $s7, 7
	ori	$a0, $zero, 115
	pcaddu18i	$ra, %call36(tolower)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(tolower)
	jirl	$ra, $ra, 0
	bne	$s1, $a0, .LBB1_151
# %bb.147:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195.i
                                        #   in Loop: Header=BB1_101 Depth=1
	ld.d	$a0, $sp, 376
	ori	$s2, $zero, 1
	beqz	$a0, .LBB1_152
# %bb.148:                              #   in Loop: Header=BB1_101 Depth=1
	ld.d	$s1, $sp, 368
	pcaddu18i	$ra, %call36(__errno_location)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ld.w	$s7, $a0, 0
	st.w	$zero, $a0, 0
	addi.d	$a1, $sp, 144
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strtod)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 144
	beq	$a0, $s1, .LBB1_369
# %bb.149:                              #   in Loop: Header=BB1_101 Depth=1
	ld.w	$a0, $s0, 0
	beqz	$a0, .LBB1_163
# %bb.150:                              #   in Loop: Header=BB1_101 Depth=1
	ori	$a1, $zero, 34
	bne	$a0, $a1, .LBB1_164
	b	.LBB1_371
.LBB1_151:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195.thread.i
                                        #   in Loop: Header=BB1_101 Depth=1
	ori	$s2, $zero, 1
.LBB1_152:                              #   in Loop: Header=BB1_101 Depth=1
	ori	$s7, $zero, 6
	ld.d	$a0, $sp, 368
	beq	$a0, $s4, .LBB1_154
# %bb.153:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204.i
                                        #   in Loop: Header=BB1_101 Depth=1
	ld.d	$a1, $sp, 384
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_154:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206.i
                                        #   in Loop: Header=BB1_101 Depth=1
	bnez	$s2, .LBB1_101
	b	.LBB1_177
.LBB1_155:                              #   in Loop: Header=BB1_101 Depth=1
	ld.d	$a2, $sp, 152
	beqz	$a2, .LBB1_159
# %bb.156:                              #   in Loop: Header=BB1_101 Depth=1
	ori	$a3, $zero, 1
	bne	$a2, $a3, .LBB1_158
# %bb.157:                              #   in Loop: Header=BB1_101 Depth=1
	ld.b	$a1, $a1, 0
	st.b	$a1, $a0, 0
	b	.LBB1_159
.LBB1_158:                              #   in Loop: Header=BB1_101 Depth=1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB1_159:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
                                        #   in Loop: Header=BB1_101 Depth=1
	ld.d	$a0, $sp, 152
	ld.d	$a1, $sp, 368
	st.d	$a0, $sp, 376
	stx.b	$zero, $a1, $a0
	ld.d	$a0, $sp, 144
	st.d	$zero, $sp, 152
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 144
	bne	$a0, $s5, .LBB1_125
	b	.LBB1_126
.LBB1_160:                              #   in Loop: Header=BB1_101 Depth=1
	st.w	$s7, $s0, 0
.LBB1_161:                              #   in Loop: Header=BB1_101 Depth=1
	fmul.d	$fa0, $fa0, $fs1
	fcmp.cule.d	$fcc0, $fa0, $fs0
	bcnez	$fcc0, .LBB1_152
# %bb.162:                              #   in Loop: Header=BB1_101 Depth=1
	move	$s2, $zero
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 96                   # 16-byte Folded Spill
	b	.LBB1_152
.LBB1_163:                              #   in Loop: Header=BB1_101 Depth=1
	st.w	$s7, $s0, 0
.LBB1_164:                              #   in Loop: Header=BB1_101 Depth=1
	fmul.d	$fa0, $fa0, $fs1
	vst	$vr0, $sp, 64                   # 16-byte Folded Spill
	fcmp.cule.d	$fcc0, $fs0, $fa0
	bcnez	$fcc0, .LBB1_152
# %bb.165:                              #   in Loop: Header=BB1_101 Depth=1
	vldi	$vr0, -784
	vst	$vr0, $sp, 64                   # 16-byte Folded Spill
	b	.LBB1_152
.LBB1_166:
.Ltmp55:                                # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.19)
	addi.d	$a1, $a1, %pc_lo12(.L.str.19)
	ori	$a2, $zero, 29
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp56:                                # EH_LABEL
# %bb.167:
	vldi	$vr0, -784
	vst	$vr0, $sp, 96                   # 16-byte Folded Spill
	b	.LBB1_179
.LBB1_168:
	ld.d	$a0, $sp, 952
	ld.d	$a0, $a0, -24
	addi.d	$a1, $sp, 952
	add.d	$a0, $a1, $a0
	ld.wu	$a0, $a0, 32
	andi	$a1, $a0, 1
	bnez	$a1, .LBB1_173
# %bb.169:
	andi	$a0, $a0, 2
	bnez	$a0, .LBB1_300
# %bb.170:
	ori	$a2, $zero, 39
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a1, $a0, %pc_lo12(.L.str.23)
	b	.LBB1_174
.LBB1_171:
	ori	$fp, $zero, 1
	ld.d	$a0, $sp, 368
	bne	$a0, $s4, .LBB1_96
	b	.LBB1_97
.LBB1_172:
	ori	$s1, $zero, 2
	ld.d	$a0, $sp, 952
	bne	$a0, $s0, .LBB1_70
	b	.LBB1_71
.LBB1_173:
	ori	$a2, $zero, 30
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a1, $a0, %pc_lo12(.L.str.22)
.LBB1_174:                              # %.invoke.i
.Ltmp85:                                # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp86:                                # EH_LABEL
# %bb.175:
	vldi	$vr0, -784
.LBB1_176:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit211.i
	vst	$vr0, $sp, 96                   # 16-byte Folded Spill
.LBB1_177:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit211.i
	ld.d	$a0, $sp, 1504
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	beq	$a0, $s3, .LBB1_179
# %bb.178:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225.i
	ld.d	$a1, $sp, 1520
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_179:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
	addi.d	$a0, $sp, 952
	pcaddu18i	$ra, %call36(_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
.LBB1_180:                              # %_ZN9benchmark12_GLOBAL__N_121GetCPUCyclesPerSecondENS_7CPUInfo7ScalingE.exit
	fst.d	$fa0, $s8, 8
	addi.d	$a0, $s8, 16
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	st.d	$zero, $s8, 32
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	vst	$vr0, $s8, 16
	addi.d	$a0, $sp, 936
	st.d	$a0, $sp, 920
	ori	$a0, $zero, 35
	st.d	$a0, $sp, 952
.Ltmp106:                               # EH_LABEL
	addi.d	$a0, $sp, 920
	addi.d	$a1, $sp, 952
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp107:                               # EH_LABEL
# %bb.181:                              # %.noexc.i.i
	ld.d	$a1, $sp, 952
	addi.d	$s1, $sp, 968
	st.d	$a0, $sp, 920
	st.d	$a1, $sp, 936
	pcalau12i	$a2, %pc_hi20(.L.str.27)
	addi.d	$a2, $a2, %pc_lo12(.L.str.27)
	vld	$vr0, $a2, 16
	vst	$vr0, $a0, 16
	vld	$vr0, $a2, 0
	ld.w	$a2, $a2, 31
	vst	$vr0, $a0, 0
	st.w	$a2, $a0, 31
	st.d	$a1, $sp, 928
	stx.b	$zero, $a0, $a1
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a0, $a0, %pc_lo12(.L.str.29)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a0, $a0, %pc_lo12(.L.str.30)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	move	$fp, $zero
	ori	$s6, $zero, 1
	ori	$s7, $zero, 16
	b	.LBB1_183
	.p2align	4, , 16
.LBB1_182:                              # %_ZN9benchmark7CPUInfo9CacheInfoD2Ev.exit.i.i
                                        #   in Loop: Header=BB1_183 Depth=1
	addi.d	$fp, $fp, 1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	beqz	$a0, .LBB1_290
.LBB1_183:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_229 Depth 2
	addi.d	$a0, $sp, 160
	st.d	$a0, $sp, 144
	st.d	$zero, $sp, 152
	st.b	$zero, $sp, 160
	st.w	$fp, $sp, 952
.Ltmp109:                               # EH_LABEL
	addi.d	$a0, $sp, 888
	addi.d	$a1, $sp, 920
	addi.d	$a3, $sp, 952
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN9benchmark6StrCatIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA6_KciRA2_S8_EEES6_DpOT_)
	jirl	$ra, $ra, 0
.Ltmp110:                               # EH_LABEL
# %bb.184:                              #   in Loop: Header=BB1_183 Depth=1
.Ltmp112:                               # EH_LABEL
	addi.d	$a0, $sp, 952
	addi.d	$a1, $sp, 888
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN9benchmark6StrCatIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA5_KcEEES6_DpOT_)
	jirl	$ra, $ra, 0
.Ltmp113:                               # EH_LABEL
# %bb.185:                              #   in Loop: Header=BB1_183 Depth=1
	ld.d	$a1, $sp, 952
.Ltmp115:                               # EH_LABEL
	addi.d	$a0, $sp, 368
	ori	$a2, $zero, 8
	pcaddu18i	$ra, %call36(_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode)
	jirl	$ra, $ra, 0
.Ltmp116:                               # EH_LABEL
# %bb.186:                              #   in Loop: Header=BB1_183 Depth=1
	ld.d	$a0, $sp, 952
	beq	$a0, $s1, .LBB1_188
# %bb.187:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i22
                                        #   in Loop: Header=BB1_183 Depth=1
	ld.d	$a1, $sp, 968
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_188:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i23
                                        #   in Loop: Header=BB1_183 Depth=1
	addi.d	$a0, $sp, 488
	pcaddu18i	$ra, %call36(_ZNKSt12__basic_fileIcE7is_openEv)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	beqz	$a0, .LBB1_284
# %bb.189:                              #   in Loop: Header=BB1_183 Depth=1
	addi.d	$a0, $sp, 352
	st.d	$a0, $sp, 336
	st.d	$zero, $sp, 344
	st.b	$zero, $sp, 352
.Ltmp118:                               # EH_LABEL
	addi.d	$a0, $sp, 368
	addi.d	$a1, $sp, 180
	pcaddu18i	$ra, %call36(_ZNSirsERi)
	jirl	$ra, $ra, 0
.Ltmp119:                               # EH_LABEL
# %bb.190:                              #   in Loop: Header=BB1_183 Depth=1
	ld.d	$a0, $sp, 368
	ld.d	$a0, $a0, -24
	addi.d	$a1, $sp, 368
	add.d	$a0, $a1, $a0
	ld.wu	$a0, $a0, 32
	andi	$a1, $a0, 5
	bnez	$a1, .LBB1_337
# %bb.191:                              #   in Loop: Header=BB1_183 Depth=1
	bnez	$a0, .LBB1_200
# %bb.192:                              #   in Loop: Header=BB1_183 Depth=1
.Ltmp122:                               # EH_LABEL
	addi.d	$a0, $sp, 368
	addi.d	$a1, $sp, 336
	pcaddu18i	$ra, %call36(_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE)
	jirl	$ra, $ra, 0
.Ltmp123:                               # EH_LABEL
# %bb.193:                              #   in Loop: Header=BB1_183 Depth=1
	ld.d	$a0, $sp, 368
	ld.d	$a0, $a0, -24
	addi.d	$a1, $sp, 368
	add.d	$a0, $a1, $a0
	ld.wu	$a0, $a0, 32
	andi	$a1, $a0, 1
	bnez	$a1, .LBB1_345
# %bb.194:                              #   in Loop: Header=BB1_183 Depth=1
	ld.d	$a1, $sp, 344
	andi	$a0, $a0, 4
	bnez	$a0, .LBB1_197
# %bb.195:                              #   in Loop: Header=BB1_183 Depth=1
	bne	$a1, $s6, .LBB1_347
# %bb.196:                              # %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i
                                        #   in Loop: Header=BB1_183 Depth=1
	ld.d	$a0, $sp, 336
	ld.bu	$a0, $a0, 0
	ori	$a1, $zero, 75
	beq	$a0, $a1, .LBB1_199
	b	.LBB1_347
.LBB1_197:                              # %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread104thread-pre-split.i.i
                                        #   in Loop: Header=BB1_183 Depth=1
	bne	$a1, $s6, .LBB1_200
# %bb.198:                              # %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i
                                        #   in Loop: Header=BB1_183 Depth=1
	ld.d	$a0, $sp, 336
	ld.bu	$a0, $a0, 0
	ori	$a1, $zero, 75
	bne	$a0, $a1, .LBB1_200
.LBB1_199:                              # %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i.i
                                        #   in Loop: Header=BB1_183 Depth=1
	ld.w	$a0, $sp, 180
	slli.d	$a0, $a0, 10
	st.w	$a0, $sp, 180
.LBB1_200:                              # %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread105.i.i
                                        #   in Loop: Header=BB1_183 Depth=1
.Ltmp129:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.36)
	addi.d	$a2, $a0, %pc_lo12(.L.str.36)
	addi.d	$a0, $sp, 952
	addi.d	$a1, $sp, 888
	pcaddu18i	$ra, %call36(_ZN9benchmark6StrCatIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA5_KcEEES6_DpOT_)
	jirl	$ra, $ra, 0
.Ltmp130:                               # EH_LABEL
# %bb.201:                              #   in Loop: Header=BB1_183 Depth=1
.Ltmp132:                               # EH_LABEL
	addi.d	$a0, $sp, 952
	addi.d	$a1, $sp, 144
	pcaddu18i	$ra, %call36(_ZN9benchmark12_GLOBAL__N_112ReadFromFileINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKS7_PT_)
	jirl	$ra, $ra, 0
.Ltmp133:                               # EH_LABEL
# %bb.202:                              #   in Loop: Header=BB1_183 Depth=1
	move	$s0, $a0
	ld.d	$a0, $sp, 952
	beq	$a0, $s1, .LBB1_204
# %bb.203:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32.i.i25
                                        #   in Loop: Header=BB1_183 Depth=1
	ld.d	$a1, $sp, 968
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_204:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34.i.i26
                                        #   in Loop: Header=BB1_183 Depth=1
	beqz	$s0, .LBB1_341
# %bb.205:                              #   in Loop: Header=BB1_183 Depth=1
.Ltmp137:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.38)
	addi.d	$a2, $a0, %pc_lo12(.L.str.38)
	addi.d	$a0, $sp, 1504
	addi.d	$a1, $sp, 888
	pcaddu18i	$ra, %call36(_ZN9benchmark6StrCatIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA6_KcEEES6_DpOT_)
	jirl	$ra, $ra, 0
.Ltmp138:                               # EH_LABEL
# %bb.206:                              #   in Loop: Header=BB1_183 Depth=1
	ld.d	$a1, $sp, 1504
	st.w	$zero, $sp, 176
.Ltmp140:                               # EH_LABEL
	addi.d	$a0, $sp, 952
	ori	$a2, $zero, 8
	pcaddu18i	$ra, %call36(_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode)
	jirl	$ra, $ra, 0
.Ltmp141:                               # EH_LABEL
# %bb.207:                              # %.noexc38.i.i
                                        #   in Loop: Header=BB1_183 Depth=1
	addi.d	$a0, $sp, 1072
	pcaddu18i	$ra, %call36(_ZNKSt12__basic_fileIcE7is_openEv)
	jirl	$ra, $ra, 0
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	beqz	$a0, .LBB1_210
# %bb.208:                              #   in Loop: Header=BB1_183 Depth=1
.Ltmp143:                               # EH_LABEL
	addi.d	$a0, $sp, 952
	addi.d	$a1, $sp, 176
	pcaddu18i	$ra, %call36(_ZNSirsERi)
	jirl	$ra, $ra, 0
.Ltmp144:                               # EH_LABEL
# %bb.209:                              #   in Loop: Header=BB1_183 Depth=1
	ld.d	$a0, $sp, 952
	ld.d	$a0, $a0, -24
	addi.d	$a1, $sp, 952
	add.d	$a0, $a1, $a0
	ld.w	$a0, $a0, 32
	sltui	$fp, $a0, 1
	addi.d	$a0, $sp, 952
	pcaddu18i	$ra, %call36(_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 1504
	bne	$a0, $s3, .LBB1_211
	b	.LBB1_212
	.p2align	4, , 16
.LBB1_210:                              #   in Loop: Header=BB1_183 Depth=1
	move	$fp, $zero
	addi.d	$a0, $sp, 952
	pcaddu18i	$ra, %call36(_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 1504
	beq	$a0, $s3, .LBB1_212
.LBB1_211:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39.i.i
                                        #   in Loop: Header=BB1_183 Depth=1
	ld.d	$a1, $sp, 1520
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_212:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41.i.i
                                        #   in Loop: Header=BB1_183 Depth=1
	beqz	$fp, .LBB1_339
# %bb.213:                              #   in Loop: Header=BB1_183 Depth=1
	addi.d	$a0, $sp, 320
	st.d	$a0, $sp, 304
	st.d	$zero, $sp, 312
	st.b	$zero, $sp, 320
.Ltmp149:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.39)
	addi.d	$a2, $a0, %pc_lo12(.L.str.39)
	addi.d	$a0, $sp, 952
	addi.d	$a1, $sp, 888
	pcaddu18i	$ra, %call36(_ZN9benchmark6StrCatIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA15_KcEEES6_DpOT_)
	jirl	$ra, $ra, 0
.Ltmp150:                               # EH_LABEL
# %bb.214:                              #   in Loop: Header=BB1_183 Depth=1
.Ltmp152:                               # EH_LABEL
	addi.d	$a0, $sp, 952
	addi.d	$a1, $sp, 304
	pcaddu18i	$ra, %call36(_ZN9benchmark12_GLOBAL__N_112ReadFromFileINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKS7_PT_)
	jirl	$ra, $ra, 0
.Ltmp153:                               # EH_LABEL
# %bb.215:                              #   in Loop: Header=BB1_183 Depth=1
	move	$s0, $a0
	ld.d	$a0, $sp, 952
	beq	$a0, $s1, .LBB1_217
# %bb.216:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45.i.i
                                        #   in Loop: Header=BB1_183 Depth=1
	ld.d	$a1, $sp, 968
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_217:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.i.i
                                        #   in Loop: Header=BB1_183 Depth=1
	beqz	$s0, .LBB1_335
# %bb.218:                              #   in Loop: Header=BB1_183 Depth=1
	ld.d	$s0, $sp, 312
	ld.d	$s2, $sp, 304
	addi.d	$a0, $sp, 288
	st.d	$a0, $sp, 272
	st.d	$s0, $sp, 952
	bltu	$s0, $s7, .LBB1_221
# %bb.219:                              # %.noexc.i52.i.i
                                        #   in Loop: Header=BB1_183 Depth=1
.Ltmp158:                               # EH_LABEL
	addi.d	$a0, $sp, 272
	addi.d	$a1, $sp, 952
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp159:                               # EH_LABEL
# %bb.220:                              # %.noexc53.i.i
                                        #   in Loop: Header=BB1_183 Depth=1
	ld.d	$a1, $sp, 952
	st.d	$a0, $sp, 272
	st.d	$a1, $sp, 288
.LBB1_221:                              # %._crit_edge.i.i51.i.i
                                        #   in Loop: Header=BB1_183 Depth=1
	beqz	$s0, .LBB1_225
# %bb.222:                              # %._crit_edge.i.i51.i.i
                                        #   in Loop: Header=BB1_183 Depth=1
	bne	$s0, $s6, .LBB1_224
# %bb.223:                              #   in Loop: Header=BB1_183 Depth=1
	ld.b	$a1, $s2, 0
	st.b	$a1, $a0, 0
	b	.LBB1_225
.LBB1_224:                              #   in Loop: Header=BB1_183 Depth=1
	move	$a1, $s2
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB1_225:                              #   in Loop: Header=BB1_183 Depth=1
	ld.d	$a0, $sp, 952
	ld.d	$a1, $sp, 272
	st.d	$a0, $sp, 280
	stx.b	$zero, $a1, $a0
	addi.d	$a0, $sp, 272
	ori	$a1, $zero, 44
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm)
	jirl	$ra, $ra, 0
	addi.w	$fp, $zero, -1
	beq	$a0, $fp, .LBB1_259
# %bb.226:                              # %.lr.ph.i.i.i.preheader
                                        #   in Loop: Header=BB1_183 Depth=1
	move	$s2, $a0
	move	$s8, $zero
	b	.LBB1_229
	.p2align	4, , 16
.LBB1_227:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.i.i.i
                                        #   in Loop: Header=BB1_229 Depth=2
	ld.d	$a1, $sp, 1520
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_228:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i.i.i
                                        #   in Loop: Header=BB1_229 Depth=2
	add.d	$s8, $s0, $s8
	addi.d	$a0, $sp, 272
	ori	$a1, $zero, 44
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	beq	$a0, $fp, .LBB1_260
.LBB1_229:                              # %.lr.ph.i.i.i
                                        #   Parent Loop BB1_183 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $sp, 280
	st.d	$s1, $sp, 952
	ld.d	$s0, $sp, 272
	sltu	$a1, $s2, $a0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s2, $a1
	or	$s4, $a1, $a0
	st.d	$s4, $sp, 1504
	move	$a0, $s1
	bltu	$s4, $s7, .LBB1_232
# %bb.230:                              # %.noexc10.i.i.i.i.i
                                        #   in Loop: Header=BB1_229 Depth=2
.Ltmp160:                               # EH_LABEL
	addi.d	$a0, $sp, 952
	addi.d	$a1, $sp, 1504
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp161:                               # EH_LABEL
# %bb.231:                              # %.noexc57.i.i
                                        #   in Loop: Header=BB1_229 Depth=2
	ld.d	$a1, $sp, 1504
	st.d	$a0, $sp, 952
	st.d	$a1, $sp, 968
.LBB1_232:                              # %._crit_edge.i.i.i.i.i.i
                                        #   in Loop: Header=BB1_229 Depth=2
	beqz	$s4, .LBB1_236
# %bb.233:                              # %._crit_edge.i.i.i.i.i.i
                                        #   in Loop: Header=BB1_229 Depth=2
	bne	$s4, $s6, .LBB1_235
# %bb.234:                              #   in Loop: Header=BB1_229 Depth=2
	ld.b	$a1, $s0, 0
	st.b	$a1, $a0, 0
	b	.LBB1_236
	.p2align	4, , 16
.LBB1_235:                              #   in Loop: Header=BB1_229 Depth=2
	move	$a1, $s0
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB1_236:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i.i.i
                                        #   in Loop: Header=BB1_229 Depth=2
	ld.d	$a0, $sp, 1504
	ld.d	$a1, $sp, 952
	st.d	$a0, $sp, 960
	stx.b	$zero, $a1, $a0
.Ltmp162:                               # EH_LABEL
	addi.d	$a0, $sp, 952
	pcaddu18i	$ra, %call36(_ZZN9benchmark12_GLOBAL__N_120CountSetBitsInCPUMapENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_0clES6_)
	jirl	$ra, $ra, 0
.Ltmp163:                               # EH_LABEL
# %bb.237:                              #   in Loop: Header=BB1_229 Depth=2
	move	$s0, $a0
	ld.d	$a0, $sp, 952
	beq	$a0, $s1, .LBB1_239
# %bb.238:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
                                        #   in Loop: Header=BB1_229 Depth=2
	ld.d	$a1, $sp, 968
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_239:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
                                        #   in Loop: Header=BB1_229 Depth=2
	ld.d	$a3, $sp, 280
	addi.d	$s4, $s2, 1
	bgeu	$s2, $a3, .LBB1_331
# %bb.240:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i.i.i
                                        #   in Loop: Header=BB1_229 Depth=2
	ld.d	$s5, $sp, 272
	st.d	$s3, $sp, 1504
	sub.d	$s2, $a3, $s4
	st.d	$s2, $sp, 1536
	move	$a0, $s3
	bltu	$s2, $s7, .LBB1_243
# %bb.241:                              # %.noexc10.i.i12.i.i.i
                                        #   in Loop: Header=BB1_229 Depth=2
.Ltmp168:                               # EH_LABEL
	addi.d	$a0, $sp, 1504
	addi.d	$a1, $sp, 1536
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp169:                               # EH_LABEL
# %bb.242:                              # %.noexc59.i.i
                                        #   in Loop: Header=BB1_229 Depth=2
	ld.d	$a1, $sp, 1536
	st.d	$a0, $sp, 1504
	st.d	$a1, $sp, 1520
.LBB1_243:                              # %._crit_edge.i.i.i11.i.i.i
                                        #   in Loop: Header=BB1_229 Depth=2
	beqz	$s2, .LBB1_247
# %bb.244:                              # %._crit_edge.i.i.i11.i.i.i
                                        #   in Loop: Header=BB1_229 Depth=2
	add.d	$a1, $s5, $s4
	bne	$s2, $s6, .LBB1_246
# %bb.245:                              #   in Loop: Header=BB1_229 Depth=2
	ld.b	$a1, $a1, 0
	st.b	$a1, $a0, 0
	b	.LBB1_247
	.p2align	4, , 16
.LBB1_246:                              #   in Loop: Header=BB1_229 Depth=2
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB1_247:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit13.i.i.i
                                        #   in Loop: Header=BB1_229 Depth=2
	ld.d	$a0, $sp, 1536
	ld.d	$a1, $sp, 1504
	st.d	$a0, $sp, 1512
	stx.b	$zero, $a1, $a0
	ld.d	$a0, $sp, 272
	addi.d	$a1, $sp, 288
	beq	$a0, $a1, .LBB1_251
# %bb.248:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i54.i.i
                                        #   in Loop: Header=BB1_229 Depth=2
	ld.d	$a1, $sp, 1504
	beq	$a1, $s3, .LBB1_254
# %bb.249:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i
                                        #   in Loop: Header=BB1_229 Depth=2
	vld	$vr0, $sp, 1512
	ld.d	$a2, $sp, 288
	st.d	$a1, $sp, 272
	vst	$vr0, $sp, 280
	beqz	$a0, .LBB1_253
# %bb.250:                              #   in Loop: Header=BB1_229 Depth=2
	st.d	$a0, $sp, 1504
	st.d	$a2, $sp, 1520
	st.d	$zero, $sp, 1512
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 1504
	bne	$a0, $s3, .LBB1_227
	b	.LBB1_228
	.p2align	4, , 16
.LBB1_251:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56.i.i
                                        #   in Loop: Header=BB1_229 Depth=2
	ld.d	$a1, $sp, 1504
	beq	$a1, $s3, .LBB1_254
# %bb.252:                              # %.thread.i.i.i.i
                                        #   in Loop: Header=BB1_229 Depth=2
	vld	$vr0, $sp, 1512
	st.d	$a1, $sp, 272
	vst	$vr0, $sp, 280
.LBB1_253:                              #   in Loop: Header=BB1_229 Depth=2
	st.d	$s3, $sp, 1504
	move	$a0, $s3
	st.d	$zero, $sp, 1512
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 1504
	bne	$a0, $s3, .LBB1_227
	b	.LBB1_228
	.p2align	4, , 16
.LBB1_254:                              #   in Loop: Header=BB1_229 Depth=2
	ld.d	$a2, $sp, 1512
	beqz	$a2, .LBB1_258
# %bb.255:                              #   in Loop: Header=BB1_229 Depth=2
	bne	$a2, $s6, .LBB1_257
# %bb.256:                              #   in Loop: Header=BB1_229 Depth=2
	ld.b	$a1, $a1, 0
	st.b	$a1, $a0, 0
	b	.LBB1_258
.LBB1_257:                              #   in Loop: Header=BB1_229 Depth=2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB1_258:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i
                                        #   in Loop: Header=BB1_229 Depth=2
	ld.d	$a0, $sp, 1512
	ld.d	$a1, $sp, 272
	st.d	$a0, $sp, 280
	stx.b	$zero, $a1, $a0
	ld.d	$a0, $sp, 1504
	st.d	$zero, $sp, 1512
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 1504
	bne	$a0, $s3, .LBB1_227
	b	.LBB1_228
.LBB1_259:                              #   in Loop: Header=BB1_183 Depth=1
	move	$s8, $zero
.LBB1_260:                              # %._crit_edge.i.i.i
                                        #   in Loop: Header=BB1_183 Depth=1
	ld.d	$s0, $sp, 280
	beqz	$s0, .LBB1_270
# %bb.261:                              #   in Loop: Header=BB1_183 Depth=1
	ld.d	$s2, $sp, 272
	addi.d	$fp, $sp, 1488
	st.d	$fp, $sp, 1472
	st.d	$s0, $sp, 1504
	bltu	$s0, $s7, .LBB1_264
# %bb.262:                              # %._crit_edge.i.i.thread.i.i.i
                                        #   in Loop: Header=BB1_183 Depth=1
.Ltmp171:                               # EH_LABEL
	addi.d	$a0, $sp, 1472
	addi.d	$a1, $sp, 1504
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp172:                               # EH_LABEL
# %bb.263:                              # %.noexc60.i.i
                                        #   in Loop: Header=BB1_183 Depth=1
	ld.d	$a1, $sp, 1504
	st.d	$a0, $sp, 1472
	st.d	$a1, $sp, 1488
	b	.LBB1_266
.LBB1_264:                              # %._crit_edge.i.i.i.i.i29
                                        #   in Loop: Header=BB1_183 Depth=1
	move	$a0, $fp
	bne	$s0, $s6, .LBB1_266
# %bb.265:                              #   in Loop: Header=BB1_183 Depth=1
	ld.b	$a0, $s2, 0
	st.b	$a0, $sp, 1488
	ori	$a0, $zero, 1
	move	$a1, $fp
	b	.LBB1_267
	.p2align	4, , 16
.LBB1_266:                              #   in Loop: Header=BB1_183 Depth=1
	move	$a1, $s2
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 1504
	ld.d	$a1, $sp, 1472
.LBB1_267:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i
                                        #   in Loop: Header=BB1_183 Depth=1
	st.d	$a0, $sp, 1480
	stx.b	$zero, $a1, $a0
.Ltmp174:                               # EH_LABEL
	addi.d	$a0, $sp, 1472
	pcaddu18i	$ra, %call36(_ZZN9benchmark12_GLOBAL__N_120CountSetBitsInCPUMapENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_0clES6_)
	jirl	$ra, $ra, 0
	move	$a1, $a0
.Ltmp175:                               # EH_LABEL
# %bb.268:                              #   in Loop: Header=BB1_183 Depth=1
	ld.d	$a0, $sp, 1472
	add.d	$s8, $a1, $s8
	beq	$a0, $fp, .LBB1_270
# %bb.269:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20.i.i.i
                                        #   in Loop: Header=BB1_183 Depth=1
	ld.d	$a1, $sp, 1488
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_270:                              #   in Loop: Header=BB1_183 Depth=1
	ld.d	$a0, $sp, 272
	st.w	$s8, $sp, 184
	addi.d	$a1, $sp, 288
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	beq	$a0, $a1, .LBB1_272
# %bb.271:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63.i.i
                                        #   in Loop: Header=BB1_183 Depth=1
	ld.d	$a1, $sp, 288
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_272:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65.i.i
                                        #   in Loop: Header=BB1_183 Depth=1
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s0, $s8, 24
	ld.d	$a0, $s8, 32
	beq	$s0, $a0, .LBB1_279
# %bb.273:                              #   in Loop: Header=BB1_183 Depth=1
	addi.d	$a0, $s0, 16
	st.d	$a0, $s0, 0
	ld.d	$s2, $sp, 152
	ld.d	$s4, $sp, 144
	st.d	$s2, $sp, 952
	bltu	$s2, $s7, .LBB1_276
# %bb.274:                              # %.noexc.i.i.i.i.i
                                        #   in Loop: Header=BB1_183 Depth=1
.Ltmp177:                               # EH_LABEL
	addi.d	$a1, $sp, 952
	move	$a0, $s0
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp178:                               # EH_LABEL
# %bb.275:                              # %.noexc68.i.i
                                        #   in Loop: Header=BB1_183 Depth=1
	st.d	$a0, $s0, 0
	ld.d	$a1, $sp, 952
	st.d	$a1, $s0, 16
.LBB1_276:                              # %._crit_edge.i.i.i.i67.i.i
                                        #   in Loop: Header=BB1_183 Depth=1
	beqz	$s2, .LBB1_289
# %bb.277:                              # %._crit_edge.i.i.i.i67.i.i
                                        #   in Loop: Header=BB1_183 Depth=1
	bne	$s2, $s6, .LBB1_288
# %bb.278:                              #   in Loop: Header=BB1_183 Depth=1
	ld.b	$a1, $s4, 0
	st.b	$a1, $a0, 0
	b	.LBB1_289
.LBB1_279:                              #   in Loop: Header=BB1_183 Depth=1
.Ltmp179:                               # EH_LABEL
	addi.d	$a1, $sp, 144
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZNSt6vectorIN9benchmark7CPUInfo9CacheInfoESaIS2_EE17_M_realloc_appendIJRKS2_EEEvDpOT_)
	jirl	$ra, $ra, 0
.Ltmp180:                               # EH_LABEL
# %bb.280:                              # %_ZNSt6vectorIN9benchmark7CPUInfo9CacheInfoESaIS2_EE9push_backERKS2_.exit.i.i
                                        #   in Loop: Header=BB1_183 Depth=1
	ld.d	$a0, $sp, 304
	addi.d	$a1, $sp, 320
	beq	$a0, $a1, .LBB1_282
.LBB1_281:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70.i.i
                                        #   in Loop: Header=BB1_183 Depth=1
	ld.d	$a1, $sp, 320
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_282:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.i.i
                                        #   in Loop: Header=BB1_183 Depth=1
	ld.d	$a0, $sp, 336
	addi.d	$a1, $sp, 352
	beq	$a0, $a1, .LBB1_284
# %bb.283:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73.i.i
                                        #   in Loop: Header=BB1_183 Depth=1
	ld.d	$a1, $sp, 352
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_284:                              #   in Loop: Header=BB1_183 Depth=1
	addi.d	$a0, $sp, 368
	pcaddu18i	$ra, %call36(_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 888
	addi.d	$a1, $sp, 904
	beq	$a0, $a1, .LBB1_286
# %bb.285:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76.i.i
                                        #   in Loop: Header=BB1_183 Depth=1
	ld.d	$a1, $sp, 904
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_286:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78.i.i
                                        #   in Loop: Header=BB1_183 Depth=1
	ld.d	$a0, $sp, 144
	addi.d	$a1, $sp, 160
	beq	$a0, $a1, .LBB1_182
# %bb.287:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i79.i.i
                                        #   in Loop: Header=BB1_183 Depth=1
	ld.d	$a1, $sp, 160
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB1_182
.LBB1_288:                              #   in Loop: Header=BB1_183 Depth=1
	move	$a1, $s4
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB1_289:                              # %_ZN9benchmark7CPUInfo9CacheInfoC2ERKS1_.exit.i.i.i
                                        #   in Loop: Header=BB1_183 Depth=1
	ld.d	$a0, $sp, 952
	ld.d	$a1, $s0, 0
	st.d	$a0, $s0, 8
	stx.b	$zero, $a1, $a0
	addi.d	$a1, $sp, 176
	ld.w	$a0, $a1, 8
	st.w	$a0, $s0, 40
	ld.d	$a0, $a1, 0
	st.d	$a0, $s0, 32
	ld.d	$a0, $s8, 24
	addi.d	$a0, $a0, 48
	st.d	$a0, $s8, 24
	ld.d	$a0, $sp, 304
	addi.d	$a1, $sp, 320
	bne	$a0, $a1, .LBB1_281
	b	.LBB1_282
.LBB1_290:
	ld.d	$a0, $sp, 920
	addi.d	$a1, $sp, 936
	beq	$a0, $a1, .LBB1_292
# %bb.291:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101.i.i
	ld.d	$a1, $sp, 936
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_292:                              # %_ZN9benchmark12_GLOBAL__N_113GetCacheSizesEv.exit
.Ltmp182:                               # EH_LABEL
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp183:                               # EH_LABEL
# %bb.293:                              # %.noexc
	move	$s0, $a0
	st.d	$a0, $s8, 40
	addi.d	$a0, $a0, 24
	st.d	$a0, $s8, 56
	st.d	$zero, $s0, 0
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $s0, 8
	st.d	$a0, $s8, 48
	ori	$a1, $zero, 3
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getloadavg)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_298
# %bb.294:
	ori	$a1, $zero, 4
	bltu	$a0, $a1, .LBB1_296
# %bb.295:
	addi.d	$s0, $s8, 40
	addi.d	$a1, $a0, -3
.Ltmp185:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt6vectorIdSaIdEE17_M_default_appendEm)
	jirl	$ra, $ra, 0
.Ltmp186:                               # EH_LABEL
	b	.LBB1_299
.LBB1_296:
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB1_299
# %bb.297:                              # %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i8.i
	alsl.d	$s0, $a0, $s0, 3
.LBB1_298:                              # %_ZN9benchmark12_GLOBAL__N_110GetLoadAvgEv.exit
	st.d	$s0, $s8, 48
.LBB1_299:                              # %_ZN9benchmark12_GLOBAL__N_110GetLoadAvgEv.exit
	fld.d	$fs1, $sp, 1544                 # 8-byte Folded Reload
	fld.d	$fs0, $sp, 1552                 # 8-byte Folded Reload
	ld.d	$s8, $sp, 1560                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1568                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1576                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1584                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1592                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1600                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1608                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1616                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1624                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1632                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1640                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1648
	ret
.LBB1_300:
	addi.d	$a0, $sp, 968
.Ltmp65:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv)
	jirl	$ra, $ra, 0
.Ltmp66:                                # EH_LABEL
# %bb.301:                              # %.noexc215.i
	bnez	$a0, .LBB1_303
# %bb.302:
	ld.d	$a0, $sp, 952
	ld.d	$a0, $a0, -24
	addi.d	$a1, $sp, 952
	add.d	$a0, $a1, $a0
	ld.w	$a1, $a0, 32
	ori	$a1, $a1, 4
.Ltmp67:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate)
	jirl	$ra, $ra, 0
.Ltmp68:                                # EH_LABEL
.LBB1_303:                              # %_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv.exit.i
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	fcmp.cle.d	$fcc0, $fs0, $fa0
                                        # kill: def $f0_64 killed $f0_64 killed $vr0 def $vr0
	vst	$vr0, $sp, 96                   # 16-byte Folded Spill
	bcnez	$fcc0, .LBB1_177
# %bb.304:
	pcaddu18i	$ra, %call36(pthread_self)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 368
	addi.d	$s0, $sp, 376
	ori	$a1, $zero, 128
	move	$a2, $s0
	pcaddu18i	$ra, %call36(pthread_getaffinity_np)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_311
.LBB1_305:                              # %.sink.split.i.i
	st.b	$zero, $sp, 504
.LBB1_306:
.Ltmp69:                                # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$s1, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a1, $a0, %pc_lo12(.L.str.25)
	ori	$a2, $zero, 86
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp70:                                # EH_LABEL
# %bb.307:                              # %.noexc218.i
	ld.d	$a0, $s1, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s1, $a0
	ld.d	$s1, $a0, 240
	beqz	$s1, .LBB1_361
# %bb.308:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i11
	ld.bu	$a0, $s1, 56
	beqz	$a0, .LBB1_318
# %bb.309:
	ld.bu	$a0, $s1, 67
	b	.LBB1_320
.LBB1_310:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	ori	$a1, $zero, 90
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 144
	addi.d	$s4, $sp, 384
	bne	$a0, $s3, .LBB1_53
	b	.LBB1_54
.LBB1_311:
	addi.d	$a0, $sp, 144
	ori	$a2, $zero, 128
	addi.d	$fp, $sp, 144
	move	$a1, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ori	$a1, $zero, 1
	addi.w	$a2, $zero, -8
	lu52i.d	$a2, $a2, 511
	ori	$a3, $zero, 1023
	ori	$a4, $zero, 1
	b	.LBB1_314
.LBB1_312:                              #   in Loop: Header=BB1_314 Depth=1
	sltui	$a5, $t0, 1
	and	$a4, $a5, $a4
	beq	$a0, $a3, .LBB1_329
.LBB1_313:                              # %.backedge.i.i.i.backedge
                                        #   in Loop: Header=BB1_314 Depth=1
	addi.d	$a0, $a0, 1
.LBB1_314:                              # %.backedge.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	srli.d	$a5, $a0, 3
	and	$a6, $a5, $a2
	ldx.d	$a5, $a6, $fp
	sll.d	$a7, $a1, $a0
	and	$t0, $a5, $a7
	beqz	$t0, .LBB1_312
# %bb.315:                              # %.backedge.i.i.i
                                        #   in Loop: Header=BB1_314 Depth=1
	andi	$t1, $a4, 1
	bnez	$t1, .LBB1_312
# %bb.316:                              # %.thread.i.i.i14
                                        #   in Loop: Header=BB1_314 Depth=1
	add.d	$a4, $fp, $a6
	andn	$a5, $a5, $a7
	st.d	$a5, $a4, 0
	beq	$a0, $a3, .LBB1_330
# %bb.317:                              #   in Loop: Header=BB1_314 Depth=1
	move	$a4, $zero
	b	.LBB1_313
.LBB1_318:
.Ltmp71:                                # EH_LABEL
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp72:                                # EH_LABEL
# %bb.319:                              # %.noexc220.i
	ld.d	$a0, $s1, 0
	ld.d	$a2, $a0, 48
.Ltmp73:                                # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s1
	jirl	$ra, $a2, 0
.Ltmp74:                                # EH_LABEL
.LBB1_320:                              # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit.i.i
.Ltmp75:                                # EH_LABEL
	ext.w.b	$a1, $a0
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp76:                                # EH_LABEL
# %bb.321:                              # %.noexc222.i
.Ltmp77:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp78:                                # EH_LABEL
.LBB1_322:
	pcaddu18i	$ra, %call36(_ZNSt6chrono3_V212steady_clock3nowEv)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.LCPI1_0)
	fld.d	$fs1, $a1, %pc_lo12(.LCPI1_0)
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	fdiv.d	$fs0, $fa0, $fs1
	addi.d	$a0, $sp, 144
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	move	$s1, $zero
	ld.d	$a0, $sp, 144
	ld.d	$a1, $sp, 152
	lu12i.w	$a2, 244
	ori	$s2, $a2, 576
	mul.d	$a0, $a0, $s2
	add.d	$fp, $a0, $a1
	ori	$s4, $zero, 5
	lu32i.d	$s4, 2
	mulh.du	$a0, $fp, $s4
	sub.d	$a1, $fp, $a0
	srli.d	$a1, $a1, 1
	add.d	$a0, $a1, $a0
	srli.d	$a0, $a0, 30
	slli.d	$a1, $a0, 31
	sub.d	$a0, $a0, $a1
	add.d	$a0, $fp, $a0
	ori	$a1, $zero, 1
	sltu	$a2, $a1, $a0
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$s7, $a0, $a1
	lu12i.w	$a0, -3
	ori	$s5, $a0, 2288
	lu12i.w	$a0, 11
	ori	$s6, $a0, 3215
	.p2align	4, , 16
.LBB1_323:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_324 Depth 2
	move	$a0, $s5
	.p2align	4, , 16
.LBB1_324:                              # %.lr.ph.i.i
                                        #   Parent Loop BB1_323 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mul.d	$a1, $s7, $s6
	mulh.du	$a2, $a1, $s4
	sub.d	$a3, $a1, $a2
	srli.d	$a3, $a3, 1
	add.d	$a2, $a3, $a2
	srli.d	$a2, $a2, 30
	slli.d	$a3, $a2, 31
	sub.d	$a2, $a2, $a3
	addi.d	$a0, $a0, 1
	add.d	$s7, $a1, $a2
	bnez	$a0, .LBB1_324
# %bb.325:                              #   in Loop: Header=BB1_323 Depth=1
	mul.d	$a0, $s7, $s6
	mulh.du	$a1, $a0, $s4
	sub.d	$a2, $a0, $a1
	srli.d	$a2, $a2, 1
	add.d	$a1, $a2, $a1
	srli.d	$a1, $a1, 30
	slli.d	$a2, $a1, 31
	sub.d	$a1, $a1, $a2
	add.d	$s7, $a0, $a1
	add.d	$s1, $s7, $s1
	st.d	$s1, $sp, 1472
	pcaddu18i	$ra, %call36(_ZNSt6chrono3_V212steady_clock3nowEv)
	jirl	$ra, $ra, 0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	fdiv.d	$fa0, $fa0, $fs1
	fsub.d	$fa0, $fa0, $fs0
	vldi	$vr1, -912
	fcmp.clt.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB1_323
# %bb.326:
	addi.d	$a0, $sp, 1472
	#APP
	#NO_APP
	addi.d	$a0, $sp, 144
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	ld.d	$s5, $sp, 144
	ld.d	$s4, $sp, 152
	pcaddu18i	$ra, %call36(_ZNSt6chrono3_V212steady_clock3nowEv)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $sp, 504
	move	$s1, $a0
	beqz	$a1, .LBB1_328
# %bb.327:
	ld.d	$a0, $sp, 368
	ori	$a1, $zero, 128
	move	$a2, $s0
	pcaddu18i	$ra, %call36(pthread_setaffinity_np)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_363
.LBB1_328:                              # %_ZN9benchmark12_GLOBAL__N_119ThreadAffinityGuardD2Ev.exit.i
	mul.d	$a0, $s5, $s2
	movgr2fr.d	$fa0, $s1
	ffint.d.l	$fa0, $fa0
	fdiv.d	$fa0, $fa0, $fs1
	sub.d	$a1, $s4, $fp
	add.d	$a0, $a1, $a0
	movgr2fr.d	$fa1, $a0
	ffint.d.l	$fa1, $fa1
	fsub.d	$fa0, $fa0, $fs0
	fdiv.d	$fa0, $fa1, $fa0
	b	.LBB1_176
.LBB1_329:
	bnez	$a4, .LBB1_305
.LBB1_330:                              # %_ZN9benchmark12_GLOBAL__N_119ThreadAffinityGuard11SetAffinityEv.exit.i.i
	ld.d	$a0, $sp, 368
	ori	$a1, $zero, 128
	addi.d	$a2, $sp, 144
	pcaddu18i	$ra, %call36(pthread_setaffinity_np)
	jirl	$ra, $ra, 0
	sltui	$a1, $a0, 1
	st.b	$a1, $sp, 504
	bnez	$a0, .LBB1_306
	b	.LBB1_322
.LBB1_331:
.Ltmp165:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	pcalau12i	$a1, %pc_hi20(.L.str.8)
	addi.d	$a1, $a1, %pc_lo12(.L.str.8)
	move	$a2, $s4
	pcaddu18i	$ra, %call36(_ZSt24__throw_out_of_range_fmtPKcz)
	jirl	$ra, $ra, 0
.Ltmp166:                               # EH_LABEL
# %bb.332:                              # %.noexc58.i.i
.LBB1_333:
.Ltmp201:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp202:                               # EH_LABEL
# %bb.334:                              # %.noexc21.i.i
.LBB1_335:
.Ltmp155:                               # EH_LABEL
	addi.d	$a0, $sp, 888
	pcaddu18i	$ra, %call36(_ZN9benchmark12_GLOBAL__N_116PrintErrorAndDieIJRA26_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA15_S2_EEEvDpOT_)
	jirl	$ra, $ra, 0
.Ltmp156:                               # EH_LABEL
# %bb.336:
.LBB1_337:
.Ltmp120:                               # EH_LABEL
	addi.d	$a0, $sp, 888
	pcaddu18i	$ra, %call36(_ZN9benchmark12_GLOBAL__N_116PrintErrorAndDieIJRA28_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA6_S2_EEEvDpOT_)
	jirl	$ra, $ra, 0
.Ltmp121:                               # EH_LABEL
# %bb.338:
.LBB1_339:
.Ltmp146:                               # EH_LABEL
	addi.d	$a0, $sp, 888
	pcaddu18i	$ra, %call36(_ZN9benchmark12_GLOBAL__N_116PrintErrorAndDieIJRA26_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA6_S2_EEEvDpOT_)
	jirl	$ra, $ra, 0
.Ltmp147:                               # EH_LABEL
# %bb.340:
.LBB1_341:
.Ltmp135:                               # EH_LABEL
	addi.d	$a0, $sp, 888
	pcaddu18i	$ra, %call36(_ZN9benchmark12_GLOBAL__N_116PrintErrorAndDieIJRA26_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA5_S2_EEEvDpOT_)
	jirl	$ra, $ra, 0
.Ltmp136:                               # EH_LABEL
# %bb.342:
.LBB1_343:
.Ltmp103:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp104:                               # EH_LABEL
# %bb.344:                              # %.noexc159.i
.LBB1_345:
.Ltmp125:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN9benchmark12_GLOBAL__N_116PrintErrorAndDieIJRA54_KcEEEvDpOT_)
	jirl	$ra, $ra, 0
.Ltmp126:                               # EH_LABEL
# %bb.346:
.LBB1_347:                              # %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i.i
.Ltmp127:                               # EH_LABEL
	addi.d	$a0, $sp, 336
	pcaddu18i	$ra, %call36(_ZN9benchmark12_GLOBAL__N_116PrintErrorAndDieIJRA43_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_)
	jirl	$ra, $ra, 0
.Ltmp128:                               # EH_LABEL
# %bb.348:
.LBB1_349:
.Ltmp16:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN9benchmark12_GLOBAL__N_116PrintErrorAndDieIJRA30_KcEEEvDpOT_)
	jirl	$ra, $ra, 0
.Ltmp17:                                # EH_LABEL
# %bb.350:
.LBB1_351:
.Ltmp188:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN9benchmark12_GLOBAL__N_116PrintErrorAndDieIJRA39_KcEEEvDpOT_)
	jirl	$ra, $ra, 0
.Ltmp189:                               # EH_LABEL
# %bb.352:
.LBB1_353:
.Ltmp190:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	pcalau12i	$a1, %pc_hi20(.L.str.8)
	addi.d	$a1, $a1, %pc_lo12(.L.str.8)
	move	$a2, $s0
	pcaddu18i	$ra, %call36(_ZSt24__throw_out_of_range_fmtPKcz)
	jirl	$ra, $ra, 0
.Ltmp191:                               # EH_LABEL
# %bb.354:                              # %.noexc25.i.i
.LBB1_355:
.Ltmp87:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	pcalau12i	$a1, %pc_hi20(.L.str.8)
	addi.d	$a1, $a1, %pc_lo12(.L.str.8)
	move	$a2, $s0
	pcaddu18i	$ra, %call36(_ZSt24__throw_out_of_range_fmtPKcz)
	jirl	$ra, $ra, 0
.Ltmp88:                                # EH_LABEL
# %bb.356:                              # %.noexc163.i
.LBB1_357:
.Ltmp198:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	pcaddu18i	$ra, %call36(_ZSt24__throw_invalid_argumentPKc)
	jirl	$ra, $ra, 0
.Ltmp199:                               # EH_LABEL
# %bb.358:
.LBB1_359:                              # %.critedge.i.i.i.i
.Ltmp196:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	pcaddu18i	$ra, %call36(_ZSt20__throw_out_of_rangePKc)
	jirl	$ra, $ra, 0
.Ltmp197:                               # EH_LABEL
# %bb.360:
.LBB1_361:
.Ltmp82:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp83:                                # EH_LABEL
# %bb.362:                              # %.noexc219.i
.LBB1_363:
.Ltmp79:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN9benchmark12_GLOBAL__N_116PrintErrorAndDieIJRA32_KcEEEvDpOT_)
	jirl	$ra, $ra, 0
.Ltmp80:                                # EH_LABEL
# %bb.364:
.LBB1_365:
.Ltmp100:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a0, $a0, %pc_lo12(.L.str.24)
	pcaddu18i	$ra, %call36(_ZSt24__throw_invalid_argumentPKc)
	jirl	$ra, $ra, 0
.Ltmp101:                               # EH_LABEL
# %bb.366:
.LBB1_367:                              # %.critedge.i.i.i
.Ltmp98:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a0, $a0, %pc_lo12(.L.str.24)
	pcaddu18i	$ra, %call36(_ZSt20__throw_out_of_rangePKc)
	jirl	$ra, $ra, 0
.Ltmp99:                                # EH_LABEL
# %bb.368:
.LBB1_369:
.Ltmp95:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a0, $a0, %pc_lo12(.L.str.24)
	pcaddu18i	$ra, %call36(_ZSt24__throw_invalid_argumentPKc)
	jirl	$ra, $ra, 0
.Ltmp96:                                # EH_LABEL
# %bb.370:
.LBB1_371:                              # %.critedge.i.i196.i
.Ltmp93:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a0, $a0, %pc_lo12(.L.str.24)
	pcaddu18i	$ra, %call36(_ZSt20__throw_out_of_rangePKc)
	jirl	$ra, $ra, 0
.Ltmp94:                                # EH_LABEL
# %bb.372:
.LBB1_373:
.Ltmp97:                                # EH_LABEL
	ld.w	$a1, $s0, 0
	move	$s2, $a0
	beqz	$a1, .LBB1_375
	b	.LBB1_381
.LBB1_374:
.Ltmp102:                               # EH_LABEL
	ld.w	$a1, $s0, 0
	move	$s2, $a0
	bnez	$a1, .LBB1_381
.LBB1_375:
	st.w	$s7, $s0, 0
	b	.LBB1_381
.LBB1_376:
.Ltmp81:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_377:                              # %.loopexit256.i
.Ltmp92:                                # EH_LABEL
	b	.LBB1_380
.LBB1_378:
.Ltmp84:                                # EH_LABEL
	b	.LBB1_430
.LBB1_379:                              # %.loopexit.split-lp257.i
.Ltmp89:                                # EH_LABEL
.LBB1_380:                              # %.body177.i
	move	$s2, $a0
.LBB1_381:                              # %.body177.i
	ld.d	$a0, $sp, 368
	beq	$a0, $s4, .LBB1_431
# %bb.382:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207.i
	ld.d	$a1, $sp, 384
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB1_431
.LBB1_383:                              # %.loopexit59.i.i
.Ltmp195:                               # EH_LABEL
	b	.LBB1_392
.LBB1_384:
.Ltmp200:                               # EH_LABEL
	ld.w	$a1, $s0, 0
	move	$s2, $a0
	bnez	$a1, .LBB1_386
# %bb.385:
	st.w	$s5, $s0, 0
	ld.d	$a0, $sp, 1504
	beq	$a0, $s8, .LBB1_387
	b	.LBB1_393
.LBB1_386:                              # %.body.i.i
	ld.d	$a0, $sp, 1504
	bne	$a0, $s8, .LBB1_393
.LBB1_387:
	ld.d	$a0, $sp, 144
	bne	$a0, $s3, .LBB1_449
.LBB1_388:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.i.i
	ld.d	$a0, $sp, 368
	addi.d	$a1, $sp, 384
	bne	$a0, $a1, .LBB1_450
	b	.LBB1_452
.LBB1_389:
.Ltmp45:                                # EH_LABEL
	move	$s2, $a0
	addi.d	$a0, $sp, 952
	pcaddu18i	$ra, %call36(_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev)
	jirl	$ra, $ra, 0
	b	.LBB1_407
.LBB1_390:
.Ltmp57:                                # EH_LABEL
	b	.LBB1_401
.LBB1_391:                              # %.loopexit.split-lp60.i.i
.Ltmp192:                               # EH_LABEL
.LBB1_392:                              # %.body.i.i
	move	$s2, $a0
	ld.d	$a0, $sp, 1504
	beq	$a0, $s8, .LBB1_387
.LBB1_393:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32.i.i
	ld.d	$a1, $sp, 1520
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 144
	beq	$a0, $s3, .LBB1_388
	b	.LBB1_449
.LBB1_394:
.Ltmp187:                               # EH_LABEL
	ld.d	$a2, $s0, 0
	move	$s2, $a0
	beqz	$a2, .LBB1_460
# %bb.395:
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 56
	sub.d	$a1, $a0, $a2
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZNSt6vectorIN9benchmark7CPUInfo9CacheInfoESaIS2_EED2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB1_396:
.Ltmp54:                                # EH_LABEL
	move	$s2, $a0
	addi.d	$a0, $sp, 952
	pcaddu18i	$ra, %call36(_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev)
	jirl	$ra, $ra, 0
	b	.LBB1_403
.LBB1_397:
.Ltmp42:                                # EH_LABEL
	move	$s2, $a0
	b	.LBB1_407
.LBB1_398:
.Ltmp39:                                # EH_LABEL
	b	.LBB1_413
.LBB1_399:
.Ltmp36:                                # EH_LABEL
	move	$s2, $a0
	addi.d	$a0, $sp, 952
	pcaddu18i	$ra, %call36(_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev)
	jirl	$ra, $ra, 0
	b	.LBB1_414
.LBB1_400:
.Ltmp8:                                 # EH_LABEL
.LBB1_401:
	move	$s2, $a0
	addi.d	$a0, $sp, 952
	pcaddu18i	$ra, %call36(_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB1_402:
.Ltmp51:                                # EH_LABEL
	move	$s2, $a0
.LBB1_403:                              # %.body140.i
	ld.d	$a0, $sp, 144
	beq	$a0, $s5, .LBB1_406
# %bb.404:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149.i
	ld.d	$a1, $sp, 160
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB1_406
.LBB1_405:
.Ltmp48:                                # EH_LABEL
	move	$s2, $a0
.LBB1_406:                              # %.body130.i
	ori	$a0, $zero, 2
	bne	$s1, $a0, .LBB1_414
.LBB1_407:                              # %.body130.thread.i
	ld.d	$a0, $sp, 112
	addi.d	$a1, $sp, 128
	beq	$a0, $a1, .LBB1_414
# %bb.408:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152.i
	ld.d	$a1, $sp, 128
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB1_414
.LBB1_409:
.Ltmp184:                               # EH_LABEL
	b	.LBB1_411
.LBB1_410:
.Ltmp108:                               # EH_LABEL
.LBB1_411:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100.i.i
	move	$s2, $a0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZNSt6vectorIN9benchmark7CPUInfo9CacheInfoESaIS2_EED2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB1_412:
.Ltmp33:                                # EH_LABEL
.LBB1_413:                              # %.critedge111.i
	move	$s2, $a0
.LBB1_414:                              # %.critedge111.i
	ld.d	$a0, $sp, 368
	beq	$a0, $s4, .LBB1_424
# %bb.415:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155.i
	ld.d	$a1, $sp, 384
	b	.LBB1_423
.LBB1_416:
.Ltmp30:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB1_417:                              # %.loopexit.split-lp.loopexit.i.i
.Ltmp173:                               # EH_LABEL
	b	.LBB1_465
.LBB1_418:
.Ltmp24:                                # EH_LABEL
	move	$s2, $a0
	b	.LBB1_421
.LBB1_419:
.Ltmp27:                                # EH_LABEL
	ld.d	$a2, $sp, 368
	move	$s2, $a0
	beq	$a2, $s4, .LBB1_421
# %bb.420:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2
	ld.d	$a0, $sp, 384
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_421:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
	ld.d	$a0, $sp, 952
	beq	$a0, $s0, .LBB1_424
# %bb.422:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i
	ld.d	$a1, $sp, 968
.LBB1_423:                              # %common.resume
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_424:                              # %common.resume
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB1_425:
.Ltmp145:                               # EH_LABEL
	move	$s2, $a0
	addi.d	$a0, $sp, 952
	pcaddu18i	$ra, %call36(_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev)
	jirl	$ra, $ra, 0
	b	.LBB1_435
.LBB1_426:                              # %.loopexit.split-lp.i
.Ltmp105:                               # EH_LABEL
	b	.LBB1_430
.LBB1_427:
.Ltmp176:                               # EH_LABEL
	ld.d	$a2, $sp, 1472
	move	$s2, $a0
	beq	$a2, $fp, .LBB1_469
# %bb.428:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23.i.i.i
	ld.d	$a0, $sp, 1488
	b	.LBB1_468
.LBB1_429:                              # %.loopexit.i7
.Ltmp64:                                # EH_LABEL
.LBB1_430:
	move	$s2, $a0
.LBB1_431:
	ld.d	$a0, $sp, 1504
	beq	$a0, $s3, .LBB1_452
# %bb.432:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228.i
	ld.d	$a1, $sp, 1520
	b	.LBB1_451
.LBB1_433:
.Ltmp131:                               # EH_LABEL
	move	$s2, $a0
	b	.LBB1_476
.LBB1_434:
.Ltmp142:                               # EH_LABEL
	move	$s2, $a0
.LBB1_435:                              # %.body.i.i27
	ld.d	$a0, $sp, 1504
	beq	$a0, $s3, .LBB1_476
# %bb.436:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42.i.i
	ld.d	$a1, $sp, 1520
	b	.LBB1_474
.LBB1_437:
.Ltmp154:                               # EH_LABEL
	ld.d	$a2, $sp, 952
	move	$s2, $a0
	beq	$a2, $s1, .LBB1_472
# %bb.438:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48.i.i
	ld.d	$a0, $sp, 968
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	b	.LBB1_471
.LBB1_439:
.Ltmp134:                               # EH_LABEL
	ld.d	$a2, $sp, 952
	move	$s2, $a0
	beq	$a2, $s1, .LBB1_476
# %bb.440:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35.i.i
	ld.d	$a0, $sp, 968
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	b	.LBB1_475
.LBB1_441:
.Ltmp139:                               # EH_LABEL
	move	$s2, $a0
	b	.LBB1_476
.LBB1_442:
.Ltmp151:                               # EH_LABEL
	move	$s2, $a0
	b	.LBB1_472
.LBB1_443:                              # %.loopexit.split-lp114.i.i
.Ltmp157:                               # EH_LABEL
	move	$s2, $a0
	b	.LBB1_472
.LBB1_444:                              # %.loopexit.split-lp.i.i
.Ltmp203:                               # EH_LABEL
	b	.LBB1_448
.LBB1_445:                              # %.loopexit113.i.i
.Ltmp181:                               # EH_LABEL
	move	$s2, $a0
	b	.LBB1_472
.LBB1_446:                              # %.loopexit108.i.i
.Ltmp124:                               # EH_LABEL
	move	$s2, $a0
	b	.LBB1_476
.LBB1_447:                              # %.loopexit.i.i
.Ltmp15:                                # EH_LABEL
.LBB1_448:
	move	$s2, $a0
	ld.d	$a0, $sp, 144
	beq	$a0, $s3, .LBB1_388
.LBB1_449:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44.i.i
	ld.d	$a1, $sp, 160
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 368
	addi.d	$a1, $sp, 384
	beq	$a0, $a1, .LBB1_452
.LBB1_450:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47.i.i
	ld.d	$a1, $sp, 384
.LBB1_451:
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_452:
	addi.d	$a0, $sp, 952
	pcaddu18i	$ra, %call36(_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB1_453:
.Ltmp111:                               # EH_LABEL
	move	$s2, $a0
	ld.d	$a0, $sp, 144
	addi.d	$a1, $sp, 160
	beq	$a0, $a1, .LBB1_458
	b	.LBB1_480
.LBB1_454:
.Ltmp114:                               # EH_LABEL
	move	$s2, $a0
	ld.d	$a0, $sp, 888
	addi.d	$a1, $sp, 904
	beq	$a0, $a1, .LBB1_457
	b	.LBB1_479
.LBB1_455:
.Ltmp117:                               # EH_LABEL
	ld.d	$a2, $sp, 952
	move	$s2, $a0
	bne	$a2, $s1, .LBB1_461
# %bb.456:
	ld.d	$a0, $sp, 888
	addi.d	$a1, $sp, 904
	bne	$a0, $a1, .LBB1_479
.LBB1_457:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93.i.i
	ld.d	$a0, $sp, 144
	addi.d	$a1, $sp, 160
	bne	$a0, $a1, .LBB1_480
.LBB1_458:                              # %_ZN9benchmark7CPUInfo9CacheInfoD2Ev.exit97.i.i
	ld.d	$a0, $sp, 920
	addi.d	$a1, $sp, 936
	beq	$a0, $a1, .LBB1_460
.LBB1_459:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98.i.i
	ld.d	$a1, $sp, 936
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_460:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100.i.i
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZNSt6vectorIN9benchmark7CPUInfo9CacheInfoESaIS2_EED2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB1_461:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i.i20
	ld.d	$a0, $sp, 968
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 888
	addi.d	$a1, $sp, 904
	beq	$a0, $a1, .LBB1_457
	b	.LBB1_479
.LBB1_462:                              # %.loopexit.split-lp109.i.i
.Ltmp148:                               # EH_LABEL
	move	$s2, $a0
	b	.LBB1_476
.LBB1_463:                              # %.loopexit.split-lp.loopexit.split-lp.i.i
.Ltmp167:                               # EH_LABEL
	b	.LBB1_465
.LBB1_464:                              # %.loopexit.i.i31
.Ltmp170:                               # EH_LABEL
.LBB1_465:                              # %.body61.i.i
	move	$s2, $a0
	b	.LBB1_469
.LBB1_466:
.Ltmp164:                               # EH_LABEL
	ld.d	$a2, $sp, 952
	move	$s2, $a0
	beq	$a2, $s1, .LBB1_469
# %bb.467:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17.i.i.i
	ld.d	$a0, $sp, 968
.LBB1_468:                              # %.body61.i.i
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_469:                              # %.body61.i.i
	ld.d	$a0, $sp, 272
	addi.d	$a1, $sp, 288
	beq	$a0, $a1, .LBB1_472
# %bb.470:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82.i.i
	ld.d	$a1, $sp, 288
	addi.d	$a1, $a1, 1
.LBB1_471:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84.i.i
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_472:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84.i.i
	ld.d	$a0, $sp, 304
	addi.d	$a1, $sp, 320
	beq	$a0, $a1, .LBB1_476
# %bb.473:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85.i.i
	ld.d	$a1, $sp, 320
.LBB1_474:
	addi.d	$a1, $a1, 1
.LBB1_475:
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_476:
	ld.d	$a0, $sp, 336
	addi.d	$a1, $sp, 352
	beq	$a0, $a1, .LBB1_478
# %bb.477:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88.i.i
	ld.d	$a1, $sp, 352
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_478:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90.i.i
	addi.d	$a0, $sp, 368
	pcaddu18i	$ra, %call36(_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 888
	addi.d	$a1, $sp, 904
	beq	$a0, $a1, .LBB1_457
.LBB1_479:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91.i.i
	ld.d	$a1, $sp, 904
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 144
	addi.d	$a1, $sp, 160
	beq	$a0, $a1, .LBB1_458
.LBB1_480:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i94.i.i
	ld.d	$a1, $sp, 160
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 920
	addi.d	$a1, $sp, 936
	bne	$a0, $a1, .LBB1_459
	b	.LBB1_460
.Lfunc_end1:
	.size	_ZN9benchmark7CPUInfoC2Ev, .Lfunc_end1-_ZN9benchmark7CPUInfoC2Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table1:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Lfunc_begin1-.Lfunc_begin1    # >> Call Site 1 <<
	.uleb128 .Ltmp9-.Lfunc_begin1           #   Call between .Lfunc_begin1 and .Ltmp9
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp9-.Lfunc_begin1           # >> Call Site 2 <<
	.uleb128 .Ltmp14-.Ltmp9                 #   Call between .Ltmp9 and .Ltmp14
	.uleb128 .Ltmp15-.Lfunc_begin1          #     jumps to .Ltmp15
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp14-.Lfunc_begin1          # >> Call Site 3 <<
	.uleb128 .Ltmp193-.Ltmp14               #   Call between .Ltmp14 and .Ltmp193
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp193-.Lfunc_begin1         # >> Call Site 4 <<
	.uleb128 .Ltmp194-.Ltmp193              #   Call between .Ltmp193 and .Ltmp194
	.uleb128 .Ltmp195-.Lfunc_begin1         #     jumps to .Ltmp195
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp194-.Lfunc_begin1         # >> Call Site 5 <<
	.uleb128 .Ltmp6-.Ltmp194                #   Call between .Ltmp194 and .Ltmp6
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp6-.Lfunc_begin1           # >> Call Site 6 <<
	.uleb128 .Ltmp7-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp7
	.uleb128 .Ltmp8-.Lfunc_begin1           #     jumps to .Ltmp8
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp7-.Lfunc_begin1           # >> Call Site 7 <<
	.uleb128 .Ltmp18-.Ltmp7                 #   Call between .Ltmp7 and .Ltmp18
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp18-.Lfunc_begin1          # >> Call Site 8 <<
	.uleb128 .Ltmp21-.Ltmp18                #   Call between .Ltmp18 and .Ltmp21
	.uleb128 .Ltmp203-.Lfunc_begin1         #     jumps to .Ltmp203
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp21-.Lfunc_begin1          # >> Call Site 9 <<
	.uleb128 .Ltmp22-.Ltmp21                #   Call between .Ltmp21 and .Ltmp22
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp22-.Lfunc_begin1          # >> Call Site 10 <<
	.uleb128 .Ltmp23-.Ltmp22                #   Call between .Ltmp22 and .Ltmp23
	.uleb128 .Ltmp24-.Lfunc_begin1          #     jumps to .Ltmp24
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp25-.Lfunc_begin1          # >> Call Site 11 <<
	.uleb128 .Ltmp26-.Ltmp25                #   Call between .Ltmp25 and .Ltmp26
	.uleb128 .Ltmp27-.Lfunc_begin1          #     jumps to .Ltmp27
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp26-.Lfunc_begin1          # >> Call Site 12 <<
	.uleb128 .Ltmp28-.Ltmp26                #   Call between .Ltmp26 and .Ltmp28
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp28-.Lfunc_begin1          # >> Call Site 13 <<
	.uleb128 .Ltmp29-.Ltmp28                #   Call between .Ltmp28 and .Ltmp29
	.uleb128 .Ltmp30-.Lfunc_begin1          #     jumps to .Ltmp30
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp31-.Lfunc_begin1          # >> Call Site 14 <<
	.uleb128 .Ltmp32-.Ltmp31                #   Call between .Ltmp31 and .Ltmp32
	.uleb128 .Ltmp33-.Lfunc_begin1          #     jumps to .Ltmp33
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp32-.Lfunc_begin1          # >> Call Site 15 <<
	.uleb128 .Ltmp34-.Ltmp32                #   Call between .Ltmp32 and .Ltmp34
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp34-.Lfunc_begin1          # >> Call Site 16 <<
	.uleb128 .Ltmp35-.Ltmp34                #   Call between .Ltmp34 and .Ltmp35
	.uleb128 .Ltmp36-.Lfunc_begin1          #     jumps to .Ltmp36
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp35-.Lfunc_begin1          # >> Call Site 17 <<
	.uleb128 .Ltmp37-.Ltmp35                #   Call between .Ltmp35 and .Ltmp37
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp37-.Lfunc_begin1          # >> Call Site 18 <<
	.uleb128 .Ltmp38-.Ltmp37                #   Call between .Ltmp37 and .Ltmp38
	.uleb128 .Ltmp39-.Lfunc_begin1          #     jumps to .Ltmp39
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp40-.Lfunc_begin1          # >> Call Site 19 <<
	.uleb128 .Ltmp41-.Ltmp40                #   Call between .Ltmp40 and .Ltmp41
	.uleb128 .Ltmp42-.Lfunc_begin1          #     jumps to .Ltmp42
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp41-.Lfunc_begin1          # >> Call Site 20 <<
	.uleb128 .Ltmp43-.Ltmp41                #   Call between .Ltmp41 and .Ltmp43
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp43-.Lfunc_begin1          # >> Call Site 21 <<
	.uleb128 .Ltmp44-.Ltmp43                #   Call between .Ltmp43 and .Ltmp44
	.uleb128 .Ltmp45-.Lfunc_begin1          #     jumps to .Ltmp45
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp44-.Lfunc_begin1          # >> Call Site 22 <<
	.uleb128 .Ltmp46-.Ltmp44                #   Call between .Ltmp44 and .Ltmp46
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp46-.Lfunc_begin1          # >> Call Site 23 <<
	.uleb128 .Ltmp47-.Ltmp46                #   Call between .Ltmp46 and .Ltmp47
	.uleb128 .Ltmp48-.Lfunc_begin1          #     jumps to .Ltmp48
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp49-.Lfunc_begin1          # >> Call Site 24 <<
	.uleb128 .Ltmp50-.Ltmp49                #   Call between .Ltmp49 and .Ltmp50
	.uleb128 .Ltmp51-.Lfunc_begin1          #     jumps to .Ltmp51
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp50-.Lfunc_begin1          # >> Call Site 25 <<
	.uleb128 .Ltmp52-.Ltmp50                #   Call between .Ltmp50 and .Ltmp52
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp52-.Lfunc_begin1          # >> Call Site 26 <<
	.uleb128 .Ltmp53-.Ltmp52                #   Call between .Ltmp52 and .Ltmp53
	.uleb128 .Ltmp54-.Lfunc_begin1          #     jumps to .Ltmp54
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp53-.Lfunc_begin1          # >> Call Site 27 <<
	.uleb128 .Ltmp58-.Ltmp53                #   Call between .Ltmp53 and .Ltmp58
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp58-.Lfunc_begin1          # >> Call Site 28 <<
	.uleb128 .Ltmp63-.Ltmp58                #   Call between .Ltmp58 and .Ltmp63
	.uleb128 .Ltmp64-.Lfunc_begin1          #     jumps to .Ltmp64
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp63-.Lfunc_begin1          # >> Call Site 29 <<
	.uleb128 .Ltmp90-.Ltmp63                #   Call between .Ltmp63 and .Ltmp90
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp90-.Lfunc_begin1          # >> Call Site 30 <<
	.uleb128 .Ltmp91-.Ltmp90                #   Call between .Ltmp90 and .Ltmp91
	.uleb128 .Ltmp92-.Lfunc_begin1          #     jumps to .Ltmp92
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp91-.Lfunc_begin1          # >> Call Site 31 <<
	.uleb128 .Ltmp55-.Ltmp91                #   Call between .Ltmp91 and .Ltmp55
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp55-.Lfunc_begin1          # >> Call Site 32 <<
	.uleb128 .Ltmp56-.Ltmp55                #   Call between .Ltmp55 and .Ltmp56
	.uleb128 .Ltmp57-.Lfunc_begin1          #     jumps to .Ltmp57
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp85-.Lfunc_begin1          # >> Call Site 33 <<
	.uleb128 .Ltmp86-.Ltmp85                #   Call between .Ltmp85 and .Ltmp86
	.uleb128 .Ltmp105-.Lfunc_begin1         #     jumps to .Ltmp105
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp86-.Lfunc_begin1          # >> Call Site 34 <<
	.uleb128 .Ltmp106-.Ltmp86               #   Call between .Ltmp86 and .Ltmp106
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp106-.Lfunc_begin1         # >> Call Site 35 <<
	.uleb128 .Ltmp107-.Ltmp106              #   Call between .Ltmp106 and .Ltmp107
	.uleb128 .Ltmp108-.Lfunc_begin1         #     jumps to .Ltmp108
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp109-.Lfunc_begin1         # >> Call Site 36 <<
	.uleb128 .Ltmp110-.Ltmp109              #   Call between .Ltmp109 and .Ltmp110
	.uleb128 .Ltmp111-.Lfunc_begin1         #     jumps to .Ltmp111
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp112-.Lfunc_begin1         # >> Call Site 37 <<
	.uleb128 .Ltmp113-.Ltmp112              #   Call between .Ltmp112 and .Ltmp113
	.uleb128 .Ltmp114-.Lfunc_begin1         #     jumps to .Ltmp114
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp115-.Lfunc_begin1         # >> Call Site 38 <<
	.uleb128 .Ltmp116-.Ltmp115              #   Call between .Ltmp115 and .Ltmp116
	.uleb128 .Ltmp117-.Lfunc_begin1         #     jumps to .Ltmp117
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp116-.Lfunc_begin1         # >> Call Site 39 <<
	.uleb128 .Ltmp118-.Ltmp116              #   Call between .Ltmp116 and .Ltmp118
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp118-.Lfunc_begin1         # >> Call Site 40 <<
	.uleb128 .Ltmp123-.Ltmp118              #   Call between .Ltmp118 and .Ltmp123
	.uleb128 .Ltmp124-.Lfunc_begin1         #     jumps to .Ltmp124
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp129-.Lfunc_begin1         # >> Call Site 41 <<
	.uleb128 .Ltmp130-.Ltmp129              #   Call between .Ltmp129 and .Ltmp130
	.uleb128 .Ltmp131-.Lfunc_begin1         #     jumps to .Ltmp131
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp132-.Lfunc_begin1         # >> Call Site 42 <<
	.uleb128 .Ltmp133-.Ltmp132              #   Call between .Ltmp132 and .Ltmp133
	.uleb128 .Ltmp134-.Lfunc_begin1         #     jumps to .Ltmp134
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp133-.Lfunc_begin1         # >> Call Site 43 <<
	.uleb128 .Ltmp137-.Ltmp133              #   Call between .Ltmp133 and .Ltmp137
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp137-.Lfunc_begin1         # >> Call Site 44 <<
	.uleb128 .Ltmp138-.Ltmp137              #   Call between .Ltmp137 and .Ltmp138
	.uleb128 .Ltmp139-.Lfunc_begin1         #     jumps to .Ltmp139
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp140-.Lfunc_begin1         # >> Call Site 45 <<
	.uleb128 .Ltmp141-.Ltmp140              #   Call between .Ltmp140 and .Ltmp141
	.uleb128 .Ltmp142-.Lfunc_begin1         #     jumps to .Ltmp142
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp141-.Lfunc_begin1         # >> Call Site 46 <<
	.uleb128 .Ltmp143-.Ltmp141              #   Call between .Ltmp141 and .Ltmp143
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp143-.Lfunc_begin1         # >> Call Site 47 <<
	.uleb128 .Ltmp144-.Ltmp143              #   Call between .Ltmp143 and .Ltmp144
	.uleb128 .Ltmp145-.Lfunc_begin1         #     jumps to .Ltmp145
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp144-.Lfunc_begin1         # >> Call Site 48 <<
	.uleb128 .Ltmp149-.Ltmp144              #   Call between .Ltmp144 and .Ltmp149
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp149-.Lfunc_begin1         # >> Call Site 49 <<
	.uleb128 .Ltmp150-.Ltmp149              #   Call between .Ltmp149 and .Ltmp150
	.uleb128 .Ltmp151-.Lfunc_begin1         #     jumps to .Ltmp151
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp152-.Lfunc_begin1         # >> Call Site 50 <<
	.uleb128 .Ltmp153-.Ltmp152              #   Call between .Ltmp152 and .Ltmp153
	.uleb128 .Ltmp154-.Lfunc_begin1         #     jumps to .Ltmp154
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp153-.Lfunc_begin1         # >> Call Site 51 <<
	.uleb128 .Ltmp158-.Ltmp153              #   Call between .Ltmp153 and .Ltmp158
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp158-.Lfunc_begin1         # >> Call Site 52 <<
	.uleb128 .Ltmp159-.Ltmp158              #   Call between .Ltmp158 and .Ltmp159
	.uleb128 .Ltmp181-.Lfunc_begin1         #     jumps to .Ltmp181
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp159-.Lfunc_begin1         # >> Call Site 53 <<
	.uleb128 .Ltmp160-.Ltmp159              #   Call between .Ltmp159 and .Ltmp160
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp160-.Lfunc_begin1         # >> Call Site 54 <<
	.uleb128 .Ltmp161-.Ltmp160              #   Call between .Ltmp160 and .Ltmp161
	.uleb128 .Ltmp170-.Lfunc_begin1         #     jumps to .Ltmp170
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp161-.Lfunc_begin1         # >> Call Site 55 <<
	.uleb128 .Ltmp162-.Ltmp161              #   Call between .Ltmp161 and .Ltmp162
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp162-.Lfunc_begin1         # >> Call Site 56 <<
	.uleb128 .Ltmp163-.Ltmp162              #   Call between .Ltmp162 and .Ltmp163
	.uleb128 .Ltmp164-.Lfunc_begin1         #     jumps to .Ltmp164
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp163-.Lfunc_begin1         # >> Call Site 57 <<
	.uleb128 .Ltmp168-.Ltmp163              #   Call between .Ltmp163 and .Ltmp168
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp168-.Lfunc_begin1         # >> Call Site 58 <<
	.uleb128 .Ltmp169-.Ltmp168              #   Call between .Ltmp168 and .Ltmp169
	.uleb128 .Ltmp170-.Lfunc_begin1         #     jumps to .Ltmp170
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp169-.Lfunc_begin1         # >> Call Site 59 <<
	.uleb128 .Ltmp171-.Ltmp169              #   Call between .Ltmp169 and .Ltmp171
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp171-.Lfunc_begin1         # >> Call Site 60 <<
	.uleb128 .Ltmp172-.Ltmp171              #   Call between .Ltmp171 and .Ltmp172
	.uleb128 .Ltmp173-.Lfunc_begin1         #     jumps to .Ltmp173
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp172-.Lfunc_begin1         # >> Call Site 61 <<
	.uleb128 .Ltmp174-.Ltmp172              #   Call between .Ltmp172 and .Ltmp174
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp174-.Lfunc_begin1         # >> Call Site 62 <<
	.uleb128 .Ltmp175-.Ltmp174              #   Call between .Ltmp174 and .Ltmp175
	.uleb128 .Ltmp176-.Lfunc_begin1         #     jumps to .Ltmp176
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp175-.Lfunc_begin1         # >> Call Site 63 <<
	.uleb128 .Ltmp177-.Ltmp175              #   Call between .Ltmp175 and .Ltmp177
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp177-.Lfunc_begin1         # >> Call Site 64 <<
	.uleb128 .Ltmp180-.Ltmp177              #   Call between .Ltmp177 and .Ltmp180
	.uleb128 .Ltmp181-.Lfunc_begin1         #     jumps to .Ltmp181
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp180-.Lfunc_begin1         # >> Call Site 65 <<
	.uleb128 .Ltmp182-.Ltmp180              #   Call between .Ltmp180 and .Ltmp182
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp182-.Lfunc_begin1         # >> Call Site 66 <<
	.uleb128 .Ltmp183-.Ltmp182              #   Call between .Ltmp182 and .Ltmp183
	.uleb128 .Ltmp184-.Lfunc_begin1         #     jumps to .Ltmp184
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp183-.Lfunc_begin1         # >> Call Site 67 <<
	.uleb128 .Ltmp185-.Ltmp183              #   Call between .Ltmp183 and .Ltmp185
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp185-.Lfunc_begin1         # >> Call Site 68 <<
	.uleb128 .Ltmp186-.Ltmp185              #   Call between .Ltmp185 and .Ltmp186
	.uleb128 .Ltmp187-.Lfunc_begin1         #     jumps to .Ltmp187
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp65-.Lfunc_begin1          # >> Call Site 69 <<
	.uleb128 .Ltmp68-.Ltmp65                #   Call between .Ltmp65 and .Ltmp68
	.uleb128 .Ltmp105-.Lfunc_begin1         #     jumps to .Ltmp105
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp68-.Lfunc_begin1          # >> Call Site 70 <<
	.uleb128 .Ltmp69-.Ltmp68                #   Call between .Ltmp68 and .Ltmp69
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp69-.Lfunc_begin1          # >> Call Site 71 <<
	.uleb128 .Ltmp70-.Ltmp69                #   Call between .Ltmp69 and .Ltmp70
	.uleb128 .Ltmp84-.Lfunc_begin1          #     jumps to .Ltmp84
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp70-.Lfunc_begin1          # >> Call Site 72 <<
	.uleb128 .Ltmp71-.Ltmp70                #   Call between .Ltmp70 and .Ltmp71
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp71-.Lfunc_begin1          # >> Call Site 73 <<
	.uleb128 .Ltmp78-.Ltmp71                #   Call between .Ltmp71 and .Ltmp78
	.uleb128 .Ltmp84-.Lfunc_begin1          #     jumps to .Ltmp84
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp78-.Lfunc_begin1          # >> Call Site 74 <<
	.uleb128 .Ltmp165-.Ltmp78               #   Call between .Ltmp78 and .Ltmp165
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp165-.Lfunc_begin1         # >> Call Site 75 <<
	.uleb128 .Ltmp166-.Ltmp165              #   Call between .Ltmp165 and .Ltmp166
	.uleb128 .Ltmp167-.Lfunc_begin1         #     jumps to .Ltmp167
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp201-.Lfunc_begin1         # >> Call Site 76 <<
	.uleb128 .Ltmp202-.Ltmp201              #   Call between .Ltmp201 and .Ltmp202
	.uleb128 .Ltmp203-.Lfunc_begin1         #     jumps to .Ltmp203
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp155-.Lfunc_begin1         # >> Call Site 77 <<
	.uleb128 .Ltmp156-.Ltmp155              #   Call between .Ltmp155 and .Ltmp156
	.uleb128 .Ltmp157-.Lfunc_begin1         #     jumps to .Ltmp157
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp120-.Lfunc_begin1         # >> Call Site 78 <<
	.uleb128 .Ltmp136-.Ltmp120              #   Call between .Ltmp120 and .Ltmp136
	.uleb128 .Ltmp148-.Lfunc_begin1         #     jumps to .Ltmp148
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp103-.Lfunc_begin1         # >> Call Site 79 <<
	.uleb128 .Ltmp104-.Ltmp103              #   Call between .Ltmp103 and .Ltmp104
	.uleb128 .Ltmp105-.Lfunc_begin1         #     jumps to .Ltmp105
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp125-.Lfunc_begin1         # >> Call Site 80 <<
	.uleb128 .Ltmp128-.Ltmp125              #   Call between .Ltmp125 and .Ltmp128
	.uleb128 .Ltmp148-.Lfunc_begin1         #     jumps to .Ltmp148
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp16-.Lfunc_begin1          # >> Call Site 81 <<
	.uleb128 .Ltmp189-.Ltmp16               #   Call between .Ltmp16 and .Ltmp189
	.uleb128 .Ltmp203-.Lfunc_begin1         #     jumps to .Ltmp203
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp190-.Lfunc_begin1         # >> Call Site 82 <<
	.uleb128 .Ltmp191-.Ltmp190              #   Call between .Ltmp190 and .Ltmp191
	.uleb128 .Ltmp192-.Lfunc_begin1         #     jumps to .Ltmp192
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp87-.Lfunc_begin1          # >> Call Site 83 <<
	.uleb128 .Ltmp88-.Ltmp87                #   Call between .Ltmp87 and .Ltmp88
	.uleb128 .Ltmp89-.Lfunc_begin1          #     jumps to .Ltmp89
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp198-.Lfunc_begin1         # >> Call Site 84 <<
	.uleb128 .Ltmp197-.Ltmp198              #   Call between .Ltmp198 and .Ltmp197
	.uleb128 .Ltmp200-.Lfunc_begin1         #     jumps to .Ltmp200
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp82-.Lfunc_begin1          # >> Call Site 85 <<
	.uleb128 .Ltmp83-.Ltmp82                #   Call between .Ltmp82 and .Ltmp83
	.uleb128 .Ltmp84-.Lfunc_begin1          #     jumps to .Ltmp84
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp79-.Lfunc_begin1          # >> Call Site 86 <<
	.uleb128 .Ltmp80-.Ltmp79                #   Call between .Ltmp79 and .Ltmp80
	.uleb128 .Ltmp81-.Lfunc_begin1          #     jumps to .Ltmp81
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp100-.Lfunc_begin1         # >> Call Site 87 <<
	.uleb128 .Ltmp99-.Ltmp100               #   Call between .Ltmp100 and .Ltmp99
	.uleb128 .Ltmp102-.Lfunc_begin1         #     jumps to .Ltmp102
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp95-.Lfunc_begin1          # >> Call Site 88 <<
	.uleb128 .Ltmp94-.Ltmp95                #   Call between .Ltmp95 and .Ltmp94
	.uleb128 .Ltmp97-.Lfunc_begin1          #     jumps to .Ltmp97
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp94-.Lfunc_begin1          # >> Call Site 89 <<
	.uleb128 .Lfunc_end1-.Ltmp94            #   Call between .Ltmp94 and .Lfunc_end1
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
	.section	.text._ZNSt6vectorIN9benchmark7CPUInfo9CacheInfoESaIS2_EED2Ev,"axG",@progbits,_ZNSt6vectorIN9benchmark7CPUInfo9CacheInfoESaIS2_EED2Ev,comdat
	.hidden	_ZNSt6vectorIN9benchmark7CPUInfo9CacheInfoESaIS2_EED2Ev # -- Begin function _ZNSt6vectorIN9benchmark7CPUInfo9CacheInfoESaIS2_EED2Ev
	.weak	_ZNSt6vectorIN9benchmark7CPUInfo9CacheInfoESaIS2_EED2Ev
	.p2align	5
	.type	_ZNSt6vectorIN9benchmark7CPUInfo9CacheInfoESaIS2_EED2Ev,@function
_ZNSt6vectorIN9benchmark7CPUInfo9CacheInfoESaIS2_EED2Ev: # @_ZNSt6vectorIN9benchmark7CPUInfo9CacheInfoESaIS2_EED2Ev
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
	ld.d	$s0, $fp, 8
	beq	$a0, $s0, .LBB2_6
# %bb.1:                                # %.lr.ph.i.i.preheader
	addi.d	$s1, $a0, 16
	b	.LBB2_3
	.p2align	4, , 16
.LBB2_2:                                # %_ZSt8_DestroyIN9benchmark7CPUInfo9CacheInfoEEvPT_.exit.i.i
                                        #   in Loop: Header=BB2_3 Depth=1
	addi.d	$a0, $s1, 32
	addi.d	$s1, $s1, 48
	beq	$a0, $s0, .LBB2_5
.LBB2_3:                                # %.lr.ph.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, -16
	beq	$s1, $a0, .LBB2_2
# %bb.4:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a1, $s1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB2_2
.LBB2_5:                                # %_ZSt8_DestroyIPN9benchmark7CPUInfo9CacheInfoES2_EvT_S4_RSaIT0_E.exitthread-pre-split
	ld.d	$a0, $fp, 0
.LBB2_6:                                # %_ZSt8_DestroyIPN9benchmark7CPUInfo9CacheInfoES2_EvT_S4_RSaIT0_E.exit
	beqz	$a0, .LBB2_8
# %bb.7:
	ld.d	$a1, $fp, 16
	sub.d	$a1, $a1, $a0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB2_8:                                # %_ZNSt12_Vector_baseIN9benchmark7CPUInfo9CacheInfoESaIS2_EED2Ev.exit
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end2:
	.size	_ZNSt6vectorIN9benchmark7CPUInfo9CacheInfoESaIS2_EED2Ev, .Lfunc_end2-_ZNSt6vectorIN9benchmark7CPUInfo9CacheInfoESaIS2_EED2Ev
	.cfi_endproc
                                        # -- End function
	.text
	.hidden	_ZN9benchmark10SystemInfo3GetEv # -- Begin function _ZN9benchmark10SystemInfo3GetEv
	.globl	_ZN9benchmark10SystemInfo3GetEv
	.p2align	5
	.type	_ZN9benchmark10SystemInfo3GetEv,@function
_ZN9benchmark10SystemInfo3GetEv:        # @_ZN9benchmark10SystemInfo3GetEv
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
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark10SystemInfo3GetEvE4info)
	ld.b	$a0, $a0, %pc_lo12(_ZGVZN9benchmark10SystemInfo3GetEvE4info)
	dbar	20
	pcalau12i	$fp, %pc_hi20(_ZZN9benchmark10SystemInfo3GetEvE4info)
	beqz	$a0, .LBB3_2
.LBB3_1:
	ld.d	$a0, $fp, %pc_lo12(_ZZN9benchmark10SystemInfo3GetEvE4info)
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB3_2:
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark10SystemInfo3GetEvE4info)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN9benchmark10SystemInfo3GetEvE4info)
	pcaddu18i	$ra, %call36(__cxa_guard_acquire)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	beqz	$a0, .LBB3_1
# %bb.3:
.Ltmp204:                               # EH_LABEL
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp205:                               # EH_LABEL
# %bb.4:
.Ltmp207:                               # EH_LABEL
	move	$s0, $a0
	pcaddu18i	$ra, %call36(_ZN9benchmark10SystemInfoC2Ev)
	jirl	$ra, $ra, 0
.Ltmp208:                               # EH_LABEL
# %bb.5:
	st.d	$s0, $fp, %pc_lo12(_ZZN9benchmark10SystemInfo3GetEvE4info)
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark10SystemInfo3GetEvE4info)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN9benchmark10SystemInfo3GetEvE4info)
	pcaddu18i	$ra, %call36(__cxa_guard_release)
	jirl	$ra, $ra, 0
	b	.LBB3_1
.LBB3_6:
.Ltmp209:                               # EH_LABEL
	move	$fp, $a0
	ori	$a1, $zero, 32
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB3_8
.LBB3_7:
.Ltmp206:                               # EH_LABEL
	move	$fp, $a0
.LBB3_8:
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark10SystemInfo3GetEvE4info)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN9benchmark10SystemInfo3GetEvE4info)
	pcaddu18i	$ra, %call36(__cxa_guard_abort)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end3:
	.size	_ZN9benchmark10SystemInfo3GetEv, .Lfunc_end3-_ZN9benchmark10SystemInfo3GetEv
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table3:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Lfunc_begin2-.Lfunc_begin2    # >> Call Site 1 <<
	.uleb128 .Ltmp204-.Lfunc_begin2         #   Call between .Lfunc_begin2 and .Ltmp204
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp204-.Lfunc_begin2         # >> Call Site 2 <<
	.uleb128 .Ltmp205-.Ltmp204              #   Call between .Ltmp204 and .Ltmp205
	.uleb128 .Ltmp206-.Lfunc_begin2         #     jumps to .Ltmp206
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp207-.Lfunc_begin2         # >> Call Site 3 <<
	.uleb128 .Ltmp208-.Ltmp207              #   Call between .Ltmp207 and .Ltmp208
	.uleb128 .Ltmp209-.Lfunc_begin2         #     jumps to .Ltmp209
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp208-.Lfunc_begin2         # >> Call Site 4 <<
	.uleb128 .Lfunc_end3-.Ltmp208           #   Call between .Ltmp208 and .Lfunc_end3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.hidden	_ZN9benchmark10SystemInfoC2Ev   # -- Begin function _ZN9benchmark10SystemInfoC2Ev
	.globl	_ZN9benchmark10SystemInfoC2Ev
	.p2align	5
	.type	_ZN9benchmark10SystemInfoC2Ev,@function
_ZN9benchmark10SystemInfoC2Ev:          # @_ZN9benchmark10SystemInfoC2Ev
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -112
	.cfi_def_cfa_offset 112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	move	$fp, $a0
	addi.d	$a0, $sp, 8
	ori	$a1, $zero, 64
	pcaddu18i	$ra, %call36(gethostname)
	jirl	$ra, $ra, 0
	addi.d	$s1, $fp, 16
	st.d	$s1, $fp, 0
	beqz	$a0, .LBB4_2
# %bb.1:                                # %._crit_edge.i.i.i
	st.d	$zero, $fp, 8
	st.b	$zero, $fp, 16
	b	.LBB4_9
.LBB4_2:
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a0, $zero, 16
	st.d	$s0, $sp, 72
	bltu	$s0, $a0, .LBB4_4
# %bb.3:                                # %.noexc.i5.i
	addi.d	$a1, $sp, 72
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 72
	move	$s1, $a0
	st.d	$a0, $fp, 0
	st.d	$a1, $fp, 16
.LBB4_4:                                # %._crit_edge.i.i4.i
	beqz	$s0, .LBB4_8
# %bb.5:                                # %._crit_edge.i.i4.i
	ori	$a0, $zero, 1
	bne	$s0, $a0, .LBB4_7
# %bb.6:
	ld.b	$a0, $sp, 8
	st.b	$a0, $s1, 0
	b	.LBB4_8
.LBB4_7:
	addi.d	$a1, $sp, 8
	move	$a0, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_8:
	ld.d	$a0, $sp, 72
	ld.d	$a1, $fp, 0
	st.d	$a0, $fp, 8
	stx.b	$zero, $a1, $a0
.LBB4_9:                                # %_ZN9benchmark12_GLOBAL__N_113GetSystemNameB5cxx11Ev.exit
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.Lfunc_end4:
	.size	_ZN9benchmark10SystemInfoC2Ev, .Lfunc_end4-_ZN9benchmark10SystemInfoC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text.unlikely.,"ax",@progbits
	.p2align	5                               # -- Begin function _ZN9benchmark12_GLOBAL__N_116PrintErrorAndDieIJRA30_KcEEEvDpOT_
	.type	_ZN9benchmark12_GLOBAL__N_116PrintErrorAndDieIJRA30_KcEEEvDpOT_,@function
_ZN9benchmark12_GLOBAL__N_116PrintErrorAndDieIJRA30_KcEEEvDpOT_: # @_ZN9benchmark12_GLOBAL__N_116PrintErrorAndDieIJRA30_KcEEEvDpOT_
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	pcaddu18i	$ra, %call36(_ZN9benchmark12_GLOBAL__N_18PrintImpIRA30_KcJEEEvRSoOT_DpOT0_)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end5:
	.size	_ZN9benchmark12_GLOBAL__N_116PrintErrorAndDieIJRA30_KcEEEvDpOT_, .Lfunc_end5-_ZN9benchmark12_GLOBAL__N_116PrintErrorAndDieIJRA30_KcEEEvDpOT_
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZN9benchmark12_GLOBAL__N_116PrintErrorAndDieIJRA39_KcEEEvDpOT_
	.type	_ZN9benchmark12_GLOBAL__N_116PrintErrorAndDieIJRA39_KcEEEvDpOT_,@function
_ZN9benchmark12_GLOBAL__N_116PrintErrorAndDieIJRA39_KcEEEvDpOT_: # @_ZN9benchmark12_GLOBAL__N_116PrintErrorAndDieIJRA39_KcEEEvDpOT_
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	pcaddu18i	$ra, %call36(_ZN9benchmark12_GLOBAL__N_18PrintImpIRA39_KcJEEEvRSoOT_DpOT0_)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end6:
	.size	_ZN9benchmark12_GLOBAL__N_116PrintErrorAndDieIJRA39_KcEEEvDpOT_, .Lfunc_end6-_ZN9benchmark12_GLOBAL__N_116PrintErrorAndDieIJRA39_KcEEEvDpOT_
	.cfi_endproc
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
.Lfunc_end7:
	.size	__clang_call_terminate, .Lfunc_end7-__clang_call_terminate
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZN9benchmark12_GLOBAL__N_18PrintImpIRA30_KcJEEEvRSoOT_DpOT0_
	.type	_ZN9benchmark12_GLOBAL__N_18PrintImpIRA30_KcJEEEvRSoOT_DpOT0_,@function
_ZN9benchmark12_GLOBAL__N_18PrintImpIRA30_KcJEEEvRSoOT_DpOT0_: # @_ZN9benchmark12_GLOBAL__N_18PrintImpIRA30_KcJEEEvRSoOT_DpOT0_
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$fp, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a1, $a0, %pc_lo12(.L.str.4)
	ori	$a2, $zero, 29
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.d	$fp, $a0, 240
	beqz	$fp, .LBB8_5
# %bb.1:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i
	ld.bu	$a0, $fp, 56
	beqz	$a0, .LBB8_3
# %bb.2:
	ld.bu	$a0, $fp, 67
	b	.LBB8_4
.LBB8_3:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $fp
	jirl	$ra, $a2, 0
.LBB8_4:                                # %_ZN9benchmark12_GLOBAL__N_18PrintImpERSo.exit
	ext.w.b	$a1, $a0
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZNSo5flushEv)
	jr	$t8
.LBB8_5:
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Lfunc_end8:
	.size	_ZN9benchmark12_GLOBAL__N_18PrintImpIRA30_KcJEEEvRSoOT_DpOT0_, .Lfunc_end8-_ZN9benchmark12_GLOBAL__N_18PrintImpIRA30_KcJEEEvRSoOT_DpOT0_
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZN9benchmark12_GLOBAL__N_18PrintImpIRA39_KcJEEEvRSoOT_DpOT0_
	.type	_ZN9benchmark12_GLOBAL__N_18PrintImpIRA39_KcJEEEvRSoOT_DpOT0_,@function
_ZN9benchmark12_GLOBAL__N_18PrintImpIRA39_KcJEEEvRSoOT_DpOT0_: # @_ZN9benchmark12_GLOBAL__N_18PrintImpIRA39_KcJEEEvRSoOT_DpOT0_
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$fp, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a1, $a0, %pc_lo12(.L.str.5)
	ori	$a2, $zero, 38
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.d	$fp, $a0, 240
	beqz	$fp, .LBB9_5
# %bb.1:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i
	ld.bu	$a0, $fp, 56
	beqz	$a0, .LBB9_3
# %bb.2:
	ld.bu	$a0, $fp, 67
	b	.LBB9_4
.LBB9_3:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $fp
	jirl	$ra, $a2, 0
.LBB9_4:                                # %_ZN9benchmark12_GLOBAL__N_18PrintImpERSo.exit
	ext.w.b	$a1, $a0
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZNSo5flushEv)
	jr	$t8
.LBB9_5:
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Lfunc_end9:
	.size	_ZN9benchmark12_GLOBAL__N_18PrintImpIRA39_KcJEEEvRSoOT_DpOT0_, .Lfunc_end9-_ZN9benchmark12_GLOBAL__N_18PrintImpIRA39_KcJEEEvRSoOT_DpOT0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9benchmark6StrCatIJRA28_KcRiRA26_S1_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_,"axG",@progbits,_ZN9benchmark6StrCatIJRA28_KcRiRA26_S1_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_,comdat
	.hidden	_ZN9benchmark6StrCatIJRA28_KcRiRA26_S1_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ # -- Begin function _ZN9benchmark6StrCatIJRA28_KcRiRA26_S1_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_
	.weak	_ZN9benchmark6StrCatIJRA28_KcRiRA26_S1_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_
	.p2align	5
	.type	_ZN9benchmark6StrCatIJRA28_KcRiRA26_S1_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_,@function
_ZN9benchmark6StrCatIJRA28_KcRiRA26_S1_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_: # @_ZN9benchmark6StrCatIJRA28_KcRiRA26_S1_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception3
# %bb.0:
	addi.d	$sp, $sp, -432
	.cfi_def_cfa_offset 432
	st.d	$ra, $sp, 424                   # 8-byte Folded Spill
	st.d	$fp, $sp, 416                   # 8-byte Folded Spill
	st.d	$s0, $sp, 408                   # 8-byte Folded Spill
	st.d	$s1, $sp, 400                   # 8-byte Folded Spill
	st.d	$s2, $sp, 392                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	move	$s0, $a3
	move	$s1, $a2
	move	$s2, $a1
	move	$fp, $a0
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$a2, $a0
.Ltmp210:                               # EH_LABEL
	addi.d	$a0, $sp, 16
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp211:                               # EH_LABEL
# %bb.1:                                # %.noexc
	ld.w	$a1, $s1, 0
.Ltmp212:                               # EH_LABEL
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp213:                               # EH_LABEL
# %bb.2:                                # %.noexc4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$a2, $a0
.Ltmp214:                               # EH_LABEL
	addi.d	$a0, $sp, 16
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp215:                               # EH_LABEL
# %bb.3:                                # %_ZN9benchmark9StrCatImpIRA28_KcJRiRA26_S1_EEERSoS7_OT_DpOT0_.exit
	ld.d	$a0, $sp, 64
	addi.d	$s0, $fp, 16
	st.d	$s0, $fp, 0
	st.d	$zero, $fp, 8
	st.b	$zero, $fp, 16
	beqz	$a0, .LBB10_6
# %bb.4:                                # %_ZN9benchmark9StrCatImpIRA28_KcJRiRA26_S1_EEERSoS7_OT_DpOT0_.exit
	ld.d	$a1, $sp, 48
	sltu	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	beqz	$a0, .LBB10_6
# %bb.5:
	ld.d	$a3, $sp, 56
	sub.d	$a4, $a0, $a3
.Ltmp217:                               # EH_LABEL
	move	$a0, $fp
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm)
	jirl	$ra, $ra, 0
.Ltmp218:                               # EH_LABEL
	b	.LBB10_7
.LBB10_6:
	addi.d	$a1, $sp, 96
.Ltmp219:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_)
	jirl	$ra, $ra, 0
.Ltmp220:                               # EH_LABEL
.LBB10_7:                               # %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
	pcalau12i	$a0, %got_pc_hi20(_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE)
	ld.d	$a1, $a0, 0
	st.d	$a1, $sp, 16
	ld.d	$a0, $a0, 24
	ld.d	$a1, $a1, -24
	addi.d	$a2, $sp, 16
	stx.d	$a0, $a1, $a2
	pcalau12i	$a0, %got_pc_hi20(_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE)
	ld.d	$a1, $a0, %got_pc_lo12(_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE)
	ld.d	$a0, $sp, 96
	addi.d	$a1, $a1, 16
	addi.d	$a2, $sp, 112
	st.d	$a1, $sp, 24
	beq	$a0, $a2, .LBB10_9
# %bb.8:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
	ld.d	$a1, $sp, 112
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB10_9:                               # %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
	pcalau12i	$a0, %got_pc_hi20(_ZTVSt15basic_streambufIcSt11char_traitsIcEE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTVSt15basic_streambufIcSt11char_traitsIcEE)
	addi.d	$a0, $a0, 16
	st.d	$a0, $sp, 24
	addi.d	$a0, $sp, 80
	pcaddu18i	$ra, %call36(_ZNSt6localeD1Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 128
	pcaddu18i	$ra, %call36(_ZNSt8ios_baseD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 392                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 400                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 408                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 416                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 424                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 432
	ret
.LBB10_10:
.Ltmp221:                               # EH_LABEL
	ld.d	$a2, $fp, 0
	move	$fp, $a0
	beq	$a2, $s0, .LBB10_13
# %bb.11:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
	ld.d	$a0, $s0, 0
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB10_12:
.Ltmp216:                               # EH_LABEL
	move	$fp, $a0
.LBB10_13:                              # %.body
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end10:
	.size	_ZN9benchmark6StrCatIJRA28_KcRiRA26_S1_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_, .Lfunc_end10-_ZN9benchmark6StrCatIJRA28_KcRiRA26_S1_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_
	.cfi_endproc
	.section	.gcc_except_table._ZN9benchmark6StrCatIJRA28_KcRiRA26_S1_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_,"aG",@progbits,_ZN9benchmark6StrCatIJRA28_KcRiRA26_S1_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_,comdat
	.p2align	2, 0x0
GCC_except_table10:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Lfunc_begin3-.Lfunc_begin3    # >> Call Site 1 <<
	.uleb128 .Ltmp210-.Lfunc_begin3         #   Call between .Lfunc_begin3 and .Ltmp210
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp210-.Lfunc_begin3         # >> Call Site 2 <<
	.uleb128 .Ltmp213-.Ltmp210              #   Call between .Ltmp210 and .Ltmp213
	.uleb128 .Ltmp216-.Lfunc_begin3         #     jumps to .Ltmp216
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp213-.Lfunc_begin3         # >> Call Site 3 <<
	.uleb128 .Ltmp214-.Ltmp213              #   Call between .Ltmp213 and .Ltmp214
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp214-.Lfunc_begin3         # >> Call Site 4 <<
	.uleb128 .Ltmp215-.Ltmp214              #   Call between .Ltmp214 and .Ltmp215
	.uleb128 .Ltmp216-.Lfunc_begin3         #     jumps to .Ltmp216
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp217-.Lfunc_begin3         # >> Call Site 5 <<
	.uleb128 .Ltmp220-.Ltmp217              #   Call between .Ltmp217 and .Ltmp220
	.uleb128 .Ltmp221-.Lfunc_begin3         #     jumps to .Ltmp221
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp220-.Lfunc_begin3         # >> Call Site 6 <<
	.uleb128 .Lfunc_end10-.Ltmp220          #   Call between .Ltmp220 and .Lfunc_end10
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZN9benchmark12_GLOBAL__N_112ReadFromFileINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKS7_PT_
	.type	_ZN9benchmark12_GLOBAL__N_112ReadFromFileINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKS7_PT_,@function
_ZN9benchmark12_GLOBAL__N_112ReadFromFileINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKS7_PT_: # @_ZN9benchmark12_GLOBAL__N_112ReadFromFileINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKS7_PT_
.Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception4
# %bb.0:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
	addi.d	$sp, $sp, -560
	.cfi_def_cfa_offset 560
	st.d	$ra, $sp, 552                   # 8-byte Folded Spill
	st.d	$fp, $sp, 544                   # 8-byte Folded Spill
	st.d	$s0, $sp, 536                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	move	$fp, $a1
	move	$s0, $a0
	addi.d	$a1, $sp, 32
	st.d	$a1, $sp, 16
	addi.d	$a2, $sp, 16
	st.b	$zero, $sp, 32
	move	$a0, $a1
	beq	$a2, $fp, .LBB11_2
# %bb.1:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
	ld.d	$a0, $fp, 0
	st.d	$zero, $fp, 8
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 16
.LBB11_2:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
	st.d	$zero, $sp, 24
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 16
	beq	$a0, $a1, .LBB11_4
# %bb.3:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB11_4:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$a1, $s0, 0
	addi.d	$a0, $sp, 16
	ori	$a2, $zero, 8
	pcaddu18i	$ra, %call36(_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 136
	pcaddu18i	$ra, %call36(_ZNKSt12__basic_fileIcE7is_openEv)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB11_7
# %bb.5:
.Ltmp222:                               # EH_LABEL
	addi.d	$a0, $sp, 16
	addi.d	$s0, $sp, 16
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE)
	jirl	$ra, $ra, 0
.Ltmp223:                               # EH_LABEL
# %bb.6:
	ld.d	$a0, $sp, 16
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.w	$a0, $a0, 32
	sltui	$fp, $a0, 1
	b	.LBB11_8
.LBB11_7:
	move	$fp, $zero
.LBB11_8:
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$s0, $sp, 536                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 544                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 552                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 560
	ret
.LBB11_9:
.Ltmp224:                               # EH_LABEL
	move	$fp, $a0
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end11:
	.size	_ZN9benchmark12_GLOBAL__N_112ReadFromFileINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKS7_PT_, .Lfunc_end11-_ZN9benchmark12_GLOBAL__N_112ReadFromFileINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKS7_PT_
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table11:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Lfunc_begin4-.Lfunc_begin4    # >> Call Site 1 <<
	.uleb128 .Ltmp222-.Lfunc_begin4         #   Call between .Lfunc_begin4 and .Ltmp222
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp222-.Lfunc_begin4         # >> Call Site 2 <<
	.uleb128 .Ltmp223-.Ltmp222              #   Call between .Ltmp222 and .Ltmp223
	.uleb128 .Ltmp224-.Lfunc_begin4         #     jumps to .Ltmp224
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp223-.Lfunc_begin4         # >> Call Site 3 <<
	.uleb128 .Lfunc_end11-.Ltmp223          #   Call between .Ltmp223 and .Lfunc_end11
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end4:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text.unlikely.,"ax",@progbits
	.p2align	5                               # -- Begin function _ZN9benchmark12_GLOBAL__N_116PrintErrorAndDieIJRA32_KcEEEvDpOT_
	.type	_ZN9benchmark12_GLOBAL__N_116PrintErrorAndDieIJRA32_KcEEEvDpOT_,@function
_ZN9benchmark12_GLOBAL__N_116PrintErrorAndDieIJRA32_KcEEEvDpOT_: # @_ZN9benchmark12_GLOBAL__N_116PrintErrorAndDieIJRA32_KcEEEvDpOT_
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	pcaddu18i	$ra, %call36(_ZN9benchmark12_GLOBAL__N_18PrintImpIRA32_KcJEEEvRSoOT_DpOT0_)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end12:
	.size	_ZN9benchmark12_GLOBAL__N_116PrintErrorAndDieIJRA32_KcEEEvDpOT_, .Lfunc_end12-_ZN9benchmark12_GLOBAL__N_116PrintErrorAndDieIJRA32_KcEEEvDpOT_
	.cfi_endproc
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZN9benchmark12_GLOBAL__N_18PrintImpIRA32_KcJEEEvRSoOT_DpOT0_
	.type	_ZN9benchmark12_GLOBAL__N_18PrintImpIRA32_KcJEEEvRSoOT_DpOT0_,@function
_ZN9benchmark12_GLOBAL__N_18PrintImpIRA32_KcJEEEvRSoOT_DpOT0_: # @_ZN9benchmark12_GLOBAL__N_18PrintImpIRA32_KcJEEEvRSoOT_DpOT0_
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$fp, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a1, $a0, %pc_lo12(.L.str.26)
	ori	$a2, $zero, 31
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.d	$fp, $a0, 240
	beqz	$fp, .LBB13_5
# %bb.1:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i
	ld.bu	$a0, $fp, 56
	beqz	$a0, .LBB13_3
# %bb.2:
	ld.bu	$a0, $fp, 67
	b	.LBB13_4
.LBB13_3:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $fp
	jirl	$ra, $a2, 0
.LBB13_4:                               # %_ZN9benchmark12_GLOBAL__N_18PrintImpERSo.exit
	ext.w.b	$a1, $a0
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZNSo5flushEv)
	jr	$t8
.LBB13_5:
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Lfunc_end13:
	.size	_ZN9benchmark12_GLOBAL__N_18PrintImpIRA32_KcJEEEvRSoOT_DpOT0_, .Lfunc_end13-_ZN9benchmark12_GLOBAL__N_18PrintImpIRA32_KcJEEEvRSoOT_DpOT0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9benchmark6StrCatIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA6_KciRA2_S8_EEES6_DpOT_,"axG",@progbits,_ZN9benchmark6StrCatIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA6_KciRA2_S8_EEES6_DpOT_,comdat
	.hidden	_ZN9benchmark6StrCatIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA6_KciRA2_S8_EEES6_DpOT_ # -- Begin function _ZN9benchmark6StrCatIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA6_KciRA2_S8_EEES6_DpOT_
	.weak	_ZN9benchmark6StrCatIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA6_KciRA2_S8_EEES6_DpOT_
	.p2align	5
	.type	_ZN9benchmark6StrCatIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA6_KciRA2_S8_EEES6_DpOT_,@function
_ZN9benchmark6StrCatIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA6_KciRA2_S8_EEES6_DpOT_: # @_ZN9benchmark6StrCatIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA6_KciRA2_S8_EEES6_DpOT_
.Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception5
# %bb.0:
	addi.d	$sp, $sp, -432
	.cfi_def_cfa_offset 432
	st.d	$ra, $sp, 424                   # 8-byte Folded Spill
	st.d	$fp, $sp, 416                   # 8-byte Folded Spill
	st.d	$s0, $sp, 408                   # 8-byte Folded Spill
	st.d	$s1, $sp, 400                   # 8-byte Folded Spill
	st.d	$s2, $sp, 392                   # 8-byte Folded Spill
	st.d	$s3, $sp, 384                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	move	$s0, $a4
	move	$s1, $a3
	move	$s2, $a2
	move	$s3, $a1
	move	$fp, $a0
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 0
	ld.d	$a2, $s3, 8
.Ltmp225:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp226:                               # EH_LABEL
# %bb.1:                                # %.noexc
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$a2, $a0
.Ltmp227:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp228:                               # EH_LABEL
# %bb.2:                                # %.noexc5
	ld.w	$a1, $s1, 0
.Ltmp229:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp230:                               # EH_LABEL
# %bb.3:                                # %.noexc6
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$a2, $a0
.Ltmp231:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp232:                               # EH_LABEL
# %bb.4:                                # %_ZN9benchmark9StrCatImpIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRA6_KciRA2_S8_EEERSoSD_OT_DpOT0_.exit
	ld.d	$a0, $sp, 56
	addi.d	$s0, $fp, 16
	st.d	$s0, $fp, 0
	st.d	$zero, $fp, 8
	st.b	$zero, $fp, 16
	beqz	$a0, .LBB14_7
# %bb.5:                                # %_ZN9benchmark9StrCatImpIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRA6_KciRA2_S8_EEERSoSD_OT_DpOT0_.exit
	ld.d	$a1, $sp, 40
	sltu	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	beqz	$a0, .LBB14_7
# %bb.6:
	ld.d	$a3, $sp, 48
	sub.d	$a4, $a0, $a3
.Ltmp234:                               # EH_LABEL
	move	$a0, $fp
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm)
	jirl	$ra, $ra, 0
.Ltmp235:                               # EH_LABEL
	b	.LBB14_8
.LBB14_7:
	addi.d	$a1, $sp, 88
.Ltmp236:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_)
	jirl	$ra, $ra, 0
.Ltmp237:                               # EH_LABEL
.LBB14_8:                               # %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
	pcalau12i	$a0, %got_pc_hi20(_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE)
	ld.d	$a1, $a0, 0
	st.d	$a1, $sp, 8
	ld.d	$a0, $a0, 24
	ld.d	$a1, $a1, -24
	addi.d	$a2, $sp, 8
	stx.d	$a0, $a1, $a2
	pcalau12i	$a0, %got_pc_hi20(_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE)
	ld.d	$a1, $a0, %got_pc_lo12(_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE)
	ld.d	$a0, $sp, 88
	addi.d	$a1, $a1, 16
	addi.d	$a2, $sp, 104
	st.d	$a1, $sp, 16
	beq	$a0, $a2, .LBB14_10
# %bb.9:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
	ld.d	$a1, $sp, 104
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB14_10:                              # %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
	pcalau12i	$a0, %got_pc_hi20(_ZTVSt15basic_streambufIcSt11char_traitsIcEE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTVSt15basic_streambufIcSt11char_traitsIcEE)
	addi.d	$a0, $a0, 16
	st.d	$a0, $sp, 16
	addi.d	$a0, $sp, 72
	pcaddu18i	$ra, %call36(_ZNSt6localeD1Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 120
	pcaddu18i	$ra, %call36(_ZNSt8ios_baseD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$s3, $sp, 384                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 392                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 400                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 408                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 416                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 424                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 432
	ret
.LBB14_11:
.Ltmp238:                               # EH_LABEL
	ld.d	$a2, $fp, 0
	move	$fp, $a0
	beq	$a2, $s0, .LBB14_14
# %bb.12:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
	ld.d	$a0, $s0, 0
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB14_13:
.Ltmp233:                               # EH_LABEL
	move	$fp, $a0
.LBB14_14:                              # %.body
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end14:
	.size	_ZN9benchmark6StrCatIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA6_KciRA2_S8_EEES6_DpOT_, .Lfunc_end14-_ZN9benchmark6StrCatIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA6_KciRA2_S8_EEES6_DpOT_
	.cfi_endproc
	.section	.gcc_except_table._ZN9benchmark6StrCatIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA6_KciRA2_S8_EEES6_DpOT_,"aG",@progbits,_ZN9benchmark6StrCatIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA6_KciRA2_S8_EEES6_DpOT_,comdat
	.p2align	2, 0x0
GCC_except_table14:
.Lexception5:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end5-.Lcst_begin5
.Lcst_begin5:
	.uleb128 .Lfunc_begin5-.Lfunc_begin5    # >> Call Site 1 <<
	.uleb128 .Ltmp225-.Lfunc_begin5         #   Call between .Lfunc_begin5 and .Ltmp225
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp225-.Lfunc_begin5         # >> Call Site 2 <<
	.uleb128 .Ltmp226-.Ltmp225              #   Call between .Ltmp225 and .Ltmp226
	.uleb128 .Ltmp233-.Lfunc_begin5         #     jumps to .Ltmp233
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp226-.Lfunc_begin5         # >> Call Site 3 <<
	.uleb128 .Ltmp227-.Ltmp226              #   Call between .Ltmp226 and .Ltmp227
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp227-.Lfunc_begin5         # >> Call Site 4 <<
	.uleb128 .Ltmp230-.Ltmp227              #   Call between .Ltmp227 and .Ltmp230
	.uleb128 .Ltmp233-.Lfunc_begin5         #     jumps to .Ltmp233
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp230-.Lfunc_begin5         # >> Call Site 5 <<
	.uleb128 .Ltmp231-.Ltmp230              #   Call between .Ltmp230 and .Ltmp231
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp231-.Lfunc_begin5         # >> Call Site 6 <<
	.uleb128 .Ltmp232-.Ltmp231              #   Call between .Ltmp231 and .Ltmp232
	.uleb128 .Ltmp233-.Lfunc_begin5         #     jumps to .Ltmp233
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp234-.Lfunc_begin5         # >> Call Site 7 <<
	.uleb128 .Ltmp237-.Ltmp234              #   Call between .Ltmp234 and .Ltmp237
	.uleb128 .Ltmp238-.Lfunc_begin5         #     jumps to .Ltmp238
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp237-.Lfunc_begin5         # >> Call Site 8 <<
	.uleb128 .Lfunc_end14-.Ltmp237          #   Call between .Ltmp237 and .Lfunc_end14
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end5:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN9benchmark6StrCatIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA5_KcEEES6_DpOT_,"axG",@progbits,_ZN9benchmark6StrCatIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA5_KcEEES6_DpOT_,comdat
	.hidden	_ZN9benchmark6StrCatIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA5_KcEEES6_DpOT_ # -- Begin function _ZN9benchmark6StrCatIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA5_KcEEES6_DpOT_
	.weak	_ZN9benchmark6StrCatIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA5_KcEEES6_DpOT_
	.p2align	5
	.type	_ZN9benchmark6StrCatIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA5_KcEEES6_DpOT_,@function
_ZN9benchmark6StrCatIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA5_KcEEES6_DpOT_: # @_ZN9benchmark6StrCatIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA5_KcEEES6_DpOT_
.Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception6
# %bb.0:
	addi.d	$sp, $sp, -416
	.cfi_def_cfa_offset 416
	st.d	$ra, $sp, 408                   # 8-byte Folded Spill
	st.d	$fp, $sp, 400                   # 8-byte Folded Spill
	st.d	$s0, $sp, 392                   # 8-byte Folded Spill
	st.d	$s1, $sp, 384                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	move	$s0, $a2
	move	$s1, $a1
	move	$fp, $a0
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.d	$a2, $s1, 8
.Ltmp239:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp240:                               # EH_LABEL
# %bb.1:                                # %.noexc
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$a2, $a0
.Ltmp241:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp242:                               # EH_LABEL
# %bb.2:                                # %_ZN9benchmark9StrCatImpIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRA5_KcEEERSoSB_OT_DpOT0_.exit
	ld.d	$a0, $sp, 56
	addi.d	$s0, $fp, 16
	st.d	$s0, $fp, 0
	st.d	$zero, $fp, 8
	st.b	$zero, $fp, 16
	beqz	$a0, .LBB15_5
# %bb.3:                                # %_ZN9benchmark9StrCatImpIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRA5_KcEEERSoSB_OT_DpOT0_.exit
	ld.d	$a1, $sp, 40
	sltu	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	beqz	$a0, .LBB15_5
# %bb.4:
	ld.d	$a3, $sp, 48
	sub.d	$a4, $a0, $a3
.Ltmp244:                               # EH_LABEL
	move	$a0, $fp
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm)
	jirl	$ra, $ra, 0
.Ltmp245:                               # EH_LABEL
	b	.LBB15_6
.LBB15_5:
	addi.d	$a1, $sp, 88
.Ltmp246:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_)
	jirl	$ra, $ra, 0
.Ltmp247:                               # EH_LABEL
.LBB15_6:                               # %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
	pcalau12i	$a0, %got_pc_hi20(_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE)
	ld.d	$a1, $a0, 0
	st.d	$a1, $sp, 8
	ld.d	$a0, $a0, 24
	ld.d	$a1, $a1, -24
	addi.d	$a2, $sp, 8
	stx.d	$a0, $a1, $a2
	pcalau12i	$a0, %got_pc_hi20(_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE)
	ld.d	$a1, $a0, %got_pc_lo12(_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE)
	ld.d	$a0, $sp, 88
	addi.d	$a1, $a1, 16
	addi.d	$a2, $sp, 104
	st.d	$a1, $sp, 16
	beq	$a0, $a2, .LBB15_8
# %bb.7:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
	ld.d	$a1, $sp, 104
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB15_8:                               # %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
	pcalau12i	$a0, %got_pc_hi20(_ZTVSt15basic_streambufIcSt11char_traitsIcEE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTVSt15basic_streambufIcSt11char_traitsIcEE)
	addi.d	$a0, $a0, 16
	st.d	$a0, $sp, 16
	addi.d	$a0, $sp, 72
	pcaddu18i	$ra, %call36(_ZNSt6localeD1Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 120
	pcaddu18i	$ra, %call36(_ZNSt8ios_baseD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 384                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 392                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 400                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 408                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 416
	ret
.LBB15_9:
.Ltmp248:                               # EH_LABEL
	ld.d	$a2, $fp, 0
	move	$fp, $a0
	beq	$a2, $s0, .LBB15_12
# %bb.10:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
	ld.d	$a0, $s0, 0
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB15_11:
.Ltmp243:                               # EH_LABEL
	move	$fp, $a0
.LBB15_12:                              # %.body
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end15:
	.size	_ZN9benchmark6StrCatIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA5_KcEEES6_DpOT_, .Lfunc_end15-_ZN9benchmark6StrCatIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA5_KcEEES6_DpOT_
	.cfi_endproc
	.section	.gcc_except_table._ZN9benchmark6StrCatIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA5_KcEEES6_DpOT_,"aG",@progbits,_ZN9benchmark6StrCatIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA5_KcEEES6_DpOT_,comdat
	.p2align	2, 0x0
GCC_except_table15:
.Lexception6:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end6-.Lcst_begin6
.Lcst_begin6:
	.uleb128 .Lfunc_begin6-.Lfunc_begin6    # >> Call Site 1 <<
	.uleb128 .Ltmp239-.Lfunc_begin6         #   Call between .Lfunc_begin6 and .Ltmp239
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp239-.Lfunc_begin6         # >> Call Site 2 <<
	.uleb128 .Ltmp240-.Ltmp239              #   Call between .Ltmp239 and .Ltmp240
	.uleb128 .Ltmp243-.Lfunc_begin6         #     jumps to .Ltmp243
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp240-.Lfunc_begin6         # >> Call Site 3 <<
	.uleb128 .Ltmp241-.Ltmp240              #   Call between .Ltmp240 and .Ltmp241
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp241-.Lfunc_begin6         # >> Call Site 4 <<
	.uleb128 .Ltmp242-.Ltmp241              #   Call between .Ltmp241 and .Ltmp242
	.uleb128 .Ltmp243-.Lfunc_begin6         #     jumps to .Ltmp243
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp244-.Lfunc_begin6         # >> Call Site 5 <<
	.uleb128 .Ltmp247-.Ltmp244              #   Call between .Ltmp244 and .Ltmp247
	.uleb128 .Ltmp248-.Lfunc_begin6         #     jumps to .Ltmp248
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp247-.Lfunc_begin6         # >> Call Site 6 <<
	.uleb128 .Lfunc_end15-.Ltmp247          #   Call between .Ltmp247 and .Lfunc_end15
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end6:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text.unlikely.,"ax",@progbits
	.p2align	5                               # -- Begin function _ZN9benchmark12_GLOBAL__N_116PrintErrorAndDieIJRA28_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA6_S2_EEEvDpOT_
	.type	_ZN9benchmark12_GLOBAL__N_116PrintErrorAndDieIJRA28_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA6_S2_EEEvDpOT_,@function
_ZN9benchmark12_GLOBAL__N_116PrintErrorAndDieIJRA28_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA6_S2_EEEvDpOT_: # @_ZN9benchmark12_GLOBAL__N_116PrintErrorAndDieIJRA28_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA6_S2_EEEvDpOT_
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	pcaddu18i	$ra, %call36(_ZN9benchmark12_GLOBAL__N_18PrintImpIRA28_KcJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA6_S2_EEEvRSoOT_DpOT0_)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end16:
	.size	_ZN9benchmark12_GLOBAL__N_116PrintErrorAndDieIJRA28_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA6_S2_EEEvDpOT_, .Lfunc_end16-_ZN9benchmark12_GLOBAL__N_116PrintErrorAndDieIJRA28_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA6_S2_EEEvDpOT_
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZN9benchmark12_GLOBAL__N_116PrintErrorAndDieIJRA54_KcEEEvDpOT_
	.type	_ZN9benchmark12_GLOBAL__N_116PrintErrorAndDieIJRA54_KcEEEvDpOT_,@function
_ZN9benchmark12_GLOBAL__N_116PrintErrorAndDieIJRA54_KcEEEvDpOT_: # @_ZN9benchmark12_GLOBAL__N_116PrintErrorAndDieIJRA54_KcEEEvDpOT_
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	pcaddu18i	$ra, %call36(_ZN9benchmark12_GLOBAL__N_18PrintImpIRA54_KcJEEEvRSoOT_DpOT0_)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end17:
	.size	_ZN9benchmark12_GLOBAL__N_116PrintErrorAndDieIJRA54_KcEEEvDpOT_, .Lfunc_end17-_ZN9benchmark12_GLOBAL__N_116PrintErrorAndDieIJRA54_KcEEEvDpOT_
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZN9benchmark12_GLOBAL__N_116PrintErrorAndDieIJRA43_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_
	.type	_ZN9benchmark12_GLOBAL__N_116PrintErrorAndDieIJRA43_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_,@function
_ZN9benchmark12_GLOBAL__N_116PrintErrorAndDieIJRA43_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_: # @_ZN9benchmark12_GLOBAL__N_116PrintErrorAndDieIJRA43_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	pcaddu18i	$ra, %call36(_ZN9benchmark12_GLOBAL__N_18PrintImpIRA43_KcJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRSoOT_DpOT0_)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end18:
	.size	_ZN9benchmark12_GLOBAL__N_116PrintErrorAndDieIJRA43_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_, .Lfunc_end18-_ZN9benchmark12_GLOBAL__N_116PrintErrorAndDieIJRA43_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZN9benchmark12_GLOBAL__N_116PrintErrorAndDieIJRA26_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA5_S2_EEEvDpOT_
	.type	_ZN9benchmark12_GLOBAL__N_116PrintErrorAndDieIJRA26_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA5_S2_EEEvDpOT_,@function
_ZN9benchmark12_GLOBAL__N_116PrintErrorAndDieIJRA26_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA5_S2_EEEvDpOT_: # @_ZN9benchmark12_GLOBAL__N_116PrintErrorAndDieIJRA26_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA5_S2_EEEvDpOT_
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	pcaddu18i	$ra, %call36(_ZN9benchmark12_GLOBAL__N_18PrintImpIRA26_KcJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA5_S2_EEEvRSoOT_DpOT0_)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end19:
	.size	_ZN9benchmark12_GLOBAL__N_116PrintErrorAndDieIJRA26_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA5_S2_EEEvDpOT_, .Lfunc_end19-_ZN9benchmark12_GLOBAL__N_116PrintErrorAndDieIJRA26_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA5_S2_EEEvDpOT_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9benchmark6StrCatIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA6_KcEEES6_DpOT_,"axG",@progbits,_ZN9benchmark6StrCatIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA6_KcEEES6_DpOT_,comdat
	.hidden	_ZN9benchmark6StrCatIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA6_KcEEES6_DpOT_ # -- Begin function _ZN9benchmark6StrCatIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA6_KcEEES6_DpOT_
	.weak	_ZN9benchmark6StrCatIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA6_KcEEES6_DpOT_
	.p2align	5
	.type	_ZN9benchmark6StrCatIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA6_KcEEES6_DpOT_,@function
_ZN9benchmark6StrCatIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA6_KcEEES6_DpOT_: # @_ZN9benchmark6StrCatIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA6_KcEEES6_DpOT_
.Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception7
# %bb.0:
	addi.d	$sp, $sp, -416
	.cfi_def_cfa_offset 416
	st.d	$ra, $sp, 408                   # 8-byte Folded Spill
	st.d	$fp, $sp, 400                   # 8-byte Folded Spill
	st.d	$s0, $sp, 392                   # 8-byte Folded Spill
	st.d	$s1, $sp, 384                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	move	$s0, $a2
	move	$s1, $a1
	move	$fp, $a0
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.d	$a2, $s1, 8
.Ltmp249:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp250:                               # EH_LABEL
# %bb.1:                                # %.noexc
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$a2, $a0
.Ltmp251:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp252:                               # EH_LABEL
# %bb.2:                                # %_ZN9benchmark9StrCatImpIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRA6_KcEEERSoSB_OT_DpOT0_.exit
	ld.d	$a0, $sp, 56
	addi.d	$s0, $fp, 16
	st.d	$s0, $fp, 0
	st.d	$zero, $fp, 8
	st.b	$zero, $fp, 16
	beqz	$a0, .LBB20_5
# %bb.3:                                # %_ZN9benchmark9StrCatImpIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRA6_KcEEERSoSB_OT_DpOT0_.exit
	ld.d	$a1, $sp, 40
	sltu	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	beqz	$a0, .LBB20_5
# %bb.4:
	ld.d	$a3, $sp, 48
	sub.d	$a4, $a0, $a3
.Ltmp254:                               # EH_LABEL
	move	$a0, $fp
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm)
	jirl	$ra, $ra, 0
.Ltmp255:                               # EH_LABEL
	b	.LBB20_6
.LBB20_5:
	addi.d	$a1, $sp, 88
.Ltmp256:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_)
	jirl	$ra, $ra, 0
.Ltmp257:                               # EH_LABEL
.LBB20_6:                               # %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
	pcalau12i	$a0, %got_pc_hi20(_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE)
	ld.d	$a1, $a0, 0
	st.d	$a1, $sp, 8
	ld.d	$a0, $a0, 24
	ld.d	$a1, $a1, -24
	addi.d	$a2, $sp, 8
	stx.d	$a0, $a1, $a2
	pcalau12i	$a0, %got_pc_hi20(_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE)
	ld.d	$a1, $a0, %got_pc_lo12(_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE)
	ld.d	$a0, $sp, 88
	addi.d	$a1, $a1, 16
	addi.d	$a2, $sp, 104
	st.d	$a1, $sp, 16
	beq	$a0, $a2, .LBB20_8
# %bb.7:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
	ld.d	$a1, $sp, 104
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB20_8:                               # %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
	pcalau12i	$a0, %got_pc_hi20(_ZTVSt15basic_streambufIcSt11char_traitsIcEE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTVSt15basic_streambufIcSt11char_traitsIcEE)
	addi.d	$a0, $a0, 16
	st.d	$a0, $sp, 16
	addi.d	$a0, $sp, 72
	pcaddu18i	$ra, %call36(_ZNSt6localeD1Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 120
	pcaddu18i	$ra, %call36(_ZNSt8ios_baseD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 384                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 392                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 400                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 408                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 416
	ret
.LBB20_9:
.Ltmp258:                               # EH_LABEL
	ld.d	$a2, $fp, 0
	move	$fp, $a0
	beq	$a2, $s0, .LBB20_12
# %bb.10:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
	ld.d	$a0, $s0, 0
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB20_11:
.Ltmp253:                               # EH_LABEL
	move	$fp, $a0
.LBB20_12:                              # %.body
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end20:
	.size	_ZN9benchmark6StrCatIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA6_KcEEES6_DpOT_, .Lfunc_end20-_ZN9benchmark6StrCatIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA6_KcEEES6_DpOT_
	.cfi_endproc
	.section	.gcc_except_table._ZN9benchmark6StrCatIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA6_KcEEES6_DpOT_,"aG",@progbits,_ZN9benchmark6StrCatIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA6_KcEEES6_DpOT_,comdat
	.p2align	2, 0x0
GCC_except_table20:
.Lexception7:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end7-.Lcst_begin7
.Lcst_begin7:
	.uleb128 .Lfunc_begin7-.Lfunc_begin7    # >> Call Site 1 <<
	.uleb128 .Ltmp249-.Lfunc_begin7         #   Call between .Lfunc_begin7 and .Ltmp249
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp249-.Lfunc_begin7         # >> Call Site 2 <<
	.uleb128 .Ltmp250-.Ltmp249              #   Call between .Ltmp249 and .Ltmp250
	.uleb128 .Ltmp253-.Lfunc_begin7         #     jumps to .Ltmp253
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp250-.Lfunc_begin7         # >> Call Site 3 <<
	.uleb128 .Ltmp251-.Ltmp250              #   Call between .Ltmp250 and .Ltmp251
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp251-.Lfunc_begin7         # >> Call Site 4 <<
	.uleb128 .Ltmp252-.Ltmp251              #   Call between .Ltmp251 and .Ltmp252
	.uleb128 .Ltmp253-.Lfunc_begin7         #     jumps to .Ltmp253
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp254-.Lfunc_begin7         # >> Call Site 5 <<
	.uleb128 .Ltmp257-.Ltmp254              #   Call between .Ltmp254 and .Ltmp257
	.uleb128 .Ltmp258-.Lfunc_begin7         #     jumps to .Ltmp258
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp257-.Lfunc_begin7         # >> Call Site 6 <<
	.uleb128 .Lfunc_end20-.Ltmp257          #   Call between .Ltmp257 and .Lfunc_end20
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end7:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text.unlikely.,"ax",@progbits
	.p2align	5                               # -- Begin function _ZN9benchmark12_GLOBAL__N_116PrintErrorAndDieIJRA26_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA6_S2_EEEvDpOT_
	.type	_ZN9benchmark12_GLOBAL__N_116PrintErrorAndDieIJRA26_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA6_S2_EEEvDpOT_,@function
_ZN9benchmark12_GLOBAL__N_116PrintErrorAndDieIJRA26_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA6_S2_EEEvDpOT_: # @_ZN9benchmark12_GLOBAL__N_116PrintErrorAndDieIJRA26_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA6_S2_EEEvDpOT_
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	pcaddu18i	$ra, %call36(_ZN9benchmark12_GLOBAL__N_18PrintImpIRA26_KcJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA6_S2_EEEvRSoOT_DpOT0_)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end21:
	.size	_ZN9benchmark12_GLOBAL__N_116PrintErrorAndDieIJRA26_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA6_S2_EEEvDpOT_, .Lfunc_end21-_ZN9benchmark12_GLOBAL__N_116PrintErrorAndDieIJRA26_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA6_S2_EEEvDpOT_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9benchmark6StrCatIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA15_KcEEES6_DpOT_,"axG",@progbits,_ZN9benchmark6StrCatIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA15_KcEEES6_DpOT_,comdat
	.hidden	_ZN9benchmark6StrCatIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA15_KcEEES6_DpOT_ # -- Begin function _ZN9benchmark6StrCatIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA15_KcEEES6_DpOT_
	.weak	_ZN9benchmark6StrCatIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA15_KcEEES6_DpOT_
	.p2align	5
	.type	_ZN9benchmark6StrCatIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA15_KcEEES6_DpOT_,@function
_ZN9benchmark6StrCatIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA15_KcEEES6_DpOT_: # @_ZN9benchmark6StrCatIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA15_KcEEES6_DpOT_
.Lfunc_begin8:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception8
# %bb.0:
	addi.d	$sp, $sp, -416
	.cfi_def_cfa_offset 416
	st.d	$ra, $sp, 408                   # 8-byte Folded Spill
	st.d	$fp, $sp, 400                   # 8-byte Folded Spill
	st.d	$s0, $sp, 392                   # 8-byte Folded Spill
	st.d	$s1, $sp, 384                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	move	$s0, $a2
	move	$s1, $a1
	move	$fp, $a0
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ld.d	$a2, $s1, 8
.Ltmp259:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp260:                               # EH_LABEL
# %bb.1:                                # %.noexc
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$a2, $a0
.Ltmp261:                               # EH_LABEL
	addi.d	$a0, $sp, 8
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp262:                               # EH_LABEL
# %bb.2:                                # %_ZN9benchmark9StrCatImpIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRA15_KcEEERSoSB_OT_DpOT0_.exit
	ld.d	$a0, $sp, 56
	addi.d	$s0, $fp, 16
	st.d	$s0, $fp, 0
	st.d	$zero, $fp, 8
	st.b	$zero, $fp, 16
	beqz	$a0, .LBB22_5
# %bb.3:                                # %_ZN9benchmark9StrCatImpIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRA15_KcEEERSoSB_OT_DpOT0_.exit
	ld.d	$a1, $sp, 40
	sltu	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	beqz	$a0, .LBB22_5
# %bb.4:
	ld.d	$a3, $sp, 48
	sub.d	$a4, $a0, $a3
.Ltmp264:                               # EH_LABEL
	move	$a0, $fp
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm)
	jirl	$ra, $ra, 0
.Ltmp265:                               # EH_LABEL
	b	.LBB22_6
.LBB22_5:
	addi.d	$a1, $sp, 88
.Ltmp266:                               # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_)
	jirl	$ra, $ra, 0
.Ltmp267:                               # EH_LABEL
.LBB22_6:                               # %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
	pcalau12i	$a0, %got_pc_hi20(_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE)
	ld.d	$a1, $a0, 0
	st.d	$a1, $sp, 8
	ld.d	$a0, $a0, 24
	ld.d	$a1, $a1, -24
	addi.d	$a2, $sp, 8
	stx.d	$a0, $a1, $a2
	pcalau12i	$a0, %got_pc_hi20(_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE)
	ld.d	$a1, $a0, %got_pc_lo12(_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE)
	ld.d	$a0, $sp, 88
	addi.d	$a1, $a1, 16
	addi.d	$a2, $sp, 104
	st.d	$a1, $sp, 16
	beq	$a0, $a2, .LBB22_8
# %bb.7:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
	ld.d	$a1, $sp, 104
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB22_8:                               # %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
	pcalau12i	$a0, %got_pc_hi20(_ZTVSt15basic_streambufIcSt11char_traitsIcEE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTVSt15basic_streambufIcSt11char_traitsIcEE)
	addi.d	$a0, $a0, 16
	st.d	$a0, $sp, 16
	addi.d	$a0, $sp, 72
	pcaddu18i	$ra, %call36(_ZNSt6localeD1Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 120
	pcaddu18i	$ra, %call36(_ZNSt8ios_baseD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 384                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 392                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 400                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 408                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 416
	ret
.LBB22_9:
.Ltmp268:                               # EH_LABEL
	ld.d	$a2, $fp, 0
	move	$fp, $a0
	beq	$a2, $s0, .LBB22_12
# %bb.10:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
	ld.d	$a0, $s0, 0
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB22_11:
.Ltmp263:                               # EH_LABEL
	move	$fp, $a0
.LBB22_12:                              # %.body
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end22:
	.size	_ZN9benchmark6StrCatIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA15_KcEEES6_DpOT_, .Lfunc_end22-_ZN9benchmark6StrCatIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA15_KcEEES6_DpOT_
	.cfi_endproc
	.section	.gcc_except_table._ZN9benchmark6StrCatIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA15_KcEEES6_DpOT_,"aG",@progbits,_ZN9benchmark6StrCatIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA15_KcEEES6_DpOT_,comdat
	.p2align	2, 0x0
GCC_except_table22:
.Lexception8:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end8-.Lcst_begin8
.Lcst_begin8:
	.uleb128 .Lfunc_begin8-.Lfunc_begin8    # >> Call Site 1 <<
	.uleb128 .Ltmp259-.Lfunc_begin8         #   Call between .Lfunc_begin8 and .Ltmp259
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp259-.Lfunc_begin8         # >> Call Site 2 <<
	.uleb128 .Ltmp260-.Ltmp259              #   Call between .Ltmp259 and .Ltmp260
	.uleb128 .Ltmp263-.Lfunc_begin8         #     jumps to .Ltmp263
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp260-.Lfunc_begin8         # >> Call Site 3 <<
	.uleb128 .Ltmp261-.Ltmp260              #   Call between .Ltmp260 and .Ltmp261
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp261-.Lfunc_begin8         # >> Call Site 4 <<
	.uleb128 .Ltmp262-.Ltmp261              #   Call between .Ltmp261 and .Ltmp262
	.uleb128 .Ltmp263-.Lfunc_begin8         #     jumps to .Ltmp263
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp264-.Lfunc_begin8         # >> Call Site 5 <<
	.uleb128 .Ltmp267-.Ltmp264              #   Call between .Ltmp264 and .Ltmp267
	.uleb128 .Ltmp268-.Lfunc_begin8         #     jumps to .Ltmp268
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp267-.Lfunc_begin8         # >> Call Site 6 <<
	.uleb128 .Lfunc_end22-.Ltmp267          #   Call between .Ltmp267 and .Lfunc_end22
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end8:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text.unlikely.,"ax",@progbits
	.p2align	5                               # -- Begin function _ZN9benchmark12_GLOBAL__N_116PrintErrorAndDieIJRA26_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA15_S2_EEEvDpOT_
	.type	_ZN9benchmark12_GLOBAL__N_116PrintErrorAndDieIJRA26_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA15_S2_EEEvDpOT_,@function
_ZN9benchmark12_GLOBAL__N_116PrintErrorAndDieIJRA26_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA15_S2_EEEvDpOT_: # @_ZN9benchmark12_GLOBAL__N_116PrintErrorAndDieIJRA26_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA15_S2_EEEvDpOT_
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	pcaddu18i	$ra, %call36(_ZN9benchmark12_GLOBAL__N_18PrintImpIRA26_KcJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA15_S2_EEEvRSoOT_DpOT0_)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end23:
	.size	_ZN9benchmark12_GLOBAL__N_116PrintErrorAndDieIJRA26_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA15_S2_EEEvDpOT_, .Lfunc_end23-_ZN9benchmark12_GLOBAL__N_116PrintErrorAndDieIJRA26_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA15_S2_EEEvDpOT_
	.cfi_endproc
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZN9benchmark12_GLOBAL__N_18PrintImpIRA28_KcJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA6_S2_EEEvRSoOT_DpOT0_
	.type	_ZN9benchmark12_GLOBAL__N_18PrintImpIRA28_KcJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA6_S2_EEEvRSoOT_DpOT0_,@function
_ZN9benchmark12_GLOBAL__N_18PrintImpIRA28_KcJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA6_S2_EEEvRSoOT_DpOT0_: # @_ZN9benchmark12_GLOBAL__N_18PrintImpIRA28_KcJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA6_S2_EEEvRSoOT_DpOT0_
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.31)
	addi.d	$a1, $a1, %pc_lo12(.L.str.31)
	ori	$a2, $zero, 27
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $fp, 8
	pcalau12i	$a2, %pc_hi20(.L.str.32)
	addi.d	$a2, $a2, %pc_lo12(.L.str.32)
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZN9benchmark12_GLOBAL__N_18PrintImpIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRA6_KcEEEvRSoOT_DpOT0_)
	jr	$t8
.Lfunc_end24:
	.size	_ZN9benchmark12_GLOBAL__N_18PrintImpIRA28_KcJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA6_S2_EEEvRSoOT_DpOT0_, .Lfunc_end24-_ZN9benchmark12_GLOBAL__N_18PrintImpIRA28_KcJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA6_S2_EEEvRSoOT_DpOT0_
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZN9benchmark12_GLOBAL__N_18PrintImpIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRA6_KcEEEvRSoOT_DpOT0_
	.type	_ZN9benchmark12_GLOBAL__N_18PrintImpIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRA6_KcEEEvRSoOT_DpOT0_,@function
_ZN9benchmark12_GLOBAL__N_18PrintImpIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRA6_KcEEEvRSoOT_DpOT0_: # @_ZN9benchmark12_GLOBAL__N_18PrintImpIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRA6_KcEEEvRSoOT_DpOT0_
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
	move	$fp, $a2
	move	$a2, $a1
	move	$a1, $a0
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$s0, $a0, %got_pc_lo12(_ZSt4cerr)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$fp, $a0, 240
	beqz	$fp, .LBB25_5
# %bb.1:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i
	ld.bu	$a0, $fp, 56
	beqz	$a0, .LBB25_3
# %bb.2:
	ld.bu	$a0, $fp, 67
	b	.LBB25_4
.LBB25_3:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $fp
	jirl	$ra, $a2, 0
.LBB25_4:                               # %_ZN9benchmark12_GLOBAL__N_18PrintImpIRA6_KcJEEEvRSoOT_DpOT0_.exit
	ext.w.b	$a1, $a0
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZNSo5flushEv)
	jr	$t8
.LBB25_5:
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Lfunc_end25:
	.size	_ZN9benchmark12_GLOBAL__N_18PrintImpIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRA6_KcEEEvRSoOT_DpOT0_, .Lfunc_end25-_ZN9benchmark12_GLOBAL__N_18PrintImpIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRA6_KcEEEvRSoOT_DpOT0_
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZN9benchmark12_GLOBAL__N_18PrintImpIRA54_KcJEEEvRSoOT_DpOT0_
	.type	_ZN9benchmark12_GLOBAL__N_18PrintImpIRA54_KcJEEEvRSoOT_DpOT0_,@function
_ZN9benchmark12_GLOBAL__N_18PrintImpIRA54_KcJEEEvRSoOT_DpOT0_: # @_ZN9benchmark12_GLOBAL__N_18PrintImpIRA54_KcJEEEvRSoOT_DpOT0_
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$fp, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a1, $a0, %pc_lo12(.L.str.33)
	ori	$a2, $zero, 53
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.d	$fp, $a0, 240
	beqz	$fp, .LBB26_5
# %bb.1:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i
	ld.bu	$a0, $fp, 56
	beqz	$a0, .LBB26_3
# %bb.2:
	ld.bu	$a0, $fp, 67
	b	.LBB26_4
.LBB26_3:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $fp
	jirl	$ra, $a2, 0
.LBB26_4:                               # %_ZN9benchmark12_GLOBAL__N_18PrintImpERSo.exit
	ext.w.b	$a1, $a0
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZNSo5flushEv)
	jr	$t8
.LBB26_5:
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Lfunc_end26:
	.size	_ZN9benchmark12_GLOBAL__N_18PrintImpIRA54_KcJEEEvRSoOT_DpOT0_, .Lfunc_end26-_ZN9benchmark12_GLOBAL__N_18PrintImpIRA54_KcJEEEvRSoOT_DpOT0_
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZN9benchmark12_GLOBAL__N_18PrintImpIRA43_KcJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRSoOT_DpOT0_
	.type	_ZN9benchmark12_GLOBAL__N_18PrintImpIRA43_KcJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRSoOT_DpOT0_,@function
_ZN9benchmark12_GLOBAL__N_18PrintImpIRA43_KcJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRSoOT_DpOT0_: # @_ZN9benchmark12_GLOBAL__N_18PrintImpIRA43_KcJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRSoOT_DpOT0_
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
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$s0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a0, %pc_hi20(.L.str.35)
	addi.d	$a1, $a0, %pc_lo12(.L.str.35)
	ori	$a2, $zero, 42
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	ld.d	$a2, $fp, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$fp, $a0, 240
	beqz	$fp, .LBB27_5
# %bb.1:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i
	ld.bu	$a0, $fp, 56
	beqz	$a0, .LBB27_3
# %bb.2:
	ld.bu	$a0, $fp, 67
	b	.LBB27_4
.LBB27_3:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $fp
	jirl	$ra, $a2, 0
.LBB27_4:                               # %_ZN9benchmark12_GLOBAL__N_18PrintImpIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEvRSoOT_DpOT0_.exit
	ext.w.b	$a1, $a0
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZNSo5flushEv)
	jr	$t8
.LBB27_5:
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Lfunc_end27:
	.size	_ZN9benchmark12_GLOBAL__N_18PrintImpIRA43_KcJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRSoOT_DpOT0_, .Lfunc_end27-_ZN9benchmark12_GLOBAL__N_18PrintImpIRA43_KcJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRSoOT_DpOT0_
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZN9benchmark12_GLOBAL__N_18PrintImpIRA26_KcJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA5_S2_EEEvRSoOT_DpOT0_
	.type	_ZN9benchmark12_GLOBAL__N_18PrintImpIRA26_KcJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA5_S2_EEEvRSoOT_DpOT0_,@function
_ZN9benchmark12_GLOBAL__N_18PrintImpIRA26_KcJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA5_S2_EEEvRSoOT_DpOT0_: # @_ZN9benchmark12_GLOBAL__N_18PrintImpIRA26_KcJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA5_S2_EEEvRSoOT_DpOT0_
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
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$s0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a0, %pc_hi20(.L.str.37)
	addi.d	$a1, $a0, %pc_lo12(.L.str.37)
	ori	$a2, $zero, 25
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	ld.d	$a2, $fp, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.36)
	addi.d	$a1, $a0, %pc_lo12(.L.str.36)
	ori	$a2, $zero, 4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$fp, $a0, 240
	beqz	$fp, .LBB28_5
# %bb.1:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i.i
	ld.bu	$a0, $fp, 56
	beqz	$a0, .LBB28_3
# %bb.2:
	ld.bu	$a0, $fp, 67
	b	.LBB28_4
.LBB28_3:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $fp
	jirl	$ra, $a2, 0
.LBB28_4:                               # %_ZN9benchmark12_GLOBAL__N_18PrintImpIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRA5_KcEEEvRSoOT_DpOT0_.exit
	ext.w.b	$a1, $a0
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZNSo5flushEv)
	jr	$t8
.LBB28_5:
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Lfunc_end28:
	.size	_ZN9benchmark12_GLOBAL__N_18PrintImpIRA26_KcJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA5_S2_EEEvRSoOT_DpOT0_, .Lfunc_end28-_ZN9benchmark12_GLOBAL__N_18PrintImpIRA26_KcJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA5_S2_EEEvRSoOT_DpOT0_
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZN9benchmark12_GLOBAL__N_18PrintImpIRA26_KcJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA6_S2_EEEvRSoOT_DpOT0_
	.type	_ZN9benchmark12_GLOBAL__N_18PrintImpIRA26_KcJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA6_S2_EEEvRSoOT_DpOT0_,@function
_ZN9benchmark12_GLOBAL__N_18PrintImpIRA26_KcJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA6_S2_EEEvRSoOT_DpOT0_: # @_ZN9benchmark12_GLOBAL__N_18PrintImpIRA26_KcJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA6_S2_EEEvRSoOT_DpOT0_
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.37)
	addi.d	$a1, $a1, %pc_lo12(.L.str.37)
	ori	$a2, $zero, 25
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $fp, 8
	pcalau12i	$a2, %pc_hi20(.L.str.38)
	addi.d	$a2, $a2, %pc_lo12(.L.str.38)
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZN9benchmark12_GLOBAL__N_18PrintImpIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRA6_KcEEEvRSoOT_DpOT0_)
	jr	$t8
.Lfunc_end29:
	.size	_ZN9benchmark12_GLOBAL__N_18PrintImpIRA26_KcJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA6_S2_EEEvRSoOT_DpOT0_, .Lfunc_end29-_ZN9benchmark12_GLOBAL__N_18PrintImpIRA26_KcJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA6_S2_EEEvRSoOT_DpOT0_
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZN9benchmark12_GLOBAL__N_18PrintImpIRA26_KcJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA15_S2_EEEvRSoOT_DpOT0_
	.type	_ZN9benchmark12_GLOBAL__N_18PrintImpIRA26_KcJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA15_S2_EEEvRSoOT_DpOT0_,@function
_ZN9benchmark12_GLOBAL__N_18PrintImpIRA26_KcJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA15_S2_EEEvRSoOT_DpOT0_: # @_ZN9benchmark12_GLOBAL__N_18PrintImpIRA26_KcJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA15_S2_EEEvRSoOT_DpOT0_
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
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$s0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a0, %pc_hi20(.L.str.37)
	addi.d	$a1, $a0, %pc_lo12(.L.str.37)
	ori	$a2, $zero, 25
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	ld.d	$a2, $fp, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.39)
	addi.d	$a1, $a0, %pc_lo12(.L.str.39)
	ori	$a2, $zero, 14
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$fp, $a0, 240
	beqz	$fp, .LBB30_5
# %bb.1:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i.i
	ld.bu	$a0, $fp, 56
	beqz	$a0, .LBB30_3
# %bb.2:
	ld.bu	$a0, $fp, 67
	b	.LBB30_4
.LBB30_3:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $fp
	jirl	$ra, $a2, 0
.LBB30_4:                               # %_ZN9benchmark12_GLOBAL__N_18PrintImpIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRA15_KcEEEvRSoOT_DpOT0_.exit
	ext.w.b	$a1, $a0
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZNSo5flushEv)
	jr	$t8
.LBB30_5:
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Lfunc_end30:
	.size	_ZN9benchmark12_GLOBAL__N_18PrintImpIRA26_KcJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA15_S2_EEEvRSoOT_DpOT0_, .Lfunc_end30-_ZN9benchmark12_GLOBAL__N_18PrintImpIRA26_KcJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA15_S2_EEEvRSoOT_DpOT0_
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZZN9benchmark12_GLOBAL__N_120CountSetBitsInCPUMapENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_0clES6_
	.type	_ZZN9benchmark12_GLOBAL__N_120CountSetBitsInCPUMapENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_0clES6_,@function
_ZZN9benchmark12_GLOBAL__N_120CountSetBitsInCPUMapENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_0clES6_: # @"_ZZN9benchmark12_GLOBAL__N_120CountSetBitsInCPUMapENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_0clES6_"
.Lfunc_begin9:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception9
# %bb.0:
	addi.d	$sp, $sp, -96
	.cfi_def_cfa_offset 96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	move	$fp, $a0
	ld.d	$s0, $a0, 0
	ld.d	$s1, $a0, 8
	addi.d	$s2, $sp, 32
	st.d	$s2, $sp, 16
	st.d	$zero, $sp, 24
	st.b	$zero, $sp, 32
	addi.d	$a1, $s1, 2
.Ltmp269:                               # EH_LABEL
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm)
	jirl	$ra, $ra, 0
.Ltmp270:                               # EH_LABEL
# %bb.1:
	ld.d	$a0, $sp, 24
	srli.d	$a0, $a0, 1
	addi.w	$s3, $zero, -1
	lu52i.d	$a1, $s3, 511
	beq	$a0, $a1, .LBB31_27
# %bb.2:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
.Ltmp271:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.40)
	addi.d	$a1, $a0, %pc_lo12(.L.str.40)
	addi.d	$a0, $sp, 16
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp272:                               # EH_LABEL
# %bb.3:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
	ld.d	$a0, $sp, 24
	lu52i.d	$a1, $s3, 1023
	sub.d	$a0, $a1, $a0
	bltu	$a0, $s1, .LBB31_27
# %bb.4:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
.Ltmp273:                               # EH_LABEL
	addi.d	$a0, $sp, 16
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp274:                               # EH_LABEL
# %bb.5:                                # %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
	ld.d	$a0, $fp, 0
	addi.d	$a1, $fp, 16
	beq	$a0, $a1, .LBB31_9
# %bb.6:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
	ld.d	$a1, $sp, 16
	beq	$a1, $s2, .LBB31_12
# %bb.7:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
	vld	$vr0, $sp, 24
	ld.d	$a2, $fp, 16
	st.d	$a1, $fp, 0
	vst	$vr0, $fp, 8
	beqz	$a0, .LBB31_11
# %bb.8:
	st.d	$a0, $sp, 16
	st.d	$a2, $sp, 32
	st.d	$zero, $sp, 24
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 16
	bne	$a0, $s2, .LBB31_18
	b	.LBB31_19
.LBB31_9:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
	ld.d	$a1, $sp, 16
	beq	$a1, $s2, .LBB31_12
# %bb.10:                               # %.thread.i
	vld	$vr0, $sp, 24
	st.d	$a1, $fp, 0
	vst	$vr0, $fp, 8
.LBB31_11:
	st.d	$s2, $sp, 16
	move	$a0, $s2
	st.d	$zero, $sp, 24
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 16
	bne	$a0, $s2, .LBB31_18
	b	.LBB31_19
.LBB31_12:
	addi.d	$a2, $sp, 16
	beq	$a2, $fp, .LBB31_26
# %bb.13:
	ld.d	$a2, $sp, 24
	beqz	$a2, .LBB31_17
# %bb.14:
	ori	$a3, $zero, 1
	bne	$a2, $a3, .LBB31_16
# %bb.15:
	ld.b	$a1, $a1, 0
	st.b	$a1, $a0, 0
	b	.LBB31_17
.LBB31_16:
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB31_17:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
	ld.d	$a0, $sp, 24
	ld.d	$a1, $fp, 0
	st.d	$a0, $fp, 8
	stx.b	$zero, $a1, $a0
	ld.d	$a0, $sp, 16
	st.d	$zero, $sp, 24
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 16
	beq	$a0, $s2, .LBB31_19
.LBB31_18:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB31_19:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$s0, $fp, 0
	pcaddu18i	$ra, %call36(__errno_location)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ld.w	$s1, $a0, 0
	st.w	$zero, $a0, 0
	addi.d	$a1, $sp, 16
	ori	$a2, $zero, 16
	move	$a0, $s0
	pcaddu18i	$ra, %call36(__isoc23_strtoul)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 16
	beq	$a1, $s0, .LBB31_29
# %bb.20:
	ld.w	$a1, $fp, 0
	beqz	$a1, .LBB31_24
# %bb.21:
	ori	$a2, $zero, 34
	bne	$a1, $a2, .LBB31_25
# %bb.22:                               # %.critedge.i.i
.Ltmp275:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.42)
	addi.d	$a0, $a0, %pc_lo12(.L.str.42)
	pcaddu18i	$ra, %call36(_ZSt20__throw_out_of_rangePKc)
	jirl	$ra, $ra, 0
.Ltmp276:                               # EH_LABEL
# %bb.23:
.LBB31_24:
	st.w	$s1, $fp, 0
.LBB31_25:                              # %_ZNSt7__cxx115stoulERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPmi.exit
	vldi	$vr0, 0
	vinsgr2vr.d	$vr0, $a0, 0
	vpcnt.d	$vr0, $vr0
	vpickve2gr.d	$a0, $vr0, 0
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.LBB31_26:
	move	$a0, $a1
	st.d	$zero, $sp, 24
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 16
	bne	$a0, $s2, .LBB31_18
	b	.LBB31_19
.LBB31_27:                              # %.invoke.i.i
.Ltmp280:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.41)
	addi.d	$a0, $a0, %pc_lo12(.L.str.41)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp281:                               # EH_LABEL
# %bb.28:                               # %.cont.i.i
.LBB31_29:
.Ltmp277:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.42)
	addi.d	$a0, $a0, %pc_lo12(.L.str.42)
	pcaddu18i	$ra, %call36(_ZSt24__throw_invalid_argumentPKc)
	jirl	$ra, $ra, 0
.Ltmp278:                               # EH_LABEL
# %bb.30:
.LBB31_31:
.Ltmp279:                               # EH_LABEL
	ld.w	$a1, $fp, 0
	move	$s0, $a0
	bnez	$a1, .LBB31_35
# %bb.32:
	st.w	$s1, $fp, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB31_33:
.Ltmp282:                               # EH_LABEL
	ld.d	$a2, $sp, 16
	move	$s0, $a0
	beq	$a2, $s2, .LBB31_35
# %bb.34:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
	ld.d	$a0, $sp, 32
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB31_35:                              # %common.resume
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end31:
	.size	_ZZN9benchmark12_GLOBAL__N_120CountSetBitsInCPUMapENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_0clES6_, .Lfunc_end31-_ZZN9benchmark12_GLOBAL__N_120CountSetBitsInCPUMapENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_0clES6_
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table31:
.Lexception9:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end9-.Lcst_begin9
.Lcst_begin9:
	.uleb128 .Ltmp269-.Lfunc_begin9         # >> Call Site 1 <<
	.uleb128 .Ltmp274-.Ltmp269              #   Call between .Ltmp269 and .Ltmp274
	.uleb128 .Ltmp282-.Lfunc_begin9         #     jumps to .Ltmp282
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp274-.Lfunc_begin9         # >> Call Site 2 <<
	.uleb128 .Ltmp275-.Ltmp274              #   Call between .Ltmp274 and .Ltmp275
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp275-.Lfunc_begin9         # >> Call Site 3 <<
	.uleb128 .Ltmp276-.Ltmp275              #   Call between .Ltmp275 and .Ltmp276
	.uleb128 .Ltmp279-.Lfunc_begin9         #     jumps to .Ltmp279
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp280-.Lfunc_begin9         # >> Call Site 4 <<
	.uleb128 .Ltmp281-.Ltmp280              #   Call between .Ltmp280 and .Ltmp281
	.uleb128 .Ltmp282-.Lfunc_begin9         #     jumps to .Ltmp282
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp277-.Lfunc_begin9         # >> Call Site 5 <<
	.uleb128 .Ltmp278-.Ltmp277              #   Call between .Ltmp277 and .Ltmp278
	.uleb128 .Ltmp279-.Lfunc_begin9         #     jumps to .Ltmp279
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp278-.Lfunc_begin9         # >> Call Site 6 <<
	.uleb128 .Lfunc_end31-.Ltmp278          #   Call between .Ltmp278 and .Lfunc_end31
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end9:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt6vectorIN9benchmark7CPUInfo9CacheInfoESaIS2_EE17_M_realloc_appendIJRKS2_EEEvDpOT_,"axG",@progbits,_ZNSt6vectorIN9benchmark7CPUInfo9CacheInfoESaIS2_EE17_M_realloc_appendIJRKS2_EEEvDpOT_,comdat
	.hidden	_ZNSt6vectorIN9benchmark7CPUInfo9CacheInfoESaIS2_EE17_M_realloc_appendIJRKS2_EEEvDpOT_ # -- Begin function _ZNSt6vectorIN9benchmark7CPUInfo9CacheInfoESaIS2_EE17_M_realloc_appendIJRKS2_EEEvDpOT_
	.weak	_ZNSt6vectorIN9benchmark7CPUInfo9CacheInfoESaIS2_EE17_M_realloc_appendIJRKS2_EEEvDpOT_
	.p2align	5
	.type	_ZNSt6vectorIN9benchmark7CPUInfo9CacheInfoESaIS2_EE17_M_realloc_appendIJRKS2_EEEvDpOT_,@function
_ZNSt6vectorIN9benchmark7CPUInfo9CacheInfoESaIS2_EE17_M_realloc_appendIJRKS2_EEEvDpOT_: # @_ZNSt6vectorIN9benchmark7CPUInfo9CacheInfoESaIS2_EE17_M_realloc_appendIJRKS2_EEEvDpOT_
.Lfunc_begin10:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception10
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
	ld.d	$s7, $a0, 8
	ld.d	$s0, $a0, 0
	sub.d	$s8, $s7, $s0
	addi.w	$a0, $zero, -32
	lu52i.d	$a0, $a0, 2047
	beq	$s8, $a0, .LBB32_18
# %bb.1:                                # %_ZNSt12_Vector_baseIN9benchmark7CPUInfo9CacheInfoESaIS2_EE11_M_allocateEm.exit
	move	$s2, $a1
	srai.d	$a0, $s8, 4
	lu12i.w	$a1, -349526
	ori	$a2, $a1, 2731
	lu32i.d	$a2, -349526
	lu52i.d	$a2, $a2, -1366
	mul.d	$a0, $a0, $a2
	ori	$a2, $zero, 1
	sltu	$a3, $a2, $a0
	maskeqz	$a4, $a0, $a3
	masknez	$a2, $a2, $a3
	or	$a2, $a4, $a2
	add.d	$a0, $a2, $a0
	sltu	$a2, $a0, $a2
	ori	$a1, $a1, 2730
	lu32i.d	$a1, -349526
	lu52i.d	$a1, $a1, 42
	sltu	$a3, $a0, $a1
	maskeqz	$a0, $a0, $a3
	masknez	$a3, $a1, $a3
	or	$a0, $a0, $a3
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	or	$a1, $a1, $a0
	slli.d	$a0, $a1, 5
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	alsl.d	$s6, $a1, $a0, 4
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	add.d	$s3, $a0, $s8
	addi.d	$a0, $s3, 16
	ld.d	$s4, $s2, 8
	ld.d	$s5, $s2, 0
	stx.d	$a0, $s1, $s8
	ori	$a1, $zero, 16
	st.d	$s4, $sp, 16
	bltu	$s4, $a1, .LBB32_4
# %bb.2:                                # %.noexc.i.i
.Ltmp283:                               # EH_LABEL
	addi.d	$a1, $sp, 16
	move	$a0, $s3
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp284:                               # EH_LABEL
# %bb.3:                                # %.noexc
	ld.d	$a1, $sp, 16
	st.d	$a0, $s3, 0
	st.d	$a1, $s3, 16
.LBB32_4:                               # %._crit_edge.i.i.i
	beqz	$s4, .LBB32_8
# %bb.5:                                # %._crit_edge.i.i.i
	ori	$a1, $zero, 1
	bne	$s4, $a1, .LBB32_7
# %bb.6:
	ld.b	$a1, $s5, 0
	st.b	$a1, $a0, 0
	b	.LBB32_8
.LBB32_7:
	move	$a1, $s5
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB32_8:
	ld.d	$a0, $sp, 16
	ld.d	$a1, $s3, 0
	st.d	$a0, $s3, 8
	stx.b	$zero, $a1, $a0
	ld.w	$a0, $s2, 40
	ld.d	$a1, $s2, 32
	st.w	$a0, $s3, 40
	st.d	$a1, $s3, 32
	move	$s2, $s1
	beq	$s0, $s7, .LBB32_15
# %bb.9:                                # %.lr.ph.i.i.i.preheader
	move	$s3, $zero
	b	.LBB32_12
	.p2align	4, , 16
.LBB32_10:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
                                        #   in Loop: Header=BB32_12 Depth=1
	ld.d	$a0, $s2, 0
	ld.d	$s6, $s5, 8
	st.d	$a1, $s4, 0
	st.d	$a0, $s4, 16
.LBB32_11:                              # %_ZSt19__relocate_object_aIN9benchmark7CPUInfo9CacheInfoES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i
                                        #   in Loop: Header=BB32_12 Depth=1
	st.d	$s6, $s4, 8
	ld.w	$a0, $s5, 40
	stx.d	$s2, $s0, $s3
	st.d	$zero, $s5, 8
	st.b	$zero, $s2, 0
	st.w	$a0, $s4, 40
	ld.d	$a0, $s5, 32
	addi.d	$s3, $s3, 48
	add.d	$a1, $s0, $s3
	st.d	$a0, $s4, 32
	beq	$a1, $s7, .LBB32_14
.LBB32_12:                              # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	add.d	$s4, $s1, $s3
	ldx.d	$a1, $s0, $s3
	add.d	$s5, $s0, $s3
	addi.d	$a0, $s4, 16
	addi.d	$s2, $s5, 16
	stx.d	$a0, $s1, $s3
	bne	$s2, $a1, .LBB32_10
# %bb.13:                               #   in Loop: Header=BB32_12 Depth=1
	ld.d	$s6, $s5, 8
	addi.d	$a2, $s6, 1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	b	.LBB32_11
.LBB32_14:                              # %_ZNSt6vectorIN9benchmark7CPUInfo9CacheInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.loopexit
	add.d	$s2, $s1, $s3
.LBB32_15:                              # %_ZNSt6vectorIN9benchmark7CPUInfo9CacheInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
	beqz	$s0, .LBB32_17
# %bb.16:
	ld.d	$a0, $fp, 16
	sub.d	$a1, $a0, $s0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB32_17:                              # %_ZZNSt6vectorIN9benchmark7CPUInfo9CacheInfoESaIS2_EE17_M_realloc_appendIJRKS2_EEEvDpOT_EN6_GuardD2Ev.exit
	addi.d	$a0, $s2, 48
	st.d	$s1, $fp, 0
	st.d	$a0, $fp, 8
	ori	$a0, $zero, 48
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	mul.d	$a0, $a1, $a0
	add.d	$a0, $s1, $a0
	st.d	$a0, $fp, 16
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
.LBB32_18:
	pcalau12i	$a0, %pc_hi20(.L.str.43)
	addi.d	$a0, $a0, %pc_lo12(.L.str.43)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.LBB32_19:                              # %_ZZNSt6vectorIN9benchmark7CPUInfo9CacheInfoESaIS2_EE17_M_realloc_appendIJRKS2_EEEvDpOT_EN6_GuardD2Ev.exit22
.Ltmp285:                               # EH_LABEL
	move	$fp, $a0
	move	$a0, $s1
	move	$a1, $s6
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end32:
	.size	_ZNSt6vectorIN9benchmark7CPUInfo9CacheInfoESaIS2_EE17_M_realloc_appendIJRKS2_EEEvDpOT_, .Lfunc_end32-_ZNSt6vectorIN9benchmark7CPUInfo9CacheInfoESaIS2_EE17_M_realloc_appendIJRKS2_EEEvDpOT_
	.cfi_endproc
	.section	.gcc_except_table._ZNSt6vectorIN9benchmark7CPUInfo9CacheInfoESaIS2_EE17_M_realloc_appendIJRKS2_EEEvDpOT_,"aG",@progbits,_ZNSt6vectorIN9benchmark7CPUInfo9CacheInfoESaIS2_EE17_M_realloc_appendIJRKS2_EEEvDpOT_,comdat
	.p2align	2, 0x0
GCC_except_table32:
.Lexception10:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end10-.Lcst_begin10
.Lcst_begin10:
	.uleb128 .Lfunc_begin10-.Lfunc_begin10  # >> Call Site 1 <<
	.uleb128 .Ltmp283-.Lfunc_begin10        #   Call between .Lfunc_begin10 and .Ltmp283
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp283-.Lfunc_begin10        # >> Call Site 2 <<
	.uleb128 .Ltmp284-.Ltmp283              #   Call between .Ltmp283 and .Ltmp284
	.uleb128 .Ltmp285-.Lfunc_begin10        #     jumps to .Ltmp285
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp284-.Lfunc_begin10        # >> Call Site 3 <<
	.uleb128 .Lfunc_end32-.Ltmp284          #   Call between .Ltmp284 and .Lfunc_end32
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end10:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt6vectorIdSaIdEE17_M_default_appendEm,"axG",@progbits,_ZNSt6vectorIdSaIdEE17_M_default_appendEm,comdat
	.weak	_ZNSt6vectorIdSaIdEE17_M_default_appendEm # -- Begin function _ZNSt6vectorIdSaIdEE17_M_default_appendEm
	.p2align	5
	.type	_ZNSt6vectorIdSaIdEE17_M_default_appendEm,@function
_ZNSt6vectorIdSaIdEE17_M_default_appendEm: # @_ZNSt6vectorIdSaIdEE17_M_default_appendEm
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
	beqz	$a1, .LBB33_13
# %bb.1:
	move	$s0, $a1
	move	$fp, $a0
	ld.d	$a0, $a0, 8
	ld.d	$s4, $fp, 16
	sub.d	$a1, $s4, $a0
	srai.d	$a1, $a1, 3
	bgeu	$a1, $s0, .LBB33_10
# %bb.2:
	ld.d	$s1, $fp, 0
	sub.d	$s2, $a0, $s1
	srai.d	$a1, $s2, 3
	addi.w	$a0, $zero, -1
	lu52i.d	$a0, $a0, 255
	xor	$a2, $a1, $a0
	bltu	$a2, $s0, .LBB33_14
# %bb.3:                                # %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit
	sltu	$a2, $s0, $a1
	masknez	$a3, $s0, $a2
	maskeqz	$a2, $a1, $a2
	or	$a2, $a2, $a3
	add.d	$a1, $a2, $a1
	sltu	$a2, $a1, $a0
	maskeqz	$a1, $a1, $a2
	masknez	$a0, $a0, $a2
	or	$s5, $a1, $a0
	slli.d	$a0, $s5, 3
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	add.d	$s6, $a0, $s2
	addi.d	$a1, $s0, -1
	stx.d	$zero, $a0, $s2
	beqz	$a1, .LBB33_5
# %bb.4:                                # %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i29
	addi.d	$a0, $s6, 8
	slli.d	$a2, $a1, 3
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB33_5:                               # %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit32
	blez	$s2, .LBB33_7
# %bb.6:
	move	$a0, $s3
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB33_7:                               # %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit
	beqz	$s1, .LBB33_9
# %bb.8:
	sub.d	$a1, $s4, $s1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB33_9:                               # %_ZZNSt6vectorIdSaIdEE17_M_default_appendEmEN6_GuardD2Ev.exit
	st.d	$s3, $fp, 0
	alsl.d	$a0, $s0, $s6, 3
	st.d	$a0, $fp, 8
	alsl.d	$a0, $s5, $s3, 3
	st.d	$a0, $fp, 16
	b	.LBB33_13
.LBB33_10:
	st.d	$zero, $a0, 0
	addi.d	$s1, $s0, -1
	addi.d	$s0, $a0, 8
	beqz	$s1, .LBB33_12
# %bb.11:                               # %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i
	slli.d	$a2, $s1, 3
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	alsl.d	$s0, $s1, $s0, 3
.LBB33_12:                              # %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit
	st.d	$s0, $fp, 8
.LBB33_13:
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
.LBB33_14:
	pcalau12i	$a0, %pc_hi20(.L.str.45)
	addi.d	$a0, $a0, %pc_lo12(.L.str.45)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Lfunc_end33:
	.size	_ZNSt6vectorIdSaIdEE17_M_default_appendEm, .Lfunc_end33-_ZNSt6vectorIdSaIdEE17_M_default_appendEm
	.cfi_endproc
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	5                               # -- Begin function _GLOBAL__sub_I_sysinfo.cc
	.type	_GLOBAL__sub_I_sysinfo.cc,@function
_GLOBAL__sub_I_sysinfo.cc:              # @_GLOBAL__sub_I_sysinfo.cc
	.cfi_startproc
# %bb.0:
	pcaddu18i	$t8, %call36(_ZN9benchmark8internal17InitializeStreamsEv)
	jr	$t8
.Lfunc_end34:
	.size	_GLOBAL__sub_I_sysinfo.cc, .Lfunc_end34-_GLOBAL__sub_I_sysinfo.cc
	.cfi_endproc
                                        # -- End function
	.type	_ZZN9benchmark7CPUInfo3GetEvE4info,@object # @_ZZN9benchmark7CPUInfo3GetEvE4info
	.local	_ZZN9benchmark7CPUInfo3GetEvE4info
	.comm	_ZZN9benchmark7CPUInfo3GetEvE4info,8,8
	.type	_ZGVZN9benchmark7CPUInfo3GetEvE4info,@object # @_ZGVZN9benchmark7CPUInfo3GetEvE4info
	.local	_ZGVZN9benchmark7CPUInfo3GetEvE4info
	.comm	_ZGVZN9benchmark7CPUInfo3GetEvE4info,8,8
	.type	_ZZN9benchmark10SystemInfo3GetEvE4info,@object # @_ZZN9benchmark10SystemInfo3GetEvE4info
	.local	_ZZN9benchmark10SystemInfo3GetEvE4info
	.comm	_ZZN9benchmark10SystemInfo3GetEvE4info,8,8
	.type	_ZGVZN9benchmark10SystemInfo3GetEvE4info,@object # @_ZGVZN9benchmark10SystemInfo3GetEvE4info
	.local	_ZGVZN9benchmark10SystemInfo3GetEvE4info
	.comm	_ZGVZN9benchmark10SystemInfo3GetEvE4info,8,8
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Unable to extract number of CPUs.  If your platform uses /proc/cpuinfo, custom support may need to be added.\n"
	.size	.L.str, 110

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"/proc/cpuinfo"
	.size	.L.str.1, 14

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"Failed to open /proc/cpuinfo\n"
	.size	.L.str.2, 30

	.type	.L.str.3,@object                # @.str.3
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.3:
	.asciz	"processor"
	.size	.L.str.3, 10

	.type	.L.str.4,@object                # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"Failure reading /proc/cpuinfo"
	.size	.L.str.4, 30

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"Failed to read to end of /proc/cpuinfo"
	.size	.L.str.5, 39

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"CPU ID assignments in /proc/cpuinfo seem messed up. This is usually caused by a bad BIOS.\n"
	.size	.L.str.6, 91

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"basic_string::substr"
	.size	.L.str.8, 21

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"%s: __pos (which is %zu) > this->size() (which is %zu)"
	.size	.L.str.9, 55

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"stoi"
	.size	.L.str.12, 5

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"/sys/devices/system/cpu/cpu"
	.size	.L.str.13, 28

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"/cpufreq/scaling_governor"
	.size	.L.str.14, 26

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"performance"
	.size	.L.str.15, 12

	.type	.L.str.16,@object               # @.str.16
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.16:
	.asciz	"/sys/devices/system/cpu/cpu0/tsc_freq_khz"
	.size	.L.str.16, 42

	.type	.L.str.17,@object               # @.str.17
	.p2align	3, 0x0
.L.str.17:
	.asciz	"/sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq"
	.size	.L.str.17, 54

	.type	.L.str.18,@object               # @.str.18
	.p2align	3, 0x0
.L.str.18:
	.asciz	"/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"
	.size	.L.str.18, 54

	.type	.L.str.19,@object               # @.str.19
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.19:
	.asciz	"failed to open /proc/cpuinfo\n"
	.size	.L.str.19, 30

	.type	.L.str.20,@object               # @.str.20
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.20:
	.asciz	"cpu MHz"
	.size	.L.str.20, 8

	.type	.L.str.22,@object               # @.str.22
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.22:
	.asciz	"Failure reading /proc/cpuinfo\n"
	.size	.L.str.22, 31

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"Failed to read to end of /proc/cpuinfo\n"
	.size	.L.str.23, 40

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"stod"
	.size	.L.str.24, 5

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"***WARNING*** Failed to set thread affinity. Estimated CPU frequency may be incorrect."
	.size	.L.str.25, 87

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"Failed to reset thread affinity"
	.size	.L.str.26, 32

	.type	.L.str.27,@object               # @.str.27
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.27:
	.asciz	"/sys/devices/system/cpu/cpu0/cache/"
	.size	.L.str.27, 36

	.type	.L.str.28,@object               # @.str.28
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.28:
	.asciz	"index"
	.size	.L.str.28, 6

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"/"
	.size	.L.str.29, 2

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"size"
	.size	.L.str.30, 5

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"Failed while reading file '"
	.size	.L.str.31, 28

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"size'"
	.size	.L.str.32, 6

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"Invalid cache size format: failed to read size suffix"
	.size	.L.str.33, 54

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"Invalid cache size format: Expected bytes "
	.size	.L.str.35, 43

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"type"
	.size	.L.str.36, 5

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"Failed to read from file "
	.size	.L.str.37, 26

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"level"
	.size	.L.str.38, 6

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"shared_cpu_map"
	.size	.L.str.39, 15

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"0x"
	.size	.L.str.40, 3

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"basic_string::append"
	.size	.L.str.41, 21

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"stoul"
	.size	.L.str.42, 6

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"vector::_M_realloc_append"
	.size	.L.str.43, 26

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	"vector::_M_default_append"
	.size	.L.str.45, 26

	.section	.init_array,"aw",@init_array
	.p2align	3, 0x0
	.dword	_GLOBAL__sub_I_sysinfo.cc
	.globl	_ZN9benchmark7CPUInfoC1Ev
	.type	_ZN9benchmark7CPUInfoC1Ev,@function
	.hidden	_ZN9benchmark7CPUInfoC1Ev
_ZN9benchmark7CPUInfoC1Ev = _ZN9benchmark7CPUInfoC2Ev
	.globl	_ZN9benchmark10SystemInfoC1Ev
	.type	_ZN9benchmark10SystemInfoC1Ev,@function
	.hidden	_ZN9benchmark10SystemInfoC1Ev
_ZN9benchmark10SystemInfoC1Ev = _ZN9benchmark10SystemInfoC2Ev
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
	.addrsig_sym _GLOBAL__sub_I_sysinfo.cc
	.addrsig_sym _Unwind_Resume
	.addrsig_sym _ZGVZN9benchmark7CPUInfo3GetEvE4info
	.addrsig_sym _ZGVZN9benchmark10SystemInfo3GetEvE4info
	.addrsig_sym _ZSt4cerr
