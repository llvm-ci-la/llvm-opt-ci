	.file	"fmax-reduction.cpp"
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	addi.d	$sp, $sp, -2048
	addi.d	$sp, $sp, -1808
	.cfi_def_cfa_offset 5888
	ori	$a2, $zero, 15
	st.d	$a2, $sp, 872
	ori	$a0, $zero, 1
	ori	$a1, $zero, 8
	lu12i.w	$a3, 442488
	ori	$a3, $a3, 2405
	addi.d	$a4, $sp, 872
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
	ori	$a1, $a1, 1768
	add.d	$a1, $sp, $a1
	stptr.d	$a0, $a1, 0
	pcalau12i	$a0, %pc_hi20(_ZL3rng)
	addi.d	$a0, $a0, %pc_lo12(_ZL3rng)
	lu12i.w	$a1, 1
	ori	$a2, $a1, 904
	addi.d	$a1, $sp, 872
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 840
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_0E9_M_invokeERKSt9_Any_dataOS0_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_0E9_M_invokeERKSt9_Any_dataOS0_Oj)
	st.d	$a0, $sp, 864
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 856
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	vst	$vr0, $sp, 808
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_1E9_M_invokeERKSt9_Any_dataOS0_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_1E9_M_invokeERKSt9_Any_dataOS0_Oj)
	st.d	$a0, $sp, 832
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 824
.Ltmp0:                                 # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	addi.d	$a0, $sp, 840
	addi.d	$a1, $sp, 808
	pcaddu18i	$ra, %call36(_ZL19checkVectorFunctionIfEvSt8functionIFT_PS1_jEES4_PKc)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.3:
	ld.d	$a3, $sp, 824
	beqz	$a3, .LBB0_5
# %bb.4:
.Ltmp9:                                 # EH_LABEL
	addi.d	$a0, $sp, 808
	addi.d	$a1, $sp, 808
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp10:                                # EH_LABEL
.LBB0_5:                                # %_ZNSt14_Function_baseD2Ev.exit
	ld.d	$a3, $sp, 856
	beqz	$a3, .LBB0_7
# %bb.6:
.Ltmp12:                                # EH_LABEL
	addi.d	$a0, $sp, 840
	addi.d	$a1, $sp, 840
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp13:                                # EH_LABEL
.LBB0_7:                                # %_ZNSt14_Function_baseD2Ev.exit4
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 776
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_2E9_M_invokeERKSt9_Any_dataOS0_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_2E9_M_invokeERKSt9_Any_dataOS0_Oj)
	st.d	$a0, $sp, 800
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_2E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_2E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 792
	vst	$vr0, $sp, 744
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_3E9_M_invokeERKSt9_Any_dataOS0_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_3E9_M_invokeERKSt9_Any_dataOS0_Oj)
	st.d	$a0, $sp, 768
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_3E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_3E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 760
.Ltmp15:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a2, $a0, %pc_lo12(.L.str.1)
	addi.d	$a0, $sp, 776
	addi.d	$a1, $sp, 744
	pcaddu18i	$ra, %call36(_ZL19checkVectorFunctionIfEvSt8functionIFT_PS1_jEES4_PKc)
	jirl	$ra, $ra, 0
.Ltmp16:                                # EH_LABEL
# %bb.8:
	ld.d	$a3, $sp, 760
	beqz	$a3, .LBB0_10
# %bb.9:
.Ltmp24:                                # EH_LABEL
	addi.d	$a0, $sp, 744
	addi.d	$a1, $sp, 744
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp25:                                # EH_LABEL
.LBB0_10:                               # %_ZNSt14_Function_baseD2Ev.exit6
	ld.d	$a3, $sp, 792
	beqz	$a3, .LBB0_12
# %bb.11:
.Ltmp27:                                # EH_LABEL
	addi.d	$a0, $sp, 776
	addi.d	$a1, $sp, 776
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp28:                                # EH_LABEL
.LBB0_12:                               # %_ZNSt14_Function_baseD2Ev.exit8
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 712
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_4E9_M_invokeERKSt9_Any_dataOS0_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_4E9_M_invokeERKSt9_Any_dataOS0_Oj)
	st.d	$a0, $sp, 736
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 728
	vst	$vr0, $sp, 680
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_5E9_M_invokeERKSt9_Any_dataOS0_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_5E9_M_invokeERKSt9_Any_dataOS0_Oj)
	st.d	$a0, $sp, 704
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 696
.Ltmp30:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a2, $a0, %pc_lo12(.L.str.2)
	addi.d	$a0, $sp, 712
	addi.d	$a1, $sp, 680
	pcaddu18i	$ra, %call36(_ZL19checkVectorFunctionIfEvSt8functionIFT_PS1_jEES4_PKc)
	jirl	$ra, $ra, 0
.Ltmp31:                                # EH_LABEL
# %bb.13:
	ld.d	$a3, $sp, 696
	beqz	$a3, .LBB0_15
# %bb.14:
.Ltmp39:                                # EH_LABEL
	addi.d	$a0, $sp, 680
	addi.d	$a1, $sp, 680
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp40:                                # EH_LABEL
.LBB0_15:                               # %_ZNSt14_Function_baseD2Ev.exit10
	ld.d	$a3, $sp, 728
	beqz	$a3, .LBB0_17
# %bb.16:
.Ltmp42:                                # EH_LABEL
	addi.d	$a0, $sp, 712
	addi.d	$a1, $sp, 712
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp43:                                # EH_LABEL
.LBB0_17:                               # %_ZNSt14_Function_baseD2Ev.exit12
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 648
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_6E9_M_invokeERKSt9_Any_dataOS0_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_6E9_M_invokeERKSt9_Any_dataOS0_Oj)
	st.d	$a0, $sp, 672
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_6E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_6E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 664
	vst	$vr0, $sp, 616
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_7E9_M_invokeERKSt9_Any_dataOS0_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_7E9_M_invokeERKSt9_Any_dataOS0_Oj)
	st.d	$a0, $sp, 640
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_7E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_7E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 632
.Ltmp45:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a2, $a0, %pc_lo12(.L.str.3)
	addi.d	$a0, $sp, 648
	addi.d	$a1, $sp, 616
	pcaddu18i	$ra, %call36(_ZL19checkVectorFunctionIfEvSt8functionIFT_PS1_jEES4_PKc)
	jirl	$ra, $ra, 0
.Ltmp46:                                # EH_LABEL
# %bb.18:
	ld.d	$a3, $sp, 632
	beqz	$a3, .LBB0_20
# %bb.19:
.Ltmp54:                                # EH_LABEL
	addi.d	$a0, $sp, 616
	addi.d	$a1, $sp, 616
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp55:                                # EH_LABEL
.LBB0_20:                               # %_ZNSt14_Function_baseD2Ev.exit14
	ld.d	$a3, $sp, 664
	beqz	$a3, .LBB0_22
# %bb.21:
.Ltmp57:                                # EH_LABEL
	addi.d	$a0, $sp, 648
	addi.d	$a1, $sp, 648
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp58:                                # EH_LABEL
.LBB0_22:                               # %_ZNSt14_Function_baseD2Ev.exit16
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 584
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_8E9_M_invokeERKSt9_Any_dataOS0_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_8E9_M_invokeERKSt9_Any_dataOS0_Oj)
	st.d	$a0, $sp, 608
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 600
	vst	$vr0, $sp, 552
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_9E9_M_invokeERKSt9_Any_dataOS0_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_9E9_M_invokeERKSt9_Any_dataOS0_Oj)
	st.d	$a0, $sp, 576
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 568
.Ltmp60:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a2, $a0, %pc_lo12(.L.str.4)
	addi.d	$a0, $sp, 584
	addi.d	$a1, $sp, 552
	pcaddu18i	$ra, %call36(_ZL19checkVectorFunctionIfEvSt8functionIFT_PS1_jEES4_PKc)
	jirl	$ra, $ra, 0
.Ltmp61:                                # EH_LABEL
# %bb.23:
	ld.d	$a3, $sp, 568
	beqz	$a3, .LBB0_25
# %bb.24:
.Ltmp69:                                # EH_LABEL
	addi.d	$a0, $sp, 552
	addi.d	$a1, $sp, 552
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp70:                                # EH_LABEL
.LBB0_25:                               # %_ZNSt14_Function_baseD2Ev.exit18
	ld.d	$a3, $sp, 600
	beqz	$a3, .LBB0_27
# %bb.26:
.Ltmp72:                                # EH_LABEL
	addi.d	$a0, $sp, 584
	addi.d	$a1, $sp, 584
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp73:                                # EH_LABEL
.LBB0_27:                               # %_ZNSt14_Function_baseD2Ev.exit20
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 520
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_10E9_M_invokeERKSt9_Any_dataOS0_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_10E9_M_invokeERKSt9_Any_dataOS0_Oj)
	st.d	$a0, $sp, 544
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_10E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_10E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 536
	vst	$vr0, $sp, 488
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_11E9_M_invokeERKSt9_Any_dataOS0_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_11E9_M_invokeERKSt9_Any_dataOS0_Oj)
	st.d	$a0, $sp, 512
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_11E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_11E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 504
.Ltmp75:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a2, $a0, %pc_lo12(.L.str.5)
	addi.d	$a0, $sp, 520
	addi.d	$a1, $sp, 488
	pcaddu18i	$ra, %call36(_ZL19checkVectorFunctionIfEvSt8functionIFT_PS1_jEES4_PKc)
	jirl	$ra, $ra, 0
.Ltmp76:                                # EH_LABEL
# %bb.28:
	ld.d	$a3, $sp, 504
	beqz	$a3, .LBB0_30
# %bb.29:
.Ltmp84:                                # EH_LABEL
	addi.d	$a0, $sp, 488
	addi.d	$a1, $sp, 488
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp85:                                # EH_LABEL
.LBB0_30:                               # %_ZNSt14_Function_baseD2Ev.exit22
	ld.d	$a3, $sp, 536
	beqz	$a3, .LBB0_32
# %bb.31:
.Ltmp87:                                # EH_LABEL
	addi.d	$a0, $sp, 520
	addi.d	$a1, $sp, 520
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp88:                                # EH_LABEL
.LBB0_32:                               # %_ZNSt14_Function_baseD2Ev.exit24
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 456
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_12E9_M_invokeERKSt9_Any_dataOS0_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_12E9_M_invokeERKSt9_Any_dataOS0_Oj)
	st.d	$a0, $sp, 480
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 472
	vst	$vr0, $sp, 424
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_13E9_M_invokeERKSt9_Any_dataOS0_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_13E9_M_invokeERKSt9_Any_dataOS0_Oj)
	st.d	$a0, $sp, 448
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 440
.Ltmp90:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a2, $a0, %pc_lo12(.L.str.6)
	addi.d	$a0, $sp, 456
	addi.d	$a1, $sp, 424
	pcaddu18i	$ra, %call36(_ZL19checkVectorFunctionIfEvSt8functionIFT_PS1_jEES4_PKc)
	jirl	$ra, $ra, 0
.Ltmp91:                                # EH_LABEL
# %bb.33:
	ld.d	$a3, $sp, 440
	beqz	$a3, .LBB0_35
# %bb.34:
.Ltmp99:                                # EH_LABEL
	addi.d	$a0, $sp, 424
	addi.d	$a1, $sp, 424
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp100:                               # EH_LABEL
.LBB0_35:                               # %_ZNSt14_Function_baseD2Ev.exit26
	ld.d	$a3, $sp, 472
	beqz	$a3, .LBB0_37
# %bb.36:
.Ltmp102:                               # EH_LABEL
	addi.d	$a0, $sp, 456
	addi.d	$a1, $sp, 456
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp103:                               # EH_LABEL
.LBB0_37:                               # %_ZNSt14_Function_baseD2Ev.exit28
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 392
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_14E9_M_invokeERKSt9_Any_dataOS0_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_14E9_M_invokeERKSt9_Any_dataOS0_Oj)
	st.d	$a0, $sp, 416
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_14E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_14E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 408
	vst	$vr0, $sp, 360
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_15E9_M_invokeERKSt9_Any_dataOS0_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_15E9_M_invokeERKSt9_Any_dataOS0_Oj)
	st.d	$a0, $sp, 384
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_15E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_15E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 376
.Ltmp105:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a2, $a0, %pc_lo12(.L.str.7)
	addi.d	$a0, $sp, 392
	addi.d	$a1, $sp, 360
	pcaddu18i	$ra, %call36(_ZL19checkVectorFunctionIfEvSt8functionIFT_PS1_jEES4_PKc)
	jirl	$ra, $ra, 0
.Ltmp106:                               # EH_LABEL
# %bb.38:
	ld.d	$a3, $sp, 376
	beqz	$a3, .LBB0_40
# %bb.39:
.Ltmp114:                               # EH_LABEL
	addi.d	$a0, $sp, 360
	addi.d	$a1, $sp, 360
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp115:                               # EH_LABEL
.LBB0_40:                               # %_ZNSt14_Function_baseD2Ev.exit30
	ld.d	$a3, $sp, 408
	beqz	$a3, .LBB0_42
# %bb.41:
.Ltmp117:                               # EH_LABEL
	addi.d	$a0, $sp, 392
	addi.d	$a1, $sp, 392
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp118:                               # EH_LABEL
.LBB0_42:                               # %_ZNSt14_Function_baseD2Ev.exit32
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 328
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_16E9_M_invokeERKSt9_Any_dataOS0_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_16E9_M_invokeERKSt9_Any_dataOS0_Oj)
	st.d	$a0, $sp, 352
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_16E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_16E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 344
	vst	$vr0, $sp, 296
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_17E9_M_invokeERKSt9_Any_dataOS0_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_17E9_M_invokeERKSt9_Any_dataOS0_Oj)
	st.d	$a0, $sp, 320
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_17E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_17E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 312
.Ltmp120:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a2, $a0, %pc_lo12(.L.str.8)
	addi.d	$a0, $sp, 328
	addi.d	$a1, $sp, 296
	pcaddu18i	$ra, %call36(_ZL19checkVectorFunctionIfEvSt8functionIFT_PS1_jEES4_PKc)
	jirl	$ra, $ra, 0
.Ltmp121:                               # EH_LABEL
# %bb.43:
	ld.d	$a3, $sp, 312
	beqz	$a3, .LBB0_45
# %bb.44:
.Ltmp129:                               # EH_LABEL
	addi.d	$a0, $sp, 296
	addi.d	$a1, $sp, 296
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp130:                               # EH_LABEL
.LBB0_45:                               # %_ZNSt14_Function_baseD2Ev.exit34
	ld.d	$a3, $sp, 344
	beqz	$a3, .LBB0_47
# %bb.46:
.Ltmp132:                               # EH_LABEL
	addi.d	$a0, $sp, 328
	addi.d	$a1, $sp, 328
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp133:                               # EH_LABEL
.LBB0_47:                               # %_ZNSt14_Function_baseD2Ev.exit36
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 264
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_18E9_M_invokeERKSt9_Any_dataOS0_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_18E9_M_invokeERKSt9_Any_dataOS0_Oj)
	st.d	$a0, $sp, 288
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_18E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_18E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 280
	vst	$vr0, $sp, 232
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_19E9_M_invokeERKSt9_Any_dataOS0_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_19E9_M_invokeERKSt9_Any_dataOS0_Oj)
	st.d	$a0, $sp, 256
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_19E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_19E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 248
.Ltmp135:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a2, $a0, %pc_lo12(.L.str.9)
	addi.d	$a0, $sp, 264
	addi.d	$a1, $sp, 232
	pcaddu18i	$ra, %call36(_ZL19checkVectorFunctionIfEvSt8functionIFT_PS1_jEES4_PKc)
	jirl	$ra, $ra, 0
.Ltmp136:                               # EH_LABEL
# %bb.48:
	ld.d	$a3, $sp, 248
	beqz	$a3, .LBB0_50
# %bb.49:
.Ltmp144:                               # EH_LABEL
	addi.d	$a0, $sp, 232
	addi.d	$a1, $sp, 232
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp145:                               # EH_LABEL
.LBB0_50:                               # %_ZNSt14_Function_baseD2Ev.exit38
	ld.d	$a3, $sp, 280
	beqz	$a3, .LBB0_52
# %bb.51:
.Ltmp147:                               # EH_LABEL
	addi.d	$a0, $sp, 264
	addi.d	$a1, $sp, 264
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp148:                               # EH_LABEL
.LBB0_52:                               # %_ZNSt14_Function_baseD2Ev.exit40
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 200
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_20E9_M_invokeERKSt9_Any_dataOS0_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_20E9_M_invokeERKSt9_Any_dataOS0_Oj)
	st.d	$a0, $sp, 224
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_20E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_20E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 216
	vst	$vr0, $sp, 168
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_21E9_M_invokeERKSt9_Any_dataOS0_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_21E9_M_invokeERKSt9_Any_dataOS0_Oj)
	st.d	$a0, $sp, 192
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_21E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_21E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 184
.Ltmp150:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a2, $a0, %pc_lo12(.L.str.10)
	addi.d	$a0, $sp, 200
	addi.d	$a1, $sp, 168
	pcaddu18i	$ra, %call36(_ZL19checkVectorFunctionIfEvSt8functionIFT_PS1_jEES4_PKc)
	jirl	$ra, $ra, 0
.Ltmp151:                               # EH_LABEL
# %bb.53:
	ld.d	$a3, $sp, 184
	beqz	$a3, .LBB0_55
# %bb.54:
.Ltmp159:                               # EH_LABEL
	addi.d	$a0, $sp, 168
	addi.d	$a1, $sp, 168
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp160:                               # EH_LABEL
.LBB0_55:                               # %_ZNSt14_Function_baseD2Ev.exit42
	ld.d	$a3, $sp, 216
	beqz	$a3, .LBB0_57
# %bb.56:
.Ltmp162:                               # EH_LABEL
	addi.d	$a0, $sp, 200
	addi.d	$a1, $sp, 200
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp163:                               # EH_LABEL
.LBB0_57:                               # %_ZNSt14_Function_baseD2Ev.exit44
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 136
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_22E9_M_invokeERKSt9_Any_dataOS0_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_22E9_M_invokeERKSt9_Any_dataOS0_Oj)
	st.d	$a0, $sp, 160
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_22E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_22E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 152
	vst	$vr0, $sp, 104
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_23E9_M_invokeERKSt9_Any_dataOS0_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_23E9_M_invokeERKSt9_Any_dataOS0_Oj)
	st.d	$a0, $sp, 128
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_23E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_23E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 120
.Ltmp165:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a2, $a0, %pc_lo12(.L.str.11)
	addi.d	$a0, $sp, 136
	addi.d	$a1, $sp, 104
	pcaddu18i	$ra, %call36(_ZL19checkVectorFunctionIfEvSt8functionIFT_PS1_jEES4_PKc)
	jirl	$ra, $ra, 0
.Ltmp166:                               # EH_LABEL
# %bb.58:
	ld.d	$a3, $sp, 120
	beqz	$a3, .LBB0_60
# %bb.59:
.Ltmp174:                               # EH_LABEL
	addi.d	$a0, $sp, 104
	addi.d	$a1, $sp, 104
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp175:                               # EH_LABEL
.LBB0_60:                               # %_ZNSt14_Function_baseD2Ev.exit46
	ld.d	$a3, $sp, 152
	beqz	$a3, .LBB0_62
# %bb.61:
.Ltmp177:                               # EH_LABEL
	addi.d	$a0, $sp, 136
	addi.d	$a1, $sp, 136
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp178:                               # EH_LABEL
.LBB0_62:                               # %_ZNSt14_Function_baseD2Ev.exit48
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 72
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_24E9_M_invokeERKSt9_Any_dataOS0_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_24E9_M_invokeERKSt9_Any_dataOS0_Oj)
	st.d	$a0, $sp, 96
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_24E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_24E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 88
	vst	$vr0, $sp, 40
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_25E9_M_invokeERKSt9_Any_dataOS0_Oj)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_25E9_M_invokeERKSt9_Any_dataOS0_Oj)
	st.d	$a0, $sp, 64
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_25E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_25E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 56
.Ltmp180:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a2, $a0, %pc_lo12(.L.str.12)
	addi.d	$a0, $sp, 72
	addi.d	$a1, $sp, 40
	pcaddu18i	$ra, %call36(_ZL19checkVectorFunctionIfEvSt8functionIFT_PS1_jEES4_PKc)
	jirl	$ra, $ra, 0
.Ltmp181:                               # EH_LABEL
# %bb.63:
	ld.d	$a3, $sp, 56
	beqz	$a3, .LBB0_65
# %bb.64:
.Ltmp189:                               # EH_LABEL
	addi.d	$a0, $sp, 40
	addi.d	$a1, $sp, 40
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp190:                               # EH_LABEL
.LBB0_65:                               # %_ZNSt14_Function_baseD2Ev.exit50
	ld.d	$a3, $sp, 88
	beqz	$a3, .LBB0_67
# %bb.66:
.Ltmp192:                               # EH_LABEL
	addi.d	$a0, $sp, 72
	addi.d	$a1, $sp, 72
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp193:                               # EH_LABEL
.LBB0_67:                               # %_ZNSt14_Function_baseD2Ev.exit52
	move	$a0, $zero
	addi.d	$sp, $sp, 2032
	addi.d	$sp, $sp, 1824
	ld.d	$fp, $sp, 2016                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	ret
.LBB0_68:
.Ltmp194:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_69:
.Ltmp191:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_70:
.Ltmp179:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_71:
.Ltmp176:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_72:
.Ltmp164:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_73:
.Ltmp161:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_74:
.Ltmp149:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_75:
.Ltmp146:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_76:
.Ltmp134:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_77:
.Ltmp131:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_78:
.Ltmp119:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_79:
.Ltmp116:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_80:
.Ltmp104:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_81:
.Ltmp101:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_82:
.Ltmp89:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_83:
.Ltmp86:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_84:
.Ltmp74:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_85:
.Ltmp71:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_86:
.Ltmp59:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_87:
.Ltmp56:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_88:
.Ltmp44:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_89:
.Ltmp41:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_90:
.Ltmp29:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_91:
.Ltmp26:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_92:
.Ltmp14:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_93:
.Ltmp11:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_94:
.Ltmp182:                               # EH_LABEL
	ld.d	$a3, $sp, 56
	move	$fp, $a0
	beqz	$a3, .LBB0_96
# %bb.95:
.Ltmp183:                               # EH_LABEL
	addi.d	$a0, $sp, 40
	addi.d	$a1, $sp, 40
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp184:                               # EH_LABEL
.LBB0_96:                               # %_ZNSt14_Function_baseD2Ev.exit102
	ld.d	$a3, $sp, 88
	beqz	$a3, .LBB0_170
# %bb.97:
.Ltmp186:                               # EH_LABEL
	addi.d	$a0, $sp, 72
	addi.d	$a1, $sp, 72
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp187:                               # EH_LABEL
	b	.LBB0_170
.LBB0_98:
.Ltmp188:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_99:
.Ltmp185:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_100:
.Ltmp167:                               # EH_LABEL
	ld.d	$a3, $sp, 120
	move	$fp, $a0
	beqz	$a3, .LBB0_102
# %bb.101:
.Ltmp168:                               # EH_LABEL
	addi.d	$a0, $sp, 104
	addi.d	$a1, $sp, 104
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp169:                               # EH_LABEL
.LBB0_102:                              # %_ZNSt14_Function_baseD2Ev.exit98
	ld.d	$a3, $sp, 152
	beqz	$a3, .LBB0_170
# %bb.103:
.Ltmp171:                               # EH_LABEL
	addi.d	$a0, $sp, 136
	addi.d	$a1, $sp, 136
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp172:                               # EH_LABEL
	b	.LBB0_170
.LBB0_104:
.Ltmp173:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_105:
.Ltmp170:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_106:
.Ltmp152:                               # EH_LABEL
	ld.d	$a3, $sp, 184
	move	$fp, $a0
	beqz	$a3, .LBB0_108
# %bb.107:
.Ltmp153:                               # EH_LABEL
	addi.d	$a0, $sp, 168
	addi.d	$a1, $sp, 168
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp154:                               # EH_LABEL
.LBB0_108:                              # %_ZNSt14_Function_baseD2Ev.exit94
	ld.d	$a3, $sp, 216
	beqz	$a3, .LBB0_170
# %bb.109:
.Ltmp156:                               # EH_LABEL
	addi.d	$a0, $sp, 200
	addi.d	$a1, $sp, 200
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp157:                               # EH_LABEL
	b	.LBB0_170
.LBB0_110:
.Ltmp158:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_111:
.Ltmp155:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_112:
.Ltmp137:                               # EH_LABEL
	ld.d	$a3, $sp, 248
	move	$fp, $a0
	beqz	$a3, .LBB0_114
# %bb.113:
.Ltmp138:                               # EH_LABEL
	addi.d	$a0, $sp, 232
	addi.d	$a1, $sp, 232
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp139:                               # EH_LABEL
.LBB0_114:                              # %_ZNSt14_Function_baseD2Ev.exit90
	ld.d	$a3, $sp, 280
	beqz	$a3, .LBB0_170
# %bb.115:
.Ltmp141:                               # EH_LABEL
	addi.d	$a0, $sp, 264
	addi.d	$a1, $sp, 264
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp142:                               # EH_LABEL
	b	.LBB0_170
.LBB0_116:
.Ltmp143:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_117:
.Ltmp140:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_118:
.Ltmp122:                               # EH_LABEL
	ld.d	$a3, $sp, 312
	move	$fp, $a0
	beqz	$a3, .LBB0_120
# %bb.119:
.Ltmp123:                               # EH_LABEL
	addi.d	$a0, $sp, 296
	addi.d	$a1, $sp, 296
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp124:                               # EH_LABEL
.LBB0_120:                              # %_ZNSt14_Function_baseD2Ev.exit86
	ld.d	$a3, $sp, 344
	beqz	$a3, .LBB0_170
# %bb.121:
.Ltmp126:                               # EH_LABEL
	addi.d	$a0, $sp, 328
	addi.d	$a1, $sp, 328
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp127:                               # EH_LABEL
	b	.LBB0_170
.LBB0_122:
.Ltmp128:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_123:
.Ltmp125:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_124:
.Ltmp107:                               # EH_LABEL
	ld.d	$a3, $sp, 376
	move	$fp, $a0
	beqz	$a3, .LBB0_126
# %bb.125:
.Ltmp108:                               # EH_LABEL
	addi.d	$a0, $sp, 360
	addi.d	$a1, $sp, 360
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp109:                               # EH_LABEL
.LBB0_126:                              # %_ZNSt14_Function_baseD2Ev.exit82
	ld.d	$a3, $sp, 408
	beqz	$a3, .LBB0_170
# %bb.127:
.Ltmp111:                               # EH_LABEL
	addi.d	$a0, $sp, 392
	addi.d	$a1, $sp, 392
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp112:                               # EH_LABEL
	b	.LBB0_170
.LBB0_128:
.Ltmp113:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_129:
.Ltmp110:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_130:
.Ltmp92:                                # EH_LABEL
	ld.d	$a3, $sp, 440
	move	$fp, $a0
	beqz	$a3, .LBB0_132
# %bb.131:
.Ltmp93:                                # EH_LABEL
	addi.d	$a0, $sp, 424
	addi.d	$a1, $sp, 424
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp94:                                # EH_LABEL
.LBB0_132:                              # %_ZNSt14_Function_baseD2Ev.exit78
	ld.d	$a3, $sp, 472
	beqz	$a3, .LBB0_170
# %bb.133:
.Ltmp96:                                # EH_LABEL
	addi.d	$a0, $sp, 456
	addi.d	$a1, $sp, 456
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp97:                                # EH_LABEL
	b	.LBB0_170
.LBB0_134:
.Ltmp98:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_135:
.Ltmp95:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_136:
.Ltmp77:                                # EH_LABEL
	ld.d	$a3, $sp, 504
	move	$fp, $a0
	beqz	$a3, .LBB0_138
# %bb.137:
.Ltmp78:                                # EH_LABEL
	addi.d	$a0, $sp, 488
	addi.d	$a1, $sp, 488
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp79:                                # EH_LABEL
.LBB0_138:                              # %_ZNSt14_Function_baseD2Ev.exit74
	ld.d	$a3, $sp, 536
	beqz	$a3, .LBB0_170
# %bb.139:
.Ltmp81:                                # EH_LABEL
	addi.d	$a0, $sp, 520
	addi.d	$a1, $sp, 520
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp82:                                # EH_LABEL
	b	.LBB0_170
.LBB0_140:
.Ltmp83:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_141:
.Ltmp80:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_142:
.Ltmp62:                                # EH_LABEL
	ld.d	$a3, $sp, 568
	move	$fp, $a0
	beqz	$a3, .LBB0_144
# %bb.143:
.Ltmp63:                                # EH_LABEL
	addi.d	$a0, $sp, 552
	addi.d	$a1, $sp, 552
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp64:                                # EH_LABEL
.LBB0_144:                              # %_ZNSt14_Function_baseD2Ev.exit70
	ld.d	$a3, $sp, 600
	beqz	$a3, .LBB0_170
# %bb.145:
.Ltmp66:                                # EH_LABEL
	addi.d	$a0, $sp, 584
	addi.d	$a1, $sp, 584
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp67:                                # EH_LABEL
	b	.LBB0_170
.LBB0_146:
.Ltmp68:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_147:
.Ltmp65:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_148:
.Ltmp47:                                # EH_LABEL
	ld.d	$a3, $sp, 632
	move	$fp, $a0
	beqz	$a3, .LBB0_150
# %bb.149:
.Ltmp48:                                # EH_LABEL
	addi.d	$a0, $sp, 616
	addi.d	$a1, $sp, 616
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp49:                                # EH_LABEL
.LBB0_150:                              # %_ZNSt14_Function_baseD2Ev.exit66
	ld.d	$a3, $sp, 664
	beqz	$a3, .LBB0_170
# %bb.151:
.Ltmp51:                                # EH_LABEL
	addi.d	$a0, $sp, 648
	addi.d	$a1, $sp, 648
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp52:                                # EH_LABEL
	b	.LBB0_170
.LBB0_152:
.Ltmp53:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_153:
.Ltmp50:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_154:
.Ltmp32:                                # EH_LABEL
	ld.d	$a3, $sp, 696
	move	$fp, $a0
	beqz	$a3, .LBB0_156
# %bb.155:
.Ltmp33:                                # EH_LABEL
	addi.d	$a0, $sp, 680
	addi.d	$a1, $sp, 680
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp34:                                # EH_LABEL
.LBB0_156:                              # %_ZNSt14_Function_baseD2Ev.exit62
	ld.d	$a3, $sp, 728
	beqz	$a3, .LBB0_170
# %bb.157:
.Ltmp36:                                # EH_LABEL
	addi.d	$a0, $sp, 712
	addi.d	$a1, $sp, 712
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp37:                                # EH_LABEL
	b	.LBB0_170
.LBB0_158:
.Ltmp38:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_159:
.Ltmp35:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_160:
.Ltmp17:                                # EH_LABEL
	ld.d	$a3, $sp, 760
	move	$fp, $a0
	beqz	$a3, .LBB0_162
# %bb.161:
.Ltmp18:                                # EH_LABEL
	addi.d	$a0, $sp, 744
	addi.d	$a1, $sp, 744
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp19:                                # EH_LABEL
.LBB0_162:                              # %_ZNSt14_Function_baseD2Ev.exit58
	ld.d	$a3, $sp, 792
	beqz	$a3, .LBB0_170
# %bb.163:
.Ltmp21:                                # EH_LABEL
	addi.d	$a0, $sp, 776
	addi.d	$a1, $sp, 776
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp22:                                # EH_LABEL
	b	.LBB0_170
.LBB0_164:
.Ltmp23:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_165:
.Ltmp20:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_166:
.Ltmp2:                                 # EH_LABEL
	ld.d	$a3, $sp, 824
	move	$fp, $a0
	beqz	$a3, .LBB0_168
# %bb.167:
.Ltmp3:                                 # EH_LABEL
	addi.d	$a0, $sp, 808
	addi.d	$a1, $sp, 808
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp4:                                 # EH_LABEL
.LBB0_168:                              # %_ZNSt14_Function_baseD2Ev.exit54
	ld.d	$a3, $sp, 856
	beqz	$a3, .LBB0_170
