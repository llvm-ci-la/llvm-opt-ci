	.file	"find-last.cpp"
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
	lu12i.w	$a0, 1
	ori	$a0, $a0, 656
	sub.d	$sp, $sp, $a0
	.cfi_def_cfa_offset 6784
	ori	$a2, $zero, 15
	st.d	$a2, $sp, 1768
	ori	$a0, $zero, 1
	ori	$a1, $zero, 8
	lu12i.w	$a3, 442488
	ori	$a3, $a3, 2405
	addi.d	$a4, $sp, 1768
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
	ori	$a1, $a1, 2664
	add.d	$a1, $sp, $a1
	stptr.d	$a0, $a1, 0
	pcalau12i	$a0, %pc_hi20(_ZL3rng)
	addi.d	$a0, $a0, %pc_lo12(_ZL3rng)
	lu12i.w	$a1, 1
	ori	$a2, $a1, 904
	addi.d	$a1, $sp, 1768
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 1736
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_0E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_0E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	st.d	$a0, $sp, 1760
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 1752
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	vst	$vr0, $sp, 1704
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_1E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_1E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	st.d	$a0, $sp, 1728
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 1720
.Ltmp0:                                 # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	addi.d	$a0, $sp, 1736
	addi.d	$a1, $sp, 1704
	pcaddu18i	$ra, %call36(_ZL19checkVectorFunctionIiiEvSt8functionIFT_PT0_S3_S1_EES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.3:
	ld.d	$a3, $sp, 1720
	beqz	$a3, .LBB0_5
# %bb.4:
.Ltmp9:                                 # EH_LABEL
	addi.d	$a0, $sp, 1704
	addi.d	$a1, $sp, 1704
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp10:                                # EH_LABEL
.LBB0_5:                                # %_ZNSt14_Function_baseD2Ev.exit
	ld.d	$a3, $sp, 1752
	beqz	$a3, .LBB0_7
# %bb.6:
.Ltmp12:                                # EH_LABEL
	addi.d	$a0, $sp, 1736
	addi.d	$a1, $sp, 1736
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp13:                                # EH_LABEL
.LBB0_7:                                # %_ZNSt14_Function_baseD2Ev.exit31
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 1672
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_0E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_0E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	st.d	$a0, $sp, 1696
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 1688
	vst	$vr0, $sp, 1640
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_1E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_1E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	st.d	$a0, $sp, 1664
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 1656
.Ltmp15:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a2, $a0, %pc_lo12(.L.str.1)
	addi.d	$a0, $sp, 1672
	addi.d	$a1, $sp, 1640
	pcaddu18i	$ra, %call36(_ZL19checkVectorFunctionIifEvSt8functionIFT_PT0_S3_S1_EES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp16:                                # EH_LABEL
# %bb.8:
	ld.d	$a3, $sp, 1656
	beqz	$a3, .LBB0_10
# %bb.9:
.Ltmp24:                                # EH_LABEL
	addi.d	$a0, $sp, 1640
	addi.d	$a1, $sp, 1640
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp25:                                # EH_LABEL
.LBB0_10:                               # %_ZNSt14_Function_baseD2Ev.exit33
	ld.d	$a3, $sp, 1688
	beqz	$a3, .LBB0_12
# %bb.11:
.Ltmp27:                                # EH_LABEL
	addi.d	$a0, $sp, 1672
	addi.d	$a1, $sp, 1672
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp28:                                # EH_LABEL
.LBB0_12:                               # %_ZNSt14_Function_baseD2Ev.exit35
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 1608
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_2E9_M_invokeERKSt9_Any_dataOS0_S7_Os)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_2E9_M_invokeERKSt9_Any_dataOS0_S7_Os)
	st.d	$a0, $sp, 1632
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_2E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_2E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 1624
	vst	$vr0, $sp, 1576
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_3E9_M_invokeERKSt9_Any_dataOS0_S7_Os)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_3E9_M_invokeERKSt9_Any_dataOS0_S7_Os)
	st.d	$a0, $sp, 1600
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_3E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_3E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 1592
.Ltmp30:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a2, $a0, %pc_lo12(.L.str.2)
	addi.d	$a0, $sp, 1608
	addi.d	$a1, $sp, 1576
	pcaddu18i	$ra, %call36(_ZL19checkVectorFunctionIssEvSt8functionIFT_PT0_S3_S1_EES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp31:                                # EH_LABEL
# %bb.13:
	ld.d	$a3, $sp, 1592
	beqz	$a3, .LBB0_15
# %bb.14:
.Ltmp39:                                # EH_LABEL
	addi.d	$a0, $sp, 1576
	addi.d	$a1, $sp, 1576
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp40:                                # EH_LABEL
.LBB0_15:                               # %_ZNSt14_Function_baseD2Ev.exit37
	ld.d	$a3, $sp, 1624
	beqz	$a3, .LBB0_17
# %bb.16:
.Ltmp42:                                # EH_LABEL
	addi.d	$a0, $sp, 1608
	addi.d	$a1, $sp, 1608
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp43:                                # EH_LABEL
.LBB0_17:                               # %_ZNSt14_Function_baseD2Ev.exit39
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 1544
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_4E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_4E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	st.d	$a0, $sp, 1568
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 1560
	vst	$vr0, $sp, 1512
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_5E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_5E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	st.d	$a0, $sp, 1536
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 1528
.Ltmp45:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a2, $a0, %pc_lo12(.L.str.3)
	addi.d	$a0, $sp, 1544
	addi.d	$a1, $sp, 1512
	pcaddu18i	$ra, %call36(_ZL19checkVectorFunctionIiiEvSt8functionIFT_PT0_S3_S1_EES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp46:                                # EH_LABEL
# %bb.18:
	ld.d	$a3, $sp, 1528
	beqz	$a3, .LBB0_20
# %bb.19:
.Ltmp54:                                # EH_LABEL
	addi.d	$a0, $sp, 1512
	addi.d	$a1, $sp, 1512
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp55:                                # EH_LABEL
.LBB0_20:                               # %_ZNSt14_Function_baseD2Ev.exit41
	ld.d	$a3, $sp, 1560
	beqz	$a3, .LBB0_22
# %bb.21:
.Ltmp57:                                # EH_LABEL
	addi.d	$a0, $sp, 1544
	addi.d	$a1, $sp, 1544
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp58:                                # EH_LABEL
.LBB0_22:                               # %_ZNSt14_Function_baseD2Ev.exit43
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 1480
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_4E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_4E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	st.d	$a0, $sp, 1504
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 1496
	vst	$vr0, $sp, 1448
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_5E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_5E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	st.d	$a0, $sp, 1472
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 1464
.Ltmp60:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a2, $a0, %pc_lo12(.L.str.4)
	addi.d	$a0, $sp, 1480
	addi.d	$a1, $sp, 1448
	pcaddu18i	$ra, %call36(_ZL19checkVectorFunctionIifEvSt8functionIFT_PT0_S3_S1_EES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp61:                                # EH_LABEL
# %bb.23:
	ld.d	$a3, $sp, 1464
	beqz	$a3, .LBB0_25
# %bb.24:
.Ltmp69:                                # EH_LABEL
	addi.d	$a0, $sp, 1448
	addi.d	$a1, $sp, 1448
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp70:                                # EH_LABEL
.LBB0_25:                               # %_ZNSt14_Function_baseD2Ev.exit45
	ld.d	$a3, $sp, 1496
	beqz	$a3, .LBB0_27
# %bb.26:
.Ltmp72:                                # EH_LABEL
	addi.d	$a0, $sp, 1480
	addi.d	$a1, $sp, 1480
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp73:                                # EH_LABEL
.LBB0_27:                               # %_ZNSt14_Function_baseD2Ev.exit47
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 1416
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_6E9_M_invokeERKSt9_Any_dataOS0_S7_Os)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_6E9_M_invokeERKSt9_Any_dataOS0_S7_Os)
	st.d	$a0, $sp, 1440
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_6E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_6E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 1432
	vst	$vr0, $sp, 1384
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_7E9_M_invokeERKSt9_Any_dataOS0_S7_Os)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_7E9_M_invokeERKSt9_Any_dataOS0_S7_Os)
	st.d	$a0, $sp, 1408
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_7E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_7E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 1400
.Ltmp75:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a2, $a0, %pc_lo12(.L.str.5)
	addi.d	$a0, $sp, 1416
	addi.d	$a1, $sp, 1384
	pcaddu18i	$ra, %call36(_ZL19checkVectorFunctionIssEvSt8functionIFT_PT0_S3_S1_EES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp76:                                # EH_LABEL
# %bb.28:
	ld.d	$a3, $sp, 1400
	beqz	$a3, .LBB0_30
# %bb.29:
.Ltmp84:                                # EH_LABEL
	addi.d	$a0, $sp, 1384
	addi.d	$a1, $sp, 1384
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp85:                                # EH_LABEL
.LBB0_30:                               # %_ZNSt14_Function_baseD2Ev.exit49
	ld.d	$a3, $sp, 1432
	beqz	$a3, .LBB0_32
# %bb.31:
.Ltmp87:                                # EH_LABEL
	addi.d	$a0, $sp, 1416
	addi.d	$a1, $sp, 1416
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp88:                                # EH_LABEL
.LBB0_32:                               # %_ZNSt14_Function_baseD2Ev.exit51
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 1352
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_8E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_8E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	st.d	$a0, $sp, 1376
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 1368
	vst	$vr0, $sp, 1320
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_9E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_9E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	st.d	$a0, $sp, 1344
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 1336
.Ltmp90:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a2, $a0, %pc_lo12(.L.str.6)
	addi.d	$a0, $sp, 1352
	addi.d	$a1, $sp, 1320
	pcaddu18i	$ra, %call36(_ZL19checkVectorFunctionIiiEvSt8functionIFT_PT0_S3_S1_EES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp91:                                # EH_LABEL
# %bb.33:
	ld.d	$a3, $sp, 1336
	beqz	$a3, .LBB0_35
# %bb.34:
.Ltmp99:                                # EH_LABEL
	addi.d	$a0, $sp, 1320
	addi.d	$a1, $sp, 1320
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp100:                               # EH_LABEL
.LBB0_35:                               # %_ZNSt14_Function_baseD2Ev.exit53
	ld.d	$a3, $sp, 1368
	beqz	$a3, .LBB0_37
# %bb.36:
.Ltmp102:                               # EH_LABEL
	addi.d	$a0, $sp, 1352
	addi.d	$a1, $sp, 1352
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp103:                               # EH_LABEL
.LBB0_37:                               # %_ZNSt14_Function_baseD2Ev.exit55
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 1288
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_8E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_8E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	st.d	$a0, $sp, 1312
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 1304
	vst	$vr0, $sp, 1256
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_9E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_9E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	st.d	$a0, $sp, 1280
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 1272
.Ltmp105:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a2, $a0, %pc_lo12(.L.str.7)
	addi.d	$a0, $sp, 1288
	addi.d	$a1, $sp, 1256
	pcaddu18i	$ra, %call36(_ZL19checkVectorFunctionIifEvSt8functionIFT_PT0_S3_S1_EES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp106:                               # EH_LABEL
# %bb.38:
	ld.d	$a3, $sp, 1272
	beqz	$a3, .LBB0_40
# %bb.39:
.Ltmp114:                               # EH_LABEL
	addi.d	$a0, $sp, 1256
	addi.d	$a1, $sp, 1256
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp115:                               # EH_LABEL
.LBB0_40:                               # %_ZNSt14_Function_baseD2Ev.exit57
	ld.d	$a3, $sp, 1304
	beqz	$a3, .LBB0_42
# %bb.41:
.Ltmp117:                               # EH_LABEL
	addi.d	$a0, $sp, 1288
	addi.d	$a1, $sp, 1288
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp118:                               # EH_LABEL
.LBB0_42:                               # %_ZNSt14_Function_baseD2Ev.exit59
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 1224
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_10E9_M_invokeERKSt9_Any_dataOS0_S7_Os)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_10E9_M_invokeERKSt9_Any_dataOS0_S7_Os)
	st.d	$a0, $sp, 1248
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_10E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_10E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 1240
	vst	$vr0, $sp, 1192
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_11E9_M_invokeERKSt9_Any_dataOS0_S7_Os)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_11E9_M_invokeERKSt9_Any_dataOS0_S7_Os)
	st.d	$a0, $sp, 1216
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_11E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_11E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 1208
.Ltmp120:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a2, $a0, %pc_lo12(.L.str.8)
	addi.d	$a0, $sp, 1224
	addi.d	$a1, $sp, 1192
	pcaddu18i	$ra, %call36(_ZL19checkVectorFunctionIssEvSt8functionIFT_PT0_S3_S1_EES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp121:                               # EH_LABEL
# %bb.43:
	ld.d	$a3, $sp, 1208
	beqz	$a3, .LBB0_45
# %bb.44:
.Ltmp129:                               # EH_LABEL
	addi.d	$a0, $sp, 1192
	addi.d	$a1, $sp, 1192
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp130:                               # EH_LABEL
.LBB0_45:                               # %_ZNSt14_Function_baseD2Ev.exit61
	ld.d	$a3, $sp, 1240
	beqz	$a3, .LBB0_47
# %bb.46:
.Ltmp132:                               # EH_LABEL
	addi.d	$a0, $sp, 1224
	addi.d	$a1, $sp, 1224
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp133:                               # EH_LABEL
.LBB0_47:                               # %_ZNSt14_Function_baseD2Ev.exit63
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 1160
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_12E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_12E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	st.d	$a0, $sp, 1184
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 1176
	vst	$vr0, $sp, 1128
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_13E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_13E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	st.d	$a0, $sp, 1152
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 1144
.Ltmp135:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a2, $a0, %pc_lo12(.L.str.9)
	addi.d	$a0, $sp, 1160
	addi.d	$a1, $sp, 1128
	pcaddu18i	$ra, %call36(_ZL19checkVectorFunctionIiiEvSt8functionIFT_PT0_S3_S1_EES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp136:                               # EH_LABEL
# %bb.48:
	ld.d	$a3, $sp, 1144
	beqz	$a3, .LBB0_50
# %bb.49:
.Ltmp144:                               # EH_LABEL
	addi.d	$a0, $sp, 1128
	addi.d	$a1, $sp, 1128
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp145:                               # EH_LABEL
.LBB0_50:                               # %_ZNSt14_Function_baseD2Ev.exit65
	ld.d	$a3, $sp, 1176
	beqz	$a3, .LBB0_52
# %bb.51:
.Ltmp147:                               # EH_LABEL
	addi.d	$a0, $sp, 1160
	addi.d	$a1, $sp, 1160
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp148:                               # EH_LABEL
.LBB0_52:                               # %_ZNSt14_Function_baseD2Ev.exit67
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 1096
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_12E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_12E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	st.d	$a0, $sp, 1120
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 1112
	vst	$vr0, $sp, 1064
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_13E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_13E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	st.d	$a0, $sp, 1088
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 1080
.Ltmp150:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a2, $a0, %pc_lo12(.L.str.10)
	addi.d	$a0, $sp, 1096
	addi.d	$a1, $sp, 1064
	pcaddu18i	$ra, %call36(_ZL19checkVectorFunctionIifEvSt8functionIFT_PT0_S3_S1_EES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp151:                               # EH_LABEL
# %bb.53:
	ld.d	$a3, $sp, 1080
	beqz	$a3, .LBB0_55
# %bb.54:
.Ltmp159:                               # EH_LABEL
	addi.d	$a0, $sp, 1064
	addi.d	$a1, $sp, 1064
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp160:                               # EH_LABEL
.LBB0_55:                               # %_ZNSt14_Function_baseD2Ev.exit69
	ld.d	$a3, $sp, 1112
	beqz	$a3, .LBB0_57
# %bb.56:
.Ltmp162:                               # EH_LABEL
	addi.d	$a0, $sp, 1096
	addi.d	$a1, $sp, 1096
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp163:                               # EH_LABEL
.LBB0_57:                               # %_ZNSt14_Function_baseD2Ev.exit71
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 1032
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_14E9_M_invokeERKSt9_Any_dataOS0_S7_Os)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_14E9_M_invokeERKSt9_Any_dataOS0_S7_Os)
	st.d	$a0, $sp, 1056
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_14E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_14E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 1048
	vst	$vr0, $sp, 1000
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_15E9_M_invokeERKSt9_Any_dataOS0_S7_Os)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_15E9_M_invokeERKSt9_Any_dataOS0_S7_Os)
	st.d	$a0, $sp, 1024
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_15E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_15E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 1016
.Ltmp165:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a2, $a0, %pc_lo12(.L.str.11)
	addi.d	$a0, $sp, 1032
	addi.d	$a1, $sp, 1000
	pcaddu18i	$ra, %call36(_ZL19checkVectorFunctionIssEvSt8functionIFT_PT0_S3_S1_EES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp166:                               # EH_LABEL
# %bb.58:
	ld.d	$a3, $sp, 1016
	beqz	$a3, .LBB0_60
# %bb.59:
.Ltmp174:                               # EH_LABEL
	addi.d	$a0, $sp, 1000
	addi.d	$a1, $sp, 1000
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp175:                               # EH_LABEL
.LBB0_60:                               # %_ZNSt14_Function_baseD2Ev.exit73
	ld.d	$a3, $sp, 1048
	beqz	$a3, .LBB0_62
# %bb.61:
.Ltmp177:                               # EH_LABEL
	addi.d	$a0, $sp, 1032
	addi.d	$a1, $sp, 1032
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp178:                               # EH_LABEL
.LBB0_62:                               # %_ZNSt14_Function_baseD2Ev.exit75
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 968
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_16E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_16E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	st.d	$a0, $sp, 992
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_16E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_16E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 984
	vst	$vr0, $sp, 936
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_17E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_17E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	st.d	$a0, $sp, 960
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_17E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_17E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 952
.Ltmp180:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a2, $a0, %pc_lo12(.L.str.12)
	addi.d	$a0, $sp, 968
	addi.d	$a1, $sp, 936
	pcaddu18i	$ra, %call36(_ZL19checkVectorFunctionIiiEvSt8functionIFT_PT0_S3_S1_EES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp181:                               # EH_LABEL
# %bb.63:
	ld.d	$a3, $sp, 952
	beqz	$a3, .LBB0_65
# %bb.64:
.Ltmp189:                               # EH_LABEL
	addi.d	$a0, $sp, 936
	addi.d	$a1, $sp, 936
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp190:                               # EH_LABEL
.LBB0_65:                               # %_ZNSt14_Function_baseD2Ev.exit77
	ld.d	$a3, $sp, 984
	beqz	$a3, .LBB0_67
# %bb.66:
.Ltmp192:                               # EH_LABEL
	addi.d	$a0, $sp, 968
	addi.d	$a1, $sp, 968
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp193:                               # EH_LABEL
.LBB0_67:                               # %_ZNSt14_Function_baseD2Ev.exit79
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 904
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_16E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_16E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	st.d	$a0, $sp, 928
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_16E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_16E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 920
	vst	$vr0, $sp, 872
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_17E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_17E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	st.d	$a0, $sp, 896
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_17E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_17E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 888
.Ltmp195:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a2, $a0, %pc_lo12(.L.str.13)
	addi.d	$a0, $sp, 904
	addi.d	$a1, $sp, 872
	pcaddu18i	$ra, %call36(_ZL19checkVectorFunctionIifEvSt8functionIFT_PT0_S3_S1_EES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp196:                               # EH_LABEL
# %bb.68:
	ld.d	$a3, $sp, 888
	beqz	$a3, .LBB0_70
# %bb.69:
.Ltmp204:                               # EH_LABEL
	addi.d	$a0, $sp, 872
	addi.d	$a1, $sp, 872
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp205:                               # EH_LABEL
.LBB0_70:                               # %_ZNSt14_Function_baseD2Ev.exit81
	ld.d	$a3, $sp, 920
	beqz	$a3, .LBB0_72
# %bb.71:
.Ltmp207:                               # EH_LABEL
	addi.d	$a0, $sp, 904
	addi.d	$a1, $sp, 904
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp208:                               # EH_LABEL
.LBB0_72:                               # %_ZNSt14_Function_baseD2Ev.exit83
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 840
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_18E9_M_invokeERKSt9_Any_dataOS0_S7_Os)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_18E9_M_invokeERKSt9_Any_dataOS0_S7_Os)
	st.d	$a0, $sp, 864
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_18E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_18E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 856
	vst	$vr0, $sp, 808
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_19E9_M_invokeERKSt9_Any_dataOS0_S7_Os)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_19E9_M_invokeERKSt9_Any_dataOS0_S7_Os)
	st.d	$a0, $sp, 832
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_19E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_19E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 824
.Ltmp210:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a2, $a0, %pc_lo12(.L.str.14)
	addi.d	$a0, $sp, 840
	addi.d	$a1, $sp, 808
	pcaddu18i	$ra, %call36(_ZL19checkVectorFunctionIssEvSt8functionIFT_PT0_S3_S1_EES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp211:                               # EH_LABEL
# %bb.73:
	ld.d	$a3, $sp, 824
	beqz	$a3, .LBB0_75
# %bb.74:
.Ltmp219:                               # EH_LABEL
	addi.d	$a0, $sp, 808
	addi.d	$a1, $sp, 808
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp220:                               # EH_LABEL
.LBB0_75:                               # %_ZNSt14_Function_baseD2Ev.exit85
	ld.d	$a3, $sp, 856
	beqz	$a3, .LBB0_77
# %bb.76:
.Ltmp222:                               # EH_LABEL
	addi.d	$a0, $sp, 840
	addi.d	$a1, $sp, 840
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp223:                               # EH_LABEL
.LBB0_77:                               # %_ZNSt14_Function_baseD2Ev.exit87
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 776
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_20E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_20E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	st.d	$a0, $sp, 800
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_20E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_20E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 792
	vst	$vr0, $sp, 744
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_21E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_21E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	st.d	$a0, $sp, 768
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_21E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_21E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 760
.Ltmp225:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a2, $a0, %pc_lo12(.L.str.15)
	addi.d	$a0, $sp, 776
	addi.d	$a1, $sp, 744
	pcaddu18i	$ra, %call36(_ZL19checkVectorFunctionIiiEvSt8functionIFT_PT0_S3_S1_EES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp226:                               # EH_LABEL
# %bb.78:
	ld.d	$a3, $sp, 760
	beqz	$a3, .LBB0_80
# %bb.79:
.Ltmp234:                               # EH_LABEL
	addi.d	$a0, $sp, 744
	addi.d	$a1, $sp, 744
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp235:                               # EH_LABEL
.LBB0_80:                               # %_ZNSt14_Function_baseD2Ev.exit89
	ld.d	$a3, $sp, 792
	beqz	$a3, .LBB0_82
# %bb.81:
.Ltmp237:                               # EH_LABEL
	addi.d	$a0, $sp, 776
	addi.d	$a1, $sp, 776
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp238:                               # EH_LABEL
.LBB0_82:                               # %_ZNSt14_Function_baseD2Ev.exit91
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 712
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_20E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_20E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	st.d	$a0, $sp, 736
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_20E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_20E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 728
	vst	$vr0, $sp, 680
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_21E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_21E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	st.d	$a0, $sp, 704
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_21E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_21E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 696
.Ltmp240:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a2, $a0, %pc_lo12(.L.str.16)
	addi.d	$a0, $sp, 712
	addi.d	$a1, $sp, 680
	pcaddu18i	$ra, %call36(_ZL19checkVectorFunctionIifEvSt8functionIFT_PT0_S3_S1_EES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp241:                               # EH_LABEL
# %bb.83:
	ld.d	$a3, $sp, 696
	beqz	$a3, .LBB0_85
# %bb.84:
.Ltmp249:                               # EH_LABEL
	addi.d	$a0, $sp, 680
	addi.d	$a1, $sp, 680
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp250:                               # EH_LABEL
.LBB0_85:                               # %_ZNSt14_Function_baseD2Ev.exit93
	ld.d	$a3, $sp, 728
	beqz	$a3, .LBB0_87
# %bb.86:
.Ltmp252:                               # EH_LABEL
	addi.d	$a0, $sp, 712
	addi.d	$a1, $sp, 712
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp253:                               # EH_LABEL
.LBB0_87:                               # %_ZNSt14_Function_baseD2Ev.exit95
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 648
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_22E9_M_invokeERKSt9_Any_dataOS0_S7_Os)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_22E9_M_invokeERKSt9_Any_dataOS0_S7_Os)
	st.d	$a0, $sp, 672
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_22E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_22E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 664
	vst	$vr0, $sp, 616
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_23E9_M_invokeERKSt9_Any_dataOS0_S7_Os)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_23E9_M_invokeERKSt9_Any_dataOS0_S7_Os)
	st.d	$a0, $sp, 640
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_23E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_23E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 632
.Ltmp255:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a2, $a0, %pc_lo12(.L.str.17)
	addi.d	$a0, $sp, 648
	addi.d	$a1, $sp, 616
	pcaddu18i	$ra, %call36(_ZL19checkVectorFunctionIssEvSt8functionIFT_PT0_S3_S1_EES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp256:                               # EH_LABEL
# %bb.88:
	ld.d	$a3, $sp, 632
	beqz	$a3, .LBB0_90
# %bb.89:
.Ltmp264:                               # EH_LABEL
	addi.d	$a0, $sp, 616
	addi.d	$a1, $sp, 616
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp265:                               # EH_LABEL
.LBB0_90:                               # %_ZNSt14_Function_baseD2Ev.exit97
	ld.d	$a3, $sp, 664
	beqz	$a3, .LBB0_92
# %bb.91:
.Ltmp267:                               # EH_LABEL
	addi.d	$a0, $sp, 648
	addi.d	$a1, $sp, 648
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp268:                               # EH_LABEL
.LBB0_92:                               # %_ZNSt14_Function_baseD2Ev.exit99
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 584
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_24E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_24E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	st.d	$a0, $sp, 608
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_24E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_24E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 600
	vst	$vr0, $sp, 552
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_25E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_25E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	st.d	$a0, $sp, 576
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_25E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_25E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 568
.Ltmp270:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a2, $a0, %pc_lo12(.L.str.18)
	addi.d	$a0, $sp, 584
	addi.d	$a1, $sp, 552
	pcaddu18i	$ra, %call36(_ZL19checkVectorFunctionIiiEvSt8functionIFT_PT0_S3_S1_EES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp271:                               # EH_LABEL
# %bb.93:
	ld.d	$a3, $sp, 568
	beqz	$a3, .LBB0_95
# %bb.94:
.Ltmp279:                               # EH_LABEL
	addi.d	$a0, $sp, 552
	addi.d	$a1, $sp, 552
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp280:                               # EH_LABEL
.LBB0_95:                               # %_ZNSt14_Function_baseD2Ev.exit101
	ld.d	$a3, $sp, 600
	beqz	$a3, .LBB0_97
# %bb.96:
.Ltmp282:                               # EH_LABEL
	addi.d	$a0, $sp, 584
	addi.d	$a1, $sp, 584
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp283:                               # EH_LABEL
.LBB0_97:                               # %_ZNSt14_Function_baseD2Ev.exit103
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 520
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_24E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_24E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	st.d	$a0, $sp, 544
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_24E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_24E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 536
	vst	$vr0, $sp, 488
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_25E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_25E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	st.d	$a0, $sp, 512
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_25E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_25E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 504
.Ltmp285:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a2, $a0, %pc_lo12(.L.str.19)
	addi.d	$a0, $sp, 520
	addi.d	$a1, $sp, 488
	pcaddu18i	$ra, %call36(_ZL19checkVectorFunctionIifEvSt8functionIFT_PT0_S3_S1_EES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp286:                               # EH_LABEL
# %bb.98:
	ld.d	$a3, $sp, 504
	beqz	$a3, .LBB0_100
# %bb.99:
.Ltmp294:                               # EH_LABEL
	addi.d	$a0, $sp, 488
	addi.d	$a1, $sp, 488
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp295:                               # EH_LABEL
.LBB0_100:                              # %_ZNSt14_Function_baseD2Ev.exit105
	ld.d	$a3, $sp, 536
	beqz	$a3, .LBB0_102
# %bb.101:
.Ltmp297:                               # EH_LABEL
	addi.d	$a0, $sp, 520
	addi.d	$a1, $sp, 520
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp298:                               # EH_LABEL
.LBB0_102:                              # %_ZNSt14_Function_baseD2Ev.exit107
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 456
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_26E9_M_invokeERKSt9_Any_dataOS0_S7_Os)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_26E9_M_invokeERKSt9_Any_dataOS0_S7_Os)
	st.d	$a0, $sp, 480
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_26E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_26E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 472
	vst	$vr0, $sp, 424
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_27E9_M_invokeERKSt9_Any_dataOS0_S7_Os)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_27E9_M_invokeERKSt9_Any_dataOS0_S7_Os)
	st.d	$a0, $sp, 448
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_27E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_27E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 440
.Ltmp300:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a2, $a0, %pc_lo12(.L.str.20)
	addi.d	$a0, $sp, 456
	addi.d	$a1, $sp, 424
	pcaddu18i	$ra, %call36(_ZL19checkVectorFunctionIssEvSt8functionIFT_PT0_S3_S1_EES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp301:                               # EH_LABEL
# %bb.103:
	ld.d	$a3, $sp, 440
	beqz	$a3, .LBB0_105
# %bb.104:
.Ltmp309:                               # EH_LABEL
	addi.d	$a0, $sp, 424
	addi.d	$a1, $sp, 424
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp310:                               # EH_LABEL
.LBB0_105:                              # %_ZNSt14_Function_baseD2Ev.exit109
	ld.d	$a3, $sp, 472
	beqz	$a3, .LBB0_107
# %bb.106:
.Ltmp312:                               # EH_LABEL
	addi.d	$a0, $sp, 456
	addi.d	$a1, $sp, 456
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp313:                               # EH_LABEL
.LBB0_107:                              # %_ZNSt14_Function_baseD2Ev.exit111
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 392
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_28E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_28E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	st.d	$a0, $sp, 416
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_28E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_28E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 408
	vst	$vr0, $sp, 360
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_29E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_29E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	st.d	$a0, $sp, 384
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_29E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_29E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 376
.Ltmp315:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a2, $a0, %pc_lo12(.L.str.21)
	addi.d	$a0, $sp, 392
	addi.d	$a1, $sp, 360
	pcaddu18i	$ra, %call36(_ZL19checkVectorFunctionIiiEvSt8functionIFT_PT0_S3_S1_EES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp316:                               # EH_LABEL
# %bb.108:
	ld.d	$a3, $sp, 376
	beqz	$a3, .LBB0_110
# %bb.109:
.Ltmp324:                               # EH_LABEL
	addi.d	$a0, $sp, 360
	addi.d	$a1, $sp, 360
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp325:                               # EH_LABEL
.LBB0_110:                              # %_ZNSt14_Function_baseD2Ev.exit113
	ld.d	$a3, $sp, 408
	beqz	$a3, .LBB0_112
# %bb.111:
.Ltmp327:                               # EH_LABEL
	addi.d	$a0, $sp, 392
	addi.d	$a1, $sp, 392
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp328:                               # EH_LABEL
.LBB0_112:                              # %_ZNSt14_Function_baseD2Ev.exit115
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 328
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_28E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_28E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	st.d	$a0, $sp, 352
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_28E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_28E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 344
	vst	$vr0, $sp, 296
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_29E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_29E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	st.d	$a0, $sp, 320
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_29E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_29E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 312
.Ltmp330:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a2, $a0, %pc_lo12(.L.str.22)
	addi.d	$a0, $sp, 328
	addi.d	$a1, $sp, 296
	pcaddu18i	$ra, %call36(_ZL19checkVectorFunctionIifEvSt8functionIFT_PT0_S3_S1_EES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp331:                               # EH_LABEL
# %bb.113:
	ld.d	$a3, $sp, 312
	beqz	$a3, .LBB0_115
# %bb.114:
.Ltmp339:                               # EH_LABEL
	addi.d	$a0, $sp, 296
	addi.d	$a1, $sp, 296
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp340:                               # EH_LABEL
.LBB0_115:                              # %_ZNSt14_Function_baseD2Ev.exit117
	ld.d	$a3, $sp, 344
	beqz	$a3, .LBB0_117
# %bb.116:
.Ltmp342:                               # EH_LABEL
	addi.d	$a0, $sp, 328
	addi.d	$a1, $sp, 328
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp343:                               # EH_LABEL
.LBB0_117:                              # %_ZNSt14_Function_baseD2Ev.exit119
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 264
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_30E9_M_invokeERKSt9_Any_dataOS0_S7_Os)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_30E9_M_invokeERKSt9_Any_dataOS0_S7_Os)
	st.d	$a0, $sp, 288
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_30E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_30E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 280
	vst	$vr0, $sp, 232
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_31E9_M_invokeERKSt9_Any_dataOS0_S7_Os)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_31E9_M_invokeERKSt9_Any_dataOS0_S7_Os)
	st.d	$a0, $sp, 256
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_31E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_31E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 248
.Ltmp345:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a2, $a0, %pc_lo12(.L.str.23)
	addi.d	$a0, $sp, 264
	addi.d	$a1, $sp, 232
	pcaddu18i	$ra, %call36(_ZL19checkVectorFunctionIssEvSt8functionIFT_PT0_S3_S1_EES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp346:                               # EH_LABEL
# %bb.118:
	ld.d	$a3, $sp, 248
	beqz	$a3, .LBB0_120
# %bb.119:
.Ltmp354:                               # EH_LABEL
	addi.d	$a0, $sp, 232
	addi.d	$a1, $sp, 232
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp355:                               # EH_LABEL
.LBB0_120:                              # %_ZNSt14_Function_baseD2Ev.exit121
	ld.d	$a3, $sp, 280
	beqz	$a3, .LBB0_122
# %bb.121:
.Ltmp357:                               # EH_LABEL
	addi.d	$a0, $sp, 264
	addi.d	$a1, $sp, 264
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp358:                               # EH_LABEL
.LBB0_122:                              # %_ZNSt14_Function_baseD2Ev.exit123
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 200
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_32E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_32E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	st.d	$a0, $sp, 224
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_32E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_32E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 216
	vst	$vr0, $sp, 168
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_33E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_33E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	st.d	$a0, $sp, 192
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_33E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_33E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 184
.Ltmp360:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a2, $a0, %pc_lo12(.L.str.24)
	addi.d	$a0, $sp, 200
	addi.d	$a1, $sp, 168
	pcaddu18i	$ra, %call36(_ZL19checkVectorFunctionIiiEvSt8functionIFT_PT0_S3_S1_EES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp361:                               # EH_LABEL
# %bb.123:
	ld.d	$a3, $sp, 184
	beqz	$a3, .LBB0_125
# %bb.124:
.Ltmp369:                               # EH_LABEL
	addi.d	$a0, $sp, 168
	addi.d	$a1, $sp, 168
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp370:                               # EH_LABEL
.LBB0_125:                              # %_ZNSt14_Function_baseD2Ev.exit125
	ld.d	$a3, $sp, 216
	beqz	$a3, .LBB0_127
# %bb.126:
.Ltmp372:                               # EH_LABEL
	addi.d	$a0, $sp, 200
	addi.d	$a1, $sp, 200
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp373:                               # EH_LABEL
.LBB0_127:                              # %_ZNSt14_Function_baseD2Ev.exit127
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 136
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_32E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_32E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	st.d	$a0, $sp, 160
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_32E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_32E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 152
	vst	$vr0, $sp, 104
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_33E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_33E9_M_invokeERKSt9_Any_dataOS0_S7_Oi)
	st.d	$a0, $sp, 128
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_33E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_33E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 120
.Ltmp375:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a2, $a0, %pc_lo12(.L.str.25)
	addi.d	$a0, $sp, 136
	addi.d	$a1, $sp, 104
	pcaddu18i	$ra, %call36(_ZL19checkVectorFunctionIifEvSt8functionIFT_PT0_S3_S1_EES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp376:                               # EH_LABEL
# %bb.128:
	ld.d	$a3, $sp, 120
	beqz	$a3, .LBB0_130
# %bb.129:
.Ltmp384:                               # EH_LABEL
	addi.d	$a0, $sp, 104
	addi.d	$a1, $sp, 104
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp385:                               # EH_LABEL
.LBB0_130:                              # %_ZNSt14_Function_baseD2Ev.exit129
	ld.d	$a3, $sp, 152
	beqz	$a3, .LBB0_132
# %bb.131:
.Ltmp387:                               # EH_LABEL
	addi.d	$a0, $sp, 136
	addi.d	$a1, $sp, 136
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp388:                               # EH_LABEL
.LBB0_132:                              # %_ZNSt14_Function_baseD2Ev.exit131
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $sp, 72
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_34E9_M_invokeERKSt9_Any_dataOS0_S7_Os)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_34E9_M_invokeERKSt9_Any_dataOS0_S7_Os)
	st.d	$a0, $sp, 96
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_34E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_34E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 88
	vst	$vr0, $sp, 40
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_35E9_M_invokeERKSt9_Any_dataOS0_S7_Os)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_35E9_M_invokeERKSt9_Any_dataOS0_S7_Os)
	st.d	$a0, $sp, 64
	pcalau12i	$a0, %pc_hi20(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_35E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_35E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation)
	st.d	$a0, $sp, 56
.Ltmp390:                               # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a2, $a0, %pc_lo12(.L.str.26)
	addi.d	$a0, $sp, 72
	addi.d	$a1, $sp, 40
	pcaddu18i	$ra, %call36(_ZL19checkVectorFunctionIssEvSt8functionIFT_PT0_S3_S1_EES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp391:                               # EH_LABEL
# %bb.133:
	ld.d	$a3, $sp, 56
	beqz	$a3, .LBB0_135
# %bb.134:
.Ltmp399:                               # EH_LABEL
	addi.d	$a0, $sp, 40
	addi.d	$a1, $sp, 40
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp400:                               # EH_LABEL
.LBB0_135:                              # %_ZNSt14_Function_baseD2Ev.exit133
	ld.d	$a3, $sp, 88
	beqz	$a3, .LBB0_137
# %bb.136:
.Ltmp402:                               # EH_LABEL
	addi.d	$a0, $sp, 72
	addi.d	$a1, $sp, 72
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp403:                               # EH_LABEL
.LBB0_137:                              # %_ZNSt14_Function_baseD2Ev.exit135
	move	$a0, $zero
	lu12i.w	$a1, 1
	ori	$a1, $a1, 656
	add.d	$sp, $sp, $a1
	ld.d	$fp, $sp, 2016                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	ret
.LBB0_138:
.Ltmp404:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_139:
.Ltmp401:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_140:
.Ltmp389:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_141:
.Ltmp386:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_142:
.Ltmp374:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_143:
.Ltmp371:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_144:
.Ltmp359:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_145:
.Ltmp356:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_146:
.Ltmp344:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_147:
.Ltmp341:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_148:
.Ltmp329:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_149:
.Ltmp326:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_150:
.Ltmp314:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_151:
.Ltmp311:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_152:
.Ltmp299:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_153:
.Ltmp296:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_154:
.Ltmp284:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_155:
.Ltmp281:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_156:
.Ltmp269:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_157:
.Ltmp266:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_158:
.Ltmp254:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_159:
.Ltmp251:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_160:
.Ltmp239:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_161:
.Ltmp236:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_162:
.Ltmp224:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_163:
.Ltmp221:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_164:
.Ltmp209:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_165:
.Ltmp206:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_166:
.Ltmp194:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_167:
.Ltmp191:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_168:
.Ltmp179:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_169:
.Ltmp176:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_170:
.Ltmp164:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_171:
.Ltmp161:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_172:
.Ltmp149:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_173:
.Ltmp146:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_174:
.Ltmp134:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_175:
.Ltmp131:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_176:
.Ltmp119:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_177:
.Ltmp116:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_178:
.Ltmp104:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_179:
.Ltmp101:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_180:
.Ltmp89:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_181:
.Ltmp86:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_182:
.Ltmp74:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_183:
.Ltmp71:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_184:
.Ltmp59:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_185:
.Ltmp56:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_186:
.Ltmp44:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_187:
.Ltmp41:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_188:
.Ltmp29:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_189:
.Ltmp26:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_190:
.Ltmp14:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_191:
.Ltmp11:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_192:
.Ltmp392:                               # EH_LABEL
	ld.d	$a3, $sp, 56
	move	$fp, $a0
	beqz	$a3, .LBB0_194
# %bb.193:
.Ltmp393:                               # EH_LABEL
	addi.d	$a0, $sp, 40
	addi.d	$a1, $sp, 40
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp394:                               # EH_LABEL
.LBB0_194:                              # %_ZNSt14_Function_baseD2Ev.exit241
	ld.d	$a3, $sp, 88
	beqz	$a3, .LBB0_352
# %bb.195:
.Ltmp396:                               # EH_LABEL
	addi.d	$a0, $sp, 72
	addi.d	$a1, $sp, 72
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp397:                               # EH_LABEL
	b	.LBB0_352
.LBB0_196:
.Ltmp398:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_197:
.Ltmp395:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_198:
.Ltmp377:                               # EH_LABEL
	ld.d	$a3, $sp, 120
	move	$fp, $a0
	beqz	$a3, .LBB0_200
# %bb.199:
.Ltmp378:                               # EH_LABEL
	addi.d	$a0, $sp, 104
	addi.d	$a1, $sp, 104
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp379:                               # EH_LABEL
.LBB0_200:                              # %_ZNSt14_Function_baseD2Ev.exit237
	ld.d	$a3, $sp, 152
	beqz	$a3, .LBB0_352
# %bb.201:
.Ltmp381:                               # EH_LABEL
	addi.d	$a0, $sp, 136
	addi.d	$a1, $sp, 136
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp382:                               # EH_LABEL
	b	.LBB0_352
.LBB0_202:
.Ltmp383:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_203:
.Ltmp380:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_204:
.Ltmp362:                               # EH_LABEL
	ld.d	$a3, $sp, 184
	move	$fp, $a0
	beqz	$a3, .LBB0_206
# %bb.205:
.Ltmp363:                               # EH_LABEL
	addi.d	$a0, $sp, 168
	addi.d	$a1, $sp, 168
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp364:                               # EH_LABEL
.LBB0_206:                              # %_ZNSt14_Function_baseD2Ev.exit233
	ld.d	$a3, $sp, 216
	beqz	$a3, .LBB0_352
# %bb.207:
.Ltmp366:                               # EH_LABEL
	addi.d	$a0, $sp, 200
	addi.d	$a1, $sp, 200
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp367:                               # EH_LABEL
	b	.LBB0_352
.LBB0_208:
.Ltmp368:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_209:
.Ltmp365:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_210:
.Ltmp347:                               # EH_LABEL
	ld.d	$a3, $sp, 248
	move	$fp, $a0
	beqz	$a3, .LBB0_212
# %bb.211:
.Ltmp348:                               # EH_LABEL
	addi.d	$a0, $sp, 232
	addi.d	$a1, $sp, 232
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp349:                               # EH_LABEL
.LBB0_212:                              # %_ZNSt14_Function_baseD2Ev.exit229
	ld.d	$a3, $sp, 280
	beqz	$a3, .LBB0_352
# %bb.213:
.Ltmp351:                               # EH_LABEL
	addi.d	$a0, $sp, 264
	addi.d	$a1, $sp, 264
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp352:                               # EH_LABEL
	b	.LBB0_352
.LBB0_214:
.Ltmp353:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_215:
.Ltmp350:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_216:
.Ltmp332:                               # EH_LABEL
	ld.d	$a3, $sp, 312
	move	$fp, $a0
	beqz	$a3, .LBB0_218
# %bb.217:
.Ltmp333:                               # EH_LABEL
	addi.d	$a0, $sp, 296
	addi.d	$a1, $sp, 296
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp334:                               # EH_LABEL
.LBB0_218:                              # %_ZNSt14_Function_baseD2Ev.exit225
	ld.d	$a3, $sp, 344
	beqz	$a3, .LBB0_352
# %bb.219:
.Ltmp336:                               # EH_LABEL
	addi.d	$a0, $sp, 328
	addi.d	$a1, $sp, 328
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp337:                               # EH_LABEL
	b	.LBB0_352
.LBB0_220:
.Ltmp338:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_221:
.Ltmp335:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_222:
.Ltmp317:                               # EH_LABEL
	ld.d	$a3, $sp, 376
	move	$fp, $a0
	beqz	$a3, .LBB0_224
# %bb.223:
.Ltmp318:                               # EH_LABEL
	addi.d	$a0, $sp, 360
	addi.d	$a1, $sp, 360
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp319:                               # EH_LABEL
.LBB0_224:                              # %_ZNSt14_Function_baseD2Ev.exit221
	ld.d	$a3, $sp, 408
	beqz	$a3, .LBB0_352
# %bb.225:
.Ltmp321:                               # EH_LABEL
	addi.d	$a0, $sp, 392
	addi.d	$a1, $sp, 392
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp322:                               # EH_LABEL
	b	.LBB0_352
.LBB0_226:
.Ltmp323:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_227:
.Ltmp320:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_228:
.Ltmp302:                               # EH_LABEL
	ld.d	$a3, $sp, 440
	move	$fp, $a0
	beqz	$a3, .LBB0_230
# %bb.229:
.Ltmp303:                               # EH_LABEL
	addi.d	$a0, $sp, 424
	addi.d	$a1, $sp, 424
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp304:                               # EH_LABEL
.LBB0_230:                              # %_ZNSt14_Function_baseD2Ev.exit217
	ld.d	$a3, $sp, 472
	beqz	$a3, .LBB0_352
# %bb.231:
.Ltmp306:                               # EH_LABEL
	addi.d	$a0, $sp, 456
	addi.d	$a1, $sp, 456
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp307:                               # EH_LABEL
	b	.LBB0_352
.LBB0_232:
.Ltmp308:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_233:
.Ltmp305:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_234:
.Ltmp287:                               # EH_LABEL
	ld.d	$a3, $sp, 504
	move	$fp, $a0
	beqz	$a3, .LBB0_236
# %bb.235:
.Ltmp288:                               # EH_LABEL
	addi.d	$a0, $sp, 488
	addi.d	$a1, $sp, 488
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp289:                               # EH_LABEL
.LBB0_236:                              # %_ZNSt14_Function_baseD2Ev.exit213
	ld.d	$a3, $sp, 536
	beqz	$a3, .LBB0_352
# %bb.237:
.Ltmp291:                               # EH_LABEL
	addi.d	$a0, $sp, 520
	addi.d	$a1, $sp, 520
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp292:                               # EH_LABEL
	b	.LBB0_352
.LBB0_238:
.Ltmp293:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_239:
.Ltmp290:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_240:
.Ltmp272:                               # EH_LABEL
	ld.d	$a3, $sp, 568
	move	$fp, $a0
	beqz	$a3, .LBB0_242
# %bb.241:
.Ltmp273:                               # EH_LABEL
	addi.d	$a0, $sp, 552
	addi.d	$a1, $sp, 552
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp274:                               # EH_LABEL
.LBB0_242:                              # %_ZNSt14_Function_baseD2Ev.exit209
	ld.d	$a3, $sp, 600
	beqz	$a3, .LBB0_352
# %bb.243:
.Ltmp276:                               # EH_LABEL
	addi.d	$a0, $sp, 584
	addi.d	$a1, $sp, 584
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp277:                               # EH_LABEL
	b	.LBB0_352
.LBB0_244:
.Ltmp278:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_245:
.Ltmp275:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_246:
.Ltmp257:                               # EH_LABEL
	ld.d	$a3, $sp, 632
	move	$fp, $a0
	beqz	$a3, .LBB0_248
# %bb.247:
.Ltmp258:                               # EH_LABEL
	addi.d	$a0, $sp, 616
	addi.d	$a1, $sp, 616
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp259:                               # EH_LABEL
.LBB0_248:                              # %_ZNSt14_Function_baseD2Ev.exit205
	ld.d	$a3, $sp, 664
	beqz	$a3, .LBB0_352
# %bb.249:
.Ltmp261:                               # EH_LABEL
	addi.d	$a0, $sp, 648
	addi.d	$a1, $sp, 648
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp262:                               # EH_LABEL
	b	.LBB0_352
.LBB0_250:
.Ltmp263:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_251:
.Ltmp260:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_252:
.Ltmp242:                               # EH_LABEL
	ld.d	$a3, $sp, 696
	move	$fp, $a0
	beqz	$a3, .LBB0_254
# %bb.253:
.Ltmp243:                               # EH_LABEL
	addi.d	$a0, $sp, 680
	addi.d	$a1, $sp, 680
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp244:                               # EH_LABEL
.LBB0_254:                              # %_ZNSt14_Function_baseD2Ev.exit201
	ld.d	$a3, $sp, 728
	beqz	$a3, .LBB0_352
# %bb.255:
.Ltmp246:                               # EH_LABEL
	addi.d	$a0, $sp, 712
	addi.d	$a1, $sp, 712
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp247:                               # EH_LABEL
	b	.LBB0_352
.LBB0_256:
.Ltmp248:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_257:
.Ltmp245:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_258:
.Ltmp227:                               # EH_LABEL
	ld.d	$a3, $sp, 760
	move	$fp, $a0
	beqz	$a3, .LBB0_260
# %bb.259:
.Ltmp228:                               # EH_LABEL
	addi.d	$a0, $sp, 744
	addi.d	$a1, $sp, 744
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp229:                               # EH_LABEL
.LBB0_260:                              # %_ZNSt14_Function_baseD2Ev.exit197
	ld.d	$a3, $sp, 792
	beqz	$a3, .LBB0_352
# %bb.261:
.Ltmp231:                               # EH_LABEL
	addi.d	$a0, $sp, 776
	addi.d	$a1, $sp, 776
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp232:                               # EH_LABEL
	b	.LBB0_352
.LBB0_262:
.Ltmp233:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_263:
.Ltmp230:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_264:
.Ltmp212:                               # EH_LABEL
	ld.d	$a3, $sp, 824
	move	$fp, $a0
	beqz	$a3, .LBB0_266
# %bb.265:
.Ltmp213:                               # EH_LABEL
	addi.d	$a0, $sp, 808
	addi.d	$a1, $sp, 808
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp214:                               # EH_LABEL
.LBB0_266:                              # %_ZNSt14_Function_baseD2Ev.exit193
	ld.d	$a3, $sp, 856
	beqz	$a3, .LBB0_352
# %bb.267:
.Ltmp216:                               # EH_LABEL
	addi.d	$a0, $sp, 840
	addi.d	$a1, $sp, 840
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp217:                               # EH_LABEL
	b	.LBB0_352
.LBB0_268:
.Ltmp218:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_269:
.Ltmp215:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_270:
.Ltmp197:                               # EH_LABEL
	ld.d	$a3, $sp, 888
	move	$fp, $a0
	beqz	$a3, .LBB0_272
# %bb.271:
.Ltmp198:                               # EH_LABEL
	addi.d	$a0, $sp, 872
	addi.d	$a1, $sp, 872
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp199:                               # EH_LABEL
.LBB0_272:                              # %_ZNSt14_Function_baseD2Ev.exit189
	ld.d	$a3, $sp, 920
	beqz	$a3, .LBB0_352
# %bb.273:
.Ltmp201:                               # EH_LABEL
	addi.d	$a0, $sp, 904
	addi.d	$a1, $sp, 904
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp202:                               # EH_LABEL
	b	.LBB0_352
.LBB0_274:
.Ltmp203:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_275:
.Ltmp200:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_276:
.Ltmp182:                               # EH_LABEL
	ld.d	$a3, $sp, 952
	move	$fp, $a0
	beqz	$a3, .LBB0_278
# %bb.277:
.Ltmp183:                               # EH_LABEL
	addi.d	$a0, $sp, 936
	addi.d	$a1, $sp, 936
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp184:                               # EH_LABEL
.LBB0_278:                              # %_ZNSt14_Function_baseD2Ev.exit185
	ld.d	$a3, $sp, 984
	beqz	$a3, .LBB0_352
# %bb.279:
.Ltmp186:                               # EH_LABEL
	addi.d	$a0, $sp, 968
	addi.d	$a1, $sp, 968
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp187:                               # EH_LABEL
	b	.LBB0_352
.LBB0_280:
.Ltmp188:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_281:
.Ltmp185:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_282:
.Ltmp167:                               # EH_LABEL
	ld.d	$a3, $sp, 1016
	move	$fp, $a0
	beqz	$a3, .LBB0_284
# %bb.283:
.Ltmp168:                               # EH_LABEL
	addi.d	$a0, $sp, 1000
	addi.d	$a1, $sp, 1000
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp169:                               # EH_LABEL
.LBB0_284:                              # %_ZNSt14_Function_baseD2Ev.exit181
	ld.d	$a3, $sp, 1048
	beqz	$a3, .LBB0_352
# %bb.285:
.Ltmp171:                               # EH_LABEL
	addi.d	$a0, $sp, 1032
	addi.d	$a1, $sp, 1032
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp172:                               # EH_LABEL
	b	.LBB0_352
.LBB0_286:
.Ltmp173:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_287:
.Ltmp170:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_288:
.Ltmp152:                               # EH_LABEL
	ld.d	$a3, $sp, 1080
	move	$fp, $a0
	beqz	$a3, .LBB0_290
# %bb.289:
.Ltmp153:                               # EH_LABEL
	addi.d	$a0, $sp, 1064
	addi.d	$a1, $sp, 1064
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp154:                               # EH_LABEL
.LBB0_290:                              # %_ZNSt14_Function_baseD2Ev.exit177
	ld.d	$a3, $sp, 1112
	beqz	$a3, .LBB0_352
# %bb.291:
.Ltmp156:                               # EH_LABEL
	addi.d	$a0, $sp, 1096
	addi.d	$a1, $sp, 1096
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp157:                               # EH_LABEL
	b	.LBB0_352
.LBB0_292:
.Ltmp158:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_293:
.Ltmp155:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_294:
.Ltmp137:                               # EH_LABEL
	ld.d	$a3, $sp, 1144
	move	$fp, $a0
	beqz	$a3, .LBB0_296
# %bb.295:
.Ltmp138:                               # EH_LABEL
	addi.d	$a0, $sp, 1128
	addi.d	$a1, $sp, 1128
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp139:                               # EH_LABEL
.LBB0_296:                              # %_ZNSt14_Function_baseD2Ev.exit173
	ld.d	$a3, $sp, 1176
	beqz	$a3, .LBB0_352
# %bb.297:
.Ltmp141:                               # EH_LABEL
	addi.d	$a0, $sp, 1160
	addi.d	$a1, $sp, 1160
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp142:                               # EH_LABEL
	b	.LBB0_352
.LBB0_298:
.Ltmp143:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_299:
.Ltmp140:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_300:
.Ltmp122:                               # EH_LABEL
	ld.d	$a3, $sp, 1208
	move	$fp, $a0
	beqz	$a3, .LBB0_302
# %bb.301:
.Ltmp123:                               # EH_LABEL
	addi.d	$a0, $sp, 1192
	addi.d	$a1, $sp, 1192
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp124:                               # EH_LABEL
.LBB0_302:                              # %_ZNSt14_Function_baseD2Ev.exit169
	ld.d	$a3, $sp, 1240
	beqz	$a3, .LBB0_352
# %bb.303:
.Ltmp126:                               # EH_LABEL
	addi.d	$a0, $sp, 1224
	addi.d	$a1, $sp, 1224
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp127:                               # EH_LABEL
	b	.LBB0_352
.LBB0_304:
.Ltmp128:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_305:
.Ltmp125:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_306:
.Ltmp107:                               # EH_LABEL
	ld.d	$a3, $sp, 1272
	move	$fp, $a0
	beqz	$a3, .LBB0_308
# %bb.307:
.Ltmp108:                               # EH_LABEL
	addi.d	$a0, $sp, 1256
	addi.d	$a1, $sp, 1256
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp109:                               # EH_LABEL
.LBB0_308:                              # %_ZNSt14_Function_baseD2Ev.exit165
	ld.d	$a3, $sp, 1304
	beqz	$a3, .LBB0_352
# %bb.309:
.Ltmp111:                               # EH_LABEL
	addi.d	$a0, $sp, 1288
	addi.d	$a1, $sp, 1288
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp112:                               # EH_LABEL
	b	.LBB0_352
.LBB0_310:
.Ltmp113:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_311:
.Ltmp110:                               # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_312:
.Ltmp92:                                # EH_LABEL
	ld.d	$a3, $sp, 1336
	move	$fp, $a0
	beqz	$a3, .LBB0_314
# %bb.313:
.Ltmp93:                                # EH_LABEL
	addi.d	$a0, $sp, 1320
	addi.d	$a1, $sp, 1320
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp94:                                # EH_LABEL
.LBB0_314:                              # %_ZNSt14_Function_baseD2Ev.exit161
	ld.d	$a3, $sp, 1368
	beqz	$a3, .LBB0_352
# %bb.315:
.Ltmp96:                                # EH_LABEL
	addi.d	$a0, $sp, 1352
	addi.d	$a1, $sp, 1352
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp97:                                # EH_LABEL
	b	.LBB0_352
.LBB0_316:
.Ltmp98:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_317:
.Ltmp95:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_318:
.Ltmp77:                                # EH_LABEL
	ld.d	$a3, $sp, 1400
	move	$fp, $a0
	beqz	$a3, .LBB0_320
# %bb.319:
.Ltmp78:                                # EH_LABEL
	addi.d	$a0, $sp, 1384
	addi.d	$a1, $sp, 1384
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp79:                                # EH_LABEL
.LBB0_320:                              # %_ZNSt14_Function_baseD2Ev.exit157
	ld.d	$a3, $sp, 1432
	beqz	$a3, .LBB0_352
# %bb.321:
.Ltmp81:                                # EH_LABEL
	addi.d	$a0, $sp, 1416
	addi.d	$a1, $sp, 1416
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp82:                                # EH_LABEL
	b	.LBB0_352
.LBB0_322:
.Ltmp83:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_323:
.Ltmp80:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_324:
.Ltmp62:                                # EH_LABEL
	ld.d	$a3, $sp, 1464
	move	$fp, $a0
	beqz	$a3, .LBB0_326
# %bb.325:
.Ltmp63:                                # EH_LABEL
	addi.d	$a0, $sp, 1448
	addi.d	$a1, $sp, 1448
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp64:                                # EH_LABEL
.LBB0_326:                              # %_ZNSt14_Function_baseD2Ev.exit153
	ld.d	$a3, $sp, 1496
	beqz	$a3, .LBB0_352
# %bb.327:
.Ltmp66:                                # EH_LABEL
	addi.d	$a0, $sp, 1480
	addi.d	$a1, $sp, 1480
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp67:                                # EH_LABEL
	b	.LBB0_352
.LBB0_328:
.Ltmp68:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_329:
.Ltmp65:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_330:
.Ltmp47:                                # EH_LABEL
	ld.d	$a3, $sp, 1528
	move	$fp, $a0
	beqz	$a3, .LBB0_332
# %bb.331:
.Ltmp48:                                # EH_LABEL
	addi.d	$a0, $sp, 1512
	addi.d	$a1, $sp, 1512
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp49:                                # EH_LABEL
.LBB0_332:                              # %_ZNSt14_Function_baseD2Ev.exit149
	ld.d	$a3, $sp, 1560
	beqz	$a3, .LBB0_352
# %bb.333:
.Ltmp51:                                # EH_LABEL
	addi.d	$a0, $sp, 1544
	addi.d	$a1, $sp, 1544
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp52:                                # EH_LABEL
	b	.LBB0_352
.LBB0_334:
.Ltmp53:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_335:
.Ltmp50:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_336:
.Ltmp32:                                # EH_LABEL
	ld.d	$a3, $sp, 1592
	move	$fp, $a0
	beqz	$a3, .LBB0_338
# %bb.337:
.Ltmp33:                                # EH_LABEL
	addi.d	$a0, $sp, 1576
	addi.d	$a1, $sp, 1576
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp34:                                # EH_LABEL
.LBB0_338:                              # %_ZNSt14_Function_baseD2Ev.exit145
	ld.d	$a3, $sp, 1624
	beqz	$a3, .LBB0_352
# %bb.339:
.Ltmp36:                                # EH_LABEL
	addi.d	$a0, $sp, 1608
	addi.d	$a1, $sp, 1608
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp37:                                # EH_LABEL
	b	.LBB0_352
.LBB0_340:
.Ltmp38:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_341:
.Ltmp35:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_342:
.Ltmp17:                                # EH_LABEL
	ld.d	$a3, $sp, 1656
	move	$fp, $a0
	beqz	$a3, .LBB0_344
# %bb.343:
.Ltmp18:                                # EH_LABEL
	addi.d	$a0, $sp, 1640
	addi.d	$a1, $sp, 1640
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp19:                                # EH_LABEL
.LBB0_344:                              # %_ZNSt14_Function_baseD2Ev.exit141
	ld.d	$a3, $sp, 1688
	beqz	$a3, .LBB0_352
# %bb.345:
.Ltmp21:                                # EH_LABEL
	addi.d	$a0, $sp, 1672
	addi.d	$a1, $sp, 1672
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp22:                                # EH_LABEL
	b	.LBB0_352
.LBB0_346:
.Ltmp23:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_347:
.Ltmp20:                                # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_348:
.Ltmp2:                                 # EH_LABEL
	ld.d	$a3, $sp, 1720
	move	$fp, $a0
	beqz	$a3, .LBB0_350
# %bb.349:
.Ltmp3:                                 # EH_LABEL
	addi.d	$a0, $sp, 1704
	addi.d	$a1, $sp, 1704
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp4:                                 # EH_LABEL
.LBB0_350:                              # %_ZNSt14_Function_baseD2Ev.exit137
	ld.d	$a3, $sp, 1752
	beqz	$a3, .LBB0_352
# %bb.351:
.Ltmp6:                                 # EH_LABEL
	addi.d	$a0, $sp, 1736
	addi.d	$a1, $sp, 1736
	ori	$a2, $zero, 3
	jirl	$ra, $a3, 0
.Ltmp7:                                 # EH_LABEL
.LBB0_352:                              # %_ZNSt14_Function_baseD2Ev.exit139
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB0_353:
.Ltmp8:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB0_354:
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
	.uleb128 .Ltmp403-.Lfunc_begin0         # >> Call Site 83 <<
	.uleb128 .Ltmp393-.Ltmp403              #   Call between .Ltmp403 and .Ltmp393
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp393-.Lfunc_begin0         # >> Call Site 84 <<
	.uleb128 .Ltmp394-.Ltmp393              #   Call between .Ltmp393 and .Ltmp394
	.uleb128 .Ltmp395-.Lfunc_begin0         #     jumps to .Ltmp395
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp396-.Lfunc_begin0         # >> Call Site 85 <<
	.uleb128 .Ltmp397-.Ltmp396              #   Call between .Ltmp396 and .Ltmp397
	.uleb128 .Ltmp398-.Lfunc_begin0         #     jumps to .Ltmp398
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp397-.Lfunc_begin0         # >> Call Site 86 <<
	.uleb128 .Ltmp378-.Ltmp397              #   Call between .Ltmp397 and .Ltmp378
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp378-.Lfunc_begin0         # >> Call Site 87 <<
	.uleb128 .Ltmp379-.Ltmp378              #   Call between .Ltmp378 and .Ltmp379
	.uleb128 .Ltmp380-.Lfunc_begin0         #     jumps to .Ltmp380
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp381-.Lfunc_begin0         # >> Call Site 88 <<
	.uleb128 .Ltmp382-.Ltmp381              #   Call between .Ltmp381 and .Ltmp382
	.uleb128 .Ltmp383-.Lfunc_begin0         #     jumps to .Ltmp383
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp382-.Lfunc_begin0         # >> Call Site 89 <<
	.uleb128 .Ltmp363-.Ltmp382              #   Call between .Ltmp382 and .Ltmp363
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp363-.Lfunc_begin0         # >> Call Site 90 <<
	.uleb128 .Ltmp364-.Ltmp363              #   Call between .Ltmp363 and .Ltmp364
	.uleb128 .Ltmp365-.Lfunc_begin0         #     jumps to .Ltmp365
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp366-.Lfunc_begin0         # >> Call Site 91 <<
	.uleb128 .Ltmp367-.Ltmp366              #   Call between .Ltmp366 and .Ltmp367
	.uleb128 .Ltmp368-.Lfunc_begin0         #     jumps to .Ltmp368
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp367-.Lfunc_begin0         # >> Call Site 92 <<
	.uleb128 .Ltmp348-.Ltmp367              #   Call between .Ltmp367 and .Ltmp348
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp348-.Lfunc_begin0         # >> Call Site 93 <<
	.uleb128 .Ltmp349-.Ltmp348              #   Call between .Ltmp348 and .Ltmp349
	.uleb128 .Ltmp350-.Lfunc_begin0         #     jumps to .Ltmp350
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp351-.Lfunc_begin0         # >> Call Site 94 <<
	.uleb128 .Ltmp352-.Ltmp351              #   Call between .Ltmp351 and .Ltmp352
	.uleb128 .Ltmp353-.Lfunc_begin0         #     jumps to .Ltmp353
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp352-.Lfunc_begin0         # >> Call Site 95 <<
	.uleb128 .Ltmp333-.Ltmp352              #   Call between .Ltmp352 and .Ltmp333
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp333-.Lfunc_begin0         # >> Call Site 96 <<
	.uleb128 .Ltmp334-.Ltmp333              #   Call between .Ltmp333 and .Ltmp334
	.uleb128 .Ltmp335-.Lfunc_begin0         #     jumps to .Ltmp335
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp336-.Lfunc_begin0         # >> Call Site 97 <<
	.uleb128 .Ltmp337-.Ltmp336              #   Call between .Ltmp336 and .Ltmp337
	.uleb128 .Ltmp338-.Lfunc_begin0         #     jumps to .Ltmp338
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp337-.Lfunc_begin0         # >> Call Site 98 <<
	.uleb128 .Ltmp318-.Ltmp337              #   Call between .Ltmp337 and .Ltmp318
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp318-.Lfunc_begin0         # >> Call Site 99 <<
	.uleb128 .Ltmp319-.Ltmp318              #   Call between .Ltmp318 and .Ltmp319
	.uleb128 .Ltmp320-.Lfunc_begin0         #     jumps to .Ltmp320
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp321-.Lfunc_begin0         # >> Call Site 100 <<
	.uleb128 .Ltmp322-.Ltmp321              #   Call between .Ltmp321 and .Ltmp322
	.uleb128 .Ltmp323-.Lfunc_begin0         #     jumps to .Ltmp323
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp322-.Lfunc_begin0         # >> Call Site 101 <<
	.uleb128 .Ltmp303-.Ltmp322              #   Call between .Ltmp322 and .Ltmp303
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp303-.Lfunc_begin0         # >> Call Site 102 <<
	.uleb128 .Ltmp304-.Ltmp303              #   Call between .Ltmp303 and .Ltmp304
	.uleb128 .Ltmp305-.Lfunc_begin0         #     jumps to .Ltmp305
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp306-.Lfunc_begin0         # >> Call Site 103 <<
	.uleb128 .Ltmp307-.Ltmp306              #   Call between .Ltmp306 and .Ltmp307
	.uleb128 .Ltmp308-.Lfunc_begin0         #     jumps to .Ltmp308
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp307-.Lfunc_begin0         # >> Call Site 104 <<
	.uleb128 .Ltmp288-.Ltmp307              #   Call between .Ltmp307 and .Ltmp288
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp288-.Lfunc_begin0         # >> Call Site 105 <<
	.uleb128 .Ltmp289-.Ltmp288              #   Call between .Ltmp288 and .Ltmp289
	.uleb128 .Ltmp290-.Lfunc_begin0         #     jumps to .Ltmp290
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp291-.Lfunc_begin0         # >> Call Site 106 <<
	.uleb128 .Ltmp292-.Ltmp291              #   Call between .Ltmp291 and .Ltmp292
	.uleb128 .Ltmp293-.Lfunc_begin0         #     jumps to .Ltmp293
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp292-.Lfunc_begin0         # >> Call Site 107 <<
	.uleb128 .Ltmp273-.Ltmp292              #   Call between .Ltmp292 and .Ltmp273
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp273-.Lfunc_begin0         # >> Call Site 108 <<
	.uleb128 .Ltmp274-.Ltmp273              #   Call between .Ltmp273 and .Ltmp274
	.uleb128 .Ltmp275-.Lfunc_begin0         #     jumps to .Ltmp275
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp276-.Lfunc_begin0         # >> Call Site 109 <<
	.uleb128 .Ltmp277-.Ltmp276              #   Call between .Ltmp276 and .Ltmp277
	.uleb128 .Ltmp278-.Lfunc_begin0         #     jumps to .Ltmp278
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp277-.Lfunc_begin0         # >> Call Site 110 <<
	.uleb128 .Ltmp258-.Ltmp277              #   Call between .Ltmp277 and .Ltmp258
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp258-.Lfunc_begin0         # >> Call Site 111 <<
	.uleb128 .Ltmp259-.Ltmp258              #   Call between .Ltmp258 and .Ltmp259
	.uleb128 .Ltmp260-.Lfunc_begin0         #     jumps to .Ltmp260
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp261-.Lfunc_begin0         # >> Call Site 112 <<
	.uleb128 .Ltmp262-.Ltmp261              #   Call between .Ltmp261 and .Ltmp262
	.uleb128 .Ltmp263-.Lfunc_begin0         #     jumps to .Ltmp263
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp262-.Lfunc_begin0         # >> Call Site 113 <<
	.uleb128 .Ltmp243-.Ltmp262              #   Call between .Ltmp262 and .Ltmp243
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp243-.Lfunc_begin0         # >> Call Site 114 <<
	.uleb128 .Ltmp244-.Ltmp243              #   Call between .Ltmp243 and .Ltmp244
	.uleb128 .Ltmp245-.Lfunc_begin0         #     jumps to .Ltmp245
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp246-.Lfunc_begin0         # >> Call Site 115 <<
	.uleb128 .Ltmp247-.Ltmp246              #   Call between .Ltmp246 and .Ltmp247
	.uleb128 .Ltmp248-.Lfunc_begin0         #     jumps to .Ltmp248
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp247-.Lfunc_begin0         # >> Call Site 116 <<
	.uleb128 .Ltmp228-.Ltmp247              #   Call between .Ltmp247 and .Ltmp228
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp228-.Lfunc_begin0         # >> Call Site 117 <<
	.uleb128 .Ltmp229-.Ltmp228              #   Call between .Ltmp228 and .Ltmp229
	.uleb128 .Ltmp230-.Lfunc_begin0         #     jumps to .Ltmp230
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp231-.Lfunc_begin0         # >> Call Site 118 <<
	.uleb128 .Ltmp232-.Ltmp231              #   Call between .Ltmp231 and .Ltmp232
	.uleb128 .Ltmp233-.Lfunc_begin0         #     jumps to .Ltmp233
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp232-.Lfunc_begin0         # >> Call Site 119 <<
	.uleb128 .Ltmp213-.Ltmp232              #   Call between .Ltmp232 and .Ltmp213
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp213-.Lfunc_begin0         # >> Call Site 120 <<
	.uleb128 .Ltmp214-.Ltmp213              #   Call between .Ltmp213 and .Ltmp214
	.uleb128 .Ltmp215-.Lfunc_begin0         #     jumps to .Ltmp215
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp216-.Lfunc_begin0         # >> Call Site 121 <<
	.uleb128 .Ltmp217-.Ltmp216              #   Call between .Ltmp216 and .Ltmp217
	.uleb128 .Ltmp218-.Lfunc_begin0         #     jumps to .Ltmp218
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp217-.Lfunc_begin0         # >> Call Site 122 <<
	.uleb128 .Ltmp198-.Ltmp217              #   Call between .Ltmp217 and .Ltmp198
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp198-.Lfunc_begin0         # >> Call Site 123 <<
	.uleb128 .Ltmp199-.Ltmp198              #   Call between .Ltmp198 and .Ltmp199
	.uleb128 .Ltmp200-.Lfunc_begin0         #     jumps to .Ltmp200
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp201-.Lfunc_begin0         # >> Call Site 124 <<
	.uleb128 .Ltmp202-.Ltmp201              #   Call between .Ltmp201 and .Ltmp202
	.uleb128 .Ltmp203-.Lfunc_begin0         #     jumps to .Ltmp203
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp202-.Lfunc_begin0         # >> Call Site 125 <<
	.uleb128 .Ltmp183-.Ltmp202              #   Call between .Ltmp202 and .Ltmp183
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp183-.Lfunc_begin0         # >> Call Site 126 <<
	.uleb128 .Ltmp184-.Ltmp183              #   Call between .Ltmp183 and .Ltmp184
	.uleb128 .Ltmp185-.Lfunc_begin0         #     jumps to .Ltmp185
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp186-.Lfunc_begin0         # >> Call Site 127 <<
	.uleb128 .Ltmp187-.Ltmp186              #   Call between .Ltmp186 and .Ltmp187
	.uleb128 .Ltmp188-.Lfunc_begin0         #     jumps to .Ltmp188
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp187-.Lfunc_begin0         # >> Call Site 128 <<
	.uleb128 .Ltmp168-.Ltmp187              #   Call between .Ltmp187 and .Ltmp168
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp168-.Lfunc_begin0         # >> Call Site 129 <<
	.uleb128 .Ltmp169-.Ltmp168              #   Call between .Ltmp168 and .Ltmp169
	.uleb128 .Ltmp170-.Lfunc_begin0         #     jumps to .Ltmp170
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp171-.Lfunc_begin0         # >> Call Site 130 <<
	.uleb128 .Ltmp172-.Ltmp171              #   Call between .Ltmp171 and .Ltmp172
	.uleb128 .Ltmp173-.Lfunc_begin0         #     jumps to .Ltmp173
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp172-.Lfunc_begin0         # >> Call Site 131 <<
	.uleb128 .Ltmp153-.Ltmp172              #   Call between .Ltmp172 and .Ltmp153
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp153-.Lfunc_begin0         # >> Call Site 132 <<
	.uleb128 .Ltmp154-.Ltmp153              #   Call between .Ltmp153 and .Ltmp154
	.uleb128 .Ltmp155-.Lfunc_begin0         #     jumps to .Ltmp155
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp156-.Lfunc_begin0         # >> Call Site 133 <<
	.uleb128 .Ltmp157-.Ltmp156              #   Call between .Ltmp156 and .Ltmp157
	.uleb128 .Ltmp158-.Lfunc_begin0         #     jumps to .Ltmp158
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp157-.Lfunc_begin0         # >> Call Site 134 <<
	.uleb128 .Ltmp138-.Ltmp157              #   Call between .Ltmp157 and .Ltmp138
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp138-.Lfunc_begin0         # >> Call Site 135 <<
	.uleb128 .Ltmp139-.Ltmp138              #   Call between .Ltmp138 and .Ltmp139
	.uleb128 .Ltmp140-.Lfunc_begin0         #     jumps to .Ltmp140
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp141-.Lfunc_begin0         # >> Call Site 136 <<
	.uleb128 .Ltmp142-.Ltmp141              #   Call between .Ltmp141 and .Ltmp142
	.uleb128 .Ltmp143-.Lfunc_begin0         #     jumps to .Ltmp143
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp142-.Lfunc_begin0         # >> Call Site 137 <<
	.uleb128 .Ltmp123-.Ltmp142              #   Call between .Ltmp142 and .Ltmp123
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp123-.Lfunc_begin0         # >> Call Site 138 <<
	.uleb128 .Ltmp124-.Ltmp123              #   Call between .Ltmp123 and .Ltmp124
	.uleb128 .Ltmp125-.Lfunc_begin0         #     jumps to .Ltmp125
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp126-.Lfunc_begin0         # >> Call Site 139 <<
	.uleb128 .Ltmp127-.Ltmp126              #   Call between .Ltmp126 and .Ltmp127
	.uleb128 .Ltmp128-.Lfunc_begin0         #     jumps to .Ltmp128
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp127-.Lfunc_begin0         # >> Call Site 140 <<
	.uleb128 .Ltmp108-.Ltmp127              #   Call between .Ltmp127 and .Ltmp108
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp108-.Lfunc_begin0         # >> Call Site 141 <<
	.uleb128 .Ltmp109-.Ltmp108              #   Call between .Ltmp108 and .Ltmp109
	.uleb128 .Ltmp110-.Lfunc_begin0         #     jumps to .Ltmp110
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp111-.Lfunc_begin0         # >> Call Site 142 <<
	.uleb128 .Ltmp112-.Ltmp111              #   Call between .Ltmp111 and .Ltmp112
	.uleb128 .Ltmp113-.Lfunc_begin0         #     jumps to .Ltmp113
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp112-.Lfunc_begin0         # >> Call Site 143 <<
	.uleb128 .Ltmp93-.Ltmp112               #   Call between .Ltmp112 and .Ltmp93
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp93-.Lfunc_begin0          # >> Call Site 144 <<
	.uleb128 .Ltmp94-.Ltmp93                #   Call between .Ltmp93 and .Ltmp94
	.uleb128 .Ltmp95-.Lfunc_begin0          #     jumps to .Ltmp95
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp96-.Lfunc_begin0          # >> Call Site 145 <<
	.uleb128 .Ltmp97-.Ltmp96                #   Call between .Ltmp96 and .Ltmp97
	.uleb128 .Ltmp98-.Lfunc_begin0          #     jumps to .Ltmp98
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp97-.Lfunc_begin0          # >> Call Site 146 <<
	.uleb128 .Ltmp78-.Ltmp97                #   Call between .Ltmp97 and .Ltmp78
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp78-.Lfunc_begin0          # >> Call Site 147 <<
	.uleb128 .Ltmp79-.Ltmp78                #   Call between .Ltmp78 and .Ltmp79
	.uleb128 .Ltmp80-.Lfunc_begin0          #     jumps to .Ltmp80
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp81-.Lfunc_begin0          # >> Call Site 148 <<
	.uleb128 .Ltmp82-.Ltmp81                #   Call between .Ltmp81 and .Ltmp82
	.uleb128 .Ltmp83-.Lfunc_begin0          #     jumps to .Ltmp83
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp82-.Lfunc_begin0          # >> Call Site 149 <<
	.uleb128 .Ltmp63-.Ltmp82                #   Call between .Ltmp82 and .Ltmp63
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp63-.Lfunc_begin0          # >> Call Site 150 <<
	.uleb128 .Ltmp64-.Ltmp63                #   Call between .Ltmp63 and .Ltmp64
	.uleb128 .Ltmp65-.Lfunc_begin0          #     jumps to .Ltmp65
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp66-.Lfunc_begin0          # >> Call Site 151 <<
	.uleb128 .Ltmp67-.Ltmp66                #   Call between .Ltmp66 and .Ltmp67
	.uleb128 .Ltmp68-.Lfunc_begin0          #     jumps to .Ltmp68
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp67-.Lfunc_begin0          # >> Call Site 152 <<
	.uleb128 .Ltmp48-.Ltmp67                #   Call between .Ltmp67 and .Ltmp48
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp48-.Lfunc_begin0          # >> Call Site 153 <<
	.uleb128 .Ltmp49-.Ltmp48                #   Call between .Ltmp48 and .Ltmp49
	.uleb128 .Ltmp50-.Lfunc_begin0          #     jumps to .Ltmp50
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp51-.Lfunc_begin0          # >> Call Site 154 <<
	.uleb128 .Ltmp52-.Ltmp51                #   Call between .Ltmp51 and .Ltmp52
	.uleb128 .Ltmp53-.Lfunc_begin0          #     jumps to .Ltmp53
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp52-.Lfunc_begin0          # >> Call Site 155 <<
	.uleb128 .Ltmp33-.Ltmp52                #   Call between .Ltmp52 and .Ltmp33
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp33-.Lfunc_begin0          # >> Call Site 156 <<
	.uleb128 .Ltmp34-.Ltmp33                #   Call between .Ltmp33 and .Ltmp34
	.uleb128 .Ltmp35-.Lfunc_begin0          #     jumps to .Ltmp35
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp36-.Lfunc_begin0          # >> Call Site 157 <<
	.uleb128 .Ltmp37-.Ltmp36                #   Call between .Ltmp36 and .Ltmp37
	.uleb128 .Ltmp38-.Lfunc_begin0          #     jumps to .Ltmp38
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp37-.Lfunc_begin0          # >> Call Site 158 <<
	.uleb128 .Ltmp18-.Ltmp37                #   Call between .Ltmp37 and .Ltmp18
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp18-.Lfunc_begin0          # >> Call Site 159 <<
	.uleb128 .Ltmp19-.Ltmp18                #   Call between .Ltmp18 and .Ltmp19
	.uleb128 .Ltmp20-.Lfunc_begin0          #     jumps to .Ltmp20
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp21-.Lfunc_begin0          # >> Call Site 160 <<
	.uleb128 .Ltmp22-.Ltmp21                #   Call between .Ltmp21 and .Ltmp22
	.uleb128 .Ltmp23-.Lfunc_begin0          #     jumps to .Ltmp23
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp22-.Lfunc_begin0          # >> Call Site 161 <<
	.uleb128 .Ltmp3-.Ltmp22                 #   Call between .Ltmp22 and .Ltmp3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp3-.Lfunc_begin0           # >> Call Site 162 <<
	.uleb128 .Ltmp4-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp4
	.uleb128 .Ltmp5-.Lfunc_begin0           #     jumps to .Ltmp5
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp6-.Lfunc_begin0           # >> Call Site 163 <<
	.uleb128 .Ltmp7-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp7
	.uleb128 .Ltmp8-.Lfunc_begin0           #     jumps to .Ltmp8
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp7-.Lfunc_begin0           # >> Call Site 164 <<
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
	.p2align	5                               # -- Begin function _ZL19checkVectorFunctionIiiEvSt8functionIFT_PT0_S3_S1_EES5_PKc
	.type	_ZL19checkVectorFunctionIiiEvSt8functionIFT_PT0_S3_S1_EES5_PKc,@function
_ZL19checkVectorFunctionIiiEvSt8functionIFT_PT0_S3_S1_EES5_PKc: # @_ZL19checkVectorFunctionIiiEvSt8functionIFT_PT0_S3_S1_EES5_PKc
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception1
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
	move	$fp, $a2
	move	$s1, $a1
	move	$s2, $a0
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$s0, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a1, $a0, %pc_lo12(.L.str.27)
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
	pcalau12i	$a1, %pc_hi20(.L.str.28)
	addi.d	$a1, $a1, %pc_lo12(.L.str.28)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 4000
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$fp, $a0
.Ltmp405:                               # EH_LABEL
	ori	$a0, $zero, 4000
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp406:                               # EH_LABEL
# %bb.4:
	move	$s0, $a0
	lu12i.w	$s6, -524288
	lu52i.d	$s5, $s6, 2047
	st.d	$s5, $sp, 72
	lu12i.w	$s4, -1
	ori	$s7, $s4, 96
	pcalau12i	$a0, %pc_hi20(_ZL3rng)
	addi.d	$s3, $a0, %pc_lo12(_ZL3rng)
	.p2align	4, , 16
.LBB1_5:                                # =>This Inner Loop Header: Depth=1
.Ltmp408:                               # EH_LABEL
	addi.d	$a0, $sp, 72
	addi.d	$a2, $sp, 72
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE)
	jirl	$ra, $ra, 0
.Ltmp409:                               # EH_LABEL
# %bb.6:                                # %.noexc
                                        #   in Loop: Header=BB1_5 Depth=1
	add.d	$a1, $fp, $s7
	addi.d	$s7, $s7, 4
	stptr.w	$a0, $a1, 4000
	bnez	$s7, .LBB1_5
# %bb.7:
	st.d	$s5, $sp, 72
	ori	$s5, $s4, 96
	pcalau12i	$a0, %pc_hi20(_ZL3rng)
	addi.d	$s3, $a0, %pc_lo12(_ZL3rng)
	.p2align	4, , 16
.LBB1_8:                                # =>This Inner Loop Header: Depth=1
.Ltmp411:                               # EH_LABEL
	addi.d	$a0, $sp, 72
	addi.d	$a2, $sp, 72
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE)
	jirl	$ra, $ra, 0
.Ltmp412:                               # EH_LABEL
# %bb.9:                                # %.noexc111
                                        #   in Loop: Header=BB1_8 Depth=1
	add.d	$a1, $s0, $s5
	addi.d	$s5, $s5, 4
	stptr.w	$a0, $a1, 4000
	bnez	$s5, .LBB1_8
# %bb.10:
	ld.d	$a0, $s2, 16
	st.d	$fp, $sp, 72
	st.d	$s0, $sp, 64
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 60
	beqz	$a0, .LBB1_58
# %bb.11:
	ld.d	$a4, $s2, 24
.Ltmp414:                               # EH_LABEL
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 64
	addi.d	$a3, $sp, 60
	move	$a0, $s2
	jirl	$ra, $a4, 0
.Ltmp415:                               # EH_LABEL
# %bb.12:
	move	$s3, $a0
	ld.d	$a0, $s1, 16
	st.d	$fp, $sp, 72
	st.d	$s0, $sp, 64
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 60
	beqz	$a0, .LBB1_60
# %bb.13:
	ld.d	$a4, $s1, 24
.Ltmp416:                               # EH_LABEL
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 64
	addi.d	$a3, $sp, 60
	move	$a0, $s1
	jirl	$ra, $a4, 0
.Ltmp417:                               # EH_LABEL
# %bb.14:
	bne	$s3, $a0, .LBB1_62
# %bb.15:                               # %vector.body.preheader
	ori	$a0, $s4, 96
	lu12i.w	$a1, 524287
	ori	$s5, $a1, 4095
	vreplgr2vr.w	$vr1, $s5
	ori	$a1, $zero, 4000
	ori	$a2, $zero, 4016
	vreplgr2vr.w	$vr0, $s6
	.p2align	4, , 16
.LBB1_16:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a3, $fp, $a0
	vstx	$vr1, $a3, $a1
	vstx	$vr1, $a3, $a2
	add.d	$a3, $s0, $a0
	vstx	$vr0, $a3, $a1
	addi.d	$a0, $a0, 32
	vstx	$vr0, $a3, $a2
	bnez	$a0, .LBB1_16
# %bb.17:                               # %middle.block
	vst	$vr1, $sp, 16                   # 16-byte Folded Spill
	vst	$vr0, $sp, 32                   # 16-byte Folded Spill
	ld.d	$a0, $s2, 16
	st.d	$fp, $sp, 72
	st.d	$s0, $sp, 64
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 60
	beqz	$a0, .LBB1_63
# %bb.18:
	ld.d	$a4, $s2, 24
.Ltmp420:                               # EH_LABEL
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 64
	addi.d	$a3, $sp, 60
	move	$a0, $s2
	jirl	$ra, $a4, 0
.Ltmp421:                               # EH_LABEL
# %bb.19:
	move	$s3, $a0
	ld.d	$a0, $s1, 16
	st.d	$fp, $sp, 72
	st.d	$s0, $sp, 64
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 60
	beqz	$a0, .LBB1_65
# %bb.20:
	ld.d	$a4, $s1, 24
.Ltmp422:                               # EH_LABEL
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 64
	addi.d	$a3, $sp, 60
	move	$a0, $s1
	jirl	$ra, $a4, 0
.Ltmp423:                               # EH_LABEL
# %bb.21:
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vld	$vr1, $sp, 16                   # 16-byte Folded Reload
	bne	$s3, $a0, .LBB1_67
# %bb.22:                               # %vector.body250.preheader
	ori	$a0, $s4, 96
	ori	$a1, $zero, 4000
	ori	$a2, $zero, 4016
	.p2align	4, , 16
.LBB1_23:                               # %vector.body250
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a3, $fp, $a0
	vstx	$vr0, $a3, $a1
	vstx	$vr0, $a3, $a2
	add.d	$a3, $s0, $a0
	vstx	$vr1, $a3, $a1
	addi.d	$a0, $a0, 32
	vstx	$vr1, $a3, $a2
	bnez	$a0, .LBB1_23
# %bb.24:                               # %middle.block253
	ld.d	$a0, $s2, 16
	st.d	$fp, $sp, 72
	st.d	$s0, $sp, 64
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 60
	beqz	$a0, .LBB1_68
# %bb.25:
	ld.d	$a4, $s2, 24
.Ltmp426:                               # EH_LABEL
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 64
	addi.d	$a3, $sp, 60
	move	$a0, $s2
	jirl	$ra, $a4, 0
.Ltmp427:                               # EH_LABEL
# %bb.26:
	move	$s3, $a0
	ld.d	$a0, $s1, 16
	st.d	$fp, $sp, 72
	st.d	$s0, $sp, 64
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 60
	beqz	$a0, .LBB1_70
# %bb.27:
	ld.d	$a4, $s1, 24
.Ltmp428:                               # EH_LABEL
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 64
	addi.d	$a3, $sp, 60
	move	$a0, $s1
	jirl	$ra, $a4, 0
.Ltmp429:                               # EH_LABEL
# %bb.28:
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	bne	$s3, $a0, .LBB1_72
# %bb.29:                               # %vector.body256.preheader
	ori	$a0, $s4, 96
	ori	$a1, $zero, 4000
	ori	$a2, $zero, 4016
	.p2align	4, , 16
.LBB1_30:                               # %vector.body256
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a3, $s0, $a0
	vstx	$vr0, $a3, $a1
	vstx	$vr0, $a3, $a2
	add.d	$a3, $fp, $a0
	vstx	$vr0, $a3, $a1
	addi.d	$a0, $a0, 32
	vstx	$vr0, $a3, $a2
	bnez	$a0, .LBB1_30
# %bb.31:                               # %middle.block259
	stptr.w	$s5, $fp, 3992
	ld.d	$a0, $s2, 16
	st.d	$fp, $sp, 72
	st.d	$s0, $sp, 64
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 60
	beqz	$a0, .LBB1_73
# %bb.32:
	ld.d	$a4, $s2, 24
.Ltmp432:                               # EH_LABEL
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 64
	addi.d	$a3, $sp, 60
	move	$a0, $s2
	jirl	$ra, $a4, 0
.Ltmp433:                               # EH_LABEL
# %bb.33:
	move	$s3, $a0
	ld.d	$a0, $s1, 16
	st.d	$fp, $sp, 72
	st.d	$s0, $sp, 64
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 60
	beqz	$a0, .LBB1_75
# %bb.34:
	ld.d	$a4, $s1, 24
.Ltmp434:                               # EH_LABEL
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 64
	addi.d	$a3, $sp, 60
	move	$a0, $s1
	jirl	$ra, $a4, 0
.Ltmp435:                               # EH_LABEL
# %bb.35:
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	bne	$s3, $a0, .LBB1_77
# %bb.36:                               # %vector.body262.preheader
	ori	$a0, $s4, 96
	ori	$a1, $zero, 4000
	ori	$a2, $zero, 4016
	.p2align	4, , 16
.LBB1_37:                               # %vector.body262
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a3, $s0, $a0
	vstx	$vr0, $a3, $a1
	vstx	$vr0, $a3, $a2
	add.d	$a3, $fp, $a0
	vstx	$vr0, $a3, $a1
	addi.d	$a0, $a0, 32
	vstx	$vr0, $a3, $a2
	bnez	$a0, .LBB1_37
# %bb.38:                               # %middle.block265
	st.w	$s5, $fp, 0
	ld.d	$a0, $s2, 16
	st.d	$fp, $sp, 72
	st.d	$s0, $sp, 64
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 60
	beqz	$a0, .LBB1_78
# %bb.39:
	ld.d	$a4, $s2, 24
.Ltmp438:                               # EH_LABEL
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 64
	addi.d	$a3, $sp, 60
	move	$a0, $s2
	jirl	$ra, $a4, 0
.Ltmp439:                               # EH_LABEL
# %bb.40:
	move	$s3, $a0
	ld.d	$a0, $s1, 16
	st.d	$fp, $sp, 72
	st.d	$s0, $sp, 64
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 60
	beqz	$a0, .LBB1_80
# %bb.41:
	ld.d	$a4, $s1, 24
.Ltmp440:                               # EH_LABEL
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 64
	addi.d	$a3, $sp, 60
	move	$a0, $s1
	jirl	$ra, $a4, 0
.Ltmp441:                               # EH_LABEL
# %bb.42:
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	bne	$s3, $a0, .LBB1_82
# %bb.43:                               # %vector.body268.preheader
	ori	$a0, $s4, 96
	ori	$a1, $zero, 4000
	ori	$a2, $zero, 4016
	.p2align	4, , 16
.LBB1_44:                               # %vector.body268
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a3, $s0, $a0
	vstx	$vr0, $a3, $a1
	vstx	$vr0, $a3, $a2
	add.d	$a3, $fp, $a0
	vstx	$vr0, $a3, $a1
	addi.d	$a0, $a0, 32
	vstx	$vr0, $a3, $a2
	bnez	$a0, .LBB1_44
# %bb.45:                               # %middle.block271
	stptr.w	$s5, $fp, 3996
	ld.d	$a0, $s2, 16
	st.d	$fp, $sp, 72
	st.d	$s0, $sp, 64
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 60
	beqz	$a0, .LBB1_83
# %bb.46:
	ld.d	$a4, $s2, 24
.Ltmp444:                               # EH_LABEL
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 64
	addi.d	$a3, $sp, 60
	move	$a0, $s2
	jirl	$ra, $a4, 0
.Ltmp445:                               # EH_LABEL
# %bb.47:
	move	$s3, $a0
	ld.d	$a0, $s1, 16
	st.d	$fp, $sp, 72
	st.d	$s0, $sp, 64
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 60
	beqz	$a0, .LBB1_85
# %bb.48:
	ld.d	$a4, $s1, 24
.Ltmp446:                               # EH_LABEL
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 64
	addi.d	$a3, $sp, 60
	move	$a0, $s1
	jirl	$ra, $a4, 0
.Ltmp447:                               # EH_LABEL
# %bb.49:
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	bne	$s3, $a0, .LBB1_87
# %bb.50:                               # %vector.body274.preheader
	ori	$a0, $s4, 96
	ori	$a1, $zero, 4000
	ori	$a2, $zero, 4016
	.p2align	4, , 16
.LBB1_51:                               # %vector.body274
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a3, $s0, $a0
	vstx	$vr0, $a3, $a1
	vstx	$vr0, $a3, $a2
	add.d	$a3, $fp, $a0
	vstx	$vr0, $a3, $a1
	addi.d	$a0, $a0, 32
	vstx	$vr0, $a3, $a2
	bnez	$a0, .LBB1_51
# %bb.52:                               # %middle.block277
	stptr.w	$s5, $fp, 3996
	st.w	$s5, $fp, 0
	ld.d	$a0, $s2, 16
	st.d	$fp, $sp, 72
	st.d	$s0, $sp, 64
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 60
	beqz	$a0, .LBB1_88
# %bb.53:
	ld.d	$a4, $s2, 24
.Ltmp450:                               # EH_LABEL
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 64
	addi.d	$a3, $sp, 60
	move	$a0, $s2
	jirl	$ra, $a4, 0
.Ltmp451:                               # EH_LABEL
# %bb.54:
	move	$s2, $a0
	ld.d	$a0, $s1, 16
	st.d	$fp, $sp, 72
	st.d	$s0, $sp, 64
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 60
	beqz	$a0, .LBB1_90
# %bb.55:
	ld.d	$a4, $s1, 24
.Ltmp452:                               # EH_LABEL
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 64
	addi.d	$a3, $sp, 60
	move	$a0, $s1
	jirl	$ra, $a4, 0
.Ltmp453:                               # EH_LABEL
# %bb.56:
	bne	$s2, $a0, .LBB1_92
# %bb.57:                               # %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit170
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
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
.LBB1_58:
.Ltmp495:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp496:                               # EH_LABEL
# %bb.59:                               # %.noexc113
.LBB1_60:
.Ltmp492:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp493:                               # EH_LABEL
# %bb.61:                               # %.noexc116
.LBB1_62:
.Ltmp418:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.29)
	addi.d	$a1, $a1, %pc_lo12(.L.str.29)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp419:                               # EH_LABEL
	b	.LBB1_93
.LBB1_63:
.Ltmp489:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp490:                               # EH_LABEL
# %bb.64:                               # %.noexc120
.LBB1_65:
.Ltmp486:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp487:                               # EH_LABEL
# %bb.66:                               # %.noexc124
.LBB1_67:
.Ltmp424:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.29)
	addi.d	$a1, $a1, %pc_lo12(.L.str.29)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp425:                               # EH_LABEL
	b	.LBB1_93
.LBB1_68:
.Ltmp483:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp484:                               # EH_LABEL
# %bb.69:                               # %.noexc128
.LBB1_70:
.Ltmp480:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp481:                               # EH_LABEL
# %bb.71:                               # %.noexc132
.LBB1_72:
.Ltmp430:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.29)
	addi.d	$a1, $a1, %pc_lo12(.L.str.29)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp431:                               # EH_LABEL
	b	.LBB1_93
.LBB1_73:
.Ltmp477:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp478:                               # EH_LABEL
# %bb.74:                               # %.noexc136
.LBB1_75:
.Ltmp474:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp475:                               # EH_LABEL
# %bb.76:                               # %.noexc140
.LBB1_77:
.Ltmp436:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.29)
	addi.d	$a1, $a1, %pc_lo12(.L.str.29)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp437:                               # EH_LABEL
	b	.LBB1_93
.LBB1_78:
.Ltmp471:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp472:                               # EH_LABEL
# %bb.79:                               # %.noexc144
.LBB1_80:
.Ltmp468:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp469:                               # EH_LABEL
# %bb.81:                               # %.noexc148
.LBB1_82:
.Ltmp442:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.29)
	addi.d	$a1, $a1, %pc_lo12(.L.str.29)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp443:                               # EH_LABEL
	b	.LBB1_93
.LBB1_83:
.Ltmp465:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp466:                               # EH_LABEL
# %bb.84:                               # %.noexc152
.LBB1_85:
.Ltmp462:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp463:                               # EH_LABEL
# %bb.86:                               # %.noexc156
.LBB1_87:
.Ltmp448:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.29)
	addi.d	$a1, $a1, %pc_lo12(.L.str.29)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp449:                               # EH_LABEL
	b	.LBB1_93
.LBB1_88:
.Ltmp459:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp460:                               # EH_LABEL
# %bb.89:                               # %.noexc160
.LBB1_90:
.Ltmp456:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp457:                               # EH_LABEL
# %bb.91:                               # %.noexc164
.LBB1_92:
.Ltmp454:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.29)
	addi.d	$a1, $a1, %pc_lo12(.L.str.29)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp455:                               # EH_LABEL
.LBB1_93:
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB1_94:
.Ltmp407:                               # EH_LABEL
	move	$s1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB1_95:
.Ltmp461:                               # EH_LABEL
	b	.LBB1_111
.LBB1_96:
.Ltmp467:                               # EH_LABEL
	b	.LBB1_111
.LBB1_97:
.Ltmp473:                               # EH_LABEL
	b	.LBB1_111
.LBB1_98:
.Ltmp479:                               # EH_LABEL
	b	.LBB1_111
.LBB1_99:
.Ltmp485:                               # EH_LABEL
	b	.LBB1_111
.LBB1_100:
.Ltmp491:                               # EH_LABEL
	b	.LBB1_111
.LBB1_101:
.Ltmp497:                               # EH_LABEL
	b	.LBB1_111
.LBB1_102:
.Ltmp458:                               # EH_LABEL
	b	.LBB1_111
.LBB1_103:
.Ltmp464:                               # EH_LABEL
	b	.LBB1_111
.LBB1_104:
.Ltmp470:                               # EH_LABEL
	b	.LBB1_111
.LBB1_105:
.Ltmp476:                               # EH_LABEL
	b	.LBB1_111
.LBB1_106:
.Ltmp482:                               # EH_LABEL
	b	.LBB1_111
.LBB1_107:
.Ltmp488:                               # EH_LABEL
	b	.LBB1_111
.LBB1_108:
.Ltmp494:                               # EH_LABEL
	b	.LBB1_111
.LBB1_109:                              # %.loopexit
.Ltmp413:                               # EH_LABEL
	b	.LBB1_111
.LBB1_110:                              # %.loopexit.split-lp
.Ltmp410:                               # EH_LABEL
.LBB1_111:                              # %_ZNSt10unique_ptrIA_iSt14default_deleteIS0_EED2Ev.exit173
	move	$s1, $a0
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
	.size	_ZL19checkVectorFunctionIiiEvSt8functionIFT_PT0_S3_S1_EES5_PKc, .Lfunc_end1-_ZL19checkVectorFunctionIiiEvSt8functionIFT_PT0_S3_S1_EES5_PKc
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
	.uleb128 .Ltmp405-.Lfunc_begin1         #   Call between .Lfunc_begin1 and .Ltmp405
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp405-.Lfunc_begin1         # >> Call Site 2 <<
	.uleb128 .Ltmp406-.Ltmp405              #   Call between .Ltmp405 and .Ltmp406
	.uleb128 .Ltmp407-.Lfunc_begin1         #     jumps to .Ltmp407
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp408-.Lfunc_begin1         # >> Call Site 3 <<
	.uleb128 .Ltmp409-.Ltmp408              #   Call between .Ltmp408 and .Ltmp409
	.uleb128 .Ltmp410-.Lfunc_begin1         #     jumps to .Ltmp410
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp411-.Lfunc_begin1         # >> Call Site 4 <<
	.uleb128 .Ltmp412-.Ltmp411              #   Call between .Ltmp411 and .Ltmp412
	.uleb128 .Ltmp413-.Lfunc_begin1         #     jumps to .Ltmp413
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp414-.Lfunc_begin1         # >> Call Site 5 <<
	.uleb128 .Ltmp415-.Ltmp414              #   Call between .Ltmp414 and .Ltmp415
	.uleb128 .Ltmp497-.Lfunc_begin1         #     jumps to .Ltmp497
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp416-.Lfunc_begin1         # >> Call Site 6 <<
	.uleb128 .Ltmp417-.Ltmp416              #   Call between .Ltmp416 and .Ltmp417
	.uleb128 .Ltmp494-.Lfunc_begin1         #     jumps to .Ltmp494
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp420-.Lfunc_begin1         # >> Call Site 7 <<
	.uleb128 .Ltmp421-.Ltmp420              #   Call between .Ltmp420 and .Ltmp421
	.uleb128 .Ltmp491-.Lfunc_begin1         #     jumps to .Ltmp491
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp422-.Lfunc_begin1         # >> Call Site 8 <<
	.uleb128 .Ltmp423-.Ltmp422              #   Call between .Ltmp422 and .Ltmp423
	.uleb128 .Ltmp488-.Lfunc_begin1         #     jumps to .Ltmp488
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp426-.Lfunc_begin1         # >> Call Site 9 <<
	.uleb128 .Ltmp427-.Ltmp426              #   Call between .Ltmp426 and .Ltmp427
	.uleb128 .Ltmp485-.Lfunc_begin1         #     jumps to .Ltmp485
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp428-.Lfunc_begin1         # >> Call Site 10 <<
	.uleb128 .Ltmp429-.Ltmp428              #   Call between .Ltmp428 and .Ltmp429
	.uleb128 .Ltmp482-.Lfunc_begin1         #     jumps to .Ltmp482
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp432-.Lfunc_begin1         # >> Call Site 11 <<
	.uleb128 .Ltmp433-.Ltmp432              #   Call between .Ltmp432 and .Ltmp433
	.uleb128 .Ltmp479-.Lfunc_begin1         #     jumps to .Ltmp479
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp434-.Lfunc_begin1         # >> Call Site 12 <<
	.uleb128 .Ltmp435-.Ltmp434              #   Call between .Ltmp434 and .Ltmp435
	.uleb128 .Ltmp476-.Lfunc_begin1         #     jumps to .Ltmp476
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp438-.Lfunc_begin1         # >> Call Site 13 <<
	.uleb128 .Ltmp439-.Ltmp438              #   Call between .Ltmp438 and .Ltmp439
	.uleb128 .Ltmp473-.Lfunc_begin1         #     jumps to .Ltmp473
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp440-.Lfunc_begin1         # >> Call Site 14 <<
	.uleb128 .Ltmp441-.Ltmp440              #   Call between .Ltmp440 and .Ltmp441
	.uleb128 .Ltmp470-.Lfunc_begin1         #     jumps to .Ltmp470
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp444-.Lfunc_begin1         # >> Call Site 15 <<
	.uleb128 .Ltmp445-.Ltmp444              #   Call between .Ltmp444 and .Ltmp445
	.uleb128 .Ltmp467-.Lfunc_begin1         #     jumps to .Ltmp467
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp446-.Lfunc_begin1         # >> Call Site 16 <<
	.uleb128 .Ltmp447-.Ltmp446              #   Call between .Ltmp446 and .Ltmp447
	.uleb128 .Ltmp464-.Lfunc_begin1         #     jumps to .Ltmp464
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp450-.Lfunc_begin1         # >> Call Site 17 <<
	.uleb128 .Ltmp451-.Ltmp450              #   Call between .Ltmp450 and .Ltmp451
	.uleb128 .Ltmp461-.Lfunc_begin1         #     jumps to .Ltmp461
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp452-.Lfunc_begin1         # >> Call Site 18 <<
	.uleb128 .Ltmp453-.Ltmp452              #   Call between .Ltmp452 and .Ltmp453
	.uleb128 .Ltmp458-.Lfunc_begin1         #     jumps to .Ltmp458
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp453-.Lfunc_begin1         # >> Call Site 19 <<
	.uleb128 .Ltmp495-.Ltmp453              #   Call between .Ltmp453 and .Ltmp495
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp495-.Lfunc_begin1         # >> Call Site 20 <<
	.uleb128 .Ltmp496-.Ltmp495              #   Call between .Ltmp495 and .Ltmp496
	.uleb128 .Ltmp497-.Lfunc_begin1         #     jumps to .Ltmp497
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp492-.Lfunc_begin1         # >> Call Site 21 <<
	.uleb128 .Ltmp419-.Ltmp492              #   Call between .Ltmp492 and .Ltmp419
	.uleb128 .Ltmp494-.Lfunc_begin1         #     jumps to .Ltmp494
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp489-.Lfunc_begin1         # >> Call Site 22 <<
	.uleb128 .Ltmp490-.Ltmp489              #   Call between .Ltmp489 and .Ltmp490
	.uleb128 .Ltmp491-.Lfunc_begin1         #     jumps to .Ltmp491
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp486-.Lfunc_begin1         # >> Call Site 23 <<
	.uleb128 .Ltmp425-.Ltmp486              #   Call between .Ltmp486 and .Ltmp425
	.uleb128 .Ltmp488-.Lfunc_begin1         #     jumps to .Ltmp488
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp483-.Lfunc_begin1         # >> Call Site 24 <<
	.uleb128 .Ltmp484-.Ltmp483              #   Call between .Ltmp483 and .Ltmp484
	.uleb128 .Ltmp485-.Lfunc_begin1         #     jumps to .Ltmp485
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp480-.Lfunc_begin1         # >> Call Site 25 <<
	.uleb128 .Ltmp431-.Ltmp480              #   Call between .Ltmp480 and .Ltmp431
	.uleb128 .Ltmp482-.Lfunc_begin1         #     jumps to .Ltmp482
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp477-.Lfunc_begin1         # >> Call Site 26 <<
	.uleb128 .Ltmp478-.Ltmp477              #   Call between .Ltmp477 and .Ltmp478
	.uleb128 .Ltmp479-.Lfunc_begin1         #     jumps to .Ltmp479
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp474-.Lfunc_begin1         # >> Call Site 27 <<
	.uleb128 .Ltmp437-.Ltmp474              #   Call between .Ltmp474 and .Ltmp437
	.uleb128 .Ltmp476-.Lfunc_begin1         #     jumps to .Ltmp476
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp471-.Lfunc_begin1         # >> Call Site 28 <<
	.uleb128 .Ltmp472-.Ltmp471              #   Call between .Ltmp471 and .Ltmp472
	.uleb128 .Ltmp473-.Lfunc_begin1         #     jumps to .Ltmp473
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp468-.Lfunc_begin1         # >> Call Site 29 <<
	.uleb128 .Ltmp443-.Ltmp468              #   Call between .Ltmp468 and .Ltmp443
	.uleb128 .Ltmp470-.Lfunc_begin1         #     jumps to .Ltmp470
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp465-.Lfunc_begin1         # >> Call Site 30 <<
	.uleb128 .Ltmp466-.Ltmp465              #   Call between .Ltmp465 and .Ltmp466
	.uleb128 .Ltmp467-.Lfunc_begin1         #     jumps to .Ltmp467
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp462-.Lfunc_begin1         # >> Call Site 31 <<
	.uleb128 .Ltmp449-.Ltmp462              #   Call between .Ltmp462 and .Ltmp449
	.uleb128 .Ltmp464-.Lfunc_begin1         #     jumps to .Ltmp464
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp459-.Lfunc_begin1         # >> Call Site 32 <<
	.uleb128 .Ltmp460-.Ltmp459              #   Call between .Ltmp459 and .Ltmp460
	.uleb128 .Ltmp461-.Lfunc_begin1         #     jumps to .Ltmp461
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp456-.Lfunc_begin1         # >> Call Site 33 <<
	.uleb128 .Ltmp455-.Ltmp456              #   Call between .Ltmp456 and .Ltmp455
	.uleb128 .Ltmp458-.Lfunc_begin1         #     jumps to .Ltmp458
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp455-.Lfunc_begin1         # >> Call Site 34 <<
	.uleb128 .Lfunc_end1-.Ltmp455           #   Call between .Ltmp455 and .Lfunc_end1
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZL19checkVectorFunctionIifEvSt8functionIFT_PT0_S3_S1_EES5_PKc
	.type	_ZL19checkVectorFunctionIifEvSt8functionIFT_PT0_S3_S1_EES5_PKc,@function
_ZL19checkVectorFunctionIifEvSt8functionIFT_PT0_S3_S1_EES5_PKc: # @_ZL19checkVectorFunctionIifEvSt8functionIFT_PT0_S3_S1_EES5_PKc
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	move	$fp, $a2
	move	$s1, $a1
	move	$s2, $a0
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$s0, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a1, $a0, %pc_lo12(.L.str.27)
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
	pcalau12i	$a1, %pc_hi20(.L.str.28)
	addi.d	$a1, $a1, %pc_lo12(.L.str.28)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 4000
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$fp, $a0
.Ltmp498:                               # EH_LABEL
	ori	$a0, $zero, 4000
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp499:                               # EH_LABEL
# %bb.4:
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZL9init_dataIfEvRKSt10unique_ptrIA_T_St14default_deleteIS2_EEj)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZL9init_dataIfEvRKSt10unique_ptrIA_T_St14default_deleteIS2_EEj)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 16
	st.d	$fp, $sp, 72
	st.d	$s0, $sp, 64
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 60
	beqz	$a0, .LBB2_52
# %bb.5:
	ld.d	$a4, $s2, 24
.Ltmp501:                               # EH_LABEL
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 64
	addi.d	$a3, $sp, 60
	move	$a0, $s2
	jirl	$ra, $a4, 0
.Ltmp502:                               # EH_LABEL
# %bb.6:
	move	$s3, $a0
	ld.d	$a0, $s1, 16
	st.d	$fp, $sp, 72
	st.d	$s0, $sp, 64
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 60
	beqz	$a0, .LBB2_54
# %bb.7:
	ld.d	$a4, $s1, 24
.Ltmp503:                               # EH_LABEL
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 64
	addi.d	$a3, $sp, 60
	move	$a0, $s1
	jirl	$ra, $a4, 0
.Ltmp504:                               # EH_LABEL
# %bb.8:
	bne	$s3, $a0, .LBB2_56
# %bb.9:                                # %vector.body.preheader
	lu12i.w	$s5, -1
	ori	$a0, $s5, 96
	lu12i.w	$a1, 522239
	ori	$s4, $a1, 4095
	vreplgr2vr.w	$vr1, $s4
	ori	$a1, $zero, 4000
	ori	$a2, $zero, 4016
	lu12i.w	$a3, 2048
	vreplgr2vr.w	$vr0, $a3
	.p2align	4, , 16
.LBB2_10:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a3, $fp, $a0
	vstx	$vr1, $a3, $a1
	vstx	$vr1, $a3, $a2
	add.d	$a3, $s0, $a0
	vstx	$vr0, $a3, $a1
	addi.d	$a0, $a0, 32
	vstx	$vr0, $a3, $a2
	bnez	$a0, .LBB2_10
# %bb.11:                               # %middle.block
	vst	$vr1, $sp, 16                   # 16-byte Folded Spill
	vst	$vr0, $sp, 32                   # 16-byte Folded Spill
	ld.d	$a0, $s2, 16
	st.d	$fp, $sp, 72
	st.d	$s0, $sp, 64
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 60
	beqz	$a0, .LBB2_57
# %bb.12:
	ld.d	$a4, $s2, 24
.Ltmp507:                               # EH_LABEL
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 64
	addi.d	$a3, $sp, 60
	move	$a0, $s2
	jirl	$ra, $a4, 0
.Ltmp508:                               # EH_LABEL
# %bb.13:
	move	$s3, $a0
	ld.d	$a0, $s1, 16
	st.d	$fp, $sp, 72
	st.d	$s0, $sp, 64
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 60
	beqz	$a0, .LBB2_59
# %bb.14:
	ld.d	$a4, $s1, 24
.Ltmp509:                               # EH_LABEL
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 64
	addi.d	$a3, $sp, 60
	move	$a0, $s1
	jirl	$ra, $a4, 0
.Ltmp510:                               # EH_LABEL
# %bb.15:
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vld	$vr1, $sp, 16                   # 16-byte Folded Reload
	bne	$s3, $a0, .LBB2_61
# %bb.16:                               # %vector.body243.preheader
	ori	$a0, $s5, 96
	ori	$a1, $zero, 4000
	ori	$a2, $zero, 4016
	.p2align	4, , 16
.LBB2_17:                               # %vector.body243
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a3, $fp, $a0
	vstx	$vr0, $a3, $a1
	vstx	$vr0, $a3, $a2
	add.d	$a3, $s0, $a0
	vstx	$vr1, $a3, $a1
	addi.d	$a0, $a0, 32
	vstx	$vr1, $a3, $a2
	bnez	$a0, .LBB2_17
# %bb.18:                               # %middle.block246
	ld.d	$a0, $s2, 16
	st.d	$fp, $sp, 72
	st.d	$s0, $sp, 64
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 60
	beqz	$a0, .LBB2_62
# %bb.19:
	ld.d	$a4, $s2, 24
.Ltmp513:                               # EH_LABEL
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 64
	addi.d	$a3, $sp, 60
	move	$a0, $s2
	jirl	$ra, $a4, 0
.Ltmp514:                               # EH_LABEL
# %bb.20:
	move	$s3, $a0
	ld.d	$a0, $s1, 16
	st.d	$fp, $sp, 72
	st.d	$s0, $sp, 64
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 60
	beqz	$a0, .LBB2_64
# %bb.21:
	ld.d	$a4, $s1, 24
.Ltmp515:                               # EH_LABEL
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 64
	addi.d	$a3, $sp, 60
	move	$a0, $s1
	jirl	$ra, $a4, 0
.Ltmp516:                               # EH_LABEL
# %bb.22:
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	bne	$s3, $a0, .LBB2_66
# %bb.23:                               # %vector.body249.preheader
	ori	$a0, $s5, 96
	ori	$a1, $zero, 4000
	ori	$a2, $zero, 4016
	.p2align	4, , 16
.LBB2_24:                               # %vector.body249
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a3, $s0, $a0
	vstx	$vr0, $a3, $a1
	vstx	$vr0, $a3, $a2
	add.d	$a3, $fp, $a0
	vstx	$vr0, $a3, $a1
	addi.d	$a0, $a0, 32
	vstx	$vr0, $a3, $a2
	bnez	$a0, .LBB2_24
# %bb.25:                               # %middle.block252
	stptr.w	$s4, $fp, 3992
	ld.d	$a0, $s2, 16
	st.d	$fp, $sp, 72
	st.d	$s0, $sp, 64
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 60
	beqz	$a0, .LBB2_67
# %bb.26:
	ld.d	$a4, $s2, 24
.Ltmp519:                               # EH_LABEL
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 64
	addi.d	$a3, $sp, 60
	move	$a0, $s2
	jirl	$ra, $a4, 0
.Ltmp520:                               # EH_LABEL
# %bb.27:
	move	$s3, $a0
	ld.d	$a0, $s1, 16
	st.d	$fp, $sp, 72
	st.d	$s0, $sp, 64
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 60
	beqz	$a0, .LBB2_69
# %bb.28:
	ld.d	$a4, $s1, 24
.Ltmp521:                               # EH_LABEL
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 64
	addi.d	$a3, $sp, 60
	move	$a0, $s1
	jirl	$ra, $a4, 0
.Ltmp522:                               # EH_LABEL
# %bb.29:
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	bne	$s3, $a0, .LBB2_71
# %bb.30:                               # %vector.body255.preheader
	ori	$a0, $s5, 96
	ori	$a1, $zero, 4000
	ori	$a2, $zero, 4016
	.p2align	4, , 16
.LBB2_31:                               # %vector.body255
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a3, $s0, $a0
	vstx	$vr0, $a3, $a1
	vstx	$vr0, $a3, $a2
	add.d	$a3, $fp, $a0
	vstx	$vr0, $a3, $a1
	addi.d	$a0, $a0, 32
	vstx	$vr0, $a3, $a2
	bnez	$a0, .LBB2_31
# %bb.32:                               # %middle.block258
	st.w	$s4, $fp, 0
	ld.d	$a0, $s2, 16
	st.d	$fp, $sp, 72
	st.d	$s0, $sp, 64
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 60
	beqz	$a0, .LBB2_72
# %bb.33:
	ld.d	$a4, $s2, 24
.Ltmp525:                               # EH_LABEL
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 64
	addi.d	$a3, $sp, 60
	move	$a0, $s2
	jirl	$ra, $a4, 0
.Ltmp526:                               # EH_LABEL
# %bb.34:
	move	$s3, $a0
	ld.d	$a0, $s1, 16
	st.d	$fp, $sp, 72
	st.d	$s0, $sp, 64
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 60
	beqz	$a0, .LBB2_74
# %bb.35:
	ld.d	$a4, $s1, 24
.Ltmp527:                               # EH_LABEL
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 64
	addi.d	$a3, $sp, 60
	move	$a0, $s1
	jirl	$ra, $a4, 0
.Ltmp528:                               # EH_LABEL
# %bb.36:
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	bne	$s3, $a0, .LBB2_76
# %bb.37:                               # %vector.body261.preheader
	ori	$a0, $s5, 96
	ori	$a1, $zero, 4000
	ori	$a2, $zero, 4016
	.p2align	4, , 16
.LBB2_38:                               # %vector.body261
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a3, $s0, $a0
	vstx	$vr0, $a3, $a1
	vstx	$vr0, $a3, $a2
	add.d	$a3, $fp, $a0
	vstx	$vr0, $a3, $a1
	addi.d	$a0, $a0, 32
	vstx	$vr0, $a3, $a2
	bnez	$a0, .LBB2_38
# %bb.39:                               # %middle.block264
	stptr.w	$s4, $fp, 3996
	ld.d	$a0, $s2, 16
	st.d	$fp, $sp, 72
	st.d	$s0, $sp, 64
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 60
	beqz	$a0, .LBB2_77
# %bb.40:
	ld.d	$a4, $s2, 24
.Ltmp531:                               # EH_LABEL
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 64
	addi.d	$a3, $sp, 60
	move	$a0, $s2
	jirl	$ra, $a4, 0
.Ltmp532:                               # EH_LABEL
# %bb.41:
	move	$s3, $a0
	ld.d	$a0, $s1, 16
	st.d	$fp, $sp, 72
	st.d	$s0, $sp, 64
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 60
	beqz	$a0, .LBB2_79
# %bb.42:
	ld.d	$a4, $s1, 24
.Ltmp533:                               # EH_LABEL
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 64
	addi.d	$a3, $sp, 60
	move	$a0, $s1
	jirl	$ra, $a4, 0
.Ltmp534:                               # EH_LABEL
# %bb.43:
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	bne	$s3, $a0, .LBB2_81
# %bb.44:                               # %vector.body267.preheader
	ori	$a0, $s5, 96
	ori	$a1, $zero, 4000
	ori	$a2, $zero, 4016
	.p2align	4, , 16
.LBB2_45:                               # %vector.body267
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a3, $s0, $a0
	vstx	$vr0, $a3, $a1
	vstx	$vr0, $a3, $a2
	add.d	$a3, $fp, $a0
	vstx	$vr0, $a3, $a1
	addi.d	$a0, $a0, 32
	vstx	$vr0, $a3, $a2
	bnez	$a0, .LBB2_45
# %bb.46:                               # %middle.block270
	stptr.w	$s4, $fp, 3996
	st.w	$s4, $fp, 0
	ld.d	$a0, $s2, 16
	st.d	$fp, $sp, 72
	st.d	$s0, $sp, 64
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 60
	beqz	$a0, .LBB2_82
# %bb.47:
	ld.d	$a4, $s2, 24
.Ltmp537:                               # EH_LABEL
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 64
	addi.d	$a3, $sp, 60
	move	$a0, $s2
	jirl	$ra, $a4, 0
.Ltmp538:                               # EH_LABEL
# %bb.48:
	move	$s2, $a0
	ld.d	$a0, $s1, 16
	st.d	$fp, $sp, 72
	st.d	$s0, $sp, 64
	ori	$a1, $zero, 1000
	st.w	$a1, $sp, 60
	beqz	$a0, .LBB2_84
# %bb.49:
	ld.d	$a4, $s1, 24
.Ltmp539:                               # EH_LABEL
	addi.d	$a1, $sp, 72
	addi.d	$a2, $sp, 64
	addi.d	$a3, $sp, 60
	move	$a0, $s1
	jirl	$ra, $a4, 0
.Ltmp540:                               # EH_LABEL
# %bb.50:
	bne	$s2, $a0, .LBB2_86
# %bb.51:                               # %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit165
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
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
.LBB2_52:
.Ltmp582:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp583:                               # EH_LABEL
# %bb.53:                               # %.noexc
.LBB2_54:
.Ltmp579:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp580:                               # EH_LABEL
# %bb.55:                               # %.noexc111
.LBB2_56:
.Ltmp505:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.29)
	addi.d	$a1, $a1, %pc_lo12(.L.str.29)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp506:                               # EH_LABEL
	b	.LBB2_87
.LBB2_57:
.Ltmp576:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp577:                               # EH_LABEL
# %bb.58:                               # %.noexc115
.LBB2_59:
.Ltmp573:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp574:                               # EH_LABEL
# %bb.60:                               # %.noexc119
.LBB2_61:
.Ltmp511:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.29)
	addi.d	$a1, $a1, %pc_lo12(.L.str.29)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp512:                               # EH_LABEL
	b	.LBB2_87
.LBB2_62:
.Ltmp570:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp571:                               # EH_LABEL
# %bb.63:                               # %.noexc123
.LBB2_64:
.Ltmp567:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp568:                               # EH_LABEL
# %bb.65:                               # %.noexc127
.LBB2_66:
.Ltmp517:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.29)
	addi.d	$a1, $a1, %pc_lo12(.L.str.29)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp518:                               # EH_LABEL
	b	.LBB2_87
.LBB2_67:
.Ltmp564:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp565:                               # EH_LABEL
# %bb.68:                               # %.noexc131
.LBB2_69:
.Ltmp561:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp562:                               # EH_LABEL
# %bb.70:                               # %.noexc135
.LBB2_71:
.Ltmp523:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.29)
	addi.d	$a1, $a1, %pc_lo12(.L.str.29)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp524:                               # EH_LABEL
	b	.LBB2_87
.LBB2_72:
.Ltmp558:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp559:                               # EH_LABEL
# %bb.73:                               # %.noexc139
.LBB2_74:
.Ltmp555:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp556:                               # EH_LABEL
# %bb.75:                               # %.noexc143
.LBB2_76:
.Ltmp529:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.29)
	addi.d	$a1, $a1, %pc_lo12(.L.str.29)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp530:                               # EH_LABEL
	b	.LBB2_87
.LBB2_77:
.Ltmp552:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp553:                               # EH_LABEL
# %bb.78:                               # %.noexc147
.LBB2_79:
.Ltmp549:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp550:                               # EH_LABEL
# %bb.80:                               # %.noexc151
.LBB2_81:
.Ltmp535:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.29)
	addi.d	$a1, $a1, %pc_lo12(.L.str.29)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp536:                               # EH_LABEL
	b	.LBB2_87
.LBB2_82:
.Ltmp546:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp547:                               # EH_LABEL
# %bb.83:                               # %.noexc155
.LBB2_84:
.Ltmp543:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp544:                               # EH_LABEL
# %bb.85:                               # %.noexc159
.LBB2_86:
.Ltmp541:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.29)
	addi.d	$a1, $a1, %pc_lo12(.L.str.29)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp542:                               # EH_LABEL
.LBB2_87:
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB2_88:
.Ltmp500:                               # EH_LABEL
	move	$s1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB2_89:
.Ltmp548:                               # EH_LABEL
	b	.LBB2_103
.LBB2_90:
.Ltmp554:                               # EH_LABEL
	b	.LBB2_103
.LBB2_91:
.Ltmp560:                               # EH_LABEL
	b	.LBB2_103
.LBB2_92:
.Ltmp566:                               # EH_LABEL
	b	.LBB2_103
.LBB2_93:
.Ltmp572:                               # EH_LABEL
	b	.LBB2_103
.LBB2_94:
.Ltmp578:                               # EH_LABEL
	b	.LBB2_103
.LBB2_95:
.Ltmp584:                               # EH_LABEL
	b	.LBB2_103
.LBB2_96:
.Ltmp545:                               # EH_LABEL
	b	.LBB2_103
.LBB2_97:
.Ltmp551:                               # EH_LABEL
	b	.LBB2_103
.LBB2_98:
.Ltmp557:                               # EH_LABEL
	b	.LBB2_103
.LBB2_99:
.Ltmp563:                               # EH_LABEL
	b	.LBB2_103
.LBB2_100:
.Ltmp569:                               # EH_LABEL
	b	.LBB2_103
.LBB2_101:
.Ltmp575:                               # EH_LABEL
	b	.LBB2_103
.LBB2_102:
.Ltmp581:                               # EH_LABEL
.LBB2_103:                              # %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit168
	move	$s1, $a0
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
	.size	_ZL19checkVectorFunctionIifEvSt8functionIFT_PT0_S3_S1_EES5_PKc, .Lfunc_end2-_ZL19checkVectorFunctionIifEvSt8functionIFT_PT0_S3_S1_EES5_PKc
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
	.uleb128 .Ltmp498-.Lfunc_begin2         #   Call between .Lfunc_begin2 and .Ltmp498
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp498-.Lfunc_begin2         # >> Call Site 2 <<
	.uleb128 .Ltmp499-.Ltmp498              #   Call between .Ltmp498 and .Ltmp499
	.uleb128 .Ltmp500-.Lfunc_begin2         #     jumps to .Ltmp500
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp499-.Lfunc_begin2         # >> Call Site 3 <<
	.uleb128 .Ltmp501-.Ltmp499              #   Call between .Ltmp499 and .Ltmp501
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp501-.Lfunc_begin2         # >> Call Site 4 <<
	.uleb128 .Ltmp502-.Ltmp501              #   Call between .Ltmp501 and .Ltmp502
	.uleb128 .Ltmp584-.Lfunc_begin2         #     jumps to .Ltmp584
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp503-.Lfunc_begin2         # >> Call Site 5 <<
	.uleb128 .Ltmp504-.Ltmp503              #   Call between .Ltmp503 and .Ltmp504
	.uleb128 .Ltmp581-.Lfunc_begin2         #     jumps to .Ltmp581
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp507-.Lfunc_begin2         # >> Call Site 6 <<
	.uleb128 .Ltmp508-.Ltmp507              #   Call between .Ltmp507 and .Ltmp508
	.uleb128 .Ltmp578-.Lfunc_begin2         #     jumps to .Ltmp578
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp509-.Lfunc_begin2         # >> Call Site 7 <<
	.uleb128 .Ltmp510-.Ltmp509              #   Call between .Ltmp509 and .Ltmp510
	.uleb128 .Ltmp575-.Lfunc_begin2         #     jumps to .Ltmp575
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp513-.Lfunc_begin2         # >> Call Site 8 <<
	.uleb128 .Ltmp514-.Ltmp513              #   Call between .Ltmp513 and .Ltmp514
	.uleb128 .Ltmp572-.Lfunc_begin2         #     jumps to .Ltmp572
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp515-.Lfunc_begin2         # >> Call Site 9 <<
	.uleb128 .Ltmp516-.Ltmp515              #   Call between .Ltmp515 and .Ltmp516
	.uleb128 .Ltmp569-.Lfunc_begin2         #     jumps to .Ltmp569
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp519-.Lfunc_begin2         # >> Call Site 10 <<
	.uleb128 .Ltmp520-.Ltmp519              #   Call between .Ltmp519 and .Ltmp520
	.uleb128 .Ltmp566-.Lfunc_begin2         #     jumps to .Ltmp566
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp521-.Lfunc_begin2         # >> Call Site 11 <<
	.uleb128 .Ltmp522-.Ltmp521              #   Call between .Ltmp521 and .Ltmp522
	.uleb128 .Ltmp563-.Lfunc_begin2         #     jumps to .Ltmp563
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp525-.Lfunc_begin2         # >> Call Site 12 <<
	.uleb128 .Ltmp526-.Ltmp525              #   Call between .Ltmp525 and .Ltmp526
	.uleb128 .Ltmp560-.Lfunc_begin2         #     jumps to .Ltmp560
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp527-.Lfunc_begin2         # >> Call Site 13 <<
	.uleb128 .Ltmp528-.Ltmp527              #   Call between .Ltmp527 and .Ltmp528
	.uleb128 .Ltmp557-.Lfunc_begin2         #     jumps to .Ltmp557
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp531-.Lfunc_begin2         # >> Call Site 14 <<
	.uleb128 .Ltmp532-.Ltmp531              #   Call between .Ltmp531 and .Ltmp532
	.uleb128 .Ltmp554-.Lfunc_begin2         #     jumps to .Ltmp554
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp533-.Lfunc_begin2         # >> Call Site 15 <<
	.uleb128 .Ltmp534-.Ltmp533              #   Call between .Ltmp533 and .Ltmp534
	.uleb128 .Ltmp551-.Lfunc_begin2         #     jumps to .Ltmp551
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp537-.Lfunc_begin2         # >> Call Site 16 <<
	.uleb128 .Ltmp538-.Ltmp537              #   Call between .Ltmp537 and .Ltmp538
	.uleb128 .Ltmp548-.Lfunc_begin2         #     jumps to .Ltmp548
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp539-.Lfunc_begin2         # >> Call Site 17 <<
	.uleb128 .Ltmp540-.Ltmp539              #   Call between .Ltmp539 and .Ltmp540
	.uleb128 .Ltmp545-.Lfunc_begin2         #     jumps to .Ltmp545
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp540-.Lfunc_begin2         # >> Call Site 18 <<
	.uleb128 .Ltmp582-.Ltmp540              #   Call between .Ltmp540 and .Ltmp582
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp582-.Lfunc_begin2         # >> Call Site 19 <<
	.uleb128 .Ltmp583-.Ltmp582              #   Call between .Ltmp582 and .Ltmp583
	.uleb128 .Ltmp584-.Lfunc_begin2         #     jumps to .Ltmp584
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp579-.Lfunc_begin2         # >> Call Site 20 <<
	.uleb128 .Ltmp506-.Ltmp579              #   Call between .Ltmp579 and .Ltmp506
	.uleb128 .Ltmp581-.Lfunc_begin2         #     jumps to .Ltmp581
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp576-.Lfunc_begin2         # >> Call Site 21 <<
	.uleb128 .Ltmp577-.Ltmp576              #   Call between .Ltmp576 and .Ltmp577
	.uleb128 .Ltmp578-.Lfunc_begin2         #     jumps to .Ltmp578
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp573-.Lfunc_begin2         # >> Call Site 22 <<
	.uleb128 .Ltmp512-.Ltmp573              #   Call between .Ltmp573 and .Ltmp512
	.uleb128 .Ltmp575-.Lfunc_begin2         #     jumps to .Ltmp575
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp570-.Lfunc_begin2         # >> Call Site 23 <<
	.uleb128 .Ltmp571-.Ltmp570              #   Call between .Ltmp570 and .Ltmp571
	.uleb128 .Ltmp572-.Lfunc_begin2         #     jumps to .Ltmp572
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp567-.Lfunc_begin2         # >> Call Site 24 <<
	.uleb128 .Ltmp518-.Ltmp567              #   Call between .Ltmp567 and .Ltmp518
	.uleb128 .Ltmp569-.Lfunc_begin2         #     jumps to .Ltmp569
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp564-.Lfunc_begin2         # >> Call Site 25 <<
	.uleb128 .Ltmp565-.Ltmp564              #   Call between .Ltmp564 and .Ltmp565
	.uleb128 .Ltmp566-.Lfunc_begin2         #     jumps to .Ltmp566
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp561-.Lfunc_begin2         # >> Call Site 26 <<
	.uleb128 .Ltmp524-.Ltmp561              #   Call between .Ltmp561 and .Ltmp524
	.uleb128 .Ltmp563-.Lfunc_begin2         #     jumps to .Ltmp563
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp558-.Lfunc_begin2         # >> Call Site 27 <<
	.uleb128 .Ltmp559-.Ltmp558              #   Call between .Ltmp558 and .Ltmp559
	.uleb128 .Ltmp560-.Lfunc_begin2         #     jumps to .Ltmp560
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp555-.Lfunc_begin2         # >> Call Site 28 <<
	.uleb128 .Ltmp530-.Ltmp555              #   Call between .Ltmp555 and .Ltmp530
	.uleb128 .Ltmp557-.Lfunc_begin2         #     jumps to .Ltmp557
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp552-.Lfunc_begin2         # >> Call Site 29 <<
	.uleb128 .Ltmp553-.Ltmp552              #   Call between .Ltmp552 and .Ltmp553
	.uleb128 .Ltmp554-.Lfunc_begin2         #     jumps to .Ltmp554
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp549-.Lfunc_begin2         # >> Call Site 30 <<
	.uleb128 .Ltmp536-.Ltmp549              #   Call between .Ltmp549 and .Ltmp536
	.uleb128 .Ltmp551-.Lfunc_begin2         #     jumps to .Ltmp551
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp546-.Lfunc_begin2         # >> Call Site 31 <<
	.uleb128 .Ltmp547-.Ltmp546              #   Call between .Ltmp546 and .Ltmp547
	.uleb128 .Ltmp548-.Lfunc_begin2         #     jumps to .Ltmp548
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp543-.Lfunc_begin2         # >> Call Site 32 <<
	.uleb128 .Ltmp542-.Ltmp543              #   Call between .Ltmp543 and .Ltmp542
	.uleb128 .Ltmp545-.Lfunc_begin2         #     jumps to .Ltmp545
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp542-.Lfunc_begin2         # >> Call Site 33 <<
	.uleb128 .Lfunc_end2-.Ltmp542           #   Call between .Ltmp542 and .Lfunc_end2
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZL19checkVectorFunctionIssEvSt8functionIFT_PT0_S3_S1_EES5_PKc
	.type	_ZL19checkVectorFunctionIssEvSt8functionIFT_PT0_S3_S1_EES5_PKc,@function
_ZL19checkVectorFunctionIssEvSt8functionIFT_PT0_S3_S1_EES5_PKc: # @_ZL19checkVectorFunctionIssEvSt8functionIFT_PT0_S3_S1_EES5_PKc
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception3
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	move	$fp, $a2
	move	$s1, $a1
	move	$s2, $a0
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$s0, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a1, $a0, %pc_lo12(.L.str.27)
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
	pcalau12i	$a1, %pc_hi20(.L.str.28)
	addi.d	$a1, $a1, %pc_lo12(.L.str.28)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2000
	ori	$s4, $zero, 2000
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$fp, $a0
.Ltmp585:                               # EH_LABEL
	ori	$a0, $zero, 2000
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp586:                               # EH_LABEL
# %bb.4:
	move	$s0, $a0
	lu12i.w	$s5, 524280
	st.w	$s5, $sp, 64
	pcalau12i	$a0, %pc_hi20(_ZL3rng)
	addi.d	$s3, $a0, %pc_lo12(_ZL3rng)
	move	$s6, $zero
	.p2align	4, , 16
.LBB3_5:                                # =>This Inner Loop Header: Depth=1
.Ltmp588:                               # EH_LABEL
	addi.d	$a0, $sp, 64
	addi.d	$a2, $sp, 64
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZNSt24uniform_int_distributionIsEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEsRT_RKNS0_10param_typeE)
	jirl	$ra, $ra, 0
.Ltmp589:                               # EH_LABEL
# %bb.6:                                # %.noexc
                                        #   in Loop: Header=BB3_5 Depth=1
	stx.h	$a0, $fp, $s6
	addi.d	$s6, $s6, 2
	bne	$s6, $s4, .LBB3_5
# %bb.7:
	st.w	$s5, $sp, 64
	pcalau12i	$a0, %pc_hi20(_ZL3rng)
	addi.d	$s3, $a0, %pc_lo12(_ZL3rng)
	move	$s4, $zero
	ori	$s5, $zero, 2000
	.p2align	4, , 16
.LBB3_8:                                # =>This Inner Loop Header: Depth=1
.Ltmp591:                               # EH_LABEL
	addi.d	$a0, $sp, 64
	addi.d	$a2, $sp, 64
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZNSt24uniform_int_distributionIsEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEsRT_RKNS0_10param_typeE)
	jirl	$ra, $ra, 0
.Ltmp592:                               # EH_LABEL
# %bb.9:                                # %.noexc111
                                        #   in Loop: Header=BB3_8 Depth=1
	stx.h	$a0, $s0, $s4
	addi.d	$s4, $s4, 2
	bne	$s4, $s5, .LBB3_8
# %bb.10:
	ld.d	$a0, $s2, 16
	st.d	$fp, $sp, 64
	st.d	$s0, $sp, 56
	ori	$a1, $zero, 1000
	st.h	$a1, $sp, 54
	beqz	$a0, .LBB3_58
# %bb.11:
	ld.d	$a4, $s2, 24
.Ltmp594:                               # EH_LABEL
	addi.d	$a1, $sp, 64
	addi.d	$a2, $sp, 56
	addi.d	$a3, $sp, 54
	move	$a0, $s2
	jirl	$ra, $a4, 0
.Ltmp595:                               # EH_LABEL
# %bb.12:
	move	$s3, $a0
	ld.d	$a0, $s1, 16
	st.d	$fp, $sp, 64
	st.d	$s0, $sp, 56
	ori	$a1, $zero, 1000
	st.h	$a1, $sp, 54
	beqz	$a0, .LBB3_60
# %bb.13:
	ld.d	$a4, $s1, 24
.Ltmp596:                               # EH_LABEL
	addi.d	$a1, $sp, 64
	addi.d	$a2, $sp, 56
	addi.d	$a3, $sp, 54
	move	$a0, $s1
	jirl	$ra, $a4, 0
.Ltmp597:                               # EH_LABEL
# %bb.14:
	bne	$s3, $a0, .LBB3_62
# %bb.15:                               # %vector.body.preheader
	move	$a0, $zero
	lu12i.w	$a1, 7
	ori	$s4, $a1, 4095
	vreplgr2vr.h	$vr1, $s4
	lu12i.w	$a1, 8
	vreplgr2vr.h	$vr0, $a1
	ori	$a1, $zero, 1984
	.p2align	4, , 16
.LBB3_16:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a2, $fp, $a0
	vstx	$vr1, $fp, $a0
	vst	$vr1, $a2, 16
	add.d	$a2, $s0, $a0
	vstx	$vr0, $s0, $a0
	addi.d	$a0, $a0, 32
	vst	$vr0, $a2, 16
	bne	$a0, $a1, .LBB3_16
# %bb.17:                               # %vec.epilog.vector.body
	vst	$vr1, $sp, 16                   # 16-byte Folded Spill
	vst	$vr1, $fp, 1984
	vst	$vr0, $sp, 32                   # 16-byte Folded Spill
	vst	$vr0, $s0, 1984
	ld.d	$a0, $s2, 16
	st.d	$fp, $sp, 64
	st.d	$s0, $sp, 56
	ori	$a1, $zero, 1000
	st.h	$a1, $sp, 54
	beqz	$a0, .LBB3_63
# %bb.18:
	ld.d	$a4, $s2, 24
.Ltmp600:                               # EH_LABEL
	addi.d	$a1, $sp, 64
	addi.d	$a2, $sp, 56
	addi.d	$a3, $sp, 54
	move	$a0, $s2
	jirl	$ra, $a4, 0
.Ltmp601:                               # EH_LABEL
# %bb.19:
	move	$s3, $a0
	ld.d	$a0, $s1, 16
	st.d	$fp, $sp, 64
	st.d	$s0, $sp, 56
	ori	$a1, $zero, 1000
	st.h	$a1, $sp, 54
	beqz	$a0, .LBB3_65
# %bb.20:
	ld.d	$a4, $s1, 24
.Ltmp602:                               # EH_LABEL
	addi.d	$a1, $sp, 64
	addi.d	$a2, $sp, 56
	addi.d	$a3, $sp, 54
	move	$a0, $s1
	jirl	$ra, $a4, 0
.Ltmp603:                               # EH_LABEL
# %bb.21:
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	vld	$vr1, $sp, 16                   # 16-byte Folded Reload
	bne	$s3, $a0, .LBB3_67
# %bb.22:                               # %vector.body254.preheader
	move	$a0, $zero
	ori	$a1, $zero, 1984
	.p2align	4, , 16
.LBB3_23:                               # %vector.body254
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a2, $fp, $a0
	vstx	$vr0, $fp, $a0
	vst	$vr0, $a2, 16
	add.d	$a2, $s0, $a0
	vstx	$vr1, $s0, $a0
	addi.d	$a0, $a0, 32
	vst	$vr1, $a2, 16
	bne	$a0, $a1, .LBB3_23
# %bb.24:                               # %vec.epilog.vector.body262
	vst	$vr0, $fp, 1984
	vst	$vr1, $s0, 1984
	ld.d	$a0, $s2, 16
	st.d	$fp, $sp, 64
	st.d	$s0, $sp, 56
	ori	$a1, $zero, 1000
	st.h	$a1, $sp, 54
	beqz	$a0, .LBB3_68
# %bb.25:
	ld.d	$a4, $s2, 24
.Ltmp606:                               # EH_LABEL
	addi.d	$a1, $sp, 64
	addi.d	$a2, $sp, 56
	addi.d	$a3, $sp, 54
	move	$a0, $s2
	jirl	$ra, $a4, 0
.Ltmp607:                               # EH_LABEL
# %bb.26:
	move	$s3, $a0
	ld.d	$a0, $s1, 16
	st.d	$fp, $sp, 64
	st.d	$s0, $sp, 56
	ori	$a1, $zero, 1000
	st.h	$a1, $sp, 54
	beqz	$a0, .LBB3_70
# %bb.27:
	ld.d	$a4, $s1, 24
.Ltmp608:                               # EH_LABEL
	addi.d	$a1, $sp, 64
	addi.d	$a2, $sp, 56
	addi.d	$a3, $sp, 54
	move	$a0, $s1
	jirl	$ra, $a4, 0
.Ltmp609:                               # EH_LABEL
# %bb.28:
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	bne	$s3, $a0, .LBB3_72
# %bb.29:                               # %vector.body271.preheader
	move	$a0, $zero
	ori	$a1, $zero, 1984
	.p2align	4, , 16
.LBB3_30:                               # %vector.body271
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a2, $s0, $a0
	vstx	$vr0, $s0, $a0
	vst	$vr0, $a2, 16
	add.d	$a2, $fp, $a0
	vstx	$vr0, $fp, $a0
	addi.d	$a0, $a0, 32
	vst	$vr0, $a2, 16
	bne	$a0, $a1, .LBB3_30
# %bb.31:                               # %vec.epilog.vector.body279
	vst	$vr0, $s0, 1984
	vst	$vr0, $fp, 1984
	st.h	$s4, $fp, 1996
	ld.d	$a0, $s2, 16
	st.d	$fp, $sp, 64
	st.d	$s0, $sp, 56
	ori	$a1, $zero, 1000
	st.h	$a1, $sp, 54
	beqz	$a0, .LBB3_73
# %bb.32:
	ld.d	$a4, $s2, 24
.Ltmp612:                               # EH_LABEL
	addi.d	$a1, $sp, 64
	addi.d	$a2, $sp, 56
	addi.d	$a3, $sp, 54
	move	$a0, $s2
	jirl	$ra, $a4, 0
.Ltmp613:                               # EH_LABEL
# %bb.33:
	move	$s3, $a0
	ld.d	$a0, $s1, 16
	st.d	$fp, $sp, 64
	st.d	$s0, $sp, 56
	ori	$a1, $zero, 1000
	st.h	$a1, $sp, 54
	beqz	$a0, .LBB3_75
# %bb.34:
	ld.d	$a4, $s1, 24
.Ltmp614:                               # EH_LABEL
	addi.d	$a1, $sp, 64
	addi.d	$a2, $sp, 56
	addi.d	$a3, $sp, 54
	move	$a0, $s1
	jirl	$ra, $a4, 0
.Ltmp615:                               # EH_LABEL
# %bb.35:
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	bne	$s3, $a0, .LBB3_77
# %bb.36:                               # %vector.body288.preheader
	move	$a0, $zero
	ori	$a1, $zero, 1984
	.p2align	4, , 16
.LBB3_37:                               # %vector.body288
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a2, $s0, $a0
	vstx	$vr0, $s0, $a0
	vst	$vr0, $a2, 16
	add.d	$a2, $fp, $a0
	vstx	$vr0, $fp, $a0
	addi.d	$a0, $a0, 32
	vst	$vr0, $a2, 16
	bne	$a0, $a1, .LBB3_37
# %bb.38:                               # %vec.epilog.vector.body296
	vst	$vr0, $s0, 1984
	vst	$vr0, $fp, 1984
	st.h	$s4, $fp, 0
	ld.d	$a0, $s2, 16
	st.d	$fp, $sp, 64
	st.d	$s0, $sp, 56
	ori	$a1, $zero, 1000
	st.h	$a1, $sp, 54
	beqz	$a0, .LBB3_78
# %bb.39:
	ld.d	$a4, $s2, 24
.Ltmp618:                               # EH_LABEL
	addi.d	$a1, $sp, 64
	addi.d	$a2, $sp, 56
	addi.d	$a3, $sp, 54
	move	$a0, $s2
	jirl	$ra, $a4, 0
.Ltmp619:                               # EH_LABEL
# %bb.40:
	move	$s3, $a0
	ld.d	$a0, $s1, 16
	st.d	$fp, $sp, 64
	st.d	$s0, $sp, 56
	ori	$a1, $zero, 1000
	st.h	$a1, $sp, 54
	beqz	$a0, .LBB3_80
# %bb.41:
	ld.d	$a4, $s1, 24
.Ltmp620:                               # EH_LABEL
	addi.d	$a1, $sp, 64
	addi.d	$a2, $sp, 56
	addi.d	$a3, $sp, 54
	move	$a0, $s1
	jirl	$ra, $a4, 0
.Ltmp621:                               # EH_LABEL
# %bb.42:
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	bne	$s3, $a0, .LBB3_82
# %bb.43:                               # %vector.body305.preheader
	move	$a0, $zero
	ori	$a1, $zero, 1984
	.p2align	4, , 16
.LBB3_44:                               # %vector.body305
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a2, $s0, $a0
	vstx	$vr0, $s0, $a0
	vst	$vr0, $a2, 16
	add.d	$a2, $fp, $a0
	vstx	$vr0, $fp, $a0
	addi.d	$a0, $a0, 32
	vst	$vr0, $a2, 16
	bne	$a0, $a1, .LBB3_44
# %bb.45:                               # %vec.epilog.vector.body313
	vst	$vr0, $s0, 1984
	vst	$vr0, $fp, 1984
	st.h	$s4, $fp, 1998
	ld.d	$a0, $s2, 16
	st.d	$fp, $sp, 64
	st.d	$s0, $sp, 56
	ori	$a1, $zero, 1000
	st.h	$a1, $sp, 54
	beqz	$a0, .LBB3_83
# %bb.46:
	ld.d	$a4, $s2, 24
.Ltmp624:                               # EH_LABEL
	addi.d	$a1, $sp, 64
	addi.d	$a2, $sp, 56
	addi.d	$a3, $sp, 54
	move	$a0, $s2
	jirl	$ra, $a4, 0
.Ltmp625:                               # EH_LABEL
# %bb.47:
	move	$s3, $a0
	ld.d	$a0, $s1, 16
	st.d	$fp, $sp, 64
	st.d	$s0, $sp, 56
	ori	$a1, $zero, 1000
	st.h	$a1, $sp, 54
	beqz	$a0, .LBB3_85
# %bb.48:
	ld.d	$a4, $s1, 24
.Ltmp626:                               # EH_LABEL
	addi.d	$a1, $sp, 64
	addi.d	$a2, $sp, 56
	addi.d	$a3, $sp, 54
	move	$a0, $s1
	jirl	$ra, $a4, 0
.Ltmp627:                               # EH_LABEL
# %bb.49:
	vld	$vr0, $sp, 32                   # 16-byte Folded Reload
	bne	$s3, $a0, .LBB3_87
# %bb.50:                               # %vector.body322.preheader
	move	$a0, $zero
	ori	$a1, $zero, 1984
	.p2align	4, , 16
.LBB3_51:                               # %vector.body322
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a2, $s0, $a0
	vstx	$vr0, $s0, $a0
	vst	$vr0, $a2, 16
	add.d	$a2, $fp, $a0
	vstx	$vr0, $fp, $a0
	addi.d	$a0, $a0, 32
	vst	$vr0, $a2, 16
	bne	$a0, $a1, .LBB3_51
# %bb.52:                               # %vec.epilog.vector.body330
	vst	$vr0, $s0, 1984
	vst	$vr0, $fp, 1984
	st.h	$s4, $fp, 1998
	st.h	$s4, $fp, 0
	ld.d	$a0, $s2, 16
	st.d	$fp, $sp, 64
	st.d	$s0, $sp, 56
	ori	$a1, $zero, 1000
	st.h	$a1, $sp, 54
	beqz	$a0, .LBB3_88
# %bb.53:
	ld.d	$a4, $s2, 24
.Ltmp630:                               # EH_LABEL
	addi.d	$a1, $sp, 64
	addi.d	$a2, $sp, 56
	addi.d	$a3, $sp, 54
	move	$a0, $s2
	jirl	$ra, $a4, 0
.Ltmp631:                               # EH_LABEL
# %bb.54:
	move	$s2, $a0
	ld.d	$a0, $s1, 16
	st.d	$fp, $sp, 64
	st.d	$s0, $sp, 56
	ori	$a1, $zero, 1000
	st.h	$a1, $sp, 54
	beqz	$a0, .LBB3_90
# %bb.55:
	ld.d	$a4, $s1, 24
.Ltmp632:                               # EH_LABEL
	addi.d	$a1, $sp, 64
	addi.d	$a2, $sp, 56
	addi.d	$a3, $sp, 54
	move	$a0, $s1
	jirl	$ra, $a4, 0
.Ltmp633:                               # EH_LABEL
# %bb.56:
	bne	$s2, $a0, .LBB3_92
# %bb.57:                               # %_ZNSt10unique_ptrIA_sSt14default_deleteIS0_EED2Ev.exit170
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
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
.LBB3_58:
.Ltmp675:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp676:                               # EH_LABEL
# %bb.59:                               # %.noexc113
.LBB3_60:
.Ltmp672:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp673:                               # EH_LABEL
# %bb.61:                               # %.noexc116
.LBB3_62:
.Ltmp598:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.29)
	addi.d	$a1, $a1, %pc_lo12(.L.str.29)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp599:                               # EH_LABEL
	b	.LBB3_93
.LBB3_63:
.Ltmp669:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp670:                               # EH_LABEL
# %bb.64:                               # %.noexc120
.LBB3_65:
.Ltmp666:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp667:                               # EH_LABEL
# %bb.66:                               # %.noexc124
.LBB3_67:
.Ltmp604:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.29)
	addi.d	$a1, $a1, %pc_lo12(.L.str.29)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp605:                               # EH_LABEL
	b	.LBB3_93
.LBB3_68:
.Ltmp663:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp664:                               # EH_LABEL
# %bb.69:                               # %.noexc128
.LBB3_70:
.Ltmp660:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp661:                               # EH_LABEL
# %bb.71:                               # %.noexc132
.LBB3_72:
.Ltmp610:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.29)
	addi.d	$a1, $a1, %pc_lo12(.L.str.29)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp611:                               # EH_LABEL
	b	.LBB3_93
.LBB3_73:
.Ltmp657:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp658:                               # EH_LABEL
# %bb.74:                               # %.noexc136
.LBB3_75:
.Ltmp654:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp655:                               # EH_LABEL
# %bb.76:                               # %.noexc140
.LBB3_77:
.Ltmp616:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.29)
	addi.d	$a1, $a1, %pc_lo12(.L.str.29)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp617:                               # EH_LABEL
	b	.LBB3_93
.LBB3_78:
.Ltmp651:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp652:                               # EH_LABEL
# %bb.79:                               # %.noexc144
.LBB3_80:
.Ltmp648:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp649:                               # EH_LABEL
# %bb.81:                               # %.noexc148
.LBB3_82:
.Ltmp622:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.29)
	addi.d	$a1, $a1, %pc_lo12(.L.str.29)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp623:                               # EH_LABEL
	b	.LBB3_93
.LBB3_83:
.Ltmp645:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp646:                               # EH_LABEL
# %bb.84:                               # %.noexc152
.LBB3_85:
.Ltmp642:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp643:                               # EH_LABEL
# %bb.86:                               # %.noexc156
.LBB3_87:
.Ltmp628:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.29)
	addi.d	$a1, $a1, %pc_lo12(.L.str.29)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp629:                               # EH_LABEL
	b	.LBB3_93
.LBB3_88:
.Ltmp639:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp640:                               # EH_LABEL
# %bb.89:                               # %.noexc160
.LBB3_90:
.Ltmp636:                               # EH_LABEL
	pcaddu18i	$ra, %call36(_ZSt25__throw_bad_function_callv)
	jirl	$ra, $ra, 0
.Ltmp637:                               # EH_LABEL
# %bb.91:                               # %.noexc164
.LBB3_92:
.Ltmp634:                               # EH_LABEL
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.29)
	addi.d	$a1, $a1, %pc_lo12(.L.str.29)
	pcaddu18i	$ra, %call36(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)
	jirl	$ra, $ra, 0
.Ltmp635:                               # EH_LABEL
.LBB3_93:
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB3_94:
.Ltmp587:                               # EH_LABEL
	move	$s1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB3_95:
.Ltmp641:                               # EH_LABEL
	b	.LBB3_111
.LBB3_96:
.Ltmp647:                               # EH_LABEL
	b	.LBB3_111
.LBB3_97:
.Ltmp653:                               # EH_LABEL
	b	.LBB3_111
.LBB3_98:
.Ltmp659:                               # EH_LABEL
	b	.LBB3_111
.LBB3_99:
.Ltmp665:                               # EH_LABEL
	b	.LBB3_111
.LBB3_100:
.Ltmp671:                               # EH_LABEL
	b	.LBB3_111
.LBB3_101:
.Ltmp677:                               # EH_LABEL
	b	.LBB3_111
.LBB3_102:
.Ltmp638:                               # EH_LABEL
	b	.LBB3_111
.LBB3_103:
.Ltmp644:                               # EH_LABEL
	b	.LBB3_111
.LBB3_104:
.Ltmp650:                               # EH_LABEL
	b	.LBB3_111
.LBB3_105:
.Ltmp656:                               # EH_LABEL
	b	.LBB3_111
.LBB3_106:
.Ltmp662:                               # EH_LABEL
	b	.LBB3_111
.LBB3_107:
.Ltmp668:                               # EH_LABEL
	b	.LBB3_111
.LBB3_108:
.Ltmp674:                               # EH_LABEL
	b	.LBB3_111
.LBB3_109:                              # %.loopexit
.Ltmp593:                               # EH_LABEL
	b	.LBB3_111
.LBB3_110:                              # %.loopexit.split-lp
.Ltmp590:                               # EH_LABEL
.LBB3_111:                              # %_ZNSt10unique_ptrIA_sSt14default_deleteIS0_EED2Ev.exit173
	move	$s1, $a0
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
	.size	_ZL19checkVectorFunctionIssEvSt8functionIFT_PT0_S3_S1_EES5_PKc, .Lfunc_end3-_ZL19checkVectorFunctionIssEvSt8functionIFT_PT0_S3_S1_EES5_PKc
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
	.uleb128 .Ltmp585-.Lfunc_begin3         #   Call between .Lfunc_begin3 and .Ltmp585
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp585-.Lfunc_begin3         # >> Call Site 2 <<
	.uleb128 .Ltmp586-.Ltmp585              #   Call between .Ltmp585 and .Ltmp586
	.uleb128 .Ltmp587-.Lfunc_begin3         #     jumps to .Ltmp587
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp588-.Lfunc_begin3         # >> Call Site 3 <<
	.uleb128 .Ltmp589-.Ltmp588              #   Call between .Ltmp588 and .Ltmp589
	.uleb128 .Ltmp590-.Lfunc_begin3         #     jumps to .Ltmp590
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp591-.Lfunc_begin3         # >> Call Site 4 <<
	.uleb128 .Ltmp592-.Ltmp591              #   Call between .Ltmp591 and .Ltmp592
	.uleb128 .Ltmp593-.Lfunc_begin3         #     jumps to .Ltmp593
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp594-.Lfunc_begin3         # >> Call Site 5 <<
	.uleb128 .Ltmp595-.Ltmp594              #   Call between .Ltmp594 and .Ltmp595
	.uleb128 .Ltmp677-.Lfunc_begin3         #     jumps to .Ltmp677
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp596-.Lfunc_begin3         # >> Call Site 6 <<
	.uleb128 .Ltmp597-.Ltmp596              #   Call between .Ltmp596 and .Ltmp597
	.uleb128 .Ltmp674-.Lfunc_begin3         #     jumps to .Ltmp674
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp600-.Lfunc_begin3         # >> Call Site 7 <<
	.uleb128 .Ltmp601-.Ltmp600              #   Call between .Ltmp600 and .Ltmp601
	.uleb128 .Ltmp671-.Lfunc_begin3         #     jumps to .Ltmp671
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp602-.Lfunc_begin3         # >> Call Site 8 <<
	.uleb128 .Ltmp603-.Ltmp602              #   Call between .Ltmp602 and .Ltmp603
	.uleb128 .Ltmp668-.Lfunc_begin3         #     jumps to .Ltmp668
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp606-.Lfunc_begin3         # >> Call Site 9 <<
	.uleb128 .Ltmp607-.Ltmp606              #   Call between .Ltmp606 and .Ltmp607
	.uleb128 .Ltmp665-.Lfunc_begin3         #     jumps to .Ltmp665
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp608-.Lfunc_begin3         # >> Call Site 10 <<
	.uleb128 .Ltmp609-.Ltmp608              #   Call between .Ltmp608 and .Ltmp609
	.uleb128 .Ltmp662-.Lfunc_begin3         #     jumps to .Ltmp662
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp612-.Lfunc_begin3         # >> Call Site 11 <<
	.uleb128 .Ltmp613-.Ltmp612              #   Call between .Ltmp612 and .Ltmp613
	.uleb128 .Ltmp659-.Lfunc_begin3         #     jumps to .Ltmp659
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp614-.Lfunc_begin3         # >> Call Site 12 <<
	.uleb128 .Ltmp615-.Ltmp614              #   Call between .Ltmp614 and .Ltmp615
	.uleb128 .Ltmp656-.Lfunc_begin3         #     jumps to .Ltmp656
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp618-.Lfunc_begin3         # >> Call Site 13 <<
	.uleb128 .Ltmp619-.Ltmp618              #   Call between .Ltmp618 and .Ltmp619
	.uleb128 .Ltmp653-.Lfunc_begin3         #     jumps to .Ltmp653
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp620-.Lfunc_begin3         # >> Call Site 14 <<
	.uleb128 .Ltmp621-.Ltmp620              #   Call between .Ltmp620 and .Ltmp621
	.uleb128 .Ltmp650-.Lfunc_begin3         #     jumps to .Ltmp650
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp624-.Lfunc_begin3         # >> Call Site 15 <<
	.uleb128 .Ltmp625-.Ltmp624              #   Call between .Ltmp624 and .Ltmp625
	.uleb128 .Ltmp647-.Lfunc_begin3         #     jumps to .Ltmp647
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp626-.Lfunc_begin3         # >> Call Site 16 <<
	.uleb128 .Ltmp627-.Ltmp626              #   Call between .Ltmp626 and .Ltmp627
	.uleb128 .Ltmp644-.Lfunc_begin3         #     jumps to .Ltmp644
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp630-.Lfunc_begin3         # >> Call Site 17 <<
	.uleb128 .Ltmp631-.Ltmp630              #   Call between .Ltmp630 and .Ltmp631
	.uleb128 .Ltmp641-.Lfunc_begin3         #     jumps to .Ltmp641
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp632-.Lfunc_begin3         # >> Call Site 18 <<
	.uleb128 .Ltmp633-.Ltmp632              #   Call between .Ltmp632 and .Ltmp633
	.uleb128 .Ltmp638-.Lfunc_begin3         #     jumps to .Ltmp638
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp633-.Lfunc_begin3         # >> Call Site 19 <<
	.uleb128 .Ltmp675-.Ltmp633              #   Call between .Ltmp633 and .Ltmp675
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp675-.Lfunc_begin3         # >> Call Site 20 <<
	.uleb128 .Ltmp676-.Ltmp675              #   Call between .Ltmp675 and .Ltmp676
	.uleb128 .Ltmp677-.Lfunc_begin3         #     jumps to .Ltmp677
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp672-.Lfunc_begin3         # >> Call Site 21 <<
	.uleb128 .Ltmp599-.Ltmp672              #   Call between .Ltmp672 and .Ltmp599
	.uleb128 .Ltmp674-.Lfunc_begin3         #     jumps to .Ltmp674
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp669-.Lfunc_begin3         # >> Call Site 22 <<
	.uleb128 .Ltmp670-.Ltmp669              #   Call between .Ltmp669 and .Ltmp670
	.uleb128 .Ltmp671-.Lfunc_begin3         #     jumps to .Ltmp671
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp666-.Lfunc_begin3         # >> Call Site 23 <<
	.uleb128 .Ltmp605-.Ltmp666              #   Call between .Ltmp666 and .Ltmp605
	.uleb128 .Ltmp668-.Lfunc_begin3         #     jumps to .Ltmp668
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp663-.Lfunc_begin3         # >> Call Site 24 <<
	.uleb128 .Ltmp664-.Ltmp663              #   Call between .Ltmp663 and .Ltmp664
	.uleb128 .Ltmp665-.Lfunc_begin3         #     jumps to .Ltmp665
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp660-.Lfunc_begin3         # >> Call Site 25 <<
	.uleb128 .Ltmp611-.Ltmp660              #   Call between .Ltmp660 and .Ltmp611
	.uleb128 .Ltmp662-.Lfunc_begin3         #     jumps to .Ltmp662
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp657-.Lfunc_begin3         # >> Call Site 26 <<
	.uleb128 .Ltmp658-.Ltmp657              #   Call between .Ltmp657 and .Ltmp658
	.uleb128 .Ltmp659-.Lfunc_begin3         #     jumps to .Ltmp659
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp654-.Lfunc_begin3         # >> Call Site 27 <<
	.uleb128 .Ltmp617-.Ltmp654              #   Call between .Ltmp654 and .Ltmp617
	.uleb128 .Ltmp656-.Lfunc_begin3         #     jumps to .Ltmp656
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp651-.Lfunc_begin3         # >> Call Site 28 <<
	.uleb128 .Ltmp652-.Ltmp651              #   Call between .Ltmp651 and .Ltmp652
	.uleb128 .Ltmp653-.Lfunc_begin3         #     jumps to .Ltmp653
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp648-.Lfunc_begin3         # >> Call Site 29 <<
	.uleb128 .Ltmp623-.Ltmp648              #   Call between .Ltmp648 and .Ltmp623
	.uleb128 .Ltmp650-.Lfunc_begin3         #     jumps to .Ltmp650
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp645-.Lfunc_begin3         # >> Call Site 30 <<
	.uleb128 .Ltmp646-.Ltmp645              #   Call between .Ltmp645 and .Ltmp646
	.uleb128 .Ltmp647-.Lfunc_begin3         #     jumps to .Ltmp647
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp642-.Lfunc_begin3         # >> Call Site 31 <<
	.uleb128 .Ltmp629-.Ltmp642              #   Call between .Ltmp642 and .Ltmp629
	.uleb128 .Ltmp644-.Lfunc_begin3         #     jumps to .Ltmp644
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp639-.Lfunc_begin3         # >> Call Site 32 <<
	.uleb128 .Ltmp640-.Ltmp639              #   Call between .Ltmp639 and .Ltmp640
	.uleb128 .Ltmp641-.Lfunc_begin3         #     jumps to .Ltmp641
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp636-.Lfunc_begin3         # >> Call Site 33 <<
	.uleb128 .Ltmp635-.Ltmp636              #   Call between .Ltmp636 and .Ltmp635
	.uleb128 .Ltmp638-.Lfunc_begin3         #     jumps to .Ltmp638
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp635-.Lfunc_begin3         # >> Call Site 34 <<
	.uleb128 .Lfunc_end3-.Ltmp635           #   Call between .Ltmp635 and .Lfunc_end3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
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
	.section	.text._ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE,"axG",@progbits,_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE,comdat
	.weak	_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE # -- Begin function _ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE
	.p2align	5
	.type	_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE,@function
_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE: # @_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE
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
	ld.w	$a2, $a2, 4
	ld.w	$a3, $fp, 0
	sub.d	$s2, $a2, $a3
	addi.w	$a2, $zero, -2
	lu32i.d	$a2, 0
	move	$s0, $a1
	bltu	$a2, $s2, .LBB5_5
# %bb.1:
	addi.w	$s4, $s2, 0
	addi.w	$s3, $s2, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv)
	jirl	$ra, $ra, 0
	bstrpick.d	$s1, $s3, 31, 0
	mul.d	$a0, $a0, $s1
	addi.w	$a1, $a0, 0
	bltu	$s4, $a1, .LBB5_4
# %bb.2:
	nor	$a2, $s2, $zero
	addi.w	$a2, $a2, 0
	mod.wu	$s2, $a2, $s3
	bgeu	$a1, $s2, .LBB5_4
	.p2align	4, , 16
.LBB5_3:                                # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv)
	jirl	$ra, $ra, 0
	mul.d	$a0, $a0, $s1
	addi.w	$a1, $a0, 0
	bltu	$a1, $s2, .LBB5_3
.LBB5_4:                                # %_ZNSt24uniform_int_distributionIiE5_S_ndImSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEjEET1_RT0_S4_.exit
	srli.d	$a0, $a0, 32
	b	.LBB5_10
.LBB5_5:
	move	$s1, $a0
	addi.w	$a0, $zero, -1
	lu32i.d	$a0, 0
	bne	$s2, $a0, .LBB5_7
# %bb.6:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv)
	jirl	$ra, $ra, 0
	b	.LBB5_10
.LBB5_7:                                # %.preheader
	ori	$s3, $zero, 0
	lu32i.d	$s3, -1
	.p2align	4, , 16
.LBB5_8:                                # =>This Inner Loop Header: Depth=1
	st.d	$s3, $sp, 16
	addi.d	$a2, $sp, 16
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE)
	jirl	$ra, $ra, 0
	slli.d	$s4, $a0, 32
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv)
	jirl	$ra, $ra, 0
	add.d	$a0, $s4, $a0
	bltu	$s2, $a0, .LBB5_8
# %bb.9:                                #   in Loop: Header=BB5_8 Depth=1
	sltu	$a1, $a0, $s4
	bnez	$a1, .LBB5_8
.LBB5_10:                               # %.loopexit
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
.Lfunc_end5:
	.size	_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE, .Lfunc_end5-_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE
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
	bltu	$a2, $a1, .LBB6_6
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
.LBB6_2:                                # %vector.body
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
	bne	$a3, $a6, .LBB6_2
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
.LBB6_4:                                # %vector.body14
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
	bnez	$a2, .LBB6_4
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
.LBB6_6:
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
.Lfunc_end6:
	.size	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv, .Lfunc_end6-_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv
	.cfi_endproc
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_0E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.type	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_0E9_M_invokeERKSt9_Any_dataOS0_S7_Oi,@function
_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_0E9_M_invokeERKSt9_Any_dataOS0_S7_Oi: # @"_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_0E9_M_invokeERKSt9_Any_dataOS0_S7_Oi"
# %bb.0:
	ld.w	$a3, $a3, 0
	blez	$a3, .LBB7_4
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	move	$a4, $zero
	addi.w	$a0, $zero, -1
	.p2align	4, , 16
.LBB7_2:                                # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a1, 0
	ld.w	$a6, $a2, 0
	slt	$a5, $a6, $a5
	masknez	$a0, $a0, $a5
	maskeqz	$a5, $a4, $a5
	or	$a0, $a5, $a0
	addi.d	$a3, $a3, -1
	addi.w	$a4, $a4, 1
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, 4
	bnez	$a3, .LBB7_2
# %bb.3:                                # %"_ZSt10__invoke_rIiRZ4mainE3$_0JPiS2_iEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.LBB7_4:
	addi.w	$a0, $zero, -1
	ret
.Lfunc_end7:
	.size	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_0E9_M_invokeERKSt9_Any_dataOS0_S7_Oi, .Lfunc_end7-_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_0E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
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
	.size	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end8-_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_1E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
.LCPI9_0:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.text
	.p2align	5
	.type	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_1E9_M_invokeERKSt9_Any_dataOS0_S7_Oi,@function
_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_1E9_M_invokeERKSt9_Any_dataOS0_S7_Oi: # @"_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_1E9_M_invokeERKSt9_Any_dataOS0_S7_Oi"
# %bb.0:
	ld.w	$a3, $a3, 0
	blez	$a3, .LBB9_3
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	ori	$a0, $zero, 8
	bgeu	$a3, $a0, .LBB9_4
# %bb.2:
	move	$a0, $zero
	addi.d	$a4, $zero, -1
	b	.LBB9_7
.LBB9_3:
	addi.d	$a4, $zero, -1
	addi.w	$a0, $a4, 0
	ret
.LBB9_4:                                # %vector.ph
	bstrpick.d	$a0, $a3, 30, 3
	slli.d	$a0, $a0, 3
	addi.d	$a5, $a2, 16
	pcalau12i	$a4, %pc_hi20(.LCPI9_0)
	vld	$vr0, $a4, %pc_lo12(.LCPI9_0)
	lu12i.w	$a4, -524288
	vreplgr2vr.w	$vr1, $a4
	addi.d	$a6, $a1, 16
	move	$a7, $a0
	vori.b	$vr2, $vr1, 0
	.p2align	4, , 16
.LBB9_5:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr3, $a6, -16
	vld	$vr4, $a6, 0
	vld	$vr5, $a5, -16
	vld	$vr6, $a5, 0
	vaddi.wu	$vr7, $vr0, 4
	vslt.w	$vr3, $vr5, $vr3
	vslt.w	$vr4, $vr6, $vr4
	vbitsel.v	$vr1, $vr1, $vr0, $vr3
	vbitsel.v	$vr2, $vr2, $vr7, $vr4
	vaddi.wu	$vr0, $vr0, 8
	addi.d	$a7, $a7, -8
	addi.d	$a5, $a5, 32
	addi.d	$a6, $a6, 32
	bnez	$a7, .LBB9_5
# %bb.6:                                # %middle.block
	vmax.w	$vr0, $vr1, $vr2
	vbsrl.v	$vr1, $vr0, 8
	vmax.w	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 4
	vmax.w	$vr0, $vr1, $vr0
	vpickve2gr.w	$a5, $vr0, 0
	xor	$a4, $a5, $a4
	sltui	$a4, $a4, 1
	masknez	$a5, $a5, $a4
	addi.d	$a6, $zero, -1
	maskeqz	$a4, $a6, $a4
	or	$a4, $a4, $a5
	beq	$a0, $a3, .LBB9_9
.LBB9_7:                                # %.lr.ph.i.i.i.preheader
	sub.d	$a3, $a3, $a0
	alsl.d	$a2, $a0, $a2, 2
	alsl.d	$a1, $a0, $a1, 2
	.p2align	4, , 16
.LBB9_8:                                # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a1, 0
	ld.w	$a6, $a2, 0
	slt	$a5, $a6, $a5
	masknez	$a4, $a4, $a5
	maskeqz	$a5, $a0, $a5
	or	$a4, $a5, $a4
	addi.d	$a3, $a3, -1
	addi.d	$a0, $a0, 1
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, 4
	bnez	$a3, .LBB9_8
.LBB9_9:                                # %"_ZSt10__invoke_rIiRZ4mainE3$_1JPiS2_iEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	addi.w	$a0, $a4, 0
	ret
.Lfunc_end9:
	.size	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_1E9_M_invokeERKSt9_Any_dataOS0_S7_Oi, .Lfunc_end9-_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_1E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
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
	.size	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end10-_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _ZL9init_dataIfEvRKSt10unique_ptrIA_T_St14default_deleteIS2_EEj
.LCPI11_0:
	.word	0x4f800000                      # float 4.2949673E+9
.LCPI11_1:
	.word	0x00800000                      # float 1.17549435E-38
.LCPI11_2:
	.word	0x7f7fffff                      # float 3.40282347E+38
	.text
	.p2align	5
	.type	_ZL9init_dataIfEvRKSt10unique_ptrIA_T_St14default_deleteIS2_EEj,@function
_ZL9init_dataIfEvRKSt10unique_ptrIA_T_St14default_deleteIS2_EEj: # @_ZL9init_dataIfEvRKSt10unique_ptrIA_T_St14default_deleteIS2_EEj
# %bb.0:
	addi.d	$sp, $sp, -240
	st.d	$ra, $sp, 232                   # 8-byte Folded Spill
	st.d	$fp, $sp, 224                   # 8-byte Folded Spill
	st.d	$s0, $sp, 216                   # 8-byte Folded Spill
	st.d	$s1, $sp, 208                   # 8-byte Folded Spill
	st.d	$s2, $sp, 200                   # 8-byte Folded Spill
	st.d	$s3, $sp, 192                   # 8-byte Folded Spill
	st.d	$s4, $sp, 184                   # 8-byte Folded Spill
	st.d	$s5, $sp, 176                   # 8-byte Folded Spill
	st.d	$s6, $sp, 168                   # 8-byte Folded Spill
	st.d	$s7, $sp, 160                   # 8-byte Folded Spill
	st.d	$s8, $sp, 152                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 144                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 136                  # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a0, $zero, 0
	lu32i.d	$a0, -65536
	lu52i.d	$a1, $a0, 1025
	move	$a0, $zero
	pcaddu18i	$ra, %call36(logl)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$s1, $a1
	lu52i.d	$a1, $zero, 1024
	move	$a0, $zero
	pcaddu18i	$ra, %call36(logl)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	move	$a3, $a1
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(__divtf3)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(__fixunstfdi)
	jirl	$ra, $ra, 0
	move	$a5, $fp
	addi.d	$a1, $a0, 23
	div.du	$a0, $a1, $a0
	ori	$a1, $zero, 1
	sltu	$a2, $a1, $a0
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$a6, $a0, $a1
	pcalau12i	$a0, %pc_hi20(_ZL3rng)
	addi.d	$s1, $a0, %pc_lo12(_ZL3rng)
	move	$a7, $zero
	ldptr.d	$fp, $s1, 4992
	movgr2fr.w	$fs0, $zero
	ori	$t0, $zero, 624
	lu12i.w	$a0, -524288
	vreplgr2vr.d	$vr8, $a0
	lu12i.w	$a0, 524287
	ori	$s4, $a0, 4094
	vreplgr2vr.d	$vr9, $s4
	ori	$s5, $zero, 3176
	ori	$s6, $zero, 3192
	vrepli.d	$vr10, 1
	vrepli.b	$vr11, -1
	lu12i.w	$a0, -421749
	ori	$s7, $a0, 223
	lu32i.d	$s7, 0
	vreplgr2vr.d	$vr12, $s7
	ori	$s8, $zero, 1792
	lu12i.w	$a0, -1
	ori	$t1, $a0, 928
	lu12i.w	$a0, 1
	ori	$s0, $a0, 896
	ori	$s2, $zero, 3168
	ori	$s3, $a0, 888
	lu12i.w	$a0, -404795
	ori	$t2, $a0, 1664
	lu32i.d	$t2, 0
	lu12i.w	$t3, -66464
	pcalau12i	$a0, %pc_hi20(.LCPI11_0)
	fld.s	$fs1, $a0, %pc_lo12(.LCPI11_0)
	lu32i.d	$t3, 0
	vldi	$vr13, -1168
	ori	$t4, $zero, 1000
	.p2align	4, , 16
.LBB11_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_3 Depth 2
                                        #       Child Loop BB11_5 Depth 3
                                        #       Child Loop BB11_7 Depth 3
	vldi	$vr0, -1168
	move	$a0, $a6
	fmov.s	$fa1, $fs0
	b	.LBB11_3
	.p2align	4, , 16
.LBB11_2:                               # %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv.exit
                                        #   in Loop: Header=BB11_3 Depth=2
	slli.d	$a1, $fp, 3
	addi.d	$fp, $fp, 1
	stptr.d	$fp, $s1, 4992
	ldx.d	$a1, $s1, $a1
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
	beqz	$a0, .LBB11_9
.LBB11_3:                               # %select.unfold.i.i.i.i
                                        #   Parent Loop BB11_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB11_5 Depth 3
                                        #       Child Loop BB11_7 Depth 3
	bltu	$fp, $t0, .LBB11_2
# %bb.4:                                # %vector.ph5
                                        #   in Loop: Header=BB11_3 Depth=2
	ld.d	$a2, $s1, 0
	move	$a1, $zero
	vinsgr2vr.d	$vr2, $a2, 1
	.p2align	4, , 16
.LBB11_5:                               # %vector.body6
                                        #   Parent Loop BB11_1 Depth=1
                                        #     Parent Loop BB11_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a2, $s1, $a1
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
	vldx	$vr5, $a2, $s5
	vldx	$vr7, $a2, $s6
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
	vstx	$vr4, $s1, $a1
	addi.d	$a1, $a1, 32
	vst	$vr3, $a2, 16
	bne	$a1, $s8, .LBB11_5
# %bb.6:                                # %vector.ph
                                        #   in Loop: Header=BB11_3 Depth=2
	ld.d	$a1, $s1, 1800
	vpickve2gr.d	$a2, $vr2, 1
	ldptr.d	$a3, $s1, 4968
	and	$a4, $a1, $s4
	bstrins.d	$a2, $a4, 30, 0
	srli.d	$a2, $a2, 1
	xor	$a2, $a2, $a3
	andi	$a3, $a1, 1
	sub.d	$a3, $zero, $a3
	and	$a3, $a3, $s7
	ld.d	$a4, $s1, 1808
	xor	$a2, $a2, $a3
	st.d	$a2, $s1, 1792
	ldptr.d	$a2, $s1, 4976
	and	$a3, $a4, $s4
	bstrins.d	$a1, $a3, 30, 0
	srli.d	$a1, $a1, 1
	xor	$a1, $a1, $a2
	andi	$a2, $a4, 1
	sub.d	$a2, $zero, $a2
	and	$a2, $a2, $s7
	ld.d	$a3, $s1, 1816
	xor	$a1, $a1, $a2
	st.d	$a1, $s1, 1800
	ldptr.d	$a1, $s1, 4984
	and	$a2, $a3, $s4
	bstrins.d	$a4, $a2, 30, 0
	srli.d	$a2, $a4, 1
	xor	$a1, $a2, $a1
	andi	$a2, $a3, 1
	sub.d	$a2, $zero, $a2
	and	$a2, $a2, $s7
	xor	$a1, $a1, $a2
	st.d	$a1, $s1, 1808
	vinsgr2vr.d	$vr2, $a3, 1
	move	$a1, $t1
	.p2align	4, , 16
.LBB11_7:                               # %vector.body
                                        #   Parent Loop BB11_1 Depth=1
                                        #     Parent Loop BB11_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a2, $s1, $a1
	vldx	$vr3, $a2, $s0
	vshuf4i.d	$vr2, $vr3, 9
	vand.v	$vr2, $vr2, $vr8
	vldx	$vr4, $a2, $s2
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
	vstx	$vr2, $a2, $s3
	vori.b	$vr2, $vr3, 0
	bnez	$a1, .LBB11_7
# %bb.8:                                # %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit.i
                                        #   in Loop: Header=BB11_3 Depth=2
	ld.d	$a1, $s1, 0
	move	$fp, $zero
	ldptr.d	$a2, $s1, 4984
	bstrpick.d	$a3, $a1, 30, 1
	ldptr.d	$a4, $s1, 3168
	slli.d	$a3, $a3, 1
	bstrins.d	$a2, $a3, 30, 0
	srli.d	$a2, $a2, 1
	xor	$a2, $a2, $a4
	andi	$a1, $a1, 1
	sub.d	$a1, $zero, $a1
	and	$a1, $a1, $s7
	xor	$a1, $a2, $a1
	stptr.d	$a1, $s1, 4984
	b	.LBB11_2
	.p2align	4, , 16
.LBB11_9:                               #   in Loop: Header=BB11_1 Depth=1
	fdiv.s	$fa0, $fa1, $fa0
	fcmp.cult.s	$fcc0, $fa0, $ft5
	bceqz	$fcc0, .LBB11_11
.LBB11_10:                              # %_ZNSt25uniform_real_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_.exit
                                        #   in Loop: Header=BB11_1 Depth=1
	pcalau12i	$a0, %pc_hi20(.LCPI11_1)
	fld.s	$fa1, $a0, %pc_lo12(.LCPI11_1)
	pcalau12i	$a0, %pc_hi20(.LCPI11_2)
	fld.s	$fa2, $a0, %pc_lo12(.LCPI11_2)
	fmadd.s	$fa0, $fa0, $fa2, $fa1
	slli.d	$a0, $a7, 2
	addi.d	$a7, $a7, 1
	fstx.s	$fa0, $a5, $a0
	bne	$a7, $t4, .LBB11_1
	b	.LBB11_12
.LBB11_11:                              #   in Loop: Header=BB11_1 Depth=1
	vldi	$vr0, -1168
	fmov.s	$fa1, $fs0
	st.d	$a5, $sp, 128                   # 8-byte Folded Spill
	st.d	$a6, $sp, 120                   # 8-byte Folded Spill
	st.d	$a7, $sp, 112                   # 8-byte Folded Spill
	vst	$vr8, $sp, 96                   # 16-byte Folded Spill
	vst	$vr9, $sp, 80                   # 16-byte Folded Spill
	vst	$vr10, $sp, 64                  # 16-byte Folded Spill
	vst	$vr11, $sp, 48                  # 16-byte Folded Spill
	vst	$vr12, $sp, 32                  # 16-byte Folded Spill
	st.d	$t1, $sp, 24                    # 8-byte Folded Spill
	st.d	$t2, $sp, 16                    # 8-byte Folded Spill
	st.d	$t3, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(nextafterf)
	jirl	$ra, $ra, 0
	ori	$t4, $zero, 1000
	vldi	$vr13, -1168
	ld.d	$t3, $sp, 8                     # 8-byte Folded Reload
	ld.d	$t2, $sp, 16                    # 8-byte Folded Reload
	ld.d	$t1, $sp, 24                    # 8-byte Folded Reload
	vld	$vr12, $sp, 32                  # 16-byte Folded Reload
	vld	$vr11, $sp, 48                  # 16-byte Folded Reload
	vld	$vr10, $sp, 64                  # 16-byte Folded Reload
	vld	$vr9, $sp, 80                   # 16-byte Folded Reload
	vld	$vr8, $sp, 96                   # 16-byte Folded Reload
	ori	$t0, $zero, 624
	ld.d	$a7, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 128                   # 8-byte Folded Reload
	b	.LBB11_10
.LBB11_12:
	fld.d	$fs1, $sp, 136                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 144                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 224                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 232                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 240
	ret
.Lfunc_end11:
	.size	_ZL9init_dataIfEvRKSt10unique_ptrIA_T_St14default_deleteIS2_EEj, .Lfunc_end11-_ZL9init_dataIfEvRKSt10unique_ptrIA_T_St14default_deleteIS2_EEj
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_0E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.type	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_0E9_M_invokeERKSt9_Any_dataOS0_S7_Oi,@function
_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_0E9_M_invokeERKSt9_Any_dataOS0_S7_Oi: # @"_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_0E9_M_invokeERKSt9_Any_dataOS0_S7_Oi"
# %bb.0:
	ld.w	$a3, $a3, 0
	blez	$a3, .LBB12_4
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	move	$a4, $zero
	addi.w	$a0, $zero, -1
	.p2align	4, , 16
.LBB12_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a1, 0
	fld.s	$fa1, $a2, 0
	fcmp.clt.s	$fcc0, $fa1, $fa0
	movcf2gr	$a5, $fcc0
	masknez	$a0, $a0, $a5
	maskeqz	$a5, $a4, $a5
	or	$a0, $a5, $a0
	addi.d	$a3, $a3, -1
	addi.w	$a4, $a4, 1
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, 4
	bnez	$a3, .LBB12_2
# %bb.3:                                # %"_ZSt10__invoke_rIiRZ4mainE3$_0JPfS2_iEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.LBB12_4:
	addi.w	$a0, $zero, -1
	ret
.Lfunc_end12:
	.size	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_0E9_M_invokeERKSt9_Any_dataOS0_S7_Oi, .Lfunc_end12-_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_0E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB13_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB13_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB13_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE3$_0)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE3$_0)
.LBB13_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end13:
	.size	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end13-_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_1E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
.LCPI14_0:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.text
	.p2align	5
	.type	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_1E9_M_invokeERKSt9_Any_dataOS0_S7_Oi,@function
_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_1E9_M_invokeERKSt9_Any_dataOS0_S7_Oi: # @"_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_1E9_M_invokeERKSt9_Any_dataOS0_S7_Oi"
# %bb.0:
	ld.w	$a3, $a3, 0
	blez	$a3, .LBB14_3
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	ori	$a0, $zero, 8
	bgeu	$a3, $a0, .LBB14_4
# %bb.2:
	move	$a0, $zero
	addi.d	$a4, $zero, -1
	b	.LBB14_7
.LBB14_3:
	addi.d	$a4, $zero, -1
	addi.w	$a0, $a4, 0
	ret
.LBB14_4:                               # %vector.ph
	bstrpick.d	$a0, $a3, 30, 3
	slli.d	$a0, $a0, 3
	addi.d	$a5, $a2, 16
	pcalau12i	$a4, %pc_hi20(.LCPI14_0)
	vld	$vr0, $a4, %pc_lo12(.LCPI14_0)
	lu12i.w	$a4, -524288
	vreplgr2vr.w	$vr1, $a4
	addi.d	$a6, $a1, 16
	move	$a7, $a0
	vori.b	$vr2, $vr1, 0
	.p2align	4, , 16
.LBB14_5:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr3, $a6, -16
	vld	$vr4, $a6, 0
	vld	$vr5, $a5, -16
	vld	$vr6, $a5, 0
	vaddi.wu	$vr7, $vr0, 4
	vfcmp.clt.s	$vr3, $vr5, $vr3
	vfcmp.clt.s	$vr4, $vr6, $vr4
	vbitsel.v	$vr1, $vr1, $vr0, $vr3
	vbitsel.v	$vr2, $vr2, $vr7, $vr4
	vaddi.wu	$vr0, $vr0, 8
	addi.d	$a7, $a7, -8
	addi.d	$a5, $a5, 32
	addi.d	$a6, $a6, 32
	bnez	$a7, .LBB14_5
# %bb.6:                                # %middle.block
	vmax.w	$vr0, $vr1, $vr2
	vbsrl.v	$vr1, $vr0, 8
	vmax.w	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 4
	vmax.w	$vr0, $vr1, $vr0
	vpickve2gr.w	$a5, $vr0, 0
	xor	$a4, $a5, $a4
	sltui	$a4, $a4, 1
	masknez	$a5, $a5, $a4
	addi.d	$a6, $zero, -1
	maskeqz	$a4, $a6, $a4
	or	$a4, $a4, $a5
	beq	$a0, $a3, .LBB14_9
.LBB14_7:                               # %.lr.ph.i.i.i.preheader
	sub.d	$a3, $a3, $a0
	alsl.d	$a2, $a0, $a2, 2
	alsl.d	$a1, $a0, $a1, 2
	.p2align	4, , 16
.LBB14_8:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a1, 0
	fld.s	$fa1, $a2, 0
	fcmp.clt.s	$fcc0, $fa1, $fa0
	movcf2gr	$a5, $fcc0
	masknez	$a4, $a4, $a5
	maskeqz	$a5, $a0, $a5
	or	$a4, $a5, $a4
	addi.d	$a3, $a3, -1
	addi.d	$a0, $a0, 1
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, 4
	bnez	$a3, .LBB14_8
.LBB14_9:                               # %"_ZSt10__invoke_rIiRZ4mainE3$_1JPfS2_iEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	addi.w	$a0, $a4, 0
	ret
.Lfunc_end14:
	.size	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_1E9_M_invokeERKSt9_Any_dataOS0_S7_Oi, .Lfunc_end14-_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_1E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB15_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB15_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB15_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE3$_1)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE3$_1)
.LBB15_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end15:
	.size	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end15-_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt24uniform_int_distributionIsEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEsRT_RKNS0_10param_typeE,"axG",@progbits,_ZNSt24uniform_int_distributionIsEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEsRT_RKNS0_10param_typeE,comdat
	.weak	_ZNSt24uniform_int_distributionIsEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEsRT_RKNS0_10param_typeE # -- Begin function _ZNSt24uniform_int_distributionIsEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEsRT_RKNS0_10param_typeE
	.p2align	5
	.type	_ZNSt24uniform_int_distributionIsEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEsRT_RKNS0_10param_typeE,@function
_ZNSt24uniform_int_distributionIsEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEsRT_RKNS0_10param_typeE: # @_ZNSt24uniform_int_distributionIsEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEsRT_RKNS0_10param_typeE
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
	ld.h	$a2, $a2, 2
	ld.h	$a3, $fp, 0
	sub.d	$s2, $a2, $a3
	addi.w	$a2, $zero, -1
	lu32i.d	$a2, 0
	move	$s0, $a1
	bgeu	$s2, $a2, .LBB16_5
# %bb.1:
	addi.d	$s1, $s2, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv)
	jirl	$ra, $ra, 0
	mul.d	$a0, $a0, $s1
	addi.w	$a1, $a0, 0
	bltu	$s2, $a1, .LBB16_4
# %bb.2:
	nor	$a2, $s2, $zero
	mod.wu	$s2, $a2, $s1
	bgeu	$a1, $s2, .LBB16_4
	.p2align	4, , 16
.LBB16_3:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv)
	jirl	$ra, $ra, 0
	mul.d	$a0, $a0, $s1
	addi.w	$a1, $a0, 0
	bltu	$a1, $s2, .LBB16_3
.LBB16_4:                               # %_ZNSt24uniform_int_distributionIsE5_S_ndImSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEjEET1_RT0_S4_.exit
	srli.d	$a0, $a0, 32
	b	.LBB16_8
.LBB16_5:
	move	$s1, $a0
	lu12i.w	$s3, -16
	lu32i.d	$s3, 0
	.p2align	4, , 16
.LBB16_6:                               # =>This Inner Loop Header: Depth=1
	st.w	$s3, $sp, 20
	addi.d	$a2, $sp, 20
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZNSt24uniform_int_distributionIsEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEsRT_RKNS0_10param_typeE)
	jirl	$ra, $ra, 0
	slli.d	$s4, $a0, 32
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv)
	jirl	$ra, $ra, 0
	add.d	$a0, $s4, $a0
	bltu	$s2, $a0, .LBB16_6
# %bb.7:                                #   in Loop: Header=BB16_6 Depth=1
	sltu	$a1, $a0, $s4
	bnez	$a1, .LBB16_6
.LBB16_8:                               # %.loopexit
	ld.h	$a1, $fp, 0
	add.d	$a0, $a1, $a0
	ext.w.h	$a0, $a0
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end16:
	.size	_ZNSt24uniform_int_distributionIsEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEsRT_RKNS0_10param_typeE, .Lfunc_end16-_ZNSt24uniform_int_distributionIsEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEsRT_RKNS0_10param_typeE
	.cfi_endproc
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_2E9_M_invokeERKSt9_Any_dataOS0_S7_Os
	.type	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_2E9_M_invokeERKSt9_Any_dataOS0_S7_Os,@function
_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_2E9_M_invokeERKSt9_Any_dataOS0_S7_Os: # @"_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_2E9_M_invokeERKSt9_Any_dataOS0_S7_Os"
# %bb.0:
	ld.h	$a0, $a3, 0
	lu12i.w	$a3, 15
	blez	$a0, .LBB17_4
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	move	$a4, $zero
	ori	$a3, $a3, 4095
	.p2align	4, , 16
.LBB17_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a5, $a1, 0
	ld.h	$a6, $a2, 0
	slt	$a5, $a6, $a5
	masknez	$a3, $a3, $a5
	maskeqz	$a5, $a4, $a5
	or	$a3, $a5, $a3
	addi.d	$a4, $a4, 1
	addi.d	$a2, $a2, 2
	addi.d	$a1, $a1, 2
	bne	$a0, $a4, .LBB17_2
# %bb.3:                                # %"_ZSt10__invoke_rIsRZ4mainE3$_2JPsS2_sEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ext.w.h	$a0, $a3
	ret
.LBB17_4:
	ori	$a3, $a3, 4095
	ext.w.h	$a0, $a3
	ret
.Lfunc_end17:
	.size	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_2E9_M_invokeERKSt9_Any_dataOS0_S7_Os, .Lfunc_end17-_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_2E9_M_invokeERKSt9_Any_dataOS0_S7_Os
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_2E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_2E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_2E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_2E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB18_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB18_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_2E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB18_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE3$_2)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE3$_2)
.LBB18_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_2E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end18:
	.size	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_2E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end18-_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_2E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_3E9_M_invokeERKSt9_Any_dataOS0_S7_Os
.LCPI19_0:
	.half	0                               # 0x0
	.half	1                               # 0x1
	.half	2                               # 0x2
	.half	3                               # 0x3
	.half	4                               # 0x4
	.half	5                               # 0x5
	.half	6                               # 0x6
	.half	7                               # 0x7
	.text
	.p2align	5
	.type	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_3E9_M_invokeERKSt9_Any_dataOS0_S7_Os,@function
_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_3E9_M_invokeERKSt9_Any_dataOS0_S7_Os: # @"_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_3E9_M_invokeERKSt9_Any_dataOS0_S7_Os"
# %bb.0:
	ld.h	$a0, $a3, 0
	lu12i.w	$a4, 15
	blez	$a0, .LBB19_3
# %bb.1:                                # %iter.check
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	bstrpick.d	$a0, $a0, 15, 0
	ori	$a3, $zero, 8
	bgeu	$a0, $a3, .LBB19_4
# %bb.2:
	move	$a3, $zero
	ori	$a7, $a4, 4095
	b	.LBB19_14
.LBB19_3:
	ori	$a7, $a4, 4095
	ext.w.h	$a0, $a7
	ret
.LBB19_4:                               # %vector.main.loop.iter.check
	ori	$a6, $a4, 4095
	ori	$a3, $zero, 16
	pcalau12i	$a5, %pc_hi20(.LCPI19_0)
	lu12i.w	$a4, 8
	bgeu	$a0, $a3, .LBB19_10
# %bb.5:
	move	$a3, $zero
	move	$a7, $a6
.LBB19_6:                               # %vec.epilog.ph
	move	$t0, $a3
	bstrpick.d	$a3, $a7, 15, 0
	xor	$a3, $a3, $a6
	sltui	$a3, $a3, 1
	masknez	$a6, $a7, $a3
	lu12i.w	$a7, -8
	maskeqz	$a3, $a7, $a3
	or	$a6, $a3, $a6
	bstrpick.d	$a3, $a0, 14, 3
	vld	$vr1, $a5, %pc_lo12(.LCPI19_0)
	slli.d	$a3, $a3, 3
	vreplgr2vr.h	$vr0, $a6
	vreplgr2vr.h	$vr2, $t0
	vor.v	$vr1, $vr2, $vr1
	sub.d	$a5, $t0, $a3
	alsl.d	$a6, $t0, $a2, 1
	alsl.d	$a7, $t0, $a1, 1
	.p2align	4, , 16
.LBB19_7:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a7, 0
	vld	$vr3, $a6, 0
	vslt.h	$vr2, $vr3, $vr2
	vbitsel.v	$vr0, $vr0, $vr1, $vr2
	vaddi.hu	$vr1, $vr1, 8
	addi.d	$a5, $a5, 8
	addi.d	$a6, $a6, 16
	addi.d	$a7, $a7, 16
	bnez	$a5, .LBB19_7
# %bb.8:                                # %vec.epilog.middle.block
	vbsrl.v	$vr1, $vr0, 8
	vmax.h	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 4
	vmax.h	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 2
	vmax.h	$vr0, $vr1, $vr0
	vpickve2gr.h	$a5, $vr0, 0
	bstrpick.d	$a6, $a5, 15, 0
	xor	$a4, $a6, $a4
	sltui	$a4, $a4, 1
	masknez	$a5, $a5, $a4
	addi.d	$a6, $zero, -1
	maskeqz	$a4, $a6, $a4
	or	$a7, $a4, $a5
	bne	$a3, $a0, .LBB19_14
.LBB19_9:                               # %"_ZSt10__invoke_rIsRZ4mainE3$_3JPsS2_sEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ext.w.h	$a0, $a7
	ret
.LBB19_10:                              # %vector.ph
	bstrpick.d	$a3, $a0, 14, 4
	slli.d	$a3, $a3, 4
	vld	$vr0, $a5, %pc_lo12(.LCPI19_0)
	addi.d	$a7, $a2, 16
	vreplgr2vr.h	$vr1, $a4
	addi.d	$t0, $a1, 16
	move	$t1, $a3
	vori.b	$vr2, $vr1, 0
	.p2align	4, , 16
.LBB19_11:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr3, $t0, -16
	vld	$vr4, $t0, 0
	vld	$vr5, $a7, -16
	vld	$vr6, $a7, 0
	vaddi.hu	$vr7, $vr0, 8
	vslt.h	$vr3, $vr5, $vr3
	vslt.h	$vr4, $vr6, $vr4
	vbitsel.v	$vr1, $vr1, $vr0, $vr3
	vbitsel.v	$vr2, $vr2, $vr7, $vr4
	vaddi.hu	$vr0, $vr0, 16
	addi.d	$t1, $t1, -16
	addi.d	$a7, $a7, 32
	addi.d	$t0, $t0, 32
	bnez	$t1, .LBB19_11
# %bb.12:                               # %middle.block
	vmax.h	$vr0, $vr1, $vr2
	vbsrl.v	$vr1, $vr0, 8
	vmax.h	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 4
	vmax.h	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 2
	vmax.h	$vr0, $vr1, $vr0
	vpickve2gr.h	$a7, $vr0, 0
	bstrpick.d	$t0, $a7, 15, 0
	xor	$t0, $t0, $a4
	sltui	$t0, $t0, 1
	masknez	$a7, $a7, $t0
	addi.w	$t1, $zero, -1
	maskeqz	$t0, $t1, $t0
	or	$a7, $t0, $a7
	beq	$a3, $a0, .LBB19_9
# %bb.13:                               # %vec.epilog.iter.check
	andi	$t0, $a0, 8
	bnez	$t0, .LBB19_6
.LBB19_14:                              # %.lr.ph.i.i.i.preheader
	alsl.d	$a2, $a3, $a2, 1
	alsl.d	$a1, $a3, $a1, 1
	.p2align	4, , 16
.LBB19_15:                              # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a4, $a1, 0
	ld.h	$a5, $a2, 0
	slt	$a4, $a5, $a4
	masknez	$a5, $a7, $a4
	maskeqz	$a4, $a3, $a4
	or	$a7, $a4, $a5
	addi.d	$a3, $a3, 1
	addi.d	$a2, $a2, 2
	addi.d	$a1, $a1, 2
	bne	$a0, $a3, .LBB19_15
	b	.LBB19_9
.Lfunc_end19:
	.size	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_3E9_M_invokeERKSt9_Any_dataOS0_S7_Os, .Lfunc_end19-_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_3E9_M_invokeERKSt9_Any_dataOS0_S7_Os
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_3E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_3E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_3E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_3E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB20_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB20_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_3E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB20_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE3$_3)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE3$_3)
.LBB20_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_3E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end20:
	.size	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_3E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end20-_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_3E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_4E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.type	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_4E9_M_invokeERKSt9_Any_dataOS0_S7_Oi,@function
_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_4E9_M_invokeERKSt9_Any_dataOS0_S7_Oi: # @"_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_4E9_M_invokeERKSt9_Any_dataOS0_S7_Oi"
# %bb.0:
	ld.w	$a3, $a3, 0
	blez	$a3, .LBB21_4
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	move	$a4, $zero
	addi.w	$a0, $zero, -1
	.p2align	4, , 16
.LBB21_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a1, 0
	ld.w	$a6, $a2, 0
	slt	$a5, $a6, $a5
	masknez	$a6, $a4, $a5
	maskeqz	$a0, $a0, $a5
	or	$a0, $a0, $a6
	addi.d	$a3, $a3, -1
	addi.w	$a4, $a4, 1
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, 4
	bnez	$a3, .LBB21_2
# %bb.3:                                # %"_ZSt10__invoke_rIiRZ4mainE3$_4JPiS2_iEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.LBB21_4:
	addi.w	$a0, $zero, -1
	ret
.Lfunc_end21:
	.size	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_4E9_M_invokeERKSt9_Any_dataOS0_S7_Oi, .Lfunc_end21-_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_4E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB22_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB22_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB22_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE3$_4)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE3$_4)
.LBB22_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end22:
	.size	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end22-_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_5E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
.LCPI23_0:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.text
	.p2align	5
	.type	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_5E9_M_invokeERKSt9_Any_dataOS0_S7_Oi,@function
_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_5E9_M_invokeERKSt9_Any_dataOS0_S7_Oi: # @"_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_5E9_M_invokeERKSt9_Any_dataOS0_S7_Oi"
# %bb.0:
	ld.w	$a3, $a3, 0
	blez	$a3, .LBB23_3
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	ori	$a0, $zero, 8
	bgeu	$a3, $a0, .LBB23_4
# %bb.2:
	move	$a0, $zero
	addi.d	$a4, $zero, -1
	b	.LBB23_7
.LBB23_3:
	addi.d	$a4, $zero, -1
	addi.w	$a0, $a4, 0
	ret
.LBB23_4:                               # %vector.ph
	bstrpick.d	$a0, $a3, 30, 3
	slli.d	$a0, $a0, 3
	addi.d	$a5, $a2, 16
	pcalau12i	$a4, %pc_hi20(.LCPI23_0)
	vld	$vr0, $a4, %pc_lo12(.LCPI23_0)
	lu12i.w	$a4, -524288
	vreplgr2vr.w	$vr1, $a4
	addi.d	$a6, $a1, 16
	move	$a7, $a0
	vori.b	$vr2, $vr1, 0
	.p2align	4, , 16
.LBB23_5:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr3, $a6, -16
	vld	$vr4, $a6, 0
	vld	$vr5, $a5, -16
	vld	$vr6, $a5, 0
	vaddi.wu	$vr7, $vr0, 4
	vslt.w	$vr3, $vr5, $vr3
	vslt.w	$vr4, $vr6, $vr4
	vbitsel.v	$vr1, $vr0, $vr1, $vr3
	vbitsel.v	$vr2, $vr7, $vr2, $vr4
	vaddi.wu	$vr0, $vr0, 8
	addi.d	$a7, $a7, -8
	addi.d	$a5, $a5, 32
	addi.d	$a6, $a6, 32
	bnez	$a7, .LBB23_5
# %bb.6:                                # %middle.block
	vmax.w	$vr0, $vr1, $vr2
	vbsrl.v	$vr1, $vr0, 8
	vmax.w	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 4
	vmax.w	$vr0, $vr1, $vr0
	vpickve2gr.w	$a5, $vr0, 0
	xor	$a4, $a5, $a4
	sltui	$a4, $a4, 1
	masknez	$a5, $a5, $a4
	addi.d	$a6, $zero, -1
	maskeqz	$a4, $a6, $a4
	or	$a4, $a4, $a5
	beq	$a0, $a3, .LBB23_9
.LBB23_7:                               # %.lr.ph.i.i.i.preheader
	sub.d	$a3, $a3, $a0
	alsl.d	$a2, $a0, $a2, 2
	alsl.d	$a1, $a0, $a1, 2
	.p2align	4, , 16
.LBB23_8:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a1, 0
	ld.w	$a6, $a2, 0
	slt	$a5, $a6, $a5
	masknez	$a6, $a0, $a5
	maskeqz	$a4, $a4, $a5
	or	$a4, $a4, $a6
	addi.d	$a3, $a3, -1
	addi.d	$a0, $a0, 1
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, 4
	bnez	$a3, .LBB23_8
.LBB23_9:                               # %"_ZSt10__invoke_rIiRZ4mainE3$_5JPiS2_iEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	addi.w	$a0, $a4, 0
	ret
.Lfunc_end23:
	.size	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_5E9_M_invokeERKSt9_Any_dataOS0_S7_Oi, .Lfunc_end23-_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_5E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB24_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB24_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB24_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE3$_5)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE3$_5)
.LBB24_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end24:
	.size	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end24-_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_4E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.type	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_4E9_M_invokeERKSt9_Any_dataOS0_S7_Oi,@function
_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_4E9_M_invokeERKSt9_Any_dataOS0_S7_Oi: # @"_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_4E9_M_invokeERKSt9_Any_dataOS0_S7_Oi"
# %bb.0:
	ld.w	$a3, $a3, 0
	blez	$a3, .LBB25_4
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	move	$a4, $zero
	addi.w	$a0, $zero, -1
	.p2align	4, , 16
.LBB25_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a1, 0
	fld.s	$fa1, $a2, 0
	fcmp.clt.s	$fcc0, $fa1, $fa0
	movcf2gr	$a5, $fcc0
	masknez	$a6, $a4, $a5
	maskeqz	$a0, $a0, $a5
	or	$a0, $a0, $a6
	addi.d	$a3, $a3, -1
	addi.w	$a4, $a4, 1
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, 4
	bnez	$a3, .LBB25_2
# %bb.3:                                # %"_ZSt10__invoke_rIiRZ4mainE3$_4JPfS2_iEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.LBB25_4:
	addi.w	$a0, $zero, -1
	ret
.Lfunc_end25:
	.size	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_4E9_M_invokeERKSt9_Any_dataOS0_S7_Oi, .Lfunc_end25-_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_4E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB26_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB26_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB26_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE3$_4)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE3$_4)
.LBB26_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end26:
	.size	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end26-_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_5E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
.LCPI27_0:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.text
	.p2align	5
	.type	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_5E9_M_invokeERKSt9_Any_dataOS0_S7_Oi,@function
_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_5E9_M_invokeERKSt9_Any_dataOS0_S7_Oi: # @"_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_5E9_M_invokeERKSt9_Any_dataOS0_S7_Oi"
# %bb.0:
	ld.w	$a3, $a3, 0
	blez	$a3, .LBB27_3
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	ori	$a0, $zero, 8
	bgeu	$a3, $a0, .LBB27_4
# %bb.2:
	move	$a0, $zero
	addi.d	$a4, $zero, -1
	b	.LBB27_7
.LBB27_3:
	addi.d	$a4, $zero, -1
	addi.w	$a0, $a4, 0
	ret
.LBB27_4:                               # %vector.ph
	bstrpick.d	$a0, $a3, 30, 3
	slli.d	$a0, $a0, 3
	addi.d	$a5, $a2, 16
	pcalau12i	$a4, %pc_hi20(.LCPI27_0)
	vld	$vr0, $a4, %pc_lo12(.LCPI27_0)
	lu12i.w	$a4, -524288
	vreplgr2vr.w	$vr1, $a4
	addi.d	$a6, $a1, 16
	move	$a7, $a0
	vori.b	$vr2, $vr1, 0
	.p2align	4, , 16
.LBB27_5:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr3, $a6, -16
	vld	$vr4, $a6, 0
	vld	$vr5, $a5, -16
	vld	$vr6, $a5, 0
	vaddi.wu	$vr7, $vr0, 4
	vfcmp.clt.s	$vr3, $vr5, $vr3
	vfcmp.clt.s	$vr4, $vr6, $vr4
	vbitsel.v	$vr1, $vr0, $vr1, $vr3
	vbitsel.v	$vr2, $vr7, $vr2, $vr4
	vaddi.wu	$vr0, $vr0, 8
	addi.d	$a7, $a7, -8
	addi.d	$a5, $a5, 32
	addi.d	$a6, $a6, 32
	bnez	$a7, .LBB27_5
# %bb.6:                                # %middle.block
	vmax.w	$vr0, $vr1, $vr2
	vbsrl.v	$vr1, $vr0, 8
	vmax.w	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 4
	vmax.w	$vr0, $vr1, $vr0
	vpickve2gr.w	$a5, $vr0, 0
	xor	$a4, $a5, $a4
	sltui	$a4, $a4, 1
	masknez	$a5, $a5, $a4
	addi.d	$a6, $zero, -1
	maskeqz	$a4, $a6, $a4
	or	$a4, $a4, $a5
	beq	$a0, $a3, .LBB27_9
.LBB27_7:                               # %.lr.ph.i.i.i.preheader
	sub.d	$a3, $a3, $a0
	alsl.d	$a2, $a0, $a2, 2
	alsl.d	$a1, $a0, $a1, 2
	.p2align	4, , 16
.LBB27_8:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a1, 0
	fld.s	$fa1, $a2, 0
	fcmp.clt.s	$fcc0, $fa1, $fa0
	movcf2gr	$a5, $fcc0
	masknez	$a6, $a0, $a5
	maskeqz	$a4, $a4, $a5
	or	$a4, $a4, $a6
	addi.d	$a3, $a3, -1
	addi.d	$a0, $a0, 1
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, 4
	bnez	$a3, .LBB27_8
.LBB27_9:                               # %"_ZSt10__invoke_rIiRZ4mainE3$_5JPfS2_iEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	addi.w	$a0, $a4, 0
	ret
.Lfunc_end27:
	.size	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_5E9_M_invokeERKSt9_Any_dataOS0_S7_Oi, .Lfunc_end27-_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_5E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB28_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB28_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB28_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE3$_5)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE3$_5)
.LBB28_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end28:
	.size	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end28-_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_6E9_M_invokeERKSt9_Any_dataOS0_S7_Os
	.type	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_6E9_M_invokeERKSt9_Any_dataOS0_S7_Os,@function
_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_6E9_M_invokeERKSt9_Any_dataOS0_S7_Os: # @"_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_6E9_M_invokeERKSt9_Any_dataOS0_S7_Os"
# %bb.0:
	ld.h	$a0, $a3, 0
	lu12i.w	$a3, 15
	blez	$a0, .LBB29_4
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	move	$a4, $zero
	ori	$a3, $a3, 4095
	.p2align	4, , 16
.LBB29_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a5, $a1, 0
	ld.h	$a6, $a2, 0
	slt	$a5, $a6, $a5
	masknez	$a6, $a4, $a5
	maskeqz	$a3, $a3, $a5
	or	$a3, $a3, $a6
	addi.d	$a4, $a4, 1
	addi.d	$a2, $a2, 2
	addi.d	$a1, $a1, 2
	bne	$a0, $a4, .LBB29_2
# %bb.3:                                # %"_ZSt10__invoke_rIsRZ4mainE3$_6JPsS2_sEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ext.w.h	$a0, $a3
	ret
.LBB29_4:
	ori	$a3, $a3, 4095
	ext.w.h	$a0, $a3
	ret
.Lfunc_end29:
	.size	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_6E9_M_invokeERKSt9_Any_dataOS0_S7_Os, .Lfunc_end29-_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_6E9_M_invokeERKSt9_Any_dataOS0_S7_Os
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_6E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_6E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_6E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_6E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB30_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB30_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_6E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB30_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE3$_6)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE3$_6)
.LBB30_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_6E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end30:
	.size	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_6E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end30-_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_6E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_7E9_M_invokeERKSt9_Any_dataOS0_S7_Os
.LCPI31_0:
	.half	0                               # 0x0
	.half	1                               # 0x1
	.half	2                               # 0x2
	.half	3                               # 0x3
	.half	4                               # 0x4
	.half	5                               # 0x5
	.half	6                               # 0x6
	.half	7                               # 0x7
	.text
	.p2align	5
	.type	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_7E9_M_invokeERKSt9_Any_dataOS0_S7_Os,@function
_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_7E9_M_invokeERKSt9_Any_dataOS0_S7_Os: # @"_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_7E9_M_invokeERKSt9_Any_dataOS0_S7_Os"
# %bb.0:
	ld.h	$a0, $a3, 0
	lu12i.w	$a4, 15
	blez	$a0, .LBB31_3
# %bb.1:                                # %iter.check
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	bstrpick.d	$a0, $a0, 15, 0
	ori	$a3, $zero, 8
	bgeu	$a0, $a3, .LBB31_4
# %bb.2:
	move	$a3, $zero
	ori	$a7, $a4, 4095
	b	.LBB31_14
.LBB31_3:
	ori	$a7, $a4, 4095
	ext.w.h	$a0, $a7
	ret
.LBB31_4:                               # %vector.main.loop.iter.check
	ori	$a6, $a4, 4095
	ori	$a3, $zero, 16
	pcalau12i	$a5, %pc_hi20(.LCPI31_0)
	lu12i.w	$a4, 8
	bgeu	$a0, $a3, .LBB31_10
# %bb.5:
	move	$a3, $zero
	move	$a7, $a6
.LBB31_6:                               # %vec.epilog.ph
	move	$t0, $a3
	bstrpick.d	$a3, $a7, 15, 0
	xor	$a3, $a3, $a6
	sltui	$a3, $a3, 1
	masknez	$a6, $a7, $a3
	lu12i.w	$a7, -8
	maskeqz	$a3, $a7, $a3
	or	$a6, $a3, $a6
	bstrpick.d	$a3, $a0, 14, 3
	vld	$vr1, $a5, %pc_lo12(.LCPI31_0)
	slli.d	$a3, $a3, 3
	vreplgr2vr.h	$vr0, $a6
	vreplgr2vr.h	$vr2, $t0
	vor.v	$vr1, $vr2, $vr1
	sub.d	$a5, $t0, $a3
	alsl.d	$a6, $t0, $a2, 1
	alsl.d	$a7, $t0, $a1, 1
	.p2align	4, , 16
.LBB31_7:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a7, 0
	vld	$vr3, $a6, 0
	vslt.h	$vr2, $vr3, $vr2
	vbitsel.v	$vr0, $vr1, $vr0, $vr2
	vaddi.hu	$vr1, $vr1, 8
	addi.d	$a5, $a5, 8
	addi.d	$a6, $a6, 16
	addi.d	$a7, $a7, 16
	bnez	$a5, .LBB31_7
# %bb.8:                                # %vec.epilog.middle.block
	vbsrl.v	$vr1, $vr0, 8
	vmax.h	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 4
	vmax.h	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 2
	vmax.h	$vr0, $vr1, $vr0
	vpickve2gr.h	$a5, $vr0, 0
	bstrpick.d	$a6, $a5, 15, 0
	xor	$a4, $a6, $a4
	sltui	$a4, $a4, 1
	masknez	$a5, $a5, $a4
	addi.d	$a6, $zero, -1
	maskeqz	$a4, $a6, $a4
	or	$a7, $a4, $a5
	bne	$a3, $a0, .LBB31_14
.LBB31_9:                               # %"_ZSt10__invoke_rIsRZ4mainE3$_7JPsS2_sEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ext.w.h	$a0, $a7
	ret
.LBB31_10:                              # %vector.ph
	bstrpick.d	$a3, $a0, 14, 4
	slli.d	$a3, $a3, 4
	vld	$vr0, $a5, %pc_lo12(.LCPI31_0)
	addi.d	$a7, $a2, 16
	vreplgr2vr.h	$vr1, $a4
	addi.d	$t0, $a1, 16
	move	$t1, $a3
	vori.b	$vr2, $vr1, 0
	.p2align	4, , 16
.LBB31_11:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr3, $t0, -16
	vld	$vr4, $t0, 0
	vld	$vr5, $a7, -16
	vld	$vr6, $a7, 0
	vaddi.hu	$vr7, $vr0, 8
	vslt.h	$vr3, $vr5, $vr3
	vslt.h	$vr4, $vr6, $vr4
	vbitsel.v	$vr1, $vr0, $vr1, $vr3
	vbitsel.v	$vr2, $vr7, $vr2, $vr4
	vaddi.hu	$vr0, $vr0, 16
	addi.d	$t1, $t1, -16
	addi.d	$a7, $a7, 32
	addi.d	$t0, $t0, 32
	bnez	$t1, .LBB31_11
# %bb.12:                               # %middle.block
	vmax.h	$vr0, $vr1, $vr2
	vbsrl.v	$vr1, $vr0, 8
	vmax.h	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 4
	vmax.h	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 2
	vmax.h	$vr0, $vr1, $vr0
	vpickve2gr.h	$a7, $vr0, 0
	bstrpick.d	$t0, $a7, 15, 0
	xor	$t0, $t0, $a4
	sltui	$t0, $t0, 1
	masknez	$a7, $a7, $t0
	addi.w	$t1, $zero, -1
	maskeqz	$t0, $t1, $t0
	or	$a7, $t0, $a7
	beq	$a3, $a0, .LBB31_9
# %bb.13:                               # %vec.epilog.iter.check
	andi	$t0, $a0, 8
	bnez	$t0, .LBB31_6
.LBB31_14:                              # %.lr.ph.i.i.i.preheader
	alsl.d	$a2, $a3, $a2, 1
	alsl.d	$a1, $a3, $a1, 1
	.p2align	4, , 16
.LBB31_15:                              # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a4, $a1, 0
	ld.h	$a5, $a2, 0
	slt	$a4, $a5, $a4
	masknez	$a5, $a3, $a4
	maskeqz	$a4, $a7, $a4
	or	$a7, $a4, $a5
	addi.d	$a3, $a3, 1
	addi.d	$a2, $a2, 2
	addi.d	$a1, $a1, 2
	bne	$a0, $a3, .LBB31_15
	b	.LBB31_9
.Lfunc_end31:
	.size	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_7E9_M_invokeERKSt9_Any_dataOS0_S7_Os, .Lfunc_end31-_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_7E9_M_invokeERKSt9_Any_dataOS0_S7_Os
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_7E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_7E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_7E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_7E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB32_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB32_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_7E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB32_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE3$_7)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE3$_7)
.LBB32_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_7E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end32:
	.size	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_7E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end32-_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_7E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_8E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.type	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_8E9_M_invokeERKSt9_Any_dataOS0_S7_Oi,@function
_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_8E9_M_invokeERKSt9_Any_dataOS0_S7_Oi: # @"_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_8E9_M_invokeERKSt9_Any_dataOS0_S7_Oi"
# %bb.0:
	ld.w	$a0, $a3, 0
	blez	$a0, .LBB33_3
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	move	$a3, $zero
	move	$a4, $a0
	.p2align	4, , 16
.LBB33_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a1, 0
	ld.w	$a6, $a2, 0
	slt	$a5, $a6, $a5
	masknez	$a0, $a0, $a5
	maskeqz	$a5, $a3, $a5
	or	$a0, $a5, $a0
	addi.d	$a4, $a4, -1
	addi.w	$a3, $a3, 1
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, 4
	bnez	$a4, .LBB33_2
.LBB33_3:                               # %"_ZSt10__invoke_rIiRZ4mainE3$_8JPiS2_iEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end33:
	.size	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_8E9_M_invokeERKSt9_Any_dataOS0_S7_Oi, .Lfunc_end33-_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_8E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB34_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB34_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB34_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE3$_8)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE3$_8)
.LBB34_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end34:
	.size	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end34-_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_9E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
.LCPI35_0:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.text
	.p2align	5
	.type	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_9E9_M_invokeERKSt9_Any_dataOS0_S7_Oi,@function
_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_9E9_M_invokeERKSt9_Any_dataOS0_S7_Oi: # @"_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_9E9_M_invokeERKSt9_Any_dataOS0_S7_Oi"
# %bb.0:
	ld.w	$a3, $a3, 0
	blez	$a3, .LBB35_3
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	ori	$a0, $zero, 8
	bgeu	$a3, $a0, .LBB35_4
# %bb.2:
	move	$a0, $zero
	move	$a4, $a3
	b	.LBB35_7
.LBB35_3:
	move	$a4, $a3
	addi.w	$a0, $a4, 0
	ret
.LBB35_4:                               # %vector.ph
	bstrpick.d	$a0, $a3, 30, 3
	slli.d	$a0, $a0, 3
	addi.d	$a5, $a2, 16
	pcalau12i	$a4, %pc_hi20(.LCPI35_0)
	vld	$vr0, $a4, %pc_lo12(.LCPI35_0)
	lu12i.w	$a4, -524288
	vreplgr2vr.w	$vr1, $a4
	addi.d	$a6, $a1, 16
	move	$a7, $a0
	vori.b	$vr2, $vr1, 0
	.p2align	4, , 16
.LBB35_5:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr3, $a6, -16
	vld	$vr4, $a6, 0
	vld	$vr5, $a5, -16
	vld	$vr6, $a5, 0
	vaddi.wu	$vr7, $vr0, 4
	vslt.w	$vr3, $vr5, $vr3
	vslt.w	$vr4, $vr6, $vr4
	vbitsel.v	$vr1, $vr1, $vr0, $vr3
	vbitsel.v	$vr2, $vr2, $vr7, $vr4
	vaddi.wu	$vr0, $vr0, 8
	addi.d	$a7, $a7, -8
	addi.d	$a5, $a5, 32
	addi.d	$a6, $a6, 32
	bnez	$a7, .LBB35_5
# %bb.6:                                # %middle.block
	vmax.w	$vr0, $vr1, $vr2
	vbsrl.v	$vr1, $vr0, 8
	vmax.w	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 4
	vmax.w	$vr0, $vr1, $vr0
	vpickve2gr.w	$a5, $vr0, 0
	xor	$a4, $a5, $a4
	sltui	$a4, $a4, 1
	masknez	$a5, $a5, $a4
	maskeqz	$a4, $a3, $a4
	or	$a4, $a4, $a5
	beq	$a0, $a3, .LBB35_9
.LBB35_7:                               # %.lr.ph.i.i.i.preheader
	sub.d	$a3, $a3, $a0
	alsl.d	$a2, $a0, $a2, 2
	alsl.d	$a1, $a0, $a1, 2
	.p2align	4, , 16
.LBB35_8:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a1, 0
	ld.w	$a6, $a2, 0
	slt	$a5, $a6, $a5
	masknez	$a4, $a4, $a5
	maskeqz	$a5, $a0, $a5
	or	$a4, $a5, $a4
	addi.d	$a3, $a3, -1
	addi.d	$a0, $a0, 1
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, 4
	bnez	$a3, .LBB35_8
.LBB35_9:                               # %"_ZSt10__invoke_rIiRZ4mainE3$_9JPiS2_iEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	addi.w	$a0, $a4, 0
	ret
.Lfunc_end35:
	.size	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_9E9_M_invokeERKSt9_Any_dataOS0_S7_Oi, .Lfunc_end35-_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_9E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB36_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB36_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB36_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE3$_9)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE3$_9)
.LBB36_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end36:
	.size	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end36-_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_8E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.type	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_8E9_M_invokeERKSt9_Any_dataOS0_S7_Oi,@function
_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_8E9_M_invokeERKSt9_Any_dataOS0_S7_Oi: # @"_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_8E9_M_invokeERKSt9_Any_dataOS0_S7_Oi"
# %bb.0:
	ld.w	$a0, $a3, 0
	blez	$a0, .LBB37_3
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	move	$a3, $zero
	move	$a4, $a0
	.p2align	4, , 16
.LBB37_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a1, 0
	fld.s	$fa1, $a2, 0
	fcmp.clt.s	$fcc0, $fa1, $fa0
	movcf2gr	$a5, $fcc0
	masknez	$a0, $a0, $a5
	maskeqz	$a5, $a3, $a5
	or	$a0, $a5, $a0
	addi.d	$a4, $a4, -1
	addi.w	$a3, $a3, 1
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, 4
	bnez	$a4, .LBB37_2
.LBB37_3:                               # %"_ZSt10__invoke_rIiRZ4mainE3$_8JPfS2_iEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end37:
	.size	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_8E9_M_invokeERKSt9_Any_dataOS0_S7_Oi, .Lfunc_end37-_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_8E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB38_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB38_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB38_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE3$_8)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE3$_8)
.LBB38_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end38:
	.size	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end38-_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_9E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
.LCPI39_0:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.text
	.p2align	5
	.type	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_9E9_M_invokeERKSt9_Any_dataOS0_S7_Oi,@function
_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_9E9_M_invokeERKSt9_Any_dataOS0_S7_Oi: # @"_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_9E9_M_invokeERKSt9_Any_dataOS0_S7_Oi"
# %bb.0:
	ld.w	$a3, $a3, 0
	blez	$a3, .LBB39_3
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	ori	$a0, $zero, 8
	bgeu	$a3, $a0, .LBB39_4
# %bb.2:
	move	$a0, $zero
	move	$a4, $a3
	b	.LBB39_7
.LBB39_3:
	move	$a4, $a3
	addi.w	$a0, $a4, 0
	ret
.LBB39_4:                               # %vector.ph
	bstrpick.d	$a0, $a3, 30, 3
	slli.d	$a0, $a0, 3
	addi.d	$a5, $a2, 16
	pcalau12i	$a4, %pc_hi20(.LCPI39_0)
	vld	$vr0, $a4, %pc_lo12(.LCPI39_0)
	lu12i.w	$a4, -524288
	vreplgr2vr.w	$vr1, $a4
	addi.d	$a6, $a1, 16
	move	$a7, $a0
	vori.b	$vr2, $vr1, 0
	.p2align	4, , 16
.LBB39_5:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr3, $a6, -16
	vld	$vr4, $a6, 0
	vld	$vr5, $a5, -16
	vld	$vr6, $a5, 0
	vaddi.wu	$vr7, $vr0, 4
	vfcmp.clt.s	$vr3, $vr5, $vr3
	vfcmp.clt.s	$vr4, $vr6, $vr4
	vbitsel.v	$vr1, $vr1, $vr0, $vr3
	vbitsel.v	$vr2, $vr2, $vr7, $vr4
	vaddi.wu	$vr0, $vr0, 8
	addi.d	$a7, $a7, -8
	addi.d	$a5, $a5, 32
	addi.d	$a6, $a6, 32
	bnez	$a7, .LBB39_5
# %bb.6:                                # %middle.block
	vmax.w	$vr0, $vr1, $vr2
	vbsrl.v	$vr1, $vr0, 8
	vmax.w	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 4
	vmax.w	$vr0, $vr1, $vr0
	vpickve2gr.w	$a5, $vr0, 0
	xor	$a4, $a5, $a4
	sltui	$a4, $a4, 1
	masknez	$a5, $a5, $a4
	maskeqz	$a4, $a3, $a4
	or	$a4, $a4, $a5
	beq	$a0, $a3, .LBB39_9
.LBB39_7:                               # %.lr.ph.i.i.i.preheader
	sub.d	$a3, $a3, $a0
	alsl.d	$a2, $a0, $a2, 2
	alsl.d	$a1, $a0, $a1, 2
	.p2align	4, , 16
.LBB39_8:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a1, 0
	fld.s	$fa1, $a2, 0
	fcmp.clt.s	$fcc0, $fa1, $fa0
	movcf2gr	$a5, $fcc0
	masknez	$a4, $a4, $a5
	maskeqz	$a5, $a0, $a5
	or	$a4, $a5, $a4
	addi.d	$a3, $a3, -1
	addi.d	$a0, $a0, 1
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, 4
	bnez	$a3, .LBB39_8
.LBB39_9:                               # %"_ZSt10__invoke_rIiRZ4mainE3$_9JPfS2_iEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	addi.w	$a0, $a4, 0
	ret
.Lfunc_end39:
	.size	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_9E9_M_invokeERKSt9_Any_dataOS0_S7_Oi, .Lfunc_end39-_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_9E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB40_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB40_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB40_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE3$_9)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE3$_9)
.LBB40_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end40:
	.size	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end40-_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_10E9_M_invokeERKSt9_Any_dataOS0_S7_Os
	.type	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_10E9_M_invokeERKSt9_Any_dataOS0_S7_Os,@function
_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_10E9_M_invokeERKSt9_Any_dataOS0_S7_Os: # @"_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_10E9_M_invokeERKSt9_Any_dataOS0_S7_Os"
# %bb.0:
	ld.h	$a0, $a3, 0
	blez	$a0, .LBB41_4
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	move	$a4, $zero
	move	$a3, $a0
	.p2align	4, , 16
.LBB41_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a5, $a1, 0
	ld.h	$a6, $a2, 0
	slt	$a5, $a6, $a5
	masknez	$a3, $a3, $a5
	maskeqz	$a5, $a4, $a5
	or	$a3, $a5, $a3
	addi.d	$a4, $a4, 1
	addi.d	$a2, $a2, 2
	addi.d	$a1, $a1, 2
	bne	$a0, $a4, .LBB41_2
# %bb.3:                                # %"_ZSt10__invoke_rIsRZ4mainE4$_10JPsS2_sEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ext.w.h	$a0, $a3
	ret
.LBB41_4:
	move	$a3, $a0
	ext.w.h	$a0, $a3
	ret
.Lfunc_end41:
	.size	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_10E9_M_invokeERKSt9_Any_dataOS0_S7_Os, .Lfunc_end41-_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_10E9_M_invokeERKSt9_Any_dataOS0_S7_Os
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_10E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_10E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_10E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_10E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB42_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB42_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_10E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB42_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_10)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_10)
.LBB42_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_10E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end42:
	.size	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_10E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end42-_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_10E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_11E9_M_invokeERKSt9_Any_dataOS0_S7_Os
.LCPI43_0:
	.half	0                               # 0x0
	.half	1                               # 0x1
	.half	2                               # 0x2
	.half	3                               # 0x3
	.half	4                               # 0x4
	.half	5                               # 0x5
	.half	6                               # 0x6
	.half	7                               # 0x7
	.text
	.p2align	5
	.type	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_11E9_M_invokeERKSt9_Any_dataOS0_S7_Os,@function
_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_11E9_M_invokeERKSt9_Any_dataOS0_S7_Os: # @"_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_11E9_M_invokeERKSt9_Any_dataOS0_S7_Os"
# %bb.0:
	ld.h	$a0, $a3, 0
	ext.w.h	$a3, $a0
	blez	$a3, .LBB43_15
# %bb.1:                                # %iter.check
	ld.d	$a3, $a1, 0
	ld.d	$a2, $a2, 0
	bstrpick.d	$a1, $a0, 15, 0
	ori	$a4, $zero, 8
	bgeu	$a1, $a4, .LBB43_3
# %bb.2:
	move	$a4, $zero
	move	$a7, $a0
	b	.LBB43_13
.LBB43_3:                               # %vector.main.loop.iter.check
	ori	$a4, $zero, 16
	pcalau12i	$a6, %pc_hi20(.LCPI43_0)
	lu12i.w	$a5, 8
	bgeu	$a1, $a4, .LBB43_8
# %bb.4:
	move	$a4, $zero
	move	$a7, $a0
.LBB43_5:                               # %vec.epilog.ph
	move	$t0, $a4
	bstrpick.d	$a4, $a7, 15, 0
	xor	$a4, $a4, $a1
	sltui	$a4, $a4, 1
	masknez	$a7, $a7, $a4
	lu12i.w	$t1, -8
	maskeqz	$a4, $t1, $a4
	or	$a7, $a4, $a7
	bstrpick.d	$a4, $a1, 14, 3
	vld	$vr1, $a6, %pc_lo12(.LCPI43_0)
	slli.d	$a4, $a4, 3
	vreplgr2vr.h	$vr0, $a7
	vreplgr2vr.h	$vr2, $t0
	vor.v	$vr1, $vr2, $vr1
	sub.d	$a6, $t0, $a4
	alsl.d	$a7, $t0, $a2, 1
	alsl.d	$t0, $t0, $a3, 1
	.p2align	4, , 16
.LBB43_6:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $t0, 0
	vld	$vr3, $a7, 0
	vslt.h	$vr2, $vr3, $vr2
	vbitsel.v	$vr0, $vr0, $vr1, $vr2
	vaddi.hu	$vr1, $vr1, 8
	addi.d	$a6, $a6, 8
	addi.d	$a7, $a7, 16
	addi.d	$t0, $t0, 16
	bnez	$a6, .LBB43_6
# %bb.7:                                # %vec.epilog.middle.block
	vbsrl.v	$vr1, $vr0, 8
	vmax.h	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 4
	vmax.h	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 2
	vmax.h	$vr0, $vr1, $vr0
	vpickve2gr.h	$a6, $vr0, 0
	bstrpick.d	$a7, $a6, 15, 0
	xor	$a5, $a7, $a5
	sltui	$a5, $a5, 1
	masknez	$a6, $a6, $a5
	maskeqz	$a0, $a0, $a5
	or	$a7, $a0, $a6
	move	$a0, $a7
	bne	$a4, $a1, .LBB43_13
	b	.LBB43_15
.LBB43_8:                               # %vector.ph
	bstrpick.d	$a4, $a1, 14, 4
	slli.d	$a4, $a4, 4
	vld	$vr0, $a6, %pc_lo12(.LCPI43_0)
	addi.d	$a7, $a2, 16
	vreplgr2vr.h	$vr1, $a5
	addi.d	$t0, $a3, 16
	move	$t1, $a4
	vori.b	$vr2, $vr1, 0
	.p2align	4, , 16
.LBB43_9:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr3, $t0, -16
	vld	$vr4, $t0, 0
	vld	$vr5, $a7, -16
	vld	$vr6, $a7, 0
	vaddi.hu	$vr7, $vr0, 8
	vslt.h	$vr3, $vr5, $vr3
	vslt.h	$vr4, $vr6, $vr4
	vbitsel.v	$vr1, $vr1, $vr0, $vr3
	vbitsel.v	$vr2, $vr2, $vr7, $vr4
	vaddi.hu	$vr0, $vr0, 16
	addi.d	$t1, $t1, -16
	addi.d	$a7, $a7, 32
	addi.d	$t0, $t0, 32
	bnez	$t1, .LBB43_9
# %bb.10:                               # %middle.block
	vmax.h	$vr0, $vr1, $vr2
	vbsrl.v	$vr1, $vr0, 8
	vmax.h	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 4
	vmax.h	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 2
	vmax.h	$vr0, $vr1, $vr0
	vpickve2gr.h	$a7, $vr0, 0
	bstrpick.d	$t0, $a7, 15, 0
	xor	$t0, $t0, $a5
	sltui	$t0, $t0, 1
	masknez	$a7, $a7, $t0
	maskeqz	$t0, $a0, $t0
	or	$a7, $t0, $a7
	bne	$a4, $a1, .LBB43_12
# %bb.11:
	ext.w.h	$a0, $a7
	ret
.LBB43_12:                              # %vec.epilog.iter.check
	andi	$t0, $a1, 8
	bnez	$t0, .LBB43_5
.LBB43_13:                              # %.lr.ph.i.i.i.preheader
	alsl.d	$a2, $a4, $a2, 1
	alsl.d	$a3, $a4, $a3, 1
	move	$a0, $a7
	.p2align	4, , 16
.LBB43_14:                              # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a5, $a3, 0
	ld.h	$a6, $a2, 0
	slt	$a5, $a6, $a5
	masknez	$a0, $a0, $a5
	maskeqz	$a5, $a4, $a5
	or	$a0, $a5, $a0
	addi.d	$a4, $a4, 1
	addi.d	$a2, $a2, 2
	addi.d	$a3, $a3, 2
	bne	$a1, $a4, .LBB43_14
.LBB43_15:                              # %"_ZSt10__invoke_rIsRZ4mainE4$_11JPsS2_sEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ext.w.h	$a0, $a0
	ret
.Lfunc_end43:
	.size	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_11E9_M_invokeERKSt9_Any_dataOS0_S7_Os, .Lfunc_end43-_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_11E9_M_invokeERKSt9_Any_dataOS0_S7_Os
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_11E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_11E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_11E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_11E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB44_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB44_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_11E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB44_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_11)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_11)
.LBB44_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_11E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end44:
	.size	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_11E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end44-_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_11E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_12E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.type	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_12E9_M_invokeERKSt9_Any_dataOS0_S7_Oi,@function
_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_12E9_M_invokeERKSt9_Any_dataOS0_S7_Oi: # @"_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_12E9_M_invokeERKSt9_Any_dataOS0_S7_Oi"
# %bb.0:
	ld.w	$a3, $a3, 0
	blez	$a3, .LBB45_4
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	move	$a4, $zero
	move	$a5, $zero
	addi.w	$a0, $zero, -1
	.p2align	4, , 16
.LBB45_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a1, 0
	ld.w	$a7, $a2, 0
	slt	$a6, $a7, $a6
	masknez	$a0, $a0, $a6
	maskeqz	$a6, $a4, $a6
	or	$a0, $a6, $a0
	addi.d	$a5, $a5, 2
	addi.w	$a4, $a4, 2
	addi.d	$a2, $a2, 8
	addi.d	$a1, $a1, 8
	bltu	$a5, $a3, .LBB45_2
# %bb.3:                                # %"_ZSt10__invoke_rIiRZ4mainE4$_12JPiS2_iEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.LBB45_4:
	addi.w	$a0, $zero, -1
	ret
.Lfunc_end45:
	.size	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_12E9_M_invokeERKSt9_Any_dataOS0_S7_Oi, .Lfunc_end45-_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_12E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB46_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB46_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB46_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_12)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_12)
.LBB46_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end46:
	.size	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end46-_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_13E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.type	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_13E9_M_invokeERKSt9_Any_dataOS0_S7_Oi,@function
_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_13E9_M_invokeERKSt9_Any_dataOS0_S7_Oi: # @"_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_13E9_M_invokeERKSt9_Any_dataOS0_S7_Oi"
# %bb.0:
	ld.w	$a3, $a3, 0
	blez	$a3, .LBB47_4
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	move	$a4, $zero
	move	$a5, $zero
	addi.w	$a0, $zero, -1
	.p2align	4, , 16
.LBB47_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a1, 0
	ld.w	$a7, $a2, 0
	slt	$a6, $a7, $a6
	masknez	$a0, $a0, $a6
	maskeqz	$a6, $a4, $a6
	or	$a0, $a6, $a0
	addi.d	$a5, $a5, 2
	addi.w	$a4, $a4, 2
	addi.d	$a2, $a2, 8
	addi.d	$a1, $a1, 8
	bltu	$a5, $a3, .LBB47_2
# %bb.3:                                # %"_ZSt10__invoke_rIiRZ4mainE4$_13JPiS2_iEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.LBB47_4:
	addi.w	$a0, $zero, -1
	ret
.Lfunc_end47:
	.size	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_13E9_M_invokeERKSt9_Any_dataOS0_S7_Oi, .Lfunc_end47-_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_13E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB48_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB48_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB48_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_13)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_13)
.LBB48_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end48:
	.size	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end48-_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_12E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.type	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_12E9_M_invokeERKSt9_Any_dataOS0_S7_Oi,@function
_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_12E9_M_invokeERKSt9_Any_dataOS0_S7_Oi: # @"_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_12E9_M_invokeERKSt9_Any_dataOS0_S7_Oi"
# %bb.0:
	ld.w	$a3, $a3, 0
	blez	$a3, .LBB49_4
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	move	$a4, $zero
	move	$a5, $zero
	addi.w	$a0, $zero, -1
	.p2align	4, , 16
.LBB49_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a1, 0
	fld.s	$fa1, $a2, 0
	fcmp.clt.s	$fcc0, $fa1, $fa0
	movcf2gr	$a6, $fcc0
	masknez	$a0, $a0, $a6
	maskeqz	$a6, $a4, $a6
	or	$a0, $a6, $a0
	addi.d	$a5, $a5, 2
	addi.w	$a4, $a4, 2
	addi.d	$a2, $a2, 8
	addi.d	$a1, $a1, 8
	bltu	$a5, $a3, .LBB49_2
# %bb.3:                                # %"_ZSt10__invoke_rIiRZ4mainE4$_12JPfS2_iEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.LBB49_4:
	addi.w	$a0, $zero, -1
	ret
.Lfunc_end49:
	.size	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_12E9_M_invokeERKSt9_Any_dataOS0_S7_Oi, .Lfunc_end49-_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_12E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB50_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB50_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB50_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_12)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_12)
.LBB50_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end50:
	.size	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end50-_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_13E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.type	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_13E9_M_invokeERKSt9_Any_dataOS0_S7_Oi,@function
_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_13E9_M_invokeERKSt9_Any_dataOS0_S7_Oi: # @"_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_13E9_M_invokeERKSt9_Any_dataOS0_S7_Oi"
# %bb.0:
	ld.w	$a3, $a3, 0
	blez	$a3, .LBB51_4
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	move	$a4, $zero
	move	$a5, $zero
	addi.w	$a0, $zero, -1
	.p2align	4, , 16
.LBB51_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a1, 0
	fld.s	$fa1, $a2, 0
	fcmp.clt.s	$fcc0, $fa1, $fa0
	movcf2gr	$a6, $fcc0
	masknez	$a0, $a0, $a6
	maskeqz	$a6, $a4, $a6
	or	$a0, $a6, $a0
	addi.d	$a5, $a5, 2
	addi.w	$a4, $a4, 2
	addi.d	$a2, $a2, 8
	addi.d	$a1, $a1, 8
	bltu	$a5, $a3, .LBB51_2
# %bb.3:                                # %"_ZSt10__invoke_rIiRZ4mainE4$_13JPfS2_iEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.LBB51_4:
	addi.w	$a0, $zero, -1
	ret
.Lfunc_end51:
	.size	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_13E9_M_invokeERKSt9_Any_dataOS0_S7_Oi, .Lfunc_end51-_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_13E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB52_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB52_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB52_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_13)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_13)
.LBB52_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end52:
	.size	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end52-_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_14E9_M_invokeERKSt9_Any_dataOS0_S7_Os
	.type	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_14E9_M_invokeERKSt9_Any_dataOS0_S7_Os,@function
_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_14E9_M_invokeERKSt9_Any_dataOS0_S7_Os: # @"_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_14E9_M_invokeERKSt9_Any_dataOS0_S7_Os"
# %bb.0:
	ld.h	$a0, $a3, 0
	lu12i.w	$a3, 15
	blez	$a0, .LBB53_4
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	move	$a4, $zero
	ori	$a3, $a3, 4095
	.p2align	4, , 16
.LBB53_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a5, $a1, 0
	ld.h	$a6, $a2, 0
	slt	$a5, $a6, $a5
	masknez	$a3, $a3, $a5
	maskeqz	$a5, $a4, $a5
	or	$a3, $a5, $a3
	addi.d	$a4, $a4, 2
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, 4
	bltu	$a4, $a0, .LBB53_2
# %bb.3:                                # %"_ZSt10__invoke_rIsRZ4mainE4$_14JPsS2_sEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ext.w.h	$a0, $a3
	ret
.LBB53_4:
	ori	$a3, $a3, 4095
	ext.w.h	$a0, $a3
	ret
.Lfunc_end53:
	.size	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_14E9_M_invokeERKSt9_Any_dataOS0_S7_Os, .Lfunc_end53-_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_14E9_M_invokeERKSt9_Any_dataOS0_S7_Os
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_14E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_14E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_14E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_14E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB54_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB54_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_14E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB54_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_14)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_14)
.LBB54_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_14E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end54:
	.size	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_14E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end54-_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_14E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_15E9_M_invokeERKSt9_Any_dataOS0_S7_Os
	.type	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_15E9_M_invokeERKSt9_Any_dataOS0_S7_Os,@function
_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_15E9_M_invokeERKSt9_Any_dataOS0_S7_Os: # @"_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_15E9_M_invokeERKSt9_Any_dataOS0_S7_Os"
# %bb.0:
	ld.h	$a0, $a3, 0
	lu12i.w	$a3, 15
	blez	$a0, .LBB55_4
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	move	$a4, $zero
	ori	$a3, $a3, 4095
	.p2align	4, , 16
.LBB55_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a5, $a1, 0
	ld.h	$a6, $a2, 0
	slt	$a5, $a6, $a5
	masknez	$a3, $a3, $a5
	maskeqz	$a5, $a4, $a5
	or	$a3, $a5, $a3
	addi.d	$a4, $a4, 2
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, 4
	bltu	$a4, $a0, .LBB55_2
# %bb.3:                                # %"_ZSt10__invoke_rIsRZ4mainE4$_15JPsS2_sEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ext.w.h	$a0, $a3
	ret
.LBB55_4:
	ori	$a3, $a3, 4095
	ext.w.h	$a0, $a3
	ret
.Lfunc_end55:
	.size	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_15E9_M_invokeERKSt9_Any_dataOS0_S7_Os, .Lfunc_end55-_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_15E9_M_invokeERKSt9_Any_dataOS0_S7_Os
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_15E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_15E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_15E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_15E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB56_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB56_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_15E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB56_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_15)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_15)
.LBB56_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_15E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end56:
	.size	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_15E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end56-_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_15E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_16E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.type	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_16E9_M_invokeERKSt9_Any_dataOS0_S7_Oi,@function
_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_16E9_M_invokeERKSt9_Any_dataOS0_S7_Oi: # @"_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_16E9_M_invokeERKSt9_Any_dataOS0_S7_Oi"
# %bb.0:
	ld.w	$a3, $a3, 0
	blez	$a3, .LBB57_4
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a0, $a2, 0
	ld.d	$a4, $a1, 0
	addi.d	$a1, $a3, 1
	alsl.d	$a2, $a3, $a0, 2
	alsl.d	$a4, $a3, $a4, 2
	addi.w	$a0, $zero, -1
	ori	$a5, $zero, 1
	.p2align	4, , 16
.LBB57_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a4, 0
	ld.w	$a7, $a2, 0
	slt	$a6, $a7, $a6
	masknez	$a0, $a0, $a6
	maskeqz	$a6, $a3, $a6
	or	$a0, $a6, $a0
	addi.d	$a1, $a1, -1
	addi.w	$a3, $a3, -1
	addi.d	$a2, $a2, -4
	addi.d	$a4, $a4, -4
	bltu	$a5, $a1, .LBB57_2
# %bb.3:                                # %"_ZSt10__invoke_rIiRZ4mainE4$_16JPiS2_iEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.LBB57_4:
	addi.w	$a0, $zero, -1
	ret
.Lfunc_end57:
	.size	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_16E9_M_invokeERKSt9_Any_dataOS0_S7_Oi, .Lfunc_end57-_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_16E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_16E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_16E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_16E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_16E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB58_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB58_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_16E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB58_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_16)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_16)
.LBB58_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_16E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end58:
	.size	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_16E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end58-_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_16E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_17E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.type	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_17E9_M_invokeERKSt9_Any_dataOS0_S7_Oi,@function
_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_17E9_M_invokeERKSt9_Any_dataOS0_S7_Oi: # @"_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_17E9_M_invokeERKSt9_Any_dataOS0_S7_Oi"
# %bb.0:
	ld.w	$a3, $a3, 0
	blez	$a3, .LBB59_4
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a0, $a2, 0
	ld.d	$a4, $a1, 0
	addi.d	$a1, $a3, 1
	alsl.d	$a2, $a3, $a0, 2
	alsl.d	$a4, $a3, $a4, 2
	addi.w	$a0, $zero, -1
	ori	$a5, $zero, 1
	.p2align	4, , 16
.LBB59_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a4, 0
	ld.w	$a7, $a2, 0
	slt	$a6, $a7, $a6
	masknez	$a0, $a0, $a6
	maskeqz	$a6, $a3, $a6
	or	$a0, $a6, $a0
	addi.d	$a1, $a1, -1
	addi.w	$a3, $a3, -1
	addi.d	$a2, $a2, -4
	addi.d	$a4, $a4, -4
	bltu	$a5, $a1, .LBB59_2
# %bb.3:                                # %"_ZSt10__invoke_rIiRZ4mainE4$_17JPiS2_iEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.LBB59_4:
	addi.w	$a0, $zero, -1
	ret
.Lfunc_end59:
	.size	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_17E9_M_invokeERKSt9_Any_dataOS0_S7_Oi, .Lfunc_end59-_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_17E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_17E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_17E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_17E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_17E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB60_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB60_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_17E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB60_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_17)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_17)
.LBB60_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_17E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end60:
	.size	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_17E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end60-_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_17E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_16E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.type	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_16E9_M_invokeERKSt9_Any_dataOS0_S7_Oi,@function
_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_16E9_M_invokeERKSt9_Any_dataOS0_S7_Oi: # @"_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_16E9_M_invokeERKSt9_Any_dataOS0_S7_Oi"
# %bb.0:
	ld.w	$a3, $a3, 0
	blez	$a3, .LBB61_4
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a0, $a2, 0
	ld.d	$a4, $a1, 0
	addi.d	$a1, $a3, 1
	alsl.d	$a2, $a3, $a0, 2
	alsl.d	$a4, $a3, $a4, 2
	addi.w	$a0, $zero, -1
	ori	$a5, $zero, 1
	.p2align	4, , 16
.LBB61_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a4, 0
	fld.s	$fa1, $a2, 0
	fcmp.clt.s	$fcc0, $fa1, $fa0
	movcf2gr	$a6, $fcc0
	masknez	$a0, $a0, $a6
	maskeqz	$a6, $a3, $a6
	or	$a0, $a6, $a0
	addi.d	$a1, $a1, -1
	addi.w	$a3, $a3, -1
	addi.d	$a2, $a2, -4
	addi.d	$a4, $a4, -4
	bltu	$a5, $a1, .LBB61_2
# %bb.3:                                # %"_ZSt10__invoke_rIiRZ4mainE4$_16JPfS2_iEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.LBB61_4:
	addi.w	$a0, $zero, -1
	ret
.Lfunc_end61:
	.size	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_16E9_M_invokeERKSt9_Any_dataOS0_S7_Oi, .Lfunc_end61-_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_16E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_16E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_16E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_16E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_16E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB62_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB62_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_16E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB62_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_16)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_16)
.LBB62_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_16E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end62:
	.size	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_16E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end62-_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_16E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_17E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.type	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_17E9_M_invokeERKSt9_Any_dataOS0_S7_Oi,@function
_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_17E9_M_invokeERKSt9_Any_dataOS0_S7_Oi: # @"_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_17E9_M_invokeERKSt9_Any_dataOS0_S7_Oi"
# %bb.0:
	ld.w	$a3, $a3, 0
	blez	$a3, .LBB63_4
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a0, $a2, 0
	ld.d	$a4, $a1, 0
	addi.d	$a1, $a3, 1
	alsl.d	$a2, $a3, $a0, 2
	alsl.d	$a4, $a3, $a4, 2
	addi.w	$a0, $zero, -1
	ori	$a5, $zero, 1
	.p2align	4, , 16
.LBB63_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a4, 0
	fld.s	$fa1, $a2, 0
	fcmp.clt.s	$fcc0, $fa1, $fa0
	movcf2gr	$a6, $fcc0
	masknez	$a0, $a0, $a6
	maskeqz	$a6, $a3, $a6
	or	$a0, $a6, $a0
	addi.d	$a1, $a1, -1
	addi.w	$a3, $a3, -1
	addi.d	$a2, $a2, -4
	addi.d	$a4, $a4, -4
	bltu	$a5, $a1, .LBB63_2
# %bb.3:                                # %"_ZSt10__invoke_rIiRZ4mainE4$_17JPfS2_iEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.LBB63_4:
	addi.w	$a0, $zero, -1
	ret
.Lfunc_end63:
	.size	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_17E9_M_invokeERKSt9_Any_dataOS0_S7_Oi, .Lfunc_end63-_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_17E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_17E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_17E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_17E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_17E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB64_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB64_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_17E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB64_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_17)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_17)
.LBB64_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_17E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end64:
	.size	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_17E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end64-_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_17E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_18E9_M_invokeERKSt9_Any_dataOS0_S7_Os
	.type	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_18E9_M_invokeERKSt9_Any_dataOS0_S7_Os,@function
_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_18E9_M_invokeERKSt9_Any_dataOS0_S7_Os: # @"_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_18E9_M_invokeERKSt9_Any_dataOS0_S7_Os"
# %bb.0:
	ld.h	$a0, $a3, 0
	lu12i.w	$a4, 15
	blez	$a0, .LBB65_4
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a2, $a2, 0
	ld.d	$a1, $a1, 0
	alsl.d	$a2, $a0, $a2, 1
	alsl.d	$a3, $a0, $a1, 1
	ori	$a1, $a4, 4095
	ori	$a4, $zero, 1
	.p2align	4, , 16
.LBB65_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a5, $a3, 0
	ld.h	$a6, $a2, 0
	move	$a7, $a0
	slt	$a0, $a6, $a5
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $a7, $a0
	or	$a1, $a0, $a1
	addi.d	$a0, $a7, -1
	addi.d	$a2, $a2, -2
	addi.d	$a3, $a3, -2
	bltu	$a4, $a7, .LBB65_2
# %bb.3:                                # %"_ZSt10__invoke_rIsRZ4mainE4$_18JPsS2_sEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ext.w.h	$a0, $a1
	ret
.LBB65_4:
	ori	$a1, $a4, 4095
	ext.w.h	$a0, $a1
	ret
.Lfunc_end65:
	.size	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_18E9_M_invokeERKSt9_Any_dataOS0_S7_Os, .Lfunc_end65-_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_18E9_M_invokeERKSt9_Any_dataOS0_S7_Os
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_18E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_18E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_18E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_18E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB66_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB66_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_18E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB66_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_18)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_18)
.LBB66_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_18E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end66:
	.size	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_18E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end66-_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_18E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_19E9_M_invokeERKSt9_Any_dataOS0_S7_Os
	.type	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_19E9_M_invokeERKSt9_Any_dataOS0_S7_Os,@function
_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_19E9_M_invokeERKSt9_Any_dataOS0_S7_Os: # @"_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_19E9_M_invokeERKSt9_Any_dataOS0_S7_Os"
# %bb.0:
	ld.h	$a0, $a3, 0
	lu12i.w	$a4, 15
	blez	$a0, .LBB67_4
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a2, $a2, 0
	ld.d	$a1, $a1, 0
	alsl.d	$a2, $a0, $a2, 1
	alsl.d	$a3, $a0, $a1, 1
	ori	$a1, $a4, 4095
	ori	$a4, $zero, 1
	.p2align	4, , 16
.LBB67_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a5, $a3, 0
	ld.h	$a6, $a2, 0
	move	$a7, $a0
	slt	$a0, $a6, $a5
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $a7, $a0
	or	$a1, $a0, $a1
	addi.d	$a0, $a7, -1
	addi.d	$a2, $a2, -2
	addi.d	$a3, $a3, -2
	bltu	$a4, $a7, .LBB67_2
# %bb.3:                                # %"_ZSt10__invoke_rIsRZ4mainE4$_19JPsS2_sEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ext.w.h	$a0, $a1
	ret
.LBB67_4:
	ori	$a1, $a4, 4095
	ext.w.h	$a0, $a1
	ret
.Lfunc_end67:
	.size	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_19E9_M_invokeERKSt9_Any_dataOS0_S7_Os, .Lfunc_end67-_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_19E9_M_invokeERKSt9_Any_dataOS0_S7_Os
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_19E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_19E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_19E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_19E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB68_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB68_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_19E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB68_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_19)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_19)
.LBB68_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_19E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end68:
	.size	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_19E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end68-_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_19E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_20E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.type	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_20E9_M_invokeERKSt9_Any_dataOS0_S7_Oi,@function
_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_20E9_M_invokeERKSt9_Any_dataOS0_S7_Oi: # @"_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_20E9_M_invokeERKSt9_Any_dataOS0_S7_Oi"
# %bb.0:
	ld.w	$a0, $a3, 0
	ori	$a3, $zero, 4
	blt	$a0, $a3, .LBB69_4
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a2, $a2, 0
	ld.d	$a3, $a1, 0
	addi.d	$a1, $a0, -3
	addi.d	$a2, $a2, 12
	addi.d	$a3, $a3, 12
	addi.w	$a0, $zero, -1
	ori	$a4, $zero, 3
	.p2align	4, , 16
.LBB69_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a3, 0
	ld.w	$a6, $a2, 0
	slt	$a5, $a6, $a5
	masknez	$a0, $a0, $a5
	maskeqz	$a5, $a4, $a5
	or	$a0, $a5, $a0
	addi.d	$a1, $a1, -1
	addi.w	$a4, $a4, 1
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 4
	bnez	$a1, .LBB69_2
# %bb.3:                                # %"_ZSt10__invoke_rIiRZ4mainE4$_20JPiS2_iEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.LBB69_4:
	addi.w	$a0, $zero, -1
	ret
.Lfunc_end69:
	.size	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_20E9_M_invokeERKSt9_Any_dataOS0_S7_Oi, .Lfunc_end69-_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_20E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_20E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_20E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_20E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_20E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB70_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB70_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_20E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB70_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_20)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_20)
.LBB70_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_20E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end70:
	.size	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_20E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end70-_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_20E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_21E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
.LCPI71_0:
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.text
	.p2align	5
	.type	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_21E9_M_invokeERKSt9_Any_dataOS0_S7_Oi,@function
_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_21E9_M_invokeERKSt9_Any_dataOS0_S7_Oi: # @"_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_21E9_M_invokeERKSt9_Any_dataOS0_S7_Oi"
# %bb.0:
	ld.w	$a3, $a3, 0
	ori	$a0, $zero, 4
	blt	$a3, $a0, .LBB71_3
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	addi.d	$a4, $a3, -3
	ori	$a0, $zero, 8
	bgeu	$a4, $a0, .LBB71_4
# %bb.2:
	addi.d	$a6, $zero, -1
	ori	$a0, $zero, 3
	b	.LBB71_7
.LBB71_3:
	addi.d	$a6, $zero, -1
	addi.w	$a0, $a6, 0
	ret
.LBB71_4:                               # %vector.ph
	move	$a5, $a4
	bstrins.d	$a5, $zero, 2, 0
	ori	$a6, $zero, 3
	move	$a0, $a4
	bstrins.d	$a0, $a6, 2, 0
	addi.d	$a7, $a1, 28
	pcalau12i	$a6, %pc_hi20(.LCPI71_0)
	vld	$vr0, $a6, %pc_lo12(.LCPI71_0)
	lu12i.w	$a6, -524288
	vreplgr2vr.w	$vr1, $a6
	addi.d	$t0, $a2, 28
	move	$t1, $a5
	vori.b	$vr2, $vr1, 0
	.p2align	4, , 16
.LBB71_5:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr3, $a7, -16
	vld	$vr4, $a7, 0
	vld	$vr5, $t0, -16
	vld	$vr6, $t0, 0
	vaddi.wu	$vr7, $vr0, 4
	vslt.w	$vr3, $vr5, $vr3
	vslt.w	$vr4, $vr6, $vr4
	vbitsel.v	$vr1, $vr1, $vr0, $vr3
	vbitsel.v	$vr2, $vr2, $vr7, $vr4
	vaddi.wu	$vr0, $vr0, 8
	addi.d	$a7, $a7, 32
	addi.d	$t1, $t1, -8
	addi.d	$t0, $t0, 32
	bnez	$t1, .LBB71_5
# %bb.6:                                # %middle.block
	vmax.w	$vr0, $vr1, $vr2
	vbsrl.v	$vr1, $vr0, 8
	vmax.w	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 4
	vmax.w	$vr0, $vr1, $vr0
	vpickve2gr.w	$a7, $vr0, 0
	xor	$a6, $a7, $a6
	sltui	$a6, $a6, 1
	masknez	$a7, $a7, $a6
	addi.d	$t0, $zero, -1
	maskeqz	$a6, $t0, $a6
	or	$a6, $a6, $a7
	beq	$a4, $a5, .LBB71_9
.LBB71_7:                               # %.lr.ph.i.i.i.preheader
	sub.d	$a3, $a3, $a0
	alsl.d	$a2, $a0, $a2, 2
	alsl.d	$a1, $a0, $a1, 2
	.p2align	4, , 16
.LBB71_8:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a1, 0
	ld.w	$a5, $a2, 0
	slt	$a4, $a5, $a4
	masknez	$a5, $a6, $a4
	maskeqz	$a4, $a0, $a4
	or	$a6, $a4, $a5
	addi.d	$a3, $a3, -1
	addi.d	$a0, $a0, 1
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, 4
	bnez	$a3, .LBB71_8
.LBB71_9:                               # %"_ZSt10__invoke_rIiRZ4mainE4$_21JPiS2_iEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	addi.w	$a0, $a6, 0
	ret
.Lfunc_end71:
	.size	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_21E9_M_invokeERKSt9_Any_dataOS0_S7_Oi, .Lfunc_end71-_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_21E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_21E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_21E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_21E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_21E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB72_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB72_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_21E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB72_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_21)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_21)
.LBB72_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_21E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end72:
	.size	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_21E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end72-_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_21E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_20E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.type	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_20E9_M_invokeERKSt9_Any_dataOS0_S7_Oi,@function
_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_20E9_M_invokeERKSt9_Any_dataOS0_S7_Oi: # @"_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_20E9_M_invokeERKSt9_Any_dataOS0_S7_Oi"
# %bb.0:
	ld.w	$a0, $a3, 0
	ori	$a3, $zero, 4
	blt	$a0, $a3, .LBB73_4
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a2, $a2, 0
	ld.d	$a3, $a1, 0
	addi.d	$a1, $a0, -3
	addi.d	$a2, $a2, 12
	addi.d	$a3, $a3, 12
	addi.w	$a0, $zero, -1
	ori	$a4, $zero, 3
	.p2align	4, , 16
.LBB73_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a3, 0
	fld.s	$fa1, $a2, 0
	fcmp.clt.s	$fcc0, $fa1, $fa0
	movcf2gr	$a5, $fcc0
	masknez	$a0, $a0, $a5
	maskeqz	$a5, $a4, $a5
	or	$a0, $a5, $a0
	addi.d	$a1, $a1, -1
	addi.w	$a4, $a4, 1
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 4
	bnez	$a1, .LBB73_2
# %bb.3:                                # %"_ZSt10__invoke_rIiRZ4mainE4$_20JPfS2_iEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.LBB73_4:
	addi.w	$a0, $zero, -1
	ret
.Lfunc_end73:
	.size	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_20E9_M_invokeERKSt9_Any_dataOS0_S7_Oi, .Lfunc_end73-_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_20E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_20E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_20E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_20E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_20E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB74_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB74_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_20E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB74_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_20)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_20)
.LBB74_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_20E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end74:
	.size	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_20E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end74-_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_20E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_21E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
.LCPI75_0:
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.text
	.p2align	5
	.type	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_21E9_M_invokeERKSt9_Any_dataOS0_S7_Oi,@function
_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_21E9_M_invokeERKSt9_Any_dataOS0_S7_Oi: # @"_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_21E9_M_invokeERKSt9_Any_dataOS0_S7_Oi"
# %bb.0:
	ld.w	$a3, $a3, 0
	ori	$a0, $zero, 4
	blt	$a3, $a0, .LBB75_3
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	addi.d	$a4, $a3, -3
	ori	$a0, $zero, 8
	bgeu	$a4, $a0, .LBB75_4
# %bb.2:
	addi.d	$a6, $zero, -1
	ori	$a0, $zero, 3
	b	.LBB75_7
.LBB75_3:
	addi.d	$a6, $zero, -1
	addi.w	$a0, $a6, 0
	ret
.LBB75_4:                               # %vector.ph
	move	$a5, $a4
	bstrins.d	$a5, $zero, 2, 0
	ori	$a6, $zero, 3
	move	$a0, $a4
	bstrins.d	$a0, $a6, 2, 0
	addi.d	$a7, $a1, 28
	pcalau12i	$a6, %pc_hi20(.LCPI75_0)
	vld	$vr0, $a6, %pc_lo12(.LCPI75_0)
	lu12i.w	$a6, -524288
	vreplgr2vr.w	$vr1, $a6
	addi.d	$t0, $a2, 28
	move	$t1, $a5
	vori.b	$vr2, $vr1, 0
	.p2align	4, , 16
.LBB75_5:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr3, $a7, -16
	vld	$vr4, $a7, 0
	vld	$vr5, $t0, -16
	vld	$vr6, $t0, 0
	vaddi.wu	$vr7, $vr0, 4
	vfcmp.clt.s	$vr3, $vr5, $vr3
	vfcmp.clt.s	$vr4, $vr6, $vr4
	vbitsel.v	$vr1, $vr1, $vr0, $vr3
	vbitsel.v	$vr2, $vr2, $vr7, $vr4
	vaddi.wu	$vr0, $vr0, 8
	addi.d	$a7, $a7, 32
	addi.d	$t1, $t1, -8
	addi.d	$t0, $t0, 32
	bnez	$t1, .LBB75_5
# %bb.6:                                # %middle.block
	vmax.w	$vr0, $vr1, $vr2
	vbsrl.v	$vr1, $vr0, 8
	vmax.w	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 4
	vmax.w	$vr0, $vr1, $vr0
	vpickve2gr.w	$a7, $vr0, 0
	xor	$a6, $a7, $a6
	sltui	$a6, $a6, 1
	masknez	$a7, $a7, $a6
	addi.d	$t0, $zero, -1
	maskeqz	$a6, $t0, $a6
	or	$a6, $a6, $a7
	beq	$a4, $a5, .LBB75_9
.LBB75_7:                               # %.lr.ph.i.i.i.preheader
	sub.d	$a3, $a3, $a0
	alsl.d	$a2, $a0, $a2, 2
	alsl.d	$a1, $a0, $a1, 2
	.p2align	4, , 16
.LBB75_8:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a1, 0
	fld.s	$fa1, $a2, 0
	fcmp.clt.s	$fcc0, $fa1, $fa0
	movcf2gr	$a4, $fcc0
	masknez	$a5, $a6, $a4
	maskeqz	$a4, $a0, $a4
	or	$a6, $a4, $a5
	addi.d	$a3, $a3, -1
	addi.d	$a0, $a0, 1
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, 4
	bnez	$a3, .LBB75_8
.LBB75_9:                               # %"_ZSt10__invoke_rIiRZ4mainE4$_21JPfS2_iEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	addi.w	$a0, $a6, 0
	ret
.Lfunc_end75:
	.size	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_21E9_M_invokeERKSt9_Any_dataOS0_S7_Oi, .Lfunc_end75-_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_21E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_21E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_21E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_21E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_21E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB76_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB76_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_21E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB76_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_21)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_21)
.LBB76_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_21E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end76:
	.size	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_21E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end76-_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_21E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_22E9_M_invokeERKSt9_Any_dataOS0_S7_Os
	.type	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_22E9_M_invokeERKSt9_Any_dataOS0_S7_Os,@function
_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_22E9_M_invokeERKSt9_Any_dataOS0_S7_Os: # @"_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_22E9_M_invokeERKSt9_Any_dataOS0_S7_Os"
# %bb.0:
	ld.h	$a0, $a3, 0
	ori	$a3, $zero, 4
	lu12i.w	$a5, 15
	blt	$a0, $a3, .LBB77_4
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a2, $a2, 0
	ld.d	$a3, $a1, 0
	addi.d	$a1, $a2, 6
	addi.d	$a3, $a3, 6
	ori	$a4, $zero, 3
	ori	$a2, $a5, 4095
	.p2align	4, , 16
.LBB77_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a5, $a3, 0
	ld.h	$a6, $a1, 0
	slt	$a5, $a6, $a5
	masknez	$a2, $a2, $a5
	maskeqz	$a5, $a4, $a5
	or	$a2, $a5, $a2
	addi.d	$a4, $a4, 1
	addi.d	$a1, $a1, 2
	addi.d	$a3, $a3, 2
	bne	$a0, $a4, .LBB77_2
# %bb.3:                                # %"_ZSt10__invoke_rIsRZ4mainE4$_22JPsS2_sEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ext.w.h	$a0, $a2
	ret
.LBB77_4:
	ori	$a2, $a5, 4095
	ext.w.h	$a0, $a2
	ret
.Lfunc_end77:
	.size	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_22E9_M_invokeERKSt9_Any_dataOS0_S7_Os, .Lfunc_end77-_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_22E9_M_invokeERKSt9_Any_dataOS0_S7_Os
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_22E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_22E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_22E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_22E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB78_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB78_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_22E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB78_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_22)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_22)
.LBB78_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_22E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end78:
	.size	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_22E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end78-_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_22E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_23E9_M_invokeERKSt9_Any_dataOS0_S7_Os
.LCPI79_0:
	.half	3                               # 0x3
	.half	4                               # 0x4
	.half	5                               # 0x5
	.half	6                               # 0x6
	.half	7                               # 0x7
	.half	8                               # 0x8
	.half	9                               # 0x9
	.half	10                              # 0xa
.LCPI79_1:
	.half	0                               # 0x0
	.half	1                               # 0x1
	.half	2                               # 0x2
	.half	3                               # 0x3
	.half	4                               # 0x4
	.half	5                               # 0x5
	.half	6                               # 0x6
	.half	7                               # 0x7
	.text
	.p2align	5
	.type	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_23E9_M_invokeERKSt9_Any_dataOS0_S7_Os,@function
_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_23E9_M_invokeERKSt9_Any_dataOS0_S7_Os: # @"_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_23E9_M_invokeERKSt9_Any_dataOS0_S7_Os"
# %bb.0:
	ld.h	$a0, $a3, 0
	ori	$a3, $zero, 4
	lu12i.w	$a4, 15
	blt	$a0, $a3, .LBB79_3
# %bb.1:                                # %iter.check
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	addi.d	$a3, $a0, -3
	ori	$a5, $zero, 8
	bgeu	$a3, $a5, .LBB79_4
# %bb.2:
	ori	$a7, $zero, 3
	ori	$t1, $a4, 4095
	b	.LBB79_15
.LBB79_3:
	ori	$t1, $a4, 4095
	ext.w.h	$a0, $t1
	ret
.LBB79_4:                               # %vector.main.loop.iter.check
	ori	$a6, $zero, 3
	ori	$a7, $a4, 4095
	ori	$a5, $zero, 16
	lu12i.w	$a4, 8
	bgeu	$a3, $a5, .LBB79_10
# %bb.5:
	move	$a5, $zero
	ori	$t0, $zero, 3
	move	$t1, $a7
.LBB79_6:                               # %vec.epilog.ph
	bstrpick.d	$t2, $t1, 15, 0
	xor	$a7, $t2, $a7
	sltui	$a7, $a7, 1
	masknez	$t1, $t1, $a7
	lu12i.w	$t2, -8
	maskeqz	$a7, $t2, $a7
	or	$t1, $a7, $t1
	move	$t2, $a3
	bstrins.d	$t2, $zero, 2, 0
	pcalau12i	$a7, %pc_hi20(.LCPI79_1)
	vld	$vr1, $a7, %pc_lo12(.LCPI79_1)
	move	$a7, $a3
	bstrins.d	$a7, $a6, 2, 0
	vreplgr2vr.h	$vr0, $t1
	vreplgr2vr.h	$vr2, $t0
	vadd.h	$vr1, $vr2, $vr1
	slli.d	$a6, $a5, 1
	addi.d	$t0, $a6, 6
	add.d	$a6, $a1, $t0
	add.d	$t0, $a2, $t0
	sub.d	$a5, $a5, $t2
	.p2align	4, , 16
.LBB79_7:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a6, 0
	vld	$vr3, $t0, 0
	vslt.h	$vr2, $vr3, $vr2
	vbitsel.v	$vr0, $vr0, $vr1, $vr2
	vaddi.hu	$vr1, $vr1, 8
	addi.d	$a6, $a6, 16
	addi.d	$a5, $a5, 8
	addi.d	$t0, $t0, 16
	bnez	$a5, .LBB79_7
# %bb.8:                                # %vec.epilog.middle.block
	vbsrl.v	$vr1, $vr0, 8
	vmax.h	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 4
	vmax.h	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 2
	vmax.h	$vr0, $vr1, $vr0
	vpickve2gr.h	$a5, $vr0, 0
	bstrpick.d	$a6, $a5, 15, 0
	xor	$a4, $a6, $a4
	sltui	$a4, $a4, 1
	masknez	$a5, $a5, $a4
	addi.d	$a6, $zero, -1
	maskeqz	$a4, $a6, $a4
	or	$t1, $a4, $a5
	bne	$a3, $t2, .LBB79_15
.LBB79_9:                               # %"_ZSt10__invoke_rIsRZ4mainE4$_23JPsS2_sEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ext.w.h	$a0, $t1
	ret
.LBB79_10:                              # %vector.ph
	move	$a5, $a3
	bstrins.d	$a5, $zero, 3, 0
	ori	$t1, $zero, 3
	move	$t0, $a3
	bstrins.d	$t0, $t1, 3, 0
	pcalau12i	$t1, %pc_hi20(.LCPI79_0)
	vld	$vr0, $t1, %pc_lo12(.LCPI79_0)
	addi.d	$t1, $a1, 22
	vreplgr2vr.h	$vr1, $a4
	addi.d	$t2, $a2, 22
	move	$t3, $a5
	vori.b	$vr2, $vr1, 0
	.p2align	4, , 16
.LBB79_11:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr3, $t1, -16
	vld	$vr4, $t1, 0
	vld	$vr5, $t2, -16
	vld	$vr6, $t2, 0
	vaddi.hu	$vr7, $vr0, 8
	vslt.h	$vr3, $vr5, $vr3
	vslt.h	$vr4, $vr6, $vr4
	vbitsel.v	$vr1, $vr1, $vr0, $vr3
	vbitsel.v	$vr2, $vr2, $vr7, $vr4
	vaddi.hu	$vr0, $vr0, 16
	addi.d	$t1, $t1, 32
	addi.d	$t3, $t3, -16
	addi.d	$t2, $t2, 32
	bnez	$t3, .LBB79_11
# %bb.12:                               # %middle.block
	vmax.h	$vr0, $vr1, $vr2
	vbsrl.v	$vr1, $vr0, 8
	vmax.h	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 4
	vmax.h	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 2
	vmax.h	$vr0, $vr1, $vr0
	vpickve2gr.h	$t1, $vr0, 0
	bstrpick.d	$t2, $t1, 15, 0
	xor	$t2, $t2, $a4
	sltui	$t2, $t2, 1
	masknez	$t1, $t1, $t2
	addi.w	$t3, $zero, -1
	maskeqz	$t2, $t3, $t2
	or	$t1, $t2, $t1
	beq	$a3, $a5, .LBB79_9
# %bb.13:                               # %vec.epilog.iter.check
	andi	$t2, $a3, 8
	bnez	$t2, .LBB79_6
# %bb.14:
	addi.d	$a7, $a5, 3
.LBB79_15:                              # %.lr.ph.i.i.i.preheader
	alsl.d	$a2, $a7, $a2, 1
	alsl.d	$a1, $a7, $a1, 1
	.p2align	4, , 16
.LBB79_16:                              # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a3, $a1, 0
	ld.h	$a4, $a2, 0
	slt	$a3, $a4, $a3
	masknez	$a4, $t1, $a3
	maskeqz	$a3, $a7, $a3
	or	$t1, $a3, $a4
	addi.d	$a7, $a7, 1
	addi.d	$a2, $a2, 2
	addi.d	$a1, $a1, 2
	bne	$a0, $a7, .LBB79_16
	b	.LBB79_9
.Lfunc_end79:
	.size	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_23E9_M_invokeERKSt9_Any_dataOS0_S7_Os, .Lfunc_end79-_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_23E9_M_invokeERKSt9_Any_dataOS0_S7_Os
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_23E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_23E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_23E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_23E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB80_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB80_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_23E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB80_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_23)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_23)
.LBB80_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_23E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end80:
	.size	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_23E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end80-_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_23E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_24E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.type	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_24E9_M_invokeERKSt9_Any_dataOS0_S7_Oi,@function
_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_24E9_M_invokeERKSt9_Any_dataOS0_S7_Oi: # @"_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_24E9_M_invokeERKSt9_Any_dataOS0_S7_Oi"
# %bb.0:
	ld.w	$a3, $a3, 0
	ori	$a4, $zero, 4
	ori	$a0, $zero, 3
	blt	$a3, $a4, .LBB81_3
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a0, $a2, 0
	ld.d	$a4, $a1, 0
	addi.d	$a1, $a3, -3
	addi.d	$a2, $a0, 12
	addi.d	$a3, $a4, 12
	ori	$a4, $zero, 3
	ori	$a0, $zero, 3
	.p2align	4, , 16
.LBB81_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a3, 0
	ld.w	$a6, $a2, 0
	slt	$a5, $a6, $a5
	masknez	$a0, $a0, $a5
	maskeqz	$a5, $a4, $a5
	or	$a0, $a5, $a0
	addi.d	$a1, $a1, -1
	addi.w	$a4, $a4, 1
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 4
	bnez	$a1, .LBB81_2
.LBB81_3:                               # %"_ZSt10__invoke_rIiRZ4mainE4$_24JPiS2_iEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end81:
	.size	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_24E9_M_invokeERKSt9_Any_dataOS0_S7_Oi, .Lfunc_end81-_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_24E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_24E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_24E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_24E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_24E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB82_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB82_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_24E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB82_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_24)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_24)
.LBB82_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_24E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end82:
	.size	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_24E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end82-_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_24E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_25E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
.LCPI83_0:
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.text
	.p2align	5
	.type	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_25E9_M_invokeERKSt9_Any_dataOS0_S7_Oi,@function
_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_25E9_M_invokeERKSt9_Any_dataOS0_S7_Oi: # @"_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_25E9_M_invokeERKSt9_Any_dataOS0_S7_Oi"
# %bb.0:
	ld.w	$a3, $a3, 0
	ori	$a0, $zero, 4
	ori	$a6, $zero, 3
	blt	$a3, $a0, .LBB83_7
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	addi.d	$a4, $a3, -3
	ori	$a0, $zero, 3
	ori	$a5, $zero, 8
	ori	$a6, $zero, 3
	bltu	$a4, $a5, .LBB83_5
# %bb.2:                                # %vector.ph
	move	$a5, $a4
	bstrins.d	$a5, $zero, 2, 0
	ori	$a6, $zero, 3
	move	$a0, $a4
	bstrins.d	$a0, $a6, 2, 0
	addi.d	$a7, $a1, 28
	pcalau12i	$a6, %pc_hi20(.LCPI83_0)
	vld	$vr0, $a6, %pc_lo12(.LCPI83_0)
	lu12i.w	$a6, -524288
	vreplgr2vr.w	$vr1, $a6
	addi.d	$t0, $a2, 28
	move	$t1, $a5
	vori.b	$vr2, $vr1, 0
	.p2align	4, , 16
.LBB83_3:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr3, $a7, -16
	vld	$vr4, $a7, 0
	vld	$vr5, $t0, -16
	vld	$vr6, $t0, 0
	vaddi.wu	$vr7, $vr0, 4
	vslt.w	$vr3, $vr5, $vr3
	vslt.w	$vr4, $vr6, $vr4
	vbitsel.v	$vr1, $vr1, $vr0, $vr3
	vbitsel.v	$vr2, $vr2, $vr7, $vr4
	vaddi.wu	$vr0, $vr0, 8
	addi.d	$a7, $a7, 32
	addi.d	$t1, $t1, -8
	addi.d	$t0, $t0, 32
	bnez	$t1, .LBB83_3
# %bb.4:                                # %middle.block
	vmax.w	$vr0, $vr1, $vr2
	vbsrl.v	$vr1, $vr0, 8
	vmax.w	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 4
	vmax.w	$vr0, $vr1, $vr0
	vpickve2gr.w	$a7, $vr0, 0
	xor	$a6, $a7, $a6
	sltui	$a6, $a6, 1
	masknez	$a7, $a7, $a6
	ori	$t0, $zero, 3
	maskeqz	$a6, $t0, $a6
	or	$a6, $a6, $a7
	beq	$a4, $a5, .LBB83_7
.LBB83_5:                               # %.lr.ph.i.i.i.preheader
	sub.d	$a3, $a3, $a0
	alsl.d	$a2, $a0, $a2, 2
	alsl.d	$a1, $a0, $a1, 2
	.p2align	4, , 16
.LBB83_6:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a1, 0
	ld.w	$a5, $a2, 0
	slt	$a4, $a5, $a4
	masknez	$a5, $a6, $a4
	maskeqz	$a4, $a0, $a4
	or	$a6, $a4, $a5
	addi.d	$a3, $a3, -1
	addi.d	$a0, $a0, 1
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, 4
	bnez	$a3, .LBB83_6
.LBB83_7:                               # %"_ZSt10__invoke_rIiRZ4mainE4$_25JPiS2_iEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	addi.w	$a0, $a6, 0
	ret
.Lfunc_end83:
	.size	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_25E9_M_invokeERKSt9_Any_dataOS0_S7_Oi, .Lfunc_end83-_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_25E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_25E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_25E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_25E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_25E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB84_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB84_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_25E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB84_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_25)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_25)
.LBB84_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_25E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end84:
	.size	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_25E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end84-_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_25E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_24E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.type	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_24E9_M_invokeERKSt9_Any_dataOS0_S7_Oi,@function
_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_24E9_M_invokeERKSt9_Any_dataOS0_S7_Oi: # @"_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_24E9_M_invokeERKSt9_Any_dataOS0_S7_Oi"
# %bb.0:
	ld.w	$a3, $a3, 0
	ori	$a4, $zero, 4
	ori	$a0, $zero, 3
	blt	$a3, $a4, .LBB85_3
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a0, $a2, 0
	ld.d	$a4, $a1, 0
	addi.d	$a1, $a3, -3
	addi.d	$a2, $a0, 12
	addi.d	$a3, $a4, 12
	ori	$a4, $zero, 3
	ori	$a0, $zero, 3
	.p2align	4, , 16
.LBB85_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a3, 0
	fld.s	$fa1, $a2, 0
	fcmp.clt.s	$fcc0, $fa1, $fa0
	movcf2gr	$a5, $fcc0
	masknez	$a0, $a0, $a5
	maskeqz	$a5, $a4, $a5
	or	$a0, $a5, $a0
	addi.d	$a1, $a1, -1
	addi.w	$a4, $a4, 1
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 4
	bnez	$a1, .LBB85_2
.LBB85_3:                               # %"_ZSt10__invoke_rIiRZ4mainE4$_24JPfS2_iEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end85:
	.size	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_24E9_M_invokeERKSt9_Any_dataOS0_S7_Oi, .Lfunc_end85-_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_24E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_24E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_24E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_24E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_24E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB86_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB86_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_24E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB86_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_24)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_24)
.LBB86_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_24E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end86:
	.size	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_24E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end86-_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_24E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_25E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
.LCPI87_0:
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.text
	.p2align	5
	.type	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_25E9_M_invokeERKSt9_Any_dataOS0_S7_Oi,@function
_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_25E9_M_invokeERKSt9_Any_dataOS0_S7_Oi: # @"_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_25E9_M_invokeERKSt9_Any_dataOS0_S7_Oi"
# %bb.0:
	ld.w	$a3, $a3, 0
	ori	$a0, $zero, 4
	ori	$a6, $zero, 3
	blt	$a3, $a0, .LBB87_7
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	addi.d	$a4, $a3, -3
	ori	$a0, $zero, 3
	ori	$a5, $zero, 8
	ori	$a6, $zero, 3
	bltu	$a4, $a5, .LBB87_5
# %bb.2:                                # %vector.ph
	move	$a5, $a4
	bstrins.d	$a5, $zero, 2, 0
	ori	$a6, $zero, 3
	move	$a0, $a4
	bstrins.d	$a0, $a6, 2, 0
	addi.d	$a7, $a1, 28
	pcalau12i	$a6, %pc_hi20(.LCPI87_0)
	vld	$vr0, $a6, %pc_lo12(.LCPI87_0)
	lu12i.w	$a6, -524288
	vreplgr2vr.w	$vr1, $a6
	addi.d	$t0, $a2, 28
	move	$t1, $a5
	vori.b	$vr2, $vr1, 0
	.p2align	4, , 16
.LBB87_3:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr3, $a7, -16
	vld	$vr4, $a7, 0
	vld	$vr5, $t0, -16
	vld	$vr6, $t0, 0
	vaddi.wu	$vr7, $vr0, 4
	vfcmp.clt.s	$vr3, $vr5, $vr3
	vfcmp.clt.s	$vr4, $vr6, $vr4
	vbitsel.v	$vr1, $vr1, $vr0, $vr3
	vbitsel.v	$vr2, $vr2, $vr7, $vr4
	vaddi.wu	$vr0, $vr0, 8
	addi.d	$a7, $a7, 32
	addi.d	$t1, $t1, -8
	addi.d	$t0, $t0, 32
	bnez	$t1, .LBB87_3
# %bb.4:                                # %middle.block
	vmax.w	$vr0, $vr1, $vr2
	vbsrl.v	$vr1, $vr0, 8
	vmax.w	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 4
	vmax.w	$vr0, $vr1, $vr0
	vpickve2gr.w	$a7, $vr0, 0
	xor	$a6, $a7, $a6
	sltui	$a6, $a6, 1
	masknez	$a7, $a7, $a6
	ori	$t0, $zero, 3
	maskeqz	$a6, $t0, $a6
	or	$a6, $a6, $a7
	beq	$a4, $a5, .LBB87_7
.LBB87_5:                               # %.lr.ph.i.i.i.preheader
	sub.d	$a3, $a3, $a0
	alsl.d	$a2, $a0, $a2, 2
	alsl.d	$a1, $a0, $a1, 2
	.p2align	4, , 16
.LBB87_6:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a1, 0
	fld.s	$fa1, $a2, 0
	fcmp.clt.s	$fcc0, $fa1, $fa0
	movcf2gr	$a4, $fcc0
	masknez	$a5, $a6, $a4
	maskeqz	$a4, $a0, $a4
	or	$a6, $a4, $a5
	addi.d	$a3, $a3, -1
	addi.d	$a0, $a0, 1
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, 4
	bnez	$a3, .LBB87_6
.LBB87_7:                               # %"_ZSt10__invoke_rIiRZ4mainE4$_25JPfS2_iEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	addi.w	$a0, $a6, 0
	ret
.Lfunc_end87:
	.size	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_25E9_M_invokeERKSt9_Any_dataOS0_S7_Oi, .Lfunc_end87-_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_25E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_25E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_25E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_25E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_25E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB88_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB88_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_25E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB88_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_25)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_25)
.LBB88_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_25E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end88:
	.size	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_25E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end88-_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_25E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_26E9_M_invokeERKSt9_Any_dataOS0_S7_Os
	.type	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_26E9_M_invokeERKSt9_Any_dataOS0_S7_Os,@function
_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_26E9_M_invokeERKSt9_Any_dataOS0_S7_Os: # @"_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_26E9_M_invokeERKSt9_Any_dataOS0_S7_Os"
# %bb.0:
	ld.h	$a0, $a3, 0
	ori	$a3, $zero, 4
	ori	$a4, $zero, 3
	blt	$a0, $a3, .LBB89_3
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a2, $a2, 0
	ld.d	$a3, $a1, 0
	addi.d	$a1, $a2, 6
	addi.d	$a2, $a3, 6
	ori	$a3, $zero, 3
	ori	$a4, $zero, 3
	.p2align	4, , 16
.LBB89_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a5, $a2, 0
	ld.h	$a6, $a1, 0
	slt	$a5, $a6, $a5
	masknez	$a4, $a4, $a5
	maskeqz	$a5, $a3, $a5
	or	$a4, $a5, $a4
	addi.d	$a3, $a3, 1
	addi.d	$a1, $a1, 2
	addi.d	$a2, $a2, 2
	bne	$a0, $a3, .LBB89_2
.LBB89_3:                               # %"_ZSt10__invoke_rIsRZ4mainE4$_26JPsS2_sEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ext.w.h	$a0, $a4
	ret
.Lfunc_end89:
	.size	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_26E9_M_invokeERKSt9_Any_dataOS0_S7_Os, .Lfunc_end89-_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_26E9_M_invokeERKSt9_Any_dataOS0_S7_Os
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_26E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_26E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_26E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_26E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB90_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB90_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_26E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB90_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_26)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_26)
.LBB90_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_26E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end90:
	.size	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_26E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end90-_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_26E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_27E9_M_invokeERKSt9_Any_dataOS0_S7_Os
.LCPI91_0:
	.half	3                               # 0x3
	.half	4                               # 0x4
	.half	5                               # 0x5
	.half	6                               # 0x6
	.half	7                               # 0x7
	.half	8                               # 0x8
	.half	9                               # 0x9
	.half	10                              # 0xa
.LCPI91_1:
	.half	0                               # 0x0
	.half	1                               # 0x1
	.half	2                               # 0x2
	.half	3                               # 0x3
	.half	4                               # 0x4
	.half	5                               # 0x5
	.half	6                               # 0x6
	.half	7                               # 0x7
	.text
	.p2align	5
	.type	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_27E9_M_invokeERKSt9_Any_dataOS0_S7_Os,@function
_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_27E9_M_invokeERKSt9_Any_dataOS0_S7_Os: # @"_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_27E9_M_invokeERKSt9_Any_dataOS0_S7_Os"
# %bb.0:
	ld.h	$a0, $a3, 0
	ori	$a3, $zero, 4
	ori	$t1, $zero, 3
	blt	$a0, $a3, .LBB91_14
# %bb.1:                                # %iter.check
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	addi.d	$a3, $a0, -3
	ori	$a7, $zero, 3
	ori	$a4, $zero, 8
	ori	$t1, $zero, 3
	bltu	$a3, $a4, .LBB91_12
# %bb.2:                                # %vector.main.loop.iter.check
	ori	$a6, $zero, 3
	ori	$a5, $zero, 16
	lu12i.w	$a4, 8
	bgeu	$a3, $a5, .LBB91_7
# %bb.3:
	move	$a5, $zero
	ori	$t0, $zero, 3
	ori	$t1, $zero, 3
.LBB91_4:                               # %vec.epilog.ph
	bstrpick.d	$a7, $t1, 15, 0
	addi.d	$a7, $a7, -3
	sltui	$a7, $a7, 1
	masknez	$t1, $t1, $a7
	lu12i.w	$t2, -8
	maskeqz	$a7, $t2, $a7
	or	$t1, $a7, $t1
	move	$t2, $a3
	bstrins.d	$t2, $zero, 2, 0
	pcalau12i	$a7, %pc_hi20(.LCPI91_1)
	vld	$vr1, $a7, %pc_lo12(.LCPI91_1)
	move	$a7, $a3
	bstrins.d	$a7, $a6, 2, 0
	vreplgr2vr.h	$vr0, $t1
	vreplgr2vr.h	$vr2, $t0
	vadd.h	$vr1, $vr2, $vr1
	slli.d	$a6, $a5, 1
	addi.d	$t0, $a6, 6
	add.d	$a6, $a1, $t0
	add.d	$t0, $a2, $t0
	sub.d	$a5, $a5, $t2
	.p2align	4, , 16
.LBB91_5:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a6, 0
	vld	$vr3, $t0, 0
	vslt.h	$vr2, $vr3, $vr2
	vbitsel.v	$vr0, $vr0, $vr1, $vr2
	vaddi.hu	$vr1, $vr1, 8
	addi.d	$a6, $a6, 16
	addi.d	$a5, $a5, 8
	addi.d	$t0, $t0, 16
	bnez	$a5, .LBB91_5
# %bb.6:                                # %vec.epilog.middle.block
	vbsrl.v	$vr1, $vr0, 8
	vmax.h	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 4
	vmax.h	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 2
	vmax.h	$vr0, $vr1, $vr0
	vpickve2gr.h	$a5, $vr0, 0
	bstrpick.d	$a6, $a5, 15, 0
	xor	$a4, $a6, $a4
	sltui	$a4, $a4, 1
	masknez	$a5, $a5, $a4
	ori	$a6, $zero, 3
	maskeqz	$a4, $a6, $a4
	or	$t1, $a4, $a5
	bne	$a3, $t2, .LBB91_12
	b	.LBB91_14
.LBB91_7:                               # %vector.ph
	move	$a5, $a3
	bstrins.d	$a5, $zero, 3, 0
	ori	$a7, $zero, 3
	move	$t0, $a3
	bstrins.d	$t0, $a7, 3, 0
	pcalau12i	$a7, %pc_hi20(.LCPI91_0)
	vld	$vr0, $a7, %pc_lo12(.LCPI91_0)
	addi.d	$a7, $a1, 22
	vreplgr2vr.h	$vr1, $a4
	addi.d	$t1, $a2, 22
	move	$t2, $a5
	vori.b	$vr2, $vr1, 0
	.p2align	4, , 16
.LBB91_8:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr3, $a7, -16
	vld	$vr4, $a7, 0
	vld	$vr5, $t1, -16
	vld	$vr6, $t1, 0
	vaddi.hu	$vr7, $vr0, 8
	vslt.h	$vr3, $vr5, $vr3
	vslt.h	$vr4, $vr6, $vr4
	vbitsel.v	$vr1, $vr1, $vr0, $vr3
	vbitsel.v	$vr2, $vr2, $vr7, $vr4
	vaddi.hu	$vr0, $vr0, 16
	addi.d	$a7, $a7, 32
	addi.d	$t2, $t2, -16
	addi.d	$t1, $t1, 32
	bnez	$t2, .LBB91_8
# %bb.9:                                # %middle.block
	vmax.h	$vr0, $vr1, $vr2
	vbsrl.v	$vr1, $vr0, 8
	vmax.h	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 4
	vmax.h	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 2
	vmax.h	$vr0, $vr1, $vr0
	vpickve2gr.h	$a7, $vr0, 0
	bstrpick.d	$t1, $a7, 15, 0
	xor	$t1, $t1, $a4
	sltui	$t1, $t1, 1
	masknez	$a7, $a7, $t1
	ori	$t2, $zero, 3
	maskeqz	$t1, $t2, $t1
	or	$t1, $t1, $a7
	beq	$a3, $a5, .LBB91_14
# %bb.10:                               # %vec.epilog.iter.check
	andi	$a7, $a3, 8
	bnez	$a7, .LBB91_4
# %bb.11:
	addi.d	$a7, $a5, 3
.LBB91_12:                              # %.lr.ph.i.i.i.preheader
	alsl.d	$a2, $a7, $a2, 1
	alsl.d	$a1, $a7, $a1, 1
	.p2align	4, , 16
.LBB91_13:                              # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a3, $a1, 0
	ld.h	$a4, $a2, 0
	slt	$a3, $a4, $a3
	masknez	$a4, $t1, $a3
	maskeqz	$a3, $a7, $a3
	or	$t1, $a3, $a4
	addi.d	$a7, $a7, 1
	addi.d	$a2, $a2, 2
	addi.d	$a1, $a1, 2
	bne	$a0, $a7, .LBB91_13
.LBB91_14:                              # %"_ZSt10__invoke_rIsRZ4mainE4$_27JPsS2_sEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ext.w.h	$a0, $t1
	ret
.Lfunc_end91:
	.size	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_27E9_M_invokeERKSt9_Any_dataOS0_S7_Os, .Lfunc_end91-_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_27E9_M_invokeERKSt9_Any_dataOS0_S7_Os
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_27E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_27E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_27E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_27E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB92_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB92_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_27E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB92_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_27)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_27)
.LBB92_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_27E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end92:
	.size	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_27E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end92-_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_27E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_28E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.type	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_28E9_M_invokeERKSt9_Any_dataOS0_S7_Oi,@function
_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_28E9_M_invokeERKSt9_Any_dataOS0_S7_Oi: # @"_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_28E9_M_invokeERKSt9_Any_dataOS0_S7_Oi"
# %bb.0:
	ld.w	$a3, $a3, 0
	ori	$a4, $zero, 4
	ori	$a0, $zero, 2
	blt	$a3, $a4, .LBB93_3
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a0, $a2, 0
	ld.d	$a4, $a1, 0
	addi.d	$a1, $a3, -3
	addi.d	$a2, $a0, 12
	addi.d	$a3, $a4, 12
	ori	$a0, $zero, 2
	ori	$a4, $zero, 3
	.p2align	4, , 16
.LBB93_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a3, 0
	ld.w	$a6, $a2, 0
	slt	$a5, $a6, $a5
	masknez	$a0, $a0, $a5
	maskeqz	$a5, $a4, $a5
	or	$a0, $a5, $a0
	addi.d	$a1, $a1, -1
	addi.w	$a4, $a4, 1
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 4
	bnez	$a1, .LBB93_2
.LBB93_3:                               # %"_ZSt10__invoke_rIiRZ4mainE4$_28JPiS2_iEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end93:
	.size	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_28E9_M_invokeERKSt9_Any_dataOS0_S7_Oi, .Lfunc_end93-_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_28E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_28E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_28E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_28E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_28E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB94_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB94_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_28E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB94_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_28)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_28)
.LBB94_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_28E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end94:
	.size	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_28E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end94-_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_28E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_29E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
.LCPI95_0:
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.text
	.p2align	5
	.type	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_29E9_M_invokeERKSt9_Any_dataOS0_S7_Oi,@function
_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_29E9_M_invokeERKSt9_Any_dataOS0_S7_Oi: # @"_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_29E9_M_invokeERKSt9_Any_dataOS0_S7_Oi"
# %bb.0:
	ld.w	$a3, $a3, 0
	ori	$a0, $zero, 4
	ori	$a6, $zero, 2
	blt	$a3, $a0, .LBB95_8
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	addi.d	$a4, $a3, -3
	ori	$a0, $zero, 8
	bgeu	$a4, $a0, .LBB95_3
# %bb.2:
	ori	$a6, $zero, 2
	ori	$a0, $zero, 3
	b	.LBB95_6
.LBB95_3:                               # %vector.ph
	move	$a5, $a4
	bstrins.d	$a5, $zero, 2, 0
	ori	$a6, $zero, 3
	move	$a0, $a4
	bstrins.d	$a0, $a6, 2, 0
	addi.d	$a7, $a1, 28
	pcalau12i	$a6, %pc_hi20(.LCPI95_0)
	vld	$vr0, $a6, %pc_lo12(.LCPI95_0)
	lu12i.w	$a6, -524288
	vreplgr2vr.w	$vr1, $a6
	addi.d	$t0, $a2, 28
	move	$t1, $a5
	vori.b	$vr2, $vr1, 0
	.p2align	4, , 16
.LBB95_4:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr3, $a7, -16
	vld	$vr4, $a7, 0
	vld	$vr5, $t0, -16
	vld	$vr6, $t0, 0
	vaddi.wu	$vr7, $vr0, 4
	vslt.w	$vr3, $vr5, $vr3
	vslt.w	$vr4, $vr6, $vr4
	vbitsel.v	$vr1, $vr1, $vr0, $vr3
	vbitsel.v	$vr2, $vr2, $vr7, $vr4
	vaddi.wu	$vr0, $vr0, 8
	addi.d	$a7, $a7, 32
	addi.d	$t1, $t1, -8
	addi.d	$t0, $t0, 32
	bnez	$t1, .LBB95_4
# %bb.5:                                # %middle.block
	vmax.w	$vr0, $vr1, $vr2
	vbsrl.v	$vr1, $vr0, 8
	vmax.w	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 4
	vmax.w	$vr0, $vr1, $vr0
	vpickve2gr.w	$a7, $vr0, 0
	xor	$a6, $a7, $a6
	sltui	$a6, $a6, 1
	masknez	$a7, $a7, $a6
	ori	$t0, $zero, 2
	maskeqz	$a6, $t0, $a6
	or	$a6, $a6, $a7
	beq	$a4, $a5, .LBB95_8
.LBB95_6:                               # %.lr.ph.i.i.i.preheader
	sub.d	$a3, $a3, $a0
	alsl.d	$a2, $a0, $a2, 2
	alsl.d	$a1, $a0, $a1, 2
	.p2align	4, , 16
.LBB95_7:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a1, 0
	ld.w	$a5, $a2, 0
	slt	$a4, $a5, $a4
	masknez	$a5, $a6, $a4
	maskeqz	$a4, $a0, $a4
	or	$a6, $a4, $a5
	addi.d	$a3, $a3, -1
	addi.d	$a0, $a0, 1
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, 4
	bnez	$a3, .LBB95_7
.LBB95_8:                               # %"_ZSt10__invoke_rIiRZ4mainE4$_29JPiS2_iEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	addi.w	$a0, $a6, 0
	ret
.Lfunc_end95:
	.size	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_29E9_M_invokeERKSt9_Any_dataOS0_S7_Oi, .Lfunc_end95-_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_29E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_29E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_29E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_29E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_29E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB96_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB96_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_29E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB96_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_29)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_29)
.LBB96_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_29E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end96:
	.size	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_29E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end96-_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_29E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_28E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.type	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_28E9_M_invokeERKSt9_Any_dataOS0_S7_Oi,@function
_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_28E9_M_invokeERKSt9_Any_dataOS0_S7_Oi: # @"_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_28E9_M_invokeERKSt9_Any_dataOS0_S7_Oi"
# %bb.0:
	ld.w	$a3, $a3, 0
	ori	$a4, $zero, 4
	ori	$a0, $zero, 2
	blt	$a3, $a4, .LBB97_3
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a0, $a2, 0
	ld.d	$a4, $a1, 0
	addi.d	$a1, $a3, -3
	addi.d	$a2, $a0, 12
	addi.d	$a3, $a4, 12
	ori	$a0, $zero, 2
	ori	$a4, $zero, 3
	.p2align	4, , 16
.LBB97_2:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a3, 0
	fld.s	$fa1, $a2, 0
	fcmp.clt.s	$fcc0, $fa1, $fa0
	movcf2gr	$a5, $fcc0
	masknez	$a0, $a0, $a5
	maskeqz	$a5, $a4, $a5
	or	$a0, $a5, $a0
	addi.d	$a1, $a1, -1
	addi.w	$a4, $a4, 1
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 4
	bnez	$a1, .LBB97_2
.LBB97_3:                               # %"_ZSt10__invoke_rIiRZ4mainE4$_28JPfS2_iEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end97:
	.size	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_28E9_M_invokeERKSt9_Any_dataOS0_S7_Oi, .Lfunc_end97-_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_28E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_28E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_28E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_28E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_28E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB98_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB98_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_28E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB98_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_28)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_28)
.LBB98_4:                               # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_28E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end98:
	.size	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_28E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end98-_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_28E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_29E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
.LCPI99_0:
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.text
	.p2align	5
	.type	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_29E9_M_invokeERKSt9_Any_dataOS0_S7_Oi,@function
_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_29E9_M_invokeERKSt9_Any_dataOS0_S7_Oi: # @"_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_29E9_M_invokeERKSt9_Any_dataOS0_S7_Oi"
# %bb.0:
	ld.w	$a3, $a3, 0
	ori	$a0, $zero, 4
	ori	$a6, $zero, 2
	blt	$a3, $a0, .LBB99_8
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	addi.d	$a4, $a3, -3
	ori	$a0, $zero, 8
	bgeu	$a4, $a0, .LBB99_3
# %bb.2:
	ori	$a6, $zero, 2
	ori	$a0, $zero, 3
	b	.LBB99_6
.LBB99_3:                               # %vector.ph
	move	$a5, $a4
	bstrins.d	$a5, $zero, 2, 0
	ori	$a6, $zero, 3
	move	$a0, $a4
	bstrins.d	$a0, $a6, 2, 0
	addi.d	$a7, $a1, 28
	pcalau12i	$a6, %pc_hi20(.LCPI99_0)
	vld	$vr0, $a6, %pc_lo12(.LCPI99_0)
	lu12i.w	$a6, -524288
	vreplgr2vr.w	$vr1, $a6
	addi.d	$t0, $a2, 28
	move	$t1, $a5
	vori.b	$vr2, $vr1, 0
	.p2align	4, , 16
.LBB99_4:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr3, $a7, -16
	vld	$vr4, $a7, 0
	vld	$vr5, $t0, -16
	vld	$vr6, $t0, 0
	vaddi.wu	$vr7, $vr0, 4
	vfcmp.clt.s	$vr3, $vr5, $vr3
	vfcmp.clt.s	$vr4, $vr6, $vr4
	vbitsel.v	$vr1, $vr1, $vr0, $vr3
	vbitsel.v	$vr2, $vr2, $vr7, $vr4
	vaddi.wu	$vr0, $vr0, 8
	addi.d	$a7, $a7, 32
	addi.d	$t1, $t1, -8
	addi.d	$t0, $t0, 32
	bnez	$t1, .LBB99_4
# %bb.5:                                # %middle.block
	vmax.w	$vr0, $vr1, $vr2
	vbsrl.v	$vr1, $vr0, 8
	vmax.w	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 4
	vmax.w	$vr0, $vr1, $vr0
	vpickve2gr.w	$a7, $vr0, 0
	xor	$a6, $a7, $a6
	sltui	$a6, $a6, 1
	masknez	$a7, $a7, $a6
	ori	$t0, $zero, 2
	maskeqz	$a6, $t0, $a6
	or	$a6, $a6, $a7
	beq	$a4, $a5, .LBB99_8
.LBB99_6:                               # %.lr.ph.i.i.i.preheader
	sub.d	$a3, $a3, $a0
	alsl.d	$a2, $a0, $a2, 2
	alsl.d	$a1, $a0, $a1, 2
	.p2align	4, , 16
.LBB99_7:                               # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a1, 0
	fld.s	$fa1, $a2, 0
	fcmp.clt.s	$fcc0, $fa1, $fa0
	movcf2gr	$a4, $fcc0
	masknez	$a5, $a6, $a4
	maskeqz	$a4, $a0, $a4
	or	$a6, $a4, $a5
	addi.d	$a3, $a3, -1
	addi.d	$a0, $a0, 1
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, 4
	bnez	$a3, .LBB99_7
.LBB99_8:                               # %"_ZSt10__invoke_rIiRZ4mainE4$_29JPfS2_iEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	addi.w	$a0, $a6, 0
	ret
.Lfunc_end99:
	.size	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_29E9_M_invokeERKSt9_Any_dataOS0_S7_Oi, .Lfunc_end99-_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_29E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_29E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_29E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_29E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_29E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB100_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB100_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_29E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB100_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_29)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_29)
.LBB100_4:                              # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_29E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end100:
	.size	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_29E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end100-_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_29E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_30E9_M_invokeERKSt9_Any_dataOS0_S7_Os
	.type	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_30E9_M_invokeERKSt9_Any_dataOS0_S7_Os,@function
_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_30E9_M_invokeERKSt9_Any_dataOS0_S7_Os: # @"_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_30E9_M_invokeERKSt9_Any_dataOS0_S7_Os"
# %bb.0:
	ld.h	$a0, $a3, 0
	ori	$a4, $zero, 4
	ori	$a3, $zero, 2
	blt	$a0, $a4, .LBB101_3
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a2, $a2, 0
	ld.d	$a3, $a1, 0
	addi.d	$a1, $a2, 6
	addi.d	$a2, $a3, 6
	ori	$a3, $zero, 2
	ori	$a4, $zero, 3
	.p2align	4, , 16
.LBB101_2:                              # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a5, $a2, 0
	ld.h	$a6, $a1, 0
	slt	$a5, $a6, $a5
	masknez	$a3, $a3, $a5
	maskeqz	$a5, $a4, $a5
	or	$a3, $a5, $a3
	addi.d	$a4, $a4, 1
	addi.d	$a1, $a1, 2
	addi.d	$a2, $a2, 2
	bne	$a0, $a4, .LBB101_2
.LBB101_3:                              # %"_ZSt10__invoke_rIsRZ4mainE4$_30JPsS2_sEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ext.w.h	$a0, $a3
	ret
.Lfunc_end101:
	.size	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_30E9_M_invokeERKSt9_Any_dataOS0_S7_Os, .Lfunc_end101-_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_30E9_M_invokeERKSt9_Any_dataOS0_S7_Os
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_30E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_30E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_30E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_30E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB102_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB102_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_30E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB102_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_30)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_30)
.LBB102_4:                              # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_30E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end102:
	.size	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_30E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end102-_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_30E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_31E9_M_invokeERKSt9_Any_dataOS0_S7_Os
.LCPI103_0:
	.half	3                               # 0x3
	.half	4                               # 0x4
	.half	5                               # 0x5
	.half	6                               # 0x6
	.half	7                               # 0x7
	.half	8                               # 0x8
	.half	9                               # 0x9
	.half	10                              # 0xa
.LCPI103_1:
	.half	0                               # 0x0
	.half	1                               # 0x1
	.half	2                               # 0x2
	.half	3                               # 0x3
	.half	4                               # 0x4
	.half	5                               # 0x5
	.half	6                               # 0x6
	.half	7                               # 0x7
	.text
	.p2align	5
	.type	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_31E9_M_invokeERKSt9_Any_dataOS0_S7_Os,@function
_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_31E9_M_invokeERKSt9_Any_dataOS0_S7_Os: # @"_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_31E9_M_invokeERKSt9_Any_dataOS0_S7_Os"
# %bb.0:
	ld.h	$a0, $a3, 0
	ori	$a3, $zero, 4
	ori	$t1, $zero, 2
	blt	$a0, $a3, .LBB103_15
# %bb.1:                                # %iter.check
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	addi.d	$a3, $a0, -3
	ori	$a4, $zero, 8
	bgeu	$a3, $a4, .LBB103_3
# %bb.2:
	ori	$t1, $zero, 2
	ori	$a7, $zero, 3
	b	.LBB103_13
.LBB103_3:                              # %vector.main.loop.iter.check
	ori	$a6, $zero, 3
	ori	$a5, $zero, 16
	lu12i.w	$a4, 8
	bgeu	$a3, $a5, .LBB103_8
# %bb.4:
	move	$a5, $zero
	ori	$t1, $zero, 2
	ori	$t0, $zero, 3
.LBB103_5:                              # %vec.epilog.ph
	bstrpick.d	$a7, $t1, 15, 0
	addi.d	$a7, $a7, -2
	sltui	$a7, $a7, 1
	masknez	$t1, $t1, $a7
	lu12i.w	$t2, -8
	maskeqz	$a7, $t2, $a7
	or	$t1, $a7, $t1
	move	$t2, $a3
	bstrins.d	$t2, $zero, 2, 0
	pcalau12i	$a7, %pc_hi20(.LCPI103_1)
	vld	$vr1, $a7, %pc_lo12(.LCPI103_1)
	move	$a7, $a3
	bstrins.d	$a7, $a6, 2, 0
	vreplgr2vr.h	$vr0, $t1
	vreplgr2vr.h	$vr2, $t0
	vadd.h	$vr1, $vr2, $vr1
	slli.d	$a6, $a5, 1
	addi.d	$t0, $a6, 6
	add.d	$a6, $a1, $t0
	add.d	$t0, $a2, $t0
	sub.d	$a5, $a5, $t2
	.p2align	4, , 16
.LBB103_6:                              # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a6, 0
	vld	$vr3, $t0, 0
	vslt.h	$vr2, $vr3, $vr2
	vbitsel.v	$vr0, $vr0, $vr1, $vr2
	vaddi.hu	$vr1, $vr1, 8
	addi.d	$a6, $a6, 16
	addi.d	$a5, $a5, 8
	addi.d	$t0, $t0, 16
	bnez	$a5, .LBB103_6
# %bb.7:                                # %vec.epilog.middle.block
	vbsrl.v	$vr1, $vr0, 8
	vmax.h	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 4
	vmax.h	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 2
	vmax.h	$vr0, $vr1, $vr0
	vpickve2gr.h	$a5, $vr0, 0
	bstrpick.d	$a6, $a5, 15, 0
	xor	$a4, $a6, $a4
	sltui	$a4, $a4, 1
	masknez	$a5, $a5, $a4
	ori	$a6, $zero, 2
	maskeqz	$a4, $a6, $a4
	or	$t1, $a4, $a5
	bne	$a3, $t2, .LBB103_13
	b	.LBB103_15
.LBB103_8:                              # %vector.ph
	move	$a5, $a3
	bstrins.d	$a5, $zero, 3, 0
	ori	$a7, $zero, 3
	move	$t0, $a3
	bstrins.d	$t0, $a7, 3, 0
	pcalau12i	$a7, %pc_hi20(.LCPI103_0)
	vld	$vr0, $a7, %pc_lo12(.LCPI103_0)
	addi.d	$a7, $a1, 22
	vreplgr2vr.h	$vr1, $a4
	addi.d	$t1, $a2, 22
	move	$t2, $a5
	vori.b	$vr2, $vr1, 0
	.p2align	4, , 16
.LBB103_9:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr3, $a7, -16
	vld	$vr4, $a7, 0
	vld	$vr5, $t1, -16
	vld	$vr6, $t1, 0
	vaddi.hu	$vr7, $vr0, 8
	vslt.h	$vr3, $vr5, $vr3
	vslt.h	$vr4, $vr6, $vr4
	vbitsel.v	$vr1, $vr1, $vr0, $vr3
	vbitsel.v	$vr2, $vr2, $vr7, $vr4
	vaddi.hu	$vr0, $vr0, 16
	addi.d	$a7, $a7, 32
	addi.d	$t2, $t2, -16
	addi.d	$t1, $t1, 32
	bnez	$t2, .LBB103_9
# %bb.10:                               # %middle.block
	vmax.h	$vr0, $vr1, $vr2
	vbsrl.v	$vr1, $vr0, 8
	vmax.h	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 4
	vmax.h	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 2
	vmax.h	$vr0, $vr1, $vr0
	vpickve2gr.h	$a7, $vr0, 0
	bstrpick.d	$t1, $a7, 15, 0
	xor	$t1, $t1, $a4
	sltui	$t1, $t1, 1
	masknez	$a7, $a7, $t1
	ori	$t2, $zero, 2
	maskeqz	$t1, $t2, $t1
	or	$t1, $t1, $a7
	beq	$a3, $a5, .LBB103_15
# %bb.11:                               # %vec.epilog.iter.check
	andi	$a7, $a3, 8
	bnez	$a7, .LBB103_5
# %bb.12:
	addi.d	$a7, $a5, 3
.LBB103_13:                             # %.lr.ph.i.i.i.preheader
	alsl.d	$a2, $a7, $a2, 1
	alsl.d	$a1, $a7, $a1, 1
	.p2align	4, , 16
.LBB103_14:                             # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a3, $a1, 0
	ld.h	$a4, $a2, 0
	slt	$a3, $a4, $a3
	masknez	$a4, $t1, $a3
	maskeqz	$a3, $a7, $a3
	or	$t1, $a3, $a4
	addi.d	$a7, $a7, 1
	addi.d	$a2, $a2, 2
	addi.d	$a1, $a1, 2
	bne	$a0, $a7, .LBB103_14
.LBB103_15:                             # %"_ZSt10__invoke_rIsRZ4mainE4$_31JPsS2_sEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ext.w.h	$a0, $t1
	ret
.Lfunc_end103:
	.size	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_31E9_M_invokeERKSt9_Any_dataOS0_S7_Os, .Lfunc_end103-_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_31E9_M_invokeERKSt9_Any_dataOS0_S7_Os
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_31E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_31E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_31E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_31E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB104_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB104_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_31E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB104_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_31)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_31)
.LBB104_4:                              # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_31E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end104:
	.size	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_31E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end104-_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_31E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_32E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.type	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_32E9_M_invokeERKSt9_Any_dataOS0_S7_Oi,@function
_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_32E9_M_invokeERKSt9_Any_dataOS0_S7_Oi: # @"_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_32E9_M_invokeERKSt9_Any_dataOS0_S7_Oi"
# %bb.0:
	ld.w	$a3, $a3, 0
	ori	$a0, $zero, 4
	blt	$a3, $a0, .LBB105_3
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a0, $a2, 0
	ld.d	$a4, $a1, 0
	addi.d	$a1, $a3, -3
	addi.d	$a2, $a0, 12
	addi.d	$a3, $a4, 12
	ori	$a0, $zero, 4
	ori	$a4, $zero, 3
	.p2align	4, , 16
.LBB105_2:                              # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a3, 0
	ld.w	$a6, $a2, 0
	slt	$a5, $a6, $a5
	masknez	$a0, $a0, $a5
	maskeqz	$a5, $a4, $a5
	or	$a0, $a5, $a0
	addi.d	$a1, $a1, -1
	addi.w	$a4, $a4, 1
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 4
	bnez	$a1, .LBB105_2
.LBB105_3:                              # %"_ZSt10__invoke_rIiRZ4mainE4$_32JPiS2_iEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end105:
	.size	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_32E9_M_invokeERKSt9_Any_dataOS0_S7_Oi, .Lfunc_end105-_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_32E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_32E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_32E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_32E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_32E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB106_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB106_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_32E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB106_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_32)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_32)
.LBB106_4:                              # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_32E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end106:
	.size	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_32E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end106-_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_32E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_33E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
.LCPI107_0:
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.text
	.p2align	5
	.type	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_33E9_M_invokeERKSt9_Any_dataOS0_S7_Oi,@function
_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_33E9_M_invokeERKSt9_Any_dataOS0_S7_Oi: # @"_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_33E9_M_invokeERKSt9_Any_dataOS0_S7_Oi"
# %bb.0:
	ld.w	$a3, $a3, 0
	ori	$a6, $zero, 4
	blt	$a3, $a6, .LBB107_8
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	addi.d	$a4, $a3, -3
	ori	$a0, $zero, 8
	bgeu	$a4, $a0, .LBB107_3
# %bb.2:
	ori	$a6, $zero, 4
	ori	$a0, $zero, 3
	b	.LBB107_6
.LBB107_3:                              # %vector.ph
	move	$a5, $a4
	bstrins.d	$a5, $zero, 2, 0
	ori	$a6, $zero, 3
	move	$a0, $a4
	bstrins.d	$a0, $a6, 2, 0
	addi.d	$a7, $a1, 28
	pcalau12i	$a6, %pc_hi20(.LCPI107_0)
	vld	$vr0, $a6, %pc_lo12(.LCPI107_0)
	lu12i.w	$a6, -524288
	vreplgr2vr.w	$vr1, $a6
	addi.d	$t0, $a2, 28
	move	$t1, $a5
	vori.b	$vr2, $vr1, 0
	.p2align	4, , 16
.LBB107_4:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr3, $a7, -16
	vld	$vr4, $a7, 0
	vld	$vr5, $t0, -16
	vld	$vr6, $t0, 0
	vaddi.wu	$vr7, $vr0, 4
	vslt.w	$vr3, $vr5, $vr3
	vslt.w	$vr4, $vr6, $vr4
	vbitsel.v	$vr1, $vr1, $vr0, $vr3
	vbitsel.v	$vr2, $vr2, $vr7, $vr4
	vaddi.wu	$vr0, $vr0, 8
	addi.d	$a7, $a7, 32
	addi.d	$t1, $t1, -8
	addi.d	$t0, $t0, 32
	bnez	$t1, .LBB107_4
# %bb.5:                                # %middle.block
	vmax.w	$vr0, $vr1, $vr2
	vbsrl.v	$vr1, $vr0, 8
	vmax.w	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 4
	vmax.w	$vr0, $vr1, $vr0
	vpickve2gr.w	$a7, $vr0, 0
	xor	$a6, $a7, $a6
	sltui	$a6, $a6, 1
	masknez	$a7, $a7, $a6
	ori	$t0, $zero, 4
	maskeqz	$a6, $t0, $a6
	or	$a6, $a6, $a7
	beq	$a4, $a5, .LBB107_8
.LBB107_6:                              # %.lr.ph.i.i.i.preheader
	sub.d	$a3, $a3, $a0
	alsl.d	$a2, $a0, $a2, 2
	alsl.d	$a1, $a0, $a1, 2
	.p2align	4, , 16
.LBB107_7:                              # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a1, 0
	ld.w	$a5, $a2, 0
	slt	$a4, $a5, $a4
	masknez	$a5, $a6, $a4
	maskeqz	$a4, $a0, $a4
	or	$a6, $a4, $a5
	addi.d	$a3, $a3, -1
	addi.d	$a0, $a0, 1
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, 4
	bnez	$a3, .LBB107_7
.LBB107_8:                              # %"_ZSt10__invoke_rIiRZ4mainE4$_33JPiS2_iEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	addi.w	$a0, $a6, 0
	ret
.Lfunc_end107:
	.size	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_33E9_M_invokeERKSt9_Any_dataOS0_S7_Oi, .Lfunc_end107-_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_33E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_33E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_33E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_33E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_33E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB108_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB108_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_33E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB108_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_33)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_33)
.LBB108_4:                              # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_33E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end108:
	.size	_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_33E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end108-_ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_33E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_32E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.type	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_32E9_M_invokeERKSt9_Any_dataOS0_S7_Oi,@function
_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_32E9_M_invokeERKSt9_Any_dataOS0_S7_Oi: # @"_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_32E9_M_invokeERKSt9_Any_dataOS0_S7_Oi"
# %bb.0:
	ld.w	$a3, $a3, 0
	ori	$a0, $zero, 4
	blt	$a3, $a0, .LBB109_3
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a0, $a2, 0
	ld.d	$a4, $a1, 0
	addi.d	$a1, $a3, -3
	addi.d	$a2, $a0, 12
	addi.d	$a3, $a4, 12
	ori	$a0, $zero, 4
	ori	$a4, $zero, 3
	.p2align	4, , 16
.LBB109_2:                              # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a3, 0
	fld.s	$fa1, $a2, 0
	fcmp.clt.s	$fcc0, $fa1, $fa0
	movcf2gr	$a5, $fcc0
	masknez	$a0, $a0, $a5
	maskeqz	$a5, $a4, $a5
	or	$a0, $a5, $a0
	addi.d	$a1, $a1, -1
	addi.w	$a4, $a4, 1
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 4
	bnez	$a1, .LBB109_2
.LBB109_3:                              # %"_ZSt10__invoke_rIiRZ4mainE4$_32JPfS2_iEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ret
.Lfunc_end109:
	.size	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_32E9_M_invokeERKSt9_Any_dataOS0_S7_Oi, .Lfunc_end109-_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_32E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_32E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_32E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_32E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_32E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB110_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB110_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_32E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB110_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_32)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_32)
.LBB110_4:                              # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_32E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end110:
	.size	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_32E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end110-_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_32E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_33E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
.LCPI111_0:
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.text
	.p2align	5
	.type	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_33E9_M_invokeERKSt9_Any_dataOS0_S7_Oi,@function
_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_33E9_M_invokeERKSt9_Any_dataOS0_S7_Oi: # @"_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_33E9_M_invokeERKSt9_Any_dataOS0_S7_Oi"
# %bb.0:
	ld.w	$a3, $a3, 0
	ori	$a6, $zero, 4
	blt	$a3, $a6, .LBB111_8
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	addi.d	$a4, $a3, -3
	ori	$a0, $zero, 8
	bgeu	$a4, $a0, .LBB111_3
# %bb.2:
	ori	$a6, $zero, 4
	ori	$a0, $zero, 3
	b	.LBB111_6
.LBB111_3:                              # %vector.ph
	move	$a5, $a4
	bstrins.d	$a5, $zero, 2, 0
	ori	$a6, $zero, 3
	move	$a0, $a4
	bstrins.d	$a0, $a6, 2, 0
	addi.d	$a7, $a1, 28
	pcalau12i	$a6, %pc_hi20(.LCPI111_0)
	vld	$vr0, $a6, %pc_lo12(.LCPI111_0)
	lu12i.w	$a6, -524288
	vreplgr2vr.w	$vr1, $a6
	addi.d	$t0, $a2, 28
	move	$t1, $a5
	vori.b	$vr2, $vr1, 0
	.p2align	4, , 16
.LBB111_4:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr3, $a7, -16
	vld	$vr4, $a7, 0
	vld	$vr5, $t0, -16
	vld	$vr6, $t0, 0
	vaddi.wu	$vr7, $vr0, 4
	vfcmp.clt.s	$vr3, $vr5, $vr3
	vfcmp.clt.s	$vr4, $vr6, $vr4
	vbitsel.v	$vr1, $vr1, $vr0, $vr3
	vbitsel.v	$vr2, $vr2, $vr7, $vr4
	vaddi.wu	$vr0, $vr0, 8
	addi.d	$a7, $a7, 32
	addi.d	$t1, $t1, -8
	addi.d	$t0, $t0, 32
	bnez	$t1, .LBB111_4
# %bb.5:                                # %middle.block
	vmax.w	$vr0, $vr1, $vr2
	vbsrl.v	$vr1, $vr0, 8
	vmax.w	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 4
	vmax.w	$vr0, $vr1, $vr0
	vpickve2gr.w	$a7, $vr0, 0
	xor	$a6, $a7, $a6
	sltui	$a6, $a6, 1
	masknez	$a7, $a7, $a6
	ori	$t0, $zero, 4
	maskeqz	$a6, $t0, $a6
	or	$a6, $a6, $a7
	beq	$a4, $a5, .LBB111_8
.LBB111_6:                              # %.lr.ph.i.i.i.preheader
	sub.d	$a3, $a3, $a0
	alsl.d	$a2, $a0, $a2, 2
	alsl.d	$a1, $a0, $a1, 2
	.p2align	4, , 16
.LBB111_7:                              # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	fld.s	$fa0, $a1, 0
	fld.s	$fa1, $a2, 0
	fcmp.clt.s	$fcc0, $fa1, $fa0
	movcf2gr	$a4, $fcc0
	masknez	$a5, $a6, $a4
	maskeqz	$a4, $a0, $a4
	or	$a6, $a4, $a5
	addi.d	$a3, $a3, -1
	addi.d	$a0, $a0, 1
	addi.d	$a2, $a2, 4
	addi.d	$a1, $a1, 4
	bnez	$a3, .LBB111_7
.LBB111_8:                              # %"_ZSt10__invoke_rIiRZ4mainE4$_33JPfS2_iEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	addi.w	$a0, $a6, 0
	ret
.Lfunc_end111:
	.size	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_33E9_M_invokeERKSt9_Any_dataOS0_S7_Oi, .Lfunc_end111-_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_33E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_33E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_33E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_33E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_33E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB112_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB112_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_33E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB112_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_33)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_33)
.LBB112_4:                              # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_33E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end112:
	.size	_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_33E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end112-_ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_33E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_34E9_M_invokeERKSt9_Any_dataOS0_S7_Os
	.type	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_34E9_M_invokeERKSt9_Any_dataOS0_S7_Os,@function
_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_34E9_M_invokeERKSt9_Any_dataOS0_S7_Os: # @"_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_34E9_M_invokeERKSt9_Any_dataOS0_S7_Os"
# %bb.0:
	ld.h	$a0, $a3, 0
	ori	$a3, $zero, 4
	blt	$a0, $a3, .LBB113_3
# %bb.1:                                # %.lr.ph.preheader.i.i.i
	ld.d	$a2, $a2, 0
	ld.d	$a3, $a1, 0
	addi.d	$a1, $a2, 6
	addi.d	$a2, $a3, 6
	ori	$a3, $zero, 4
	ori	$a4, $zero, 3
	.p2align	4, , 16
.LBB113_2:                              # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a5, $a2, 0
	ld.h	$a6, $a1, 0
	slt	$a5, $a6, $a5
	masknez	$a3, $a3, $a5
	maskeqz	$a5, $a4, $a5
	or	$a3, $a5, $a3
	addi.d	$a4, $a4, 1
	addi.d	$a1, $a1, 2
	addi.d	$a2, $a2, 2
	bne	$a0, $a4, .LBB113_2
.LBB113_3:                              # %"_ZSt10__invoke_rIsRZ4mainE4$_34JPsS2_sEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ext.w.h	$a0, $a3
	ret
.Lfunc_end113:
	.size	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_34E9_M_invokeERKSt9_Any_dataOS0_S7_Os, .Lfunc_end113-_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_34E9_M_invokeERKSt9_Any_dataOS0_S7_Os
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_34E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_34E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_34E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_34E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB114_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB114_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_34E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB114_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_34)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_34)
.LBB114_4:                              # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_34E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end114:
	.size	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_34E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end114-_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_34E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_35E9_M_invokeERKSt9_Any_dataOS0_S7_Os
.LCPI115_0:
	.half	3                               # 0x3
	.half	4                               # 0x4
	.half	5                               # 0x5
	.half	6                               # 0x6
	.half	7                               # 0x7
	.half	8                               # 0x8
	.half	9                               # 0x9
	.half	10                              # 0xa
.LCPI115_1:
	.half	0                               # 0x0
	.half	1                               # 0x1
	.half	2                               # 0x2
	.half	3                               # 0x3
	.half	4                               # 0x4
	.half	5                               # 0x5
	.half	6                               # 0x6
	.half	7                               # 0x7
	.text
	.p2align	5
	.type	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_35E9_M_invokeERKSt9_Any_dataOS0_S7_Os,@function
_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_35E9_M_invokeERKSt9_Any_dataOS0_S7_Os: # @"_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_35E9_M_invokeERKSt9_Any_dataOS0_S7_Os"
# %bb.0:
	ld.h	$a0, $a3, 0
	ori	$t1, $zero, 4
	blt	$a0, $t1, .LBB115_15
# %bb.1:                                # %iter.check
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	addi.d	$a3, $a0, -3
	ori	$a4, $zero, 8
	bgeu	$a3, $a4, .LBB115_3
# %bb.2:
	ori	$t1, $zero, 4
	ori	$a7, $zero, 3
	b	.LBB115_13
.LBB115_3:                              # %vector.main.loop.iter.check
	ori	$a6, $zero, 3
	ori	$a5, $zero, 16
	lu12i.w	$a4, 8
	bgeu	$a3, $a5, .LBB115_8
# %bb.4:
	move	$a5, $zero
	ori	$t1, $zero, 4
	ori	$t0, $zero, 3
.LBB115_5:                              # %vec.epilog.ph
	bstrpick.d	$a7, $t1, 15, 0
	addi.d	$a7, $a7, -4
	sltui	$a7, $a7, 1
	masknez	$t1, $t1, $a7
	lu12i.w	$t2, -8
	maskeqz	$a7, $t2, $a7
	or	$t1, $a7, $t1
	move	$t2, $a3
	bstrins.d	$t2, $zero, 2, 0
	pcalau12i	$a7, %pc_hi20(.LCPI115_1)
	vld	$vr1, $a7, %pc_lo12(.LCPI115_1)
	move	$a7, $a3
	bstrins.d	$a7, $a6, 2, 0
	vreplgr2vr.h	$vr0, $t1
	vreplgr2vr.h	$vr2, $t0
	vadd.h	$vr1, $vr2, $vr1
	slli.d	$a6, $a5, 1
	addi.d	$t0, $a6, 6
	add.d	$a6, $a1, $t0
	add.d	$t0, $a2, $t0
	sub.d	$a5, $a5, $t2
	.p2align	4, , 16
.LBB115_6:                              # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a6, 0
	vld	$vr3, $t0, 0
	vslt.h	$vr2, $vr3, $vr2
	vbitsel.v	$vr0, $vr0, $vr1, $vr2
	vaddi.hu	$vr1, $vr1, 8
	addi.d	$a6, $a6, 16
	addi.d	$a5, $a5, 8
	addi.d	$t0, $t0, 16
	bnez	$a5, .LBB115_6
# %bb.7:                                # %vec.epilog.middle.block
	vbsrl.v	$vr1, $vr0, 8
	vmax.h	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 4
	vmax.h	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 2
	vmax.h	$vr0, $vr1, $vr0
	vpickve2gr.h	$a5, $vr0, 0
	bstrpick.d	$a6, $a5, 15, 0
	xor	$a4, $a6, $a4
	sltui	$a4, $a4, 1
	masknez	$a5, $a5, $a4
	ori	$a6, $zero, 4
	maskeqz	$a4, $a6, $a4
	or	$t1, $a4, $a5
	bne	$a3, $t2, .LBB115_13
	b	.LBB115_15
.LBB115_8:                              # %vector.ph
	move	$a5, $a3
	bstrins.d	$a5, $zero, 3, 0
	ori	$a7, $zero, 3
	move	$t0, $a3
	bstrins.d	$t0, $a7, 3, 0
	pcalau12i	$a7, %pc_hi20(.LCPI115_0)
	vld	$vr0, $a7, %pc_lo12(.LCPI115_0)
	addi.d	$a7, $a1, 22
	vreplgr2vr.h	$vr1, $a4
	addi.d	$t1, $a2, 22
	move	$t2, $a5
	vori.b	$vr2, $vr1, 0
	.p2align	4, , 16
.LBB115_9:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr3, $a7, -16
	vld	$vr4, $a7, 0
	vld	$vr5, $t1, -16
	vld	$vr6, $t1, 0
	vaddi.hu	$vr7, $vr0, 8
	vslt.h	$vr3, $vr5, $vr3
	vslt.h	$vr4, $vr6, $vr4
	vbitsel.v	$vr1, $vr1, $vr0, $vr3
	vbitsel.v	$vr2, $vr2, $vr7, $vr4
	vaddi.hu	$vr0, $vr0, 16
	addi.d	$a7, $a7, 32
	addi.d	$t2, $t2, -16
	addi.d	$t1, $t1, 32
	bnez	$t2, .LBB115_9
# %bb.10:                               # %middle.block
	vmax.h	$vr0, $vr1, $vr2
	vbsrl.v	$vr1, $vr0, 8
	vmax.h	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 4
	vmax.h	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 2
	vmax.h	$vr0, $vr1, $vr0
	vpickve2gr.h	$a7, $vr0, 0
	bstrpick.d	$t1, $a7, 15, 0
	xor	$t1, $t1, $a4
	sltui	$t1, $t1, 1
	masknez	$a7, $a7, $t1
	ori	$t2, $zero, 4
	maskeqz	$t1, $t2, $t1
	or	$t1, $t1, $a7
	beq	$a3, $a5, .LBB115_15
# %bb.11:                               # %vec.epilog.iter.check
	andi	$a7, $a3, 8
	bnez	$a7, .LBB115_5
# %bb.12:
	addi.d	$a7, $a5, 3
.LBB115_13:                             # %.lr.ph.i.i.i.preheader
	alsl.d	$a2, $a7, $a2, 1
	alsl.d	$a1, $a7, $a1, 1
	.p2align	4, , 16
.LBB115_14:                             # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a3, $a1, 0
	ld.h	$a4, $a2, 0
	slt	$a3, $a4, $a3
	masknez	$a4, $t1, $a3
	maskeqz	$a3, $a7, $a3
	or	$t1, $a3, $a4
	addi.d	$a7, $a7, 1
	addi.d	$a2, $a2, 2
	addi.d	$a1, $a1, 2
	bne	$a0, $a7, .LBB115_14
.LBB115_15:                             # %"_ZSt10__invoke_rIsRZ4mainE4$_35JPsS2_sEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES4_E4typeEOS5_DpOS6_.exit"
	ext.w.h	$a0, $t1
	ret
.Lfunc_end115:
	.size	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_35E9_M_invokeERKSt9_Any_dataOS0_S7_Os, .Lfunc_end115-_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_35E9_M_invokeERKSt9_Any_dataOS0_S7_Os
                                        # -- End function
	.p2align	5                               # -- Begin function _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_35E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.type	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_35E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation,@function
_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_35E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation: # @"_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_35E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation"
	.cfi_startproc
# %bb.0:
	beqz	$a2, .LBB116_3
# %bb.1:
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB116_4
# %bb.2:                                # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_35E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit"
	move	$a0, $zero
	ret
.LBB116_3:
	pcalau12i	$a1, %pc_hi20(_ZTIZ4mainE4$_35)
	addi.d	$a1, $a1, %pc_lo12(_ZTIZ4mainE4$_35)
.LBB116_4:                              # %"_ZNSt14_Function_base13_Base_managerIZ4mainE4$_35E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation.exit.sink.split"
	st.d	$a1, $a0, 0
	move	$a0, $zero
	ret
.Lfunc_end116:
	.size	_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_35E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation, .Lfunc_end116-_ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_35E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.cfi_endproc
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	5                               # -- Begin function _GLOBAL__sub_I_find_last.cpp
	.type	_GLOBAL__sub_I_find_last.cpp,@function
_GLOBAL__sub_I_find_last.cpp:           # @_GLOBAL__sub_I_find_last.cpp
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
.LBB117_1:                              # =>This Inner Loop Header: Depth=1
	srli.d	$a6, $a2, 30
	xor	$a2, $a6, $a2
	mul.d	$a2, $a2, $a4
	add.d	$a2, $a3, $a2
	bstrpick.d	$a2, $a2, 31, 0
	st.d	$a2, $a1, 0
	addi.d	$a3, $a3, 1
	addi.d	$a1, $a1, 8
	bne	$a3, $a5, .LBB117_1
# %bb.2:                                # %__cxx_global_var_init.exit
	ori	$a1, $zero, 624
	stptr.d	$a1, $a0, 4992
	ret
.Lfunc_end117:
	.size	_GLOBAL__sub_I_find_last.cpp, .Lfunc_end117-_GLOBAL__sub_I_find_last.cpp
                                        # -- End function
	.type	_ZL3rng,@object                 # @_ZL3rng
	.local	_ZL3rng
	.comm	_ZL3rng,5000,8
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"findlast_icmp_s32_true_update"
	.size	.L.str, 30

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"findlast_fcmp_s32_true_update"
	.size	.L.str.1, 30

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"findlast_icmp_s16_true_update"
	.size	.L.str.2, 30

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"findlast_icmp_s32_false_update"
	.size	.L.str.3, 31

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"findlast_fcmp_s32_false_update"
	.size	.L.str.4, 31

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"findlast_icmp_s16_false_update"
	.size	.L.str.5, 31

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"findlast_icmp_s32_start_TC"
	.size	.L.str.6, 27

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"findlast_fcmp_s32_start_TC"
	.size	.L.str.7, 27

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"findlast_icmp_s16_start_TC"
	.size	.L.str.8, 27

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"findlast_icmp_s32_inc_2"
	.size	.L.str.9, 24

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"findlast_fcmp_s32_inc_2"
	.size	.L.str.10, 24

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"findlast_icmp_s16_inc_2"
	.size	.L.str.11, 24

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"findlast_icmp_s32_start_decreasing_induction"
	.size	.L.str.12, 45

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"findlast_fcmp_s32_start_decreasing_induction"
	.size	.L.str.13, 45

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"findlast_icmp_s16_start_decreasing_induction"
	.size	.L.str.14, 45

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"findlast_icmp_s32_iv_start_3"
	.size	.L.str.15, 29

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"findlast_fcmp_s32_iv_start_3"
	.size	.L.str.16, 29

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"findlast_icmp_s16_iv_start_3"
	.size	.L.str.17, 29

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"findlast_icmp_s32_start_3_iv_start_3"
	.size	.L.str.18, 37

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"findlast_fcmp_s32_start_3_iv_start_3"
	.size	.L.str.19, 37

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"findlast_icmp_s16_start_3_iv_start_3"
	.size	.L.str.20, 37

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"findlast_icmp_s32_start_2_iv_start_3"
	.size	.L.str.21, 37

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"findlast_fcmp_s32_start_2_iv_start_3"
	.size	.L.str.22, 37

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"findlast_icmp_s16_start_2_iv_start_3"
	.size	.L.str.23, 37

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"findlast_icmp_s32_start_4_iv_start_3"
	.size	.L.str.24, 37

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"findlast_fcmp_s32_start_4_iv_start_3"
	.size	.L.str.25, 37

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"findlast_icmp_s16_start_4_iv_start_3"
	.size	.L.str.26, 37

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"Checking "
	.size	.L.str.27, 10

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"\n"
	.size	.L.str.28, 2

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"Miscompare\n"
	.size	.L.str.29, 12

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

	.type	_ZTIZ4mainE4$_28,@object        # @"_ZTIZ4mainE4$_28"
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
_ZTIZ4mainE4$_28:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTSZ4mainE4$_28
	.size	_ZTIZ4mainE4$_28, 16

	.type	_ZTSZ4mainE4$_28,@object        # @"_ZTSZ4mainE4$_28"
	.section	.rodata,"a",@progbits
_ZTSZ4mainE4$_28:
	.asciz	"Z4mainE4$_28"
	.size	_ZTSZ4mainE4$_28, 13

	.type	_ZTIZ4mainE4$_29,@object        # @"_ZTIZ4mainE4$_29"
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
_ZTIZ4mainE4$_29:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTSZ4mainE4$_29
	.size	_ZTIZ4mainE4$_29, 16

	.type	_ZTSZ4mainE4$_29,@object        # @"_ZTSZ4mainE4$_29"
	.section	.rodata,"a",@progbits
_ZTSZ4mainE4$_29:
	.asciz	"Z4mainE4$_29"
	.size	_ZTSZ4mainE4$_29, 13

	.type	_ZTIZ4mainE4$_30,@object        # @"_ZTIZ4mainE4$_30"
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
_ZTIZ4mainE4$_30:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTSZ4mainE4$_30
	.size	_ZTIZ4mainE4$_30, 16

	.type	_ZTSZ4mainE4$_30,@object        # @"_ZTSZ4mainE4$_30"
	.section	.rodata,"a",@progbits
_ZTSZ4mainE4$_30:
	.asciz	"Z4mainE4$_30"
	.size	_ZTSZ4mainE4$_30, 13

	.type	_ZTIZ4mainE4$_31,@object        # @"_ZTIZ4mainE4$_31"
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
_ZTIZ4mainE4$_31:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTSZ4mainE4$_31
	.size	_ZTIZ4mainE4$_31, 16

	.type	_ZTSZ4mainE4$_31,@object        # @"_ZTSZ4mainE4$_31"
	.section	.rodata,"a",@progbits
_ZTSZ4mainE4$_31:
	.asciz	"Z4mainE4$_31"
	.size	_ZTSZ4mainE4$_31, 13

	.type	_ZTIZ4mainE4$_32,@object        # @"_ZTIZ4mainE4$_32"
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
_ZTIZ4mainE4$_32:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTSZ4mainE4$_32
	.size	_ZTIZ4mainE4$_32, 16

	.type	_ZTSZ4mainE4$_32,@object        # @"_ZTSZ4mainE4$_32"
	.section	.rodata,"a",@progbits
_ZTSZ4mainE4$_32:
	.asciz	"Z4mainE4$_32"
	.size	_ZTSZ4mainE4$_32, 13

	.type	_ZTIZ4mainE4$_33,@object        # @"_ZTIZ4mainE4$_33"
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
_ZTIZ4mainE4$_33:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTSZ4mainE4$_33
	.size	_ZTIZ4mainE4$_33, 16

	.type	_ZTSZ4mainE4$_33,@object        # @"_ZTSZ4mainE4$_33"
	.section	.rodata,"a",@progbits
_ZTSZ4mainE4$_33:
	.asciz	"Z4mainE4$_33"
	.size	_ZTSZ4mainE4$_33, 13

	.type	_ZTIZ4mainE4$_34,@object        # @"_ZTIZ4mainE4$_34"
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
_ZTIZ4mainE4$_34:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTSZ4mainE4$_34
	.size	_ZTIZ4mainE4$_34, 16

	.type	_ZTSZ4mainE4$_34,@object        # @"_ZTSZ4mainE4$_34"
	.section	.rodata,"a",@progbits
_ZTSZ4mainE4$_34:
	.asciz	"Z4mainE4$_34"
	.size	_ZTSZ4mainE4$_34, 13

	.type	_ZTIZ4mainE4$_35,@object        # @"_ZTIZ4mainE4$_35"
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
_ZTIZ4mainE4$_35:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTSZ4mainE4$_35
	.size	_ZTIZ4mainE4$_35, 16

	.type	_ZTSZ4mainE4$_35,@object        # @"_ZTSZ4mainE4$_35"
	.section	.rodata,"a",@progbits
_ZTSZ4mainE4$_35:
	.asciz	"Z4mainE4$_35"
	.size	_ZTSZ4mainE4$_35, 13

	.section	.init_array,"aw",@init_array
	.p2align	3, 0x0
	.dword	_GLOBAL__sub_I_find_last.cpp
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
	.addrsig_sym _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_0E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.addrsig_sym _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_1E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.addrsig_sym _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_0E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.addrsig_sym _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_1E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.addrsig_sym _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_1E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_2E9_M_invokeERKSt9_Any_dataOS0_S7_Os
	.addrsig_sym _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_2E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_3E9_M_invokeERKSt9_Any_dataOS0_S7_Os
	.addrsig_sym _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_3E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_4E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.addrsig_sym _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_5E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.addrsig_sym _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_4E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.addrsig_sym _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_4E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_5E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.addrsig_sym _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_5E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_6E9_M_invokeERKSt9_Any_dataOS0_S7_Os
	.addrsig_sym _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_6E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_7E9_M_invokeERKSt9_Any_dataOS0_S7_Os
	.addrsig_sym _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE3$_7E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_8E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.addrsig_sym _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_9E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.addrsig_sym _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_8E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.addrsig_sym _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_8E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_9E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.addrsig_sym _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE3$_9E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_10E9_M_invokeERKSt9_Any_dataOS0_S7_Os
	.addrsig_sym _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_10E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_11E9_M_invokeERKSt9_Any_dataOS0_S7_Os
	.addrsig_sym _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_11E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_12E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.addrsig_sym _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_13E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.addrsig_sym _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_12E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.addrsig_sym _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_12E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_13E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.addrsig_sym _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_13E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_14E9_M_invokeERKSt9_Any_dataOS0_S7_Os
	.addrsig_sym _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_14E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_15E9_M_invokeERKSt9_Any_dataOS0_S7_Os
	.addrsig_sym _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_15E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_16E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.addrsig_sym _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_16E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_17E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.addrsig_sym _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_17E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_16E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.addrsig_sym _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_16E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_17E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.addrsig_sym _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_17E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_18E9_M_invokeERKSt9_Any_dataOS0_S7_Os
	.addrsig_sym _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_18E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_19E9_M_invokeERKSt9_Any_dataOS0_S7_Os
	.addrsig_sym _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_19E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_20E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.addrsig_sym _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_20E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_21E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.addrsig_sym _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_21E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_20E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.addrsig_sym _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_20E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_21E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.addrsig_sym _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_21E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_22E9_M_invokeERKSt9_Any_dataOS0_S7_Os
	.addrsig_sym _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_22E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_23E9_M_invokeERKSt9_Any_dataOS0_S7_Os
	.addrsig_sym _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_23E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_24E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.addrsig_sym _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_24E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_25E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.addrsig_sym _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_25E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_24E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.addrsig_sym _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_24E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_25E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.addrsig_sym _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_25E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_26E9_M_invokeERKSt9_Any_dataOS0_S7_Os
	.addrsig_sym _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_26E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_27E9_M_invokeERKSt9_Any_dataOS0_S7_Os
	.addrsig_sym _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_27E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_28E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.addrsig_sym _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_28E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_29E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.addrsig_sym _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_29E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_28E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.addrsig_sym _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_28E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_29E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.addrsig_sym _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_29E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_30E9_M_invokeERKSt9_Any_dataOS0_S7_Os
	.addrsig_sym _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_30E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_31E9_M_invokeERKSt9_Any_dataOS0_S7_Os
	.addrsig_sym _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_31E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_32E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.addrsig_sym _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_32E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_33E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.addrsig_sym _ZNSt17_Function_handlerIFiPiS0_iEZ4mainE4$_33E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_32E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.addrsig_sym _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_32E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_33E9_M_invokeERKSt9_Any_dataOS0_S7_Oi
	.addrsig_sym _ZNSt17_Function_handlerIFiPfS0_iEZ4mainE4$_33E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_34E9_M_invokeERKSt9_Any_dataOS0_S7_Os
	.addrsig_sym _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_34E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_35E9_M_invokeERKSt9_Any_dataOS0_S7_Os
	.addrsig_sym _ZNSt17_Function_handlerIFsPsS0_sEZ4mainE4$_35E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation
	.addrsig_sym _GLOBAL__sub_I_find_last.cpp
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
	.addrsig_sym _ZTIZ4mainE4$_28
	.addrsig_sym _ZTSZ4mainE4$_28
	.addrsig_sym _ZTIZ4mainE4$_29
	.addrsig_sym _ZTSZ4mainE4$_29
	.addrsig_sym _ZTIZ4mainE4$_30
	.addrsig_sym _ZTSZ4mainE4$_30
	.addrsig_sym _ZTIZ4mainE4$_31
	.addrsig_sym _ZTSZ4mainE4$_31
	.addrsig_sym _ZTIZ4mainE4$_32
	.addrsig_sym _ZTSZ4mainE4$_32
	.addrsig_sym _ZTIZ4mainE4$_33
	.addrsig_sym _ZTSZ4mainE4$_33
	.addrsig_sym _ZTIZ4mainE4$_34
	.addrsig_sym _ZTSZ4mainE4$_34
	.addrsig_sym _ZTIZ4mainE4$_35
	.addrsig_sym _ZTSZ4mainE4$_35
