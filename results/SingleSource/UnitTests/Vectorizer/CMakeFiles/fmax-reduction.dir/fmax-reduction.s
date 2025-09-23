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
	addi.d	$sp, $sp, -1104
	.cfi_def_cfa_offset 1104
	st.d	$ra, $sp, 1096                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1088                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1080                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1072                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1064                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1056                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1048                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1040                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1032                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1024                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1016                  # 8-byte Folded Spill
	fst.d	$fs0, $sp, 1008                 # 8-byte Folded Spill
	fst.d	$fs1, $sp, 1000                 # 8-byte Folded Spill
	fst.d	$fs2, $sp, 992                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 984                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 976                  # 8-byte Folded Spill
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
	.cfi_offset 59, -120
	.cfi_offset 60, -128
	move	$fp, $a2
	move	$s0, $a1
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
	ori	$s5, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	lu12i.w	$s2, 1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$fp, $a0
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
	sltu	$a1, $s5, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s5, $a1
	or	$s4, $a0, $a1
	movgr2fr.w	$fs0, $zero
	pcalau12i	$a0, %pc_hi20(_ZL3rng)
	addi.d	$s3, $a0, %pc_lo12(_ZL3rng)
	pcalau12i	$a0, %pc_hi20(.LCPI1_0)
	fld.s	$fs1, $a0, %pc_lo12(.LCPI1_0)
	pcalau12i	$a0, %pc_hi20(.LCPI1_1)
	fld.s	$fs2, $a0, %pc_lo12(.LCPI1_1)
	pcalau12i	$a0, %pc_hi20(.LCPI1_2)
	fld.s	$fs3, $a0, %pc_lo12(.LCPI1_2)
	move	$s5, $zero
	ori	$s6, $zero, 1024
	.p2align	4, , 16
.LBB1_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_5 Depth 2
	vldi	$vr0, -1168
	vst	$vr0, $sp, 64                   # 16-byte Folded Spill
	move	$s7, $s4
	fmov.s	$fs4, $fs0
	.p2align	4, , 16
.LBB1_5:                                # %select.unfold.i.i.i.i.i
                                        #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Ltmp195:                               # EH_LABEL
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv)
	jirl	$ra, $ra, 0
.Ltmp196:                               # EH_LABEL
# %bb.6:                                # %.noexc
                                        #   in Loop: Header=BB1_5 Depth=2
	srli.d	$a1, $a0, 1
	andi	$a2, $a0, 1
	or	$a1, $a2, $a1
	movgr2fr.d	$fa0, $a1
	ffint.s.l	$fa0, $fa0
	fadd.s	$fa0, $fa0, $fa0
	slti	$a1, $a0, 0
	movgr2fr.d	$fa1, $a0
	ffint.s.l	$fa1, $fa1
	movgr2cf	$fcc0, $a1
	fsel	$fa0, $fa1, $fa0, $fcc0
	vld	$vr1, $sp, 64                   # 16-byte Folded Reload
	fmadd.s	$fs4, $fa0, $fa1, $fs4
	addi.d	$s7, $s7, -1
	fmul.s	$fa1, $fa1, $fs1
	vst	$vr1, $sp, 64                   # 16-byte Folded Spill
	bnez	$s7, .LBB1_5
# %bb.7:                                #   in Loop: Header=BB1_4 Depth=1
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	fdiv.s	$fa0, $fs4, $fa0
	vldi	$vr1, -1168
	fcmp.cult.s	$fcc0, $fa0, $fa1
	bceqz	$fcc0, .LBB1_9
.LBB1_8:                                # %_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_.exit.i
                                        #   in Loop: Header=BB1_4 Depth=1
	fmadd.s	$fa0, $fa0, $fs3, $fs2
	slli.d	$a0, $s5, 2
	addi.d	$s5, $s5, 1
	fstx.s	$fa0, $fp, $a0
	bne	$s5, $s6, .LBB1_4
	b	.LBB1_10
.LBB1_9:                                #   in Loop: Header=BB1_4 Depth=1
	vldi	$vr0, -1168
	fmov.s	$fa1, $fs0
	pcaddu18i	$ra, %call36(nextafterf)
	jirl	$ra, $ra, 0
	b	.LBB1_8
.LBB1_10:
	add.d	$s3, $fp, $s2
.Ltmp198:                               # EH_LABEL
	ori	$a2, $zero, 20
	move	$a0, $fp
	move	$a1, $s3
	move	$a3, $zero
	pcaddu18i	$ra, %call36(_ZSt16__introsort_loopIPflN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_)
	jirl	$ra, $ra, 0
.Ltmp199:                               # EH_LABEL
# %bb.11:                               # %.noexc213
.Ltmp200:                               # EH_LABEL
	move	$a0, $fp
	move	$a1, $s3
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZSt22__final_insertion_sortIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_)
	jirl	$ra, $ra, 0
.Ltmp201:                               # EH_LABEL
# %bb.12:                               # %_ZSt4sortIPfEvT_S1_.exit
	ld.d	$a3, $s1, 16
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 960
	vst	$vr0, $sp, 64                   # 16-byte Folded Spill
	vst	$vr0, $sp, 944
	beqz	$a3, .LBB1_15
# %bb.13:
.Ltmp203:                               # EH_LABEL
	addi.d	$a0, $sp, 944
	ori	$a2, $zero, 2
	move	$a1, $s1
	jirl	$ra, $a3, 0
.Ltmp204:                               # EH_LABEL
# %bb.14:
	vld	$vr0, $s1, 16
	vst	$vr0, $sp, 960
.LBB1_15:                               # %_ZNSt8functionIFfPfjEEC2ERKS2_.exit
	ld.d	$a3, $s0, 16
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vst	$vr0, $sp, 928
	vst	$vr0, $sp, 912
	beqz	$a3, .LBB1_18
# %bb.16:
.Ltmp209:                               # EH_LABEL
	addi.d	$a0, $sp, 912
	ori	$a2, $zero, 2
	move	$a1, $s0
	jirl	$ra, $a3, 0
.Ltmp210:                               # EH_LABEL
# %bb.17:
	vld	$vr0, $s0, 16
	vst	$vr0, $sp, 928
.LBB1_18:                               # %_ZNSt8functionIFfPfjEEC2ERKS2_.exit221
.Ltmp215:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a3, $a0, %pc_lo12(.L.str.15)
	addi.d	$a0, $sp, 944
	addi.d	$a1, $sp, 912
	move	$a2, $fp
	pcaddu18i	$ra, %call36(_ZL5checkIfEvSt8functionIFT_PS1_jEES4_PfjPKc)
	jirl	$ra, $ra, 0
.Ltmp216:                               # EH_LABEL
# %bb.19:
	ld.d	$a3, $sp, 928
	beqz	$a3, .LBB1_21
# %bb.20:
.Ltmp224:                               # EH_LABEL
	addi.d	$a0, $sp, 912
	addi.d	$a1, $sp, 912
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp225:                               # EH_LABEL
.LBB1_21:                               # %_ZNSt14_Function_baseD2Ev.exit
	ld.d	$a3, $sp, 960
	beqz	$a3, .LBB1_23
# %bb.22:
.Ltmp227:                               # EH_LABEL
	addi.d	$a0, $sp, 944
	addi.d	$a1, $sp, 944
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp228:                               # EH_LABEL
.LBB1_23:                               # %vector.body.preheader
	ori	$a0, $zero, 4080
	ori	$a1, $zero, 2032
	move	$a2, $fp
	.p2align	4, , 16
.LBB1_24:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vldx	$vr0, $fp, $a0
	vld	$vr1, $a2, 0
	vshuf4i.w	$vr0, $vr0, 27
	vst	$vr0, $a2, 0
	vshuf4i.w	$vr0, $vr1, 27
	vstx	$vr0, $fp, $a0
	addi.d	$a0, $a0, -16
	addi.d	$a2, $a2, 16
	bne	$a0, $a1, .LBB1_24
# %bb.25:                               # %_ZSt7reverseIPfEvT_S1_.exit
	ld.d	$a3, $s1, 16
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vst	$vr0, $sp, 896
	vst	$vr0, $sp, 880
	beqz	$a3, .LBB1_28
# %bb.26:
.Ltmp230:                               # EH_LABEL
	addi.d	$a0, $sp, 880
	ori	$a2, $zero, 2
	move	$a1, $s1
	jirl	$ra, $a3, 0
.Ltmp231:                               # EH_LABEL
# %bb.27:
	vld	$vr0, $s1, 16
	vst	$vr0, $sp, 896
.LBB1_28:                               # %_ZNSt8functionIFfPfjEEC2ERKS2_.exit230
	ld.d	$a3, $s0, 16
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vst	$vr0, $sp, 864
	vst	$vr0, $sp, 848
	beqz	$a3, .LBB1_31
# %bb.29:
.Ltmp236:                               # EH_LABEL
	addi.d	$a0, $sp, 848
	ori	$a2, $zero, 2
	move	$a1, $s0
	jirl	$ra, $a3, 0
.Ltmp237:                               # EH_LABEL
# %bb.30:
	vld	$vr0, $s0, 16
	vst	$vr0, $sp, 864
.LBB1_31:                               # %_ZNSt8functionIFfPfjEEC2ERKS2_.exit236
.Ltmp242:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a3, $a0, %pc_lo12(.L.str.16)
	addi.d	$a0, $sp, 880
	addi.d	$a1, $sp, 848
	move	$a2, $fp
	pcaddu18i	$ra, %call36(_ZL5checkIfEvSt8functionIFT_PS1_jEES4_PfjPKc)
	jirl	$ra, $ra, 0
.Ltmp243:                               # EH_LABEL
# %bb.32:
	ld.d	$a3, $sp, 864
	beqz	$a3, .LBB1_34
# %bb.33:
.Ltmp251:                               # EH_LABEL
	addi.d	$a0, $sp, 848
	addi.d	$a1, $sp, 848
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp252:                               # EH_LABEL
.LBB1_34:                               # %_ZNSt14_Function_baseD2Ev.exit238
	ld.d	$a3, $sp, 896
	beqz	$a3, .LBB1_36
# %bb.35:
.Ltmp254:                               # EH_LABEL
	addi.d	$a0, $sp, 880
	addi.d	$a1, $sp, 880
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp255:                               # EH_LABEL
.LBB1_36:                               # %vector.body831.preheader
	lu12i.w	$a0, -1
	lu12i.w	$a1, 522239
	ori	$a1, $a1, 4095
	vreplgr2vr.w	$vr0, $a1
	ori	$s3, $s2, 16
	.p2align	4, , 16
.LBB1_37:                               # %vector.body831
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a1, $fp, $a0
	vstx	$vr0, $a1, $s2
	addi.d	$a0, $a0, 32
	vstx	$vr0, $a1, $s3
	bnez	$a0, .LBB1_37
# %bb.38:                               # %middle.block834
	ld.d	$a3, $s1, 16
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vst	$vr0, $sp, 832
	vst	$vr0, $sp, 816
	beqz	$a3, .LBB1_41
# %bb.39:
.Ltmp257:                               # EH_LABEL
	addi.d	$a0, $sp, 816
	ori	$a2, $zero, 2
	move	$a1, $s1
	jirl	$ra, $a3, 0
.Ltmp258:                               # EH_LABEL
# %bb.40:
	vld	$vr0, $s1, 16
	vst	$vr0, $sp, 832
.LBB1_41:                               # %_ZNSt8functionIFfPfjEEC2ERKS2_.exit246
	ld.d	$a3, $s0, 16
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vst	$vr0, $sp, 800
	vst	$vr0, $sp, 784
	beqz	$a3, .LBB1_44
# %bb.42:
.Ltmp263:                               # EH_LABEL
	addi.d	$a0, $sp, 784
	ori	$a2, $zero, 2
	move	$a1, $s0
	jirl	$ra, $a3, 0
.Ltmp264:                               # EH_LABEL
# %bb.43:
	vld	$vr0, $s0, 16
	vst	$vr0, $sp, 800
.LBB1_44:                               # %_ZNSt8functionIFfPfjEEC2ERKS2_.exit260
.Ltmp269:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a3, $a0, %pc_lo12(.L.str.17)
	addi.d	$a0, $sp, 816
	addi.d	$a1, $sp, 784
	move	$a2, $fp
	pcaddu18i	$ra, %call36(_ZL5checkIfEvSt8functionIFT_PS1_jEES4_PfjPKc)
	jirl	$ra, $ra, 0
.Ltmp270:                               # EH_LABEL
# %bb.45:
	ld.d	$a3, $sp, 800
	beqz	$a3, .LBB1_47
# %bb.46:
.Ltmp278:                               # EH_LABEL
	addi.d	$a0, $sp, 784
	addi.d	$a1, $sp, 784
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp279:                               # EH_LABEL
.LBB1_47:                               # %_ZNSt14_Function_baseD2Ev.exit262
	ld.d	$a3, $sp, 832
	beqz	$a3, .LBB1_49
# %bb.48:
.Ltmp281:                               # EH_LABEL
	addi.d	$a0, $sp, 816
	addi.d	$a1, $sp, 816
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp282:                               # EH_LABEL
.LBB1_49:                               # %vector.body837.preheader
	lu12i.w	$a0, -1
	lu12i.w	$a1, 2048
	vreplgr2vr.w	$vr0, $a1
	.p2align	4, , 16
.LBB1_50:                               # %vector.body837
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a1, $fp, $a0
	vstx	$vr0, $a1, $s2
	addi.d	$a0, $a0, 32
	vstx	$vr0, $a1, $s3
	bnez	$a0, .LBB1_50
# %bb.51:                               # %middle.block840
	ld.d	$a3, $s1, 16
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vst	$vr0, $sp, 768
	vst	$vr0, $sp, 752
	beqz	$a3, .LBB1_54
# %bb.52:
.Ltmp284:                               # EH_LABEL
	addi.d	$a0, $sp, 752
	ori	$a2, $zero, 2
	move	$a1, $s1
	jirl	$ra, $a3, 0
.Ltmp285:                               # EH_LABEL
# %bb.53:
	vld	$vr0, $s1, 16
	vst	$vr0, $sp, 768
.LBB1_54:                               # %_ZNSt8functionIFfPfjEEC2ERKS2_.exit270
	ld.d	$a3, $s0, 16
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vst	$vr0, $sp, 736
	vst	$vr0, $sp, 720
	beqz	$a3, .LBB1_57
# %bb.55:
.Ltmp290:                               # EH_LABEL
	addi.d	$a0, $sp, 720
	ori	$a2, $zero, 2
	move	$a1, $s0
	jirl	$ra, $a3, 0
.Ltmp291:                               # EH_LABEL
# %bb.56:
	vld	$vr0, $s0, 16
	vst	$vr0, $sp, 736
.LBB1_57:                               # %_ZNSt8functionIFfPfjEEC2ERKS2_.exit280
.Ltmp296:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a3, $a0, %pc_lo12(.L.str.18)
	addi.d	$a0, $sp, 752
	addi.d	$a1, $sp, 720
	move	$a2, $fp
	pcaddu18i	$ra, %call36(_ZL5checkIfEvSt8functionIFT_PS1_jEES4_PfjPKc)
	jirl	$ra, $ra, 0
.Ltmp297:                               # EH_LABEL
# %bb.58:
	ld.d	$a3, $sp, 736
	beqz	$a3, .LBB1_60
# %bb.59:
.Ltmp305:                               # EH_LABEL
	addi.d	$a0, $sp, 720
	addi.d	$a1, $sp, 720
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp306:                               # EH_LABEL
.LBB1_60:                               # %_ZNSt14_Function_baseD2Ev.exit282
	ld.d	$a3, $sp, 768
	beqz	$a3, .LBB1_62
# %bb.61:
.Ltmp308:                               # EH_LABEL
	addi.d	$a0, $sp, 752
	addi.d	$a1, $sp, 752
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp309:                               # EH_LABEL
.LBB1_62:                               # %_ZNSt14_Function_baseD2Ev.exit284
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 0
	pcalau12i	$a0, %pc_hi20(.LCPI1_3)
	vld	$vr0, $a0, %pc_lo12(.LCPI1_3)
	lu12i.w	$s4, -1
	ori	$a0, $s4, 16
	vrepli.w	$vr1, 1
	ori	$a1, $zero, 4084
	.p2align	4, , 16
.LBB1_63:                               # %vector.body843
                                        # =>This Inner Loop Header: Depth=1
	vffint.s.wu	$vr2, $vr0
	vfdiv.s	$vr2, $vr1, $vr2
	add.d	$a2, $fp, $a0
	vstx	$vr2, $a2, $a1
	addi.d	$a0, $a0, 16
	vaddi.wu	$vr0, $vr0, 4
	bnez	$a0, .LBB1_63
# %bb.64:                               # %scalar.ph841
	ld.d	$a3, $s1, 16
	stptr.d	$zero, $fp, 4084
	stptr.w	$zero, $fp, 4092
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vst	$vr0, $sp, 688
	vst	$vr0, $sp, 704
	beqz	$a3, .LBB1_67
# %bb.65:
.Ltmp311:                               # EH_LABEL
	addi.d	$a0, $sp, 688
	ori	$a2, $zero, 2
	move	$a1, $s1
	jirl	$ra, $a3, 0
.Ltmp312:                               # EH_LABEL
# %bb.66:
	vld	$vr0, $s1, 16
	vst	$vr0, $sp, 704
.LBB1_67:                               # %_ZNSt8functionIFfPfjEEC2ERKS2_.exit290
	ld.d	$a3, $s0, 16
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vst	$vr0, $sp, 672
	vst	$vr0, $sp, 656
	beqz	$a3, .LBB1_70
# %bb.68:
.Ltmp317:                               # EH_LABEL
	addi.d	$a0, $sp, 656
	ori	$a2, $zero, 2
	move	$a1, $s0
	jirl	$ra, $a3, 0
.Ltmp318:                               # EH_LABEL
# %bb.69:
	vld	$vr0, $s0, 16
	vst	$vr0, $sp, 672
.LBB1_70:                               # %_ZNSt8functionIFfPfjEEC2ERKS2_.exit300
.Ltmp323:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a3, $a0, %pc_lo12(.L.str.19)
	addi.d	$a0, $sp, 688
	addi.d	$a1, $sp, 656
	move	$a2, $fp
	pcaddu18i	$ra, %call36(_ZL5checkIfEvSt8functionIFT_PS1_jEES4_PfjPKc)
	jirl	$ra, $ra, 0
.Ltmp324:                               # EH_LABEL
# %bb.71:
	ld.d	$a3, $sp, 672
	beqz	$a3, .LBB1_73
# %bb.72:
.Ltmp332:                               # EH_LABEL
	addi.d	$a0, $sp, 656
	addi.d	$a1, $sp, 656
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp333:                               # EH_LABEL
.LBB1_73:                               # %_ZNSt14_Function_baseD2Ev.exit302
	ld.d	$a3, $sp, 704
	beqz	$a3, .LBB1_75
# %bb.74:
.Ltmp335:                               # EH_LABEL
	addi.d	$a0, $sp, 688
	addi.d	$a1, $sp, 688
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp336:                               # EH_LABEL
.LBB1_75:                               # %_ZNSt14_Function_baseD2Ev.exit304
	lu12i.w	$s2, 1
	move	$a0, $fp
	move	$a1, $zero
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s1, 16
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vst	$vr0, $sp, 624
	vst	$vr0, $sp, 640
	beqz	$a3, .LBB1_78
# %bb.76:
.Ltmp338:                               # EH_LABEL
	addi.d	$a0, $sp, 624
	ori	$a2, $zero, 2
	move	$a1, $s1
	jirl	$ra, $a3, 0
.Ltmp339:                               # EH_LABEL
# %bb.77:
	vld	$vr0, $s1, 16
	vst	$vr0, $sp, 640
.LBB1_78:                               # %_ZNSt8functionIFfPfjEEC2ERKS2_.exit310
	ld.d	$a3, $s0, 16
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vst	$vr0, $sp, 608
	vst	$vr0, $sp, 592
	beqz	$a3, .LBB1_81
# %bb.79:
.Ltmp344:                               # EH_LABEL
	addi.d	$a0, $sp, 592
	ori	$a2, $zero, 2
	move	$a1, $s0
	jirl	$ra, $a3, 0
.Ltmp345:                               # EH_LABEL
# %bb.80:
	vld	$vr0, $s0, 16
	vst	$vr0, $sp, 608
.LBB1_81:                               # %_ZNSt8functionIFfPfjEEC2ERKS2_.exit320
.Ltmp350:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a3, $a0, %pc_lo12(.L.str.20)
	addi.d	$a0, $sp, 624
	addi.d	$a1, $sp, 592
	move	$a2, $fp
	pcaddu18i	$ra, %call36(_ZL5checkIfEvSt8functionIFT_PS1_jEES4_PfjPKc)
	jirl	$ra, $ra, 0
.Ltmp351:                               # EH_LABEL
# %bb.82:
	ld.d	$a3, $sp, 608
	beqz	$a3, .LBB1_84
# %bb.83:
.Ltmp359:                               # EH_LABEL
	addi.d	$a0, $sp, 592
	addi.d	$a1, $sp, 592
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp360:                               # EH_LABEL
.LBB1_84:                               # %_ZNSt14_Function_baseD2Ev.exit322
	ld.d	$a3, $sp, 640
	beqz	$a3, .LBB1_86
# %bb.85:
.Ltmp362:                               # EH_LABEL
	addi.d	$a0, $sp, 624
	addi.d	$a1, $sp, 624
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp363:                               # EH_LABEL
.LBB1_86:                               # %_ZNSt14_Function_baseD2Ev.exit324
	ori	$s6, $zero, 3
	lu12i.w	$a0, 273536
	vreplgr2vr.w	$vr0, $a0
	vst	$vr0, $sp, 48                   # 16-byte Folded Spill
	ori	$s5, $s2, 16
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$s3, $a0, %pc_lo12(.L.str.21)
	ori	$s7, $zero, 32
	b	.LBB1_88
	.p2align	4, , 16
.LBB1_87:                               # %_ZNSt14_Function_baseD2Ev.exit344
                                        #   in Loop: Header=BB1_88 Depth=1
	addi.d	$s6, $s6, 1
	beq	$s6, $s7, .LBB1_101