# %bb.169:
.Ltmp6:                                 # EH_LABEL
	addi.d	$a0, $sp, 840
	addi.d	$a1, $sp, 840
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp7:                                 # EH_LABEL
.LBB0_170:                              # %_ZNSt14_Function_baseD2Ev.exit56
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB0_171:
.Ltmp8:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_172:
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
	.uleb128 .Ltmp193-.Lfunc_begin0         # >> Call Site 41 <<
	.uleb128 .Ltmp183-.Ltmp193              #   Call between .Ltmp193 and .Ltmp183
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp183-.Lfunc_begin0         # >> Call Site 42 <<
	.uleb128 .Ltmp184-.Ltmp183              #   Call between .Ltmp183 and .Ltmp184
	.uleb128 .Ltmp185-.Lfunc_begin0         #     jumps to .Ltmp185
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp186-.Lfunc_begin0         # >> Call Site 43 <<
	.uleb128 .Ltmp187-.Ltmp186              #   Call between .Ltmp186 and .Ltmp187
	.uleb128 .Ltmp188-.Lfunc_begin0         #     jumps to .Ltmp188
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp187-.Lfunc_begin0         # >> Call Site 44 <<
	.uleb128 .Ltmp168-.Ltmp187              #   Call between .Ltmp187 and .Ltmp168
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp168-.Lfunc_begin0         # >> Call Site 45 <<
	.uleb128 .Ltmp169-.Ltmp168              #   Call between .Ltmp168 and .Ltmp169
	.uleb128 .Ltmp170-.Lfunc_begin0         #     jumps to .Ltmp170
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp171-.Lfunc_begin0         # >> Call Site 46 <<
	.uleb128 .Ltmp172-.Ltmp171              #   Call between .Ltmp171 and .Ltmp172
	.uleb128 .Ltmp173-.Lfunc_begin0         #     jumps to .Ltmp173
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp172-.Lfunc_begin0         # >> Call Site 47 <<
	.uleb128 .Ltmp153-.Ltmp172              #   Call between .Ltmp172 and .Ltmp153
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp153-.Lfunc_begin0         # >> Call Site 48 <<
	.uleb128 .Ltmp154-.Ltmp153              #   Call between .Ltmp153 and .Ltmp154
	.uleb128 .Ltmp155-.Lfunc_begin0         #     jumps to .Ltmp155
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp156-.Lfunc_begin0         # >> Call Site 49 <<
	.uleb128 .Ltmp157-.Ltmp156              #   Call between .Ltmp156 and .Ltmp157
	.uleb128 .Ltmp158-.Lfunc_begin0         #     jumps to .Ltmp158
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp157-.Lfunc_begin0         # >> Call Site 50 <<
	.uleb128 .Ltmp138-.Ltmp157              #   Call between .Ltmp157 and .Ltmp138
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp138-.Lfunc_begin0         # >> Call Site 51 <<
	.uleb128 .Ltmp139-.Ltmp138              #   Call between .Ltmp138 and .Ltmp139
	.uleb128 .Ltmp140-.Lfunc_begin0         #     jumps to .Ltmp140
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp141-.Lfunc_begin0         # >> Call Site 52 <<
	.uleb128 .Ltmp142-.Ltmp141              #   Call between .Ltmp141 and .Ltmp142
	.uleb128 .Ltmp143-.Lfunc_begin0         #     jumps to .Ltmp143
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp142-.Lfunc_begin0         # >> Call Site 53 <<
	.uleb128 .Ltmp123-.Ltmp142              #   Call between .Ltmp142 and .Ltmp123
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp123-.Lfunc_begin0         # >> Call Site 54 <<
	.uleb128 .Ltmp124-.Ltmp123              #   Call between .Ltmp123 and .Ltmp124
	.uleb128 .Ltmp125-.Lfunc_begin0         #     jumps to .Ltmp125
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp126-.Lfunc_begin0         # >> Call Site 55 <<
	.uleb128 .Ltmp127-.Ltmp126              #   Call between .Ltmp126 and .Ltmp127
	.uleb128 .Ltmp128-.Lfunc_begin0         #     jumps to .Ltmp128
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp127-.Lfunc_begin0         # >> Call Site 56 <<
	.uleb128 .Ltmp108-.Ltmp127              #   Call between .Ltmp127 and .Ltmp108
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp108-.Lfunc_begin0         # >> Call Site 57 <<
	.uleb128 .Ltmp109-.Ltmp108              #   Call between .Ltmp108 and .Ltmp109
	.uleb128 .Ltmp110-.Lfunc_begin0         #     jumps to .Ltmp110
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp111-.Lfunc_begin0         # >> Call Site 58 <<
	.uleb128 .Ltmp112-.Ltmp111              #   Call between .Ltmp111 and .Ltmp112
	.uleb128 .Ltmp113-.Lfunc_begin0         #     jumps to .Ltmp113
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp112-.Lfunc_begin0         # >> Call Site 59 <<
	.uleb128 .Ltmp93-.Ltmp112               #   Call between .Ltmp112 and .Ltmp93
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp93-.Lfunc_begin0          # >> Call Site 60 <<
	.uleb128 .Ltmp94-.Ltmp93                #   Call between .Ltmp93 and .Ltmp94
	.uleb128 .Ltmp95-.Lfunc_begin0          #     jumps to .Ltmp95
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp96-.Lfunc_begin0          # >> Call Site 61 <<
	.uleb128 .Ltmp97-.Ltmp96                #   Call between .Ltmp96 and .Ltmp97
	.uleb128 .Ltmp98-.Lfunc_begin0          #     jumps to .Ltmp98
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp97-.Lfunc_begin0          # >> Call Site 62 <<
	.uleb128 .Ltmp78-.Ltmp97                #   Call between .Ltmp97 and .Ltmp78
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp78-.Lfunc_begin0          # >> Call Site 63 <<
	.uleb128 .Ltmp79-.Ltmp78                #   Call between .Ltmp78 and .Ltmp79
	.uleb128 .Ltmp80-.Lfunc_begin0          #     jumps to .Ltmp80
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp81-.Lfunc_begin0          # >> Call Site 64 <<
	.uleb128 .Ltmp82-.Ltmp81                #   Call between .Ltmp81 and .Ltmp82
	.uleb128 .Ltmp83-.Lfunc_begin0          #     jumps to .Ltmp83
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp82-.Lfunc_begin0          # >> Call Site 65 <<
	.uleb128 .Ltmp63-.Ltmp82                #   Call between .Ltmp82 and .Ltmp63
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp63-.Lfunc_begin0          # >> Call Site 66 <<
	.uleb128 .Ltmp64-.Ltmp63                #   Call between .Ltmp63 and .Ltmp64
	.uleb128 .Ltmp65-.Lfunc_begin0          #     jumps to .Ltmp65
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp66-.Lfunc_begin0          # >> Call Site 67 <<
	.uleb128 .Ltmp67-.Ltmp66                #   Call between .Ltmp66 and .Ltmp67
	.uleb128 .Ltmp68-.Lfunc_begin0          #     jumps to .Ltmp68
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp67-.Lfunc_begin0          # >> Call Site 68 <<
	.uleb128 .Ltmp48-.Ltmp67                #   Call between .Ltmp67 and .Ltmp48
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp48-.Lfunc_begin0          # >> Call Site 69 <<
	.uleb128 .Ltmp49-.Ltmp48                #   Call between .Ltmp48 and .Ltmp49
	.uleb128 .Ltmp50-.Lfunc_begin0          #     jumps to .Ltmp50
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp51-.Lfunc_begin0          # >> Call Site 70 <<
	.uleb128 .Ltmp52-.Ltmp51                #   Call between .Ltmp51 and .Ltmp52
	.uleb128 .Ltmp53-.Lfunc_begin0          #     jumps to .Ltmp53
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp52-.Lfunc_begin0          # >> Call Site 71 <<
	.uleb128 .Ltmp33-.Ltmp52                #   Call between .Ltmp52 and .Ltmp33
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp33-.Lfunc_begin0          # >> Call Site 72 <<
	.uleb128 .Ltmp34-.Ltmp33                #   Call between .Ltmp33 and .Ltmp34
	.uleb128 .Ltmp35-.Lfunc_begin0          #     jumps to .Ltmp35
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp36-.Lfunc_begin0          # >> Call Site 73 <<
	.uleb128 .Ltmp37-.Ltmp36                #   Call between .Ltmp36 and .Ltmp37
	.uleb128 .Ltmp38-.Lfunc_begin0          #     jumps to .Ltmp38
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp37-.Lfunc_begin0          # >> Call Site 74 <<
	.uleb128 .Ltmp18-.Ltmp37                #   Call between .Ltmp37 and .Ltmp18
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp18-.Lfunc_begin0          # >> Call Site 75 <<
	.uleb128 .Ltmp19-.Ltmp18                #   Call between .Ltmp18 and .Ltmp19
	.uleb128 .Ltmp20-.Lfunc_begin0          #     jumps to .Ltmp20
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp21-.Lfunc_begin0          # >> Call Site 76 <<
	.uleb128 .Ltmp22-.Ltmp21                #   Call between .Ltmp21 and .Ltmp22
	.uleb128 .Ltmp23-.Lfunc_begin0          #     jumps to .Ltmp23
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp22-.Lfunc_begin0          # >> Call Site 77 <<
	.uleb128 .Ltmp3-.Ltmp22                 #   Call between .Ltmp22 and .Ltmp3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp3-.Lfunc_begin0           # >> Call Site 78 <<
	.uleb128 .Ltmp4-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp4
	.uleb128 .Ltmp5-.Lfunc_begin0           #     jumps to .Ltmp5
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp6-.Lfunc_begin0           # >> Call Site 79 <<
	.uleb128 .Ltmp7-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp7
	.uleb128 .Ltmp8-.Lfunc_begin0           #     jumps to .Ltmp8
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp7-.Lfunc_begin0           # >> Call Site 80 <<
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
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZL19checkVectorFunctionIfEvSt8functionIFT_PS1_jEES4_PKc
.LCPI1_0:
	.word	0x4f800000                      # float 4.2949673E+9
.LCPI1_1:
	.word	0x00800000                      # float 1.17549435E-38
.LCPI1_2:
	.word	0x7f7fffff                      # float 3.40282347E+38
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI1_3:
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
.LCPI1_4:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.text
	.p2align	5
	.type	_ZL19checkVectorFunctionIfEvSt8functionIFT_PS1_jEES4_PKc,@function
_ZL19checkVectorFunctionIfEvSt8functionIFT_PS1_jEES4_PKc: # @_ZL19checkVectorFunctionIfEvSt8functionIFT_PS1_jEES4_PKc
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception1
# %bb.0:
	addi.d	$sp, $sp, -1216
	.cfi_def_cfa_offset 1216
	st.d	$ra, $sp, 1208                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1200                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1192                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1184                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1176                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1168                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1160                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1152                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1144                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1136                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1128                  # 8-byte Folded Spill
	fst.d	$fs0, $sp, 1120                 # 8-byte Folded Spill
	fst.d	$fs1, $sp, 1112                 # 8-byte Folded Spill
	fst.d	$fs2, $sp, 1104                 # 8-byte Folded Spill
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
	move	$fp, $a2
	st.d	$a1, $sp, 152                   # 8-byte Folded Spill
	move	$s1, $a0
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$s2, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a1, $a0, %pc_lo12(.L.str.13)
	ori	$a2, $zero, 9
	move	$a0, $s2
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
	ld.d	$a0, $s2, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s2, $a0
	ld.w	$a1, $a0, 32
	ori	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate)
	jirl	$ra, $ra, 0
.LBB1_3:                                # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a1, %pc_hi20(.L.str.14)
	addi.d	$a1, $a1, %pc_lo12(.L.str.14)
	ori	$a2, $zero, 1
	ori	$fp, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	lu12i.w	$s0, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	ori	$a0, $zero, 0
	lu32i.d	$a0, -65536
	lu52i.d	$a1, $a0, 1025
	move	$a0, $zero
	pcaddu18i	$ra, %call36(logl)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	move	$s4, $a1
	lu52i.d	$a1, $zero, 1024
	move	$a0, $zero
	pcaddu18i	$ra, %call36(logl)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	move	$a3, $a1
	move	$a0, $s3
	move	$a1, $s4
	pcaddu18i	$ra, %call36(__divtf3)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(__fixunstfdi)
	jirl	$ra, $ra, 0
	addi.d	$a1, $a0, 23
	div.du	$a0, $a1, $a0
	sltu	$a1, $fp, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $fp, $a1
	or	$a5, $a0, $a1
	pcalau12i	$a0, %pc_hi20(_ZL3rng)
	addi.d	$s6, $a0, %pc_lo12(_ZL3rng)
	move	$a6, $zero
	ldptr.d	$s2, $s6, 4992
	movgr2fr.w	$fs0, $zero
	ori	$a7, $zero, 624
	lu12i.w	$a0, -524288
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	vreplgr2vr.d	$vr8, $a0
	lu12i.w	$a0, 524287
	ori	$t0, $a0, 4094
	vreplgr2vr.d	$vr9, $t0
	ori	$s3, $zero, 3176
	ori	$s5, $zero, 3192
	vrepli.d	$vr10, 1
	vrepli.b	$vr11, -1
	lu12i.w	$a0, -421749
	ori	$s7, $a0, 223
	lu32i.d	$s7, 0
	vreplgr2vr.d	$vr12, $s7
	ori	$s4, $zero, 1792
	lu12i.w	$a0, -1
	ori	$t1, $a0, 928
	ori	$s8, $s0, 896
	ori	$fp, $zero, 3168
	ori	$s0, $s0, 888
	lu12i.w	$a0, -404795
	ori	$t2, $a0, 1664
	lu32i.d	$t2, 0
	lu12i.w	$t3, -66464
	pcalau12i	$a0, %pc_hi20(.LCPI1_0)
	fld.s	$fs1, $a0, %pc_lo12(.LCPI1_0)
	lu32i.d	$t3, 0
	vldi	$vr13, -1168
	ori	$t4, $zero, 1024
	.p2align	4, , 16
.LBB1_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_6 Depth 2
                                        #       Child Loop BB1_8 Depth 3
                                        #       Child Loop BB1_10 Depth 3
	vldi	$vr0, -1168
	move	$a0, $a5
	fmov.s	$fa1, $fs0
	b	.LBB1_6
	.p2align	4, , 16
.LBB1_5:                                # %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit.i
                                        #   in Loop: Header=BB1_6 Depth=2
	slli.d	$a1, $s2, 3
	addi.d	$s2, $s2, 1
	stptr.d	$s2, $s6, 4992
	ldx.d	$a1, $s6, $a1
	bstrpick.d	$a2, $a1, 42, 11
	xor	$a1, $a2, $a1
	slli.d	$a2, $a1, 7
	and	$a2, $a2, $t2
	xor	$a1, $a2, $a1
	slli.d	$a2, $a1, 15
	and	$a2, $a2, $t3
	xor	$a1, $a2, $a1
	srli.d	$a2, $a1, 18
	xor	$a1, $a2, $a1
	srli.d	$a2, $a1, 1
	andi	$a3, $a1, 1
	or	$a2, $a3, $a2
	movgr2fr.d	$fa2, $a2
	ffint.s.l	$fa2, $fa2
	fadd.s	$fa2, $fa2, $fa2
	slti	$a2, $a1, 0
	movgr2fr.d	$fa3, $a1
	ffint.s.l	$fa3, $fa3
	movgr2cf	$fcc0, $a2
	fsel	$fa2, $fa3, $fa2, $fcc0
	fmadd.s	$fa1, $fa2, $fa0, $fa1
	addi.d	$a0, $a0, -1
	fmul.s	$fa0, $fa0, $fs1
	beqz	$a0, .LBB1_12
.LBB1_6:                                # %select.unfold.i.i.i.i.i
                                        #   Parent Loop BB1_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_8 Depth 3
                                        #       Child Loop BB1_10 Depth 3
	bltu	$s2, $a7, .LBB1_5
# %bb.7:                                # %vector.ph1229
                                        #   in Loop: Header=BB1_6 Depth=2
	ld.d	$a2, $s6, 0
	move	$a1, $zero
	vinsgr2vr.d	$vr2, $a2, 1
	.p2align	4, , 16
.LBB1_8:                                # %vector.body1230
                                        #   Parent Loop BB1_4 Depth=1
                                        #     Parent Loop BB1_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a2, $s6, $a1
	vld	$vr3, $a2, 8
	vori.b	$vr4, $vr2, 0
	vld	$vr2, $a2, 24
	vshuf4i.d	$vr4, $vr3, 9
	vand.v	$vr4, $vr4, $vr8
	vand.v	$vr5, $vr3, $vr9
	vand.v	$vr6, $vr3, $vr10
	vshuf4i.d	$vr3, $vr2, 9
	vand.v	$vr3, $vr3, $vr8
	vand.v	$vr7, $vr2, $vr9
	vor.v	$vr4, $vr5, $vr4
	vor.v	$vr3, $vr7, $vr3
	vldx	$vr5, $a2, $s3
	vldx	$vr7, $a2, $s5
	vsrli.d	$vr4, $vr4, 1
	vsrli.d	$vr3, $vr3, 1
	vxor.v	$vr4, $vr4, $vr5
	vxor.v	$vr3, $vr3, $vr7
	vand.v	$vr5, $vr2, $vr10
	vseqi.d	$vr6, $vr6, 0
	vxor.v	$vr6, $vr6, $vr11
	vand.v	$vr6, $vr6, $vr12
	vseqi.d	$vr5, $vr5, 0
	vxor.v	$vr5, $vr5, $vr11
	vand.v	$vr5, $vr5, $vr12
	vxor.v	$vr4, $vr4, $vr6
	vxor.v	$vr3, $vr3, $vr5
	vstx	$vr4, $s6, $a1
	addi.d	$a1, $a1, 32
	vst	$vr3, $a2, 16
	bne	$a1, $s4, .LBB1_8
# %bb.9:                                # %vector.ph
                                        #   in Loop: Header=BB1_6 Depth=2
	ld.d	$a1, $s6, 1800
	vpickve2gr.d	$a2, $vr2, 1
	ldptr.d	$a3, $s6, 4968
	and	$a4, $a1, $t0
	bstrins.d	$a2, $a4, 30, 0
	srli.d	$a2, $a2, 1
	xor	$a2, $a2, $a3
	andi	$a3, $a1, 1
	sub.d	$a3, $zero, $a3
	and	$a3, $a3, $s7
	ld.d	$a4, $s6, 1808
	xor	$a2, $a2, $a3
	st.d	$a2, $s6, 1792
	ldptr.d	$a2, $s6, 4976
	and	$a3, $a4, $t0
	bstrins.d	$a1, $a3, 30, 0
	srli.d	$a1, $a1, 1
	xor	$a1, $a1, $a2
	andi	$a2, $a4, 1
	sub.d	$a2, $zero, $a2
	and	$a2, $a2, $s7
	ld.d	$a3, $s6, 1816
	xor	$a1, $a1, $a2
	st.d	$a1, $s6, 1800
	ldptr.d	$a1, $s6, 4984
	and	$a2, $a3, $t0
	bstrins.d	$a4, $a2, 30, 0
	srli.d	$a2, $a4, 1
	xor	$a1, $a2, $a1
	andi	$a2, $a3, 1
	sub.d	$a2, $zero, $a2
	and	$a2, $a2, $s7
	xor	$a1, $a1, $a2
	st.d	$a1, $s6, 1808
	vinsgr2vr.d	$vr2, $a3, 1
	move	$a1, $t1
	.p2align	4, , 16
.LBB1_10:                               # %vector.body
                                        #   Parent Loop BB1_4 Depth=1
                                        #     Parent Loop BB1_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a2, $s6, $a1
	vldx	$vr3, $a2, $s8
	vshuf4i.d	$vr2, $vr3, 9
	vand.v	$vr2, $vr2, $vr8
	vldx	$vr4, $a2, $fp
	vand.v	$vr5, $vr3, $vr9
	vor.v	$vr2, $vr5, $vr2
	vsrli.d	$vr2, $vr2, 1
	vxor.v	$vr2, $vr2, $vr4
	vand.v	$vr4, $vr3, $vr10
	vseqi.d	$vr4, $vr4, 0
	vxor.v	$vr4, $vr4, $vr11
	vand.v	$vr4, $vr4, $vr12
	vxor.v	$vr2, $vr2, $vr4
	addi.d	$a1, $a1, 16
	vstx	$vr2, $a2, $s0
	vori.b	$vr2, $vr3, 0
	bnez	$a1, .LBB1_10
# %bb.11:                               # %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i.i
                                        #   in Loop: Header=BB1_6 Depth=2
	ld.d	$a1, $s6, 0
	move	$s2, $zero
	ldptr.d	$a2, $s6, 4984
	bstrpick.d	$a3, $a1, 30, 1
	ldptr.d	$a4, $s6, 3168
	slli.d	$a3, $a3, 1
	bstrins.d	$a2, $a3, 30, 0
	srli.d	$a2, $a2, 1
	xor	$a2, $a2, $a4
	andi	$a1, $a1, 1
	sub.d	$a1, $zero, $a1
	and	$a1, $a1, $s7
	xor	$a1, $a2, $a1
	stptr.d	$a1, $s6, 4984
	b	.LBB1_5
	.p2align	4, , 16
.LBB1_12:                               #   in Loop: Header=BB1_4 Depth=1
	fdiv.s	$fa0, $fa1, $fa0
	fcmp.cult.s	$fcc0, $fa0, $ft5
	bceqz	$fcc0, .LBB1_14
.LBB1_13:                               # %_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_.exit.i
                                        #   in Loop: Header=BB1_4 Depth=1
	pcalau12i	$a0, %pc_hi20(.LCPI1_1)
	fld.s	$fa1, $a0, %pc_lo12(.LCPI1_1)
	pcalau12i	$a0, %pc_hi20(.LCPI1_2)
	fld.s	$fa2, $a0, %pc_lo12(.LCPI1_2)
	fmadd.s	$fa0, $fa0, $fa2, $fa1
	slli.d	$a0, $a6, 2
	addi.d	$a6, $a6, 1
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	fstx.s	$fa0, $a1, $a0
	bne	$a6, $t4, .LBB1_4
	b	.LBB1_15
.LBB1_14:                               #   in Loop: Header=BB1_4 Depth=1
	vldi	$vr0, -1168
	fmov.s	$fa1, $fs0
	st.d	$a5, $sp, 160                   # 8-byte Folded Spill
	st.d	$a6, $sp, 128                   # 8-byte Folded Spill
	vst	$vr8, $sp, 112                  # 16-byte Folded Spill
	st.d	$t0, $sp, 104                   # 8-byte Folded Spill
	vst	$vr9, $sp, 80                   # 16-byte Folded Spill
	vst	$vr10, $sp, 64                  # 16-byte Folded Spill
	vst	$vr11, $sp, 48                  # 16-byte Folded Spill
	vst	$vr12, $sp, 32                  # 16-byte Folded Spill
	st.d	$t1, $sp, 24                    # 8-byte Folded Spill
	st.d	$t2, $sp, 16                    # 8-byte Folded Spill
	st.d	$t3, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(nextafterf)
	jirl	$ra, $ra, 0
	ori	$t4, $zero, 1024
	vldi	$vr13, -1168
	ld.d	$t3, $sp, 8                     # 8-byte Folded Reload
	ld.d	$t2, $sp, 16                    # 8-byte Folded Reload
	ld.d	$t1, $sp, 24                    # 8-byte Folded Reload
	vld	$vr12, $sp, 32                  # 16-byte Folded Reload
	vld	$vr11, $sp, 48                  # 16-byte Folded Reload
	vld	$vr10, $sp, 64                  # 16-byte Folded Reload
	vld	$vr9, $sp, 80                   # 16-byte Folded Reload
	ld.d	$t0, $sp, 104                   # 8-byte Folded Reload
	vld	$vr8, $sp, 112                  # 16-byte Folded Reload
	ori	$a7, $zero, 624
	ld.d	$a6, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 160                   # 8-byte Folded Reload
	b	.LBB1_13
.LBB1_15:
	ld.d	$fp, $sp, 184                   # 8-byte Folded Reload
	lu12i.w	$s2, 1
	add.d	$s3, $fp, $s2
.Ltmp195:                               # EH_LABEL
	ori	$a2, $zero, 20
	move	$a0, $fp
	move	$a1, $s3
	move	$a3, $zero
	pcaddu18i	$ra, %call36(_ZSt16__introsort_loopIPflN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_)
	jirl	$ra, $ra, 0
.Ltmp196:                               # EH_LABEL
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
# %bb.16:                               # %.noexc
.Ltmp197:                               # EH_LABEL
	move	$a0, $fp
	move	$a1, $s3
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZSt22__final_insertion_sortIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_)
	jirl	$ra, $ra, 0
.Ltmp198:                               # EH_LABEL
# %bb.17:                               # %_ZSt4sortIPfEvT_S1_.exit
	ld.d	$a3, $s1, 16
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 1072
	vst	$vr0, $sp, 160                  # 16-byte Folded Spill
	vst	$vr0, $sp, 1056
	lu12i.w	$s3, -1
	beqz	$a3, .LBB1_20
# %bb.18:
.Ltmp200:                               # EH_LABEL
	addi.d	$a0, $sp, 1056
	ori	$a2, $zero, 2
	move	$a1, $s1
	jirl	$ra, $a3, 0
.Ltmp201:                               # EH_LABEL
# %bb.19:
	vld	$vr0, $s1, 16
	vst	$vr0, $sp, 1072
.LBB1_20:                               # %_ZNSt8functionIFfPfjEEC2ERKS2_.exit
	ld.d	$a3, $s0, 16
	vld	$vr0, $sp, 160                  # 16-byte Folded Reload
	vst	$vr0, $sp, 1040
	vst	$vr0, $sp, 1024
	beqz	$a3, .LBB1_23
# %bb.21:
.Ltmp206:                               # EH_LABEL
	addi.d	$a0, $sp, 1024
	ori	$a2, $zero, 2
	move	$a1, $s0
	jirl	$ra, $a3, 0
.Ltmp207:                               # EH_LABEL
# %bb.22:
	vld	$vr0, $s0, 16
	vst	$vr0, $sp, 1040
.LBB1_23:                               # %_ZNSt8functionIFfPfjEEC2ERKS2_.exit220
.Ltmp212:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a3, $a0, %pc_lo12(.L.str.15)
	addi.d	$a0, $sp, 1056
	addi.d	$a1, $sp, 1024
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZL5checkIfEvSt8functionIFT_PS1_jEES4_PfjPKc)
	jirl	$ra, $ra, 0
.Ltmp213:                               # EH_LABEL
# %bb.24:
	ld.d	$a3, $sp, 1040
	beqz	$a3, .LBB1_26
# %bb.25:
.Ltmp221:                               # EH_LABEL
	addi.d	$a0, $sp, 1024
	addi.d	$a1, $sp, 1024
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp222:                               # EH_LABEL
.LBB1_26:                               # %_ZNSt14_Function_baseD2Ev.exit
	ld.d	$a3, $sp, 1072
	beqz	$a3, .LBB1_28
# %bb.27:
.Ltmp224:                               # EH_LABEL
	addi.d	$a0, $sp, 1056
	addi.d	$a1, $sp, 1056
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp225:                               # EH_LABEL
.LBB1_28:                               # %vector.body1242.preheader
	ori	$a0, $zero, 4080
	ori	$a1, $zero, 2032
	ld.d	$a3, $sp, 184                   # 8-byte Folded Reload
	move	$a2, $a3
	.p2align	4, , 16
.LBB1_29:                               # %vector.body1242
                                        # =>This Inner Loop Header: Depth=1
	vldx	$vr0, $a3, $a0
	vld	$vr1, $a2, 0
	vshuf4i.w	$vr0, $vr0, 27
	vst	$vr0, $a2, 0
	vshuf4i.w	$vr0, $vr1, 27
	vstx	$vr0, $a3, $a0
	addi.d	$a0, $a0, -16
	addi.d	$a2, $a2, 16
	bne	$a0, $a1, .LBB1_29
# %bb.30:                               # %_ZSt7reverseIPfEvT_S1_.exit
	ld.d	$a3, $s1, 16
	vld	$vr0, $sp, 160                  # 16-byte Folded Reload
	vst	$vr0, $sp, 1008
	vst	$vr0, $sp, 992
	beqz	$a3, .LBB1_33
# %bb.31:
.Ltmp227:                               # EH_LABEL
	addi.d	$a0, $sp, 992
	ori	$a2, $zero, 2
	move	$a1, $s1
	jirl	$ra, $a3, 0
.Ltmp228:                               # EH_LABEL
# %bb.32:
	vld	$vr0, $s1, 16
	vst	$vr0, $sp, 1008
.LBB1_33:                               # %_ZNSt8functionIFfPfjEEC2ERKS2_.exit229
	ld.d	$a3, $s0, 16
	vld	$vr0, $sp, 160                  # 16-byte Folded Reload
	vst	$vr0, $sp, 976
	vst	$vr0, $sp, 960
	beqz	$a3, .LBB1_36
# %bb.34:
.Ltmp233:                               # EH_LABEL
	addi.d	$a0, $sp, 960
	ori	$a2, $zero, 2
	move	$a1, $s0
	jirl	$ra, $a3, 0
.Ltmp234:                               # EH_LABEL
# %bb.35:
	vld	$vr0, $s0, 16
	vst	$vr0, $sp, 976
.LBB1_36:                               # %_ZNSt8functionIFfPfjEEC2ERKS2_.exit235
.Ltmp239:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a3, $a0, %pc_lo12(.L.str.16)
	addi.d	$a0, $sp, 992
	addi.d	$a1, $sp, 960
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZL5checkIfEvSt8functionIFT_PS1_jEES4_PfjPKc)
	jirl	$ra, $ra, 0
.Ltmp240:                               # EH_LABEL
# %bb.37:
	ld.d	$a3, $sp, 976
	beqz	$a3, .LBB1_39
# %bb.38:
.Ltmp248:                               # EH_LABEL
	addi.d	$a0, $sp, 960
	addi.d	$a1, $sp, 960
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp249:                               # EH_LABEL
.LBB1_39:                               # %_ZNSt14_Function_baseD2Ev.exit237
	ld.d	$a3, $sp, 1008
	beqz	$a3, .LBB1_41
# %bb.40:
.Ltmp251:                               # EH_LABEL
	addi.d	$a0, $sp, 992
	addi.d	$a1, $sp, 992
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp252:                               # EH_LABEL
.LBB1_41:                               # %vector.body1254.preheader
	lu12i.w	$a0, 522239
	ori	$a0, $a0, 4095
	vreplgr2vr.w	$vr0, $a0
	ori	$fp, $s2, 16
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_42:                               # %vector.body1254
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a0, $a1, $s3
	vstx	$vr0, $a0, $s2
	addi.d	$s3, $s3, 32
	vstx	$vr0, $a0, $fp
	bnez	$s3, .LBB1_42
# %bb.43:                               # %middle.block1257
	ld.d	$a3, $s1, 16
	vld	$vr0, $sp, 160                  # 16-byte Folded Reload
	vst	$vr0, $sp, 944
	vst	$vr0, $sp, 928
	beqz	$a3, .LBB1_46
# %bb.44:
.Ltmp254:                               # EH_LABEL
	addi.d	$a0, $sp, 928
	ori	$a2, $zero, 2
	move	$a1, $s1
	jirl	$ra, $a3, 0
.Ltmp255:                               # EH_LABEL
# %bb.45:
	vld	$vr0, $s1, 16
	vst	$vr0, $sp, 944
.LBB1_46:                               # %_ZNSt8functionIFfPfjEEC2ERKS2_.exit245
	ld.d	$a3, $s0, 16
	vld	$vr0, $sp, 160                  # 16-byte Folded Reload
	vst	$vr0, $sp, 912
	vst	$vr0, $sp, 896
	beqz	$a3, .LBB1_49
# %bb.47:
.Ltmp260:                               # EH_LABEL
	addi.d	$a0, $sp, 896
	ori	$a2, $zero, 2
	move	$a1, $s0
	jirl	$ra, $a3, 0
.Ltmp261:                               # EH_LABEL
# %bb.48:
	vld	$vr0, $s0, 16
	vst	$vr0, $sp, 912
.LBB1_49:                               # %_ZNSt8functionIFfPfjEEC2ERKS2_.exit259
.Ltmp266:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a3, $a0, %pc_lo12(.L.str.17)
	addi.d	$a0, $sp, 928
	addi.d	$a1, $sp, 896
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZL5checkIfEvSt8functionIFT_PS1_jEES4_PfjPKc)
	jirl	$ra, $ra, 0
.Ltmp267:                               # EH_LABEL
# %bb.50:
	ld.d	$a3, $sp, 912
	beqz	$a3, .LBB1_52
# %bb.51:
.Ltmp275:                               # EH_LABEL
	addi.d	$a0, $sp, 896
	addi.d	$a1, $sp, 896
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp276:                               # EH_LABEL
.LBB1_52:                               # %_ZNSt14_Function_baseD2Ev.exit261
	ld.d	$a3, $sp, 944
	beqz	$a3, .LBB1_54
# %bb.53:
.Ltmp278:                               # EH_LABEL
	addi.d	$a0, $sp, 928
	addi.d	$a1, $sp, 928
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp279:                               # EH_LABEL
.LBB1_54:                               # %vector.body1260.preheader
	lu12i.w	$a0, -1
	lu12i.w	$a1, 2048
	vreplgr2vr.w	$vr0, $a1
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_55:                               # %vector.body1260
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a1, $a2, $a0
	vstx	$vr0, $a1, $s2
	addi.d	$a0, $a0, 32
	vstx	$vr0, $a1, $fp
	bnez	$a0, .LBB1_55
# %bb.56:                               # %middle.block1263
	ld.d	$a3, $s1, 16
	vld	$vr0, $sp, 160                  # 16-byte Folded Reload
	vst	$vr0, $sp, 880
	vst	$vr0, $sp, 864
	beqz	$a3, .LBB1_59
# %bb.57:
.Ltmp281:                               # EH_LABEL
	addi.d	$a0, $sp, 864
	ori	$a2, $zero, 2
	move	$a1, $s1
	jirl	$ra, $a3, 0
.Ltmp282:                               # EH_LABEL
# %bb.58:
	vld	$vr0, $s1, 16
	vst	$vr0, $sp, 880
.LBB1_59:                               # %_ZNSt8functionIFfPfjEEC2ERKS2_.exit269
	ld.d	$a3, $s0, 16
	vld	$vr0, $sp, 160                  # 16-byte Folded Reload
	vst	$vr0, $sp, 848
	vst	$vr0, $sp, 832
	beqz	$a3, .LBB1_62
# %bb.60:
.Ltmp287:                               # EH_LABEL
	addi.d	$a0, $sp, 832
	ori	$a2, $zero, 2
	move	$a1, $s0
	jirl	$ra, $a3, 0
.Ltmp288:                               # EH_LABEL
# %bb.61:
	vld	$vr0, $s0, 16
	vst	$vr0, $sp, 848
.LBB1_62:                               # %_ZNSt8functionIFfPfjEEC2ERKS2_.exit279
.Ltmp293:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a3, $a0, %pc_lo12(.L.str.18)
	addi.d	$a0, $sp, 864
	addi.d	$a1, $sp, 832
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZL5checkIfEvSt8functionIFT_PS1_jEES4_PfjPKc)
	jirl	$ra, $ra, 0
.Ltmp294:                               # EH_LABEL
# %bb.63:
	ld.d	$a3, $sp, 848
	beqz	$a3, .LBB1_65
# %bb.64:
.Ltmp302:                               # EH_LABEL
	addi.d	$a0, $sp, 832
	addi.d	$a1, $sp, 832
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp303:                               # EH_LABEL
.LBB1_65:                               # %_ZNSt14_Function_baseD2Ev.exit281
	ld.d	$a3, $sp, 880
	beqz	$a3, .LBB1_67
# %bb.66:
.Ltmp305:                               # EH_LABEL
	addi.d	$a0, $sp, 864
	addi.d	$a1, $sp, 864
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp306:                               # EH_LABEL
.LBB1_67:                               # %_ZNSt14_Function_baseD2Ev.exit283
	ori	$a0, $zero, 1
	ld.d	$a4, $sp, 184                   # 8-byte Folded Reload
	st.w	$a0, $a4, 0
	pcalau12i	$a0, %pc_hi20(.LCPI1_3)
	vld	$vr0, $a0, %pc_lo12(.LCPI1_3)
	lu12i.w	$s7, -1
	ori	$a0, $s7, 16
	vrepli.w	$vr1, 1
	ori	$a1, $zero, 4084
	.p2align	4, , 16
.LBB1_68:                               # %vector.body1266
                                        # =>This Inner Loop Header: Depth=1
	vffint.s.wu	$vr2, $vr0
	vfdiv.s	$vr2, $vr1, $vr2
	add.d	$a2, $a4, $a0
	vstx	$vr2, $a2, $a1
	addi.d	$a0, $a0, 16
	vaddi.wu	$vr0, $vr0, 4
	bnez	$a0, .LBB1_68
# %bb.69:                               # %scalar.ph1264
	ld.d	$a3, $s1, 16
	stptr.d	$zero, $a4, 4084
	stptr.w	$zero, $a4, 4092
	vld	$vr0, $sp, 160                  # 16-byte Folded Reload
	vst	$vr0, $sp, 800
	vst	$vr0, $sp, 816
	beqz	$a3, .LBB1_72
# %bb.70:
.Ltmp308:                               # EH_LABEL
	addi.d	$a0, $sp, 800
	ori	$a2, $zero, 2
	move	$a1, $s1
	jirl	$ra, $a3, 0
.Ltmp309:                               # EH_LABEL
# %bb.71:
	vld	$vr0, $s1, 16
	vst	$vr0, $sp, 816
.LBB1_72:                               # %_ZNSt8functionIFfPfjEEC2ERKS2_.exit289
	ld.d	$a3, $s0, 16
	vld	$vr0, $sp, 160                  # 16-byte Folded Reload
	vst	$vr0, $sp, 784
	vst	$vr0, $sp, 768
	beqz	$a3, .LBB1_75
# %bb.73:
.Ltmp314:                               # EH_LABEL
	addi.d	$a0, $sp, 768
	ori	$a2, $zero, 2
	move	$a1, $s0
	jirl	$ra, $a3, 0
.Ltmp315:                               # EH_LABEL
# %bb.74:
	vld	$vr0, $s0, 16
	vst	$vr0, $sp, 784
.LBB1_75:                               # %_ZNSt8functionIFfPfjEEC2ERKS2_.exit299
.Ltmp320:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a3, $a0, %pc_lo12(.L.str.19)
	addi.d	$a0, $sp, 800
	addi.d	$a1, $sp, 768
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZL5checkIfEvSt8functionIFT_PS1_jEES4_PfjPKc)
	jirl	$ra, $ra, 0
.Ltmp321:                               # EH_LABEL
# %bb.76:
	ld.d	$a3, $sp, 784
	beqz	$a3, .LBB1_78
# %bb.77:
.Ltmp329:                               # EH_LABEL
	addi.d	$a0, $sp, 768
	addi.d	$a1, $sp, 768
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp330:                               # EH_LABEL
.LBB1_78:                               # %_ZNSt14_Function_baseD2Ev.exit301
	ld.d	$a3, $sp, 816
	beqz	$a3, .LBB1_80
# %bb.79:
.Ltmp332:                               # EH_LABEL
	addi.d	$a0, $sp, 800
	addi.d	$a1, $sp, 800
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp333:                               # EH_LABEL
.LBB1_80:                               # %_ZNSt14_Function_baseD2Ev.exit303
	lu12i.w	$s8, 1
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	move	$a1, $zero
	move	$a2, $s8
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s1, 16
	vld	$vr0, $sp, 160                  # 16-byte Folded Reload
	vst	$vr0, $sp, 736
	vst	$vr0, $sp, 752
	beqz	$a3, .LBB1_83
# %bb.81:
.Ltmp335:                               # EH_LABEL
	addi.d	$a0, $sp, 736
	ori	$a2, $zero, 2
	move	$a1, $s1
	jirl	$ra, $a3, 0
.Ltmp336:                               # EH_LABEL
# %bb.82:
	vld	$vr0, $s1, 16
	vst	$vr0, $sp, 752
.LBB1_83:                               # %_ZNSt8functionIFfPfjEEC2ERKS2_.exit309
	ld.d	$a3, $s0, 16
	vld	$vr0, $sp, 160                  # 16-byte Folded Reload
	vst	$vr0, $sp, 720
	vst	$vr0, $sp, 704
	beqz	$a3, .LBB1_86
# %bb.84:
.Ltmp341:                               # EH_LABEL
	addi.d	$a0, $sp, 704
	ori	$a2, $zero, 2
	move	$a1, $s0
	jirl	$ra, $a3, 0
.Ltmp342:                               # EH_LABEL
# %bb.85:
	vld	$vr0, $s0, 16
	vst	$vr0, $sp, 720
