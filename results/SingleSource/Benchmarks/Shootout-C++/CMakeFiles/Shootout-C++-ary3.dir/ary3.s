	.file	"ary3.cpp"
                                        # Start of file scope inline assembly
	.globl	_ZSt21ios_base_library_initv

                                        # End of file scope inline assembly
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function main
.LCPI0_0:
	.dword	2                               # 0x2
	.dword	3                               # 0x3
.LCPI0_1:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
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
	lu12i.w	$a2, 366
	ori	$s2, $a2, 864
	ori	$a2, $zero, 2
	move	$s1, $s2
	bne	$a0, $a2, .LBB0_3
# %bb.1:
	ld.d	$a0, $a1, 8
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(__isoc23_strtol)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	addi.w	$s1, $a0, 0
	srli.d	$a0, $s1, 61
	bnez	$a0, .LBB0_40
# %bb.2:                                # %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
	slli.d	$a0, $s2, 32
	beqz	$a0, .LBB0_24
.LBB0_3:                                # %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.thread
	slli.d	$s0, $s1, 2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.w	$zero, $a0, 0
	addi.d	$s6, $s1, -1
	slli.d	$s3, $s6, 2
	beqz	$s6, .LBB0_5
# %bb.4:                                # %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
	addi.d	$a0, $fp, 4
	move	$a1, $zero
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB0_5:
.Ltmp0:                                 # EH_LABEL
	alsl.d	$s4, $s1, $fp, 2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.6:                                # %.noexc34
	move	$s0, $a0
	alsl.d	$s5, $s1, $a0, 2
	st.w	$zero, $a0, 0
	addi.d	$s1, $a0, 4
	beqz	$s6, .LBB0_8
# %bb.7:                                # %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i29
	move	$a0, $s1
	move	$a1, $zero
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	alsl.d	$s1, $s6, $s1, 2
.LBB0_8:                                # %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit35
	addi.w	$a0, $s2, 0
	blez	$a0, .LBB0_25
.LBB0_9:                                # %.lr.ph.preheader
	ori	$a2, $zero, 8
	bstrpick.d	$a1, $a0, 30, 3
	bgeu	$a0, $a2, .LBB0_11
# %bb.10:
	move	$a2, $zero
	b	.LBB0_14
.LBB0_11:                               # %vector.ph
	pcalau12i	$a2, %pc_hi20(.LCPI0_0)
	vld	$vr0, $a2, %pc_lo12(.LCPI0_0)
	pcalau12i	$a2, %pc_hi20(.LCPI0_1)
	vld	$vr1, $a2, %pc_lo12(.LCPI0_1)
	slli.d	$a2, $a1, 3
	addi.d	$a3, $fp, 16
	move	$a4, $a2
	.p2align	4, , 16
.LBB0_12:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vpickev.w	$vr2, $vr0, $vr1
	vaddi.wu	$vr3, $vr2, 1
	vaddi.wu	$vr2, $vr2, 5
	vst	$vr3, $a3, -16
	vst	$vr2, $a3, 0
	vaddi.du	$vr1, $vr1, 8
	vaddi.du	$vr0, $vr0, 8
	addi.d	$a4, $a4, -8
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB0_12
# %bb.13:                               # %middle.block
	beq	$a2, $a0, .LBB0_16
.LBB0_14:                               # %.lr.ph.preheader122
	alsl.d	$a3, $a2, $fp, 2
	sub.d	$a4, $a0, $a2
	addi.d	$a2, $a2, 1
	.p2align	4, , 16
.LBB0_15:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a2, $a3, 0
	addi.d	$a3, $a3, 4
	addi.d	$a4, $a4, -1
	addi.d	$a2, $a2, 1
	bnez	$a4, .LBB0_15
.LBB0_16:                               # %.preheader.us.preheader
	move	$a2, $zero
	slli.d	$a1, $a1, 3
	sub.d	$a3, $a0, $a1
	slli.d	$a4, $a0, 2
	addi.d	$a5, $a4, -16
	add.d	$a4, $fp, $a5
	add.d	$a5, $s0, $a5
	addi.d	$a6, $fp, -4
	addi.d	$a7, $s0, -4
	ori	$t0, $zero, 8
	ori	$t1, $zero, 1
	ori	$t2, $zero, 1000
	b	.LBB0_18
	.p2align	4, , 16
.LBB0_17:                               # %._crit_edge.us
                                        #   in Loop: Header=BB0_18 Depth=1
	addi.w	$a2, $a2, 1
	beq	$a2, $t2, .LBB0_25
.LBB0_18:                               # %.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_20 Depth 2
                                        #     Child Loop BB0_23 Depth 2
	move	$t5, $a0
	bltu	$a0, $t0, .LBB0_22
# %bb.19:                               # %vector.body108.preheader
                                        #   in Loop: Header=BB0_18 Depth=1
	move	$t3, $a5
	move	$t4, $a4
	move	$t5, $a1
	.p2align	4, , 16