.LBB1_88:                               # %vector.ph849
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_89 Depth 2
	move	$a0, $s4
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	.p2align	4, , 16
.LBB1_89:                               # %vector.body850
                                        #   Parent Loop BB1_88 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a1, $fp, $a0
	vstx	$vr0, $a1, $s2
	addi.d	$a0, $a0, 32
	vstx	$vr0, $a1, $s5
	bnez	$a0, .LBB1_89
# %bb.90:                               # %middle.block853
                                        #   in Loop: Header=BB1_88 Depth=1
	ld.d	$a3, $s1, 16
	slli.d	$a0, $s6, 2
	lu12i.w	$a1, 523264
	stx.w	$a1, $fp, $a0
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vst	$vr0, $sp, 560
	vst	$vr0, $sp, 576
	beqz	$a3, .LBB1_93
# %bb.91:                               #   in Loop: Header=BB1_88 Depth=1
.Ltmp365:                               # EH_LABEL
	addi.d	$a0, $sp, 560
	ori	$a2, $zero, 2
	move	$a1, $s1
	jirl	$ra, $a3, 0
.Ltmp366:                               # EH_LABEL
# %bb.92:                               #   in Loop: Header=BB1_88 Depth=1
	vld	$vr0, $s1, 16
	vst	$vr0, $sp, 576
.LBB1_93:                               # %_ZNSt8functionIFfPfjEEC2ERKS2_.exit334
                                        #   in Loop: Header=BB1_88 Depth=1
	ld.d	$a3, $s0, 16
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vst	$vr0, $sp, 544
	vst	$vr0, $sp, 528
	beqz	$a3, .LBB1_96
# %bb.94:                               #   in Loop: Header=BB1_88 Depth=1
.Ltmp371:                               # EH_LABEL
	addi.d	$a0, $sp, 528
	ori	$a2, $zero, 2
	move	$a1, $s0
	jirl	$ra, $a3, 0
.Ltmp372:                               # EH_LABEL
# %bb.95:                               #   in Loop: Header=BB1_88 Depth=1
	vld	$vr0, $s0, 16
	vst	$vr0, $sp, 544
.LBB1_96:                               # %_ZNSt8functionIFfPfjEEC2ERKS2_.exit340
                                        #   in Loop: Header=BB1_88 Depth=1
.Ltmp377:                               # EH_LABEL
	addi.d	$a0, $sp, 560
	addi.d	$a1, $sp, 528
	move	$a2, $fp
	move	$a3, $s3
	pcaddu18i	$ra, %call36(_ZL5checkIfEvSt8functionIFT_PS1_jEES4_PfjPKc)
	jirl	$ra, $ra, 0
.Ltmp378:                               # EH_LABEL
# %bb.97:                               #   in Loop: Header=BB1_88 Depth=1
	ld.d	$a3, $sp, 544
	beqz	$a3, .LBB1_99
# %bb.98:                               #   in Loop: Header=BB1_88 Depth=1
.Ltmp386:                               # EH_LABEL
	addi.d	$a0, $sp, 528
	addi.d	$a1, $sp, 528
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp387:                               # EH_LABEL
.LBB1_99:                               # %_ZNSt14_Function_baseD2Ev.exit342
                                        #   in Loop: Header=BB1_88 Depth=1
	ld.d	$a3, $sp, 576
	beqz	$a3, .LBB1_87
# %bb.100:                              #   in Loop: Header=BB1_88 Depth=1
.Ltmp389:                               # EH_LABEL
	addi.d	$a0, $sp, 560
	addi.d	$a1, $sp, 560
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp390:                               # EH_LABEL
	b	.LBB1_87
.LBB1_101:                              # %.preheader546
	addi.d	$s6, $fp, 4
	lu12i.w	$a0, -264192
	vreplgr2vr.w	$vr0, $a0
	vst	$vr0, $sp, 32                   # 16-byte Folded Spill
	lu12i.w	$s4, -524288
	lu32i.d	$s4, 0
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$s3, $a0, %pc_lo12(.L.str.22)
	st.d	$zero, $sp, 48                  # 8-byte Folded Spill
	ori	$s7, $zero, 124
	b	.LBB1_103
	.p2align	4, , 16
.LBB1_102:                              #   in Loop: Header=BB1_103 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	addi.d	$a0, $a0, 1
	addi.d	$s6, $s6, 4
	lu12i.w	$s2, 1
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ori	$a1, $zero, 64
	beq	$a0, $a1, .LBB1_118
.LBB1_103:                              # %vector.ph855
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_104 Depth 2
                                        #     Child Loop BB1_107 Depth 2
	lu12i.w	$a0, -1
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	.p2align	4, , 16
.LBB1_104:                              # %vector.body856
                                        #   Parent Loop BB1_103 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a1, $fp, $a0
	vstx	$vr0, $a1, $s2
	addi.d	$a0, $a0, 32
	vstx	$vr0, $a1, $s5
	bnez	$a0, .LBB1_104
# %bb.105:                              # %.preheader544
                                        #   in Loop: Header=BB1_103 Depth=1
	move	$s8, $zero
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	alsl.d	$s2, $a0, $fp, 2
	b	.LBB1_107
	.p2align	4, , 16
.LBB1_106:                              # %_ZNSt14_Function_baseD2Ev.exit364
                                        #   in Loop: Header=BB1_107 Depth=2
	addi.d	$s8, $s8, 4
	beq	$s8, $s7, .LBB1_102
.LBB1_107:                              #   Parent Loop BB1_103 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a3, $s1, 16
	st.w	$s4, $s2, 0
	stx.w	$zero, $s6, $s8
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vst	$vr0, $sp, 496
	vst	$vr0, $sp, 512
	beqz	$a3, .LBB1_110
# %bb.108:                              #   in Loop: Header=BB1_107 Depth=2
.Ltmp392:                               # EH_LABEL
	addi.d	$a0, $sp, 496
	ori	$a2, $zero, 2
	move	$a1, $s1
	jirl	$ra, $a3, 0
.Ltmp393:                               # EH_LABEL
# %bb.109:                              #   in Loop: Header=BB1_107 Depth=2
	vld	$vr0, $s1, 16
	vst	$vr0, $sp, 512
.LBB1_110:                              # %_ZNSt8functionIFfPfjEEC2ERKS2_.exit354
                                        #   in Loop: Header=BB1_107 Depth=2
	ld.d	$a3, $s0, 16
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vst	$vr0, $sp, 480
	vst	$vr0, $sp, 464
	beqz	$a3, .LBB1_113
# %bb.111:                              #   in Loop: Header=BB1_107 Depth=2
.Ltmp398:                               # EH_LABEL
	addi.d	$a0, $sp, 464
	ori	$a2, $zero, 2
	move	$a1, $s0
	jirl	$ra, $a3, 0
.Ltmp399:                               # EH_LABEL
# %bb.112:                              #   in Loop: Header=BB1_107 Depth=2
	vld	$vr0, $s0, 16
	vst	$vr0, $sp, 480
.LBB1_113:                              # %_ZNSt8functionIFfPfjEEC2ERKS2_.exit360
                                        #   in Loop: Header=BB1_107 Depth=2
.Ltmp404:                               # EH_LABEL
	addi.d	$a0, $sp, 496
	addi.d	$a1, $sp, 464
	move	$a2, $fp
	move	$a3, $s3
	pcaddu18i	$ra, %call36(_ZL5checkIfEvSt8functionIFT_PS1_jEES4_PfjPKc)
	jirl	$ra, $ra, 0
.Ltmp405:                               # EH_LABEL
# %bb.114:                              #   in Loop: Header=BB1_107 Depth=2
	ld.d	$a3, $sp, 480
	beqz	$a3, .LBB1_116
# %bb.115:                              #   in Loop: Header=BB1_107 Depth=2
.Ltmp413:                               # EH_LABEL
	addi.d	$a0, $sp, 464
	addi.d	$a1, $sp, 464
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp414:                               # EH_LABEL
.LBB1_116:                              # %_ZNSt14_Function_baseD2Ev.exit362
                                        #   in Loop: Header=BB1_107 Depth=2
	ld.d	$a3, $sp, 512
	beqz	$a3, .LBB1_106
# %bb.117:                              #   in Loop: Header=BB1_107 Depth=2
.Ltmp416:                               # EH_LABEL
	addi.d	$a0, $sp, 496
	addi.d	$a1, $sp, 496
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp417:                               # EH_LABEL
	b	.LBB1_106
.LBB1_118:                              # %.preheader543
	addi.d	$s6, $fp, 4
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$s3, $a0, %pc_lo12(.L.str.22)
	st.d	$zero, $sp, 48                  # 8-byte Folded Spill
	ori	$s7, $zero, 124
	b	.LBB1_120
	.p2align	4, , 16
.LBB1_119:                              #   in Loop: Header=BB1_120 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	addi.d	$a0, $a0, 1
	addi.d	$s6, $s6, 4
	lu12i.w	$s2, 1
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ori	$a1, $zero, 64
	beq	$a0, $a1, .LBB1_135
.LBB1_120:                              # %vector.ph861
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_121 Depth 2
                                        #     Child Loop BB1_124 Depth 2
	lu12i.w	$a0, -1
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	.p2align	4, , 16
.LBB1_121:                              # %vector.body862
                                        #   Parent Loop BB1_120 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a1, $fp, $a0
	vstx	$vr0, $a1, $s2
	addi.d	$a0, $a0, 32
	vstx	$vr0, $a1, $s5
	bnez	$a0, .LBB1_121
# %bb.122:                              # %.preheader541
                                        #   in Loop: Header=BB1_120 Depth=1
	move	$s8, $zero
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	alsl.d	$s2, $a0, $fp, 2
	b	.LBB1_124
	.p2align	4, , 16
.LBB1_123:                              # %_ZNSt14_Function_baseD2Ev.exit384
                                        #   in Loop: Header=BB1_124 Depth=2
	addi.d	$s8, $s8, 4
	beq	$s8, $s7, .LBB1_119
.LBB1_124:                              #   Parent Loop BB1_120 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a3, $s1, 16
	st.w	$zero, $s2, 0
	stx.w	$s4, $s6, $s8
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vst	$vr0, $sp, 432
	vst	$vr0, $sp, 448
	beqz	$a3, .LBB1_127
# %bb.125:                              #   in Loop: Header=BB1_124 Depth=2
.Ltmp419:                               # EH_LABEL
	addi.d	$a0, $sp, 432
	ori	$a2, $zero, 2
	move	$a1, $s1
	jirl	$ra, $a3, 0
.Ltmp420:                               # EH_LABEL
# %bb.126:                              #   in Loop: Header=BB1_124 Depth=2
	vld	$vr0, $s1, 16
	vst	$vr0, $sp, 448
.LBB1_127:                              # %_ZNSt8functionIFfPfjEEC2ERKS2_.exit374
                                        #   in Loop: Header=BB1_124 Depth=2
	ld.d	$a3, $s0, 16
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vst	$vr0, $sp, 416
	vst	$vr0, $sp, 400
	beqz	$a3, .LBB1_130
# %bb.128:                              #   in Loop: Header=BB1_124 Depth=2
.Ltmp425:                               # EH_LABEL
	addi.d	$a0, $sp, 400
	ori	$a2, $zero, 2
	move	$a1, $s0
	jirl	$ra, $a3, 0
.Ltmp426:                               # EH_LABEL
# %bb.129:                              #   in Loop: Header=BB1_124 Depth=2
	vld	$vr0, $s0, 16
	vst	$vr0, $sp, 416
.LBB1_130:                              # %_ZNSt8functionIFfPfjEEC2ERKS2_.exit380
                                        #   in Loop: Header=BB1_124 Depth=2
.Ltmp431:                               # EH_LABEL
	addi.d	$a0, $sp, 432
	addi.d	$a1, $sp, 400
	move	$a2, $fp
	move	$a3, $s3
	pcaddu18i	$ra, %call36(_ZL5checkIfEvSt8functionIFT_PS1_jEES4_PfjPKc)
	jirl	$ra, $ra, 0
.Ltmp432:                               # EH_LABEL
# %bb.131:                              #   in Loop: Header=BB1_124 Depth=2
	ld.d	$a3, $sp, 416
	beqz	$a3, .LBB1_133
# %bb.132:                              #   in Loop: Header=BB1_124 Depth=2
.Ltmp440:                               # EH_LABEL
	addi.d	$a0, $sp, 400
	addi.d	$a1, $sp, 400
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp441:                               # EH_LABEL
.LBB1_133:                              # %_ZNSt14_Function_baseD2Ev.exit382
                                        #   in Loop: Header=BB1_124 Depth=2
	ld.d	$a3, $sp, 448
	beqz	$a3, .LBB1_123
# %bb.134:                              #   in Loop: Header=BB1_124 Depth=2
.Ltmp443:                               # EH_LABEL
	addi.d	$a0, $sp, 432
	addi.d	$a1, $sp, 432
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp444:                               # EH_LABEL
	b	.LBB1_123
.LBB1_135:                              # %.preheader540
	pcalau12i	$a0, %pc_hi20(.LCPI1_4)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	vld	$vr0, $a0, %pc_lo12(.LCPI1_4)
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	ori	$s6, $zero, 4
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$s3, $a0, %pc_lo12(.L.str.23)
	move	$s8, $zero
	ori	$s7, $zero, 16
	b	.LBB1_137
	.p2align	4, , 16
.LBB1_136:                              #   in Loop: Header=BB1_137 Depth=1
	addi.d	$s8, $s8, 1
	ld.d	$s6, $sp, 48                    # 8-byte Folded Reload
	addi.d	$s6, $s6, 4
	ori	$a0, $zero, 1024
	beq	$s8, $a0, .LBB1_165
.LBB1_137:                              # %vector.ph867
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_138 Depth 2
                                        #     Child Loop BB1_152 Depth 2
	lu12i.w	$a0, -1
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	.p2align	4, , 16
.LBB1_138:                              # %vector.body868
                                        #   Parent Loop BB1_137 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vaddi.wu	$vr1, $vr0, 4
	vffint.s.wu	$vr2, $vr0
	vffint.s.wu	$vr1, $vr1
	add.d	$a1, $fp, $a0
	vstx	$vr2, $a1, $s2
	vstx	$vr1, $a1, $s5
	addi.d	$a0, $a0, 32
	vaddi.wu	$vr0, $vr0, 8
	bnez	$a0, .LBB1_138
# %bb.139:                              # %middle.block873
                                        #   in Loop: Header=BB1_137 Depth=1
	ld.d	$a3, $s1, 16
	slli.d	$a0, $s8, 2
	lu12i.w	$a1, 280578
	stx.w	$a1, $fp, $a0
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vst	$vr0, $sp, 368
	vst	$vr0, $sp, 384
	beqz	$a3, .LBB1_142
# %bb.140:                              #   in Loop: Header=BB1_137 Depth=1
.Ltmp446:                               # EH_LABEL
	addi.d	$a0, $sp, 368
	ori	$a2, $zero, 2
	move	$a1, $s1
	jirl	$ra, $a3, 0
.Ltmp447:                               # EH_LABEL
# %bb.141:                              #   in Loop: Header=BB1_137 Depth=1
	vld	$vr0, $s1, 16
	vst	$vr0, $sp, 384
.LBB1_142:                              # %_ZNSt8functionIFfPfjEEC2ERKS2_.exit394
                                        #   in Loop: Header=BB1_137 Depth=1
	ld.d	$a3, $s0, 16
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vst	$vr0, $sp, 352
	vst	$vr0, $sp, 336
	beqz	$a3, .LBB1_145
# %bb.143:                              #   in Loop: Header=BB1_137 Depth=1
.Ltmp452:                               # EH_LABEL
	addi.d	$a0, $sp, 336
	ori	$a2, $zero, 2
	move	$a1, $s0
	jirl	$ra, $a3, 0
.Ltmp453:                               # EH_LABEL
# %bb.144:                              #   in Loop: Header=BB1_137 Depth=1
	vld	$vr0, $s0, 16
	vst	$vr0, $sp, 352
.LBB1_145:                              # %_ZNSt8functionIFfPfjEEC2ERKS2_.exit400
                                        #   in Loop: Header=BB1_137 Depth=1
.Ltmp458:                               # EH_LABEL
	addi.d	$a0, $sp, 368
	addi.d	$a1, $sp, 336
	move	$a2, $fp
	move	$a3, $s3
	pcaddu18i	$ra, %call36(_ZL5checkIfEvSt8functionIFT_PS1_jEES4_PfjPKc)
	jirl	$ra, $ra, 0
.Ltmp459:                               # EH_LABEL
# %bb.146:                              #   in Loop: Header=BB1_137 Depth=1
	ld.d	$a3, $sp, 352
	beqz	$a3, .LBB1_148
# %bb.147:                              #   in Loop: Header=BB1_137 Depth=1
.Ltmp467:                               # EH_LABEL
	addi.d	$a0, $sp, 336
	addi.d	$a1, $sp, 336
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp468:                               # EH_LABEL
.LBB1_148:                              # %_ZNSt14_Function_baseD2Ev.exit402
                                        #   in Loop: Header=BB1_137 Depth=1
	ld.d	$a3, $sp, 384
	beqz	$a3, .LBB1_150
# %bb.149:                              #   in Loop: Header=BB1_137 Depth=1
.Ltmp470:                               # EH_LABEL
	addi.d	$a0, $sp, 368
	addi.d	$a1, $sp, 368
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp471:                               # EH_LABEL
.LBB1_150:                              # %_ZNSt14_Function_baseD2Ev.exit404.preheader
                                        #   in Loop: Header=BB1_137 Depth=1
	ori	$s4, $zero, 1
	st.d	$s6, $sp, 48                    # 8-byte Folded Spill
	b	.LBB1_152
	.p2align	4, , 16
.LBB1_151:                              # %_ZNSt14_Function_baseD2Ev.exit424
                                        #   in Loop: Header=BB1_152 Depth=2
	addi.d	$s4, $s4, 1
	addi.d	$s6, $s6, 4
	beq	$s4, $s7, .LBB1_136
.LBB1_152:                              # %_ZNSt14_Function_baseD2Ev.exit404
                                        #   Parent Loop BB1_137 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a0, $s8, $s4
	ori	$a1, $zero, 1023
	bltu	$a1, $a0, .LBB1_154
# %bb.153:                              #   in Loop: Header=BB1_152 Depth=2
	lu12i.w	$a0, 280578
	stx.w	$a0, $fp, $s6
.LBB1_154:                              #   in Loop: Header=BB1_152 Depth=2
	ld.d	$a3, $s1, 16
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vst	$vr0, $sp, 320
	vst	$vr0, $sp, 304
	beqz	$a3, .LBB1_157
# %bb.155:                              #   in Loop: Header=BB1_152 Depth=2
.Ltmp473:                               # EH_LABEL
	addi.d	$a0, $sp, 304
	ori	$a2, $zero, 2
	move	$a1, $s1
	jirl	$ra, $a3, 0
.Ltmp474:                               # EH_LABEL
# %bb.156:                              #   in Loop: Header=BB1_152 Depth=2
	vld	$vr0, $s1, 16
	vst	$vr0, $sp, 320
.LBB1_157:                              # %_ZNSt8functionIFfPfjEEC2ERKS2_.exit414
                                        #   in Loop: Header=BB1_152 Depth=2
	ld.d	$a3, $s0, 16
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vst	$vr0, $sp, 288
	vst	$vr0, $sp, 272
	beqz	$a3, .LBB1_160
# %bb.158:                              #   in Loop: Header=BB1_152 Depth=2
.Ltmp479:                               # EH_LABEL
	addi.d	$a0, $sp, 272
	ori	$a2, $zero, 2
	move	$a1, $s0
	jirl	$ra, $a3, 0
.Ltmp480:                               # EH_LABEL
# %bb.159:                              #   in Loop: Header=BB1_152 Depth=2
	vld	$vr0, $s0, 16
	vst	$vr0, $sp, 288
.LBB1_160:                              # %_ZNSt8functionIFfPfjEEC2ERKS2_.exit420
                                        #   in Loop: Header=BB1_152 Depth=2
.Ltmp485:                               # EH_LABEL
	addi.d	$a0, $sp, 304
	addi.d	$a1, $sp, 272
	move	$a2, $fp
	move	$a3, $s3
	pcaddu18i	$ra, %call36(_ZL5checkIfEvSt8functionIFT_PS1_jEES4_PfjPKc)
	jirl	$ra, $ra, 0
.Ltmp486:                               # EH_LABEL
# %bb.161:                              #   in Loop: Header=BB1_152 Depth=2
	ld.d	$a3, $sp, 288
	beqz	$a3, .LBB1_163
# %bb.162:                              #   in Loop: Header=BB1_152 Depth=2
.Ltmp494:                               # EH_LABEL
	addi.d	$a0, $sp, 272
	addi.d	$a1, $sp, 272
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp495:                               # EH_LABEL
.LBB1_163:                              # %_ZNSt14_Function_baseD2Ev.exit422
                                        #   in Loop: Header=BB1_152 Depth=2
	ld.d	$a3, $sp, 320
	beqz	$a3, .LBB1_151
# %bb.164:                              #   in Loop: Header=BB1_152 Depth=2
.Ltmp497:                               # EH_LABEL
	addi.d	$a0, $sp, 304
	addi.d	$a1, $sp, 304
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp498:                               # EH_LABEL
	b	.LBB1_151
.LBB1_165:                              # %.preheader538
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	vld	$vr0, $a0, %pc_lo12(.LCPI1_4)
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	ori	$s8, $zero, 4
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a0, $a0, %pc_lo12(.L.str.24)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$s4, $a0, %pc_lo12(.L.str.25)
	move	$s3, $zero
	ori	$s6, $zero, 16
	b	.LBB1_167
	.p2align	4, , 16
.LBB1_166:                              #   in Loop: Header=BB1_167 Depth=1
	addi.d	$s3, $s3, 1
	ld.d	$s8, $sp, 48                    # 8-byte Folded Reload
	addi.d	$s8, $s8, 4
	ori	$a0, $zero, 1024
	beq	$s3, $a0, .LBB1_195
.LBB1_167:                              # %vector.ph875
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_168 Depth 2
                                        #     Child Loop BB1_182 Depth 2
	lu12i.w	$a0, -1
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	.p2align	4, , 16
.LBB1_168:                              # %vector.body876
                                        #   Parent Loop BB1_167 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vaddi.wu	$vr1, $vr0, 4
	vffint.s.wu	$vr2, $vr0
	vffint.s.wu	$vr1, $vr1
	add.d	$a1, $fp, $a0
	vstx	$vr2, $a1, $s2
	vstx	$vr1, $a1, $s5
	addi.d	$a0, $a0, 32
	vaddi.wu	$vr0, $vr0, 8
	bnez	$a0, .LBB1_168