.LBB1_86:                               # %_ZNSt8functionIFfPfjEEC2ERKS2_.exit319
.Ltmp347:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a3, $a0, %pc_lo12(.L.str.20)
	addi.d	$a0, $sp, 736
	addi.d	$a1, $sp, 704
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZL5checkIfEvSt8functionIFT_PS1_jEES4_PfjPKc)
	jirl	$ra, $ra, 0
.Ltmp348:                               # EH_LABEL
# %bb.87:
	ld.d	$a3, $sp, 720
	beqz	$a3, .LBB1_89
# %bb.88:
.Ltmp356:                               # EH_LABEL
	addi.d	$a0, $sp, 704
	addi.d	$a1, $sp, 704
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp357:                               # EH_LABEL
.LBB1_89:                               # %_ZNSt14_Function_baseD2Ev.exit321
	ld.d	$a3, $sp, 752
	beqz	$a3, .LBB1_91
# %bb.90:
.Ltmp359:                               # EH_LABEL
	addi.d	$a0, $sp, 736
	addi.d	$a1, $sp, 736
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp360:                               # EH_LABEL
.LBB1_91:                               # %_ZNSt14_Function_baseD2Ev.exit323
	ori	$fp, $zero, 3
	lu12i.w	$a0, 273536
	vreplgr2vr.w	$vr0, $a0
	vst	$vr0, $sp, 128                  # 16-byte Folded Spill
	ori	$s5, $s8, 16
	lu12i.w	$s2, 523264
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$s3, $a0, %pc_lo12(.L.str.21)
	ori	$s0, $zero, 32
	b	.LBB1_93
	.p2align	4, , 16
.LBB1_92:                               # %_ZNSt14_Function_baseD2Ev.exit343
                                        #   in Loop: Header=BB1_93 Depth=1
	addi.d	$fp, $fp, 1
	beq	$fp, $s0, .LBB1_106
.LBB1_93:                               # %vector.ph1273
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_94 Depth 2
	move	$a0, $s7
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	vld	$vr0, $sp, 128                  # 16-byte Folded Reload
	.p2align	4, , 16
.LBB1_94:                               # %vector.body1274
                                        #   Parent Loop BB1_93 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a1, $a2, $a0
	vstx	$vr0, $a1, $s8
	addi.d	$a0, $a0, 32
	vstx	$vr0, $a1, $s5
	bnez	$a0, .LBB1_94
# %bb.95:                               # %middle.block1277
                                        #   in Loop: Header=BB1_93 Depth=1
	ld.d	$a3, $s1, 16
	slli.d	$a0, $fp, 2
	stx.w	$s2, $a2, $a0
	vld	$vr0, $sp, 160                  # 16-byte Folded Reload
	vst	$vr0, $sp, 672
	vst	$vr0, $sp, 688
	beqz	$a3, .LBB1_98
# %bb.96:                               #   in Loop: Header=BB1_93 Depth=1
.Ltmp362:                               # EH_LABEL
	addi.d	$a0, $sp, 672
	ori	$a2, $zero, 2
	move	$a1, $s1
	jirl	$ra, $a3, 0
.Ltmp363:                               # EH_LABEL
# %bb.97:                               #   in Loop: Header=BB1_93 Depth=1
	vld	$vr0, $s1, 16
	vst	$vr0, $sp, 688
.LBB1_98:                               # %_ZNSt8functionIFfPfjEEC2ERKS2_.exit333
                                        #   in Loop: Header=BB1_93 Depth=1
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a3, $s2, 16
	vld	$vr0, $sp, 160                  # 16-byte Folded Reload
	vst	$vr0, $sp, 656
	vst	$vr0, $sp, 640
	beqz	$a3, .LBB1_101
# %bb.99:                               #   in Loop: Header=BB1_93 Depth=1
.Ltmp368:                               # EH_LABEL
	addi.d	$a0, $sp, 640
	ori	$a2, $zero, 2
	move	$a1, $s2
	jirl	$ra, $a3, 0
.Ltmp369:                               # EH_LABEL
# %bb.100:                              #   in Loop: Header=BB1_93 Depth=1
	vld	$vr0, $s2, 16
	vst	$vr0, $sp, 656
.LBB1_101:                              # %_ZNSt8functionIFfPfjEEC2ERKS2_.exit339
                                        #   in Loop: Header=BB1_93 Depth=1
.Ltmp374:                               # EH_LABEL
	addi.d	$a0, $sp, 672
	addi.d	$a1, $sp, 640
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	move	$a3, $s3
	pcaddu18i	$ra, %call36(_ZL5checkIfEvSt8functionIFT_PS1_jEES4_PfjPKc)
	jirl	$ra, $ra, 0
.Ltmp375:                               # EH_LABEL
# %bb.102:                              #   in Loop: Header=BB1_93 Depth=1
	ld.d	$a3, $sp, 656
	lu12i.w	$s2, 523264
	beqz	$a3, .LBB1_104
# %bb.103:                              #   in Loop: Header=BB1_93 Depth=1
.Ltmp383:                               # EH_LABEL
	addi.d	$a0, $sp, 640
	addi.d	$a1, $sp, 640
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp384:                               # EH_LABEL
.LBB1_104:                              # %_ZNSt14_Function_baseD2Ev.exit341
                                        #   in Loop: Header=BB1_93 Depth=1
	ld.d	$a3, $sp, 688
	beqz	$a3, .LBB1_92
# %bb.105:                              #   in Loop: Header=BB1_93 Depth=1
.Ltmp386:                               # EH_LABEL
	addi.d	$a0, $sp, 672
	addi.d	$a1, $sp, 672
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp387:                               # EH_LABEL
	b	.LBB1_92
.LBB1_106:                              # %.preheader715
	move	$fp, $zero
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	addi.d	$s0, $a0, 4
	lu12i.w	$a0, -264192
	vreplgr2vr.w	$vr0, $a0
	vst	$vr0, $sp, 128                  # 16-byte Folded Spill
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	lu32i.d	$a0, 0
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	ori	$s4, $zero, 1024
	ori	$s6, $zero, 124
	ori	$s2, $zero, 64
	movgr2fr.w	$fs2, $zero
	b	.LBB1_108
	.p2align	4, , 16
.LBB1_107:                              #   in Loop: Header=BB1_108 Depth=1
	addi.d	$fp, $fp, 1
	addi.d	$s0, $s0, 4
	lu12i.w	$s8, 1
	beq	$fp, $s2, .LBB1_141
.LBB1_108:                              # %vector.ph1279
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_109 Depth 2
                                        #     Child Loop BB1_112 Depth 2
	lu12i.w	$a0, -1
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	vld	$vr0, $sp, 128                  # 16-byte Folded Reload
	.p2align	4, , 16
.LBB1_109:                              # %vector.body1280
                                        #   Parent Loop BB1_108 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a1, $a2, $a0
	vstx	$vr0, $a1, $s8
	addi.d	$a0, $a0, 32
	vstx	$vr0, $a1, $s5
	bnez	$a0, .LBB1_109
# %bb.110:                              # %.preheader708
                                        #   in Loop: Header=BB1_108 Depth=1
	move	$s8, $zero
	alsl.d	$s3, $fp, $a2, 2
	b	.LBB1_112
	.p2align	4, , 16
.LBB1_111:                              # %_ZNSt14_Function_baseD2Ev.exit375
                                        #   in Loop: Header=BB1_112 Depth=2
	addi.d	$s8, $s8, 4
	beq	$s8, $s6, .LBB1_107
.LBB1_112:                              #   Parent Loop BB1_108 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a3, $s1, 16
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	st.w	$a0, $s3, 0
	stx.w	$zero, $s0, $s8
	vld	$vr0, $sp, 160                  # 16-byte Folded Reload
	vst	$vr0, $sp, 608
	vst	$vr0, $sp, 624
	beqz	$a3, .LBB1_115
# %bb.113:                              #   in Loop: Header=BB1_112 Depth=2
.Ltmp389:                               # EH_LABEL
	addi.d	$a0, $sp, 608
	ori	$a2, $zero, 2
	move	$a1, $s1
	jirl	$ra, $a3, 0
.Ltmp390:                               # EH_LABEL
# %bb.114:                              #   in Loop: Header=BB1_112 Depth=2
	vld	$vr0, $s1, 16
	ld.d	$a0, $s1, 16
	vst	$vr0, $sp, 624
	b	.LBB1_116
	.p2align	4, , 16
.LBB1_115:                              #   in Loop: Header=BB1_112 Depth=2
	move	$a0, $zero
.LBB1_116:                              # %_ZNSt8functionIFfPfjEEC2ERKS2_.exit353
                                        #   in Loop: Header=BB1_112 Depth=2
	ld.d	$s7, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a3, $s7, 16
	vld	$vr0, $sp, 160                  # 16-byte Folded Reload
	vst	$vr0, $sp, 592
	vst	$vr0, $sp, 576
	beqz	$a3, .LBB1_119
# %bb.117:                              #   in Loop: Header=BB1_112 Depth=2
.Ltmp395:                               # EH_LABEL
	addi.d	$a0, $sp, 576
	ori	$a2, $zero, 2
	move	$a1, $s7
	jirl	$ra, $a3, 0
.Ltmp396:                               # EH_LABEL
# %bb.118:                              #   in Loop: Header=BB1_112 Depth=2
	vld	$vr0, $s7, 16
	ld.d	$a0, $sp, 624
	vst	$vr0, $sp, 592
.LBB1_119:                              # %_ZNSt8functionIFfPfjEEC2ERKS2_.exit359
                                        #   in Loop: Header=BB1_112 Depth=2
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	st.d	$a1, $sp, 1096
	st.w	$s4, $sp, 1092
	beqz	$a0, .LBB1_309
# %bb.120:                              # %_ZNKSt8functionIFfPfjEEclES0_j.exit.i
                                        #   in Loop: Header=BB1_112 Depth=2
	ld.d	$a3, $sp, 632
.Ltmp401:                               # EH_LABEL
	addi.d	$a0, $sp, 608
	addi.d	$a1, $sp, 1096
	addi.d	$a2, $sp, 1092
	jirl	$ra, $a3, 0
.Ltmp402:                               # EH_LABEL
# %bb.121:                              # %.noexc362
                                        #   in Loop: Header=BB1_112 Depth=2
	ld.d	$a0, $sp, 592
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	st.d	$a1, $sp, 1096
	st.w	$s4, $sp, 1092
	beqz	$a0, .LBB1_309
# %bb.122:                              # %_ZNKSt8functionIFfPfjEEclES0_j.exit9.i
                                        #   in Loop: Header=BB1_112 Depth=2
	fmov.s	$fs1, $fa0
	ld.d	$a3, $sp, 600
.Ltmp403:                               # EH_LABEL
	addi.d	$a0, $sp, 576
	addi.d	$a1, $sp, 1096
	addi.d	$a2, $sp, 1092
	jirl	$ra, $a3, 0
.Ltmp404:                               # EH_LABEL
# %bb.123:                              # %.noexc364
                                        #   in Loop: Header=BB1_112 Depth=2
	fmov.s	$fs0, $fa0
	fcmp.cun.s	$fcc0, $fs1, $fa0
	bcnez	$fcc0, .LBB1_132
# %bb.124:                              #   in Loop: Header=BB1_112 Depth=2
	fcmp.cune.s	$fcc0, $fs1, $fs2
	bcnez	$fcc0, .LBB1_127
# %bb.125:                              #   in Loop: Header=BB1_112 Depth=2
	fcmp.cune.s	$fcc0, $fs0, $fs2
	bcnez	$fcc0, .LBB1_134
# %bb.126:                              #   in Loop: Header=BB1_112 Depth=2
	movfr2gr.s	$a0, $fs1
	movfr2gr.s	$a1, $fs0
	xor	$a0, $a1, $a0
	bgez	$a0, .LBB1_128
	b	.LBB1_134
	.p2align	4, , 16
.LBB1_127:                              #   in Loop: Header=BB1_112 Depth=2
	fcmp.ceq.s	$fcc0, $fs1, $fs0
	bceqz	$fcc0, .LBB1_134
.LBB1_128:                              # %_ZL5checkIfEvSt8functionIFT_PS1_jEES4_PfjPKc.exit
                                        #   in Loop: Header=BB1_112 Depth=2
	ld.d	$a3, $sp, 592
	beqz	$a3, .LBB1_130
# %bb.129:                              #   in Loop: Header=BB1_112 Depth=2
.Ltmp420:                               # EH_LABEL
	addi.d	$a0, $sp, 576
	addi.d	$a1, $sp, 576
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp421:                               # EH_LABEL
.LBB1_130:                              # %_ZNSt14_Function_baseD2Ev.exit373
                                        #   in Loop: Header=BB1_112 Depth=2
	ld.d	$a3, $sp, 624
	beqz	$a3, .LBB1_111
# %bb.131:                              #   in Loop: Header=BB1_112 Depth=2
.Ltmp423:                               # EH_LABEL
	addi.d	$a0, $sp, 608
	addi.d	$a1, $sp, 608
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp424:                               # EH_LABEL
	b	.LBB1_111
.LBB1_132:                              # %_ZL7isEqualff.exit.i
                                        #   in Loop: Header=BB1_112 Depth=2
	fcmp.cor.s	$fcc0, $fs1, $fs1
	bcnez	$fcc0, .LBB1_134
# %bb.133:                              # %_ZL7isEqualff.exit.i
                                        #   in Loop: Header=BB1_112 Depth=2
	fcmp.cun.s	$fcc0, $fs0, $fs0
	bcnez	$fcc0, .LBB1_128
.LBB1_134:                              # %_ZL7isEqualff.exit.thread.i
.Ltmp406:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.27)
	addi.d	$a1, $a1, %pc_lo12(.L.str.27)
	ori	$a2, $zero, 11
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp407:                               # EH_LABEL
# %bb.135:                              # %.noexc365
.Ltmp408:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.22)
	addi.d	$a1, $a1, %pc_lo12(.L.str.22)
	ori	$a2, $zero, 12
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp409:                               # EH_LABEL
# %bb.136:                              # %.noexc366
.Ltmp410:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.28)
	addi.d	$a1, $a1, %pc_lo12(.L.str.28)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp411:                               # EH_LABEL
# %bb.137:                              # %.noexc367
	fcvt.d.s	$fa0, $fs1
.Ltmp412:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp413:                               # EH_LABEL
# %bb.138:                              # %.noexc368
.Ltmp414:                               # EH_LABEL
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a1, $a0, %pc_lo12(.L.str.29)
	ori	$a2, $zero, 4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp415:                               # EH_LABEL
# %bb.139:                              # %.noexc369
	fcvt.d.s	$fa0, $fs0
.Ltmp416:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp417:                               # EH_LABEL
# %bb.140:                              # %.noexc370
.Ltmp418:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.14)
	addi.d	$a1, $a1, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp419:                               # EH_LABEL
	b	.LBB1_307
.LBB1_141:                              # %.preheader707
	move	$fp, $zero
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	addi.d	$s0, $a0, 4
	ori	$s4, $zero, 1024
	ori	$s6, $zero, 124
	ori	$s2, $zero, 64
	b	.LBB1_143
	.p2align	4, , 16
.LBB1_142:                              #   in Loop: Header=BB1_143 Depth=1
	addi.d	$fp, $fp, 1
	addi.d	$s0, $s0, 4
	lu12i.w	$s8, 1
	beq	$fp, $s2, .LBB1_176
.LBB1_143:                              # %vector.ph1285
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_144 Depth 2
                                        #     Child Loop BB1_147 Depth 2
	lu12i.w	$a0, -1
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	vld	$vr0, $sp, 128                  # 16-byte Folded Reload
	.p2align	4, , 16
.LBB1_144:                              # %vector.body1286
                                        #   Parent Loop BB1_143 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a1, $a2, $a0
	vstx	$vr0, $a1, $s8
	addi.d	$a0, $a0, 32
	vstx	$vr0, $a1, $s5
	bnez	$a0, .LBB1_144
# %bb.145:                              # %.preheader700
                                        #   in Loop: Header=BB1_143 Depth=1
	move	$s8, $zero
	alsl.d	$s3, $fp, $a2, 2
	b	.LBB1_147
	.p2align	4, , 16
.LBB1_146:                              # %_ZNSt14_Function_baseD2Ev.exit415
                                        #   in Loop: Header=BB1_147 Depth=2
	addi.d	$s8, $s8, 4
	beq	$s8, $s6, .LBB1_142
.LBB1_147:                              #   Parent Loop BB1_143 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a3, $s1, 16
	st.w	$zero, $s3, 0
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	stx.w	$a0, $s0, $s8
	vld	$vr0, $sp, 160                  # 16-byte Folded Reload
	vst	$vr0, $sp, 544
	vst	$vr0, $sp, 560
	beqz	$a3, .LBB1_150
# %bb.148:                              #   in Loop: Header=BB1_147 Depth=2
.Ltmp426:                               # EH_LABEL
	addi.d	$a0, $sp, 544
	ori	$a2, $zero, 2
	move	$a1, $s1
	jirl	$ra, $a3, 0
.Ltmp427:                               # EH_LABEL
# %bb.149:                              #   in Loop: Header=BB1_147 Depth=2
	vld	$vr0, $s1, 16
	ld.d	$a0, $s1, 16
	vst	$vr0, $sp, 560
	b	.LBB1_151
	.p2align	4, , 16
.LBB1_150:                              #   in Loop: Header=BB1_147 Depth=2
	move	$a0, $zero
.LBB1_151:                              # %_ZNSt8functionIFfPfjEEC2ERKS2_.exit385
                                        #   in Loop: Header=BB1_147 Depth=2
	ld.d	$s7, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a3, $s7, 16
	vld	$vr0, $sp, 160                  # 16-byte Folded Reload
	vst	$vr0, $sp, 528
	vst	$vr0, $sp, 512
	beqz	$a3, .LBB1_154
# %bb.152:                              #   in Loop: Header=BB1_147 Depth=2
.Ltmp432:                               # EH_LABEL
	addi.d	$a0, $sp, 512
	ori	$a2, $zero, 2
	move	$a1, $s7
	jirl	$ra, $a3, 0
.Ltmp433:                               # EH_LABEL
# %bb.153:                              #   in Loop: Header=BB1_147 Depth=2
	vld	$vr0, $s7, 16
	ld.d	$a0, $sp, 560
	vst	$vr0, $sp, 528
.LBB1_154:                              # %_ZNSt8functionIFfPfjEEC2ERKS2_.exit391
                                        #   in Loop: Header=BB1_147 Depth=2
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	st.d	$a1, $sp, 1096
	st.w	$s4, $sp, 1092
	beqz	$a0, .LBB1_311
# %bb.155:                              # %_ZNKSt8functionIFfPfjEEclES0_j.exit.i393
                                        #   in Loop: Header=BB1_147 Depth=2
	ld.d	$a3, $sp, 568
.Ltmp438:                               # EH_LABEL
	addi.d	$a0, $sp, 544
	addi.d	$a1, $sp, 1096
	addi.d	$a2, $sp, 1092
	jirl	$ra, $a3, 0
.Ltmp439:                               # EH_LABEL
# %bb.156:                              # %.noexc401
                                        #   in Loop: Header=BB1_147 Depth=2
	ld.d	$a0, $sp, 528
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	st.d	$a1, $sp, 1096
	st.w	$s4, $sp, 1092
	beqz	$a0, .LBB1_311
# %bb.157:                              # %_ZNKSt8functionIFfPfjEEclES0_j.exit9.i395
                                        #   in Loop: Header=BB1_147 Depth=2
	fmov.s	$fs1, $fa0
	ld.d	$a3, $sp, 536
.Ltmp440:                               # EH_LABEL
	addi.d	$a0, $sp, 512
	addi.d	$a1, $sp, 1096
	addi.d	$a2, $sp, 1092
	jirl	$ra, $a3, 0
.Ltmp441:                               # EH_LABEL
# %bb.158:                              # %.noexc403
                                        #   in Loop: Header=BB1_147 Depth=2
	fmov.s	$fs0, $fa0
	fcmp.cun.s	$fcc0, $fs1, $fa0
	bcnez	$fcc0, .LBB1_167
# %bb.159:                              #   in Loop: Header=BB1_147 Depth=2
	fcmp.cune.s	$fcc0, $fs1, $fs2
	bcnez	$fcc0, .LBB1_162
# %bb.160:                              #   in Loop: Header=BB1_147 Depth=2
	fcmp.cune.s	$fcc0, $fs0, $fs2
	bcnez	$fcc0, .LBB1_169
# %bb.161:                              #   in Loop: Header=BB1_147 Depth=2
	movfr2gr.s	$a0, $fs1
	movfr2gr.s	$a1, $fs0
	xor	$a0, $a1, $a0
	bgez	$a0, .LBB1_163
	b	.LBB1_169
	.p2align	4, , 16
.LBB1_162:                              #   in Loop: Header=BB1_147 Depth=2
	fcmp.ceq.s	$fcc0, $fs1, $fs0
	bceqz	$fcc0, .LBB1_169
.LBB1_163:                              # %_ZL5checkIfEvSt8functionIFT_PS1_jEES4_PfjPKc.exit411
                                        #   in Loop: Header=BB1_147 Depth=2
	ld.d	$a3, $sp, 528
	beqz	$a3, .LBB1_165
# %bb.164:                              #   in Loop: Header=BB1_147 Depth=2
.Ltmp457:                               # EH_LABEL
	addi.d	$a0, $sp, 512
	addi.d	$a1, $sp, 512
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp458:                               # EH_LABEL
.LBB1_165:                              # %_ZNSt14_Function_baseD2Ev.exit413
                                        #   in Loop: Header=BB1_147 Depth=2
	ld.d	$a3, $sp, 560
	beqz	$a3, .LBB1_146
# %bb.166:                              #   in Loop: Header=BB1_147 Depth=2
.Ltmp460:                               # EH_LABEL
	addi.d	$a0, $sp, 544
	addi.d	$a1, $sp, 544
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp461:                               # EH_LABEL
	b	.LBB1_146
.LBB1_167:                              # %_ZL7isEqualff.exit.i398
                                        #   in Loop: Header=BB1_147 Depth=2
	fcmp.cor.s	$fcc0, $fs1, $fs1
	bcnez	$fcc0, .LBB1_169
# %bb.168:                              # %_ZL7isEqualff.exit.i398
                                        #   in Loop: Header=BB1_147 Depth=2
	fcmp.cun.s	$fcc0, $fs0, $fs0
	bcnez	$fcc0, .LBB1_163
.LBB1_169:                              # %_ZL7isEqualff.exit.thread.i397
.Ltmp443:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.27)
	addi.d	$a1, $a1, %pc_lo12(.L.str.27)
	ori	$a2, $zero, 11
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp444:                               # EH_LABEL
# %bb.170:                              # %.noexc404
.Ltmp445:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.22)
	addi.d	$a1, $a1, %pc_lo12(.L.str.22)
	ori	$a2, $zero, 12
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp446:                               # EH_LABEL
# %bb.171:                              # %.noexc405
.Ltmp447:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.28)
	addi.d	$a1, $a1, %pc_lo12(.L.str.28)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp448:                               # EH_LABEL
# %bb.172:                              # %.noexc406
	fcvt.d.s	$fa0, $fs1
.Ltmp449:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp450:                               # EH_LABEL
# %bb.173:                              # %.noexc407
.Ltmp451:                               # EH_LABEL
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a1, $a0, %pc_lo12(.L.str.29)
	ori	$a2, $zero, 4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp452:                               # EH_LABEL
# %bb.174:                              # %.noexc408
	fcvt.d.s	$fa0, $fs0
.Ltmp453:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp454:                               # EH_LABEL
# %bb.175:                              # %.noexc409
.Ltmp455:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.14)
	addi.d	$a1, $a1, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp456:                               # EH_LABEL
	b	.LBB1_307
.LBB1_176:                              # %.preheader699
	pcalau12i	$a0, %pc_hi20(.LCPI1_4)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	vld	$vr0, $a0, %pc_lo12(.LCPI1_4)
	vst	$vr0, $sp, 112                  # 16-byte Folded Spill
	ori	$s0, $zero, 4
	lu12i.w	$s2, 280578
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	move	$s8, $zero
	ori	$s3, $zero, 1023
	ori	$s6, $zero, 1024
	ori	$s7, $zero, 16
	b	.LBB1_178
	.p2align	4, , 16
.LBB1_177:                              #   in Loop: Header=BB1_178 Depth=1
	addi.d	$s8, $s8, 1
	ld.d	$s0, $sp, 144                   # 8-byte Folded Reload
	addi.d	$s0, $s0, 4
	beq	$s8, $s6, .LBB1_224
.LBB1_178:                              # %vector.ph1291
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_179 Depth 2
                                        #     Child Loop BB1_193 Depth 2
	lu12i.w	$a0, -1
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 152                   # 8-byte Folded Reload
	lu12i.w	$a3, 1
	.p2align	4, , 16
.LBB1_179:                              # %vector.body1292
                                        #   Parent Loop BB1_178 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vaddi.wu	$vr1, $vr0, 4
	vffint.s.wu	$vr2, $vr0
	vffint.s.wu	$vr1, $vr1
	add.d	$a1, $a2, $a0
	vstx	$vr2, $a1, $a3
	vstx	$vr1, $a1, $s5
	addi.d	$a0, $a0, 32
	vaddi.wu	$vr0, $vr0, 8
	bnez	$a0, .LBB1_179
# %bb.180:                              # %middle.block1297
                                        #   in Loop: Header=BB1_178 Depth=1
	ld.d	$a3, $s1, 16
	slli.d	$a0, $s8, 2
	stx.w	$s2, $a2, $a0
	vld	$vr0, $sp, 160                  # 16-byte Folded Reload
	vst	$vr0, $sp, 480
	vst	$vr0, $sp, 496
	beqz	$a3, .LBB1_183
# %bb.181:                              #   in Loop: Header=BB1_178 Depth=1
.Ltmp463:                               # EH_LABEL
	addi.d	$a0, $sp, 480
	ori	$a2, $zero, 2
	move	$a1, $s1
	jirl	$ra, $a3, 0
.Ltmp464:                               # EH_LABEL
# %bb.182:                              #   in Loop: Header=BB1_178 Depth=1
	vld	$vr0, $s1, 16
	vst	$vr0, $sp, 496
.LBB1_183:                              # %_ZNSt8functionIFfPfjEEC2ERKS2_.exit425
                                        #   in Loop: Header=BB1_178 Depth=1
	ld.d	$a3, $fp, 16
	vld	$vr0, $sp, 160                  # 16-byte Folded Reload
	vst	$vr0, $sp, 464
	vst	$vr0, $sp, 448
	beqz	$a3, .LBB1_186
# %bb.184:                              #   in Loop: Header=BB1_178 Depth=1
.Ltmp469:                               # EH_LABEL
	addi.d	$a0, $sp, 448
	ori	$a2, $zero, 2
	move	$a1, $fp
	jirl	$ra, $a3, 0
.Ltmp470:                               # EH_LABEL
# %bb.185:                              #   in Loop: Header=BB1_178 Depth=1
	vld	$vr0, $fp, 16
	vst	$vr0, $sp, 464
.LBB1_186:                              # %_ZNSt8functionIFfPfjEEC2ERKS2_.exit431
                                        #   in Loop: Header=BB1_178 Depth=1
.Ltmp475:                               # EH_LABEL
	addi.d	$a0, $sp, 480
	addi.d	$a1, $sp, 448
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZL5checkIfEvSt8functionIFT_PS1_jEES4_PfjPKc)
	jirl	$ra, $ra, 0
.Ltmp476:                               # EH_LABEL
# %bb.187:                              #   in Loop: Header=BB1_178 Depth=1
	ld.d	$a3, $sp, 464
	beqz	$a3, .LBB1_189
# %bb.188:                              #   in Loop: Header=BB1_178 Depth=1
.Ltmp484:                               # EH_LABEL
	addi.d	$a0, $sp, 448
	addi.d	$a1, $sp, 448
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp485:                               # EH_LABEL
.LBB1_189:                              # %_ZNSt14_Function_baseD2Ev.exit433
                                        #   in Loop: Header=BB1_178 Depth=1
	ld.d	$a3, $sp, 496
	beqz	$a3, .LBB1_191
# %bb.190:                              #   in Loop: Header=BB1_178 Depth=1
.Ltmp487:                               # EH_LABEL
	addi.d	$a0, $sp, 480
	addi.d	$a1, $sp, 480
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp488:                               # EH_LABEL
.LBB1_191:                              # %_ZNSt14_Function_baseD2Ev.exit435.preheader
                                        #   in Loop: Header=BB1_178 Depth=1
	ori	$fp, $zero, 1
	st.d	$s0, $sp, 144                   # 8-byte Folded Spill
	b	.LBB1_193
	.p2align	4, , 16
.LBB1_192:                              # %_ZNSt14_Function_baseD2Ev.exit475
                                        #   in Loop: Header=BB1_193 Depth=2
	addi.d	$fp, $fp, 1
	addi.d	$s0, $s0, 4
	beq	$fp, $s7, .LBB1_177
.LBB1_193:                              # %_ZNSt14_Function_baseD2Ev.exit435
                                        #   Parent Loop BB1_178 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a0, $s8, $fp
	bltu	$s3, $a0, .LBB1_195
# %bb.194:                              #   in Loop: Header=BB1_193 Depth=2
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	stx.w	$s2, $a0, $s0
.LBB1_195:                              #   in Loop: Header=BB1_193 Depth=2
	ld.d	$a3, $s1, 16
	vld	$vr0, $sp, 160                  # 16-byte Folded Reload
	vst	$vr0, $sp, 432
	vst	$vr0, $sp, 416
	beqz	$a3, .LBB1_198
# %bb.196:                              #   in Loop: Header=BB1_193 Depth=2
.Ltmp490:                               # EH_LABEL
	addi.d	$a0, $sp, 416
	ori	$a2, $zero, 2
	move	$a1, $s1
	jirl	$ra, $a3, 0
.Ltmp491:                               # EH_LABEL
# %bb.197:                              #   in Loop: Header=BB1_193 Depth=2
	vld	$vr0, $s1, 16
	ld.d	$a0, $s1, 16
	vst	$vr0, $sp, 432
	b	.LBB1_199
	.p2align	4, , 16
.LBB1_198:                              #   in Loop: Header=BB1_193 Depth=2
	move	$a0, $zero
.LBB1_199:                              # %_ZNSt8functionIFfPfjEEC2ERKS2_.exit445
                                        #   in Loop: Header=BB1_193 Depth=2
	ld.d	$s4, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a3, $s4, 16
	vld	$vr0, $sp, 160                  # 16-byte Folded Reload
	vst	$vr0, $sp, 400
	vst	$vr0, $sp, 384
	beqz	$a3, .LBB1_202
# %bb.200:                              #   in Loop: Header=BB1_193 Depth=2
.Ltmp496:                               # EH_LABEL
	addi.d	$a0, $sp, 384
	ori	$a2, $zero, 2
	move	$a1, $s4
	jirl	$ra, $a3, 0
.Ltmp497:                               # EH_LABEL
# %bb.201:                              #   in Loop: Header=BB1_193 Depth=2
	vld	$vr0, $s4, 16
	ld.d	$a0, $sp, 432
	vst	$vr0, $sp, 400
.LBB1_202:                              # %_ZNSt8functionIFfPfjEEC2ERKS2_.exit451
                                        #   in Loop: Header=BB1_193 Depth=2
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	st.d	$a1, $sp, 1096
	st.w	$s6, $sp, 1092
	beqz	$a0, .LBB1_313
# %bb.203:                              # %_ZNKSt8functionIFfPfjEEclES0_j.exit.i453
                                        #   in Loop: Header=BB1_193 Depth=2
	ld.d	$a3, $sp, 440
.Ltmp502:                               # EH_LABEL
	addi.d	$a0, $sp, 416
	addi.d	$a1, $sp, 1096
	addi.d	$a2, $sp, 1092
	jirl	$ra, $a3, 0
.Ltmp503:                               # EH_LABEL
# %bb.204:                              # %.noexc461
                                        #   in Loop: Header=BB1_193 Depth=2
	ld.d	$a0, $sp, 400
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	st.d	$a1, $sp, 1096
	st.w	$s6, $sp, 1092
	beqz	$a0, .LBB1_313
# %bb.205:                              # %_ZNKSt8functionIFfPfjEEclES0_j.exit9.i455
                                        #   in Loop: Header=BB1_193 Depth=2
	fmov.s	$fs1, $fa0
	ld.d	$a3, $sp, 408
.Ltmp504:                               # EH_LABEL
	addi.d	$a0, $sp, 384
	addi.d	$a1, $sp, 1096
	addi.d	$a2, $sp, 1092
	jirl	$ra, $a3, 0
.Ltmp505:                               # EH_LABEL
# %bb.206:                              # %.noexc463
                                        #   in Loop: Header=BB1_193 Depth=2
	fmov.s	$fs0, $fa0
	fcmp.cun.s	$fcc0, $fs1, $fa0
	bcnez	$fcc0, .LBB1_215
# %bb.207:                              #   in Loop: Header=BB1_193 Depth=2
	fcmp.cune.s	$fcc0, $fs1, $fs2
	bcnez	$fcc0, .LBB1_210
# %bb.208:                              #   in Loop: Header=BB1_193 Depth=2
	fcmp.cune.s	$fcc0, $fs0, $fs2
	bcnez	$fcc0, .LBB1_217
# %bb.209:                              #   in Loop: Header=BB1_193 Depth=2
	movfr2gr.s	$a0, $fs1
	movfr2gr.s	$a1, $fs0
	xor	$a0, $a1, $a0
	bgez	$a0, .LBB1_211
	b	.LBB1_217
	.p2align	4, , 16
.LBB1_210:                              #   in Loop: Header=BB1_193 Depth=2
	fcmp.ceq.s	$fcc0, $fs1, $fs0
	bceqz	$fcc0, .LBB1_217
.LBB1_211:                              # %_ZL5checkIfEvSt8functionIFT_PS1_jEES4_PfjPKc.exit471
                                        #   in Loop: Header=BB1_193 Depth=2
	ld.d	$a3, $sp, 400
	beqz	$a3, .LBB1_213
# %bb.212:                              #   in Loop: Header=BB1_193 Depth=2
.Ltmp521:                               # EH_LABEL
	addi.d	$a0, $sp, 384
	addi.d	$a1, $sp, 384
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp522:                               # EH_LABEL
.LBB1_213:                              # %_ZNSt14_Function_baseD2Ev.exit473
                                        #   in Loop: Header=BB1_193 Depth=2
	ld.d	$a3, $sp, 432
	beqz	$a3, .LBB1_192
# %bb.214:                              #   in Loop: Header=BB1_193 Depth=2
.Ltmp524:                               # EH_LABEL
	addi.d	$a0, $sp, 416
	addi.d	$a1, $sp, 416
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp525:                               # EH_LABEL
	b	.LBB1_192
.LBB1_215:                              # %_ZL7isEqualff.exit.i458
                                        #   in Loop: Header=BB1_193 Depth=2
	fcmp.cor.s	$fcc0, $fs1, $fs1
	bcnez	$fcc0, .LBB1_217
# %bb.216:                              # %_ZL7isEqualff.exit.i458
                                        #   in Loop: Header=BB1_193 Depth=2
	fcmp.cun.s	$fcc0, $fs0, $fs0
	bcnez	$fcc0, .LBB1_211
.LBB1_217:                              # %_ZL7isEqualff.exit.thread.i457
.Ltmp507:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.27)
	addi.d	$a1, $a1, %pc_lo12(.L.str.27)
	ori	$a2, $zero, 11
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp508:                               # EH_LABEL
# %bb.218:                              # %.noexc464
.Ltmp509:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.23)
	addi.d	$a1, $a1, %pc_lo12(.L.str.23)
	ori	$a2, $zero, 4
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp510:                               # EH_LABEL
# %bb.219:                              # %.noexc465
.Ltmp511:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.28)
	addi.d	$a1, $a1, %pc_lo12(.L.str.28)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp512:                               # EH_LABEL
# %bb.220:                              # %.noexc466
	fcvt.d.s	$fa0, $fs1
.Ltmp513:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp514:                               # EH_LABEL
# %bb.221:                              # %.noexc467
.Ltmp515:                               # EH_LABEL
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a1, $a0, %pc_lo12(.L.str.29)
	ori	$a2, $zero, 4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp516:                               # EH_LABEL
# %bb.222:                              # %.noexc468
	fcvt.d.s	$fa0, $fs0
.Ltmp517:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp518:                               # EH_LABEL
# %bb.223:                              # %.noexc469
.Ltmp519:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.14)
	addi.d	$a1, $a1, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp520:                               # EH_LABEL
	b	.LBB1_307
