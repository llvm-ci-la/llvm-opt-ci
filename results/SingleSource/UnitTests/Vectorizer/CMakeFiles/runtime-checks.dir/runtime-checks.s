	.file	"runtime-checks.cpp"
                                        # Start of file scope inline assembly
	.globl	_ZSt21ios_base_library_initv

                                        # End of file scope inline assembly
	.text
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
# %bb.0:
	addi.d	$sp, $sp, -2032
	.cfi_def_cfa_offset 2032
	st.d	$ra, $sp, 2024                  # 8-byte Folded Spill
	st.d	$fp, $sp, 2016                  # 8-byte Folded Spill
	st.d	$s0, $sp, 2008                  # 8-byte Folded Spill
	st.d	$s1, $sp, 2000                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1992                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1984                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1976                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1968                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1960                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1952                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1944                  # 8-byte Folded Spill
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
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2080
	sub.d	$sp, $sp, $a0
	.cfi_def_cfa_offset 8208
	ori	$a2, $zero, 15
	ori	$a0, $zero, 3120
	add.d	$a0, $sp, $a0
	st.d	$a2, $a0, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 8
	lu12i.w	$a3, 442488
	ori	$a3, $a3, 2405
	ori	$a4, $zero, 3120
	add.d	$a4, $sp, $a4
	ori	$a5, $zero, 624
	.p2align	4, , 16
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	srli.d	$a6, $a2, 30
	xor	$a2, $a6, $a2
	mul.d	$a2, $a2, $a3
	add.d	$a2, $a0, $a2
	bstrpick.d	$a2, $a2, 31, 0
	stx.d	$a2, $a1, $a4
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 8
	bne	$a0, $a5, .LBB0_1
# %bb.2:                                # %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em.exit
	ori	$a0, $zero, 624
	lu12i.w	$a1, 1
	ori	$a1, $a1, 4016
	add.d	$a1, $sp, $a1
	stptr.d	$a0, $a1, 0
	pcalau12i	$a0, %pc_hi20(_ZL3rng)
	addi.d	$a0, $a0, %pc_lo12(_ZL3rng)
	lu12i.w	$a1, 1
	ori	$a2, $a1, 904
	ori	$a1, $zero, 3120
	add.d	$a1, $sp, $a1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	vrepli.b	$vr0, 0
	ori	$a0, $zero, 3088
	add.d	$a0, $sp, $a0
	vst	$vr0, $a0, 0
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_0E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_0E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	ori	$a1, $zero, 3112
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	ori	$a1, $zero, 3104
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	vst	$vr0, $sp, 32                   # 16-byte Folded Spill
	ori	$a0, $zero, 3056
	add.d	$a0, $sp, $a0
	vst	$vr0, $a0, 0
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_1E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_1E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	ori	$a1, $zero, 3080
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	ori	$a1, $zero, 3072
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
.Ltmp0:                                 # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	ori	$a0, $zero, 3088
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 3056
	add.d	$a1, $sp, $a1
	pcaddu18i	$ra, %call36(_ZL37checkOverlappingMemoryOneRuntimeCheckIhEvSt8functionIFvPT_S2_jEES4_PKc)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.3:
	ori	$a0, $zero, 3072
	add.d	$a0, $sp, $a0
	ld.d	$a3, $a0, 0
	beqz	$a3, .LBB0_5
# %bb.4:
.Ltmp9:                                 # EH_LABEL
	ori	$a0, $zero, 3056
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 3056
	add.d	$a1, $sp, $a1
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp10:                                # EH_LABEL
.LBB0_5:                                # %_ZNSt14_Function_baseD2Ev.exit
	ori	$a0, $zero, 3104
	add.d	$a0, $sp, $a0
	ld.d	$a3, $a0, 0
	beqz	$a3, .LBB0_7
# %bb.6:
.Ltmp12:                                # EH_LABEL
	ori	$a0, $zero, 3088
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 3088
	add.d	$a1, $sp, $a1
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp13:                                # EH_LABEL
.LBB0_7:                                # %_ZNSt14_Function_baseD2Ev.exit48
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	ori	$a0, $zero, 3024
	add.d	$a0, $sp, $a0
	vst	$vr0, $a0, 0
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_0E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_0E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	ori	$a1, $zero, 3048
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	ori	$a1, $zero, 3040
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 2992
	add.d	$a0, $sp, $a0
	vst	$vr0, $a0, 0
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_1E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_1E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	ori	$a1, $zero, 3016
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	ori	$a1, $zero, 3008
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
.Ltmp15:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a2, $a0, %pc_lo12(.L.str.1)
	ori	$a0, $zero, 3024
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2992
	add.d	$a1, $sp, $a1
	pcaddu18i	$ra, %call36(_ZL37checkOverlappingMemoryOneRuntimeCheckIjEvSt8functionIFvPT_S2_jEES4_PKc)
	jirl	$ra, $ra, 0
.Ltmp16:                                # EH_LABEL
# %bb.8:
	ori	$a0, $zero, 3008
	add.d	$a0, $sp, $a0
	ld.d	$a3, $a0, 0
	beqz	$a3, .LBB0_10
# %bb.9:
.Ltmp24:                                # EH_LABEL
	ori	$a0, $zero, 2992
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2992
	add.d	$a1, $sp, $a1
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp25:                                # EH_LABEL
.LBB0_10:                               # %_ZNSt14_Function_baseD2Ev.exit50
	ori	$a0, $zero, 3040
	add.d	$a0, $sp, $a0
	ld.d	$a3, $a0, 0
	beqz	$a3, .LBB0_12
# %bb.11:
.Ltmp27:                                # EH_LABEL
	ori	$a0, $zero, 3024
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 3024
	add.d	$a1, $sp, $a1
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp28:                                # EH_LABEL
.LBB0_12:                               # %_ZNSt14_Function_baseD2Ev.exit52
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	ori	$a0, $zero, 2960
	add.d	$a0, $sp, $a0
	vst	$vr0, $a0, 0
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_0E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_0E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	ori	$a1, $zero, 2984
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	ori	$a1, $zero, 2976
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 2928
	add.d	$a0, $sp, $a0
	vst	$vr0, $a0, 0
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_1E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_1E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	ori	$a1, $zero, 2952
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	ori	$a1, $zero, 2944
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
.Ltmp30:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a2, $a0, %pc_lo12(.L.str.2)
	ori	$a0, $zero, 2960
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2928
	add.d	$a1, $sp, $a1
	pcaddu18i	$ra, %call36(_ZL37checkOverlappingMemoryOneRuntimeCheckImEvSt8functionIFvPT_S2_jEES4_PKc)
	jirl	$ra, $ra, 0
.Ltmp31:                                # EH_LABEL
# %bb.13:
	ori	$a0, $zero, 2944
	add.d	$a0, $sp, $a0
	ld.d	$a3, $a0, 0
	beqz	$a3, .LBB0_15
# %bb.14:
.Ltmp39:                                # EH_LABEL
	ori	$a0, $zero, 2928
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2928
	add.d	$a1, $sp, $a1
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp40:                                # EH_LABEL
.LBB0_15:                               # %_ZNSt14_Function_baseD2Ev.exit54
	ori	$a0, $zero, 2976
	add.d	$a0, $sp, $a0
	ld.d	$a3, $a0, 0
	beqz	$a3, .LBB0_17
# %bb.16:
.Ltmp42:                                # EH_LABEL
	ori	$a0, $zero, 2960
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2960
	add.d	$a1, $sp, $a1
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp43:                                # EH_LABEL
.LBB0_17:                               # %_ZNSt14_Function_baseD2Ev.exit56
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	ori	$a0, $zero, 2896
	add.d	$a0, $sp, $a0
	vst	$vr0, $a0, 0
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_2E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_2E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	ori	$a1, $zero, 2920
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_2E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_2E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	ori	$a1, $zero, 2912
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 2864
	add.d	$a0, $sp, $a0
	vst	$vr0, $a0, 0
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_3E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_3E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	ori	$a1, $zero, 2888
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_3E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_3E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	ori	$a1, $zero, 2880
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
.Ltmp45:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a2, $a0, %pc_lo12(.L.str.3)
	ori	$a0, $zero, 2896
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2864
	add.d	$a1, $sp, $a1
	pcaddu18i	$ra, %call36(_ZL37checkOverlappingMemoryOneRuntimeCheckIhEvSt8functionIFvPT_S2_jEES4_PKc)
	jirl	$ra, $ra, 0
.Ltmp46:                                # EH_LABEL
# %bb.18:
	ori	$a0, $zero, 2880
	add.d	$a0, $sp, $a0
	ld.d	$a3, $a0, 0
	beqz	$a3, .LBB0_20
# %bb.19:
.Ltmp54:                                # EH_LABEL
	ori	$a0, $zero, 2864
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2864
	add.d	$a1, $sp, $a1
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp55:                                # EH_LABEL
.LBB0_20:                               # %_ZNSt14_Function_baseD2Ev.exit58
	ori	$a0, $zero, 2912
	add.d	$a0, $sp, $a0
	ld.d	$a3, $a0, 0
	beqz	$a3, .LBB0_22
# %bb.21:
.Ltmp57:                                # EH_LABEL
	ori	$a0, $zero, 2896
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2896
	add.d	$a1, $sp, $a1
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp58:                                # EH_LABEL
.LBB0_22:                               # %_ZNSt14_Function_baseD2Ev.exit60
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	ori	$a0, $zero, 2832
	add.d	$a0, $sp, $a0
	vst	$vr0, $a0, 0
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_2E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_2E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	ori	$a1, $zero, 2856
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_2E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_2E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	ori	$a1, $zero, 2848
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 2800
	add.d	$a0, $sp, $a0
	vst	$vr0, $a0, 0
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_3E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_3E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	ori	$a1, $zero, 2824
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_3E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_3E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	ori	$a1, $zero, 2816
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
.Ltmp60:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a2, $a0, %pc_lo12(.L.str.4)
	ori	$a0, $zero, 2832
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2800
	add.d	$a1, $sp, $a1
	pcaddu18i	$ra, %call36(_ZL37checkOverlappingMemoryOneRuntimeCheckIjEvSt8functionIFvPT_S2_jEES4_PKc)
	jirl	$ra, $ra, 0
.Ltmp61:                                # EH_LABEL
# %bb.23:
	ori	$a0, $zero, 2816
	add.d	$a0, $sp, $a0
	ld.d	$a3, $a0, 0
	beqz	$a3, .LBB0_25
# %bb.24:
.Ltmp69:                                # EH_LABEL
	ori	$a0, $zero, 2800
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2800
	add.d	$a1, $sp, $a1
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp70:                                # EH_LABEL
.LBB0_25:                               # %_ZNSt14_Function_baseD2Ev.exit62
	ori	$a0, $zero, 2848
	add.d	$a0, $sp, $a0
	ld.d	$a3, $a0, 0
	beqz	$a3, .LBB0_27
# %bb.26:
.Ltmp72:                                # EH_LABEL
	ori	$a0, $zero, 2832
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2832
	add.d	$a1, $sp, $a1
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp73:                                # EH_LABEL
.LBB0_27:                               # %_ZNSt14_Function_baseD2Ev.exit64
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	ori	$a0, $zero, 2768
	add.d	$a0, $sp, $a0
	vst	$vr0, $a0, 0
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_2E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_2E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	ori	$a1, $zero, 2792
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_2E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_2E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	ori	$a1, $zero, 2784
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 2736
	add.d	$a0, $sp, $a0
	vst	$vr0, $a0, 0
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_3E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_3E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	ori	$a1, $zero, 2760
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_3E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_3E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	ori	$a1, $zero, 2752
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
.Ltmp75:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a2, $a0, %pc_lo12(.L.str.5)
	ori	$a0, $zero, 2768
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2736
	add.d	$a1, $sp, $a1
	pcaddu18i	$ra, %call36(_ZL37checkOverlappingMemoryOneRuntimeCheckImEvSt8functionIFvPT_S2_jEES4_PKc)
	jirl	$ra, $ra, 0
.Ltmp76:                                # EH_LABEL
# %bb.28:
	ori	$a0, $zero, 2752
	add.d	$a0, $sp, $a0
	ld.d	$a3, $a0, 0
	beqz	$a3, .LBB0_30
# %bb.29:
.Ltmp84:                                # EH_LABEL
	ori	$a0, $zero, 2736
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2736
	add.d	$a1, $sp, $a1
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp85:                                # EH_LABEL
.LBB0_30:                               # %_ZNSt14_Function_baseD2Ev.exit66
	ori	$a0, $zero, 2784
	add.d	$a0, $sp, $a0
	ld.d	$a3, $a0, 0
	beqz	$a3, .LBB0_32
# %bb.31:
.Ltmp87:                                # EH_LABEL
	ori	$a0, $zero, 2768
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2768
	add.d	$a1, $sp, $a1
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp88:                                # EH_LABEL
.LBB0_32:                               # %_ZNSt14_Function_baseD2Ev.exit68
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	ori	$a0, $zero, 2704
	add.d	$a0, $sp, $a0
	vst	$vr0, $a0, 0
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_4E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_4E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	ori	$a1, $zero, 2728
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	ori	$a1, $zero, 2720
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 2672
	add.d	$a0, $sp, $a0
	vst	$vr0, $a0, 0
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_5E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_5E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	ori	$a1, $zero, 2696
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	ori	$a1, $zero, 2688
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
.Ltmp90:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a2, $a0, %pc_lo12(.L.str.6)
	ori	$a0, $zero, 2704
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2672
	add.d	$a1, $sp, $a1
	pcaddu18i	$ra, %call36(_ZL37checkOverlappingMemoryOneRuntimeCheckIhEvSt8functionIFvPT_S2_jEES4_PKc)
	jirl	$ra, $ra, 0
.Ltmp91:                                # EH_LABEL
# %bb.33:
	ori	$a0, $zero, 2688
	add.d	$a0, $sp, $a0
	ld.d	$a3, $a0, 0
	beqz	$a3, .LBB0_35
# %bb.34:
.Ltmp99:                                # EH_LABEL
	ori	$a0, $zero, 2672
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2672
	add.d	$a1, $sp, $a1
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp100:                               # EH_LABEL
.LBB0_35:                               # %_ZNSt14_Function_baseD2Ev.exit70
	ori	$a0, $zero, 2720
	add.d	$a0, $sp, $a0
	ld.d	$a3, $a0, 0
	beqz	$a3, .LBB0_37
# %bb.36:
.Ltmp102:                               # EH_LABEL
	ori	$a0, $zero, 2704
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2704
	add.d	$a1, $sp, $a1
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp103:                               # EH_LABEL
.LBB0_37:                               # %_ZNSt14_Function_baseD2Ev.exit72
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	ori	$a0, $zero, 2640
	add.d	$a0, $sp, $a0
	vst	$vr0, $a0, 0
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_4E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_4E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	ori	$a1, $zero, 2664
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	ori	$a1, $zero, 2656
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 2608
	add.d	$a0, $sp, $a0
	vst	$vr0, $a0, 0
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_5E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_5E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	ori	$a1, $zero, 2632
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	ori	$a1, $zero, 2624
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
.Ltmp105:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a2, $a0, %pc_lo12(.L.str.7)
	ori	$a0, $zero, 2640
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2608
	add.d	$a1, $sp, $a1
	pcaddu18i	$ra, %call36(_ZL37checkOverlappingMemoryOneRuntimeCheckIjEvSt8functionIFvPT_S2_jEES4_PKc)
	jirl	$ra, $ra, 0
.Ltmp106:                               # EH_LABEL
# %bb.38:
	ori	$a0, $zero, 2624
	add.d	$a0, $sp, $a0
	ld.d	$a3, $a0, 0
	beqz	$a3, .LBB0_40
# %bb.39:
.Ltmp114:                               # EH_LABEL
	ori	$a0, $zero, 2608
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2608
	add.d	$a1, $sp, $a1
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp115:                               # EH_LABEL
.LBB0_40:                               # %_ZNSt14_Function_baseD2Ev.exit74
	ori	$a0, $zero, 2656
	add.d	$a0, $sp, $a0
	ld.d	$a3, $a0, 0
	beqz	$a3, .LBB0_42
# %bb.41:
.Ltmp117:                               # EH_LABEL
	ori	$a0, $zero, 2640
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2640
	add.d	$a1, $sp, $a1
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp118:                               # EH_LABEL
.LBB0_42:                               # %_ZNSt14_Function_baseD2Ev.exit76
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	ori	$a0, $zero, 2576
	add.d	$a0, $sp, $a0
	vst	$vr0, $a0, 0
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_4E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_4E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	ori	$a1, $zero, 2600
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	ori	$a1, $zero, 2592
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 2544
	add.d	$a0, $sp, $a0
	vst	$vr0, $a0, 0
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_5E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_5E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	ori	$a1, $zero, 2568
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	ori	$a1, $zero, 2560
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
.Ltmp120:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a2, $a0, %pc_lo12(.L.str.8)
	ori	$a0, $zero, 2576
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2544
	add.d	$a1, $sp, $a1
	pcaddu18i	$ra, %call36(_ZL37checkOverlappingMemoryOneRuntimeCheckImEvSt8functionIFvPT_S2_jEES4_PKc)
	jirl	$ra, $ra, 0
.Ltmp121:                               # EH_LABEL
# %bb.43:
	ori	$a0, $zero, 2560
	add.d	$a0, $sp, $a0
	ld.d	$a3, $a0, 0
	beqz	$a3, .LBB0_45
# %bb.44:
.Ltmp129:                               # EH_LABEL
	ori	$a0, $zero, 2544
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2544
	add.d	$a1, $sp, $a1
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp130:                               # EH_LABEL
.LBB0_45:                               # %_ZNSt14_Function_baseD2Ev.exit78
	ori	$a0, $zero, 2592
	add.d	$a0, $sp, $a0
	ld.d	$a3, $a0, 0
	beqz	$a3, .LBB0_47
# %bb.46:
.Ltmp132:                               # EH_LABEL
	ori	$a0, $zero, 2576
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2576
	add.d	$a1, $sp, $a1
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp133:                               # EH_LABEL
.LBB0_47:                               # %_ZNSt14_Function_baseD2Ev.exit80
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	ori	$a0, $zero, 2512
	add.d	$a0, $sp, $a0
	vst	$vr0, $a0, 0
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_6E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_6E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	ori	$a1, $zero, 2536
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_6E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_6E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	ori	$a1, $zero, 2528
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 2480
	add.d	$a0, $sp, $a0
	vst	$vr0, $a0, 0
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_7E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_7E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	ori	$a1, $zero, 2504
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_7E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_7E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	ori	$a1, $zero, 2496
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
.Ltmp135:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a2, $a0, %pc_lo12(.L.str.9)
	ori	$a0, $zero, 2512
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2480
	add.d	$a1, $sp, $a1
	pcaddu18i	$ra, %call36(_ZL37checkOverlappingMemoryOneRuntimeCheckIhEvSt8functionIFvPT_S2_jEES4_PKc)
	jirl	$ra, $ra, 0
.Ltmp136:                               # EH_LABEL
# %bb.48:
	ori	$a0, $zero, 2496
	add.d	$a0, $sp, $a0
	ld.d	$a3, $a0, 0
	beqz	$a3, .LBB0_50
# %bb.49:
.Ltmp144:                               # EH_LABEL
	ori	$a0, $zero, 2480
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2480
	add.d	$a1, $sp, $a1
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp145:                               # EH_LABEL
.LBB0_50:                               # %_ZNSt14_Function_baseD2Ev.exit82
	ori	$a0, $zero, 2528
	add.d	$a0, $sp, $a0
	ld.d	$a3, $a0, 0
	beqz	$a3, .LBB0_52
# %bb.51:
.Ltmp147:                               # EH_LABEL
	ori	$a0, $zero, 2512
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2512
	add.d	$a1, $sp, $a1
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp148:                               # EH_LABEL
.LBB0_52:                               # %_ZNSt14_Function_baseD2Ev.exit84
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	ori	$a0, $zero, 2448
	add.d	$a0, $sp, $a0
	vst	$vr0, $a0, 0
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_6E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_6E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	ori	$a1, $zero, 2472
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_6E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_6E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	ori	$a1, $zero, 2464
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 2416
	add.d	$a0, $sp, $a0
	vst	$vr0, $a0, 0
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_7E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_7E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	ori	$a1, $zero, 2440
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_7E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_7E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	ori	$a1, $zero, 2432
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
.Ltmp150:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a2, $a0, %pc_lo12(.L.str.10)
	ori	$a0, $zero, 2448
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2416
	add.d	$a1, $sp, $a1
	pcaddu18i	$ra, %call36(_ZL37checkOverlappingMemoryOneRuntimeCheckIjEvSt8functionIFvPT_S2_jEES4_PKc)
	jirl	$ra, $ra, 0
.Ltmp151:                               # EH_LABEL
# %bb.53:
	ori	$a0, $zero, 2432
	add.d	$a0, $sp, $a0
	ld.d	$a3, $a0, 0
	beqz	$a3, .LBB0_55
# %bb.54:
.Ltmp159:                               # EH_LABEL
	ori	$a0, $zero, 2416
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2416
	add.d	$a1, $sp, $a1
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp160:                               # EH_LABEL
.LBB0_55:                               # %_ZNSt14_Function_baseD2Ev.exit86
	ori	$a0, $zero, 2464
	add.d	$a0, $sp, $a0
	ld.d	$a3, $a0, 0
	beqz	$a3, .LBB0_57
# %bb.56:
.Ltmp162:                               # EH_LABEL
	ori	$a0, $zero, 2448
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2448
	add.d	$a1, $sp, $a1
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp163:                               # EH_LABEL
.LBB0_57:                               # %_ZNSt14_Function_baseD2Ev.exit88
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	ori	$a0, $zero, 2384
	add.d	$a0, $sp, $a0
	vst	$vr0, $a0, 0
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_6E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_6E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	ori	$a1, $zero, 2408
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_6E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_6E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	ori	$a1, $zero, 2400
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 2352
	add.d	$a0, $sp, $a0
	vst	$vr0, $a0, 0
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_7E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_7E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	ori	$a1, $zero, 2376
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_7E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_7E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	ori	$a1, $zero, 2368
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
.Ltmp165:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a2, $a0, %pc_lo12(.L.str.11)
	ori	$a0, $zero, 2384
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2352
	add.d	$a1, $sp, $a1
	pcaddu18i	$ra, %call36(_ZL37checkOverlappingMemoryOneRuntimeCheckImEvSt8functionIFvPT_S2_jEES4_PKc)
	jirl	$ra, $ra, 0
.Ltmp166:                               # EH_LABEL
# %bb.58:
	ori	$a0, $zero, 2368
	add.d	$a0, $sp, $a0
	ld.d	$a3, $a0, 0
	beqz	$a3, .LBB0_60
# %bb.59:
.Ltmp174:                               # EH_LABEL
	ori	$a0, $zero, 2352
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2352
	add.d	$a1, $sp, $a1
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp175:                               # EH_LABEL
.LBB0_60:                               # %_ZNSt14_Function_baseD2Ev.exit90
	ori	$a0, $zero, 2400
	add.d	$a0, $sp, $a0
	ld.d	$a3, $a0, 0
	beqz	$a3, .LBB0_62
# %bb.61:
.Ltmp177:                               # EH_LABEL
	ori	$a0, $zero, 2384
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2384
	add.d	$a1, $sp, $a1
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp178:                               # EH_LABEL
.LBB0_62:                               # %_ZNSt14_Function_baseD2Ev.exit92
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	ori	$a0, $zero, 2320
	add.d	$a0, $sp, $a0
	vst	$vr0, $a0, 0
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_8E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_8E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	ori	$a1, $zero, 2344
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	ori	$a1, $zero, 2336
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 2288
	add.d	$a0, $sp, $a0
	vst	$vr0, $a0, 0
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_9E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_9E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	ori	$a1, $zero, 2312
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	ori	$a1, $zero, 2304
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
.Ltmp180:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a2, $a0, %pc_lo12(.L.str.12)
	ori	$a0, $zero, 2320
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2288
	add.d	$a1, $sp, $a1
	pcaddu18i	$ra, %call36(_ZL37checkOverlappingMemoryOneRuntimeCheckIhEvSt8functionIFvPT_S2_jEES4_PKc)
	jirl	$ra, $ra, 0
.Ltmp181:                               # EH_LABEL
# %bb.63:
	ori	$a0, $zero, 2304
	add.d	$a0, $sp, $a0
	ld.d	$a3, $a0, 0
	beqz	$a3, .LBB0_65
# %bb.64:
.Ltmp189:                               # EH_LABEL
	ori	$a0, $zero, 2288
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2288
	add.d	$a1, $sp, $a1
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp190:                               # EH_LABEL
.LBB0_65:                               # %_ZNSt14_Function_baseD2Ev.exit94
	ori	$a0, $zero, 2336
	add.d	$a0, $sp, $a0
	ld.d	$a3, $a0, 0
	beqz	$a3, .LBB0_67
# %bb.66:
.Ltmp192:                               # EH_LABEL
	ori	$a0, $zero, 2320
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2320
	add.d	$a1, $sp, $a1
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp193:                               # EH_LABEL
.LBB0_67:                               # %_ZNSt14_Function_baseD2Ev.exit96
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	ori	$a0, $zero, 2256
	add.d	$a0, $sp, $a0
	vst	$vr0, $a0, 0
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_8E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_8E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	ori	$a1, $zero, 2280
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	ori	$a1, $zero, 2272
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 2224
	add.d	$a0, $sp, $a0
	vst	$vr0, $a0, 0
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_9E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_9E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	ori	$a1, $zero, 2248
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	ori	$a1, $zero, 2240
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
.Ltmp195:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a2, $a0, %pc_lo12(.L.str.13)
	ori	$a0, $zero, 2256
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2224
	add.d	$a1, $sp, $a1
	pcaddu18i	$ra, %call36(_ZL37checkOverlappingMemoryOneRuntimeCheckIjEvSt8functionIFvPT_S2_jEES4_PKc)
	jirl	$ra, $ra, 0
.Ltmp196:                               # EH_LABEL
# %bb.68:
	ori	$a0, $zero, 2240
	add.d	$a0, $sp, $a0
	ld.d	$a3, $a0, 0
	beqz	$a3, .LBB0_70
# %bb.69:
.Ltmp204:                               # EH_LABEL
	ori	$a0, $zero, 2224
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2224
	add.d	$a1, $sp, $a1
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp205:                               # EH_LABEL
.LBB0_70:                               # %_ZNSt14_Function_baseD2Ev.exit98
	ori	$a0, $zero, 2272
	add.d	$a0, $sp, $a0
	ld.d	$a3, $a0, 0
	beqz	$a3, .LBB0_72
# %bb.71:
.Ltmp207:                               # EH_LABEL
	ori	$a0, $zero, 2256
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2256
	add.d	$a1, $sp, $a1
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp208:                               # EH_LABEL
.LBB0_72:                               # %_ZNSt14_Function_baseD2Ev.exit100
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	ori	$a0, $zero, 2192
	add.d	$a0, $sp, $a0
	vst	$vr0, $a0, 0
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_8E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_8E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	ori	$a1, $zero, 2216
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	ori	$a1, $zero, 2208
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 2160
	add.d	$a0, $sp, $a0
	vst	$vr0, $a0, 0
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_9E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_9E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	ori	$a1, $zero, 2184
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	ori	$a1, $zero, 2176
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
.Ltmp210:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a2, $a0, %pc_lo12(.L.str.14)
	ori	$a0, $zero, 2192
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2160
	add.d	$a1, $sp, $a1
	pcaddu18i	$ra, %call36(_ZL37checkOverlappingMemoryOneRuntimeCheckImEvSt8functionIFvPT_S2_jEES4_PKc)
	jirl	$ra, $ra, 0
.Ltmp211:                               # EH_LABEL
# %bb.73:
	ori	$a0, $zero, 2176
	add.d	$a0, $sp, $a0
	ld.d	$a3, $a0, 0
	beqz	$a3, .LBB0_75
# %bb.74:
.Ltmp219:                               # EH_LABEL
	ori	$a0, $zero, 2160
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2160
	add.d	$a1, $sp, $a1
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp220:                               # EH_LABEL
.LBB0_75:                               # %_ZNSt14_Function_baseD2Ev.exit102
	ori	$a0, $zero, 2208
	add.d	$a0, $sp, $a0
	ld.d	$a3, $a0, 0
	beqz	$a3, .LBB0_77
# %bb.76:
.Ltmp222:                               # EH_LABEL
	ori	$a0, $zero, 2192
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2192
	add.d	$a1, $sp, $a1
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp223:                               # EH_LABEL
.LBB0_77:                               # %_ZNSt14_Function_baseD2Ev.exit104
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	ori	$a0, $zero, 2128
	add.d	$a0, $sp, $a0
	vst	$vr0, $a0, 0
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE4$_10E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE4$_10E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	ori	$a1, $zero, 2152
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE4$_10E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE4$_10E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	ori	$a1, $zero, 2144
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 2096
	add.d	$a0, $sp, $a0
	vst	$vr0, $a0, 0
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE4$_11E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE4$_11E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	ori	$a1, $zero, 2120
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE4$_11E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE4$_11E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	ori	$a1, $zero, 2112
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
.Ltmp225:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a2, $a0, %pc_lo12(.L.str.15)
	ori	$a0, $zero, 2128
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2096
	add.d	$a1, $sp, $a1
	pcaddu18i	$ra, %call36(_ZL37checkOverlappingMemoryOneRuntimeCheckIhEvSt8functionIFvPT_S2_jEES4_PKc)
	jirl	$ra, $ra, 0
.Ltmp226:                               # EH_LABEL
# %bb.78:
	ori	$a0, $zero, 2112
	add.d	$a0, $sp, $a0
	ld.d	$a3, $a0, 0
	beqz	$a3, .LBB0_80
# %bb.79:
.Ltmp234:                               # EH_LABEL
	ori	$a0, $zero, 2096
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2096
	add.d	$a1, $sp, $a1
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp235:                               # EH_LABEL
.LBB0_80:                               # %_ZNSt14_Function_baseD2Ev.exit106
	ori	$a0, $zero, 2144
	add.d	$a0, $sp, $a0
	ld.d	$a3, $a0, 0
	beqz	$a3, .LBB0_82
# %bb.81:
.Ltmp237:                               # EH_LABEL
	ori	$a0, $zero, 2128
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2128
	add.d	$a1, $sp, $a1
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp238:                               # EH_LABEL
.LBB0_82:                               # %_ZNSt14_Function_baseD2Ev.exit108
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	ori	$a0, $zero, 2064
	add.d	$a0, $sp, $a0
	vst	$vr0, $a0, 0
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE4$_10E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE4$_10E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	ori	$a1, $zero, 2088
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE4$_10E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE4$_10E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	ori	$a1, $zero, 2080
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	vst	$vr0, $sp, 2032
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE4$_11E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE4$_11E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	ori	$a1, $zero, 2056
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE4$_11E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE4$_11E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	ori	$a1, $zero, 2048
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
.Ltmp240:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a2, $a0, %pc_lo12(.L.str.16)
	ori	$a0, $zero, 2064
	add.d	$a0, $sp, $a0
	addi.d	$a1, $sp, 2032
	pcaddu18i	$ra, %call36(_ZL37checkOverlappingMemoryOneRuntimeCheckIjEvSt8functionIFvPT_S2_jEES4_PKc)
	jirl	$ra, $ra, 0
.Ltmp241:                               # EH_LABEL
# %bb.83:
	ori	$a0, $zero, 2048
	add.d	$a0, $sp, $a0
	ld.d	$a3, $a0, 0
	beqz	$a3, .LBB0_85
# %bb.84:
.Ltmp249:                               # EH_LABEL
	addi.d	$a0, $sp, 2032
	addi.d	$a1, $sp, 2032
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp250:                               # EH_LABEL
.LBB0_85:                               # %_ZNSt14_Function_baseD2Ev.exit110
	ori	$a0, $zero, 2080
	add.d	$a0, $sp, $a0
	ld.d	$a3, $a0, 0
	beqz	$a3, .LBB0_87
# %bb.86:
.Ltmp252:                               # EH_LABEL
	ori	$a0, $zero, 2064
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2064
	add.d	$a1, $sp, $a1
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp253:                               # EH_LABEL
.LBB0_87:                               # %_ZNSt14_Function_baseD2Ev.exit112
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vst	$vr0, $sp, 2000
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE4$_10E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE4$_10E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	st.d	$a0, $sp, 2024
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE4$_10E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE4$_10E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 2016
	vst	$vr0, $sp, 1968
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE4$_11E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE4$_11E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	st.d	$a0, $sp, 1992
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE4$_11E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE4$_11E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 1984
.Ltmp255:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a2, $a0, %pc_lo12(.L.str.17)
	addi.d	$a0, $sp, 2000
	addi.d	$a1, $sp, 1968
	pcaddu18i	$ra, %call36(_ZL37checkOverlappingMemoryOneRuntimeCheckImEvSt8functionIFvPT_S2_jEES4_PKc)
	jirl	$ra, $ra, 0
.Ltmp256:                               # EH_LABEL
# %bb.88:
	ld.d	$a3, $sp, 1984
	beqz	$a3, .LBB0_90
# %bb.89:
.Ltmp264:                               # EH_LABEL
	addi.d	$a0, $sp, 1968
	addi.d	$a1, $sp, 1968
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp265:                               # EH_LABEL
.LBB0_90:                               # %_ZNSt14_Function_baseD2Ev.exit114
	ld.d	$a3, $sp, 2016
	beqz	$a3, .LBB0_92
# %bb.91:
.Ltmp267:                               # EH_LABEL
	addi.d	$a0, $sp, 2000
	addi.d	$a1, $sp, 2000
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp268:                               # EH_LABEL
.LBB0_92:                               # %_ZNSt14_Function_baseD2Ev.exit116
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vst	$vr0, $sp, 1936
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE4$_12E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE4$_12E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	st.d	$a0, $sp, 1960
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 1952
	vst	$vr0, $sp, 1904
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE4$_13E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE4$_13E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	st.d	$a0, $sp, 1928
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 1920
.Ltmp270:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a2, $a0, %pc_lo12(.L.str.18)
	addi.d	$a0, $sp, 1936
	addi.d	$a1, $sp, 1904
	pcaddu18i	$ra, %call36(_ZL37checkOverlappingMemoryOneRuntimeCheckIhEvSt8functionIFvPT_S2_jEES4_PKc)
	jirl	$ra, $ra, 0
.Ltmp271:                               # EH_LABEL
# %bb.93:
	ld.d	$a3, $sp, 1920
	beqz	$a3, .LBB0_95
# %bb.94:
.Ltmp279:                               # EH_LABEL
	addi.d	$a0, $sp, 1904
	addi.d	$a1, $sp, 1904
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp280:                               # EH_LABEL
.LBB0_95:                               # %_ZNSt14_Function_baseD2Ev.exit118
	ld.d	$a3, $sp, 1952
	beqz	$a3, .LBB0_97
# %bb.96:
.Ltmp282:                               # EH_LABEL
	addi.d	$a0, $sp, 1936
	addi.d	$a1, $sp, 1936
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp283:                               # EH_LABEL
.LBB0_97:                               # %_ZNSt14_Function_baseD2Ev.exit120
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vst	$vr0, $sp, 1872
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE4$_12E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE4$_12E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	st.d	$a0, $sp, 1896
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 1888
	vst	$vr0, $sp, 1840
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE4$_13E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE4$_13E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	st.d	$a0, $sp, 1864
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 1856
.Ltmp285:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a2, $a0, %pc_lo12(.L.str.19)
	addi.d	$a0, $sp, 1872
	addi.d	$a1, $sp, 1840
	pcaddu18i	$ra, %call36(_ZL37checkOverlappingMemoryOneRuntimeCheckIjEvSt8functionIFvPT_S2_jEES4_PKc)
	jirl	$ra, $ra, 0
.Ltmp286:                               # EH_LABEL
# %bb.98:
	ld.d	$a3, $sp, 1856
	beqz	$a3, .LBB0_100
# %bb.99:
.Ltmp294:                               # EH_LABEL
	addi.d	$a0, $sp, 1840
	addi.d	$a1, $sp, 1840
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp295:                               # EH_LABEL
.LBB0_100:                              # %_ZNSt14_Function_baseD2Ev.exit122
	ld.d	$a3, $sp, 1888
	beqz	$a3, .LBB0_102
# %bb.101:
.Ltmp297:                               # EH_LABEL
	addi.d	$a0, $sp, 1872
	addi.d	$a1, $sp, 1872
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp298:                               # EH_LABEL
.LBB0_102:                              # %_ZNSt14_Function_baseD2Ev.exit124
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vst	$vr0, $sp, 1808
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE4$_12E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE4$_12E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	st.d	$a0, $sp, 1832
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 1824
	vst	$vr0, $sp, 1776
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE4$_13E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE4$_13E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	st.d	$a0, $sp, 1800
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 1792
.Ltmp300:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a2, $a0, %pc_lo12(.L.str.20)
	addi.d	$a0, $sp, 1808
	addi.d	$a1, $sp, 1776
	pcaddu18i	$ra, %call36(_ZL37checkOverlappingMemoryOneRuntimeCheckImEvSt8functionIFvPT_S2_jEES4_PKc)
	jirl	$ra, $ra, 0
.Ltmp301:                               # EH_LABEL
# %bb.103:
	ld.d	$a3, $sp, 1792
	beqz	$a3, .LBB0_105
# %bb.104:
.Ltmp309:                               # EH_LABEL
	addi.d	$a0, $sp, 1776
	addi.d	$a1, $sp, 1776
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp310:                               # EH_LABEL
.LBB0_105:                              # %_ZNSt14_Function_baseD2Ev.exit126
	ld.d	$a3, $sp, 1824
	beqz	$a3, .LBB0_107
# %bb.106:
.Ltmp312:                               # EH_LABEL
	addi.d	$a0, $sp, 1808
	addi.d	$a1, $sp, 1808
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp313:                               # EH_LABEL
.LBB0_107:                              # %_ZNSt14_Function_baseD2Ev.exit128
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vst	$vr0, $sp, 1744
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE4$_14E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE4$_14E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	st.d	$a0, $sp, 1768
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE4$_14E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE4$_14E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 1760
	vst	$vr0, $sp, 1712
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE4$_15E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE4$_15E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	st.d	$a0, $sp, 1736
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE4$_15E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE4$_15E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 1728
.Ltmp315:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a2, $a0, %pc_lo12(.L.str.21)
	addi.d	$a0, $sp, 1744
	addi.d	$a1, $sp, 1712
	pcaddu18i	$ra, %call36(_ZL37checkOverlappingMemoryOneRuntimeCheckIhEvSt8functionIFvPT_S2_jEES4_PKc)
	jirl	$ra, $ra, 0
.Ltmp316:                               # EH_LABEL
# %bb.108:
	ld.d	$a3, $sp, 1728
	beqz	$a3, .LBB0_110
# %bb.109:
.Ltmp324:                               # EH_LABEL
	addi.d	$a0, $sp, 1712
	addi.d	$a1, $sp, 1712
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp325:                               # EH_LABEL
.LBB0_110:                              # %_ZNSt14_Function_baseD2Ev.exit130
	ld.d	$a3, $sp, 1760
	beqz	$a3, .LBB0_112
# %bb.111:
.Ltmp327:                               # EH_LABEL
	addi.d	$a0, $sp, 1744
	addi.d	$a1, $sp, 1744
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp328:                               # EH_LABEL
.LBB0_112:                              # %_ZNSt14_Function_baseD2Ev.exit132
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vst	$vr0, $sp, 1680
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE4$_14E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE4$_14E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	st.d	$a0, $sp, 1704
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE4$_14E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE4$_14E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 1696
	vst	$vr0, $sp, 1648
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE4$_15E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE4$_15E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	st.d	$a0, $sp, 1672
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE4$_15E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE4$_15E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 1664
.Ltmp330:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a2, $a0, %pc_lo12(.L.str.22)
	addi.d	$a0, $sp, 1680
	addi.d	$a1, $sp, 1648
	pcaddu18i	$ra, %call36(_ZL37checkOverlappingMemoryOneRuntimeCheckIjEvSt8functionIFvPT_S2_jEES4_PKc)
	jirl	$ra, $ra, 0
.Ltmp331:                               # EH_LABEL
# %bb.113:
	ld.d	$a3, $sp, 1664
	beqz	$a3, .LBB0_115
# %bb.114:
.Ltmp339:                               # EH_LABEL
	addi.d	$a0, $sp, 1648
	addi.d	$a1, $sp, 1648
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp340:                               # EH_LABEL
.LBB0_115:                              # %_ZNSt14_Function_baseD2Ev.exit134
	ld.d	$a3, $sp, 1696
	beqz	$a3, .LBB0_117
# %bb.116:
.Ltmp342:                               # EH_LABEL
	addi.d	$a0, $sp, 1680
	addi.d	$a1, $sp, 1680
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp343:                               # EH_LABEL
.LBB0_117:                              # %_ZNSt14_Function_baseD2Ev.exit136
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vst	$vr0, $sp, 1616
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE4$_14E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE4$_14E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	st.d	$a0, $sp, 1640
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE4$_14E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE4$_14E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 1632
	vst	$vr0, $sp, 1584
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE4$_15E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE4$_15E9_M_invokeERKSt9_Any_dataOS0_S7_Oj)
	st.d	$a0, $sp, 1608
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE4$_15E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE4$_15E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 1600
.Ltmp345:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a2, $a0, %pc_lo12(.L.str.23)
	addi.d	$a0, $sp, 1616
	addi.d	$a1, $sp, 1584
	pcaddu18i	$ra, %call36(_ZL37checkOverlappingMemoryOneRuntimeCheckImEvSt8functionIFvPT_S2_jEES4_PKc)
	jirl	$ra, $ra, 0
.Ltmp346:                               # EH_LABEL
# %bb.118:
	ld.d	$a3, $sp, 1600
	beqz	$a3, .LBB0_120
# %bb.119:
.Ltmp354:                               # EH_LABEL
	addi.d	$a0, $sp, 1584
	addi.d	$a1, $sp, 1584
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp355:                               # EH_LABEL
.LBB0_120:                              # %_ZNSt14_Function_baseD2Ev.exit138
	ld.d	$a3, $sp, 1632
	beqz	$a3, .LBB0_122
# %bb.121:
.Ltmp357:                               # EH_LABEL
	addi.d	$a0, $sp, 1616
	addi.d	$a1, $sp, 1616
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp358:                               # EH_LABEL
.LBB0_122:                              # %_ZNSt14_Function_baseD2Ev.exit140
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vst	$vr0, $sp, 1552
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPjS0_S0_jEZ4mainE4$_16E9_M_invokeERKSt9_Any_dataOS0_S7_S7_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPjS0_S0_jEZ4mainE4$_16E9_M_invokeERKSt9_Any_dataOS0_S7_S7_Oj)
	st.d	$a0, $sp, 1576
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPjS0_S0_jEZ4mainE4$_16E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPjS0_S0_jEZ4mainE4$_16E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 1568
	vst	$vr0, $sp, 1520
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPjS0_S0_jEZ4mainE4$_17E9_M_invokeERKSt9_Any_dataOS0_S7_S7_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPjS0_S0_jEZ4mainE4$_17E9_M_invokeERKSt9_Any_dataOS0_S7_S7_Oj)
	st.d	$a0, $sp, 1544
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPjS0_S0_jEZ4mainE4$_17E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPjS0_S0_jEZ4mainE4$_17E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 1536
.Ltmp360:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a2, $a0, %pc_lo12(.L.str.24)
	addi.d	$a0, $sp, 1552
	addi.d	$a1, $sp, 1520
	pcaddu18i	$ra, %call36(_ZL38checkOverlappingMemoryTwoRuntimeChecksIjEvSt8functionIFvPT_S2_S2_jEES4_PKc)
	jirl	$ra, $ra, 0
.Ltmp361:                               # EH_LABEL
# %bb.123:
	ld.d	$a3, $sp, 1536
	beqz	$a3, .LBB0_125
# %bb.124:
.Ltmp369:                               # EH_LABEL
	addi.d	$a0, $sp, 1520
	addi.d	$a1, $sp, 1520
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp370:                               # EH_LABEL
.LBB0_125:                              # %_ZNSt14_Function_baseD2Ev.exit142
	ld.d	$a3, $sp, 1568
	beqz	$a3, .LBB0_127
# %bb.126:
.Ltmp372:                               # EH_LABEL
	addi.d	$a0, $sp, 1552
	addi.d	$a1, $sp, 1552
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp373:                               # EH_LABEL
.LBB0_127:                              # %_ZNSt14_Function_baseD2Ev.exit144
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vst	$vr0, $sp, 1488
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPhS0_S0_jEZ4mainE4$_16E9_M_invokeERKSt9_Any_dataOS0_S7_S7_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPhS0_S0_jEZ4mainE4$_16E9_M_invokeERKSt9_Any_dataOS0_S7_S7_Oj)
	st.d	$a0, $sp, 1512
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPhS0_S0_jEZ4mainE4$_16E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPhS0_S0_jEZ4mainE4$_16E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 1504
	vst	$vr0, $sp, 1456
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPhS0_S0_jEZ4mainE4$_17E9_M_invokeERKSt9_Any_dataOS0_S7_S7_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPhS0_S0_jEZ4mainE4$_17E9_M_invokeERKSt9_Any_dataOS0_S7_S7_Oj)
	st.d	$a0, $sp, 1480
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPhS0_S0_jEZ4mainE4$_17E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPhS0_S0_jEZ4mainE4$_17E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 1472
.Ltmp375:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a2, $a0, %pc_lo12(.L.str.25)
	addi.d	$a0, $sp, 1488
	addi.d	$a1, $sp, 1456
	pcaddu18i	$ra, %call36(_ZL38checkOverlappingMemoryTwoRuntimeChecksIhEvSt8functionIFvPT_S2_S2_jEES4_PKc)
	jirl	$ra, $ra, 0
.Ltmp376:                               # EH_LABEL
# %bb.128:
	ld.d	$a3, $sp, 1472
	beqz	$a3, .LBB0_130
# %bb.129:
.Ltmp384:                               # EH_LABEL
	addi.d	$a0, $sp, 1456
	addi.d	$a1, $sp, 1456
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp385:                               # EH_LABEL
.LBB0_130:                              # %_ZNSt14_Function_baseD2Ev.exit146
	ld.d	$a3, $sp, 1504
	beqz	$a3, .LBB0_132
# %bb.131:
.Ltmp387:                               # EH_LABEL
	addi.d	$a0, $sp, 1488
	addi.d	$a1, $sp, 1488
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp388:                               # EH_LABEL
.LBB0_132:                              # %_ZNSt14_Function_baseD2Ev.exit148
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vst	$vr0, $sp, 1424
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPmS0_S0_jEZ4mainE4$_16E9_M_invokeERKSt9_Any_dataOS0_S7_S7_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPmS0_S0_jEZ4mainE4$_16E9_M_invokeERKSt9_Any_dataOS0_S7_S7_Oj)
	st.d	$a0, $sp, 1448
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPmS0_S0_jEZ4mainE4$_16E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPmS0_S0_jEZ4mainE4$_16E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 1440
	vst	$vr0, $sp, 1392
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPmS0_S0_jEZ4mainE4$_17E9_M_invokeERKSt9_Any_dataOS0_S7_S7_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPmS0_S0_jEZ4mainE4$_17E9_M_invokeERKSt9_Any_dataOS0_S7_S7_Oj)
	st.d	$a0, $sp, 1416
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPmS0_S0_jEZ4mainE4$_17E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPmS0_S0_jEZ4mainE4$_17E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 1408
.Ltmp390:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a2, $a0, %pc_lo12(.L.str.26)
	addi.d	$a0, $sp, 1424
	addi.d	$a1, $sp, 1392
	pcaddu18i	$ra, %call36(_ZL38checkOverlappingMemoryTwoRuntimeChecksImEvSt8functionIFvPT_S2_S2_jEES4_PKc)
	jirl	$ra, $ra, 0
.Ltmp391:                               # EH_LABEL
# %bb.133:
	ld.d	$a3, $sp, 1408
	beqz	$a3, .LBB0_135
# %bb.134:
.Ltmp399:                               # EH_LABEL
	addi.d	$a0, $sp, 1392
	addi.d	$a1, $sp, 1392
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp400:                               # EH_LABEL
.LBB0_135:                              # %_ZNSt14_Function_baseD2Ev.exit150
	ld.d	$a3, $sp, 1440
	beqz	$a3, .LBB0_137
# %bb.136:
.Ltmp402:                               # EH_LABEL
	addi.d	$a0, $sp, 1424
	addi.d	$a1, $sp, 1424
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp403:                               # EH_LABEL
.LBB0_137:                              # %_ZNSt14_Function_baseD2Ev.exit152
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vst	$vr0, $sp, 1360
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPhS0_S0_jEZ4mainE4$_18E9_M_invokeERKSt9_Any_dataOS0_S7_S7_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPhS0_S0_jEZ4mainE4$_18E9_M_invokeERKSt9_Any_dataOS0_S7_S7_Oj)
	st.d	$a0, $sp, 1384
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPhS0_S0_jEZ4mainE4$_18E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPhS0_S0_jEZ4mainE4$_18E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 1376
	vst	$vr0, $sp, 1328
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPhS0_S0_jEZ4mainE4$_19E9_M_invokeERKSt9_Any_dataOS0_S7_S7_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPhS0_S0_jEZ4mainE4$_19E9_M_invokeERKSt9_Any_dataOS0_S7_S7_Oj)
	st.d	$a0, $sp, 1352
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPhS0_S0_jEZ4mainE4$_19E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPhS0_S0_jEZ4mainE4$_19E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 1344
.Ltmp405:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a2, $a0, %pc_lo12(.L.str.27)
	addi.d	$a0, $sp, 1360
	addi.d	$a1, $sp, 1328
	pcaddu18i	$ra, %call36(_ZL38checkOverlappingMemoryTwoRuntimeChecksIhEvSt8functionIFvPT_S2_S2_jEES4_PKc)
	jirl	$ra, $ra, 0
.Ltmp406:                               # EH_LABEL
# %bb.138:
	ld.d	$a3, $sp, 1344
	beqz	$a3, .LBB0_140
# %bb.139:
.Ltmp414:                               # EH_LABEL
	addi.d	$a0, $sp, 1328
	addi.d	$a1, $sp, 1328
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp415:                               # EH_LABEL
.LBB0_140:                              # %_ZNSt14_Function_baseD2Ev.exit154
	ld.d	$a3, $sp, 1376
	beqz	$a3, .LBB0_142
# %bb.141:
.Ltmp417:                               # EH_LABEL
	addi.d	$a0, $sp, 1360
	addi.d	$a1, $sp, 1360
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp418:                               # EH_LABEL
.LBB0_142:                              # %_ZNSt14_Function_baseD2Ev.exit156
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vst	$vr0, $sp, 1296
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPjS0_S0_jEZ4mainE4$_18E9_M_invokeERKSt9_Any_dataOS0_S7_S7_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPjS0_S0_jEZ4mainE4$_18E9_M_invokeERKSt9_Any_dataOS0_S7_S7_Oj)
	st.d	$a0, $sp, 1320
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPjS0_S0_jEZ4mainE4$_18E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPjS0_S0_jEZ4mainE4$_18E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 1312
	vst	$vr0, $sp, 1264
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPjS0_S0_jEZ4mainE4$_19E9_M_invokeERKSt9_Any_dataOS0_S7_S7_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPjS0_S0_jEZ4mainE4$_19E9_M_invokeERKSt9_Any_dataOS0_S7_S7_Oj)
	st.d	$a0, $sp, 1288
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPjS0_S0_jEZ4mainE4$_19E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPjS0_S0_jEZ4mainE4$_19E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 1280
.Ltmp420:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a2, $a0, %pc_lo12(.L.str.28)
	addi.d	$a0, $sp, 1296
	addi.d	$a1, $sp, 1264
	pcaddu18i	$ra, %call36(_ZL38checkOverlappingMemoryTwoRuntimeChecksIjEvSt8functionIFvPT_S2_S2_jEES4_PKc)
	jirl	$ra, $ra, 0
.Ltmp421:                               # EH_LABEL
# %bb.143:
	ld.d	$a3, $sp, 1280
	beqz	$a3, .LBB0_145
# %bb.144:
.Ltmp429:                               # EH_LABEL
	addi.d	$a0, $sp, 1264
	addi.d	$a1, $sp, 1264
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp430:                               # EH_LABEL
.LBB0_145:                              # %_ZNSt14_Function_baseD2Ev.exit158
	ld.d	$a3, $sp, 1312
	beqz	$a3, .LBB0_147
# %bb.146:
.Ltmp432:                               # EH_LABEL
	addi.d	$a0, $sp, 1296
	addi.d	$a1, $sp, 1296
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp433:                               # EH_LABEL
.LBB0_147:                              # %_ZNSt14_Function_baseD2Ev.exit160
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vst	$vr0, $sp, 1232
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPmS0_S0_jEZ4mainE4$_18E9_M_invokeERKSt9_Any_dataOS0_S7_S7_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPmS0_S0_jEZ4mainE4$_18E9_M_invokeERKSt9_Any_dataOS0_S7_S7_Oj)
	st.d	$a0, $sp, 1256
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPmS0_S0_jEZ4mainE4$_18E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPmS0_S0_jEZ4mainE4$_18E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 1248
	vst	$vr0, $sp, 1200
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPmS0_S0_jEZ4mainE4$_19E9_M_invokeERKSt9_Any_dataOS0_S7_S7_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPmS0_S0_jEZ4mainE4$_19E9_M_invokeERKSt9_Any_dataOS0_S7_S7_Oj)
	st.d	$a0, $sp, 1224
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPmS0_S0_jEZ4mainE4$_19E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPmS0_S0_jEZ4mainE4$_19E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 1216
.Ltmp435:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a2, $a0, %pc_lo12(.L.str.29)
	addi.d	$a0, $sp, 1232
	addi.d	$a1, $sp, 1200
	pcaddu18i	$ra, %call36(_ZL38checkOverlappingMemoryTwoRuntimeChecksImEvSt8functionIFvPT_S2_S2_jEES4_PKc)
	jirl	$ra, $ra, 0
.Ltmp436:                               # EH_LABEL
# %bb.148:
	ld.d	$a3, $sp, 1216
	beqz	$a3, .LBB0_150
# %bb.149:
.Ltmp444:                               # EH_LABEL
	addi.d	$a0, $sp, 1200
	addi.d	$a1, $sp, 1200
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp445:                               # EH_LABEL
.LBB0_150:                              # %_ZNSt14_Function_baseD2Ev.exit162
	ld.d	$a3, $sp, 1248
	beqz	$a3, .LBB0_152
# %bb.151:
.Ltmp447:                               # EH_LABEL
	addi.d	$a0, $sp, 1232
	addi.d	$a1, $sp, 1232
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp448:                               # EH_LABEL
.LBB0_152:                              # %_ZNSt14_Function_baseD2Ev.exit164
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vst	$vr0, $sp, 1168
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_20E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_)
	addi.d	$fp, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_20E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_)
	st.d	$fp, $sp, 1192
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_20E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$s0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_20E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$s0, $sp, 1184
	vst	$vr0, $sp, 1136
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_21E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_)
	addi.d	$s1, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_21E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_)
	st.d	$s1, $sp, 1160
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_21E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$s2, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_21E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$s2, $sp, 1152
.Ltmp450:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a3, $a0, %pc_lo12(.L.str.30)
	addi.d	$a0, $sp, 1168
	addi.d	$a1, $sp, 1136
	ori	$a2, $zero, 100
	pcaddu18i	$ra, %call36(_ZL44checkOverlappingMemoryTwoRuntimeChecksNestedIhEvSt8functionIFvPT_S2_jjEES4_iiPKc)
	jirl	$ra, $ra, 0
.Ltmp451:                               # EH_LABEL
# %bb.153:
	ld.d	$a3, $sp, 1152
	beqz	$a3, .LBB0_155
# %bb.154:
.Ltmp459:                               # EH_LABEL
	addi.d	$a0, $sp, 1136
	addi.d	$a1, $sp, 1136
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp460:                               # EH_LABEL
.LBB0_155:                              # %_ZNSt14_Function_baseD2Ev.exit166
	ld.d	$a3, $sp, 1184
	beqz	$a3, .LBB0_157
# %bb.156:
.Ltmp462:                               # EH_LABEL
	addi.d	$a0, $sp, 1168
	addi.d	$a1, $sp, 1168
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp463:                               # EH_LABEL
.LBB0_157:                              # %_ZNSt14_Function_baseD2Ev.exit168
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vst	$vr0, $sp, 1104
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_20E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_)
	addi.d	$s3, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_20E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_)
	st.d	$s3, $sp, 1128
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_20E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$s4, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_20E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$s4, $sp, 1120
	vst	$vr0, $sp, 1072
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_21E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_)
	addi.d	$s5, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_21E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_)
	st.d	$s5, $sp, 1096
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_21E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$s6, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_21E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$s6, $sp, 1088
.Ltmp465:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.31)
	addi.d	$a3, $a0, %pc_lo12(.L.str.31)
	addi.d	$a0, $sp, 1104
	addi.d	$a1, $sp, 1072
	ori	$a2, $zero, 100
	pcaddu18i	$ra, %call36(_ZL44checkOverlappingMemoryTwoRuntimeChecksNestedIjEvSt8functionIFvPT_S2_jjEES4_iiPKc)
	jirl	$ra, $ra, 0
.Ltmp466:                               # EH_LABEL
# %bb.158:
	ld.d	$a3, $sp, 1088
	beqz	$a3, .LBB0_160
# %bb.159:
.Ltmp474:                               # EH_LABEL
	addi.d	$a0, $sp, 1072
	addi.d	$a1, $sp, 1072
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp475:                               # EH_LABEL
.LBB0_160:                              # %_ZNSt14_Function_baseD2Ev.exit170
	st.d	$s4, $sp, 16                    # 8-byte Folded Spill
	st.d	$s3, $sp, 24                    # 8-byte Folded Spill
	ld.d	$a3, $sp, 1120
	beqz	$a3, .LBB0_162
# %bb.161:
.Ltmp477:                               # EH_LABEL
	addi.d	$a0, $sp, 1104
	addi.d	$a1, $sp, 1104
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp478:                               # EH_LABEL
.LBB0_162:                              # %_ZNSt14_Function_baseD2Ev.exit172
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vst	$vr0, $sp, 1040
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_20E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_)
	addi.d	$s7, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_20E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_)
	st.d	$s7, $sp, 1064
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_20E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$s8, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_20E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$s8, $sp, 1056
	vst	$vr0, $sp, 1008
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_21E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_)
	addi.d	$s3, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_21E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_)
	st.d	$s3, $sp, 1032
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_21E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$s4, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_21E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$s4, $sp, 1024
.Ltmp480:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a3, $a0, %pc_lo12(.L.str.32)
	addi.d	$a0, $sp, 1040
	addi.d	$a1, $sp, 1008
	ori	$a2, $zero, 100
	pcaddu18i	$ra, %call36(_ZL44checkOverlappingMemoryTwoRuntimeChecksNestedImEvSt8functionIFvPT_S2_jjEES4_iiPKc)
	jirl	$ra, $ra, 0
.Ltmp481:                               # EH_LABEL
# %bb.163:
	ld.d	$a3, $sp, 1024
	beqz	$a3, .LBB0_165
# %bb.164:
.Ltmp489:                               # EH_LABEL
	addi.d	$a0, $sp, 1008
	addi.d	$a1, $sp, 1008
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp490:                               # EH_LABEL
.LBB0_165:                              # %_ZNSt14_Function_baseD2Ev.exit174
	ld.d	$a3, $sp, 1056
	beqz	$a3, .LBB0_167
# %bb.166:
.Ltmp492:                               # EH_LABEL
	addi.d	$a0, $sp, 1040
	addi.d	$a1, $sp, 1040
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp493:                               # EH_LABEL
.LBB0_167:                              # %_ZNSt14_Function_baseD2Ev.exit176
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vst	$vr0, $sp, 976
	st.d	$fp, $sp, 1000
	st.d	$s0, $sp, 992
	vst	$vr0, $sp, 944
	st.d	$s1, $sp, 968
	st.d	$s2, $sp, 960
.Ltmp495:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a3, $a0, %pc_lo12(.L.str.33)
	addi.d	$a0, $sp, 976
	addi.d	$a1, $sp, 944
	ori	$a2, $zero, 50
	pcaddu18i	$ra, %call36(_ZL44checkOverlappingMemoryTwoRuntimeChecksNestedIhEvSt8functionIFvPT_S2_jjEES4_iiPKc)
	jirl	$ra, $ra, 0
.Ltmp496:                               # EH_LABEL
# %bb.168:
	ld.d	$a3, $sp, 960
	beqz	$a3, .LBB0_170
# %bb.169:
.Ltmp504:                               # EH_LABEL
	addi.d	$a0, $sp, 944
	addi.d	$a1, $sp, 944
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp505:                               # EH_LABEL
.LBB0_170:                              # %_ZNSt14_Function_baseD2Ev.exit178
	ld.d	$a3, $sp, 992
	beqz	$a3, .LBB0_172
# %bb.171:
.Ltmp507:                               # EH_LABEL
	addi.d	$a0, $sp, 976
	addi.d	$a1, $sp, 976
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp508:                               # EH_LABEL
.LBB0_172:                              # %_ZNSt14_Function_baseD2Ev.exit180
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vst	$vr0, $sp, 912
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	st.d	$a0, $sp, 936
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	st.d	$a0, $sp, 928
	vst	$vr0, $sp, 880
	st.d	$s5, $sp, 904
	st.d	$s6, $sp, 896
.Ltmp510:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$a3, $a0, %pc_lo12(.L.str.34)
	addi.d	$a0, $sp, 912
	addi.d	$a1, $sp, 880
	ori	$a2, $zero, 50
	pcaddu18i	$ra, %call36(_ZL44checkOverlappingMemoryTwoRuntimeChecksNestedIjEvSt8functionIFvPT_S2_jjEES4_iiPKc)
	jirl	$ra, $ra, 0
.Ltmp511:                               # EH_LABEL
# %bb.173:
	ld.d	$a3, $sp, 896
	beqz	$a3, .LBB0_175
# %bb.174:
.Ltmp519:                               # EH_LABEL
	addi.d	$a0, $sp, 880
	addi.d	$a1, $sp, 880
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp520:                               # EH_LABEL
.LBB0_175:                              # %_ZNSt14_Function_baseD2Ev.exit182
	ld.d	$a3, $sp, 928
	beqz	$a3, .LBB0_177
# %bb.176:
.Ltmp522:                               # EH_LABEL
	addi.d	$a0, $sp, 912
	addi.d	$a1, $sp, 912
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp523:                               # EH_LABEL
.LBB0_177:                              # %_ZNSt14_Function_baseD2Ev.exit184
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vst	$vr0, $sp, 848
	st.d	$s7, $sp, 872
	st.d	$s8, $sp, 864
	vst	$vr0, $sp, 816
	st.d	$s3, $sp, 840
	st.d	$s4, $sp, 832
.Ltmp525:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.35)
	addi.d	$a3, $a0, %pc_lo12(.L.str.35)
	addi.d	$a0, $sp, 848
	addi.d	$a1, $sp, 816
	ori	$a2, $zero, 50
	pcaddu18i	$ra, %call36(_ZL44checkOverlappingMemoryTwoRuntimeChecksNestedImEvSt8functionIFvPT_S2_jjEES4_iiPKc)
	jirl	$ra, $ra, 0
.Ltmp526:                               # EH_LABEL
# %bb.178:
	ld.d	$a3, $sp, 832
	beqz	$a3, .LBB0_180
# %bb.179:
.Ltmp534:                               # EH_LABEL
	addi.d	$a0, $sp, 816
	addi.d	$a1, $sp, 816
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp535:                               # EH_LABEL
.LBB0_180:                              # %_ZNSt14_Function_baseD2Ev.exit186
	ld.d	$a3, $sp, 864
	beqz	$a3, .LBB0_182
# %bb.181:
.Ltmp537:                               # EH_LABEL
	addi.d	$a0, $sp, 848
	addi.d	$a1, $sp, 848
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp538:                               # EH_LABEL
.LBB0_182:                              # %_ZNSt14_Function_baseD2Ev.exit188
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vst	$vr0, $sp, 784
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_22E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_)
	addi.d	$fp, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_22E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_)
	st.d	$fp, $sp, 808
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_22E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$s0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_22E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$s0, $sp, 800
	vst	$vr0, $sp, 752
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_23E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_)
	addi.d	$s1, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_23E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_)
	st.d	$s1, $sp, 776
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_23E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$s2, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_23E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$s2, $sp, 768
.Ltmp540:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.36)
	addi.d	$a3, $a0, %pc_lo12(.L.str.36)
	addi.d	$a0, $sp, 784
	addi.d	$a1, $sp, 752
	ori	$a2, $zero, 100
	pcaddu18i	$ra, %call36(_ZL44checkOverlappingMemoryTwoRuntimeChecksNestedIhEvSt8functionIFvPT_S2_jjEES4_iiPKc)
	jirl	$ra, $ra, 0
.Ltmp541:                               # EH_LABEL
# %bb.183:
	ld.d	$a3, $sp, 768
	beqz	$a3, .LBB0_185
# %bb.184:
.Ltmp549:                               # EH_LABEL
	addi.d	$a0, $sp, 752
	addi.d	$a1, $sp, 752
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp550:                               # EH_LABEL
.LBB0_185:                              # %_ZNSt14_Function_baseD2Ev.exit190
	ld.d	$a3, $sp, 800
	beqz	$a3, .LBB0_187
# %bb.186:
.Ltmp552:                               # EH_LABEL
	addi.d	$a0, $sp, 784
	addi.d	$a1, $sp, 784
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp553:                               # EH_LABEL
.LBB0_187:                              # %_ZNSt14_Function_baseD2Ev.exit192
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vst	$vr0, $sp, 720
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_22E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_)
	addi.d	$s3, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_22E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_)
	st.d	$s3, $sp, 744
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_22E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$s4, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_22E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$s4, $sp, 736
	vst	$vr0, $sp, 688
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_23E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_)
	addi.d	$s5, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_23E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_)
	st.d	$s5, $sp, 712
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_23E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$s6, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_23E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$s6, $sp, 704
.Ltmp555:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.37)
	addi.d	$a3, $a0, %pc_lo12(.L.str.37)
	addi.d	$a0, $sp, 720
	addi.d	$a1, $sp, 688
	ori	$a2, $zero, 100
	pcaddu18i	$ra, %call36(_ZL44checkOverlappingMemoryTwoRuntimeChecksNestedIjEvSt8functionIFvPT_S2_jjEES4_iiPKc)
	jirl	$ra, $ra, 0
.Ltmp556:                               # EH_LABEL
# %bb.188:
	ld.d	$a3, $sp, 704
	beqz	$a3, .LBB0_190
# %bb.189:
.Ltmp564:                               # EH_LABEL
	addi.d	$a0, $sp, 688
	addi.d	$a1, $sp, 688
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp565:                               # EH_LABEL
.LBB0_190:                              # %_ZNSt14_Function_baseD2Ev.exit194
	st.d	$s4, $sp, 16                    # 8-byte Folded Spill
	st.d	$s3, $sp, 24                    # 8-byte Folded Spill
	ld.d	$a3, $sp, 736
	beqz	$a3, .LBB0_192
# %bb.191:
.Ltmp567:                               # EH_LABEL
	addi.d	$a0, $sp, 720
	addi.d	$a1, $sp, 720
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp568:                               # EH_LABEL
.LBB0_192:                              # %_ZNSt14_Function_baseD2Ev.exit196
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vst	$vr0, $sp, 656
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_22E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_)
	addi.d	$s7, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_22E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_)
	st.d	$s7, $sp, 680
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_22E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$s8, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_22E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$s8, $sp, 672
	vst	$vr0, $sp, 624
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_23E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_)
	addi.d	$s3, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_23E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_)
	st.d	$s3, $sp, 648
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_23E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$s4, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_23E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$s4, $sp, 640
.Ltmp570:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.38)
	addi.d	$a3, $a0, %pc_lo12(.L.str.38)
	addi.d	$a0, $sp, 656
	addi.d	$a1, $sp, 624
	ori	$a2, $zero, 100
	pcaddu18i	$ra, %call36(_ZL44checkOverlappingMemoryTwoRuntimeChecksNestedImEvSt8functionIFvPT_S2_jjEES4_iiPKc)
	jirl	$ra, $ra, 0
.Ltmp571:                               # EH_LABEL
# %bb.193:
	ld.d	$a3, $sp, 640
	beqz	$a3, .LBB0_195
# %bb.194:
.Ltmp579:                               # EH_LABEL
	addi.d	$a0, $sp, 624
	addi.d	$a1, $sp, 624
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp580:                               # EH_LABEL
.LBB0_195:                              # %_ZNSt14_Function_baseD2Ev.exit198
	ld.d	$a3, $sp, 672
	beqz	$a3, .LBB0_197
# %bb.196:
.Ltmp582:                               # EH_LABEL
	addi.d	$a0, $sp, 656
	addi.d	$a1, $sp, 656
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp583:                               # EH_LABEL
.LBB0_197:                              # %_ZNSt14_Function_baseD2Ev.exit200
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vst	$vr0, $sp, 592
	st.d	$fp, $sp, 616
	st.d	$s0, $sp, 608
	vst	$vr0, $sp, 560
	st.d	$s1, $sp, 584
	st.d	$s2, $sp, 576
.Ltmp585:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.39)
	addi.d	$a3, $a0, %pc_lo12(.L.str.39)
	addi.d	$a0, $sp, 592
	addi.d	$a1, $sp, 560
	ori	$a2, $zero, 50
	pcaddu18i	$ra, %call36(_ZL44checkOverlappingMemoryTwoRuntimeChecksNestedIhEvSt8functionIFvPT_S2_jjEES4_iiPKc)
	jirl	$ra, $ra, 0
.Ltmp586:                               # EH_LABEL
# %bb.198:
	ld.d	$a3, $sp, 576
	beqz	$a3, .LBB0_200
# %bb.199:
.Ltmp594:                               # EH_LABEL
	addi.d	$a0, $sp, 560
	addi.d	$a1, $sp, 560
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp595:                               # EH_LABEL
.LBB0_200:                              # %_ZNSt14_Function_baseD2Ev.exit202
	ld.d	$a3, $sp, 608
	beqz	$a3, .LBB0_202
# %bb.201:
.Ltmp597:                               # EH_LABEL
	addi.d	$a0, $sp, 592
	addi.d	$a1, $sp, 592
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp598:                               # EH_LABEL
.LBB0_202:                              # %_ZNSt14_Function_baseD2Ev.exit204
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vst	$vr0, $sp, 528
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	st.d	$a0, $sp, 552
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	st.d	$a0, $sp, 544
	vst	$vr0, $sp, 496
	st.d	$s5, $sp, 520
	st.d	$s6, $sp, 512
.Ltmp600:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.40)
	addi.d	$a3, $a0, %pc_lo12(.L.str.40)
	addi.d	$a0, $sp, 528
	addi.d	$a1, $sp, 496
	ori	$a2, $zero, 50
	pcaddu18i	$ra, %call36(_ZL44checkOverlappingMemoryTwoRuntimeChecksNestedIjEvSt8functionIFvPT_S2_jjEES4_iiPKc)
	jirl	$ra, $ra, 0
.Ltmp601:                               # EH_LABEL
# %bb.203:
	ld.d	$a3, $sp, 512
	beqz	$a3, .LBB0_205
# %bb.204:
.Ltmp609:                               # EH_LABEL
	addi.d	$a0, $sp, 496
	addi.d	$a1, $sp, 496
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp610:                               # EH_LABEL
.LBB0_205:                              # %_ZNSt14_Function_baseD2Ev.exit206
	ld.d	$a3, $sp, 544
	beqz	$a3, .LBB0_207
# %bb.206:
.Ltmp612:                               # EH_LABEL
	addi.d	$a0, $sp, 528
	addi.d	$a1, $sp, 528
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp613:                               # EH_LABEL
.LBB0_207:                              # %_ZNSt14_Function_baseD2Ev.exit208
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vst	$vr0, $sp, 464
	st.d	$s7, $sp, 488
	st.d	$s8, $sp, 480
	vst	$vr0, $sp, 432
	st.d	$s3, $sp, 456
	st.d	$s4, $sp, 448
.Ltmp615:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.41)
	addi.d	$a3, $a0, %pc_lo12(.L.str.41)
	addi.d	$a0, $sp, 464
	addi.d	$a1, $sp, 432
	ori	$a2, $zero, 50
	pcaddu18i	$ra, %call36(_ZL44checkOverlappingMemoryTwoRuntimeChecksNestedImEvSt8functionIFvPT_S2_jjEES4_iiPKc)
	jirl	$ra, $ra, 0
.Ltmp616:                               # EH_LABEL
# %bb.208:
	ld.d	$a3, $sp, 448
	beqz	$a3, .LBB0_210
# %bb.209:
.Ltmp624:                               # EH_LABEL
	addi.d	$a0, $sp, 432
	addi.d	$a1, $sp, 432
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp625:                               # EH_LABEL
.LBB0_210:                              # %_ZNSt14_Function_baseD2Ev.exit210
	ld.d	$a3, $sp, 480
	beqz	$a3, .LBB0_212
# %bb.211:
.Ltmp627:                               # EH_LABEL
	addi.d	$a0, $sp, 464
	addi.d	$a1, $sp, 464
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp628:                               # EH_LABEL
.LBB0_212:                              # %_ZNSt14_Function_baseD2Ev.exit212
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vst	$vr0, $sp, 400
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_24E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_24E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_)
	st.d	$a0, $sp, 424
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_24E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_24E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 416
	vst	$vr0, $sp, 368
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_25E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_25E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_)
	st.d	$a0, $sp, 392
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_25E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_25E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 384
.Ltmp630:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.42)
	addi.d	$a3, $a0, %pc_lo12(.L.str.42)
	addi.d	$a0, $sp, 400
	addi.d	$a1, $sp, 368
	ori	$a2, $zero, 100
	pcaddu18i	$ra, %call36(_ZL44checkOverlappingMemoryTwoRuntimeChecksNestedIhEvSt8functionIFvPT_S2_jjEES4_iiPKc)
	jirl	$ra, $ra, 0
.Ltmp631:                               # EH_LABEL
# %bb.213:
	ld.d	$a3, $sp, 384
	beqz	$a3, .LBB0_215
# %bb.214:
.Ltmp639:                               # EH_LABEL
	addi.d	$a0, $sp, 368
	addi.d	$a1, $sp, 368
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp640:                               # EH_LABEL
.LBB0_215:                              # %_ZNSt14_Function_baseD2Ev.exit214
	ld.d	$a3, $sp, 416
	beqz	$a3, .LBB0_217
# %bb.216:
.Ltmp642:                               # EH_LABEL
	addi.d	$a0, $sp, 400
	addi.d	$a1, $sp, 400
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp643:                               # EH_LABEL
.LBB0_217:                              # %_ZNSt14_Function_baseD2Ev.exit216
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vst	$vr0, $sp, 336
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_24E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_24E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_)
	st.d	$a0, $sp, 360
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_24E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_24E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 352
	vst	$vr0, $sp, 304
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_25E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_25E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_)
	st.d	$a0, $sp, 328
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_25E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_25E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 320
.Ltmp645:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.43)
	addi.d	$a3, $a0, %pc_lo12(.L.str.43)
	addi.d	$a0, $sp, 336
	addi.d	$a1, $sp, 304
	ori	$a2, $zero, 100
	pcaddu18i	$ra, %call36(_ZL44checkOverlappingMemoryTwoRuntimeChecksNestedIjEvSt8functionIFvPT_S2_jjEES4_iiPKc)
	jirl	$ra, $ra, 0
.Ltmp646:                               # EH_LABEL
# %bb.218:
	ld.d	$a3, $sp, 320
	beqz	$a3, .LBB0_220
# %bb.219:
.Ltmp654:                               # EH_LABEL
	addi.d	$a0, $sp, 304
	addi.d	$a1, $sp, 304
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp655:                               # EH_LABEL
.LBB0_220:                              # %_ZNSt14_Function_baseD2Ev.exit218
	ld.d	$a3, $sp, 352
	beqz	$a3, .LBB0_222
# %bb.221:
.Ltmp657:                               # EH_LABEL
	addi.d	$a0, $sp, 336
	addi.d	$a1, $sp, 336
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp658:                               # EH_LABEL
.LBB0_222:                              # %_ZNSt14_Function_baseD2Ev.exit220
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vst	$vr0, $sp, 272
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_24E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_24E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_)
	st.d	$a0, $sp, 296
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_24E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_24E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 288
	vst	$vr0, $sp, 240
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_25E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_25E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_)
	st.d	$a0, $sp, 264
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_25E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_25E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 256
.Ltmp660:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.44)
	addi.d	$a3, $a0, %pc_lo12(.L.str.44)
	addi.d	$a0, $sp, 272
	addi.d	$a1, $sp, 240
	ori	$a2, $zero, 100
	pcaddu18i	$ra, %call36(_ZL44checkOverlappingMemoryTwoRuntimeChecksNestedImEvSt8functionIFvPT_S2_jjEES4_iiPKc)
	jirl	$ra, $ra, 0
.Ltmp661:                               # EH_LABEL
# %bb.223:
	ld.d	$a3, $sp, 256
	beqz	$a3, .LBB0_225
# %bb.224:
.Ltmp669:                               # EH_LABEL
	addi.d	$a0, $sp, 240
	addi.d	$a1, $sp, 240
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp670:                               # EH_LABEL
.LBB0_225:                              # %_ZNSt14_Function_baseD2Ev.exit222
	ld.d	$a3, $sp, 288
	beqz	$a3, .LBB0_227
# %bb.226:
.Ltmp672:                               # EH_LABEL
	addi.d	$a0, $sp, 272
	addi.d	$a1, $sp, 272
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp673:                               # EH_LABEL
.LBB0_227:                              # %_ZNSt14_Function_baseD2Ev.exit224
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vst	$vr0, $sp, 208
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_26E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_26E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_)
	st.d	$a0, $sp, 232
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_26E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_26E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 224
	vst	$vr0, $sp, 176
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_27E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_27E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_)
	st.d	$a0, $sp, 200
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_27E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_27E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 192
.Ltmp675:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.45)
	addi.d	$a3, $a0, %pc_lo12(.L.str.45)
	addi.d	$a0, $sp, 208
	addi.d	$a1, $sp, 176
	ori	$a2, $zero, 100
	pcaddu18i	$ra, %call36(_ZL44checkOverlappingMemoryTwoRuntimeChecksNestedIhEvSt8functionIFvPT_S2_jjEES4_iiPKc)
	jirl	$ra, $ra, 0
.Ltmp676:                               # EH_LABEL
# %bb.228:
	ld.d	$a3, $sp, 192
	beqz	$a3, .LBB0_230
# %bb.229:
.Ltmp684:                               # EH_LABEL
	addi.d	$a0, $sp, 176
	addi.d	$a1, $sp, 176
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp685:                               # EH_LABEL
.LBB0_230:                              # %_ZNSt14_Function_baseD2Ev.exit226
	ld.d	$a3, $sp, 224
	beqz	$a3, .LBB0_232
# %bb.231:
.Ltmp687:                               # EH_LABEL
	addi.d	$a0, $sp, 208
	addi.d	$a1, $sp, 208
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp688:                               # EH_LABEL
.LBB0_232:                              # %_ZNSt14_Function_baseD2Ev.exit228
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vst	$vr0, $sp, 144
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_26E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_26E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_)
	st.d	$a0, $sp, 168
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_26E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_26E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 160
	vst	$vr0, $sp, 112
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_27E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_27E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_)
	st.d	$a0, $sp, 136
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_27E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_27E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 128
.Ltmp690:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.46)
	addi.d	$a3, $a0, %pc_lo12(.L.str.46)
	addi.d	$a0, $sp, 144
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 100
	pcaddu18i	$ra, %call36(_ZL44checkOverlappingMemoryTwoRuntimeChecksNestedIjEvSt8functionIFvPT_S2_jjEES4_iiPKc)
	jirl	$ra, $ra, 0
.Ltmp691:                               # EH_LABEL
# %bb.233:
	ld.d	$a3, $sp, 128
	beqz	$a3, .LBB0_235
# %bb.234:
.Ltmp699:                               # EH_LABEL
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp700:                               # EH_LABEL
.LBB0_235:                              # %_ZNSt14_Function_baseD2Ev.exit230
	ld.d	$a3, $sp, 160
	beqz	$a3, .LBB0_237
# %bb.236:
.Ltmp702:                               # EH_LABEL
	addi.d	$a0, $sp, 144
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp703:                               # EH_LABEL
.LBB0_237:                              # %_ZNSt14_Function_baseD2Ev.exit232
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vst	$vr0, $sp, 80
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_26E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_26E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_)
	st.d	$a0, $sp, 104
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_26E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_26E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 96
	vst	$vr0, $sp, 48
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_27E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_27E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_)
	st.d	$a0, $sp, 72
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_27E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_27E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 64
.Ltmp705:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.47)
	addi.d	$a3, $a0, %pc_lo12(.L.str.47)
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 48
	ori	$a2, $zero, 100
	pcaddu18i	$ra, %call36(_ZL44checkOverlappingMemoryTwoRuntimeChecksNestedImEvSt8functionIFvPT_S2_jjEES4_iiPKc)
	jirl	$ra, $ra, 0
.Ltmp706:                               # EH_LABEL
# %bb.238:
	ld.d	$a3, $sp, 64
	beqz	$a3, .LBB0_240
# %bb.239:
.Ltmp714:                               # EH_LABEL
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 48
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp715:                               # EH_LABEL
.LBB0_240:                              # %_ZNSt14_Function_baseD2Ev.exit234
	ld.d	$a3, $sp, 96
	beqz	$a3, .LBB0_242
# %bb.241:
.Ltmp717:                               # EH_LABEL
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp718:                               # EH_LABEL
.LBB0_242:                              # %_ZNSt14_Function_baseD2Ev.exit236
	move	$a0, $zero
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2080
	add.d	$sp, $sp, $a1
	ld.d	$s8, $sp, 1944                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1952                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1960                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1968                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1976                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1984                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1992                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 2000                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 2008                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 2016                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	ret
.LBB0_243:
.Ltmp719:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_244:
.Ltmp716:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_245:
.Ltmp704:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_246:
.Ltmp701:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_247:
.Ltmp689:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_248:
.Ltmp686:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_249:
.Ltmp674:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_250:
.Ltmp671:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_251:
.Ltmp659:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_252:
.Ltmp656:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_253:
.Ltmp644:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_254:
.Ltmp641:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_255:
.Ltmp629:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_256:
.Ltmp626:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_257:
.Ltmp614:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_258:
.Ltmp611:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_259:
.Ltmp599:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_260:
.Ltmp596:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_261:
.Ltmp584:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_262:
.Ltmp581:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_263:
.Ltmp569:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_264:
.Ltmp566:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_265:
.Ltmp554:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_266:
.Ltmp551:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_267:
.Ltmp539:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_268:
.Ltmp536:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_269:
.Ltmp524:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_270:
.Ltmp521:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_271:
.Ltmp509:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_272:
.Ltmp506:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_273:
.Ltmp494:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_274:
.Ltmp491:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_275:
.Ltmp479:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_276:
.Ltmp476:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_277:
.Ltmp464:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_278:
.Ltmp461:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_279:
.Ltmp449:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_280:
.Ltmp446:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_281:
.Ltmp434:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_282:
.Ltmp431:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_283:
.Ltmp419:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_284:
.Ltmp416:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_285:
.Ltmp404:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_286:
.Ltmp401:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_287:
.Ltmp389:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_288:
.Ltmp386:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_289:
.Ltmp374:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_290:
.Ltmp371:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_291:
.Ltmp359:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_292:
.Ltmp356:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_293:
.Ltmp344:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_294:
.Ltmp341:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_295:
.Ltmp329:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_296:
.Ltmp326:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_297:
.Ltmp314:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_298:
.Ltmp311:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_299:
.Ltmp299:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_300:
.Ltmp296:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_301:
.Ltmp284:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_302:
.Ltmp281:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_303:
.Ltmp269:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_304:
.Ltmp266:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_305:
.Ltmp254:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_306:
.Ltmp251:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_307:
.Ltmp239:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_308:
.Ltmp236:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_309:
.Ltmp224:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_310:
.Ltmp221:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_311:
.Ltmp209:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_312:
.Ltmp206:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_313:
.Ltmp194:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_314:
.Ltmp191:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_315:
.Ltmp179:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_316:
.Ltmp176:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_317:
.Ltmp164:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_318:
.Ltmp161:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_319:
.Ltmp149:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_320:
.Ltmp146:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_321:
.Ltmp134:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_322:
.Ltmp131:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_323:
.Ltmp119:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_324:
.Ltmp116:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_325:
.Ltmp104:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_326:
.Ltmp101:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_327:
.Ltmp89:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_328:
.Ltmp86:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_329:
.Ltmp74:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_330:
.Ltmp71:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_331:
.Ltmp59:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_332:
.Ltmp56:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_333:
.Ltmp44:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_334:
.Ltmp41:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_335:
.Ltmp29:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_336:
.Ltmp26:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_337:
.Ltmp14:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_338:
.Ltmp11:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_339:
.Ltmp707:                               # EH_LABEL
	ld.d	$a3, $sp, 64
	move	$fp, $a0
	beqz	$a3, .LBB0_341
# %bb.340:
.Ltmp708:                               # EH_LABEL
	addi.d	$a0, $sp, 48
	addi.d	$a1, $sp, 48
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp709:                               # EH_LABEL
.LBB0_341:                              # %_ZNSt14_Function_baseD2Ev.exit426
	ld.d	$a3, $sp, 96
	beqz	$a3, .LBB0_625
# %bb.342:
.Ltmp711:                               # EH_LABEL
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp712:                               # EH_LABEL
	b	.LBB0_625
.LBB0_343:
.Ltmp713:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_344:
.Ltmp710:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_345:
.Ltmp692:                               # EH_LABEL
	ld.d	$a3, $sp, 128
	move	$fp, $a0
	beqz	$a3, .LBB0_347
# %bb.346:
.Ltmp693:                               # EH_LABEL
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp694:                               # EH_LABEL
.LBB0_347:                              # %_ZNSt14_Function_baseD2Ev.exit422
	ld.d	$a3, $sp, 160
	beqz	$a3, .LBB0_625
# %bb.348:
.Ltmp696:                               # EH_LABEL
	addi.d	$a0, $sp, 144
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp697:                               # EH_LABEL
	b	.LBB0_625
.LBB0_349:
.Ltmp698:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_350:
.Ltmp695:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_351:
.Ltmp677:                               # EH_LABEL
	ld.d	$a3, $sp, 192
	move	$fp, $a0
	beqz	$a3, .LBB0_353
# %bb.352:
.Ltmp678:                               # EH_LABEL
	addi.d	$a0, $sp, 176
	addi.d	$a1, $sp, 176
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp679:                               # EH_LABEL
.LBB0_353:                              # %_ZNSt14_Function_baseD2Ev.exit418
	ld.d	$a3, $sp, 224
	beqz	$a3, .LBB0_625
# %bb.354:
.Ltmp681:                               # EH_LABEL
	addi.d	$a0, $sp, 208
	addi.d	$a1, $sp, 208
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp682:                               # EH_LABEL
	b	.LBB0_625
.LBB0_355:
.Ltmp683:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_356:
.Ltmp680:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_357:
.Ltmp662:                               # EH_LABEL
	ld.d	$a3, $sp, 256
	move	$fp, $a0
	beqz	$a3, .LBB0_359
# %bb.358:
.Ltmp663:                               # EH_LABEL
	addi.d	$a0, $sp, 240
	addi.d	$a1, $sp, 240
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp664:                               # EH_LABEL
.LBB0_359:                              # %_ZNSt14_Function_baseD2Ev.exit414
	ld.d	$a3, $sp, 288
	beqz	$a3, .LBB0_625
# %bb.360:
.Ltmp666:                               # EH_LABEL
	addi.d	$a0, $sp, 272
	addi.d	$a1, $sp, 272
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp667:                               # EH_LABEL
	b	.LBB0_625
.LBB0_361:
.Ltmp668:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_362:
.Ltmp665:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_363:
.Ltmp647:                               # EH_LABEL
	ld.d	$a3, $sp, 320
	move	$fp, $a0
	beqz	$a3, .LBB0_365
# %bb.364:
.Ltmp648:                               # EH_LABEL
	addi.d	$a0, $sp, 304
	addi.d	$a1, $sp, 304
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp649:                               # EH_LABEL
.LBB0_365:                              # %_ZNSt14_Function_baseD2Ev.exit410
	ld.d	$a3, $sp, 352
	beqz	$a3, .LBB0_625
# %bb.366:
.Ltmp651:                               # EH_LABEL
	addi.d	$a0, $sp, 336
	addi.d	$a1, $sp, 336
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp652:                               # EH_LABEL
	b	.LBB0_625
.LBB0_367:
.Ltmp653:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_368:
.Ltmp650:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_369:
.Ltmp632:                               # EH_LABEL
	ld.d	$a3, $sp, 384
	move	$fp, $a0
	beqz	$a3, .LBB0_371
# %bb.370:
.Ltmp633:                               # EH_LABEL
	addi.d	$a0, $sp, 368
	addi.d	$a1, $sp, 368
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp634:                               # EH_LABEL
.LBB0_371:                              # %_ZNSt14_Function_baseD2Ev.exit406
	ld.d	$a3, $sp, 416
	beqz	$a3, .LBB0_625
# %bb.372:
.Ltmp636:                               # EH_LABEL
	addi.d	$a0, $sp, 400
	addi.d	$a1, $sp, 400
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp637:                               # EH_LABEL
	b	.LBB0_625
.LBB0_373:
.Ltmp638:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_374:
.Ltmp635:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_375:
.Ltmp617:                               # EH_LABEL
	ld.d	$a3, $sp, 448
	move	$fp, $a0
	beqz	$a3, .LBB0_377
# %bb.376:
.Ltmp618:                               # EH_LABEL
	addi.d	$a0, $sp, 432
	addi.d	$a1, $sp, 432
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp619:                               # EH_LABEL
.LBB0_377:                              # %_ZNSt14_Function_baseD2Ev.exit402
	ld.d	$a3, $sp, 480
	beqz	$a3, .LBB0_625
# %bb.378:
.Ltmp621:                               # EH_LABEL
	addi.d	$a0, $sp, 464
	addi.d	$a1, $sp, 464
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp622:                               # EH_LABEL
	b	.LBB0_625
.LBB0_379:
.Ltmp623:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_380:
.Ltmp620:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_381:
.Ltmp602:                               # EH_LABEL
	ld.d	$a3, $sp, 512
	move	$fp, $a0
	beqz	$a3, .LBB0_383
# %bb.382:
.Ltmp603:                               # EH_LABEL
	addi.d	$a0, $sp, 496
	addi.d	$a1, $sp, 496
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp604:                               # EH_LABEL
.LBB0_383:                              # %_ZNSt14_Function_baseD2Ev.exit398
	ld.d	$a3, $sp, 544
	beqz	$a3, .LBB0_625
# %bb.384:
.Ltmp606:                               # EH_LABEL
	addi.d	$a0, $sp, 528
	addi.d	$a1, $sp, 528
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp607:                               # EH_LABEL
	b	.LBB0_625
.LBB0_385:
.Ltmp608:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_386:
.Ltmp605:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_387:
.Ltmp587:                               # EH_LABEL
	ld.d	$a3, $sp, 576
	move	$fp, $a0
	beqz	$a3, .LBB0_389
# %bb.388:
.Ltmp588:                               # EH_LABEL
	addi.d	$a0, $sp, 560
	addi.d	$a1, $sp, 560
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp589:                               # EH_LABEL
.LBB0_389:                              # %_ZNSt14_Function_baseD2Ev.exit394
	ld.d	$a3, $sp, 608
	beqz	$a3, .LBB0_625
# %bb.390:
.Ltmp591:                               # EH_LABEL
	addi.d	$a0, $sp, 592
	addi.d	$a1, $sp, 592
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp592:                               # EH_LABEL
	b	.LBB0_625
.LBB0_391:
.Ltmp593:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_392:
.Ltmp590:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_393:
.Ltmp572:                               # EH_LABEL
	ld.d	$a3, $sp, 640
	move	$fp, $a0
	beqz	$a3, .LBB0_395
# %bb.394:
.Ltmp573:                               # EH_LABEL
	addi.d	$a0, $sp, 624
	addi.d	$a1, $sp, 624
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp574:                               # EH_LABEL
.LBB0_395:                              # %_ZNSt14_Function_baseD2Ev.exit390
	ld.d	$a3, $sp, 672
	beqz	$a3, .LBB0_625
# %bb.396:
.Ltmp576:                               # EH_LABEL
	addi.d	$a0, $sp, 656
	addi.d	$a1, $sp, 656
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp577:                               # EH_LABEL
	b	.LBB0_625
.LBB0_397:
.Ltmp578:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_398:
.Ltmp575:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_399:
.Ltmp557:                               # EH_LABEL
	ld.d	$a3, $sp, 704
	move	$fp, $a0
	beqz	$a3, .LBB0_401
# %bb.400:
.Ltmp558:                               # EH_LABEL
	addi.d	$a0, $sp, 688
	addi.d	$a1, $sp, 688
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp559:                               # EH_LABEL
.LBB0_401:                              # %_ZNSt14_Function_baseD2Ev.exit386
	ld.d	$a3, $sp, 736
	beqz	$a3, .LBB0_625
# %bb.402:
.Ltmp561:                               # EH_LABEL
	addi.d	$a0, $sp, 720
	addi.d	$a1, $sp, 720
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp562:                               # EH_LABEL
	b	.LBB0_625
.LBB0_403:
.Ltmp563:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_404:
.Ltmp560:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_405:
.Ltmp542:                               # EH_LABEL
	ld.d	$a3, $sp, 768
	move	$fp, $a0
	beqz	$a3, .LBB0_407
# %bb.406:
.Ltmp543:                               # EH_LABEL
	addi.d	$a0, $sp, 752
	addi.d	$a1, $sp, 752
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp544:                               # EH_LABEL
.LBB0_407:                              # %_ZNSt14_Function_baseD2Ev.exit382
	ld.d	$a3, $sp, 800
	beqz	$a3, .LBB0_625
# %bb.408:
.Ltmp546:                               # EH_LABEL
	addi.d	$a0, $sp, 784
	addi.d	$a1, $sp, 784
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp547:                               # EH_LABEL
	b	.LBB0_625
.LBB0_409:
.Ltmp548:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_410:
.Ltmp545:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_411:
.Ltmp527:                               # EH_LABEL
	ld.d	$a3, $sp, 832
	move	$fp, $a0
	beqz	$a3, .LBB0_413
# %bb.412:
.Ltmp528:                               # EH_LABEL
	addi.d	$a0, $sp, 816
	addi.d	$a1, $sp, 816
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp529:                               # EH_LABEL
.LBB0_413:                              # %_ZNSt14_Function_baseD2Ev.exit378
	ld.d	$a3, $sp, 864
	beqz	$a3, .LBB0_625
# %bb.414:
.Ltmp531:                               # EH_LABEL
	addi.d	$a0, $sp, 848
	addi.d	$a1, $sp, 848
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp532:                               # EH_LABEL
	b	.LBB0_625
.LBB0_415:
.Ltmp533:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_416:
.Ltmp530:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_417:
.Ltmp512:                               # EH_LABEL
	ld.d	$a3, $sp, 896
	move	$fp, $a0
	beqz	$a3, .LBB0_419
# %bb.418:
.Ltmp513:                               # EH_LABEL
	addi.d	$a0, $sp, 880
	addi.d	$a1, $sp, 880
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp514:                               # EH_LABEL
.LBB0_419:                              # %_ZNSt14_Function_baseD2Ev.exit374
	ld.d	$a3, $sp, 928
	beqz	$a3, .LBB0_625
# %bb.420:
.Ltmp516:                               # EH_LABEL
	addi.d	$a0, $sp, 912
	addi.d	$a1, $sp, 912
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp517:                               # EH_LABEL
	b	.LBB0_625
.LBB0_421:
.Ltmp518:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_422:
.Ltmp515:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_423:
.Ltmp497:                               # EH_LABEL
	ld.d	$a3, $sp, 960
	move	$fp, $a0
	beqz	$a3, .LBB0_425
# %bb.424:
.Ltmp498:                               # EH_LABEL
	addi.d	$a0, $sp, 944
	addi.d	$a1, $sp, 944
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp499:                               # EH_LABEL
.LBB0_425:                              # %_ZNSt14_Function_baseD2Ev.exit370
	ld.d	$a3, $sp, 992
	beqz	$a3, .LBB0_625
# %bb.426:
.Ltmp501:                               # EH_LABEL
	addi.d	$a0, $sp, 976
	addi.d	$a1, $sp, 976
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp502:                               # EH_LABEL
	b	.LBB0_625
.LBB0_427:
.Ltmp503:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_428:
.Ltmp500:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_429:
.Ltmp482:                               # EH_LABEL
	ld.d	$a3, $sp, 1024
	move	$fp, $a0
	beqz	$a3, .LBB0_431
# %bb.430:
.Ltmp483:                               # EH_LABEL
	addi.d	$a0, $sp, 1008
	addi.d	$a1, $sp, 1008
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp484:                               # EH_LABEL
.LBB0_431:                              # %_ZNSt14_Function_baseD2Ev.exit366
	ld.d	$a3, $sp, 1056
	beqz	$a3, .LBB0_625
# %bb.432:
.Ltmp486:                               # EH_LABEL
	addi.d	$a0, $sp, 1040
	addi.d	$a1, $sp, 1040
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp487:                               # EH_LABEL
	b	.LBB0_625
.LBB0_433:
.Ltmp488:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_434:
.Ltmp485:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_435:
.Ltmp467:                               # EH_LABEL
	ld.d	$a3, $sp, 1088
	move	$fp, $a0
	beqz	$a3, .LBB0_437
# %bb.436:
.Ltmp468:                               # EH_LABEL
	addi.d	$a0, $sp, 1072
	addi.d	$a1, $sp, 1072
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp469:                               # EH_LABEL
.LBB0_437:                              # %_ZNSt14_Function_baseD2Ev.exit362
	ld.d	$a3, $sp, 1120
	beqz	$a3, .LBB0_625
# %bb.438:
.Ltmp471:                               # EH_LABEL
	addi.d	$a0, $sp, 1104
	addi.d	$a1, $sp, 1104
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp472:                               # EH_LABEL
	b	.LBB0_625
.LBB0_439:
.Ltmp473:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_440:
.Ltmp470:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_441:
.Ltmp452:                               # EH_LABEL
	ld.d	$a3, $sp, 1152
	move	$fp, $a0
	beqz	$a3, .LBB0_443
# %bb.442:
.Ltmp453:                               # EH_LABEL
	addi.d	$a0, $sp, 1136
	addi.d	$a1, $sp, 1136
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp454:                               # EH_LABEL
.LBB0_443:                              # %_ZNSt14_Function_baseD2Ev.exit358
	ld.d	$a3, $sp, 1184
	beqz	$a3, .LBB0_625
# %bb.444:
.Ltmp456:                               # EH_LABEL
	addi.d	$a0, $sp, 1168
	addi.d	$a1, $sp, 1168
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp457:                               # EH_LABEL
	b	.LBB0_625
.LBB0_445:
.Ltmp458:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_446:
.Ltmp455:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_447:
.Ltmp437:                               # EH_LABEL
	ld.d	$a3, $sp, 1216
	move	$fp, $a0
	beqz	$a3, .LBB0_449
# %bb.448:
.Ltmp438:                               # EH_LABEL
	addi.d	$a0, $sp, 1200
	addi.d	$a1, $sp, 1200
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp439:                               # EH_LABEL
.LBB0_449:                              # %_ZNSt14_Function_baseD2Ev.exit354
	ld.d	$a3, $sp, 1248
	beqz	$a3, .LBB0_625
# %bb.450:
.Ltmp441:                               # EH_LABEL
	addi.d	$a0, $sp, 1232
	addi.d	$a1, $sp, 1232
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp442:                               # EH_LABEL
	b	.LBB0_625
.LBB0_451:
.Ltmp443:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_452:
.Ltmp440:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_453:
.Ltmp422:                               # EH_LABEL
	ld.d	$a3, $sp, 1280
	move	$fp, $a0
	beqz	$a3, .LBB0_455
# %bb.454:
.Ltmp423:                               # EH_LABEL
	addi.d	$a0, $sp, 1264
	addi.d	$a1, $sp, 1264
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp424:                               # EH_LABEL
.LBB0_455:                              # %_ZNSt14_Function_baseD2Ev.exit350
	ld.d	$a3, $sp, 1312
	beqz	$a3, .LBB0_625
# %bb.456:
.Ltmp426:                               # EH_LABEL
	addi.d	$a0, $sp, 1296
	addi.d	$a1, $sp, 1296
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp427:                               # EH_LABEL
	b	.LBB0_625
.LBB0_457:
.Ltmp428:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_458:
.Ltmp425:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_459:
.Ltmp407:                               # EH_LABEL
	ld.d	$a3, $sp, 1344
	move	$fp, $a0
	beqz	$a3, .LBB0_461
# %bb.460:
.Ltmp408:                               # EH_LABEL
	addi.d	$a0, $sp, 1328
	addi.d	$a1, $sp, 1328
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp409:                               # EH_LABEL
.LBB0_461:                              # %_ZNSt14_Function_baseD2Ev.exit346
	ld.d	$a3, $sp, 1376
	beqz	$a3, .LBB0_625
# %bb.462:
.Ltmp411:                               # EH_LABEL
	addi.d	$a0, $sp, 1360
	addi.d	$a1, $sp, 1360
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp412:                               # EH_LABEL
	b	.LBB0_625
.LBB0_463:
.Ltmp413:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_464:
.Ltmp410:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_465:
.Ltmp392:                               # EH_LABEL
	ld.d	$a3, $sp, 1408
	move	$fp, $a0
	beqz	$a3, .LBB0_467
# %bb.466:
.Ltmp393:                               # EH_LABEL
	addi.d	$a0, $sp, 1392
	addi.d	$a1, $sp, 1392
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp394:                               # EH_LABEL
.LBB0_467:                              # %_ZNSt14_Function_baseD2Ev.exit342
	ld.d	$a3, $sp, 1440
	beqz	$a3, .LBB0_625
# %bb.468:
.Ltmp396:                               # EH_LABEL
	addi.d	$a0, $sp, 1424
	addi.d	$a1, $sp, 1424
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp397:                               # EH_LABEL
	b	.LBB0_625
.LBB0_469:
.Ltmp398:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_470:
.Ltmp395:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_471:
.Ltmp377:                               # EH_LABEL
	ld.d	$a3, $sp, 1472
	move	$fp, $a0
	beqz	$a3, .LBB0_473
# %bb.472:
.Ltmp378:                               # EH_LABEL
	addi.d	$a0, $sp, 1456
	addi.d	$a1, $sp, 1456
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp379:                               # EH_LABEL
.LBB0_473:                              # %_ZNSt14_Function_baseD2Ev.exit338
	ld.d	$a3, $sp, 1504
	beqz	$a3, .LBB0_625
# %bb.474:
.Ltmp381:                               # EH_LABEL
	addi.d	$a0, $sp, 1488
	addi.d	$a1, $sp, 1488
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp382:                               # EH_LABEL
	b	.LBB0_625
.LBB0_475:
.Ltmp383:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_476:
.Ltmp380:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_477:
.Ltmp362:                               # EH_LABEL
	ld.d	$a3, $sp, 1536
	move	$fp, $a0
	beqz	$a3, .LBB0_479
# %bb.478:
.Ltmp363:                               # EH_LABEL
	addi.d	$a0, $sp, 1520
	addi.d	$a1, $sp, 1520
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp364:                               # EH_LABEL
.LBB0_479:                              # %_ZNSt14_Function_baseD2Ev.exit334
	ld.d	$a3, $sp, 1568
	beqz	$a3, .LBB0_625
# %bb.480:
.Ltmp366:                               # EH_LABEL
	addi.d	$a0, $sp, 1552
	addi.d	$a1, $sp, 1552
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp367:                               # EH_LABEL
	b	.LBB0_625
.LBB0_481:
.Ltmp368:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_482:
.Ltmp365:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_483:
.Ltmp347:                               # EH_LABEL
	ld.d	$a3, $sp, 1600
	move	$fp, $a0
	beqz	$a3, .LBB0_485
# %bb.484:
.Ltmp348:                               # EH_LABEL
	addi.d	$a0, $sp, 1584
	addi.d	$a1, $sp, 1584
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp349:                               # EH_LABEL
.LBB0_485:                              # %_ZNSt14_Function_baseD2Ev.exit330
	ld.d	$a3, $sp, 1632
	beqz	$a3, .LBB0_625
# %bb.486:
.Ltmp351:                               # EH_LABEL
	addi.d	$a0, $sp, 1616
	addi.d	$a1, $sp, 1616
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp352:                               # EH_LABEL
	b	.LBB0_625
.LBB0_487:
.Ltmp353:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_488:
.Ltmp350:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_489:
.Ltmp332:                               # EH_LABEL
	ld.d	$a3, $sp, 1664
	move	$fp, $a0
	beqz	$a3, .LBB0_491
# %bb.490:
.Ltmp333:                               # EH_LABEL
	addi.d	$a0, $sp, 1648
	addi.d	$a1, $sp, 1648
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp334:                               # EH_LABEL
.LBB0_491:                              # %_ZNSt14_Function_baseD2Ev.exit326
	ld.d	$a3, $sp, 1696
	beqz	$a3, .LBB0_625
# %bb.492:
.Ltmp336:                               # EH_LABEL
	addi.d	$a0, $sp, 1680
	addi.d	$a1, $sp, 1680
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp337:                               # EH_LABEL
	b	.LBB0_625
.LBB0_493:
.Ltmp338:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_494:
.Ltmp335:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_495:
.Ltmp317:                               # EH_LABEL
	ld.d	$a3, $sp, 1728
	move	$fp, $a0
	beqz	$a3, .LBB0_497
# %bb.496:
.Ltmp318:                               # EH_LABEL
	addi.d	$a0, $sp, 1712
	addi.d	$a1, $sp, 1712
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp319:                               # EH_LABEL
.LBB0_497:                              # %_ZNSt14_Function_baseD2Ev.exit322
	ld.d	$a3, $sp, 1760
	beqz	$a3, .LBB0_625
# %bb.498:
.Ltmp321:                               # EH_LABEL
	addi.d	$a0, $sp, 1744
	addi.d	$a1, $sp, 1744
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp322:                               # EH_LABEL
	b	.LBB0_625
.LBB0_499:
.Ltmp323:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_500:
.Ltmp320:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_501:
.Ltmp302:                               # EH_LABEL
	ld.d	$a3, $sp, 1792
	move	$fp, $a0
	beqz	$a3, .LBB0_503
# %bb.502:
.Ltmp303:                               # EH_LABEL
	addi.d	$a0, $sp, 1776
	addi.d	$a1, $sp, 1776
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp304:                               # EH_LABEL
.LBB0_503:                              # %_ZNSt14_Function_baseD2Ev.exit318
	ld.d	$a3, $sp, 1824
	beqz	$a3, .LBB0_625
# %bb.504:
.Ltmp306:                               # EH_LABEL
	addi.d	$a0, $sp, 1808
	addi.d	$a1, $sp, 1808
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp307:                               # EH_LABEL
	b	.LBB0_625
.LBB0_505:
.Ltmp308:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_506:
.Ltmp305:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_507:
.Ltmp287:                               # EH_LABEL
	ld.d	$a3, $sp, 1856
	move	$fp, $a0
	beqz	$a3, .LBB0_509
# %bb.508:
.Ltmp288:                               # EH_LABEL
	addi.d	$a0, $sp, 1840
	addi.d	$a1, $sp, 1840
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp289:                               # EH_LABEL
.LBB0_509:                              # %_ZNSt14_Function_baseD2Ev.exit314
	ld.d	$a3, $sp, 1888
	beqz	$a3, .LBB0_625
# %bb.510:
.Ltmp291:                               # EH_LABEL
	addi.d	$a0, $sp, 1872
	addi.d	$a1, $sp, 1872
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp292:                               # EH_LABEL
	b	.LBB0_625
.LBB0_511:
.Ltmp293:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_512:
.Ltmp290:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_513:
.Ltmp272:                               # EH_LABEL
	ld.d	$a3, $sp, 1920
	move	$fp, $a0
	beqz	$a3, .LBB0_515
# %bb.514:
.Ltmp273:                               # EH_LABEL
	addi.d	$a0, $sp, 1904
	addi.d	$a1, $sp, 1904
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp274:                               # EH_LABEL
.LBB0_515:                              # %_ZNSt14_Function_baseD2Ev.exit310
	ld.d	$a3, $sp, 1952
	beqz	$a3, .LBB0_625
# %bb.516:
.Ltmp276:                               # EH_LABEL
	addi.d	$a0, $sp, 1936
	addi.d	$a1, $sp, 1936
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp277:                               # EH_LABEL
	b	.LBB0_625
.LBB0_517:
.Ltmp278:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_518:
.Ltmp275:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_519:
.Ltmp257:                               # EH_LABEL
	ld.d	$a3, $sp, 1984
	move	$fp, $a0
	beqz	$a3, .LBB0_521
# %bb.520:
.Ltmp258:                               # EH_LABEL
	addi.d	$a0, $sp, 1968
	addi.d	$a1, $sp, 1968
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp259:                               # EH_LABEL
.LBB0_521:                              # %_ZNSt14_Function_baseD2Ev.exit306
	ld.d	$a3, $sp, 2016
	beqz	$a3, .LBB0_625
# %bb.522:
.Ltmp261:                               # EH_LABEL
	addi.d	$a0, $sp, 2000
	addi.d	$a1, $sp, 2000
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp262:                               # EH_LABEL
	b	.LBB0_625
.LBB0_523:
.Ltmp263:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_524:
.Ltmp260:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_525:
.Ltmp242:                               # EH_LABEL
	ori	$a1, $zero, 2048
	add.d	$a1, $sp, $a1
	ld.d	$a3, $a1, 0
	move	$fp, $a0
	beqz	$a3, .LBB0_527
# %bb.526:
.Ltmp243:                               # EH_LABEL
	addi.d	$a0, $sp, 2032
	addi.d	$a1, $sp, 2032
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp244:                               # EH_LABEL
.LBB0_527:                              # %_ZNSt14_Function_baseD2Ev.exit302
	ori	$a0, $zero, 2080
	add.d	$a0, $sp, $a0
	ld.d	$a3, $a0, 0
	beqz	$a3, .LBB0_625
# %bb.528:
.Ltmp246:                               # EH_LABEL
	ori	$a0, $zero, 2064
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2064
	add.d	$a1, $sp, $a1
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp247:                               # EH_LABEL
	b	.LBB0_625
.LBB0_529:
.Ltmp248:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_530:
.Ltmp245:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_531:
.Ltmp227:                               # EH_LABEL
	ori	$a1, $zero, 2112
	add.d	$a1, $sp, $a1
	ld.d	$a3, $a1, 0
	move	$fp, $a0
	beqz	$a3, .LBB0_533
# %bb.532:
.Ltmp228:                               # EH_LABEL
	ori	$a0, $zero, 2096
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2096
	add.d	$a1, $sp, $a1
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp229:                               # EH_LABEL
.LBB0_533:                              # %_ZNSt14_Function_baseD2Ev.exit298
	ori	$a0, $zero, 2144
	add.d	$a0, $sp, $a0
	ld.d	$a3, $a0, 0
	beqz	$a3, .LBB0_625
# %bb.534:
.Ltmp231:                               # EH_LABEL
	ori	$a0, $zero, 2128
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2128
	add.d	$a1, $sp, $a1
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp232:                               # EH_LABEL
	b	.LBB0_625
.LBB0_535:
.Ltmp233:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_536:
.Ltmp230:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_537:
.Ltmp212:                               # EH_LABEL
	ori	$a1, $zero, 2176
	add.d	$a1, $sp, $a1
	ld.d	$a3, $a1, 0
	move	$fp, $a0
	beqz	$a3, .LBB0_539
# %bb.538:
.Ltmp213:                               # EH_LABEL
	ori	$a0, $zero, 2160
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2160
	add.d	$a1, $sp, $a1
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp214:                               # EH_LABEL
.LBB0_539:                              # %_ZNSt14_Function_baseD2Ev.exit294
	ori	$a0, $zero, 2208
	add.d	$a0, $sp, $a0
	ld.d	$a3, $a0, 0
	beqz	$a3, .LBB0_625
# %bb.540:
.Ltmp216:                               # EH_LABEL
	ori	$a0, $zero, 2192
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2192
	add.d	$a1, $sp, $a1
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp217:                               # EH_LABEL
	b	.LBB0_625
.LBB0_541:
.Ltmp218:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_542:
.Ltmp215:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_543:
.Ltmp197:                               # EH_LABEL
	ori	$a1, $zero, 2240
	add.d	$a1, $sp, $a1
	ld.d	$a3, $a1, 0
	move	$fp, $a0
	beqz	$a3, .LBB0_545
# %bb.544:
.Ltmp198:                               # EH_LABEL
	ori	$a0, $zero, 2224
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2224
	add.d	$a1, $sp, $a1
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp199:                               # EH_LABEL
.LBB0_545:                              # %_ZNSt14_Function_baseD2Ev.exit290
	ori	$a0, $zero, 2272
	add.d	$a0, $sp, $a0
	ld.d	$a3, $a0, 0
	beqz	$a3, .LBB0_625
# %bb.546:
.Ltmp201:                               # EH_LABEL
	ori	$a0, $zero, 2256
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2256
	add.d	$a1, $sp, $a1
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp202:                               # EH_LABEL
	b	.LBB0_625
.LBB0_547:
.Ltmp203:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_548:
.Ltmp200:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_549:
.Ltmp182:                               # EH_LABEL
	ori	$a1, $zero, 2304
	add.d	$a1, $sp, $a1
	ld.d	$a3, $a1, 0
	move	$fp, $a0
	beqz	$a3, .LBB0_551
# %bb.550:
.Ltmp183:                               # EH_LABEL
	ori	$a0, $zero, 2288
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2288
	add.d	$a1, $sp, $a1
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp184:                               # EH_LABEL
.LBB0_551:                              # %_ZNSt14_Function_baseD2Ev.exit286
	ori	$a0, $zero, 2336
	add.d	$a0, $sp, $a0
	ld.d	$a3, $a0, 0
	beqz	$a3, .LBB0_625
# %bb.552:
.Ltmp186:                               # EH_LABEL
	ori	$a0, $zero, 2320
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2320
	add.d	$a1, $sp, $a1
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp187:                               # EH_LABEL
	b	.LBB0_625
.LBB0_553:
.Ltmp188:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_554:
.Ltmp185:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_555:
.Ltmp167:                               # EH_LABEL
	ori	$a1, $zero, 2368
	add.d	$a1, $sp, $a1
	ld.d	$a3, $a1, 0
	move	$fp, $a0
	beqz	$a3, .LBB0_557
# %bb.556:
.Ltmp168:                               # EH_LABEL
	ori	$a0, $zero, 2352
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2352
	add.d	$a1, $sp, $a1
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp169:                               # EH_LABEL
.LBB0_557:                              # %_ZNSt14_Function_baseD2Ev.exit282
	ori	$a0, $zero, 2400
	add.d	$a0, $sp, $a0
	ld.d	$a3, $a0, 0
	beqz	$a3, .LBB0_625
# %bb.558:
.Ltmp171:                               # EH_LABEL
	ori	$a0, $zero, 2384
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2384
	add.d	$a1, $sp, $a1
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp172:                               # EH_LABEL
	b	.LBB0_625
.LBB0_559:
.Ltmp173:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_560:
.Ltmp170:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_561:
.Ltmp152:                               # EH_LABEL
	ori	$a1, $zero, 2432
	add.d	$a1, $sp, $a1
	ld.d	$a3, $a1, 0
	move	$fp, $a0
	beqz	$a3, .LBB0_563
# %bb.562:
.Ltmp153:                               # EH_LABEL
	ori	$a0, $zero, 2416
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2416
	add.d	$a1, $sp, $a1
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp154:                               # EH_LABEL
.LBB0_563:                              # %_ZNSt14_Function_baseD2Ev.exit278
	ori	$a0, $zero, 2464
	add.d	$a0, $sp, $a0
	ld.d	$a3, $a0, 0
	beqz	$a3, .LBB0_625
# %bb.564:
.Ltmp156:                               # EH_LABEL
	ori	$a0, $zero, 2448
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2448
	add.d	$a1, $sp, $a1
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp157:                               # EH_LABEL
	b	.LBB0_625
.LBB0_565:
.Ltmp158:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_566:
.Ltmp155:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_567:
.Ltmp137:                               # EH_LABEL
	ori	$a1, $zero, 2496
	add.d	$a1, $sp, $a1
	ld.d	$a3, $a1, 0
	move	$fp, $a0
	beqz	$a3, .LBB0_569
# %bb.568:
.Ltmp138:                               # EH_LABEL
	ori	$a0, $zero, 2480
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2480
	add.d	$a1, $sp, $a1
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp139:                               # EH_LABEL
.LBB0_569:                              # %_ZNSt14_Function_baseD2Ev.exit274
	ori	$a0, $zero, 2528
	add.d	$a0, $sp, $a0
	ld.d	$a3, $a0, 0
	beqz	$a3, .LBB0_625
# %bb.570:
.Ltmp141:                               # EH_LABEL
	ori	$a0, $zero, 2512
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2512
	add.d	$a1, $sp, $a1
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp142:                               # EH_LABEL
	b	.LBB0_625
.LBB0_571:
.Ltmp143:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_572:
.Ltmp140:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_573:
.Ltmp122:                               # EH_LABEL
	ori	$a1, $zero, 2560
	add.d	$a1, $sp, $a1
	ld.d	$a3, $a1, 0
	move	$fp, $a0
	beqz	$a3, .LBB0_575
# %bb.574:
.Ltmp123:                               # EH_LABEL
	ori	$a0, $zero, 2544
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2544
	add.d	$a1, $sp, $a1
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp124:                               # EH_LABEL
.LBB0_575:                              # %_ZNSt14_Function_baseD2Ev.exit270
	ori	$a0, $zero, 2592
	add.d	$a0, $sp, $a0
	ld.d	$a3, $a0, 0
	beqz	$a3, .LBB0_625
# %bb.576:
.Ltmp126:                               # EH_LABEL
	ori	$a0, $zero, 2576
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2576
	add.d	$a1, $sp, $a1
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp127:                               # EH_LABEL
	b	.LBB0_625
.LBB0_577:
.Ltmp128:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_578:
.Ltmp125:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_579:
.Ltmp107:                               # EH_LABEL
	ori	$a1, $zero, 2624
	add.d	$a1, $sp, $a1
	ld.d	$a3, $a1, 0
	move	$fp, $a0
	beqz	$a3, .LBB0_581
# %bb.580:
.Ltmp108:                               # EH_LABEL
	ori	$a0, $zero, 2608
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2608
	add.d	$a1, $sp, $a1
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp109:                               # EH_LABEL
.LBB0_581:                              # %_ZNSt14_Function_baseD2Ev.exit266
	ori	$a0, $zero, 2656
	add.d	$a0, $sp, $a0
	ld.d	$a3, $a0, 0
	beqz	$a3, .LBB0_625
# %bb.582:
.Ltmp111:                               # EH_LABEL
	ori	$a0, $zero, 2640
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2640
	add.d	$a1, $sp, $a1
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp112:                               # EH_LABEL
	b	.LBB0_625
.LBB0_583:
.Ltmp113:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_584:
.Ltmp110:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_585:
.Ltmp92:                                # EH_LABEL
	ori	$a1, $zero, 2688
	add.d	$a1, $sp, $a1
	ld.d	$a3, $a1, 0
	move	$fp, $a0
	beqz	$a3, .LBB0_587
# %bb.586:
.Ltmp93:                                # EH_LABEL
	ori	$a0, $zero, 2672
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2672
	add.d	$a1, $sp, $a1
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp94:                                # EH_LABEL
.LBB0_587:                              # %_ZNSt14_Function_baseD2Ev.exit262
	ori	$a0, $zero, 2720
	add.d	$a0, $sp, $a0
	ld.d	$a3, $a0, 0
	beqz	$a3, .LBB0_625
# %bb.588:
.Ltmp96:                                # EH_LABEL
	ori	$a0, $zero, 2704
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2704
	add.d	$a1, $sp, $a1
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp97:                                # EH_LABEL
	b	.LBB0_625
.LBB0_589:
.Ltmp98:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_590:
.Ltmp95:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_591:
.Ltmp77:                                # EH_LABEL
	ori	$a1, $zero, 2752
	add.d	$a1, $sp, $a1
	ld.d	$a3, $a1, 0
	move	$fp, $a0
	beqz	$a3, .LBB0_593
# %bb.592:
.Ltmp78:                                # EH_LABEL
	ori	$a0, $zero, 2736
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2736
	add.d	$a1, $sp, $a1
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp79:                                # EH_LABEL
.LBB0_593:                              # %_ZNSt14_Function_baseD2Ev.exit258
	ori	$a0, $zero, 2784
	add.d	$a0, $sp, $a0
	ld.d	$a3, $a0, 0
	beqz	$a3, .LBB0_625
# %bb.594:
.Ltmp81:                                # EH_LABEL
	ori	$a0, $zero, 2768
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2768
	add.d	$a1, $sp, $a1
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp82:                                # EH_LABEL
	b	.LBB0_625
.LBB0_595:
.Ltmp83:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_596:
.Ltmp80:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_597:
.Ltmp62:                                # EH_LABEL
	ori	$a1, $zero, 2816
	add.d	$a1, $sp, $a1
	ld.d	$a3, $a1, 0
	move	$fp, $a0
	beqz	$a3, .LBB0_599
# %bb.598:
.Ltmp63:                                # EH_LABEL
	ori	$a0, $zero, 2800
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2800
	add.d	$a1, $sp, $a1
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp64:                                # EH_LABEL
.LBB0_599:                              # %_ZNSt14_Function_baseD2Ev.exit254
	ori	$a0, $zero, 2848
	add.d	$a0, $sp, $a0
	ld.d	$a3, $a0, 0
	beqz	$a3, .LBB0_625
# %bb.600:
.Ltmp66:                                # EH_LABEL
	ori	$a0, $zero, 2832
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2832
	add.d	$a1, $sp, $a1
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp67:                                # EH_LABEL
	b	.LBB0_625
.LBB0_601:
.Ltmp68:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_602:
.Ltmp65:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_603:
.Ltmp47:                                # EH_LABEL
	ori	$a1, $zero, 2880
	add.d	$a1, $sp, $a1
	ld.d	$a3, $a1, 0
	move	$fp, $a0
	beqz	$a3, .LBB0_605
# %bb.604:
.Ltmp48:                                # EH_LABEL
	ori	$a0, $zero, 2864
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2864
	add.d	$a1, $sp, $a1
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp49:                                # EH_LABEL
.LBB0_605:                              # %_ZNSt14_Function_baseD2Ev.exit250
	ori	$a0, $zero, 2912
	add.d	$a0, $sp, $a0
	ld.d	$a3, $a0, 0
	beqz	$a3, .LBB0_625
# %bb.606:
.Ltmp51:                                # EH_LABEL
	ori	$a0, $zero, 2896
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2896
	add.d	$a1, $sp, $a1
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp52:                                # EH_LABEL
	b	.LBB0_625
.LBB0_607:
.Ltmp53:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_608:
.Ltmp50:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_609:
.Ltmp32:                                # EH_LABEL
	ori	$a1, $zero, 2944
	add.d	$a1, $sp, $a1
	ld.d	$a3, $a1, 0
	move	$fp, $a0
	beqz	$a3, .LBB0_611
# %bb.610:
.Ltmp33:                                # EH_LABEL
	ori	$a0, $zero, 2928
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2928
	add.d	$a1, $sp, $a1
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp34:                                # EH_LABEL
.LBB0_611:                              # %_ZNSt14_Function_baseD2Ev.exit246
	ori	$a0, $zero, 2976
	add.d	$a0, $sp, $a0
	ld.d	$a3, $a0, 0
	beqz	$a3, .LBB0_625
# %bb.612:
.Ltmp36:                                # EH_LABEL
	ori	$a0, $zero, 2960
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2960
	add.d	$a1, $sp, $a1
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp37:                                # EH_LABEL
	b	.LBB0_625
.LBB0_613:
.Ltmp38:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_614:
.Ltmp35:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_615:
.Ltmp17:                                # EH_LABEL
	ori	$a1, $zero, 3008
	add.d	$a1, $sp, $a1
	ld.d	$a3, $a1, 0
	move	$fp, $a0
	beqz	$a3, .LBB0_617
# %bb.616:
.Ltmp18:                                # EH_LABEL
	ori	$a0, $zero, 2992
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 2992
	add.d	$a1, $sp, $a1
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp19:                                # EH_LABEL
.LBB0_617:                              # %_ZNSt14_Function_baseD2Ev.exit242
	ori	$a0, $zero, 3040
	add.d	$a0, $sp, $a0
	ld.d	$a3, $a0, 0
	beqz	$a3, .LBB0_625
# %bb.618:
.Ltmp21:                                # EH_LABEL
	ori	$a0, $zero, 3024
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 3024
	add.d	$a1, $sp, $a1
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp22:                                # EH_LABEL
	b	.LBB0_625
.LBB0_619:
.Ltmp23:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_620:
.Ltmp20:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_621:
.Ltmp2:                                 # EH_LABEL
	ori	$a1, $zero, 3072
	add.d	$a1, $sp, $a1
	ld.d	$a3, $a1, 0
	move	$fp, $a0
	beqz	$a3, .LBB0_623
# %bb.622:
.Ltmp3:                                 # EH_LABEL
	ori	$a0, $zero, 3056
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 3056
	add.d	$a1, $sp, $a1
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp4:                                 # EH_LABEL
.LBB0_623:                              # %_ZNSt14_Function_baseD2Ev.exit238
	ori	$a0, $zero, 3104
	add.d	$a0, $sp, $a0
	ld.d	$a3, $a0, 0
	beqz	$a3, .LBB0_625
# %bb.624:
.Ltmp6:                                 # EH_LABEL
	ori	$a0, $zero, 3088
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 3088
	add.d	$a1, $sp, $a1
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp7:                                 # EH_LABEL
.LBB0_625:                              # %_ZNSt14_Function_baseD2Ev.exit240
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB0_626:
.Ltmp8:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_627:
.Ltmp5:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
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
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    # >> Call Site 1 <<
	.uleb128 .Ltmp0-.Lfunc_begin0           #   Call between .Lfunc_begin0 and .Ltmp0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp0-.Lfunc_begin0           # >> Call Site 2 <<
	.uleb128 .Ltmp1-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp1
	.uleb128 .Ltmp2-.Lfunc_begin0           #     jumps to .Ltmp2
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp9-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp10-.Ltmp9                 #   Call between .Ltmp9 and .Ltmp10
	.uleb128 .Ltmp11-.Lfunc_begin0          #     jumps to .Ltmp11
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp12-.Lfunc_begin0          # >> Call Site 4 <<
	.uleb128 .Ltmp13-.Ltmp12                #   Call between .Ltmp12 and .Ltmp13
	.uleb128 .Ltmp14-.Lfunc_begin0          #     jumps to .Ltmp14
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp15-.Lfunc_begin0          # >> Call Site 5 <<
	.uleb128 .Ltmp16-.Ltmp15                #   Call between .Ltmp15 and .Ltmp16
	.uleb128 .Ltmp17-.Lfunc_begin0          #     jumps to .Ltmp17
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp24-.Lfunc_begin0          # >> Call Site 6 <<
	.uleb128 .Ltmp25-.Ltmp24                #   Call between .Ltmp24 and .Ltmp25
	.uleb128 .Ltmp26-.Lfunc_begin0          #     jumps to .Ltmp26
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp27-.Lfunc_begin0          # >> Call Site 7 <<
	.uleb128 .Ltmp28-.Ltmp27                #   Call between .Ltmp27 and .Ltmp28
	.uleb128 .Ltmp29-.Lfunc_begin0          #     jumps to .Ltmp29
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp30-.Lfunc_begin0          # >> Call Site 8 <<
	.uleb128 .Ltmp31-.Ltmp30                #   Call between .Ltmp30 and .Ltmp31
	.uleb128 .Ltmp32-.Lfunc_begin0          #     jumps to .Ltmp32
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp39-.Lfunc_begin0          # >> Call Site 9 <<
	.uleb128 .Ltmp40-.Ltmp39                #   Call between .Ltmp39 and .Ltmp40
	.uleb128 .Ltmp41-.Lfunc_begin0          #     jumps to .Ltmp41
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp42-.Lfunc_begin0          # >> Call Site 10 <<
	.uleb128 .Ltmp43-.Ltmp42                #   Call between .Ltmp42 and .Ltmp43
	.uleb128 .Ltmp44-.Lfunc_begin0          #     jumps to .Ltmp44
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp45-.Lfunc_begin0          # >> Call Site 11 <<
	.uleb128 .Ltmp46-.Ltmp45                #   Call between .Ltmp45 and .Ltmp46
	.uleb128 .Ltmp47-.Lfunc_begin0          #     jumps to .Ltmp47
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp54-.Lfunc_begin0          # >> Call Site 12 <<
	.uleb128 .Ltmp55-.Ltmp54                #   Call between .Ltmp54 and .Ltmp55
	.uleb128 .Ltmp56-.Lfunc_begin0          #     jumps to .Ltmp56
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp57-.Lfunc_begin0          # >> Call Site 13 <<
	.uleb128 .Ltmp58-.Ltmp57                #   Call between .Ltmp57 and .Ltmp58
	.uleb128 .Ltmp59-.Lfunc_begin0          #     jumps to .Ltmp59
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp60-.Lfunc_begin0          # >> Call Site 14 <<
	.uleb128 .Ltmp61-.Ltmp60                #   Call between .Ltmp60 and .Ltmp61
	.uleb128 .Ltmp62-.Lfunc_begin0          #     jumps to .Ltmp62
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp69-.Lfunc_begin0          # >> Call Site 15 <<
	.uleb128 .Ltmp70-.Ltmp69                #   Call between .Ltmp69 and .Ltmp70
	.uleb128 .Ltmp71-.Lfunc_begin0          #     jumps to .Ltmp71
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp72-.Lfunc_begin0          # >> Call Site 16 <<
	.uleb128 .Ltmp73-.Ltmp72                #   Call between .Ltmp72 and .Ltmp73
	.uleb128 .Ltmp74-.Lfunc_begin0          #     jumps to .Ltmp74
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp75-.Lfunc_begin0          # >> Call Site 17 <<
	.uleb128 .Ltmp76-.Ltmp75                #   Call between .Ltmp75 and .Ltmp76
	.uleb128 .Ltmp77-.Lfunc_begin0          #     jumps to .Ltmp77
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp84-.Lfunc_begin0          # >> Call Site 18 <<
	.uleb128 .Ltmp85-.Ltmp84                #   Call between .Ltmp84 and .Ltmp85
	.uleb128 .Ltmp86-.Lfunc_begin0          #     jumps to .Ltmp86
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp87-.Lfunc_begin0          # >> Call Site 19 <<
	.uleb128 .Ltmp88-.Ltmp87                #   Call between .Ltmp87 and .Ltmp88
	.uleb128 .Ltmp89-.Lfunc_begin0          #     jumps to .Ltmp89
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp90-.Lfunc_begin0          # >> Call Site 20 <<
	.uleb128 .Ltmp91-.Ltmp90                #   Call between .Ltmp90 and .Ltmp91
	.uleb128 .Ltmp92-.Lfunc_begin0          #     jumps to .Ltmp92
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp99-.Lfunc_begin0          # >> Call Site 21 <<
	.uleb128 .Ltmp100-.Ltmp99               #   Call between .Ltmp99 and .Ltmp100
	.uleb128 .Ltmp101-.Lfunc_begin0         #     jumps to .Ltmp101
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp102-.Lfunc_begin0         # >> Call Site 22 <<
	.uleb128 .Ltmp103-.Ltmp102              #   Call between .Ltmp102 and .Ltmp103
	.uleb128 .Ltmp104-.Lfunc_begin0         #     jumps to .Ltmp104
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp105-.Lfunc_begin0         # >> Call Site 23 <<
	.uleb128 .Ltmp106-.Ltmp105              #   Call between .Ltmp105 and .Ltmp106
	.uleb128 .Ltmp107-.Lfunc_begin0         #     jumps to .Ltmp107
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp114-.Lfunc_begin0         # >> Call Site 24 <<
	.uleb128 .Ltmp115-.Ltmp114              #   Call between .Ltmp114 and .Ltmp115
	.uleb128 .Ltmp116-.Lfunc_begin0         #     jumps to .Ltmp116
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp117-.Lfunc_begin0         # >> Call Site 25 <<
	.uleb128 .Ltmp118-.Ltmp117              #   Call between .Ltmp117 and .Ltmp118
	.uleb128 .Ltmp119-.Lfunc_begin0         #     jumps to .Ltmp119
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp120-.Lfunc_begin0         # >> Call Site 26 <<
	.uleb128 .Ltmp121-.Ltmp120              #   Call between .Ltmp120 and .Ltmp121
	.uleb128 .Ltmp122-.Lfunc_begin0         #     jumps to .Ltmp122
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp129-.Lfunc_begin0         # >> Call Site 27 <<
	.uleb128 .Ltmp130-.Ltmp129              #   Call between .Ltmp129 and .Ltmp130
	.uleb128 .Ltmp131-.Lfunc_begin0         #     jumps to .Ltmp131
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp132-.Lfunc_begin0         # >> Call Site 28 <<
	.uleb128 .Ltmp133-.Ltmp132              #   Call between .Ltmp132 and .Ltmp133
	.uleb128 .Ltmp134-.Lfunc_begin0         #     jumps to .Ltmp134
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp135-.Lfunc_begin0         # >> Call Site 29 <<
	.uleb128 .Ltmp136-.Ltmp135              #   Call between .Ltmp135 and .Ltmp136
	.uleb128 .Ltmp137-.Lfunc_begin0         #     jumps to .Ltmp137
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp144-.Lfunc_begin0         # >> Call Site 30 <<
	.uleb128 .Ltmp145-.Ltmp144              #   Call between .Ltmp144 and .Ltmp145
	.uleb128 .Ltmp146-.Lfunc_begin0         #     jumps to .Ltmp146
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp147-.Lfunc_begin0         # >> Call Site 31 <<
	.uleb128 .Ltmp148-.Ltmp147              #   Call between .Ltmp147 and .Ltmp148
	.uleb128 .Ltmp149-.Lfunc_begin0         #     jumps to .Ltmp149
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp150-.Lfunc_begin0         # >> Call Site 32 <<
	.uleb128 .Ltmp151-.Ltmp150              #   Call between .Ltmp150 and .Ltmp151
	.uleb128 .Ltmp152-.Lfunc_begin0         #     jumps to .Ltmp152
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp159-.Lfunc_begin0         # >> Call Site 33 <<
	.uleb128 .Ltmp160-.Ltmp159              #   Call between .Ltmp159 and .Ltmp160
	.uleb128 .Ltmp161-.Lfunc_begin0         #     jumps to .Ltmp161
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp162-.Lfunc_begin0         # >> Call Site 34 <<
	.uleb128 .Ltmp163-.Ltmp162              #   Call between .Ltmp162 and .Ltmp163
	.uleb128 .Ltmp164-.Lfunc_begin0         #     jumps to .Ltmp164
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp165-.Lfunc_begin0         # >> Call Site 35 <<
	.uleb128 .Ltmp166-.Ltmp165              #   Call between .Ltmp165 and .Ltmp166
	.uleb128 .Ltmp167-.Lfunc_begin0         #     jumps to .Ltmp167
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp174-.Lfunc_begin0         # >> Call Site 36 <<
	.uleb128 .Ltmp175-.Ltmp174              #   Call between .Ltmp174 and .Ltmp175
	.uleb128 .Ltmp176-.Lfunc_begin0         #     jumps to .Ltmp176
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp177-.Lfunc_begin0         # >> Call Site 37 <<
	.uleb128 .Ltmp178-.Ltmp177              #   Call between .Ltmp177 and .Ltmp178
	.uleb128 .Ltmp179-.Lfunc_begin0         #     jumps to .Ltmp179
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp180-.Lfunc_begin0         # >> Call Site 38 <<
	.uleb128 .Ltmp181-.Ltmp180              #   Call between .Ltmp180 and .Ltmp181
	.uleb128 .Ltmp182-.Lfunc_begin0         #     jumps to .Ltmp182
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp189-.Lfunc_begin0         # >> Call Site 39 <<
	.uleb128 .Ltmp190-.Ltmp189              #   Call between .Ltmp189 and .Ltmp190
	.uleb128 .Ltmp191-.Lfunc_begin0         #     jumps to .Ltmp191
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp192-.Lfunc_begin0         # >> Call Site 40 <<
	.uleb128 .Ltmp193-.Ltmp192              #   Call between .Ltmp192 and .Ltmp193
	.uleb128 .Ltmp194-.Lfunc_begin0         #     jumps to .Ltmp194
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp195-.Lfunc_begin0         # >> Call Site 41 <<
	.uleb128 .Ltmp196-.Ltmp195              #   Call between .Ltmp195 and .Ltmp196
	.uleb128 .Ltmp197-.Lfunc_begin0         #     jumps to .Ltmp197
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp204-.Lfunc_begin0         # >> Call Site 42 <<
	.uleb128 .Ltmp205-.Ltmp204              #   Call between .Ltmp204 and .Ltmp205
	.uleb128 .Ltmp206-.Lfunc_begin0         #     jumps to .Ltmp206
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp207-.Lfunc_begin0         # >> Call Site 43 <<
	.uleb128 .Ltmp208-.Ltmp207              #   Call between .Ltmp207 and .Ltmp208
	.uleb128 .Ltmp209-.Lfunc_begin0         #     jumps to .Ltmp209
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp210-.Lfunc_begin0         # >> Call Site 44 <<
	.uleb128 .Ltmp211-.Ltmp210              #   Call between .Ltmp210 and .Ltmp211
	.uleb128 .Ltmp212-.Lfunc_begin0         #     jumps to .Ltmp212
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp219-.Lfunc_begin0         # >> Call Site 45 <<
	.uleb128 .Ltmp220-.Ltmp219              #   Call between .Ltmp219 and .Ltmp220
	.uleb128 .Ltmp221-.Lfunc_begin0         #     jumps to .Ltmp221
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp222-.Lfunc_begin0         # >> Call Site 46 <<
	.uleb128 .Ltmp223-.Ltmp222              #   Call between .Ltmp222 and .Ltmp223
	.uleb128 .Ltmp224-.Lfunc_begin0         #     jumps to .Ltmp224
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp225-.Lfunc_begin0         # >> Call Site 47 <<
	.uleb128 .Ltmp226-.Ltmp225              #   Call between .Ltmp225 and .Ltmp226
	.uleb128 .Ltmp227-.Lfunc_begin0         #     jumps to .Ltmp227
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp234-.Lfunc_begin0         # >> Call Site 48 <<
	.uleb128 .Ltmp235-.Ltmp234              #   Call between .Ltmp234 and .Ltmp235
	.uleb128 .Ltmp236-.Lfunc_begin0         #     jumps to .Ltmp236
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp237-.Lfunc_begin0         # >> Call Site 49 <<
	.uleb128 .Ltmp238-.Ltmp237              #   Call between .Ltmp237 and .Ltmp238
	.uleb128 .Ltmp239-.Lfunc_begin0         #     jumps to .Ltmp239
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp240-.Lfunc_begin0         # >> Call Site 50 <<
	.uleb128 .Ltmp241-.Ltmp240              #   Call between .Ltmp240 and .Ltmp241
	.uleb128 .Ltmp242-.Lfunc_begin0         #     jumps to .Ltmp242
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp249-.Lfunc_begin0         # >> Call Site 51 <<
	.uleb128 .Ltmp250-.Ltmp249              #   Call between .Ltmp249 and .Ltmp250
	.uleb128 .Ltmp251-.Lfunc_begin0         #     jumps to .Ltmp251
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp252-.Lfunc_begin0         # >> Call Site 52 <<
	.uleb128 .Ltmp253-.Ltmp252              #   Call between .Ltmp252 and .Ltmp253
	.uleb128 .Ltmp254-.Lfunc_begin0         #     jumps to .Ltmp254
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp255-.Lfunc_begin0         # >> Call Site 53 <<
	.uleb128 .Ltmp256-.Ltmp255              #   Call between .Ltmp255 and .Ltmp256
	.uleb128 .Ltmp257-.Lfunc_begin0         #     jumps to .Ltmp257
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp264-.Lfunc_begin0         # >> Call Site 54 <<
	.uleb128 .Ltmp265-.Ltmp264              #   Call between .Ltmp264 and .Ltmp265
	.uleb128 .Ltmp266-.Lfunc_begin0         #     jumps to .Ltmp266
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp267-.Lfunc_begin0         # >> Call Site 55 <<
	.uleb128 .Ltmp268-.Ltmp267              #   Call between .Ltmp267 and .Ltmp268
	.uleb128 .Ltmp269-.Lfunc_begin0         #     jumps to .Ltmp269
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp270-.Lfunc_begin0         # >> Call Site 56 <<
	.uleb128 .Ltmp271-.Ltmp270              #   Call between .Ltmp270 and .Ltmp271
	.uleb128 .Ltmp272-.Lfunc_begin0         #     jumps to .Ltmp272
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp279-.Lfunc_begin0         # >> Call Site 57 <<
	.uleb128 .Ltmp280-.Ltmp279              #   Call between .Ltmp279 and .Ltmp280
	.uleb128 .Ltmp281-.Lfunc_begin0         #     jumps to .Ltmp281
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp282-.Lfunc_begin0         # >> Call Site 58 <<
	.uleb128 .Ltmp283-.Ltmp282              #   Call between .Ltmp282 and .Ltmp283
	.uleb128 .Ltmp284-.Lfunc_begin0         #     jumps to .Ltmp284
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp285-.Lfunc_begin0         # >> Call Site 59 <<
	.uleb128 .Ltmp286-.Ltmp285              #   Call between .Ltmp285 and .Ltmp286
	.uleb128 .Ltmp287-.Lfunc_begin0         #     jumps to .Ltmp287
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp294-.Lfunc_begin0         # >> Call Site 60 <<
	.uleb128 .Ltmp295-.Ltmp294              #   Call between .Ltmp294 and .Ltmp295
	.uleb128 .Ltmp296-.Lfunc_begin0         #     jumps to .Ltmp296
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp297-.Lfunc_begin0         # >> Call Site 61 <<
	.uleb128 .Ltmp298-.Ltmp297              #   Call between .Ltmp297 and .Ltmp298
	.uleb128 .Ltmp299-.Lfunc_begin0         #     jumps to .Ltmp299
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp300-.Lfunc_begin0         # >> Call Site 62 <<
	.uleb128 .Ltmp301-.Ltmp300              #   Call between .Ltmp300 and .Ltmp301
	.uleb128 .Ltmp302-.Lfunc_begin0         #     jumps to .Ltmp302
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp309-.Lfunc_begin0         # >> Call Site 63 <<
	.uleb128 .Ltmp310-.Ltmp309              #   Call between .Ltmp309 and .Ltmp310
	.uleb128 .Ltmp311-.Lfunc_begin0         #     jumps to .Ltmp311
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp312-.Lfunc_begin0         # >> Call Site 64 <<
	.uleb128 .Ltmp313-.Ltmp312              #   Call between .Ltmp312 and .Ltmp313
	.uleb128 .Ltmp314-.Lfunc_begin0         #     jumps to .Ltmp314
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp315-.Lfunc_begin0         # >> Call Site 65 <<
	.uleb128 .Ltmp316-.Ltmp315              #   Call between .Ltmp315 and .Ltmp316
	.uleb128 .Ltmp317-.Lfunc_begin0         #     jumps to .Ltmp317
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp324-.Lfunc_begin0         # >> Call Site 66 <<
	.uleb128 .Ltmp325-.Ltmp324              #   Call between .Ltmp324 and .Ltmp325
	.uleb128 .Ltmp326-.Lfunc_begin0         #     jumps to .Ltmp326
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp327-.Lfunc_begin0         # >> Call Site 67 <<
	.uleb128 .Ltmp328-.Ltmp327              #   Call between .Ltmp327 and .Ltmp328
	.uleb128 .Ltmp329-.Lfunc_begin0         #     jumps to .Ltmp329
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp330-.Lfunc_begin0         # >> Call Site 68 <<
	.uleb128 .Ltmp331-.Ltmp330              #   Call between .Ltmp330 and .Ltmp331
	.uleb128 .Ltmp332-.Lfunc_begin0         #     jumps to .Ltmp332
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp339-.Lfunc_begin0         # >> Call Site 69 <<
	.uleb128 .Ltmp340-.Ltmp339              #   Call between .Ltmp339 and .Ltmp340
	.uleb128 .Ltmp341-.Lfunc_begin0         #     jumps to .Ltmp341
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp342-.Lfunc_begin0         # >> Call Site 70 <<
	.uleb128 .Ltmp343-.Ltmp342              #   Call between .Ltmp342 and .Ltmp343
	.uleb128 .Ltmp344-.Lfunc_begin0         #     jumps to .Ltmp344
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp345-.Lfunc_begin0         # >> Call Site 71 <<
	.uleb128 .Ltmp346-.Ltmp345              #   Call between .Ltmp345 and .Ltmp346
	.uleb128 .Ltmp347-.Lfunc_begin0         #     jumps to .Ltmp347
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp354-.Lfunc_begin0         # >> Call Site 72 <<
	.uleb128 .Ltmp355-.Ltmp354              #   Call between .Ltmp354 and .Ltmp355
	.uleb128 .Ltmp356-.Lfunc_begin0         #     jumps to .Ltmp356
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp357-.Lfunc_begin0         # >> Call Site 73 <<
	.uleb128 .Ltmp358-.Ltmp357              #   Call between .Ltmp357 and .Ltmp358
	.uleb128 .Ltmp359-.Lfunc_begin0         #     jumps to .Ltmp359
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp360-.Lfunc_begin0         # >> Call Site 74 <<
	.uleb128 .Ltmp361-.Ltmp360              #   Call between .Ltmp360 and .Ltmp361
	.uleb128 .Ltmp362-.Lfunc_begin0         #     jumps to .Ltmp362
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp369-.Lfunc_begin0         # >> Call Site 75 <<
	.uleb128 .Ltmp370-.Ltmp369              #   Call between .Ltmp369 and .Ltmp370
	.uleb128 .Ltmp371-.Lfunc_begin0         #     jumps to .Ltmp371
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp372-.Lfunc_begin0         # >> Call Site 76 <<
	.uleb128 .Ltmp373-.Ltmp372              #   Call between .Ltmp372 and .Ltmp373
	.uleb128 .Ltmp374-.Lfunc_begin0         #     jumps to .Ltmp374
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp375-.Lfunc_begin0         # >> Call Site 77 <<
	.uleb128 .Ltmp376-.Ltmp375              #   Call between .Ltmp375 and .Ltmp376
	.uleb128 .Ltmp377-.Lfunc_begin0         #     jumps to .Ltmp377
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp384-.Lfunc_begin0         # >> Call Site 78 <<
	.uleb128 .Ltmp385-.Ltmp384              #   Call between .Ltmp384 and .Ltmp385
	.uleb128 .Ltmp386-.Lfunc_begin0         #     jumps to .Ltmp386
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp387-.Lfunc_begin0         # >> Call Site 79 <<
	.uleb128 .Ltmp388-.Ltmp387              #   Call between .Ltmp387 and .Ltmp388
	.uleb128 .Ltmp389-.Lfunc_begin0         #     jumps to .Ltmp389
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp390-.Lfunc_begin0         # >> Call Site 80 <<
	.uleb128 .Ltmp391-.Ltmp390              #   Call between .Ltmp390 and .Ltmp391
	.uleb128 .Ltmp392-.Lfunc_begin0         #     jumps to .Ltmp392
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp399-.Lfunc_begin0         # >> Call Site 81 <<
	.uleb128 .Ltmp400-.Ltmp399              #   Call between .Ltmp399 and .Ltmp400
	.uleb128 .Ltmp401-.Lfunc_begin0         #     jumps to .Ltmp401
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp402-.Lfunc_begin0         # >> Call Site 82 <<
	.uleb128 .Ltmp403-.Ltmp402              #   Call between .Ltmp402 and .Ltmp403
	.uleb128 .Ltmp404-.Lfunc_begin0         #     jumps to .Ltmp404
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp405-.Lfunc_begin0         # >> Call Site 83 <<
	.uleb128 .Ltmp406-.Ltmp405              #   Call between .Ltmp405 and .Ltmp406
	.uleb128 .Ltmp407-.Lfunc_begin0         #     jumps to .Ltmp407
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp414-.Lfunc_begin0         # >> Call Site 84 <<
	.uleb128 .Ltmp415-.Ltmp414              #   Call between .Ltmp414 and .Ltmp415
	.uleb128 .Ltmp416-.Lfunc_begin0         #     jumps to .Ltmp416
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp417-.Lfunc_begin0         # >> Call Site 85 <<
	.uleb128 .Ltmp418-.Ltmp417              #   Call between .Ltmp417 and .Ltmp418
	.uleb128 .Ltmp419-.Lfunc_begin0         #     jumps to .Ltmp419
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp420-.Lfunc_begin0         # >> Call Site 86 <<
	.uleb128 .Ltmp421-.Ltmp420              #   Call between .Ltmp420 and .Ltmp421
	.uleb128 .Ltmp422-.Lfunc_begin0         #     jumps to .Ltmp422
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp429-.Lfunc_begin0         # >> Call Site 87 <<
	.uleb128 .Ltmp430-.Ltmp429              #   Call between .Ltmp429 and .Ltmp430
	.uleb128 .Ltmp431-.Lfunc_begin0         #     jumps to .Ltmp431
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp432-.Lfunc_begin0         # >> Call Site 88 <<
	.uleb128 .Ltmp433-.Ltmp432              #   Call between .Ltmp432 and .Ltmp433
	.uleb128 .Ltmp434-.Lfunc_begin0         #     jumps to .Ltmp434
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp435-.Lfunc_begin0         # >> Call Site 89 <<
	.uleb128 .Ltmp436-.Ltmp435              #   Call between .Ltmp435 and .Ltmp436
	.uleb128 .Ltmp437-.Lfunc_begin0         #     jumps to .Ltmp437
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp444-.Lfunc_begin0         # >> Call Site 90 <<
	.uleb128 .Ltmp445-.Ltmp444              #   Call between .Ltmp444 and .Ltmp445
	.uleb128 .Ltmp446-.Lfunc_begin0         #     jumps to .Ltmp446
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp447-.Lfunc_begin0         # >> Call Site 91 <<
	.uleb128 .Ltmp448-.Ltmp447              #   Call between .Ltmp447 and .Ltmp448
	.uleb128 .Ltmp449-.Lfunc_begin0         #     jumps to .Ltmp449
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp450-.Lfunc_begin0         # >> Call Site 92 <<
	.uleb128 .Ltmp451-.Ltmp450              #   Call between .Ltmp450 and .Ltmp451
	.uleb128 .Ltmp452-.Lfunc_begin0         #     jumps to .Ltmp452
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp459-.Lfunc_begin0         # >> Call Site 93 <<
	.uleb128 .Ltmp460-.Ltmp459              #   Call between .Ltmp459 and .Ltmp460
	.uleb128 .Ltmp461-.Lfunc_begin0         #     jumps to .Ltmp461
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp462-.Lfunc_begin0         # >> Call Site 94 <<
	.uleb128 .Ltmp463-.Ltmp462              #   Call between .Ltmp462 and .Ltmp463
	.uleb128 .Ltmp464-.Lfunc_begin0         #     jumps to .Ltmp464
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp465-.Lfunc_begin0         # >> Call Site 95 <<
	.uleb128 .Ltmp466-.Ltmp465              #   Call between .Ltmp465 and .Ltmp466
	.uleb128 .Ltmp467-.Lfunc_begin0         #     jumps to .Ltmp467
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp474-.Lfunc_begin0         # >> Call Site 96 <<
	.uleb128 .Ltmp475-.Ltmp474              #   Call between .Ltmp474 and .Ltmp475
	.uleb128 .Ltmp476-.Lfunc_begin0         #     jumps to .Ltmp476
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp477-.Lfunc_begin0         # >> Call Site 97 <<
	.uleb128 .Ltmp478-.Ltmp477              #   Call between .Ltmp477 and .Ltmp478
	.uleb128 .Ltmp479-.Lfunc_begin0         #     jumps to .Ltmp479
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp480-.Lfunc_begin0         # >> Call Site 98 <<
	.uleb128 .Ltmp481-.Ltmp480              #   Call between .Ltmp480 and .Ltmp481
	.uleb128 .Ltmp482-.Lfunc_begin0         #     jumps to .Ltmp482
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp489-.Lfunc_begin0         # >> Call Site 99 <<
	.uleb128 .Ltmp490-.Ltmp489              #   Call between .Ltmp489 and .Ltmp490
	.uleb128 .Ltmp491-.Lfunc_begin0         #     jumps to .Ltmp491
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp492-.Lfunc_begin0         # >> Call Site 100 <<
	.uleb128 .Ltmp493-.Ltmp492              #   Call between .Ltmp492 and .Ltmp493
	.uleb128 .Ltmp494-.Lfunc_begin0         #     jumps to .Ltmp494
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp495-.Lfunc_begin0         # >> Call Site 101 <<
	.uleb128 .Ltmp496-.Ltmp495              #   Call between .Ltmp495 and .Ltmp496
	.uleb128 .Ltmp497-.Lfunc_begin0         #     jumps to .Ltmp497
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp504-.Lfunc_begin0         # >> Call Site 102 <<
	.uleb128 .Ltmp505-.Ltmp504              #   Call between .Ltmp504 and .Ltmp505
	.uleb128 .Ltmp506-.Lfunc_begin0         #     jumps to .Ltmp506
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp507-.Lfunc_begin0         # >> Call Site 103 <<
	.uleb128 .Ltmp508-.Ltmp507              #   Call between .Ltmp507 and .Ltmp508
	.uleb128 .Ltmp509-.Lfunc_begin0         #     jumps to .Ltmp509
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp510-.Lfunc_begin0         # >> Call Site 104 <<
	.uleb128 .Ltmp511-.Ltmp510              #   Call between .Ltmp510 and .Ltmp511
	.uleb128 .Ltmp512-.Lfunc_begin0         #     jumps to .Ltmp512
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp519-.Lfunc_begin0         # >> Call Site 105 <<
	.uleb128 .Ltmp520-.Ltmp519              #   Call between .Ltmp519 and .Ltmp520
	.uleb128 .Ltmp521-.Lfunc_begin0         #     jumps to .Ltmp521
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp522-.Lfunc_begin0         # >> Call Site 106 <<
	.uleb128 .Ltmp523-.Ltmp522              #   Call between .Ltmp522 and .Ltmp523
	.uleb128 .Ltmp524-.Lfunc_begin0         #     jumps to .Ltmp524
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp525-.Lfunc_begin0         # >> Call Site 107 <<
	.uleb128 .Ltmp526-.Ltmp525              #   Call between .Ltmp525 and .Ltmp526
	.uleb128 .Ltmp527-.Lfunc_begin0         #     jumps to .Ltmp527
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp534-.Lfunc_begin0         # >> Call Site 108 <<
	.uleb128 .Ltmp535-.Ltmp534              #   Call between .Ltmp534 and .Ltmp535
	.uleb128 .Ltmp536-.Lfunc_begin0         #     jumps to .Ltmp536
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp537-.Lfunc_begin0         # >> Call Site 109 <<
	.uleb128 .Ltmp538-.Ltmp537              #   Call between .Ltmp537 and .Ltmp538
	.uleb128 .Ltmp539-.Lfunc_begin0         #     jumps to .Ltmp539
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp540-.Lfunc_begin0         # >> Call Site 110 <<
	.uleb128 .Ltmp541-.Ltmp540              #   Call between .Ltmp540 and .Ltmp541
	.uleb128 .Ltmp542-.Lfunc_begin0         #     jumps to .Ltmp542
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp549-.Lfunc_begin0         # >> Call Site 111 <<
	.uleb128 .Ltmp550-.Ltmp549              #   Call between .Ltmp549 and .Ltmp550
	.uleb128 .Ltmp551-.Lfunc_begin0         #     jumps to .Ltmp551
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp552-.Lfunc_begin0         # >> Call Site 112 <<
	.uleb128 .Ltmp553-.Ltmp552              #   Call between .Ltmp552 and .Ltmp553
	.uleb128 .Ltmp554-.Lfunc_begin0         #     jumps to .Ltmp554
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp555-.Lfunc_begin0         # >> Call Site 113 <<
	.uleb128 .Ltmp556-.Ltmp555              #   Call between .Ltmp555 and .Ltmp556
	.uleb128 .Ltmp557-.Lfunc_begin0         #     jumps to .Ltmp557
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp564-.Lfunc_begin0         # >> Call Site 114 <<
	.uleb128 .Ltmp565-.Ltmp564              #   Call between .Ltmp564 and .Ltmp565
	.uleb128 .Ltmp566-.Lfunc_begin0         #     jumps to .Ltmp566
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp567-.Lfunc_begin0         # >> Call Site 115 <<
	.uleb128 .Ltmp568-.Ltmp567              #   Call between .Ltmp567 and .Ltmp568
	.uleb128 .Ltmp569-.Lfunc_begin0         #     jumps to .Ltmp569
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp570-.Lfunc_begin0         # >> Call Site 116 <<
	.uleb128 .Ltmp571-.Ltmp570              #   Call between .Ltmp570 and .Ltmp571
	.uleb128 .Ltmp572-.Lfunc_begin0         #     jumps to .Ltmp572
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp579-.Lfunc_begin0         # >> Call Site 117 <<
	.uleb128 .Ltmp580-.Ltmp579              #   Call between .Ltmp579 and .Ltmp580
	.uleb128 .Ltmp581-.Lfunc_begin0         #     jumps to .Ltmp581
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp582-.Lfunc_begin0         # >> Call Site 118 <<
	.uleb128 .Ltmp583-.Ltmp582              #   Call between .Ltmp582 and .Ltmp583
	.uleb128 .Ltmp584-.Lfunc_begin0         #     jumps to .Ltmp584
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp585-.Lfunc_begin0         # >> Call Site 119 <<
	.uleb128 .Ltmp586-.Ltmp585              #   Call between .Ltmp585 and .Ltmp586
	.uleb128 .Ltmp587-.Lfunc_begin0         #     jumps to .Ltmp587
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp594-.Lfunc_begin0         # >> Call Site 120 <<
	.uleb128 .Ltmp595-.Ltmp594              #   Call between .Ltmp594 and .Ltmp595
	.uleb128 .Ltmp596-.Lfunc_begin0         #     jumps to .Ltmp596
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp597-.Lfunc_begin0         # >> Call Site 121 <<
	.uleb128 .Ltmp598-.Ltmp597              #   Call between .Ltmp597 and .Ltmp598
	.uleb128 .Ltmp599-.Lfunc_begin0         #     jumps to .Ltmp599
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp600-.Lfunc_begin0         # >> Call Site 122 <<
	.uleb128 .Ltmp601-.Ltmp600              #   Call between .Ltmp600 and .Ltmp601
	.uleb128 .Ltmp602-.Lfunc_begin0         #     jumps to .Ltmp602
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp609-.Lfunc_begin0         # >> Call Site 123 <<
	.uleb128 .Ltmp610-.Ltmp609              #   Call between .Ltmp609 and .Ltmp610
	.uleb128 .Ltmp611-.Lfunc_begin0         #     jumps to .Ltmp611
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp612-.Lfunc_begin0         # >> Call Site 124 <<
	.uleb128 .Ltmp613-.Ltmp612              #   Call between .Ltmp612 and .Ltmp613
	.uleb128 .Ltmp614-.Lfunc_begin0         #     jumps to .Ltmp614
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp615-.Lfunc_begin0         # >> Call Site 125 <<
	.uleb128 .Ltmp616-.Ltmp615              #   Call between .Ltmp615 and .Ltmp616
	.uleb128 .Ltmp617-.Lfunc_begin0         #     jumps to .Ltmp617
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp624-.Lfunc_begin0         # >> Call Site 126 <<
	.uleb128 .Ltmp625-.Ltmp624              #   Call between .Ltmp624 and .Ltmp625
	.uleb128 .Ltmp626-.Lfunc_begin0         #     jumps to .Ltmp626
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp627-.Lfunc_begin0         # >> Call Site 127 <<
	.uleb128 .Ltmp628-.Ltmp627              #   Call between .Ltmp627 and .Ltmp628
	.uleb128 .Ltmp629-.Lfunc_begin0         #     jumps to .Ltmp629
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp630-.Lfunc_begin0         # >> Call Site 128 <<
	.uleb128 .Ltmp631-.Ltmp630              #   Call between .Ltmp630 and .Ltmp631
	.uleb128 .Ltmp632-.Lfunc_begin0         #     jumps to .Ltmp632
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp639-.Lfunc_begin0         # >> Call Site 129 <<
	.uleb128 .Ltmp640-.Ltmp639              #   Call between .Ltmp639 and .Ltmp640
	.uleb128 .Ltmp641-.Lfunc_begin0         #     jumps to .Ltmp641
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp642-.Lfunc_begin0         # >> Call Site 130 <<
	.uleb128 .Ltmp643-.Ltmp642              #   Call between .Ltmp642 and .Ltmp643
	.uleb128 .Ltmp644-.Lfunc_begin0         #     jumps to .Ltmp644
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp645-.Lfunc_begin0         # >> Call Site 131 <<
	.uleb128 .Ltmp646-.Ltmp645              #   Call between .Ltmp645 and .Ltmp646
	.uleb128 .Ltmp647-.Lfunc_begin0         #     jumps to .Ltmp647
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp654-.Lfunc_begin0         # >> Call Site 132 <<
	.uleb128 .Ltmp655-.Ltmp654              #   Call between .Ltmp654 and .Ltmp655
	.uleb128 .Ltmp656-.Lfunc_begin0         #     jumps to .Ltmp656
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp657-.Lfunc_begin0         # >> Call Site 133 <<
	.uleb128 .Ltmp658-.Ltmp657              #   Call between .Ltmp657 and .Ltmp658
	.uleb128 .Ltmp659-.Lfunc_begin0         #     jumps to .Ltmp659
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp660-.Lfunc_begin0         # >> Call Site 134 <<
	.uleb128 .Ltmp661-.Ltmp660              #   Call between .Ltmp660 and .Ltmp661
	.uleb128 .Ltmp662-.Lfunc_begin0         #     jumps to .Ltmp662
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp669-.Lfunc_begin0         # >> Call Site 135 <<
	.uleb128 .Ltmp670-.Ltmp669              #   Call between .Ltmp669 and .Ltmp670
	.uleb128 .Ltmp671-.Lfunc_begin0         #     jumps to .Ltmp671
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp672-.Lfunc_begin0         # >> Call Site 136 <<
	.uleb128 .Ltmp673-.Ltmp672              #   Call between .Ltmp672 and .Ltmp673
	.uleb128 .Ltmp674-.Lfunc_begin0         #     jumps to .Ltmp674
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp675-.Lfunc_begin0         # >> Call Site 137 <<
	.uleb128 .Ltmp676-.Ltmp675              #   Call between .Ltmp675 and .Ltmp676
	.uleb128 .Ltmp677-.Lfunc_begin0         #     jumps to .Ltmp677
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp684-.Lfunc_begin0         # >> Call Site 138 <<
	.uleb128 .Ltmp685-.Ltmp684              #   Call between .Ltmp684 and .Ltmp685
	.uleb128 .Ltmp686-.Lfunc_begin0         #     jumps to .Ltmp686
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp687-.Lfunc_begin0         # >> Call Site 139 <<
	.uleb128 .Ltmp688-.Ltmp687              #   Call between .Ltmp687 and .Ltmp688
	.uleb128 .Ltmp689-.Lfunc_begin0         #     jumps to .Ltmp689
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp690-.Lfunc_begin0         # >> Call Site 140 <<
	.uleb128 .Ltmp691-.Ltmp690              #   Call between .Ltmp690 and .Ltmp691
	.uleb128 .Ltmp692-.Lfunc_begin0         #     jumps to .Ltmp692
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp699-.Lfunc_begin0         # >> Call Site 141 <<
	.uleb128 .Ltmp700-.Ltmp699              #   Call between .Ltmp699 and .Ltmp700
	.uleb128 .Ltmp701-.Lfunc_begin0         #     jumps to .Ltmp701
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp702-.Lfunc_begin0         # >> Call Site 142 <<
	.uleb128 .Ltmp703-.Ltmp702              #   Call between .Ltmp702 and .Ltmp703
	.uleb128 .Ltmp704-.Lfunc_begin0         #     jumps to .Ltmp704
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp705-.Lfunc_begin0         # >> Call Site 143 <<
	.uleb128 .Ltmp706-.Ltmp705              #   Call between .Ltmp705 and .Ltmp706
	.uleb128 .Ltmp707-.Lfunc_begin0         #     jumps to .Ltmp707
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp714-.Lfunc_begin0         # >> Call Site 144 <<
	.uleb128 .Ltmp715-.Ltmp714              #   Call between .Ltmp714 and .Ltmp715
	.uleb128 .Ltmp716-.Lfunc_begin0         #     jumps to .Ltmp716
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp717-.Lfunc_begin0         # >> Call Site 145 <<
	.uleb128 .Ltmp718-.Ltmp717              #   Call between .Ltmp717 and .Ltmp718
	.uleb128 .Ltmp719-.Lfunc_begin0         #     jumps to .Ltmp719
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp718-.Lfunc_begin0         # >> Call Site 146 <<
	.uleb128 .Ltmp708-.Ltmp718              #   Call between .Ltmp718 and .Ltmp708
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp708-.Lfunc_begin0         # >> Call Site 147 <<
	.uleb128 .Ltmp709-.Ltmp708              #   Call between .Ltmp708 and .Ltmp709
	.uleb128 .Ltmp710-.Lfunc_begin0         #     jumps to .Ltmp710
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp711-.Lfunc_begin0         # >> Call Site 148 <<
	.uleb128 .Ltmp712-.Ltmp711              #   Call between .Ltmp711 and .Ltmp712
	.uleb128 .Ltmp713-.Lfunc_begin0         #     jumps to .Ltmp713
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp712-.Lfunc_begin0         # >> Call Site 149 <<
	.uleb128 .Ltmp693-.Ltmp712              #   Call between .Ltmp712 and .Ltmp693
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp693-.Lfunc_begin0         # >> Call Site 150 <<
	.uleb128 .Ltmp694-.Ltmp693              #   Call between .Ltmp693 and .Ltmp694
	.uleb128 .Ltmp695-.Lfunc_begin0         #     jumps to .Ltmp695
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp696-.Lfunc_begin0         # >> Call Site 151 <<
	.uleb128 .Ltmp697-.Ltmp696              #   Call between .Ltmp696 and .Ltmp697
	.uleb128 .Ltmp698-.Lfunc_begin0         #     jumps to .Ltmp698
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp697-.Lfunc_begin0         # >> Call Site 152 <<
	.uleb128 .Ltmp678-.Ltmp697              #   Call between .Ltmp697 and .Ltmp678
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp678-.Lfunc_begin0         # >> Call Site 153 <<
	.uleb128 .Ltmp679-.Ltmp678              #   Call between .Ltmp678 and .Ltmp679
	.uleb128 .Ltmp680-.Lfunc_begin0         #     jumps to .Ltmp680
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp681-.Lfunc_begin0         # >> Call Site 154 <<
	.uleb128 .Ltmp682-.Ltmp681              #   Call between .Ltmp681 and .Ltmp682
	.uleb128 .Ltmp683-.Lfunc_begin0         #     jumps to .Ltmp683
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp682-.Lfunc_begin0         # >> Call Site 155 <<
	.uleb128 .Ltmp663-.Ltmp682              #   Call between .Ltmp682 and .Ltmp663
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp663-.Lfunc_begin0         # >> Call Site 156 <<
	.uleb128 .Ltmp664-.Ltmp663              #   Call between .Ltmp663 and .Ltmp664
	.uleb128 .Ltmp665-.Lfunc_begin0         #     jumps to .Ltmp665
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp666-.Lfunc_begin0         # >> Call Site 157 <<
	.uleb128 .Ltmp667-.Ltmp666              #   Call between .Ltmp666 and .Ltmp667
	.uleb128 .Ltmp668-.Lfunc_begin0         #     jumps to .Ltmp668
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp667-.Lfunc_begin0         # >> Call Site 158 <<
	.uleb128 .Ltmp648-.Ltmp667              #   Call between .Ltmp667 and .Ltmp648
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp648-.Lfunc_begin0         # >> Call Site 159 <<
	.uleb128 .Ltmp649-.Ltmp648              #   Call between .Ltmp648 and .Ltmp649
	.uleb128 .Ltmp650-.Lfunc_begin0         #     jumps to .Ltmp650
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp651-.Lfunc_begin0         # >> Call Site 160 <<
	.uleb128 .Ltmp652-.Ltmp651              #   Call between .Ltmp651 and .Ltmp652
	.uleb128 .Ltmp653-.Lfunc_begin0         #     jumps to .Ltmp653
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp652-.Lfunc_begin0         # >> Call Site 161 <<
	.uleb128 .Ltmp633-.Ltmp652              #   Call between .Ltmp652 and .Ltmp633
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp633-.Lfunc_begin0         # >> Call Site 162 <<
	.uleb128 .Ltmp634-.Ltmp633              #   Call between .Ltmp633 and .Ltmp634
	.uleb128 .Ltmp635-.Lfunc_begin0         #     jumps to .Ltmp635
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp636-.Lfunc_begin0         # >> Call Site 163 <<
	.uleb128 .Ltmp637-.Ltmp636              #   Call between .Ltmp636 and .Ltmp637
	.uleb128 .Ltmp638-.Lfunc_begin0         #     jumps to .Ltmp638
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp637-.Lfunc_begin0         # >> Call Site 164 <<
	.uleb128 .Ltmp618-.Ltmp637              #   Call between .Ltmp637 and .Ltmp618
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp618-.Lfunc_begin0         # >> Call Site 165 <<
	.uleb128 .Ltmp619-.Ltmp618              #   Call between .Ltmp618 and .Ltmp619
	.uleb128 .Ltmp620-.Lfunc_begin0         #     jumps to .Ltmp620
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp621-.Lfunc_begin0         # >> Call Site 166 <<
	.uleb128 .Ltmp622-.Ltmp621              #   Call between .Ltmp621 and .Ltmp622
	.uleb128 .Ltmp623-.Lfunc_begin0         #     jumps to .Ltmp623
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp622-.Lfunc_begin0         # >> Call Site 167 <<
	.uleb128 .Ltmp603-.Ltmp622              #   Call between .Ltmp622 and .Ltmp603
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp603-.Lfunc_begin0         # >> Call Site 168 <<
	.uleb128 .Ltmp604-.Ltmp603              #   Call between .Ltmp603 and .Ltmp604
	.uleb128 .Ltmp605-.Lfunc_begin0         #     jumps to .Ltmp605
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp606-.Lfunc_begin0         # >> Call Site 169 <<
	.uleb128 .Ltmp607-.Ltmp606              #   Call between .Ltmp606 and .Ltmp607
	.uleb128 .Ltmp608-.Lfunc_begin0         #     jumps to .Ltmp608
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp607-.Lfunc_begin0         # >> Call Site 170 <<
	.uleb128 .Ltmp588-.Ltmp607              #   Call between .Ltmp607 and .Ltmp588
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp588-.Lfunc_begin0         # >> Call Site 171 <<
	.uleb128 .Ltmp589-.Ltmp588              #   Call between .Ltmp588 and .Ltmp589
	.uleb128 .Ltmp590-.Lfunc_begin0         #     jumps to .Ltmp590
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp591-.Lfunc_begin0         # >> Call Site 172 <<
	.uleb128 .Ltmp592-.Ltmp591              #   Call between .Ltmp591 and .Ltmp592
	.uleb128 .Ltmp593-.Lfunc_begin0         #     jumps to .Ltmp593
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp592-.Lfunc_begin0         # >> Call Site 173 <<
	.uleb128 .Ltmp573-.Ltmp592              #   Call between .Ltmp592 and .Ltmp573
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp573-.Lfunc_begin0         # >> Call Site 174 <<
	.uleb128 .Ltmp574-.Ltmp573              #   Call between .Ltmp573 and .Ltmp574
	.uleb128 .Ltmp575-.Lfunc_begin0         #     jumps to .Ltmp575
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp576-.Lfunc_begin0         # >> Call Site 175 <<
	.uleb128 .Ltmp577-.Ltmp576              #   Call between .Ltmp576 and .Ltmp577
	.uleb128 .Ltmp578-.Lfunc_begin0         #     jumps to .Ltmp578
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp577-.Lfunc_begin0         # >> Call Site 176 <<
	.uleb128 .Ltmp558-.Ltmp577              #   Call between .Ltmp577 and .Ltmp558
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp558-.Lfunc_begin0         # >> Call Site 177 <<
	.uleb128 .Ltmp559-.Ltmp558              #   Call between .Ltmp558 and .Ltmp559
	.uleb128 .Ltmp560-.Lfunc_begin0         #     jumps to .Ltmp560
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp561-.Lfunc_begin0         # >> Call Site 178 <<
	.uleb128 .Ltmp562-.Ltmp561              #   Call between .Ltmp561 and .Ltmp562
	.uleb128 .Ltmp563-.Lfunc_begin0         #     jumps to .Ltmp563
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp562-.Lfunc_begin0         # >> Call Site 179 <<
	.uleb128 .Ltmp543-.Ltmp562              #   Call between .Ltmp562 and .Ltmp543
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp543-.Lfunc_begin0         # >> Call Site 180 <<
	.uleb128 .Ltmp544-.Ltmp543              #   Call between .Ltmp543 and .Ltmp544
	.uleb128 .Ltmp545-.Lfunc_begin0         #     jumps to .Ltmp545
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp546-.Lfunc_begin0         # >> Call Site 181 <<
	.uleb128 .Ltmp547-.Ltmp546              #   Call between .Ltmp546 and .Ltmp547
	.uleb128 .Ltmp548-.Lfunc_begin0         #     jumps to .Ltmp548
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp547-.Lfunc_begin0         # >> Call Site 182 <<
	.uleb128 .Ltmp528-.Ltmp547              #   Call between .Ltmp547 and .Ltmp528
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp528-.Lfunc_begin0         # >> Call Site 183 <<
	.uleb128 .Ltmp529-.Ltmp528              #   Call between .Ltmp528 and .Ltmp529
	.uleb128 .Ltmp530-.Lfunc_begin0         #     jumps to .Ltmp530
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp531-.Lfunc_begin0         # >> Call Site 184 <<
	.uleb128 .Ltmp532-.Ltmp531              #   Call between .Ltmp531 and .Ltmp532
	.uleb128 .Ltmp533-.Lfunc_begin0         #     jumps to .Ltmp533
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp532-.Lfunc_begin0         # >> Call Site 185 <<
	.uleb128 .Ltmp513-.Ltmp532              #   Call between .Ltmp532 and .Ltmp513
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp513-.Lfunc_begin0         # >> Call Site 186 <<
	.uleb128 .Ltmp514-.Ltmp513              #   Call between .Ltmp513 and .Ltmp514
	.uleb128 .Ltmp515-.Lfunc_begin0         #     jumps to .Ltmp515
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp516-.Lfunc_begin0         # >> Call Site 187 <<
	.uleb128 .Ltmp517-.Ltmp516              #   Call between .Ltmp516 and .Ltmp517
	.uleb128 .Ltmp518-.Lfunc_begin0         #     jumps to .Ltmp518
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp517-.Lfunc_begin0         # >> Call Site 188 <<
	.uleb128 .Ltmp498-.Ltmp517              #   Call between .Ltmp517 and .Ltmp498
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp498-.Lfunc_begin0         # >> Call Site 189 <<
	.uleb128 .Ltmp499-.Ltmp498              #   Call between .Ltmp498 and .Ltmp499
	.uleb128 .Ltmp500-.Lfunc_begin0         #     jumps to .Ltmp500
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp501-.Lfunc_begin0         # >> Call Site 190 <<
	.uleb128 .Ltmp502-.Ltmp501              #   Call between .Ltmp501 and .Ltmp502
	.uleb128 .Ltmp503-.Lfunc_begin0         #     jumps to .Ltmp503
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp502-.Lfunc_begin0         # >> Call Site 191 <<
	.uleb128 .Ltmp483-.Ltmp502              #   Call between .Ltmp502 and .Ltmp483
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp483-.Lfunc_begin0         # >> Call Site 192 <<
	.uleb128 .Ltmp484-.Ltmp483              #   Call between .Ltmp483 and .Ltmp484
	.uleb128 .Ltmp485-.Lfunc_begin0         #     jumps to .Ltmp485
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp486-.Lfunc_begin0         # >> Call Site 193 <<
	.uleb128 .Ltmp487-.Ltmp486              #   Call between .Ltmp486 and .Ltmp487
	.uleb128 .Ltmp488-.Lfunc_begin0         #     jumps to .Ltmp488
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp487-.Lfunc_begin0         # >> Call Site 194 <<
	.uleb128 .Ltmp468-.Ltmp487              #   Call between .Ltmp487 and .Ltmp468
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp468-.Lfunc_begin0         # >> Call Site 195 <<
	.uleb128 .Ltmp469-.Ltmp468              #   Call between .Ltmp468 and .Ltmp469
	.uleb128 .Ltmp470-.Lfunc_begin0         #     jumps to .Ltmp470
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp471-.Lfunc_begin0         # >> Call Site 196 <<
	.uleb128 .Ltmp472-.Ltmp471              #   Call between .Ltmp471 and .Ltmp472
	.uleb128 .Ltmp473-.Lfunc_begin0         #     jumps to .Ltmp473
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp472-.Lfunc_begin0         # >> Call Site 197 <<
	.uleb128 .Ltmp453-.Ltmp472              #   Call between .Ltmp472 and .Ltmp453
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp453-.Lfunc_begin0         # >> Call Site 198 <<
	.uleb128 .Ltmp454-.Ltmp453              #   Call between .Ltmp453 and .Ltmp454
	.uleb128 .Ltmp455-.Lfunc_begin0         #     jumps to .Ltmp455
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp456-.Lfunc_begin0         # >> Call Site 199 <<
	.uleb128 .Ltmp457-.Ltmp456              #   Call between .Ltmp456 and .Ltmp457
	.uleb128 .Ltmp458-.Lfunc_begin0         #     jumps to .Ltmp458
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp457-.Lfunc_begin0         # >> Call Site 200 <<
	.uleb128 .Ltmp438-.Ltmp457              #   Call between .Ltmp457 and .Ltmp438
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp438-.Lfunc_begin0         # >> Call Site 201 <<
	.uleb128 .Ltmp439-.Ltmp438              #   Call between .Ltmp438 and .Ltmp439
	.uleb128 .Ltmp440-.Lfunc_begin0         #     jumps to .Ltmp440
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp441-.Lfunc_begin0         # >> Call Site 202 <<
	.uleb128 .Ltmp442-.Ltmp441              #   Call between .Ltmp441 and .Ltmp442
	.uleb128 .Ltmp443-.Lfunc_begin0         #     jumps to .Ltmp443
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp442-.Lfunc_begin0         # >> Call Site 203 <<
	.uleb128 .Ltmp423-.Ltmp442              #   Call between .Ltmp442 and .Ltmp423
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp423-.Lfunc_begin0         # >> Call Site 204 <<
	.uleb128 .Ltmp424-.Ltmp423              #   Call between .Ltmp423 and .Ltmp424
	.uleb128 .Ltmp425-.Lfunc_begin0         #     jumps to .Ltmp425
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp426-.Lfunc_begin0         # >> Call Site 205 <<
	.uleb128 .Ltmp427-.Ltmp426              #   Call between .Ltmp426 and .Ltmp427
	.uleb128 .Ltmp428-.Lfunc_begin0         #     jumps to .Ltmp428
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp427-.Lfunc_begin0         # >> Call Site 206 <<
	.uleb128 .Ltmp408-.Ltmp427              #   Call between .Ltmp427 and .Ltmp408
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp408-.Lfunc_begin0         # >> Call Site 207 <<
	.uleb128 .Ltmp409-.Ltmp408              #   Call between .Ltmp408 and .Ltmp409
	.uleb128 .Ltmp410-.Lfunc_begin0         #     jumps to .Ltmp410
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp411-.Lfunc_begin0         # >> Call Site 208 <<
	.uleb128 .Ltmp412-.Ltmp411              #   Call between .Ltmp411 and .Ltmp412
	.uleb128 .Ltmp413-.Lfunc_begin0         #     jumps to .Ltmp413
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp412-.Lfunc_begin0         # >> Call Site 209 <<
	.uleb128 .Ltmp393-.Ltmp412              #   Call between .Ltmp412 and .Ltmp393
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp393-.Lfunc_begin0         # >> Call Site 210 <<
	.uleb128 .Ltmp394-.Ltmp393              #   Call between .Ltmp393 and .Ltmp394
	.uleb128 .Ltmp395-.Lfunc_begin0         #     jumps to .Ltmp395
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp396-.Lfunc_begin0         # >> Call Site 211 <<
	.uleb128 .Ltmp397-.Ltmp396              #   Call between .Ltmp396 and .Ltmp397
	.uleb128 .Ltmp398-.Lfunc_begin0         #     jumps to .Ltmp398
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp397-.Lfunc_begin0         # >> Call Site 212 <<
	.uleb128 .Ltmp378-.Ltmp397              #   Call between .Ltmp397 and .Ltmp378
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp378-.Lfunc_begin0         # >> Call Site 213 <<
	.uleb128 .Ltmp379-.Ltmp378              #   Call between .Ltmp378 and .Ltmp379
	.uleb128 .Ltmp380-.Lfunc_begin0         #     jumps to .Ltmp380
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp381-.Lfunc_begin0         # >> Call Site 214 <<
	.uleb128 .Ltmp382-.Ltmp381              #   Call between .Ltmp381 and .Ltmp382
	.uleb128 .Ltmp383-.Lfunc_begin0         #     jumps to .Ltmp383
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp382-.Lfunc_begin0         # >> Call Site 215 <<
	.uleb128 .Ltmp363-.Ltmp382              #   Call between .Ltmp382 and .Ltmp363
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp363-.Lfunc_begin0         # >> Call Site 216 <<
	.uleb128 .Ltmp364-.Ltmp363              #   Call between .Ltmp363 and .Ltmp364
	.uleb128 .Ltmp365-.Lfunc_begin0         #     jumps to .Ltmp365
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp366-.Lfunc_begin0         # >> Call Site 217 <<
	.uleb128 .Ltmp367-.Ltmp366              #   Call between .Ltmp366 and .Ltmp367
	.uleb128 .Ltmp368-.Lfunc_begin0         #     jumps to .Ltmp368
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp367-.Lfunc_begin0         # >> Call Site 218 <<
	.uleb128 .Ltmp348-.Ltmp367              #   Call between .Ltmp367 and .Ltmp348
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp348-.Lfunc_begin0         # >> Call Site 219 <<
	.uleb128 .Ltmp349-.Ltmp348              #   Call between .Ltmp348 and .Ltmp349
	.uleb128 .Ltmp350-.Lfunc_begin0         #     jumps to .Ltmp350
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp351-.Lfunc_begin0         # >> Call Site 220 <<
	.uleb128 .Ltmp352-.Ltmp351              #   Call between .Ltmp351 and .Ltmp352
	.uleb128 .Ltmp353-.Lfunc_begin0         #     jumps to .Ltmp353
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp352-.Lfunc_begin0         # >> Call Site 221 <<
	.uleb128 .Ltmp333-.Ltmp352              #   Call between .Ltmp352 and .Ltmp333
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp333-.Lfunc_begin0         # >> Call Site 222 <<
	.uleb128 .Ltmp334-.Ltmp333              #   Call between .Ltmp333 and .Ltmp334
	.uleb128 .Ltmp335-.Lfunc_begin0         #     jumps to .Ltmp335
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp336-.Lfunc_begin0         # >> Call Site 223 <<
	.uleb128 .Ltmp337-.Ltmp336              #   Call between .Ltmp336 and .Ltmp337
	.uleb128 .Ltmp338-.Lfunc_begin0         #     jumps to .Ltmp338
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp337-.Lfunc_begin0         # >> Call Site 224 <<
	.uleb128 .Ltmp318-.Ltmp337              #   Call between .Ltmp337 and .Ltmp318
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp318-.Lfunc_begin0         # >> Call Site 225 <<
	.uleb128 .Ltmp319-.Ltmp318              #   Call between .Ltmp318 and .Ltmp319
	.uleb128 .Ltmp320-.Lfunc_begin0         #     jumps to .Ltmp320
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp321-.Lfunc_begin0         # >> Call Site 226 <<
	.uleb128 .Ltmp322-.Ltmp321              #   Call between .Ltmp321 and .Ltmp322
	.uleb128 .Ltmp323-.Lfunc_begin0         #     jumps to .Ltmp323
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp322-.Lfunc_begin0         # >> Call Site 227 <<
	.uleb128 .Ltmp303-.Ltmp322              #   Call between .Ltmp322 and .Ltmp303
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp303-.Lfunc_begin0         # >> Call Site 228 <<
	.uleb128 .Ltmp304-.Ltmp303              #   Call between .Ltmp303 and .Ltmp304
	.uleb128 .Ltmp305-.Lfunc_begin0         #     jumps to .Ltmp305
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp306-.Lfunc_begin0         # >> Call Site 229 <<
	.uleb128 .Ltmp307-.Ltmp306              #   Call between .Ltmp306 and .Ltmp307
	.uleb128 .Ltmp308-.Lfunc_begin0         #     jumps to .Ltmp308
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp307-.Lfunc_begin0         # >> Call Site 230 <<
	.uleb128 .Ltmp288-.Ltmp307              #   Call between .Ltmp307 and .Ltmp288
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp288-.Lfunc_begin0         # >> Call Site 231 <<
	.uleb128 .Ltmp289-.Ltmp288              #   Call between .Ltmp288 and .Ltmp289
	.uleb128 .Ltmp290-.Lfunc_begin0         #     jumps to .Ltmp290
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp291-.Lfunc_begin0         # >> Call Site 232 <<
	.uleb128 .Ltmp292-.Ltmp291              #   Call between .Ltmp291 and .Ltmp292
	.uleb128 .Ltmp293-.Lfunc_begin0         #     jumps to .Ltmp293
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp292-.Lfunc_begin0         # >> Call Site 233 <<
	.uleb128 .Ltmp273-.Ltmp292              #   Call between .Ltmp292 and .Ltmp273
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp273-.Lfunc_begin0         # >> Call Site 234 <<
	.uleb128 .Ltmp274-.Ltmp273              #   Call between .Ltmp273 and .Ltmp274
	.uleb128 .Ltmp275-.Lfunc_begin0         #     jumps to .Ltmp275
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp276-.Lfunc_begin0         # >> Call Site 235 <<
	.uleb128 .Ltmp277-.Ltmp276              #   Call between .Ltmp276 and .Ltmp277
	.uleb128 .Ltmp278-.Lfunc_begin0         #     jumps to .Ltmp278
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp277-.Lfunc_begin0         # >> Call Site 236 <<
	.uleb128 .Ltmp258-.Ltmp277              #   Call between .Ltmp277 and .Ltmp258
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp258-.Lfunc_begin0         # >> Call Site 237 <<
	.uleb128 .Ltmp259-.Ltmp258              #   Call between .Ltmp258 and .Ltmp259
	.uleb128 .Ltmp260-.Lfunc_begin0         #     jumps to .Ltmp260
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp261-.Lfunc_begin0         # >> Call Site 238 <<
	.uleb128 .Ltmp262-.Ltmp261              #   Call between .Ltmp261 and .Ltmp262
	.uleb128 .Ltmp263-.Lfunc_begin0         #     jumps to .Ltmp263
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp262-.Lfunc_begin0         # >> Call Site 239 <<
	.uleb128 .Ltmp243-.Ltmp262              #   Call between .Ltmp262 and .Ltmp243
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp243-.Lfunc_begin0         # >> Call Site 240 <<
	.uleb128 .Ltmp244-.Ltmp243              #   Call between .Ltmp243 and .Ltmp244
	.uleb128 .Ltmp245-.Lfunc_begin0         #     jumps to .Ltmp245
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp246-.Lfunc_begin0         # >> Call Site 241 <<
	.uleb128 .Ltmp247-.Ltmp246              #   Call between .Ltmp246 and .Ltmp247
	.uleb128 .Ltmp248-.Lfunc_begin0         #     jumps to .Ltmp248
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp247-.Lfunc_begin0         # >> Call Site 242 <<
	.uleb128 .Ltmp228-.Ltmp247              #   Call between .Ltmp247 and .Ltmp228
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp228-.Lfunc_begin0         # >> Call Site 243 <<
	.uleb128 .Ltmp229-.Ltmp228              #   Call between .Ltmp228 and .Ltmp229
	.uleb128 .Ltmp230-.Lfunc_begin0         #     jumps to .Ltmp230
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp231-.Lfunc_begin0         # >> Call Site 244 <<
	.uleb128 .Ltmp232-.Ltmp231              #   Call between .Ltmp231 and .Ltmp232
	.uleb128 .Ltmp233-.Lfunc_begin0         #     jumps to .Ltmp233
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp232-.Lfunc_begin0         # >> Call Site 245 <<
	.uleb128 .Ltmp213-.Ltmp232              #   Call between .Ltmp232 and .Ltmp213
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp213-.Lfunc_begin0         # >> Call Site 246 <<
	.uleb128 .Ltmp214-.Ltmp213              #   Call between .Ltmp213 and .Ltmp214
	.uleb128 .Ltmp215-.Lfunc_begin0         #     jumps to .Ltmp215
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp216-.Lfunc_begin0         # >> Call Site 247 <<
	.uleb128 .Ltmp217-.Ltmp216              #   Call between .Ltmp216 and .Ltmp217
	.uleb128 .Ltmp218-.Lfunc_begin0         #     jumps to .Ltmp218
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp217-.Lfunc_begin0         # >> Call Site 248 <<
	.uleb128 .Ltmp198-.Ltmp217              #   Call between .Ltmp217 and .Ltmp198
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp198-.Lfunc_begin0         # >> Call Site 249 <<
	.uleb128 .Ltmp199-.Ltmp198              #   Call between .Ltmp198 and .Ltmp199
	.uleb128 .Ltmp200-.Lfunc_begin0         #     jumps to .Ltmp200
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp201-.Lfunc_begin0         # >> Call Site 250 <<
	.uleb128 .Ltmp202-.Ltmp201              #   Call between .Ltmp201 and .Ltmp202
	.uleb128 .Ltmp203-.Lfunc_begin0         #     jumps to .Ltmp203
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp202-.Lfunc_begin0         # >> Call Site 251 <<
	.uleb128 .Ltmp183-.Ltmp202              #   Call between .Ltmp202 and .Ltmp183
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp183-.Lfunc_begin0         # >> Call Site 252 <<
	.uleb128 .Ltmp184-.Ltmp183              #   Call between .Ltmp183 and .Ltmp184
	.uleb128 .Ltmp185-.Lfunc_begin0         #     jumps to .Ltmp185
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp186-.Lfunc_begin0         # >> Call Site 253 <<
	.uleb128 .Ltmp187-.Ltmp186              #   Call between .Ltmp186 and .Ltmp187
	.uleb128 .Ltmp188-.Lfunc_begin0         #     jumps to .Ltmp188
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp187-.Lfunc_begin0         # >> Call Site 254 <<
	.uleb128 .Ltmp168-.Ltmp187              #   Call between .Ltmp187 and .Ltmp168
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp168-.Lfunc_begin0         # >> Call Site 255 <<
	.uleb128 .Ltmp169-.Ltmp168              #   Call between .Ltmp168 and .Ltmp169
	.uleb128 .Ltmp170-.Lfunc_begin0         #     jumps to .Ltmp170
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp171-.Lfunc_begin0         # >> Call Site 256 <<
	.uleb128 .Ltmp172-.Ltmp171              #   Call between .Ltmp171 and .Ltmp172
	.uleb128 .Ltmp173-.Lfunc_begin0         #     jumps to .Ltmp173
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp172-.Lfunc_begin0         # >> Call Site 257 <<
	.uleb128 .Ltmp153-.Ltmp172              #   Call between .Ltmp172 and .Ltmp153
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp153-.Lfunc_begin0         # >> Call Site 258 <<
	.uleb128 .Ltmp154-.Ltmp153              #   Call between .Ltmp153 and .Ltmp154
	.uleb128 .Ltmp155-.Lfunc_begin0         #     jumps to .Ltmp155
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp156-.Lfunc_begin0         # >> Call Site 259 <<
	.uleb128 .Ltmp157-.Ltmp156              #   Call between .Ltmp156 and .Ltmp157
	.uleb128 .Ltmp158-.Lfunc_begin0         #     jumps to .Ltmp158
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp157-.Lfunc_begin0         # >> Call Site 260 <<
	.uleb128 .Ltmp138-.Ltmp157              #   Call between .Ltmp157 and .Ltmp138
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp138-.Lfunc_begin0         # >> Call Site 261 <<
	.uleb128 .Ltmp139-.Ltmp138              #   Call between .Ltmp138 and .Ltmp139
	.uleb128 .Ltmp140-.Lfunc_begin0         #     jumps to .Ltmp140
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp141-.Lfunc_begin0         # >> Call Site 262 <<
	.uleb128 .Ltmp142-.Ltmp141              #   Call between .Ltmp141 and .Ltmp142
	.uleb128 .Ltmp143-.Lfunc_begin0         #     jumps to .Ltmp143
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp142-.Lfunc_begin0         # >> Call Site 263 <<
	.uleb128 .Ltmp123-.Ltmp142              #   Call between .Ltmp142 and .Ltmp123
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp123-.Lfunc_begin0         # >> Call Site 264 <<
	.uleb128 .Ltmp124-.Ltmp123              #   Call between .Ltmp123 and .Ltmp124
	.uleb128 .Ltmp125-.Lfunc_begin0         #     jumps to .Ltmp125
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp126-.Lfunc_begin0         # >> Call Site 265 <<
	.uleb128 .Ltmp127-.Ltmp126              #   Call between .Ltmp126 and .Ltmp127
	.uleb128 .Ltmp128-.Lfunc_begin0         #     jumps to .Ltmp128
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp127-.Lfunc_begin0         # >> Call Site 266 <<
	.uleb128 .Ltmp108-.Ltmp127              #   Call between .Ltmp127 and .Ltmp108
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp108-.Lfunc_begin0         # >> Call Site 267 <<
	.uleb128 .Ltmp109-.Ltmp108              #   Call between .Ltmp108 and .Ltmp109
	.uleb128 .Ltmp110-.Lfunc_begin0         #     jumps to .Ltmp110
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp111-.Lfunc_begin0         # >> Call Site 268 <<
	.uleb128 .Ltmp112-.Ltmp111              #   Call between .Ltmp111 and .Ltmp112
	.uleb128 .Ltmp113-.Lfunc_begin0         #     jumps to .Ltmp113
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp112-.Lfunc_begin0         # >> Call Site 269 <<
	.uleb128 .Ltmp93-.Ltmp112               #   Call between .Ltmp112 and .Ltmp93
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp93-.Lfunc_begin0          # >> Call Site 270 <<
	.uleb128 .Ltmp94-.Ltmp93                #   Call between .Ltmp93 and .Ltmp94
	.uleb128 .Ltmp95-.Lfunc_begin0          #     jumps to .Ltmp95
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp96-.Lfunc_begin0          # >> Call Site 271 <<
	.uleb128 .Ltmp97-.Ltmp96                #   Call between .Ltmp96 and .Ltmp97
	.uleb128 .Ltmp98-.Lfunc_begin0          #     jumps to .Ltmp98
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp97-.Lfunc_begin0          # >> Call Site 272 <<
	.uleb128 .Ltmp78-.Ltmp97                #   Call between .Ltmp97 and .Ltmp78
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp78-.Lfunc_begin0          # >> Call Site 273 <<
	.uleb128 .Ltmp79-.Ltmp78                #   Call between .Ltmp78 and .Ltmp79
	.uleb128 .Ltmp80-.Lfunc_begin0          #     jumps to .Ltmp80
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp81-.Lfunc_begin0          # >> Call Site 274 <<
	.uleb128 .Ltmp82-.Ltmp81                #   Call between .Ltmp81 and .Ltmp82
	.uleb128 .Ltmp83-.Lfunc_begin0          #     jumps to .Ltmp83
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp82-.Lfunc_begin0          # >> Call Site 275 <<
	.uleb128 .Ltmp63-.Ltmp82                #   Call between .Ltmp82 and .Ltmp63
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp63-.Lfunc_begin0          # >> Call Site 276 <<
	.uleb128 .Ltmp64-.Ltmp63                #   Call between .Ltmp63 and .Ltmp64
	.uleb128 .Ltmp65-.Lfunc_begin0          #     jumps to .Ltmp65
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp66-.Lfunc_begin0          # >> Call Site 277 <<
	.uleb128 .Ltmp67-.Ltmp66                #   Call between .Ltmp66 and .Ltmp67
	.uleb128 .Ltmp68-.Lfunc_begin0          #     jumps to .Ltmp68
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp67-.Lfunc_begin0          # >> Call Site 278 <<
	.uleb128 .Ltmp48-.Ltmp67                #   Call between .Ltmp67 and .Ltmp48
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp48-.Lfunc_begin0          # >> Call Site 279 <<
	.uleb128 .Ltmp49-.Ltmp48                #   Call between .Ltmp48 and .Ltmp49
	.uleb128 .Ltmp50-.Lfunc_begin0          #     jumps to .Ltmp50
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp51-.Lfunc_begin0          # >> Call Site 280 <<
	.uleb128 .Ltmp52-.Ltmp51                #   Call between .Ltmp51 and .Ltmp52
	.uleb128 .Ltmp53-.Lfunc_begin0          #     jumps to .Ltmp53
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp52-.Lfunc_begin0          # >> Call Site 281 <<
	.uleb128 .Ltmp33-.Ltmp52                #   Call between .Ltmp52 and .Ltmp33
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp33-.Lfunc_begin0          # >> Call Site 282 <<
	.uleb128 .Ltmp34-.Ltmp33                #   Call between .Ltmp33 and .Ltmp34
	.uleb128 .Ltmp35-.Lfunc_begin0          #     jumps to .Ltmp35
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp36-.Lfunc_begin0          # >> Call Site 283 <<
	.uleb128 .Ltmp37-.Ltmp36                #   Call between .Ltmp36 and .Ltmp37
	.uleb128 .Ltmp38-.Lfunc_begin0          #     jumps to .Ltmp38
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp37-.Lfunc_begin0          # >> Call Site 284 <<
	.uleb128 .Ltmp18-.Ltmp37                #   Call between .Ltmp37 and .Ltmp18
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp18-.Lfunc_begin0          # >> Call Site 285 <<
	.uleb128 .Ltmp19-.Ltmp18                #   Call between .Ltmp18 and .Ltmp19
	.uleb128 .Ltmp20-.Lfunc_begin0          #     jumps to .Ltmp20
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp21-.Lfunc_begin0          # >> Call Site 286 <<
	.uleb128 .Ltmp22-.Ltmp21                #   Call between .Ltmp21 and .Ltmp22
	.uleb128 .Ltmp23-.Lfunc_begin0          #     jumps to .Ltmp23
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp22-.Lfunc_begin0          # >> Call Site 287 <<
	.uleb128 .Ltmp3-.Ltmp22                 #   Call between .Ltmp22 and .Ltmp3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp3-.Lfunc_begin0           # >> Call Site 288 <<
	.uleb128 .Ltmp4-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp4
	.uleb128 .Ltmp5-.Lfunc_begin0           #     jumps to .Ltmp5
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp6-.Lfunc_begin0           # >> Call Site 289 <<
	.uleb128 .Ltmp7-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp7
	.uleb128 .Ltmp8-.Lfunc_begin0           #     jumps to .Ltmp8
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp7-.Lfunc_begin0           # >> Call Site 290 <<
	.uleb128 .Lfunc_end0-.Ltmp7             #   Call between .Ltmp7 and .Lfunc_end0
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
	.text
	.p2align	5                               # -- Begin function _ZL37checkOverlappingMemoryOneRuntimeCheckIhEvSt8functionIFvPT_S2_jEES4_PKc
	.type	_ZL37checkOverlappingMemoryOneRuntimeCheckIhEvSt8functionIFvPT_S2_jEES4_PKc,@function
_ZL37checkOverlappingMemoryOneRuntimeCheckIhEvSt8functionIFvPT_S2_jEES4_PKc: # @_ZL37checkOverlappingMemoryOneRuntimeCheckIhEvSt8functionIFvPT_S2_jEES4_PKc
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception1
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
	move	$fp, $a2
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	move	$s2, $a0
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$s0, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a0, %pc_hi20(.L.str.48)
	addi.d	$a1, $a0, %pc_lo12(.L.str.48)
	ori	$a2, $zero, 9
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB1_2
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
	b	.LBB1_3
.LBB1_2:
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.w	$a1, $a0, 32
	ori	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate)
	jirl	$ra, $ra, 0
.LBB1_3:                                # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a1, %pc_hi20(.L.str.49)
	addi.d	$a1, $a1, %pc_lo12(.L.str.49)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 100
	st.w	$a0, $sp, 32
	ori	$a0, $zero, 800
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$fp, $a0
.Ltmp720:                               # EH_LABEL
	ori	$a0, $zero, 800
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp721:                               # EH_LABEL
# %bb.4:
.Ltmp723:                               # EH_LABEL
	move	$s0, $a0
	ori	$a0, $zero, 800
	ori	$s6, $zero, 800
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp724:                               # EH_LABEL
# %bb.5:                                # %.preheader
	move	$s3, $a0
	addi.d	$s7, $s0, 400
	addi.d	$s8, $a0, 400
	addi.w	$s4, $zero, -100
	lu12i.w	$a0, 15
	ori	$a0, $a0, 3840
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(_ZL3rng)
	addi.d	$s5, $a0, %pc_lo12(_ZL3rng)
	.p2align	4, , 16
.LBB1_6:                                # %.lr.ph.preheader.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_7 Depth 2
	move	$s1, $zero
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	st.h	$a0, $sp, 48
	.p2align	4, , 16
.LBB1_7:                                # %.lr.ph.i.i
                                        #   Parent Loop BB1_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Ltmp726:                               # EH_LABEL
	addi.d	$a0, $sp, 48
	addi.d	$a2, $sp, 48
	move	$a1, $s5
	pcaddu18i	$ra, %call36(_ZNSt24uniform_int_distributionIhEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEhRT_RKNS0_10param_typeE)
	jirl	$ra, $ra, 0
.Ltmp727:                               # EH_LABEL
# %bb.8:                                # %.noexc
                                        #   in Loop: Header=BB1_7 Depth=2
	stx.b	$a0, $fp, $s1
	addi.d	$s1, $s1, 1
	bne	$s1, $s6, .LBB1_7
# %bb.9:                                # %.lr.ph.i
                                        #   in Loop: Header=BB1_6 Depth=1
	ori	$a2, $zero, 800
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 800
	move	$a0, $s3
	move	$a1, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 32
	ld.d	$a1, $s2, 16
	add.d	$a2, $s7, $s4
	st.d	$a2, $sp, 48
	st.d	$s7, $sp, 40
	st.w	$a0, $sp, 36
	beqz	$a1, .LBB1_15
# %bb.10:                               # %_ZNKSt8functionIFvPhS0_jEEclES0_S0_j.exit.i
                                        #   in Loop: Header=BB1_6 Depth=1
	ld.d	$a4, $s2, 24
.Ltmp729:                               # EH_LABEL
	addi.d	$a1, $sp, 48
	addi.d	$a2, $sp, 40
	addi.d	$a3, $sp, 36
	move	$a0, $s2
	jirl	$ra, $a4, 0
.Ltmp730:                               # EH_LABEL
# %bb.11:                               # %.noexc18
                                        #   in Loop: Header=BB1_6 Depth=1
	st.d	$s8, $sp, 48
	add.d	$a0, $s8, $s4
	st.d	$a0, $sp, 40
.Ltmp731:                               # EH_LABEL
	addi.d	$a1, $sp, 40
	addi.d	$a2, $sp, 48
	addi.d	$a3, $sp, 32
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZL18callThroughOptnoneIRSt8functionIFvPhS1_jEEJS1_RS1_RjEEvOT_DpOT0_)
	jirl	$ra, $ra, 0
.Ltmp732:                               # EH_LABEL
# %bb.12:                               # %_ZSt5equalIPhS0_EbT_S1_T0_.exit.i.i
                                        #   in Loop: Header=BB1_6 Depth=1
	ori	$a2, $zero, 800
	move	$a0, $s0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_17
# %bb.13:                               #   in Loop: Header=BB1_6 Depth=1
	addi.d	$s4, $s4, 1
	ori	$a0, $zero, 101
	bne	$s4, $a0, .LBB1_6
# %bb.14:                               # %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit16
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
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
.LBB1_15:
.Ltmp740:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp741:                               # EH_LABEL
# %bb.16:                               # %.noexc17
.LBB1_17:
.Ltmp734:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.50)
	addi.d	$a1, $a1, %pc_lo12(.L.str.50)
	ori	$a2, $zero, 23
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp735:                               # EH_LABEL
# %bb.18:                               # %.noexc20
.Ltmp736:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp737:                               # EH_LABEL
# %bb.19:                               # %.noexc21
.Ltmp738:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.49)
	addi.d	$a1, $a1, %pc_lo12(.L.str.49)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp739:                               # EH_LABEL
# %bb.20:                               # %.noexc22
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB1_21:
.Ltmp725:                               # EH_LABEL
	move	$s1, $a0
	b	.LBB1_27
.LBB1_22:
.Ltmp722:                               # EH_LABEL
	move	$s1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB1_23:                               # %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit25.loopexit.split-lp.loopexit.split-lp
.Ltmp742:                               # EH_LABEL
	b	.LBB1_26
.LBB1_24:                               # %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit25.loopexit.split-lp.loopexit
.Ltmp733:                               # EH_LABEL
	b	.LBB1_26
.LBB1_25:                               # %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit25.loopexit
.Ltmp728:                               # EH_LABEL
.LBB1_26:                               # %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit25
	move	$s1, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB1_27:                               # %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit28
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	_ZL37checkOverlappingMemoryOneRuntimeCheckIhEvSt8functionIFvPT_S2_jEES4_PKc, .Lfunc_end1-_ZL37checkOverlappingMemoryOneRuntimeCheckIhEvSt8functionIFvPT_S2_jEES4_PKc
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table1:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Lfunc_begin1-.Lfunc_begin1    # >> Call Site 1 <<
	.uleb128 .Ltmp720-.Lfunc_begin1         #   Call between .Lfunc_begin1 and .Ltmp720
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp720-.Lfunc_begin1         # >> Call Site 2 <<
	.uleb128 .Ltmp721-.Ltmp720              #   Call between .Ltmp720 and .Ltmp721
	.uleb128 .Ltmp722-.Lfunc_begin1         #     jumps to .Ltmp722
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp723-.Lfunc_begin1         # >> Call Site 3 <<
	.uleb128 .Ltmp724-.Ltmp723              #   Call between .Ltmp723 and .Ltmp724
	.uleb128 .Ltmp725-.Lfunc_begin1         #     jumps to .Ltmp725
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp726-.Lfunc_begin1         # >> Call Site 4 <<
	.uleb128 .Ltmp727-.Ltmp726              #   Call between .Ltmp726 and .Ltmp727
	.uleb128 .Ltmp728-.Lfunc_begin1         #     jumps to .Ltmp728
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp727-.Lfunc_begin1         # >> Call Site 5 <<
	.uleb128 .Ltmp729-.Ltmp727              #   Call between .Ltmp727 and .Ltmp729
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp729-.Lfunc_begin1         # >> Call Site 6 <<
	.uleb128 .Ltmp732-.Ltmp729              #   Call between .Ltmp729 and .Ltmp732
	.uleb128 .Ltmp733-.Lfunc_begin1         #     jumps to .Ltmp733
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp732-.Lfunc_begin1         # >> Call Site 7 <<
	.uleb128 .Ltmp740-.Ltmp732              #   Call between .Ltmp732 and .Ltmp740
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp740-.Lfunc_begin1         # >> Call Site 8 <<
	.uleb128 .Ltmp739-.Ltmp740              #   Call between .Ltmp740 and .Ltmp739
	.uleb128 .Ltmp742-.Lfunc_begin1         #     jumps to .Ltmp742
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp739-.Lfunc_begin1         # >> Call Site 9 <<
	.uleb128 .Lfunc_end1-.Ltmp739           #   Call between .Ltmp739 and .Lfunc_end1
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZL37checkOverlappingMemoryOneRuntimeCheckIjEvSt8functionIFvPT_S2_jEES4_PKc
	.type	_ZL37checkOverlappingMemoryOneRuntimeCheckIjEvSt8functionIFvPT_S2_jEES4_PKc,@function
_ZL37checkOverlappingMemoryOneRuntimeCheckIjEvSt8functionIFvPT_S2_jEES4_PKc: # @_ZL37checkOverlappingMemoryOneRuntimeCheckIjEvSt8functionIFvPT_S2_jEES4_PKc
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception2
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
	move	$fp, $a2
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	move	$s2, $a0
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$s0, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a0, %pc_hi20(.L.str.48)
	addi.d	$a1, $a0, %pc_lo12(.L.str.48)
	ori	$a2, $zero, 9
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB2_2
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
	b	.LBB2_3
.LBB2_2:
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.w	$a1, $a0, 32
	ori	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate)
	jirl	$ra, $ra, 0
.LBB2_3:                                # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a1, %pc_hi20(.L.str.49)
	addi.d	$a1, $a1, %pc_lo12(.L.str.49)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 100
	st.w	$a0, $sp, 32
	ori	$a0, $zero, 3200
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$fp, $a0
.Ltmp743:                               # EH_LABEL
	ori	$a0, $zero, 3200
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp744:                               # EH_LABEL
# %bb.4:
.Ltmp746:                               # EH_LABEL
	move	$s0, $a0
	ori	$a0, $zero, 3200
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp747:                               # EH_LABEL
# %bb.5:                                # %.preheader
	move	$s3, $a0
	addi.d	$s6, $s0, 1600
	addi.d	$s7, $a0, 1600
	addi.w	$s4, $zero, -100
	ori	$s8, $zero, 0
	lu32i.d	$s8, -1
	lu12i.w	$a0, -1
	ori	$a0, $a0, 896
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(_ZL3rng)
	addi.d	$s5, $a0, %pc_lo12(_ZL3rng)
	.p2align	4, , 16
.LBB2_6:                                # %.lr.ph.preheader.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_7 Depth 2
	st.d	$s8, $sp, 48
	ld.d	$s1, $sp, 24                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_7:                                # %.lr.ph.i.i
                                        #   Parent Loop BB2_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Ltmp749:                               # EH_LABEL
	addi.d	$a0, $sp, 48
	addi.d	$a2, $sp, 48
	move	$a1, $s5
	pcaddu18i	$ra, %call36(_ZNSt24uniform_int_distributionIjEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEjRT_RKNS0_10param_typeE)
	jirl	$ra, $ra, 0
.Ltmp750:                               # EH_LABEL
# %bb.8:                                # %.noexc
                                        #   in Loop: Header=BB2_7 Depth=2
	add.d	$a1, $fp, $s1
	addi.d	$s1, $s1, 4
	stptr.w	$a0, $a1, 3200
	bnez	$s1, .LBB2_7
# %bb.9:                                # %.lr.ph.i
                                        #   in Loop: Header=BB2_6 Depth=1
	ori	$a2, $zero, 3200
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 3200
	move	$a0, $s3
	move	$a1, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 32
	ld.d	$a1, $s2, 16
	alsl.d	$a2, $s4, $s6, 2
	st.d	$a2, $sp, 48
	st.d	$s6, $sp, 40
	st.w	$a0, $sp, 36
	beqz	$a1, .LBB2_15
# %bb.10:                               # %_ZNKSt8functionIFvPjS0_jEEclES0_S0_j.exit.i
                                        #   in Loop: Header=BB2_6 Depth=1
	ld.d	$a4, $s2, 24
.Ltmp752:                               # EH_LABEL
	addi.d	$a1, $sp, 48
	addi.d	$a2, $sp, 40
	addi.d	$a3, $sp, 36
	move	$a0, $s2
	jirl	$ra, $a4, 0
.Ltmp753:                               # EH_LABEL
# %bb.11:                               # %.noexc19
                                        #   in Loop: Header=BB2_6 Depth=1
	st.d	$s7, $sp, 48
	alsl.d	$a0, $s4, $s7, 2
	st.d	$a0, $sp, 40
.Ltmp754:                               # EH_LABEL
	addi.d	$a1, $sp, 40
	addi.d	$a2, $sp, 48
	addi.d	$a3, $sp, 32
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZL18callThroughOptnoneIRSt8functionIFvPjS1_jEEJS1_RS1_RjEEvOT_DpOT0_)
	jirl	$ra, $ra, 0
.Ltmp755:                               # EH_LABEL
# %bb.12:                               # %_ZSt5equalIPjS0_EbT_S1_T0_.exit.i.i
                                        #   in Loop: Header=BB2_6 Depth=1
	ori	$a2, $zero, 3200
	move	$a0, $s0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB2_17
# %bb.13:                               #   in Loop: Header=BB2_6 Depth=1
	addi.d	$s4, $s4, 1
	ori	$a0, $zero, 101
	bne	$s4, $a0, .LBB2_6
# %bb.14:                               # %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit16
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
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
.LBB2_15:
.Ltmp763:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp764:                               # EH_LABEL
# %bb.16:                               # %.noexc18
.LBB2_17:
.Ltmp757:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.50)
	addi.d	$a1, $a1, %pc_lo12(.L.str.50)
	ori	$a2, $zero, 23
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp758:                               # EH_LABEL
# %bb.18:                               # %.noexc21
.Ltmp759:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp760:                               # EH_LABEL
# %bb.19:                               # %.noexc22
.Ltmp761:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.49)
	addi.d	$a1, $a1, %pc_lo12(.L.str.49)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp762:                               # EH_LABEL
# %bb.20:                               # %.noexc23
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB2_21:
.Ltmp748:                               # EH_LABEL
	move	$s1, $a0
	b	.LBB2_27
.LBB2_22:
.Ltmp745:                               # EH_LABEL
	move	$s1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB2_23:                               # %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit26.loopexit.split-lp.loopexit.split-lp
.Ltmp765:                               # EH_LABEL
	b	.LBB2_26
.LBB2_24:                               # %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit26.loopexit.split-lp.loopexit
.Ltmp756:                               # EH_LABEL
	b	.LBB2_26
.LBB2_25:                               # %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit26.loopexit
.Ltmp751:                               # EH_LABEL
.LBB2_26:                               # %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit26
	move	$s1, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB2_27:                               # %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit29
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	_ZL37checkOverlappingMemoryOneRuntimeCheckIjEvSt8functionIFvPT_S2_jEES4_PKc, .Lfunc_end2-_ZL37checkOverlappingMemoryOneRuntimeCheckIjEvSt8functionIFvPT_S2_jEES4_PKc
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table2:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Lfunc_begin2-.Lfunc_begin2    # >> Call Site 1 <<
	.uleb128 .Ltmp743-.Lfunc_begin2         #   Call between .Lfunc_begin2 and .Ltmp743
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp743-.Lfunc_begin2         # >> Call Site 2 <<
	.uleb128 .Ltmp744-.Ltmp743              #   Call between .Ltmp743 and .Ltmp744
	.uleb128 .Ltmp745-.Lfunc_begin2         #     jumps to .Ltmp745
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp746-.Lfunc_begin2         # >> Call Site 3 <<
	.uleb128 .Ltmp747-.Ltmp746              #   Call between .Ltmp746 and .Ltmp747
	.uleb128 .Ltmp748-.Lfunc_begin2         #     jumps to .Ltmp748
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp749-.Lfunc_begin2         # >> Call Site 4 <<
	.uleb128 .Ltmp750-.Ltmp749              #   Call between .Ltmp749 and .Ltmp750
	.uleb128 .Ltmp751-.Lfunc_begin2         #     jumps to .Ltmp751
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp750-.Lfunc_begin2         # >> Call Site 5 <<
	.uleb128 .Ltmp752-.Ltmp750              #   Call between .Ltmp750 and .Ltmp752
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp752-.Lfunc_begin2         # >> Call Site 6 <<
	.uleb128 .Ltmp755-.Ltmp752              #   Call between .Ltmp752 and .Ltmp755
	.uleb128 .Ltmp756-.Lfunc_begin2         #     jumps to .Ltmp756
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp755-.Lfunc_begin2         # >> Call Site 7 <<
	.uleb128 .Ltmp763-.Ltmp755              #   Call between .Ltmp755 and .Ltmp763
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp763-.Lfunc_begin2         # >> Call Site 8 <<
	.uleb128 .Ltmp762-.Ltmp763              #   Call between .Ltmp763 and .Ltmp762
	.uleb128 .Ltmp765-.Lfunc_begin2         #     jumps to .Ltmp765
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp762-.Lfunc_begin2         # >> Call Site 9 <<
	.uleb128 .Lfunc_end2-.Ltmp762           #   Call between .Ltmp762 and .Lfunc_end2
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZL37checkOverlappingMemoryOneRuntimeCheckImEvSt8functionIFvPT_S2_jEES4_PKc
.LCPI3_0:
	.dword	0                               # 0x0
	.dword	-1                              # 0xffffffffffffffff
	.text
	.p2align	5
	.type	_ZL37checkOverlappingMemoryOneRuntimeCheckImEvSt8functionIFvPT_S2_jEES4_PKc,@function
_ZL37checkOverlappingMemoryOneRuntimeCheckImEvSt8functionIFvPT_S2_jEES4_PKc: # @_ZL37checkOverlappingMemoryOneRuntimeCheckImEvSt8functionIFvPT_S2_jEES4_PKc
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception3
# %bb.0:
	addi.d	$sp, $sp, -192
	.cfi_def_cfa_offset 192
	st.d	$ra, $sp, 184                   # 8-byte Folded Spill
	st.d	$fp, $sp, 176                   # 8-byte Folded Spill
	st.d	$s0, $sp, 168                   # 8-byte Folded Spill
	st.d	$s1, $sp, 160                   # 8-byte Folded Spill
	st.d	$s2, $sp, 152                   # 8-byte Folded Spill
	st.d	$s3, $sp, 144                   # 8-byte Folded Spill
	st.d	$s4, $sp, 136                   # 8-byte Folded Spill
	st.d	$s5, $sp, 128                   # 8-byte Folded Spill
	st.d	$s6, $sp, 120                   # 8-byte Folded Spill
	st.d	$s7, $sp, 112                   # 8-byte Folded Spill
	st.d	$s8, $sp, 104                   # 8-byte Folded Spill
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
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	move	$s2, $a0
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$s0, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a0, %pc_hi20(.L.str.48)
	addi.d	$a1, $a0, %pc_lo12(.L.str.48)
	ori	$a2, $zero, 9
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB3_2
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
	b	.LBB3_3
.LBB3_2:
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.w	$a1, $a0, 32
	ori	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate)
	jirl	$ra, $ra, 0
.LBB3_3:                                # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a1, %pc_hi20(.L.str.49)
	addi.d	$a1, $a1, %pc_lo12(.L.str.49)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 100
	st.w	$a0, $sp, 60
	lu12i.w	$a0, 1
	ori	$s4, $a0, 2304
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$fp, $a0
.Ltmp766:                               # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp767:                               # EH_LABEL
# %bb.4:
.Ltmp769:                               # EH_LABEL
	move	$s0, $a0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp770:                               # EH_LABEL
# %bb.5:                                # %.preheader
	move	$s3, $a0
	ori	$a0, $zero, 3200
	add.d	$s7, $s0, $a0
	add.d	$s8, $s3, $a0
	pcalau12i	$a0, %pc_hi20(.LCPI3_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI3_0)
	vst	$vr0, $sp, 32                   # 16-byte Folded Spill
	addi.w	$s5, $zero, -100
	lu12i.w	$a0, -2
	ori	$a0, $a0, 1792
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(_ZL3rng)
	addi.d	$s6, $a0, %pc_lo12(_ZL3rng)
	.p2align	4, , 16
.LBB3_6:                                # %.lr.ph.preheader.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_7 Depth 2
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vst	$vr0, $sp, 64
	ld.d	$s1, $sp, 24                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB3_7:                                # %.lr.ph.i.i
                                        #   Parent Loop BB3_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Ltmp772:                               # EH_LABEL
	addi.d	$a0, $sp, 64
	addi.d	$a2, $sp, 64
	move	$a1, $s6
	pcaddu18i	$ra, %call36(_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE)
	jirl	$ra, $ra, 0
.Ltmp773:                               # EH_LABEL
# %bb.8:                                # %.noexc
                                        #   in Loop: Header=BB3_7 Depth=2
	add.d	$a1, $fp, $s1
	addi.d	$s1, $s1, 8
	stptr.d	$a0, $a1, 6400
	bnez	$s1, .LBB3_7
# %bb.9:                                # %.lr.ph.i
                                        #   in Loop: Header=BB3_6 Depth=1
	move	$a0, $s0
	move	$a1, $fp
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	move	$a1, $fp
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 60
	ld.d	$a1, $s2, 16
	alsl.d	$a2, $s5, $s7, 3
	st.d	$a2, $sp, 64
	st.d	$s7, $sp, 96
	st.w	$a0, $sp, 92
	beqz	$a1, .LBB3_15
# %bb.10:                               # %_ZNKSt8functionIFvPmS0_jEEclES0_S0_j.exit.i
                                        #   in Loop: Header=BB3_6 Depth=1
	ld.d	$a4, $s2, 24
.Ltmp775:                               # EH_LABEL
	addi.d	$a1, $sp, 64
	addi.d	$a2, $sp, 96
	addi.d	$a3, $sp, 92
	move	$a0, $s2
	jirl	$ra, $a4, 0
.Ltmp776:                               # EH_LABEL
# %bb.11:                               # %.noexc19
                                        #   in Loop: Header=BB3_6 Depth=1
	st.d	$s8, $sp, 64
	alsl.d	$a0, $s5, $s8, 3
	st.d	$a0, $sp, 96
.Ltmp777:                               # EH_LABEL
	addi.d	$a1, $sp, 96
	addi.d	$a2, $sp, 64
	addi.d	$a3, $sp, 60
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZL18callThroughOptnoneIRSt8functionIFvPmS1_jEEJS1_RS1_RjEEvOT_DpOT0_)
	jirl	$ra, $ra, 0
.Ltmp778:                               # EH_LABEL
# %bb.12:                               # %_ZSt5equalIPmS0_EbT_S1_T0_.exit.i.i
                                        #   in Loop: Header=BB3_6 Depth=1
	move	$a0, $s0
	move	$a1, $s3
	move	$a2, $s4
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB3_17
# %bb.13:                               #   in Loop: Header=BB3_6 Depth=1
	addi.d	$s5, $s5, 1
	ori	$a0, $zero, 101
	bne	$s5, $a0, .LBB3_6
# %bb.14:                               # %_ZNSt10unique_ptrIA_mSt14default_deleteIS0_EED2Ev.exit16
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$s8, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 184                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 192
	ret
.LBB3_15:
.Ltmp786:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp787:                               # EH_LABEL
# %bb.16:                               # %.noexc18
.LBB3_17:
.Ltmp780:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.50)
	addi.d	$a1, $a1, %pc_lo12(.L.str.50)
	ori	$a2, $zero, 23
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp781:                               # EH_LABEL
# %bb.18:                               # %.noexc21
.Ltmp782:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	move	$a1, $s5
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp783:                               # EH_LABEL
# %bb.19:                               # %.noexc22
.Ltmp784:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.49)
	addi.d	$a1, $a1, %pc_lo12(.L.str.49)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp785:                               # EH_LABEL
# %bb.20:                               # %.noexc23
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB3_21:
.Ltmp771:                               # EH_LABEL
	move	$s1, $a0
	b	.LBB3_27
.LBB3_22:
.Ltmp768:                               # EH_LABEL
	move	$s1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB3_23:                               # %_ZNSt10unique_ptrIA_mSt14default_deleteIS0_EED2Ev.exit26.loopexit.split-lp.loopexit.split-lp
.Ltmp788:                               # EH_LABEL
	b	.LBB3_26
.LBB3_24:                               # %_ZNSt10unique_ptrIA_mSt14default_deleteIS0_EED2Ev.exit26.loopexit.split-lp.loopexit
.Ltmp779:                               # EH_LABEL
	b	.LBB3_26
.LBB3_25:                               # %_ZNSt10unique_ptrIA_mSt14default_deleteIS0_EED2Ev.exit26.loopexit
.Ltmp774:                               # EH_LABEL
.LBB3_26:                               # %_ZNSt10unique_ptrIA_mSt14default_deleteIS0_EED2Ev.exit26
	move	$s1, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB3_27:                               # %_ZNSt10unique_ptrIA_mSt14default_deleteIS0_EED2Ev.exit29
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end3:
	.size	_ZL37checkOverlappingMemoryOneRuntimeCheckImEvSt8functionIFvPT_S2_jEES4_PKc, .Lfunc_end3-_ZL37checkOverlappingMemoryOneRuntimeCheckImEvSt8functionIFvPT_S2_jEES4_PKc
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table3:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Lfunc_begin3-.Lfunc_begin3    # >> Call Site 1 <<
	.uleb128 .Ltmp766-.Lfunc_begin3         #   Call between .Lfunc_begin3 and .Ltmp766
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp766-.Lfunc_begin3         # >> Call Site 2 <<
	.uleb128 .Ltmp767-.Ltmp766              #   Call between .Ltmp766 and .Ltmp767
	.uleb128 .Ltmp768-.Lfunc_begin3         #     jumps to .Ltmp768
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp769-.Lfunc_begin3         # >> Call Site 3 <<
	.uleb128 .Ltmp770-.Ltmp769              #   Call between .Ltmp769 and .Ltmp770
	.uleb128 .Ltmp771-.Lfunc_begin3         #     jumps to .Ltmp771
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp772-.Lfunc_begin3         # >> Call Site 4 <<
	.uleb128 .Ltmp773-.Ltmp772              #   Call between .Ltmp772 and .Ltmp773
	.uleb128 .Ltmp774-.Lfunc_begin3         #     jumps to .Ltmp774
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp773-.Lfunc_begin3         # >> Call Site 5 <<
	.uleb128 .Ltmp775-.Ltmp773              #   Call between .Ltmp773 and .Ltmp775
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp775-.Lfunc_begin3         # >> Call Site 6 <<
	.uleb128 .Ltmp778-.Ltmp775              #   Call between .Ltmp775 and .Ltmp778
	.uleb128 .Ltmp779-.Lfunc_begin3         #     jumps to .Ltmp779
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp778-.Lfunc_begin3         # >> Call Site 7 <<
	.uleb128 .Ltmp786-.Ltmp778              #   Call between .Ltmp778 and .Ltmp786
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp786-.Lfunc_begin3         # >> Call Site 8 <<
	.uleb128 .Ltmp785-.Ltmp786              #   Call between .Ltmp786 and .Ltmp785
	.uleb128 .Ltmp788-.Lfunc_begin3         #     jumps to .Ltmp788
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp785-.Lfunc_begin3         # >> Call Site 9 <<
	.uleb128 .Lfunc_end3-.Ltmp785           #   Call between .Ltmp785 and .Lfunc_end3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZL38checkOverlappingMemoryTwoRuntimeChecksIjEvSt8functionIFvPT_S2_S2_jEES4_PKc
	.type	_ZL38checkOverlappingMemoryTwoRuntimeChecksIjEvSt8functionIFvPT_S2_S2_jEES4_PKc,@function
_ZL38checkOverlappingMemoryTwoRuntimeChecksIjEvSt8functionIFvPT_S2_S2_jEES4_PKc: # @_ZL38checkOverlappingMemoryTwoRuntimeChecksIjEvSt8functionIFvPT_S2_S2_jEES4_PKc
.Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception4
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
	move	$fp, $a2
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	move	$s3, $a0
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$s0, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a0, %pc_hi20(.L.str.48)
	addi.d	$a1, $a0, %pc_lo12(.L.str.48)
	ori	$a2, $zero, 9
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB4_2
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
	b	.LBB4_3
.LBB4_2:
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.w	$a1, $a0, 32
	ori	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate)
	jirl	$ra, $ra, 0
.LBB4_3:                                # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a1, %pc_hi20(.L.str.49)
	addi.d	$a1, $a1, %pc_lo12(.L.str.49)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 100
	st.w	$a0, $sp, 40
	ori	$a0, $zero, 3200
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$fp, $a0
.Ltmp789:                               # EH_LABEL
	ori	$a0, $zero, 3200
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp790:                               # EH_LABEL
# %bb.4:
.Ltmp792:                               # EH_LABEL
	move	$s0, $a0
	ori	$a0, $zero, 3200
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
.Ltmp793:                               # EH_LABEL
# %bb.5:
.Ltmp795:                               # EH_LABEL
	ori	$a0, $zero, 3200
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$a1, $a0
.Ltmp796:                               # EH_LABEL
# %bb.6:                                # %.preheader
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	addi.d	$s7, $a0, 1600
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	addi.d	$s8, $a1, 1600
	addi.w	$s5, $zero, -100
	ori	$s2, $zero, 0
	lu32i.d	$s2, -1
	lu12i.w	$a0, -1
	ori	$s4, $a0, 896
	pcalau12i	$a0, %pc_hi20(_ZL3rng)
	addi.d	$s6, $a0, %pc_lo12(_ZL3rng)
	.p2align	4, , 16
.LBB4_7:                                # %.lr.ph.preheader.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_8 Depth 2
                                        #     Child Loop BB4_11 Depth 2
	st.d	$s2, $sp, 64
	move	$s1, $s4
	.p2align	4, , 16
.LBB4_8:                                # %.lr.ph.i.i
                                        #   Parent Loop BB4_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Ltmp798:                               # EH_LABEL
	addi.d	$a0, $sp, 64
	addi.d	$a2, $sp, 64
	move	$a1, $s6
	pcaddu18i	$ra, %call36(_ZNSt24uniform_int_distributionIjEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEjRT_RKNS0_10param_typeE)
	jirl	$ra, $ra, 0
.Ltmp799:                               # EH_LABEL
# %bb.9:                                # %.noexc
                                        #   in Loop: Header=BB4_8 Depth=2
	add.d	$a1, $fp, $s1
	addi.d	$s1, $s1, 4
	stptr.w	$a0, $a1, 3200
	bnez	$s1, .LBB4_8
# %bb.10:                               # %.lr.ph.preheader.i14.i
                                        #   in Loop: Header=BB4_7 Depth=1
	st.d	$s2, $sp, 64
	move	$s1, $s4
	.p2align	4, , 16
.LBB4_11:                               # %.lr.ph.i16.i
                                        #   Parent Loop BB4_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Ltmp801:                               # EH_LABEL
	addi.d	$a0, $sp, 64
	addi.d	$a2, $sp, 64
	move	$a1, $s6
	pcaddu18i	$ra, %call36(_ZNSt24uniform_int_distributionIjEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEjRT_RKNS0_10param_typeE)
	jirl	$ra, $ra, 0
.Ltmp802:                               # EH_LABEL
# %bb.12:                               # %.noexc23
                                        #   in Loop: Header=BB4_11 Depth=2
	add.d	$a1, $s0, $s1
	addi.d	$s1, $s1, 4
	stptr.w	$a0, $a1, 3200
	bnez	$s1, .LBB4_11
# %bb.13:                               # %.lr.ph.i
                                        #   in Loop: Header=BB4_7 Depth=1
	ori	$a2, $zero, 3200
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	move	$a1, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 3200
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	move	$a1, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	alsl.d	$a0, $s5, $s7, 2
	ld.w	$a1, $sp, 40
	ld.d	$a2, $s3, 16
	st.d	$a0, $sp, 64
	st.d	$s0, $sp, 56
	st.d	$s7, $sp, 48
	st.w	$a1, $sp, 44
	beqz	$a2, .LBB4_19
# %bb.14:                               # %_ZNKSt8functionIFvPjS0_S0_jEEclES0_S0_S0_j.exit.i
                                        #   in Loop: Header=BB4_7 Depth=1
	ld.d	$a5, $s3, 24
.Ltmp804:                               # EH_LABEL
	addi.d	$a1, $sp, 64
	addi.d	$a2, $sp, 56
	addi.d	$a3, $sp, 48
	addi.d	$a4, $sp, 44
	move	$a0, $s3
	jirl	$ra, $a5, 0
.Ltmp805:                               # EH_LABEL
# %bb.15:                               # %.noexc25
                                        #   in Loop: Header=BB4_7 Depth=1
	st.d	$s8, $sp, 64
	alsl.d	$a0, $s5, $s8, 2
	st.d	$a0, $sp, 56
	st.d	$s0, $sp, 48
.Ltmp806:                               # EH_LABEL
	addi.d	$a1, $sp, 56
	addi.d	$a2, $sp, 48
	addi.d	$a3, $sp, 64
	addi.d	$a4, $sp, 40
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZL18callThroughOptnoneIRSt8functionIFvPjS1_S1_jEEJS1_S1_RS1_RjEEvOT_DpOT0_)
	jirl	$ra, $ra, 0
.Ltmp807:                               # EH_LABEL
# %bb.16:                               # %_ZSt5equalIPjS0_EbT_S1_T0_.exit.i.i
                                        #   in Loop: Header=BB4_7 Depth=1
	ori	$a2, $zero, 3200
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB4_21
# %bb.17:                               #   in Loop: Header=BB4_7 Depth=1
	addi.d	$s5, $s5, 1
	ori	$a0, $zero, 101
	bne	$s5, $a0, .LBB4_7
# %bb.18:                               # %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit21
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
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
.LBB4_19:
.Ltmp815:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp816:                               # EH_LABEL
# %bb.20:                               # %.noexc24
.LBB4_21:
.Ltmp809:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.50)
	addi.d	$a1, $a1, %pc_lo12(.L.str.50)
	ori	$a2, $zero, 23
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp810:                               # EH_LABEL
# %bb.22:                               # %.noexc27
.Ltmp811:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	move	$a1, $s5
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp812:                               # EH_LABEL
# %bb.23:                               # %.noexc28
.Ltmp813:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.49)
	addi.d	$a1, $a1, %pc_lo12(.L.str.49)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp814:                               # EH_LABEL
# %bb.24:                               # %.noexc29
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB4_25:
.Ltmp797:                               # EH_LABEL
	move	$s2, $a0
	b	.LBB4_33
.LBB4_26:
.Ltmp794:                               # EH_LABEL
	move	$s2, $a0
	b	.LBB4_34
.LBB4_27:
.Ltmp791:                               # EH_LABEL
	move	$s2, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB4_28:                               # %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit32.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
.Ltmp817:                               # EH_LABEL
	b	.LBB4_32
.LBB4_29:                               # %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit32.loopexit.split-lp.loopexit.split-lp.loopexit
.Ltmp808:                               # EH_LABEL
	b	.LBB4_32
.LBB4_30:                               # %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit32.loopexit
.Ltmp803:                               # EH_LABEL
	b	.LBB4_32
.LBB4_31:                               # %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit32.loopexit.split-lp.loopexit
.Ltmp800:                               # EH_LABEL
.LBB4_32:                               # %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit32
	move	$s2, $a0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB4_33:                               # %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit35
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB4_34:                               # %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit38
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end4:
	.size	_ZL38checkOverlappingMemoryTwoRuntimeChecksIjEvSt8functionIFvPT_S2_S2_jEES4_PKc, .Lfunc_end4-_ZL38checkOverlappingMemoryTwoRuntimeChecksIjEvSt8functionIFvPT_S2_S2_jEES4_PKc
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table4:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Lfunc_begin4-.Lfunc_begin4    # >> Call Site 1 <<
	.uleb128 .Ltmp789-.Lfunc_begin4         #   Call between .Lfunc_begin4 and .Ltmp789
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp789-.Lfunc_begin4         # >> Call Site 2 <<
	.uleb128 .Ltmp790-.Ltmp789              #   Call between .Ltmp789 and .Ltmp790
	.uleb128 .Ltmp791-.Lfunc_begin4         #     jumps to .Ltmp791
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp792-.Lfunc_begin4         # >> Call Site 3 <<
	.uleb128 .Ltmp793-.Ltmp792              #   Call between .Ltmp792 and .Ltmp793
	.uleb128 .Ltmp794-.Lfunc_begin4         #     jumps to .Ltmp794
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp795-.Lfunc_begin4         # >> Call Site 4 <<
	.uleb128 .Ltmp796-.Ltmp795              #   Call between .Ltmp795 and .Ltmp796
	.uleb128 .Ltmp797-.Lfunc_begin4         #     jumps to .Ltmp797
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp798-.Lfunc_begin4         # >> Call Site 5 <<
	.uleb128 .Ltmp799-.Ltmp798              #   Call between .Ltmp798 and .Ltmp799
	.uleb128 .Ltmp800-.Lfunc_begin4         #     jumps to .Ltmp800
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp801-.Lfunc_begin4         # >> Call Site 6 <<
	.uleb128 .Ltmp802-.Ltmp801              #   Call between .Ltmp801 and .Ltmp802
	.uleb128 .Ltmp803-.Lfunc_begin4         #     jumps to .Ltmp803
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp802-.Lfunc_begin4         # >> Call Site 7 <<
	.uleb128 .Ltmp804-.Ltmp802              #   Call between .Ltmp802 and .Ltmp804
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp804-.Lfunc_begin4         # >> Call Site 8 <<
	.uleb128 .Ltmp807-.Ltmp804              #   Call between .Ltmp804 and .Ltmp807
	.uleb128 .Ltmp808-.Lfunc_begin4         #     jumps to .Ltmp808
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp807-.Lfunc_begin4         # >> Call Site 9 <<
	.uleb128 .Ltmp815-.Ltmp807              #   Call between .Ltmp807 and .Ltmp815
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp815-.Lfunc_begin4         # >> Call Site 10 <<
	.uleb128 .Ltmp814-.Ltmp815              #   Call between .Ltmp815 and .Ltmp814
	.uleb128 .Ltmp817-.Lfunc_begin4         #     jumps to .Ltmp817
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp814-.Lfunc_begin4         # >> Call Site 11 <<
	.uleb128 .Lfunc_end4-.Ltmp814           #   Call between .Ltmp814 and .Lfunc_end4
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end4:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZL38checkOverlappingMemoryTwoRuntimeChecksIhEvSt8functionIFvPT_S2_S2_jEES4_PKc
	.type	_ZL38checkOverlappingMemoryTwoRuntimeChecksIhEvSt8functionIFvPT_S2_S2_jEES4_PKc,@function
_ZL38checkOverlappingMemoryTwoRuntimeChecksIhEvSt8functionIFvPT_S2_S2_jEES4_PKc: # @_ZL38checkOverlappingMemoryTwoRuntimeChecksIhEvSt8functionIFvPT_S2_S2_jEES4_PKc
.Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception5
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
	move	$fp, $a2
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	move	$s3, $a0
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$s0, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a0, %pc_hi20(.L.str.48)
	addi.d	$a1, $a0, %pc_lo12(.L.str.48)
	ori	$a2, $zero, 9
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB5_2
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
	b	.LBB5_3
.LBB5_2:
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.w	$a1, $a0, 32
	ori	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate)
	jirl	$ra, $ra, 0
.LBB5_3:                                # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a1, %pc_hi20(.L.str.49)
	addi.d	$a1, $a1, %pc_lo12(.L.str.49)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 100
	st.w	$a0, $sp, 40
	ori	$a0, $zero, 800
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$fp, $a0
.Ltmp818:                               # EH_LABEL
	ori	$a0, $zero, 800
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp819:                               # EH_LABEL
# %bb.4:
.Ltmp821:                               # EH_LABEL
	move	$s0, $a0
	ori	$a0, $zero, 800
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
.Ltmp822:                               # EH_LABEL
# %bb.5:
.Ltmp824:                               # EH_LABEL
	ori	$a0, $zero, 800
	ori	$s7, $zero, 800
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$a1, $a0
.Ltmp825:                               # EH_LABEL
# %bb.6:                                # %.preheader
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	addi.d	$s8, $a0, 400
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	addi.d	$s2, $a1, 400
	addi.w	$s5, $zero, -100
	lu12i.w	$a0, 15
	ori	$s1, $a0, 3840
	pcalau12i	$a0, %pc_hi20(_ZL3rng)
	addi.d	$s6, $a0, %pc_lo12(_ZL3rng)
	.p2align	4, , 16
.LBB5_7:                                # %.lr.ph.preheader.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_8 Depth 2
                                        #     Child Loop BB5_11 Depth 2
	move	$s4, $zero
	st.h	$s1, $sp, 64
	.p2align	4, , 16
.LBB5_8:                                # %.lr.ph.i.i
                                        #   Parent Loop BB5_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Ltmp827:                               # EH_LABEL
	addi.d	$a0, $sp, 64
	addi.d	$a2, $sp, 64
	move	$a1, $s6
	pcaddu18i	$ra, %call36(_ZNSt24uniform_int_distributionIhEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEhRT_RKNS0_10param_typeE)
	jirl	$ra, $ra, 0
.Ltmp828:                               # EH_LABEL
# %bb.9:                                # %.noexc
                                        #   in Loop: Header=BB5_8 Depth=2
	stx.b	$a0, $fp, $s4
	addi.d	$s4, $s4, 1
	bne	$s4, $s7, .LBB5_8
# %bb.10:                               # %.lr.ph.preheader.i14.i
                                        #   in Loop: Header=BB5_7 Depth=1
	move	$s4, $zero
	st.h	$s1, $sp, 64
	.p2align	4, , 16
.LBB5_11:                               # %.lr.ph.i16.i
                                        #   Parent Loop BB5_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Ltmp830:                               # EH_LABEL
	addi.d	$a0, $sp, 64
	addi.d	$a2, $sp, 64
	move	$a1, $s6
	pcaddu18i	$ra, %call36(_ZNSt24uniform_int_distributionIhEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEhRT_RKNS0_10param_typeE)
	jirl	$ra, $ra, 0
.Ltmp831:                               # EH_LABEL
# %bb.12:                               # %.noexc22
                                        #   in Loop: Header=BB5_11 Depth=2
	stx.b	$a0, $s0, $s4
	addi.d	$s4, $s4, 1
	bne	$s4, $s7, .LBB5_11
# %bb.13:                               # %.lr.ph.i
                                        #   in Loop: Header=BB5_7 Depth=1
	ori	$a2, $zero, 800
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	move	$a1, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 800
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	move	$a1, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	add.d	$a0, $s8, $s5
	ld.w	$a1, $sp, 40
	ld.d	$a2, $s3, 16
	st.d	$a0, $sp, 64
	st.d	$s0, $sp, 56
	st.d	$s8, $sp, 48
	st.w	$a1, $sp, 44
	beqz	$a2, .LBB5_19
# %bb.14:                               # %_ZNKSt8functionIFvPhS0_S0_jEEclES0_S0_S0_j.exit.i
                                        #   in Loop: Header=BB5_7 Depth=1
	ld.d	$a5, $s3, 24
.Ltmp833:                               # EH_LABEL
	addi.d	$a1, $sp, 64
	addi.d	$a2, $sp, 56
	addi.d	$a3, $sp, 48
	addi.d	$a4, $sp, 44
	move	$a0, $s3
	jirl	$ra, $a5, 0
.Ltmp834:                               # EH_LABEL
# %bb.15:                               # %.noexc24
                                        #   in Loop: Header=BB5_7 Depth=1
	st.d	$s2, $sp, 64
	add.d	$a0, $s2, $s5
	st.d	$a0, $sp, 56
	st.d	$s0, $sp, 48
.Ltmp835:                               # EH_LABEL
	addi.d	$a1, $sp, 56
	addi.d	$a2, $sp, 48
	addi.d	$a3, $sp, 64
	addi.d	$a4, $sp, 40
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZL18callThroughOptnoneIRSt8functionIFvPhS1_S1_jEEJS1_S1_RS1_RjEEvOT_DpOT0_)
	jirl	$ra, $ra, 0
.Ltmp836:                               # EH_LABEL
# %bb.16:                               # %_ZSt5equalIPhS0_EbT_S1_T0_.exit.i.i
                                        #   in Loop: Header=BB5_7 Depth=1
	ori	$a2, $zero, 800
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB5_21
# %bb.17:                               #   in Loop: Header=BB5_7 Depth=1
	addi.d	$s5, $s5, 1
	ori	$a0, $zero, 101
	bne	$s5, $a0, .LBB5_7
# %bb.18:                               # %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit21
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
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
.LBB5_19:
.Ltmp844:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp845:                               # EH_LABEL
# %bb.20:                               # %.noexc23
.LBB5_21:
.Ltmp838:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.50)
	addi.d	$a1, $a1, %pc_lo12(.L.str.50)
	ori	$a2, $zero, 23
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp839:                               # EH_LABEL
# %bb.22:                               # %.noexc26
.Ltmp840:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	move	$a1, $s5
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp841:                               # EH_LABEL
# %bb.23:                               # %.noexc27
.Ltmp842:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.49)
	addi.d	$a1, $a1, %pc_lo12(.L.str.49)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp843:                               # EH_LABEL
# %bb.24:                               # %.noexc28
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB5_25:
.Ltmp826:                               # EH_LABEL
	move	$s2, $a0
	b	.LBB5_33
.LBB5_26:                               # %.thread
.Ltmp823:                               # EH_LABEL
	move	$s2, $a0
	b	.LBB5_34
.LBB5_27:
.Ltmp820:                               # EH_LABEL
	move	$s2, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB5_28:                               # %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit31.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
.Ltmp846:                               # EH_LABEL
	b	.LBB5_32
.LBB5_29:                               # %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit31.loopexit.split-lp.loopexit.split-lp.loopexit
.Ltmp837:                               # EH_LABEL
	b	.LBB5_32
.LBB5_30:                               # %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit31.loopexit
.Ltmp832:                               # EH_LABEL
	b	.LBB5_32
.LBB5_31:                               # %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit31.loopexit.split-lp.loopexit
.Ltmp829:                               # EH_LABEL
.LBB5_32:                               # %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit31
	move	$s2, $a0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB5_33:
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB5_34:                               # %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit37
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end5:
	.size	_ZL38checkOverlappingMemoryTwoRuntimeChecksIhEvSt8functionIFvPT_S2_S2_jEES4_PKc, .Lfunc_end5-_ZL38checkOverlappingMemoryTwoRuntimeChecksIhEvSt8functionIFvPT_S2_S2_jEES4_PKc
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table5:
.Lexception5:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end5-.Lcst_begin5
.Lcst_begin5:
	.uleb128 .Lfunc_begin5-.Lfunc_begin5    # >> Call Site 1 <<
	.uleb128 .Ltmp818-.Lfunc_begin5         #   Call between .Lfunc_begin5 and .Ltmp818
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp818-.Lfunc_begin5         # >> Call Site 2 <<
	.uleb128 .Ltmp819-.Ltmp818              #   Call between .Ltmp818 and .Ltmp819
	.uleb128 .Ltmp820-.Lfunc_begin5         #     jumps to .Ltmp820
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp821-.Lfunc_begin5         # >> Call Site 3 <<
	.uleb128 .Ltmp822-.Ltmp821              #   Call between .Ltmp821 and .Ltmp822
	.uleb128 .Ltmp823-.Lfunc_begin5         #     jumps to .Ltmp823
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp824-.Lfunc_begin5         # >> Call Site 4 <<
	.uleb128 .Ltmp825-.Ltmp824              #   Call between .Ltmp824 and .Ltmp825
	.uleb128 .Ltmp826-.Lfunc_begin5         #     jumps to .Ltmp826
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp827-.Lfunc_begin5         # >> Call Site 5 <<
	.uleb128 .Ltmp828-.Ltmp827              #   Call between .Ltmp827 and .Ltmp828
	.uleb128 .Ltmp829-.Lfunc_begin5         #     jumps to .Ltmp829
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp830-.Lfunc_begin5         # >> Call Site 6 <<
	.uleb128 .Ltmp831-.Ltmp830              #   Call between .Ltmp830 and .Ltmp831
	.uleb128 .Ltmp832-.Lfunc_begin5         #     jumps to .Ltmp832
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp831-.Lfunc_begin5         # >> Call Site 7 <<
	.uleb128 .Ltmp833-.Ltmp831              #   Call between .Ltmp831 and .Ltmp833
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp833-.Lfunc_begin5         # >> Call Site 8 <<
	.uleb128 .Ltmp836-.Ltmp833              #   Call between .Ltmp833 and .Ltmp836
	.uleb128 .Ltmp837-.Lfunc_begin5         #     jumps to .Ltmp837
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp836-.Lfunc_begin5         # >> Call Site 9 <<
	.uleb128 .Ltmp844-.Ltmp836              #   Call between .Ltmp836 and .Ltmp844
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp844-.Lfunc_begin5         # >> Call Site 10 <<
	.uleb128 .Ltmp843-.Ltmp844              #   Call between .Ltmp844 and .Ltmp843
	.uleb128 .Ltmp846-.Lfunc_begin5         #     jumps to .Ltmp846
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp843-.Lfunc_begin5         # >> Call Site 11 <<
	.uleb128 .Lfunc_end5-.Ltmp843           #   Call between .Ltmp843 and .Lfunc_end5
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end5:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZL38checkOverlappingMemoryTwoRuntimeChecksImEvSt8functionIFvPT_S2_S2_jEES4_PKc
.LCPI6_0:
	.dword	0                               # 0x0
	.dword	-1                              # 0xffffffffffffffff
	.text
	.p2align	5
	.type	_ZL38checkOverlappingMemoryTwoRuntimeChecksImEvSt8functionIFvPT_S2_S2_jEES4_PKc,@function
_ZL38checkOverlappingMemoryTwoRuntimeChecksImEvSt8functionIFvPT_S2_S2_jEES4_PKc: # @_ZL38checkOverlappingMemoryTwoRuntimeChecksImEvSt8functionIFvPT_S2_S2_jEES4_PKc
.Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception6
# %bb.0:
	addi.d	$sp, $sp, -192
	.cfi_def_cfa_offset 192
	st.d	$ra, $sp, 184                   # 8-byte Folded Spill
	st.d	$fp, $sp, 176                   # 8-byte Folded Spill
	st.d	$s0, $sp, 168                   # 8-byte Folded Spill
	st.d	$s1, $sp, 160                   # 8-byte Folded Spill
	st.d	$s2, $sp, 152                   # 8-byte Folded Spill
	st.d	$s3, $sp, 144                   # 8-byte Folded Spill
	st.d	$s4, $sp, 136                   # 8-byte Folded Spill
	st.d	$s5, $sp, 128                   # 8-byte Folded Spill
	st.d	$s6, $sp, 120                   # 8-byte Folded Spill
	st.d	$s7, $sp, 112                   # 8-byte Folded Spill
	st.d	$s8, $sp, 104                   # 8-byte Folded Spill
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
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	move	$s3, $a0
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$s0, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a0, %pc_hi20(.L.str.48)
	addi.d	$a1, $a0, %pc_lo12(.L.str.48)
	ori	$a2, $zero, 9
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB6_2
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
	b	.LBB6_3
.LBB6_2:
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.w	$a1, $a0, 32
	ori	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate)
	jirl	$ra, $ra, 0
.LBB6_3:                                # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a1, %pc_hi20(.L.str.49)
	addi.d	$a1, $a1, %pc_lo12(.L.str.49)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 100
	st.w	$a0, $sp, 60
	lu12i.w	$a0, 1
	ori	$s5, $a0, 2304
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$fp, $a0
.Ltmp847:                               # EH_LABEL
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp848:                               # EH_LABEL
# %bb.4:
.Ltmp850:                               # EH_LABEL
	move	$s0, $a0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
.Ltmp851:                               # EH_LABEL
# %bb.5:
.Ltmp853:                               # EH_LABEL
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp854:                               # EH_LABEL
# %bb.6:                                # %.preheader
	ori	$a2, $zero, 3200
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	add.d	$s8, $a1, $a2
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	add.d	$s2, $a0, $a2
	pcalau12i	$a0, %pc_hi20(.LCPI6_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI6_0)
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	addi.w	$s6, $zero, -100
	lu12i.w	$a0, -2
	ori	$s4, $a0, 1792
	pcalau12i	$a0, %pc_hi20(_ZL3rng)
	addi.d	$s7, $a0, %pc_lo12(_ZL3rng)
	.p2align	4, , 16
.LBB6_7:                                # %.lr.ph.preheader.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_8 Depth 2
                                        #     Child Loop BB6_11 Depth 2
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 64
	move	$s1, $s4
	.p2align	4, , 16
.LBB6_8:                                # %.lr.ph.i.i
                                        #   Parent Loop BB6_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Ltmp856:                               # EH_LABEL
	addi.d	$a0, $sp, 64
	addi.d	$a2, $sp, 64
	move	$a1, $s7
	pcaddu18i	$ra, %call36(_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE)
	jirl	$ra, $ra, 0
.Ltmp857:                               # EH_LABEL
# %bb.9:                                # %.noexc
                                        #   in Loop: Header=BB6_8 Depth=2
	add.d	$a1, $fp, $s1
	addi.d	$s1, $s1, 8
	stptr.d	$a0, $a1, 6400
	bnez	$s1, .LBB6_8
# %bb.10:                               # %.lr.ph.preheader.i14.i
                                        #   in Loop: Header=BB6_7 Depth=1
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 64
	move	$s1, $s4
	.p2align	4, , 16
.LBB6_11:                               # %.lr.ph.i16.i
                                        #   Parent Loop BB6_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Ltmp859:                               # EH_LABEL
	addi.d	$a0, $sp, 64
	addi.d	$a2, $sp, 64
	move	$a1, $s7
	pcaddu18i	$ra, %call36(_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE)
	jirl	$ra, $ra, 0
.Ltmp860:                               # EH_LABEL
# %bb.12:                               # %.noexc23
                                        #   in Loop: Header=BB6_11 Depth=2
	add.d	$a1, $s0, $s1
	addi.d	$s1, $s1, 8
	stptr.d	$a0, $a1, 6400
	bnez	$s1, .LBB6_11
# %bb.13:                               # %.lr.ph.i
                                        #   in Loop: Header=BB6_7 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	move	$a1, $fp
	move	$a2, $s5
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	move	$a1, $fp
	move	$a2, $s5
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	alsl.d	$a0, $s6, $s8, 3
	ld.w	$a1, $sp, 60
	ld.d	$a2, $s3, 16
	st.d	$a0, $sp, 64
	st.d	$s0, $sp, 96
	st.d	$s8, $sp, 88
	st.w	$a1, $sp, 84
	beqz	$a2, .LBB6_19
# %bb.14:                               # %_ZNKSt8functionIFvPmS0_S0_jEEclES0_S0_S0_j.exit.i
                                        #   in Loop: Header=BB6_7 Depth=1
	ld.d	$a5, $s3, 24
.Ltmp862:                               # EH_LABEL
	addi.d	$a1, $sp, 64
	addi.d	$a2, $sp, 96
	addi.d	$a3, $sp, 88
	addi.d	$a4, $sp, 84
	move	$a0, $s3
	jirl	$ra, $a5, 0
.Ltmp863:                               # EH_LABEL
# %bb.15:                               # %.noexc25
                                        #   in Loop: Header=BB6_7 Depth=1
	st.d	$s2, $sp, 64
	alsl.d	$a0, $s6, $s2, 3
	st.d	$a0, $sp, 96
	st.d	$s0, $sp, 88
.Ltmp864:                               # EH_LABEL
	addi.d	$a1, $sp, 96
	addi.d	$a2, $sp, 88
	addi.d	$a3, $sp, 64
	addi.d	$a4, $sp, 60
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZL18callThroughOptnoneIRSt8functionIFvPmS1_S1_jEEJS1_S1_RS1_RjEEvOT_DpOT0_)
	jirl	$ra, $ra, 0
.Ltmp865:                               # EH_LABEL
# %bb.16:                               # %_ZSt5equalIPmS0_EbT_S1_T0_.exit.i.i
                                        #   in Loop: Header=BB6_7 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	move	$a2, $s5
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB6_21
# %bb.17:                               #   in Loop: Header=BB6_7 Depth=1
	addi.d	$s6, $s6, 1
	ori	$a0, $zero, 101
	bne	$s6, $a0, .LBB6_7
# %bb.18:                               # %_ZNSt10unique_ptrIA_mSt14default_deleteIS0_EED2Ev.exit21
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$s8, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 184                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 192
	ret
.LBB6_19:
.Ltmp873:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp874:                               # EH_LABEL
# %bb.20:                               # %.noexc24
.LBB6_21:
.Ltmp867:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.50)
	addi.d	$a1, $a1, %pc_lo12(.L.str.50)
	ori	$a2, $zero, 23
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp868:                               # EH_LABEL
# %bb.22:                               # %.noexc27
.Ltmp869:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	move	$a1, $s6
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp870:                               # EH_LABEL
# %bb.23:                               # %.noexc28
.Ltmp871:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.49)
	addi.d	$a1, $a1, %pc_lo12(.L.str.49)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp872:                               # EH_LABEL
# %bb.24:                               # %.noexc29
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB6_25:
.Ltmp855:                               # EH_LABEL
	move	$s2, $a0
	b	.LBB6_33
.LBB6_26:
.Ltmp852:                               # EH_LABEL
	move	$s2, $a0
	b	.LBB6_34
.LBB6_27:
.Ltmp849:                               # EH_LABEL
	move	$s2, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB6_28:                               # %_ZNSt10unique_ptrIA_mSt14default_deleteIS0_EED2Ev.exit32.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
.Ltmp875:                               # EH_LABEL
	b	.LBB6_32
.LBB6_29:                               # %_ZNSt10unique_ptrIA_mSt14default_deleteIS0_EED2Ev.exit32.loopexit.split-lp.loopexit.split-lp.loopexit
.Ltmp866:                               # EH_LABEL
	b	.LBB6_32
.LBB6_30:                               # %_ZNSt10unique_ptrIA_mSt14default_deleteIS0_EED2Ev.exit32.loopexit
.Ltmp861:                               # EH_LABEL
	b	.LBB6_32
.LBB6_31:                               # %_ZNSt10unique_ptrIA_mSt14default_deleteIS0_EED2Ev.exit32.loopexit.split-lp.loopexit
.Ltmp858:                               # EH_LABEL
.LBB6_32:                               # %_ZNSt10unique_ptrIA_mSt14default_deleteIS0_EED2Ev.exit32
	move	$s2, $a0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB6_33:                               # %_ZNSt10unique_ptrIA_mSt14default_deleteIS0_EED2Ev.exit35
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB6_34:                               # %_ZNSt10unique_ptrIA_mSt14default_deleteIS0_EED2Ev.exit38
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end6:
	.size	_ZL38checkOverlappingMemoryTwoRuntimeChecksImEvSt8functionIFvPT_S2_S2_jEES4_PKc, .Lfunc_end6-_ZL38checkOverlappingMemoryTwoRuntimeChecksImEvSt8functionIFvPT_S2_S2_jEES4_PKc
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table6:
.Lexception6:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end6-.Lcst_begin6
.Lcst_begin6:
	.uleb128 .Lfunc_begin6-.Lfunc_begin6    # >> Call Site 1 <<
	.uleb128 .Ltmp847-.Lfunc_begin6         #   Call between .Lfunc_begin6 and .Ltmp847
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp847-.Lfunc_begin6         # >> Call Site 2 <<
	.uleb128 .Ltmp848-.Ltmp847              #   Call between .Ltmp847 and .Ltmp848
	.uleb128 .Ltmp849-.Lfunc_begin6         #     jumps to .Ltmp849
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp850-.Lfunc_begin6         # >> Call Site 3 <<
	.uleb128 .Ltmp851-.Ltmp850              #   Call between .Ltmp850 and .Ltmp851
	.uleb128 .Ltmp852-.Lfunc_begin6         #     jumps to .Ltmp852
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp853-.Lfunc_begin6         # >> Call Site 4 <<
	.uleb128 .Ltmp854-.Ltmp853              #   Call between .Ltmp853 and .Ltmp854
	.uleb128 .Ltmp855-.Lfunc_begin6         #     jumps to .Ltmp855
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp856-.Lfunc_begin6         # >> Call Site 5 <<
	.uleb128 .Ltmp857-.Ltmp856              #   Call between .Ltmp856 and .Ltmp857
	.uleb128 .Ltmp858-.Lfunc_begin6         #     jumps to .Ltmp858
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp859-.Lfunc_begin6         # >> Call Site 6 <<
	.uleb128 .Ltmp860-.Ltmp859              #   Call between .Ltmp859 and .Ltmp860
	.uleb128 .Ltmp861-.Lfunc_begin6         #     jumps to .Ltmp861
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp860-.Lfunc_begin6         # >> Call Site 7 <<
	.uleb128 .Ltmp862-.Ltmp860              #   Call between .Ltmp860 and .Ltmp862
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp862-.Lfunc_begin6         # >> Call Site 8 <<
	.uleb128 .Ltmp865-.Ltmp862              #   Call between .Ltmp862 and .Ltmp865
	.uleb128 .Ltmp866-.Lfunc_begin6         #     jumps to .Ltmp866
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp865-.Lfunc_begin6         # >> Call Site 9 <<
	.uleb128 .Ltmp873-.Ltmp865              #   Call between .Ltmp865 and .Ltmp873
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp873-.Lfunc_begin6         # >> Call Site 10 <<
	.uleb128 .Ltmp872-.Ltmp873              #   Call between .Ltmp873 and .Ltmp872
	.uleb128 .Ltmp875-.Lfunc_begin6         #     jumps to .Ltmp875
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp872-.Lfunc_begin6         # >> Call Site 11 <<
	.uleb128 .Lfunc_end6-.Ltmp872           #   Call between .Ltmp872 and .Lfunc_end6
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end6:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZL44checkOverlappingMemoryTwoRuntimeChecksNestedIhEvSt8functionIFvPT_S2_jjEES4_iiPKc
	.type	_ZL44checkOverlappingMemoryTwoRuntimeChecksNestedIhEvSt8functionIFvPT_S2_jjEES4_iiPKc,@function
_ZL44checkOverlappingMemoryTwoRuntimeChecksNestedIhEvSt8functionIFvPT_S2_jjEES4_iiPKc: # @_ZL44checkOverlappingMemoryTwoRuntimeChecksNestedIhEvSt8functionIFvPT_S2_jjEES4_iiPKc
.Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception7
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
	move	$fp, $a3
	move	$s5, $a2
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	move	$s2, $a0
	ori	$a0, $zero, 100
	st.w	$a0, $sp, 28
	st.w	$a2, $sp, 24
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$s0, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a0, %pc_hi20(.L.str.48)
	addi.d	$a1, $a0, %pc_lo12(.L.str.48)
	ori	$a2, $zero, 9
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB7_2
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
	b	.LBB7_3
.LBB7_2:
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.w	$a1, $a0, 32
	ori	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate)
	jirl	$ra, $ra, 0
.LBB7_3:                                # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a1, %pc_hi20(.L.str.49)
	addi.d	$a1, $a1, %pc_lo12(.L.str.49)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 808
	mul.d	$s1, $s5, $a0
	addi.w	$s4, $s1, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$fp, $a0
.Ltmp876:                               # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp877:                               # EH_LABEL
# %bb.4:
.Ltmp879:                               # EH_LABEL
	move	$s0, $a0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp880:                               # EH_LABEL
# %bb.5:                                # %.lr.ph.split
	move	$s3, $a0
	nor	$a0, $s5, $zero
	slli.w	$a0, $a0, 1
	bstrpick.d	$a1, $s1, 31, 1
	add.d	$s7, $s3, $a1
	add.d	$s8, $s0, $a1
	lu12i.w	$a1, 15
	ori	$a1, $a1, 3840
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(_ZL3rng)
	addi.d	$s6, $a1, %pc_lo12(_ZL3rng)
	.p2align	4, , 16
.LBB7_6:                                # %.lr.ph.i.i.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_7 Depth 2
	move	$s1, $zero
	move	$s5, $a0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	st.h	$a0, $sp, 48
	.p2align	4, , 16
.LBB7_7:                                # %.lr.ph.i.i
                                        #   Parent Loop BB7_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Ltmp882:                               # EH_LABEL
	addi.d	$a0, $sp, 48
	addi.d	$a2, $sp, 48
	move	$a1, $s6
	pcaddu18i	$ra, %call36(_ZNSt24uniform_int_distributionIhEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEhRT_RKNS0_10param_typeE)
	jirl	$ra, $ra, 0
.Ltmp883:                               # EH_LABEL
# %bb.8:                                # %.noexc
                                        #   in Loop: Header=BB7_7 Depth=2
	stx.b	$a0, $fp, $s1
	addi.d	$s1, $s1, 1
	bne	$s4, $s1, .LBB7_7
# %bb.9:                                # %.lr.ph.i
                                        #   in Loop: Header=BB7_6 Depth=1
	move	$a0, $s0
	move	$a1, $fp
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	move	$a1, $fp
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	add.d	$a0, $s8, $s5
	ld.w	$a1, $sp, 28
	ld.w	$a2, $sp, 24
	ld.d	$a3, $s2, 16
	st.d	$a0, $sp, 48
	st.d	$s8, $sp, 40
	st.w	$a1, $sp, 36
	st.w	$a2, $sp, 32
	beqz	$a3, .LBB7_15
# %bb.10:                               # %_ZNKSt8functionIFvPhS0_jjEEclES0_S0_jj.exit.i
                                        #   in Loop: Header=BB7_6 Depth=1
	ld.d	$a5, $s2, 24
.Ltmp885:                               # EH_LABEL
	addi.d	$a1, $sp, 48
	addi.d	$a2, $sp, 40
	addi.d	$a3, $sp, 36
	addi.d	$a4, $sp, 32
	move	$a0, $s2
	jirl	$ra, $a5, 0
.Ltmp886:                               # EH_LABEL
# %bb.11:                               # %.noexc18
                                        #   in Loop: Header=BB7_6 Depth=1
	st.d	$s7, $sp, 48
	add.d	$a0, $s7, $s5
	st.d	$a0, $sp, 40
.Ltmp887:                               # EH_LABEL
	addi.d	$a1, $sp, 40
	addi.d	$a2, $sp, 48
	addi.d	$a3, $sp, 28
	addi.d	$a4, $sp, 24
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZL18callThroughOptnoneIRSt8functionIFvPhS1_jjEEJS1_RS1_RKiS7_EEvOT_DpOT0_)
	jirl	$ra, $ra, 0
.Ltmp888:                               # EH_LABEL
# %bb.12:                               # %.noexc19
                                        #   in Loop: Header=BB7_6 Depth=1
	move	$a0, $s0
	move	$a1, $s3
	move	$a2, $s4
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB7_17
# %bb.13:                               #   in Loop: Header=BB7_6 Depth=1
	ld.w	$a0, $sp, 24
	ori	$a1, $zero, 2
	alsl.w	$a1, $a0, $a1, 1
	addi.d	$a0, $s5, 1
	blt	$s5, $a1, .LBB7_6
# %bb.14:                               # %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit16
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
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
.LBB7_15:                               # %.split.us
.Ltmp896:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp897:                               # EH_LABEL
# %bb.16:                               # %.noexc17
.LBB7_17:                               # %.split73
.Ltmp890:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.50)
	addi.d	$a1, $a1, %pc_lo12(.L.str.50)
	ori	$a2, $zero, 23
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp891:                               # EH_LABEL
# %bb.18:                               # %.noexc20
.Ltmp892:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	move	$a1, $s5
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp893:                               # EH_LABEL
# %bb.19:                               # %.noexc21
.Ltmp894:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.49)
	addi.d	$a1, $a1, %pc_lo12(.L.str.49)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp895:                               # EH_LABEL
# %bb.20:                               # %.noexc22
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB7_21:
.Ltmp881:                               # EH_LABEL
	move	$s1, $a0
	b	.LBB7_27
.LBB7_22:
.Ltmp878:                               # EH_LABEL
	move	$s1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB7_23:                               # %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit25.loopexit.split-lp.loopexit.split-lp
.Ltmp898:                               # EH_LABEL
	b	.LBB7_26
.LBB7_24:                               # %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit25.loopexit.split-lp.loopexit.split
.Ltmp889:                               # EH_LABEL
	b	.LBB7_26
.LBB7_25:                               # %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit25.loopexit
.Ltmp884:                               # EH_LABEL
.LBB7_26:                               # %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit25
	move	$s1, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB7_27:                               # %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit28
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end7:
	.size	_ZL44checkOverlappingMemoryTwoRuntimeChecksNestedIhEvSt8functionIFvPT_S2_jjEES4_iiPKc, .Lfunc_end7-_ZL44checkOverlappingMemoryTwoRuntimeChecksNestedIhEvSt8functionIFvPT_S2_jjEES4_iiPKc
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table7:
.Lexception7:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end7-.Lcst_begin7
.Lcst_begin7:
	.uleb128 .Lfunc_begin7-.Lfunc_begin7    # >> Call Site 1 <<
	.uleb128 .Ltmp876-.Lfunc_begin7         #   Call between .Lfunc_begin7 and .Ltmp876
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp876-.Lfunc_begin7         # >> Call Site 2 <<
	.uleb128 .Ltmp877-.Ltmp876              #   Call between .Ltmp876 and .Ltmp877
	.uleb128 .Ltmp878-.Lfunc_begin7         #     jumps to .Ltmp878
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp879-.Lfunc_begin7         # >> Call Site 3 <<
	.uleb128 .Ltmp880-.Ltmp879              #   Call between .Ltmp879 and .Ltmp880
	.uleb128 .Ltmp881-.Lfunc_begin7         #     jumps to .Ltmp881
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp882-.Lfunc_begin7         # >> Call Site 4 <<
	.uleb128 .Ltmp883-.Ltmp882              #   Call between .Ltmp882 and .Ltmp883
	.uleb128 .Ltmp884-.Lfunc_begin7         #     jumps to .Ltmp884
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp883-.Lfunc_begin7         # >> Call Site 5 <<
	.uleb128 .Ltmp885-.Ltmp883              #   Call between .Ltmp883 and .Ltmp885
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp885-.Lfunc_begin7         # >> Call Site 6 <<
	.uleb128 .Ltmp888-.Ltmp885              #   Call between .Ltmp885 and .Ltmp888
	.uleb128 .Ltmp889-.Lfunc_begin7         #     jumps to .Ltmp889
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp888-.Lfunc_begin7         # >> Call Site 7 <<
	.uleb128 .Ltmp896-.Ltmp888              #   Call between .Ltmp888 and .Ltmp896
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp896-.Lfunc_begin7         # >> Call Site 8 <<
	.uleb128 .Ltmp895-.Ltmp896              #   Call between .Ltmp896 and .Ltmp895
	.uleb128 .Ltmp898-.Lfunc_begin7         #     jumps to .Ltmp898
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp895-.Lfunc_begin7         # >> Call Site 9 <<
	.uleb128 .Lfunc_end7-.Ltmp895           #   Call between .Ltmp895 and .Lfunc_end7
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end7:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZL44checkOverlappingMemoryTwoRuntimeChecksNestedIjEvSt8functionIFvPT_S2_jjEES4_iiPKc
	.type	_ZL44checkOverlappingMemoryTwoRuntimeChecksNestedIjEvSt8functionIFvPT_S2_jjEES4_iiPKc,@function
_ZL44checkOverlappingMemoryTwoRuntimeChecksNestedIjEvSt8functionIFvPT_S2_jjEES4_iiPKc: # @_ZL44checkOverlappingMemoryTwoRuntimeChecksNestedIjEvSt8functionIFvPT_S2_jjEES4_iiPKc
.Lfunc_begin8:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception8
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
	move	$fp, $a3
	move	$s5, $a2
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	move	$s2, $a0
	ori	$a0, $zero, 100
	st.w	$a0, $sp, 44
	st.w	$a2, $sp, 40
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$s0, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a0, %pc_hi20(.L.str.48)
	addi.d	$a1, $a0, %pc_lo12(.L.str.48)
	ori	$a2, $zero, 9
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB8_2
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
	b	.LBB8_3
.LBB8_2:
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.w	$a1, $a0, 32
	ori	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate)
	jirl	$ra, $ra, 0
.LBB8_3:                                # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a1, %pc_hi20(.L.str.49)
	addi.d	$a1, $a1, %pc_lo12(.L.str.49)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 808
	mul.d	$s1, $s5, $a0
	addi.w	$a0, $s1, 0
	slli.d	$s4, $a0, 2
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$fp, $a0
.Ltmp899:                               # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
.Ltmp900:                               # EH_LABEL
# %bb.4:
.Ltmp902:                               # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp903:                               # EH_LABEL
# %bb.5:                                # %.lr.ph.split
	move	$s3, $a0
	nor	$a0, $s5, $zero
	slli.w	$a0, $a0, 1
	bstrpick.d	$a1, $s1, 31, 1
	alsl.d	$s7, $a1, $s3, 2
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	alsl.d	$s8, $a1, $a2, 2
	ori	$a1, $zero, 3232
	mul.d	$s1, $s5, $a1
	ori	$a1, $zero, 0
	lu32i.d	$a1, -1
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(_ZL3rng)
	addi.d	$s6, $a1, %pc_lo12(_ZL3rng)
	.p2align	4, , 16
.LBB8_6:                                # %.lr.ph.i.i.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_7 Depth 2
	move	$s0, $zero
	move	$s5, $a0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	st.d	$a0, $sp, 64
	.p2align	4, , 16
.LBB8_7:                                # %.lr.ph.i.i
                                        #   Parent Loop BB8_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Ltmp905:                               # EH_LABEL
	addi.d	$a0, $sp, 64
	addi.d	$a2, $sp, 64
	move	$a1, $s6
	pcaddu18i	$ra, %call36(_ZNSt24uniform_int_distributionIjEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEjRT_RKNS0_10param_typeE)
	jirl	$ra, $ra, 0
.Ltmp906:                               # EH_LABEL
# %bb.8:                                # %.noexc
                                        #   in Loop: Header=BB8_7 Depth=2
	stx.w	$a0, $fp, $s0
	addi.d	$s0, $s0, 4
	bne	$s1, $s0, .LBB8_7
# %bb.9:                                # %_ZL9init_dataIjEvRKSt10unique_ptrIA_T_St14default_deleteIS2_EEj.exit.i
                                        #   in Loop: Header=BB8_6 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	move	$a1, $fp
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	move	$a1, $fp
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	alsl.d	$a0, $s5, $s8, 2
	ld.w	$a1, $sp, 44
	ld.w	$a2, $sp, 40
	ld.d	$a3, $s2, 16
	st.d	$a0, $sp, 64
	st.d	$s8, $sp, 56
	st.w	$a1, $sp, 52
	st.w	$a2, $sp, 48
	beqz	$a3, .LBB8_15
# %bb.10:                               # %_ZNKSt8functionIFvPjS0_jjEEclES0_S0_jj.exit.i
                                        #   in Loop: Header=BB8_6 Depth=1
	ld.d	$a5, $s2, 24
.Ltmp908:                               # EH_LABEL
	addi.d	$a1, $sp, 64
	addi.d	$a2, $sp, 56
	addi.d	$a3, $sp, 52
	addi.d	$a4, $sp, 48
	move	$a0, $s2
	jirl	$ra, $a5, 0
.Ltmp909:                               # EH_LABEL
# %bb.11:                               # %.noexc19
                                        #   in Loop: Header=BB8_6 Depth=1
	st.d	$s7, $sp, 64
	alsl.d	$a0, $s5, $s7, 2
	st.d	$a0, $sp, 56
.Ltmp910:                               # EH_LABEL
	addi.d	$a1, $sp, 56
	addi.d	$a2, $sp, 64
	addi.d	$a3, $sp, 44
	addi.d	$a4, $sp, 40
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZL18callThroughOptnoneIRSt8functionIFvPjS1_jjEEJS1_RS1_RKiS7_EEvOT_DpOT0_)
	jirl	$ra, $ra, 0
.Ltmp911:                               # EH_LABEL
# %bb.12:                               # %.noexc20
                                        #   in Loop: Header=BB8_6 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	move	$a1, $s3
	move	$a2, $s4
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB8_17
# %bb.13:                               #   in Loop: Header=BB8_6 Depth=1
	ld.w	$a0, $sp, 40
	ori	$a1, $zero, 2
	alsl.w	$a1, $a0, $a1, 1
	addi.d	$a0, $s5, 1
	blt	$s5, $a1, .LBB8_6
# %bb.14:                               # %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit16
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
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
.LBB8_15:                               # %.split.us
.Ltmp919:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp920:                               # EH_LABEL
# %bb.16:                               # %.noexc18
.LBB8_17:                               # %.split69
.Ltmp913:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.50)
	addi.d	$a1, $a1, %pc_lo12(.L.str.50)
	ori	$a2, $zero, 23
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp914:                               # EH_LABEL
# %bb.18:                               # %.noexc21
.Ltmp915:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	move	$a1, $s5
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp916:                               # EH_LABEL
# %bb.19:                               # %.noexc22
.Ltmp917:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.49)
	addi.d	$a1, $a1, %pc_lo12(.L.str.49)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp918:                               # EH_LABEL
# %bb.20:                               # %.noexc23
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB8_21:
.Ltmp904:                               # EH_LABEL
	move	$s1, $a0
	b	.LBB8_27
.LBB8_22:
.Ltmp901:                               # EH_LABEL
	move	$s1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB8_23:                               # %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit26.loopexit.split-lp.loopexit.split-lp
.Ltmp921:                               # EH_LABEL
	b	.LBB8_26
.LBB8_24:                               # %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit26.loopexit.split-lp.loopexit.split
.Ltmp912:                               # EH_LABEL
	b	.LBB8_26
.LBB8_25:                               # %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit26.loopexit
.Ltmp907:                               # EH_LABEL
.LBB8_26:                               # %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit26
	move	$s1, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB8_27:                               # %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit29
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end8:
	.size	_ZL44checkOverlappingMemoryTwoRuntimeChecksNestedIjEvSt8functionIFvPT_S2_jjEES4_iiPKc, .Lfunc_end8-_ZL44checkOverlappingMemoryTwoRuntimeChecksNestedIjEvSt8functionIFvPT_S2_jjEES4_iiPKc
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table8:
.Lexception8:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end8-.Lcst_begin8
.Lcst_begin8:
	.uleb128 .Lfunc_begin8-.Lfunc_begin8    # >> Call Site 1 <<
	.uleb128 .Ltmp899-.Lfunc_begin8         #   Call between .Lfunc_begin8 and .Ltmp899
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp899-.Lfunc_begin8         # >> Call Site 2 <<
	.uleb128 .Ltmp900-.Ltmp899              #   Call between .Ltmp899 and .Ltmp900
	.uleb128 .Ltmp901-.Lfunc_begin8         #     jumps to .Ltmp901
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp902-.Lfunc_begin8         # >> Call Site 3 <<
	.uleb128 .Ltmp903-.Ltmp902              #   Call between .Ltmp902 and .Ltmp903
	.uleb128 .Ltmp904-.Lfunc_begin8         #     jumps to .Ltmp904
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp905-.Lfunc_begin8         # >> Call Site 4 <<
	.uleb128 .Ltmp906-.Ltmp905              #   Call between .Ltmp905 and .Ltmp906
	.uleb128 .Ltmp907-.Lfunc_begin8         #     jumps to .Ltmp907
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp906-.Lfunc_begin8         # >> Call Site 5 <<
	.uleb128 .Ltmp908-.Ltmp906              #   Call between .Ltmp906 and .Ltmp908
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp908-.Lfunc_begin8         # >> Call Site 6 <<
	.uleb128 .Ltmp911-.Ltmp908              #   Call between .Ltmp908 and .Ltmp911
	.uleb128 .Ltmp912-.Lfunc_begin8         #     jumps to .Ltmp912
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp911-.Lfunc_begin8         # >> Call Site 7 <<
	.uleb128 .Ltmp919-.Ltmp911              #   Call between .Ltmp911 and .Ltmp919
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp919-.Lfunc_begin8         # >> Call Site 8 <<
	.uleb128 .Ltmp918-.Ltmp919              #   Call between .Ltmp919 and .Ltmp918
	.uleb128 .Ltmp921-.Lfunc_begin8         #     jumps to .Ltmp921
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp918-.Lfunc_begin8         # >> Call Site 9 <<
	.uleb128 .Lfunc_end8-.Ltmp918           #   Call between .Ltmp918 and .Lfunc_end8
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end8:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZL44checkOverlappingMemoryTwoRuntimeChecksNestedImEvSt8functionIFvPT_S2_jjEES4_iiPKc
.LCPI9_0:
	.dword	0                               # 0x0
	.dword	-1                              # 0xffffffffffffffff
	.text
	.p2align	5
	.type	_ZL44checkOverlappingMemoryTwoRuntimeChecksNestedImEvSt8functionIFvPT_S2_jjEES4_iiPKc,@function
_ZL44checkOverlappingMemoryTwoRuntimeChecksNestedImEvSt8functionIFvPT_S2_jjEES4_iiPKc: # @_ZL44checkOverlappingMemoryTwoRuntimeChecksNestedImEvSt8functionIFvPT_S2_jjEES4_iiPKc
.Lfunc_begin9:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception9
# %bb.0:
	addi.d	$sp, $sp, -176
	.cfi_def_cfa_offset 176
	st.d	$ra, $sp, 168                   # 8-byte Folded Spill
	st.d	$fp, $sp, 160                   # 8-byte Folded Spill
	st.d	$s0, $sp, 152                   # 8-byte Folded Spill
	st.d	$s1, $sp, 144                   # 8-byte Folded Spill
	st.d	$s2, $sp, 136                   # 8-byte Folded Spill
	st.d	$s3, $sp, 128                   # 8-byte Folded Spill
	st.d	$s4, $sp, 120                   # 8-byte Folded Spill
	st.d	$s5, $sp, 112                   # 8-byte Folded Spill
	st.d	$s6, $sp, 104                   # 8-byte Folded Spill
	st.d	$s7, $sp, 96                    # 8-byte Folded Spill
	st.d	$s8, $sp, 88                    # 8-byte Folded Spill
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
	move	$s5, $a2
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	move	$s2, $a0
	ori	$a0, $zero, 100
	st.w	$a0, $sp, 44
	st.w	$a2, $sp, 40
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$s0, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a0, %pc_hi20(.L.str.48)
	addi.d	$a1, $a0, %pc_lo12(.L.str.48)
	ori	$a2, $zero, 9
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB9_2
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
	b	.LBB9_3
.LBB9_2:
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.w	$a1, $a0, 32
	ori	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate)
	jirl	$ra, $ra, 0
.LBB9_3:                                # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a1, %pc_hi20(.L.str.49)
	addi.d	$a1, $a1, %pc_lo12(.L.str.49)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 808
	mul.d	$s1, $s5, $a0
	addi.w	$a0, $s1, 0
	slli.d	$s4, $a0, 3
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$fp, $a0
.Ltmp922:                               # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
.Ltmp923:                               # EH_LABEL
# %bb.4:
.Ltmp925:                               # EH_LABEL
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp926:                               # EH_LABEL
# %bb.5:                                # %.lr.ph.i.i.preheader.preheader
	move	$s3, $a0
	nor	$a0, $s5, $zero
	slli.w	$a0, $a0, 1
	bstrpick.d	$a1, $s1, 31, 1
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	alsl.d	$s7, $a1, $a2, 3
	alsl.d	$s8, $a1, $s3, 3
	pcalau12i	$a1, %pc_hi20(.LCPI9_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI9_0)
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2368
	mul.d	$s1, $s5, $a1
	pcalau12i	$a1, %pc_hi20(_ZL3rng)
	addi.d	$s6, $a1, %pc_lo12(_ZL3rng)
	.p2align	4, , 16
.LBB9_6:                                # %.lr.ph.i.i.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_7 Depth 2
	move	$s0, $zero
	move	$s5, $a0
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 48
	.p2align	4, , 16
.LBB9_7:                                # %.lr.ph.i.i
                                        #   Parent Loop BB9_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Ltmp928:                               # EH_LABEL
	addi.d	$a0, $sp, 48
	addi.d	$a2, $sp, 48
	move	$a1, $s6
	pcaddu18i	$ra, %call36(_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE)
	jirl	$ra, $ra, 0
.Ltmp929:                               # EH_LABEL
# %bb.8:                                # %.noexc
                                        #   in Loop: Header=BB9_7 Depth=2
	stx.d	$a0, $fp, $s0
	addi.d	$s0, $s0, 8
	bne	$s1, $s0, .LBB9_7
# %bb.9:                                # %_ZL9init_dataImEvRKSt10unique_ptrIA_T_St14default_deleteIS2_EEj.exit.i
                                        #   in Loop: Header=BB9_6 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	move	$a1, $fp
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	move	$a1, $fp
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	alsl.d	$a0, $s5, $s7, 3
	ld.w	$a1, $sp, 44
	ld.w	$a2, $sp, 40
	ld.d	$a3, $s2, 16
	st.d	$a0, $sp, 48
	st.d	$s7, $sp, 80
	st.w	$a1, $sp, 76
	st.w	$a2, $sp, 72
	beqz	$a3, .LBB9_15
# %bb.10:                               # %_ZNKSt8functionIFvPmS0_jjEEclES0_S0_jj.exit.i
                                        #   in Loop: Header=BB9_6 Depth=1
	ld.d	$a5, $s2, 24
.Ltmp931:                               # EH_LABEL
	addi.d	$a1, $sp, 48
	addi.d	$a2, $sp, 80
	addi.d	$a3, $sp, 76
	addi.d	$a4, $sp, 72
	move	$a0, $s2
	jirl	$ra, $a5, 0
.Ltmp932:                               # EH_LABEL
# %bb.11:                               # %.noexc19
                                        #   in Loop: Header=BB9_6 Depth=1
	st.d	$s8, $sp, 48
	alsl.d	$a0, $s5, $s8, 3
	st.d	$a0, $sp, 80
.Ltmp933:                               # EH_LABEL
	addi.d	$a1, $sp, 80
	addi.d	$a2, $sp, 48
	addi.d	$a3, $sp, 44
	addi.d	$a4, $sp, 40
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZL18callThroughOptnoneIRSt8functionIFvPmS1_jjEEJS1_RS1_RKiS7_EEvOT_DpOT0_)
	jirl	$ra, $ra, 0
.Ltmp934:                               # EH_LABEL
# %bb.12:                               # %.noexc20
                                        #   in Loop: Header=BB9_6 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	move	$a1, $s3
	move	$a2, $s4
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB9_17
# %bb.13:                               #   in Loop: Header=BB9_6 Depth=1
	ld.w	$a0, $sp, 40
	ori	$a1, $zero, 2
	alsl.w	$a1, $a0, $a1, 1
	addi.d	$a0, $s5, 1
	blt	$s5, $a1, .LBB9_6
# %bb.14:                               # %_ZNSt10unique_ptrIA_mSt14default_deleteIS0_EED2Ev.exit16
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$s8, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 168                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 176
	ret
.LBB9_15:                               # %.split.us
.Ltmp942:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp943:                               # EH_LABEL
# %bb.16:                               # %.noexc18
.LBB9_17:                               # %.split68
.Ltmp936:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.50)
	addi.d	$a1, $a1, %pc_lo12(.L.str.50)
	ori	$a2, $zero, 23
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp937:                               # EH_LABEL
# %bb.18:                               # %.noexc21
.Ltmp938:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	move	$a1, $s5
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp939:                               # EH_LABEL
# %bb.19:                               # %.noexc22
.Ltmp940:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.49)
	addi.d	$a1, $a1, %pc_lo12(.L.str.49)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp941:                               # EH_LABEL
# %bb.20:                               # %.noexc23
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB9_21:
.Ltmp927:                               # EH_LABEL
	move	$s1, $a0
	b	.LBB9_27
.LBB9_22:
.Ltmp924:                               # EH_LABEL
	move	$s1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB9_23:                               # %_ZNSt10unique_ptrIA_mSt14default_deleteIS0_EED2Ev.exit26.loopexit.split-lp.loopexit.split-lp
.Ltmp944:                               # EH_LABEL
	b	.LBB9_26
.LBB9_24:                               # %_ZNSt10unique_ptrIA_mSt14default_deleteIS0_EED2Ev.exit26.loopexit.split-lp.loopexit.split
.Ltmp935:                               # EH_LABEL
	b	.LBB9_26
.LBB9_25:                               # %_ZNSt10unique_ptrIA_mSt14default_deleteIS0_EED2Ev.exit26.loopexit
.Ltmp930:                               # EH_LABEL
.LBB9_26:                               # %_ZNSt10unique_ptrIA_mSt14default_deleteIS0_EED2Ev.exit26
	move	$s1, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB9_27:                               # %_ZNSt10unique_ptrIA_mSt14default_deleteIS0_EED2Ev.exit29
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end9:
	.size	_ZL44checkOverlappingMemoryTwoRuntimeChecksNestedImEvSt8functionIFvPT_S2_jjEES4_iiPKc, .Lfunc_end9-_ZL44checkOverlappingMemoryTwoRuntimeChecksNestedImEvSt8functionIFvPT_S2_jjEES4_iiPKc
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table9:
.Lexception9:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end9-.Lcst_begin9
.Lcst_begin9:
	.uleb128 .Lfunc_begin9-.Lfunc_begin9    # >> Call Site 1 <<
	.uleb128 .Ltmp922-.Lfunc_begin9         #   Call between .Lfunc_begin9 and .Ltmp922
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp922-.Lfunc_begin9         # >> Call Site 2 <<
	.uleb128 .Ltmp923-.Ltmp922              #   Call between .Ltmp922 and .Ltmp923
	.uleb128 .Ltmp924-.Lfunc_begin9         #     jumps to .Ltmp924
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp925-.Lfunc_begin9         # >> Call Site 3 <<
	.uleb128 .Ltmp926-.Ltmp925              #   Call between .Ltmp925 and .Ltmp926
	.uleb128 .Ltmp927-.Lfunc_begin9         #     jumps to .Ltmp927
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp928-.Lfunc_begin9         # >> Call Site 4 <<
	.uleb128 .Ltmp929-.Ltmp928              #   Call between .Ltmp928 and .Ltmp929
	.uleb128 .Ltmp930-.Lfunc_begin9         #     jumps to .Ltmp930
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp929-.Lfunc_begin9         # >> Call Site 5 <<
	.uleb128 .Ltmp931-.Ltmp929              #   Call between .Ltmp929 and .Ltmp931
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp931-.Lfunc_begin9         # >> Call Site 6 <<
	.uleb128 .Ltmp934-.Ltmp931              #   Call between .Ltmp931 and .Ltmp934
	.uleb128 .Ltmp935-.Lfunc_begin9         #     jumps to .Ltmp935
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp934-.Lfunc_begin9         # >> Call Site 7 <<
	.uleb128 .Ltmp942-.Ltmp934              #   Call between .Ltmp934 and .Ltmp942
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp942-.Lfunc_begin9         # >> Call Site 8 <<
	.uleb128 .Ltmp941-.Ltmp942              #   Call between .Ltmp942 and .Ltmp941
	.uleb128 .Ltmp944-.Lfunc_begin9         #     jumps to .Ltmp944
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp941-.Lfunc_begin9         # >> Call Site 9 <<
	.uleb128 .Lfunc_end9-.Ltmp941           #   Call between .Ltmp941 and .Lfunc_end9
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end9:
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
.Lfunc_end10:
	.size	__clang_call_terminate, .Lfunc_end10-__clang_call_terminate
                                        # -- End function
	.section	.text._ZNKSt8functionIFvPhS0_jEEclES0_S0_j,"axG",@progbits,_ZNKSt8functionIFvPhS0_jEEclES0_S0_j,comdat
	.weak	_ZNKSt8functionIFvPhS0_jEEclES0_S0_j # -- Begin function _ZNKSt8functionIFvPhS0_jEEclES0_S0_j
	.p2align	5
	.type	_ZNKSt8functionIFvPhS0_jEEclES0_S0_j,@function
_ZNKSt8functionIFvPhS0_jEEclES0_S0_j:   # @_ZNKSt8functionIFvPhS0_jEEclES0_S0_j
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	ld.d	$a4, $a0, 16
	st.d	$a1, $sp, 16
	st.d	$a2, $sp, 8
	st.w	$a3, $sp, 4
	beqz	$a4, .LBB11_2
# %bb.1:
	ld.d	$a4, $a0, 24
	addi.d	$a1, $sp, 16
	addi.d	$a2, $sp, 8
	addi.d	$a3, $sp, 4
	jirl	$ra, $a4, 0
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB11_2:
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Lfunc_end11:
	.size	_ZNKSt8functionIFvPhS0_jEEclES0_S0_j, .Lfunc_end11-_ZNKSt8functionIFvPhS0_jEEclES0_S0_j
	.cfi_endproc
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZL18callThroughOptnoneIRSt8functionIFvPhS1_jEEJS1_RS1_RjEEvOT_DpOT0_
	.type	_ZL18callThroughOptnoneIRSt8functionIFvPhS1_jEEJS1_RS1_RjEEvOT_DpOT0_,@function
_ZL18callThroughOptnoneIRSt8functionIFvPhS1_jEEJS1_RS1_RjEEvOT_DpOT0_: # @_ZL18callThroughOptnoneIRSt8functionIFvPhS1_jEEJS1_RS1_RjEEvOT_DpOT0_
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -48
	.cfi_def_cfa_offset 48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	st.d	$a0, $sp, 32
	st.d	$a1, $sp, 24
	st.d	$a2, $sp, 16
	st.d	$a3, $sp, 8
	ld.d	$a0, $sp, 32
	ld.d	$a1, $sp, 24
	ld.d	$a1, $a1, 0
	ld.d	$a2, $sp, 16
	ld.d	$a2, $a2, 0
	ld.d	$a3, $sp, 8
	ld.w	$a3, $a3, 0
	pcaddu18i	$ra, %call36(_ZNKSt8functionIFvPhS0_jEEclES0_S0_j)
	jirl	$ra, $ra, 0
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end12:
	.size	_ZL18callThroughOptnoneIRSt8functionIFvPhS1_jEEJS1_RS1_RjEEvOT_DpOT0_, .Lfunc_end12-_ZL18callThroughOptnoneIRSt8functionIFvPhS1_jEEJS1_RS1_RjEEvOT_DpOT0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt24uniform_int_distributionIhEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEhRT_RKNS0_10param_typeE,"axG",@progbits,_ZNSt24uniform_int_distributionIhEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEhRT_RKNS0_10param_typeE,comdat
	.weak	_ZNSt24uniform_int_distributionIhEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEhRT_RKNS0_10param_typeE # -- Begin function _ZNSt24uniform_int_distributionIhEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEhRT_RKNS0_10param_typeE
	.p2align	5
	.type	_ZNSt24uniform_int_distributionIhEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEhRT_RKNS0_10param_typeE,@function
_ZNSt24uniform_int_distributionIhEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEhRT_RKNS0_10param_typeE: # @_ZNSt24uniform_int_distributionIhEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEhRT_RKNS0_10param_typeE
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	move	$fp, $a2
	ld.bu	$a2, $a2, 1
	ld.bu	$a3, $fp, 0
	sub.d	$s2, $a2, $a3
	addi.w	$a2, $zero, -1
	lu32i.d	$a2, 0
	move	$s0, $a1
	bgeu	$s2, $a2, .LBB13_5
# %bb.1:
	addi.d	$s1, $s2, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv)
	jirl	$ra, $ra, 0
	mul.d	$a0, $a0, $s1
	addi.w	$a1, $a0, 0
	bltu	$s2, $a1, .LBB13_4
# %bb.2:
	nor	$a2, $s2, $zero
	mod.wu	$s2, $a2, $s1
	bgeu	$a1, $s2, .LBB13_4
	.p2align	4, , 16
.LBB13_3:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv)
	jirl	$ra, $ra, 0
	mul.d	$a0, $a0, $s1
	addi.w	$a1, $a0, 0
	bltu	$a1, $s2, .LBB13_3
.LBB13_4:                               # %_ZNSt24uniform_int_distributionIhE5_S_ndImSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEjEET1_RT0_S4_.exit
	srli.d	$a0, $a0, 32
	b	.LBB13_8
.LBB13_5:
	move	$s1, $a0
	lu12i.w	$a0, 15
	ori	$s3, $a0, 3840
	.p2align	4, , 16
.LBB13_6:                               # =>This Inner Loop Header: Depth=1
	st.h	$s3, $sp, 22
	addi.d	$a2, $sp, 22
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZNSt24uniform_int_distributionIhEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEhRT_RKNS0_10param_typeE)
	jirl	$ra, $ra, 0
	slli.d	$s4, $a0, 32
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv)
	jirl	$ra, $ra, 0
	add.d	$a0, $s4, $a0
	bltu	$s2, $a0, .LBB13_6
# %bb.7:                                #   in Loop: Header=BB13_6 Depth=1
	sltu	$a1, $a0, $s4
	bnez	$a1, .LBB13_6
.LBB13_8:                               # %.loopexit
	ld.b	$a1, $fp, 0
	add.d	$a0, $a1, $a0
	andi	$a0, $a0, 255
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end13:
	.size	_ZNSt24uniform_int_distributionIhEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEhRT_RKNS0_10param_typeE, .Lfunc_end13-_ZNSt24uniform_int_distributionIhEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEhRT_RKNS0_10param_typeE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv,"axG",@progbits,_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv,comdat
	.weak	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv # -- Begin function _ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv
	.p2align	5
	.type	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv,@function
_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv: # @_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv
	.cfi_startproc
# %bb.0:
	ldptr.d	$a2, $a0, 4992
	ori	$a1, $zero, 624
	bltu	$a2, $a1, .LBB14_6
# %bb.1:                                # %vector.ph
	ld.d	$a1, $a0, 0
	move	$a3, $zero
	vinsgr2vr.d	$vr5, $a1, 1
	lu12i.w	$a1, -524288
	vreplgr2vr.d	$vr0, $a1
	lu12i.w	$a1, 524287
	ori	$a2, $a1, 4094
	vreplgr2vr.d	$vr1, $a2
	ori	$a4, $zero, 3176
	ori	$a5, $zero, 3192
	vrepli.d	$vr2, 1
	vrepli.b	$vr3, -1
	lu12i.w	$a1, -421749
	ori	$a1, $a1, 223
	lu32i.d	$a1, 0
	vreplgr2vr.d	$vr4, $a1
	ori	$a6, $zero, 1792
	.p2align	4, , 16
.LBB14_2:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a7, $a0, $a3
	vld	$vr6, $a7, 8
	vori.b	$vr7, $vr5, 0
	vld	$vr5, $a7, 24
	vshuf4i.d	$vr7, $vr6, 9
	vand.v	$vr7, $vr7, $vr0
	vand.v	$vr8, $vr6, $vr1
	vand.v	$vr9, $vr6, $vr2
	vshuf4i.d	$vr6, $vr5, 9
	vand.v	$vr6, $vr6, $vr0
	vand.v	$vr10, $vr5, $vr1
	vor.v	$vr7, $vr8, $vr7
	vor.v	$vr6, $vr10, $vr6
	vldx	$vr8, $a7, $a4
	vldx	$vr10, $a7, $a5
	vsrli.d	$vr7, $vr7, 1
	vsrli.d	$vr6, $vr6, 1
	vxor.v	$vr7, $vr7, $vr8
	vxor.v	$vr6, $vr6, $vr10
	vand.v	$vr8, $vr5, $vr2
	vseqi.d	$vr9, $vr9, 0
	vxor.v	$vr9, $vr9, $vr3
	vand.v	$vr9, $vr9, $vr4
	vseqi.d	$vr8, $vr8, 0
	vxor.v	$vr8, $vr8, $vr3
	vand.v	$vr8, $vr8, $vr4
	vxor.v	$vr7, $vr7, $vr9
	vxor.v	$vr6, $vr6, $vr8
	vstx	$vr7, $a0, $a3
	addi.d	$a3, $a3, 32
	vst	$vr6, $a7, 16
	bne	$a3, $a6, .LBB14_2
# %bb.3:                                # %vector.ph13
	ld.d	$a3, $a0, 1800
	vpickve2gr.d	$a4, $vr5, 1
	ldptr.d	$a5, $a0, 4968
	and	$a6, $a3, $a2
	bstrins.d	$a4, $a6, 30, 0
	srli.d	$a4, $a4, 1
	xor	$a4, $a4, $a5
	andi	$a5, $a3, 1
	sub.d	$a5, $zero, $a5
	and	$a5, $a5, $a1
	ld.d	$a6, $a0, 1808
	xor	$a4, $a4, $a5
	st.d	$a4, $a0, 1792
	ldptr.d	$a4, $a0, 4976
	and	$a5, $a6, $a2
	bstrins.d	$a3, $a5, 30, 0
	srli.d	$a3, $a3, 1
	xor	$a3, $a3, $a4
	andi	$a4, $a6, 1
	sub.d	$a4, $zero, $a4
	and	$a4, $a4, $a1
	ld.d	$a5, $a0, 1816
	xor	$a3, $a3, $a4
	st.d	$a3, $a0, 1800
	ldptr.d	$a3, $a0, 4984
	and	$a2, $a5, $a2
	bstrins.d	$a6, $a2, 30, 0
	srli.d	$a2, $a6, 1
	xor	$a2, $a2, $a3
	andi	$a3, $a5, 1
	sub.d	$a3, $zero, $a3
	and	$a3, $a3, $a1
	xor	$a2, $a2, $a3
	st.d	$a2, $a0, 1808
	vinsgr2vr.d	$vr5, $a5, 1
	lu12i.w	$a2, -1
	ori	$a2, $a2, 928
	lu12i.w	$a5, 1
	ori	$a3, $a5, 896
	ori	$a4, $zero, 3168
	ori	$a5, $a5, 888
	.p2align	4, , 16
.LBB14_4:                               # %vector.body14
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a6, $a0, $a2
	vldx	$vr6, $a6, $a3
	vshuf4i.d	$vr5, $vr6, 9
	vand.v	$vr5, $vr5, $vr0
	vldx	$vr7, $a6, $a4
	vand.v	$vr8, $vr6, $vr1
	vor.v	$vr5, $vr8, $vr5
	vsrli.d	$vr5, $vr5, 1
	vxor.v	$vr5, $vr5, $vr7
	vand.v	$vr7, $vr6, $vr2
	vseqi.d	$vr7, $vr7, 0
	vxor.v	$vr7, $vr7, $vr3
	vand.v	$vr7, $vr7, $vr4
	vxor.v	$vr5, $vr5, $vr7
	addi.d	$a2, $a2, 16
	vstx	$vr5, $a6, $a5
	vori.b	$vr5, $vr6, 0
	bnez	$a2, .LBB14_4
# %bb.5:                                # %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit
	ld.d	$a3, $a0, 0
	move	$a2, $zero
	ldptr.d	$a4, $a0, 4984
	bstrpick.d	$a5, $a3, 30, 1
	ldptr.d	$a6, $a0, 3168
	slli.d	$a5, $a5, 1
	bstrins.d	$a4, $a5, 30, 0
	srli.d	$a4, $a4, 1
	xor	$a4, $a4, $a6
	andi	$a3, $a3, 1
	sub.d	$a3, $zero, $a3
	and	$a1, $a3, $a1
	xor	$a1, $a4, $a1
	stptr.d	$a1, $a0, 4984
.LBB14_6:
	addi.d	$a1, $a2, 1
	stptr.d	$a1, $a0, 4992
	slli.d	$a1, $a2, 3
	ldx.d	$a0, $a0, $a1
	bstrpick.d	$a1, $a0, 42, 11
	xor	$a0, $a1, $a0
	slli.d	$a1, $a0, 7
	lu12i.w	$a2, -404795
	ori	$a2, $a2, 1664
	lu32i.d	$a2, 0
	and	$a1, $a1, $a2
	xor	$a0, $a1, $a0
	slli.d	$a1, $a0, 15
	lu12i.w	$a2, -66464
	lu32i.d	$a2, 0
	and	$a1, $a1, $a2
	xor	$a0, $a1, $a0
	srli.d	$a1, $a0, 18
	xor	$a0, $a1, $a0
	ret
.Lfunc_end14:
	.size	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv, .Lfunc_end14-_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv
	.cfi_endproc
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_0E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.type	_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_0E9_M_invokeERKSt9_Any_dataOS0_S7_Oj,@function
_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_0E9_M_invokeERKSt9_Any_dataOS0_S7_Oj: # @"_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_0E9_M_invokeERKSt9_Any_dataOS0_S7_Oj"
# %bb.0:
	ld.wu	$a0, $a3, 0
	beqz	$a0, .LBB15_3
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	.p2align	4, , 16
.LBB15_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a3, $a2, 0
	addi.d	$a3, $a3, 10
	st.b	$a3, $a1, 0
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 1
	addi.d	$a2, $a2, 1
	bnez	$a0, .LBB15_2
.LBB15_3:                               # %"_ZSt10__invoke_rIvRZ4mainE3$_0JPhS2_jEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end15:
	.size	_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_0E9_M_invokeERKSt9_Any_dataOS0_S7_Oj, .Lfunc_end15-_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_0E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB16_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB16_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB16_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE3$_0)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE3$_0)
.LBB16_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end16:
	.size	_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end16-_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_1E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.type	_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_1E9_M_invokeERKSt9_Any_dataOS0_S7_Oj,@function
_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_1E9_M_invokeERKSt9_Any_dataOS0_S7_Oj: # @"_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_1E9_M_invokeERKSt9_Any_dataOS0_S7_Oj"
# %bb.0:
	ld.w	$a4, $a3, 0
	beqz	$a4, .LBB17_14
# %bb.1:                                # %iter.check
	ld.d	$a0, $a1, 0
	ld.d	$a1, $a2, 0
	move	$a3, $zero
	ori	$a5, $zero, 16
	bstrpick.d	$a2, $a4, 31, 0
	bltu	$a4, $a5, .LBB17_12
# %bb.2:                                # %iter.check
	sub.d	$a6, $a0, $a1
	ori	$a5, $zero, 32
	bltu	$a6, $a5, .LBB17_12
# %bb.3:                                # %vector.main.loop.iter.check
	bgeu	$a4, $a5, .LBB17_8
# %bb.4:
	move	$a3, $zero
.LBB17_5:                               # %vec.epilog.ph
	move	$a6, $a3
	bstrpick.d	$a3, $a2, 31, 4
	slli.d	$a3, $a3, 4
	sub.d	$a4, $a6, $a3
	add.d	$a5, $a0, $a6
	add.d	$a6, $a1, $a6
	.p2align	4, , 16
.LBB17_6:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a6, 0
	vaddi.bu	$vr0, $vr0, 10
	vst	$vr0, $a5, 0
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a5, 16
	addi.d	$a6, $a6, 16
	bnez	$a4, .LBB17_6
# %bb.7:                                # %vec.epilog.middle.block
	bne	$a3, $a2, .LBB17_12
	b	.LBB17_14
.LBB17_8:                               # %vector.ph
	bstrpick.d	$a3, $a2, 31, 5
	slli.d	$a3, $a3, 5
	addi.d	$a4, $a0, 16
	addi.d	$a5, $a1, 16
	move	$a6, $a3
	.p2align	4, , 16
.LBB17_9:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a5, -16
	vld	$vr1, $a5, 0
	vaddi.bu	$vr0, $vr0, 10
	vaddi.bu	$vr1, $vr1, 10
	vst	$vr0, $a4, -16
	vst	$vr1, $a4, 0
	addi.d	$a6, $a6, -32
	addi.d	$a4, $a4, 32
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB17_9
# %bb.10:                               # %middle.block
	beq	$a3, $a2, .LBB17_14
# %bb.11:                               # %vec.epilog.iter.check
	andi	$a4, $a2, 16
	bnez	$a4, .LBB17_5
.LBB17_12:                              # %.lr.ph.i.i.i.preheader
	sub.d	$a2, $a2, $a3
	add.d	$a0, $a0, $a3
	add.d	$a1, $a1, $a3
	.p2align	4, , 16
.LBB17_13:                              # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a3, $a1, 0
	addi.d	$a3, $a3, 10
	st.b	$a3, $a0, 0
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 1
	bnez	$a2, .LBB17_13
.LBB17_14:                              # %"_ZSt10__invoke_rIvRZ4mainE3$_1JPhS2_jEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end17:
	.size	_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_1E9_M_invokeERKSt9_Any_dataOS0_S7_Oj, .Lfunc_end17-_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_1E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB18_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB18_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB18_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE3$_1)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE3$_1)
.LBB18_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end18:
	.size	_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end18-_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt8functionIFvPjS0_jEEclES0_S0_j,"axG",@progbits,_ZNKSt8functionIFvPjS0_jEEclES0_S0_j,comdat
	.weak	_ZNKSt8functionIFvPjS0_jEEclES0_S0_j # -- Begin function _ZNKSt8functionIFvPjS0_jEEclES0_S0_j
	.p2align	5
	.type	_ZNKSt8functionIFvPjS0_jEEclES0_S0_j,@function
_ZNKSt8functionIFvPjS0_jEEclES0_S0_j:   # @_ZNKSt8functionIFvPjS0_jEEclES0_S0_j
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	ld.d	$a4, $a0, 16
	st.d	$a1, $sp, 16
	st.d	$a2, $sp, 8
	st.w	$a3, $sp, 4
	beqz	$a4, .LBB19_2
# %bb.1:
	ld.d	$a4, $a0, 24
	addi.d	$a1, $sp, 16
	addi.d	$a2, $sp, 8
	addi.d	$a3, $sp, 4
	jirl	$ra, $a4, 0
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB19_2:
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Lfunc_end19:
	.size	_ZNKSt8functionIFvPjS0_jEEclES0_S0_j, .Lfunc_end19-_ZNKSt8functionIFvPjS0_jEEclES0_S0_j
	.cfi_endproc
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZL18callThroughOptnoneIRSt8functionIFvPjS1_jEEJS1_RS1_RjEEvOT_DpOT0_
	.type	_ZL18callThroughOptnoneIRSt8functionIFvPjS1_jEEJS1_RS1_RjEEvOT_DpOT0_,@function
_ZL18callThroughOptnoneIRSt8functionIFvPjS1_jEEJS1_RS1_RjEEvOT_DpOT0_: # @_ZL18callThroughOptnoneIRSt8functionIFvPjS1_jEEJS1_RS1_RjEEvOT_DpOT0_
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -48
	.cfi_def_cfa_offset 48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	st.d	$a0, $sp, 32
	st.d	$a1, $sp, 24
	st.d	$a2, $sp, 16
	st.d	$a3, $sp, 8
	ld.d	$a0, $sp, 32
	ld.d	$a1, $sp, 24
	ld.d	$a1, $a1, 0
	ld.d	$a2, $sp, 16
	ld.d	$a2, $a2, 0
	ld.d	$a3, $sp, 8
	ld.w	$a3, $a3, 0
	pcaddu18i	$ra, %call36(_ZNKSt8functionIFvPjS0_jEEclES0_S0_j)
	jirl	$ra, $ra, 0
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end20:
	.size	_ZL18callThroughOptnoneIRSt8functionIFvPjS1_jEEJS1_RS1_RjEEvOT_DpOT0_, .Lfunc_end20-_ZL18callThroughOptnoneIRSt8functionIFvPjS1_jEEJS1_RS1_RjEEvOT_DpOT0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt24uniform_int_distributionIjEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEjRT_RKNS0_10param_typeE,"axG",@progbits,_ZNSt24uniform_int_distributionIjEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEjRT_RKNS0_10param_typeE,comdat
	.weak	_ZNSt24uniform_int_distributionIjEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEjRT_RKNS0_10param_typeE # -- Begin function _ZNSt24uniform_int_distributionIjEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEjRT_RKNS0_10param_typeE
	.p2align	5
	.type	_ZNSt24uniform_int_distributionIjEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEjRT_RKNS0_10param_typeE,@function
_ZNSt24uniform_int_distributionIjEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEjRT_RKNS0_10param_typeE: # @_ZNSt24uniform_int_distributionIjEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEjRT_RKNS0_10param_typeE
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	move	$fp, $a2
	ld.wu	$a2, $a2, 4
	ld.wu	$a3, $fp, 0
	sub.d	$s2, $a2, $a3
	addi.w	$a2, $zero, -2
	lu32i.d	$a2, 0
	move	$s0, $a1
	bltu	$a2, $s2, .LBB21_5
# %bb.1:
	addi.w	$s4, $s2, 0
	addi.w	$s3, $s2, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv)
	jirl	$ra, $ra, 0
	bstrpick.d	$s1, $s3, 31, 0
	mul.d	$a0, $a0, $s1
	addi.w	$a1, $a0, 0
	bltu	$s4, $a1, .LBB21_4
# %bb.2:
	nor	$a2, $s2, $zero
	addi.w	$a2, $a2, 0
	mod.wu	$s2, $a2, $s3
	bgeu	$a1, $s2, .LBB21_4
	.p2align	4, , 16
.LBB21_3:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv)
	jirl	$ra, $ra, 0
	mul.d	$a0, $a0, $s1
	addi.w	$a1, $a0, 0
	bltu	$a1, $s2, .LBB21_3
.LBB21_4:                               # %_ZNSt24uniform_int_distributionIjE5_S_ndImSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEjEET1_RT0_S4_.exit
	srli.d	$a0, $a0, 32
	b	.LBB21_10
.LBB21_5:
	move	$s1, $a0
	addi.w	$a0, $zero, -1
	lu32i.d	$a0, 0
	bne	$s2, $a0, .LBB21_7
# %bb.6:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv)
	jirl	$ra, $ra, 0
	b	.LBB21_10
.LBB21_7:                               # %.preheader
	ori	$s3, $zero, 0
	lu32i.d	$s3, -1
	.p2align	4, , 16
.LBB21_8:                               # =>This Inner Loop Header: Depth=1
	st.d	$s3, $sp, 16
	addi.d	$a2, $sp, 16
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZNSt24uniform_int_distributionIjEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEjRT_RKNS0_10param_typeE)
	jirl	$ra, $ra, 0
	slli.d	$s4, $a0, 32
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv)
	jirl	$ra, $ra, 0
	add.d	$a0, $s4, $a0
	bltu	$s2, $a0, .LBB21_8
# %bb.9:                                #   in Loop: Header=BB21_8 Depth=1
	sltu	$a1, $a0, $s4
	bnez	$a1, .LBB21_8
.LBB21_10:                              # %.loopexit
	ld.w	$a1, $fp, 0
	add.w	$a0, $a1, $a0
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end21:
	.size	_ZNSt24uniform_int_distributionIjEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEjRT_RKNS0_10param_typeE, .Lfunc_end21-_ZNSt24uniform_int_distributionIjEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEjRT_RKNS0_10param_typeE
	.cfi_endproc
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_0E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.type	_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_0E9_M_invokeERKSt9_Any_dataOS0_S7_Oj,@function
_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_0E9_M_invokeERKSt9_Any_dataOS0_S7_Oj: # @"_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_0E9_M_invokeERKSt9_Any_dataOS0_S7_Oj"
# %bb.0:
	ld.wu	$a0, $a3, 0
	beqz	$a0, .LBB22_3
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	.p2align	4, , 16
.LBB22_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a2, 0
	addi.d	$a3, $a3, 10
	st.w	$a3, $a1, 0
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, 4
	bnez	$a0, .LBB22_2
.LBB22_3:                               # %"_ZSt10__invoke_rIvRZ4mainE3$_0JPjS2_jEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end22:
	.size	_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_0E9_M_invokeERKSt9_Any_dataOS0_S7_Oj, .Lfunc_end22-_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_0E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB23_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB23_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB23_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE3$_0)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE3$_0)
.LBB23_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end23:
	.size	_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end23-_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_1E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.type	_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_1E9_M_invokeERKSt9_Any_dataOS0_S7_Oj,@function
_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_1E9_M_invokeERKSt9_Any_dataOS0_S7_Oj: # @"_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_1E9_M_invokeERKSt9_Any_dataOS0_S7_Oj"
# %bb.0:
	ld.w	$a4, $a3, 0
	beqz	$a4, .LBB24_8
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a0, $a1, 0
	ld.d	$a1, $a2, 0
	move	$a2, $zero
	ori	$a5, $zero, 8
	bstrpick.d	$a3, $a4, 31, 0
	bltu	$a4, $a5, .LBB24_6
# %bb.2:                                # %.lr.ph.preheader.i.i.i
	sub.d	$a4, $a0, $a1
	ori	$a5, $zero, 32
	bltu	$a4, $a5, .LBB24_6
# %bb.3:                                # %vector.ph
	bstrpick.d	$a2, $a3, 31, 3
	slli.d	$a2, $a2, 3
	addi.d	$a4, $a0, 16
	addi.d	$a5, $a1, 16
	move	$a6, $a2
	.p2align	4, , 16
.LBB24_4:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a5, -16
	vld	$vr1, $a5, 0
	vaddi.wu	$vr0, $vr0, 10
	vaddi.wu	$vr1, $vr1, 10
	vst	$vr0, $a4, -16
	vst	$vr1, $a4, 0
	addi.d	$a6, $a6, -8
	addi.d	$a4, $a4, 32
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB24_4
# %bb.5:                                # %middle.block
	beq	$a2, $a3, .LBB24_8
.LBB24_6:                               # %.lr.ph.i.i.i.preheader
	sub.d	$a3, $a3, $a2
	alsl.d	$a0, $a2, $a0, 2
	alsl.d	$a1, $a2, $a1, 2
	.p2align	4, , 16
.LBB24_7:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $a1, 0
	addi.d	$a2, $a2, 10
	st.w	$a2, $a0, 0
	addi.d	$a3, $a3, -1
	addi.d	$a0, $a0, 4
	addi.d	$a1, $a1, 4
	bnez	$a3, .LBB24_7
.LBB24_8:                               # %"_ZSt10__invoke_rIvRZ4mainE3$_1JPjS2_jEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end24:
	.size	_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_1E9_M_invokeERKSt9_Any_dataOS0_S7_Oj, .Lfunc_end24-_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_1E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB25_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB25_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB25_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE3$_1)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE3$_1)
.LBB25_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end25:
	.size	_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end25-_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt8functionIFvPmS0_jEEclES0_S0_j,"axG",@progbits,_ZNKSt8functionIFvPmS0_jEEclES0_S0_j,comdat
	.weak	_ZNKSt8functionIFvPmS0_jEEclES0_S0_j # -- Begin function _ZNKSt8functionIFvPmS0_jEEclES0_S0_j
	.p2align	5
	.type	_ZNKSt8functionIFvPmS0_jEEclES0_S0_j,@function
_ZNKSt8functionIFvPmS0_jEEclES0_S0_j:   # @_ZNKSt8functionIFvPmS0_jEEclES0_S0_j
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	ld.d	$a4, $a0, 16
	st.d	$a1, $sp, 16
	st.d	$a2, $sp, 8
	st.w	$a3, $sp, 4
	beqz	$a4, .LBB26_2
# %bb.1:
	ld.d	$a4, $a0, 24
	addi.d	$a1, $sp, 16
	addi.d	$a2, $sp, 8
	addi.d	$a3, $sp, 4
	jirl	$ra, $a4, 0
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB26_2:
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Lfunc_end26:
	.size	_ZNKSt8functionIFvPmS0_jEEclES0_S0_j, .Lfunc_end26-_ZNKSt8functionIFvPmS0_jEEclES0_S0_j
	.cfi_endproc
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZL18callThroughOptnoneIRSt8functionIFvPmS1_jEEJS1_RS1_RjEEvOT_DpOT0_
	.type	_ZL18callThroughOptnoneIRSt8functionIFvPmS1_jEEJS1_RS1_RjEEvOT_DpOT0_,@function
_ZL18callThroughOptnoneIRSt8functionIFvPmS1_jEEJS1_RS1_RjEEvOT_DpOT0_: # @_ZL18callThroughOptnoneIRSt8functionIFvPmS1_jEEJS1_RS1_RjEEvOT_DpOT0_
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -48
	.cfi_def_cfa_offset 48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	st.d	$a0, $sp, 32
	st.d	$a1, $sp, 24
	st.d	$a2, $sp, 16
	st.d	$a3, $sp, 8
	ld.d	$a0, $sp, 32
	ld.d	$a1, $sp, 24
	ld.d	$a1, $a1, 0
	ld.d	$a2, $sp, 16
	ld.d	$a2, $a2, 0
	ld.d	$a3, $sp, 8
	ld.w	$a3, $a3, 0
	pcaddu18i	$ra, %call36(_ZNKSt8functionIFvPmS0_jEEclES0_S0_j)
	jirl	$ra, $ra, 0
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end27:
	.size	_ZL18callThroughOptnoneIRSt8functionIFvPmS1_jEEJS1_RS1_RjEEvOT_DpOT0_, .Lfunc_end27-_ZL18callThroughOptnoneIRSt8functionIFvPmS1_jEEJS1_RS1_RjEEvOT_DpOT0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE,"axG",@progbits,_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE,comdat
	.weak	_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE # -- Begin function _ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE
	.p2align	5
	.type	_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE,@function
_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE: # @_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	move	$fp, $a2
	ld.d	$a2, $a2, 8
	ld.d	$a3, $fp, 0
	sub.d	$s2, $a2, $a3
	addi.w	$a2, $zero, -2
	lu32i.d	$a2, 0
	move	$s0, $a1
	bltu	$a2, $s2, .LBB28_5
# %bb.1:
	addi.w	$s4, $s2, 0
	addi.w	$s3, $s2, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv)
	jirl	$ra, $ra, 0
	bstrpick.d	$s1, $s3, 31, 0
	mul.d	$a0, $a0, $s1
	addi.w	$a1, $a0, 0
	bltu	$s4, $a1, .LBB28_4
# %bb.2:
	nor	$a2, $s2, $zero
	addi.w	$a2, $a2, 0
	mod.wu	$s2, $a2, $s3
	bgeu	$a1, $s2, .LBB28_4
	.p2align	4, , 16
.LBB28_3:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv)
	jirl	$ra, $ra, 0
	mul.d	$a0, $a0, $s1
	addi.w	$a1, $a0, 0
	bltu	$a1, $s2, .LBB28_3
.LBB28_4:                               # %_ZNSt24uniform_int_distributionImE5_S_ndImSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEjEET1_RT0_S4_.exit
	srli.d	$a0, $a0, 32
	b	.LBB28_10
.LBB28_5:
	move	$s1, $a0
	addi.w	$a0, $zero, -1
	lu32i.d	$a0, 0
	bne	$s2, $a0, .LBB28_7
# %bb.6:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv)
	jirl	$ra, $ra, 0
	b	.LBB28_10
.LBB28_7:                               # %.preheader
	srli.d	$s3, $s2, 32
	.p2align	4, , 16
.LBB28_8:                               # =>This Inner Loop Header: Depth=1
	st.d	$zero, $sp, 8
	st.d	$s3, $sp, 16
	addi.d	$a2, $sp, 8
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE)
	jirl	$ra, $ra, 0
	slli.d	$s4, $a0, 32
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	add.d	$a0, $a0, $s4
	bltu	$s2, $a0, .LBB28_8
# %bb.9:                                #   in Loop: Header=BB28_8 Depth=1
	sltu	$a1, $a0, $a1
	bnez	$a1, .LBB28_8
.LBB28_10:                              # %.loopexit
	ld.d	$a1, $fp, 0
	add.d	$a0, $a1, $a0
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
	.size	_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE, .Lfunc_end28-_ZNSt24uniform_int_distributionImEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEmRT_RKNS0_10param_typeE
	.cfi_endproc
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_0E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.type	_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_0E9_M_invokeERKSt9_Any_dataOS0_S7_Oj,@function
_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_0E9_M_invokeERKSt9_Any_dataOS0_S7_Oj: # @"_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_0E9_M_invokeERKSt9_Any_dataOS0_S7_Oj"
# %bb.0:
	ld.wu	$a0, $a3, 0
	beqz	$a0, .LBB29_3
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	.p2align	4, , 16
.LBB29_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a2, 0
	addi.d	$a3, $a3, 10
	st.d	$a3, $a1, 0
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, 8
	bnez	$a0, .LBB29_2
.LBB29_3:                               # %"_ZSt10__invoke_rIvRZ4mainE3$_0JPmS2_jEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end29:
	.size	_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_0E9_M_invokeERKSt9_Any_dataOS0_S7_Oj, .Lfunc_end29-_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_0E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB30_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB30_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB30_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE3$_0)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE3$_0)
.LBB30_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end30:
	.size	_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end30-_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_1E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.type	_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_1E9_M_invokeERKSt9_Any_dataOS0_S7_Oj,@function
_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_1E9_M_invokeERKSt9_Any_dataOS0_S7_Oj: # @"_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_1E9_M_invokeERKSt9_Any_dataOS0_S7_Oj"
# %bb.0:
	ld.w	$a4, $a3, 0
	beqz	$a4, .LBB31_8
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a0, $a1, 0
	ld.d	$a1, $a2, 0
	move	$a2, $zero
	ori	$a5, $zero, 4
	bstrpick.d	$a3, $a4, 31, 0
	bltu	$a4, $a5, .LBB31_6
# %bb.2:                                # %.lr.ph.preheader.i.i.i
	sub.d	$a4, $a0, $a1
	ori	$a5, $zero, 32
	bltu	$a4, $a5, .LBB31_6
# %bb.3:                                # %vector.ph
	bstrpick.d	$a2, $a3, 31, 2
	slli.d	$a2, $a2, 2
	addi.d	$a4, $a0, 16
	addi.d	$a5, $a1, 16
	move	$a6, $a2
	.p2align	4, , 16
.LBB31_4:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a5, -16
	vld	$vr1, $a5, 0
	vaddi.du	$vr0, $vr0, 10
	vaddi.du	$vr1, $vr1, 10
	vst	$vr0, $a4, -16
	vst	$vr1, $a4, 0
	addi.d	$a6, $a6, -4
	addi.d	$a4, $a4, 32
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB31_4
# %bb.5:                                # %middle.block
	beq	$a2, $a3, .LBB31_8
.LBB31_6:                               # %.lr.ph.i.i.i.preheader
	sub.d	$a3, $a3, $a2
	alsl.d	$a0, $a2, $a0, 3
	alsl.d	$a1, $a2, $a1, 3
	.p2align	4, , 16
.LBB31_7:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a1, 0
	addi.d	$a2, $a2, 10
	st.d	$a2, $a0, 0
	addi.d	$a3, $a3, -1
	addi.d	$a0, $a0, 8
	addi.d	$a1, $a1, 8
	bnez	$a3, .LBB31_7
.LBB31_8:                               # %"_ZSt10__invoke_rIvRZ4mainE3$_1JPmS2_jEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end31:
	.size	_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_1E9_M_invokeERKSt9_Any_dataOS0_S7_Oj, .Lfunc_end31-_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_1E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB32_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB32_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB32_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE3$_1)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE3$_1)
.LBB32_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end32:
	.size	_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end32-_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_2E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.type	_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_2E9_M_invokeERKSt9_Any_dataOS0_S7_Oj,@function
_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_2E9_M_invokeERKSt9_Any_dataOS0_S7_Oj: # @"_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_2E9_M_invokeERKSt9_Any_dataOS0_S7_Oj"
# %bb.0:
	ld.wu	$a0, $a3, 0
	beqz	$a0, .LBB33_3
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	move	$a3, $zero
	.p2align	4, , 16
.LBB33_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a4, $a3, 3
	bstrpick.d	$a4, $a4, 31, 0
	ldx.b	$a4, $a2, $a4
	addi.d	$a4, $a4, 10
	stx.b	$a4, $a1, $a3
	addi.d	$a3, $a3, 1
	bne	$a0, $a3, .LBB33_2
.LBB33_3:                               # %"_ZSt10__invoke_rIvRZ4mainE3$_2JPhS2_jEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end33:
	.size	_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_2E9_M_invokeERKSt9_Any_dataOS0_S7_Oj, .Lfunc_end33-_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_2E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_2E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_2E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_2E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_2E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB34_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB34_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_2E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB34_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE3$_2)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE3$_2)
.LBB34_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_2E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end34:
	.size	_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_2E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end34-_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_2E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_3E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.type	_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_3E9_M_invokeERKSt9_Any_dataOS0_S7_Oj,@function
_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_3E9_M_invokeERKSt9_Any_dataOS0_S7_Oj: # @"_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_3E9_M_invokeERKSt9_Any_dataOS0_S7_Oj"
# %bb.0:
	ld.w	$a4, $a3, 0
	beqz	$a4, .LBB35_4
# %bb.1:                                # %iter.check
	ld.d	$a0, $a1, 0
	ld.d	$a1, $a2, 0
	ori	$a3, $zero, 8
	bstrpick.d	$a2, $a4, 31, 0
	bgeu	$a4, $a3, .LBB35_5
# %bb.2:
	move	$a3, $zero
	.p2align	4, , 16
.LBB35_3:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a4, $a3, 3
	bstrpick.d	$a4, $a4, 31, 0
	ldx.b	$a4, $a1, $a4
	addi.d	$a4, $a4, 10
	stx.b	$a4, $a0, $a3
	addi.d	$a3, $a3, 1
	bne	$a2, $a3, .LBB35_3
.LBB35_4:                               # %"_ZSt10__invoke_rIvRZ4mainE3$_3JPhS2_jEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.LBB35_5:                               # %vector.scevcheck
	addi.d	$a5, $a2, -1
	addi.w	$a6, $a5, 0
	addi.w	$a7, $zero, -4
	move	$a3, $zero
	bltu	$a7, $a6, .LBB35_3
# %bb.6:                                # %vector.scevcheck
	srli.d	$a5, $a5, 32
	bnez	$a5, .LBB35_3
# %bb.7:                                # %vector.memcheck
	sub.d	$a3, $a0, $a1
	addi.d	$a5, $a3, -3
	ori	$a3, $zero, 32
	bgeu	$a5, $a3, .LBB35_9
# %bb.8:
	move	$a3, $zero
	b	.LBB35_3
.LBB35_9:                               # %vector.main.loop.iter.check
	bgeu	$a4, $a3, .LBB35_11
# %bb.10:
	move	$a3, $zero
	b	.LBB35_15
.LBB35_11:                              # %vector.ph
	bstrpick.d	$a3, $a2, 31, 5
	slli.d	$a3, $a3, 5
	addi.d	$a4, $a1, 19
	addi.d	$a5, $a0, 16
	move	$a6, $a3
	.p2align	4, , 16
.LBB35_12:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a4, -16
	vld	$vr1, $a4, 0
	vaddi.bu	$vr0, $vr0, 10
	vaddi.bu	$vr1, $vr1, 10
	vst	$vr0, $a5, -16
	vst	$vr1, $a5, 0
	addi.d	$a4, $a4, 32
	addi.d	$a6, $a6, -32
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB35_12
# %bb.13:                               # %middle.block
	beq	$a3, $a2, .LBB35_4
# %bb.14:                               # %vec.epilog.iter.check
	andi	$a4, $a2, 24
	beqz	$a4, .LBB35_3
.LBB35_15:                              # %vec.epilog.ph
	move	$a4, $a3
	bstrpick.d	$a3, $a2, 31, 3
	slli.d	$a3, $a3, 3
	.p2align	4, , 16
.LBB35_16:                              # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a5, $a4, 31, 3
	alsl.d	$a5, $a5, $a1, 3
	ld.d	$a5, $a5, 3
	vinsgr2vr.d	$vr0, $a5, 0
	vaddi.bu	$vr0, $vr0, 10
	add.d	$a5, $a0, $a4
	addi.d	$a4, $a4, 8
	vstelm.d	$vr0, $a5, 0, 0
	bne	$a3, $a4, .LBB35_16
# %bb.17:                               # %vec.epilog.middle.block
	bne	$a3, $a2, .LBB35_3
	b	.LBB35_4
.Lfunc_end35:
	.size	_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_3E9_M_invokeERKSt9_Any_dataOS0_S7_Oj, .Lfunc_end35-_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_3E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_3E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_3E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_3E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_3E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB36_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB36_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_3E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB36_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE3$_3)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE3$_3)
.LBB36_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_3E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end36:
	.size	_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_3E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end36-_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_3E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_2E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.type	_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_2E9_M_invokeERKSt9_Any_dataOS0_S7_Oj,@function
_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_2E9_M_invokeERKSt9_Any_dataOS0_S7_Oj: # @"_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_2E9_M_invokeERKSt9_Any_dataOS0_S7_Oj"
# %bb.0:
	ld.wu	$a0, $a3, 0
	beqz	$a0, .LBB37_3
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	move	$a3, $zero
	.p2align	4, , 16
.LBB37_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a4, $a3, 3
	bstrpick.d	$a4, $a4, 31, 0
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a2, $a4
	addi.d	$a4, $a4, 10
	st.w	$a4, $a1, 0
	addi.d	$a3, $a3, 1
	addi.d	$a1, $a1, 4
	bne	$a0, $a3, .LBB37_2
.LBB37_3:                               # %"_ZSt10__invoke_rIvRZ4mainE3$_2JPjS2_jEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end37:
	.size	_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_2E9_M_invokeERKSt9_Any_dataOS0_S7_Oj, .Lfunc_end37-_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_2E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_2E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_2E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_2E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_2E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB38_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB38_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_2E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB38_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE3$_2)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE3$_2)
.LBB38_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_2E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end38:
	.size	_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_2E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end38-_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_2E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_3E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.type	_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_3E9_M_invokeERKSt9_Any_dataOS0_S7_Oj,@function
_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_3E9_M_invokeERKSt9_Any_dataOS0_S7_Oj: # @"_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_3E9_M_invokeERKSt9_Any_dataOS0_S7_Oj"
# %bb.0:
	ld.w	$a4, $a3, 0
	beqz	$a4, .LBB39_5
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a3, $a1, 0
	ld.d	$a0, $a2, 0
	ori	$a2, $zero, 8
	bstrpick.d	$a1, $a4, 31, 0
	bgeu	$a4, $a2, .LBB39_6
.LBB39_2:
	move	$a2, $zero
.LBB39_3:                               # %.lr.ph.i.i.i.preheader
	alsl.d	$a3, $a2, $a3, 2
	.p2align	4, , 16
.LBB39_4:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a4, $a2, 3
	bstrpick.d	$a4, $a4, 31, 0
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a0, $a4
	addi.d	$a4, $a4, 10
	st.w	$a4, $a3, 0
	addi.d	$a2, $a2, 1
	addi.d	$a3, $a3, 4
	bne	$a1, $a2, .LBB39_4
.LBB39_5:                               # %"_ZSt10__invoke_rIvRZ4mainE3$_3JPjS2_jEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.LBB39_6:                               # %vector.scevcheck
	addi.d	$a4, $a1, -1
	addi.w	$a5, $a4, 0
	addi.w	$a6, $zero, -4
	move	$a2, $zero
	bltu	$a6, $a5, .LBB39_3
# %bb.7:                                # %vector.scevcheck
	srli.d	$a4, $a4, 32
	bnez	$a4, .LBB39_3
# %bb.8:                                # %vector.memcheck
	sub.d	$a2, $a3, $a0
	addi.d	$a2, $a2, -12
	ori	$a4, $zero, 32
	bltu	$a2, $a4, .LBB39_2
# %bb.9:                                # %vector.ph
	bstrpick.d	$a2, $a1, 31, 3
	slli.d	$a2, $a2, 3
	addi.d	$a4, $a0, 28
	addi.d	$a5, $a3, 16
	move	$a6, $a2
	.p2align	4, , 16
.LBB39_10:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a4, -16
	vld	$vr1, $a4, 0
	vaddi.wu	$vr0, $vr0, 10
	vaddi.wu	$vr1, $vr1, 10
	vst	$vr0, $a5, -16
	vst	$vr1, $a5, 0
	addi.d	$a4, $a4, 32
	addi.d	$a6, $a6, -8
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB39_10
# %bb.11:                               # %middle.block
	bne	$a2, $a1, .LBB39_3
	b	.LBB39_5
.Lfunc_end39:
	.size	_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_3E9_M_invokeERKSt9_Any_dataOS0_S7_Oj, .Lfunc_end39-_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_3E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_3E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_3E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_3E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_3E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB40_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB40_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_3E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB40_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE3$_3)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE3$_3)
.LBB40_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_3E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end40:
	.size	_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_3E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end40-_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_3E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_2E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.type	_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_2E9_M_invokeERKSt9_Any_dataOS0_S7_Oj,@function
_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_2E9_M_invokeERKSt9_Any_dataOS0_S7_Oj: # @"_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_2E9_M_invokeERKSt9_Any_dataOS0_S7_Oj"
# %bb.0:
	ld.wu	$a0, $a3, 0
	beqz	$a0, .LBB41_3
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	move	$a3, $zero
	.p2align	4, , 16
.LBB41_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a4, $a3, 3
	bstrpick.d	$a4, $a4, 31, 0
	slli.d	$a4, $a4, 3
	ldx.d	$a4, $a2, $a4
	addi.d	$a4, $a4, 10
	st.d	$a4, $a1, 0
	addi.d	$a3, $a3, 1
	addi.d	$a1, $a1, 8
	bne	$a0, $a3, .LBB41_2
.LBB41_3:                               # %"_ZSt10__invoke_rIvRZ4mainE3$_2JPmS2_jEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end41:
	.size	_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_2E9_M_invokeERKSt9_Any_dataOS0_S7_Oj, .Lfunc_end41-_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_2E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_2E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_2E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_2E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_2E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB42_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB42_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_2E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB42_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE3$_2)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE3$_2)
.LBB42_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_2E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end42:
	.size	_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_2E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end42-_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_2E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_3E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.type	_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_3E9_M_invokeERKSt9_Any_dataOS0_S7_Oj,@function
_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_3E9_M_invokeERKSt9_Any_dataOS0_S7_Oj: # @"_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_3E9_M_invokeERKSt9_Any_dataOS0_S7_Oj"
# %bb.0:
	ld.w	$a4, $a3, 0
	beqz	$a4, .LBB43_5
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a3, $a1, 0
	ld.d	$a0, $a2, 0
	ori	$a2, $zero, 4
	bstrpick.d	$a1, $a4, 31, 0
	bgeu	$a4, $a2, .LBB43_6
.LBB43_2:
	move	$a2, $zero
.LBB43_3:                               # %.lr.ph.i.i.i.preheader
	alsl.d	$a3, $a2, $a3, 3
	.p2align	4, , 16
.LBB43_4:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a4, $a2, 3
	bstrpick.d	$a4, $a4, 31, 0
	slli.d	$a4, $a4, 3
	ldx.d	$a4, $a0, $a4
	addi.d	$a4, $a4, 10
	st.d	$a4, $a3, 0
	addi.d	$a2, $a2, 1
	addi.d	$a3, $a3, 8
	bne	$a1, $a2, .LBB43_4
.LBB43_5:                               # %"_ZSt10__invoke_rIvRZ4mainE3$_3JPmS2_jEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.LBB43_6:                               # %vector.scevcheck
	addi.d	$a4, $a1, -1
	addi.w	$a5, $a4, 0
	addi.w	$a6, $zero, -4
	move	$a2, $zero
	bltu	$a6, $a5, .LBB43_3
# %bb.7:                                # %vector.scevcheck
	srli.d	$a4, $a4, 32
	bnez	$a4, .LBB43_3
# %bb.8:                                # %vector.memcheck
	sub.d	$a2, $a3, $a0
	addi.d	$a2, $a2, -24
	ori	$a4, $zero, 32
	bltu	$a2, $a4, .LBB43_2
# %bb.9:                                # %vector.ph
	bstrpick.d	$a2, $a1, 31, 2
	slli.d	$a2, $a2, 2
	addi.d	$a4, $a0, 40
	addi.d	$a5, $a3, 16
	move	$a6, $a2
	.p2align	4, , 16
.LBB43_10:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a4, -16
	vld	$vr1, $a4, 0
	vaddi.du	$vr0, $vr0, 10
	vaddi.du	$vr1, $vr1, 10
	vst	$vr0, $a5, -16
	vst	$vr1, $a5, 0
	addi.d	$a4, $a4, 32
	addi.d	$a6, $a6, -4
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB43_10
# %bb.11:                               # %middle.block
	bne	$a2, $a1, .LBB43_3
	b	.LBB43_5
.Lfunc_end43:
	.size	_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_3E9_M_invokeERKSt9_Any_dataOS0_S7_Oj, .Lfunc_end43-_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_3E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_3E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_3E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_3E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_3E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB44_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB44_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_3E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB44_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE3$_3)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE3$_3)
.LBB44_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_3E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end44:
	.size	_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_3E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end44-_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_3E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_4E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.type	_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_4E9_M_invokeERKSt9_Any_dataOS0_S7_Oj,@function
_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_4E9_M_invokeERKSt9_Any_dataOS0_S7_Oj: # @"_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_4E9_M_invokeERKSt9_Any_dataOS0_S7_Oj"
# %bb.0:
	ld.wu	$a3, $a3, 0
	ori	$a0, $zero, 4
	bltu	$a3, $a0, .LBB45_3
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a4, $a1, 0
	ld.d	$a0, $a2, 0
	addi.d	$a1, $a3, -3
	addi.d	$a2, $a4, 3
	.p2align	4, , 16
.LBB45_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a3, $a0, 0
	addi.d	$a3, $a3, 10
	st.b	$a3, $a2, 0
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 1
	addi.d	$a0, $a0, 1
	bnez	$a1, .LBB45_2
.LBB45_3:                               # %"_ZSt10__invoke_rIvRZ4mainE3$_4JPhS2_jEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end45:
	.size	_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_4E9_M_invokeERKSt9_Any_dataOS0_S7_Oj, .Lfunc_end45-_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_4E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB46_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB46_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB46_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE3$_4)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE3$_4)
.LBB46_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end46:
	.size	_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end46-_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_5E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.type	_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_5E9_M_invokeERKSt9_Any_dataOS0_S7_Oj,@function
_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_5E9_M_invokeERKSt9_Any_dataOS0_S7_Oj: # @"_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_5E9_M_invokeERKSt9_Any_dataOS0_S7_Oj"
# %bb.0:
	ld.wu	$a0, $a3, 0
	ori	$a3, $zero, 4
	bltu	$a0, $a3, .LBB47_15
# %bb.1:                                # %iter.check
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	addi.d	$a3, $a0, -3
	ori	$a4, $zero, 16
	ori	$a5, $zero, 3
	bltu	$a3, $a4, .LBB47_13
# %bb.2:                                # %vector.memcheck
	sub.d	$a4, $a1, $a2
	addi.d	$a6, $a4, 3
	ori	$a4, $zero, 32
	bltu	$a6, $a4, .LBB47_13
# %bb.3:                                # %vector.main.loop.iter.check
	bgeu	$a3, $a4, .LBB47_8
# %bb.4:
	move	$a4, $zero
.LBB47_5:                               # %vec.epilog.ph
	move	$a6, $a3
	bstrins.d	$a6, $zero, 3, 0
	ori	$a7, $zero, 3
	move	$a5, $a3
	bstrins.d	$a5, $a7, 3, 0
	add.d	$a7, $a2, $a4
	add.d	$t0, $a4, $a1
	addi.d	$t0, $t0, 3
	sub.d	$a4, $a4, $a6
	.p2align	4, , 16
.LBB47_6:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a7, 0
	vaddi.bu	$vr0, $vr0, 10
	vst	$vr0, $t0, 0
	addi.d	$a7, $a7, 16
	addi.d	$a4, $a4, 16
	addi.d	$t0, $t0, 16
	bnez	$a4, .LBB47_6
# %bb.7:                                # %vec.epilog.middle.block
	bne	$a3, $a6, .LBB47_13
	b	.LBB47_15
.LBB47_8:                               # %vector.ph
	move	$a4, $a3
	bstrins.d	$a4, $zero, 4, 0
	addi.d	$a5, $a2, 16
	addi.d	$a6, $a1, 19
	move	$a7, $a4
	.p2align	4, , 16
.LBB47_9:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a5, -16
	vld	$vr1, $a5, 0
	vaddi.bu	$vr0, $vr0, 10
	vaddi.bu	$vr1, $vr1, 10
	vst	$vr0, $a6, -16
	vst	$vr1, $a6, 0
	addi.d	$a5, $a5, 32
	addi.d	$a7, $a7, -32
	addi.d	$a6, $a6, 32
	bnez	$a7, .LBB47_9
# %bb.10:                               # %middle.block
	beq	$a3, $a4, .LBB47_15
# %bb.11:                               # %vec.epilog.iter.check
	andi	$a5, $a3, 16
	bnez	$a5, .LBB47_5
# %bb.12:
	addi.d	$a5, $a4, 3
.LBB47_13:                              # %.lr.ph.i.i.i.preheader
	sub.d	$a0, $a0, $a5
	add.d	$a1, $a1, $a5
	add.d	$a2, $a5, $a2
	addi.d	$a2, $a2, -3
	.p2align	4, , 16
.LBB47_14:                              # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a3, $a2, 0
	addi.d	$a3, $a3, 10
	st.b	$a3, $a1, 0
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 1
	addi.d	$a2, $a2, 1
	bnez	$a0, .LBB47_14
.LBB47_15:                              # %"_ZSt10__invoke_rIvRZ4mainE3$_5JPhS2_jEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end47:
	.size	_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_5E9_M_invokeERKSt9_Any_dataOS0_S7_Oj, .Lfunc_end47-_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_5E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB48_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB48_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB48_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE3$_5)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE3$_5)
.LBB48_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end48:
	.size	_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end48-_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_4E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.type	_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_4E9_M_invokeERKSt9_Any_dataOS0_S7_Oj,@function
_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_4E9_M_invokeERKSt9_Any_dataOS0_S7_Oj: # @"_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_4E9_M_invokeERKSt9_Any_dataOS0_S7_Oj"
# %bb.0:
	ld.wu	$a3, $a3, 0
	ori	$a0, $zero, 4
	bltu	$a3, $a0, .LBB49_3
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a4, $a1, 0
	ld.d	$a0, $a2, 0
	addi.d	$a1, $a3, -3
	addi.d	$a2, $a4, 12
	.p2align	4, , 16
.LBB49_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a0, 0
	addi.d	$a3, $a3, 10
	st.w	$a3, $a2, 0
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 4
	addi.d	$a0, $a0, 4
	bnez	$a1, .LBB49_2
.LBB49_3:                               # %"_ZSt10__invoke_rIvRZ4mainE3$_4JPjS2_jEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end49:
	.size	_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_4E9_M_invokeERKSt9_Any_dataOS0_S7_Oj, .Lfunc_end49-_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_4E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB50_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB50_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB50_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE3$_4)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE3$_4)
.LBB50_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end50:
	.size	_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end50-_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_5E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.type	_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_5E9_M_invokeERKSt9_Any_dataOS0_S7_Oj,@function
_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_5E9_M_invokeERKSt9_Any_dataOS0_S7_Oj: # @"_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_5E9_M_invokeERKSt9_Any_dataOS0_S7_Oj"
# %bb.0:
	ld.wu	$a0, $a3, 0
	ori	$a3, $zero, 4
	bltu	$a0, $a3, .LBB51_8
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	addi.d	$a4, $a0, -3
	ori	$a5, $zero, 8
	ori	$a3, $zero, 3
	bltu	$a4, $a5, .LBB51_6
# %bb.2:                                # %vector.memcheck
	sub.d	$a5, $a1, $a2
	addi.d	$a5, $a5, 12
	ori	$a6, $zero, 32
	bltu	$a5, $a6, .LBB51_6
# %bb.3:                                # %vector.ph
	move	$a5, $a4
	bstrins.d	$a5, $zero, 2, 0
	ori	$a6, $zero, 3
	move	$a3, $a4
	bstrins.d	$a3, $a6, 2, 0
	addi.d	$a6, $a2, 16
	addi.d	$a7, $a1, 28
	move	$t0, $a5
	.p2align	4, , 16
.LBB51_4:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a6, -16
	vld	$vr1, $a6, 0
	vaddi.wu	$vr0, $vr0, 10
	vaddi.wu	$vr1, $vr1, 10
	vst	$vr0, $a7, -16
	vst	$vr1, $a7, 0
	addi.d	$a6, $a6, 32
	addi.d	$t0, $t0, -8
	addi.d	$a7, $a7, 32
	bnez	$t0, .LBB51_4
# %bb.5:                                # %middle.block
	beq	$a4, $a5, .LBB51_8
.LBB51_6:                               # %.lr.ph.i.i.i.preheader
	sub.d	$a0, $a0, $a3
	alsl.d	$a1, $a3, $a1, 2
	alsl.d	$a2, $a3, $a2, 2
	addi.d	$a2, $a2, -12
	.p2align	4, , 16
.LBB51_7:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a2, 0
	addi.d	$a3, $a3, 10
	st.w	$a3, $a1, 0
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, 4
	bnez	$a0, .LBB51_7
.LBB51_8:                               # %"_ZSt10__invoke_rIvRZ4mainE3$_5JPjS2_jEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end51:
	.size	_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_5E9_M_invokeERKSt9_Any_dataOS0_S7_Oj, .Lfunc_end51-_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_5E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB52_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB52_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB52_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE3$_5)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE3$_5)
.LBB52_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end52:
	.size	_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end52-_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_4E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.type	_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_4E9_M_invokeERKSt9_Any_dataOS0_S7_Oj,@function
_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_4E9_M_invokeERKSt9_Any_dataOS0_S7_Oj: # @"_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_4E9_M_invokeERKSt9_Any_dataOS0_S7_Oj"
# %bb.0:
	ld.wu	$a3, $a3, 0
	ori	$a0, $zero, 4
	bltu	$a3, $a0, .LBB53_3
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a4, $a1, 0
	ld.d	$a0, $a2, 0
	addi.d	$a1, $a3, -3
	addi.d	$a2, $a4, 24
	.p2align	4, , 16
.LBB53_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a0, 0
	addi.d	$a3, $a3, 10
	st.d	$a3, $a2, 0
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 8
	addi.d	$a0, $a0, 8
	bnez	$a1, .LBB53_2
.LBB53_3:                               # %"_ZSt10__invoke_rIvRZ4mainE3$_4JPmS2_jEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end53:
	.size	_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_4E9_M_invokeERKSt9_Any_dataOS0_S7_Oj, .Lfunc_end53-_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_4E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB54_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB54_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB54_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE3$_4)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE3$_4)
.LBB54_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end54:
	.size	_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end54-_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_5E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.type	_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_5E9_M_invokeERKSt9_Any_dataOS0_S7_Oj,@function
_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_5E9_M_invokeERKSt9_Any_dataOS0_S7_Oj: # @"_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_5E9_M_invokeERKSt9_Any_dataOS0_S7_Oj"
# %bb.0:
	ld.wu	$a0, $a3, 0
	ori	$a5, $zero, 4
	bltu	$a0, $a5, .LBB55_8
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	addi.d	$a4, $a0, -3
	ori	$a3, $zero, 3
	bltu	$a4, $a5, .LBB55_6
# %bb.2:                                # %vector.memcheck
	sub.d	$a5, $a1, $a2
	addi.d	$a5, $a5, 24
	ori	$a6, $zero, 32
	bltu	$a5, $a6, .LBB55_6
# %bb.3:                                # %vector.ph
	move	$a5, $a4
	bstrins.d	$a5, $zero, 1, 0
	ori	$a3, $a4, 3
	addi.d	$a6, $a2, 16
	addi.d	$a7, $a1, 40
	move	$t0, $a5
	.p2align	4, , 16
.LBB55_4:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a6, -16
	vld	$vr1, $a6, 0
	vaddi.du	$vr0, $vr0, 10
	vaddi.du	$vr1, $vr1, 10
	vst	$vr0, $a7, -16
	vst	$vr1, $a7, 0
	addi.d	$a6, $a6, 32
	addi.d	$t0, $t0, -4
	addi.d	$a7, $a7, 32
	bnez	$t0, .LBB55_4
# %bb.5:                                # %middle.block
	beq	$a4, $a5, .LBB55_8
.LBB55_6:                               # %.lr.ph.i.i.i.preheader
	sub.d	$a0, $a0, $a3
	alsl.d	$a1, $a3, $a1, 3
	alsl.d	$a2, $a3, $a2, 3
	addi.d	$a2, $a2, -24
	.p2align	4, , 16
.LBB55_7:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a2, 0
	addi.d	$a3, $a3, 10
	st.d	$a3, $a1, 0
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, 8
	bnez	$a0, .LBB55_7
.LBB55_8:                               # %"_ZSt10__invoke_rIvRZ4mainE3$_5JPmS2_jEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end55:
	.size	_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_5E9_M_invokeERKSt9_Any_dataOS0_S7_Oj, .Lfunc_end55-_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_5E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB56_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB56_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB56_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE3$_5)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE3$_5)
.LBB56_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end56:
	.size	_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end56-_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_6E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.type	_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_6E9_M_invokeERKSt9_Any_dataOS0_S7_Oj,@function
_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_6E9_M_invokeERKSt9_Any_dataOS0_S7_Oj: # @"_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_6E9_M_invokeERKSt9_Any_dataOS0_S7_Oj"
# %bb.0:
	ld.w	$a0, $a3, 0
	beqz	$a0, .LBB57_3
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	bstrpick.d	$a3, $a0, 31, 0
	add.d	$a1, $a1, $a3
	add.d	$a2, $a2, $a3
	.p2align	4, , 16
.LBB57_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a3, $a2, 0
	addi.d	$a3, $a3, 10
	st.b	$a3, $a1, 0
	addi.w	$a0, $a0, -1
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, -1
	bnez	$a0, .LBB57_2
.LBB57_3:                               # %"_ZSt10__invoke_rIvRZ4mainE3$_6JPhS2_jEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end57:
	.size	_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_6E9_M_invokeERKSt9_Any_dataOS0_S7_Oj, .Lfunc_end57-_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_6E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_6E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_6E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_6E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_6E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB58_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB58_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_6E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB58_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE3$_6)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE3$_6)
.LBB58_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_6E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end58:
	.size	_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_6E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end58-_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_6E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_7E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.type	_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_7E9_M_invokeERKSt9_Any_dataOS0_S7_Oj,@function
_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_7E9_M_invokeERKSt9_Any_dataOS0_S7_Oj: # @"_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_7E9_M_invokeERKSt9_Any_dataOS0_S7_Oj"
# %bb.0:
	ld.w	$a0, $a3, 0
	beqz	$a0, .LBB59_15
# %bb.1:                                # %iter.check
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	ori	$a4, $zero, 8
	bstrpick.d	$a3, $a0, 31, 0
	bltu	$a0, $a4, .LBB59_5
# %bb.2:                                # %iter.check
	sub.d	$a5, $a2, $a1
	ori	$a4, $zero, 32
	bltu	$a5, $a4, .LBB59_5
# %bb.3:                                # %vector.main.loop.iter.check
	bgeu	$a0, $a4, .LBB59_6
# %bb.4:
	move	$a5, $zero
	b	.LBB59_10
.LBB59_5:
	move	$a4, $a3
	b	.LBB59_13
.LBB59_6:                               # %vector.ph
	bstrpick.d	$a4, $a3, 31, 5
	slli.d	$a5, $a4, 5
	addi.d	$a6, $a3, -15
	add.d	$a4, $a2, $a6
	add.d	$a6, $a1, $a6
	move	$a7, $a5
	.p2align	4, , 16
.LBB59_7:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a4, 0
	vld	$vr1, $a4, -16
	vaddi.bu	$vr0, $vr0, 10
	vaddi.bu	$vr1, $vr1, 10
	vst	$vr0, $a6, 0
	vst	$vr1, $a6, -16
	addi.d	$a7, $a7, -32
	addi.d	$a4, $a4, -32
	addi.d	$a6, $a6, -32
	bnez	$a7, .LBB59_7
# %bb.8:                                # %middle.block
	beq	$a5, $a3, .LBB59_15
# %bb.9:                                # %vec.epilog.iter.check
	andi	$a4, $a3, 24
	beqz	$a4, .LBB59_16
.LBB59_10:                              # %vec.epilog.ph
	bstrpick.d	$a4, $a3, 31, 3
	slli.d	$a6, $a4, 3
	andi	$a4, $a3, 7
	sub.d	$a0, $a0, $a6
	sub.d	$a7, $a5, $a6
	sub.d	$a5, $a3, $a5
	addi.d	$t0, $a5, -7
	add.d	$a5, $a1, $t0
	add.d	$t0, $a2, $t0
	.p2align	4, , 16
.LBB59_11:                              # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$t1, $t0, 0
	vinsgr2vr.d	$vr0, $t1, 0
	vaddi.bu	$vr0, $vr0, 10
	vstelm.d	$vr0, $a5, 0, 0
	addi.d	$a7, $a7, 8
	addi.d	$a5, $a5, -8
	addi.d	$t0, $t0, -8
	bnez	$a7, .LBB59_11
# %bb.12:                               # %vec.epilog.middle.block
	beq	$a6, $a3, .LBB59_15
.LBB59_13:                              # %.lr.ph.i.i.i.preheader
	add.d	$a1, $a1, $a4
	add.d	$a2, $a2, $a4
	.p2align	4, , 16
.LBB59_14:                              # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a3, $a2, 0
	addi.d	$a3, $a3, 10
	st.b	$a3, $a1, 0
	addi.w	$a0, $a0, -1
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, -1
	bnez	$a0, .LBB59_14
.LBB59_15:                              # %"_ZSt10__invoke_rIvRZ4mainE3$_7JPhS2_jEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.LBB59_16:
	andi	$a4, $a3, 31
	sub.d	$a0, $a0, $a5
	b	.LBB59_13
.Lfunc_end59:
	.size	_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_7E9_M_invokeERKSt9_Any_dataOS0_S7_Oj, .Lfunc_end59-_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_7E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_7E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_7E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_7E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_7E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB60_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB60_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_7E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB60_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE3$_7)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE3$_7)
.LBB60_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_7E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end60:
	.size	_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_7E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end60-_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_7E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_6E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.type	_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_6E9_M_invokeERKSt9_Any_dataOS0_S7_Oj,@function
_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_6E9_M_invokeERKSt9_Any_dataOS0_S7_Oj: # @"_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_6E9_M_invokeERKSt9_Any_dataOS0_S7_Oj"
# %bb.0:
	ld.w	$a0, $a3, 0
	beqz	$a0, .LBB61_3
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	bstrpick.d	$a3, $a0, 31, 0
	alsl.d	$a1, $a3, $a1, 2
	alsl.d	$a2, $a3, $a2, 2
	.p2align	4, , 16
.LBB61_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a2, 0
	addi.d	$a3, $a3, 10
	st.w	$a3, $a1, 0
	addi.w	$a0, $a0, -1
	addi.d	$a1, $a1, -4
	addi.d	$a2, $a2, -4
	bnez	$a0, .LBB61_2
.LBB61_3:                               # %"_ZSt10__invoke_rIvRZ4mainE3$_6JPjS2_jEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end61:
	.size	_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_6E9_M_invokeERKSt9_Any_dataOS0_S7_Oj, .Lfunc_end61-_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_6E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_6E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_6E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_6E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_6E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB62_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB62_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_6E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB62_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE3$_6)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE3$_6)
.LBB62_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_6E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end62:
	.size	_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_6E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end62-_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_6E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_7E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.type	_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_7E9_M_invokeERKSt9_Any_dataOS0_S7_Oj,@function
_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_7E9_M_invokeERKSt9_Any_dataOS0_S7_Oj: # @"_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_7E9_M_invokeERKSt9_Any_dataOS0_S7_Oj"
# %bb.0:
	ld.w	$a0, $a3, 0
	beqz	$a0, .LBB63_9
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	ori	$a3, $zero, 8
	bstrpick.d	$a4, $a0, 31, 0
	bltu	$a0, $a3, .LBB63_6
# %bb.2:                                # %.lr.ph.preheader.i.i.i
	sub.d	$a3, $a2, $a1
	ori	$a5, $zero, 32
	bltu	$a3, $a5, .LBB63_6
# %bb.3:                                # %vector.ph
	bstrpick.d	$a3, $a4, 31, 3
	slli.d	$a5, $a3, 3
	andi	$a3, $a4, 7
	sub.d	$a0, $a0, $a5
	slli.d	$a6, $a4, 2
	addi.d	$a7, $a6, -12
	add.d	$a6, $a2, $a7
	add.d	$a7, $a1, $a7
	move	$t0, $a5
	.p2align	4, , 16
.LBB63_4:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a6, 0
	vld	$vr1, $a6, -16
	vaddi.wu	$vr0, $vr0, 10
	vaddi.wu	$vr1, $vr1, 10
	vst	$vr0, $a7, 0
	vst	$vr1, $a7, -16
	addi.d	$t0, $t0, -8
	addi.d	$a6, $a6, -32
	addi.d	$a7, $a7, -32
	bnez	$t0, .LBB63_4
# %bb.5:                                # %middle.block
	bne	$a5, $a4, .LBB63_7
	b	.LBB63_9
.LBB63_6:
	move	$a3, $a4
.LBB63_7:                               # %.lr.ph.i.i.i.preheader
	alsl.d	$a1, $a3, $a1, 2
	alsl.d	$a2, $a3, $a2, 2
	.p2align	4, , 16
.LBB63_8:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a2, 0
	addi.d	$a3, $a3, 10
	st.w	$a3, $a1, 0
	addi.w	$a0, $a0, -1
	addi.d	$a1, $a1, -4
	addi.d	$a2, $a2, -4
	bnez	$a0, .LBB63_8
.LBB63_9:                               # %"_ZSt10__invoke_rIvRZ4mainE3$_7JPjS2_jEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end63:
	.size	_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_7E9_M_invokeERKSt9_Any_dataOS0_S7_Oj, .Lfunc_end63-_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_7E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_7E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_7E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_7E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_7E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB64_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB64_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_7E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB64_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE3$_7)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE3$_7)
.LBB64_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_7E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end64:
	.size	_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_7E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end64-_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_7E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_6E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.type	_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_6E9_M_invokeERKSt9_Any_dataOS0_S7_Oj,@function
_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_6E9_M_invokeERKSt9_Any_dataOS0_S7_Oj: # @"_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_6E9_M_invokeERKSt9_Any_dataOS0_S7_Oj"
# %bb.0:
	ld.w	$a0, $a3, 0
	beqz	$a0, .LBB65_3
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	bstrpick.d	$a3, $a0, 31, 0
	alsl.d	$a1, $a3, $a1, 3
	alsl.d	$a2, $a3, $a2, 3
	.p2align	4, , 16
.LBB65_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a2, 0
	addi.d	$a3, $a3, 10
	st.d	$a3, $a1, 0
	addi.w	$a0, $a0, -1
	addi.d	$a1, $a1, -8
	addi.d	$a2, $a2, -8
	bnez	$a0, .LBB65_2
.LBB65_3:                               # %"_ZSt10__invoke_rIvRZ4mainE3$_6JPmS2_jEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end65:
	.size	_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_6E9_M_invokeERKSt9_Any_dataOS0_S7_Oj, .Lfunc_end65-_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_6E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_6E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_6E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_6E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_6E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB66_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB66_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_6E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB66_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE3$_6)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE3$_6)
.LBB66_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_6E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end66:
	.size	_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_6E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end66-_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_6E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_7E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.type	_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_7E9_M_invokeERKSt9_Any_dataOS0_S7_Oj,@function
_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_7E9_M_invokeERKSt9_Any_dataOS0_S7_Oj: # @"_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_7E9_M_invokeERKSt9_Any_dataOS0_S7_Oj"
# %bb.0:
	ld.w	$a0, $a3, 0
	beqz	$a0, .LBB67_9
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	ori	$a3, $zero, 4
	bstrpick.d	$a4, $a0, 31, 0
	bltu	$a0, $a3, .LBB67_6
# %bb.2:                                # %.lr.ph.preheader.i.i.i
	sub.d	$a3, $a2, $a1
	ori	$a5, $zero, 32
	bltu	$a3, $a5, .LBB67_6
# %bb.3:                                # %vector.ph
	bstrpick.d	$a3, $a4, 31, 2
	slli.d	$a5, $a3, 2
	andi	$a3, $a4, 3
	sub.d	$a0, $a0, $a5
	slli.d	$a6, $a4, 3
	addi.d	$a7, $a6, -8
	add.d	$a6, $a2, $a7
	add.d	$a7, $a1, $a7
	move	$t0, $a5
	.p2align	4, , 16
.LBB67_4:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a6, 0
	vld	$vr1, $a6, -16
	vaddi.du	$vr0, $vr0, 10
	vaddi.du	$vr1, $vr1, 10
	vst	$vr0, $a7, 0
	vst	$vr1, $a7, -16
	addi.d	$t0, $t0, -4
	addi.d	$a6, $a6, -32
	addi.d	$a7, $a7, -32
	bnez	$t0, .LBB67_4
# %bb.5:                                # %middle.block
	bne	$a5, $a4, .LBB67_7
	b	.LBB67_9
.LBB67_6:
	move	$a3, $a4
.LBB67_7:                               # %.lr.ph.i.i.i.preheader
	alsl.d	$a1, $a3, $a1, 3
	alsl.d	$a2, $a3, $a2, 3
	.p2align	4, , 16
.LBB67_8:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a2, 0
	addi.d	$a3, $a3, 10
	st.d	$a3, $a1, 0
	addi.w	$a0, $a0, -1
	addi.d	$a1, $a1, -8
	addi.d	$a2, $a2, -8
	bnez	$a0, .LBB67_8
.LBB67_9:                               # %"_ZSt10__invoke_rIvRZ4mainE3$_7JPmS2_jEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end67:
	.size	_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_7E9_M_invokeERKSt9_Any_dataOS0_S7_Oj, .Lfunc_end67-_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_7E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_7E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_7E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_7E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_7E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB68_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB68_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_7E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB68_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE3$_7)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE3$_7)
.LBB68_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_7E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end68:
	.size	_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_7E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end68-_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_7E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_8E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.type	_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_8E9_M_invokeERKSt9_Any_dataOS0_S7_Oj,@function
_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_8E9_M_invokeERKSt9_Any_dataOS0_S7_Oj: # @"_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_8E9_M_invokeERKSt9_Any_dataOS0_S7_Oj"
# %bb.0:
	ld.w	$a0, $a3, 0
	ori	$a3, $zero, 3
	bltu	$a0, $a3, .LBB69_3
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	bstrpick.d	$a3, $a0, 31, 0
	add.d	$a1, $a1, $a3
	add.d	$a2, $a2, $a3
	ori	$a3, $zero, 2
	.p2align	4, , 16
.LBB69_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a4, $a2, 0
	addi.d	$a4, $a4, 10
	st.b	$a4, $a1, 0
	addi.w	$a0, $a0, -2
	addi.d	$a1, $a1, -2
	addi.d	$a2, $a2, -2
	bltu	$a3, $a0, .LBB69_2
.LBB69_3:                               # %"_ZSt10__invoke_rIvRZ4mainE3$_8JPhS2_jEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end69:
	.size	_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_8E9_M_invokeERKSt9_Any_dataOS0_S7_Oj, .Lfunc_end69-_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_8E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB70_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB70_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB70_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE3$_8)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE3$_8)
.LBB70_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end70:
	.size	_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end70-_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_9E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.type	_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_9E9_M_invokeERKSt9_Any_dataOS0_S7_Oj,@function
_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_9E9_M_invokeERKSt9_Any_dataOS0_S7_Oj: # @"_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_9E9_M_invokeERKSt9_Any_dataOS0_S7_Oj"
# %bb.0:
	ld.w	$a0, $a3, 0
	ori	$a3, $zero, 3
	bltu	$a0, $a3, .LBB71_8
# %bb.1:                                # %iter.check
	addi.d	$sp, $sp, -80
	st.d	$fp, $sp, 72                    # 8-byte Folded Spill
	st.d	$s0, $sp, 64                    # 8-byte Folded Spill
	st.d	$s1, $sp, 56                    # 8-byte Folded Spill
	st.d	$s2, $sp, 48                    # 8-byte Folded Spill
	st.d	$s3, $sp, 40                    # 8-byte Folded Spill
	st.d	$s4, $sp, 32                    # 8-byte Folded Spill
	st.d	$s5, $sp, 24                    # 8-byte Folded Spill
	st.d	$s6, $sp, 16                    # 8-byte Folded Spill
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	addi.d	$a3, $a0, -3
	addi.w	$a5, $a3, 0
	ori	$a6, $zero, 14
	bstrpick.d	$a4, $a0, 31, 0
	bltu	$a5, $a6, .LBB71_4
# %bb.2:                                # %vector.memcheck
	bstrpick.d	$a3, $a3, 31, 1
	slli.d	$a3, $a3, 1
	sub.d	$a3, $a4, $a3
	add.d	$a7, $a1, $a3
	addi.d	$a6, $a4, 1
	add.d	$t0, $a2, $a6
	bgeu	$a7, $t0, .LBB71_9
# %bb.3:                                # %vector.memcheck
	add.d	$a6, $a1, $a6
	add.d	$a3, $a2, $a3
	bgeu	$a3, $a6, .LBB71_9
.LBB71_4:
	move	$a6, $a4
.LBB71_5:                               # %.lr.ph.i.i.i.preheader
	add.d	$a1, $a1, $a6
	add.d	$a2, $a2, $a6
	ori	$a3, $zero, 2
	.p2align	4, , 16
.LBB71_6:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a4, $a2, 0
	addi.d	$a4, $a4, 10
	st.b	$a4, $a1, 0
	addi.w	$a0, $a0, -2
	addi.d	$a1, $a1, -2
	addi.d	$a2, $a2, -2
	bltu	$a3, $a0, .LBB71_6
.LBB71_7:
	ld.d	$s6, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
.LBB71_8:                               # %"_ZSt10__invoke_rIvRZ4mainE3$_9JPhS2_jEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.LBB71_9:                               # %vector.main.loop.iter.check
	bstrpick.d	$a3, $a5, 31, 1
	ori	$a6, $zero, 30
	addi.d	$a3, $a3, 1
	bgeu	$a5, $a6, .LBB71_14
# %bb.10:
	move	$a5, $zero
.LBB71_11:                              # %vec.epilog.ph
	bstrpick.d	$a6, $a3, 31, 3
	slli.d	$a7, $a6, 3
	slli.d	$t0, $a6, 4
	sub.d	$a6, $a4, $t0
	sub.d	$a0, $a0, $t0
	sub.d	$t0, $a5, $a7
	slli.d	$a5, $a5, 1
	sub.d	$a4, $a4, $a5
	addi.d	$a5, $a4, -6
	add.d	$a4, $a2, $a5
	add.d	$a5, $a1, $a5
	.p2align	4, , 16
.LBB71_12:                              # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$t1, $a4, 6
	ld.b	$t2, $a4, 4
	ld.b	$t3, $a4, 2
	ld.b	$t4, $a4, 0
	ld.b	$t5, $a4, -2
	ld.b	$t6, $a4, -4
	ld.b	$t7, $a4, -6
	ld.b	$t8, $a4, -8
	vinsgr2vr.b	$vr0, $t1, 0
	vinsgr2vr.b	$vr0, $t2, 1
	vinsgr2vr.b	$vr0, $t3, 2
	vinsgr2vr.b	$vr0, $t4, 3
	vinsgr2vr.b	$vr0, $t5, 4
	vinsgr2vr.b	$vr0, $t6, 5
	vinsgr2vr.b	$vr0, $t7, 6
	vinsgr2vr.b	$vr0, $t8, 7
	vaddi.bu	$vr0, $vr0, 10
	vstelm.b	$vr0, $a5, 6, 0
	vstelm.b	$vr0, $a5, 4, 1
	vstelm.b	$vr0, $a5, 2, 2
	vstelm.b	$vr0, $a5, 0, 3
	vstelm.b	$vr0, $a5, -2, 4
	vstelm.b	$vr0, $a5, -4, 5
	vstelm.b	$vr0, $a5, -6, 6
	vstelm.b	$vr0, $a5, -8, 7
	addi.d	$t0, $t0, 8
	addi.d	$a4, $a4, -16
	addi.d	$a5, $a5, -16
	bnez	$t0, .LBB71_12
# %bb.13:                               # %vec.epilog.middle.block
	bne	$a7, $a3, .LBB71_5
	b	.LBB71_7
.LBB71_14:                              # %vector.ph
	bstrpick.d	$a5, $a3, 31, 4
	slli.d	$a5, $a5, 4
	addi.d	$a7, $a4, -14
	add.d	$a6, $a2, $a7
	add.d	$a7, $a1, $a7
	move	$t0, $a5
	.p2align	4, , 16
.LBB71_15:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$t1, $a6, 14
	ld.b	$t2, $a6, 12
	ld.b	$t3, $a6, 10
	ld.b	$t4, $a6, 8
	ld.b	$t5, $a6, 6
	ld.b	$t6, $a6, 4
	ld.b	$t7, $a6, 2
	ld.b	$t8, $a6, 0
	ld.b	$fp, $a6, -2
	ld.b	$s0, $a6, -4
	ld.b	$s1, $a6, -6
	ld.b	$s2, $a6, -8
	ld.b	$s3, $a6, -10
	ld.b	$s4, $a6, -12
	ld.b	$s5, $a6, -14
	ld.b	$s6, $a6, -16
	vinsgr2vr.b	$vr0, $t1, 0
	vinsgr2vr.b	$vr0, $t2, 1
	vinsgr2vr.b	$vr0, $t3, 2
	vinsgr2vr.b	$vr0, $t4, 3
	vinsgr2vr.b	$vr0, $t5, 4
	vinsgr2vr.b	$vr0, $t6, 5
	vinsgr2vr.b	$vr0, $t7, 6
	vinsgr2vr.b	$vr0, $t8, 7
	vinsgr2vr.b	$vr0, $fp, 8
	vinsgr2vr.b	$vr0, $s0, 9
	vinsgr2vr.b	$vr0, $s1, 10
	vinsgr2vr.b	$vr0, $s2, 11
	vinsgr2vr.b	$vr0, $s3, 12
	vinsgr2vr.b	$vr0, $s4, 13
	vinsgr2vr.b	$vr0, $s5, 14
	vinsgr2vr.b	$vr0, $s6, 15
	vaddi.bu	$vr0, $vr0, 10
	vstelm.b	$vr0, $a7, 14, 0
	vstelm.b	$vr0, $a7, 12, 1
	vstelm.b	$vr0, $a7, 10, 2
	vstelm.b	$vr0, $a7, 8, 3
	vstelm.b	$vr0, $a7, 6, 4
	vstelm.b	$vr0, $a7, 4, 5
	vstelm.b	$vr0, $a7, 2, 6
	vstelm.b	$vr0, $a7, 0, 7
	vstelm.b	$vr0, $a7, -2, 8
	vstelm.b	$vr0, $a7, -4, 9
	vstelm.b	$vr0, $a7, -6, 10
	vstelm.b	$vr0, $a7, -8, 11
	vstelm.b	$vr0, $a7, -10, 12
	vstelm.b	$vr0, $a7, -12, 13
	vstelm.b	$vr0, $a7, -14, 14
	vstelm.b	$vr0, $a7, -16, 15
	addi.d	$t0, $t0, -16
	addi.d	$a6, $a6, -32
	addi.d	$a7, $a7, -32
	bnez	$t0, .LBB71_15
# %bb.16:                               # %middle.block
	beq	$a5, $a3, .LBB71_7
# %bb.17:                               # %vec.epilog.iter.check
	andi	$a6, $a3, 8
	bnez	$a6, .LBB71_11
# %bb.18:
	slli.d	$a3, $a5, 1
	sub.d	$a6, $a4, $a3
	sub.d	$a0, $a0, $a3
	b	.LBB71_5
.Lfunc_end71:
	.size	_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_9E9_M_invokeERKSt9_Any_dataOS0_S7_Oj, .Lfunc_end71-_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_9E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB72_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB72_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB72_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE3$_9)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE3$_9)
.LBB72_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end72:
	.size	_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end72-_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_8E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.type	_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_8E9_M_invokeERKSt9_Any_dataOS0_S7_Oj,@function
_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_8E9_M_invokeERKSt9_Any_dataOS0_S7_Oj: # @"_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_8E9_M_invokeERKSt9_Any_dataOS0_S7_Oj"
# %bb.0:
	ld.w	$a0, $a3, 0
	ori	$a3, $zero, 3
	bltu	$a0, $a3, .LBB73_3
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	bstrpick.d	$a3, $a0, 31, 0
	alsl.d	$a1, $a3, $a1, 2
	alsl.d	$a2, $a3, $a2, 2
	ori	$a3, $zero, 2
	.p2align	4, , 16
.LBB73_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a2, 0
	addi.d	$a4, $a4, 10
	st.w	$a4, $a1, 0
	addi.w	$a0, $a0, -2
	addi.d	$a1, $a1, -8
	addi.d	$a2, $a2, -8
	bltu	$a3, $a0, .LBB73_2
.LBB73_3:                               # %"_ZSt10__invoke_rIvRZ4mainE3$_8JPjS2_jEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end73:
	.size	_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_8E9_M_invokeERKSt9_Any_dataOS0_S7_Oj, .Lfunc_end73-_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_8E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB74_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB74_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB74_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE3$_8)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE3$_8)
.LBB74_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end74:
	.size	_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end74-_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_9E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.type	_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_9E9_M_invokeERKSt9_Any_dataOS0_S7_Oj,@function
_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_9E9_M_invokeERKSt9_Any_dataOS0_S7_Oj: # @"_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_9E9_M_invokeERKSt9_Any_dataOS0_S7_Oj"
# %bb.0:
	ld.w	$a0, $a3, 0
	ori	$a3, $zero, 3
	bltu	$a0, $a3, .LBB75_9
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	addi.d	$a5, $a0, -3
	addi.w	$a4, $a5, 0
	ori	$a6, $zero, 6
	bstrpick.d	$a3, $a0, 31, 0
	bltu	$a4, $a6, .LBB75_7
# %bb.2:                                # %vector.memcheck
	slli.d	$a6, $a3, 2
	bstrpick.d	$a5, $a5, 31, 1
	slli.d	$a5, $a5, 3
	sub.d	$a5, $a6, $a5
	add.d	$t0, $a1, $a5
	addi.d	$a7, $a6, 4
	add.d	$t1, $a2, $a7
	bgeu	$t0, $t1, .LBB75_4
# %bb.3:                                # %vector.memcheck
	add.d	$a7, $a1, $a7
	add.d	$a5, $a2, $a5
	bltu	$a5, $a7, .LBB75_7
.LBB75_4:                               # %vector.ph
	bstrpick.d	$a4, $a4, 31, 1
	addi.d	$a4, $a4, 1
	bstrpick.d	$a7, $a4, 31, 2
	slli.d	$a5, $a7, 2
	slli.d	$a7, $a7, 3
	sub.d	$a3, $a3, $a7
	sub.d	$a0, $a0, $a7
	addi.d	$a7, $a6, -8
	add.d	$a6, $a2, $a7
	add.d	$a7, $a1, $a7
	move	$t0, $a5
	.p2align	4, , 16
.LBB75_5:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t1, $a6, 8
	ld.w	$t2, $a6, 0
	ld.w	$t3, $a6, -8
	ld.w	$t4, $a6, -16
	vinsgr2vr.w	$vr0, $t1, 0
	vinsgr2vr.w	$vr0, $t2, 1
	vinsgr2vr.w	$vr0, $t3, 2
	vinsgr2vr.w	$vr0, $t4, 3
	vaddi.wu	$vr0, $vr0, 10
	vstelm.w	$vr0, $a7, 8, 0
	vstelm.w	$vr0, $a7, 0, 1
	vstelm.w	$vr0, $a7, -8, 2
	vstelm.w	$vr0, $a7, -16, 3
	addi.d	$t0, $t0, -4
	addi.d	$a6, $a6, -32
	addi.d	$a7, $a7, -32
	bnez	$t0, .LBB75_5
# %bb.6:                                # %middle.block
	beq	$a5, $a4, .LBB75_9
.LBB75_7:                               # %.lr.ph.i.i.i.preheader
	alsl.d	$a1, $a3, $a1, 2
	alsl.d	$a2, $a3, $a2, 2
	ori	$a3, $zero, 2
	.p2align	4, , 16
.LBB75_8:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a2, 0
	addi.d	$a4, $a4, 10
	st.w	$a4, $a1, 0
	addi.w	$a0, $a0, -2
	addi.d	$a1, $a1, -8
	addi.d	$a2, $a2, -8
	bltu	$a3, $a0, .LBB75_8
.LBB75_9:                               # %"_ZSt10__invoke_rIvRZ4mainE3$_9JPjS2_jEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end75:
	.size	_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_9E9_M_invokeERKSt9_Any_dataOS0_S7_Oj, .Lfunc_end75-_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_9E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB76_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB76_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB76_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE3$_9)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE3$_9)
.LBB76_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end76:
	.size	_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end76-_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_8E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.type	_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_8E9_M_invokeERKSt9_Any_dataOS0_S7_Oj,@function
_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_8E9_M_invokeERKSt9_Any_dataOS0_S7_Oj: # @"_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_8E9_M_invokeERKSt9_Any_dataOS0_S7_Oj"
# %bb.0:
	ld.w	$a0, $a3, 0
	ori	$a3, $zero, 3
	bltu	$a0, $a3, .LBB77_3
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	bstrpick.d	$a3, $a0, 31, 0
	alsl.d	$a1, $a3, $a1, 3
	alsl.d	$a2, $a3, $a2, 3
	ori	$a3, $zero, 2
	.p2align	4, , 16
.LBB77_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a2, 0
	addi.d	$a4, $a4, 10
	st.d	$a4, $a1, 0
	addi.w	$a0, $a0, -2
	addi.d	$a1, $a1, -16
	addi.d	$a2, $a2, -16
	bltu	$a3, $a0, .LBB77_2
.LBB77_3:                               # %"_ZSt10__invoke_rIvRZ4mainE3$_8JPmS2_jEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end77:
	.size	_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_8E9_M_invokeERKSt9_Any_dataOS0_S7_Oj, .Lfunc_end77-_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_8E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB78_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB78_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB78_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE3$_8)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE3$_8)
.LBB78_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end78:
	.size	_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end78-_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_9E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.type	_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_9E9_M_invokeERKSt9_Any_dataOS0_S7_Oj,@function
_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_9E9_M_invokeERKSt9_Any_dataOS0_S7_Oj: # @"_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_9E9_M_invokeERKSt9_Any_dataOS0_S7_Oj"
# %bb.0:
	ld.w	$a0, $a3, 0
	ori	$a3, $zero, 3
	bltu	$a0, $a3, .LBB79_9
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	addi.d	$a5, $a0, -3
	addi.w	$a4, $a5, 0
	ori	$a6, $zero, 6
	bstrpick.d	$a3, $a0, 31, 0
	bltu	$a4, $a6, .LBB79_7
# %bb.2:                                # %vector.memcheck
	slli.d	$a6, $a3, 3
	bstrpick.d	$a5, $a5, 31, 1
	slli.d	$a5, $a5, 4
	sub.d	$a5, $a6, $a5
	add.d	$t0, $a1, $a5
	addi.d	$a7, $a6, 8
	add.d	$t1, $a2, $a7
	bgeu	$t0, $t1, .LBB79_4
# %bb.3:                                # %vector.memcheck
	add.d	$a7, $a1, $a7
	add.d	$a5, $a2, $a5
	bltu	$a5, $a7, .LBB79_7
.LBB79_4:                               # %vector.ph
	bstrpick.d	$a4, $a4, 31, 1
	addi.d	$a4, $a4, 1
	bstrpick.d	$a7, $a4, 31, 2
	slli.d	$a5, $a7, 2
	slli.d	$a7, $a7, 3
	sub.d	$a3, $a3, $a7
	sub.d	$a0, $a0, $a7
	addi.d	$a7, $a6, -16
	add.d	$a6, $a2, $a7
	add.d	$a7, $a1, $a7
	move	$t0, $a5
	.p2align	4, , 16
.LBB79_5:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$t1, $a6, 16
	ld.d	$t2, $a6, 0
	ld.d	$t3, $a6, -16
	ld.d	$t4, $a6, -32
	vinsgr2vr.d	$vr0, $t1, 0
	vinsgr2vr.d	$vr0, $t2, 1
	vinsgr2vr.d	$vr1, $t3, 0
	vinsgr2vr.d	$vr1, $t4, 1
	vaddi.du	$vr0, $vr0, 10
	vaddi.du	$vr1, $vr1, 10
	vstelm.d	$vr0, $a7, 16, 0
	vstelm.d	$vr0, $a7, 0, 1
	vstelm.d	$vr1, $a7, -16, 0
	vstelm.d	$vr1, $a7, -32, 1
	addi.d	$t0, $t0, -4
	addi.d	$a6, $a6, -64
	addi.d	$a7, $a7, -64
	bnez	$t0, .LBB79_5
# %bb.6:                                # %middle.block
	beq	$a5, $a4, .LBB79_9
.LBB79_7:                               # %.lr.ph.i.i.i.preheader
	alsl.d	$a1, $a3, $a1, 3
	alsl.d	$a2, $a3, $a2, 3
	ori	$a3, $zero, 2
	.p2align	4, , 16
.LBB79_8:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a2, 0
	addi.d	$a4, $a4, 10
	st.d	$a4, $a1, 0
	addi.w	$a0, $a0, -2
	addi.d	$a1, $a1, -16
	addi.d	$a2, $a2, -16
	bltu	$a3, $a0, .LBB79_8
.LBB79_9:                               # %"_ZSt10__invoke_rIvRZ4mainE3$_9JPmS2_jEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end79:
	.size	_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_9E9_M_invokeERKSt9_Any_dataOS0_S7_Oj, .Lfunc_end79-_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_9E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB80_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB80_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB80_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE3$_9)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE3$_9)
.LBB80_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end80:
	.size	_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end80-_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPhS0_jEZ4mainE4$_10E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.type	_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE4$_10E9_M_invokeERKSt9_Any_dataOS0_S7_Oj,@function
_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE4$_10E9_M_invokeERKSt9_Any_dataOS0_S7_Oj: # @"_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE4$_10E9_M_invokeERKSt9_Any_dataOS0_S7_Oj"
# %bb.0:
	ld.wu	$a0, $a3, 0
	beqz	$a0, .LBB81_3
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	move	$a3, $zero
	.p2align	4, , 16
.LBB81_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a4, $a3, 31, 0
	ldx.b	$a4, $a2, $a4
	addi.d	$a4, $a4, 10
	st.b	$a4, $a1, 0
	addi.w	$a3, $a3, 2
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 1
	bnez	$a0, .LBB81_2
.LBB81_3:                               # %"_ZSt10__invoke_rIvRZ4mainE4$_10JPhS2_jEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end81:
	.size	_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE4$_10E9_M_invokeERKSt9_Any_dataOS0_S7_Oj, .Lfunc_end81-_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE4$_10E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPhS0_jEZ4mainE4$_10E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE4$_10E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE4$_10E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE4$_10E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB82_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB82_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_10E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB82_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_10)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_10)
.LBB82_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_10E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end82:
	.size	_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE4$_10E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end82-_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE4$_10E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZNSt17_Function_handlerIFvPhS0_jEZ4mainE4$_11E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
.LCPI83_0:
	.word	24                              # 0x18
	.word	26                              # 0x1a
	.word	28                              # 0x1c
	.word	30                              # 0x1e
.LCPI83_1:
	.word	16                              # 0x10
	.word	18                              # 0x12
	.word	20                              # 0x14
	.word	22                              # 0x16
.LCPI83_2:
	.word	8                               # 0x8
	.word	10                              # 0xa
	.word	12                              # 0xc
	.word	14                              # 0xe
.LCPI83_3:
	.word	0                               # 0x0
	.word	2                               # 0x2
	.word	4                               # 0x4
	.word	6                               # 0x6
	.text
	.p2align	5
	.type	_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE4$_11E9_M_invokeERKSt9_Any_dataOS0_S7_Oj,@function
_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE4$_11E9_M_invokeERKSt9_Any_dataOS0_S7_Oj: # @"_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE4$_11E9_M_invokeERKSt9_Any_dataOS0_S7_Oj"
# %bb.0:
	ld.w	$a3, $a3, 0
	beqz	$a3, .LBB83_8
# %bb.1:                                # %iter.check
	addi.d	$sp, $sp, -64
	st.d	$fp, $sp, 56                    # 8-byte Folded Spill
	st.d	$s0, $sp, 48                    # 8-byte Folded Spill
	st.d	$s1, $sp, 40                    # 8-byte Folded Spill
	st.d	$s2, $sp, 32                    # 8-byte Folded Spill
	st.d	$s3, $sp, 24                    # 8-byte Folded Spill
	st.d	$s4, $sp, 16                    # 8-byte Folded Spill
	st.d	$s5, $sp, 8                     # 8-byte Folded Spill
	ld.d	$a1, $a1, 0
	ld.d	$a0, $a2, 0
	addi.w	$a4, $a3, -4
	lu12i.w	$a2, 524287
	ori	$a5, $a2, 4092
	bstrpick.d	$a2, $a3, 31, 0
	bltu	$a5, $a4, .LBB83_4
# %bb.2:                                # %vector.memcheck
	alsl.d	$a4, $a2, $a0, 1
	addi.d	$a4, $a4, -1
	bgeu	$a1, $a4, .LBB83_9
# %bb.3:                                # %vector.memcheck
	add.d	$a4, $a1, $a2
	bgeu	$a0, $a4, .LBB83_9
.LBB83_4:
	move	$a3, $zero
	move	$a4, $zero
.LBB83_5:                               # %.lr.ph.i.i.i.preheader
	sub.d	$a2, $a2, $a3
	add.d	$a1, $a1, $a3
	.p2align	4, , 16
.LBB83_6:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a3, $a4, 31, 0
	ldx.b	$a3, $a0, $a3
	addi.d	$a3, $a3, 10
	st.b	$a3, $a1, 0
	addi.w	$a4, $a4, 2
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 1
	bnez	$a2, .LBB83_6
.LBB83_7:
	ld.d	$s5, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s4, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
.LBB83_8:                               # %"_ZSt10__invoke_rIvRZ4mainE4$_11JPhS2_jEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.LBB83_9:                               # %vector.main.loop.iter.check
	ori	$a5, $zero, 16
	pcalau12i	$a4, %pc_hi20(.LCPI83_3)
	vrepli.b	$vr0, 0
	bgeu	$a3, $a5, .LBB83_11
# %bb.10:
	move	$a3, $zero
	move	$a5, $zero
	b	.LBB83_15
.LBB83_11:                              # %vector.ph
	bstrpick.d	$a5, $a2, 31, 4
	pcalau12i	$a3, %pc_hi20(.LCPI83_0)
	vld	$vr1, $a3, %pc_lo12(.LCPI83_0)
	pcalau12i	$a3, %pc_hi20(.LCPI83_1)
	vld	$vr2, $a3, %pc_lo12(.LCPI83_1)
	pcalau12i	$a3, %pc_hi20(.LCPI83_2)
	vld	$vr3, $a3, %pc_lo12(.LCPI83_2)
	vld	$vr4, $a4, %pc_lo12(.LCPI83_3)
	slli.d	$a3, $a5, 4
	slli.d	$a5, $a5, 5
	vrepli.w	$vr5, 32
	move	$a6, $a1
	move	$a7, $a3
	.p2align	4, , 16
.LBB83_12:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vilvh.w	$vr6, $vr0, $vr1
	vilvl.w	$vr7, $vr0, $vr1
	vilvh.w	$vr8, $vr0, $vr2
	vilvl.w	$vr9, $vr0, $vr2
	vilvh.w	$vr10, $vr0, $vr3
	vilvl.w	$vr11, $vr0, $vr3
	vilvh.w	$vr12, $vr0, $vr4
	vilvl.w	$vr13, $vr0, $vr4
	vpickve2gr.d	$t0, $vr13, 0
	vpickve2gr.d	$t1, $vr13, 1
	vpickve2gr.d	$t2, $vr12, 0
	vpickve2gr.d	$t3, $vr12, 1
	vpickve2gr.d	$t4, $vr11, 0
	vpickve2gr.d	$t5, $vr11, 1
	vpickve2gr.d	$t6, $vr10, 0
	vpickve2gr.d	$t7, $vr10, 1
	vpickve2gr.d	$t8, $vr9, 0
	vpickve2gr.d	$fp, $vr9, 1
	vpickve2gr.d	$s0, $vr8, 0
	vpickve2gr.d	$s1, $vr8, 1
	vpickve2gr.d	$s2, $vr7, 0
	vpickve2gr.d	$s3, $vr7, 1
	vpickve2gr.d	$s4, $vr6, 0
	vpickve2gr.d	$s5, $vr6, 1
	ldx.b	$t0, $a0, $t0
	ldx.b	$t1, $a0, $t1
	ldx.b	$t2, $a0, $t2
	ldx.b	$t3, $a0, $t3
	ldx.b	$t4, $a0, $t4
	ldx.b	$t5, $a0, $t5
	ldx.b	$t6, $a0, $t6
	ldx.b	$t7, $a0, $t7
	ldx.b	$t8, $a0, $t8
	ldx.b	$fp, $a0, $fp
	ldx.b	$s0, $a0, $s0
	ldx.b	$s1, $a0, $s1
	ldx.b	$s2, $a0, $s2
	ldx.b	$s3, $a0, $s3
	ldx.b	$s4, $a0, $s4
	ldx.b	$s5, $a0, $s5
	vinsgr2vr.b	$vr6, $t0, 0
	vinsgr2vr.b	$vr6, $t1, 1
	vinsgr2vr.b	$vr6, $t2, 2
	vinsgr2vr.b	$vr6, $t3, 3
	vinsgr2vr.b	$vr6, $t4, 4
	vinsgr2vr.b	$vr6, $t5, 5
	vinsgr2vr.b	$vr6, $t6, 6
	vinsgr2vr.b	$vr6, $t7, 7
	vinsgr2vr.b	$vr6, $t8, 8
	vinsgr2vr.b	$vr6, $fp, 9
	vinsgr2vr.b	$vr6, $s0, 10
	vinsgr2vr.b	$vr6, $s1, 11
	vinsgr2vr.b	$vr6, $s2, 12
	vinsgr2vr.b	$vr6, $s3, 13
	vinsgr2vr.b	$vr6, $s4, 14
	vinsgr2vr.b	$vr6, $s5, 15
	vaddi.bu	$vr6, $vr6, 10
	vst	$vr6, $a6, 0
	vadd.w	$vr4, $vr4, $vr5
	vadd.w	$vr3, $vr3, $vr5
	vadd.w	$vr2, $vr2, $vr5
	vadd.w	$vr1, $vr1, $vr5
	addi.d	$a7, $a7, -16
	addi.d	$a6, $a6, 16
	bnez	$a7, .LBB83_12
# %bb.13:                               # %middle.block
	beq	$a3, $a2, .LBB83_7
# %bb.14:                               # %vec.epilog.iter.check
	andi	$a6, $a2, 12
	beqz	$a6, .LBB83_18
.LBB83_15:                              # %vec.epilog.ph
	move	$a6, $a3
	bstrpick.d	$a7, $a2, 31, 2
	vld	$vr1, $a4, %pc_lo12(.LCPI83_3)
	slli.d	$a3, $a7, 2
	slli.d	$a4, $a7, 3
	vreplgr2vr.w	$vr2, $a5
	vadd.w	$vr1, $vr2, $vr1
	sub.d	$a5, $a6, $a3
	add.d	$a6, $a1, $a6
	.p2align	4, , 16
.LBB83_16:                              # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vilvh.w	$vr2, $vr0, $vr1
	vilvl.w	$vr3, $vr0, $vr1
	vpickve2gr.d	$a7, $vr3, 0
	vpickve2gr.d	$t0, $vr3, 1
	vpickve2gr.d	$t1, $vr2, 0
	vpickve2gr.d	$t2, $vr2, 1
	ldx.b	$a7, $a0, $a7
	ldx.b	$t0, $a0, $t0
	ldx.b	$t1, $a0, $t1
	ldx.b	$t2, $a0, $t2
	vinsgr2vr.b	$vr2, $a7, 0
	vinsgr2vr.b	$vr2, $t0, 1
	vinsgr2vr.b	$vr2, $t1, 2
	vinsgr2vr.b	$vr2, $t2, 3
	vaddi.bu	$vr2, $vr2, 10
	vstelm.w	$vr2, $a6, 0, 0
	vaddi.wu	$vr1, $vr1, 8
	addi.d	$a5, $a5, 4
	addi.d	$a6, $a6, 4
	bnez	$a5, .LBB83_16
# %bb.17:                               # %vec.epilog.middle.block
	bne	$a3, $a2, .LBB83_5
	b	.LBB83_7
.LBB83_18:
	slli.d	$a4, $a3, 1
	b	.LBB83_5
.Lfunc_end83:
	.size	_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE4$_11E9_M_invokeERKSt9_Any_dataOS0_S7_Oj, .Lfunc_end83-_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE4$_11E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPhS0_jEZ4mainE4$_11E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE4$_11E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE4$_11E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE4$_11E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB84_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB84_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_11E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB84_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_11)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_11)
.LBB84_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_11E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end84:
	.size	_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE4$_11E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end84-_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE4$_11E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPjS0_jEZ4mainE4$_10E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.type	_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE4$_10E9_M_invokeERKSt9_Any_dataOS0_S7_Oj,@function
_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE4$_10E9_M_invokeERKSt9_Any_dataOS0_S7_Oj: # @"_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE4$_10E9_M_invokeERKSt9_Any_dataOS0_S7_Oj"
# %bb.0:
	ld.wu	$a0, $a3, 0
	beqz	$a0, .LBB85_3
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	move	$a3, $zero
	.p2align	4, , 16
.LBB85_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a4, $a3, 31, 0
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a2, $a4
	addi.d	$a4, $a4, 10
	st.w	$a4, $a1, 0
	addi.w	$a3, $a3, 2
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 4
	bnez	$a0, .LBB85_2
.LBB85_3:                               # %"_ZSt10__invoke_rIvRZ4mainE4$_10JPjS2_jEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end85:
	.size	_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE4$_10E9_M_invokeERKSt9_Any_dataOS0_S7_Oj, .Lfunc_end85-_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE4$_10E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPjS0_jEZ4mainE4$_10E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE4$_10E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE4$_10E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE4$_10E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB86_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB86_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_10E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB86_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_10)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_10)
.LBB86_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_10E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end86:
	.size	_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE4$_10E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end86-_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE4$_10E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZNSt17_Function_handlerIFvPjS0_jEZ4mainE4$_11E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
.LCPI87_0:
	.word	0                               # 0x0
	.word	2                               # 0x2
	.word	4                               # 0x4
	.word	6                               # 0x6
	.text
	.p2align	5
	.type	_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE4$_11E9_M_invokeERKSt9_Any_dataOS0_S7_Oj,@function
_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE4$_11E9_M_invokeERKSt9_Any_dataOS0_S7_Oj: # @"_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE4$_11E9_M_invokeERKSt9_Any_dataOS0_S7_Oj"
# %bb.0:
	ld.w	$a3, $a3, 0
	beqz	$a3, .LBB87_7
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a1, $a1, 0
	ld.d	$a0, $a2, 0
	addi.w	$a4, $a3, -4
	lu12i.w	$a2, 524287
	ori	$a5, $a2, 4092
	bstrpick.d	$a2, $a3, 31, 0
	bltu	$a5, $a4, .LBB87_4
# %bb.2:                                # %vector.memcheck
	alsl.d	$a3, $a2, $a0, 3
	addi.d	$a3, $a3, -4
	bgeu	$a1, $a3, .LBB87_8
# %bb.3:                                # %vector.memcheck
	alsl.d	$a3, $a2, $a1, 2
	bgeu	$a0, $a3, .LBB87_8
.LBB87_4:
	move	$a4, $zero
	move	$a3, $zero
.LBB87_5:                               # %.lr.ph.i.i.i.preheader
	sub.d	$a2, $a2, $a4
	alsl.d	$a1, $a4, $a1, 2
	.p2align	4, , 16
.LBB87_6:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a4, $a3, 31, 0
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a0, $a4
	addi.d	$a4, $a4, 10
	st.w	$a4, $a1, 0
	addi.w	$a3, $a3, 2
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB87_6
.LBB87_7:                               # %"_ZSt10__invoke_rIvRZ4mainE4$_11JPjS2_jEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.LBB87_8:                               # %vector.ph
	bstrpick.d	$a3, $a2, 31, 2
	pcalau12i	$a4, %pc_hi20(.LCPI87_0)
	vld	$vr0, $a4, %pc_lo12(.LCPI87_0)
	slli.d	$a4, $a3, 2
	slli.d	$a3, $a3, 3
	vrepli.b	$vr1, 0
	move	$a5, $a1
	move	$a6, $a4
	.p2align	4, , 16
.LBB87_9:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vilvh.w	$vr2, $vr1, $vr0
	vilvl.w	$vr3, $vr1, $vr0
	vpickve2gr.d	$a7, $vr3, 0
	slli.d	$a7, $a7, 2
	vpickve2gr.d	$t0, $vr3, 1
	slli.d	$t0, $t0, 2
	vpickve2gr.d	$t1, $vr2, 0
	slli.d	$t1, $t1, 2
	vpickve2gr.d	$t2, $vr2, 1
	slli.d	$t2, $t2, 2
	ldx.w	$a7, $a0, $a7
	ldx.w	$t0, $a0, $t0
	ldx.w	$t1, $a0, $t1
	ldx.w	$t2, $a0, $t2
	vinsgr2vr.w	$vr2, $a7, 0
	vinsgr2vr.w	$vr2, $t0, 1
	vinsgr2vr.w	$vr2, $t1, 2
	vinsgr2vr.w	$vr2, $t2, 3
	vaddi.wu	$vr2, $vr2, 10
	vst	$vr2, $a5, 0
	vaddi.wu	$vr0, $vr0, 8
	addi.d	$a6, $a6, -4
	addi.d	$a5, $a5, 16
	bnez	$a6, .LBB87_9
# %bb.10:                               # %middle.block
	bne	$a4, $a2, .LBB87_5
	b	.LBB87_7
.Lfunc_end87:
	.size	_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE4$_11E9_M_invokeERKSt9_Any_dataOS0_S7_Oj, .Lfunc_end87-_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE4$_11E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPjS0_jEZ4mainE4$_11E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE4$_11E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE4$_11E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE4$_11E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB88_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB88_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_11E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB88_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_11)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_11)
.LBB88_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_11E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end88:
	.size	_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE4$_11E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end88-_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE4$_11E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPmS0_jEZ4mainE4$_10E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.type	_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE4$_10E9_M_invokeERKSt9_Any_dataOS0_S7_Oj,@function
_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE4$_10E9_M_invokeERKSt9_Any_dataOS0_S7_Oj: # @"_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE4$_10E9_M_invokeERKSt9_Any_dataOS0_S7_Oj"
# %bb.0:
	ld.wu	$a0, $a3, 0
	beqz	$a0, .LBB89_3
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	move	$a3, $zero
	.p2align	4, , 16
.LBB89_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a4, $a3, 31, 0
	slli.d	$a4, $a4, 3
	ldx.d	$a4, $a2, $a4
	addi.d	$a4, $a4, 10
	st.d	$a4, $a1, 0
	addi.w	$a3, $a3, 2
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 8
	bnez	$a0, .LBB89_2
.LBB89_3:                               # %"_ZSt10__invoke_rIvRZ4mainE4$_10JPmS2_jEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end89:
	.size	_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE4$_10E9_M_invokeERKSt9_Any_dataOS0_S7_Oj, .Lfunc_end89-_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE4$_10E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPmS0_jEZ4mainE4$_10E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE4$_10E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE4$_10E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE4$_10E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB90_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB90_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_10E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB90_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_10)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_10)
.LBB90_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_10E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end90:
	.size	_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE4$_10E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end90-_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE4$_10E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPmS0_jEZ4mainE4$_11E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.type	_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE4$_11E9_M_invokeERKSt9_Any_dataOS0_S7_Oj,@function
_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE4$_11E9_M_invokeERKSt9_Any_dataOS0_S7_Oj: # @"_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE4$_11E9_M_invokeERKSt9_Any_dataOS0_S7_Oj"
# %bb.0:
	ld.w	$a3, $a3, 0
	beqz	$a3, .LBB91_7
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a1, $a1, 0
	ld.d	$a0, $a2, 0
	addi.w	$a2, $a3, -4
	lu12i.w	$a4, 524287
	ori	$a4, $a4, 4092
	bstrpick.d	$a3, $a3, 31, 0
	bltu	$a4, $a2, .LBB91_4
# %bb.2:                                # %vector.memcheck
	alsl.d	$a2, $a3, $a0, 4
	addi.d	$a2, $a2, -8
	bgeu	$a1, $a2, .LBB91_8
# %bb.3:                                # %vector.memcheck
	alsl.d	$a2, $a3, $a1, 3
	bgeu	$a0, $a2, .LBB91_8
.LBB91_4:
	move	$a4, $zero
	move	$a2, $zero
.LBB91_5:                               # %.lr.ph.i.i.i.preheader
	sub.d	$a3, $a3, $a4
	alsl.d	$a1, $a4, $a1, 3
	.p2align	4, , 16
.LBB91_6:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a4, $a2, 31, 0
	slli.d	$a4, $a4, 3
	ldx.d	$a4, $a0, $a4
	addi.d	$a4, $a4, 10
	st.d	$a4, $a1, 0
	addi.w	$a2, $a2, 2
	addi.d	$a3, $a3, -1
	addi.d	$a1, $a1, 8
	bnez	$a3, .LBB91_6
.LBB91_7:                               # %"_ZSt10__invoke_rIvRZ4mainE4$_11JPmS2_jEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.LBB91_8:                               # %vector.ph
	bstrpick.d	$a2, $a3, 31, 2
	slli.d	$a4, $a2, 2
	slli.d	$a2, $a2, 3
	addi.d	$a5, $a1, 16
	ori	$a6, $zero, 0
	lu32i.d	$a6, 2
	vreplgr2vr.d	$vr0, $a6
	addi.w	$a6, $zero, -8
	lu32i.d	$a6, 7
	move	$a7, $a4
	.p2align	4, , 16
.LBB91_9:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vaddi.wu	$vr1, $vr0, 4
	vpickve2gr.d	$t0, $vr0, 0
	bstrpick.d	$t1, $t0, 31, 3
	vpickve2gr.d	$t2, $vr1, 0
	bstrpick.d	$t3, $t2, 31, 2
	slli.d	$t1, $t1, 6
	srli.d	$t0, $t0, 29
	and	$t0, $t0, $a6
	slli.d	$t3, $t3, 5
	srli.d	$t2, $t2, 29
	and	$t2, $t2, $a6
	ldx.d	$t1, $a0, $t1
	ldx.d	$t0, $a0, $t0
	ldx.d	$t3, $a0, $t3
	ldx.d	$t2, $a0, $t2
	vinsgr2vr.d	$vr1, $t1, 0
	vinsgr2vr.d	$vr1, $t0, 1
	vinsgr2vr.d	$vr2, $t3, 0
	vinsgr2vr.d	$vr2, $t2, 1
	vaddi.du	$vr1, $vr1, 10
	vaddi.du	$vr2, $vr2, 10
	vst	$vr1, $a5, -16
	vst	$vr2, $a5, 0
	vaddi.wu	$vr0, $vr0, 8
	addi.d	$a7, $a7, -4
	addi.d	$a5, $a5, 32
	bnez	$a7, .LBB91_9
# %bb.10:                               # %middle.block
	bne	$a4, $a3, .LBB91_5
	b	.LBB91_7
.Lfunc_end91:
	.size	_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE4$_11E9_M_invokeERKSt9_Any_dataOS0_S7_Oj, .Lfunc_end91-_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE4$_11E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPmS0_jEZ4mainE4$_11E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE4$_11E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE4$_11E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE4$_11E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB92_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB92_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_11E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB92_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_11)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_11)
.LBB92_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_11E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end92:
	.size	_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE4$_11E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end92-_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE4$_11E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPhS0_jEZ4mainE4$_12E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.type	_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE4$_12E9_M_invokeERKSt9_Any_dataOS0_S7_Oj,@function
_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE4$_12E9_M_invokeERKSt9_Any_dataOS0_S7_Oj: # @"_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE4$_12E9_M_invokeERKSt9_Any_dataOS0_S7_Oj"
# %bb.0:
	ld.wu	$a0, $a3, 0
	beqz	$a0, .LBB93_3
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	move	$a3, $zero
	.p2align	4, , 16
.LBB93_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ldx.b	$a4, $a2, $a3
	addi.d	$a4, $a4, 10
	stx.b	$a4, $a1, $a3
	addi.d	$a3, $a3, 2
	bltu	$a3, $a0, .LBB93_2
.LBB93_3:                               # %"_ZSt10__invoke_rIvRZ4mainE4$_12JPhS2_jEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end93:
	.size	_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE4$_12E9_M_invokeERKSt9_Any_dataOS0_S7_Oj, .Lfunc_end93-_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE4$_12E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPhS0_jEZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB94_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB94_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB94_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_12)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_12)
.LBB94_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end94:
	.size	_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end94-_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPhS0_jEZ4mainE4$_13E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.type	_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE4$_13E9_M_invokeERKSt9_Any_dataOS0_S7_Oj,@function
_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE4$_13E9_M_invokeERKSt9_Any_dataOS0_S7_Oj: # @"_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE4$_13E9_M_invokeERKSt9_Any_dataOS0_S7_Oj"
# %bb.0:
	ld.w	$a4, $a3, 0
	beqz	$a4, .LBB95_18
# %bb.1:                                # %iter.check
	addi.d	$sp, $sp, -64
	st.d	$fp, $sp, 56                    # 8-byte Folded Spill
	st.d	$s0, $sp, 48                    # 8-byte Folded Spill
	st.d	$s1, $sp, 40                    # 8-byte Folded Spill
	st.d	$s2, $sp, 32                    # 8-byte Folded Spill
	st.d	$s3, $sp, 24                    # 8-byte Folded Spill
	st.d	$s4, $sp, 16                    # 8-byte Folded Spill
	st.d	$s5, $sp, 8                     # 8-byte Folded Spill
	ld.d	$a0, $a1, 0
	ld.d	$a1, $a2, 0
	ori	$a3, $zero, 15
	bstrpick.d	$a2, $a4, 31, 0
	bgeu	$a4, $a3, .LBB95_3
# %bb.2:
	move	$a5, $zero
	b	.LBB95_16
.LBB95_3:                               # %vector.memcheck
	addi.d	$a3, $a2, -1
	ori	$a5, $a3, 1
	add.d	$a6, $a1, $a5
	bgeu	$a0, $a6, .LBB95_6
# %bb.4:                                # %vector.memcheck
	add.d	$a5, $a0, $a5
	bgeu	$a1, $a5, .LBB95_6
# %bb.5:
	move	$a5, $zero
	b	.LBB95_16
.LBB95_6:                               # %vector.main.loop.iter.check
	srli.d	$a3, $a3, 1
	ori	$a5, $zero, 31
	addi.d	$a3, $a3, 1
	bgeu	$a4, $a5, .LBB95_11
# %bb.7:
	move	$a4, $zero
.LBB95_8:                               # %vec.epilog.ph
	move	$a6, $a3
	bstrins.d	$a6, $zero, 2, 0
	slli.d	$a5, $a6, 1
	sub.d	$a7, $a4, $a6
	slli.d	$a4, $a4, 1
	addi.d	$t0, $a4, 8
	add.d	$a4, $a0, $t0
	add.d	$t0, $a1, $t0
	.p2align	4, , 16
.LBB95_9:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$t1, $t0, -8
	ld.b	$t2, $t0, -6
	ld.b	$t3, $t0, -4
	ld.b	$t4, $t0, -2
	ld.b	$t5, $t0, 0
	ld.b	$t6, $t0, 2
	ld.b	$t7, $t0, 4
	ld.b	$t8, $t0, 6
	vinsgr2vr.b	$vr0, $t1, 0
	vinsgr2vr.b	$vr0, $t2, 1
	vinsgr2vr.b	$vr0, $t3, 2
	vinsgr2vr.b	$vr0, $t4, 3
	vinsgr2vr.b	$vr0, $t5, 4
	vinsgr2vr.b	$vr0, $t6, 5
	vinsgr2vr.b	$vr0, $t7, 6
	vinsgr2vr.b	$vr0, $t8, 7
	vaddi.bu	$vr0, $vr0, 10
	vstelm.b	$vr0, $a4, -8, 0
	vstelm.b	$vr0, $a4, -6, 1
	vstelm.b	$vr0, $a4, -4, 2
	vstelm.b	$vr0, $a4, -2, 3
	vstelm.b	$vr0, $a4, 0, 4
	vstelm.b	$vr0, $a4, 2, 5
	vstelm.b	$vr0, $a4, 4, 6
	vstelm.b	$vr0, $a4, 6, 7
	addi.d	$a7, $a7, 8
	addi.d	$a4, $a4, 16
	addi.d	$t0, $t0, 16
	bnez	$a7, .LBB95_9
# %bb.10:                               # %vec.epilog.middle.block
	bne	$a3, $a6, .LBB95_16
	b	.LBB95_17
.LBB95_11:                              # %vector.ph
	move	$a4, $a3
	bstrins.d	$a4, $zero, 3, 0
	addi.d	$a5, $a0, 16
	addi.d	$a6, $a1, 16
	move	$a7, $a4
	.p2align	4, , 16
.LBB95_12:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$t0, $a6, -16
	ld.b	$t1, $a6, -14
	ld.b	$t2, $a6, -12
	ld.b	$t3, $a6, -10
	ld.b	$t4, $a6, -8
	ld.b	$t5, $a6, -6
	ld.b	$t6, $a6, -4
	ld.b	$t7, $a6, -2
	ld.b	$t8, $a6, 0
	ld.b	$fp, $a6, 2
	ld.b	$s0, $a6, 4
	ld.b	$s1, $a6, 6
	ld.b	$s2, $a6, 8
	ld.b	$s3, $a6, 10
	ld.b	$s4, $a6, 12
	ld.b	$s5, $a6, 14
	vinsgr2vr.b	$vr0, $t0, 0
	vinsgr2vr.b	$vr0, $t1, 1
	vinsgr2vr.b	$vr0, $t2, 2
	vinsgr2vr.b	$vr0, $t3, 3
	vinsgr2vr.b	$vr0, $t4, 4
	vinsgr2vr.b	$vr0, $t5, 5
	vinsgr2vr.b	$vr0, $t6, 6
	vinsgr2vr.b	$vr0, $t7, 7
	vinsgr2vr.b	$vr0, $t8, 8
	vinsgr2vr.b	$vr0, $fp, 9
	vinsgr2vr.b	$vr0, $s0, 10
	vinsgr2vr.b	$vr0, $s1, 11
	vinsgr2vr.b	$vr0, $s2, 12
	vinsgr2vr.b	$vr0, $s3, 13
	vinsgr2vr.b	$vr0, $s4, 14
	vinsgr2vr.b	$vr0, $s5, 15
	vaddi.bu	$vr0, $vr0, 10
	vstelm.b	$vr0, $a5, -16, 0
	vstelm.b	$vr0, $a5, -14, 1
	vstelm.b	$vr0, $a5, -12, 2
	vstelm.b	$vr0, $a5, -10, 3
	vstelm.b	$vr0, $a5, -8, 4
	vstelm.b	$vr0, $a5, -6, 5
	vstelm.b	$vr0, $a5, -4, 6
	vstelm.b	$vr0, $a5, -2, 7
	vstelm.b	$vr0, $a5, 0, 8
	vstelm.b	$vr0, $a5, 2, 9
	vstelm.b	$vr0, $a5, 4, 10
	vstelm.b	$vr0, $a5, 6, 11
	vstelm.b	$vr0, $a5, 8, 12
	vstelm.b	$vr0, $a5, 10, 13
	vstelm.b	$vr0, $a5, 12, 14
	vstelm.b	$vr0, $a5, 14, 15
	addi.d	$a7, $a7, -16
	addi.d	$a5, $a5, 32
	addi.d	$a6, $a6, 32
	bnez	$a7, .LBB95_12
# %bb.13:                               # %middle.block
	beq	$a3, $a4, .LBB95_17
# %bb.14:                               # %vec.epilog.iter.check
	andi	$a5, $a3, 8
	bnez	$a5, .LBB95_8
# %bb.15:
	slli.d	$a5, $a4, 1
	.p2align	4, , 16
.LBB95_16:                              # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ldx.b	$a3, $a1, $a5
	addi.d	$a3, $a3, 10
	stx.b	$a3, $a0, $a5
	addi.d	$a5, $a5, 2
	bltu	$a5, $a2, .LBB95_16
.LBB95_17:
	ld.d	$s5, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s4, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
.LBB95_18:                              # %"_ZSt10__invoke_rIvRZ4mainE4$_13JPhS2_jEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end95:
	.size	_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE4$_13E9_M_invokeERKSt9_Any_dataOS0_S7_Oj, .Lfunc_end95-_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE4$_13E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPhS0_jEZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB96_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB96_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB96_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_13)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_13)
.LBB96_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end96:
	.size	_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end96-_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPjS0_jEZ4mainE4$_12E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.type	_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE4$_12E9_M_invokeERKSt9_Any_dataOS0_S7_Oj,@function
_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE4$_12E9_M_invokeERKSt9_Any_dataOS0_S7_Oj: # @"_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE4$_12E9_M_invokeERKSt9_Any_dataOS0_S7_Oj"
# %bb.0:
	ld.wu	$a0, $a3, 0
	beqz	$a0, .LBB97_3
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	move	$a3, $zero
	.p2align	4, , 16
.LBB97_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a2, 0
	addi.d	$a4, $a4, 10
	st.w	$a4, $a1, 0
	addi.d	$a3, $a3, 2
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, 8
	bltu	$a3, $a0, .LBB97_2
.LBB97_3:                               # %"_ZSt10__invoke_rIvRZ4mainE4$_12JPjS2_jEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end97:
	.size	_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE4$_12E9_M_invokeERKSt9_Any_dataOS0_S7_Oj, .Lfunc_end97-_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE4$_12E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPjS0_jEZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB98_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB98_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB98_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_12)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_12)
.LBB98_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end98:
	.size	_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end98-_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPjS0_jEZ4mainE4$_13E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.type	_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE4$_13E9_M_invokeERKSt9_Any_dataOS0_S7_Oj,@function
_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE4$_13E9_M_invokeERKSt9_Any_dataOS0_S7_Oj: # @"_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE4$_13E9_M_invokeERKSt9_Any_dataOS0_S7_Oj"
# %bb.0:
	ld.w	$a3, $a3, 0
	beqz	$a3, .LBB99_7
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	ori	$a4, $zero, 7
	bstrpick.d	$a0, $a3, 31, 0
	bltu	$a3, $a4, .LBB99_4
# %bb.2:                                # %vector.memcheck
	slli.d	$a3, $a0, 2
	addi.d	$a3, $a3, -4
	ori	$a3, $a3, 4
	add.d	$a4, $a2, $a3
	bgeu	$a1, $a4, .LBB99_8
# %bb.3:                                # %vector.memcheck
	add.d	$a3, $a1, $a3
	bgeu	$a2, $a3, .LBB99_8
.LBB99_4:
	move	$a3, $zero
.LBB99_5:                               # %.lr.ph.i.i.i.preheader
	alsl.d	$a1, $a3, $a1, 2
	alsl.d	$a2, $a3, $a2, 2
	.p2align	4, , 16
.LBB99_6:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a2, 0
	addi.d	$a4, $a4, 10
	st.w	$a4, $a1, 0
	addi.d	$a3, $a3, 2
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, 8
	bltu	$a3, $a0, .LBB99_6
.LBB99_7:                               # %"_ZSt10__invoke_rIvRZ4mainE4$_13JPjS2_jEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.LBB99_8:                               # %vector.ph
	addi.d	$a3, $a0, -1
	srli.d	$a3, $a3, 1
	addi.d	$a4, $a3, 1
	move	$a5, $a4
	bstrins.d	$a5, $zero, 1, 0
	slli.d	$a3, $a5, 1
	addi.d	$a6, $a1, 16
	addi.d	$a7, $a2, 16
	move	$t0, $a5
	.p2align	4, , 16
.LBB99_9:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t1, $a7, -16
	ld.w	$t2, $a7, -8
	ld.w	$t3, $a7, 0
	ld.w	$t4, $a7, 8
	vinsgr2vr.w	$vr0, $t1, 0
	vinsgr2vr.w	$vr0, $t2, 1
	vinsgr2vr.w	$vr0, $t3, 2
	vinsgr2vr.w	$vr0, $t4, 3
	vaddi.wu	$vr0, $vr0, 10
	vstelm.w	$vr0, $a6, -16, 0
	vstelm.w	$vr0, $a6, -8, 1
	vstelm.w	$vr0, $a6, 0, 2
	vstelm.w	$vr0, $a6, 8, 3
	addi.d	$t0, $t0, -4
	addi.d	$a6, $a6, 32
	addi.d	$a7, $a7, 32
	bnez	$t0, .LBB99_9
# %bb.10:                               # %middle.block
	beq	$a4, $a5, .LBB99_7
	b	.LBB99_5
.Lfunc_end99:
	.size	_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE4$_13E9_M_invokeERKSt9_Any_dataOS0_S7_Oj, .Lfunc_end99-_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE4$_13E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPjS0_jEZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB100_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB100_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB100_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_13)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_13)
.LBB100_4:                              # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end100:
	.size	_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end100-_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPmS0_jEZ4mainE4$_12E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.type	_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE4$_12E9_M_invokeERKSt9_Any_dataOS0_S7_Oj,@function
_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE4$_12E9_M_invokeERKSt9_Any_dataOS0_S7_Oj: # @"_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE4$_12E9_M_invokeERKSt9_Any_dataOS0_S7_Oj"
# %bb.0:
	ld.wu	$a0, $a3, 0
	beqz	$a0, .LBB101_3
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	move	$a3, $zero
	.p2align	4, , 16
.LBB101_2:                              # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a2, 0
	addi.d	$a4, $a4, 10
	st.d	$a4, $a1, 0
	addi.d	$a3, $a3, 2
	addi.d	$a1, $a1, 16
	addi.d	$a2, $a2, 16
	bltu	$a3, $a0, .LBB101_2
.LBB101_3:                              # %"_ZSt10__invoke_rIvRZ4mainE4$_12JPmS2_jEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end101:
	.size	_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE4$_12E9_M_invokeERKSt9_Any_dataOS0_S7_Oj, .Lfunc_end101-_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE4$_12E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPmS0_jEZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB102_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB102_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB102_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_12)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_12)
.LBB102_4:                              # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end102:
	.size	_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end102-_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPmS0_jEZ4mainE4$_13E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.type	_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE4$_13E9_M_invokeERKSt9_Any_dataOS0_S7_Oj,@function
_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE4$_13E9_M_invokeERKSt9_Any_dataOS0_S7_Oj: # @"_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE4$_13E9_M_invokeERKSt9_Any_dataOS0_S7_Oj"
# %bb.0:
	ld.w	$a3, $a3, 0
	beqz	$a3, .LBB103_7
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	ori	$a4, $zero, 3
	bstrpick.d	$a0, $a3, 31, 0
	bltu	$a3, $a4, .LBB103_4
# %bb.2:                                # %vector.memcheck
	slli.d	$a3, $a0, 3
	addi.d	$a3, $a3, -8
	ori	$a3, $a3, 8
	add.d	$a4, $a2, $a3
	bgeu	$a1, $a4, .LBB103_8
# %bb.3:                                # %vector.memcheck
	add.d	$a3, $a1, $a3
	bgeu	$a2, $a3, .LBB103_8
.LBB103_4:
	move	$a3, $zero
.LBB103_5:                              # %.lr.ph.i.i.i.preheader
	alsl.d	$a1, $a3, $a1, 3
	alsl.d	$a2, $a3, $a2, 3
	.p2align	4, , 16
.LBB103_6:                              # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a2, 0
	addi.d	$a4, $a4, 10
	st.d	$a4, $a1, 0
	addi.d	$a3, $a3, 2
	addi.d	$a1, $a1, 16
	addi.d	$a2, $a2, 16
	bltu	$a3, $a0, .LBB103_6
.LBB103_7:                              # %"_ZSt10__invoke_rIvRZ4mainE4$_13JPmS2_jEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.LBB103_8:                              # %vector.ph
	addi.d	$a3, $a0, -1
	srli.d	$a3, $a3, 1
	addi.d	$a4, $a3, 1
	move	$a5, $a4
	bstrins.d	$a5, $zero, 0, 0
	slli.d	$a3, $a5, 1
	addi.d	$a6, $a2, 16
	addi.d	$a7, $a1, 16
	move	$t0, $a5
	.p2align	4, , 16
.LBB103_9:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$t1, $a6, -16
	ld.d	$t2, $a6, 0
	vinsgr2vr.d	$vr0, $t1, 0
	vinsgr2vr.d	$vr0, $t2, 1
	vaddi.du	$vr0, $vr0, 10
	vstelm.d	$vr0, $a7, -16, 0
	vstelm.d	$vr0, $a7, 0, 1
	addi.d	$a6, $a6, 32
	addi.d	$t0, $t0, -2
	addi.d	$a7, $a7, 32
	bnez	$t0, .LBB103_9
# %bb.10:                               # %middle.block
	beq	$a4, $a5, .LBB103_7
	b	.LBB103_5
.Lfunc_end103:
	.size	_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE4$_13E9_M_invokeERKSt9_Any_dataOS0_S7_Oj, .Lfunc_end103-_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE4$_13E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPmS0_jEZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB104_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB104_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB104_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_13)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_13)
.LBB104_4:                              # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end104:
	.size	_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end104-_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPhS0_jEZ4mainE4$_14E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.type	_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE4$_14E9_M_invokeERKSt9_Any_dataOS0_S7_Oj,@function
_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE4$_14E9_M_invokeERKSt9_Any_dataOS0_S7_Oj: # @"_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE4$_14E9_M_invokeERKSt9_Any_dataOS0_S7_Oj"
# %bb.0:
	ld.wu	$a0, $a3, 0
	beqz	$a0, .LBB105_3
# %bb.1:                                # %.lr.ph.i.i.i
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	move	$a4, $zero
	srli.d	$a3, $a0, 1
	.p2align	4, , 16
.LBB105_2:                              # =>This Inner Loop Header: Depth=1
	ld.bu	$a5, $a1, 0
	add.d	$a4, $a4, $a5
	addi.d	$a4, $a4, 10
	stx.b	$a4, $a2, $a3
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 1
	bnez	$a0, .LBB105_2
.LBB105_3:                              # %"_ZSt10__invoke_rIvRZ4mainE4$_14JPhS2_jEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end105:
	.size	_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE4$_14E9_M_invokeERKSt9_Any_dataOS0_S7_Oj, .Lfunc_end105-_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE4$_14E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPhS0_jEZ4mainE4$_14E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE4$_14E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE4$_14E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE4$_14E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB106_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB106_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_14E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB106_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_14)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_14)
.LBB106_4:                              # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_14E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end106:
	.size	_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE4$_14E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end106-_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE4$_14E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPhS0_jEZ4mainE4$_15E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.type	_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE4$_15E9_M_invokeERKSt9_Any_dataOS0_S7_Oj,@function
_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE4$_15E9_M_invokeERKSt9_Any_dataOS0_S7_Oj: # @"_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE4$_15E9_M_invokeERKSt9_Any_dataOS0_S7_Oj"
# %bb.0:
	ld.wu	$a0, $a3, 0
	beqz	$a0, .LBB107_3
# %bb.1:                                # %.lr.ph.i.i.i
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	move	$a4, $zero
	srli.d	$a3, $a0, 1
	.p2align	4, , 16
.LBB107_2:                              # =>This Inner Loop Header: Depth=1
	ld.bu	$a5, $a1, 0
	add.d	$a4, $a4, $a5
	addi.d	$a4, $a4, 10
	stx.b	$a4, $a2, $a3
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 1
	bnez	$a0, .LBB107_2
.LBB107_3:                              # %"_ZSt10__invoke_rIvRZ4mainE4$_15JPhS2_jEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end107:
	.size	_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE4$_15E9_M_invokeERKSt9_Any_dataOS0_S7_Oj, .Lfunc_end107-_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE4$_15E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPhS0_jEZ4mainE4$_15E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE4$_15E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE4$_15E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE4$_15E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB108_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB108_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_15E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB108_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_15)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_15)
.LBB108_4:                              # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_15E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end108:
	.size	_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE4$_15E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end108-_ZNSt17_Function_handlerIFvPhS0_jEZ4mainE4$_15E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPjS0_jEZ4mainE4$_14E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.type	_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE4$_14E9_M_invokeERKSt9_Any_dataOS0_S7_Oj,@function
_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE4$_14E9_M_invokeERKSt9_Any_dataOS0_S7_Oj: # @"_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE4$_14E9_M_invokeERKSt9_Any_dataOS0_S7_Oj"
# %bb.0:
	ld.w	$a3, $a3, 0
	beqz	$a3, .LBB109_3
# %bb.1:                                # %.lr.ph.i.i.i
	move	$a0, $zero
	ld.d	$a4, $a2, 0
	ld.d	$a1, $a1, 0
	bstrpick.d	$a2, $a3, 31, 0
	bstrpick.d	$a3, $a3, 31, 1
	alsl.d	$a3, $a3, $a4, 2
	.p2align	4, , 16
.LBB109_2:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a1, 0
	add.d	$a0, $a0, $a4
	addi.d	$a0, $a0, 10
	st.w	$a0, $a3, 0
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB109_2
.LBB109_3:                              # %"_ZSt10__invoke_rIvRZ4mainE4$_14JPjS2_jEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end109:
	.size	_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE4$_14E9_M_invokeERKSt9_Any_dataOS0_S7_Oj, .Lfunc_end109-_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE4$_14E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPjS0_jEZ4mainE4$_14E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE4$_14E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE4$_14E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE4$_14E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB110_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB110_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_14E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB110_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_14)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_14)
.LBB110_4:                              # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_14E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end110:
	.size	_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE4$_14E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end110-_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE4$_14E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPjS0_jEZ4mainE4$_15E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.type	_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE4$_15E9_M_invokeERKSt9_Any_dataOS0_S7_Oj,@function
_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE4$_15E9_M_invokeERKSt9_Any_dataOS0_S7_Oj: # @"_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE4$_15E9_M_invokeERKSt9_Any_dataOS0_S7_Oj"
# %bb.0:
	ld.w	$a3, $a3, 0
	beqz	$a3, .LBB111_7
# %bb.1:                                # %.lr.ph.i.i.i
	ld.d	$a1, $a1, 0
	ld.d	$a0, $a2, 0
	bstrpick.d	$a2, $a3, 31, 0
	bstrpick.d	$a4, $a3, 31, 1
	ori	$a5, $zero, 8
	alsl.d	$a0, $a4, $a0, 2
	bltu	$a3, $a5, .LBB111_4
# %bb.2:                                # %vector.memcheck
	alsl.d	$a3, $a2, $a1, 2
	bgeu	$a0, $a3, .LBB111_8
# %bb.3:                                # %vector.memcheck
	addi.d	$a3, $a0, 4
	bgeu	$a1, $a3, .LBB111_8
.LBB111_4:
	move	$a3, $zero
	move	$a4, $zero
.LBB111_5:                              # %scalar.ph.preheader
	sub.d	$a2, $a2, $a3
	alsl.d	$a1, $a3, $a1, 2
	.p2align	4, , 16
.LBB111_6:                              # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a1, 0
	add.d	$a3, $a4, $a3
	addi.d	$a4, $a3, 10
	st.w	$a4, $a0, 0
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 4
	bnez	$a2, .LBB111_6
.LBB111_7:                              # %"_ZSt10__invoke_rIvRZ4mainE4$_15JPjS2_jEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.LBB111_8:                              # %vector.ph
	bstrpick.d	$a3, $a2, 31, 3
	slli.d	$a3, $a3, 3
	vrepli.b	$vr0, 0
	addi.d	$a4, $a1, 16
	move	$a5, $a3
	vori.b	$vr1, $vr0, 0
	.p2align	4, , 16
.LBB111_9:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a4, -16
	vld	$vr3, $a4, 0
	vadd.w	$vr0, $vr0, $vr2
	vadd.w	$vr1, $vr1, $vr3
	vaddi.wu	$vr0, $vr0, 10
	vaddi.wu	$vr1, $vr1, 10
	addi.d	$a5, $a5, -8
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB111_9
# %bb.10:                               # %middle.block
	vadd.w	$vr0, $vr1, $vr0
	vhaddw.d.w	$vr0, $vr0, $vr0
	vhaddw.q.d	$vr0, $vr0, $vr0
	vpickve2gr.d	$a4, $vr0, 0
	st.w	$a4, $a0, 0
	bne	$a3, $a2, .LBB111_5
	b	.LBB111_7
.Lfunc_end111:
	.size	_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE4$_15E9_M_invokeERKSt9_Any_dataOS0_S7_Oj, .Lfunc_end111-_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE4$_15E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPjS0_jEZ4mainE4$_15E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE4$_15E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE4$_15E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE4$_15E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB112_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB112_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_15E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB112_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_15)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_15)
.LBB112_4:                              # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_15E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end112:
	.size	_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE4$_15E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end112-_ZNSt17_Function_handlerIFvPjS0_jEZ4mainE4$_15E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPmS0_jEZ4mainE4$_14E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.type	_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE4$_14E9_M_invokeERKSt9_Any_dataOS0_S7_Oj,@function
_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE4$_14E9_M_invokeERKSt9_Any_dataOS0_S7_Oj: # @"_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE4$_14E9_M_invokeERKSt9_Any_dataOS0_S7_Oj"
# %bb.0:
	ld.w	$a3, $a3, 0
	beqz	$a3, .LBB113_3
# %bb.1:                                # %.lr.ph.i.i.i
	move	$a0, $zero
	ld.d	$a4, $a2, 0
	ld.d	$a1, $a1, 0
	bstrpick.d	$a2, $a3, 31, 0
	bstrpick.d	$a3, $a3, 31, 1
	alsl.d	$a3, $a3, $a4, 3
	.p2align	4, , 16
.LBB113_2:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a1, 0
	add.d	$a0, $a0, $a4
	addi.d	$a0, $a0, 10
	bstrpick.d	$a4, $a0, 31, 0
	st.d	$a4, $a3, 0
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 8
	bnez	$a2, .LBB113_2
.LBB113_3:                              # %"_ZSt10__invoke_rIvRZ4mainE4$_14JPmS2_jEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end113:
	.size	_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE4$_14E9_M_invokeERKSt9_Any_dataOS0_S7_Oj, .Lfunc_end113-_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE4$_14E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPmS0_jEZ4mainE4$_14E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE4$_14E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE4$_14E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE4$_14E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB114_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB114_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_14E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB114_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_14)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_14)
.LBB114_4:                              # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_14E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end114:
	.size	_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE4$_14E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end114-_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE4$_14E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPmS0_jEZ4mainE4$_15E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.type	_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE4$_15E9_M_invokeERKSt9_Any_dataOS0_S7_Oj,@function
_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE4$_15E9_M_invokeERKSt9_Any_dataOS0_S7_Oj: # @"_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE4$_15E9_M_invokeERKSt9_Any_dataOS0_S7_Oj"
# %bb.0:
	ld.w	$a3, $a3, 0
	beqz	$a3, .LBB115_3
# %bb.1:                                # %.lr.ph.i.i.i
	move	$a0, $zero
	ld.d	$a4, $a2, 0
	ld.d	$a1, $a1, 0
	bstrpick.d	$a2, $a3, 31, 0
	bstrpick.d	$a3, $a3, 31, 1
	alsl.d	$a3, $a3, $a4, 3
	.p2align	4, , 16
.LBB115_2:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a1, 0
	add.d	$a0, $a0, $a4
	addi.d	$a0, $a0, 10
	bstrpick.d	$a4, $a0, 31, 0
	st.d	$a4, $a3, 0
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 8
	bnez	$a2, .LBB115_2
.LBB115_3:                              # %"_ZSt10__invoke_rIvRZ4mainE4$_15JPmS2_jEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end115:
	.size	_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE4$_15E9_M_invokeERKSt9_Any_dataOS0_S7_Oj, .Lfunc_end115-_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE4$_15E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPmS0_jEZ4mainE4$_15E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE4$_15E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE4$_15E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE4$_15E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB116_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB116_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_15E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB116_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_15)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_15)
.LBB116_4:                              # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_15E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end116:
	.size	_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE4$_15E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end116-_ZNSt17_Function_handlerIFvPmS0_jEZ4mainE4$_15E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt8functionIFvPjS0_S0_jEEclES0_S0_S0_j,"axG",@progbits,_ZNKSt8functionIFvPjS0_S0_jEEclES0_S0_S0_j,comdat
	.weak	_ZNKSt8functionIFvPjS0_S0_jEEclES0_S0_S0_j # -- Begin function _ZNKSt8functionIFvPjS0_S0_jEEclES0_S0_S0_j
	.p2align	5
	.type	_ZNKSt8functionIFvPjS0_S0_jEEclES0_S0_S0_j,@function
_ZNKSt8functionIFvPjS0_S0_jEEclES0_S0_S0_j: # @_ZNKSt8functionIFvPjS0_S0_jEEclES0_S0_S0_j
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -48
	.cfi_def_cfa_offset 48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	ld.d	$a5, $a0, 16
	st.d	$a1, $sp, 32
	st.d	$a2, $sp, 24
	st.d	$a3, $sp, 16
	st.w	$a4, $sp, 12
	beqz	$a5, .LBB117_2
# %bb.1:
	ld.d	$a5, $a0, 24
	addi.d	$a1, $sp, 32
	addi.d	$a2, $sp, 24
	addi.d	$a3, $sp, 16
	addi.d	$a4, $sp, 12
	jirl	$ra, $a5, 0
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB117_2:
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Lfunc_end117:
	.size	_ZNKSt8functionIFvPjS0_S0_jEEclES0_S0_S0_j, .Lfunc_end117-_ZNKSt8functionIFvPjS0_S0_jEEclES0_S0_S0_j
	.cfi_endproc
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZL18callThroughOptnoneIRSt8functionIFvPjS1_S1_jEEJS1_S1_RS1_RjEEvOT_DpOT0_
	.type	_ZL18callThroughOptnoneIRSt8functionIFvPjS1_S1_jEEJS1_S1_RS1_RjEEvOT_DpOT0_,@function
_ZL18callThroughOptnoneIRSt8functionIFvPjS1_S1_jEEJS1_S1_RS1_RjEEvOT_DpOT0_: # @_ZL18callThroughOptnoneIRSt8functionIFvPjS1_S1_jEEJS1_S1_RS1_RjEEvOT_DpOT0_
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -48
	.cfi_def_cfa_offset 48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	st.d	$a0, $sp, 32
	st.d	$a1, $sp, 24
	st.d	$a2, $sp, 16
	st.d	$a3, $sp, 8
	st.d	$a4, $sp, 0
	ld.d	$a0, $sp, 32
	ld.d	$a1, $sp, 24
	ld.d	$a1, $a1, 0
	ld.d	$a2, $sp, 16
	ld.d	$a2, $a2, 0
	ld.d	$a3, $sp, 8
	ld.d	$a3, $a3, 0
	ld.d	$a4, $sp, 0
	ld.w	$a4, $a4, 0
	pcaddu18i	$ra, %call36(_ZNKSt8functionIFvPjS0_S0_jEEclES0_S0_S0_j)
	jirl	$ra, $ra, 0
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end118:
	.size	_ZL18callThroughOptnoneIRSt8functionIFvPjS1_S1_jEEJS1_S1_RS1_RjEEvOT_DpOT0_, .Lfunc_end118-_ZL18callThroughOptnoneIRSt8functionIFvPjS1_S1_jEEJS1_S1_RS1_RjEEvOT_DpOT0_
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPjS0_S0_jEZ4mainE4$_16E9_M_invokeERKSt9_Any_dataOS0_S7_S7_Oj
	.type	_ZNSt17_Function_handlerIFvPjS0_S0_jEZ4mainE4$_16E9_M_invokeERKSt9_Any_dataOS0_S7_S7_Oj,@function
_ZNSt17_Function_handlerIFvPjS0_S0_jEZ4mainE4$_16E9_M_invokeERKSt9_Any_dataOS0_S7_S7_Oj: # @"_ZNSt17_Function_handlerIFvPjS0_S0_jEZ4mainE4$_16E9_M_invokeERKSt9_Any_dataOS0_S7_S7_Oj"
# %bb.0:
	ld.wu	$a0, $a4, 0
	beqz	$a0, .LBB119_3
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	ld.d	$a3, $a3, 0
	.p2align	4, , 16
.LBB119_2:                              # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a2, 0
	ld.w	$a5, $a3, 0
	add.d	$a4, $a4, $a5
	addi.d	$a4, $a4, 10
	st.w	$a4, $a1, 0
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 4
	addi.d	$a3, $a3, 4
	addi.d	$a2, $a2, 4
	bnez	$a0, .LBB119_2
.LBB119_3:                              # %"_ZSt10__invoke_rIvRZ4mainE4$_16JPjS2_S2_jEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end119:
	.size	_ZNSt17_Function_handlerIFvPjS0_S0_jEZ4mainE4$_16E9_M_invokeERKSt9_Any_dataOS0_S7_S7_Oj, .Lfunc_end119-_ZNSt17_Function_handlerIFvPjS0_S0_jEZ4mainE4$_16E9_M_invokeERKSt9_Any_dataOS0_S7_S7_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPjS0_S0_jEZ4mainE4$_16E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFvPjS0_S0_jEZ4mainE4$_16E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFvPjS0_S0_jEZ4mainE4$_16E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFvPjS0_S0_jEZ4mainE4$_16E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB120_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB120_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_16E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB120_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_16)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_16)
.LBB120_4:                              # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_16E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end120:
	.size	_ZNSt17_Function_handlerIFvPjS0_S0_jEZ4mainE4$_16E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end120-_ZNSt17_Function_handlerIFvPjS0_S0_jEZ4mainE4$_16E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPjS0_S0_jEZ4mainE4$_17E9_M_invokeERKSt9_Any_dataOS0_S7_S7_Oj
	.type	_ZNSt17_Function_handlerIFvPjS0_S0_jEZ4mainE4$_17E9_M_invokeERKSt9_Any_dataOS0_S7_S7_Oj,@function
_ZNSt17_Function_handlerIFvPjS0_S0_jEZ4mainE4$_17E9_M_invokeERKSt9_Any_dataOS0_S7_S7_Oj: # @"_ZNSt17_Function_handlerIFvPjS0_S0_jEZ4mainE4$_17E9_M_invokeERKSt9_Any_dataOS0_S7_S7_Oj"
# %bb.0:
	ld.w	$a4, $a4, 0
	beqz	$a4, .LBB121_5
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a1, $a1, 0
	ld.d	$a0, $a2, 0
	ld.d	$a2, $a3, 0
	ori	$a5, $zero, 8
	bstrpick.d	$a3, $a4, 31, 0
	bgeu	$a4, $a5, .LBB121_6
# %bb.2:
	move	$a4, $zero
.LBB121_3:                              # %.lr.ph.i.i.i.preheader
	sub.d	$a3, $a3, $a4
	alsl.d	$a1, $a4, $a1, 2
	alsl.d	$a2, $a4, $a2, 2
	alsl.d	$a0, $a4, $a0, 2
	.p2align	4, , 16
.LBB121_4:                              # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a0, 0
	ld.w	$a5, $a2, 0
	add.d	$a4, $a4, $a5
	addi.d	$a4, $a4, 10
	st.w	$a4, $a1, 0
	addi.d	$a3, $a3, -1
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, 4
	addi.d	$a0, $a0, 4
	bnez	$a3, .LBB121_4
.LBB121_5:                              # %"_ZSt10__invoke_rIvRZ4mainE4$_17JPjS2_S2_jEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.LBB121_6:                              # %vector.memcheck
	sub.d	$a6, $a1, $a0
	ori	$a5, $zero, 32
	move	$a4, $zero
	bltu	$a6, $a5, .LBB121_3
# %bb.7:                                # %vector.memcheck
	sub.d	$a6, $a1, $a2
	bltu	$a6, $a5, .LBB121_3
# %bb.8:                                # %vector.ph
	bstrpick.d	$a4, $a3, 31, 3
	slli.d	$a4, $a4, 3
	addi.d	$a5, $a1, 16
	addi.d	$a6, $a2, 16
	addi.d	$a7, $a0, 16
	move	$t0, $a4
	.p2align	4, , 16
.LBB121_9:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a7, -16
	vld	$vr1, $a7, 0
	vld	$vr2, $a6, -16
	vld	$vr3, $a6, 0
	vadd.w	$vr0, $vr0, $vr2
	vadd.w	$vr1, $vr1, $vr3
	vaddi.wu	$vr0, $vr0, 10
	vaddi.wu	$vr1, $vr1, 10
	vst	$vr0, $a5, -16
	vst	$vr1, $a5, 0
	addi.d	$t0, $t0, -8
	addi.d	$a5, $a5, 32
	addi.d	$a6, $a6, 32
	addi.d	$a7, $a7, 32
	bnez	$t0, .LBB121_9
# %bb.10:                               # %middle.block
	bne	$a4, $a3, .LBB121_3
	b	.LBB121_5
.Lfunc_end121:
	.size	_ZNSt17_Function_handlerIFvPjS0_S0_jEZ4mainE4$_17E9_M_invokeERKSt9_Any_dataOS0_S7_S7_Oj, .Lfunc_end121-_ZNSt17_Function_handlerIFvPjS0_S0_jEZ4mainE4$_17E9_M_invokeERKSt9_Any_dataOS0_S7_S7_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPjS0_S0_jEZ4mainE4$_17E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFvPjS0_S0_jEZ4mainE4$_17E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFvPjS0_S0_jEZ4mainE4$_17E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFvPjS0_S0_jEZ4mainE4$_17E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB122_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB122_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_17E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB122_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_17)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_17)
.LBB122_4:                              # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_17E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end122:
	.size	_ZNSt17_Function_handlerIFvPjS0_S0_jEZ4mainE4$_17E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end122-_ZNSt17_Function_handlerIFvPjS0_S0_jEZ4mainE4$_17E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt8functionIFvPhS0_S0_jEEclES0_S0_S0_j,"axG",@progbits,_ZNKSt8functionIFvPhS0_S0_jEEclES0_S0_S0_j,comdat
	.weak	_ZNKSt8functionIFvPhS0_S0_jEEclES0_S0_S0_j # -- Begin function _ZNKSt8functionIFvPhS0_S0_jEEclES0_S0_S0_j
	.p2align	5
	.type	_ZNKSt8functionIFvPhS0_S0_jEEclES0_S0_S0_j,@function
_ZNKSt8functionIFvPhS0_S0_jEEclES0_S0_S0_j: # @_ZNKSt8functionIFvPhS0_S0_jEEclES0_S0_S0_j
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -48
	.cfi_def_cfa_offset 48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	ld.d	$a5, $a0, 16
	st.d	$a1, $sp, 32
	st.d	$a2, $sp, 24
	st.d	$a3, $sp, 16
	st.w	$a4, $sp, 12
	beqz	$a5, .LBB123_2
# %bb.1:
	ld.d	$a5, $a0, 24
	addi.d	$a1, $sp, 32
	addi.d	$a2, $sp, 24
	addi.d	$a3, $sp, 16
	addi.d	$a4, $sp, 12
	jirl	$ra, $a5, 0
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB123_2:
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Lfunc_end123:
	.size	_ZNKSt8functionIFvPhS0_S0_jEEclES0_S0_S0_j, .Lfunc_end123-_ZNKSt8functionIFvPhS0_S0_jEEclES0_S0_S0_j
	.cfi_endproc
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZL18callThroughOptnoneIRSt8functionIFvPhS1_S1_jEEJS1_S1_RS1_RjEEvOT_DpOT0_
	.type	_ZL18callThroughOptnoneIRSt8functionIFvPhS1_S1_jEEJS1_S1_RS1_RjEEvOT_DpOT0_,@function
_ZL18callThroughOptnoneIRSt8functionIFvPhS1_S1_jEEJS1_S1_RS1_RjEEvOT_DpOT0_: # @_ZL18callThroughOptnoneIRSt8functionIFvPhS1_S1_jEEJS1_S1_RS1_RjEEvOT_DpOT0_
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -48
	.cfi_def_cfa_offset 48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	st.d	$a0, $sp, 32
	st.d	$a1, $sp, 24
	st.d	$a2, $sp, 16
	st.d	$a3, $sp, 8
	st.d	$a4, $sp, 0
	ld.d	$a0, $sp, 32
	ld.d	$a1, $sp, 24
	ld.d	$a1, $a1, 0
	ld.d	$a2, $sp, 16
	ld.d	$a2, $a2, 0
	ld.d	$a3, $sp, 8
	ld.d	$a3, $a3, 0
	ld.d	$a4, $sp, 0
	ld.w	$a4, $a4, 0
	pcaddu18i	$ra, %call36(_ZNKSt8functionIFvPhS0_S0_jEEclES0_S0_S0_j)
	jirl	$ra, $ra, 0
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end124:
	.size	_ZL18callThroughOptnoneIRSt8functionIFvPhS1_S1_jEEJS1_S1_RS1_RjEEvOT_DpOT0_, .Lfunc_end124-_ZL18callThroughOptnoneIRSt8functionIFvPhS1_S1_jEEJS1_S1_RS1_RjEEvOT_DpOT0_
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPhS0_S0_jEZ4mainE4$_16E9_M_invokeERKSt9_Any_dataOS0_S7_S7_Oj
	.type	_ZNSt17_Function_handlerIFvPhS0_S0_jEZ4mainE4$_16E9_M_invokeERKSt9_Any_dataOS0_S7_S7_Oj,@function
_ZNSt17_Function_handlerIFvPhS0_S0_jEZ4mainE4$_16E9_M_invokeERKSt9_Any_dataOS0_S7_S7_Oj: # @"_ZNSt17_Function_handlerIFvPhS0_S0_jEZ4mainE4$_16E9_M_invokeERKSt9_Any_dataOS0_S7_S7_Oj"
# %bb.0:
	ld.wu	$a0, $a4, 0
	beqz	$a0, .LBB125_3
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	ld.d	$a3, $a3, 0
	.p2align	4, , 16
.LBB125_2:                              # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a4, $a2, 0
	ld.b	$a5, $a3, 0
	add.d	$a4, $a4, $a5
	addi.d	$a4, $a4, 10
	st.b	$a4, $a1, 0
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 1
	addi.d	$a3, $a3, 1
	addi.d	$a2, $a2, 1
	bnez	$a0, .LBB125_2
.LBB125_3:                              # %"_ZSt10__invoke_rIvRZ4mainE4$_16JPhS2_S2_jEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end125:
	.size	_ZNSt17_Function_handlerIFvPhS0_S0_jEZ4mainE4$_16E9_M_invokeERKSt9_Any_dataOS0_S7_S7_Oj, .Lfunc_end125-_ZNSt17_Function_handlerIFvPhS0_S0_jEZ4mainE4$_16E9_M_invokeERKSt9_Any_dataOS0_S7_S7_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPhS0_S0_jEZ4mainE4$_16E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFvPhS0_S0_jEZ4mainE4$_16E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFvPhS0_S0_jEZ4mainE4$_16E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFvPhS0_S0_jEZ4mainE4$_16E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB126_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB126_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_16E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB126_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_16)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_16)
.LBB126_4:                              # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_16E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end126:
	.size	_ZNSt17_Function_handlerIFvPhS0_S0_jEZ4mainE4$_16E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end126-_ZNSt17_Function_handlerIFvPhS0_S0_jEZ4mainE4$_16E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPhS0_S0_jEZ4mainE4$_17E9_M_invokeERKSt9_Any_dataOS0_S7_S7_Oj
	.type	_ZNSt17_Function_handlerIFvPhS0_S0_jEZ4mainE4$_17E9_M_invokeERKSt9_Any_dataOS0_S7_S7_Oj,@function
_ZNSt17_Function_handlerIFvPhS0_S0_jEZ4mainE4$_17E9_M_invokeERKSt9_Any_dataOS0_S7_S7_Oj: # @"_ZNSt17_Function_handlerIFvPhS0_S0_jEZ4mainE4$_17E9_M_invokeERKSt9_Any_dataOS0_S7_S7_Oj"
# %bb.0:
	ld.w	$a5, $a4, 0
	beqz	$a5, .LBB127_5
# %bb.1:                                # %iter.check
	ld.d	$a1, $a1, 0
	ld.d	$a0, $a2, 0
	ld.d	$a2, $a3, 0
	ori	$a4, $zero, 16
	bstrpick.d	$a3, $a5, 31, 0
	bgeu	$a5, $a4, .LBB127_6
# %bb.2:
	move	$a4, $zero
.LBB127_3:                              # %.lr.ph.i.i.i.preheader
	sub.d	$a3, $a3, $a4
	add.d	$a1, $a1, $a4
	add.d	$a2, $a2, $a4
	add.d	$a0, $a0, $a4
	.p2align	4, , 16
.LBB127_4:                              # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a4, $a0, 0
	ld.b	$a5, $a2, 0
	add.d	$a4, $a4, $a5
	addi.d	$a4, $a4, 10
	st.b	$a4, $a1, 0
	addi.d	$a3, $a3, -1
	addi.d	$a1, $a1, 1
	addi.d	$a2, $a2, 1
	addi.d	$a0, $a0, 1
	bnez	$a3, .LBB127_4
.LBB127_5:                              # %"_ZSt10__invoke_rIvRZ4mainE4$_17JPhS2_S2_jEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.LBB127_6:                              # %vector.memcheck
	sub.d	$a7, $a1, $a0
	ori	$a6, $zero, 32
	move	$a4, $zero
	bltu	$a7, $a6, .LBB127_3
# %bb.7:                                # %vector.memcheck
	sub.d	$a7, $a1, $a2
	bltu	$a7, $a6, .LBB127_3
# %bb.8:                                # %vector.main.loop.iter.check
	ori	$a4, $zero, 32
	bgeu	$a5, $a4, .LBB127_13
# %bb.9:
	move	$a4, $zero
.LBB127_10:                             # %vec.epilog.ph
	move	$t0, $a4
	bstrpick.d	$a4, $a3, 31, 4
	slli.d	$a4, $a4, 4
	sub.d	$a5, $t0, $a4
	add.d	$a6, $a1, $t0
	add.d	$a7, $a2, $t0
	add.d	$t0, $a0, $t0
	.p2align	4, , 16
.LBB127_11:                             # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $t0, 0
	vld	$vr1, $a7, 0
	vadd.b	$vr0, $vr0, $vr1
	vaddi.bu	$vr0, $vr0, 10
	vst	$vr0, $a6, 0
	addi.d	$a5, $a5, 16
	addi.d	$a6, $a6, 16
	addi.d	$a7, $a7, 16
	addi.d	$t0, $t0, 16
	bnez	$a5, .LBB127_11
# %bb.12:                               # %vec.epilog.middle.block
	bne	$a4, $a3, .LBB127_3
	b	.LBB127_5
.LBB127_13:                             # %vector.ph
	bstrpick.d	$a4, $a3, 31, 5
	slli.d	$a4, $a4, 5
	addi.d	$a5, $a1, 16
	addi.d	$a6, $a2, 16
	addi.d	$a7, $a0, 16
	move	$t0, $a4
	.p2align	4, , 16
.LBB127_14:                             # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a7, -16
	vld	$vr1, $a7, 0
	vld	$vr2, $a6, -16
	vld	$vr3, $a6, 0
	vadd.b	$vr0, $vr0, $vr2
	vadd.b	$vr1, $vr1, $vr3
	vaddi.bu	$vr0, $vr0, 10
	vaddi.bu	$vr1, $vr1, 10
	vst	$vr0, $a5, -16
	vst	$vr1, $a5, 0
	addi.d	$t0, $t0, -32
	addi.d	$a5, $a5, 32
	addi.d	$a6, $a6, 32
	addi.d	$a7, $a7, 32
	bnez	$t0, .LBB127_14
# %bb.15:                               # %middle.block
	beq	$a4, $a3, .LBB127_5
# %bb.16:                               # %vec.epilog.iter.check
	andi	$a5, $a3, 16
	beqz	$a5, .LBB127_3
	b	.LBB127_10
.Lfunc_end127:
	.size	_ZNSt17_Function_handlerIFvPhS0_S0_jEZ4mainE4$_17E9_M_invokeERKSt9_Any_dataOS0_S7_S7_Oj, .Lfunc_end127-_ZNSt17_Function_handlerIFvPhS0_S0_jEZ4mainE4$_17E9_M_invokeERKSt9_Any_dataOS0_S7_S7_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPhS0_S0_jEZ4mainE4$_17E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFvPhS0_S0_jEZ4mainE4$_17E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFvPhS0_S0_jEZ4mainE4$_17E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFvPhS0_S0_jEZ4mainE4$_17E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB128_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB128_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_17E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB128_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_17)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_17)
.LBB128_4:                              # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_17E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end128:
	.size	_ZNSt17_Function_handlerIFvPhS0_S0_jEZ4mainE4$_17E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end128-_ZNSt17_Function_handlerIFvPhS0_S0_jEZ4mainE4$_17E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt8functionIFvPmS0_S0_jEEclES0_S0_S0_j,"axG",@progbits,_ZNKSt8functionIFvPmS0_S0_jEEclES0_S0_S0_j,comdat
	.weak	_ZNKSt8functionIFvPmS0_S0_jEEclES0_S0_S0_j # -- Begin function _ZNKSt8functionIFvPmS0_S0_jEEclES0_S0_S0_j
	.p2align	5
	.type	_ZNKSt8functionIFvPmS0_S0_jEEclES0_S0_S0_j,@function
_ZNKSt8functionIFvPmS0_S0_jEEclES0_S0_S0_j: # @_ZNKSt8functionIFvPmS0_S0_jEEclES0_S0_S0_j
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -48
	.cfi_def_cfa_offset 48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	ld.d	$a5, $a0, 16
	st.d	$a1, $sp, 32
	st.d	$a2, $sp, 24
	st.d	$a3, $sp, 16
	st.w	$a4, $sp, 12
	beqz	$a5, .LBB129_2
# %bb.1:
	ld.d	$a5, $a0, 24
	addi.d	$a1, $sp, 32
	addi.d	$a2, $sp, 24
	addi.d	$a3, $sp, 16
	addi.d	$a4, $sp, 12
	jirl	$ra, $a5, 0
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB129_2:
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Lfunc_end129:
	.size	_ZNKSt8functionIFvPmS0_S0_jEEclES0_S0_S0_j, .Lfunc_end129-_ZNKSt8functionIFvPmS0_S0_jEEclES0_S0_S0_j
	.cfi_endproc
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZL18callThroughOptnoneIRSt8functionIFvPmS1_S1_jEEJS1_S1_RS1_RjEEvOT_DpOT0_
	.type	_ZL18callThroughOptnoneIRSt8functionIFvPmS1_S1_jEEJS1_S1_RS1_RjEEvOT_DpOT0_,@function
_ZL18callThroughOptnoneIRSt8functionIFvPmS1_S1_jEEJS1_S1_RS1_RjEEvOT_DpOT0_: # @_ZL18callThroughOptnoneIRSt8functionIFvPmS1_S1_jEEJS1_S1_RS1_RjEEvOT_DpOT0_
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -48
	.cfi_def_cfa_offset 48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	st.d	$a0, $sp, 32
	st.d	$a1, $sp, 24
	st.d	$a2, $sp, 16
	st.d	$a3, $sp, 8
	st.d	$a4, $sp, 0
	ld.d	$a0, $sp, 32
	ld.d	$a1, $sp, 24
	ld.d	$a1, $a1, 0
	ld.d	$a2, $sp, 16
	ld.d	$a2, $a2, 0
	ld.d	$a3, $sp, 8
	ld.d	$a3, $a3, 0
	ld.d	$a4, $sp, 0
	ld.w	$a4, $a4, 0
	pcaddu18i	$ra, %call36(_ZNKSt8functionIFvPmS0_S0_jEEclES0_S0_S0_j)
	jirl	$ra, $ra, 0
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end130:
	.size	_ZL18callThroughOptnoneIRSt8functionIFvPmS1_S1_jEEJS1_S1_RS1_RjEEvOT_DpOT0_, .Lfunc_end130-_ZL18callThroughOptnoneIRSt8functionIFvPmS1_S1_jEEJS1_S1_RS1_RjEEvOT_DpOT0_
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPmS0_S0_jEZ4mainE4$_16E9_M_invokeERKSt9_Any_dataOS0_S7_S7_Oj
	.type	_ZNSt17_Function_handlerIFvPmS0_S0_jEZ4mainE4$_16E9_M_invokeERKSt9_Any_dataOS0_S7_S7_Oj,@function
_ZNSt17_Function_handlerIFvPmS0_S0_jEZ4mainE4$_16E9_M_invokeERKSt9_Any_dataOS0_S7_S7_Oj: # @"_ZNSt17_Function_handlerIFvPmS0_S0_jEZ4mainE4$_16E9_M_invokeERKSt9_Any_dataOS0_S7_S7_Oj"
# %bb.0:
	ld.wu	$a0, $a4, 0
	beqz	$a0, .LBB131_3
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	ld.d	$a3, $a3, 0
	.p2align	4, , 16
.LBB131_2:                              # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a2, 0
	ld.d	$a5, $a3, 0
	add.d	$a4, $a4, $a5
	addi.d	$a4, $a4, 10
	st.d	$a4, $a1, 0
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 8
	addi.d	$a3, $a3, 8
	addi.d	$a2, $a2, 8
	bnez	$a0, .LBB131_2
.LBB131_3:                              # %"_ZSt10__invoke_rIvRZ4mainE4$_16JPmS2_S2_jEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end131:
	.size	_ZNSt17_Function_handlerIFvPmS0_S0_jEZ4mainE4$_16E9_M_invokeERKSt9_Any_dataOS0_S7_S7_Oj, .Lfunc_end131-_ZNSt17_Function_handlerIFvPmS0_S0_jEZ4mainE4$_16E9_M_invokeERKSt9_Any_dataOS0_S7_S7_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPmS0_S0_jEZ4mainE4$_16E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFvPmS0_S0_jEZ4mainE4$_16E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFvPmS0_S0_jEZ4mainE4$_16E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFvPmS0_S0_jEZ4mainE4$_16E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB132_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB132_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_16E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB132_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_16)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_16)
.LBB132_4:                              # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_16E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end132:
	.size	_ZNSt17_Function_handlerIFvPmS0_S0_jEZ4mainE4$_16E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end132-_ZNSt17_Function_handlerIFvPmS0_S0_jEZ4mainE4$_16E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPmS0_S0_jEZ4mainE4$_17E9_M_invokeERKSt9_Any_dataOS0_S7_S7_Oj
	.type	_ZNSt17_Function_handlerIFvPmS0_S0_jEZ4mainE4$_17E9_M_invokeERKSt9_Any_dataOS0_S7_S7_Oj,@function
_ZNSt17_Function_handlerIFvPmS0_S0_jEZ4mainE4$_17E9_M_invokeERKSt9_Any_dataOS0_S7_S7_Oj: # @"_ZNSt17_Function_handlerIFvPmS0_S0_jEZ4mainE4$_17E9_M_invokeERKSt9_Any_dataOS0_S7_S7_Oj"
# %bb.0:
	ld.w	$a4, $a4, 0
	beqz	$a4, .LBB133_5
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a1, $a1, 0
	ld.d	$a0, $a2, 0
	ld.d	$a2, $a3, 0
	ori	$a5, $zero, 4
	bstrpick.d	$a3, $a4, 31, 0
	bgeu	$a4, $a5, .LBB133_6
# %bb.2:
	move	$a4, $zero
.LBB133_3:                              # %.lr.ph.i.i.i.preheader
	sub.d	$a3, $a3, $a4
	alsl.d	$a1, $a4, $a1, 3
	alsl.d	$a2, $a4, $a2, 3
	alsl.d	$a0, $a4, $a0, 3
	.p2align	4, , 16
.LBB133_4:                              # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a0, 0
	ld.d	$a5, $a2, 0
	add.d	$a4, $a4, $a5
	addi.d	$a4, $a4, 10
	st.d	$a4, $a1, 0
	addi.d	$a3, $a3, -1
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, 8
	addi.d	$a0, $a0, 8
	bnez	$a3, .LBB133_4
.LBB133_5:                              # %"_ZSt10__invoke_rIvRZ4mainE4$_17JPmS2_S2_jEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.LBB133_6:                              # %vector.memcheck
	sub.d	$a6, $a1, $a0
	ori	$a5, $zero, 32
	move	$a4, $zero
	bltu	$a6, $a5, .LBB133_3
# %bb.7:                                # %vector.memcheck
	sub.d	$a6, $a1, $a2
	bltu	$a6, $a5, .LBB133_3
# %bb.8:                                # %vector.ph
	bstrpick.d	$a4, $a3, 31, 2
	slli.d	$a4, $a4, 2
	addi.d	$a5, $a1, 16
	addi.d	$a6, $a2, 16
	addi.d	$a7, $a0, 16
	move	$t0, $a4
	.p2align	4, , 16
.LBB133_9:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a7, -16
	vld	$vr1, $a7, 0
	vld	$vr2, $a6, -16
	vld	$vr3, $a6, 0
	vadd.d	$vr0, $vr0, $vr2
	vadd.d	$vr1, $vr1, $vr3
	vaddi.du	$vr0, $vr0, 10
	vaddi.du	$vr1, $vr1, 10
	vst	$vr0, $a5, -16
	vst	$vr1, $a5, 0
	addi.d	$t0, $t0, -4
	addi.d	$a5, $a5, 32
	addi.d	$a6, $a6, 32
	addi.d	$a7, $a7, 32
	bnez	$t0, .LBB133_9
# %bb.10:                               # %middle.block
	bne	$a4, $a3, .LBB133_3
	b	.LBB133_5
.Lfunc_end133:
	.size	_ZNSt17_Function_handlerIFvPmS0_S0_jEZ4mainE4$_17E9_M_invokeERKSt9_Any_dataOS0_S7_S7_Oj, .Lfunc_end133-_ZNSt17_Function_handlerIFvPmS0_S0_jEZ4mainE4$_17E9_M_invokeERKSt9_Any_dataOS0_S7_S7_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPmS0_S0_jEZ4mainE4$_17E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFvPmS0_S0_jEZ4mainE4$_17E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFvPmS0_S0_jEZ4mainE4$_17E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFvPmS0_S0_jEZ4mainE4$_17E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB134_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB134_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_17E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB134_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_17)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_17)
.LBB134_4:                              # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_17E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end134:
	.size	_ZNSt17_Function_handlerIFvPmS0_S0_jEZ4mainE4$_17E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end134-_ZNSt17_Function_handlerIFvPmS0_S0_jEZ4mainE4$_17E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPhS0_S0_jEZ4mainE4$_18E9_M_invokeERKSt9_Any_dataOS0_S7_S7_Oj
	.type	_ZNSt17_Function_handlerIFvPhS0_S0_jEZ4mainE4$_18E9_M_invokeERKSt9_Any_dataOS0_S7_S7_Oj,@function
_ZNSt17_Function_handlerIFvPhS0_S0_jEZ4mainE4$_18E9_M_invokeERKSt9_Any_dataOS0_S7_S7_Oj: # @"_ZNSt17_Function_handlerIFvPhS0_S0_jEZ4mainE4$_18E9_M_invokeERKSt9_Any_dataOS0_S7_S7_Oj"
# %bb.0:
	ld.wu	$a0, $a4, 0
	beqz	$a0, .LBB135_3
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	ld.d	$a3, $a3, 0
	.p2align	4, , 16
.LBB135_2:                              # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a4, $a3, 0
	addi.d	$a5, $a4, 10
	st.b	$a5, $a1, 0
	addi.d	$a4, $a4, 19
	st.b	$a4, $a2, 0
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, 1
	addi.d	$a1, $a1, 1
	addi.d	$a3, $a3, 1
	bnez	$a0, .LBB135_2
.LBB135_3:                              # %"_ZSt10__invoke_rIvRZ4mainE4$_18JPhS2_S2_jEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end135:
	.size	_ZNSt17_Function_handlerIFvPhS0_S0_jEZ4mainE4$_18E9_M_invokeERKSt9_Any_dataOS0_S7_S7_Oj, .Lfunc_end135-_ZNSt17_Function_handlerIFvPhS0_S0_jEZ4mainE4$_18E9_M_invokeERKSt9_Any_dataOS0_S7_S7_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPhS0_S0_jEZ4mainE4$_18E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFvPhS0_S0_jEZ4mainE4$_18E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFvPhS0_S0_jEZ4mainE4$_18E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFvPhS0_S0_jEZ4mainE4$_18E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB136_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB136_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_18E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB136_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_18)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_18)
.LBB136_4:                              # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_18E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end136:
	.size	_ZNSt17_Function_handlerIFvPhS0_S0_jEZ4mainE4$_18E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end136-_ZNSt17_Function_handlerIFvPhS0_S0_jEZ4mainE4$_18E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPhS0_S0_jEZ4mainE4$_19E9_M_invokeERKSt9_Any_dataOS0_S7_S7_Oj
	.type	_ZNSt17_Function_handlerIFvPhS0_S0_jEZ4mainE4$_19E9_M_invokeERKSt9_Any_dataOS0_S7_S7_Oj,@function
_ZNSt17_Function_handlerIFvPhS0_S0_jEZ4mainE4$_19E9_M_invokeERKSt9_Any_dataOS0_S7_S7_Oj: # @"_ZNSt17_Function_handlerIFvPhS0_S0_jEZ4mainE4$_19E9_M_invokeERKSt9_Any_dataOS0_S7_S7_Oj"
# %bb.0:
	ld.w	$a5, $a4, 0
	beqz	$a5, .LBB137_5
# %bb.1:                                # %iter.check
	ld.d	$a0, $a1, 0
	ld.d	$a2, $a2, 0
	ld.d	$a1, $a3, 0
	ori	$a4, $zero, 16
	bstrpick.d	$a3, $a5, 31, 0
	bgeu	$a5, $a4, .LBB137_6
# %bb.2:
	move	$a4, $zero
.LBB137_3:                              # %.lr.ph.i.i.i.preheader
	sub.d	$a3, $a3, $a4
	add.d	$a2, $a2, $a4
	add.d	$a0, $a0, $a4
	add.d	$a1, $a1, $a4
	.p2align	4, , 16
.LBB137_4:                              # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a4, $a1, 0
	addi.d	$a5, $a4, 10
	st.b	$a5, $a0, 0
	addi.d	$a4, $a4, 19
	st.b	$a4, $a2, 0
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 1
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 1
	bnez	$a3, .LBB137_4
.LBB137_5:                              # %"_ZSt10__invoke_rIvRZ4mainE4$_19JPhS2_S2_jEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.LBB137_6:                              # %vector.memcheck
	sub.d	$a7, $a2, $a0
	ori	$a6, $zero, 32
	move	$a4, $zero
	bltu	$a7, $a6, .LBB137_3
# %bb.7:                                # %vector.memcheck
	sub.d	$a7, $a0, $a1
	bltu	$a7, $a6, .LBB137_3
# %bb.8:                                # %vector.memcheck
	sub.d	$a7, $a2, $a1
	ori	$a6, $zero, 32
	bltu	$a7, $a6, .LBB137_3
# %bb.9:                                # %vector.main.loop.iter.check
	bgeu	$a5, $a6, .LBB137_14
# %bb.10:
	move	$a4, $zero
.LBB137_11:                             # %vec.epilog.ph
	move	$t0, $a4
	bstrpick.d	$a4, $a3, 31, 4
	slli.d	$a4, $a4, 4
	sub.d	$a5, $t0, $a4
	add.d	$a6, $a2, $t0
	add.d	$a7, $a0, $t0
	add.d	$t0, $a1, $t0
	.p2align	4, , 16
.LBB137_12:                             # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $t0, 0
	vaddi.bu	$vr1, $vr0, 10
	vst	$vr1, $a7, 0
	vaddi.bu	$vr0, $vr0, 19
	vst	$vr0, $a6, 0
	addi.d	$a5, $a5, 16
	addi.d	$a6, $a6, 16
	addi.d	$a7, $a7, 16
	addi.d	$t0, $t0, 16
	bnez	$a5, .LBB137_12
# %bb.13:                               # %vec.epilog.middle.block
	bne	$a4, $a3, .LBB137_3
	b	.LBB137_5
.LBB137_14:                             # %vector.ph
	bstrpick.d	$a4, $a3, 31, 5
	slli.d	$a4, $a4, 5
	addi.d	$a5, $a2, 16
	addi.d	$a6, $a0, 16
	addi.d	$a7, $a1, 16
	move	$t0, $a4
	.p2align	4, , 16
.LBB137_15:                             # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a7, -16
	vld	$vr1, $a7, 0
	vaddi.bu	$vr2, $vr0, 10
	vaddi.bu	$vr3, $vr1, 10
	vst	$vr2, $a6, -16
	vst	$vr3, $a6, 0
	vaddi.bu	$vr0, $vr0, 19
	vaddi.bu	$vr1, $vr1, 19
	vst	$vr0, $a5, -16
	vst	$vr1, $a5, 0
	addi.d	$t0, $t0, -32
	addi.d	$a5, $a5, 32
	addi.d	$a6, $a6, 32
	addi.d	$a7, $a7, 32
	bnez	$t0, .LBB137_15
# %bb.16:                               # %middle.block
	beq	$a4, $a3, .LBB137_5
# %bb.17:                               # %vec.epilog.iter.check
	andi	$a5, $a3, 16
	beqz	$a5, .LBB137_3
	b	.LBB137_11
.Lfunc_end137:
	.size	_ZNSt17_Function_handlerIFvPhS0_S0_jEZ4mainE4$_19E9_M_invokeERKSt9_Any_dataOS0_S7_S7_Oj, .Lfunc_end137-_ZNSt17_Function_handlerIFvPhS0_S0_jEZ4mainE4$_19E9_M_invokeERKSt9_Any_dataOS0_S7_S7_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPhS0_S0_jEZ4mainE4$_19E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFvPhS0_S0_jEZ4mainE4$_19E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFvPhS0_S0_jEZ4mainE4$_19E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFvPhS0_S0_jEZ4mainE4$_19E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB138_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB138_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_19E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB138_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_19)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_19)
.LBB138_4:                              # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_19E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end138:
	.size	_ZNSt17_Function_handlerIFvPhS0_S0_jEZ4mainE4$_19E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end138-_ZNSt17_Function_handlerIFvPhS0_S0_jEZ4mainE4$_19E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPjS0_S0_jEZ4mainE4$_18E9_M_invokeERKSt9_Any_dataOS0_S7_S7_Oj
	.type	_ZNSt17_Function_handlerIFvPjS0_S0_jEZ4mainE4$_18E9_M_invokeERKSt9_Any_dataOS0_S7_S7_Oj,@function
_ZNSt17_Function_handlerIFvPjS0_S0_jEZ4mainE4$_18E9_M_invokeERKSt9_Any_dataOS0_S7_S7_Oj: # @"_ZNSt17_Function_handlerIFvPjS0_S0_jEZ4mainE4$_18E9_M_invokeERKSt9_Any_dataOS0_S7_S7_Oj"
# %bb.0:
	ld.wu	$a0, $a4, 0
	beqz	$a0, .LBB139_3
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	ld.d	$a3, $a3, 0
	.p2align	4, , 16
.LBB139_2:                              # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a3, 0
	addi.d	$a5, $a4, 10
	st.w	$a5, $a1, 0
	addi.d	$a4, $a4, 19
	st.w	$a4, $a2, 0
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, 4
	addi.d	$a3, $a3, 4
	bnez	$a0, .LBB139_2
.LBB139_3:                              # %"_ZSt10__invoke_rIvRZ4mainE4$_18JPjS2_S2_jEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end139:
	.size	_ZNSt17_Function_handlerIFvPjS0_S0_jEZ4mainE4$_18E9_M_invokeERKSt9_Any_dataOS0_S7_S7_Oj, .Lfunc_end139-_ZNSt17_Function_handlerIFvPjS0_S0_jEZ4mainE4$_18E9_M_invokeERKSt9_Any_dataOS0_S7_S7_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPjS0_S0_jEZ4mainE4$_18E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFvPjS0_S0_jEZ4mainE4$_18E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFvPjS0_S0_jEZ4mainE4$_18E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFvPjS0_S0_jEZ4mainE4$_18E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB140_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB140_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_18E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB140_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_18)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_18)
.LBB140_4:                              # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_18E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end140:
	.size	_ZNSt17_Function_handlerIFvPjS0_S0_jEZ4mainE4$_18E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end140-_ZNSt17_Function_handlerIFvPjS0_S0_jEZ4mainE4$_18E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPjS0_S0_jEZ4mainE4$_19E9_M_invokeERKSt9_Any_dataOS0_S7_S7_Oj
	.type	_ZNSt17_Function_handlerIFvPjS0_S0_jEZ4mainE4$_19E9_M_invokeERKSt9_Any_dataOS0_S7_S7_Oj,@function
_ZNSt17_Function_handlerIFvPjS0_S0_jEZ4mainE4$_19E9_M_invokeERKSt9_Any_dataOS0_S7_S7_Oj: # @"_ZNSt17_Function_handlerIFvPjS0_S0_jEZ4mainE4$_19E9_M_invokeERKSt9_Any_dataOS0_S7_S7_Oj"
# %bb.0:
	ld.w	$a4, $a4, 0
	beqz	$a4, .LBB141_5
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a0, $a1, 0
	ld.d	$a2, $a2, 0
	ld.d	$a1, $a3, 0
	ori	$a5, $zero, 8
	bstrpick.d	$a3, $a4, 31, 0
	bgeu	$a4, $a5, .LBB141_6
# %bb.2:
	move	$a4, $zero
.LBB141_3:                              # %.lr.ph.i.i.i.preheader
	sub.d	$a3, $a3, $a4
	alsl.d	$a2, $a4, $a2, 2
	alsl.d	$a0, $a4, $a0, 2
	alsl.d	$a1, $a4, $a1, 2
	.p2align	4, , 16
.LBB141_4:                              # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a1, 0
	addi.d	$a5, $a4, 10
	st.w	$a5, $a0, 0
	addi.d	$a4, $a4, 19
	st.w	$a4, $a2, 0
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 4
	addi.d	$a0, $a0, 4
	addi.d	$a1, $a1, 4
	bnez	$a3, .LBB141_4
.LBB141_5:                              # %"_ZSt10__invoke_rIvRZ4mainE4$_19JPjS2_S2_jEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.LBB141_6:                              # %vector.memcheck
	sub.d	$a6, $a2, $a0
	ori	$a5, $zero, 32
	move	$a4, $zero
	bltu	$a6, $a5, .LBB141_3
# %bb.7:                                # %vector.memcheck
	sub.d	$a6, $a0, $a1
	bltu	$a6, $a5, .LBB141_3
# %bb.8:                                # %vector.memcheck
	sub.d	$a5, $a2, $a1
	ori	$a6, $zero, 32
	bltu	$a5, $a6, .LBB141_3
# %bb.9:                                # %vector.ph
	bstrpick.d	$a4, $a3, 31, 3
	slli.d	$a4, $a4, 3
	addi.d	$a5, $a2, 16
	addi.d	$a6, $a0, 16
	addi.d	$a7, $a1, 16
	move	$t0, $a4
	.p2align	4, , 16
.LBB141_10:                             # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a7, -16
	vld	$vr1, $a7, 0
	vaddi.wu	$vr2, $vr0, 10
	vaddi.wu	$vr3, $vr1, 10
	vst	$vr2, $a6, -16
	vst	$vr3, $a6, 0
	vaddi.wu	$vr0, $vr0, 19
	vaddi.wu	$vr1, $vr1, 19
	vst	$vr0, $a5, -16
	vst	$vr1, $a5, 0
	addi.d	$t0, $t0, -8
	addi.d	$a5, $a5, 32
	addi.d	$a6, $a6, 32
	addi.d	$a7, $a7, 32
	bnez	$t0, .LBB141_10
# %bb.11:                               # %middle.block
	bne	$a4, $a3, .LBB141_3
	b	.LBB141_5
.Lfunc_end141:
	.size	_ZNSt17_Function_handlerIFvPjS0_S0_jEZ4mainE4$_19E9_M_invokeERKSt9_Any_dataOS0_S7_S7_Oj, .Lfunc_end141-_ZNSt17_Function_handlerIFvPjS0_S0_jEZ4mainE4$_19E9_M_invokeERKSt9_Any_dataOS0_S7_S7_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPjS0_S0_jEZ4mainE4$_19E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFvPjS0_S0_jEZ4mainE4$_19E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFvPjS0_S0_jEZ4mainE4$_19E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFvPjS0_S0_jEZ4mainE4$_19E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB142_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB142_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_19E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB142_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_19)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_19)
.LBB142_4:                              # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_19E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end142:
	.size	_ZNSt17_Function_handlerIFvPjS0_S0_jEZ4mainE4$_19E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end142-_ZNSt17_Function_handlerIFvPjS0_S0_jEZ4mainE4$_19E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPmS0_S0_jEZ4mainE4$_18E9_M_invokeERKSt9_Any_dataOS0_S7_S7_Oj
	.type	_ZNSt17_Function_handlerIFvPmS0_S0_jEZ4mainE4$_18E9_M_invokeERKSt9_Any_dataOS0_S7_S7_Oj,@function
_ZNSt17_Function_handlerIFvPmS0_S0_jEZ4mainE4$_18E9_M_invokeERKSt9_Any_dataOS0_S7_S7_Oj: # @"_ZNSt17_Function_handlerIFvPmS0_S0_jEZ4mainE4$_18E9_M_invokeERKSt9_Any_dataOS0_S7_S7_Oj"
# %bb.0:
	ld.wu	$a0, $a4, 0
	beqz	$a0, .LBB143_3
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	ld.d	$a3, $a3, 0
	.p2align	4, , 16
.LBB143_2:                              # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a3, 0
	addi.d	$a5, $a4, 10
	st.d	$a5, $a1, 0
	addi.d	$a4, $a4, 19
	st.d	$a4, $a2, 0
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, 8
	addi.d	$a1, $a1, 8
	addi.d	$a3, $a3, 8
	bnez	$a0, .LBB143_2
.LBB143_3:                              # %"_ZSt10__invoke_rIvRZ4mainE4$_18JPmS2_S2_jEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end143:
	.size	_ZNSt17_Function_handlerIFvPmS0_S0_jEZ4mainE4$_18E9_M_invokeERKSt9_Any_dataOS0_S7_S7_Oj, .Lfunc_end143-_ZNSt17_Function_handlerIFvPmS0_S0_jEZ4mainE4$_18E9_M_invokeERKSt9_Any_dataOS0_S7_S7_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPmS0_S0_jEZ4mainE4$_18E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFvPmS0_S0_jEZ4mainE4$_18E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFvPmS0_S0_jEZ4mainE4$_18E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFvPmS0_S0_jEZ4mainE4$_18E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB144_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB144_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_18E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB144_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_18)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_18)
.LBB144_4:                              # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_18E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end144:
	.size	_ZNSt17_Function_handlerIFvPmS0_S0_jEZ4mainE4$_18E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end144-_ZNSt17_Function_handlerIFvPmS0_S0_jEZ4mainE4$_18E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPmS0_S0_jEZ4mainE4$_19E9_M_invokeERKSt9_Any_dataOS0_S7_S7_Oj
	.type	_ZNSt17_Function_handlerIFvPmS0_S0_jEZ4mainE4$_19E9_M_invokeERKSt9_Any_dataOS0_S7_S7_Oj,@function
_ZNSt17_Function_handlerIFvPmS0_S0_jEZ4mainE4$_19E9_M_invokeERKSt9_Any_dataOS0_S7_S7_Oj: # @"_ZNSt17_Function_handlerIFvPmS0_S0_jEZ4mainE4$_19E9_M_invokeERKSt9_Any_dataOS0_S7_S7_Oj"
# %bb.0:
	ld.w	$a4, $a4, 0
	beqz	$a4, .LBB145_5
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a0, $a1, 0
	ld.d	$a2, $a2, 0
	ld.d	$a1, $a3, 0
	ori	$a5, $zero, 4
	bstrpick.d	$a3, $a4, 31, 0
	bgeu	$a4, $a5, .LBB145_6
# %bb.2:
	move	$a4, $zero
.LBB145_3:                              # %.lr.ph.i.i.i.preheader
	sub.d	$a3, $a3, $a4
	alsl.d	$a2, $a4, $a2, 3
	alsl.d	$a0, $a4, $a0, 3
	alsl.d	$a1, $a4, $a1, 3
	.p2align	4, , 16
.LBB145_4:                              # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a1, 0
	addi.d	$a5, $a4, 10
	st.d	$a5, $a0, 0
	addi.d	$a4, $a4, 19
	st.d	$a4, $a2, 0
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 8
	addi.d	$a0, $a0, 8
	addi.d	$a1, $a1, 8
	bnez	$a3, .LBB145_4
.LBB145_5:                              # %"_ZSt10__invoke_rIvRZ4mainE4$_19JPmS2_S2_jEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.LBB145_6:                              # %vector.memcheck
	sub.d	$a6, $a2, $a0
	ori	$a5, $zero, 32
	move	$a4, $zero
	bltu	$a6, $a5, .LBB145_3
# %bb.7:                                # %vector.memcheck
	sub.d	$a6, $a0, $a1
	bltu	$a6, $a5, .LBB145_3
# %bb.8:                                # %vector.memcheck
	sub.d	$a5, $a2, $a1
	ori	$a6, $zero, 32
	bltu	$a5, $a6, .LBB145_3
# %bb.9:                                # %vector.ph
	bstrpick.d	$a4, $a3, 31, 2
	slli.d	$a4, $a4, 2
	addi.d	$a5, $a2, 16
	addi.d	$a6, $a0, 16
	addi.d	$a7, $a1, 16
	move	$t0, $a4
	.p2align	4, , 16
.LBB145_10:                             # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a7, -16
	vld	$vr1, $a7, 0
	vaddi.du	$vr2, $vr0, 10
	vaddi.du	$vr3, $vr1, 10
	vst	$vr2, $a6, -16
	vst	$vr3, $a6, 0
	vaddi.du	$vr0, $vr0, 19
	vaddi.du	$vr1, $vr1, 19
	vst	$vr0, $a5, -16
	vst	$vr1, $a5, 0
	addi.d	$t0, $t0, -4
	addi.d	$a5, $a5, 32
	addi.d	$a6, $a6, 32
	addi.d	$a7, $a7, 32
	bnez	$t0, .LBB145_10
# %bb.11:                               # %middle.block
	bne	$a4, $a3, .LBB145_3
	b	.LBB145_5
.Lfunc_end145:
	.size	_ZNSt17_Function_handlerIFvPmS0_S0_jEZ4mainE4$_19E9_M_invokeERKSt9_Any_dataOS0_S7_S7_Oj, .Lfunc_end145-_ZNSt17_Function_handlerIFvPmS0_S0_jEZ4mainE4$_19E9_M_invokeERKSt9_Any_dataOS0_S7_S7_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPmS0_S0_jEZ4mainE4$_19E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFvPmS0_S0_jEZ4mainE4$_19E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFvPmS0_S0_jEZ4mainE4$_19E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFvPmS0_S0_jEZ4mainE4$_19E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB146_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB146_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_19E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB146_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_19)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_19)
.LBB146_4:                              # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_19E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end146:
	.size	_ZNSt17_Function_handlerIFvPmS0_S0_jEZ4mainE4$_19E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end146-_ZNSt17_Function_handlerIFvPmS0_S0_jEZ4mainE4$_19E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt8functionIFvPhS0_jjEEclES0_S0_jj,"axG",@progbits,_ZNKSt8functionIFvPhS0_jjEEclES0_S0_jj,comdat
	.weak	_ZNKSt8functionIFvPhS0_jjEEclES0_S0_jj # -- Begin function _ZNKSt8functionIFvPhS0_jjEEclES0_S0_jj
	.p2align	5
	.type	_ZNKSt8functionIFvPhS0_jjEEclES0_S0_jj,@function
_ZNKSt8functionIFvPhS0_jjEEclES0_S0_jj: # @_ZNKSt8functionIFvPhS0_jjEEclES0_S0_jj
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	ld.d	$a5, $a0, 16
	st.d	$a1, $sp, 16
	st.d	$a2, $sp, 8
	st.w	$a3, $sp, 4
	st.w	$a4, $sp, 0
	beqz	$a5, .LBB147_2
# %bb.1:
	ld.d	$a5, $a0, 24
	addi.d	$a1, $sp, 16
	addi.d	$a2, $sp, 8
	addi.d	$a3, $sp, 4
	addi.d	$a4, $sp, 0
	jirl	$ra, $a5, 0
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB147_2:
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Lfunc_end147:
	.size	_ZNKSt8functionIFvPhS0_jjEEclES0_S0_jj, .Lfunc_end147-_ZNKSt8functionIFvPhS0_jjEEclES0_S0_jj
	.cfi_endproc
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZL18callThroughOptnoneIRSt8functionIFvPhS1_jjEEJS1_RS1_RKiS7_EEvOT_DpOT0_
	.type	_ZL18callThroughOptnoneIRSt8functionIFvPhS1_jjEEJS1_RS1_RKiS7_EEvOT_DpOT0_,@function
_ZL18callThroughOptnoneIRSt8functionIFvPhS1_jjEEJS1_RS1_RKiS7_EEvOT_DpOT0_: # @_ZL18callThroughOptnoneIRSt8functionIFvPhS1_jjEEJS1_RS1_RKiS7_EEvOT_DpOT0_
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -48
	.cfi_def_cfa_offset 48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	st.d	$a0, $sp, 32
	st.d	$a1, $sp, 24
	st.d	$a2, $sp, 16
	st.d	$a3, $sp, 8
	st.d	$a4, $sp, 0
	ld.d	$a0, $sp, 32
	ld.d	$a1, $sp, 24
	ld.d	$a1, $a1, 0
	ld.d	$a2, $sp, 16
	ld.d	$a2, $a2, 0
	ld.d	$a3, $sp, 8
	ld.w	$a3, $a3, 0
	ld.d	$a4, $sp, 0
	ld.w	$a4, $a4, 0
	pcaddu18i	$ra, %call36(_ZNKSt8functionIFvPhS0_jjEEclES0_S0_jj)
	jirl	$ra, $ra, 0
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end148:
	.size	_ZL18callThroughOptnoneIRSt8functionIFvPhS1_jjEEJS1_RS1_RKiS7_EEvOT_DpOT0_, .Lfunc_end148-_ZL18callThroughOptnoneIRSt8functionIFvPhS1_jjEEJS1_RS1_RKiS7_EEvOT_DpOT0_
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_20E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_
	.type	_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_20E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_,@function
_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_20E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_: # @"_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_20E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_"
# %bb.0:
	ld.w	$a5, $a3, 0
	beqz	$a5, .LBB149_6
# %bb.1:                                # %.preheader.lr.ph.i.i.i
	ld.wu	$a0, $a4, 0
	beqz	$a0, .LBB149_6
# %bb.2:                                # %.preheader.us.i.i.i.preheader
	move	$a3, $zero
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	bstrpick.d	$a4, $a5, 31, 0
	addi.d	$a5, $a5, 1
	bstrpick.d	$a5, $a5, 31, 0
	.p2align	4, , 16
.LBB149_3:                              # %.preheader.us.i.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB149_4 Depth 2
	move	$a6, $a2
	move	$a7, $a1
	move	$t0, $a0
	.p2align	4, , 16
.LBB149_4:                              #   Parent Loop BB149_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$t1, $a6, 0
	st.b	$t1, $a7, 0
	addi.d	$t0, $t0, -1
	addi.d	$a7, $a7, 1
	addi.d	$a6, $a6, 1
	bnez	$t0, .LBB149_4
# %bb.5:                                # %._crit_edge.us.i.i.i
                                        #   in Loop: Header=BB149_3 Depth=1
	addi.d	$a3, $a3, 1
	add.d	$a1, $a1, $a5
	add.d	$a2, $a2, $a4
	bne	$a3, $a4, .LBB149_3
.LBB149_6:                              # %"_ZSt10__invoke_rIvRZ4mainE4$_20JPhS2_jjEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end149:
	.size	_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_20E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_, .Lfunc_end149-_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_20E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_20E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_20E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_20E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_20E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB150_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB150_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_20E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB150_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_20)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_20)
.LBB150_4:                              # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_20E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end150:
	.size	_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_20E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end150-_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_20E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_21E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_
	.type	_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_21E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_,@function
_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_21E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_: # @"_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_21E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_"
# %bb.0:
	ld.w	$a6, $a3, 0
	beqz	$a6, .LBB151_17
# %bb.1:                                # %.preheader.lr.ph.i.i.i
	ld.w	$a0, $a4, 0
	beqz	$a0, .LBB151_17
# %bb.2:                                # %.preheader.us.i.i.i.preheader
	addi.d	$sp, $sp, -16
	st.d	$fp, $sp, 8                     # 8-byte Folded Spill
	move	$a3, $zero
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	bstrpick.d	$a4, $a6, 31, 0
	bstrpick.d	$a5, $a0, 31, 0
	addi.d	$a6, $a6, 1
	bstrpick.d	$a6, $a6, 31, 0
	addi.d	$a7, $a4, -1
	mul.d	$t0, $a7, $a6
	add.d	$t0, $a1, $t0
	add.d	$t0, $t0, $a5
	mul.d	$a7, $a7, $a4
	add.d	$a7, $a2, $a7
	add.d	$a7, $a7, $a5
	sltu	$a7, $a1, $a7
	sltu	$t0, $a2, $t0
	and	$t5, $a7, $t0
	bstrpick.d	$a7, $a5, 31, 5
	slli.d	$a7, $a7, 5
	andi	$t0, $a5, 16
	bstrpick.d	$t1, $a5, 31, 4
	slli.d	$t1, $t1, 4
	addi.d	$t2, $a1, 16
	addi.d	$t3, $a2, 16
	move	$t4, $a5
	bstrins.d	$t4, $zero, 3, 0
	sub.d	$t4, $zero, $t4
	sltui	$t6, $a0, 16
	or	$t5, $t6, $t5
	andi	$t5, $t5, 1
	ori	$t6, $zero, 32
	b	.LBB151_4
	.p2align	4, , 16
.LBB151_3:                              # %._crit_edge.us.i.i.i
                                        #   in Loop: Header=BB151_4 Depth=1
	addi.d	$a3, $a3, 1
	add.d	$t2, $t2, $a6
	add.d	$t3, $t3, $a4
	add.d	$a1, $a1, $a6
	add.d	$a2, $a2, $a4
	beq	$a3, $a4, .LBB151_16
.LBB151_4:                              # %iter.check
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB151_12 Depth 2
                                        #     Child Loop BB151_9 Depth 2
                                        #     Child Loop BB151_15 Depth 2
	beqz	$t5, .LBB151_6
# %bb.5:                                #   in Loop: Header=BB151_4 Depth=1
	move	$t7, $zero
	b	.LBB151_15
	.p2align	4, , 16
.LBB151_6:                              # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB151_4 Depth=1
	bgeu	$a0, $t6, .LBB151_11
# %bb.7:                                #   in Loop: Header=BB151_4 Depth=1
	move	$fp, $zero
.LBB151_8:                              # %vec.epilog.ph
                                        #   in Loop: Header=BB151_4 Depth=1
	add.d	$t7, $t4, $fp
	add.d	$t8, $a1, $fp
	add.d	$fp, $a2, $fp
	.p2align	4, , 16
.LBB151_9:                              # %vec.epilog.vector.body
                                        #   Parent Loop BB151_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $fp, 0
	vst	$vr0, $t8, 0
	addi.d	$t7, $t7, 16
	addi.d	$t8, $t8, 16
	addi.d	$fp, $fp, 16
	bnez	$t7, .LBB151_9
# %bb.10:                               # %vec.epilog.middle.block
                                        #   in Loop: Header=BB151_4 Depth=1
	move	$t7, $t1
	bne	$t1, $a5, .LBB151_15
	b	.LBB151_3
	.p2align	4, , 16
.LBB151_11:                             # %vector.body.preheader
                                        #   in Loop: Header=BB151_4 Depth=1
	move	$t7, $t3
	move	$t8, $t2
	move	$fp, $a7
	.p2align	4, , 16
.LBB151_12:                             # %vector.body
                                        #   Parent Loop BB151_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $t7, -16
	vld	$vr1, $t7, 0
	vst	$vr0, $t8, -16
	vst	$vr1, $t8, 0
	addi.d	$fp, $fp, -32
	addi.d	$t8, $t8, 32
	addi.d	$t7, $t7, 32
	bnez	$fp, .LBB151_12
# %bb.13:                               # %middle.block
                                        #   in Loop: Header=BB151_4 Depth=1
	beq	$a7, $a5, .LBB151_3
# %bb.14:                               # %vec.epilog.iter.check
                                        #   in Loop: Header=BB151_4 Depth=1
	move	$fp, $a7
	move	$t7, $a7
	bnez	$t0, .LBB151_8
	.p2align	4, , 16
.LBB151_15:                             # %vec.epilog.scalar.ph
                                        #   Parent Loop BB151_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.b	$t8, $a2, $t7
	stx.b	$t8, $a1, $t7
	addi.d	$t7, $t7, 1
	bne	$a5, $t7, .LBB151_15
	b	.LBB151_3
.LBB151_16:
	ld.d	$fp, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
.LBB151_17:                             # %"_ZSt10__invoke_rIvRZ4mainE4$_21JPhS2_jjEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end151:
	.size	_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_21E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_, .Lfunc_end151-_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_21E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_21E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_21E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_21E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_21E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB152_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB152_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_21E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB152_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_21)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_21)
.LBB152_4:                              # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_21E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end152:
	.size	_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_21E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end152-_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_21E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt8functionIFvPjS0_jjEEclES0_S0_jj,"axG",@progbits,_ZNKSt8functionIFvPjS0_jjEEclES0_S0_jj,comdat
	.weak	_ZNKSt8functionIFvPjS0_jjEEclES0_S0_jj # -- Begin function _ZNKSt8functionIFvPjS0_jjEEclES0_S0_jj
	.p2align	5
	.type	_ZNKSt8functionIFvPjS0_jjEEclES0_S0_jj,@function
_ZNKSt8functionIFvPjS0_jjEEclES0_S0_jj: # @_ZNKSt8functionIFvPjS0_jjEEclES0_S0_jj
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	ld.d	$a5, $a0, 16
	st.d	$a1, $sp, 16
	st.d	$a2, $sp, 8
	st.w	$a3, $sp, 4
	st.w	$a4, $sp, 0
	beqz	$a5, .LBB153_2
# %bb.1:
	ld.d	$a5, $a0, 24
	addi.d	$a1, $sp, 16
	addi.d	$a2, $sp, 8
	addi.d	$a3, $sp, 4
	addi.d	$a4, $sp, 0
	jirl	$ra, $a5, 0
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB153_2:
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Lfunc_end153:
	.size	_ZNKSt8functionIFvPjS0_jjEEclES0_S0_jj, .Lfunc_end153-_ZNKSt8functionIFvPjS0_jjEEclES0_S0_jj
	.cfi_endproc
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZL18callThroughOptnoneIRSt8functionIFvPjS1_jjEEJS1_RS1_RKiS7_EEvOT_DpOT0_
	.type	_ZL18callThroughOptnoneIRSt8functionIFvPjS1_jjEEJS1_RS1_RKiS7_EEvOT_DpOT0_,@function
_ZL18callThroughOptnoneIRSt8functionIFvPjS1_jjEEJS1_RS1_RKiS7_EEvOT_DpOT0_: # @_ZL18callThroughOptnoneIRSt8functionIFvPjS1_jjEEJS1_RS1_RKiS7_EEvOT_DpOT0_
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -48
	.cfi_def_cfa_offset 48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	st.d	$a0, $sp, 32
	st.d	$a1, $sp, 24
	st.d	$a2, $sp, 16
	st.d	$a3, $sp, 8
	st.d	$a4, $sp, 0
	ld.d	$a0, $sp, 32
	ld.d	$a1, $sp, 24
	ld.d	$a1, $a1, 0
	ld.d	$a2, $sp, 16
	ld.d	$a2, $a2, 0
	ld.d	$a3, $sp, 8
	ld.w	$a3, $a3, 0
	ld.d	$a4, $sp, 0
	ld.w	$a4, $a4, 0
	pcaddu18i	$ra, %call36(_ZNKSt8functionIFvPjS0_jjEEclES0_S0_jj)
	jirl	$ra, $ra, 0
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end154:
	.size	_ZL18callThroughOptnoneIRSt8functionIFvPjS1_jjEEJS1_RS1_RKiS7_EEvOT_DpOT0_, .Lfunc_end154-_ZL18callThroughOptnoneIRSt8functionIFvPjS1_jjEEJS1_RS1_RKiS7_EEvOT_DpOT0_
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_20E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_
	.type	_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_20E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_,@function
_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_20E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_: # @"_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_20E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_"
# %bb.0:
	ld.w	$a5, $a3, 0
	beqz	$a5, .LBB155_6
# %bb.1:                                # %.preheader.lr.ph.i.i.i
	ld.wu	$a0, $a4, 0
	beqz	$a0, .LBB155_6
# %bb.2:                                # %.preheader.us.i.i.i.preheader
	move	$a3, $zero
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	bstrpick.d	$a4, $a5, 31, 0
	addi.d	$a5, $a5, 1
	bstrpick.d	$a5, $a5, 31, 0
	slli.d	$a5, $a5, 2
	slli.d	$a6, $a4, 2
	.p2align	4, , 16
.LBB155_3:                              # %.preheader.us.i.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB155_4 Depth 2
	move	$a7, $a2
	move	$t0, $a1
	move	$t1, $a0
	.p2align	4, , 16
.LBB155_4:                              #   Parent Loop BB155_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t2, $a7, 0
	st.w	$t2, $t0, 0
	addi.d	$t1, $t1, -1
	addi.d	$t0, $t0, 4
	addi.d	$a7, $a7, 4
	bnez	$t1, .LBB155_4
# %bb.5:                                # %._crit_edge.us.i.i.i
                                        #   in Loop: Header=BB155_3 Depth=1
	addi.d	$a3, $a3, 1
	add.d	$a1, $a1, $a5
	add.d	$a2, $a2, $a6
	bne	$a3, $a4, .LBB155_3
.LBB155_6:                              # %"_ZSt10__invoke_rIvRZ4mainE4$_20JPjS2_jjEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end155:
	.size	_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_20E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_, .Lfunc_end155-_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_20E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_20E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_20E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_20E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_20E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB156_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB156_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_20E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB156_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_20)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_20)
.LBB156_4:                              # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_20E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end156:
	.size	_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_20E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end156-_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_20E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_21E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_
	.type	_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_21E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_,@function
_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_21E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_: # @"_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_21E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_"
# %bb.0:
	ld.w	$a5, $a3, 0
	beqz	$a5, .LBB157_11
# %bb.1:                                # %.preheader.lr.ph.i.i.i
	ld.w	$t1, $a4, 0
	beqz	$t1, .LBB157_11
# %bb.2:                                # %.preheader.us.i.i.i.preheader
	move	$a0, $zero
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	bstrpick.d	$a3, $a5, 31, 0
	bstrpick.d	$a4, $t1, 31, 0
	addi.d	$a5, $a5, 1
	bstrpick.d	$a7, $a5, 31, 0
	addi.d	$a5, $a3, -1
	mul.d	$a6, $a5, $a7
	add.d	$a6, $a6, $a4
	alsl.d	$a6, $a6, $a1, 2
	mul.d	$a5, $a5, $a3
	add.d	$a5, $a5, $a4
	alsl.d	$a5, $a5, $a2, 2
	sltu	$a5, $a1, $a5
	sltu	$a6, $a2, $a6
	and	$t2, $a5, $a6
	bstrpick.d	$a5, $a4, 31, 3
	slli.d	$a5, $a5, 3
	addi.d	$a6, $a1, 16
	slli.d	$a7, $a7, 2
	addi.d	$t0, $a2, 16
	sltui	$t1, $t1, 8
	or	$t2, $t1, $t2
	slli.d	$t1, $a3, 2
	andi	$t2, $t2, 1
	b	.LBB157_4
	.p2align	4, , 16
.LBB157_3:                              # %._crit_edge.us.i.i.i
                                        #   in Loop: Header=BB157_4 Depth=1
	addi.d	$a0, $a0, 1
	add.d	$a6, $a6, $a7
	add.d	$t0, $t0, $t1
	add.d	$a1, $a1, $a7
	add.d	$a2, $a2, $t1
	beq	$a0, $a3, .LBB157_11
.LBB157_4:                              # %.preheader.us.i.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB157_7 Depth 2
                                        #     Child Loop BB157_10 Depth 2
	beqz	$t2, .LBB157_6
# %bb.5:                                #   in Loop: Header=BB157_4 Depth=1
	move	$t5, $zero
	b	.LBB157_9
	.p2align	4, , 16
.LBB157_6:                              # %vector.body.preheader
                                        #   in Loop: Header=BB157_4 Depth=1
	move	$t3, $t0
	move	$t4, $a6
	move	$t5, $a5
	.p2align	4, , 16
.LBB157_7:                              # %vector.body
                                        #   Parent Loop BB157_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $t3, -16
	vld	$vr1, $t3, 0
	vst	$vr0, $t4, -16
	vst	$vr1, $t4, 0
	addi.d	$t5, $t5, -8
	addi.d	$t4, $t4, 32
	addi.d	$t3, $t3, 32
	bnez	$t5, .LBB157_7
# %bb.8:                                # %middle.block
                                        #   in Loop: Header=BB157_4 Depth=1
	move	$t5, $a5
	beq	$a5, $a4, .LBB157_3
.LBB157_9:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB157_4 Depth=1
	sub.d	$t3, $a4, $t5
	alsl.d	$t4, $t5, $a1, 2
	alsl.d	$t5, $t5, $a2, 2
	.p2align	4, , 16
.LBB157_10:                             # %scalar.ph
                                        #   Parent Loop BB157_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t6, $t5, 0
	st.w	$t6, $t4, 0
	addi.d	$t3, $t3, -1
	addi.d	$t4, $t4, 4
	addi.d	$t5, $t5, 4
	bnez	$t3, .LBB157_10
	b	.LBB157_3
.LBB157_11:                             # %"_ZSt10__invoke_rIvRZ4mainE4$_21JPjS2_jjEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end157:
	.size	_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_21E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_, .Lfunc_end157-_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_21E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_21E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_21E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_21E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_21E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB158_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB158_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_21E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB158_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_21)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_21)
.LBB158_4:                              # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_21E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end158:
	.size	_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_21E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end158-_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_21E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt8functionIFvPmS0_jjEEclES0_S0_jj,"axG",@progbits,_ZNKSt8functionIFvPmS0_jjEEclES0_S0_jj,comdat
	.weak	_ZNKSt8functionIFvPmS0_jjEEclES0_S0_jj # -- Begin function _ZNKSt8functionIFvPmS0_jjEEclES0_S0_jj
	.p2align	5
	.type	_ZNKSt8functionIFvPmS0_jjEEclES0_S0_jj,@function
_ZNKSt8functionIFvPmS0_jjEEclES0_S0_jj: # @_ZNKSt8functionIFvPmS0_jjEEclES0_S0_jj
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	ld.d	$a5, $a0, 16
	st.d	$a1, $sp, 16
	st.d	$a2, $sp, 8
	st.w	$a3, $sp, 4
	st.w	$a4, $sp, 0
	beqz	$a5, .LBB159_2
# %bb.1:
	ld.d	$a5, $a0, 24
	addi.d	$a1, $sp, 16
	addi.d	$a2, $sp, 8
	addi.d	$a3, $sp, 4
	addi.d	$a4, $sp, 0
	jirl	$ra, $a5, 0
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB159_2:
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Lfunc_end159:
	.size	_ZNKSt8functionIFvPmS0_jjEEclES0_S0_jj, .Lfunc_end159-_ZNKSt8functionIFvPmS0_jjEEclES0_S0_jj
	.cfi_endproc
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZL18callThroughOptnoneIRSt8functionIFvPmS1_jjEEJS1_RS1_RKiS7_EEvOT_DpOT0_
	.type	_ZL18callThroughOptnoneIRSt8functionIFvPmS1_jjEEJS1_RS1_RKiS7_EEvOT_DpOT0_,@function
_ZL18callThroughOptnoneIRSt8functionIFvPmS1_jjEEJS1_RS1_RKiS7_EEvOT_DpOT0_: # @_ZL18callThroughOptnoneIRSt8functionIFvPmS1_jjEEJS1_RS1_RKiS7_EEvOT_DpOT0_
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -48
	.cfi_def_cfa_offset 48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	st.d	$a0, $sp, 32
	st.d	$a1, $sp, 24
	st.d	$a2, $sp, 16
	st.d	$a3, $sp, 8
	st.d	$a4, $sp, 0
	ld.d	$a0, $sp, 32
	ld.d	$a1, $sp, 24
	ld.d	$a1, $a1, 0
	ld.d	$a2, $sp, 16
	ld.d	$a2, $a2, 0
	ld.d	$a3, $sp, 8
	ld.w	$a3, $a3, 0
	ld.d	$a4, $sp, 0
	ld.w	$a4, $a4, 0
	pcaddu18i	$ra, %call36(_ZNKSt8functionIFvPmS0_jjEEclES0_S0_jj)
	jirl	$ra, $ra, 0
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end160:
	.size	_ZL18callThroughOptnoneIRSt8functionIFvPmS1_jjEEJS1_RS1_RKiS7_EEvOT_DpOT0_, .Lfunc_end160-_ZL18callThroughOptnoneIRSt8functionIFvPmS1_jjEEJS1_RS1_RKiS7_EEvOT_DpOT0_
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_20E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_
	.type	_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_20E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_,@function
_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_20E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_: # @"_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_20E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_"
# %bb.0:
	ld.w	$a5, $a3, 0
	beqz	$a5, .LBB161_6
# %bb.1:                                # %.preheader.lr.ph.i.i.i
	ld.wu	$a0, $a4, 0
	beqz	$a0, .LBB161_6
# %bb.2:                                # %.preheader.us.i.i.i.preheader
	move	$a3, $zero
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	bstrpick.d	$a4, $a5, 31, 0
	addi.d	$a5, $a5, 1
	bstrpick.d	$a5, $a5, 31, 0
	slli.d	$a5, $a5, 3
	slli.d	$a6, $a4, 3
	.p2align	4, , 16
.LBB161_3:                              # %.preheader.us.i.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB161_4 Depth 2
	move	$a7, $a2
	move	$t0, $a1
	move	$t1, $a0
	.p2align	4, , 16
.LBB161_4:                              #   Parent Loop BB161_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t2, $a7, 0
	st.d	$t2, $t0, 0
	addi.d	$t1, $t1, -1
	addi.d	$t0, $t0, 8
	addi.d	$a7, $a7, 8
	bnez	$t1, .LBB161_4
# %bb.5:                                # %._crit_edge.us.i.i.i
                                        #   in Loop: Header=BB161_3 Depth=1
	addi.d	$a3, $a3, 1
	add.d	$a1, $a1, $a5
	add.d	$a2, $a2, $a6
	bne	$a3, $a4, .LBB161_3
.LBB161_6:                              # %"_ZSt10__invoke_rIvRZ4mainE4$_20JPmS2_jjEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end161:
	.size	_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_20E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_, .Lfunc_end161-_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_20E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_20E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_20E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_20E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_20E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB162_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB162_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_20E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB162_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_20)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_20)
.LBB162_4:                              # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_20E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end162:
	.size	_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_20E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end162-_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_20E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_21E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_
	.type	_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_21E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_,@function
_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_21E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_: # @"_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_21E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_"
# %bb.0:
	ld.w	$a5, $a3, 0
	beqz	$a5, .LBB163_11
# %bb.1:                                # %.preheader.lr.ph.i.i.i
	ld.w	$t1, $a4, 0
	beqz	$t1, .LBB163_11
# %bb.2:                                # %.preheader.us.i.i.i.preheader
	move	$a0, $zero
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	bstrpick.d	$a3, $a5, 31, 0
	bstrpick.d	$a4, $t1, 31, 0
	addi.d	$a5, $a5, 1
	bstrpick.d	$a7, $a5, 31, 0
	addi.d	$a5, $a3, -1
	mul.d	$a6, $a5, $a7
	add.d	$a6, $a6, $a4
	alsl.d	$a6, $a6, $a1, 3
	mul.d	$a5, $a5, $a3
	add.d	$a5, $a5, $a4
	alsl.d	$a5, $a5, $a2, 3
	sltu	$a5, $a1, $a5
	sltu	$a6, $a2, $a6
	and	$t2, $a5, $a6
	bstrpick.d	$a5, $a4, 31, 2
	slli.d	$a5, $a5, 2
	addi.d	$a6, $a1, 16
	slli.d	$a7, $a7, 3
	addi.d	$t0, $a2, 16
	sltui	$t1, $t1, 4
	or	$t2, $t1, $t2
	slli.d	$t1, $a3, 3
	andi	$t2, $t2, 1
	b	.LBB163_4
	.p2align	4, , 16
.LBB163_3:                              # %._crit_edge.us.i.i.i
                                        #   in Loop: Header=BB163_4 Depth=1
	addi.d	$a0, $a0, 1
	add.d	$a6, $a6, $a7
	add.d	$t0, $t0, $t1
	add.d	$a1, $a1, $a7
	add.d	$a2, $a2, $t1
	beq	$a0, $a3, .LBB163_11
.LBB163_4:                              # %.preheader.us.i.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB163_7 Depth 2
                                        #     Child Loop BB163_10 Depth 2
	beqz	$t2, .LBB163_6
# %bb.5:                                #   in Loop: Header=BB163_4 Depth=1
	move	$t5, $zero
	b	.LBB163_9
	.p2align	4, , 16
.LBB163_6:                              # %vector.body.preheader
                                        #   in Loop: Header=BB163_4 Depth=1
	move	$t3, $t0
	move	$t4, $a6
	move	$t5, $a5
	.p2align	4, , 16
.LBB163_7:                              # %vector.body
                                        #   Parent Loop BB163_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $t3, -16
	vld	$vr1, $t3, 0
	vst	$vr0, $t4, -16
	vst	$vr1, $t4, 0
	addi.d	$t5, $t5, -4
	addi.d	$t4, $t4, 32
	addi.d	$t3, $t3, 32
	bnez	$t5, .LBB163_7
# %bb.8:                                # %middle.block
                                        #   in Loop: Header=BB163_4 Depth=1
	move	$t5, $a5
	beq	$a5, $a4, .LBB163_3
.LBB163_9:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB163_4 Depth=1
	sub.d	$t3, $a4, $t5
	alsl.d	$t4, $t5, $a1, 3
	alsl.d	$t5, $t5, $a2, 3
	.p2align	4, , 16
.LBB163_10:                             # %scalar.ph
                                        #   Parent Loop BB163_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t6, $t5, 0
	st.d	$t6, $t4, 0
	addi.d	$t3, $t3, -1
	addi.d	$t4, $t4, 8
	addi.d	$t5, $t5, 8
	bnez	$t3, .LBB163_10
	b	.LBB163_3
.LBB163_11:                             # %"_ZSt10__invoke_rIvRZ4mainE4$_21JPmS2_jjEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end163:
	.size	_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_21E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_, .Lfunc_end163-_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_21E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_21E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_21E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_21E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_21E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB164_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB164_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_21E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB164_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_21)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_21)
.LBB164_4:                              # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_21E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end164:
	.size	_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_21E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end164-_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_21E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_22E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_
	.type	_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_22E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_,@function
_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_22E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_: # @"_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_22E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_"
# %bb.0:
	ld.w	$a5, $a3, 0
	beqz	$a5, .LBB165_6
# %bb.1:                                # %.preheader.lr.ph.i.i.i
	ld.wu	$a0, $a4, 0
	beqz	$a0, .LBB165_6
# %bb.2:                                # %.preheader.us.i.i.i.preheader
	move	$a3, $zero
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	bstrpick.d	$a4, $a5, 31, 0
	addi.d	$a5, $a5, 1
	bstrpick.d	$a5, $a5, 31, 0
	.p2align	4, , 16
.LBB165_3:                              # %.preheader.us.i.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB165_4 Depth 2
	move	$a6, $a2
	move	$a7, $a1
	move	$t0, $a0
	.p2align	4, , 16
.LBB165_4:                              #   Parent Loop BB165_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$t1, $a6, 0
	ld.b	$t2, $a7, 0
	add.d	$t1, $t2, $t1
	st.b	$t1, $a7, 0
	addi.d	$t0, $t0, -1
	addi.d	$a7, $a7, 1
	addi.d	$a6, $a6, 1
	bnez	$t0, .LBB165_4
# %bb.5:                                # %._crit_edge.us.i.i.i
                                        #   in Loop: Header=BB165_3 Depth=1
	addi.d	$a3, $a3, 1
	add.d	$a1, $a1, $a5
	add.d	$a2, $a2, $a4
	bne	$a3, $a4, .LBB165_3
.LBB165_6:                              # %"_ZSt10__invoke_rIvRZ4mainE4$_22JPhS2_jjEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end165:
	.size	_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_22E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_, .Lfunc_end165-_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_22E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_22E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_22E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_22E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_22E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB166_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB166_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_22E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB166_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_22)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_22)
.LBB166_4:                              # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_22E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end166:
	.size	_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_22E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end166-_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_22E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_23E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_
	.type	_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_23E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_,@function
_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_23E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_: # @"_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_23E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_"
# %bb.0:
	ld.w	$a6, $a3, 0
	beqz	$a6, .LBB167_17
# %bb.1:                                # %.preheader.lr.ph.i.i.i
	ld.w	$a0, $a4, 0
	beqz	$a0, .LBB167_17
# %bb.2:                                # %.preheader.us.i.i.i.preheader
	addi.d	$sp, $sp, -16
	st.d	$fp, $sp, 8                     # 8-byte Folded Spill
	move	$a3, $zero
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	bstrpick.d	$a4, $a6, 31, 0
	bstrpick.d	$a5, $a0, 31, 0
	addi.d	$a6, $a6, 1
	bstrpick.d	$a6, $a6, 31, 0
	addi.d	$a7, $a4, -1
	mul.d	$t0, $a7, $a6
	add.d	$t0, $a1, $t0
	add.d	$t0, $t0, $a5
	mul.d	$a7, $a7, $a4
	add.d	$a7, $a2, $a7
	add.d	$a7, $a7, $a5
	sltu	$a7, $a1, $a7
	sltu	$t0, $a2, $t0
	and	$t5, $a7, $t0
	bstrpick.d	$a7, $a5, 31, 5
	slli.d	$a7, $a7, 5
	andi	$t0, $a5, 16
	bstrpick.d	$t1, $a5, 31, 4
	slli.d	$t1, $t1, 4
	addi.d	$t2, $a1, 16
	addi.d	$t3, $a2, 16
	move	$t4, $a5
	bstrins.d	$t4, $zero, 3, 0
	sub.d	$t4, $zero, $t4
	sltui	$t6, $a0, 16
	or	$t5, $t6, $t5
	andi	$t5, $t5, 1
	ori	$t6, $zero, 32
	b	.LBB167_4
	.p2align	4, , 16
.LBB167_3:                              # %._crit_edge.us.i.i.i
                                        #   in Loop: Header=BB167_4 Depth=1
	addi.d	$a3, $a3, 1
	add.d	$t2, $t2, $a6
	add.d	$t3, $t3, $a4
	add.d	$a1, $a1, $a6
	add.d	$a2, $a2, $a4
	beq	$a3, $a4, .LBB167_16
.LBB167_4:                              # %iter.check
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB167_12 Depth 2
                                        #     Child Loop BB167_9 Depth 2
                                        #     Child Loop BB167_15 Depth 2
	beqz	$t5, .LBB167_6
# %bb.5:                                #   in Loop: Header=BB167_4 Depth=1
	move	$t7, $zero
	b	.LBB167_15
	.p2align	4, , 16
.LBB167_6:                              # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB167_4 Depth=1
	bgeu	$a0, $t6, .LBB167_11
# %bb.7:                                #   in Loop: Header=BB167_4 Depth=1
	move	$fp, $zero
.LBB167_8:                              # %vec.epilog.ph
                                        #   in Loop: Header=BB167_4 Depth=1
	add.d	$t7, $t4, $fp
	add.d	$t8, $a1, $fp
	add.d	$fp, $a2, $fp
	.p2align	4, , 16
.LBB167_9:                              # %vec.epilog.vector.body
                                        #   Parent Loop BB167_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $fp, 0
	vld	$vr1, $t8, 0
	vadd.b	$vr0, $vr1, $vr0
	vst	$vr0, $t8, 0
	addi.d	$t7, $t7, 16
	addi.d	$t8, $t8, 16
	addi.d	$fp, $fp, 16
	bnez	$t7, .LBB167_9
# %bb.10:                               # %vec.epilog.middle.block
                                        #   in Loop: Header=BB167_4 Depth=1
	move	$t7, $t1
	bne	$t1, $a5, .LBB167_15
	b	.LBB167_3
	.p2align	4, , 16
.LBB167_11:                             # %vector.body.preheader
                                        #   in Loop: Header=BB167_4 Depth=1
	move	$t7, $t3
	move	$t8, $t2
	move	$fp, $a7
	.p2align	4, , 16
.LBB167_12:                             # %vector.body
                                        #   Parent Loop BB167_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $t7, -16
	vld	$vr1, $t7, 0
	vld	$vr2, $t8, -16
	vld	$vr3, $t8, 0
	vadd.b	$vr0, $vr2, $vr0
	vadd.b	$vr1, $vr3, $vr1
	vst	$vr0, $t8, -16
	vst	$vr1, $t8, 0
	addi.d	$fp, $fp, -32
	addi.d	$t8, $t8, 32
	addi.d	$t7, $t7, 32
	bnez	$fp, .LBB167_12
# %bb.13:                               # %middle.block
                                        #   in Loop: Header=BB167_4 Depth=1
	beq	$a7, $a5, .LBB167_3
# %bb.14:                               # %vec.epilog.iter.check
                                        #   in Loop: Header=BB167_4 Depth=1
	move	$fp, $a7
	move	$t7, $a7
	bnez	$t0, .LBB167_8
	.p2align	4, , 16
.LBB167_15:                             # %vec.epilog.scalar.ph
                                        #   Parent Loop BB167_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.b	$t8, $a2, $t7
	ldx.b	$fp, $a1, $t7
	add.d	$t8, $fp, $t8
	stx.b	$t8, $a1, $t7
	addi.d	$t7, $t7, 1
	bne	$a5, $t7, .LBB167_15
	b	.LBB167_3
.LBB167_16:
	ld.d	$fp, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
.LBB167_17:                             # %"_ZSt10__invoke_rIvRZ4mainE4$_23JPhS2_jjEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end167:
	.size	_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_23E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_, .Lfunc_end167-_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_23E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_23E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_23E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_23E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_23E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB168_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB168_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_23E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB168_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_23)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_23)
.LBB168_4:                              # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_23E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end168:
	.size	_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_23E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end168-_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_23E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_22E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_
	.type	_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_22E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_,@function
_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_22E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_: # @"_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_22E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_"
# %bb.0:
	ld.w	$a5, $a3, 0
	beqz	$a5, .LBB169_6
# %bb.1:                                # %.preheader.lr.ph.i.i.i
	ld.wu	$a0, $a4, 0
	beqz	$a0, .LBB169_6
# %bb.2:                                # %.preheader.us.i.i.i.preheader
	move	$a3, $zero
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	bstrpick.d	$a4, $a5, 31, 0
	addi.d	$a5, $a5, 1
	bstrpick.d	$a5, $a5, 31, 0
	slli.d	$a5, $a5, 2
	slli.d	$a6, $a4, 2
	.p2align	4, , 16
.LBB169_3:                              # %.preheader.us.i.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB169_4 Depth 2
	move	$a7, $a2
	move	$t0, $a1
	move	$t1, $a0
	.p2align	4, , 16
.LBB169_4:                              #   Parent Loop BB169_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t2, $a7, 0
	ld.w	$t3, $t0, 0
	add.d	$t2, $t3, $t2
	st.w	$t2, $t0, 0
	addi.d	$t1, $t1, -1
	addi.d	$t0, $t0, 4
	addi.d	$a7, $a7, 4
	bnez	$t1, .LBB169_4
# %bb.5:                                # %._crit_edge.us.i.i.i
                                        #   in Loop: Header=BB169_3 Depth=1
	addi.d	$a3, $a3, 1
	add.d	$a1, $a1, $a5
	add.d	$a2, $a2, $a6
	bne	$a3, $a4, .LBB169_3
.LBB169_6:                              # %"_ZSt10__invoke_rIvRZ4mainE4$_22JPjS2_jjEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end169:
	.size	_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_22E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_, .Lfunc_end169-_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_22E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_22E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_22E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_22E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_22E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB170_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB170_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_22E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB170_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_22)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_22)
.LBB170_4:                              # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_22E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end170:
	.size	_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_22E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end170-_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_22E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_23E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_
	.type	_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_23E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_,@function
_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_23E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_: # @"_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_23E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_"
# %bb.0:
	ld.w	$a5, $a3, 0
	beqz	$a5, .LBB171_11
# %bb.1:                                # %.preheader.lr.ph.i.i.i
	ld.w	$t1, $a4, 0
	beqz	$t1, .LBB171_11
# %bb.2:                                # %.preheader.us.i.i.i.preheader
	move	$a0, $zero
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	bstrpick.d	$a3, $a5, 31, 0
	bstrpick.d	$a4, $t1, 31, 0
	addi.d	$a5, $a5, 1
	bstrpick.d	$a7, $a5, 31, 0
	addi.d	$a5, $a3, -1
	mul.d	$a6, $a5, $a7
	add.d	$a6, $a6, $a4
	alsl.d	$a6, $a6, $a1, 2
	mul.d	$a5, $a5, $a3
	add.d	$a5, $a5, $a4
	alsl.d	$a5, $a5, $a2, 2
	sltu	$a5, $a1, $a5
	sltu	$a6, $a2, $a6
	and	$t2, $a5, $a6
	bstrpick.d	$a5, $a4, 31, 3
	slli.d	$a5, $a5, 3
	addi.d	$a6, $a1, 16
	slli.d	$a7, $a7, 2
	addi.d	$t0, $a2, 16
	sltui	$t1, $t1, 8
	or	$t2, $t1, $t2
	slli.d	$t1, $a3, 2
	andi	$t2, $t2, 1
	b	.LBB171_4
	.p2align	4, , 16
.LBB171_3:                              # %._crit_edge.us.i.i.i
                                        #   in Loop: Header=BB171_4 Depth=1
	addi.d	$a0, $a0, 1
	add.d	$a6, $a6, $a7
	add.d	$t0, $t0, $t1
	add.d	$a1, $a1, $a7
	add.d	$a2, $a2, $t1
	beq	$a0, $a3, .LBB171_11
.LBB171_4:                              # %.preheader.us.i.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB171_7 Depth 2
                                        #     Child Loop BB171_10 Depth 2
	beqz	$t2, .LBB171_6
# %bb.5:                                #   in Loop: Header=BB171_4 Depth=1
	move	$t5, $zero
	b	.LBB171_9
	.p2align	4, , 16
.LBB171_6:                              # %vector.body.preheader
                                        #   in Loop: Header=BB171_4 Depth=1
	move	$t3, $t0
	move	$t4, $a6
	move	$t5, $a5
	.p2align	4, , 16
.LBB171_7:                              # %vector.body
                                        #   Parent Loop BB171_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $t3, -16
	vld	$vr1, $t3, 0
	vld	$vr2, $t4, -16
	vld	$vr3, $t4, 0
	vadd.w	$vr0, $vr2, $vr0
	vadd.w	$vr1, $vr3, $vr1
	vst	$vr0, $t4, -16
	vst	$vr1, $t4, 0
	addi.d	$t5, $t5, -8
	addi.d	$t4, $t4, 32
	addi.d	$t3, $t3, 32
	bnez	$t5, .LBB171_7
# %bb.8:                                # %middle.block
                                        #   in Loop: Header=BB171_4 Depth=1
	move	$t5, $a5
	beq	$a5, $a4, .LBB171_3
.LBB171_9:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB171_4 Depth=1
	sub.d	$t3, $a4, $t5
	alsl.d	$t4, $t5, $a1, 2
	alsl.d	$t5, $t5, $a2, 2
	.p2align	4, , 16
.LBB171_10:                             # %scalar.ph
                                        #   Parent Loop BB171_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t6, $t5, 0
	ld.w	$t7, $t4, 0
	add.d	$t6, $t7, $t6
	st.w	$t6, $t4, 0
	addi.d	$t3, $t3, -1
	addi.d	$t4, $t4, 4
	addi.d	$t5, $t5, 4
	bnez	$t3, .LBB171_10
	b	.LBB171_3
.LBB171_11:                             # %"_ZSt10__invoke_rIvRZ4mainE4$_23JPjS2_jjEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end171:
	.size	_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_23E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_, .Lfunc_end171-_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_23E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_23E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_23E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_23E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_23E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB172_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB172_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_23E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB172_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_23)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_23)
.LBB172_4:                              # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_23E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end172:
	.size	_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_23E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end172-_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_23E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_22E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_
	.type	_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_22E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_,@function
_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_22E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_: # @"_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_22E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_"
# %bb.0:
	ld.w	$a5, $a3, 0
	beqz	$a5, .LBB173_6
# %bb.1:                                # %.preheader.lr.ph.i.i.i
	ld.wu	$a0, $a4, 0
	beqz	$a0, .LBB173_6
# %bb.2:                                # %.preheader.us.i.i.i.preheader
	move	$a3, $zero
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	bstrpick.d	$a4, $a5, 31, 0
	addi.d	$a5, $a5, 1
	bstrpick.d	$a5, $a5, 31, 0
	slli.d	$a5, $a5, 3
	slli.d	$a6, $a4, 3
	.p2align	4, , 16
.LBB173_3:                              # %.preheader.us.i.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB173_4 Depth 2
	move	$a7, $a2
	move	$t0, $a1
	move	$t1, $a0
	.p2align	4, , 16
.LBB173_4:                              #   Parent Loop BB173_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t2, $a7, 0
	ld.d	$t3, $t0, 0
	add.d	$t2, $t3, $t2
	st.d	$t2, $t0, 0
	addi.d	$t1, $t1, -1
	addi.d	$t0, $t0, 8
	addi.d	$a7, $a7, 8
	bnez	$t1, .LBB173_4
# %bb.5:                                # %._crit_edge.us.i.i.i
                                        #   in Loop: Header=BB173_3 Depth=1
	addi.d	$a3, $a3, 1
	add.d	$a1, $a1, $a5
	add.d	$a2, $a2, $a6
	bne	$a3, $a4, .LBB173_3
.LBB173_6:                              # %"_ZSt10__invoke_rIvRZ4mainE4$_22JPmS2_jjEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end173:
	.size	_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_22E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_, .Lfunc_end173-_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_22E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_22E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_22E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_22E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_22E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB174_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB174_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_22E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB174_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_22)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_22)
.LBB174_4:                              # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_22E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end174:
	.size	_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_22E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end174-_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_22E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_23E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_
	.type	_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_23E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_,@function
_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_23E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_: # @"_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_23E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_"
# %bb.0:
	ld.w	$a5, $a3, 0
	beqz	$a5, .LBB175_11
# %bb.1:                                # %.preheader.lr.ph.i.i.i
	ld.w	$t1, $a4, 0
	beqz	$t1, .LBB175_11
# %bb.2:                                # %.preheader.us.i.i.i.preheader
	move	$a0, $zero
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	bstrpick.d	$a3, $a5, 31, 0
	bstrpick.d	$a4, $t1, 31, 0
	addi.d	$a5, $a5, 1
	bstrpick.d	$a7, $a5, 31, 0
	addi.d	$a5, $a3, -1
	mul.d	$a6, $a5, $a7
	add.d	$a6, $a6, $a4
	alsl.d	$a6, $a6, $a1, 3
	mul.d	$a5, $a5, $a3
	add.d	$a5, $a5, $a4
	alsl.d	$a5, $a5, $a2, 3
	sltu	$a5, $a1, $a5
	sltu	$a6, $a2, $a6
	and	$t2, $a5, $a6
	bstrpick.d	$a5, $a4, 31, 2
	slli.d	$a5, $a5, 2
	addi.d	$a6, $a1, 16
	slli.d	$a7, $a7, 3
	addi.d	$t0, $a2, 16
	sltui	$t1, $t1, 4
	or	$t2, $t1, $t2
	slli.d	$t1, $a3, 3
	andi	$t2, $t2, 1
	b	.LBB175_4
	.p2align	4, , 16
.LBB175_3:                              # %._crit_edge.us.i.i.i
                                        #   in Loop: Header=BB175_4 Depth=1
	addi.d	$a0, $a0, 1
	add.d	$a6, $a6, $a7
	add.d	$t0, $t0, $t1
	add.d	$a1, $a1, $a7
	add.d	$a2, $a2, $t1
	beq	$a0, $a3, .LBB175_11
.LBB175_4:                              # %.preheader.us.i.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB175_7 Depth 2
                                        #     Child Loop BB175_10 Depth 2
	beqz	$t2, .LBB175_6
# %bb.5:                                #   in Loop: Header=BB175_4 Depth=1
	move	$t5, $zero
	b	.LBB175_9
	.p2align	4, , 16
.LBB175_6:                              # %vector.body.preheader
                                        #   in Loop: Header=BB175_4 Depth=1
	move	$t3, $t0
	move	$t4, $a6
	move	$t5, $a5
	.p2align	4, , 16
.LBB175_7:                              # %vector.body
                                        #   Parent Loop BB175_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $t3, -16
	vld	$vr1, $t3, 0
	vld	$vr2, $t4, -16
	vld	$vr3, $t4, 0
	vadd.d	$vr0, $vr2, $vr0
	vadd.d	$vr1, $vr3, $vr1
	vst	$vr0, $t4, -16
	vst	$vr1, $t4, 0
	addi.d	$t5, $t5, -4
	addi.d	$t4, $t4, 32
	addi.d	$t3, $t3, 32
	bnez	$t5, .LBB175_7
# %bb.8:                                # %middle.block
                                        #   in Loop: Header=BB175_4 Depth=1
	move	$t5, $a5
	beq	$a5, $a4, .LBB175_3
.LBB175_9:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB175_4 Depth=1
	sub.d	$t3, $a4, $t5
	alsl.d	$t4, $t5, $a1, 3
	alsl.d	$t5, $t5, $a2, 3
	.p2align	4, , 16
.LBB175_10:                             # %scalar.ph
                                        #   Parent Loop BB175_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t6, $t5, 0
	ld.d	$t7, $t4, 0
	add.d	$t6, $t7, $t6
	st.d	$t6, $t4, 0
	addi.d	$t3, $t3, -1
	addi.d	$t4, $t4, 8
	addi.d	$t5, $t5, 8
	bnez	$t3, .LBB175_10
	b	.LBB175_3
.LBB175_11:                             # %"_ZSt10__invoke_rIvRZ4mainE4$_23JPmS2_jjEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end175:
	.size	_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_23E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_, .Lfunc_end175-_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_23E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_23E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_23E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_23E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_23E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB176_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB176_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_23E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB176_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_23)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_23)
.LBB176_4:                              # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_23E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end176:
	.size	_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_23E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end176-_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_23E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_24E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_
	.type	_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_24E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_,@function
_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_24E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_: # @"_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_24E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_"
# %bb.0:
	ld.wu	$a0, $a4, 0
	beqz	$a0, .LBB177_5
# %bb.1:                                # %.preheader.us.preheader.i.i.i
	ld.wu	$a4, $a3, 0
	ld.d	$a1, $a1, 0
	ld.d	$a3, $a2, 0
	addi.d	$a2, $a4, 1
	bstrpick.d	$a2, $a2, 31, 0
	addi.d	$a5, $a4, -1
	bstrpick.d	$a6, $a5, 31, 0
	mul.d	$a5, $a6, $a2
	add.d	$a1, $a1, $a5
	sub.d	$a2, $zero, $a2
	mul.d	$a5, $a4, $a6
	add.d	$a3, $a3, $a5
	sub.d	$a4, $zero, $a4
	.p2align	4, , 16
.LBB177_2:                              # %.preheader.us.i.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB177_3 Depth 2
	move	$a5, $a6
	move	$a6, $a3
	move	$a7, $a1
	move	$t0, $a0
	.p2align	4, , 16
.LBB177_3:                              #   Parent Loop BB177_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$t1, $a6, 0
	st.b	$t1, $a7, 0
	addi.d	$t0, $t0, -1
	addi.d	$a7, $a7, 1
	addi.d	$a6, $a6, 1
	bnez	$t0, .LBB177_3
# %bb.4:                                # %._crit_edge.us.i.i.i
                                        #   in Loop: Header=BB177_2 Depth=1
	addi.d	$a6, $a5, -1
	add.d	$a1, $a1, $a2
	add.d	$a3, $a3, $a4
	bgtz	$a5, .LBB177_2
.LBB177_5:                              # %"_ZSt10__invoke_rIvRZ4mainE4$_24JPhS2_jjEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end177:
	.size	_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_24E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_, .Lfunc_end177-_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_24E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_24E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_24E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_24E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_24E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB178_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB178_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_24E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB178_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_24)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_24)
.LBB178_4:                              # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_24E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end178:
	.size	_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_24E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end178-_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_24E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_25E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_
	.type	_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_25E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_,@function
_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_25E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_: # @"_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_25E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_"
# %bb.0:
	ld.wu	$a0, $a4, 0
	beqz	$a0, .LBB179_5
# %bb.1:                                # %.preheader.us.preheader.i.i.i
	ld.wu	$a4, $a3, 0
	ld.d	$a1, $a1, 0
	ld.d	$a3, $a2, 0
	addi.d	$a2, $a4, 1
	bstrpick.d	$a2, $a2, 31, 0
	addi.d	$a5, $a4, -1
	bstrpick.d	$a6, $a5, 31, 0
	mul.d	$a5, $a6, $a2
	add.d	$a1, $a1, $a5
	sub.d	$a2, $zero, $a2
	mul.d	$a5, $a4, $a6
	add.d	$a3, $a3, $a5
	sub.d	$a4, $zero, $a4
	.p2align	4, , 16
.LBB179_2:                              # %iter.check
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB179_3 Depth 2
	move	$a5, $a6
	move	$a6, $a3
	move	$a7, $a1
	move	$t0, $a0
	.p2align	4, , 16
.LBB179_3:                              #   Parent Loop BB179_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$t1, $a6, 0
	st.b	$t1, $a7, 0
	addi.d	$t0, $t0, -1
	addi.d	$a7, $a7, 1
	addi.d	$a6, $a6, 1
	bnez	$t0, .LBB179_3
# %bb.4:                                # %._crit_edge.us.i.i.i
                                        #   in Loop: Header=BB179_2 Depth=1
	addi.d	$a6, $a5, -1
	add.d	$a1, $a1, $a2
	add.d	$a3, $a3, $a4
	bgtz	$a5, .LBB179_2
.LBB179_5:                              # %"_ZSt10__invoke_rIvRZ4mainE4$_25JPhS2_jjEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end179:
	.size	_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_25E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_, .Lfunc_end179-_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_25E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_25E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_25E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_25E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_25E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB180_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB180_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_25E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB180_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_25)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_25)
.LBB180_4:                              # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_25E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end180:
	.size	_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_25E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end180-_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_25E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_24E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_
	.type	_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_24E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_,@function
_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_24E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_: # @"_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_24E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_"
# %bb.0:
	ld.wu	$a0, $a4, 0
	beqz	$a0, .LBB181_5
# %bb.1:                                # %.preheader.us.preheader.i.i.i
	ld.wu	$a4, $a3, 0
	ld.d	$a1, $a1, 0
	ld.d	$a3, $a2, 0
	addi.d	$a2, $a4, 1
	bstrpick.d	$a2, $a2, 31, 0
	addi.d	$a5, $a4, -1
	bstrpick.d	$a6, $a5, 31, 0
	mul.d	$a5, $a6, $a2
	alsl.d	$a1, $a5, $a1, 2
	slli.d	$a2, $a2, 2
	sub.d	$a2, $zero, $a2
	mul.d	$a5, $a4, $a6
	alsl.d	$a3, $a5, $a3, 2
	slli.d	$a4, $a4, 2
	sub.d	$a4, $zero, $a4
	.p2align	4, , 16
.LBB181_2:                              # %.preheader.us.i.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB181_3 Depth 2
	move	$a5, $a6
	move	$a6, $a3
	move	$a7, $a1
	move	$t0, $a0
	.p2align	4, , 16
.LBB181_3:                              #   Parent Loop BB181_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t1, $a6, 0
	st.w	$t1, $a7, 0
	addi.d	$t0, $t0, -1
	addi.d	$a7, $a7, 4
	addi.d	$a6, $a6, 4
	bnez	$t0, .LBB181_3
# %bb.4:                                # %._crit_edge.us.i.i.i
                                        #   in Loop: Header=BB181_2 Depth=1
	addi.d	$a6, $a5, -1
	add.d	$a1, $a1, $a2
	add.d	$a3, $a3, $a4
	bgtz	$a5, .LBB181_2
.LBB181_5:                              # %"_ZSt10__invoke_rIvRZ4mainE4$_24JPjS2_jjEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end181:
	.size	_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_24E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_, .Lfunc_end181-_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_24E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_24E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_24E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_24E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_24E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB182_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB182_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_24E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB182_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_24)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_24)
.LBB182_4:                              # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_24E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end182:
	.size	_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_24E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end182-_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_24E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_25E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_
	.type	_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_25E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_,@function
_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_25E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_: # @"_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_25E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_"
# %bb.0:
	ld.wu	$a0, $a4, 0
	beqz	$a0, .LBB183_5
# %bb.1:                                # %.preheader.us.preheader.i.i.i
	ld.wu	$a4, $a3, 0
	ld.d	$a1, $a1, 0
	ld.d	$a3, $a2, 0
	addi.d	$a2, $a4, 1
	bstrpick.d	$a2, $a2, 31, 0
	addi.d	$a5, $a4, -1
	bstrpick.d	$a6, $a5, 31, 0
	mul.d	$a5, $a6, $a2
	alsl.d	$a1, $a5, $a1, 2
	slli.d	$a2, $a2, 2
	sub.d	$a2, $zero, $a2
	mul.d	$a5, $a4, $a6
	alsl.d	$a3, $a5, $a3, 2
	slli.d	$a4, $a4, 2
	sub.d	$a4, $zero, $a4
	.p2align	4, , 16
.LBB183_2:                              # %.preheader.us.i.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB183_3 Depth 2
	move	$a5, $a6
	move	$a6, $a3
	move	$a7, $a1
	move	$t0, $a0
	.p2align	4, , 16
.LBB183_3:                              #   Parent Loop BB183_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t1, $a6, 0
	st.w	$t1, $a7, 0
	addi.d	$t0, $t0, -1
	addi.d	$a7, $a7, 4
	addi.d	$a6, $a6, 4
	bnez	$t0, .LBB183_3
# %bb.4:                                # %._crit_edge.us.i.i.i
                                        #   in Loop: Header=BB183_2 Depth=1
	addi.d	$a6, $a5, -1
	add.d	$a1, $a1, $a2
	add.d	$a3, $a3, $a4
	bgtz	$a5, .LBB183_2
.LBB183_5:                              # %"_ZSt10__invoke_rIvRZ4mainE4$_25JPjS2_jjEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end183:
	.size	_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_25E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_, .Lfunc_end183-_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_25E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_25E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_25E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_25E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_25E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB184_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB184_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_25E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB184_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_25)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_25)
.LBB184_4:                              # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_25E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end184:
	.size	_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_25E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end184-_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_25E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_24E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_
	.type	_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_24E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_,@function
_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_24E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_: # @"_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_24E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_"
# %bb.0:
	ld.wu	$a0, $a4, 0
	beqz	$a0, .LBB185_5
# %bb.1:                                # %.preheader.us.preheader.i.i.i
	ld.wu	$a4, $a3, 0
	ld.d	$a1, $a1, 0
	ld.d	$a3, $a2, 0
	addi.d	$a2, $a4, 1
	bstrpick.d	$a2, $a2, 31, 0
	addi.d	$a5, $a4, -1
	bstrpick.d	$a6, $a5, 31, 0
	mul.d	$a5, $a6, $a2
	alsl.d	$a1, $a5, $a1, 3
	slli.d	$a2, $a2, 3
	sub.d	$a2, $zero, $a2
	mul.d	$a5, $a4, $a6
	alsl.d	$a3, $a5, $a3, 3
	slli.d	$a4, $a4, 3
	sub.d	$a4, $zero, $a4
	.p2align	4, , 16
.LBB185_2:                              # %.preheader.us.i.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB185_3 Depth 2
	move	$a5, $a6
	move	$a6, $a3
	move	$a7, $a1
	move	$t0, $a0
	.p2align	4, , 16
.LBB185_3:                              #   Parent Loop BB185_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t1, $a6, 0
	st.d	$t1, $a7, 0
	addi.d	$t0, $t0, -1
	addi.d	$a7, $a7, 8
	addi.d	$a6, $a6, 8
	bnez	$t0, .LBB185_3
# %bb.4:                                # %._crit_edge.us.i.i.i
                                        #   in Loop: Header=BB185_2 Depth=1
	addi.d	$a6, $a5, -1
	add.d	$a1, $a1, $a2
	add.d	$a3, $a3, $a4
	bgtz	$a5, .LBB185_2
.LBB185_5:                              # %"_ZSt10__invoke_rIvRZ4mainE4$_24JPmS2_jjEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end185:
	.size	_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_24E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_, .Lfunc_end185-_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_24E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_24E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_24E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_24E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_24E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB186_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB186_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_24E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB186_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_24)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_24)
.LBB186_4:                              # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_24E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end186:
	.size	_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_24E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end186-_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_24E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_25E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_
	.type	_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_25E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_,@function
_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_25E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_: # @"_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_25E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_"
# %bb.0:
	ld.wu	$a0, $a4, 0
	beqz	$a0, .LBB187_5
# %bb.1:                                # %.preheader.us.preheader.i.i.i
	ld.wu	$a4, $a3, 0
	ld.d	$a1, $a1, 0
	ld.d	$a3, $a2, 0
	addi.d	$a2, $a4, 1
	bstrpick.d	$a2, $a2, 31, 0
	addi.d	$a5, $a4, -1
	bstrpick.d	$a6, $a5, 31, 0
	mul.d	$a5, $a6, $a2
	alsl.d	$a1, $a5, $a1, 3
	slli.d	$a2, $a2, 3
	sub.d	$a2, $zero, $a2
	mul.d	$a5, $a4, $a6
	alsl.d	$a3, $a5, $a3, 3
	slli.d	$a4, $a4, 3
	sub.d	$a4, $zero, $a4
	.p2align	4, , 16
.LBB187_2:                              # %.preheader.us.i.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB187_3 Depth 2
	move	$a5, $a6
	move	$a6, $a3
	move	$a7, $a1
	move	$t0, $a0
	.p2align	4, , 16
.LBB187_3:                              #   Parent Loop BB187_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t1, $a6, 0
	st.d	$t1, $a7, 0
	addi.d	$t0, $t0, -1
	addi.d	$a7, $a7, 8
	addi.d	$a6, $a6, 8
	bnez	$t0, .LBB187_3
# %bb.4:                                # %._crit_edge.us.i.i.i
                                        #   in Loop: Header=BB187_2 Depth=1
	addi.d	$a6, $a5, -1
	add.d	$a1, $a1, $a2
	add.d	$a3, $a3, $a4
	bgtz	$a5, .LBB187_2
.LBB187_5:                              # %"_ZSt10__invoke_rIvRZ4mainE4$_25JPmS2_jjEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end187:
	.size	_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_25E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_, .Lfunc_end187-_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_25E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_25E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_25E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_25E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_25E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB188_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB188_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_25E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB188_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_25)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_25)
.LBB188_4:                              # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_25E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end188:
	.size	_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_25E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end188-_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_25E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_26E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_
	.type	_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_26E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_,@function
_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_26E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_: # @"_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_26E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_"
# %bb.0:
	ld.wu	$a0, $a4, 0
	beqz	$a0, .LBB189_5
# %bb.1:                                # %.preheader.us.preheader.i.i.i
	ld.wu	$a4, $a3, 0
	ld.d	$a1, $a1, 0
	ld.d	$a3, $a2, 0
	addi.d	$a2, $a4, 1
	bstrpick.d	$a2, $a2, 31, 0
	addi.d	$a5, $a4, -1
	bstrpick.d	$a6, $a5, 31, 0
	mul.d	$a5, $a6, $a2
	add.d	$a1, $a1, $a5
	sub.d	$a2, $zero, $a2
	mul.d	$a5, $a4, $a6
	add.d	$a3, $a3, $a5
	sub.d	$a4, $zero, $a4
	.p2align	4, , 16
.LBB189_2:                              # %.preheader.us.i.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB189_3 Depth 2
	move	$a5, $a6
	move	$a6, $a3
	move	$a7, $a1
	move	$t0, $a0
	.p2align	4, , 16
.LBB189_3:                              #   Parent Loop BB189_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$t1, $a6, 0
	ld.b	$t2, $a7, 0
	add.d	$t1, $t2, $t1
	st.b	$t1, $a7, 0
	addi.d	$t0, $t0, -1
	addi.d	$a7, $a7, 1
	addi.d	$a6, $a6, 1
	bnez	$t0, .LBB189_3
# %bb.4:                                # %._crit_edge.us.i.i.i
                                        #   in Loop: Header=BB189_2 Depth=1
	addi.d	$a6, $a5, -1
	add.d	$a1, $a1, $a2
	add.d	$a3, $a3, $a4
	bgtz	$a5, .LBB189_2
.LBB189_5:                              # %"_ZSt10__invoke_rIvRZ4mainE4$_26JPhS2_jjEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end189:
	.size	_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_26E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_, .Lfunc_end189-_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_26E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_26E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_26E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_26E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_26E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB190_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB190_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_26E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB190_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_26)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_26)
.LBB190_4:                              # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_26E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end190:
	.size	_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_26E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end190-_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_26E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_27E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_
	.type	_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_27E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_,@function
_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_27E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_: # @"_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_27E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_"
# %bb.0:
	ld.wu	$a0, $a4, 0
	beqz	$a0, .LBB191_5
# %bb.1:                                # %.preheader.us.preheader.i.i.i
	ld.wu	$a4, $a3, 0
	ld.d	$a1, $a1, 0
	ld.d	$a3, $a2, 0
	addi.d	$a2, $a4, 1
	bstrpick.d	$a2, $a2, 31, 0
	addi.d	$a5, $a4, -1
	bstrpick.d	$a6, $a5, 31, 0
	mul.d	$a5, $a6, $a2
	add.d	$a1, $a1, $a5
	sub.d	$a2, $zero, $a2
	mul.d	$a5, $a4, $a6
	add.d	$a3, $a3, $a5
	sub.d	$a4, $zero, $a4
	.p2align	4, , 16
.LBB191_2:                              # %iter.check
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB191_3 Depth 2
	move	$a5, $a6
	move	$a6, $a3
	move	$a7, $a1
	move	$t0, $a0
	.p2align	4, , 16
.LBB191_3:                              #   Parent Loop BB191_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$t1, $a6, 0
	ld.b	$t2, $a7, 0
	add.d	$t1, $t2, $t1
	st.b	$t1, $a7, 0
	addi.d	$t0, $t0, -1
	addi.d	$a7, $a7, 1
	addi.d	$a6, $a6, 1
	bnez	$t0, .LBB191_3
# %bb.4:                                # %._crit_edge.us.i.i.i
                                        #   in Loop: Header=BB191_2 Depth=1
	addi.d	$a6, $a5, -1
	add.d	$a1, $a1, $a2
	add.d	$a3, $a3, $a4
	bgtz	$a5, .LBB191_2
.LBB191_5:                              # %"_ZSt10__invoke_rIvRZ4mainE4$_27JPhS2_jjEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end191:
	.size	_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_27E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_, .Lfunc_end191-_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_27E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_27E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_27E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_27E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_27E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB192_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB192_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_27E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB192_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_27)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_27)
.LBB192_4:                              # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_27E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end192:
	.size	_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_27E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end192-_ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_27E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_26E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_
	.type	_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_26E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_,@function
_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_26E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_: # @"_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_26E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_"
# %bb.0:
	ld.wu	$a0, $a4, 0
	beqz	$a0, .LBB193_5
# %bb.1:                                # %.preheader.us.preheader.i.i.i
	ld.wu	$a4, $a3, 0
	ld.d	$a1, $a1, 0
	ld.d	$a3, $a2, 0
	addi.d	$a2, $a4, 1
	bstrpick.d	$a2, $a2, 31, 0
	addi.d	$a5, $a4, -1
	bstrpick.d	$a6, $a5, 31, 0
	mul.d	$a5, $a6, $a2
	alsl.d	$a1, $a5, $a1, 2
	slli.d	$a2, $a2, 2
	sub.d	$a2, $zero, $a2
	mul.d	$a5, $a4, $a6
	alsl.d	$a3, $a5, $a3, 2
	slli.d	$a4, $a4, 2
	sub.d	$a4, $zero, $a4
	.p2align	4, , 16
.LBB193_2:                              # %.preheader.us.i.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB193_3 Depth 2
	move	$a5, $a6
	move	$a6, $a3
	move	$a7, $a1
	move	$t0, $a0
	.p2align	4, , 16
.LBB193_3:                              #   Parent Loop BB193_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t1, $a6, 0
	ld.w	$t2, $a7, 0
	add.d	$t1, $t2, $t1
	st.w	$t1, $a7, 0
	addi.d	$t0, $t0, -1
	addi.d	$a7, $a7, 4
	addi.d	$a6, $a6, 4
	bnez	$t0, .LBB193_3
# %bb.4:                                # %._crit_edge.us.i.i.i
                                        #   in Loop: Header=BB193_2 Depth=1
	addi.d	$a6, $a5, -1
	add.d	$a1, $a1, $a2
	add.d	$a3, $a3, $a4
	bgtz	$a5, .LBB193_2
.LBB193_5:                              # %"_ZSt10__invoke_rIvRZ4mainE4$_26JPjS2_jjEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end193:
	.size	_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_26E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_, .Lfunc_end193-_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_26E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_26E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_26E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_26E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_26E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB194_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB194_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_26E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB194_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_26)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_26)
.LBB194_4:                              # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_26E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end194:
	.size	_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_26E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end194-_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_26E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_27E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_
	.type	_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_27E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_,@function
_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_27E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_: # @"_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_27E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_"
# %bb.0:
	ld.wu	$a0, $a4, 0
	beqz	$a0, .LBB195_5
# %bb.1:                                # %.preheader.us.preheader.i.i.i
	ld.wu	$a4, $a3, 0
	ld.d	$a1, $a1, 0
	ld.d	$a3, $a2, 0
	addi.d	$a2, $a4, 1
	bstrpick.d	$a2, $a2, 31, 0
	addi.d	$a5, $a4, -1
	bstrpick.d	$a6, $a5, 31, 0
	mul.d	$a5, $a6, $a2
	alsl.d	$a1, $a5, $a1, 2
	slli.d	$a2, $a2, 2
	sub.d	$a2, $zero, $a2
	mul.d	$a5, $a4, $a6
	alsl.d	$a3, $a5, $a3, 2
	slli.d	$a4, $a4, 2
	sub.d	$a4, $zero, $a4
	.p2align	4, , 16
.LBB195_2:                              # %.preheader.us.i.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB195_3 Depth 2
	move	$a5, $a6
	move	$a6, $a3
	move	$a7, $a1
	move	$t0, $a0
	.p2align	4, , 16
.LBB195_3:                              #   Parent Loop BB195_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t1, $a6, 0
	ld.w	$t2, $a7, 0
	add.d	$t1, $t2, $t1
	st.w	$t1, $a7, 0
	addi.d	$t0, $t0, -1
	addi.d	$a7, $a7, 4
	addi.d	$a6, $a6, 4
	bnez	$t0, .LBB195_3
# %bb.4:                                # %._crit_edge.us.i.i.i
                                        #   in Loop: Header=BB195_2 Depth=1
	addi.d	$a6, $a5, -1
	add.d	$a1, $a1, $a2
	add.d	$a3, $a3, $a4
	bgtz	$a5, .LBB195_2
.LBB195_5:                              # %"_ZSt10__invoke_rIvRZ4mainE4$_27JPjS2_jjEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end195:
	.size	_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_27E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_, .Lfunc_end195-_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_27E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_27E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_27E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_27E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_27E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB196_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB196_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_27E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB196_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_27)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_27)
.LBB196_4:                              # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_27E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end196:
	.size	_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_27E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end196-_ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_27E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_26E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_
	.type	_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_26E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_,@function
_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_26E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_: # @"_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_26E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_"
# %bb.0:
	ld.wu	$a0, $a4, 0
	beqz	$a0, .LBB197_5
# %bb.1:                                # %.preheader.us.preheader.i.i.i
	ld.wu	$a4, $a3, 0
	ld.d	$a1, $a1, 0
	ld.d	$a3, $a2, 0
	addi.d	$a2, $a4, 1
	bstrpick.d	$a2, $a2, 31, 0
	addi.d	$a5, $a4, -1
	bstrpick.d	$a6, $a5, 31, 0
	mul.d	$a5, $a6, $a2
	alsl.d	$a1, $a5, $a1, 3
	slli.d	$a2, $a2, 3
	sub.d	$a2, $zero, $a2
	mul.d	$a5, $a4, $a6
	alsl.d	$a3, $a5, $a3, 3
	slli.d	$a4, $a4, 3
	sub.d	$a4, $zero, $a4
	.p2align	4, , 16
.LBB197_2:                              # %.preheader.us.i.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB197_3 Depth 2
	move	$a5, $a6
	move	$a6, $a3
	move	$a7, $a1
	move	$t0, $a0
	.p2align	4, , 16
.LBB197_3:                              #   Parent Loop BB197_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t1, $a6, 0
	ld.d	$t2, $a7, 0
	add.d	$t1, $t2, $t1
	st.d	$t1, $a7, 0
	addi.d	$t0, $t0, -1
	addi.d	$a7, $a7, 8
	addi.d	$a6, $a6, 8
	bnez	$t0, .LBB197_3
# %bb.4:                                # %._crit_edge.us.i.i.i
                                        #   in Loop: Header=BB197_2 Depth=1
	addi.d	$a6, $a5, -1
	add.d	$a1, $a1, $a2
	add.d	$a3, $a3, $a4
	bgtz	$a5, .LBB197_2
.LBB197_5:                              # %"_ZSt10__invoke_rIvRZ4mainE4$_26JPmS2_jjEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end197:
	.size	_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_26E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_, .Lfunc_end197-_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_26E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_26E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_26E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_26E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_26E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB198_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB198_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_26E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB198_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_26)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_26)
.LBB198_4:                              # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_26E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end198:
	.size	_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_26E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end198-_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_26E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_27E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_
	.type	_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_27E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_,@function
_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_27E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_: # @"_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_27E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_"
# %bb.0:
	ld.wu	$a0, $a4, 0
	beqz	$a0, .LBB199_5
# %bb.1:                                # %.preheader.us.preheader.i.i.i
	ld.wu	$a4, $a3, 0
	ld.d	$a1, $a1, 0
	ld.d	$a3, $a2, 0
	addi.d	$a2, $a4, 1
	bstrpick.d	$a2, $a2, 31, 0
	addi.d	$a5, $a4, -1
	bstrpick.d	$a6, $a5, 31, 0
	mul.d	$a5, $a6, $a2
	alsl.d	$a1, $a5, $a1, 3
	slli.d	$a2, $a2, 3
	sub.d	$a2, $zero, $a2
	mul.d	$a5, $a4, $a6
	alsl.d	$a3, $a5, $a3, 3
	slli.d	$a4, $a4, 3
	sub.d	$a4, $zero, $a4
	.p2align	4, , 16
.LBB199_2:                              # %.preheader.us.i.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB199_3 Depth 2
	move	$a5, $a6
	move	$a6, $a3
	move	$a7, $a1
	move	$t0, $a0
	.p2align	4, , 16
.LBB199_3:                              #   Parent Loop BB199_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t1, $a6, 0
	ld.d	$t2, $a7, 0
	add.d	$t1, $t2, $t1
	st.d	$t1, $a7, 0
	addi.d	$t0, $t0, -1
	addi.d	$a7, $a7, 8
	addi.d	$a6, $a6, 8
	bnez	$t0, .LBB199_3
# %bb.4:                                # %._crit_edge.us.i.i.i
                                        #   in Loop: Header=BB199_2 Depth=1
	addi.d	$a6, $a5, -1
	add.d	$a1, $a1, $a2
	add.d	$a3, $a3, $a4
	bgtz	$a5, .LBB199_2
.LBB199_5:                              # %"_ZSt10__invoke_rIvRZ4mainE4$_27JPmS2_jjEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end199:
	.size	_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_27E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_, .Lfunc_end199-_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_27E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_27E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_27E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_27E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_27E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB200_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB200_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_27E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB200_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_27)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_27)
.LBB200_4:                              # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_27E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end200:
	.size	_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_27E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end200-_ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_27E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	5                               # -- Begin function _GLOBAL__sub_I_runtime_checks.cpp
	.type	_GLOBAL__sub_I_runtime_checks.cpp,@function
_GLOBAL__sub_I_runtime_checks.cpp:      # @_GLOBAL__sub_I_runtime_checks.cpp
# %bb.0:
	pcalau12i	$a0, %pc_hi20(_ZL3rng)
	addi.d	$a0, $a0, %pc_lo12(_ZL3rng)
	lu12i.w	$a1, 1
	ori	$a2, $a1, 1393
	st.d	$a2, $a0, 0
	addi.d	$a1, $a0, 8
	ori	$a3, $zero, 1
	lu12i.w	$a4, 442488
	ori	$a4, $a4, 2405
	ori	$a5, $zero, 624
	.p2align	4, , 16
.LBB201_1:                              # =>This Inner Loop Header: Depth=1
	srli.d	$a6, $a2, 30
	xor	$a2, $a6, $a2
	mul.d	$a2, $a2, $a4
	add.d	$a2, $a3, $a2
	bstrpick.d	$a2, $a2, 31, 0
	st.d	$a2, $a1, 0
	addi.d	$a3, $a3, 1
	addi.d	$a1, $a1, 8
	bne	$a3, $a5, .LBB201_1
# %bb.2:                                # %__cxx_global_var_init.exit
	ori	$a1, $zero, 624
	stptr.d	$a1, $a0, 4992
	ret
.Lfunc_end201:
	.size	_GLOBAL__sub_I_runtime_checks.cpp, .Lfunc_end201-_GLOBAL__sub_I_runtime_checks.cpp
                                        # -- End function
	.type	_ZL3rng,@object                 # @_ZL3rng
	.local	_ZL3rng
	.comm	_ZL3rng,5000,8
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"1 read, 1 write, step 1, uint8_t"
	.size	.L.str, 33

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"1 read, 1 write, step 1, uint32_t"
	.size	.L.str.1, 34

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"1 read, 1 write, step 1, uint64_t"
	.size	.L.str.2, 34

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"1 read, 1 write, offset 3, uint8_t"
	.size	.L.str.3, 35

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"1 read, 1 write, offset 3, uint32_t"
	.size	.L.str.4, 36

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"1 read, 1 write, offset 3, uint64_t"
	.size	.L.str.5, 36

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"1 read, 1 write, offset -3, uint8_t"
	.size	.L.str.6, 36

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"1 read, 1 write, offset -3, uint32_t"
	.size	.L.str.7, 37

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"1 read, 1 write, offset -3, uint64_t"
	.size	.L.str.8, 37

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"1 read, 1 write, index count down, uint8_t"
	.size	.L.str.9, 43

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"1 read, 1 write, index count down, uint32_t"
	.size	.L.str.10, 44

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"1 read, 1 write, index count down, uint64_t"
	.size	.L.str.11, 44

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"1 read, 1 write, index count down 2, uint8_t"
	.size	.L.str.12, 45

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"1 read, 1 write, index count down 2, uint32_t"
	.size	.L.str.13, 46

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"1 read, 1 write, index count down 2, uint64_t"
	.size	.L.str.14, 46

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"1 read, 1 write, 2 inductions, different steps, uint8_t"
	.size	.L.str.15, 56

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"1 read, 1 write, 2 inductions, different steps, uint32_t"
	.size	.L.str.16, 57

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"1 read, 1 write, 2 inductions, different steps, uint64_t"
	.size	.L.str.17, 57

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"1 read, 1 write, induction increment 2, uint8_t"
	.size	.L.str.18, 48

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"1 read, 1 write, induction increment 2, uint32_t"
	.size	.L.str.19, 49

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"1 read, 1 write, induction increment 2, uint64_t"
	.size	.L.str.20, 49

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"1 read, 1 write to invariant address, step 1, uint8_t"
	.size	.L.str.21, 54

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"1 read, 1 write to invariant address, step 1, uint32_t"
	.size	.L.str.22, 55

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"1 read, 1 write to invariant address, step 1, uint64_t"
	.size	.L.str.23, 55

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"2 reads, 1 write, simple indices, uint32_t"
	.size	.L.str.24, 43

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"2 reads, 1 write, simple indices, uint8_t"
	.size	.L.str.25, 42

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"2 reads, 1 write, simple indices, uint64_t"
	.size	.L.str.26, 43

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"1 read, 2 writes, simple indices, uint8_t"
	.size	.L.str.27, 42

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"1 read, 2 writes, simple indices, uint32_t"
	.size	.L.str.28, 43

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"1 read, 2 writes, simple indices, uint64_t"
	.size	.L.str.29, 43

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"1 read, 1 write, nested loop (matching trip counts), uint8_t"
	.size	.L.str.30, 61

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"1 read, 1 write, nested loop (matching trip counts), uint32_t"
	.size	.L.str.31, 62

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"1 read, 1 write, nested loop (matching trip counts), uint64_t"
	.size	.L.str.32, 62

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"1 read, 1 write, nested loop (different trip counts), uint8_t"
	.size	.L.str.33, 62

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"1 read, 1 write, nested loop (different trip counts), uint32_t"
	.size	.L.str.34, 63

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"1 read, 1 write, nested loop (different trip counts), uint64_t"
	.size	.L.str.35, 63

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"2 reads, 1 write, nested loop (matching trip counts), uint8_t"
	.size	.L.str.36, 62

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"2 reads, 1 write, nested loop (matching trip counts), uint32_t"
	.size	.L.str.37, 63

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"2 reads, 1 write, nested loop (matching trip counts), uint64_t"
	.size	.L.str.38, 63

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"2 reads, 1 write, nested loop (different trip counts), uint8_t"
	.size	.L.str.39, 63

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"2 reads, 1 write, nested loop (different trip counts), uint32_t"
	.size	.L.str.40, 64

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"2 reads, 1 write, nested loop (different trip counts), uint64_t"
	.size	.L.str.41, 64

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"1 read, 1 write, nested loop (decreasing outer iv, matching trip counts), uint8_t"
	.size	.L.str.42, 82

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"1 read, 1 write, nested loop (decreasing outer iv, matching trip counts), uint32_t"
	.size	.L.str.43, 83

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	"1 read, 1 write, nested loop (decreasing outer iv, matching trip counts), uint64_t"
	.size	.L.str.44, 83

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	"2 reads, 1 write, nested loop (decreasing outer iv, matching trip counts), uint8_t"
	.size	.L.str.45, 83

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	"2 reads, 1 write, nested loop (decreasing outer iv, matching trip counts), uint32_t"
	.size	.L.str.46, 84

	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	"2 reads, 1 write, nested loop (decreasing outer iv, matching trip counts), uint64_t"
	.size	.L.str.47, 84

	.type	.L.str.48,@object               # @.str.48
.L.str.48:
	.asciz	"Checking "
	.size	.L.str.48, 10

	.type	.L.str.49,@object               # @.str.49
.L.str.49:
	.asciz	"\n"
	.size	.L.str.49, 2

	.type	.L.str.50,@object               # @.str.50
.L.str.50:
	.asciz	"Miscompare with offset "
	.size	.L.str.50, 24

	.type	_ZTIZ4mainE3$_0,@object         # @"_ZTIZ4mainE3$_0"
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
_ZTIZ4mainE3$_0:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTSZ4mainE3$_0
	.size	_ZTIZ4mainE3$_0, 16

	.type	_ZTSZ4mainE3$_0,@object         # @"_ZTSZ4mainE3$_0"
	.section	.rodata,"a",@progbits
_ZTSZ4mainE3$_0:
	.asciz	"Z4mainE3$_0"
	.size	_ZTSZ4mainE3$_0, 12

	.type	_ZTIZ4mainE3$_1,@object         # @"_ZTIZ4mainE3$_1"
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
_ZTIZ4mainE3$_1:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTSZ4mainE3$_1
	.size	_ZTIZ4mainE3$_1, 16

	.type	_ZTSZ4mainE3$_1,@object         # @"_ZTSZ4mainE3$_1"
	.section	.rodata,"a",@progbits
_ZTSZ4mainE3$_1:
	.asciz	"Z4mainE3$_1"
	.size	_ZTSZ4mainE3$_1, 12

	.type	_ZTIZ4mainE3$_2,@object         # @"_ZTIZ4mainE3$_2"
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
_ZTIZ4mainE3$_2:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTSZ4mainE3$_2
	.size	_ZTIZ4mainE3$_2, 16

	.type	_ZTSZ4mainE3$_2,@object         # @"_ZTSZ4mainE3$_2"
	.section	.rodata,"a",@progbits
_ZTSZ4mainE3$_2:
	.asciz	"Z4mainE3$_2"
	.size	_ZTSZ4mainE3$_2, 12

	.type	_ZTIZ4mainE3$_3,@object         # @"_ZTIZ4mainE3$_3"
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
_ZTIZ4mainE3$_3:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTSZ4mainE3$_3
	.size	_ZTIZ4mainE3$_3, 16

	.type	_ZTSZ4mainE3$_3,@object         # @"_ZTSZ4mainE3$_3"
	.section	.rodata,"a",@progbits
_ZTSZ4mainE3$_3:
	.asciz	"Z4mainE3$_3"
	.size	_ZTSZ4mainE3$_3, 12

	.type	_ZTIZ4mainE3$_4,@object         # @"_ZTIZ4mainE3$_4"
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
_ZTIZ4mainE3$_4:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTSZ4mainE3$_4
	.size	_ZTIZ4mainE3$_4, 16

	.type	_ZTSZ4mainE3$_4,@object         # @"_ZTSZ4mainE3$_4"
	.section	.rodata,"a",@progbits
_ZTSZ4mainE3$_4:
	.asciz	"Z4mainE3$_4"
	.size	_ZTSZ4mainE3$_4, 12

	.type	_ZTIZ4mainE3$_5,@object         # @"_ZTIZ4mainE3$_5"
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
_ZTIZ4mainE3$_5:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTSZ4mainE3$_5
	.size	_ZTIZ4mainE3$_5, 16

	.type	_ZTSZ4mainE3$_5,@object         # @"_ZTSZ4mainE3$_5"
	.section	.rodata,"a",@progbits
_ZTSZ4mainE3$_5:
	.asciz	"Z4mainE3$_5"
	.size	_ZTSZ4mainE3$_5, 12

	.type	_ZTIZ4mainE3$_6,@object         # @"_ZTIZ4mainE3$_6"
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
_ZTIZ4mainE3$_6:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTSZ4mainE3$_6
	.size	_ZTIZ4mainE3$_6, 16

	.type	_ZTSZ4mainE3$_6,@object         # @"_ZTSZ4mainE3$_6"
	.section	.rodata,"a",@progbits
_ZTSZ4mainE3$_6:
	.asciz	"Z4mainE3$_6"
	.size	_ZTSZ4mainE3$_6, 12

	.type	_ZTIZ4mainE3$_7,@object         # @"_ZTIZ4mainE3$_7"
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
_ZTIZ4mainE3$_7:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTSZ4mainE3$_7
	.size	_ZTIZ4mainE3$_7, 16

	.type	_ZTSZ4mainE3$_7,@object         # @"_ZTSZ4mainE3$_7"
	.section	.rodata,"a",@progbits
_ZTSZ4mainE3$_7:
	.asciz	"Z4mainE3$_7"
	.size	_ZTSZ4mainE3$_7, 12

	.type	_ZTIZ4mainE3$_8,@object         # @"_ZTIZ4mainE3$_8"
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
_ZTIZ4mainE3$_8:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTSZ4mainE3$_8
	.size	_ZTIZ4mainE3$_8, 16

	.type	_ZTSZ4mainE3$_8,@object         # @"_ZTSZ4mainE3$_8"
	.section	.rodata,"a",@progbits
_ZTSZ4mainE3$_8:
	.asciz	"Z4mainE3$_8"
	.size	_ZTSZ4mainE3$_8, 12

	.type	_ZTIZ4mainE3$_9,@object         # @"_ZTIZ4mainE3$_9"
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
_ZTIZ4mainE3$_9:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTSZ4mainE3$_9
	.size	_ZTIZ4mainE3$_9, 16

	.type	_ZTSZ4mainE3$_9,@object         # @"_ZTSZ4mainE3$_9"
	.section	.rodata,"a",@progbits
_ZTSZ4mainE3$_9:
	.asciz	"Z4mainE3$_9"
	.size	_ZTSZ4mainE3$_9, 12

	.type	_ZTIZ4mainE4$_10,@object        # @"_ZTIZ4mainE4$_10"
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
_ZTIZ4mainE4$_10:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTSZ4mainE4$_10
	.size	_ZTIZ4mainE4$_10, 16

	.type	_ZTSZ4mainE4$_10,@object        # @"_ZTSZ4mainE4$_10"
	.section	.rodata,"a",@progbits
_ZTSZ4mainE4$_10:
	.asciz	"Z4mainE4$_10"
	.size	_ZTSZ4mainE4$_10, 13

	.type	_ZTIZ4mainE4$_11,@object        # @"_ZTIZ4mainE4$_11"
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
_ZTIZ4mainE4$_11:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTSZ4mainE4$_11
	.size	_ZTIZ4mainE4$_11, 16

	.type	_ZTSZ4mainE4$_11,@object        # @"_ZTSZ4mainE4$_11"
	.section	.rodata,"a",@progbits
_ZTSZ4mainE4$_11:
	.asciz	"Z4mainE4$_11"
	.size	_ZTSZ4mainE4$_11, 13

	.type	_ZTIZ4mainE4$_12,@object        # @"_ZTIZ4mainE4$_12"
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
_ZTIZ4mainE4$_12:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTSZ4mainE4$_12
	.size	_ZTIZ4mainE4$_12, 16

	.type	_ZTSZ4mainE4$_12,@object        # @"_ZTSZ4mainE4$_12"
	.section	.rodata,"a",@progbits
_ZTSZ4mainE4$_12:
	.asciz	"Z4mainE4$_12"
	.size	_ZTSZ4mainE4$_12, 13

	.type	_ZTIZ4mainE4$_13,@object        # @"_ZTIZ4mainE4$_13"
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
_ZTIZ4mainE4$_13:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTSZ4mainE4$_13
	.size	_ZTIZ4mainE4$_13, 16

	.type	_ZTSZ4mainE4$_13,@object        # @"_ZTSZ4mainE4$_13"
	.section	.rodata,"a",@progbits
_ZTSZ4mainE4$_13:
	.asciz	"Z4mainE4$_13"
	.size	_ZTSZ4mainE4$_13, 13

	.type	_ZTIZ4mainE4$_14,@object        # @"_ZTIZ4mainE4$_14"
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
_ZTIZ4mainE4$_14:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTSZ4mainE4$_14
	.size	_ZTIZ4mainE4$_14, 16

	.type	_ZTSZ4mainE4$_14,@object        # @"_ZTSZ4mainE4$_14"
	.section	.rodata,"a",@progbits
_ZTSZ4mainE4$_14:
	.asciz	"Z4mainE4$_14"
	.size	_ZTSZ4mainE4$_14, 13

	.type	_ZTIZ4mainE4$_15,@object        # @"_ZTIZ4mainE4$_15"
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
_ZTIZ4mainE4$_15:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTSZ4mainE4$_15
	.size	_ZTIZ4mainE4$_15, 16

	.type	_ZTSZ4mainE4$_15,@object        # @"_ZTSZ4mainE4$_15"
	.section	.rodata,"a",@progbits
_ZTSZ4mainE4$_15:
	.asciz	"Z4mainE4$_15"
	.size	_ZTSZ4mainE4$_15, 13

	.type	_ZTIZ4mainE4$_16,@object        # @"_ZTIZ4mainE4$_16"
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
_ZTIZ4mainE4$_16:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTSZ4mainE4$_16
	.size	_ZTIZ4mainE4$_16, 16

	.type	_ZTSZ4mainE4$_16,@object        # @"_ZTSZ4mainE4$_16"
	.section	.rodata,"a",@progbits
_ZTSZ4mainE4$_16:
	.asciz	"Z4mainE4$_16"
	.size	_ZTSZ4mainE4$_16, 13

	.type	_ZTIZ4mainE4$_17,@object        # @"_ZTIZ4mainE4$_17"
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
_ZTIZ4mainE4$_17:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTSZ4mainE4$_17
	.size	_ZTIZ4mainE4$_17, 16

	.type	_ZTSZ4mainE4$_17,@object        # @"_ZTSZ4mainE4$_17"
	.section	.rodata,"a",@progbits
_ZTSZ4mainE4$_17:
	.asciz	"Z4mainE4$_17"
	.size	_ZTSZ4mainE4$_17, 13

	.type	_ZTIZ4mainE4$_18,@object        # @"_ZTIZ4mainE4$_18"
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
_ZTIZ4mainE4$_18:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTSZ4mainE4$_18
	.size	_ZTIZ4mainE4$_18, 16

	.type	_ZTSZ4mainE4$_18,@object        # @"_ZTSZ4mainE4$_18"
	.section	.rodata,"a",@progbits
_ZTSZ4mainE4$_18:
	.asciz	"Z4mainE4$_18"
	.size	_ZTSZ4mainE4$_18, 13

	.type	_ZTIZ4mainE4$_19,@object        # @"_ZTIZ4mainE4$_19"
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
_ZTIZ4mainE4$_19:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTSZ4mainE4$_19
	.size	_ZTIZ4mainE4$_19, 16

	.type	_ZTSZ4mainE4$_19,@object        # @"_ZTSZ4mainE4$_19"
	.section	.rodata,"a",@progbits
_ZTSZ4mainE4$_19:
	.asciz	"Z4mainE4$_19"
	.size	_ZTSZ4mainE4$_19, 13

	.type	_ZTIZ4mainE4$_20,@object        # @"_ZTIZ4mainE4$_20"
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
_ZTIZ4mainE4$_20:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTSZ4mainE4$_20
	.size	_ZTIZ4mainE4$_20, 16

	.type	_ZTSZ4mainE4$_20,@object        # @"_ZTSZ4mainE4$_20"
	.section	.rodata,"a",@progbits
_ZTSZ4mainE4$_20:
	.asciz	"Z4mainE4$_20"
	.size	_ZTSZ4mainE4$_20, 13

	.type	_ZTIZ4mainE4$_21,@object        # @"_ZTIZ4mainE4$_21"
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
_ZTIZ4mainE4$_21:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTSZ4mainE4$_21
	.size	_ZTIZ4mainE4$_21, 16

	.type	_ZTSZ4mainE4$_21,@object        # @"_ZTSZ4mainE4$_21"
	.section	.rodata,"a",@progbits
_ZTSZ4mainE4$_21:
	.asciz	"Z4mainE4$_21"
	.size	_ZTSZ4mainE4$_21, 13

	.type	_ZTIZ4mainE4$_22,@object        # @"_ZTIZ4mainE4$_22"
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
_ZTIZ4mainE4$_22:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTSZ4mainE4$_22
	.size	_ZTIZ4mainE4$_22, 16

	.type	_ZTSZ4mainE4$_22,@object        # @"_ZTSZ4mainE4$_22"
	.section	.rodata,"a",@progbits
_ZTSZ4mainE4$_22:
	.asciz	"Z4mainE4$_22"
	.size	_ZTSZ4mainE4$_22, 13

	.type	_ZTIZ4mainE4$_23,@object        # @"_ZTIZ4mainE4$_23"
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
_ZTIZ4mainE4$_23:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTSZ4mainE4$_23
	.size	_ZTIZ4mainE4$_23, 16

	.type	_ZTSZ4mainE4$_23,@object        # @"_ZTSZ4mainE4$_23"
	.section	.rodata,"a",@progbits
_ZTSZ4mainE4$_23:
	.asciz	"Z4mainE4$_23"
	.size	_ZTSZ4mainE4$_23, 13

	.type	_ZTIZ4mainE4$_24,@object        # @"_ZTIZ4mainE4$_24"
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
_ZTIZ4mainE4$_24:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTSZ4mainE4$_24
	.size	_ZTIZ4mainE4$_24, 16

	.type	_ZTSZ4mainE4$_24,@object        # @"_ZTSZ4mainE4$_24"
	.section	.rodata,"a",@progbits
_ZTSZ4mainE4$_24:
	.asciz	"Z4mainE4$_24"
	.size	_ZTSZ4mainE4$_24, 13

	.type	_ZTIZ4mainE4$_25,@object        # @"_ZTIZ4mainE4$_25"
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
_ZTIZ4mainE4$_25:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTSZ4mainE4$_25
	.size	_ZTIZ4mainE4$_25, 16

	.type	_ZTSZ4mainE4$_25,@object        # @"_ZTSZ4mainE4$_25"
	.section	.rodata,"a",@progbits
_ZTSZ4mainE4$_25:
	.asciz	"Z4mainE4$_25"
	.size	_ZTSZ4mainE4$_25, 13

	.type	_ZTIZ4mainE4$_26,@object        # @"_ZTIZ4mainE4$_26"
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
_ZTIZ4mainE4$_26:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTSZ4mainE4$_26
	.size	_ZTIZ4mainE4$_26, 16

	.type	_ZTSZ4mainE4$_26,@object        # @"_ZTSZ4mainE4$_26"
	.section	.rodata,"a",@progbits
_ZTSZ4mainE4$_26:
	.asciz	"Z4mainE4$_26"
	.size	_ZTSZ4mainE4$_26, 13

	.type	_ZTIZ4mainE4$_27,@object        # @"_ZTIZ4mainE4$_27"
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
_ZTIZ4mainE4$_27:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTSZ4mainE4$_27
	.size	_ZTIZ4mainE4$_27, 16

	.type	_ZTSZ4mainE4$_27,@object        # @"_ZTSZ4mainE4$_27"
	.section	.rodata,"a",@progbits
_ZTSZ4mainE4$_27:
	.asciz	"Z4mainE4$_27"
	.size	_ZTSZ4mainE4$_27, 13

	.section	.init_array,"aw",@init_array
	.p2align	3, 0x0
	.dword	_GLOBAL__sub_I_runtime_checks.cpp
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
	.addrsig_sym _ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_0E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_1E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_0E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_1E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_0E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_1E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_2E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_2E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_3E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_3E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_2E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_2E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_3E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_3E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_2E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_2E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_3E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_3E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_4E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_5E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_4E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_5E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_4E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_5E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_6E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_6E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_7E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_7E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_6E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_6E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_7E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_7E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_6E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_6E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_7E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_7E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_8E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_9E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFvPhS0_jEZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_8E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_9E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFvPjS0_jEZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_8E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_9E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFvPmS0_jEZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFvPhS0_jEZ4mainE4$_10E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFvPhS0_jEZ4mainE4$_10E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFvPhS0_jEZ4mainE4$_11E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFvPhS0_jEZ4mainE4$_11E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFvPjS0_jEZ4mainE4$_10E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFvPjS0_jEZ4mainE4$_10E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFvPjS0_jEZ4mainE4$_11E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFvPjS0_jEZ4mainE4$_11E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFvPmS0_jEZ4mainE4$_10E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFvPmS0_jEZ4mainE4$_10E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFvPmS0_jEZ4mainE4$_11E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFvPmS0_jEZ4mainE4$_11E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFvPhS0_jEZ4mainE4$_12E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFvPhS0_jEZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFvPhS0_jEZ4mainE4$_13E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFvPhS0_jEZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFvPjS0_jEZ4mainE4$_12E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFvPjS0_jEZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFvPjS0_jEZ4mainE4$_13E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFvPjS0_jEZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFvPmS0_jEZ4mainE4$_12E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFvPmS0_jEZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFvPmS0_jEZ4mainE4$_13E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFvPmS0_jEZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFvPhS0_jEZ4mainE4$_14E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFvPhS0_jEZ4mainE4$_14E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFvPhS0_jEZ4mainE4$_15E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFvPhS0_jEZ4mainE4$_15E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFvPjS0_jEZ4mainE4$_14E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFvPjS0_jEZ4mainE4$_14E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFvPjS0_jEZ4mainE4$_15E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFvPjS0_jEZ4mainE4$_15E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFvPmS0_jEZ4mainE4$_14E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFvPmS0_jEZ4mainE4$_14E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFvPmS0_jEZ4mainE4$_15E9_M_invokeERKSt9_Any_dataOS0_S7_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFvPmS0_jEZ4mainE4$_15E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFvPjS0_S0_jEZ4mainE4$_16E9_M_invokeERKSt9_Any_dataOS0_S7_S7_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFvPjS0_S0_jEZ4mainE4$_16E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFvPjS0_S0_jEZ4mainE4$_17E9_M_invokeERKSt9_Any_dataOS0_S7_S7_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFvPjS0_S0_jEZ4mainE4$_17E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFvPhS0_S0_jEZ4mainE4$_16E9_M_invokeERKSt9_Any_dataOS0_S7_S7_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFvPhS0_S0_jEZ4mainE4$_16E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFvPhS0_S0_jEZ4mainE4$_17E9_M_invokeERKSt9_Any_dataOS0_S7_S7_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFvPhS0_S0_jEZ4mainE4$_17E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFvPmS0_S0_jEZ4mainE4$_16E9_M_invokeERKSt9_Any_dataOS0_S7_S7_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFvPmS0_S0_jEZ4mainE4$_16E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFvPmS0_S0_jEZ4mainE4$_17E9_M_invokeERKSt9_Any_dataOS0_S7_S7_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFvPmS0_S0_jEZ4mainE4$_17E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFvPhS0_S0_jEZ4mainE4$_18E9_M_invokeERKSt9_Any_dataOS0_S7_S7_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFvPhS0_S0_jEZ4mainE4$_18E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFvPhS0_S0_jEZ4mainE4$_19E9_M_invokeERKSt9_Any_dataOS0_S7_S7_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFvPhS0_S0_jEZ4mainE4$_19E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFvPjS0_S0_jEZ4mainE4$_18E9_M_invokeERKSt9_Any_dataOS0_S7_S7_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFvPjS0_S0_jEZ4mainE4$_18E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFvPjS0_S0_jEZ4mainE4$_19E9_M_invokeERKSt9_Any_dataOS0_S7_S7_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFvPjS0_S0_jEZ4mainE4$_19E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFvPmS0_S0_jEZ4mainE4$_18E9_M_invokeERKSt9_Any_dataOS0_S7_S7_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFvPmS0_S0_jEZ4mainE4$_18E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFvPmS0_S0_jEZ4mainE4$_19E9_M_invokeERKSt9_Any_dataOS0_S7_S7_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFvPmS0_S0_jEZ4mainE4$_19E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_20E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_
	.addrsig_sym _ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_20E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_21E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_
	.addrsig_sym _ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_21E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_20E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_
	.addrsig_sym _ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_20E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_21E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_
	.addrsig_sym _ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_21E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_20E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_
	.addrsig_sym _ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_20E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_21E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_
	.addrsig_sym _ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_21E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_22E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_
	.addrsig_sym _ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_22E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_23E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_
	.addrsig_sym _ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_23E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_22E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_
	.addrsig_sym _ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_22E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_23E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_
	.addrsig_sym _ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_23E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_22E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_
	.addrsig_sym _ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_22E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_23E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_
	.addrsig_sym _ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_23E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_24E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_
	.addrsig_sym _ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_24E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_25E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_
	.addrsig_sym _ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_25E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_24E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_
	.addrsig_sym _ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_24E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_25E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_
	.addrsig_sym _ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_25E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_24E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_
	.addrsig_sym _ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_24E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_25E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_
	.addrsig_sym _ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_25E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_26E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_
	.addrsig_sym _ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_26E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_27E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_
	.addrsig_sym _ZNSt17_Function_handlerIFvPhS0_jjEZ4mainE4$_27E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_26E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_
	.addrsig_sym _ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_26E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_27E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_
	.addrsig_sym _ZNSt17_Function_handlerIFvPjS0_jjEZ4mainE4$_27E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_26E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_
	.addrsig_sym _ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_26E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_27E9_M_invokeERKSt9_Any_dataOS0_S7_OjS8_
	.addrsig_sym _ZNSt17_Function_handlerIFvPmS0_jjEZ4mainE4$_27E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _GLOBAL__sub_I_runtime_checks.cpp
	.addrsig_sym _Unwind_Resume
	.addrsig_sym _ZL3rng
	.addrsig_sym _ZSt4cout
	.addrsig_sym _ZSt4cerr
	.addrsig_sym _ZTIZ4mainE3$_0
	.addrsig_sym _ZTVN10__cxxabiv117__class_type_infoE
	.addrsig_sym _ZTSZ4mainE3$_0
	.addrsig_sym _ZTIZ4mainE3$_1
	.addrsig_sym _ZTSZ4mainE3$_1
	.addrsig_sym _ZTIZ4mainE3$_2
	.addrsig_sym _ZTSZ4mainE3$_2
	.addrsig_sym _ZTIZ4mainE3$_3
	.addrsig_sym _ZTSZ4mainE3$_3
	.addrsig_sym _ZTIZ4mainE3$_4
	.addrsig_sym _ZTSZ4mainE3$_4
	.addrsig_sym _ZTIZ4mainE3$_5
	.addrsig_sym _ZTSZ4mainE3$_5
	.addrsig_sym _ZTIZ4mainE3$_6
	.addrsig_sym _ZTSZ4mainE3$_6
	.addrsig_sym _ZTIZ4mainE3$_7
	.addrsig_sym _ZTSZ4mainE3$_7
	.addrsig_sym _ZTIZ4mainE3$_8
	.addrsig_sym _ZTSZ4mainE3$_8
	.addrsig_sym _ZTIZ4mainE3$_9
	.addrsig_sym _ZTSZ4mainE3$_9
	.addrsig_sym _ZTIZ4mainE4$_10
	.addrsig_sym _ZTSZ4mainE4$_10
	.addrsig_sym _ZTIZ4mainE4$_11
	.addrsig_sym _ZTSZ4mainE4$_11
	.addrsig_sym _ZTIZ4mainE4$_12
	.addrsig_sym _ZTSZ4mainE4$_12
	.addrsig_sym _ZTIZ4mainE4$_13
	.addrsig_sym _ZTSZ4mainE4$_13
	.addrsig_sym _ZTIZ4mainE4$_14
	.addrsig_sym _ZTSZ4mainE4$_14
	.addrsig_sym _ZTIZ4mainE4$_15
	.addrsig_sym _ZTSZ4mainE4$_15
	.addrsig_sym _ZTIZ4mainE4$_16
	.addrsig_sym _ZTSZ4mainE4$_16
	.addrsig_sym _ZTIZ4mainE4$_17
	.addrsig_sym _ZTSZ4mainE4$_17
	.addrsig_sym _ZTIZ4mainE4$_18
	.addrsig_sym _ZTSZ4mainE4$_18
	.addrsig_sym _ZTIZ4mainE4$_19
	.addrsig_sym _ZTSZ4mainE4$_19
	.addrsig_sym _ZTIZ4mainE4$_20
	.addrsig_sym _ZTSZ4mainE4$_20
	.addrsig_sym _ZTIZ4mainE4$_21
	.addrsig_sym _ZTSZ4mainE4$_21
	.addrsig_sym _ZTIZ4mainE4$_22
	.addrsig_sym _ZTSZ4mainE4$_22
	.addrsig_sym _ZTIZ4mainE4$_23
	.addrsig_sym _ZTSZ4mainE4$_23
	.addrsig_sym _ZTIZ4mainE4$_24
	.addrsig_sym _ZTSZ4mainE4$_24
	.addrsig_sym _ZTIZ4mainE4$_25
	.addrsig_sym _ZTSZ4mainE4$_25
	.addrsig_sym _ZTIZ4mainE4$_26
	.addrsig_sym _ZTSZ4mainE4$_26
	.addrsig_sym _ZTIZ4mainE4$_27
	.addrsig_sym _ZTSZ4mainE4$_27