# %bb.169:                              # %middle.block882
                                        #   in Loop: Header=BB1_167 Depth=1
	ld.d	$a3, $s1, 16
	slli.d	$a0, $s3, 2
	lu12i.w	$a1, 523264
	stx.w	$a1, $fp, $a0
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vst	$vr0, $sp, 240
	vst	$vr0, $sp, 256
	beqz	$a3, .LBB1_172
# %bb.170:                              #   in Loop: Header=BB1_167 Depth=1
.Ltmp500:                               # EH_LABEL
	addi.d	$a0, $sp, 240
	ori	$a2, $zero, 2
	move	$a1, $s1
	jirl	$ra, $a3, 0
.Ltmp501:                               # EH_LABEL
# %bb.171:                              #   in Loop: Header=BB1_167 Depth=1
	vld	$vr0, $s1, 16
	vst	$vr0, $sp, 256
.LBB1_172:                              # %_ZNSt8functionIFfPfjEEC2ERKS2_.exit434
                                        #   in Loop: Header=BB1_167 Depth=1
	ld.d	$a3, $s0, 16
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vst	$vr0, $sp, 224
	vst	$vr0, $sp, 208
	beqz	$a3, .LBB1_175
# %bb.173:                              #   in Loop: Header=BB1_167 Depth=1
.Ltmp506:                               # EH_LABEL
	addi.d	$a0, $sp, 208
	ori	$a2, $zero, 2
	move	$a1, $s0
	jirl	$ra, $a3, 0
.Ltmp507:                               # EH_LABEL
# %bb.174:                              #   in Loop: Header=BB1_167 Depth=1
	vld	$vr0, $s0, 16
	vst	$vr0, $sp, 224
.LBB1_175:                              # %_ZNSt8functionIFfPfjEEC2ERKS2_.exit440
                                        #   in Loop: Header=BB1_167 Depth=1
.Ltmp512:                               # EH_LABEL
	addi.d	$a0, $sp, 240
	addi.d	$a1, $sp, 208
	move	$a2, $fp
	ld.d	$a3, $sp, 8                     # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZL5checkIfEvSt8functionIFT_PS1_jEES4_PfjPKc)
	jirl	$ra, $ra, 0
.Ltmp513:                               # EH_LABEL
# %bb.176:                              #   in Loop: Header=BB1_167 Depth=1
	ld.d	$a3, $sp, 224
	beqz	$a3, .LBB1_178
# %bb.177:                              #   in Loop: Header=BB1_167 Depth=1
.Ltmp521:                               # EH_LABEL
	addi.d	$a0, $sp, 208
	addi.d	$a1, $sp, 208
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp522:                               # EH_LABEL
.LBB1_178:                              # %_ZNSt14_Function_baseD2Ev.exit442
                                        #   in Loop: Header=BB1_167 Depth=1
	ld.d	$a3, $sp, 256
	beqz	$a3, .LBB1_180
# %bb.179:                              #   in Loop: Header=BB1_167 Depth=1
.Ltmp524:                               # EH_LABEL
	addi.d	$a0, $sp, 240
	addi.d	$a1, $sp, 240
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp525:                               # EH_LABEL
.LBB1_180:                              # %_ZNSt14_Function_baseD2Ev.exit444.preheader
                                        #   in Loop: Header=BB1_167 Depth=1
	ori	$s7, $zero, 1
	st.d	$s8, $sp, 48                    # 8-byte Folded Spill
	b	.LBB1_182
	.p2align	4, , 16
.LBB1_181:                              # %_ZNSt14_Function_baseD2Ev.exit464
                                        #   in Loop: Header=BB1_182 Depth=2
	addi.d	$s7, $s7, 1
	addi.d	$s8, $s8, 4
	beq	$s7, $s6, .LBB1_166
.LBB1_182:                              # %_ZNSt14_Function_baseD2Ev.exit444
                                        #   Parent Loop BB1_167 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a0, $s3, $s7
	ori	$a1, $zero, 1023
	bltu	$a1, $a0, .LBB1_184
# %bb.183:                              #   in Loop: Header=BB1_182 Depth=2
	lu12i.w	$a0, 523264
	stx.w	$a0, $fp, $s8
.LBB1_184:                              #   in Loop: Header=BB1_182 Depth=2
	ld.d	$a3, $s1, 16
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vst	$vr0, $sp, 192
	vst	$vr0, $sp, 176
	beqz	$a3, .LBB1_187
# %bb.185:                              #   in Loop: Header=BB1_182 Depth=2
.Ltmp527:                               # EH_LABEL
	addi.d	$a0, $sp, 176
	ori	$a2, $zero, 2
	move	$a1, $s1
	jirl	$ra, $a3, 0
.Ltmp528:                               # EH_LABEL
# %bb.186:                              #   in Loop: Header=BB1_182 Depth=2
	vld	$vr0, $s1, 16
	vst	$vr0, $sp, 192
.LBB1_187:                              # %_ZNSt8functionIFfPfjEEC2ERKS2_.exit454
                                        #   in Loop: Header=BB1_182 Depth=2
	ld.d	$a3, $s0, 16
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vst	$vr0, $sp, 160
	vst	$vr0, $sp, 144
	beqz	$a3, .LBB1_190
# %bb.188:                              #   in Loop: Header=BB1_182 Depth=2
.Ltmp533:                               # EH_LABEL
	addi.d	$a0, $sp, 144
	ori	$a2, $zero, 2
	move	$a1, $s0
	jirl	$ra, $a3, 0
.Ltmp534:                               # EH_LABEL
# %bb.189:                              #   in Loop: Header=BB1_182 Depth=2
	vld	$vr0, $s0, 16
	vst	$vr0, $sp, 160
.LBB1_190:                              # %_ZNSt8functionIFfPfjEEC2ERKS2_.exit460
                                        #   in Loop: Header=BB1_182 Depth=2
.Ltmp539:                               # EH_LABEL
	addi.d	$a0, $sp, 176
	addi.d	$a1, $sp, 144
	move	$a2, $fp
	move	$a3, $s4
	pcaddu18i	$ra, %call36(_ZL5checkIfEvSt8functionIFT_PS1_jEES4_PfjPKc)
	jirl	$ra, $ra, 0
.Ltmp540:                               # EH_LABEL
# %bb.191:                              #   in Loop: Header=BB1_182 Depth=2
	ld.d	$a3, $sp, 160
	beqz	$a3, .LBB1_193
# %bb.192:                              #   in Loop: Header=BB1_182 Depth=2
.Ltmp548:                               # EH_LABEL
	addi.d	$a0, $sp, 144
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp549:                               # EH_LABEL
.LBB1_193:                              # %_ZNSt14_Function_baseD2Ev.exit462
                                        #   in Loop: Header=BB1_182 Depth=2
	ld.d	$a3, $sp, 192
	beqz	$a3, .LBB1_181
# %bb.194:                              #   in Loop: Header=BB1_182 Depth=2
.Ltmp551:                               # EH_LABEL
	addi.d	$a0, $sp, 176
	addi.d	$a1, $sp, 176
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp552:                               # EH_LABEL
	b	.LBB1_181
.LBB1_195:                              # %.preheader536
	addi.d	$s4, $fp, 4
	lu12i.w	$s7, -2048
	lu32i.d	$s7, 0
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$s3, $a0, %pc_lo12(.L.str.26)
	move	$a2, $zero
	ori	$s6, $zero, 60
	b	.LBB1_197
	.p2align	4, , 16
.LBB1_196:                              #   in Loop: Header=BB1_197 Depth=1
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	addi.d	$a2, $a2, 1
	addi.d	$s4, $s4, 4
	lu12i.w	$s2, 1
	ori	$a0, $zero, 64
	beq	$a2, $a0, .LBB1_212
.LBB1_197:                              # %vector.ph884
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_198 Depth 2
                                        #     Child Loop BB1_201 Depth 2
	lu12i.w	$a0, -1
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	.p2align	4, , 16
.LBB1_198:                              # %vector.body885
                                        #   Parent Loop BB1_197 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a1, $fp, $a0
	vstx	$vr0, $a1, $s2
	addi.d	$a0, $a0, 32
	vstx	$vr0, $a1, $s5
	bnez	$a0, .LBB1_198
# %bb.199:                              # %.preheader
                                        #   in Loop: Header=BB1_197 Depth=1
	move	$s2, $zero
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	alsl.d	$s8, $a2, $fp, 2
	b	.LBB1_201
	.p2align	4, , 16
.LBB1_200:                              # %_ZNSt14_Function_baseD2Ev.exit485
                                        #   in Loop: Header=BB1_201 Depth=2
	addi.d	$s2, $s2, 4
	beq	$s2, $s6, .LBB1_196
.LBB1_201:                              #   Parent Loop BB1_197 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a3, $s1, 16
	st.w	$s7, $s8, 0
	lu12i.w	$a0, 522240
	stx.w	$a0, $s4, $s2
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vst	$vr0, $sp, 112
	vst	$vr0, $sp, 128
	beqz	$a3, .LBB1_204
# %bb.202:                              #   in Loop: Header=BB1_201 Depth=2
.Ltmp554:                               # EH_LABEL
	addi.d	$a0, $sp, 112
	ori	$a2, $zero, 2
	move	$a1, $s1
	jirl	$ra, $a3, 0
.Ltmp555:                               # EH_LABEL
# %bb.203:                              #   in Loop: Header=BB1_201 Depth=2
	vld	$vr0, $s1, 16
	vst	$vr0, $sp, 128
.LBB1_204:                              # %_ZNSt8functionIFfPfjEEC2ERKS2_.exit475
                                        #   in Loop: Header=BB1_201 Depth=2
	ld.d	$a3, $s0, 16
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vst	$vr0, $sp, 96
	vst	$vr0, $sp, 80
	beqz	$a3, .LBB1_207
# %bb.205:                              #   in Loop: Header=BB1_201 Depth=2
.Ltmp560:                               # EH_LABEL
	addi.d	$a0, $sp, 80
	ori	$a2, $zero, 2
	move	$a1, $s0
	jirl	$ra, $a3, 0
.Ltmp561:                               # EH_LABEL
# %bb.206:                              #   in Loop: Header=BB1_201 Depth=2
	vld	$vr0, $s0, 16
	vst	$vr0, $sp, 96
.LBB1_207:                              # %_ZNSt8functionIFfPfjEEC2ERKS2_.exit481
                                        #   in Loop: Header=BB1_201 Depth=2
.Ltmp566:                               # EH_LABEL
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 80
	move	$a2, $fp
	move	$a3, $s3
	pcaddu18i	$ra, %call36(_ZL5checkIfEvSt8functionIFT_PS1_jEES4_PfjPKc)
	jirl	$ra, $ra, 0
.Ltmp567:                               # EH_LABEL
# %bb.208:                              #   in Loop: Header=BB1_201 Depth=2
	ld.d	$a3, $sp, 96
	beqz	$a3, .LBB1_210
# %bb.209:                              #   in Loop: Header=BB1_201 Depth=2
.Ltmp575:                               # EH_LABEL
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp576:                               # EH_LABEL
.LBB1_210:                              # %_ZNSt14_Function_baseD2Ev.exit483
                                        #   in Loop: Header=BB1_201 Depth=2
	ld.d	$a3, $sp, 128
	beqz	$a3, .LBB1_200
# %bb.211:                              #   in Loop: Header=BB1_201 Depth=2
.Ltmp578:                               # EH_LABEL
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp579:                               # EH_LABEL
	b	.LBB1_200
.LBB1_212:                              # %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	fld.d	$fs4, $sp, 976                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 984                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 992                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 1000                 # 8-byte Folded Reload
	fld.d	$fs0, $sp, 1008                 # 8-byte Folded Reload
	ld.d	$s8, $sp, 1016                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1024                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1032                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1040                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1048                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1056                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1064                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1072                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1080                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1088                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1096                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1104
	ret
.LBB1_213:
.Ltmp364:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_214:
.Ltmp361:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_215:
.Ltmp346:                               # EH_LABEL
	ld.d	$a3, $sp, 608
	move	$s0, $a0
	beqz	$a3, .LBB1_263
# %bb.216:
.Ltmp347:                               # EH_LABEL
	addi.d	$a0, $sp, 592
	addi.d	$a1, $sp, 592
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp348:                               # EH_LABEL
	b	.LBB1_263
.LBB1_217:
.Ltmp349:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_218:
.Ltmp340:                               # EH_LABEL
	ld.d	$a3, $sp, 640
	move	$s0, $a0
	beqz	$a3, .LBB1_412
# %bb.219:
.Ltmp341:                               # EH_LABEL
	addi.d	$a0, $sp, 624
	addi.d	$a1, $sp, 624
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp342:                               # EH_LABEL
	b	.LBB1_412
.LBB1_220:
.Ltmp343:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_221:
.Ltmp337:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_222:
.Ltmp334:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_223:
.Ltmp319:                               # EH_LABEL
	ld.d	$a3, $sp, 672
	move	$s0, $a0
	beqz	$a3, .LBB1_269
# %bb.224:
.Ltmp320:                               # EH_LABEL
	addi.d	$a0, $sp, 656
	addi.d	$a1, $sp, 656
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp321:                               # EH_LABEL
	b	.LBB1_269
.LBB1_225:
.Ltmp322:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_226:
.Ltmp313:                               # EH_LABEL
	ld.d	$a3, $sp, 704
	move	$s0, $a0
	beqz	$a3, .LBB1_412
# %bb.227:
.Ltmp314:                               # EH_LABEL
	addi.d	$a0, $sp, 688
	addi.d	$a1, $sp, 688
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp315:                               # EH_LABEL
	b	.LBB1_412
.LBB1_228:
.Ltmp316:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_229:
.Ltmp310:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_230:
.Ltmp307:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_231:
.Ltmp292:                               # EH_LABEL
	ld.d	$a3, $sp, 736
	move	$s0, $a0
	beqz	$a3, .LBB1_275
# %bb.232:
.Ltmp293:                               # EH_LABEL
	addi.d	$a0, $sp, 720
	addi.d	$a1, $sp, 720
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp294:                               # EH_LABEL
	b	.LBB1_275
.LBB1_233:
.Ltmp295:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_234:
.Ltmp286:                               # EH_LABEL
	ld.d	$a3, $sp, 768
	move	$s0, $a0
	beqz	$a3, .LBB1_412
# %bb.235:
.Ltmp287:                               # EH_LABEL
	addi.d	$a0, $sp, 752
	addi.d	$a1, $sp, 752
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp288:                               # EH_LABEL
	b	.LBB1_412
.LBB1_236:
.Ltmp289:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_237:
.Ltmp283:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_238:
.Ltmp280:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_239:
.Ltmp265:                               # EH_LABEL
	ld.d	$a3, $sp, 800
	move	$s0, $a0
	beqz	$a3, .LBB1_281
# %bb.240:
.Ltmp266:                               # EH_LABEL
	addi.d	$a0, $sp, 784
	addi.d	$a1, $sp, 784
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp267:                               # EH_LABEL
	b	.LBB1_281
.LBB1_241:
.Ltmp268:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_242:
.Ltmp259:                               # EH_LABEL
	ld.d	$a3, $sp, 832
	move	$s0, $a0
	beqz	$a3, .LBB1_412
# %bb.243:
.Ltmp260:                               # EH_LABEL
	addi.d	$a0, $sp, 816
	addi.d	$a1, $sp, 816
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp261:                               # EH_LABEL
	b	.LBB1_412
.LBB1_244:
.Ltmp262:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_245:
.Ltmp256:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_246:
.Ltmp253:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_247:
.Ltmp238:                               # EH_LABEL
	ld.d	$a3, $sp, 864
	move	$s0, $a0
	beqz	$a3, .LBB1_287
# %bb.248:
.Ltmp239:                               # EH_LABEL
	addi.d	$a0, $sp, 848
	addi.d	$a1, $sp, 848
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp240:                               # EH_LABEL
	b	.LBB1_287
.LBB1_249:
.Ltmp241:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_250:
.Ltmp232:                               # EH_LABEL
	ld.d	$a3, $sp, 896
	move	$s0, $a0
	beqz	$a3, .LBB1_412
# %bb.251:
.Ltmp233:                               # EH_LABEL
	addi.d	$a0, $sp, 880
	addi.d	$a1, $sp, 880
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp234:                               # EH_LABEL
	b	.LBB1_412
.LBB1_252:
.Ltmp235:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_253:
.Ltmp229:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_254:
.Ltmp226:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_255:
.Ltmp211:                               # EH_LABEL
	ld.d	$a3, $sp, 928
	move	$s0, $a0
	beqz	$a3, .LBB1_293
# %bb.256:
.Ltmp212:                               # EH_LABEL
	addi.d	$a0, $sp, 912
	addi.d	$a1, $sp, 912
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp213:                               # EH_LABEL
	b	.LBB1_293
.LBB1_257:
.Ltmp214:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_258:
.Ltmp205:                               # EH_LABEL
	ld.d	$a3, $sp, 960
	move	$s0, $a0
	beqz	$a3, .LBB1_412
# %bb.259:
.Ltmp206:                               # EH_LABEL
	addi.d	$a0, $sp, 944
	addi.d	$a1, $sp, 944
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp207:                               # EH_LABEL
	b	.LBB1_412
.LBB1_260:
.Ltmp208:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_261:
.Ltmp352:                               # EH_LABEL
	ld.d	$a3, $sp, 608
	move	$s0, $a0
	beqz	$a3, .LBB1_263
# %bb.262:
.Ltmp353:                               # EH_LABEL
	addi.d	$a0, $sp, 592
	addi.d	$a1, $sp, 592
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp354:                               # EH_LABEL
.LBB1_263:                              # %.body318
	ld.d	$a3, $sp, 640
	beqz	$a3, .LBB1_412
# %bb.264:
.Ltmp356:                               # EH_LABEL
	addi.d	$a0, $sp, 624
	addi.d	$a1, $sp, 624
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp357:                               # EH_LABEL
	b	.LBB1_412
.LBB1_265:
.Ltmp355:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_266:
.Ltmp358:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_267:
.Ltmp325:                               # EH_LABEL
	ld.d	$a3, $sp, 672
	move	$s0, $a0
	beqz	$a3, .LBB1_269
# %bb.268:
.Ltmp326:                               # EH_LABEL
	addi.d	$a0, $sp, 656
	addi.d	$a1, $sp, 656
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp327:                               # EH_LABEL
.LBB1_269:                              # %.body298
	ld.d	$a3, $sp, 704
	beqz	$a3, .LBB1_412
# %bb.270:
.Ltmp329:                               # EH_LABEL
	addi.d	$a0, $sp, 688
	addi.d	$a1, $sp, 688
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp330:                               # EH_LABEL
	b	.LBB1_412
.LBB1_271:
.Ltmp328:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_272:
.Ltmp331:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_273:
.Ltmp298:                               # EH_LABEL
	ld.d	$a3, $sp, 736
	move	$s0, $a0
	beqz	$a3, .LBB1_275
# %bb.274:
.Ltmp299:                               # EH_LABEL
	addi.d	$a0, $sp, 720
	addi.d	$a1, $sp, 720
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp300:                               # EH_LABEL
.LBB1_275:                              # %.body278
	ld.d	$a3, $sp, 768
	beqz	$a3, .LBB1_412
# %bb.276:
.Ltmp302:                               # EH_LABEL
	addi.d	$a0, $sp, 752
	addi.d	$a1, $sp, 752
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp303:                               # EH_LABEL
	b	.LBB1_412
.LBB1_277:
.Ltmp301:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_278:
.Ltmp304:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_279:
.Ltmp271:                               # EH_LABEL
	ld.d	$a3, $sp, 800
	move	$s0, $a0
	beqz	$a3, .LBB1_281
# %bb.280:
.Ltmp272:                               # EH_LABEL
	addi.d	$a0, $sp, 784
	addi.d	$a1, $sp, 784
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp273:                               # EH_LABEL
.LBB1_281:                              # %.body258
	ld.d	$a3, $sp, 832
	beqz	$a3, .LBB1_412
# %bb.282:
.Ltmp275:                               # EH_LABEL
	addi.d	$a0, $sp, 816
	addi.d	$a1, $sp, 816
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp276:                               # EH_LABEL
	b	.LBB1_412
.LBB1_283:
.Ltmp274:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_284:
.Ltmp277:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_285:
.Ltmp244:                               # EH_LABEL
	ld.d	$a3, $sp, 864
	move	$s0, $a0
	beqz	$a3, .LBB1_287
# %bb.286:
.Ltmp245:                               # EH_LABEL
	addi.d	$a0, $sp, 848
	addi.d	$a1, $sp, 848
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp246:                               # EH_LABEL
.LBB1_287:                              # %.body234
	ld.d	$a3, $sp, 896
	beqz	$a3, .LBB1_412
# %bb.288:
.Ltmp248:                               # EH_LABEL
	addi.d	$a0, $sp, 880
	addi.d	$a1, $sp, 880
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp249:                               # EH_LABEL
	b	.LBB1_412
.LBB1_289:
.Ltmp247:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_290:
.Ltmp250:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_291:
.Ltmp217:                               # EH_LABEL
	ld.d	$a3, $sp, 928
	move	$s0, $a0
	beqz	$a3, .LBB1_293
# %bb.292:
.Ltmp218:                               # EH_LABEL
	addi.d	$a0, $sp, 912
	addi.d	$a1, $sp, 912
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp219:                               # EH_LABEL
.LBB1_293:                              # %.body219
	ld.d	$a3, $sp, 960
	beqz	$a3, .LBB1_412
# %bb.294:
.Ltmp221:                               # EH_LABEL
	addi.d	$a0, $sp, 944
	addi.d	$a1, $sp, 944
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp222:                               # EH_LABEL
	b	.LBB1_412
.LBB1_295:
.Ltmp220:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_296:
.Ltmp223:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_297:                              # %.loopexit.split-lp
.Ltmp202:                               # EH_LABEL
	b	.LBB1_411
.LBB1_298:
.Ltmp523:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_299:
.Ltmp508:                               # EH_LABEL
	ld.d	$a3, $sp, 224
	move	$s0, $a0
	beqz	$a3, .LBB1_324