.LBB1_224:                              # %.preheader692
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	vld	$vr0, $a0, %pc_lo12(.LCPI1_4)
	vst	$vr0, $sp, 112                  # 16-byte Folded Spill
	ori	$s0, $zero, 4
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a0, $a0, %pc_lo12(.L.str.24)
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	move	$s8, $zero
	ori	$s7, $zero, 1023
	ori	$s6, $zero, 1024
	ori	$s3, $zero, 16
	lu12i.w	$s2, 523264
	b	.LBB1_226
	.p2align	4, , 16
.LBB1_225:                              #   in Loop: Header=BB1_226 Depth=1
	addi.d	$s8, $s8, 1
	ld.d	$s0, $sp, 144                   # 8-byte Folded Reload
	addi.d	$s0, $s0, 4
	beq	$s8, $s6, .LBB1_272
.LBB1_226:                              # %vector.ph1299
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_227 Depth 2
                                        #     Child Loop BB1_241 Depth 2
	lu12i.w	$a0, -1
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	lu12i.w	$a3, 1
	.p2align	4, , 16
.LBB1_227:                              # %vector.body1300
                                        #   Parent Loop BB1_226 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vaddi.wu	$vr1, $vr0, 4
	vffint.s.wu	$vr2, $vr0
	vffint.s.wu	$vr1, $vr1
	add.d	$a1, $a2, $a0
	vstx	$vr2, $a1, $a3
	vstx	$vr1, $a1, $s5
	addi.d	$a0, $a0, 32
	vaddi.wu	$vr0, $vr0, 8
	bnez	$a0, .LBB1_227
# %bb.228:                              # %middle.block1306
                                        #   in Loop: Header=BB1_226 Depth=1
	ld.d	$a3, $s1, 16
	slli.d	$a0, $s8, 2
	stx.w	$s2, $a2, $a0
	vld	$vr0, $sp, 160                  # 16-byte Folded Reload
	vst	$vr0, $sp, 352
	vst	$vr0, $sp, 368
	ld.d	$fp, $sp, 152                   # 8-byte Folded Reload
	beqz	$a3, .LBB1_231
# %bb.229:                              #   in Loop: Header=BB1_226 Depth=1
.Ltmp527:                               # EH_LABEL
	addi.d	$a0, $sp, 352
	ori	$a2, $zero, 2
	move	$a1, $s1
	jirl	$ra, $a3, 0
.Ltmp528:                               # EH_LABEL
# %bb.230:                              #   in Loop: Header=BB1_226 Depth=1
	vld	$vr0, $s1, 16
	vst	$vr0, $sp, 368
.LBB1_231:                              # %_ZNSt8functionIFfPfjEEC2ERKS2_.exit485
                                        #   in Loop: Header=BB1_226 Depth=1
	ld.d	$a3, $fp, 16
	vld	$vr0, $sp, 160                  # 16-byte Folded Reload
	vst	$vr0, $sp, 336
	vst	$vr0, $sp, 320
	beqz	$a3, .LBB1_234
# %bb.232:                              #   in Loop: Header=BB1_226 Depth=1
.Ltmp533:                               # EH_LABEL
	addi.d	$a0, $sp, 320
	ori	$a2, $zero, 2
	move	$a1, $fp
	jirl	$ra, $a3, 0
.Ltmp534:                               # EH_LABEL
# %bb.233:                              #   in Loop: Header=BB1_226 Depth=1
	vld	$vr0, $fp, 16
	vst	$vr0, $sp, 336
.LBB1_234:                              # %_ZNSt8functionIFfPfjEEC2ERKS2_.exit491
                                        #   in Loop: Header=BB1_226 Depth=1
.Ltmp539:                               # EH_LABEL
	addi.d	$a0, $sp, 352
	addi.d	$a1, $sp, 320
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZL5checkIfEvSt8functionIFT_PS1_jEES4_PfjPKc)
	jirl	$ra, $ra, 0
.Ltmp540:                               # EH_LABEL
# %bb.235:                              #   in Loop: Header=BB1_226 Depth=1
	ld.d	$a3, $sp, 336
	beqz	$a3, .LBB1_237
# %bb.236:                              #   in Loop: Header=BB1_226 Depth=1
.Ltmp548:                               # EH_LABEL
	addi.d	$a0, $sp, 320
	addi.d	$a1, $sp, 320
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp549:                               # EH_LABEL
.LBB1_237:                              # %_ZNSt14_Function_baseD2Ev.exit493
                                        #   in Loop: Header=BB1_226 Depth=1
	ld.d	$a3, $sp, 368
	beqz	$a3, .LBB1_239
# %bb.238:                              #   in Loop: Header=BB1_226 Depth=1
.Ltmp551:                               # EH_LABEL
	addi.d	$a0, $sp, 352
	addi.d	$a1, $sp, 352
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp552:                               # EH_LABEL
.LBB1_239:                              # %_ZNSt14_Function_baseD2Ev.exit495.preheader
                                        #   in Loop: Header=BB1_226 Depth=1
	ori	$fp, $zero, 1
	st.d	$s0, $sp, 144                   # 8-byte Folded Spill
	b	.LBB1_241
	.p2align	4, , 16
.LBB1_240:                              # %_ZNSt14_Function_baseD2Ev.exit535
                                        #   in Loop: Header=BB1_241 Depth=2
	addi.d	$fp, $fp, 1
	addi.d	$s0, $s0, 4
	beq	$fp, $s3, .LBB1_225
.LBB1_241:                              # %_ZNSt14_Function_baseD2Ev.exit495
                                        #   Parent Loop BB1_226 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a0, $s8, $fp
	bltu	$s7, $a0, .LBB1_243
# %bb.242:                              #   in Loop: Header=BB1_241 Depth=2
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	stx.w	$s2, $a0, $s0
.LBB1_243:                              #   in Loop: Header=BB1_241 Depth=2
	ld.d	$a3, $s1, 16
	vld	$vr0, $sp, 160                  # 16-byte Folded Reload
	vst	$vr0, $sp, 304
	vst	$vr0, $sp, 288
	beqz	$a3, .LBB1_246
# %bb.244:                              #   in Loop: Header=BB1_241 Depth=2
.Ltmp554:                               # EH_LABEL
	addi.d	$a0, $sp, 288
	ori	$a2, $zero, 2
	move	$a1, $s1
	jirl	$ra, $a3, 0
.Ltmp555:                               # EH_LABEL
# %bb.245:                              #   in Loop: Header=BB1_241 Depth=2
	vld	$vr0, $s1, 16
	ld.d	$a0, $s1, 16
	vst	$vr0, $sp, 304
	b	.LBB1_247
	.p2align	4, , 16
.LBB1_246:                              #   in Loop: Header=BB1_241 Depth=2
	move	$a0, $zero
.LBB1_247:                              # %_ZNSt8functionIFfPfjEEC2ERKS2_.exit505
                                        #   in Loop: Header=BB1_241 Depth=2
	ld.d	$s4, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a3, $s4, 16
	vld	$vr0, $sp, 160                  # 16-byte Folded Reload
	vst	$vr0, $sp, 272
	vst	$vr0, $sp, 256
	beqz	$a3, .LBB1_250
# %bb.248:                              #   in Loop: Header=BB1_241 Depth=2
.Ltmp560:                               # EH_LABEL
	addi.d	$a0, $sp, 256
	ori	$a2, $zero, 2
	move	$a1, $s4
	jirl	$ra, $a3, 0
.Ltmp561:                               # EH_LABEL
# %bb.249:                              #   in Loop: Header=BB1_241 Depth=2
	vld	$vr0, $s4, 16
	ld.d	$a0, $sp, 304
	vst	$vr0, $sp, 272
.LBB1_250:                              # %_ZNSt8functionIFfPfjEEC2ERKS2_.exit511
                                        #   in Loop: Header=BB1_241 Depth=2
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	st.d	$a1, $sp, 1096
	st.w	$s6, $sp, 1092
	beqz	$a0, .LBB1_315
# %bb.251:                              # %_ZNKSt8functionIFfPfjEEclES0_j.exit.i513
                                        #   in Loop: Header=BB1_241 Depth=2
	ld.d	$a3, $sp, 312
.Ltmp566:                               # EH_LABEL
	addi.d	$a0, $sp, 288
	addi.d	$a1, $sp, 1096
	addi.d	$a2, $sp, 1092
	jirl	$ra, $a3, 0
.Ltmp567:                               # EH_LABEL
# %bb.252:                              # %.noexc521
                                        #   in Loop: Header=BB1_241 Depth=2
	ld.d	$a0, $sp, 272
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	st.d	$a1, $sp, 1096
	st.w	$s6, $sp, 1092
	beqz	$a0, .LBB1_315
# %bb.253:                              # %_ZNKSt8functionIFfPfjEEclES0_j.exit9.i515
                                        #   in Loop: Header=BB1_241 Depth=2
	fmov.s	$fs1, $fa0
	ld.d	$a3, $sp, 280
.Ltmp568:                               # EH_LABEL
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 1096
	addi.d	$a2, $sp, 1092
	jirl	$ra, $a3, 0
.Ltmp569:                               # EH_LABEL
# %bb.254:                              # %.noexc523
                                        #   in Loop: Header=BB1_241 Depth=2
	fmov.s	$fs0, $fa0
	fcmp.cun.s	$fcc0, $fs1, $fa0
	bcnez	$fcc0, .LBB1_263
# %bb.255:                              #   in Loop: Header=BB1_241 Depth=2
	fcmp.cune.s	$fcc0, $fs1, $fs2
	bcnez	$fcc0, .LBB1_258
# %bb.256:                              #   in Loop: Header=BB1_241 Depth=2
	fcmp.cune.s	$fcc0, $fs0, $fs2
	bcnez	$fcc0, .LBB1_265
# %bb.257:                              #   in Loop: Header=BB1_241 Depth=2
	movfr2gr.s	$a0, $fs1
	movfr2gr.s	$a1, $fs0
	xor	$a0, $a1, $a0
	bgez	$a0, .LBB1_259
	b	.LBB1_265
	.p2align	4, , 16
.LBB1_258:                              #   in Loop: Header=BB1_241 Depth=2
	fcmp.ceq.s	$fcc0, $fs1, $fs0
	bceqz	$fcc0, .LBB1_265
.LBB1_259:                              # %_ZL5checkIfEvSt8functionIFT_PS1_jEES4_PfjPKc.exit531
                                        #   in Loop: Header=BB1_241 Depth=2
	ld.d	$a3, $sp, 272
	beqz	$a3, .LBB1_261
# %bb.260:                              #   in Loop: Header=BB1_241 Depth=2
.Ltmp585:                               # EH_LABEL
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp586:                               # EH_LABEL
.LBB1_261:                              # %_ZNSt14_Function_baseD2Ev.exit533
                                        #   in Loop: Header=BB1_241 Depth=2
	ld.d	$a3, $sp, 304
	beqz	$a3, .LBB1_240
# %bb.262:                              #   in Loop: Header=BB1_241 Depth=2
.Ltmp588:                               # EH_LABEL
	addi.d	$a0, $sp, 288
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp589:                               # EH_LABEL
	b	.LBB1_240
.LBB1_263:                              # %_ZL7isEqualff.exit.i518
                                        #   in Loop: Header=BB1_241 Depth=2
	fcmp.cor.s	$fcc0, $fs1, $fs1
	bcnez	$fcc0, .LBB1_265
# %bb.264:                              # %_ZL7isEqualff.exit.i518
                                        #   in Loop: Header=BB1_241 Depth=2
	fcmp.cun.s	$fcc0, $fs0, $fs0
	bcnez	$fcc0, .LBB1_259
.LBB1_265:                              # %_ZL7isEqualff.exit.thread.i517
.Ltmp571:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.27)
	addi.d	$a1, $a1, %pc_lo12(.L.str.27)
	ori	$a2, $zero, 11
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp572:                               # EH_LABEL
# %bb.266:                              # %.noexc524
.Ltmp573:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.25)
	addi.d	$a1, $a1, %pc_lo12(.L.str.25)
	ori	$a2, $zero, 22
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp574:                               # EH_LABEL
# %bb.267:                              # %.noexc525
.Ltmp575:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.28)
	addi.d	$a1, $a1, %pc_lo12(.L.str.28)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp576:                               # EH_LABEL
# %bb.268:                              # %.noexc526
	fcvt.d.s	$fa0, $fs1
.Ltmp577:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp578:                               # EH_LABEL
# %bb.269:                              # %.noexc527
.Ltmp579:                               # EH_LABEL
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a1, $a0, %pc_lo12(.L.str.29)
	ori	$a2, $zero, 4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp580:                               # EH_LABEL
# %bb.270:                              # %.noexc528
	fcvt.d.s	$fa0, $fs0
.Ltmp581:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp582:                               # EH_LABEL
# %bb.271:                              # %.noexc529
.Ltmp583:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.14)
	addi.d	$a1, $a1, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp584:                               # EH_LABEL
	b	.LBB1_307
.LBB1_272:                              # %.preheader685
	move	$a4, $zero
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	addi.d	$s0, $a0, 4
	lu12i.w	$s4, -2048
	lu32i.d	$s4, 0
	lu12i.w	$s6, 522240
	ori	$s7, $zero, 1024
	ori	$s8, $zero, 60
	b	.LBB1_274
	.p2align	4, , 16
.LBB1_273:                              #   in Loop: Header=BB1_274 Depth=1
	ld.d	$a4, $sp, 144                   # 8-byte Folded Reload
	addi.d	$a4, $a4, 1
	addi.d	$s0, $s0, 4
	ori	$a0, $zero, 64
	beq	$a4, $a0, .LBB1_308
.LBB1_274:                              # %vector.ph1308
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_275 Depth 2
                                        #     Child Loop BB1_278 Depth 2
	lu12i.w	$a0, -1
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	lu12i.w	$a3, 1
	vld	$vr0, $sp, 128                  # 16-byte Folded Reload
	.p2align	4, , 16
.LBB1_275:                              # %vector.body1309
                                        #   Parent Loop BB1_274 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a1, $a2, $a0
	vstx	$vr0, $a1, $a3
	addi.d	$a0, $a0, 32
	vstx	$vr0, $a1, $s5
	bnez	$a0, .LBB1_275
# %bb.276:                              # %.preheader
                                        #   in Loop: Header=BB1_274 Depth=1
	move	$s3, $zero
	st.d	$a4, $sp, 144                   # 8-byte Folded Spill
	alsl.d	$fp, $a4, $a2, 2
	b	.LBB1_278
	.p2align	4, , 16
.LBB1_277:                              # %_ZNSt14_Function_baseD2Ev.exit576
                                        #   in Loop: Header=BB1_278 Depth=2
	addi.d	$s3, $s3, 4
	beq	$s3, $s8, .LBB1_273
.LBB1_278:                              #   Parent Loop BB1_274 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a3, $s1, 16
	st.w	$s4, $fp, 0
	stx.w	$s6, $s0, $s3
	vld	$vr0, $sp, 160                  # 16-byte Folded Reload
	vst	$vr0, $sp, 224
	vst	$vr0, $sp, 240
	beqz	$a3, .LBB1_281
# %bb.279:                              #   in Loop: Header=BB1_278 Depth=2
.Ltmp591:                               # EH_LABEL
	addi.d	$a0, $sp, 224
	ori	$a2, $zero, 2
	move	$a1, $s1
	jirl	$ra, $a3, 0
.Ltmp592:                               # EH_LABEL
# %bb.280:                              #   in Loop: Header=BB1_278 Depth=2
	vld	$vr0, $s1, 16
	ld.d	$a0, $s1, 16
	vst	$vr0, $sp, 240
	b	.LBB1_282
	.p2align	4, , 16
.LBB1_281:                              #   in Loop: Header=BB1_278 Depth=2
	move	$a0, $zero
.LBB1_282:                              # %_ZNSt8functionIFfPfjEEC2ERKS2_.exit546
                                        #   in Loop: Header=BB1_278 Depth=2
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a3, $s2, 16
	vld	$vr0, $sp, 160                  # 16-byte Folded Reload
	vst	$vr0, $sp, 208
	vst	$vr0, $sp, 192
	beqz	$a3, .LBB1_285
# %bb.283:                              #   in Loop: Header=BB1_278 Depth=2
.Ltmp597:                               # EH_LABEL
	addi.d	$a0, $sp, 192
	ori	$a2, $zero, 2
	move	$a1, $s2
	jirl	$ra, $a3, 0
.Ltmp598:                               # EH_LABEL
# %bb.284:                              #   in Loop: Header=BB1_278 Depth=2
	vld	$vr0, $s2, 16
	ld.d	$a0, $sp, 240
	vst	$vr0, $sp, 208
.LBB1_285:                              # %_ZNSt8functionIFfPfjEEC2ERKS2_.exit552
                                        #   in Loop: Header=BB1_278 Depth=2
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	st.d	$a1, $sp, 1096
	st.w	$s7, $sp, 1092
	beqz	$a0, .LBB1_317
# %bb.286:                              # %_ZNKSt8functionIFfPfjEEclES0_j.exit.i554
                                        #   in Loop: Header=BB1_278 Depth=2
	ld.d	$a3, $sp, 248
.Ltmp603:                               # EH_LABEL
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 1096
	addi.d	$a2, $sp, 1092
	jirl	$ra, $a3, 0
.Ltmp604:                               # EH_LABEL
# %bb.287:                              # %.noexc562
                                        #   in Loop: Header=BB1_278 Depth=2
	ld.d	$a0, $sp, 208
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	st.d	$a1, $sp, 1096
	st.w	$s7, $sp, 1092
	beqz	$a0, .LBB1_317
# %bb.288:                              # %_ZNKSt8functionIFfPfjEEclES0_j.exit9.i556
                                        #   in Loop: Header=BB1_278 Depth=2
	fmov.s	$fs1, $fa0
	ld.d	$a3, $sp, 216
.Ltmp605:                               # EH_LABEL
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 1096
	addi.d	$a2, $sp, 1092
	jirl	$ra, $a3, 0
.Ltmp606:                               # EH_LABEL
# %bb.289:                              # %.noexc564
                                        #   in Loop: Header=BB1_278 Depth=2
	fmov.s	$fs0, $fa0
	fcmp.cun.s	$fcc0, $fs1, $fa0
	bcnez	$fcc0, .LBB1_298
# %bb.290:                              #   in Loop: Header=BB1_278 Depth=2
	fcmp.cune.s	$fcc0, $fs1, $fs2
	bcnez	$fcc0, .LBB1_293
# %bb.291:                              #   in Loop: Header=BB1_278 Depth=2
	fcmp.cune.s	$fcc0, $fs0, $fs2
	bcnez	$fcc0, .LBB1_300
# %bb.292:                              #   in Loop: Header=BB1_278 Depth=2
	movfr2gr.s	$a0, $fs1
	movfr2gr.s	$a1, $fs0
	xor	$a0, $a1, $a0
	bgez	$a0, .LBB1_294
	b	.LBB1_300
	.p2align	4, , 16
.LBB1_293:                              #   in Loop: Header=BB1_278 Depth=2
	fcmp.ceq.s	$fcc0, $fs1, $fs0
	bceqz	$fcc0, .LBB1_300
.LBB1_294:                              # %_ZL5checkIfEvSt8functionIFT_PS1_jEES4_PfjPKc.exit572
                                        #   in Loop: Header=BB1_278 Depth=2
	ld.d	$a3, $sp, 208
	beqz	$a3, .LBB1_296
# %bb.295:                              #   in Loop: Header=BB1_278 Depth=2
.Ltmp622:                               # EH_LABEL
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp623:                               # EH_LABEL
.LBB1_296:                              # %_ZNSt14_Function_baseD2Ev.exit574
                                        #   in Loop: Header=BB1_278 Depth=2
	ld.d	$a3, $sp, 240
	beqz	$a3, .LBB1_277
# %bb.297:                              #   in Loop: Header=BB1_278 Depth=2
.Ltmp625:                               # EH_LABEL
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp626:                               # EH_LABEL
	b	.LBB1_277
.LBB1_298:                              # %_ZL7isEqualff.exit.i559
                                        #   in Loop: Header=BB1_278 Depth=2
	fcmp.cor.s	$fcc0, $fs1, $fs1
	bcnez	$fcc0, .LBB1_300
# %bb.299:                              # %_ZL7isEqualff.exit.i559
                                        #   in Loop: Header=BB1_278 Depth=2
	fcmp.cun.s	$fcc0, $fs0, $fs0
	bcnez	$fcc0, .LBB1_294
.LBB1_300:                              # %_ZL7isEqualff.exit.thread.i558
.Ltmp608:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.27)
	addi.d	$a1, $a1, %pc_lo12(.L.str.27)
	ori	$a2, $zero, 11
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp609:                               # EH_LABEL
# %bb.301:                              # %.noexc565
.Ltmp610:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.26)
	addi.d	$a1, $a1, %pc_lo12(.L.str.26)
	ori	$a2, $zero, 8
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp611:                               # EH_LABEL
# %bb.302:                              # %.noexc566
.Ltmp612:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.28)
	addi.d	$a1, $a1, %pc_lo12(.L.str.28)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp613:                               # EH_LABEL
# %bb.303:                              # %.noexc567
	fcvt.d.s	$fa0, $fs1
.Ltmp614:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp615:                               # EH_LABEL
# %bb.304:                              # %.noexc568
.Ltmp616:                               # EH_LABEL
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a1, $a0, %pc_lo12(.L.str.29)
	ori	$a2, $zero, 4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp617:                               # EH_LABEL
# %bb.305:                              # %.noexc569
	fcvt.d.s	$fa0, $fs0
.Ltmp618:                               # EH_LABEL
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp619:                               # EH_LABEL
# %bb.306:                              # %.noexc570
.Ltmp620:                               # EH_LABEL
	pcalau12i	$a1, %pc_hi20(.L.str.14)
	addi.d	$a1, $a1, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp621:                               # EH_LABEL
.LBB1_307:                              # %.noexc371
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB1_308:                              # %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	fld.d	$fs2, $sp, 1104                 # 8-byte Folded Reload
	fld.d	$fs1, $sp, 1112                 # 8-byte Folded Reload
	fld.d	$fs0, $sp, 1120                 # 8-byte Folded Reload
	ld.d	$s8, $sp, 1128                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1136                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1144                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1152                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1160                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1168                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1176                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1184                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1192                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1200                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1208                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1216
	ret
.LBB1_309:                              # %.invoke
.Ltmp664:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp665:                               # EH_LABEL
# %bb.310:                              # %.cont
.LBB1_311:                              # %.invoke1177
.Ltmp655:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp656:                               # EH_LABEL
# %bb.312:                              # %.cont1178
.LBB1_313:                              # %.invoke1179
.Ltmp646:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp647:                               # EH_LABEL
# %bb.314:                              # %.cont1180
.LBB1_315:                              # %.invoke1181
.Ltmp637:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp638:                               # EH_LABEL
# %bb.316:                              # %.cont1182
.LBB1_317:                              # %.invoke1183
.Ltmp628:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp629:                               # EH_LABEL
# %bb.318:                              # %.cont1184
.LBB1_319:
.Ltmp361:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_320:
.Ltmp358:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_321:
.Ltmp343:                               # EH_LABEL
	ld.d	$a3, $sp, 720
	move	$s0, $a0
	beqz	$a3, .LBB1_369
# %bb.322:
.Ltmp344:                               # EH_LABEL
	addi.d	$a0, $sp, 704
	addi.d	$a1, $sp, 704
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp345:                               # EH_LABEL
	b	.LBB1_369
.LBB1_323:
.Ltmp346:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_324:
.Ltmp337:                               # EH_LABEL
	ld.d	$a3, $sp, 752
	move	$s0, $a0
	beqz	$a3, .LBB1_524
# %bb.325:
.Ltmp338:                               # EH_LABEL
	addi.d	$a0, $sp, 736
	addi.d	$a1, $sp, 736
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp339:                               # EH_LABEL
	b	.LBB1_524
.LBB1_326:
.Ltmp340:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_327:
.Ltmp334:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_328:
.Ltmp331:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_329:
.Ltmp316:                               # EH_LABEL
	ld.d	$a3, $sp, 784
	move	$s0, $a0
	beqz	$a3, .LBB1_375
# %bb.330:
.Ltmp317:                               # EH_LABEL
	addi.d	$a0, $sp, 768
	addi.d	$a1, $sp, 768
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp318:                               # EH_LABEL
	b	.LBB1_375
.LBB1_331:
.Ltmp319:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_332:
.Ltmp310:                               # EH_LABEL
	ld.d	$a3, $sp, 816
	move	$s0, $a0
	beqz	$a3, .LBB1_524
# %bb.333:
.Ltmp311:                               # EH_LABEL
	addi.d	$a0, $sp, 800
	addi.d	$a1, $sp, 800
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp312:                               # EH_LABEL
	b	.LBB1_524
.LBB1_334:
.Ltmp313:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_335:
.Ltmp307:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_336:
.Ltmp304:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_337:
.Ltmp289:                               # EH_LABEL
	ld.d	$a3, $sp, 848
	move	$s0, $a0
	beqz	$a3, .LBB1_381
# %bb.338:
.Ltmp290:                               # EH_LABEL
	addi.d	$a0, $sp, 832
	addi.d	$a1, $sp, 832
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp291:                               # EH_LABEL
	b	.LBB1_381
.LBB1_339:
.Ltmp292:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_340:
.Ltmp283:                               # EH_LABEL
	ld.d	$a3, $sp, 880
	move	$s0, $a0
	beqz	$a3, .LBB1_524
# %bb.341:
.Ltmp284:                               # EH_LABEL
	addi.d	$a0, $sp, 864
	addi.d	$a1, $sp, 864
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp285:                               # EH_LABEL
	b	.LBB1_524
.LBB1_342:
.Ltmp286:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_343:
.Ltmp280:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_344:
.Ltmp277:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_345:
.Ltmp262:                               # EH_LABEL
	ld.d	$a3, $sp, 912
	move	$s0, $a0
	beqz	$a3, .LBB1_387
# %bb.346:
.Ltmp263:                               # EH_LABEL
	addi.d	$a0, $sp, 896
	addi.d	$a1, $sp, 896
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp264:                               # EH_LABEL
	b	.LBB1_387
.LBB1_347:
.Ltmp265:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_348:
.Ltmp256:                               # EH_LABEL
	ld.d	$a3, $sp, 944
	move	$s0, $a0
	beqz	$a3, .LBB1_524
# %bb.349:
.Ltmp257:                               # EH_LABEL
	addi.d	$a0, $sp, 928
	addi.d	$a1, $sp, 928
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp258:                               # EH_LABEL
	b	.LBB1_524
.LBB1_350:
.Ltmp259:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_351:
.Ltmp253:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_352:
.Ltmp250:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_353:
.Ltmp235:                               # EH_LABEL
	ld.d	$a3, $sp, 976
	move	$s0, $a0
	beqz	$a3, .LBB1_393
# %bb.354:
.Ltmp236:                               # EH_LABEL
	addi.d	$a0, $sp, 960
	addi.d	$a1, $sp, 960
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp237:                               # EH_LABEL
	b	.LBB1_393
.LBB1_355:
.Ltmp238:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_356:
.Ltmp229:                               # EH_LABEL
	ld.d	$a3, $sp, 1008
	move	$s0, $a0
	beqz	$a3, .LBB1_524
# %bb.357:
.Ltmp230:                               # EH_LABEL
	addi.d	$a0, $sp, 992
	addi.d	$a1, $sp, 992
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp231:                               # EH_LABEL
	b	.LBB1_524
.LBB1_358:
.Ltmp232:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_359:
.Ltmp226:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_360:
.Ltmp223:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_361:
.Ltmp208:                               # EH_LABEL
	ld.d	$a3, $sp, 1040
	move	$s0, $a0
	beqz	$a3, .LBB1_399
# %bb.362:
.Ltmp209:                               # EH_LABEL
	addi.d	$a0, $sp, 1024
	addi.d	$a1, $sp, 1024
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp210:                               # EH_LABEL
	b	.LBB1_399
.LBB1_363:
.Ltmp211:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_364:
.Ltmp202:                               # EH_LABEL
	ld.d	$a3, $sp, 1072
	move	$s0, $a0
	beqz	$a3, .LBB1_524
# %bb.365:
.Ltmp203:                               # EH_LABEL
	addi.d	$a0, $sp, 1056
	addi.d	$a1, $sp, 1056
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp204:                               # EH_LABEL
	b	.LBB1_524
.LBB1_366:
.Ltmp205:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_367:
.Ltmp349:                               # EH_LABEL
	ld.d	$a3, $sp, 720
	move	$s0, $a0
	beqz	$a3, .LBB1_369
# %bb.368:
.Ltmp350:                               # EH_LABEL
	addi.d	$a0, $sp, 704
	addi.d	$a1, $sp, 704
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp351:                               # EH_LABEL
.LBB1_369:                              # %.body317
	ld.d	$a3, $sp, 752
	beqz	$a3, .LBB1_524
# %bb.370:
.Ltmp353:                               # EH_LABEL
	addi.d	$a0, $sp, 736
	addi.d	$a1, $sp, 736
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp354:                               # EH_LABEL
	b	.LBB1_524
.LBB1_371:
.Ltmp352:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_372:
.Ltmp355:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_373:
.Ltmp322:                               # EH_LABEL
	ld.d	$a3, $sp, 784
	move	$s0, $a0
	beqz	$a3, .LBB1_375
# %bb.374:
.Ltmp323:                               # EH_LABEL
	addi.d	$a0, $sp, 768
	addi.d	$a1, $sp, 768
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp324:                               # EH_LABEL
.LBB1_375:                              # %.body297
	ld.d	$a3, $sp, 816
	beqz	$a3, .LBB1_524
# %bb.376:
.Ltmp326:                               # EH_LABEL
	addi.d	$a0, $sp, 800
	addi.d	$a1, $sp, 800
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp327:                               # EH_LABEL
	b	.LBB1_524
.LBB1_377:
.Ltmp325:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_378:
.Ltmp328:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_379:
.Ltmp295:                               # EH_LABEL
	ld.d	$a3, $sp, 848
	move	$s0, $a0
	beqz	$a3, .LBB1_381
# %bb.380:
.Ltmp296:                               # EH_LABEL
	addi.d	$a0, $sp, 832
	addi.d	$a1, $sp, 832
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp297:                               # EH_LABEL
.LBB1_381:                              # %.body277
	ld.d	$a3, $sp, 880
	beqz	$a3, .LBB1_524
# %bb.382:
.Ltmp299:                               # EH_LABEL
	addi.d	$a0, $sp, 864
	addi.d	$a1, $sp, 864
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp300:                               # EH_LABEL
	b	.LBB1_524
.LBB1_383:
.Ltmp298:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_384:
.Ltmp301:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_385:
.Ltmp268:                               # EH_LABEL
	ld.d	$a3, $sp, 912
	move	$s0, $a0
	beqz	$a3, .LBB1_387
# %bb.386:
.Ltmp269:                               # EH_LABEL
	addi.d	$a0, $sp, 896
	addi.d	$a1, $sp, 896
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp270:                               # EH_LABEL
.LBB1_387:                              # %.body257
	ld.d	$a3, $sp, 944
	beqz	$a3, .LBB1_524
# %bb.388:
.Ltmp272:                               # EH_LABEL
	addi.d	$a0, $sp, 928
	addi.d	$a1, $sp, 928
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp273:                               # EH_LABEL
	b	.LBB1_524
.LBB1_389:
.Ltmp271:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_390:
.Ltmp274:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_391:
.Ltmp241:                               # EH_LABEL
	ld.d	$a3, $sp, 976
	move	$s0, $a0
	beqz	$a3, .LBB1_393
# %bb.392:
.Ltmp242:                               # EH_LABEL
	addi.d	$a0, $sp, 960
	addi.d	$a1, $sp, 960
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp243:                               # EH_LABEL
.LBB1_393:                              # %.body233
	ld.d	$a3, $sp, 1008
	beqz	$a3, .LBB1_524
# %bb.394:
.Ltmp245:                               # EH_LABEL
	addi.d	$a0, $sp, 992
	addi.d	$a1, $sp, 992
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp246:                               # EH_LABEL
	b	.LBB1_524
.LBB1_395:
.Ltmp244:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_396:
.Ltmp247:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_397:
.Ltmp214:                               # EH_LABEL
	ld.d	$a3, $sp, 1040
	move	$s0, $a0
	beqz	$a3, .LBB1_399
# %bb.398:
.Ltmp215:                               # EH_LABEL
	addi.d	$a0, $sp, 1024
	addi.d	$a1, $sp, 1024
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp216:                               # EH_LABEL
.LBB1_399:                              # %.body218
	ld.d	$a3, $sp, 1072
	beqz	$a3, .LBB1_524
# %bb.400:
.Ltmp218:                               # EH_LABEL
	addi.d	$a0, $sp, 1056
	addi.d	$a1, $sp, 1056
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp219:                               # EH_LABEL
	b	.LBB1_524
.LBB1_401:
.Ltmp217:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_402:
.Ltmp220:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_403:
.Ltmp199:                               # EH_LABEL
	move	$s0, $a0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB1_404:
.Ltmp529:                               # EH_LABEL
	ld.d	$a3, $sp, 368
	move	$s0, $a0
	beqz	$a3, .LBB1_524
# %bb.405:
.Ltmp530:                               # EH_LABEL
	addi.d	$a0, $sp, 352
	addi.d	$a1, $sp, 352
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp531:                               # EH_LABEL
	b	.LBB1_524
.LBB1_406:
.Ltmp532:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_407:
.Ltmp550:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_408:
.Ltmp535:                               # EH_LABEL
	ld.d	$a3, $sp, 336
	move	$s0, $a0
	beqz	$a3, .LBB1_430
# %bb.409:
.Ltmp536:                               # EH_LABEL
	addi.d	$a0, $sp, 320
	addi.d	$a1, $sp, 320
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp537:                               # EH_LABEL
	b	.LBB1_430
.LBB1_410:
.Ltmp538:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_411:
.Ltmp553:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_412:
.Ltmp465:                               # EH_LABEL
	ld.d	$a3, $sp, 496
	move	$s0, $a0
	beqz	$a3, .LBB1_524
# %bb.413:
.Ltmp466:                               # EH_LABEL
	addi.d	$a0, $sp, 480
	addi.d	$a1, $sp, 480
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp467:                               # EH_LABEL
	b	.LBB1_524
.LBB1_414:
.Ltmp468:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_415:
.Ltmp486:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_416:
.Ltmp471:                               # EH_LABEL
	ld.d	$a3, $sp, 464
	move	$s0, $a0
	beqz	$a3, .LBB1_436
# %bb.417:
.Ltmp472:                               # EH_LABEL
	addi.d	$a0, $sp, 448
	addi.d	$a1, $sp, 448
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp473:                               # EH_LABEL
	b	.LBB1_436
.LBB1_418:
.Ltmp474:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_419:
.Ltmp489:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_420:
.Ltmp388:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_421:
.Ltmp364:                               # EH_LABEL
	ld.d	$a3, $sp, 688
	move	$s0, $a0
	beqz	$a3, .LBB1_524
# %bb.422:
.Ltmp365:                               # EH_LABEL
	addi.d	$a0, $sp, 672
	addi.d	$a1, $sp, 672
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp366:                               # EH_LABEL
	b	.LBB1_524
.LBB1_423:
.Ltmp367:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_424:
.Ltmp385:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_425:
.Ltmp370:                               # EH_LABEL
	ld.d	$a3, $sp, 656
	move	$s0, $a0
	beqz	$a3, .LBB1_442
# %bb.426:
.Ltmp371:                               # EH_LABEL
	addi.d	$a0, $sp, 640
	addi.d	$a1, $sp, 640
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp372:                               # EH_LABEL
	b	.LBB1_442
.LBB1_427:
.Ltmp373:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_428:
.Ltmp541:                               # EH_LABEL
	ld.d	$a3, $sp, 336
	move	$s0, $a0
	beqz	$a3, .LBB1_430
# %bb.429:
.Ltmp542:                               # EH_LABEL
	addi.d	$a0, $sp, 320
	addi.d	$a1, $sp, 320
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp543:                               # EH_LABEL
.LBB1_430:                              # %.body489
	ld.d	$a3, $sp, 368
	beqz	$a3, .LBB1_524
# %bb.431:
.Ltmp545:                               # EH_LABEL
	addi.d	$a0, $sp, 352
	addi.d	$a1, $sp, 352
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp546:                               # EH_LABEL
	b	.LBB1_524
.LBB1_432:
.Ltmp544:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_433:
.Ltmp547:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_434:
.Ltmp477:                               # EH_LABEL
	ld.d	$a3, $sp, 464
	move	$s0, $a0
	beqz	$a3, .LBB1_436