.LBB0_20:                               # %vector.body108
                                        #   Parent Loop BB0_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $t4, 0
	vld	$vr1, $t4, -16
	vld	$vr2, $t3, 0
	vld	$vr3, $t3, -16
	vadd.w	$vr0, $vr2, $vr0
	vadd.w	$vr1, $vr3, $vr1
	vst	$vr0, $t3, 0
	vst	$vr1, $t3, -16
	addi.d	$t5, $t5, -8
	addi.d	$t4, $t4, -32
	addi.d	$t3, $t3, -32
	bnez	$t5, .LBB0_20
# %bb.21:                               # %middle.block119
                                        #   in Loop: Header=BB0_18 Depth=1
	move	$t5, $a3
	beq	$a1, $a0, .LBB0_17
.LBB0_22:                               # %scalar.ph103.preheader
                                        #   in Loop: Header=BB0_18 Depth=1
	addi.d	$t3, $t5, 1
	alsl.d	$t4, $t5, $a6, 2
	alsl.d	$t5, $t5, $a7, 2
	.p2align	4, , 16
.LBB0_23:                               # %scalar.ph103
                                        #   Parent Loop BB0_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t6, $t4, 0
	ld.w	$t7, $t5, 0
	add.d	$t6, $t7, $t6
	st.w	$t6, $t5, 0
	addi.d	$t3, $t3, -1
	addi.d	$t4, $t4, -4
	addi.d	$t5, $t5, -4
	blt	$t1, $t3, .LBB0_23
	b	.LBB0_17
.LBB0_24:
	move	$fp, $zero
	move	$s4, $zero
	move	$s0, $zero
	move	$s5, $zero
	move	$s1, $zero
	addi.w	$a0, $s2, 0
	bgtz	$a0, .LBB0_9
.LBB0_25:                               # %.split.us
	ld.w	$a1, $s0, 0
.Ltmp3:                                 # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp4:                                 # EH_LABEL
# %bb.26:
.Ltmp5:                                 # EH_LABEL
	move	$s2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	ori	$a2, $zero, 1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp6:                                 # EH_LABEL
# %bb.27:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
	ld.w	$a1, $s1, -4
.Ltmp7:                                 # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp8:                                 # EH_LABEL
# %bb.28:
	move	$s1, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s1, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB0_38
# %bb.29:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB0_31
# %bb.30:
	ld.bu	$a0, $s2, 67
	b	.LBB0_33
.LBB0_31:
.Ltmp9:                                 # EH_LABEL
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp10:                                # EH_LABEL
# %bb.32:                               # %.noexc46
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp11:                                # EH_LABEL
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp12:                                # EH_LABEL
.LBB0_33:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
.Ltmp13:                                # EH_LABEL
	ext.w.b	$a1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp14:                                # EH_LABEL
# %bb.34:                               # %.noexc48
.Ltmp15:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp16:                                # EH_LABEL
# %bb.35:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit
	sub.d	$a1, $s5, $s0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB0_37
# %bb.36:
	sub.d	$a1, $s4, $fp
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_37:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit39
	move	$a0, $zero
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
.LBB0_38:
.Ltmp17:                                # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp18:                                # EH_LABEL
# %bb.39:                               # %.noexc45
.LBB0_40:                               # %.noexc
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.LBB0_41:                               # %.thread80
.Ltmp2:                                 # EH_LABEL
	move	$s1, $a0
	b	.LBB0_43
.LBB0_42:
.Ltmp19:                                # EH_LABEL
	move	$s1, $a0
	sub.d	$a1, $s5, $s0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB0_44
.LBB0_43:
	sub.d	$a1, $s4, $fp
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_44:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit43
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
	.uleb128 .Ltmp1-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp3-.Ltmp1                  #   Call between .Ltmp1 and .Ltmp3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp3-.Lfunc_begin0           # >> Call Site 4 <<
	.uleb128 .Ltmp16-.Ltmp3                 #   Call between .Ltmp3 and .Ltmp16
	.uleb128 .Ltmp19-.Lfunc_begin0          #     jumps to .Ltmp19
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp16-.Lfunc_begin0          # >> Call Site 5 <<
	.uleb128 .Ltmp17-.Ltmp16                #   Call between .Ltmp16 and .Ltmp17
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp17-.Lfunc_begin0          # >> Call Site 6 <<
	.uleb128 .Ltmp18-.Ltmp17                #   Call between .Ltmp17 and .Ltmp18
	.uleb128 .Ltmp19-.Lfunc_begin0          #     jumps to .Ltmp19
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp18-.Lfunc_begin0          # >> Call Site 7 <<
	.uleb128 .Lfunc_end0-.Ltmp18            #   Call between .Ltmp18 and .Lfunc_end0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	" "
	.size	.L.str, 2

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"cannot create std::vector larger than max_size()"
	.size	.L.str.1, 49

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