# %bb.300:
.Ltmp509:                               # EH_LABEL
	addi.d	$a0, $sp, 208
	addi.d	$a1, $sp, 208
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp510:                               # EH_LABEL
	b	.LBB1_324
.LBB1_301:
.Ltmp511:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_302:
.Ltmp526:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_303:
.Ltmp502:                               # EH_LABEL
	ld.d	$a3, $sp, 256
	move	$s0, $a0
	beqz	$a3, .LBB1_412
# %bb.304:
.Ltmp503:                               # EH_LABEL
	addi.d	$a0, $sp, 240
	addi.d	$a1, $sp, 240
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp504:                               # EH_LABEL
	b	.LBB1_412
.LBB1_305:
.Ltmp505:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_306:
.Ltmp469:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_307:
.Ltmp454:                               # EH_LABEL
	ld.d	$a3, $sp, 352
	move	$s0, $a0
	beqz	$a3, .LBB1_330
# %bb.308:
.Ltmp455:                               # EH_LABEL
	addi.d	$a0, $sp, 336
	addi.d	$a1, $sp, 336
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp456:                               # EH_LABEL
	b	.LBB1_330
.LBB1_309:
.Ltmp457:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_310:
.Ltmp472:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_311:
.Ltmp448:                               # EH_LABEL
	ld.d	$a3, $sp, 384
	move	$s0, $a0
	beqz	$a3, .LBB1_412
# %bb.312:
.Ltmp449:                               # EH_LABEL
	addi.d	$a0, $sp, 368
	addi.d	$a1, $sp, 368
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp450:                               # EH_LABEL
	b	.LBB1_412
.LBB1_313:
.Ltmp451:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_314:
.Ltmp391:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_315:
.Ltmp367:                               # EH_LABEL
	ld.d	$a3, $sp, 576
	move	$s0, $a0
	beqz	$a3, .LBB1_412
# %bb.316:
.Ltmp368:                               # EH_LABEL
	addi.d	$a0, $sp, 560
	addi.d	$a1, $sp, 560
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp369:                               # EH_LABEL
	b	.LBB1_412
.LBB1_317:
.Ltmp370:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_318:
.Ltmp388:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_319:
.Ltmp373:                               # EH_LABEL
	ld.d	$a3, $sp, 544
	move	$s0, $a0
	beqz	$a3, .LBB1_336
# %bb.320:
.Ltmp374:                               # EH_LABEL
	addi.d	$a0, $sp, 528
	addi.d	$a1, $sp, 528
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp375:                               # EH_LABEL
	b	.LBB1_336
.LBB1_321:
.Ltmp376:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_322:
.Ltmp514:                               # EH_LABEL
	ld.d	$a3, $sp, 224
	move	$s0, $a0
	beqz	$a3, .LBB1_324
# %bb.323:
.Ltmp515:                               # EH_LABEL
	addi.d	$a0, $sp, 208
	addi.d	$a1, $sp, 208
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp516:                               # EH_LABEL
.LBB1_324:                              # %.body438
	ld.d	$a3, $sp, 256
	beqz	$a3, .LBB1_412
# %bb.325:
.Ltmp518:                               # EH_LABEL
	addi.d	$a0, $sp, 240
	addi.d	$a1, $sp, 240
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp519:                               # EH_LABEL
	b	.LBB1_412
.LBB1_326:
.Ltmp517:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_327:
.Ltmp520:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_328:
.Ltmp460:                               # EH_LABEL
	ld.d	$a3, $sp, 352
	move	$s0, $a0
	beqz	$a3, .LBB1_330
# %bb.329:
.Ltmp461:                               # EH_LABEL
	addi.d	$a0, $sp, 336
	addi.d	$a1, $sp, 336
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp462:                               # EH_LABEL
.LBB1_330:                              # %.body398
	ld.d	$a3, $sp, 384
	beqz	$a3, .LBB1_412
# %bb.331:
.Ltmp464:                               # EH_LABEL
	addi.d	$a0, $sp, 368
	addi.d	$a1, $sp, 368
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp465:                               # EH_LABEL
	b	.LBB1_412
.LBB1_332:
.Ltmp463:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_333:
.Ltmp466:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_334:
.Ltmp379:                               # EH_LABEL
	ld.d	$a3, $sp, 544
	move	$s0, $a0
	beqz	$a3, .LBB1_336
# %bb.335:
.Ltmp380:                               # EH_LABEL
	addi.d	$a0, $sp, 528
	addi.d	$a1, $sp, 528
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp381:                               # EH_LABEL
.LBB1_336:                              # %.body338
	ld.d	$a3, $sp, 576
	beqz	$a3, .LBB1_412
# %bb.337:
.Ltmp383:                               # EH_LABEL
	addi.d	$a0, $sp, 560
	addi.d	$a1, $sp, 560
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp384:                               # EH_LABEL
	b	.LBB1_412
.LBB1_338:
.Ltmp382:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_339:
.Ltmp385:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_340:
.Ltmp580:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_341:
.Ltmp556:                               # EH_LABEL
	ld.d	$a3, $sp, 128
	move	$s0, $a0
	beqz	$a3, .LBB1_412
# %bb.342:
.Ltmp557:                               # EH_LABEL
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp558:                               # EH_LABEL
	b	.LBB1_412
.LBB1_343:
.Ltmp559:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_344:
.Ltmp577:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_345:
.Ltmp562:                               # EH_LABEL
	ld.d	$a3, $sp, 96
	move	$s0, $a0
	beqz	$a3, .LBB1_382
# %bb.346:
.Ltmp563:                               # EH_LABEL
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp564:                               # EH_LABEL
	b	.LBB1_382
.LBB1_347:
.Ltmp565:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_348:
.Ltmp553:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_349:
.Ltmp529:                               # EH_LABEL
	ld.d	$a3, $sp, 192
	move	$s0, $a0
	beqz	$a3, .LBB1_412
# %bb.350:
.Ltmp530:                               # EH_LABEL
	addi.d	$a0, $sp, 176
	addi.d	$a1, $sp, 176
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp531:                               # EH_LABEL
	b	.LBB1_412
.LBB1_351:
.Ltmp532:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_352:
.Ltmp550:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_353:
.Ltmp535:                               # EH_LABEL
	ld.d	$a3, $sp, 160
	move	$s0, $a0
	beqz	$a3, .LBB1_388
# %bb.354:
.Ltmp536:                               # EH_LABEL
	addi.d	$a0, $sp, 144
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp537:                               # EH_LABEL
	b	.LBB1_388
.LBB1_355:
.Ltmp538:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_356:
.Ltmp499:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_357:
.Ltmp475:                               # EH_LABEL
	ld.d	$a3, $sp, 320
	move	$s0, $a0
	beqz	$a3, .LBB1_412
# %bb.358:
.Ltmp476:                               # EH_LABEL
	addi.d	$a0, $sp, 304
	addi.d	$a1, $sp, 304
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp477:                               # EH_LABEL
	b	.LBB1_412
.LBB1_359:
.Ltmp478:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_360:
.Ltmp496:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_361:
.Ltmp481:                               # EH_LABEL
	ld.d	$a3, $sp, 288
	move	$s0, $a0
	beqz	$a3, .LBB1_394
# %bb.362:
.Ltmp482:                               # EH_LABEL
	addi.d	$a0, $sp, 272
	addi.d	$a1, $sp, 272
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp483:                               # EH_LABEL
	b	.LBB1_394
.LBB1_363:
.Ltmp484:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_364:
.Ltmp445:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_365:
.Ltmp421:                               # EH_LABEL
	ld.d	$a3, $sp, 448
	move	$s0, $a0
	beqz	$a3, .LBB1_412
# %bb.366:
.Ltmp422:                               # EH_LABEL
	addi.d	$a0, $sp, 432
	addi.d	$a1, $sp, 432
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp423:                               # EH_LABEL
	b	.LBB1_412
.LBB1_367:
.Ltmp424:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_368:
.Ltmp442:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_369:
.Ltmp427:                               # EH_LABEL
	ld.d	$a3, $sp, 416
	move	$s0, $a0
	beqz	$a3, .LBB1_400
# %bb.370:
.Ltmp428:                               # EH_LABEL
	addi.d	$a0, $sp, 400
	addi.d	$a1, $sp, 400
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp429:                               # EH_LABEL
	b	.LBB1_400
.LBB1_371:
.Ltmp430:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_372:
.Ltmp418:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_373:
.Ltmp394:                               # EH_LABEL
	ld.d	$a3, $sp, 512
	move	$s0, $a0
	beqz	$a3, .LBB1_412
# %bb.374:
.Ltmp395:                               # EH_LABEL
	addi.d	$a0, $sp, 496
	addi.d	$a1, $sp, 496
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp396:                               # EH_LABEL
	b	.LBB1_412
.LBB1_375:
.Ltmp397:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_376:
.Ltmp415:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_377:
.Ltmp400:                               # EH_LABEL
	ld.d	$a3, $sp, 480
	move	$s0, $a0
	beqz	$a3, .LBB1_406
# %bb.378:
.Ltmp401:                               # EH_LABEL
	addi.d	$a0, $sp, 464
	addi.d	$a1, $sp, 464
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp402:                               # EH_LABEL
	b	.LBB1_406
.LBB1_379:
.Ltmp403:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_380:
.Ltmp568:                               # EH_LABEL
	ld.d	$a3, $sp, 96
	move	$s0, $a0
	beqz	$a3, .LBB1_382
# %bb.381:
.Ltmp569:                               # EH_LABEL
	addi.d	$a0, $sp, 80
	addi.d	$a1, $sp, 80
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp570:                               # EH_LABEL
.LBB1_382:                              # %.body479
	ld.d	$a3, $sp, 128
	beqz	$a3, .LBB1_412
# %bb.383:
.Ltmp572:                               # EH_LABEL
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 112
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp573:                               # EH_LABEL
	b	.LBB1_412
.LBB1_384:
.Ltmp571:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_385:
.Ltmp574:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_386:
.Ltmp541:                               # EH_LABEL
	ld.d	$a3, $sp, 160
	move	$s0, $a0
	beqz	$a3, .LBB1_388
# %bb.387:
.Ltmp542:                               # EH_LABEL
	addi.d	$a0, $sp, 144
	addi.d	$a1, $sp, 144
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp543:                               # EH_LABEL
.LBB1_388:                              # %.body458
	ld.d	$a3, $sp, 192
	beqz	$a3, .LBB1_412
# %bb.389:
.Ltmp545:                               # EH_LABEL
	addi.d	$a0, $sp, 176
	addi.d	$a1, $sp, 176
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp546:                               # EH_LABEL
	b	.LBB1_412
.LBB1_390:
.Ltmp544:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_391:
.Ltmp547:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_392:
.Ltmp487:                               # EH_LABEL
	ld.d	$a3, $sp, 288
	move	$s0, $a0
	beqz	$a3, .LBB1_394
# %bb.393:
.Ltmp488:                               # EH_LABEL
	addi.d	$a0, $sp, 272
	addi.d	$a1, $sp, 272
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp489:                               # EH_LABEL
.LBB1_394:                              # %.body418
	ld.d	$a3, $sp, 320
	beqz	$a3, .LBB1_412
# %bb.395:
.Ltmp491:                               # EH_LABEL
	addi.d	$a0, $sp, 304
	addi.d	$a1, $sp, 304
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp492:                               # EH_LABEL
	b	.LBB1_412
.LBB1_396:
.Ltmp490:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_397:
.Ltmp493:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_398:
.Ltmp433:                               # EH_LABEL
	ld.d	$a3, $sp, 416
	move	$s0, $a0
	beqz	$a3, .LBB1_400
# %bb.399:
.Ltmp434:                               # EH_LABEL
	addi.d	$a0, $sp, 400
	addi.d	$a1, $sp, 400
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp435:                               # EH_LABEL
.LBB1_400:                              # %.body378
	ld.d	$a3, $sp, 448
	beqz	$a3, .LBB1_412
# %bb.401:
.Ltmp437:                               # EH_LABEL
	addi.d	$a0, $sp, 432
	addi.d	$a1, $sp, 432
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp438:                               # EH_LABEL
	b	.LBB1_412
.LBB1_402:
.Ltmp436:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_403:
.Ltmp439:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_404:
.Ltmp406:                               # EH_LABEL
	ld.d	$a3, $sp, 480
	move	$s0, $a0
	beqz	$a3, .LBB1_406
# %bb.405:
.Ltmp407:                               # EH_LABEL
	addi.d	$a0, $sp, 464
	addi.d	$a1, $sp, 464
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp408:                               # EH_LABEL
.LBB1_406:                              # %.body358
	ld.d	$a3, $sp, 512
	beqz	$a3, .LBB1_412
# %bb.407:
.Ltmp410:                               # EH_LABEL
	addi.d	$a0, $sp, 496
	addi.d	$a1, $sp, 496
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp411:                               # EH_LABEL
	b	.LBB1_412
.LBB1_408:
.Ltmp409:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_409:
.Ltmp412:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB1_410:                              # %.loopexit
.Ltmp197:                               # EH_LABEL
.LBB1_411:                              # %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit492
	move	$s0, $a0