# %bb.435:
.Ltmp478:                               # EH_LABEL
	addi.d	$a0, $sp, 448
	addi.d	$a1, $sp, 448
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp479:                               # EH_LABEL
.LBB1_436:                              # %.body429
	ld.d	$a3, $sp, 496
	beqz	$a3, .LBB1_524
# %bb.437:
.Ltmp481:                               # EH_LABEL
	addi.d	$a0, $sp, 480
	addi.d	$a1, $sp, 480
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp482:                               # EH_LABEL
	b	.LBB1_524
.LBB1_438:
.Ltmp480:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_439:
.Ltmp483:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_440:
.Ltmp376:                               # EH_LABEL
	ld.d	$a3, $sp, 656
	move	$s0, $a0
	beqz	$a3, .LBB1_442
# %bb.441:
.Ltmp377:                               # EH_LABEL
	addi.d	$a0, $sp, 640
	addi.d	$a1, $sp, 640
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp378:                               # EH_LABEL
.LBB1_442:                              # %.body337
	ld.d	$a3, $sp, 688
	beqz	$a3, .LBB1_524
# %bb.443:
.Ltmp380:                               # EH_LABEL
	addi.d	$a0, $sp, 672
	addi.d	$a1, $sp, 672
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp381:                               # EH_LABEL
	b	.LBB1_524
.LBB1_444:
.Ltmp379:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_445:
.Ltmp382:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_446:
.Ltmp624:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_447:
.Ltmp593:                               # EH_LABEL
	ld.d	$a3, $sp, 240
	move	$s0, $a0
	beqz	$a3, .LBB1_524
# %bb.448:
.Ltmp594:                               # EH_LABEL
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp595:                               # EH_LABEL
	b	.LBB1_524
.LBB1_449:
.Ltmp596:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_450:
.Ltmp627:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_451:
.Ltmp599:                               # EH_LABEL
	ld.d	$a3, $sp, 208
	move	$s0, $a0
	beqz	$a3, .LBB1_494
# %bb.452:
.Ltmp600:                               # EH_LABEL
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp601:                               # EH_LABEL
	b	.LBB1_494
.LBB1_453:
.Ltmp602:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_454:
.Ltmp587:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_455:
.Ltmp556:                               # EH_LABEL
	ld.d	$a3, $sp, 304
	move	$s0, $a0
	beqz	$a3, .LBB1_524
# %bb.456:
.Ltmp557:                               # EH_LABEL
	addi.d	$a0, $sp, 288
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp558:                               # EH_LABEL
	b	.LBB1_524
.LBB1_457:
.Ltmp559:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_458:
.Ltmp590:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_459:
.Ltmp562:                               # EH_LABEL
	ld.d	$a3, $sp, 272
	move	$s0, $a0
	beqz	$a3, .LBB1_501
# %bb.460:
.Ltmp563:                               # EH_LABEL
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp564:                               # EH_LABEL
	b	.LBB1_501
.LBB1_461:
.Ltmp565:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_462:
.Ltmp523:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_463:
.Ltmp492:                               # EH_LABEL
	ld.d	$a3, $sp, 432
	move	$s0, $a0
	beqz	$a3, .LBB1_524
# %bb.464:
.Ltmp493:                               # EH_LABEL
	addi.d	$a0, $sp, 416
	addi.d	$a1, $sp, 416
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp494:                               # EH_LABEL
	b	.LBB1_524
.LBB1_465:
.Ltmp495:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_466:
.Ltmp526:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_467:
.Ltmp498:                               # EH_LABEL
	ld.d	$a3, $sp, 400
	move	$s0, $a0
	beqz	$a3, .LBB1_508
# %bb.468:
.Ltmp499:                               # EH_LABEL
	addi.d	$a0, $sp, 384
	addi.d	$a1, $sp, 384
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp500:                               # EH_LABEL
	b	.LBB1_508
.LBB1_469:
.Ltmp501:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_470:
.Ltmp459:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_471:
.Ltmp428:                               # EH_LABEL
	ld.d	$a3, $sp, 560
	move	$s0, $a0
	beqz	$a3, .LBB1_524
# %bb.472:
.Ltmp429:                               # EH_LABEL
	addi.d	$a0, $sp, 544
	addi.d	$a1, $sp, 544
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp430:                               # EH_LABEL
	b	.LBB1_524
.LBB1_473:
.Ltmp431:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_474:
.Ltmp462:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_475:
.Ltmp434:                               # EH_LABEL
	ld.d	$a3, $sp, 528
	move	$s0, $a0
	beqz	$a3, .LBB1_515
# %bb.476:
.Ltmp435:                               # EH_LABEL
	addi.d	$a0, $sp, 512
	addi.d	$a1, $sp, 512
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp436:                               # EH_LABEL
	b	.LBB1_515
.LBB1_477:
.Ltmp437:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_478:
.Ltmp422:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_479:
.Ltmp391:                               # EH_LABEL
	ld.d	$a3, $sp, 624
	move	$s0, $a0
	beqz	$a3, .LBB1_524
# %bb.480:
.Ltmp392:                               # EH_LABEL
	addi.d	$a0, $sp, 608
	addi.d	$a1, $sp, 608
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp393:                               # EH_LABEL
	b	.LBB1_524
.LBB1_481:
.Ltmp394:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_482:
.Ltmp425:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_483:
.Ltmp397:                               # EH_LABEL
	ld.d	$a3, $sp, 592
	move	$s0, $a0
	beqz	$a3, .LBB1_522
# %bb.484:
.Ltmp398:                               # EH_LABEL
	addi.d	$a0, $sp, 576
	addi.d	$a1, $sp, 576
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp399:                               # EH_LABEL
	b	.LBB1_522
.LBB1_485:
.Ltmp400:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_486:                              # %.loopexit
.Ltmp607:                               # EH_LABEL
	b	.LBB1_492
.LBB1_487:                              # %.loopexit686
.Ltmp570:                               # EH_LABEL
	b	.LBB1_499
.LBB1_488:                              # %.loopexit693
.Ltmp506:                               # EH_LABEL
	b	.LBB1_506
.LBB1_489:                              # %.loopexit701
.Ltmp442:                               # EH_LABEL
	b	.LBB1_513
.LBB1_490:                              # %.loopexit709
.Ltmp405:                               # EH_LABEL
	b	.LBB1_520
.LBB1_491:                              # %.loopexit.split-lp
.Ltmp630:                               # EH_LABEL
.LBB1_492:
	move	$s0, $a0
	ld.d	$a3, $sp, 208
	beqz	$a3, .LBB1_494
# %bb.493:
.Ltmp631:                               # EH_LABEL
	addi.d	$a0, $sp, 192
	addi.d	$a1, $sp, 192
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp632:                               # EH_LABEL
.LBB1_494:                              # %.body550
	ld.d	$a3, $sp, 240
	beqz	$a3, .LBB1_524
# %bb.495:
.Ltmp634:                               # EH_LABEL
	addi.d	$a0, $sp, 224
	addi.d	$a1, $sp, 224
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp635:                               # EH_LABEL
	b	.LBB1_524
.LBB1_496:
.Ltmp636:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_497:
.Ltmp633:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_498:                              # %.loopexit.split-lp687
.Ltmp639:                               # EH_LABEL
.LBB1_499:
	move	$s0, $a0
	ld.d	$a3, $sp, 272
	beqz	$a3, .LBB1_501
# %bb.500:
.Ltmp640:                               # EH_LABEL
	addi.d	$a0, $sp, 256
	addi.d	$a1, $sp, 256
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp641:                               # EH_LABEL
.LBB1_501:                              # %.body509
	ld.d	$a3, $sp, 304
	beqz	$a3, .LBB1_524
# %bb.502:
.Ltmp643:                               # EH_LABEL
	addi.d	$a0, $sp, 288
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp644:                               # EH_LABEL
	b	.LBB1_524
.LBB1_503:
.Ltmp645:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_504:
.Ltmp642:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_505:                              # %.loopexit.split-lp694
.Ltmp648:                               # EH_LABEL
.LBB1_506:
	move	$s0, $a0
	ld.d	$a3, $sp, 400
	beqz	$a3, .LBB1_508
# %bb.507:
.Ltmp649:                               # EH_LABEL
	addi.d	$a0, $sp, 384
	addi.d	$a1, $sp, 384
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp650:                               # EH_LABEL
.LBB1_508:                              # %.body449
	ld.d	$a3, $sp, 432
	beqz	$a3, .LBB1_524
# %bb.509:
.Ltmp652:                               # EH_LABEL
	addi.d	$a0, $sp, 416
	addi.d	$a1, $sp, 416
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp653:                               # EH_LABEL
	b	.LBB1_524
.LBB1_510:
.Ltmp654:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_511:
.Ltmp651:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_512:                              # %.loopexit.split-lp702
.Ltmp657:                               # EH_LABEL
.LBB1_513:
	move	$s0, $a0
	ld.d	$a3, $sp, 528
	beqz	$a3, .LBB1_515
# %bb.514:
.Ltmp658:                               # EH_LABEL
	addi.d	$a0, $sp, 512
	addi.d	$a1, $sp, 512
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp659:                               # EH_LABEL
.LBB1_515:                              # %.body389
	ld.d	$a3, $sp, 560
	beqz	$a3, .LBB1_524
# %bb.516:
.Ltmp661:                               # EH_LABEL
	addi.d	$a0, $sp, 544
	addi.d	$a1, $sp, 544
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp662:                               # EH_LABEL
	b	.LBB1_524
.LBB1_517:
.Ltmp663:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_518:
.Ltmp660:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_519:                              # %.loopexit.split-lp710
.Ltmp666:                               # EH_LABEL
.LBB1_520:
	move	$s0, $a0
	ld.d	$a3, $sp, 592
	beqz	$a3, .LBB1_522
# %bb.521:
.Ltmp667:                               # EH_LABEL
	addi.d	$a0, $sp, 576
	addi.d	$a1, $sp, 576
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp668:                               # EH_LABEL
.LBB1_522:                              # %.body357
	ld.d	$a3, $sp, 624
	beqz	$a3, .LBB1_524
# %bb.523:
.Ltmp670:                               # EH_LABEL
	addi.d	$a0, $sp, 608
	addi.d	$a1, $sp, 608
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp671:                               # EH_LABEL
.LBB1_524:                              # %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit583
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB1_525:
.Ltmp672:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_526:
.Ltmp669:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	_ZL19checkVectorFunctionIfEvSt8functionIFT_PS1_jEES4_PKc, .Lfunc_end1-_ZL19checkVectorFunctionIfEvSt8functionIFT_PS1_jEES4_PKc
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
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
	.uleb128 .Lfunc_begin1-.Lfunc_begin1    # >> Call Site 1 <<
	.uleb128 .Ltmp195-.Lfunc_begin1         #   Call between .Lfunc_begin1 and .Ltmp195
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp195-.Lfunc_begin1         # >> Call Site 2 <<
	.uleb128 .Ltmp198-.Ltmp195              #   Call between .Ltmp195 and .Ltmp198
	.uleb128 .Ltmp199-.Lfunc_begin1         #     jumps to .Ltmp199
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp200-.Lfunc_begin1         # >> Call Site 3 <<
	.uleb128 .Ltmp201-.Ltmp200              #   Call between .Ltmp200 and .Ltmp201
	.uleb128 .Ltmp202-.Lfunc_begin1         #     jumps to .Ltmp202
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp206-.Lfunc_begin1         # >> Call Site 4 <<
	.uleb128 .Ltmp207-.Ltmp206              #   Call between .Ltmp206 and .Ltmp207
	.uleb128 .Ltmp208-.Lfunc_begin1         #     jumps to .Ltmp208
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp212-.Lfunc_begin1         # >> Call Site 5 <<
	.uleb128 .Ltmp213-.Ltmp212              #   Call between .Ltmp212 and .Ltmp213
	.uleb128 .Ltmp214-.Lfunc_begin1         #     jumps to .Ltmp214
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp221-.Lfunc_begin1         # >> Call Site 6 <<
	.uleb128 .Ltmp222-.Ltmp221              #   Call between .Ltmp221 and .Ltmp222
	.uleb128 .Ltmp223-.Lfunc_begin1         #     jumps to .Ltmp223
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp224-.Lfunc_begin1         # >> Call Site 7 <<
	.uleb128 .Ltmp225-.Ltmp224              #   Call between .Ltmp224 and .Ltmp225
	.uleb128 .Ltmp226-.Lfunc_begin1         #     jumps to .Ltmp226
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp227-.Lfunc_begin1         # >> Call Site 8 <<
	.uleb128 .Ltmp228-.Ltmp227              #   Call between .Ltmp227 and .Ltmp228
	.uleb128 .Ltmp229-.Lfunc_begin1         #     jumps to .Ltmp229
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp233-.Lfunc_begin1         # >> Call Site 9 <<
	.uleb128 .Ltmp234-.Ltmp233              #   Call between .Ltmp233 and .Ltmp234
	.uleb128 .Ltmp235-.Lfunc_begin1         #     jumps to .Ltmp235
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp239-.Lfunc_begin1         # >> Call Site 10 <<
	.uleb128 .Ltmp240-.Ltmp239              #   Call between .Ltmp239 and .Ltmp240
	.uleb128 .Ltmp241-.Lfunc_begin1         #     jumps to .Ltmp241
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp248-.Lfunc_begin1         # >> Call Site 11 <<
	.uleb128 .Ltmp249-.Ltmp248              #   Call between .Ltmp248 and .Ltmp249
	.uleb128 .Ltmp250-.Lfunc_begin1         #     jumps to .Ltmp250
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp251-.Lfunc_begin1         # >> Call Site 12 <<
	.uleb128 .Ltmp252-.Ltmp251              #   Call between .Ltmp251 and .Ltmp252
	.uleb128 .Ltmp253-.Lfunc_begin1         #     jumps to .Ltmp253
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp254-.Lfunc_begin1         # >> Call Site 13 <<
	.uleb128 .Ltmp255-.Ltmp254              #   Call between .Ltmp254 and .Ltmp255
	.uleb128 .Ltmp256-.Lfunc_begin1         #     jumps to .Ltmp256
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp260-.Lfunc_begin1         # >> Call Site 14 <<
	.uleb128 .Ltmp261-.Ltmp260              #   Call between .Ltmp260 and .Ltmp261
	.uleb128 .Ltmp262-.Lfunc_begin1         #     jumps to .Ltmp262
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp266-.Lfunc_begin1         # >> Call Site 15 <<
	.uleb128 .Ltmp267-.Ltmp266              #   Call between .Ltmp266 and .Ltmp267
	.uleb128 .Ltmp268-.Lfunc_begin1         #     jumps to .Ltmp268
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp275-.Lfunc_begin1         # >> Call Site 16 <<
	.uleb128 .Ltmp276-.Ltmp275              #   Call between .Ltmp275 and .Ltmp276
	.uleb128 .Ltmp277-.Lfunc_begin1         #     jumps to .Ltmp277
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp278-.Lfunc_begin1         # >> Call Site 17 <<
	.uleb128 .Ltmp279-.Ltmp278              #   Call between .Ltmp278 and .Ltmp279
	.uleb128 .Ltmp280-.Lfunc_begin1         #     jumps to .Ltmp280
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp281-.Lfunc_begin1         # >> Call Site 18 <<
	.uleb128 .Ltmp282-.Ltmp281              #   Call between .Ltmp281 and .Ltmp282
	.uleb128 .Ltmp283-.Lfunc_begin1         #     jumps to .Ltmp283
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp287-.Lfunc_begin1         # >> Call Site 19 <<
	.uleb128 .Ltmp288-.Ltmp287              #   Call between .Ltmp287 and .Ltmp288
	.uleb128 .Ltmp289-.Lfunc_begin1         #     jumps to .Ltmp289
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp293-.Lfunc_begin1         # >> Call Site 20 <<
	.uleb128 .Ltmp294-.Ltmp293              #   Call between .Ltmp293 and .Ltmp294
	.uleb128 .Ltmp295-.Lfunc_begin1         #     jumps to .Ltmp295
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp302-.Lfunc_begin1         # >> Call Site 21 <<
	.uleb128 .Ltmp303-.Ltmp302              #   Call between .Ltmp302 and .Ltmp303
	.uleb128 .Ltmp304-.Lfunc_begin1         #     jumps to .Ltmp304
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp305-.Lfunc_begin1         # >> Call Site 22 <<
	.uleb128 .Ltmp306-.Ltmp305              #   Call between .Ltmp305 and .Ltmp306
	.uleb128 .Ltmp307-.Lfunc_begin1         #     jumps to .Ltmp307
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp308-.Lfunc_begin1         # >> Call Site 23 <<
	.uleb128 .Ltmp309-.Ltmp308              #   Call between .Ltmp308 and .Ltmp309
	.uleb128 .Ltmp310-.Lfunc_begin1         #     jumps to .Ltmp310
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp314-.Lfunc_begin1         # >> Call Site 24 <<
	.uleb128 .Ltmp315-.Ltmp314              #   Call between .Ltmp314 and .Ltmp315
	.uleb128 .Ltmp316-.Lfunc_begin1         #     jumps to .Ltmp316
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp320-.Lfunc_begin1         # >> Call Site 25 <<
	.uleb128 .Ltmp321-.Ltmp320              #   Call between .Ltmp320 and .Ltmp321
	.uleb128 .Ltmp322-.Lfunc_begin1         #     jumps to .Ltmp322
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp329-.Lfunc_begin1         # >> Call Site 26 <<
	.uleb128 .Ltmp330-.Ltmp329              #   Call between .Ltmp329 and .Ltmp330
	.uleb128 .Ltmp331-.Lfunc_begin1         #     jumps to .Ltmp331
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp332-.Lfunc_begin1         # >> Call Site 27 <<
	.uleb128 .Ltmp333-.Ltmp332              #   Call between .Ltmp332 and .Ltmp333
	.uleb128 .Ltmp334-.Lfunc_begin1         #     jumps to .Ltmp334
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp333-.Lfunc_begin1         # >> Call Site 28 <<
	.uleb128 .Ltmp335-.Ltmp333              #   Call between .Ltmp333 and .Ltmp335
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp335-.Lfunc_begin1         # >> Call Site 29 <<
	.uleb128 .Ltmp336-.Ltmp335              #   Call between .Ltmp335 and .Ltmp336
	.uleb128 .Ltmp337-.Lfunc_begin1         #     jumps to .Ltmp337
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp341-.Lfunc_begin1         # >> Call Site 30 <<
	.uleb128 .Ltmp342-.Ltmp341              #   Call between .Ltmp341 and .Ltmp342
	.uleb128 .Ltmp343-.Lfunc_begin1         #     jumps to .Ltmp343
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp347-.Lfunc_begin1         # >> Call Site 31 <<
	.uleb128 .Ltmp348-.Ltmp347              #   Call between .Ltmp347 and .Ltmp348
	.uleb128 .Ltmp349-.Lfunc_begin1         #     jumps to .Ltmp349
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp356-.Lfunc_begin1         # >> Call Site 32 <<
	.uleb128 .Ltmp357-.Ltmp356              #   Call between .Ltmp356 and .Ltmp357
	.uleb128 .Ltmp358-.Lfunc_begin1         #     jumps to .Ltmp358
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp359-.Lfunc_begin1         # >> Call Site 33 <<
	.uleb128 .Ltmp360-.Ltmp359              #   Call between .Ltmp359 and .Ltmp360
	.uleb128 .Ltmp361-.Lfunc_begin1         #     jumps to .Ltmp361
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp362-.Lfunc_begin1         # >> Call Site 34 <<
	.uleb128 .Ltmp363-.Ltmp362              #   Call between .Ltmp362 and .Ltmp363
	.uleb128 .Ltmp364-.Lfunc_begin1         #     jumps to .Ltmp364
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp368-.Lfunc_begin1         # >> Call Site 35 <<
	.uleb128 .Ltmp369-.Ltmp368              #   Call between .Ltmp368 and .Ltmp369
	.uleb128 .Ltmp370-.Lfunc_begin1         #     jumps to .Ltmp370
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp374-.Lfunc_begin1         # >> Call Site 36 <<
	.uleb128 .Ltmp375-.Ltmp374              #   Call between .Ltmp374 and .Ltmp375
	.uleb128 .Ltmp376-.Lfunc_begin1         #     jumps to .Ltmp376
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp383-.Lfunc_begin1         # >> Call Site 37 <<
	.uleb128 .Ltmp384-.Ltmp383              #   Call between .Ltmp383 and .Ltmp384
	.uleb128 .Ltmp385-.Lfunc_begin1         #     jumps to .Ltmp385
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp386-.Lfunc_begin1         # >> Call Site 38 <<
	.uleb128 .Ltmp387-.Ltmp386              #   Call between .Ltmp386 and .Ltmp387
	.uleb128 .Ltmp388-.Lfunc_begin1         #     jumps to .Ltmp388
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp389-.Lfunc_begin1         # >> Call Site 39 <<
	.uleb128 .Ltmp390-.Ltmp389              #   Call between .Ltmp389 and .Ltmp390
	.uleb128 .Ltmp391-.Lfunc_begin1         #     jumps to .Ltmp391
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp395-.Lfunc_begin1         # >> Call Site 40 <<
	.uleb128 .Ltmp396-.Ltmp395              #   Call between .Ltmp395 and .Ltmp396
	.uleb128 .Ltmp397-.Lfunc_begin1         #     jumps to .Ltmp397
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp401-.Lfunc_begin1         # >> Call Site 41 <<
	.uleb128 .Ltmp404-.Ltmp401              #   Call between .Ltmp401 and .Ltmp404
	.uleb128 .Ltmp405-.Lfunc_begin1         #     jumps to .Ltmp405
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp420-.Lfunc_begin1         # >> Call Site 42 <<
	.uleb128 .Ltmp421-.Ltmp420              #   Call between .Ltmp420 and .Ltmp421
	.uleb128 .Ltmp422-.Lfunc_begin1         #     jumps to .Ltmp422
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp423-.Lfunc_begin1         # >> Call Site 43 <<
	.uleb128 .Ltmp424-.Ltmp423              #   Call between .Ltmp423 and .Ltmp424
	.uleb128 .Ltmp425-.Lfunc_begin1         #     jumps to .Ltmp425
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp406-.Lfunc_begin1         # >> Call Site 44 <<
	.uleb128 .Ltmp419-.Ltmp406              #   Call between .Ltmp406 and .Ltmp419
	.uleb128 .Ltmp666-.Lfunc_begin1         #     jumps to .Ltmp666
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp426-.Lfunc_begin1         # >> Call Site 45 <<
	.uleb128 .Ltmp427-.Ltmp426              #   Call between .Ltmp426 and .Ltmp427
	.uleb128 .Ltmp428-.Lfunc_begin1         #     jumps to .Ltmp428
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp432-.Lfunc_begin1         # >> Call Site 46 <<
	.uleb128 .Ltmp433-.Ltmp432              #   Call between .Ltmp432 and .Ltmp433
	.uleb128 .Ltmp434-.Lfunc_begin1         #     jumps to .Ltmp434
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp438-.Lfunc_begin1         # >> Call Site 47 <<
	.uleb128 .Ltmp441-.Ltmp438              #   Call between .Ltmp438 and .Ltmp441
	.uleb128 .Ltmp442-.Lfunc_begin1         #     jumps to .Ltmp442
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp457-.Lfunc_begin1         # >> Call Site 48 <<
	.uleb128 .Ltmp458-.Ltmp457              #   Call between .Ltmp457 and .Ltmp458
	.uleb128 .Ltmp459-.Lfunc_begin1         #     jumps to .Ltmp459
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp460-.Lfunc_begin1         # >> Call Site 49 <<
	.uleb128 .Ltmp461-.Ltmp460              #   Call between .Ltmp460 and .Ltmp461
	.uleb128 .Ltmp462-.Lfunc_begin1         #     jumps to .Ltmp462
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp443-.Lfunc_begin1         # >> Call Site 50 <<
	.uleb128 .Ltmp456-.Ltmp443              #   Call between .Ltmp443 and .Ltmp456
	.uleb128 .Ltmp657-.Lfunc_begin1         #     jumps to .Ltmp657
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp463-.Lfunc_begin1         # >> Call Site 51 <<
	.uleb128 .Ltmp464-.Ltmp463              #   Call between .Ltmp463 and .Ltmp464
	.uleb128 .Ltmp465-.Lfunc_begin1         #     jumps to .Ltmp465
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp469-.Lfunc_begin1         # >> Call Site 52 <<
	.uleb128 .Ltmp470-.Ltmp469              #   Call between .Ltmp469 and .Ltmp470
	.uleb128 .Ltmp471-.Lfunc_begin1         #     jumps to .Ltmp471
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp475-.Lfunc_begin1         # >> Call Site 53 <<
	.uleb128 .Ltmp476-.Ltmp475              #   Call between .Ltmp475 and .Ltmp476
	.uleb128 .Ltmp477-.Lfunc_begin1         #     jumps to .Ltmp477
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp484-.Lfunc_begin1         # >> Call Site 54 <<
	.uleb128 .Ltmp485-.Ltmp484              #   Call between .Ltmp484 and .Ltmp485
	.uleb128 .Ltmp486-.Lfunc_begin1         #     jumps to .Ltmp486
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp487-.Lfunc_begin1         # >> Call Site 55 <<
	.uleb128 .Ltmp488-.Ltmp487              #   Call between .Ltmp487 and .Ltmp488
	.uleb128 .Ltmp489-.Lfunc_begin1         #     jumps to .Ltmp489
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp490-.Lfunc_begin1         # >> Call Site 56 <<
	.uleb128 .Ltmp491-.Ltmp490              #   Call between .Ltmp490 and .Ltmp491
	.uleb128 .Ltmp492-.Lfunc_begin1         #     jumps to .Ltmp492
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp496-.Lfunc_begin1         # >> Call Site 57 <<
	.uleb128 .Ltmp497-.Ltmp496              #   Call between .Ltmp496 and .Ltmp497
	.uleb128 .Ltmp498-.Lfunc_begin1         #     jumps to .Ltmp498
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp502-.Lfunc_begin1         # >> Call Site 58 <<
	.uleb128 .Ltmp505-.Ltmp502              #   Call between .Ltmp502 and .Ltmp505
	.uleb128 .Ltmp506-.Lfunc_begin1         #     jumps to .Ltmp506
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp521-.Lfunc_begin1         # >> Call Site 59 <<
	.uleb128 .Ltmp522-.Ltmp521              #   Call between .Ltmp521 and .Ltmp522
	.uleb128 .Ltmp523-.Lfunc_begin1         #     jumps to .Ltmp523
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp524-.Lfunc_begin1         # >> Call Site 60 <<
	.uleb128 .Ltmp525-.Ltmp524              #   Call between .Ltmp524 and .Ltmp525
	.uleb128 .Ltmp526-.Lfunc_begin1         #     jumps to .Ltmp526
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp507-.Lfunc_begin1         # >> Call Site 61 <<
	.uleb128 .Ltmp520-.Ltmp507              #   Call between .Ltmp507 and .Ltmp520
	.uleb128 .Ltmp648-.Lfunc_begin1         #     jumps to .Ltmp648
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp527-.Lfunc_begin1         # >> Call Site 62 <<
	.uleb128 .Ltmp528-.Ltmp527              #   Call between .Ltmp527 and .Ltmp528
	.uleb128 .Ltmp529-.Lfunc_begin1         #     jumps to .Ltmp529
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp533-.Lfunc_begin1         # >> Call Site 63 <<
	.uleb128 .Ltmp534-.Ltmp533              #   Call between .Ltmp533 and .Ltmp534
	.uleb128 .Ltmp535-.Lfunc_begin1         #     jumps to .Ltmp535
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp539-.Lfunc_begin1         # >> Call Site 64 <<
	.uleb128 .Ltmp540-.Ltmp539              #   Call between .Ltmp539 and .Ltmp540
	.uleb128 .Ltmp541-.Lfunc_begin1         #     jumps to .Ltmp541
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp548-.Lfunc_begin1         # >> Call Site 65 <<
	.uleb128 .Ltmp549-.Ltmp548              #   Call between .Ltmp548 and .Ltmp549
	.uleb128 .Ltmp550-.Lfunc_begin1         #     jumps to .Ltmp550
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp551-.Lfunc_begin1         # >> Call Site 66 <<
	.uleb128 .Ltmp552-.Ltmp551              #   Call between .Ltmp551 and .Ltmp552
	.uleb128 .Ltmp553-.Lfunc_begin1         #     jumps to .Ltmp553
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp554-.Lfunc_begin1         # >> Call Site 67 <<
	.uleb128 .Ltmp555-.Ltmp554              #   Call between .Ltmp554 and .Ltmp555
	.uleb128 .Ltmp556-.Lfunc_begin1         #     jumps to .Ltmp556
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp560-.Lfunc_begin1         # >> Call Site 68 <<
	.uleb128 .Ltmp561-.Ltmp560              #   Call between .Ltmp560 and .Ltmp561
	.uleb128 .Ltmp562-.Lfunc_begin1         #     jumps to .Ltmp562
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp566-.Lfunc_begin1         # >> Call Site 69 <<
	.uleb128 .Ltmp569-.Ltmp566              #   Call between .Ltmp566 and .Ltmp569
	.uleb128 .Ltmp570-.Lfunc_begin1         #     jumps to .Ltmp570
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp585-.Lfunc_begin1         # >> Call Site 70 <<
	.uleb128 .Ltmp586-.Ltmp585              #   Call between .Ltmp585 and .Ltmp586
	.uleb128 .Ltmp587-.Lfunc_begin1         #     jumps to .Ltmp587
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp588-.Lfunc_begin1         # >> Call Site 71 <<
	.uleb128 .Ltmp589-.Ltmp588              #   Call between .Ltmp588 and .Ltmp589
	.uleb128 .Ltmp590-.Lfunc_begin1         #     jumps to .Ltmp590
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp571-.Lfunc_begin1         # >> Call Site 72 <<
	.uleb128 .Ltmp584-.Ltmp571              #   Call between .Ltmp571 and .Ltmp584
	.uleb128 .Ltmp639-.Lfunc_begin1         #     jumps to .Ltmp639
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp591-.Lfunc_begin1         # >> Call Site 73 <<
	.uleb128 .Ltmp592-.Ltmp591              #   Call between .Ltmp591 and .Ltmp592
	.uleb128 .Ltmp593-.Lfunc_begin1         #     jumps to .Ltmp593
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp597-.Lfunc_begin1         # >> Call Site 74 <<
	.uleb128 .Ltmp598-.Ltmp597              #   Call between .Ltmp597 and .Ltmp598
	.uleb128 .Ltmp599-.Lfunc_begin1         #     jumps to .Ltmp599
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp603-.Lfunc_begin1         # >> Call Site 75 <<
	.uleb128 .Ltmp606-.Ltmp603              #   Call between .Ltmp603 and .Ltmp606
	.uleb128 .Ltmp607-.Lfunc_begin1         #     jumps to .Ltmp607
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp622-.Lfunc_begin1         # >> Call Site 76 <<
	.uleb128 .Ltmp623-.Ltmp622              #   Call between .Ltmp622 and .Ltmp623
	.uleb128 .Ltmp624-.Lfunc_begin1         #     jumps to .Ltmp624
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp625-.Lfunc_begin1         # >> Call Site 77 <<
	.uleb128 .Ltmp626-.Ltmp625              #   Call between .Ltmp625 and .Ltmp626
	.uleb128 .Ltmp627-.Lfunc_begin1         #     jumps to .Ltmp627
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp608-.Lfunc_begin1         # >> Call Site 78 <<
	.uleb128 .Ltmp621-.Ltmp608              #   Call between .Ltmp608 and .Ltmp621
	.uleb128 .Ltmp630-.Lfunc_begin1         #     jumps to .Ltmp630
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp621-.Lfunc_begin1         # >> Call Site 79 <<
	.uleb128 .Ltmp664-.Ltmp621              #   Call between .Ltmp621 and .Ltmp664
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp664-.Lfunc_begin1         # >> Call Site 80 <<
	.uleb128 .Ltmp665-.Ltmp664              #   Call between .Ltmp664 and .Ltmp665
	.uleb128 .Ltmp666-.Lfunc_begin1         #     jumps to .Ltmp666
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp655-.Lfunc_begin1         # >> Call Site 81 <<
	.uleb128 .Ltmp656-.Ltmp655              #   Call between .Ltmp655 and .Ltmp656
	.uleb128 .Ltmp657-.Lfunc_begin1         #     jumps to .Ltmp657
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp646-.Lfunc_begin1         # >> Call Site 82 <<
	.uleb128 .Ltmp647-.Ltmp646              #   Call between .Ltmp646 and .Ltmp647
	.uleb128 .Ltmp648-.Lfunc_begin1         #     jumps to .Ltmp648
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp637-.Lfunc_begin1         # >> Call Site 83 <<
	.uleb128 .Ltmp638-.Ltmp637              #   Call between .Ltmp637 and .Ltmp638
	.uleb128 .Ltmp639-.Lfunc_begin1         #     jumps to .Ltmp639
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp628-.Lfunc_begin1         # >> Call Site 84 <<
	.uleb128 .Ltmp629-.Ltmp628              #   Call between .Ltmp628 and .Ltmp629
	.uleb128 .Ltmp630-.Lfunc_begin1         #     jumps to .Ltmp630
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp629-.Lfunc_begin1         # >> Call Site 85 <<
	.uleb128 .Ltmp344-.Ltmp629              #   Call between .Ltmp629 and .Ltmp344
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp344-.Lfunc_begin1         # >> Call Site 86 <<
	.uleb128 .Ltmp345-.Ltmp344              #   Call between .Ltmp344 and .Ltmp345
	.uleb128 .Ltmp346-.Lfunc_begin1         #     jumps to .Ltmp346
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp345-.Lfunc_begin1         # >> Call Site 87 <<
	.uleb128 .Ltmp338-.Ltmp345              #   Call between .Ltmp345 and .Ltmp338
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp338-.Lfunc_begin1         # >> Call Site 88 <<
	.uleb128 .Ltmp339-.Ltmp338              #   Call between .Ltmp338 and .Ltmp339
	.uleb128 .Ltmp340-.Lfunc_begin1         #     jumps to .Ltmp340
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp339-.Lfunc_begin1         # >> Call Site 89 <<
	.uleb128 .Ltmp317-.Ltmp339              #   Call between .Ltmp339 and .Ltmp317
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp317-.Lfunc_begin1         # >> Call Site 90 <<
	.uleb128 .Ltmp318-.Ltmp317              #   Call between .Ltmp317 and .Ltmp318
	.uleb128 .Ltmp319-.Lfunc_begin1         #     jumps to .Ltmp319
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp318-.Lfunc_begin1         # >> Call Site 91 <<
	.uleb128 .Ltmp311-.Ltmp318              #   Call between .Ltmp318 and .Ltmp311
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp311-.Lfunc_begin1         # >> Call Site 92 <<
	.uleb128 .Ltmp312-.Ltmp311              #   Call between .Ltmp311 and .Ltmp312
	.uleb128 .Ltmp313-.Lfunc_begin1         #     jumps to .Ltmp313
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp312-.Lfunc_begin1         # >> Call Site 93 <<
	.uleb128 .Ltmp290-.Ltmp312              #   Call between .Ltmp312 and .Ltmp290
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp290-.Lfunc_begin1         # >> Call Site 94 <<
	.uleb128 .Ltmp291-.Ltmp290              #   Call between .Ltmp290 and .Ltmp291
	.uleb128 .Ltmp292-.Lfunc_begin1         #     jumps to .Ltmp292
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp291-.Lfunc_begin1         # >> Call Site 95 <<
	.uleb128 .Ltmp284-.Ltmp291              #   Call between .Ltmp291 and .Ltmp284
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp284-.Lfunc_begin1         # >> Call Site 96 <<
	.uleb128 .Ltmp285-.Ltmp284              #   Call between .Ltmp284 and .Ltmp285
	.uleb128 .Ltmp286-.Lfunc_begin1         #     jumps to .Ltmp286
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp285-.Lfunc_begin1         # >> Call Site 97 <<
	.uleb128 .Ltmp263-.Ltmp285              #   Call between .Ltmp285 and .Ltmp263
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp263-.Lfunc_begin1         # >> Call Site 98 <<
	.uleb128 .Ltmp264-.Ltmp263              #   Call between .Ltmp263 and .Ltmp264
	.uleb128 .Ltmp265-.Lfunc_begin1         #     jumps to .Ltmp265
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp264-.Lfunc_begin1         # >> Call Site 99 <<
	.uleb128 .Ltmp257-.Ltmp264              #   Call between .Ltmp264 and .Ltmp257
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp257-.Lfunc_begin1         # >> Call Site 100 <<
	.uleb128 .Ltmp258-.Ltmp257              #   Call between .Ltmp257 and .Ltmp258
	.uleb128 .Ltmp259-.Lfunc_begin1         #     jumps to .Ltmp259
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp258-.Lfunc_begin1         # >> Call Site 101 <<
	.uleb128 .Ltmp236-.Ltmp258              #   Call between .Ltmp258 and .Ltmp236
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp236-.Lfunc_begin1         # >> Call Site 102 <<
	.uleb128 .Ltmp237-.Ltmp236              #   Call between .Ltmp236 and .Ltmp237
	.uleb128 .Ltmp238-.Lfunc_begin1         #     jumps to .Ltmp238
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp237-.Lfunc_begin1         # >> Call Site 103 <<
	.uleb128 .Ltmp230-.Ltmp237              #   Call between .Ltmp237 and .Ltmp230
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp230-.Lfunc_begin1         # >> Call Site 104 <<
	.uleb128 .Ltmp231-.Ltmp230              #   Call between .Ltmp230 and .Ltmp231
	.uleb128 .Ltmp232-.Lfunc_begin1         #     jumps to .Ltmp232
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp231-.Lfunc_begin1         # >> Call Site 105 <<
	.uleb128 .Ltmp209-.Ltmp231              #   Call between .Ltmp231 and .Ltmp209
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp209-.Lfunc_begin1         # >> Call Site 106 <<
	.uleb128 .Ltmp210-.Ltmp209              #   Call between .Ltmp209 and .Ltmp210
	.uleb128 .Ltmp211-.Lfunc_begin1         #     jumps to .Ltmp211
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp210-.Lfunc_begin1         # >> Call Site 107 <<
	.uleb128 .Ltmp203-.Ltmp210              #   Call between .Ltmp210 and .Ltmp203
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp203-.Lfunc_begin1         # >> Call Site 108 <<
	.uleb128 .Ltmp204-.Ltmp203              #   Call between .Ltmp203 and .Ltmp204
	.uleb128 .Ltmp205-.Lfunc_begin1         #     jumps to .Ltmp205
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp204-.Lfunc_begin1         # >> Call Site 109 <<
	.uleb128 .Ltmp350-.Ltmp204              #   Call between .Ltmp204 and .Ltmp350
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp350-.Lfunc_begin1         # >> Call Site 110 <<
	.uleb128 .Ltmp351-.Ltmp350              #   Call between .Ltmp350 and .Ltmp351
	.uleb128 .Ltmp352-.Lfunc_begin1         #     jumps to .Ltmp352
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp353-.Lfunc_begin1         # >> Call Site 111 <<
	.uleb128 .Ltmp354-.Ltmp353              #   Call between .Ltmp353 and .Ltmp354
	.uleb128 .Ltmp355-.Lfunc_begin1         #     jumps to .Ltmp355
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp354-.Lfunc_begin1         # >> Call Site 112 <<
	.uleb128 .Ltmp323-.Ltmp354              #   Call between .Ltmp354 and .Ltmp323
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp323-.Lfunc_begin1         # >> Call Site 113 <<
	.uleb128 .Ltmp324-.Ltmp323              #   Call between .Ltmp323 and .Ltmp324
	.uleb128 .Ltmp325-.Lfunc_begin1         #     jumps to .Ltmp325
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp326-.Lfunc_begin1         # >> Call Site 114 <<
	.uleb128 .Ltmp327-.Ltmp326              #   Call between .Ltmp326 and .Ltmp327
	.uleb128 .Ltmp328-.Lfunc_begin1         #     jumps to .Ltmp328
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp327-.Lfunc_begin1         # >> Call Site 115 <<
	.uleb128 .Ltmp296-.Ltmp327              #   Call between .Ltmp327 and .Ltmp296
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp296-.Lfunc_begin1         # >> Call Site 116 <<
	.uleb128 .Ltmp297-.Ltmp296              #   Call between .Ltmp296 and .Ltmp297
	.uleb128 .Ltmp298-.Lfunc_begin1         #     jumps to .Ltmp298
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp299-.Lfunc_begin1         # >> Call Site 117 <<
	.uleb128 .Ltmp300-.Ltmp299              #   Call between .Ltmp299 and .Ltmp300
	.uleb128 .Ltmp301-.Lfunc_begin1         #     jumps to .Ltmp301
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp300-.Lfunc_begin1         # >> Call Site 118 <<
	.uleb128 .Ltmp269-.Ltmp300              #   Call between .Ltmp300 and .Ltmp269
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp269-.Lfunc_begin1         # >> Call Site 119 <<
	.uleb128 .Ltmp270-.Ltmp269              #   Call between .Ltmp269 and .Ltmp270
	.uleb128 .Ltmp271-.Lfunc_begin1         #     jumps to .Ltmp271
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp272-.Lfunc_begin1         # >> Call Site 120 <<
	.uleb128 .Ltmp273-.Ltmp272              #   Call between .Ltmp272 and .Ltmp273
	.uleb128 .Ltmp274-.Lfunc_begin1         #     jumps to .Ltmp274
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp273-.Lfunc_begin1         # >> Call Site 121 <<
	.uleb128 .Ltmp242-.Ltmp273              #   Call between .Ltmp273 and .Ltmp242
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp242-.Lfunc_begin1         # >> Call Site 122 <<
	.uleb128 .Ltmp243-.Ltmp242              #   Call between .Ltmp242 and .Ltmp243
	.uleb128 .Ltmp244-.Lfunc_begin1         #     jumps to .Ltmp244
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp245-.Lfunc_begin1         # >> Call Site 123 <<
	.uleb128 .Ltmp246-.Ltmp245              #   Call between .Ltmp245 and .Ltmp246
	.uleb128 .Ltmp247-.Lfunc_begin1         #     jumps to .Ltmp247
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp246-.Lfunc_begin1         # >> Call Site 124 <<
	.uleb128 .Ltmp215-.Ltmp246              #   Call between .Ltmp246 and .Ltmp215
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp215-.Lfunc_begin1         # >> Call Site 125 <<
	.uleb128 .Ltmp216-.Ltmp215              #   Call between .Ltmp215 and .Ltmp216
	.uleb128 .Ltmp217-.Lfunc_begin1         #     jumps to .Ltmp217
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp218-.Lfunc_begin1         # >> Call Site 126 <<
	.uleb128 .Ltmp219-.Ltmp218              #   Call between .Ltmp218 and .Ltmp219
	.uleb128 .Ltmp220-.Lfunc_begin1         #     jumps to .Ltmp220
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp219-.Lfunc_begin1         # >> Call Site 127 <<
	.uleb128 .Ltmp530-.Ltmp219              #   Call between .Ltmp219 and .Ltmp530
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp530-.Lfunc_begin1         # >> Call Site 128 <<
	.uleb128 .Ltmp531-.Ltmp530              #   Call between .Ltmp530 and .Ltmp531
	.uleb128 .Ltmp532-.Lfunc_begin1         #     jumps to .Ltmp532
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp531-.Lfunc_begin1         # >> Call Site 129 <<
	.uleb128 .Ltmp536-.Ltmp531              #   Call between .Ltmp531 and .Ltmp536
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp536-.Lfunc_begin1         # >> Call Site 130 <<
	.uleb128 .Ltmp537-.Ltmp536              #   Call between .Ltmp536 and .Ltmp537
	.uleb128 .Ltmp538-.Lfunc_begin1         #     jumps to .Ltmp538
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp537-.Lfunc_begin1         # >> Call Site 131 <<
	.uleb128 .Ltmp466-.Ltmp537              #   Call between .Ltmp537 and .Ltmp466
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp466-.Lfunc_begin1         # >> Call Site 132 <<
	.uleb128 .Ltmp467-.Ltmp466              #   Call between .Ltmp466 and .Ltmp467
	.uleb128 .Ltmp468-.Lfunc_begin1         #     jumps to .Ltmp468
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp467-.Lfunc_begin1         # >> Call Site 133 <<
	.uleb128 .Ltmp472-.Ltmp467              #   Call between .Ltmp467 and .Ltmp472
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp472-.Lfunc_begin1         # >> Call Site 134 <<
	.uleb128 .Ltmp473-.Ltmp472              #   Call between .Ltmp472 and .Ltmp473
	.uleb128 .Ltmp474-.Lfunc_begin1         #     jumps to .Ltmp474
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp473-.Lfunc_begin1         # >> Call Site 135 <<
	.uleb128 .Ltmp365-.Ltmp473              #   Call between .Ltmp473 and .Ltmp365
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp365-.Lfunc_begin1         # >> Call Site 136 <<
	.uleb128 .Ltmp366-.Ltmp365              #   Call between .Ltmp365 and .Ltmp366
	.uleb128 .Ltmp367-.Lfunc_begin1         #     jumps to .Ltmp367
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp366-.Lfunc_begin1         # >> Call Site 137 <<
	.uleb128 .Ltmp371-.Ltmp366              #   Call between .Ltmp366 and .Ltmp371
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp371-.Lfunc_begin1         # >> Call Site 138 <<
	.uleb128 .Ltmp372-.Ltmp371              #   Call between .Ltmp371 and .Ltmp372
	.uleb128 .Ltmp373-.Lfunc_begin1         #     jumps to .Ltmp373
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp372-.Lfunc_begin1         # >> Call Site 139 <<
	.uleb128 .Ltmp542-.Ltmp372              #   Call between .Ltmp372 and .Ltmp542
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp542-.Lfunc_begin1         # >> Call Site 140 <<
	.uleb128 .Ltmp543-.Ltmp542              #   Call between .Ltmp542 and .Ltmp543
	.uleb128 .Ltmp544-.Lfunc_begin1         #     jumps to .Ltmp544
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp545-.Lfunc_begin1         # >> Call Site 141 <<
	.uleb128 .Ltmp546-.Ltmp545              #   Call between .Ltmp545 and .Ltmp546
	.uleb128 .Ltmp547-.Lfunc_begin1         #     jumps to .Ltmp547
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp546-.Lfunc_begin1         # >> Call Site 142 <<
	.uleb128 .Ltmp478-.Ltmp546              #   Call between .Ltmp546 and .Ltmp478
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp478-.Lfunc_begin1         # >> Call Site 143 <<
	.uleb128 .Ltmp479-.Ltmp478              #   Call between .Ltmp478 and .Ltmp479
	.uleb128 .Ltmp480-.Lfunc_begin1         #     jumps to .Ltmp480
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp481-.Lfunc_begin1         # >> Call Site 144 <<
	.uleb128 .Ltmp482-.Ltmp481              #   Call between .Ltmp481 and .Ltmp482
	.uleb128 .Ltmp483-.Lfunc_begin1         #     jumps to .Ltmp483
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp482-.Lfunc_begin1         # >> Call Site 145 <<
	.uleb128 .Ltmp377-.Ltmp482              #   Call between .Ltmp482 and .Ltmp377
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp377-.Lfunc_begin1         # >> Call Site 146 <<
	.uleb128 .Ltmp378-.Ltmp377              #   Call between .Ltmp377 and .Ltmp378
	.uleb128 .Ltmp379-.Lfunc_begin1         #     jumps to .Ltmp379
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp380-.Lfunc_begin1         # >> Call Site 147 <<
	.uleb128 .Ltmp381-.Ltmp380              #   Call between .Ltmp380 and .Ltmp381
	.uleb128 .Ltmp382-.Lfunc_begin1         #     jumps to .Ltmp382
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp381-.Lfunc_begin1         # >> Call Site 148 <<
	.uleb128 .Ltmp594-.Ltmp381              #   Call between .Ltmp381 and .Ltmp594
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp594-.Lfunc_begin1         # >> Call Site 149 <<
	.uleb128 .Ltmp595-.Ltmp594              #   Call between .Ltmp594 and .Ltmp595
	.uleb128 .Ltmp596-.Lfunc_begin1         #     jumps to .Ltmp596
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp595-.Lfunc_begin1         # >> Call Site 150 <<
	.uleb128 .Ltmp600-.Ltmp595              #   Call between .Ltmp595 and .Ltmp600
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp600-.Lfunc_begin1         # >> Call Site 151 <<
	.uleb128 .Ltmp601-.Ltmp600              #   Call between .Ltmp600 and .Ltmp601
	.uleb128 .Ltmp602-.Lfunc_begin1         #     jumps to .Ltmp602
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp601-.Lfunc_begin1         # >> Call Site 152 <<
	.uleb128 .Ltmp557-.Ltmp601              #   Call between .Ltmp601 and .Ltmp557
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp557-.Lfunc_begin1         # >> Call Site 153 <<
	.uleb128 .Ltmp558-.Ltmp557              #   Call between .Ltmp557 and .Ltmp558
	.uleb128 .Ltmp559-.Lfunc_begin1         #     jumps to .Ltmp559
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp558-.Lfunc_begin1         # >> Call Site 154 <<
	.uleb128 .Ltmp563-.Ltmp558              #   Call between .Ltmp558 and .Ltmp563
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp563-.Lfunc_begin1         # >> Call Site 155 <<
	.uleb128 .Ltmp564-.Ltmp563              #   Call between .Ltmp563 and .Ltmp564
	.uleb128 .Ltmp565-.Lfunc_begin1         #     jumps to .Ltmp565
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp564-.Lfunc_begin1         # >> Call Site 156 <<
	.uleb128 .Ltmp493-.Ltmp564              #   Call between .Ltmp564 and .Ltmp493
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp493-.Lfunc_begin1         # >> Call Site 157 <<
	.uleb128 .Ltmp494-.Ltmp493              #   Call between .Ltmp493 and .Ltmp494
	.uleb128 .Ltmp495-.Lfunc_begin1         #     jumps to .Ltmp495
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp494-.Lfunc_begin1         # >> Call Site 158 <<
	.uleb128 .Ltmp499-.Ltmp494              #   Call between .Ltmp494 and .Ltmp499
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp499-.Lfunc_begin1         # >> Call Site 159 <<
	.uleb128 .Ltmp500-.Ltmp499              #   Call between .Ltmp499 and .Ltmp500
	.uleb128 .Ltmp501-.Lfunc_begin1         #     jumps to .Ltmp501
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp500-.Lfunc_begin1         # >> Call Site 160 <<
	.uleb128 .Ltmp429-.Ltmp500              #   Call between .Ltmp500 and .Ltmp429
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp429-.Lfunc_begin1         # >> Call Site 161 <<
	.uleb128 .Ltmp430-.Ltmp429              #   Call between .Ltmp429 and .Ltmp430
	.uleb128 .Ltmp431-.Lfunc_begin1         #     jumps to .Ltmp431
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp430-.Lfunc_begin1         # >> Call Site 162 <<
	.uleb128 .Ltmp435-.Ltmp430              #   Call between .Ltmp430 and .Ltmp435
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp435-.Lfunc_begin1         # >> Call Site 163 <<
	.uleb128 .Ltmp436-.Ltmp435              #   Call between .Ltmp435 and .Ltmp436
	.uleb128 .Ltmp437-.Lfunc_begin1         #     jumps to .Ltmp437
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp436-.Lfunc_begin1         # >> Call Site 164 <<
	.uleb128 .Ltmp392-.Ltmp436              #   Call between .Ltmp436 and .Ltmp392
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp392-.Lfunc_begin1         # >> Call Site 165 <<
	.uleb128 .Ltmp393-.Ltmp392              #   Call between .Ltmp392 and .Ltmp393
	.uleb128 .Ltmp394-.Lfunc_begin1         #     jumps to .Ltmp394
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp393-.Lfunc_begin1         # >> Call Site 166 <<
	.uleb128 .Ltmp398-.Ltmp393              #   Call between .Ltmp393 and .Ltmp398
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp398-.Lfunc_begin1         # >> Call Site 167 <<
	.uleb128 .Ltmp399-.Ltmp398              #   Call between .Ltmp398 and .Ltmp399
	.uleb128 .Ltmp400-.Lfunc_begin1         #     jumps to .Ltmp400
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp399-.Lfunc_begin1         # >> Call Site 168 <<
	.uleb128 .Ltmp631-.Ltmp399              #   Call between .Ltmp399 and .Ltmp631
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp631-.Lfunc_begin1         # >> Call Site 169 <<
	.uleb128 .Ltmp632-.Ltmp631              #   Call between .Ltmp631 and .Ltmp632
	.uleb128 .Ltmp633-.Lfunc_begin1         #     jumps to .Ltmp633
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp634-.Lfunc_begin1         # >> Call Site 170 <<
	.uleb128 .Ltmp635-.Ltmp634              #   Call between .Ltmp634 and .Ltmp635
	.uleb128 .Ltmp636-.Lfunc_begin1         #     jumps to .Ltmp636
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp635-.Lfunc_begin1         # >> Call Site 171 <<
	.uleb128 .Ltmp640-.Ltmp635              #   Call between .Ltmp635 and .Ltmp640
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp640-.Lfunc_begin1         # >> Call Site 172 <<
	.uleb128 .Ltmp641-.Ltmp640              #   Call between .Ltmp640 and .Ltmp641
	.uleb128 .Ltmp642-.Lfunc_begin1         #     jumps to .Ltmp642
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp643-.Lfunc_begin1         # >> Call Site 173 <<
	.uleb128 .Ltmp644-.Ltmp643              #   Call between .Ltmp643 and .Ltmp644
	.uleb128 .Ltmp645-.Lfunc_begin1         #     jumps to .Ltmp645
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp644-.Lfunc_begin1         # >> Call Site 174 <<
	.uleb128 .Ltmp649-.Ltmp644              #   Call between .Ltmp644 and .Ltmp649
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp649-.Lfunc_begin1         # >> Call Site 175 <<
	.uleb128 .Ltmp650-.Ltmp649              #   Call between .Ltmp649 and .Ltmp650
	.uleb128 .Ltmp651-.Lfunc_begin1         #     jumps to .Ltmp651
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp652-.Lfunc_begin1         # >> Call Site 176 <<
	.uleb128 .Ltmp653-.Ltmp652              #   Call between .Ltmp652 and .Ltmp653
	.uleb128 .Ltmp654-.Lfunc_begin1         #     jumps to .Ltmp654
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp653-.Lfunc_begin1         # >> Call Site 177 <<
	.uleb128 .Ltmp658-.Ltmp653              #   Call between .Ltmp653 and .Ltmp658
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp658-.Lfunc_begin1         # >> Call Site 178 <<
	.uleb128 .Ltmp659-.Ltmp658              #   Call between .Ltmp658 and .Ltmp659
	.uleb128 .Ltmp660-.Lfunc_begin1         #     jumps to .Ltmp660
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp661-.Lfunc_begin1         # >> Call Site 179 <<
	.uleb128 .Ltmp662-.Ltmp661              #   Call between .Ltmp661 and .Ltmp662
	.uleb128 .Ltmp663-.Lfunc_begin1         #     jumps to .Ltmp663
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp662-.Lfunc_begin1         # >> Call Site 180 <<
	.uleb128 .Ltmp667-.Ltmp662              #   Call between .Ltmp662 and .Ltmp667
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp667-.Lfunc_begin1         # >> Call Site 181 <<
	.uleb128 .Ltmp668-.Ltmp667              #   Call between .Ltmp667 and .Ltmp668
	.uleb128 .Ltmp669-.Lfunc_begin1         #     jumps to .Ltmp669
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp670-.Lfunc_begin1         # >> Call Site 182 <<
	.uleb128 .Ltmp671-.Ltmp670              #   Call between .Ltmp670 and .Ltmp671
	.uleb128 .Ltmp672-.Lfunc_begin1         #     jumps to .Ltmp672
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp671-.Lfunc_begin1         # >> Call Site 183 <<
	.uleb128 .Lfunc_end1-.Ltmp671           #   Call between .Ltmp671 and .Lfunc_end1
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
	.p2align	5                               # -- Begin function _ZL5checkIfEvSt8functionIFT_PS1_jEES4_PfjPKc
	.type	_ZL5checkIfEvSt8functionIFT_PS1_jEES4_PfjPKc,@function
_ZL5checkIfEvSt8functionIFT_PS1_jEES4_PfjPKc: # @_ZL5checkIfEvSt8functionIFT_PS1_jEES4_PfjPKc
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -80
	.cfi_def_cfa_offset 80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 24                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 56, -48
	.cfi_offset 57, -56
	ld.d	$a4, $a0, 16
	st.d	$a2, $sp, 16
	ori	$s2, $zero, 1024
	st.w	$s2, $sp, 12
	beqz	$a4, .LBB3_8
# %bb.1:                                # %_ZNKSt8functionIFfPfjEEclES0_j.exit
	move	$fp, $a3
	move	$s1, $a2
	move	$s0, $a1
	ld.d	$a3, $a0, 24
	addi.d	$a1, $sp, 16
	addi.d	$a2, $sp, 12
	jirl	$ra, $a3, 0
	ld.d	$a0, $s0, 16
	st.d	$s1, $sp, 16
	st.w	$s2, $sp, 12
	beqz	$a0, .LBB3_8
# %bb.2:                                # %_ZNKSt8functionIFfPfjEEclES0_j.exit9
	fmov.s	$fs0, $fa0
	ld.d	$a3, $s0, 24
	addi.d	$a1, $sp, 16
	addi.d	$a2, $sp, 12
	move	$a0, $s0
	jirl	$ra, $a3, 0
	fcmp.cun.s	$fcc0, $fs0, $fa0
	bcnez	$fcc0, .LBB3_9
# %bb.3:
	movgr2fr.w	$fa1, $zero
	fcmp.cune.s	$fcc0, $fs0, $fa1
	bcnez	$fcc0, .LBB3_6
# %bb.4:
	fcmp.cune.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB3_11
# %bb.5:
	movfr2gr.s	$a0, $fs0
	movfr2gr.s	$a1, $fa0
	xor	$a0, $a1, $a0
	bgez	$a0, .LBB3_7
	b	.LBB3_11
.LBB3_6:
	fcmp.ceq.s	$fcc0, $fs0, $fa0
	bceqz	$fcc0, .LBB3_11
.LBB3_7:
	fld.d	$fs1, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.LBB3_8:
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.LBB3_9:                                # %_ZL7isEqualff.exit
	fcmp.cor.s	$fcc0, $fs0, $fs0
	bcnez	$fcc0, .LBB3_11
# %bb.10:                               # %_ZL7isEqualff.exit
	fcmp.cun.s	$fcc0, $fa0, $fa0
	bcnez	$fcc0, .LBB3_7
.LBB3_11:                               # %_ZL7isEqualff.exit.thread
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.27)
	addi.d	$a1, $a1, %pc_lo12(.L.str.27)
	fmov.s	$fs1, $fa0
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.L.str.28)
	addi.d	$a1, $a1, %pc_lo12(.L.str.28)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(_ZNSolsEf)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.L.str.29)
	addi.d	$a1, $a1, %pc_lo12(.L.str.29)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
	fmov.s	$fa0, $fs1
	pcaddu18i	$ra, %call36(_ZNSolsEf)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.L.str.14)
	addi.d	$a1, $a1, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end3:
	.size	_ZL5checkIfEvSt8functionIFT_PS1_jEES4_PfjPKc, .Lfunc_end3-_ZL5checkIfEvSt8functionIFT_PS1_jEES4_PfjPKc
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt16__introsort_loopIPflN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_,"axG",@progbits,_ZSt16__introsort_loopIPflN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_,comdat
	.weak	_ZSt16__introsort_loopIPflN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_ # -- Begin function _ZSt16__introsort_loopIPflN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_
	.p2align	5
	.type	_ZSt16__introsort_loopIPflN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_,@function
_ZSt16__introsort_loopIPflN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_: # @_ZSt16__introsort_loopIPflN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	move	$fp, $a0
	sub.d	$s6, $a1, $a0
	ori	$a0, $zero, 65
	blt	$s6, $a0, .LBB4_35
# %bb.1:                                # %.lr.ph
	move	$s0, $a2
	addi.d	$s2, $fp, 4
	addi.w	$a0, $zero, -4
	sub.d	$s3, $a0, $fp
	lu52i.d	$s4, $a0, 2047
	ori	$s5, $zero, 64
	b	.LBB4_3
	.p2align	4, , 16
.LBB4_2:                                # %_ZSt27__unguarded_partition_pivotIPfN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit
                                        #   in Loop: Header=BB4_3 Depth=1
	move	$a0, $s1
	move	$a2, $s0
	move	$a3, $zero
	pcaddu18i	$ra, %call36(_ZSt16__introsort_loopIPflN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_)
	jirl	$ra, $ra, 0
	move	$a1, $s1
	bge	$s5, $s6, .LBB4_35
.LBB4_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_16 Depth 2
                                        #       Child Loop BB4_17 Depth 3
                                        #       Child Loop BB4_19 Depth 3
	beqz	$s0, .LBB4_22
# %bb.4:                                #   in Loop: Header=BB4_3 Depth=1
	srli.d	$a0, $s6, 1
	and	$a0, $a0, $s4
	fld.s	$fa1, $fp, 4
	fldx.s	$fa2, $fp, $a0
	fld.s	$fa0, $a1, -4
	fcmp.cule.s	$fcc0, $fa2, $fa1
	add.d	$a0, $fp, $a0
	bcnez	$fcc0, .LBB4_7
# %bb.5:                                #   in Loop: Header=BB4_3 Depth=1
	fcmp.cule.s	$fcc0, $fa0, $fa2
	bcnez	$fcc0, .LBB4_9
# %bb.6:                                #   in Loop: Header=BB4_3 Depth=1
	fld.s	$fa0, $fp, 0
	fst.s	$fa2, $fp, 0
	fst.s	$fa0, $a0, 0
	b	.LBB4_15
	.p2align	4, , 16
.LBB4_7:                                #   in Loop: Header=BB4_3 Depth=1
	fcmp.cule.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB4_11
# %bb.8:                                #   in Loop: Header=BB4_3 Depth=1
	fld.s	$fa0, $fp, 0
	fst.s	$fa1, $fp, 0
	fst.s	$fa0, $fp, 4
	b	.LBB4_15
	.p2align	4, , 16
.LBB4_9:                                #   in Loop: Header=BB4_3 Depth=1
	fld.s	$fa2, $fp, 0
	fcmp.cule.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB4_13
# %bb.10:                               #   in Loop: Header=BB4_3 Depth=1
	fst.s	$fa0, $fp, 0
	fst.s	$fa2, $a1, -4
	b	.LBB4_15
	.p2align	4, , 16
.LBB4_11:                               #   in Loop: Header=BB4_3 Depth=1
	fld.s	$fa1, $fp, 0
	fcmp.cule.s	$fcc0, $fa0, $fa2
	bcnez	$fcc0, .LBB4_14
# %bb.12:                               #   in Loop: Header=BB4_3 Depth=1
	fst.s	$fa0, $fp, 0
	fst.s	$fa1, $a1, -4
	b	.LBB4_15
.LBB4_13:                               #   in Loop: Header=BB4_3 Depth=1
	fst.s	$fa1, $fp, 0
	fst.s	$fa2, $fp, 4
	b	.LBB4_15
.LBB4_14:                               #   in Loop: Header=BB4_3 Depth=1
	fst.s	$fa2, $fp, 0
	fst.s	$fa1, $a0, 0
	.p2align	4, , 16
.LBB4_15:                               # %_ZSt22__move_median_to_firstIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader
                                        #   in Loop: Header=BB4_3 Depth=1
	addi.d	$s0, $s0, -1
	move	$a2, $a1
	move	$a0, $s2
	.p2align	4, , 16
.LBB4_16:                               # %_ZSt22__move_median_to_firstIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i
                                        #   Parent Loop BB4_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_17 Depth 3
                                        #       Child Loop BB4_19 Depth 3
	fld.s	$fa0, $fp, 0
	add.d	$s6, $s3, $a0
	.p2align	4, , 16
.LBB4_17:                               #   Parent Loop BB4_3 Depth=1
                                        #     Parent Loop BB4_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.s	$fa1, $a0, 0
	addi.d	$a0, $a0, 4
	fcmp.clt.s	$fcc0, $fa1, $fa0
	addi.d	$s6, $s6, 4
	bcnez	$fcc0, .LBB4_17
# %bb.18:                               # %.preheader.i.i.preheader
                                        #   in Loop: Header=BB4_16 Depth=2
	addi.d	$s1, $a0, -4
	.p2align	4, , 16
.LBB4_19:                               # %.preheader.i.i
                                        #   Parent Loop BB4_3 Depth=1
                                        #     Parent Loop BB4_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.s	$fa2, $a2, -4
	fcmp.clt.s	$fcc0, $fa0, $fa2
	addi.d	$a2, $a2, -4
	bcnez	$fcc0, .LBB4_19
# %bb.20:                               #   in Loop: Header=BB4_16 Depth=2
	bgeu	$s1, $a2, .LBB4_2
# %bb.21:                               #   in Loop: Header=BB4_16 Depth=2
	fst.s	$fa2, $s1, 0
	fst.s	$fa1, $a2, 0
	b	.LBB4_16