.LBB1_412:                              # %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit492
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
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
	.uleb128 .Ltmp196-.Ltmp195              #   Call between .Ltmp195 and .Ltmp196
	.uleb128 .Ltmp197-.Lfunc_begin1         #     jumps to .Ltmp197
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp196-.Lfunc_begin1         # >> Call Site 3 <<
	.uleb128 .Ltmp198-.Ltmp196              #   Call between .Ltmp196 and .Ltmp198
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp198-.Lfunc_begin1         # >> Call Site 4 <<
	.uleb128 .Ltmp201-.Ltmp198              #   Call between .Ltmp198 and .Ltmp201
	.uleb128 .Ltmp202-.Lfunc_begin1         #     jumps to .Ltmp202
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp203-.Lfunc_begin1         # >> Call Site 5 <<
	.uleb128 .Ltmp204-.Ltmp203              #   Call between .Ltmp203 and .Ltmp204
	.uleb128 .Ltmp205-.Lfunc_begin1         #     jumps to .Ltmp205
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp209-.Lfunc_begin1         # >> Call Site 6 <<
	.uleb128 .Ltmp210-.Ltmp209              #   Call between .Ltmp209 and .Ltmp210
	.uleb128 .Ltmp211-.Lfunc_begin1         #     jumps to .Ltmp211
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp215-.Lfunc_begin1         # >> Call Site 7 <<
	.uleb128 .Ltmp216-.Ltmp215              #   Call between .Ltmp215 and .Ltmp216
	.uleb128 .Ltmp217-.Lfunc_begin1         #     jumps to .Ltmp217
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp224-.Lfunc_begin1         # >> Call Site 8 <<
	.uleb128 .Ltmp225-.Ltmp224              #   Call between .Ltmp224 and .Ltmp225
	.uleb128 .Ltmp226-.Lfunc_begin1         #     jumps to .Ltmp226
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp227-.Lfunc_begin1         # >> Call Site 9 <<
	.uleb128 .Ltmp228-.Ltmp227              #   Call between .Ltmp227 and .Ltmp228
	.uleb128 .Ltmp229-.Lfunc_begin1         #     jumps to .Ltmp229
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp230-.Lfunc_begin1         # >> Call Site 10 <<
	.uleb128 .Ltmp231-.Ltmp230              #   Call between .Ltmp230 and .Ltmp231
	.uleb128 .Ltmp232-.Lfunc_begin1         #     jumps to .Ltmp232
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp236-.Lfunc_begin1         # >> Call Site 11 <<
	.uleb128 .Ltmp237-.Ltmp236              #   Call between .Ltmp236 and .Ltmp237
	.uleb128 .Ltmp238-.Lfunc_begin1         #     jumps to .Ltmp238
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp242-.Lfunc_begin1         # >> Call Site 12 <<
	.uleb128 .Ltmp243-.Ltmp242              #   Call between .Ltmp242 and .Ltmp243
	.uleb128 .Ltmp244-.Lfunc_begin1         #     jumps to .Ltmp244
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp251-.Lfunc_begin1         # >> Call Site 13 <<
	.uleb128 .Ltmp252-.Ltmp251              #   Call between .Ltmp251 and .Ltmp252
	.uleb128 .Ltmp253-.Lfunc_begin1         #     jumps to .Ltmp253
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp254-.Lfunc_begin1         # >> Call Site 14 <<
	.uleb128 .Ltmp255-.Ltmp254              #   Call between .Ltmp254 and .Ltmp255
	.uleb128 .Ltmp256-.Lfunc_begin1         #     jumps to .Ltmp256
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp257-.Lfunc_begin1         # >> Call Site 15 <<
	.uleb128 .Ltmp258-.Ltmp257              #   Call between .Ltmp257 and .Ltmp258
	.uleb128 .Ltmp259-.Lfunc_begin1         #     jumps to .Ltmp259
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp263-.Lfunc_begin1         # >> Call Site 16 <<
	.uleb128 .Ltmp264-.Ltmp263              #   Call between .Ltmp263 and .Ltmp264
	.uleb128 .Ltmp265-.Lfunc_begin1         #     jumps to .Ltmp265
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp269-.Lfunc_begin1         # >> Call Site 17 <<
	.uleb128 .Ltmp270-.Ltmp269              #   Call between .Ltmp269 and .Ltmp270
	.uleb128 .Ltmp271-.Lfunc_begin1         #     jumps to .Ltmp271
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp278-.Lfunc_begin1         # >> Call Site 18 <<
	.uleb128 .Ltmp279-.Ltmp278              #   Call between .Ltmp278 and .Ltmp279
	.uleb128 .Ltmp280-.Lfunc_begin1         #     jumps to .Ltmp280
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp281-.Lfunc_begin1         # >> Call Site 19 <<
	.uleb128 .Ltmp282-.Ltmp281              #   Call between .Ltmp281 and .Ltmp282
	.uleb128 .Ltmp283-.Lfunc_begin1         #     jumps to .Ltmp283
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp284-.Lfunc_begin1         # >> Call Site 20 <<
	.uleb128 .Ltmp285-.Ltmp284              #   Call between .Ltmp284 and .Ltmp285
	.uleb128 .Ltmp286-.Lfunc_begin1         #     jumps to .Ltmp286
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp290-.Lfunc_begin1         # >> Call Site 21 <<
	.uleb128 .Ltmp291-.Ltmp290              #   Call between .Ltmp290 and .Ltmp291
	.uleb128 .Ltmp292-.Lfunc_begin1         #     jumps to .Ltmp292
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp296-.Lfunc_begin1         # >> Call Site 22 <<
	.uleb128 .Ltmp297-.Ltmp296              #   Call between .Ltmp296 and .Ltmp297
	.uleb128 .Ltmp298-.Lfunc_begin1         #     jumps to .Ltmp298
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp305-.Lfunc_begin1         # >> Call Site 23 <<
	.uleb128 .Ltmp306-.Ltmp305              #   Call between .Ltmp305 and .Ltmp306
	.uleb128 .Ltmp307-.Lfunc_begin1         #     jumps to .Ltmp307
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp308-.Lfunc_begin1         # >> Call Site 24 <<
	.uleb128 .Ltmp309-.Ltmp308              #   Call between .Ltmp308 and .Ltmp309
	.uleb128 .Ltmp310-.Lfunc_begin1         #     jumps to .Ltmp310
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp311-.Lfunc_begin1         # >> Call Site 25 <<
	.uleb128 .Ltmp312-.Ltmp311              #   Call between .Ltmp311 and .Ltmp312
	.uleb128 .Ltmp313-.Lfunc_begin1         #     jumps to .Ltmp313
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp317-.Lfunc_begin1         # >> Call Site 26 <<
	.uleb128 .Ltmp318-.Ltmp317              #   Call between .Ltmp317 and .Ltmp318
	.uleb128 .Ltmp319-.Lfunc_begin1         #     jumps to .Ltmp319
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp323-.Lfunc_begin1         # >> Call Site 27 <<
	.uleb128 .Ltmp324-.Ltmp323              #   Call between .Ltmp323 and .Ltmp324
	.uleb128 .Ltmp325-.Lfunc_begin1         #     jumps to .Ltmp325
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp332-.Lfunc_begin1         # >> Call Site 28 <<
	.uleb128 .Ltmp333-.Ltmp332              #   Call between .Ltmp332 and .Ltmp333
	.uleb128 .Ltmp334-.Lfunc_begin1         #     jumps to .Ltmp334
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp335-.Lfunc_begin1         # >> Call Site 29 <<
	.uleb128 .Ltmp336-.Ltmp335              #   Call between .Ltmp335 and .Ltmp336
	.uleb128 .Ltmp337-.Lfunc_begin1         #     jumps to .Ltmp337
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp336-.Lfunc_begin1         # >> Call Site 30 <<
	.uleb128 .Ltmp338-.Ltmp336              #   Call between .Ltmp336 and .Ltmp338
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp338-.Lfunc_begin1         # >> Call Site 31 <<
	.uleb128 .Ltmp339-.Ltmp338              #   Call between .Ltmp338 and .Ltmp339
	.uleb128 .Ltmp340-.Lfunc_begin1         #     jumps to .Ltmp340
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp344-.Lfunc_begin1         # >> Call Site 32 <<
	.uleb128 .Ltmp345-.Ltmp344              #   Call between .Ltmp344 and .Ltmp345
	.uleb128 .Ltmp346-.Lfunc_begin1         #     jumps to .Ltmp346
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp350-.Lfunc_begin1         # >> Call Site 33 <<
	.uleb128 .Ltmp351-.Ltmp350              #   Call between .Ltmp350 and .Ltmp351
	.uleb128 .Ltmp352-.Lfunc_begin1         #     jumps to .Ltmp352
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp359-.Lfunc_begin1         # >> Call Site 34 <<
	.uleb128 .Ltmp360-.Ltmp359              #   Call between .Ltmp359 and .Ltmp360
	.uleb128 .Ltmp361-.Lfunc_begin1         #     jumps to .Ltmp361
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp362-.Lfunc_begin1         # >> Call Site 35 <<
	.uleb128 .Ltmp363-.Ltmp362              #   Call between .Ltmp362 and .Ltmp363
	.uleb128 .Ltmp364-.Lfunc_begin1         #     jumps to .Ltmp364
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp365-.Lfunc_begin1         # >> Call Site 36 <<
	.uleb128 .Ltmp366-.Ltmp365              #   Call between .Ltmp365 and .Ltmp366
	.uleb128 .Ltmp367-.Lfunc_begin1         #     jumps to .Ltmp367
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp371-.Lfunc_begin1         # >> Call Site 37 <<
	.uleb128 .Ltmp372-.Ltmp371              #   Call between .Ltmp371 and .Ltmp372
	.uleb128 .Ltmp373-.Lfunc_begin1         #     jumps to .Ltmp373
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp377-.Lfunc_begin1         # >> Call Site 38 <<
	.uleb128 .Ltmp378-.Ltmp377              #   Call between .Ltmp377 and .Ltmp378
	.uleb128 .Ltmp379-.Lfunc_begin1         #     jumps to .Ltmp379
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp386-.Lfunc_begin1         # >> Call Site 39 <<
	.uleb128 .Ltmp387-.Ltmp386              #   Call between .Ltmp386 and .Ltmp387
	.uleb128 .Ltmp388-.Lfunc_begin1         #     jumps to .Ltmp388
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp389-.Lfunc_begin1         # >> Call Site 40 <<
	.uleb128 .Ltmp390-.Ltmp389              #   Call between .Ltmp389 and .Ltmp390
	.uleb128 .Ltmp391-.Lfunc_begin1         #     jumps to .Ltmp391
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp392-.Lfunc_begin1         # >> Call Site 41 <<
	.uleb128 .Ltmp393-.Ltmp392              #   Call between .Ltmp392 and .Ltmp393
	.uleb128 .Ltmp394-.Lfunc_begin1         #     jumps to .Ltmp394
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp398-.Lfunc_begin1         # >> Call Site 42 <<
	.uleb128 .Ltmp399-.Ltmp398              #   Call between .Ltmp398 and .Ltmp399
	.uleb128 .Ltmp400-.Lfunc_begin1         #     jumps to .Ltmp400
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp404-.Lfunc_begin1         # >> Call Site 43 <<
	.uleb128 .Ltmp405-.Ltmp404              #   Call between .Ltmp404 and .Ltmp405
	.uleb128 .Ltmp406-.Lfunc_begin1         #     jumps to .Ltmp406
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp413-.Lfunc_begin1         # >> Call Site 44 <<
	.uleb128 .Ltmp414-.Ltmp413              #   Call between .Ltmp413 and .Ltmp414
	.uleb128 .Ltmp415-.Lfunc_begin1         #     jumps to .Ltmp415
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp416-.Lfunc_begin1         # >> Call Site 45 <<
	.uleb128 .Ltmp417-.Ltmp416              #   Call between .Ltmp416 and .Ltmp417
	.uleb128 .Ltmp418-.Lfunc_begin1         #     jumps to .Ltmp418
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp419-.Lfunc_begin1         # >> Call Site 46 <<
	.uleb128 .Ltmp420-.Ltmp419              #   Call between .Ltmp419 and .Ltmp420
	.uleb128 .Ltmp421-.Lfunc_begin1         #     jumps to .Ltmp421
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp425-.Lfunc_begin1         # >> Call Site 47 <<
	.uleb128 .Ltmp426-.Ltmp425              #   Call between .Ltmp425 and .Ltmp426
	.uleb128 .Ltmp427-.Lfunc_begin1         #     jumps to .Ltmp427
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp431-.Lfunc_begin1         # >> Call Site 48 <<
	.uleb128 .Ltmp432-.Ltmp431              #   Call between .Ltmp431 and .Ltmp432
	.uleb128 .Ltmp433-.Lfunc_begin1         #     jumps to .Ltmp433
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp440-.Lfunc_begin1         # >> Call Site 49 <<
	.uleb128 .Ltmp441-.Ltmp440              #   Call between .Ltmp440 and .Ltmp441
	.uleb128 .Ltmp442-.Lfunc_begin1         #     jumps to .Ltmp442
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp443-.Lfunc_begin1         # >> Call Site 50 <<
	.uleb128 .Ltmp444-.Ltmp443              #   Call between .Ltmp443 and .Ltmp444
	.uleb128 .Ltmp445-.Lfunc_begin1         #     jumps to .Ltmp445
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp446-.Lfunc_begin1         # >> Call Site 51 <<
	.uleb128 .Ltmp447-.Ltmp446              #   Call between .Ltmp446 and .Ltmp447
	.uleb128 .Ltmp448-.Lfunc_begin1         #     jumps to .Ltmp448
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp452-.Lfunc_begin1         # >> Call Site 52 <<
	.uleb128 .Ltmp453-.Ltmp452              #   Call between .Ltmp452 and .Ltmp453
	.uleb128 .Ltmp454-.Lfunc_begin1         #     jumps to .Ltmp454
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp458-.Lfunc_begin1         # >> Call Site 53 <<
	.uleb128 .Ltmp459-.Ltmp458              #   Call between .Ltmp458 and .Ltmp459
	.uleb128 .Ltmp460-.Lfunc_begin1         #     jumps to .Ltmp460
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp467-.Lfunc_begin1         # >> Call Site 54 <<
	.uleb128 .Ltmp468-.Ltmp467              #   Call between .Ltmp467 and .Ltmp468
	.uleb128 .Ltmp469-.Lfunc_begin1         #     jumps to .Ltmp469
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp470-.Lfunc_begin1         # >> Call Site 55 <<
	.uleb128 .Ltmp471-.Ltmp470              #   Call between .Ltmp470 and .Ltmp471
	.uleb128 .Ltmp472-.Lfunc_begin1         #     jumps to .Ltmp472
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp473-.Lfunc_begin1         # >> Call Site 56 <<
	.uleb128 .Ltmp474-.Ltmp473              #   Call between .Ltmp473 and .Ltmp474
	.uleb128 .Ltmp475-.Lfunc_begin1         #     jumps to .Ltmp475
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp479-.Lfunc_begin1         # >> Call Site 57 <<
	.uleb128 .Ltmp480-.Ltmp479              #   Call between .Ltmp479 and .Ltmp480
	.uleb128 .Ltmp481-.Lfunc_begin1         #     jumps to .Ltmp481
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp485-.Lfunc_begin1         # >> Call Site 58 <<
	.uleb128 .Ltmp486-.Ltmp485              #   Call between .Ltmp485 and .Ltmp486
	.uleb128 .Ltmp487-.Lfunc_begin1         #     jumps to .Ltmp487
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp494-.Lfunc_begin1         # >> Call Site 59 <<
	.uleb128 .Ltmp495-.Ltmp494              #   Call between .Ltmp494 and .Ltmp495
	.uleb128 .Ltmp496-.Lfunc_begin1         #     jumps to .Ltmp496
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp497-.Lfunc_begin1         # >> Call Site 60 <<
	.uleb128 .Ltmp498-.Ltmp497              #   Call between .Ltmp497 and .Ltmp498
	.uleb128 .Ltmp499-.Lfunc_begin1         #     jumps to .Ltmp499
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp500-.Lfunc_begin1         # >> Call Site 61 <<
	.uleb128 .Ltmp501-.Ltmp500              #   Call between .Ltmp500 and .Ltmp501
	.uleb128 .Ltmp502-.Lfunc_begin1         #     jumps to .Ltmp502
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp506-.Lfunc_begin1         # >> Call Site 62 <<
	.uleb128 .Ltmp507-.Ltmp506              #   Call between .Ltmp506 and .Ltmp507
	.uleb128 .Ltmp508-.Lfunc_begin1         #     jumps to .Ltmp508
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp512-.Lfunc_begin1         # >> Call Site 63 <<
	.uleb128 .Ltmp513-.Ltmp512              #   Call between .Ltmp512 and .Ltmp513
	.uleb128 .Ltmp514-.Lfunc_begin1         #     jumps to .Ltmp514
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp521-.Lfunc_begin1         # >> Call Site 64 <<
	.uleb128 .Ltmp522-.Ltmp521              #   Call between .Ltmp521 and .Ltmp522
	.uleb128 .Ltmp523-.Lfunc_begin1         #     jumps to .Ltmp523
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp524-.Lfunc_begin1         # >> Call Site 65 <<
	.uleb128 .Ltmp525-.Ltmp524              #   Call between .Ltmp524 and .Ltmp525
	.uleb128 .Ltmp526-.Lfunc_begin1         #     jumps to .Ltmp526
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp527-.Lfunc_begin1         # >> Call Site 66 <<
	.uleb128 .Ltmp528-.Ltmp527              #   Call between .Ltmp527 and .Ltmp528
	.uleb128 .Ltmp529-.Lfunc_begin1         #     jumps to .Ltmp529
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp533-.Lfunc_begin1         # >> Call Site 67 <<
	.uleb128 .Ltmp534-.Ltmp533              #   Call between .Ltmp533 and .Ltmp534
	.uleb128 .Ltmp535-.Lfunc_begin1         #     jumps to .Ltmp535
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp539-.Lfunc_begin1         # >> Call Site 68 <<
	.uleb128 .Ltmp540-.Ltmp539              #   Call between .Ltmp539 and .Ltmp540
	.uleb128 .Ltmp541-.Lfunc_begin1         #     jumps to .Ltmp541
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp548-.Lfunc_begin1         # >> Call Site 69 <<
	.uleb128 .Ltmp549-.Ltmp548              #   Call between .Ltmp548 and .Ltmp549
	.uleb128 .Ltmp550-.Lfunc_begin1         #     jumps to .Ltmp550
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp551-.Lfunc_begin1         # >> Call Site 70 <<
	.uleb128 .Ltmp552-.Ltmp551              #   Call between .Ltmp551 and .Ltmp552
	.uleb128 .Ltmp553-.Lfunc_begin1         #     jumps to .Ltmp553
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp554-.Lfunc_begin1         # >> Call Site 71 <<
	.uleb128 .Ltmp555-.Ltmp554              #   Call between .Ltmp554 and .Ltmp555
	.uleb128 .Ltmp556-.Lfunc_begin1         #     jumps to .Ltmp556
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp560-.Lfunc_begin1         # >> Call Site 72 <<
	.uleb128 .Ltmp561-.Ltmp560              #   Call between .Ltmp560 and .Ltmp561
	.uleb128 .Ltmp562-.Lfunc_begin1         #     jumps to .Ltmp562
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp566-.Lfunc_begin1         # >> Call Site 73 <<
	.uleb128 .Ltmp567-.Ltmp566              #   Call between .Ltmp566 and .Ltmp567
	.uleb128 .Ltmp568-.Lfunc_begin1         #     jumps to .Ltmp568
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp575-.Lfunc_begin1         # >> Call Site 74 <<
	.uleb128 .Ltmp576-.Ltmp575              #   Call between .Ltmp575 and .Ltmp576
	.uleb128 .Ltmp577-.Lfunc_begin1         #     jumps to .Ltmp577
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp578-.Lfunc_begin1         # >> Call Site 75 <<
	.uleb128 .Ltmp579-.Ltmp578              #   Call between .Ltmp578 and .Ltmp579
	.uleb128 .Ltmp580-.Lfunc_begin1         #     jumps to .Ltmp580
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp579-.Lfunc_begin1         # >> Call Site 76 <<
	.uleb128 .Ltmp347-.Ltmp579              #   Call between .Ltmp579 and .Ltmp347
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp347-.Lfunc_begin1         # >> Call Site 77 <<
	.uleb128 .Ltmp348-.Ltmp347              #   Call between .Ltmp347 and .Ltmp348
	.uleb128 .Ltmp349-.Lfunc_begin1         #     jumps to .Ltmp349
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp348-.Lfunc_begin1         # >> Call Site 78 <<
	.uleb128 .Ltmp341-.Ltmp348              #   Call between .Ltmp348 and .Ltmp341
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp341-.Lfunc_begin1         # >> Call Site 79 <<
	.uleb128 .Ltmp342-.Ltmp341              #   Call between .Ltmp341 and .Ltmp342
	.uleb128 .Ltmp343-.Lfunc_begin1         #     jumps to .Ltmp343
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp342-.Lfunc_begin1         # >> Call Site 80 <<
	.uleb128 .Ltmp320-.Ltmp342              #   Call between .Ltmp342 and .Ltmp320
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp320-.Lfunc_begin1         # >> Call Site 81 <<
	.uleb128 .Ltmp321-.Ltmp320              #   Call between .Ltmp320 and .Ltmp321
	.uleb128 .Ltmp322-.Lfunc_begin1         #     jumps to .Ltmp322
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp321-.Lfunc_begin1         # >> Call Site 82 <<
	.uleb128 .Ltmp314-.Ltmp321              #   Call between .Ltmp321 and .Ltmp314
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp314-.Lfunc_begin1         # >> Call Site 83 <<
	.uleb128 .Ltmp315-.Ltmp314              #   Call between .Ltmp314 and .Ltmp315
	.uleb128 .Ltmp316-.Lfunc_begin1         #     jumps to .Ltmp316
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp315-.Lfunc_begin1         # >> Call Site 84 <<
	.uleb128 .Ltmp293-.Ltmp315              #   Call between .Ltmp315 and .Ltmp293
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp293-.Lfunc_begin1         # >> Call Site 85 <<
	.uleb128 .Ltmp294-.Ltmp293              #   Call between .Ltmp293 and .Ltmp294
	.uleb128 .Ltmp295-.Lfunc_begin1         #     jumps to .Ltmp295
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp294-.Lfunc_begin1         # >> Call Site 86 <<
	.uleb128 .Ltmp287-.Ltmp294              #   Call between .Ltmp294 and .Ltmp287
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp287-.Lfunc_begin1         # >> Call Site 87 <<
	.uleb128 .Ltmp288-.Ltmp287              #   Call between .Ltmp287 and .Ltmp288
	.uleb128 .Ltmp289-.Lfunc_begin1         #     jumps to .Ltmp289
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp288-.Lfunc_begin1         # >> Call Site 88 <<
	.uleb128 .Ltmp266-.Ltmp288              #   Call between .Ltmp288 and .Ltmp266
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp266-.Lfunc_begin1         # >> Call Site 89 <<
	.uleb128 .Ltmp267-.Ltmp266              #   Call between .Ltmp266 and .Ltmp267
	.uleb128 .Ltmp268-.Lfunc_begin1         #     jumps to .Ltmp268
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp267-.Lfunc_begin1         # >> Call Site 90 <<
	.uleb128 .Ltmp260-.Ltmp267              #   Call between .Ltmp267 and .Ltmp260
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp260-.Lfunc_begin1         # >> Call Site 91 <<
	.uleb128 .Ltmp261-.Ltmp260              #   Call between .Ltmp260 and .Ltmp261
	.uleb128 .Ltmp262-.Lfunc_begin1         #     jumps to .Ltmp262
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp261-.Lfunc_begin1         # >> Call Site 92 <<
	.uleb128 .Ltmp239-.Ltmp261              #   Call between .Ltmp261 and .Ltmp239
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp239-.Lfunc_begin1         # >> Call Site 93 <<
	.uleb128 .Ltmp240-.Ltmp239              #   Call between .Ltmp239 and .Ltmp240
	.uleb128 .Ltmp241-.Lfunc_begin1         #     jumps to .Ltmp241
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp240-.Lfunc_begin1         # >> Call Site 94 <<
	.uleb128 .Ltmp233-.Ltmp240              #   Call between .Ltmp240 and .Ltmp233
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp233-.Lfunc_begin1         # >> Call Site 95 <<
	.uleb128 .Ltmp234-.Ltmp233              #   Call between .Ltmp233 and .Ltmp234
	.uleb128 .Ltmp235-.Lfunc_begin1         #     jumps to .Ltmp235
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp234-.Lfunc_begin1         # >> Call Site 96 <<
	.uleb128 .Ltmp212-.Ltmp234              #   Call between .Ltmp234 and .Ltmp212
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp212-.Lfunc_begin1         # >> Call Site 97 <<
	.uleb128 .Ltmp213-.Ltmp212              #   Call between .Ltmp212 and .Ltmp213
	.uleb128 .Ltmp214-.Lfunc_begin1         #     jumps to .Ltmp214
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp213-.Lfunc_begin1         # >> Call Site 98 <<
	.uleb128 .Ltmp206-.Ltmp213              #   Call between .Ltmp213 and .Ltmp206
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp206-.Lfunc_begin1         # >> Call Site 99 <<
	.uleb128 .Ltmp207-.Ltmp206              #   Call between .Ltmp206 and .Ltmp207
	.uleb128 .Ltmp208-.Lfunc_begin1         #     jumps to .Ltmp208
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp207-.Lfunc_begin1         # >> Call Site 100 <<
	.uleb128 .Ltmp353-.Ltmp207              #   Call between .Ltmp207 and .Ltmp353
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp353-.Lfunc_begin1         # >> Call Site 101 <<
	.uleb128 .Ltmp354-.Ltmp353              #   Call between .Ltmp353 and .Ltmp354
	.uleb128 .Ltmp355-.Lfunc_begin1         #     jumps to .Ltmp355
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp356-.Lfunc_begin1         # >> Call Site 102 <<
	.uleb128 .Ltmp357-.Ltmp356              #   Call between .Ltmp356 and .Ltmp357
	.uleb128 .Ltmp358-.Lfunc_begin1         #     jumps to .Ltmp358
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp357-.Lfunc_begin1         # >> Call Site 103 <<
	.uleb128 .Ltmp326-.Ltmp357              #   Call between .Ltmp357 and .Ltmp326
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp326-.Lfunc_begin1         # >> Call Site 104 <<
	.uleb128 .Ltmp327-.Ltmp326              #   Call between .Ltmp326 and .Ltmp327
	.uleb128 .Ltmp328-.Lfunc_begin1         #     jumps to .Ltmp328
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp329-.Lfunc_begin1         # >> Call Site 105 <<
	.uleb128 .Ltmp330-.Ltmp329              #   Call between .Ltmp329 and .Ltmp330
	.uleb128 .Ltmp331-.Lfunc_begin1         #     jumps to .Ltmp331
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp330-.Lfunc_begin1         # >> Call Site 106 <<
	.uleb128 .Ltmp299-.Ltmp330              #   Call between .Ltmp330 and .Ltmp299
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp299-.Lfunc_begin1         # >> Call Site 107 <<
	.uleb128 .Ltmp300-.Ltmp299              #   Call between .Ltmp299 and .Ltmp300
	.uleb128 .Ltmp301-.Lfunc_begin1         #     jumps to .Ltmp301
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp302-.Lfunc_begin1         # >> Call Site 108 <<
	.uleb128 .Ltmp303-.Ltmp302              #   Call between .Ltmp302 and .Ltmp303
	.uleb128 .Ltmp304-.Lfunc_begin1         #     jumps to .Ltmp304
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp303-.Lfunc_begin1         # >> Call Site 109 <<
	.uleb128 .Ltmp272-.Ltmp303              #   Call between .Ltmp303 and .Ltmp272
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp272-.Lfunc_begin1         # >> Call Site 110 <<
	.uleb128 .Ltmp273-.Ltmp272              #   Call between .Ltmp272 and .Ltmp273
	.uleb128 .Ltmp274-.Lfunc_begin1         #     jumps to .Ltmp274
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp275-.Lfunc_begin1         # >> Call Site 111 <<
	.uleb128 .Ltmp276-.Ltmp275              #   Call between .Ltmp275 and .Ltmp276
	.uleb128 .Ltmp277-.Lfunc_begin1         #     jumps to .Ltmp277
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp276-.Lfunc_begin1         # >> Call Site 112 <<
	.uleb128 .Ltmp245-.Ltmp276              #   Call between .Ltmp276 and .Ltmp245
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp245-.Lfunc_begin1         # >> Call Site 113 <<
	.uleb128 .Ltmp246-.Ltmp245              #   Call between .Ltmp245 and .Ltmp246
	.uleb128 .Ltmp247-.Lfunc_begin1         #     jumps to .Ltmp247
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp248-.Lfunc_begin1         # >> Call Site 114 <<
	.uleb128 .Ltmp249-.Ltmp248              #   Call between .Ltmp248 and .Ltmp249
	.uleb128 .Ltmp250-.Lfunc_begin1         #     jumps to .Ltmp250
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp249-.Lfunc_begin1         # >> Call Site 115 <<
	.uleb128 .Ltmp218-.Ltmp249              #   Call between .Ltmp249 and .Ltmp218
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp218-.Lfunc_begin1         # >> Call Site 116 <<
	.uleb128 .Ltmp219-.Ltmp218              #   Call between .Ltmp218 and .Ltmp219
	.uleb128 .Ltmp220-.Lfunc_begin1         #     jumps to .Ltmp220
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp221-.Lfunc_begin1         # >> Call Site 117 <<
	.uleb128 .Ltmp222-.Ltmp221              #   Call between .Ltmp221 and .Ltmp222
	.uleb128 .Ltmp223-.Lfunc_begin1         #     jumps to .Ltmp223
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp222-.Lfunc_begin1         # >> Call Site 118 <<
	.uleb128 .Ltmp509-.Ltmp222              #   Call between .Ltmp222 and .Ltmp509
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp509-.Lfunc_begin1         # >> Call Site 119 <<
	.uleb128 .Ltmp510-.Ltmp509              #   Call between .Ltmp509 and .Ltmp510
	.uleb128 .Ltmp511-.Lfunc_begin1         #     jumps to .Ltmp511
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp510-.Lfunc_begin1         # >> Call Site 120 <<
	.uleb128 .Ltmp503-.Ltmp510              #   Call between .Ltmp510 and .Ltmp503
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp503-.Lfunc_begin1         # >> Call Site 121 <<
	.uleb128 .Ltmp504-.Ltmp503              #   Call between .Ltmp503 and .Ltmp504
	.uleb128 .Ltmp505-.Lfunc_begin1         #     jumps to .Ltmp505
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp504-.Lfunc_begin1         # >> Call Site 122 <<
	.uleb128 .Ltmp455-.Ltmp504              #   Call between .Ltmp504 and .Ltmp455
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp455-.Lfunc_begin1         # >> Call Site 123 <<
	.uleb128 .Ltmp456-.Ltmp455              #   Call between .Ltmp455 and .Ltmp456
	.uleb128 .Ltmp457-.Lfunc_begin1         #     jumps to .Ltmp457
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp456-.Lfunc_begin1         # >> Call Site 124 <<
	.uleb128 .Ltmp449-.Ltmp456              #   Call between .Ltmp456 and .Ltmp449
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp449-.Lfunc_begin1         # >> Call Site 125 <<
	.uleb128 .Ltmp450-.Ltmp449              #   Call between .Ltmp449 and .Ltmp450
	.uleb128 .Ltmp451-.Lfunc_begin1         #     jumps to .Ltmp451
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp450-.Lfunc_begin1         # >> Call Site 126 <<
	.uleb128 .Ltmp368-.Ltmp450              #   Call between .Ltmp450 and .Ltmp368
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp368-.Lfunc_begin1         # >> Call Site 127 <<
	.uleb128 .Ltmp369-.Ltmp368              #   Call between .Ltmp368 and .Ltmp369
	.uleb128 .Ltmp370-.Lfunc_begin1         #     jumps to .Ltmp370
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp369-.Lfunc_begin1         # >> Call Site 128 <<
	.uleb128 .Ltmp374-.Ltmp369              #   Call between .Ltmp369 and .Ltmp374
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp374-.Lfunc_begin1         # >> Call Site 129 <<
	.uleb128 .Ltmp375-.Ltmp374              #   Call between .Ltmp374 and .Ltmp375
	.uleb128 .Ltmp376-.Lfunc_begin1         #     jumps to .Ltmp376
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp375-.Lfunc_begin1         # >> Call Site 130 <<
	.uleb128 .Ltmp515-.Ltmp375              #   Call between .Ltmp375 and .Ltmp515
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp515-.Lfunc_begin1         # >> Call Site 131 <<
	.uleb128 .Ltmp516-.Ltmp515              #   Call between .Ltmp515 and .Ltmp516
	.uleb128 .Ltmp517-.Lfunc_begin1         #     jumps to .Ltmp517
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp518-.Lfunc_begin1         # >> Call Site 132 <<
	.uleb128 .Ltmp519-.Ltmp518              #   Call between .Ltmp518 and .Ltmp519
	.uleb128 .Ltmp520-.Lfunc_begin1         #     jumps to .Ltmp520
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp519-.Lfunc_begin1         # >> Call Site 133 <<
	.uleb128 .Ltmp461-.Ltmp519              #   Call between .Ltmp519 and .Ltmp461
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp461-.Lfunc_begin1         # >> Call Site 134 <<
	.uleb128 .Ltmp462-.Ltmp461              #   Call between .Ltmp461 and .Ltmp462
	.uleb128 .Ltmp463-.Lfunc_begin1         #     jumps to .Ltmp463
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp464-.Lfunc_begin1         # >> Call Site 135 <<
	.uleb128 .Ltmp465-.Ltmp464              #   Call between .Ltmp464 and .Ltmp465
	.uleb128 .Ltmp466-.Lfunc_begin1         #     jumps to .Ltmp466
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp465-.Lfunc_begin1         # >> Call Site 136 <<
	.uleb128 .Ltmp380-.Ltmp465              #   Call between .Ltmp465 and .Ltmp380
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp380-.Lfunc_begin1         # >> Call Site 137 <<
	.uleb128 .Ltmp381-.Ltmp380              #   Call between .Ltmp380 and .Ltmp381
	.uleb128 .Ltmp382-.Lfunc_begin1         #     jumps to .Ltmp382
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp383-.Lfunc_begin1         # >> Call Site 138 <<
	.uleb128 .Ltmp384-.Ltmp383              #   Call between .Ltmp383 and .Ltmp384
	.uleb128 .Ltmp385-.Lfunc_begin1         #     jumps to .Ltmp385
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp384-.Lfunc_begin1         # >> Call Site 139 <<
	.uleb128 .Ltmp557-.Ltmp384              #   Call between .Ltmp384 and .Ltmp557
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp557-.Lfunc_begin1         # >> Call Site 140 <<
	.uleb128 .Ltmp558-.Ltmp557              #   Call between .Ltmp557 and .Ltmp558
	.uleb128 .Ltmp559-.Lfunc_begin1         #     jumps to .Ltmp559
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp558-.Lfunc_begin1         # >> Call Site 141 <<
	.uleb128 .Ltmp563-.Ltmp558              #   Call between .Ltmp558 and .Ltmp563
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp563-.Lfunc_begin1         # >> Call Site 142 <<
	.uleb128 .Ltmp564-.Ltmp563              #   Call between .Ltmp563 and .Ltmp564
	.uleb128 .Ltmp565-.Lfunc_begin1         #     jumps to .Ltmp565
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp564-.Lfunc_begin1         # >> Call Site 143 <<
	.uleb128 .Ltmp530-.Ltmp564              #   Call between .Ltmp564 and .Ltmp530
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp530-.Lfunc_begin1         # >> Call Site 144 <<
	.uleb128 .Ltmp531-.Ltmp530              #   Call between .Ltmp530 and .Ltmp531
	.uleb128 .Ltmp532-.Lfunc_begin1         #     jumps to .Ltmp532
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp531-.Lfunc_begin1         # >> Call Site 145 <<
	.uleb128 .Ltmp536-.Ltmp531              #   Call between .Ltmp531 and .Ltmp536
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp536-.Lfunc_begin1         # >> Call Site 146 <<
	.uleb128 .Ltmp537-.Ltmp536              #   Call between .Ltmp536 and .Ltmp537
	.uleb128 .Ltmp538-.Lfunc_begin1         #     jumps to .Ltmp538
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp537-.Lfunc_begin1         # >> Call Site 147 <<
	.uleb128 .Ltmp476-.Ltmp537              #   Call between .Ltmp537 and .Ltmp476
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp476-.Lfunc_begin1         # >> Call Site 148 <<
	.uleb128 .Ltmp477-.Ltmp476              #   Call between .Ltmp476 and .Ltmp477
	.uleb128 .Ltmp478-.Lfunc_begin1         #     jumps to .Ltmp478
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp477-.Lfunc_begin1         # >> Call Site 149 <<
	.uleb128 .Ltmp482-.Ltmp477              #   Call between .Ltmp477 and .Ltmp482
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp482-.Lfunc_begin1         # >> Call Site 150 <<
	.uleb128 .Ltmp483-.Ltmp482              #   Call between .Ltmp482 and .Ltmp483
	.uleb128 .Ltmp484-.Lfunc_begin1         #     jumps to .Ltmp484
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp483-.Lfunc_begin1         # >> Call Site 151 <<
	.uleb128 .Ltmp422-.Ltmp483              #   Call between .Ltmp483 and .Ltmp422
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp422-.Lfunc_begin1         # >> Call Site 152 <<
	.uleb128 .Ltmp423-.Ltmp422              #   Call between .Ltmp422 and .Ltmp423
	.uleb128 .Ltmp424-.Lfunc_begin1         #     jumps to .Ltmp424
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp423-.Lfunc_begin1         # >> Call Site 153 <<
	.uleb128 .Ltmp428-.Ltmp423              #   Call between .Ltmp423 and .Ltmp428
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp428-.Lfunc_begin1         # >> Call Site 154 <<
	.uleb128 .Ltmp429-.Ltmp428              #   Call between .Ltmp428 and .Ltmp429
	.uleb128 .Ltmp430-.Lfunc_begin1         #     jumps to .Ltmp430
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp429-.Lfunc_begin1         # >> Call Site 155 <<
	.uleb128 .Ltmp395-.Ltmp429              #   Call between .Ltmp429 and .Ltmp395
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp395-.Lfunc_begin1         # >> Call Site 156 <<
	.uleb128 .Ltmp396-.Ltmp395              #   Call between .Ltmp395 and .Ltmp396
	.uleb128 .Ltmp397-.Lfunc_begin1         #     jumps to .Ltmp397
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp396-.Lfunc_begin1         # >> Call Site 157 <<
	.uleb128 .Ltmp401-.Ltmp396              #   Call between .Ltmp396 and .Ltmp401
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp401-.Lfunc_begin1         # >> Call Site 158 <<
	.uleb128 .Ltmp402-.Ltmp401              #   Call between .Ltmp401 and .Ltmp402
	.uleb128 .Ltmp403-.Lfunc_begin1         #     jumps to .Ltmp403
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp402-.Lfunc_begin1         # >> Call Site 159 <<
	.uleb128 .Ltmp569-.Ltmp402              #   Call between .Ltmp402 and .Ltmp569
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp569-.Lfunc_begin1         # >> Call Site 160 <<
	.uleb128 .Ltmp570-.Ltmp569              #   Call between .Ltmp569 and .Ltmp570
	.uleb128 .Ltmp571-.Lfunc_begin1         #     jumps to .Ltmp571
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp572-.Lfunc_begin1         # >> Call Site 161 <<
	.uleb128 .Ltmp573-.Ltmp572              #   Call between .Ltmp572 and .Ltmp573
	.uleb128 .Ltmp574-.Lfunc_begin1         #     jumps to .Ltmp574
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp573-.Lfunc_begin1         # >> Call Site 162 <<
	.uleb128 .Ltmp542-.Ltmp573              #   Call between .Ltmp573 and .Ltmp542
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp542-.Lfunc_begin1         # >> Call Site 163 <<
	.uleb128 .Ltmp543-.Ltmp542              #   Call between .Ltmp542 and .Ltmp543
	.uleb128 .Ltmp544-.Lfunc_begin1         #     jumps to .Ltmp544
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp545-.Lfunc_begin1         # >> Call Site 164 <<
	.uleb128 .Ltmp546-.Ltmp545              #   Call between .Ltmp545 and .Ltmp546
	.uleb128 .Ltmp547-.Lfunc_begin1         #     jumps to .Ltmp547
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp546-.Lfunc_begin1         # >> Call Site 165 <<
	.uleb128 .Ltmp488-.Ltmp546              #   Call between .Ltmp546 and .Ltmp488
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp488-.Lfunc_begin1         # >> Call Site 166 <<
	.uleb128 .Ltmp489-.Ltmp488              #   Call between .Ltmp488 and .Ltmp489
	.uleb128 .Ltmp490-.Lfunc_begin1         #     jumps to .Ltmp490
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp491-.Lfunc_begin1         # >> Call Site 167 <<
	.uleb128 .Ltmp492-.Ltmp491              #   Call between .Ltmp491 and .Ltmp492
	.uleb128 .Ltmp493-.Lfunc_begin1         #     jumps to .Ltmp493
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp492-.Lfunc_begin1         # >> Call Site 168 <<
	.uleb128 .Ltmp434-.Ltmp492              #   Call between .Ltmp492 and .Ltmp434
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp434-.Lfunc_begin1         # >> Call Site 169 <<
	.uleb128 .Ltmp435-.Ltmp434              #   Call between .Ltmp434 and .Ltmp435
	.uleb128 .Ltmp436-.Lfunc_begin1         #     jumps to .Ltmp436
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp437-.Lfunc_begin1         # >> Call Site 170 <<
	.uleb128 .Ltmp438-.Ltmp437              #   Call between .Ltmp437 and .Ltmp438
	.uleb128 .Ltmp439-.Lfunc_begin1         #     jumps to .Ltmp439
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp438-.Lfunc_begin1         # >> Call Site 171 <<
	.uleb128 .Ltmp407-.Ltmp438              #   Call between .Ltmp438 and .Ltmp407
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp407-.Lfunc_begin1         # >> Call Site 172 <<
	.uleb128 .Ltmp408-.Ltmp407              #   Call between .Ltmp407 and .Ltmp408
	.uleb128 .Ltmp409-.Lfunc_begin1         #     jumps to .Ltmp409
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp410-.Lfunc_begin1         # >> Call Site 173 <<
	.uleb128 .Ltmp411-.Ltmp410              #   Call between .Ltmp410 and .Ltmp411
	.uleb128 .Ltmp412-.Lfunc_begin1         #     jumps to .Ltmp412
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp411-.Lfunc_begin1         # >> Call Site 174 <<
	.uleb128 .Lfunc_end1-.Ltmp411           #   Call between .Ltmp411 and .Lfunc_end1
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
	.section	.text._ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv,"axG",@progbits,_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv,comdat
	.weak	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv # -- Begin function _ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv
	.p2align	5
	.type	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv,@function