.LBB4_22:
	st.b	$zero, $sp, 23
	addi.d	$a2, $sp, 23
	move	$a0, $fp
	move	$s0, $a1
	pcaddu18i	$ra, %call36(_ZSt11__make_heapIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 3
	ori	$a1, $zero, 1
	ori	$a2, $zero, 4
	b	.LBB4_25
	.p2align	4, , 16
.LBB4_23:                               #   in Loop: Header=BB4_25 Depth=1
	move	$a4, $zero
.LBB4_24:                               # %_ZSt10__pop_heapIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i
                                        #   in Loop: Header=BB4_25 Depth=1
	slli.d	$a4, $a4, 2
	fstx.s	$fa0, $fp, $a4
	bge	$a2, $a3, .LBB4_35
.LBB4_25:                               # %.lr.ph.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_27 Depth 2
                                        #     Child Loop BB4_33 Depth 2
	move	$a4, $s0
	fld.s	$fa0, $s0, -4
	fld.s	$fa1, $fp, 0
	addi.d	$s0, $s0, -4
	sub.d	$a3, $s0, $fp
	srai.d	$a5, $a3, 2
	fst.s	$fa1, $a4, -4
	blt	$a5, $a0, .LBB4_29
# %bb.26:                               # %.lr.ph.i.i.i.i.preheader
                                        #   in Loop: Header=BB4_25 Depth=1
	move	$a6, $zero
	addi.d	$a4, $a5, -1
	srli.d	$a7, $a4, 63
	add.d	$a4, $a4, $a7
	srai.d	$a7, $a4, 1
	.p2align	4, , 16
.LBB4_27:                               # %.lr.ph.i.i.i.i
                                        #   Parent Loop BB4_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$a4, $a6, 1
	addi.d	$t0, $a4, 2
	slli.d	$t1, $t0, 2
	alsl.d	$t2, $a6, $fp, 3
	fldx.s	$fa1, $fp, $t1
	fld.s	$fa2, $t2, 4
	fcmp.clt.s	$fcc0, $fa1, $fa2
	addi.d	$a4, $a4, 1
	movcf2gr	$t1, $fcc0
	masknez	$t0, $t0, $t1
	maskeqz	$a4, $a4, $t1
	or	$a4, $a4, $t0
	slli.d	$t0, $a4, 2
	fldx.s	$fa1, $fp, $t0
	slli.d	$a6, $a6, 2
	fstx.s	$fa1, $fp, $a6
	move	$a6, $a4
	blt	$a4, $a7, .LBB4_27
# %bb.28:                               # %._crit_edge.i.i.i.i
                                        #   in Loop: Header=BB4_25 Depth=1
	andi	$a6, $a3, 4
	beqz	$a6, .LBB4_30
	b	.LBB4_32
	.p2align	4, , 16
.LBB4_29:                               #   in Loop: Header=BB4_25 Depth=1
	move	$a4, $zero
	andi	$a6, $a3, 4
	bnez	$a6, .LBB4_32
.LBB4_30:                               #   in Loop: Header=BB4_25 Depth=1
	addi.d	$a5, $a5, -2
	srai.d	$a5, $a5, 1
	bne	$a4, $a5, .LBB4_32
# %bb.31:                               # %.thread.i.i.i
                                        #   in Loop: Header=BB4_25 Depth=1
	slli.d	$a5, $a4, 1
	addi.d	$a5, $a5, 1
	slli.d	$a6, $a5, 2
	fldx.s	$fa1, $fp, $a6
	slli.d	$a4, $a4, 2
	fstx.s	$fa1, $fp, $a4
	move	$a4, $a5
	b	.LBB4_33
	.p2align	4, , 16
.LBB4_32:                               #   in Loop: Header=BB4_25 Depth=1
	beqz	$a4, .LBB4_23
	.p2align	4, , 16
.LBB4_33:                               # %.lr.ph.i.i.i.i.i
                                        #   Parent Loop BB4_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a5, $a4, -1
	srli.d	$a6, $a5, 1
	slli.d	$a7, $a6, 2
	fldx.s	$fa1, $fp, $a7
	fcmp.cule.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB4_24
# %bb.34:                               #   in Loop: Header=BB4_33 Depth=2
	slli.d	$a4, $a4, 2
	fstx.s	$fa1, $fp, $a4
	move	$a4, $a6
	bltu	$a1, $a5, .LBB4_33
	b	.LBB4_23
.LBB4_35:                               # %_ZSt14__partial_sortIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_.exit
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
.Lfunc_end4:
	.size	_ZSt16__introsort_loopIPflN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_, .Lfunc_end4-_ZSt16__introsort_loopIPflN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt22__final_insertion_sortIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_,"axG",@progbits,_ZSt22__final_insertion_sortIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_,comdat
	.weak	_ZSt22__final_insertion_sortIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_ # -- Begin function _ZSt22__final_insertion_sortIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_
	.p2align	5
	.type	_ZSt22__final_insertion_sortIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_,@function
_ZSt22__final_insertion_sortIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_: # @_ZSt22__final_insertion_sortIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_
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
	fst.d	$fs0, $sp, 16                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	.cfi_offset 56, -80
	move	$fp, $a1
	move	$s0, $a0
	sub.d	$a0, $a1, $a0
	ori	$a1, $zero, 65
	blt	$a0, $a1, .LBB5_2
# %bb.1:
	addi.d	$s1, $s0, 4
	ori	$s2, $zero, 4
	ori	$s3, $zero, 5
	ori	$s4, $zero, 64
	move	$s5, $s1
	move	$s6, $s0
	b	.LBB5_18
.LBB5_2:
	beq	$s0, $fp, .LBB5_25
# %bb.3:
	addi.d	$a2, $s0, 4
	beq	$a2, $fp, .LBB5_25
# %bb.4:                                # %.lr.ph.i17.preheader
	ori	$s1, $zero, 2
	ori	$s2, $zero, 4
	move	$s3, $s0
	b	.LBB5_9
	.p2align	4, , 16
.LBB5_5:                                #   in Loop: Header=BB5_9 Depth=1
	sub.d	$a2, $s3, $s0
	srai.d	$a0, $a2, 2
	blt	$a0, $s1, .LBB5_13
# %bb.6:                                #   in Loop: Header=BB5_9 Depth=1
	slli.d	$a0, $a0, 2
	sub.d	$a0, $a1, $a0
	addi.d	$a0, $a0, 8
	move	$a1, $s0
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
.LBB5_7:                                # %_ZSt13move_backwardIPfS0_ET0_T_S2_S1_.exit.i20
                                        #   in Loop: Header=BB5_9 Depth=1
	move	$a0, $s0
.LBB5_8:                                # %_ZSt13move_backwardIPfS0_ET0_T_S2_S1_.exit.i20
                                        #   in Loop: Header=BB5_9 Depth=1
	addi.d	$a2, $s3, 4
	fst.s	$fs0, $a0, 0
	beq	$a2, $fp, .LBB5_25
.LBB5_9:                                # %.lr.ph.i17
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_12 Depth 2
	move	$a1, $s3
	fld.s	$fs0, $s3, 4
	fld.s	$fa0, $s0, 0
	fcmp.cule.s	$fcc0, $fa0, $fs0
	move	$s3, $a2
	bceqz	$fcc0, .LBB5_5
# %bb.10:                               #   in Loop: Header=BB5_9 Depth=1
	fld.s	$fa0, $a1, 0
	fcmp.cule.s	$fcc0, $fa0, $fs0
	move	$a0, $s3
	bcnez	$fcc0, .LBB5_8
# %bb.11:                               # %.lr.ph.i.i24.preheader
                                        #   in Loop: Header=BB5_9 Depth=1
	move	$a0, $s3
	.p2align	4, , 16
.LBB5_12:                               # %.lr.ph.i.i24
                                        #   Parent Loop BB5_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fst.s	$fa0, $a0, 0
	fld.s	$fa0, $a0, -8
	fcmp.clt.s	$fcc0, $fs0, $fa0
	addi.d	$a0, $a0, -4
	bcnez	$fcc0, .LBB5_12
	b	.LBB5_8
.LBB5_13:                               #   in Loop: Header=BB5_9 Depth=1
	move	$a0, $s0
	bne	$a2, $s2, .LBB5_8
# %bb.14:                               #   in Loop: Header=BB5_9 Depth=1
	fst.s	$fa0, $a1, 4
	b	.LBB5_7
.LBB5_15:                               #   in Loop: Header=BB5_18 Depth=1
	fst.s	$fa0, $a0, 4
	.p2align	4, , 16
.LBB5_16:                               # %_ZSt13move_backwardIPfS0_ET0_T_S2_S1_.exit.i
                                        #   in Loop: Header=BB5_18 Depth=1
	move	$a0, $s0
.LBB5_17:                               # %_ZSt13move_backwardIPfS0_ET0_T_S2_S1_.exit.i
                                        #   in Loop: Header=BB5_18 Depth=1
	fst.s	$fs0, $a0, 0
	addi.d	$s2, $s2, 4
	addi.d	$s5, $s5, 4
	beq	$s2, $s4, .LBB5_24
.LBB5_18:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_23 Depth 2
	fldx.s	$fs0, $s0, $s2
	fld.s	$fa0, $s0, 0
	move	$a0, $s6
	fcmp.cule.s	$fcc0, $fa0, $fs0
	add.d	$s6, $s0, $s2
	bcnez	$fcc0, .LBB5_21
# %bb.19:                               #   in Loop: Header=BB5_18 Depth=1
	bltu	$s2, $s3, .LBB5_15
# %bb.20:                               #   in Loop: Header=BB5_18 Depth=1
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
	b	.LBB5_16
	.p2align	4, , 16
.LBB5_21:                               #   in Loop: Header=BB5_18 Depth=1
	fld.s	$fa0, $a0, 0
	fcmp.cule.s	$fcc0, $fa0, $fs0
	move	$a0, $s6
	bcnez	$fcc0, .LBB5_17
# %bb.22:                               # %.lr.ph.i.i.preheader
                                        #   in Loop: Header=BB5_18 Depth=1
	move	$a0, $s5
	.p2align	4, , 16
.LBB5_23:                               # %.lr.ph.i.i
                                        #   Parent Loop BB5_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fst.s	$fa0, $a0, 0
	fld.s	$fa0, $a0, -8
	fcmp.clt.s	$fcc0, $fs0, $fa0
	addi.d	$a0, $a0, -4
	bcnez	$fcc0, .LBB5_23
	b	.LBB5_17
.LBB5_24:                               # %_ZSt16__insertion_sortIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit
	addi.d	$a0, $s0, 64
	bne	$a0, $fp, .LBB5_27
.LBB5_25:                               # %_ZSt26__unguarded_insertion_sortIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit
	fld.d	$fs0, $sp, 16                   # 8-byte Folded Reload
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
	.p2align	4, , 16
.LBB5_26:                               # %_ZSt25__unguarded_linear_insertIPfN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i
                                        #   in Loop: Header=BB5_27 Depth=1
	addi.d	$a0, $a0, 4
	fst.s	$fa0, $a1, 0
	beq	$a0, $fp, .LBB5_25
.LBB5_27:                               # %.lr.ph.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_29 Depth 2
	fld.s	$fa0, $a0, 0
	fld.s	$fa1, $a0, -4
	fcmp.cule.s	$fcc0, $fa1, $fa0
	move	$a1, $a0
	bcnez	$fcc0, .LBB5_26
# %bb.28:                               # %.lr.ph.i.i12.preheader
                                        #   in Loop: Header=BB5_27 Depth=1
	move	$a1, $a0
	.p2align	4, , 16
.LBB5_29:                               # %.lr.ph.i.i12
                                        #   Parent Loop BB5_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fst.s	$fa1, $a1, 0
	fld.s	$fa1, $a1, -8
	fcmp.clt.s	$fcc0, $fa0, $fa1
	addi.d	$a1, $a1, -4
	bcnez	$fcc0, .LBB5_29
	b	.LBB5_26
.Lfunc_end5:
	.size	_ZSt22__final_insertion_sortIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_, .Lfunc_end5-_ZSt22__final_insertion_sortIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt11__make_heapIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_,"axG",@progbits,_ZSt11__make_heapIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_,comdat
	.weak	_ZSt11__make_heapIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_ # -- Begin function _ZSt11__make_heapIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_
	.p2align	5
	.type	_ZSt11__make_heapIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_,@function
_ZSt11__make_heapIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_: # @_ZSt11__make_heapIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_
	.cfi_startproc
# %bb.0:
	sub.d	$a1, $a1, $a0
	srai.d	$a4, $a1, 2
	ori	$a2, $zero, 2
	bge	$a4, $a2, .LBB6_2
.LBB6_1:                                # %.loopexit
	ret
.LBB6_2:
	addi.d	$a3, $a4, -2
	srli.d	$a2, $a3, 1
	addi.d	$a4, $a4, -1
	andi	$a5, $a1, 4
	srli.d	$a1, $a4, 1
	bnez	$a5, .LBB6_16
# %bb.3:                                # %.split.preheader
	addi.d	$a3, $a3, 1
	alsl.d	$a4, $a3, $a0, 2
	alsl.d	$a5, $a2, $a0, 2
	move	$a7, $a2
	b	.LBB6_6
	.p2align	4, , 16
.LBB6_4:                                #   in Loop: Header=BB6_6 Depth=1
	move	$t0, $a7
.LBB6_5:                                # %_ZSt13__adjust_heapIPflfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit
                                        #   in Loop: Header=BB6_6 Depth=1
	slli.d	$a7, $t0, 2
	fstx.s	$fa0, $a0, $a7
	addi.d	$a7, $a6, -1
	beqz	$a6, .LBB6_1
.LBB6_6:                                # %.split
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_8 Depth 2
                                        #     Child Loop BB6_12 Depth 2
	move	$a6, $a7
	slli.d	$a7, $a7, 2
	fldx.s	$fa0, $a0, $a7
	move	$a7, $a6
	bge	$a6, $a1, .LBB6_9
# %bb.7:                                # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB6_6 Depth=1
	move	$t0, $a6
	.p2align	4, , 16
.LBB6_8:                                # %.lr.ph.i
                                        #   Parent Loop BB6_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$a7, $t0, 1
	addi.d	$t1, $a7, 2
	slli.d	$t2, $t1, 2
	alsl.d	$t3, $t0, $a0, 3
	fldx.s	$fa1, $a0, $t2
	fld.s	$fa2, $t3, 4
	fcmp.clt.s	$fcc0, $fa1, $fa2
	addi.d	$a7, $a7, 1
	movcf2gr	$t2, $fcc0
	masknez	$t1, $t1, $t2
	maskeqz	$a7, $a7, $t2
	or	$a7, $a7, $t1
	slli.d	$t1, $a7, 2
	fldx.s	$fa1, $a0, $t1
	slli.d	$t0, $t0, 2
	fstx.s	$fa1, $a0, $t0
	move	$t0, $a7
	blt	$a7, $a1, .LBB6_8
.LBB6_9:                                # %._crit_edge.i
                                        #   in Loop: Header=BB6_6 Depth=1
	bne	$a7, $a2, .LBB6_11
# %bb.10:                               #   in Loop: Header=BB6_6 Depth=1
	fld.s	$fa1, $a4, 0
	fst.s	$fa1, $a5, 0
	move	$a7, $a3
.LBB6_11:                               #   in Loop: Header=BB6_6 Depth=1
	bge	$a6, $a7, .LBB6_4
	.p2align	4, , 16
.LBB6_12:                               # %.lr.ph.i.i
                                        #   Parent Loop BB6_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$t0, $a7, -1
	srli.d	$t1, $t0, 63
	add.d	$t0, $t0, $t1
	srai.d	$t0, $t0, 1
	slli.d	$t1, $t0, 2
	fldx.s	$fa1, $a0, $t1
	fcmp.cule.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB6_4
# %bb.13:                               #   in Loop: Header=BB6_12 Depth=2
	slli.d	$a7, $a7, 2
	fstx.s	$fa1, $a0, $a7
	move	$a7, $t0
	blt	$a6, $t0, .LBB6_12
	b	.LBB6_5
	.p2align	4, , 16
.LBB6_14:                               #   in Loop: Header=BB6_16 Depth=1
	move	$a4, $a2
.LBB6_15:                               # %_ZSt13__adjust_heapIPflfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us
                                        #   in Loop: Header=BB6_16 Depth=1
	slli.d	$a2, $a4, 2
	fstx.s	$fa0, $a0, $a2
	addi.d	$a2, $a3, -1
	beqz	$a3, .LBB6_1
.LBB6_16:                               # %.split.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_18 Depth 2
                                        #     Child Loop BB6_20 Depth 2
	move	$a3, $a2
	slli.d	$a2, $a2, 2
	fldx.s	$fa0, $a0, $a2
	move	$a4, $a3
	bge	$a3, $a1, .LBB6_15
# %bb.17:                               # %.lr.ph.i.us.preheader
                                        #   in Loop: Header=BB6_16 Depth=1
	move	$a2, $a3
	.p2align	4, , 16
.LBB6_18:                               # %.lr.ph.i.us
                                        #   Parent Loop BB6_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a4, $a2
	slli.d	$a2, $a2, 1
	addi.d	$a5, $a2, 2
	slli.d	$a6, $a5, 2
	alsl.d	$a7, $a4, $a0, 3
	fldx.s	$fa1, $a0, $a6
	fld.s	$fa2, $a7, 4
	fcmp.clt.s	$fcc0, $fa1, $fa2
	addi.d	$a2, $a2, 1
	movcf2gr	$a6, $fcc0
	masknez	$a5, $a5, $a6
	maskeqz	$a2, $a2, $a6
	or	$a2, $a2, $a5
	slli.d	$a5, $a2, 2
	fldx.s	$fa1, $a0, $a5
	slli.d	$a4, $a4, 2
	fstx.s	$fa1, $a0, $a4
	blt	$a2, $a1, .LBB6_18
# %bb.19:                               # %._crit_edge.i.us
                                        #   in Loop: Header=BB6_16 Depth=1
	bge	$a3, $a2, .LBB6_14
	.p2align	4, , 16
.LBB6_20:                               # %.lr.ph.i.i.us
                                        #   Parent Loop BB6_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a4, $a2, -1
	srli.d	$a5, $a4, 63
	add.d	$a4, $a4, $a5
	srai.d	$a4, $a4, 1
	slli.d	$a5, $a4, 2
	fldx.s	$fa1, $a0, $a5
	fcmp.cule.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB6_14
# %bb.21:                               #   in Loop: Header=BB6_20 Depth=2
	slli.d	$a2, $a2, 2
	fstx.s	$fa1, $a0, $a2
	move	$a2, $a4
	blt	$a3, $a4, .LBB6_20
	b	.LBB6_15
.Lfunc_end6:
	.size	_ZSt11__make_heapIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_, .Lfunc_end6-_ZSt11__make_heapIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_
	.cfi_endproc
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFfPfjEZ4mainE3$_0E9_M_invokeERKSt9_Any_dataOS0_Oj
	.type	_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_0E9_M_invokeERKSt9_Any_dataOS0_Oj,@function
_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_0E9_M_invokeERKSt9_Any_dataOS0_Oj: # @"_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_0E9_M_invokeERKSt9_Any_dataOS0_Oj"
# %bb.0:
	ld.d	$a0, $a1, 0
	lu12i.w	$a1, -1
	vldi	$vr0, -1152
	lu12i.w	$a2, 1
	.p2align	4, , 16
.LBB7_1:                                # =>This Inner Loop Header: Depth=1
	add.d	$a3, $a0, $a1
	fldx.s	$fa1, $a3, $a2
	addi.d	$a1, $a1, 4
	fmax.s	$fa0, $fa0, $fa1
	bnez	$a1, .LBB7_1
# %bb.2:                                # %"_ZSt10__invoke_rIfRZ4mainE3$_0JPfjEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
                                        # kill: def $f0 killed $f0 killed $vr0
	ret
.Lfunc_end7:
	.size	_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_0E9_M_invokeERKSt9_Any_dataOS0_Oj, .Lfunc_end7-_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_0E9_M_invokeERKSt9_Any_dataOS0_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFfPfjEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB8_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB8_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB8_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE3$_0)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE3$_0)
.LBB8_4:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end8:
	.size	_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end8-_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFfPfjEZ4mainE3$_1E9_M_invokeERKSt9_Any_dataOS0_Oj
	.type	_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_1E9_M_invokeERKSt9_Any_dataOS0_Oj,@function
_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_1E9_M_invokeERKSt9_Any_dataOS0_Oj: # @"_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_1E9_M_invokeERKSt9_Any_dataOS0_Oj"
# %bb.0:                                # %vector.ph
	lu12i.w	$a0, -262144
	vreplgr2vr.w	$vr0, $a0
	ld.d	$a0, $a1, 0
	lu12i.w	$a1, -2
	ori	$a6, $a1, 4064
	lu12i.w	$a1, 1
	ori	$a2, $a1, 32
	ori	$a3, $a1, 48
	addi.w	$a4, $zero, -64
	vori.b	$vr3, $vr0, 0
	.p2align	4, , 16
.LBB9_1:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	move	$a5, $a6
	add.d	$a6, $a0, $a6
	vldx	$vr4, $a6, $a2
	vori.b	$vr1, $vr3, 0
	vori.b	$vr2, $vr0, 0
	vldx	$vr5, $a6, $a3
	vreplvei.w	$vr0, $vr4, 1
	vreplvei.w	$vr3, $vr2, 1
	fmax.s	$fa3, $fa3, $fa0
	vreplvei.w	$vr0, $vr4, 0
	vreplvei.w	$vr6, $vr2, 0
	fmax.s	$fa0, $fa6, $fa0
	vextrins.w	$vr0, $vr3, 16
	vreplvei.w	$vr3, $vr4, 2
	vreplvei.w	$vr6, $vr2, 2
	fmax.s	$fa3, $fa6, $fa3
	vextrins.w	$vr0, $vr3, 32
	vreplvei.w	$vr3, $vr4, 3
	vreplvei.w	$vr6, $vr2, 3
	fmax.s	$fa3, $fa6, $fa3
	vextrins.w	$vr0, $vr3, 48
	vreplvei.w	$vr3, $vr5, 1
	vreplvei.w	$vr6, $vr1, 1
	fmax.s	$fa6, $fa6, $fa3
	vreplvei.w	$vr3, $vr5, 0
	vreplvei.w	$vr7, $vr1, 0
	fmax.s	$fa3, $fa7, $fa3
	vextrins.w	$vr3, $vr6, 16
	vreplvei.w	$vr6, $vr5, 2
	vreplvei.w	$vr7, $vr1, 2
	fmax.s	$fa6, $fa7, $fa6
	vextrins.w	$vr3, $vr6, 32
	vreplvei.w	$vr6, $vr5, 3
	vreplvei.w	$vr7, $vr1, 3
	fmax.s	$fa6, $fa7, $fa6
	vextrins.w	$vr3, $vr6, 48
	vfcmp.cun.s	$vr4, $vr4, $vr5
	vmskltz.w	$vr4, $vr4
	vpickve2gr.hu	$a7, $vr4, 0
	addi.d	$a6, $a5, 32
	bnez	$a7, .LBB9_3
# %bb.2:                                # %vector.body
                                        #   in Loop: Header=BB9_1 Depth=1
	bne	$a5, $a4, .LBB9_1
.LBB9_3:                                # %middle.block
	andi	$a2, $a7, 15
	sltu	$a3, $zero, $a2
	vreplgr2vr.w	$vr4, $a3
	vslli.w	$vr4, $vr4, 31
	vsrai.w	$vr4, $vr4, 31
	vbitsel.v	$vr0, $vr0, $vr2, $vr4
	vbitsel.v	$vr1, $vr3, $vr1, $vr4
	vreplvei.w	$vr2, $vr1, 3
	vreplvei.w	$vr3, $vr0, 3
	fmax.s	$fa2, $fa3, $fa2
	vreplvei.w	$vr3, $vr1, 2
	vreplvei.w	$vr4, $vr0, 2
	fmax.s	$fa3, $fa4, $fa3
	vreplvei.w	$vr4, $vr1, 1
	vreplvei.w	$vr5, $vr0, 1
	fmax.s	$fa4, $fa5, $fa4
	vreplvei.w	$vr1, $vr1, 0
	vreplvei.w	$vr0, $vr0, 0
	fmax.s	$fa0, $fa0, $fa1
	fmax.s	$fa0, $fa0, $fa4
	fmax.s	$fa0, $fa0, $fa3
	fmax.s	$fa0, $fa0, $fa2
	beqz	$a2, .LBB9_5
	.p2align	4, , 16
.LBB9_4:                                # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a2, $a0, $a6
	fldx.s	$fa1, $a2, $a1
	addi.d	$a6, $a6, 4
	fmax.s	$fa0, $fa0, $fa1
	bnez	$a6, .LBB9_4
.LBB9_5:                                # %"_ZSt10__invoke_rIfRZ4mainE3$_1JPfjEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end9:
	.size	_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_1E9_M_invokeERKSt9_Any_dataOS0_Oj, .Lfunc_end9-_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_1E9_M_invokeERKSt9_Any_dataOS0_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFfPfjEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB10_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB10_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB10_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE3$_1)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE3$_1)
.LBB10_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end10:
	.size	_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end10-_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZNSt17_Function_handlerIFfPfjEZ4mainE3$_2E9_M_invokeERKSt9_Any_dataOS0_Oj
.LCPI11_0:
	.word	0x00800000                      # float 1.17549435E-38
	.text
	.p2align	5
	.type	_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_2E9_M_invokeERKSt9_Any_dataOS0_Oj,@function
_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_2E9_M_invokeERKSt9_Any_dataOS0_Oj: # @"_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_2E9_M_invokeERKSt9_Any_dataOS0_Oj"
# %bb.0:
	ld.d	$a0, $a1, 0
	pcalau12i	$a1, %pc_hi20(.LCPI11_0)
	fld.s	$fa0, $a1, %pc_lo12(.LCPI11_0)
	lu12i.w	$a1, -1
	lu12i.w	$a2, 1
	.p2align	4, , 16
.LBB11_1:                               # =>This Inner Loop Header: Depth=1
	add.d	$a3, $a0, $a1
	fldx.s	$fa1, $a3, $a2
	addi.d	$a1, $a1, 4
	fmax.s	$fa0, $fa0, $fa1
	bnez	$a1, .LBB11_1
# %bb.2:                                # %"_ZSt10__invoke_rIfRZ4mainE3$_2JPfjEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end11:
	.size	_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_2E9_M_invokeERKSt9_Any_dataOS0_Oj, .Lfunc_end11-_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_2E9_M_invokeERKSt9_Any_dataOS0_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFfPfjEZ4mainE3$_2E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_2E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_2E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_2E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB12_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB12_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_2E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB12_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE3$_2)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE3$_2)
.LBB12_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_2E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end12:
	.size	_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_2E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end12-_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_2E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFfPfjEZ4mainE3$_3E9_M_invokeERKSt9_Any_dataOS0_Oj
	.type	_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_3E9_M_invokeERKSt9_Any_dataOS0_Oj,@function
_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_3E9_M_invokeERKSt9_Any_dataOS0_Oj: # @"_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_3E9_M_invokeERKSt9_Any_dataOS0_Oj"
# %bb.0:                                # %vector.ph
	lu12i.w	$a0, 2048
	vreplgr2vr.w	$vr0, $a0
	ld.d	$a0, $a1, 0
	lu12i.w	$a1, -2
	ori	$a6, $a1, 4064
	lu12i.w	$a1, 1
	ori	$a2, $a1, 32
	ori	$a3, $a1, 48
	addi.w	$a4, $zero, -64
	vori.b	$vr3, $vr0, 0
	.p2align	4, , 16
.LBB13_1:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	move	$a5, $a6
	add.d	$a6, $a0, $a6
	vldx	$vr4, $a6, $a2
	vori.b	$vr1, $vr3, 0
	vori.b	$vr2, $vr0, 0
	vldx	$vr5, $a6, $a3
	vreplvei.w	$vr0, $vr4, 1
	vreplvei.w	$vr3, $vr2, 1
	fmax.s	$fa3, $fa3, $fa0
	vreplvei.w	$vr0, $vr4, 0
	vreplvei.w	$vr6, $vr2, 0
	fmax.s	$fa0, $fa6, $fa0
	vextrins.w	$vr0, $vr3, 16
	vreplvei.w	$vr3, $vr4, 2
	vreplvei.w	$vr6, $vr2, 2
	fmax.s	$fa3, $fa6, $fa3
	vextrins.w	$vr0, $vr3, 32
	vreplvei.w	$vr3, $vr4, 3
	vreplvei.w	$vr6, $vr2, 3
	fmax.s	$fa3, $fa6, $fa3
	vextrins.w	$vr0, $vr3, 48
	vreplvei.w	$vr3, $vr5, 1
	vreplvei.w	$vr6, $vr1, 1
	fmax.s	$fa6, $fa6, $fa3
	vreplvei.w	$vr3, $vr5, 0
	vreplvei.w	$vr7, $vr1, 0
	fmax.s	$fa3, $fa7, $fa3
	vextrins.w	$vr3, $vr6, 16
	vreplvei.w	$vr6, $vr5, 2
	vreplvei.w	$vr7, $vr1, 2
	fmax.s	$fa6, $fa7, $fa6
	vextrins.w	$vr3, $vr6, 32
	vreplvei.w	$vr6, $vr5, 3
	vreplvei.w	$vr7, $vr1, 3
	fmax.s	$fa6, $fa7, $fa6
	vextrins.w	$vr3, $vr6, 48
	vfcmp.cun.s	$vr4, $vr4, $vr5
	vmskltz.w	$vr4, $vr4
	vpickve2gr.hu	$a7, $vr4, 0
	addi.d	$a6, $a5, 32
	bnez	$a7, .LBB13_3
# %bb.2:                                # %vector.body
                                        #   in Loop: Header=BB13_1 Depth=1
	bne	$a5, $a4, .LBB13_1
.LBB13_3:                               # %middle.block
	andi	$a2, $a7, 15
	sltu	$a3, $zero, $a2
	vreplgr2vr.w	$vr4, $a3
	vslli.w	$vr4, $vr4, 31
	vsrai.w	$vr4, $vr4, 31
	vbitsel.v	$vr0, $vr0, $vr2, $vr4
	vbitsel.v	$vr1, $vr3, $vr1, $vr4
	vreplvei.w	$vr2, $vr1, 3
	vreplvei.w	$vr3, $vr0, 3
	fmax.s	$fa2, $fa3, $fa2
	vreplvei.w	$vr3, $vr1, 2
	vreplvei.w	$vr4, $vr0, 2
	fmax.s	$fa3, $fa4, $fa3
	vreplvei.w	$vr4, $vr1, 1
	vreplvei.w	$vr5, $vr0, 1
	fmax.s	$fa4, $fa5, $fa4
	vreplvei.w	$vr1, $vr1, 0
	vreplvei.w	$vr0, $vr0, 0
	fmax.s	$fa0, $fa0, $fa1
	fmax.s	$fa0, $fa0, $fa4
	fmax.s	$fa0, $fa0, $fa3
	fmax.s	$fa0, $fa0, $fa2
	beqz	$a2, .LBB13_5
	.p2align	4, , 16
.LBB13_4:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a2, $a0, $a6
	fldx.s	$fa1, $a2, $a1
	addi.d	$a6, $a6, 4
	fmax.s	$fa0, $fa0, $fa1
	bnez	$a6, .LBB13_4
.LBB13_5:                               # %"_ZSt10__invoke_rIfRZ4mainE3$_3JPfjEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end13:
	.size	_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_3E9_M_invokeERKSt9_Any_dataOS0_Oj, .Lfunc_end13-_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_3E9_M_invokeERKSt9_Any_dataOS0_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFfPfjEZ4mainE3$_3E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_3E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_3E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_3E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB14_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB14_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_3E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB14_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE3$_3)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE3$_3)
.LBB14_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_3E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end14:
	.size	_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_3E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end14-_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_3E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZNSt17_Function_handlerIFfPfjEZ4mainE3$_4E9_M_invokeERKSt9_Any_dataOS0_Oj
.LCPI15_0:
	.word	0x00000001                      # float 1.40129846E-45
	.text
	.p2align	5
	.type	_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_4E9_M_invokeERKSt9_Any_dataOS0_Oj,@function
_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_4E9_M_invokeERKSt9_Any_dataOS0_Oj: # @"_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_4E9_M_invokeERKSt9_Any_dataOS0_Oj"
# %bb.0:
	ld.d	$a0, $a1, 0
	pcalau12i	$a1, %pc_hi20(.LCPI15_0)
	fld.s	$fa0, $a1, %pc_lo12(.LCPI15_0)
	lu12i.w	$a1, -1
	lu12i.w	$a2, 1
	.p2align	4, , 16
.LBB15_1:                               # =>This Inner Loop Header: Depth=1
	add.d	$a3, $a0, $a1
	fldx.s	$fa1, $a3, $a2
	addi.d	$a1, $a1, 4
	fmax.s	$fa0, $fa0, $fa1
	bnez	$a1, .LBB15_1
# %bb.2:                                # %"_ZSt10__invoke_rIfRZ4mainE3$_4JPfjEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end15:
	.size	_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_4E9_M_invokeERKSt9_Any_dataOS0_Oj, .Lfunc_end15-_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_4E9_M_invokeERKSt9_Any_dataOS0_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFfPfjEZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB16_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB16_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB16_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE3$_4)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE3$_4)
.LBB16_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end16:
	.size	_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end16-_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFfPfjEZ4mainE3$_5E9_M_invokeERKSt9_Any_dataOS0_Oj
	.type	_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_5E9_M_invokeERKSt9_Any_dataOS0_Oj,@function
_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_5E9_M_invokeERKSt9_Any_dataOS0_Oj: # @"_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_5E9_M_invokeERKSt9_Any_dataOS0_Oj"
# %bb.0:                                # %vector.ph
	ld.d	$a0, $a1, 0
	vrepli.w	$vr0, 1
	lu12i.w	$a1, -2
	ori	$a6, $a1, 4064
	lu12i.w	$a1, 1
	ori	$a2, $a1, 32
	ori	$a3, $a1, 48
	addi.w	$a4, $zero, -64
	vori.b	$vr3, $vr0, 0
	.p2align	4, , 16
.LBB17_1:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	move	$a5, $a6
	add.d	$a6, $a0, $a6
	vldx	$vr4, $a6, $a2
	vori.b	$vr1, $vr3, 0
	vori.b	$vr2, $vr0, 0
	vldx	$vr5, $a6, $a3
	vreplvei.w	$vr0, $vr4, 1
	vreplvei.w	$vr3, $vr2, 1
	fmax.s	$fa3, $fa3, $fa0
	vreplvei.w	$vr0, $vr4, 0
	vreplvei.w	$vr6, $vr2, 0
	fmax.s	$fa0, $fa6, $fa0
	vextrins.w	$vr0, $vr3, 16
	vreplvei.w	$vr3, $vr4, 2
	vreplvei.w	$vr6, $vr2, 2
	fmax.s	$fa3, $fa6, $fa3
	vextrins.w	$vr0, $vr3, 32
	vreplvei.w	$vr3, $vr4, 3
	vreplvei.w	$vr6, $vr2, 3
	fmax.s	$fa3, $fa6, $fa3
	vextrins.w	$vr0, $vr3, 48
	vreplvei.w	$vr3, $vr5, 1
	vreplvei.w	$vr6, $vr1, 1
	fmax.s	$fa6, $fa6, $fa3
	vreplvei.w	$vr3, $vr5, 0
	vreplvei.w	$vr7, $vr1, 0
	fmax.s	$fa3, $fa7, $fa3
	vextrins.w	$vr3, $vr6, 16
	vreplvei.w	$vr6, $vr5, 2
	vreplvei.w	$vr7, $vr1, 2
	fmax.s	$fa6, $fa7, $fa6
	vextrins.w	$vr3, $vr6, 32
	vreplvei.w	$vr6, $vr5, 3
	vreplvei.w	$vr7, $vr1, 3
	fmax.s	$fa6, $fa7, $fa6
	vextrins.w	$vr3, $vr6, 48
	vfcmp.cun.s	$vr4, $vr4, $vr5
	vmskltz.w	$vr4, $vr4
	vpickve2gr.hu	$a7, $vr4, 0
	addi.d	$a6, $a5, 32
	bnez	$a7, .LBB17_3
# %bb.2:                                # %vector.body
                                        #   in Loop: Header=BB17_1 Depth=1
	bne	$a5, $a4, .LBB17_1
.LBB17_3:                               # %middle.block
	andi	$a2, $a7, 15
	sltu	$a3, $zero, $a2
	vreplgr2vr.w	$vr4, $a3
	vslli.w	$vr4, $vr4, 31
	vsrai.w	$vr4, $vr4, 31
	vbitsel.v	$vr0, $vr0, $vr2, $vr4
	vbitsel.v	$vr1, $vr3, $vr1, $vr4
	vreplvei.w	$vr2, $vr1, 3
	vreplvei.w	$vr3, $vr0, 3
	fmax.s	$fa2, $fa3, $fa2
	vreplvei.w	$vr3, $vr1, 2
	vreplvei.w	$vr4, $vr0, 2
	fmax.s	$fa3, $fa4, $fa3
	vreplvei.w	$vr4, $vr1, 1
	vreplvei.w	$vr5, $vr0, 1
	fmax.s	$fa4, $fa5, $fa4
	vreplvei.w	$vr1, $vr1, 0
	vreplvei.w	$vr0, $vr0, 0
	fmax.s	$fa0, $fa0, $fa1
	fmax.s	$fa0, $fa0, $fa4
	fmax.s	$fa0, $fa0, $fa3
	fmax.s	$fa0, $fa0, $fa2
	beqz	$a2, .LBB17_5
	.p2align	4, , 16
.LBB17_4:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a2, $a0, $a6
	fldx.s	$fa1, $a2, $a1
	addi.d	$a6, $a6, 4
	fmax.s	$fa0, $fa0, $fa1
	bnez	$a6, .LBB17_4
.LBB17_5:                               # %"_ZSt10__invoke_rIfRZ4mainE3$_5JPfjEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end17:
	.size	_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_5E9_M_invokeERKSt9_Any_dataOS0_Oj, .Lfunc_end17-_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_5E9_M_invokeERKSt9_Any_dataOS0_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFfPfjEZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB18_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB18_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB18_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE3$_5)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE3$_5)
.LBB18_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end18:
	.size	_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end18-_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZNSt17_Function_handlerIFfPfjEZ4mainE3$_6E9_M_invokeERKSt9_Any_dataOS0_Oj
.LCPI19_0:
	.word	0x7fc00000                      # float NaN
	.text
	.p2align	5
	.type	_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_6E9_M_invokeERKSt9_Any_dataOS0_Oj,@function
_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_6E9_M_invokeERKSt9_Any_dataOS0_Oj: # @"_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_6E9_M_invokeERKSt9_Any_dataOS0_Oj"
# %bb.0:
	ld.d	$a0, $a1, 0
	pcalau12i	$a1, %pc_hi20(.LCPI19_0)
	fld.s	$fa0, $a1, %pc_lo12(.LCPI19_0)
	lu12i.w	$a1, -1
	lu12i.w	$a2, 1
	.p2align	4, , 16
.LBB19_1:                               # =>This Inner Loop Header: Depth=1
	add.d	$a3, $a0, $a1
	fldx.s	$fa1, $a3, $a2
	addi.d	$a1, $a1, 4
	fmax.s	$fa0, $fa0, $fa1
	bnez	$a1, .LBB19_1
# %bb.2:                                # %"_ZSt10__invoke_rIfRZ4mainE3$_6JPfjEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end19:
	.size	_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_6E9_M_invokeERKSt9_Any_dataOS0_Oj, .Lfunc_end19-_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_6E9_M_invokeERKSt9_Any_dataOS0_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFfPfjEZ4mainE3$_6E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_6E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_6E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_6E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB20_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB20_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_6E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB20_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE3$_6)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE3$_6)
.LBB20_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_6E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end20:
	.size	_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_6E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end20-_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_6E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFfPfjEZ4mainE3$_7E9_M_invokeERKSt9_Any_dataOS0_Oj
	.type	_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_7E9_M_invokeERKSt9_Any_dataOS0_Oj,@function
_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_7E9_M_invokeERKSt9_Any_dataOS0_Oj: # @"_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_7E9_M_invokeERKSt9_Any_dataOS0_Oj"
# %bb.0:                                # %vector.ph
	lu12i.w	$a0, 523264
	vreplgr2vr.w	$vr0, $a0
	ld.d	$a0, $a1, 0
	lu12i.w	$a1, -2
	ori	$a6, $a1, 4064
	lu12i.w	$a1, 1
	ori	$a2, $a1, 32
	ori	$a3, $a1, 48
	addi.w	$a4, $zero, -64
	vori.b	$vr3, $vr0, 0
	.p2align	4, , 16
.LBB21_1:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	move	$a5, $a6
	add.d	$a6, $a0, $a6
	vldx	$vr4, $a6, $a2
	vori.b	$vr1, $vr3, 0
	vori.b	$vr2, $vr0, 0
	vldx	$vr5, $a6, $a3
	vreplvei.w	$vr0, $vr4, 1
	vreplvei.w	$vr3, $vr2, 1
	fmax.s	$fa3, $fa3, $fa0
	vreplvei.w	$vr0, $vr4, 0
	vreplvei.w	$vr6, $vr2, 0
	fmax.s	$fa0, $fa6, $fa0
	vextrins.w	$vr0, $vr3, 16
	vreplvei.w	$vr3, $vr4, 2
	vreplvei.w	$vr6, $vr2, 2
	fmax.s	$fa3, $fa6, $fa3
	vextrins.w	$vr0, $vr3, 32
	vreplvei.w	$vr3, $vr4, 3
	vreplvei.w	$vr6, $vr2, 3
	fmax.s	$fa3, $fa6, $fa3
	vextrins.w	$vr0, $vr3, 48
	vreplvei.w	$vr3, $vr5, 1
	vreplvei.w	$vr6, $vr1, 1
	fmax.s	$fa6, $fa6, $fa3
	vreplvei.w	$vr3, $vr5, 0
	vreplvei.w	$vr7, $vr1, 0
	fmax.s	$fa3, $fa7, $fa3
	vextrins.w	$vr3, $vr6, 16
	vreplvei.w	$vr6, $vr5, 2
	vreplvei.w	$vr7, $vr1, 2
	fmax.s	$fa6, $fa7, $fa6
	vextrins.w	$vr3, $vr6, 32
	vreplvei.w	$vr6, $vr5, 3
	vreplvei.w	$vr7, $vr1, 3
	fmax.s	$fa6, $fa7, $fa6
	vextrins.w	$vr3, $vr6, 48
	vfcmp.cun.s	$vr4, $vr4, $vr5
	vmskltz.w	$vr4, $vr4
	vpickve2gr.hu	$a7, $vr4, 0
	addi.d	$a6, $a5, 32
	bnez	$a7, .LBB21_3
# %bb.2:                                # %vector.body
                                        #   in Loop: Header=BB21_1 Depth=1
	bne	$a5, $a4, .LBB21_1
.LBB21_3:                               # %middle.block
	andi	$a2, $a7, 15
	sltu	$a3, $zero, $a2
	vreplgr2vr.w	$vr4, $a3
	vslli.w	$vr4, $vr4, 31
	vsrai.w	$vr4, $vr4, 31
	vbitsel.v	$vr0, $vr0, $vr2, $vr4
	vbitsel.v	$vr1, $vr3, $vr1, $vr4
	vreplvei.w	$vr2, $vr1, 3
	vreplvei.w	$vr3, $vr0, 3
	fmax.s	$fa2, $fa3, $fa2
	vreplvei.w	$vr3, $vr1, 2
	vreplvei.w	$vr4, $vr0, 2
	fmax.s	$fa3, $fa4, $fa3
	vreplvei.w	$vr4, $vr1, 1
	vreplvei.w	$vr5, $vr0, 1
	fmax.s	$fa4, $fa5, $fa4
	vreplvei.w	$vr1, $vr1, 0
	vreplvei.w	$vr0, $vr0, 0
	fmax.s	$fa0, $fa0, $fa1
	fmax.s	$fa0, $fa0, $fa4
	fmax.s	$fa0, $fa0, $fa3
	fmax.s	$fa0, $fa0, $fa2
	beqz	$a2, .LBB21_5
	.p2align	4, , 16