_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv: # @_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv
	.cfi_startproc
# %bb.0:
	ldptr.d	$a2, $a0, 4992
	ori	$a1, $zero, 624
	bltu	$a2, $a1, .LBB4_6
# %bb.1:                                # %vector.ph
	ld.d	$a1, $a0, 0
	move	$a2, $zero
	vinsgr2vr.d	$vr5, $a1, 1
	lu12i.w	$a1, -524288
	vreplgr2vr.d	$vr0, $a1
	lu12i.w	$a1, 524287
	ori	$a1, $a1, 4094
	vreplgr2vr.d	$vr1, $a1
	ori	$a3, $zero, 3176
	vrepli.d	$vr2, 1
	vrepli.b	$vr3, -1
	lu12i.w	$a1, -421749
	ori	$a1, $a1, 223
	lu32i.d	$a1, 0
	vreplgr2vr.d	$vr4, $a1
	ori	$a4, $zero, 1808
	.p2align	4, , 16
.LBB4_2:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vori.b	$vr6, $vr5, 0
	add.d	$a5, $a0, $a2
	vld	$vr5, $a5, 8
	vshuf4i.d	$vr6, $vr5, 9
	vand.v	$vr6, $vr6, $vr0
	vldx	$vr7, $a5, $a3
	vand.v	$vr8, $vr5, $vr1
	vor.v	$vr6, $vr8, $vr6
	vsrli.d	$vr6, $vr6, 1
	vxor.v	$vr6, $vr6, $vr7
	vand.v	$vr7, $vr5, $vr2
	vseqi.d	$vr7, $vr7, 0
	vxor.v	$vr7, $vr7, $vr3
	vand.v	$vr7, $vr7, $vr4
	vxor.v	$vr6, $vr6, $vr7
	vstx	$vr6, $a0, $a2
	addi.d	$a2, $a2, 16
	bne	$a2, $a4, .LBB4_2
# %bb.3:                                # %vector.ph11
	ld.d	$a2, $a0, 1816
	vpickve2gr.d	$a3, $vr5, 1
	bstrpick.d	$a4, $a2, 30, 1
	ldptr.d	$a5, $a0, 4984
	slli.d	$a4, $a4, 1
	bstrins.d	$a3, $a4, 30, 0
	srli.d	$a3, $a3, 1
	xor	$a3, $a3, $a5
	andi	$a4, $a2, 1
	sub.d	$a4, $zero, $a4
	and	$a4, $a4, $a1
	xor	$a3, $a3, $a4
	st.d	$a3, $a0, 1808
	vinsgr2vr.d	$vr5, $a2, 1
	lu12i.w	$a2, -1
	ori	$a2, $a2, 928
	lu12i.w	$a5, 1
	ori	$a3, $a5, 896
	ori	$a4, $zero, 3168
	ori	$a5, $a5, 888
	.p2align	4, , 16
.LBB4_4:                                # %vector.body12
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
	bnez	$a2, .LBB4_4
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
.LBB4_6:
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
.Lfunc_end4:
	.size	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv, .Lfunc_end4-_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv
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
	blt	$s6, $a0, .LBB5_23
# %bb.1:                                # %.lr.ph
	move	$s0, $a2
	addi.d	$s2, $fp, 4
	addi.w	$a0, $zero, -4
	sub.d	$s3, $a0, $fp
	lu52i.d	$s4, $a0, 2047
	ori	$s5, $zero, 64
	b	.LBB5_3
	.p2align	4, , 16
.LBB5_2:                                # %_ZSt27__unguarded_partition_pivotIPfN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit
                                        #   in Loop: Header=BB5_3 Depth=1
	move	$a0, $s1
	move	$a2, $s0
	move	$a3, $zero
	pcaddu18i	$ra, %call36(_ZSt16__introsort_loopIPflN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_)
	jirl	$ra, $ra, 0
	move	$a1, $s1
	bge	$s5, $s6, .LBB5_23
.LBB5_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_16 Depth 2
                                        #       Child Loop BB5_17 Depth 3
                                        #       Child Loop BB5_19 Depth 3
	beqz	$s0, .LBB5_22
# %bb.4:                                #   in Loop: Header=BB5_3 Depth=1
	srli.d	$a0, $s6, 1
	and	$a0, $a0, $s4
	fld.s	$fa1, $fp, 4
	fldx.s	$fa2, $fp, $a0
	fld.s	$fa0, $a1, -4
	fcmp.cule.s	$fcc0, $fa2, $fa1
	add.d	$a0, $fp, $a0
	bcnez	$fcc0, .LBB5_7
# %bb.5:                                #   in Loop: Header=BB5_3 Depth=1
	fcmp.cule.s	$fcc0, $fa0, $fa2
	bcnez	$fcc0, .LBB5_9
# %bb.6:                                #   in Loop: Header=BB5_3 Depth=1
	fld.s	$fa0, $fp, 0
	fst.s	$fa2, $fp, 0
	fst.s	$fa0, $a0, 0
	b	.LBB5_15
	.p2align	4, , 16
.LBB5_7:                                #   in Loop: Header=BB5_3 Depth=1
	fcmp.cule.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB5_11
# %bb.8:                                #   in Loop: Header=BB5_3 Depth=1
	fld.s	$fa0, $fp, 0
	fst.s	$fa1, $fp, 0
	fst.s	$fa0, $fp, 4
	b	.LBB5_15
	.p2align	4, , 16
.LBB5_9:                                #   in Loop: Header=BB5_3 Depth=1
	fld.s	$fa2, $fp, 0
	fcmp.cule.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB5_13
# %bb.10:                               #   in Loop: Header=BB5_3 Depth=1
	fst.s	$fa0, $fp, 0
	fst.s	$fa2, $a1, -4
	b	.LBB5_15
	.p2align	4, , 16
.LBB5_11:                               #   in Loop: Header=BB5_3 Depth=1
	fld.s	$fa1, $fp, 0
	fcmp.cule.s	$fcc0, $fa0, $fa2
	bcnez	$fcc0, .LBB5_14
# %bb.12:                               #   in Loop: Header=BB5_3 Depth=1
	fst.s	$fa0, $fp, 0
	fst.s	$fa1, $a1, -4
	b	.LBB5_15
.LBB5_13:                               #   in Loop: Header=BB5_3 Depth=1
	fst.s	$fa1, $fp, 0
	fst.s	$fa2, $fp, 4
	b	.LBB5_15
.LBB5_14:                               #   in Loop: Header=BB5_3 Depth=1
	fst.s	$fa2, $fp, 0
	fst.s	$fa1, $a0, 0
	.p2align	4, , 16
.LBB5_15:                               # %_ZSt22__move_median_to_firstIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader
                                        #   in Loop: Header=BB5_3 Depth=1
	addi.d	$s0, $s0, -1
	move	$a2, $a1
	move	$a0, $s2
	.p2align	4, , 16
.LBB5_16:                               # %_ZSt22__move_median_to_firstIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i
                                        #   Parent Loop BB5_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_17 Depth 3
                                        #       Child Loop BB5_19 Depth 3
	fld.s	$fa0, $fp, 0
	add.d	$s6, $s3, $a0
	.p2align	4, , 16
.LBB5_17:                               #   Parent Loop BB5_3 Depth=1
                                        #     Parent Loop BB5_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.s	$fa1, $a0, 0
	addi.d	$a0, $a0, 4
	fcmp.clt.s	$fcc0, $fa1, $fa0
	addi.d	$s6, $s6, 4
	bcnez	$fcc0, .LBB5_17
# %bb.18:                               # %.preheader.i.i.preheader
                                        #   in Loop: Header=BB5_16 Depth=2
	addi.d	$s1, $a0, -4
	.p2align	4, , 16
.LBB5_19:                               # %.preheader.i.i
                                        #   Parent Loop BB5_3 Depth=1
                                        #     Parent Loop BB5_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.s	$fa2, $a2, -4
	fcmp.clt.s	$fcc0, $fa0, $fa2
	addi.d	$a2, $a2, -4
	bcnez	$fcc0, .LBB5_19
# %bb.20:                               #   in Loop: Header=BB5_16 Depth=2
	bgeu	$s1, $a2, .LBB5_2
# %bb.21:                               #   in Loop: Header=BB5_16 Depth=2
	fst.s	$fa2, $s1, 0
	fst.s	$fa1, $a2, 0
	b	.LBB5_16
.LBB5_22:
	st.b	$zero, $sp, 22
	st.b	$zero, $sp, 23
	addi.d	$a2, $sp, 23
	move	$a0, $fp
	move	$s0, $a1
	pcaddu18i	$ra, %call36(_ZSt11__make_heapIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 22
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZSt11__sort_heapIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_)
	jirl	$ra, $ra, 0
.LBB5_23:                               # %.loopexit
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
.Lfunc_end5:
	.size	_ZSt16__introsort_loopIPflN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_, .Lfunc_end5-_ZSt16__introsort_loopIPflN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_
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
	blt	$a0, $a1, .LBB6_2
# %bb.1:
	addi.d	$s1, $s0, 4
	ori	$s2, $zero, 4
	ori	$s3, $zero, 5
	ori	$s4, $zero, 64
	move	$s5, $s1
	move	$s6, $s0
	b	.LBB6_18
.LBB6_2:
	beq	$s0, $fp, .LBB6_25
# %bb.3:
	addi.d	$a2, $s0, 4
	beq	$a2, $fp, .LBB6_25
# %bb.4:                                # %.lr.ph.i17.preheader
	ori	$s1, $zero, 2
	ori	$s2, $zero, 4
	move	$s3, $s0
	b	.LBB6_9
	.p2align	4, , 16
.LBB6_5:                                #   in Loop: Header=BB6_9 Depth=1
	sub.d	$a2, $s3, $s0
	srai.d	$a0, $a2, 2
	blt	$a0, $s1, .LBB6_13
# %bb.6:                                #   in Loop: Header=BB6_9 Depth=1
	slli.d	$a0, $a0, 2
	sub.d	$a0, $a1, $a0
	addi.d	$a0, $a0, 8
	move	$a1, $s0
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
.LBB6_7:                                # %_ZSt13move_backwardIPfS0_ET0_T_S2_S1_.exit.i20
                                        #   in Loop: Header=BB6_9 Depth=1
	move	$a0, $s0
.LBB6_8:                                # %_ZSt13move_backwardIPfS0_ET0_T_S2_S1_.exit.i20
                                        #   in Loop: Header=BB6_9 Depth=1
	addi.d	$a2, $s3, 4
	fst.s	$fs0, $a0, 0
	beq	$a2, $fp, .LBB6_25
.LBB6_9:                                # %.lr.ph.i17
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_12 Depth 2
	move	$a1, $s3
	fld.s	$fs0, $s3, 4
	fld.s	$fa0, $s0, 0
	fcmp.cule.s	$fcc0, $fa0, $fs0
	move	$s3, $a2
	bceqz	$fcc0, .LBB6_5
# %bb.10:                               #   in Loop: Header=BB6_9 Depth=1
	fld.s	$fa0, $a1, 0
	fcmp.cule.s	$fcc0, $fa0, $fs0
	move	$a0, $s3
	bcnez	$fcc0, .LBB6_8
# %bb.11:                               # %.lr.ph.i.i24.preheader
                                        #   in Loop: Header=BB6_9 Depth=1
	move	$a0, $s3
	.p2align	4, , 16
.LBB6_12:                               # %.lr.ph.i.i24
                                        #   Parent Loop BB6_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fst.s	$fa0, $a0, 0
	fld.s	$fa0, $a0, -8
	fcmp.clt.s	$fcc0, $fs0, $fa0
	addi.d	$a0, $a0, -4
	bcnez	$fcc0, .LBB6_12
	b	.LBB6_8
.LBB6_13:                               #   in Loop: Header=BB6_9 Depth=1
	move	$a0, $s0
	bne	$a2, $s2, .LBB6_8
# %bb.14:                               #   in Loop: Header=BB6_9 Depth=1
	fst.s	$fa0, $a1, 4
	b	.LBB6_7
.LBB6_15:                               #   in Loop: Header=BB6_18 Depth=1
	fst.s	$fa0, $a0, 4
	.p2align	4, , 16
.LBB6_16:                               # %_ZSt13move_backwardIPfS0_ET0_T_S2_S1_.exit.i
                                        #   in Loop: Header=BB6_18 Depth=1
	move	$a0, $s0
.LBB6_17:                               # %_ZSt13move_backwardIPfS0_ET0_T_S2_S1_.exit.i
                                        #   in Loop: Header=BB6_18 Depth=1
	fst.s	$fs0, $a0, 0
	addi.d	$s2, $s2, 4
	addi.d	$s5, $s5, 4
	beq	$s2, $s4, .LBB6_24
.LBB6_18:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_23 Depth 2
	fldx.s	$fs0, $s0, $s2
	fld.s	$fa0, $s0, 0
	move	$a0, $s6
	fcmp.cule.s	$fcc0, $fa0, $fs0
	add.d	$s6, $s0, $s2
	bcnez	$fcc0, .LBB6_21
# %bb.19:                               #   in Loop: Header=BB6_18 Depth=1
	bltu	$s2, $s3, .LBB6_15
# %bb.20:                               #   in Loop: Header=BB6_18 Depth=1
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
	b	.LBB6_16
	.p2align	4, , 16
.LBB6_21:                               #   in Loop: Header=BB6_18 Depth=1
	fld.s	$fa0, $a0, 0
	fcmp.cule.s	$fcc0, $fa0, $fs0
	move	$a0, $s6
	bcnez	$fcc0, .LBB6_17
# %bb.22:                               # %.lr.ph.i.i.preheader
                                        #   in Loop: Header=BB6_18 Depth=1
	move	$a0, $s5
	.p2align	4, , 16
.LBB6_23:                               # %.lr.ph.i.i
                                        #   Parent Loop BB6_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fst.s	$fa0, $a0, 0
	fld.s	$fa0, $a0, -8
	fcmp.clt.s	$fcc0, $fs0, $fa0
	addi.d	$a0, $a0, -4
	bcnez	$fcc0, .LBB6_23
	b	.LBB6_17
.LBB6_24:                               # %_ZSt16__insertion_sortIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit
	addi.d	$a0, $s0, 64
	bne	$a0, $fp, .LBB6_27
.LBB6_25:                               # %_ZSt26__unguarded_insertion_sortIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit
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
.LBB6_26:                               # %_ZSt25__unguarded_linear_insertIPfN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i
                                        #   in Loop: Header=BB6_27 Depth=1
	addi.d	$a0, $a0, 4
	fst.s	$fa0, $a1, 0
	beq	$a0, $fp, .LBB6_25
.LBB6_27:                               # %.lr.ph.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_29 Depth 2
	fld.s	$fa0, $a0, 0
	fld.s	$fa1, $a0, -4
	fcmp.cule.s	$fcc0, $fa1, $fa0
	move	$a1, $a0
	bcnez	$fcc0, .LBB6_26
# %bb.28:                               # %.lr.ph.i.i12.preheader
                                        #   in Loop: Header=BB6_27 Depth=1
	move	$a1, $a0
	.p2align	4, , 16
.LBB6_29:                               # %.lr.ph.i.i12
                                        #   Parent Loop BB6_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fst.s	$fa1, $a1, 0
	fld.s	$fa1, $a1, -8
	fcmp.clt.s	$fcc0, $fa0, $fa1
	addi.d	$a1, $a1, -4
	bcnez	$fcc0, .LBB6_29
	b	.LBB6_26
.Lfunc_end6:
	.size	_ZSt22__final_insertion_sortIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_, .Lfunc_end6-_ZSt22__final_insertion_sortIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt11__sort_heapIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_,"axG",@progbits,_ZSt11__sort_heapIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_,comdat
	.weak	_ZSt11__sort_heapIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_ # -- Begin function _ZSt11__sort_heapIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_
	.p2align	5
	.type	_ZSt11__sort_heapIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_,@function
_ZSt11__sort_heapIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_: # @_ZSt11__sort_heapIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_
	.cfi_startproc
# %bb.0:
	sub.d	$a2, $a1, $a0
	ori	$a3, $zero, 5
	blt	$a2, $a3, .LBB7_14
# %bb.1:                                # %.lr.ph.preheader
	ori	$a2, $zero, 3
	ori	$a3, $zero, 1
	ori	$a4, $zero, 4
	b	.LBB7_4
	.p2align	4, , 16
.LBB7_2:                                #   in Loop: Header=BB7_4 Depth=1
	move	$a6, $zero
.LBB7_3:                                # %_ZSt10__pop_heapIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit
                                        #   in Loop: Header=BB7_4 Depth=1
	slli.d	$a6, $a6, 2
	fstx.s	$fa0, $a0, $a6
	bge	$a4, $a5, .LBB7_14
.LBB7_4:                                # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_6 Depth 2
                                        #     Child Loop BB7_12 Depth 2
	move	$a6, $a1
	fld.s	$fa0, $a1, -4
	fld.s	$fa1, $a0, 0
	addi.d	$a1, $a1, -4
	sub.d	$a5, $a1, $a0
	srai.d	$a7, $a5, 2
	fst.s	$fa1, $a6, -4
	blt	$a7, $a2, .LBB7_8
# %bb.5:                                # %.lr.ph.i.i.preheader
                                        #   in Loop: Header=BB7_4 Depth=1
	move	$t0, $zero
	addi.d	$a6, $a7, -1
	srli.d	$t1, $a6, 63
	add.d	$a6, $a6, $t1
	srai.d	$t1, $a6, 1
	.p2align	4, , 16
.LBB7_6:                                # %.lr.ph.i.i
                                        #   Parent Loop BB7_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$a6, $t0, 1
	addi.d	$t2, $a6, 2
	slli.d	$t3, $t2, 2
	alsl.d	$t4, $t0, $a0, 3
	fldx.s	$fa1, $a0, $t3
	fld.s	$fa2, $t4, 4
	fcmp.clt.s	$fcc0, $fa1, $fa2
	addi.d	$a6, $a6, 1
	movcf2gr	$t3, $fcc0
	masknez	$t2, $t2, $t3
	maskeqz	$a6, $a6, $t3
	or	$a6, $a6, $t2
	slli.d	$t2, $a6, 2
	fldx.s	$fa1, $a0, $t2
	slli.d	$t0, $t0, 2
	fstx.s	$fa1, $a0, $t0
	move	$t0, $a6
	blt	$a6, $t1, .LBB7_6
# %bb.7:                                # %._crit_edge.i.i
                                        #   in Loop: Header=BB7_4 Depth=1
	andi	$t0, $a5, 4
	beqz	$t0, .LBB7_9
	b	.LBB7_11
	.p2align	4, , 16
.LBB7_8:                                #   in Loop: Header=BB7_4 Depth=1
	move	$a6, $zero
	andi	$t0, $a5, 4
	bnez	$t0, .LBB7_11
.LBB7_9:                                #   in Loop: Header=BB7_4 Depth=1
	addi.d	$a7, $a7, -2
	srai.d	$a7, $a7, 1
	bne	$a6, $a7, .LBB7_11
# %bb.10:                               # %.thread.i
                                        #   in Loop: Header=BB7_4 Depth=1
	slli.d	$a7, $a6, 1
	addi.d	$a7, $a7, 1
	slli.d	$t0, $a7, 2
	fldx.s	$fa1, $a0, $t0
	slli.d	$a6, $a6, 2
	fstx.s	$fa1, $a0, $a6
	move	$a6, $a7
	b	.LBB7_12
	.p2align	4, , 16
.LBB7_11:                               #   in Loop: Header=BB7_4 Depth=1
	beqz	$a6, .LBB7_2
	.p2align	4, , 16
.LBB7_12:                               # %.lr.ph.i.i.i
                                        #   Parent Loop BB7_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a7, $a6, -1
	srli.d	$t0, $a7, 1
	slli.d	$t1, $t0, 2
	fldx.s	$fa1, $a0, $t1
	fcmp.cule.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB7_3
# %bb.13:                               #   in Loop: Header=BB7_12 Depth=2
	slli.d	$a6, $a6, 2
	fstx.s	$fa1, $a0, $a6
	move	$a6, $t0
	bltu	$a3, $a7, .LBB7_12
	b	.LBB7_2
.LBB7_14:                               # %._crit_edge
	ret
.Lfunc_end7:
	.size	_ZSt11__sort_heapIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_, .Lfunc_end7-_ZSt11__sort_heapIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt11__make_heapIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_,"axG",@progbits,_ZSt11__make_heapIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_,comdat
	.weak	_ZSt11__make_heapIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_ # -- Begin function _ZSt11__make_heapIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_
	.p2align	5
	.type	_ZSt11__make_heapIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_,@function
_ZSt11__make_heapIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_: # @_ZSt11__make_heapIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_
	.cfi_startproc
# %bb.0:
	sub.d	$a4, $a1, $a0
	srai.d	$a2, $a4, 2
	ori	$a1, $zero, 2
	bge	$a2, $a1, .LBB8_2
.LBB8_1:                                # %.loopexit
	ret
.LBB8_2:
	addi.d	$a1, $a2, -2
	srli.d	$a1, $a1, 1
	addi.d	$a2, $a2, -1
	srli.d	$a3, $a2, 1
	andi	$a4, $a4, 4
	alsl.d	$a5, $a2, $a0, 2
	alsl.d	$a6, $a1, $a0, 2
	move	$t0, $a1
	b	.LBB8_5
	.p2align	4, , 16
.LBB8_3:                                #   in Loop: Header=BB8_5 Depth=1
	move	$t1, $t0
.LBB8_4:                                # %_ZSt13__adjust_heapIPflfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit
                                        #   in Loop: Header=BB8_5 Depth=1
	slli.d	$t0, $t1, 2
	fstx.s	$fa0, $a0, $t0
	addi.d	$t0, $a7, -1
	beqz	$a7, .LBB8_1
.LBB8_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_7 Depth 2
                                        #     Child Loop BB8_12 Depth 2
	move	$a7, $t0
	slli.d	$t0, $t0, 2
	fldx.s	$fa0, $a0, $t0
	move	$t0, $a7
	bge	$a7, $a3, .LBB8_8
# %bb.6:                                # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB8_5 Depth=1
	move	$t1, $a7
	.p2align	4, , 16
.LBB8_7:                                # %.lr.ph.i
                                        #   Parent Loop BB8_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$t0, $t1, 1
	addi.d	$t2, $t0, 2
	slli.d	$t3, $t2, 2
	alsl.d	$t4, $t1, $a0, 3
	fldx.s	$fa1, $a0, $t3
	fld.s	$fa2, $t4, 4
	fcmp.clt.s	$fcc0, $fa1, $fa2
	addi.d	$t0, $t0, 1
	movcf2gr	$t3, $fcc0
	masknez	$t2, $t2, $t3
	maskeqz	$t0, $t0, $t3
	or	$t0, $t0, $t2
	slli.d	$t2, $t0, 2
	fldx.s	$fa1, $a0, $t2
	slli.d	$t1, $t1, 2
	fstx.s	$fa1, $a0, $t1
	move	$t1, $t0
	blt	$t0, $a3, .LBB8_7
.LBB8_8:                                # %._crit_edge.i
                                        #   in Loop: Header=BB8_5 Depth=1
	bnez	$a4, .LBB8_11
# %bb.9:                                # %._crit_edge.i
                                        #   in Loop: Header=BB8_5 Depth=1
	bne	$t0, $a1, .LBB8_11
# %bb.10:                               #   in Loop: Header=BB8_5 Depth=1
	fld.s	$fa1, $a5, 0
	fst.s	$fa1, $a6, 0
	move	$t0, $a2
.LBB8_11:                               #   in Loop: Header=BB8_5 Depth=1
	bge	$a7, $t0, .LBB8_3
	.p2align	4, , 16
.LBB8_12:                               # %.lr.ph.i.i
                                        #   Parent Loop BB8_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$t1, $t0, -1
	srli.d	$t2, $t1, 63
	add.d	$t1, $t1, $t2
	srai.d	$t1, $t1, 1
	slli.d	$t2, $t1, 2
	fldx.s	$fa1, $a0, $t2
	fcmp.cule.s	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB8_3
# %bb.13:                               #   in Loop: Header=BB8_12 Depth=2
	slli.d	$t0, $t0, 2
	fstx.s	$fa1, $a0, $t0
	move	$t0, $t1
	blt	$a7, $t1, .LBB8_12
	b	.LBB8_4
.Lfunc_end8:
	.size	_ZSt11__make_heapIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_, .Lfunc_end8-_ZSt11__make_heapIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_
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
.LBB9_1:                                # =>This Inner Loop Header: Depth=1
	add.d	$a3, $a0, $a1
	fldx.s	$fa1, $a3, $a2
	addi.d	$a1, $a1, 4
	fmax.s	$fa0, $fa0, $fa1
	bnez	$a1, .LBB9_1
# %bb.2:                                # %"_ZSt10__invoke_rIfRZ4mainE3$_0JPfjEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
                                        # kill: def $f0 killed $f0 killed $vr0
	ret
.Lfunc_end9:
	.size	_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_0E9_M_invokeERKSt9_Any_dataOS0_Oj, .Lfunc_end9-_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_0E9_M_invokeERKSt9_Any_dataOS0_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFfPfjEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB10_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB10_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB10_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE3$_0)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE3$_0)
.LBB10_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end10:
	.size	_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end10-_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
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
.LBB11_1:                               # %vector.body
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
	bnez	$a7, .LBB11_3
# %bb.2:                                # %vector.body
                                        #   in Loop: Header=BB11_1 Depth=1
	bne	$a5, $a4, .LBB11_1
.LBB11_3:                               # %middle.block
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
	beqz	$a2, .LBB11_5
	.p2align	4, , 16
.LBB11_4:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a2, $a0, $a6
	fldx.s	$fa1, $a2, $a1
	addi.d	$a6, $a6, 4
	fmax.s	$fa0, $fa0, $fa1
	bnez	$a6, .LBB11_4
.LBB11_5:                               # %"_ZSt10__invoke_rIfRZ4mainE3$_1JPfjEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end11:
	.size	_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_1E9_M_invokeERKSt9_Any_dataOS0_Oj, .Lfunc_end11-_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_1E9_M_invokeERKSt9_Any_dataOS0_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFfPfjEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB12_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB12_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB12_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE3$_1)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE3$_1)
.LBB12_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end12:
	.size	_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end12-_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZNSt17_Function_handlerIFfPfjEZ4mainE3$_2E9_M_invokeERKSt9_Any_dataOS0_Oj
.LCPI13_0:
	.word	0x00800000                      # float 1.17549435E-38
	.text
	.p2align	5
	.type	_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_2E9_M_invokeERKSt9_Any_dataOS0_Oj,@function
_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_2E9_M_invokeERKSt9_Any_dataOS0_Oj: # @"_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_2E9_M_invokeERKSt9_Any_dataOS0_Oj"
# %bb.0:
	ld.d	$a0, $a1, 0
	pcalau12i	$a1, %pc_hi20(.LCPI13_0)
	fld.s	$fa0, $a1, %pc_lo12(.LCPI13_0)
	lu12i.w	$a1, -1
	lu12i.w	$a2, 1
	.p2align	4, , 16
.LBB13_1:                               # =>This Inner Loop Header: Depth=1
	add.d	$a3, $a0, $a1
	fldx.s	$fa1, $a3, $a2
	addi.d	$a1, $a1, 4
	fmax.s	$fa0, $fa0, $fa1
	bnez	$a1, .LBB13_1
# %bb.2:                                # %"_ZSt10__invoke_rIfRZ4mainE3$_2JPfjEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end13:
	.size	_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_2E9_M_invokeERKSt9_Any_dataOS0_Oj, .Lfunc_end13-_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_2E9_M_invokeERKSt9_Any_dataOS0_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFfPfjEZ4mainE3$_2E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_2E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_2E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_2E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB14_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB14_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_2E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB14_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE3$_2)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE3$_2)
.LBB14_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_2E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end14:
	.size	_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_2E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end14-_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_2E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
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
.LBB15_1:                               # %vector.body
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
	bnez	$a7, .LBB15_3
# %bb.2:                                # %vector.body
                                        #   in Loop: Header=BB15_1 Depth=1
	bne	$a5, $a4, .LBB15_1
.LBB15_3:                               # %middle.block
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
	beqz	$a2, .LBB15_5
	.p2align	4, , 16
.LBB15_4:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a2, $a0, $a6
	fldx.s	$fa1, $a2, $a1
	addi.d	$a6, $a6, 4
	fmax.s	$fa0, $fa0, $fa1
	bnez	$a6, .LBB15_4
.LBB15_5:                               # %"_ZSt10__invoke_rIfRZ4mainE3$_3JPfjEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end15:
	.size	_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_3E9_M_invokeERKSt9_Any_dataOS0_Oj, .Lfunc_end15-_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_3E9_M_invokeERKSt9_Any_dataOS0_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFfPfjEZ4mainE3$_3E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_3E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_3E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_3E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB16_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB16_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_3E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB16_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE3$_3)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE3$_3)
.LBB16_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_3E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end16:
	.size	_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_3E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end16-_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_3E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZNSt17_Function_handlerIFfPfjEZ4mainE3$_4E9_M_invokeERKSt9_Any_dataOS0_Oj
.LCPI17_0:
	.word	0x00000001                      # float 1.40129846E-45
	.text
	.p2align	5
	.type	_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_4E9_M_invokeERKSt9_Any_dataOS0_Oj,@function
_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_4E9_M_invokeERKSt9_Any_dataOS0_Oj: # @"_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_4E9_M_invokeERKSt9_Any_dataOS0_Oj"
# %bb.0:
	ld.d	$a0, $a1, 0
	pcalau12i	$a1, %pc_hi20(.LCPI17_0)
	fld.s	$fa0, $a1, %pc_lo12(.LCPI17_0)
	lu12i.w	$a1, -1
	lu12i.w	$a2, 1
	.p2align	4, , 16
.LBB17_1:                               # =>This Inner Loop Header: Depth=1
	add.d	$a3, $a0, $a1
	fldx.s	$fa1, $a3, $a2
	addi.d	$a1, $a1, 4
	fmax.s	$fa0, $fa0, $fa1
	bnez	$a1, .LBB17_1
# %bb.2:                                # %"_ZSt10__invoke_rIfRZ4mainE3$_4JPfjEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end17:
	.size	_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_4E9_M_invokeERKSt9_Any_dataOS0_Oj, .Lfunc_end17-_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_4E9_M_invokeERKSt9_Any_dataOS0_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFfPfjEZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB18_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB18_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB18_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE3$_4)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE3$_4)
.LBB18_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end18:
	.size	_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end18-_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
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
.LBB19_1:                               # %vector.body
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
	bnez	$a7, .LBB19_3
# %bb.2:                                # %vector.body
                                        #   in Loop: Header=BB19_1 Depth=1
	bne	$a5, $a4, .LBB19_1
.LBB19_3:                               # %middle.block
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
	beqz	$a2, .LBB19_5
	.p2align	4, , 16
.LBB19_4:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a2, $a0, $a6
	fldx.s	$fa1, $a2, $a1
	addi.d	$a6, $a6, 4
	fmax.s	$fa0, $fa0, $fa1
	bnez	$a6, .LBB19_4
.LBB19_5:                               # %"_ZSt10__invoke_rIfRZ4mainE3$_5JPfjEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end19:
	.size	_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_5E9_M_invokeERKSt9_Any_dataOS0_Oj, .Lfunc_end19-_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_5E9_M_invokeERKSt9_Any_dataOS0_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFfPfjEZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB20_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB20_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB20_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE3$_5)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE3$_5)
.LBB20_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end20:
	.size	_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end20-_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZNSt17_Function_handlerIFfPfjEZ4mainE3$_6E9_M_invokeERKSt9_Any_dataOS0_Oj
.LCPI21_0:
	.word	0x7fc00000                      # float NaN
	.text
	.p2align	5
	.type	_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_6E9_M_invokeERKSt9_Any_dataOS0_Oj,@function
_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_6E9_M_invokeERKSt9_Any_dataOS0_Oj: # @"_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_6E9_M_invokeERKSt9_Any_dataOS0_Oj"
# %bb.0:
	ld.d	$a0, $a1, 0
	pcalau12i	$a1, %pc_hi20(.LCPI21_0)
	fld.s	$fa0, $a1, %pc_lo12(.LCPI21_0)
	lu12i.w	$a1, -1
	lu12i.w	$a2, 1
	.p2align	4, , 16
.LBB21_1:                               # =>This Inner Loop Header: Depth=1
	add.d	$a3, $a0, $a1
	fldx.s	$fa1, $a3, $a2
	addi.d	$a1, $a1, 4
	fmax.s	$fa0, $fa0, $fa1
	bnez	$a1, .LBB21_1