.LBB21_4:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a2, $a0, $a6
	fldx.s	$fa1, $a2, $a1
	addi.d	$a6, $a6, 4
	fmax.s	$fa0, $fa0, $fa1
	bnez	$a6, .LBB21_4
.LBB21_5:                               # %"_ZSt10__invoke_rIfRZ4mainE3$_7JPfjEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end21:
	.size	_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_7E9_M_invokeERKSt9_Any_dataOS0_Oj, .Lfunc_end21-_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_7E9_M_invokeERKSt9_Any_dataOS0_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFfPfjEZ4mainE3$_7E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_7E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_7E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_7E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB22_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB22_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_7E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB22_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE3$_7)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE3$_7)
.LBB22_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_7E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end22:
	.size	_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_7E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end22-_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_7E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFfPfjEZ4mainE3$_8E9_M_invokeERKSt9_Any_dataOS0_Oj
	.type	_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_8E9_M_invokeERKSt9_Any_dataOS0_Oj,@function
_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_8E9_M_invokeERKSt9_Any_dataOS0_Oj: # @"_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_8E9_M_invokeERKSt9_Any_dataOS0_Oj"
# %bb.0:
	ld.d	$a0, $a1, 0
	lu12i.w	$a1, -1
	vldi	$vr0, -1152
	lu12i.w	$a2, 1
	.p2align	4, , 16
.LBB23_1:                               # =>This Inner Loop Header: Depth=1
	add.d	$a3, $a0, $a1
	fldx.s	$fa1, $a3, $a2
	fcmp.clt.s	$fcc0, $fa0, $fa1
	addi.d	$a1, $a1, 4
	fsel	$fa0, $fa0, $fa1, $fcc0
	bnez	$a1, .LBB23_1
# %bb.2:                                # %"_ZSt10__invoke_rIfRZ4mainE3$_8JPfjEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
                                        # kill: def $f0 killed $f0 killed $vr0
	ret
.Lfunc_end23:
	.size	_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_8E9_M_invokeERKSt9_Any_dataOS0_Oj, .Lfunc_end23-_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_8E9_M_invokeERKSt9_Any_dataOS0_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFfPfjEZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB24_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB24_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB24_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE3$_8)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE3$_8)
.LBB24_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end24:
	.size	_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end24-_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFfPfjEZ4mainE3$_9E9_M_invokeERKSt9_Any_dataOS0_Oj
	.type	_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_9E9_M_invokeERKSt9_Any_dataOS0_Oj,@function
_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_9E9_M_invokeERKSt9_Any_dataOS0_Oj: # @"_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_9E9_M_invokeERKSt9_Any_dataOS0_Oj"
# %bb.0:
	ld.d	$a0, $a1, 0
	lu12i.w	$a1, -1
	vldi	$vr0, -1152
	lu12i.w	$a2, 1
	.p2align	4, , 16
.LBB25_1:                               # =>This Inner Loop Header: Depth=1
	add.d	$a3, $a0, $a1
	fldx.s	$fa1, $a3, $a2
	fcmp.clt.s	$fcc0, $fa0, $fa1
	addi.d	$a1, $a1, 4
	fsel	$fa0, $fa0, $fa1, $fcc0
	bnez	$a1, .LBB25_1
# %bb.2:                                # %"_ZSt10__invoke_rIfRZ4mainE3$_9JPfjEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
                                        # kill: def $f0 killed $f0 killed $vr0
	ret
.Lfunc_end25:
	.size	_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_9E9_M_invokeERKSt9_Any_dataOS0_Oj, .Lfunc_end25-_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_9E9_M_invokeERKSt9_Any_dataOS0_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFfPfjEZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB26_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB26_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB26_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE3$_9)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE3$_9)
.LBB26_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end26:
	.size	_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end26-_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZNSt17_Function_handlerIFfPfjEZ4mainE4$_10E9_M_invokeERKSt9_Any_dataOS0_Oj
.LCPI27_0:
	.word	0x00800000                      # float 1.17549435E-38
	.text
	.p2align	5
	.type	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_10E9_M_invokeERKSt9_Any_dataOS0_Oj,@function
_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_10E9_M_invokeERKSt9_Any_dataOS0_Oj: # @"_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_10E9_M_invokeERKSt9_Any_dataOS0_Oj"
# %bb.0:
	ld.d	$a0, $a1, 0
	pcalau12i	$a1, %pc_hi20(.LCPI27_0)
	fld.s	$fa0, $a1, %pc_lo12(.LCPI27_0)
	lu12i.w	$a1, -1
	lu12i.w	$a2, 1
	.p2align	4, , 16
.LBB27_1:                               # =>This Inner Loop Header: Depth=1
	add.d	$a3, $a0, $a1
	fldx.s	$fa1, $a3, $a2
	fcmp.clt.s	$fcc0, $fa0, $fa1
	addi.d	$a1, $a1, 4
	fsel	$fa0, $fa0, $fa1, $fcc0
	bnez	$a1, .LBB27_1
# %bb.2:                                # %"_ZSt10__invoke_rIfRZ4mainE4$_10JPfjEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end27:
	.size	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_10E9_M_invokeERKSt9_Any_dataOS0_Oj, .Lfunc_end27-_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_10E9_M_invokeERKSt9_Any_dataOS0_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFfPfjEZ4mainE4$_10E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_10E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_10E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_10E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB28_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB28_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_10E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB28_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_10)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_10)
.LBB28_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_10E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end28:
	.size	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_10E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end28-_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_10E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZNSt17_Function_handlerIFfPfjEZ4mainE4$_11E9_M_invokeERKSt9_Any_dataOS0_Oj
.LCPI29_0:
	.word	0x00800000                      # float 1.17549435E-38
	.text
	.p2align	5
	.type	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_11E9_M_invokeERKSt9_Any_dataOS0_Oj,@function
_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_11E9_M_invokeERKSt9_Any_dataOS0_Oj: # @"_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_11E9_M_invokeERKSt9_Any_dataOS0_Oj"
# %bb.0:
	ld.d	$a0, $a1, 0
	pcalau12i	$a1, %pc_hi20(.LCPI29_0)
	fld.s	$fa0, $a1, %pc_lo12(.LCPI29_0)
	lu12i.w	$a1, -1
	lu12i.w	$a2, 1
	.p2align	4, , 16
.LBB29_1:                               # =>This Inner Loop Header: Depth=1
	add.d	$a3, $a0, $a1
	fldx.s	$fa1, $a3, $a2
	fcmp.clt.s	$fcc0, $fa0, $fa1
	addi.d	$a1, $a1, 4
	fsel	$fa0, $fa0, $fa1, $fcc0
	bnez	$a1, .LBB29_1
# %bb.2:                                # %"_ZSt10__invoke_rIfRZ4mainE4$_11JPfjEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end29:
	.size	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_11E9_M_invokeERKSt9_Any_dataOS0_Oj, .Lfunc_end29-_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_11E9_M_invokeERKSt9_Any_dataOS0_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFfPfjEZ4mainE4$_11E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_11E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_11E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_11E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB30_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB30_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_11E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB30_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_11)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_11)
.LBB30_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_11E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end30:
	.size	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_11E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end30-_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_11E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZNSt17_Function_handlerIFfPfjEZ4mainE4$_12E9_M_invokeERKSt9_Any_dataOS0_Oj
.LCPI31_0:
	.word	0x00000001                      # float 1.40129846E-45
	.text
	.p2align	5
	.type	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_12E9_M_invokeERKSt9_Any_dataOS0_Oj,@function
_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_12E9_M_invokeERKSt9_Any_dataOS0_Oj: # @"_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_12E9_M_invokeERKSt9_Any_dataOS0_Oj"
# %bb.0:
	ld.d	$a0, $a1, 0
	pcalau12i	$a1, %pc_hi20(.LCPI31_0)
	fld.s	$fa0, $a1, %pc_lo12(.LCPI31_0)
	lu12i.w	$a1, -2
	ori	$a1, $a1, 4092
	lu12i.w	$a2, 1
	ori	$a2, $a2, 4
	.p2align	4, , 16
.LBB31_1:                               # =>This Inner Loop Header: Depth=1
	add.d	$a3, $a0, $a1
	fldx.s	$fa1, $a3, $a2
	fcmp.clt.s	$fcc0, $fa0, $fa1
	addi.d	$a1, $a1, 4
	fsel	$fa0, $fa0, $fa1, $fcc0
	bnez	$a1, .LBB31_1
# %bb.2:                                # %"_ZSt10__invoke_rIfRZ4mainE4$_12JPfjEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end31:
	.size	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_12E9_M_invokeERKSt9_Any_dataOS0_Oj, .Lfunc_end31-_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_12E9_M_invokeERKSt9_Any_dataOS0_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFfPfjEZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB32_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB32_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB32_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_12)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_12)
.LBB32_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end32:
	.size	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end32-_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZNSt17_Function_handlerIFfPfjEZ4mainE4$_13E9_M_invokeERKSt9_Any_dataOS0_Oj
.LCPI33_0:
	.word	0x00000001                      # float 1.40129846E-45
	.text
	.p2align	5
	.type	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_13E9_M_invokeERKSt9_Any_dataOS0_Oj,@function
_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_13E9_M_invokeERKSt9_Any_dataOS0_Oj: # @"_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_13E9_M_invokeERKSt9_Any_dataOS0_Oj"
# %bb.0:
	ld.d	$a0, $a1, 0
	pcalau12i	$a1, %pc_hi20(.LCPI33_0)
	fld.s	$fa0, $a1, %pc_lo12(.LCPI33_0)
	lu12i.w	$a1, -2
	ori	$a1, $a1, 4092
	lu12i.w	$a2, 1
	ori	$a2, $a2, 4
	.p2align	4, , 16
.LBB33_1:                               # =>This Inner Loop Header: Depth=1
	add.d	$a3, $a0, $a1
	fldx.s	$fa1, $a3, $a2
	fcmp.clt.s	$fcc0, $fa0, $fa1
	addi.d	$a1, $a1, 4
	fsel	$fa0, $fa0, $fa1, $fcc0
	bnez	$a1, .LBB33_1
# %bb.2:                                # %"_ZSt10__invoke_rIfRZ4mainE4$_13JPfjEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end33:
	.size	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_13E9_M_invokeERKSt9_Any_dataOS0_Oj, .Lfunc_end33-_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_13E9_M_invokeERKSt9_Any_dataOS0_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFfPfjEZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB34_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB34_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB34_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_13)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_13)
.LBB34_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end34:
	.size	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end34-_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZNSt17_Function_handlerIFfPfjEZ4mainE4$_14E9_M_invokeERKSt9_Any_dataOS0_Oj
.LCPI35_0:
	.word	0x7fc00000                      # float NaN
	.text
	.p2align	5
	.type	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_14E9_M_invokeERKSt9_Any_dataOS0_Oj,@function
_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_14E9_M_invokeERKSt9_Any_dataOS0_Oj: # @"_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_14E9_M_invokeERKSt9_Any_dataOS0_Oj"
# %bb.0:
	ld.d	$a0, $a1, 0
	pcalau12i	$a1, %pc_hi20(.LCPI35_0)
	fld.s	$fa0, $a1, %pc_lo12(.LCPI35_0)
	lu12i.w	$a1, -2
	ori	$a1, $a1, 4092
	lu12i.w	$a2, 1
	ori	$a2, $a2, 4
	.p2align	4, , 16
.LBB35_1:                               # =>This Inner Loop Header: Depth=1
	add.d	$a3, $a0, $a1
	fldx.s	$fa1, $a3, $a2
	fcmp.clt.s	$fcc0, $fa0, $fa1
	addi.d	$a1, $a1, 4
	fsel	$fa0, $fa0, $fa1, $fcc0
	bnez	$a1, .LBB35_1
# %bb.2:                                # %"_ZSt10__invoke_rIfRZ4mainE4$_14JPfjEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end35:
	.size	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_14E9_M_invokeERKSt9_Any_dataOS0_Oj, .Lfunc_end35-_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_14E9_M_invokeERKSt9_Any_dataOS0_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFfPfjEZ4mainE4$_14E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_14E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_14E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_14E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB36_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB36_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_14E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB36_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_14)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_14)
.LBB36_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_14E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end36:
	.size	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_14E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end36-_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_14E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZNSt17_Function_handlerIFfPfjEZ4mainE4$_15E9_M_invokeERKSt9_Any_dataOS0_Oj
.LCPI37_0:
	.word	0x7fc00000                      # float NaN
	.text
	.p2align	5
	.type	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_15E9_M_invokeERKSt9_Any_dataOS0_Oj,@function
_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_15E9_M_invokeERKSt9_Any_dataOS0_Oj: # @"_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_15E9_M_invokeERKSt9_Any_dataOS0_Oj"
# %bb.0:
	ld.d	$a0, $a1, 0
	pcalau12i	$a1, %pc_hi20(.LCPI37_0)
	fld.s	$fa0, $a1, %pc_lo12(.LCPI37_0)
	lu12i.w	$a1, -2
	ori	$a1, $a1, 4092
	lu12i.w	$a2, 1
	ori	$a2, $a2, 4
	.p2align	4, , 16
.LBB37_1:                               # =>This Inner Loop Header: Depth=1
	add.d	$a3, $a0, $a1
	fldx.s	$fa1, $a3, $a2
	fcmp.clt.s	$fcc0, $fa0, $fa1
	addi.d	$a1, $a1, 4
	fsel	$fa0, $fa0, $fa1, $fcc0
	bnez	$a1, .LBB37_1
# %bb.2:                                # %"_ZSt10__invoke_rIfRZ4mainE4$_15JPfjEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end37:
	.size	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_15E9_M_invokeERKSt9_Any_dataOS0_Oj, .Lfunc_end37-_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_15E9_M_invokeERKSt9_Any_dataOS0_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFfPfjEZ4mainE4$_15E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_15E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_15E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_15E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB38_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB38_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_15E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB38_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_15)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_15)
.LBB38_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_15E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end38:
	.size	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_15E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end38-_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_15E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFfPfjEZ4mainE4$_16E9_M_invokeERKSt9_Any_dataOS0_Oj
	.type	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_16E9_M_invokeERKSt9_Any_dataOS0_Oj,@function
_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_16E9_M_invokeERKSt9_Any_dataOS0_Oj: # @"_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_16E9_M_invokeERKSt9_Any_dataOS0_Oj"
# %bb.0:
	ld.d	$a0, $a1, 0
	lu12i.w	$a1, -1
	vldi	$vr0, -1152
	lu12i.w	$a2, 1
	.p2align	4, , 16
.LBB39_1:                               # =>This Inner Loop Header: Depth=1
	add.d	$a3, $a0, $a1
	fldx.s	$fa1, $a3, $a2
	fcmp.cle.s	$fcc0, $fa1, $fa0
	addi.d	$a1, $a1, 4
	fsel	$fa0, $fa1, $fa0, $fcc0
	bnez	$a1, .LBB39_1
# %bb.2:                                # %"_ZSt10__invoke_rIfRZ4mainE4$_16JPfjEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
                                        # kill: def $f0 killed $f0 killed $vr0
	ret
.Lfunc_end39:
	.size	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_16E9_M_invokeERKSt9_Any_dataOS0_Oj, .Lfunc_end39-_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_16E9_M_invokeERKSt9_Any_dataOS0_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFfPfjEZ4mainE4$_16E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_16E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_16E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_16E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB40_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB40_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_16E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB40_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_16)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_16)
.LBB40_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_16E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end40:
	.size	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_16E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end40-_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_16E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFfPfjEZ4mainE4$_17E9_M_invokeERKSt9_Any_dataOS0_Oj
	.type	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_17E9_M_invokeERKSt9_Any_dataOS0_Oj,@function
_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_17E9_M_invokeERKSt9_Any_dataOS0_Oj: # @"_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_17E9_M_invokeERKSt9_Any_dataOS0_Oj"
# %bb.0:
	ld.d	$a0, $a1, 0
	lu12i.w	$a1, -1
	vldi	$vr0, -1152
	lu12i.w	$a2, 1
	.p2align	4, , 16
.LBB41_1:                               # =>This Inner Loop Header: Depth=1
	add.d	$a3, $a0, $a1
	fldx.s	$fa1, $a3, $a2
	fcmp.cle.s	$fcc0, $fa1, $fa0
	addi.d	$a1, $a1, 4
	fsel	$fa0, $fa1, $fa0, $fcc0
	bnez	$a1, .LBB41_1
# %bb.2:                                # %"_ZSt10__invoke_rIfRZ4mainE4$_17JPfjEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
                                        # kill: def $f0 killed $f0 killed $vr0
	ret
.Lfunc_end41:
	.size	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_17E9_M_invokeERKSt9_Any_dataOS0_Oj, .Lfunc_end41-_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_17E9_M_invokeERKSt9_Any_dataOS0_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFfPfjEZ4mainE4$_17E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_17E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_17E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_17E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB42_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB42_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_17E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB42_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_17)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_17)
.LBB42_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_17E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end42:
	.size	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_17E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end42-_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_17E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFfPfjEZ4mainE4$_18E9_M_invokeERKSt9_Any_dataOS0_Oj
	.type	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_18E9_M_invokeERKSt9_Any_dataOS0_Oj,@function
_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_18E9_M_invokeERKSt9_Any_dataOS0_Oj: # @"_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_18E9_M_invokeERKSt9_Any_dataOS0_Oj"
# %bb.0:
	ld.d	$a0, $a1, 0
	lu12i.w	$a1, -1
	vldi	$vr0, -1152
	lu12i.w	$a2, 1
	.p2align	4, , 16
.LBB43_1:                               # =>This Inner Loop Header: Depth=1
	add.d	$a3, $a0, $a1
	fldx.s	$fa1, $a3, $a2
	fcmp.clt.s	$fcc0, $fa1, $fa0
	addi.d	$a1, $a1, 4
	fsel	$fa0, $fa1, $fa0, $fcc0
	bnez	$a1, .LBB43_1
# %bb.2:                                # %"_ZSt10__invoke_rIfRZ4mainE4$_18JPfjEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
                                        # kill: def $f0 killed $f0 killed $vr0
	ret
.Lfunc_end43:
	.size	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_18E9_M_invokeERKSt9_Any_dataOS0_Oj, .Lfunc_end43-_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_18E9_M_invokeERKSt9_Any_dataOS0_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFfPfjEZ4mainE4$_18E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_18E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_18E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_18E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB44_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB44_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_18E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB44_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_18)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_18)
.LBB44_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_18E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end44:
	.size	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_18E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end44-_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_18E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFfPfjEZ4mainE4$_19E9_M_invokeERKSt9_Any_dataOS0_Oj
	.type	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_19E9_M_invokeERKSt9_Any_dataOS0_Oj,@function
_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_19E9_M_invokeERKSt9_Any_dataOS0_Oj: # @"_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_19E9_M_invokeERKSt9_Any_dataOS0_Oj"
# %bb.0:
	ld.d	$a0, $a1, 0
	lu12i.w	$a1, -1
	vldi	$vr0, -1152
	lu12i.w	$a2, 1
	.p2align	4, , 16
.LBB45_1:                               # =>This Inner Loop Header: Depth=1
	add.d	$a3, $a0, $a1
	fldx.s	$fa1, $a3, $a2
	fcmp.clt.s	$fcc0, $fa1, $fa0
	addi.d	$a1, $a1, 4
	fsel	$fa0, $fa1, $fa0, $fcc0
	bnez	$a1, .LBB45_1
# %bb.2:                                # %"_ZSt10__invoke_rIfRZ4mainE4$_19JPfjEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
                                        # kill: def $f0 killed $f0 killed $vr0
	ret
.Lfunc_end45:
	.size	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_19E9_M_invokeERKSt9_Any_dataOS0_Oj, .Lfunc_end45-_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_19E9_M_invokeERKSt9_Any_dataOS0_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFfPfjEZ4mainE4$_19E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_19E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_19E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_19E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB46_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB46_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_19E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB46_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_19)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_19)
.LBB46_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_19E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end46:
	.size	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_19E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end46-_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_19E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFfPfjEZ4mainE4$_20E9_M_invokeERKSt9_Any_dataOS0_Oj
	.type	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_20E9_M_invokeERKSt9_Any_dataOS0_Oj,@function
_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_20E9_M_invokeERKSt9_Any_dataOS0_Oj: # @"_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_20E9_M_invokeERKSt9_Any_dataOS0_Oj"
# %bb.0:
	ld.d	$a0, $a1, 0
	lu12i.w	$a1, -1
	vldi	$vr0, -1152
	lu12i.w	$a2, 1
	.p2align	4, , 16
.LBB47_1:                               # =>This Inner Loop Header: Depth=1
	add.d	$a3, $a0, $a1
	fldx.s	$fa1, $a3, $a2
	fcmp.clt.s	$fcc0, $fa0, $fa1
	addi.d	$a1, $a1, 4
	fsel	$fa0, $fa0, $fa1, $fcc0
	bnez	$a1, .LBB47_1
# %bb.2:                                # %"_ZSt10__invoke_rIfRZ4mainE4$_20JPfjEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
                                        # kill: def $f0 killed $f0 killed $vr0
	ret
.Lfunc_end47:
	.size	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_20E9_M_invokeERKSt9_Any_dataOS0_Oj, .Lfunc_end47-_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_20E9_M_invokeERKSt9_Any_dataOS0_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFfPfjEZ4mainE4$_20E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_20E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_20E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_20E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB48_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB48_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_20E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB48_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_20)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_20)
.LBB48_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_20E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end48:
	.size	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_20E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end48-_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_20E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFfPfjEZ4mainE4$_21E9_M_invokeERKSt9_Any_dataOS0_Oj
	.type	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_21E9_M_invokeERKSt9_Any_dataOS0_Oj,@function
_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_21E9_M_invokeERKSt9_Any_dataOS0_Oj: # @"_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_21E9_M_invokeERKSt9_Any_dataOS0_Oj"
# %bb.0:
	ld.d	$a0, $a1, 0
	lu12i.w	$a1, -1
	vldi	$vr0, -1152
	lu12i.w	$a2, 1
	.p2align	4, , 16
.LBB49_1:                               # =>This Inner Loop Header: Depth=1
	add.d	$a3, $a0, $a1
	fldx.s	$fa1, $a3, $a2
	fcmp.clt.s	$fcc0, $fa0, $fa1
	addi.d	$a1, $a1, 4
	fsel	$fa0, $fa0, $fa1, $fcc0
	bnez	$a1, .LBB49_1
# %bb.2:                                # %"_ZSt10__invoke_rIfRZ4mainE4$_21JPfjEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
                                        # kill: def $f0 killed $f0 killed $vr0
	ret
.Lfunc_end49:
	.size	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_21E9_M_invokeERKSt9_Any_dataOS0_Oj, .Lfunc_end49-_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_21E9_M_invokeERKSt9_Any_dataOS0_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFfPfjEZ4mainE4$_21E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_21E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_21E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_21E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB50_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB50_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_21E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB50_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_21)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_21)
.LBB50_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_21E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end50:
	.size	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_21E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end50-_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_21E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZNSt17_Function_handlerIFfPfjEZ4mainE4$_22E9_M_invokeERKSt9_Any_dataOS0_Oj
.LCPI51_0:
	.word	0x00000001                      # float 1.40129846E-45
	.text
	.p2align	5
	.type	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_22E9_M_invokeERKSt9_Any_dataOS0_Oj,@function
_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_22E9_M_invokeERKSt9_Any_dataOS0_Oj: # @"_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_22E9_M_invokeERKSt9_Any_dataOS0_Oj"
# %bb.0:
	ld.d	$a0, $a1, 0
	pcalau12i	$a1, %pc_hi20(.LCPI51_0)
	fld.s	$fa0, $a1, %pc_lo12(.LCPI51_0)
	lu12i.w	$a1, -1
	lu12i.w	$a2, 1
	.p2align	4, , 16
.LBB51_1:                               # =>This Inner Loop Header: Depth=1
	add.d	$a3, $a0, $a1
	fldx.s	$fa1, $a3, $a2
	fcmp.clt.s	$fcc0, $fa0, $fa1
	addi.d	$a1, $a1, 4
	fsel	$fa0, $fa0, $fa1, $fcc0
	bnez	$a1, .LBB51_1
# %bb.2:                                # %"_ZSt10__invoke_rIfRZ4mainE4$_22JPfjEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end51:
	.size	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_22E9_M_invokeERKSt9_Any_dataOS0_Oj, .Lfunc_end51-_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_22E9_M_invokeERKSt9_Any_dataOS0_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFfPfjEZ4mainE4$_22E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_22E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_22E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_22E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB52_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB52_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_22E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB52_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_22)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_22)
.LBB52_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_22E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end52:
	.size	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_22E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end52-_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_22E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZNSt17_Function_handlerIFfPfjEZ4mainE4$_23E9_M_invokeERKSt9_Any_dataOS0_Oj
.LCPI53_0:
	.word	0x00000001                      # float 1.40129846E-45
	.text
	.p2align	5
	.type	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_23E9_M_invokeERKSt9_Any_dataOS0_Oj,@function
_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_23E9_M_invokeERKSt9_Any_dataOS0_Oj: # @"_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_23E9_M_invokeERKSt9_Any_dataOS0_Oj"
# %bb.0:
	ld.d	$a0, $a1, 0
	pcalau12i	$a1, %pc_hi20(.LCPI53_0)
	fld.s	$fa0, $a1, %pc_lo12(.LCPI53_0)
	lu12i.w	$a1, -1
	lu12i.w	$a2, 1
	.p2align	4, , 16
.LBB53_1:                               # =>This Inner Loop Header: Depth=1
	add.d	$a3, $a0, $a1
	fldx.s	$fa1, $a3, $a2
	fcmp.clt.s	$fcc0, $fa0, $fa1
	addi.d	$a1, $a1, 4
	fsel	$fa0, $fa0, $fa1, $fcc0
	bnez	$a1, .LBB53_1
# %bb.2:                                # %"_ZSt10__invoke_rIfRZ4mainE4$_23JPfjEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end53:
	.size	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_23E9_M_invokeERKSt9_Any_dataOS0_Oj, .Lfunc_end53-_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_23E9_M_invokeERKSt9_Any_dataOS0_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFfPfjEZ4mainE4$_23E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_23E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_23E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_23E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB54_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB54_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_23E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB54_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_23)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_23)
.LBB54_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_23E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end54:
	.size	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_23E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end54-_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_23E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZNSt17_Function_handlerIFfPfjEZ4mainE4$_24E9_M_invokeERKSt9_Any_dataOS0_Oj
.LCPI55_0:
	.word	0x7fc00000                      # float NaN
	.text
	.p2align	5
	.type	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_24E9_M_invokeERKSt9_Any_dataOS0_Oj,@function
_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_24E9_M_invokeERKSt9_Any_dataOS0_Oj: # @"_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_24E9_M_invokeERKSt9_Any_dataOS0_Oj"
# %bb.0:
	ld.d	$a0, $a1, 0
	pcalau12i	$a1, %pc_hi20(.LCPI55_0)
	fld.s	$fa0, $a1, %pc_lo12(.LCPI55_0)
	lu12i.w	$a1, -1
	lu12i.w	$a2, 1
	.p2align	4, , 16
.LBB55_1:                               # =>This Inner Loop Header: Depth=1
	add.d	$a3, $a0, $a1
	fldx.s	$fa1, $a3, $a2
	fcmp.clt.s	$fcc0, $fa0, $fa1
	addi.d	$a1, $a1, 4
	fsel	$fa0, $fa0, $fa1, $fcc0
	bnez	$a1, .LBB55_1
# %bb.2:                                # %"_ZSt10__invoke_rIfRZ4mainE4$_24JPfjEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end55:
	.size	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_24E9_M_invokeERKSt9_Any_dataOS0_Oj, .Lfunc_end55-_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_24E9_M_invokeERKSt9_Any_dataOS0_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFfPfjEZ4mainE4$_24E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_24E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_24E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_24E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB56_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB56_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_24E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB56_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_24)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_24)
.LBB56_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_24E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end56:
	.size	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_24E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end56-_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_24E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZNSt17_Function_handlerIFfPfjEZ4mainE4$_25E9_M_invokeERKSt9_Any_dataOS0_Oj
.LCPI57_0:
	.word	0x7fc00000                      # float NaN
	.text
	.p2align	5
	.type	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_25E9_M_invokeERKSt9_Any_dataOS0_Oj,@function
_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_25E9_M_invokeERKSt9_Any_dataOS0_Oj: # @"_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_25E9_M_invokeERKSt9_Any_dataOS0_Oj"
# %bb.0:
	ld.d	$a0, $a1, 0
	pcalau12i	$a1, %pc_hi20(.LCPI57_0)
	fld.s	$fa0, $a1, %pc_lo12(.LCPI57_0)
	lu12i.w	$a1, -1
	lu12i.w	$a2, 1
	.p2align	4, , 16
.LBB57_1:                               # =>This Inner Loop Header: Depth=1
	add.d	$a3, $a0, $a1
	fldx.s	$fa1, $a3, $a2
	fcmp.clt.s	$fcc0, $fa0, $fa1
	addi.d	$a1, $a1, 4
	fsel	$fa0, $fa0, $fa1, $fcc0
	bnez	$a1, .LBB57_1
# %bb.2:                                # %"_ZSt10__invoke_rIfRZ4mainE4$_25JPfjEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end57:
	.size	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_25E9_M_invokeERKSt9_Any_dataOS0_Oj, .Lfunc_end57-_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_25E9_M_invokeERKSt9_Any_dataOS0_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFfPfjEZ4mainE4$_25E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_25E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_25E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_25E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB58_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB58_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_25E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB58_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_25)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_25)
.LBB58_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_25E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end58:
	.size	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_25E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end58-_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_25E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	5                               # -- Begin function _GLOBAL__sub_I_fmax_reduction.cpp
	.type	_GLOBAL__sub_I_fmax_reduction.cpp,@function
_GLOBAL__sub_I_fmax_reduction.cpp:      # @_GLOBAL__sub_I_fmax_reduction.cpp
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
.LBB59_1:                               # =>This Inner Loop Header: Depth=1
	srli.d	$a6, $a2, 30
	xor	$a2, $a6, $a2
	mul.d	$a2, $a2, $a4
	add.d	$a2, $a3, $a2
	bstrpick.d	$a2, $a2, 31, 0
	st.d	$a2, $a1, 0
	addi.d	$a3, $a3, 1
	addi.d	$a1, $a1, 8
	bne	$a3, $a5, .LBB59_1
# %bb.2:                                # %__cxx_global_var_init.exit
	ori	$a1, $zero, 624
	stptr.d	$a1, $a0, 4992
	ret
.Lfunc_end59:
	.size	_GLOBAL__sub_I_fmax_reduction.cpp, .Lfunc_end59-_GLOBAL__sub_I_fmax_reduction.cpp
                                        # -- End function
	.type	_ZL3rng,@object                 # @_ZL3rng
	.local	_ZL3rng
	.comm	_ZL3rng,5000,8
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"fmaxnum_start_neg_2"
	.size	.L.str, 20

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"fmaxnum_start_min"
	.size	.L.str.1, 18

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"fmaxnum_start_denorm_min"
	.size	.L.str.2, 25

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"fmaxnum_start_is_nan"
	.size	.L.str.3, 21

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"fmax_strict_start_neg_2"
	.size	.L.str.4, 24

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"fmax_strict_start_min"
	.size	.L.str.5, 22

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"fmax_strict_start_denorm_min"
	.size	.L.str.6, 29

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"fmax_strict_start_nan"
	.size	.L.str.7, 22

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"fmax_non_strict_start_neg_2"
	.size	.L.str.8, 28

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"fmax_cmp_max_gt_start_neg_2"
	.size	.L.str.9, 28

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"fmax_cmp_max_lt_start_neg_2"
	.size	.L.str.10, 28

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"fmax_cmp_max_lt_start_denorm_min"
	.size	.L.str.11, 33

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"fmax_cmp_max_lt_start_neg_nan"
	.size	.L.str.12, 30

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"Checking "
	.size	.L.str.13, 10

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"\n"
	.size	.L.str.14, 2

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"sorted"
	.size	.L.str.15, 7

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"reverse-sorted"
	.size	.L.str.16, 15

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"all-max"
	.size	.L.str.17, 8

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"all-min"
	.size	.L.str.18, 8

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"denormals"
	.size	.L.str.19, 10

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"all-zeros"
	.size	.L.str.20, 10

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"NaN"
	.size	.L.str.21, 4

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"signed-zeros"
	.size	.L.str.22, 13

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"full"
	.size	.L.str.23, 5

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"full-with-nan"
	.size	.L.str.24, 14

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"full-with-multiple-nan"
	.size	.L.str.25, 23

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"infinity"
	.size	.L.str.26, 9

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"Miscompare "
	.size	.L.str.27, 12

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	": "
	.size	.L.str.28, 3

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	" != "
	.size	.L.str.29, 5

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

	.section	.init_array,"aw",@init_array
	.p2align	3, 0x0
	.dword	_GLOBAL__sub_I_fmax_reduction.cpp
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
	.addrsig_sym _ZNSt17_Function_handlerIFfPfjEZ4mainE3$_0E9_M_invokeERKSt9_Any_dataOS0_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFfPfjEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFfPfjEZ4mainE3$_1E9_M_invokeERKSt9_Any_dataOS0_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFfPfjEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFfPfjEZ4mainE3$_2E9_M_invokeERKSt9_Any_dataOS0_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFfPfjEZ4mainE3$_2E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFfPfjEZ4mainE3$_3E9_M_invokeERKSt9_Any_dataOS0_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFfPfjEZ4mainE3$_3E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFfPfjEZ4mainE3$_4E9_M_invokeERKSt9_Any_dataOS0_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFfPfjEZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFfPfjEZ4mainE3$_5E9_M_invokeERKSt9_Any_dataOS0_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFfPfjEZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFfPfjEZ4mainE3$_6E9_M_invokeERKSt9_Any_dataOS0_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFfPfjEZ4mainE3$_6E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFfPfjEZ4mainE3$_7E9_M_invokeERKSt9_Any_dataOS0_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFfPfjEZ4mainE3$_7E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFfPfjEZ4mainE3$_8E9_M_invokeERKSt9_Any_dataOS0_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFfPfjEZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFfPfjEZ4mainE3$_9E9_M_invokeERKSt9_Any_dataOS0_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFfPfjEZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFfPfjEZ4mainE4$_10E9_M_invokeERKSt9_Any_dataOS0_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFfPfjEZ4mainE4$_10E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFfPfjEZ4mainE4$_11E9_M_invokeERKSt9_Any_dataOS0_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFfPfjEZ4mainE4$_11E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFfPfjEZ4mainE4$_12E9_M_invokeERKSt9_Any_dataOS0_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFfPfjEZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFfPfjEZ4mainE4$_13E9_M_invokeERKSt9_Any_dataOS0_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFfPfjEZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFfPfjEZ4mainE4$_14E9_M_invokeERKSt9_Any_dataOS0_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFfPfjEZ4mainE4$_14E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFfPfjEZ4mainE4$_15E9_M_invokeERKSt9_Any_dataOS0_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFfPfjEZ4mainE4$_15E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFfPfjEZ4mainE4$_16E9_M_invokeERKSt9_Any_dataOS0_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFfPfjEZ4mainE4$_16E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFfPfjEZ4mainE4$_17E9_M_invokeERKSt9_Any_dataOS0_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFfPfjEZ4mainE4$_17E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFfPfjEZ4mainE4$_18E9_M_invokeERKSt9_Any_dataOS0_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFfPfjEZ4mainE4$_18E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFfPfjEZ4mainE4$_19E9_M_invokeERKSt9_Any_dataOS0_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFfPfjEZ4mainE4$_19E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFfPfjEZ4mainE4$_20E9_M_invokeERKSt9_Any_dataOS0_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFfPfjEZ4mainE4$_20E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFfPfjEZ4mainE4$_21E9_M_invokeERKSt9_Any_dataOS0_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFfPfjEZ4mainE4$_21E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFfPfjEZ4mainE4$_22E9_M_invokeERKSt9_Any_dataOS0_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFfPfjEZ4mainE4$_22E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFfPfjEZ4mainE4$_23E9_M_invokeERKSt9_Any_dataOS0_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFfPfjEZ4mainE4$_23E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFfPfjEZ4mainE4$_24E9_M_invokeERKSt9_Any_dataOS0_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFfPfjEZ4mainE4$_24E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFfPfjEZ4mainE4$_25E9_M_invokeERKSt9_Any_dataOS0_Oj
	.addrsig_sym _ZNSt17_Function_handlerIFfPfjEZ4mainE4$_25E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _GLOBAL__sub_I_fmax_reduction.cpp
	.addrsig_sym _Unwind_Resume
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