# %bb.2:                                # %"_ZSt10__invoke_rIfRZ4mainE3$_6JPfjEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end21:
	.size	_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_6E9_M_invokeERKSt9_Any_dataOS0_Oj, .Lfunc_end21-_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_6E9_M_invokeERKSt9_Any_dataOS0_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFfPfjEZ4mainE3$_6E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_6E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_6E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_6E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB22_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB22_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_6E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB22_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE3$_6)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE3$_6)
.LBB22_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_6E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end22:
	.size	_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_6E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end22-_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_6E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
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
.LBB23_1:                               # %vector.body
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
	bnez	$a7, .LBB23_3
# %bb.2:                                # %vector.body
                                        #   in Loop: Header=BB23_1 Depth=1
	bne	$a5, $a4, .LBB23_1
.LBB23_3:                               # %middle.block
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
	beqz	$a2, .LBB23_5
	.p2align	4, , 16
.LBB23_4:                               # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a2, $a0, $a6
	fldx.s	$fa1, $a2, $a1
	addi.d	$a6, $a6, 4
	fmax.s	$fa0, $fa0, $fa1
	bnez	$a6, .LBB23_4
.LBB23_5:                               # %"_ZSt10__invoke_rIfRZ4mainE3$_7JPfjEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end23:
	.size	_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_7E9_M_invokeERKSt9_Any_dataOS0_Oj, .Lfunc_end23-_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_7E9_M_invokeERKSt9_Any_dataOS0_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFfPfjEZ4mainE3$_7E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_7E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_7E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_7E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB24_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB24_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_7E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB24_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE3$_7)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE3$_7)
.LBB24_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_7E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end24:
	.size	_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_7E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end24-_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_7E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
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
.LBB25_1:                               # =>This Inner Loop Header: Depth=1
	add.d	$a3, $a0, $a1
	fldx.s	$fa1, $a3, $a2
	fcmp.clt.s	$fcc0, $fa0, $fa1
	addi.d	$a1, $a1, 4
	fsel	$fa0, $fa0, $fa1, $fcc0
	bnez	$a1, .LBB25_1
# %bb.2:                                # %"_ZSt10__invoke_rIfRZ4mainE3$_8JPfjEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
                                        # kill: def $f0 killed $f0 killed $vr0
	ret
.Lfunc_end25:
	.size	_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_8E9_M_invokeERKSt9_Any_dataOS0_Oj, .Lfunc_end25-_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_8E9_M_invokeERKSt9_Any_dataOS0_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFfPfjEZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB26_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB26_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB26_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE3$_8)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE3$_8)
.LBB26_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end26:
	.size	_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end26-_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
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
.LBB27_1:                               # =>This Inner Loop Header: Depth=1
	add.d	$a3, $a0, $a1
	fldx.s	$fa1, $a3, $a2
	fcmp.clt.s	$fcc0, $fa0, $fa1
	addi.d	$a1, $a1, 4
	fsel	$fa0, $fa0, $fa1, $fcc0
	bnez	$a1, .LBB27_1
# %bb.2:                                # %"_ZSt10__invoke_rIfRZ4mainE3$_9JPfjEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
                                        # kill: def $f0 killed $f0 killed $vr0
	ret
.Lfunc_end27:
	.size	_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_9E9_M_invokeERKSt9_Any_dataOS0_Oj, .Lfunc_end27-_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_9E9_M_invokeERKSt9_Any_dataOS0_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFfPfjEZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB28_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB28_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB28_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE3$_9)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE3$_9)
.LBB28_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end28:
	.size	_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end28-_ZNSt17_Function_handlerIFfPfjEZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZNSt17_Function_handlerIFfPfjEZ4mainE4$_10E9_M_invokeERKSt9_Any_dataOS0_Oj
.LCPI29_0:
	.word	0x00800000                      # float 1.17549435E-38
	.text
	.p2align	5
	.type	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_10E9_M_invokeERKSt9_Any_dataOS0_Oj,@function
_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_10E9_M_invokeERKSt9_Any_dataOS0_Oj: # @"_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_10E9_M_invokeERKSt9_Any_dataOS0_Oj"
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
# %bb.2:                                # %"_ZSt10__invoke_rIfRZ4mainE4$_10JPfjEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end29:
	.size	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_10E9_M_invokeERKSt9_Any_dataOS0_Oj, .Lfunc_end29-_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_10E9_M_invokeERKSt9_Any_dataOS0_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFfPfjEZ4mainE4$_10E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_10E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_10E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_10E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB30_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB30_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_10E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB30_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_10)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_10)
.LBB30_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_10E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end30:
	.size	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_10E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end30-_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_10E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZNSt17_Function_handlerIFfPfjEZ4mainE4$_11E9_M_invokeERKSt9_Any_dataOS0_Oj
.LCPI31_0:
	.word	0x00800000                      # float 1.17549435E-38
	.text
	.p2align	5
	.type	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_11E9_M_invokeERKSt9_Any_dataOS0_Oj,@function
_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_11E9_M_invokeERKSt9_Any_dataOS0_Oj: # @"_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_11E9_M_invokeERKSt9_Any_dataOS0_Oj"
# %bb.0:
	ld.d	$a0, $a1, 0
	pcalau12i	$a1, %pc_hi20(.LCPI31_0)
	fld.s	$fa0, $a1, %pc_lo12(.LCPI31_0)
	lu12i.w	$a1, -1
	lu12i.w	$a2, 1
	.p2align	4, , 16
.LBB31_1:                               # =>This Inner Loop Header: Depth=1
	add.d	$a3, $a0, $a1
	fldx.s	$fa1, $a3, $a2
	fcmp.clt.s	$fcc0, $fa0, $fa1
	addi.d	$a1, $a1, 4
	fsel	$fa0, $fa0, $fa1, $fcc0
	bnez	$a1, .LBB31_1
# %bb.2:                                # %"_ZSt10__invoke_rIfRZ4mainE4$_11JPfjEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end31:
	.size	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_11E9_M_invokeERKSt9_Any_dataOS0_Oj, .Lfunc_end31-_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_11E9_M_invokeERKSt9_Any_dataOS0_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFfPfjEZ4mainE4$_11E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_11E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_11E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_11E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB32_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB32_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_11E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB32_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_11)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_11)
.LBB32_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_11E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end32:
	.size	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_11E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end32-_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_11E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZNSt17_Function_handlerIFfPfjEZ4mainE4$_12E9_M_invokeERKSt9_Any_dataOS0_Oj
.LCPI33_0:
	.word	0x00000001                      # float 1.40129846E-45
	.text
	.p2align	5
	.type	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_12E9_M_invokeERKSt9_Any_dataOS0_Oj,@function
_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_12E9_M_invokeERKSt9_Any_dataOS0_Oj: # @"_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_12E9_M_invokeERKSt9_Any_dataOS0_Oj"
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
# %bb.2:                                # %"_ZSt10__invoke_rIfRZ4mainE4$_12JPfjEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end33:
	.size	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_12E9_M_invokeERKSt9_Any_dataOS0_Oj, .Lfunc_end33-_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_12E9_M_invokeERKSt9_Any_dataOS0_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFfPfjEZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB34_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB34_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB34_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_12)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_12)
.LBB34_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end34:
	.size	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end34-_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZNSt17_Function_handlerIFfPfjEZ4mainE4$_13E9_M_invokeERKSt9_Any_dataOS0_Oj
.LCPI35_0:
	.word	0x00000001                      # float 1.40129846E-45
	.text
	.p2align	5
	.type	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_13E9_M_invokeERKSt9_Any_dataOS0_Oj,@function
_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_13E9_M_invokeERKSt9_Any_dataOS0_Oj: # @"_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_13E9_M_invokeERKSt9_Any_dataOS0_Oj"
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
# %bb.2:                                # %"_ZSt10__invoke_rIfRZ4mainE4$_13JPfjEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end35:
	.size	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_13E9_M_invokeERKSt9_Any_dataOS0_Oj, .Lfunc_end35-_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_13E9_M_invokeERKSt9_Any_dataOS0_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFfPfjEZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB36_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB36_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB36_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_13)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_13)
.LBB36_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end36:
	.size	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end36-_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZNSt17_Function_handlerIFfPfjEZ4mainE4$_14E9_M_invokeERKSt9_Any_dataOS0_Oj
.LCPI37_0:
	.word	0x7fc00000                      # float NaN
	.text
	.p2align	5
	.type	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_14E9_M_invokeERKSt9_Any_dataOS0_Oj,@function
_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_14E9_M_invokeERKSt9_Any_dataOS0_Oj: # @"_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_14E9_M_invokeERKSt9_Any_dataOS0_Oj"
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
# %bb.2:                                # %"_ZSt10__invoke_rIfRZ4mainE4$_14JPfjEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end37:
	.size	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_14E9_M_invokeERKSt9_Any_dataOS0_Oj, .Lfunc_end37-_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_14E9_M_invokeERKSt9_Any_dataOS0_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFfPfjEZ4mainE4$_14E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_14E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_14E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_14E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB38_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB38_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_14E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB38_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_14)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_14)
.LBB38_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_14E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end38:
	.size	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_14E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end38-_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_14E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZNSt17_Function_handlerIFfPfjEZ4mainE4$_15E9_M_invokeERKSt9_Any_dataOS0_Oj
.LCPI39_0:
	.word	0x7fc00000                      # float NaN
	.text
	.p2align	5
	.type	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_15E9_M_invokeERKSt9_Any_dataOS0_Oj,@function
_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_15E9_M_invokeERKSt9_Any_dataOS0_Oj: # @"_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_15E9_M_invokeERKSt9_Any_dataOS0_Oj"
# %bb.0:
	ld.d	$a0, $a1, 0
	pcalau12i	$a1, %pc_hi20(.LCPI39_0)
	fld.s	$fa0, $a1, %pc_lo12(.LCPI39_0)
	lu12i.w	$a1, -2
	ori	$a1, $a1, 4092
	lu12i.w	$a2, 1
	ori	$a2, $a2, 4
	.p2align	4, , 16
.LBB39_1:                               # =>This Inner Loop Header: Depth=1
	add.d	$a3, $a0, $a1
	fldx.s	$fa1, $a3, $a2
	fcmp.clt.s	$fcc0, $fa0, $fa1
	addi.d	$a1, $a1, 4
	fsel	$fa0, $fa0, $fa1, $fcc0
	bnez	$a1, .LBB39_1
# %bb.2:                                # %"_ZSt10__invoke_rIfRZ4mainE4$_15JPfjEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end39:
	.size	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_15E9_M_invokeERKSt9_Any_dataOS0_Oj, .Lfunc_end39-_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_15E9_M_invokeERKSt9_Any_dataOS0_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFfPfjEZ4mainE4$_15E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_15E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_15E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_15E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB40_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB40_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_15E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB40_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_15)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_15)
.LBB40_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_15E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end40:
	.size	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_15E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end40-_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_15E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
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
.LBB41_1:                               # =>This Inner Loop Header: Depth=1
	add.d	$a3, $a0, $a1
	fldx.s	$fa1, $a3, $a2
	fcmp.cle.s	$fcc0, $fa1, $fa0
	addi.d	$a1, $a1, 4
	fsel	$fa0, $fa1, $fa0, $fcc0
	bnez	$a1, .LBB41_1
# %bb.2:                                # %"_ZSt10__invoke_rIfRZ4mainE4$_16JPfjEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
                                        # kill: def $f0 killed $f0 killed $vr0
	ret
.Lfunc_end41:
	.size	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_16E9_M_invokeERKSt9_Any_dataOS0_Oj, .Lfunc_end41-_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_16E9_M_invokeERKSt9_Any_dataOS0_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFfPfjEZ4mainE4$_16E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_16E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_16E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_16E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB42_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB42_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_16E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB42_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_16)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_16)
.LBB42_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_16E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end42:
	.size	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_16E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end42-_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_16E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
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
.LBB43_1:                               # =>This Inner Loop Header: Depth=1
	add.d	$a3, $a0, $a1
	fldx.s	$fa1, $a3, $a2
	fcmp.cle.s	$fcc0, $fa1, $fa0
	addi.d	$a1, $a1, 4
	fsel	$fa0, $fa1, $fa0, $fcc0
	bnez	$a1, .LBB43_1
# %bb.2:                                # %"_ZSt10__invoke_rIfRZ4mainE4$_17JPfjEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
                                        # kill: def $f0 killed $f0 killed $vr0
	ret
.Lfunc_end43:
	.size	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_17E9_M_invokeERKSt9_Any_dataOS0_Oj, .Lfunc_end43-_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_17E9_M_invokeERKSt9_Any_dataOS0_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFfPfjEZ4mainE4$_17E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_17E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_17E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_17E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB44_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB44_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_17E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB44_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_17)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_17)
.LBB44_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_17E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end44:
	.size	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_17E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end44-_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_17E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
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
.LBB45_1:                               # =>This Inner Loop Header: Depth=1
	add.d	$a3, $a0, $a1
	fldx.s	$fa1, $a3, $a2
	fcmp.clt.s	$fcc0, $fa1, $fa0
	addi.d	$a1, $a1, 4
	fsel	$fa0, $fa1, $fa0, $fcc0
	bnez	$a1, .LBB45_1
# %bb.2:                                # %"_ZSt10__invoke_rIfRZ4mainE4$_18JPfjEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
                                        # kill: def $f0 killed $f0 killed $vr0
	ret
.Lfunc_end45:
	.size	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_18E9_M_invokeERKSt9_Any_dataOS0_Oj, .Lfunc_end45-_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_18E9_M_invokeERKSt9_Any_dataOS0_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFfPfjEZ4mainE4$_18E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_18E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_18E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_18E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB46_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB46_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_18E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB46_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_18)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_18)
.LBB46_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_18E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end46:
	.size	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_18E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end46-_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_18E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
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
.LBB47_1:                               # =>This Inner Loop Header: Depth=1
	add.d	$a3, $a0, $a1
	fldx.s	$fa1, $a3, $a2
	fcmp.clt.s	$fcc0, $fa1, $fa0
	addi.d	$a1, $a1, 4
	fsel	$fa0, $fa1, $fa0, $fcc0
	bnez	$a1, .LBB47_1
# %bb.2:                                # %"_ZSt10__invoke_rIfRZ4mainE4$_19JPfjEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
                                        # kill: def $f0 killed $f0 killed $vr0
	ret
.Lfunc_end47:
	.size	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_19E9_M_invokeERKSt9_Any_dataOS0_Oj, .Lfunc_end47-_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_19E9_M_invokeERKSt9_Any_dataOS0_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFfPfjEZ4mainE4$_19E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_19E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_19E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_19E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB48_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB48_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_19E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB48_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_19)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_19)
.LBB48_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_19E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end48:
	.size	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_19E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end48-_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_19E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
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
.LBB49_1:                               # =>This Inner Loop Header: Depth=1
	add.d	$a3, $a0, $a1
	fldx.s	$fa1, $a3, $a2
	fcmp.clt.s	$fcc0, $fa0, $fa1
	addi.d	$a1, $a1, 4
	fsel	$fa0, $fa0, $fa1, $fcc0
	bnez	$a1, .LBB49_1
# %bb.2:                                # %"_ZSt10__invoke_rIfRZ4mainE4$_20JPfjEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
                                        # kill: def $f0 killed $f0 killed $vr0
	ret
.Lfunc_end49:
	.size	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_20E9_M_invokeERKSt9_Any_dataOS0_Oj, .Lfunc_end49-_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_20E9_M_invokeERKSt9_Any_dataOS0_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFfPfjEZ4mainE4$_20E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_20E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_20E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_20E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB50_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB50_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_20E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB50_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_20)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_20)
.LBB50_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_20E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end50:
	.size	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_20E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end50-_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_20E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
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
.LBB51_1:                               # =>This Inner Loop Header: Depth=1
	add.d	$a3, $a0, $a1
	fldx.s	$fa1, $a3, $a2
	fcmp.clt.s	$fcc0, $fa0, $fa1
	addi.d	$a1, $a1, 4
	fsel	$fa0, $fa0, $fa1, $fcc0
	bnez	$a1, .LBB51_1
# %bb.2:                                # %"_ZSt10__invoke_rIfRZ4mainE4$_21JPfjEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
                                        # kill: def $f0 killed $f0 killed $vr0
	ret
.Lfunc_end51:
	.size	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_21E9_M_invokeERKSt9_Any_dataOS0_Oj, .Lfunc_end51-_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_21E9_M_invokeERKSt9_Any_dataOS0_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFfPfjEZ4mainE4$_21E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_21E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_21E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_21E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB52_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB52_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_21E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB52_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_21)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_21)
.LBB52_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_21E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end52:
	.size	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_21E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end52-_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_21E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZNSt17_Function_handlerIFfPfjEZ4mainE4$_22E9_M_invokeERKSt9_Any_dataOS0_Oj
.LCPI53_0:
	.word	0x00000001                      # float 1.40129846E-45
	.text
	.p2align	5
	.type	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_22E9_M_invokeERKSt9_Any_dataOS0_Oj,@function
_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_22E9_M_invokeERKSt9_Any_dataOS0_Oj: # @"_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_22E9_M_invokeERKSt9_Any_dataOS0_Oj"
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
# %bb.2:                                # %"_ZSt10__invoke_rIfRZ4mainE4$_22JPfjEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end53:
	.size	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_22E9_M_invokeERKSt9_Any_dataOS0_Oj, .Lfunc_end53-_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_22E9_M_invokeERKSt9_Any_dataOS0_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFfPfjEZ4mainE4$_22E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_22E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_22E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_22E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB54_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB54_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_22E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB54_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_22)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_22)
.LBB54_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_22E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end54:
	.size	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_22E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end54-_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_22E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZNSt17_Function_handlerIFfPfjEZ4mainE4$_23E9_M_invokeERKSt9_Any_dataOS0_Oj
.LCPI55_0:
	.word	0x00000001                      # float 1.40129846E-45
	.text
	.p2align	5
	.type	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_23E9_M_invokeERKSt9_Any_dataOS0_Oj,@function
_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_23E9_M_invokeERKSt9_Any_dataOS0_Oj: # @"_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_23E9_M_invokeERKSt9_Any_dataOS0_Oj"
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
# %bb.2:                                # %"_ZSt10__invoke_rIfRZ4mainE4$_23JPfjEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end55:
	.size	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_23E9_M_invokeERKSt9_Any_dataOS0_Oj, .Lfunc_end55-_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_23E9_M_invokeERKSt9_Any_dataOS0_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFfPfjEZ4mainE4$_23E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_23E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_23E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_23E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB56_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB56_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_23E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB56_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_23)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_23)
.LBB56_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_23E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end56:
	.size	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_23E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end56-_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_23E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZNSt17_Function_handlerIFfPfjEZ4mainE4$_24E9_M_invokeERKSt9_Any_dataOS0_Oj
.LCPI57_0:
	.word	0x7fc00000                      # float NaN
	.text
	.p2align	5
	.type	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_24E9_M_invokeERKSt9_Any_dataOS0_Oj,@function
_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_24E9_M_invokeERKSt9_Any_dataOS0_Oj: # @"_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_24E9_M_invokeERKSt9_Any_dataOS0_Oj"
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
# %bb.2:                                # %"_ZSt10__invoke_rIfRZ4mainE4$_24JPfjEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end57:
	.size	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_24E9_M_invokeERKSt9_Any_dataOS0_Oj, .Lfunc_end57-_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_24E9_M_invokeERKSt9_Any_dataOS0_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFfPfjEZ4mainE4$_24E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_24E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_24E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_24E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB58_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB58_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_24E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB58_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_24)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_24)
.LBB58_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_24E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end58:
	.size	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_24E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end58-_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_24E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZNSt17_Function_handlerIFfPfjEZ4mainE4$_25E9_M_invokeERKSt9_Any_dataOS0_Oj
.LCPI59_0:
	.word	0x7fc00000                      # float NaN
	.text
	.p2align	5
	.type	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_25E9_M_invokeERKSt9_Any_dataOS0_Oj,@function
_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_25E9_M_invokeERKSt9_Any_dataOS0_Oj: # @"_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_25E9_M_invokeERKSt9_Any_dataOS0_Oj"
# %bb.0:
	ld.d	$a0, $a1, 0
	pcalau12i	$a1, %pc_hi20(.LCPI59_0)
	fld.s	$fa0, $a1, %pc_lo12(.LCPI59_0)
	lu12i.w	$a1, -1
	lu12i.w	$a2, 1
	.p2align	4, , 16
.LBB59_1:                               # =>This Inner Loop Header: Depth=1
	add.d	$a3, $a0, $a1
	fldx.s	$fa1, $a3, $a2
	fcmp.clt.s	$fcc0, $fa0, $fa1
	addi.d	$a1, $a1, 4
	fsel	$fa0, $fa0, $fa1, $fcc0
	bnez	$a1, .LBB59_1
# %bb.2:                                # %"_ZSt10__invoke_rIfRZ4mainE4$_25JPfjEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end59:
	.size	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_25E9_M_invokeERKSt9_Any_dataOS0_Oj, .Lfunc_end59-_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_25E9_M_invokeERKSt9_Any_dataOS0_Oj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFfPfjEZ4mainE4$_25E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_25E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_25E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_25E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB60_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB60_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_25E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB60_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_25)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_25)
.LBB60_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_25E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end60:
	.size	_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_25E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end60-_ZNSt17_Function_handlerIFfPfjEZ4mainE4$_25E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
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
.LBB61_1:                               # =>This Inner Loop Header: Depth=1
	srli.d	$a6, $a2, 30
	xor	$a2, $a6, $a2
	mul.d	$a2, $a2, $a4
	add.d	$a2, $a3, $a2
	bstrpick.d	$a2, $a2, 31, 0
	st.d	$a2, $a1, 0
	addi.d	$a3, $a3, 1
	addi.d	$a1, $a1, 8
	bne	$a3, $a5, .LBB61_1
# %bb.2:                                # %__cxx_global_var_init.exit
	ori	$a1, $zero, 624
	stptr.d	$a1, $a0, 4992
	ret
.Lfunc_end61:
	.size	_GLOBAL__sub_I_fmax_reduction.cpp, .Lfunc_end61-_GLOBAL__sub_I_fmax_reduction.cpp
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
